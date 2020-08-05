import maya.cmds as cmds
import os
import mwUtils
import pymel.core as pm
import mgear.core as mgear
import mgear.rigbits.sdk_io as sdk
import maya.mel as mel
import math
import ast
import re
import json


def facialDirectConnectionToMGearCtl(destCtl, j, dv, axis, name):
    cns = cmds.listRelatives(destCtl, p=1)[0]

    cmds.addAttr(destCtl, ln=name, at="float", max=1, min=0, dv=dv, k=1)

    mdv = cmds.createNode(
        "multiplyDivide", n=mwUtils.renameSuffix(destCtl, add="facialOfs", suffix="mdv")
    )
    cmds.connectAttr(destCtl + "." + name, mdv + ".input2X")
    cmds.connectAttr(destCtl + "." + name, mdv + ".input2Y")
    cmds.connectAttr(destCtl + "." + name, mdv + ".input2Z")

    for ax in axis:
        cmds.setAttr(cns + ".t" + ax, lock=0)
        negative = False
        if "-" in ax:
            ax = ax[1]
            negative = True

        mwUtils.connectAttr(j + ".t" + ax, mdv + ".input1" + ax.upper())

        if negative == True:
            mwUtils.connectAttr(
                mdv + ".output" + ax.upper(), cns + ".t" + ax, mode="negative"
            )
        else:
            mwUtils.connectAttr(mdv + ".output" + ax.upper(), cns + ".t" + ax)


def facialDirectConnection(jnt, sourceJnt, destCtl, jntAxis, ctlAxis, dv, name):
    jntZtr = mwUtils.renameSuffix(jnt, suffix="ztr")

    if cmds.objExists(jntZtr) == False:
        cmds.createNode("transform", n=mwUtils.renameSuffix(jnt, suffix="ztr"))
        jntPar = cmds.listRelatives(jnt, p=1)[0]
        snap(jntZtr, jnt)
        cmds.parent(jnt, jntZtr)
        cmds.parent(jntZtr, jntPar)

    destCtlZtr = mwUtils.renameSuffix(destCtl, suffix="ztr")
    if cmds.objExists(destCtlZtr) == False:
        cmds.createNode("transform", n=mwUtils.renameSuffix(destCtl, suffix="ztr"))
        destCtlPar = cmds.listRelatives(destCtl, p=1)[0]
        snap(destCtlZtr, destCtl)
        cmds.parent(destCtl, destCtlZtr)
        cmds.parent(destCtlZtr, destCtlPar)

    cmds.addAttr(destCtl, ln=name, at="float", max=1, min=0, dv=dv, k=1)
    jntOfs = cmds.createNode("transform", n=mwUtils.renameSuffix(jnt, suffix="ofs"))
    snap(jntOfs, jntZtr)

    ctlOfs = cmds.createNode("transform", n=mwUtils.renameSuffix(destCtl, suffix="ofs"))
    snap(ctlOfs, destCtlZtr)

    cmds.parent(jntOfs, jntZtr)
    cmds.parent(jnt, jntOfs)
    cmds.parent(ctlOfs, destCtlZtr)
    cmds.parent(destCtl, ctlOfs)
    mdv = cmds.createNode(
        "multiplyDivide", n=mwUtils.renameSuffix(jnt, add="facialOfs", suffix="mdv")
    )
    cmds.connectAttr(destCtl + "." + name, mdv + ".input1X")
    cmds.connectAttr(destCtl + "." + name, mdv + ".input1Y")
    cmds.connectAttr(destCtl + "." + name, mdv + ".input1Z")

    for ax in jntAxis:
        negative = False
        if "-" in ax:
            ax = ax[1]
            negative = True

        mwUtils.connectAttr(sourceJnt + ".t" + ax, mdv + ".input2" + ax.upper())

        if negative == True:
            mwUtils.connectAttr(
                mdv + ".output" + ax.upper(), jntOfs + ".t" + ax, mode="negative"
            )
        else:
            mwUtils.connectAttr(mdv + ".output" + ax.upper(), jntOfs + ".t" + ax)

    for ax in ctlAxis:
        negative = False
        if "-" in ax:
            ax = ax[1]
            negative = True

        if negative == True:
            mwUtils.connectAttr(
                mdv + ".output" + ax.upper(), ctlOfs + ".t" + ax, mode="negative"
            )
        else:
            mwUtils.connectAttr(mdv + ".output" + ax.upper(), ctlOfs + ".t" + ax)


def findClosestTransform(origin, transforms):
    orPos = cmds.xform(origin, q=1, t=1, ws=1)
    db = cmds.createNode("distanceBetween")
    cmds.setAttr(db + ".point1X", orPos[0])
    cmds.setAttr(db + ".point1Y", orPos[1])
    cmds.setAttr(db + ".point1Z", orPos[2])

    distanceDict = {}

    for tr in transforms:
        trPos = cmds.xform(tr, q=1, t=1, ws=1)
        cmds.setAttr(db + ".point2X", trPos[0])
        cmds.setAttr(db + ".point2Y", trPos[1])
        cmds.setAttr(db + ".point2Z", trPos[2])

        distanceDict[tr] = cmds.getAttr(db + ".distance")

    cmds.delete(db)
    return min(distanceDict, key=distanceDict.get)


def exportPolyCorrectives(self):
    path = mwUtils.getPath(to="polyCorrectives")

    allBsNodes = cmds.ls("*", type="blendShape")
    bsNodesDict = {}

    for bsn in allBsNodes:
        base = cmds.blendShape(bsn, q=True, g=1)[0]
        if cmds.nodeType(base) == "mesh":
            bsNodesDict[base] = []
            aliasList = cmds.aliasAttr(bsn, q=True)
            for a in aliasList:
                print a
                if "_crr" in a:
                    if bsn not in bsNodesDict[base]:
                        bsNodesDict[base].append(bsn)

    for base in bsNodesDict:
        bsn = bsNodesDict[base]
        if bsn != []:
            bsn = bsn[0]
            cmds.blendShape(
                bsn, e=1, ep=path + "/" + base + "-" + bsn + ".shp",
            )

    for base in bsNodesDict:
        bsn = bsNodesDict[base]
        if bsn != []:
            bsn = bsn[0]
            exportPolyBlendShapeCorrectiveComboData(bsn, path)
            exportCorrectiveBS_SDK(bsn, path)


def exportNurbsCorrectives(self):
    path = mwUtils.getPath(to="nurbsCorrectives")

    allBsNodes = cmds.ls("*", type="blendShape")
    bsNodes = []

    for bsn in allBsNodes:
        base = cmds.blendShape(bsn, q=True, g=1)[0]
        if cmds.nodeType(base) == "nurbsSurface":
            aliasList = cmds.aliasAttr(bsn, q=True)
            for a in aliasList:
                if "_crr" in a:
                    if bsn not in bsNodes:
                        bsNodes.append(bsn)

    for bsn in bsNodes:
        exportNurbsBlendShapeTargets(bsn, path)
        exportCorrectiveBS_SDK(bsn, path)


def importCorrectiveCombos(file):
    with open(file) as json_file:
        data = json.load(json_file)

    dict = ast.literal_eval(data)
    comboDicts = []
    for alias in dict:
        if "_crr" in alias:
            comboDict = dict[alias]["comboDict"]
            comboDicts.append(comboDict)

    for c in comboDicts:
        print c
        if c != {}:
            for comboName in c:
                inputs = c[comboName]["inputs"]
                output = c[comboName]["output"]
                cs = cmds.createNode("combinationShape", n=comboName)
                for j, i in enumerate(inputs):
                    cmds.connectAttr(i, cs + ".inputWeight[" + str(j) + "]")
                cmds.connectAttr(cs + ".outputWeight", output)


def importCorrectiveBS_SDK(file):
    sdk.importSDKs(file)


def importNurbsBlendShapeTargets(file):
    with open(file) as json_file:
        data = json.load(json_file)

    dict = ast.literal_eval(data)

    bsNode = dict["bsNode"]
    nurbs = dict["nurbs"]

    targetList = []

    for name in dict:
        if "_crr" in name:
            target = cmds.duplicate(dict["nurbs"], n=name)[0]
            targetList.append(target)

            numU, numV = getCVsInNurbs(nurbs)

            for u in range(0, numU):
                for v in range(0, numV):
                    pos = dict[name][str(u)][str(v)]
                    cmds.xform(target + ".cv[" + str(u) + "][" + str(v) + "]", t=pos)

    for target in targetList:
        addBlendshapeTarget(bsNode, target, nurbs)
        cmds.setAttr(bsNode + "." + target, 0)

    cmds.delete(targetList)


def importPolyBlendShapeTargets(file):
    geo = file.split("\\")[-1].split("-")[0]
    bsNode = file.split("\\")[-1].split("-")[1].replace(".shp", "")
    cmds.blendShape(geo, n=bsNode, foc=1)
    cmds.blendShape(bsNode, e=1, ip=file)


def exportCorrectiveBS_SDK(bsNode, path):
    sdk.exportSDKs(
        [bsNode], os.path.join(path, bsNode.replace("_bs", "_sdk") + ".json")
    )


def exportPolyBlendShapeCorrectiveComboData(bsNode, path):
    dict = {}

    geo = cmds.blendShape(bsNode, q=True, g=1)[0]

    aliasList = cmds.aliasAttr(bsNode, q=True)

    for i in range(0, len(aliasList), 2):
        alias = aliasList[i]
        if "_crr" in alias:
            dict["comboDict"] = makeCorrectiveComboDict(bsNode, alias)

    data = json.dumps(dict)

    path = os.path.join(path, bsNode + "Combo.json")

    with open(path, "w") as outfile:
        json.dump(data, outfile)


def exportNurbsBlendShapeTargets(bsNode, path):
    dict = {}

    nurbs = cmds.blendShape(bsNode, q=True, g=1)[0]

    aliasList = cmds.aliasAttr(bsNode, q=True)

    for i in range(0, len(aliasList), 2):
        alias = aliasList[i]
        if "_crr" in alias:
            extractNurbsTarget(bsNode, alias, name=alias)

            nurbsDict = makeNurbsPointDict(alias)

            dict["bsNode"] = bsNode
            dict["nurbs"] = nurbs
            dict[alias] = nurbsDict

            dict[alias]["comboDict"] = makeCorrectiveComboDict(bsNode, alias)

            print "RESULT"
            print dict[alias]["comboDict"]

            cmds.delete(alias)

    data = json.dumps(dict)

    path = os.path.join(path, bsNode + ".json")

    with open(path, "w") as outfile:
        json.dump(data, outfile)


def makeCorrectiveComboDict(bsNode, alias):
    comboDict = {}
    if cmds.listConnections(bsNode + "." + alias, s=1, d=0) != None:
        input = cmds.listConnections(bsNode + "." + alias, s=1, d=0)[0]
        if cmds.nodeType(input) == "combinationShape":
            comboInputs = cmds.listConnections(input, s=1, d=0, p=1)

            comboDict[input] = {}
            comboDict[input]["inputs"] = comboInputs
            comboDict[input]["output"] = bsNode + "." + alias
    return comboDict


def mirrorNurbsTarget(bsNode, target):
    # mirrors a nurbs blendshape target and adds it into the (mirrored) bsNode

    nurbs = cmds.blendShape(bsNode, q=True, g=1)[0]
    extracted = extractNurbsTarget(bsNode, target, name=mwUtils.mirrorName(target))
    bsNodeSide = bsNode.split("_bs")[0][-1]

    if bsNodeSide == "C":
        mirrorNurbs(extracted)
    else:
        flipNurbs(extracted)
        bsNode = mwUtils.mirrorName(bsNode)

    if cmds.objExists(mwUtils.mirrorName(nurbs)) == True:
        nurbs = mwUtils.mirrorName(nurbs)

    addBlendshapeTarget(bsNode, extracted, nurbs)
    cmds.delete(extracted)


def queryDeformers(mesh):
    deformerList = []
    if mesh != None:
        history = cmds.listHistory(mesh, lv=4)

        for h in history:
            types = cmds.nodeType(h, inherited=True)
            if "geometryFilter" in types:
                deformerList.append(h)

    return deformerList


def extractNurbsTarget(bsNode, target, name=None):
    # extracts a nurbs blendshape target into a new nurbs

    nurbs = cmds.blendShape(bsNode, q=True, g=1)[0]

    aliasList = cmds.aliasAttr(bsNode, q=True)

    # turns off all other deformers
    mesh = cmds.blendShape(bsNode, q=1, g=1)
    deformers = queryDeformers(mesh)

    # saves current state of deformers
    defsStateDict = {}
    for d in deformers:
        if d != bsNode:
            defsStateDict[d] = cmds.getAttr(d + ".envelope")
            cmds.setAttr(d + ".envelope", 0)

    # saves current state of bsNode
    bsNodeStateDict = {}
    for i in range(0, len(aliasList), 2):
        bsNodeStateDict[aliasList[i]] = {}
        bsNodeStateDict[aliasList[i]]["alias"] = bsNode + "." + aliasList[i]
        bsNodeStateDict[aliasList[i]]["value"] = cmds.getAttr(
            bsNode + "." + aliasList[i]
        )

        if cmds.listConnections(bsNode + "." + aliasList[i], s=1, d=0) != None:
            input = cmds.listConnections(bsNode + "." + aliasList[i], s=1, d=0)[0]
            if cmds.nodeType(input) == "combinationShape":
                bsNodeStateDict[aliasList[i]]["combo"] = input
                cmds.disconnectAttr(
                    input + ".outputWeight", bsNode + "." + aliasList[i]
                )
            else:
                bsNodeStateDict[aliasList[i]]["combo"] = False
        else:
            bsNodeStateDict[aliasList[i]]["combo"] = False

    # isolates activation of target in bsNode
    for i in range(0, len(aliasList), 2):
        if aliasList[i] == target:
            cmds.setAttr(bsNode + "." + aliasList[i], 1)
        else:
            try:
                cmds.setAttr(bsNode + "." + aliasList[i], 0)
            except:
                0

    if name == None:
        name = bsNode + mwUtils.upperFirst(target)

    dup = cmds.duplicate(nurbs, n=name)[0]

    # restores deformers state
    for d in defsStateDict:
        cmds.setAttr(d + ".envelope", defsStateDict[d])

    # restores bsNode state
    for t in bsNodeStateDict:
        if bsNodeStateDict[t]["combo"] != False:
            cmds.connectAttr(
                bsNodeStateDict[t]["combo"] + ".outputWeight",
                bsNodeStateDict[t]["alias"],
            )

        else:
            cmds.setAttr(bsNodeStateDict[t]["alias"], bsNodeStateDict[t]["value"])

    return dup


def mirrorNurbs(self, nurbs=None):
    if nurbs == None:
        nurbs = cmds.ls(sl=1)[0]
    numU, numV = getCVsInNurbs(nurbs)
    nurbsPointDict = makeNurbsPointDict(nurbs)

    for u in range(0, numU):
        for v in range(0, numV):
            pos = nurbsPointDict[u][v]
            cmds.xform(
                nurbs + ".cv[" + str(u) + "][" + str(numV - (v + 1)) + "]",
                t=[-pos[0], pos[1], pos[2]],
                ws=1,
            )


def flipNurbs(self, nurbs=None):
    if nurbs == None:
        nurbs = cmds.ls(sl=1)[0]

    numU, numV = getCVsInNurbs(nurbs)
    nurbsPointDict = makeNurbsPointDict(nurbs)

    for u in range(0, numU):
        for v in range(0, numV):
            pos = nurbsPointDict[u][v]
            cmds.xform(
                nurbs + ".cv[" + str(u) + "][" + str(v) + "]",
                t=[-pos[0], pos[1], pos[2]],
                ws=1,
            )


def selectNurbsUVertices(self):
    selection = cmds.ls(sl=1)
    cmds.select(d=1)

    for sel in selection:
        uv = sel.split(".cv")[1]
        uv = uv.replace("]", "").split("[")
        u = uv[1]
        v = uv[2]

        cmds.select(sel.split(".cv")[0] + ".cv[" + u + "][:]", add=1)


def selectNurbsVVertices(self):
    selection = cmds.ls(sl=1)
    cmds.select(d=1)

    for sel in selection:
        uv = sel.split(".cv")[1]
        uv = uv.replace("]", "").split("[")
        u = uv[1]
        v = uv[2]

        cmds.select(sel.split(".cv")[0] + ".cv[:][" + v + "]", add=1)


def transferNurbsShape(self):
    if len(cmds.ls(sl=1)) < 2:
        cmds.warning("Please select origin and destination nurbs.")
        return

    nurbs1 = cmds.ls(sl=1)[0]
    nurbs1Shape = cmds.listRelatives(nurbs1, c=1, s=1)[0]
    nurbs2 = cmds.ls(sl=1)[1]
    nurbs2Shape = cmds.listRelatives(nurbs2, c=1, s=1)[0]

    posDict = {}

    spansU = int(cmds.getAttr(nurbs1Shape + ".spansU"))
    spansV = int(cmds.getAttr(nurbs1Shape + ".spansV"))
    degreeU = int(cmds.getAttr(nurbs1Shape + ".degreeU"))
    degreeV = int(cmds.getAttr(nurbs1Shape + ".degreeV"))

    U = spansU + degreeU
    V = spansV + degreeV

    for u in range(0, U):
        posDict[u] = {}
        for v in range(0, V):
            pos = cmds.xform(
                nurbs1 + ".cv[" + str(u) + "][" + str(v) + "]", q=1, t=1, ws=1
            )
            posDict[u][v] = pos

    for u in range(0, U):
        for v in range(0, V):
            pos = posDict[u][v]
            cmds.xform(
                nurbs2 + ".cv[" + str(u) + "][" + str(v) + "]",
                t=[pos[0], pos[1], pos[2]],
                ws=1,
            )


def makeNurbsPointDict(nurbs):
    # retuns a dict with world space position of every CV in a given nurbs surface

    nurbsPointDict = {}
    numU, numV = getCVsInNurbs(nurbs)

    for u in range(0, numU):

        nurbsPointDict[u] = {}

        for v in range(0, numV):
            pos = cmds.xform(
                nurbs + ".cv[" + str(u) + "][" + str(v) + "]", t=1, q=1, ws=1
            )
            nurbsPointDict[u][v] = pos

    return nurbsPointDict


def getCVsInNurbs(nurbs):
    # returns U and V numbers for a given nurbs surface

    numSpansU = cmds.getAttr(nurbs + ".spansU")
    degreeU = cmds.getAttr(nurbs + ".degreeU")

    numSpansV = cmds.getAttr(nurbs + ".spansV")
    degreeV = cmds.getAttr(nurbs + ".degreeV")

    formU = cmds.getAttr(nurbs + ".formU")
    formV = cmds.getAttr(nurbs + ".formV")

    numCVsU = numSpansU + degreeU

    if formU == 2:
        numCVsU -= degreeU

    numCVsV = numSpansV + degreeV

    if formV == 2:
        numCVsV -= degreeV

    return numCVsU, numCVsV


def makeCurveFromTransforms(transformList, name, live=False):
    posList = []
    for tr in transformList:
        tr = str(tr)
        pos = cmds.xform(tr, q=1, t=1, ws=1)
        posList.append(pos)

    crv = cmds.curve(p=posList, n=name, d=1)

    if live == False:
        cmds.delete(name, ch=1)

    else:
        for i, tr in enumerate(transformList):
            tr = str(tr)
            cmds.select(crv + ".cv[" + str(i) + "]", r=1)
            cls = cmds.cluster()
            cmds.parent(cls, tr)

    return name


def attachTransformsToCurve(
    crv, transformList, ch=False, transformUpVList=None, followAxis="x", upAxis="y"
):

    for i, tr in enumerate(transformList):
        tr = str(tr)
        cmds.select(crv, r=1)
        cmds.select(tr, add=1)

        if transformUpVList != None:
            upv = transformUpVList[i]

            pathAnim = cmds.pathAnimation(
                fractionMode=True,
                follow=True,
                followAxis=followAxis,
                upAxis=upAxis,
                worldUpType="object",
                worldUpObject=upv,
                inverseUp=False,
                inverseFront=False,
                bank=False,
            )

        else:
            pathAnim = cmds.pathAnimation(
                fractionMode=True,
                follow=True,
                followAxis=followAxis,
                upAxis=upAxis,
                worldUpType="normal",
                worldUpVector=[0, 1, 0],
                inverseUp=False,
                inverseFront=False,
                bank=False,
            )

        uValue = float(i) / float(len(transformList) - 1)
        cmds.setAttr(pathAnim + ".uValue", uValue)

        if ch == False:
            cmds.delete(pathAnim)


def zivaMirror(sel=None, *args):
    import zBuilder.builders.ziva as zva

    if sel == None:
        sel = cmds.ls(sl=True)

    for i, obj in enumerate(sel):
        print ("")
        print ("--- Mirroring " + obj + "(" + str(i + 1) + " of " + str(len(sel)) + ")")
        cmds.select(obj)
        zObj = zva.Ziva()
        zObj.retrieve_from_scene_selection()
        if "_L_" in obj:
            zObj.string_replace("_L_", "_R_")
        elif "_R_" in obj:
            zObj.string_replace("_R_", "_L_")
        zObj.build()


def mwRivet(name):

    input = cmds.filterExpand(sm=32)
    if not (cmds.pluginInfo("matrixNodes", q=True, l=True)):
        cmds.loadPlugin("matrixNodes")
    if input and len(input) >= 2:
        ob = input[0].split(".")[0]
        edgeMax = cmds.polyEvaluate(ob, e=True)
        shape = cmds.listRelatives(ob, shapes=True)
        count = len(input)
        cmds.undoInfo(state=False)
        try:
            locs = mwRivet_Build(input, ob, edgeMax, shape, count, name)
        except:
            cmds.warning("Something is not right")
            locs = False
        cmds.undoInfo(state=True)
    else:
        cmds.warning("mwRivet requires at least 2 edges to be selected")

    if locs:
        return locs


def mwRivet_Build(input, ob, edgeMax, shape, count, name):

    cA = cmds.connectAttr
    sA = cmds.setAttr
    aA = cmds.addAttr
    cN = cmds.createNode
    var = [
        ["pointOnSurfaceInfo", "pos"],
        ["loft", "loft"],
        ["fourByFourMatrix", "mat"],
        ["decomposeMatrix", "dcp"],
    ]
    pnt = ["normal", "tangentU.tangentU", "tangentV.tangentV", "position.position"]
    xyz = ["X", "Y", "Z"]
    io = ["input", "output"]
    uv = "UV"
    doublet = zip(range(count - 1), range(1, count))
    locs = []
    node = 1

    for pair in doublet:
        for n in range(4):
            var[n][1] = cN(var[n][0], name=var[n][1])
        gp = cmds.group(em=True, name=name + "Rivet%s_GP" % node)
        loc = cmds.spaceLocator(name=name + "Rivet%s" % node)
        sA("%s.turnOnPercentage" % var[0][1], 1)
        sA("%s.degree" % var[1][1], 1)
        aA(loc[0], at="float2", ln=uv)
        cmds.parent(loc, gp)
        node += 1

        for one in [0, 1]:
            num = int(re.findall("\[(.*?)\]", input[pair[one]])[0])
            aA(
                loc[0],
                at="short",
                ln="edgeIndex%d" % one,
                min=0,
                max=edgeMax,
                k=True,
                dv=num,
            )
            ed = cN("curveFromMeshEdge", name="cFM")
            sA("%s.edgeIndex[0]" % ed, num)
            cA("%s.edgeIndex%d" % (loc[0], one), "%s.edgeIndex[0]" % ed)
            cA("%s.worldMesh[0]" % shape[0], "%s.%sMesh" % (ed, io[0]))
            cA("%s.outputCurve" % ed, "%s.%sCurve[%s]" % (var[1][1], io[0], one))
            aA(loc[0], at="float", ln=uv[one], k=True, p=uv, min=0, max=1)
        print ("ok%s" % node)

        for UV in uv:
            cA("%s.UV.%s" % (loc[0], UV), "%s.parameter%s" % (var[0][1], UV))
            sA("%s.UV.%s" % (loc[0], UV), 0.5)

        for i in range(4):
            for j in range(3):
                o = xyz[j]
                if i in [1, 2]:
                    o = o.lower()
                cA("%s.%s%s" % (var[0][1], pnt[i], o), "%s.in%s%s" % (var[2][1], i, j))

        cA("%s.%sSurface" % (var[1][1], io[1]), "%s.%sSurface" % (var[0][1], io[0]))
        cA("%s.%s" % (var[2][1], io[1]), "%s.%sMatrix" % (var[3][1], io[0]))
        cA("%s.%sTranslate" % (var[3][1], io[1]), "%s.t" % gp)
        cA("%s.%sRotate" % (var[3][1], io[1]), "%s.r" % gp)

        locs.append(loc[0])

    cmds.select(locs)
    return locs


def exportSkins(self):
    # exports skin files from all skinned objects

    objs = cmds.ls("*", type="transform")

    skinnedObjs = []

    for o in objs:
        history = cmds.ls(cmds.listHistory(o, pdo=1, il=2), typ="skinCluster")
        add = False
        for h in history:
            type = cmds.objectType(h)
            if type == "skinCluster":
                add = True
        if add == True:
            skinnedObjs.append(o)

    cmds.select(skinnedObjs, r=1)
    mgear.skin.exportSkinPack()


def copySkin(name=None, mode="closestPoint"):
    # copies skinCluster and influences from source to multiple destinations

    sel = cmds.ls(sl=True)
    source = sel[0]
    dest = sel[1:]

    findSkinCluster = cmds.listHistory(source, pdo=1, il=2)
    sourceSkinCluster = cmds.ls(findSkinCluster, typ="skinCluster")

    if name == None:
        name = sourceSkinCluster[0]

    for target in dest:
        findSkinCluster = cmds.listHistory(target, pdo=1, il=2)
        oldSkc = cmds.ls(findSkinCluster, typ="skinCluster")
        # test if there is a skincluster on new geo already
        if oldSkc:
            cmds.delete(oldSkc)
            print (
                "Deleted existing skincluster on " + target + "(" + str(oldSkc) + ")"
            )
        jnt = cmds.skinCluster(sourceSkinCluster, influence=True, q=True)
        newSkc = cmds.skinCluster(jnt, target, tsb=True, n=name)[0]
        cmds.copySkinWeights(
            ss=sourceSkinCluster[0], ds=newSkc, nm=True, surfaceAssociation=mode
        )


def getFirstVertFromEdges(edgeList, mode="LtoR"):
    # returns first vert in edges list, LtoR or RtoL

    cmds.select(edgeList)
    tempCurve = cmds.polyToCurve(degree=1)[0]
    lastCv = cmds.getAttr(tempCurve + ".cp", s=1) - 1
    pos1 = cmds.xform(tempCurve + ".cv[0]", q=1, t=1, ws=1)
    pos2 = cmds.xform(tempCurve + ".cv[" + str(lastCv) + "]", q=1, t=1, ws=1)
    cmds.delete(tempCurve)

    cmds.select(edgeList)
    cmds.select(cmds.polyListComponentConversion(fe=1, tv=1))
    vertList = cmds.ls(sl=1)

    vtx1 = getClosestComponentFromList(vertList, pos=pos1)
    vtx2 = getClosestComponentFromList(vertList, pos=pos2)

    if mode == "LtoR":
        if pos1[0] <= pos2[0]:
            return vtx1
        else:
            return vtx2

    if mode == "RtoL":
        if pos1[0] >= pos2[0]:
            return vtx1
        else:
            return vtx2


def radialSkin(geo, aimJointList, skinJointList, skcName):
    cmds.select(aimJointList, geo, r=1)
    cmds.skinCluster(
        n=skcName, maximumInfluences=1, bindMethod=0, skinMethod=1, normalizeWeights=2
    )

    for jnt in aimJointList:
        cmds.skinCluster(skcName, e=True, inf=jnt, lockWeights=1)

    for i, aimJnt in enumerate(aimJointList):
        skinJnt = skinJointList[i]

        cmds.skinCluster(
            skcName, edit=True, lockWeights=True, weight=0, addInfluence=skinJnt
        )
        cmds.skinCluster(skcName, e=True, inf=skinJnt, lockWeights=0)
        cmds.skinCluster(skcName, e=True, inf=aimJnt, lockWeights=0)
        cmds.skinCluster(skcName, edit=True, selectInfluenceVerts=aimJnt)
        cmds.skinPercent(skcName, transformValue=[(aimJnt, 0), (skinJnt, 1)])
        cmds.skinCluster(skcName, e=True, removeInfluence=aimJnt)

    cmds.select(cl=True)


def checkVertsInEdgeLoop(verts):
    # checks wether a set of verts are in the same edge loop

    faceGeo = cmds.listRelatives(verts[0], parent=True)[0]
    cmds.select(verts[0], verts[1], r=1)
    edges = getVertLoop(verts[0], verts[1])
    if edges == None:
        return False
    edge = faceGeo + ".e[" + str(edges[0]) + "]"
    nakedEdge = int(edges[0].split("[")[1].split("]")[0])
    edgeLoop = cmds.polySelect(faceGeo, edgeLoop=nakedEdge)

    cmds.select(cmds.polyListComponentConversion(fe=1, tv=1))
    edgeLoopVerts = cmds.ls(sl=1, fl=1)

    for v in verts:
        if v not in edgeLoopVerts:
            return False

    return True


def zeroOut(node, t=1, r=1, s=1):
    if t == True:
        cmds.setAttr(node + ".tx", 0)
        cmds.setAttr(node + ".ty", 0)
        cmds.setAttr(node + ".tz", 0)

    if r == True:
        cmds.setAttr(node + ".rx", 0)
        cmds.setAttr(node + ".ry", 0)
        cmds.setAttr(node + ".rz", 0)

    if s == True:
        cmds.setAttr(node + ".sx", 1)
        cmds.setAttr(node + ".sy", 1)
        cmds.setAttr(node + ".sz", 1)


def snap(obj1, obj2, st=False, sr=False, ss=False):

    try:
        prevParent = cmds.listRelatives(obj1, p=1)[0]
    except:
        prevParent = "world"

    if prevParent != obj2:
        cmds.parent(obj1, obj2)
    if st is False:
        cmds.setAttr(obj1 + ".tx", 0)
        cmds.setAttr(obj1 + ".ty", 0)
        cmds.setAttr(obj1 + ".tz", 0)
    if sr is False:
        cmds.setAttr(obj1 + ".rx", 0)
        cmds.setAttr(obj1 + ".ry", 0)
        cmds.setAttr(obj1 + ".rz", 0)
    if ss is False:
        cmds.setAttr(obj1 + ".sx", 1)
        cmds.setAttr(obj1 + ".sy", 1)
        cmds.setAttr(obj1 + ".sz", 1)

    if prevParent != "world" and prevParent != obj2:
        cmds.parent(obj1, prevParent)
    elif prevParent == "world":
        cmds.parent(obj1, w=1)


def createControlCrv(
    loc,
    offsetX=0,
    offsetY=0,
    offsetZ=0,
    size=1,
    sx=1,
    sy=1,
    sz=1,
    shape="circle",
    name=None,
    nr=[0, 0, 1],
):
    if name == None:
        name = loc.replace("loc", "crv")

    crv = cmds.circle(n=name, nr=nr, r=size, ch=0)[0]
    ztr = mwUtils.addZtr(crv)
    cmds.parent(ztr, loc)
    cmds.setAttr(ztr + ".tx", 0)
    cmds.setAttr(ztr + ".ty", 0)
    cmds.setAttr(ztr + ".tz", 0)
    cmds.setAttr(ztr + ".rx", 0)
    cmds.setAttr(ztr + ".ry", 0)
    cmds.setAttr(ztr + ".rz", 0)
    cmds.setAttr(ztr + ".sx", sx)
    cmds.setAttr(ztr + ".sy", sy)
    cmds.setAttr(ztr + ".sz", sz)

    cmds.setAttr(crv + ".tx", offsetX)
    cmds.setAttr(crv + ".ty", offsetY)
    cmds.setAttr(crv + ".tz", offsetZ)

    if shape == "scLeft":
        cmds.move(-0.3 * size, 0, 0, crv + ".cv[7]", wd=1, r=1, os=1)
        cmds.move(-0.8 * size, 0, 0, crv + ".cv[0]", crv + ".cv[6:7]", wd=1, r=1, os=1)

    if shape == "scUp":
        cmds.move(0, 0.3 * size, 0, crv + ".cv[5]", wd=1, r=1, os=1)
        cmds.move(0, 0.8 * size, 0, crv + ".cv[4:6]", wd=1, r=1, os=1)

    if shape == "scRight":
        cmds.move(0.3 * size, 0, 0, crv + ".cv[3]", wd=1, r=1, os=1)
        cmds.move(0.8 * size, 0, 0, crv + ".cv[2:4]", wd=1, r=1, os=1)

    if shape == "scDn":
        cmds.move(0, -0.3 * size, 0, crv + ".cv[1]", wd=1, r=1, os=1)
        cmds.move(0, -0.8 * size, 0, crv + ".cv[0:2]", wd=1, r=1, os=1)

    return crv, ztr


def locator(name=None, n=None, ls=1, lsx=1, lsy=1, lsz=1):
    if name == None:
        name = n

    if ls != 1:
        lsx = ls
        lsy = ls
        lsz = ls

    loc = cmds.spaceLocator(n=name)[0]
    cmds.setAttr(loc + ".lsx", lsx)
    cmds.setAttr(loc + ".lsy", lsy)
    cmds.setAttr(loc + ".lsz", lsz)

    return loc


def createFacialGeoLayer(
    faceGeo, addGeos, name, side="C", facePolys=None, addToBs=True, snapType="meshSnap"
):
    # creates duplicate geometries and connections for facial setup
    cmds.setAttr(faceGeo + ".sx", lock=0)
    cmds.setAttr(faceGeo + ".sy", lock=0)
    cmds.setAttr(faceGeo + ".sz", lock=0)

    if facePolys == []:
        facePolys = None

    facialBody = mwUtils.renameSuffix(faceGeo, "ply", add="facial")
    facialCut = mwUtils.renameSuffix(faceGeo, "ply", add="facialCut")
    if not cmds.objExists(facialBody):
        facialBody = cmds.duplicate(faceGeo, n=facialBody)[0]
        facialCut = cmds.duplicate(faceGeo, n=facialCut)[0]
        cmds.blendShape(
            facialBody,
            faceGeo,
            w=[0, 1],
            n=mwUtils.renameSuffix(faceGeo, "bs", add="facial"),
            foc=1,
        )

        # cuts geo
        if facePolys != None:
            facialCutPolys = []
            facialBodyPolys = []
            for f in facePolys:
                facialCutPolys.append(f.replace(faceGeo, facialCut))
                facialBodyPolys.append(f.replace(faceGeo, facialBody))
            cmds.select(facialCutPolys, r=1)
            cmds.select(facialCut + ".f[*]", tgl=True)
            cmds.delete()
            cmds.delete(ch=1)

        if snapType == "meshSnap":
            # meshSnap
            cmds.meshSnap(
                facialBody,
                facialCut,
                name=mwUtils.renameSuffix(faceGeo, "meshSnap", add="facialCut"),
            )
        elif snapType == "cvWrap":
            # cvWrap
            cmds.cvWrap(
                facialBody,
                facialCut,
                name=mwUtils.renameSuffix(faceGeo, "cvWrap", add="facialCut"),
            )

    faceGeoPly = mwUtils.renameSuffix(faceGeo, "ply", add=name)
    bsName = mwUtils.renameSuffix(faceGeo, "bs", add="facialSystems")

    if not cmds.objExists(faceGeoPly):
        cmds.duplicate(facialCut, n=faceGeoPly)[0]
        cmds.setAttr(faceGeoPly + ".v", 0)

        if addToBs == True:
            if not cmds.objExists(bsName):
                cmds.blendShape(faceGeoPly, facialCut, n=bsName, w=[0, 1])
            else:
                addBlendshapeTarget(bsName, faceGeoPly, facialCut)

    addGeosPly = []

    if addGeos != "":
        addGeos = addGeos.replace("u'", "'")
        addGeos = addGeos.replace("'", '"')

        if not addGeos.startswith("["):
            addGeos = "[" + addGeos
        if not addGeos.endswith("]"):
            addGeos = addGeos + "]"

        if not addGeos.startswith('["'):
            addGeos = addGeos.replace("[", '["')
        if not addGeos.endswith('"]'):
            addGeos = addGeos.replace("]", '"]')

        addGeos = ast.literal_eval(addGeos)

        for g in addGeos:
            addGeoPly = mwUtils.renameSuffix(g, "ply", add="Facial")
            if not cmds.objExists(addGeoPly):
                cmds.duplicate(g, n=addGeoPly)[0]
                cmds.setAttr(addGeoPly + ".v", 0)
                bsName = mwUtils.renameSuffix(g, "bs", add="Facial")
                cmds.blendShape(addGeoPly, g, w=[0, 1])

            newGeo = cmds.duplicate(
                g, n=mwUtils.renameSuffix(g, "ply", add=name + side)
            )[0]
            bsName = mwUtils.renameSuffix(g, "bs", add="Facial")

            if not cmds.objExists(bsName):
                cmds.blendShape(
                    newGeo, addGeoPly, n=bsName, w=[0, 1],
                )
            else:
                addBlendshapeTarget(bsName, newGeo, addGeoPly)
            cmds.setAttr(newGeo + ".v", 0)

            addGeosPly.append(newGeo)

    cmds.setAttr(faceGeoPly + ".v", 0)
    cmds.setAttr(facialCut + ".v", 0)
    cmds.setAttr(facialBody + ".v", 0)

    return faceGeoPly, facialCut, facialBody, addGeosPly


def addBlendshapeTarget(bsNode, target, geo):
    alias = cmds.aliasAttr(bsNode, query=True)
    numsList = []
    for a in alias:
        if "weight[" in a:
            num = int(a.split("[")[1].replace("]", ""))
            numsList.append(num)

    bsNum = max(numsList)

    cmds.blendShape(bsNode, e=1, t=(geo, bsNum + 1, target, 1))
    cmds.setAttr(bsNode + "." + target, 1)


def multiMirror(obj=None):
    # mirrors transforms and shapes, depending on selection

    if obj == None:
        obj = cmds.ls(sl=1)
    if obj == []:
        cmds.warning("No object selected")
        return

    obj = mwUtils.convertToList(obj)
    for i in range(0, 3):
        for o in obj:
            if cmds.objectType(o) == "transform":
                pos = cmds.xform(o, q=1, t=1, ws=1)
                rot = cmds.xform(o, q=1, ro=1, ws=1)
                sca = cmds.xform(o, q=1, s=1, ws=1)

                opPos = [-pos[0], pos[1], pos[2]]
                opRot = [rot[0], -rot[1], -rot[2]]

                if "_L" in o:
                    mirObj = o.replace("_L", "_R")

                    cmds.xform(mirObj, t=opPos, ws=1)
                    cmds.xform(mirObj, ro=opRot, ws=1)
                    cmds.xform(mirObj, s=sca, ws=1)

                elif "_R" in o:
                    mirObj = o.replace("_R", "_L")

                    cmds.xform(mirObj, t=opPos, ws=1)
                    cmds.xform(mirObj, ro=opRot, ws=1)
                    cmds.xform(mirObj, s=sca, ws=1)

                elif "_C" in o:
                    cmds.warning("Skipping mirror center object: " + o)

        for o in obj:
            s = cmds.listRelatives(o, c=1, s=1)
            if cmds.objectType(s[0]) == "nurbsCurve":
                for ss in s:
                    cvs = cmds.getAttr(ss + ".cp", s=1)

                    if "_L" in ss:
                        mirObj = ss.replace("_L", "_R")

                        for cv in range(0, cvs):
                            mirPos = cmds.xform(
                                ss + ".cv[" + str(cv) + "]", q=1, t=1, ws=1
                            )
                            pos = [-mirPos[0], mirPos[1], mirPos[2]]
                            cmds.xform(mirObj + ".cv[" + str(cv) + "]", t=pos, ws=1)

                    elif "_R" in ss:
                        mirObj = ss.replace("_R", "_L")

                        for cv in range(0, cvs):
                            mirPos = cmds.xform(
                                ss + ".cv[" + str(cv) + "]", q=1, t=1, ws=1
                            )
                            pos = [-mirPos[0], mirPos[1], mirPos[2]]
                            cmds.xform(mirObj + ".cv[" + str(cv) + "]", t=pos, ws=1)

                    elif "_C" in ss:
                        cmds.warning("Skipping center shape: " + ss)


def createFollicleInNurbs(name, nurbs, pos, breakRot=True):
    # finds vPos
    npC = cmds.createNode("nearestPointOnCurve")

    cmds.select(nurbs + ".u[0.5]", r=1)
    cmds.duplicateCurve(nurbs + ".u[0.5]", ch=1, rn=0, local=0, n="tempCurve")
    parameter = cmds.getAttr("tempCurveShape.minMaxValue.max")

    cmds.setAttr(npC + ".inPositionX", pos[0])
    cmds.setAttr(npC + ".inPositionY", pos[1])
    cmds.setAttr(npC + ".inPositionZ", pos[2])
    mwUtils.connectAttr("tempCurveShape.worldSpace", npC + ".inputCurve")

    param = cmds.getAttr(npC + ".parameter")
    vPos = param / parameter

    cmds.delete(npC)
    cmds.delete("tempCurve")

    # creates a follice on the given nurbs surface and position
    cmds.createNode("follicle")
    cmds.rename("follicle1", name)

    shape = cmds.listRelatives(nurbs, c=1, s=1)[0]
    folShape = cmds.listRelatives(name, c=1, s=1)[0]

    mwUtils.connectAttr(shape + ".local", folShape + ".inputSurface")
    mwUtils.connectAttr(shape + ".worldMatrix[0]", folShape + ".inputWorldMatrix")
    mwUtils.connectAttr(folShape + ".outRotate", name + ".rotate")
    mwUtils.connectAttr(folShape + ".outTranslate", name + ".translate")

    cmds.setAttr(folShape + ".parameterU", 0.5)
    cmds.setAttr(folShape + ".parameterV", vPos)

    if breakRot == True:
        pm.disconnectAttr(name + ".rotate")
        cmds.setAttr(name + ".rx", 0)
        cmds.setAttr(name + ".ry", 0)
        cmds.setAttr(name + ".rz", 0)

    return name


def createFollicelInNurbsClosestPoint(name, nurbs, pos):
    cp = cmds.createNode("closestPointOnSurface")
    nurbsShape = cmds.listRelatives(nurbs, c=1, s=1)[0]
    cmds.setAttr(cp + ".inPositionX", pos[0])
    cmds.setAttr(cp + ".inPositionY", pos[1])
    cmds.setAttr(cp + ".inPositionZ", pos[2])
    cmds.connectAttr(nurbsShape + ".worldSpace", cp + ".inputSurface")

    paramU = cmds.getAttr(cp + ".parameterU")
    paramV = cmds.getAttr(cp + ".parameterV")

    spansU = float(cmds.getAttr(nurbsShape + ".spansU"))
    spansV = float(cmds.getAttr(nurbsShape + ".spansV"))

    normParamU = paramU / spansU
    normParamV = paramV / spansV

    cmds.createNode("follicle")
    cmds.rename("follicle1", name)
    folShape = cmds.listRelatives(name, c=1, s=1)[0]

    mwUtils.connectAttr(nurbsShape + ".local", folShape + ".inputSurface")
    mwUtils.connectAttr(nurbsShape + ".worldMatrix[0]", folShape + ".inputWorldMatrix")

    mwUtils.connectAttr(folShape + ".outRotate", name + ".rotate")
    mwUtils.connectAttr(folShape + ".outTranslate", name + ".translate")

    cmds.setAttr(folShape + ".parameterU", normParamU)
    cmds.setAttr(folShape + ".parameterV", normParamV)

    cmds.delete(cp)

    return name


def connectCtlToFol(ctl, fol):
    # creates plusMinusAverage to connect fols to jntfs
    pma = fol.replace("fol", "pma")
    cmds.createNode("plusMinusAverage", n=pma)
    cmds.setAttr(pma + ".operation", 2)
    mwUtils.connectAttr(fol + ".tx", pma + ".input3D[0].input3Dx")
    mwUtils.connectAttr(fol + ".ty", pma + ".input3D[0].input3Dy")
    mwUtils.connectAttr(fol + ".tz", pma + ".input3D[0].input3Dz")
    tx = cmds.getAttr(fol + ".tx")
    ty = cmds.getAttr(fol + ".ty")
    tz = cmds.getAttr(fol + ".tz")
    cmds.setAttr(pma + ".input3D[1].input3Dx", tx)
    cmds.setAttr(pma + ".input3D[1].input3Dy", ty)
    cmds.setAttr(pma + ".input3D[1].input3Dz", tz)

    # creates group hierarchy
    ctlZtr = cmds.listRelatives(ctl, p=1)[0]

    # rvt
    rvt = cmds.createNode("transform", n=mwUtils.renameSuffix(ctl, suffix="rvt"))
    snap(rvt, ctl)
    cmds.parent(ctl, w=1)

    # rvtZtr
    rvtZtr = cmds.rename(ctlZtr, mwUtils.renameSuffix(ctl, suffix="rvtZtr"))
    cmds.parent(rvt, rvtZtr)
    zeroOut(rvt)
    cmds.parent(ctl, rvt)

    # auto
    auto = cmds.createNode("transform", n=mwUtils.renameSuffix(ctl, suffix="auto"))
    snap(auto, fol)
    cmds.parent(rvtZtr, auto)

    # autoZtr
    autoZtr = mwUtils.addZtr(auto)

    # global ctl ztr
    newCtlZtr = mwUtils.addZtr(autoZtr)
    cmds.rename(newCtlZtr, ctlZtr)

    # fix for mirrored ctls
    if "_inv" in ctlZtr:
        fixedCtlZtr = ctlZtr.replace("_inv", "_ztr")
        cmds.delete(fixedCtlZtr)
        cmds.rename(ctlZtr, fixedCtlZtr)

    mwUtils.connectAttr(pma + ".output3Dx", auto + ".tx")
    mwUtils.connectAttr(pma + ".output3Dy", auto + ".ty")
    mwUtils.connectAttr(pma + ".output3Dz", auto + ".tz")

    # creates and connects reverse mdv node
    mdv = cmds.createNode(
        "multiplyDivide", n=mwUtils.renameSuffix(ctl, suffix="mdv", add="reverse")
    )

    mwUtils.connectAttr(ctl + ".tx", mdv + ".input1X")
    mwUtils.connectAttr(ctl + ".ty", mdv + ".input1Y")
    mwUtils.connectAttr(ctl + ".tz", mdv + ".input1Z")

    cmds.setAttr(mdv + ".input2Y", -1)
    cmds.setAttr(mdv + ".input2X", -1)
    cmds.setAttr(mdv + ".input2Z", -1)

    mwUtils.connectAttr(mdv + ".outputX", rvt + ".tx")
    mwUtils.connectAttr(mdv + ".outputY", rvt + ".ty")
    mwUtils.connectAttr(mdv + ".outputZ", rvt + ".tz")


def getClosestVtx(mesh, pos=None, transform=None):
    # returns closes vertex from given mesh

    if transform != None:
        pos = cmds.xform(transform, q=1, t=1, ws=1)

    shape = cmds.listRelatives(mesh, c=1, s=1)[0]
    cpm = cmds.createNode("closestPointOnMesh")
    mwUtils.connectAttr(shape + ".outMesh", cpm + ".inMesh")
    cmds.setAttr(cpm + ".ipx", pos[0])
    cmds.setAttr(cpm + ".ipy", pos[1])
    cmds.setAttr(cpm + ".ipz", pos[2])

    vtx = mesh + (".vtx[" + str(cmds.getAttr(cpm + ".result.vt")) + "]")
    cmds.delete(cpm)

    return vtx


def getClosestFace(mesh, pos=None, transform=None):
    # returns closes face from given mesh

    if transform != None:
        pos = cmds.xform(transform, q=1, t=1, ws=1)

    shape = cmds.listRelatives(mesh, shapes=1)[0]
    cpm = cmds.createNode("closestPointOnMesh")
    mwUtils.connectAttr(shape + ".outMesh", cpm + ".inMesh")
    cmds.setAttr(cpm + ".ipx", pos[0])
    cmds.setAttr(cpm + ".ipy", pos[1])
    cmds.setAttr(cpm + ".ipz", pos[2])

    f = mesh + (".f[" + str(cmds.getAttr(cpm + ".result.f")) + "]")
    cmds.delete(cpm)

    return f


def getClosestComponentFromList(componentList, pos=None, transform=None):
    # returns closest component from a component input list

    cmds.select(componentList, r=1)
    componentList = cmds.ls(sl=1, fl=1)

    if transform != None:
        pos = cmds.xform(transform, q=1, t=1, ws=1)

    distances = []
    for c in componentList:
        cpos = cmds.xform(c, q=1, t=1, ws=1)
        dist = distanceBetween(pos, cpos)
        distances.append(dist)

    return componentList[distances.index(min(distances))]


def sortVerts(vertList, startVtx=None):
    # returns an ordered list of vertices through topology
    # uses furthest -X vtx in vertList for startVtx if none is passed

    if startVtx == None:
        dict = {}
        for v in vertList:
            x = cmds.xform(v, q=1, t=1, ws=1)[0]
            dict[v] = x
            startVtx = min(dict, key=dict.get)

    sorted = [startVtx]
    cmds.select(startVtx, r=1)

    for i in range(0, len(vertList)):
        cmds.select(sorted, r=1)
        mel.eval("PolySelectTraverse 1")
        sel = cmds.ls(sl=1, fl=1)
        for v in vertList:
            if v in sel and v not in sorted:
                sorted.append(v)

    return sorted


def getVertLoop(vert1, vert2):
    # returns closest loop from two given verts
    # if none is found, uses shortestEdgePath

    geo = vert1.split(".")[0]

    cmds.select(vert1)
    cmds.select(cmds.polyListComponentConversion(fv=1, te=1))
    edges1 = cmds.ls(sl=1, fl=1)

    cmds.select(vert2)
    cmds.select(cmds.polyListComponentConversion(fv=1, te=1))
    edges2 = cmds.ls(sl=1, fl=1)

    pathList = []
    pathLen = []

    for d1 in edges1:
        d1 = int(d1.split("[")[1].split("]")[0])
        for d2 in edges2:
            d2 = int(d2.split("[")[1].split("]")[0])

            path = cmds.polySelect(geo, edgeLoopPath=[d1, d2])
            if path != None:
                pathList.append(path)
                pathLen.append(len(path))

    if len(pathList) == 0:
        result = cmds.polySelect(
            geo,
            shortestEdgePath=[
                int(vert1.split("[")[1].split("]")[0]),
                int(vert2.split("[")[1].split("]")[0]),
            ],
        )

        resultGeo = []
        for r in result:
            resultGeo.append(geo + ".e[" + str(r) + "]")
        return resultGeo

    result = pathList[pathLen.index(min(pathLen))]

    resultGeo = []
    for r in result:
        resultGeo.append(geo + ".e[" + str(r) + "]")
    return resultGeo


def getVertLoopOld(vert1, vert2, iters=10000):
    # returns closest loop from two given verts

    cmds.select(vert1)
    cmds.select(cmds.polyListComponentConversion(fv=1, te=1))
    edgeDir1 = cmds.ls(sl=1, fl=1)[0]
    edgeDir2 = cmds.ls(sl=1, fl=1)[1]
    dir1 = False
    dir2 = False
    getShortest = False

    # tests first loop
    edgeDir1 = int(edgeDir1.split("[")[1].split("]")[0])
    cmds.polySelect(edgeLoop=edgeDir1)
    cmds.select(cmds.polyListComponentConversion(fe=1, tv=1), r=1)
    vertDir1 = cmds.ls(sl=1, fl=1)
    if vert2 in vertDir1:
        dir1 = True
        dir = [vertDir1]
        dirName = ["vertDir1"]

    # tests second loop
    edgeDir2 = int(edgeDir2.split("[")[1].split("]")[0])
    cmds.polySelect(edgeLoop=edgeDir2)
    cmds.select(cmds.polyListComponentConversion(fe=1, tv=1), r=1)
    vertDir2 = cmds.ls(sl=1, fl=1)
    if vert2 in vertDir2:
        dir2 = True
        dir = [vertDir2]
        dirName = ["vertDir2"]

    if dir1 == True and dir2 == True:
        getShortest = True
        dir = [vertDir1, vertDir2]
        dirName = ["vertDir1", "vertDir2"]

    if dir1 == False and dir2 == False:
        cmds.warning("Vertices don't share a loop")
        cmds.select(d=1)
        return

    # finds path
    resultDict = {}
    for i, d in enumerate(dir):
        dName = dirName[i]
        cmds.select(d, r=1)
        vertsInEdges = cmds.ls(sl=1, fl=1)
        dir1 = [vert1]
        dir2 = [vert2]

        cmds.select(vert1, r=1)
        done = False

        for i in range(0, iters):
            mel.eval("PolySelectTraverse 1")
            newSel = cmds.ls(sl=1, fl=1)
            for s in newSel:
                if s == vert2:
                    dir1.append(s)
                    done = True
                    break
                if s in vertsInEdges and s not in dir1:
                    dir1.append(s)
            if done == True:
                break

        cmds.select(vert2, r=1)

        done = False

        for i in range(0, iters):
            mel.eval("PolySelectTraverse 1")
            newSel = cmds.ls(sl=1, fl=1)
            for s in newSel:
                if s == vert1:
                    dir2.append(s)
                    done = True
                    break
                if s in vertsInEdges and s not in dir2:
                    dir2.append(s)
            if done == True:
                break

        intersection = [x for x in dir1 if x in dir2]

        cmds.select(intersection, r=1)
        cmds.select(cmds.polyListComponentConversion(fv=1, te=1), r=1)
        mel.eval("PolySelectTraverse 2")

        result = cmds.ls(sl=1, fl=1)

        resultDict[dName] = result

    if getShortest == True:
        if len(resultDict["vertDir1"]) >= len(resultDict["vertDir2"]):
            result = resultDict["vertDir1"]
        else:
            result = resultDict["vertDir2"]

    return result


def distanceBetween(posA=None, posB=None, objA=None, objB=None):
    # returns distance between two objects or points

    if posA == None and objA == None:
        cmds.warning("Missing posA or objA")
    if posB == None and objB == None:
        cmds.warning("Missing posB or objB")

    if objA != None:
        posA = cmds.xform(objA, q=1, t=1, ws=1)
    if objB != None:
        posB = cmds.xform(objB, q=1, t=1, ws=1)

    ab = [posA[0] - posB[0], posA[1] - posB[1], posA[2] - posB[2]]

    sq = math.pow(ab[0], 2) + math.pow(ab[1], 2) + math.pow(ab[2], 2)
    distance = math.sqrt(sq)

    return distance


def addConnectTag(obj, connectID, connectObj=None):
    # adds connectID attributes

    # connectID reference
    # 0[1constraint] 1[1pac,  2orc, 3poc, 4scc] 2[mo] 3[s(t)x] 4[s(t)y] 5[s(t)z] 6[srx] 7[sry] 8[srz]
    # 0[2directConnect] 1[v] 2[tx] 3[ty] 4[tz] 5[rx] 6[ry] 7[rz] 8[sx] 9[sy] 10[sz]
    # 0[3blendShape] 1[foc]
    # 0[4userDefined]

    if connectObj == None:
        connectObj = obj
    if not cmds.objExists(obj + ".connectObj"):
        cmds.addAttr(obj, ln="connectObj", dt="string")
        cmds.setAttr(obj + ".connectObj", connectObj, type="string")

    if not cmds.objExists(obj + ".connectID"):
        cmds.addAttr(obj, ln="connectID", dt="string")
        cmds.setAttr(obj + ".connectID", connectID, type="string")


def buildRigBound(
    skeletonGeo=False,
    musclesGeo=False,
    lowGeo=False,
    highGeo=False,
    tagJoints=True,
    tagGeo=True,
):
    # builds rigBound from published rigPuppet and model

    if skeletonGeo == True:
        skeletonGeo = mwUtils.bringPublish(task="ModelSkeleton")
        if skeletonGeo == True:
            cmds.rename("geo", "skeletonGeo")
            for g in cmds.listRelatives("skeletonGeo", c=1):
                cmds.rename(g, g.replace("_geo", "_skeletonGeo"))

    if musclesGeo == True:
        musclesGeo = mwUtils.bringPublish(task="ModelMuscles")
        if musclesGeo == True:
            cmds.rename("geo", "musclesGeo")
            for g in cmds.listRelatives("musclesGeo", c=1):
                cmds.rename(g, g.replace("_geo", "_musclesGeo"))

    if lowGeo == True:
        lowGeo = mwUtils.bringPublish(task="ModelLow")
        if lowGeo == True:
            cmds.rename("geo", "lowGeo")
            for g in cmds.listRelatives("lowGeo", c=1):
                cmds.rename(g, g.replace("_geo", "_lowGeo"))

    if highGeo == True:
        highGeo = mwUtils.bringPublish(task="ModelHigh")
        if highGeo == True:
            cmds.rename("geo", "highGeo")
            for g in cmds.listRelatives("highGeo", c=1):
                cmds.rename(g, g.replace("_geo", "_highGeo"))

    mwUtils.bringPublish(task="Model")
    mwUtils.bringPublish(task="RigPuppet")

    joints = cmds.listRelatives("skeleton", ad=1, type="joint")
    rootJoint = getHierarchyRootJoint(joints[0])
    cmds.parent(rootJoint, w=1)
    cmds.group(rootJoint, n="skeleton")

    if tagJoints == True:
        addConnectTag(rootJoint, connectID="110000000-140000")
        for j in joints:
            addConnectTag(j, connectID="110000000")

    if tagGeo == True:
        geos = cmds.ls("*_geo")
        for g in geos:
            shape = cmds.listRelatives(g, c=1, s=1)[0]
            addConnectTag(g, connectID="21000000000", connectObj=shape)

    # unhides attrs
    for attr in cmds.listAttr(rootJoint, k=0, cb=1):
        cmds.setAttr(rootJoint + "." + attr, k=1)

    if cmds.listRelatives(rootJoint, ad=1, type="joint") != None:
        for j in cmds.listRelatives(rootJoint, ad=1, type="joint"):
            mwUtils.disconnectAll(j)
            for attr in cmds.listAttr(j, k=0, cb=1):
                cmds.setAttr(j + "." + attr, k=1)

    cmds.delete("ROOT")
    cmds.delete("deformers_set")
    cmds.delete("*Matrix*")

    path = mwUtils.getPath(to="skin")
    filename = os.path.join(path, mwUtils.getAsset() + ".gSkinPack")
    mgear.skin.importSkinPack(filename)

    cmds.group("geo", "skeleton", n="ROOT")

    # reparents
    if skeletonGeo == True:
        cmds.parent("skeletonGeo", "geo")
    if musclesGeo == True:
        cmds.parent("musclesGeo", "geo")
    if lowGeo == True:
        cmds.parent("lowGeo", "geo")
    if highGeo == True:
        cmds.parent("highGeo", "geo")

    # creates out_set
    pregeos = cmds.listRelatives("geo", ad=1, type="transform")

    geos = []
    for g in pregeos:
        if g.endswith("_geo"):
            geos.append(g)

    cmds.sets(geos, n="out_set")

    cmds.select(d=1)


def getHierarchyRootJoint(joint):
    # finds the top parent joint node from the given joint

    rootJoint = joint

    while True:
        parent = cmds.listRelatives(rootJoint, parent=True, type="joint")
        if not parent:
            break

        rootJoint = parent[0]

    return rootJoint


def getHierarchyRoot(obj):
    # finds the top parent transform node from the given transform

    while True:
        parent = cmds.listRelatives(obj, parent=True, type="transform", f=True)
        if not parent:
            break

        obj = parent[0]

    return obj

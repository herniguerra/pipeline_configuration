import maya.cmds as cmds
import maya.mel as mel
import sys
import json
import shutil


def run():

    cmds.loadPlugin("atomImportExport.mll", quiet=True)

    cmds.file(new=True)

    scenefile = cmds.file(sceneName=True, query=True)

    PyblishInstanceData = mel.eval('DeadlineExtraInfo("PyblishInstanceData");')
    PyblishInstanceData = PyblishInstanceData.replace("'", '"').replace("\\", "/")
    PyblishInstanceData = json.loads(PyblishInstanceData)

    PyblishContextData = mel.eval('DeadlineExtraInfo("PyblishContextData");')
    PyblishContextData = PyblishContextData.replace("'", '"').replace("\\", "/")
    PyblishContextData = json.loads(PyblishContextData)

    name = PyblishInstanceData["name"]
    cmds.file(rename=name + ".ma")
    miscRigData = PyblishInstanceData["deadlineData"]["miscRigData"]
    auxFiles = PyblishInstanceData["deadlineData"]["auxiliaryFiles"]

    cacheRigType = miscRigData["cacheRigType"]
    cacheModelType = miscRigData["cacheModelType"]
    animStartFrame = miscRigData["animStartFrame"]
    simPreRoll = miscRigData["simPreRoll"]
    positionPreRoll = miscRigData["positionPreRoll"]
    posePreRoll = miscRigData["posePreRoll"]
    frameRange = miscRigData["frameRange"]
    cacheRigFilePath = miscRigData["cacheRigFilePath"]
    cacheModelFilePath = miscRigData["cacheModelFilePath"]
    rigPuppetFilePath = auxFiles[0]
    curvesFilePath = auxFiles[1]

    cmds.file(rigPuppetFilePath, i=True, namespace="rigPuppet")
    cmds.select("rigPuppet:ROOT", r=1)

    controls_set = "rigPuppet:controls_set"
    out_set = "rigPuppet:out_set"

    cmds.select(controls_set)
    options = ";".join(
        [
            "",
            "",
            "targetTime=1",
            "option=insert",
            "match=string",
            "selected=selectedOnly",
            "search=" + name + "_",
            "replace=rigPuppet",
            "prefix=",
            "suffix=",
            "mapFile=",
        ]
    )

    cmds.select(
        controls_set,
        replace=True,
        # Support controllers being embedded in
        # additional selection sets.
        noExpand=False,
    )

    cmds.file(
        curvesFilePath,
        i=True,
        type="atomImport",
        renameAll=True,
        namespace="rigPuppet",
        options=options,
        returnNewNodes=True,
    )

    scenefile = cmds.file(sceneName=True, query=True)

    nodes = cmds.sets(out_set, query=True)

    # creates preRoll keys

    posePreRollEndFrame = animStartFrame - 1
    posePreRollStartFrame = posePreRollEndFrame - posePreRoll
    positionPreRollEndFrame = posePreRollStartFrame
    positionPreRollStartFrame = positionPreRollEndFrame - positionPreRoll
    simPreRollEndFrame = positionPreRollStartFrame
    simPreRollStartFrame = simPreRollEndFrame - simPreRoll
    lastFrame = frameRange[1]

    makeAnimPreRoll(
        "rigPuppet",
        animStartFrame,
        posePreRoll,
        positionPreRoll,
        simPreRoll,
        frameRange,
    )

    # brings cache model if applicable

    if cacheModelType != 1:
        cmds.file(
            cacheModelFilePath, i=True, mergeNamespacesOnClash=True, namespace="model"
        )

    # brings and connects cache rig

    if cacheRigType != 0:
        cmds.file(
            cacheRigFilePath, i=True, mergeNamespacesOnClash=True, namespace="rigBound"
        )

        makeSimPreRoll(simPreRollStartFrame, simPreRollEndFrame)

        obj = cmds.sets("rigPuppet:controls_set", q=1)[0]
        instanceTopNode = getHierarchyRoot(obj)[1:]

        connectRigs("rigPuppet:ROOT", "rigBound:ROOT")

        if cacheModelType == 0:
            nodes = cmds.sets("model:out_set", query=True)
            for n in nodes:
                cmds.blendShape(
                    n.replace("model:", "rigBound:"), n, w=[0, 1], o="world"
                )
        if cacheModelType == 1:
            nodes = cmds.sets("rigBound:out_set", query=True)

        # bakes joints
        allSolverTransforms = cmds.ls("*:*", type="zSolverTransform")
        allSolverTransforms2 = []
        constraintList = []
        for solverTransform in allSolverTransforms:
            if cmds.getAttr(solverTransform + ".enable") == 1:
                cmds.setAttr(solverTransform + ".enable", 0)
                cmds.setAttr(solverTransform + ".startFrame", simPreRollStartFrame)
                allSolverTransforms2.append(solverTransform)

                # bakes to root jnt for positionPreRoll
                rootJnt = cmds.listRelatives("rigBound:skeleton", c=1)[0]

                const = cmds.pointConstraint(
                    rootJnt,
                    solverTransform,
                    n=solverTransform + "_tempConstraint",
                    mo=1,
                )
                constraintList.append(const[0])

                # sets integrator quasiStatic on, substeps to 1
                solver = cmds.listRelatives(solverTransform, c=1)[0]

                integrator = cmds.getAttr(solver + ".integrator")

                cmds.setKeyframe(
                    solver, attribute="integrator", v=3, t=simPreRollStartFrame
                )

                cmds.setKeyframe(
                    solver, attribute="integrator", v=3, t=posePreRollEndFrame - 1
                )

                cmds.setKeyframe(
                    solver, attribute="integrator", v=integrator, t=posePreRollEndFrame
                )

                cmds.setKeyframe(
                    solver, attribute="substeps", t=positionPreRollEndFrame
                )
                cmds.setKeyframe(
                    solver, attribute="substeps", v=1, t=positionPreRollStartFrame
                )
                cmds.setKeyframe(
                    solver, attribute="substeps", v=1, t=positionPreRollEndFrame - 1
                )

        cmds.bakeResults(
            allSolverTransforms2,
            simulation=1,
            t=(simPreRollStartFrame, posePreRollEndFrame),
            sampleBy=1,
            oversamplingRate=1,
            disableImplicitControl=1,
            preserveOutsideKeys=1,
            sparseAnimCurveBake=0,
            removeBakedAttributeFromLayer=0,
            removeBakedAnimFromLayer=0,
            bakeOnOverrideLayer=0,
            minimizeRotation=0,
            controlPoints=0,
            shape=1,
        )

        cmds.delete(constraintList)

        allJoints = cmds.ls("rigBound:*_jnt")

        cmds.bakeResults(
            allJoints,
            simulation=1,
            t=(simPreRollStartFrame, int(lastFrame)),
            sampleBy=1,
            oversamplingRate=1,
            disableImplicitControl=1,
            preserveOutsideKeys=1,
            sparseAnimCurveBake=0,
            removeBakedAttributeFromLayer=0,
            removeBakedAnimFromLayer=0,
            bakeOnOverrideLayer=0,
            minimizeRotation=0,
            controlPoints=0,
            shape=1,
        )

        for solverTransform in allSolverTransforms2:
            cmds.setAttr(solverTransform + ".enable", 1)

    roots = ""
    for n in nodes:
        cmds.select(n, r=1)
        l = cmds.ls(sl=1, l=1)[0]
        roots = roots + "-root " + l + " "

    abcExportFilePath = PyblishInstanceData["abcExportFilePath"].replace("//", "/")
    abcExportPublishPath = PyblishInstanceData["output"][2]

    cmds.file(f=True, type="mayaAscii", save=True)

    command = (
        "-frameRange "
        + str(simPreRollStartFrame)
        + " "
        + str(lastFrame)
        + " -verbose -userAttrPrefix mw -writeColorSets -uvWrite -worldSpace -writeVisibility "
        + roots
        + " -file "
        + abcExportFilePath
    )

    os.remove(abcExportFilePath)
    cmds.AbcExport(j=command)

    shutil.copyfile(abcExportFilePath, abcExportPublishPath)

    cmds.currentTime(animStartFrame)

    cmds.file(f=True, type="mayaAscii", save=True)


def disconnectRigs(*args):
    connectRigs(disconnect=True)


def connectRigs(source=None, dest=None):
    # connectID reference
    # 0[1constraint] 1[1pac,  2orc, 3poc, 4scc] 2[mo] 3[s(t)x] 4[s(t)y] 5[s(t)z] 6[srx] 7[sry] 8[srz]
    # 0[2directConnect] 1[v] 2[tx] 3[ty] 4[tz] 5[rx] 6[ry] 7[rz] 8[sx] 9[sy] 10[sz]
    # 0[3blendShape] 1[foc]
    # 0[4userDefined]

    if source == None or dest == None:
        sel = cmds.ls(sl=1)
        if len(sel) != 2:
            cmds.warning("Wrong number of selected items")
            return
        else:
            source = sel[0]
            dest = sel[1]

    if ":" in source:
        sourceNS = source.split(":")[0]
    else:
        sourceNS = ""

    if ":" in dest:
        destNS = dest.split(":")[0]
    else:
        destNS = ""

    objDict = {}
    objList = cmds.ls(destNS + ":*", type=["joint", "transform"])
    for obj in objList:
        if cmds.objExists(obj + ".connectObj"):
            connectObj = sourceNS + ":" + cmds.getAttr(obj + ".connectObj")
            connectID = cmds.getAttr(obj + ".connectID")
            objDict[obj] = {}
            objDict[obj]["connectObj"] = connectObj
            objDict[obj]["connectID"] = connectID

    for obj in objDict:
        connectObj = objDict[obj]["connectObj"]
        connectID = objDict[obj]["connectID"]

        tagSplit = connectID.split("-")

        for tag in tagSplit:
            if tag[0] == "1":
                # constraint
                if tag[1] == "1":
                    # parentConstraint
                    if tag[2] == "0":
                        mo = False
                    elif tag[2] == "1":
                        mo = True

                    sr = []
                    st = []

                    if tag[3] == 1:
                        sr.append("x")
                    if tag[4] == 1:
                        sr.append("y")
                    if tag[5] == 1:
                        sr.append("z")

                    if tag[6] == 1:
                        st.append("x")
                    if tag[7] == 1:
                        st.append("y")
                    if tag[8] == 1:
                        st.append("z")

                    if disconnect == True:
                        cName = renameSuffix(obj, "pac", add="rigConnect")
                        cmds.delete(cName)

                    else:
                        constraint(
                            connectObj,
                            obj,
                            type="parent",
                            mo=mo,
                            st=st,
                            sr=sr,
                            addName="rigConnect",
                        )

                if tag[1] == "2":
                    # orientConstraint
                    if tag[2] == "0":
                        mo = False
                    elif tag[2] == "1":
                        mo = True

                    skip = []

                    if tag[3] == 1:
                        skip.append("x")
                    if tag[4] == 1:
                        skip.append("y")
                    if tag[5] == 1:
                        skip.append("z")

                    if disconnect == True:
                        cName = renameSuffix(obj, "orc", add="rigConnect")
                        cmds.delete(cName)

                    else:
                        constraint(
                            connectObj,
                            obj,
                            type="orient",
                            mo=mo,
                            skip=skip,
                            addName="rigConnect",
                        )

                if tag[1] == "3":
                    # pointConstraint
                    if tag[2] == "0":
                        mo = False
                    elif tag[2] == "1":
                        mo = True

                    skip = []

                    if tag[3] == 1:
                        skip.append("x")
                    if tag[4] == 1:
                        skip.append("y")
                    if tag[5] == 1:
                        skip.append("z")

                    if disconnect == True:
                        cName = renameSuffix(obj, "poc", add="rigConnect")
                        cmds.delete(cName)

                    else:
                        constraint(
                            connectObj,
                            obj,
                            type="point",
                            mo=mo,
                            skip=skip,
                            addName="rigConnect",
                        )

                if tag[1] == "4":
                    # scaleConstraint
                    if tag[2] == "0":
                        mo = False
                    elif tag[2] == "1":
                        mo = True

                    skip = []

                    if tag[3] == 1:
                        skip.append("x")
                    if tag[4] == 1:
                        skip.append("y")
                    if tag[5] == 1:
                        skip.append("z")

                    if disconnect == True:
                        cName = renameSuffix(obj, "scc", add="rigConnect")
                        cmds.delete(cName)

                    else:
                        constraint(
                            connectObj,
                            obj,
                            type="scale",
                            mo=mo,
                            skip=skip,
                            addName="rigConnect",
                        )

            if tag[0] == "2":
                # direct connection
                if tag[1] == "1":
                    # visibility
                    if disconnect == False:
                        cmds.connectAttr(
                            connectObj + ".visibility", obj + ".visibility"
                        )
                    else:
                        cmds.disconnectAttr(
                            connectObj + ".visibility", obj + ".visibility"
                        )
                if tag[2] == "1":
                    # tx
                    if disconnect == False:
                        cmds.connectAttr(connectObj + ".tx", obj + ".tx")
                    else:
                        cmds.disconnectAttr(connectObj + ".tx", obj + ".tx")
                if tag[3] == "1":
                    # ty
                    if disconnect == False:
                        cmds.connectAttr(connectObj + ".ty", obj + ".ty")
                    else:
                        cmds.disconnectAttr(connectObj + ".ty", obj + ".ty")
                if tag[4] == "1":
                    # tz
                    if disconnect == False:
                        cmds.connectAttr(connectObj + ".tz", obj + ".tz")
                    else:
                        cmds.disconnectAttr(connectObj + ".tz", obj + ".tz")
                if tag[5] == "1":
                    # rx
                    if disconnect == False:
                        cmds.connectAttr(connectObj + ".rx", obj + ".rx")
                    else:
                        cmds.disconnectAttr(connectObj + ".rx", obj + ".rx")
                if tag[6] == "1":
                    # ry
                    if disconnect == False:
                        cmds.connectAttr(connectObj + ".ry", obj + ".ry")
                    else:
                        cmds.disconnectAttr(connectObj + ".ry", obj + ".ry")
                if tag[7] == "1":
                    # rz
                    if disconnect == False:
                        cmds.connectAttr(connectObj + ".rz", obj + ".rz")
                    else:
                        cmds.disconnectAttr(connectObj + ".trzx", obj + ".rz")
                if tag[8] == "1":
                    # sx
                    if disconnect == False:
                        cmds.connectAttr(connectObj + ".sx", obj + ".sx")
                    else:
                        cmds.disconnectAttr(connectObj + ".sx", obj + ".sx")
                if tag[9] == "1":
                    # sy
                    if disconnect == False:
                        cmds.connectAttr(connectObj + ".sy", obj + ".sy")
                    else:
                        cmds.disconnectAttr(connectObj + ".sy", obj + ".sy")
                if tag[10] == "1":
                    # sz
                    if disconnect == False:
                        cmds.connectAttr(connectObj + ".sz", obj + ".sz")
                    else:
                        cmds.disconnectAttr(connectObj + ".sz", obj + ".sz")

            if tag[0] == "3":
                # blendShape
                bsn = connectObj + "_bs"
                if disconnect == False:
                    cmds.select(connectObj, r=1)
                    cmds.select(obj, add=1)
                    cmds.blendShape(foc=tag[1], n=bsn)
                else:
                    cmds.delete(bsn)

            if tag[0] == "4":
                # user defined
                for attr in cmds.listAttr(connectObj, ud=1):
                    if cmds.objExists(obj + "." + attr):
                        if disconnect == False:
                            try:
                                connectAttr(connectObj + "." + attr, obj + "." + attr)
                            except:
                                cmds.warning(
                                    "Error connecting "
                                    + connectObj
                                    + "."
                                    + attr
                                    + " to "
                                    + obj
                                    + "."
                                    + attr
                                )
                        else:
                            try:
                                cmds.disconnectAttr(
                                    connectObj + "." + attr, obj + "." + attr
                                )
                            except:
                                cmds.warning(
                                    "Error disconnecting "
                                    + connectObj
                                    + "."
                                    + attr
                                    + " to "
                                    + obj
                                    + "."
                                    + attr
                                )


def makeSimPreRoll(start, end):
    allSolvers = cmds.ls("rigBound:*", type="zSolver")
    allTissues = cmds.ls("rigBound:*", type="zTissue")
    allCloths = cmds.ls("rigBound:*", type="zCloth")
    allNucleus = cmds.ls("rigBound:*", type="nucleus")

    if len(allSolvers) != 0:
        for solver in allSolvers:
            attrList = ["gravityX", "gravityY", "gravityZ"]
            for attr in attrList:
                if cmds.getAttr(solver + "." + attr) != 0:
                    cmds.setKeyframe(solver, attribute=attr, t=end)
                    cmds.setKeyframe(solver, attribute=attr, v=0, t=start)

    if len(allTissues) != 0:
        for tissue in allTissues:
            attrList = [
                "restScaleEnvelope",
                "pressureEnvelope",
                "surfaceTensionEnvelope",
            ]
            for attr in attrList:
                cmds.setKeyframe(tissue, attribute=attr, v=0, t=start)
                cmds.setKeyframe(tissue, attribute=attr, v=1, t=end)

    if len(allCloths) != 0:
        for cloth in allCloths:
            attrList = [
                "restScaleEnvelope",
                "pressureEnvelope",
                "surfaceTensionEnvelope",
            ]
            for attr in attrList:
                cmds.setKeyframe(cloth, attribute=attr, v=0, t=start)
                cmds.setKeyframe(cloth, attribute=attr, v=1, t=end)

    if len(allNucleus) != 0:
        for nucleus in allNucleus:
            cmds.setAttr(nucleus + ".startFrame", start)


def makeAnimPreRoll(
    ns, animStartFrame, posePreRoll, positionPreRoll, simPreRoll, frameRange,
):
    posePreRollEndFrame = animStartFrame - 1
    posePreRollStartFrame = posePreRollEndFrame - posePreRoll
    positionPreRollEndFrame = posePreRollStartFrame
    positionPreRollStartFrame = positionPreRollEndFrame - positionPreRoll
    simPreRollEndFrame = positionPreRollStartFrame
    simPreRollStartFrame = simPreRollEndFrame - simPreRoll

    cmds.playbackOptions(minTime=simPreRollStartFrame, maxTime=frameRange[1])

    locCtls1 = [ns + ":world_ctl" + ns + ":global_C0_ctl", ns + ":local_C0_ctl"]
    locCtls = []
    for l in locCtls1:
        if cmds.objExists(l):
            locCtls.append(l)
    posCtls1 = cmds.sets(ns + ":controls_set", q=1)
    posCtls = [x for x in posCtls1 if x not in locCtls]
    nucleus = cmds.ls(ns + ":*", type="nucleus")
    hairSystems = cmds.ls(ns + ":*", type="hairSystem")

    if len(hairSystems) != 0:
        for h in hairSystems:
            cmds.setAttr(h + ".simulationMethod", 1)

    if len(nucleus) != 0:
        for n in nucleus:
            cmds.setAttr(n + ".startFrame", positionPreRollStartFrame)

    # keys all at posePreRollEndFrame

    cmds.select(posCtls, locCtls, r=1)
    cmds.currentTime(posePreRollEndFrame)
    cmds.setKeyframe()

    # deletes all keys up to posePreRollEndFrame

    cmds.select(posCtls, locCtls, r=1)
    cmds.cutKey(
        t=(int(cmds.findKeyframe(which="first")), posePreRollEndFrame),
        includeUpperBound=False,
        cl=1,
    )

    cmds.currentTime(posePreRollStartFrame)
    for ctl in posCtls:
        cmds.select(ctl, r=1)
        defaultKeyableAttrs(ctl, noRefAttrs=True)
        cmds.setKeyframe()

    cmds.currentTime(positionPreRollStartFrame)
    for ctl in posCtls:
        cmds.select(ctl, r=1)
        defaultKeyableAttrs(ctl, noRefAttrs=True)
        cmds.setKeyframe()

    cmds.currentTime(simPreRollStartFrame)
    for ctl in posCtls:
        cmds.select(ctl, r=1)
        defaultKeyableAttrs(ctl, noRefAttrs=True)
        cmds.setKeyframe()

    cmds.select(locCtls, r=1)
    cmds.currentTime(positionPreRollEndFrame)
    cmds.setKeyframe()
    cmds.currentTime(positionPreRollStartFrame)
    for ctl in locCtls:
        cmds.select(ctl, r=1)
        defaultKeyableAttrs(ctl, noRefAttrs=True)
        cmds.setKeyframe()

    cmds.currentTime(positionPreRollStartFrame)

    if len(hairSystems) != 0:
        for h in hairSystems:
            cmds.setAttr(h + ".simulationMethod", 3)


def defaultKeyableAttrs(obj, noRefAttrs=False):
    for attr in cmds.listAttr(obj, k=1):
        default = cmds.attributeQuery(attr, node=obj, listDefault=True)[0]

        if noRefAttrs == False:
            try:
                cmds.setAttr(obj + "." + attr, default)
            except:
                0
        if noRefAttrs == True and "ref" not in attr.lower():
            try:
                cmds.setAttr(obj + "." + attr, default)
            except:
                0


def getHierarchyRoot(obj):
    # finds the top parent transform node from the given transform

    while True:
        parent = cmds.listRelatives(obj, parent=True, type="transform", f=True)
        if not parent:
            break

        obj = parent[0]

    return obj


def renameSuffix(node, suffix, add="oldSuffix"):
    if add == None:
        add = ""

    if "." in node:
        nodeNoAttr, attr = node.split(".")
        nodeSplit = nodeNoAttr.split("_")
    else:
        nodeSplit = node.split("_")

    if add == "oldSuffix":
        add = upperFirst(nodeSplit[-1])
    else:
        add = upperFirst(add)

    if "." in node:
        add = add + upperFirst(attr)

    toReturn = nodeSplit[0] + add
    i = 0
    for s in nodeSplit:
        if i != 0 and nodeSplit[i] != nodeSplit[-1]:
            toReturn = toReturn + "_" + nodeSplit[i]
        i += 1

    toReturn = toReturn + "_" + suffix
    return toReturn


def constraint(
    source, dest, type="parent", mo=True, st=None, sr=None, skip=None, addName=None
):
    if type == "parent":
        if st == 1:
            st = ["x", "y", "z"]
        if sr == 1:
            sr = ["x", "y", "z"]

        if st == None and sr == None:
            cmds.parentConstraint(
                source, dest, mo=mo, n=renameSuffix(dest, "pac", add=addName)
            )
            return renameSuffix(dest, "pac", add=addName)
        elif st != None and sr == None:
            cmds.parentConstraint(
                source, dest, mo=mo, n=renameSuffix(dest, "pac", add=addName), st=st
            )
        elif st == None and sr != None:
            cmds.parentConstraint(
                source, dest, mo=mo, n=renameSuffix(dest, "pac", add=addName), sr=sr
            )
        elif st != None and sr != None:
            cmds.parentConstraint(
                source,
                dest,
                mo=mo,
                n=renameSuffix(dest, "pac", add=addName),
                sr=sr,
                st=st,
            )

    if type == "orient":
        cmds.orientConstraint(
            source, dest, mo=mo, skip=skip, n=renameSuffix(dest, "orc", add=addName)
        )
        return renameSuffix(dest, "orc", add=addName)

    if type == "point":
        cmds.pointConstraint(
            source, dest, mo=mo, skip=skip, n=renameSuffix(dest, "poc", add=addName)
        )
        return renameSuffix(dest, "poc", add=addName)

    if type == "scale":
        cmds.scaleConstraint(
            source, dest, mo=mo, skip=skip, n=renameSuffix(dest, "scc", add=addName)
        )
        return renameSuffix(dest, "scc", add=addName)


def upperFirst(string):
    if string == "" or string == None:
        return ""
    else:
        return string[0].capitalize() + string[1:]


run()

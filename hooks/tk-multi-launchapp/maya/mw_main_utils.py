import os
import maya.cmds as cmds
import shutil
import maya.mel as mel
import mw_rig_utils
import sys

# import mgear.core as mgear
import getpass
import re

import sgtk

from _Collections import mw_muscleMenu

reload(mw_muscleMenu)


def mirrorName(name):
    if "_C" in name:
        return name
    if "_R" in name:
        return name.replace("_R", "_L")
    if "_L" in name:
        return name.replace("_L", "_R")


def disconnectAll(node, source=True, destination=True):
    connectionPairs = []
    if source:
        conns = cmds.listConnections(
            node, plugs=True, connections=True, destination=False
        )
        if conns:
            connectionPairs.extend(zip(conns[1::2], conns[::2]))

    if destination:
        conns = cmds.listConnections(
            node, plugs=True, connections=True, source=False)
        if conns:
            connectionPairs.extend(zip(conns[::2], conns[1::2]))

    for srcAttr, destAttr in connectionPairs:
        cmds.disconnectAttr(srcAttr, destAttr)


def simPreRoll(start, end):
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


def animPreRoll(
    ns, positionPreRollStartFrame, positionPreRollEndFrame, posePreRollEndFrame
):
    posePreRollStartFrame = positionPreRollEndFrame
    locCtls = [ns + ":global_C0_ctl", ns + ":local_C0_ctl"]
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

    cmds.select(posCtls, r=1)
    cmds.currentTime(posePreRollEndFrame)
    cmds.setKeyframe()
    cmds.currentTime(posePreRollStartFrame)
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


def upperFirst(string):
    if string == "" or string == None:
        return ""
    else:
        return string[0].capitalize() + string[1:]


def convertToList(objs):
    if isinstance(objs, (list)) == False:
        return [objs]
    else:
        return objs


def constraint(
    source, dest, type="parent", mo=True, st=[], sr=[], skip=[], addName=None
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
            source, dest, mo=mo, skip=skip, n=renameSuffix(
                dest, "orc", add=addName)
        )
        return renameSuffix(dest, "orc", add=addName)

    if type == "point":
        cmds.pointConstraint(
            source, dest, mo=mo, skip=skip, n=renameSuffix(
                dest, "poc", add=addName)
        )
        return renameSuffix(dest, "poc", add=addName)

    if type == "scale":
        cmds.scaleConstraint(
            source, dest, mo=mo, skip=skip, n=renameSuffix(
                dest, "scc", add=addName)
        )
        return renameSuffix(dest, "scc", add=addName)


def setName(name, suffix, side="C", idx=None):
    namesList = [name, side, suffix]
    if idx is not None:
        namesList[1] = side + str(idx)
    result = "_".join(namesList)
    return result


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


def connectAttr(sourceAttrs, destAttrs, mode="direct", offset=0, force=True):
    sourceAttrs = convertToList(sourceAttrs)
    destAttrs = convertToList(destAttrs)

    # checkers
    for s in sourceAttrs:
        if not cmds.objExists(s):
            cmds.warning("Source attribute " + s + " does not exist.")
            return

    for d in destAttrs:
        if not cmds.objExists(d):
            cmds.warning("Destination attribute " + d + " does not exist.")
            return

    # connection
    if mode == "direct":
        for s in sourceAttrs:

            if offset == 0:
                for d in destAttrs:
                    cmds.connectAttr(s, d, f=force)

            else:
                pma = cmds.createNode("plusMinusAverage",
                                      n=renameSuffix(s, "pma"))
                cmds.connectAttr(s, pma + ".input1D[0]")
                cmds.setAttr(pma + ".input1D[1]", offset)

                for d in destAttrs:
                    cmds.connectAttr(pma + ".output1D", d, f=force)

    if mode == "reverse":
        for s in sourceAttrs:
            rev = cmds.createNode("reverse", n=renameSuffix(s, "rev"))
            cmds.connectAttr(s, rev + ".inputX")

            if offset == 0:
                for d in destAttrs:
                    cmds.connectAttr(rev + ".outputX", d, f=force)

            else:
                pma = cmds.createNode("plusMinusAverage",
                                      n=renameSuffix(s, "pma"))
                cmds.connectAttr(rev + ".outputX", pma + ".input1D[0]")
                cmds.setAttr(pma + ".input1D[1]", offset)

                for d in destAttrs:
                    cmds.connectAttr(pma + ".output1D", d, f=force)

    if mode == "negative":
        for s in sourceAttrs:
            mdv = cmds.createNode("multiplyDivide", n=renameSuffix(s, "mdv"))
            cmds.setAttr(mdv + ".input2X", -1)
            cmds.connectAttr(s, mdv + ".input1X")

            if offset == 0:
                for d in destAttrs:
                    cmds.connectAttr(mdv + ".outputX", d, f=force)

            else:
                pma = cmds.createNode("plusMinusAverage",
                                      n=renameSuffix(s, "pma"))
                cmds.connectAttr(mdv + ".outputX", pma + ".input1D[0]")
                cmds.setAttr(pma + ".input1D[1]", offset)

                for d in destAttrs:
                    cmds.connectAttr(pma + ".output1D", d, f=force)


def transformMirror(node):
    # connects transform attributes to opposite transform
    nodeSplit = node.split("_")
    name = nodeSplit[0]
    suffix = nodeSplit[2]
    if "_L_" in node:
        opNode = node.replace("L", "R")
        side = "R"
    elif "_R_" in node:
        opNode = node.replace("R", "L")
        side = "L"

    mdv = cmds.createNode(
        "multiplyDivide", n=name + upperFirst(suffix) + "Mirror_" + side + "_mdv"
    )

    cmds.setAttr(mdv + ".input2X", -1)
    cmds.setAttr(mdv + ".input2Y", -1)
    cmds.setAttr(mdv + ".input2Z", -1)
    connectAttr(opNode + ".tx", mdv + ".input1X")
    connectAttr(mdv + ".outputX", node + ".tx")
    connectAttr(opNode + ".ty", node + ".ty")
    connectAttr(opNode + ".tz", node + ".tz")

    try:
        connectAttr(opNode + ".rx", node + ".rx")
        connectAttr(opNode + ".ry", mdv + ".input1Y")
        connectAttr(opNode + ".rz", mdv + ".input1Z")
        connectAttr(mdv + ".outputY", node + ".ry")
        connectAttr(mdv + ".outputZ", node + ".rz")
    except:
        0

    try:
        connectAttr(opNode + ".sx", node + ".sx")
        connectAttr(opNode + ".sy", node + ".sy")
        connectAttr(opNode + ".sz", node + ".sz")
    except:
        0

    if cmds.nodeType(cmds.listRelatives(node, c=1, s=1)) == "locator":
        connectAttr(opNode + ".localScaleX", node + ".localScaleX")
        connectAttr(opNode + ".localScaleY", node + ".localScaleY")
        connectAttr(opNode + ".localScaleZ", node + ".localScaleZ")


def lockHideAttr(
    nodeList,
    attrs=["tx", "ty", "tz", "rx", "ry", "rz", "sx", "sy", "sz", "v"],
    hide=True,
):
    if hide == True:
        cb = False
    else:
        cb = True

    nodeList = convertToList(nodeList)

    for n in nodeList:
        for a in attrs:
            cmds.setAttr(n + "." + a, lock=True, k=False, cb=cb)


def addZtr(obj, suffix="ztr"):
    objParent = cmds.listRelatives(obj, p=1, f=1)

    tx = cmds.getAttr(obj + ".tx")
    ty = cmds.getAttr(obj + ".ty")
    tz = cmds.getAttr(obj + ".tz")

    rx = cmds.getAttr(obj + ".rx")
    ry = cmds.getAttr(obj + ".ry")
    rz = cmds.getAttr(obj + ".rz")

    sx = cmds.getAttr(obj + ".sx")
    sy = cmds.getAttr(obj + ".sy")
    sz = cmds.getAttr(obj + ".sz")

    objSplit = obj.split("_")
    ztr = cmds.createNode("transform", n=renameSuffix(obj, suffix=suffix))
    cmds.parent(obj, ztr)

    cmds.setAttr(obj + ".tx", 0)
    cmds.setAttr(obj + ".ty", 0)
    cmds.setAttr(obj + ".tz", 0)
    cmds.setAttr(obj + ".rx", 0)
    cmds.setAttr(obj + ".ry", 0)
    cmds.setAttr(obj + ".rz", 0)
    cmds.setAttr(obj + ".sx", 1)
    cmds.setAttr(obj + ".sy", 1)
    cmds.setAttr(obj + ".sz", 1)

    if objParent != None:
        cmds.parent(ztr, objParent)

    cmds.setAttr(ztr + ".tx", tx)
    cmds.setAttr(ztr + ".ty", ty)
    cmds.setAttr(ztr + ".tz", tz)
    cmds.setAttr(ztr + ".rx", rx)
    cmds.setAttr(ztr + ".ry", ry)
    cmds.setAttr(ztr + ".rz", rz)
    cmds.setAttr(ztr + ".sx", sx)
    cmds.setAttr(ztr + ".sy", sy)
    cmds.setAttr(ztr + ".sz", sz)

    cmds.select(ztr)

    return ztr


def mayaOpen(fileName):
    confirm = cmds.confirmDialog(
        title="File load",
        message="Are you sure? Unsaved changes will be lost",
        button=["Yes", "No"],
        defaultButton="No",
        cancelButton="No",
        dismissString="No",
    )

    if confirm == "Yes":
        cmds.file(new=True, force=True)
        cmds.file(fileName, open=True)


def mayaSave(fileName):
    cmds.file(rename=fileName)
    cmds.file(save=True, type="mayaAscii")


def disconnectRigs(*args):
    connectRigs(disconnect=True)


def connectRigs(source=None, dest=None, disconnect=False):
    # connectID reference
    # 0[1constraint] 1[1:pac,  2:orc, 3:poc, 4:scc] 2[mo] 3[s(t)x] 4[s(t)y] 5[s(t)z] 6[srx] 7[sry] 8[srz]
    # 0[2directConnect] 1[v] 2[tx] 3[ty] 4[tz] 5[rx] 6[ry] 7[rz] 8[sx] 9[sy] 10[sz]
    # 0[3blendShape] 1[deformationOrder (0:Automatic, 1:Pre-Deformation, 2:Post-Deformation, 3:After, 4:Split, 5:Parallel)] 2[Origin (0:Local, 1:World)]
    # 0[4inMesh]
    # 0[5userDefined]

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

    else:
        if ":" in source:
            sourceNS = source.split(":")[0]
        else:
            sourceNS = source

        if ":" in dest:
            destNS = dest.split(":")[0]
        else:
            destNS = dest

    objDict = {}
    objList = cmds.ls(destNS + ":*", type=["joint", "transform", "shape"])

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
                        connectAttr(connectObj + ".visibility",
                                    obj + ".visibility")
                    else:
                        cmds.disconnectAttr(
                            connectObj + ".visibility", obj + ".visibility"
                        )
                if tag[2] == "1":
                    # tx
                    if disconnect == False:
                        connectAttr(connectObj + ".tx", obj + ".tx")
                    else:
                        cmds.disconnectAttr(connectObj + ".tx", obj + ".tx")
                if tag[3] == "1":
                    # ty
                    if disconnect == False:
                        connectAttr(connectObj + ".ty", obj + ".ty")
                    else:
                        cmds.disconnectAttr(connectObj + ".ty", obj + ".ty")
                if tag[4] == "1":
                    # tz
                    if disconnect == False:
                        connectAttr(connectObj + ".tz", obj + ".tz")
                    else:
                        cmds.disconnectAttr(connectObj + ".tz", obj + ".tz")
                if tag[5] == "1":
                    # rx
                    if disconnect == False:
                        connectAttr(connectObj + ".rx", obj + ".rx")
                    else:
                        cmds.disconnectAttr(connectObj + ".rx", obj + ".rx")
                if tag[6] == "1":
                    # ry
                    if disconnect == False:
                        connectAttr(connectObj + ".ry", obj + ".ry")
                    else:
                        cmds.disconnectAttr(connectObj + ".ry", obj + ".ry")
                if tag[7] == "1":
                    # rz
                    if disconnect == False:
                        connectAttr(connectObj + ".rz", obj + ".rz")
                    else:
                        cmds.disconnectAttr(connectObj + ".trzx", obj + ".rz")
                if tag[8] == "1":
                    # sx
                    if disconnect == False:
                        connectAttr(connectObj + ".sx", obj + ".sx")
                    else:
                        cmds.disconnectAttr(connectObj + ".sx", obj + ".sx")
                if tag[9] == "1":
                    # sy
                    if disconnect == False:
                        connectAttr(connectObj + ".sy", obj + ".sy")
                    else:
                        cmds.disconnectAttr(connectObj + ".sy", obj + ".sy")
                if tag[10] == "1":
                    # sz
                    if disconnect == False:
                        connectAttr(connectObj + ".sz", obj + ".sz")
                    else:
                        cmds.disconnectAttr(connectObj + ".sz", obj + ".sz")

            if tag[0] == "3":
                # blendShape
                bsn = connectObj + "_bs"
                print "Connecting", bsn, "..."

                if disconnect == False:
                    try:
                        if tag[2] == 0:
                            origin = "local"
                        elif tag[2] == 1:
                            origin = "world"
                    except:
                        origin = "local"

                    cmds.select(connectObj, r=1)
                    cmds.select(obj, add=1)

                    try:
                        if tag[1] == "0":
                            bsName = cmds.blendShape(automatic=1, n=bsn, w=[
                                0, 1], origin=origin)

                        elif tag[1] == "1":
                            bsName = cmds.blendShape(frontOfChain=1, n=bsn,
                                                     w=[0, 1], origin=origin)

                        elif tag[1] == "2":
                            bsName = cmds.blendShape(before=1, n=bsn, w=[
                                0, 1], origin=origin)

                        elif tag[1] == "3":
                            bsName = cmds.blendShape(after=1, n=bsn, w=[
                                0, 1], origin=origin)

                        elif tag[1] == "4":
                            bsName = cmds.blendShape(split=1, n=bsn, w=[
                                0, 1], origin=origin)

                        elif tag[1] == "5":
                            bsName = cmds.blendShape(parallel=1, n=bsn, w=[
                                0, 1], origin=origin)
                    except:
                        bsName = cmds.blendShape(automatic=1, n=bsn, w=[
                            0, 1], origin=origin)

                    objDict[obj]["bsName"] = bsName[0]
                    print "Connected", bsName[0]

                else:
                    try:
                        cmds.delete(bsn)
                        print "Disconnected", bsn
                    except:
                        print "Could not disconnect", bsn

            if tag[0] == "4":
                # inMesh
                if disconnect == False:
                    cmds.connectAttr(connectObj + ".outMesh",
                                     obj + ".inMesh", f=1)
                else:
                    cmds.disconnectAttr(
                        connectObj + ".outMesh", obj + ".inMesh")

            if tag[0] == "5":
                # user defined
                for attr in cmds.listAttr(connectObj, ud=1):
                    if cmds.objExists(obj + "." + attr):
                        if disconnect == False:
                            try:
                                connectAttr(connectObj + "." +
                                            attr, obj + "." + attr)
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

    return objDict


def createCam(type):
    camNum = str(len(cmds.ls("mwCam*", cameras=True)) + 1)

    if type == 1:
        camFile = "mwCam_hand.ma"
    elif type == 2:
        camFile = "mwCam_dolly.ma"
    elif type == 3:
        camFile = "mwCam_circle.ma"

    cmds.file(
        "C:/Many-Worlds/pipeline/shotgun/pipeline_configuration/hooks/tk-multi-launchapp/maya/cams/"
        + camFile,
        i=1,
        type="mayaAscii",
    )

    cmds.rename("mwCam_grp", "mwCam" + camNum + "_grp")

    cmds.rename("mwCam", "mwCam" + camNum)


def getProject(returnId=False):
    # returns current project

    current_engine = sgtk.platform.current_engine()
    context = current_engine.context

    if returnId == False:
        return context.project["name"]
    else:
        return context.project["id"]


def getEntity(returnId=False, returnType=False):
    # returns current entity (asset or shot)

    current_engine = sgtk.platform.current_engine()
    context = current_engine.context

    if returnId == False and returnType == False:
        try:
            return context.entity["name"]
        except:
            return None
    elif returnId == True and returnType == False:
        try:
            return context.entity["id"]
        except:
            return None
    elif returnType == True:
        try:
            return context.entity["type"]
        except:
            return None


def getAsset(returnId=False):
    if getEntity(returnType=True) == "Asset":
        return getEntity(returnId=returnId)
    else:
        cmds.warning("Current context's entity type is Shot")
        return None


def getShot(returnId=False):
    if getEntity(returnType=True) == "Shot":
        return getEntity(returnId=returnId)
    else:
        cmds.warning("Current context's entity type is Asset")
        return None


def getSequence(returnId=False):
    if getEntity(returnType=True) == "Shot":
        import shotgun_api3
        sg = shotgun_api3.Shotgun(
            "https://many-worlds.shotgunstudio.com",
            script_name="mw_main_script",
            api_key="wmNnyhwfdpuecdstofw0^gjkk",
        )

        if returnId == False:
            field = "code"
        else:
            field = "id"
        shot_id = getEntity(returnId=True)
        project_id = getProject(returnId=True)
        filters = [["project", "is", {"type": "Project", "id": project_id}],
                   {"filter_operator": "any", "filters": [
                       ["shots", "is", {"type": "Shot", "id": shot_id}]]}]

        fields = [field]

        find = sg.find_one("Sequence", filters, fields)

        return find["code"]
    else:
        cmds.warning("Current context's entity type is Asset")
        return None


def getStep(returnId=False):
    # returns current step

    current_engine = sgtk.platform.current_engine()
    context = current_engine.context

    if returnId == False:
        return context.step["name"]
    else:
        return context.step["id"]


def getTask(returnId=False):
    # returns current task

    current_engine = sgtk.platform.current_engine()
    context = current_engine.context

    if returnId == False:
        return context.task["name"]
    else:
        return context.task["id"]


def getUser(returnId=False):
    # returns current user
    current_engine = sgtk.platform.current_engine()
    context = current_engine.context

    if returnId == False:
        return context.user["login"]
    else:
        return context.user["id"]


def getFrameRange():
    shot = api.Session["AVALON_ASSET"]
    shot = io.find_one({"name": shot, "type": "asset"})

    try:
        edit_in = shot["data"]["edit_in"]
        edit_out = shot["data"]["edit_out"]
        return [edit_in, edit_out]
    except KeyError:
        cmds.warning("No edit information found for %s" % shot["name"])
        return None


def convertToVersion(ver, returnInt=False):
    # converts input into properly formatted version number string
    # returnInt returns an integer value instead of string
    try:
        ver = ver.replace("v", "")
    except:
        0

    if returnInt == True:
        version = int(ver)
    else:
        version = "v%03d" % int(ver)

    return version


def getPath(to="work"):
    # returns paths
    current_engine = sgtk.platform.current_engine()
    context = current_engine.context

    tk = current_engine.sgtk

    task = getTask(returnId=False)
    taskId = getTask(returnId=True)

    if to == "work":
        return tk.paths_from_entity("Task", taskId)

    if to == "skin":
        return os.path.join(
            tk.paths_from_entity("Task", taskId)[1].replace(task, "RigPuppet"),
            "maya\\data\\skin",
        )

    if to == "nurbsCorrectives":
        return os.path.join(
            tk.paths_from_entity("Task", taskId)[1].replace(task, "RigPuppet"),
            "maya\\data\\nurbsCorrectives",
        )

    if to == "polyCorrectives":
        return os.path.join(
            tk.paths_from_entity("Task", taskId)[1].replace(task, "RigPuppet"),
            "maya\\data\\polyCorrectives",
        )

    if to == "deformers":
        return os.path.join(
            tk.paths_from_entity("Task", taskId)[1].replace(task, "RigPuppet"),
            "maya\\data\\deformers",
        )


def rigPuppetWorkSetup(project, asset):
    # creates folders
    assetPreBuildPath = os.path.join(
        "C:/Many-Worlds/rigging/mw_rig_dev/mGear_steps/projects/", project, asset, "pre"
    )
    assetPostBuildPath = os.path.join(
        "C:/Many-Worlds/rigging/mw_rig_dev/mGear_steps/projects/",
        project,
        asset,
        "post",
    )

    if not (os.path.isdir(assetPreBuildPath)):
        os.makedirs(assetPreBuildPath)

        # copies preBuild scripts from template folder
        path = "C:/Many-Worlds/rigging/mw_rig_dev/mGear_steps/template_pre/"
        scripts = [f for f in os.listdir(
            path) if os.path.isfile(os.path.join(path, f))]

        for script in scripts:
            src = path + script
            dst = assetPreBuildPath + "/" + script.replace("template", asset)
            shutil.copy2(src, dst)

    if not (os.path.isdir(assetPostBuildPath)):
        os.makedirs(assetPostBuildPath)

        # copies postBuild scripts from template folder
        path = "C:/Many-Worlds/rigging/mw_rig_dev/mGear_steps/template_post/"
        scripts = [f for f in os.listdir(
            path) if os.path.isfile(os.path.join(path, f))]

        for script in scripts:
            src = path + script
            dst = assetPostBuildPath + "/" + script.replace("template", asset)
            shutil.copy2(src, dst)

    # sets mGear steps folder
    customStepPath = (
        "C:/Many-Worlds/rigging/mw_rig_dev/mGear_steps/projects/"
        + project
        + "/"
        + asset
        + "/"
    )
    command = 'putenv "MGEAR_SHIFTER_CUSTOMSTEP_PATH" "' + customStepPath + '"'
    mel.eval(command)


def userSetup():
    # runs on Maya startup
    import maya.cmds as cmds

    project = getProject()
    asset = getEntity()
    task = getTask()


def mwSplashScreen():
    print ""
    print ""
    print ""
    print "             __  __                 __      __       _    _    "
    print "            |  \/  |__ _ _ _ _  _ __\ \    / /__ _ _| |__| |___"
    print "            | |\/| / _` | ' \ || |___\ \/\/ / _ \ '_| / _` (_-<"
    print "            |_|  |_\__,_|_||_\_, |    \_/\_/\___/_| |_\__,_/__/"
    print "                             |__/                              "
    print ""
    print ""
    print ""


def installMenu():
    print "Installing Many-Worlds menu..."
    sys.path.append("C:/Many-Worlds/rigging/mw_rig_dev/mw_facial")

    try:
        import mw_cheek_rigger
        import mw_eyebrows_rigger
        import mw_eyelids_rigger
        import mw_eyelines_rigger
        import mw_nose_rigger
        import mw_mouth_rigger
    except: 0

    from mgear.crank import crank_tool
    from mgear.animbits import softTweaks

    import mw_cache_app

    from functools import partial
    from mgear import anim_picker

    maya_main_window = mel.eval("$tmpVar = $gMainWindow")

    # delete previously created Many-Worlds menu, if exists
    menus = cmds.window(maya_main_window, query=True, menuArray=True)
    for menu in menus:
        label = cmds.menu(menu, query=True, label=True)
        if label == "Many-Worlds":
            cmds.deleteUI(menu)
            break

    # --- create Many-Worlds menu
    mw_menu = cmds.menu(parent=maya_main_window,
                        label="Many-Worlds", tearOff=True)

    ###########################
    # --- create rigging menu
    ###########################

    rigging_menu = cmds.menuItem(parent=mw_menu, label="Rigging", subMenu=True)
    cmds.menuItem(
        parent=rigging_menu, label="Add connect tags", command="mw_rig_utils.addConnectTags()"
    )
    cmds.menuItem(
        parent=rigging_menu, label="Build rigBound", command=mw_rig_utils.buildRigBound
    )
    cmds.menuItem(parent=rigging_menu,
                  label="Connect rigs", command=connectRigs)
    cmds.menuItem(parent=rigging_menu, label="Disconnect rigs",
                  command=disconnectRigs)
    cmds.menuItem(parent=rigging_menu, divider=True)
    cmds.menuItem(parent=rigging_menu, label="Export skins",
                  command=mw_rig_utils.exportSkins)
    cmds.menuItem(
        parent=rigging_menu,
        label="Export poly correctives",
        command=mw_rig_utils.exportPolyCorrectives,
    )
    cmds.menuItem(
        parent=rigging_menu,
        label="Export nurbs correctives",
        command=mw_rig_utils.exportPolyCorrectives,
    )
    cmds.menuItem(parent=rigging_menu, divider=True)

    # --- create rigging facial submenu
    try:
        facial_menu = cmds.menuItem(
            parent=rigging_menu, label="MW Facial Riggers", subMenu=True
        )
        cmds.menuItem(
            parent=facial_menu,
            label="MW Eyebrows Rigger",
            command=mw_eyebrows_rigger.showMwEyebrowsUI,
        )
        cmds.menuItem(
            parent=facial_menu,
            label="MW Eyelids Rigger",
            command=mw_eyelids_rigger.showMwEyelidsUI,
        )
        cmds.menuItem(
            parent=facial_menu,
            label="MW Eyelines Rigger",
            command=mw_eyelines_rigger.showMwEyelinesUI,
        )
        cmds.menuItem(
            parent=facial_menu, label="MW Nose Rigger", command=mw_nose_rigger.showMwNoseUI
        )
        cmds.menuItem(
            parent=facial_menu,
            label="MW Mouth Rigger",
            command=mw_mouth_rigger.showMwMouthUI,
        )
        cmds.menuItem(
            parent=facial_menu,
            label="MW Cheek Rigger",
            command=mw_cheek_rigger.showMwCheekUI,
        )

        cmds.menuItem(parent=rigging_menu, divider=True)
    except: 0

    # --- create nurbs submenu
    nurbs_menu = cmds.menuItem(
        parent=rigging_menu, label="Nurbs", subMenu=True)

    cmds.menuItem(
        parent=nurbs_menu, label="Flip", command=mw_rig_utils.flipNurbs,
    )

    cmds.menuItem(
        parent=nurbs_menu, label="Transfer shape", command=mw_rig_utils.transferNurbsShape,
    )

    cmds.menuItem(
        parent=nurbs_menu,
        label="Select U Vertices",
        command=mw_rig_utils.selectNurbsUVertices,
    )

    cmds.menuItem(
        parent=nurbs_menu,
        label="Select V Vertices",
        command=mw_rig_utils.selectNurbsVVertices,
    )

    cmds.menuItem(parent=rigging_menu, divider=True)

    cmds.menuItem(parent=rigging_menu, label="Ziva mirror",
                  command=mw_rig_utils.zivaMirror)

    ###########################
    # --- Create muscle menu
    ###########################
    mw_muscleMenu.MWMuscleToolsMenu(mw_menu)

    ###########################
    # --- Create layout menu
    ###########################

    layout_menu = cmds.menuItem(parent=mw_menu, label="Layout", subMenu=True)
    cmds.menuItem(
        parent=layout_menu,
        label="Create Cam - Handheld",
        command="mw_main_utils.createCam(type=1)",
    )
    cmds.menuItem(
        parent=layout_menu,
        label="Create Cam - Dolly",
        command="mw_main_utils.createCam(type=2)",
    )
    cmds.menuItem(
        parent=layout_menu,
        label="Create Cam - Circle Dolly",
        command="mw_main_utils.createCam(type=3)",
    )

    ###########################
    # --- create animation menu
    ###########################

    animation_menu = cmds.menuItem(
        parent=mw_menu, label="Animation", subMenu=True)

    import mgear.core.dagmenu as mgm

    state = mgm.get_option_var_state()

    cmds.menuItem(
        "mgear_dagmenu_menuitem",
        parent=animation_menu,
        label="mGear Viewport Menu",
        command=mgm.run,
        checkBox=state,
    )

    mgm.run(state)

    cmds.menuItem(divider=True)

    cmds.menuItem(
        parent=animation_menu,
        label="Anim Picker",
        command=partial(anim_picker.load, False, False),
    )
    cmds.menuItem(
        parent=animation_menu,
        label="Anim Picker Editor",
        command=partial(anim_picker.load, True, False),
    )

    cmds.menuItem(parent=animation_menu, divider=True)

    cmds.menuItem(
        parent=animation_menu,
        label="Soft tweaks",
        command=partial(softTweaks.openSoftTweakManager, False, False),
    )
    cmds.menuItem(
        parent=animation_menu,
        label="Crank: Shot sculpt",
        command=partial(crank_tool.openUI, False, False),
    )

    ###########################
    # --- create characterFX menu
    ###########################

    characterFX_menu = cmds.menuItem(
        parent=mw_menu, label="CharacterFX", subMenu=True)
    cmds.menuItem(
        parent=characterFX_menu,
        label="Soft tweaks",
        command=partial(softTweaks.openSoftTweakManager, False, False),
    )
    cmds.menuItem(
        parent=characterFX_menu,
        label="Crank: Shot sculpt",
        command=partial(crank_tool.openUI, False, False),
    )
    cmds.menuItem(parent=characterFX_menu, divider=True)
    cmds.menuItem(
        parent=characterFX_menu,
        label="mw_cache_app",
        command="mw_cache_app.run()",
    )

    cmds.menuItem(parent=mw_menu, divider=True)
    cmds.menuItem(
        parent=mw_menu, label="Reload MW scripts", command="mw_main_utils.reloadScripts()"
    )
    cmds.menuItem(
        parent=mw_menu, label="Reload MW menu", command="mw_main_utils.installMenu()"
    )

    print "Menu installed"


def reloadScripts():
    import mw_main_utils
    import mw_ldv_utils
    import mw_rig_utils
    import mw_cache_utils
    import mw_cheek_rigger
    import mw_eyebrows_rigger
    import mw_eyelids_rigger
    import mw_eyelines_rigger
    import mw_nose_rigger
    import mw_mouth_rigger

    print "Reloading mw_main_utils..."
    reload(mw_main_utils)
    print "Ok"

    print "Reloading mw_ldv_utils..."
    reload(mw_ldv_utils)
    print "Ok"

    print "Reloading mw_rig_utils..."
    reload(mw_rig_utils)
    print "Ok"

    print "Reloading mw_cache_utils..."
    reload(mw_cache_utils)
    print "Ok"

    print "Reloading mw_cheek_rigger..."
    reload(mw_cheek_rigger)
    print "Ok"

    print "Reloading mw_eyebrows_rigger..."
    reload(mw_eyebrows_rigger)
    print "Ok"

    print "Reloading mw_eyelids_rigger..."
    reload(mw_eyelids_rigger)
    print "Ok"

    print "Reloading mw_eyelines_rigger..."
    reload(mw_eyelines_rigger)
    print "Ok"

    print "Reloading mw_nose_rigger..."
    reload(mw_nose_rigger)
    print "Ok"

    print "Reloading mw_mouth_rigger..."
    reload(mw_mouth_rigger)
    print "Ok"


def currentPath():
    dir_path = os.path.dirname(os.path.realpath(__file__))
    print dir_path


def helloWorlds():
    print("Hello, worlds! :)")


def bringPublish(
    id=None,
    entity_type="Asset",
    task="model",
    returnPath=False,
    template="maya_asset_publish",
    entity_name="current",
    published_file_type="Maya Scene",
    namespace=None,
):
    import shotgun_api3

    sg = shotgun_api3.Shotgun(
        "https://many-worlds.shotgunstudio.com",
        script_name="mw_main_script",
        api_key="wmNnyhwfdpuecdstofw0^gjkk",
    )

    current_engine = sgtk.platform.current_engine()

    context = current_engine.context
    tk = current_engine.sgtk

    project_id = getProject(returnId=True)

    if id == None:
        template = tk.templates[template]
        fields = context.as_template_fields(template)

        if entity_name == "current":
            entity_name = getEntity()

        filters = [
            ["entity."+entity_type+".code", "is", entity_name],
            ["project", "is", {"type": "Project", "id": project_id}],
            ["task.Task.content", "is", task],
            ["published_file_type.PublishedFileType.code", "is", published_file_type],
        ]

        fields = ["path", "name", "published_file_type", "code"]
        order = [
            {"field_name": "version_number", "direction": "desc"},
        ]

        publishedFile = sg.find_one("PublishedFile", filters, fields, order)

    else:
        filters = [["id", "is", id], ["project", "is",
                                      {"type": "Project", "id": project_id}]]

        fields = ["path", "name", "published_file_type", "code"]

        publishedFile = sg.find_one("PublishedFile", filters, fields)

    filePath = publishedFile["path"]["local_path"]

    print "***"
    print filePath

    # ensure file is local
    loader_app = current_engine.apps.get("tk-multi-loader2")
    loader_app.execute_hook_expression("{config}/tk-multi-loader2/tk-maya_actions.py",
                                       "_ensure_file_is_local", path=filePath, published_file=publishedFile)

    if returnPath == True:
        return filePath

    else:
        if namespace == None:
            cmds.file(filePath, i=True, defaultNamespace=True)
        else:
            cmds.file(filePath, i=True, namespace=namespace)

        return filePath


def zip_dir(src, dst, mode="zip"):
    import zipfile

    if mode == "zip":
        if os.path.exists(src):
            outZipFile = zipfile.ZipFile(
                dst, 'w', zipfile.ZIP_DEFLATED, allowZip64=True)

            # The root directory within the ZIP file.
            rootdir = os.path.basename(src)

            for dirpath, dirnames, filenames in os.walk(src):
                for filename in filenames:

                    # Write the file named filename to the archive,
                    # giving it the archive name 'arcname'.
                    filepath = os.path.join(dirpath, filename)
                    parentpath = os.path.relpath(filepath, src)
                    arcname = os.path.join(rootdir, parentpath)

                    outZipFile.write(filepath, arcname)

            outZipFile.close()

    elif mode == "unzip":
        with zipfile.ZipFile(src, 'r') as zip_ref:
            zip_ref.extractall(dst)

import os
import maya.cmds as cmds
import shutil
import maya.mel as mel

# import mgear.core as mgear
import getpass
import re

import sgtk
import shotgun_api3


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
        conns = cmds.listConnections(node, plugs=True, connections=True, source=False)
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
                pma = cmds.createNode("plusMinusAverage", n=renameSuffix(s, "pma"))
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
                pma = cmds.createNode("plusMinusAverage", n=renameSuffix(s, "pma"))
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
                pma = cmds.createNode("plusMinusAverage", n=renameSuffix(s, "pma"))
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


def getLatestWorkFileVersion(new=False):
    # returns latest work file version if new = False
    # returns new, non existing file version if new = True

    # gets comment in filename
    filepath = cmds.file(q=True, sn=True)
    filename = os.path.basename(filepath)

    if len(filename.split("_")) == 5:
        comment = filename.split("_")[4].split(".")[0]
    else:
        comment = ""

    for i in reversed(range(1, 1000)):
        work_file = getWorkFileName(i, comment)
        root = getPath()

        path = os.path.join(root, "maya", "scenes", work_file)

        if os.path.exists(path):
            if new == True:
                work_file = getWorkFileName(i + 1, comment)
                path = os.path.join(root, "maya", "scenes", work_file)
                break
            else:
                break

    return path


def getWorkFileName(version, comment=""):
    # get work file name
    data = {
        "project": io.find_one(
            {"name": os.environ["AVALON_PROJECT"], "type": "project"}
        ),
        "asset": io.find_one({"name": os.environ["AVALON_ASSET"], "type": "asset"}),
        "task": {
            "name": os.environ["AVALON_TASK"].lower(),
            "label": os.environ["AVALON_TASK"],
        },
        "version": version,
        "user": getpass.getuser(),
        "comment": comment,
    }

    template = "{task[name]}_v{version:0>4}<_{comment}>"
    templates = data["project"]["config"]["template"]
    if "workfile" in templates:
        template = templates["workfile"]

    if not data["comment"]:
        data.pop("comment", None)

    # remove optional missing keys
    pattern = re.compile(r"<.*?>")
    invalid_optionals = []
    for group in pattern.findall(template):
        try:
            group.format(**data)
        except KeyError:
            invalid_optionals.append(group)

    for group in invalid_optionals:
        template = template.replace(group, "")

    work_file = template.format(**data)

    # remove optional symbols
    work_file = work_file.replace("<", "")
    work_file = work_file.replace(">", "")
    work_file = work_file + ".ma"

    return work_file


def disconnectRigs(*args):
    connectRigs(disconnect=True)


def connectRigs(source=None, dest=None, disconnect=False):
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
                        connectAttr(connectObj + ".visibility", obj + ".visibility")
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


def bringPublished(
    project=None,
    asset=None,
    subset="modelDefault",
    version="latest",
    namespace="",
    returnPath=False,
):

    sg = shotgun_api3.Shotgun(
        "https://many-worlds.shotgunstudio.com",
        login="hernan.g",
        password="1aNasentropfen",
    )

    current_engine = sgtk.platform.current_engine()
    context = current_engine.context

    tk = current_engine.sgtk

    template = tk.templates["maya_asset_publish"]
    fields = context.as_template_fields(template)

    asset_name = getAsset()

    filters = [
        ["entity.Asset.code", "is", asset_name],
        ["task.Task.content", "is", "model"],
    ]
    fields = ["path"]
    order = [{"field_name": "version_number", "direction": "desc"}]

    path_dict = sg.find_one("PublishedFile", filters, fields, order)

    filePath = path_dict["path"]["local_path"]

    if os.path.isfile(filePath):

        if returnPath == True:
            return filePath

        else:
            cmds.file(filePath, i=True, defaultNamespace=True)

            return filePath

    else:
        return False


def getProject():
    # returns current project
    """
    session = api.Session
    project = session["AVALON_PROJECT"]
    return project
    """
    current_engine = sgtk.platform.current_engine()
    context = current_engine.context

    return context.project


def getAsset():
    # returns current asset name
    """
    session = api.Session
    asset = session["AVALON_ASSET"]
    return asset
    """

    current_engine = sgtk.platform.current_engine()
    context = current_engine.context

    return context.entity["name"]


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


def getTask():
    # returns current task name
    session = api.Session
    task = session["AVALON_TASK"]
    return task


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


def getPath(to="work", project=None, asset=None, task=None):
    # returns paths
    if project == None:
        project = getProject()

    if asset == None:
        asset = getAsset()

    if task == None:
        task = getTask()

    if to == "work":
        return os.path.join("M:\\", "projects", project, "assets", asset, "work", task)

    if to == "publish":
        return os.path.join("M:\\", "projects", project, "assets", asset, "publish")

    if to == "skin":
        return os.path.join(
            "M:\\",
            "projects",
            project,
            "assets",
            asset,
            "work",
            "rigPuppet",
            "maya",
            "data",
            "skin",
        )

    if to == "nurbsCorrectives":
        return os.path.join(
            "M:\\",
            "projects",
            project,
            "assets",
            asset,
            "work",
            task,
            "maya",
            "data",
            "nurbsCorrectives",
        )

    if to == "polyCorrectives":
        return os.path.join(
            "M:\\",
            "projects",
            project,
            "assets",
            asset,
            "work",
            task,
            "maya",
            "data",
            "polyCorrectives",
        )

    if to == "deformers":
        return os.path.join(
            "M:\\",
            "projects",
            project,
            "assets",
            asset,
            "work",
            task,
            "maya",
            "data",
            "deformers",
        )


def rigPuppetWorkSetup(project, asset, task):
    # creates folders
    skinPath = os.path.join(getPath(to="skin"))
    nurbsCorrectivesPath = os.path.join(getPath(to="nurbsCorrectives"))
    polyCorrectivesPath = os.path.join(getPath(to="polyCorrectives"))
    deformersPath = os.path.join(getPath(to="deformers"))
    assetPreBuildPath = os.path.join(
        "C:\\dev\\build\\scripts\\projects\\", project, asset, "pre"
    )
    assetPostBuildPath = os.path.join(
        "C:\\dev\\build\\scripts\\projects\\", project, asset, "post"
    )

    if not (os.path.isdir(assetPreBuildPath)):
        os.makedirs(assetPreBuildPath)

        # copies preBuild scripts from template folder
        path = "C:\\dev\\build\\scripts\\template_pre\\"
        scripts = [f for f in os.listdir(path) if os.path.isfile(os.path.join(path, f))]

        for script in scripts:
            src = path + script
            dst = assetPreBuildPath + "\\" + script.replace("template", asset)
            shutil.copy2(src, dst)

    if not (os.path.isdir(assetPostBuildPath)):
        os.makedirs(assetPostBuildPath)

        # copies postBuild scripts from template folder
        path = "C:\\dev\\build\\scripts\\template_post\\"
        scripts = [f for f in os.listdir(path) if os.path.isfile(os.path.join(path, f))]

        for script in scripts:
            src = path + script
            dst = assetPostBuildPath + "\\" + script.replace("template", asset)
            shutil.copy2(src, dst)

    if not (os.path.isdir(skinPath)):
        os.makedirs(skinPath)

    if not (os.path.isdir(nurbsCorrectivesPath)):
        os.makedirs(nurbsCorrectivesPath)

    if not (os.path.isdir(polyCorrectivesPath)):
        os.makedirs(polyCorrectivesPath)

    if not (os.path.isdir(deformersPath)):
        os.makedirs(deformersPath)


def userSetup():
    # runs on Maya startup
    import maya.cmds as cmds

    project = getProject()
    asset = getAsset()
    task = getTask()

    if task == "rigPuppet":
        rigPuppetWorkSetup(project, asset, task)

    customStepPath = "C:/dev/build/scripts/projects/" + project + "/" + asset + "/"
    command = 'putenv "MGEAR_SHIFTER_CUSTOMSTEP_PATH" "' + customStepPath + '"'
    mel.eval(command)


def helloWorlds():
    print("Hello, worlds! :) 2")

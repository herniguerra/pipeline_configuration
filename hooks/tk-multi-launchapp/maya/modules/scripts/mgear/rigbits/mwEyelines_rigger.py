"""MW eyeline rigger tool"""

import maya.cmds as cmds

import json
from functools import partial

import mgear.core.pyqt as gqt
import pymel.core as pm
from maya.app.general.mayaMixin import MayaQWidgetDockableMixin
from mgear.vendor.Qt import QtCore, QtWidgets
from pymel.core import datatypes

from mgear import rigbits
from mgear.core import meshNavigation, curve, applyop, primitive, icon
from mgear.core import transform, attribute, skin, vector

import maya.mel as mel

import math
import ast

##########################################################
# Eyelines constructor
##########################################################


def eyelinesRig(name, side, upEdges, dnEdges, eyelidRoot, facePolys=None):

    ######
    # Var
    ######

    rootLoc = name + "Root_" + side + "_loc"

    upNurbsName = name + "Up_" + side + "_nurbs"
    dnNurbsName = name + "Dn_" + side + "_nurbs"
    upFleshyNurbsName = name + "UpFleshy_" + side + "_nurbs"
    dnFleshyNurbsName = name + "DnFleshy_" + side + "_nurbs"
    nurbsWidth = cmds.getAttr(name + "Root_" + side + "_loc.sx") / 2

    faceGeo = cmds.getAttr(eyelidRoot + ".faceGeo")
    eyeRoot = cmds.getAttr(eyelidRoot + ".eyeRoot")
    eyeName = (
        cmds.getAttr(eyeRoot + ".comp_name")
        + "_"
        + cmds.getAttr(eyeRoot + ".comp_side")
        + str(cmds.getAttr(eyeRoot + ".comp_index"))
    )
    eyeJnt = eyeName + "_eye_jnt"
    eyeOverJnt = eyeJnt.replace("_jnt", "Over_jnt")
    eyeCtl = eyeName + "_Over_ctl"

    eyelidName = cmds.getAttr(eyelidRoot + ".name")
    eyelidSide = cmds.getAttr(eyelidRoot + ".side")
    fleshyJnt = eyelidName + "Fleshy_" + eyelidSide + "_jnrb"

    upLocList = [
        name + "In_" + side + "_loc",
        name + "UpMidIn_" + side + "_loc",
        name + "UpMid_" + side + "_loc",
        name + "UpMidOut_" + side + "_loc",
        name + "Out_" + side + "_loc",
    ]

    dnLocList = [
        name + "In_" + side + "_loc",
        name + "DnMidIn_" + side + "_loc",
        name + "DnMid_" + side + "_loc",
        name + "DnMidOut_" + side + "_loc",
        name + "Out_" + side + "_loc",
    ]

    ##############
    # Checkers
    ##############

    if eyelidRoot == "":
        pm.displayWarning("Eyelid root is not defined.")
        return

    if upEdges == "":
        pm.displayWarning("Up edges not defined.")
        return

    if dnEdges == "":
        pm.displayWarning("Dn edges not defined.")
        return

    upEdges = ast.literal_eval(upEdges)
    dnEdges = ast.literal_eval(dnEdges)

    cmds.select(upEdges, r=1)
    cmds.select(cmds.polyListComponentConversion(fe=1, tv=1))
    upVerts = cmds.ls(sl=1, fl=1)

    cmds.select(dnEdges, r=1)
    cmds.select(cmds.polyListComponentConversion(fe=1, tv=1))
    dnVerts = cmds.ls(sl=1, fl=1)

    # checks vertices
    check = mwRig.checkVertsInEdgeLoop(upVerts)
    if check == False:
        pm.displayWarning("Up edges may not share a loop")
        return

    check = mwRig.checkVertsInEdgeLoop(dnVerts)
    if check == False:
        pm.displayWarning("Dn edges may not share a loop")
        return

    # check if the rig already exist in the current scene
    if pm.ls(mwUtils.setName(name, "root", side=side)):
        pm.displayWarning(
            "The object %s already exists in the scene. Please"
            " choose another name prefix" % mwUtils.setName(name, "root", side=side)
        )
        return

    #####################
    # Root creation
    #####################

    eyelines_root = str(
        primitive.addTransform(None, mwUtils.setName(name, "root", side=side))
    )

    #####################
    # Set creation
    #####################

    try:
        ctlSet = pm.PyNode("rig_controllers_grp")
    except pm.MayaNodeError:
        pm.sets(n="rig_controllers_grp", em=True)
        ctlSet = pm.PyNode("rig_controllers_grp")
    try:
        defset = pm.PyNode("rig_deformers_grp")
    except pm.MayaNodeError:
        pm.sets(n="rig_deformers_grp", em=True)
        defset = pm.PyNode("rig_deformers_grp")

    #####################
    # Nurbs creation
    #####################

    for j, locList in enumerate([upLocList, dnLocList]):
        if j == 0:
            nurbsName = upNurbsName
            edges = upEdges
            fleshyNurbsName = upFleshyNurbsName
        else:
            nurbsName = dnNurbsName
            edges = dnEdges
            fleshyNurbsName = dnFleshyNurbsName

        crvList = []
        for i, v in enumerate(locList):
            if locList[i] != locList[-1]:
                loc1 = v
                loc2 = locList[i + 1]

                crv1 = "loftA" + str(j) + str(i) + "_crv"
                crvInb = "loftInb" + str(j) + str(i) + str(i + 1) + "_crv"
                crv2 = "loftB" + str(j) + str(i + 1) + "_crv"

                curve.addCurve(
                    None,
                    crv1,
                    [
                        [0, 0, (1 * nurbsWidth)],
                        [0, 0, (0.5 * nurbsWidth)],
                        [0, 0, (-0.5 * nurbsWidth)],
                        [0, 0, (-1 * nurbsWidth)],
                    ],
                )

                curve.addCurve(
                    None,
                    crvInb,
                    [
                        [0, 0, (1 * nurbsWidth)],
                        [0, 0, (0.5 * nurbsWidth)],
                        [0, 0, (-0.5 * nurbsWidth)],
                        [0, 0, (-1 * nurbsWidth)],
                    ],
                )

                curve.addCurve(
                    None,
                    crv2,
                    [
                        [0, 0, (1 * nurbsWidth)],
                        [0, 0, (0.5 * nurbsWidth)],
                        [0, 0, (-0.5 * nurbsWidth)],
                        [0, 0, (-1 * nurbsWidth)],
                    ],
                )

                # gets inbetween pos
                cmds.select(edges, r=1)
                cmds.select(cmds.polyListComponentConversion(fe=1, tv=1))
                upVerts = cmds.ls(sl=1, fl=1)
                vert1 = mwRig.getClosestComponentFromList(upVerts, transform=loc1)
                vert2 = mwRig.getClosestComponentFromList(upVerts, transform=loc2)
                edgeLoop = mwRig.getVertLoop(vert1, vert2)
                cmds.select(edgeLoop, r=1)
                tempCurve = "curve" + str(j) + str(i) + str(i + 1) + "_crv"
                tempCrv = cmds.polyToCurve(form=2, degree=3)[0]
                cmds.rename(tempCrv, tempCurve)
                tempCurveShape = cmds.listRelatives(tempCurve, c=1, s=1)[0]
                cmds.rebuildCurve(
                    tempCurve,
                    ch=0,
                    rpo=1,
                    rt=0,
                    end=1,
                    kr=0,
                    kcp=0,
                    kep=1,
                    kt=0,
                    s=2,
                    d=3,
                    tol=0.01,
                )
                inbPos = cmds.pointOnCurve(tempCurve, parameter=0.5, position=True)
                cmds.delete(tempCurve)

                # puts loft curves in place
                pos = cmds.xform(loc1, q=1, t=1, ws=1)
                cmds.xform(crv1, t=pos, ws=1)

                cmds.xform(crvInb, t=inbPos, ws=1)

                pos = cmds.xform(loc2, q=1, t=1, ws=1)
                cmds.xform(crv2, t=pos, ws=1)

                cmds.select(crv1, crvInb, crv2, r=1)
                nurbsPatch = "nurbs" + str(i) + "_nurbs"
                cmds.loft(
                    n=nurbsPatch, ch=0, u=0, c=0, ar=0, d=3, ss=1, rn=0, po=0, rsn=1
                )
                cmds.rebuildSurface(
                    ch=0,
                    rpo=1,
                    rt=0,
                    end=1,
                    kr=0,
                    kcp=0,
                    kc=0,
                    su=1,
                    du=0,
                    sv=2,
                    dv=0,
                    tol=0.01,
                    fr=0,
                    dir=2,
                )

                if i != 0:
                    cmds.select("nurbs0_nurbs", r=1)
                    cmds.select("nurbs" + str(i) + "_nurbs", add=1)
                    cmds.attachSurface(ch=0, rpo=1, kmk=1, m=1, bb=0.5, bki=0, p=0.1)

                cmds.delete(crv1, crvInb, crv2)

        cmds.rename("nurbs0_nurbs", nurbsName)
        cmds.delete(nurbsName, ch=1)

        cmds.select(d=1)
        cmds.delete("nurbs*_nurbs")
        cmds.reverseSurface(nurbsName)

        cmds.duplicate(nurbsName, n=fleshyNurbsName)
        cmds.blendShape(
            fleshyNurbsName,
            nurbsName,
            w=([0, 0.5]),
            n=mwUtils.renameSuffix(fleshyNurbsName, suffix="bs"),
        )

    #####################
    # Fleshy eye setup
    #####################
    if cmds.objExists(fleshyJnt):
        skcName = name + "UpFleshy_" + side + "_skc"
        cmds.select(fleshyJnt, upFleshyNurbsName, r=1)
        cmds.skinCluster(n=skcName, toSelectedBones=1, bindMethod=0, skinMethod=1)

        skcName = name + "DnFleshy_" + side + "_skc"
        cmds.select(fleshyJnt, dnFleshyNurbsName, r=1)
        cmds.skinCluster(n=skcName, toSelectedBones=1, bindMethod=0, skinMethod=1)

    #####################
    # Follicle creation
    #####################

    sknFolList = []

    for ud, edges in enumerate([upEdges, dnEdges]):
        if ud == 0:
            ud = "Up"
            nurbs = upNurbsName
            edges = upEdges
        else:
            ud = "Dn"
            nurbs = dnNurbsName
            edges = dnEdges

        mode = "LtoR"
        if side == "R":
            mode = "RtoL"

        cmds.select(edges, r=1)
        cmds.select(cmds.polyListComponentConversion(fe=1, tv=1))
        verts = cmds.ls(sl=1, fl=1)
        firstVert = mwRig.getFirstVertFromEdges(edges, mode=mode)
        verts = mwRig.sortVerts(verts, startVtx=firstVert)

        numFol = len(verts)

        for i in range(0, numFol):
            vtx = verts[i]
            vtxPos = cmds.xform(vtx, q=1, t=1, ws=1)

            # creates follicle
            folName = name + ud + "Fol" + str(i + 1) + "_" + side + "_fol"
            fol = mwRig.createFollicleInNurbs(folName, nurbs, vtxPos)
            sknFolList.append(fol)

    # cleanup
    cmds.select(sknFolList, r=1)
    sknFolGrp = cmds.group(n=name + "SknFol_" + side + "_grp")
    cmds.parent(upNurbsName, eyelines_root)
    cmds.parent(dnNurbsName, eyelines_root)
    cmds.parent(upFleshyNurbsName, eyelines_root)
    cmds.parent(dnFleshyNurbsName, eyelines_root)

    ##################
    # Joints and controls
    ##################

    ctlFolList = []

    # joints
    cmds.select(d=1)

    jnrbList = []

    jnsNames = [
        name + "In_" + side + "_jns",
        name + "Up1_" + side + "_jns",
        name + "Up2_" + side + "_jns",
        name + "Up3_" + side + "_jns",
        name + "Out_" + side + "_jns",
        name + "Dn1_" + side + "_jns",
        name + "Dn2_" + side + "_jns",
        name + "Dn3_" + side + "_jns",
    ]
    locList = [
        name + "In_" + side + "_loc",
        name + "UpMidIn_" + side + "_loc",
        name + "UpMid_" + side + "_loc",
        name + "UpMidOut_" + side + "_loc",
        name + "Out_" + side + "_loc",
        name + "DnMidIn_" + side + "_loc",
        name + "DnMid_" + side + "_loc",
        name + "DnMidOut_" + side + "_loc",
    ]

    upJnrbList = [
        name + "In_" + side + "_jnrb",
        name + "Up1_" + side + "_jnrb",
        name + "Up2_" + side + "_jnrb",
        name + "Up3_" + side + "_jnrb",
        name + "Out_" + side + "_jnrb",
    ]
    dnJnrbList = [
        name + "In_" + side + "_jnrb",
        name + "Dn1_" + side + "_jnrb",
        name + "Dn2_" + side + "_jnrb",
        name + "Dn3_" + side + "_jnrb",
        name + "Out_" + side + "_jnrb",
    ]

    for i, l in enumerate(locList):
        cmds.select(d=1)
        jnsName = jnsNames[i]
        jns = cmds.joint(n=jnsName)
        ztr = mwUtils.addZtr(jns)
        cmds.parent(ztr, l)

        cmds.setAttr(ztr + ".tx", 0)
        cmds.setAttr(ztr + ".ty", 0)
        cmds.setAttr(ztr + ".tz", 0)
        cmds.setAttr(ztr + ".rx", 0)
        cmds.setAttr(ztr + ".ry", 0)
        cmds.setAttr(ztr + ".rz", 0)
        cmds.setAttr(ztr + ".sx", 1)
        cmds.setAttr(ztr + ".sy", 1)
        cmds.setAttr(ztr + ".sz", 1)

        cmds.parent(ztr, w=1)

        # creates and connects control
        crv = jns.replace("jns", "crv")
        crvCopy = cmds.duplicate(crv, n=crv.replace("crv", "crvCopy"))
        cmds.makeIdentity(crvCopy, apply=1)
        crvShape = cmds.listRelatives(crvCopy, c=1, s=1)
        ctl = jns.replace("jns", "ctl")
        crvShape = cmds.rename(crvShape, ctl + "Shape")
        cmds.createNode("transform", n=ctl)
        mwRig.snap(ctl, jns)
        cmds.parent(crvShape, ctl, s=1, r=1)
        cmds.delete(crvCopy)

        ztr = mwUtils.addZtr(ctl)

        if side == "R":
            # inverts behaviour
            inv = cmds.group(ctl, n=mwUtils.renameSuffix(ctl, suffix="inv"))
            cmds.parent(ctl, w=1)
            cmds.setAttr(inv + ".rx", -1)
            cmds.setAttr(inv + ".ry", 180)
            cmds.setAttr(inv + ".sz", -1)
            cmds.parent(ctl, inv)
            cmds.makeIdentity(ctl, apply=1)

            mwUtils.connectAttr(ctl + ".tx", jns + ".tx", "negative")
            mwUtils.connectAttr(ctl + ".ty", jns + ".ty")
            mwUtils.connectAttr(ctl + ".tz", jns + ".tz")

            mwUtils.connectAttr(ctl + ".rx", jns + ".rx")
            mwUtils.connectAttr(ctl + ".ry", jns + ".ry", "negative")
            mwUtils.connectAttr(ctl + ".rz", jns + ".rz", "negative")

            mwUtils.connectAttr(ctl + ".sx", jns + ".sx")
            mwUtils.connectAttr(ctl + ".sy", jns + ".sy")
            mwUtils.connectAttr(ctl + ".sz", jns + ".sz")

        else:
            mwUtils.connectAttr(ctl + ".tx", jns + ".tx")
            mwUtils.connectAttr(ctl + ".ty", jns + ".ty")
            mwUtils.connectAttr(ctl + ".tz", jns + ".tz")

            mwUtils.connectAttr(ctl + ".rx", jns + ".rx")
            mwUtils.connectAttr(ctl + ".ry", jns + ".ry")
            mwUtils.connectAttr(ctl + ".rz", jns + ".rz")

            mwUtils.connectAttr(ctl + ".sx", jns + ".sx")
            mwUtils.connectAttr(ctl + ".sy", jns + ".sy")
            mwUtils.connectAttr(ctl + ".sz", jns + ".sz")

        # creates upVector locs
        upv = mwRig.locator(n=jns.replace("jns", "upv"), ls=0.1)
        cmds.parent(upv, jns)
        cmds.setAttr(upv + ".tx", 0)
        cmds.setAttr(upv + ".ty", 0.1)
        cmds.setAttr(upv + ".tz", 0)
        cmds.setAttr(upv + ".rx", 0)
        cmds.setAttr(upv + ".ry", 0)
        cmds.setAttr(upv + ".rz", 0)

        # creates and aimConstrains jnrb
        cmds.select(d=1)
        jnrb = cmds.joint(n=jns.replace("jns", "jnrb"))
        mwRig.snap(jnrb, rootLoc)
        mwUtils.addZtr(jnrb)

        cmds.aimConstraint(
            jns,
            jnrb,
            aimVector=[0, 0, 1],
            upVector=[0, 1, 0],
            worldUpType="objectrotation",
            worldUpVector=[0, 1, 0],
            worldUpObject=upv,
            n=jns.replace("jns", "acns"),
        )

        # attaches ctls to nurbs
        if "Dn" not in jns:
            nurbs = upNurbsName
        else:
            nurbs = dnNurbsName

        pos = cmds.xform(jns, q=1, t=1, ws=1)
        folName = mwUtils.renameSuffix(jns, suffix="fol", add="Ctl")
        fol = mwRig.createFollicleInNurbs(folName, nurbs, pos)
        mwRig.connectCtlToFol(ctl, fol)
        ctlFolList.append(fol)

    cmds.select(ctlFolList, r=1)
    ctlFolGrp = cmds.group(n=name + "CtlFol_" + side + "_grp")

    # skins nurbs
    upJnsList = []
    dnJnsList = []
    for j in upJnrbList:
        upJnsList.append(j.replace("_jnrb", "_jns"))
    for j in dnJnrbList:
        dnJnsList.append(j.replace("_jnrb", "_jns"))

    upSkcName = mwUtils.renameSuffix(upNurbsName, suffix="skc")
    dnSkcName = mwUtils.renameSuffix(dnNurbsName, suffix="skc")
    mwRig.radialSkin(upNurbsName, upJnsList, upJnrbList, skcName=upSkcName)
    mwRig.radialSkin(dnNurbsName, dnJnsList, dnJnrbList, skcName=dnSkcName)

    ##################
    # Follicle joints
    ##################

    jntfList = []
    for f in sknFolList:
        cmds.select(d=1)
        jntfName = f.replace("fol", "jntf")
        pos = cmds.xform(f, q=1, t=1, ws=1)
        jntf = cmds.joint(n=jntfName, p=pos, a=1)
        ztr = mwUtils.addZtr(jntf)
        jntfList.append(jntf)

        # creates plusMinusAverage to connect fols to jntfs
        pma = f.replace("fol", "pma")
        cmds.createNode("plusMinusAverage", n=pma)
        cmds.setAttr(pma + ".operation", 2)
        mwUtils.connectAttr(f + ".tx", pma + ".input3D[0].input3Dx")
        mwUtils.connectAttr(f + ".ty", pma + ".input3D[0].input3Dy")
        mwUtils.connectAttr(f + ".tz", pma + ".input3D[0].input3Dz")
        tx = cmds.getAttr(f + ".tx")
        ty = cmds.getAttr(f + ".ty")
        tz = cmds.getAttr(f + ".tz")
        cmds.setAttr(pma + ".input3D[1].input3Dx", tx)
        cmds.setAttr(pma + ".input3D[1].input3Dy", ty)
        cmds.setAttr(pma + ".input3D[1].input3Dz", tz)

        mwUtils.connectAttr(pma + ".output3Dx", jntf + ".tx")
        mwUtils.connectAttr(pma + ".output3Dy", jntf + ".ty")
        mwUtils.connectAttr(pma + ".output3Dz", jntf + ".tz")

        # creates upVector locs
        upv = mwRig.locator(n=jntf.replace("jntf", "upv"), ls=0.1)
        cmds.parent(upv, jntf)
        cmds.setAttr(upv + ".tx", 0)
        cmds.setAttr(upv + ".ty", 0.1)
        cmds.setAttr(upv + ".tz", 0)
        cmds.setAttr(upv + ".rx", 0)
        cmds.setAttr(upv + ".ry", 0)
        cmds.setAttr(upv + ".rz", 0)

        # aimConstrains
        jntName = f.replace("fol", "jnt")

        # creates jntJoints
        cmds.select(d=1)
        jnt = cmds.joint(n=jntName)
        mwRig.snap(jnt, rootLoc)
        ztr = mwUtils.addZtr(jnt)

        cmds.aimConstraint(
            jntf,
            jntName,
            aimVector=[0, 0, 1],
            upVector=[0, 1, 0],
            worldUpType="objectrotation",
            worldUpVector=[0, 1, 0],
            worldUpObject=upv,
            n=jntf.replace("jntf", "acns"),
        )

    ##################
    # Add influences to eyelid skin
    ##################

    skcName = mwUtils.renameSuffix(faceGeo, suffix="skc", add=eyelidName)

    cmds.select(name + "*_" + side + "_jnt", r=1)
    jnts = cmds.ls(sl=1)
    cmds.skinCluster(skcName, e=1, addInfluence=jnts)

    ##################
    # Cleanup
    ##################

    cmds.select(name + "*Jnt_" + side + "_ztr")
    jntGrp = cmds.group(n=name + "Jnt_" + side + "_grp")

    cmds.select(name + "*Jnrb_" + side + "_ztr")
    jnrbGrp = cmds.group(n=name + "Jnrb_" + side + "_grp")

    cmds.select(name + "*Jntf_" + side + "_ztr")
    jntfGrp = cmds.group(n=name + "Jntf_" + side + "_grp")

    cmds.select(name + "*Jns_" + side + "_ztr")
    jnsGrp = cmds.group(n=name + "Jns_" + side + "_grp")

    cmds.select(name + "*Ctl_" + side + "*_ztr")
    ctlGrp = cmds.group(n=name + "Ctl_" + side + "_grp")

    cmds.select(sknFolGrp, ctlFolGrp, r=1)
    folGrp = cmds.group(n=name + "Fol_" + side + "_grp")

    if cmds.objExists(eyeOverJnt):
        mwUtils.constraint(eyeOverJnt, ctlGrp)
        mwUtils.constraint(eyeOverJnt, ctlGrp, type="scale")

    facialRoot = "facial_C0_root"

    """
    if cmds.objExists(parentJnt):
        mwUtils.constraint(parentJnt, ctlGrp)
        mwUtils.constraint(parentJnt, ctlGrp, type="scale")

    parentCtl = "world_ctl"
    if cmds.objExists(parentCtl):
        cmds.parent(facialRoot, parentCtl)
    """

    cmds.parent(ctlGrp, facialRoot)

    facialSetupGrp = "facialSetup_grp"

    cmds.parent(name + "_" + side + "_root", facialSetupGrp)
    cmds.parent(jnrbGrp, name + "_" + side + "_root")
    cmds.parent(jntfGrp, name + "_" + side + "_root")
    cmds.parent(jnsGrp, name + "_" + side + "_root")
    cmds.parent(folGrp, name + "_" + side + "_root")

    facialJointsGrp = "facialJoints_grp"
    cmds.parent(jntGrp, facialJointsGrp)

    # adds joints to set
    allJnts = cmds.ls(name + "*_" + side + "_jnt")
    assetName = mwUtils.getAsset()
    if cmds.objExists(assetName + "_deformers_grp"):
        cmds.sets(allJnts, add=assetName + "_deformers_grp")


##########################################################
# Eyelines Rig UI
##########################################################


class eyelinesRigUI(MayaQWidgetDockableMixin, QtWidgets.QDialog):

    valueChanged = QtCore.Signal(int)

    def __init__(self, parent=None):
        super(eyelinesRigUI, self).__init__(parent)
        self.create()

    def create(self):

        self.setWindowTitle("mwEyelines rigger")
        self.setWindowFlags(QtCore.Qt.Window)
        self.setAttribute(QtCore.Qt.WA_DeleteOnClose, 1)

        self.create_controls()
        self.create_layout()
        self.create_connections()

    def create_controls(self):

        # geometry input controls
        self.input_group = QtWidgets.QGroupBox("Input")
        self.upEdges_label = QtWidgets.QLabel("Up edges:")
        self.upEdges_lineEdit = QtWidgets.QLineEdit("")
        self.upEdges_button = QtWidgets.QPushButton("<<")

        self.dnEdges_label = QtWidgets.QLabel("Dn edges:")
        self.dnEdges_lineEdit = QtWidgets.QLineEdit("")
        self.dnEdges_button = QtWidgets.QPushButton("<<")

        # name prefix
        self.prefix_group = QtWidgets.QGroupBox("Name Prefix")
        self.prefix_lineEdit = QtWidgets.QLineEdit()
        self.prefix_lineEdit.setText("eyeline")
        self.side_QComboBox = QtWidgets.QComboBox()
        self.side_QComboBox.addItems(["L", "R", "C"])

        # eyelidRoot
        self.eyelidRoot_label = QtWidgets.QLabel("Eyelid root:")
        self.eyelidRoot_lineEdit = QtWidgets.QLineEdit()
        self.eyelidRoot_button = QtWidgets.QPushButton("<<")

        # build button
        self.createLocs_button = QtWidgets.QPushButton("Create locators")
        self.build_button = QtWidgets.QPushButton("Build eyeline rig")

    def create_layout(self):

        # up edges layout
        upEdges_layout = QtWidgets.QHBoxLayout()
        upEdges_layout.setContentsMargins(1, 1, 1, 1)
        upEdges_layout.addWidget(self.upEdges_label)
        upEdges_layout.addWidget(self.upEdges_lineEdit)
        upEdges_layout.addWidget(self.upEdges_button)

        # dn edges layout
        dnEdges_layout = QtWidgets.QHBoxLayout()
        dnEdges_layout.setContentsMargins(1, 1, 1, 1)
        dnEdges_layout.addWidget(self.dnEdges_label)
        dnEdges_layout.addWidget(self.dnEdges_lineEdit)
        dnEdges_layout.addWidget(self.dnEdges_button)

        # eyelidRoot layout
        eyelidRoot_layout = QtWidgets.QHBoxLayout()
        eyelidRoot_layout.addWidget(self.eyelidRoot_label)
        eyelidRoot_layout.addWidget(self.eyelidRoot_lineEdit)
        eyelidRoot_layout.addWidget(self.eyelidRoot_button)

        # geometry input layout
        input_layout = QtWidgets.QVBoxLayout()
        input_layout.setContentsMargins(6, 1, 6, 2)
        input_layout.addLayout(upEdges_layout)
        input_layout.addLayout(dnEdges_layout)
        input_layout.addLayout(eyelidRoot_layout)

        self.input_group.setLayout(input_layout)

        # name prefix
        namePrefix_layout = QtWidgets.QHBoxLayout()
        namePrefix_layout.setContentsMargins(1, 1, 1, 1)
        namePrefix_layout.addWidget(self.prefix_lineEdit)
        namePrefix_layout.addWidget(self.side_QComboBox)
        self.prefix_group.setLayout(namePrefix_layout)

        # main layout
        main_layout = QtWidgets.QVBoxLayout()
        main_layout.setContentsMargins(6, 6, 6, 6)
        main_layout.addWidget(self.prefix_group)
        main_layout.addWidget(self.input_group)
        main_layout.addWidget(self.createLocs_button)
        main_layout.addWidget(self.build_button)

        self.setLayout(main_layout)

    def create_connections(self):
        self.upEdges_button.clicked.connect(
            partial(self.populate_edges, self.upEdges_lineEdit)
        )

        self.dnEdges_button.clicked.connect(
            partial(self.populate_edges, self.dnEdges_lineEdit)
        )

        self.eyelidRoot_button.clicked.connect(
            partial(self.populate_element, self.eyelidRoot_lineEdit)
        )

        self.createLocs_button.clicked.connect(self.createLocsInScene)
        self.build_button.clicked.connect(self.buildRig)

    # SLOTS ##########################################################

    def populate_element(self, lEdit, oType="transform"):
        if oType == "joint":
            oTypeInst = pm.nodetypes.Joint
        elif oType == "vertex":
            oTypeInst = pm.MeshVertex
        else:
            oTypeInst = pm.nodetypes.Transform

        if oType == "transformList":
            lst = []
            oSel = pm.selected()
            for s in oSel:
                if s:
                    if isinstance(s, oTypeInst):
                        lst.append(s.name())
                    else:
                        pm.displayWarning(
                            "Some selected objects are not a valid %s" % oType
                        )
                else:
                    pm.displayWarning("Please select first one %s." % oType)

            lEdit.setText(str(lst))

        else:
            oSel = pm.selected()
            if oSel:
                if isinstance(oSel[0], oTypeInst):
                    lEdit.setText(oSel[0].name())
                else:
                    pm.displayWarning("The selected element is not a valid %s" % oType)
            else:
                pm.displayWarning("Please select first one %s." % oType)

    def populate_edges(self, lineEdit):
        oSel = pm.selected(fl=1)
        if oSel:
            edgeList = ""
            separator = ""
            for e in oSel:
                if isinstance(e, pm.MeshEdge):
                    if edgeList:
                        separator = "','"
                    edgeList = edgeList + separator + str(e)
            if not edgeList:
                pm.displayWarning("Please select edges first")
            elif len(edgeList.split(",")) < 4:
                pm.displayWarning("The minimum edge count is 4")
            else:
                edgeList = "['" + edgeList + "']"
                lineEdit.setText(edgeList)

        else:
            pm.displayWarning("Please select edges first")

    def populateDict(self):
        self.buildDict = {}
        name = self.prefix_lineEdit.text()
        side = self.side_QComboBox.currentText()
        rootLoc = name + "Root_" + side + "_loc"

        if cmds.objExists(rootLoc):
            self.buildDict["eyelines"] = [
                cmds.getAttr(rootLoc + ".name"),
                cmds.getAttr(rootLoc + ".side"),
                cmds.getAttr(rootLoc + ".upEdges"),
                cmds.getAttr(rootLoc + ".dnEdges"),
                cmds.getAttr(rootLoc + ".eyelidRoot"),
            ]

        else:
            self.buildDict["eyelines"] = [
                self.prefix_lineEdit.text(),
                self.side_QComboBox.currentText(),
                self.upEdges_lineEdit.text(),
                self.dnEdges_lineEdit.text(),
                self.eyelidRoot_lineEdit.text(),
            ]

    def buildRig(self):
        self.populateDict()
        eyelinesRig(*self.buildDict["eyelines"])

    def createLocsInScene(self):
        self.populateDict()
        name = self.buildDict["eyelines"][0]
        side = self.buildDict["eyelines"][1]
        upEdges = self.buildDict["eyelines"][2]
        dnEdges = self.buildDict["eyelines"][3]
        eyelidRoot = self.buildDict["eyelines"][4]

        # checks
        if cmds.objExists(name + "Root_" + side + "_loc"):
            cmds.warning("System '" + name + "_" + side + "' already exists")
            return

        # main facial grp
        if not cmds.objExists("facialGuide_grp"):
            cmds.createNode("transform", n="facialGuide_grp")
            try:
                cmds.parent("facialGuide_grp", "guide")
            except:
                0

        # creates locs
        rootLoc = mwRig.locator(name=name + "Root_" + side + "_loc")
        cmds.addAttr(rootLoc, ln="builder", dt="string")
        cmds.addAttr(rootLoc, ln="name", dt="string")
        cmds.addAttr(rootLoc, ln="side", dt="string")
        cmds.addAttr(rootLoc, ln="upEdges", dt="string")
        cmds.addAttr(rootLoc, ln="dnEdges", dt="string")
        cmds.addAttr(rootLoc, ln="eyelidRoot", dt="string")
        cmds.setAttr(rootLoc + ".builder", "mwEyelines", type="string")
        cmds.setAttr(rootLoc + ".name", name, type="string")
        cmds.setAttr(rootLoc + ".side", side, type="string")
        cmds.setAttr(rootLoc + ".upEdges", upEdges, type="string")
        cmds.setAttr(rootLoc + ".dnEdges", dnEdges, type="string")
        cmds.setAttr(rootLoc + ".eyelidRoot", eyelidRoot, type="string")

        cmds.setAttr(rootLoc + ".overrideEnabled", 1)
        cmds.setAttr(rootLoc + ".overrideColor", 17)
        cmds.setAttr(rootLoc + "Shape.overrideEnabled", 1)
        cmds.setAttr(rootLoc + "Shape.overrideColor", 1)

        sign = 1
        if side == "R":
            sign = -1

        inLoc = mwRig.locator(name=name + "In_" + side + "_loc", ls=0.25)
        cmds.setAttr(inLoc + ".tx", -2 * sign)
        cmds.setAttr(inLoc + ".tz", 3)
        cmds.parent(inLoc, rootLoc)

        upMidInLoc = mwRig.locator(name=name + "UpMidIn_" + side + "_loc", ls=0.25)
        cmds.setAttr(upMidInLoc + ".tx", -1 * sign)
        cmds.setAttr(upMidInLoc + ".ty", 1.5)
        cmds.setAttr(upMidInLoc + ".tz", 3)
        cmds.parent(upMidInLoc, rootLoc)

        upMidLoc = mwRig.locator(name=name + "UpMid_" + side + "_loc", ls=0.25)
        cmds.setAttr(upMidLoc + ".tx", 0)
        cmds.setAttr(upMidLoc + ".ty", 1.5)
        cmds.setAttr(upMidLoc + ".tz", 3)
        cmds.parent(upMidLoc, rootLoc)

        upMidOutLoc = mwRig.locator(name=name + "UpMidOut_" + side + "_loc", ls=0.25)
        cmds.setAttr(upMidOutLoc + ".tx", 1 * sign)
        cmds.setAttr(upMidOutLoc + ".ty", 1.5)
        cmds.setAttr(upMidOutLoc + ".tz", 3)
        cmds.parent(upMidOutLoc, rootLoc)

        outLoc = mwRig.locator(name=name + "Out_" + side + "_loc", ls=0.25)
        cmds.setAttr(outLoc + ".tx", 2 * sign)
        cmds.setAttr(outLoc + ".tz", 3)
        cmds.parent(outLoc, rootLoc)

        dnMidInLoc = mwRig.locator(name=name + "DnMidIn_" + side + "_loc", ls=0.25)
        cmds.setAttr(dnMidInLoc + ".tx", -1 * sign)
        cmds.setAttr(dnMidInLoc + ".ty", -1.5)
        cmds.setAttr(dnMidInLoc + ".tz", 3)
        cmds.parent(dnMidInLoc, rootLoc)

        dnMidLoc = mwRig.locator(name=name + "DnMid_" + side + "_loc", ls=0.25)
        cmds.setAttr(dnMidLoc + ".tx", 0)
        cmds.setAttr(dnMidLoc + ".ty", -1.5)
        cmds.setAttr(dnMidLoc + ".tz", 3)
        cmds.parent(dnMidLoc, rootLoc)

        dnMidOutLoc = mwRig.locator(name=name + "DnMidOut_" + side + "_loc", ls=0.25)
        cmds.setAttr(dnMidOutLoc + ".tx", 1 * sign)
        cmds.setAttr(dnMidOutLoc + ".ty", -1.5)
        cmds.setAttr(dnMidOutLoc + ".tz", 3)
        cmds.parent(dnMidOutLoc, rootLoc)

        cmds.parent(rootLoc, "facialGuide_grp")

        # creates controls
        inCtl = mwRig.createControlCrv(
            inLoc,
            name=name + "In_" + side + "_crv",
            offsetZ=1,
            size=0.1,
            shape="circle",
        )[0]
        up1Ctl = mwRig.createControlCrv(
            upMidInLoc,
            name=name + "Up1_" + side + "_crv",
            offsetY=0,
            offsetZ=1,
            size=0.1,
            shape="circle",
        )[0]
        up2Ctl = mwRig.createControlCrv(
            upMidLoc,
            name=name + "Up2_" + side + "_crv",
            offsetY=0,
            offsetZ=1,
            size=0.1,
            shape="circle",
        )[0]
        up3Ctl = mwRig.createControlCrv(
            upMidOutLoc,
            name=name + "Up3_" + side + "_crv",
            offsetY=0,
            offsetZ=1,
            size=0.1,
            shape="circle",
        )[0]
        outCtl = mwRig.createControlCrv(
            outLoc,
            name=name + "Out_" + side + "_crv",
            offsetZ=1,
            size=0.1,
            shape="circle",
        )[0]

        dn1Ctl = mwRig.createControlCrv(
            dnMidInLoc,
            name=name + "Dn1_" + side + "_crv",
            offsetY=0,
            offsetZ=1,
            size=0.1,
            shape="circle",
        )[0]
        dn2Ctl = mwRig.createControlCrv(
            dnMidLoc,
            name=name + "Dn2_" + side + "_crv",
            offsetY=0,
            offsetZ=1,
            size=0.1,
            shape="circle",
        )[0]
        dn3Ctl = mwRig.createControlCrv(
            dnMidOutLoc,
            name=name + "Dn3_" + side + "_crv",
            offsetY=0,
            offsetZ=1,
            size=0.1,
            shape="circle",
        )[0]

        # colors
        inCtlShape = cmds.listRelatives(inCtl, c=1, s=1)[0]
        up1CtlShape = cmds.listRelatives(up1Ctl, c=1, s=1)[0]
        up2CtlShape = cmds.listRelatives(up2Ctl, c=1, s=1)[0]
        up3CtlShape = cmds.listRelatives(up3Ctl, c=1, s=1)[0]
        outCtlShape = cmds.listRelatives(outCtl, c=1, s=1)[0]
        dn1CtlShape = cmds.listRelatives(dn1Ctl, c=1, s=1)[0]
        dn2CtlShape = cmds.listRelatives(dn2Ctl, c=1, s=1)[0]
        dn3CtlShape = cmds.listRelatives(dn3Ctl, c=1, s=1)[0]

        cmds.setAttr(inCtlShape + ".overrideEnabled", 1)
        cmds.setAttr(inCtlShape + ".overrideColor", 3)
        cmds.setAttr(up1CtlShape + ".overrideEnabled", 1)
        cmds.setAttr(up1CtlShape + ".overrideColor", 3)
        cmds.setAttr(up2CtlShape + ".overrideEnabled", 1)
        cmds.setAttr(up2CtlShape + ".overrideColor", 3)
        cmds.setAttr(up3CtlShape + ".overrideEnabled", 1)
        cmds.setAttr(up3CtlShape + ".overrideColor", 3)
        cmds.setAttr(outCtlShape + ".overrideEnabled", 1)
        cmds.setAttr(outCtlShape + ".overrideColor", 3)
        cmds.setAttr(dn1CtlShape + ".overrideEnabled", 1)
        cmds.setAttr(dn1CtlShape + ".overrideColor", 3)
        cmds.setAttr(dn2CtlShape + ".overrideEnabled", 1)
        cmds.setAttr(dn2CtlShape + ".overrideColor", 3)
        cmds.setAttr(dn3CtlShape + ".overrideEnabled", 1)
        cmds.setAttr(dn3CtlShape + ".overrideColor", 3)

        cmds.select(d=1)


def showMwEyelinesUI(*args):
    gqt.showDialog(eyelinesRigUI)


if __name__ == "__main__":
    showMwEyelinesUI()

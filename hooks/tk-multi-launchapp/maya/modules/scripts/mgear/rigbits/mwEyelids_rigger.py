"""MW eyelid rigger tool"""

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
# Eyelids constructor
##########################################################


def eyelidsRig(
    name,
    side,
    faceGeo,
    addGeos,
    upEdges,
    dnEdges,
    eyeRoot,
    upEyelidOpen,
    dnEyelidOpen,
    facePolys=None,
):

    ######
    # Var
    ######

    rootLoc = name + "Root_" + side + "_loc"

    mainUpNurbsName = name + "MainUp_" + side + "_nurbs"
    secUpNurbsName = name + "SecUp_" + side + "_nurbs"
    mainDnNurbsName = name + "MainDn_" + side + "_nurbs"
    secDnNurbsName = name + "SecDn_" + side + "_nurbs"
    fleshyNurbsName = name + "Fleshy_" + side + "_nurbs"
    nurbsWidth = cmds.getAttr(name + "Root_" + side + "_loc.sx") / 2
    eyeName = (
        cmds.getAttr(eyeRoot + ".comp_name")
        + "_"
        + cmds.getAttr(eyeRoot + ".comp_side")
        + str(cmds.getAttr(eyeRoot + ".comp_index"))
    )
    eyeJnt = eyeName + "_eye_jnt"
    eyeOverJnt = eyeJnt.replace("_jnt", "Over_jnt")
    eyeCtl = eyeName + "_Over_ctl"

    doFleshy = True

    if not cmds.objExists(eyeCtl):
        doFleshy = False
        eyeCtl = mwRig.locator(n=eyeCtl)

    locList = [
        name + "In_" + side + "_loc",
        name + "MidIn_" + side + "_loc",
        name + "Mid_" + side + "_loc",
        name + "MidOut_" + side + "_loc",
        name + "Out_" + side + "_loc",
    ]

    ##############
    # Checkers
    ##############

    if faceGeo == "":
        pm.displayWarning("Face geo is not defined.")
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
        pm.displayWarning("eyelidsRigger - Up edges may not share a loop")
        return

    check = mwRig.checkVertsInEdgeLoop(dnVerts)
    if check == False:
        pm.displayWarning("eyelidsRigger - Dn edges may not share a loop")
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

    eyelids_root = str(
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

    crvList = []
    for i, v in enumerate(locList):
        if locList[i] != locList[-1]:
            loc1 = v
            loc2 = locList[i + 1]

            crv1 = "loftA" + str(i) + "_crv"
            crvInb = "loftInb" + str(i) + str(i + 1) + "_crv"
            crv2 = "loftB" + str(i + 1) + "_crv"

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
            cmds.select(upEdges, r=1)
            cmds.select(cmds.polyListComponentConversion(fe=1, tv=1))
            upVerts = cmds.ls(sl=1, fl=1)
            vert1 = mwRig.getClosestComponentFromList(upVerts, transform=loc1)
            vert2 = mwRig.getClosestComponentFromList(upVerts, transform=loc2)
            edgeLoop = mwRig.getVertLoop(vert1, vert2)
            cmds.select(edgeLoop, r=1)
            tempCurve = "curve" + str(i) + str(i + 1) + "_crv"
            tempCrv = cmds.polyToCurve(form=2, degree=1)[0]
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
            cmds.loft(n=nurbsPatch, ch=0, u=0, c=0, ar=0, d=3, ss=1, rn=0, po=0, rsn=1)
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

    cmds.rename("nurbs0_nurbs", mainUpNurbsName)
    cmds.delete(mainUpNurbsName, ch=1)

    cmds.select(d=1)
    cmds.delete("nurbs*_nurbs")
    cmds.reverseSurface(mainUpNurbsName)

    cmds.duplicate(mainUpNurbsName, n=secUpNurbsName)
    cmds.duplicate(mainUpNurbsName, n=fleshyNurbsName)
    cmds.blendShape(
        fleshyNurbsName,
        secUpNurbsName,
        mainUpNurbsName,
        w=([0, 1], [1, 1]),
        n=name + "UpNurbs_" + side + "_bs",
    )

    cmds.duplicate(mainUpNurbsName, n=mainDnNurbsName)
    cmds.duplicate(mainDnNurbsName, n=secDnNurbsName)
    cmds.blendShape(
        fleshyNurbsName,
        secDnNurbsName,
        mainDnNurbsName,
        w=([0, 1], [1, 1]),
        n=name + "DnNurbs_" + side + "_bs",
    )
    #####################
    # Fleshy eye setup
    #####################

    if doFleshy == True:
        skcName = name + "Fleshy_" + side + "_skc"
        fleshyJntName = name + "Fleshy_" + side + "_jnrb"
        fleshyJnt = cmds.joint(n=fleshyJntName)
        mwUtils.addZtr(fleshyJnt)
        cmds.addAttr(eyeCtl, ln="fleshy", at="float", min=0, max=1, dv=0.25, k=1)
        mwRig.snap(fleshyJnt, eyeJnt)

        mdv = cmds.createNode("multiplyDivide", n=name + "FleshyRot_" + side + "_mdv")
        mwUtils.connectAttr(eyeJnt + ".rx", mdv + ".input1X")
        mwUtils.connectAttr(eyeJnt + ".ry", mdv + ".input1Y")
        mwUtils.connectAttr(eyeJnt + ".rz", mdv + ".input1Z")
        mwUtils.connectAttr(eyeCtl + ".fleshy", mdv + ".input2X")
        mwUtils.connectAttr(eyeCtl + ".fleshy", mdv + ".input2Y")
        mwUtils.connectAttr(eyeCtl + ".fleshy", mdv + ".input2Z")
        mwUtils.connectAttr(mdv + ".outputX", fleshyJnt + ".rx")
        mwUtils.connectAttr(mdv + ".outputY", fleshyJnt + ".ry")
        mwUtils.connectAttr(mdv + ".outputZ", fleshyJnt + ".rz")

        cmds.select(fleshyJnt, fleshyNurbsName)
        cmds.skinCluster(n=skcName, toSelectedBones=1, bindMethod=0, skinMethod=1)

    #####################
    # Follicle creation
    #####################

    sknFolList = []

    for ud, edges in enumerate([upEdges, dnEdges]):
        if ud == 0:
            ud1 = "Up"
            ud2 = "Dn"
            nurbs1 = mainUpNurbsName
            nurbs2 = mainDnNurbsName
            edges1 = upEdges
            edges2 = dnEdges
        else:
            ud1 = "Dn"
            ud2 = "Up"
            nurbs1 = mainDnNurbsName
            nurbs2 = mainUpNurbsName
            edges1 = dnEdges
            edges2 = upEdges

        for i, edges in enumerate([edges1, edges2]):
            if i == 0:
                ud = ud1
                nurbs = nurbs1
                edges = edges1
            else:
                ud = ud2
                nurbs = nurbs2
                edges = edges2

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
                folName = name + ud1 + "Fol" + ud + str(i + 1) + "_" + side + "_fol"
                fol = mwRig.createFollicleInNurbs(folName, nurbs1, vtxPos)
                sknFolList.append(fol)

    # cleanup
    cmds.select(sknFolList, r=1)
    sknFolGrp = cmds.group(n=name + "SknFol_" + side + "_grp")
    cmds.parent(mainUpNurbsName, eyelids_root)
    cmds.parent(secUpNurbsName, eyelids_root)
    cmds.parent(mainDnNurbsName, eyelids_root)
    cmds.parent(secDnNurbsName, eyelids_root)
    cmds.parent(fleshyNurbsName, eyelids_root)

    ##################
    # Main and secondary joints and controls
    ##################

    # mainJoints

    mainJnsNames = [
        name + "InMain_" + side + "_jns",
        name + "UpMain_" + side + "_jns",
        name + "OutMain_" + side + "_jns",
        name + "DnMain_" + side + "_jns",
    ]
    mainLocList = [
        name + "In_" + side + "_loc",
        name + "Mid_" + side + "_loc",
        name + "Out_" + side + "_loc",
        name + "Mid_" + side + "_loc",
    ]

    mainUpJnrbList = [
        name + "InMain_" + side + "_jnrb",
        name + "UpMain_" + side + "_jnrb",
        name + "OutMain_" + side + "_jnrb",
    ]
    mainDnJnrbList = [
        name + "InMain_" + side + "_jnrb",
        name + "DnMain_" + side + "_jnrb",
        name + "OutMain_" + side + "_jnrb",
    ]

    ctlFolList = []

    for i, l in enumerate(mainLocList):
        cmds.select(d=1)
        jnsName = mainJnsNames[i]
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
        if "Dn" in ztr:
            cmds.setAttr(ztr + ".sy", -1)
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
        if "Dn" in ztr:
            cmds.setAttr(ztr + ".sz", -1)

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

        # attaches main ctls to main nurbs
        if "Dn" not in jns:
            nurbs = mainUpNurbsName
        else:
            nurbs = mainDnNurbsName

        pos = cmds.xform(jns, q=1, t=1, ws=1)
        folName = mwUtils.renameSuffix(jns, suffix="fol", add="Ctl")
        fol = mwRig.createFollicleInNurbs(folName, nurbs, pos)
        mwRig.connectCtlToFol(ctl, fol)
        ctlFolList.append(fol)

    # secondary joints
    cmds.select(d=1)

    secJnrbList = []

    secJnsNames = [
        name + "In_" + side + "_jns",
        name + "Up1_" + side + "_jns",
        name + "Up2_" + side + "_jns",
        name + "Up3_" + side + "_jns",
        name + "Out_" + side + "_jns",
        name + "Dn1_" + side + "_jns",
        name + "Dn2_" + side + "_jns",
        name + "Dn3_" + side + "_jns",
    ]
    secLocList = [
        name + "In_" + side + "_loc",
        name + "MidIn_" + side + "_loc",
        name + "Mid_" + side + "_loc",
        name + "MidOut_" + side + "_loc",
        name + "Out_" + side + "_loc",
        name + "MidIn_" + side + "_loc",
        name + "Mid_" + side + "_loc",
        name + "MidOut_" + side + "_loc",
    ]

    secUpJnrbList = [
        name + "In_" + side + "_jnrb",
        name + "Up1_" + side + "_jnrb",
        name + "Up2_" + side + "_jnrb",
        name + "Up3_" + side + "_jnrb",
        name + "Out_" + side + "_jnrb",
    ]
    secDnJnrbList = [
        name + "In_" + side + "_jnrb",
        name + "Dn1_" + side + "_jnrb",
        name + "Dn2_" + side + "_jnrb",
        name + "Dn3_" + side + "_jnrb",
        name + "Out_" + side + "_jnrb",
    ]

    for i, l in enumerate(secLocList):
        cmds.select(d=1)
        jnsName = secJnsNames[i]
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
        if "Dn" in ztr:
            cmds.setAttr(ztr + ".sy", -1)
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
        if "Dn" in ztr:
            cmds.setAttr(ztr + ".sz", -1)

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

        # attaches sec ctls to main nurbs
        if "Dn" not in jns:
            nurbs = mainUpNurbsName
        else:
            nurbs = mainDnNurbsName

        pos = cmds.xform(jns, q=1, t=1, ws=1)
        folName = mwUtils.renameSuffix(jns, suffix="fol", add="Ctl")
        fol = mwRig.createFollicleInNurbs(folName, nurbs, pos)
        mwRig.connectCtlToFol(ctl, fol)
        ctlFolList.append(fol)

    cmds.select(ctlFolList, r=1)
    ctlFolGrp = cmds.group(n=name + "CtlFol_" + side + "_grp")

    # blink setup
    cmds.addAttr(eyeCtl, ln="blink", at="float", min=0, max=1, k=1, dv=0)
    cmds.addAttr(eyeCtl, ln="blinkHeight", at="float", min=0, max=1, k=1, dv=0.5)

    blinkHeightRev = cmds.createNode(
        "reverse", n=name + "BlinkHeight" + "_" + side + "_rev"
    )
    blinkMdv = cmds.createNode("multiplyDivide", n=name + "Blink" + side + "_mdv")

    mwUtils.connectAttr(eyeCtl + ".blinkHeight", blinkHeightRev + ".inputX")
    mwUtils.connectAttr(eyeCtl + ".blink", blinkMdv + ".input1X")
    mwUtils.connectAttr(eyeCtl + ".blink", blinkMdv + ".input1Y")
    mwUtils.connectAttr(blinkHeightRev + ".outputX", blinkMdv + ".input2X")
    mwUtils.connectAttr(eyeCtl + ".blinkHeight", blinkMdv + ".input2Y")

    # default lid open values
    cmds.addAttr(eyeCtl, ln="upEyelidOpenVal", at="float", dv=upEyelidOpen)
    cmds.setAttr(eyeCtl + ".upEyelidOpenVal", lock=1)
    cmds.addAttr(eyeCtl, ln="dnEyelidOpenVal", at="float", dv=dnEyelidOpen)
    cmds.setAttr(eyeCtl + ".dnEyelidOpenVal", lock=1)

    # blink blend
    blinkRev = cmds.createNode("reverse", n=name + "Blink" + "_" + side + "_rev")
    cmds.connectAttr(eyeCtl + ".blink", blinkRev + ".inputX")

    upRemap = cmds.createNode("remapValue", n="upEyelidOpen_" + side + "_rmp")
    cmds.setAttr(upRemap + ".inputMax", upEyelidOpen)
    cmds.connectAttr(name + "UpMain_" + side + "_ctl.ty", upRemap + ".inputValue")

    upMdv = cmds.createNode("multiplyDivide", n="upEyelidOpen_" + side + "_mdv")
    cmds.connectAttr(upRemap + ".outValue", upMdv + ".input1X")
    cmds.connectAttr(blinkRev + ".outputX", upMdv + ".input2X")

    cmds.addAttr(eyeCtl, ln="upEyelidOpen", at="float", dv=0, k=1)
    cmds.connectAttr(upMdv + ".outputX", eyeCtl + ".upEyelidOpen")

    dnRemap = cmds.createNode("remapValue", n="dnEyelidOpen_" + side + "_rmp")
    cmds.setAttr(dnRemap + ".inputMax", dnEyelidOpen)
    cmds.connectAttr(name + "DnMain_" + side + "_ctl.ty", dnRemap + ".inputValue")

    dnMdv = cmds.createNode("multiplyDivide", n="dnEyelidOpen_" + side + "_mdv")
    cmds.connectAttr(dnRemap + ".outValue", dnMdv + ".input1X")
    cmds.connectAttr(blinkRev + ".outputX", dnMdv + ".input2X")

    cmds.addAttr(eyeCtl, ln="dnEyelidOpen", at="float", dv=0, k=1)
    cmds.connectAttr(dnMdv + ".outputX", eyeCtl + ".dnEyelidOpen")

    # skins nurbs
    mainUpJnsList = []
    mainDnJnsList = []
    secUpJnsList = []
    secDnJnsList = []

    for j in mainUpJnrbList:
        mainUpJnsList.append(j.replace("_jnrb", "_jns"))
    for j in mainDnJnrbList:
        mainDnJnsList.append(j.replace("_jnrb", "_jns"))
    for j in secUpJnrbList:
        secUpJnsList.append(j.replace("_jnrb", "_jns"))
    for j in secDnJnrbList:
        secDnJnsList.append(j.replace("_jnrb", "_jns"))

    mainUpSkcName = mwUtils.renameSuffix(mainUpNurbsName, suffix="skc")
    mainDnSkcName = mwUtils.renameSuffix(mainDnNurbsName, suffix="skc")
    mwRig.radialSkin(
        mainUpNurbsName, mainUpJnsList, mainUpJnrbList, skcName=mainUpSkcName
    )
    mwRig.radialSkin(
        mainDnNurbsName, mainDnJnsList, mainDnJnrbList, skcName=mainDnSkcName
    )
    secUpSkcName = mwUtils.renameSuffix(secUpNurbsName, suffix="skc")
    secDnSkcName = mwUtils.renameSuffix(secDnNurbsName, suffix="skc")
    mwRig.radialSkin(secUpNurbsName, secUpJnsList, secUpJnrbList, skcName=secUpSkcName)
    mwRig.radialSkin(secDnNurbsName, secDnJnsList, secDnJnrbList, skcName=secDnSkcName)

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

        # creates offset transform for blink setup
        jntName = f.replace("fol", "jnt")

        null = cmds.createNode(
            "transform", n=mwUtils.renameSuffix(jntName, "null", add="rot")
        )

        mwRig.snap(null, rootLoc)
        mwUtils.addZtr(null)

        cmds.aimConstraint(
            jntf,
            null,
            aimVector=[0, 0, 1],
            upVector=[0, 1, 0],
            worldUpType="objectrotation",
            worldUpVector=[0, 1, 0],
            worldUpObject=upv,
            n=jntf.replace("jntf", "acns"),
        )

        # creates jntJoints
        lidUd = f.split(name)[1][0:2]
        folUd = f.split("Fol")[1][0:2]

        if lidUd == folUd:
            cmds.select(d=1)
            jnt = cmds.joint(n=jntName)
            mwRig.snap(jnt, rootLoc)
            ztr = mwUtils.addZtr(jnt)

    for f in sknFolList:
        # creates pairBlends
        lidUd = f.split(name)[1][0:2]
        folUd = f.split("Fol")[1][0:2]

        if lidUd == folUd:
            jnt = f.replace("fol", "jnt")
            null = mwUtils.renameSuffix(jnt, "null", add="rot")

            if lidUd == "Up":
                opUd = "Dn"
            elif lidUd == "Dn":
                opUd = "Up"
            opJnt = jnt.replace(name + lidUd, name + opUd)
            opNull = mwUtils.renameSuffix(opJnt, "null", add="rot")

            pairb = cmds.createNode(
                "pairBlend", n=mwUtils.renameSuffix(f, "pairb", add="")
            )
            mwUtils.connectAttr(null + ".rotateX", pairb + ".inRotateX1")
            mwUtils.connectAttr(null + ".rotateY", pairb + ".inRotateY1")
            mwUtils.connectAttr(null + ".rotateZ", pairb + ".inRotateZ1")

            mwUtils.connectAttr(opNull + ".rotateX", pairb + ".inRotateX2")
            mwUtils.connectAttr(opNull + ".rotateY", pairb + ".inRotateY2")
            mwUtils.connectAttr(opNull + ".rotateZ", pairb + ".inRotateZ2")

            mwUtils.connectAttr(pairb + ".outRotateX", jnt + ".rotateX")
            mwUtils.connectAttr(pairb + ".outRotateY", jnt + ".rotateY")
            mwUtils.connectAttr(pairb + ".outRotateZ", jnt + ".rotateZ")

            if lidUd == "Up":
                mwUtils.connectAttr(blinkMdv + ".outputX", pairb + ".weight")
            elif lidUd == "Dn":
                mwUtils.connectAttr(blinkMdv + ".outputY", pairb + ".weight")

    cmds.select(d=1)
    holdJoint = name + "Hold_C_jnt"
    if not cmds.objExists(holdJoint):
        holdJoint = cmds.joint(n=holdJoint)

    ##################
    # Facial geo layer
    ##################

    faceGeoPly, facialCut, facialBody, addGeosPly = mwRig.createFacialGeoLayer(
        faceGeo, addGeos, name, side=side, facePolys=facePolys
    )

    skcName = mwUtils.renameSuffix(faceGeoPly, "skc", add="")

    cmds.select(name + "*_" + side + "_jnt", r=1)
    jnts = cmds.ls(sl=1)
    cmds.select(holdJoint, add=1)
    cmds.select(faceGeoPly, add=1)

    if not cmds.objExists(skcName):
        cmds.skinCluster(n=skcName, tsb=1)
    else:
        cmds.skinCluster(skcName, e=1, addInfluence=jnts)

    if cmds.listRelatives(faceGeoPly, p=1) != name + "_" + side + "_root":
        cmds.parent(faceGeoPly, name + "_" + side + "_root")

    if addGeosPly != []:
        for g in addGeosPly:
            cmds.select(jnts, r=1)
            cmds.select(holdJoint, add=1)
            cmds.select(g, add=1)
            cmds.skinCluster(n=mwUtils.renameSuffix(g, "skc", add=""))

            cmds.parent(g, name + "_" + side + "_root")

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

    cmds.select(name + "*RotNull_" + side + "_ztr")
    rotNullGrp = cmds.group(n=name + "RotNull_" + side + "_grp")

    if doFleshy == True:
        mwUtils.constraint(eyeOverJnt, ctlGrp)
        mwUtils.constraint(eyeOverJnt, ctlGrp, type="scale")

    if cmds.listRelatives(name + "Hold_C_jnt", p=1) == None:
        cmds.parent(name + "Hold_C_jnt", jntGrp)

    facialRoot = "facial_C0_root"
    if not cmds.objExists(facialRoot):
        facialRoot = cmds.createNode("transform", n=facialRoot)

    parentCtl = "world_ctl"
    if cmds.objExists(parentCtl):
        try:
            cmds.parent(facialRoot, parentCtl)
        except:
            0

    cmds.parent(ctlGrp, facialRoot)

    facialSetupGrp = "facialSetup_grp"
    if not cmds.objExists(facialSetupGrp):
        cmds.createNode("transform", n=facialSetupGrp)
        cmds.setAttr(facialSetupGrp + ".v", 0)
        if cmds.objExists("setup"):
            cmds.parent(facialSetupGrp, "setup")

        cmds.parent(facialCut, facialBody, facialSetupGrp)

    cmds.parent(name + "_" + side + "_root", facialSetupGrp)
    cmds.parent(jnrbGrp, name + "_" + side + "_root")
    cmds.parent(jntfGrp, name + "_" + side + "_root")
    cmds.parent(jnsGrp, name + "_" + side + "_root")
    cmds.parent(folGrp, name + "_" + side + "_root")
    cmds.parent(rotNullGrp, name + "_" + side + "_root")

    facialJointsGrp = "facialJoints_grp"
    if not cmds.objExists(facialJointsGrp):
        facialJointsGrp = cmds.createNode("transform", n=facialJointsGrp)
        cmds.setAttr(facialJointsGrp + ".v", 0)
        if cmds.objExists("jnt_org"):
            cmds.parent(facialJointsGrp, "jnt_org")
    cmds.parent(jntGrp, facialJointsGrp)

    # adds joints to set
    allJnts = cmds.ls(name + "*_" + side + "_jnt")
    assetName = mwUtils.getAsset()
    if cmds.objExists(assetName + "_deformers_grp"):
        cmds.sets(allJnts, add=assetName + "_deformers_grp")


##########################################################
# Eyelids Rig UI
##########################################################


class eyelidsRigUI(MayaQWidgetDockableMixin, QtWidgets.QDialog):

    valueChanged = QtCore.Signal(int)

    def __init__(self, parent=None):
        super(eyelidsRigUI, self).__init__(parent)
        self.create()

    def create(self):

        self.setWindowTitle("mwEyelids rigger")
        self.setWindowFlags(QtCore.Qt.Window)
        self.setAttribute(QtCore.Qt.WA_DeleteOnClose, 1)

        self.create_controls()
        self.create_layout()
        self.create_connections()

    def create_controls(self):

        # geometry input controls
        self.input_group = QtWidgets.QGroupBox("Input")
        self.faceGeo_label = QtWidgets.QLabel("Face geo:")
        self.faceGeo_lineEdit = QtWidgets.QLineEdit()
        self.faceGeo_button = QtWidgets.QPushButton("<<")

        self.addGeos_label = QtWidgets.QLabel("Add geos:")
        self.addGeos_lineEdit = QtWidgets.QLineEdit()
        self.addGeos_button = QtWidgets.QPushButton("<<")

        # geometry input controls
        self.upEdges_label = QtWidgets.QLabel("Up edges:")
        self.upEdges_lineEdit = QtWidgets.QLineEdit("")
        self.upEdges_button = QtWidgets.QPushButton("<<")

        self.dnEdges_label = QtWidgets.QLabel("Dn edges:")
        self.dnEdges_lineEdit = QtWidgets.QLineEdit("")
        self.dnEdges_button = QtWidgets.QPushButton("<<")

        # name prefix
        self.prefix_group = QtWidgets.QGroupBox("Name Prefix")
        self.prefix_lineEdit = QtWidgets.QLineEdit()
        self.prefix_lineEdit.setText("eyelid")
        self.side_QComboBox = QtWidgets.QComboBox()
        self.side_QComboBox.addItems(["L", "R", "C"])

        # eyeRoot
        self.eyeRoot_label = QtWidgets.QLabel("Eye root:")
        self.eyeRoot_lineEdit = QtWidgets.QLineEdit()
        self.eyeRoot_button = QtWidgets.QPushButton("<<")

        # build button
        self.createLocs_button = QtWidgets.QPushButton("Create locators")
        self.build_button = QtWidgets.QPushButton("Build eyelid rig")

    def create_layout(self):

        # face geo layout
        faceGeo_layout = QtWidgets.QHBoxLayout()
        faceGeo_layout.setContentsMargins(1, 1, 1, 1)
        faceGeo_layout.addWidget(self.faceGeo_label)
        faceGeo_layout.addWidget(self.faceGeo_lineEdit)
        faceGeo_layout.addWidget(self.faceGeo_button)

        # additional geos layout
        addGeos_layout = QtWidgets.QHBoxLayout()
        addGeos_layout.setContentsMargins(1, 1, 1, 1)
        addGeos_layout.addWidget(self.addGeos_label)
        addGeos_layout.addWidget(self.addGeos_lineEdit)
        addGeos_layout.addWidget(self.addGeos_button)

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

        # eyeRoot layout
        eyeRoot_layout = QtWidgets.QHBoxLayout()
        eyeRoot_layout.addWidget(self.eyeRoot_label)
        eyeRoot_layout.addWidget(self.eyeRoot_lineEdit)
        eyeRoot_layout.addWidget(self.eyeRoot_button)

        # geometry input layout
        input_layout = QtWidgets.QVBoxLayout()
        input_layout.setContentsMargins(6, 1, 6, 2)
        input_layout.addLayout(faceGeo_layout)
        input_layout.addLayout(addGeos_layout)
        input_layout.addLayout(upEdges_layout)
        input_layout.addLayout(dnEdges_layout)
        input_layout.addLayout(eyeRoot_layout)

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

        self.eyeRoot_button.clicked.connect(
            partial(self.populate_element, self.eyeRoot_lineEdit)
        )

        self.faceGeo_button.clicked.connect(
            partial(self.populate_element, self.faceGeo_lineEdit)
        )

        self.addGeos_button.clicked.connect(
            partial(self.populate_element, self.addGeos_lineEdit, oType="transformList")
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
            self.buildDict["eyelids"] = [
                cmds.getAttr(rootLoc + ".name"),
                cmds.getAttr(rootLoc + ".side"),
                cmds.getAttr(rootLoc + ".faceGeo"),
                cmds.getAttr(rootLoc + ".addGeos"),
                cmds.getAttr(rootLoc + ".upEdges"),
                cmds.getAttr(rootLoc + ".dnEdges"),
                cmds.getAttr(rootLoc + ".eyeRoot"),
            ]

        else:
            self.buildDict["eyelids"] = [
                self.prefix_lineEdit.text(),
                self.side_QComboBox.currentText(),
                self.faceGeo_lineEdit.text(),
                self.addGeos_lineEdit.text(),
                self.upEdges_lineEdit.text(),
                self.dnEdges_lineEdit.text(),
                self.eyeRoot_lineEdit.text(),
            ]

    def buildRig(self):
        self.populateDict()
        eyelidsRig(*self.buildDict["eyelids"])

    def createLocsInScene(self):
        self.populateDict()
        name = self.buildDict["eyelids"][0]
        side = self.buildDict["eyelids"][1]
        faceGeo = self.buildDict["eyelids"][2]
        addGeos = self.buildDict["eyelids"][3]
        upEdges = self.buildDict["eyelids"][4]
        dnEdges = self.buildDict["eyelids"][5]
        eyeRoot = self.buildDict["eyelids"][6]

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
        cmds.addAttr(rootLoc, ln="faceGeo", dt="string")
        cmds.addAttr(rootLoc, ln="addGeos", dt="string")
        cmds.addAttr(rootLoc, ln="upEdges", dt="string")
        cmds.addAttr(rootLoc, ln="dnEdges", dt="string")
        cmds.addAttr(rootLoc, ln="eyeRoot", dt="string")
        cmds.addAttr(rootLoc, ln="upEyelidOpen", dt="float", dv=1)
        cmds.addAttr(rootLoc, ln="dnEyelidOpen", dt="float", dv=0.5)
        cmds.setAttr(rootLoc + ".builder", "mwEyelids", type="string")
        cmds.setAttr(rootLoc + ".name", name, type="string")
        cmds.setAttr(rootLoc + ".side", side, type="string")
        cmds.setAttr(rootLoc + ".faceGeo", faceGeo, type="string")
        cmds.setAttr(rootLoc + ".addGeos", addGeos, type="string")
        cmds.setAttr(rootLoc + ".upEdges", upEdges, type="string")
        cmds.setAttr(rootLoc + ".dnEdges", dnEdges, type="string")
        cmds.setAttr(rootLoc + ".eyeRoot", eyeRoot, type="string")

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

        midInLoc = mwRig.locator(name=name + "MidIn_" + side + "_loc", ls=0.25)
        cmds.setAttr(midInLoc + ".tx", -1 * sign)
        cmds.setAttr(midInLoc + ".tz", 3)
        cmds.parent(midInLoc, rootLoc)

        midLoc = mwRig.locator(name=name + "Mid_" + side + "_loc", ls=0.25)
        cmds.setAttr(midLoc + ".tx", 0)
        cmds.setAttr(midLoc + ".tz", 3)
        cmds.parent(midLoc, rootLoc)

        midOutLoc = mwRig.locator(name=name + "MidOut_" + side + "_loc", ls=0.25)
        cmds.setAttr(midOutLoc + ".tx", 1 * sign)
        cmds.setAttr(midOutLoc + ".tz", 3)
        cmds.parent(midOutLoc, rootLoc)

        outLoc = mwRig.locator(name=name + "Out_" + side + "_loc", ls=0.25)
        cmds.setAttr(outLoc + ".tx", 2 * sign)
        cmds.setAttr(outLoc + ".tz", 3)
        cmds.parent(outLoc, rootLoc)

        cmds.parent(rootLoc, "facialGuide_grp")

        # creates main controls
        inMainCtlShape = "scLeft"
        outMainCtlShape = "scRight"
        if side == "R":
            inMainCtlShape = "scRight"
            outMainCtlShape = "scLeft"

        inMainCtl = mwRig.createControlCrv(
            inLoc,
            name=name + "InMain_" + side + "_crv",
            offsetZ=1,
            size=0.5,
            shape=inMainCtlShape,
        )[0]
        upMainCtl = mwRig.createControlCrv(
            midLoc,
            name=name + "UpMain_" + side + "_crv",
            offsetZ=1,
            size=0.5,
            shape="scUp",
        )[0]
        outMainCtl = mwRig.createControlCrv(
            outLoc,
            name=name + "OutMain_" + side + "_crv",
            offsetZ=1,
            size=0.5,
            shape=outMainCtlShape,
        )[0]
        dnMainCtl = mwRig.createControlCrv(
            midLoc,
            name=name + "DnMain_" + side + "_crv",
            offsetZ=1,
            size=0.5,
            shape="scUp",
            sy=-1,
        )[0]

        # creates secondary controls
        inCtl = mwRig.createControlCrv(
            inLoc,
            name=name + "In_" + side + "_crv",
            offsetZ=1,
            size=0.2,
            shape="circle",
        )[0]
        up1Ctl = mwRig.createControlCrv(
            midInLoc,
            name=name + "Up1_" + side + "_crv",
            offsetY=0.5,
            offsetZ=1,
            size=0.2,
            shape="circle",
        )[0]
        up2Ctl = mwRig.createControlCrv(
            midLoc,
            name=name + "Up2_" + side + "_crv",
            offsetY=0.5,
            offsetZ=1,
            size=0.2,
            shape="circle",
        )[0]
        up3Ctl = mwRig.createControlCrv(
            midOutLoc,
            name=name + "Up3_" + side + "_crv",
            offsetY=0.5,
            offsetZ=1,
            size=0.2,
            shape="circle",
        )[0]
        outCtl = mwRig.createControlCrv(
            outLoc,
            name=name + "Out_" + side + "_crv",
            offsetZ=1,
            size=0.2,
            shape="circle",
        )[0]

        dn1Ctl = mwRig.createControlCrv(
            midInLoc,
            name=name + "Dn1_" + side + "_crv",
            offsetY=0.5,
            offsetZ=1,
            size=0.2,
            shape="circle",
            sy=-1,
        )[0]
        dn2Ctl = mwRig.createControlCrv(
            midLoc,
            name=name + "Dn2_" + side + "_crv",
            offsetY=0.5,
            offsetZ=1,
            size=0.2,
            shape="circle",
            sy=-1,
        )[0]
        dn3Ctl = mwRig.createControlCrv(
            midOutLoc,
            name=name + "Dn3_" + side + "_crv",
            offsetY=0.5,
            offsetZ=1,
            size=0.2,
            shape="circle",
            sy=-1,
        )[0]

        # colors
        inMainCtlShape = cmds.listRelatives(inMainCtl, c=1, s=1)[0]
        upMainCtlShape = cmds.listRelatives(upMainCtl, c=1, s=1)[0]
        outMainCtlShape = cmds.listRelatives(outMainCtl, c=1, s=1)[0]
        dnMainCtlShape = cmds.listRelatives(dnMainCtl, c=1, s=1)[0]

        inCtlShape = cmds.listRelatives(inCtl, c=1, s=1)[0]
        up1CtlShape = cmds.listRelatives(up1Ctl, c=1, s=1)[0]
        up2CtlShape = cmds.listRelatives(up2Ctl, c=1, s=1)[0]
        up3CtlShape = cmds.listRelatives(up3Ctl, c=1, s=1)[0]
        outCtlShape = cmds.listRelatives(outCtl, c=1, s=1)[0]
        dn1CtlShape = cmds.listRelatives(dn1Ctl, c=1, s=1)[0]
        dn2CtlShape = cmds.listRelatives(dn2Ctl, c=1, s=1)[0]
        dn3CtlShape = cmds.listRelatives(dn3Ctl, c=1, s=1)[0]

        if side == "L":
            cmds.setAttr(inMainCtlShape + ".overrideEnabled", 1)
            cmds.setAttr(inMainCtlShape + ".overrideColor", 6)
            cmds.setAttr(upMainCtlShape + ".overrideEnabled", 1)
            cmds.setAttr(upMainCtlShape + ".overrideColor", 6)
            cmds.setAttr(outMainCtlShape + ".overrideEnabled", 1)
            cmds.setAttr(outMainCtlShape + ".overrideColor", 6)
            cmds.setAttr(dnMainCtlShape + ".overrideEnabled", 1)
            cmds.setAttr(dnMainCtlShape + ".overrideColor", 6)

            cmds.setAttr(inCtlShape + ".overrideEnabled", 1)
            cmds.setAttr(inCtlShape + ".overrideColor", 5)
            cmds.setAttr(up1CtlShape + ".overrideEnabled", 1)
            cmds.setAttr(up1CtlShape + ".overrideColor", 5)
            cmds.setAttr(up2CtlShape + ".overrideEnabled", 1)
            cmds.setAttr(up2CtlShape + ".overrideColor", 5)
            cmds.setAttr(up3CtlShape + ".overrideEnabled", 1)
            cmds.setAttr(up3CtlShape + ".overrideColor", 5)
            cmds.setAttr(outCtlShape + ".overrideEnabled", 1)
            cmds.setAttr(outCtlShape + ".overrideColor", 5)
            cmds.setAttr(dn1CtlShape + ".overrideEnabled", 1)
            cmds.setAttr(dn1CtlShape + ".overrideColor", 5)
            cmds.setAttr(dn2CtlShape + ".overrideEnabled", 1)
            cmds.setAttr(dn2CtlShape + ".overrideColor", 5)
            cmds.setAttr(dn3CtlShape + ".overrideEnabled", 1)
            cmds.setAttr(dn3CtlShape + ".overrideColor", 5)

        if side == "R":
            cmds.setAttr(inMainCtlShape + ".overrideEnabled", 1)
            cmds.setAttr(inMainCtlShape + ".overrideColor", 13)
            cmds.setAttr(upMainCtlShape + ".overrideEnabled", 1)
            cmds.setAttr(upMainCtlShape + ".overrideColor", 13)
            cmds.setAttr(outMainCtlShape + ".overrideEnabled", 1)
            cmds.setAttr(outMainCtlShape + ".overrideColor", 13)
            cmds.setAttr(dnMainCtlShape + ".overrideEnabled", 1)
            cmds.setAttr(dnMainCtlShape + ".overrideColor", 13)

            cmds.setAttr(inCtlShape + ".overrideEnabled", 1)
            cmds.setAttr(inCtlShape + ".overrideColor", 12)
            cmds.setAttr(up1CtlShape + ".overrideEnabled", 1)
            cmds.setAttr(up1CtlShape + ".overrideColor", 12)
            cmds.setAttr(up2CtlShape + ".overrideEnabled", 1)
            cmds.setAttr(up2CtlShape + ".overrideColor", 12)
            cmds.setAttr(up3CtlShape + ".overrideEnabled", 1)
            cmds.setAttr(up3CtlShape + ".overrideColor", 12)
            cmds.setAttr(outCtlShape + ".overrideEnabled", 1)
            cmds.setAttr(outCtlShape + ".overrideColor", 12)
            cmds.setAttr(dn1CtlShape + ".overrideEnabled", 1)
            cmds.setAttr(dn1CtlShape + ".overrideColor", 12)
            cmds.setAttr(dn2CtlShape + ".overrideEnabled", 1)
            cmds.setAttr(dn2CtlShape + ".overrideColor", 12)
            cmds.setAttr(dn3CtlShape + ".overrideEnabled", 1)
            cmds.setAttr(dn3CtlShape + ".overrideColor", 12)

        if side == "C":
            cmds.setAttr(inMainCtlShape + ".overrideEnabled", 1)
            cmds.setAttr(inMainCtlShape + ".overrideColor", 14)
            cmds.setAttr(upMainCtlShape + ".overrideEnabled", 1)
            cmds.setAttr(upMainCtlShape + ".overrideColor", 14)
            cmds.setAttr(outMainCtlShape + ".overrideEnabled", 1)
            cmds.setAttr(outMainCtlShape + ".overrideColor", 14)
            cmds.setAttr(dnMainCtlShape + ".overrideEnabled", 1)
            cmds.setAttr(dnMainCtlShape + ".overrideColor", 14)

            cmds.setAttr(inCtlShape + ".overrideEnabled", 1)
            cmds.setAttr(inCtlShape + ".overrideColor", 7)
            cmds.setAttr(up1CtlShape + ".overrideEnabled", 1)
            cmds.setAttr(up1CtlShape + ".overrideColor", 7)
            cmds.setAttr(up2CtlShape + ".overrideEnabled", 1)
            cmds.setAttr(up2CtlShape + ".overrideColor", 7)
            cmds.setAttr(up3CtlShape + ".overrideEnabled", 1)
            cmds.setAttr(up3CtlShape + ".overrideColor", 7)
            cmds.setAttr(outCtlShape + ".overrideEnabled", 1)
            cmds.setAttr(outCtlShape + ".overrideColor", 7)
            cmds.setAttr(dn1CtlShape + ".overrideEnabled", 1)
            cmds.setAttr(dn1CtlShape + ".overrideColor", 7)
            cmds.setAttr(dn2CtlShape + ".overrideEnabled", 1)
            cmds.setAttr(dn2CtlShape + ".overrideColor", 7)
            cmds.setAttr(dn3CtlShape + ".overrideEnabled", 1)
            cmds.setAttr(dn3CtlShape + ".overrideColor", 7)

        cmds.select(d=1)


def showMwEyelidsUI(*args):
    gqt.showDialog(eyelidsRigUI)


if __name__ == "__main__":
    showMwEyelidsUI()

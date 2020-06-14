"""MW mouth rigger tool"""

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

import os

##########################################################
# Mouth constructor
##########################################################


def mouthRig(name, faceGeo, addGeos, upEdges, dnEdges, mouthRoot, facePolys=None):

    ######
    # Var
    ######

    rootLoc = name + "Root_C_loc"

    jawUpNurbsName = name + "JawUp_C_nurbs"
    jawDnNurbsName = name + "JawDn_C_nurbs"
    mainUpNurbsName = name + "MainUp_C_nurbs"
    mainDnNurbsName = name + "MainDn_C_nurbs"
    secUpNurbsName = name + "SecUp_C_nurbs"
    secDnNurbsName = name + "SecDn_C_nurbs"
    pivotsUpNurbsName = name + "PivotsUp_C_nurbs"
    pivotsDnNurbsName = name + "PivotsDn_C_nurbs"
    externalUpNurbsName = name + "ExternalUp_C_nurbs"
    externalDnNurbsName = name + "ExternalDn_C_nurbs"
    ctlPivotsUpNurbsName = name + "CtlPivotsUp_C_nurbs"
    ctlPivotsDnNurbsName = name + "CtlPivotsDn_C_nurbs"

    nurbsWidth = cmds.getAttr(name + "Root_C_loc.sx") / 2

    locList = [
        name + "Corner_R_loc",
        name + "Mid_R_loc",
        name + "Mid_C_loc",
        name + "Mid_L_loc",
        name + "Corner_L_loc",
    ]

    bMouthName = (
        cmds.getAttr(mouthRoot + ".comp_name")
        + "_"
        + cmds.getAttr(mouthRoot + ".comp_side")
        + str(cmds.getAttr(mouthRoot + ".comp_index"))
    )

    bMouthJawJnt = bMouthName + "_jaw_jnt"
    bMouthJawLipUpJnt = bMouthName + "_lipup_jnt"
    bMouthJawLipDnJnt = bMouthName + "_liplow_jnt"
    bMouthJawParJnt = cmds.listRelatives(bMouthJawJnt, p=1)[0]

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
        pm.displayWarning("Up edges may not share a loop")
        return

    check = mwRig.checkVertsInEdgeLoop(dnVerts)
    if check == False:
        pm.displayWarning("Dn edges may not share a loop")
        return

    # check if the rig already exist in the current scene
    if pm.ls(mwUtils.setName(name, "root", side="C")):
        pm.displayWarning(
            "The object %s already exists in the scene. Please"
            " choose another name prefix" % mwUtils.setName(name, "root", side="C")
        )
        return

    #####################
    # Root creation
    #####################

    mouth_root = str(
        primitive.addTransform(None, mwUtils.setName(name, "root", side="C"))
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

    cmds.rename("nurbs0_nurbs", jawUpNurbsName)
    cmds.delete(jawUpNurbsName, ch=1)

    cmds.select(d=1)
    cmds.delete("nurbs*_nurbs")
    cmds.reverseSurface(jawUpNurbsName)

    cmds.duplicate(jawUpNurbsName, n=jawDnNurbsName)
    cmds.duplicate(jawUpNurbsName, n=mainUpNurbsName)
    cmds.duplicate(jawUpNurbsName, n=mainDnNurbsName)
    cmds.duplicate(jawUpNurbsName, n=secUpNurbsName)
    cmds.duplicate(jawUpNurbsName, n=secDnNurbsName)
    cmds.duplicate(jawUpNurbsName, n=pivotsUpNurbsName)
    cmds.duplicate(jawUpNurbsName, n=pivotsDnNurbsName)
    cmds.duplicate(jawUpNurbsName, n=ctlPivotsUpNurbsName)
    cmds.duplicate(jawUpNurbsName, n=ctlPivotsDnNurbsName)

    pivotsGrp = cmds.createNode("transform", n=name + "Pivots_grp")
    cmds.parent(pivotsUpNurbsName, pivotsDnNurbsName, pivotsGrp)

    cmds.blendShape(
        jawUpNurbsName,
        mainUpNurbsName,
        secUpNurbsName,
        w=([0, 1], [1, 1]),
        n=name + "UpNurbs_C_bs",
    )

    cmds.blendShape(
        jawDnNurbsName,
        mainDnNurbsName,
        secDnNurbsName,
        w=([0, 1], [1, 1]),
        n=name + "DnNurbs_C_bs",
    )

    cmds.blendShape(
        jawUpNurbsName,
        mainUpNurbsName,
        pivotsUpNurbsName,
        w=([0, 1], [1, 1]),
        n=name + "PivotsUpNurbs_C_bs",
    )

    cmds.blendShape(
        jawDnNurbsName,
        mainDnNurbsName,
        pivotsDnNurbsName,
        w=([0, 1], [1, 1]),
        n=name + "PivotsDnNurbs_C_bs",
    )

    cmds.blendShape(
        jawUpNurbsName,
        mainUpNurbsName,
        ctlPivotsUpNurbsName,
        w=([0, 1], [1, 1]),
        n=name + "CtlPivotsUpNurbs_C_bs",
    )

    cmds.blendShape(
        jawDnNurbsName,
        mainDnNurbsName,
        ctlPivotsDnNurbsName,
        w=([0, 1], [1, 1]),
        n=name + "CtlPivotsDnNurbs_C_bs",
    )

    #####################
    # External nurbs creation
    #####################

    externalUplocList = [
        name + "CornerExternal_R_loc",
        name + "MidUpExternal_R_loc",
        name + "MidUpExternal_C_loc",
        name + "MidUpExternal_L_loc",
        name + "CornerExternal_L_loc",
    ]

    externalDnlocList = [
        name + "CornerExternal_R_loc",
        name + "MidDnExternal_R_loc",
        name + "MidDnExternal_C_loc",
        name + "MidDnExternal_L_loc",
        name + "CornerExternal_L_loc",
    ]

    # external up nurbs

    for i, v in enumerate(externalUplocList):
        if externalUplocList[i] != externalUplocList[-1]:
            loc1 = v
            loc2 = externalUplocList[i + 1]

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
            vert1 = mwRig.getClosestVtx(faceGeo, transform=loc1)
            vert2 = mwRig.getClosestVtx(faceGeo, transform=loc2)
            edgeLoop = mwRig.getVertLoop(vert1, vert2)
            cmds.select(edgeLoop, r=1)
            tempCurve = "curve" + str(i) + str(i + 1) + "_crv"
            tempCrv = cmds.polyToCurve(form=2, degree=1)[0]
            cmds.rename(tempCrv, tempCurve)
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

    cmds.rename("nurbs0_nurbs", externalUpNurbsName)
    cmds.delete(externalUpNurbsName, ch=1)

    cmds.select(d=1)
    cmds.delete("nurbs*_nurbs")
    cmds.reverseSurface(externalUpNurbsName)

    # external dn nurbs

    for i, v in enumerate(externalDnlocList):
        if externalDnlocList[i] != externalDnlocList[-1]:
            loc1 = v
            loc2 = externalDnlocList[i + 1]

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
            vert1 = mwRig.getClosestVtx(faceGeo, transform=loc1)
            vert2 = mwRig.getClosestVtx(faceGeo, transform=loc2)
            edgeLoop = mwRig.getVertLoop(vert1, vert2)
            cmds.select(edgeLoop, r=1)
            tempCurve = "curve" + str(i) + str(i + 1) + "_crv"
            tempCrv = cmds.polyToCurve(form=2, degree=1)[0]
            cmds.rename(tempCrv, tempCurve)
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

    cmds.rename("nurbs0_nurbs", externalDnNurbsName)
    cmds.delete(externalDnNurbsName, ch=1)

    cmds.select(d=1)
    cmds.delete("nurbs*_nurbs")
    cmds.reverseSurface(externalDnNurbsName)

    cmds.blendShape(
        jawUpNurbsName, externalUpNurbsName, w=[0, 1], n=name + "tempExternalUp_C_bs",
    )

    cmds.blendShape(
        jawDnNurbsName, externalDnNurbsName, w=[0, 1], n=name + "tempExternalDn_C_bs",
    )

    #####################
    # Jaw setup
    #####################

    jawLipUpZtr = cmds.createNode("transform", n=name + "JawLipUp_C_ztr")
    mwRig.snap(jawLipUpZtr, bMouthJawParJnt)

    cmds.select(d=1)
    jawUpHold = cmds.joint(n=name + "JawLipUp_C_jnt")
    mwRig.snap(jawUpHold, jawLipUpZtr, sr=1)
    cmds.parent(jawUpHold, jawLipUpZtr)

    mwUtils.connectAttr(bMouthJawLipUpJnt + ".tx", jawUpHold + ".tx")
    mwUtils.connectAttr(bMouthJawLipUpJnt + ".ty", jawUpHold + ".ty")
    mwUtils.connectAttr(bMouthJawLipUpJnt + ".tz", jawUpHold + ".tz")
    mwUtils.connectAttr(bMouthJawLipUpJnt + ".rx", jawUpHold + ".rx")
    mwUtils.connectAttr(bMouthJawLipUpJnt + ".ry", jawUpHold + ".ry")
    mwUtils.connectAttr(bMouthJawLipUpJnt + ".rz", jawUpHold + ".rz")
    mwUtils.connectAttr(bMouthJawLipUpJnt + ".sx", jawUpHold + ".sx")
    mwUtils.connectAttr(bMouthJawLipUpJnt + ".sy", jawUpHold + ".sy")
    mwUtils.connectAttr(bMouthJawLipUpJnt + ".sz", jawUpHold + ".sz")

    cmds.select(d=1)
    jawJnrb = cmds.joint(n=name + "Jaw_C_jnt")
    jawLocalZtr = cmds.createNode(
        "transform", n=mwUtils.renameSuffix(jawJnrb, suffix="ztr")
    )
    mwRig.snap(jawLocalZtr, bMouthJawParJnt)
    cmds.parent(jawJnrb, jawLocalZtr)
    mwUtils.connectAttr(bMouthJawJnt + ".tx", jawJnrb + ".tx")
    mwUtils.connectAttr(bMouthJawJnt + ".ty", jawJnrb + ".ty")
    mwUtils.connectAttr(bMouthJawJnt + ".tz", jawJnrb + ".tz")
    mwUtils.connectAttr(bMouthJawJnt + ".rx", jawJnrb + ".rx")
    mwUtils.connectAttr(bMouthJawJnt + ".ry", jawJnrb + ".ry")
    mwUtils.connectAttr(bMouthJawJnt + ".rz", jawJnrb + ".rz")
    mwUtils.connectAttr(bMouthJawJnt + ".sx", jawJnrb + ".sx")
    mwUtils.connectAttr(bMouthJawJnt + ".sy", jawJnrb + ".sy")
    mwUtils.connectAttr(bMouthJawJnt + ".sz", jawJnrb + ".sz")

    cmds.select(d=1)
    jawLipDnJnt = cmds.joint(n=name + "JawLipDn_C_jnt")
    mwRig.snap(jawLipDnJnt, bMouthJawJnt)
    cmds.parent(jawLipDnJnt, jawJnrb)
    mwUtils.connectAttr(bMouthJawLipDnJnt + ".tx", jawLipDnJnt + ".tx")
    mwUtils.connectAttr(bMouthJawLipDnJnt + ".ty", jawLipDnJnt + ".ty")
    mwUtils.connectAttr(bMouthJawLipDnJnt + ".tz", jawLipDnJnt + ".tz")
    mwUtils.connectAttr(bMouthJawLipDnJnt + ".rx", jawLipDnJnt + ".rx")
    mwUtils.connectAttr(bMouthJawLipDnJnt + ".ry", jawLipDnJnt + ".ry")
    mwUtils.connectAttr(bMouthJawLipDnJnt + ".rz", jawLipDnJnt + ".rz")
    mwUtils.connectAttr(bMouthJawLipDnJnt + ".sx", jawLipDnJnt + ".sx")
    mwUtils.connectAttr(bMouthJawLipDnJnt + ".sy", jawLipDnJnt + ".sy")
    mwUtils.connectAttr(bMouthJawLipDnJnt + ".sz", jawLipDnJnt + ".sz")

    cmds.select(d=1)
    jawLCornerJnrb = cmds.joint(n=name + "JawLipCorner_L_jnt")

    tempPac = cmds.parentConstraint(jawUpHold, jawLipDnJnt, jawLCornerJnrb, mo=False)
    cmds.delete(tempPac)

    cmds.parentConstraint(
        jawUpHold,
        jawLipDnJnt,
        jawLCornerJnrb,
        mo=True,
        n=mwUtils.renameSuffix(jawLCornerJnrb, suffix="pac"),
    )
    jawLCornerJnrbZtr = mwUtils.addZtr(jawLCornerJnrb)

    cmds.select(d=1)
    jawRCornerJnrb = cmds.joint(n=name + "JawLipCorner_R_jnt")

    tempPac = cmds.parentConstraint(jawUpHold, jawLipDnJnt, jawRCornerJnrb, mo=False)
    cmds.delete(tempPac)

    cmds.parentConstraint(
        jawUpHold,
        jawLipDnJnt,
        jawRCornerJnrb,
        mo=True,
        n=mwUtils.renameSuffix(jawRCornerJnrb, suffix="pac"),
    )
    jawRCornerJnrbZtr = mwUtils.addZtr(jawRCornerJnrb)

    #####################
    # Follicle creation
    #####################

    sknFolList = []
    mainJntFolList = []
    secJntFolList = []
    pivotsFolList = []
    externalFolList = []
    jawFolList = []
    ctlPivotsFolList = []

    for ud, edges in enumerate([upEdges, dnEdges]):
        if ud == 0:
            ud = "Up"
            mainNurbs = mainUpNurbsName
            secNurbs = secUpNurbsName
            jawNurbs = jawUpNurbsName
            pivotsNurbs = pivotsUpNurbsName
            externalNurbs = externalUpNurbsName
            ctlPivotsNurbs = ctlPivotsUpNurbsName

        else:
            ud = "Dn"
            mainNurbs = mainDnNurbsName
            secNurbs = secDnNurbsName
            jawNurbs = jawDnNurbsName
            pivotsNurbs = pivotsDnNurbsName
            externalNurbs = externalDnNurbsName
            ctlPivotsNurbs = ctlPivotsDnNurbsName

        cmds.select(edges, r=1)
        cmds.select(cmds.polyListComponentConversion(fe=1, tv=1))
        verts = cmds.ls(sl=1, fl=1)
        firstVert = mwRig.getFirstVertFromEdges(edges, mode="LtoR")
        verts = mwRig.sortVerts(verts, startVtx=firstVert)

        numFol = len(verts)

        for i in range(0, numFol):
            vtx = verts[i]
            vtxPos = cmds.xform(vtx, q=1, t=1, ws=1)

            # creates follicles
            # gets fol names
            middle = int(numFol // 2)
            if i < middle:
                j = middle - i
                side = "R"

            if numFol % 2 == 1:
                if i == middle:
                    j = middle - i
                    side = "C"

                elif i > middle:
                    j = -(middle - i)
                    side = "L"

            elif numFol % 2 == 0:
                if i >= middle:
                    j = -(middle - i) + 1
                    side = "L"

            folSuff = ud + str(j) + "_" + side + "_fol"

            # main nurbs
            folName = name + "Main" + folSuff
            fol = mwRig.createFollicleInNurbs(folName, mainNurbs, vtxPos)
            sknFolList.append(fol)
            mainJntFolList.append(fol)

            # sec nurbs
            folName = name + "Sec" + folSuff
            fol = mwRig.createFollicleInNurbs(folName, secNurbs, vtxPos)
            sknFolList.append(fol)
            secJntFolList.append(fol)

            # jaw nurbs
            folName = name + "Jaw" + folSuff
            fol = mwRig.createFollicleInNurbs(folName, jawNurbs, vtxPos)
            sknFolList.append(fol)
            jawFolList.append(fol)

            # pivots nurbs
            folName = name + "Pivots" + folSuff
            fol = mwRig.createFollicleInNurbs(folName, pivotsNurbs, vtxPos)
            sknFolList.append(fol)
            pivotsFolList.append(fol)

            # external nurbs
            folName = name + "External" + folSuff
            fol = mwRig.createFollicleInNurbs(folName, externalNurbs, vtxPos)
            sknFolList.append(fol)
            externalFolList.append(fol)

        for loc in locList:
            vtxPos = cmds.xform(loc, q=1, t=1, ws=1)

            # ctl pivots nurbs
            if ud == "Up":
                folName = mwUtils.renameSuffix(loc, suffix="fol", add="CtlPivot")
                folName = folName.replace("Mid", "Up")
                fol = mwRig.createFollicleInNurbs(folName, ctlPivotsNurbs, vtxPos)
                sknFolList.append(fol)
                ctlPivotsFolList.append(fol)

            if ud == "Dn" and "Corner" not in loc:
                folName = mwUtils.renameSuffix(loc, suffix="fol", add="CtlPivot")
                folName = folName.replace("Mid", "Dn")
                fol = mwRig.createFollicleInNurbs(folName, ctlPivotsNurbs, vtxPos)
                sknFolList.append(fol)
                ctlPivotsFolList.append(fol)

    # cleanup
    cmds.select(sknFolList, r=1)
    sknFolGrp = cmds.group(n=name + "SknFol_C_grp")
    cmds.parent(mainUpNurbsName, mouth_root)
    cmds.parent(secUpNurbsName, mouth_root)
    cmds.parent(mainDnNurbsName, mouth_root)
    cmds.parent(secDnNurbsName, mouth_root)
    cmds.parent(jawUpNurbsName, mouth_root)
    cmds.parent(jawDnNurbsName, mouth_root)

    ##################
    # Main and secondary joints and controls
    ##################

    # mainJoints

    mainJnrbNames = [
        name + "CornerMain_R_jnrb",
        name + "UpMain_C_jnrb",
        name + "CornerMain_L_jnrb",
        name + "DnMain_C_jnrb",
    ]
    mainLocList = [
        name + "Corner_R_loc",
        name + "Mid_C_loc",
        name + "Corner_L_loc",
        name + "Mid_C_loc",
    ]

    mainUpJnrbList = [
        name + "CornerMain_R_jnrb",
        name + "UpMain_C_jnrb",
        name + "CornerMain_L_jnrb",
    ]

    mainDnJnrbList = [
        name + "CornerMain_R_jnrb",
        name + "DnMain_C_jnrb",
        name + "CornerMain_L_jnrb",
    ]

    # left and up main controls
    for i, l in enumerate(mainLocList):
        cmds.select(d=1)
        jnrbName = mainJnrbNames[i]
        if "_R" not in jnrbName and "Dn" not in jnrbName:
            jnrb = cmds.joint(n=jnrbName)
            jnrZtr = mwUtils.addZtr(jnrb)
            cmds.parent(jnrZtr, l)

            cmds.setAttr(jnrZtr + ".tx", 0)
            cmds.setAttr(jnrZtr + ".ty", 0)
            cmds.setAttr(jnrZtr + ".tz", 0)
            cmds.setAttr(jnrZtr + ".rx", 0)
            cmds.setAttr(jnrZtr + ".ry", 0)
            cmds.setAttr(jnrZtr + ".rz", 0)
            cmds.setAttr(jnrZtr + ".sx", 1)
            cmds.setAttr(jnrZtr + ".sy", 1)
            cmds.setAttr(jnrZtr + ".sz", 1)

            cmds.parent(jnrZtr, w=1)

            # creates and connects control
            crv = jnrb.replace("jnrb", "crv")
            crvCopy = cmds.duplicate(crv, n=crv.replace("crv", "crvCopy"))
            cmds.setAttr(crvCopy[0] + ".rx", lock=0)
            cmds.setAttr(crvCopy[0] + ".ry", lock=0)
            cmds.setAttr(crvCopy[0] + ".rz", lock=0)
            cmds.setAttr(crvCopy[0] + ".sx", lock=0)
            cmds.setAttr(crvCopy[0] + ".sy", lock=0)
            cmds.setAttr(crvCopy[0] + ".sz", lock=0)
            cmds.makeIdentity(crvCopy, apply=1)
            crvShape = cmds.listRelatives(crvCopy, c=1, s=1)
            ctl = jnrb.replace("jnrb", "ctl")
            crvShape = cmds.rename(crvShape, ctl + "Shape")
            cmds.createNode("transform", n=ctl)
            mwRig.snap(ctl, jnrb)
            cmds.parent(crvShape, ctl, s=1, r=1)
            cmds.delete(crvCopy)

            mwUtils.addZtr(ctl)

    # right and dn main controls
    for i, l in enumerate(mainLocList):
        cmds.select(d=1)
        jnrbName = mainJnrbNames[i]
        if "_R" in jnrbName or "Dn" in jnrbName:
            jnrb = jnrbName
            jnrbZtr = mwUtils.renameSuffix(jnrb, suffix="ztr")
            jnrbOp = jnrb.replace("Dn", "Up").replace("_R", "_L")
            jnrbOpZtr = mwUtils.renameSuffix(jnrbOp, suffix="ztr")
            cmds.duplicate(jnrbOpZtr, name=jnrbZtr)
            cmds.rename(cmds.listRelatives(jnrbZtr, c=1, f=1)[0], jnrb)
            if "_R" in jnrbName:
                cmds.createNode("transform", n="tempGrp")
                cmds.parent(jnrbZtr, "tempGrp")
                cmds.setAttr("tempGrp" + ".sx", -1)
                cmds.parent(jnrbZtr, w=1)
                cmds.delete("tempGrp")
            if "Dn" in jnrbName:
                cmds.setAttr(jnrbZtr + ".sy", -1)

            ctl = jnrb.replace("jnrb", "ctl")
            ctlZtr = mwUtils.renameSuffix(ctl, suffix="ztr")
            ctlOp = ctl.replace("Dn", "Up").replace("_R", "_L")
            ctlOpZtr = mwUtils.renameSuffix(ctlOp, suffix="ztr")
            cmds.duplicate(ctlOpZtr, name=ctlZtr)
            cmds.rename(cmds.listRelatives(ctlZtr, c=1, f=1)[0], ctl)
            if "_R" in jnrbName:
                cmds.createNode("transform", n="tempGrp")
                cmds.parent(ctlZtr, "tempGrp")
                cmds.setAttr("tempGrp" + ".sx", -1)
                cmds.parent(ctlZtr, w=1)
                cmds.delete("tempGrp")
                cmds.setAttr(
                    cmds.listRelatives(ctl, c=1, s=1)[0] + ".overrideColor", 13
                )
            if "Dn" in jnrbName:
                cmds.setAttr(ctlZtr + ".sy", -1)

    # connects main ctls to jrbs

    for i, l in enumerate(mainLocList):
        cmds.select(d=1)
        jnrb = mainJnrbNames[i]
        ctl = jnrb.replace("jnrb", "ctl")

        mwUtils.connectAttr(ctl + ".tx", jnrb + ".tx")
        mwUtils.connectAttr(ctl + ".ty", jnrb + ".ty")
        mwUtils.connectAttr(ctl + ".tz", jnrb + ".tz")

        mwUtils.connectAttr(ctl + ".rx", jnrb + ".rx")
        mwUtils.connectAttr(ctl + ".ry", jnrb + ".ry")
        mwUtils.connectAttr(ctl + ".rz", jnrb + ".rz")

        mwUtils.connectAttr(ctl + ".sx", jnrb + ".sx")
        mwUtils.connectAttr(ctl + ".sy", jnrb + ".sy")
        mwUtils.connectAttr(ctl + ".sz", jnrb + ".sz")

    # secondary joints
    cmds.select(d=1)

    secLocList = [
        name + "Corner_R_loc",
        name + "Mid_R_loc",
        name + "Mid_C_loc",
        name + "Mid_L_loc",
        name + "Corner_L_loc",
        name + "Mid_R_loc",
        name + "Mid_C_loc",
        name + "Mid_L_loc",
    ]

    secUpJnrbList = [
        name + "Corner_R_jnrb",
        name + "Up_R_jnrb",
        name + "Up_C_jnrb",
        name + "Up_L_jnrb",
        name + "Corner_L_jnrb",
    ]

    secDnJnrbList = [
        name + "Corner_R_jnrb",
        name + "Dn_R_jnrb",
        name + "Dn_C_jnrb",
        name + "Dn_L_jnrb",
        name + "Corner_L_jnrb",
    ]

    secJnrbList = [
        name + "Corner_R_jnrb",
        name + "Up_R_jnrb",
        name + "Up_C_jnrb",
        name + "Up_L_jnrb",
        name + "Corner_L_jnrb",
        name + "Dn_R_jnrb",
        name + "Dn_C_jnrb",
        name + "Dn_L_jnrb",
    ]

    # center, left and up sec controls
    for i, l in enumerate(secLocList):
        cmds.select(d=1)
        jnrbName = secJnrbList[i]
        if "_R" not in jnrbName and "Dn" not in jnrbName:
            jnrb = cmds.joint(n=jnrbName)
            jnrZtr = mwUtils.addZtr(jnrb)
            cmds.parent(jnrZtr, l)

            cmds.setAttr(jnrZtr + ".tx", 0)
            cmds.setAttr(jnrZtr + ".ty", 0)
            cmds.setAttr(jnrZtr + ".tz", 0)
            cmds.setAttr(jnrZtr + ".rx", 0)
            cmds.setAttr(jnrZtr + ".ry", 0)
            cmds.setAttr(jnrZtr + ".rz", 0)
            cmds.setAttr(jnrZtr + ".sx", 1)
            cmds.setAttr(jnrZtr + ".sy", 1)
            cmds.setAttr(jnrZtr + ".sz", 1)

            cmds.parent(jnrZtr, w=1)

            # creates and connects control
            crv = jnrb.replace("jnrb", "crv")
            crvCopy = cmds.duplicate(crv, n=crv.replace("crv", "crvCopy"))
            cmds.setAttr(crvCopy[0] + ".rx", lock=0)
            cmds.setAttr(crvCopy[0] + ".ry", lock=0)
            cmds.setAttr(crvCopy[0] + ".rz", lock=0)
            cmds.setAttr(crvCopy[0] + ".sx", lock=0)
            cmds.setAttr(crvCopy[0] + ".sy", lock=0)
            cmds.setAttr(crvCopy[0] + ".sz", lock=0)
            cmds.makeIdentity(crvCopy, apply=1)
            crvShape = cmds.listRelatives(crvCopy, c=1, s=1)
            ctl = jnrb.replace("jnrb", "ctl")
            crvShape = cmds.rename(crvShape, ctl + "Shape")
            cmds.createNode("transform", n=ctl)
            mwRig.snap(ctl, jnrb)
            cmds.parent(crvShape, ctl, s=1, r=1)
            cmds.delete(crvCopy)

            mwUtils.addZtr(ctl)

    # center, left and dn sec controls
    for i, l in enumerate(secLocList):
        cmds.select(d=1)
        jnrbName = secJnrbList[i]
        if "_R" not in jnrbName and "Dn" in jnrbName:
            jnrb = jnrbName
            jnrbZtr = mwUtils.renameSuffix(jnrb, suffix="ztr")
            jnrbOp = jnrb.replace("Dn", "Up")
            jnrbOpZtr = mwUtils.renameSuffix(jnrbOp, suffix="ztr")
            cmds.duplicate(jnrbOpZtr, name=jnrbZtr)
            cmds.rename(cmds.listRelatives(jnrbZtr, c=1, f=1)[0], jnrb)

            cmds.setAttr(jnrbZtr + ".sy", -1)

            ctl = jnrb.replace("jnrb", "ctl")
            ctlZtr = mwUtils.renameSuffix(ctl, suffix="ztr")
            ctlOp = ctl.replace("Dn", "Up")
            ctlOpZtr = mwUtils.renameSuffix(ctlOp, suffix="ztr")
            cmds.duplicate(ctlOpZtr, name=ctlZtr)
            cmds.rename(cmds.listRelatives(ctlZtr, c=1, f=1)[0], ctl)

            cmds.setAttr(ctlZtr + ".sy", -1)

    # right and up sec controls
    for i, l in enumerate(secLocList):
        cmds.select(d=1)
        jnrbName = secJnrbList[i]
        if "_R" in jnrbName and "Dn" not in jnrbName:
            jnrb = jnrbName
            jnrbZtr = mwUtils.renameSuffix(jnrb, suffix="ztr")
            jnrbOp = jnrb.replace("_R", "_L")
            jnrbOpZtr = mwUtils.renameSuffix(jnrbOp, suffix="ztr")
            cmds.duplicate(jnrbOpZtr, name=jnrbZtr)
            cmds.rename(cmds.listRelatives(jnrbZtr, c=1, f=1)[0], jnrb)

            cmds.createNode("transform", n="tempGrp")
            cmds.parent(jnrbZtr, "tempGrp")
            cmds.setAttr("tempGrp" + ".sx", -1)
            cmds.parent(jnrbZtr, w=1)
            cmds.delete("tempGrp")

            ctl = jnrb.replace("jnrb", "ctl")
            ctlZtr = mwUtils.renameSuffix(ctl, suffix="ztr")
            ctlOp = ctl.replace("_R", "_L")
            ctlOpZtr = mwUtils.renameSuffix(ctlOp, suffix="ztr")
            cmds.duplicate(ctlOpZtr, name=ctlZtr)
            cmds.rename(cmds.listRelatives(ctlZtr, c=1, f=1)[0], ctl)

            cmds.createNode("transform", n="tempGrp")
            cmds.parent(ctlZtr, "tempGrp")
            cmds.setAttr("tempGrp" + ".sx", -1)
            cmds.parent(ctlZtr, w=1)
            cmds.delete("tempGrp")
            cmds.setAttr(cmds.listRelatives(ctl, c=1, s=1)[0] + ".overrideColor", 12)

    # right and dn sec controls
    for i, l in enumerate(secLocList):
        cmds.select(d=1)
        jnrbName = secJnrbList[i]
        if "_R" in jnrbName and "Dn" in jnrbName:
            jnrb = jnrbName
            jnrbZtr = mwUtils.renameSuffix(jnrb, suffix="ztr")
            jnrbOp = jnrb.replace("Dn", "Up")
            jnrbOpZtr = mwUtils.renameSuffix(jnrbOp, suffix="ztr")
            cmds.duplicate(jnrbOpZtr, name=jnrbZtr)
            cmds.rename(cmds.listRelatives(jnrbZtr, c=1, f=1)[0], jnrb)

            cmds.setAttr(jnrbZtr + ".sy", -1)

            ctl = jnrb.replace("jnrb", "ctl")
            ctlZtr = mwUtils.renameSuffix(ctl, suffix="ztr")
            ctlOp = ctl.replace("Dn", "Up")
            ctlOpZtr = mwUtils.renameSuffix(ctlOp, suffix="ztr")
            cmds.duplicate(ctlOpZtr, name=ctlZtr)
            cmds.rename(cmds.listRelatives(ctlZtr, c=1, f=1)[0], ctl)

            cmds.setAttr(ctlZtr + ".sy", -1)

            cmds.setAttr(cmds.listRelatives(ctl, c=1, s=1)[0] + ".overrideColor", 12)

    # connects sec ctls to jrbs

    for i, l in enumerate(secLocList):
        cmds.select(d=1)
        jnrb = secJnrbList[i]
        ctl = jnrb.replace("jnrb", "ctl")

        mwUtils.connectAttr(ctl + ".tx", jnrb + ".tx")
        mwUtils.connectAttr(ctl + ".ty", jnrb + ".ty")
        mwUtils.connectAttr(ctl + ".tz", jnrb + ".tz")

        mwUtils.connectAttr(ctl + ".rx", jnrb + ".rx")
        mwUtils.connectAttr(ctl + ".ry", jnrb + ".ry")
        mwUtils.connectAttr(ctl + ".rz", jnrb + ".rz")

        mwUtils.connectAttr(ctl + ".sx", jnrb + ".sx")
        mwUtils.connectAttr(ctl + ".sy", jnrb + ".sy")
        mwUtils.connectAttr(ctl + ".sz", jnrb + ".sz")

    # skins nurbs

    mainUpSkcName = mwUtils.renameSuffix(mainUpNurbsName, suffix="skc")
    mainDnSkcName = mwUtils.renameSuffix(mainDnNurbsName, suffix="skc")
    secUpSkcName = mwUtils.renameSuffix(secUpNurbsName, suffix="skc")
    secDnSkcName = mwUtils.renameSuffix(secDnNurbsName, suffix="skc")
    jawUpNurbsSkcName = mwUtils.renameSuffix(mainUpNurbsName, suffix="skc", add="jawUp")
    jawDnNurbsSkcName = mwUtils.renameSuffix(mainDnNurbsName, suffix="skc", add="jawDn")
    externalUpSkcName = mwUtils.renameSuffix(externalUpNurbsName, suffix="skc")
    externalDnSkcName = mwUtils.renameSuffix(externalDnNurbsName, suffix="skc")

    cmds.select(mainUpJnrbList, r=1)
    cmds.select(mainUpNurbsName, add=1)
    cmds.skinCluster(n=mainUpSkcName)

    cmds.select(mainDnJnrbList, r=1)
    cmds.select(mainDnNurbsName, add=1)
    cmds.skinCluster(n=mainDnSkcName)

    cmds.select(secUpJnrbList, r=1)
    cmds.select(secUpNurbsName, add=1)
    cmds.skinCluster(n=secUpSkcName)

    cmds.select(secDnJnrbList, r=1)
    cmds.select(secDnNurbsName, add=1)
    cmds.skinCluster(n=secDnSkcName)

    cmds.select(jawLCornerJnrb, jawRCornerJnrb, jawUpHold, jawUpNurbsName, r=1)
    cmds.skinCluster(tsb=True, n=jawUpNurbsSkcName)

    cmds.select(jawLCornerJnrb, jawRCornerJnrb, jawJnrb, jawDnNurbsName, r=1)
    cmds.skinCluster(tsb=True, n=jawDnNurbsSkcName)

    cmds.select(jawLCornerJnrb, jawRCornerJnrb, jawUpHold, externalUpNurbsName, r=1)
    cmds.skinCluster(tsb=True, n=externalUpSkcName)

    cmds.select(jawLCornerJnrb, jawRCornerJnrb, jawJnrb, externalDnNurbsName, r=1)
    cmds.skinCluster(tsb=True, n=externalDnSkcName)

    ##################
    # Loads saved nurb skins
    ##################

    nurbList = [
        jawUpNurbsName,
        jawDnNurbsName,
        mainUpNurbsName,
        mainDnNurbsName,
        secUpNurbsName,
        secDnNurbsName,
        pivotsUpNurbsName,
        pivotsDnNurbsName,
    ]
    path = mwUtils.getPath(to="skin")

    for nurb in nurbList:
        try:
            filename = os.path.join(path, nurb + ".gSkin")
            skin.importSkin(filename)
        except:
            cmds.warning("Could not load skin for", nurb)

    cmds.delete(name + "tempExternalUp_C_bs")
    cmds.delete(name + "tempExternalDn_C_bs")

    ##################
    # Mouth corners path
    ##################
    crv = name + "CornersPath_C_crv"
    crvShape = cmds.listRelatives(crv, c=1, s=1)[0]

    for side in "LR":
        jnrb = name + "CornerMain_" + side + "_jnrb"
        ctl = jnrb.replace("jnrb", "ctl")

        mpa = cmds.createNode("motionPath", n=name + "Main_" + side + "_mpath")

        cmds.connectAttr(crvShape + ".worldSpace[0]", mpa + ".geometryPath")
        cmds.setAttr(mpa + ".fractionMode", 0)
        cmds.setAttr(mpa + ".follow", 1)
        tempGrp = cmds.createNode("transform", n="temp_grp")
        mwRig.snap(tempGrp, jnrb)
        tempNpoc = cmds.createNode("nearestPointOnCurve", n="temp_npoc")
        cmds.connectAttr(crvShape + ".worldSpace", tempNpoc + ".inputCurve")
        cmds.connectAttr(tempGrp + ".tx", tempNpoc + ".inPositionX")
        cmds.connectAttr(tempGrp + ".ty", tempNpoc + ".inPositionY")
        cmds.connectAttr(tempGrp + ".tz", tempNpoc + ".inPositionZ")
        param = cmds.getAttr(tempNpoc + ".parameter")

        uValueGrp = cmds.createNode("transform", n=name + "PathUValue_" + side + "_grp")

        cmds.delete(tempGrp, tempNpoc)

        jnrbPosZtr = cmds.createNode(
            "transform", n=name + "CornerMainJnrbPosition_" + side + "_ztr"
        )
        jnrbPos = cmds.createNode(
            "transform", n=name + "CornerMainJnrbP_" + side + "_position"
        )

        cmds.parent(jnrbPos, jnrbPosZtr)

        cmds.connectAttr(mpa + ".xCoordinate", jnrbPos + ".tx")
        cmds.connectAttr(mpa + ".yCoordinate", jnrbPos + ".ty")
        cmds.connectAttr(mpa + ".zCoordinate", jnrbPos + ".tz")

        cmds.connectAttr(mpa + ".rotateX", jnrbPos + ".rx")
        cmds.connectAttr(mpa + ".rotateY", jnrbPos + ".ry")
        cmds.connectAttr(mpa + ".rotateZ", jnrbPos + ".rz")

        cmds.connectAttr(mpa + ".message", jnrbPos + ".specifiedManipLocation")
        cmds.connectAttr(mpa + ".rotateOrder", jnrbPos + ".rotateOrder")

        cmds.disconnectAttr(ctl + ".tx", jnrb + ".tx")

        if side == "L":
            paramEnd = 4
        else:
            paramEnd = 0

        cmds.setAttr(ctl + ".tx", 0)
        cmds.setAttr(uValueGrp + ".tx", param)
        cmds.setDrivenKeyframe(
            uValueGrp + ".tx", cd=ctl + ".tx", itt="linear", ott="linear"
        )

        cmds.setAttr(ctl + ".tx", 2)
        cmds.setAttr(uValueGrp + ".tx", paramEnd)
        cmds.setDrivenKeyframe(
            uValueGrp + ".tx", cd=ctl + ".tx", itt="linear", ott="linear"
        )

        cmds.selectKey(uValueGrp + "_translateX")
        cmds.setInfinity(pri="cycleRelative", poi="cycleRelative")

        cmds.setAttr(ctl + ".tx", 0)

        cmds.connectAttr(uValueGrp + ".tx", mpa + ".uValue")

        cmds.parent(name + "CornerMainJnrb_" + side + "_ztr", jnrbPos)

    ##################
    # Main skin joints
    ##################

    for f in mainJntFolList:
        cmds.select(d=1)
        jntName = f.replace("fol", "jnt")
        pos = cmds.xform(f, q=1, t=1, ws=1)
        jnt = cmds.joint(n=jntName, p=pos, a=1)
        ztr = mwUtils.addZtr(jnt)

        # creates plusMinusAverage to connect fols to jnts
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

        mwUtils.connectAttr(pma + ".output3Dx", jnt + ".tx")
        mwUtils.connectAttr(pma + ".output3Dy", jnt + ".ty")
        mwUtils.connectAttr(pma + ".output3Dz", jnt + ".tz")

    cmds.select(d=1)
    holdJoint = name + "MainHold_C_jnt"
    if not cmds.objExists(holdJoint):
        holdJoint = cmds.joint(n=holdJoint)

    ##################
    # Jaw facial geo layer
    ##################

    faceGeoPly, facialCut, facialBody, addGeosPly = mwRig.createFacialGeoLayer(
        faceGeo, addGeos, name + "Jaw", facePolys=facePolys, addToBs=False
    )

    skcName = mwUtils.renameSuffix(faceGeoPly, "skc", add="")
    jawJoints = [
        name + "Jaw_C_jnt",
        name + "JawLipUp_C_jnt",
        name + "JawLipDn_C_jnt",
        name + "JawLipCorner_L_jnt",
        name + "JawLipCorner_R_jnt",
    ]
    cmds.select(jawJoints, r=1)
    cmds.select(holdJoint, add=1)
    jnts = cmds.ls(sl=1)
    cmds.select(faceGeoPly, add=1)

    if not cmds.objExists(skcName):
        cmds.skinCluster(n=skcName, tsb=1)
    else:
        cmds.skinCluster(skcName, e=1, addInfluence=jnts)

    if cmds.listRelatives(faceGeoPly, p=1) != name + "_C_root":
        cmds.parent(faceGeoPly, name + "_C_root")

    if addGeosPly != []:
        for g in addGeosPly:
            cmds.select(jnts, r=1)
            cmds.select(g, add=1)
            cmds.skinCluster(n=mwUtils.renameSuffix(g, "skc", add=""))

            cmds.parent(g, name + "_C_root")

    jawGeoPly = faceGeoPly

    ##################
    # Main facial geo layer
    ##################

    faceGeoPly, facialCut, facialBody, addGeosPly = mwRig.createFacialGeoLayer(
        faceGeo, addGeos, name + "Main", facePolys=facePolys
    )

    skcName = mwUtils.renameSuffix(faceGeoPly, "skc", add="")

    cmds.select(name + "Main*_?_jnt", r=1)
    cmds.select(holdJoint, add=1)
    jnts = cmds.ls(sl=1)
    cmds.select(faceGeoPly, add=1)

    if not cmds.objExists(skcName):
        cmds.skinCluster(n=skcName)
    else:
        cmds.skinCluster(skcName, e=1, addInfluence=jnts)

    if cmds.listRelatives(faceGeoPly, p=1) != name + "_C_root":
        cmds.parent(faceGeoPly, name + "_C_root")

    if addGeosPly != []:
        for g in addGeosPly:
            cmds.select(jnts, r=1)
            cmds.select(g, add=1)
            cmds.skinCluster(n=mwUtils.renameSuffix(g, "skc", add=""))

            cmds.parent(g, name + "_C_root")

    ##################
    # Sec skin joints
    ##################

    secJntList = []
    for f in secJntFolList:
        cmds.select(d=1)

        posGrp = cmds.createNode(
            "transform", n=mwUtils.renameSuffix(f, suffix="position", add="jnt")
        )
        posGrpZtr = mwUtils.addZtr(posGrp)
        mwRig.snap(posGrpZtr, f)

        cmds.select(d=1)

        jntName = f.replace("fol", "jnt")
        pos = cmds.xform(f, q=1, t=1, ws=1)
        jnt = cmds.joint(n=jntName, p=pos, a=1)
        ztr = mwUtils.addZtr(jnt)
        secJntList.append(jnt)

        cmds.parent(ztr, posGrp)

        # creates plusMinusAverage to connect fols to jnts
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

        mwUtils.connectAttr(pma + ".output3Dx", posGrp + ".tx")
        mwUtils.connectAttr(pma + ".output3Dy", posGrp + ".ty")
        mwUtils.connectAttr(pma + ".output3Dz", posGrp + ".tz")

    cmds.select(d=1)
    holdJoint = name + "SecHold_C_jnt"
    if not cmds.objExists(holdJoint):
        holdJoint = cmds.joint(n=holdJoint)

    ##################
    # Sec facial geo layer
    ##################

    faceGeoPly, facialCut, facialBody, addGeosPly = mwRig.createFacialGeoLayer(
        faceGeo, addGeos, name + "Sec", facePolys=facePolys
    )

    skcName = mwUtils.renameSuffix(faceGeoPly, "skc", add="")

    # blendshapes jaw geo
    bsName = mwUtils.renameSuffix(jawGeoPly, "bs")
    cmds.blendShape(jawGeoPly, faceGeoPly, w=[0, 1], n=bsName)

    cmds.select(name + "Sec*_?_jnt", r=1)
    jnts = cmds.ls(sl=1)
    cmds.select(holdJoint, add=1)
    cmds.select(faceGeoPly, add=1)

    if not cmds.objExists(skcName):
        cmds.skinCluster(n=skcName)
    else:
        cmds.skinCluster(skcName, e=1, addInfluence=jnts)

    if cmds.listRelatives(faceGeoPly, p=1) != name + "_C_root":
        cmds.parent(faceGeoPly, name + "_C_root")

    if addGeosPly != []:
        for g in addGeosPly:
            cmds.select(jnts, r=1)
            cmds.select(holdJoint, add=1)
            cmds.select(g, add=1)
            cmds.skinCluster(n=mwUtils.renameSuffix(g, "skc", add=""))

            cmds.parent(g, name + "_C_root")

    ##################
    # Prebind
    ##################

    pivotsAimGrp = cmds.createNode("transform", n=name + "PivotsAim_C_grp")
    cmds.parent(pivotsAimGrp, pivotsGrp)

    for f in pivotsFolList:

        mainFol = f.replace("Sec", "Main")
        secJnt = f.replace("Pivots", "Sec").replace("fol", "jnt")

        aimNullGrp = cmds.createNode(
            "transform", n=mwUtils.renameSuffix(f, suffix="null", add="Aim")
        )
        aimNullGrpZtr = mwUtils.addZtr(aimNullGrp)
        mwRig.snap(aimNullGrpZtr, jawJnrb)
        cmds.parent(aimNullGrpZtr, pivotsAimGrp)
        tempAc = cmds.aimConstraint(
            f,
            aimNullGrpZtr,
            mo=0,
            worldUpType="scene",
            aimVector=[0, 0, 1],
            upVector=[0, 1, 0],
            worldUpVector=[0, 1, 0],
        )
        cmds.delete(tempAc)
        cmds.aimConstraint(
            f,
            aimNullGrp,
            mo=0,
            worldUpType="scene",
            aimVector=[0, 0, 1],
            upVector=[0, 1, 0],
            worldUpVector=[0, 1, 0],
        )

        prebindGrp = cmds.createNode("transform", n=secJnt.replace("_jnt", "_prebind"))
        mwRig.snap(prebindGrp, secJnt)
        cmds.parent(prebindGrp, mainFol)

        cmds.connectAttr(aimNullGrp + ".rx", prebindGrp + ".rx")
        cmds.connectAttr(aimNullGrp + ".ry", prebindGrp + ".ry")
        cmds.connectAttr(aimNullGrp + ".rz", prebindGrp + ".rz")

        conn = cmds.connectionInfo(
            secJnt + ".worldMatrix[0]", destinationFromSource=True
        )

        addGeosSkcName = []

        for c in conn:
            skc = c.split(".matrix")[0]
            if skc != skcName:
                addGeosSkcName.append(skc)

        index = conn[0].split("matrix")[1][1:-1]

        cmds.connectAttr(
            prebindGrp + ".worldInverseMatrix[0]",
            skcName + ".bindPreMatrix[" + index + "]",
        )

        # check this

        for skc in addGeosSkcName:
            cmds.connectAttr(
                prebindGrp + ".worldInverseMatrix[0]",
                skc + ".bindPreMatrix[" + index + "]",
            )

    ##################
    # Sec joints scale
    ##################

    for j in secJntList:
        scaleGrp = mwUtils.renameSuffix(j, "scale")
        posGrp = mwUtils.renameSuffix(j, "position")
        jntZtr = mwUtils.renameSuffix(j, "ztr")
        cmds.createNode("transform", n=scaleGrp)
        scaleGrpZtr = mwUtils.addZtr(scaleGrp)
        mwRig.snap(scaleGrpZtr, j)
        cmds.parent(scaleGrpZtr, posGrp)
        cmds.parent(jntZtr, scaleGrp)

    for jnrb in secJnrbList:
        ctl = jnrb.replace("jnrb", "ctl")
        sub = mwUtils.renameSuffix(ctl, "sub", add="scale")
        cmds.createNode("plusMinusAverage", n=sub)
        cmds.connectAttr(jnrb + ".sx", sub + ".input3D[0].input3Dx")
        cmds.connectAttr(jnrb + ".sy", sub + ".input3D[0].input3Dy")
        cmds.connectAttr(jnrb + ".sz", sub + ".input3D[0].input3Dz")
        cmds.setAttr(sub + ".operation", 2)
        cmds.setAttr(sub + ".input3D[1].input3Dx", 1)
        cmds.setAttr(sub + ".input3D[1].input3Dy", 1)
        cmds.setAttr(sub + ".input3D[1].input3Dz", 1)

    multNodesDict = {}

    for j in secJntList:
        jntSide = j.split("_")[1][0]

        scaleGrp = mwUtils.renameSuffix(j, "scale")
        posGrp = mwUtils.renameSuffix(j, "position")
        sumPma = mwUtils.renameSuffix(j, "sum", add="scale")
        cmds.createNode("plusMinusAverage", n=sumPma)

        i = 0
        multNodesDict[j] = []

        for jnrb in secJnrbList:
            ctl = jnrb.replace("jnrb", "ctl")
            sub = mwUtils.renameSuffix(ctl, "sub", add="scale")

            cmds.setAttr(ctl + ".ty", 1)
            ypos = cmds.getAttr(posGrp + ".ty")
            cmds.setAttr(ctl + ".ty", 0)

            if ypos != 0:
                if ypos < 0:
                    ypos = -ypos
                side = ctl.split("_")[1]
                mult = (
                    j.split("_")[0]
                    + "Scale"
                    + ctl.split("_")[0]
                    + side
                    + "_"
                    + jntSide
                    + "C_mult"
                )

                multNodesDict[j].append([mult, jnrb])

                cmds.createNode("multiplyDivide", n=mult)
                cmds.connectAttr(sub + ".output3D", mult + ".input1")
                cmds.setAttr(mult + ".input2X", ypos)
                cmds.setAttr(mult + ".input2Y", ypos)
                cmds.setAttr(mult + ".input2Z", ypos)

                cmds.connectAttr(mult + ".output", sumPma + ".input3D[" + str(i) + "]")

                i += 1

            cmds.setAttr(sumPma + ".input3D[" + str(i) + "].input3Dx", 1)
            cmds.setAttr(sumPma + ".input3D[" + str(i) + "].input3Dy", 1)
            cmds.setAttr(sumPma + ".input3D[" + str(i) + "].input3Dz", 1)

        cmds.connectAttr(sumPma + ".output3Dx", scaleGrp + ".sx")
        cmds.connectAttr(sumPma + ".output3Dy", scaleGrp + ".sy")
        cmds.connectAttr(sumPma + ".output3Dz", scaleGrp + ".sz")

    ##################
    # Sec joints Roll
    ##################

    for j in secJntList:
        jntSide = j.split("_")[1][0]
        posGrp = mwUtils.renameSuffix(j, "position")
        scaleGrp = mwUtils.renameSuffix(j, "scale")
        scaleGrpZtr = mwUtils.renameSuffix(scaleGrp, "ztr")

        rotGrp = mwUtils.renameSuffix(j, suffix="rotation")
        cmds.createNode("transform", n=rotGrp)
        rotGrpZtr = mwUtils.addZtr(rotGrp)

        if "Up" in j:
            crv = name + "LipRollUp_C_crv"
        if "Dn" in j:
            crv = name + "LipRollDn_C_crv"

        npC = cmds.createNode("nearestPointOnCurve")
        pos = cmds.xform(j, t=1, ws=1, q=1)

        cmds.setAttr(npC + ".inPositionX", pos[0])
        cmds.setAttr(npC + ".inPositionY", pos[1])
        cmds.setAttr(npC + ".inPositionZ", pos[2])
        cmds.connectAttr(crv + "Shape.worldSpace", npC + ".inputCurve")

        pos = cmds.getAttr(npC + ".position")[0]
        pos = list(pos)

        cmds.setAttr(rotGrpZtr + ".tx", pos[0])
        cmds.setAttr(rotGrpZtr + ".ty", pos[1])
        cmds.setAttr(rotGrpZtr + ".tz", pos[2])

        cmds.delete(npC)

        cmds.parent(rotGrpZtr, posGrp)
        cmds.parent(scaleGrpZtr, rotGrp)

        sumPma = mwUtils.renameSuffix(j, suffix="sum", add="rotX")
        cmds.createNode("plusMinusAverage", n=sumPma)

        i = 0
        for multList in multNodesDict[j]:
            mult = multList[0]
            jnrb = multList[1]
            rotMult = cmds.duplicate(mult, n=mult.replace("Scale", "RotX"))[0]
            if "Dn" in j:
                mwUtils.connectAttr(jnrb + ".rx", rotMult + ".input1X", mode="negative")
            else:
                mwUtils.connectAttr(jnrb + ".rx", rotMult + ".input1X")

            cmds.connectAttr(rotMult + ".outputX", sumPma + ".input1D[" + str(i) + "]")

            i += 1

        cmds.connectAttr(sumPma + ".output1D", rotGrp + ".rx")

    ##################
    # Main ctls scale
    ##################

    upCtl = name + "UpMain_C_ctl"
    upJnrb = name + "UpMain_C_jnrb"
    dnCtl = name + "DnMain_C_ctl"
    dnJnrb = name + "DnMain_C_jnrb"

    upSub = mwUtils.renameSuffix(upCtl, suffix="sub", add="Scale")
    dnSub = mwUtils.renameSuffix(dnCtl, suffix="sub", add="Scale")
    cmds.createNode("plusMinusAverage", n=upSub)
    cmds.createNode("plusMinusAverage", n=dnSub)

    cmds.connectAttr(upJnrb + ".sx", upSub + ".input3D[0].input3Dx")
    cmds.connectAttr(upJnrb + ".sy", upSub + ".input3D[0].input3Dy")
    cmds.connectAttr(upJnrb + ".sz", upSub + ".input3D[0].input3Dz")

    cmds.connectAttr(dnJnrb + ".sx", dnSub + ".input3D[0].input3Dx")
    cmds.connectAttr(dnJnrb + ".sy", dnSub + ".input3D[0].input3Dy")
    cmds.connectAttr(dnJnrb + ".sz", dnSub + ".input3D[0].input3Dz")

    cmds.setAttr(upSub + ".operation", 2)
    cmds.setAttr(dnSub + ".operation", 2)

    cmds.setAttr(upSub + ".input3D[1].input3Dx", 1)
    cmds.setAttr(upSub + ".input3D[1].input3Dy", 1)
    cmds.setAttr(upSub + ".input3D[1].input3Dz", 1)

    cmds.setAttr(dnSub + ".input3D[1].input3Dx", 1)
    cmds.setAttr(dnSub + ".input3D[1].input3Dy", 1)
    cmds.setAttr(dnSub + ".input3D[1].input3Dz", 1)

    for j in secJntList:
        jntSide = j.split("_")[1][0]
        posGrp = mwUtils.renameSuffix(j, "position")
        rotGrp = mwUtils.renameSuffix(j, suffix="rotation")
        rotGrpZtr = mwUtils.renameSuffix(rotGrp, suffix="ztr")

        mainScaleGrp = mwUtils.renameSuffix(j, suffix="scale", add="main")
        cmds.createNode("transform", n=mainScaleGrp)
        mainScaleGrpZtr = mwUtils.addZtr(mainScaleGrp)
        mwRig.snap(mainScaleGrpZtr, upCtl, sr=1, ss=1)
        cmds.parent(mainScaleGrpZtr, posGrp)
        cmds.parent(rotGrpZtr, mainScaleGrp)

        sumPma = mwUtils.renameSuffix(j, "sum", add="mainScale")
        cmds.createNode("plusMinusAverage", n=sumPma)

        i = 0

        for ctl in [upCtl, dnCtl]:
            if ctl == upCtl:
                sub = upSub
            elif ctl == dnCtl:
                sub = dnSub
            cmds.setAttr(ctl + ".ty", 1)
            ypos = cmds.getAttr(posGrp + ".ty")
            cmds.setAttr(ctl + ".ty", 0)

            if ypos != 0:
                if ypos < 0:
                    ypos = -ypos
                side = ctl.split("_")[1]
                mult = (
                    j.split("_")[0]
                    + "MainScale"
                    + ctl.split("_")[0]
                    + side
                    + "_"
                    + jntSide
                    + "_mult"
                )

                cmds.createNode("multiplyDivide", n=mult)
                cmds.connectAttr(sub + ".output3D", mult + ".input1")
                cmds.setAttr(mult + ".input2X", ypos)
                cmds.setAttr(mult + ".input2Y", ypos)
                cmds.setAttr(mult + ".input2Z", ypos)

                cmds.connectAttr(mult + ".output", sumPma + ".input3D[" + str(i) + "]")

                i += 1

            cmds.setAttr(sumPma + ".input3D[" + str(i) + "].input3Dx", 1)
            cmds.setAttr(sumPma + ".input3D[" + str(i) + "].input3Dy", 1)
            cmds.setAttr(sumPma + ".input3D[" + str(i) + "].input3Dz", 1)

        cmds.connectAttr(sumPma + ".output3Dx", mainScaleGrp + ".sx")
        cmds.connectAttr(sumPma + ".output3Dy", mainScaleGrp + ".sy")
        cmds.connectAttr(sumPma + ".output3Dz", mainScaleGrp + ".sz")

    ##################
    # Sec joints orientation
    ##################

    externalGrp = cmds.createNode("transform", n=name + "External_C_grp")
    externalFolGrp = cmds.createNode("transform", n=name + "ExternalFol_C_grp")
    cmds.parent(externalFolGrp, externalGrp)

    cmds.parent(externalFolList, externalFolGrp)

    cmds.parent(externalUpNurbsName, externalGrp)
    cmds.parent(externalDnNurbsName, externalGrp)

    for j in secJntList:
        pivotFol = j.replace("Sec", "Pivots").replace("_jnt", "_fol")
        aimNullGrp = mwUtils.renameSuffix(pivotFol, suffix="null", add="Aim")

        scaleGrp = mwUtils.renameSuffix(j, "scale")
        orientGrp = mwUtils.renameSuffix(j, suffix="orientation")
        jntZtr = mwUtils.renameSuffix(j, "ztr")
        cmds.createNode("transform", n=orientGrp)
        orientGrpZtr = mwUtils.addZtr(orientGrp)
        mwRig.snap(orientGrpZtr, j, sr=1, ss=1)
        cmds.parent(orientGrpZtr, scaleGrp)
        cmds.parent(jntZtr, orientGrp)

        cmds.connectAttr(aimNullGrp + ".rx", orientGrp + ".rx")
        cmds.connectAttr(aimNullGrp + ".ry", orientGrp + ".ry")

    for f in externalFolList:
        upv = mwUtils.renameSuffix(f, suffix="upv", add="")
        cmds.createNode("transform", n=upv)
        cmds.parent(upv, f)
        cmds.setAttr(upv + ".tx", 0)
        cmds.setAttr(upv + ".ty", 0)
        cmds.setAttr(upv + ".tz", 0.1)
        cmds.setAttr(upv + ".rx", 0)
        cmds.setAttr(upv + ".ry", 0)
        cmds.setAttr(upv + ".rz", 0)

        jawFol = f.replace("External", "Jaw")

        orientNull = mwUtils.renameSuffix(jawFol, suffix="null", add="orientation")
        cmds.createNode("transform", n=orientNull)
        orientNullZtr = mwUtils.addZtr(orientNull)
        cmds.parent(orientNullZtr, jawFol)
        cmds.setAttr(orientNullZtr + ".tx", 0)
        cmds.setAttr(orientNullZtr + ".ty", 0)
        cmds.setAttr(orientNullZtr + ".tz", 0)
        cmds.setAttr(orientNullZtr + ".rx", 0)
        cmds.setAttr(orientNullZtr + ".ry", 0)
        cmds.setAttr(orientNullZtr + ".rz", 0)

        tempAc = cmds.aimConstraint(
            f,
            orientNullZtr,
            mo=0,
            worldUpType="object",
            worldUpObject=upv,
            aimVector=[0, 1, 0],
            upVector=[0, 0, 1],
            worldUpVector=[0, 0, 1],
        )
        cmds.delete(tempAc)
        cmds.aimConstraint(
            f,
            orientNull,
            mo=0,
            worldUpType="object",
            worldUpObject=upv,
            aimVector=[0, 0, 1],
            upVector=[0, 0, 1],
            worldUpVector=[0, 0, 1],
        )

        jnt = f.replace("External", "Sec").replace("_fol", "_jnt")
        orientGrp = mwUtils.renameSuffix(jnt, suffix="orientation")

        cmds.connectAttr(orientNull + ".rz", orientGrp + ".rz")

    ##################
    # Sec ctls pivots
    ##################

    ctlPivotsGrp = cmds.createNode("transform", n=name + "CtlPivots_C_grp")
    jawUpvGrp = name + "Jaw_C_upv"
    cmds.createNode("transform", n=jawUpvGrp)
    cmds.parent(jawUpvGrp, jawJnrb)
    cmds.setAttr(jawUpvGrp + ".tx", 0)
    cmds.setAttr(jawUpvGrp + ".ty", 1)
    cmds.setAttr(jawUpvGrp + ".tz", 1)
    cmds.setAttr(jawUpvGrp + ".rx", 0)
    cmds.setAttr(jawUpvGrp + ".ry", 0)
    cmds.setAttr(jawUpvGrp + ".rz", 0)

    cmds.parent(ctlPivotsUpNurbsName, ctlPivotsDnNurbsName, ctlPivotsGrp)

    ctlPivotsRefs = cmds.createNode("transform", n=name + "CtlPivotsRefs_C_grp")
    cmds.parent(ctlPivotsRefs, ctlPivotsGrp)

    for jnrb in secJnrbList:

        ctl = jnrb.replace("jnrb", "ctl")
        jnrbZtr = mwUtils.renameSuffix(jnrb, suffix="ztr")

        pivot = mwUtils.renameSuffix(jnrb, suffix="pivot")
        cmds.createNode("transform", n=pivot)
        pivotZtr = mwUtils.addZtr(pivot)
        mwRig.snap(pivotZtr, jnrb, sr=1, ss=1)
        cmds.parent(jnrbZtr, pivot)

        fol = mwUtils.renameSuffix(jnrb, suffix="fol", add="CtlPivot")
        sub = mwUtils.renameSuffix(fol, suffix="sub", add="")
        cmds.createNode("plusMinusAverage", n=sub)

        cmds.connectAttr(fol + ".tx", sub + ".input3D[0].input3Dx")
        cmds.connectAttr(fol + ".ty", sub + ".input3D[0].input3Dy")
        cmds.connectAttr(fol + ".tz", sub + ".input3D[0].input3Dz")
        tx = cmds.getAttr(fol + ".tx")
        ty = cmds.getAttr(fol + ".ty")
        tz = cmds.getAttr(fol + ".tz")
        cmds.setAttr(sub + ".input3D[1].input3Dx", tx)
        cmds.setAttr(sub + ".input3D[1].input3Dy", ty)
        cmds.setAttr(sub + ".input3D[1].input3Dz", tz)
        cmds.setAttr(sub + ".operation", 2)

        cmds.connectAttr(sub + ".output3Dx", pivot + ".tx")
        cmds.connectAttr(sub + ".output3Dy", pivot + ".ty")
        cmds.connectAttr(sub + ".output3Dz", pivot + ".tz")

        ref = mwUtils.renameSuffix(ctl, suffix="ref", add="jaw")
        cmds.createNode("transform", n=ref)
        refZtr = mwUtils.addZtr(ref)
        mwRig.snap(refZtr, jawJnrb)
        cmds.parent(refZtr, ctlPivotsRefs)

        tempAc = cmds.aimConstraint(
            fol,
            refZtr,
            mo=0,
            worldUpType="objectrotation",
            worldUpObject=jawUpvGrp,
            aimVector=[0, 0, 1],
            upVector=[0, 1, 0],
            worldUpVector=[0, 1, 0],
        )
        cmds.delete(tempAc)
        cmds.aimConstraint(
            fol,
            ref,
            mo=0,
            worldUpType="objectrotation",
            worldUpObject=jawUpvGrp,
            aimVector=[0, 0, 1],
            upVector=[0, 1, 0],
            worldUpVector=[0, 1, 0],
        )
        cmds.connectAttr(ref + ".rx", pivot + ".rx")
        cmds.connectAttr(ref + ".ry", pivot + ".ry")
        cmds.connectAttr(ref + ".rz", pivot + ".rz")

        prebind = mwUtils.renameSuffix(jnrb, suffix="prebind")
        cmds.createNode("transform", n=prebind)
        prebindZtr = mwUtils.addZtr(prebind)

        mwRig.snap(prebindZtr, jnrb)

        cmds.parent(prebindZtr, pivot)

        findSkinCluster = cmds.listHistory(jnrb, pdo=1, il=2, f=1)
        scs = cmds.ls(findSkinCluster, typ="skinCluster")

        for i, sc in enumerate(scs):
            conn = cmds.connectionInfo(
                jnrb + ".worldMatrix[0]", destinationFromSource=True
            )
            print "**********************"
            print sc
            print conn
            index = conn[i].split("matrix")[1][1:-1]

            cmds.connectAttr(
                prebind + ".worldInverseMatrix[0]",
                sc + ".bindPreMatrix[" + index + "]",
            )

    ##################
    # Corner jaw follow
    ##################

    cmds.addAttr(
        name + "CornerMain_L_ctl", ln="followJaw", at="float", min=0, max=1, dv=0.5, k=1
    )
    cmds.addAttr(
        name + "CornerMain_R_ctl", ln="followJaw", at="float", min=0, max=1, dv=0.5, k=1
    )
    mwUtils.connectAttr(
        name + "CornerMain_L_ctl.followJaw",
        name + "JawLipCornerJnt_L_pac." + name + "JawLipUp_C_jntW0",
        mode="reverse",
    )
    mwUtils.connectAttr(
        name + "CornerMain_L_ctl.followJaw",
        name + "JawLipCornerJnt_L_pac." + name + "JawLipDn_C_jntW1",
    )
    mwUtils.connectAttr(
        name + "CornerMain_R_ctl.followJaw",
        name + "JawLipCornerJnt_R_pac." + name + "JawLipUp_C_jntW0",
        mode="reverse",
    )
    mwUtils.connectAttr(
        name + "CornerMain_R_ctl.followJaw",
        name + "JawLipCornerJnt_R_pac." + name + "JawLipDn_C_jntW1",
    )

    ##################
    # Sticky lips
    ##################

    upJnts = []
    dnJnts = []
    upLJnts = []
    dnLJnts = []
    upRJnts = []
    dnRJnts = []
    for j in secJntList:
        if "Up" in j:
            upJnts.append(j)
        elif "Dn" in j:
            dnJnts.append(j)

    if len(upJnts) != len(dnJnts):
        cmds.warning(
            "Upper lip joint number is different from lower joint number. Aborting sticky setup."
        )

    elif len(upJnts) == len(dnJnts):
        cmds.addAttr(
            name + "CornerMain_L_ctl", ln="sticky", at="float", min=0, max=1, dv=0, k=1
        )
        cmds.addAttr(
            name + "CornerMain_R_ctl", ln="sticky", at="float", min=0, max=1, dv=0, k=1
        )

        stickyAttrs = cmds.createNode("transform", n=name + "StickyAttributes_C_null")
        cmds.parent(stickyAttrs, mouth_root)
        mwUtils.lockHideAttr(stickyAttrs)

        CIndex = (len(upJnts) + 1) / 2 - 1

        upCJnt = upJnts[CIndex]
        dnCJnt = dnJnts[CIndex]
        stickyDict = {}

        for j in upJnts:
            if upJnts.index(j) < CIndex:
                upLJnts.append(j)
            elif upJnts.index(j) > CIndex:
                upRJnts.append(j)

        for j in dnJnts:
            if dnJnts.index(j) < CIndex:
                dnLJnts.append(j)
            elif dnJnts.index(j) > CIndex:
                dnRJnts.append(j)

        i = len(upRJnts)
        for j in upLJnts:
            cmds.addAttr(
                stickyAttrs,
                ln="sticky" + str(i) + "L",
                at="float",
                min=0,
                max=1,
                dv=0,
                k=1,
            )
            div = cmds.createNode(
                "multiplyDivide", n=name + "Sticky" + str(i) + "L_C_div"
            )
            cmds.connectAttr(stickyAttrs + ".sticky" + str(i) + "L", div + ".input1X")
            cmds.setAttr(div + ".input2X", 2)
            cmds.setAttr(div + ".operation", 2)
            clamp = cmds.createNode("clamp", n=name + "Sticky" + str(i) + "L_C_clamp")
            cmds.setAttr(clamp + ".minR", 0)
            cmds.setAttr(clamp + ".maxR", 1)
            cmds.connectAttr(clamp + ".outputR", stickyAttrs + ".sticky" + str(i) + "L")
            stickyDict[j] = "Sticky" + str(i) + "L"
            dnJnt = j.replace("Up", "Dn")
            stickyDict[dnJnt] = "Sticky" + str(i) + "L"
            i -= 1

        cmds.addAttr(stickyAttrs, ln="sticky0C", at="float", min=0, max=1, dv=0, k=1)
        div = cmds.createNode("multiplyDivide", n=name + "Sticky0C_C_div")
        cmds.connectAttr(stickyAttrs + ".sticky0C", div + ".input1X")
        cmds.setAttr(div + ".input2X", 2)
        cmds.setAttr(div + ".operation", 2)
        clamp = cmds.createNode("clamp", n=name + "StickyC_C_clamp")
        cmds.setAttr(clamp + ".minR", 0)
        cmds.setAttr(clamp + ".maxR", 1)
        cmds.connectAttr(clamp + ".outputR", stickyAttrs + ".sticky0C")
        stickyDict[upJnts[CIndex]] = "Sticky0C"
        stickyDict[dnJnts[CIndex]] = "Sticky0C"

        i = 1
        for j in upRJnts:
            cmds.addAttr(
                stickyAttrs,
                ln="sticky" + str(i) + "R",
                at="float",
                min=0,
                max=1,
                dv=0,
                k=1,
            )
            div = cmds.createNode(
                "multiplyDivide", n=name + "Sticky" + str(i) + "R_C_div"
            )
            cmds.connectAttr(stickyAttrs + ".sticky" + str(i) + "R", div + ".input1X")
            cmds.setAttr(div + ".input2X", 2)
            cmds.setAttr(div + ".operation", 2)
            clamp = cmds.createNode("clamp", n=name + "Sticky" + str(i) + "R_C_clamp")
            cmds.setAttr(clamp + ".minR", 0)
            cmds.setAttr(clamp + ".maxR", 1)
            cmds.connectAttr(clamp + ".outputR", stickyAttrs + ".sticky" + str(i) + "R")
            stickyDict[j] = "Sticky" + str(i) + "R"
            dnJnt = j.replace("Up", "Dn")
            stickyDict[dnJnt] = "Sticky" + str(i) + "R"
            i += 1

        for j in secJntList:

            posGrp = mwUtils.renameSuffix(j, "position")
            mainScaleGrp = mwUtils.renameSuffix(j, suffix="scale", add="main")
            mainScaleGrpZtr = mwUtils.renameSuffix(mainScaleGrp, suffix="ztr")

            if int(stickyDict[j].split("Sticky")[1][:-1]) != CIndex:
                sticky = cmds.createNode(
                    "transform", n=mwUtils.renameSuffix(j, suffix="sticky")
                )
                stickyZtr = mwUtils.addZtr(sticky)

                mwRig.snap(stickyZtr, j)
                cmds.parent(stickyZtr, posGrp)
                cmds.parent(mainScaleGrpZtr, sticky)

                ref = mwUtils.renameSuffix(sticky, suffix="ref", add="opposite")
                cmds.createNode("transform", n=ref)
                cmds.parent(ref, stickyZtr)

        for j in secJntList:
            if int(stickyDict[j].split("Sticky")[1][:-1]) != CIndex:
                sticky = mwUtils.renameSuffix(j, suffix="sticky")
                stickyZtr = mwUtils.renameSuffix(sticky, suffix="ztr")
                ref = mwUtils.renameSuffix(sticky, suffix="ref", add="opposite")

                if "Up" in j:
                    opSticky = sticky.replace("Up", "Dn")
                elif "Dn" in j:
                    opSticky = sticky.replace("Dn", "Up")

                opStickyZtr = mwUtils.renameSuffix(opSticky, suffix="ztr")

                cmds.pointConstraint(opStickyZtr, ref)

                prb = mwUtils.renameSuffix(sticky, suffix="prb")
                cmds.createNode("pairBlend", n=prb)
                cmds.setAttr(prb + ".inTranslateX1", 0)
                cmds.setAttr(prb + ".inTranslateY1", 0)
                cmds.setAttr(prb + ".inTranslateZ1", 0)

                cmds.connectAttr(ref + ".tx", prb + ".inTranslateX2")
                cmds.connectAttr(ref + ".ty", prb + ".inTranslateY2")
                cmds.connectAttr(ref + ".tz", prb + ".inTranslateZ2")

                div = name + stickyDict[j] + "_C_div"
                cmds.connectAttr(div + ".outputX", prb + ".weight")

                cmds.connectAttr(prb + ".outTranslateX", sticky + ".tx")
                cmds.connectAttr(prb + ".outTranslateY", sticky + ".ty")
                cmds.connectAttr(prb + ".outTranslateZ", sticky + ".tz")

    ##################
    # Lips squetch
    ##################

    if len(upJnts) != len(dnJnts):
        cmds.warning(
            "Upper lip joint number is different from lower joint number. Aborting squetch setup."
        )

    elif len(upJnts) == len(dnJnts):

        ctlL = name + "CornerMain_L_ctl"
        ctlR = name + "CornerMain_R_ctl"

        cmds.addAttr(ctlL, ln="squetchOut", at="float", min=0, dv=0.25, k=1)
        cmds.addAttr(ctlL, ln="squetchIn", at="float", min=0, dv=0.5, k=1)
        cmds.addAttr(ctlR, ln="squetchOut", at="float", min=0, dv=0.25, k=1)
        cmds.addAttr(ctlR, ln="squetchIn", at="float", min=0, dv=0.5, k=1)

        ldist = cmds.createNode("distanceBetween", n=name + "Squetch_L_dist")
        rdist = cmds.createNode("distanceBetween", n=name + "Squetch_R_dist")

        upLipCMainFol = mainJntFolList[CIndex]
        upLipRMainFol = mainJntFolList[0]
        upLipLMainFol = mainJntFolList[CIndex * 2]

        cmds.connectAttr(upLipCMainFol + ".tx", ldist + ".point1X")
        cmds.connectAttr(upLipCMainFol + ".ty", ldist + ".point1Y")
        cmds.connectAttr(upLipCMainFol + ".tz", ldist + ".point1Z")
        cmds.connectAttr(upLipCMainFol + ".tx", rdist + ".point1X")
        cmds.connectAttr(upLipCMainFol + ".ty", rdist + ".point1Y")
        cmds.connectAttr(upLipCMainFol + ".tz", rdist + ".point1Z")

        cmds.connectAttr(upLipRMainFol + ".tx", rdist + ".point2X")
        cmds.connectAttr(upLipRMainFol + ".ty", rdist + ".point2Y")
        cmds.connectAttr(upLipRMainFol + ".tz", rdist + ".point2Z")
        cmds.connectAttr(upLipLMainFol + ".tx", ldist + ".point2X")
        cmds.connectAttr(upLipLMainFol + ".ty", ldist + ".point2Y")
        cmds.connectAttr(upLipLMainFol + ".tz", ldist + ".point2Z")

        ldiv = cmds.createNode("multiplyDivide", n=name + "Squetch_L_div")
        rdiv = cmds.createNode("multiplyDivide", n=name + "Squetch_R_div")
        cmds.setAttr(ldiv + ".operation", 2)
        cmds.setAttr(rdiv + ".operation", 2)

        cmds.connectAttr(ldist + ".distance", ldiv + ".input1X")
        cmds.connectAttr(rdist + ".distance", rdiv + ".input1X")

        ldistance = cmds.getAttr(ldist + ".distance")
        rdistance = cmds.getAttr(rdist + ".distance")

        cmds.setAttr(ldiv + ".input2X", ldistance)
        cmds.setAttr(rdiv + ".input2X", rdistance)

        lsub = cmds.createNode("plusMinusAverage", n=name + ".Squetch_L_sub")
        rsub = cmds.createNode("plusMinusAverage", n=name + ".Squetch_R_sub")
        cmds.setAttr(lsub + ".operation", 2)
        cmds.setAttr(rsub + ".operation", 2)

        cmds.connectAttr(ldiv + ".outputX", lsub + ".input1D[0]")
        cmds.connectAttr(rdiv + ".outputX", rsub + ".input1D[0]")

        cmds.setAttr(lsub + ".input1D[1]", 1)
        cmds.setAttr(rsub + ".input1D[1]", 1)

        lInClamp = cmds.createNode("clamp", n=name + ".SquetchIn_L_clamp")
        lOutClamp = cmds.createNode("clamp", n=name + ".SquetchOut_L_clamp")
        rInClamp = cmds.createNode("clamp", n=name + ".SquetchIn_R_clamp")
        rOutClamp = cmds.createNode("clamp", n=name + ".SquetchOut_R_clamp")

        cmds.connectAttr(lsub + ".output1D", lInClamp + ".inputR")
        cmds.connectAttr(lsub + ".output1D", lOutClamp + ".inputR")
        cmds.connectAttr(rsub + ".output1D", rInClamp + ".inputR")
        cmds.connectAttr(rsub + ".output1D", rOutClamp + ".inputR")

        cmds.setAttr(lOutClamp + ".minR", 0)
        cmds.setAttr(lOutClamp + ".maxR", 9999)
        cmds.setAttr(rOutClamp + ".minR", 0)
        cmds.setAttr(rOutClamp + ".maxR", 9999)

        cmds.setAttr(lInClamp + ".minR", -9999)
        cmds.setAttr(lInClamp + ".maxR", 0)
        cmds.setAttr(rInClamp + ".minR", -9999)
        cmds.setAttr(rInClamp + ".maxR", 0)

        i = 0
        jntNum = float(len(mainJntFolList)) / 2
        for f in mainJntFolList:
            jntName = f.replace("fol", "jnt")

            if "Up" in jntName:
                dnJnt = jntName.replace("Up", "Dn")
                sumName = mwUtils.renameSuffix(
                    jntName.replace("Up", ""), add="squetch", suffix="sum"
                )
                cmds.createNode("plusMinusAverage", n=sumName)
                cmds.setAttr(sumName + ".input1D[0]", 1)
                cmds.connectAttr(sumName + ".output1D", jntName + ".sy")
                cmds.connectAttr(sumName + ".output1D", dnJnt + ".sy")

                outL = mwUtils.renameSuffix(sumName, add="outL", suffix="mdv")
                outR = mwUtils.renameSuffix(sumName, add="outR", suffix="mdv")
                inL = mwUtils.renameSuffix(sumName, add="inL", suffix="mdv")
                inR = mwUtils.renameSuffix(sumName, add="inR", suffix="mdv")

                outTotalL = mwUtils.renameSuffix(sumName, add="outTotalL", suffix="mdv")
                outTotalR = mwUtils.renameSuffix(sumName, add="outTotalR", suffix="mdv")
                inTotalL = mwUtils.renameSuffix(sumName, add="inTotalL", suffix="mdv")
                inTotalR = mwUtils.renameSuffix(sumName, add="inTotalR", suffix="mdv")

                cmds.createNode("multiplyDivide", n=outL)
                cmds.createNode("multiplyDivide", n=outR)
                cmds.createNode("multiplyDivide", n=inL)
                cmds.createNode("multiplyDivide", n=inR)

                cmds.createNode("multiplyDivide", n=outTotalL)
                cmds.createNode("multiplyDivide", n=outTotalR)
                cmds.createNode("multiplyDivide", n=inTotalL)
                cmds.createNode("multiplyDivide", n=inTotalR)

                cmds.connectAttr(ctlL + ".squetchOut", outL + ".input1X")
                cmds.connectAttr(ctlR + ".squetchOut", outR + ".input1X")
                cmds.connectAttr(ctlL + ".squetchIn", inL + ".input1X")
                cmds.connectAttr(ctlR + ".squetchIn", inR + ".input1X")

                cmds.connectAttr(lOutClamp + ".outputR", outTotalL + ".input1X")
                cmds.connectAttr(rOutClamp + ".outputR", outTotalR + ".input1X")
                cmds.connectAttr(lInClamp + ".outputR", inTotalL + ".input1X")
                cmds.connectAttr(rInClamp + ".outputR", inTotalR + ".input1X")

                cmds.connectAttr(outL + ".outputX", outTotalL + ".input2X")
                cmds.connectAttr(outR + ".outputX", outTotalR + ".input2X")
                cmds.connectAttr(inL + ".outputX", inTotalL + ".input2X")
                cmds.connectAttr(inR + ".outputX", inTotalR + ".input2X")

                cmds.connectAttr(outTotalL + ".outputX", sumName + ".input1D[1]")
                cmds.connectAttr(outTotalR + ".outputX", sumName + ".input1D[2]")
                cmds.connectAttr(inTotalL + ".outputX", sumName + ".input1D[3]")
                cmds.connectAttr(inTotalR + ".outputX", sumName + ".input1D[4]")

                print jntName, "***********"

                print outR
                print outL
                print inR
                print inL
                val1 = float(i) / jntNum
                val2 = 1 - (float(i) / jntNum)
                print val1
                print val2
                cmds.setAttr(outR + ".input2X", -val2)
                cmds.setAttr(outL + ".input2X", -val1)
                cmds.setAttr(inR + ".input2X", -val2)
                cmds.setAttr(inL + ".input2X", -val1)

                i += 1

    ##################
    # Attach controls
    ##################

    ctlFolList = []

    # up main ctls
    nurbsName = secUpNurbsName
    for jnrb in mainUpJnrbList:
        ctl = jnrb.replace("jnrb", "ctl")
        pos = cmds.xform(jnrb, q=1, t=1, ws=1)
        folName = mwUtils.renameSuffix(jnrb, suffix="fol", add="Ctl")
        fol = mwRig.createFollicleInNurbs(folName, nurbsName, pos)
        mwRig.connectCtlToFol(ctl, folName)
        ctlFolList.append(fol)

    # dn main ctls
    nurbsName = secDnNurbsName
    for jnrb in mainDnJnrbList:
        if "Corner" not in jnrb:
            ctl = jnrb.replace("jnrb", "ctl")
            pos = cmds.xform(jnrb, q=1, t=1, ws=1)
            folName = mwUtils.renameSuffix(jnrb, suffix="fol", add="Ctl")
            fol = mwRig.createFollicleInNurbs(folName, nurbsName, pos)
            mwRig.connectCtlToFol(ctl, folName)
            ctlFolList.append(fol)

    # up sec ctls
    nurbsName = secUpNurbsName
    for jnrb in secUpJnrbList:
        ctl = jnrb.replace("jnrb", "ctl")
        pos = cmds.xform(jnrb, q=1, t=1, ws=1)
        folName = mwUtils.renameSuffix(jnrb, suffix="fol", add="Ctl")
        fol = mwRig.createFollicleInNurbs(folName, nurbsName, pos)
        mwRig.connectCtlToFol(ctl, folName)
        ctlFolList.append(fol)

    # dn sec ctls
    nurbsName = secDnNurbsName
    for jnrb in secDnJnrbList:
        if "Corner" not in jnrb:
            ctl = jnrb.replace("jnrb", "ctl")
            pos = cmds.xform(jnrb, q=1, t=1, ws=1)
            folName = mwUtils.renameSuffix(jnrb, suffix="fol", add="Ctl")
            fol = mwRig.createFollicleInNurbs(folName, nurbsName, pos)
            mwRig.connectCtlToFol(ctl, folName)
            ctlFolList.append(fol)

    cmds.select(ctlFolList, r=1)
    ctlFolGrp = cmds.group(n=name + "CtlFol_C_grp")

    ##################
    # Cleanup
    ##################

    cmds.select(name + "Main*Jnt*ztr", r=1)
    jntGrp = cmds.group(n=name + "Jnt_grp")

    sel = cmds.ls(name + "Sec*Jnt*Position*ztr")
    cmds.parent(sel, jntGrp)

    cmds.select(name + "*JnrbPivot*ztr", r=1)
    jnrbGrp = cmds.group(n=name + "Jnrb_grp")

    sel = [
        name + "*UpMainJnrb_C_ztr",
        name + "*DnMainJnrb_C_ztr",
        name + "CornerMainJnrbPosition_L_ztr",
        name + "CornerMainJnrbPosition_R_ztr",
    ]
    cmds.parent(sel, jnrbGrp)

    cmds.select(name + "*Ctl_*_ztr", r=1)
    ctlGrp = cmds.group(n=name + "Ctl_C_grp")

    cmds.select(sknFolGrp, ctlFolGrp, r=1)
    folGrp = cmds.group(n=name + "Fol_C_grp")

    if cmds.objExists(bMouthJawParJnt):
        mwUtils.constraint(bMouthJawParJnt, ctlGrp)
        mwUtils.constraint(bMouthJawParJnt, ctlGrp, type="scale")

    if cmds.listRelatives(name + "MainHold_C_jnt", p=1) == None:
        cmds.parent(name + "MainHold_C_jnt", jntGrp)

    if cmds.listRelatives(name + "SecHold_C_jnt", p=1) == None:
        cmds.parent(name + "SecHold_C_jnt", jntGrp)

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

    cmds.parent(name + "_C_root", facialSetupGrp)
    cmds.parent(jnrbGrp, name + "_C_root")
    cmds.parent(folGrp, name + "_C_root")
    cmds.parent(externalGrp, name + "_C_root")
    cmds.parent(ctlPivotsGrp, name + "_C_root")

    facialJointsGrp = "facialJoints_grp"
    if not cmds.objExists(facialJointsGrp):
        facialJointsGrp = cmds.createNode("transform", n=facialJointsGrp)
        cmds.setAttr(facialJointsGrp + ".v", 0)
        if cmds.objExists("jnt_org"):
            cmds.parent(facialJointsGrp, "jnt_org")
    cmds.parent(jntGrp, facialJointsGrp)

    pathGrps = cmds.ls(name + "PathUValue_*_grp")
    cmds.parent(pathGrps, mouth_root)

    cmds.parent(name + "Pivots_grp", mouth_root)

    cmds.parent(
        jawLocalZtr, jawLipUpZtr, jawLCornerJnrbZtr, jawRCornerJnrbZtr, mouth_root
    )

    # adds joints to set
    allJnts = cmds.ls(name + "*_?_jnt")
    assetName = mwUtils.getAsset()
    if cmds.objExists(assetName + "_deformers_grp"):
        cmds.sets(allJnts, add=assetName + "_deformers_grp")


##########################################################
# Mouth Rig UI
##########################################################


class mouthRigUI(MayaQWidgetDockableMixin, QtWidgets.QDialog):

    valueChanged = QtCore.Signal(int)

    def __init__(self, parent=None):
        super(mouthRigUI, self).__init__(parent)
        self.create()

    def create(self):

        self.setWindowTitle("mwMouth rigger")
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
        self.prefix_lineEdit.setText("mouth")

        # mouthRoot
        self.mouthRoot_label = QtWidgets.QLabel("Mouth root:")
        self.mouthRoot_lineEdit = QtWidgets.QLineEdit()
        self.mouthRoot_button = QtWidgets.QPushButton("<<")

        # options
        self.options_group = QtWidgets.QGroupBox("Options")
        self.symmetric_check = QtWidgets.QCheckBox("Symmetric")
        self.symmetric_check.setChecked(True)

        # build button
        self.createLocs_button = QtWidgets.QPushButton("Create locators")
        self.build_button = QtWidgets.QPushButton("Build mouth rig")

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

        # mouthRoot layout
        mouthRoot_layout = QtWidgets.QHBoxLayout()
        mouthRoot_layout.addWidget(self.mouthRoot_label)
        mouthRoot_layout.addWidget(self.mouthRoot_lineEdit)
        mouthRoot_layout.addWidget(self.mouthRoot_button)

        # geometry input layout
        input_layout = QtWidgets.QVBoxLayout()
        input_layout.setContentsMargins(6, 1, 6, 2)
        input_layout.addLayout(faceGeo_layout)
        input_layout.addLayout(addGeos_layout)
        input_layout.addLayout(upEdges_layout)
        input_layout.addLayout(dnEdges_layout)
        input_layout.addLayout(mouthRoot_layout)

        self.input_group.setLayout(input_layout)

        # options layout
        ctlsPerEyebrow_layout = QtWidgets.QHBoxLayout()
        symmetric_layout = QtWidgets.QHBoxLayout()
        symmetric_layout.addWidget(self.symmetric_check)
        options_layout = QtWidgets.QVBoxLayout()
        options_layout.setContentsMargins(6, 1, 6, 2)
        options_layout.addLayout(symmetric_layout)
        self.options_group.setLayout(options_layout)

        # name prefix
        namePrefix_layout = QtWidgets.QHBoxLayout()
        namePrefix_layout.setContentsMargins(1, 1, 1, 1)
        namePrefix_layout.addWidget(self.prefix_lineEdit)
        self.prefix_group.setLayout(namePrefix_layout)

        # main layout
        main_layout = QtWidgets.QVBoxLayout()
        main_layout.setContentsMargins(6, 6, 6, 6)
        main_layout.addWidget(self.prefix_group)
        main_layout.addWidget(self.input_group)
        main_layout.addWidget(self.options_group)
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

        self.mouthRoot_button.clicked.connect(
            partial(self.populate_element, self.mouthRoot_lineEdit)
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
        rootLoc = name + "Root_C_loc"

        if cmds.objExists(rootLoc):
            self.buildDict["mouth"] = [
                cmds.getAttr(rootLoc + ".name"),
                cmds.getAttr(rootLoc + ".faceGeo"),
                cmds.getAttr(rootLoc + ".addGeos"),
                cmds.getAttr(rootLoc + ".upEdges"),
                cmds.getAttr(rootLoc + ".dnEdges"),
                cmds.getAttr(rootLoc + ".mouthRoot"),
            ]

        else:
            self.buildDict["mouth"] = [
                self.prefix_lineEdit.text(),
                self.faceGeo_lineEdit.text(),
                self.addGeos_lineEdit.text(),
                self.upEdges_lineEdit.text(),
                self.dnEdges_lineEdit.text(),
                self.mouthRoot_lineEdit.text(),
                self.symmetric_check.isChecked(),
            ]

    def buildRig(self):
        self.populateDict()
        mouthRig(*self.buildDict["mouth"])

    def createLocsInScene(self):
        self.populateDict()
        name = self.buildDict["mouth"][0]
        faceGeo = self.buildDict["mouth"][1]
        addGeos = self.buildDict["mouth"][2]
        upEdges = self.buildDict["mouth"][3]
        dnEdges = self.buildDict["mouth"][4]
        mouthRoot = self.buildDict["mouth"][5]
        symmetric = self.buildDict["mouth"][6]

        # checks
        if cmds.objExists(name + "Root_C_loc"):
            cmds.warning("System '" + name + "_C' already exists")
            return

        # main facial grp
        if not cmds.objExists("facialGuide_grp"):
            cmds.createNode("transform", n="facialGuide_grp")
            try:
                cmds.parent("facialGuide_grp", "guide")
            except:
                0

        # creates locs
        rootLoc = mwRig.locator(name=name + "Root_C_loc")
        cmds.addAttr(rootLoc, ln="builder", dt="string")
        cmds.addAttr(rootLoc, ln="name", dt="string")
        cmds.addAttr(rootLoc, ln="faceGeo", dt="string")
        cmds.addAttr(rootLoc, ln="addGeos", dt="string")
        cmds.addAttr(rootLoc, ln="upEdges", dt="string")
        cmds.addAttr(rootLoc, ln="dnEdges", dt="string")
        cmds.addAttr(rootLoc, ln="mouthRoot", dt="string")
        cmds.setAttr(rootLoc + ".builder", "mwMouth", type="string")
        cmds.setAttr(rootLoc + ".name", name, type="string")
        cmds.setAttr(rootLoc + ".faceGeo", faceGeo, type="string")
        cmds.setAttr(rootLoc + ".addGeos", addGeos, type="string")
        cmds.setAttr(rootLoc + ".upEdges", upEdges, type="string")
        cmds.setAttr(rootLoc + ".dnEdges", dnEdges, type="string")
        cmds.setAttr(rootLoc + ".mouthRoot", mouthRoot, type="string")

        cmds.setAttr(rootLoc + ".overrideEnabled", 1)
        cmds.setAttr(rootLoc + ".overrideColor", 17)
        cmds.setAttr(rootLoc + "Shape.overrideEnabled", 1)
        cmds.setAttr(rootLoc + "Shape.overrideColor", 1)

        cornerRLoc = mwRig.locator(name=name + "Corner_R_loc", ls=0.5)
        cmds.setAttr(cornerRLoc + ".tx", -4)
        cmds.setAttr(cornerRLoc + ".tz", 3)
        cmds.parent(cornerRLoc, rootLoc)
        mwUtils.lockHideAttr(cornerRLoc, attrs=["sx", "sy", "sz"])

        midRLoc = mwRig.locator(name=name + "Mid_R_loc", ls=0.5)
        cmds.setAttr(midRLoc + ".tx", -2)
        cmds.setAttr(midRLoc + ".tz", 3)
        cmds.parent(midRLoc, rootLoc)
        mwUtils.lockHideAttr(midRLoc, attrs=["sx", "sy", "sz"])

        midCLoc = mwRig.locator(name=name + "Mid_C_loc", ls=0.5)
        cmds.setAttr(midCLoc + ".tx", 0)
        cmds.setAttr(midCLoc + ".tz", 3)
        cmds.parent(midCLoc, rootLoc)
        mwUtils.lockHideAttr(midCLoc, attrs=["sx", "sy", "sz"])

        midLLoc = mwRig.locator(name=name + "Mid_L_loc", ls=0.5)
        cmds.setAttr(midLLoc + ".tx", 2)
        cmds.setAttr(midLLoc + ".tz", 3)
        cmds.parent(midLLoc, rootLoc)
        mwUtils.lockHideAttr(midLLoc, attrs=["sx", "sy", "sz"])

        cornerLLoc = mwRig.locator(name=name + "Corner_L_loc", ls=0.5)
        cmds.setAttr(cornerLLoc + ".tx", 4)
        cmds.setAttr(cornerLLoc + ".tz", 3)
        cmds.parent(cornerLLoc, rootLoc)
        mwUtils.lockHideAttr(cornerLLoc, attrs=["sx", "sy", "sz"])

        # external locs
        cornerRExt = mwRig.locator(name=name + "CornerExternal_R_loc", ls=0.5)
        cmds.setAttr(cornerRExt + ".tx", -10)
        cmds.setAttr(cornerRExt + ".ty", 0)
        cmds.parent(cornerRExt, rootLoc)
        mwUtils.lockHideAttr(cornerRExt, attrs=["sx", "sy", "sz"])

        midUpRExt = mwRig.locator(name=name + "MidUpExternal_R_loc", ls=0.5)
        cmds.setAttr(midUpRExt + ".tx", -8)
        cmds.setAttr(midUpRExt + ".ty", 4)
        cmds.parent(midUpRExt, rootLoc)
        mwUtils.lockHideAttr(midUpRExt, attrs=["sx", "sy", "sz"])

        midUpCExt = mwRig.locator(name=name + "MidUpExternal_C_loc", ls=0.5)
        cmds.setAttr(midUpCExt + ".tx", 0)
        cmds.setAttr(midUpCExt + ".ty", 8)
        cmds.parent(midUpCExt, rootLoc)
        mwUtils.lockHideAttr(midUpCExt, attrs=["sx", "sy", "sz"])

        midUpLExt = mwRig.locator(name=name + "MidUpExternal_L_loc", ls=0.5)
        cmds.setAttr(midUpLExt + ".tx", 8)
        cmds.setAttr(midUpLExt + ".ty", 4)
        cmds.parent(midUpLExt, rootLoc)
        mwUtils.lockHideAttr(midUpLExt, attrs=["sx", "sy", "sz"])

        cornerLExt = mwRig.locator(name=name + "CornerExternal_L_loc", ls=0.5)
        cmds.setAttr(cornerLExt + ".tx", 10)
        cmds.setAttr(cornerLExt + ".ty", 0)
        cmds.parent(cornerLExt, rootLoc)
        mwUtils.lockHideAttr(cornerLExt, attrs=["sx", "sy", "sz"])

        midDnRExt = mwRig.locator(name=name + "MidDnExternal_R_loc", ls=0.5)
        cmds.setAttr(midDnRExt + ".tx", -8)
        cmds.setAttr(midDnRExt + ".ty", -4)
        cmds.parent(midDnRExt, rootLoc)
        mwUtils.lockHideAttr(midDnRExt, attrs=["sx", "sy", "sz"])

        midDnCExt = mwRig.locator(name=name + "MidDnExternal_C_loc", ls=0.5)
        cmds.setAttr(midDnCExt + ".tx", 0)
        cmds.setAttr(midDnCExt + ".ty", -8)
        cmds.parent(midDnCExt, rootLoc)
        mwUtils.lockHideAttr(midDnCExt, attrs=["sx", "sy", "sz"])

        midDnLExt = mwRig.locator(name=name + "MidDnExternal_L_loc", ls=0.5)
        cmds.setAttr(midDnLExt + ".tx", 8)
        cmds.setAttr(midDnLExt + ".ty", -4)
        cmds.parent(midDnLExt, rootLoc)
        mwUtils.lockHideAttr(midDnLExt, attrs=["sx", "sy", "sz"])

        # creates corners path curve
        posList = [
            [-10, 0, 25],
            [-7.5, 0, 30],
            [-5, 0, 35],
            [0, 0, 40],
            [5, 0, 35],
            [7.5, 0, 30],
            [10, 0, 25],
        ]
        crv = cmds.curve(
            p=[
                posList[0],
                posList[1],
                posList[2],
                posList[3],
                posList[4],
                posList[5],
                posList[6],
            ],
            n=name + "CornersPath_C_crv",
        )
        cmds.rename(cmds.listRelatives(crv, c=1, s=1), crv + "Shape")
        cmds.parent(crv, rootLoc)

        # creates lip roll curves
        posListUp = [
            [-5, 0, 0],
            [-4, 1, 0],
            [-2, 1.5, 0],
            [0, 2, 0],
            [2, 1.5, 0],
            [4, 1, 0],
            [5, 0, 0],
        ]
        crv = cmds.curve(
            p=[
                posListUp[0],
                posListUp[1],
                posListUp[2],
                posListUp[3],
                posListUp[4],
                posListUp[5],
                posListUp[6],
            ],
            n=name + "LipRollUp_C_crv",
        )
        cmds.rename(cmds.listRelatives(crv, c=1, s=1), crv + "Shape")
        cmds.parent(crv, rootLoc)

        posListDn = [
            [-5, 0, 0],
            [-4, -1, 0],
            [-2, -1.5, 0],
            [0, -2, 0],
            [2, -1.5, 0],
            [4, -1, 0],
            [5, 0, 0],
        ]
        crv = cmds.curve(
            p=[
                posListDn[0],
                posListDn[1],
                posListDn[2],
                posListDn[3],
                posListDn[4],
                posListDn[5],
                posListDn[6],
            ],
            n=name + "LipRollDn_C_crv",
        )
        cmds.rename(cmds.listRelatives(crv, c=1, s=1), crv + "Shape")
        cmds.parent(crv, rootLoc)

        cmds.parent(rootLoc, "facialGuide_grp")

        if symmetric == True:
            mwUtils.transformMirror(cornerRLoc)
            mwUtils.transformMirror(midRLoc)

            mwUtils.transformMirror(cornerRExt)
            mwUtils.transformMirror(midUpRExt)
            mwUtils.transformMirror(midDnRExt)

        # creates main controls
        cornerRMainCtlShape = "scLeft"
        cornerLMainCtlShape = "scRight"

        cornerRMainCtl = mwRig.createControlCrv(
            cornerRLoc,
            name=name + "CornerMain_R_crv",
            offsetZ=1,
            size=1,
            shape=cornerRMainCtlShape,
        )[0]
        mwUtils.lockHideAttr(cornerRMainCtl, attrs=["rx", "ry", "rz", "sx", "sy", "sz"])

        upMainCtl = mwRig.createControlCrv(
            midCLoc, name=name + "UpMain_C_crv", offsetZ=1, size=1, shape="scUp"
        )[0]
        mwUtils.lockHideAttr(upMainCtl, attrs=["rx", "ry", "rz", "sx", "sy", "sz"])

        cornerLMainCtl = mwRig.createControlCrv(
            cornerLLoc,
            name=name + "CornerMain_L_crv",
            offsetZ=1,
            size=1,
            shape=cornerLMainCtlShape,
        )[0]
        mwUtils.lockHideAttr(cornerLMainCtl, attrs=["rx", "ry", "rz", "sx", "sy", "sz"])

        dnMainCtl = mwRig.createControlCrv(
            midCLoc, name=name + "DnMain_C_crv", offsetZ=1, size=1, shape="scUp", sy=-1
        )[0]
        mwUtils.lockHideAttr(dnMainCtl, attrs=["rx", "ry", "rz", "sx", "sy", "sz"])

        if symmetric == True:
            mwUtils.transformMirror(cornerRMainCtl)

        # creates secondary controls
        cornerRCtl = mwRig.createControlCrv(
            cornerRLoc, name=name + "Corner_R_crv", offsetZ=1, size=0.4, shape="circle"
        )[0]
        mwUtils.lockHideAttr(cornerRCtl, attrs=["rx", "ry", "rz", "sx", "sy", "sz"])

        upRCtl = mwRig.createControlCrv(
            midRLoc,
            name=name + "Up_R_crv",
            offsetY=0.5,
            offsetZ=1,
            size=0.4,
            shape="circle",
        )[0]
        mwUtils.lockHideAttr(upRCtl, attrs=["rx", "ry", "rz", "sx", "sy", "sz"])

        upCCtl = mwRig.createControlCrv(
            midCLoc,
            name=name + "Up_C_crv",
            offsetY=0.5,
            offsetZ=1,
            size=0.4,
            shape="circle",
        )[0]
        mwUtils.lockHideAttr(upCCtl, attrs=["rx", "ry", "rz", "sx", "sy", "sz"])

        upLCtl = mwRig.createControlCrv(
            midLLoc,
            name=name + "Up_L_crv",
            offsetY=0.5,
            offsetZ=1,
            size=0.4,
            shape="circle",
        )[0]
        mwUtils.lockHideAttr(upLCtl, attrs=["rx", "ry", "rz", "sx", "sy", "sz"])

        cornerLCtl = mwRig.createControlCrv(
            cornerLLoc, name=name + "Corner_L_crv", offsetZ=1, size=0.5, shape="circle"
        )[0]
        mwUtils.lockHideAttr(cornerLCtl, attrs=["rx", "ry", "rz", "sx", "sy", "sz"])

        dnRCtl = mwRig.createControlCrv(
            midRLoc,
            name=name + "Dn_R_crv",
            offsetY=0.5,
            offsetZ=1,
            size=0.4,
            shape="circle",
            sy=-1,
        )[0]
        mwUtils.lockHideAttr(dnRCtl, attrs=["rx", "ry", "rz", "sx", "sy", "sz"])

        dnCCtl = mwRig.createControlCrv(
            midCLoc,
            name=name + "Dn_C_crv",
            offsetY=0.5,
            offsetZ=1,
            size=0.4,
            shape="circle",
            sy=-1,
        )[0]
        mwUtils.lockHideAttr(dnCCtl, attrs=["rx", "ry", "rz", "sx", "sy", "sz"])

        dnLCtl = mwRig.createControlCrv(
            midLLoc,
            name=name + "Dn_L_crv",
            offsetY=0.5,
            offsetZ=1,
            size=0.4,
            shape="circle",
            sy=-1,
        )[0]
        mwUtils.lockHideAttr(dnLCtl, attrs=["rx", "ry", "rz", "sx", "sy", "sz"])

        if symmetric == True:
            mwUtils.transformMirror(cornerRCtl)
            mwUtils.transformMirror(upRCtl)
            mwUtils.transformMirror(dnRCtl)

        # colors
        cornerRMainCtlShape = cmds.listRelatives(cornerRMainCtl, c=1, s=1)[0]
        upMainCtlShape = cmds.listRelatives(upMainCtl, c=1, s=1)[0]
        cornerLMainCtlShape = cmds.listRelatives(cornerLMainCtl, c=1, s=1)[0]
        dnMainCtlShape = cmds.listRelatives(dnMainCtl, c=1, s=1)[0]

        cornerRCtlShape = cmds.listRelatives(cornerRCtl, c=1, s=1)[0]
        upRCtlShape = cmds.listRelatives(upRCtl, c=1, s=1)[0]
        upCCtlShape = cmds.listRelatives(upCCtl, c=1, s=1)[0]
        upLCtlShape = cmds.listRelatives(upLCtl, c=1, s=1)[0]
        cornerLCtlShape = cmds.listRelatives(cornerLCtl, c=1, s=1)[0]
        dnRCtlShape = cmds.listRelatives(dnRCtl, c=1, s=1)[0]
        dnCCtlShape = cmds.listRelatives(dnCCtl, c=1, s=1)[0]
        dnLCtlShape = cmds.listRelatives(dnLCtl, c=1, s=1)[0]

        cmds.setAttr(cornerRMainCtlShape + ".overrideEnabled", 1)
        cmds.setAttr(cornerRMainCtlShape + ".overrideColor", 13)

        cmds.setAttr(cornerRCtlShape + ".overrideEnabled", 1)
        cmds.setAttr(cornerRCtlShape + ".overrideColor", 12)
        cmds.setAttr(upRCtlShape + ".overrideEnabled", 1)
        cmds.setAttr(upRCtlShape + ".overrideColor", 12)
        cmds.setAttr(dnRCtlShape + ".overrideEnabled", 1)
        cmds.setAttr(dnRCtlShape + ".overrideColor", 12)

        cmds.setAttr(cornerLMainCtlShape + ".overrideEnabled", 1)
        cmds.setAttr(cornerLMainCtlShape + ".overrideColor", 6)

        cmds.setAttr(cornerLCtlShape + ".overrideEnabled", 1)
        cmds.setAttr(cornerLCtlShape + ".overrideColor", 5)
        cmds.setAttr(upLCtlShape + ".overrideEnabled", 1)
        cmds.setAttr(upLCtlShape + ".overrideColor", 5)
        cmds.setAttr(dnLCtlShape + ".overrideEnabled", 1)
        cmds.setAttr(dnLCtlShape + ".overrideColor", 5)

        cmds.setAttr(upMainCtlShape + ".overrideEnabled", 1)
        cmds.setAttr(upMainCtlShape + ".overrideColor", 14)
        cmds.setAttr(dnMainCtlShape + ".overrideEnabled", 1)
        cmds.setAttr(dnMainCtlShape + ".overrideColor", 14)

        cmds.setAttr(upCCtlShape + ".overrideEnabled", 1)
        cmds.setAttr(upCCtlShape + ".overrideColor", 7)
        cmds.setAttr(dnCCtlShape + ".overrideEnabled", 1)
        cmds.setAttr(dnCCtlShape + ".overrideColor", 7)

        cmds.select(d=1)


def showMwMouthUI(*args):
    gqt.showDialog(mouthRigUI)


if __name__ == "__main__":
    showMwMouthUI()

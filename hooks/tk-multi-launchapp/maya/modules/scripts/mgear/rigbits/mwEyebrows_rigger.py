"""MW eyebrow rigger tool"""

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

import manyworlds.maya.mwUtils as mwUtils
import manyworlds.maya.mwRig as mwRig

import math

##########################################################
# Eyebrows constructor
##########################################################


def eyebrowsRig(name, faceGeo, addGeos, edges, parentJnt, facePolys=None):

    ######
    # Var
    ######

    nurbsName = name + "Main_C_nurbs"
    secondaryNurbsName = name + "Secondary_C_nurbs"
    nurbsWidth = cmds.getAttr(name + "Root_C_loc.sx")

    if edges == "":
        edges = "Auto"
    elif edges == "auto":
        edges = "Auto"

    if edges != "Auto":
        edges = edges.split(",")

    ##############
    # Checkers
    ##############

    # loop check
    secLocList = []
    secVertList = []

    cmds.select(d=1)
    # selects R locs
    for i in reversed(range(1, 11)):
        loc = name + str(i) + "_R_loc"
        if cmds.objExists(loc):
            secLocList.append(loc)

    secLocList.append(name + "Mid_C_loc")

    if parentJnt == "":
        pm.displayWarning(name + " - Parent joint is not defined.")
        return

    if faceGeo == "":
        pm.displayWarning(name + " - Face geo is not defined.")
        return

    # selects L locs
    for i in range(1, 11):
        loc = name + str(i) + "_L_loc"
        if cmds.objExists(loc):
            secLocList.append(loc)

    # converts locs to verts in mesh
    if edges == "":
        edges = "Auto"
    elif edges == "auto":
        edges = "Auto"

    if edges == "Auto":
        for loc in secLocList:
            vert = mwRig.getClosestVtx(faceGeo, transform=loc)
            secVertList.append(vert)
    else:
        cmds.select(edges, r=1)
        cmds.select(cmds.polyListComponentConversion(fe=1, tv=1))
        vertLoop = cmds.ls(sl=1, fl=1)

        for loc in secLocList:
            vert = mwRig.getClosestVtxFromList(vertLoop, transform=loc)
            secVertList.append(vert)

    # checks vertices
    check = mwRig.checkVertsInEdgeLoop(secVertList)
    if check == False:
        pm.displayWarning("Locators may not share a loop")

    # check if the rig already exist in the current scene
    if pm.ls(mwUtils.setName(name, "root")):
        pm.displayWarning(
            "The object %s already exists in the scene. Please"
            " choose another name prefix" % mwUtils.setName(name, "root")
        )
        return

    #####################
    # Root creation
    #####################

    eyebrows_root = str(primitive.addTransform(None, mwUtils.setName(name, "root")))

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

    loop = []
    for i, v in enumerate(secVertList):
        if secVertList[i] != secVertList[-1]:
            vert1 = v
            vert2 = secVertList[i + 1]

            cmds.select(vert1, vert2, r=1)

            edges = mwRig.getVertLoop(vert1, vert2)
            for e in edges:
                if e not in loop:
                    loop.append(e)

            cmds.select(edges, r=1)
            cmds.select(cmds.polyListComponentConversion(fe=1, tv=1))
            inbVerts = cmds.ls(sl=1, fl=1)
            firstVert = mwRig.getFirstVertFromEdges(edges, mode="LtoR")
            inbVerts = mwRig.sortVerts(inbVerts, startVtx=firstVert)

            crvList = []
            for j, w in enumerate(inbVerts):
                crv = "loft" + str(i) + str(j) + "_C_crv"
                curve.addCurve(
                    None,
                    crv,
                    [
                        [0, 0, (1 * nurbsWidth)],
                        [0, 0, (0.5 * nurbsWidth)],
                        [0, 0, (-0.5 * nurbsWidth)],
                        [0, 0, (-1 * nurbsWidth)],
                    ],
                )

                crvList.append(crv)

                pos = cmds.xform(w, q=1, t=1, ws=1)
                cmds.xform(crv, t=pos, ws=1)

            cmds.select(crvList, r=1)
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
                sv=5,
                dv=0,
                tol=0.01,
                fr=0,
                dir=2,
            )

            if i != 0:
                cmds.select("nurbs0_nurbs", r=1)
                cmds.select("nurbs" + str(i) + "_nurbs", add=1)
                cmds.attachSurface(ch=0, rpo=1, kmk=1, m=1, bb=0.5, bki=0, p=0.1)

    cmds.rename("nurbs0_nurbs", nurbsName)
    cmds.delete(nurbsName, ch=1)
    cmds.delete("loft*_crv")
    cmds.select(d=1)
    cmds.delete("nurbs*_nurbs")
    cmds.reverseSurface(nurbsName)

    cmds.duplicate(nurbsName, n=secondaryNurbsName)
    cmds.blendShape(secondaryNurbsName, nurbsName, w=[0, 1], n=name + "Nurbs_C_bs")

    #####################
    # Follicle creation
    #####################

    sknFolList = []

    cmds.select(loop, r=1)
    cmds.select(cmds.polyListComponentConversion(fe=1, tv=1))
    verts = mwRig.sortVerts(cmds.ls(sl=1, fl=1))

    numFol = len(verts)

    cmds.select(nurbsName + ".u[0.5]", r=1)

    # creates follicles
    for i in range(0, numFol):

        vtx = verts[i]
        vtxPos = cmds.xform(vtx, q=1, t=1, ws=1)

        middle = int(numFol // 2)
        if i < middle:
            j = middle - i
            folName = name + str(j) + "_R_fol"
            fol = mwRig.createFollicleInNurbs(folName, nurbsName, vtxPos)
            sknFolList.append(fol)

        if numFol % 2 == 1:
            if i == middle:
                j = middle - i
                folName = name + str(j) + "_C_fol"
                fol = mwRig.createFollicleInNurbs(folName, nurbsName, vtxPos)
                sknFolList.append(fol)

            elif i > middle:
                j = -(middle - i)
                folName = name + str(j) + "_L_fol"
                fol = mwRig.createFollicleInNurbs(folName, nurbsName, vtxPos)
                sknFolList.append(fol)

        elif numFol % 2 == 0:
            if i >= middle:
                j = -(middle - i) + 1
                folName = name + str(j) + "_L_fol"
                fol = mwRig.createFollicleInNurbs(folName, nurbsName, vtxPos)
                sknFolList.append(fol)

    # cleanup
    cmds.select(sknFolList, r=1)
    sknFolGrp = cmds.group(n=name + "SknFol_C_grp")

    cmds.parent(nurbsName, eyebrows_root)
    cmds.parent(secondaryNurbsName, eyebrows_root)

    ##################
    # Joints
    ##################

    # mainJoints
    mainL = name + "Main_L_loc"
    mainR = name + "Main_R_loc"
    mainLocList = [mainL, mainR]
    mainJntList = []
    secJntList = []
    folJntList = []

    cmds.select(d=1)
    nurbsHoldJoint = cmds.joint(n=name + "MainHold_C_jnrb")
    cmds.select(d=1)
    holdJoint = cmds.joint(n=name + "Hold_C_jnt")

    for j in mainLocList:
        cmds.select(d=1)
        jntName = j.replace("loc", "jnrb")
        pos = cmds.xform(j, q=1, t=1, ws=1)
        jnt = cmds.joint(n=jntName, p=pos, a=1)
        ztr = mwUtils.addZtr(jnt)
        mainJntList.append(jntName)

    # secondaryJoints
    for j in secLocList:
        cmds.select(d=1)
        jntName = j.replace("loc", "jnrb")
        pos = cmds.xform(j, q=1, t=1, ws=1)
        rot = cmds.xform(j, q=1, ro=1, ws=1)
        jnt = cmds.joint(n=jntName, p=pos, a=1)
        cmds.setAttr(jnt + ".rx", rot[0])
        cmds.setAttr(jnt + ".ry", rot[1])
        cmds.setAttr(jnt + ".rz", rot[2])
        ztr = mwUtils.addZtr(jnt)
        secJntList.append(jntName)

        if "1_" in j and cmds.objExists(
            j.replace("_loc", "_crv").replace("1_", "Tip_")
        ):
            cmds.select(d=1)
            jntName = j.replace("1_", "Tip_")
            jntName = jntName.replace("loc", "jnrb")
            jnt = cmds.joint(n=jntName, p=pos, a=1)
            cmds.setAttr(jnt + ".rx", rot[0])
            cmds.setAttr(jnt + ".ry", rot[1])
            cmds.setAttr(jnt + ".rz", rot[2])
            ztr = mwUtils.addZtr(jnt)
            secJntList.append(jntName)

    # jntJoints
    for f in cmds.listRelatives(sknFolGrp, c=1):
        cmds.select(d=1)
        jntName = f.replace("fol", "jnt")
        pos = cmds.xform(f, q=1, t=1, ws=1)
        jnt = cmds.joint(n=jntName, p=pos, a=1)
        ztr = mwUtils.addZtr(jnt)
        folJntList.append(jntName)

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

    # skins nurbs
    cmds.select(mainJntList, nurbsHoldJoint, nurbsName, r=1)
    cmds.skinCluster(
        n=mwUtils.renameSuffix(nurbsName, suffix="skc"), maximumInfluences=1
    )
    cmds.select(secJntList, secondaryNurbsName, r=1)
    cmds.skinCluster(n=mwUtils.renameSuffix(secondaryNurbsName, suffix="skc"))

    ##################
    # Controls
    ##################

    mainLCrv = mainL.replace("loc", "crv")
    mainRCrv = mainR.replace("loc", "crv")
    mainL = mainL.replace("loc", "ctl")
    mainR = mainR.replace("loc", "ctl")
    mainControls = [mainL, mainR]

    mainLJnrb = mainL.replace("ctl", "jnrb")
    mainRJnrb = mainR.replace("ctl", "jnrb")

    # process main controls
    for main in mainControls:
        if main == mainL:
            mainJnrb = mainLJnrb
            mainCrv = mainLCrv
        else:
            mainJnrb = mainRJnrb
            mainCrv = mainRCrv

        crvCopy = cmds.duplicate(mainCrv, n=mainCrv.replace("crv", "crvCopy"))
        crvShape = cmds.listRelatives(crvCopy, c=1, s=1)
        ctlName = mainJnrb.replace("jnrb", "ctl")
        crvShape = cmds.rename(crvShape, ctlName + "Shape")
        ctl = cmds.createNode("transform", n=ctlName)
        mwRig.snap(ctl, mainCrv)
        rvt = mwUtils.addZtr(ctl, suffix="rvt")
        cmds.parent(crvShape, ctl, s=1, r=1)
        cmds.delete(crvCopy)

        ztrName = mwUtils.renameSuffix(ctl, suffix="ztr")
        ztr = cmds.createNode("transform", n=ztrName)
        mwRig.snap(ztr, mainJnrb)
        cmds.parent(rvt, ztr)

        if "_R_" in main:
            cmds.parent(rvt, w=1)
            cmds.setAttr(ztr + ".ry", 180)
            cmds.setAttr(ztr + ".sz", -1)
            cmds.parent(rvt, ztr)
            cmds.makeIdentity(rvt, apply=1)

            mwUtils.connectAttr(ctl + ".rx", mainJnrb + ".rx")
            mwUtils.connectAttr(ctl + ".rx", rvt + ".rx", "negative")
            mwUtils.connectAttr(ctl + ".rx", ztr + ".rx", mode="negative")

            mwUtils.connectAttr(ctl + ".ry", mainJnrb + ".ry", "negative")
            mwUtils.connectAttr(ctl + ".ry", rvt + ".ry", "negative")
            mwUtils.connectAttr(ctl + ".ry", ztr + ".ry", mode="negative", offset=180)

            mwUtils.connectAttr(ctl + ".rz", mainJnrb + ".rz", "negative")
            mwUtils.connectAttr(ctl + ".rz", rvt + ".rz", "negative")
            mwUtils.connectAttr(ctl + ".rz", ztr + ".rz", mode="negative")

            mwUtils.connectAttr(ctl + ".tx", mainJnrb + ".tx", "negative")
            mwUtils.connectAttr(ctl + ".ty", mainJnrb + ".ty")
            mwUtils.connectAttr(ctl + ".tz", mainJnrb + ".tz")

            mwUtils.connectAttr(ctl + ".sx", mainJnrb + ".sx")
            mwUtils.connectAttr(ctl + ".sy", mainJnrb + ".sy")
            mwUtils.connectAttr(ctl + ".sz", mainJnrb + ".sz")

        else:
            cmds.makeIdentity(rvt, apply=1)

            mwUtils.connectAttr(ctl + ".rx", mainJnrb + ".rx")
            mwUtils.connectAttr(ctl + ".rx", rvt + ".rx", mode="negative")
            mwUtils.connectAttr(ctl + ".rx", ztr + ".rx")

            mwUtils.connectAttr(ctl + ".ry", mainJnrb + ".ry")
            mwUtils.connectAttr(ctl + ".ry", rvt + ".ry", mode="negative")
            mwUtils.connectAttr(ctl + ".ry", ztr + ".ry")

            mwUtils.connectAttr(ctl + ".rz", mainJnrb + ".rz")
            mwUtils.connectAttr(ctl + ".rz", rvt + ".rz", mode="negative")
            mwUtils.connectAttr(ctl + ".rz", ztr + ".rz")

            mwUtils.connectAttr(ctl + ".tx", mainJnrb + ".tx")
            mwUtils.connectAttr(ctl + ".ty", mainJnrb + ".ty")
            mwUtils.connectAttr(ctl + ".tz", mainJnrb + ".tz")

            mwUtils.connectAttr(ctl + ".sx", mainJnrb + ".sx")
            mwUtils.connectAttr(ctl + ".sy", mainJnrb + ".sy")
            mwUtils.connectAttr(ctl + ".sz", mainJnrb + ".sz")

    # process secondary controls
    ctlFolList = []
    for jnrb in secJntList:
        crv = jnrb.replace("jnrb", "crv")
        ctl = jnrb.replace("jnrb", "ctl")
        crvCopy = cmds.duplicate(crv, n=crv.replace("crv", "crvCopy"))[0]

        cmds.setAttr(crvCopy + ".rx", lock=False, cb=True)
        cmds.setAttr(crvCopy + ".ry", lock=False, cb=True)
        cmds.setAttr(crvCopy + ".rz", lock=False, cb=True)
        cmds.setAttr(crvCopy + ".rx", k=True)
        cmds.setAttr(crvCopy + ".ry", k=True)
        cmds.setAttr(crvCopy + ".rz", k=True)

        crvShape = cmds.listRelatives(crvCopy, c=1, s=1)
        crvShape = cmds.rename(crvShape, ctl + "Shape")
        cmds.createNode("transform", n=ctl)
        mwRig.snap(ctl, crv)
        cmds.parent(crvShape, ctl, s=1, r=1)
        cmds.delete(crvCopy)
        ztr = mwUtils.addZtr(ctl)

        if "_R_" in ctl:
            # inverts behaviour
            cmds.parent(ctl, w=1)
            cmds.setAttr(ztr + ".rx", cmds.getAttr(ztr + ".rx") * -1)
            cmds.setAttr(ztr + ".ry", cmds.getAttr(ztr + ".ry") + 180)
            cmds.setAttr(ztr + ".sz", cmds.getAttr(ztr + ".sz") * -1)
            cmds.parent(ctl, ztr)
            cmds.makeIdentity(ctl, apply=1)

            if "Tip" in ctl:
                # translate
                pma = cmds.createNode(
                    "plusMinusAverage",
                    n=ctl.replace("Tip", "TipT").replace("ctl", "pma"),
                )
                mwUtils.connectAttr(ctl + ".tx", pma + ".input3D[0].input3Dx")
                mwUtils.connectAttr(
                    ctl.replace("Tip", "1") + ".tx", pma + ".input3D[1].input3Dx"
                )
                mwUtils.connectAttr(pma + ".output3Dx", jnrb + ".tx", "negative")

                mwUtils.connectAttr(ctl + ".ty", pma + ".input3D[0].input3Dy")
                mwUtils.connectAttr(
                    ctl.replace("Tip", "1") + ".ty", pma + ".input3D[1].input3Dy"
                )
                mwUtils.connectAttr(pma + ".output3Dy", jnrb + ".ty")

                mwUtils.connectAttr(ctl + ".tz", pma + ".input3D[0].input3Dz")
                mwUtils.connectAttr(
                    ctl.replace("Tip", "1") + ".tz", pma + ".input3D[1].input3Dz"
                )
                mwUtils.connectAttr(pma + ".output3Dz", jnrb + ".tz")

                # rotate
                pma = cmds.createNode(
                    "plusMinusAverage",
                    n=ctl.replace("Tip", "TipR").replace("ctl", "pma"),
                )
                mwUtils.connectAttr(ctl + ".rx", pma + ".input3D[0].input3Dx")
                mwUtils.connectAttr(
                    ctl.replace("Tip", "1") + ".rx", pma + ".input3D[1].input3Dx"
                )
                mwUtils.connectAttr(pma + ".output3Dx", jnrb + ".rx")

                mwUtils.connectAttr(ctl + ".ry", pma + ".input3D[0].input3Dy")
                mwUtils.connectAttr(
                    ctl.replace("Tip", "1") + ".ry", pma + ".input3D[1].input3Dy"
                )
                mwUtils.connectAttr(pma + ".output3Dy", jnrb + ".ry", "negative")

                mwUtils.connectAttr(ctl + ".rz", pma + ".input3D[0].input3Dz")
                mwUtils.connectAttr(
                    ctl.replace("Tip", "1") + ".rz", pma + ".input3D[1].input3Dz"
                )
                mwUtils.connectAttr(pma + ".output3Dz", jnrb + ".rz", "negative")

                # scale
                pma = cmds.createNode(
                    "plusMinusAverage",
                    n=ctl.replace("Tip", "TipS").replace("ctl", "pma"),
                )
                mwUtils.connectAttr(ctl + ".sx", pma + ".input3D[0].input3Dx")
                mwUtils.connectAttr(
                    ctl.replace("Tip", "1") + ".sx", pma + ".input3D[1].input3Dx"
                )
                mwUtils.connectAttr(pma + ".output3Dx", jnrb + ".sx", offset=-1)

                mwUtils.connectAttr(ctl + ".sy", pma + ".input3D[0].input3Dy")
                mwUtils.connectAttr(
                    ctl.replace("Tip", "1") + ".sy", pma + ".input3D[1].input3Dy"
                )
                mwUtils.connectAttr(pma + ".output3Dy", jnrb + ".sy", offset=-1)

                mwUtils.connectAttr(ctl + ".sz", pma + ".input3D[0].input3Dz")
                mwUtils.connectAttr(
                    ctl.replace("Tip", "1") + ".sz", pma + ".input3D[1].input3Dz"
                )
                mwUtils.connectAttr(pma + ".output3Dz", jnrb + ".sz", offset=-1)

            else:
                cmds.makeIdentity(ctl, apply=1)

                mwUtils.connectAttr(ctl + ".tx", jnrb + ".tx", "negative")
                mwUtils.connectAttr(ctl + ".ty", jnrb + ".ty")
                mwUtils.connectAttr(ctl + ".tz", jnrb + ".tz")

                mwUtils.connectAttr(ctl + ".rx", jnrb + ".rx")
                mwUtils.connectAttr(ctl + ".ry", jnrb + ".ry", "negative")
                mwUtils.connectAttr(ctl + ".rz", jnrb + ".rz", "negative")

                mwUtils.connectAttr(ctl + ".sx", jnrb + ".sx")
                mwUtils.connectAttr(ctl + ".sy", jnrb + ".sy")
                mwUtils.connectAttr(ctl + ".sz", jnrb + ".sz")

        else:
            if "Tip" in ctl:
                # translate
                pma = cmds.createNode(
                    "plusMinusAverage",
                    n=ctl.replace("Tip", "TipT").replace("ctl", "pma"),
                )
                mwUtils.connectAttr(ctl + ".tx", pma + ".input3D[0].input3Dx")
                mwUtils.connectAttr(
                    ctl.replace("Tip", "1") + ".tx", pma + ".input3D[1].input3Dx"
                )
                mwUtils.connectAttr(pma + ".output3Dx", jnrb + ".tx")

                mwUtils.connectAttr(ctl + ".ty", pma + ".input3D[0].input3Dy")
                mwUtils.connectAttr(
                    ctl.replace("Tip", "1") + ".ty", pma + ".input3D[1].input3Dy"
                )
                mwUtils.connectAttr(pma + ".output3Dy", jnrb + ".ty")

                mwUtils.connectAttr(ctl + ".tz", pma + ".input3D[0].input3Dz")
                mwUtils.connectAttr(
                    ctl.replace("Tip", "1") + ".tz", pma + ".input3D[1].input3Dz"
                )
                mwUtils.connectAttr(pma + ".output3Dz", jnrb + ".tz")

                # rotate
                pma = cmds.createNode(
                    "plusMinusAverage",
                    n=ctl.replace("Tip", "TipR").replace("ctl", "pma"),
                )
                mwUtils.connectAttr(ctl + ".rx", pma + ".input3D[0].input3Dx")
                mwUtils.connectAttr(
                    ctl.replace("Tip", "1") + ".rx", pma + ".input3D[1].input3Dx"
                )
                mwUtils.connectAttr(pma + ".output3Dx", jnrb + ".rx")

                mwUtils.connectAttr(ctl + ".ry", pma + ".input3D[0].input3Dy")
                mwUtils.connectAttr(
                    ctl.replace("Tip", "1") + ".ry", pma + ".input3D[1].input3Dy"
                )
                mwUtils.connectAttr(pma + ".output3Dy", jnrb + ".ry")

                mwUtils.connectAttr(ctl + ".rz", pma + ".input3D[0].input3Dz")
                mwUtils.connectAttr(
                    ctl.replace("Tip", "1") + ".rz", pma + ".input3D[1].input3Dz"
                )
                mwUtils.connectAttr(pma + ".output3Dz", jnrb + ".rz")

                # scale
                pma = cmds.createNode(
                    "plusMinusAverage",
                    n=ctl.replace("Tip", "TipS").replace("ctl", "pma"),
                )
                mwUtils.connectAttr(ctl + ".sx", pma + ".input3D[0].input3Dx")
                mwUtils.connectAttr(
                    ctl.replace("Tip", "1") + ".sx", pma + ".input3D[1].input3Dx"
                )
                mwUtils.connectAttr(pma + ".output3Dx", jnrb + ".sx", offset=-1)

                mwUtils.connectAttr(ctl + ".sy", pma + ".input3D[0].input3Dy")
                mwUtils.connectAttr(
                    ctl.replace("Tip", "1") + ".sy", pma + ".input3D[1].input3Dy"
                )
                mwUtils.connectAttr(pma + ".output3Dy", jnrb + ".sy", offset=-1)

                mwUtils.connectAttr(ctl + ".sz", pma + ".input3D[0].input3Dz")
                mwUtils.connectAttr(
                    ctl.replace("Tip", "1") + ".sz", pma + ".input3D[1].input3Dz"
                )
                mwUtils.connectAttr(pma + ".output3Dz", jnrb + ".sz", offset=-1)

            else:
                mwUtils.connectAttr(ctl + ".tx", jnrb + ".tx")
                mwUtils.connectAttr(ctl + ".ty", jnrb + ".ty")
                mwUtils.connectAttr(ctl + ".tz", jnrb + ".tz")

                mwUtils.connectAttr(ctl + ".rx", jnrb + ".rx")
                mwUtils.connectAttr(ctl + ".ry", jnrb + ".ry")
                mwUtils.connectAttr(ctl + ".rz", jnrb + ".rz")

                mwUtils.connectAttr(ctl + ".sx", jnrb + ".sx")
                mwUtils.connectAttr(ctl + ".sy", jnrb + ".sy")
                mwUtils.connectAttr(ctl + ".sz", jnrb + ".sz")

        # attaches sec ctls to main nurbs
        pos = cmds.xform(jnrb, q=1, t=1, ws=1)
        folName = mwUtils.renameSuffix(jnrb, suffix="fol", add="Ctl")
        fol = mwRig.createFollicleInNurbs(folName, nurbsName, pos)
        mwRig.connectCtlToFol(ctl, folName)
        ctlFolList.append(fol)

    cmds.select(ctlFolList, r=1)
    ctlFolGrp = cmds.group(n=name + "CtlFol_C_grp")

    ##################
    # Facial geo layer
    ##################

    faceGeoPly, facialCut, facialBody, addGeosPly = mwRig.createFacialGeoLayer(
        faceGeo, addGeos, name, facePolys=facePolys
    )

    skcName = mwUtils.renameSuffix(faceGeoPly, "skc", add="")

    cmds.select(name + "*_jnt", r=1)
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
    # Cleanup
    ##################

    cmds.select(name + "*Jnt*ztr", r=1)
    jntGrp = cmds.group(n=name + "Jnt_grp")

    cmds.select(name + "*Jnrb*ztr", r=1)
    jnrbGrp = cmds.group(n=name + "Jnrb_grp")

    cmds.select(name + "*Ctl_*_ztr", r=1)
    ctlGrp = cmds.group(n=name + "Ctl_C_grp")

    cmds.select(sknFolGrp, ctlFolGrp, r=1)
    folGrp = cmds.group(n=name + "Fol_C_grp")

    if cmds.objExists(parentJnt):
        mwUtils.constraint(parentJnt, ctlGrp)
        mwUtils.constraint(parentJnt, ctlGrp, type="scale")

    if cmds.listRelatives(name + "Hold_C_jnt", p=1) == None:
        cmds.parent(name + "Hold_C_jnt", jntGrp)

    cmds.parent(name + "MainHold_C_jnrb", jnrbGrp)

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

    facialJointsGrp = "facialJoints_grp"
    if not cmds.objExists(facialJointsGrp):
        facialJointsGrp = cmds.createNode("transform", n=facialJointsGrp)
        cmds.setAttr(facialJointsGrp + ".v", 0)
        if cmds.objExists("jnt_org"):
            cmds.parent(facialJointsGrp, "jnt_org")
    cmds.parent(jntGrp, facialJointsGrp)

    # adds joints to set
    allJnts = cmds.ls(name + "*_jnt")
    assetName = mwUtils.getAsset()
    if cmds.objExists(assetName + "_deformers_grp"):
        cmds.sets(allJnts, add=assetName + "_deformers_grp")


##########################################################
# Eyebrows Rig UI
##########################################################


class eyebrowsRigUI(MayaQWidgetDockableMixin, QtWidgets.QDialog):

    valueChanged = QtCore.Signal(int)

    def __init__(self, parent=None):
        super(eyebrowsRigUI, self).__init__(parent)
        self.create()

    def create(self):

        self.setWindowTitle("mwEyebrows rigger")
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
        self.edges_label = QtWidgets.QLabel("Edges:")
        self.edges_lineEdit = QtWidgets.QLineEdit("Auto")
        self.edges_button = QtWidgets.QPushButton("<<")

        # name prefix
        self.prefix_group = QtWidgets.QGroupBox("Name Prefix")
        self.prefix_lineEdit = QtWidgets.QLineEdit()
        self.prefix_lineEdit.setText("eyebrows")

        # joints
        self.parentJnt_label = QtWidgets.QLabel("Parent joint:")
        self.parentJnt_lineEdit = QtWidgets.QLineEdit()
        self.parentJnt_button = QtWidgets.QPushButton("<<")

        # options
        self.options_group = QtWidgets.QGroupBox("Options")
        self.ctlsPerEyebrow_label = QtWidgets.QLabel("Ctls per eyebrow:")
        self.ctlsPerEyebrow_value = QtWidgets.QSpinBox()
        self.ctlsPerEyebrow_value.setRange(3, 10)
        self.ctlsPerEyebrow_value.setSingleStep(1)
        self.ctlsPerEyebrow_value.setValue(3)

        self.addTip_check = QtWidgets.QCheckBox("Add inner tip")
        self.addTip_check.setChecked(True)

        self.symmetric_check = QtWidgets.QCheckBox("Symmetric")
        self.symmetric_check.setChecked(True)

        # build button
        self.createLocs_button = QtWidgets.QPushButton("Create locators")
        self.build_button = QtWidgets.QPushButton("Build eyebrow rig")

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

        # edges layout
        edges_layout = QtWidgets.QHBoxLayout()
        edges_layout.setContentsMargins(1, 1, 1, 1)
        edges_layout.addWidget(self.edges_label)
        edges_layout.addWidget(self.edges_lineEdit)
        edges_layout.addWidget(self.edges_button)

        # joints layout
        parentJnt_layout = QtWidgets.QHBoxLayout()
        parentJnt_layout.addWidget(self.parentJnt_label)
        parentJnt_layout.addWidget(self.parentJnt_lineEdit)
        parentJnt_layout.addWidget(self.parentJnt_button)

        # geometry input layout
        input_layout = QtWidgets.QVBoxLayout()
        input_layout.setContentsMargins(6, 1, 6, 2)
        input_layout.addLayout(faceGeo_layout)
        input_layout.addLayout(addGeos_layout)
        input_layout.addLayout(edges_layout)
        input_layout.addLayout(parentJnt_layout)

        self.input_group.setLayout(input_layout)

        # options layout
        ctlsPerEyebrow_layout = QtWidgets.QHBoxLayout()
        ctlsPerEyebrow_layout.addWidget(self.ctlsPerEyebrow_label)
        ctlsPerEyebrow_layout.addWidget(self.ctlsPerEyebrow_value)

        addTip_layout = QtWidgets.QHBoxLayout()
        addTip_layout.addWidget(self.addTip_check)

        symmetric_layout = QtWidgets.QHBoxLayout()
        symmetric_layout.addWidget(self.symmetric_check)

        options_layout = QtWidgets.QVBoxLayout()
        options_layout.setContentsMargins(6, 1, 6, 2)
        options_layout.addLayout(ctlsPerEyebrow_layout)
        options_layout.addLayout(addTip_layout)
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
        self.edges_button.clicked.connect(
            partial(self.populate_edges, self.edges_lineEdit)
        )

        self.parentJnt_button.clicked.connect(
            partial(self.populate_element, self.parentJnt_lineEdit, "joint")
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
            self.buildDict["eyebrows"] = [
                cmds.getAttr(rootLoc + ".name"),
                cmds.getAttr(rootLoc + ".faceGeo"),
                cmds.getAttr(rootLoc + ".addGeos"),
                cmds.getAttr(rootLoc + ".edges"),
                cmds.getAttr(rootLoc + ".parentJnt"),
            ]

        else:
            self.buildDict["eyebrows"] = [
                self.prefix_lineEdit.text(),
                self.faceGeo_lineEdit.text(),
                self.addGeos_lineEdit.text(),
                self.edges_lineEdit.text(),
                self.parentJnt_lineEdit.text(),
                self.ctlsPerEyebrow_value.value(),
                self.addTip_check.isChecked(),
                self.symmetric_check.isChecked(),
            ]

    def buildRig(self):
        self.populateDict()
        eyebrowsRig(*self.buildDict["eyebrows"])

    def createLocsInScene(self):
        self.populateDict()
        name = self.buildDict["eyebrows"][0]
        faceGeo = self.buildDict["eyebrows"][1]
        addGeos = self.buildDict["eyebrows"][2]
        edges = self.buildDict["eyebrows"][3]
        parentJnt = self.buildDict["eyebrows"][4]
        ctlsPerEyebrow = self.buildDict["eyebrows"][5]
        addTip = self.buildDict["eyebrows"][6]
        symmetric = self.buildDict["eyebrows"][7]

        # checks
        if cmds.objExists(name + "Root_C_loc"):
            cmds.warning("System '" + name + "' already exists")
            return

        # main facial grp
        if not cmds.objExists("facialGuide_grp"):
            cmds.createNode("transform", n="facialGuide_grp")
            try:
                cmds.parent("facialGuide_grp", "guide")
            except:
                0

        # creates main locs
        rootLoc = mwRig.locator(name=name + "Root_C_loc")
        cmds.addAttr(rootLoc, ln="builder", dt="string")
        cmds.addAttr(rootLoc, ln="name", dt="string")
        cmds.addAttr(rootLoc, ln="faceGeo", dt="string")
        cmds.addAttr(rootLoc, ln="addGeos", dt="string")
        cmds.addAttr(rootLoc, ln="edges", dt="string")
        cmds.addAttr(rootLoc, ln="parentJnt", dt="string")
        cmds.setAttr(rootLoc + ".builder", "mwEyebrows", type="string")
        cmds.setAttr(rootLoc + ".name", name, type="string")
        cmds.setAttr(rootLoc + ".faceGeo", faceGeo, type="string")
        cmds.setAttr(rootLoc + ".addGeos", addGeos, type="string")
        cmds.setAttr(rootLoc + ".edges", edges, type="string")
        cmds.setAttr(rootLoc + ".parentJnt", parentJnt, type="string")

        mainL = mwRig.locator(name=name + "Main_L_loc")
        mainR = mwRig.locator(name=name + "Main_R_loc")

        cmds.setAttr(name + "Main_L_loc.tx", 5)
        cmds.setAttr(name + "Main_L_loc.tz", -10)
        cmds.setAttr(name + "Main_R_loc.tx", -5)
        cmds.setAttr(name + "Main_R_loc.tz", -10)
        cmds.setAttr(rootLoc + ".overrideEnabled", 1)
        cmds.setAttr(rootLoc + ".overrideColor", 17)
        cmds.setAttr(rootLoc + "Shape.overrideEnabled", 1)
        cmds.setAttr(rootLoc + "Shape.overrideColor", 1)

        if symmetric == True:
            mwUtils.transformMirror(mainR)

        # creates secondary locs
        secondaryLocs = []

        for side in "LR":
            if side == "R":
                mult = -1
            else:
                mult = 1

            for i in range(1, ctlsPerEyebrow + 1):
                loc = mwRig.locator(name=name + str(i) + "_" + side + "_loc", ls=0.5)
                secondaryLocs.append(loc)

                cmds.setAttr(loc + ".tx", mult * (3 + i))
                cmds.setAttr(loc + ".tz", 10)
                cmds.parent(loc, name + "Main_" + side + "_loc")

                if side == "R" and symmetric == True:
                    mwUtils.transformMirror(loc)

        midLoc = mwRig.locator(name=name + "Mid_C_loc", ls=0.5)
        secondaryLocs.append(midLoc)
        cmds.setAttr(midLoc + ".tz", 10)
        midZtr = mwUtils.addZtr(midLoc)
        cmds.select(mainL, mainR, midZtr, r=1)
        cmds.parentConstraint(n=midLoc.replace("loc", "pcns"), mo=1)

        cmds.parent(mainR, mainL, midZtr, rootLoc)
        cmds.parent(rootLoc, "facialGuide_grp")

        # creates controls
        lctl = mwRig.createControlCrv(mainL, offsetZ=21, size=2, shape="scUp")[0]
        rctl = mwRig.createControlCrv(mainR, offsetZ=21, size=2, shape="scUp")[0]

        lCtlShape = cmds.listRelatives(lctl, c=1, s=1)[0]
        rCtlShape = cmds.listRelatives(rctl, c=1, s=1)[0]
        if symmetric == True:
            mwUtils.transformMirror(rctl)

        cmds.setAttr(lCtlShape + ".overrideEnabled", 1)
        cmds.setAttr(lCtlShape + ".overrideColor", 6)
        cmds.setAttr(rCtlShape + ".overrideEnabled", 1)
        cmds.setAttr(rCtlShape + ".overrideColor", 13)

        for l in secondaryLocs:
            ctl = mwRig.createControlCrv(l, offsetZ=1, size=0.5)[0]
            ctlShape = cmds.listRelatives(ctl, c=1, s=1)[0]
            mwUtils.lockHideAttr(l, attrs=["sx", "sy", "sz"])
            mwUtils.lockHideAttr(ctl, attrs=["rx", "ry", "rz", "sx", "sy", "sz"])
            cmds.setAttr(ctlShape + ".overrideEnabled", 1)
            cmds.setAttr(ctlShape + ".overrideColor", 5)

            if "1_" in l and addTip == True:
                ctlTip = mwRig.createControlCrv(
                    l, offsetZ=1, size=0.25, name=ctl.replace("1_", "Tip_")
                )[0]
                ctlTipShape = cmds.listRelatives(ctlTip, c=1, s=1)[0]
                mwUtils.lockHideAttr(ctlTip, attrs=["rx", "ry", "rz", "sx", "sy", "sz"])
                cmds.setAttr(ctlTipShape + ".overrideEnabled", 1)
                cmds.setAttr(ctlTipShape + ".overrideColor", 5)

            if "_R_" in ctl:
                if symmetric == True:
                    mwUtils.transformMirror(ctl)
                cmds.setAttr(ctlShape + ".overrideColor", 12)

                if "1_" in l and addTip == True:
                    if symmetric == True:
                        mwUtils.transformMirror(ctlTip)
                    cmds.setAttr(ctlTipShape + ".overrideColor", 12)

            if "_C_" in ctl:
                cmds.setAttr(ctlShape + ".overrideColor", 7)

        cmds.select(d=1)


def showMwEyebrowsUI(*args):
    gqt.showDialog(eyebrowsRigUI)


if __name__ == "__main__":
    showMwEyebrowsUI()

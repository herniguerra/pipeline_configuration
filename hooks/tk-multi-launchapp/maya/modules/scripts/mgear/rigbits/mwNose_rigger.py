"""MW nose rigger tool"""

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

##########################################################
# Nose constructor
##########################################################


def noseRig(name, faceGeo, addGeos, parentJnt, facePolys=None):

    ######
    # Var
    ######

    rootLoc = name + "SquetchRoot_C_loc"
    crv = name + "Squetch_C_crv"
    ctl = name + "Squetch_C_ctl"

    ##############
    # Checkers
    ##############

    if parentJnt == "":
        pm.displayWarning("Parent joint is not defined.")
        return

    if faceGeo == "":
        pm.displayWarning("Face geo is not defined.")
        return

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

    nose_root = str(primitive.addTransform(None, mwUtils.setName(name, "root")))

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

    ##################
    # Joints
    ##################

    # mainJoints
    children = cmds.listRelatives(rootLoc, c=1, type="transform")
    locList = []
    jntList = []

    for c in children:
        if "_loc" in c:
            locList.append(c)

    cmds.select(d=1)
    pos = cmds.xform(rootLoc, q=1, t=1, ws=1)
    jcrv = cmds.joint(n=name + "Squetch_C_jcrv", p=pos)
    ztr = mwUtils.addZtr(jcrv)
    cmds.parent(ztr, nose_root)

    cmds.select(d=1)

    for i in range(1, len(locList) + 1):
        loc = name + "Squetch" + str(i) + "_C_loc"
        jntName = loc.replace("loc", "jnt")
        pos = cmds.xform(loc, q=1, t=1, ws=1)
        jnt = cmds.joint(n=jntName, p=pos, a=1)
        jntList.append(jnt)
        if i == 1:
            firstZtr = mwUtils.addZtr(jnt)
            holdPos = cmds.xform(jnt, q=1, t=1, ws=1)
        cmds.select(jnt, r=1)

    # last joint
    lastJoint = rootLoc.replace("Root", "Squetch" + str(i + 1)).replace("loc", "jns")
    pos = cmds.xform(rootLoc, q=1, t=1, ws=1)
    jnt = cmds.joint(n=lastJoint, p=pos, a=1)

    # hold joint
    cmds.select(d=1)
    holdJoint = cmds.joint(n=name + "Hold_C_jnt", p=holdPos)

    # spline ik
    firstJoint = name + "Squetch1_C_jnt"
    cmds.select(firstJoint, r=1)
    cmds.select(lastJoint, add=1)
    ikHandle = cmds.ikHandle(sol="ikSplineSolver")

    ikCrv = name + "IkSpline_C_crv"

    ikh = name + "IkSpline_C_ikh"
    cmds.rename(ikHandle[0], ikh)
    cmds.rename(ikHandle[2], ikCrv)
    cmds.parent(ikCrv, nose_root)
    cmds.parent(ikh, nose_root)
    ikCrvShape = cmds.listRelatives(ikCrv, c=1, s=1)[0]

    cmds.select(holdJoint, r=1)
    cmds.select(jcrv, add=1)
    cmds.select(ikCrv, add=1)
    cmds.skinCluster(n=name + "Curve_C_skc")

    cmds.setAttr(ikh + ".dTwistControlEnable", 1)
    cmds.setAttr(ikh + ".dWorldUpType", 4)
    cmds.setAttr(ikh + ".dForwardAxis", 3)
    cmds.setAttr(ikh + ".dWorldUpAxis", 3)

    cmds.setAttr(ikh + ".dWorldUpVectorY", 0)
    cmds.setAttr(ikh + ".dWorldUpVectorZ", 1)

    cmds.setAttr(ikh + ".dWorldUpVectorEndY", 0)
    cmds.setAttr(ikh + ".dWorldUpVectorEndZ", 1)

    cmds.connectAttr(firstZtr + ".worldMatrix", ikh + ".dWorldUpMatrix")
    cmds.connectAttr(jcrv + ".worldMatrix", ikh + ".dWorldUpMatrixEnd")

    # squetch
    cinfo = cmds.createNode("curveInfo", n=name + "Squetch_C_cinfo")
    cmds.connectAttr(ikCrvShape + ".worldSpace[0]", cinfo + ".inputCurve")
    norm = cmds.createNode("multiplyDivide", n=name + "Squetch_C_norm")
    cmds.setAttr(norm + ".operation", 2)
    cmds.connectAttr(cinfo + ".arcLength", norm + ".input1X")
    cmds.setAttr(norm + ".input2X", cmds.getAttr(cinfo + ".arcLength"))

    for j in jntList:
        cmds.connectAttr(norm + ".outputX", j + ".sy")

    sub = cmds.createNode("plusMinusAverage", n=name + "Squetch_C_sub")
    cmds.setAttr(sub + ".operation", 2)
    cmds.connectAttr(norm + ".outputX", sub + ".input1D[0]")
    cmds.setAttr(sub + ".input1D[1]", 1)

    for i, j in enumerate(jntList):
        val = (-1 + (float(i) / len(jntList))) * 3

        mdv = cmds.createNode("multiplyDivide", n=j.replace("jnt", "mdv"))
        cmds.connectAttr(sub + ".output1D", mdv + ".input1X")
        cmds.connectAttr(sub + ".output1D", mdv + ".input1Z")
        cmds.setAttr(mdv + ".input2X", 1)
        cmds.setAttr(mdv + ".input2Z", 1)

        pma = cmds.createNode("plusMinusAverage", n=j.replace("jnt", "sum"))
        cmds.connectAttr(mdv + ".outputX", pma + ".input3D[0].input3Dx")
        cmds.connectAttr(mdv + ".outputZ", pma + ".input3D[0].input3Dz")
        cmds.setAttr(pma + ".input3D[1].input3Dx", val)
        cmds.setAttr(pma + ".input3D[1].input3Dz", val)
        cmds.connectAttr(pma + ".output3D.output3Dx", j + ".sx")
        cmds.connectAttr(pma + ".output3D.output3Dz", j + ".sz")

    ##################
    # Controls
    ##################

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

    cmds.connectAttr(ctl + ".tx", jcrv + ".tx")
    cmds.connectAttr(ctl + ".ty", jcrv + ".ty")
    cmds.connectAttr(ctl + ".tz", jcrv + ".tz")
    cmds.connectAttr(ctl + ".rx", jcrv + ".rx")
    cmds.connectAttr(ctl + ".ry", jcrv + ".ry")
    cmds.connectAttr(ctl + ".rz", jcrv + ".rz")
    cmds.connectAttr(ctl + ".sx", jcrv + ".sx")
    cmds.connectAttr(ctl + ".sy", jcrv + ".sy")
    cmds.connectAttr(ctl + ".sz", jcrv + ".sz")

    ##################
    # Facial geo layer
    ##################

    faceGeoPly, facialCut, facialBody, addGeosPly = mwRig.createFacialGeoLayer(
        faceGeo, addGeos, name, facePolys=facePolys
    )

    skcName = mwUtils.renameSuffix(faceGeoPly, "skc", add="")

    cmds.select(name + "Squetch*_jnt", r=1)
    jnts = cmds.ls(sl=1)
    cmds.select(holdJoint, add=1)
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
            cmds.select(holdJoint, add=1)
            cmds.select(g, add=1)
            cmds.skinCluster(n=mwUtils.renameSuffix(g, "skc", add=""))

            cmds.parent(g, name + "_C_root")

    ##################
    # Cleanup
    ##################

    cmds.select(name + "*Jnt*ztr", r=1)
    jntGrp = cmds.group(n=name + "Jnt_grp")

    cmds.select(name + "*Ctl_*_ztr", r=1)
    ctlGrp = cmds.group(n=name + "Ctl_C_grp")

    if cmds.objExists(parentJnt):
        mwUtils.constraint(parentJnt, ctlGrp)
        mwUtils.constraint(parentJnt, ctlGrp, type="scale")

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

    cmds.parent(name + "_C_root", facialSetupGrp)

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
# Nose Rig UI
##########################################################


class noseRigUI(MayaQWidgetDockableMixin, QtWidgets.QDialog):

    valueChanged = QtCore.Signal(int)

    def __init__(self, parent=None):
        super(noseRigUI, self).__init__(parent)
        self.create()

    def create(self):

        self.setWindowTitle("mwNose rigger")
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

        # name prefix
        self.prefix_group = QtWidgets.QGroupBox("Name Prefix")
        self.prefix_lineEdit = QtWidgets.QLineEdit()
        self.prefix_lineEdit.setText("nose")

        # joints
        self.parentJnt_label = QtWidgets.QLabel("Parent joint:")
        self.parentJnt_lineEdit = QtWidgets.QLineEdit()
        self.parentJnt_button = QtWidgets.QPushButton("<<")

        # options
        self.options_group = QtWidgets.QGroupBox("Options")
        self.jointNum_label = QtWidgets.QLabel("Joints:")
        self.jointNum_value = QtWidgets.QSpinBox()
        self.jointNum_value.setRange(3, 10)
        self.jointNum_value.setSingleStep(1)
        self.jointNum_value.setValue(5)

        # build button
        self.createLocs_button = QtWidgets.QPushButton("Create locators")
        self.build_button = QtWidgets.QPushButton("Build nose rig")

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
        input_layout.addLayout(parentJnt_layout)

        self.input_group.setLayout(input_layout)

        # options layout
        jointNum_layout = QtWidgets.QHBoxLayout()
        jointNum_layout.addWidget(self.jointNum_label)
        jointNum_layout.addWidget(self.jointNum_value)

        options_layout = QtWidgets.QVBoxLayout()
        options_layout.setContentsMargins(6, 1, 6, 2)
        options_layout.addLayout(jointNum_layout)

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

    def populateDict(self):
        self.buildDict = {}
        name = self.prefix_lineEdit.text()
        rootLoc = name + "Root_C_loc"

        if cmds.objExists(rootLoc):
            self.buildDict["nose"] = [
                cmds.getAttr(rootLoc + ".name"),
                cmds.getAttr(rootLoc + ".faceGeo"),
                cmds.getAttr(rootLoc + ".addGeos"),
                cmds.getAttr(rootLoc + ".parentJnt"),
            ]

        else:
            self.buildDict["nose"] = [
                self.prefix_lineEdit.text(),
                self.faceGeo_lineEdit.text(),
                self.addGeos_lineEdit.text(),
                self.parentJnt_lineEdit.text(),
                self.jointNum_value.value(),
            ]

    def buildRig(self):
        self.populateDict()
        noseRig(*self.buildDict["nose"])

    def createLocsInScene(self):
        self.populateDict()
        name = self.buildDict["nose"][0]
        faceGeo = self.buildDict["nose"][1]
        addGeos = self.buildDict["nose"][2]
        parentJnt = self.buildDict["nose"][3]
        jointNum = self.buildDict["nose"][4]

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

        # creates root loc
        rootLoc = mwRig.locator(name=name + "Root_C_loc", ls=2)
        cmds.addAttr(rootLoc, ln="builder", dt="string")
        cmds.addAttr(rootLoc, ln="name", dt="string")
        cmds.addAttr(rootLoc, ln="faceGeo", dt="string")
        cmds.addAttr(rootLoc, ln="addGeos", dt="string")
        cmds.addAttr(rootLoc, ln="parentJnt", dt="string")
        cmds.setAttr(rootLoc + ".builder", "mwNose", type="string")
        cmds.setAttr(rootLoc + ".name", name, type="string")
        cmds.setAttr(rootLoc + ".faceGeo", faceGeo, type="string")
        cmds.setAttr(rootLoc + ".addGeos", addGeos, type="string")
        cmds.setAttr(rootLoc + ".parentJnt", parentJnt, type="string")
        cmds.setAttr(rootLoc + ".overrideEnabled", 1)
        cmds.setAttr(rootLoc + ".overrideColor", 17)
        cmds.setAttr(rootLoc + "Shape.overrideEnabled", 1)
        cmds.setAttr(rootLoc + "Shape.overrideColor", 1)

        # creates main locs
        jointNum = int(jointNum)

        j = 1
        for i in range(jointNum - 1, 0, -1):
            loc = mwRig.locator(name=name + "Squetch" + str(i) + "_C_loc")

            cmds.setAttr(loc + ".tx", 0)
            cmds.setAttr(loc + ".ty", j)
            cmds.setAttr(loc + ".tz", 0)
            cmds.setAttr(loc + "Shape.overrideEnabled", 1)
            cmds.setAttr(loc + "Shape.overrideColor", 17)

            cmds.parent(loc, rootLoc)

            j += 1

        cmds.parent(rootLoc, "facialGuide_grp")

        # creates controls
        crv = mwRig.createControlCrv(
            rootLoc,
            offsetZ=3,
            size=2,
            shape="circle",
            nr=[0, 1, 0],
            name=name + "Squetch_C_crv",
        )[0]

        cmds.move(0, 6, -1, crv + ".cv[5]", wd=1, r=1, os=1)
        cmds.move(1, 0, 0, crv + ".cv[3]", wd=1, r=1, os=1)
        cmds.move(-1, 0, 0, crv + ".cv[7]", wd=1, r=1, os=1)
        cmds.move(0, 0.5, 0, crv + ".cv[6]", wd=1, r=1, os=1)
        cmds.move(0, 0.5, 0, crv + ".cv[4]", wd=1, r=1, os=1)

        crvShape = cmds.listRelatives(crv, c=1, s=1)[0]

        cmds.setAttr(crvShape + ".overrideEnabled", 1)
        cmds.setAttr(crvShape + ".overrideColor", 14)

        cmds.select(d=1)


def showMwNoseUI(*args):
    gqt.showDialog(noseRigUI)


if __name__ == "__main__":
    showMwNoseUI()

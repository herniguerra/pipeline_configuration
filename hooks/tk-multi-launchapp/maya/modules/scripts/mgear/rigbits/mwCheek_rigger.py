"""MW cheek rigger tool"""

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
# Cheek constructor
##########################################################


def cheekRig(name, faceGeo, addGeos, parentJnt, facePolys=None):

    ######
    # Var
    ######

    rootLoc = name + "Root_C_loc"
    crvL = name + "_L_crv"
    ctlL = name + "_L_ctl"
    crvR = name + "_R_crv"
    ctlR = name + "_R_ctl"

    ##############
    # Checkers
    ##############

    if parentJnt == "":
        pm.displayWarning(name + " - Parent joint is not defined.")
        return

    if faceGeo == "":
        pm.displayWarning(name + " - Face geo is not defined.")
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

    cheek_root = str(primitive.addTransform(None, mwUtils.setName(name, "root")))

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

    for loc in locList:
        cmds.select(d=1)
        jntName = loc.replace("loc", "jnt")
        pos = cmds.xform(loc, q=1, t=1, ws=1)
        rot = cmds.xform(loc, q=1, ro=1, ws=1)
        jnt = cmds.joint(n=jntName, p=pos, a=1)
        cmds.xform(jnt, ro=rot, ws=1)
        ztr = mwUtils.addZtr(jnt)
        jntList.append(jnt)

    # hold joint
    cmds.select(d=1)
    holdJoint = cmds.joint(n=name + "Hold_C_jnt")

    ##################
    # Controls
    ##################

    for jnt in jntList:
        crv = jnt.replace("jnt", "crv")
        ctl = jnt.replace("jnt", "ctl")
        crvCopy = cmds.duplicate(crv, n=crv.replace("crv", "crvCopy"))[0]

        cmds.setAttr(crvCopy + ".tx", lock=False, cb=True)
        cmds.setAttr(crvCopy + ".ty", lock=False, cb=True)
        cmds.setAttr(crvCopy + ".tz", lock=False, cb=True)
        cmds.setAttr(crvCopy + ".tx", k=True)
        cmds.setAttr(crvCopy + ".ty", k=True)
        cmds.setAttr(crvCopy + ".tz", k=True)
        cmds.setAttr(crvCopy + ".rx", lock=False, cb=True)
        cmds.setAttr(crvCopy + ".ry", lock=False, cb=True)
        cmds.setAttr(crvCopy + ".rz", lock=False, cb=True)
        cmds.setAttr(crvCopy + ".rx", k=True)
        cmds.setAttr(crvCopy + ".ry", k=True)
        cmds.setAttr(crvCopy + ".rz", k=True)
        cmds.setAttr(crvCopy + ".sx", lock=False, cb=True)
        cmds.setAttr(crvCopy + ".sy", lock=False, cb=True)
        cmds.setAttr(crvCopy + ".sz", lock=False, cb=True)
        cmds.setAttr(crvCopy + ".sx", k=True)
        cmds.setAttr(crvCopy + ".sy", k=True)
        cmds.setAttr(crvCopy + ".sz", k=True)

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

            mwUtils.connectAttr(ctl + ".tx", jnt + ".tx", "negative")
            mwUtils.connectAttr(ctl + ".ty", jnt + ".ty")
            mwUtils.connectAttr(ctl + ".tz", jnt + ".tz")

            mwUtils.connectAttr(ctl + ".rx", jnt + ".rx")
            mwUtils.connectAttr(ctl + ".ry", jnt + ".ry", "negative")
            mwUtils.connectAttr(ctl + ".rz", jnt + ".rz", "negative")

            mwUtils.connectAttr(ctl + ".sx", jnt + ".sx")
            mwUtils.connectAttr(ctl + ".sy", jnt + ".sy")
            mwUtils.connectAttr(ctl + ".sz", jnt + ".sz")

        else:

            mwUtils.connectAttr(ctl + ".tx", jnt + ".tx")
            mwUtils.connectAttr(ctl + ".ty", jnt + ".ty")
            mwUtils.connectAttr(ctl + ".tz", jnt + ".tz")

            mwUtils.connectAttr(ctl + ".rx", jnt + ".rx")
            mwUtils.connectAttr(ctl + ".ry", jnt + ".ry")
            mwUtils.connectAttr(ctl + ".rz", jnt + ".rz")

            mwUtils.connectAttr(ctl + ".sx", jnt + ".sx")
            mwUtils.connectAttr(ctl + ".sy", jnt + ".sy")
            mwUtils.connectAttr(ctl + ".sz", jnt + ".sz")

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
# Cheek Rig UI
##########################################################


class cheekRigUI(MayaQWidgetDockableMixin, QtWidgets.QDialog):

    valueChanged = QtCore.Signal(int)

    def __init__(self, parent=None):
        super(cheekRigUI, self).__init__(parent)
        self.create()

    def create(self):

        self.setWindowTitle("mwCheek rigger")
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
        self.prefix_lineEdit.setText("cheek")

        # joints
        self.parentJnt_label = QtWidgets.QLabel("Parent joint:")
        self.parentJnt_lineEdit = QtWidgets.QLineEdit()
        self.parentJnt_button = QtWidgets.QPushButton("<<")

        # options
        self.options_group = QtWidgets.QGroupBox("Options")

        self.symmetric_check = QtWidgets.QCheckBox("Symmetric")
        self.symmetric_check.setChecked(True)

        # build button
        self.createLocs_button = QtWidgets.QPushButton("Create locators")
        self.build_button = QtWidgets.QPushButton("Build cheek rig")

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
            self.buildDict["cheek"] = [
                cmds.getAttr(rootLoc + ".name"),
                cmds.getAttr(rootLoc + ".faceGeo"),
                cmds.getAttr(rootLoc + ".addGeos"),
                cmds.getAttr(rootLoc + ".parentJnt"),
            ]

        else:
            self.buildDict["cheek"] = [
                self.prefix_lineEdit.text(),
                self.faceGeo_lineEdit.text(),
                self.addGeos_lineEdit.text(),
                self.parentJnt_lineEdit.text(),
                self.symmetric_check.isChecked(),
            ]

    def buildRig(self):
        self.populateDict()
        cheekRig(*self.buildDict["cheek"])

    def createLocsInScene(self):
        self.populateDict()
        name = self.buildDict["cheek"][0]
        faceGeo = self.buildDict["cheek"][1]
        addGeos = self.buildDict["cheek"][2]
        parentJnt = self.buildDict["cheek"][3]
        symmetric = self.buildDict["cheek"][4]

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
        cmds.setAttr(rootLoc + ".builder", "mwCheek", type="string")
        cmds.setAttr(rootLoc + ".name", name, type="string")
        cmds.setAttr(rootLoc + ".faceGeo", faceGeo, type="string")
        cmds.setAttr(rootLoc + ".addGeos", addGeos, type="string")
        cmds.setAttr(rootLoc + ".parentJnt", parentJnt, type="string")
        cmds.setAttr(rootLoc + ".overrideEnabled", 1)
        cmds.setAttr(rootLoc + ".overrideColor", 17)
        cmds.setAttr(rootLoc + "Shape.overrideEnabled", 1)
        cmds.setAttr(rootLoc + "Shape.overrideColor", 1)

        # creates main locs

        locL = mwRig.locator(name=name + "_L_loc", ls=0.5)

        cmds.setAttr(locL + ".tx", 1)
        cmds.setAttr(locL + ".ty", 0)
        cmds.setAttr(locL + ".tz", 0)
        cmds.setAttr(locL + "Shape.overrideEnabled", 1)
        cmds.setAttr(locL + "Shape.overrideColor", 17)

        cmds.parent(locL, rootLoc)

        locR = mwRig.locator(name=name + "_R_loc", ls=0.5)

        cmds.setAttr(locR + "Shape.overrideEnabled", 1)
        cmds.setAttr(locR + "Shape.overrideColor", 17)

        cmds.parent(locR, rootLoc)

        cmds.parent(rootLoc, "facialGuide_grp")

        if symmetric == True:
            mwUtils.transformMirror(locR)

        # creates controls
        crvL = mwRig.createControlCrv(
            locL, offsetX=0, size=2, shape="circle", name=name + "_L_crv",
        )[0]

        mwUtils.lockHideAttr(locL, attrs=["sx", "sy", "sz"])
        mwUtils.lockHideAttr(crvL, attrs=["sx", "sy", "sz"])

        crvLShape = cmds.listRelatives(crvL, c=1, s=1)[0]

        cmds.setAttr(crvLShape + ".overrideEnabled", 1)
        cmds.setAttr(crvLShape + ".overrideColor", 6)

        crvR = mwRig.createControlCrv(
            locR, offsetX=0, size=2, shape="circle", name=name + "_R_crv",
        )[0]

        if symmetric == True:
            mwUtils.transformMirror(crvR)

        mwUtils.lockHideAttr(locR, attrs=["sx", "sy", "sz"])
        mwUtils.lockHideAttr(crvR, attrs=["sx", "sy", "sz"])

        crvRShape = cmds.listRelatives(crvR, c=1, s=1)[0]

        cmds.setAttr(crvRShape + ".overrideEnabled", 1)
        cmds.setAttr(crvRShape + ".overrideColor", 13)

        cmds.select(d=1)


def showMwCheekUI(*args):
    gqt.showDialog(cheekRigUI)


if __name__ == "__main__":
    showMwCheekUI()

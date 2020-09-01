import maya.cmds as cmds
import random
from functools import partial


def run():
    global UI
    UI = createUI()


class createUI(object):

    def __init__(self):
        self.maxGen = 0
        self.modules = []
        self.totalBranches = 0

        if cmds.window('mwCache_window', exists=True):
            cmds.deleteUI('mwCache_window')

        self.window = cmds.window('mwCache_window', title='mwCache v0.0.1',
                                  w=350, h=600, mxb=0, mnb=0, sizeable=0, menuBar=True)
        cmds.menu(label='File')
        cmds.menuItem(label='New', command='btg.deleteAllModules()')
        cmds.menuItem(divider=True)
        cmds.menuItem(label='Exit', command='cmds.deleteUI("mwCache_window")')
        cmds.menu(label='Help', helpMenu=True)
        cmds.menuItem('Application..."', label='About')
        cmds.scrollLayout(w=300, h=600)
        self.mainLayout = cmds.columnLayout(w=275)
        self.modulesColumnLayout = cmds.rowColumnLayout(w=275)
        cmds.setParent(self.mainLayout)
        self.bottomColumnLayout = cmds.columnLayout(w=300)
        cmds.setParent(self.bottomColumnLayout)
        cmds.button('newModuleButton', label='New module',
                    command='btg.NewModule()')
        cmds.button('generateButton', label='Generate tree',
                    command='btg.generateTree()')
        cmds.showWindow(self.window)


class NewModule(object):

    def __init__(self):

        if len(UI.modules) == 0:
            self.gen = 0
            UI.maxGen = 0

        else:
            tempMaxGen = 0
            for m in UI.modules:
                if m.gen > tempMaxGen:
                    tempMaxGen = m.gen

            UI.maxGen = tempMaxGen + 1
            self.gen = int(UI.maxGen)

        UI.modules.append(self)

        # attributes

        self.moduleNumber = len(UI.modules)

        cmds.setParent(UI.modulesColumnLayout)
        self.frameLayout = cmds.frameLayout(
            collapsable=True, borderStyle="out", collapse=True, w=270, label=self.label)
        cmds.scrollLayout(w=270, h=200)
        self.moduleColumnLayout = cmds.rowColumnLayout(w=240)

        cmds.text(l='')
        self.labelTextFieldGrp = cmds.textFieldGrp(label='Label:', text=self.label, cw=[
                                                   1, 70], changeCommand=partial(self.changeAtt, 'label'), w=240)
        cmds.text(l='')
        cmds.separator(style='in')

        # *** Generation controls

        cmds.text(l='')

        self.genIntSliderGrp = cmds.intSliderGrp(field=True, label='Generation:', minValue=0, maxValue=100, fieldMinValue=0, fieldMaxValue=100, value=self.gen, cw=[
                                                 1, 70], changeCommand=partial(self.changeAtt, 'gen'), w=240)

        cmds.text(l='')

        self.dontDeriveCheckBoxGrp = cmds.checkBoxGrp(numberOfCheckBoxes=1, label="Don't derive", value1=self.dontDerive, w=240, cw=[
                                                      1, 70], changeCommand=partial(self.changeAtt, 'dontDerive'))

        cmds.text(l='')

        self.appendToRadioButtonGrp = cmds.radioButtonGrp(label='Append to:', labelArray2=['Prev. generation', 'Branch'], numberOfRadioButtons=2, cw=[
                                                          1, 70], changeCommand=partial(self.changeAtt, 'appendTo'), select=self.appendTo, w=240)

        cmds.text(l='')

        self.inBranchTextFieldGrp = cmds.textFieldGrp(label='Branch:', text=self.inBranch, cw=[
                                                      1, 70], changeCommand=partial(self.changeAtt, 'inBranch'), w=240)

        cmds.text(l='')

        cmds.text(l='')
        cmds.separator(style='in')

        cmds.text(l='')
        cmds.separator(style='in')
        cmds.separator(style='in')
        cmds.text(l='')
        self.liveTweakButton = cmds.button(label='Live tweak', command=partial(
            self.changeAtt, 'liveTweak'), bgc=[0.2, 0.2, 0.2], aop=True)
        cmds.text(l='')
        cmds.button(label='Delete module', command=partial(
            self.deleteModule), bgc=[0.3, 0.2, 0.2])
        cmds.text(l='')
        cmds.separator(style='in')
        cmds.separator(style='in')
        cmds.text(l='')
        cmds.button(label='Add attachment module', command=partial(
            NewAttachmentModule, self))
        cmds.text(l='')

        # ***

    def deleteModule(self, *args):
        cmds.deleteUI(self.frameLayout)
        UI.modules.remove(self)


def deleteAllModules():

    for m in range(0, len(UI.modules)):
        module = UI.modules[0]

        module.deleteModule()

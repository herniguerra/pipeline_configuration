import maya.cmds as cmds
import random
from functools import partial
import sgtk
import mwUtils
import shotgun_api3
import os
import json
import subprocess


def run():
    global main
    global animSource

    main = createUI()
    animSource = AnimSourceModule()


class createUI(object):

    def __init__(self):
        self.sg = shotgun_api3.Shotgun(
            "https://many-worlds.shotgunstudio.com",
            script_name="mwUtils_bringPublish",
            api_key="wmNnyhwfdpuecdstofw0^gjkk",
        )
        self.links = []
        self.lastLinkNum = 1
        self.project_id = mwUtils.getProject(returnId=True)
        self.project_name = mwUtils.getProject()
        self.entity_name = mwUtils.getEntity()
        self.entity_id = mwUtils.getEntity(returnId=True)
        self.entity_type = mwUtils.getEntity(returnType=True)
        if self.entity_type == "Shot":
            self.sequence_name = mwUtils.getSequence()

        if cmds.window('mwCache_window', exists=True):
            cmds.deleteUI('mwCache_window')

        self.window = cmds.window('mwCache_window', title='mwCacheApp v0.0.1',
                                  w=350, h=600, mxb=0, mnb=0, sizeable=0, menuBar=True)
        cmds.menu(label='File')
        cmds.menuItem(label='New', command='mwCacheApp.deleteAllLinks()')
        cmds.menuItem(divider=True)
        cmds.menuItem(label='Load', command='mwCacheApp.load()')
        cmds.menuItem(label='Save', command='mwCacheApp.save()')
        cmds.menuItem(divider=True)
        cmds.menuItem(label='Exit', command='cmds.deleteUI("mwCache_window")')
        cmds.menu(label='Cache location')
        cmds.radioMenuItemCollection()
        self.currentSessionMenuItem = cmds.menuItem(
            label='Current Maya session', radioButton=False)
        self.newProcessMenuItem = cmds.menuItem(
            label='New process', radioButton=True)
        self.deadlineMenuItem = cmds.menuItem(
            label='Deadline', radioButton=False, enable=False)
        self.conductorMenuItem = cmds.menuItem(
            label='Conductor', radioButton=False, enable=False)
        cmds.menu(label='Help', helpMenu=True)
        cmds.scrollLayout(w=320, h=600)
        self.mainLayout = cmds.columnLayout(w=320)
        self.mainColumnLayout = cmds.rowColumnLayout(
            w=320, bgc=[0.2, 0.2, 0.2])
        cmds.setParent(self.mainLayout)
        cmds.text(l='')
        self.bottomColumnLayout = cmds.columnLayout(w=320)
        cmds.setParent(self.bottomColumnLayout)
        cmds.button('newLinkButton', label='New link', bgc=[0.05, 0.41, 0.05],
                    command='mwCacheApp.NewLink()')
        cmds.text(l='')
        self.runCacheChainButton = cmds.button(label='Run Cache Chain', bgc=[0.5, 0.1, 0.1], enable=False,
                                               command='mwCacheApp.runCacheChain()')
        cmds.showWindow(self.window)


class AnimSourceModule(object):

    def __init__(self, label="Source animation"):

        self.label = label

        # attributes
        cmds.setParent(main.mainColumnLayout)
        self.frameLayout = cmds.frameLayout(
            collapsable=True, collapse=False, w=340, label=self.label, bgc=[0.08, 0.08, 0.08])
        # cmds.scrollLayout(w=300, h=200)

        cmds.text(l='')

        self.projectOptionMenuGrp = cmds.optionMenuGrp(
            label='Project:', changeCommand=partial(self.projectChangeCmd), bgc=[0.25, 0.25, 0.25], enableBackground=False)
        cmds.menuItem(label='None')

        self.assetOptionMenuGrp = cmds.optionMenuGrp(
            label='Asset:', changeCommand=partial(self.assetChangeCmd), bgc=[0.25, 0.25, 0.25], enableBackground=False)
        cmds.menuItem(label='None')

        self.sourceOptionMenuGrp = cmds.optionMenuGrp(
            label='Source:', changeCommand=partial(self.sourceChangeCmd), bgc=[0.25, 0.25, 0.25], enableBackground=False)
        cmds.menuItem(label='Shot')
        cmds.menuItem(label='Asset')
        if main.entity_type == "Shot":
            cmds.optionMenuGrp(self.sourceOptionMenuGrp, e=1, v="Shot")
        else:
            cmds.optionMenuGrp(self.sourceOptionMenuGrp, e=1, v="Asset")

        self.seqOptionMenuGrp = cmds.optionMenuGrp(
            label='Seq:', changeCommand=partial(self.seqChangeCmd), bgc=[0.25, 0.25, 0.25], enableBackground=False)
        cmds.menuItem(label='None')

        self.shotOptionMenuGrp = cmds.optionMenuGrp(
            label='Shot:', changeCommand=partial(self.shotChangeCmd), bgc=[0.25, 0.25, 0.25], enableBackground=False)
        cmds.menuItem(label='None')

        self.animTaskOptionMenuGrp = cmds.optionMenuGrp(
            label='Anim Task:', vis=False, changeCommand=partial(self.animTaskChangeCmd), bgc=[0.25, 0.25, 0.25], enableBackground=False)
        cmds.menuItem(label='None')

        self.stepOptionMenuGrp = cmds.optionMenuGrp(
            label='Step:', changeCommand=partial(self.stepChangeCmd), bgc=[0.25, 0.25, 0.25], enableBackground=False)
        cmds.menuItem(label='Animation')
        cmds.menuItem(label='CharacterFX')

        self.taskOptionMenuGrp = cmds.optionMenuGrp(
            label='Task:', changeCommand=partial(self.taskChangeCmd), bgc=[0.25, 0.25, 0.25], enableBackground=False)
        cmds.menuItem(label='None')

        self.versionOptionMenuGrp = cmds.optionMenuGrp(
            label='Version:', changeCommand=partial(self.versionChangeCmd), bgc=[0.25, 0.25, 0.25], enableBackground=False)
        cmds.menuItem(label='None')
        cmds.separator(style='in')

        cmds.rowColumnLayout(numberOfRows=1)

        self.cutIn = 1001
        self.cutOut = 1002

        self.frameRangeIntFieldGrp = cmds.intFieldGrp(numberOfFields=2, label='Frame range:', changeCommand=partial(self.frameRangeChangeCmd),
                                                      value1=self.cutIn, value2=self.cutOut, cw3=[80, 40, 40], bgc=[0.25, 0.25, 0.25], enableBackground=False)

        self.resetFrameRangeButton = cmds.button(
            label="Reset", enable=0, command=partial(self.populateFrameRange))

        cmds.setParent(self.frameLayout)
        cmds.rowColumnLayout(numberOfRows=1)

        cmds.text(l='')

        self.currentFrameRangeFromScene = False

        self.frameRangeFromSceneCheckBox = cmds.checkBox(
            label="From source scene", align='right', changeCommand=partial(self.frameRangeFromSceneChangeCmd), v=self.currentFrameRangeFromScene)

        cmds.text(l='')

        cmds.setParent(self.frameLayout)
        cmds.separator(style='in')
        cmds.rowColumnLayout(numberOfRows=2, rowSpacing=[2, 3])

        self.animPreRoll = 50
        self.simPreRoll = 20
        self.currentAnimPreRoll = self.animPreRoll
        self.currentSimPreRoll = self.simPreRoll

        self.animPreRollIntFieldGrp = cmds.intFieldGrp(numberOfFields=1, label='Anim PreRoll:', changeCommand=partial(self.animPreRollChangeCmd),
                                                       value1=self.animPreRoll, cw2=[80, 40], bgc=[0.25, 0.25, 0.25], enableBackground=False)

        self.simPreRollIntFieldGrp = cmds.intFieldGrp(numberOfFields=1, label='Sim PreRoll:', changeCommand=partial(self.simPreRollChangeCmd),
                                                      value1=self.simPreRoll, cw2=[80, 40], bgc=[0.25, 0.25, 0.25], enableBackground=False)

        self.resetAnimPreRollButton = cmds.button(
            label="Reset", enable=0, command=partial(self.populateAnimPreRoll))

        self.resetSimPreRollButton = cmds.button(
            label="Reset", enable=0, command=partial(self.populateSimPreRoll))

        cmds.text(l='')

        cmds.setParent(main.mainColumnLayout)

        cmds.separator(style='in')

        cmds.setParent(self.frameLayout)
        cmds.separator(style='in')

        self.populateProject()

    def projectChangeCmd(self, *args):
        self.currentProjectName = cmds.optionMenuGrp(
            self.projectOptionMenuGrp, q=1, v=1)

        filters = [["is_demo", "is", False], [
            "is_template", "is", False], ["archived", "is", False]]
        fields = ["name", "id"]
        order = [{'field_name': 'name', 'direction': 'asc'}]
        find = main.sg.find("Project", filters, fields, order)

        for f in find:
            proj = f["name"]

            if proj == self.currentProjectName:
                self.currentProjectId = f["id"]

        self.populateAsset()

    def assetChangeCmd(self, *args):
        # find and store asset_id
        self.currentAssetName = cmds.optionMenuGrp(
            self.assetOptionMenuGrp, q=True, v=True)
        filters = [["code", "is", self.currentAssetName], [
            "project", "is", {"type": "Project", "id": self.currentProjectId}]]
        self.currentAssetId = main.sg.find_one("Asset", filters)["id"]

        self.sourceChangeCmd()

    def sourceChangeCmd(self, *args):
        if cmds.optionMenuGrp(self.sourceOptionMenuGrp, q=1, v=1) == "Asset":
            cmds.optionMenuGrp(self.seqOptionMenuGrp, e=1, vis=0)
            cmds.optionMenuGrp(self.shotOptionMenuGrp, e=1, vis=0)
            cmds.optionMenuGrp(self.animTaskOptionMenuGrp, e=1, vis=1)

            self.cutIn = 1001
            self.cutOut = 1002
            cmds.checkBox(self.frameRangeFromSceneCheckBox, e=1, v=1)
            self.frameRangeFromSceneChangeCmd()

            self.populateAnimTask()

        elif cmds.optionMenuGrp(self.sourceOptionMenuGrp, q=1, v=1) == "Shot":
            cmds.optionMenuGrp(self.seqOptionMenuGrp, e=1, vis=1)
            cmds.optionMenuGrp(self.shotOptionMenuGrp, e=1, vis=1)
            cmds.optionMenuGrp(self.animTaskOptionMenuGrp, e=1, vis=0)

            cmds.checkBox(self.frameRangeFromSceneCheckBox, e=1, v=0)
            self.frameRangeFromSceneChangeCmd()

            self.populateSeq()

    def seqChangeCmd(self, *args):
        # find and store seq_id
        self.currentSequenceName = cmds.optionMenuGrp(
            self.seqOptionMenuGrp, q=True, v=True)
        filters = [["code", "is", self.currentSequenceName], [
            "project", "is", {"type": "Project", "id": self.currentProjectId}]]
        try:
            self.currentSequenceId = main.sg.find_one(
                "Sequence", filters)["id"]
        except:
            0

        self.populateShot()

    def shotChangeCmd(self, *args):
        # find and store shot_id
        self.currentShotName = cmds.optionMenuGrp(
            self.shotOptionMenuGrp, q=True, v=True)
        filters = [["code", "is", self.currentShotName], [
            "project", "is", {"type": "Project", "id": self.currentProjectId}]]
        fields = ["id", "name", "sg_cut_in", "sg_cut_out"]

        try:
            find = main.sg.find_one("Shot", filters, fields)
            self.currentShotId = find["id"]
            self.cutIn = find["sg_cut_in"]
            self.cutOut = find["sg_cut_out"]
        except:
            0

        self.populateFrameRange()
        self.populateTask()

    def animTaskChangeCmd(self, *args):
        # find and store animTaskId
        self.currentAnimTaskName = cmds.optionMenuGrp(
            self.animTaskOptionMenuGrp, q=True, v=True)
        # find step_id
        filters = [["code", "is", "Animation"],
                   ["entity_type", "is", "Asset"]]
        step_id = main.sg.find_one("Step", filters)["id"]

        filters = [["project", "is", {"type": "Project", "id": self.currentProjectId}],
                   ["step", "is", {"type": "Step",
                                   "id": step_id}]]
        fields = ["entity", "content"]
        find = main.sg.find("Task", filters, fields)

        for task in find:
            if task["entity"]["name"] == self.currentAssetName and task["content"] == self.currentAnimTaskName:
                self.currentAnimTaskId = task["id"]

        self.populateFrameRange()
        self.stepChangeCmd()

    def stepChangeCmd(self, *args):
        self.populateTask()

    def taskChangeCmd(self, *args):
        self.currentTaskName = cmds.optionMenuGrp(
            self.taskOptionMenuGrp, q=True, v=True)

        for task in self.taskList:
            if task[0] == self.currentTaskName:
                self.currentTaskId = task[1]

        if self.currentTaskName == "None":
            self.currentTaskId = 0

        self.populateVersion()

    def versionChangeCmd(self, *args):
        try:
            self.currentVersionNumber = int(cmds.optionMenuGrp(
                self.versionOptionMenuGrp, q=True, v=True))

            filters = [
                ["task.Task.id", "is", self.currentTaskId],
                ["version_number", "is", self.currentVersionNumber],
                ["published_file_type.PublishedFileType.code", "is", "Alembic Cache"],
            ]

            fields = ["path", "name", "version_number"]

            version = main.sg.find_one("PublishedFile", filters, fields)

            self.publishedVersion = version["id"]

        except:
            pass

        # loaded color
        cmds.optionMenuGrp(
            self.versionOptionMenuGrp, e=1, bgc=[0.25, 0.25, 0.25])
        cmds.optionMenuGrp(
            self.versionOptionMenuGrp, e=1, enableBackground=False)
        cmds.refresh()

    def frameRangeChangeCmd(self, *args):
        self.currentCutIn = cmds.intFieldGrp(self.frameRangeIntFieldGrp, q=1,
                                             value1=True)
        self.currentCutOut = cmds.intFieldGrp(self.frameRangeIntFieldGrp, q=1,
                                              value2=True)

        if self.currentCutIn == self.cutIn and self.currentCutOut == self.cutOut:
            cmds.button(self.resetFrameRangeButton, e=1, enable=0)
        else:
            cmds.button(self.resetFrameRangeButton, e=1, enable=1)

    def frameRangeFromSceneChangeCmd(self, *args):
        self.frame_range_from_scene = cmds.checkBox(
            self.frameRangeFromSceneCheckBox, q=1, v=1)
        cmds.intFieldGrp(self.frameRangeIntFieldGrp, e=1,
                         enable=not(self.frame_range_from_scene))

        self.currentFrameRangeFromScene = cmds.checkBox(
            self.frameRangeFromSceneCheckBox, q=1, v=1)

        self.frameRangeChangeCmd()

        if self.frame_range_from_scene == True:
            cmds.button(self.resetFrameRangeButton, e=1, enable=False)

    def animPreRollChangeCmd(self, *args):
        self.currentAnimPreRoll = cmds.intFieldGrp(
            self.animPreRollIntFieldGrp, q=1, value1=True)

        if cmds.intFieldGrp(self.animPreRollIntFieldGrp, q=1, value1=True) == self.animPreRoll:
            cmds.button(self.resetAnimPreRollButton, e=1, enable=0)
        else:
            cmds.button(self.resetAnimPreRollButton, e=1, enable=1)

    def simPreRollChangeCmd(self, *args):
        self.currentSimPreRoll = cmds.intFieldGrp(
            self.simPreRollIntFieldGrp, q=1, value1=True)

        if cmds.intFieldGrp(self.simPreRollIntFieldGrp, q=1, value1=True) == self.simPreRoll:
            cmds.button(self.resetSimPreRollButton, e=1, enable=0)
        else:
            cmds.button(self.resetSimPreRollButton, e=1, enable=1)

    def populateProject(self, *args):
        # loading color
        cmds.optionMenuGrp(
            self.projectOptionMenuGrp, e=1, bgc=[0.8, 0.6, 0.02])
        cmds.refresh()

        # deletes all items in menu
        menuItems = cmds.optionMenuGrp(
            self.projectOptionMenuGrp, q=True, itemListLong=True)
        if menuItems:
            cmds.deleteUI(menuItems)

        filters = [["is_demo", "is", False], [
            "is_template", "is", False], ["archived", "is", False]]
        fields = ["name", "id"]
        order = [{'field_name': 'name', 'direction': 'asc'}]
        find = main.sg.find("Project", filters, fields, order)

        # loaded color
        cmds.optionMenuGrp(
            self.projectOptionMenuGrp, e=1, bgc=[0.25, 0.25, 0.25])
        cmds.optionMenuGrp(
            self.projectOptionMenuGrp, e=1, enableBackground=False)
        cmds.refresh()

        if len(find) == 0:
            cmds.menuItem(parent=(self.projectOptionMenuGrp +
                                  '|OptionMenu'), label="None")

        else:
            for f in find:
                proj = f["name"]
                cmds.menuItem(parent=(self.projectOptionMenuGrp +
                                      '|OptionMenu'), label=proj)
                if proj == main.project_name:
                    self.currentProjectName = proj
                    self.currentProjectId = f["id"]

            try:
                cmds.optionMenuGrp(self.projectOptionMenuGrp,
                                   e=1, v=main.project_name)

            except:
                0

            self.populateAsset()

    def populateAsset(self, *args):
        # loading color
        cmds.optionMenuGrp(
            self.assetOptionMenuGrp, e=1, bgc=[0.8, 0.6, 0.02])
        cmds.refresh()

        # deletes all items in menu
        menuItems = cmds.optionMenuGrp(
            self.assetOptionMenuGrp, q=True, itemListLong=True)
        if menuItems:
            cmds.deleteUI(menuItems)

        filters = [["project", "is", {"type": "Project", "id": self.currentProjectId}],
                   ["sg_asset_type", "is", "Character"]]
        fields = ["code", "id"]
        order = [{'field_name': 'code', 'direction': 'asc'}]
        find = main.sg.find("Asset", filters, fields, order)

        if len(find) == 0:
            cmds.menuItem(parent=(self.assetOptionMenuGrp +
                                  '|OptionMenu'), label="None")

        else:
            for f in find:
                char = f["code"]
                cmds.menuItem(parent=(self.assetOptionMenuGrp +
                                      '|OptionMenu'), label=char)

            try:
                entity_name = mwUtils.getEntity()
                cmds.optionMenuGrp(self.assetOptionMenuGrp, e=1, v=entity_name)
            except:
                0

        # loaded color
        cmds.optionMenuGrp(
            self.assetOptionMenuGrp, e=1, bgc=[0.25, 0.25, 0.25])
        cmds.optionMenuGrp(
            self.assetOptionMenuGrp, e=1, enableBackground=False)
        cmds.refresh()

        self.assetChangeCmd()

    def populateSeq(self, *args):
        # loading color
        cmds.optionMenuGrp(
            self.seqOptionMenuGrp, e=1, bgc=[0.8, 0.6, 0.02])
        cmds.refresh()

        # deletes all items in menu
        menuItems = cmds.optionMenuGrp(
            self.seqOptionMenuGrp, q=True, itemListLong=True)
        if menuItems:
            cmds.deleteUI(menuItems)

        # find all shots in project that have the asset
        filters = [["project", "is", {"type": "Project", "id": self.currentProjectId}],
                   {"filter_operator": "any", "filters": [
                       ["assets", "is", {"type": "Asset", "id": self.currentAssetId}]]}]
        fields = ["code"]
        order = [{'field_name': 'code', 'direction': 'asc'}]
        find = main.sg.find("Shot", filters, fields, order)

        seqList = []

        # find all sequences that belong to those shots
        for f in find:
            filters = [["project", "is", {"type": "Project", "id": self.currentProjectId}],
                       {"filter_operator": "any", "filters": [
                           ["shots", "is", {"type": "Shot", "id": f["id"]}]]}]

            fields = ["code"]
            order = [{'field_name': 'code', 'direction': 'asc'}]

            find = main.sg.find_one("Sequence", filters, fields)

            if find["code"] not in seqList:
                seqList.append(find["code"])

        # loaded color
        cmds.optionMenuGrp(
            self.seqOptionMenuGrp, e=1, bgc=[0.25, 0.25, 0.25])
        cmds.optionMenuGrp(
            self.seqOptionMenuGrp, e=1, enableBackground=False)
        cmds.refresh()

        if len(seqList) == 0:
            cmds.menuItem(parent=(self.seqOptionMenuGrp +
                                  '|OptionMenu'), label="None")
        else:
            seqList = sorted(seqList)
            for seq in seqList:
                cmds.menuItem(parent=(self.seqOptionMenuGrp +
                                      '|OptionMenu'), label=seq)

            try:
                cmds.optionMenuGrp(self.seqOptionMenuGrp,
                                   e=1, v=main.sequence_name)
            except:
                0

        self.seqChangeCmd()

    def populateShot(self, *args):
        # loading color
        cmds.optionMenuGrp(
            self.shotOptionMenuGrp, e=1, bgc=[0.8, 0.6, 0.02])
        cmds.refresh()
        # deletes all items in menu
        menuItems = cmds.optionMenuGrp(
            self.shotOptionMenuGrp, q=True, itemListLong=True)
        if menuItems:
            cmds.deleteUI(menuItems)

        # find all shots in project that have the asset
        filters = [["project", "is", {"type": "Project", "id": self.currentProjectId}],
                   {"filter_operator": "any", "filters": [
                       ["assets", "is", {"type": "Asset", "id": self.currentAssetId}]]}]
        fields = ["code"]
        order = [{'field_name': 'code', 'direction': 'asc'}]
        find = main.sg.find("Shot", filters, fields, order)

        shotList = []

        for f in find:
            filters = [["project", "is", {"type": "Project", "id": self.currentProjectId}],
                       {"filter_operator": "any", "filters": [
                           ["shots", "is", {"type": "Shot", "id": f["id"]}]]}]

            fields = ["code"]
            order = [{'field_name': 'code', 'direction': 'asc'}]

            find2 = main.sg.find_one("Sequence", filters, fields)

            if find2["code"] == self.currentSequenceName:
                shotList.append(f["code"])

        # loaded color
        cmds.optionMenuGrp(
            self.shotOptionMenuGrp, e=1, bgc=[0.25, 0.25, 0.25])
        cmds.optionMenuGrp(
            self.shotOptionMenuGrp, e=1, enableBackground=False)
        cmds.refresh()

        if len(shotList) == 0:
            cmds.menuItem(parent=(self.shotOptionMenuGrp +
                                  '|OptionMenu'), label="None")
        else:
            for shot in shotList:
                cmds.menuItem(parent=(self.shotOptionMenuGrp +
                                      '|OptionMenu'), label=shot)

            try:
                cmds.optionMenuGrp(self.shotOptionMenuGrp,
                                   e=1, v=main.shot_name)

                self.populateTask()

            except:
                0

            self.shotChangeCmd()

    def populateAnimTask(self, *args):
        # loading color
        cmds.optionMenuGrp(
            self.animTaskOptionMenuGrp, e=1, bgc=[0.8, 0.6, 0.02])
        cmds.refresh()

        # deletes all items in menu
        menuItems = cmds.optionMenuGrp(
            self.animTaskOptionMenuGrp, q=True, itemListLong=True)
        if menuItems:
            cmds.deleteUI(menuItems)

        # find step_id
        filters = [["code", "is", "Animation"],
                   ["entity_type", "is", "Asset"]]
        step_id = main.sg.find_one("Step", filters)["id"]

        filters = [["project", "is", {"type": "Project", "id": self.currentProjectId}],
                   ["step", "is", {"type": "Step",
                                   "id": step_id}]]
        fields = ["entity", "content"]
        find = main.sg.find("Task", filters, fields)

        self.taskList = []
        for task in find:
            if task["entity"]["name"] == self.currentAssetName:
                self.taskList.append([task["content"], task["id"]])

        # loaded color
        cmds.optionMenuGrp(
            self.animTaskOptionMenuGrp, e=1, bgc=[0.25, 0.25, 0.25])
        cmds.optionMenuGrp(
            self.animTaskOptionMenuGrp, e=1, enableBackground=False)
        cmds.refresh()

        if len(self.taskList) == 0:
            cmds.menuItem(parent=(self.animTaskOptionMenuGrp +
                                  '|OptionMenu'), label="None")

        else:
            i = 0
            for task in self.taskList:
                cmds.menuItem(parent=(self.animTaskOptionMenuGrp +
                                      '|OptionMenu'), label=task[0])
                if i == 0:
                    self.currentAnimTaskName = task[0]
                    self.currentAnimTaskId = task[1]
                i += 1

            try:
                task_name = mwUtils.getTask()
                cmds.optionMenuGrp(
                    self.taskOptionMenuGrp, e=1, v=task_name)

                for task in self.taskList:
                    if task[0] == task_name:
                        self.currentAnimTaskName = task[0]
                        self.currentAnimTaskId = task[1]

            except:
                0

        self.animTaskChangeCmd()

    def populateTask(self, *args):
        # loading color
        cmds.optionMenuGrp(
            self.taskOptionMenuGrp, e=1, bgc=[0.8, 0.6, 0.02])
        cmds.refresh()

        # deletes all items in menu
        menuItems = cmds.optionMenuGrp(
            self.taskOptionMenuGrp, q=True, itemListLong=True)
        if menuItems:
            cmds.deleteUI(menuItems)

        source = cmds.optionMenuGrp(self.sourceOptionMenuGrp, q=1, v=True)
        step_name = cmds.optionMenuGrp(self.stepOptionMenuGrp, q=1, v=True)

        if source == "Shot":
            if step_name == "Animation":
                cmds.optionMenuGrp(self.taskOptionMenuGrp, e=1, vis=True)

            # find step_id
            filters = [["code", "is", step_name],
                       ["entity_type", "is", "Shot"]]
            self.currentStepId = main.sg.find_one("Step", filters)["id"]

            filters = [["project", "is", {"type": "Project", "id": self.currentProjectId}],
                       ["step", "is", {"type": "Step",
                                       "id": self.currentStepId}]]
            fields = ["entity", "content"]
            find = main.sg.find("Task", filters, fields)

            self.taskList = []

            for f in find:
                task_id = f["id"]
                task_name = f["content"]
                shot_id = f["entity"]["id"]
                shot_name = f["entity"]["name"]

                if shot_id == self.currentShotId:
                    self.taskList.append([task_name, task_id])

        elif source == "Asset":
            if step_name == "Animation":
                # find step_id
                filters = [["code", "is", step_name],
                           ["entity_type", "is", "Asset"]]
                self.currentStepId = main.sg.find_one("Step", filters)["id"]

                filters = [["project", "is", {"type": "Project", "id": self.currentProjectId}],
                           ["step", "is", {"type": "Step",
                                           "id": self.currentStepId}]]
                fields = ["entity", "content"]
                find = main.sg.find("Task", filters, fields)

                self.taskList = []
                for f in find:
                    asset_id = f["entity"]["id"]
                    task_name = f["content"]
                    task_id = f["id"]

                    if asset_id == self.currentAssetId and task_id == self.currentAnimTaskId:
                        self.taskList.append([task_name, task_id])

                cmds.optionMenuGrp(self.taskOptionMenuGrp, e=1, vis=False)

            else:
                cmds.optionMenuGrp(self.taskOptionMenuGrp, e=1, vis=True)
                # find step_id
                filters = [["code", "is", step_name],
                           ["entity_type", "is", "Asset"]]
                self.currentStepId = main.sg.find_one("Step", filters)["id"]

                filters = [["project", "is", {"type": "Project", "id": self.currentProjectId}],
                           ["step", "is", {"type": "Step",
                                           "id": self.currentStepId}]]
                fields = ["entity", "content", "upstream_tasks"]
                find = main.sg.find("Task", filters, fields)

                self.taskList = []

                for f in find:
                    asset_id = f["entity"]["id"]
                    task_name = f["content"]
                    task_id = f["id"]
                    animTask_id = f["upstream_tasks"][0]["id"]

                    if asset_id == self.currentAssetId and animTask_id == self.currentAnimTaskId:
                        self.taskList.append([task_name, task_id])

        # loaded color
        cmds.optionMenuGrp(
            self.taskOptionMenuGrp, e=1, bgc=[0.25, 0.25, 0.25])
        cmds.optionMenuGrp(
            self.taskOptionMenuGrp, e=1, enableBackground=False)
        cmds.refresh()

        if len(self.taskList) == 0:
            cmds.menuItem(parent=(self.taskOptionMenuGrp +
                                  '|OptionMenu'), label="None")

        else:
            i = 0
            for task in self.taskList:
                cmds.menuItem(parent=(self.taskOptionMenuGrp +
                                      '|OptionMenu'), label=task[0])
                if i == 0:
                    self.currentTaskName = task[0]
                    self.currentTaskId = task[1]
                i += 1

            try:
                task_name = mwUtils.getTask()
                cmds.optionMenuGrp(
                    self.taskOptionMenuGrp, e=1, v=task_name)

            except:
                0

        self.taskChangeCmd()

    def populateVersion(self, *args):
        # loading color
        cmds.optionMenuGrp(
            self.versionOptionMenuGrp, e=1, bgc=[0.8, 0.6, 0.02])
        cmds.refresh()

        # deletes all items in menu
        menuItems = cmds.optionMenuGrp(
            self.versionOptionMenuGrp, q=True, itemListLong=True)
        if menuItems:
            cmds.deleteUI(menuItems)

        if self.currentTaskName == "None":
            cmds.menuItem(parent=(self.versionOptionMenuGrp +
                                  '|OptionMenu'), label="None")

            self.versionChangeCmd()
            return

        filters = [
            ["task.Task.id", "is", self.currentTaskId],
            ["published_file_type.PublishedFileType.code", "is", "Alembic Cache"],
        ]

        fields = ["path", "name", "published_file_type", "version_number"]
        order = [
            {"field_name": "version_number", "direction": "desc"},
        ]

        versionList = main.sg.find("PublishedFile", filters, fields, order)

        if len(versionList) == 0:
            cmds.menuItem(parent=(self.versionOptionMenuGrp +
                                  '|OptionMenu'), label="None")

        else:
            for version in versionList:
                version_number = version["version_number"]
                cmds.menuItem(parent=(self.versionOptionMenuGrp +
                                      '|OptionMenu'), label=version_number)

        self.versionChangeCmd()

    def populateFrameRange(self, *args):
        if self.cutIn != None and self.cutOut != None:
            cmds.intFieldGrp(self.frameRangeIntFieldGrp, e=1,
                             value1=self.cutIn)

            cmds.intFieldGrp(self.frameRangeIntFieldGrp, e=1,
                             value2=self.cutOut)

        else:
            self.cutIn = 1001
            self.cutOut = 1002

            cmds.intFieldGrp(self.frameRangeIntFieldGrp, e=1,
                             value1=self.cutIn)

            cmds.intFieldGrp(self.frameRangeIntFieldGrp, e=1,
                             value2=self.cutOut)

            cmds.warning(
                "Could not retrieve Frame Range information from Shotgun.")

            self.frameRangeFromSceneChangeCmd()

        self.currentCutIn = self.cutIn
        self.currentCutOut = self.cutOut

        cmds.button(self.resetFrameRangeButton, e=1, enable=0)

    def populateAnimPreRoll(self, *args):
        cmds.intFieldGrp(self.animPreRollIntFieldGrp,
                         e=1, value1=self.animPreRoll)
        self.currentAnimPreRoll = cmds.intFieldGrp(
            self.animPreRollIntFieldGrp, q=1, value1=True)

        cmds.button(self.resetAnimPreRollButton, e=1, enable=0)

    def populateSimPreRoll(self, *args):
        cmds.intFieldGrp(self.simPreRollIntFieldGrp,
                         e=1, value1=self.simPreRoll)
        self.currentSimPreRoll = cmds.intFieldGrp(
            self.simPreRollIntFieldGrp, q=1, value1=True)

        cmds.button(self.resetSimPreRollButton, e=1, enable=0)


class NewLink(object):

    def __init__(self, label="", collapse=False):

        self.label = label

        main.links.append(self)

        # attributes
        cmds.setParent(main.mainColumnLayout)
        self.frameLayout = cmds.frameLayout(
            collapsable=True, collapse=collapse, w=340, label=self.label, bgc=[0.20, 0.10, 0.10])

        self.changeLabel(label="Pass_"+str(main.lastLinkNum))
        main.lastLinkNum += 1

        cmds.text(l='')
        self.labelTextFieldGrp = cmds.textFieldGrp(label='Pass name:', text=self.label, cw=[
            1, 70], changeCommand=partial(self.changeLabel))

        cmds.separator(style='in')

        self.linkToOptionMenuGrp = cmds.optionMenuGrp(
            label='Link to:', changeCommand=partial(self.linkToChangeCmd), bgc=[0.25, 0.25, 0.25], enableBackground=False)
        cmds.menuItem(label='Source Animation')
        cmds.menuItem(label='Previous Link')

        cmds.separator(style='in')

        self.linkStepOptionMenuGrp = cmds.optionMenuGrp(
            label='Step:', changeCommand=partial(self.linkStepChangeCmd), bgc=[0.25, 0.25, 0.25], enableBackground=False)
        cmds.menuItem(label='Rig')
        cmds.menuItem(label='Cloth')
        cmds.menuItem(label='LookDev')

        self.linkTaskOptionMenuGrp = cmds.optionMenuGrp(
            label='Task:', changeCommand=partial(self.linkTaskChangeCmd), bgc=[0.25, 0.25, 0.25], enableBackground=False)

        self.linkVersionOptionMenuGrp = cmds.optionMenuGrp(
            label='Version:', changeCommand=partial(self.linkVersionChangeCmd), bgc=[0.25, 0.25, 0.25], enableBackground=False)

        cmds.separator(style='in')

        cmds.button(label='Delete link', command=partial(
            self.deleteLink), bgc=[0.2, 0.05, 0.1], w=300)

        cmds.separator(style='in')

        cmds.setParent(main.mainColumnLayout)

        for link in main.links:
            if link == self:
                link.populateLinkTo(newLink=True)
            else:
                link.populateLinkTo(newLink=False)

        self.linkStepChangeCmd()

        cmds.button(main.runCacheChainButton, e=1, enable=1)

    def linkToChangeCmd(self, *args):
        self.currentLinkTo = cmds.optionMenuGrp(
            self.linkToOptionMenuGrp, q=1, v=1)

        # loaded color
        cmds.optionMenuGrp(
            self.linkToOptionMenuGrp, e=1, bgc=[0.25, 0.25, 0.25])
        cmds.optionMenuGrp(
            self.linkToOptionMenuGrp, e=1, enableBackground=False)
        cmds.refresh()

    def linkStepChangeCmd(self, *args):
        self.currentLinkStep = cmds.optionMenuGrp(
            self.linkStepOptionMenuGrp, q=1, v=1)
        self.populateLinkTask()

    def linkTaskChangeCmd(self, *args):
        self.currentLinkTask = cmds.optionMenuGrp(
            self.linkTaskOptionMenuGrp, q=1, v=1)
        self.populateLinkVersion()

    def linkVersionChangeCmd(self, *args):

        try:
            self.currentLinkVersionNumber = int(cmds.optionMenuGrp(
                self.linkVersionOptionMenuGrp, q=True, v=True))

            filters = [
                ["task.Task.id", "is", self.currentLinkTaskId],
                ["version_number", "is", self.currentLinkVersionNumber],
                ["published_file_type.PublishedFileType.code", "is", "Maya Scene"],
            ]

            fields = ["path", "name", "version_number"]

            version = main.sg.find_one("PublishedFile", filters, fields)

            self.linkPublishedVersion = version["id"]

        except:
            pass

        # loaded color
        cmds.optionMenuGrp(
            self.linkVersionOptionMenuGrp, e=1, bgc=[0.25, 0.25, 0.25])
        cmds.optionMenuGrp(
            self.linkVersionOptionMenuGrp, e=1, enableBackground=False)
        cmds.refresh()

    def populateLinkTo(self, newLink=False, *args):
        # loading color
        cmds.optionMenuGrp(
            self.linkToOptionMenuGrp, e=1, bgc=[0.8, 0.6, 0.02])
        cmds.refresh()

        currentSel = cmds.optionMenuGrp(self.linkToOptionMenuGrp,
                                        q=1, v=1)

        # deletes all items in menu
        menuItems = cmds.optionMenuGrp(
            self.linkToOptionMenuGrp, q=True, itemListLong=True)
        if menuItems:
            cmds.deleteUI(menuItems)

        cmds.menuItem(parent=(self.linkToOptionMenuGrp +
                              '|OptionMenu'), label='Source Animation')

        cmds.menuItem(parent=(self.linkToOptionMenuGrp +
                              '|OptionMenu'), label='Previous Link')

        for link in main.links:
            if link != self:
                cmds.menuItem(parent=(self.linkToOptionMenuGrp +
                                      '|OptionMenu'), label=link.currentPassName)
            else:
                break

        if newLink == True:
            if len(main.links) > 1:
                cmds.optionMenuGrp(self.linkToOptionMenuGrp,
                                   e=1, v="Previous Link")
                self.currentLinkTo = "Previous Link"
            else:
                cmds.optionMenuGrp(self.linkToOptionMenuGrp,
                                   e=1, v="Source Animation")
                self.currentLinkTo = "Source Animation"

        else:
            try:
                cmds.optionMenuGrp(self.linkToOptionMenuGrp,
                                   e=1, v=currentSel)
            except:
                cmds.optionMenuGrp(self.linkToOptionMenuGrp,
                                   e=1, v="Previous Link")

        self.linkToChangeCmd()

    def populateLinkVersion(self, *args):
        # loading color
        cmds.optionMenuGrp(
            self.linkVersionOptionMenuGrp, e=1, bgc=[0.8, 0.6, 0.02])
        cmds.refresh()

        # deletes all items in menu
        menuItems = cmds.optionMenuGrp(
            self.linkVersionOptionMenuGrp, q=True, itemListLong=True)
        if menuItems:
            cmds.deleteUI(menuItems)

        if self.currentLinkTask == "None":
            cmds.menuItem(parent=(self.linkVersionOptionMenuGrp +
                                  '|OptionMenu'), label="None")

            self.linkVersionChangeCmd()
            return

        # find task_id
        filters = [["content", "is", self.currentLinkTask],
                   ["entity", "is", {"type": "Asset",
                                     "id": animSource.currentAssetId}]]
        self.currentLinkTaskId = main.sg.find_one("Task", filters)["id"]

        filters = [
            ["task.Task.id", "is", self.currentLinkTaskId],
            ["published_file_type.PublishedFileType.code", "is", "Maya Scene"],
        ]

        fields = ["path", "name", "version_number"]
        order = [
            {"field_name": "version_number", "direction": "desc"},
        ]

        versionList = main.sg.find("PublishedFile", filters, fields, order)

        if len(versionList) == 0:
            cmds.menuItem(parent=(self.linkVersionOptionMenuGrp +
                                  '|OptionMenu'), label="None")

        else:
            for version in versionList:
                version_number = version["version_number"]
                cmds.menuItem(parent=(self.linkVersionOptionMenuGrp +
                                      '|OptionMenu'), label=version_number)

        self.linkVersionChangeCmd()

    def populateLinkTask(self, *args):
        # loading color
        cmds.optionMenuGrp(
            self.linkTaskOptionMenuGrp, e=1, bgc=[0.8, 0.6, 0.02])
        cmds.refresh()

        # deletes all items in menu
        menuItems = cmds.optionMenuGrp(
            self.linkTaskOptionMenuGrp, q=True, itemListLong=True)
        if menuItems:
            cmds.deleteUI(menuItems)

        # find step_id
        filters = [["code", "is", self.currentLinkStep],
                   ["entity_type", "is", "Asset"]]
        self.currentLinkStepId = main.sg.find_one("Step", filters)["id"]

        filters = [["project", "is", {"type": "Project", "id": animSource.currentProjectId}],
                   ["entity", "is", {"type": "Asset",
                                     "id": animSource.currentAssetId}],
                   ["step", "is", {"type": "Step",
                                   "id": self.currentLinkStepId}]]
        fields = ["entity", "content"]
        order = [{'field_name': 'content', 'direction': 'asc'}]
        find = main.sg.find("Task", filters, fields, order)

        if len(find) == 0:
            cmds.menuItem(parent=(self.linkTaskOptionMenuGrp +
                                  '|OptionMenu'), label="None")

        else:
            for task in find:
                if "Puppet" not in task["content"]:
                    cmds.menuItem(parent=(self.linkTaskOptionMenuGrp +
                                          '|OptionMenu'), label=task["content"])

        # loaded color
        cmds.optionMenuGrp(
            self.linkTaskOptionMenuGrp, e=1, bgc=[0.25, 0.25, 0.25])
        cmds.optionMenuGrp(
            self.linkTaskOptionMenuGrp, e=1, enableBackground=False)
        cmds.refresh()

        self.linkTaskChangeCmd()

    def deleteLink(self, *args):
        cmds.deleteUI(self.frameLayout)
        main.links.remove(self)

        for link in main.links:
            link.populateLinkTo()

        if len(main.links) == 0:
            cmds.button(main.runCacheChainButton, e=1, enable=0)

    def changeLabel(self, label=None, *args):
        if label == None:
            newLabel = cmds.textFieldGrp(
                self.labelTextFieldGrp, q=True, tx=True)
        else:
            newLabel = label
            self.currentPassName = label
        cmds.frameLayout(self.frameLayout, e=True, label=newLabel)
        self.label = newLabel


def deleteAllLinks():
    for m in range(0, len(main.links)):
        link = main.links[0]

        link.deleteLink()


def load():
    basicFilter = "*.json"
    file = cmds.fileDialog2(fileFilter=basicFilter, dialogStyle=2, fm=1)[0]

    with open(file, 'r') as fp:
        data = json.load(fp)

    deleteAllLinks()

    progressBarWindow = cmds.window(
        title='Loading Cache Chain...', mnb=0, mxb=0)
    cmds.columnLayout()
    progressBar = cmds.progressBar(width=300)
    cmds.showWindow(progressBarWindow)

    cmds.progressBar(progressBar,
                     edit=True,
                     beginProgress=True,
                     isInterruptable=False,
                     status='Loading Cache Chain...',
                     maxValue=len(data)+1)

    cmds.progressBar(progressBar, edit=True, step=1)

    for i, link in enumerate(data):
        project_id = link["project_id"]
        sourcePublish_id = link["sourcePublish_id"]
        linkPublish_id = link["linkPublish_id"]
        anim_task = link["anim_task"]
        chain_mode = link["chain_mode"]
        asset_name = link["asset_name"]
        pass_name = link["pass_name"]
        source_step = link["source_step"]
        source_task = link["source_task"]
        source_version = link["source_version"]
        link_to = link["link_to"]
        link_step = link["link_step"]
        link_task = link["link_task"]
        link_version = link["link_version"]
        from_id = link["from_id"]
        frame_range = link["frame_range"]
        frame_range_from_scene = link["frame_range_from_scene"]

        # gets project name
        filters = [["is_demo", "is", False], [
            "is_template", "is", False], ["archived", "is", False], ["id", "is", project_id]]
        fields = ["name", "id"]
        order = [{'field_name': 'name', 'direction': 'asc'}]
        find = main.sg.find("Project", filters, fields, order)
        project_name = find[0]["name"]

        # sets source anim info
        if i == 0:
            # sets project
            cmds.optionMenuGrp(animSource.projectOptionMenuGrp,
                               e=1, v=project_name)
            animSource.projectChangeCmd()

            # sets asset
            cmds.optionMenuGrp(animSource.assetOptionMenuGrp,
                               e=1, v=asset_name)
            animSource.assetChangeCmd()

            # sets source
            cmds.optionMenuGrp(animSource.sourceOptionMenuGrp,
                               e=1, v=chain_mode)
            animSource.sourceChangeCmd()

            # sets step
            cmds.optionMenuGrp(animSource.stepOptionMenuGrp,
                               e=1, v=source_step)
            animSource.stepChangeCmd()

            if chain_mode == "Asset":
                # sets animTask
                cmds.optionMenuGrp(animSource.animTaskOptionMenuGrp,
                                   e=1, v=anim_task)
                animSource.animTaskChangeCmd()

            elif chain_mode == "Shot":
                sequence, shot = anim_task.split("_")

                # sets sequence
                cmds.optionMenuGrp(animSource.seqOptionMenuGrp,
                                   e=1, v=sequence)
                animSource.seqChangeCmd()

                # sets shot
                cmds.optionMenuGrp(animSource.shotOptionMenuGrp,
                                   e=1, v=shot)
                animSource.shotChangeCmd()

            # sets task
            cmds.optionMenuGrp(animSource.taskOptionMenuGrp,
                               e=1, v=source_task)
            animSource.taskChangeCmd()

            # sets version
            cmds.optionMenuGrp(animSource.versionOptionMenuGrp,
                               e=1, v=source_version)

            # sets frame range
            changed = False
            if animSource.cutIn != frame_range[0]:
                changed = True
            if animSource.cutOut != frame_range[1]:
                changed = True

            cmds.intFieldGrp(animSource.frameRangeIntFieldGrp,
                             e=1, value1=frame_range[0], value2=frame_range[1])
            if changed == True:
                cmds.button(animSource.resetFrameRangeButton, e=1, enable=1)
            else:
                cmds.button(animSource.resetFrameRangeButton, e=1, enable=0)

            animSource.currentCutIn = frame_range[0]
            animSource.currentCutOut = frame_range[1]

            cmds.checkBox(animSource.frameRangeFromSceneCheckBox,
                          e=1, v=frame_range_from_scene)

            animSource.frameRangeFromSceneChangeCmd()

            # sets preRoll frames
            cmds.intFieldGrp(animSource.animPreRollIntFieldGrp,
                             e=1, value1=anim_preRoll)

            cmds.intFieldGrp(animSource.simPreRollIntFieldGrp,
                             e=1, value1=sim_preRoll)

            animSource.animPreRollChangeCmd()
            animSource.simPreRollChangeCmd()

            cmds.progressBar(progressBar, edit=True, step=1)

        newLink = NewLink(collapse=True)

        # sets link pass name
        newLink.changeLabel(label=pass_name)
        cmds.textFieldGrp(newLink.labelTextFieldGrp, e=True, tx=pass_name)

        # sets link to
        cmds.optionMenuGrp(newLink.linkToOptionMenuGrp, e=1, v=link_to)

        # sets link step
        cmds.optionMenuGrp(newLink.linkStepOptionMenuGrp, e=1, v=link_step)
        newLink.linkStepChangeCmd()

        # sets link task
        cmds.optionMenuGrp(newLink.linkTaskOptionMenuGrp, e=1, v=link_task)
        newLink.linkTaskChangeCmd()

        # sets link version
        cmds.optionMenuGrp(newLink.linkVersionOptionMenuGrp,
                           e=1, v=link_version)
        newLink.linkVersionChangeCmd()

        cmds.progressBar(progressBar, edit=True, step=1)

    cmds.progressBar(progressBar, edit=True, endProgress=True)
    cmds.deleteUI(progressBarWindow)


def save():

    mwCacheApp_data = makeLinkDict()

    basicFilter = "*.json"
    file = cmds.fileDialog2(fileFilter=basicFilter, dialogStyle=2, fm=0)[0]

    with open(file, 'w') as fp:
        json.dump(mwCacheApp_data, fp, sort_keys=True, indent=4)


def makeLinkDict():
    linkDict_data = []

    for i, link in enumerate(main.links):
        project_id = animSource.currentProjectId
        sourcePublish_id = animSource.publishedVersion
        linkPublish_id = link.linkPublishedVersion
        chain_mode = cmds.optionMenuGrp(
            animSource.sourceOptionMenuGrp, q=1, v=1)
        if chain_mode == "Shot":
            anim_task = animSource.currentSequenceName+"_"+animSource.currentShotName
        elif chain_mode == "Asset":
            anim_task = animSource.currentAnimTaskName
        asset_name = animSource.currentAssetName
        source_version = animSource.currentVersionNumber
        pass_name = link.currentPassName
        source_step = cmds.optionMenuGrp(
            animSource.stepOptionMenuGrp, q=1, v=1)

        link_to = link.currentLinkTo
        if link_to == "Source Animation":
            source_task = animSource.currentTaskName
            from_id = True
        elif link_to == "Previous Link":
            if i == 0:
                source_task = animSource.currentTaskName
                from_id = True
            else:
                source_task = main.links[i-1].currentPassName
                from_id = False
        else:
            source_task = link_to

        link_step = link.currentLinkStep
        link_task = link.currentLinkTask
        link_version = link.currentLinkVersionNumber
        frame_range = [animSource.currentCutIn,
                       animSource.currentCutOut]
        frame_range_from_scene = animSource.currentFrameRangeFromScene
        anim_preRoll = animSource.currentAnimPreRoll
        sim_preRoll = animSource.currentSimPreRoll

        ##########################################################

        linkDict = {}
        linkDict["project_id"] = project_id
        linkDict["sourcePublish_id"] = sourcePublish_id
        linkDict["linkPublish_id"] = linkPublish_id
        linkDict["anim_task"] = anim_task
        linkDict["chain_mode"] = chain_mode
        linkDict["asset_name"] = asset_name
        linkDict["source_version"] = source_version
        linkDict["pass_name"] = pass_name
        linkDict["link_to"] = link_to
        linkDict["link_step"] = link_step
        linkDict["link_task"] = link_task
        linkDict["link_version"] = link_version
        linkDict["source_step"] = source_step
        linkDict["source_task"] = source_task
        linkDict["from_id"] = from_id
        linkDict["frame_range"] = frame_range
        linkDict["frame_range_from_scene"] = frame_range_from_scene
        linkDict["anim_preRoll"] = anim_preRoll
        linkDict["sim_preRoll"] = sim_preRoll

        linkDict_data.append(linkDict)

    return linkDict_data


def runCacheChain():
    mwCacheApp_data = makeLinkDict()

    current_engine = sgtk.platform.current_engine()

    mw_maya_path = os.path.join(current_engine.environment["disk_location"].split(
        "env")[0], "hooks/tk-multi-launchapp/maya")

    maya_location = os.getenv("MAYA_LOCATION")

    file_path = os.path.join(mw_maya_path, "mwCacheApp_data.json")

    with open(file_path, 'w') as fp:
        json.dump(mwCacheApp_data, fp, sort_keys=True, indent=4)

    print "currentSession", cmds.menuItem(
        main.currentSessionMenuItem, q=1, radioButton=1)
    print "newProcess", cmds.menuItem(
        main.newProcessMenuItem, q=1, radioButton=1)

    if cmds.menuItem(main.currentSessionMenuItem, q=1, radioButton=1) == True:
        # runs in local session
        import mw_cache_utils
        reload(mw_cache_utils)
        mw_cache_utils.startCache(currentSession=True)

    elif cmds.menuItem(main.newProcessMenuItem, q=1, radioButton=1) == True:
        # runs mayabatch
        env = os.environ.copy()
        env['SGTK_ENGINE'] = 'tk-maya'
        env['SGTK_CONTEXT'] = sgtk.platform.current_engine().context.serialize()

        mayabatch = os.path.join(maya_location, "bin", "mayabatch.exe")
        melscript = os.path.join(mw_maya_path, "cache.mel")

        subprocess.Popen([mayabatch, '-script', melscript], env=env)

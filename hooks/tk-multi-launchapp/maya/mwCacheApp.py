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
        cmds.menuItem(label='Exit', command='cmds.deleteUI("mwCache_window")')
        cmds.menu(label='Help', helpMenu=True)
        cmds.scrollLayout(w=320, h=600)
        self.mainLayout = cmds.columnLayout(w=320)
        self.mainColumnLayout = cmds.rowColumnLayout(w=320)
        cmds.setParent(self.mainLayout)
        self.bottomColumnLayout = cmds.columnLayout(w=320)
        cmds.setParent(self.bottomColumnLayout)
        cmds.button('newLinkButton', label='New link', bgc=[0.1, 0.4, 0.1],
                    command='mwCacheApp.NewLink()')
        cmds.text(l='')
        cmds.button('generateButton', label='Run Cache Chain', bgc=[0.4, 0.1, 0.1],
                    command='mwCacheApp.runCacheChain()')
        cmds.showWindow(self.window)


class AnimSourceModule(object):

    def __init__(self, label="Source animation"):

        self.label = label

        # attributes
        cmds.setParent(main.mainColumnLayout)
        self.frameLayout = cmds.frameLayout(
            collapsable=True, collapse=False, w=340, label=self.label)
        cmds.scrollLayout(w=300, h=200)

        cmds.text(l='')

        self.projectOptionMenuGrp = cmds.optionMenuGrp(
            label='Project:', changeCommand=partial(self.projectChangeCmd))
        cmds.menuItem(label='None')

        self.assetOptionMenuGrp = cmds.optionMenuGrp(
            label='Asset:', changeCommand=partial(self.assetChangeCmd))
        cmds.menuItem(label='None')

        self.sourceOptionMenuGrp = cmds.optionMenuGrp(
            label='Source:', changeCommand=partial(self.sourceChangeCmd))
        cmds.menuItem(label='Shot')
        cmds.menuItem(label='Asset')
        if main.entity_type == "Shot":
            cmds.optionMenuGrp(self.sourceOptionMenuGrp, e=1, v="Shot")
        else:
            cmds.optionMenuGrp(self.sourceOptionMenuGrp, e=1, v="Asset")

        self.seqOptionMenuGrp = cmds.optionMenuGrp(
            label='Seq:', changeCommand=partial(self.seqChangeCmd))
        cmds.menuItem(label='None')

        self.shotOptionMenuGrp = cmds.optionMenuGrp(
            label='Shot:', changeCommand=partial(self.shotChangeCmd))
        cmds.menuItem(label='None')

        self.animTaskOptionMenuGrp = cmds.optionMenuGrp(
            label='Anim Task:', vis=False, changeCommand=partial(self.animTaskChangeCmd))
        cmds.menuItem(label='None')

        self.stepOptionMenuGrp = cmds.optionMenuGrp(
            label='Step:', changeCommand=partial(self.stepChangeCmd))
        cmds.menuItem(label='Animation')
        cmds.menuItem(label='CharacterFX')

        self.taskOptionMenuGrp = cmds.optionMenuGrp(
            label='Task:', changeCommand=partial(self.taskChangeCmd))
        cmds.menuItem(label='None')

        self.versionOptionMenuGrp = cmds.optionMenuGrp(
            label='Version:', changeCommand=partial(self.versionChangeCmd))
        cmds.menuItem(label='None')

        # self.liveTweakButton = cmds.button(label='Live tweak', bgc=[0.2, 0.2, 0.2], w=310)
        # self.populateAsset()
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
            self.populateAnimTask()

        elif cmds.optionMenuGrp(self.sourceOptionMenuGrp, q=1, v=1) == "Shot":
            cmds.optionMenuGrp(self.seqOptionMenuGrp, e=1, vis=1)
            cmds.optionMenuGrp(self.shotOptionMenuGrp, e=1, vis=1)
            cmds.optionMenuGrp(self.animTaskOptionMenuGrp, e=1, vis=0)
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

        try:
            self.currentShotId = main.sg.find_one("Shot", filters)["id"]
        except:
            0

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

            print version["path"]["local_path_windows"]

            self.publishedVersion = version["id"]
        except:
            print "No path was found."

        # loaded color
        cmds.optionMenuGrp(
            self.versionOptionMenuGrp, e=1, bgc=[0.35, 0.35, 0.35])
        cmds.optionMenuGrp(
            self.versionOptionMenuGrp, e=1, enableBackground=False)
        cmds.refresh()

    def populateProject(self, *args):
        # loading color
        cmds.optionMenuGrp(
            self.projectOptionMenuGrp, e=1, bgc=[0.35, 0.30, 0.0])
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
            self.projectOptionMenuGrp, e=1, bgc=[0.35, 0.35, 0.35])
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
            self.assetOptionMenuGrp, e=1, bgc=[0.35, 0.30, 0.0])
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
            self.assetOptionMenuGrp, e=1, bgc=[0.35, 0.35, 0.35])
        cmds.optionMenuGrp(
            self.assetOptionMenuGrp, e=1, enableBackground=False)
        cmds.refresh()

        self.assetChangeCmd()

    def populateSeq(self, *args):
        # loading color
        cmds.optionMenuGrp(
            self.seqOptionMenuGrp, e=1, bgc=[0.35, 0.30, 0.0])
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
            self.seqOptionMenuGrp, e=1, bgc=[0.35, 0.35, 0.35])
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
            self.shotOptionMenuGrp, e=1, bgc=[0.35, 0.30, 0.0])
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
            self.shotOptionMenuGrp, e=1, bgc=[0.35, 0.35, 0.35])
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
            self.animTaskOptionMenuGrp, e=1, bgc=[0.35, 0.30, 0.0])
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
            self.animTaskOptionMenuGrp, e=1, bgc=[0.35, 0.35, 0.35])
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
            self.taskOptionMenuGrp, e=1, bgc=[0.35, 0.30, 0.0])
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
            self.taskOptionMenuGrp, e=1, bgc=[0.35, 0.35, 0.35])
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
            self.versionOptionMenuGrp, e=1, bgc=[0.35, 0.30, 0.0])
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


class NewLink(object):

    def __init__(self, label=""):

        self.label = label

        main.links.append(self)

        # attributes
        cmds.setParent(main.mainColumnLayout)
        self.frameLayout = cmds.frameLayout(
            collapsable=True, collapse=False, w=340, label=self.label)

        self.changeLabel(label="Pass_"+str(main.lastLinkNum))
        main.lastLinkNum += 1

        cmds.text(l='')
        self.labelTextFieldGrp = cmds.textFieldGrp(label='Pass name:', text=self.label, cw=[
            1, 70], changeCommand=partial(self.changeLabel))

        cmds.separator(style='in')

        self.linkToOptionMenuGrp = cmds.optionMenuGrp(
            label='Link to:', changeCommand=partial(self.linkToChangeCmd))
        cmds.menuItem(label='Source Animation')
        cmds.menuItem(label='Previous Link')

        cmds.separator(style='in')

        self.linkStepOptionMenuGrp = cmds.optionMenuGrp(
            label='Step:', changeCommand=partial(self.linkStepChangeCmd))
        cmds.menuItem(label='Rig')
        cmds.menuItem(label='Cloth')
        cmds.menuItem(label='LookDev')

        self.linkTaskOptionMenuGrp = cmds.optionMenuGrp(
            label='Task:', changeCommand=partial(self.linkTaskChangeCmd))

        self.linkVersionOptionMenuGrp = cmds.optionMenuGrp(
            label='Version:', changeCommand=partial(self.linkVersionChangeCmd))

        cmds.separator(style='in')

        cmds.button(label='Delete link', command=partial(
            self.deleteLink), bgc=[0.3, 0.2, 0.2], w=300)

        cmds.text(l='')

        for link in main.links:
            link.populateLinkTo()

        self.linkStepChangeCmd()

    def linkToChangeCmd(self, *args):
        self.currentLinkTo = cmds.optionMenuGrp(
            self.linkToOptionMenuGrp, q=1, v=1)

        # loaded color
        cmds.optionMenuGrp(
            self.linkToOptionMenuGrp, e=1, bgc=[0.35, 0.35, 0.35])
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

            print version["path"]["local_path_windows"]
            self.linkPublishedVersion = version["id"]
        except:
            print "No path was found."

        # loaded color
        cmds.optionMenuGrp(
            self.linkVersionOptionMenuGrp, e=1, bgc=[0.35, 0.35, 0.35])
        cmds.optionMenuGrp(
            self.linkVersionOptionMenuGrp, e=1, enableBackground=False)
        cmds.refresh()

    def populateLinkTo(self, *args):
        # loading color
        cmds.optionMenuGrp(
            self.linkToOptionMenuGrp, e=1, bgc=[0.35, 0.30, 0.0])
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
                              '|OptionMenu'), label='Previous link')

        if len(main.links) > 1:
            cmds.optionMenuGrp(self.linkToOptionMenuGrp,
                               e=1, v="Previous link")
            self.currentLinkTo = "Previous link"
        else:
            cmds.optionMenuGrp(self.linkToOptionMenuGrp,
                               e=1, v="Source Animation")
            self.currentLinkTo = "Source Animation"

        for link in main.links:
            if link != self:
                cmds.menuItem(parent=(self.linkToOptionMenuGrp +
                                      '|OptionMenu'), label=link.currentPassName)
            else:
                break

        try:
            cmds.optionMenuGrp(self.linkToOptionMenuGrp,
                               e=1, v=currentSel)
        except:
            0

        self.linkToChangeCmd()

    def populateLinkVersion(self, *args):
        # loading color
        cmds.optionMenuGrp(
            self.linkVersionOptionMenuGrp, e=1, bgc=[0.35, 0.30, 0.0])
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
            self.linkTaskOptionMenuGrp, e=1, bgc=[0.35, 0.30, 0.0])
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
            self.linkTaskOptionMenuGrp, e=1, bgc=[0.35, 0.35, 0.35])
        cmds.optionMenuGrp(
            self.linkTaskOptionMenuGrp, e=1, enableBackground=False)
        cmds.refresh()

        self.linkTaskChangeCmd()

    def deleteLink(self, *args):
        cmds.deleteUI(self.frameLayout)
        main.links.remove(self)

        for link in main.links:
            link.populateLinkTo()

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


def runCacheChain():
    mwCacheApp_data = []

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
        pass_name = link.currentPassName
        pass_task = link.currentLinkTask
        source_task = link.currentLinkTo
        from_id = False
        if source_task == "Source Animation":
            source_task = animSource.currentTaskName
            from_id = True
        elif source_task == "Previous Link":
            source_task = main.links[i-1].currentPassName

        ##########################################################

        linkDict = {}
        linkDict["project_id"] = project_id
        linkDict["sourcePublish_id"] = sourcePublish_id
        linkDict["linkPublish_id"] = linkPublish_id
        linkDict["anim_task"] = anim_task
        linkDict["chain_mode"] = chain_mode
        linkDict["asset_name"] = asset_name
        linkDict["pass_name"] = pass_name
        linkDict["pass_task"] = pass_task
        linkDict["source_task"] = source_task
        linkDict["from_id"] = from_id

        mwCacheApp_data.append(linkDict)

    mw_maya_path = os.getenv("MW_MAYA_PATH")
    maya_location = os.getenv("MAYA_LOCATION")

    file_path = os.path.join(mw_maya_path, "mwCacheApp_data.json")

    with open(file_path, 'w') as fp:
        json.dump(mwCacheApp_data, fp, sort_keys=True, indent=4)

    # runs mayabatch
    env = os.environ.copy()
    env['SGTK_ENGINE'] = 'tk-maya'
    env['SGTK_CONTEXT'] = sgtk.platform.current_engine().context.serialize()

    mayabatch = os.path.join(maya_location, "bin", "mayabatch.exe")
    melscript = os.path.join(mw_maya_path, "cache.mel")

    #subprocess.Popen([mayabatch, '-script', melscript], env=env)
    import mw_cache_utils
    reload(mw_cache_utils)
    mw_cache_utils.startCache(currentSession=True)

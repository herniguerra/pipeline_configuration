import maya.cmds as cmds
import random
from functools import partial
import sgtk
import mwUtils
import shotgun_api3


def run():
    global main

    main = createUI()
    MainSettingsModule()


class createUI(object):

    def __init__(self):
        self.sg = shotgun_api3.Shotgun(
            "https://many-worlds.shotgunstudio.com",
            script_name="mwUtils_bringPublish",
            api_key="wmNnyhwfdpuecdstofw0^gjkk",
        )
        self.modules = []
        self.project_id = mwUtils.getProject(returnId=True)
        self.project_name = mwUtils.getProject()
        self.entity_name = mwUtils.getEntity()
        self.entity_id = mwUtils.getEntity(returnId=True)
        self.sequence_name = mwUtils.getSequence()

        if cmds.window('mwCache_window', exists=True):
            cmds.deleteUI('mwCache_window')

        self.window = cmds.window('mwCache_window', title='mwCache v0.0.1',
                                  w=350, h=600, mxb=0, mnb=0, sizeable=0, menuBar=True)
        cmds.menu(label='File')
        cmds.menuItem(label='New', command='mwCacheApp.deleteAllModules()')
        cmds.menuItem(divider=True)
        cmds.menuItem(label='Exit', command='cmds.deleteUI("mwCache_window")')
        cmds.menu(label='Help', helpMenu=True)
        cmds.scrollLayout(w=320, h=600)
        self.mainLayout = cmds.columnLayout(w=320)
        self.modulesColumnLayout = cmds.rowColumnLayout(w=320)
        cmds.setParent(self.mainLayout)
        self.bottomColumnLayout = cmds.columnLayout(w=320)
        cmds.setParent(self.bottomColumnLayout)
        cmds.button('newModuleButton', label='New module', bgc=[0.1, 0.4, 0.1],
                    command='mwCacheApp.NewModule()')
        cmds.text(l='')
        cmds.button('generateButton', label='Run Cache Chain', bgc=[0.4, 0.1, 0.1],
                    command='mwCacheApp.runCacheChain()')
        cmds.showWindow(self.window)


class MainSettingsModule(object):

    def __init__(self, label="Main Settings"):

        self.label = label

        # attributes
        cmds.setParent(main.modulesColumnLayout)
        self.frameLayout = cmds.frameLayout(
            collapsable=True, collapse=False, w=340, label=self.label)
        cmds.scrollLayout(w=300, h=200)

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

        self.seqOptionMenuGrp = cmds.optionMenuGrp(
            label='Seq:', changeCommand=partial(self.seqChangeCmd))
        cmds.menuItem(label='None')

        self.shotOptionMenuGrp = cmds.optionMenuGrp(
            label='Shot:', changeCommand=partial(self.shotChangeCmd))
        cmds.menuItem(label='None')

        self.animTaskOptionMenuGrp = cmds.optionMenuGrp(
            label='Anim Task:', changeCommand=partial(self.animTaskChangeCmd))
        cmds.menuItem(label='None')

        self.stepOptionMenuGrp = cmds.optionMenuGrp(
            label='Step:', changeCommand=partial(self.stepChangeCmd))
        cmds.menuItem(label='Animation')
        cmds.menuItem(label='CharacterFX')

        self.taskOptionMenuGrp = cmds.optionMenuGrp(label='Task:')
        cmds.menuItem(label='None')

        self.versionOptionMenuGrp = cmds.optionMenuGrp(label='Version:')
        cmds.menuItem(label='None')

        # self.liveTweakButton = cmds.button(label='Live tweak', bgc=[0.2, 0.2, 0.2], w=310)
        # self.populateAsset()
        self.populateProject()

    def projectChangeCmd(self, *args):
        main.currentProjectName = cmds.optionMenuGrp(
            self.sourceOptionMenuGrp, q=1, v=1)

        filters = [["is_demo", "is", False], [
            "is_template", "is", False], ["archived", "is", False]]
        fields = ["name", "id"]
        order = [{'field_name': 'name', 'direction': 'asc'}]
        find = main.sg.find("Project", filters, fields, order)

        for f in find:
            proj = f["name"]

            if proj == main.currentProjectName:
                main.currentProjectId = f["id"]

        self.populateAsset()

    def assetChangeCmd(self, *args):
        # find and store asset_id
        main.currentAssetName = cmds.optionMenuGrp(
            self.assetOptionMenuGrp, q=True, v=True)
        filters = [["code", "is", main.currentAssetName], [
            "project", "is", {"type": "Project", "id": main.currentProjectId}]]
        main.currentAssetId = main.sg.find_one("Asset", filters)["id"]

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
        main.currentSequenceName = cmds.optionMenuGrp(
            self.seqOptionMenuGrp, q=True, v=True)
        filters = [["code", "is", main.currentSequenceName], [
            "project", "is", {"type": "Project", "id": main.currentProjectId}]]
        main.currentSequenceId = main.sg.find_one("Sequence", filters)["id"]

        self.populateShot()

    def shotChangeCmd(self, *args):
        # find and store shot_id
        main.currentShotName = cmds.optionMenuGrp(
            self.shotOptionMenuGrp, q=True, v=True)
        filters = [["code", "is", main.currentShotName], [
            "project", "is", {"type": "Project", "id": main.currentProjectId}]]
        main.currentShotId = main.sg.find_one("Shot", filters)["id"]

        self.populateTask()

    def animTaskChangeCmd(self, *args):
        # find and store animTaskId
        main.currentAnimTaskName = cmds.optionMenuGrp(
            self.animTaskOptionMenuGrp, q=True, v=True)
        # find step_id
        filters = [["code", "is", "Animation"],
                   ["entity_type", "is", "Asset"]]
        step_id = sg.find_one("Step", filters)["id"]

        filters = [["project", "is", {"type": "Project", "id": main.currentProjectId}],
                   ["step", "is", {"type": "Step",
                                   "id": step_id}]]
        fields = ["entity", "content"]
        find = main.sg.find("Task", filters, fields)

        for task in find:
            if task["entity"]["name"] == main.currentAssetName and task["content"] == main.currentAnimTaskName:
                main.currentAnimTaskId = task["id"]

        self.populateTask()

    def stepChangeCmd(self, *args):
        self.populateTask()

    def taskChangeCmd(self, *args):
        self.populateVersion()

    def populateProject(self, *args):
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

        if len(find) == 0:
            cmds.menuItem(parent=(self.projectOptionMenuGrp +
                                  '|OptionMenu'), label="None")

        else:
            for f in find:
                proj = f["name"]
                cmds.menuItem(parent=(self.projectOptionMenuGrp +
                                      '|OptionMenu'), label=proj)
                if proj == main.project_name:
                    main.currentProjectName = proj
                    main.currentProjectId = f["id"]

            try:
                cmds.optionMenuGrp(self.projectOptionMenuGrp,
                                   e=1, v=main.project_name)

            except:
                0
            self.populateAsset()

    def populateAsset(self, *args):
        # deletes all items in menu
        menuItems = cmds.optionMenuGrp(
            self.assetOptionMenuGrp, q=True, itemListLong=True)
        if menuItems:
            cmds.deleteUI(menuItems)

        filters = [["project", "is", {"type": "Project", "id": main.currentProjectId}],
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

            # find and store asset_id
            main.currentAssetName = cmds.optionMenuGrp(
                self.assetOptionMenuGrp, q=True, v=True)
            filters = [["code", "is", main.currentAssetName], [
                "project", "is", {"type": "Project", "id": main.currentProjectId}]]
            main.currentAssetId = main.sg.find_one("Asset", filters)["id"]

        self.assetChangeCmd()

    def populateSeq(self, *args):
        # deletes all items in menu
        menuItems = cmds.optionMenuGrp(
            self.seqOptionMenuGrp, q=True, itemListLong=True)
        if menuItems:
            cmds.deleteUI(menuItems)

        # find all shots in project that have the asset
        filters = [["project", "is", {"type": "Project", "id": main.currentProjectId}],
                   {"filter_operator": "any", "filters": [
                       ["assets", "is", {"type": "Asset", "id": main.currentAssetId}]]}]
        fields = ["code"]
        order = [{'field_name': 'code', 'direction': 'asc'}]
        find = main.sg.find("Shot", filters, fields, order)

        seqList = []

        # find all sequences that belong to those shots
        for f in find:
            filters = [["project", "is", {"type": "Project", "id": main.currentProjectId}],
                       {"filter_operator": "any", "filters": [
                           ["shots", "is", {"type": "Shot", "id": f["id"]}]]}]

            fields = ["code"]
            order = [{'field_name': 'code', 'direction': 'asc'}]

            find = main.sg.find_one("Sequence", filters, fields)

            if find["code"] not in seqList:
                seqList.append(find["code"])

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

            # find and store seq_id
            main.currentSequenceName = cmds.optionMenuGrp(
                self.seqOptionMenuGrp, q=True, v=True)
            filters = [["code", "is", main.currentSequenceName], [
                "project", "is", {"type": "Project", "id": main.currentProjectId}]]
            main.currentSequenceId = main.sg.find_one(
                "Sequence", filters)["id"]

            self.populateShot()

    def populateShot(self, *args):
        # deletes all items in menu
        menuItems = cmds.optionMenuGrp(
            self.shotOptionMenuGrp, q=True, itemListLong=True)
        if menuItems:
            cmds.deleteUI(menuItems)

        # find all shots in project that have the asset
        filters = [["project", "is", {"type": "Project", "id": main.currentProjectId}],
                   {"filter_operator": "any", "filters": [
                       ["assets", "is", {"type": "Asset", "id": main.currentAssetId}]]}]
        fields = ["code"]
        order = [{'field_name': 'code', 'direction': 'asc'}]
        find = main.sg.find("Shot", filters, fields, order)

        shotList = []

        for f in find:
            filters = [["project", "is", {"type": "Project", "id": main.currentProjectId}],
                       {"filter_operator": "any", "filters": [
                           ["shots", "is", {"type": "Shot", "id": f["id"]}]]}]

            fields = ["code"]
            order = [{'field_name': 'code', 'direction': 'asc'}]

            find2 = main.sg.find_one("Sequence", filters, fields)

            if find2["code"] == main.currentSequenceName:
                shotList.append(f["code"])

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

            # find and store shot_id
            main.currentShotName = cmds.optionMenuGrp(
                self.shotOptionMenuGrp, q=True, v=True)
            filters = [["code", "is", main.currentShotName], [
                "project", "is", {"type": "Project", "id": main.currentProjectId}]]
            main.currentShotId = main.sg.find_one("Shot", filters)["id"]

            self.populateTask()

    def populateAnimTask(self, *args):
        # deletes all items in menu
        menuItems = cmds.optionMenuGrp(
            self.animTaskOptionMenuGrp, q=True, itemListLong=True)
        if menuItems:
            cmds.deleteUI(menuItems)

        # find step_id
        filters = [["code", "is", "Animation"],
                   ["entity_type", "is", "Asset"]]
        step_id = sg.find_one("Step", filters)["id"]

        filters = [["project", "is", {"type": "Project", "id": main.currentProjectId}],
                   ["step", "is", {"type": "Step",
                                   "id": step_id}]]
        fields = ["entity", "content"]
        find = main.sg.find("Task", filters, fields)

        taskList = []
        for task in find:
            if task["entity"]["name"] == main.currentAssetName:
                taskList.append([task["content"], task["id"]])

        if len(taskList) == 0:
            cmds.menuItem(parent=(self.animTaskOptionMenuGrp +
                                  '|OptionMenu'), label="None")

        else:
            i = 0
            for task in taskList:
                cmds.menuItem(parent=(self.animTaskOptionMenuGrp +
                                      '|OptionMenu'), label=task[0])
                if i == 0:
                    main.currentAnimTaskName = task[0]
                    main.currentAnimTaskId = task[1]
                i += 1

            try:
                task_name = mwUtils.getTask()
                cmds.optionMenuGrp(
                    self.taskOptionMenuGrp, e=1, v=task_name)

                for task in taskList:
                    if task[0] == task_name:
                        main.currentAnimTaskName = task[0]
                        main.currentAnimTaskId = task[1]

            except:
                0

            self.populateVersion()

    def populateTask(self, *args):
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
            main.currentStepId = sg.find_one("Step", filters)["id"]

            filters = [["project", "is", {"type": "Project", "id": main.currentProjectId}],
                       ["step", "is", {"type": "Step",
                                       "id": main.currentStepId}]]
            fields = ["entity", "content"]
            find = main.sg.find("Task", filters, fields)

            taskList = []

            for f in find:
                task_id = f["entity"]["id"]
                task_name = f["content"]

                filters = [["project", "is", {"type": "Project", "id": main.currentProjectId}],
                           {"filter_operator": "any", "filters": [
                            ["shots", "is", {"type": "Shot", "id": task_id}]]}]

                fields = ["code"]

                find2 = main.sg.find_one("Sequence", filters, fields)

                if find2["code"] == main.currentSequenceName:
                    taskList.append([task_name, task_id])

        elif source == "Asset":
            if step_name == "Animation":
                cmds.optionMenuGrp(self.taskOptionMenuGrp, e=1, vis=False)
                return

            else:
                cmds.optionMenuGrp(self.taskOptionMenuGrp, e=1, vis=True)
                # find step_id
                filters = [["code", "is", step_name],
                           ["entity_type", "is", "Asset"]]
                main.currentStepId = sg.find_one("Step", filters)["id"]

                filters = [["project", "is", {"type": "Project", "id": main.currentProjectId}],
                           ["step", "is", {"type": "Step",
                                           "id": main.currentStepId}]]
                fields = ["entity", "content", "upstream_tasks"]
                find = main.sg.find("Task", filters, fields)

                taskList = []

                for f in find:
                    print f
                    asset_id = f["entity"]["id"]
                    task_name = f["content"]
                    task_id = f["id"]
                    animTask = f["upstream_tasks"][0]["id"]

                    if asset_id == main.currentAssetId and animTask == main.currentAnimTaskId:
                        taskList.append([task_name, task_id])

        if len(taskList) == 0:
            cmds.menuItem(parent=(self.taskOptionMenuGrp +
                                  '|OptionMenu'), label="None")

        else:
            i = 0
            for task in taskList:
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

                for task in taskList:
                    if task[0] == task_name:
                        self.currentTaskName = task[0]
                        self.currentTaskId = task[1]

            except:
                0

            self.populateVersion()

    def populateVersion(self, *args):
        pass

        '''







        if source == "Asset":
        # find step_id
        filters = [["code", "is", step_name],
                   ["entity_type", "is", source]]
        step_id = main.sg.find_one("Step", filters)["id"]

        filters = [["project", "is", {"type": "Project", "id": main.project_id}],
                   ["step", "is", {"type": "Step", "id": step_id}],
                   ["entity", "is", {"type": "Asset", "id": asset_id}]]

        filters = [["project", "is", {"type": "Project", "id": main.project_id}],
                   ["step", "is", {"type": "Step", "id": step_id}],
                   ["entity", "is", {"type": "Shot", "id": 1243}]]

        fields = ["content"]
        order = [{'field_name': 'content', 'direction': 'asc'}]
        find = main.sg.find("Task", filters, fields, order)


        if len(find) == 0:
            cmds.menuItem(parent=(self.taskOptionMenuGrp +
                                  '|OptionMenu'), label="None")

        else:
            for f in find:
                animTask = f["content"]
                cmds.menuItem(parent=(self.taskOptionMenuGrp +
                                      '|OptionMenu'), label=animTask)

            try:
                entity_name = mwUtils.getTask()
                cmds.optionMenuGrp(
                    self.taskOptionMenuGrp, e=1, v=entity_name)
            except:
                0
        '''

    def populateStep(self, *args):
        asset_name = cmds.optionMenuGrp(self.assetOptionMenuGrp, q=1, v=True)
        source = cmds.optionMenuGrp(self.sourceOptionMenuGrp, q=1, v=True)

        # find asset_id
        filters = [["code", "is", asset_name]]
        asset_id = main.sg.find_one("Asset", filters)["id"]

        if source == "Shot":
            filters = [["project", "is", {"type": "Project", "id": main.project_id}], {
                "filter_operator": "any", "filters": [["assets", "is", {"type": "Asset", "id": asset_id}]]}]
            fields = ["code"]
            order = [{'field_name': 'code', 'direction': 'asc'}]
            find = main.sg.find("Shot", filters, fields, order)


class NewModule(object):

    def __init__(self, label="New Cache Chain link"):

        self.label = label

        main.modules.append(self)

        # attributes
        cmds.setParent(main.modulesColumnLayout)
        self.frameLayout = cmds.frameLayout(
            collapsable=True, collapse=True, w=340, label=self.label)
        cmds.scrollLayout(w=300, h=200)

        cmds.text(l='')
        self.labelTextFieldGrp = cmds.textFieldGrp(label='Label:', text=self.label, cw=[
            1, 70], changeCommand=partial(self.changeAtt, 'label'))
        cmds.text(l='')
        cmds.separator(style='in')

        # *** Generation controls

        cmds.text(l='')

        self.genIntSliderGrp = cmds.intSliderGrp(field=True, label='Generation:', minValue=0, maxValue=100, fieldMinValue=0, fieldMaxValue=100, cw=[
            1, 70])

        cmds.text(l='')

        self.dontDeriveCheckBoxGrp = cmds.checkBoxGrp(numberOfCheckBoxes=1, label="Don't derive", cw=[
            1, 70])

        cmds.text(l='')

        self.appendToRadioButtonGrp = cmds.radioButtonGrp(label='Append to:', labelArray2=['Prev. generation', 'Branch'], numberOfRadioButtons=2, cw=[
            1, 70])

        cmds.text(l='')

        self.inBranchTextFieldGrp = cmds.textFieldGrp(label='Branch:', cw=[
            1, 70])

        cmds.text(l='')

        cmds.text(l='')
        cmds.separator(style='in')

        cmds.text(l='')
        cmds.separator(style='in')
        cmds.separator(style='in')
        cmds.text(l='')
        self.liveTweakButton = cmds.button(
            label='Live tweak', bgc=[0.2, 0.2, 0.2])
        cmds.text(l='')
        cmds.button(label='Delete module', command=partial(
            self.deleteModule), bgc=[0.3, 0.2, 0.2])

        cmds.text(l='')

    def deleteModule(self, *args):
        cmds.deleteUI(self.frameLayout)
        main.modules.remove(self)

    def changeAtt(self, type, *args):
        if type == 'label':
            newLabel = mc.textFieldGrp(self.labelTextFieldGrp, q=True, tx=True)
            mc.frameLayout(self.frameLayout, e=True, label=newLabel)
            self.label = newLabel


def deleteAllModules():

    for m in range(0, len(main.modules)):
        module = main.modules[0]

        module.deleteModule()

import sys
import os


def sgBootstrap():
    MW_MAYA_PATH = os.environ["MW_MAYA_PATH"]
    # import a standalone sgtk API instance, you don't need to insert the path if you pip installed the API
    sys.path.insert(
        0, "C:/Program Files/Shotgun/Resources/Python/tk-framework-desktopstartup/python/tk-core/python")

    sys.path.insert(
        0, "C:/Program Files/Shotgun/Resources/Python/tk-framework-desktopstartup/python/tk-core/python/tank_vendor")

    sys.path.insert(
        0, os.path.join(MW_MAYA_PATH, "modules/mGear/scripts"))

    sys.path.insert(
        0, os.path.join(MW_MAYA_PATH, "modules/many_worlds/scripts"))

    import sgtk

    sa = sgtk.authentication.ShotgunAuthenticator()

    # get pre cached user credentials
    # user = sa.get_user()

    # or authenticate using script credentials
    user = sa.create_script_user(api_script="mwUtils_bringPublish",
                                 api_key="wmNnyhwfdpuecdstofw0^gjkk",
                                 host="https://many-worlds.shotgunstudio.com")

    sgtk.set_authenticated_user(user)

    project = {"type": "Project", "id": 157}

    mgr = sgtk.bootstrap.ToolkitManager(sg_user=user)
    mgr.plugin_id = "basic."
    # you don't need to specify a config, the bootstrap process will automatically pick one if you don't
    # mgr.pipeline_configuration = "dev"

    engine = mgr.bootstrap_engine("tk-maya", entity=project)

    # As we imported sgtk prior to bootstrapping we should import it again now as the bootstrap process swapped the standalone sgtk out for the project's sgtk.
    import sgtk

    print ("engine", engine)
    print ("context", engine.context)
    print ("sgtk instance", engine.sgtk)
    print ("Shotgun API instance", engine.shotgun)


def createCacheChainTask(anim_task, chain_mode, asset_name, pass_name):
    import sgtk
    import mwUtils
    import shotgun_api3

    sg = shotgun_api3.Shotgun(
        "https://many-worlds.shotgunstudio.com",
        script_name="mwUtils_bringPublish",
        api_key="wmNnyhwfdpuecdstofw0^gjkk",
    )

    current_engine = sgtk.platform.current_engine()
    tk = current_engine.sgtk

    project_id = mwUtils.getProject(returnId=True)
    user_id = mwUtils.getUser(returnId=True)

    if chain_mode == "Asset":
        task_name = anim_task + "_" + pass_name
        step_name = "CharacterFX"

        # find step_id
        filters = [["code", "is", step_name], ["entity_type", "is", "Asset"]]

        step_id = sg.find_one("Step", filters)["id"]

        # find entity_id
        filters = [["code", "is", asset_name]]
        entity_id = sg.find_one("Asset", filters)["id"]

    '''
    elif chain_mode == "Shot":
        if entity_name == None:
            cmds.warning(
                "Missing entity_name argument in mwUtils.createCacheChainTask. Task was not created."
            )
            return

        task_name = entity_name + "_" + entity_name + "_" + pass_name
        # find step_id
        step_name = "CharacterFX"
        filters = [["code", "is", step_name]]
        step_id = sg.find_one("Step", filters)["id"]
    '''

    # verifies it doesn't exist
    filters = [["entity.Asset.code", "is", entity_name],
               ["content", "is", task_name]]

    fields = ["path", "name"]

    find = sg.find("Task", filters, fields)

    if len(find) == 0:
        data = {
            "content": task_name,
            "project": {"type": "Project", "id": project_id},
            "entity": {"type": "Asset", "id": entity_id},
            "step": {"type": "Step", "id": step_id},
            "task_assignees": [{"type": "HumanUser", "id": user_id}],
        }
        result = sg.create("Task", data)

        print "*** Task created"
        task_id = result["id"]

        # creates folders
        tk.create_filesystem_structure("Task", task_id, engine="tk-maya")

    else:
        print "*** Task", task_name, "already exists"
        task_id = find[0]["id"]
        tk.create_filesystem_structure("Task", task_id, engine="tk-maya")

    # change context to task
    new_context = tk.context_from_entity("Task", task_id)
    sgtk.platform.change_context(new_context)

    return task_name


def cacheChainLink(anim_task, chain_mode, asset_name, pass_name, pass_task, source_task):
    import maya.cmds as cmds
    import mwUtils
    import shotgun_api3
    import sgtk

    cmds.loadPlugin("atomImportExport.mll", quiet=True)
    cmds.loadPlugin("AbcImport.mll", quiet=True)
    cmds.loadPlugin("AbcExport.mll", quiet=True)

    sg = shotgun_api3.Shotgun(
        "https://many-worlds.shotgunstudio.com",
        script_name="mwUtils_bringPublish",
        api_key="wmNnyhwfdpuecdstofw0^gjkk",
    )

    current_engine = sgtk.platform.current_engine()
    context = current_engine.context
    tk = current_engine.sgtk

    project_id = mwUtils.getProject(returnId=True)

    step_name = "CharacterFX"
    user_id = mwUtils.getUser(returnId=True)

    if chain_mode == "Asset":
        template_name = "maya_asset_work"
        task_name = anim_task + "_" + pass_name

        if source_task == None:
            source_task = anim_task
        else:
            source_task = anim_task+"_"+source_task

        # find step_id
        filters = [["code", "is", step_name], ["entity_type", "is", "Asset"]]
        step_id = sg.find_one("Step", filters)["id"]

        # find asset_id
        filters = [["code", "is", asset_name]]
        asset_id = sg.find_one("Asset", filters)["id"]

        # verifies it doesn't exist
        filters = [["entity.Asset.code", "is", asset_name],
                   ["content", "is", task_name]]

        fields = ["path", "name"]

        find = sg.find("Task", filters, fields)

        if len(find) == 0:
            data = {
                "content": task_name,
                "project": {"type": "Project", "id": project_id},
                "entity": {"type": "Asset", "id": asset_id},
                "step": {"type": "Step", "id": step_id},
                "task_assignees": [{"type": "HumanUser", "id": user_id}],
            }
            result = sg.create("Task", data)

            print "*** Task created"
            task_id = result["id"]

            # creates folders
            tk.create_filesystem_structure("Task", task_id, engine="tk-maya")

        else:
            print "*** Task", task_name, "already exists"
            task_id = find[0]["id"]
            tk.create_filesystem_structure("Task", task_id, engine="tk-maya")

        # change context to task
        cmds.file(new=1, f=1)

        new_context = tk.context_from_entity("Task", task_id)
        sgtk.platform.change_context(new_context)

        mwUtils.bringPublish(
            entity_type="Asset",
            task=source_task,
            template="maya_asset_publish",
            entity_name=asset_name,
            published_file_type="Alembic Cache",
            namespace=asset_name+"_"+source_task,
        )

        mwUtils.bringPublish(
            entity_type="Asset",
            task=pass_task,
            template="maya_asset_publish",
            entity_name=asset_name,
            published_file_type="Maya Scene",
            namespace=asset_name+"_"+pass_task,
        )

        mwUtils.connectRigs(asset_name+"_"+source_task,
                            asset_name+"_"+pass_task)

    if chain_mode == "Shot":
        seq = anim_task.split("_")[0]
        sht = anim_task.split("_")[1]

        template_name = "maya_shot_work"
        task_name = asset_name + "_" + pass_name

        if source_task == None:
            source_task = "Animation"
        else:
            source_task = asset_name + "_" + source_task

        # find step_id
        filters = [["code", "is", step_name], ["entity_type", "is", "Shot"]]
        step_id = sg.find_one("Step", filters)["id"]

        # find seq_id
        filters = [["code", "is", seq], ["project",
                                         "is", {"type": "Project", "id": project_id}]]
        seq_id = sg.find_one("Sequence", filters)["id"]

        # find shot_id
        filters = [["code", "is", sht], ["project", "is", {"type": "Project", "id": project_id}], [
            'sg_sequence', 'is', {'type': 'Sequence', 'id': seq_id}]]
        shot_id = sg.find_one("Shot", filters)["id"]

        # verifies new task doesn't exist
        filters = [["entity.Shot.id", "is", shot_id],
                   ["content", "is", task_name]]

        fields = ["path", "name"]

        find = sg.find("Task", filters, fields)

        if len(find) == 0:
            data = {
                "content": task_name,
                "project": {"type": "Project", "id": project_id},
                "entity": {"type": "Shot", "id": shot_id},
                "step": {"type": "Step", "id": step_id},
                "task_assignees": [{"type": "HumanUser", "id": user_id}],
            }
            result = sg.create("Task", data)

            print "*** Task created"
            task_id = result["id"]

            # creates folders
            tk.create_filesystem_structure("Task", task_id, engine="tk-maya")

        else:
            print "*** Task", task_name, "already exists"
            task_id = find[0]["id"]
            tk.create_filesystem_structure("Task", task_id, engine="tk-maya")

        # change context to task
        cmds.file(new=1, f=1)

        new_context = tk.context_from_entity("Task", task_id)

        sgtk.platform.change_context(new_context)

        mwUtils.bringPublish(
            entity_type="Shot",
            task=source_task,
            template="maya_shot_publish",
            published_file_type="Alembic Cache",
            namespace=asset_name+"_"+source_task,
        )

        mwUtils.bringPublish(
            entity_type="Asset",
            task=pass_task,
            template="maya_asset_publish",
            entity_name=asset_name,
            published_file_type="Maya Scene",
            namespace=asset_name+"_"+pass_task,
        )

        mwUtils.connectRigs(asset_name+"_"+source_task,
                            asset_name+"_"+pass_task)

    ### save and publish
    # need to have an engine running in a context where the publisher has been
    # configured.

    template = tk.templates[template_name]
    fields = new_context.as_template_fields(template)
    fields["version"] = get_next_version_number(tk, template_name, fields)
    work_path = template.apply_fields(fields)
    current_engine.ensure_folder_exists(os.path.dirname(work_path))

    cmds.file(rename=work_path)
    cmds.file(save=1)

    # get the publish app instance from the engine's list of configured apps
    publish_app = current_engine.apps.get("tk-multi-publish2")

    # ensure we have the publisher instance.
    if not publish_app:
        raise Exception("The publisher is not configured for this context.")

    # create a new publish manager instance
    manager = publish_app.create_publish_manager()

    # now we can run the collector that is configured for this context
    manager.collect_session()

    # validate the items to publish
    tasks_failed_validation = manager.validate()

    # all good. let's publish and finalize
    try:
        manager.publish()
        # If a plugin needed to version up a file name after publish
        # it would be done in the finalize.
        manager.finalize()
    except Exception as error:
        logger.error("There was trouble trying to publish!")
        logger.error("Error: %s", error)

    print "Link done!"


def get_next_version_number(tk, template_name, fields):
    template = tk.templates[template_name]

    # Get a list of existing file paths on disk that match the template and provided fields
    # Skip the version field as we want to find all versions, not a specific version.
    skip_fields = ["version"]
    file_paths = tk.paths_from_template(
        template, fields, skip_fields, skip_missing_optional_keys=True
    )

    versions = []
    for a_file in file_paths:
        # extract the values from the path so we can read the version.
        path_fields = template.get_fields(a_file)
        versions.append(path_fields["version"])

    # find the highest version in the list and add one.
    if len(versions) == 0:
        return 1
    else:
        return max(versions) + 1


def startCache():
    sgBootstrap()

    cacheChainDict = {"anim_task": "animTest", "entity_type": "Asset", "asset_name": "Pipe",
                      "chain": [
                          {"pass_name": "musclePass",
                              "pass_task": "rigMuscle", "task_step": "Rig", "source_task": None},

                          {"pass_name": "fasciaPass",
                              "pass_task": "rigFascia", "task_step": "Rig", "source_task": "musclePass"},

                          {"pass_name": "fatPass",
                              "pass_task": "rigFat", "task_step": "Rig", "source_task": "fasciaPass"},

                          {"pass_name": "skinPass",
                              "pass_task": "rigSkin", "task_step": "Rig", "source_task": "fatPass"},
                      ]
                      }
    '''

    cacheChainDict = {"anim_task": "SQ0010_SH0010", "entity_type": "Shot", "asset_name": "Pipe",
                      "chain": [
                          {"pass_name": "musclePass",
                              "pass_task": "rigMuscle", "task_step": "Rig", "source_task": None},

                          {"pass_name": "fasciaPass",
                              "pass_task": "rigFascia", "task_step": "Rig", "source_task": "musclePass"},

                          {"pass_name": "fatPass",
                              "pass_task": "rigFat", "task_step": "Rig", "source_task": "fasciaPass"},

                          {"pass_name": "skinPass",
                              "pass_task": "rigSkin", "task_step": "Rig", "source_task": "fatPass"},
                      ]
                      }
    '''

    anim_task = cacheChainDict["anim_task"]
    entity_type = cacheChainDict["entity_type"]
    asset_name = cacheChainDict["asset_name"]
    chain = cacheChainDict["chain"]

    for link in chain:
        pass_name = link["pass_name"]
        pass_task = link["pass_task"]
        source_task = link["source_task"]
        print "***"
        print "Creating cacheChainLink:"
        print pass_name
        print "from:"
        print source_task

        cacheChainLink(anim_task, entity_type,
                       asset_name, pass_name, pass_task, source_task)

    print "Cache Chain Finished! :D"

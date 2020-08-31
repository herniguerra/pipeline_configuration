import sys
import os


def sgBootstrap():
    MW_MAYA_PATH = os.environ["MW_MAYA_PATH"]
    print "--------------------------------------"
    print MW_MAYA_PATH
    # import a standalone sgtk API instance, you don't need to insert the path if you pip installed the API
    sys.path.insert(
        0, "C:/Program Files/Shotgun/Resources/Python/tk-framework-desktopstartup/python/tk-core/python")

    sys.path.insert(
        0, os.path.join(MW_MAYA_PATH, "modules/mGear/scripts"))

    sys.path.insert(
        0, os.path.join(MW_MAYA_PATH, "modules/many_worlds/scripts"))

    sys.path.insert(
        0, "C:/Many-Worlds/pipeline/shotgun/pipeline_configuration/packages")

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
    #mgr.pipeline_configuration = "dev"

    engine = mgr.bootstrap_engine("tk-maya", entity=project)

    # As we imported sgtk prior to bootstrapping we should import it again now as the bootstrap process swapped the standalone sgtk out for the project's sgtk.
    import sgtk
    import mwUtils

    print ("engine", engine)
    print ("context", engine.context)
    print ("sgtk instance", engine.sgtk)
    print ("Shotgun API instance", engine.shotgun)


def createCacheChainTask(chain_link, anim_task=None, entity_type=None, entity_name=None):
    import shotgun_api3

    sg = shotgun_api3.Shotgun(
        "https://many-worlds.shotgunstudio.com",
        script_name="mwUtils_bringPublish",
        api_key="wmNnyhwfdpuecdstofw0^gjkk",
    )

    current_engine = sgtk.platform.current_engine()
    tk = current_engine.sgtk

    project_id = getProject(returnId=True)
    user_id = getUser(returnId=True)

    if entity_name == None:
        entity_name = getEntity()
    else:
        entity_name = entity_name

    if entity_type == None:
        entity_type = getEntity(returnType=True)

    if entity_type == "Asset":
        if anim_task == None:
            cmds.warning(
                "Missing anim_task argument in mwUtils.createCacheChainTask. Task was not created."
            )
            return

        task_name = anim_task + "_" + entity_name + "_" + chain_link
        step_name = "Rig"

        # find step_id
        step_name = "Rig"
        filters = [["code", "is", step_name]]
        step_id = sg.find_one("Step", filters)["id"]

    elif entity_type == "Shot":
        if entity_name == None:
            cmds.warning(
                "Missing entity_name argument in mwUtils.createCacheChainTask. Task was not created."
            )
            return

        task_name = entity_name + "_" + entity_name + "_" + chain_link
        # find step_id
        step_name = "CharacterFX"
        filters = [["code", "is", step_name]]
        step_id = sg.find_one("Step", filters)["id"]

    # verifies it doesn't exist
    filters = [["entity.Asset.code", "is", entity_name],
               ["content", "is", task_name]]

    fields = ["path", "name"]

    find = sg.find("Task", filters, fields)

    if len(find) == 0:
        data = {
            "project": {"type": "Project", "id": project_id},
            "content": task_name,
            "entity": {"type": "Asset", "content": entity_name},
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

    # change context to task
    new_context = tk.context_from_entity("Task", task_id)
    sgtk.platform.change_context(new_context)

    return task_name


def runCacheChain(anim_task=None, entity_type=None, entity_name=None):
    import shotgun_api3

    sg = shotgun_api3.Shotgun(
        "https://many-worlds.shotgunstudio.com",
        script_name="mwUtils_bringPublish",
        api_key="wmNnyhwfdpuecdstofw0^gjkk",
    )

    project_id = getProject(returnId=True)
    if entity_name == None:
        entity_name = getEntity()
    if entity_type == None:
        entity_type = getEntity(returnType=True)

    if entity_type == "Asset":
        if anim_task == None:
            cmds.warning(
                "Missing anim_task argument in mwUtils.runCacheChain. CacheChain aborted."
            )
            return

        cmds.file(new=1, f=1)
        muscle_task = createCacheChainTask(
            "musclePass", anim_task=anim_task, entity_type=entity_type, entity_name=entity_name
        )

        bringPublish(
            task=anim_task,
            template="maya_asset_publish",
            asset_name="current",
            published_file_type="Alembic Cache",
            namespace="a",
        )

        bringPublish(
            task="RigMuscle",
            template="maya_asset_publish",
            asset_name="current",
            published_file_type="Maya Scene",
            namespace="b",
        )

        connectRigs("a", "b")
        saveAndPublish(template_name="maya_asset_rig_work")

        cmds.file(new=1, f=1)
        fascia_task = createCacheChainTask(
            "fasciaPass", anim_task=anim_task, entity_type=entity_type, entity_name=entity_name
        )

        bringPublish(
            task=muscle_task,
            template="maya_asset_publish",
            asset_name="current",
            published_file_type="Alembic Cache",
            namespace="a",
        )

        bringPublish(
            task="RigFascia",
            template="maya_asset_publish",
            asset_name="current",
            published_file_type="Maya Scene",
            namespace="b",
        )

        connectRigs("a", "b")
        saveAndPublish(template_name="maya_asset_rig_work")

        cmds.file(new=1, f=1)
        fat_task = createCacheChainTask(
            "fatPass", anim_task=anim_task, entity_type=entity_type, entity_name=entity_name
        )

        bringPublish(
            task=fascia_task,
            template="maya_asset_publish",
            asset_name="current",
            published_file_type="Alembic Cache",
            namespace="a",
        )

        bringPublish(
            task="RigFat",
            template="maya_asset_publish",
            asset_name="current",
            published_file_type="Maya Scene",
            namespace="b",
        )

        connectRigs("a", "b")
        saveAndPublish(template_name="maya_asset_rig_work")

        print "Cache Chain Finished! :D"

        """
        cmds.file(new=1, f=1)
        skin_task = createCacheChainTask(
            "skinPass", anim_task=anim_task, entity_name=entity_name
        )

        bringPublish(
            task=fat_task,
            template="maya_asset_publish",
            asset_name="current",
            published_file_type="Alembic Cache",
            namespace="a",
        )

        bringPublish(
            task="RigSkin",
            template="maya_asset_publish",
            asset_name="current",
            published_file_type="Maya Scene",
            namespace="b",
        )

        connectRigs("a", "b")
        saveAndPublish(template_name="maya_asset_rig_work")

        cmds.file(new=1, f=1)
        groom_task = createCacheChainTask(
            "groomPass", anim_task=anim_task, entity_name=entity_name
        )

        bringPublish(
            task=skin_task,
            template="maya_asset_publish",
            asset_name="current",
            published_file_type="Alembic Cache",
            namespace="a",
        )

        bringPublish(
            task="Groom",
            template="maya_asset_publish",
            asset_name="current",
            published_file_type="Maya Scene",
            namespace="b",
        )

        connectRigs("a", "b")
        saveAndPublish(template_name="maya_asset_rig_work")

        cmds.file(new=1, f=1)
        cloth_task = createCacheChainTask(
            "clothPass", anim_task=anim_task, entity_name=entity_name
        )

        bringPublish(
            task=skin_task,
            template="maya_asset_publish",
            asset_name="current",
            published_file_type="Alembic Cache",
            namespace="a",
        )

        bringPublish(
            task="Cloth",
            template="maya_asset_publish",
            asset_name="current",
            published_file_type="Maya Scene",
            namespace="b",
        )

        connectRigs("a", "b")
        saveAndPublish(template_name="maya_asset_rig_work")

        print "Cache Chain Finished! :D"

        """


def saveAndPublish(template_name=None):
    # need to have an engine running in a context where the publisher has been
    # configured.
    current_engine = sgtk.platform.current_engine()
    context = current_engine.context
    tk = current_engine.sgtk

    template = tk.templates[template_name]
    fields = context.as_template_fields(template)
    fields["version"] = get_next_version_number(tk, template_name, fields)
    work_path = template.apply_fields(fields)
    current_engine.ensure_folder_exists(os.path.dirname(work_path))
    print work_path

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
    print "OKKKKKKKKKKKKKKK"
    runCacheChain(anim_task="animTest",
                  entity_type="Asset", entity_name="Pipe")
    print "DONEEEE"

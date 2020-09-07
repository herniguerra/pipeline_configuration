import sys
import os
import json


def sgBootstrap():
    # import a standalone sgtk API instance, you don't need to insert the path if you pip installed the API
    sys.path.insert(
        0, "C:/Program Files/Shotgun/Resources/Python/tk-framework-desktopstartup/python/tk-core/python")

    sys.path.insert(
        0, "C:/Program Files/Shotgun/Resources/Python/tk-framework-desktopstartup/python/tk-core/python/tank_vendor")

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


def cacheChainLink(project_id, sourcePublish_id, linkPublish_id, anim_task, chain_mode, asset_name, pass_name, pass_task, source_task, from_id):
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

    step_name = "CharacterFX"
    user_id = mwUtils.getUser(returnId=True)

    if chain_mode == "Asset":
        template_name = "maya_asset_work"
        task_name = anim_task + "_" + pass_name

        # find step_id
        filters = [["code", "is", step_name], ["entity_type", "is", "Asset"]]
        step_id = sg.find_one("Step", filters)["id"]

        # find asset_id
        filters = [["code", "is", asset_name], ["project",
                                                "is", {"type": "Project", "id": project_id}]]
        asset_id = sg.find_one("Asset", filters)["id"]

        # find animTask_id
        filters = [["content", "is", anim_task], [
            "entity", "is", {"type": "Asset", "id": asset_id}]]

        animTask_id = sg.find_one("Task", filters)["id"]

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
                "upstream_tasks": [{"type": "Task", "id": animTask_id}]
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

        print "--- Source task:", source_task

        if from_id == True:
            mwUtils.bringPublish(id=sourcePublish_id,
                                 namespace=asset_name+"_"+source_task)

        else:
            mwUtils.bringPublish(
                entity_type="Asset",
                task=anim_task+"_"+source_task,
                template="maya_asset_publish",
                entity_name=asset_name,
                published_file_type="Alembic Cache",
                namespace=asset_name+"_"+source_task,
            )

        mwUtils.bringPublish(
            id=linkPublish_id, namespace=asset_name+"_"+pass_task)

        mwUtils.connectRigs(asset_name+"_"+source_task,
                            asset_name+"_"+pass_task)

    if chain_mode == "Shot":
        seq = anim_task.split("_")[0]
        sht = anim_task.split("_")[1]

        template_name = "maya_shot_work"
        task_name = asset_name + "_" + pass_name

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

        if from_id == True:
            mwUtils.bringPublish(id=sourcePublish_id,
                                 namespace=asset_name+"_"+source_task)
        else:
            mwUtils.bringPublish(
                entity_type="Shot",
                task=asset_name+"_"+source_task,
                template="maya_shot_publish",
                published_file_type="Alembic Cache",
                namespace=asset_name+"_"+source_task,
            )

        mwUtils.bringPublish(
            id=linkPublish_id, namespace=asset_name+"_"+pass_task)

        mwUtils.connectRigs(asset_name+"_"+source_task,
                            asset_name+"_"+pass_task)

    # save and publish
    # need to have an engine running in a context where the publisher has been
    # configured.

    template = tk.templates[template_name]
    fields = new_context.as_template_fields(template)

    # Run a Shotgun API query to summarize the maximum version number on PublishedFiles that
    # are linked to the task and match the provided name.
    # Since PublishedFiles generated by the Publish app have the extension on the end of the name we need to add the
    # extension in our filter.
    r = sg.summarize(entity_type="PublishedFile",
                     filters=[
                         ["task", "is", {"type": "Task", "id": new_context.task["id"]}]],
                     summary_fields=[{"field": "version_number", "type": "maximum"}])

    # Extract the version number and add 1 to it.
    # In scenarios where there are no files already this summary will return 0.
    # Apply the version number to the fields dictionary, that will be used to resolve the template into a path.
    fields["version"] = r["summaries"]["version_number"] + 1

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


def startCache(currentSession=False):
    import sgtk

    if currentSession == False:
        sgBootstrap()

    current_engine = sgtk.platform.current_engine()

    mw_maya_path = os.path.join(current_engine.environment["disk_location"].split(
        "env")[0], "hooks/tk-multi-launchapp/maya")
    file_path = os.path.join(mw_maya_path, "mwCacheApp_data.json")

    with open(file_path, 'r') as fp:
        mwCacheApp_data = json.load(fp)

    for link in mwCacheApp_data:
        project_id = link["project_id"]
        sourcePublish_id = link["sourcePublish_id"]
        linkPublish_id = link["linkPublish_id"]
        anim_task = link["anim_task"]
        chain_mode = link["chain_mode"]
        asset_name = link["asset_name"]
        pass_name = link["pass_name"]
        pass_task = link["pass_task"]
        source_task = link["source_task"]
        from_id = link["from_id"]

        print "***"
        print "Creating cacheChainLink:"
        print pass_name
        print "from:"
        print source_task

        cacheChainLink(project_id, sourcePublish_id, linkPublish_id, anim_task, chain_mode,
                       asset_name, pass_name, pass_task, source_task, from_id)

    print "Cache Chain Finished! :D"

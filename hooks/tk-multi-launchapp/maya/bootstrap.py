import sys
import os
import maya.cmds as cmds


def run():
    sgBootstrap()

    print "*********************"
    modulesPath = os.environ['MAYA_MODULE_PATH']
    print modulesPath

    import mwUtils

    mwUtils.runCacheChain(anim_task="animTest",
                          entity_type="Asset", entity_name="Pipe")


def sgBootstrap():
    # import a standalone sgtk API instance, you don't need to insert the path if you pip installed the API
    sys.path.insert(
        0, "C:/Program Files/Shotgun/Resources/Python/tk-framework-desktopstartup/python/tk-core/python")

    sys.path.insert(
        0, "C:/Many-Worlds/pipeline/shotgun/pipeline_configuration/hooks/tk-multi-launchapp/maya/modules/mGear/scripts")

    sys.path.insert(
        0, "C:/Many-Worlds/pipeline/shotgun/pipeline_configuration/hooks/tk-multi-launchapp/maya/modules/many_worlds/scripts")

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

    print ("engine", engine)
    print ("context", engine.context)
    print ("sgtk instance", engine.sgtk)
    print ("Shotgun API instance", engine.shotgun)

"""
Many Worlds creture manager scripts main library.

:created: 16/04/2020
:author: Jhon Ricardo Vasquez ricardo.v@many-worlds.com
:version: 1.0
:documentation: */

Notes:

To Do:
"""

# System and Python Libraries
import logging

# Maya libraries
from maya import cmds, OpenMaya

# Many-Wrolds libraries.
from Collections import mw_json_utils, mw_maya_utils, mw_ui_files_manager

reload(mw_json_utils)
reload(mw_maya_utils)
reload(mw_ui_files_manager)

# Constants


data_file = {
    "packageType":"anatomyAPKG",
    "anatomicalComponents": {
        "body": "M:/Many-Worlds/Maya/Gorilla/Maya/Models/MOD_body.0000.mb", 
        "muscles": "M:/Many-Worlds/Maya/Gorilla/Maya/Models/MOD_muscles.0000.mb", 
        "skeleton": "M:/Many-Worlds/Maya/Gorilla/Maya/Models/MOD_skeleton.0000.mb"
    }, 
    "artits": "Rigardo", 
    "assetName": "Luismi", 
    "assetType": "biped", 
    "date": "16/20/2020", 
    "task": "skeleton"
}

def serialize_creature_package_to_maya(package, filters=None):
    """Get the asset package file and serialize the data previous to build.
    
    Arguments:
        package {json file} -- File that contains creature model components.
    """

    # Get package data.
    package = mw_json_utils.mw_load_json(package)
    # General checks
    if type(package) == dict:
        pass
    else:
        OpenMaya.MGlobal.displayError(
            "Please ensure to use a correct format as a package"
        )

    if not package["packageType"] == "anatomyAPKG":
        OpenMaya.MGlobal.displayError(
            "Please specified a correct anatomical package."
        )

    if not package["anatomicalModels"]:
        OpenMaya.MGlobal.displayError(
            "Please specified a correct anatomical package."
        )

    # Serialize pacakage
    anatomical_models = []
    for item in package["anatomicalModels"].keys():
        if filters:
            if item in filters:
                file = package["anatomicalModels"][item]
                if file != "":
                    if not file in anatomical_models:
                        anatomical_models.append(file)
            else:
                continue
        else:
            file = package["anatomicalModels"][item]
            if file != "":
                if not file in anatomical_models:
                    anatomical_models.append(file)

    return anatomical_models

def import_creature_package(files_paths, new_scene=False):
    """[summary]
    
    Arguments:
        data {[type]} -- [description]
    """

    # Clear the upon request.
    if new_scene:
        mw_maya_utils.edit_maya_scene("new")

    # Import the file to current Maya scene.
    mw_maya_utils.import_multiples_files(files_paths)

def generate_json_data(self):
    """ Base on input data generates a file."""

    # Get the data to be stored and save in the given path.
    file_path = self.ui.currentRootPathQle.text()
    asset = self.ui.currentAssetQcb.currentText()
    file_name = file_path + asset +\
            "/Maya/Packages/anatomicalComponents.v000.json"
    data = self.read_user_interface_data()
    mw_json_utils.mw_write_json(data, file_name)



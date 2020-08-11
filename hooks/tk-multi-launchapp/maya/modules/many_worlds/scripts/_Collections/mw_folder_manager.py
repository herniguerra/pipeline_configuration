"""
Many Worlds creture folders manager main library.

:created: 16/04/2020
:author: Jhon Ricardo Vasquez ricardo.v@many-worlds.com
:version: 1.0
:documentation: */

Notes:

To Do:
creatures = project.assets.get["creatures"]

creature_item = [item for item in creatures.get()]


project.

"""

author = "__Rigardo__"

# os imports
import os
import random
import shutil
import zipfile
import datetime
import subprocess


# Many - Worlds libraries
from _Collections import mw_files_paths_manager, mw_json_utils

reload(mw_files_paths_manager)
reload(mw_json_utils)



class MWFolderManager():

    def __init__(self):
        self.root_path = self.__read_project_path_direction()["ROOTFOLDER"]
        self.project_path = self.__read_project_path_direction()["CURRENTPROJECT"]

    @property
    def rooth_path(self):
        """ Return current project path. """
        return self.root_path

    @property
    def current_project(self):
        """ Return current project path. """
        return self.project_path

    @property
    def project_assets_list(self):
        """
        """
        project_path = "{}/Assets/".format(self.project_path)

        return sorted([folder for folder in os.listdir(
            project_path) if os.path.isdir(os.path.join(project_path, folder)
        )])

    @property
    def __read_project_path_direction(self):
        """ Read the current root project text. """

        #Check in  a default text file the project path route.
        return mw_json_utils.mw_load_json(
            mw_files_paths_manager.PROJECTDIRS["BASEPROJECTDOC"]
        )

    
    def create_project_folders(self, project_name):
        """Create new project folder."""
        #Base folder dictonary.
        project_data        = {"Assets" :["Creatures", "Props", "Vehicles"]}

        #Make the project folders.
        for key in project_data.keys():
            os.makedirs(os.path.join(
                self.root_path,"{}/{}".format(project_name, key))
            )

            for task in project_data[key]:
                os.makedirs(os.path.join(
                    self.root_path,"{}/{}/{}".format(project_name, key, task)
                ))


# Copyright (c) 2018 Shotgun Software Inc.
#
# CONFIDENTIAL AND PROPRIETARY
#
# This work is provided "AS IS" and subject to the Shotgun Pipeline Toolkit
# Source Code License included in this distribution package. See LICENSE.
# By accessing, using, copying or modifying this work you indicate your
# agreement to the Shotgun Pipeline Toolkit Source Code License. All rights
# not expressly granted therein are reserved by Shotgun Software Inc.

"""
Hook that gets executed every time a new Toolkit API instance is created.
"""

from tank import Hook
import sgtk
import os
import sys


class TankInit(Hook):
    def execute(self, **kwargs):
        """
        Executed when a new Toolkit API instance is initialized.

        You can access the Toolkit API instance through ``self.parent``.

        The default implementation does nothing.
        """

        location = self.disk_location
        packagesPath = os.path.join(
            os.path.split(os.path.split(location)[0])[0], "packages"
        )
        pythonPath = os.path.join(
            os.path.split(os.path.split(location)[0])[0], "packages"
        )

        sgtk.util.append_path_to_env_var("PYTHONPATH", packagesPath)

        sgtk.util.append_path_to_env_var("PYTHONPATH", pythonPath)

        pass

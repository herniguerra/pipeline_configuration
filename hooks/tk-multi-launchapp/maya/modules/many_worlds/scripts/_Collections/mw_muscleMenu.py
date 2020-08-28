"""
Many Worlds QT related files manager.

:created: 08/08/2020
:author: Jhon Ricardo Vasquez ricardo.v@many-worlds.com
:version: 1.0
:documentation: */

Notes:

To Do:
"""

# System and Python Libraries
from functools import partial
import re

# Maya imports.
from maya import cmds, mel
import pymel.core as pm

# Many Worlds libraries.
import mw_ziva_utils, mw_pyside_utils, mw_libraries_paths
from _Builders import mw_QPackageBuilder

reload(mw_ziva_utils)
reload(mw_libraries_paths)
reload(mw_QPackageBuilder)
reload(mw_pyside_utils)

MENU_NAME = "MWToolsMenu"

class MWMuscleToolsMenu:
    """The main class for the MW muscle taks"""

    def __init__(self, menu):

        # Default calls
        self.menu = menu
        self.build_muscle_menus()

    def build_muscle_menus(self):
        """ Create the Many worlds muscle menu set."""

        # Radial positioned
        mw_muscle_main_menu = cmds.menuItem(
            parent=self.menu,
            label="Muscle",
            subMenu=True,
            tearOff=True
        )
        cmds.menuItem(
            parent=mw_muscle_main_menu,
            divider=True,
            dividerLabel="Muscle"
        )
        cmds.menuItem(
            parent=mw_muscle_main_menu,
            label="Rig Builder",
            image=mw_libraries_paths.muscle_icons["APKG"],
            command="cmds.ziva(attachment=True)",
        )
        cmds.menuItem(
            parent=mw_muscle_main_menu,
            label="Generate Anatomy APKG",
            image=mw_libraries_paths.muscle_icons["RIGBUILDER"],
            command=open_APKG_builder
        )
        cmds.menuItem(
            parent=mw_muscle_main_menu,
            divider=True,
            dividerLabel="Ziva"
        )
        cmds.menuItem(
            parent=mw_muscle_main_menu,
            label="Launch Ziva Toolbox",
            image="zBone.png",
            command=launch_ziva_toolbox
        )

        cmds.menuItem(
            parent=mw_muscle_main_menu,
            label="Rename Rivets",
            image=mw_libraries_paths.muscle_icons["ZIVARVR"],
            command=rename_scene_rivets
        )


def launch_ziva_toolbox(*args):
    try:
        ziva_utils_win = mw_pyside_utils.MWWidgetsFunctions.get_widget_by_name("zivaUtilsWin") # pylint: disable=used-before-assignment
        ziva_utils_win.close()
        ziva_utils_win.deleteLater()
    except:
        pass

    ziva_utils_win = mw_ziva_utils.ZivaUtilitiesWindow(mw_pyside_utils.maya_main_window())
    ziva_utils_win.show()


def open_APKG_builder(*args):
    
    try:
        apkg_builder = mw_pyside_utils.MWWidgetsFunctions.get_widget_by_name("MWapkgBuilder") # pylint: disable=used-before-assignment
        apkg_builder.close()
        apkg_builder.deleteLater()
    except:
        pass

    APKG_builder = mw_QPackageBuilder.MWQPackageBuilder(
        mw_pyside_utils.maya_main_window()
    )
    APKG_builder.show()


def select_by_proximity_options(*args):
    mel.eval("ZivaSelectVerticesByProximityOptions")


def rename_scene_rivets(*args):
    mw_ziva_utils.rename_rivets()
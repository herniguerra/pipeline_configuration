"""
Many Worlds QT related files manager.

:created: 28/04/2020
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
import pymel.core as pymel

MENU_NAME = "ZivaMarkingMenu"


class ZivaMarkingMenu:
    """The main class for the  Ziva marking menus"""

    def __init__(self):
        # Ziva imports.
        import zBuilder.zMaya as zMaya
        import zBuilder.utils as utility

        # Clean previous
        self._remove_old_menu()
        self._build()

    def _build(self):
        """Create the marking menu context to populate it with all items."""
        menu = cmds.popupMenu(
            MENU_NAME,
            markingMenu=True,
            button=2,
            allowOptionBoxes=1,
            ctrlModifier=1,
            altModifier=1,
            shiftModifier=0,
            parent="viewPanes",
            postMenuCommandOnce=True,
            postMenuCommand=self._build_marking_menu,
        )

    def _remove_old_menu(self):
        """Delete any marking class menu."""
        # Operation.
        if cmds.popupMenu(MENU_NAME, exists=True):
            cmds.deleteUI(MENU_NAME)

    def _build_marking_menu(self, menu, parent):
        """This is where all the elements of the marking menu our built."""

        # Radial positioned
        cmds.menuItem(
            parent=menu,
            label="Create Attachment",
            radialPosition="N",
            command="cmds.ziva(attachment=True)",
        )
        cmds.menuItem(
            parent=menu,
            label="Delete Ziva Components",
            radialPosition="S",
            command="cmds.ziva(remove=True)",
        )
        cmds.menuItem(
            parent=menu,
            label="Ziva Bone",
            radialPosition="NE",
            command="cmds.ziva(bone=True)",
        )

        cmds.menuItem(
            parent=menu,
            label="Ziva Tissue",
            radialPosition="E",
            command="cmds.ziva(tissue=True)",
        )

        cmds.menuItem(
            parent=menu,
            label="Ziva Cloth",
            radialPosition="SE",
            command="cmds.ziva(cloth=True)",
        )
        cmds.menuItem(
            parent=menu,
            label="Create Material Layer",
            radialPosition="NW",
            command="cmds.ziva(material=True)",
        )
        cmds.menuItem(
            parent=menu,
            label="Create zFiber",
            radialPosition="W",
            command="cmds.ziva(fiber=True)",
        )
        cmds.menuItem(
            parent=menu,
            label="Muscle Line of Action",
            radialPosition="SW",
            command=create_loa,
        )

        ziva_modelling_menu = cmds.menuItem(
            parent=menu, label="Ziva Modelling Tools", subMenu=True
        )
        cmds.menuItem(
            parent=ziva_modelling_menu,
            label="Run Mesh Analysis"
            )
        cmds.menuItem(parent=ziva_modelling_menu, label="Find Intersections")
        cmds.menuItem(
            parent=ziva_modelling_menu, label="Find Self Intersections"
        )
        cmds.menuItem(parent=ziva_modelling_menu, label="Create zPolycombine")
        cmds.menuItem(
            parent=ziva_modelling_menu,
            label="Select By Proximity",
            command=select_by_proximity,
        )
        cmds.menuItem(
            parent=ziva_modelling_menu,
            optionBox=True,
            command=select_by_proximity_options,
        )
        cmds.menuItem(parent=menu, divider=True, dividerLabel="Ziva")

        ziva_tranfer_menu = cmds.menuItem(
            parent=menu, label="Ziva Transfer Tools", subMenu=True
        )
        cmds.menuItem(
            parent=ziva_tranfer_menu, label="Load",
        )
        cmds.menuItem(parent=ziva_tranfer_menu, label="Save")
        cmds.menuItem(
            parent=ziva_tranfer_menu, label="Cut", command=ziva_rig_cut
        )
        cmds.menuItem(
            parent=ziva_tranfer_menu,
            label="Copy",
            command=ziva_rig_copy
        )
        cmds.menuItem(
            parent=ziva_tranfer_menu,
            label="Paste",
            command=ziva_rig_paste
        )
        cmds.menuItem(
            parent=ziva_tranfer_menu, label="Copy/Paste With name Substitution"
        )
        cmds.menuItem(
            parent=ziva_tranfer_menu,
            optionBox=True,
            command=select_by_proximity_options,
        )

        cmds.menuItem(parent=menu, divider=True, dividerLabel="Ziva")

        ziva_cache_menu = cmds.menuItem(
            parent=menu, label="Ziva Cache", subMenu=True
        )
        cmds.menuItem(parent=ziva_cache_menu, label="Add")
        cmds.menuItem(
            parent=ziva_cache_menu,
            label="Clear",
            command="cmds.zCache(clear=True)",
        )
        cmds.menuItem(parent=ziva_cache_menu, label="Cut")
        cmds.menuItem(parent=ziva_cache_menu, label="Load...")
        cmds.menuItem(parent=ziva_cache_menu, label="Save...")
        cmds.menuItem(parent=ziva_cache_menu, label="Select")

        cmds.menuItem(
            parent=ziva_cache_menu, divider=True, dividerLabel="Ziva"
        )

        # List
        cmds.menuItem(parent=menu, divider=True, dividerLabel="Ziva")
        cmds.menuItem(parent=menu, command=auto_rename, label="Auto Rename")
        # Rebuild
        cmds.menuItem(
            parent=menu,
            label="Rebuild Marking Menu",
            command=rebuild_marking_manu,
        )
        cmds.menuItem(parent=menu, divider=True, dividerLabel="asdasdasdasd")


def select_by_proximity(*args):
    mel.eval("ZivaSelectSelectVerticesByProximityRadius")


def select_by_proximity_options(*args):
    mel.eval("ZivaSelectVerticesByProximityOptions")


def auto_rename(*args):
    import zBuilder.zMaya as zMaya
    zMaya.rename_ziva_nodes()

def ziva_rig_cut(*args):
    import zBuilder.zMaya as zMaya
    utility.rig_cut()

def ziva_rig_copy(*args):
    import zBuilder.zMaya as zMaya
    utility.rig_copy()

def ziva_rig_paste(*args):
    import zBuilder.zMaya as zMaya
    utility.rig_paste()

def create_loa(*args):
    """ Generate a line of action setup for the given muscle(s)"""
    # Main loop to generated the line of actions setup.
    for item in pymel.ls(selection=True):
        # Check for any existing fiber in the object.
        fiber = None
        for node in pymel.listHistory(
            item,
            pruneDagObjects=True,
            interestLevel=2
        ):
            if pymel.objectType(node) == "zFiber":
                fiber = node
                break

        # If not fiber, generate one.
        if fiber is None:
            pymel.select(item, replace=True)
            fiber = cmds.ziva(fiber=True)
            fiber = pymel.rename(
                fiber,
                "{}_zFiber".format(item.name().rsplit("_", 1)[0])
            )

        # Create the line of action.
        curve = item.name().replace("_msh", "_loac")
        if pymel.objExists(curve):
            pymel.select(curve, fiber, replace=True)
            loa_node = pymel.ziva(loa=True)[0]
        else:
            pymel.select(item, replace=True)
            curve = pymel.PyNode(mel.eval("zLineOfActionUtil")[0])
            pymel.rename(curve.getParent(), item.name().replace("_msh", "_loa"))
            pymel.select(curve, fiber, replace=True)
            loa_node = pymel.ziva(loa=True)[0]
        pymel.rename(
                loa_node,
                item.name() + "_" + re.sub(r"\d+", "", loa_node)
            )

def switch_tissue(elements=None):
    """ Activated or disactivate the state of the tissue on given elements."""
    # Checks.
    if not elements:
        elements = pymel.ls(selection=True)
    # Constants.
    state = 0
    # Get the tissue node from the elements.
    for element in pymel.ls(selection=True):
        zgeo_node = pymel.listConnections(element.worldMatrix[0])[0]
        if zgeo_node.type() == "zGeo":
            tissue_node = [node for node in pymel.listConnections(
                zgeo_node.oGeo
            ) if node.type() == "zTissue"][0] or None

        # If tissue, activate or disactivate base on state criteria.
        if tissue_node is not None:
            if tissue_node.enable.get() != state:
                tissue_node.enable.set(state)
                element.visibility.set(state)
            else:
                tissue_node.enable.set(1)
                element.visibility.set(1)


def rebuild_marking_manu(*args):
    """This function assumes that this file has been imported in the userSetup.py
    and all it does is reload the module and initialize the markingMenu class which
    rebuilds our marking menu"""
    cmds.evalDeferred(
        """
import ziva_marking_menu
reload(ziva_marking_menu)
ziva_marking_menu.ZivaMarkingMenu()
"""
    )


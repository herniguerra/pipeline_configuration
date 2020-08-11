"""
Ziva utility functions.

:created: 15/05/2019
:author: Jhon Ricardo Vasquez ricardo.v@many-worlds.com
:version: 1.0
:documentation: */

Notes:

To Do:

- Finish the documentations for the tools.
- Code review. * coding standars.
- Review functions logic. Avoid dumb things...

"""
import os, re, logging
from PySide2 import QtCore, QtUiTools, QtWidgets, QtGui
from shiboken2 import wrapInstance
from maya import cmds, mel, OpenMaya
import pymel.core
#from zBuilder.builders import ziva


from _Builders import mw_creature_manager_lib
from _Collections import mw_maya_utils, mw_pyside_utils, mw_muscle_utils
from _Libraries.QT.Widgets import mw_QPushButton, mw_QFrame, mw_QGroupBox, mw_QLabel, mw_QComboBox, mw_QtDialog, mw_QSeparator

reload(mw_maya_utils)
reload(mw_pyside_utils)
reload(mw_muscle_utils)
reload(mw_QPushButton)
reload(mw_QFrame)
reload(mw_QGroupBox)
reload(mw_QLabel)
reload(mw_QComboBox)
reload(mw_QtDialog)
reload(mw_QSeparator)

startingDirectory = 'M:/Many-Worlds/Maya/Projects/BigBang/Assets/Creatures/Dino/Maya/Rigs/Libraries/Ziva/Build_Files'

def save_load_builds(file_path, solver=None, mode='load'):
    """ Save or load the a Ziva build file.

    Arguments:
        file_path {[str]} -- The build file path.

    Keyword Arguments:
        solver {[Ziva solver]} -- [Ziva solver to be retrieve ] (default: {None})
        mode {str} -- [Define operation method] (default: {"load"})
    """
    from zBuilder import utils as ziva_utils
    if mode == 'load':
        ziva_utils.load_rig(file_path, solver_name=solver)
    elif mode == 'save':
        if os.path.isfile(file_path):
            result = cmds.confirmDialog(title='Confirm', message='File exists, do you want to overwrite?', button=[
             'Yes', 'No'], defaultButton='Yes', cancelButton='No', dismissString='No')
            if result == 'Yes':
                ziva_utils.save_rig(file_path, split_data=False, ziva_node=solver)
            elif result == 'No':
                return
        else:
            ziva_utils.save_rig(file_path, split_data=False, ziva_node=solver)


def build(ziva_file):
    """[summary]

    Args:
        ziva_file ([str]): File path to Ziva build file.
    """
    import zBuilder.builders.ziva as zva
    ziva_handle = zva.Ziva()
    ziva_handle.retrieve_from_file(ziva_file)
    ziva_handle.build()


def import_anatomy_package(package):
    """Import fiven package file to Maya scene

    Args:
        package ([str]): Package file path.
    """
    mw_creature_manager_lib.import_creature_package(package)


def switch_tissue(elements=None):
    """ Activated or disactivate the state of the tissue on given elements."""
    if not elements:
        elements = pymel.ls(selection=True)
    state = 0
    procesed_items = []
    for element in pymel.ls(selection=True):
        zgeo_node = pymel.listConnections(element.worldMatrix[0])[0]
        if zgeo_node.type() == 'zGeo':
            tissue_node = [ node for node in pymel.listConnections(zgeo_node.oGeo) if node.type() == 'zTissue'
                          ][0] or None
        if tissue_node is not None:
            if tissue_node.enable.get() != state:
                tissue_node.enable.set(state)
                element.visibility.set(state)
            else:
                tissue_node.enable.set(1)
                element.visibility.set(1)
        procesed_items.append(element)

    return procesed_items


class MuscleRigBuilder(object):
    """Main Ziva rig builder class"""

    def __init__(self, anatomy_apkg, ziva_build=None, cache_file=None, new_scene=True):
        """[summary]

        Args:
            anatomy_apkg (str): Main path to anatomy packcage.
            ziva_build (str, optional): Ziva build file. Defaults None.
            cache_file (stg, optional): Previous skeleton cache. Defaults None.
        """
        self.anatomy_apkg = anatomy_apkg
        self.ziva_build = ziva_build
        self.cache_file = cache_file
        self.new_scene = new_scene

    def build(self):
        """Bring the anatomy package"""
        if self.new_scene:
            mw_maya_utils.edit_maya_scene('new')
        package = mw_creature_manager_lib.serialize_creature_package_to_maya(self.anatomy_apkg)
        mw_creature_manager_lib.import_creature_package(package)
        cmds.refresh(currentView=True)
        if self.ziva_build:
            import zBuilder.builders.ziva as zva
            ziva_handle = zva.Ziva()
            ziva_handle.retrieve_from_file(self.ziva_build)
            ziva_handle.build()


def rename_rivets():
    """ Rename zRivets types on the scene."""
    for item in pymel.ls(type='zRivetToBoneLocator'):
        input = pymel.listConnections(('{}.segments').format(item))[0]
        mesh = pymel.listConnections(('{}.rivetMesh').format(input))[0].name()
        name = ('{}_to_{}').format(input.name().rsplit('_', 1)[0], mesh.rsplit('_', 1)[0])
        pymel.rename(item.getParent(), name + '_zRivet')


class ZivaUtilitiesWindow(QtWidgets.QWidget):
    """ Build a Ziva utils interface."""
    import zBuilder.builders.ziva as zva
    def __init__(self, parent=None):
        
        super(ZivaUtilitiesWindow, self).__init__(parent)
        self.setSizePolicy(QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Minimum, QtWidgets.QSizePolicy.Minimum))
        self.setObjectName('Ziva Utilities')
        self.setWindowTitle('Many Worlds Ziva Utilities v.001')
        self.setWindowFlags(QtCore.Qt.WindowType.Window)
        
        self.ziva_handle = zva.Ziva()
        self.create_widgets()
        self.create_layouts()
        self.create_connections()
        self.resize(350, 200)

    def create_layouts(self):
        """ Create the main layout for the widget."""
        self.main_layout = QtWidgets.QVBoxLayout(self)
        self.main_layout.setMargin(3)
        self.main_layout.setSpacing(3)
        self.module_box = mw_QGroupBox.MWQGroupBox(self)
        self.module_box.base_layout.setMargin(3)
        self.module_box.base_layout.setSpacing(3)
        self.widgets_frame = mw_QFrame.MWQFrame(self.module_box)
        self.gridLayout = QtWidgets.QVBoxLayout(self.widgets_frame)
        self.gridLayout.setMargin(6)
        self.gridLayout.setSpacing(9)
        self.module_box.base_layout.addWidget(self.tittle)
        self.module_box.base_layout.addWidget(self.separator)
        self.module_box.base_layout.addWidget(self.widgets_frame)
        self.gridLayout.addWidget(self.retrieve_from_scene_bttn)
        self.gridLayout.addWidget(self.retrieve_scene_selection_bttn)
        self.gridLayout.addWidget(self.retrieve_from_file_bttn)
        self.gridLayout.addWidget(self.save_from_scene_bttn)
        self.gridLayout.addWidget(self.save_from_selection_bttn)
        self.gridLayout.addWidget(self.build_bttn)
        self.main_layout.addWidget(self.module_box)
        self.main_layout.addWidget(self.separator)

    def create_widgets(self):
        """Create the window widgets."""
        self.tittle = mw_QLabel.MWQLabel(custom_text='Ziva Utilities')
        self.retrieve_from_scene_bttn = mw_QPushButton.MWQPushButton(text='Retrieve From Scene')
        self.retrieve_scene_selection_bttn = mw_QPushButton.MWQPushButton(text='Retrieve Scene Selection')
        self.retrieve_from_file_bttn = mw_QPushButton.MWQPushButton(text='Retrieve From File')
        self.save_from_scene_bttn = mw_QPushButton.MWQPushButton(text='Save From Scene')
        self.save_from_selection_bttn = mw_QPushButton.MWQPushButton(text='Save From Selection')
        self.build_bttn = mw_QPushButton.MWQPushButton(text='Build')
        self.separator = mw_QSeparator.MWQFrame()

    def retrieve_from_scene(self):
        ziva_handle = zva.Ziva()
        ziva_handle.retrieve_from_scene()

    def retrieve_from_scene_selection(self):
        ziva_handle = zva.Ziva()
        ziva_handle.retrieve_from_scene_selection()

    def retrieve_from_file(self):
        package_file = mw_maya_utils.open_file(1, filters='Ziva Files (*.ziva)', initial_path=startingDirectory)
        if package_file:
            ziva_handle = zva.Ziva()
            ziva_handle.retrieve_from_file(package_file[0])
            ziva_handle.build()

    def save_ziva_build_scene(self):
        package_file = mw_maya_utils.open_file(0, filters='Ziva Files (*.ziva)', initial_path=startingDirectory)
        if package_file:
            ziva_handle = zva.Ziva()
            ziva_handle.retrieve_from_scene()
            ziva_handle.write(package_file[0])

    def save_ziva_build_selection(self):
        package_file = mw_maya_utils.open_file(0, filters='Ziva Files (*.ziva)', initial_path=startingDirectory)
        if package_file:
            import zBuilder.builders.ziva as zva
            ziva_handle = zva.Ziva()
            ziva_handle.retrieve_from_scene_selection()
            ziva_handle.write(package_file[0])

    def ziva_build(self):
        self.ziva_handle.build()

    def create_connections(self):
        self.retrieve_from_scene_bttn.clicked.connect(self.retrieve_from_scene)
        self.retrieve_scene_selection_bttn.clicked.connect(self.retrieve_from_scene_selection)
        self.retrieve_from_file_bttn.clicked.connect(self.retrieve_from_file)
        self.save_from_scene_bttn.clicked.connect(self.save_ziva_build_scene)
        self.save_from_selection_bttn.clicked.connect(self.save_ziva_build_selection)
        self.build_bttn.clicked.connect(self.ziva_build)


logger = logging.getLogger(__name__)
logger.info(('A new instance of the class {} was created').format(ZivaUtilitiesWindow.__name__))
"""
Many Worlds qt widgets collections.

:created: 24/04/2020
:author: Jhon Ricardo Vasquez ricardo.v@many-worlds.com
:version: 1.0
:documentation: */

Notes:

To Do:
"""

# System and Python Libraries
import logging

# Qt Libraries
from PySide2 import QtCore, QtUiTools, QtWidgets, QtGui
from shiboken2 import wrapInstance

from _Builders import mw_creature_manager_lib
from _Collections import mw_json_utils, mw_maya_utils, mw_pyside_utils
from _Widgets import mw_QPushButton, mw_QLineEdit, mw_QFrame, mw_QCheckBox,\
     mw_QLabel, mw_QComboBox
    
# Get the main Many Worlds skin cluster class manager
from _Collections.mw_skin_manager import MWSkinClusterManager

reload(mw_QPushButton)
reload(mw_QLineEdit)
reload(mw_QFrame)
reload(mw_QCheckBox)
reload(mw_QLabel)
reload(mw_creature_manager_lib)
reload(mw_QComboBox)


class MWQCleanUp(QtWidgets.QWidget):
    """ Many Worlds custom QDialog class. """
    def __init__(self, parent=None):
        super(MWQCleanUp, self).__init__(parent)
        self.mw_type_id = "mw_maya_file"
        self.main_parent = parent
        self.create_widgets()
        self.create_layouts()
        self.create_connections()

    def create_layouts(self):
        """ Create the main layout for the widget."""

        # Layouts definition
        self.main_layout = QtWidgets.QVBoxLayout(self)
        self.main_layout.setMargin(6)
        self.main_layout.setSpacing(3)
        self.scripts_frame = mw_QFrame.MWQFrame()
        self.joints_frame = mw_QFrame.MWQFrame()
        self.skin_frame = mw_QFrame.MWQFrame()
        self.skin_frame.autoFillBackground()

        self.scripts_layout = QtWidgets.QHBoxLayout(self.scripts_frame)
        self.scripts_layout.setMargin(6)
        self.scripts_layout.setSpacing(6)

        self.scripts_layout.addWidget(self.scripts_line)

        self.base_layout = QtWidgets.QHBoxLayout(self.joints_frame)
        self.base_layout_skin = QtWidgets.QHBoxLayout(self.joints_frame)
        self.base_layout.setMargin(6)
        self.base_layout.setSpacing(6)

        self.base_layout.addWidget(self.file_path)
        self.base_layout.addWidget(self.rig_type_selection)
        self.base_layout.addWidget(self.build_state)

        self.base_layout_skin = QtWidgets.QHBoxLayout(self.skin_frame)
        self.base_layout_skin.setMargin(6)
        self.base_layout_skin.setSpacing(6)

        self.base_layout_skin.addWidget(self.skin_file_path)
        self.base_layout_skin.addWidget(self.load_skin_button)
        self.base_layout_skin.addWidget(self.set_skin_load_from_list_button)
        self.base_layout_skin.addWidget(self.build_skin_state)

        # Adde the widgets.
        self.main_layout.addWidget(self.label)
        self.main_layout.addWidget(self.separator)
        self.main_layout.addWidget(self.scripts_frame)
        self.main_layout.addWidget(self.joints_frame)
        self.main_layout.addWidget(self.skin_frame)


    def create_widgets(self):
        self.label = mw_QLabel.MWQLabel(
            custom_text="Finalizing"
        )
        self.separator = QtWidgets.QFrame()
        self.separator.setFrameShape(QtWidgets.QFrame.HLine)
        self.separator.setFrameShadow(QtWidgets.QFrame.Sunken)

        self.load_skin_button = mw_QPushButton.MWQPushButton(
            icon_type="file_open"
        )

        self.rig_type_selection = mw_QComboBox.MWQComboBox(
            self.main_parent,
            item_list=["Puppet", "Skeleton", "Muscles", "Cloth"]
        )

        self.scripts_line = mw_QLineEdit.MWQLineEdit(
            "Set Scripts..."
        )

        self.scripts_line.mw_type_id = "mw_QLineEditScript"


        self.file_path = mw_QLineEdit.MWQLineEdit(
            "Comments..."
        )
        self.file_path.mw_type_id = "none"


        self.skin_file_path = mw_QLineEdit.MWQLineEdit(
            "Publish Path..."
        )
        self.skin_file_path.mw_type_id = "none"
        

        self.file_path.mw_type_id = "mw_maya_file"
        self.build_state = mw_QCheckBox.MWQCheckBox(" ", True)
        self.build_skin_state = mw_QCheckBox.MWQCheckBox(" ", True)
        self.skin_file_path.mw_type_id = "mw_maya_skin_file"

        self.set_skin_load_from_list_button = mw_QPushButton.MWQPushButton(
            text=">>>"
        )
        self.set_skin_load_from_list_button.setMaximumSize(36, 20)


    def create_connections(self):
        self.load_skin_button.clicked.connect(lambda: self.set_joints_files("skin"))

        self.set_skin_load_from_list_button.clicked.connect(
            self.set_skin_path_from_tree_widget
        )

    def set_joints_files(self, filter_type=None):
        """Define package location base on given file. """

        # Defione filter.
        if filter_type == "maya":
            package_file = mw_maya_utils.open_file(
                1,
                filters="Maya joints Files (*.ma *.mb)")
            if package_file:
                self.file_path.clear()
                self.file_path.setText(package_file[0])

        elif filter_type == "skin":
            package_file = mw_maya_utils.open_file(
                3,
                filters="Publish Folder (*.)")
            if package_file:
                self.skin_file_path.clear()
                self.skin_file_path.setText(package_file[0])

    def import_file(self):
        """
        """
        mw_maya_utils.import_multiples_files([self.file_path.text()])


    def apply_skin(self):
        """ Apply the given skin file to corresponding object in the scene."""

        # Get the Skelton node
        skeleton_node = mw_maya_utils.get_custom_nodes("skeleton_node")

        for item in skeleton_node.listConnections(type="mesh"):
            file_path = "{0}/{1}.mwSkin".format(self.skin_file_path.text(), item.name())
            MWSkinClusterManager.createAndImport(file_path, item.name())


    def set_joint_path_from_tree_widget(self):
        data = mw_pyside_utils.MWWidgetsFunctions.return_widget_from_id_type(
            self.main_parent,
            QtWidgets.QTreeWidget,
            "mw_type_id",
            "MWQAssetsTreeView")

        suported_formats = ["ma", "mb"]
        selected_item = data.selectedItems()
        if selected_item:
            tree_item = selected_item[0]
            file_path = (tree_item.data(0, QtCore.Qt.UserRole))

        if file_path:
            file_info = QtCore.QFileInfo(file_path)
            if file_info.suffix().lower() in suported_formats:
                self.file_path.clear()
                self.file_path.setText(file_path)
            else:
                from maya import OpenMaya
                OpenMaya.MGlobal.displayError(
                    "Please select a valid anatomical package"
                )

    def set_skin_path_from_tree_widget(self):
        data = mw_pyside_utils.MWWidgetsFunctions.return_widget_from_id_type(
            self.main_parent,
            QtWidgets.QTreeWidget,
            "mw_type_id",
            "MWQAssetsTreeView")

        selected_item = data.selectedItems()
        if selected_item:
            tree_item = selected_item[0]
            file_path = (tree_item.data(0, QtCore.Qt.UserRole))

        if file_path:
            file_info = QtCore.QFileInfo(file_path)
            if file_info.isDir():
                self.skin_file_path.clear()
                self.skin_file_path.setText(file_path)
            else:
                from maya import OpenMaya
                OpenMaya.MGlobal.displayError(
                    "Please select a valid anatomical package"
                )

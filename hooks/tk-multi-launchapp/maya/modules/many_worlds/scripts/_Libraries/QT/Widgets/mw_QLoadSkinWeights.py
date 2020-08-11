"""
Many Worlds Import skin weights module.

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

from Builders import mw_creature_manager_lib
from Collections import mw_json_utils, mw_maya_utils, mw_pyside_utils
from Widgets import mw_QPushButton, mw_QLineEdit, mw_QFrame, mw_QCheckBox,\
     mw_QLabel
    
# Get the main Many Worlds skin cluster class manager
from Collections.mw_skin_manager import MWSkinClusterManager

reload(mw_QPushButton)
reload(mw_QLineEdit)
reload(mw_QFrame)
reload(mw_QCheckBox)
reload(mw_QLabel)
reload(mw_creature_manager_lib)


class MWLoadSkinWeights(QtWidgets.QWidget):
    """ Many Worlds custom import skin weghts class. """
    def __init__(self, parent=None):
        super(MWLoadSkinWeights, self).__init__(parent)
        self.mw_type_id = "MWLoadSkinWeights"
        self.mw_long_type_id = "mw_QLoadSkinWeights.MWLoadSkinWeights"
        self.serialize_type = "text"
        self.main_parent = parent
        self.create_widgets()
        self.create_layouts()
        self.create_connections()

    def create_layouts(self):
        """ Create the main layout for the widget."""

        # Layouts definition
        self.main_layout = QtWidgets.QVBoxLayout(self)
        self.skin_frame = mw_QFrame.MWQFrame()
        self.base_layout = QtWidgets.QHBoxLayout(self.skin_frame)
        self.base_layout.setMargin(1.5)
        self.base_layout.setSpacing(2)

        # Add the widgets
        self.base_layout.addWidget(self.import_skin_button)
        self.base_layout.addWidget(self.file_path)
        self.base_layout.addWidget(self.load_skin_button)
        self.base_layout.addWidget(self.set_skin_load_from_list_button)
        self.base_layout.addWidget(self.build_state)
        self.main_layout.addWidget(self.skin_frame)


    def create_widgets(self):
        """ Widgets definition. """

        self.import_skin_button = mw_QPushButton.MWQPushButton("Import Skin")

        self.load_skin_button = mw_QPushButton.MWQPushButton(
            icon_type="file_open"
        )
        self.file_path = mw_QLineEdit.MWQLineEdit("Skin File Path...")
        self.build_state = mw_QCheckBox.MWQCheckBox(" ", True)
        self.file_path.mw_type_id = "mw_maya_skin_file"
        self.set_skin_load_from_list_button = mw_QPushButton.MWQPushButton(
            text=">>>"
        )
        self.import_skin_button.setMaximumSize(1136, 20)
        self.load_skin_button.setMaximumSize(36, 20)
        self.set_skin_load_from_list_button.setMaximumSize(36, 20)


    def create_connections(self):
        """ Create the connection for the widgets signals. """

        # Connect.
        self.load_skin_button.clicked.connect(self.load_skin_weigths)
        self.import_skin_button.clicked.connect(self.apply_skin)

        self.set_skin_load_from_list_button.clicked.connect(
            self.set_skin_path_from_tree_widget
        )

    def load_skin_weigths(self):
        """ Allows the user to define a path to the skin files. """

        package_file = mw_maya_utils.open_file(
            2,
            filters="Many-Worlds Skin Files (*.mwSkin)")
        if package_file:
            self.file_path.clear()
            self.file_path.setText(package_file[0])

    def import_file(self):
        """ Imports the skin file. """
        mw_maya_utils.import_multiples_files([self.file_path.text()])


    def apply_skin(self):
        """ Apply the given skin file to corresponding object in the scene."""

        # Get the Skelton node
        skeleton_node = mw_maya_utils.get_custom_nodes("skeleton_node")

        for item in skeleton_node.listConnections(type="mesh"):
            file_path = "{0}/{1}.mwSkin".format(self.file_path.text(), item.name())
            MWSkinClusterManager.createAndImport(file_path, item.name())


    def set_skin_path_from_tree_widget(self):
        """ Set the path from selected file item in the asset directory. """
        data = mw_pyside_utils.MWWidgetsFunctions.return_widget_from_id_type(
            self.main_parent,
            QtWidgets.QTreeWidget,
            "mw_type_id",
            "MWQAssetsTreeView")

        if hasattr(data, "selectedItems"):
            selected_item = data.selectedItems()
            if selected_item:
                tree_item = selected_item[0]
                file_path = (tree_item.data(0, QtCore.Qt.UserRole))

            if file_path:
                file_info = QtCore.QFileInfo(file_path)
                if file_info.isDir():
                    self.file_path.clear()
                    self.file_path.setText(file_path)
                else:
                    from maya import OpenMaya
                    OpenMaya.MGlobal.displayError(
                        "Please select a valid skin weights file"
                    )


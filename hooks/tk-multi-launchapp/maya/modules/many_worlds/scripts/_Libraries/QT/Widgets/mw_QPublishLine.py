"""
Many Worlds Import joint module.

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

from _Collections import mw_maya_utils, mw_pyside_utils
from _Widgets import mw_QPushButton, mw_QLineEdit, mw_QFrame, mw_QCheckBox,\
     mw_QLabel

reload(mw_QPushButton)
reload(mw_QLineEdit)
reload(mw_QFrame)
reload(mw_QCheckBox)
reload(mw_QLabel)


class MWQPublishLine(QtWidgets.QWidget):
    """ Many Worlds custom import joint module. """
    def __init__(self, parent=None):
        super(MWQPublishLine, self).__init__(parent)
        self.mw_type_id = "MWQPublishLine"
        self.main_parent = parent
        self.create_widgets()
        self.create_layouts()
        self.create_connections()


    def create_layouts(self):
        """ Create the main layout for the widget."""

        # Layouts definition
        main_layout = QtWidgets.QVBoxLayout(self)
        publish_frame = mw_QFrame.MWQFrame()
        base_layout = QtWidgets.QHBoxLayout(publish_frame)
        base_layout.setMargin(1.5)
        base_layout.setSpacing(3)

        # Add the widgets.
        base_layout.addWidget(self.import_button)
        base_layout.addWidget(self.file_path)
        base_layout.addWidget(self.load_joints_button)
        base_layout.addWidget(self.set_load_joint_from_list_button)
        base_layout.addWidget(self.build_state)
        main_layout.addWidget(publish_frame)


    def create_widgets(self):
        """ Widgets definition. """

        self.load_joints_button = mw_QPushButton.MWQPushButton(
            icon_type="file_open"
        )
        self.file_path = mw_QLineEdit.MWQLineEdit("Publish Path...")
        self.file_path.mw_type_id = "mw_maya_file"
        self.build_state = mw_QCheckBox.MWQCheckBox(" ", True)
        self.set_load_joint_from_list_button = mw_QPushButton.MWQPushButton(
            text=">>>"
        )
        self.load_joints_button.setMaximumSize(36, 20)
        self.set_load_joint_from_list_button.setMaximumSize(36, 20)

    
    def create_connections(self):
        """ Create the connection for the widgets signals. """

        # Connect
        self.import_button.clicked.connect(self.import_file)
        self.load_joints_button.clicked.connect(self.set_joints_files)
        self.set_load_joint_from_list_button.clicked.connect(
            self.set_joint_path_from_tree_widget
        )


    def set_joints_files(self):
        """ Allows the user to define a path to the joint file. """

        # Open Maya dialogue to retrieve the file.
        package_file = mw_maya_utils.open_file(
            1,
            filters="Maya joints Files (*.ma *.mb)")
        if package_file:
            self.file_path.clear()
            self.file_path.setText(package_file[0])


    def import_file(self):
        """ Imports the joints file. """
        mw_maya_utils.import_multiples_files([self.file_path.text()])


    def set_joint_path_from_tree_widget(self):
        """ Set the path from selected file item in the asset directory. """

        # Get the current list object to query file path from list item.
        data = mw_pyside_utils.MWWidgetsFunctions.return_widget_from_id_type(
            self.main_parent,
            QtWidgets.QTreeWidget,
            "mw_type_id",
            "MWQAssetsTreeView")

        # Set the file path.
        if hasattr(data, "selectedItems"):
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

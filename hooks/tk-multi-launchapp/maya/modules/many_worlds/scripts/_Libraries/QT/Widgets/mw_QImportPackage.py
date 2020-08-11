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

from Builders import mw_creature_manager_lib
from Collections import mw_json_utils, mw_maya_utils, mw_pyside_utils
from Widgets import mw_QPushButton, mw_QLineEdit, mw_QFrame, mw_QCheckBox,\
     mw_QLabel

reload(mw_QPushButton)
reload(mw_QLineEdit)
reload(mw_QFrame)
reload(mw_QCheckBox)
reload(mw_QLabel)
reload(mw_creature_manager_lib)
reload(mw_pyside_utils)


class MWQPackage(QtWidgets.QWidget):
    """ Many Worlds custom QDialog class. """
    def __init__(self, parent=None):
        super(MWQPackage, self).__init__(parent)

        self.main_parent = parent
        self.mw_type_id = "MWQPackage"
        self.mw_long_type_id = "mw_QImportPackage.MWQPackage"
        self.serialize_type = "text"
        self.create_widgets()
        self.create_layouts()
        self.create_connections()


    def create_layouts(self):
        """ Create the main layout for the widget."""

        # Layouts definition
        self.main_layout = QtWidgets.QVBoxLayout(self)
        self.frame = mw_QFrame.MWQFrame()

        self.base_layout = QtWidgets.QHBoxLayout(self.frame)
        self.base_layout.setMargin(1.5)
        self.base_layout.setSpacing(3)

        self.base_layout.addWidget(self.import_button)
        self.base_layout.addWidget(self.file_path)
        self.base_layout.addWidget(self.set_path_button)
        self.base_layout.addWidget(self.set_load_from_list_button)
        self.base_layout.addWidget(self.build_state)
        
        # Adde the widgets.
        self.main_layout.addWidget(self.label)
        self.main_layout.addWidget(self.separator)
        self.main_layout.addWidget(self.frame)


    def create_widgets(self):
        self.label = mw_QLabel.MWQLabel(
            custom_text="Build Anatomical Components"
        )
        self.separator = QtWidgets.QFrame()
        self.separator.setFrameShape(QtWidgets.QFrame.HLine)
        self.separator.setFrameShadow(QtWidgets.QFrame.Sunken)

        self.import_button = mw_QPushButton.MWQPushButton(
            "Import Anatomy Package"
        )
        self.import_button.setMaximumSize(16777215, 35)
        self.file_path = mw_QLineEdit.MWQLineEdit(
            "Import anatomical package..."
        )
        self.file_path.mw_type_id = "MWQPackage"
        
        self.set_path_button = mw_QPushButton.MWQPushButton(
            icon_type="file_open"
        )
        self.set_path_button.setMaximumSize(36, 20)

        self.set_load_from_list_button = mw_QPushButton.MWQPushButton(
            text=">>>"
        )
        self.set_load_from_list_button.setMaximumSize(36, 20)
        
        self.build_state = mw_QCheckBox.MWQCheckBox(" ", True)


    def create_connections(self):
        self.import_button.clicked.connect(self.import_anatomy_package)
        self.set_path_button.clicked.connect(self.set_anatomy_package)
        self.set_load_from_list_button.clicked.connect(
            self.set_path_from_tree_widget
        )


    def set_anatomy_package(self):
        """Define package location base on given file. """

        package_file = mw_maya_utils.open_file(
            1,
            filters="Package Files (*.apkg)")
        if package_file:
            self.file_path.clear()
            self.file_path.setText(package_file[0])


    def import_anatomy_package(self):
        """
        """
        package = mw_creature_manager_lib.serialize_creature_package_to_maya(
            self.file_path.text()
        )
        mw_creature_manager_lib.import_creature_package(package)


    def set_path_from_tree_widget(self):
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
            if file_info.suffix().lower() == "apkg":
                self.file_path.clear()
                self.file_path.setText(file_path)
            else:
                from maya import OpenMaya
                OpenMaya.MGlobal.displayError(
                    "Please select a valid anatomical package"
                )

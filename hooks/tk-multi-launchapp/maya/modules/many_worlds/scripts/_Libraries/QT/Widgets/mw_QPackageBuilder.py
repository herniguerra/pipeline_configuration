"""
Many Worlds qt widgets collections.

:created: 09/08/2020
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
     mw_QLabel, mw_QImportModule, mw_QAssetLibrary, mw_QGroupBox, mw_QtDialog

reload(mw_QPushButton)
reload(mw_QLineEdit)
reload(mw_QFrame)
reload(mw_QCheckBox)
reload(mw_QLabel)
reload(mw_creature_manager_lib)
reload(mw_pyside_utils)
reload(mw_QImportModule)
reload(mw_QGroupBox)

#parent=mw_pyside_utils.maya_main_window()
class MWQPackageBuilder(mw_QtDialog.MWQDialog):
    """ Many Worlds custom QDialog class. """
    def __init__(self, parent=None):
        super(MWQPackageBuilder, self).__init__(parent)
        self.main_parent = parent
        self.mw_type_id = "MWQPackageBuilder"
        self.mw_long_type_id = "mw_QImportPackage.MWQPackageBuilder"
        self.serialize_type = "text"
        self.setWindowTitle("Many Worlds creature package manager v.001")

        self.menu_bar()
        self.create_layouts()
        self.create_widgets()
        self.add_widgets()
        #self.create_connections()

    def create_layouts(self):
        """ Create the main layout for the widget."""

        # Layouts definition
        self.main_layout = QtWidgets.QVBoxLayout(self)
        self.main_layout.setMargin(0.1)
        self.main_layout.setSpacing(0.1)
        
        # Splitters
        self.asset_main_splitter = QtWidgets.QSplitter(self)
        self.asset_main_splitter.setOrientation(QtCore.Qt.Horizontal)

        # Groups layouts.
        self.file_explorer = QtWidgets.QGroupBox(
            self.asset_main_splitter
        )
        self.file_explorer.setMaximumSize(250, 1000)
        self.file_explorer.setVisible(0)
        self.file_explorer_layout = QtWidgets.QVBoxLayout(self.file_explorer)

        self.package_builder = QtWidgets.QGroupBox(
            self.asset_main_splitter
        )
        self.package_builder.setMinimumSize(300, 300)
        self.package_builder.resize(700, 300)
        self.package_builder_layout = QtWidgets.QVBoxLayout(
            self.package_builder
        )

        # Widgets layouts.
        self.frame = mw_QFrame.MWQFrame(self.asset_main_splitter)
        self.base_layout = QtWidgets.QVBoxLayout(self.frame)
        self.base_layout.setMargin(0.1)
        self.base_layout.setSpacing(0.1)

        self.buttons_frame = mw_QFrame.MWQFrame(self)
        self.buttons_base_layout = QtWidgets.QHBoxLayout(self.buttons_frame)
        self.main_layout.addWidget(self.menu_bar_group)
        self.main_layout.addWidget(self.asset_main_splitter)


    def add_widgets(self):
        """ Add widgets. """
        
        # Adde the widgets.
        self.file_explorer_layout.addWidget(self.asset_library_panel)

        self.package_builder_layout.addWidget(self.label)
        self.package_builder_layout.addWidget(self.separator)
        self.package_builder_layout.addWidget(self.frame)

        self.base_layout.addWidget(self.import_skeleton)
        self.base_layout.addWidget(self.import_muscle)
        self.base_layout.addWidget(self.import_loas)
        self.base_layout.addWidget(self.import_skin)

        # Add buttons.
        self.buttons_base_layout.addWidget(self.build_button)
        self.buttons_base_layout.addWidget(self.publish_button)
        self.buttons_base_layout.addWidget(self.batch_button)

        self.package_builder_layout.addWidget(self.buttons_frame)

    def create_widgets(self):
        """ Create the default widgets objects for the layout. """

        # Define the layouts.
        self.label = mw_QLabel.MWQLabel(
            custom_text="Build Anatomical Components"
        )

        self.separator = QtWidgets.QFrame()
        self.separator.setFrameShape(QtWidgets.QFrame.HLine)
        self.separator.setFrameShadow(QtWidgets.QFrame.Sunken)

        self.asset_library_panel = mw_QAssetLibrary.MWAssetsLibrary()

        self.import_skeleton = mw_QImportModule.MWQImportModule(
            "MWQImportModule",
            "mw_QImportPackage.MWQImportModule",
            "text",
            "Skeleton",
            self,
        )

        self.import_muscle = mw_QImportModule.MWQImportModule(
            "MWQImportModule",
            "mw_QImportPackage.MWQImportModule",
            "text",
            "Muscle",
            self,
        )

        self.import_loas = mw_QImportModule.MWQImportModule(
            "MWQImportModule",
            "mw_QImportPackage.MWQImportModule",
            "text",
            "Loas",
            self,
        )

        self.import_skin = mw_QImportModule.MWQImportModule(
            "MWQImportModule",
            "mw_QImportPackage.MWQImportModule",
            "text",
            "Skin",
            self,
        )

        # Buttons
        self.build_button = mw_QPushButton.MWQPushButton(
            "Generate Package",
            width=100,
            heigth=35
        )

        self.publish_button = mw_QPushButton.MWQPushButton(
            "Publish",
            width=100,
            heigth=35
        )

        self.batch_button = mw_QPushButton.MWQPushButton(
            "Clean UP",
            width=100,
            heigth=35
        )

    def create_connections(self):
        self.import_skeleton.clicked.connect(self.import_anatomy_package)
        self.set_path_button.clicked.connect(self.set_anatomy_package)
        self.set_load_from_list_button.clicked.connect(
            self.set_path_from_tree_widget
        )

    def menu_bar(self) :
        self.menu_bar_group = mw_QGroupBox.MWQGroupBox(self)
        self.menu_bar_widget = QtWidgets.QMenuBar()
        
        # Save session menu.
        file_menu = self.menu_bar_widget.addMenu ("File")
        save_action = QtWidgets.QAction(QtGui.QIcon('exit24.png'), 'Open File Explorer', self)
        file_menu.addAction(save_action)
        save_action.triggered.connect(self._open_file_explorer)
        save_action.setShortcut('Ctrl+o')

        load_action = QtWidgets.QAction(QtGui.QIcon('exit24.png'), 'Close File Explorer', self)
        file_menu.addAction(load_action)
        load_action.triggered.connect(self._close_file_explorer)
        load_action.setShortcut('Ctrl+e')

        self.menu_bar_widget.show()
        self.menu_bar_group.base_layout.addWidget(self.menu_bar_widget)
        self.menu_bar_group.main_layout.setSpacing(1)
        self.menu_bar_group.main_layout.setMargin(1)

        self.menu_bar_group.setMaximumSize(16777215, 32)

    def _open_file_explorer(self):
        """ Open the file explorer menu. """
        self.file_explorer.setVisible(1)

    def _close_file_explorer(self):
        """ Open the file explorer menu. """
        self.file_explorer.setVisible(0)




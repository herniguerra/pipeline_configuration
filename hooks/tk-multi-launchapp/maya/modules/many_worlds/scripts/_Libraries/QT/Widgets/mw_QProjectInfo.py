"""
Many Worlds qt widgets collections.

:created: 27/04/2020
:author: Jhon Ricardo Vasquez ricardo.v@many-worlds.com
:version: 1.0
:documentation: */

Notes:

To Do:
"""

# Qt Libraries
from PySide2 import QtCore, QtUiTools, QtWidgets, QtGui

from Widgets import mw_QFrame, mw_QLabel, mw_QLineEdit, mw_QComboBox



class MWQPojectInfo(QtWidgets.QWidget):
    def __init__(self, custom_name="importPackageFrame", parent=None):
        super(MWQPojectInfo, self).__init__(parent)
        self.setSizePolicy(
            QtWidgets.QSizePolicy(
                QtWidgets.QSizePolicy.Expanding,
                QtWidgets.QSizePolicy.Fixed
            )
        )

        self.root_path_frame = mw_QFrame.MWQFrame()
        self.rooth_path_main_layout = QtWidgets.QVBoxLayout(self.root_path_frame)

        self.rooth_path_base_layout = QtWidgets.QVBoxLayout()
        self.current_path_label = mw_QLabel.MWQLabel("Current Root Path:")
        self.current_root_file_path = mw_QLineEdit.MWQLineEdit("Current Project Path...")
        self.rooth_path_base_layout.addWidget(self.current_path_label)
        self.rooth_path_base_layout.addWidget(self.current_root_file_path)

        self.rooth_path_main_layout.addLayout(self.rooth_path_base_layout)


        # Project options.
        self.select_project_layout = QtWidgets.QHBoxLayout()
        self.select_project_label = mw_QLabel.MWQLabel("Select Project:")
        self.select_project_combo = mw_QComboBox.MWQComboBox()

        self.select_asset_label = mw_QLabel.MWQLabel("Select Asset:")
        self.select_asset_combo = mw_QComboBox.MWQComboBox()


        self.select_project_layout.addWidget(self.select_project_label)
        self.select_project_layout.addWidget(self.select_project_combo)
        self.select_project_layout.addWidget(self.select_asset_label)
        self.select_project_layout.addWidget(self.select_asset_combo)

        self.rooth_path_main_layout.addLayout(self.select_project_layout)
        

        # Define and fill the main layout.
        self.main_layout = QtWidgets.QVBoxLayout(self)
        self.main_layout.setObjectName("main_layout")
        self.main_layout.addWidget(self.root_path_frame)

        self.main_layout.setMargin(1)
        self.main_layout.setSpacing(1)

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
from _Collections import mw_json_utils, mw_maya_utils
from _Libraries.QT.Widgets import mw_QPushButton, mw_QLineEdit, mw_QFrame, mw_QCheckBox,\
     mw_QLabel

reload(mw_QPushButton)
reload(mw_QLineEdit)
reload(mw_QFrame)
reload(mw_QCheckBox)
reload(mw_QLabel)
reload(mw_creature_manager_lib)


class MWQGuide(QtWidgets.QWidget):
    """ Many Worlds custom QDialog class. """
    def __init__(self, ):
        super(MWQGuide, self).__init__()
        self.mw_type_id = "mw_guides_file"
        self.create_widgets()
        self.create_layouts()
        self.create_connections()

    def create_layouts(self):
        """ Create the main layout for the widget."""

        # Layouts definition
        self.main_layout = QtWidgets.QVBoxLayout(self)
        self.frame = mw_QFrame.MWQFrame()

        self.base_layout = QtWidgets.QHBoxLayout(self.frame)
        self.base_layout.setMargin(6)
        self.base_layout.setSpacing(6)

        self.base_layout.addWidget(self.import_button)
        self.base_layout.addWidget(self.file_path)
        self.base_layout.addWidget(self.set_path_button)

        # Adde the widgets.
        self.main_layout.addWidget(self.label)
        self.main_layout.addWidget(self.separator)
        self.main_layout.addWidget(self.frame)

    def create_widgets(self):
        self.label = mw_QLabel.MWQLabel(
            custom_text="Build Guides Components"
        )
        self.separator = QtWidgets.QFrame()
        self.separator.setFrameShape(QtWidgets.QFrame.HLine)
        self.separator.setFrameShadow(QtWidgets.QFrame.Sunken)

        self.import_button = mw_QPushButton.MWQPushButton(
            "Import guides"
        )
        self.file_path = mw_QLineEdit.MWQLineEdit(
            "Guides path..."
        )
        self.file_path.mw_type_id = "mw_guides_file"
        self.set_path_button = mw_QPushButton.MWQPushButton("...")
        self.build_state = mw_QCheckBox.MWQCheckBox(" ", True)

    def create_connections(self):
        self.import_button.clicked.connect(self.import_guides)
        self.set_path_button.clicked.connect(self.set_guides)

    def set_guides(self):
        """Define package location base on given file. """

        package_file = mw_maya_utils.open_file(
            1,
            filters="Guides Files (*.sgt)")
        if package_file:
            self.file_path.clear()
            self.file_path.setText(package_file[0])

    def import_guides(self):
        """
        """
        package = mw_creature_manager_lib.serialize_creature_package_to_maya(
            self.file_path.text()
        )
        mw_creature_manager_lib.import_creature_package(package)

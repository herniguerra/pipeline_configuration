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
from _Libraries.QT.Widgets import mw_QPushButton, mw_QLineEdit, mw_QFrame, mw_QCheckBox,/
     mw_QLabel, mw_QComboBox, mw_QSeparator, mw_QGroupBox
    
# Get the main Many Worlds skin cluster class manager
from _Collections.mw_skin_manager import MWSkinClusterManager

reload(mw_QPushButton)
reload(mw_QLineEdit)
reload(mw_QFrame)
reload(mw_QCheckBox)
reload(mw_QLabel)
reload(mw_creature_manager_lib)
reload(mw_QComboBox)
reload(mw_QGroupBox)

class MWQSessionInfo(QtWidgets.QWidget):
    """ Many Worlds custom QDialog class. """
    def __init__(self, parent=None):
        super(MWQSessionInfo, self).__init__(parent)
        self.mw_type_id = "MWQSessionInfo"
        self.main_parent = parent
        self.create_widgets()
        self.create_layouts()
        self.create_connections()

    def create_layouts(self):
        """ Create the main layout for the widget."""

        # Layouts definition
        self.main_layout = QtWidgets.QVBoxLayout(self)
        self.main_layout.setMargin(3)
        self.main_layout.setSpacing(3)

        # Frames
        self.session_info_frame = mw_QGroupBox.MWQGroupBox()
        self.session_info_frame.setSizePolicy(
            QtWidgets.QSizePolicy(
                QtWidgets.QSizePolicy.Expanding,
                QtWidgets.QSizePolicy.Expanding
            )
        )

        # Assets info sub layouts.
        self.asset_info_label_layout = QtWidgets.QHBoxLayout(self.session_info_frame)
        self.asset_info_label_layout.setMargin(3)
        self.asset_info_label_layout.setSpacing(9)
        self.asset_info_layout = QtWidgets.QVBoxLayout()
        self.asset_info_layout.setMargin(1)
        self.asset_info_layout.setSpacing(1)
        

        # Adde the widgets.
        self.asset_info_label_layout.addWidget(self.asset_thumbnail)
        self.session_info_frame.base_layout.addWidget(self.session_info_label)
        self.session_info_frame.base_layout.addWidget(self.separator)
        self.session_info_frame.base_layout.addLayout(self.asset_info_label_layout)
        self.asset_info_label_layout.addLayout(self.asset_info_layout)
        self.asset_info_layout.addWidget(self.current_project)
        self.asset_info_layout.addWidget(self.asset_name)
        self.asset_info_layout.addWidget(self.asset_type)
        self.asset_info_layout.addWidget(self.asset_date)
        self.asset_info_layout.addWidget(self.current_task)
        self.asset_info_layout.addWidget(self.current_artist)

        # Fill the main layout.
        self.main_layout.addWidget(self.session_info_frame)


    def create_widgets(self):
        """ Define the object widgets. """

        # Headers.
        self.session_info_label = mw_QLabel.MWQLabel(custom_text="Session Info")
        #mw_pyside_utils.MWWidgetsFunctions._clickable(self.session_info_label).connect(self.set_panel_visibility)

        
        self.asset_thumbnail = mw_pyside_utils.MWWidgetsFunctions.create_custom_label(
            "C:/Many-Worlds/pipeline/shotgun/pipeline_configuration/hooks/tk-multi-launchapp/maya/icons/MayaStartupImage_200.png",
            scale_w=150,
            scale_h=150
        )
        self.asset_thumbnail.setAlignment(QtCore.Qt.AlignLeft)
        self.asset_thumbnail.setMinimumSize(155, 130)

        # Statics Labels definition.
        self.current_project = mw_QLabel.MWQLabel(
            custom_text="Current Project: Big Bang",
            style_sheet = False
        )

        # Assets info labels.
        self.asset_name = mw_QLabel.MWQLabel(
            custom_text = "Asset Name: Gorilla ",
            style_sheet = False
        )

        self.asset_type = mw_QLabel.MWQLabel(
            custom_text = "Asset Type: Creature/Biped ",
            style_sheet = False
        )

        self.asset_date = mw_QLabel.MWQLabel(
            custom_text = "Asset Created:  11/08/2020",
            style_sheet = False
        )

        self.current_task = mw_QLabel.MWQLabel(
            custom_text = "Current Task:  Skeleton",
            style_sheet = False
        )

        self.current_artist = mw_QLabel.MWQLabel(
            custom_text = "Artist:  Rigardo",
            style_sheet = False
        )

        # Separator
        self.separator = mw_QSeparator.MWQFrame()

    def create_connections(self):
        pass


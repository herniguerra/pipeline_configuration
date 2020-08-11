"""
Many Worlds qt widgets collections.

:created: 08/05/2020
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
from _Libraries.QT.Widgets import mw_QPushButton, mw_QFrame, mw_QImportJoints, \
    mw_QLabel, mw_QGroupBox, mw_QComboBox, mw_QSeparator, mw_QImportPackage, \
    mw_QCleanup, mw_QLoadSkinWeights, mw_QRunScript
    
# pylint: disable=undefined-variable
reload(mw_QPushButton)
reload(mw_QFrame)
reload(mw_QLabel)
reload(mw_creature_manager_lib)
reload(mw_QGroupBox)
reload(mw_QComboBox)
reload(mw_QSeparator)
reload(mw_QCleanup)
reload(mw_QRunScript)
reload(mw_pyside_utils)
reload(mw_QLoadSkinWeights)
reload(mw_QImportJoints)
reload(mw_QImportPackage)

# pylint: enable=undefined-variable
class MWQMuscleModule(QtWidgets.QWidget):
    """ Many Worlds custom QDialog class. """
    def __init__(self, parent=None):
        super(MWQMuscleModule, self).__init__(parent)
        self.mw_type_id = "MWQMuscleModule"
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

        # Base widgets group layout.
        self.module_box = mw_QGroupBox.MWQGroupBox(self)
        self.module_box.base_layout.setMargin(3)
        self.module_box.base_layout.setSpacing(3)

        # Widgets layouts.
        self.widgets_frame = mw_QFrame.MWQFrame(self.module_box)
        self.gridLayout = QtWidgets.QGridLayout(self.widgets_frame)
        self.gridLayout.setMargin(6)
        self.gridLayout.setSpacing(9)

        # Adde the widgets.
        self.module_box.base_layout.addWidget(self.main_label)
        self.module_box.base_layout.addWidget(self.separator)
        self.module_box.base_layout.addWidget(self.widgets_frame)

        self.gridLayout.addWidget(self.lod_label, 0, 0, 1, 1)
        self.gridLayout.addWidget(self.lod_type, 0, 1, 1, 1)
        self.gridLayout.addWidget(self.description, 1, 0, 1, 2)
        self.gridLayout.addWidget(self.create_module, 2, 0, 1, 2)

        self.main_layout.addWidget(self.module_box)
        self.main_layout.addItem(self.spacer)


    def create_widgets(self):
        """ Define the object widgets. """

        # Labels.
        self.tittle = mw_QLabel.MWQLabel(
            custom_text="Many-Worlds Muscles Builder Module",
            aligment="rigth",
        )
        self.lod_label = QtWidgets.QLabel("Choose Muscle Rig Definition:  ")
        self.create_custom_label()

        # Combo Boxes
        self.lod_type = mw_QComboBox.MWQComboBox(
            item_list= ["100", "200", "300"]
        )

        # Text description.
        self.description = QtWidgets.QTextEdit()
        self.description.setReadOnly(True)
        self.description.setText(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")

        # Separator.
        self.separator = mw_QSeparator.MWQFrame()

        # Buttons.
        self.create_module = mw_QPushButton.MWQPushButton(
            text="Create Module"
        )
        
        self.spacer = QtWidgets.QSpacerItem(20, 40, QtWidgets.QSizePolicy.Minimum, QtWidgets.QSizePolicy.Expanding)

    def create_connections(self):
        self.create_module.clicked.connect(self.create_muscle_module)


    def create_muscle_module(self):
        """ Create the skeleton modules  builder. """

        # Create the module.
        self.tab_widget = mw_pyside_utils.MWWidgetsFunctions.return_widget_from_id_type(
                self.main_parent,
                QtWidgets.QTabWidget,
                "mw_type_id",
                "MWQTabWidgetBuilder")

        mw_pyside_utils.MWWidgetsFunctions.add_tab(
            self.tab_widget,
            self.create_muscle_session(),
            "skeleton_rig_builder_LOD_{}".format(self.lod_type.currentText())
        )

    def create_muscle_session(self):
        """ Create an skeleton session lod. """

        # Create the session base on lod.
        session_components = []
        if self.lod_type.currentText() == "100":
            session_components.append(mw_QImportPackage.MWQPackage(self.main_parent))
            session_components.append(mw_QImportJoints.MWQImportJoints(self.main_parent))
            session_components.append(mw_QLoadSkinWeights.MWLoadSkinWeights(self.main_parent))
            session_components.append(mw_QRunScript.MWQRunScript(self.main_parent))

        elif self.lod_type.currentText() == "200":
            session_components.append(mw_QImportPackage.MWQPackage(self.main_parent))
            session_components.append(mw_QImportJoints.MWQImportJoints(self.main_parent))
            session_components.append(mw_QLoadSkinWeights.MWLoadSkinWeights(self.main_parent))
            
            
            session_components.append(mw_QCleanup.MWQCleanUp(self.main_parent))
        else:
            pass

        return session_components


    def create_custom_label(self):
        """ Create a custom label for the window."""

        image_path = "M:/Many-Worlds/Resources/Images/Manage_Modules_icons/muscles01.png"
        image_object = QtGui.QImage(image_path).scaled(
            60, 60,
            QtCore.Qt.IgnoreAspectRatio, QtCore.Qt.SmoothTransformation
        )

        pixmap = QtGui.QPixmap()
        pixmap.convertFromImage(image_object)

        # Labels creation.
        self.main_label = mw_QLabel.MWQLabel(
            custom_text="Many-Worlds Creature Manager",
            aligment="rigth",
        )

        self.main_label.setPixmap(pixmap)
        self.main_label.setMaximumSize(17600, 100)


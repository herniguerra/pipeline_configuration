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

# Many-Worlds Libraries
from _Collections import mw_pyside_utils
from _Libraries.QT.Widgets import mw_QFrame, mw_QLabel, mw_QAssetsTree, mw_QtDialog, mw_QLineEdit

reload(mw_pyside_utils)
reload(mw_QFrame)
reload(mw_QLabel)
reload(mw_QtDialog)
reload(mw_QLineEdit)


class MWAssetsLibrary(mw_QtDialog.MWQDialog):
    WINDOW_TITLE = "File Explorer"
    DIRECTORY_PATH = "C:/Many-Worlds/pipeline/shotgun/projects/mwBaseProject/assets/Character"

    def __init__(self):
        super(MWAssetsLibrary, self).__init__()

        # Edit widgets.
        self.setSizePolicy(
            QtWidgets.QSizePolicy(
                QtWidgets.QSizePolicy.Minimum,
                QtWidgets.QSizePolicy.Minimum
            )
        )
        self.setObjectName("AssetsLibrary")

        # Function calls
        self.create_widgets()
        self.create_layouts()
        self.create_connections()
        self.refresh_list()


    def create_layouts(self):
        """ Create the base layouts. """

        # Main layouts creation.
        self.main_layout = QtWidgets.QVBoxLayout(self)
        self.main_layout.setMargin(1)
        self.main_layout.setSpacing(1)

        # Splitters
        self.asset_main_splitter = QtWidgets.QSplitter(self)
        self.asset_main_splitter.setOrientation(QtCore.Qt.Vertical)

        # Groups layouts.
        self.assets_lib_group = QtWidgets.QGroupBox(
            self.asset_main_splitter
        )
        self.assets_lib_group.setMinimumSize(80, 80)
        self.assets_lib_group_layout = QtWidgets.QVBoxLayout(self.assets_lib_group)
        self.assets_lib_group_layout.setMargin(1)
        self.assets_lib_group_layout.setSpacing(1)
        self.creature_info_group = QtWidgets.QGroupBox(
            self.asset_main_splitter
        )
        self.creature_info_group_layout = QtWidgets.QVBoxLayout(
            self.creature_info_group
        )
        self.creature_info_group_layout.setMargin(1)
        self.creature_info_group_layout.setSpacing(1)

        # Adde the widgets.
        self.assets_lib_group_layout.addWidget(self.tree_widget)
        self.main_layout.addWidget(self.item_search)
        self.main_layout.addWidget(self.asset_main_splitter)


    def create_widgets(self):
        self.item_search =  mw_QLineEdit.MWQLineEdit(
            "Search"
        ) 
        self.path_label = QtWidgets.QLabel(self.DIRECTORY_PATH)
        self.tree_widget = QtWidgets.QTreeWidget()
        self.tree_widget.setHeaderHidden(True)
        self.tree_widget.mw_type_id = "MWQAssetsTreeView"

    def create_layout(self):
        main_layout = QtWidgets.QVBoxLayout(self)
        main_layout.setContentsMargins(2, 2, 2, 2)
        main_layout.addWidget(self.path_label)
        main_layout.addWidget(self.tree_widget)

    
    def add_children(self, parent_item, dir_path):
        directory = QtCore.QDir(dir_path)
        files_in_directory = directory.entryList(QtCore.QDir.NoDotAndDotDot | QtCore.QDir.AllEntries, QtCore.QDir.DirsFirst | QtCore.QDir.IgnoreCase)

        for file_name in files_in_directory:
            self.add_child(parent_item, dir_path, file_name)

    def add_child(self, parent_item, dir_path, file_name):
        file_path = "{0}/{1}".format(dir_path, file_name)
        file_info = QtCore.QFileInfo(file_path)

        if file_info.suffix().lower() == "pyc":
            return

        item = QtWidgets.QTreeWidgetItem(parent_item, [file_name])
        item.setData(0, QtCore.Qt.UserRole, file_path)

        if file_info.isDir():
            self.add_children(item, file_info.absoluteFilePath())

        if not parent_item:
            self.tree_widget.addTopLevelItem(item)

    def refresh_list(self):
        self.tree_widget.clear()
        self.add_children(None, self.DIRECTORY_PATH)

    def create_connections(self):
        pass

    def set_filter(self):

        _iter = QtWidgets.QTreeWidgetItemIterator(self.tree_widget)
        while(_iter.value()):
            item = _iter.value()

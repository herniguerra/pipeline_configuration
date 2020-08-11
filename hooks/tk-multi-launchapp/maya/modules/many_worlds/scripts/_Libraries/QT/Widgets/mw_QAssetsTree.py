"""
Many Worlds qt widgets colelctions.

:created: 30/04/2020
:author: Jhon Ricardo Vasquez ricardo.v@many-worlds.com
:version: 1.0
:documentation: */

Notes:

To Do:
"""

# Qt Libraries
from PySide2 import QtCore, QtUiTools, QtWidgets, QtGui
from shiboken2 import wrapInstance

# Many-Worlds Libraries
from _Libraries.QT.Widgets import mw_QtDialog
from _Collections.mw_folder_manager import  MWFolderManager

class MWQAssetsTreeView(mw_QtDialog.MWQDialog):

    WINDOW_TITLE = "File Explorer"
    DIRECTORY_PATH = "M:/Many-Worlds/Maya/Projects/BigBang/Assets/Creatures"

    def __init__(self):
        super(MWQAssetsTreeView, self).__init__()

        self.create_widgets()
        self.create_layout()
        self.create_connections()
        self.refresh_list()

    def create_widgets(self):
        self.path_label = QtWidgets.QLabel(self.DIRECTORY_PATH)
        self.tree_wdg = QtWidgets.QTreeWidget()
        self.tree_wdg.setHeaderHidden(True)
        self.tree_wdg.mw_type_id = "MWQAssetsTreeView"

    def create_layout(self):
        main_layout = QtWidgets.QVBoxLayout(self)
        main_layout.setContentsMargins(2, 2, 2, 2)
        main_layout.addWidget(self.path_label)
        main_layout.addWidget(self.tree_wdg)

    def create_connections(self):
        pass

    def refresh_list(self):
        self.tree_wdg.clear()
        self.add_children(None, self.DIRECTORY_PATH)

    def add_children(self, parent_item, dir_path):
        directory = QtCore.QDir(dir_path)
        files_in_directory = directory.entryList(QtCore.QDir.NoDotAndDotDot | QtCore.QDir.AllEntries, QtCore.QDir.DirsFirst | QtCore.QDir.IgnoreCase)

        for file_name in files_in_directory:
            self.add_child(parent_item, dir_path, file_name)

    def add_child(self, parent_item, dir_path, file_name):
        file_path = "{0}/{1}".format(dir_path, file_name)
        file_info = QtCore.QFileInfo(file_path)

        not_filter_list = ["pyc", "mayaSwatches"]
        if file_info.suffix().lower() in not_filter_list:
            return

        item = QtWidgets.QTreeWidgetItem(parent_item, [file_name])
        item.setData(0, QtCore.Qt.UserRole, file_path)

        if file_info.isDir():
            self.add_children(item, file_info.absoluteFilePath())

        if not parent_item:
            self.tree_wdg.addTopLevelItem(item)

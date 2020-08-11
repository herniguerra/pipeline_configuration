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

class MWQComponentsTreeView(mw_QtDialog.MWQDialog):

    WINDOW_TITLE = "Tree View Dialog"

    def __init__(self):
        super(MWQComponentsTreeView, self).__init__()

        self.setWindowTitle(self.WINDOW_TITLE)
        self.create_widgets()
        self.create_layout()
        self.create_connections()

    def create_widgets(self):
        root_path = "C:/Many-Worlds/pipeline/shotgun/projects/mwBaseProject/assets/Character"

        self.model = QtWidgets.QFileSystemModel()
        self.model.setRootPath(root_path)

        self.tree_view = QtWidgets.QTreeView()
        self.tree_view.setModel(self.model)
        self.tree_view.setRootIndex(self.model.index(root_path))
        self.tree_view.hideColumn(1)
        self.tree_view.setColumnWidth(0, 240)

        # self.model.setFilter(QtCore.QDir.Dirs | QtCore.QDir.NoDotAndDotDot)

        #self.model.setNameFilters(["*.py"])
        #self.model.setNameFilterDisables(False)

    def create_layout(self):
        main_layout = QtWidgets.QVBoxLayout(self)
        main_layout.setContentsMargins(2, 2, 2, 2)
        main_layout.addWidget(self.tree_view)

    def create_connections(self):
        self.tree_view.doubleClicked.connect(self.on_double_clicked)

    def on_double_clicked(self, index):
        path = self.model.filePath(index)

        if self.model.isDir(index):
            print("Directory selected: {0}".format(path))
        else:
            print("File selected: {0}".format(path))


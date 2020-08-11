"""
Many Worlds qt widgets collections.

:created: 24/04/2020
:author: Jhon Ricardo Vasquez ricardo.v@many-worlds.com
:version: 1.0
:documentation: */

Notes:

To Do:
"""


# Qt Libraries
from PySide2 import QtCore, QtUiTools, QtWidgets, QtGui


class MWQLabel(QtWidgets.QLabel):
    def __init__(self,
        custom_text=None,
        aligment=None,
        style_sheet=True,
        parent=None
    ):
        super(MWQLabel, self).__init__(parent)
        self.setSizePolicy(
            QtWidgets.QSizePolicy(
                QtWidgets.QSizePolicy.Expanding,
                QtWidgets.QSizePolicy.Minimum
            )
        )
        if custom_text:
            self.setText(custom_text)
        size_policy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Minimum, QtWidgets.QSizePolicy.Maximum)
        size_policy.setHorizontalStretch(0)
        size_policy.setVerticalStretch(0)
        size_policy.setHeightForWidth(self.sizePolicy().hasHeightForWidth())
        self.setSizePolicy(size_policy)
        self.setMinimumSize(QtCore.QSize(16777215, 25))
        
        if aligment == "rigth":
            self.setAlignment(QtCore.Qt.AlignRight|QtCore.Qt.AlignTrailing|QtCore.Qt.AlignVCenter)


        if style_sheet:
            sshFile = "C:/Many-Worlds/pipeline/shotgun/pipeline_configuration/hooks/tk-multi-launchapp/maya/modules/many_worlds/scripts/_Libraries/QT/StyleSheets/generic_Stylesheet.qss"
            with open(sshFile,"r") as fh:
                self.setStyleSheet(fh.read())

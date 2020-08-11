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

from _Collections import mw_pyside_utils


class MWClickableLabel(QtWidgets.QLabel):
    def __init__(self,
        custom_text=None,
        aligment=None,
        function=None,
        icon_path=None
        
    ):
        super(MWClickableLabel, self).__init__()
        self.setSizePolicy(
            QtWidgets.QSizePolicy(
                QtWidgets.QSizePolicy.Expanding,
                QtWidgets.QSizePolicy.Minimum
            )
        )

        #self.main_layout = QtWidgets.QVBoxLayout(self)

        if aligment == "rigth":
            self.setAlignment(QtCore.Qt.AlignRight|QtCore.Qt.AlignTrailing|QtCore.Qt.AlignVCenter)


        if icon_path:
            icon_path = icon_path
            image_path = icon_path
            image_object = QtGui.QImage(image_path).scaled(
                32, 32,
                QtCore.Qt.IgnoreAspectRatio, QtCore.Qt.SmoothTransformation
            )

            pixmap = QtGui.QPixmap()
            pixmap.convertFromImage(image_object)

            self.setPixmap(pixmap)
            #self.main_layout.addWidget(self.main_label)

        if function:
            mw_pyside_utils.MWWidgetsFunctions._clickable(self).connect(function)

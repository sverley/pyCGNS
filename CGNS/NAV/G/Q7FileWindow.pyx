# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file 'CGNS/NAV/T/Q7FileWindow.ui'
#
# Created: Thu Jun 30 10:51:29 2016
#      by: PyQt4 UI code generator 4.11.1
#
# WARNING! All changes made in this file will be lost!

from PyQt4 import QtCore, QtGui

try:
    _fromUtf8 = QtCore.QString.fromUtf8
except AttributeError:
    def _fromUtf8(s):
        return s

try:
    _encoding = QtGui.QApplication.UnicodeUTF8
    def _translate(context, text, disambig):
        return QtGui.QApplication.translate(context, text, disambig, _encoding)
except AttributeError:
    def _translate(context, text, disambig):
        return QtGui.QApplication.translate(context, text, disambig)

class Ui_Q7FileWindow(object):
    def setupUi(self, Q7FileWindow):
        Q7FileWindow.setObjectName(_fromUtf8("Q7FileWindow"))
        Q7FileWindow.setWindowModality(QtCore.Qt.ApplicationModal)
        Q7FileWindow.resize(720, 420)
        sizePolicy = QtGui.QSizePolicy(QtGui.QSizePolicy.Fixed, QtGui.QSizePolicy.Fixed)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(Q7FileWindow.sizePolicy().hasHeightForWidth())
        Q7FileWindow.setSizePolicy(sizePolicy)
        Q7FileWindow.setMinimumSize(QtCore.QSize(720, 400))
        Q7FileWindow.setMaximumSize(QtCore.QSize(726, 420))
        icon = QtGui.QIcon()
        icon.addPixmap(QtGui.QPixmap(_fromUtf8(":/images/icons/cgSpy.png")), QtGui.QIcon.Normal, QtGui.QIcon.Off)
        Q7FileWindow.setWindowIcon(icon)
        self.verticalLayout = QtGui.QVBoxLayout(Q7FileWindow)
        self.verticalLayout.setObjectName(_fromUtf8("verticalLayout"))
        self.horizontalLayout = QtGui.QHBoxLayout()
        self.horizontalLayout.setObjectName(_fromUtf8("horizontalLayout"))
        spacerItem = QtGui.QSpacerItem(40, 20, QtGui.QSizePolicy.Expanding, QtGui.QSizePolicy.Minimum)
        self.horizontalLayout.addItem(spacerItem)
        self.tabs = QtGui.QTabWidget(Q7FileWindow)
        self.tabs.setEnabled(True)
        sizePolicy = QtGui.QSizePolicy(QtGui.QSizePolicy.Fixed, QtGui.QSizePolicy.Fixed)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.tabs.sizePolicy().hasHeightForWidth())
        self.tabs.setSizePolicy(sizePolicy)
        self.tabs.setMinimumSize(QtCore.QSize(700, 200))
        self.tabs.setMaximumSize(QtCore.QSize(700, 420))
        self.tabs.setObjectName(_fromUtf8("tabs"))
        self.Selection = QtGui.QWidget()
        sizePolicy = QtGui.QSizePolicy(QtGui.QSizePolicy.Fixed, QtGui.QSizePolicy.Fixed)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.Selection.sizePolicy().hasHeightForWidth())
        self.Selection.setSizePolicy(sizePolicy)
        self.Selection.setMinimumSize(QtCore.QSize(720, 400))
        self.Selection.setMaximumSize(QtCore.QSize(720, 400))
        self.Selection.setObjectName(_fromUtf8("Selection"))
        self.treeview = QtGui.QTreeView(self.Selection)
        self.treeview.setGeometry(QtCore.QRect(10, 100, 680, 230))
        sizePolicy = QtGui.QSizePolicy(QtGui.QSizePolicy.Preferred, QtGui.QSizePolicy.Preferred)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.treeview.sizePolicy().hasHeightForWidth())
        self.treeview.setSizePolicy(sizePolicy)
        self.treeview.setMinimumSize(QtCore.QSize(680, 230))
        self.treeview.setMaximumSize(QtCore.QSize(680, 230))
        self.treeview.setEditTriggers(QtGui.QAbstractItemView.EditKeyPressed|QtGui.QAbstractItemView.SelectedClicked)
        self.treeview.setSelectionBehavior(QtGui.QAbstractItemView.SelectRows)
        self.treeview.setUniformRowHeights(True)
        self.treeview.setSortingEnabled(True)
        self.treeview.setAllColumnsShowFocus(True)
        self.treeview.setObjectName(_fromUtf8("treeview"))
        self.bClose = QtGui.QPushButton(self.Selection)
        self.bClose.setGeometry(QtCore.QRect(610, 340, 75, 26))
        self.bClose.setObjectName(_fromUtf8("bClose"))
        self.bInfo = QtGui.QPushButton(self.Selection)
        self.bInfo.setGeometry(QtCore.QRect(10, 340, 25, 25))
        self.bInfo.setMinimumSize(QtCore.QSize(25, 25))
        self.bInfo.setMaximumSize(QtCore.QSize(25, 25))
        self.bInfo.setText(_fromUtf8(""))
        icon1 = QtGui.QIcon()
        icon1.addPixmap(QtGui.QPixmap(_fromUtf8(":/images/icons/help-view.png")), QtGui.QIcon.Normal, QtGui.QIcon.Off)
        self.bInfo.setIcon(icon1)
        self.bInfo.setObjectName(_fromUtf8("bInfo"))
        self.gridLayoutWidget = QtGui.QWidget(self.Selection)
        self.gridLayoutWidget.setGeometry(QtCore.QRect(10, 10, 681, 81))
        self.gridLayoutWidget.setObjectName(_fromUtf8("gridLayoutWidget"))
        self.gridLayout = QtGui.QGridLayout(self.gridLayoutWidget)
        self.gridLayout.setSpacing(3)
        self.gridLayout.setMargin(0)
        self.gridLayout.setObjectName(_fromUtf8("gridLayout"))
        self.fileentries = QtGui.QComboBox(self.gridLayoutWidget)
        sizePolicy = QtGui.QSizePolicy(QtGui.QSizePolicy.Expanding, QtGui.QSizePolicy.Expanding)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.fileentries.sizePolicy().hasHeightForWidth())
        self.fileentries.setSizePolicy(sizePolicy)
        self.fileentries.setEditable(True)
        self.fileentries.setObjectName(_fromUtf8("fileentries"))
        self.gridLayout.addWidget(self.fileentries, 5, 2, 1, 2)
        self.horizontalLayout_4 = QtGui.QHBoxLayout()
        self.horizontalLayout_4.setObjectName(_fromUtf8("horizontalLayout_4"))
        self.cNoLargeData = QtGui.QCheckBox(self.gridLayoutWidget)
        font = QtGui.QFont()
        font.setBold(False)
        font.setWeight(50)
        self.cNoLargeData.setFont(font)
        self.cNoLargeData.setObjectName(_fromUtf8("cNoLargeData"))
        self.horizontalLayout_4.addWidget(self.cNoLargeData)
        spacerItem1 = QtGui.QSpacerItem(40, 20, QtGui.QSizePolicy.Expanding, QtGui.QSizePolicy.Minimum)
        self.horizontalLayout_4.addItem(spacerItem1)
        self.gridLayout.addLayout(self.horizontalLayout_4, 1, 2, 1, 3)
        self.direntries = QtGui.QComboBox(self.gridLayoutWidget)
        sizePolicy = QtGui.QSizePolicy(QtGui.QSizePolicy.Expanding, QtGui.QSizePolicy.Expanding)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.direntries.sizePolicy().hasHeightForWidth())
        self.direntries.setSizePolicy(sizePolicy)
        self.direntries.setEditable(True)
        self.direntries.setObjectName(_fromUtf8("direntries"))
        self.gridLayout.addWidget(self.direntries, 3, 2, 1, 3)
        self.cShowDirs = QtGui.QCheckBox(self.gridLayoutWidget)
        self.cShowDirs.setLayoutDirection(QtCore.Qt.LeftToRight)
        self.cShowDirs.setChecked(True)
        self.cShowDirs.setObjectName(_fromUtf8("cShowDirs"))
        self.gridLayout.addWidget(self.cShowDirs, 5, 4, 1, 1)
        self.bCurrent = QtGui.QPushButton(self.gridLayoutWidget)
        self.bCurrent.setMinimumSize(QtCore.QSize(25, 25))
        self.bCurrent.setMaximumSize(QtCore.QSize(25, 25))
        self.bCurrent.setLayoutDirection(QtCore.Qt.LeftToRight)
        self.bCurrent.setText(_fromUtf8(""))
        icon2 = QtGui.QIcon()
        icon2.addPixmap(QtGui.QPixmap(_fromUtf8(":/images/icons/local-dir.png")), QtGui.QIcon.Normal, QtGui.QIcon.Off)
        self.bCurrent.setIcon(icon2)
        self.bCurrent.setObjectName(_fromUtf8("bCurrent"))
        self.gridLayout.addWidget(self.bCurrent, 3, 1, 1, 1)
        self.bBack = QtGui.QPushButton(self.gridLayoutWidget)
        self.bBack.setMinimumSize(QtCore.QSize(25, 25))
        self.bBack.setMaximumSize(QtCore.QSize(25, 25))
        font = QtGui.QFont()
        font.setPointSize(14)
        font.setBold(True)
        font.setWeight(75)
        self.bBack.setFont(font)
        self.bBack.setText(_fromUtf8(""))
        icon3 = QtGui.QIcon()
        icon3.addPixmap(QtGui.QPixmap(_fromUtf8(":/images/icons/parent-dir.png")), QtGui.QIcon.Normal, QtGui.QIcon.Off)
        self.bBack.setIcon(icon3)
        self.bBack.setIconSize(QtCore.QSize(16, 16))
        self.bBack.setObjectName(_fromUtf8("bBack"))
        self.gridLayout.addWidget(self.bBack, 3, 0, 1, 1)
        self.bAction = QtGui.QPushButton(self.Selection)
        self.bAction.setGeometry(QtCore.QRect(530, 340, 70, 26))
        sizePolicy = QtGui.QSizePolicy(QtGui.QSizePolicy.Fixed, QtGui.QSizePolicy.Fixed)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.bAction.sizePolicy().hasHeightForWidth())
        self.bAction.setSizePolicy(sizePolicy)
        self.bAction.setMaximumSize(QtCore.QSize(70, 16777215))
        font = QtGui.QFont()
        font.setBold(False)
        font.setWeight(50)
        self.bAction.setFont(font)
        self.bAction.setObjectName(_fromUtf8("bAction"))
        self.tabs.addTab(self.Selection, _fromUtf8(""))
        self.tab = QtGui.QWidget()
        self.tab.setObjectName(_fromUtf8("tab"))
        self.groupBox_3 = QtGui.QGroupBox(self.tab)
        self.groupBox_3.setGeometry(QtCore.QRect(10, 10, 331, 241))
        self.groupBox_3.setObjectName(_fromUtf8("groupBox_3"))
        self.cNoLargeData_2 = QtGui.QCheckBox(self.groupBox_3)
        self.cNoLargeData_2.setGeometry(QtCore.QRect(20, 20, 161, 20))
        font = QtGui.QFont()
        font.setBold(False)
        font.setWeight(50)
        self.cNoLargeData_2.setFont(font)
        self.cNoLargeData_2.setObjectName(_fromUtf8("cNoLargeData_2"))
        self.cFollowLinks = QtGui.QCheckBox(self.groupBox_3)
        self.cFollowLinks.setGeometry(QtCore.QRect(20, 40, 88, 20))
        self.cFollowLinks.setObjectName(_fromUtf8("cFollowLinks"))
        self.cReadOnly = QtGui.QCheckBox(self.groupBox_3)
        self.cReadOnly.setEnabled(True)
        self.cReadOnly.setGeometry(QtCore.QRect(20, 60, 127, 20))
        self.cReadOnly.setObjectName(_fromUtf8("cReadOnly"))
        self.cLoadSubPath = QtGui.QCheckBox(self.groupBox_3)
        self.cLoadSubPath.setGeometry(QtCore.QRect(20, 90, 151, 20))
        self.cLoadSubPath.setObjectName(_fromUtf8("cLoadSubPath"))
        self.lineEdit = QtGui.QLineEdit(self.groupBox_3)
        self.lineEdit.setGeometry(QtCore.QRect(20, 110, 301, 21))
        self.lineEdit.setObjectName(_fromUtf8("lineEdit"))
        self.cLimitDepth = QtGui.QCheckBox(self.groupBox_3)
        self.cLimitDepth.setGeometry(QtCore.QRect(20, 150, 101, 20))
        self.cLimitDepth.setObjectName(_fromUtf8("cLimitDepth"))
        self.spinBox = QtGui.QSpinBox(self.groupBox_3)
        self.spinBox.setGeometry(QtCore.QRect(140, 150, 53, 22))
        self.spinBox.setObjectName(_fromUtf8("spinBox"))
        self.groupBox_4 = QtGui.QGroupBox(self.tab)
        self.groupBox_4.setGeometry(QtCore.QRect(350, 10, 341, 241))
        self.groupBox_4.setObjectName(_fromUtf8("groupBox_4"))
        self.cOverwrite = QtGui.QCheckBox(self.groupBox_4)
        self.cOverwrite.setGeometry(QtCore.QRect(10, 30, 77, 20))
        font = QtGui.QFont()
        font.setBold(False)
        font.setWeight(50)
        self.cOverwrite.setFont(font)
        self.cOverwrite.setObjectName(_fromUtf8("cOverwrite"))
        self.cDeleteMissing = QtGui.QCheckBox(self.groupBox_4)
        self.cDeleteMissing.setGeometry(QtCore.QRect(10, 50, 107, 20))
        self.cDeleteMissing.setObjectName(_fromUtf8("cDeleteMissing"))
        self.cSkipEmpty = QtGui.QCheckBox(self.groupBox_4)
        self.cSkipEmpty.setGeometry(QtCore.QRect(10, 70, 85, 20))
        self.cSkipEmpty.setObjectName(_fromUtf8("cSkipEmpty"))
        self.cSaveWithoutLinks = QtGui.QCheckBox(self.groupBox_4)
        self.cSaveWithoutLinks.setGeometry(QtCore.QRect(10, 110, 151, 20))
        self.cSaveWithoutLinks.setObjectName(_fromUtf8("cSaveWithoutLinks"))
        self.groupBox_5 = QtGui.QGroupBox(self.tab)
        self.groupBox_5.setGeometry(QtCore.QRect(10, 260, 681, 101))
        self.groupBox_5.setObjectName(_fromUtf8("groupBox_5"))
        self.checkBox = QtGui.QCheckBox(self.groupBox_5)
        self.checkBox.setGeometry(QtCore.QRect(10, 20, 83, 20))
        self.checkBox.setObjectName(_fromUtf8("checkBox"))
        self.checkBox_2 = QtGui.QCheckBox(self.groupBox_5)
        self.checkBox_2.setGeometry(QtCore.QRect(10, 40, 171, 20))
        self.checkBox_2.setObjectName(_fromUtf8("checkBox_2"))
        self.checkBox_3 = QtGui.QCheckBox(self.groupBox_5)
        self.checkBox_3.setGeometry(QtCore.QRect(10, 60, 151, 20))
        self.checkBox_3.setObjectName(_fromUtf8("checkBox_3"))
        self.lineEdit_2 = QtGui.QLineEdit(self.groupBox_5)
        self.lineEdit_2.setGeometry(QtCore.QRect(120, 60, 211, 21))
        self.lineEdit_2.setObjectName(_fromUtf8("lineEdit_2"))
        self.line = QtGui.QFrame(self.groupBox_5)
        self.line.setGeometry(QtCore.QRect(313, 20, 41, 71))
        self.line.setFrameShape(QtGui.QFrame.VLine)
        self.line.setFrameShadow(QtGui.QFrame.Sunken)
        self.line.setObjectName(_fromUtf8("line"))
        self.tabs.addTab(self.tab, _fromUtf8(""))
        self.tab_2 = QtGui.QWidget()
        self.tab_2.setEnabled(True)
        sizePolicy = QtGui.QSizePolicy(QtGui.QSizePolicy.Fixed, QtGui.QSizePolicy.Fixed)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.tab_2.sizePolicy().hasHeightForWidth())
        self.tab_2.setSizePolicy(sizePolicy)
        self.tab_2.setMinimumSize(QtCore.QSize(720, 350))
        self.tab_2.setMaximumSize(QtCore.QSize(720, 350))
        self.tab_2.setObjectName(_fromUtf8("tab_2"))
        self.groupBox = QtGui.QGroupBox(self.tab_2)
        self.groupBox.setGeometry(QtCore.QRect(191, 55, 492, 291))
        self.groupBox.setObjectName(_fromUtf8("groupBox"))
        self.rClearAllDirs = QtGui.QRadioButton(self.groupBox)
        self.rClearAllDirs.setGeometry(QtCore.QRect(10, 100, 228, 20))
        self.rClearAllDirs.setObjectName(_fromUtf8("rClearAllDirs"))
        self.rClearNoHDF = QtGui.QRadioButton(self.groupBox)
        self.rClearNoHDF.setGeometry(QtCore.QRect(10, 40, 302, 20))
        self.rClearNoHDF.setObjectName(_fromUtf8("rClearNoHDF"))
        self.rClearNotFound = QtGui.QRadioButton(self.groupBox)
        self.rClearNotFound.setGeometry(QtCore.QRect(10, 20, 210, 20))
        self.rClearNotFound.setChecked(True)
        self.rClearNotFound.setObjectName(_fromUtf8("rClearNotFound"))
        self.rClearSelectedDirs = QtGui.QRadioButton(self.groupBox)
        self.rClearSelectedDirs.setGeometry(QtCore.QRect(10, 60, 176, 20))
        self.rClearSelectedDirs.setObjectName(_fromUtf8("rClearSelectedDirs"))
        self.rClearSelectedFiles = QtGui.QRadioButton(self.groupBox)
        self.rClearSelectedFiles.setGeometry(QtCore.QRect(10, 80, 160, 20))
        self.rClearSelectedFiles.setObjectName(_fromUtf8("rClearSelectedFiles"))
        self.lClear = QtGui.QListWidget(self.groupBox)
        self.lClear.setGeometry(QtCore.QRect(9, 120, 475, 161))
        self.lClear.setSelectionMode(QtGui.QAbstractItemView.MultiSelection)
        self.lClear.setObjectName(_fromUtf8("lClear"))
        self.bClearHistory = QtGui.QPushButton(self.groupBox)
        self.bClearHistory.setGeometry(QtCore.QRect(410, 20, 75, 25))
        self.bClearHistory.setObjectName(_fromUtf8("bClearHistory"))
        self.bInfo2 = QtGui.QPushButton(self.groupBox)
        self.bInfo2.setGeometry(QtCore.QRect(380, 20, 25, 25))
        self.bInfo2.setMinimumSize(QtCore.QSize(25, 25))
        self.bInfo2.setMaximumSize(QtCore.QSize(25, 25))
        self.bInfo2.setText(_fromUtf8(""))
        self.bInfo2.setIcon(icon1)
        self.bInfo2.setObjectName(_fromUtf8("bInfo2"))
        self.cActivate = QtGui.QCheckBox(self.tab_2)
        self.cActivate.setEnabled(False)
        self.cActivate.setGeometry(QtCore.QRect(190, 30, 173, 20))
        self.cActivate.setChecked(True)
        self.cActivate.setObjectName(_fromUtf8("cActivate"))
        self.groupBox_2 = QtGui.QGroupBox(self.tab_2)
        self.groupBox_2.setGeometry(QtCore.QRect(6, 53, 173, 291))
        self.groupBox_2.setObjectName(_fromUtf8("groupBox_2"))
        self.cShowAll = QtGui.QCheckBox(self.groupBox_2)
        self.cShowAll.setGeometry(QtCore.QRect(10, 17, 702, 20))
        self.cShowAll.setObjectName(_fromUtf8("cShowAll"))
        self.__O_filterhdffiles = QtGui.QCheckBox(self.groupBox_2)
        self.__O_filterhdffiles.setGeometry(QtCore.QRect(10, 39, 80, 20))
        self.__O_filterhdffiles.setChecked(True)
        self.__O_filterhdffiles.setObjectName(_fromUtf8("__O_filterhdffiles"))
        self.__O_filtercgnsfiles = QtGui.QCheckBox(self.groupBox_2)
        self.__O_filtercgnsfiles.setGeometry(QtCore.QRect(10, 60, 141, 20))
        self.__O_filtercgnsfiles.setChecked(True)
        self.__O_filtercgnsfiles.setObjectName(_fromUtf8("__O_filtercgnsfiles"))
        self.cShowOwnExt = QtGui.QCheckBox(self.groupBox_2)
        self.cShowOwnExt.setGeometry(QtCore.QRect(10, 100, 111, 20))
        self.cShowOwnExt.setObjectName(_fromUtf8("cShowOwnExt"))
        self.lOwnExt = QtGui.QListWidget(self.groupBox_2)
        self.lOwnExt.setGeometry(QtCore.QRect(9, 120, 154, 161))
        self.lOwnExt.setObjectName(_fromUtf8("lOwnExt"))
        self.cAutoDir = QtGui.QCheckBox(self.tab_2)
        self.cAutoDir.setGeometry(QtCore.QRect(10, 30, 164, 20))
        self.cAutoDir.setObjectName(_fromUtf8("cAutoDir"))
        self.tabs.addTab(self.tab_2, _fromUtf8(""))
        self.horizontalLayout.addWidget(self.tabs)
        self.verticalLayout.addLayout(self.horizontalLayout)

        self.retranslateUi(Q7FileWindow)
        self.tabs.setCurrentIndex(0)
        QtCore.QMetaObject.connectSlotsByName(Q7FileWindow)

    def retranslateUi(self, Q7FileWindow):
        Q7FileWindow.setWindowTitle(_translate("Q7FileWindow", "Form", None))
        self.bClose.setText(_translate("Q7FileWindow", "Cancel", None))
        self.cNoLargeData.setToolTip(_translate("Q7FileWindow", "Nodes with large data are read but their data is not", None))
        self.cNoLargeData.setText(_translate("Q7FileWindow", "Do not load large data", None))
        self.cShowDirs.setText(_translate("Q7FileWindow", "Show directories", None))
        self.bCurrent.setToolTip(_translate("Q7FileWindow", "Go to launch directory", None))
        self.bBack.setToolTip(_translate("Q7FileWindow", "Go back to parent directory", None))
        self.bAction.setText(_translate("Q7FileWindow", "LOAD", None))
        self.tabs.setTabText(self.tabs.indexOf(self.Selection), _translate("Q7FileWindow", "Selection", None))
        self.groupBox_3.setTitle(_translate("Q7FileWindow", "Load", None))
        self.cNoLargeData_2.setToolTip(_translate("Q7FileWindow", "Nodes with large data are read but their data is not", None))
        self.cNoLargeData_2.setText(_translate("Q7FileWindow", "Do not load large data", None))
        self.cFollowLinks.setText(_translate("Q7FileWindow", "Follow links", None))
        self.cReadOnly.setText(_translate("Q7FileWindow", "Open as read-only", None))
        self.cLoadSubPath.setText(_translate("Q7FileWindow", "Load sub-tree with path:", None))
        self.cLimitDepth.setText(_translate("Q7FileWindow", "Limit depth to:", None))
        self.groupBox_4.setTitle(_translate("Q7FileWindow", "Save", None))
        self.cOverwrite.setToolTip(_translate("Q7FileWindow", "Overwrite an existing file with new contents", None))
        self.cOverwrite.setText(_translate("Q7FileWindow", "Overwrite", None))
        self.cDeleteMissing.setToolTip(_translate("Q7FileWindow", "Children found in existing file but not in current tree are removed", None))
        self.cDeleteMissing.setText(_translate("Q7FileWindow", "Delete missing", None))
        self.cSkipEmpty.setText(_translate("Q7FileWindow", "Skip empty", None))
        self.cSaveWithoutLinks.setText(_translate("Q7FileWindow", "Do not save with links", None))
        self.groupBox_5.setTitle(_translate("Q7FileWindow", "CHLone options (both load and save)", None))
        self.checkBox.setText(_translate("Q7FileWindow", "Trace", None))
        self.checkBox_2.setText(_translate("Q7FileWindow", "Debug (quite large output)", None))
        self.checkBox_3.setText(_translate("Q7FileWindow", "Send output to:", None))
        self.tabs.setTabText(self.tabs.indexOf(self.tab), _translate("Q7FileWindow", "Load/Save options", None))
        self.groupBox.setTitle(_translate("Q7FileWindow", "Clear history", None))
        self.rClearAllDirs.setText(_translate("Q7FileWindow", "All directory and file entries", None))
        self.rClearNoHDF.setText(_translate("Q7FileWindow", "Directory entries without correct file extension", None))
        self.rClearNotFound.setText(_translate("Q7FileWindow", "Not found directory and file entries", None))
        self.rClearSelectedDirs.setText(_translate("Q7FileWindow", "Selected directory entries", None))
        self.rClearSelectedFiles.setText(_translate("Q7FileWindow", "Selected file entries", None))
        self.bClearHistory.setText(_translate("Q7FileWindow", "Clear", None))
        self.cActivate.setText(_translate("Q7FileWindow", "Activate directory/file history", None))
        self.groupBox_2.setTitle(_translate("Q7FileWindow", "Show", None))
        self.cShowAll.setText(_translate("Q7FileWindow", "All file extensions", None))
        self.__O_filterhdffiles.setText(_translate("Q7FileWindow", ".hdf files", None))
        self.__O_filtercgnsfiles.setText(_translate("Q7FileWindow", ".cgns/.adf files", None))
        self.cShowOwnExt.setText(_translate("Q7FileWindow", "own extension:", None))
        self.cAutoDir.setText(_translate("Q7FileWindow", "Auto-Change directory", None))
        self.tabs.setTabText(self.tabs.indexOf(self.tab_2), _translate("Q7FileWindow", "History/Filter", None))

import Res_rc

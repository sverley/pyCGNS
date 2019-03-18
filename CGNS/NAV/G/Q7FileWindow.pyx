# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file 'CGNS/NAV/T/Q7FileWindow.ui'
#
# Created by: PyQt5 UI code generator 5.12
#
# WARNING! All changes made in this file will be lost!

from PyQt5 import QtCore, QtGui, QtWidgets


class Ui_Q7FileWindow(object):
    def setupUi(self, Q7FileWindow):
        Q7FileWindow.setObjectName("Q7FileWindow")
        Q7FileWindow.setWindowModality(QtCore.Qt.ApplicationModal)
        Q7FileWindow.resize(728, 450)
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.MinimumExpanding, QtWidgets.QSizePolicy.MinimumExpanding)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(Q7FileWindow.sizePolicy().hasHeightForWidth())
        Q7FileWindow.setSizePolicy(sizePolicy)
        Q7FileWindow.setMinimumSize(QtCore.QSize(728, 450))
        Q7FileWindow.setMaximumSize(QtCore.QSize(800, 600))
        icon = QtGui.QIcon()
        icon.addPixmap(QtGui.QPixmap(":/images/icons/cgSpy.png"), QtGui.QIcon.Normal, QtGui.QIcon.Off)
        Q7FileWindow.setWindowIcon(icon)
        self.verticalLayout = QtWidgets.QVBoxLayout(Q7FileWindow)
        self.verticalLayout.setContentsMargins(4, 0, 4, 0)
        self.verticalLayout.setSpacing(0)
        self.verticalLayout.setObjectName("verticalLayout")
        self.horizontalLayout = QtWidgets.QHBoxLayout()
        self.horizontalLayout.setContentsMargins(-1, -1, 0, 0)
        self.horizontalLayout.setSpacing(0)
        self.horizontalLayout.setObjectName("horizontalLayout")
        self.tabs = QtWidgets.QTabWidget(Q7FileWindow)
        self.tabs.setEnabled(True)
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Preferred, QtWidgets.QSizePolicy.Preferred)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.tabs.sizePolicy().hasHeightForWidth())
        self.tabs.setSizePolicy(sizePolicy)
        self.tabs.setMinimumSize(QtCore.QSize(0, 0))
        self.tabs.setMaximumSize(QtCore.QSize(800, 440))
        self.tabs.setObjectName("tabs")
        self.Selection = QtWidgets.QWidget()
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Preferred, QtWidgets.QSizePolicy.Preferred)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.Selection.sizePolicy().hasHeightForWidth())
        self.Selection.setSizePolicy(sizePolicy)
        self.Selection.setMinimumSize(QtCore.QSize(0, 0))
        self.Selection.setMaximumSize(QtCore.QSize(700, 400))
        self.Selection.setObjectName("Selection")
        self.selectionVL = QtWidgets.QVBoxLayout(self.Selection)
        self.selectionVL.setContentsMargins(8, 8, 8, 8)
        self.selectionVL.setSpacing(6)
        self.selectionVL.setObjectName("selectionVL")
        self.gridLayout = QtWidgets.QGridLayout()
        self.gridLayout.setSpacing(3)
        self.gridLayout.setObjectName("gridLayout")
        self.fileentries = QtWidgets.QComboBox(self.Selection)
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Fixed)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.fileentries.sizePolicy().hasHeightForWidth())
        self.fileentries.setSizePolicy(sizePolicy)
        self.fileentries.setEditable(True)
        self.fileentries.setObjectName("fileentries")
        self.gridLayout.addWidget(self.fileentries, 5, 2, 1, 2)
        self.horizontalLayout_4 = QtWidgets.QHBoxLayout()
        self.horizontalLayout_4.setObjectName("horizontalLayout_4")
        self.cNoLargeData = QtWidgets.QCheckBox(self.Selection)
        font = QtGui.QFont()
        font.setBold(False)
        font.setWeight(50)
        self.cNoLargeData.setFont(font)
        self.cNoLargeData.setObjectName("cNoLargeData")
        self.horizontalLayout_4.addWidget(self.cNoLargeData)
        spacerItem = QtWidgets.QSpacerItem(40, 20, QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Minimum)
        self.horizontalLayout_4.addItem(spacerItem)
        self.gridLayout.addLayout(self.horizontalLayout_4, 1, 2, 1, 3)
        self.direntries = QtWidgets.QComboBox(self.Selection)
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Fixed)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.direntries.sizePolicy().hasHeightForWidth())
        self.direntries.setSizePolicy(sizePolicy)
        self.direntries.setEditable(True)
        self.direntries.setObjectName("direntries")
        self.gridLayout.addWidget(self.direntries, 3, 2, 1, 3)
        self.cShowDirs = QtWidgets.QCheckBox(self.Selection)
        self.cShowDirs.setLayoutDirection(QtCore.Qt.LeftToRight)
        self.cShowDirs.setChecked(True)
        self.cShowDirs.setObjectName("cShowDirs")
        self.gridLayout.addWidget(self.cShowDirs, 5, 4, 1, 1)
        self.bCurrent = QtWidgets.QPushButton(self.Selection)
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Fixed, QtWidgets.QSizePolicy.Fixed)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.bCurrent.sizePolicy().hasHeightForWidth())
        self.bCurrent.setSizePolicy(sizePolicy)
        self.bCurrent.setMinimumSize(QtCore.QSize(25, 25))
        self.bCurrent.setMaximumSize(QtCore.QSize(25, 25))
        self.bCurrent.setLayoutDirection(QtCore.Qt.LeftToRight)
        self.bCurrent.setText("")
        icon1 = QtGui.QIcon()
        icon1.addPixmap(QtGui.QPixmap(":/images/icons/local-dir.png"), QtGui.QIcon.Normal, QtGui.QIcon.Off)
        self.bCurrent.setIcon(icon1)
        self.bCurrent.setObjectName("bCurrent")
        self.gridLayout.addWidget(self.bCurrent, 3, 1, 1, 1)
        self.bBack = QtWidgets.QPushButton(self.Selection)
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Fixed, QtWidgets.QSizePolicy.Fixed)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.bBack.sizePolicy().hasHeightForWidth())
        self.bBack.setSizePolicy(sizePolicy)
        self.bBack.setMinimumSize(QtCore.QSize(25, 25))
        self.bBack.setMaximumSize(QtCore.QSize(25, 25))
        font = QtGui.QFont()
        font.setPointSize(14)
        font.setBold(True)
        font.setWeight(75)
        self.bBack.setFont(font)
        self.bBack.setText("")
        icon2 = QtGui.QIcon()
        icon2.addPixmap(QtGui.QPixmap(":/images/icons/parent-dir.png"), QtGui.QIcon.Normal, QtGui.QIcon.Off)
        self.bBack.setIcon(icon2)
        self.bBack.setIconSize(QtCore.QSize(16, 16))
        self.bBack.setObjectName("bBack")
        self.gridLayout.addWidget(self.bBack, 3, 0, 1, 1)
        self.selectionVL.addLayout(self.gridLayout)
        self.treeview = QtWidgets.QTreeView(self.Selection)
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.MinimumExpanding, QtWidgets.QSizePolicy.Expanding)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.treeview.sizePolicy().hasHeightForWidth())
        self.treeview.setSizePolicy(sizePolicy)
        self.treeview.setMinimumSize(QtCore.QSize(650, 235))
        self.treeview.setMaximumSize(QtCore.QSize(720, 450))
        self.treeview.setEditTriggers(QtWidgets.QAbstractItemView.EditKeyPressed|QtWidgets.QAbstractItemView.SelectedClicked)
        self.treeview.setSelectionBehavior(QtWidgets.QAbstractItemView.SelectRows)
        self.treeview.setUniformRowHeights(True)
        self.treeview.setSortingEnabled(True)
        self.treeview.setAllColumnsShowFocus(True)
        self.treeview.setObjectName("treeview")
        self.selectionVL.addWidget(self.treeview)
        self.bottomAction = QtWidgets.QHBoxLayout()
        self.bottomAction.setSizeConstraint(QtWidgets.QLayout.SetFixedSize)
        self.bottomAction.setContentsMargins(-1, -1, 0, -1)
        self.bottomAction.setSpacing(6)
        self.bottomAction.setObjectName("bottomAction")
        self.bInfo = QtWidgets.QPushButton(self.Selection)
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Fixed, QtWidgets.QSizePolicy.Fixed)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.bInfo.sizePolicy().hasHeightForWidth())
        self.bInfo.setSizePolicy(sizePolicy)
        self.bInfo.setMinimumSize(QtCore.QSize(25, 25))
        self.bInfo.setMaximumSize(QtCore.QSize(25, 25))
        self.bInfo.setText("")
        icon3 = QtGui.QIcon()
        icon3.addPixmap(QtGui.QPixmap(":/images/icons/help-view.png"), QtGui.QIcon.Normal, QtGui.QIcon.Off)
        self.bInfo.setIcon(icon3)
        self.bInfo.setObjectName("bInfo")
        self.bottomAction.addWidget(self.bInfo)
        spacerItem1 = QtWidgets.QSpacerItem(40, 10, QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Minimum)
        self.bottomAction.addItem(spacerItem1)
        self.bAction = QtWidgets.QPushButton(self.Selection)
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Fixed, QtWidgets.QSizePolicy.Fixed)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.bAction.sizePolicy().hasHeightForWidth())
        self.bAction.setSizePolicy(sizePolicy)
        self.bAction.setMaximumSize(QtCore.QSize(70, 16777215))
        font = QtGui.QFont()
        font.setBold(False)
        font.setWeight(50)
        self.bAction.setFont(font)
        self.bAction.setObjectName("bAction")
        self.bottomAction.addWidget(self.bAction)
        self.bClose = QtWidgets.QPushButton(self.Selection)
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Fixed, QtWidgets.QSizePolicy.Fixed)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.bClose.sizePolicy().hasHeightForWidth())
        self.bClose.setSizePolicy(sizePolicy)
        self.bClose.setMinimumSize(QtCore.QSize(0, 0))
        self.bClose.setMaximumSize(QtCore.QSize(70, 16777215))
        self.bClose.setObjectName("bClose")
        self.bottomAction.addWidget(self.bClose)
        self.selectionVL.addLayout(self.bottomAction)
        self.tabs.addTab(self.Selection, "")
        self.tab = QtWidgets.QWidget()
        self.tab.setObjectName("tab")
        self.load_save_Lay = QtWidgets.QGridLayout(self.tab)
        self.load_save_Lay.setContentsMargins(8, 8, 8, 8)
        self.load_save_Lay.setSpacing(2)
        self.load_save_Lay.setObjectName("load_save_Lay")
        self.groupBox_4 = QtWidgets.QGroupBox(self.tab)
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Preferred, QtWidgets.QSizePolicy.Preferred)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.groupBox_4.sizePolicy().hasHeightForWidth())
        self.groupBox_4.setSizePolicy(sizePolicy)
        self.groupBox_4.setMaximumSize(QtCore.QSize(16777215, 16777215))
        self.groupBox_4.setObjectName("groupBox_4")
        self.saveVL = QtWidgets.QVBoxLayout(self.groupBox_4)
        self.saveVL.setContentsMargins(8, 8, 8, 8)
        self.saveVL.setSpacing(2)
        self.saveVL.setObjectName("saveVL")
        self.cOverwrite = QtWidgets.QCheckBox(self.groupBox_4)
        font = QtGui.QFont()
        font.setBold(False)
        font.setWeight(50)
        self.cOverwrite.setFont(font)
        self.cOverwrite.setObjectName("cOverwrite")
        self.saveVL.addWidget(self.cOverwrite)
        self.cDeleteMissing = QtWidgets.QCheckBox(self.groupBox_4)
        self.cDeleteMissing.setObjectName("cDeleteMissing")
        self.saveVL.addWidget(self.cDeleteMissing)
        self.cSkipEmpty = QtWidgets.QCheckBox(self.groupBox_4)
        self.cSkipEmpty.setObjectName("cSkipEmpty")
        self.saveVL.addWidget(self.cSkipEmpty)
        self.cSaveWithoutLinks = QtWidgets.QCheckBox(self.groupBox_4)
        self.cSaveWithoutLinks.setObjectName("cSaveWithoutLinks")
        self.saveVL.addWidget(self.cSaveWithoutLinks)
        spacerItem2 = QtWidgets.QSpacerItem(20, 40, QtWidgets.QSizePolicy.Minimum, QtWidgets.QSizePolicy.Expanding)
        self.saveVL.addItem(spacerItem2)
        self.load_save_Lay.addWidget(self.groupBox_4, 0, 1, 1, 1)
        self.groupBox_5 = QtWidgets.QGroupBox(self.tab)
        self.groupBox_5.setMaximumSize(QtCore.QSize(16777215, 16777215))
        self.groupBox_5.setObjectName("groupBox_5")
        self.CHLoneOptionGrid = QtWidgets.QGridLayout(self.groupBox_5)
        self.CHLoneOptionGrid.setSizeConstraint(QtWidgets.QLayout.SetDefaultConstraint)
        self.CHLoneOptionGrid.setContentsMargins(8, 8, 8, 8)
        self.CHLoneOptionGrid.setSpacing(2)
        self.CHLoneOptionGrid.setObjectName("CHLoneOptionGrid")
        self.checkBox = QtWidgets.QCheckBox(self.groupBox_5)
        self.checkBox.setObjectName("checkBox")
        self.CHLoneOptionGrid.addWidget(self.checkBox, 0, 0, 1, 1)
        self.checkBox_2 = QtWidgets.QCheckBox(self.groupBox_5)
        self.checkBox_2.setObjectName("checkBox_2")
        self.CHLoneOptionGrid.addWidget(self.checkBox_2, 2, 0, 1, 2)
        self.line = QtWidgets.QFrame(self.groupBox_5)
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Fixed, QtWidgets.QSizePolicy.Preferred)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.line.sizePolicy().hasHeightForWidth())
        self.line.setSizePolicy(sizePolicy)
        self.line.setFrameShape(QtWidgets.QFrame.VLine)
        self.line.setFrameShadow(QtWidgets.QFrame.Sunken)
        self.line.setObjectName("line")
        self.CHLoneOptionGrid.addWidget(self.line, 0, 2, 7, 1)
        spacerItem3 = QtWidgets.QSpacerItem(298, 20, QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Minimum)
        self.CHLoneOptionGrid.addItem(spacerItem3, 0, 3, 1, 1)
        self.checkBox_3 = QtWidgets.QCheckBox(self.groupBox_5)
        self.checkBox_3.setObjectName("checkBox_3")
        self.CHLoneOptionGrid.addWidget(self.checkBox_3, 3, 0, 1, 1)
        self.lineEdit_2 = QtWidgets.QLineEdit(self.groupBox_5)
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Fixed)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.lineEdit_2.sizePolicy().hasHeightForWidth())
        self.lineEdit_2.setSizePolicy(sizePolicy)
        self.lineEdit_2.setMinimumSize(QtCore.QSize(0, 0))
        self.lineEdit_2.setMaximumSize(QtCore.QSize(16777215, 16777215))
        self.lineEdit_2.setAcceptDrops(False)
        self.lineEdit_2.setMaxLength(32760)
        self.lineEdit_2.setFrame(True)
        self.lineEdit_2.setObjectName("lineEdit_2")
        self.CHLoneOptionGrid.addWidget(self.lineEdit_2, 4, 0, 1, 2)
        spacerItem4 = QtWidgets.QSpacerItem(200, 0, QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Minimum)
        self.CHLoneOptionGrid.addItem(spacerItem4, 5, 0, 1, 1)
        self.load_save_Lay.addWidget(self.groupBox_5, 1, 0, 1, 2)
        self.groupBox_3 = QtWidgets.QGroupBox(self.tab)
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Preferred, QtWidgets.QSizePolicy.Preferred)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.groupBox_3.sizePolicy().hasHeightForWidth())
        self.groupBox_3.setSizePolicy(sizePolicy)
        self.groupBox_3.setMinimumSize(QtCore.QSize(0, 0))
        self.groupBox_3.setMaximumSize(QtCore.QSize(364, 16777215))
        self.groupBox_3.setObjectName("groupBox_3")
        self.LoadVL = QtWidgets.QVBoxLayout(self.groupBox_3)
        self.LoadVL.setContentsMargins(8, 8, 8, 8)
        self.LoadVL.setSpacing(2)
        self.LoadVL.setObjectName("LoadVL")
        self.cNoLargeData_2 = QtWidgets.QCheckBox(self.groupBox_3)
        font = QtGui.QFont()
        font.setBold(False)
        font.setWeight(50)
        self.cNoLargeData_2.setFont(font)
        self.cNoLargeData_2.setObjectName("cNoLargeData_2")
        self.LoadVL.addWidget(self.cNoLargeData_2)
        self.cFollowLinks = QtWidgets.QCheckBox(self.groupBox_3)
        self.cFollowLinks.setObjectName("cFollowLinks")
        self.LoadVL.addWidget(self.cFollowLinks)
        self.cReadOnly = QtWidgets.QCheckBox(self.groupBox_3)
        self.cReadOnly.setEnabled(True)
        self.cReadOnly.setObjectName("cReadOnly")
        self.LoadVL.addWidget(self.cReadOnly)
        self.cLoadSubPath = QtWidgets.QCheckBox(self.groupBox_3)
        self.cLoadSubPath.setObjectName("cLoadSubPath")
        self.LoadVL.addWidget(self.cLoadSubPath)
        self.horizontalLayout_2 = QtWidgets.QHBoxLayout()
        self.horizontalLayout_2.setObjectName("horizontalLayout_2")
        spacerItem5 = QtWidgets.QSpacerItem(20, 20, QtWidgets.QSizePolicy.Fixed, QtWidgets.QSizePolicy.Minimum)
        self.horizontalLayout_2.addItem(spacerItem5)
        self.lineEdit = QtWidgets.QLineEdit(self.groupBox_3)
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Preferred, QtWidgets.QSizePolicy.Fixed)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.lineEdit.sizePolicy().hasHeightForWidth())
        self.lineEdit.setSizePolicy(sizePolicy)
        self.lineEdit.setObjectName("lineEdit")
        self.horizontalLayout_2.addWidget(self.lineEdit)
        self.LoadVL.addLayout(self.horizontalLayout_2)
        self.LimitDepthHLay = QtWidgets.QHBoxLayout()
        self.LimitDepthHLay.setSizeConstraint(QtWidgets.QLayout.SetFixedSize)
        self.LimitDepthHLay.setObjectName("LimitDepthHLay")
        self.cLimitDepth = QtWidgets.QCheckBox(self.groupBox_3)
        self.cLimitDepth.setObjectName("cLimitDepth")
        self.LimitDepthHLay.addWidget(self.cLimitDepth)
        self.spinBox = QtWidgets.QSpinBox(self.groupBox_3)
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Minimum, QtWidgets.QSizePolicy.Fixed)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.spinBox.sizePolicy().hasHeightForWidth())
        self.spinBox.setSizePolicy(sizePolicy)
        self.spinBox.setMinimumSize(QtCore.QSize(60, 0))
        self.spinBox.setObjectName("spinBox")
        self.LimitDepthHLay.addWidget(self.spinBox)
        spacerItem6 = QtWidgets.QSpacerItem(20, 20, QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Minimum)
        self.LimitDepthHLay.addItem(spacerItem6)
        self.LoadVL.addLayout(self.LimitDepthHLay)
        spacerItem7 = QtWidgets.QSpacerItem(20, 40, QtWidgets.QSizePolicy.Minimum, QtWidgets.QSizePolicy.Expanding)
        self.LoadVL.addItem(spacerItem7)
        self.load_save_Lay.addWidget(self.groupBox_3, 0, 0, 1, 1)
        self.tabs.addTab(self.tab, "")
        self.tab_2 = QtWidgets.QWidget()
        self.tab_2.setEnabled(True)
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Preferred, QtWidgets.QSizePolicy.Preferred)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.tab_2.sizePolicy().hasHeightForWidth())
        self.tab_2.setSizePolicy(sizePolicy)
        self.tab_2.setMinimumSize(QtCore.QSize(695, 390))
        self.tab_2.setMaximumSize(QtCore.QSize(720, 420))
        self.tab_2.setObjectName("tab_2")
        self.verticalLayout_3 = QtWidgets.QVBoxLayout(self.tab_2)
        self.verticalLayout_3.setContentsMargins(6, 6, 6, 6)
        self.verticalLayout_3.setSpacing(2)
        self.verticalLayout_3.setObjectName("verticalLayout_3")
        self.topHL = QtWidgets.QHBoxLayout()
        self.topHL.setSpacing(0)
        self.topHL.setObjectName("topHL")
        self.cActivate = QtWidgets.QCheckBox(self.tab_2)
        self.cActivate.setEnabled(False)
        self.cActivate.setMaximumSize(QtCore.QSize(260, 16777215))
        self.cActivate.setChecked(True)
        self.cActivate.setObjectName("cActivate")
        self.topHL.addWidget(self.cActivate)
        self.cAutoDir = QtWidgets.QCheckBox(self.tab_2)
        self.cAutoDir.setObjectName("cAutoDir")
        self.topHL.addWidget(self.cAutoDir)
        self.verticalLayout_3.addLayout(self.topHL)
        self.downHL = QtWidgets.QHBoxLayout()
        self.downHL.setObjectName("downHL")
        self.groupBox_2 = QtWidgets.QGroupBox(self.tab_2)
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Fixed, QtWidgets.QSizePolicy.MinimumExpanding)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.groupBox_2.sizePolicy().hasHeightForWidth())
        self.groupBox_2.setSizePolicy(sizePolicy)
        self.groupBox_2.setMaximumSize(QtCore.QSize(190, 16777215))
        self.groupBox_2.setObjectName("groupBox_2")
        self.showVL = QtWidgets.QVBoxLayout(self.groupBox_2)
        self.showVL.setContentsMargins(4, 4, 4, 4)
        self.showVL.setSpacing(4)
        self.showVL.setObjectName("showVL")
        self.cShowAll = QtWidgets.QCheckBox(self.groupBox_2)
        self.cShowAll.setObjectName("cShowAll")
        self.showVL.addWidget(self.cShowAll)
        self.__O_filterhdffiles = QtWidgets.QCheckBox(self.groupBox_2)
        self.__O_filterhdffiles.setChecked(True)
        self.__O_filterhdffiles.setObjectName("__O_filterhdffiles")
        self.showVL.addWidget(self.__O_filterhdffiles)
        self.__O_filtercgnsfiles = QtWidgets.QCheckBox(self.groupBox_2)
        self.__O_filtercgnsfiles.setChecked(True)
        self.__O_filtercgnsfiles.setObjectName("__O_filtercgnsfiles")
        self.showVL.addWidget(self.__O_filtercgnsfiles)
        spacerItem8 = QtWidgets.QSpacerItem(20, 10, QtWidgets.QSizePolicy.Minimum, QtWidgets.QSizePolicy.Fixed)
        self.showVL.addItem(spacerItem8)
        self.cShowOwnExt = QtWidgets.QCheckBox(self.groupBox_2)
        self.cShowOwnExt.setObjectName("cShowOwnExt")
        self.showVL.addWidget(self.cShowOwnExt)
        self.lOwnExt = QtWidgets.QListWidget(self.groupBox_2)
        self.lOwnExt.setObjectName("lOwnExt")
        self.showVL.addWidget(self.lOwnExt)
        self.downHL.addWidget(self.groupBox_2)
        self.groupBox = QtWidgets.QGroupBox(self.tab_2)
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Preferred, QtWidgets.QSizePolicy.MinimumExpanding)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.groupBox.sizePolicy().hasHeightForWidth())
        self.groupBox.setSizePolicy(sizePolicy)
        self.groupBox.setObjectName("groupBox")
        self.verticalLayout_4 = QtWidgets.QVBoxLayout(self.groupBox)
        self.verticalLayout_4.setContentsMargins(4, 4, 4, 4)
        self.verticalLayout_4.setSpacing(1)
        self.verticalLayout_4.setObjectName("verticalLayout_4")
        self.horizontalLayout_3 = QtWidgets.QHBoxLayout()
        self.horizontalLayout_3.setObjectName("horizontalLayout_3")
        self.rClearNotFound = QtWidgets.QRadioButton(self.groupBox)
        self.rClearNotFound.setChecked(True)
        self.rClearNotFound.setObjectName("rClearNotFound")
        self.horizontalLayout_3.addWidget(self.rClearNotFound)
        spacerItem9 = QtWidgets.QSpacerItem(10, 20, QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Minimum)
        self.horizontalLayout_3.addItem(spacerItem9)
        self.bInfo2 = QtWidgets.QPushButton(self.groupBox)
        self.bInfo2.setMinimumSize(QtCore.QSize(25, 25))
        self.bInfo2.setMaximumSize(QtCore.QSize(25, 25))
        self.bInfo2.setText("")
        self.bInfo2.setIcon(icon3)
        self.bInfo2.setObjectName("bInfo2")
        self.horizontalLayout_3.addWidget(self.bInfo2)
        self.bClearHistory = QtWidgets.QPushButton(self.groupBox)
        self.bClearHistory.setMaximumSize(QtCore.QSize(70, 25))
        self.bClearHistory.setObjectName("bClearHistory")
        self.horizontalLayout_3.addWidget(self.bClearHistory)
        self.verticalLayout_4.addLayout(self.horizontalLayout_3)
        self.rClearNoHDF = QtWidgets.QRadioButton(self.groupBox)
        self.rClearNoHDF.setObjectName("rClearNoHDF")
        self.verticalLayout_4.addWidget(self.rClearNoHDF)
        self.rClearSelectedDirs = QtWidgets.QRadioButton(self.groupBox)
        self.rClearSelectedDirs.setObjectName("rClearSelectedDirs")
        self.verticalLayout_4.addWidget(self.rClearSelectedDirs)
        self.rClearSelectedFiles = QtWidgets.QRadioButton(self.groupBox)
        self.rClearSelectedFiles.setObjectName("rClearSelectedFiles")
        self.verticalLayout_4.addWidget(self.rClearSelectedFiles)
        self.rClearAllDirs = QtWidgets.QRadioButton(self.groupBox)
        self.rClearAllDirs.setObjectName("rClearAllDirs")
        self.verticalLayout_4.addWidget(self.rClearAllDirs)
        self.lClear = QtWidgets.QListWidget(self.groupBox)
        self.lClear.setMinimumSize(QtCore.QSize(0, 100))
        self.lClear.setSelectionMode(QtWidgets.QAbstractItemView.MultiSelection)
        self.lClear.setObjectName("lClear")
        self.verticalLayout_4.addWidget(self.lClear)
        self.downHL.addWidget(self.groupBox)
        self.verticalLayout_3.addLayout(self.downHL)
        self.tabs.addTab(self.tab_2, "")
        self.horizontalLayout.addWidget(self.tabs)
        self.verticalLayout.addLayout(self.horizontalLayout)

        self.retranslateUi(Q7FileWindow)
        self.tabs.setCurrentIndex(0)
        QtCore.QMetaObject.connectSlotsByName(Q7FileWindow)

    def retranslateUi(self, Q7FileWindow):
        _translate = QtCore.QCoreApplication.translate
        Q7FileWindow.setWindowTitle(_translate("Q7FileWindow", "Form"))
        self.cNoLargeData.setToolTip(_translate("Q7FileWindow", "Nodes with large data are read but their data is not"))
        self.cNoLargeData.setText(_translate("Q7FileWindow", "Do not load large data"))
        self.cShowDirs.setText(_translate("Q7FileWindow", "Show directories"))
        self.bCurrent.setToolTip(_translate("Q7FileWindow", "Go to launch directory"))
        self.bBack.setToolTip(_translate("Q7FileWindow", "Go back to parent directory"))
        self.bAction.setText(_translate("Q7FileWindow", "LOAD"))
        self.bClose.setText(_translate("Q7FileWindow", "Cancel"))
        self.tabs.setTabText(self.tabs.indexOf(self.Selection), _translate("Q7FileWindow", "Selection"))
        self.groupBox_4.setTitle(_translate("Q7FileWindow", "Save"))
        self.cOverwrite.setToolTip(_translate("Q7FileWindow", "Overwrite an existing file with new contents"))
        self.cOverwrite.setText(_translate("Q7FileWindow", "Overwrite"))
        self.cDeleteMissing.setToolTip(_translate("Q7FileWindow", "Children found in existing file but not in current tree are removed"))
        self.cDeleteMissing.setText(_translate("Q7FileWindow", "Delete missing"))
        self.cSkipEmpty.setText(_translate("Q7FileWindow", "Skip empty"))
        self.cSaveWithoutLinks.setText(_translate("Q7FileWindow", "Do not save with links"))
        self.groupBox_5.setTitle(_translate("Q7FileWindow", "CHLone options (both load and save)"))
        self.checkBox.setText(_translate("Q7FileWindow", "Trace"))
        self.checkBox_2.setText(_translate("Q7FileWindow", "Debug (quite large output)"))
        self.checkBox_3.setText(_translate("Q7FileWindow", "Send output to:"))
        self.groupBox_3.setTitle(_translate("Q7FileWindow", "Load"))
        self.cNoLargeData_2.setToolTip(_translate("Q7FileWindow", "Nodes with large data are read but their data is not"))
        self.cNoLargeData_2.setText(_translate("Q7FileWindow", "Do not load large data"))
        self.cFollowLinks.setText(_translate("Q7FileWindow", "Follow links"))
        self.cReadOnly.setText(_translate("Q7FileWindow", "Open as read-only"))
        self.cLoadSubPath.setText(_translate("Q7FileWindow", "Load sub-tree with path:"))
        self.cLimitDepth.setText(_translate("Q7FileWindow", "Limit depth to:"))
        self.tabs.setTabText(self.tabs.indexOf(self.tab), _translate("Q7FileWindow", "Load/Save options"))
        self.cActivate.setText(_translate("Q7FileWindow", "Activate directory/file history"))
        self.cAutoDir.setText(_translate("Q7FileWindow", "Auto-Change directory"))
        self.groupBox_2.setTitle(_translate("Q7FileWindow", "Show"))
        self.cShowAll.setText(_translate("Q7FileWindow", "All file extensions"))
        self.__O_filterhdffiles.setText(_translate("Q7FileWindow", ".hdf files"))
        self.__O_filtercgnsfiles.setText(_translate("Q7FileWindow", ".cgns/.adf files"))
        self.cShowOwnExt.setText(_translate("Q7FileWindow", "own extension:"))
        self.groupBox.setTitle(_translate("Q7FileWindow", "Clear history"))
        self.rClearNotFound.setText(_translate("Q7FileWindow", "Not found directory and file entries"))
        self.bClearHistory.setText(_translate("Q7FileWindow", "Clear"))
        self.rClearNoHDF.setText(_translate("Q7FileWindow", "Directory entries without correct file e&xtension"))
        self.rClearSelectedDirs.setText(_translate("Q7FileWindow", "Selected directory entries"))
        self.rClearSelectedFiles.setText(_translate("Q7FileWindow", "Selected file entries"))
        self.rClearAllDirs.setText(_translate("Q7FileWindow", "All director&y and file entries"))
        self.tabs.setTabText(self.tabs.indexOf(self.tab_2), _translate("Q7FileWindow", "History/Filter"))


from . import Res_rc

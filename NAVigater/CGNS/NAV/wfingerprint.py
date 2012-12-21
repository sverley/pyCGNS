#  -------------------------------------------------------------------------
#  pyCGNS.NAV - Python package for CFD General Notation System - NAVigater
#  See license.txt file in the root directory of this Python module source  
#  -------------------------------------------------------------------------
#  $Release$
#  -------------------------------------------------------------------------
from PySide.QtCore       import *
from PySide.QtGui        import *
import os
import os.path
import pwd
import grp
import time
import stat
import sys
import CGNS.MAP
import CGNS.PAT.cgnsutils as CGU

import CGNS.NAV.wmessages as MSG
from CGNS.NAV.moption import Q7OptionContext as OCTXT
from CGNS.NAV.wstylesheets import Q7TREEVIEWSTYLESHEET, Q7TABLEVIEWSTYLESHEET
from CGNS.NAV.wstylesheets import Q7CONTROLVIEWSTYLESHEET
from CGNS.NAV.wfile import checkFilePermission

# -----------------------------------------------------------------
class Q7Window(QWidget,object):
    VIEW_CONTROL='C'
    VIEW_DIAG='D'
    VIEW_TREE='T'
    VIEW_OPTION='O'
    VIEW_VTK='G'
    VIEW_FORM='F'
    VIEW_QUERY='Q'
    VIEW_SELECT='S'
    VIEW_PATTERN='P'
    VIEW_INFO='I'
    VIEW_LINK='L'
    HISTORYLASTKEY='///LAST///'
    def __init__(self,vtype,control,path,fgprint):
        QWidget.__init__(self,None)
        self._stylesheet=None
        self.I_MOD_SAV=QIcon(QPixmap(":/images/icons/save-S-M.gif"))
        self.I_UMOD_SAV=QIcon(QPixmap(":/images/icons/save-S-UM.gif"))
        self.I_MOD_USAV=QIcon(QPixmap(":/images/icons/save-US-M.gif"))
        self.I_UMOD_USAV=QIcon(QPixmap(":/images/icons/save-US-UM.gif"))
        self.I_TREE=QIcon(QPixmap(":/images/icons/tree-load.gif"))
        self.I_VTK=QIcon(QPixmap(":/images/icons/vtkview.gif"))
        self.I_QUERY=QIcon(QPixmap(":/images/icons/operate-execute.gif"))
        self.I_FORM=QIcon(QPixmap(":/images/icons/form.gif"))
        self.I_SELECT=QIcon(QPixmap(":/images/icons/operate-list.gif"))
        self.I_PATTERN=QIcon(QPixmap(":/images/icons/pattern.gif"))
        self.I_DIAG=QIcon(QPixmap(":/images/icons/check-all.gif"))
        self.I_LINK=QIcon(QPixmap(":/images/icons/link.gif"))
        self.I_D_INF=QIcon(QPixmap(":/images/icons/subtree-sids-warning.gif"))
        self.I_D_ERR=QIcon(QPixmap(":/images/icons/subtree-sids-failed.gif"))
        self.I_L_OKL=QIcon(QPixmap(":/images/icons/link.gif"))
        self.I_L_NFL=QIcon(QPixmap(":/images/icons/link-nofile.gif"))
        self.I_L_NRL=QIcon(QPixmap(":/images/icons/link-noreadable.gif"))
        self.I_L_NNL=QIcon(QPixmap(":/images/icons/link-nonode.gif"))
        self.I_L_IGN=QIcon(QPixmap(":/images/icons/link-error.gif"))
        self.I_L_ERL=QIcon(QPixmap(":/images/icons/link-ignore.gif"))
        self.I_C_SFL=QIcon(QPixmap(":/images/icons/check-fail.gif"))
        self.I_C_SWR=QIcon(QPixmap(":/images/icons/check-warn.gif"))
        self.I_EMPTY=QIcon(QPixmap(":/images/icons/empty.gif"))
        self.I_MARK=QIcon(QPixmap(":/images/icons/mark-node.gif"))
        if (vtype==Q7Window.VIEW_TREE):
            self._stylesheet=Q7TREEVIEWSTYLESHEET
        if (vtype==Q7Window.VIEW_CONTROL):
            self._stylesheet=Q7CONTROLVIEWSTYLESHEET
        self.setupUi(self)
        if (self._stylesheet is not None): self.setStyleSheet(self._stylesheet)
        self._busyx=QCursor(QPixmap(":/images/icons/cgSpy.gif"))
        self.getOptions()
        self._timercount=0
        self._vtype=vtype
        self._path=path
        self._control=control
        self._fgprint=fgprint
        self._index=self.addChildWindow()
        fn=''
        if (fgprint is not None): fn=fgprint.filename
        if (self._index!=0):
            tit="%s:%s%.3d"%(OCTXT._ToolName,self._vtype,self._index)
        else:
            tit="%s:Control"%(OCTXT._ToolName)            
        self.setWindowTitle(tit)
        try:
            self.bBackControl.clicked.connect(self.backcontrol)
        except AttributeError:
            pass
        self._readonly=False
    def validateOption(self,name,value):
        #if (name[0]=='_'): return False
        return True
    def getOptions(self):
        try:
            if (self._options is None): self._options={}
        except AttributeError:
            self._options={}
        user_options=OCTXT._readOptions(self)
        for k in dir(OCTXT):   self.setOptionValue(k,getattr(OCTXT,k))
        if (user_options is not None):
            for k in user_options: self.setOptionValue(k,user_options[k])
        return self._options
    def setOptions(self):
        OCTXT._writeOptions(self)
    def getOptionValue(self,name):
        return self._options[name]
    def setOptionValue(self,name,value):
        if (self.validateOption(name,value)):
            self._options[name]=value
            return value
        return self._options[name]
    def getHistoryLastKey(self):
        return Q7Window.HISTORYLASTKEY
    def getHistory(self):
        self._history=OCTXT._readHistory(self)
        if (self._history is None): self._history={}
        return self._history
    def getHistoryFile(self,file):
        if (self._history is None): return None
        for d in self._history:
            if (file in self._history[d]): return (d,file)
        return None
    def removeDirFromHistory(self,filedir):
        if (self._history.has_key(filedir)): del self._history[filedir]
        if ((self.getLastFile() is not None)
            and (self._history[Q7Window.HISTORYLASTKEY][0]==filedir)):
            del self._history[Q7Window.HISTORYLASTKEY]
    def setHistory(self,filedir,filename):
        for d in self._history.keys():
            if (d==filedir):
                if (filename not in self._history[filedir]):
                    self._history[filedir].append(filename)
            else:
                self._history[filedir]=[filename]
        if (self._history=={}): self._history[filedir]=[filename]
        self._history[Q7Window.HISTORYLASTKEY]=(filedir,filename)
        OCTXT._writeHistory(self)
        return self._history
    def getQueries(self):
        self._queries=OCTXT._readQueries(self)
        if (self._queries is None): self._queries=[]
        return self._queries
    def setQueries(self):
        OCTXT._writeQueries(self)
        return self._queries
    def getLastFile(self):
        if ((self._history=={})
            or not self._history.has_key(Q7Window.HISTORYLASTKEY)):
            return None
        return self._history[Q7Window.HISTORYLASTKEY]
    def addChildWindow(self):
        if (self._fgprint is None): return 0
        self._index=self._fgprint.addChild(self._vtype,self)
        l=[self._fgprint._status,self._vtype,'%.3d'%self._index]
        l+=[self._fgprint.filedir,self._fgprint.filename,self._path]
        self._control.addLine(l,self._fgprint)
        return self._index
    def closeEvent(self, event):
        self._control.delLine('%.3d'%self._index)
        self._fgprint.closeView(self._index)
        event.accept()
    def backcontrol(self):
        self._fgprint.raiseControlView()
        self._control.selectLine('%.3d'%self._index)
    def busyCursor(self):
        QApplication.setOverrideCursor(self._busyx)
    def readyCursor(self):
        QApplication.restoreOverrideCursor()
    def setLabel(self,it,text):
        it.setText(text)
        it.setFont(QFont("Courier"))
        it.setReadOnly(True)
    def _T(self,msg):
        if (self.getOptionValue('NAVTrace')):
            print '### CGNS.NAV:', msg
# -----------------------------------------------------------------
class Q7fingerPrint:
    __viewscounter=0
    __extension=[]
    STATUS_UNCHANGED='U'
    STATUS_MODIFIED='M'
    STATUS_SAVEABLE='S'
    STATUS_CONVERTED='C'
    STATUS_LIST=(STATUS_UNCHANGED,STATUS_MODIFIED,STATUS_CONVERTED,
                 STATUS_SAVEABLE)
    @classmethod
    def fileconversion(cls,fdir,filein,control):
        control.loadOptions()
        fileout=OCTXT.TemporaryDirectory+'/'+filein+'.hdf'
        count=1
        while (os.path.exists(fileout)):
            fileout=OCTXT.TemporaryDirectory+'/'+filein+'.%.3d.hdf'%count
            count+=1
        com='(cd %s; %s -f -h %s %s)'%(fdir,
                                       OCTXT.ADFConversionCom,
                                       filein,fileout)
        os.system(com)
        return fileout
    @classmethod
    def treeLoad(cls,control,selectedfile):
        control.loadOptions()
        kw={}
        f=selectedfile
        (filedir,filename)=(os.path.abspath(os.path.dirname(f)),
                            os.path.basename(f))
        if ("%s/%s"%(filedir,filename) in cls.getExpandedFilenameList()):
            txt="""The current file is already open:"""
            MSG.message(txt,"%s/%s"%(filedir,filename),MSG.INFO)
            control.readyCursor()
            return None
        slp=OCTXT.LinkSearchPathList
        slp+=[filedir]
        if (   (os.path.splitext(filename)[1] in OCTXT.CGNSFileExtension)
            and OCTXT._ConvertADFFiles):
            f=cls.fileconversion(filedir,filename,control)
            kw['converted']=True
            kw['convertedAs']=f
        flags=CGNS.MAP.S2P_NONE&~CGNS.MAP.S2P_REVERSEDIMS
        maxdataload=None
        if (OCTXT.CHLoneTrace):
            flags|=CGNS.MAP.S2P_TRACE
        if (OCTXT.DoNotLoadLargeArrays):
            flags|=CGNS.MAP.S2P_NODATA
            maxdataload=OCTXT.MaxLoadDataSize
        if (OCTXT.FollowLinksAtLoad):
            flags|=CGNS.MAP.S2P_FOLLOWLINKS
        try:
            if (maxdataload):
                (tree,links,paths)=CGNS.MAP.load(f,flags,lksearch=slp,
                                                 maxdata=maxdataload)
            else:
                (tree,links,paths)=CGNS.MAP.load(f,flags,lksearch=slp)
        except (CGNS.MAP.error,),chlex:
            txt="""The current load operation has been aborted:"""
            control.readyCursor()
            MSG.wError(chlex[0],txt,chlex[1])
            return None
        except Exception, e:
            txt="""The current operation has been aborted: %s"""%e
            control.readyCursor()
            MSG.wError(0,txt,'')
            return None
        kw['isfile']=True
        return Q7fingerPrint(control,filedir,filename,tree,links,paths,**kw)
    @classmethod
    def treeSave(cls,control,fgprint,f,saveas):
        flags=CGNS.MAP.S2P_DEFAULT
        if (OCTXT.CHLoneTrace): flags|=CGNS.MAP.S2P_TRACE
        if (not saveas):        flags|=CGNS.MAP.S2P_UPDATE
        tree=fgprint.tree
        lk=[]
        try:
            CGNS.MAP.save(f,tree,lk,flags)
        except (CGNS.MAP.error,),chlex:
            txt="""The current save operation has been aborted (CHLone):"""
            control.readyCursor()
            MSG.wError(chlex[0],txt,chlex[1])
            return None
        except (Exception,), e:
            txt="""The current save operation has been aborted: %s"""%e
            control.readyCursor()
            MSG.wError(0,txt,'')
            return None
        fgprint.updateFileStats(f,saveas=True)
    @classmethod
    def closeAllTrees(cls):
        while cls.__extension:
            x=cls.__extension[0]
            x.closeAllViews()
    @classmethod
    def raiseView(cls,idx):
        for x in cls.__extension:
            for vtype in x.views:
                for (v,i) in x.views[vtype]:
                    if (i==int(idx)): v.raise_()
    @classmethod
    def infoView(cls,idx):
        f=cls.getFingerPrint(idx)
        v=cls.getView(idx)
        if (f is None): return (None,None,None)
        if (not f.isfile): return (f,None,None)
        return (f,v,f.getInfo(v))
    @classmethod
    def getView(cls,idx):
        for x in cls.__extension:
            for vtype in x.views:
                for (v,i) in x.views[vtype]:
                    if (i==int(idx)): return v
        return None
    @classmethod
    def getViewType(cls,idx):
        vw=cls.getView(idx)
        for x in cls.__extension:
            for vtype in x.views:
                for (v,i) in x.views[vtype]:
                    if ((v==vw) and (i==int(idx))): return vtype
        return None
    @classmethod
    def getFingerPrint(cls,idx):
        for x in cls.__extension:
            for vtype in x.views:
                for (v,i) in x.views[vtype]:
                    if (i==int(idx)): return x
        return None
    @classmethod
    def getExpandedFilenameList(cls):
        l=[]
        for x in cls.__extension:
            l.append("%s/%s"%(x.filedir,x.filename))
        return l
    # -------------------------------------------------------------
    def __init__(self,control,filedir,filename,tree,links,paths,**kw):
        self.filename=filename
        self.tree=tree
        self.filedir=filedir
        self.links=links
        self.model=None
        self.depth=0
        self.nodes=0
        self.views={}
        self.control=control
        self.converted=False
        self.isfile=False
        self.tmpfile=''
        self._status=[]
        if (checkFilePermission(filedir+'/'+filename,write=True)):
            self._status=[Q7fingerPrint.STATUS_SAVEABLE]
        if (kw.has_key('isfile')):
            self.isfile=True
        if (kw.has_key('converted')):
            self.converted=kw['converted']
            self.tmpfile=kw['convertedAs']
            if (self.converted):
                self._status=[]
        self.lazy={}
        for p in paths: self.lazy['/CGNSTree'+p[0]]=p[1]
        Q7fingerPrint.__extension.append(self)
        self.updateFileStats(filedir+'/'+filename)
    def updateNodeData(self,pathdict):
        tfile="%s/%s"%(self.filedir,self.filename)
        slp=OCTXT.LinkSearchPathList
        slp+=[self.filedir]
        minpath=CGU.getPathListCommonAncestor(pathdict.keys())
        flags=CGNS.MAP.S2P_NONE&~CGNS.MAP.S2P_REVERSEDIMS
        if (OCTXT.CHLoneTrace):
            flags|=CGNS.MAP.S2P_TRACE
        if (OCTXT.FollowLinksAtLoad):
            flags|=CGNS.MAP.S2P_FOLLOWLINKS
        (t,l,p)=CGNS.MAP.load(tfile,flags,path=minpath,lksearch=slp,
                              update=pathdict)
        return (t,l,p)
    def updateFileStats(self,fname,saveas=False):
        (filedir,filename)=(os.path.normpath(os.path.dirname(fname)),
                            os.path.basename(fname))
        self.filename=filename
        self.filedir=filedir
        self.version=CGU.getVersion(self.tree)
        self.removeTreeStatus(Q7fingerPrint.STATUS_MODIFIED)
        self.addTreeStatus(Q7fingerPrint.STATUS_UNCHANGED)
        if (saveas):
            self.converted=False
            self.isfile=True
            self.tmpfile=''
            self.removeTreeStatus(Q7fingerPrint.STATUS_CONVERTED)
            self.addTreeStatus(Q7fingerPrint.STATUS_SAVEABLE)
    def isFile(self):
        return self.isfile
    def isLink(self,path):
        pth=CGU.getPathNoRoot(path)
        for lk in self.links:
            if (lk[3]==pth): return lk
        return False
    def getInfo(self,view):
        d={}
        f='%s/%s'%(self.filedir,self.filename)
        d['eFilename']=f
        d['eDirSource']=self.filedir
        d['eFileSource']=self.filename
        d['eTmpFile']=self.tmpfile
        d['eDepth']=self.depth
        d['eNodes']=self.nodes
        d['eVersion']=str(self.version)
        d['eVersionHDF5']='???'
        st=os.stat(f)
        d['eFileSize']="%.3f Mb"%(1.0*st[6]/(1024*1024))
        d['eMergeSize']="%.3f Mb"%(1.0*st[6]/(1024*1024))
        dfmt="%Y-%m-%d %H:%M"
        d['eLastDate']=time.strftime(dfmt,time.localtime(int(st[7])))
        d['eModifDate']=time.strftime(dfmt,time.localtime(int(st[8])))
        e=pwd.getpwuid(st[4])
        g=grp.getgrgid(st[5])
        d['eOwner']=e[0]
        d['eGroup']=g[0]
        d['cNoFollow']=False
        d['cHasLinks']=(len(self.links)!=0)
        d['cSameFS']=False
        d['cBadLinks']=False
        d['cModeProp']=False
        m=""
        if (st[0] & stat.S_IRUSR):m+="r"
        else: m+="-"
        if (st[0] & stat.S_IWUSR):m+="w"
        else: m+="-"
        if (st[0] & stat.S_IXUSR):m+="x"
        else: m+="-"
        if (st[0] & stat.S_IRGRP):m+="r"
        else: m+="-"
        if (st[0] & stat.S_IWGRP):m+="w"
        else: m+="-"
        if (st[0] & stat.S_IXGRP):m+="x"
        else: m+="-"
        if (st[0] & stat.S_IROTH):m+="r"
        else: m+="-"
        if (st[0] & stat.S_IWOTH):m+="w"
        else: m+="-"
        if (st[0] & stat.S_IXOTH):m+="x"
        else: m+="-"
        d['eRights']=m
        d['cConverted']=self.converted
        d['cADF']=self.converted
        d['cHDF5']=not self.converted
        d['cREAD']=not self.isSaveable()
        d['cMODIFY']=self.isSaveable()
        d['cNODATA']=False
        d['cHasInt64']=False
        return d
    def raiseControlView(self):
        self.control.raise_()
    def addChild(self,viewtype,view):
        Q7fingerPrint.__viewscounter+=1
        idx=Q7fingerPrint.__viewscounter
        if not self.views.has_key(viewtype): self.views[viewtype]=[]
        self.views[viewtype].append((view,idx))
        return Q7fingerPrint.__viewscounter
    def closeView(self,i):
        idx=int(i)
        fg=self.getFingerPrint(idx)
        vw=self.getView(idx)
        vt=self.getViewType(idx)
        if (vw is not None): vw.close()
        if ((vw is not None) and self.views.has_key(vt)):
          self.views[vt].remove((vw,idx))
          if (self.views[vt]==[]): del self.views[vt]
        if ((self.views=={}) and (fg in self.__extension)):
            self.__extension.remove(fg)
    def closeAllViews(self):
        vtlist=self.views.keys()
        for vtype in vtlist:
            for (v,i) in self.views[vtype]: self.closeView(i)
    def isModified(self):
        return (Q7fingerPrint.STATUS_MODIFIED in self._status)
    def isSaveable(self):
        return (Q7fingerPrint.STATUS_SAVEABLE in self._status)
    def removeTreeStatus(self,status):
        if (status not in Q7fingerPrint.STATUS_LIST): return
        if (status in self._status): self._status.remove(status)
        self.control.updateViews()
    def addTreeStatus(self,status):
        if (status not in Q7fingerPrint.STATUS_LIST): return
        if (status not in self._status): self._status.append(status)
        self.control.updateViews()
# -----------------------------------------------------------------

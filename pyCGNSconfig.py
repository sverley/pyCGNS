# -------------------------------------------------------------------------
# pyCGNS - CFD General Notation System - SIDS-to-Python MAPping            
# $Rev: 56 $ $Date: 2008-06-10 09:44:23 +0200 (Tue, 10 Jun 2008) $         
# See license file in the root directory of this Python module source      
# -------------------------------------------------------------------------
#
majorversion=4
minorversion=0
releaseversion=1

version="v%d.%d.%d"

include_dirs=[\
    '/home_local/eucass/tools/include',\
    '/home_local/eucass/tools/lib/python2.6/site-packages/numpy/core/include'\
]

library_dirs=['/home_local/eucass/tools/lib']
optional_libs=['cgns','hdf5']

HAS_HDF5=1
MLL_VERSION=2.4

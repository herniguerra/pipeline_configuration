import mw_cache_utils
import os
import sys
sourceLocationPath = os.getenv("MW_MAYA_PATH")
sys.path.append(sourceLocationPath)

mw_cache_utils.startCache()

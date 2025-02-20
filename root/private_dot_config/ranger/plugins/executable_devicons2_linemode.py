import ranger.api
from ranger.core.linemode import LinemodeBase
from .devicons2 import *

@ranger.api.register_linemode
class DevIcons2Linemode(LinemodeBase):
    name = 'devicons2'
    uses_metadata = False

    def filetitle(self, file, metadata):
        return '{0} {1}'.format(
            get_icon(file),
            file.relative_path,
        )

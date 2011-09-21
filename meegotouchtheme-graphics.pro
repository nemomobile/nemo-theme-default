TEMPLATE = subdirs

# here we allow for setting of an install prefix:
#
# 1. if the PREFIX command line parameter is given like this:
#        qmake PREFIX=/usr/local/
#    then use it, else
# 2. if meegotouch_defines.prf can be found, use it, else
# 3. default to /usr/

# the installation prefix of the views is not changed.

!isEmpty( PREFIX ) {
    THEME_DIR = $$PREFIX/share/themes
} else {
    exists( $$[QMAKE_MKSPECS]/features/meegotouch_defines.prf ) {
        load(meegotouch_defines)
        THEME_DIR = $$M_THEME_DIR
    } else {
        THEME_DIR = /usr/share/themes
    }
}

# BASE THEME ICONS
base.files = ./icons ./svg ./images
base.path = $$THEME_DIR/base/meegotouch
base.CONFIG += no_check_exist

INSTALLS += base

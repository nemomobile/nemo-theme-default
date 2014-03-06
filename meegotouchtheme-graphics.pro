TEMPLATE = subdirs

isEmpty(PREFIX): PREFIX=/usr
THEME_DIR=$$PREFIX/share/themes

index.files = index.theme
index.path = $$THEME_DIR/base/

lgpl.files = lgpl/icons
lgpl.path = $$THEME_DIR/base/meegotouch
lgpl.CONFIG += no_check_exist

bsd.files = bsd/icons
bsd.path = $$THEME_DIR/base/meegotouch
bsd.CONFIG += no_check_exist

dconf.files = nemo-theme-default.txt
dconf.path = /etc/dconf/db/nemo.d/
dconf.CONFIG += no_check_exist

INSTALLS += index lgpl bsd dconf

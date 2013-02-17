TEMPLATE = subdirs

isEmpty(PREFIX): PREFIX=/usr
THEME_DIR=$$PREFIX/share/themes

index.files = index.theme
index.path = $$THEME_DIR/base/

lgpl.files = lgpl/icons lgpl/svg lgpl/images
lgpl.path = $$THEME_DIR/base/meegotouch
lgpl.CONFIG += no_check_exist

bsd.files = bsd/icons
bsd.path = $$THEME_DIR/base/meegotouch
bsd.CONFIG += no_check_exist

INSTALLS += index lgpl bsd

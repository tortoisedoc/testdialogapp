# NOTICE:
#
# Application name defined in TARGET has a corresponding QML filename.
# If name defined in TARGET is changed, the following needs to be done
# to match new name:
#   - corresponding QML filename must be changed
#   - desktop icon filename must be changed
#   - desktop filename must be changed
#   - icon definition filename in desktop file must be changed
#   - translation filenames have to be changed

# The name of your application
TARGET = testdialogapp

CONFIG += sailfishapp
QT += gui-private
SOURCES += src/testdialogapp.cpp

OTHER_FILES += qml/testdialogapp.qml \
    qml/cover/CoverPage.qml \
    qml/pages/FirstPage.qml \
    qml/pages/SecondPage.qml \
    rpm/testdialogapp.changes.in \
    rpm/testdialogapp.spec \
    rpm/testdialogapp.yaml \
    translations/*.ts \
    testdialogapp.desktop

# to disable building translations every time, comment out the
# following CONFIG line
desktop.path = /usr/share/applications
desktop.files += testdialogapp.desktop

INSTALLS += desktop
CONFIG += sailfishapp_i18n
TRANSLATIONS += translations/testdialogapp-de.ts


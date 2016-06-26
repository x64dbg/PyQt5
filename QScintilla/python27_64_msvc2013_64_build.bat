@echo off
call "C:\Program Files (x86)\Microsoft Visual Studio 12.0\VC\vcvarsall.bat" amd64
set QMAKESPEC=C:\Qt\qt-5.6.0-x64-msvc2013\5.6\msvc2013_64\mkspecs\win32-msvc2013
cd Qt4Qt5
"C:\Qt\qt-5.6.0-x64-msvc2013\5.6\msvc2013_64\bin\qmake.exe" qscintilla.pro
nmake
nmake install
cd ..\designer-Qt4Qt5
"C:\Qt\qt-5.6.0-x64-msvc2013\5.6\msvc2013_64\bin\qmake.exe" designer.pro
nmake
nmake install
cd ..\Python
C:\Python27-64\python.exe configure.py --spec=win32-msvc2013 --pyqt=PyQt5 --qmake=C:\Qt\qt-5.6.0-x64-msvc2013\5.6\msvc2013_64\bin\qmake.exe
nmake
nmake install
cd ..
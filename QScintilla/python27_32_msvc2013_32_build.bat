@echo off
call "C:\Program Files (x86)\Microsoft Visual Studio 12.0\VC\vcvarsall.bat"
set QMAKESPEC=C:\Qt\qt-5.6.0-x86-msvc2013\5.6\msvc2013\mkspecs\win32-msvc2013
cd Qt4Qt5
"C:\Qt\qt-5.6.0-x86-msvc2013\5.6\msvc2013\bin\qmake.exe" qscintilla.pro
nmake
nmake install
cd ..\designer-Qt4Qt5
"C:\Qt\qt-5.6.0-x86-msvc2013\5.6\msvc2013\bin\qmake.exe" designer.pro
nmake
nmake install
cd ..
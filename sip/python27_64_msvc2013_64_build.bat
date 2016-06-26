@echo off
call "C:\Program Files (x86)\Microsoft Visual Studio 12.0\VC\vcvarsall.bat" amd64
set QMAKESPEC=C:\Qt\qt-5.6.0-x64-msvc2013\5.6\msvc2013_64\mkspecs\win32-msvc2013
C:\Python27-64\python.exe configure.py
nmake
nmake install
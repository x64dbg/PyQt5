call "C:\Program Files (x86)\Microsoft Visual Studio 12.0\VC\vcvarsall.bat"
set QMAKESPEC=C:\Qt\qt-5.6.0-x86-msvc2013\5.6\msvc2013\mkspecs\win32-msvc2013
C:\Python27\python.exe configure.py --verbose --confirm-license --spec=win32-msvc2013 --qmake=C:\Qt\qt-5.6.0-x86-msvc2013\5.6\msvc2013\bin\qmake.exe -a --qsci-api --target-py-version=2.7
rem nmake
rem nmake install
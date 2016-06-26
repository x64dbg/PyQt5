call "C:\Program Files (x86)\Microsoft Visual Studio 12.0\VC\vcvarsall.bat" amd64
set QMAKESPEC=C:\Qt\qt-5.6.0-x64-msvc2013\5.6\msvc2013_64\mkspecs\win32-msvc2013
C:\Python27-64\python.exe configure.py --verbose --confirm-license --spec=win32-msvc2013 --disable=QtNfc --qmake=C:\Qt\qt-5.6.0-x64-msvc2013\5.6\msvc2013_64\bin\qmake.exe -a --qsci-api --target-py-version=2.7
nmake
nmake install
call "C:\Program Files (x86)\Microsoft Visual Studio 12.0\VC\vcvarsall.bat"
C:\Python27\python.exe configure.py --verbose --confirm-license --qmake=C:\Qt\qt-5.6.0-x86-msvc2013\5.6\msvc2013\bin\qmake.exe -a --qsci-api 
nmake
nmake install
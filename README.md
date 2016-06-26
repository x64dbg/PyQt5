# PyQt5

Compile scripts for PyQt5 (Qt 5.6.0), Python 2.7.11 and MSVC 2013. To be used by [x64dbg](http://x64dbg.com). Based on [Ida_Pro_Ultimate_Qt_Build_Guide](https://github.com/techbliss/Ida_Pro_Ultimate_Qt_Build_Guide) by Storm Shadow.

When it says *Extract* make sure to completely remove the previous directory if present.

## Prerequisites

1. Install VS2013 so you have `C:\Program Files (x86)\Microsoft Visual Studio 12.0\VC\vcvarsall.bat`
2. Install Qt 5.6.0 (x86) so you have `C:\Qt\qt-5.6.0-x86-msvc2013\5.6\msvc2013\bin\qmake.exe`
3. Install Qt 5.6.0 (x64) so you have `C:\Qt\qt-5.6.0-x64-msvc2013\5.6\msvc2013_64\bin\qmake.exe`
4. Install Python 2.7.11 (x86) so you have `C:\Python27\python.exe`
5. Install Python 2.7.11 (x64) so you have `C:\Python27-64\python.exe`

## x86

### Building sip (x86)

1. Extract `sip-4.18.zip` so you have `C:\sip-4.18\configure.py`
2. Copy `sip\python27_32_msvc2013_32_build.bat` to `C:\sip-4.18\python27_32_msvc2013_32_build.bat`
3. Run `C:\sip-4.18\python27_32_msvc2013_32_build.bat`
4. You should now have `C:\Python27\sip.exe`

### Building PyQt5 (x86)

1. Extract `PyQt5_gpl-5.6.zip` so you have `C:\PyQt5_gpl-5.6\configure.py`
2. Copy `PyQt5\python27_32_msvc2013_32_build.bat` to `C:\PyQt5_gpl-5.6\python27_32_msvc2013_32_build.bat`
3. Run `C:\PyQt5_gpl-5.6\python27_32_msvc2013_32_build.bat`

### Copying Qt DLLs (x86)

1. Copy all DLL files in `C:\Qt\qt-5.6.0-x86-msvc2013\5.6\msvc2013\bin` to `C:\Python27\Lib\site-packages\PyQt5`
2. Copy all DLL files in `C:\Qt\qt-5.6.0-x86-msvc2013\5.6\msvc2013\plugins\platforms` to `C:\Python27\Lib\site-packages\PyQt5\platforms`
3. Verify by opening `C:\Python27\python.exe` and typing `import PyQt5.QtCore` it should not error

### Building QScintilla (x86)

1. Extract `QScintilla_gpl-2.9.2.zip` so you have `C:\QScintilla_gpl-2.9.2\README`
2. Copy `QScintilla\python27_32_msvc2013_32_build.bat` to `C:\QScintilla_gpl-2.9.2\python27_32_msvc2013_32_build.bat`
3. Run `C:\QScintilla_gpl-2.9.2\python27_32_msvc2013_32_build.bat`
4. You should now have `C:\Qt\qt-5.6.0-x86-msvc2013\5.6\msvc2013\lib\qscintilla2.dll`
5. Copy `C:\QScintilla_gpl-2.9.2\Qt4Qt5\release\qscintilla2.dll` to `c:\Python27\Lib\site-packages\PyQt5`

### Verifying your installation (x86)

1. Run `C:\Python27\python.exe test\test.py`
2. It should say `Everything appears to be working!`

## x64

### Building sip (x64)

1. Extract `sip-4.18.zip` so you have `C:\sip-4.18\configure.py`
2. Copy `sip\python27_64_msvc2013_64_build.bat` to `C:\sip-4.18\python27_64_msvc2013_64_build.bat`
3. Run `C:\sip-4.18\python27_64_msvc2013_64_build.bat`
4. You should now have `C:\Python27-64\sip.exe`

### Building PyQt5 (x64)

1. Extract `PyQt5_gpl-5.6.zip` so you have `C:\PyQt5_gpl-5.6\configure.py`
2. Copy `PyQt5\python27_64_msvc2013_64_build.bat` to `C:\PyQt5_gpl-5.6\python27_64_msvc2013_64_build.bat`
3. Run `C:\PyQt5_gpl-5.6\python27_64_msvc2013_64_build.bat`

### Copying Qt DLLs (x64)

1. Copy all DLL files in `C:\Qt\qt-5.6.0-x64-msvc2013\5.6\msvc2013_64\bin` to `C:\Python27-64\Lib\site-packages\PyQt5`
2. Copy all DLL files in `C:\Qt\qt-5.6.0-x64-msvc2013\5.6\msvc2013_64\plugins\platforms` to `C:\Python27-64\Lib\site-packages\PyQt5\platforms`
3. Verify by opening `C:\Python27-64\python.exe` and typing `import PyQt5.QtCore` it should not error

### Building QScintilla (x64)

1. Extract `QScintilla_gpl-2.9.2.zip` so you have `C:\QScintilla_gpl-2.9.2\README`
2. Copy `QScintilla\python27_64_msvc2013_64_build.bat` to `C:\QScintilla_gpl-2.9.2\python27_64_msvc2013_64_build.bat`
3. Run `C:\QScintilla_gpl-2.9.2\python27_64_msvc2013_64_build.bat`
4. You should now have `C:\Qt\qt-5.6.0-x64-msvc2013\5.6\msvc2013_64\lib\qscintilla2.dll`
5. Copy `C:\Qt\qt-5.6.0-x64-msvc2013\5.6\msvc2013_64\lib\qscintilla2.dll` to `c:\Python27-64\Lib\site-packages\PyQt5`

### Verifying your installation (x64)

1. Run `C:\Python27-64\python.exe test\test.py`
2. It should say `Everything appears to be working!`

\work\setbinsize\release\setbinsize.exe header.bin 64
\work\setbinsize\release\setbinsize.exe unpack.bin 1024

@rem those are the only files that are stacked

copy /y /b header.bin + /b unpack.bin + /b newstranger.pack /b bank0.bin
copy /y /b header.bin + /b newstranges.pack /b bank1.bin
copy /y /b header.bin + /b newstranget.pack /b bank2.bin
copy /y /b header.bin + /b kopje.txt /b bank3.bin

\work\setbinsize\release\setbinsize.exe bank0.bin 8192
\work\setbinsize\release\setbinsize.exe bank1.bin 8192
\work\setbinsize\release\setbinsize.exe bank2.bin 8192
\work\setbinsize\release\setbinsize.exe bank3.bin 8192

copy /y /b bank0.bin + /b bank1.bin + /b bank2.bin + /b bank3.bin /b stranger32KB8.bin


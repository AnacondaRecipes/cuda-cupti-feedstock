if not exist %PREFIX% mkdir %PREFIX%
if not exist %LIBRARY_LIB%\x64 mkdir %LIBRARY_LIB%\x64
mkdir %PREFIX%/cuda-cupti

move lib\*.lib %LIBRARY_LIB%\x64
move lib\*.dll %LIBRARY_BIN%
move include\* %LIBRARY_INC%
move doc %PREFIX%
move samples %PREFIX%

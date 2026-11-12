if "%TARGET_PLATFORM%" == "win-arm64" (
    set CUDA_ARCH=arm64
) else (
    set CUDA_ARCH=x64
)

if not exist %PREFIX% mkdir %PREFIX%
if not exist %LIBRARY_LIB%\%CUDA_ARCH% mkdir %LIBRARY_LIB%\%CUDA_ARCH%
mkdir %PREFIX%/cuda-cupti

move lib\%CUDA_ARCH%\*.lib %LIBRARY_LIB%\%CUDA_ARCH%
if errorlevel 1 exit /b 1
move lib\%CUDA_ARCH%\*.dll %LIBRARY_BIN%
if errorlevel 1 exit /b 1
if not exist %LIBRARY_LIB%\%CUDA_ARCH%\cupti.lib exit /b 1
if not exist %LIBRARY_BIN%\cupti64_*.dll exit /b 1
move include\* %LIBRARY_INC%
move doc %PREFIX%
move samples %PREFIX%

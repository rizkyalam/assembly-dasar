$BUILD_DIR = "..\build\windows"
if (-not (Test-Path -Path $BUILD_DIR -PathType Container)) {
    New-Item -ItemType Directory -Path $BUILD_DIR -Force
}

nasm -fwin32 .\main.asm -o $BUILD_DIR\main.obj

# should use mingw
gcc $BUILD_DIR\main.obj -o $BUILD_DIR\main.exe

& $BUILD_DIR\main.exe

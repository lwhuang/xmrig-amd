This archive contains several W32 prebuild binaries of GNU libmicrohttpd.

Binaries compiled without external dependencies, so HTTPS is not supported.

Default versions compatible with Vista and later, versions in *-xp directories
compatible with XP and later.

Binaries available for x86 32-bit (directory x86) and x86 64-bit (directory
x86_64).

For MinGW-compiled applications use binaries in directories named MinGW:
MinGW/shared directory contains DLL (shared) versions of library,
MinGW/static directory contains static lib versions.
To install libraries into existing MSYS2-MinGW toolchain, copy content of
static or shared directory to MSYS2 root directory (e.g. copy
libmicrohttpd-0.9.55-w32-bin/x86_64/MinGW/static/mingw64 to 
C:\msys64\ so copied dir becomes C:\msys64\mingw64)

For applications compiled by Visual Studio 2013/2015/2017, use binaries in
VS2013/VS2015/VS2017 directories.
VS201?/Debug-* directories contain versions suitable for debugging,
VS201?/Release-* directories contain versions optimized for release,
VS201?/*-dll contains DLL versions,
VS201?/*-static contains static versions.

I recommend to use static version when possible to avoid conflicts with other
.dlls in present and future and more DLL-Hell related problems. Don't be
afraid of huge size of .lib file - it contains information for link time
optimization. Final application .exe file will grow for less then 120Kb for 
64-bit version and less then 90Kb for 32-bit.

Karlson2k aka Evgeny Grin

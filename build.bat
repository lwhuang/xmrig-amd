SET rootpath=%~dp0

cd src\3rdparty\libuv
call vcbuild release x64


cd %rootpath%
set bdir=buildx64
rmdir /s /q %bdir%
mkdir %bdir%
cd %bdir%


cmake -DUV_LIBRARY=%rootpath%src\3rdparty\libuv\Release\lib\libuv.lib -DUV_INCLUDE_DIR=%rootpath%src\3rdparty\libuv\include -DOpenCL_LIBRARY=%rootpath%lib\OCL_SDK_Light\lib\x86_64\opencl.lib -DOpenCL_INCLUDE_DIR=%rootpath%lib\OCL_SDK_Light\include -DMHD_INCLUDE_DIR=%rootpath%lib\libmicrohttpd-0.9.55-w32-bin\x86_64\VS2015\Release-static -DMHD_LIBRARY=%rootpath%lib\libmicrohttpd-0.9.55-w32-bin\x86_64\VS2015\Release-static\libmicrohttpd.lib -G "Visual Studio 14 2015 Win64" ..

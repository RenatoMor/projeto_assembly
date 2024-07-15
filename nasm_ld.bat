nasm -f win64 -o %~n1.obj "%1"

ld -o %~n1.exe %~n1.obj "C:\msys64\ucrt64\lib\libkernel32.a" "C:\msys64\ucrt64\lib\libmsvcrt.a"

cls

%~n1.exe
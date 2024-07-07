### No C compiler found! "cc", "gcc", "clang", "cl", "zig" are not executable.
For example, windows 10 Home, 64 bit here</br>
* TL;DR: Follow [this guide](https://www.freecodecamp.org/news/how-to-install-c-and-cpp-compiler-on-windows/) 
* Step1: Install MSYS2 from [here](https://www.msys2.org/) (strongly recommend that install it under the default path)
* Step2: Open MSYS2 MSYS, then run command `pacman -Syu` (there is a closure, do it again to finish the rest update)
* Step3: Open MSYS2 MingGW x64, then run command the followings:
    - `pacman -S mingw-w64-x86_64-gcc`
    - `pacman -S mingw-w64-x86_64-gdb`
* Step4: Edit Environment Variables - System variables - Path, add the default installation path `C:\msys64\mingw64\bin`
Not sure about `Install CMake and the Microsoft C++ Build Tools on Windows` is necessary or not</br>


### nvim-treesitter{lang}: Error during compilation </br>cc: fatal error: cannot run command 'cc1': CreateProcess: No such file or directory
Run command command `:checkhealth nvim-tree-sitter`, and this warning shows "tree-sitter executable not found (parser generator, only needed for :TSInstallFromGrammar, not required for :TSInstall)".</br>
Run command `npm install -g tree-sitter-cli` to resolve above warning.</br>
Please note that [windows terminal](https://github.com/microsoft/terminal) is the terminal emulator recommended for `nvim` on windows.</br>
Edit `~/init.lua` to add your prefered languages behind `ensure_installed = { 'bash', 'c', 'html', 'lua', 'luadoc', ...`.</br>

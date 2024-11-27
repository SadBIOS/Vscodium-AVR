### AVR MCU Minimal Development Environment Setup

---
#### Dependencies:

1. [MinGW-w64](https://sourceforge.net/projects/mingw-w64/files/Toolchains%20targetting%20Win64/Personal%20Builds/mingw-builds/8.1.0/threads-posix/seh/) (download the x86_64-posix-seh .7z archive)
2. [AVR-GCC](https://www.microchip.com/en-us/tools-resources/develop/microchip-studio/gcc-compilers)
3. [avrdude](https://github.com/avrdudes/avrdude)
4. [VSCodium](https://github.com/VSCodium/vscodium)
5. [C/C++ Extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode.cpptools)

---

#### Usage:

1. rename ```mingw64/bin/mingw32-make.exe``` to ***make.exe***
2. add **mingw64/bin**, **avr-gcc/bin** and **avrdude** to the OS Environment Variable
3. install Vscodium and C/C++ extension from VS Marketplace (recommended to download VSIX for future use)
4. Follow the Makefile comments

---
**Notes:** Additional USB drivers may be required. Use *Zadig* if needed.

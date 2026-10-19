; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0056eb30, declared_size=8, range_size=8, mode=arm
; class-group: glitch::io::IReadFile
; alias: _ZN6glitch2io9IReadFile9getBufferEPl
; demangled: glitch::io::IReadFile::getBuffer(long*)
; decoder-mode: arm
0056eb30  00 00 a0 e3                                      mov r0, #0
0056eb34  1e ff 2f e1                                      bx lr

; FUNCTION 0x0056eb38, declared_size=8, range_size=8, mode=arm
; class-group: glitch::io::IReadFile
; alias: _ZN6glitch2io9IReadFile17getExternalBufferEPKcPl
; demangled: glitch::io::IReadFile::getExternalBuffer(char const*, long*)
; decoder-mode: arm
0056eb38  00 00 a0 e3                                      mov r0, #0
0056eb3c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0056eb40, declared_size=8, range_size=8, mode=arm
; class-group: glitch::io::IReadFile
; alias: _ZNK6glitch2io9IReadFile13isAllInMemoryEv
; demangled: glitch::io::IReadFile::isAllInMemory() const
; decoder-mode: arm
0056eb40  00 00 a0 e3                                      mov r0, #0
0056eb44  1e ff 2f e1                                      bx lr

; FUNCTION 0x0056eb88, declared_size=4, range_size=4, mode=arm
; class-group: glitch::io::IReadFile
; alias: _ZN6glitch2io9IReadFileD1Ev
; demangled: glitch::io::IReadFile::~IReadFile()
; decoder-mode: arm
0056eb88  1e ff 2f e1                                      bx lr

; FUNCTION 0x0056ef14, declared_size=20, range_size=20, mode=arm
; class-group: glitch::io::IReadFile
; alias: _ZN6glitch2io9IReadFileD0Ev
; demangled: glitch::io::IReadFile::~IReadFile()
; decoder-mode: arm
0056ef14  10 40 2d e9                                      push {r4, lr}
0056ef18  00 40 a0 e1                                      mov r4, r0
0056ef1c  e3 7c f6 eb                                      bl #0x30e2b0
0056ef20  04 00 a0 e1                                      mov r0, r4
0056ef24  10 80 bd e8                                      pop {r4, pc}

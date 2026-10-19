; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005708f4, declared_size=4, range_size=4, mode=arm
; class-group: glitch::io::IWriteFile
; alias: _ZN6glitch2io10IWriteFileD1Ev
; demangled: glitch::io::IWriteFile::~IWriteFile()
; decoder-mode: arm
005708f4  1e ff 2f e1                                      bx lr

; FUNCTION 0x00570a44, declared_size=20, range_size=20, mode=arm
; class-group: glitch::io::IWriteFile
; alias: _ZN6glitch2io10IWriteFileD0Ev
; demangled: glitch::io::IWriteFile::~IWriteFile()
; decoder-mode: arm
00570a44  10 40 2d e9                                      push {r4, lr}
00570a48  00 40 a0 e1                                      mov r4, r0
00570a4c  17 76 f6 eb                                      bl #0x30e2b0
00570a50  04 00 a0 e1                                      mov r0, r4
00570a54  10 80 bd e8                                      pop {r4, pc}

; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006b3e74, declared_size=4, range_size=4, mode=arm
; class-group: glitch::io::IFileList
; alias: _ZN6glitch2io9IFileListD1Ev
; demangled: glitch::io::IFileList::~IFileList()
; decoder-mode: arm
006b3e74  1e ff 2f e1                                      bx lr

; FUNCTION 0x006b3f44, declared_size=20, range_size=20, mode=arm
; class-group: glitch::io::IFileList
; alias: _ZN6glitch2io9IFileListD0Ev
; demangled: glitch::io::IFileList::~IFileList()
; decoder-mode: arm
006b3f44  10 40 2d e9                                      push {r4, lr}
006b3f48  00 40 a0 e1                                      mov r4, r0
006b3f4c  d7 68 f1 eb                                      bl #0x30e2b0
006b3f50  04 00 a0 e1                                      mov r0, r4
006b3f54  10 80 bd e8                                      pop {r4, pc}

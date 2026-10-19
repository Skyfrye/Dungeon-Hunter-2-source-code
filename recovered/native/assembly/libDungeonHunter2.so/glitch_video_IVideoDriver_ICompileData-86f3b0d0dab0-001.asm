; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005a8ae0, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::IVideoDriver::ICompileData
; alias: _ZN6glitch5video12IVideoDriver12ICompileDataD2Ev
; demangled: glitch::video::IVideoDriver::ICompileData::~ICompileData()
; decoder-mode: arm
005a8ae0  1e ff 2f e1                                      bx lr

; FUNCTION 0x005a8ae4, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::IVideoDriver::ICompileData
; alias: _ZN6glitch5video12IVideoDriver12ICompileDataD1Ev
; demangled: glitch::video::IVideoDriver::ICompileData::~ICompileData()
; decoder-mode: arm
005a8ae4  1e ff 2f e1                                      bx lr

; FUNCTION 0x005aa438, declared_size=28, range_size=28, mode=arm
; class-group: glitch::video::IVideoDriver::ICompileData
; alias: _ZN6glitch5video12IVideoDriver12ICompileDataD0Ev
; demangled: glitch::video::IVideoDriver::ICompileData::~ICompileData()
; decoder-mode: arm
005aa438  10 40 2d e9                                      push {r4, lr}
005aa43c  00 40 a0 e1                                      mov r4, r0
005aa440  a7 f9 ff eb                                      bl #0x5a8ae4
005aa444  04 00 a0 e1                                      mov r0, r4
005aa448  98 8f f5 eb                                      bl #0x30e2b0
005aa44c  04 00 a0 e1                                      mov r0, r4
005aa450  10 80 bd e8                                      pop {r4, pc}

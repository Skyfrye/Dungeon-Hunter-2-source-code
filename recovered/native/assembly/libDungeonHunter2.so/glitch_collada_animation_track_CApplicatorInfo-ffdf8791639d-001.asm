; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00667c34, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::animation_track::CApplicatorInfo
; alias: _ZN6glitch7collada15animation_track15CApplicatorInfoD1Ev
; demangled: glitch::collada::animation_track::CApplicatorInfo::~CApplicatorInfo()
; decoder-mode: arm
00667c34  1e ff 2f e1                                      bx lr

; FUNCTION 0x00667cf0, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CApplicatorInfo
; alias: _ZN6glitch7collada15animation_track15CApplicatorInfoD0Ev
; demangled: glitch::collada::animation_track::CApplicatorInfo::~CApplicatorInfo()
; decoder-mode: arm
00667cf0  10 40 2d e9                                      push {r4, lr}
00667cf4  00 40 a0 e1                                      mov r4, r0
00667cf8  6c 99 f2 eb                                      bl #0x30e2b0
00667cfc  04 00 a0 e1                                      mov r0, r4
00667d00  10 80 bd e8                                      pop {r4, pc}

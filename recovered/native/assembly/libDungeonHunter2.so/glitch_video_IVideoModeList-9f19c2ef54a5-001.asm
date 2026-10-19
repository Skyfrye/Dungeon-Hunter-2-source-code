; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00671434, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::IVideoModeList
; alias: _ZN6glitch5video14IVideoModeListD1Ev
; demangled: glitch::video::IVideoModeList::~IVideoModeList()
; decoder-mode: arm
00671434  1e ff 2f e1                                      bx lr

; FUNCTION 0x006715e8, declared_size=20, range_size=20, mode=arm
; class-group: glitch::video::IVideoModeList
; alias: _ZN6glitch5video14IVideoModeListD0Ev
; demangled: glitch::video::IVideoModeList::~IVideoModeList()
; decoder-mode: arm
006715e8  10 40 2d e9                                      push {r4, lr}
006715ec  00 40 a0 e1                                      mov r4, r0
006715f0  2e 73 f2 eb                                      bl #0x30e2b0
006715f4  04 00 a0 e1                                      mov r0, r4
006715f8  10 80 bd e8                                      pop {r4, pc}

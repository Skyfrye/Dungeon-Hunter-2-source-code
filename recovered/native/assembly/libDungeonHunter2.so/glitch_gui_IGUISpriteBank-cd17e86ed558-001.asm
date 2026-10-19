; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0054f78c, declared_size=4, range_size=4, mode=arm
; class-group: glitch::gui::IGUISpriteBank
; alias: _ZN6glitch3gui14IGUISpriteBankD1Ev
; demangled: glitch::gui::IGUISpriteBank::~IGUISpriteBank()
; decoder-mode: arm
0054f78c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0054fd2c, declared_size=20, range_size=20, mode=arm
; class-group: glitch::gui::IGUISpriteBank
; alias: _ZN6glitch3gui14IGUISpriteBankD0Ev
; demangled: glitch::gui::IGUISpriteBank::~IGUISpriteBank()
; decoder-mode: arm
0054fd2c  10 40 2d e9                                      push {r4, lr}
0054fd30  00 40 a0 e1                                      mov r4, r0
0054fd34  5d f9 f6 eb                                      bl #0x30e2b0
0054fd38  04 00 a0 e1                                      mov r0, r4
0054fd3c  10 80 bd e8                                      pop {r4, pc}

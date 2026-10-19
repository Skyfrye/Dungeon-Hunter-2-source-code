; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0053dbcc, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::IGUIFont
; alias: _ZNK6glitch3gui8IGUIFont7getTypeEv
; demangled: glitch::gui::IGUIFont::getType() const
; decoder-mode: arm
0053dbcc  03 00 a0 e3                                      mov r0, #3
0053dbd0  1e ff 2f e1                                      bx lr

; FUNCTION 0x0053dc20, declared_size=4, range_size=4, mode=arm
; class-group: glitch::gui::IGUIFont
; alias: _ZN6glitch3gui8IGUIFontD1Ev
; demangled: glitch::gui::IGUIFont::~IGUIFont()
; decoder-mode: arm
0053dc20  1e ff 2f e1                                      bx lr

; FUNCTION 0x0053eb20, declared_size=20, range_size=20, mode=arm
; class-group: glitch::gui::IGUIFont
; alias: _ZN6glitch3gui8IGUIFontD0Ev
; demangled: glitch::gui::IGUIFont::~IGUIFont()
; decoder-mode: arm
0053eb20  10 40 2d e9                                      push {r4, lr}
0053eb24  00 40 a0 e1                                      mov r4, r0
0053eb28  e0 3d f7 eb                                      bl #0x30e2b0
0053eb2c  04 00 a0 e1                                      mov r0, r4
0053eb30  10 80 bd e8                                      pop {r4, pc}

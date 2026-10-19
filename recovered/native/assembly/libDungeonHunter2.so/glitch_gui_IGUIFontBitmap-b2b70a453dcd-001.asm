; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0053dbd4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::IGUIFontBitmap
; alias: _ZNK6glitch3gui14IGUIFontBitmap7getTypeEv
; demangled: glitch::gui::IGUIFontBitmap::getType() const
; decoder-mode: arm
0053dbd4  00 00 a0 e3                                      mov r0, #0
0053dbd8  1e ff 2f e1                                      bx lr

; FUNCTION 0x0053dc24, declared_size=4, range_size=4, mode=arm
; class-group: glitch::gui::IGUIFontBitmap
; alias: _ZN6glitch3gui14IGUIFontBitmapD1Ev
; demangled: glitch::gui::IGUIFontBitmap::~IGUIFontBitmap()
; decoder-mode: arm
0053dc24  1e ff 2f e1                                      bx lr

; FUNCTION 0x0053eb0c, declared_size=20, range_size=20, mode=arm
; class-group: glitch::gui::IGUIFontBitmap
; alias: _ZN6glitch3gui14IGUIFontBitmapD0Ev
; demangled: glitch::gui::IGUIFontBitmap::~IGUIFontBitmap()
; decoder-mode: arm
0053eb0c  10 40 2d e9                                      push {r4, lr}
0053eb10  00 40 a0 e1                                      mov r4, r0
0053eb14  e5 3d f7 eb                                      bl #0x30e2b0
0053eb18  04 00 a0 e1                                      mov r0, r4
0053eb1c  10 80 bd e8                                      pop {r4, pc}

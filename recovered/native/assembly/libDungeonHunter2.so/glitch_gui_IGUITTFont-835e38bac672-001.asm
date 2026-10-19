; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0055ba30, declared_size=4, range_size=4, mode=arm
; class-group: glitch::gui::IGUITTFont
; alias: _ZN6glitch3gui10IGUITTFont11clearGlyphsEv
; demangled: glitch::gui::IGUITTFont::clearGlyphs()
; decoder-mode: arm
0055ba30  1e ff 2f e1                                      bx lr

; FUNCTION 0x0055bb2c, declared_size=4, range_size=4, mode=arm
; class-group: glitch::gui::IGUITTFont
; alias: _ZN6glitch3gui10IGUITTFontD1Ev
; demangled: glitch::gui::IGUITTFont::~IGUITTFont()
; decoder-mode: arm
0055bb2c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0055c2e4, declared_size=20, range_size=20, mode=arm
; class-group: glitch::gui::IGUITTFont
; alias: _ZN6glitch3gui10IGUITTFontD0Ev
; demangled: glitch::gui::IGUITTFont::~IGUITTFont()
; decoder-mode: arm
0055c2e4  10 40 2d e9                                      push {r4, lr}
0055c2e8  00 40 a0 e1                                      mov r4, r0
0055c2ec  ef c7 f6 eb                                      bl #0x30e2b0
0055c2f0  04 00 a0 e1                                      mov r0, r4
0055c2f4  10 80 bd e8                                      pop {r4, pc}

; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0069ffe4, declared_size=4, range_size=4, mode=arm
; class-group: glitch::gui::ICursorControl
; alias: _ZN6glitch3gui14ICursorControlD1Ev
; demangled: glitch::gui::ICursorControl::~ICursorControl()
; decoder-mode: arm
0069ffe4  1e ff 2f e1                                      bx lr

; FUNCTION 0x006a0500, declared_size=20, range_size=20, mode=arm
; class-group: glitch::gui::ICursorControl
; alias: _ZN6glitch3gui14ICursorControlD0Ev
; demangled: glitch::gui::ICursorControl::~ICursorControl()
; decoder-mode: arm
006a0500  10 40 2d e9                                      push {r4, lr}
006a0504  00 40 a0 e1                                      mov r4, r0
006a0508  68 b7 f1 eb                                      bl #0x30e2b0
006a050c  04 00 a0 e1                                      mov r0, r4
006a0510  10 80 bd e8                                      pop {r4, pc}

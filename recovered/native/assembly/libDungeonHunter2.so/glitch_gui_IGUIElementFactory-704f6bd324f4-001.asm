; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006a56e8, declared_size=4, range_size=4, mode=arm
; class-group: glitch::gui::IGUIElementFactory
; alias: _ZN6glitch3gui18IGUIElementFactoryD1Ev
; demangled: glitch::gui::IGUIElementFactory::~IGUIElementFactory()
; decoder-mode: arm
006a56e8  1e ff 2f e1                                      bx lr

; FUNCTION 0x006a5d58, declared_size=20, range_size=20, mode=arm
; class-group: glitch::gui::IGUIElementFactory
; alias: _ZN6glitch3gui18IGUIElementFactoryD0Ev
; demangled: glitch::gui::IGUIElementFactory::~IGUIElementFactory()
; decoder-mode: arm
006a5d58  10 40 2d e9                                      push {r4, lr}
006a5d5c  00 40 a0 e1                                      mov r4, r0
006a5d60  52 a1 f1 eb                                      bl #0x30e2b0
006a5d64  04 00 a0 e1                                      mov r0, r4
006a5d68  10 80 bd e8                                      pop {r4, pc}

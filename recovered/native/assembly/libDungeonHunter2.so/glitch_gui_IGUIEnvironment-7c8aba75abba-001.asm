; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005353c4, declared_size=4, range_size=4, mode=arm
; class-group: glitch::gui::IGUIEnvironment
; alias: _ZN6glitch3gui15IGUIEnvironmentD1Ev
; demangled: glitch::gui::IGUIEnvironment::~IGUIEnvironment()
; decoder-mode: arm
005353c4  1e ff 2f e1                                      bx lr

; FUNCTION 0x00535cfc, declared_size=20, range_size=20, mode=arm
; class-group: glitch::gui::IGUIEnvironment
; alias: _ZN6glitch3gui15IGUIEnvironmentD0Ev
; demangled: glitch::gui::IGUIEnvironment::~IGUIEnvironment()
; decoder-mode: arm
00535cfc  10 40 2d e9                                      push {r4, lr}
00535d00  00 40 a0 e1                                      mov r4, r0
00535d04  69 61 f7 eb                                      bl #0x30e2b0
00535d08  04 00 a0 e1                                      mov r0, r4
00535d0c  10 80 bd e8                                      pop {r4, pc}

; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0033a99c, declared_size=4, range_size=4, mode=arm
; class-group: EvTouchScreenPress
; alias: _ZN18EvTouchScreenPressD1Ev
; demangled: EvTouchScreenPress::~EvTouchScreenPress()
; decoder-mode: arm
0033a99c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0033b470, declared_size=52, range_size=52, mode=arm
; class-group: EvTouchScreenPress
; alias: _ZN18EvTouchScreenPressD0Ev
; demangled: EvTouchScreenPress::~EvTouchScreenPress()
; decoder-mode: arm
0033b470  24 30 9f e5                                      ldr r3, [pc, #0x24]
0033b474  24 20 9f e5                                      ldr r2, [pc, #0x24]
0033b478  10 40 2d e9                                      push {r4, lr}
0033b47c  03 30 8f e0                                      add r3, pc, r3
0033b480  02 20 93 e7                                      ldr r2, [r3, r2]
0033b484  00 40 a0 e1                                      mov r4, r0
0033b488  08 20 82 e2                                      add r2, r2, #8
0033b48c  00 20 80 e5                                      str r2, [r0]
0033b490  ea 53 ff eb                                      bl #0x310440
0033b494  04 00 a0 e1                                      mov r0, r4
0033b498  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0033b49c  14 96 65 00 b0 0b 00 00                          .byte 0x14, 0x96, 0x65, 0x00, 0xb0, 0x0b, 0x00, 0x00

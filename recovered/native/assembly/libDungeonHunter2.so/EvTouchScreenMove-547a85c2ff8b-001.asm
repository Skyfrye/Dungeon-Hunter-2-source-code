; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0033a9a0, declared_size=4, range_size=4, mode=arm
; class-group: EvTouchScreenMove
; alias: _ZN17EvTouchScreenMoveD1Ev
; demangled: EvTouchScreenMove::~EvTouchScreenMove()
; decoder-mode: arm
0033a9a0  1e ff 2f e1                                      bx lr

; FUNCTION 0x0033b43c, declared_size=52, range_size=52, mode=arm
; class-group: EvTouchScreenMove
; alias: _ZN17EvTouchScreenMoveD0Ev
; demangled: EvTouchScreenMove::~EvTouchScreenMove()
; decoder-mode: arm
0033b43c  24 30 9f e5                                      ldr r3, [pc, #0x24]
0033b440  24 20 9f e5                                      ldr r2, [pc, #0x24]
0033b444  10 40 2d e9                                      push {r4, lr}
0033b448  03 30 8f e0                                      add r3, pc, r3
0033b44c  02 20 93 e7                                      ldr r2, [r3, r2]
0033b450  00 40 a0 e1                                      mov r4, r0
0033b454  08 20 82 e2                                      add r2, r2, #8
0033b458  00 20 80 e5                                      str r2, [r0]
0033b45c  f7 53 ff eb                                      bl #0x310440
0033b460  04 00 a0 e1                                      mov r0, r4
0033b464  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0033b468  48 96 65 00 b0 0b 00 00                          .byte 0x48, 0x96, 0x65, 0x00, 0xb0, 0x0b, 0x00, 0x00

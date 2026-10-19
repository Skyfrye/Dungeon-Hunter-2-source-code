; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0046e6b4, declared_size=4, range_size=4, mode=arm
; class-group: b2CircleDef
; alias: _ZN11b2CircleDefD1Ev
; demangled: b2CircleDef::~b2CircleDef()
; decoder-mode: arm
0046e6b4  1e ff 2f e1                                      bx lr

; FUNCTION 0x0046ea08, declared_size=52, range_size=52, mode=arm
; class-group: b2CircleDef
; alias: _ZN11b2CircleDefD0Ev
; demangled: b2CircleDef::~b2CircleDef()
; decoder-mode: arm
0046ea08  24 30 9f e5                                      ldr r3, [pc, #0x24]
0046ea0c  24 20 9f e5                                      ldr r2, [pc, #0x24]
0046ea10  10 40 2d e9                                      push {r4, lr}
0046ea14  03 30 8f e0                                      add r3, pc, r3
0046ea18  02 20 93 e7                                      ldr r2, [r3, r2]
0046ea1c  00 40 a0 e1                                      mov r4, r0
0046ea20  08 20 82 e2                                      add r2, r2, #8
0046ea24  00 20 80 e5                                      str r2, [r0]
0046ea28  84 86 fa eb                                      bl #0x310440
0046ea2c  04 00 a0 e1                                      mov r0, r4
0046ea30  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0046ea34  7c 60 52 00 18 38 00 00                          .byte 0x7c, 0x60, 0x52, 0x00, 0x18, 0x38, 0x00, 0x00

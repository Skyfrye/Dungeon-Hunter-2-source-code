; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0033d714, declared_size=4, range_size=4, mode=arm
; class-group: EvAcceleration
; alias: _ZN14EvAccelerationD1Ev
; demangled: EvAcceleration::~EvAcceleration()
; decoder-mode: arm
0033d714  1e ff 2f e1                                      bx lr

; FUNCTION 0x0033d748, declared_size=52, range_size=52, mode=arm
; class-group: EvAcceleration
; alias: _ZN14EvAccelerationD0Ev
; demangled: EvAcceleration::~EvAcceleration()
; decoder-mode: arm
0033d748  24 30 9f e5                                      ldr r3, [pc, #0x24]
0033d74c  24 20 9f e5                                      ldr r2, [pc, #0x24]
0033d750  10 40 2d e9                                      push {r4, lr}
0033d754  03 30 8f e0                                      add r3, pc, r3
0033d758  02 20 93 e7                                      ldr r2, [r3, r2]
0033d75c  00 40 a0 e1                                      mov r4, r0
0033d760  08 20 82 e2                                      add r2, r2, #8
0033d764  00 20 80 e5                                      str r2, [r0]
0033d768  34 4b ff eb                                      bl #0x310440
0033d76c  04 00 a0 e1                                      mov r0, r4
0033d770  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0033d774  3c 73 65 00 b0 0b 00 00                          .byte 0x3c, 0x73, 0x65, 0x00, 0xb0, 0x0b, 0x00, 0x00

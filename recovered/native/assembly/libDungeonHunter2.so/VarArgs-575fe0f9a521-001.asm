; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003fab74, declared_size=52, range_size=52, mode=arm
; class-group: VarArgs
; alias: _ZN7VarArgsD1Ev
; demangled: VarArgs::~VarArgs()
; decoder-mode: arm
003fab74  24 30 9f e5                                      ldr r3, [pc, #0x24]
003fab78  24 20 9f e5                                      ldr r2, [pc, #0x24]
003fab7c  10 40 2d e9                                      push {r4, lr}
003fab80  03 30 8f e0                                      add r3, pc, r3
003fab84  02 20 93 e7                                      ldr r2, [r3, r2]
003fab88  00 40 a0 e1                                      mov r4, r0
003fab8c  08 20 82 e2                                      add r2, r2, #8
003fab90  04 20 80 e4                                      str r2, [r0], #4
003fab94  df ff ff eb                                      bl #0x3fab18
003fab98  04 00 a0 e1                                      mov r0, r4
003fab9c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003faba0  10 9f 59 00 88 40 00 00                          .byte 0x10, 0x9f, 0x59, 0x00, 0x88, 0x40, 0x00, 0x00

; FUNCTION 0x003faba8, declared_size=60, range_size=60, mode=arm
; class-group: VarArgs
; alias: _ZN7VarArgsD0Ev
; demangled: VarArgs::~VarArgs()
; decoder-mode: arm
003faba8  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
003fabac  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
003fabb0  10 40 2d e9                                      push {r4, lr}
003fabb4  03 30 8f e0                                      add r3, pc, r3
003fabb8  02 20 93 e7                                      ldr r2, [r3, r2]
003fabbc  00 40 a0 e1                                      mov r4, r0
003fabc0  08 20 82 e2                                      add r2, r2, #8
003fabc4  04 20 80 e4                                      str r2, [r0], #4
003fabc8  d2 ff ff eb                                      bl #0x3fab18
003fabcc  04 00 a0 e1                                      mov r0, r4
003fabd0  1a 56 fc eb                                      bl #0x310440
003fabd4  04 00 a0 e1                                      mov r0, r4
003fabd8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003fabdc  dc 9e 59 00 88 40 00 00                          .byte 0xdc, 0x9e, 0x59, 0x00, 0x88, 0x40, 0x00, 0x00

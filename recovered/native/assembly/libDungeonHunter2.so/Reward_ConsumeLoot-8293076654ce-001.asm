; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004828d0, declared_size=24, range_size=24, mode=arm
; class-group: Reward_ConsumeLoot
; alias: _ZN18Reward_ConsumeLoot7CompileEv
; demangled: Reward_ConsumeLoot::Compile()
; decoder-mode: arm
004828d0  0c 30 90 e5                                      ldr r3, [r0, #0xc]
004828d4  0c 30 93 e5                                      ldr r3, [r3, #0xc]
004828d8  00 00 53 e3                                      cmp r3, #0
004828dc  01 30 a0 a3                                      movge r3, #1
004828e0  08 30 c0 a5                                      strbge r3, [r0, #8]
004828e4  1e ff 2f e1                                      bx lr

; FUNCTION 0x00482a08, declared_size=52, range_size=52, mode=arm
; class-group: Reward_ConsumeLoot
; alias: _ZN18Reward_ConsumeLootD1Ev
; demangled: Reward_ConsumeLoot::~Reward_ConsumeLoot()
; decoder-mode: arm
00482a08  24 30 9f e5                                      ldr r3, [pc, #0x24]
00482a0c  24 20 9f e5                                      ldr r2, [pc, #0x24]
00482a10  10 40 2d e9                                      push {r4, lr}
00482a14  03 30 8f e0                                      add r3, pc, r3
00482a18  02 20 93 e7                                      ldr r2, [r3, r2]
00482a1c  00 40 a0 e1                                      mov r4, r0
00482a20  08 20 82 e2                                      add r2, r2, #8
00482a24  00 20 80 e5                                      str r2, [r0]
00482a28  ae ff ff eb                                      bl #0x4828e8
00482a2c  04 00 a0 e1                                      mov r0, r4
00482a30  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00482a34  7c 20 51 00 5c 42 00 00                          .byte 0x7c, 0x20, 0x51, 0x00, 0x5c, 0x42, 0x00, 0x00

; FUNCTION 0x00482f4c, declared_size=232, range_size=232, mode=arm
; class-group: Reward_ConsumeLoot
; alias: _ZN18Reward_ConsumeLoot34DBG_TraceDetailedRewardInformationEP7__sFILE
; demangled: Reward_ConsumeLoot::DBG_TraceDetailedRewardInformation(__sFILE*)
; decoder-mode: arm
00482f4c  70 40 2d e9                                      push {r4, r5, r6, lr}
00482f50  0c 50 90 e5                                      ldr r5, [r0, #0xc]
00482f54  b8 00 9f e5                                      ldr r0, [pc, #0xb8]
00482f58  01 40 a0 e1                                      mov r4, r1
00482f5c  04 30 a0 e1                                      mov r3, r4
00482f60  00 00 8f e0                                      add r0, pc, r0
00482f64  01 10 a0 e3                                      mov r1, #1
00482f68  1c 20 a0 e3                                      mov r2, #0x1c
00482f6c  89 2d fa eb                                      bl #0x30e598
00482f70  0c 30 95 e5                                      ldr r3, [r5, #0xc]
00482f74  9c 60 9f e5                                      ldr r6, [pc, #0x9c]
00482f78  00 00 53 e3                                      cmp r3, #0
00482f7c  06 60 8f e0                                      add r6, pc, r6
00482f80  04 00 00 ba                                      blt #0x482f98
00482f84  90 20 9f e5                                      ldr r2, [pc, #0x90]
00482f88  02 20 96 e7                                      ldr r2, [r6, r2]
00482f8c  00 20 92 e5                                      ldr r2, [r2]
00482f90  02 00 53 e1                                      cmp r3, r2
00482f94  19 00 00 3a                                      blo #0x483000
00482f98  80 20 9f e5                                      ldr r2, [pc, #0x80]
00482f9c  02 20 8f e0                                      add r2, pc, r2
00482fa0  7c 10 9f e5                                      ldr r1, [pc, #0x7c]
00482fa4  04 00 a0 e1                                      mov r0, r4
00482fa8  01 10 8f e0                                      add r1, pc, r1
00482fac  14 2c fa eb                                      bl #0x30e004
00482fb0  08 30 95 e5                                      ldr r3, [r5, #8]
00482fb4  00 00 53 e3                                      cmp r3, #0
00482fb8  09 00 00 ba                                      blt #0x482fe4
00482fbc  58 20 9f e5                                      ldr r2, [pc, #0x58]
00482fc0  02 20 96 e7                                      ldr r2, [r6, r2]
00482fc4  00 20 92 e5                                      ldr r2, [r2]
00482fc8  02 00 53 e1                                      cmp r3, r2
00482fcc  04 00 00 2a                                      bhs #0x482fe4
00482fd0  50 20 9f e5                                      ldr r2, [pc, #0x50]
00482fd4  02 20 96 e7                                      ldr r2, [r6, r2]
00482fd8  00 20 92 e5                                      ldr r2, [r2]
00482fdc  03 21 92 e7                                      ldr r2, [r2, r3, lsl #2]
00482fe0  01 00 00 ea                                      b #0x482fec
00482fe4  40 20 9f e5                                      ldr r2, [pc, #0x40]
00482fe8  02 20 8f e0                                      add r2, pc, r2
00482fec  3c 10 9f e5                                      ldr r1, [pc, #0x3c]
00482ff0  04 00 a0 e1                                      mov r0, r4
00482ff4  01 10 8f e0                                      add r1, pc, r1
00482ff8  70 40 bd e8                                      pop {r4, r5, r6, lr}
00482ffc  00 2c fa ea                                      b #0x30e004
00483000  20 20 9f e5                                      ldr r2, [pc, #0x20]
00483004  02 20 96 e7                                      ldr r2, [r6, r2]
00483008  00 20 92 e5                                      ldr r2, [r2]
0048300c  03 21 92 e7                                      ldr r2, [r2, r3, lsl #2]
00483010  e2 ff ff ea                                      b #0x482fa0
; mapping-symbol data/literal pool
00483014  90 b4 44 00 14 1b 51 00 60 0d 00 00 74 c8 43 00  .byte 0x90, 0xb4, 0x44, 0x00, 0x14, 0x1b, 0x51, 0x00, 0x60, 0x0d, 0x00, 0x00, 0x74, 0xc8, 0x43, 0x00
00483024  68 b4 44 00 54 1c 00 00 28 c8 43 00 34 b4 44 00  .byte 0x68, 0xb4, 0x44, 0x00, 0x54, 0x1c, 0x00, 0x00, 0x28, 0xc8, 0x43, 0x00, 0x34, 0xb4, 0x44, 0x00

; FUNCTION 0x00483034, declared_size=84, range_size=84, mode=arm
; class-group: Reward_ConsumeLoot
; alias: _ZN18Reward_ConsumeLoot4GiveEv
; demangled: Reward_ConsumeLoot::Give()
; decoder-mode: arm
00483034  70 40 2d e9                                      push {r4, r5, r6, lr}
00483038  08 30 d0 e5                                      ldrb r3, [r0, #8]
0048303c  00 40 a0 e1                                      mov r4, r0
00483040  0c 50 90 e5                                      ldr r5, [r0, #0xc]
00483044  00 00 53 e3                                      cmp r3, #0
00483048  01 00 00 1a                                      bne #0x483054
0048304c  00 00 a0 e3                                      mov r0, #0
00483050  70 80 bd e8                                      pop {r4, r5, r6, pc}
00483054  10 00 90 e5                                      ldr r0, [r0, #0x10]
00483058  0c 10 95 e5                                      ldr r1, [r5, #0xc]
0048305c  08 20 95 e5                                      ldr r2, [r5, #8]
00483060  df 0f 80 e2                                      add r0, r0, #0x37c
00483064  7b ed fd eb                                      bl #0x3fe658
00483068  00 00 50 e3                                      cmp r0, #0
0048306c  f6 ff ff 1a                                      bne #0x48304c
00483070  10 00 94 e5                                      ldr r0, [r4, #0x10]
00483074  0c 10 95 e5                                      ldr r1, [r5, #0xc]
00483078  df 0f 80 e2                                      add r0, r0, #0x37c
0048307c  36 e8 fd eb                                      bl #0x3fd15c
00483080  00 00 a0 e3                                      mov r0, #0
00483084  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0048380c, declared_size=60, range_size=60, mode=arm
; class-group: Reward_ConsumeLoot
; alias: _ZN18Reward_ConsumeLootD0Ev
; demangled: Reward_ConsumeLoot::~Reward_ConsumeLoot()
; decoder-mode: arm
0048380c  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
00483810  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
00483814  10 40 2d e9                                      push {r4, lr}
00483818  03 30 8f e0                                      add r3, pc, r3
0048381c  02 20 93 e7                                      ldr r2, [r3, r2]
00483820  00 40 a0 e1                                      mov r4, r0
00483824  08 20 82 e2                                      add r2, r2, #8
00483828  00 20 80 e5                                      str r2, [r0]
0048382c  2d fc ff eb                                      bl #0x4828e8
00483830  04 00 a0 e1                                      mov r0, r4
00483834  01 33 fa eb                                      bl #0x310440
00483838  04 00 a0 e1                                      mov r0, r4
0048383c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00483840  78 12 51 00 5c 42 00 00                          .byte 0x78, 0x12, 0x51, 0x00, 0x5c, 0x42, 0x00, 0x00

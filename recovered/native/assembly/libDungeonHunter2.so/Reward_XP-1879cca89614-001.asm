; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00482894, declared_size=20, range_size=20, mode=arm
; class-group: Reward_XP
; alias: _ZN9Reward_XP7CompileEv
; demangled: Reward_XP::Compile()
; decoder-mode: arm
00482894  0c 30 90 e5                                      ldr r3, [r0, #0xc]
00482898  01 20 a0 e3                                      mov r2, #1
0048289c  08 20 c0 e5                                      strb r2, [r0, #8]
004828a0  14 30 80 e5                                      str r3, [r0, #0x14]
004828a4  1e ff 2f e1                                      bx lr

; FUNCTION 0x00482aa4, declared_size=52, range_size=52, mode=arm
; class-group: Reward_XP
; alias: _ZN9Reward_XPD1Ev
; demangled: Reward_XP::~Reward_XP()
; decoder-mode: arm
00482aa4  24 30 9f e5                                      ldr r3, [pc, #0x24]
00482aa8  24 20 9f e5                                      ldr r2, [pc, #0x24]
00482aac  10 40 2d e9                                      push {r4, lr}
00482ab0  03 30 8f e0                                      add r3, pc, r3
00482ab4  02 20 93 e7                                      ldr r2, [r3, r2]
00482ab8  00 40 a0 e1                                      mov r4, r0
00482abc  08 20 82 e2                                      add r2, r2, #8
00482ac0  00 20 80 e5                                      str r2, [r0]
00482ac4  87 ff ff eb                                      bl #0x4828e8
00482ac8  04 00 a0 e1                                      mov r0, r4
00482acc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00482ad0  e0 1f 51 00 dc 1b 00 00                          .byte 0xe0, 0x1f, 0x51, 0x00, 0xdc, 0x1b, 0x00, 0x00

; FUNCTION 0x00483160, declared_size=140, range_size=140, mode=arm
; class-group: Reward_XP
; alias: _ZN9Reward_XP34DBG_TraceDetailedRewardInformationEP7__sFILE
; demangled: Reward_XP::DBG_TraceDetailedRewardInformation(__sFILE*)
; decoder-mode: arm
00483160  70 40 2d e9                                      push {r4, r5, r6, lr}
00483164  0c 60 90 e5                                      ldr r6, [r0, #0xc]
00483168  64 00 9f e5                                      ldr r0, [pc, #0x64]
0048316c  01 50 a0 e1                                      mov r5, r1
00483170  01 30 a0 e1                                      mov r3, r1
00483174  17 20 a0 e3                                      mov r2, #0x17
00483178  01 10 a0 e3                                      mov r1, #1
0048317c  00 00 8f e0                                      add r0, pc, r0
00483180  50 40 9f e5                                      ldr r4, [pc, #0x50]
00483184  03 2d fa eb                                      bl #0x30e598
00483188  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
0048318c  04 40 8f e0                                      add r4, pc, r4
00483190  48 10 9f e5                                      ldr r1, [pc, #0x48]
00483194  03 30 94 e7                                      ldr r3, [r4, r3]
00483198  04 20 96 e5                                      ldr r2, [r6, #4]
0048319c  01 10 8f e0                                      add r1, pc, r1
004831a0  2c 00 93 e5                                      ldr r0, [r3, #0x2c]
004831a4  57 06 01 eb                                      bl #0x4c4b08
004831a8  34 10 9f e5                                      ldr r1, [pc, #0x34]
004831ac  00 20 a0 e1                                      mov r2, r0
004831b0  05 00 a0 e1                                      mov r0, r5
004831b4  01 10 8f e0                                      add r1, pc, r1
004831b8  91 2b fa eb                                      bl #0x30e004
004831bc  24 10 9f e5                                      ldr r1, [pc, #0x24]
004831c0  08 20 96 e5                                      ldr r2, [r6, #8]
004831c4  05 00 a0 e1                                      mov r0, r5
004831c8  01 10 8f e0                                      add r1, pc, r1
004831cc  70 40 bd e8                                      pop {r4, r5, r6, lr}
004831d0  8b 2b fa ea                                      b #0x30e004
; mapping-symbol data/literal pool
004831d4  f4 b2 44 00 04 19 51 00 f4 37 00 00 3c b2 44 00  .byte 0xf4, 0xb2, 0x44, 0x00, 0x04, 0x19, 0x51, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x3c, 0xb2, 0x44, 0x00
004831e4  d4 ab 44 00 c0 b2 44 00                          .byte 0xd4, 0xab, 0x44, 0x00, 0xc0, 0xb2, 0x44, 0x00

; FUNCTION 0x00483420, declared_size=96, range_size=96, mode=arm
; class-group: Reward_XP
; alias: _ZN9Reward_XP4GiveEv
; demangled: Reward_XP::Give()
; decoder-mode: arm
00483420  10 40 2d e9                                      push {r4, lr}
00483424  00 40 a0 e1                                      mov r4, r0
00483428  08 00 d0 e5                                      ldrb r0, [r0, #8]
0048342c  00 00 50 e3                                      cmp r0, #0
00483430  00 00 00 1a                                      bne #0x483438
00483434  10 80 bd e8                                      pop {r4, pc}
00483438  14 30 94 e5                                      ldr r3, [r4, #0x14]
0048343c  10 00 94 e5                                      ldr r0, [r4, #0x10]
00483440  01 20 a0 e3                                      mov r2, #1
00483444  08 10 93 e5                                      ldr r1, [r3, #8]
00483448  01 14 a0 e1                                      lsl r1, r1, #8
0048344c  11 f0 fc eb                                      bl #0x3bf498
00483450  00 00 50 e3                                      cmp r0, #0
00483454  07 00 00 0a                                      beq #0x483478
00483458  14 30 94 e5                                      ldr r3, [r4, #0x14]
0048345c  10 20 94 e5                                      ldr r2, [r4, #0x10]
00483460  01 00 a0 e3                                      mov r0, #1
00483464  08 10 93 e5                                      ldr r1, [r3, #8]
00483468  04 35 01 e3                                      movw r3, #0x1504
0048346c  01 14 a0 e1                                      lsl r1, r1, #8
00483470  03 10 82 e7                                      str r1, [r2, r3]
00483474  10 80 bd e8                                      pop {r4, pc}
00483478  01 00 a0 e3                                      mov r0, #1
0048347c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004838c0, declared_size=60, range_size=60, mode=arm
; class-group: Reward_XP
; alias: _ZN9Reward_XPD0Ev
; demangled: Reward_XP::~Reward_XP()
; decoder-mode: arm
004838c0  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
004838c4  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
004838c8  10 40 2d e9                                      push {r4, lr}
004838cc  03 30 8f e0                                      add r3, pc, r3
004838d0  02 20 93 e7                                      ldr r2, [r3, r2]
004838d4  00 40 a0 e1                                      mov r4, r0
004838d8  08 20 82 e2                                      add r2, r2, #8
004838dc  00 20 80 e5                                      str r2, [r0]
004838e0  00 fc ff eb                                      bl #0x4828e8
004838e4  04 00 a0 e1                                      mov r0, r4
004838e8  d4 32 fa eb                                      bl #0x310440
004838ec  04 00 a0 e1                                      mov r0, r4
004838f0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004838f4  c4 11 51 00 dc 1b 00 00                          .byte 0xc4, 0x11, 0x51, 0x00, 0xdc, 0x1b, 0x00, 0x00

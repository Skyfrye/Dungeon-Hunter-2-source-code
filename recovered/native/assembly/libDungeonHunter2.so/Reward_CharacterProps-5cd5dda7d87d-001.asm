; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004828a8, declared_size=20, range_size=20, mode=arm
; class-group: Reward_CharacterProps
; alias: _ZN21Reward_CharacterProps7CompileEv
; demangled: Reward_CharacterProps::Compile()
; decoder-mode: arm
004828a8  0c 30 90 e5                                      ldr r3, [r0, #0xc]
004828ac  01 20 a0 e3                                      mov r2, #1
004828b0  08 20 c0 e5                                      strb r2, [r0, #8]
004828b4  14 30 80 e5                                      str r3, [r0, #0x14]
004828b8  1e ff 2f e1                                      bx lr

; FUNCTION 0x00482a70, declared_size=52, range_size=52, mode=arm
; class-group: Reward_CharacterProps
; alias: _ZN21Reward_CharacterPropsD1Ev
; demangled: Reward_CharacterProps::~Reward_CharacterProps()
; decoder-mode: arm
00482a70  24 30 9f e5                                      ldr r3, [pc, #0x24]
00482a74  24 20 9f e5                                      ldr r2, [pc, #0x24]
00482a78  10 40 2d e9                                      push {r4, lr}
00482a7c  03 30 8f e0                                      add r3, pc, r3
00482a80  02 20 93 e7                                      ldr r2, [r3, r2]
00482a84  00 40 a0 e1                                      mov r4, r0
00482a88  08 20 82 e2                                      add r2, r2, #8
00482a8c  00 20 80 e5                                      str r2, [r0]
00482a90  94 ff ff eb                                      bl #0x4828e8
00482a94  04 00 a0 e1                                      mov r0, r4
00482a98  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00482a9c  14 20 51 00 c4 19 00 00                          .byte 0x14, 0x20, 0x51, 0x00, 0xc4, 0x19, 0x00, 0x00

; FUNCTION 0x00483330, declared_size=184, range_size=184, mode=arm
; class-group: Reward_CharacterProps
; alias: _ZN21Reward_CharacterProps34DBG_TraceDetailedRewardInformationEP7__sFILE
; demangled: Reward_CharacterProps::DBG_TraceDetailedRewardInformation(__sFILE*)
; decoder-mode: arm
00483330  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00483334  00 70 a0 e1                                      mov r7, r0
00483338  8c 00 9f e5                                      ldr r0, [pc, #0x8c]
0048333c  01 40 a0 e1                                      mov r4, r1
00483340  01 30 a0 e1                                      mov r3, r1
00483344  1e 20 a0 e3                                      mov r2, #0x1e
00483348  01 10 a0 e3                                      mov r1, #1
0048334c  00 00 8f e0                                      add r0, pc, r0
00483350  78 50 9f e5                                      ldr r5, [pc, #0x78]
00483354  0c 60 97 e5                                      ldr r6, [r7, #0xc]
00483358  8e 2c fa eb                                      bl #0x30e598
0048335c  70 30 9f e5                                      ldr r3, [pc, #0x70]
00483360  05 50 8f e0                                      add r5, pc, r5
00483364  6c 10 9f e5                                      ldr r1, [pc, #0x6c]
00483368  03 30 95 e7                                      ldr r3, [r5, r3]
0048336c  04 20 96 e5                                      ldr r2, [r6, #4]
00483370  01 10 8f e0                                      add r1, pc, r1
00483374  2c 00 93 e5                                      ldr r0, [r3, #0x2c]
00483378  e2 05 01 eb                                      bl #0x4c4b08
0048337c  58 10 9f e5                                      ldr r1, [pc, #0x58]
00483380  00 20 a0 e1                                      mov r2, r0
00483384  04 00 a0 e1                                      mov r0, r4
00483388  01 10 8f e0                                      add r1, pc, r1
0048338c  1c 2b fa eb                                      bl #0x30e004
00483390  48 10 9f e5                                      ldr r1, [pc, #0x48]
00483394  08 20 96 e5                                      ldr r2, [r6, #8]
00483398  04 00 a0 e1                                      mov r0, r4
0048339c  01 10 8f e0                                      add r1, pc, r1
004833a0  17 2b fa eb                                      bl #0x30e004
004833a4  18 00 97 e5                                      ldr r0, [r7, #0x18]
004833a8  0c 10 96 e5                                      ldr r1, [r6, #0xc]
004833ac  56 0e 80 e2                                      add r0, r0, #0x560
004833b0  24 6d fd eb                                      bl #0x3de848
004833b4  28 10 9f e5                                      ldr r1, [pc, #0x28]
004833b8  00 20 a0 e1                                      mov r2, r0
004833bc  04 00 a0 e1                                      mov r0, r4
004833c0  01 10 8f e0                                      add r1, pc, r1
004833c4  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
004833c8  0d 2b fa ea                                      b #0x30e004
; mapping-symbol data/literal pool
004833cc  c4 b1 44 00 30 17 51 00 f4 37 00 00 68 b0 44 00  .byte 0xc4, 0xb1, 0x44, 0x00, 0x30, 0x17, 0x51, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x68, 0xb0, 0x44, 0x00
004833dc  00 aa 44 00 94 b1 44 00 88 b1 44 00              .byte 0x00, 0xaa, 0x44, 0x00, 0x94, 0xb1, 0x44, 0x00, 0x88, 0xb1, 0x44, 0x00

; FUNCTION 0x004833e8, declared_size=56, range_size=56, mode=arm
; class-group: Reward_CharacterProps
; alias: _ZN21Reward_CharacterProps4GiveEv
; demangled: Reward_CharacterProps::Give()
; decoder-mode: arm
004833e8  10 40 2d e9                                      push {r4, lr}
004833ec  08 30 d0 e5                                      ldrb r3, [r0, #8]
004833f0  00 00 53 e3                                      cmp r3, #0
004833f4  01 00 00 1a                                      bne #0x483400
004833f8  03 00 a0 e1                                      mov r0, r3
004833fc  10 80 bd e8                                      pop {r4, pc}
00483400  14 30 90 e5                                      ldr r3, [r0, #0x14]
00483404  18 00 90 e5                                      ldr r0, [r0, #0x18]
00483408  08 20 93 e5                                      ldr r2, [r3, #8]
0048340c  0c 10 93 e5                                      ldr r1, [r3, #0xc]
00483410  02 24 a0 e1                                      lsl r2, r2, #8
00483414  96 e9 fc eb                                      bl #0x3bda74
00483418  01 00 a0 e3                                      mov r0, #1
0048341c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00483884, declared_size=60, range_size=60, mode=arm
; class-group: Reward_CharacterProps
; alias: _ZN21Reward_CharacterPropsD0Ev
; demangled: Reward_CharacterProps::~Reward_CharacterProps()
; decoder-mode: arm
00483884  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
00483888  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
0048388c  10 40 2d e9                                      push {r4, lr}
00483890  03 30 8f e0                                      add r3, pc, r3
00483894  02 20 93 e7                                      ldr r2, [r3, r2]
00483898  00 40 a0 e1                                      mov r4, r0
0048389c  08 20 82 e2                                      add r2, r2, #8
004838a0  00 20 80 e5                                      str r2, [r0]
004838a4  0f fc ff eb                                      bl #0x4828e8
004838a8  04 00 a0 e1                                      mov r0, r4
004838ac  e3 32 fa eb                                      bl #0x310440
004838b0  04 00 a0 e1                                      mov r0, r4
004838b4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004838b8  00 12 51 00 c4 19 00 00                          .byte 0x00, 0x12, 0x51, 0x00, 0xc4, 0x19, 0x00, 0x00

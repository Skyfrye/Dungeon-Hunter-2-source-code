; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d3630, declared_size=48, range_size=48, mode=arm
; class-group: Structs::PlayAnimById
; alias: _ZN7Structs12PlayAnimById8finalizeEv
; demangled: Structs::PlayAnimById::finalize()
; decoder-mode: arm
004d3630  10 40 2d e9                                      push {r4, lr}
004d3634  00 40 a0 e1                                      mov r4, r0
004d3638  14 00 90 e5                                      ldr r0, [r0, #0x14]
004d363c  00 00 50 e3                                      cmp r0, #0
004d3640  03 00 00 0a                                      beq #0x4d3654
004d3644  7d f3 f8 eb                                      bl #0x310440
004d3648  00 30 a0 e3                                      mov r3, #0
004d364c  10 30 84 e5                                      str r3, [r4, #0x10]
004d3650  14 30 84 e5                                      str r3, [r4, #0x14]
004d3654  04 00 a0 e1                                      mov r0, r4
004d3658  10 40 bd e8                                      pop {r4, lr}
004d365c  81 cd ff ea                                      b #0x4c6c68

; FUNCTION 0x004d3660, declared_size=72, range_size=72, mode=arm
; class-group: Structs::PlayAnimById
; alias: _ZN7Structs12PlayAnimByIdD1Ev
; demangled: Structs::PlayAnimById::~PlayAnimById()
; decoder-mode: arm
004d3660  10 40 2d e9                                      push {r4, lr}
004d3664  34 30 9f e5                                      ldr r3, [pc, #0x34]
004d3668  34 20 9f e5                                      ldr r2, [pc, #0x34]
004d366c  00 40 a0 e1                                      mov r4, r0
004d3670  03 30 8f e0                                      add r3, pc, r3
004d3674  14 00 90 e5                                      ldr r0, [r0, #0x14]
004d3678  02 20 93 e7                                      ldr r2, [r3, r2]
004d367c  00 00 50 e3                                      cmp r0, #0
004d3680  08 20 82 e2                                      add r2, r2, #8
004d3684  00 20 84 e5                                      str r2, [r4]
004d3688  00 00 00 0a                                      beq #0x4d3690
004d368c  6b f3 f8 eb                                      bl #0x310440
004d3690  04 00 a0 e1                                      mov r0, r4
004d3694  71 cd ff eb                                      bl #0x4c6c60
004d3698  04 00 a0 e1                                      mov r0, r4
004d369c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d36a0  20 14 4c 00 a4 49 00 00                          .byte 0x20, 0x14, 0x4c, 0x00, 0xa4, 0x49, 0x00, 0x00

; FUNCTION 0x004d36a8, declared_size=28, range_size=28, mode=arm
; class-group: Structs::PlayAnimById
; alias: _ZN7Structs12PlayAnimByIdD0Ev
; demangled: Structs::PlayAnimById::~PlayAnimById()
; decoder-mode: arm
004d36a8  10 40 2d e9                                      push {r4, lr}
004d36ac  00 40 a0 e1                                      mov r4, r0
004d36b0  ea ff ff eb                                      bl #0x4d3660
004d36b4  04 00 a0 e1                                      mov r0, r4
004d36b8  60 f3 f8 eb                                      bl #0x310440
004d36bc  04 00 a0 e1                                      mov r0, r4
004d36c0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d36c4, declared_size=72, range_size=72, mode=arm
; class-group: Structs::PlayAnimById
; alias: _ZN7Structs12PlayAnimByIdD2Ev
; demangled: Structs::PlayAnimById::~PlayAnimById()
; decoder-mode: arm
004d36c4  10 40 2d e9                                      push {r4, lr}
004d36c8  34 30 9f e5                                      ldr r3, [pc, #0x34]
004d36cc  34 20 9f e5                                      ldr r2, [pc, #0x34]
004d36d0  00 40 a0 e1                                      mov r4, r0
004d36d4  03 30 8f e0                                      add r3, pc, r3
004d36d8  14 00 90 e5                                      ldr r0, [r0, #0x14]
004d36dc  02 20 93 e7                                      ldr r2, [r3, r2]
004d36e0  00 00 50 e3                                      cmp r0, #0
004d36e4  08 20 82 e2                                      add r2, r2, #8
004d36e8  00 20 84 e5                                      str r2, [r4]
004d36ec  00 00 00 0a                                      beq #0x4d36f4
004d36f0  52 f3 f8 eb                                      bl #0x310440
004d36f4  04 00 a0 e1                                      mov r0, r4
004d36f8  58 cd ff eb                                      bl #0x4c6c60
004d36fc  04 00 a0 e1                                      mov r0, r4
004d3700  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d3704  bc 13 4c 00 a4 49 00 00                          .byte 0xbc, 0x13, 0x4c, 0x00, 0xa4, 0x49, 0x00, 0x00

; FUNCTION 0x00502594, declared_size=308, range_size=308, mode=arm
; class-group: Structs::PlayAnimById
; alias: _ZN7Structs12PlayAnimById4readEP11IStreamBase
; demangled: Structs::PlayAnimById::read(IStreamBase*)
; decoder-mode: arm
00502594  70 40 2d e9                                      push {r4, r5, r6, lr}
00502598  00 40 a0 e1                                      mov r4, r0
0050259c  08 d0 4d e2                                      sub sp, sp, #8
005025a0  01 50 a0 e1                                      mov r5, r1
005025a4  9f f4 ff eb                                      bl #0x4ff828
005025a8  05 00 a0 e1                                      mov r0, r5
005025ac  08 10 84 e2                                      add r1, r4, #8
005025b0  b6 5a fd eb                                      bl #0x459090
005025b4  01 30 a0 e3                                      mov r3, #1
005025b8  00 00 53 e3                                      cmp r3, #0
005025bc  04 30 8d e5                                      str r3, [sp, #4]
005025c0  0f 00 00 1a                                      bne #0x502604
005025c4  09 30 84 e2                                      add r3, r4, #9
005025c8  0a 20 84 e2                                      add r2, r4, #0xa
005025cc  01 00 d2 e5                                      ldrb r0, [r2, #1]
005025d0  01 10 53 e5                                      ldrb r1, [r3, #-1]
005025d4  03 00 52 e1                                      cmp r2, r3
005025d8  01 10 20 e0                                      eor r1, r0, r1
005025dc  01 10 43 e5                                      strb r1, [r3, #-1]
005025e0  01 00 d2 e5                                      ldrb r0, [r2, #1]
005025e4  00 10 21 e0                                      eor r1, r1, r0
005025e8  01 10 c2 e5                                      strb r1, [r2, #1]
005025ec  01 00 53 e5                                      ldrb r0, [r3, #-1]
005025f0  01 20 42 e2                                      sub r2, r2, #1
005025f4  00 10 21 e0                                      eor r1, r1, r0
005025f8  01 10 43 e5                                      strb r1, [r3, #-1]
005025fc  01 30 83 e2                                      add r3, r3, #1
00502600  f1 ff ff 8a                                      bhi #0x5025cc
00502604  0c 10 84 e2                                      add r1, r4, #0xc
00502608  05 00 a0 e1                                      mov r0, r5
0050260c  a2 64 ff eb                                      bl #0x4db89c
00502610  05 00 a0 e1                                      mov r0, r5
00502614  10 10 84 e2                                      add r1, r4, #0x10
00502618  e0 72 fb eb                                      bl #0x3df1a0
0050261c  01 30 a0 e3                                      mov r3, #1
00502620  00 00 53 e3                                      cmp r3, #0
00502624  04 30 8d e5                                      str r3, [sp, #4]
00502628  0f 00 00 1a                                      bne #0x50266c
0050262c  11 30 84 e2                                      add r3, r4, #0x11
00502630  12 20 84 e2                                      add r2, r4, #0x12
00502634  01 00 d2 e5                                      ldrb r0, [r2, #1]
00502638  01 10 53 e5                                      ldrb r1, [r3, #-1]
0050263c  02 00 53 e1                                      cmp r3, r2
00502640  01 10 20 e0                                      eor r1, r0, r1
00502644  01 10 43 e5                                      strb r1, [r3, #-1]
00502648  01 00 d2 e5                                      ldrb r0, [r2, #1]
0050264c  00 10 21 e0                                      eor r1, r1, r0
00502650  01 10 c2 e5                                      strb r1, [r2, #1]
00502654  01 00 53 e5                                      ldrb r0, [r3, #-1]
00502658  01 20 42 e2                                      sub r2, r2, #1
0050265c  00 10 21 e0                                      eor r1, r1, r0
00502660  01 10 43 e5                                      strb r1, [r3, #-1]
00502664  01 30 83 e2                                      add r3, r3, #1
00502668  f1 ff ff 3a                                      blo #0x502634
0050266c  14 00 94 e5                                      ldr r0, [r4, #0x14]
00502670  00 00 50 e3                                      cmp r0, #0
00502674  00 00 00 0a                                      beq #0x50267c
00502678  70 37 f8 eb                                      bl #0x310440
0050267c  10 00 94 e5                                      ldr r0, [r4, #0x10]
00502680  01 10 a0 e3                                      mov r1, #1
00502684  00 60 a0 e3                                      mov r6, #0
00502688  01 00 80 e0                                      add r0, r0, r1
0050268c  b6 37 f8 eb                                      bl #0x31056c
00502690  10 20 94 e5                                      ldr r2, [r4, #0x10]
00502694  00 10 a0 e1                                      mov r1, r0
00502698  14 00 84 e5                                      str r0, [r4, #0x14]
0050269c  06 30 a0 e1                                      mov r3, r6
005026a0  05 00 a0 e1                                      mov r0, r5
005026a4  6a 53 f8 eb                                      bl #0x317454
005026a8  14 20 94 e5                                      ldr r2, [r4, #0x14]
005026ac  10 30 94 e5                                      ldr r3, [r4, #0x10]
005026b0  05 00 a0 e1                                      mov r0, r5
005026b4  18 10 84 e2                                      add r1, r4, #0x18
005026b8  03 60 c2 e7                                      strb r6, [r2, r3]
005026bc  76 64 ff eb                                      bl #0x4db89c
005026c0  08 d0 8d e2                                      add sp, sp, #8
005026c4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d2694, declared_size=76, range_size=76, mode=arm
; class-group: Structs::MoveActor
; alias: _ZN7Structs9MoveActor8finalizeEv
; demangled: Structs::MoveActor::finalize()
; decoder-mode: arm
004d2694  10 40 2d e9                                      push {r4, lr}
004d2698  00 40 a0 e1                                      mov r4, r0
004d269c  0c 00 90 e5                                      ldr r0, [r0, #0xc]
004d26a0  00 00 50 e3                                      cmp r0, #0
004d26a4  03 00 00 0a                                      beq #0x4d26b8
004d26a8  64 f7 f8 eb                                      bl #0x310440
004d26ac  00 30 a0 e3                                      mov r3, #0
004d26b0  08 30 84 e5                                      str r3, [r4, #8]
004d26b4  0c 30 84 e5                                      str r3, [r4, #0xc]
004d26b8  18 00 94 e5                                      ldr r0, [r4, #0x18]
004d26bc  00 00 50 e3                                      cmp r0, #0
004d26c0  03 00 00 0a                                      beq #0x4d26d4
004d26c4  5d f7 f8 eb                                      bl #0x310440
004d26c8  00 30 a0 e3                                      mov r3, #0
004d26cc  14 30 84 e5                                      str r3, [r4, #0x14]
004d26d0  18 30 84 e5                                      str r3, [r4, #0x18]
004d26d4  04 00 a0 e1                                      mov r0, r4
004d26d8  10 40 bd e8                                      pop {r4, lr}
004d26dc  61 d1 ff ea                                      b #0x4c6c68

; FUNCTION 0x004d26e0, declared_size=88, range_size=88, mode=arm
; class-group: Structs::MoveActor
; alias: _ZN7Structs9MoveActorD1Ev
; demangled: Structs::MoveActor::~MoveActor()
; decoder-mode: arm
004d26e0  10 40 2d e9                                      push {r4, lr}
004d26e4  44 30 9f e5                                      ldr r3, [pc, #0x44]
004d26e8  44 20 9f e5                                      ldr r2, [pc, #0x44]
004d26ec  00 40 a0 e1                                      mov r4, r0
004d26f0  03 30 8f e0                                      add r3, pc, r3
004d26f4  0c 00 90 e5                                      ldr r0, [r0, #0xc]
004d26f8  02 20 93 e7                                      ldr r2, [r3, r2]
004d26fc  00 00 50 e3                                      cmp r0, #0
004d2700  08 20 82 e2                                      add r2, r2, #8
004d2704  00 20 84 e5                                      str r2, [r4]
004d2708  00 00 00 0a                                      beq #0x4d2710
004d270c  4b f7 f8 eb                                      bl #0x310440
004d2710  18 00 94 e5                                      ldr r0, [r4, #0x18]
004d2714  00 00 50 e3                                      cmp r0, #0
004d2718  00 00 00 0a                                      beq #0x4d2720
004d271c  47 f7 f8 eb                                      bl #0x310440
004d2720  04 00 a0 e1                                      mov r0, r4
004d2724  4d d1 ff eb                                      bl #0x4c6c60
004d2728  04 00 a0 e1                                      mov r0, r4
004d272c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d2730  a0 23 4c 00 24 1b 00 00                          .byte 0xa0, 0x23, 0x4c, 0x00, 0x24, 0x1b, 0x00, 0x00

; FUNCTION 0x004d2738, declared_size=28, range_size=28, mode=arm
; class-group: Structs::MoveActor
; alias: _ZN7Structs9MoveActorD0Ev
; demangled: Structs::MoveActor::~MoveActor()
; decoder-mode: arm
004d2738  10 40 2d e9                                      push {r4, lr}
004d273c  00 40 a0 e1                                      mov r4, r0
004d2740  e6 ff ff eb                                      bl #0x4d26e0
004d2744  04 00 a0 e1                                      mov r0, r4
004d2748  3c f7 f8 eb                                      bl #0x310440
004d274c  04 00 a0 e1                                      mov r0, r4
004d2750  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d2754, declared_size=88, range_size=88, mode=arm
; class-group: Structs::MoveActor
; alias: _ZN7Structs9MoveActorD2Ev
; demangled: Structs::MoveActor::~MoveActor()
; decoder-mode: arm
004d2754  10 40 2d e9                                      push {r4, lr}
004d2758  44 30 9f e5                                      ldr r3, [pc, #0x44]
004d275c  44 20 9f e5                                      ldr r2, [pc, #0x44]
004d2760  00 40 a0 e1                                      mov r4, r0
004d2764  03 30 8f e0                                      add r3, pc, r3
004d2768  0c 00 90 e5                                      ldr r0, [r0, #0xc]
004d276c  02 20 93 e7                                      ldr r2, [r3, r2]
004d2770  00 00 50 e3                                      cmp r0, #0
004d2774  08 20 82 e2                                      add r2, r2, #8
004d2778  00 20 84 e5                                      str r2, [r4]
004d277c  00 00 00 0a                                      beq #0x4d2784
004d2780  2e f7 f8 eb                                      bl #0x310440
004d2784  18 00 94 e5                                      ldr r0, [r4, #0x18]
004d2788  00 00 50 e3                                      cmp r0, #0
004d278c  00 00 00 0a                                      beq #0x4d2794
004d2790  2a f7 f8 eb                                      bl #0x310440
004d2794  04 00 a0 e1                                      mov r0, r4
004d2798  30 d1 ff eb                                      bl #0x4c6c60
004d279c  04 00 a0 e1                                      mov r0, r4
004d27a0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d27a4  2c 23 4c 00 24 1b 00 00                          .byte 0x2c, 0x23, 0x4c, 0x00, 0x24, 0x1b, 0x00, 0x00

; FUNCTION 0x00501578, declared_size=380, range_size=380, mode=arm
; class-group: Structs::MoveActor
; alias: _ZN7Structs9MoveActor4readEP11IStreamBase
; demangled: Structs::MoveActor::read(IStreamBase*)
; decoder-mode: arm
00501578  70 40 2d e9                                      push {r4, r5, r6, lr}
0050157c  00 40 a0 e1                                      mov r4, r0
00501580  08 d0 4d e2                                      sub sp, sp, #8
00501584  01 50 a0 e1                                      mov r5, r1
00501588  a6 f8 ff eb                                      bl #0x4ff828
0050158c  05 00 a0 e1                                      mov r0, r5
00501590  08 10 84 e2                                      add r1, r4, #8
00501594  01 77 fb eb                                      bl #0x3df1a0
00501598  01 30 a0 e3                                      mov r3, #1
0050159c  00 00 53 e3                                      cmp r3, #0
005015a0  04 30 8d e5                                      str r3, [sp, #4]
005015a4  0f 00 00 1a                                      bne #0x5015e8
005015a8  09 30 84 e2                                      add r3, r4, #9
005015ac  0a 20 84 e2                                      add r2, r4, #0xa
005015b0  01 00 d2 e5                                      ldrb r0, [r2, #1]
005015b4  01 10 53 e5                                      ldrb r1, [r3, #-1]
005015b8  03 00 52 e1                                      cmp r2, r3
005015bc  01 10 20 e0                                      eor r1, r0, r1
005015c0  01 10 43 e5                                      strb r1, [r3, #-1]
005015c4  01 00 d2 e5                                      ldrb r0, [r2, #1]
005015c8  00 10 21 e0                                      eor r1, r1, r0
005015cc  01 10 c2 e5                                      strb r1, [r2, #1]
005015d0  01 00 53 e5                                      ldrb r0, [r3, #-1]
005015d4  01 20 42 e2                                      sub r2, r2, #1
005015d8  00 10 21 e0                                      eor r1, r1, r0
005015dc  01 10 43 e5                                      strb r1, [r3, #-1]
005015e0  01 30 83 e2                                      add r3, r3, #1
005015e4  f1 ff ff 8a                                      bhi #0x5015b0
005015e8  0c 00 94 e5                                      ldr r0, [r4, #0xc]
005015ec  00 00 50 e3                                      cmp r0, #0
005015f0  00 00 00 0a                                      beq #0x5015f8
005015f4  91 3b f8 eb                                      bl #0x310440
005015f8  08 00 94 e5                                      ldr r0, [r4, #8]
005015fc  01 10 a0 e3                                      mov r1, #1
00501600  00 60 a0 e3                                      mov r6, #0
00501604  01 00 80 e0                                      add r0, r0, r1
00501608  d7 3b f8 eb                                      bl #0x31056c
0050160c  08 20 94 e5                                      ldr r2, [r4, #8]
00501610  00 10 a0 e1                                      mov r1, r0
00501614  0c 00 84 e5                                      str r0, [r4, #0xc]
00501618  06 30 a0 e1                                      mov r3, r6
0050161c  05 00 a0 e1                                      mov r0, r5
00501620  8b 57 f8 eb                                      bl #0x317454
00501624  08 30 94 e5                                      ldr r3, [r4, #8]
00501628  0c 20 94 e5                                      ldr r2, [r4, #0xc]
0050162c  10 10 84 e2                                      add r1, r4, #0x10
00501630  05 00 a0 e1                                      mov r0, r5
00501634  03 60 c2 e7                                      strb r6, [r2, r3]
00501638  97 68 ff eb                                      bl #0x4db89c
0050163c  05 00 a0 e1                                      mov r0, r5
00501640  14 10 84 e2                                      add r1, r4, #0x14
00501644  d5 76 fb eb                                      bl #0x3df1a0
00501648  01 30 a0 e3                                      mov r3, #1
0050164c  06 00 53 e1                                      cmp r3, r6
00501650  04 30 8d e5                                      str r3, [sp, #4]
00501654  0f 00 00 1a                                      bne #0x501698
00501658  15 30 84 e2                                      add r3, r4, #0x15
0050165c  16 20 84 e2                                      add r2, r4, #0x16
00501660  01 00 d2 e5                                      ldrb r0, [r2, #1]
00501664  01 10 53 e5                                      ldrb r1, [r3, #-1]
00501668  02 00 53 e1                                      cmp r3, r2
0050166c  01 10 20 e0                                      eor r1, r0, r1
00501670  01 10 43 e5                                      strb r1, [r3, #-1]
00501674  01 00 d2 e5                                      ldrb r0, [r2, #1]
00501678  00 10 21 e0                                      eor r1, r1, r0
0050167c  01 10 c2 e5                                      strb r1, [r2, #1]
00501680  01 00 53 e5                                      ldrb r0, [r3, #-1]
00501684  01 20 42 e2                                      sub r2, r2, #1
00501688  00 10 21 e0                                      eor r1, r1, r0
0050168c  01 10 43 e5                                      strb r1, [r3, #-1]
00501690  01 30 83 e2                                      add r3, r3, #1
00501694  f1 ff ff 3a                                      blo #0x501660
00501698  18 00 94 e5                                      ldr r0, [r4, #0x18]
0050169c  00 00 50 e3                                      cmp r0, #0
005016a0  00 00 00 0a                                      beq #0x5016a8
005016a4  65 3b f8 eb                                      bl #0x310440
005016a8  14 00 94 e5                                      ldr r0, [r4, #0x14]
005016ac  01 10 a0 e3                                      mov r1, #1
005016b0  00 60 a0 e3                                      mov r6, #0
005016b4  01 00 80 e0                                      add r0, r0, r1
005016b8  ab 3b f8 eb                                      bl #0x31056c
005016bc  14 20 94 e5                                      ldr r2, [r4, #0x14]
005016c0  00 10 a0 e1                                      mov r1, r0
005016c4  18 00 84 e5                                      str r0, [r4, #0x18]
005016c8  06 30 a0 e1                                      mov r3, r6
005016cc  05 00 a0 e1                                      mov r0, r5
005016d0  5f 57 f8 eb                                      bl #0x317454
005016d4  18 20 94 e5                                      ldr r2, [r4, #0x18]
005016d8  14 30 94 e5                                      ldr r3, [r4, #0x14]
005016dc  05 00 a0 e1                                      mov r0, r5
005016e0  1c 10 84 e2                                      add r1, r4, #0x1c
005016e4  03 60 c2 e7                                      strb r6, [r2, r3]
005016e8  6b 68 ff eb                                      bl #0x4db89c
005016ec  08 d0 8d e2                                      add sp, sp, #8
005016f0  70 80 bd e8                                      pop {r4, r5, r6, pc}

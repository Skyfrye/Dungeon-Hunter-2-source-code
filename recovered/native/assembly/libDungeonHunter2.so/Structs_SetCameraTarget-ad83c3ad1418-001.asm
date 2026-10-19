; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d370c, declared_size=48, range_size=48, mode=arm
; class-group: Structs::SetCameraTarget
; alias: _ZN7Structs15SetCameraTarget8finalizeEv
; demangled: Structs::SetCameraTarget::finalize()
; decoder-mode: arm
004d370c  10 40 2d e9                                      push {r4, lr}
004d3710  00 40 a0 e1                                      mov r4, r0
004d3714  10 00 90 e5                                      ldr r0, [r0, #0x10]
004d3718  00 00 50 e3                                      cmp r0, #0
004d371c  03 00 00 0a                                      beq #0x4d3730
004d3720  46 f3 f8 eb                                      bl #0x310440
004d3724  00 30 a0 e3                                      mov r3, #0
004d3728  0c 30 84 e5                                      str r3, [r4, #0xc]
004d372c  10 30 84 e5                                      str r3, [r4, #0x10]
004d3730  04 00 a0 e1                                      mov r0, r4
004d3734  10 40 bd e8                                      pop {r4, lr}
004d3738  4a cd ff ea                                      b #0x4c6c68

; FUNCTION 0x004d373c, declared_size=72, range_size=72, mode=arm
; class-group: Structs::SetCameraTarget
; alias: _ZN7Structs15SetCameraTargetD1Ev
; demangled: Structs::SetCameraTarget::~SetCameraTarget()
; decoder-mode: arm
004d373c  10 40 2d e9                                      push {r4, lr}
004d3740  34 30 9f e5                                      ldr r3, [pc, #0x34]
004d3744  34 20 9f e5                                      ldr r2, [pc, #0x34]
004d3748  00 40 a0 e1                                      mov r4, r0
004d374c  03 30 8f e0                                      add r3, pc, r3
004d3750  10 00 90 e5                                      ldr r0, [r0, #0x10]
004d3754  02 20 93 e7                                      ldr r2, [r3, r2]
004d3758  00 00 50 e3                                      cmp r0, #0
004d375c  08 20 82 e2                                      add r2, r2, #8
004d3760  00 20 84 e5                                      str r2, [r4]
004d3764  00 00 00 0a                                      beq #0x4d376c
004d3768  34 f3 f8 eb                                      bl #0x310440
004d376c  04 00 a0 e1                                      mov r0, r4
004d3770  3a cd ff eb                                      bl #0x4c6c60
004d3774  04 00 a0 e1                                      mov r0, r4
004d3778  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d377c  44 13 4c 00 30 30 00 00                          .byte 0x44, 0x13, 0x4c, 0x00, 0x30, 0x30, 0x00, 0x00

; FUNCTION 0x004d3784, declared_size=28, range_size=28, mode=arm
; class-group: Structs::SetCameraTarget
; alias: _ZN7Structs15SetCameraTargetD0Ev
; demangled: Structs::SetCameraTarget::~SetCameraTarget()
; decoder-mode: arm
004d3784  10 40 2d e9                                      push {r4, lr}
004d3788  00 40 a0 e1                                      mov r4, r0
004d378c  ea ff ff eb                                      bl #0x4d373c
004d3790  04 00 a0 e1                                      mov r0, r4
004d3794  29 f3 f8 eb                                      bl #0x310440
004d3798  04 00 a0 e1                                      mov r0, r4
004d379c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d37a0, declared_size=72, range_size=72, mode=arm
; class-group: Structs::SetCameraTarget
; alias: _ZN7Structs15SetCameraTargetD2Ev
; demangled: Structs::SetCameraTarget::~SetCameraTarget()
; decoder-mode: arm
004d37a0  10 40 2d e9                                      push {r4, lr}
004d37a4  34 30 9f e5                                      ldr r3, [pc, #0x34]
004d37a8  34 20 9f e5                                      ldr r2, [pc, #0x34]
004d37ac  00 40 a0 e1                                      mov r4, r0
004d37b0  03 30 8f e0                                      add r3, pc, r3
004d37b4  10 00 90 e5                                      ldr r0, [r0, #0x10]
004d37b8  02 20 93 e7                                      ldr r2, [r3, r2]
004d37bc  00 00 50 e3                                      cmp r0, #0
004d37c0  08 20 82 e2                                      add r2, r2, #8
004d37c4  00 20 84 e5                                      str r2, [r4]
004d37c8  00 00 00 0a                                      beq #0x4d37d0
004d37cc  1b f3 f8 eb                                      bl #0x310440
004d37d0  04 00 a0 e1                                      mov r0, r4
004d37d4  21 cd ff eb                                      bl #0x4c6c60
004d37d8  04 00 a0 e1                                      mov r0, r4
004d37dc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d37e0  e0 12 4c 00 30 30 00 00                          .byte 0xe0, 0x12, 0x4c, 0x00, 0x30, 0x30, 0x00, 0x00

; FUNCTION 0x005026c8, declared_size=296, range_size=296, mode=arm
; class-group: Structs::SetCameraTarget
; alias: _ZN7Structs15SetCameraTarget4readEP11IStreamBase
; demangled: Structs::SetCameraTarget::read(IStreamBase*)
; decoder-mode: arm
005026c8  70 40 2d e9                                      push {r4, r5, r6, lr}
005026cc  00 40 a0 e1                                      mov r4, r0
005026d0  08 d0 4d e2                                      sub sp, sp, #8
005026d4  01 50 a0 e1                                      mov r5, r1
005026d8  52 f4 ff eb                                      bl #0x4ff828
005026dc  05 00 a0 e1                                      mov r0, r5
005026e0  08 10 84 e2                                      add r1, r4, #8
005026e4  69 5a fd eb                                      bl #0x459090
005026e8  01 30 a0 e3                                      mov r3, #1
005026ec  00 00 53 e3                                      cmp r3, #0
005026f0  04 30 8d e5                                      str r3, [sp, #4]
005026f4  0f 00 00 1a                                      bne #0x502738
005026f8  09 30 84 e2                                      add r3, r4, #9
005026fc  0a 20 84 e2                                      add r2, r4, #0xa
00502700  01 00 d2 e5                                      ldrb r0, [r2, #1]
00502704  01 10 53 e5                                      ldrb r1, [r3, #-1]
00502708  03 00 52 e1                                      cmp r2, r3
0050270c  01 10 20 e0                                      eor r1, r0, r1
00502710  01 10 43 e5                                      strb r1, [r3, #-1]
00502714  01 00 d2 e5                                      ldrb r0, [r2, #1]
00502718  00 10 21 e0                                      eor r1, r1, r0
0050271c  01 10 c2 e5                                      strb r1, [r2, #1]
00502720  01 00 53 e5                                      ldrb r0, [r3, #-1]
00502724  01 20 42 e2                                      sub r2, r2, #1
00502728  00 10 21 e0                                      eor r1, r1, r0
0050272c  01 10 43 e5                                      strb r1, [r3, #-1]
00502730  01 30 83 e2                                      add r3, r3, #1
00502734  f1 ff ff 8a                                      bhi #0x502700
00502738  05 00 a0 e1                                      mov r0, r5
0050273c  0c 10 84 e2                                      add r1, r4, #0xc
00502740  96 72 fb eb                                      bl #0x3df1a0
00502744  01 30 a0 e3                                      mov r3, #1
00502748  00 00 53 e3                                      cmp r3, #0
0050274c  04 30 8d e5                                      str r3, [sp, #4]
00502750  0f 00 00 1a                                      bne #0x502794
00502754  0d 30 84 e2                                      add r3, r4, #0xd
00502758  0e 20 84 e2                                      add r2, r4, #0xe
0050275c  01 00 d2 e5                                      ldrb r0, [r2, #1]
00502760  01 10 53 e5                                      ldrb r1, [r3, #-1]
00502764  03 00 52 e1                                      cmp r2, r3
00502768  01 10 20 e0                                      eor r1, r0, r1
0050276c  01 10 43 e5                                      strb r1, [r3, #-1]
00502770  01 00 d2 e5                                      ldrb r0, [r2, #1]
00502774  00 10 21 e0                                      eor r1, r1, r0
00502778  01 10 c2 e5                                      strb r1, [r2, #1]
0050277c  01 00 53 e5                                      ldrb r0, [r3, #-1]
00502780  01 20 42 e2                                      sub r2, r2, #1
00502784  00 10 21 e0                                      eor r1, r1, r0
00502788  01 10 43 e5                                      strb r1, [r3, #-1]
0050278c  01 30 83 e2                                      add r3, r3, #1
00502790  f1 ff ff 8a                                      bhi #0x50275c
00502794  10 00 94 e5                                      ldr r0, [r4, #0x10]
00502798  00 00 50 e3                                      cmp r0, #0
0050279c  00 00 00 0a                                      beq #0x5027a4
005027a0  26 37 f8 eb                                      bl #0x310440
005027a4  0c 00 94 e5                                      ldr r0, [r4, #0xc]
005027a8  01 10 a0 e3                                      mov r1, #1
005027ac  00 60 a0 e3                                      mov r6, #0
005027b0  01 00 80 e0                                      add r0, r0, r1
005027b4  6c 37 f8 eb                                      bl #0x31056c
005027b8  0c 20 94 e5                                      ldr r2, [r4, #0xc]
005027bc  00 10 a0 e1                                      mov r1, r0
005027c0  10 00 84 e5                                      str r0, [r4, #0x10]
005027c4  06 30 a0 e1                                      mov r3, r6
005027c8  05 00 a0 e1                                      mov r0, r5
005027cc  20 53 f8 eb                                      bl #0x317454
005027d0  10 20 94 e5                                      ldr r2, [r4, #0x10]
005027d4  0c 30 94 e5                                      ldr r3, [r4, #0xc]
005027d8  05 00 a0 e1                                      mov r0, r5
005027dc  14 10 84 e2                                      add r1, r4, #0x14
005027e0  03 60 c2 e7                                      strb r6, [r2, r3]
005027e4  2c 64 ff eb                                      bl #0x4db89c
005027e8  08 d0 8d e2                                      add sp, sp, #8
005027ec  70 80 bd e8                                      pop {r4, r5, r6, pc}

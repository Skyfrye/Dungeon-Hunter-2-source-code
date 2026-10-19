; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004da380, declared_size=40, range_size=40, mode=arm
; class-group: Structs::Faery
; alias: _ZN7Structs5Faery8finalizeEv
; demangled: Structs::Faery::finalize()
; decoder-mode: arm
004da380  10 40 2d e9                                      push {r4, lr}
004da384  00 40 a0 e1                                      mov r4, r0
004da388  18 00 90 e5                                      ldr r0, [r0, #0x18]
004da38c  00 00 50 e3                                      cmp r0, #0
004da390  03 00 00 0a                                      beq #0x4da3a4
004da394  29 d8 f8 eb                                      bl #0x310440
004da398  00 30 a0 e3                                      mov r3, #0
004da39c  14 30 84 e5                                      str r3, [r4, #0x14]
004da3a0  18 30 84 e5                                      str r3, [r4, #0x18]
004da3a4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004da3a8, declared_size=64, range_size=64, mode=arm
; class-group: Structs::Faery
; alias: _ZN7Structs5FaeryD1Ev
; demangled: Structs::Faery::~Faery()
; decoder-mode: arm
004da3a8  10 40 2d e9                                      push {r4, lr}
004da3ac  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
004da3b0  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
004da3b4  00 40 a0 e1                                      mov r4, r0
004da3b8  03 30 8f e0                                      add r3, pc, r3
004da3bc  18 00 90 e5                                      ldr r0, [r0, #0x18]
004da3c0  02 20 93 e7                                      ldr r2, [r3, r2]
004da3c4  00 00 50 e3                                      cmp r0, #0
004da3c8  08 20 82 e2                                      add r2, r2, #8
004da3cc  00 20 84 e5                                      str r2, [r4]
004da3d0  00 00 00 0a                                      beq #0x4da3d8
004da3d4  19 d8 f8 eb                                      bl #0x310440
004da3d8  04 00 a0 e1                                      mov r0, r4
004da3dc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004da3e0  d8 a6 4b 00 28 28 00 00                          .byte 0xd8, 0xa6, 0x4b, 0x00, 0x28, 0x28, 0x00, 0x00

; FUNCTION 0x004da3e8, declared_size=28, range_size=28, mode=arm
; class-group: Structs::Faery
; alias: _ZN7Structs5FaeryD0Ev
; demangled: Structs::Faery::~Faery()
; decoder-mode: arm
004da3e8  10 40 2d e9                                      push {r4, lr}
004da3ec  00 40 a0 e1                                      mov r4, r0
004da3f0  ec ff ff eb                                      bl #0x4da3a8
004da3f4  04 00 a0 e1                                      mov r0, r4
004da3f8  10 d8 f8 eb                                      bl #0x310440
004da3fc  04 00 a0 e1                                      mov r0, r4
004da400  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004da404, declared_size=64, range_size=64, mode=arm
; class-group: Structs::Faery
; alias: _ZN7Structs5FaeryD2Ev
; demangled: Structs::Faery::~Faery()
; decoder-mode: arm
004da404  10 40 2d e9                                      push {r4, lr}
004da408  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
004da40c  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
004da410  00 40 a0 e1                                      mov r4, r0
004da414  03 30 8f e0                                      add r3, pc, r3
004da418  18 00 90 e5                                      ldr r0, [r0, #0x18]
004da41c  02 20 93 e7                                      ldr r2, [r3, r2]
004da420  00 00 50 e3                                      cmp r0, #0
004da424  08 20 82 e2                                      add r2, r2, #8
004da428  00 20 84 e5                                      str r2, [r4]
004da42c  00 00 00 0a                                      beq #0x4da434
004da430  02 d8 f8 eb                                      bl #0x310440
004da434  04 00 a0 e1                                      mov r0, r4
004da438  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004da43c  7c a6 4b 00 28 28 00 00                          .byte 0x7c, 0xa6, 0x4b, 0x00, 0x28, 0x28, 0x00, 0x00

; FUNCTION 0x0050637c, declared_size=740, range_size=740, mode=arm
; class-group: Structs::Faery
; alias: _ZN7Structs5Faery4readEP11IStreamBase
; demangled: Structs::Faery::read(IStreamBase*)
; decoder-mode: arm
0050637c  70 40 2d e9                                      push {r4, r5, r6, lr}
00506380  00 40 a0 e1                                      mov r4, r0
00506384  08 d0 4d e2                                      sub sp, sp, #8
00506388  01 00 a0 e1                                      mov r0, r1
0050638c  01 50 a0 e1                                      mov r5, r1
00506390  04 10 84 e2                                      add r1, r4, #4
00506394  3d 4b fd eb                                      bl #0x459090
00506398  01 30 a0 e3                                      mov r3, #1
0050639c  00 00 53 e3                                      cmp r3, #0
005063a0  04 30 8d e5                                      str r3, [sp, #4]
005063a4  0f 00 00 1a                                      bne #0x5063e8
005063a8  05 30 84 e2                                      add r3, r4, #5
005063ac  06 20 84 e2                                      add r2, r4, #6
005063b0  01 00 d2 e5                                      ldrb r0, [r2, #1]
005063b4  01 10 53 e5                                      ldrb r1, [r3, #-1]
005063b8  02 00 53 e1                                      cmp r3, r2
005063bc  01 10 20 e0                                      eor r1, r0, r1
005063c0  01 10 43 e5                                      strb r1, [r3, #-1]
005063c4  01 00 d2 e5                                      ldrb r0, [r2, #1]
005063c8  00 10 21 e0                                      eor r1, r1, r0
005063cc  01 10 c2 e5                                      strb r1, [r2, #1]
005063d0  01 00 53 e5                                      ldrb r0, [r3, #-1]
005063d4  01 20 42 e2                                      sub r2, r2, #1
005063d8  00 10 21 e0                                      eor r1, r1, r0
005063dc  01 10 43 e5                                      strb r1, [r3, #-1]
005063e0  01 30 83 e2                                      add r3, r3, #1
005063e4  f1 ff ff 3a                                      blo #0x5063b0
005063e8  05 00 a0 e1                                      mov r0, r5
005063ec  08 10 84 e2                                      add r1, r4, #8
005063f0  26 4b fd eb                                      bl #0x459090
005063f4  01 30 a0 e3                                      mov r3, #1
005063f8  00 00 53 e3                                      cmp r3, #0
005063fc  04 30 8d e5                                      str r3, [sp, #4]
00506400  0f 00 00 1a                                      bne #0x506444
00506404  09 30 84 e2                                      add r3, r4, #9
00506408  0a 20 84 e2                                      add r2, r4, #0xa
0050640c  01 00 d2 e5                                      ldrb r0, [r2, #1]
00506410  01 10 53 e5                                      ldrb r1, [r3, #-1]
00506414  02 00 53 e1                                      cmp r3, r2
00506418  01 10 20 e0                                      eor r1, r0, r1
0050641c  01 10 43 e5                                      strb r1, [r3, #-1]
00506420  01 00 d2 e5                                      ldrb r0, [r2, #1]
00506424  00 10 21 e0                                      eor r1, r1, r0
00506428  01 10 c2 e5                                      strb r1, [r2, #1]
0050642c  01 00 53 e5                                      ldrb r0, [r3, #-1]
00506430  01 20 42 e2                                      sub r2, r2, #1
00506434  00 10 21 e0                                      eor r1, r1, r0
00506438  01 10 43 e5                                      strb r1, [r3, #-1]
0050643c  01 30 83 e2                                      add r3, r3, #1
00506440  f1 ff ff 3a                                      blo #0x50640c
00506444  05 00 a0 e1                                      mov r0, r5
00506448  0c 10 84 e2                                      add r1, r4, #0xc
0050644c  0f 4b fd eb                                      bl #0x459090
00506450  01 30 a0 e3                                      mov r3, #1
00506454  00 00 53 e3                                      cmp r3, #0
00506458  04 30 8d e5                                      str r3, [sp, #4]
0050645c  0f 00 00 1a                                      bne #0x5064a0
00506460  0d 30 84 e2                                      add r3, r4, #0xd
00506464  0e 20 84 e2                                      add r2, r4, #0xe
00506468  01 00 d2 e5                                      ldrb r0, [r2, #1]
0050646c  01 10 53 e5                                      ldrb r1, [r3, #-1]
00506470  02 00 53 e1                                      cmp r3, r2
00506474  01 10 20 e0                                      eor r1, r0, r1
00506478  01 10 43 e5                                      strb r1, [r3, #-1]
0050647c  01 00 d2 e5                                      ldrb r0, [r2, #1]
00506480  00 10 21 e0                                      eor r1, r1, r0
00506484  01 10 c2 e5                                      strb r1, [r2, #1]
00506488  01 00 53 e5                                      ldrb r0, [r3, #-1]
0050648c  01 20 42 e2                                      sub r2, r2, #1
00506490  00 10 21 e0                                      eor r1, r1, r0
00506494  01 10 43 e5                                      strb r1, [r3, #-1]
00506498  01 30 83 e2                                      add r3, r3, #1
0050649c  f1 ff ff 3a                                      blo #0x506468
005064a0  05 00 a0 e1                                      mov r0, r5
005064a4  10 10 84 e2                                      add r1, r4, #0x10
005064a8  f8 4a fd eb                                      bl #0x459090
005064ac  01 30 a0 e3                                      mov r3, #1
005064b0  00 00 53 e3                                      cmp r3, #0
005064b4  04 30 8d e5                                      str r3, [sp, #4]
005064b8  0f 00 00 1a                                      bne #0x5064fc
005064bc  11 30 84 e2                                      add r3, r4, #0x11
005064c0  12 20 84 e2                                      add r2, r4, #0x12
005064c4  01 00 d2 e5                                      ldrb r0, [r2, #1]
005064c8  01 10 53 e5                                      ldrb r1, [r3, #-1]
005064cc  02 00 53 e1                                      cmp r3, r2
005064d0  01 10 20 e0                                      eor r1, r0, r1
005064d4  01 10 43 e5                                      strb r1, [r3, #-1]
005064d8  01 00 d2 e5                                      ldrb r0, [r2, #1]
005064dc  00 10 21 e0                                      eor r1, r1, r0
005064e0  01 10 c2 e5                                      strb r1, [r2, #1]
005064e4  01 00 53 e5                                      ldrb r0, [r3, #-1]
005064e8  01 20 42 e2                                      sub r2, r2, #1
005064ec  00 10 21 e0                                      eor r1, r1, r0
005064f0  01 10 43 e5                                      strb r1, [r3, #-1]
005064f4  01 30 83 e2                                      add r3, r3, #1
005064f8  f1 ff ff 3a                                      blo #0x5064c4
005064fc  05 00 a0 e1                                      mov r0, r5
00506500  14 10 84 e2                                      add r1, r4, #0x14
00506504  25 63 fb eb                                      bl #0x3df1a0
00506508  01 30 a0 e3                                      mov r3, #1
0050650c  00 00 53 e3                                      cmp r3, #0
00506510  04 30 8d e5                                      str r3, [sp, #4]
00506514  0f 00 00 1a                                      bne #0x506558
00506518  15 30 84 e2                                      add r3, r4, #0x15
0050651c  16 20 84 e2                                      add r2, r4, #0x16
00506520  01 00 d2 e5                                      ldrb r0, [r2, #1]
00506524  01 10 53 e5                                      ldrb r1, [r3, #-1]
00506528  02 00 53 e1                                      cmp r3, r2
0050652c  01 10 20 e0                                      eor r1, r0, r1
00506530  01 10 43 e5                                      strb r1, [r3, #-1]
00506534  01 00 d2 e5                                      ldrb r0, [r2, #1]
00506538  00 10 21 e0                                      eor r1, r1, r0
0050653c  01 10 c2 e5                                      strb r1, [r2, #1]
00506540  01 00 53 e5                                      ldrb r0, [r3, #-1]
00506544  01 20 42 e2                                      sub r2, r2, #1
00506548  00 10 21 e0                                      eor r1, r1, r0
0050654c  01 10 43 e5                                      strb r1, [r3, #-1]
00506550  01 30 83 e2                                      add r3, r3, #1
00506554  f1 ff ff 3a                                      blo #0x506520
00506558  18 00 94 e5                                      ldr r0, [r4, #0x18]
0050655c  00 00 50 e3                                      cmp r0, #0
00506560  00 00 00 0a                                      beq #0x506568
00506564  b5 27 f8 eb                                      bl #0x310440
00506568  14 00 94 e5                                      ldr r0, [r4, #0x14]
0050656c  01 10 a0 e3                                      mov r1, #1
00506570  00 60 a0 e3                                      mov r6, #0
00506574  01 00 80 e0                                      add r0, r0, r1
00506578  fb 27 f8 eb                                      bl #0x31056c
0050657c  14 20 94 e5                                      ldr r2, [r4, #0x14]
00506580  00 10 a0 e1                                      mov r1, r0
00506584  18 00 84 e5                                      str r0, [r4, #0x18]
00506588  06 30 a0 e1                                      mov r3, r6
0050658c  05 00 a0 e1                                      mov r0, r5
00506590  af 43 f8 eb                                      bl #0x317454
00506594  14 30 94 e5                                      ldr r3, [r4, #0x14]
00506598  18 20 94 e5                                      ldr r2, [r4, #0x18]
0050659c  05 00 a0 e1                                      mov r0, r5
005065a0  1c 10 84 e2                                      add r1, r4, #0x1c
005065a4  03 60 c2 e7                                      strb r6, [r2, r3]
005065a8  b8 4a fd eb                                      bl #0x459090
005065ac  01 30 a0 e3                                      mov r3, #1
005065b0  06 00 53 e1                                      cmp r3, r6
005065b4  04 30 8d e5                                      str r3, [sp, #4]
005065b8  0f 00 00 1a                                      bne #0x5065fc
005065bc  1d 30 84 e2                                      add r3, r4, #0x1d
005065c0  1e 20 84 e2                                      add r2, r4, #0x1e
005065c4  01 00 d2 e5                                      ldrb r0, [r2, #1]
005065c8  01 10 53 e5                                      ldrb r1, [r3, #-1]
005065cc  02 00 53 e1                                      cmp r3, r2
005065d0  01 10 20 e0                                      eor r1, r0, r1
005065d4  01 10 43 e5                                      strb r1, [r3, #-1]
005065d8  01 00 d2 e5                                      ldrb r0, [r2, #1]
005065dc  00 10 21 e0                                      eor r1, r1, r0
005065e0  01 10 c2 e5                                      strb r1, [r2, #1]
005065e4  01 00 53 e5                                      ldrb r0, [r3, #-1]
005065e8  01 20 42 e2                                      sub r2, r2, #1
005065ec  00 10 21 e0                                      eor r1, r1, r0
005065f0  01 10 43 e5                                      strb r1, [r3, #-1]
005065f4  01 30 83 e2                                      add r3, r3, #1
005065f8  f1 ff ff 3a                                      blo #0x5065c4
005065fc  05 00 a0 e1                                      mov r0, r5
00506600  20 10 84 e2                                      add r1, r4, #0x20
00506604  a1 4a fd eb                                      bl #0x459090
00506608  01 30 a0 e3                                      mov r3, #1
0050660c  00 00 53 e3                                      cmp r3, #0
00506610  04 30 8d e5                                      str r3, [sp, #4]
00506614  0f 00 00 1a                                      bne #0x506658
00506618  22 30 84 e2                                      add r3, r4, #0x22
0050661c  21 40 84 e2                                      add r4, r4, #0x21
00506620  01 10 d3 e5                                      ldrb r1, [r3, #1]
00506624  01 20 54 e5                                      ldrb r2, [r4, #-1]
00506628  04 00 53 e1                                      cmp r3, r4
0050662c  02 20 21 e0                                      eor r2, r1, r2
00506630  01 20 44 e5                                      strb r2, [r4, #-1]
00506634  01 10 d3 e5                                      ldrb r1, [r3, #1]
00506638  01 20 22 e0                                      eor r2, r2, r1
0050663c  01 20 c3 e5                                      strb r2, [r3, #1]
00506640  01 10 54 e5                                      ldrb r1, [r4, #-1]
00506644  01 30 43 e2                                      sub r3, r3, #1
00506648  01 20 22 e0                                      eor r2, r2, r1
0050664c  01 20 44 e5                                      strb r2, [r4, #-1]
00506650  01 40 84 e2                                      add r4, r4, #1
00506654  f1 ff ff 8a                                      bhi #0x506620
00506658  08 d0 8d e2                                      add sp, sp, #8
0050665c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d27ac, declared_size=48, range_size=48, mode=arm
; class-group: Structs::StopActor
; alias: _ZN7Structs9StopActor8finalizeEv
; demangled: Structs::StopActor::finalize()
; decoder-mode: arm
004d27ac  10 40 2d e9                                      push {r4, lr}
004d27b0  00 40 a0 e1                                      mov r4, r0
004d27b4  0c 00 90 e5                                      ldr r0, [r0, #0xc]
004d27b8  00 00 50 e3                                      cmp r0, #0
004d27bc  03 00 00 0a                                      beq #0x4d27d0
004d27c0  1e f7 f8 eb                                      bl #0x310440
004d27c4  00 30 a0 e3                                      mov r3, #0
004d27c8  08 30 84 e5                                      str r3, [r4, #8]
004d27cc  0c 30 84 e5                                      str r3, [r4, #0xc]
004d27d0  04 00 a0 e1                                      mov r0, r4
004d27d4  10 40 bd e8                                      pop {r4, lr}
004d27d8  22 d1 ff ea                                      b #0x4c6c68

; FUNCTION 0x004d27dc, declared_size=72, range_size=72, mode=arm
; class-group: Structs::StopActor
; alias: _ZN7Structs9StopActorD1Ev
; demangled: Structs::StopActor::~StopActor()
; decoder-mode: arm
004d27dc  10 40 2d e9                                      push {r4, lr}
004d27e0  34 30 9f e5                                      ldr r3, [pc, #0x34]
004d27e4  34 20 9f e5                                      ldr r2, [pc, #0x34]
004d27e8  00 40 a0 e1                                      mov r4, r0
004d27ec  03 30 8f e0                                      add r3, pc, r3
004d27f0  0c 00 90 e5                                      ldr r0, [r0, #0xc]
004d27f4  02 20 93 e7                                      ldr r2, [r3, r2]
004d27f8  00 00 50 e3                                      cmp r0, #0
004d27fc  08 20 82 e2                                      add r2, r2, #8
004d2800  00 20 84 e5                                      str r2, [r4]
004d2804  00 00 00 0a                                      beq #0x4d280c
004d2808  0c f7 f8 eb                                      bl #0x310440
004d280c  04 00 a0 e1                                      mov r0, r4
004d2810  12 d1 ff eb                                      bl #0x4c6c60
004d2814  04 00 a0 e1                                      mov r0, r4
004d2818  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d281c  a4 22 4c 00 a8 4a 00 00                          .byte 0xa4, 0x22, 0x4c, 0x00, 0xa8, 0x4a, 0x00, 0x00

; FUNCTION 0x004d2824, declared_size=28, range_size=28, mode=arm
; class-group: Structs::StopActor
; alias: _ZN7Structs9StopActorD0Ev
; demangled: Structs::StopActor::~StopActor()
; decoder-mode: arm
004d2824  10 40 2d e9                                      push {r4, lr}
004d2828  00 40 a0 e1                                      mov r4, r0
004d282c  ea ff ff eb                                      bl #0x4d27dc
004d2830  04 00 a0 e1                                      mov r0, r4
004d2834  01 f7 f8 eb                                      bl #0x310440
004d2838  04 00 a0 e1                                      mov r0, r4
004d283c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d2840, declared_size=72, range_size=72, mode=arm
; class-group: Structs::StopActor
; alias: _ZN7Structs9StopActorD2Ev
; demangled: Structs::StopActor::~StopActor()
; decoder-mode: arm
004d2840  10 40 2d e9                                      push {r4, lr}
004d2844  34 30 9f e5                                      ldr r3, [pc, #0x34]
004d2848  34 20 9f e5                                      ldr r2, [pc, #0x34]
004d284c  00 40 a0 e1                                      mov r4, r0
004d2850  03 30 8f e0                                      add r3, pc, r3
004d2854  0c 00 90 e5                                      ldr r0, [r0, #0xc]
004d2858  02 20 93 e7                                      ldr r2, [r3, r2]
004d285c  00 00 50 e3                                      cmp r0, #0
004d2860  08 20 82 e2                                      add r2, r2, #8
004d2864  00 20 84 e5                                      str r2, [r4]
004d2868  00 00 00 0a                                      beq #0x4d2870
004d286c  f3 f6 f8 eb                                      bl #0x310440
004d2870  04 00 a0 e1                                      mov r0, r4
004d2874  f9 d0 ff eb                                      bl #0x4c6c60
004d2878  04 00 a0 e1                                      mov r0, r4
004d287c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d2880  40 22 4c 00 a8 4a 00 00                          .byte 0x40, 0x22, 0x4c, 0x00, 0xa8, 0x4a, 0x00, 0x00

; FUNCTION 0x005016f4, declared_size=192, range_size=192, mode=arm
; class-group: Structs::StopActor
; alias: _ZN7Structs9StopActor4readEP11IStreamBase
; demangled: Structs::StopActor::read(IStreamBase*)
; decoder-mode: arm
005016f4  70 40 2d e9                                      push {r4, r5, r6, lr}
005016f8  00 40 a0 e1                                      mov r4, r0
005016fc  08 d0 4d e2                                      sub sp, sp, #8
00501700  01 60 a0 e1                                      mov r6, r1
00501704  47 f8 ff eb                                      bl #0x4ff828
00501708  06 00 a0 e1                                      mov r0, r6
0050170c  08 10 84 e2                                      add r1, r4, #8
00501710  a2 76 fb eb                                      bl #0x3df1a0
00501714  01 30 a0 e3                                      mov r3, #1
00501718  00 00 53 e3                                      cmp r3, #0
0050171c  04 30 8d e5                                      str r3, [sp, #4]
00501720  0f 00 00 1a                                      bne #0x501764
00501724  09 30 84 e2                                      add r3, r4, #9
00501728  0a 20 84 e2                                      add r2, r4, #0xa
0050172c  01 00 d2 e5                                      ldrb r0, [r2, #1]
00501730  01 10 53 e5                                      ldrb r1, [r3, #-1]
00501734  02 00 53 e1                                      cmp r3, r2
00501738  01 10 20 e0                                      eor r1, r0, r1
0050173c  01 10 43 e5                                      strb r1, [r3, #-1]
00501740  01 00 d2 e5                                      ldrb r0, [r2, #1]
00501744  00 10 21 e0                                      eor r1, r1, r0
00501748  01 10 c2 e5                                      strb r1, [r2, #1]
0050174c  01 00 53 e5                                      ldrb r0, [r3, #-1]
00501750  01 20 42 e2                                      sub r2, r2, #1
00501754  00 10 21 e0                                      eor r1, r1, r0
00501758  01 10 43 e5                                      strb r1, [r3, #-1]
0050175c  01 30 83 e2                                      add r3, r3, #1
00501760  f1 ff ff 3a                                      blo #0x50172c
00501764  0c 00 94 e5                                      ldr r0, [r4, #0xc]
00501768  00 00 50 e3                                      cmp r0, #0
0050176c  00 00 00 0a                                      beq #0x501774
00501770  32 3b f8 eb                                      bl #0x310440
00501774  08 00 94 e5                                      ldr r0, [r4, #8]
00501778  01 10 a0 e3                                      mov r1, #1
0050177c  00 50 a0 e3                                      mov r5, #0
00501780  01 00 80 e0                                      add r0, r0, r1
00501784  78 3b f8 eb                                      bl #0x31056c
00501788  08 20 94 e5                                      ldr r2, [r4, #8]
0050178c  00 10 a0 e1                                      mov r1, r0
00501790  0c 00 84 e5                                      str r0, [r4, #0xc]
00501794  05 30 a0 e1                                      mov r3, r5
00501798  06 00 a0 e1                                      mov r0, r6
0050179c  2c 57 f8 eb                                      bl #0x317454
005017a0  08 30 94 e5                                      ldr r3, [r4, #8]
005017a4  0c 20 94 e5                                      ldr r2, [r4, #0xc]
005017a8  03 50 c2 e7                                      strb r5, [r2, r3]
005017ac  08 d0 8d e2                                      add sp, sp, #8
005017b0  70 80 bd e8                                      pop {r4, r5, r6, pc}

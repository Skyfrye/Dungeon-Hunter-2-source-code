; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d220c, declared_size=48, range_size=48, mode=arm
; class-group: Structs::PlayActorAnim
; alias: _ZN7Structs13PlayActorAnim8finalizeEv
; demangled: Structs::PlayActorAnim::finalize()
; decoder-mode: arm
004d220c  10 40 2d e9                                      push {r4, lr}
004d2210  00 40 a0 e1                                      mov r4, r0
004d2214  18 00 90 e5                                      ldr r0, [r0, #0x18]
004d2218  00 00 50 e3                                      cmp r0, #0
004d221c  03 00 00 0a                                      beq #0x4d2230
004d2220  86 f8 f8 eb                                      bl #0x310440
004d2224  00 30 a0 e3                                      mov r3, #0
004d2228  14 30 84 e5                                      str r3, [r4, #0x14]
004d222c  18 30 84 e5                                      str r3, [r4, #0x18]
004d2230  04 00 a0 e1                                      mov r0, r4
004d2234  10 40 bd e8                                      pop {r4, lr}
004d2238  8a d2 ff ea                                      b #0x4c6c68

; FUNCTION 0x004d223c, declared_size=72, range_size=72, mode=arm
; class-group: Structs::PlayActorAnim
; alias: _ZN7Structs13PlayActorAnimD1Ev
; demangled: Structs::PlayActorAnim::~PlayActorAnim()
; decoder-mode: arm
004d223c  10 40 2d e9                                      push {r4, lr}
004d2240  34 30 9f e5                                      ldr r3, [pc, #0x34]
004d2244  34 20 9f e5                                      ldr r2, [pc, #0x34]
004d2248  00 40 a0 e1                                      mov r4, r0
004d224c  03 30 8f e0                                      add r3, pc, r3
004d2250  18 00 90 e5                                      ldr r0, [r0, #0x18]
004d2254  02 20 93 e7                                      ldr r2, [r3, r2]
004d2258  00 00 50 e3                                      cmp r0, #0
004d225c  08 20 82 e2                                      add r2, r2, #8
004d2260  00 20 84 e5                                      str r2, [r4]
004d2264  00 00 00 0a                                      beq #0x4d226c
004d2268  74 f8 f8 eb                                      bl #0x310440
004d226c  04 00 a0 e1                                      mov r0, r4
004d2270  7a d2 ff eb                                      bl #0x4c6c60
004d2274  04 00 a0 e1                                      mov r0, r4
004d2278  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d227c  44 28 4c 00 c8 41 00 00                          .byte 0x44, 0x28, 0x4c, 0x00, 0xc8, 0x41, 0x00, 0x00

; FUNCTION 0x004d2284, declared_size=28, range_size=28, mode=arm
; class-group: Structs::PlayActorAnim
; alias: _ZN7Structs13PlayActorAnimD0Ev
; demangled: Structs::PlayActorAnim::~PlayActorAnim()
; decoder-mode: arm
004d2284  10 40 2d e9                                      push {r4, lr}
004d2288  00 40 a0 e1                                      mov r4, r0
004d228c  ea ff ff eb                                      bl #0x4d223c
004d2290  04 00 a0 e1                                      mov r0, r4
004d2294  69 f8 f8 eb                                      bl #0x310440
004d2298  04 00 a0 e1                                      mov r0, r4
004d229c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d22a0, declared_size=72, range_size=72, mode=arm
; class-group: Structs::PlayActorAnim
; alias: _ZN7Structs13PlayActorAnimD2Ev
; demangled: Structs::PlayActorAnim::~PlayActorAnim()
; decoder-mode: arm
004d22a0  10 40 2d e9                                      push {r4, lr}
004d22a4  34 30 9f e5                                      ldr r3, [pc, #0x34]
004d22a8  34 20 9f e5                                      ldr r2, [pc, #0x34]
004d22ac  00 40 a0 e1                                      mov r4, r0
004d22b0  03 30 8f e0                                      add r3, pc, r3
004d22b4  18 00 90 e5                                      ldr r0, [r0, #0x18]
004d22b8  02 20 93 e7                                      ldr r2, [r3, r2]
004d22bc  00 00 50 e3                                      cmp r0, #0
004d22c0  08 20 82 e2                                      add r2, r2, #8
004d22c4  00 20 84 e5                                      str r2, [r4]
004d22c8  00 00 00 0a                                      beq #0x4d22d0
004d22cc  5b f8 f8 eb                                      bl #0x310440
004d22d0  04 00 a0 e1                                      mov r0, r4
004d22d4  61 d2 ff eb                                      bl #0x4c6c60
004d22d8  04 00 a0 e1                                      mov r0, r4
004d22dc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d22e0  e0 27 4c 00 c8 41 00 00                          .byte 0xe0, 0x27, 0x4c, 0x00, 0xc8, 0x41, 0x00, 0x00

; FUNCTION 0x00500ff4, declared_size=480, range_size=480, mode=arm
; class-group: Structs::PlayActorAnim
; alias: _ZN7Structs13PlayActorAnim4readEP11IStreamBase
; demangled: Structs::PlayActorAnim::read(IStreamBase*)
; decoder-mode: arm
00500ff4  70 40 2d e9                                      push {r4, r5, r6, lr}
00500ff8  00 40 a0 e1                                      mov r4, r0
00500ffc  08 d0 4d e2                                      sub sp, sp, #8
00501000  01 50 a0 e1                                      mov r5, r1
00501004  07 fa ff eb                                      bl #0x4ff828
00501008  05 00 a0 e1                                      mov r0, r5
0050100c  08 10 84 e2                                      add r1, r4, #8
00501010  1e 60 fd eb                                      bl #0x459090
00501014  01 30 a0 e3                                      mov r3, #1
00501018  00 00 53 e3                                      cmp r3, #0
0050101c  04 30 8d e5                                      str r3, [sp, #4]
00501020  0f 00 00 1a                                      bne #0x501064
00501024  09 30 84 e2                                      add r3, r4, #9
00501028  0a 20 84 e2                                      add r2, r4, #0xa
0050102c  01 00 d2 e5                                      ldrb r0, [r2, #1]
00501030  01 10 53 e5                                      ldrb r1, [r3, #-1]
00501034  03 00 52 e1                                      cmp r2, r3
00501038  01 10 20 e0                                      eor r1, r0, r1
0050103c  01 10 43 e5                                      strb r1, [r3, #-1]
00501040  01 00 d2 e5                                      ldrb r0, [r2, #1]
00501044  00 10 21 e0                                      eor r1, r1, r0
00501048  01 10 c2 e5                                      strb r1, [r2, #1]
0050104c  01 00 53 e5                                      ldrb r0, [r3, #-1]
00501050  01 20 42 e2                                      sub r2, r2, #1
00501054  00 10 21 e0                                      eor r1, r1, r0
00501058  01 10 43 e5                                      strb r1, [r3, #-1]
0050105c  01 30 83 e2                                      add r3, r3, #1
00501060  f1 ff ff 8a                                      bhi #0x50102c
00501064  05 00 a0 e1                                      mov r0, r5
00501068  0c 10 84 e2                                      add r1, r4, #0xc
0050106c  07 60 fd eb                                      bl #0x459090
00501070  01 30 a0 e3                                      mov r3, #1
00501074  00 00 53 e3                                      cmp r3, #0
00501078  04 30 8d e5                                      str r3, [sp, #4]
0050107c  0f 00 00 1a                                      bne #0x5010c0
00501080  0d 30 84 e2                                      add r3, r4, #0xd
00501084  0e 20 84 e2                                      add r2, r4, #0xe
00501088  01 00 d2 e5                                      ldrb r0, [r2, #1]
0050108c  01 10 53 e5                                      ldrb r1, [r3, #-1]
00501090  03 00 52 e1                                      cmp r2, r3
00501094  01 10 20 e0                                      eor r1, r0, r1
00501098  01 10 43 e5                                      strb r1, [r3, #-1]
0050109c  01 00 d2 e5                                      ldrb r0, [r2, #1]
005010a0  00 10 21 e0                                      eor r1, r1, r0
005010a4  01 10 c2 e5                                      strb r1, [r2, #1]
005010a8  01 00 53 e5                                      ldrb r0, [r3, #-1]
005010ac  01 20 42 e2                                      sub r2, r2, #1
005010b0  00 10 21 e0                                      eor r1, r1, r0
005010b4  01 10 43 e5                                      strb r1, [r3, #-1]
005010b8  01 30 83 e2                                      add r3, r3, #1
005010bc  f1 ff ff 8a                                      bhi #0x501088
005010c0  05 00 a0 e1                                      mov r0, r5
005010c4  10 10 84 e2                                      add r1, r4, #0x10
005010c8  f0 5f fd eb                                      bl #0x459090
005010cc  01 30 a0 e3                                      mov r3, #1
005010d0  00 00 53 e3                                      cmp r3, #0
005010d4  04 30 8d e5                                      str r3, [sp, #4]
005010d8  0f 00 00 1a                                      bne #0x50111c
005010dc  11 30 84 e2                                      add r3, r4, #0x11
005010e0  12 20 84 e2                                      add r2, r4, #0x12
005010e4  01 00 d2 e5                                      ldrb r0, [r2, #1]
005010e8  01 10 53 e5                                      ldrb r1, [r3, #-1]
005010ec  02 00 53 e1                                      cmp r3, r2
005010f0  01 10 20 e0                                      eor r1, r0, r1
005010f4  01 10 43 e5                                      strb r1, [r3, #-1]
005010f8  01 00 d2 e5                                      ldrb r0, [r2, #1]
005010fc  00 10 21 e0                                      eor r1, r1, r0
00501100  01 10 c2 e5                                      strb r1, [r2, #1]
00501104  01 00 53 e5                                      ldrb r0, [r3, #-1]
00501108  01 20 42 e2                                      sub r2, r2, #1
0050110c  00 10 21 e0                                      eor r1, r1, r0
00501110  01 10 43 e5                                      strb r1, [r3, #-1]
00501114  01 30 83 e2                                      add r3, r3, #1
00501118  f1 ff ff 3a                                      blo #0x5010e4
0050111c  05 00 a0 e1                                      mov r0, r5
00501120  14 10 84 e2                                      add r1, r4, #0x14
00501124  1d 78 fb eb                                      bl #0x3df1a0
00501128  01 30 a0 e3                                      mov r3, #1
0050112c  00 00 53 e3                                      cmp r3, #0
00501130  04 30 8d e5                                      str r3, [sp, #4]
00501134  0f 00 00 1a                                      bne #0x501178
00501138  15 30 84 e2                                      add r3, r4, #0x15
0050113c  16 20 84 e2                                      add r2, r4, #0x16
00501140  01 00 d2 e5                                      ldrb r0, [r2, #1]
00501144  01 10 53 e5                                      ldrb r1, [r3, #-1]
00501148  02 00 53 e1                                      cmp r3, r2
0050114c  01 10 20 e0                                      eor r1, r0, r1
00501150  01 10 43 e5                                      strb r1, [r3, #-1]
00501154  01 00 d2 e5                                      ldrb r0, [r2, #1]
00501158  00 10 21 e0                                      eor r1, r1, r0
0050115c  01 10 c2 e5                                      strb r1, [r2, #1]
00501160  01 00 53 e5                                      ldrb r0, [r3, #-1]
00501164  01 20 42 e2                                      sub r2, r2, #1
00501168  00 10 21 e0                                      eor r1, r1, r0
0050116c  01 10 43 e5                                      strb r1, [r3, #-1]
00501170  01 30 83 e2                                      add r3, r3, #1
00501174  f1 ff ff 3a                                      blo #0x501140
00501178  18 00 94 e5                                      ldr r0, [r4, #0x18]
0050117c  00 00 50 e3                                      cmp r0, #0
00501180  00 00 00 0a                                      beq #0x501188
00501184  ad 3c f8 eb                                      bl #0x310440
00501188  14 00 94 e5                                      ldr r0, [r4, #0x14]
0050118c  01 10 a0 e3                                      mov r1, #1
00501190  00 60 a0 e3                                      mov r6, #0
00501194  01 00 80 e0                                      add r0, r0, r1
00501198  f3 3c f8 eb                                      bl #0x31056c
0050119c  14 20 94 e5                                      ldr r2, [r4, #0x14]
005011a0  00 10 a0 e1                                      mov r1, r0
005011a4  18 00 84 e5                                      str r0, [r4, #0x18]
005011a8  06 30 a0 e1                                      mov r3, r6
005011ac  05 00 a0 e1                                      mov r0, r5
005011b0  a7 58 f8 eb                                      bl #0x317454
005011b4  18 20 94 e5                                      ldr r2, [r4, #0x18]
005011b8  14 30 94 e5                                      ldr r3, [r4, #0x14]
005011bc  05 00 a0 e1                                      mov r0, r5
005011c0  1c 10 84 e2                                      add r1, r4, #0x1c
005011c4  03 60 c2 e7                                      strb r6, [r2, r3]
005011c8  b3 69 ff eb                                      bl #0x4db89c
005011cc  08 d0 8d e2                                      add sp, sp, #8
005011d0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00427fd8, declared_size=36, range_size=36, mode=arm
; class-group: MenuCharacterSelect
; alias: _ZN19MenuCharacterSelect10IsAnimOverEv
; demangled: MenuCharacterSelect::IsAnimOver()
; decoder-mode: arm
00427fd8  10 40 2d e9                                      push {r4, lr}
00427fdc  e8 10 90 e5                                      ldr r1, [r0, #0xe8]
00427fe0  e0 00 90 e5                                      ldr r0, [r0, #0xe0]
00427fe4  32 99 fb eb                                      bl #0x30e4b4
00427fe8  00 00 50 e3                                      cmp r0, #0
00427fec  00 00 a0 e3                                      mov r0, #0
00427ff0  01 00 a0 13                                      movne r0, #1
00427ff4  01 00 00 e2                                      and r0, r0, #1
00427ff8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00427ffc, declared_size=124, range_size=124, mode=arm
; class-group: MenuCharacterSelect
; alias: _ZN19MenuCharacterSelect10UpdateAnimEv
; demangled: MenuCharacterSelect::UpdateAnim()
; decoder-mode: arm
00427ffc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00428000  00 40 a0 e1                                      mov r4, r0
00428004  cc 70 90 e5                                      ldr r7, [r0, #0xcc]
00428008  c4 80 90 e5                                      ldr r8, [r0, #0xc4]
0042800c  e0 00 90 e5                                      ldr r0, [r0, #0xe0]
00428010  a2 58 12 eb                                      bl #0x8be2a0
00428014  00 60 97 e5                                      ldr r6, [r7]
00428018  00 20 a0 e1                                      mov r2, r0
0042801c  08 10 a0 e1                                      mov r1, r8
00428020  07 00 a0 e1                                      mov r0, r7
00428024  44 50 9f e5                                      ldr r5, [pc, #0x44]
00428028  0f e0 a0 e1                                      mov lr, pc
0042802c  10 f0 96 e5                                      ldr pc, [r6, #0x10]
00428030  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
00428034  05 50 8f e0                                      add r5, pc, r5
00428038  e0 60 94 e5                                      ldr r6, [r4, #0xe0]
0042803c  03 00 95 e7                                      ldr r0, [r5, r3]
00428040  89 dd fb eb                                      bl #0x31f66c
00428044  a5 98 fb eb                                      bl #0x30e2e0
00428048  00 10 a0 e1                                      mov r1, r0
0042804c  06 00 a0 e1                                      mov r0, r6
00428050  d3 9a fb eb                                      bl #0x30eba4
00428054  e8 50 94 e5                                      ldr r5, [r4, #0xe8]
00428058  e0 00 84 e5                                      str r0, [r4, #0xe0]
0042805c  05 10 a0 e1                                      mov r1, r5
00428060  13 99 fb eb                                      bl #0x30e4b4
00428064  00 00 50 e3                                      cmp r0, #0
00428068  e0 50 84 15                                      strne r5, [r4, #0xe0]
0042806c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00428070  5c ca 56 00 f4 37 00 00                          .byte 0x5c, 0xca, 0x56, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x00428078, declared_size=320, range_size=320, mode=arm
; class-group: MenuCharacterSelect
; alias: _ZN19MenuCharacterSelect7SetAnimEPKc
; demangled: MenuCharacterSelect::SetAnim(char const*)
; decoder-mode: arm
00428078  70 40 2d e9                                      push {r4, r5, r6, lr}
0042807c  d0 30 90 e5                                      ldr r3, [r0, #0xd0]
00428080  08 d0 4d e2                                      sub sp, sp, #8
00428084  00 40 a0 e1                                      mov r4, r0
00428088  03 00 a0 e1                                      mov r0, r3
0042808c  00 30 93 e5                                      ldr r3, [r3]
00428090  0f e0 a0 e1                                      mov lr, pc
00428094  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00428098  00 61 9f e5                                      ldr r6, [pc, #0x100]
0042809c  00 50 50 e2                                      subs r5, r0, #0
004280a0  06 60 8f e0                                      add r6, pc, r6
004280a4  27 00 00 ba                                      blt #0x428148
004280a8  d0 30 94 e5                                      ldr r3, [r4, #0xd0]
004280ac  05 10 a0 e1                                      mov r1, r5
004280b0  03 00 a0 e1                                      mov r0, r3
004280b4  00 30 93 e5                                      ldr r3, [r3]
004280b8  0f e0 a0 e1                                      mov lr, pc
004280bc  10 f0 93 e5                                      ldr pc, [r3, #0x10]
004280c0  d0 30 94 e5                                      ldr r3, [r4, #0xd0]
004280c4  00 10 a0 e3                                      mov r1, #0
004280c8  03 00 a0 e1                                      mov r0, r3
004280cc  00 30 93 e5                                      ldr r3, [r3]
004280d0  0f e0 a0 e1                                      mov lr, pc
004280d4  40 f0 93 e5                                      ldr pc, [r3, #0x40]
004280d8  d0 30 94 e5                                      ldr r3, [r4, #0xd0]
004280dc  05 10 a0 e1                                      mov r1, r5
004280e0  03 00 a0 e1                                      mov r0, r3
004280e4  00 30 93 e5                                      ldr r3, [r3]
004280e8  0f e0 a0 e1                                      mov lr, pc
004280ec  20 f0 93 e5                                      ldr pc, [r3, #0x20]
004280f0  1b 9a fb eb                                      bl #0x30e964
004280f4  d0 30 94 e5                                      ldr r3, [r4, #0xd0]
004280f8  e4 00 84 e5                                      str r0, [r4, #0xe4]
004280fc  05 10 a0 e1                                      mov r1, r5
00428100  03 00 a0 e1                                      mov r0, r3
00428104  00 30 93 e5                                      ldr r3, [r3]
00428108  0f e0 a0 e1                                      mov lr, pc
0042810c  24 f0 93 e5                                      ldr pc, [r3, #0x24]
00428110  13 9a fb eb                                      bl #0x30e964
00428114  e4 30 94 e5                                      ldr r3, [r4, #0xe4]
00428118  e8 00 84 e5                                      str r0, [r4, #0xe8]
0042811c  d0 50 94 e5                                      ldr r5, [r4, #0xd0]
00428120  e0 30 84 e5                                      str r3, [r4, #0xe0]
00428124  03 00 a0 e1                                      mov r0, r3
00428128  e7 98 fb eb                                      bl #0x30e4cc
0042812c  00 40 95 e5                                      ldr r4, [r5]
00428130  00 10 a0 e1                                      mov r1, r0
00428134  05 00 a0 e1                                      mov r0, r5
00428138  0f e0 a0 e1                                      mov lr, pc
0042813c  0c f0 94 e5                                      ldr pc, [r4, #0xc]
00428140  08 d0 8d e2                                      add sp, sp, #8
00428144  70 80 bd e8                                      pop {r4, r5, r6, pc}
00428148  54 30 9f e5                                      ldr r3, [pc, #0x54]
0042814c  03 30 96 e7                                      ldr r3, [r6, r3]
00428150  00 30 93 e5                                      ldr r3, [r3]
00428154  02 00 53 e3                                      cmp r3, #2
00428158  00 30 a0 03                                      moveq r3, #0
0042815c  00 30 83 05                                      streq r3, [r3]
00428160  d0 ff ff 0a                                      beq #0x4280a8
00428164  01 00 53 e3                                      cmp r3, #1
00428168  ce ff ff 1a                                      bne #0x4280a8
0042816c  34 00 9f e5                                      ldr r0, [pc, #0x34]
00428170  34 10 9f e5                                      ldr r1, [pc, #0x34]
00428174  34 20 9f e5                                      ldr r2, [pc, #0x34]
00428178  00 00 96 e7                                      ldr r0, [r6, r0]
0042817c  30 30 9f e5                                      ldr r3, [pc, #0x30]
00428180  ef c1 00 e3                                      movw ip, #0x1ef
00428184  01 10 8f e0                                      add r1, pc, r1
00428188  02 20 8f e0                                      add r2, pc, r2
0042818c  03 30 8f e0                                      add r3, pc, r3
00428190  a8 00 80 e2                                      add r0, r0, #0xa8
00428194  00 c0 8d e5                                      str ip, [sp]
00428198  99 97 fb eb                                      bl #0x30e004
0042819c  c1 ff ff ea                                      b #0x4280a8
; mapping-symbol data/literal pool
004281a0  f0 c9 56 00 c0 39 00 00 c0 19 00 00 54 62 49 00  .byte 0xf0, 0xc9, 0x56, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x54, 0x62, 0x49, 0x00
004281b0  88 db 49 00 d4 14 4a 00                          .byte 0x88, 0xdb, 0x49, 0x00, 0xd4, 0x14, 0x4a, 0x00

; FUNCTION 0x004281b8, declared_size=520, range_size=520, mode=arm
; class-group: MenuCharacterSelect
; alias: _ZN19MenuCharacterSelect7OnEventERN8RenderFX5EventE
; demangled: MenuCharacterSelect::OnEvent(RenderFX::Event&)
; decoder-mode: arm
004281b8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
004281bc  fc 30 d0 e5                                      ldrb r3, [r0, #0xfc]
004281c0  e0 71 9f e5                                      ldr r7, [pc, #0x1e0]
004281c4  08 d0 4d e2                                      sub sp, sp, #8
004281c8  00 00 53 e3                                      cmp r3, #0
004281cc  00 40 a0 e1                                      mov r4, r0
004281d0  01 50 a0 e1                                      mov r5, r1
004281d4  07 70 8f e0                                      add r7, pc, r7
004281d8  06 00 00 0a                                      beq #0x4281f8
004281dc  08 30 91 e5                                      ldr r3, [r1, #8]
004281e0  02 00 53 e3                                      cmp r3, #2
004281e4  37 00 00 0a                                      beq #0x4282c8
004281e8  05 00 53 e3                                      cmp r3, #5
004281ec  00 30 a0 13                                      movne r3, #0
004281f0  f4 30 c0 15                                      strbne r3, [r0, #0xf4]
004281f4  04 00 00 0a                                      beq #0x42820c
004281f8  04 00 a0 e1                                      mov r0, r4
004281fc  05 10 a0 e1                                      mov r1, r5
00428200  08 d0 8d e2                                      add sp, sp, #8
00428204  f0 47 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, lr}
00428208  01 ec ff ea                                      b #0x423214
0042820c  f4 30 d0 e5                                      ldrb r3, [r0, #0xf4]
00428210  00 00 53 e3                                      cmp r3, #0
00428214  3a 00 00 0a                                      beq #0x428304
00428218  f8 10 90 e5                                      ldr r1, [r0, #0xf8]
0042821c  0c 00 95 e5                                      ldr r0, [r5, #0xc]
00428220  61 98 fb eb                                      bl #0x30e3ac
00428224  a8 98 fb eb                                      bl #0x30e4cc
00428228  64 00 50 e3                                      cmp r0, #0x64
0042822c  39 00 00 ca                                      bgt #0x428318
00428230  64 00 70 e3                                      cmn r0, #0x64
00428234  ef ff ff aa                                      bge #0x4281f8
00428238  ec 30 94 e5                                      ldr r3, [r4, #0xec]
0042823c  01 00 53 e3                                      cmp r3, #1
00428240  ec ff ff ca                                      bgt #0x4281f8
00428244  60 21 9f e5                                      ldr r2, [pc, #0x160]
00428248  01 30 83 e2                                      add r3, r3, #1
0042824c  ec 30 84 e5                                      str r3, [r4, #0xec]
00428250  02 20 97 e7                                      ldr r2, [r7, r2]
00428254  54 31 9f e5                                      ldr r3, [pc, #0x154]
00428258  00 a0 92 e5                                      ldr sl, [r2]
0042825c  03 30 97 e7                                      ldr r3, [r7, r3]
00428260  00 00 5a e3                                      cmp sl, #0
00428264  00 60 93 e5                                      ldr r6, [r3]
00428268  4c 00 00 0a                                      beq #0x4283a0
0042826c  40 31 9f e5                                      ldr r3, [pc, #0x140]
00428270  40 91 9f e5                                      ldr sb, [pc, #0x140]
00428274  00 80 a0 e3                                      mov r8, #0
00428278  03 30 97 e7                                      ldr r3, [r7, r3]
0042827c  09 90 8f e0                                      add sb, pc, sb
00428280  00 70 93 e5                                      ldr r7, [r3]
00428284  02 00 00 ea                                      b #0x428294
00428288  01 80 88 e2                                      add r8, r8, #1
0042828c  0a 00 58 e1                                      cmp r8, sl
00428290  42 00 00 0a                                      beq #0x4283a0
00428294  08 11 97 e7                                      ldr r1, [r7, r8, lsl #2]
00428298  09 00 a0 e1                                      mov r0, sb
0042829c  1e 98 fb eb                                      bl #0x30e31c
004282a0  00 00 50 e3                                      cmp r0, #0
004282a4  f7 ff ff 1a                                      bne #0x428288
004282a8  08 10 a0 e1                                      mov r1, r8
004282ac  00 c0 a0 e3                                      mov ip, #0
004282b0  0c 20 a0 e1                                      mov r2, ip
004282b4  06 00 a0 e1                                      mov r0, r6
004282b8  0c 30 a0 e1                                      mov r3, ip
004282bc  00 c0 8d e5                                      str ip, [sp]
004282c0  5b 0e fd eb                                      bl #0x36bc34
004282c4  cb ff ff ea                                      b #0x4281f8
004282c8  01 0c 80 e2                                      add r0, r0, #0x100
004282cc  00 60 91 e5                                      ldr r6, [r1]
004282d0  9e fe ff eb                                      bl #0x427d50
004282d4  00 00 56 e1                                      cmp r6, r0
004282d8  2b 00 00 0a                                      beq #0x42838c
004282dc  13 0e 84 e2                                      add r0, r4, #0x130
004282e0  00 60 95 e5                                      ldr r6, [r5]
004282e4  99 fe ff eb                                      bl #0x427d50
004282e8  00 00 56 e1                                      cmp r6, r0
004282ec  c1 ff ff 1a                                      bne #0x4281f8
004282f0  ec 30 94 e5                                      ldr r3, [r4, #0xec]
004282f4  00 00 53 e3                                      cmp r3, #0
004282f8  01 30 43 c2                                      subgt r3, r3, #1
004282fc  ec 30 84 c5                                      strgt r3, [r4, #0xec]
00428300  bc ff ff ea                                      b #0x4281f8
00428304  01 30 a0 e3                                      mov r3, #1
00428308  f4 30 c0 e5                                      strb r3, [r0, #0xf4]
0042830c  0c 30 91 e5                                      ldr r3, [r1, #0xc]
00428310  f8 30 80 e5                                      str r3, [r0, #0xf8]
00428314  b7 ff ff ea                                      b #0x4281f8
00428318  ec 30 94 e5                                      ldr r3, [r4, #0xec]
0042831c  00 00 53 e3                                      cmp r3, #0
00428320  b4 ff ff da                                      ble #0x4281f8
00428324  80 20 9f e5                                      ldr r2, [pc, #0x80]
00428328  01 30 43 e2                                      sub r3, r3, #1
0042832c  ec 30 84 e5                                      str r3, [r4, #0xec]
00428330  02 20 97 e7                                      ldr r2, [r7, r2]
00428334  74 30 9f e5                                      ldr r3, [pc, #0x74]
00428338  00 a0 92 e5                                      ldr sl, [r2]
0042833c  03 30 97 e7                                      ldr r3, [r7, r3]
00428340  00 00 5a e3                                      cmp sl, #0
00428344  00 60 93 e5                                      ldr r6, [r3]
00428348  14 00 00 0a                                      beq #0x4283a0
0042834c  60 30 9f e5                                      ldr r3, [pc, #0x60]
00428350  64 90 9f e5                                      ldr sb, [pc, #0x64]
00428354  00 80 a0 e3                                      mov r8, #0
00428358  03 30 97 e7                                      ldr r3, [r7, r3]
0042835c  09 90 8f e0                                      add sb, pc, sb
00428360  00 70 93 e5                                      ldr r7, [r3]
00428364  02 00 00 ea                                      b #0x428374
00428368  01 80 88 e2                                      add r8, r8, #1
0042836c  0a 00 58 e1                                      cmp r8, sl
00428370  0a 00 00 0a                                      beq #0x4283a0
00428374  08 11 97 e7                                      ldr r1, [r7, r8, lsl #2]
00428378  09 00 a0 e1                                      mov r0, sb
0042837c  e6 97 fb eb                                      bl #0x30e31c
00428380  00 00 50 e3                                      cmp r0, #0
00428384  f7 ff ff 1a                                      bne #0x428368
00428388  c6 ff ff ea                                      b #0x4282a8
0042838c  ec 30 94 e5                                      ldr r3, [r4, #0xec]
00428390  01 00 53 e3                                      cmp r3, #1
00428394  01 30 83 d2                                      addle r3, r3, #1
00428398  ec 30 84 d5                                      strle r3, [r4, #0xec]
0042839c  95 ff ff ea                                      b #0x4281f8
004283a0  00 10 e0 e3                                      mvn r1, #0
004283a4  c0 ff ff ea                                      b #0x4282ac
; mapping-symbol data/literal pool
004283a8  bc c8 56 00 38 3d 00 00 a4 0d 00 00 a8 39 00 00  .byte 0xbc, 0xc8, 0x56, 0x00, 0x38, 0x3d, 0x00, 0x00, 0xa4, 0x0d, 0x00, 0x00, 0xa8, 0x39, 0x00, 0x00
004283b8  34 14 4a 00 54 13 4a 00                          .byte 0x34, 0x14, 0x4a, 0x00, 0x54, 0x13, 0x4a, 0x00

; FUNCTION 0x004283c0, declared_size=216, range_size=216, mode=arm
; class-group: MenuCharacterSelect
; alias: _ZN19MenuCharacterSelect4HideEv
; demangled: MenuCharacterSelect::Hide()
; decoder-mode: arm
004283c0  70 40 2d e9                                      push {r4, r5, r6, lr}
004283c4  00 30 90 e5                                      ldr r3, [r0]
004283c8  00 50 a0 e1                                      mov r5, r0
004283cc  0f e0 a0 e1                                      mov lr, pc
004283d0  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
004283d4  a8 40 9f e5                                      ldr r4, [pc, #0xa8]
004283d8  00 00 50 e3                                      cmp r0, #0
004283dc  04 40 8f e0                                      add r4, pc, r4
004283e0  00 00 00 1a                                      bne #0x4283e8
004283e4  70 80 bd e8                                      pop {r4, r5, r6, pc}
004283e8  05 00 a0 e1                                      mov r0, r5
004283ec  c0 f1 ff eb                                      bl #0x424af4
004283f0  c4 30 95 e5                                      ldr r3, [r5, #0xc4]
004283f4  00 00 53 e3                                      cmp r3, #0
004283f8  03 00 00 0a                                      beq #0x42840c
004283fc  03 00 a0 e1                                      mov r0, r3
00428400  00 30 93 e5                                      ldr r3, [r3]
00428404  0f e0 a0 e1                                      mov lr, pc
00428408  68 f0 93 e5                                      ldr pc, [r3, #0x68]
0042840c  74 30 9f e5                                      ldr r3, [pc, #0x74]
00428410  03 60 94 e7                                      ldr r6, [r4, r3]
00428414  10 30 96 e5                                      ldr r3, [r6, #0x10]
00428418  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
0042841c  03 00 a0 e1                                      mov r0, r3
00428420  00 30 93 e5                                      ldr r3, [r3]
00428424  0f e0 a0 e1                                      mov lr, pc
00428428  68 f0 93 e5                                      ldr pc, [r3, #0x68]
0042842c  38 00 96 e5                                      ldr r0, [r6, #0x38]
00428430  a0 84 fc eb                                      bl #0x3496b8
00428434  50 30 9f e5                                      ldr r3, [pc, #0x50]
00428438  03 00 94 e7                                      ldr r0, [r4, r3]
0042843c  88 34 01 eb                                      bl #0x475664
00428440  c5 0f 00 eb                                      bl #0x42c35c
00428444  bc 0e 00 eb                                      bl #0x42bf3c
00428448  c3 0f 00 eb                                      bl #0x42c35c
0042844c  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
00428450  00 20 a0 e3                                      mov r2, #0
00428454  03 30 94 e7                                      ldr r3, [r4, r3]
00428458  00 20 c3 e5                                      strb r2, [r3]
0042845c  be 0f 00 eb                                      bl #0x42c35c
00428460  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
00428464  60 21 95 e5                                      ldr r2, [r5, #0x160]
00428468  03 30 94 e7                                      ldr r3, [r4, r3]
0042846c  00 20 83 e5                                      str r2, [r3]
00428470  b9 0f 00 eb                                      bl #0x42c35c
00428474  25 10 00 eb                                      bl #0x42c510
00428478  b7 0f 00 eb                                      bl #0x42c35c
0042847c  70 40 bd e8                                      pop {r4, r5, r6, lr}
00428480  20 0e 00 ea                                      b #0x42bd08
; mapping-symbol data/literal pool
00428484  b4 c6 56 00 f4 37 00 00 38 48 00 00 00 32 00 00  .byte 0xb4, 0xc6, 0x56, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x38, 0x48, 0x00, 0x00, 0x00, 0x32, 0x00, 0x00
00428494  74 49 00 00                                      .byte 0x74, 0x49, 0x00, 0x00

; FUNCTION 0x00428498, declared_size=1756, range_size=1756, mode=arm
; class-group: MenuCharacterSelect
; alias: _ZN19MenuCharacterSelect6UpdateEv
; demangled: MenuCharacterSelect::Update()
; decoder-mode: arm
00428498  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0042849c  54 76 9f e5                                      ldr r7, [pc, #0x654]
004284a0  54 26 9f e5                                      ldr r2, [pc, #0x654]
004284a4  ec 50 90 e5                                      ldr r5, [r0, #0xec]
004284a8  07 70 8f e0                                      add r7, pc, r7
004284ac  f0 30 90 e5                                      ldr r3, [r0, #0xf0]
004284b0  02 60 97 e7                                      ldr r6, [r7, r2]
004284b4  3c d0 4d e2                                      sub sp, sp, #0x3c
004284b8  05 00 53 e1                                      cmp r3, r5
004284bc  00 40 a0 e1                                      mov r4, r0
004284c0  34 80 96 e5                                      ldr r8, [r6, #0x34]
004284c4  70 01 00 0a                                      beq #0x428a8c
004284c8  01 00 55 e3                                      cmp r5, #1
004284cc  04 01 00 0a                                      beq #0x4288e4
004284d0  02 00 55 e3                                      cmp r5, #2
004284d4  a2 00 00 0a                                      beq #0x428764
004284d8  00 00 55 e3                                      cmp r5, #0
004284dc  60 00 00 1a                                      bne #0x428664
004284e0  04 c0 94 e5                                      ldr ip, [r4, #4]
004284e4  5a 0f 80 e2                                      add r0, r0, #0x168
004284e8  10 a6 9f e5                                      ldr sl, [pc, #0x610]
004284ec  08 c0 8d e5                                      str ip, [sp, #8]
004284f0  16 fe ff eb                                      bl #0x427d50
004284f4  08 26 9f e5                                      ldr r2, [pc, #0x608]
004284f8  0a a0 8f e0                                      add sl, pc, sl
004284fc  00 b0 a0 e1                                      mov fp, r0
00428500  02 20 8f e0                                      add r2, pc, r2
00428504  0a 10 a0 e1                                      mov r1, sl
00428508  2c 00 96 e5                                      ldr r0, [r6, #0x2c]
0042850c  b2 71 02 eb                                      bl #0x4c4bdc
00428510  00 10 a0 e1                                      mov r1, r0
00428514  08 00 a0 e1                                      mov r0, r8
00428518  6f 82 03 eb                                      bl #0x508edc
0042851c  e4 95 9f e5                                      ldr sb, [pc, #0x5e4]
00428520  08 c0 9d e5                                      ldr ip, [sp, #8]
00428524  0b 10 a0 e1                                      mov r1, fp
00428528  09 90 8f e0                                      add sb, pc, sb
0042852c  01 b0 a0 e3                                      mov fp, #1
00428530  00 30 a0 e1                                      mov r3, r0
00428534  09 20 a0 e1                                      mov r2, sb
00428538  0c 00 a0 e1                                      mov r0, ip
0042853c  00 b0 8d e5                                      str fp, [sp]
00428540  cd 03 0e eb                                      bl #0x7a947c
00428544  04 30 94 e5                                      ldr r3, [r4, #4]
00428548  66 0f 84 e2                                      add r0, r4, #0x198
0042854c  0c 30 8d e5                                      str r3, [sp, #0xc]
00428550  fe fd ff eb                                      bl #0x427d50
00428554  b0 25 9f e5                                      ldr r2, [pc, #0x5b0]
00428558  00 c0 a0 e1                                      mov ip, r0
0042855c  0a 10 a0 e1                                      mov r1, sl
00428560  2c 00 96 e5                                      ldr r0, [r6, #0x2c]
00428564  02 20 8f e0                                      add r2, pc, r2
00428568  08 c0 8d e5                                      str ip, [sp, #8]
0042856c  9a 71 02 eb                                      bl #0x4c4bdc
00428570  00 10 a0 e1                                      mov r1, r0
00428574  08 00 a0 e1                                      mov r0, r8
00428578  57 82 03 eb                                      bl #0x508edc
0042857c  8c a5 9f e5                                      ldr sl, [pc, #0x58c]
00428580  08 c0 9d e5                                      ldr ip, [sp, #8]
00428584  00 30 a0 e1                                      mov r3, r0
00428588  09 20 a0 e1                                      mov r2, sb
0042858c  0c 10 a0 e1                                      mov r1, ip
00428590  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00428594  0a a0 8f e0                                      add sl, pc, sl
00428598  00 b0 8d e5                                      str fp, [sp]
0042859c  b6 03 0e eb                                      bl #0x7a947c
004285a0  0a 00 a0 e1                                      mov r0, sl
004285a4  f7 46 ff eb                                      bl #0x3fa188
004285a8  64 01 84 e5                                      str r0, [r4, #0x164]
004285ac  54 00 96 e5                                      ldr r0, [r6, #0x54]
004285b0  72 11 00 eb                                      bl #0x42cb80
004285b4  2c 60 8d e2                                      add r6, sp, #0x2c
004285b8  00 80 a0 e1                                      mov r8, r0
004285bc  0a 10 a0 e1                                      mov r1, sl
004285c0  06 00 a0 e1                                      mov r0, r6
004285c4  2d 50 cd e5                                      strb r5, [sp, #0x2d]
004285c8  2c 50 cd e5                                      strb r5, [sp, #0x2c]
004285cc  5f bb 0d eb                                      bl #0x797350
004285d0  3c 15 9f e5                                      ldr r1, [pc, #0x53c]
004285d4  3c 25 9f e5                                      ldr r2, [pc, #0x53c]
004285d8  06 30 a0 e1                                      mov r3, r6
004285dc  01 10 8f e0                                      add r1, pc, r1
004285e0  02 20 8f e0                                      add r2, pc, r2
004285e4  08 00 a0 e1                                      mov r0, r8
004285e8  00 b0 8d e5                                      str fp, [sp]
004285ec  7d 14 0e eb                                      bl #0x7ad7e8
004285f0  06 00 a0 e1                                      mov r0, r6
004285f4  ca ba 0d eb                                      bl #0x797124
004285f8  01 0c 84 e2                                      add r0, r4, #0x100
004285fc  04 50 94 e5                                      ldr r5, [r4, #4]
00428600  d2 fd ff eb                                      bl #0x427d50
00428604  44 10 90 e5                                      ldr r1, [r0, #0x44]
00428608  01 20 a0 e3                                      mov r2, #1
0042860c  05 00 a0 e1                                      mov r0, r5
00428610  d0 30 d1 e1                                      ldrsb r3, [r1]
00428614  01 00 73 e3                                      cmn r3, #1
00428618  0b 10 81 10                                      addne r1, r1, fp
0042861c  0c 10 91 05                                      ldreq r1, [r1, #0xc]
00428620  1d 03 0e eb                                      bl #0x7a929c
00428624  13 0e 84 e2                                      add r0, r4, #0x130
00428628  04 50 94 e5                                      ldr r5, [r4, #4]
0042862c  c7 fd ff eb                                      bl #0x427d50
00428630  44 10 90 e5                                      ldr r1, [r0, #0x44]
00428634  00 20 a0 e3                                      mov r2, #0
00428638  05 00 a0 e1                                      mov r0, r5
0042863c  d0 30 d1 e1                                      ldrsb r3, [r1]
00428640  01 00 73 e3                                      cmn r3, #1
00428644  01 10 81 12                                      addne r1, r1, #1
00428648  0c 10 91 05                                      ldreq r1, [r1, #0xc]
0042864c  12 03 0e eb                                      bl #0x7a929c
00428650  c4 14 9f e5                                      ldr r1, [pc, #0x4c4]
00428654  04 00 a0 e1                                      mov r0, r4
00428658  01 10 8f e0                                      add r1, pc, r1
0042865c  85 fe ff eb                                      bl #0x428078
00428660  ec 50 94 e5                                      ldr r5, [r4, #0xec]
00428664  05 30 a0 e1                                      mov r3, r5
00428668  00 50 a0 e3                                      mov r5, #0
0042866c  05 00 53 e1                                      cmp r3, r5
00428670  a8 84 9f e5                                      ldr r8, [pc, #0x4a8]
00428674  fc 50 c4 e5                                      strb r5, [r4, #0xfc]
00428678  f0 30 84 e5                                      str r3, [r4, #0xf0]
0042867c  04 60 a0 e1                                      mov r6, r4
00428680  a0 a0 a0 e3                                      mov sl, #0xa0
00428684  12 00 00 0a                                      beq #0x4286d4
00428688  d4 90 96 e5                                      ldr sb, [r6, #0xd4]
0042868c  08 30 97 e7                                      ldr r3, [r7, r8]
00428690  01 50 85 e2                                      add r5, r5, #1
00428694  09 00 a0 e1                                      mov r0, sb
00428698  00 b0 93 e5                                      ldr fp, [r3]
0042869c  e1 ea fd eb                                      bl #0x3a3228
004286a0  9a b0 23 e0                                      mla r3, sl, r0, fp
004286a4  00 20 a0 e3                                      mov r2, #0
004286a8  4f 0e 89 e2                                      add r0, sb, #0x4f0
004286ac  5c 10 93 e5                                      ldr r1, [r3, #0x5c]
004286b0  0c 00 80 e2                                      add r0, r0, #0xc
004286b4  02 30 a0 e1                                      mov r3, r2
004286b8  fa 64 fe eb                                      bl #0x3c1aa8
004286bc  03 00 55 e3                                      cmp r5, #3
004286c0  04 60 86 e2                                      add r6, r6, #4
004286c4  13 00 00 0a                                      beq #0x428718
004286c8  f0 30 94 e5                                      ldr r3, [r4, #0xf0]
004286cc  05 00 53 e1                                      cmp r3, r5
004286d0  ec ff ff 1a                                      bne #0x428688
004286d4  05 31 84 e0                                      add r3, r4, r5, lsl #2
004286d8  d4 90 93 e5                                      ldr sb, [r3, #0xd4]
004286dc  08 30 97 e7                                      ldr r3, [r7, r8]
004286e0  01 50 85 e2                                      add r5, r5, #1
004286e4  09 00 a0 e1                                      mov r0, sb
004286e8  00 b0 93 e5                                      ldr fp, [r3]
004286ec  cd ea fd eb                                      bl #0x3a3228
004286f0  9a b0 2b e0                                      mla fp, sl, r0, fp
004286f4  4f 0e 89 e2                                      add r0, sb, #0x4f0
004286f8  0c 00 80 e2                                      add r0, r0, #0xc
004286fc  60 10 9b e5                                      ldr r1, [fp, #0x60]
00428700  01 20 a0 e3                                      mov r2, #1
00428704  00 30 a0 e3                                      mov r3, #0
00428708  e6 64 fe eb                                      bl #0x3c1aa8
0042870c  03 00 55 e3                                      cmp r5, #3
00428710  04 60 86 e2                                      add r6, r6, #4
00428714  eb ff ff 1a                                      bne #0x4286c8
00428718  04 00 a0 e1                                      mov r0, r4
0042871c  36 fe ff eb                                      bl #0x427ffc
00428720  d4 00 94 e5                                      ldr r0, [r4, #0xd4]
00428724  00 00 50 e3                                      cmp r0, #0
00428728  49 0e 80 12                                      addne r0, r0, #0x490
0042872c  0c 00 80 12                                      addne r0, r0, #0xc
00428730  01 8a fe eb                                      bl #0x3caf3c
00428734  d8 00 94 e5                                      ldr r0, [r4, #0xd8]
00428738  00 00 50 e3                                      cmp r0, #0
0042873c  49 0e 80 12                                      addne r0, r0, #0x490
00428740  0c 00 80 12                                      addne r0, r0, #0xc
00428744  fc 89 fe eb                                      bl #0x3caf3c
00428748  dc 00 94 e5                                      ldr r0, [r4, #0xdc]
0042874c  00 00 50 e3                                      cmp r0, #0
00428750  49 0e 80 12                                      addne r0, r0, #0x490
00428754  0c 00 80 12                                      addne r0, r0, #0xc
00428758  f7 89 fe eb                                      bl #0x3caf3c
0042875c  3c d0 8d e2                                      add sp, sp, #0x3c
00428760  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00428764  5a 0f 80 e2                                      add r0, r0, #0x168
00428768  04 b0 94 e5                                      ldr fp, [r4, #4]
0042876c  77 fd ff eb                                      bl #0x427d50
00428770  ac 53 9f e5                                      ldr r5, [pc, #0x3ac]
00428774  ac 23 9f e5                                      ldr r2, [pc, #0x3ac]
00428778  00 90 a0 e1                                      mov sb, r0
0042877c  05 50 8f e0                                      add r5, pc, r5
00428780  02 20 8f e0                                      add r2, pc, r2
00428784  05 10 a0 e1                                      mov r1, r5
00428788  2c 00 96 e5                                      ldr r0, [r6, #0x2c]
0042878c  12 71 02 eb                                      bl #0x4c4bdc
00428790  00 10 a0 e1                                      mov r1, r0
00428794  08 00 a0 e1                                      mov r0, r8
00428798  cf 81 03 eb                                      bl #0x508edc
0042879c  88 a3 9f e5                                      ldr sl, [pc, #0x388]
004287a0  00 30 a0 e1                                      mov r3, r0
004287a4  09 10 a0 e1                                      mov r1, sb
004287a8  0a a0 8f e0                                      add sl, pc, sl
004287ac  01 90 a0 e3                                      mov sb, #1
004287b0  0b 00 a0 e1                                      mov r0, fp
004287b4  0a 20 a0 e1                                      mov r2, sl
004287b8  00 90 8d e5                                      str sb, [sp]
004287bc  2e 03 0e eb                                      bl #0x7a947c
004287c0  04 c0 94 e5                                      ldr ip, [r4, #4]
004287c4  66 0f 84 e2                                      add r0, r4, #0x198
004287c8  08 c0 8d e5                                      str ip, [sp, #8]
004287cc  5f fd ff eb                                      bl #0x427d50
004287d0  58 23 9f e5                                      ldr r2, [pc, #0x358]
004287d4  05 10 a0 e1                                      mov r1, r5
004287d8  00 b0 a0 e1                                      mov fp, r0
004287dc  02 20 8f e0                                      add r2, pc, r2
004287e0  2c 00 96 e5                                      ldr r0, [r6, #0x2c]
004287e4  fc 70 02 eb                                      bl #0x4c4bdc
004287e8  00 10 a0 e1                                      mov r1, r0
004287ec  08 00 a0 e1                                      mov r0, r8
004287f0  b9 81 03 eb                                      bl #0x508edc
004287f4  38 53 9f e5                                      ldr r5, [pc, #0x338]
004287f8  08 c0 9d e5                                      ldr ip, [sp, #8]
004287fc  00 30 a0 e1                                      mov r3, r0
00428800  0a 20 a0 e1                                      mov r2, sl
00428804  0c 00 a0 e1                                      mov r0, ip
00428808  0b 10 a0 e1                                      mov r1, fp
0042880c  05 50 8f e0                                      add r5, pc, r5
00428810  00 90 8d e5                                      str sb, [sp]
00428814  18 03 0e eb                                      bl #0x7a947c
00428818  05 00 a0 e1                                      mov r0, r5
0042881c  59 46 ff eb                                      bl #0x3fa188
00428820  64 01 84 e5                                      str r0, [r4, #0x164]
00428824  54 00 96 e5                                      ldr r0, [r6, #0x54]
00428828  d4 10 00 eb                                      bl #0x42cb80
0042882c  14 60 8d e2                                      add r6, sp, #0x14
00428830  00 30 a0 e3                                      mov r3, #0
00428834  05 10 a0 e1                                      mov r1, r5
00428838  00 80 a0 e1                                      mov r8, r0
0042883c  06 00 a0 e1                                      mov r0, r6
00428840  15 30 cd e5                                      strb r3, [sp, #0x15]
00428844  14 30 cd e5                                      strb r3, [sp, #0x14]
00428848  c0 ba 0d eb                                      bl #0x797350
0042884c  e4 12 9f e5                                      ldr r1, [pc, #0x2e4]
00428850  e4 22 9f e5                                      ldr r2, [pc, #0x2e4]
00428854  06 30 a0 e1                                      mov r3, r6
00428858  01 10 8f e0                                      add r1, pc, r1
0042885c  02 20 8f e0                                      add r2, pc, r2
00428860  08 00 a0 e1                                      mov r0, r8
00428864  00 90 8d e5                                      str sb, [sp]
00428868  de 13 0e eb                                      bl #0x7ad7e8
0042886c  06 00 a0 e1                                      mov r0, r6
00428870  2b ba 0d eb                                      bl #0x797124
00428874  01 0c 84 e2                                      add r0, r4, #0x100
00428878  04 50 94 e5                                      ldr r5, [r4, #4]
0042887c  33 fd ff eb                                      bl #0x427d50
00428880  44 10 90 e5                                      ldr r1, [r0, #0x44]
00428884  00 20 a0 e3                                      mov r2, #0
00428888  05 00 a0 e1                                      mov r0, r5
0042888c  d0 30 d1 e1                                      ldrsb r3, [r1]
00428890  01 00 73 e3                                      cmn r3, #1
00428894  09 10 81 10                                      addne r1, r1, sb
00428898  0c 10 91 05                                      ldreq r1, [r1, #0xc]
0042889c  7e 02 0e eb                                      bl #0x7a929c
004288a0  13 0e 84 e2                                      add r0, r4, #0x130
004288a4  04 50 94 e5                                      ldr r5, [r4, #4]
004288a8  28 fd ff eb                                      bl #0x427d50
004288ac  44 10 90 e5                                      ldr r1, [r0, #0x44]
004288b0  01 20 a0 e3                                      mov r2, #1
004288b4  05 00 a0 e1                                      mov r0, r5
004288b8  d0 30 d1 e1                                      ldrsb r3, [r1]
004288bc  01 00 73 e3                                      cmn r3, #1
004288c0  01 10 81 12                                      addne r1, r1, #1
004288c4  0c 10 91 05                                      ldreq r1, [r1, #0xc]
004288c8  73 02 0e eb                                      bl #0x7a929c
004288cc  6c 12 9f e5                                      ldr r1, [pc, #0x26c]
004288d0  04 00 a0 e1                                      mov r0, r4
004288d4  01 10 8f e0                                      add r1, pc, r1
004288d8  e6 fd ff eb                                      bl #0x428078
004288dc  ec 50 94 e5                                      ldr r5, [r4, #0xec]
004288e0  5f ff ff ea                                      b #0x428664
004288e4  04 c0 94 e5                                      ldr ip, [r4, #4]
004288e8  5a 0f 80 e2                                      add r0, r0, #0x168
004288ec  50 a2 9f e5                                      ldr sl, [pc, #0x250]
004288f0  08 c0 8d e5                                      str ip, [sp, #8]
004288f4  15 fd ff eb                                      bl #0x427d50
004288f8  48 22 9f e5                                      ldr r2, [pc, #0x248]
004288fc  0a a0 8f e0                                      add sl, pc, sl
00428900  00 b0 a0 e1                                      mov fp, r0
00428904  02 20 8f e0                                      add r2, pc, r2
00428908  0a 10 a0 e1                                      mov r1, sl
0042890c  2c 00 96 e5                                      ldr r0, [r6, #0x2c]
00428910  b1 70 02 eb                                      bl #0x4c4bdc
00428914  00 10 a0 e1                                      mov r1, r0
00428918  08 00 a0 e1                                      mov r0, r8
0042891c  6e 81 03 eb                                      bl #0x508edc
00428920  24 92 9f e5                                      ldr sb, [pc, #0x224]
00428924  08 c0 9d e5                                      ldr ip, [sp, #8]
00428928  00 30 a0 e1                                      mov r3, r0
0042892c  09 90 8f e0                                      add sb, pc, sb
00428930  0b 10 a0 e1                                      mov r1, fp
00428934  0c 00 a0 e1                                      mov r0, ip
00428938  09 20 a0 e1                                      mov r2, sb
0042893c  00 50 8d e5                                      str r5, [sp]
00428940  cd 02 0e eb                                      bl #0x7a947c
00428944  04 c0 94 e5                                      ldr ip, [r4, #4]
00428948  66 0f 84 e2                                      add r0, r4, #0x198
0042894c  08 c0 8d e5                                      str ip, [sp, #8]
00428950  fe fc ff eb                                      bl #0x427d50
00428954  f4 21 9f e5                                      ldr r2, [pc, #0x1f4]
00428958  0a 10 a0 e1                                      mov r1, sl
0042895c  00 b0 a0 e1                                      mov fp, r0
00428960  02 20 8f e0                                      add r2, pc, r2
00428964  2c 00 96 e5                                      ldr r0, [r6, #0x2c]
00428968  9b 70 02 eb                                      bl #0x4c4bdc
0042896c  00 10 a0 e1                                      mov r1, r0
00428970  08 00 a0 e1                                      mov r0, r8
00428974  58 81 03 eb                                      bl #0x508edc
00428978  d4 a1 9f e5                                      ldr sl, [pc, #0x1d4]
0042897c  08 c0 9d e5                                      ldr ip, [sp, #8]
00428980  00 30 a0 e1                                      mov r3, r0
00428984  09 20 a0 e1                                      mov r2, sb
00428988  0c 00 a0 e1                                      mov r0, ip
0042898c  0b 10 a0 e1                                      mov r1, fp
00428990  0a a0 8f e0                                      add sl, pc, sl
00428994  00 50 8d e5                                      str r5, [sp]
00428998  b7 02 0e eb                                      bl #0x7a947c
0042899c  0a 00 a0 e1                                      mov r0, sl
004289a0  f8 45 ff eb                                      bl #0x3fa188
004289a4  64 01 84 e5                                      str r0, [r4, #0x164]
004289a8  54 00 96 e5                                      ldr r0, [r6, #0x54]
004289ac  73 10 00 eb                                      bl #0x42cb80
004289b0  20 60 8d e2                                      add r6, sp, #0x20
004289b4  00 30 a0 e3                                      mov r3, #0
004289b8  00 80 a0 e1                                      mov r8, r0
004289bc  0a 10 a0 e1                                      mov r1, sl
004289c0  06 00 a0 e1                                      mov r0, r6
004289c4  21 30 cd e5                                      strb r3, [sp, #0x21]
004289c8  20 30 cd e5                                      strb r3, [sp, #0x20]
004289cc  5f ba 0d eb                                      bl #0x797350
004289d0  80 11 9f e5                                      ldr r1, [pc, #0x180]
004289d4  80 21 9f e5                                      ldr r2, [pc, #0x180]
004289d8  06 30 a0 e1                                      mov r3, r6
004289dc  01 10 8f e0                                      add r1, pc, r1
004289e0  02 20 8f e0                                      add r2, pc, r2
004289e4  08 00 a0 e1                                      mov r0, r8
004289e8  00 50 8d e5                                      str r5, [sp]
004289ec  7d 13 0e eb                                      bl #0x7ad7e8
004289f0  06 00 a0 e1                                      mov r0, r6
004289f4  ca b9 0d eb                                      bl #0x797124
004289f8  01 0c 84 e2                                      add r0, r4, #0x100
004289fc  04 50 94 e5                                      ldr r5, [r4, #4]
00428a00  d2 fc ff eb                                      bl #0x427d50
00428a04  44 10 90 e5                                      ldr r1, [r0, #0x44]
00428a08  01 20 a0 e3                                      mov r2, #1
00428a0c  05 00 a0 e1                                      mov r0, r5
00428a10  d0 30 d1 e1                                      ldrsb r3, [r1]
00428a14  01 00 73 e3                                      cmn r3, #1
00428a18  01 10 81 12                                      addne r1, r1, #1
00428a1c  0c 10 91 05                                      ldreq r1, [r1, #0xc]
00428a20  1d 02 0e eb                                      bl #0x7a929c
00428a24  13 0e 84 e2                                      add r0, r4, #0x130
00428a28  04 50 94 e5                                      ldr r5, [r4, #4]
00428a2c  c7 fc ff eb                                      bl #0x427d50
00428a30  44 10 90 e5                                      ldr r1, [r0, #0x44]
00428a34  01 20 a0 e3                                      mov r2, #1
00428a38  05 00 a0 e1                                      mov r0, r5
00428a3c  d0 30 d1 e1                                      ldrsb r3, [r1]
00428a40  01 00 73 e3                                      cmn r3, #1
00428a44  01 10 81 12                                      addne r1, r1, #1
00428a48  0c 10 91 05                                      ldreq r1, [r1, #0xc]
00428a4c  12 02 0e eb                                      bl #0x7a929c
00428a50  f0 30 94 e5                                      ldr r3, [r4, #0xf0]
00428a54  00 00 53 e3                                      cmp r3, #0
00428a58  05 00 00 1a                                      bne #0x428a74
00428a5c  fc 10 9f e5                                      ldr r1, [pc, #0xfc]
00428a60  04 00 a0 e1                                      mov r0, r4
00428a64  01 10 8f e0                                      add r1, pc, r1
00428a68  82 fd ff eb                                      bl #0x428078
00428a6c  ec 50 94 e5                                      ldr r5, [r4, #0xec]
00428a70  fb fe ff ea                                      b #0x428664
00428a74  e8 10 9f e5                                      ldr r1, [pc, #0xe8]
00428a78  04 00 a0 e1                                      mov r0, r4
00428a7c  01 10 8f e0                                      add r1, pc, r1
00428a80  7c fd ff eb                                      bl #0x428078
00428a84  ec 50 94 e5                                      ldr r5, [r4, #0xec]
00428a88  f5 fe ff ea                                      b #0x428664
00428a8c  51 fd ff eb                                      bl #0x427fd8
00428a90  00 00 50 e3                                      cmp r0, #0
00428a94  1f ff ff 0a                                      beq #0x428718
00428a98  ec 30 94 e5                                      ldr r3, [r4, #0xec]
00428a9c  01 00 53 e3                                      cmp r3, #1
00428aa0  0a 00 00 0a                                      beq #0x428ad0
00428aa4  02 00 53 e3                                      cmp r3, #2
00428aa8  0d 00 00 0a                                      beq #0x428ae4
00428aac  00 00 53 e3                                      cmp r3, #0
00428ab0  03 00 00 1a                                      bne #0x428ac4
00428ab4  ac 10 9f e5                                      ldr r1, [pc, #0xac]
00428ab8  04 00 a0 e1                                      mov r0, r4
00428abc  01 10 8f e0                                      add r1, pc, r1
00428ac0  6c fd ff eb                                      bl #0x428078
00428ac4  01 30 a0 e3                                      mov r3, #1
00428ac8  fc 30 c4 e5                                      strb r3, [r4, #0xfc]
00428acc  11 ff ff ea                                      b #0x428718
00428ad0  94 10 9f e5                                      ldr r1, [pc, #0x94]
00428ad4  04 00 a0 e1                                      mov r0, r4
00428ad8  01 10 8f e0                                      add r1, pc, r1
00428adc  65 fd ff eb                                      bl #0x428078
00428ae0  f7 ff ff ea                                      b #0x428ac4
00428ae4  84 10 9f e5                                      ldr r1, [pc, #0x84]
00428ae8  04 00 a0 e1                                      mov r0, r4
00428aec  01 10 8f e0                                      add r1, pc, r1
00428af0  60 fd ff eb                                      bl #0x428078
00428af4  f2 ff ff ea                                      b #0x428ac4
; mapping-symbol data/literal pool
00428af8  e8 c5 56 00 f4 37 00 00 30 67 49 00 b8 11 4a 00  .byte 0xe8, 0xc5, 0x56, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x30, 0x67, 0x49, 0x00, 0xb8, 0x11, 0x4a, 0x00
00428b08  c8 68 4c 00 64 11 4a 00 cc b7 49 00 04 11 4a 00  .byte 0xc8, 0x68, 0x4c, 0x00, 0x64, 0x11, 0x4a, 0x00, 0xcc, 0xb7, 0x49, 0x00, 0x04, 0x11, 0x4a, 0x00
00428b18  18 11 4a 00 b0 10 4a 00 44 48 00 00 ac 64 49 00  .byte 0x18, 0x11, 0x4a, 0x00, 0xb0, 0x10, 0x4a, 0x00, 0x44, 0x48, 0x00, 0x00, 0xac, 0x64, 0x49, 0x00
00428b28  d8 0f 4a 00 48 66 4c 00 8c 0f 4a 00 d4 e7 49 00  .byte 0xd8, 0x0f, 0x4a, 0x00, 0x48, 0x66, 0x4c, 0x00, 0x8c, 0x0f, 0x4a, 0x00, 0xd4, 0xe7, 0x49, 0x00
00428b38  88 0e 4a 00 9c 0e 4a 00 a4 0e 4a 00 2c 63 49 00  .byte 0x88, 0x0e, 0x4a, 0x00, 0x9c, 0x0e, 0x4a, 0x00, 0xa4, 0x0e, 0x4a, 0x00, 0x2c, 0x63, 0x49, 0x00
00428b48  14 0e 4a 00 c4 64 4c 00 c8 0d 4a 00 a0 e6 49 00  .byte 0x14, 0x0e, 0x4a, 0x00, 0xc4, 0x64, 0x4c, 0x00, 0xc8, 0x0d, 0x4a, 0x00, 0xa0, 0xe6, 0x49, 0x00
00428b58  04 0d 4a 00 18 0d 4a 00 d4 0c 4a 00 cc 0c 4a 00  .byte 0x04, 0x0d, 0x4a, 0x00, 0x18, 0x0d, 0x4a, 0x00, 0xd4, 0x0c, 0x4a, 0x00, 0xcc, 0x0c, 0x4a, 0x00
00428b68  cc 0c 4a 00 c0 0c 4a 00 bc 0c 4a 00              .byte 0xcc, 0x0c, 0x4a, 0x00, 0xc0, 0x0c, 0x4a, 0x00, 0xbc, 0x0c, 0x4a, 0x00

; FUNCTION 0x00428b74, declared_size=332, range_size=332, mode=arm
; class-group: MenuCharacterSelect
; alias: _ZN19MenuCharacterSelect21RenderClassSelectPaneERN7gameswf12render_stateEPv
; demangled: MenuCharacterSelect::RenderClassSelectPane(gameswf::render_state&, void*)
; decoder-mode: arm
00428b74  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00428b78  01 50 a0 e1                                      mov r5, r1
00428b7c  04 00 91 e5                                      ldr r0, [r1, #4]
00428b80  2c 11 9f e5                                      ldr r1, [pc, #0x12c]
00428b84  34 d0 4d e2                                      sub sp, sp, #0x34
00428b88  28 41 9f e5                                      ldr r4, [pc, #0x128]
00428b8c  01 10 8f e0                                      add r1, pc, r1
00428b90  72 01 0e eb                                      bl #0x7a9160
00428b94  00 10 a0 e1                                      mov r1, r0
00428b98  20 00 8d e2                                      add r0, sp, #0x20
00428b9c  b6 b7 ff eb                                      bl #0x416a7c
00428ba0  14 31 9f e5                                      ldr r3, [pc, #0x114]
00428ba4  04 40 8f e0                                      add r4, pc, r4
00428ba8  04 00 95 e5                                      ldr r0, [r5, #4]
00428bac  03 60 94 e7                                      ldr r6, [r4, r3]
00428bb0  10 30 96 e5                                      ldr r3, [r6, #0x10]
00428bb4  10 40 93 e5                                      ldr r4, [r3, #0x10]
00428bb8  cc 30 94 e5                                      ldr r3, [r4, #0xcc]
00428bbc  04 30 13 e5                                      ldr r3, [r3, #-4]
00428bc0  14 20 93 e5                                      ldr r2, [r3, #0x14]
00428bc4  10 20 8d e5                                      str r2, [sp, #0x10]
00428bc8  18 20 93 e5                                      ldr r2, [r3, #0x18]
00428bcc  14 20 8d e5                                      str r2, [sp, #0x14]
00428bd0  1c 20 93 e5                                      ldr r2, [r3, #0x1c]
00428bd4  18 20 8d e5                                      str r2, [sp, #0x18]
00428bd8  20 30 93 e5                                      ldr r3, [r3, #0x20]
00428bdc  1c 30 8d e5                                      str r3, [sp, #0x1c]
00428be0  31 fc 0d eb                                      bl #0x7a7cac
00428be4  53 b6 ff eb                                      bl #0x416538
00428be8  00 70 a0 e1                                      mov r7, r0
00428bec  04 00 95 e5                                      ldr r0, [r5, #4]
00428bf0  2d fc 0d eb                                      bl #0x7a7cac
00428bf4  5f b6 ff eb                                      bl #0x416578
00428bf8  07 10 a0 e1                                      mov r1, r7
00428bfc  00 50 a0 e1                                      mov r5, r0
00428c00  20 00 9d e5                                      ldr r0, [sp, #0x20]
00428c04  22 98 fb eb                                      bl #0x30ec94
00428c08  2f 96 fb eb                                      bl #0x30e4cc
00428c0c  07 10 a0 e1                                      mov r1, r7
00428c10  00 a0 a0 e1                                      mov sl, r0
00428c14  24 00 9d e5                                      ldr r0, [sp, #0x24]
00428c18  1d 98 fb eb                                      bl #0x30ec94
00428c1c  2a 96 fb eb                                      bl #0x30e4cc
00428c20  05 10 a0 e1                                      mov r1, r5
00428c24  00 70 a0 e1                                      mov r7, r0
00428c28  28 00 9d e5                                      ldr r0, [sp, #0x28]
00428c2c  18 98 fb eb                                      bl #0x30ec94
00428c30  25 96 fb eb                                      bl #0x30e4cc
00428c34  05 10 a0 e1                                      mov r1, r5
00428c38  00 80 a0 e1                                      mov r8, r0
00428c3c  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
00428c40  13 98 fb eb                                      bl #0x30ec94
00428c44  20 96 fb eb                                      bl #0x30e4cc
00428c48  00 a0 8d e5                                      str sl, [sp]
00428c4c  0c 00 8d e5                                      str r0, [sp, #0xc]
00428c50  04 80 8d e5                                      str r8, [sp, #4]
00428c54  08 70 8d e5                                      str r7, [sp, #8]
00428c58  cc 30 94 e5                                      ldr r3, [r4, #0xcc]
00428c5c  0d 10 a0 e1                                      mov r1, sp
00428c60  04 30 13 e5                                      ldr r3, [r3, #-4]
00428c64  03 00 a0 e1                                      mov r0, r3
00428c68  00 30 93 e5                                      ldr r3, [r3]
00428c6c  0f e0 a0 e1                                      mov lr, pc
00428c70  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00428c74  10 30 96 e5                                      ldr r3, [r6, #0x10]
00428c78  00 10 a0 e3                                      mov r1, #0
00428c7c  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
00428c80  03 00 a0 e1                                      mov r0, r3
00428c84  00 30 93 e5                                      ldr r3, [r3]
00428c88  0f e0 a0 e1                                      mov lr, pc
00428c8c  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
00428c90  cc 30 94 e5                                      ldr r3, [r4, #0xcc]
00428c94  10 10 8d e2                                      add r1, sp, #0x10
00428c98  04 30 13 e5                                      ldr r3, [r3, #-4]
00428c9c  03 00 a0 e1                                      mov r0, r3
00428ca0  00 30 93 e5                                      ldr r3, [r3]
00428ca4  0f e0 a0 e1                                      mov lr, pc
00428ca8  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00428cac  34 d0 8d e2                                      add sp, sp, #0x34
00428cb0  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
00428cb4  2c 0c 4a 00 ec be 56 00 f4 37 00 00              .byte 0x2c, 0x0c, 0x4a, 0x00, 0xec, 0xbe, 0x56, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x00428cc0, declared_size=132, range_size=132, mode=arm
; class-group: MenuCharacterSelect
; alias: _ZN19MenuCharacterSelect4InitEv
; demangled: MenuCharacterSelect::Init()
; decoder-mode: arm
00428cc0  70 40 2d e9                                      push {r4, r5, r6, lr}
00428cc4  00 40 a0 e1                                      mov r4, r0
00428cc8  6f 0f 00 eb                                      bl #0x42ca8c
00428ccc  04 10 a0 e1                                      mov r1, r4
00428cd0  6f 18 00 eb                                      bl #0x42ee94
00428cd4  04 50 94 e5                                      ldr r5, [r4, #4]
00428cd8  00 00 55 e3                                      cmp r5, #0
00428cdc  14 00 00 0a                                      beq #0x428d34
00428ce0  04 00 a0 e1                                      mov r0, r4
00428ce4  d8 e4 ff eb                                      bl #0x42204c
00428ce8  48 10 9f e5                                      ldr r1, [pc, #0x48]
00428cec  00 30 a0 e1                                      mov r3, r0
00428cf0  05 20 a0 e1                                      mov r2, r5
00428cf4  01 10 8f e0                                      add r1, pc, r1
00428cf8  5a 0f 84 e2                                      add r0, r4, #0x168
00428cfc  e7 fb ff eb                                      bl #0x427ca0
00428d00  04 00 a0 e1                                      mov r0, r4
00428d04  04 50 94 e5                                      ldr r5, [r4, #4]
00428d08  cf e4 ff eb                                      bl #0x42204c
00428d0c  28 10 9f e5                                      ldr r1, [pc, #0x28]
00428d10  00 30 a0 e1                                      mov r3, r0
00428d14  05 20 a0 e1                                      mov r2, r5
00428d18  01 10 8f e0                                      add r1, pc, r1
00428d1c  66 0f 84 e2                                      add r0, r4, #0x198
00428d20  de fb ff eb                                      bl #0x427ca0
00428d24  14 00 9f e5                                      ldr r0, [pc, #0x14]
00428d28  00 00 8f e0                                      add r0, pc, r0
00428d2c  15 45 ff eb                                      bl #0x3fa188
00428d30  64 01 84 e5                                      str r0, [r4, #0x164]
00428d34  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00428d38  d4 0a 4a 00 c8 0a 4a 00 38 b0 49 00              .byte 0xd4, 0x0a, 0x4a, 0x00, 0xc8, 0x0a, 0x4a, 0x00, 0x38, 0xb0, 0x49, 0x00

; FUNCTION 0x00428d44, declared_size=84, range_size=84, mode=arm
; class-group: MenuCharacterSelect
; alias: _ZN19MenuCharacterSelectD1Ev
; demangled: MenuCharacterSelect::~MenuCharacterSelect()
; decoder-mode: arm
00428d44  44 30 9f e5                                      ldr r3, [pc, #0x44]
00428d48  44 20 9f e5                                      ldr r2, [pc, #0x44]
00428d4c  10 40 2d e9                                      push {r4, lr}
00428d50  03 30 8f e0                                      add r3, pc, r3
00428d54  02 20 93 e7                                      ldr r2, [r3, r2]
00428d58  00 40 a0 e1                                      mov r4, r0
00428d5c  08 20 82 e2                                      add r2, r2, #8
00428d60  98 21 80 e4                                      str r2, [r0], #0x198
00428d64  24 c7 ff eb                                      bl #0x41a9fc
00428d68  5a 0f 84 e2                                      add r0, r4, #0x168
00428d6c  22 c7 ff eb                                      bl #0x41a9fc
00428d70  13 0e 84 e2                                      add r0, r4, #0x130
00428d74  20 c7 ff eb                                      bl #0x41a9fc
00428d78  01 0c 84 e2                                      add r0, r4, #0x100
00428d7c  1e c7 ff eb                                      bl #0x41a9fc
00428d80  04 00 a0 e1                                      mov r0, r4
00428d84  fa e6 ff eb                                      bl #0x422974
00428d88  04 00 a0 e1                                      mov r0, r4
00428d8c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00428d90  40 bd 56 00 28 0f 00 00                          .byte 0x40, 0xbd, 0x56, 0x00, 0x28, 0x0f, 0x00, 0x00

; FUNCTION 0x00428d98, declared_size=28, range_size=28, mode=arm
; class-group: MenuCharacterSelect
; alias: _ZN19MenuCharacterSelectD0Ev
; demangled: MenuCharacterSelect::~MenuCharacterSelect()
; decoder-mode: arm
00428d98  10 40 2d e9                                      push {r4, lr}
00428d9c  00 40 a0 e1                                      mov r4, r0
00428da0  e7 ff ff eb                                      bl #0x428d44
00428da4  04 00 a0 e1                                      mov r0, r4
00428da8  a4 9d fb eb                                      bl #0x310440
00428dac  04 00 a0 e1                                      mov r0, r4
00428db0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00428db4, declared_size=84, range_size=84, mode=arm
; class-group: MenuCharacterSelect
; alias: _ZN19MenuCharacterSelectD2Ev
; demangled: MenuCharacterSelect::~MenuCharacterSelect()
; decoder-mode: arm
00428db4  44 30 9f e5                                      ldr r3, [pc, #0x44]
00428db8  44 20 9f e5                                      ldr r2, [pc, #0x44]
00428dbc  10 40 2d e9                                      push {r4, lr}
00428dc0  03 30 8f e0                                      add r3, pc, r3
00428dc4  02 20 93 e7                                      ldr r2, [r3, r2]
00428dc8  00 40 a0 e1                                      mov r4, r0
00428dcc  08 20 82 e2                                      add r2, r2, #8
00428dd0  98 21 80 e4                                      str r2, [r0], #0x198
00428dd4  08 c7 ff eb                                      bl #0x41a9fc
00428dd8  5a 0f 84 e2                                      add r0, r4, #0x168
00428ddc  06 c7 ff eb                                      bl #0x41a9fc
00428de0  13 0e 84 e2                                      add r0, r4, #0x130
00428de4  04 c7 ff eb                                      bl #0x41a9fc
00428de8  01 0c 84 e2                                      add r0, r4, #0x100
00428dec  02 c7 ff eb                                      bl #0x41a9fc
00428df0  04 00 a0 e1                                      mov r0, r4
00428df4  de e6 ff eb                                      bl #0x422974
00428df8  04 00 a0 e1                                      mov r0, r4
00428dfc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00428e00  d0 bc 56 00 28 0f 00 00                          .byte 0xd0, 0xbc, 0x56, 0x00, 0x28, 0x0f, 0x00, 0x00

; FUNCTION 0x00428f38, declared_size=2912, range_size=2912, mode=arm
; class-group: MenuCharacterSelect
; alias: _ZN19MenuCharacterSelect4ShowEv
; demangled: MenuCharacterSelect::Show()
; decoder-mode: arm
00428f38  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00428f3c  b8 5a 9f e5                                      ldr r5, [pc, #0xab8]
00428f40  b8 1a 9f e5                                      ldr r1, [pc, #0xab8]
00428f44  61 df 4d e2                                      sub sp, sp, #0x184
00428f48  05 50 8f e0                                      add r5, pc, r5
00428f4c  01 30 95 e7                                      ldr r3, [r5, r1]
00428f50  2c 10 8d e5                                      str r1, [sp, #0x2c]
00428f54  00 60 a0 e1                                      mov r6, r0
00428f58  00 30 93 e5                                      ldr r3, [r3]
00428f5c  01 40 a0 e3                                      mov r4, #1
00428f60  00 80 e0 e3                                      mvn r8, #0
00428f64  7c 31 8d e5                                      str r3, [sp, #0x17c]
00428f68  fb 0c 00 eb                                      bl #0x42c35c
00428f6c  d2 0b 00 eb                                      bl #0x42bebc
00428f70  f9 0c 00 eb                                      bl #0x42c35c
00428f74  dc 0a 00 eb                                      bl #0x42baec
00428f78  f7 0c 00 eb                                      bl #0x42c35c
00428f7c  80 3a 9f e5                                      ldr r3, [pc, #0xa80]
00428f80  03 70 95 e7                                      ldr r7, [r5, r3]
00428f84  00 30 97 e5                                      ldr r3, [r7]
00428f88  60 31 86 e5                                      str r3, [r6, #0x160]
00428f8c  f2 0c 00 eb                                      bl #0x42c35c
00428f90  70 3a 9f e5                                      ldr r3, [pc, #0xa70]
00428f94  03 30 95 e7                                      ldr r3, [r5, r3]
00428f98  00 40 c3 e5                                      strb r4, [r3]
00428f9c  ee 0c 00 eb                                      bl #0x42c35c
00428fa0  00 80 87 e5                                      str r8, [r7]
00428fa4  00 30 96 e5                                      ldr r3, [r6]
00428fa8  06 00 a0 e1                                      mov r0, r6
00428fac  0f e0 a0 e1                                      mov lr, pc
00428fb0  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
00428fb4  00 00 50 e3                                      cmp r0, #0
00428fb8  07 00 00 1a                                      bne #0x428fdc
00428fbc  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
00428fc0  7c 21 9d e5                                      ldr r2, [sp, #0x17c]
00428fc4  01 30 95 e7                                      ldr r3, [r5, r1]
00428fc8  00 30 93 e5                                      ldr r3, [r3]
00428fcc  03 00 52 e1                                      cmp r2, r3
00428fd0  88 02 00 1a                                      bne #0x4299f8
00428fd4  61 df 8d e2                                      add sp, sp, #0x184
00428fd8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00428fdc  06 00 a0 e1                                      mov r0, r6
00428fe0  1a f1 ff eb                                      bl #0x425450
00428fe4  20 3a 9f e5                                      ldr r3, [pc, #0xa20]
00428fe8  f0 80 86 e5                                      str r8, [r6, #0xf0]
00428fec  1c 2a 9f e5                                      ldr r2, [pc, #0xa1c]
00428ff0  03 80 95 e7                                      ldr r8, [r5, r3]
00428ff4  59 7f 8d e2                                      add r7, sp, #0x164
00428ff8  18 20 8d e5                                      str r2, [sp, #0x18]
00428ffc  08 00 a0 e1                                      mov r0, r8
00429000  20 3a fc eb                                      bl #0x337888
00429004  07 00 a0 e1                                      mov r0, r7
00429008  1d 10 a0 e3                                      mov r1, #0x1d
0042900c  74 71 8d e5                                      str r7, [sp, #0x174]
00429010  78 71 8d e5                                      str r7, [sp, #0x178]
00429014  98 a1 fb eb                                      bl #0x31167c
00429018  f4 19 9f e5                                      ldr r1, [pc, #0x9f4]
0042901c  1c 20 a0 e3                                      mov r2, #0x1c
00429020  78 01 9d e5                                      ldr r0, [sp, #0x178]
00429024  01 10 8f e0                                      add r1, pc, r1
00429028  0e 96 fb eb                                      bl #0x30e868
0042902c  00 a0 a0 e3                                      mov sl, #0
00429030  1c 30 80 e2                                      add r3, r0, #0x1c
00429034  74 31 8d e5                                      str r3, [sp, #0x174]
00429038  07 10 a0 e1                                      mov r1, r7
0042903c  1c a0 c0 e5                                      strb sl, [r0, #0x1c]
00429040  08 00 a0 e1                                      mov r0, r8
00429044  8f 3a fc eb                                      bl #0x337a88
00429048  07 00 a0 e1                                      mov r0, r7
0042904c  56 aa fb eb                                      bl #0x3139ac
00429050  c0 19 9f e5                                      ldr r1, [pc, #0x9c0]
00429054  dc 30 8d e2                                      add r3, sp, #0xdc
00429058  04 00 96 e5                                      ldr r0, [r6, #4]
0042905c  01 10 8f e0                                      add r1, pc, r1
00429060  34 30 8d e5                                      str r3, [sp, #0x34]
00429064  3d 00 0e eb                                      bl #0x7a9160
00429068  00 70 a0 e1                                      mov r7, r0
0042906c  9c 40 c0 e5                                      strb r4, [r0, #0x9c]
00429070  07 10 a0 e1                                      mov r1, r7
00429074  04 00 96 e5                                      ldr r0, [r6, #4]
00429078  04 20 a0 e1                                      mov r2, r4
0042907c  62 0a 0e eb                                      bl #0x7aba0c
00429080  94 29 9f e5                                      ldr r2, [pc, #0x994]
00429084  07 10 a0 e1                                      mov r1, r7
00429088  06 30 a0 e1                                      mov r3, r6
0042908c  02 20 95 e7                                      ldr r2, [r5, r2]
00429090  04 00 96 e5                                      ldr r0, [r6, #4]
00429094  79 fb 0d eb                                      bl #0x7a7e80
00429098  80 39 9f e5                                      ldr r3, [pc, #0x980]
0042909c  80 19 9f e5                                      ldr r1, [pc, #0x980]
004290a0  34 00 9d e5                                      ldr r0, [sp, #0x34]
004290a4  03 20 95 e7                                      ldr r2, [r5, r3]
004290a8  01 10 8f e0                                      add r1, pc, r1
004290ac  6a 98 07 eb                                      bl #0x60f25c
004290b0  18 10 9d e5                                      ldr r1, [sp, #0x18]
004290b4  34 00 9d e5                                      ldr r0, [sp, #0x34]
004290b8  00 80 a0 e3                                      mov r8, #0
004290bc  01 70 95 e7                                      ldr r7, [r5, r1]
004290c0  fe 95 a0 e3                                      mov sb, #0x3f800000
004290c4  10 30 97 e5                                      ldr r3, [r7, #0x10]
004290c8  10 10 93 e5                                      ldr r1, [r3, #0x10]
004290cc  45 ca 07 eb                                      bl #0x61b9e8
004290d0  c4 00 86 e5                                      str r0, [r6, #0xc4]
004290d4  10 30 97 e5                                      ldr r3, [r7, #0x10]
004290d8  00 10 a0 e1                                      mov r1, r0
004290dc  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
004290e0  04 30 93 e5                                      ldr r3, [r3, #4]
004290e4  03 00 a0 e1                                      mov r0, r3
004290e8  00 30 93 e5                                      ldr r3, [r3]
004290ec  0f e0 a0 e1                                      mov lr, pc
004290f0  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
004290f4  64 11 06 e3                                      movw r1, #0x6164
004290f8  65 13 46 e3                                      movt r1, #0x6365
004290fc  c4 00 96 e5                                      ldr r0, [r6, #0xc4]
00429100  99 b7 05 eb                                      bl #0x596f6c
00429104  c8 00 86 e5                                      str r0, [r6, #0xc8]
00429108  00 30 90 e5                                      ldr r3, [r0]
0042910c  d0 10 8d e2                                      add r1, sp, #0xd0
00429110  14 31 93 e5                                      ldr r3, [r3, #0x114]
00429114  d8 90 8d e5                                      str sb, [sp, #0xd8]
00429118  d0 80 8d e5                                      str r8, [sp, #0xd0]
0042911c  d4 80 8d e5                                      str r8, [sp, #0xd4]
00429120  33 ff 2f e1                                      blx r3
00429124  c8 30 96 e5                                      ldr r3, [r6, #0xc8]
00429128  42 14 a0 e3                                      mov r1, #0x42000000
0042912c  12 17 81 e2                                      add r1, r1, #0x480000
00429130  03 00 a0 e1                                      mov r0, r3
00429134  00 30 93 e5                                      ldr r3, [r3]
00429138  0f e0 a0 e1                                      mov lr, pc
0042913c  30 f1 93 e5                                      ldr pc, [r3, #0x130]
00429140  c8 30 96 e5                                      ldr r3, [r6, #0xc8]
00429144  00 10 05 e3                                      movw r1, #0x5000
00429148  43 17 44 e3                                      movt r1, #0x4743
0042914c  03 00 a0 e1                                      mov r0, r3
00429150  00 30 93 e5                                      ldr r3, [r3]
00429154  0f e0 a0 e1                                      mov lr, pc
00429158  34 f1 93 e5                                      ldr pc, [r3, #0x134]
0042915c  c3 34 a0 e3                                      mov r3, #0xc3000000
00429160  08 20 a0 e1                                      mov r2, r8
00429164  12 37 83 e2                                      add r3, r3, #0x480000
00429168  c8 00 96 e5                                      ldr r0, [r6, #0xc8]
0042916c  08 10 a0 e1                                      mov r1, r8
00429170  f7 b7 05 eb                                      bl #0x597154
00429174  10 30 97 e5                                      ldr r3, [r7, #0x10]
00429178  c8 10 96 e5                                      ldr r1, [r6, #0xc8]
0042917c  1c 00 93 e5                                      ldr r0, [r3, #0x1c]
00429180  ce 7f 05 eb                                      bl #0x5890c0
00429184  10 30 97 e5                                      ldr r3, [r7, #0x10]
00429188  54 10 8d e2                                      add r1, sp, #0x54
0042918c  1c 00 93 e5                                      ldr r0, [r3, #0x1c]
00429190  60 90 8d e5                                      str sb, [sp, #0x60]
00429194  5c 80 8d e5                                      str r8, [sp, #0x5c]
00429198  54 80 8d e5                                      str r8, [sp, #0x54]
0042919c  58 80 8d e5                                      str r8, [sp, #0x58]
004291a0  d8 80 05 eb                                      bl #0x589508
004291a4  10 30 97 e5                                      ldr r3, [r7, #0x10]
004291a8  6c 17 06 e3                                      movw r1, #0x676c
004291ac  68 14 47 e3                                      movt r1, #0x7468
004291b0  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
004291b4  0a 20 a0 e1                                      mov r2, sl
004291b8  03 00 a0 e1                                      mov r0, r3
004291bc  00 30 93 e5                                      ldr r3, [r3]
004291c0  0f e0 a0 e1                                      mov lr, pc
004291c4  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
004291c8  00 90 50 e2                                      subs sb, r0, #0
004291cc  45 00 00 0a                                      beq #0x4292e8
004291d0  50 28 9f e5                                      ldr r2, [pc, #0x850]
004291d4  50 38 9f e5                                      ldr r3, [pc, #0x850]
004291d8  38 10 97 e5                                      ldr r1, [r7, #0x38]
004291dc  c4 70 8d e2                                      add r7, sp, #0xc4
004291e0  02 20 8f e0                                      add r2, pc, r2
004291e4  03 30 8f e0                                      add r3, pc, r3
004291e8  07 00 a0 e1                                      mov r0, r7
004291ec  04 40 8d e5                                      str r4, [sp, #4]
004291f0  00 40 8d e5                                      str r4, [sp]
004291f4  4a 89 fc eb                                      bl #0x34b724
004291f8  07 00 a0 e1                                      mov r0, r7
004291fc  0a 10 a0 e1                                      mov r1, sl
00429200  ee 5a fc eb                                      bl #0x33fdc0
00429204  00 40 50 e2                                      subs r4, r0, #0
00429208  03 00 00 0a                                      beq #0x42921c
0042920c  f4 30 94 e5                                      ldr r3, [r4, #0xf4]
00429210  13 00 53 e3                                      cmp r3, #0x13
00429214  04 80 a0 01                                      moveq r8, r4
00429218  01 00 00 0a                                      beq #0x429224
0042921c  00 80 a0 e3                                      mov r8, #0
00429220  08 40 a0 e1                                      mov r4, r8
00429224  09 10 a0 e1                                      mov r1, sb
00429228  04 00 a0 e1                                      mov r0, r4
0042922c  99 88 ff eb                                      bl #0x40b498
00429230  00 10 a0 e3                                      mov r1, #0
00429234  01 20 a0 e1                                      mov r2, r1
00429238  04 00 a0 e1                                      mov r0, r4
0042923c  79 89 ff eb                                      bl #0x40b828
00429240  18 20 9d e5                                      ldr r2, [sp, #0x18]
00429244  02 30 95 e7                                      ldr r3, [r5, r2]
00429248  10 30 93 e5                                      ldr r3, [r3, #0x10]
0042924c  1c 70 93 e5                                      ldr r7, [r3, #0x1c]
00429250  28 a4 97 e5                                      ldr sl, [r7, #0x428]
00429254  2c 34 97 e5                                      ldr r3, [r7, #0x42c]
00429258  03 00 5a e1                                      cmp sl, r3
0042925c  c4 01 00 0a                                      beq #0x429974
00429260  00 80 8a e5                                      str r8, [sl]
00429264  28 34 97 e5                                      ldr r3, [r7, #0x428]
00429268  04 30 83 e2                                      add r3, r3, #4
0042926c  28 34 87 e5                                      str r3, [r7, #0x428]
00429270  fb 35 a0 e3                                      mov r3, #0x3ec00000
00429274  b8 30 8d e5                                      str r3, [sp, #0xb8]
00429278  04 30 00 e3                                      movw r3, #4
0042927c  03 3f 43 e3                                      movt r3, #0x3f03
00429280  bc 30 8d e5                                      str r3, [sp, #0xbc]
00429284  2a 30 00 e3                                      movw r3, #0x2a
00429288  86 3f 43 e3                                      movt r3, #0x3f86
0042928c  04 00 a0 e1                                      mov r0, r4
00429290  b8 10 8d e2                                      add r1, sp, #0xb8
00429294  fe 75 a0 e3                                      mov r7, #0x3f800000
00429298  c0 30 8d e5                                      str r3, [sp, #0xc0]
0042929c  49 88 ff eb                                      bl #0x40b3c8
004292a0  04 00 a0 e1                                      mov r0, r4
004292a4  ac 10 8d e2                                      add r1, sp, #0xac
004292a8  ac 70 8d e5                                      str r7, [sp, #0xac]
004292ac  b0 70 8d e5                                      str r7, [sp, #0xb0]
004292b0  b4 70 8d e5                                      str r7, [sp, #0xb4]
004292b4  19 89 ff eb                                      bl #0x40b720
004292b8  04 00 a0 e1                                      mov r0, r4
004292bc  a0 10 8d e2                                      add r1, sp, #0xa0
004292c0  a0 70 8d e5                                      str r7, [sp, #0xa0]
004292c4  a4 70 8d e5                                      str r7, [sp, #0xa4]
004292c8  a8 70 8d e5                                      str r7, [sp, #0xa8]
004292cc  e8 88 ff eb                                      bl #0x40b674
004292d0  04 00 a0 e1                                      mov r0, r4
004292d4  94 10 8d e2                                      add r1, sp, #0x94
004292d8  9c 70 8d e5                                      str r7, [sp, #0x9c]
004292dc  94 70 8d e5                                      str r7, [sp, #0x94]
004292e0  98 70 8d e5                                      str r7, [sp, #0x98]
004292e4  b7 88 ff eb                                      bl #0x40b5c8
004292e8  34 00 9d e5                                      ldr r0, [sp, #0x34]
004292ec  18 9a 07 eb                                      bl #0x60fb54
004292f0  00 00 50 e3                                      cmp r0, #0
004292f4  cc 00 86 e5                                      str r0, [r6, #0xcc]
004292f8  1c 00 00 0a                                      beq #0x429370
004292fc  00 30 90 e5                                      ldr r3, [r0]
00429300  0f e0 a0 e1                                      mov lr, pc
00429304  44 f0 93 e5                                      ldr pc, [r3, #0x44]
00429308  d0 00 86 e5                                      str r0, [r6, #0xd0]
0042930c  00 30 90 e5                                      ldr r3, [r0]
00429310  00 10 a0 e3                                      mov r1, #0
00429314  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00429318  03 00 80 e0                                      add r0, r0, r3
0042931c  04 30 90 e5                                      ldr r3, [r0, #4]
00429320  01 30 83 e2                                      add r3, r3, #1
00429324  04 30 80 e5                                      str r3, [r0, #4]
00429328  cc 30 96 e5                                      ldr r3, [r6, #0xcc]
0042932c  03 00 a0 e1                                      mov r0, r3
00429330  00 30 93 e5                                      ldr r3, [r3]
00429334  0f e0 a0 e1                                      mov lr, pc
00429338  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
0042933c  cc 30 96 e5                                      ldr r3, [r6, #0xcc]
00429340  c4 10 96 e5                                      ldr r1, [r6, #0xc4]
00429344  03 00 a0 e1                                      mov r0, r3
00429348  00 30 93 e5                                      ldr r3, [r3]
0042934c  0f e0 a0 e1                                      mov lr, pc
00429350  28 f0 93 e5                                      ldr pc, [r3, #0x28]
00429354  cc 30 96 e5                                      ldr r3, [r6, #0xcc]
00429358  00 20 93 e5                                      ldr r2, [r3]
0042935c  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
00429360  02 30 83 e0                                      add r3, r3, r2
00429364  04 20 93 e5                                      ldr r2, [r3, #4]
00429368  01 20 82 e2                                      add r2, r2, #1
0042936c  04 20 83 e5                                      str r2, [r3, #4]
00429370  b8 16 9f e5                                      ldr r1, [pc, #0x6b8]
00429374  06 00 a0 e1                                      mov r0, r6
00429378  00 40 a0 e3                                      mov r4, #0
0042937c  01 10 8f e0                                      add r1, pc, r1
00429380  3c fb ff eb                                      bl #0x428078
00429384  01 30 a0 e3                                      mov r3, #1
00429388  64 11 06 e3                                      movw r1, #0x6164
0042938c  fc 30 c6 e5                                      strb r3, [r6, #0xfc]
00429390  ec 40 86 e5                                      str r4, [r6, #0xec]
00429394  c4 00 96 e5                                      ldr r0, [r6, #0xc4]
00429398  88 20 8d e2                                      add r2, sp, #0x88
0042939c  65 1e 46 e3                                      movt r1, #0x6e65
004293a0  88 40 8d e5                                      str r4, [sp, #0x88]
004293a4  8c 40 8d e5                                      str r4, [sp, #0x8c]
004293a8  90 40 8d e5                                      str r4, [sp, #0x90]
004293ac  88 be 05 eb                                      bl #0x598dd4
004293b0  88 30 9d e5                                      ldr r3, [sp, #0x88]
004293b4  8c 20 9d e5                                      ldr r2, [sp, #0x8c]
004293b8  02 20 63 e0                                      rsb r2, r3, r2
004293bc  22 21 b0 e1                                      lsrs r2, r2, #2
004293c0  51 bf 8d 02                                      addeq fp, sp, #0x144
004293c4  8a 00 00 0a                                      beq #0x4295f4
004293c8  64 26 9f e5                                      ldr r2, [pc, #0x664]
004293cc  64 16 9f e5                                      ldr r1, [pc, #0x664]
004293d0  51 bf 8d e2                                      add fp, sp, #0x144
004293d4  28 20 8d e5                                      str r2, [sp, #0x28]
004293d8  5c 26 9f e5                                      ldr r2, [pc, #0x65c]
004293dc  10 10 8d e5                                      str r1, [sp, #0x10]
004293e0  30 60 8d e5                                      str r6, [sp, #0x30]
004293e4  02 20 8f e0                                      add r2, pc, r2
004293e8  14 20 8d e5                                      str r2, [sp, #0x14]
004293ec  4c 26 9f e5                                      ldr r2, [pc, #0x64c]
004293f0  05 90 a0 e1                                      mov sb, r5
004293f4  02 20 8f e0                                      add r2, pc, r2
004293f8  1c 20 8d e5                                      str r2, [sp, #0x1c]
004293fc  40 26 9f e5                                      ldr r2, [pc, #0x640]
00429400  02 20 8f e0                                      add r2, pc, r2
00429404  20 20 8d e5                                      str r2, [sp, #0x20]
00429408  38 26 9f e5                                      ldr r2, [pc, #0x638]
0042940c  02 20 8f e0                                      add r2, pc, r2
00429410  24 20 8d e5                                      str r2, [sp, #0x24]
00429414  04 31 93 e7                                      ldr r3, [r3, r4, lsl #2]
00429418  04 61 a0 e1                                      lsl r6, r4, #2
0042941c  03 00 a0 e1                                      mov r0, r3
00429420  00 30 93 e5                                      ldr r3, [r3]
00429424  0f e0 a0 e1                                      mov lr, pc
00429428  24 f0 93 e5                                      ldr pc, [r3, #0x24]
0042942c  10 30 9d e5                                      ldr r3, [sp, #0x10]
00429430  03 10 8f e0                                      add r1, pc, r3
00429434  e6 95 fb eb                                      bl #0x30ebd4
00429438  00 00 50 e3                                      cmp r0, #0
0042943c  64 00 00 0a                                      beq #0x4295d4
00429440  11 70 80 e2                                      add r7, r0, #0x11
00429444  07 00 a0 e1                                      mov r0, r7
00429448  14 10 9d e5                                      ldr r1, [sp, #0x14]
0042944c  f0 94 fb eb                                      bl #0x30e814
00429450  01 50 40 e2                                      sub r5, r0, #1
00429454  1e 00 55 e3                                      cmp r5, #0x1e
00429458  08 00 00 da                                      ble #0x429480
0042945c  e8 35 9f e5                                      ldr r3, [pc, #0x5e8]
00429460  03 30 99 e7                                      ldr r3, [sb, r3]
00429464  00 30 93 e5                                      ldr r3, [r3]
00429468  02 00 53 e3                                      cmp r3, #2
0042946c  00 30 a0 03                                      moveq r3, #0
00429470  00 30 83 05                                      streq r3, [r3]
00429474  01 00 00 0a                                      beq #0x429480
00429478  01 00 53 e3                                      cmp r3, #1
0042947c  2f 01 00 0a                                      beq #0x429940
00429480  07 10 a0 e1                                      mov r1, r7
00429484  05 20 a0 e1                                      mov r2, r5
00429488  0b 00 a0 e1                                      mov r0, fp
0042948c  64 92 fb eb                                      bl #0x30de24
00429490  06 1d 8d e2                                      add r1, sp, #0x180
00429494  05 50 81 e0                                      add r5, r1, r5
00429498  00 30 a0 e3                                      mov r3, #0
0042949c  e4 a0 8d e2                                      add sl, sp, #0xe4
004294a0  49 8f 8d e2                                      add r8, sp, #0x124
004294a4  3c 30 45 e5                                      strb r3, [r5, #-0x3c]
004294a8  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
004294ac  0b 20 a0 e1                                      mov r2, fp
004294b0  0a 00 a0 e1                                      mov r0, sl
004294b4  8a 95 fb eb                                      bl #0x30eae4
004294b8  20 10 9d e5                                      ldr r1, [sp, #0x20]
004294bc  0b 20 a0 e1                                      mov r2, fp
004294c0  04 30 a0 e1                                      mov r3, r4
004294c4  08 00 a0 e1                                      mov r0, r8
004294c8  85 95 fb eb                                      bl #0x30eae4
004294cc  18 30 9d e5                                      ldr r3, [sp, #0x18]
004294d0  7c 70 8d e2                                      add r7, sp, #0x7c
004294d4  01 50 a0 e3                                      mov r5, #1
004294d8  03 20 99 e7                                      ldr r2, [sb, r3]
004294dc  07 00 a0 e1                                      mov r0, r7
004294e0  08 30 a0 e1                                      mov r3, r8
004294e4  38 10 92 e5                                      ldr r1, [r2, #0x38]
004294e8  24 20 9d e5                                      ldr r2, [sp, #0x24]
004294ec  00 50 8d e5                                      str r5, [sp]
004294f0  04 50 8d e5                                      str r5, [sp, #4]
004294f4  8a 88 fc eb                                      bl #0x34b724
004294f8  07 00 a0 e1                                      mov r0, r7
004294fc  78 5a fc eb                                      bl #0x33fee4
00429500  28 30 9d e5                                      ldr r3, [sp, #0x28]
00429504  00 70 a0 e1                                      mov r7, r0
00429508  0a 10 a0 e1                                      mov r1, sl
0042950c  03 20 8f e0                                      add r2, pc, r3
00429510  05 30 a0 e1                                      mov r3, r5
00429514  06 ae fd eb                                      bl #0x394d34
00429518  d8 32 97 e5                                      ldr r3, [r7, #0x2d8]
0042951c  08 70 93 e5                                      ldr r7, [r3, #8]
00429520  88 30 9d e5                                      ldr r3, [sp, #0x88]
00429524  00 20 97 e5                                      ldr r2, [r7]
00429528  06 30 93 e7                                      ldr r3, [r3, r6]
0042952c  a4 80 92 e5                                      ldr r8, [r2, #0xa4]
00429530  03 00 a0 e1                                      mov r0, r3
00429534  00 30 93 e5                                      ldr r3, [r3]
00429538  0f e0 a0 e1                                      mov lr, pc
0042953c  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
00429540  00 10 a0 e1                                      mov r1, r0
00429544  07 00 a0 e1                                      mov r0, r7
00429548  38 ff 2f e1                                      blx r8
0042954c  88 30 9d e5                                      ldr r3, [sp, #0x88]
00429550  00 20 97 e5                                      ldr r2, [r7]
00429554  06 30 93 e7                                      ldr r3, [r3, r6]
00429558  9c 80 92 e5                                      ldr r8, [r2, #0x9c]
0042955c  03 00 a0 e1                                      mov r0, r3
00429560  00 30 93 e5                                      ldr r3, [r3]
00429564  0f e0 a0 e1                                      mov lr, pc
00429568  98 f0 93 e5                                      ldr pc, [r3, #0x98]
0042956c  00 10 a0 e1                                      mov r1, r0
00429570  07 00 a0 e1                                      mov r0, r7
00429574  38 ff 2f e1                                      blx r8
00429578  88 30 9d e5                                      ldr r3, [sp, #0x88]
0042957c  00 20 97 e5                                      ldr r2, [r7]
00429580  06 30 93 e7                                      ldr r3, [r3, r6]
00429584  94 60 92 e5                                      ldr r6, [r2, #0x94]
00429588  03 00 a0 e1                                      mov r0, r3
0042958c  00 30 93 e5                                      ldr r3, [r3]
00429590  0f e0 a0 e1                                      mov lr, pc
00429594  90 f0 93 e5                                      ldr pc, [r3, #0x90]
00429598  00 10 a0 e1                                      mov r1, r0
0042959c  07 00 a0 e1                                      mov r0, r7
004295a0  36 ff 2f e1                                      blx r6
004295a4  07 00 a0 e1                                      mov r0, r7
004295a8  b9 b6 05 eb                                      bl #0x597094
004295ac  00 30 90 e5                                      ldr r3, [r0]
004295b0  08 30 93 e5                                      ldr r3, [r3, #8]
004295b4  03 00 a0 e1                                      mov r0, r3
004295b8  00 30 93 e5                                      ldr r3, [r3]
004295bc  0f e0 a0 e1                                      mov lr, pc
004295c0  44 f0 93 e5                                      ldr pc, [r3, #0x44]
004295c4  05 10 a0 e1                                      mov r1, r5
004295c8  00 30 90 e5                                      ldr r3, [r0]
004295cc  0f e0 a0 e1                                      mov lr, pc
004295d0  40 f0 93 e5                                      ldr pc, [r3, #0x40]
004295d4  88 30 9d e5                                      ldr r3, [sp, #0x88]
004295d8  8c 20 9d e5                                      ldr r2, [sp, #0x8c]
004295dc  01 40 84 e2                                      add r4, r4, #1
004295e0  02 20 63 e0                                      rsb r2, r3, r2
004295e4  42 01 54 e1                                      cmp r4, r2, asr #2
004295e8  89 ff ff 3a                                      blo #0x429414
004295ec  30 60 9d e5                                      ldr r6, [sp, #0x30]
004295f0  09 50 a0 e1                                      mov r5, sb
004295f4  54 34 9f e5                                      ldr r3, [pc, #0x454]
004295f8  54 14 9f e5                                      ldr r1, [pc, #0x454]
004295fc  54 24 9f e5                                      ldr r2, [pc, #0x454]
00429600  30 30 8d e5                                      str r3, [sp, #0x30]
00429604  50 34 9f e5                                      ldr r3, [pc, #0x450]
00429608  1c 10 8d e5                                      str r1, [sp, #0x1c]
0042960c  4c 14 9f e5                                      ldr r1, [pc, #0x44c]
00429610  24 30 8d e5                                      str r3, [sp, #0x24]
00429614  48 34 9f e5                                      ldr r3, [pc, #0x448]
00429618  28 20 8d e5                                      str r2, [sp, #0x28]
0042961c  44 24 9f e5                                      ldr r2, [pc, #0x444]
00429620  03 30 8f e0                                      add r3, pc, r3
00429624  3c 30 8d e5                                      str r3, [sp, #0x3c]
00429628  3c 34 9f e5                                      ldr r3, [pc, #0x43c]
0042962c  38 10 8d e5                                      str r1, [sp, #0x38]
00429630  38 14 9f e5                                      ldr r1, [pc, #0x438]
00429634  03 30 8f e0                                      add r3, pc, r3
00429638  40 30 8d e5                                      str r3, [sp, #0x40]
0042963c  30 34 9f e5                                      ldr r3, [pc, #0x430]
00429640  20 20 8d e5                                      str r2, [sp, #0x20]
00429644  70 20 8d e2                                      add r2, sp, #0x70
00429648  03 30 8f e0                                      add r3, pc, r3
0042964c  44 30 8d e5                                      str r3, [sp, #0x44]
00429650  20 34 9f e5                                      ldr r3, [pc, #0x420]
00429654  4c 10 8d e5                                      str r1, [sp, #0x4c]
00429658  06 40 a0 e1                                      mov r4, r6
0042965c  03 30 8f e0                                      add r3, pc, r3
00429660  48 30 8d e5                                      str r3, [sp, #0x48]
00429664  64 30 8d e2                                      add r3, sp, #0x64
00429668  00 a0 a0 e3                                      mov sl, #0
0042966c  14 20 8d e5                                      str r2, [sp, #0x14]
00429670  10 30 8d e5                                      str r3, [sp, #0x10]
00429674  06 70 a0 e1                                      mov r7, r6
00429678  05 80 a0 e1                                      mov r8, r5
0042967c  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00429680  28 30 9d e5                                      ldr r3, [sp, #0x28]
00429684  0b 00 a0 e1                                      mov r0, fp
00429688  02 10 8f e0                                      add r1, pc, r2
0042968c  03 20 8f e0                                      add r2, pc, r3
00429690  0a 30 a0 e1                                      mov r3, sl
00429694  12 95 fb eb                                      bl #0x30eae4
00429698  18 10 9d e5                                      ldr r1, [sp, #0x18]
0042969c  01 50 a0 e3                                      mov r5, #1
004296a0  14 00 9d e5                                      ldr r0, [sp, #0x14]
004296a4  01 30 98 e7                                      ldr r3, [r8, r1]
004296a8  30 10 9d e5                                      ldr r1, [sp, #0x30]
004296ac  01 20 8f e0                                      add r2, pc, r1
004296b0  38 10 93 e5                                      ldr r1, [r3, #0x38]
004296b4  0b 30 a0 e1                                      mov r3, fp
004296b8  00 50 8d e5                                      str r5, [sp]
004296bc  04 50 8d e5                                      str r5, [sp, #4]
004296c0  17 88 fc eb                                      bl #0x34b724
004296c4  14 00 9d e5                                      ldr r0, [sp, #0x14]
004296c8  21 5a fc eb                                      bl #0x33ff54
004296cc  d4 00 84 e5                                      str r0, [r4, #0xd4]
004296d0  38 20 9d e5                                      ldr r2, [sp, #0x38]
004296d4  20 30 9d e5                                      ldr r3, [sp, #0x20]
004296d8  02 10 8f e0                                      add r1, pc, r2
004296dc  03 20 8f e0                                      add r2, pc, r3
004296e0  05 30 a0 e1                                      mov r3, r5
004296e4  92 ad fd eb                                      bl #0x394d34
004296e8  d4 30 94 e5                                      ldr r3, [r4, #0xd4]
004296ec  05 10 a0 e1                                      mov r1, r5
004296f0  d8 52 93 e5                                      ldr r5, [r3, #0x2d8]
004296f4  05 00 a0 e1                                      mov r0, r5
004296f8  1a 1f 01 eb                                      bl #0x471368
004296fc  01 00 5a e3                                      cmp sl, #1
00429700  08 50 95 e5                                      ldr r5, [r5, #8]
00429704  81 00 00 0a                                      beq #0x429910
00429708  02 00 5a e3                                      cmp sl, #2
0042970c  73 00 00 0a                                      beq #0x4298e0
00429710  4c 10 9d e5                                      ldr r1, [sp, #0x4c]
00429714  d4 60 97 e5                                      ldr r6, [r7, #0xd4]
00429718  01 00 8f e0                                      add r0, pc, r1
0042971c  99 42 ff eb                                      bl #0x3fa188
00429720  56 6e 86 e2                                      add r6, r6, #0x560
00429724  00 10 a0 e1                                      mov r1, r0
00429728  06 00 a0 e1                                      mov r0, r6
0042972c  48 dc fe eb                                      bl #0x3e0854
00429730  44 13 9f e5                                      ldr r1, [pc, #0x344]
00429734  c4 00 97 e5                                      ldr r0, [r7, #0xc4]
00429738  01 10 8f e0                                      add r1, pc, r1
0042973c  6c bb 05 eb                                      bl #0x5984f4
00429740  00 60 a0 e1                                      mov r6, r0
00429744  d4 00 94 e5                                      ldr r0, [r4, #0xd4]
00429748  83 28 fe eb                                      bl #0x3b395c
0042974c  d4 00 94 e5                                      ldr r0, [r4, #0xd4]
00429750  01 a0 8a e2                                      add sl, sl, #1
00429754  49 0e 80 e2                                      add r0, r0, #0x490
00429758  0c 00 80 e2                                      add r0, r0, #0xc
0042975c  fa 81 fe eb                                      bl #0x3c9f4c
00429760  24 20 9d e5                                      ldr r2, [sp, #0x24]
00429764  d4 90 94 e5                                      ldr sb, [r4, #0xd4]
00429768  04 40 84 e2                                      add r4, r4, #4
0042976c  02 30 98 e7                                      ldr r3, [r8, r2]
00429770  09 00 a0 e1                                      mov r0, sb
00429774  00 30 93 e5                                      ldr r3, [r3]
00429778  0c 30 8d e5                                      str r3, [sp, #0xc]
0042977c  a9 e6 fd eb                                      bl #0x3a3228
00429780  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00429784  a0 20 a0 e3                                      mov r2, #0xa0
00429788  92 30 23 e0                                      mla r3, r2, r0, r3
0042978c  00 20 a0 e3                                      mov r2, #0
00429790  4f 0e 89 e2                                      add r0, sb, #0x4f0
00429794  5c 10 93 e5                                      ldr r1, [r3, #0x5c]
00429798  0c 00 80 e2                                      add r0, r0, #0xc
0042979c  02 30 a0 e1                                      mov r3, r2
004297a0  c0 60 fe eb                                      bl #0x3c1aa8
004297a4  00 30 95 e5                                      ldr r3, [r5]
004297a8  06 10 a0 e1                                      mov r1, r6
004297ac  10 00 9d e5                                      ldr r0, [sp, #0x10]
004297b0  a4 90 93 e5                                      ldr sb, [r3, #0xa4]
004297b4  71 b6 05 eb                                      bl #0x597180
004297b8  10 10 9d e5                                      ldr r1, [sp, #0x10]
004297bc  05 00 a0 e1                                      mov r0, r5
004297c0  39 ff 2f e1                                      blx sb
004297c4  00 20 95 e5                                      ldr r2, [r5]
004297c8  00 30 96 e5                                      ldr r3, [r6]
004297cc  06 00 a0 e1                                      mov r0, r6
004297d0  9c 90 92 e5                                      ldr sb, [r2, #0x9c]
004297d4  0f e0 a0 e1                                      mov lr, pc
004297d8  98 f0 93 e5                                      ldr pc, [r3, #0x98]
004297dc  00 10 a0 e1                                      mov r1, r0
004297e0  05 00 a0 e1                                      mov r0, r5
004297e4  39 ff 2f e1                                      blx sb
004297e8  00 20 95 e5                                      ldr r2, [r5]
004297ec  00 30 96 e5                                      ldr r3, [r6]
004297f0  06 00 a0 e1                                      mov r0, r6
004297f4  94 60 92 e5                                      ldr r6, [r2, #0x94]
004297f8  0f e0 a0 e1                                      mov lr, pc
004297fc  90 f0 93 e5                                      ldr pc, [r3, #0x90]
00429800  00 10 a0 e1                                      mov r1, r0
00429804  05 00 a0 e1                                      mov r0, r5
00429808  36 ff 2f e1                                      blx r6
0042980c  03 00 5a e3                                      cmp sl, #3
00429810  99 ff ff 1a                                      bne #0x42967c
00429814  07 00 a0 e1                                      mov r0, r7
00429818  04 40 97 e5                                      ldr r4, [r7, #4]
0042981c  0a e2 ff eb                                      bl #0x42204c
00429820  58 12 9f e5                                      ldr r1, [pc, #0x258]
00429824  07 60 a0 e1                                      mov r6, r7
00429828  01 7c 87 e2                                      add r7, r7, #0x100
0042982c  00 30 a0 e1                                      mov r3, r0
00429830  04 20 a0 e1                                      mov r2, r4
00429834  01 10 8f e0                                      add r1, pc, r1
00429838  07 00 a0 e1                                      mov r0, r7
0042983c  17 f9 ff eb                                      bl #0x427ca0
00429840  06 00 a0 e1                                      mov r0, r6
00429844  08 50 a0 e1                                      mov r5, r8
00429848  04 80 96 e5                                      ldr r8, [r6, #4]
0042984c  fe e1 ff eb                                      bl #0x42204c
00429850  2c 12 9f e5                                      ldr r1, [pc, #0x22c]
00429854  13 4e 86 e2                                      add r4, r6, #0x130
00429858  00 30 a0 e1                                      mov r3, r0
0042985c  08 20 a0 e1                                      mov r2, r8
00429860  01 10 8f e0                                      add r1, pc, r1
00429864  04 00 a0 e1                                      mov r0, r4
00429868  0c f9 ff eb                                      bl #0x427ca0
0042986c  07 00 a0 e1                                      mov r0, r7
00429870  04 70 96 e5                                      ldr r7, [r6, #4]
00429874  35 f9 ff eb                                      bl #0x427d50
00429878  44 10 90 e5                                      ldr r1, [r0, #0x44]
0042987c  01 20 a0 e3                                      mov r2, #1
00429880  07 00 a0 e1                                      mov r0, r7
00429884  d0 30 d1 e1                                      ldrsb r3, [r1]
00429888  01 00 73 e3                                      cmn r3, #1
0042988c  01 10 81 12                                      addne r1, r1, #1
00429890  0c 10 91 05                                      ldreq r1, [r1, #0xc]
00429894  80 fe 0d eb                                      bl #0x7a929c
00429898  04 00 a0 e1                                      mov r0, r4
0042989c  04 40 96 e5                                      ldr r4, [r6, #4]
004298a0  2a f9 ff eb                                      bl #0x427d50
004298a4  44 10 90 e5                                      ldr r1, [r0, #0x44]
004298a8  00 20 a0 e3                                      mov r2, #0
004298ac  04 00 a0 e1                                      mov r0, r4
004298b0  d0 30 d1 e1                                      ldrsb r3, [r1]
004298b4  01 00 73 e3                                      cmn r3, #1
004298b8  01 10 81 12                                      addne r1, r1, #1
004298bc  0c 10 91 05                                      ldreq r1, [r1, #0xc]
004298c0  75 fe 0d eb                                      bl #0x7a929c
004298c4  88 00 9d e5                                      ldr r0, [sp, #0x88]
004298c8  00 00 50 e3                                      cmp r0, #0
004298cc  00 00 00 0a                                      beq #0x4298d4
004298d0  de 9a fb eb                                      bl #0x310450
004298d4  34 00 9d e5                                      ldr r0, [sp, #0x34]
004298d8  e5 be 07 eb                                      bl #0x619474
004298dc  b6 fd ff ea                                      b #0x428fbc
004298e0  44 00 9d e5                                      ldr r0, [sp, #0x44]
004298e4  dc 60 97 e5                                      ldr r6, [r7, #0xdc]
004298e8  26 42 ff eb                                      bl #0x3fa188
004298ec  56 6e 86 e2                                      add r6, r6, #0x560
004298f0  00 10 a0 e1                                      mov r1, r0
004298f4  06 00 a0 e1                                      mov r0, r6
004298f8  d5 db fe eb                                      bl #0x3e0854
004298fc  c4 00 97 e5                                      ldr r0, [r7, #0xc4]
00429900  48 10 9d e5                                      ldr r1, [sp, #0x48]
00429904  fa ba 05 eb                                      bl #0x5984f4
00429908  00 60 a0 e1                                      mov r6, r0
0042990c  8c ff ff ea                                      b #0x429744
00429910  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
00429914  d8 60 97 e5                                      ldr r6, [r7, #0xd8]
00429918  1a 42 ff eb                                      bl #0x3fa188
0042991c  56 6e 86 e2                                      add r6, r6, #0x560
00429920  00 10 a0 e1                                      mov r1, r0
00429924  06 00 a0 e1                                      mov r0, r6
00429928  c9 db fe eb                                      bl #0x3e0854
0042992c  c4 00 97 e5                                      ldr r0, [r7, #0xc4]
00429930  40 10 9d e5                                      ldr r1, [sp, #0x40]
00429934  ee ba 05 eb                                      bl #0x5984f4
00429938  00 60 a0 e1                                      mov r6, r0
0042993c  80 ff ff ea                                      b #0x429744
00429940  40 01 9f e5                                      ldr r0, [pc, #0x140]
00429944  40 11 9f e5                                      ldr r1, [pc, #0x140]
00429948  40 21 9f e5                                      ldr r2, [pc, #0x140]
0042994c  00 00 99 e7                                      ldr r0, [sb, r0]
00429950  3c 31 9f e5                                      ldr r3, [pc, #0x13c]
00429954  ab c0 a0 e3                                      mov ip, #0xab
00429958  01 10 8f e0                                      add r1, pc, r1
0042995c  02 20 8f e0                                      add r2, pc, r2
00429960  03 30 8f e0                                      add r3, pc, r3
00429964  a8 00 80 e2                                      add r0, r0, #0xa8
00429968  00 c0 8d e5                                      str ip, [sp]
0042996c  a4 91 fb eb                                      bl #0x30e004
00429970  c2 fe ff ea                                      b #0x429480
00429974  24 34 97 e5                                      ldr r3, [r7, #0x424]
00429978  0a 30 63 e0                                      rsb r3, r3, sl
0042997c  43 31 a0 e1                                      asr r3, r3, #2
00429980  01 00 53 e3                                      cmp r3, #1
00429984  03 b0 83 20                                      addhs fp, r3, r3
00429988  01 b0 83 32                                      addlo fp, r3, #1
0042998c  07 01 7b e3                                      cmn fp, #0xc0000001
00429990  12 00 00 8a                                      bhi #0x4299e0
00429994  0b 00 53 e1                                      cmp r3, fp
00429998  0b b1 a0 91                                      lslls fp, fp, #2
0042999c  0f 00 00 8a                                      bhi #0x4299e0
004299a0  00 10 a0 e3                                      mov r1, #0
004299a4  0b 00 a0 e1                                      mov r0, fp
004299a8  ee 9a fb eb                                      bl #0x310568
004299ac  24 14 97 e5                                      ldr r1, [r7, #0x424]
004299b0  00 90 a0 e1                                      mov sb, r0
004299b4  01 a0 5a e0                                      subs sl, sl, r1
004299b8  00 a0 a0 01                                      moveq sl, r0
004299bc  09 00 00 1a                                      bne #0x4299e8
004299c0  04 80 8a e4                                      str r8, [sl], #4
004299c4  24 04 97 e5                                      ldr r0, [r7, #0x424]
004299c8  0b b0 89 e0                                      add fp, sb, fp
004299cc  9f 9a fb eb                                      bl #0x310450
004299d0  2c b4 87 e5                                      str fp, [r7, #0x42c]
004299d4  28 a4 87 e5                                      str sl, [r7, #0x428]
004299d8  24 94 87 e5                                      str sb, [r7, #0x424]
004299dc  23 fe ff ea                                      b #0x429270
004299e0  03 b0 e0 e3                                      mvn fp, #3
004299e4  ed ff ff ea                                      b #0x4299a0
004299e8  0a 20 a0 e1                                      mov r2, sl
004299ec  51 91 fb eb                                      bl #0x30df38
004299f0  0a a0 80 e0                                      add sl, r0, sl
004299f4  f1 ff ff ea                                      b #0x4299c0
004299f8  44 92 fb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
004299fc  48 bb 56 00 ac 40 00 00 74 49 00 00 00 32 00 00  .byte 0x48, 0xbb, 0x56, 0x00, 0xac, 0x40, 0x00, 0x00, 0x74, 0x49, 0x00, 0x00, 0x00, 0x32, 0x00, 0x00
00429a0c  84 08 00 00 f4 37 00 00 d4 07 4a 00 5c 07 4a 00  .byte 0x84, 0x08, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xd4, 0x07, 0x4a, 0x00, 0x5c, 0x07, 0x4a, 0x00
00429a1c  f4 36 00 00 2c 0d 00 00 70 07 4a 00 80 71 49 00  .byte 0xf4, 0x36, 0x00, 0x00, 0x2c, 0x0d, 0x00, 0x00, 0x70, 0x07, 0x4a, 0x00, 0x80, 0x71, 0x49, 0x00
00429a2c  64 06 4a 00 0c 04 4a 00 fc 22 4a 00 28 04 4a 00  .byte 0x64, 0x06, 0x4a, 0x00, 0x0c, 0x04, 0x4a, 0x00, 0xfc, 0x22, 0x4a, 0x00, 0x28, 0x04, 0x4a, 0x00
00429a3c  ac 40 4a 00 8c 04 4a 00 a0 04 4a 00 74 70 49 00  .byte 0xac, 0x40, 0x4a, 0x00, 0x8c, 0x04, 0x4a, 0x00, 0xa0, 0x04, 0x4a, 0x00, 0x74, 0x70, 0x49, 0x00
00429a4c  c0 39 00 00 1c 6d 49 00 20 02 4a 00 24 02 4a 00  .byte 0xc0, 0x39, 0x00, 0x00, 0x1c, 0x6d, 0x49, 0x00, 0x20, 0x02, 0x4a, 0x00, 0x24, 0x02, 0x4a, 0x00
00429a5c  44 48 00 00 e8 01 4a 00 10 da 49 00 2c 21 4a 00  .byte 0x44, 0x48, 0x00, 0x00, 0xe8, 0x01, 0x4a, 0x00, 0x10, 0xda, 0x49, 0x00, 0x2c, 0x21, 0x4a, 0x00
00429a6c  cc 02 4a 00 48 a6 49 00 98 d9 49 00 b4 02 4a 00  .byte 0xcc, 0x02, 0x4a, 0x00, 0x48, 0xa6, 0x49, 0x00, 0x98, 0xd9, 0x49, 0x00, 0xb4, 0x02, 0x4a, 0x00
00429a7c  b8 01 4a 00 ec 00 4a 00 d0 00 4a 00 c0 19 00 00  .byte 0xb8, 0x01, 0x4a, 0x00, 0xec, 0x00, 0x4a, 0x00, 0xd0, 0x00, 0x4a, 0x00, 0xc0, 0x19, 0x00, 0x00
00429a8c  80 4a 49 00 14 ff 49 00 00 fd 49 00              .byte 0x80, 0x4a, 0x49, 0x00, 0x14, 0xff, 0x49, 0x00, 0x00, 0xfd, 0x49, 0x00

; FUNCTION 0x00429a98, declared_size=120, range_size=120, mode=arm
; class-group: MenuCharacterSelect
; alias: _ZN19MenuCharacterSelectC1Ev
; demangled: MenuCharacterSelect::MenuCharacterSelect()
; decoder-mode: arm
00429a98  64 10 9f e5                                      ldr r1, [pc, #0x64]
00429a9c  70 40 2d e9                                      push {r4, r5, r6, lr}
00429aa0  01 10 8f e0                                      add r1, pc, r1
00429aa4  5c 50 9f e5                                      ldr r5, [pc, #0x5c]
00429aa8  00 40 a0 e1                                      mov r4, r0
00429aac  d3 f5 ff eb                                      bl #0x427200
00429ab0  54 30 9f e5                                      ldr r3, [pc, #0x54]
00429ab4  05 50 8f e0                                      add r5, pc, r5
00429ab8  00 20 a0 e3                                      mov r2, #0
00429abc  03 30 95 e7                                      ldr r3, [r5, r3]
00429ac0  f4 20 c4 e5                                      strb r2, [r4, #0xf4]
00429ac4  01 0c 84 e2                                      add r0, r4, #0x100
00429ac8  08 30 83 e2                                      add r3, r3, #8
00429acc  00 30 84 e5                                      str r3, [r4]
00429ad0  05 c5 ff eb                                      bl #0x41aeec
00429ad4  13 0e 84 e2                                      add r0, r4, #0x130
00429ad8  03 c5 ff eb                                      bl #0x41aeec
00429adc  00 30 e0 e3                                      mvn r3, #0
00429ae0  60 31 84 e5                                      str r3, [r4, #0x160]
00429ae4  5a 0f 84 e2                                      add r0, r4, #0x168
00429ae8  ff c4 ff eb                                      bl #0x41aeec
00429aec  66 0f 84 e2                                      add r0, r4, #0x198
00429af0  fd c4 ff eb                                      bl #0x41aeec
00429af4  04 00 a0 e1                                      mov r0, r4
00429af8  70 fc ff eb                                      bl #0x428cc0
00429afc  04 00 a0 e1                                      mov r0, r4
00429b00  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00429b04  a0 fe 49 00 dc af 56 00 28 0f 00 00              .byte 0xa0, 0xfe, 0x49, 0x00, 0xdc, 0xaf, 0x56, 0x00, 0x28, 0x0f, 0x00, 0x00

; FUNCTION 0x00429b10, declared_size=136, range_size=136, mode=arm
; class-group: MenuCharacterSelect
; alias: _ZN19MenuCharacterSelect11GetInstanceEv
; demangled: MenuCharacterSelect::GetInstance()
; decoder-mode: arm
00429b10  70 40 2d e9                                      push {r4, r5, r6, lr}
00429b14  68 50 9f e5                                      ldr r5, [pc, #0x68]
00429b18  68 40 9f e5                                      ldr r4, [pc, #0x68]
00429b1c  05 50 8f e0                                      add r5, pc, r5
00429b20  0c 30 95 e5                                      ldr r3, [r5, #0xc]
00429b24  04 40 8f e0                                      add r4, pc, r4
00429b28  01 00 13 e3                                      tst r3, #1
00429b2c  03 00 00 0a                                      beq #0x429b40
00429b30  54 00 9f e5                                      ldr r0, [pc, #0x54]
00429b34  00 00 8f e0                                      add r0, pc, r0
00429b38  10 00 80 e2                                      add r0, r0, #0x10
00429b3c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00429b40  0c 60 85 e2                                      add r6, r5, #0xc
00429b44  06 00 a0 e1                                      mov r0, r6
00429b48  07 93 fb eb                                      bl #0x30e76c
00429b4c  00 00 50 e3                                      cmp r0, #0
00429b50  f6 ff ff 0a                                      beq #0x429b30
00429b54  10 50 85 e2                                      add r5, r5, #0x10
00429b58  05 00 a0 e1                                      mov r0, r5
00429b5c  cd ff ff eb                                      bl #0x429a98
00429b60  06 00 a0 e1                                      mov r0, r6
00429b64  b4 93 fb eb                                      bl #0x30ea3c
00429b68  20 30 9f e5                                      ldr r3, [pc, #0x20]
00429b6c  05 00 a0 e1                                      mov r0, r5
00429b70  03 10 94 e7                                      ldr r1, [r4, r3]
00429b74  18 30 9f e5                                      ldr r3, [pc, #0x18]
00429b78  03 20 94 e7                                      ldr r2, [r4, r3]
00429b7c  e0 91 fb eb                                      bl #0x30e304
00429b80  ea ff ff ea                                      b #0x429b30
; mapping-symbol data/literal pool
00429b84  7c ad 57 00 6c af 56 00 64 ad 57 00 f0 0a 00 00  .byte 0x7c, 0xad, 0x57, 0x00, 0x6c, 0xaf, 0x56, 0x00, 0x64, 0xad, 0x57, 0x00, 0xf0, 0x0a, 0x00, 0x00
00429b94  90 18 00 00                                      .byte 0x90, 0x18, 0x00, 0x00

; FUNCTION 0x00429b98, declared_size=120, range_size=120, mode=arm
; class-group: MenuCharacterSelect
; alias: _ZN19MenuCharacterSelectC2Ev
; demangled: MenuCharacterSelect::MenuCharacterSelect()
; decoder-mode: arm
00429b98  64 10 9f e5                                      ldr r1, [pc, #0x64]
00429b9c  70 40 2d e9                                      push {r4, r5, r6, lr}
00429ba0  01 10 8f e0                                      add r1, pc, r1
00429ba4  5c 50 9f e5                                      ldr r5, [pc, #0x5c]
00429ba8  00 40 a0 e1                                      mov r4, r0
00429bac  93 f5 ff eb                                      bl #0x427200
00429bb0  54 30 9f e5                                      ldr r3, [pc, #0x54]
00429bb4  05 50 8f e0                                      add r5, pc, r5
00429bb8  00 20 a0 e3                                      mov r2, #0
00429bbc  03 30 95 e7                                      ldr r3, [r5, r3]
00429bc0  f4 20 c4 e5                                      strb r2, [r4, #0xf4]
00429bc4  01 0c 84 e2                                      add r0, r4, #0x100
00429bc8  08 30 83 e2                                      add r3, r3, #8
00429bcc  00 30 84 e5                                      str r3, [r4]
00429bd0  c5 c4 ff eb                                      bl #0x41aeec
00429bd4  13 0e 84 e2                                      add r0, r4, #0x130
00429bd8  c3 c4 ff eb                                      bl #0x41aeec
00429bdc  00 30 e0 e3                                      mvn r3, #0
00429be0  60 31 84 e5                                      str r3, [r4, #0x160]
00429be4  5a 0f 84 e2                                      add r0, r4, #0x168
00429be8  bf c4 ff eb                                      bl #0x41aeec
00429bec  66 0f 84 e2                                      add r0, r4, #0x198
00429bf0  bd c4 ff eb                                      bl #0x41aeec
00429bf4  04 00 a0 e1                                      mov r0, r4
00429bf8  30 fc ff eb                                      bl #0x428cc0
00429bfc  04 00 a0 e1                                      mov r0, r4
00429c00  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00429c04  a0 fd 49 00 dc ae 56 00 28 0f 00 00              .byte 0xa0, 0xfd, 0x49, 0x00, 0xdc, 0xae, 0x56, 0x00, 0x28, 0x0f, 0x00, 0x00

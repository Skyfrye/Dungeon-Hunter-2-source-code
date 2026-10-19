; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00459698, declared_size=132, range_size=132, mode=arm
; class-group: Script_MoveActor
; alias: _ZNK16Script_MoveActor10IsBlockingEv
; demangled: Script_MoveActor::IsBlocking() const
; decoder-mode: arm
00459698  10 40 2d e9                                      push {r4, lr}
0045969c  10 30 d0 e5                                      ldrb r3, [r0, #0x10]
004596a0  00 40 a0 e1                                      mov r4, r0
004596a4  00 00 53 e3                                      cmp r3, #0
004596a8  10 00 00 0a                                      beq #0x4596f0
004596ac  14 10 90 e5                                      ldr r1, [r0, #0x14]
004596b0  00 00 51 e3                                      cmp r1, #0
004596b4  0d 00 00 0a                                      beq #0x4596f0
004596b8  01 20 a0 e1                                      mov r2, r1
004596bc  00 32 b2 e5                                      ldr r3, [r2, #0x200]!
004596c0  02 00 53 e1                                      cmp r3, r2
004596c4  04 00 00 0a                                      beq #0x4596dc
004596c8  00 30 93 e5                                      ldr r3, [r3]
004596cc  03 00 52 e1                                      cmp r2, r3
004596d0  fc ff ff 1a                                      bne #0x4596c8
004596d4  01 00 a0 e3                                      mov r0, #1
004596d8  10 80 bd e8                                      pop {r4, pc}
004596dc  78 03 91 e5                                      ldr r0, [r1, #0x378]
004596e0  ad af fe eb                                      bl #0x40559c
004596e4  18 30 d4 e5                                      ldrb r3, [r4, #0x18]
004596e8  00 00 53 e3                                      cmp r3, #0
004596ec  01 00 00 1a                                      bne #0x4596f8
004596f0  00 00 a0 e3                                      mov r0, #0
004596f4  10 80 bd e8                                      pop {r4, pc}
004596f8  14 10 94 e5                                      ldr r1, [r4, #0x14]
004596fc  01 30 a0 e3                                      mov r3, #1
00459700  03 20 a0 e1                                      mov r2, r3
00459704  84 30 c1 e5                                      strb r3, [r1, #0x84]
00459708  14 00 94 e5                                      ldr r0, [r4, #0x14]
0045970c  00 10 a0 e3                                      mov r1, #0
00459710  a5 30 fd eb                                      bl #0x3a59ac
00459714  00 00 a0 e3                                      mov r0, #0
00459718  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0045f0a8, declared_size=596, range_size=596, mode=arm
; class-group: Script_MoveActor
; alias: _ZN16Script_MoveActor7ExecuteEbi
; demangled: Script_MoveActor::Execute(bool, int)
; decoder-mode: arm
0045f0a8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0045f0ac  34 42 9f e5                                      ldr r4, [pc, #0x234]
0045f0b0  34 b2 9f e5                                      ldr fp, [pc, #0x234]
0045f0b4  34 c2 9f e5                                      ldr ip, [pc, #0x234]
0045f0b8  04 40 8f e0                                      add r4, pc, r4
0045f0bc  0b 30 94 e7                                      ldr r3, [r4, fp]
0045f0c0  0c 80 94 e7                                      ldr r8, [r4, ip]
0045f0c4  4c d0 4d e2                                      sub sp, sp, #0x4c
0045f0c8  00 30 93 e5                                      ldr r3, [r3]
0045f0cc  0c 10 8d e5                                      str r1, [sp, #0xc]
0045f0d0  00 60 a0 e1                                      mov r6, r0
0045f0d4  44 30 8d e5                                      str r3, [sp, #0x44]
0045f0d8  08 00 a0 e1                                      mov r0, r8
0045f0dc  02 90 a0 e1                                      mov sb, r2
0045f0e0  0c 70 96 e5                                      ldr r7, [r6, #0xc]
0045f0e4  e7 61 fb eb                                      bl #0x337888
0045f0e8  04 12 9f e5                                      ldr r1, [pc, #0x204]
0045f0ec  2c 50 8d e2                                      add r5, sp, #0x2c
0045f0f0  28 20 8d e2                                      add r2, sp, #0x28
0045f0f4  01 10 8f e0                                      add r1, pc, r1
0045f0f8  05 00 a0 e1                                      mov r0, r5
0045f0fc  f4 a1 9f e5                                      ldr sl, [pc, #0x1f4]
0045f100  f9 d3 fa eb                                      bl #0x3140ec
0045f104  05 10 a0 e1                                      mov r1, r5
0045f108  08 00 a0 e1                                      mov r0, r8
0045f10c  5d 62 fb eb                                      bl #0x337a88
0045f110  05 00 a0 e1                                      mov r0, r5
0045f114  4e e4 fa eb                                      bl #0x318254
0045f118  0a 30 94 e7                                      ldr r3, [r4, sl]
0045f11c  1c 80 8d e2                                      add r8, sp, #0x1c
0045f120  18 20 97 e5                                      ldr r2, [r7, #0x18]
0045f124  38 10 93 e5                                      ldr r1, [r3, #0x38]
0045f128  00 50 a0 e3                                      mov r5, #0
0045f12c  09 30 a0 e1                                      mov r3, sb
0045f130  08 00 a0 e1                                      mov r0, r8
0045f134  00 50 8d e5                                      str r5, [sp]
0045f138  04 50 8d e5                                      str r5, [sp, #4]
0045f13c  d7 ae fb eb                                      bl #0x34aca0
0045f140  05 10 a0 e1                                      mov r1, r5
0045f144  08 00 a0 e1                                      mov r0, r8
0045f148  1c 83 fb eb                                      bl #0x33fdc0
0045f14c  00 50 50 e2                                      subs r5, r0, #0
0045f150  56 00 00 1a                                      bne #0x45f2b0
0045f154  0a 30 94 e7                                      ldr r3, [r4, sl]
0045f158  10 80 8d e2                                      add r8, sp, #0x10
0045f15c  0c 20 97 e5                                      ldr r2, [r7, #0xc]
0045f160  38 10 93 e5                                      ldr r1, [r3, #0x38]
0045f164  00 a0 a0 e3                                      mov sl, #0
0045f168  09 30 a0 e1                                      mov r3, sb
0045f16c  08 00 a0 e1                                      mov r0, r8
0045f170  00 a0 8d e5                                      str sl, [sp]
0045f174  04 a0 8d e5                                      str sl, [sp, #4]
0045f178  c8 ae fb eb                                      bl #0x34aca0
0045f17c  0a 10 a0 e1                                      mov r1, sl
0045f180  08 00 a0 e1                                      mov r0, r8
0045f184  0d 83 fb eb                                      bl #0x33fdc0
0045f188  00 00 50 e3                                      cmp r0, #0
0045f18c  00 a0 a0 01                                      moveq sl, r0
0045f190  3e 00 00 1a                                      bne #0x45f290
0045f194  1c 30 d7 e5                                      ldrb r3, [r7, #0x1c]
0045f198  00 00 55 e3                                      cmp r5, #0
0045f19c  14 50 86 e5                                      str r5, [r6, #0x14]
0045f1a0  10 30 c6 e5                                      strb r3, [r6, #0x10]
0045f1a4  84 30 d5 15                                      ldrbne r3, [r5, #0x84]
0045f1a8  05 30 a0 01                                      moveq r3, r5
0045f1ac  00 00 50 e3                                      cmp r0, #0
0045f1b0  18 30 c6 e5                                      strb r3, [r6, #0x18]
0045f1b4  10 00 c6 05                                      strbeq r0, [r6, #0x10]
0045f1b8  21 00 00 0a                                      beq #0x45f244
0045f1bc  10 30 d7 e5                                      ldrb r3, [r7, #0x10]
0045f1c0  00 00 53 e3                                      cmp r3, #0
0045f1c4  3d 00 00 1a                                      bne #0x45f2c0
0045f1c8  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0045f1cc  78 33 95 e5                                      ldr r3, [r5, #0x378]
0045f1d0  00 00 52 e3                                      cmp r2, #0
0045f1d4  01 20 a0 e3                                      mov r2, #1
0045f1d8  09 20 c3 e5                                      strb r2, [r3, #9]
0045f1dc  24 00 00 1a                                      bne #0x45f274
0045f1e0  18 30 d6 e5                                      ldrb r3, [r6, #0x18]
0045f1e4  00 00 53 e3                                      cmp r3, #0
0045f1e8  08 00 00 0a                                      beq #0x45f210
0045f1ec  1c 30 d7 e5                                      ldrb r3, [r7, #0x1c]
0045f1f0  00 00 53 e3                                      cmp r3, #0
0045f1f4  0f 00 00 0a                                      beq #0x45f238
0045f1f8  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0045f1fc  05 00 a0 e1                                      mov r0, r5
0045f200  01 20 a0 e1                                      mov r2, r1
0045f204  7b d6 fc eb                                      bl #0x394bf8
0045f208  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0045f20c  84 30 c5 e5                                      strb r3, [r5, #0x84]
0045f210  78 03 95 e5                                      ldr r0, [r5, #0x378]
0045f214  0a 10 a0 e1                                      mov r1, sl
0045f218  c8 98 fe eb                                      bl #0x405540
0045f21c  05 20 a0 e1                                      mov r2, r5
0045f220  00 32 b2 e5                                      ldr r3, [r2, #0x200]!
0045f224  02 00 53 e1                                      cmp r3, r2
0045f228  0f 00 00 0a                                      beq #0x45f26c
0045f22c  00 30 93 e5                                      ldr r3, [r3]
0045f230  03 00 52 e1                                      cmp r2, r3
0045f234  fc ff ff 1a                                      bne #0x45f22c
0045f238  78 33 95 e5                                      ldr r3, [r5, #0x378]
0045f23c  00 20 a0 e3                                      mov r2, #0
0045f240  09 20 c3 e5                                      strb r2, [r3, #9]
0045f244  08 00 a0 e1                                      mov r0, r8
0045f248  00 10 a0 e3                                      mov r1, #0
0045f24c  db 82 fb eb                                      bl #0x33fdc0
0045f250  0b 30 94 e7                                      ldr r3, [r4, fp]
0045f254  44 20 9d e5                                      ldr r2, [sp, #0x44]
0045f258  00 30 93 e5                                      ldr r3, [r3]
0045f25c  03 00 52 e1                                      cmp r2, r3
0045f260  1f 00 00 1a                                      bne #0x45f2e4
0045f264  4c d0 8d e2                                      add sp, sp, #0x4c
0045f268  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0045f26c  00 30 a0 e3                                      mov r3, #0
0045f270  10 30 c6 e5                                      strb r3, [r6, #0x10]
0045f274  16 1e 8a e2                                      add r1, sl, #0x160
0045f278  78 03 95 e5                                      ldr r0, [r5, #0x378]
0045f27c  25 98 fe eb                                      bl #0x405318
0045f280  78 33 95 e5                                      ldr r3, [r5, #0x378]
0045f284  00 20 a0 e3                                      mov r2, #0
0045f288  09 20 c3 e5                                      strb r2, [r3, #9]
0045f28c  ec ff ff ea                                      b #0x45f244
0045f290  08 00 a0 e1                                      mov r0, r8
0045f294  12 83 fb eb                                      bl #0x33fee4
0045f298  00 00 50 e3                                      cmp r0, #0
0045f29c  00 00 55 13                                      cmpne r5, #0
0045f2a0  00 a0 a0 e1                                      mov sl, r0
0045f2a4  00 00 a0 03                                      moveq r0, #0
0045f2a8  01 00 a0 13                                      movne r0, #1
0045f2ac  b8 ff ff ea                                      b #0x45f194
0045f2b0  08 00 a0 e1                                      mov r0, r8
0045f2b4  26 83 fb eb                                      bl #0x33ff54
0045f2b8  00 50 a0 e1                                      mov r5, r0
0045f2bc  a4 ff ff ea                                      b #0x45f154
0045f2c0  05 00 a0 e1                                      mov r0, r5
0045f2c4  b9 d5 fc eb                                      bl #0x3949b0
0045f2c8  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0045f2cc  78 33 95 e5                                      ldr r3, [r5, #0x378]
0045f2d0  00 00 52 e3                                      cmp r2, #0
0045f2d4  01 20 a0 e3                                      mov r2, #1
0045f2d8  09 20 c3 e5                                      strb r2, [r3, #9]
0045f2dc  bf ff ff 0a                                      beq #0x45f1e0
0045f2e0  e3 ff ff ea                                      b #0x45f274
0045f2e4  09 bc fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0045f2e8  d8 59 53 00 ac 40 00 00 84 08 00 00 8c df 46 00  .byte 0xd8, 0x59, 0x53, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x8c, 0xdf, 0x46, 0x00
0045f2f8  f4 37 00 00                                      .byte 0xf4, 0x37, 0x00, 0x00

; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003dd7ec, declared_size=4, range_size=4, mode=arm
; class-group: AISPlayer
; alias: _ZN9AISPlayer8OnAttackEiib
; demangled: AISPlayer::OnAttack(int, int, bool)
; decoder-mode: arm
003dd7ec  4e fa ff ea                                      b #0x3dc12c

; FUNCTION 0x003dd7f0, declared_size=92, range_size=92, mode=arm
; class-group: AISPlayer
; alias: _ZN9AISPlayer20OnTargetInMeleeRangeEv
; demangled: AISPlayer::OnTargetInMeleeRange()
; decoder-mode: arm
003dd7f0  10 40 2d e9                                      push {r4, lr}
003dd7f4  00 40 a0 e1                                      mov r4, r0
003dd7f8  98 00 90 e5                                      ldr r0, [r0, #0x98]
003dd7fc  4f 0e 80 e2                                      add r0, r0, #0x4f0
003dd800  0c 00 80 e2                                      add r0, r0, #0xc
003dd804  b1 8a ff eb                                      bl #0x3c02d0
003dd808  00 00 50 e3                                      cmp r0, #0
003dd80c  03 00 00 0a                                      beq #0x3dd820
003dd810  98 30 94 e5                                      ldr r3, [r4, #0x98]
003dd814  00 20 a0 e3                                      mov r2, #0
003dd818  12 24 c3 e5                                      strb r2, [r3, #0x412]
003dd81c  10 80 bd e8                                      pop {r4, pc}
003dd820  98 00 94 e5                                      ldr r0, [r4, #0x98]
003dd824  f2 0f 80 e2                                      add r0, r0, #0x3c8
003dd828  68 dc ff eb                                      bl #0x3d49d0
003dd82c  00 00 50 e3                                      cmp r0, #0
003dd830  f6 ff ff 0a                                      beq #0x3dd810
003dd834  04 00 a0 e1                                      mov r0, r4
003dd838  91 fa ff eb                                      bl #0x3dc284
003dd83c  98 30 94 e5                                      ldr r3, [r4, #0x98]
003dd840  00 20 a0 e3                                      mov r2, #0
003dd844  12 24 c3 e5                                      strb r2, [r3, #0x412]
003dd848  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003dd84c, declared_size=56, range_size=56, mode=arm
; class-group: AISPlayer
; alias: _ZN9AISPlayer12OnTargetDiedEv
; demangled: AISPlayer::OnTargetDied()
; decoder-mode: arm
003dd84c  10 40 2d e9                                      push {r4, lr}
003dd850  98 30 90 e5                                      ldr r3, [r0, #0x98]
003dd854  00 40 a0 e1                                      mov r4, r0
003dd858  78 03 93 e5                                      ldr r0, [r3, #0x378]
003dd85c  4e 9f 00 eb                                      bl #0x40559c
003dd860  98 00 94 e5                                      ldr r0, [r4, #0x98]
003dd864  00 10 a0 e3                                      mov r1, #0
003dd868  01 20 a0 e1                                      mov r2, r1
003dd86c  f2 0f 80 e2                                      add r0, r0, #0x3c8
003dd870  06 e4 ff eb                                      bl #0x3d6890
003dd874  98 00 94 e5                                      ldr r0, [r4, #0x98]
003dd878  f2 0f 80 e2                                      add r0, r0, #0x3c8
003dd87c  10 40 bd e8                                      pop {r4, lr}
003dd880  4f dc ff ea                                      b #0x3d49c4

; FUNCTION 0x003dd884, declared_size=60, range_size=60, mode=arm
; class-group: AISPlayer
; alias: _ZN9AISPlayer7InitVCBEv
; demangled: AISPlayer::InitVCB()
; decoder-mode: arm
003dd884  70 40 2d e9                                      push {r4, r5, r6, lr}
003dd888  00 40 a0 e1                                      mov r4, r0
003dd88c  d1 fb ff eb                                      bl #0x3dc7d8
003dd890  24 10 9f e5                                      ldr r1, [pc, #0x24]
003dd894  04 00 a0 e1                                      mov r0, r4
003dd898  b8 50 94 e5                                      ldr r5, [r4, #0xb8]
003dd89c  01 10 8f e0                                      add r1, pc, r1
003dd8a0  7e 7a fe eb                                      bl #0x37c2a0
003dd8a4  00 00 50 e3                                      cmp r0, #0
003dd8a8  01 0b a0 13                                      movne r0, #0x400
003dd8ac  00 00 a0 03                                      moveq r0, #0
003dd8b0  05 50 80 e1                                      orr r5, r0, r5
003dd8b4  b8 50 84 e5                                      str r5, [r4, #0xb8]
003dd8b8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
003dd8bc  f4 82 4e 00                                      .byte 0xf4, 0x82, 0x4e, 0x00

; FUNCTION 0x003dd99c, declared_size=124, range_size=124, mode=arm
; class-group: AISPlayer
; alias: _ZN9AISPlayerD1Ev
; demangled: AISPlayer::~AISPlayer()
; decoder-mode: arm
003dd99c  70 40 2d e9                                      push {r4, r5, r6, lr}
003dd9a0  64 50 9f e5                                      ldr r5, [pc, #0x64]
003dd9a4  64 30 9f e5                                      ldr r3, [pc, #0x64]
003dd9a8  00 20 a0 e1                                      mov r2, r0
003dd9ac  05 50 8f e0                                      add r5, pc, r5
003dd9b0  03 30 95 e7                                      ldr r3, [r5, r3]
003dd9b4  00 40 a0 e1                                      mov r4, r0
003dd9b8  08 30 83 e2                                      add r3, r3, #8
003dd9bc  c4 30 82 e4                                      str r3, [r2], #0xc4
003dd9c0  c4 00 90 e5                                      ldr r0, [r0, #0xc4]
003dd9c4  00 00 50 e3                                      cmp r0, #0
003dd9c8  05 00 00 0a                                      beq #0x3dd9e4
003dd9cc  08 10 92 e5                                      ldr r1, [r2, #8]
003dd9d0  01 10 60 e0                                      rsb r1, r0, r1
003dd9d4  03 10 c1 e3                                      bic r1, r1, #3
003dd9d8  80 00 51 e3                                      cmp r1, #0x80
003dd9dc  08 00 00 8a                                      bhi #0x3dda04
003dd9e0  46 ad 0c eb                                      bl #0x708f00
003dd9e4  28 30 9f e5                                      ldr r3, [pc, #0x28]
003dd9e8  04 00 a0 e1                                      mov r0, r4
003dd9ec  03 30 95 e7                                      ldr r3, [r5, r3]
003dd9f0  08 30 83 e2                                      add r3, r3, #8
003dd9f4  00 30 84 e5                                      str r3, [r4]
003dd9f8  3c ee ff eb                                      bl #0x3d92f0
003dd9fc  04 00 a0 e1                                      mov r0, r4
003dda00  70 80 bd e8                                      pop {r4, r5, r6, pc}
003dda04  8d ca fc eb                                      bl #0x310440
003dda08  f5 ff ff ea                                      b #0x3dd9e4
; mapping-symbol data/literal pool
003dda0c  e4 70 5b 00 10 1b 00 00 ac 2a 00 00              .byte 0xe4, 0x70, 0x5b, 0x00, 0x10, 0x1b, 0x00, 0x00, 0xac, 0x2a, 0x00, 0x00

; FUNCTION 0x003dda18, declared_size=28, range_size=28, mode=arm
; class-group: AISPlayer
; alias: _ZN9AISPlayerD0Ev
; demangled: AISPlayer::~AISPlayer()
; decoder-mode: arm
003dda18  10 40 2d e9                                      push {r4, lr}
003dda1c  00 40 a0 e1                                      mov r4, r0
003dda20  dd ff ff eb                                      bl #0x3dd99c
003dda24  04 00 a0 e1                                      mov r0, r4
003dda28  84 ca fc eb                                      bl #0x310440
003dda2c  04 00 a0 e1                                      mov r0, r4
003dda30  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003dda34, declared_size=220, range_size=220, mode=arm
; class-group: AISPlayer
; alias: _ZN9AISPlayer14OnEnemySpottedEP9Character
; demangled: AISPlayer::OnEnemySpotted(Character*)
; decoder-mode: arm
003dda34  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
003dda38  c0 40 9f e5                                      ldr r4, [pc, #0xc0]
003dda3c  c0 60 9f e5                                      ldr r6, [pc, #0xc0]
003dda40  24 d0 4d e2                                      sub sp, sp, #0x24
003dda44  04 40 8f e0                                      add r4, pc, r4
003dda48  06 30 94 e7                                      ldr r3, [r4, r6]
003dda4c  01 a0 a0 e1                                      mov sl, r1
003dda50  00 80 a0 e1                                      mov r8, r0
003dda54  00 30 93 e5                                      ldr r3, [r3]
003dda58  04 50 8d e2                                      add r5, sp, #4
003dda5c  1c 30 8d e5                                      str r3, [sp, #0x1c]
003dda60  0e f9 ff eb                                      bl #0x3dbea0
003dda64  9c 30 9f e5                                      ldr r3, [pc, #0x9c]
003dda68  03 70 94 e7                                      ldr r7, [r4, r3]
003dda6c  07 00 a0 e1                                      mov r0, r7
003dda70  84 67 fd eb                                      bl #0x337888
003dda74  90 10 9f e5                                      ldr r1, [pc, #0x90]
003dda78  0d 20 a0 e1                                      mov r2, sp
003dda7c  05 00 a0 e1                                      mov r0, r5
003dda80  01 10 8f e0                                      add r1, pc, r1
003dda84  98 d9 fc eb                                      bl #0x3140ec
003dda88  07 00 a0 e1                                      mov r0, r7
003dda8c  05 10 a0 e1                                      mov r1, r5
003dda90  fc 67 fd eb                                      bl #0x337a88
003dda94  00 70 a0 e1                                      mov r7, r0
003dda98  18 00 9d e5                                      ldr r0, [sp, #0x18]
003dda9c  05 00 50 e1                                      cmp r0, r5
003ddaa0  06 00 00 0a                                      beq #0x3ddac0
003ddaa4  00 00 50 e3                                      cmp r0, #0
003ddaa8  04 00 00 0a                                      beq #0x3ddac0
003ddaac  04 10 9d e5                                      ldr r1, [sp, #4]
003ddab0  01 10 60 e0                                      rsb r1, r0, r1
003ddab4  80 00 51 e3                                      cmp r1, #0x80
003ddab8  0d 00 00 8a                                      bhi #0x3ddaf4
003ddabc  0f ad 0c eb                                      bl #0x708f00
003ddac0  00 00 57 e3                                      cmp r7, #0
003ddac4  03 00 00 0a                                      beq #0x3ddad8
003ddac8  78 03 9a e5                                      ldr r0, [sl, #0x378]
003ddacc  98 10 98 e5                                      ldr r1, [r8, #0x98]
003ddad0  00 20 a0 e3                                      mov r2, #0
003ddad4  0c 9f 00 eb                                      bl #0x40570c
003ddad8  06 30 94 e7                                      ldr r3, [r4, r6]
003ddadc  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
003ddae0  00 30 93 e5                                      ldr r3, [r3]
003ddae4  03 00 52 e1                                      cmp r2, r3
003ddae8  03 00 00 1a                                      bne #0x3ddafc
003ddaec  24 d0 8d e2                                      add sp, sp, #0x24
003ddaf0  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
003ddaf4  51 ca fc eb                                      bl #0x310440
003ddaf8  f0 ff ff ea                                      b #0x3ddac0
003ddafc  03 c2 fc eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003ddb00  4c 70 5b 00 ac 40 00 00 84 08 00 00 18 81 4e 00  .byte 0x4c, 0x70, 0x5b, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x18, 0x81, 0x4e, 0x00

; FUNCTION 0x003ddb10, declared_size=96, range_size=96, mode=arm
; class-group: AISPlayer
; alias: _ZN9AISPlayer6OnKillEP9Character
; demangled: AISPlayer::OnKill(Character*)
; decoder-mode: arm
003ddb10  70 40 2d e9                                      push {r4, r5, r6, lr}
003ddb14  00 50 a0 e1                                      mov r5, r0
003ddb18  08 d0 4d e2                                      sub sp, sp, #8
003ddb1c  01 60 a0 e1                                      mov r6, r1
003ddb20  f6 f8 ff eb                                      bl #0x3dbf00
003ddb24  b8 30 95 e5                                      ldr r3, [r5, #0xb8]
003ddb28  01 0b 13 e3                                      tst r3, #0x400
003ddb2c  0c 00 00 0a                                      beq #0x3ddb64
003ddb30  0d 00 a0 e1                                      mov r0, sp
003ddb34  de ed fc eb                                      bl #0x3192b4
003ddb38  0d 00 a0 e1                                      mov r0, sp
003ddb3c  06 10 a0 e1                                      mov r1, r6
003ddb40  f8 a4 fe eb                                      bl #0x386f28
003ddb44  20 10 9f e5                                      ldr r1, [pc, #0x20]
003ddb48  05 00 a0 e1                                      mov r0, r5
003ddb4c  0d 20 a0 e1                                      mov r2, sp
003ddb50  01 10 8f e0                                      add r1, pc, r1
003ddb54  30 7a fe eb                                      bl #0x37c41c
003ddb58  0d 00 a0 e1                                      mov r0, sp
003ddb5c  0d 40 a0 e1                                      mov r4, sp
003ddb60  b0 ed fc eb                                      bl #0x319228
003ddb64  08 d0 8d e2                                      add sp, sp, #8
003ddb68  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
003ddb6c  40 80 4e 00                                      .byte 0x40, 0x80, 0x4e, 0x00

; FUNCTION 0x003ddb70, declared_size=728, range_size=728, mode=arm
; class-group: AISPlayer
; alias: _ZN9AISPlayer7OnAggroEP9Character
; demangled: AISPlayer::OnAggro(Character*)
; decoder-mode: arm
003ddb70  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
003ddb74  8c 42 9f e5                                      ldr r4, [pc, #0x28c]
003ddb78  8c 62 9f e5                                      ldr r6, [pc, #0x28c]
003ddb7c  8c 72 9f e5                                      ldr r7, [pc, #0x28c]
003ddb80  04 40 8f e0                                      add r4, pc, r4
003ddb84  06 30 94 e7                                      ldr r3, [r4, r6]
003ddb88  48 d0 4d e2                                      sub sp, sp, #0x48
003ddb8c  01 90 a0 e1                                      mov sb, r1
003ddb90  00 30 93 e5                                      ldr r3, [r3]
003ddb94  00 50 a0 e1                                      mov r5, r0
003ddb98  2c 80 8d e2                                      add r8, sp, #0x2c
003ddb9c  44 30 8d e5                                      str r3, [sp, #0x44]
003ddba0  bf f8 ff eb                                      bl #0x3dbea4
003ddba4  07 a0 94 e7                                      ldr sl, [r4, r7]
003ddba8  0a 00 a0 e1                                      mov r0, sl
003ddbac  35 67 fd eb                                      bl #0x337888
003ddbb0  5c 12 9f e5                                      ldr r1, [pc, #0x25c]
003ddbb4  10 20 8d e2                                      add r2, sp, #0x10
003ddbb8  08 00 a0 e1                                      mov r0, r8
003ddbbc  01 10 8f e0                                      add r1, pc, r1
003ddbc0  49 d9 fc eb                                      bl #0x3140ec
003ddbc4  0a 00 a0 e1                                      mov r0, sl
003ddbc8  08 10 a0 e1                                      mov r1, r8
003ddbcc  ad 67 fd eb                                      bl #0x337a88
003ddbd0  00 a0 a0 e1                                      mov sl, r0
003ddbd4  40 00 9d e5                                      ldr r0, [sp, #0x40]
003ddbd8  08 00 50 e1                                      cmp r0, r8
003ddbdc  06 00 00 0a                                      beq #0x3ddbfc
003ddbe0  00 00 50 e3                                      cmp r0, #0
003ddbe4  04 00 00 0a                                      beq #0x3ddbfc
003ddbe8  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
003ddbec  01 10 60 e0                                      rsb r1, r0, r1
003ddbf0  80 00 51 e3                                      cmp r1, #0x80
003ddbf4  57 00 00 8a                                      bhi #0x3ddd58
003ddbf8  c0 ac 0c eb                                      bl #0x708f00
003ddbfc  00 00 5a e3                                      cmp sl, #0
003ddc00  4b 00 00 1a                                      bne #0x3ddd34
003ddc04  d0 30 95 e5                                      ldr r3, [r5, #0xd0]
003ddc08  01 30 83 e2                                      add r3, r3, #1
003ddc0c  d0 30 85 e5                                      str r3, [r5, #0xd0]
003ddc10  df 7e 10 eb                                      bl #0x7fd794
003ddc14  05 30 d0 e5                                      ldrb r3, [r0, #5]
003ddc18  00 00 53 e3                                      cmp r3, #0
003ddc1c  3c 00 00 1a                                      bne #0x3ddd14
003ddc20  f0 81 9f e5                                      ldr r8, [pc, #0x1f0]
003ddc24  f0 31 9f e5                                      ldr r3, [pc, #0x1f0]
003ddc28  08 00 94 e7                                      ldr r0, [r4, r8]
003ddc2c  03 30 94 e7                                      ldr r3, [r4, r3]
003ddc30  00 a0 93 e5                                      ldr sl, [r3]
003ddc34  56 06 fd eb                                      bl #0x31f594
003ddc38  00 80 a0 e1                                      mov r8, r0
003ddc3c  09 00 a0 e1                                      mov r0, sb
003ddc40  d4 90 95 e5                                      ldr sb, [r5, #0xd4]
003ddc44  f6 14 ff eb                                      bl #0x3a3024
003ddc48  14 30 90 e5                                      ldr r3, [r0, #0x14]
003ddc4c  00 00 58 e3                                      cmp r8, #0
003ddc50  09 90 83 e0                                      add sb, r3, sb
003ddc54  d4 90 85 e5                                      str sb, [r5, #0xd4]
003ddc58  05 00 00 0a                                      beq #0x3ddc74
003ddc5c  38 30 98 e5                                      ldr r3, [r8, #0x38]
003ddc60  00 00 53 e3                                      cmp r3, #0
003ddc64  50 00 00 0a                                      beq #0x3dddac
003ddc68  c8 31 d3 e5                                      ldrb r3, [r3, #0x1c8]
003ddc6c  00 00 53 e3                                      cmp r3, #0
003ddc70  3a 00 00 1a                                      bne #0x3ddd60
003ddc74  07 80 94 e7                                      ldr r8, [r4, r7]
003ddc78  14 70 8d e2                                      add r7, sp, #0x14
003ddc7c  08 00 a0 e1                                      mov r0, r8
003ddc80  00 67 fd eb                                      bl #0x337888
003ddc84  94 11 9f e5                                      ldr r1, [pc, #0x194]
003ddc88  0c 20 8d e2                                      add r2, sp, #0xc
003ddc8c  07 00 a0 e1                                      mov r0, r7
003ddc90  01 10 8f e0                                      add r1, pc, r1
003ddc94  14 d9 fc eb                                      bl #0x3140ec
003ddc98  08 00 a0 e1                                      mov r0, r8
003ddc9c  07 10 a0 e1                                      mov r1, r7
003ddca0  78 67 fd eb                                      bl #0x337a88
003ddca4  00 80 a0 e1                                      mov r8, r0
003ddca8  28 00 9d e5                                      ldr r0, [sp, #0x28]
003ddcac  07 00 50 e1                                      cmp r0, r7
003ddcb0  06 00 00 0a                                      beq #0x3ddcd0
003ddcb4  00 00 50 e3                                      cmp r0, #0
003ddcb8  04 00 00 0a                                      beq #0x3ddcd0
003ddcbc  14 10 9d e5                                      ldr r1, [sp, #0x14]
003ddcc0  01 10 60 e0                                      rsb r1, r0, r1
003ddcc4  80 00 51 e3                                      cmp r1, #0x80
003ddcc8  35 00 00 8a                                      bhi #0x3ddda4
003ddccc  8b ac 0c eb                                      bl #0x708f00
003ddcd0  00 00 58 e3                                      cmp r8, #0
003ddcd4  07 00 00 0a                                      beq #0x3ddcf8
003ddcd8  44 01 9f e5                                      ldr r0, [pc, #0x144]
003ddcdc  44 11 9f e5                                      ldr r1, [pc, #0x144]
003ddce0  d4 30 95 e5                                      ldr r3, [r5, #0xd4]
003ddce4  00 00 94 e7                                      ldr r0, [r4, r0]
003ddce8  01 10 8f e0                                      add r1, pc, r1
003ddcec  d0 20 95 e5                                      ldr r2, [r5, #0xd0]
003ddcf0  a8 00 80 e2                                      add r0, r0, #0xa8
003ddcf4  c2 c0 fc eb                                      bl #0x30e004
003ddcf8  06 30 94 e7                                      ldr r3, [r4, r6]
003ddcfc  44 20 9d e5                                      ldr r2, [sp, #0x44]
003ddd00  00 30 93 e5                                      ldr r3, [r3]
003ddd04  03 00 52 e1                                      cmp r2, r3
003ddd08  3d 00 00 1a                                      bne #0x3dde04
003ddd0c  48 d0 8d e2                                      add sp, sp, #0x48
003ddd10  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
003ddd14  fc 80 9f e5                                      ldr r8, [pc, #0xfc]
003ddd18  98 10 95 e5                                      ldr r1, [r5, #0x98]
003ddd1c  08 30 94 e7                                      ldr r3, [r4, r8]
003ddd20  40 00 93 e5                                      ldr r0, [r3, #0x40]
003ddd24  b4 44 fe eb                                      bl #0x36effc
003ddd28  00 00 50 e3                                      cmp r0, #0
003ddd2c  f1 ff ff 0a                                      beq #0x3ddcf8
003ddd30  bb ff ff ea                                      b #0x3ddc24
003ddd34  e8 00 9f e5                                      ldr r0, [pc, #0xe8]
003ddd38  ec 10 9f e5                                      ldr r1, [pc, #0xec]
003ddd3c  d0 20 95 e5                                      ldr r2, [r5, #0xd0]
003ddd40  00 00 94 e7                                      ldr r0, [r4, r0]
003ddd44  01 10 8f e0                                      add r1, pc, r1
003ddd48  d4 30 95 e5                                      ldr r3, [r5, #0xd4]
003ddd4c  a8 00 80 e2                                      add r0, r0, #0xa8
003ddd50  ab c0 fc eb                                      bl #0x30e004
003ddd54  aa ff ff ea                                      b #0x3ddc04
003ddd58  b8 c9 fc eb                                      bl #0x310440
003ddd5c  a6 ff ff ea                                      b #0x3ddbfc
003ddd60  31 30 da e5                                      ldrb r3, [sl, #0x31]
003ddd64  00 00 53 e3                                      cmp r3, #0
003ddd68  c1 ff ff 0a                                      beq #0x3ddc74
003ddd6c  bc 30 9f e5                                      ldr r3, [pc, #0xbc]
003ddd70  d4 20 95 e5                                      ldr r2, [r5, #0xd4]
003ddd74  03 30 94 e7                                      ldr r3, [r4, r3]
003ddd78  00 30 93 e5                                      ldr r3, [r3]
003ddd7c  14 30 93 e5                                      ldr r3, [r3, #0x14]
003ddd80  03 00 52 e1                                      cmp r2, r3
003ddd84  ba ff ff ba                                      blt #0x3ddc74
003ddd88  a4 10 9f e5                                      ldr r1, [pc, #0xa4]
003ddd8c  0a 00 a0 e1                                      mov r0, sl
003ddd90  01 10 8f e0                                      add r1, pc, r1
003ddd94  de 2d fe eb                                      bl #0x369514
003ddd98  00 30 a0 e3                                      mov r3, #0
003ddd9c  31 30 ca e5                                      strb r3, [sl, #0x31]
003ddda0  b3 ff ff ea                                      b #0x3ddc74
003ddda4  a5 c9 fc eb                                      bl #0x310440
003ddda8  c8 ff ff ea                                      b #0x3ddcd0
003dddac  84 20 9f e5                                      ldr r2, [pc, #0x84]
003dddb0  02 20 94 e7                                      ldr r2, [r4, r2]
003dddb4  00 20 92 e5                                      ldr r2, [r2]
003dddb8  02 00 52 e3                                      cmp r2, #2
003dddbc  00 30 83 05                                      streq r3, [r3]
003dddc0  a8 ff ff 0a                                      beq #0x3ddc68
003dddc4  01 00 52 e3                                      cmp r2, #1
003dddc8  a6 ff ff 1a                                      bne #0x3ddc68
003dddcc  50 00 9f e5                                      ldr r0, [pc, #0x50]
003dddd0  64 10 9f e5                                      ldr r1, [pc, #0x64]
003dddd4  64 20 9f e5                                      ldr r2, [pc, #0x64]
003dddd8  00 00 94 e7                                      ldr r0, [r4, r0]
003ddddc  60 30 9f e5                                      ldr r3, [pc, #0x60]
003ddde0  77 cf a0 e3                                      mov ip, #0x1dc
003ddde4  01 10 8f e0                                      add r1, pc, r1
003ddde8  03 30 8f e0                                      add r3, pc, r3
003dddec  a8 00 80 e2                                      add r0, r0, #0xa8
003dddf0  02 20 8f e0                                      add r2, pc, r2
003dddf4  00 c0 8d e5                                      str ip, [sp]
003dddf8  81 c0 fc eb                                      bl #0x30e004
003dddfc  38 30 98 e5                                      ldr r3, [r8, #0x38]
003dde00  98 ff ff ea                                      b #0x3ddc68
003dde04  41 c1 fc eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003dde08  10 6f 5b 00 ac 40 00 00 84 08 00 00 ec 7f 4e 00  .byte 0x10, 0x6f, 0x5b, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0xec, 0x7f, 0x4e, 0x00
003dde18  f4 37 00 00 a4 0d 00 00 18 7f 4e 00 c0 19 00 00  .byte 0xf4, 0x37, 0x00, 0x00, 0xa4, 0x0d, 0x00, 0x00, 0x18, 0x7f, 0x4e, 0x00, 0xc0, 0x19, 0x00, 0x00
003dde28  20 7f 4e 00 7c 7e 4e 00 c8 32 00 00 98 3e 4e 00  .byte 0x20, 0x7f, 0x4e, 0x00, 0x7c, 0x7e, 0x4e, 0x00, 0xc8, 0x32, 0x00, 0x00, 0x98, 0x3e, 0x4e, 0x00
003dde38  c0 39 00 00 f4 05 4e 00 00 7e 4e 00 70 3e 4e 00  .byte 0xc0, 0x39, 0x00, 0x00, 0xf4, 0x05, 0x4e, 0x00, 0x00, 0x7e, 0x4e, 0x00, 0x70, 0x3e, 0x4e, 0x00

; FUNCTION 0x003dde48, declared_size=668, range_size=668, mode=arm
; class-group: AISPlayer
; alias: _ZN9AISPlayer9OnDeAggroEP9Character
; demangled: AISPlayer::OnDeAggro(Character*)
; decoder-mode: arm
003dde48  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003dde4c  64 42 9f e5                                      ldr r4, [pc, #0x264]
003dde50  64 62 9f e5                                      ldr r6, [pc, #0x264]
003dde54  64 72 9f e5                                      ldr r7, [pc, #0x264]
003dde58  04 40 8f e0                                      add r4, pc, r4
003dde5c  06 30 94 e7                                      ldr r3, [r4, r6]
003dde60  4c d0 4d e2                                      sub sp, sp, #0x4c
003dde64  01 90 a0 e1                                      mov sb, r1
003dde68  00 30 93 e5                                      ldr r3, [r3]
003dde6c  00 50 a0 e1                                      mov r5, r0
003dde70  2c 80 8d e2                                      add r8, sp, #0x2c
003dde74  44 30 8d e5                                      str r3, [sp, #0x44]
003dde78  0a f8 ff eb                                      bl #0x3dbea8
003dde7c  07 a0 94 e7                                      ldr sl, [r4, r7]
003dde80  0a 00 a0 e1                                      mov r0, sl
003dde84  7f 66 fd eb                                      bl #0x337888
003dde88  34 12 9f e5                                      ldr r1, [pc, #0x234]
003dde8c  10 20 8d e2                                      add r2, sp, #0x10
003dde90  08 00 a0 e1                                      mov r0, r8
003dde94  01 10 8f e0                                      add r1, pc, r1
003dde98  93 d8 fc eb                                      bl #0x3140ec
003dde9c  0a 00 a0 e1                                      mov r0, sl
003ddea0  08 10 a0 e1                                      mov r1, r8
003ddea4  f7 66 fd eb                                      bl #0x337a88
003ddea8  00 a0 a0 e1                                      mov sl, r0
003ddeac  40 00 9d e5                                      ldr r0, [sp, #0x40]
003ddeb0  08 00 50 e1                                      cmp r0, r8
003ddeb4  06 00 00 0a                                      beq #0x3dded4
003ddeb8  00 00 50 e3                                      cmp r0, #0
003ddebc  04 00 00 0a                                      beq #0x3dded4
003ddec0  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
003ddec4  01 10 60 e0                                      rsb r1, r0, r1
003ddec8  80 00 51 e3                                      cmp r1, #0x80
003ddecc  60 00 00 8a                                      bhi #0x3de054
003dded0  0a ac 0c eb                                      bl #0x708f00
003dded4  00 00 5a e3                                      cmp sl, #0
003dded8  54 00 00 1a                                      bne #0x3de030
003ddedc  d0 30 95 e5                                      ldr r3, [r5, #0xd0]
003ddee0  01 30 43 e2                                      sub r3, r3, #1
003ddee4  d0 30 85 e5                                      str r3, [r5, #0xd0]
003ddee8  29 7e 10 eb                                      bl #0x7fd794
003ddeec  05 30 d0 e5                                      ldrb r3, [r0, #5]
003ddef0  00 00 53 e3                                      cmp r3, #0
003ddef4  45 00 00 1a                                      bne #0x3de010
003ddef8  c8 81 9f e5                                      ldr r8, [pc, #0x1c8]
003ddefc  c8 31 9f e5                                      ldr r3, [pc, #0x1c8]
003ddf00  08 b0 94 e7                                      ldr fp, [r4, r8]
003ddf04  03 30 94 e7                                      ldr r3, [r4, r3]
003ddf08  0b 00 a0 e1                                      mov r0, fp
003ddf0c  00 80 93 e5                                      ldr r8, [r3]
003ddf10  9f 05 fd eb                                      bl #0x31f594
003ddf14  09 00 a0 e1                                      mov r0, sb
003ddf18  d4 a0 95 e5                                      ldr sl, [r5, #0xd4]
003ddf1c  40 14 ff eb                                      bl #0x3a3024
003ddf20  14 30 90 e5                                      ldr r3, [r0, #0x14]
003ddf24  0a a0 63 e0                                      rsb sl, r3, sl
003ddf28  d4 a0 85 e5                                      str sl, [r5, #0xd4]
003ddf2c  31 30 d8 e5                                      ldrb r3, [r8, #0x31]
003ddf30  00 00 53 e3                                      cmp r3, #0
003ddf34  0a 00 00 1a                                      bne #0x3ddf64
003ddf38  00 00 5a e3                                      cmp sl, #0
003ddf3c  08 00 00 1a                                      bne #0x3ddf64
003ddf40  88 11 9f e5                                      ldr r1, [pc, #0x188]
003ddf44  08 00 a0 e1                                      mov r0, r8
003ddf48  01 90 a0 e3                                      mov sb, #1
003ddf4c  01 10 8f e0                                      add r1, pc, r1
003ddf50  6f 2d fe eb                                      bl #0x369514
003ddf54  32 30 d8 e5                                      ldrb r3, [r8, #0x32]
003ddf58  31 90 c8 e5                                      strb sb, [r8, #0x31]
003ddf5c  00 00 53 e3                                      cmp r3, #0
003ddf60  47 00 00 1a                                      bne #0x3de084
003ddf64  d0 30 95 e5                                      ldr r3, [r5, #0xd0]
003ddf68  00 00 53 e3                                      cmp r3, #0
003ddf6c  3a 00 00 0a                                      beq #0x3de05c
003ddf70  07 80 94 e7                                      ldr r8, [r4, r7]
003ddf74  14 70 8d e2                                      add r7, sp, #0x14
003ddf78  08 00 a0 e1                                      mov r0, r8
003ddf7c  41 66 fd eb                                      bl #0x337888
003ddf80  4c 11 9f e5                                      ldr r1, [pc, #0x14c]
003ddf84  0c 20 8d e2                                      add r2, sp, #0xc
003ddf88  07 00 a0 e1                                      mov r0, r7
003ddf8c  01 10 8f e0                                      add r1, pc, r1
003ddf90  55 d8 fc eb                                      bl #0x3140ec
003ddf94  08 00 a0 e1                                      mov r0, r8
003ddf98  07 10 a0 e1                                      mov r1, r7
003ddf9c  b9 66 fd eb                                      bl #0x337a88
003ddfa0  00 80 a0 e1                                      mov r8, r0
003ddfa4  28 00 9d e5                                      ldr r0, [sp, #0x28]
003ddfa8  07 00 50 e1                                      cmp r0, r7
003ddfac  06 00 00 0a                                      beq #0x3ddfcc
003ddfb0  00 00 50 e3                                      cmp r0, #0
003ddfb4  04 00 00 0a                                      beq #0x3ddfcc
003ddfb8  14 10 9d e5                                      ldr r1, [sp, #0x14]
003ddfbc  01 10 60 e0                                      rsb r1, r0, r1
003ddfc0  80 00 51 e3                                      cmp r1, #0x80
003ddfc4  2c 00 00 8a                                      bhi #0x3de07c
003ddfc8  cc ab 0c eb                                      bl #0x708f00
003ddfcc  00 00 58 e3                                      cmp r8, #0
003ddfd0  07 00 00 0a                                      beq #0x3ddff4
003ddfd4  fc 00 9f e5                                      ldr r0, [pc, #0xfc]
003ddfd8  fc 10 9f e5                                      ldr r1, [pc, #0xfc]
003ddfdc  d4 30 95 e5                                      ldr r3, [r5, #0xd4]
003ddfe0  00 00 94 e7                                      ldr r0, [r4, r0]
003ddfe4  01 10 8f e0                                      add r1, pc, r1
003ddfe8  d0 20 95 e5                                      ldr r2, [r5, #0xd0]
003ddfec  a8 00 80 e2                                      add r0, r0, #0xa8
003ddff0  03 c0 fc eb                                      bl #0x30e004
003ddff4  06 30 94 e7                                      ldr r3, [r4, r6]
003ddff8  44 20 9d e5                                      ldr r2, [sp, #0x44]
003ddffc  00 30 93 e5                                      ldr r3, [r3]
003de000  03 00 52 e1                                      cmp r2, r3
003de004  2a 00 00 1a                                      bne #0x3de0b4
003de008  4c d0 8d e2                                      add sp, sp, #0x4c
003de00c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
003de010  b0 80 9f e5                                      ldr r8, [pc, #0xb0]
003de014  98 10 95 e5                                      ldr r1, [r5, #0x98]
003de018  08 30 94 e7                                      ldr r3, [r4, r8]
003de01c  40 00 93 e5                                      ldr r0, [r3, #0x40]
003de020  f5 43 fe eb                                      bl #0x36effc
003de024  00 00 50 e3                                      cmp r0, #0
003de028  f1 ff ff 0a                                      beq #0x3ddff4
003de02c  b2 ff ff ea                                      b #0x3ddefc
003de030  a0 00 9f e5                                      ldr r0, [pc, #0xa0]
003de034  a4 10 9f e5                                      ldr r1, [pc, #0xa4]
003de038  d0 20 95 e5                                      ldr r2, [r5, #0xd0]
003de03c  00 00 94 e7                                      ldr r0, [r4, r0]
003de040  01 10 8f e0                                      add r1, pc, r1
003de044  d4 30 95 e5                                      ldr r3, [r5, #0xd4]
003de048  a8 00 80 e2                                      add r0, r0, #0xa8
003de04c  ec bf fc eb                                      bl #0x30e004
003de050  a1 ff ff ea                                      b #0x3ddedc
003de054  f9 c8 fc eb                                      bl #0x310440
003de058  9d ff ff ea                                      b #0x3dded4
003de05c  32 30 d8 e5                                      ldrb r3, [r8, #0x32]
003de060  00 00 53 e3                                      cmp r3, #0
003de064  c1 ff ff 1a                                      bne #0x3ddf70
003de068  c4 30 95 e5                                      ldr r3, [r5, #0xc4]
003de06c  c8 20 95 e5                                      ldr r2, [r5, #0xc8]
003de070  02 00 53 e1                                      cmp r3, r2
003de074  c8 30 85 15                                      strne r3, [r5, #0xc8]
003de078  bc ff ff ea                                      b #0x3ddf70
003de07c  ef c8 fc eb                                      bl #0x310440
003de080  d1 ff ff ea                                      b #0x3ddfcc
003de084  0b 00 a0 e1                                      mov r0, fp
003de088  41 05 fd eb                                      bl #0x31f594
003de08c  20 11 90 e5                                      ldr r1, [r0, #0x120]
003de090  00 00 51 e3                                      cmp r1, #0
003de094  b2 ff ff ba                                      blt #0x3ddf64
003de098  7d ce a0 e3                                      mov ip, #0x7d0
003de09c  09 20 a0 e1                                      mov r2, sb
003de0a0  0a 30 a0 e1                                      mov r3, sl
003de0a4  08 00 a0 e1                                      mov r0, r8
003de0a8  00 c0 8d e5                                      str ip, [sp]
003de0ac  31 37 fe eb                                      bl #0x36bd78
003de0b0  ab ff ff ea                                      b #0x3ddf64
003de0b4  95 c0 fc eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003de0b8  38 6c 5b 00 ac 40 00 00 84 08 00 00 14 7d 4e 00  .byte 0x38, 0x6c, 0x5b, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x14, 0x7d, 0x4e, 0x00
003de0c8  f4 37 00 00 a4 0d 00 00 d4 3c 4e 00 1c 7c 4e 00  .byte 0xf4, 0x37, 0x00, 0x00, 0xa4, 0x0d, 0x00, 0x00, 0xd4, 0x3c, 0x4e, 0x00, 0x1c, 0x7c, 0x4e, 0x00
003de0d8  c0 19 00 00 94 7c 4e 00 00 7c 4e 00              .byte 0xc0, 0x19, 0x00, 0x00, 0x94, 0x7c, 0x4e, 0x00, 0x00, 0x7c, 0x4e, 0x00

; FUNCTION 0x003de100, declared_size=116, range_size=116, mode=arm
; class-group: AISPlayer
; alias: _ZN9AISPlayerD2Ev
; demangled: AISPlayer::~AISPlayer()
; decoder-mode: arm
003de100  70 40 2d e9                                      push {r4, r5, r6, lr}
003de104  5c 50 9f e5                                      ldr r5, [pc, #0x5c]
003de108  5c 30 9f e5                                      ldr r3, [pc, #0x5c]
003de10c  00 20 a0 e1                                      mov r2, r0
003de110  05 50 8f e0                                      add r5, pc, r5
003de114  03 30 95 e7                                      ldr r3, [r5, r3]
003de118  00 40 a0 e1                                      mov r4, r0
003de11c  08 30 83 e2                                      add r3, r3, #8
003de120  c4 30 82 e4                                      str r3, [r2], #0xc4
003de124  c4 30 90 e5                                      ldr r3, [r0, #0xc4]
003de128  00 00 53 e3                                      cmp r3, #0
003de12c  05 00 00 0a                                      beq #0x3de148
003de130  08 20 92 e5                                      ldr r2, [r2, #8]
003de134  03 10 a0 e1                                      mov r1, r3
003de138  cc 00 80 e2                                      add r0, r0, #0xcc
003de13c  02 30 63 e0                                      rsb r3, r3, r2
003de140  43 21 a0 e1                                      asr r2, r3, #2
003de144  e6 ff ff eb                                      bl #0x3de0e4
003de148  20 30 9f e5                                      ldr r3, [pc, #0x20]
003de14c  04 00 a0 e1                                      mov r0, r4
003de150  03 30 95 e7                                      ldr r3, [r5, r3]
003de154  08 30 83 e2                                      add r3, r3, #8
003de158  00 30 84 e5                                      str r3, [r4]
003de15c  63 ec ff eb                                      bl #0x3d92f0
003de160  04 00 a0 e1                                      mov r0, r4
003de164  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
003de168  80 69 5b 00 10 1b 00 00 ac 2a 00 00              .byte 0x80, 0x69, 0x5b, 0x00, 0x10, 0x1b, 0x00, 0x00, 0xac, 0x2a, 0x00, 0x00

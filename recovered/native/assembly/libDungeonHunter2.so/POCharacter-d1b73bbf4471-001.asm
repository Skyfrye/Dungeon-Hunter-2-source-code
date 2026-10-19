; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003b4010, declared_size=120, range_size=120, mode=arm
; class-group: POCharacter
; alias: _ZN11POCharacterC2EP13PhysicalWorldP10GameObjectbsttb.clone.2
; demangled: POCharacter::POCharacter(PhysicalWorld*, GameObject*, bool, short, unsigned short, unsigned short, bool) [clone .clone.2]
; decoder-mode: arm
003b4010  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
003b4014  24 d0 4d e2                                      sub sp, sp, #0x24
003b4018  b8 53 dd e1                                      ldrh r5, [sp, #0x38]
003b401c  bc e3 dd e1                                      ldrh lr, [sp, #0x3c]
003b4020  40 60 dd e5                                      ldrb r6, [sp, #0x40]
003b4024  00 c0 a0 e3                                      mov ip, #0
003b4028  0c 30 8d e5                                      str r3, [sp, #0xc]
003b402c  01 70 a0 e3                                      mov r7, #1
003b4030  0c 30 a0 e1                                      mov r3, ip
003b4034  44 40 9f e5                                      ldr r4, [pc, #0x44]
003b4038  10 50 8d e5                                      str r5, [sp, #0x10]
003b403c  14 e0 8d e5                                      str lr, [sp, #0x14]
003b4040  00 50 a0 e1                                      mov r5, r0
003b4044  04 c0 8d e5                                      str ip, [sp, #4]
003b4048  18 c0 8d e5                                      str ip, [sp, #0x18]
003b404c  00 70 8d e5                                      str r7, [sp]
003b4050  08 60 8d e5                                      str r6, [sp, #8]
003b4054  a5 ec 02 eb                                      bl #0x46f2f0
003b4058  24 30 9f e5                                      ldr r3, [pc, #0x24]
003b405c  04 40 8f e0                                      add r4, pc, r4
003b4060  05 00 a0 e1                                      mov r0, r5
003b4064  03 30 94 e7                                      ldr r3, [r4, r3]
003b4068  08 30 83 e2                                      add r3, r3, #8
003b406c  00 30 85 e5                                      str r3, [r5]
003b4070  aa ea 02 eb                                      bl #0x46eb20
003b4074  05 00 a0 e1                                      mov r0, r5
003b4078  24 d0 8d e2                                      add sp, sp, #0x24
003b407c  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
003b4080  34 0a 5e 00 2c 12 00 00                          .byte 0x34, 0x0a, 0x5e, 0x00, 0x2c, 0x12, 0x00, 0x00

; FUNCTION 0x0046fb14, declared_size=4, range_size=4, mode=arm
; class-group: POCharacter
; alias: _ZN11POCharacter18onCollisionResultsEP18PhysicalBaseObjectRK7Point2DIfEb
; demangled: POCharacter::onCollisionResults(PhysicalBaseObject*, Point2D<float> const&, bool)
; decoder-mode: arm
0046fb14  1e ff 2f e1                                      bx lr

; FUNCTION 0x0046fb18, declared_size=52, range_size=52, mode=arm
; class-group: POCharacter
; alias: _ZN11POCharacterD1Ev
; demangled: POCharacter::~POCharacter()
; decoder-mode: arm
0046fb18  24 30 9f e5                                      ldr r3, [pc, #0x24]
0046fb1c  24 20 9f e5                                      ldr r2, [pc, #0x24]
0046fb20  10 40 2d e9                                      push {r4, lr}
0046fb24  03 30 8f e0                                      add r3, pc, r3
0046fb28  02 20 93 e7                                      ldr r2, [r3, r2]
0046fb2c  00 40 a0 e1                                      mov r4, r0
0046fb30  08 20 82 e2                                      add r2, r2, #8
0046fb34  00 20 80 e5                                      str r2, [r0]
0046fb38  f8 fc ff eb                                      bl #0x46ef20
0046fb3c  04 00 a0 e1                                      mov r0, r4
0046fb40  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0046fb44  6c 4f 52 00 2c 12 00 00                          .byte 0x6c, 0x4f, 0x52, 0x00, 0x2c, 0x12, 0x00, 0x00

; FUNCTION 0x0046fb4c, declared_size=176, range_size=176, mode=arm
; class-group: POCharacter
; alias: _ZN11POCharacter15onCollisionTestEP18PhysicalBaseObjectsttstt
; demangled: POCharacter::onCollisionTest(PhysicalBaseObject*, short, unsigned short, unsigned short, short, unsigned short, unsigned short)
; decoder-mode: arm
0046fb4c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0046fb50  2c d0 4d e2                                      sub sp, sp, #0x2c
0046fb54  03 80 a0 e1                                      mov r8, r3
0046fb58  bc 35 dd e1                                      ldrh r3, [sp, #0x5c]
0046fb5c  00 50 a0 e1                                      mov r5, r0
0046fb60  1c 40 8d e2                                      add r4, sp, #0x1c
0046fb64  04 00 a0 e1                                      mov r0, r4
0046fb68  01 70 a0 e1                                      mov r7, r1
0046fb6c  08 10 95 e5                                      ldr r1, [r5, #8]
0046fb70  02 a0 a0 e1                                      mov sl, r2
0046fb74  14 30 8d e5                                      str r3, [sp, #0x14]
0046fb78  b0 95 dd e1                                      ldrh sb, [sp, #0x50]
0046fb7c  f4 b5 dd e1                                      ldrsh fp, [sp, #0x54]
0046fb80  b8 65 dd e1                                      ldrh r6, [sp, #0x58]
0046fb84  68 38 fb eb                                      bl #0x33dd2c
0046fb88  04 00 a0 e1                                      mov r0, r4
0046fb8c  f0 40 fb eb                                      bl #0x33ff54
0046fb90  00 00 50 e3                                      cmp r0, #0
0046fb94  0e 00 00 0a                                      beq #0x46fbd4
0046fb98  4f 4e 80 e2                                      add r4, r0, #0x4f0
0046fb9c  0c 40 84 e2                                      add r4, r4, #0xc
0046fba0  04 00 a0 e1                                      mov r0, r4
0046fba4  85 41 fd eb                                      bl #0x3c01c0
0046fba8  00 00 50 e3                                      cmp r0, #0
0046fbac  02 00 00 0a                                      beq #0x46fbbc
0046fbb0  00 00 a0 e3                                      mov r0, #0
0046fbb4  2c d0 8d e2                                      add sp, sp, #0x2c
0046fbb8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0046fbbc  04 00 a0 e1                                      mov r0, r4
0046fbc0  f7 41 fd eb                                      bl #0x3c03a4
0046fbc4  00 00 50 e3                                      cmp r0, #0
0046fbc8  01 00 00 0a                                      beq #0x46fbd4
0046fbcc  03 00 16 e3                                      tst r6, #3
0046fbd0  f6 ff ff 0a                                      beq #0x46fbb0
0046fbd4  14 c0 9d e5                                      ldr ip, [sp, #0x14]
0046fbd8  05 00 a0 e1                                      mov r0, r5
0046fbdc  07 10 a0 e1                                      mov r1, r7
0046fbe0  0a 20 a0 e1                                      mov r2, sl
0046fbe4  08 30 a0 e1                                      mov r3, r8
0046fbe8  00 0a 8d e8                                      stm sp, {sb, fp}
0046fbec  08 60 8d e5                                      str r6, [sp, #8]
0046fbf0  0c c0 8d e5                                      str ip, [sp, #0xc]
0046fbf4  b0 fa ff eb                                      bl #0x46e6bc
0046fbf8  ed ff ff ea                                      b #0x46fbb4

; FUNCTION 0x0046fd28, declared_size=260, range_size=260, mode=arm
; class-group: POCharacter
; alias: _ZN11POCharacter15onCollisionEndsEP18PhysicalBaseObjectRK7Point2DIfEb
; demangled: POCharacter::onCollisionEnds(PhysicalBaseObject*, Point2D<float> const&, bool)
; decoder-mode: arm
0046fd28  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0046fd2c  e8 40 9f e5                                      ldr r4, [pc, #0xe8]
0046fd30  e8 50 9f e5                                      ldr r5, [pc, #0xe8]
0046fd34  28 d0 4d e2                                      sub sp, sp, #0x28
0046fd38  04 40 8f e0                                      add r4, pc, r4
0046fd3c  05 20 94 e7                                      ldr r2, [r4, r5]
0046fd40  03 a0 a0 e1                                      mov sl, r3
0046fd44  00 20 92 e5                                      ldr r2, [r2]
0046fd48  24 20 8d e5                                      str r2, [sp, #0x24]
0046fd4c  08 60 90 e5                                      ldr r6, [r0, #8]
0046fd50  08 70 91 e5                                      ldr r7, [r1, #8]
0046fd54  00 00 57 e3                                      cmp r7, #0
0046fd58  00 00 56 13                                      cmpne r6, #0
0046fd5c  06 00 00 1a                                      bne #0x46fd7c
0046fd60  05 30 94 e7                                      ldr r3, [r4, r5]
0046fd64  24 20 9d e5                                      ldr r2, [sp, #0x24]
0046fd68  00 30 93 e5                                      ldr r3, [r3]
0046fd6c  03 00 52 e1                                      cmp r2, r3
0046fd70  28 00 00 1a                                      bne #0x46fe18
0046fd74  28 d0 8d e2                                      add sp, sp, #0x28
0046fd78  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0046fd7c  a0 30 9f e5                                      ldr r3, [pc, #0xa0]
0046fd80  0c 80 8d e2                                      add r8, sp, #0xc
0046fd84  03 90 94 e7                                      ldr sb, [r4, r3]
0046fd88  09 00 a0 e1                                      mov r0, sb
0046fd8c  bd 1e fb eb                                      bl #0x337888
0046fd90  90 10 9f e5                                      ldr r1, [pc, #0x90]
0046fd94  08 00 a0 e1                                      mov r0, r8
0046fd98  1c 80 8d e5                                      str r8, [sp, #0x1c]
0046fd9c  01 10 8f e0                                      add r1, pc, r1
0046fda0  19 10 81 e2                                      add r1, r1, #0x19
0046fda4  20 80 8d e5                                      str r8, [sp, #0x20]
0046fda8  ca ff ff eb                                      bl #0x46fcd8
0046fdac  09 00 a0 e1                                      mov r0, sb
0046fdb0  08 10 a0 e1                                      mov r1, r8
0046fdb4  33 1f fb eb                                      bl #0x337a88
0046fdb8  00 90 a0 e1                                      mov sb, r0
0046fdbc  08 00 a0 e1                                      mov r0, r8
0046fdc0  f9 8e fa eb                                      bl #0x3139ac
0046fdc4  00 00 59 e3                                      cmp sb, #0
0046fdc8  0d 00 00 1a                                      bne #0x46fe04
0046fdcc  06 10 a0 e1                                      mov r1, r6
0046fdd0  0d 00 a0 e1                                      mov r0, sp
0046fdd4  d4 37 fb eb                                      bl #0x33dd2c
0046fdd8  0d 00 a0 e1                                      mov r0, sp
0046fddc  5c 40 fb eb                                      bl #0x33ff54
0046fde0  00 00 50 e3                                      cmp r0, #0
0046fde4  0d 80 a0 e1                                      mov r8, sp
0046fde8  dc ff ff 0a                                      beq #0x46fd60
0046fdec  00 00 5a e3                                      cmp sl, #0
0046fdf0  3b 10 a0 13                                      movne r1, #0x3b
0046fdf4  3c 10 a0 03                                      moveq r1, #0x3c
0046fdf8  07 20 a0 e1                                      mov r2, r7
0046fdfc  d6 d3 fc eb                                      bl #0x3a4d5c
0046fe00  d6 ff ff ea                                      b #0x46fd60
0046fe04  00 30 96 e5                                      ldr r3, [r6]
0046fe08  06 00 a0 e1                                      mov r0, r6
0046fe0c  0f e0 a0 e1                                      mov lr, pc
0046fe10  28 f0 93 e5                                      ldr pc, [r3, #0x28]
0046fe14  ec ff ff ea                                      b #0x46fdcc
0046fe18  3c 79 fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0046fe1c  58 4d 52 00 ac 40 00 00 84 08 00 00 7c d8 45 00  .byte 0x58, 0x4d, 0x52, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x7c, 0xd8, 0x45, 0x00

; FUNCTION 0x0046fe2c, declared_size=60, range_size=60, mode=arm
; class-group: POCharacter
; alias: _ZN11POCharacterD0Ev
; demangled: POCharacter::~POCharacter()
; decoder-mode: arm
0046fe2c  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
0046fe30  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
0046fe34  10 40 2d e9                                      push {r4, lr}
0046fe38  03 30 8f e0                                      add r3, pc, r3
0046fe3c  02 20 93 e7                                      ldr r2, [r3, r2]
0046fe40  00 40 a0 e1                                      mov r4, r0
0046fe44  08 20 82 e2                                      add r2, r2, #8
0046fe48  00 20 80 e5                                      str r2, [r0]
0046fe4c  33 fc ff eb                                      bl #0x46ef20
0046fe50  04 00 a0 e1                                      mov r0, r4
0046fe54  79 81 fa eb                                      bl #0x310440
0046fe58  04 00 a0 e1                                      mov r0, r4
0046fe5c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0046fe60  58 4c 52 00 2c 12 00 00                          .byte 0x58, 0x4c, 0x52, 0x00, 0x2c, 0x12, 0x00, 0x00

; FUNCTION 0x0046fe68, declared_size=260, range_size=260, mode=arm
; class-group: POCharacter
; alias: _ZN11POCharacter17onCollisionBeginsEP18PhysicalBaseObjectRK7Point2DIfEb
; demangled: POCharacter::onCollisionBegins(PhysicalBaseObject*, Point2D<float> const&, bool)
; decoder-mode: arm
0046fe68  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0046fe6c  e8 40 9f e5                                      ldr r4, [pc, #0xe8]
0046fe70  e8 50 9f e5                                      ldr r5, [pc, #0xe8]
0046fe74  28 d0 4d e2                                      sub sp, sp, #0x28
0046fe78  04 40 8f e0                                      add r4, pc, r4
0046fe7c  05 20 94 e7                                      ldr r2, [r4, r5]
0046fe80  03 a0 a0 e1                                      mov sl, r3
0046fe84  00 20 92 e5                                      ldr r2, [r2]
0046fe88  24 20 8d e5                                      str r2, [sp, #0x24]
0046fe8c  08 60 90 e5                                      ldr r6, [r0, #8]
0046fe90  08 70 91 e5                                      ldr r7, [r1, #8]
0046fe94  00 00 57 e3                                      cmp r7, #0
0046fe98  00 00 56 13                                      cmpne r6, #0
0046fe9c  06 00 00 1a                                      bne #0x46febc
0046fea0  05 30 94 e7                                      ldr r3, [r4, r5]
0046fea4  24 20 9d e5                                      ldr r2, [sp, #0x24]
0046fea8  00 30 93 e5                                      ldr r3, [r3]
0046feac  03 00 52 e1                                      cmp r2, r3
0046feb0  28 00 00 1a                                      bne #0x46ff58
0046feb4  28 d0 8d e2                                      add sp, sp, #0x28
0046feb8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0046febc  a0 30 9f e5                                      ldr r3, [pc, #0xa0]
0046fec0  0c 80 8d e2                                      add r8, sp, #0xc
0046fec4  03 90 94 e7                                      ldr sb, [r4, r3]
0046fec8  09 00 a0 e1                                      mov r0, sb
0046fecc  6d 1e fb eb                                      bl #0x337888
0046fed0  90 10 9f e5                                      ldr r1, [pc, #0x90]
0046fed4  08 00 a0 e1                                      mov r0, r8
0046fed8  1c 80 8d e5                                      str r8, [sp, #0x1c]
0046fedc  01 10 8f e0                                      add r1, pc, r1
0046fee0  19 10 81 e2                                      add r1, r1, #0x19
0046fee4  20 80 8d e5                                      str r8, [sp, #0x20]
0046fee8  7a ff ff eb                                      bl #0x46fcd8
0046feec  09 00 a0 e1                                      mov r0, sb
0046fef0  08 10 a0 e1                                      mov r1, r8
0046fef4  e3 1e fb eb                                      bl #0x337a88
0046fef8  00 90 a0 e1                                      mov sb, r0
0046fefc  08 00 a0 e1                                      mov r0, r8
0046ff00  a9 8e fa eb                                      bl #0x3139ac
0046ff04  00 00 59 e3                                      cmp sb, #0
0046ff08  0d 00 00 1a                                      bne #0x46ff44
0046ff0c  06 10 a0 e1                                      mov r1, r6
0046ff10  0d 00 a0 e1                                      mov r0, sp
0046ff14  84 37 fb eb                                      bl #0x33dd2c
0046ff18  0d 00 a0 e1                                      mov r0, sp
0046ff1c  0c 40 fb eb                                      bl #0x33ff54
0046ff20  00 00 50 e3                                      cmp r0, #0
0046ff24  0d 80 a0 e1                                      mov r8, sp
0046ff28  dc ff ff 0a                                      beq #0x46fea0
0046ff2c  00 00 5a e3                                      cmp sl, #0
0046ff30  37 10 a0 13                                      movne r1, #0x37
0046ff34  38 10 a0 03                                      moveq r1, #0x38
0046ff38  07 20 a0 e1                                      mov r2, r7
0046ff3c  86 d3 fc eb                                      bl #0x3a4d5c
0046ff40  d6 ff ff ea                                      b #0x46fea0
0046ff44  00 30 96 e5                                      ldr r3, [r6]
0046ff48  06 00 a0 e1                                      mov r0, r6
0046ff4c  0f e0 a0 e1                                      mov lr, pc
0046ff50  28 f0 93 e5                                      ldr pc, [r3, #0x28]
0046ff54  ec ff ff ea                                      b #0x46ff0c
0046ff58  ec 78 fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0046ff5c  18 4c 52 00 ac 40 00 00 84 08 00 00 3c d7 45 00  .byte 0x18, 0x4c, 0x52, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x3c, 0xd7, 0x45, 0x00

; FUNCTION 0x0046ff6c, declared_size=264, range_size=264, mode=arm
; class-group: POCharacter
; alias: _ZN11POCharacter19onCollisionPersistsEP18PhysicalBaseObjectRK7Point2DIfEb
; demangled: POCharacter::onCollisionPersists(PhysicalBaseObject*, Point2D<float> const&, bool)
; decoder-mode: arm
0046ff6c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0046ff70  ec 40 9f e5                                      ldr r4, [pc, #0xec]
0046ff74  ec 50 9f e5                                      ldr r5, [pc, #0xec]
0046ff78  2c d0 4d e2                                      sub sp, sp, #0x2c
0046ff7c  04 40 8f e0                                      add r4, pc, r4
0046ff80  05 20 94 e7                                      ldr r2, [r4, r5]
0046ff84  03 a0 a0 e1                                      mov sl, r3
0046ff88  00 20 92 e5                                      ldr r2, [r2]
0046ff8c  24 20 8d e5                                      str r2, [sp, #0x24]
0046ff90  08 60 90 e5                                      ldr r6, [r0, #8]
0046ff94  08 70 91 e5                                      ldr r7, [r1, #8]
0046ff98  00 00 57 e3                                      cmp r7, #0
0046ff9c  00 00 56 13                                      cmpne r6, #0
0046ffa0  06 00 00 1a                                      bne #0x46ffc0
0046ffa4  05 30 94 e7                                      ldr r3, [r4, r5]
0046ffa8  24 20 9d e5                                      ldr r2, [sp, #0x24]
0046ffac  00 30 93 e5                                      ldr r3, [r3]
0046ffb0  03 00 52 e1                                      cmp r2, r3
0046ffb4  29 00 00 1a                                      bne #0x470060
0046ffb8  2c d0 8d e2                                      add sp, sp, #0x2c
0046ffbc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0046ffc0  06 10 a0 e1                                      mov r1, r6
0046ffc4  0d 00 a0 e1                                      mov r0, sp
0046ffc8  57 37 fb eb                                      bl #0x33dd2c
0046ffcc  0d 00 a0 e1                                      mov r0, sp
0046ffd0  df 3f fb eb                                      bl #0x33ff54
0046ffd4  90 30 9f e5                                      ldr r3, [pc, #0x90]
0046ffd8  00 b0 a0 e1                                      mov fp, r0
0046ffdc  0c 80 8d e2                                      add r8, sp, #0xc
0046ffe0  03 90 94 e7                                      ldr sb, [r4, r3]
0046ffe4  09 00 a0 e1                                      mov r0, sb
0046ffe8  26 1e fb eb                                      bl #0x337888
0046ffec  7c 10 9f e5                                      ldr r1, [pc, #0x7c]
0046fff0  08 00 a0 e1                                      mov r0, r8
0046fff4  1c 80 8d e5                                      str r8, [sp, #0x1c]
0046fff8  01 10 8f e0                                      add r1, pc, r1
0046fffc  19 10 81 e2                                      add r1, r1, #0x19
00470000  20 80 8d e5                                      str r8, [sp, #0x20]
00470004  33 ff ff eb                                      bl #0x46fcd8
00470008  09 00 a0 e1                                      mov r0, sb
0047000c  08 10 a0 e1                                      mov r1, r8
00470010  9c 1e fb eb                                      bl #0x337a88
00470014  00 90 a0 e1                                      mov sb, r0
00470018  08 00 a0 e1                                      mov r0, r8
0047001c  62 8e fa eb                                      bl #0x3139ac
00470020  00 00 59 e3                                      cmp sb, #0
00470024  08 00 00 1a                                      bne #0x47004c
00470028  00 00 5b e3                                      cmp fp, #0
0047002c  dc ff ff 0a                                      beq #0x46ffa4
00470030  00 00 5a e3                                      cmp sl, #0
00470034  39 10 a0 13                                      movne r1, #0x39
00470038  3a 10 a0 03                                      moveq r1, #0x3a
0047003c  0b 00 a0 e1                                      mov r0, fp
00470040  07 20 a0 e1                                      mov r2, r7
00470044  44 d3 fc eb                                      bl #0x3a4d5c
00470048  d5 ff ff ea                                      b #0x46ffa4
0047004c  06 00 a0 e1                                      mov r0, r6
00470050  00 30 96 e5                                      ldr r3, [r6]
00470054  0f e0 a0 e1                                      mov lr, pc
00470058  28 f0 93 e5                                      ldr pc, [r3, #0x28]
0047005c  f1 ff ff ea                                      b #0x470028
00470060  aa 78 fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00470064  14 4b 52 00 ac 40 00 00 84 08 00 00 20 d6 45 00  .byte 0x14, 0x4b, 0x52, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x20, 0xd6, 0x45, 0x00

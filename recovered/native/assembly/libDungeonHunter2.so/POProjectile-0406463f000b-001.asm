; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0047046c, declared_size=20, range_size=20, mode=arm
; class-group: POProjectile
; alias: _ZN12POProjectile19onCollisionPersistsEP18PhysicalBaseObjectRK7Point2DIfEb
; demangled: POProjectile::onCollisionPersists(PhysicalBaseObject*, Point2D<float> const&, bool)
; decoder-mode: arm
0047046c  10 40 2d e9                                      push {r4, lr}
00470470  00 c0 90 e5                                      ldr ip, [r0]
00470474  0f e0 a0 e1                                      mov lr, pc
00470478  0c f0 9c e5                                      ldr pc, [ip, #0xc]
0047047c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00470480, declared_size=52, range_size=52, mode=arm
; class-group: POProjectile
; alias: _ZN12POProjectileD1Ev
; demangled: POProjectile::~POProjectile()
; decoder-mode: arm
00470480  24 30 9f e5                                      ldr r3, [pc, #0x24]
00470484  24 20 9f e5                                      ldr r2, [pc, #0x24]
00470488  10 40 2d e9                                      push {r4, lr}
0047048c  03 30 8f e0                                      add r3, pc, r3
00470490  02 20 93 e7                                      ldr r2, [r3, r2]
00470494  00 40 a0 e1                                      mov r4, r0
00470498  08 20 82 e2                                      add r2, r2, #8
0047049c  00 20 80 e5                                      str r2, [r0]
004704a0  9e fa ff eb                                      bl #0x46ef20
004704a4  04 00 a0 e1                                      mov r0, r4
004704a8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004704ac  04 46 52 00 bc 26 00 00                          .byte 0x04, 0x46, 0x52, 0x00, 0xbc, 0x26, 0x00, 0x00

; FUNCTION 0x004704b4, declared_size=108, range_size=108, mode=arm
; class-group: POProjectile
; alias: _ZN12POProjectile17onCollisionBeginsEP18PhysicalBaseObjectRK7Point2DIfEb
; demangled: POProjectile::onCollisionBegins(PhysicalBaseObject*, Point2D<float> const&, bool)
; decoder-mode: arm
004704b4  70 40 2d e9                                      push {r4, r5, r6, lr}
004704b8  08 30 90 e5                                      ldr r3, [r0, #8]
004704bc  10 d0 4d e2                                      sub sp, sp, #0x10
004704c0  04 40 8d e2                                      add r4, sp, #4
004704c4  04 00 a0 e1                                      mov r0, r4
004704c8  01 50 a0 e1                                      mov r5, r1
004704cc  03 10 a0 e1                                      mov r1, r3
004704d0  02 60 a0 e1                                      mov r6, r2
004704d4  14 36 fb eb                                      bl #0x33dd2c
004704d8  04 00 a0 e1                                      mov r0, r4
004704dc  00 10 a0 e3                                      mov r1, #0
004704e0  36 3e fb eb                                      bl #0x33fdc0
004704e4  00 30 50 e2                                      subs r3, r0, #0
004704e8  02 00 00 0a                                      beq #0x4704f8
004704ec  f4 20 93 e5                                      ldr r2, [r3, #0xf4]
004704f0  09 00 52 e3                                      cmp r2, #9
004704f4  01 00 00 0a                                      beq #0x470500
004704f8  10 d0 8d e2                                      add sp, sp, #0x10
004704fc  70 80 bd e8                                      pop {r4, r5, r6, pc}
00470500  00 00 55 e3                                      cmp r5, #0
00470504  fb ff ff 0a                                      beq #0x4704f8
00470508  00 30 93 e5                                      ldr r3, [r3]
0047050c  08 10 95 e5                                      ldr r1, [r5, #8]
00470510  06 20 a0 e1                                      mov r2, r6
00470514  0f e0 a0 e1                                      mov lr, pc
00470518  d0 f0 93 e5                                      ldr pc, [r3, #0xd0]
0047051c  f5 ff ff ea                                      b #0x4704f8

; FUNCTION 0x00470520, declared_size=240, range_size=240, mode=arm
; class-group: POProjectile
; alias: _ZN12POProjectile15onCollisionTestEP18PhysicalBaseObjectsttstt
; demangled: POProjectile::onCollisionTest(PhysicalBaseObject*, short, unsigned short, unsigned short, short, unsigned short, unsigned short)
; decoder-mode: arm
00470520  70 40 2d e9                                      push {r4, r5, r6, lr}
00470524  30 d0 4d e2                                      sub sp, sp, #0x30
00470528  b0 54 dd e1                                      ldrh r5, [sp, #0x40]
0047052c  f4 44 dd e1                                      ldrsh r4, [sp, #0x44]
00470530  b8 e4 dd e1                                      ldrh lr, [sp, #0x48]
00470534  bc c4 dd e1                                      ldrh ip, [sp, #0x4c]
00470538  00 50 8d e5                                      str r5, [sp]
0047053c  10 40 8d e9                                      stmib sp, {r4, lr}
00470540  0c c0 8d e5                                      str ip, [sp, #0xc]
00470544  00 40 a0 e1                                      mov r4, r0
00470548  01 50 a0 e1                                      mov r5, r1
0047054c  5a f8 ff eb                                      bl #0x46e6bc
00470550  00 00 50 e3                                      cmp r0, #0
00470554  02 00 00 1a                                      bne #0x470564
00470558  00 00 a0 e3                                      mov r0, #0
0047055c  30 d0 8d e2                                      add sp, sp, #0x30
00470560  70 80 bd e8                                      pop {r4, r5, r6, pc}
00470564  1c 60 8d e2                                      add r6, sp, #0x1c
00470568  08 10 94 e5                                      ldr r1, [r4, #8]
0047056c  06 00 a0 e1                                      mov r0, r6
00470570  ed 35 fb eb                                      bl #0x33dd2c
00470574  06 00 a0 e1                                      mov r0, r6
00470578  00 10 a0 e3                                      mov r1, #0
0047057c  0f 3e fb eb                                      bl #0x33fdc0
00470580  00 00 50 e3                                      cmp r0, #0
00470584  02 00 00 0a                                      beq #0x470594
00470588  f4 30 90 e5                                      ldr r3, [r0, #0xf4]
0047058c  09 00 53 e3                                      cmp r3, #9
00470590  0e 00 00 0a                                      beq #0x4705d0
00470594  10 60 8d e2                                      add r6, sp, #0x10
00470598  08 10 94 e5                                      ldr r1, [r4, #8]
0047059c  06 00 a0 e1                                      mov r0, r6
004705a0  e1 35 fb eb                                      bl #0x33dd2c
004705a4  06 00 a0 e1                                      mov r0, r6
004705a8  00 10 a0 e3                                      mov r1, #0
004705ac  03 3e fb eb                                      bl #0x33fdc0
004705b0  00 00 50 e3                                      cmp r0, #0
004705b4  02 00 00 0a                                      beq #0x4705c4
004705b8  f4 30 90 e5                                      ldr r3, [r0, #0xf4]
004705bc  0a 00 53 e3                                      cmp r3, #0xa
004705c0  02 00 00 0a                                      beq #0x4705d0
004705c4  00 30 a0 e3                                      mov r3, #0
004705c8  03 00 a0 e1                                      mov r0, r3
004705cc  00 00 00 ea                                      b #0x4705d4
004705d0  01 30 a0 e3                                      mov r3, #1
004705d4  00 00 55 e3                                      cmp r5, #0
004705d8  00 30 a0 03                                      moveq r3, #0
004705dc  01 30 03 12                                      andne r3, r3, #1
004705e0  00 00 53 e3                                      cmp r3, #0
004705e4  db ff ff 0a                                      beq #0x470558
004705e8  00 30 90 e5                                      ldr r3, [r0]
004705ec  64 c1 90 e5                                      ldr ip, [r0, #0x164]
004705f0  60 21 90 e5                                      ldr r2, [r0, #0x160]
004705f4  08 10 95 e5                                      ldr r1, [r5, #8]
004705f8  d0 30 93 e5                                      ldr r3, [r3, #0xd0]
004705fc  28 20 8d e5                                      str r2, [sp, #0x28]
00470600  2c c0 8d e5                                      str ip, [sp, #0x2c]
00470604  28 20 8d e2                                      add r2, sp, #0x28
00470608  33 ff 2f e1                                      blx r3
0047060c  d1 ff ff ea                                      b #0x470558

; FUNCTION 0x004706ec, declared_size=60, range_size=60, mode=arm
; class-group: POProjectile
; alias: _ZN12POProjectileD0Ev
; demangled: POProjectile::~POProjectile()
; decoder-mode: arm
004706ec  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
004706f0  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
004706f4  10 40 2d e9                                      push {r4, lr}
004706f8  03 30 8f e0                                      add r3, pc, r3
004706fc  02 20 93 e7                                      ldr r2, [r3, r2]
00470700  00 40 a0 e1                                      mov r4, r0
00470704  08 20 82 e2                                      add r2, r2, #8
00470708  00 20 80 e5                                      str r2, [r0]
0047070c  03 fa ff eb                                      bl #0x46ef20
00470710  04 00 a0 e1                                      mov r0, r4
00470714  49 7f fa eb                                      bl #0x310440
00470718  04 00 a0 e1                                      mov r0, r4
0047071c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00470720  98 43 52 00 bc 26 00 00                          .byte 0x98, 0x43, 0x52, 0x00, 0xbc, 0x26, 0x00, 0x00

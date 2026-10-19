; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00638544, declared_size=224, range_size=224, mode=arm
; class-group: glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>
; alias: _ZN6glitch2ps13PEmitterModelINS0_12GNPSParticleEE13initPPositionEPS2_S4_
; demangled: glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>::initPPosition(glitch::ps::GNPSParticle*, glitch::ps::GNPSParticle*)
; decoder-mode: arm
00638544  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00638548  00 30 90 e5                                      ldr r3, [r0]
0063854c  00 50 a0 e1                                      mov r5, r0
00638550  14 d0 4d e2                                      sub sp, sp, #0x14
00638554  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00638558  02 60 a0 e1                                      mov r6, r2
0063855c  01 40 a0 e1                                      mov r4, r1
00638560  03 00 80 e0                                      add r0, r0, r3
00638564  03 30 95 e7                                      ldr r3, [r5, r3]
00638568  0f e0 a0 e1                                      mov lr, pc
0063856c  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00638570  00 30 95 e5                                      ldr r3, [r5]
00638574  00 70 a0 e1                                      mov r7, r0
00638578  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0063857c  03 00 85 e0                                      add r0, r5, r3
00638580  54 20 d0 e5                                      ldrb r2, [r0, #0x54]
00638584  00 00 52 e3                                      cmp r2, #0
00638588  14 00 00 0a                                      beq #0x6385e0
0063858c  06 00 54 e1                                      cmp r4, r6
00638590  10 00 00 0a                                      beq #0x6385d8
00638594  04 80 8d e2                                      add r8, sp, #4
00638598  04 30 95 e5                                      ldr r3, [r5, #4]
0063859c  07 20 a0 e1                                      mov r2, r7
006385a0  08 00 a0 e1                                      mov r0, r8
006385a4  03 10 a0 e1                                      mov r1, r3
006385a8  00 30 93 e5                                      ldr r3, [r3]
006385ac  0f e0 a0 e1                                      mov lr, pc
006385b0  04 f0 93 e5                                      ldr pc, [r3, #4]
006385b4  08 20 9d e5                                      ldr r2, [sp, #8]
006385b8  0c 30 9d e5                                      ldr r3, [sp, #0xc]
006385bc  04 10 9d e5                                      ldr r1, [sp, #4]
006385c0  04 20 84 e5                                      str r2, [r4, #4]
006385c4  08 30 84 e5                                      str r3, [r4, #8]
006385c8  00 10 84 e5                                      str r1, [r4]
006385cc  9c 40 84 e2                                      add r4, r4, #0x9c
006385d0  04 00 56 e1                                      cmp r6, r4
006385d4  ef ff ff 1a                                      bne #0x638598
006385d8  14 d0 8d e2                                      add sp, sp, #0x14
006385dc  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
006385e0  03 30 95 e7                                      ldr r3, [r5, r3]
006385e4  0f e0 a0 e1                                      mov lr, pc
006385e8  20 f0 93 e5                                      ldr pc, [r3, #0x20]
006385ec  00 00 50 e3                                      cmp r0, #0
006385f0  e5 ff ff 0a                                      beq #0x63858c
006385f4  08 04 95 e8                                      ldm r5, {r3, sl}
006385f8  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006385fc  00 20 9a e5                                      ldr r2, [sl]
00638600  03 00 85 e0                                      add r0, r5, r3
00638604  03 30 95 e7                                      ldr r3, [r5, r3]
00638608  08 80 92 e5                                      ldr r8, [r2, #8]
0063860c  0f e0 a0 e1                                      mov lr, pc
00638610  20 f0 93 e5                                      ldr pc, [r3, #0x20]
00638614  00 10 a0 e1                                      mov r1, r0
00638618  0a 00 a0 e1                                      mov r0, sl
0063861c  38 ff 2f e1                                      blx r8
00638620  d9 ff ff ea                                      b #0x63858c

; FUNCTION 0x00638624, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>
; alias: _ZTv0_n80_N6glitch2ps13PEmitterModelINS0_12GNPSParticleEE13initPPositionEPS2_S4_
; demangled: virtual thunk to glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>::initPPosition(glitch::ps::GNPSParticle*, glitch::ps::GNPSParticle*)
; decoder-mode: arm
00638624  00 30 90 e5                                      ldr r3, [r0]
00638628  50 30 13 e5                                      ldr r3, [r3, #-0x50]
0063862c  03 00 80 e0                                      add r0, r0, r3
00638630  c3 ff ff ea                                      b #0x638544

; FUNCTION 0x0063a350, declared_size=96, range_size=96, mode=arm
; class-group: glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>
; alias: _ZN6glitch2ps13PEmitterModelINS0_12GNPSParticleEED1Ev
; demangled: glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>::~PEmitterModel()
; decoder-mode: arm
0063a350  50 20 9f e5                                      ldr r2, [pc, #0x50]
0063a354  50 30 9f e5                                      ldr r3, [pc, #0x50]
0063a358  70 40 2d e9                                      push {r4, r5, r6, lr}
0063a35c  02 20 8f e0                                      add r2, pc, r2
0063a360  03 30 92 e7                                      ldr r3, [r2, r3]
0063a364  00 50 a0 e1                                      mov r5, r0
0063a368  00 40 a0 e1                                      mov r4, r0
0063a36c  0c 20 83 e2                                      add r2, r3, #0xc
0063a370  18 20 85 e4                                      str r2, [r5], #0x18
0063a374  04 20 90 e5                                      ldr r2, [r0, #4]
0063a378  b4 30 83 e2                                      add r3, r3, #0xb4
0063a37c  18 30 80 e5                                      str r3, [r0, #0x18]
0063a380  00 00 52 e3                                      cmp r2, #0
0063a384  03 00 00 0a                                      beq #0x63a398
0063a388  02 00 a0 e1                                      mov r0, r2
0063a38c  00 30 92 e5                                      ldr r3, [r2]
0063a390  0f e0 a0 e1                                      mov lr, pc
0063a394  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0063a398  05 00 a0 e1                                      mov r0, r5
0063a39c  95 ff ff eb                                      bl #0x63a1f8
0063a3a0  04 00 a0 e1                                      mov r0, r4
0063a3a4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0063a3a8  34 a7 35 00 5c 4c 00 00                          .byte 0x34, 0xa7, 0x35, 0x00, 0x5c, 0x4c, 0x00, 0x00

; FUNCTION 0x0063a3b0, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>
; alias: _ZTv0_n12_N6glitch2ps13PEmitterModelINS0_12GNPSParticleEED1Ev
; demangled: virtual thunk to glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>::~PEmitterModel()
; decoder-mode: arm
0063a3b0  00 30 90 e5                                      ldr r3, [r0]
0063a3b4  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0063a3b8  03 00 80 e0                                      add r0, r0, r3
0063a3bc  e3 ff ff ea                                      b #0x63a350

; FUNCTION 0x0063a3c0, declared_size=28, range_size=28, mode=arm
; class-group: glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>
; alias: _ZN6glitch2ps13PEmitterModelINS0_12GNPSParticleEED0Ev
; demangled: glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>::~PEmitterModel()
; decoder-mode: arm
0063a3c0  10 40 2d e9                                      push {r4, lr}
0063a3c4  00 40 a0 e1                                      mov r4, r0
0063a3c8  e0 ff ff eb                                      bl #0x63a350
0063a3cc  04 00 a0 e1                                      mov r0, r4
0063a3d0  b6 4f f3 eb                                      bl #0x30e2b0
0063a3d4  04 00 a0 e1                                      mov r0, r4
0063a3d8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0063a3dc, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>
; alias: _ZTv0_n12_N6glitch2ps13PEmitterModelINS0_12GNPSParticleEED0Ev
; demangled: virtual thunk to glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>::~PEmitterModel()
; decoder-mode: arm
0063a3dc  00 30 90 e5                                      ldr r3, [r0]
0063a3e0  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0063a3e4  03 00 80 e0                                      add r0, r0, r3
0063a3e8  f4 ff ff ea                                      b #0x63a3c0

; FUNCTION 0x0063c4c8, declared_size=208, range_size=208, mode=arm
; class-group: glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>
; alias: _ZN6glitch2ps13PEmitterModelINS0_12GNPSParticleEE17initPEmitterModelEv
; demangled: glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>::initPEmitterModel()
; decoder-mode: arm
0063c4c8  70 40 2d e9                                      push {r4, r5, r6, lr}
0063c4cc  04 30 90 e5                                      ldr r3, [r0, #4]
0063c4d0  10 d0 4d e2                                      sub sp, sp, #0x10
0063c4d4  00 40 a0 e1                                      mov r4, r0
0063c4d8  00 00 53 e3                                      cmp r3, #0
0063c4dc  05 00 00 0a                                      beq #0x63c4f8
0063c4e0  03 00 a0 e1                                      mov r0, r3
0063c4e4  00 30 93 e5                                      ldr r3, [r3]
0063c4e8  0f e0 a0 e1                                      mov lr, pc
0063c4ec  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0063c4f0  00 30 a0 e3                                      mov r3, #0
0063c4f4  04 30 84 e5                                      str r3, [r4, #4]
0063c4f8  08 10 94 e5                                      ldr r1, [r4, #8]
0063c4fc  01 00 51 e3                                      cmp r1, #1
0063c500  16 00 00 0a                                      beq #0x63c560
0063c504  02 00 51 e3                                      cmp r1, #2
0063c508  0b 00 00 0a                                      beq #0x63c53c
0063c50c  00 00 51 e3                                      cmp r1, #0
0063c510  07 00 00 1a                                      bne #0x63c534
0063c514  5c 00 a0 e3                                      mov r0, #0x5c
0063c518  23 df fb eb                                      bl #0x5341ac
0063c51c  10 10 94 e5                                      ldr r1, [r4, #0x10]
0063c520  00 50 a0 e1                                      mov r5, r0
0063c524  14 20 94 e5                                      ldr r2, [r4, #0x14]
0063c528  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0063c52c  88 7b 01 eb                                      bl #0x69b354
0063c530  04 50 84 e5                                      str r5, [r4, #4]
0063c534  10 d0 8d e2                                      add sp, sp, #0x10
0063c538  70 80 bd e8                                      pop {r4, r5, r6, pc}
0063c53c  00 10 a0 e3                                      mov r1, #0
0063c540  58 00 a0 e3                                      mov r0, #0x58
0063c544  18 df fb eb                                      bl #0x5341ac
0063c548  14 10 94 e5                                      ldr r1, [r4, #0x14]
0063c54c  00 50 a0 e1                                      mov r5, r0
0063c550  0c 20 94 e5                                      ldr r2, [r4, #0xc]
0063c554  f1 82 01 eb                                      bl #0x69d120
0063c558  04 50 84 e5                                      str r5, [r4, #4]
0063c55c  f4 ff ff ea                                      b #0x63c534
0063c560  00 60 a0 e3                                      mov r6, #0
0063c564  00 10 a0 e3                                      mov r1, #0
0063c568  2c 00 a0 e3                                      mov r0, #0x2c
0063c56c  04 60 8d e5                                      str r6, [sp, #4]
0063c570  08 60 8d e5                                      str r6, [sp, #8]
0063c574  0c 60 8d e5                                      str r6, [sp, #0xc]
0063c578  0b df fb eb                                      bl #0x5341ac
0063c57c  06 30 a0 e1                                      mov r3, r6
0063c580  00 50 a0 e1                                      mov r5, r0
0063c584  04 10 8d e2                                      add r1, sp, #4
0063c588  0c 20 94 e5                                      ldr r2, [r4, #0xc]
0063c58c  7b 7d 01 eb                                      bl #0x69bb80
0063c590  04 50 84 e5                                      str r5, [r4, #4]
0063c594  e6 ff ff ea                                      b #0x63c534

; FUNCTION 0x0063c598, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>
; alias: _ZTv0_n76_N6glitch2ps13PEmitterModelINS0_12GNPSParticleEE17initPEmitterModelEv
; demangled: virtual thunk to glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>::initPEmitterModel()
; decoder-mode: arm
0063c598  00 30 90 e5                                      ldr r3, [r0]
0063c59c  4c 30 13 e5                                      ldr r3, [r3, #-0x4c]
0063c5a0  03 00 80 e0                                      add r0, r0, r3
0063c5a4  c7 ff ff ea                                      b #0x63c4c8

; FUNCTION 0x006415ac, declared_size=376, range_size=376, mode=arm
; class-group: glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>
; alias: _ZN6glitch2ps13PEmitterModelINS0_12GNPSParticleEEC2Ev
; demangled: glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>::PEmitterModel()
; decoder-mode: arm
006415ac  30 40 2d e9                                      push {r4, r5, lr}
006415b0  00 30 91 e5                                      ldr r3, [r1]
006415b4  00 40 a0 e1                                      mov r4, r0
006415b8  bf 24 a0 e3                                      mov r2, #0xbf000000
006415bc  00 30 80 e5                                      str r3, [r0]
006415c0  04 c0 91 e5                                      ldr ip, [r1, #4]
006415c4  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
006415c8  5c d0 4d e2                                      sub sp, sp, #0x5c
006415cc  fe 35 a0 e3                                      mov r3, #0x3f800000
006415d0  00 c0 84 e7                                      str ip, [r4, r0]
006415d4  02 25 82 e2                                      add r2, r2, #0x800000
006415d8  00 10 a0 e3                                      mov r1, #0
006415dc  5c 00 a0 e3                                      mov r0, #0x5c
006415e0  08 30 8d e5                                      str r3, [sp, #8]
006415e4  00 30 8d e5                                      str r3, [sp]
006415e8  04 30 8d e5                                      str r3, [sp, #4]
006415ec  14 20 8d e5                                      str r2, [sp, #0x14]
006415f0  0c 20 8d e5                                      str r2, [sp, #0xc]
006415f4  10 20 8d e5                                      str r2, [sp, #0x10]
006415f8  eb ca fb eb                                      bl #0x5341ac
006415fc  0d 20 a0 e1                                      mov r2, sp
00641600  0c 10 8d e2                                      add r1, sp, #0xc
00641604  00 50 a0 e1                                      mov r5, r0
00641608  99 66 01 eb                                      bl #0x69b074
0064160c  00 20 94 e5                                      ldr r2, [r4]
00641610  01 31 a0 e3                                      mov r3, #0x40000000
00641614  00 10 a0 e3                                      mov r1, #0
00641618  08 10 84 e5                                      str r1, [r4, #8]
0064161c  14 30 84 e5                                      str r3, [r4, #0x14]
00641620  0c 30 84 e5                                      str r3, [r4, #0xc]
00641624  10 30 84 e5                                      str r3, [r4, #0x10]
00641628  04 50 84 e5                                      str r5, [r4, #4]
0064162c  0c 50 12 e5                                      ldr r5, [r2, #-0xc]
00641630  dc 10 9f e5                                      ldr r1, [pc, #0xdc]
00641634  05 50 84 e0                                      add r5, r4, r5
00641638  01 10 8f e0                                      add r1, pc, r1
0064163c  05 00 a0 e1                                      mov r0, r5
00641640  81 e7 ff eb                                      bl #0x63b44c
00641644  48 20 8d e2                                      add r2, sp, #0x48
00641648  08 30 84 e2                                      add r3, r4, #8
0064164c  48 00 8d e5                                      str r0, [sp, #0x48]
00641650  30 10 85 e2                                      add r1, r5, #0x30
00641654  50 00 8d e2                                      add r0, sp, #0x50
00641658  4c 30 8d e5                                      str r3, [sp, #0x4c]
0064165c  a2 e4 ff eb                                      bl #0x63a8ec
00641660  00 30 94 e5                                      ldr r3, [r4]
00641664  ac 10 9f e5                                      ldr r1, [pc, #0xac]
00641668  0c 50 13 e5                                      ldr r5, [r3, #-0xc]
0064166c  01 10 8f e0                                      add r1, pc, r1
00641670  05 50 84 e0                                      add r5, r4, r5
00641674  05 00 a0 e1                                      mov r0, r5
00641678  73 e7 ff eb                                      bl #0x63b44c
0064167c  38 20 8d e2                                      add r2, sp, #0x38
00641680  0c 30 84 e2                                      add r3, r4, #0xc
00641684  38 00 8d e5                                      str r0, [sp, #0x38]
00641688  30 10 85 e2                                      add r1, r5, #0x30
0064168c  40 00 8d e2                                      add r0, sp, #0x40
00641690  3c 30 8d e5                                      str r3, [sp, #0x3c]
00641694  94 e4 ff eb                                      bl #0x63a8ec
00641698  00 30 94 e5                                      ldr r3, [r4]
0064169c  78 10 9f e5                                      ldr r1, [pc, #0x78]
006416a0  0c 50 13 e5                                      ldr r5, [r3, #-0xc]
006416a4  01 10 8f e0                                      add r1, pc, r1
006416a8  05 50 84 e0                                      add r5, r4, r5
006416ac  05 00 a0 e1                                      mov r0, r5
006416b0  65 e7 ff eb                                      bl #0x63b44c
006416b4  28 20 8d e2                                      add r2, sp, #0x28
006416b8  10 30 84 e2                                      add r3, r4, #0x10
006416bc  28 00 8d e5                                      str r0, [sp, #0x28]
006416c0  30 10 85 e2                                      add r1, r5, #0x30
006416c4  30 00 8d e2                                      add r0, sp, #0x30
006416c8  2c 30 8d e5                                      str r3, [sp, #0x2c]
006416cc  86 e4 ff eb                                      bl #0x63a8ec
006416d0  00 30 94 e5                                      ldr r3, [r4]
006416d4  44 10 9f e5                                      ldr r1, [pc, #0x44]
006416d8  0c 50 13 e5                                      ldr r5, [r3, #-0xc]
006416dc  01 10 8f e0                                      add r1, pc, r1
006416e0  05 50 84 e0                                      add r5, r4, r5
006416e4  05 00 a0 e1                                      mov r0, r5
006416e8  57 e7 ff eb                                      bl #0x63b44c
006416ec  14 30 84 e2                                      add r3, r4, #0x14
006416f0  18 00 8d e5                                      str r0, [sp, #0x18]
006416f4  30 10 85 e2                                      add r1, r5, #0x30
006416f8  20 00 8d e2                                      add r0, sp, #0x20
006416fc  18 20 8d e2                                      add r2, sp, #0x18
00641700  1c 30 8d e5                                      str r3, [sp, #0x1c]
00641704  78 e4 ff eb                                      bl #0x63a8ec
00641708  04 00 a0 e1                                      mov r0, r4
0064170c  5c d0 8d e2                                      add sp, sp, #0x5c
00641710  30 80 bd e8                                      pop {r4, r5, pc}
; mapping-symbol data/literal pool
00641714  d0 3b 2a 00 ac 3b 2a 00 bc 9c 2a 00 94 9c 2a 00  .byte 0xd0, 0x3b, 0x2a, 0x00, 0xac, 0x3b, 0x2a, 0x00, 0xbc, 0x9c, 0x2a, 0x00, 0x94, 0x9c, 0x2a, 0x00

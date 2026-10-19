; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00638670, declared_size=4, range_size=4, mode=arm
; class-group: glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>
; alias: _ZN6glitch2ps13GNPSLifeModelINS0_12GNPSParticleEE14initPLifeModelEv
; demangled: glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>::initPLifeModel()
; decoder-mode: arm
00638670  1e ff 2f e1                                      bx lr

; FUNCTION 0x00638674, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>
; alias: _ZTv0_n132_N6glitch2ps13GNPSLifeModelINS0_12GNPSParticleEE14initPLifeModelEv
; demangled: virtual thunk to glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>::initPLifeModel()
; decoder-mode: arm
00638674  00 30 90 e5                                      ldr r3, [r0]
00638678  84 30 13 e5                                      ldr r3, [r3, #-0x84]
0063867c  03 00 80 e0                                      add r0, r0, r3
00638680  fa ff ff ea                                      b #0x638670

; FUNCTION 0x00638684, declared_size=148, range_size=148, mode=arm
; class-group: glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>
; alias: _ZN6glitch2ps13GNPSLifeModelINS0_12GNPSParticleEE9initPLifeEPS2_S4_
; demangled: glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>::initPLife(glitch::ps::GNPSParticle*, glitch::ps::GNPSParticle*)
; decoder-mode: arm
00638684  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00638688  00 30 90 e5                                      ldr r3, [r0]
0063868c  00 40 a0 e1                                      mov r4, r0
00638690  01 50 a0 e1                                      mov r5, r1
00638694  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00638698  02 80 a0 e1                                      mov r8, r2
0063869c  03 00 80 e0                                      add r0, r0, r3
006386a0  03 30 94 e7                                      ldr r3, [r4, r3]
006386a4  0f e0 a0 e1                                      mov lr, pc
006386a8  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006386ac  08 00 55 e1                                      cmp r5, r8
006386b0  00 a0 a0 e1                                      mov sl, r0
006386b4  16 00 00 0a                                      beq #0x638714
006386b8  00 90 a0 e3                                      mov sb, #0
006386bc  0a 00 a0 e1                                      mov r0, sl
006386c0  ec dd ff eb                                      bl #0x62fe78
006386c4  08 60 94 e5                                      ldr r6, [r4, #8]
006386c8  58 90 85 e5                                      str sb, [r5, #0x58]
006386cc  f3 57 f3 eb                                      bl #0x30e6a0
006386d0  00 10 a0 e1                                      mov r1, r0
006386d4  06 00 a0 e1                                      mov r0, r6
006386d8  a3 59 f3 eb                                      bl #0x30ed6c
006386dc  bf 14 a0 e3                                      mov r1, #0xbf000000
006386e0  00 70 a0 e1                                      mov r7, r0
006386e4  06 00 a0 e1                                      mov r0, r6
006386e8  9f 59 f3 eb                                      bl #0x30ed6c
006386ec  00 10 a0 e1                                      mov r1, r0
006386f0  07 00 a0 e1                                      mov r0, r7
006386f4  2a 59 f3 eb                                      bl #0x30eba4
006386f8  00 10 a0 e1                                      mov r1, r0
006386fc  04 00 94 e5                                      ldr r0, [r4, #4]
00638700  27 59 f3 eb                                      bl #0x30eba4
00638704  5c 00 85 e5                                      str r0, [r5, #0x5c]
00638708  9c 50 85 e2                                      add r5, r5, #0x9c
0063870c  05 00 58 e1                                      cmp r8, r5
00638710  e9 ff ff 1a                                      bne #0x6386bc
00638714  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x00638718, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>
; alias: _ZTv0_n136_N6glitch2ps13GNPSLifeModelINS0_12GNPSParticleEE9initPLifeEPS2_S4_
; demangled: virtual thunk to glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>::initPLife(glitch::ps::GNPSParticle*, glitch::ps::GNPSParticle*)
; decoder-mode: arm
00638718  00 30 90 e5                                      ldr r3, [r0]
0063871c  88 30 13 e5                                      ldr r3, [r3, #-0x88]
00638720  03 00 80 e0                                      add r0, r0, r3
00638724  d6 ff ff ea                                      b #0x638684

; FUNCTION 0x0063904c, declared_size=80, range_size=80, mode=arm
; class-group: glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>
; alias: _ZN6glitch2ps13GNPSLifeModelINS0_12GNPSParticleEE10applyPLifeEPS2_S4_
; demangled: glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>::applyPLife(glitch::ps::GNPSParticle*, glitch::ps::GNPSParticle*)
; decoder-mode: arm
0063904c  30 40 2d e9                                      push {r4, r5, lr}
00639050  00 c0 90 e5                                      ldr ip, [r0]
00639054  00 30 a0 e1                                      mov r3, r0
00639058  02 40 a0 e1                                      mov r4, r2
0063905c  0c 50 1c e5                                      ldr r5, [ip, #-0xc]
00639060  01 00 a0 e1                                      mov r0, r1
00639064  0c d0 4d e2                                      sub sp, sp, #0xc
00639068  05 50 83 e0                                      add r5, r3, r5
0063906c  02 10 a0 e1                                      mov r1, r2
00639070  50 20 95 e5                                      ldr r2, [r5, #0x50]
00639074  d0 ff ff eb                                      bl #0x638fbc
00639078  00 00 54 e1                                      cmp r4, r0
0063907c  00 10 a0 e1                                      mov r1, r0
00639080  03 00 00 0a                                      beq #0x639094
00639084  24 00 85 e2                                      add r0, r5, #0x24
00639088  04 20 a0 e1                                      mov r2, r4
0063908c  04 30 8d e2                                      add r3, sp, #4
00639090  c5 fb ff eb                                      bl #0x637fac
00639094  0c d0 8d e2                                      add sp, sp, #0xc
00639098  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x0063909c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>
; alias: _ZTv0_n140_N6glitch2ps13GNPSLifeModelINS0_12GNPSParticleEE10applyPLifeEPS2_S4_
; demangled: virtual thunk to glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>::applyPLife(glitch::ps::GNPSParticle*, glitch::ps::GNPSParticle*)
; decoder-mode: arm
0063909c  00 30 90 e5                                      ldr r3, [r0]
006390a0  8c 30 13 e5                                      ldr r3, [r3, #-0x8c]
006390a4  03 00 80 e0                                      add r0, r0, r3
006390a8  e7 ff ff ea                                      b #0x63904c

; FUNCTION 0x0063a26c, declared_size=60, range_size=60, mode=arm
; class-group: glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>
; alias: _ZN6glitch2ps13GNPSLifeModelINS0_12GNPSParticleEED1Ev
; demangled: glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>::~GNPSLifeModel()
; decoder-mode: arm
0063a26c  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
0063a270  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
0063a274  10 40 2d e9                                      push {r4, lr}
0063a278  02 20 8f e0                                      add r2, pc, r2
0063a27c  03 30 92 e7                                      ldr r3, [r2, r3]
0063a280  00 40 a0 e1                                      mov r4, r0
0063a284  0c 20 83 e2                                      add r2, r3, #0xc
0063a288  b8 30 83 e2                                      add r3, r3, #0xb8
0063a28c  0c 20 80 e4                                      str r2, [r0], #0xc
0063a290  0c 30 84 e5                                      str r3, [r4, #0xc]
0063a294  d7 ff ff eb                                      bl #0x63a1f8
0063a298  04 00 a0 e1                                      mov r0, r4
0063a29c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0063a2a0  18 a8 35 00 38 4a 00 00                          .byte 0x18, 0xa8, 0x35, 0x00, 0x38, 0x4a, 0x00, 0x00

; FUNCTION 0x0063a2a8, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>
; alias: _ZTv0_n12_N6glitch2ps13GNPSLifeModelINS0_12GNPSParticleEED1Ev
; demangled: virtual thunk to glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>::~GNPSLifeModel()
; decoder-mode: arm
0063a2a8  00 30 90 e5                                      ldr r3, [r0]
0063a2ac  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0063a2b0  03 00 80 e0                                      add r0, r0, r3
0063a2b4  ec ff ff ea                                      b #0x63a26c

; FUNCTION 0x0063d944, declared_size=68, range_size=68, mode=arm
; class-group: glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>
; alias: _ZN6glitch2ps13GNPSLifeModelINS0_12GNPSParticleEED0Ev
; demangled: glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>::~GNPSLifeModel()
; decoder-mode: arm
0063d944  34 20 9f e5                                      ldr r2, [pc, #0x34]
0063d948  34 30 9f e5                                      ldr r3, [pc, #0x34]
0063d94c  10 40 2d e9                                      push {r4, lr}
0063d950  02 20 8f e0                                      add r2, pc, r2
0063d954  03 30 92 e7                                      ldr r3, [r2, r3]
0063d958  00 40 a0 e1                                      mov r4, r0
0063d95c  0c 20 83 e2                                      add r2, r3, #0xc
0063d960  b8 30 83 e2                                      add r3, r3, #0xb8
0063d964  0c 20 80 e4                                      str r2, [r0], #0xc
0063d968  0c 30 84 e5                                      str r3, [r4, #0xc]
0063d96c  21 f2 ff eb                                      bl #0x63a1f8
0063d970  04 00 a0 e1                                      mov r0, r4
0063d974  4d 42 f3 eb                                      bl #0x30e2b0
0063d978  04 00 a0 e1                                      mov r0, r4
0063d97c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0063d980  40 71 35 00 38 4a 00 00                          .byte 0x40, 0x71, 0x35, 0x00, 0x38, 0x4a, 0x00, 0x00

; FUNCTION 0x0063d988, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>
; alias: _ZTv0_n12_N6glitch2ps13GNPSLifeModelINS0_12GNPSParticleEED0Ev
; demangled: virtual thunk to glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>::~GNPSLifeModel()
; decoder-mode: arm
0063d988  00 30 90 e5                                      ldr r3, [r0]
0063d98c  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0063d990  03 00 80 e0                                      add r0, r0, r3
0063d994  ea ff ff ea                                      b #0x63d944

; FUNCTION 0x00641d7c, declared_size=176, range_size=176, mode=arm
; class-group: glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>
; alias: _ZN6glitch2ps13GNPSLifeModelINS0_12GNPSParticleEEC2Ev
; demangled: glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>::GNPSLifeModel()
; decoder-mode: arm
00641d7c  30 40 2d e9                                      push {r4, r5, lr}
00641d80  00 30 91 e5                                      ldr r3, [r1]
00641d84  00 20 a0 e3                                      mov r2, #0
00641d88  24 d0 4d e2                                      sub sp, sp, #0x24
00641d8c  00 30 80 e5                                      str r3, [r0]
00641d90  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00641d94  04 10 91 e5                                      ldr r1, [r1, #4]
00641d98  00 40 a0 e1                                      mov r4, r0
00641d9c  03 10 80 e7                                      str r1, [r0, r3]
00641da0  00 30 90 e5                                      ldr r3, [r0]
00641da4  08 20 80 e5                                      str r2, [r0, #8]
00641da8  04 20 80 e5                                      str r2, [r0, #4]
00641dac  0c 50 13 e5                                      ldr r5, [r3, #-0xc]
00641db0  6c 10 9f e5                                      ldr r1, [pc, #0x6c]
00641db4  05 50 80 e0                                      add r5, r0, r5
00641db8  01 10 8f e0                                      add r1, pc, r1
00641dbc  05 00 a0 e1                                      mov r0, r5
00641dc0  a1 e5 ff eb                                      bl #0x63b44c
00641dc4  10 20 8d e2                                      add r2, sp, #0x10
00641dc8  04 30 84 e2                                      add r3, r4, #4
00641dcc  10 00 8d e5                                      str r0, [sp, #0x10]
00641dd0  30 10 85 e2                                      add r1, r5, #0x30
00641dd4  18 00 8d e2                                      add r0, sp, #0x18
00641dd8  14 30 8d e5                                      str r3, [sp, #0x14]
00641ddc  c2 e2 ff eb                                      bl #0x63a8ec
00641de0  00 30 94 e5                                      ldr r3, [r4]
00641de4  3c 10 9f e5                                      ldr r1, [pc, #0x3c]
00641de8  0c 50 13 e5                                      ldr r5, [r3, #-0xc]
00641dec  01 10 8f e0                                      add r1, pc, r1
00641df0  05 50 84 e0                                      add r5, r4, r5
00641df4  05 00 a0 e1                                      mov r0, r5
00641df8  93 e5 ff eb                                      bl #0x63b44c
00641dfc  08 30 84 e2                                      add r3, r4, #8
00641e00  00 00 8d e5                                      str r0, [sp]
00641e04  30 10 85 e2                                      add r1, r5, #0x30
00641e08  08 00 8d e2                                      add r0, sp, #8
00641e0c  0d 20 a0 e1                                      mov r2, sp
00641e10  04 30 8d e5                                      str r3, [sp, #4]
00641e14  b4 e2 ff eb                                      bl #0x63a8ec
00641e18  04 00 a0 e1                                      mov r0, r4
00641e1c  24 d0 8d e2                                      add sp, sp, #0x24
00641e20  30 80 bd e8                                      pop {r4, r5, pc}
; mapping-symbol data/literal pool
00641e24  e8 35 2a 00 bc 35 2a 00                          .byte 0xe8, 0x35, 0x2a, 0x00, 0xbc, 0x35, 0x2a, 0x00

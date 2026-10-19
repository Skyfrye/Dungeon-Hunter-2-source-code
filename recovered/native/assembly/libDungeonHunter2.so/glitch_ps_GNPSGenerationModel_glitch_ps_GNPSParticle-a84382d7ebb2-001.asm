; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0063a484, declared_size=60, range_size=60, mode=arm
; class-group: glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>
; alias: _ZN6glitch2ps19GNPSGenerationModelINS0_12GNPSParticleEED1Ev
; demangled: glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>::~GNPSGenerationModel()
; decoder-mode: arm
0063a484  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
0063a488  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
0063a48c  10 40 2d e9                                      push {r4, lr}
0063a490  02 20 8f e0                                      add r2, pc, r2
0063a494  03 30 92 e7                                      ldr r3, [r2, r3]
0063a498  00 40 a0 e1                                      mov r4, r0
0063a49c  0c 20 83 e2                                      add r2, r3, #0xc
0063a4a0  b4 30 83 e2                                      add r3, r3, #0xb4
0063a4a4  1c 20 80 e4                                      str r2, [r0], #0x1c
0063a4a8  1c 30 84 e5                                      str r3, [r4, #0x1c]
0063a4ac  51 ff ff eb                                      bl #0x63a1f8
0063a4b0  04 00 a0 e1                                      mov r0, r4
0063a4b4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0063a4b8  00 a6 35 00 68 1c 00 00                          .byte 0x00, 0xa6, 0x35, 0x00, 0x68, 0x1c, 0x00, 0x00

; FUNCTION 0x0063a4c0, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>
; alias: _ZTv0_n12_N6glitch2ps19GNPSGenerationModelINS0_12GNPSParticleEED1Ev
; demangled: virtual thunk to glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>::~GNPSGenerationModel()
; decoder-mode: arm
0063a4c0  00 30 90 e5                                      ldr r3, [r0]
0063a4c4  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0063a4c8  03 00 80 e0                                      add r0, r0, r3
0063a4cc  ec ff ff ea                                      b #0x63a484

; FUNCTION 0x0063d7a0, declared_size=68, range_size=68, mode=arm
; class-group: glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>
; alias: _ZN6glitch2ps19GNPSGenerationModelINS0_12GNPSParticleEED0Ev
; demangled: glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>::~GNPSGenerationModel()
; decoder-mode: arm
0063d7a0  34 20 9f e5                                      ldr r2, [pc, #0x34]
0063d7a4  34 30 9f e5                                      ldr r3, [pc, #0x34]
0063d7a8  10 40 2d e9                                      push {r4, lr}
0063d7ac  02 20 8f e0                                      add r2, pc, r2
0063d7b0  03 30 92 e7                                      ldr r3, [r2, r3]
0063d7b4  00 40 a0 e1                                      mov r4, r0
0063d7b8  0c 20 83 e2                                      add r2, r3, #0xc
0063d7bc  b4 30 83 e2                                      add r3, r3, #0xb4
0063d7c0  1c 20 80 e4                                      str r2, [r0], #0x1c
0063d7c4  1c 30 84 e5                                      str r3, [r4, #0x1c]
0063d7c8  8a f2 ff eb                                      bl #0x63a1f8
0063d7cc  04 00 a0 e1                                      mov r0, r4
0063d7d0  b6 42 f3 eb                                      bl #0x30e2b0
0063d7d4  04 00 a0 e1                                      mov r0, r4
0063d7d8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0063d7dc  e4 72 35 00 68 1c 00 00                          .byte 0xe4, 0x72, 0x35, 0x00, 0x68, 0x1c, 0x00, 0x00

; FUNCTION 0x0063d7e4, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>
; alias: _ZTv0_n12_N6glitch2ps19GNPSGenerationModelINS0_12GNPSParticleEED0Ev
; demangled: virtual thunk to glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>::~GNPSGenerationModel()
; decoder-mode: arm
0063d7e4  00 30 90 e5                                      ldr r3, [r0]
0063d7e8  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0063d7ec  03 00 80 e0                                      add r0, r0, r3
0063d7f0  ea ff ff ea                                      b #0x63d7a0

; FUNCTION 0x0063dea0, declared_size=180, range_size=180, mode=arm
; class-group: glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>
; alias: _ZN6glitch2ps19GNPSGenerationModelINS0_12GNPSParticleEE19initGenerationModelEv
; demangled: glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>::initGenerationModel()
; decoder-mode: arm
0063dea0  70 40 2d e9                                      push {r4, r5, r6, lr}
0063dea4  00 30 90 e5                                      ldr r3, [r0]
0063dea8  00 20 a0 e3                                      mov r2, #0
0063deac  18 20 80 e5                                      str r2, [r0, #0x18]
0063deb0  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0063deb4  08 d0 4d e2                                      sub sp, sp, #8
0063deb8  00 40 a0 e1                                      mov r4, r0
0063debc  03 30 80 e0                                      add r3, r0, r3
0063dec0  24 10 93 e5                                      ldr r1, [r3, #0x24]
0063dec4  28 20 93 e5                                      ldr r2, [r3, #0x28]
0063dec8  02 00 51 e1                                      cmp r1, r2
0063decc  05 00 00 0a                                      beq #0x63dee8
0063ded0  24 00 83 e2                                      add r0, r3, #0x24
0063ded4  04 30 8d e2                                      add r3, sp, #4
0063ded8  33 e8 ff eb                                      bl #0x637fac
0063dedc  00 30 94 e5                                      ldr r3, [r4]
0063dee0  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0063dee4  03 30 84 e0                                      add r3, r4, r3
0063dee8  03 00 a0 e1                                      mov r0, r3
0063deec  00 30 93 e5                                      ldr r3, [r3]
0063def0  0f e0 a0 e1                                      mov lr, pc
0063def4  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0063def8  10 50 94 e5                                      ldr r5, [r4, #0x10]
0063defc  dd c7 ff eb                                      bl #0x62fe78
0063df00  e6 41 f3 eb                                      bl #0x30e6a0
0063df04  00 10 a0 e1                                      mov r1, r0
0063df08  25 43 f3 eb                                      bl #0x30eba4
0063df0c  fe 15 a0 e3                                      mov r1, #0x3f800000
0063df10  25 41 f3 eb                                      bl #0x30e3ac
0063df14  00 60 a0 e1                                      mov r6, r0
0063df18  0c 00 94 e5                                      ldr r0, [r4, #0xc]
0063df1c  90 42 f3 eb                                      bl #0x30e964
0063df20  00 10 a0 e1                                      mov r1, r0
0063df24  06 00 a0 e1                                      mov r0, r6
0063df28  8f 43 f3 eb                                      bl #0x30ed6c
0063df2c  66 41 f3 eb                                      bl #0x30e4cc
0063df30  00 30 94 e5                                      ldr r3, [r4]
0063df34  05 10 80 e0                                      add r1, r0, r5
0063df38  10 10 84 e5                                      str r1, [r4, #0x10]
0063df3c  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0063df40  03 40 84 e0                                      add r4, r4, r3
0063df44  24 00 84 e2                                      add r0, r4, #0x24
0063df48  91 ff ff eb                                      bl #0x63dd94
0063df4c  08 d0 8d e2                                      add sp, sp, #8
0063df50  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0063df54, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>
; alias: _ZTv0_n44_N6glitch2ps19GNPSGenerationModelINS0_12GNPSParticleEE19initGenerationModelEv
; demangled: virtual thunk to glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>::initGenerationModel()
; decoder-mode: arm
0063df54  00 30 90 e5                                      ldr r3, [r0]
0063df58  2c 30 13 e5                                      ldr r3, [r3, #-0x2c]
0063df5c  03 00 80 e0                                      add r0, r0, r3
0063df60  ce ff ff ea                                      b #0x63dea0

; FUNCTION 0x0063e644, declared_size=472, range_size=472, mode=arm
; class-group: glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>
; alias: _ZN6glitch2ps19GNPSGenerationModelINS0_12GNPSParticleEE17generateParticlesEv
; demangled: glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>::generateParticles()
; decoder-mode: arm
0063e644  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0063e648  00 30 90 e5                                      ldr r3, [r0]
0063e64c  00 40 a0 e1                                      mov r4, r0
0063e650  a4 d0 4d e2                                      sub sp, sp, #0xa4
0063e654  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0063e658  03 00 80 e0                                      add r0, r0, r3
0063e65c  03 30 94 e7                                      ldr r3, [r4, r3]
0063e660  0f e0 a0 e1                                      mov lr, pc
0063e664  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0063e668  00 30 94 e5                                      ldr r3, [r4]
0063e66c  00 80 a0 e1                                      mov r8, r0
0063e670  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0063e674  03 30 84 e0                                      add r3, r4, r3
0063e678  4c 10 93 e5                                      ldr r1, [r3, #0x4c]
0063e67c  48 00 93 e5                                      ldr r0, [r3, #0x48]
0063e680  28 a0 93 e5                                      ldr sl, [r3, #0x28]
0063e684  24 50 93 e5                                      ldr r5, [r3, #0x24]
0063e688  47 3f f3 eb                                      bl #0x30e3ac
0063e68c  04 10 94 e5                                      ldr r1, [r4, #4]
0063e690  14 00 84 e5                                      str r0, [r4, #0x14]
0063e694  b4 41 f3 eb                                      bl #0x30ed6c
0063e698  18 10 94 e5                                      ldr r1, [r4, #0x18]
0063e69c  40 41 f3 eb                                      bl #0x30eba4
0063e6a0  00 70 a0 e1                                      mov r7, r0
0063e6a4  88 3f f3 eb                                      bl #0x30e4cc
0063e6a8  00 60 a0 e1                                      mov r6, r0
0063e6ac  08 00 a0 e1                                      mov r0, r8
0063e6b0  f0 c5 ff eb                                      bl #0x62fe78
0063e6b4  f9 3f f3 eb                                      bl #0x30e6a0
0063e6b8  00 10 a0 e1                                      mov r1, r0
0063e6bc  38 41 f3 eb                                      bl #0x30eba4
0063e6c0  fe 15 a0 e3                                      mov r1, #0x3f800000
0063e6c4  38 3f f3 eb                                      bl #0x30e3ac
0063e6c8  14 10 94 e5                                      ldr r1, [r4, #0x14]
0063e6cc  a6 41 f3 eb                                      bl #0x30ed6c
0063e6d0  08 10 94 e5                                      ldr r1, [r4, #8]
0063e6d4  a4 41 f3 eb                                      bl #0x30ed6c
0063e6d8  00 80 a0 e1                                      mov r8, r0
0063e6dc  7a 3f f3 eb                                      bl #0x30e4cc
0063e6e0  08 10 a0 e1                                      mov r1, r8
0063e6e4  06 60 80 e0                                      add r6, r0, r6
0063e6e8  07 00 a0 e1                                      mov r0, r7
0063e6ec  2c 41 f3 eb                                      bl #0x30eba4
0063e6f0  00 70 a0 e1                                      mov r7, r0
0063e6f4  06 00 a0 e1                                      mov r0, r6
0063e6f8  99 40 f3 eb                                      bl #0x30e964
0063e6fc  00 10 a0 e1                                      mov r1, r0
0063e700  07 00 a0 e1                                      mov r0, r7
0063e704  28 3f f3 eb                                      bl #0x30e3ac
0063e708  00 00 56 e3                                      cmp r6, #0
0063e70c  18 00 84 e5                                      str r0, [r4, #0x18]
0063e710  3c 00 00 da                                      ble #0x63e808
0063e714  0a 50 65 e0                                      rsb r5, r5, sl
0063e718  97 3f 06 e3                                      movw r3, #0x6f97
0063e71c  45 51 a0 e1                                      asr r5, r5, #2
0063e720  f9 36 49 e3                                      movt r3, #0x96f9
0063e724  93 05 05 e0                                      mul r5, r3, r5
0063e728  10 10 94 e5                                      ldr r1, [r4, #0x10]
0063e72c  05 60 86 e0                                      add r6, r6, r5
0063e730  01 00 56 e1                                      cmp r6, r1
0063e734  31 00 00 da                                      ble #0x63e800
0063e738  00 00 51 e3                                      cmp r1, #0
0063e73c  2f 00 00 0a                                      beq #0x63e800
0063e740  00 20 94 e5                                      ldr r2, [r4]
0063e744  00 30 a0 e3                                      mov r3, #0
0063e748  fe c5 a0 e3                                      mov ip, #0x3f800000
0063e74c  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
0063e750  00 e0 e0 e3                                      mvn lr, #0
0063e754  04 20 8d e2                                      add r2, sp, #4
0063e758  00 00 84 e0                                      add r0, r4, r0
0063e75c  24 00 80 e2                                      add r0, r0, #0x24
0063e760  94 30 8d e5                                      str r3, [sp, #0x94]
0063e764  04 30 8d e5                                      str r3, [sp, #4]
0063e768  08 30 8d e5                                      str r3, [sp, #8]
0063e76c  0c 30 8d e5                                      str r3, [sp, #0xc]
0063e770  10 30 8d e5                                      str r3, [sp, #0x10]
0063e774  14 30 8d e5                                      str r3, [sp, #0x14]
0063e778  18 30 8d e5                                      str r3, [sp, #0x18]
0063e77c  1c 30 8d e5                                      str r3, [sp, #0x1c]
0063e780  20 30 8d e5                                      str r3, [sp, #0x20]
0063e784  24 30 8d e5                                      str r3, [sp, #0x24]
0063e788  30 30 8d e5                                      str r3, [sp, #0x30]
0063e78c  34 30 8d e5                                      str r3, [sp, #0x34]
0063e790  38 30 8d e5                                      str r3, [sp, #0x38]
0063e794  40 30 8d e5                                      str r3, [sp, #0x40]
0063e798  44 30 8d e5                                      str r3, [sp, #0x44]
0063e79c  48 30 8d e5                                      str r3, [sp, #0x48]
0063e7a0  54 30 8d e5                                      str r3, [sp, #0x54]
0063e7a4  58 30 8d e5                                      str r3, [sp, #0x58]
0063e7a8  78 30 8d e5                                      str r3, [sp, #0x78]
0063e7ac  7c 30 8d e5                                      str r3, [sp, #0x7c]
0063e7b0  80 30 8d e5                                      str r3, [sp, #0x80]
0063e7b4  8c 30 8d e5                                      str r3, [sp, #0x8c]
0063e7b8  90 30 8d e5                                      str r3, [sp, #0x90]
0063e7bc  2b e0 cd e5                                      strb lr, [sp, #0x2b]
0063e7c0  50 c0 8d e5                                      str ip, [sp, #0x50]
0063e7c4  28 e0 cd e5                                      strb lr, [sp, #0x28]
0063e7c8  29 e0 cd e5                                      strb lr, [sp, #0x29]
0063e7cc  2a e0 cd e5                                      strb lr, [sp, #0x2a]
0063e7d0  2c c0 8d e5                                      str ip, [sp, #0x2c]
0063e7d4  3c c0 8d e5                                      str ip, [sp, #0x3c]
0063e7d8  4c c0 8d e5                                      str ip, [sp, #0x4c]
0063e7dc  80 ff ff eb                                      bl #0x63e5e4
0063e7e0  00 30 94 e5                                      ldr r3, [r4]
0063e7e4  9c 00 a0 e3                                      mov r0, #0x9c
0063e7e8  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0063e7ec  03 40 84 e0                                      add r4, r4, r3
0063e7f0  24 30 94 e5                                      ldr r3, [r4, #0x24]
0063e7f4  90 35 20 e0                                      mla r0, r0, r5, r3
0063e7f8  a4 d0 8d e2                                      add sp, sp, #0xa4
0063e7fc  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0063e800  06 10 a0 e1                                      mov r1, r6
0063e804  cd ff ff ea                                      b #0x63e740
0063e808  00 30 94 e5                                      ldr r3, [r4]
0063e80c  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0063e810  03 40 84 e0                                      add r4, r4, r3
0063e814  28 00 94 e5                                      ldr r0, [r4, #0x28]
0063e818  f6 ff ff ea                                      b #0x63e7f8

; FUNCTION 0x0063e81c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>
; alias: _ZTv0_n48_N6glitch2ps19GNPSGenerationModelINS0_12GNPSParticleEE17generateParticlesEv
; demangled: virtual thunk to glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>::generateParticles()
; decoder-mode: arm
0063e81c  00 30 90 e5                                      ldr r3, [r0]
0063e820  30 30 13 e5                                      ldr r3, [r3, #-0x30]
0063e824  03 00 80 e0                                      add r0, r0, r3
0063e828  85 ff ff ea                                      b #0x63e644

; FUNCTION 0x00641e2c, declared_size=324, range_size=324, mode=arm
; class-group: glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>
; alias: _ZN6glitch2ps19GNPSGenerationModelINS0_12GNPSParticleEEC2Ev
; demangled: glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>::GNPSGenerationModel()
; decoder-mode: arm
00641e2c  30 40 2d e9                                      push {r4, r5, lr}
00641e30  00 30 91 e5                                      ldr r3, [r1]
00641e34  00 20 a0 e3                                      mov r2, #0
00641e38  44 d0 4d e2                                      sub sp, sp, #0x44
00641e3c  00 30 80 e5                                      str r3, [r0]
00641e40  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00641e44  04 10 91 e5                                      ldr r1, [r1, #4]
00641e48  00 40 a0 e1                                      mov r4, r0
00641e4c  03 10 80 e7                                      str r1, [r0, r3]
00641e50  fe 15 a0 e3                                      mov r1, #0x3f800000
00641e54  00 30 90 e5                                      ldr r3, [r0]
00641e58  04 10 80 e5                                      str r1, [r0, #4]
00641e5c  00 10 a0 e3                                      mov r1, #0
00641e60  0c 10 80 e5                                      str r1, [r0, #0xc]
00641e64  01 10 a0 e3                                      mov r1, #1
00641e68  10 10 80 e5                                      str r1, [r0, #0x10]
00641e6c  18 20 80 e5                                      str r2, [r0, #0x18]
00641e70  08 20 80 e5                                      str r2, [r0, #8]
00641e74  14 20 80 e5                                      str r2, [r0, #0x14]
00641e78  0c 50 13 e5                                      ldr r5, [r3, #-0xc]
00641e7c  dc 10 9f e5                                      ldr r1, [pc, #0xdc]
00641e80  05 50 80 e0                                      add r5, r0, r5
00641e84  01 10 8f e0                                      add r1, pc, r1
00641e88  05 00 a0 e1                                      mov r0, r5
00641e8c  6e e5 ff eb                                      bl #0x63b44c
00641e90  30 20 8d e2                                      add r2, sp, #0x30
00641e94  04 30 84 e2                                      add r3, r4, #4
00641e98  30 00 8d e5                                      str r0, [sp, #0x30]
00641e9c  30 10 85 e2                                      add r1, r5, #0x30
00641ea0  38 00 8d e2                                      add r0, sp, #0x38
00641ea4  34 30 8d e5                                      str r3, [sp, #0x34]
00641ea8  8f e2 ff eb                                      bl #0x63a8ec
00641eac  00 30 94 e5                                      ldr r3, [r4]
00641eb0  ac 10 9f e5                                      ldr r1, [pc, #0xac]
00641eb4  0c 50 13 e5                                      ldr r5, [r3, #-0xc]
00641eb8  01 10 8f e0                                      add r1, pc, r1
00641ebc  05 50 84 e0                                      add r5, r4, r5
00641ec0  05 00 a0 e1                                      mov r0, r5
00641ec4  60 e5 ff eb                                      bl #0x63b44c
00641ec8  20 20 8d e2                                      add r2, sp, #0x20
00641ecc  08 30 84 e2                                      add r3, r4, #8
00641ed0  20 00 8d e5                                      str r0, [sp, #0x20]
00641ed4  30 10 85 e2                                      add r1, r5, #0x30
00641ed8  28 00 8d e2                                      add r0, sp, #0x28
00641edc  24 30 8d e5                                      str r3, [sp, #0x24]
00641ee0  81 e2 ff eb                                      bl #0x63a8ec
00641ee4  00 30 94 e5                                      ldr r3, [r4]
00641ee8  78 10 9f e5                                      ldr r1, [pc, #0x78]
00641eec  0c 50 13 e5                                      ldr r5, [r3, #-0xc]
00641ef0  01 10 8f e0                                      add r1, pc, r1
00641ef4  05 50 84 e0                                      add r5, r4, r5
00641ef8  05 00 a0 e1                                      mov r0, r5
00641efc  52 e5 ff eb                                      bl #0x63b44c
00641f00  10 20 8d e2                                      add r2, sp, #0x10
00641f04  0c 30 84 e2                                      add r3, r4, #0xc
00641f08  10 00 8d e5                                      str r0, [sp, #0x10]
00641f0c  30 10 85 e2                                      add r1, r5, #0x30
00641f10  18 00 8d e2                                      add r0, sp, #0x18
00641f14  14 30 8d e5                                      str r3, [sp, #0x14]
00641f18  73 e2 ff eb                                      bl #0x63a8ec
00641f1c  00 30 94 e5                                      ldr r3, [r4]
00641f20  44 10 9f e5                                      ldr r1, [pc, #0x44]
00641f24  0c 50 13 e5                                      ldr r5, [r3, #-0xc]
00641f28  01 10 8f e0                                      add r1, pc, r1
00641f2c  05 50 84 e0                                      add r5, r4, r5
00641f30  05 00 a0 e1                                      mov r0, r5
00641f34  44 e5 ff eb                                      bl #0x63b44c
00641f38  10 30 84 e2                                      add r3, r4, #0x10
00641f3c  00 00 8d e5                                      str r0, [sp]
00641f40  30 10 85 e2                                      add r1, r5, #0x30
00641f44  08 00 8d e2                                      add r0, sp, #8
00641f48  0d 20 a0 e1                                      mov r2, sp
00641f4c  04 30 8d e5                                      str r3, [sp, #4]
00641f50  65 e2 ff eb                                      bl #0x63a8ec
00641f54  04 00 a0 e1                                      mov r0, r4
00641f58  44 d0 8d e2                                      add sp, sp, #0x44
00641f5c  30 80 bd e8                                      pop {r4, r5, pc}
; mapping-symbol data/literal pool
00641f60  34 35 2a 00 10 35 2a 00 f0 34 2a 00 d0 32 2a 00  .byte 0x34, 0x35, 0x2a, 0x00, 0x10, 0x35, 0x2a, 0x00, 0xf0, 0x34, 0x2a, 0x00, 0xd0, 0x32, 0x2a, 0x00

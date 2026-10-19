; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0064d524, declared_size=60, range_size=60, mode=arm
; class-group: glitch::ps::PGenerationModel<glitch::ps::SParticle>
; alias: _ZN6glitch2ps16PGenerationModelINS0_9SParticleEED1Ev
; demangled: glitch::ps::PGenerationModel<glitch::ps::SParticle>::~PGenerationModel()
; decoder-mode: arm
0064d524  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
0064d528  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
0064d52c  10 40 2d e9                                      push {r4, lr}
0064d530  02 20 8f e0                                      add r2, pc, r2
0064d534  03 30 92 e7                                      ldr r3, [r2, r3]
0064d538  00 40 a0 e1                                      mov r4, r0
0064d53c  0c 20 83 e2                                      add r2, r3, #0xc
0064d540  b4 30 83 e2                                      add r3, r3, #0xb4
0064d544  14 20 80 e4                                      str r2, [r0], #0x14
0064d548  14 30 84 e5                                      str r3, [r4, #0x14]
0064d54c  51 ff ff eb                                      bl #0x64d298
0064d550  04 00 a0 e1                                      mov r0, r4
0064d554  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0064d558  60 75 34 00 30 2f 00 00                          .byte 0x60, 0x75, 0x34, 0x00, 0x30, 0x2f, 0x00, 0x00

; FUNCTION 0x0064d560, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::PGenerationModel<glitch::ps::SParticle>
; alias: _ZTv0_n12_N6glitch2ps16PGenerationModelINS0_9SParticleEED1Ev
; demangled: virtual thunk to glitch::ps::PGenerationModel<glitch::ps::SParticle>::~PGenerationModel()
; decoder-mode: arm
0064d560  00 30 90 e5                                      ldr r3, [r0]
0064d564  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0064d568  03 00 80 e0                                      add r0, r0, r3
0064d56c  ec ff ff ea                                      b #0x64d524

; FUNCTION 0x0064ef98, declared_size=68, range_size=68, mode=arm
; class-group: glitch::ps::PGenerationModel<glitch::ps::SParticle>
; alias: _ZN6glitch2ps16PGenerationModelINS0_9SParticleEED0Ev
; demangled: glitch::ps::PGenerationModel<glitch::ps::SParticle>::~PGenerationModel()
; decoder-mode: arm
0064ef98  34 20 9f e5                                      ldr r2, [pc, #0x34]
0064ef9c  34 30 9f e5                                      ldr r3, [pc, #0x34]
0064efa0  10 40 2d e9                                      push {r4, lr}
0064efa4  02 20 8f e0                                      add r2, pc, r2
0064efa8  03 30 92 e7                                      ldr r3, [r2, r3]
0064efac  00 40 a0 e1                                      mov r4, r0
0064efb0  0c 20 83 e2                                      add r2, r3, #0xc
0064efb4  b4 30 83 e2                                      add r3, r3, #0xb4
0064efb8  14 20 80 e4                                      str r2, [r0], #0x14
0064efbc  14 30 84 e5                                      str r3, [r4, #0x14]
0064efc0  b4 f8 ff eb                                      bl #0x64d298
0064efc4  04 00 a0 e1                                      mov r0, r4
0064efc8  b8 fc f2 eb                                      bl #0x30e2b0
0064efcc  04 00 a0 e1                                      mov r0, r4
0064efd0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0064efd4  ec 5a 34 00 30 2f 00 00                          .byte 0xec, 0x5a, 0x34, 0x00, 0x30, 0x2f, 0x00, 0x00

; FUNCTION 0x0064efdc, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::PGenerationModel<glitch::ps::SParticle>
; alias: _ZTv0_n12_N6glitch2ps16PGenerationModelINS0_9SParticleEED0Ev
; demangled: virtual thunk to glitch::ps::PGenerationModel<glitch::ps::SParticle>::~PGenerationModel()
; decoder-mode: arm
0064efdc  00 30 90 e5                                      ldr r3, [r0]
0064efe0  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0064efe4  03 00 80 e0                                      add r0, r0, r3
0064efe8  ea ff ff ea                                      b #0x64ef98

; FUNCTION 0x0064fc50, declared_size=92, range_size=92, mode=arm
; class-group: glitch::ps::PGenerationModel<glitch::ps::SParticle>
; alias: _ZN6glitch2ps16PGenerationModelINS0_9SParticleEE19initGenerationModelEv
; demangled: glitch::ps::PGenerationModel<glitch::ps::SParticle>::initGenerationModel()
; decoder-mode: arm
0064fc50  10 40 2d e9                                      push {r4, lr}
0064fc54  00 30 90 e5                                      ldr r3, [r0]
0064fc58  00 20 a0 e3                                      mov r2, #0
0064fc5c  10 20 80 e5                                      str r2, [r0, #0x10]
0064fc60  00 40 a0 e1                                      mov r4, r0
0064fc64  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
0064fc68  08 d0 4d e2                                      sub sp, sp, #8
0064fc6c  00 00 84 e0                                      add r0, r4, r0
0064fc70  24 10 90 e5                                      ldr r1, [r0, #0x24]
0064fc74  28 20 90 e5                                      ldr r2, [r0, #0x28]
0064fc78  02 00 51 e1                                      cmp r1, r2
0064fc7c  05 00 00 0a                                      beq #0x64fc98
0064fc80  04 30 8d e2                                      add r3, sp, #4
0064fc84  24 00 80 e2                                      add r0, r0, #0x24
0064fc88  1c ff ff eb                                      bl #0x64f900
0064fc8c  00 30 94 e5                                      ldr r3, [r4]
0064fc90  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
0064fc94  00 00 84 e0                                      add r0, r4, r0
0064fc98  24 00 80 e2                                      add r0, r0, #0x24
0064fc9c  08 10 94 e5                                      ldr r1, [r4, #8]
0064fca0  a7 ff ff eb                                      bl #0x64fb44
0064fca4  08 d0 8d e2                                      add sp, sp, #8
0064fca8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0064fcac, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::PGenerationModel<glitch::ps::SParticle>
; alias: _ZTv0_n44_N6glitch2ps16PGenerationModelINS0_9SParticleEE19initGenerationModelEv
; demangled: virtual thunk to glitch::ps::PGenerationModel<glitch::ps::SParticle>::initGenerationModel()
; decoder-mode: arm
0064fcac  00 30 90 e5                                      ldr r3, [r0]
0064fcb0  2c 30 13 e5                                      ldr r3, [r3, #-0x2c]
0064fcb4  03 00 80 e0                                      add r0, r0, r3
0064fcb8  e4 ff ff ea                                      b #0x64fc50

; FUNCTION 0x0065317c, declared_size=320, range_size=320, mode=arm
; class-group: glitch::ps::PGenerationModel<glitch::ps::SParticle>
; alias: _ZN6glitch2ps16PGenerationModelINS0_9SParticleEE17generateParticlesEv
; demangled: glitch::ps::PGenerationModel<glitch::ps::SParticle>::generateParticles()
; decoder-mode: arm
0065317c  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00653180  00 60 90 e5                                      ldr r6, [r0]
00653184  6c d0 4d e2                                      sub sp, sp, #0x6c
00653188  00 40 a0 e1                                      mov r4, r0
0065318c  0c 30 16 e5                                      ldr r3, [r6, #-0xc]
00653190  03 30 80 e0                                      add r3, r0, r3
00653194  4c 10 93 e5                                      ldr r1, [r3, #0x4c]
00653198  48 00 93 e5                                      ldr r0, [r3, #0x48]
0065319c  28 80 93 e5                                      ldr r8, [r3, #0x28]
006531a0  24 50 93 e5                                      ldr r5, [r3, #0x24]
006531a4  80 ec f2 eb                                      bl #0x30e3ac
006531a8  04 10 94 e5                                      ldr r1, [r4, #4]
006531ac  0c 00 84 e5                                      str r0, [r4, #0xc]
006531b0  ed ee f2 eb                                      bl #0x30ed6c
006531b4  10 10 94 e5                                      ldr r1, [r4, #0x10]
006531b8  79 ee f2 eb                                      bl #0x30eba4
006531bc  00 a0 a0 e1                                      mov sl, r0
006531c0  c1 ec f2 eb                                      bl #0x30e4cc
006531c4  00 70 a0 e1                                      mov r7, r0
006531c8  e5 ed f2 eb                                      bl #0x30e964
006531cc  00 10 a0 e1                                      mov r1, r0
006531d0  0a 00 a0 e1                                      mov r0, sl
006531d4  74 ec f2 eb                                      bl #0x30e3ac
006531d8  00 00 57 e3                                      cmp r7, #0
006531dc  10 00 84 e5                                      str r0, [r4, #0x10]
006531e0  31 00 00 da                                      ble #0x6532ac
006531e4  08 50 65 e0                                      rsb r5, r5, r8
006531e8  29 3c 05 e3                                      movw r3, #0x5c29
006531ec  45 51 a0 e1                                      asr r5, r5, #2
006531f0  8f 32 4c e3                                      movt r3, #0xc28f
006531f4  93 05 05 e0                                      mul r5, r3, r5
006531f8  08 10 94 e5                                      ldr r1, [r4, #8]
006531fc  05 70 87 e0                                      add r7, r7, r5
00653200  01 00 57 e1                                      cmp r7, r1
00653204  25 00 00 ca                                      bgt #0x6532a0
00653208  07 10 a0 e1                                      mov r1, r7
0065320c  0c 00 16 e5                                      ldr r0, [r6, #-0xc]
00653210  00 30 a0 e3                                      mov r3, #0
00653214  00 c0 e0 e3                                      mvn ip, #0
00653218  00 00 84 e0                                      add r0, r4, r0
0065321c  fe e5 a0 e3                                      mov lr, #0x3f800000
00653220  24 00 80 e2                                      add r0, r0, #0x24
00653224  04 20 8d e2                                      add r2, sp, #4
00653228  60 30 8d e5                                      str r3, [sp, #0x60]
0065322c  04 30 8d e5                                      str r3, [sp, #4]
00653230  08 30 8d e5                                      str r3, [sp, #8]
00653234  0c 30 8d e5                                      str r3, [sp, #0xc]
00653238  10 30 8d e5                                      str r3, [sp, #0x10]
0065323c  14 30 8d e5                                      str r3, [sp, #0x14]
00653240  18 30 8d e5                                      str r3, [sp, #0x18]
00653244  24 30 8d e5                                      str r3, [sp, #0x24]
00653248  28 30 8d e5                                      str r3, [sp, #0x28]
0065324c  2c 30 8d e5                                      str r3, [sp, #0x2c]
00653250  34 30 8d e5                                      str r3, [sp, #0x34]
00653254  38 30 8d e5                                      str r3, [sp, #0x38]
00653258  3c 30 8d e5                                      str r3, [sp, #0x3c]
0065325c  58 30 8d e5                                      str r3, [sp, #0x58]
00653260  5c 30 8d e5                                      str r3, [sp, #0x5c]
00653264  1f c0 cd e5                                      strb ip, [sp, #0x1f]
00653268  30 e0 8d e5                                      str lr, [sp, #0x30]
0065326c  1c c0 cd e5                                      strb ip, [sp, #0x1c]
00653270  1d c0 cd e5                                      strb ip, [sp, #0x1d]
00653274  1e c0 cd e5                                      strb ip, [sp, #0x1e]
00653278  20 e0 8d e5                                      str lr, [sp, #0x20]
0065327c  a6 ff ff eb                                      bl #0x65311c
00653280  00 30 94 e5                                      ldr r3, [r4]
00653284  64 00 a0 e3                                      mov r0, #0x64
00653288  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0065328c  03 40 84 e0                                      add r4, r4, r3
00653290  24 30 94 e5                                      ldr r3, [r4, #0x24]
00653294  90 35 20 e0                                      mla r0, r0, r5, r3
00653298  6c d0 8d e2                                      add sp, sp, #0x6c
0065329c  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
006532a0  00 00 51 e3                                      cmp r1, #0
006532a4  d8 ff ff 1a                                      bne #0x65320c
006532a8  d6 ff ff ea                                      b #0x653208
006532ac  0c 30 16 e5                                      ldr r3, [r6, #-0xc]
006532b0  03 40 84 e0                                      add r4, r4, r3
006532b4  28 00 94 e5                                      ldr r0, [r4, #0x28]
006532b8  f6 ff ff ea                                      b #0x653298

; FUNCTION 0x006532bc, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::PGenerationModel<glitch::ps::SParticle>
; alias: _ZTv0_n48_N6glitch2ps16PGenerationModelINS0_9SParticleEE17generateParticlesEv
; demangled: virtual thunk to glitch::ps::PGenerationModel<glitch::ps::SParticle>::generateParticles()
; decoder-mode: arm
006532bc  00 30 90 e5                                      ldr r3, [r0]
006532c0  30 30 13 e5                                      ldr r3, [r3, #-0x30]
006532c4  03 00 80 e0                                      add r0, r0, r3
006532c8  ab ff ff ea                                      b #0x65317c

; FUNCTION 0x006545d0, declared_size=192, range_size=192, mode=arm
; class-group: glitch::ps::PGenerationModel<glitch::ps::SParticle>
; alias: _ZN6glitch2ps16PGenerationModelINS0_9SParticleEEC2Ev
; demangled: glitch::ps::PGenerationModel<glitch::ps::SParticle>::PGenerationModel()
; decoder-mode: arm
006545d0  30 40 2d e9                                      push {r4, r5, lr}
006545d4  00 30 91 e5                                      ldr r3, [r1]
006545d8  00 20 a0 e3                                      mov r2, #0
006545dc  24 d0 4d e2                                      sub sp, sp, #0x24
006545e0  00 30 80 e5                                      str r3, [r0]
006545e4  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006545e8  04 10 91 e5                                      ldr r1, [r1, #4]
006545ec  00 40 a0 e1                                      mov r4, r0
006545f0  03 10 80 e7                                      str r1, [r0, r3]
006545f4  00 30 90 e5                                      ldr r3, [r0]
006545f8  fe 15 a0 e3                                      mov r1, #0x3f800000
006545fc  04 10 80 e5                                      str r1, [r0, #4]
00654600  01 10 a0 e3                                      mov r1, #1
00654604  08 10 80 e5                                      str r1, [r0, #8]
00654608  10 20 80 e5                                      str r2, [r0, #0x10]
0065460c  0c 20 80 e5                                      str r2, [r0, #0xc]
00654610  0c 50 13 e5                                      ldr r5, [r3, #-0xc]
00654614  6c 10 9f e5                                      ldr r1, [pc, #0x6c]
00654618  05 50 80 e0                                      add r5, r0, r5
0065461c  01 10 8f e0                                      add r1, pc, r1
00654620  05 00 a0 e1                                      mov r0, r5
00654624  a4 e2 ff eb                                      bl #0x64d0bc
00654628  0d 20 a0 e1                                      mov r2, sp
0065462c  04 30 84 e2                                      add r3, r4, #4
00654630  00 00 8d e5                                      str r0, [sp]
00654634  30 10 85 e2                                      add r1, r5, #0x30
00654638  08 00 8d e2                                      add r0, sp, #8
0065463c  04 30 8d e5                                      str r3, [sp, #4]
00654640  a9 98 ff eb                                      bl #0x63a8ec
00654644  00 30 94 e5                                      ldr r3, [r4]
00654648  3c 10 9f e5                                      ldr r1, [pc, #0x3c]
0065464c  0c 50 13 e5                                      ldr r5, [r3, #-0xc]
00654650  01 10 8f e0                                      add r1, pc, r1
00654654  05 50 84 e0                                      add r5, r4, r5
00654658  05 00 a0 e1                                      mov r0, r5
0065465c  96 e2 ff eb                                      bl #0x64d0bc
00654660  08 30 84 e2                                      add r3, r4, #8
00654664  10 00 8d e5                                      str r0, [sp, #0x10]
00654668  30 10 85 e2                                      add r1, r5, #0x30
0065466c  18 00 8d e2                                      add r0, sp, #0x18
00654670  10 20 8d e2                                      add r2, sp, #0x10
00654674  14 30 8d e5                                      str r3, [sp, #0x14]
00654678  9b 98 ff eb                                      bl #0x63a8ec
0065467c  04 00 a0 e1                                      mov r0, r4
00654680  24 d0 8d e2                                      add sp, sp, #0x24
00654684  30 80 bd e8                                      pop {r4, r5, pc}
; mapping-symbol data/literal pool
00654688  9c 0d 29 00 a8 0b 29 00                          .byte 0x9c, 0x0d, 0x29, 0x00, 0xa8, 0x0b, 0x29, 0x00

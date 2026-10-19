; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0064c248, declared_size=4, range_size=4, mode=arm
; class-group: glitch::ps::PSpinModel<glitch::ps::SParticle>
; alias: _ZN6glitch2ps10PSpinModelINS0_9SParticleEE14initPSpinModelEv
; demangled: glitch::ps::PSpinModel<glitch::ps::SParticle>::initPSpinModel()
; decoder-mode: arm
0064c248  1e ff 2f e1                                      bx lr

; FUNCTION 0x0064c24c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::PSpinModel<glitch::ps::SParticle>
; alias: _ZTv0_n120_N6glitch2ps10PSpinModelINS0_9SParticleEE14initPSpinModelEv
; demangled: virtual thunk to glitch::ps::PSpinModel<glitch::ps::SParticle>::initPSpinModel()
; decoder-mode: arm
0064c24c  00 30 90 e5                                      ldr r3, [r0]
0064c250  78 30 13 e5                                      ldr r3, [r3, #-0x78]
0064c254  03 00 80 e0                                      add r0, r0, r3
0064c258  fa ff ff ea                                      b #0x64c248

; FUNCTION 0x0064c25c, declared_size=124, range_size=124, mode=arm
; class-group: glitch::ps::PSpinModel<glitch::ps::SParticle>
; alias: _ZN6glitch2ps10PSpinModelINS0_9SParticleEE10applyPSpinEPS2_S4_
; demangled: glitch::ps::PSpinModel<glitch::ps::SParticle>::applyPSpin(glitch::ps::SParticle*, glitch::ps::SParticle*)
; decoder-mode: arm
0064c25c  02 00 51 e1                                      cmp r1, r2
0064c260  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0064c264  02 70 a0 e1                                      mov r7, r2
0064c268  00 80 a0 e1                                      mov r8, r0
0064c26c  18 00 00 0a                                      beq #0x64c2d4
0064c270  01 40 a0 e1                                      mov r4, r1
0064c274  4c 50 94 e5                                      ldr r5, [r4, #0x4c]
0064c278  00 10 a0 e3                                      mov r1, #0
0064c27c  50 60 94 e5                                      ldr r6, [r4, #0x50]
0064c280  05 00 a0 e1                                      mov r0, r5
0064c284  40 07 f3 eb                                      bl #0x30df8c
0064c288  00 00 50 e3                                      cmp r0, #0
0064c28c  00 10 a0 13                                      movne r1, #0
0064c290  09 00 00 1a                                      bne #0x64c2bc
0064c294  db 0f 00 e3                                      movw r0, #0xfdb
0064c298  05 10 a0 e1                                      mov r1, r5
0064c29c  c9 00 44 e3                                      movt r0, #0x40c9
0064c2a0  7b 0a f3 eb                                      bl #0x30ec94
0064c2a4  00 30 98 e5                                      ldr r3, [r8]
0064c2a8  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0064c2ac  03 30 88 e0                                      add r3, r8, r3
0064c2b0  50 10 93 e5                                      ldr r1, [r3, #0x50]
0064c2b4  ac 0a f3 eb                                      bl #0x30ed6c
0064c2b8  00 10 a0 e1                                      mov r1, r0
0064c2bc  06 00 a0 e1                                      mov r0, r6
0064c2c0  37 0a f3 eb                                      bl #0x30eba4
0064c2c4  50 00 84 e5                                      str r0, [r4, #0x50]
0064c2c8  64 40 84 e2                                      add r4, r4, #0x64
0064c2cc  04 00 57 e1                                      cmp r7, r4
0064c2d0  e7 ff ff 1a                                      bne #0x64c274
0064c2d4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0064c2d8, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::PSpinModel<glitch::ps::SParticle>
; alias: _ZTv0_n128_N6glitch2ps10PSpinModelINS0_9SParticleEE10applyPSpinEPS2_S4_
; demangled: virtual thunk to glitch::ps::PSpinModel<glitch::ps::SParticle>::applyPSpin(glitch::ps::SParticle*, glitch::ps::SParticle*)
; decoder-mode: arm
0064c2d8  00 30 90 e5                                      ldr r3, [r0]
0064c2dc  80 30 13 e5                                      ldr r3, [r3, #-0x80]
0064c2e0  03 00 80 e0                                      add r0, r0, r3
0064c2e4  dc ff ff ea                                      b #0x64c25c

; FUNCTION 0x0064d358, declared_size=60, range_size=60, mode=arm
; class-group: glitch::ps::PSpinModel<glitch::ps::SParticle>
; alias: _ZN6glitch2ps10PSpinModelINS0_9SParticleEED1Ev
; demangled: glitch::ps::PSpinModel<glitch::ps::SParticle>::~PSpinModel()
; decoder-mode: arm
0064d358  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
0064d35c  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
0064d360  10 40 2d e9                                      push {r4, lr}
0064d364  02 20 8f e0                                      add r2, pc, r2
0064d368  03 30 92 e7                                      ldr r3, [r2, r3]
0064d36c  00 40 a0 e1                                      mov r4, r0
0064d370  0c 20 83 e2                                      add r2, r3, #0xc
0064d374  b8 30 83 e2                                      add r3, r3, #0xb8
0064d378  28 20 80 e4                                      str r2, [r0], #0x28
0064d37c  28 30 84 e5                                      str r3, [r4, #0x28]
0064d380  c4 ff ff eb                                      bl #0x64d298
0064d384  04 00 a0 e1                                      mov r0, r4
0064d388  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0064d38c  2c 77 34 00 a0 4a 00 00                          .byte 0x2c, 0x77, 0x34, 0x00, 0xa0, 0x4a, 0x00, 0x00

; FUNCTION 0x0064d394, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::PSpinModel<glitch::ps::SParticle>
; alias: _ZTv0_n12_N6glitch2ps10PSpinModelINS0_9SParticleEED1Ev
; demangled: virtual thunk to glitch::ps::PSpinModel<glitch::ps::SParticle>::~PSpinModel()
; decoder-mode: arm
0064d394  00 30 90 e5                                      ldr r3, [r0]
0064d398  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0064d39c  03 00 80 e0                                      add r0, r0, r3
0064d3a0  ec ff ff ea                                      b #0x64d358

; FUNCTION 0x0064e3c8, declared_size=888, range_size=888, mode=arm
; class-group: glitch::ps::PSpinModel<glitch::ps::SParticle>
; alias: _ZN6glitch2ps10PSpinModelINS0_9SParticleEE9initPSpinEPS2_S4_
; demangled: glitch::ps::PSpinModel<glitch::ps::SParticle>::initPSpin(glitch::ps::SParticle*, glitch::ps::SParticle*)
; decoder-mode: arm
0064e3c8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0064e3cc  00 30 90 e5                                      ldr r3, [r0]
0064e3d0  84 d0 4d e2                                      sub sp, sp, #0x84
0064e3d4  14 20 8d e5                                      str r2, [sp, #0x14]
0064e3d8  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0064e3dc  00 50 a0 e1                                      mov r5, r0
0064e3e0  01 40 a0 e1                                      mov r4, r1
0064e3e4  03 00 80 e0                                      add r0, r0, r3
0064e3e8  03 30 95 e7                                      ldr r3, [r5, r3]
0064e3ec  0f e0 a0 e1                                      mov lr, pc
0064e3f0  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0064e3f4  08 10 95 e5                                      ldr r1, [r5, #8]
0064e3f8  00 90 a0 e1                                      mov sb, r0
0064e3fc  04 00 95 e5                                      ldr r0, [r5, #4]
0064e400  59 02 f3 eb                                      bl #0x30ed6c
0064e404  10 10 95 e5                                      ldr r1, [r5, #0x10]
0064e408  00 70 a0 e1                                      mov r7, r0
0064e40c  0c 00 95 e5                                      ldr r0, [r5, #0xc]
0064e410  55 02 f3 eb                                      bl #0x30ed6c
0064e414  43 14 a0 e3                                      mov r1, #0x43000000
0064e418  00 80 a0 e1                                      mov r8, r0
0064e41c  0d 17 81 e2                                      add r1, r1, #0x340000
0064e420  20 00 95 e5                                      ldr r0, [r5, #0x20]
0064e424  50 02 f3 eb                                      bl #0x30ed6c
0064e428  00 a0 a0 e1                                      mov sl, r0
0064e42c  14 00 9d e5                                      ldr r0, [sp, #0x14]
0064e430  00 00 54 e1                                      cmp r4, r0
0064e434  3f 00 00 0a                                      beq #0x64e538
0064e438  fc 32 9f e5                                      ldr r3, [pc, #0x2fc]
0064e43c  14 10 85 e2                                      add r1, r5, #0x14
0064e440  50 20 8d e2                                      add r2, sp, #0x50
0064e444  03 30 8f e0                                      add r3, pc, r3
0064e448  18 30 8d e5                                      str r3, [sp, #0x18]
0064e44c  20 10 8d e5                                      str r1, [sp, #0x20]
0064e450  2c 20 8d e5                                      str r2, [sp, #0x2c]
0064e454  44 30 8d e2                                      add r3, sp, #0x44
0064e458  38 00 8d e2                                      add r0, sp, #0x38
0064e45c  74 10 8d e2                                      add r1, sp, #0x74
0064e460  68 20 8d e2                                      add r2, sp, #0x68
0064e464  00 60 a0 e3                                      mov r6, #0
0064e468  5c b0 8d e2                                      add fp, sp, #0x5c
0064e46c  30 30 8d e5                                      str r3, [sp, #0x30]
0064e470  34 00 8d e5                                      str r0, [sp, #0x34]
0064e474  24 10 8d e5                                      str r1, [sp, #0x24]
0064e478  28 20 8d e5                                      str r2, [sp, #0x28]
0064e47c  07 00 a0 e1                                      mov r0, r7
0064e480  00 10 a0 e3                                      mov r1, #0
0064e484  c0 fe f2 eb                                      bl #0x30df8c
0064e488  00 00 50 e3                                      cmp r0, #0
0064e48c  00 00 a0 13                                      movne r0, #0
0064e490  89 00 00 0a                                      beq #0x64e6bc
0064e494  04 10 95 e5                                      ldr r1, [r5, #4]
0064e498  c1 01 f3 eb                                      bl #0x30eba4
0064e49c  00 10 a0 e3                                      mov r1, #0
0064e4a0  4c 00 84 e5                                      str r0, [r4, #0x4c]
0064e4a4  08 00 a0 e1                                      mov r0, r8
0064e4a8  b7 fe f2 eb                                      bl #0x30df8c
0064e4ac  00 00 50 e3                                      cmp r0, #0
0064e4b0  00 00 a0 13                                      movne r0, #0
0064e4b4  90 00 00 0a                                      beq #0x64e6fc
0064e4b8  0c 10 95 e5                                      ldr r1, [r5, #0xc]
0064e4bc  b8 01 f3 eb                                      bl #0x30eba4
0064e4c0  50 00 84 e5                                      str r0, [r4, #0x50]
0064e4c4  24 30 95 e5                                      ldr r3, [r5, #0x24]
0064e4c8  00 00 53 e3                                      cmp r3, #0
0064e4cc  60 00 00 0a                                      beq #0x64e654
0064e4d0  02 00 53 e3                                      cmp r3, #2
0064e4d4  20 30 9d 15                                      ldrne r3, [sp, #0x20]
0064e4d8  0c 30 84 02                                      addeq r3, r4, #0xc
0064e4dc  0a 00 a0 e1                                      mov r0, sl
0064e4e0  00 20 93 e5                                      ldr r2, [r3]
0064e4e4  00 10 a0 e3                                      mov r1, #0
0064e4e8  5c 20 8d e5                                      str r2, [sp, #0x5c]
0064e4ec  04 20 93 e5                                      ldr r2, [r3, #4]
0064e4f0  60 20 8d e5                                      str r2, [sp, #0x60]
0064e4f4  08 30 93 e5                                      ldr r3, [r3, #8]
0064e4f8  64 30 8d e5                                      str r3, [sp, #0x64]
0064e4fc  7d ff f2 eb                                      bl #0x30e2f8
0064e500  00 00 50 e3                                      cmp r0, #0
0064e504  0d 00 00 1a                                      bne #0x64e540
0064e508  0b 00 a0 e1                                      mov r0, fp
0064e50c  f3 40 f4 eb                                      bl #0x35e8e0
0064e510  00 30 90 e5                                      ldr r3, [r0]
0064e514  54 30 84 e5                                      str r3, [r4, #0x54]
0064e518  04 30 90 e5                                      ldr r3, [r0, #4]
0064e51c  58 30 84 e5                                      str r3, [r4, #0x58]
0064e520  08 30 90 e5                                      ldr r3, [r0, #8]
0064e524  5c 30 84 e5                                      str r3, [r4, #0x5c]
0064e528  14 20 9d e5                                      ldr r2, [sp, #0x14]
0064e52c  64 40 84 e2                                      add r4, r4, #0x64
0064e530  04 00 52 e1                                      cmp r2, r4
0064e534  d0 ff ff 1a                                      bne #0x64e47c
0064e538  84 d0 8d e2                                      add sp, sp, #0x84
0064e53c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0064e540  09 00 a0 e1                                      mov r0, sb
0064e544  4b 86 ff eb                                      bl #0x62fe78
0064e548  00 20 a0 e1                                      mov r2, r0
0064e54c  01 30 a0 e1                                      mov r3, r1
0064e550  0a 00 a0 e1                                      mov r0, sl
0064e554  bf 14 a0 e3                                      mov r1, #0xbf000000
0064e558  10 20 8d e5                                      str r2, [sp, #0x10]
0064e55c  0c 30 8d e5                                      str r3, [sp, #0xc]
0064e560  01 02 f3 eb                                      bl #0x30ed6c
0064e564  10 20 9d e5                                      ldr r2, [sp, #0x10]
0064e568  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0064e56c  1c 00 8d e5                                      str r0, [sp, #0x1c]
0064e570  02 00 a0 e1                                      mov r0, r2
0064e574  03 10 a0 e1                                      mov r1, r3
0064e578  48 00 f3 eb                                      bl #0x30e6a0
0064e57c  00 10 a0 e1                                      mov r1, r0
0064e580  0a 00 a0 e1                                      mov r0, sl
0064e584  f8 01 f3 eb                                      bl #0x30ed6c
0064e588  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
0064e58c  84 01 f3 eb                                      bl #0x30eba4
0064e590  c3 00 f3 eb                                      bl #0x30e8a4
0064e594  01 30 a0 e1                                      mov r3, r1
0064e598  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
0064e59c  00 20 a0 e1                                      mov r2, r0
0064e5a0  0b 00 a0 e1                                      mov r0, fp
0064e5a4  00 10 8d e5                                      str r1, [sp]
0064e5a8  50 60 8d e5                                      str r6, [sp, #0x50]
0064e5ac  54 60 8d e5                                      str r6, [sp, #0x54]
0064e5b0  58 60 8d e5                                      str r6, [sp, #0x58]
0064e5b4  90 89 ff eb                                      bl #0x630bfc
0064e5b8  09 00 a0 e1                                      mov r0, sb
0064e5bc  2d 86 ff eb                                      bl #0x62fe78
0064e5c0  36 00 f3 eb                                      bl #0x30e6a0
0064e5c4  00 10 a0 e1                                      mov r1, r0
0064e5c8  0a 00 a0 e1                                      mov r0, sl
0064e5cc  e6 01 f3 eb                                      bl #0x30ed6c
0064e5d0  00 10 a0 e1                                      mov r1, r0
0064e5d4  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0064e5d8  71 01 f3 eb                                      bl #0x30eba4
0064e5dc  b0 00 f3 eb                                      bl #0x30e8a4
0064e5e0  01 30 a0 e1                                      mov r3, r1
0064e5e4  30 10 9d e5                                      ldr r1, [sp, #0x30]
0064e5e8  00 20 a0 e1                                      mov r2, r0
0064e5ec  0b 00 a0 e1                                      mov r0, fp
0064e5f0  00 10 8d e5                                      str r1, [sp]
0064e5f4  44 60 8d e5                                      str r6, [sp, #0x44]
0064e5f8  48 60 8d e5                                      str r6, [sp, #0x48]
0064e5fc  4c 60 8d e5                                      str r6, [sp, #0x4c]
0064e600  bc 89 ff eb                                      bl #0x630cf8
0064e604  09 00 a0 e1                                      mov r0, sb
0064e608  1a 86 ff eb                                      bl #0x62fe78
0064e60c  23 00 f3 eb                                      bl #0x30e6a0
0064e610  00 10 a0 e1                                      mov r1, r0
0064e614  0a 00 a0 e1                                      mov r0, sl
0064e618  d3 01 f3 eb                                      bl #0x30ed6c
0064e61c  00 10 a0 e1                                      mov r1, r0
0064e620  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0064e624  5e 01 f3 eb                                      bl #0x30eba4
0064e628  9d 00 f3 eb                                      bl #0x30e8a4
0064e62c  01 30 a0 e1                                      mov r3, r1
0064e630  34 10 9d e5                                      ldr r1, [sp, #0x34]
0064e634  00 20 a0 e1                                      mov r2, r0
0064e638  0b 00 a0 e1                                      mov r0, fp
0064e63c  38 60 8d e5                                      str r6, [sp, #0x38]
0064e640  3c 60 8d e5                                      str r6, [sp, #0x3c]
0064e644  40 60 8d e5                                      str r6, [sp, #0x40]
0064e648  00 10 8d e5                                      str r1, [sp]
0064e64c  e5 89 ff eb                                      bl #0x630de8
0064e650  ac ff ff ea                                      b #0x64e508
0064e654  24 00 9d e5                                      ldr r0, [sp, #0x24]
0064e658  09 10 a0 e1                                      mov r1, sb
0064e65c  18 a5 ff eb                                      bl #0x637ac4
0064e660  18 30 9d e5                                      ldr r3, [sp, #0x18]
0064e664  78 00 9d e5                                      ldr r0, [sp, #0x78]
0064e668  20 10 93 e5                                      ldr r1, [r3, #0x20]
0064e66c  4e ff f2 eb                                      bl #0x30e3ac
0064e670  00 30 a0 e1                                      mov r3, r0
0064e674  18 00 9d e5                                      ldr r0, [sp, #0x18]
0064e678  24 10 90 e5                                      ldr r1, [r0, #0x24]
0064e67c  7c 00 9d e5                                      ldr r0, [sp, #0x7c]
0064e680  0c 30 8d e5                                      str r3, [sp, #0xc]
0064e684  48 ff f2 eb                                      bl #0x30e3ac
0064e688  00 20 a0 e1                                      mov r2, r0
0064e68c  18 00 9d e5                                      ldr r0, [sp, #0x18]
0064e690  1c 10 90 e5                                      ldr r1, [r0, #0x1c]
0064e694  74 00 9d e5                                      ldr r0, [sp, #0x74]
0064e698  10 20 8d e5                                      str r2, [sp, #0x10]
0064e69c  42 ff f2 eb                                      bl #0x30e3ac
0064e6a0  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0064e6a4  10 20 9d e5                                      ldr r2, [sp, #0x10]
0064e6a8  68 00 8d e5                                      str r0, [sp, #0x68]
0064e6ac  6c 30 8d e5                                      str r3, [sp, #0x6c]
0064e6b0  28 00 9d e5                                      ldr r0, [sp, #0x28]
0064e6b4  70 20 8d e5                                      str r2, [sp, #0x70]
0064e6b8  93 ff ff ea                                      b #0x64e50c
0064e6bc  09 00 a0 e1                                      mov r0, sb
0064e6c0  ec 85 ff eb                                      bl #0x62fe78
0064e6c4  f5 ff f2 eb                                      bl #0x30e6a0
0064e6c8  00 10 a0 e1                                      mov r1, r0
0064e6cc  07 00 a0 e1                                      mov r0, r7
0064e6d0  a5 01 f3 eb                                      bl #0x30ed6c
0064e6d4  bf 14 a0 e3                                      mov r1, #0xbf000000
0064e6d8  00 30 a0 e1                                      mov r3, r0
0064e6dc  07 00 a0 e1                                      mov r0, r7
0064e6e0  0c 30 8d e5                                      str r3, [sp, #0xc]
0064e6e4  a0 01 f3 eb                                      bl #0x30ed6c
0064e6e8  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0064e6ec  00 10 a0 e1                                      mov r1, r0
0064e6f0  03 00 a0 e1                                      mov r0, r3
0064e6f4  2a 01 f3 eb                                      bl #0x30eba4
0064e6f8  65 ff ff ea                                      b #0x64e494
0064e6fc  09 00 a0 e1                                      mov r0, sb
0064e700  dc 85 ff eb                                      bl #0x62fe78
0064e704  e5 ff f2 eb                                      bl #0x30e6a0
0064e708  00 10 a0 e1                                      mov r1, r0
0064e70c  08 00 a0 e1                                      mov r0, r8
0064e710  95 01 f3 eb                                      bl #0x30ed6c
0064e714  bf 14 a0 e3                                      mov r1, #0xbf000000
0064e718  00 30 a0 e1                                      mov r3, r0
0064e71c  08 00 a0 e1                                      mov r0, r8
0064e720  0c 30 8d e5                                      str r3, [sp, #0xc]
0064e724  90 01 f3 eb                                      bl #0x30ed6c
0064e728  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0064e72c  00 10 a0 e1                                      mov r1, r0
0064e730  03 00 a0 e1                                      mov r0, r3
0064e734  1a 01 f3 eb                                      bl #0x30eba4
0064e738  5e ff ff ea                                      b #0x64e4b8
; mapping-symbol data/literal pool
0064e73c  88 8b 3a 00                                      .byte 0x88, 0x8b, 0x3a, 0x00

; FUNCTION 0x0064e740, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::PSpinModel<glitch::ps::SParticle>
; alias: _ZTv0_n124_N6glitch2ps10PSpinModelINS0_9SParticleEE9initPSpinEPS2_S4_
; demangled: virtual thunk to glitch::ps::PSpinModel<glitch::ps::SParticle>::initPSpin(glitch::ps::SParticle*, glitch::ps::SParticle*)
; decoder-mode: arm
0064e740  00 30 90 e5                                      ldr r3, [r0]
0064e744  7c 30 13 e5                                      ldr r3, [r3, #-0x7c]
0064e748  03 00 80 e0                                      add r0, r0, r3
0064e74c  1d ff ff ea                                      b #0x64e3c8

; FUNCTION 0x0064f0e8, declared_size=68, range_size=68, mode=arm
; class-group: glitch::ps::PSpinModel<glitch::ps::SParticle>
; alias: _ZN6glitch2ps10PSpinModelINS0_9SParticleEED0Ev
; demangled: glitch::ps::PSpinModel<glitch::ps::SParticle>::~PSpinModel()
; decoder-mode: arm
0064f0e8  34 20 9f e5                                      ldr r2, [pc, #0x34]
0064f0ec  34 30 9f e5                                      ldr r3, [pc, #0x34]
0064f0f0  10 40 2d e9                                      push {r4, lr}
0064f0f4  02 20 8f e0                                      add r2, pc, r2
0064f0f8  03 30 92 e7                                      ldr r3, [r2, r3]
0064f0fc  00 40 a0 e1                                      mov r4, r0
0064f100  0c 20 83 e2                                      add r2, r3, #0xc
0064f104  b8 30 83 e2                                      add r3, r3, #0xb8
0064f108  28 20 80 e4                                      str r2, [r0], #0x28
0064f10c  28 30 84 e5                                      str r3, [r4, #0x28]
0064f110  60 f8 ff eb                                      bl #0x64d298
0064f114  04 00 a0 e1                                      mov r0, r4
0064f118  64 fc f2 eb                                      bl #0x30e2b0
0064f11c  04 00 a0 e1                                      mov r0, r4
0064f120  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0064f124  9c 59 34 00 a0 4a 00 00                          .byte 0x9c, 0x59, 0x34, 0x00, 0xa0, 0x4a, 0x00, 0x00

; FUNCTION 0x0064f12c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::PSpinModel<glitch::ps::SParticle>
; alias: _ZTv0_n12_N6glitch2ps10PSpinModelINS0_9SParticleEED0Ev
; demangled: virtual thunk to glitch::ps::PSpinModel<glitch::ps::SParticle>::~PSpinModel()
; decoder-mode: arm
0064f12c  00 30 90 e5                                      ldr r3, [r0]
0064f130  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0064f134  03 00 80 e0                                      add r0, r0, r3
0064f138  ea ff ff ea                                      b #0x64f0e8

; FUNCTION 0x00654218, declared_size=480, range_size=480, mode=arm
; class-group: glitch::ps::PSpinModel<glitch::ps::SParticle>
; alias: _ZN6glitch2ps10PSpinModelINS0_9SParticleEEC2Ev
; demangled: glitch::ps::PSpinModel<glitch::ps::SParticle>::PSpinModel()
; decoder-mode: arm
00654218  30 40 2d e9                                      push {r4, r5, lr}
0065421c  00 30 91 e5                                      ldr r3, [r1]
00654220  00 20 a0 e3                                      mov r2, #0
00654224  74 d0 4d e2                                      sub sp, sp, #0x74
00654228  00 30 80 e5                                      str r3, [r0]
0065422c  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00654230  04 10 91 e5                                      ldr r1, [r1, #4]
00654234  00 40 a0 e1                                      mov r4, r0
00654238  03 10 80 e7                                      str r1, [r0, r3]
0065423c  00 30 90 e5                                      ldr r3, [r0]
00654240  1c 20 80 e5                                      str r2, [r0, #0x1c]
00654244  14 20 80 e5                                      str r2, [r0, #0x14]
00654248  18 20 80 e5                                      str r2, [r0, #0x18]
0065424c  0c 50 13 e5                                      ldr r5, [r3, #-0xc]
00654250  84 11 9f e5                                      ldr r1, [pc, #0x184]
00654254  05 50 80 e0                                      add r5, r0, r5
00654258  01 10 8f e0                                      add r1, pc, r1
0065425c  05 00 a0 e1                                      mov r0, r5
00654260  95 e3 ff eb                                      bl #0x64d0bc
00654264  40 20 8d e2                                      add r2, sp, #0x40
00654268  04 30 84 e2                                      add r3, r4, #4
0065426c  40 00 8d e5                                      str r0, [sp, #0x40]
00654270  30 10 85 e2                                      add r1, r5, #0x30
00654274  48 00 8d e2                                      add r0, sp, #0x48
00654278  44 30 8d e5                                      str r3, [sp, #0x44]
0065427c  9a 99 ff eb                                      bl #0x63a8ec
00654280  00 30 94 e5                                      ldr r3, [r4]
00654284  54 11 9f e5                                      ldr r1, [pc, #0x154]
00654288  0c 50 13 e5                                      ldr r5, [r3, #-0xc]
0065428c  01 10 8f e0                                      add r1, pc, r1
00654290  05 50 84 e0                                      add r5, r4, r5
00654294  05 00 a0 e1                                      mov r0, r5
00654298  87 e3 ff eb                                      bl #0x64d0bc
0065429c  30 20 8d e2                                      add r2, sp, #0x30
006542a0  08 30 84 e2                                      add r3, r4, #8
006542a4  30 00 8d e5                                      str r0, [sp, #0x30]
006542a8  30 10 85 e2                                      add r1, r5, #0x30
006542ac  38 00 8d e2                                      add r0, sp, #0x38
006542b0  34 30 8d e5                                      str r3, [sp, #0x34]
006542b4  8c 99 ff eb                                      bl #0x63a8ec
006542b8  00 30 94 e5                                      ldr r3, [r4]
006542bc  20 11 9f e5                                      ldr r1, [pc, #0x120]
006542c0  0c 50 13 e5                                      ldr r5, [r3, #-0xc]
006542c4  01 10 8f e0                                      add r1, pc, r1
006542c8  05 50 84 e0                                      add r5, r4, r5
006542cc  05 00 a0 e1                                      mov r0, r5
006542d0  79 e3 ff eb                                      bl #0x64d0bc
006542d4  20 20 8d e2                                      add r2, sp, #0x20
006542d8  0c 30 84 e2                                      add r3, r4, #0xc
006542dc  20 00 8d e5                                      str r0, [sp, #0x20]
006542e0  30 10 85 e2                                      add r1, r5, #0x30
006542e4  28 00 8d e2                                      add r0, sp, #0x28
006542e8  24 30 8d e5                                      str r3, [sp, #0x24]
006542ec  7e 99 ff eb                                      bl #0x63a8ec
006542f0  00 30 94 e5                                      ldr r3, [r4]
006542f4  ec 10 9f e5                                      ldr r1, [pc, #0xec]
006542f8  0c 50 13 e5                                      ldr r5, [r3, #-0xc]
006542fc  01 10 8f e0                                      add r1, pc, r1
00654300  05 50 84 e0                                      add r5, r4, r5
00654304  05 00 a0 e1                                      mov r0, r5
00654308  6b e3 ff eb                                      bl #0x64d0bc
0065430c  10 20 8d e2                                      add r2, sp, #0x10
00654310  10 30 84 e2                                      add r3, r4, #0x10
00654314  10 00 8d e5                                      str r0, [sp, #0x10]
00654318  30 10 85 e2                                      add r1, r5, #0x30
0065431c  18 00 8d e2                                      add r0, sp, #0x18
00654320  14 30 8d e5                                      str r3, [sp, #0x14]
00654324  70 99 ff eb                                      bl #0x63a8ec
00654328  00 30 94 e5                                      ldr r3, [r4]
0065432c  b8 10 9f e5                                      ldr r1, [pc, #0xb8]
00654330  0c 50 13 e5                                      ldr r5, [r3, #-0xc]
00654334  01 10 8f e0                                      add r1, pc, r1
00654338  05 50 84 e0                                      add r5, r4, r5
0065433c  05 00 a0 e1                                      mov r0, r5
00654340  5d e3 ff eb                                      bl #0x64d0bc
00654344  60 20 8d e2                                      add r2, sp, #0x60
00654348  14 30 84 e2                                      add r3, r4, #0x14
0065434c  60 00 8d e5                                      str r0, [sp, #0x60]
00654350  30 10 85 e2                                      add r1, r5, #0x30
00654354  68 00 8d e2                                      add r0, sp, #0x68
00654358  64 30 8d e5                                      str r3, [sp, #0x64]
0065435c  62 99 ff eb                                      bl #0x63a8ec
00654360  00 30 94 e5                                      ldr r3, [r4]
00654364  84 10 9f e5                                      ldr r1, [pc, #0x84]
00654368  0c 50 13 e5                                      ldr r5, [r3, #-0xc]
0065436c  01 10 8f e0                                      add r1, pc, r1
00654370  05 50 84 e0                                      add r5, r4, r5
00654374  05 00 a0 e1                                      mov r0, r5
00654378  4f e3 ff eb                                      bl #0x64d0bc
0065437c  0d 20 a0 e1                                      mov r2, sp
00654380  20 30 84 e2                                      add r3, r4, #0x20
00654384  00 00 8d e5                                      str r0, [sp]
00654388  30 10 85 e2                                      add r1, r5, #0x30
0065438c  08 00 8d e2                                      add r0, sp, #8
00654390  04 30 8d e5                                      str r3, [sp, #4]
00654394  54 99 ff eb                                      bl #0x63a8ec
00654398  00 30 94 e5                                      ldr r3, [r4]
0065439c  50 10 9f e5                                      ldr r1, [pc, #0x50]
006543a0  0c 50 13 e5                                      ldr r5, [r3, #-0xc]
006543a4  01 10 8f e0                                      add r1, pc, r1
006543a8  05 50 84 e0                                      add r5, r4, r5
006543ac  05 00 a0 e1                                      mov r0, r5
006543b0  41 e3 ff eb                                      bl #0x64d0bc
006543b4  24 30 84 e2                                      add r3, r4, #0x24
006543b8  50 00 8d e5                                      str r0, [sp, #0x50]
006543bc  30 10 85 e2                                      add r1, r5, #0x30
006543c0  58 00 8d e2                                      add r0, sp, #0x58
006543c4  50 20 8d e2                                      add r2, sp, #0x50
006543c8  54 30 8d e5                                      str r3, [sp, #0x54]
006543cc  46 99 ff eb                                      bl #0x63a8ec
006543d0  04 00 a0 e1                                      mov r0, r4
006543d4  74 d0 8d e2                                      add sp, sp, #0x74
006543d8  30 80 bd e8                                      pop {r4, r5, pc}
; mapping-symbol data/literal pool
006543dc  68 10 29 00 44 10 29 00 1c 10 29 00 f4 0f 29 00  .byte 0x68, 0x10, 0x29, 0x00, 0x44, 0x10, 0x29, 0x00, 0x1c, 0x10, 0x29, 0x00, 0xf4, 0x0f, 0x29, 0x00
006543ec  d4 0f 29 00 ac 0f 29 00 8c 0f 29 00              .byte 0xd4, 0x0f, 0x29, 0x00, 0xac, 0x0f, 0x29, 0x00, 0x8c, 0x0f, 0x29, 0x00

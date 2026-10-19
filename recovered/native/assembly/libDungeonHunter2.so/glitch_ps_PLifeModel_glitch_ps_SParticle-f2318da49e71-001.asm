; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0064c2e8, declared_size=4, range_size=4, mode=arm
; class-group: glitch::ps::PLifeModel<glitch::ps::SParticle>
; alias: _ZN6glitch2ps10PLifeModelINS0_9SParticleEE14initPLifeModelEv
; demangled: glitch::ps::PLifeModel<glitch::ps::SParticle>::initPLifeModel()
; decoder-mode: arm
0064c2e8  1e ff 2f e1                                      bx lr

; FUNCTION 0x0064c2ec, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::PLifeModel<glitch::ps::SParticle>
; alias: _ZTv0_n132_N6glitch2ps10PLifeModelINS0_9SParticleEE14initPLifeModelEv
; demangled: virtual thunk to glitch::ps::PLifeModel<glitch::ps::SParticle>::initPLifeModel()
; decoder-mode: arm
0064c2ec  00 30 90 e5                                      ldr r3, [r0]
0064c2f0  84 30 13 e5                                      ldr r3, [r3, #-0x84]
0064c2f4  03 00 80 e0                                      add r0, r0, r3
0064c2f8  fa ff ff ea                                      b #0x64c2e8

; FUNCTION 0x0064c2fc, declared_size=232, range_size=232, mode=arm
; class-group: glitch::ps::PLifeModel<glitch::ps::SParticle>
; alias: _ZN6glitch2ps10PLifeModelINS0_9SParticleEE9initPLifeEPS2_S4_
; demangled: glitch::ps::PLifeModel<glitch::ps::SParticle>::initPLife(glitch::ps::SParticle*, glitch::ps::SParticle*)
; decoder-mode: arm
0064c2fc  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0064c300  00 30 90 e5                                      ldr r3, [r0]
0064c304  00 40 a0 e1                                      mov r4, r0
0064c308  01 50 a0 e1                                      mov r5, r1
0064c30c  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0064c310  02 80 a0 e1                                      mov r8, r2
0064c314  03 00 80 e0                                      add r0, r0, r3
0064c318  03 30 94 e7                                      ldr r3, [r4, r3]
0064c31c  0f e0 a0 e1                                      mov lr, pc
0064c320  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0064c324  08 00 55 e1                                      cmp r5, r8
0064c328  00 a0 a0 e1                                      mov sl, r0
0064c32c  2b 00 00 0a                                      beq #0x64c3e0
0064c330  00 90 a0 e3                                      mov sb, #0
0064c334  0a 00 a0 e1                                      mov r0, sl
0064c338  ce 8e ff eb                                      bl #0x62fe78
0064c33c  08 60 94 e5                                      ldr r6, [r4, #8]
0064c340  3c 90 85 e5                                      str sb, [r5, #0x3c]
0064c344  d5 08 f3 eb                                      bl #0x30e6a0
0064c348  00 10 a0 e1                                      mov r1, r0
0064c34c  06 00 a0 e1                                      mov r0, r6
0064c350  85 0a f3 eb                                      bl #0x30ed6c
0064c354  bf 14 a0 e3                                      mov r1, #0xbf000000
0064c358  00 70 a0 e1                                      mov r7, r0
0064c35c  06 00 a0 e1                                      mov r0, r6
0064c360  81 0a f3 eb                                      bl #0x30ed6c
0064c364  00 10 a0 e1                                      mov r1, r0
0064c368  07 00 a0 e1                                      mov r0, r7
0064c36c  0c 0a f3 eb                                      bl #0x30eba4
0064c370  04 10 94 e5                                      ldr r1, [r4, #4]
0064c374  0a 0a f3 eb                                      bl #0x30eba4
0064c378  40 00 85 e5                                      str r0, [r5, #0x40]
0064c37c  00 30 94 e5                                      ldr r3, [r4]
0064c380  00 70 a0 e1                                      mov r7, r0
0064c384  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0064c388  03 30 84 e0                                      add r3, r4, r3
0064c38c  50 60 93 e5                                      ldr r6, [r3, #0x50]
0064c390  06 10 a0 e1                                      mov r1, r6
0064c394  dc 08 f3 eb                                      bl #0x30e70c
0064c398  01 11 a0 e3                                      mov r1, #0x40000000
0064c39c  00 00 50 e3                                      cmp r0, #0
0064c3a0  02 15 81 e2                                      add r1, r1, #0x800000
0064c3a4  07 00 a0 e1                                      mov r0, r7
0064c3a8  09 00 00 0a                                      beq #0x64c3d4
0064c3ac  6e 0a f3 eb                                      bl #0x30ed6c
0064c3b0  00 10 a0 e1                                      mov r1, r0
0064c3b4  06 00 a0 e1                                      mov r0, r6
0064c3b8  d3 08 f3 eb                                      bl #0x30e70c
0064c3bc  00 00 50 e3                                      cmp r0, #0
0064c3c0  ff 15 a0 e3                                      mov r1, #0x3fc00000
0064c3c4  06 00 a0 e1                                      mov r0, r6
0064c3c8  01 00 00 0a                                      beq #0x64c3d4
0064c3cc  66 0a f3 eb                                      bl #0x30ed6c
0064c3d0  40 00 85 e5                                      str r0, [r5, #0x40]
0064c3d4  64 50 85 e2                                      add r5, r5, #0x64
0064c3d8  05 00 58 e1                                      cmp r8, r5
0064c3dc  d4 ff ff 1a                                      bne #0x64c334
0064c3e0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x0064c3e4, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::PLifeModel<glitch::ps::SParticle>
; alias: _ZTv0_n136_N6glitch2ps10PLifeModelINS0_9SParticleEE9initPLifeEPS2_S4_
; demangled: virtual thunk to glitch::ps::PLifeModel<glitch::ps::SParticle>::initPLife(glitch::ps::SParticle*, glitch::ps::SParticle*)
; decoder-mode: arm
0064c3e4  00 30 90 e5                                      ldr r3, [r0]
0064c3e8  88 30 13 e5                                      ldr r3, [r3, #-0x88]
0064c3ec  03 00 80 e0                                      add r0, r0, r3
0064c3f0  c1 ff ff ea                                      b #0x64c2fc

; FUNCTION 0x0064c3f4, declared_size=68, range_size=68, mode=arm
; class-group: glitch::ps::PLifeModel<glitch::ps::SParticle>
; alias: _ZN6glitch2ps10PLifeModelINS0_9SParticleEE10applyPLifeEPS2_S4_
; demangled: glitch::ps::PLifeModel<glitch::ps::SParticle>::applyPLife(glitch::ps::SParticle*, glitch::ps::SParticle*)
; decoder-mode: arm
0064c3f4  02 00 51 e1                                      cmp r1, r2
0064c3f8  70 40 2d e9                                      push {r4, r5, r6, lr}
0064c3fc  01 40 a0 e1                                      mov r4, r1
0064c400  02 60 a0 e1                                      mov r6, r2
0064c404  00 50 a0 e1                                      mov r5, r0
0064c408  09 00 00 0a                                      beq #0x64c434
0064c40c  00 30 95 e5                                      ldr r3, [r5]
0064c410  3c 00 94 e5                                      ldr r0, [r4, #0x3c]
0064c414  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0064c418  03 30 85 e0                                      add r3, r5, r3
0064c41c  50 10 93 e5                                      ldr r1, [r3, #0x50]
0064c420  df 09 f3 eb                                      bl #0x30eba4
0064c424  3c 00 84 e5                                      str r0, [r4, #0x3c]
0064c428  64 40 84 e2                                      add r4, r4, #0x64
0064c42c  04 00 56 e1                                      cmp r6, r4
0064c430  f5 ff ff 1a                                      bne #0x64c40c
0064c434  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0064c438, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::PLifeModel<glitch::ps::SParticle>
; alias: _ZTv0_n140_N6glitch2ps10PLifeModelINS0_9SParticleEE10applyPLifeEPS2_S4_
; demangled: virtual thunk to glitch::ps::PLifeModel<glitch::ps::SParticle>::applyPLife(glitch::ps::SParticle*, glitch::ps::SParticle*)
; decoder-mode: arm
0064c438  00 30 90 e5                                      ldr r3, [r0]
0064c43c  8c 30 13 e5                                      ldr r3, [r3, #-0x8c]
0064c440  03 00 80 e0                                      add r0, r0, r3
0064c444  ea ff ff ea                                      b #0x64c3f4

; FUNCTION 0x0064d30c, declared_size=60, range_size=60, mode=arm
; class-group: glitch::ps::PLifeModel<glitch::ps::SParticle>
; alias: _ZN6glitch2ps10PLifeModelINS0_9SParticleEED1Ev
; demangled: glitch::ps::PLifeModel<glitch::ps::SParticle>::~PLifeModel()
; decoder-mode: arm
0064d30c  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
0064d310  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
0064d314  10 40 2d e9                                      push {r4, lr}
0064d318  02 20 8f e0                                      add r2, pc, r2
0064d31c  03 30 92 e7                                      ldr r3, [r2, r3]
0064d320  00 40 a0 e1                                      mov r4, r0
0064d324  0c 20 83 e2                                      add r2, r3, #0xc
0064d328  b8 30 83 e2                                      add r3, r3, #0xb8
0064d32c  0c 20 80 e4                                      str r2, [r0], #0xc
0064d330  0c 30 84 e5                                      str r3, [r4, #0xc]
0064d334  d7 ff ff eb                                      bl #0x64d298
0064d338  04 00 a0 e1                                      mov r0, r4
0064d33c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0064d340  78 77 34 00 80 3d 00 00                          .byte 0x78, 0x77, 0x34, 0x00, 0x80, 0x3d, 0x00, 0x00

; FUNCTION 0x0064d348, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::PLifeModel<glitch::ps::SParticle>
; alias: _ZTv0_n12_N6glitch2ps10PLifeModelINS0_9SParticleEED1Ev
; demangled: virtual thunk to glitch::ps::PLifeModel<glitch::ps::SParticle>::~PLifeModel()
; decoder-mode: arm
0064d348  00 30 90 e5                                      ldr r3, [r0]
0064d34c  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0064d350  03 00 80 e0                                      add r0, r0, r3
0064d354  ec ff ff ea                                      b #0x64d30c

; FUNCTION 0x0064f13c, declared_size=68, range_size=68, mode=arm
; class-group: glitch::ps::PLifeModel<glitch::ps::SParticle>
; alias: _ZN6glitch2ps10PLifeModelINS0_9SParticleEED0Ev
; demangled: glitch::ps::PLifeModel<glitch::ps::SParticle>::~PLifeModel()
; decoder-mode: arm
0064f13c  34 20 9f e5                                      ldr r2, [pc, #0x34]
0064f140  34 30 9f e5                                      ldr r3, [pc, #0x34]
0064f144  10 40 2d e9                                      push {r4, lr}
0064f148  02 20 8f e0                                      add r2, pc, r2
0064f14c  03 30 92 e7                                      ldr r3, [r2, r3]
0064f150  00 40 a0 e1                                      mov r4, r0
0064f154  0c 20 83 e2                                      add r2, r3, #0xc
0064f158  b8 30 83 e2                                      add r3, r3, #0xb8
0064f15c  0c 20 80 e4                                      str r2, [r0], #0xc
0064f160  0c 30 84 e5                                      str r3, [r4, #0xc]
0064f164  4b f8 ff eb                                      bl #0x64d298
0064f168  04 00 a0 e1                                      mov r0, r4
0064f16c  4f fc f2 eb                                      bl #0x30e2b0
0064f170  04 00 a0 e1                                      mov r0, r4
0064f174  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0064f178  48 59 34 00 80 3d 00 00                          .byte 0x48, 0x59, 0x34, 0x00, 0x80, 0x3d, 0x00, 0x00

; FUNCTION 0x0064f180, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::PLifeModel<glitch::ps::SParticle>
; alias: _ZTv0_n12_N6glitch2ps10PLifeModelINS0_9SParticleEED0Ev
; demangled: virtual thunk to glitch::ps::PLifeModel<glitch::ps::SParticle>::~PLifeModel()
; decoder-mode: arm
0064f180  00 30 90 e5                                      ldr r3, [r0]
0064f184  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0064f188  03 00 80 e0                                      add r0, r0, r3
0064f18c  ea ff ff ea                                      b #0x64f13c

; FUNCTION 0x0065452c, declared_size=164, range_size=164, mode=arm
; class-group: glitch::ps::PLifeModel<glitch::ps::SParticle>
; alias: _ZN6glitch2ps10PLifeModelINS0_9SParticleEEC2Ev
; demangled: glitch::ps::PLifeModel<glitch::ps::SParticle>::PLifeModel()
; decoder-mode: arm
0065452c  30 40 2d e9                                      push {r4, r5, lr}
00654530  00 30 91 e5                                      ldr r3, [r1]
00654534  24 d0 4d e2                                      sub sp, sp, #0x24
00654538  00 40 a0 e1                                      mov r4, r0
0065453c  00 30 80 e5                                      str r3, [r0]
00654540  04 20 91 e5                                      ldr r2, [r1, #4]
00654544  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00654548  78 10 9f e5                                      ldr r1, [pc, #0x78]
0065454c  03 20 80 e7                                      str r2, [r0, r3]
00654550  00 30 90 e5                                      ldr r3, [r0]
00654554  01 10 8f e0                                      add r1, pc, r1
00654558  0c 50 13 e5                                      ldr r5, [r3, #-0xc]
0065455c  05 50 80 e0                                      add r5, r0, r5
00654560  05 00 a0 e1                                      mov r0, r5
00654564  d4 e2 ff eb                                      bl #0x64d0bc
00654568  10 20 8d e2                                      add r2, sp, #0x10
0065456c  04 30 84 e2                                      add r3, r4, #4
00654570  10 00 8d e5                                      str r0, [sp, #0x10]
00654574  30 10 85 e2                                      add r1, r5, #0x30
00654578  18 00 8d e2                                      add r0, sp, #0x18
0065457c  14 30 8d e5                                      str r3, [sp, #0x14]
00654580  d9 98 ff eb                                      bl #0x63a8ec
00654584  00 30 94 e5                                      ldr r3, [r4]
00654588  3c 10 9f e5                                      ldr r1, [pc, #0x3c]
0065458c  0c 50 13 e5                                      ldr r5, [r3, #-0xc]
00654590  01 10 8f e0                                      add r1, pc, r1
00654594  05 50 84 e0                                      add r5, r4, r5
00654598  05 00 a0 e1                                      mov r0, r5
0065459c  c6 e2 ff eb                                      bl #0x64d0bc
006545a0  08 30 84 e2                                      add r3, r4, #8
006545a4  00 00 8d e5                                      str r0, [sp]
006545a8  30 10 85 e2                                      add r1, r5, #0x30
006545ac  08 00 8d e2                                      add r0, sp, #8
006545b0  0d 20 a0 e1                                      mov r2, sp
006545b4  04 30 8d e5                                      str r3, [sp, #4]
006545b8  cb 98 ff eb                                      bl #0x63a8ec
006545bc  04 00 a0 e1                                      mov r0, r4
006545c0  24 d0 8d e2                                      add sp, sp, #0x24
006545c4  30 80 bd e8                                      pop {r4, r5, pc}
; mapping-symbol data/literal pool
006545c8  4c 0e 29 00 18 0e 29 00                          .byte 0x4c, 0x0e, 0x29, 0x00, 0x18, 0x0e, 0x29, 0x00

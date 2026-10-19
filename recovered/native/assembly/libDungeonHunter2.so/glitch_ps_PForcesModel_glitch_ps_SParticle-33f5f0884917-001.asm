; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0064c234, declared_size=4, range_size=4, mode=arm
; class-group: glitch::ps::PForcesModel<glitch::ps::SParticle>
; alias: _ZN6glitch2ps12PForcesModelINS0_9SParticleEE11initPForcesEPS2_S4_
; demangled: glitch::ps::PForcesModel<glitch::ps::SParticle>::initPForces(glitch::ps::SParticle*, glitch::ps::SParticle*)
; decoder-mode: arm
0064c234  1e ff 2f e1                                      bx lr

; FUNCTION 0x0064c238, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::PForcesModel<glitch::ps::SParticle>
; alias: _ZTv0_n112_N6glitch2ps12PForcesModelINS0_9SParticleEE11initPForcesEPS2_S4_
; demangled: virtual thunk to glitch::ps::PForcesModel<glitch::ps::SParticle>::initPForces(glitch::ps::SParticle*, glitch::ps::SParticle*)
; decoder-mode: arm
0064c238  00 30 90 e5                                      ldr r3, [r0]
0064c23c  70 30 13 e5                                      ldr r3, [r3, #-0x70]
0064c240  03 00 80 e0                                      add r0, r0, r3
0064c244  fa ff ff ea                                      b #0x64c234

; FUNCTION 0x0064d64c, declared_size=136, range_size=136, mode=arm
; class-group: glitch::ps::PForcesModel<glitch::ps::SParticle>
; alias: _ZN6glitch2ps12PForcesModelINS0_9SParticleEED1Ev
; demangled: glitch::ps::PForcesModel<glitch::ps::SParticle>::~PForcesModel()
; decoder-mode: arm
0064d64c  78 20 9f e5                                      ldr r2, [pc, #0x78]
0064d650  78 30 9f e5                                      ldr r3, [pc, #0x78]
0064d654  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0064d658  02 20 8f e0                                      add r2, pc, r2
0064d65c  03 30 92 e7                                      ldr r3, [r2, r3]
0064d660  00 70 a0 e1                                      mov r7, r0
0064d664  00 60 a0 e1                                      mov r6, r0
0064d668  0c 20 83 e2                                      add r2, r3, #0xc
0064d66c  14 20 87 e4                                      str r2, [r7], #0x14
0064d670  30 00 90 e9                                      ldmib r0, {r4, r5}
0064d674  c4 30 83 e2                                      add r3, r3, #0xc4
0064d678  14 30 80 e5                                      str r3, [r0, #0x14]
0064d67c  05 00 54 e1                                      cmp r4, r5
0064d680  09 00 00 0a                                      beq #0x64d6ac
0064d684  00 30 94 e5                                      ldr r3, [r4]
0064d688  04 40 84 e2                                      add r4, r4, #4
0064d68c  00 00 53 e3                                      cmp r3, #0
0064d690  03 00 a0 e1                                      mov r0, r3
0064d694  02 00 00 0a                                      beq #0x64d6a4
0064d698  00 30 93 e5                                      ldr r3, [r3]
0064d69c  0f e0 a0 e1                                      mov lr, pc
0064d6a0  04 f0 93 e5                                      ldr pc, [r3, #4]
0064d6a4  04 00 55 e1                                      cmp r5, r4
0064d6a8  f5 ff ff 1a                                      bne #0x64d684
0064d6ac  04 00 96 e5                                      ldr r0, [r6, #4]
0064d6b0  00 00 50 e3                                      cmp r0, #0
0064d6b4  00 00 00 0a                                      beq #0x64d6bc
0064d6b8  64 0b f3 eb                                      bl #0x310450
0064d6bc  07 00 a0 e1                                      mov r0, r7
0064d6c0  f4 fe ff eb                                      bl #0x64d298
0064d6c4  06 00 a0 e1                                      mov r0, r6
0064d6c8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0064d6cc  38 74 34 00 1c 16 00 00                          .byte 0x38, 0x74, 0x34, 0x00, 0x1c, 0x16, 0x00, 0x00

; FUNCTION 0x0064d6d4, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::PForcesModel<glitch::ps::SParticle>
; alias: _ZTv0_n12_N6glitch2ps12PForcesModelINS0_9SParticleEED1Ev
; demangled: virtual thunk to glitch::ps::PForcesModel<glitch::ps::SParticle>::~PForcesModel()
; decoder-mode: arm
0064d6d4  00 30 90 e5                                      ldr r3, [r0]
0064d6d8  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0064d6dc  03 00 80 e0                                      add r0, r0, r3
0064d6e0  d9 ff ff ea                                      b #0x64d64c

; FUNCTION 0x0064d6e4, declared_size=28, range_size=28, mode=arm
; class-group: glitch::ps::PForcesModel<glitch::ps::SParticle>
; alias: _ZN6glitch2ps12PForcesModelINS0_9SParticleEED0Ev
; demangled: glitch::ps::PForcesModel<glitch::ps::SParticle>::~PForcesModel()
; decoder-mode: arm
0064d6e4  10 40 2d e9                                      push {r4, lr}
0064d6e8  00 40 a0 e1                                      mov r4, r0
0064d6ec  d6 ff ff eb                                      bl #0x64d64c
0064d6f0  04 00 a0 e1                                      mov r0, r4
0064d6f4  ed 02 f3 eb                                      bl #0x30e2b0
0064d6f8  04 00 a0 e1                                      mov r0, r4
0064d6fc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0064d700, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::PForcesModel<glitch::ps::SParticle>
; alias: _ZTv0_n12_N6glitch2ps12PForcesModelINS0_9SParticleEED0Ev
; demangled: virtual thunk to glitch::ps::PForcesModel<glitch::ps::SParticle>::~PForcesModel()
; decoder-mode: arm
0064d700  00 30 90 e5                                      ldr r3, [r0]
0064d704  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0064d708  03 00 80 e0                                      add r0, r0, r3
0064d70c  f4 ff ff ea                                      b #0x64d6e4

; FUNCTION 0x0064d710, declared_size=104, range_size=104, mode=arm
; class-group: glitch::ps::PForcesModel<glitch::ps::SParticle>
; alias: _ZN6glitch2ps12PForcesModelINS0_9SParticleEED2Ev
; demangled: glitch::ps::PForcesModel<glitch::ps::SParticle>::~PForcesModel()
; decoder-mode: arm
0064d710  70 40 2d e9                                      push {r4, r5, r6, lr}
0064d714  00 30 91 e5                                      ldr r3, [r1]
0064d718  00 60 a0 e1                                      mov r6, r0
0064d71c  00 30 80 e5                                      str r3, [r0]
0064d720  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0064d724  04 20 91 e5                                      ldr r2, [r1, #4]
0064d728  03 20 80 e7                                      str r2, [r0, r3]
0064d72c  30 00 90 e9                                      ldmib r0, {r4, r5}
0064d730  05 00 54 e1                                      cmp r4, r5
0064d734  09 00 00 0a                                      beq #0x64d760
0064d738  00 30 94 e5                                      ldr r3, [r4]
0064d73c  04 40 84 e2                                      add r4, r4, #4
0064d740  00 00 53 e3                                      cmp r3, #0
0064d744  03 00 a0 e1                                      mov r0, r3
0064d748  02 00 00 0a                                      beq #0x64d758
0064d74c  00 30 93 e5                                      ldr r3, [r3]
0064d750  0f e0 a0 e1                                      mov lr, pc
0064d754  04 f0 93 e5                                      ldr pc, [r3, #4]
0064d758  04 00 55 e1                                      cmp r5, r4
0064d75c  f5 ff ff 1a                                      bne #0x64d738
0064d760  04 00 96 e5                                      ldr r0, [r6, #4]
0064d764  00 00 50 e3                                      cmp r0, #0
0064d768  00 00 00 0a                                      beq #0x64d770
0064d76c  37 0b f3 eb                                      bl #0x310450
0064d770  06 00 a0 e1                                      mov r0, r6
0064d774  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0064d948, declared_size=124, range_size=124, mode=arm
; class-group: glitch::ps::PForcesModel<glitch::ps::SParticle>
; alias: _ZN6glitch2ps12PForcesModelINS0_9SParticleEE12applyPForcesEPS2_S4_
; demangled: glitch::ps::PForcesModel<glitch::ps::SParticle>::applyPForces(glitch::ps::SParticle*, glitch::ps::SParticle*)
; decoder-mode: arm
0064d948  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0064d94c  10 30 d0 e5                                      ldrb r3, [r0, #0x10]
0064d950  08 d0 4d e2                                      sub sp, sp, #8
0064d954  00 50 a0 e1                                      mov r5, r0
0064d958  00 00 53 e3                                      cmp r3, #0
0064d95c  01 80 a0 e1                                      mov r8, r1
0064d960  02 70 a0 e1                                      mov r7, r2
0064d964  05 00 00 0a                                      beq #0x64d980
0064d968  04 00 90 e5                                      ldr r0, [r0, #4]
0064d96c  08 10 95 e5                                      ldr r1, [r5, #8]
0064d970  04 20 8d e2                                      add r2, sp, #4
0064d974  d6 ff ff eb                                      bl #0x64d8d4
0064d978  00 30 a0 e3                                      mov r3, #0
0064d97c  10 30 c5 e5                                      strb r3, [r5, #0x10]
0064d980  50 00 95 e9                                      ldmib r5, {r4, r6}
0064d984  06 00 54 e1                                      cmp r4, r6
0064d988  0b 00 00 0a                                      beq #0x64d9bc
0064d98c  00 30 95 e5                                      ldr r3, [r5]
0064d990  04 20 94 e4                                      ldr r2, [r4], #4
0064d994  08 10 a0 e1                                      mov r1, r8
0064d998  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0064d99c  02 00 a0 e1                                      mov r0, r2
0064d9a0  00 c0 92 e5                                      ldr ip, [r2]
0064d9a4  03 30 85 e0                                      add r3, r5, r3
0064d9a8  07 20 a0 e1                                      mov r2, r7
0064d9ac  0f e0 a0 e1                                      mov lr, pc
0064d9b0  08 f0 9c e5                                      ldr pc, [ip, #8]
0064d9b4  06 00 54 e1                                      cmp r4, r6
0064d9b8  f3 ff ff 1a                                      bne #0x64d98c
0064d9bc  08 d0 8d e2                                      add sp, sp, #8
0064d9c0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0064d9c4, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::PForcesModel<glitch::ps::SParticle>
; alias: _ZTv0_n116_N6glitch2ps12PForcesModelINS0_9SParticleEE12applyPForcesEPS2_S4_
; demangled: virtual thunk to glitch::ps::PForcesModel<glitch::ps::SParticle>::applyPForces(glitch::ps::SParticle*, glitch::ps::SParticle*)
; decoder-mode: arm
0064d9c4  00 30 90 e5                                      ldr r3, [r0]
0064d9c8  74 30 13 e5                                      ldr r3, [r3, #-0x74]
0064d9cc  03 00 80 e0                                      add r0, r0, r3
0064d9d0  dc ff ff ea                                      b #0x64d948

; FUNCTION 0x0064d9d4, declared_size=56, range_size=56, mode=arm
; class-group: glitch::ps::PForcesModel<glitch::ps::SParticle>
; alias: _ZN6glitch2ps12PForcesModelINS0_9SParticleEE16initPForcesModelEv
; demangled: glitch::ps::PForcesModel<glitch::ps::SParticle>::initPForcesModel()
; decoder-mode: arm
0064d9d4  10 40 2d e9                                      push {r4, lr}
0064d9d8  10 30 d0 e5                                      ldrb r3, [r0, #0x10]
0064d9dc  08 d0 4d e2                                      sub sp, sp, #8
0064d9e0  00 40 a0 e1                                      mov r4, r0
0064d9e4  00 00 53 e3                                      cmp r3, #0
0064d9e8  05 00 00 0a                                      beq #0x64da04
0064d9ec  04 00 90 e5                                      ldr r0, [r0, #4]
0064d9f0  08 10 94 e5                                      ldr r1, [r4, #8]
0064d9f4  04 20 8d e2                                      add r2, sp, #4
0064d9f8  b5 ff ff eb                                      bl #0x64d8d4
0064d9fc  00 30 a0 e3                                      mov r3, #0
0064da00  10 30 c4 e5                                      strb r3, [r4, #0x10]
0064da04  08 d0 8d e2                                      add sp, sp, #8
0064da08  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0064da0c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::PForcesModel<glitch::ps::SParticle>
; alias: _ZTv0_n108_N6glitch2ps12PForcesModelINS0_9SParticleEE16initPForcesModelEv
; demangled: virtual thunk to glitch::ps::PForcesModel<glitch::ps::SParticle>::initPForcesModel()
; decoder-mode: arm
0064da0c  00 30 90 e5                                      ldr r3, [r0]
0064da10  6c 30 13 e5                                      ldr r3, [r3, #-0x6c]
0064da14  03 00 80 e0                                      add r0, r0, r3
0064da18  ed ff ff ea                                      b #0x64d9d4

; FUNCTION 0x0064f190, declared_size=216, range_size=216, mode=arm
; class-group: glitch::ps::PForcesModel<glitch::ps::SParticle>
; alias: _ZN6glitch2ps12PForcesModelINS0_9SParticleEE9addPForceEPNS0_6PForceIS2_EE
; demangled: glitch::ps::PForcesModel<glitch::ps::SParticle>::addPForce(glitch::ps::PForce<glitch::ps::SParticle>*)
; decoder-mode: arm
0064f190  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0064f194  08 80 90 e5                                      ldr r8, [r0, #8]
0064f198  0c 30 90 e5                                      ldr r3, [r0, #0xc]
0064f19c  00 40 a0 e1                                      mov r4, r0
0064f1a0  01 50 a0 e1                                      mov r5, r1
0064f1a4  03 00 58 e1                                      cmp r8, r3
0064f1a8  09 00 00 0a                                      beq #0x64f1d4
0064f1ac  00 10 88 e5                                      str r1, [r8]
0064f1b0  08 80 90 e5                                      ldr r8, [r0, #8]
0064f1b4  01 20 a0 e3                                      mov r2, #1
0064f1b8  04 80 88 e2                                      add r8, r8, #4
0064f1bc  08 80 80 e5                                      str r8, [r0, #8]
0064f1c0  04 30 94 e5                                      ldr r3, [r4, #4]
0064f1c4  10 20 c4 e5                                      strb r2, [r4, #0x10]
0064f1c8  08 80 63 e0                                      rsb r8, r3, r8
0064f1cc  48 01 a0 e1                                      asr r0, r8, #2
0064f1d0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0064f1d4  04 30 90 e5                                      ldr r3, [r0, #4]
0064f1d8  08 30 63 e0                                      rsb r3, r3, r8
0064f1dc  43 31 a0 e1                                      asr r3, r3, #2
0064f1e0  01 00 53 e3                                      cmp r3, #1
0064f1e4  03 70 83 20                                      addhs r7, r3, r3
0064f1e8  01 70 83 32                                      addlo r7, r3, #1
0064f1ec  07 01 77 e3                                      cmn r7, #0xc0000001
0064f1f0  1a 00 00 8a                                      bhi #0x64f260
0064f1f4  07 00 53 e1                                      cmp r3, r7
0064f1f8  07 71 a0 91                                      lslls r7, r7, #2
0064f1fc  17 00 00 8a                                      bhi #0x64f260
0064f200  00 10 a0 e3                                      mov r1, #0
0064f204  07 00 a0 e1                                      mov r0, r7
0064f208  d6 04 f3 eb                                      bl #0x310568
0064f20c  04 10 94 e5                                      ldr r1, [r4, #4]
0064f210  00 60 a0 e1                                      mov r6, r0
0064f214  01 80 58 e0                                      subs r8, r8, r1
0064f218  00 80 a0 01                                      moveq r8, r0
0064f21c  02 00 00 0a                                      beq #0x64f22c
0064f220  08 20 a0 e1                                      mov r2, r8
0064f224  43 fb f2 eb                                      bl #0x30df38
0064f228  08 80 80 e0                                      add r8, r0, r8
0064f22c  04 50 88 e4                                      str r5, [r8], #4
0064f230  04 00 94 e5                                      ldr r0, [r4, #4]
0064f234  85 04 f3 eb                                      bl #0x310450
0064f238  04 60 84 e5                                      str r6, [r4, #4]
0064f23c  04 30 94 e5                                      ldr r3, [r4, #4]
0064f240  07 70 86 e0                                      add r7, r6, r7
0064f244  08 80 84 e5                                      str r8, [r4, #8]
0064f248  01 20 a0 e3                                      mov r2, #1
0064f24c  08 80 63 e0                                      rsb r8, r3, r8
0064f250  0c 70 84 e5                                      str r7, [r4, #0xc]
0064f254  10 20 c4 e5                                      strb r2, [r4, #0x10]
0064f258  48 01 a0 e1                                      asr r0, r8, #2
0064f25c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0064f260  03 70 e0 e3                                      mvn r7, #3
0064f264  e5 ff ff ea                                      b #0x64f200

; FUNCTION 0x0064f268, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::PForcesModel<glitch::ps::SParticle>
; alias: _ZTv0_n96_N6glitch2ps12PForcesModelINS0_9SParticleEE9addPForceEPNS0_6PForceIS2_EE
; demangled: virtual thunk to glitch::ps::PForcesModel<glitch::ps::SParticle>::addPForce(glitch::ps::PForce<glitch::ps::SParticle>*)
; decoder-mode: arm
0064f268  00 30 90 e5                                      ldr r3, [r0]
0064f26c  60 30 13 e5                                      ldr r3, [r3, #-0x60]
0064f270  03 00 80 e0                                      add r0, r0, r3
0064f274  c5 ff ff ea                                      b #0x64f190

; FUNCTION 0x0064f278, declared_size=144, range_size=144, mode=arm
; class-group: glitch::ps::PForcesModel<glitch::ps::SParticle>
; alias: _ZN6glitch2ps12PForcesModelINS0_9SParticleEE12removePForceEPNS0_6PForceIS2_EE
; demangled: glitch::ps::PForcesModel<glitch::ps::SParticle>::removePForce(glitch::ps::PForce<glitch::ps::SParticle>*)
; decoder-mode: arm
0064f278  30 40 2d e9                                      push {r4, r5, lr}
0064f27c  00 40 a0 e1                                      mov r4, r0
0064f280  0c d0 4d e2                                      sub sp, sp, #0xc
0064f284  01 20 a0 e1                                      mov r2, r1
0064f288  04 00 90 e5                                      ldr r0, [r0, #4]
0064f28c  08 10 94 e5                                      ldr r1, [r4, #8]
0064f290  04 30 8d e2                                      add r3, sp, #4
0064f294  9f f4 ff eb                                      bl #0x64c518
0064f298  00 50 a0 e1                                      mov r5, r0
0064f29c  08 00 94 e5                                      ldr r0, [r4, #8]
0064f2a0  00 00 55 e1                                      cmp r5, r0
0064f2a4  11 00 00 0a                                      beq #0x64f2f0
0064f2a8  00 30 95 e5                                      ldr r3, [r5]
0064f2ac  00 00 53 e3                                      cmp r3, #0
0064f2b0  04 00 00 0a                                      beq #0x64f2c8
0064f2b4  03 00 a0 e1                                      mov r0, r3
0064f2b8  00 30 93 e5                                      ldr r3, [r3]
0064f2bc  0f e0 a0 e1                                      mov lr, pc
0064f2c0  04 f0 93 e5                                      ldr pc, [r3, #4]
0064f2c4  08 00 94 e5                                      ldr r0, [r4, #8]
0064f2c8  04 10 85 e2                                      add r1, r5, #4
0064f2cc  00 00 51 e1                                      cmp r1, r0
0064f2d0  02 00 00 0a                                      beq #0x64f2e0
0064f2d4  01 20 50 e0                                      subs r2, r0, r1
0064f2d8  00 10 a0 01                                      moveq r1, r0
0064f2dc  05 00 00 1a                                      bne #0x64f2f8
0064f2e0  04 10 41 e2                                      sub r1, r1, #4
0064f2e4  01 30 a0 e3                                      mov r3, #1
0064f2e8  10 30 c4 e5                                      strb r3, [r4, #0x10]
0064f2ec  08 10 84 e5                                      str r1, [r4, #8]
0064f2f0  0c d0 8d e2                                      add sp, sp, #0xc
0064f2f4  30 80 bd e8                                      pop {r4, r5, pc}
0064f2f8  05 00 a0 e1                                      mov r0, r5
0064f2fc  0d fb f2 eb                                      bl #0x30df38
0064f300  08 10 94 e5                                      ldr r1, [r4, #8]
0064f304  f5 ff ff ea                                      b #0x64f2e0

; FUNCTION 0x0064f308, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::PForcesModel<glitch::ps::SParticle>
; alias: _ZTv0_n100_N6glitch2ps12PForcesModelINS0_9SParticleEE12removePForceEPNS0_6PForceIS2_EE
; demangled: virtual thunk to glitch::ps::PForcesModel<glitch::ps::SParticle>::removePForce(glitch::ps::PForce<glitch::ps::SParticle>*)
; decoder-mode: arm
0064f308  00 30 90 e5                                      ldr r3, [r0]
0064f30c  64 30 13 e5                                      ldr r3, [r3, #-0x64]
0064f310  03 00 80 e0                                      add r0, r0, r3
0064f314  d7 ff ff ea                                      b #0x64f278

; FUNCTION 0x0064f318, declared_size=116, range_size=116, mode=arm
; class-group: glitch::ps::PForcesModel<glitch::ps::SParticle>
; alias: _ZN6glitch2ps12PForcesModelINS0_9SParticleEE12removePForceEi
; demangled: glitch::ps::PForcesModel<glitch::ps::SParticle>::removePForce(int)
; decoder-mode: arm
0064f318  00 00 51 e3                                      cmp r1, #0
0064f31c  70 40 2d e9                                      push {r4, r5, r6, lr}
0064f320  00 40 a0 e1                                      mov r4, r0
0064f324  17 00 00 da                                      ble #0x64f388
0064f328  08 00 90 e5                                      ldr r0, [r0, #8]
0064f32c  04 50 94 e5                                      ldr r5, [r4, #4]
0064f330  00 30 65 e0                                      rsb r3, r5, r0
0064f334  43 01 51 e1                                      cmp r1, r3, asr #2
0064f338  12 00 00 aa                                      bge #0x64f388
0064f33c  01 31 95 e7                                      ldr r3, [r5, r1, lsl #2]
0064f340  01 51 85 e0                                      add r5, r5, r1, lsl #2
0064f344  00 00 53 e3                                      cmp r3, #0
0064f348  04 00 00 0a                                      beq #0x64f360
0064f34c  03 00 a0 e1                                      mov r0, r3
0064f350  00 30 93 e5                                      ldr r3, [r3]
0064f354  0f e0 a0 e1                                      mov lr, pc
0064f358  04 f0 93 e5                                      ldr pc, [r3, #4]
0064f35c  08 00 94 e5                                      ldr r0, [r4, #8]
0064f360  04 10 85 e2                                      add r1, r5, #4
0064f364  01 00 50 e1                                      cmp r0, r1
0064f368  04 00 00 0a                                      beq #0x64f380
0064f36c  01 20 50 e0                                      subs r2, r0, r1
0064f370  02 00 00 0a                                      beq #0x64f380
0064f374  05 00 a0 e1                                      mov r0, r5
0064f378  ee fa f2 eb                                      bl #0x30df38
0064f37c  08 00 94 e5                                      ldr r0, [r4, #8]
0064f380  04 00 40 e2                                      sub r0, r0, #4
0064f384  08 00 84 e5                                      str r0, [r4, #8]
0064f388  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0064f38c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::PForcesModel<glitch::ps::SParticle>
; alias: _ZTv0_n104_N6glitch2ps12PForcesModelINS0_9SParticleEE12removePForceEi
; demangled: virtual thunk to glitch::ps::PForcesModel<glitch::ps::SParticle>::removePForce(int)
; decoder-mode: arm
0064f38c  00 30 90 e5                                      ldr r3, [r0]
0064f390  68 30 13 e5                                      ldr r3, [r3, #-0x68]
0064f394  03 00 80 e0                                      add r0, r0, r3
0064f398  de ff ff ea                                      b #0x64f318

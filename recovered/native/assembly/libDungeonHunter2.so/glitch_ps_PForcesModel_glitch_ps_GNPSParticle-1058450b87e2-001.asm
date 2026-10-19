; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00638648, declared_size=4, range_size=4, mode=arm
; class-group: glitch::ps::PForcesModel<glitch::ps::GNPSParticle>
; alias: _ZN6glitch2ps12PForcesModelINS0_12GNPSParticleEE11initPForcesEPS2_S4_
; demangled: glitch::ps::PForcesModel<glitch::ps::GNPSParticle>::initPForces(glitch::ps::GNPSParticle*, glitch::ps::GNPSParticle*)
; decoder-mode: arm
00638648  1e ff 2f e1                                      bx lr

; FUNCTION 0x0063864c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::PForcesModel<glitch::ps::GNPSParticle>
; alias: _ZTv0_n112_N6glitch2ps12PForcesModelINS0_12GNPSParticleEE11initPForcesEPS2_S4_
; demangled: virtual thunk to glitch::ps::PForcesModel<glitch::ps::GNPSParticle>::initPForces(glitch::ps::GNPSParticle*, glitch::ps::GNPSParticle*)
; decoder-mode: arm
0063864c  00 30 90 e5                                      ldr r3, [r0]
00638650  70 30 13 e5                                      ldr r3, [r3, #-0x70]
00638654  03 00 80 e0                                      add r0, r0, r3
00638658  fa ff ff ea                                      b #0x638648

; FUNCTION 0x0063a5ac, declared_size=136, range_size=136, mode=arm
; class-group: glitch::ps::PForcesModel<glitch::ps::GNPSParticle>
; alias: _ZN6glitch2ps12PForcesModelINS0_12GNPSParticleEED1Ev
; demangled: glitch::ps::PForcesModel<glitch::ps::GNPSParticle>::~PForcesModel()
; decoder-mode: arm
0063a5ac  78 20 9f e5                                      ldr r2, [pc, #0x78]
0063a5b0  78 30 9f e5                                      ldr r3, [pc, #0x78]
0063a5b4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0063a5b8  02 20 8f e0                                      add r2, pc, r2
0063a5bc  03 30 92 e7                                      ldr r3, [r2, r3]
0063a5c0  00 70 a0 e1                                      mov r7, r0
0063a5c4  00 60 a0 e1                                      mov r6, r0
0063a5c8  0c 20 83 e2                                      add r2, r3, #0xc
0063a5cc  14 20 87 e4                                      str r2, [r7], #0x14
0063a5d0  30 00 90 e9                                      ldmib r0, {r4, r5}
0063a5d4  c4 30 83 e2                                      add r3, r3, #0xc4
0063a5d8  14 30 80 e5                                      str r3, [r0, #0x14]
0063a5dc  05 00 54 e1                                      cmp r4, r5
0063a5e0  09 00 00 0a                                      beq #0x63a60c
0063a5e4  00 30 94 e5                                      ldr r3, [r4]
0063a5e8  04 40 84 e2                                      add r4, r4, #4
0063a5ec  00 00 53 e3                                      cmp r3, #0
0063a5f0  03 00 a0 e1                                      mov r0, r3
0063a5f4  02 00 00 0a                                      beq #0x63a604
0063a5f8  00 30 93 e5                                      ldr r3, [r3]
0063a5fc  0f e0 a0 e1                                      mov lr, pc
0063a600  04 f0 93 e5                                      ldr pc, [r3, #4]
0063a604  04 00 55 e1                                      cmp r5, r4
0063a608  f5 ff ff 1a                                      bne #0x63a5e4
0063a60c  04 00 96 e5                                      ldr r0, [r6, #4]
0063a610  00 00 50 e3                                      cmp r0, #0
0063a614  00 00 00 0a                                      beq #0x63a61c
0063a618  8c 57 f3 eb                                      bl #0x310450
0063a61c  07 00 a0 e1                                      mov r0, r7
0063a620  f4 fe ff eb                                      bl #0x63a1f8
0063a624  06 00 a0 e1                                      mov r0, r6
0063a628  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0063a62c  d8 a4 35 00 38 21 00 00                          .byte 0xd8, 0xa4, 0x35, 0x00, 0x38, 0x21, 0x00, 0x00

; FUNCTION 0x0063a634, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::PForcesModel<glitch::ps::GNPSParticle>
; alias: _ZTv0_n12_N6glitch2ps12PForcesModelINS0_12GNPSParticleEED1Ev
; demangled: virtual thunk to glitch::ps::PForcesModel<glitch::ps::GNPSParticle>::~PForcesModel()
; decoder-mode: arm
0063a634  00 30 90 e5                                      ldr r3, [r0]
0063a638  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0063a63c  03 00 80 e0                                      add r0, r0, r3
0063a640  d9 ff ff ea                                      b #0x63a5ac

; FUNCTION 0x0063a644, declared_size=28, range_size=28, mode=arm
; class-group: glitch::ps::PForcesModel<glitch::ps::GNPSParticle>
; alias: _ZN6glitch2ps12PForcesModelINS0_12GNPSParticleEED0Ev
; demangled: glitch::ps::PForcesModel<glitch::ps::GNPSParticle>::~PForcesModel()
; decoder-mode: arm
0063a644  10 40 2d e9                                      push {r4, lr}
0063a648  00 40 a0 e1                                      mov r4, r0
0063a64c  d6 ff ff eb                                      bl #0x63a5ac
0063a650  04 00 a0 e1                                      mov r0, r4
0063a654  15 4f f3 eb                                      bl #0x30e2b0
0063a658  04 00 a0 e1                                      mov r0, r4
0063a65c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0063a660, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::PForcesModel<glitch::ps::GNPSParticle>
; alias: _ZTv0_n12_N6glitch2ps12PForcesModelINS0_12GNPSParticleEED0Ev
; demangled: virtual thunk to glitch::ps::PForcesModel<glitch::ps::GNPSParticle>::~PForcesModel()
; decoder-mode: arm
0063a660  00 30 90 e5                                      ldr r3, [r0]
0063a664  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0063a668  03 00 80 e0                                      add r0, r0, r3
0063a66c  f4 ff ff ea                                      b #0x63a644

; FUNCTION 0x0063a670, declared_size=104, range_size=104, mode=arm
; class-group: glitch::ps::PForcesModel<glitch::ps::GNPSParticle>
; alias: _ZN6glitch2ps12PForcesModelINS0_12GNPSParticleEED2Ev
; demangled: glitch::ps::PForcesModel<glitch::ps::GNPSParticle>::~PForcesModel()
; decoder-mode: arm
0063a670  70 40 2d e9                                      push {r4, r5, r6, lr}
0063a674  00 30 91 e5                                      ldr r3, [r1]
0063a678  00 60 a0 e1                                      mov r6, r0
0063a67c  00 30 80 e5                                      str r3, [r0]
0063a680  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0063a684  04 20 91 e5                                      ldr r2, [r1, #4]
0063a688  03 20 80 e7                                      str r2, [r0, r3]
0063a68c  30 00 90 e9                                      ldmib r0, {r4, r5}
0063a690  05 00 54 e1                                      cmp r4, r5
0063a694  09 00 00 0a                                      beq #0x63a6c0
0063a698  00 30 94 e5                                      ldr r3, [r4]
0063a69c  04 40 84 e2                                      add r4, r4, #4
0063a6a0  00 00 53 e3                                      cmp r3, #0
0063a6a4  03 00 a0 e1                                      mov r0, r3
0063a6a8  02 00 00 0a                                      beq #0x63a6b8
0063a6ac  00 30 93 e5                                      ldr r3, [r3]
0063a6b0  0f e0 a0 e1                                      mov lr, pc
0063a6b4  04 f0 93 e5                                      ldr pc, [r3, #4]
0063a6b8  04 00 55 e1                                      cmp r5, r4
0063a6bc  f5 ff ff 1a                                      bne #0x63a698
0063a6c0  04 00 96 e5                                      ldr r0, [r6, #4]
0063a6c4  00 00 50 e3                                      cmp r0, #0
0063a6c8  00 00 00 0a                                      beq #0x63a6d0
0063a6cc  5f 57 f3 eb                                      bl #0x310450
0063a6d0  06 00 a0 e1                                      mov r0, r6
0063a6d4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0063b0fc, declared_size=124, range_size=124, mode=arm
; class-group: glitch::ps::PForcesModel<glitch::ps::GNPSParticle>
; alias: _ZN6glitch2ps12PForcesModelINS0_12GNPSParticleEE12applyPForcesEPS2_S4_
; demangled: glitch::ps::PForcesModel<glitch::ps::GNPSParticle>::applyPForces(glitch::ps::GNPSParticle*, glitch::ps::GNPSParticle*)
; decoder-mode: arm
0063b0fc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0063b100  10 30 d0 e5                                      ldrb r3, [r0, #0x10]
0063b104  08 d0 4d e2                                      sub sp, sp, #8
0063b108  00 50 a0 e1                                      mov r5, r0
0063b10c  00 00 53 e3                                      cmp r3, #0
0063b110  01 80 a0 e1                                      mov r8, r1
0063b114  02 70 a0 e1                                      mov r7, r2
0063b118  05 00 00 0a                                      beq #0x63b134
0063b11c  04 00 90 e5                                      ldr r0, [r0, #4]
0063b120  08 10 95 e5                                      ldr r1, [r5, #8]
0063b124  04 20 8d e2                                      add r2, sp, #4
0063b128  d6 ff ff eb                                      bl #0x63b088
0063b12c  00 30 a0 e3                                      mov r3, #0
0063b130  10 30 c5 e5                                      strb r3, [r5, #0x10]
0063b134  50 00 95 e9                                      ldmib r5, {r4, r6}
0063b138  06 00 54 e1                                      cmp r4, r6
0063b13c  0b 00 00 0a                                      beq #0x63b170
0063b140  00 30 95 e5                                      ldr r3, [r5]
0063b144  04 20 94 e4                                      ldr r2, [r4], #4
0063b148  08 10 a0 e1                                      mov r1, r8
0063b14c  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0063b150  02 00 a0 e1                                      mov r0, r2
0063b154  00 c0 92 e5                                      ldr ip, [r2]
0063b158  03 30 85 e0                                      add r3, r5, r3
0063b15c  07 20 a0 e1                                      mov r2, r7
0063b160  0f e0 a0 e1                                      mov lr, pc
0063b164  08 f0 9c e5                                      ldr pc, [ip, #8]
0063b168  06 00 54 e1                                      cmp r4, r6
0063b16c  f3 ff ff 1a                                      bne #0x63b140
0063b170  08 d0 8d e2                                      add sp, sp, #8
0063b174  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0063b178, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::PForcesModel<glitch::ps::GNPSParticle>
; alias: _ZTv0_n116_N6glitch2ps12PForcesModelINS0_12GNPSParticleEE12applyPForcesEPS2_S4_
; demangled: virtual thunk to glitch::ps::PForcesModel<glitch::ps::GNPSParticle>::applyPForces(glitch::ps::GNPSParticle*, glitch::ps::GNPSParticle*)
; decoder-mode: arm
0063b178  00 30 90 e5                                      ldr r3, [r0]
0063b17c  74 30 13 e5                                      ldr r3, [r3, #-0x74]
0063b180  03 00 80 e0                                      add r0, r0, r3
0063b184  dc ff ff ea                                      b #0x63b0fc

; FUNCTION 0x0063b188, declared_size=56, range_size=56, mode=arm
; class-group: glitch::ps::PForcesModel<glitch::ps::GNPSParticle>
; alias: _ZN6glitch2ps12PForcesModelINS0_12GNPSParticleEE16initPForcesModelEv
; demangled: glitch::ps::PForcesModel<glitch::ps::GNPSParticle>::initPForcesModel()
; decoder-mode: arm
0063b188  10 40 2d e9                                      push {r4, lr}
0063b18c  10 30 d0 e5                                      ldrb r3, [r0, #0x10]
0063b190  08 d0 4d e2                                      sub sp, sp, #8
0063b194  00 40 a0 e1                                      mov r4, r0
0063b198  00 00 53 e3                                      cmp r3, #0
0063b19c  05 00 00 0a                                      beq #0x63b1b8
0063b1a0  04 00 90 e5                                      ldr r0, [r0, #4]
0063b1a4  08 10 94 e5                                      ldr r1, [r4, #8]
0063b1a8  04 20 8d e2                                      add r2, sp, #4
0063b1ac  b5 ff ff eb                                      bl #0x63b088
0063b1b0  00 30 a0 e3                                      mov r3, #0
0063b1b4  10 30 c4 e5                                      strb r3, [r4, #0x10]
0063b1b8  08 d0 8d e2                                      add sp, sp, #8
0063b1bc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0063b1c0, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::PForcesModel<glitch::ps::GNPSParticle>
; alias: _ZTv0_n108_N6glitch2ps12PForcesModelINS0_12GNPSParticleEE16initPForcesModelEv
; demangled: virtual thunk to glitch::ps::PForcesModel<glitch::ps::GNPSParticle>::initPForcesModel()
; decoder-mode: arm
0063b1c0  00 30 90 e5                                      ldr r3, [r0]
0063b1c4  6c 30 13 e5                                      ldr r3, [r3, #-0x6c]
0063b1c8  03 00 80 e0                                      add r0, r0, r3
0063b1cc  ed ff ff ea                                      b #0x63b188

; FUNCTION 0x0063da68, declared_size=144, range_size=144, mode=arm
; class-group: glitch::ps::PForcesModel<glitch::ps::GNPSParticle>
; alias: _ZN6glitch2ps12PForcesModelINS0_12GNPSParticleEE12removePForceEPNS0_6PForceIS2_EE
; demangled: glitch::ps::PForcesModel<glitch::ps::GNPSParticle>::removePForce(glitch::ps::PForce<glitch::ps::GNPSParticle>*)
; decoder-mode: arm
0063da68  30 40 2d e9                                      push {r4, r5, lr}
0063da6c  00 40 a0 e1                                      mov r4, r0
0063da70  0c d0 4d e2                                      sub sp, sp, #0xc
0063da74  01 20 a0 e1                                      mov r2, r1
0063da78  04 00 90 e5                                      ldr r0, [r0, #4]
0063da7c  08 10 94 e5                                      ldr r1, [r4, #8]
0063da80  04 30 8d e2                                      add r3, sp, #4
0063da84  5b eb ff eb                                      bl #0x6387f8
0063da88  00 50 a0 e1                                      mov r5, r0
0063da8c  08 00 94 e5                                      ldr r0, [r4, #8]
0063da90  00 00 55 e1                                      cmp r5, r0
0063da94  11 00 00 0a                                      beq #0x63dae0
0063da98  00 30 95 e5                                      ldr r3, [r5]
0063da9c  00 00 53 e3                                      cmp r3, #0
0063daa0  04 00 00 0a                                      beq #0x63dab8
0063daa4  03 00 a0 e1                                      mov r0, r3
0063daa8  00 30 93 e5                                      ldr r3, [r3]
0063daac  0f e0 a0 e1                                      mov lr, pc
0063dab0  04 f0 93 e5                                      ldr pc, [r3, #4]
0063dab4  08 00 94 e5                                      ldr r0, [r4, #8]
0063dab8  04 10 85 e2                                      add r1, r5, #4
0063dabc  00 00 51 e1                                      cmp r1, r0
0063dac0  02 00 00 0a                                      beq #0x63dad0
0063dac4  01 20 50 e0                                      subs r2, r0, r1
0063dac8  00 10 a0 01                                      moveq r1, r0
0063dacc  05 00 00 1a                                      bne #0x63dae8
0063dad0  04 10 41 e2                                      sub r1, r1, #4
0063dad4  01 30 a0 e3                                      mov r3, #1
0063dad8  10 30 c4 e5                                      strb r3, [r4, #0x10]
0063dadc  08 10 84 e5                                      str r1, [r4, #8]
0063dae0  0c d0 8d e2                                      add sp, sp, #0xc
0063dae4  30 80 bd e8                                      pop {r4, r5, pc}
0063dae8  05 00 a0 e1                                      mov r0, r5
0063daec  11 41 f3 eb                                      bl #0x30df38
0063daf0  08 10 94 e5                                      ldr r1, [r4, #8]
0063daf4  f5 ff ff ea                                      b #0x63dad0

; FUNCTION 0x0063daf8, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::PForcesModel<glitch::ps::GNPSParticle>
; alias: _ZTv0_n100_N6glitch2ps12PForcesModelINS0_12GNPSParticleEE12removePForceEPNS0_6PForceIS2_EE
; demangled: virtual thunk to glitch::ps::PForcesModel<glitch::ps::GNPSParticle>::removePForce(glitch::ps::PForce<glitch::ps::GNPSParticle>*)
; decoder-mode: arm
0063daf8  00 30 90 e5                                      ldr r3, [r0]
0063dafc  64 30 13 e5                                      ldr r3, [r3, #-0x64]
0063db00  03 00 80 e0                                      add r0, r0, r3
0063db04  d7 ff ff ea                                      b #0x63da68

; FUNCTION 0x0063dc3c, declared_size=116, range_size=116, mode=arm
; class-group: glitch::ps::PForcesModel<glitch::ps::GNPSParticle>
; alias: _ZN6glitch2ps12PForcesModelINS0_12GNPSParticleEE12removePForceEi
; demangled: glitch::ps::PForcesModel<glitch::ps::GNPSParticle>::removePForce(int)
; decoder-mode: arm
0063dc3c  00 00 51 e3                                      cmp r1, #0
0063dc40  70 40 2d e9                                      push {r4, r5, r6, lr}
0063dc44  00 40 a0 e1                                      mov r4, r0
0063dc48  17 00 00 da                                      ble #0x63dcac
0063dc4c  08 00 90 e5                                      ldr r0, [r0, #8]
0063dc50  04 50 94 e5                                      ldr r5, [r4, #4]
0063dc54  00 30 65 e0                                      rsb r3, r5, r0
0063dc58  43 01 51 e1                                      cmp r1, r3, asr #2
0063dc5c  12 00 00 aa                                      bge #0x63dcac
0063dc60  01 31 95 e7                                      ldr r3, [r5, r1, lsl #2]
0063dc64  01 51 85 e0                                      add r5, r5, r1, lsl #2
0063dc68  00 00 53 e3                                      cmp r3, #0
0063dc6c  04 00 00 0a                                      beq #0x63dc84
0063dc70  03 00 a0 e1                                      mov r0, r3
0063dc74  00 30 93 e5                                      ldr r3, [r3]
0063dc78  0f e0 a0 e1                                      mov lr, pc
0063dc7c  04 f0 93 e5                                      ldr pc, [r3, #4]
0063dc80  08 00 94 e5                                      ldr r0, [r4, #8]
0063dc84  04 10 85 e2                                      add r1, r5, #4
0063dc88  01 00 50 e1                                      cmp r0, r1
0063dc8c  04 00 00 0a                                      beq #0x63dca4
0063dc90  01 20 50 e0                                      subs r2, r0, r1
0063dc94  02 00 00 0a                                      beq #0x63dca4
0063dc98  05 00 a0 e1                                      mov r0, r5
0063dc9c  a5 40 f3 eb                                      bl #0x30df38
0063dca0  08 00 94 e5                                      ldr r0, [r4, #8]
0063dca4  04 00 40 e2                                      sub r0, r0, #4
0063dca8  08 00 84 e5                                      str r0, [r4, #8]
0063dcac  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0063dcb0, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::PForcesModel<glitch::ps::GNPSParticle>
; alias: _ZTv0_n104_N6glitch2ps12PForcesModelINS0_12GNPSParticleEE12removePForceEi
; demangled: virtual thunk to glitch::ps::PForcesModel<glitch::ps::GNPSParticle>::removePForce(int)
; decoder-mode: arm
0063dcb0  00 30 90 e5                                      ldr r3, [r0]
0063dcb4  68 30 13 e5                                      ldr r3, [r3, #-0x68]
0063dcb8  03 00 80 e0                                      add r0, r0, r3
0063dcbc  de ff ff ea                                      b #0x63dc3c

; FUNCTION 0x0063ec44, declared_size=216, range_size=216, mode=arm
; class-group: glitch::ps::PForcesModel<glitch::ps::GNPSParticle>
; alias: _ZN6glitch2ps12PForcesModelINS0_12GNPSParticleEE9addPForceEPNS0_6PForceIS2_EE
; demangled: glitch::ps::PForcesModel<glitch::ps::GNPSParticle>::addPForce(glitch::ps::PForce<glitch::ps::GNPSParticle>*)
; decoder-mode: arm
0063ec44  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0063ec48  08 80 90 e5                                      ldr r8, [r0, #8]
0063ec4c  0c 30 90 e5                                      ldr r3, [r0, #0xc]
0063ec50  00 40 a0 e1                                      mov r4, r0
0063ec54  01 50 a0 e1                                      mov r5, r1
0063ec58  03 00 58 e1                                      cmp r8, r3
0063ec5c  09 00 00 0a                                      beq #0x63ec88
0063ec60  00 10 88 e5                                      str r1, [r8]
0063ec64  08 80 90 e5                                      ldr r8, [r0, #8]
0063ec68  01 20 a0 e3                                      mov r2, #1
0063ec6c  04 80 88 e2                                      add r8, r8, #4
0063ec70  08 80 80 e5                                      str r8, [r0, #8]
0063ec74  04 30 94 e5                                      ldr r3, [r4, #4]
0063ec78  10 20 c4 e5                                      strb r2, [r4, #0x10]
0063ec7c  08 80 63 e0                                      rsb r8, r3, r8
0063ec80  48 01 a0 e1                                      asr r0, r8, #2
0063ec84  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0063ec88  04 30 90 e5                                      ldr r3, [r0, #4]
0063ec8c  08 30 63 e0                                      rsb r3, r3, r8
0063ec90  43 31 a0 e1                                      asr r3, r3, #2
0063ec94  01 00 53 e3                                      cmp r3, #1
0063ec98  03 70 83 20                                      addhs r7, r3, r3
0063ec9c  01 70 83 32                                      addlo r7, r3, #1
0063eca0  07 01 77 e3                                      cmn r7, #0xc0000001
0063eca4  1a 00 00 8a                                      bhi #0x63ed14
0063eca8  07 00 53 e1                                      cmp r3, r7
0063ecac  07 71 a0 91                                      lslls r7, r7, #2
0063ecb0  17 00 00 8a                                      bhi #0x63ed14
0063ecb4  00 10 a0 e3                                      mov r1, #0
0063ecb8  07 00 a0 e1                                      mov r0, r7
0063ecbc  29 46 f3 eb                                      bl #0x310568
0063ecc0  04 10 94 e5                                      ldr r1, [r4, #4]
0063ecc4  00 60 a0 e1                                      mov r6, r0
0063ecc8  01 80 58 e0                                      subs r8, r8, r1
0063eccc  00 80 a0 01                                      moveq r8, r0
0063ecd0  02 00 00 0a                                      beq #0x63ece0
0063ecd4  08 20 a0 e1                                      mov r2, r8
0063ecd8  96 3c f3 eb                                      bl #0x30df38
0063ecdc  08 80 80 e0                                      add r8, r0, r8
0063ece0  04 50 88 e4                                      str r5, [r8], #4
0063ece4  04 00 94 e5                                      ldr r0, [r4, #4]
0063ece8  d8 45 f3 eb                                      bl #0x310450
0063ecec  04 60 84 e5                                      str r6, [r4, #4]
0063ecf0  04 30 94 e5                                      ldr r3, [r4, #4]
0063ecf4  07 70 86 e0                                      add r7, r6, r7
0063ecf8  08 80 84 e5                                      str r8, [r4, #8]
0063ecfc  01 20 a0 e3                                      mov r2, #1
0063ed00  08 80 63 e0                                      rsb r8, r3, r8
0063ed04  0c 70 84 e5                                      str r7, [r4, #0xc]
0063ed08  10 20 c4 e5                                      strb r2, [r4, #0x10]
0063ed0c  48 01 a0 e1                                      asr r0, r8, #2
0063ed10  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0063ed14  03 70 e0 e3                                      mvn r7, #3
0063ed18  e5 ff ff ea                                      b #0x63ecb4

; FUNCTION 0x0063ed1c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::PForcesModel<glitch::ps::GNPSParticle>
; alias: _ZTv0_n96_N6glitch2ps12PForcesModelINS0_12GNPSParticleEE9addPForceEPNS0_6PForceIS2_EE
; demangled: virtual thunk to glitch::ps::PForcesModel<glitch::ps::GNPSParticle>::addPForce(glitch::ps::PForce<glitch::ps::GNPSParticle>*)
; decoder-mode: arm
0063ed1c  00 30 90 e5                                      ldr r3, [r0]
0063ed20  60 30 13 e5                                      ldr r3, [r3, #-0x60]
0063ed24  03 00 80 e0                                      add r0, r0, r3
0063ed28  c5 ff ff ea                                      b #0x63ec44

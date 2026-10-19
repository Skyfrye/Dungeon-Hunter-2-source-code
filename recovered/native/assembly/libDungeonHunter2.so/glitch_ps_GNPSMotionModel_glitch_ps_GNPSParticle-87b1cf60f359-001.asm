; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00638634, declared_size=4, range_size=4, mode=arm
; class-group: glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>
; alias: _ZN6glitch2ps15GNPSMotionModelINS0_12GNPSParticleEE16initPMotionModelEv
; demangled: glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>::initPMotionModel()
; decoder-mode: arm
00638634  1e ff 2f e1                                      bx lr

; FUNCTION 0x00638638, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>
; alias: _ZTv0_n84_N6glitch2ps15GNPSMotionModelINS0_12GNPSParticleEE16initPMotionModelEv
; demangled: virtual thunk to glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>::initPMotionModel()
; decoder-mode: arm
00638638  00 30 90 e5                                      ldr r3, [r0]
0063863c  54 30 13 e5                                      ldr r3, [r3, #-0x54]
00638640  03 00 80 e0                                      add r0, r0, r3
00638644  fa ff ff ea                                      b #0x638634

; FUNCTION 0x0063a304, declared_size=60, range_size=60, mode=arm
; class-group: glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>
; alias: _ZN6glitch2ps15GNPSMotionModelINS0_12GNPSParticleEED1Ev
; demangled: glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>::~GNPSMotionModel()
; decoder-mode: arm
0063a304  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
0063a308  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
0063a30c  10 40 2d e9                                      push {r4, lr}
0063a310  02 20 8f e0                                      add r2, pc, r2
0063a314  03 30 92 e7                                      ldr r3, [r2, r3]
0063a318  00 40 a0 e1                                      mov r4, r0
0063a31c  0c 20 83 e2                                      add r2, r3, #0xc
0063a320  b8 30 83 e2                                      add r3, r3, #0xb8
0063a324  3c 20 80 e4                                      str r2, [r0], #0x3c
0063a328  3c 30 84 e5                                      str r3, [r4, #0x3c]
0063a32c  b1 ff ff eb                                      bl #0x63a1f8
0063a330  04 00 a0 e1                                      mov r0, r4
0063a334  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0063a338  80 a7 35 00 b4 12 00 00                          .byte 0x80, 0xa7, 0x35, 0x00, 0xb4, 0x12, 0x00, 0x00

; FUNCTION 0x0063a340, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>
; alias: _ZTv0_n12_N6glitch2ps15GNPSMotionModelINS0_12GNPSParticleEED1Ev
; demangled: virtual thunk to glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>::~GNPSMotionModel()
; decoder-mode: arm
0063a340  00 30 90 e5                                      ldr r3, [r0]
0063a344  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0063a348  03 00 80 e0                                      add r0, r0, r3
0063a34c  ec ff ff ea                                      b #0x63a304

; FUNCTION 0x0063beec, declared_size=1164, range_size=1164, mode=arm
; class-group: glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>
; alias: _ZN6glitch2ps15GNPSMotionModelINS0_12GNPSParticleEE12applyPMotionEPS2_S4_
; demangled: glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>::applyPMotion(glitch::ps::GNPSParticle*, glitch::ps::GNPSParticle*)
; decoder-mode: arm
0063beec  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0063bef0  02 00 51 e1                                      cmp r1, r2
0063bef4  74 d0 4d e2                                      sub sp, sp, #0x74
0063bef8  00 70 a0 e3                                      mov r7, #0
0063befc  01 80 a0 e1                                      mov r8, r1
0063bf00  28 20 8d e5                                      str r2, [sp, #0x28]
0063bf04  00 40 a0 e1                                      mov r4, r0
0063bf08  41 70 cd e5                                      strb r7, [sp, #0x41]
0063bf0c  15 01 00 0a                                      beq #0x63c368
0063bf10  58 34 9f e5                                      ldr r3, [pc, #0x458]
0063bf14  34 00 8d e2                                      add r0, sp, #0x34
0063bf18  68 20 8d e2                                      add r2, sp, #0x68
0063bf1c  03 30 8f e0                                      add r3, pc, r3
0063bf20  2c 30 8d e5                                      str r3, [sp, #0x2c]
0063bf24  48 34 9f e5                                      ldr r3, [pc, #0x448]
0063bf28  01 50 a0 e1                                      mov r5, r1
0063bf2c  1c 00 8d e5                                      str r0, [sp, #0x1c]
0063bf30  03 30 8f e0                                      add r3, pc, r3
0063bf34  18 30 8d e5                                      str r3, [sp, #0x18]
0063bf38  6c 30 8d e2                                      add r3, sp, #0x6c
0063bf3c  5c a0 8d e2                                      add sl, sp, #0x5c
0063bf40  20 20 8d e5                                      str r2, [sp, #0x20]
0063bf44  24 30 8d e5                                      str r3, [sp, #0x24]
0063bf48  c6 00 00 ea                                      b #0x63c268
0063bf4c  2c 90 94 e5                                      ldr sb, [r4, #0x2c]
0063bf50  00 00 59 e3                                      cmp sb, #0
0063bf54  cd 00 00 0a                                      beq #0x63c290
0063bf58  5c 10 95 e5                                      ldr r1, [r5, #0x5c]
0063bf5c  58 00 95 e5                                      ldr r0, [r5, #0x58]
0063bf60  4b 4b f3 eb                                      bl #0x30ec94
0063bf64  11 13 a0 e3                                      mov r1, #0x44000000
0063bf68  00 20 a0 e3                                      mov r2, #0
0063bf6c  7a 18 81 e2                                      add r1, r1, #0x7a0000
0063bf70  68 20 8d e5                                      str r2, [sp, #0x68]
0063bf74  00 b0 a0 e1                                      mov fp, r0
0063bf78  7b 4b f3 eb                                      bl #0x30ed6c
0063bf7c  48 4a f3 eb                                      bl #0x30e8a4
0063bf80  ea 2a 05 e3                                      movw r2, #0x5aea
0063bf84  aa 3a 0a e3                                      movw r3, #0xaaaa
0063bf88  7b 2f 49 e3                                      movt r2, #0x9f7b
0063bf8c  40 30 44 e3                                      movt r3, #0x4040
0063bf90  ea 48 f3 eb                                      bl #0x30e340
0063bf94  a2 4a f3 eb                                      bl #0x30ea24
0063bf98  00 30 94 e5                                      ldr r3, [r4]
0063bf9c  6c 00 8d e5                                      str r0, [sp, #0x6c]
0063bfa0  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0063bfa4  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0063bfa8  00 10 a0 e3                                      mov r1, #0
0063bfac  0a 00 a0 e1                                      mov r0, sl
0063bfb0  03 30 84 e0                                      add r3, r4, r3
0063bfb4  58 30 93 e5                                      ldr r3, [r3, #0x58]
0063bfb8  64 20 8d e5                                      str r2, [sp, #0x64]
0063bfbc  5c 90 8d e5                                      str sb, [sp, #0x5c]
0063bfc0  60 30 8d e5                                      str r3, [sp, #0x60]
0063bfc4  04 b8 00 eb                                      bl #0x669fdc
0063bfc8  65 4a f3 eb                                      bl #0x30e964
0063bfcc  0b 10 a0 e1                                      mov r1, fp
0063bfd0  65 4b f3 eb                                      bl #0x30ed6c
0063bfd4  3c 49 f3 eb                                      bl #0x30e4cc
0063bfd8  24 30 9d e5                                      ldr r3, [sp, #0x24]
0063bfdc  00 10 a0 e1                                      mov r1, r0
0063bfe0  01 c0 a0 e3                                      mov ip, #1
0063bfe4  20 20 9d e5                                      ldr r2, [sp, #0x20]
0063bfe8  0a 00 a0 e1                                      mov r0, sl
0063bfec  00 c0 8d e5                                      str ip, [sp]
0063bff0  6c b8 00 eb                                      bl #0x66a1a8
0063bff4  00 30 94 e5                                      ldr r3, [r4]
0063bff8  68 90 9d e5                                      ldr sb, [sp, #0x68]
0063bffc  10 10 95 e5                                      ldr r1, [r5, #0x10]
0063c000  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0063c004  08 60 a0 e1                                      mov r6, r8
0063c008  03 30 84 e0                                      add r3, r4, r3
0063c00c  50 b0 93 e5                                      ldr fp, [r3, #0x50]
0063c010  0b 00 a0 e1                                      mov r0, fp
0063c014  54 4b f3 eb                                      bl #0x30ed6c
0063c018  00 10 a0 e1                                      mov r1, r0
0063c01c  09 00 a0 e1                                      mov r0, sb
0063c020  51 4b f3 eb                                      bl #0x30ed6c
0063c024  14 10 95 e5                                      ldr r1, [r5, #0x14]
0063c028  00 30 a0 e1                                      mov r3, r0
0063c02c  0b 00 a0 e1                                      mov r0, fp
0063c030  0c 30 8d e5                                      str r3, [sp, #0xc]
0063c034  4c 4b f3 eb                                      bl #0x30ed6c
0063c038  00 10 a0 e1                                      mov r1, r0
0063c03c  09 00 a0 e1                                      mov r0, sb
0063c040  49 4b f3 eb                                      bl #0x30ed6c
0063c044  0c 10 95 e5                                      ldr r1, [r5, #0xc]
0063c048  00 20 a0 e1                                      mov r2, r0
0063c04c  0b 00 a0 e1                                      mov r0, fp
0063c050  10 20 8d e5                                      str r2, [sp, #0x10]
0063c054  44 4b f3 eb                                      bl #0x30ed6c
0063c058  00 10 a0 e1                                      mov r1, r0
0063c05c  09 00 a0 e1                                      mov r0, sb
0063c060  41 4b f3 eb                                      bl #0x30ed6c
0063c064  00 10 a0 e1                                      mov r1, r0
0063c068  07 00 98 e7                                      ldr r0, [r8, r7]
0063c06c  cc 4a f3 eb                                      bl #0x30eba4
0063c070  07 00 a6 e7                                      str r0, [r6, r7]!
0063c074  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0063c078  04 00 96 e5                                      ldr r0, [r6, #4]
0063c07c  03 10 a0 e1                                      mov r1, r3
0063c080  c7 4a f3 eb                                      bl #0x30eba4
0063c084  04 00 86 e5                                      str r0, [r6, #4]
0063c088  10 20 9d e5                                      ldr r2, [sp, #0x10]
0063c08c  08 00 95 e5                                      ldr r0, [r5, #8]
0063c090  02 10 a0 e1                                      mov r1, r2
0063c094  c2 4a f3 eb                                      bl #0x30eba4
0063c098  08 00 85 e5                                      str r0, [r5, #8]
0063c09c  28 30 94 e5                                      ldr r3, [r4, #0x28]
0063c0a0  00 00 53 e3                                      cmp r3, #0
0063c0a4  7f 00 00 da                                      ble #0x63c2a8
0063c0a8  30 90 94 e5                                      ldr sb, [r4, #0x30]
0063c0ac  00 00 59 e3                                      cmp sb, #0
0063c0b0  7c 00 00 0a                                      beq #0x63c2a8
0063c0b4  5c 10 95 e5                                      ldr r1, [r5, #0x5c]
0063c0b8  58 00 95 e5                                      ldr r0, [r5, #0x58]
0063c0bc  f4 4a f3 eb                                      bl #0x30ec94
0063c0c0  11 13 a0 e3                                      mov r1, #0x44000000
0063c0c4  00 30 a0 e3                                      mov r3, #0
0063c0c8  7a 18 81 e2                                      add r1, r1, #0x7a0000
0063c0cc  00 b0 a0 e1                                      mov fp, r0
0063c0d0  6c 30 8d e5                                      str r3, [sp, #0x6c]
0063c0d4  24 4b f3 eb                                      bl #0x30ed6c
0063c0d8  f1 49 f3 eb                                      bl #0x30e8a4
0063c0dc  ea 2a 05 e3                                      movw r2, #0x5aea
0063c0e0  aa 3a 0a e3                                      movw r3, #0xaaaa
0063c0e4  7b 2f 49 e3                                      movt r2, #0x9f7b
0063c0e8  40 30 44 e3                                      movt r3, #0x4040
0063c0ec  93 48 f3 eb                                      bl #0x30e340
0063c0f0  4b 4a f3 eb                                      bl #0x30ea24
0063c0f4  00 30 94 e5                                      ldr r3, [r4]
0063c0f8  68 00 8d e5                                      str r0, [sp, #0x68]
0063c0fc  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0063c100  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0063c104  00 10 a0 e3                                      mov r1, #0
0063c108  0a 00 a0 e1                                      mov r0, sl
0063c10c  03 30 84 e0                                      add r3, r4, r3
0063c110  58 30 93 e5                                      ldr r3, [r3, #0x58]
0063c114  64 20 8d e5                                      str r2, [sp, #0x64]
0063c118  5c 90 8d e5                                      str sb, [sp, #0x5c]
0063c11c  60 30 8d e5                                      str r3, [sp, #0x60]
0063c120  ad b7 00 eb                                      bl #0x669fdc
0063c124  0e 4a f3 eb                                      bl #0x30e964
0063c128  0b 10 a0 e1                                      mov r1, fp
0063c12c  0e 4b f3 eb                                      bl #0x30ed6c
0063c130  e5 48 f3 eb                                      bl #0x30e4cc
0063c134  01 c0 a0 e3                                      mov ip, #1
0063c138  24 20 9d e5                                      ldr r2, [sp, #0x24]
0063c13c  00 10 a0 e1                                      mov r1, r0
0063c140  20 30 9d e5                                      ldr r3, [sp, #0x20]
0063c144  0a 00 a0 e1                                      mov r0, sl
0063c148  00 c0 8d e5                                      str ip, [sp]
0063c14c  15 b8 00 eb                                      bl #0x66a1a8
0063c150  14 10 9d e5                                      ldr r1, [sp, #0x14]
0063c154  50 00 8d e2                                      add r0, sp, #0x50
0063c158  94 b0 95 e5                                      ldr fp, [r5, #0x94]
0063c15c  58 ee ff eb                                      bl #0x637ac4
0063c160  00 30 94 e5                                      ldr r3, [r4]
0063c164  18 00 9d e5                                      ldr r0, [sp, #0x18]
0063c168  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0063c16c  20 10 90 e5                                      ldr r1, [r0, #0x20]
0063c170  54 00 9d e5                                      ldr r0, [sp, #0x54]
0063c174  03 30 84 e0                                      add r3, r4, r3
0063c178  50 90 93 e5                                      ldr sb, [r3, #0x50]
0063c17c  8a 48 f3 eb                                      bl #0x30e3ac
0063c180  00 10 a0 e1                                      mov r1, r0
0063c184  0b 00 a0 e1                                      mov r0, fp
0063c188  f7 4a f3 eb                                      bl #0x30ed6c
0063c18c  00 10 a0 e1                                      mov r1, r0
0063c190  6c 00 9d e5                                      ldr r0, [sp, #0x6c]
0063c194  f4 4a f3 eb                                      bl #0x30ed6c
0063c198  00 10 a0 e1                                      mov r1, r0
0063c19c  09 00 a0 e1                                      mov r0, sb
0063c1a0  f1 4a f3 eb                                      bl #0x30ed6c
0063c1a4  18 20 9d e5                                      ldr r2, [sp, #0x18]
0063c1a8  00 30 a0 e1                                      mov r3, r0
0063c1ac  58 00 9d e5                                      ldr r0, [sp, #0x58]
0063c1b0  24 10 92 e5                                      ldr r1, [r2, #0x24]
0063c1b4  0c 30 8d e5                                      str r3, [sp, #0xc]
0063c1b8  7b 48 f3 eb                                      bl #0x30e3ac
0063c1bc  00 10 a0 e1                                      mov r1, r0
0063c1c0  0b 00 a0 e1                                      mov r0, fp
0063c1c4  e8 4a f3 eb                                      bl #0x30ed6c
0063c1c8  00 10 a0 e1                                      mov r1, r0
0063c1cc  6c 00 9d e5                                      ldr r0, [sp, #0x6c]
0063c1d0  e5 4a f3 eb                                      bl #0x30ed6c
0063c1d4  00 10 a0 e1                                      mov r1, r0
0063c1d8  09 00 a0 e1                                      mov r0, sb
0063c1dc  e2 4a f3 eb                                      bl #0x30ed6c
0063c1e0  00 20 a0 e1                                      mov r2, r0
0063c1e4  18 00 9d e5                                      ldr r0, [sp, #0x18]
0063c1e8  1c 10 90 e5                                      ldr r1, [r0, #0x1c]
0063c1ec  50 00 9d e5                                      ldr r0, [sp, #0x50]
0063c1f0  10 20 8d e5                                      str r2, [sp, #0x10]
0063c1f4  6c 48 f3 eb                                      bl #0x30e3ac
0063c1f8  00 10 a0 e1                                      mov r1, r0
0063c1fc  0b 00 a0 e1                                      mov r0, fp
0063c200  d9 4a f3 eb                                      bl #0x30ed6c
0063c204  00 10 a0 e1                                      mov r1, r0
0063c208  6c 00 9d e5                                      ldr r0, [sp, #0x6c]
0063c20c  d6 4a f3 eb                                      bl #0x30ed6c
0063c210  00 10 a0 e1                                      mov r1, r0
0063c214  09 00 a0 e1                                      mov r0, sb
0063c218  d3 4a f3 eb                                      bl #0x30ed6c
0063c21c  00 10 a0 e1                                      mov r1, r0
0063c220  07 00 98 e7                                      ldr r0, [r8, r7]
0063c224  5e 4a f3 eb                                      bl #0x30eba4
0063c228  07 00 88 e7                                      str r0, [r8, r7]
0063c22c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0063c230  04 00 96 e5                                      ldr r0, [r6, #4]
0063c234  9c 70 87 e2                                      add r7, r7, #0x9c
0063c238  03 10 a0 e1                                      mov r1, r3
0063c23c  58 4a f3 eb                                      bl #0x30eba4
0063c240  04 00 86 e5                                      str r0, [r6, #4]
0063c244  10 20 9d e5                                      ldr r2, [sp, #0x10]
0063c248  08 00 95 e5                                      ldr r0, [r5, #8]
0063c24c  02 10 a0 e1                                      mov r1, r2
0063c250  53 4a f3 eb                                      bl #0x30eba4
0063c254  08 00 85 e5                                      str r0, [r5, #8]
0063c258  28 20 9d e5                                      ldr r2, [sp, #0x28]
0063c25c  9c 50 85 e2                                      add r5, r5, #0x9c
0063c260  05 00 52 e1                                      cmp r2, r5
0063c264  3f 00 00 0a                                      beq #0x63c368
0063c268  00 30 94 e5                                      ldr r3, [r4]
0063c26c  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0063c270  03 00 84 e0                                      add r0, r4, r3
0063c274  03 30 94 e7                                      ldr r3, [r4, r3]
0063c278  0f e0 a0 e1                                      mov lr, pc
0063c27c  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0063c280  14 00 8d e5                                      str r0, [sp, #0x14]
0063c284  24 30 94 e5                                      ldr r3, [r4, #0x24]
0063c288  00 00 53 e3                                      cmp r3, #0
0063c28c  2e ff ff ca                                      bgt #0x63bf4c
0063c290  00 30 94 e5                                      ldr r3, [r4]
0063c294  2c 90 94 e5                                      ldr sb, [r4, #0x2c]
0063c298  10 10 95 e5                                      ldr r1, [r5, #0x10]
0063c29c  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0063c2a0  08 60 a0 e1                                      mov r6, r8
0063c2a4  57 ff ff ea                                      b #0x63c008
0063c2a8  14 10 9d e5                                      ldr r1, [sp, #0x14]
0063c2ac  44 00 8d e2                                      add r0, sp, #0x44
0063c2b0  94 b0 95 e5                                      ldr fp, [r5, #0x94]
0063c2b4  02 ee ff eb                                      bl #0x637ac4
0063c2b8  00 30 94 e5                                      ldr r3, [r4]
0063c2bc  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
0063c2c0  48 00 9d e5                                      ldr r0, [sp, #0x48]
0063c2c4  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0063c2c8  20 10 92 e5                                      ldr r1, [r2, #0x20]
0063c2cc  03 30 84 e0                                      add r3, r4, r3
0063c2d0  50 90 93 e5                                      ldr sb, [r3, #0x50]
0063c2d4  34 48 f3 eb                                      bl #0x30e3ac
0063c2d8  00 10 a0 e1                                      mov r1, r0
0063c2dc  0b 00 a0 e1                                      mov r0, fp
0063c2e0  a1 4a f3 eb                                      bl #0x30ed6c
0063c2e4  00 10 a0 e1                                      mov r1, r0
0063c2e8  30 00 94 e5                                      ldr r0, [r4, #0x30]
0063c2ec  9e 4a f3 eb                                      bl #0x30ed6c
0063c2f0  00 10 a0 e1                                      mov r1, r0
0063c2f4  09 00 a0 e1                                      mov r0, sb
0063c2f8  9b 4a f3 eb                                      bl #0x30ed6c
0063c2fc  00 30 a0 e1                                      mov r3, r0
0063c300  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
0063c304  24 10 90 e5                                      ldr r1, [r0, #0x24]
0063c308  4c 00 9d e5                                      ldr r0, [sp, #0x4c]
0063c30c  0c 30 8d e5                                      str r3, [sp, #0xc]
0063c310  25 48 f3 eb                                      bl #0x30e3ac
0063c314  00 10 a0 e1                                      mov r1, r0
0063c318  0b 00 a0 e1                                      mov r0, fp
0063c31c  92 4a f3 eb                                      bl #0x30ed6c
0063c320  00 10 a0 e1                                      mov r1, r0
0063c324  30 00 94 e5                                      ldr r0, [r4, #0x30]
0063c328  8f 4a f3 eb                                      bl #0x30ed6c
0063c32c  00 10 a0 e1                                      mov r1, r0
0063c330  09 00 a0 e1                                      mov r0, sb
0063c334  8c 4a f3 eb                                      bl #0x30ed6c
0063c338  00 20 a0 e1                                      mov r2, r0
0063c33c  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
0063c340  1c 10 90 e5                                      ldr r1, [r0, #0x1c]
0063c344  44 00 9d e5                                      ldr r0, [sp, #0x44]
0063c348  10 20 8d e5                                      str r2, [sp, #0x10]
0063c34c  16 48 f3 eb                                      bl #0x30e3ac
0063c350  00 10 a0 e1                                      mov r1, r0
0063c354  0b 00 a0 e1                                      mov r0, fp
0063c358  83 4a f3 eb                                      bl #0x30ed6c
0063c35c  00 10 a0 e1                                      mov r1, r0
0063c360  30 00 94 e5                                      ldr r0, [r4, #0x30]
0063c364  a8 ff ff ea                                      b #0x63c20c
0063c368  74 d0 8d e2                                      add sp, sp, #0x74
0063c36c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
0063c370  2c b0 3b 00 18 b0 3b 00                          .byte 0x2c, 0xb0, 0x3b, 0x00, 0x18, 0xb0, 0x3b, 0x00

; FUNCTION 0x0063c378, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>
; alias: _ZTv0_n92_N6glitch2ps15GNPSMotionModelINS0_12GNPSParticleEE12applyPMotionEPS2_S4_
; demangled: virtual thunk to glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>::applyPMotion(glitch::ps::GNPSParticle*, glitch::ps::GNPSParticle*)
; decoder-mode: arm
0063c378  00 30 90 e5                                      ldr r3, [r0]
0063c37c  5c 30 13 e5                                      ldr r3, [r3, #-0x5c]
0063c380  03 00 80 e0                                      add r0, r0, r3
0063c384  d8 fe ff ea                                      b #0x63beec

; FUNCTION 0x0063d89c, declared_size=68, range_size=68, mode=arm
; class-group: glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>
; alias: _ZN6glitch2ps15GNPSMotionModelINS0_12GNPSParticleEED0Ev
; demangled: glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>::~GNPSMotionModel()
; decoder-mode: arm
0063d89c  34 20 9f e5                                      ldr r2, [pc, #0x34]
0063d8a0  34 30 9f e5                                      ldr r3, [pc, #0x34]
0063d8a4  10 40 2d e9                                      push {r4, lr}
0063d8a8  02 20 8f e0                                      add r2, pc, r2
0063d8ac  03 30 92 e7                                      ldr r3, [r2, r3]
0063d8b0  00 40 a0 e1                                      mov r4, r0
0063d8b4  0c 20 83 e2                                      add r2, r3, #0xc
0063d8b8  b8 30 83 e2                                      add r3, r3, #0xb8
0063d8bc  3c 20 80 e4                                      str r2, [r0], #0x3c
0063d8c0  3c 30 84 e5                                      str r3, [r4, #0x3c]
0063d8c4  4b f2 ff eb                                      bl #0x63a1f8
0063d8c8  04 00 a0 e1                                      mov r0, r4
0063d8cc  77 42 f3 eb                                      bl #0x30e2b0
0063d8d0  04 00 a0 e1                                      mov r0, r4
0063d8d4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0063d8d8  e8 71 35 00 b4 12 00 00                          .byte 0xe8, 0x71, 0x35, 0x00, 0xb4, 0x12, 0x00, 0x00

; FUNCTION 0x0063d8e0, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>
; alias: _ZTv0_n12_N6glitch2ps15GNPSMotionModelINS0_12GNPSParticleEED0Ev
; demangled: virtual thunk to glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>::~GNPSMotionModel()
; decoder-mode: arm
0063d8e0  00 30 90 e5                                      ldr r3, [r0]
0063d8e4  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0063d8e8  03 00 80 e0                                      add r0, r0, r3
0063d8ec  ea ff ff ea                                      b #0x63d89c

; FUNCTION 0x006410b0, declared_size=1260, range_size=1260, mode=arm
; class-group: glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>
; alias: _ZN6glitch2ps15GNPSMotionModelINS0_12GNPSParticleEE11initPMotionEPS2_S4_
; demangled: glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>::initPMotion(glitch::ps::GNPSParticle*, glitch::ps::GNPSParticle*)
; decoder-mode: arm
006410b0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006410b4  00 30 90 e5                                      ldr r3, [r0]
006410b8  8c d0 4d e2                                      sub sp, sp, #0x8c
006410bc  0c 20 8d e5                                      str r2, [sp, #0xc]
006410c0  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006410c4  00 40 a0 e1                                      mov r4, r0
006410c8  01 60 a0 e1                                      mov r6, r1
006410cc  03 00 80 e0                                      add r0, r0, r3
006410d0  03 30 94 e7                                      ldr r3, [r4, r3]
006410d4  0f e0 a0 e1                                      mov lr, pc
006410d8  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006410dc  00 30 94 e5                                      ldr r3, [r4]
006410e0  00 50 a0 e1                                      mov r5, r0
006410e4  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006410e8  03 00 84 e0                                      add r0, r4, r3
006410ec  03 30 94 e7                                      ldr r3, [r4, r3]
006410f0  0f e0 a0 e1                                      mov lr, pc
006410f4  20 f0 93 e5                                      ldr pc, [r3, #0x20]
006410f8  00 10 50 e2                                      subs r1, r0, #0
006410fc  1a 01 00 0a                                      beq #0x64156c
00641100  00 30 94 e5                                      ldr r3, [r4]
00641104  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00641108  03 00 84 e0                                      add r0, r4, r3
0064110c  03 30 94 e7                                      ldr r3, [r4, r3]
00641110  0f e0 a0 e1                                      mov lr, pc
00641114  20 f0 93 e5                                      ldr pc, [r3, #0x20]
00641118  00 10 a0 e1                                      mov r1, r0
0064111c  20 00 8d e2                                      add r0, sp, #0x20
00641120  e8 ee ff eb                                      bl #0x63ccc8
00641124  38 00 94 e5                                      ldr r0, [r4, #0x38]
00641128  00 10 a0 e1                                      mov r1, r0
0064112c  9c 36 f3 eb                                      bl #0x30eba4
00641130  04 00 8d e5                                      str r0, [sp, #4]
00641134  20 00 94 e5                                      ldr r0, [r4, #0x20]
00641138  00 10 a0 e1                                      mov r1, r0
0064113c  98 36 f3 eb                                      bl #0x30eba4
00641140  00 70 a0 e1                                      mov r7, r0
00641144  05 00 a0 e1                                      mov r0, r5
00641148  4a bb ff eb                                      bl #0x62fe78
0064114c  53 35 f3 eb                                      bl #0x30e6a0
00641150  00 10 a0 e1                                      mov r1, r0
00641154  07 00 a0 e1                                      mov r0, r7
00641158  03 37 f3 eb                                      bl #0x30ed6c
0064115c  bf 14 a0 e3                                      mov r1, #0xbf000000
00641160  00 80 a0 e1                                      mov r8, r0
00641164  07 00 a0 e1                                      mov r0, r7
00641168  ff 36 f3 eb                                      bl #0x30ed6c
0064116c  00 10 a0 e1                                      mov r1, r0
00641170  08 00 a0 e1                                      mov r0, r8
00641174  8a 36 f3 eb                                      bl #0x30eba4
00641178  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0064117c  10 00 8d e5                                      str r0, [sp, #0x10]
00641180  03 00 56 e1                                      cmp r6, r3
00641184  e7 00 00 0a                                      beq #0x641528
00641188  00 30 a0 e3                                      mov r3, #0
0064118c  80 30 8d e5                                      str r3, [sp, #0x80]
00641190  7c 30 8d e5                                      str r3, [sp, #0x7c]
00641194  fc 33 9f e5                                      ldr r3, [pc, #0x3fc]
00641198  fe 25 a0 e3                                      mov r2, #0x3f800000
0064119c  84 20 8d e5                                      str r2, [sp, #0x84]
006411a0  03 30 8f e0                                      add r3, pc, r3
006411a4  14 30 8d e5                                      str r3, [sp, #0x14]
006411a8  7c 30 8d e2                                      add r3, sp, #0x7c
006411ac  08 30 8d e5                                      str r3, [sp, #8]
006411b0  70 30 8d e2                                      add r3, sp, #0x70
006411b4  18 30 8d e5                                      str r3, [sp, #0x18]
006411b8  64 30 8d e2                                      add r3, sp, #0x64
006411bc  1c 30 8d e5                                      str r3, [sp, #0x1c]
006411c0  48 00 00 ea                                      b #0x6412e8
006411c4  08 00 94 e5                                      ldr r0, [r4, #8]
006411c8  00 10 a0 e3                                      mov r1, #0
006411cc  6e 33 f3 eb                                      bl #0x30df8c
006411d0  00 00 50 e3                                      cmp r0, #0
006411d4  4e 00 00 0a                                      beq #0x641314
006411d8  0c 00 94 e5                                      ldr r0, [r4, #0xc]
006411dc  00 10 a0 e3                                      mov r1, #0
006411e0  69 33 f3 eb                                      bl #0x30df8c
006411e4  00 00 50 e3                                      cmp r0, #0
006411e8  49 00 00 0a                                      beq #0x641314
006411ec  10 00 94 e5                                      ldr r0, [r4, #0x10]
006411f0  00 10 a0 e3                                      mov r1, #0
006411f4  64 33 f3 eb                                      bl #0x30df8c
006411f8  00 00 50 e3                                      cmp r0, #0
006411fc  44 00 00 0a                                      beq #0x641314
00641200  14 00 94 e5                                      ldr r0, [r4, #0x14]
00641204  00 10 a0 e3                                      mov r1, #0
00641208  5f 33 f3 eb                                      bl #0x30df8c
0064120c  00 00 50 e3                                      cmp r0, #0
00641210  3f 00 00 0a                                      beq #0x641314
00641214  18 00 94 e5                                      ldr r0, [r4, #0x18]
00641218  00 10 a0 e3                                      mov r1, #0
0064121c  5a 33 f3 eb                                      bl #0x30df8c
00641220  00 00 50 e3                                      cmp r0, #0
00641224  3a 00 00 0a                                      beq #0x641314
00641228  18 00 9d e5                                      ldr r0, [sp, #0x18]
0064122c  05 10 a0 e1                                      mov r1, r5
00641230  23 da ff eb                                      bl #0x637ac4
00641234  14 30 9d e5                                      ldr r3, [sp, #0x14]
00641238  74 00 9d e5                                      ldr r0, [sp, #0x74]
0064123c  20 10 93 e5                                      ldr r1, [r3, #0x20]
00641240  59 34 f3 eb                                      bl #0x30e3ac
00641244  14 30 9d e5                                      ldr r3, [sp, #0x14]
00641248  00 70 a0 e1                                      mov r7, r0
0064124c  78 00 9d e5                                      ldr r0, [sp, #0x78]
00641250  24 10 93 e5                                      ldr r1, [r3, #0x24]
00641254  54 34 f3 eb                                      bl #0x30e3ac
00641258  14 30 9d e5                                      ldr r3, [sp, #0x14]
0064125c  00 80 a0 e1                                      mov r8, r0
00641260  70 00 9d e5                                      ldr r0, [sp, #0x70]
00641264  1c 10 93 e5                                      ldr r1, [r3, #0x1c]
00641268  4f 34 f3 eb                                      bl #0x30e3ac
0064126c  64 00 8d e5                                      str r0, [sp, #0x64]
00641270  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00641274  68 70 8d e5                                      str r7, [sp, #0x68]
00641278  6c 80 8d e5                                      str r8, [sp, #0x6c]
0064127c  97 75 f4 eb                                      bl #0x35e8e0
00641280  00 b0 90 e5                                      ldr fp, [r0]
00641284  00 30 a0 e1                                      mov r3, r0
00641288  09 00 a0 e1                                      mov r0, sb
0064128c  0c b0 86 e5                                      str fp, [r6, #0xc]
00641290  04 70 93 e5                                      ldr r7, [r3, #4]
00641294  10 70 86 e5                                      str r7, [r6, #0x10]
00641298  08 80 93 e5                                      ldr r8, [r3, #8]
0064129c  14 80 86 e5                                      str r8, [r6, #0x14]
006412a0  34 10 94 e5                                      ldr r1, [r4, #0x34]
006412a4  3e 36 f3 eb                                      bl #0x30eba4
006412a8  0b 10 a0 e1                                      mov r1, fp
006412ac  00 a0 a0 e1                                      mov sl, r0
006412b0  ad 36 f3 eb                                      bl #0x30ed6c
006412b4  07 10 a0 e1                                      mov r1, r7
006412b8  0c 00 86 e5                                      str r0, [r6, #0xc]
006412bc  0a 00 a0 e1                                      mov r0, sl
006412c0  a9 36 f3 eb                                      bl #0x30ed6c
006412c4  08 10 a0 e1                                      mov r1, r8
006412c8  10 00 86 e5                                      str r0, [r6, #0x10]
006412cc  0a 00 a0 e1                                      mov r0, sl
006412d0  a5 36 f3 eb                                      bl #0x30ed6c
006412d4  14 00 86 e5                                      str r0, [r6, #0x14]
006412d8  0c 30 9d e5                                      ldr r3, [sp, #0xc]
006412dc  9c 60 86 e2                                      add r6, r6, #0x9c
006412e0  06 00 53 e1                                      cmp r3, r6
006412e4  8f 00 00 0a                                      beq #0x641528
006412e8  04 00 9d e5                                      ldr r0, [sp, #4]
006412ec  00 10 a0 e3                                      mov r1, #0
006412f0  25 33 f3 eb                                      bl #0x30df8c
006412f4  00 00 50 e3                                      cmp r0, #0
006412f8  00 90 a0 13                                      movne sb, #0
006412fc  8b 00 00 0a                                      beq #0x641530
00641300  04 00 94 e5                                      ldr r0, [r4, #4]
00641304  00 10 a0 e3                                      mov r1, #0
00641308  1f 33 f3 eb                                      bl #0x30df8c
0064130c  00 00 50 e3                                      cmp r0, #0
00641310  ab ff ff 1a                                      bne #0x6411c4
00641314  05 00 a0 e1                                      mov r0, r5
00641318  d6 ba ff eb                                      bl #0x62fe78
0064131c  df 34 f3 eb                                      bl #0x30e6a0
00641320  00 10 a0 e1                                      mov r1, r0
00641324  1e 36 f3 eb                                      bl #0x30eba4
00641328  fe 15 a0 e3                                      mov r1, #0x3f800000
0064132c  1e 34 f3 eb                                      bl #0x30e3ac
00641330  10 10 94 e5                                      ldr r1, [r4, #0x10]
00641334  8c 36 f3 eb                                      bl #0x30ed6c
00641338  00 a0 a0 e1                                      mov sl, r0
0064133c  05 00 a0 e1                                      mov r0, r5
00641340  cc ba ff eb                                      bl #0x62fe78
00641344  d5 34 f3 eb                                      bl #0x30e6a0
00641348  00 10 a0 e1                                      mov r1, r0
0064134c  14 36 f3 eb                                      bl #0x30eba4
00641350  fe 15 a0 e3                                      mov r1, #0x3f800000
00641354  14 34 f3 eb                                      bl #0x30e3ac
00641358  14 10 94 e5                                      ldr r1, [r4, #0x14]
0064135c  82 36 f3 eb                                      bl #0x30ed6c
00641360  00 80 a0 e1                                      mov r8, r0
00641364  05 00 a0 e1                                      mov r0, r5
00641368  c2 ba ff eb                                      bl #0x62fe78
0064136c  cb 34 f3 eb                                      bl #0x30e6a0
00641370  00 10 a0 e1                                      mov r1, r0
00641374  0a 36 f3 eb                                      bl #0x30eba4
00641378  fe 15 a0 e3                                      mov r1, #0x3f800000
0064137c  0a 34 f3 eb                                      bl #0x30e3ac
00641380  18 10 94 e5                                      ldr r1, [r4, #0x18]
00641384  78 36 f3 eb                                      bl #0x30ed6c
00641388  04 10 94 e5                                      ldr r1, [r4, #4]
0064138c  00 70 a0 e1                                      mov r7, r0
00641390  0a 00 a0 e1                                      mov r0, sl
00641394  02 36 f3 eb                                      bl #0x30eba4
00641398  08 10 94 e5                                      ldr r1, [r4, #8]
0064139c  00 a0 a0 e1                                      mov sl, r0
006413a0  08 00 a0 e1                                      mov r0, r8
006413a4  fe 35 f3 eb                                      bl #0x30eba4
006413a8  0c 10 94 e5                                      ldr r1, [r4, #0xc]
006413ac  00 80 a0 e1                                      mov r8, r0
006413b0  07 00 a0 e1                                      mov r0, r7
006413b4  fa 35 f3 eb                                      bl #0x30eba4
006413b8  20 10 9d e5                                      ldr r1, [sp, #0x20]
006413bc  00 70 a0 e1                                      mov r7, r0
006413c0  0a 00 a0 e1                                      mov r0, sl
006413c4  68 36 f3 eb                                      bl #0x30ed6c
006413c8  30 10 9d e5                                      ldr r1, [sp, #0x30]
006413cc  00 b0 a0 e1                                      mov fp, r0
006413d0  08 00 a0 e1                                      mov r0, r8
006413d4  64 36 f3 eb                                      bl #0x30ed6c
006413d8  00 10 a0 e1                                      mov r1, r0
006413dc  0b 00 a0 e1                                      mov r0, fp
006413e0  ef 35 f3 eb                                      bl #0x30eba4
006413e4  40 10 9d e5                                      ldr r1, [sp, #0x40]
006413e8  00 b0 a0 e1                                      mov fp, r0
006413ec  07 00 a0 e1                                      mov r0, r7
006413f0  5d 36 f3 eb                                      bl #0x30ed6c
006413f4  00 10 a0 e1                                      mov r1, r0
006413f8  0b 00 a0 e1                                      mov r0, fp
006413fc  e8 35 f3 eb                                      bl #0x30eba4
00641400  24 10 9d e5                                      ldr r1, [sp, #0x24]
00641404  7c 00 8d e5                                      str r0, [sp, #0x7c]
00641408  0a 00 a0 e1                                      mov r0, sl
0064140c  56 36 f3 eb                                      bl #0x30ed6c
00641410  34 10 9d e5                                      ldr r1, [sp, #0x34]
00641414  00 b0 a0 e1                                      mov fp, r0
00641418  08 00 a0 e1                                      mov r0, r8
0064141c  52 36 f3 eb                                      bl #0x30ed6c
00641420  00 10 a0 e1                                      mov r1, r0
00641424  0b 00 a0 e1                                      mov r0, fp
00641428  dd 35 f3 eb                                      bl #0x30eba4
0064142c  44 10 9d e5                                      ldr r1, [sp, #0x44]
00641430  00 b0 a0 e1                                      mov fp, r0
00641434  07 00 a0 e1                                      mov r0, r7
00641438  4b 36 f3 eb                                      bl #0x30ed6c
0064143c  00 10 a0 e1                                      mov r1, r0
00641440  0b 00 a0 e1                                      mov r0, fp
00641444  d6 35 f3 eb                                      bl #0x30eba4
00641448  28 10 9d e5                                      ldr r1, [sp, #0x28]
0064144c  80 00 8d e5                                      str r0, [sp, #0x80]
00641450  0a 00 a0 e1                                      mov r0, sl
00641454  44 36 f3 eb                                      bl #0x30ed6c
00641458  38 10 9d e5                                      ldr r1, [sp, #0x38]
0064145c  00 a0 a0 e1                                      mov sl, r0
00641460  08 00 a0 e1                                      mov r0, r8
00641464  40 36 f3 eb                                      bl #0x30ed6c
00641468  00 10 a0 e1                                      mov r1, r0
0064146c  0a 00 a0 e1                                      mov r0, sl
00641470  cb 35 f3 eb                                      bl #0x30eba4
00641474  48 10 9d e5                                      ldr r1, [sp, #0x48]
00641478  00 80 a0 e1                                      mov r8, r0
0064147c  07 00 a0 e1                                      mov r0, r7
00641480  39 36 f3 eb                                      bl #0x30ed6c
00641484  00 10 a0 e1                                      mov r1, r0
00641488  08 00 a0 e1                                      mov r0, r8
0064148c  c4 35 f3 eb                                      bl #0x30eba4
00641490  84 00 8d e5                                      str r0, [sp, #0x84]
00641494  08 00 9d e5                                      ldr r0, [sp, #8]
00641498  10 75 f4 eb                                      bl #0x35e8e0
0064149c  00 20 90 e5                                      ldr r2, [r0]
006414a0  00 30 a0 e1                                      mov r3, r0
006414a4  08 00 9d e5                                      ldr r0, [sp, #8]
006414a8  18 20 86 e5                                      str r2, [r6, #0x18]
006414ac  04 20 93 e5                                      ldr r2, [r3, #4]
006414b0  1c 20 86 e5                                      str r2, [r6, #0x1c]
006414b4  08 30 93 e5                                      ldr r3, [r3, #8]
006414b8  20 30 86 e5                                      str r3, [r6, #0x20]
006414bc  07 75 f4 eb                                      bl #0x35e8e0
006414c0  34 10 94 e5                                      ldr r1, [r4, #0x34]
006414c4  00 70 a0 e1                                      mov r7, r0
006414c8  09 00 a0 e1                                      mov r0, sb
006414cc  b4 35 f3 eb                                      bl #0x30eba4
006414d0  04 10 97 e5                                      ldr r1, [r7, #4]
006414d4  00 80 a0 e1                                      mov r8, r0
006414d8  23 36 f3 eb                                      bl #0x30ed6c
006414dc  08 10 97 e5                                      ldr r1, [r7, #8]
006414e0  00 90 a0 e1                                      mov sb, r0
006414e4  08 00 a0 e1                                      mov r0, r8
006414e8  1f 36 f3 eb                                      bl #0x30ed6c
006414ec  00 10 97 e5                                      ldr r1, [r7]
006414f0  00 a0 a0 e1                                      mov sl, r0
006414f4  08 00 a0 e1                                      mov r0, r8
006414f8  1b 36 f3 eb                                      bl #0x30ed6c
006414fc  10 90 86 e5                                      str sb, [r6, #0x10]
00641500  0c 00 86 e5                                      str r0, [r6, #0xc]
00641504  14 a0 86 e5                                      str sl, [r6, #0x14]
00641508  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
0064150c  10 10 9d e5                                      ldr r1, [sp, #0x10]
00641510  a3 35 f3 eb                                      bl #0x30eba4
00641514  94 00 86 e5                                      str r0, [r6, #0x94]
00641518  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0064151c  9c 60 86 e2                                      add r6, r6, #0x9c
00641520  06 00 53 e1                                      cmp r3, r6
00641524  6f ff ff 1a                                      bne #0x6412e8
00641528  8c d0 8d e2                                      add sp, sp, #0x8c
0064152c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00641530  05 00 a0 e1                                      mov r0, r5
00641534  4f ba ff eb                                      bl #0x62fe78
00641538  58 34 f3 eb                                      bl #0x30e6a0
0064153c  00 10 a0 e1                                      mov r1, r0
00641540  04 00 9d e5                                      ldr r0, [sp, #4]
00641544  08 36 f3 eb                                      bl #0x30ed6c
00641548  bf 14 a0 e3                                      mov r1, #0xbf000000
0064154c  00 70 a0 e1                                      mov r7, r0
00641550  04 00 9d e5                                      ldr r0, [sp, #4]
00641554  04 36 f3 eb                                      bl #0x30ed6c
00641558  00 10 a0 e1                                      mov r1, r0
0064155c  07 00 a0 e1                                      mov r0, r7
00641560  8f 35 f3 eb                                      bl #0x30eba4
00641564  00 90 a0 e1                                      mov sb, r0
00641568  64 ff ff ea                                      b #0x641300
0064156c  40 20 a0 e3                                      mov r2, #0x40
00641570  20 00 8d e2                                      add r0, sp, #0x20
00641574  b9 33 f3 eb                                      bl #0x30e460
00641578  fe 35 a0 e3                                      mov r3, #0x3f800000
0064157c  01 20 a0 e3                                      mov r2, #1
00641580  60 20 cd e5                                      strb r2, [sp, #0x60]
00641584  5c 30 8d e5                                      str r3, [sp, #0x5c]
00641588  20 30 8d e5                                      str r3, [sp, #0x20]
0064158c  34 30 8d e5                                      str r3, [sp, #0x34]
00641590  48 30 8d e5                                      str r3, [sp, #0x48]
00641594  e2 fe ff ea                                      b #0x641124
; mapping-symbol data/literal pool
00641598  a8 5d 3b 00                                      .byte 0xa8, 0x5d, 0x3b, 0x00

; FUNCTION 0x0064159c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>
; alias: _ZTv0_n88_N6glitch2ps15GNPSMotionModelINS0_12GNPSParticleEE11initPMotionEPS2_S4_
; demangled: virtual thunk to glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>::initPMotion(glitch::ps::GNPSParticle*, glitch::ps::GNPSParticle*)
; decoder-mode: arm
0064159c  00 30 90 e5                                      ldr r3, [r0]
006415a0  58 30 13 e5                                      ldr r3, [r3, #-0x58]
006415a4  03 00 80 e0                                      add r0, r0, r3
006415a8  c0 fe ff ea                                      b #0x6410b0

; FUNCTION 0x00641724, declared_size=696, range_size=696, mode=arm
; class-group: glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>
; alias: _ZN6glitch2ps15GNPSMotionModelINS0_12GNPSParticleEEC2Ev
; demangled: glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>::GNPSMotionModel()
; decoder-mode: arm
00641724  30 40 2d e9                                      push {r4, r5, lr}
00641728  00 30 91 e5                                      ldr r3, [r1]
0064172c  00 40 a0 e1                                      mov r4, r0
00641730  00 20 a0 e3                                      mov r2, #0
00641734  00 30 80 e5                                      str r3, [r0]
00641738  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
0064173c  04 10 91 e5                                      ldr r1, [r1, #4]
00641740  00 30 a0 e3                                      mov r3, #0
00641744  a4 d0 4d e2                                      sub sp, sp, #0xa4
00641748  00 10 84 e7                                      str r1, [r4, r0]
0064174c  00 10 94 e5                                      ldr r1, [r4]
00641750  28 30 84 e5                                      str r3, [r4, #0x28]
00641754  38 20 84 e5                                      str r2, [r4, #0x38]
00641758  04 20 84 e5                                      str r2, [r4, #4]
0064175c  08 20 84 e5                                      str r2, [r4, #8]
00641760  0c 20 84 e5                                      str r2, [r4, #0xc]
00641764  10 20 84 e5                                      str r2, [r4, #0x10]
00641768  14 20 84 e5                                      str r2, [r4, #0x14]
0064176c  18 20 84 e5                                      str r2, [r4, #0x18]
00641770  24 30 84 e5                                      str r3, [r4, #0x24]
00641774  2c 20 84 e5                                      str r2, [r4, #0x2c]
00641778  34 20 84 e5                                      str r2, [r4, #0x34]
0064177c  0c 50 11 e5                                      ldr r5, [r1, #-0xc]
00641780  2c 12 9f e5                                      ldr r1, [pc, #0x22c]
00641784  05 50 84 e0                                      add r5, r4, r5
00641788  01 10 8f e0                                      add r1, pc, r1
0064178c  05 00 a0 e1                                      mov r0, r5
00641790  2d e7 ff eb                                      bl #0x63b44c
00641794  90 20 8d e2                                      add r2, sp, #0x90
00641798  04 30 84 e2                                      add r3, r4, #4
0064179c  90 00 8d e5                                      str r0, [sp, #0x90]
006417a0  30 10 85 e2                                      add r1, r5, #0x30
006417a4  98 00 8d e2                                      add r0, sp, #0x98
006417a8  94 30 8d e5                                      str r3, [sp, #0x94]
006417ac  4e e4 ff eb                                      bl #0x63a8ec
006417b0  00 30 94 e5                                      ldr r3, [r4]
006417b4  fc 11 9f e5                                      ldr r1, [pc, #0x1fc]
006417b8  0c 50 13 e5                                      ldr r5, [r3, #-0xc]
006417bc  01 10 8f e0                                      add r1, pc, r1
006417c0  05 50 84 e0                                      add r5, r4, r5
006417c4  05 00 a0 e1                                      mov r0, r5
006417c8  1f e7 ff eb                                      bl #0x63b44c
006417cc  80 20 8d e2                                      add r2, sp, #0x80
006417d0  10 30 84 e2                                      add r3, r4, #0x10
006417d4  80 00 8d e5                                      str r0, [sp, #0x80]
006417d8  30 10 85 e2                                      add r1, r5, #0x30
006417dc  88 00 8d e2                                      add r0, sp, #0x88
006417e0  84 30 8d e5                                      str r3, [sp, #0x84]
006417e4  40 e4 ff eb                                      bl #0x63a8ec
006417e8  00 30 94 e5                                      ldr r3, [r4]
006417ec  c8 11 9f e5                                      ldr r1, [pc, #0x1c8]
006417f0  0c 50 13 e5                                      ldr r5, [r3, #-0xc]
006417f4  01 10 8f e0                                      add r1, pc, r1
006417f8  05 50 84 e0                                      add r5, r4, r5
006417fc  05 00 a0 e1                                      mov r0, r5
00641800  11 e7 ff eb                                      bl #0x63b44c
00641804  70 20 8d e2                                      add r2, sp, #0x70
00641808  2c 30 84 e2                                      add r3, r4, #0x2c
0064180c  70 00 8d e5                                      str r0, [sp, #0x70]
00641810  30 10 85 e2                                      add r1, r5, #0x30
00641814  78 00 8d e2                                      add r0, sp, #0x78
00641818  74 30 8d e5                                      str r3, [sp, #0x74]
0064181c  32 e4 ff eb                                      bl #0x63a8ec
00641820  00 30 94 e5                                      ldr r3, [r4]
00641824  94 11 9f e5                                      ldr r1, [pc, #0x194]
00641828  0c 50 13 e5                                      ldr r5, [r3, #-0xc]
0064182c  01 10 8f e0                                      add r1, pc, r1
00641830  05 50 84 e0                                      add r5, r4, r5
00641834  05 00 a0 e1                                      mov r0, r5
00641838  03 e7 ff eb                                      bl #0x63b44c
0064183c  60 20 8d e2                                      add r2, sp, #0x60
00641840  1c 30 84 e2                                      add r3, r4, #0x1c
00641844  60 00 8d e5                                      str r0, [sp, #0x60]
00641848  30 10 85 e2                                      add r1, r5, #0x30
0064184c  68 00 8d e2                                      add r0, sp, #0x68
00641850  64 30 8d e5                                      str r3, [sp, #0x64]
00641854  24 e4 ff eb                                      bl #0x63a8ec
00641858  00 30 94 e5                                      ldr r3, [r4]
0064185c  60 11 9f e5                                      ldr r1, [pc, #0x160]
00641860  0c 50 13 e5                                      ldr r5, [r3, #-0xc]
00641864  01 10 8f e0                                      add r1, pc, r1
00641868  05 50 84 e0                                      add r5, r4, r5
0064186c  05 00 a0 e1                                      mov r0, r5
00641870  f5 e6 ff eb                                      bl #0x63b44c
00641874  50 20 8d e2                                      add r2, sp, #0x50
00641878  20 30 84 e2                                      add r3, r4, #0x20
0064187c  50 00 8d e5                                      str r0, [sp, #0x50]
00641880  30 10 85 e2                                      add r1, r5, #0x30
00641884  58 00 8d e2                                      add r0, sp, #0x58
00641888  54 30 8d e5                                      str r3, [sp, #0x54]
0064188c  16 e4 ff eb                                      bl #0x63a8ec
00641890  00 30 94 e5                                      ldr r3, [r4]
00641894  2c 11 9f e5                                      ldr r1, [pc, #0x12c]
00641898  0c 50 13 e5                                      ldr r5, [r3, #-0xc]
0064189c  01 10 8f e0                                      add r1, pc, r1
006418a0  05 50 84 e0                                      add r5, r4, r5
006418a4  05 00 a0 e1                                      mov r0, r5
006418a8  e7 e6 ff eb                                      bl #0x63b44c
006418ac  40 20 8d e2                                      add r2, sp, #0x40
006418b0  30 30 84 e2                                      add r3, r4, #0x30
006418b4  40 00 8d e5                                      str r0, [sp, #0x40]
006418b8  30 10 85 e2                                      add r1, r5, #0x30
006418bc  48 00 8d e2                                      add r0, sp, #0x48
006418c0  44 30 8d e5                                      str r3, [sp, #0x44]
006418c4  08 e4 ff eb                                      bl #0x63a8ec
006418c8  00 30 94 e5                                      ldr r3, [r4]
006418cc  f8 10 9f e5                                      ldr r1, [pc, #0xf8]
006418d0  0c 50 13 e5                                      ldr r5, [r3, #-0xc]
006418d4  01 10 8f e0                                      add r1, pc, r1
006418d8  05 50 84 e0                                      add r5, r4, r5
006418dc  05 00 a0 e1                                      mov r0, r5
006418e0  d9 e6 ff eb                                      bl #0x63b44c
006418e4  30 20 8d e2                                      add r2, sp, #0x30
006418e8  24 30 84 e2                                      add r3, r4, #0x24
006418ec  30 00 8d e5                                      str r0, [sp, #0x30]
006418f0  30 10 85 e2                                      add r1, r5, #0x30
006418f4  38 00 8d e2                                      add r0, sp, #0x38
006418f8  34 30 8d e5                                      str r3, [sp, #0x34]
006418fc  fa e3 ff eb                                      bl #0x63a8ec
00641900  00 30 94 e5                                      ldr r3, [r4]
00641904  c4 10 9f e5                                      ldr r1, [pc, #0xc4]
00641908  0c 50 13 e5                                      ldr r5, [r3, #-0xc]
0064190c  01 10 8f e0                                      add r1, pc, r1
00641910  05 50 84 e0                                      add r5, r4, r5
00641914  05 00 a0 e1                                      mov r0, r5
00641918  cb e6 ff eb                                      bl #0x63b44c
0064191c  20 20 8d e2                                      add r2, sp, #0x20
00641920  28 30 84 e2                                      add r3, r4, #0x28
00641924  20 00 8d e5                                      str r0, [sp, #0x20]
00641928  30 10 85 e2                                      add r1, r5, #0x30
0064192c  28 00 8d e2                                      add r0, sp, #0x28
00641930  24 30 8d e5                                      str r3, [sp, #0x24]
00641934  ec e3 ff eb                                      bl #0x63a8ec
00641938  00 30 94 e5                                      ldr r3, [r4]
0064193c  90 10 9f e5                                      ldr r1, [pc, #0x90]
00641940  0c 50 13 e5                                      ldr r5, [r3, #-0xc]
00641944  01 10 8f e0                                      add r1, pc, r1
00641948  05 50 84 e0                                      add r5, r4, r5
0064194c  05 00 a0 e1                                      mov r0, r5
00641950  bd e6 ff eb                                      bl #0x63b44c
00641954  10 20 8d e2                                      add r2, sp, #0x10
00641958  34 30 84 e2                                      add r3, r4, #0x34
0064195c  10 00 8d e5                                      str r0, [sp, #0x10]
00641960  30 10 85 e2                                      add r1, r5, #0x30
00641964  18 00 8d e2                                      add r0, sp, #0x18
00641968  14 30 8d e5                                      str r3, [sp, #0x14]
0064196c  de e3 ff eb                                      bl #0x63a8ec
00641970  00 30 94 e5                                      ldr r3, [r4]
00641974  5c 10 9f e5                                      ldr r1, [pc, #0x5c]
00641978  0c 50 13 e5                                      ldr r5, [r3, #-0xc]
0064197c  01 10 8f e0                                      add r1, pc, r1
00641980  05 50 84 e0                                      add r5, r4, r5
00641984  05 00 a0 e1                                      mov r0, r5
00641988  af e6 ff eb                                      bl #0x63b44c
0064198c  38 30 84 e2                                      add r3, r4, #0x38
00641990  00 00 8d e5                                      str r0, [sp]
00641994  30 10 85 e2                                      add r1, r5, #0x30
00641998  08 00 8d e2                                      add r0, sp, #8
0064199c  0d 20 a0 e1                                      mov r2, sp
006419a0  04 30 8d e5                                      str r3, [sp, #4]
006419a4  d0 e3 ff eb                                      bl #0x63a8ec
006419a8  04 00 a0 e1                                      mov r0, r4
006419ac  a4 d0 8d e2                                      add sp, sp, #0xa4
006419b0  30 80 bd e8                                      pop {r4, r5, pc}
; mapping-symbol data/literal pool
006419b4  a0 3a 2a 00 7c 3a 2a 00 94 39 2a 00 24 3a 2a 00  .byte 0xa0, 0x3a, 0x2a, 0x00, 0x7c, 0x3a, 0x2a, 0x00, 0x94, 0x39, 0x2a, 0x00, 0x24, 0x3a, 0x2a, 0x00
006419c4  fc 39 2a 00 34 39 2a 00 a4 39 2a 00 84 39 2a 00  .byte 0xfc, 0x39, 0x2a, 0x00, 0x34, 0x39, 0x2a, 0x00, 0xa4, 0x39, 0x2a, 0x00, 0x84, 0x39, 0x2a, 0x00
006419d4  ac 7a 29 00 34 39 2a 00                          .byte 0xac, 0x7a, 0x29, 0x00, 0x34, 0x39, 0x2a, 0x00

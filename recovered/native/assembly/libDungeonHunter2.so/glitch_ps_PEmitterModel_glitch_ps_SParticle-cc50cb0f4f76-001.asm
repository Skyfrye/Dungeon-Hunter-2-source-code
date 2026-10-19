; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0064c08c, declared_size=224, range_size=224, mode=arm
; class-group: glitch::ps::PEmitterModel<glitch::ps::SParticle>
; alias: _ZN6glitch2ps13PEmitterModelINS0_9SParticleEE13initPPositionEPS2_S4_
; demangled: glitch::ps::PEmitterModel<glitch::ps::SParticle>::initPPosition(glitch::ps::SParticle*, glitch::ps::SParticle*)
; decoder-mode: arm
0064c08c  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0064c090  00 30 90 e5                                      ldr r3, [r0]
0064c094  00 50 a0 e1                                      mov r5, r0
0064c098  14 d0 4d e2                                      sub sp, sp, #0x14
0064c09c  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0064c0a0  02 60 a0 e1                                      mov r6, r2
0064c0a4  01 40 a0 e1                                      mov r4, r1
0064c0a8  03 00 80 e0                                      add r0, r0, r3
0064c0ac  03 30 95 e7                                      ldr r3, [r5, r3]
0064c0b0  0f e0 a0 e1                                      mov lr, pc
0064c0b4  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0064c0b8  00 30 95 e5                                      ldr r3, [r5]
0064c0bc  00 70 a0 e1                                      mov r7, r0
0064c0c0  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0064c0c4  03 00 85 e0                                      add r0, r5, r3
0064c0c8  54 20 d0 e5                                      ldrb r2, [r0, #0x54]
0064c0cc  00 00 52 e3                                      cmp r2, #0
0064c0d0  14 00 00 0a                                      beq #0x64c128
0064c0d4  06 00 54 e1                                      cmp r4, r6
0064c0d8  10 00 00 0a                                      beq #0x64c120
0064c0dc  04 80 8d e2                                      add r8, sp, #4
0064c0e0  04 30 95 e5                                      ldr r3, [r5, #4]
0064c0e4  07 20 a0 e1                                      mov r2, r7
0064c0e8  08 00 a0 e1                                      mov r0, r8
0064c0ec  03 10 a0 e1                                      mov r1, r3
0064c0f0  00 30 93 e5                                      ldr r3, [r3]
0064c0f4  0f e0 a0 e1                                      mov lr, pc
0064c0f8  04 f0 93 e5                                      ldr pc, [r3, #4]
0064c0fc  08 20 9d e5                                      ldr r2, [sp, #8]
0064c100  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0064c104  04 10 9d e5                                      ldr r1, [sp, #4]
0064c108  04 20 84 e5                                      str r2, [r4, #4]
0064c10c  08 30 84 e5                                      str r3, [r4, #8]
0064c110  00 10 84 e5                                      str r1, [r4]
0064c114  64 40 84 e2                                      add r4, r4, #0x64
0064c118  04 00 56 e1                                      cmp r6, r4
0064c11c  ef ff ff 1a                                      bne #0x64c0e0
0064c120  14 d0 8d e2                                      add sp, sp, #0x14
0064c124  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0064c128  03 30 95 e7                                      ldr r3, [r5, r3]
0064c12c  0f e0 a0 e1                                      mov lr, pc
0064c130  20 f0 93 e5                                      ldr pc, [r3, #0x20]
0064c134  00 00 50 e3                                      cmp r0, #0
0064c138  e5 ff ff 0a                                      beq #0x64c0d4
0064c13c  08 04 95 e8                                      ldm r5, {r3, sl}
0064c140  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0064c144  00 20 9a e5                                      ldr r2, [sl]
0064c148  03 00 85 e0                                      add r0, r5, r3
0064c14c  03 30 95 e7                                      ldr r3, [r5, r3]
0064c150  08 80 92 e5                                      ldr r8, [r2, #8]
0064c154  0f e0 a0 e1                                      mov lr, pc
0064c158  20 f0 93 e5                                      ldr pc, [r3, #0x20]
0064c15c  00 10 a0 e1                                      mov r1, r0
0064c160  0a 00 a0 e1                                      mov r0, sl
0064c164  38 ff 2f e1                                      blx r8
0064c168  d9 ff ff ea                                      b #0x64c0d4

; FUNCTION 0x0064c16c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::PEmitterModel<glitch::ps::SParticle>
; alias: _ZTv0_n80_N6glitch2ps13PEmitterModelINS0_9SParticleEE13initPPositionEPS2_S4_
; demangled: virtual thunk to glitch::ps::PEmitterModel<glitch::ps::SParticle>::initPPosition(glitch::ps::SParticle*, glitch::ps::SParticle*)
; decoder-mode: arm
0064c16c  00 30 90 e5                                      ldr r3, [r0]
0064c170  50 30 13 e5                                      ldr r3, [r3, #-0x50]
0064c174  03 00 80 e0                                      add r0, r0, r3
0064c178  c3 ff ff ea                                      b #0x64c08c

; FUNCTION 0x0064d3f0, declared_size=96, range_size=96, mode=arm
; class-group: glitch::ps::PEmitterModel<glitch::ps::SParticle>
; alias: _ZN6glitch2ps13PEmitterModelINS0_9SParticleEED1Ev
; demangled: glitch::ps::PEmitterModel<glitch::ps::SParticle>::~PEmitterModel()
; decoder-mode: arm
0064d3f0  50 20 9f e5                                      ldr r2, [pc, #0x50]
0064d3f4  50 30 9f e5                                      ldr r3, [pc, #0x50]
0064d3f8  70 40 2d e9                                      push {r4, r5, r6, lr}
0064d3fc  02 20 8f e0                                      add r2, pc, r2
0064d400  03 30 92 e7                                      ldr r3, [r2, r3]
0064d404  00 50 a0 e1                                      mov r5, r0
0064d408  00 40 a0 e1                                      mov r4, r0
0064d40c  0c 20 83 e2                                      add r2, r3, #0xc
0064d410  18 20 85 e4                                      str r2, [r5], #0x18
0064d414  04 20 90 e5                                      ldr r2, [r0, #4]
0064d418  b4 30 83 e2                                      add r3, r3, #0xb4
0064d41c  18 30 80 e5                                      str r3, [r0, #0x18]
0064d420  00 00 52 e3                                      cmp r2, #0
0064d424  03 00 00 0a                                      beq #0x64d438
0064d428  02 00 a0 e1                                      mov r0, r2
0064d42c  00 30 92 e5                                      ldr r3, [r2]
0064d430  0f e0 a0 e1                                      mov lr, pc
0064d434  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0064d438  05 00 a0 e1                                      mov r0, r5
0064d43c  95 ff ff eb                                      bl #0x64d298
0064d440  04 00 a0 e1                                      mov r0, r4
0064d444  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0064d448  94 76 34 00 98 48 00 00                          .byte 0x94, 0x76, 0x34, 0x00, 0x98, 0x48, 0x00, 0x00

; FUNCTION 0x0064d450, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::PEmitterModel<glitch::ps::SParticle>
; alias: _ZTv0_n12_N6glitch2ps13PEmitterModelINS0_9SParticleEED1Ev
; demangled: virtual thunk to glitch::ps::PEmitterModel<glitch::ps::SParticle>::~PEmitterModel()
; decoder-mode: arm
0064d450  00 30 90 e5                                      ldr r3, [r0]
0064d454  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0064d458  03 00 80 e0                                      add r0, r0, r3
0064d45c  e3 ff ff ea                                      b #0x64d3f0

; FUNCTION 0x0064d460, declared_size=28, range_size=28, mode=arm
; class-group: glitch::ps::PEmitterModel<glitch::ps::SParticle>
; alias: _ZN6glitch2ps13PEmitterModelINS0_9SParticleEED0Ev
; demangled: glitch::ps::PEmitterModel<glitch::ps::SParticle>::~PEmitterModel()
; decoder-mode: arm
0064d460  10 40 2d e9                                      push {r4, lr}
0064d464  00 40 a0 e1                                      mov r4, r0
0064d468  e0 ff ff eb                                      bl #0x64d3f0
0064d46c  04 00 a0 e1                                      mov r0, r4
0064d470  8e 03 f3 eb                                      bl #0x30e2b0
0064d474  04 00 a0 e1                                      mov r0, r4
0064d478  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0064d47c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::PEmitterModel<glitch::ps::SParticle>
; alias: _ZTv0_n12_N6glitch2ps13PEmitterModelINS0_9SParticleEED0Ev
; demangled: virtual thunk to glitch::ps::PEmitterModel<glitch::ps::SParticle>::~PEmitterModel()
; decoder-mode: arm
0064d47c  00 30 90 e5                                      ldr r3, [r0]
0064d480  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0064d484  03 00 80 e0                                      add r0, r0, r3
0064d488  f4 ff ff ea                                      b #0x64d460

; FUNCTION 0x0064e750, declared_size=208, range_size=208, mode=arm
; class-group: glitch::ps::PEmitterModel<glitch::ps::SParticle>
; alias: _ZN6glitch2ps13PEmitterModelINS0_9SParticleEE17initPEmitterModelEv
; demangled: glitch::ps::PEmitterModel<glitch::ps::SParticle>::initPEmitterModel()
; decoder-mode: arm
0064e750  70 40 2d e9                                      push {r4, r5, r6, lr}
0064e754  04 30 90 e5                                      ldr r3, [r0, #4]
0064e758  10 d0 4d e2                                      sub sp, sp, #0x10
0064e75c  00 40 a0 e1                                      mov r4, r0
0064e760  00 00 53 e3                                      cmp r3, #0
0064e764  05 00 00 0a                                      beq #0x64e780
0064e768  03 00 a0 e1                                      mov r0, r3
0064e76c  00 30 93 e5                                      ldr r3, [r3]
0064e770  0f e0 a0 e1                                      mov lr, pc
0064e774  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0064e778  00 30 a0 e3                                      mov r3, #0
0064e77c  04 30 84 e5                                      str r3, [r4, #4]
0064e780  08 10 94 e5                                      ldr r1, [r4, #8]
0064e784  01 00 51 e3                                      cmp r1, #1
0064e788  16 00 00 0a                                      beq #0x64e7e8
0064e78c  02 00 51 e3                                      cmp r1, #2
0064e790  0b 00 00 0a                                      beq #0x64e7c4
0064e794  00 00 51 e3                                      cmp r1, #0
0064e798  07 00 00 1a                                      bne #0x64e7bc
0064e79c  5c 00 a0 e3                                      mov r0, #0x5c
0064e7a0  81 96 fb eb                                      bl #0x5341ac
0064e7a4  10 10 94 e5                                      ldr r1, [r4, #0x10]
0064e7a8  00 50 a0 e1                                      mov r5, r0
0064e7ac  14 20 94 e5                                      ldr r2, [r4, #0x14]
0064e7b0  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0064e7b4  e6 32 01 eb                                      bl #0x69b354
0064e7b8  04 50 84 e5                                      str r5, [r4, #4]
0064e7bc  10 d0 8d e2                                      add sp, sp, #0x10
0064e7c0  70 80 bd e8                                      pop {r4, r5, r6, pc}
0064e7c4  00 10 a0 e3                                      mov r1, #0
0064e7c8  58 00 a0 e3                                      mov r0, #0x58
0064e7cc  76 96 fb eb                                      bl #0x5341ac
0064e7d0  14 10 94 e5                                      ldr r1, [r4, #0x14]
0064e7d4  00 50 a0 e1                                      mov r5, r0
0064e7d8  0c 20 94 e5                                      ldr r2, [r4, #0xc]
0064e7dc  4f 3a 01 eb                                      bl #0x69d120
0064e7e0  04 50 84 e5                                      str r5, [r4, #4]
0064e7e4  f4 ff ff ea                                      b #0x64e7bc
0064e7e8  00 60 a0 e3                                      mov r6, #0
0064e7ec  00 10 a0 e3                                      mov r1, #0
0064e7f0  2c 00 a0 e3                                      mov r0, #0x2c
0064e7f4  04 60 8d e5                                      str r6, [sp, #4]
0064e7f8  08 60 8d e5                                      str r6, [sp, #8]
0064e7fc  0c 60 8d e5                                      str r6, [sp, #0xc]
0064e800  69 96 fb eb                                      bl #0x5341ac
0064e804  06 30 a0 e1                                      mov r3, r6
0064e808  00 50 a0 e1                                      mov r5, r0
0064e80c  04 10 8d e2                                      add r1, sp, #4
0064e810  0c 20 94 e5                                      ldr r2, [r4, #0xc]
0064e814  d9 34 01 eb                                      bl #0x69bb80
0064e818  04 50 84 e5                                      str r5, [r4, #4]
0064e81c  e6 ff ff ea                                      b #0x64e7bc

; FUNCTION 0x0064e820, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::PEmitterModel<glitch::ps::SParticle>
; alias: _ZTv0_n76_N6glitch2ps13PEmitterModelINS0_9SParticleEE17initPEmitterModelEv
; demangled: virtual thunk to glitch::ps::PEmitterModel<glitch::ps::SParticle>::initPEmitterModel()
; decoder-mode: arm
0064e820  00 30 90 e5                                      ldr r3, [r0]
0064e824  4c 30 13 e5                                      ldr r3, [r3, #-0x4c]
0064e828  03 00 80 e0                                      add r0, r0, r3
0064e82c  c7 ff ff ea                                      b #0x64e750

; FUNCTION 0x006548fc, declared_size=376, range_size=376, mode=arm
; class-group: glitch::ps::PEmitterModel<glitch::ps::SParticle>
; alias: _ZN6glitch2ps13PEmitterModelINS0_9SParticleEEC2Ev
; demangled: glitch::ps::PEmitterModel<glitch::ps::SParticle>::PEmitterModel()
; decoder-mode: arm
006548fc  30 40 2d e9                                      push {r4, r5, lr}
00654900  00 30 91 e5                                      ldr r3, [r1]
00654904  00 40 a0 e1                                      mov r4, r0
00654908  bf 24 a0 e3                                      mov r2, #0xbf000000
0065490c  00 30 80 e5                                      str r3, [r0]
00654910  04 c0 91 e5                                      ldr ip, [r1, #4]
00654914  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
00654918  5c d0 4d e2                                      sub sp, sp, #0x5c
0065491c  fe 35 a0 e3                                      mov r3, #0x3f800000
00654920  00 c0 84 e7                                      str ip, [r4, r0]
00654924  02 25 82 e2                                      add r2, r2, #0x800000
00654928  00 10 a0 e3                                      mov r1, #0
0065492c  5c 00 a0 e3                                      mov r0, #0x5c
00654930  08 30 8d e5                                      str r3, [sp, #8]
00654934  00 30 8d e5                                      str r3, [sp]
00654938  04 30 8d e5                                      str r3, [sp, #4]
0065493c  14 20 8d e5                                      str r2, [sp, #0x14]
00654940  0c 20 8d e5                                      str r2, [sp, #0xc]
00654944  10 20 8d e5                                      str r2, [sp, #0x10]
00654948  17 7e fb eb                                      bl #0x5341ac
0065494c  0d 20 a0 e1                                      mov r2, sp
00654950  0c 10 8d e2                                      add r1, sp, #0xc
00654954  00 50 a0 e1                                      mov r5, r0
00654958  c5 19 01 eb                                      bl #0x69b074
0065495c  00 20 94 e5                                      ldr r2, [r4]
00654960  01 31 a0 e3                                      mov r3, #0x40000000
00654964  00 10 a0 e3                                      mov r1, #0
00654968  08 10 84 e5                                      str r1, [r4, #8]
0065496c  14 30 84 e5                                      str r3, [r4, #0x14]
00654970  0c 30 84 e5                                      str r3, [r4, #0xc]
00654974  10 30 84 e5                                      str r3, [r4, #0x10]
00654978  04 50 84 e5                                      str r5, [r4, #4]
0065497c  0c 50 12 e5                                      ldr r5, [r2, #-0xc]
00654980  dc 10 9f e5                                      ldr r1, [pc, #0xdc]
00654984  05 50 84 e0                                      add r5, r4, r5
00654988  01 10 8f e0                                      add r1, pc, r1
0065498c  05 00 a0 e1                                      mov r0, r5
00654990  c9 e1 ff eb                                      bl #0x64d0bc
00654994  48 20 8d e2                                      add r2, sp, #0x48
00654998  08 30 84 e2                                      add r3, r4, #8
0065499c  48 00 8d e5                                      str r0, [sp, #0x48]
006549a0  30 10 85 e2                                      add r1, r5, #0x30
006549a4  50 00 8d e2                                      add r0, sp, #0x50
006549a8  4c 30 8d e5                                      str r3, [sp, #0x4c]
006549ac  ce 97 ff eb                                      bl #0x63a8ec
006549b0  00 30 94 e5                                      ldr r3, [r4]
006549b4  ac 10 9f e5                                      ldr r1, [pc, #0xac]
006549b8  0c 50 13 e5                                      ldr r5, [r3, #-0xc]
006549bc  01 10 8f e0                                      add r1, pc, r1
006549c0  05 50 84 e0                                      add r5, r4, r5
006549c4  05 00 a0 e1                                      mov r0, r5
006549c8  bb e1 ff eb                                      bl #0x64d0bc
006549cc  38 20 8d e2                                      add r2, sp, #0x38
006549d0  0c 30 84 e2                                      add r3, r4, #0xc
006549d4  38 00 8d e5                                      str r0, [sp, #0x38]
006549d8  30 10 85 e2                                      add r1, r5, #0x30
006549dc  40 00 8d e2                                      add r0, sp, #0x40
006549e0  3c 30 8d e5                                      str r3, [sp, #0x3c]
006549e4  c0 97 ff eb                                      bl #0x63a8ec
006549e8  00 30 94 e5                                      ldr r3, [r4]
006549ec  78 10 9f e5                                      ldr r1, [pc, #0x78]
006549f0  0c 50 13 e5                                      ldr r5, [r3, #-0xc]
006549f4  01 10 8f e0                                      add r1, pc, r1
006549f8  05 50 84 e0                                      add r5, r4, r5
006549fc  05 00 a0 e1                                      mov r0, r5
00654a00  ad e1 ff eb                                      bl #0x64d0bc
00654a04  28 20 8d e2                                      add r2, sp, #0x28
00654a08  10 30 84 e2                                      add r3, r4, #0x10
00654a0c  28 00 8d e5                                      str r0, [sp, #0x28]
00654a10  30 10 85 e2                                      add r1, r5, #0x30
00654a14  30 00 8d e2                                      add r0, sp, #0x30
00654a18  2c 30 8d e5                                      str r3, [sp, #0x2c]
00654a1c  b2 97 ff eb                                      bl #0x63a8ec
00654a20  00 30 94 e5                                      ldr r3, [r4]
00654a24  44 10 9f e5                                      ldr r1, [pc, #0x44]
00654a28  0c 50 13 e5                                      ldr r5, [r3, #-0xc]
00654a2c  01 10 8f e0                                      add r1, pc, r1
00654a30  05 50 84 e0                                      add r5, r4, r5
00654a34  05 00 a0 e1                                      mov r0, r5
00654a38  9f e1 ff eb                                      bl #0x64d0bc
00654a3c  14 30 84 e2                                      add r3, r4, #0x14
00654a40  18 00 8d e5                                      str r0, [sp, #0x18]
00654a44  30 10 85 e2                                      add r1, r5, #0x30
00654a48  20 00 8d e2                                      add r0, sp, #0x20
00654a4c  18 20 8d e2                                      add r2, sp, #0x18
00654a50  1c 30 8d e5                                      str r3, [sp, #0x1c]
00654a54  a4 97 ff eb                                      bl #0x63a8ec
00654a58  04 00 a0 e1                                      mov r0, r4
00654a5c  5c d0 8d e2                                      add sp, sp, #0x5c
00654a60  30 80 bd e8                                      pop {r4, r5, pc}
; mapping-symbol data/literal pool
00654a64  80 08 29 00 5c 08 29 00 6c 69 29 00 44 69 29 00  .byte 0x80, 0x08, 0x29, 0x00, 0x5c, 0x08, 0x29, 0x00, 0x6c, 0x69, 0x29, 0x00, 0x44, 0x69, 0x29, 0x00

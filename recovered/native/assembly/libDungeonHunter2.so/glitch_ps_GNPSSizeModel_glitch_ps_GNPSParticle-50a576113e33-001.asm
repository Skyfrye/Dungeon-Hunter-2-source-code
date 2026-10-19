; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0063802c, declared_size=4, range_size=4, mode=arm
; class-group: glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>
; alias: _ZN6glitch2ps13GNPSSizeModelINS0_12GNPSParticleEE14initPSizeModelEv
; demangled: glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>::initPSizeModel()
; decoder-mode: arm
0063802c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00638030, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>
; alias: _ZTv0_n52_N6glitch2ps13GNPSSizeModelINS0_12GNPSParticleEE14initPSizeModelEv
; demangled: virtual thunk to glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>::initPSizeModel()
; decoder-mode: arm
00638030  00 30 90 e5                                      ldr r3, [r0]
00638034  34 30 13 e5                                      ldr r3, [r3, #-0x34]
00638038  03 00 80 e0                                      add r0, r0, r3
0063803c  fa ff ff ea                                      b #0x63802c

; FUNCTION 0x00638040, declared_size=136, range_size=136, mode=arm
; class-group: glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>
; alias: _ZN6glitch2ps13GNPSSizeModelINS0_12GNPSParticleEE9initPSizeEPS2_S4_
; demangled: glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>::initPSize(glitch::ps::GNPSParticle*, glitch::ps::GNPSParticle*)
; decoder-mode: arm
00638040  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00638044  00 30 90 e5                                      ldr r3, [r0]
00638048  00 40 a0 e1                                      mov r4, r0
0063804c  01 50 a0 e1                                      mov r5, r1
00638050  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00638054  02 70 a0 e1                                      mov r7, r2
00638058  03 00 80 e0                                      add r0, r0, r3
0063805c  03 30 94 e7                                      ldr r3, [r4, r3]
00638060  0f e0 a0 e1                                      mov lr, pc
00638064  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00638068  07 00 55 e1                                      cmp r5, r7
0063806c  00 80 a0 e1                                      mov r8, r0
00638070  13 00 00 0a                                      beq #0x6380c4
00638074  08 00 a0 e1                                      mov r0, r8
00638078  7e df ff eb                                      bl #0x62fe78
0063807c  87 59 f3 eb                                      bl #0x30e6a0
00638080  08 60 94 e5                                      ldr r6, [r4, #8]
00638084  00 10 a0 e1                                      mov r1, r0
00638088  06 00 a0 e1                                      mov r0, r6
0063808c  36 5b f3 eb                                      bl #0x30ed6c
00638090  00 10 a0 e1                                      mov r1, r0
00638094  c2 5a f3 eb                                      bl #0x30eba4
00638098  06 10 a0 e1                                      mov r1, r6
0063809c  c2 58 f3 eb                                      bl #0x30e3ac
006380a0  04 10 94 e5                                      ldr r1, [r4, #4]
006380a4  be 5a f3 eb                                      bl #0x30eba4
006380a8  64 00 85 e5                                      str r0, [r5, #0x64]
006380ac  10 10 94 e5                                      ldr r1, [r4, #0x10]
006380b0  2d 5b f3 eb                                      bl #0x30ed6c
006380b4  60 00 85 e5                                      str r0, [r5, #0x60]
006380b8  9c 50 85 e2                                      add r5, r5, #0x9c
006380bc  05 00 57 e1                                      cmp r7, r5
006380c0  eb ff ff 1a                                      bne #0x638074
006380c4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x006380c8, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>
; alias: _ZTv0_n56_N6glitch2ps13GNPSSizeModelINS0_12GNPSParticleEE9initPSizeEPS2_S4_
; demangled: virtual thunk to glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>::initPSize(glitch::ps::GNPSParticle*, glitch::ps::GNPSParticle*)
; decoder-mode: arm
006380c8  00 30 90 e5                                      ldr r3, [r0]
006380cc  38 30 13 e5                                      ldr r3, [r3, #-0x38]
006380d0  03 00 80 e0                                      add r0, r0, r3
006380d4  d9 ff ff ea                                      b #0x638040

; FUNCTION 0x0063a438, declared_size=60, range_size=60, mode=arm
; class-group: glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>
; alias: _ZN6glitch2ps13GNPSSizeModelINS0_12GNPSParticleEED1Ev
; demangled: glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>::~GNPSSizeModel()
; decoder-mode: arm
0063a438  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
0063a43c  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
0063a440  10 40 2d e9                                      push {r4, lr}
0063a444  02 20 8f e0                                      add r2, pc, r2
0063a448  03 30 92 e7                                      ldr r3, [r2, r3]
0063a44c  00 40 a0 e1                                      mov r4, r0
0063a450  0c 20 83 e2                                      add r2, r3, #0xc
0063a454  b8 30 83 e2                                      add r3, r3, #0xb8
0063a458  14 20 80 e4                                      str r2, [r0], #0x14
0063a45c  14 30 84 e5                                      str r3, [r4, #0x14]
0063a460  64 ff ff eb                                      bl #0x63a1f8
0063a464  04 00 a0 e1                                      mov r0, r4
0063a468  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0063a46c  4c a6 35 00 9c 18 00 00                          .byte 0x4c, 0xa6, 0x35, 0x00, 0x9c, 0x18, 0x00, 0x00

; FUNCTION 0x0063a474, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>
; alias: _ZTv0_n12_N6glitch2ps13GNPSSizeModelINS0_12GNPSParticleEED1Ev
; demangled: virtual thunk to glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>::~GNPSSizeModel()
; decoder-mode: arm
0063a474  00 30 90 e5                                      ldr r3, [r0]
0063a478  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0063a47c  03 00 80 e0                                      add r0, r0, r3
0063a480  ec ff ff ea                                      b #0x63a438

; FUNCTION 0x0063c388, declared_size=304, range_size=304, mode=arm
; class-group: glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>
; alias: _ZN6glitch2ps13GNPSSizeModelINS0_12GNPSParticleEE10applyPSizeEPS2_S4_
; demangled: glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>::applyPSize(glitch::ps::GNPSParticle*, glitch::ps::GNPSParticle*)
; decoder-mode: arm
0063c388  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0063c38c  02 00 51 e1                                      cmp r1, r2
0063c390  3c d0 4d e2                                      sub sp, sp, #0x3c
0063c394  02 a0 a0 e1                                      mov sl, r2
0063c398  00 50 a0 e1                                      mov r5, r0
0063c39c  43 00 00 0a                                      beq #0x63c4b0
0063c3a0  00 30 a0 e3                                      mov r3, #0
0063c3a4  21 30 cd e5                                      strb r3, [sp, #0x21]
0063c3a8  30 c0 8d e2                                      add ip, sp, #0x30
0063c3ac  34 30 8d e2                                      add r3, sp, #0x34
0063c3b0  00 90 a0 e3                                      mov sb, #0
0063c3b4  01 40 a0 e1                                      mov r4, r1
0063c3b8  14 b0 8d e2                                      add fp, sp, #0x14
0063c3bc  24 70 8d e2                                      add r7, sp, #0x24
0063c3c0  08 30 8d e5                                      str r3, [sp, #8]
0063c3c4  0c c0 8d e5                                      str ip, [sp, #0xc]
0063c3c8  2e 00 00 ea                                      b #0x63c488
0063c3cc  10 60 95 e5                                      ldr r6, [r5, #0x10]
0063c3d0  00 00 56 e3                                      cmp r6, #0
0063c3d4  2e 00 00 0a                                      beq #0x63c494
0063c3d8  5c 10 94 e5                                      ldr r1, [r4, #0x5c]
0063c3dc  58 00 94 e5                                      ldr r0, [r4, #0x58]
0063c3e0  2b 4a f3 eb                                      bl #0x30ec94
0063c3e4  11 13 a0 e3                                      mov r1, #0x44000000
0063c3e8  7a 18 81 e2                                      add r1, r1, #0x7a0000
0063c3ec  00 80 a0 e1                                      mov r8, r0
0063c3f0  34 90 8d e5                                      str sb, [sp, #0x34]
0063c3f4  5c 4a f3 eb                                      bl #0x30ed6c
0063c3f8  29 49 f3 eb                                      bl #0x30e8a4
0063c3fc  ea 2a 05 e3                                      movw r2, #0x5aea
0063c400  aa 3a 0a e3                                      movw r3, #0xaaaa
0063c404  7b 2f 49 e3                                      movt r2, #0x9f7b
0063c408  40 30 44 e3                                      movt r3, #0x4040
0063c40c  cb 47 f3 eb                                      bl #0x30e340
0063c410  83 49 f3 eb                                      bl #0x30ea24
0063c414  00 30 95 e5                                      ldr r3, [r5]
0063c418  30 00 8d e5                                      str r0, [sp, #0x30]
0063c41c  00 10 a0 e3                                      mov r1, #0
0063c420  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0063c424  07 00 a0 e1                                      mov r0, r7
0063c428  03 30 85 e0                                      add r3, r5, r3
0063c42c  58 30 93 e5                                      ldr r3, [r3, #0x58]
0063c430  24 60 8d e5                                      str r6, [sp, #0x24]
0063c434  2c b0 8d e5                                      str fp, [sp, #0x2c]
0063c438  28 30 8d e5                                      str r3, [sp, #0x28]
0063c43c  e6 b6 00 eb                                      bl #0x669fdc
0063c440  47 49 f3 eb                                      bl #0x30e964
0063c444  08 10 a0 e1                                      mov r1, r8
0063c448  47 4a f3 eb                                      bl #0x30ed6c
0063c44c  1e 48 f3 eb                                      bl #0x30e4cc
0063c450  01 c0 a0 e3                                      mov ip, #1
0063c454  00 10 a0 e1                                      mov r1, r0
0063c458  08 20 9d e5                                      ldr r2, [sp, #8]
0063c45c  07 00 a0 e1                                      mov r0, r7
0063c460  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0063c464  00 c0 8d e5                                      str ip, [sp]
0063c468  4e b7 00 eb                                      bl #0x66a1a8
0063c46c  64 00 94 e5                                      ldr r0, [r4, #0x64]
0063c470  34 10 9d e5                                      ldr r1, [sp, #0x34]
0063c474  3c 4a f3 eb                                      bl #0x30ed6c
0063c478  60 00 84 e5                                      str r0, [r4, #0x60]
0063c47c  9c 40 84 e2                                      add r4, r4, #0x9c
0063c480  04 00 5a e1                                      cmp sl, r4
0063c484  09 00 00 0a                                      beq #0x63c4b0
0063c488  0c 30 95 e5                                      ldr r3, [r5, #0xc]
0063c48c  00 00 53 e3                                      cmp r3, #0
0063c490  cd ff ff ca                                      bgt #0x63c3cc
0063c494  64 00 94 e5                                      ldr r0, [r4, #0x64]
0063c498  10 10 95 e5                                      ldr r1, [r5, #0x10]
0063c49c  32 4a f3 eb                                      bl #0x30ed6c
0063c4a0  60 00 84 e5                                      str r0, [r4, #0x60]
0063c4a4  9c 40 84 e2                                      add r4, r4, #0x9c
0063c4a8  04 00 5a e1                                      cmp sl, r4
0063c4ac  f5 ff ff 1a                                      bne #0x63c488
0063c4b0  3c d0 8d e2                                      add sp, sp, #0x3c
0063c4b4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x0063c4b8, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>
; alias: _ZTv0_n60_N6glitch2ps13GNPSSizeModelINS0_12GNPSParticleEE10applyPSizeEPS2_S4_
; demangled: virtual thunk to glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>::applyPSize(glitch::ps::GNPSParticle*, glitch::ps::GNPSParticle*)
; decoder-mode: arm
0063c4b8  00 30 90 e5                                      ldr r3, [r0]
0063c4bc  3c 30 13 e5                                      ldr r3, [r3, #-0x3c]
0063c4c0  03 00 80 e0                                      add r0, r0, r3
0063c4c4  af ff ff ea                                      b #0x63c388

; FUNCTION 0x0063d7f4, declared_size=68, range_size=68, mode=arm
; class-group: glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>
; alias: _ZN6glitch2ps13GNPSSizeModelINS0_12GNPSParticleEED0Ev
; demangled: glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>::~GNPSSizeModel()
; decoder-mode: arm
0063d7f4  34 20 9f e5                                      ldr r2, [pc, #0x34]
0063d7f8  34 30 9f e5                                      ldr r3, [pc, #0x34]
0063d7fc  10 40 2d e9                                      push {r4, lr}
0063d800  02 20 8f e0                                      add r2, pc, r2
0063d804  03 30 92 e7                                      ldr r3, [r2, r3]
0063d808  00 40 a0 e1                                      mov r4, r0
0063d80c  0c 20 83 e2                                      add r2, r3, #0xc
0063d810  b8 30 83 e2                                      add r3, r3, #0xb8
0063d814  14 20 80 e4                                      str r2, [r0], #0x14
0063d818  14 30 84 e5                                      str r3, [r4, #0x14]
0063d81c  75 f2 ff eb                                      bl #0x63a1f8
0063d820  04 00 a0 e1                                      mov r0, r4
0063d824  a1 42 f3 eb                                      bl #0x30e2b0
0063d828  04 00 a0 e1                                      mov r0, r4
0063d82c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0063d830  90 72 35 00 9c 18 00 00                          .byte 0x90, 0x72, 0x35, 0x00, 0x9c, 0x18, 0x00, 0x00

; FUNCTION 0x0063d838, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>
; alias: _ZTv0_n12_N6glitch2ps13GNPSSizeModelINS0_12GNPSParticleEED0Ev
; demangled: virtual thunk to glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>::~GNPSSizeModel()
; decoder-mode: arm
0063d838  00 30 90 e5                                      ldr r3, [r0]
0063d83c  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0063d840  03 00 80 e0                                      add r0, r0, r3
0063d844  ea ff ff ea                                      b #0x63d7f4

; FUNCTION 0x00641f70, declared_size=312, range_size=312, mode=arm
; class-group: glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>
; alias: _ZN6glitch2ps13GNPSSizeModelINS0_12GNPSParticleEEC2Ev
; demangled: glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>::GNPSSizeModel()
; decoder-mode: arm
00641f70  30 40 2d e9                                      push {r4, r5, lr}
00641f74  00 30 91 e5                                      ldr r3, [r1]
00641f78  44 d0 4d e2                                      sub sp, sp, #0x44
00641f7c  00 40 a0 e1                                      mov r4, r0
00641f80  00 30 80 e5                                      str r3, [r0]
00641f84  0c 20 13 e5                                      ldr r2, [r3, #-0xc]
00641f88  04 10 91 e5                                      ldr r1, [r1, #4]
00641f8c  00 30 a0 e3                                      mov r3, #0
00641f90  02 10 80 e7                                      str r1, [r0, r2]
00641f94  00 20 90 e5                                      ldr r2, [r0]
00641f98  fe 15 a0 e3                                      mov r1, #0x3f800000
00641f9c  04 10 80 e5                                      str r1, [r0, #4]
00641fa0  00 10 a0 e3                                      mov r1, #0
00641fa4  08 10 80 e5                                      str r1, [r0, #8]
00641fa8  10 30 80 e5                                      str r3, [r0, #0x10]
00641fac  0c 30 80 e5                                      str r3, [r0, #0xc]
00641fb0  0c 50 12 e5                                      ldr r5, [r2, #-0xc]
00641fb4  dc 10 9f e5                                      ldr r1, [pc, #0xdc]
00641fb8  05 50 80 e0                                      add r5, r0, r5
00641fbc  01 10 8f e0                                      add r1, pc, r1
00641fc0  05 00 a0 e1                                      mov r0, r5
00641fc4  20 e5 ff eb                                      bl #0x63b44c
00641fc8  30 20 8d e2                                      add r2, sp, #0x30
00641fcc  04 30 84 e2                                      add r3, r4, #4
00641fd0  30 00 8d e5                                      str r0, [sp, #0x30]
00641fd4  30 10 85 e2                                      add r1, r5, #0x30
00641fd8  38 00 8d e2                                      add r0, sp, #0x38
00641fdc  34 30 8d e5                                      str r3, [sp, #0x34]
00641fe0  41 e2 ff eb                                      bl #0x63a8ec
00641fe4  00 30 94 e5                                      ldr r3, [r4]
00641fe8  ac 10 9f e5                                      ldr r1, [pc, #0xac]
00641fec  0c 50 13 e5                                      ldr r5, [r3, #-0xc]
00641ff0  01 10 8f e0                                      add r1, pc, r1
00641ff4  05 50 84 e0                                      add r5, r4, r5
00641ff8  05 00 a0 e1                                      mov r0, r5
00641ffc  12 e5 ff eb                                      bl #0x63b44c
00642000  20 20 8d e2                                      add r2, sp, #0x20
00642004  08 30 84 e2                                      add r3, r4, #8
00642008  20 00 8d e5                                      str r0, [sp, #0x20]
0064200c  30 10 85 e2                                      add r1, r5, #0x30
00642010  28 00 8d e2                                      add r0, sp, #0x28
00642014  24 30 8d e5                                      str r3, [sp, #0x24]
00642018  33 e2 ff eb                                      bl #0x63a8ec
0064201c  00 30 94 e5                                      ldr r3, [r4]
00642020  78 10 9f e5                                      ldr r1, [pc, #0x78]
00642024  0c 50 13 e5                                      ldr r5, [r3, #-0xc]
00642028  01 10 8f e0                                      add r1, pc, r1
0064202c  05 50 84 e0                                      add r5, r4, r5
00642030  05 00 a0 e1                                      mov r0, r5
00642034  04 e5 ff eb                                      bl #0x63b44c
00642038  10 20 8d e2                                      add r2, sp, #0x10
0064203c  10 30 84 e2                                      add r3, r4, #0x10
00642040  10 00 8d e5                                      str r0, [sp, #0x10]
00642044  30 10 85 e2                                      add r1, r5, #0x30
00642048  18 00 8d e2                                      add r0, sp, #0x18
0064204c  14 30 8d e5                                      str r3, [sp, #0x14]
00642050  25 e2 ff eb                                      bl #0x63a8ec
00642054  00 30 94 e5                                      ldr r3, [r4]
00642058  44 10 9f e5                                      ldr r1, [pc, #0x44]
0064205c  0c 50 13 e5                                      ldr r5, [r3, #-0xc]
00642060  01 10 8f e0                                      add r1, pc, r1
00642064  05 50 84 e0                                      add r5, r4, r5
00642068  05 00 a0 e1                                      mov r0, r5
0064206c  f6 e4 ff eb                                      bl #0x63b44c
00642070  0c 30 84 e2                                      add r3, r4, #0xc
00642074  00 00 8d e5                                      str r0, [sp]
00642078  30 10 85 e2                                      add r1, r5, #0x30
0064207c  08 00 8d e2                                      add r0, sp, #8
00642080  0d 20 a0 e1                                      mov r2, sp
00642084  04 30 8d e5                                      str r3, [sp, #4]
00642088  17 e2 ff eb                                      bl #0x63a8ec
0064208c  04 00 a0 e1                                      mov r0, r4
00642090  44 d0 8d e2                                      add sp, sp, #0x44
00642094  30 80 bd e8                                      pop {r4, r5, pc}
; mapping-symbol data/literal pool
00642098  3c 34 2a 00 18 34 2a 00 38 31 2a 00 b8 33 2a 00  .byte 0x3c, 0x34, 0x2a, 0x00, 0x18, 0x34, 0x2a, 0x00, 0x38, 0x31, 0x2a, 0x00, 0xb8, 0x33, 0x2a, 0x00

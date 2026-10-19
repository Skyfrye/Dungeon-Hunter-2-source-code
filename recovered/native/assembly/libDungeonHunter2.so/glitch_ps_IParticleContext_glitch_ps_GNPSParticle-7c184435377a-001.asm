; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00630a34, declared_size=136, range_size=136, mode=arm
; class-group: glitch::ps::IParticleContext<glitch::ps::GNPSParticle>
; alias: _ZN6glitch2ps16IParticleContextINS0_12GNPSParticleEE8lockAxisEjNS_4core8vector3dIfEE
; demangled: glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::lockAxis(unsigned int, glitch::core::vector3d<float>)
; decoder-mode: arm
00630a34  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00630a38  01 30 80 e0                                      add r3, r0, r1
00630a3c  01 50 a0 e1                                      mov r5, r1
00630a40  01 10 a0 e3                                      mov r1, #1
00630a44  04 10 c3 e5                                      strb r1, [r3, #4]
00630a48  08 30 92 e5                                      ldr r3, [r2, #8]
00630a4c  00 10 92 e5                                      ldr r1, [r2]
00630a50  04 20 92 e5                                      ldr r2, [r2, #4]
00630a54  10 d0 4d e2                                      sub sp, sp, #0x10
00630a58  00 40 a0 e1                                      mov r4, r0
00630a5c  04 00 8d e2                                      add r0, sp, #4
00630a60  08 20 8d e5                                      str r2, [sp, #8]
00630a64  0c 30 8d e5                                      str r3, [sp, #0xc]
00630a68  04 10 8d e5                                      str r1, [sp, #4]
00630a6c  9b b7 f4 eb                                      bl #0x35e8e0
00630a70  3f 14 a0 e3                                      mov r1, #0x3f000000
00630a74  00 60 a0 e1                                      mov r6, r0
00630a78  04 00 90 e5                                      ldr r0, [r0, #4]
00630a7c  ba 78 f3 eb                                      bl #0x30ed6c
00630a80  3f 14 a0 e3                                      mov r1, #0x3f000000
00630a84  00 70 a0 e1                                      mov r7, r0
00630a88  08 00 96 e5                                      ldr r0, [r6, #8]
00630a8c  b6 78 f3 eb                                      bl #0x30ed6c
00630a90  0c 30 a0 e3                                      mov r3, #0xc
00630a94  00 80 a0 e1                                      mov r8, r0
00630a98  3f 14 a0 e3                                      mov r1, #0x3f000000
00630a9c  00 00 96 e5                                      ldr r0, [r6]
00630aa0  93 45 24 e0                                      mla r4, r3, r5, r4
00630aa4  b0 78 f3 eb                                      bl #0x30ed6c
00630aa8  10 80 84 e5                                      str r8, [r4, #0x10]
00630aac  08 00 84 e5                                      str r0, [r4, #8]
00630ab0  0c 70 84 e5                                      str r7, [r4, #0xc]
00630ab4  10 d0 8d e2                                      add sp, sp, #0x10
00630ab8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0063a1f8, declared_size=116, range_size=116, mode=arm
; class-group: glitch::ps::IParticleContext<glitch::ps::GNPSParticle>
; alias: _ZN6glitch2ps16IParticleContextINS0_12GNPSParticleEED2Ev
; demangled: glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::~IParticleContext()
; decoder-mode: arm
0063a1f8  70 40 2d e9                                      push {r4, r5, r6, lr}
0063a1fc  60 30 9f e5                                      ldr r3, [pc, #0x60]
0063a200  60 20 9f e5                                      ldr r2, [pc, #0x60]
0063a204  40 10 90 e5                                      ldr r1, [r0, #0x40]
0063a208  03 30 8f e0                                      add r3, pc, r3
0063a20c  02 20 93 e7                                      ldr r2, [r3, r2]
0063a210  00 00 51 e3                                      cmp r1, #0
0063a214  00 40 a0 e1                                      mov r4, r0
0063a218  08 20 82 e2                                      add r2, r2, #8
0063a21c  00 20 80 e5                                      str r2, [r0]
0063a220  05 00 00 1a                                      bne #0x63a23c
0063a224  24 00 94 e5                                      ldr r0, [r4, #0x24]
0063a228  00 00 50 e3                                      cmp r0, #0
0063a22c  00 00 00 0a                                      beq #0x63a234
0063a230  86 58 f3 eb                                      bl #0x310450
0063a234  04 00 a0 e1                                      mov r0, r4
0063a238  70 80 bd e8                                      pop {r4, r5, r6, pc}
0063a23c  30 50 80 e2                                      add r5, r0, #0x30
0063a240  05 00 a0 e1                                      mov r0, r5
0063a244  34 10 94 e5                                      ldr r1, [r4, #0x34]
0063a248  dd ff ff eb                                      bl #0x63a1c4
0063a24c  00 30 a0 e3                                      mov r3, #0
0063a250  3c 50 84 e5                                      str r5, [r4, #0x3c]
0063a254  40 30 84 e5                                      str r3, [r4, #0x40]
0063a258  38 50 84 e5                                      str r5, [r4, #0x38]
0063a25c  34 30 84 e5                                      str r3, [r4, #0x34]
0063a260  ef ff ff ea                                      b #0x63a224
; mapping-symbol data/literal pool
0063a264  88 a8 35 00 44 44 00 00                          .byte 0x88, 0xa8, 0x35, 0x00, 0x44, 0x44, 0x00, 0x00

; FUNCTION 0x0063a51c, declared_size=116, range_size=116, mode=arm
; class-group: glitch::ps::IParticleContext<glitch::ps::GNPSParticle>
; alias: _ZN6glitch2ps16IParticleContextINS0_12GNPSParticleEED1Ev
; demangled: glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::~IParticleContext()
; decoder-mode: arm
0063a51c  70 40 2d e9                                      push {r4, r5, r6, lr}
0063a520  60 30 9f e5                                      ldr r3, [pc, #0x60]
0063a524  60 20 9f e5                                      ldr r2, [pc, #0x60]
0063a528  40 10 90 e5                                      ldr r1, [r0, #0x40]
0063a52c  03 30 8f e0                                      add r3, pc, r3
0063a530  02 20 93 e7                                      ldr r2, [r3, r2]
0063a534  00 00 51 e3                                      cmp r1, #0
0063a538  00 40 a0 e1                                      mov r4, r0
0063a53c  08 20 82 e2                                      add r2, r2, #8
0063a540  00 20 80 e5                                      str r2, [r0]
0063a544  05 00 00 1a                                      bne #0x63a560
0063a548  24 00 94 e5                                      ldr r0, [r4, #0x24]
0063a54c  00 00 50 e3                                      cmp r0, #0
0063a550  00 00 00 0a                                      beq #0x63a558
0063a554  bd 57 f3 eb                                      bl #0x310450
0063a558  04 00 a0 e1                                      mov r0, r4
0063a55c  70 80 bd e8                                      pop {r4, r5, r6, pc}
0063a560  30 50 80 e2                                      add r5, r0, #0x30
0063a564  05 00 a0 e1                                      mov r0, r5
0063a568  34 10 94 e5                                      ldr r1, [r4, #0x34]
0063a56c  14 ff ff eb                                      bl #0x63a1c4
0063a570  00 30 a0 e3                                      mov r3, #0
0063a574  3c 50 84 e5                                      str r5, [r4, #0x3c]
0063a578  40 30 84 e5                                      str r3, [r4, #0x40]
0063a57c  38 50 84 e5                                      str r5, [r4, #0x38]
0063a580  34 30 84 e5                                      str r3, [r4, #0x34]
0063a584  ef ff ff ea                                      b #0x63a548
; mapping-symbol data/literal pool
0063a588  64 a5 35 00 44 44 00 00                          .byte 0x64, 0xa5, 0x35, 0x00, 0x44, 0x44, 0x00, 0x00

; FUNCTION 0x0063a590, declared_size=28, range_size=28, mode=arm
; class-group: glitch::ps::IParticleContext<glitch::ps::GNPSParticle>
; alias: _ZN6glitch2ps16IParticleContextINS0_12GNPSParticleEED0Ev
; demangled: glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::~IParticleContext()
; decoder-mode: arm
0063a590  10 40 2d e9                                      push {r4, lr}
0063a594  00 40 a0 e1                                      mov r4, r0
0063a598  df ff ff eb                                      bl #0x63a51c
0063a59c  04 00 a0 e1                                      mov r0, r4
0063a5a0  42 4f f3 eb                                      bl #0x30e2b0
0063a5a4  04 00 a0 e1                                      mov r0, r4
0063a5a8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0063b44c, declared_size=276, range_size=276, mode=arm
; class-group: glitch::ps::IParticleContext<glitch::ps::GNPSParticle>
; alias: _ZN6glitch2ps16IParticleContextINS0_12GNPSParticleEE10hashStringEPKc
; demangled: glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::hashString(char const*)
; decoder-mode: arm
0063b44c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0063b450  f0 40 9f e5                                      ldr r4, [pc, #0xf0]
0063b454  f0 30 9f e5                                      ldr r3, [pc, #0xf0]
0063b458  f0 70 9f e5                                      ldr r7, [pc, #0xf0]
0063b45c  04 40 8f e0                                      add r4, pc, r4
0063b460  03 50 94 e7                                      ldr r5, [r4, r3]
0063b464  07 30 94 e7                                      ldr r3, [r4, r7]
0063b468  24 d0 4d e2                                      sub sp, sp, #0x24
0063b46c  00 20 95 e5                                      ldr r2, [r5]
0063b470  00 30 93 e5                                      ldr r3, [r3]
0063b474  01 60 a0 e1                                      mov r6, r1
0063b478  01 00 12 e3                                      tst r2, #1
0063b47c  1c 30 8d e5                                      str r3, [sp, #0x1c]
0063b480  21 00 00 0a                                      beq #0x63b50c
0063b484  04 50 8d e2                                      add r5, sp, #4
0063b488  06 00 a0 e1                                      mov r0, r6
0063b48c  14 50 8d e5                                      str r5, [sp, #0x14]
0063b490  18 50 8d e5                                      str r5, [sp, #0x18]
0063b494  6e 4a f3 eb                                      bl #0x30de54
0063b498  06 10 a0 e1                                      mov r1, r6
0063b49c  00 20 86 e0                                      add r2, r6, r0
0063b4a0  05 00 a0 e1                                      mov r0, r5
0063b4a4  8f 58 f3 eb                                      bl #0x3116e8
0063b4a8  18 20 9d e5                                      ldr r2, [sp, #0x18]
0063b4ac  14 00 9d e5                                      ldr r0, [sp, #0x14]
0063b4b0  00 00 52 e1                                      cmp r2, r0
0063b4b4  00 60 a0 03                                      moveq r6, #0
0063b4b8  09 00 00 0a                                      beq #0x63b4e4
0063b4bc  00 60 a0 e3                                      mov r6, #0
0063b4c0  d1 10 d2 e0                                      ldrsb r1, [r2], #1
0063b4c4  b9 39 07 e3                                      movw r3, #0x79b9
0063b4c8  37 3e 49 e3                                      movt r3, #0x9e37
0063b4cc  03 30 81 e0                                      add r3, r1, r3
0063b4d0  06 33 83 e0                                      add r3, r3, r6, lsl #6
0063b4d4  26 31 83 e0                                      add r3, r3, r6, lsr #2
0063b4d8  00 00 52 e1                                      cmp r2, r0
0063b4dc  03 60 26 e0                                      eor r6, r6, r3
0063b4e0  f6 ff ff 1a                                      bne #0x63b4c0
0063b4e4  05 00 a0 e1                                      mov r0, r5
0063b4e8  2f 61 f3 eb                                      bl #0x3139ac
0063b4ec  07 30 94 e7                                      ldr r3, [r4, r7]
0063b4f0  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0063b4f4  06 00 a0 e1                                      mov r0, r6
0063b4f8  00 30 93 e5                                      ldr r3, [r3]
0063b4fc  03 00 52 e1                                      cmp r2, r3
0063b500  0f 00 00 1a                                      bne #0x63b544
0063b504  24 d0 8d e2                                      add sp, sp, #0x24
0063b508  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0063b50c  05 00 a0 e1                                      mov r0, r5
0063b510  95 4c f3 eb                                      bl #0x30e76c
0063b514  00 00 50 e3                                      cmp r0, #0
0063b518  d9 ff ff 0a                                      beq #0x63b484
0063b51c  05 00 a0 e1                                      mov r0, r5
0063b520  45 4d f3 eb                                      bl #0x30ea3c
0063b524  28 30 9f e5                                      ldr r3, [pc, #0x28]
0063b528  03 00 94 e7                                      ldr r0, [r4, r3]
0063b52c  24 30 9f e5                                      ldr r3, [pc, #0x24]
0063b530  03 10 94 e7                                      ldr r1, [r4, r3]
0063b534  20 30 9f e5                                      ldr r3, [pc, #0x20]
0063b538  03 20 94 e7                                      ldr r2, [r4, r3]
0063b53c  70 4b f3 eb                                      bl #0x30e304
0063b540  cf ff ff ea                                      b #0x63b484
0063b544  71 4b f3 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0063b548  34 96 35 00 6c 23 00 00 ac 40 00 00 b4 21 00 00  .byte 0x34, 0x96, 0x35, 0x00, 0x6c, 0x23, 0x00, 0x00, 0xac, 0x40, 0x00, 0x00, 0xb4, 0x21, 0x00, 0x00
0063b558  24 27 00 00 90 18 00 00                          .byte 0x24, 0x27, 0x00, 0x00, 0x90, 0x18, 0x00, 0x00

; FUNCTION 0x0063b560, declared_size=192, range_size=192, mode=arm
; class-group: glitch::ps::IParticleContext<glitch::ps::GNPSParticle>
; alias: _ZN6glitch2ps16IParticleContextINS0_12GNPSParticleEEC2Ev
; demangled: glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::IParticleContext()
; decoder-mode: arm
0063b560  ac c0 9f e5                                      ldr ip, [pc, #0xac]
0063b564  ac 20 9f e5                                      ldr r2, [pc, #0xac]
0063b568  30 40 2d e9                                      push {r4, r5, lr}
0063b56c  0c c0 8f e0                                      add ip, pc, ip
0063b570  02 20 9c e7                                      ldr r2, [ip, r2]
0063b574  00 30 a0 e3                                      mov r3, #0
0063b578  14 10 80 e2                                      add r1, r0, #0x14
0063b57c  08 e0 82 e2                                      add lr, r2, #8
0063b580  00 e0 80 e5                                      str lr, [r0]
0063b584  08 30 80 e5                                      str r3, [r0, #8]
0063b588  0c 30 80 e5                                      str r3, [r0, #0xc]
0063b58c  10 30 80 e5                                      str r3, [r0, #0x10]
0063b590  14 30 80 e5                                      str r3, [r0, #0x14]
0063b594  08 30 81 e5                                      str r3, [r1, #8]
0063b598  04 30 81 e5                                      str r3, [r1, #4]
0063b59c  78 10 9f e5                                      ldr r1, [pc, #0x78]
0063b5a0  00 20 a0 e3                                      mov r2, #0
0063b5a4  00 50 a0 e1                                      mov r5, r0
0063b5a8  21 20 c0 e5                                      strb r2, [r0, #0x21]
0063b5ac  24 20 80 e5                                      str r2, [r0, #0x24]
0063b5b0  28 20 80 e5                                      str r2, [r0, #0x28]
0063b5b4  2c 20 80 e5                                      str r2, [r0, #0x2c]
0063b5b8  34 20 80 e5                                      str r2, [r0, #0x34]
0063b5bc  30 20 e5 e5                                      strb r2, [r5, #0x30]!
0063b5c0  14 d0 4d e2                                      sub sp, sp, #0x14
0063b5c4  50 30 80 e5                                      str r3, [r0, #0x50]
0063b5c8  54 20 c0 e5                                      strb r2, [r0, #0x54]
0063b5cc  01 10 8f e0                                      add r1, pc, r1
0063b5d0  38 50 80 e5                                      str r5, [r0, #0x38]
0063b5d4  3c 50 80 e5                                      str r5, [r0, #0x3c]
0063b5d8  40 20 80 e5                                      str r2, [r0, #0x40]
0063b5dc  48 30 80 e5                                      str r3, [r0, #0x48]
0063b5e0  4c 30 80 e5                                      str r3, [r0, #0x4c]
0063b5e4  00 40 a0 e1                                      mov r4, r0
0063b5e8  97 ff ff eb                                      bl #0x63b44c
0063b5ec  58 30 84 e2                                      add r3, r4, #0x58
0063b5f0  00 00 8d e5                                      str r0, [sp]
0063b5f4  05 10 a0 e1                                      mov r1, r5
0063b5f8  08 00 8d e2                                      add r0, sp, #8
0063b5fc  0d 20 a0 e1                                      mov r2, sp
0063b600  04 30 8d e5                                      str r3, [sp, #4]
0063b604  b8 fc ff eb                                      bl #0x63a8ec
0063b608  04 00 a0 e1                                      mov r0, r4
0063b60c  14 d0 8d e2                                      add sp, sp, #0x14
0063b610  30 80 bd e8                                      pop {r4, r5, pc}
; mapping-symbol data/literal pool
0063b614  24 95 35 00 44 44 00 00 04 9b 2a 00              .byte 0x24, 0x95, 0x35, 0x00, 0x44, 0x44, 0x00, 0x00, 0x04, 0x9b, 0x2a, 0x00

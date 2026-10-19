; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0064c17c, declared_size=4, range_size=4, mode=arm
; class-group: glitch::ps::PMotionModel<glitch::ps::SParticle>
; alias: _ZN6glitch2ps12PMotionModelINS0_9SParticleEE16initPMotionModelEv
; demangled: glitch::ps::PMotionModel<glitch::ps::SParticle>::initPMotionModel()
; decoder-mode: arm
0064c17c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0064c180, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::PMotionModel<glitch::ps::SParticle>
; alias: _ZTv0_n84_N6glitch2ps12PMotionModelINS0_9SParticleEE16initPMotionModelEv
; demangled: virtual thunk to glitch::ps::PMotionModel<glitch::ps::SParticle>::initPMotionModel()
; decoder-mode: arm
0064c180  00 30 90 e5                                      ldr r3, [r0]
0064c184  54 30 13 e5                                      ldr r3, [r3, #-0x54]
0064c188  03 00 80 e0                                      add r0, r0, r3
0064c18c  fa ff ff ea                                      b #0x64c17c

; FUNCTION 0x0064c190, declared_size=148, range_size=148, mode=arm
; class-group: glitch::ps::PMotionModel<glitch::ps::SParticle>
; alias: _ZN6glitch2ps12PMotionModelINS0_9SParticleEE12applyPMotionEPS2_S4_
; demangled: glitch::ps::PMotionModel<glitch::ps::SParticle>::applyPMotion(glitch::ps::SParticle*, glitch::ps::SParticle*)
; decoder-mode: arm
0064c190  02 00 51 e1                                      cmp r1, r2
0064c194  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0064c198  02 a0 a0 e1                                      mov sl, r2
0064c19c  00 60 a0 e1                                      mov r6, r0
0064c1a0  1e 00 00 0a                                      beq #0x64c220
0064c1a4  01 40 a0 e1                                      mov r4, r1
0064c1a8  00 30 96 e5                                      ldr r3, [r6]
0064c1ac  10 10 94 e5                                      ldr r1, [r4, #0x10]
0064c1b0  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0064c1b4  03 30 86 e0                                      add r3, r6, r3
0064c1b8  50 50 93 e5                                      ldr r5, [r3, #0x50]
0064c1bc  05 00 a0 e1                                      mov r0, r5
0064c1c0  e9 0a f3 eb                                      bl #0x30ed6c
0064c1c4  14 10 94 e5                                      ldr r1, [r4, #0x14]
0064c1c8  00 80 a0 e1                                      mov r8, r0
0064c1cc  05 00 a0 e1                                      mov r0, r5
0064c1d0  e5 0a f3 eb                                      bl #0x30ed6c
0064c1d4  0c 10 94 e5                                      ldr r1, [r4, #0xc]
0064c1d8  00 70 a0 e1                                      mov r7, r0
0064c1dc  05 00 a0 e1                                      mov r0, r5
0064c1e0  e1 0a f3 eb                                      bl #0x30ed6c
0064c1e4  00 10 a0 e1                                      mov r1, r0
0064c1e8  00 00 94 e5                                      ldr r0, [r4]
0064c1ec  6c 0a f3 eb                                      bl #0x30eba4
0064c1f0  08 10 a0 e1                                      mov r1, r8
0064c1f4  00 00 84 e5                                      str r0, [r4]
0064c1f8  04 00 94 e5                                      ldr r0, [r4, #4]
0064c1fc  68 0a f3 eb                                      bl #0x30eba4
0064c200  07 10 a0 e1                                      mov r1, r7
0064c204  04 00 84 e5                                      str r0, [r4, #4]
0064c208  08 00 94 e5                                      ldr r0, [r4, #8]
0064c20c  64 0a f3 eb                                      bl #0x30eba4
0064c210  08 00 84 e5                                      str r0, [r4, #8]
0064c214  64 40 84 e2                                      add r4, r4, #0x64
0064c218  04 00 5a e1                                      cmp sl, r4
0064c21c  e1 ff ff 1a                                      bne #0x64c1a8
0064c220  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x0064c224, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::PMotionModel<glitch::ps::SParticle>
; alias: _ZTv0_n92_N6glitch2ps12PMotionModelINS0_9SParticleEE12applyPMotionEPS2_S4_
; demangled: virtual thunk to glitch::ps::PMotionModel<glitch::ps::SParticle>::applyPMotion(glitch::ps::SParticle*, glitch::ps::SParticle*)
; decoder-mode: arm
0064c224  00 30 90 e5                                      ldr r3, [r0]
0064c228  5c 30 13 e5                                      ldr r3, [r3, #-0x5c]
0064c22c  03 00 80 e0                                      add r0, r0, r3
0064c230  d6 ff ff ea                                      b #0x64c190

; FUNCTION 0x0064d3a4, declared_size=60, range_size=60, mode=arm
; class-group: glitch::ps::PMotionModel<glitch::ps::SParticle>
; alias: _ZN6glitch2ps12PMotionModelINS0_9SParticleEED1Ev
; demangled: glitch::ps::PMotionModel<glitch::ps::SParticle>::~PMotionModel()
; decoder-mode: arm
0064d3a4  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
0064d3a8  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
0064d3ac  10 40 2d e9                                      push {r4, lr}
0064d3b0  02 20 8f e0                                      add r2, pc, r2
0064d3b4  03 30 92 e7                                      ldr r3, [r2, r3]
0064d3b8  00 40 a0 e1                                      mov r4, r0
0064d3bc  0c 20 83 e2                                      add r2, r3, #0xc
0064d3c0  b8 30 83 e2                                      add r3, r3, #0xb8
0064d3c4  1c 20 80 e4                                      str r2, [r0], #0x1c
0064d3c8  1c 30 84 e5                                      str r3, [r4, #0x1c]
0064d3cc  b1 ff ff eb                                      bl #0x64d298
0064d3d0  04 00 a0 e1                                      mov r0, r4
0064d3d4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0064d3d8  e0 76 34 00 90 2d 00 00                          .byte 0xe0, 0x76, 0x34, 0x00, 0x90, 0x2d, 0x00, 0x00

; FUNCTION 0x0064d3e0, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::PMotionModel<glitch::ps::SParticle>
; alias: _ZTv0_n12_N6glitch2ps12PMotionModelINS0_9SParticleEED1Ev
; demangled: virtual thunk to glitch::ps::PMotionModel<glitch::ps::SParticle>::~PMotionModel()
; decoder-mode: arm
0064d3e0  00 30 90 e5                                      ldr r3, [r0]
0064d3e4  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0064d3e8  03 00 80 e0                                      add r0, r0, r3
0064d3ec  ec ff ff ea                                      b #0x64d3a4

; FUNCTION 0x0064f094, declared_size=68, range_size=68, mode=arm
; class-group: glitch::ps::PMotionModel<glitch::ps::SParticle>
; alias: _ZN6glitch2ps12PMotionModelINS0_9SParticleEED0Ev
; demangled: glitch::ps::PMotionModel<glitch::ps::SParticle>::~PMotionModel()
; decoder-mode: arm
0064f094  34 20 9f e5                                      ldr r2, [pc, #0x34]
0064f098  34 30 9f e5                                      ldr r3, [pc, #0x34]
0064f09c  10 40 2d e9                                      push {r4, lr}
0064f0a0  02 20 8f e0                                      add r2, pc, r2
0064f0a4  03 30 92 e7                                      ldr r3, [r2, r3]
0064f0a8  00 40 a0 e1                                      mov r4, r0
0064f0ac  0c 20 83 e2                                      add r2, r3, #0xc
0064f0b0  b8 30 83 e2                                      add r3, r3, #0xb8
0064f0b4  1c 20 80 e4                                      str r2, [r0], #0x1c
0064f0b8  1c 30 84 e5                                      str r3, [r4, #0x1c]
0064f0bc  75 f8 ff eb                                      bl #0x64d298
0064f0c0  04 00 a0 e1                                      mov r0, r4
0064f0c4  79 fc f2 eb                                      bl #0x30e2b0
0064f0c8  04 00 a0 e1                                      mov r0, r4
0064f0cc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0064f0d0  f0 59 34 00 90 2d 00 00                          .byte 0xf0, 0x59, 0x34, 0x00, 0x90, 0x2d, 0x00, 0x00

; FUNCTION 0x0064f0d8, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::PMotionModel<glitch::ps::SParticle>
; alias: _ZTv0_n12_N6glitch2ps12PMotionModelINS0_9SParticleEED0Ev
; demangled: virtual thunk to glitch::ps::PMotionModel<glitch::ps::SParticle>::~PMotionModel()
; decoder-mode: arm
0064f0d8  00 30 90 e5                                      ldr r3, [r0]
0064f0dc  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0064f0e0  03 00 80 e0                                      add r0, r0, r3
0064f0e4  ea ff ff ea                                      b #0x64f094

; FUNCTION 0x00653bb8, declared_size=1316, range_size=1316, mode=arm
; class-group: glitch::ps::PMotionModel<glitch::ps::SParticle>
; alias: _ZN6glitch2ps12PMotionModelINS0_9SParticleEE11initPMotionEPS2_S4_
; demangled: glitch::ps::PMotionModel<glitch::ps::SParticle>::initPMotion(glitch::ps::SParticle*, glitch::ps::SParticle*)
; decoder-mode: arm
00653bb8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00653bbc  00 30 90 e5                                      ldr r3, [r0]
00653bc0  dc d0 4d e2                                      sub sp, sp, #0xdc
00653bc4  1c 20 8d e5                                      str r2, [sp, #0x1c]
00653bc8  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00653bcc  00 40 a0 e1                                      mov r4, r0
00653bd0  01 50 a0 e1                                      mov r5, r1
00653bd4  03 00 80 e0                                      add r0, r0, r3
00653bd8  03 30 94 e7                                      ldr r3, [r4, r3]
00653bdc  0f e0 a0 e1                                      mov lr, pc
00653be0  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00653be4  14 00 8d e5                                      str r0, [sp, #0x14]
00653be8  00 30 94 e5                                      ldr r3, [r4]
00653bec  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00653bf0  03 00 84 e0                                      add r0, r4, r3
00653bf4  03 30 94 e7                                      ldr r3, [r4, r3]
00653bf8  0f e0 a0 e1                                      mov lr, pc
00653bfc  20 f0 93 e5                                      ldr pc, [r3, #0x20]
00653c00  00 10 50 e2                                      subs r1, r0, #0
00653c04  28 01 00 0a                                      beq #0x6540ac
00653c08  00 30 94 e5                                      ldr r3, [r4]
00653c0c  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00653c10  03 00 84 e0                                      add r0, r4, r3
00653c14  03 30 94 e7                                      ldr r3, [r4, r3]
00653c18  0f e0 a0 e1                                      mov lr, pc
00653c1c  20 f0 93 e5                                      ldr pc, [r3, #0x20]
00653c20  00 30 a0 e3                                      mov r3, #0
00653c24  00 10 a0 e1                                      mov r1, r0
00653c28  41 20 a0 e3                                      mov r2, #0x41
00653c2c  40 00 8d e2                                      add r0, sp, #0x40
00653c30  80 30 cd e5                                      strb r3, [sp, #0x80]
00653c34  0b eb f2 eb                                      bl #0x30e868
00653c38  43 14 a0 e3                                      mov r1, #0x43000000
00653c3c  0d 17 81 e2                                      add r1, r1, #0x340000
00653c40  10 00 94 e5                                      ldr r0, [r4, #0x10]
00653c44  48 ec f2 eb                                      bl #0x30ed6c
00653c48  18 00 8d e5                                      str r0, [sp, #0x18]
00653c4c  18 10 94 e5                                      ldr r1, [r4, #0x18]
00653c50  14 00 94 e5                                      ldr r0, [r4, #0x14]
00653c54  44 ec f2 eb                                      bl #0x30ed6c
00653c58  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
00653c5c  00 80 a0 e1                                      mov r8, r0
00653c60  01 00 55 e1                                      cmp r5, r1
00653c64  fc 00 00 0a                                      beq #0x65405c
00653c68  00 30 a0 e3                                      mov r3, #0
00653c6c  d0 30 8d e5                                      str r3, [sp, #0xd0]
00653c70  cc 30 8d e5                                      str r3, [sp, #0xcc]
00653c74  5c 34 9f e5                                      ldr r3, [pc, #0x45c]
00653c78  a8 10 8d e2                                      add r1, sp, #0xa8
00653c7c  20 10 8d e5                                      str r1, [sp, #0x20]
00653c80  03 30 8f e0                                      add r3, pc, r3
00653c84  28 30 8d e5                                      str r3, [sp, #0x28]
00653c88  cc 30 8d e2                                      add r3, sp, #0xcc
00653c8c  24 30 8d e5                                      str r3, [sp, #0x24]
00653c90  9c 30 8d e2                                      add r3, sp, #0x9c
00653c94  90 10 8d e2                                      add r1, sp, #0x90
00653c98  2c 30 8d e5                                      str r3, [sp, #0x2c]
00653c9c  84 30 8d e2                                      add r3, sp, #0x84
00653ca0  fe 25 a0 e3                                      mov r2, #0x3f800000
00653ca4  30 10 8d e5                                      str r1, [sp, #0x30]
00653ca8  34 30 8d e5                                      str r3, [sp, #0x34]
00653cac  c0 10 8d e2                                      add r1, sp, #0xc0
00653cb0  b4 30 8d e2                                      add r3, sp, #0xb4
00653cb4  d4 20 8d e5                                      str r2, [sp, #0xd4]
00653cb8  38 10 8d e5                                      str r1, [sp, #0x38]
00653cbc  3c 30 8d e5                                      str r3, [sp, #0x3c]
00653cc0  39 00 00 ea                                      b #0x653dac
00653cc4  08 00 94 e5                                      ldr r0, [r4, #8]
00653cc8  00 10 a0 e3                                      mov r1, #0
00653ccc  ae e8 f2 eb                                      bl #0x30df8c
00653cd0  00 00 50 e3                                      cmp r0, #0
00653cd4  40 00 00 0a                                      beq #0x653ddc
00653cd8  0c 00 94 e5                                      ldr r0, [r4, #0xc]
00653cdc  00 10 a0 e3                                      mov r1, #0
00653ce0  a9 e8 f2 eb                                      bl #0x30df8c
00653ce4  00 00 50 e3                                      cmp r0, #0
00653ce8  3b 00 00 0a                                      beq #0x653ddc
00653cec  38 00 9d e5                                      ldr r0, [sp, #0x38]
00653cf0  14 10 9d e5                                      ldr r1, [sp, #0x14]
00653cf4  72 8f ff eb                                      bl #0x637ac4
00653cf8  28 30 9d e5                                      ldr r3, [sp, #0x28]
00653cfc  c4 00 9d e5                                      ldr r0, [sp, #0xc4]
00653d00  20 10 93 e5                                      ldr r1, [r3, #0x20]
00653d04  a8 e9 f2 eb                                      bl #0x30e3ac
00653d08  28 30 9d e5                                      ldr r3, [sp, #0x28]
00653d0c  00 60 a0 e1                                      mov r6, r0
00653d10  c8 00 9d e5                                      ldr r0, [sp, #0xc8]
00653d14  24 10 93 e5                                      ldr r1, [r3, #0x24]
00653d18  a3 e9 f2 eb                                      bl #0x30e3ac
00653d1c  28 30 9d e5                                      ldr r3, [sp, #0x28]
00653d20  00 a0 a0 e1                                      mov sl, r0
00653d24  c0 00 9d e5                                      ldr r0, [sp, #0xc0]
00653d28  1c 10 93 e5                                      ldr r1, [r3, #0x1c]
00653d2c  9e e9 f2 eb                                      bl #0x30e3ac
00653d30  b4 00 8d e5                                      str r0, [sp, #0xb4]
00653d34  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
00653d38  b8 60 8d e5                                      str r6, [sp, #0xb8]
00653d3c  bc a0 8d e5                                      str sl, [sp, #0xbc]
00653d40  e6 2a f4 eb                                      bl #0x35e8e0
00653d44  00 90 90 e5                                      ldr sb, [r0]
00653d48  00 30 a0 e1                                      mov r3, r0
00653d4c  07 00 a0 e1                                      mov r0, r7
00653d50  0c 90 85 e5                                      str sb, [r5, #0xc]
00653d54  04 a0 93 e5                                      ldr sl, [r3, #4]
00653d58  10 a0 85 e5                                      str sl, [r5, #0x10]
00653d5c  08 70 93 e5                                      ldr r7, [r3, #8]
00653d60  14 70 85 e5                                      str r7, [r5, #0x14]
00653d64  14 10 94 e5                                      ldr r1, [r4, #0x14]
00653d68  8d eb f2 eb                                      bl #0x30eba4
00653d6c  09 10 a0 e1                                      mov r1, sb
00653d70  00 60 a0 e1                                      mov r6, r0
00653d74  fc eb f2 eb                                      bl #0x30ed6c
00653d78  0a 10 a0 e1                                      mov r1, sl
00653d7c  0c 00 85 e5                                      str r0, [r5, #0xc]
00653d80  06 00 a0 e1                                      mov r0, r6
00653d84  f8 eb f2 eb                                      bl #0x30ed6c
00653d88  07 10 a0 e1                                      mov r1, r7
00653d8c  10 00 85 e5                                      str r0, [r5, #0x10]
00653d90  06 00 a0 e1                                      mov r0, r6
00653d94  f4 eb f2 eb                                      bl #0x30ed6c
00653d98  14 00 85 e5                                      str r0, [r5, #0x14]
00653d9c  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
00653da0  64 50 85 e2                                      add r5, r5, #0x64
00653da4  05 00 53 e1                                      cmp r3, r5
00653da8  ab 00 00 0a                                      beq #0x65405c
00653dac  08 00 a0 e1                                      mov r0, r8
00653db0  00 10 a0 e3                                      mov r1, #0
00653db4  74 e8 f2 eb                                      bl #0x30df8c
00653db8  00 00 50 e3                                      cmp r0, #0
00653dbc  00 70 a0 13                                      movne r7, #0
00653dc0  aa 00 00 0a                                      beq #0x654070
00653dc4  04 a0 94 e5                                      ldr sl, [r4, #4]
00653dc8  00 10 a0 e3                                      mov r1, #0
00653dcc  0a 00 a0 e1                                      mov r0, sl
00653dd0  6d e8 f2 eb                                      bl #0x30df8c
00653dd4  00 00 50 e3                                      cmp r0, #0
00653dd8  b9 ff ff 1a                                      bne #0x653cc4
00653ddc  00 60 a0 e3                                      mov r6, #0
00653de0  10 00 94 e5                                      ldr r0, [r4, #0x10]
00653de4  06 10 a0 e1                                      mov r1, r6
00653de8  42 e9 f2 eb                                      bl #0x30e2f8
00653dec  00 00 50 e3                                      cmp r0, #0
00653df0  9b 00 00 0a                                      beq #0x654064
00653df4  08 20 94 e5                                      ldr r2, [r4, #8]
00653df8  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00653dfc  14 00 9d e5                                      ldr r0, [sp, #0x14]
00653e00  a8 a0 8d e5                                      str sl, [sp, #0xa8]
00653e04  ac 20 8d e5                                      str r2, [sp, #0xac]
00653e08  b0 30 8d e5                                      str r3, [sp, #0xb0]
00653e0c  19 70 ff eb                                      bl #0x62fe78
00653e10  00 20 a0 e1                                      mov r2, r0
00653e14  01 30 a0 e1                                      mov r3, r1
00653e18  18 00 9d e5                                      ldr r0, [sp, #0x18]
00653e1c  bf 14 a0 e3                                      mov r1, #0xbf000000
00653e20  10 20 8d e5                                      str r2, [sp, #0x10]
00653e24  0c 30 8d e5                                      str r3, [sp, #0xc]
00653e28  cf eb f2 eb                                      bl #0x30ed6c
00653e2c  10 20 9d e5                                      ldr r2, [sp, #0x10]
00653e30  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00653e34  00 a0 a0 e1                                      mov sl, r0
00653e38  02 00 a0 e1                                      mov r0, r2
00653e3c  03 10 a0 e1                                      mov r1, r3
00653e40  16 ea f2 eb                                      bl #0x30e6a0
00653e44  00 10 a0 e1                                      mov r1, r0
00653e48  18 00 9d e5                                      ldr r0, [sp, #0x18]
00653e4c  c6 eb f2 eb                                      bl #0x30ed6c
00653e50  0a 10 a0 e1                                      mov r1, sl
00653e54  52 eb f2 eb                                      bl #0x30eba4
00653e58  91 ea f2 eb                                      bl #0x30e8a4
00653e5c  01 30 a0 e1                                      mov r3, r1
00653e60  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
00653e64  00 20 a0 e1                                      mov r2, r0
00653e68  20 00 9d e5                                      ldr r0, [sp, #0x20]
00653e6c  9c 60 8d e5                                      str r6, [sp, #0x9c]
00653e70  a0 60 8d e5                                      str r6, [sp, #0xa0]
00653e74  a4 60 8d e5                                      str r6, [sp, #0xa4]
00653e78  00 10 8d e5                                      str r1, [sp]
00653e7c  5e 73 ff eb                                      bl #0x630bfc
00653e80  14 00 9d e5                                      ldr r0, [sp, #0x14]
00653e84  fb 6f ff eb                                      bl #0x62fe78
00653e88  04 ea f2 eb                                      bl #0x30e6a0
00653e8c  00 10 a0 e1                                      mov r1, r0
00653e90  18 00 9d e5                                      ldr r0, [sp, #0x18]
00653e94  b4 eb f2 eb                                      bl #0x30ed6c
00653e98  00 10 a0 e1                                      mov r1, r0
00653e9c  0a 00 a0 e1                                      mov r0, sl
00653ea0  3f eb f2 eb                                      bl #0x30eba4
00653ea4  7e ea f2 eb                                      bl #0x30e8a4
00653ea8  01 30 a0 e1                                      mov r3, r1
00653eac  30 10 9d e5                                      ldr r1, [sp, #0x30]
00653eb0  00 20 a0 e1                                      mov r2, r0
00653eb4  20 00 9d e5                                      ldr r0, [sp, #0x20]
00653eb8  90 60 8d e5                                      str r6, [sp, #0x90]
00653ebc  94 60 8d e5                                      str r6, [sp, #0x94]
00653ec0  98 60 8d e5                                      str r6, [sp, #0x98]
00653ec4  00 10 8d e5                                      str r1, [sp]
00653ec8  8a 73 ff eb                                      bl #0x630cf8
00653ecc  14 00 9d e5                                      ldr r0, [sp, #0x14]
00653ed0  e8 6f ff eb                                      bl #0x62fe78
00653ed4  f1 e9 f2 eb                                      bl #0x30e6a0
00653ed8  00 10 a0 e1                                      mov r1, r0
00653edc  18 00 9d e5                                      ldr r0, [sp, #0x18]
00653ee0  a1 eb f2 eb                                      bl #0x30ed6c
00653ee4  00 10 a0 e1                                      mov r1, r0
00653ee8  0a 00 a0 e1                                      mov r0, sl
00653eec  2c eb f2 eb                                      bl #0x30eba4
00653ef0  6b ea f2 eb                                      bl #0x30e8a4
00653ef4  01 30 a0 e1                                      mov r3, r1
00653ef8  34 10 9d e5                                      ldr r1, [sp, #0x34]
00653efc  00 20 a0 e1                                      mov r2, r0
00653f00  20 00 9d e5                                      ldr r0, [sp, #0x20]
00653f04  8c 60 8d e5                                      str r6, [sp, #0x8c]
00653f08  84 60 8d e5                                      str r6, [sp, #0x84]
00653f0c  88 60 8d e5                                      str r6, [sp, #0x88]
00653f10  00 10 8d e5                                      str r1, [sp]
00653f14  b3 73 ff eb                                      bl #0x630de8
00653f18  a8 a0 9d e5                                      ldr sl, [sp, #0xa8]
00653f1c  ac 90 9d e5                                      ldr sb, [sp, #0xac]
00653f20  b0 60 9d e5                                      ldr r6, [sp, #0xb0]
00653f24  40 10 9d e5                                      ldr r1, [sp, #0x40]
00653f28  0a 00 a0 e1                                      mov r0, sl
00653f2c  8e eb f2 eb                                      bl #0x30ed6c
00653f30  50 10 9d e5                                      ldr r1, [sp, #0x50]
00653f34  00 b0 a0 e1                                      mov fp, r0
00653f38  09 00 a0 e1                                      mov r0, sb
00653f3c  8a eb f2 eb                                      bl #0x30ed6c
00653f40  00 10 a0 e1                                      mov r1, r0
00653f44  0b 00 a0 e1                                      mov r0, fp
00653f48  15 eb f2 eb                                      bl #0x30eba4
00653f4c  60 10 9d e5                                      ldr r1, [sp, #0x60]
00653f50  00 b0 a0 e1                                      mov fp, r0
00653f54  06 00 a0 e1                                      mov r0, r6
00653f58  83 eb f2 eb                                      bl #0x30ed6c
00653f5c  00 10 a0 e1                                      mov r1, r0
00653f60  0b 00 a0 e1                                      mov r0, fp
00653f64  0e eb f2 eb                                      bl #0x30eba4
00653f68  44 10 9d e5                                      ldr r1, [sp, #0x44]
00653f6c  cc 00 8d e5                                      str r0, [sp, #0xcc]
00653f70  0a 00 a0 e1                                      mov r0, sl
00653f74  7c eb f2 eb                                      bl #0x30ed6c
00653f78  54 10 9d e5                                      ldr r1, [sp, #0x54]
00653f7c  00 b0 a0 e1                                      mov fp, r0
00653f80  09 00 a0 e1                                      mov r0, sb
00653f84  78 eb f2 eb                                      bl #0x30ed6c
00653f88  00 10 a0 e1                                      mov r1, r0
00653f8c  0b 00 a0 e1                                      mov r0, fp
00653f90  03 eb f2 eb                                      bl #0x30eba4
00653f94  64 10 9d e5                                      ldr r1, [sp, #0x64]
00653f98  00 b0 a0 e1                                      mov fp, r0
00653f9c  06 00 a0 e1                                      mov r0, r6
00653fa0  71 eb f2 eb                                      bl #0x30ed6c
00653fa4  00 10 a0 e1                                      mov r1, r0
00653fa8  0b 00 a0 e1                                      mov r0, fp
00653fac  fc ea f2 eb                                      bl #0x30eba4
00653fb0  48 10 9d e5                                      ldr r1, [sp, #0x48]
00653fb4  d0 00 8d e5                                      str r0, [sp, #0xd0]
00653fb8  0a 00 a0 e1                                      mov r0, sl
00653fbc  6a eb f2 eb                                      bl #0x30ed6c
00653fc0  58 10 9d e5                                      ldr r1, [sp, #0x58]
00653fc4  00 a0 a0 e1                                      mov sl, r0
00653fc8  09 00 a0 e1                                      mov r0, sb
00653fcc  66 eb f2 eb                                      bl #0x30ed6c
00653fd0  00 10 a0 e1                                      mov r1, r0
00653fd4  0a 00 a0 e1                                      mov r0, sl
00653fd8  f1 ea f2 eb                                      bl #0x30eba4
00653fdc  68 10 9d e5                                      ldr r1, [sp, #0x68]
00653fe0  00 a0 a0 e1                                      mov sl, r0
00653fe4  06 00 a0 e1                                      mov r0, r6
00653fe8  5f eb f2 eb                                      bl #0x30ed6c
00653fec  00 10 a0 e1                                      mov r1, r0
00653ff0  0a 00 a0 e1                                      mov r0, sl
00653ff4  ea ea f2 eb                                      bl #0x30eba4
00653ff8  d4 00 8d e5                                      str r0, [sp, #0xd4]
00653ffc  24 00 9d e5                                      ldr r0, [sp, #0x24]
00654000  36 2a f4 eb                                      bl #0x35e8e0
00654004  14 10 94 e5                                      ldr r1, [r4, #0x14]
00654008  00 60 a0 e1                                      mov r6, r0
0065400c  07 00 a0 e1                                      mov r0, r7
00654010  e3 ea f2 eb                                      bl #0x30eba4
00654014  04 10 96 e5                                      ldr r1, [r6, #4]
00654018  00 70 a0 e1                                      mov r7, r0
0065401c  52 eb f2 eb                                      bl #0x30ed6c
00654020  08 10 96 e5                                      ldr r1, [r6, #8]
00654024  00 90 a0 e1                                      mov sb, r0
00654028  07 00 a0 e1                                      mov r0, r7
0065402c  4e eb f2 eb                                      bl #0x30ed6c
00654030  00 10 96 e5                                      ldr r1, [r6]
00654034  00 a0 a0 e1                                      mov sl, r0
00654038  07 00 a0 e1                                      mov r0, r7
0065403c  4a eb f2 eb                                      bl #0x30ed6c
00654040  10 90 85 e5                                      str sb, [r5, #0x10]
00654044  0c 00 85 e5                                      str r0, [r5, #0xc]
00654048  14 a0 85 e5                                      str sl, [r5, #0x14]
0065404c  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
00654050  64 50 85 e2                                      add r5, r5, #0x64
00654054  05 00 53 e1                                      cmp r3, r5
00654058  53 ff ff 1a                                      bne #0x653dac
0065405c  dc d0 8d e2                                      add sp, sp, #0xdc
00654060  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00654064  08 90 94 e5                                      ldr sb, [r4, #8]
00654068  0c 60 94 e5                                      ldr r6, [r4, #0xc]
0065406c  ac ff ff ea                                      b #0x653f24
00654070  14 00 9d e5                                      ldr r0, [sp, #0x14]
00654074  7f 6f ff eb                                      bl #0x62fe78
00654078  88 e9 f2 eb                                      bl #0x30e6a0
0065407c  00 10 a0 e1                                      mov r1, r0
00654080  08 00 a0 e1                                      mov r0, r8
00654084  38 eb f2 eb                                      bl #0x30ed6c
00654088  bf 14 a0 e3                                      mov r1, #0xbf000000
0065408c  00 60 a0 e1                                      mov r6, r0
00654090  08 00 a0 e1                                      mov r0, r8
00654094  34 eb f2 eb                                      bl #0x30ed6c
00654098  00 10 a0 e1                                      mov r1, r0
0065409c  06 00 a0 e1                                      mov r0, r6
006540a0  bf ea f2 eb                                      bl #0x30eba4
006540a4  00 70 a0 e1                                      mov r7, r0
006540a8  45 ff ff ea                                      b #0x653dc4
006540ac  40 20 a0 e3                                      mov r2, #0x40
006540b0  40 00 8d e2                                      add r0, sp, #0x40
006540b4  e9 e8 f2 eb                                      bl #0x30e460
006540b8  fe 35 a0 e3                                      mov r3, #0x3f800000
006540bc  01 20 a0 e3                                      mov r2, #1
006540c0  80 20 cd e5                                      strb r2, [sp, #0x80]
006540c4  7c 30 8d e5                                      str r3, [sp, #0x7c]
006540c8  40 30 8d e5                                      str r3, [sp, #0x40]
006540cc  54 30 8d e5                                      str r3, [sp, #0x54]
006540d0  68 30 8d e5                                      str r3, [sp, #0x68]
006540d4  d7 fe ff ea                                      b #0x653c38
; mapping-symbol data/literal pool
006540d8  4c 33 3a 00                                      .byte 0x4c, 0x33, 0x3a, 0x00

; FUNCTION 0x006540dc, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::PMotionModel<glitch::ps::SParticle>
; alias: _ZTv0_n88_N6glitch2ps12PMotionModelINS0_9SParticleEE11initPMotionEPS2_S4_
; demangled: virtual thunk to glitch::ps::PMotionModel<glitch::ps::SParticle>::initPMotion(glitch::ps::SParticle*, glitch::ps::SParticle*)
; decoder-mode: arm
006540dc  00 30 90 e5                                      ldr r3, [r0]
006540e0  58 30 13 e5                                      ldr r3, [r3, #-0x58]
006540e4  03 00 80 e0                                      add r0, r0, r3
006540e8  b2 fe ff ea                                      b #0x653bb8

; FUNCTION 0x006540ec, declared_size=300, range_size=300, mode=arm
; class-group: glitch::ps::PMotionModel<glitch::ps::SParticle>
; alias: _ZN6glitch2ps12PMotionModelINS0_9SParticleEEC2Ev
; demangled: glitch::ps::PMotionModel<glitch::ps::SParticle>::PMotionModel()
; decoder-mode: arm
006540ec  30 40 2d e9                                      push {r4, r5, lr}
006540f0  00 30 91 e5                                      ldr r3, [r1]
006540f4  00 20 a0 e3                                      mov r2, #0
006540f8  44 d0 4d e2                                      sub sp, sp, #0x44
006540fc  00 30 80 e5                                      str r3, [r0]
00654100  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00654104  04 10 91 e5                                      ldr r1, [r1, #4]
00654108  00 40 a0 e1                                      mov r4, r0
0065410c  03 10 80 e7                                      str r1, [r0, r3]
00654110  00 30 90 e5                                      ldr r3, [r0]
00654114  0c 20 80 e5                                      str r2, [r0, #0xc]
00654118  04 20 80 e5                                      str r2, [r0, #4]
0065411c  08 20 80 e5                                      str r2, [r0, #8]
00654120  0c 50 13 e5                                      ldr r5, [r3, #-0xc]
00654124  dc 10 9f e5                                      ldr r1, [pc, #0xdc]
00654128  05 50 80 e0                                      add r5, r0, r5
0065412c  01 10 8f e0                                      add r1, pc, r1
00654130  05 00 a0 e1                                      mov r0, r5
00654134  e0 e3 ff eb                                      bl #0x64d0bc
00654138  30 20 8d e2                                      add r2, sp, #0x30
0065413c  04 30 84 e2                                      add r3, r4, #4
00654140  30 00 8d e5                                      str r0, [sp, #0x30]
00654144  30 10 85 e2                                      add r1, r5, #0x30
00654148  38 00 8d e2                                      add r0, sp, #0x38
0065414c  34 30 8d e5                                      str r3, [sp, #0x34]
00654150  e5 99 ff eb                                      bl #0x63a8ec
00654154  00 30 94 e5                                      ldr r3, [r4]
00654158  ac 10 9f e5                                      ldr r1, [pc, #0xac]
0065415c  0c 50 13 e5                                      ldr r5, [r3, #-0xc]
00654160  01 10 8f e0                                      add r1, pc, r1
00654164  05 50 84 e0                                      add r5, r4, r5
00654168  05 00 a0 e1                                      mov r0, r5
0065416c  d2 e3 ff eb                                      bl #0x64d0bc
00654170  20 20 8d e2                                      add r2, sp, #0x20
00654174  10 30 84 e2                                      add r3, r4, #0x10
00654178  20 00 8d e5                                      str r0, [sp, #0x20]
0065417c  30 10 85 e2                                      add r1, r5, #0x30
00654180  28 00 8d e2                                      add r0, sp, #0x28
00654184  24 30 8d e5                                      str r3, [sp, #0x24]
00654188  d7 99 ff eb                                      bl #0x63a8ec
0065418c  00 30 94 e5                                      ldr r3, [r4]
00654190  78 10 9f e5                                      ldr r1, [pc, #0x78]
00654194  0c 50 13 e5                                      ldr r5, [r3, #-0xc]
00654198  01 10 8f e0                                      add r1, pc, r1
0065419c  05 50 84 e0                                      add r5, r4, r5
006541a0  05 00 a0 e1                                      mov r0, r5
006541a4  c4 e3 ff eb                                      bl #0x64d0bc
006541a8  10 20 8d e2                                      add r2, sp, #0x10
006541ac  14 30 84 e2                                      add r3, r4, #0x14
006541b0  10 00 8d e5                                      str r0, [sp, #0x10]
006541b4  30 10 85 e2                                      add r1, r5, #0x30
006541b8  18 00 8d e2                                      add r0, sp, #0x18
006541bc  14 30 8d e5                                      str r3, [sp, #0x14]
006541c0  c9 99 ff eb                                      bl #0x63a8ec
006541c4  00 30 94 e5                                      ldr r3, [r4]
006541c8  44 10 9f e5                                      ldr r1, [pc, #0x44]
006541cc  0c 50 13 e5                                      ldr r5, [r3, #-0xc]
006541d0  01 10 8f e0                                      add r1, pc, r1
006541d4  05 50 84 e0                                      add r5, r4, r5
006541d8  05 00 a0 e1                                      mov r0, r5
006541dc  b6 e3 ff eb                                      bl #0x64d0bc
006541e0  18 30 84 e2                                      add r3, r4, #0x18
006541e4  00 00 8d e5                                      str r0, [sp]
006541e8  30 10 85 e2                                      add r1, r5, #0x30
006541ec  08 00 8d e2                                      add r0, sp, #8
006541f0  0d 20 a0 e1                                      mov r2, sp
006541f4  04 30 8d e5                                      str r3, [sp, #4]
006541f8  bb 99 ff eb                                      bl #0x63a8ec
006541fc  04 00 a0 e1                                      mov r0, r4
00654200  44 d0 8d e2                                      add sp, sp, #0x44
00654204  30 80 bd e8                                      pop {r4, r5, pc}
; mapping-symbol data/literal pool
00654208  fc 10 29 00 d8 10 29 00 58 52 28 00 e0 10 29 00  .byte 0xfc, 0x10, 0x29, 0x00, 0xd8, 0x10, 0x29, 0x00, 0x58, 0x52, 0x28, 0x00, 0xe0, 0x10, 0x29, 0x00

; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00630090, declared_size=104, range_size=104, mode=arm
; class-group: int glitch::ps::IParticleSystem<glitch::ps::SParticle>
; alias: _ZN6glitch2ps15IParticleSystemINS0_9SParticleEE9bindForceINS0_5PWindEEEiRNT_15parameters_typeE
; demangled: int glitch::ps::IParticleSystem<glitch::ps::SParticle>::bindForce<glitch::ps::PWind>(glitch::ps::PWind::parameters_type&)
; decoder-mode: arm
00630090  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00630094  00 20 90 e5                                      ldr r2, [r0]
00630098  00 30 a0 e1                                      mov r3, r0
0063009c  01 50 a0 e1                                      mov r5, r1
006300a0  0c 70 12 e5                                      ldr r7, [r2, #-0xc]
006300a4  00 10 a0 e3                                      mov r1, #0
006300a8  10 00 a0 e3                                      mov r0, #0x10
006300ac  07 20 93 e7                                      ldr r2, [r3, r7]
006300b0  07 70 83 e0                                      add r7, r3, r7
006300b4  34 40 9f e5                                      ldr r4, [pc, #0x34]
006300b8  58 60 92 e5                                      ldr r6, [r2, #0x58]
006300bc  3a 10 fc eb                                      bl #0x5341ac
006300c0  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
006300c4  04 40 8f e0                                      add r4, pc, r4
006300c8  00 20 a0 e3                                      mov r2, #0
006300cc  03 30 94 e7                                      ldr r3, [r4, r3]
006300d0  00 10 a0 e1                                      mov r1, r0
006300d4  08 20 80 e5                                      str r2, [r0, #8]
006300d8  08 30 83 e2                                      add r3, r3, #8
006300dc  0c 50 80 e5                                      str r5, [r0, #0xc]
006300e0  28 00 80 e8                                      stm r0, {r3, r5}
006300e4  07 00 a0 e1                                      mov r0, r7
006300e8  36 ff 2f e1                                      blx r6
006300ec  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
006300f0  cc 49 36 00 a0 23 00 00                          .byte 0xcc, 0x49, 0x36, 0x00, 0xa0, 0x23, 0x00, 0x00

; FUNCTION 0x00630180, declared_size=104, range_size=104, mode=arm
; class-group: int glitch::ps::IParticleSystem<glitch::ps::SParticle>
; alias: _ZN6glitch2ps15IParticleSystemINS0_9SParticleEE9bindForceINS0_8PGravityEEEiRNT_15parameters_typeE
; demangled: int glitch::ps::IParticleSystem<glitch::ps::SParticle>::bindForce<glitch::ps::PGravity>(glitch::ps::PGravity::parameters_type&)
; decoder-mode: arm
00630180  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00630184  00 20 90 e5                                      ldr r2, [r0]
00630188  00 30 a0 e1                                      mov r3, r0
0063018c  01 50 a0 e1                                      mov r5, r1
00630190  0c 70 12 e5                                      ldr r7, [r2, #-0xc]
00630194  00 10 a0 e3                                      mov r1, #0
00630198  10 00 a0 e3                                      mov r0, #0x10
0063019c  07 20 93 e7                                      ldr r2, [r3, r7]
006301a0  07 70 83 e0                                      add r7, r3, r7
006301a4  34 40 9f e5                                      ldr r4, [pc, #0x34]
006301a8  58 60 92 e5                                      ldr r6, [r2, #0x58]
006301ac  fe 0f fc eb                                      bl #0x5341ac
006301b0  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
006301b4  04 40 8f e0                                      add r4, pc, r4
006301b8  00 20 a0 e3                                      mov r2, #0
006301bc  03 30 94 e7                                      ldr r3, [r4, r3]
006301c0  00 10 a0 e1                                      mov r1, r0
006301c4  08 20 80 e5                                      str r2, [r0, #8]
006301c8  08 30 83 e2                                      add r3, r3, #8
006301cc  0c 50 80 e5                                      str r5, [r0, #0xc]
006301d0  28 00 80 e8                                      stm r0, {r3, r5}
006301d4  07 00 a0 e1                                      mov r0, r7
006301d8  36 ff 2f e1                                      blx r6
006301dc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
006301e0  dc 48 36 00 20 3e 00 00                          .byte 0xdc, 0x48, 0x36, 0x00, 0x20, 0x3e, 0x00, 0x00

; FUNCTION 0x00634a98, declared_size=136, range_size=136, mode=arm
; class-group: int glitch::ps::IParticleSystem<glitch::ps::SParticle>
; alias: _ZN6glitch2ps15IParticleSystemINS0_9SParticleEE9bindForceINS0_10PDeflectorEEEiRNT_15parameters_typeE
; demangled: int glitch::ps::IParticleSystem<glitch::ps::SParticle>::bindForce<glitch::ps::PDeflector>(glitch::ps::PDeflector::parameters_type&)
; decoder-mode: arm
00634a98  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00634a9c  00 20 90 e5                                      ldr r2, [r0]
00634aa0  00 30 a0 e1                                      mov r3, r0
00634aa4  01 60 a0 e1                                      mov r6, r1
00634aa8  0c 80 12 e5                                      ldr r8, [r2, #-0xc]
00634aac  00 10 a0 e3                                      mov r1, #0
00634ab0  54 00 a0 e3                                      mov r0, #0x54
00634ab4  08 20 93 e7                                      ldr r2, [r3, r8]
00634ab8  08 80 83 e0                                      add r8, r3, r8
00634abc  50 50 9f e5                                      ldr r5, [pc, #0x50]
00634ac0  58 70 92 e5                                      ldr r7, [r2, #0x58]
00634ac4  b8 fd fb eb                                      bl #0x5341ac
00634ac8  48 30 9f e5                                      ldr r3, [pc, #0x48]
00634acc  05 50 8f e0                                      add r5, pc, r5
00634ad0  01 20 a0 e3                                      mov r2, #1
00634ad4  03 30 95 e7                                      ldr r3, [r5, r3]
00634ad8  00 40 a0 e1                                      mov r4, r0
00634adc  08 20 80 e5                                      str r2, [r0, #8]
00634ae0  08 30 83 e2                                      add r3, r3, #8
00634ae4  06 10 a0 e1                                      mov r1, r6
00634ae8  48 00 80 e8                                      stm r0, {r3, r6}
00634aec  0c 00 80 e2                                      add r0, r0, #0xc
00634af0  aa ff ff eb                                      bl #0x6349a0
00634af4  20 30 9f e5                                      ldr r3, [pc, #0x20]
00634af8  08 00 a0 e1                                      mov r0, r8
00634afc  04 10 a0 e1                                      mov r1, r4
00634b00  03 30 95 e7                                      ldr r3, [r5, r3]
00634b04  08 30 83 e2                                      add r3, r3, #8
00634b08  00 30 84 e5                                      str r3, [r4]
00634b0c  37 ff 2f e1                                      blx r7
00634b10  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00634b14  c4 ff 35 00 7c 07 00 00 20 0c 00 00              .byte 0xc4, 0xff, 0x35, 0x00, 0x7c, 0x07, 0x00, 0x00, 0x20, 0x0c, 0x00, 0x00

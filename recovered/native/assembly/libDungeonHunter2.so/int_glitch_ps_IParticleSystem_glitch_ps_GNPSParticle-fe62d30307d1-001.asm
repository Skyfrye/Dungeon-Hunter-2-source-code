; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00630018, declared_size=104, range_size=104, mode=arm
; class-group: int glitch::ps::IParticleSystem<glitch::ps::GNPSParticle>
; alias: _ZN6glitch2ps15IParticleSystemINS0_12GNPSParticleEE9bindForceINS0_5PWindEEEiRNT_15parameters_typeE
; demangled: int glitch::ps::IParticleSystem<glitch::ps::GNPSParticle>::bindForce<glitch::ps::PWind>(glitch::ps::PWind::parameters_type&)
; decoder-mode: arm
00630018  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0063001c  00 20 90 e5                                      ldr r2, [r0]
00630020  00 30 a0 e1                                      mov r3, r0
00630024  01 50 a0 e1                                      mov r5, r1
00630028  0c 70 12 e5                                      ldr r7, [r2, #-0xc]
0063002c  00 10 a0 e3                                      mov r1, #0
00630030  10 00 a0 e3                                      mov r0, #0x10
00630034  07 20 93 e7                                      ldr r2, [r3, r7]
00630038  07 70 83 e0                                      add r7, r3, r7
0063003c  34 40 9f e5                                      ldr r4, [pc, #0x34]
00630040  58 60 92 e5                                      ldr r6, [r2, #0x58]
00630044  58 10 fc eb                                      bl #0x5341ac
00630048  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
0063004c  04 40 8f e0                                      add r4, pc, r4
00630050  00 20 a0 e3                                      mov r2, #0
00630054  03 30 94 e7                                      ldr r3, [r4, r3]
00630058  00 10 a0 e1                                      mov r1, r0
0063005c  08 20 80 e5                                      str r2, [r0, #8]
00630060  08 30 83 e2                                      add r3, r3, #8
00630064  0c 50 80 e5                                      str r5, [r0, #0xc]
00630068  28 00 80 e8                                      stm r0, {r3, r5}
0063006c  07 00 a0 e1                                      mov r0, r7
00630070  36 ff 2f e1                                      blx r6
00630074  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00630078  44 4a 36 00 e0 3a 00 00                          .byte 0x44, 0x4a, 0x36, 0x00, 0xe0, 0x3a, 0x00, 0x00

; FUNCTION 0x00630108, declared_size=104, range_size=104, mode=arm
; class-group: int glitch::ps::IParticleSystem<glitch::ps::GNPSParticle>
; alias: _ZN6glitch2ps15IParticleSystemINS0_12GNPSParticleEE9bindForceINS0_8PGravityEEEiRNT_15parameters_typeE
; demangled: int glitch::ps::IParticleSystem<glitch::ps::GNPSParticle>::bindForce<glitch::ps::PGravity>(glitch::ps::PGravity::parameters_type&)
; decoder-mode: arm
00630108  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0063010c  00 20 90 e5                                      ldr r2, [r0]
00630110  00 30 a0 e1                                      mov r3, r0
00630114  01 50 a0 e1                                      mov r5, r1
00630118  0c 70 12 e5                                      ldr r7, [r2, #-0xc]
0063011c  00 10 a0 e3                                      mov r1, #0
00630120  10 00 a0 e3                                      mov r0, #0x10
00630124  07 20 93 e7                                      ldr r2, [r3, r7]
00630128  07 70 83 e0                                      add r7, r3, r7
0063012c  34 40 9f e5                                      ldr r4, [pc, #0x34]
00630130  58 60 92 e5                                      ldr r6, [r2, #0x58]
00630134  1c 10 fc eb                                      bl #0x5341ac
00630138  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
0063013c  04 40 8f e0                                      add r4, pc, r4
00630140  00 20 a0 e3                                      mov r2, #0
00630144  03 30 94 e7                                      ldr r3, [r4, r3]
00630148  00 10 a0 e1                                      mov r1, r0
0063014c  08 20 80 e5                                      str r2, [r0, #8]
00630150  08 30 83 e2                                      add r3, r3, #8
00630154  0c 50 80 e5                                      str r5, [r0, #0xc]
00630158  28 00 80 e8                                      stm r0, {r3, r5}
0063015c  07 00 a0 e1                                      mov r0, r7
00630160  36 ff 2f e1                                      blx r6
00630164  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00630168  54 49 36 00 f8 32 00 00                          .byte 0x54, 0x49, 0x36, 0x00, 0xf8, 0x32, 0x00, 0x00

; FUNCTION 0x00634a00, declared_size=136, range_size=136, mode=arm
; class-group: int glitch::ps::IParticleSystem<glitch::ps::GNPSParticle>
; alias: _ZN6glitch2ps15IParticleSystemINS0_12GNPSParticleEE9bindForceINS0_10PDeflectorEEEiRNT_15parameters_typeE
; demangled: int glitch::ps::IParticleSystem<glitch::ps::GNPSParticle>::bindForce<glitch::ps::PDeflector>(glitch::ps::PDeflector::parameters_type&)
; decoder-mode: arm
00634a00  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00634a04  00 20 90 e5                                      ldr r2, [r0]
00634a08  00 30 a0 e1                                      mov r3, r0
00634a0c  01 60 a0 e1                                      mov r6, r1
00634a10  0c 80 12 e5                                      ldr r8, [r2, #-0xc]
00634a14  00 10 a0 e3                                      mov r1, #0
00634a18  54 00 a0 e3                                      mov r0, #0x54
00634a1c  08 20 93 e7                                      ldr r2, [r3, r8]
00634a20  08 80 83 e0                                      add r8, r3, r8
00634a24  50 50 9f e5                                      ldr r5, [pc, #0x50]
00634a28  58 70 92 e5                                      ldr r7, [r2, #0x58]
00634a2c  de fd fb eb                                      bl #0x5341ac
00634a30  48 30 9f e5                                      ldr r3, [pc, #0x48]
00634a34  05 50 8f e0                                      add r5, pc, r5
00634a38  01 20 a0 e3                                      mov r2, #1
00634a3c  03 30 95 e7                                      ldr r3, [r5, r3]
00634a40  00 40 a0 e1                                      mov r4, r0
00634a44  08 20 80 e5                                      str r2, [r0, #8]
00634a48  08 30 83 e2                                      add r3, r3, #8
00634a4c  06 10 a0 e1                                      mov r1, r6
00634a50  48 00 80 e8                                      stm r0, {r3, r6}
00634a54  0c 00 80 e2                                      add r0, r0, #0xc
00634a58  d0 ff ff eb                                      bl #0x6349a0
00634a5c  20 30 9f e5                                      ldr r3, [pc, #0x20]
00634a60  08 00 a0 e1                                      mov r0, r8
00634a64  04 10 a0 e1                                      mov r1, r4
00634a68  03 30 95 e7                                      ldr r3, [r5, r3]
00634a6c  08 30 83 e2                                      add r3, r3, #8
00634a70  00 30 84 e5                                      str r3, [r4]
00634a74  37 ff 2f e1                                      blx r7
00634a78  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00634a7c  5c 00 36 00 0c 37 00 00 f4 27 00 00              .byte 0x5c, 0x00, 0x36, 0x00, 0x0c, 0x37, 0x00, 0x00, 0xf4, 0x27, 0x00, 0x00

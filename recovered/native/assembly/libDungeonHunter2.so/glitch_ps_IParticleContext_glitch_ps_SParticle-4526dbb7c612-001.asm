; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006309ac, declared_size=136, range_size=136, mode=arm
; class-group: glitch::ps::IParticleContext<glitch::ps::SParticle>
; alias: _ZN6glitch2ps16IParticleContextINS0_9SParticleEE8lockAxisEjNS_4core8vector3dIfEE
; demangled: glitch::ps::IParticleContext<glitch::ps::SParticle>::lockAxis(unsigned int, glitch::core::vector3d<float>)
; decoder-mode: arm
006309ac  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006309b0  01 30 80 e0                                      add r3, r0, r1
006309b4  01 50 a0 e1                                      mov r5, r1
006309b8  01 10 a0 e3                                      mov r1, #1
006309bc  04 10 c3 e5                                      strb r1, [r3, #4]
006309c0  08 30 92 e5                                      ldr r3, [r2, #8]
006309c4  00 10 92 e5                                      ldr r1, [r2]
006309c8  04 20 92 e5                                      ldr r2, [r2, #4]
006309cc  10 d0 4d e2                                      sub sp, sp, #0x10
006309d0  00 40 a0 e1                                      mov r4, r0
006309d4  04 00 8d e2                                      add r0, sp, #4
006309d8  08 20 8d e5                                      str r2, [sp, #8]
006309dc  0c 30 8d e5                                      str r3, [sp, #0xc]
006309e0  04 10 8d e5                                      str r1, [sp, #4]
006309e4  bd b7 f4 eb                                      bl #0x35e8e0
006309e8  3f 14 a0 e3                                      mov r1, #0x3f000000
006309ec  00 60 a0 e1                                      mov r6, r0
006309f0  04 00 90 e5                                      ldr r0, [r0, #4]
006309f4  dc 78 f3 eb                                      bl #0x30ed6c
006309f8  3f 14 a0 e3                                      mov r1, #0x3f000000
006309fc  00 70 a0 e1                                      mov r7, r0
00630a00  08 00 96 e5                                      ldr r0, [r6, #8]
00630a04  d8 78 f3 eb                                      bl #0x30ed6c
00630a08  0c 30 a0 e3                                      mov r3, #0xc
00630a0c  00 80 a0 e1                                      mov r8, r0
00630a10  3f 14 a0 e3                                      mov r1, #0x3f000000
00630a14  00 00 96 e5                                      ldr r0, [r6]
00630a18  93 45 24 e0                                      mla r4, r3, r5, r4
00630a1c  d2 78 f3 eb                                      bl #0x30ed6c
00630a20  10 80 84 e5                                      str r8, [r4, #0x10]
00630a24  08 00 84 e5                                      str r0, [r4, #8]
00630a28  0c 70 84 e5                                      str r7, [r4, #0xc]
00630a2c  10 d0 8d e2                                      add sp, sp, #0x10
00630a30  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0064d0bc, declared_size=276, range_size=276, mode=arm
; class-group: glitch::ps::IParticleContext<glitch::ps::SParticle>
; alias: _ZN6glitch2ps16IParticleContextINS0_9SParticleEE10hashStringEPKc
; demangled: glitch::ps::IParticleContext<glitch::ps::SParticle>::hashString(char const*)
; decoder-mode: arm
0064d0bc  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0064d0c0  f0 40 9f e5                                      ldr r4, [pc, #0xf0]
0064d0c4  f0 30 9f e5                                      ldr r3, [pc, #0xf0]
0064d0c8  f0 70 9f e5                                      ldr r7, [pc, #0xf0]
0064d0cc  04 40 8f e0                                      add r4, pc, r4
0064d0d0  03 50 94 e7                                      ldr r5, [r4, r3]
0064d0d4  07 30 94 e7                                      ldr r3, [r4, r7]
0064d0d8  24 d0 4d e2                                      sub sp, sp, #0x24
0064d0dc  00 20 95 e5                                      ldr r2, [r5]
0064d0e0  00 30 93 e5                                      ldr r3, [r3]
0064d0e4  01 60 a0 e1                                      mov r6, r1
0064d0e8  01 00 12 e3                                      tst r2, #1
0064d0ec  1c 30 8d e5                                      str r3, [sp, #0x1c]
0064d0f0  21 00 00 0a                                      beq #0x64d17c
0064d0f4  04 50 8d e2                                      add r5, sp, #4
0064d0f8  06 00 a0 e1                                      mov r0, r6
0064d0fc  14 50 8d e5                                      str r5, [sp, #0x14]
0064d100  18 50 8d e5                                      str r5, [sp, #0x18]
0064d104  52 03 f3 eb                                      bl #0x30de54
0064d108  06 10 a0 e1                                      mov r1, r6
0064d10c  00 20 86 e0                                      add r2, r6, r0
0064d110  05 00 a0 e1                                      mov r0, r5
0064d114  73 11 f3 eb                                      bl #0x3116e8
0064d118  18 20 9d e5                                      ldr r2, [sp, #0x18]
0064d11c  14 00 9d e5                                      ldr r0, [sp, #0x14]
0064d120  00 00 52 e1                                      cmp r2, r0
0064d124  00 60 a0 03                                      moveq r6, #0
0064d128  09 00 00 0a                                      beq #0x64d154
0064d12c  00 60 a0 e3                                      mov r6, #0
0064d130  d1 10 d2 e0                                      ldrsb r1, [r2], #1
0064d134  b9 39 07 e3                                      movw r3, #0x79b9
0064d138  37 3e 49 e3                                      movt r3, #0x9e37
0064d13c  03 30 81 e0                                      add r3, r1, r3
0064d140  06 33 83 e0                                      add r3, r3, r6, lsl #6
0064d144  26 31 83 e0                                      add r3, r3, r6, lsr #2
0064d148  00 00 52 e1                                      cmp r2, r0
0064d14c  03 60 26 e0                                      eor r6, r6, r3
0064d150  f6 ff ff 1a                                      bne #0x64d130
0064d154  05 00 a0 e1                                      mov r0, r5
0064d158  13 1a f3 eb                                      bl #0x3139ac
0064d15c  07 30 94 e7                                      ldr r3, [r4, r7]
0064d160  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0064d164  06 00 a0 e1                                      mov r0, r6
0064d168  00 30 93 e5                                      ldr r3, [r3]
0064d16c  03 00 52 e1                                      cmp r2, r3
0064d170  0f 00 00 1a                                      bne #0x64d1b4
0064d174  24 d0 8d e2                                      add sp, sp, #0x24
0064d178  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0064d17c  05 00 a0 e1                                      mov r0, r5
0064d180  79 05 f3 eb                                      bl #0x30e76c
0064d184  00 00 50 e3                                      cmp r0, #0
0064d188  d9 ff ff 0a                                      beq #0x64d0f4
0064d18c  05 00 a0 e1                                      mov r0, r5
0064d190  29 06 f3 eb                                      bl #0x30ea3c
0064d194  28 30 9f e5                                      ldr r3, [pc, #0x28]
0064d198  03 00 94 e7                                      ldr r0, [r4, r3]
0064d19c  24 30 9f e5                                      ldr r3, [pc, #0x24]
0064d1a0  03 10 94 e7                                      ldr r1, [r4, r3]
0064d1a4  20 30 9f e5                                      ldr r3, [pc, #0x20]
0064d1a8  03 20 94 e7                                      ldr r2, [r4, r3]
0064d1ac  54 04 f3 eb                                      bl #0x30e304
0064d1b0  cf ff ff ea                                      b #0x64d0f4
0064d1b4  55 04 f3 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0064d1b8  c4 79 34 00 a0 0a 00 00 ac 40 00 00 b4 2d 00 00  .byte 0xc4, 0x79, 0x34, 0x00, 0xa0, 0x0a, 0x00, 0x00, 0xac, 0x40, 0x00, 0x00, 0xb4, 0x2d, 0x00, 0x00
0064d1c8  24 27 00 00 90 18 00 00                          .byte 0x24, 0x27, 0x00, 0x00, 0x90, 0x18, 0x00, 0x00

; FUNCTION 0x0064d1d0, declared_size=192, range_size=192, mode=arm
; class-group: glitch::ps::IParticleContext<glitch::ps::SParticle>
; alias: _ZN6glitch2ps16IParticleContextINS0_9SParticleEEC2Ev
; demangled: glitch::ps::IParticleContext<glitch::ps::SParticle>::IParticleContext()
; decoder-mode: arm
0064d1d0  ac c0 9f e5                                      ldr ip, [pc, #0xac]
0064d1d4  ac 20 9f e5                                      ldr r2, [pc, #0xac]
0064d1d8  30 40 2d e9                                      push {r4, r5, lr}
0064d1dc  0c c0 8f e0                                      add ip, pc, ip
0064d1e0  02 20 9c e7                                      ldr r2, [ip, r2]
0064d1e4  00 30 a0 e3                                      mov r3, #0
0064d1e8  14 10 80 e2                                      add r1, r0, #0x14
0064d1ec  08 e0 82 e2                                      add lr, r2, #8
0064d1f0  00 e0 80 e5                                      str lr, [r0]
0064d1f4  08 30 80 e5                                      str r3, [r0, #8]
0064d1f8  0c 30 80 e5                                      str r3, [r0, #0xc]
0064d1fc  10 30 80 e5                                      str r3, [r0, #0x10]
0064d200  14 30 80 e5                                      str r3, [r0, #0x14]
0064d204  08 30 81 e5                                      str r3, [r1, #8]
0064d208  04 30 81 e5                                      str r3, [r1, #4]
0064d20c  78 10 9f e5                                      ldr r1, [pc, #0x78]
0064d210  00 20 a0 e3                                      mov r2, #0
0064d214  00 50 a0 e1                                      mov r5, r0
0064d218  21 20 c0 e5                                      strb r2, [r0, #0x21]
0064d21c  24 20 80 e5                                      str r2, [r0, #0x24]
0064d220  28 20 80 e5                                      str r2, [r0, #0x28]
0064d224  2c 20 80 e5                                      str r2, [r0, #0x2c]
0064d228  34 20 80 e5                                      str r2, [r0, #0x34]
0064d22c  30 20 e5 e5                                      strb r2, [r5, #0x30]!
0064d230  14 d0 4d e2                                      sub sp, sp, #0x14
0064d234  50 30 80 e5                                      str r3, [r0, #0x50]
0064d238  54 20 c0 e5                                      strb r2, [r0, #0x54]
0064d23c  01 10 8f e0                                      add r1, pc, r1
0064d240  38 50 80 e5                                      str r5, [r0, #0x38]
0064d244  3c 50 80 e5                                      str r5, [r0, #0x3c]
0064d248  40 20 80 e5                                      str r2, [r0, #0x40]
0064d24c  48 30 80 e5                                      str r3, [r0, #0x48]
0064d250  4c 30 80 e5                                      str r3, [r0, #0x4c]
0064d254  00 40 a0 e1                                      mov r4, r0
0064d258  97 ff ff eb                                      bl #0x64d0bc
0064d25c  58 30 84 e2                                      add r3, r4, #0x58
0064d260  00 00 8d e5                                      str r0, [sp]
0064d264  05 10 a0 e1                                      mov r1, r5
0064d268  08 00 8d e2                                      add r0, sp, #8
0064d26c  0d 20 a0 e1                                      mov r2, sp
0064d270  04 30 8d e5                                      str r3, [sp, #4]
0064d274  9c b5 ff eb                                      bl #0x63a8ec
0064d278  04 00 a0 e1                                      mov r0, r4
0064d27c  14 d0 8d e2                                      add sp, sp, #0x14
0064d280  30 80 bd e8                                      pop {r4, r5, pc}
; mapping-symbol data/literal pool
0064d284  b4 78 34 00 28 22 00 00 94 7e 29 00              .byte 0xb4, 0x78, 0x34, 0x00, 0x28, 0x22, 0x00, 0x00, 0x94, 0x7e, 0x29, 0x00

; FUNCTION 0x0064d298, declared_size=116, range_size=116, mode=arm
; class-group: glitch::ps::IParticleContext<glitch::ps::SParticle>
; alias: _ZN6glitch2ps16IParticleContextINS0_9SParticleEED2Ev
; demangled: glitch::ps::IParticleContext<glitch::ps::SParticle>::~IParticleContext()
; decoder-mode: arm
0064d298  70 40 2d e9                                      push {r4, r5, r6, lr}
0064d29c  60 30 9f e5                                      ldr r3, [pc, #0x60]
0064d2a0  60 20 9f e5                                      ldr r2, [pc, #0x60]
0064d2a4  40 10 90 e5                                      ldr r1, [r0, #0x40]
0064d2a8  03 30 8f e0                                      add r3, pc, r3
0064d2ac  02 20 93 e7                                      ldr r2, [r3, r2]
0064d2b0  00 00 51 e3                                      cmp r1, #0
0064d2b4  00 40 a0 e1                                      mov r4, r0
0064d2b8  08 20 82 e2                                      add r2, r2, #8
0064d2bc  00 20 80 e5                                      str r2, [r0]
0064d2c0  05 00 00 1a                                      bne #0x64d2dc
0064d2c4  24 00 94 e5                                      ldr r0, [r4, #0x24]
0064d2c8  00 00 50 e3                                      cmp r0, #0
0064d2cc  00 00 00 0a                                      beq #0x64d2d4
0064d2d0  5e 0c f3 eb                                      bl #0x310450
0064d2d4  04 00 a0 e1                                      mov r0, r4
0064d2d8  70 80 bd e8                                      pop {r4, r5, r6, pc}
0064d2dc  30 50 80 e2                                      add r5, r0, #0x30
0064d2e0  05 00 a0 e1                                      mov r0, r5
0064d2e4  34 10 94 e5                                      ldr r1, [r4, #0x34]
0064d2e8  b5 b3 ff eb                                      bl #0x63a1c4
0064d2ec  00 30 a0 e3                                      mov r3, #0
0064d2f0  3c 50 84 e5                                      str r5, [r4, #0x3c]
0064d2f4  40 30 84 e5                                      str r3, [r4, #0x40]
0064d2f8  38 50 84 e5                                      str r5, [r4, #0x38]
0064d2fc  34 30 84 e5                                      str r3, [r4, #0x34]
0064d300  ef ff ff ea                                      b #0x64d2c4
; mapping-symbol data/literal pool
0064d304  e8 77 34 00 28 22 00 00                          .byte 0xe8, 0x77, 0x34, 0x00, 0x28, 0x22, 0x00, 0x00

; FUNCTION 0x0064d5bc, declared_size=116, range_size=116, mode=arm
; class-group: glitch::ps::IParticleContext<glitch::ps::SParticle>
; alias: _ZN6glitch2ps16IParticleContextINS0_9SParticleEED1Ev
; demangled: glitch::ps::IParticleContext<glitch::ps::SParticle>::~IParticleContext()
; decoder-mode: arm
0064d5bc  70 40 2d e9                                      push {r4, r5, r6, lr}
0064d5c0  60 30 9f e5                                      ldr r3, [pc, #0x60]
0064d5c4  60 20 9f e5                                      ldr r2, [pc, #0x60]
0064d5c8  40 10 90 e5                                      ldr r1, [r0, #0x40]
0064d5cc  03 30 8f e0                                      add r3, pc, r3
0064d5d0  02 20 93 e7                                      ldr r2, [r3, r2]
0064d5d4  00 00 51 e3                                      cmp r1, #0
0064d5d8  00 40 a0 e1                                      mov r4, r0
0064d5dc  08 20 82 e2                                      add r2, r2, #8
0064d5e0  00 20 80 e5                                      str r2, [r0]
0064d5e4  05 00 00 1a                                      bne #0x64d600
0064d5e8  24 00 94 e5                                      ldr r0, [r4, #0x24]
0064d5ec  00 00 50 e3                                      cmp r0, #0
0064d5f0  00 00 00 0a                                      beq #0x64d5f8
0064d5f4  95 0b f3 eb                                      bl #0x310450
0064d5f8  04 00 a0 e1                                      mov r0, r4
0064d5fc  70 80 bd e8                                      pop {r4, r5, r6, pc}
0064d600  30 50 80 e2                                      add r5, r0, #0x30
0064d604  05 00 a0 e1                                      mov r0, r5
0064d608  34 10 94 e5                                      ldr r1, [r4, #0x34]
0064d60c  ec b2 ff eb                                      bl #0x63a1c4
0064d610  00 30 a0 e3                                      mov r3, #0
0064d614  3c 50 84 e5                                      str r5, [r4, #0x3c]
0064d618  40 30 84 e5                                      str r3, [r4, #0x40]
0064d61c  38 50 84 e5                                      str r5, [r4, #0x38]
0064d620  34 30 84 e5                                      str r3, [r4, #0x34]
0064d624  ef ff ff ea                                      b #0x64d5e8
; mapping-symbol data/literal pool
0064d628  c4 74 34 00 28 22 00 00                          .byte 0xc4, 0x74, 0x34, 0x00, 0x28, 0x22, 0x00, 0x00

; FUNCTION 0x0064d630, declared_size=28, range_size=28, mode=arm
; class-group: glitch::ps::IParticleContext<glitch::ps::SParticle>
; alias: _ZN6glitch2ps16IParticleContextINS0_9SParticleEED0Ev
; demangled: glitch::ps::IParticleContext<glitch::ps::SParticle>::~IParticleContext()
; decoder-mode: arm
0064d630  10 40 2d e9                                      push {r4, lr}
0064d634  00 40 a0 e1                                      mov r4, r0
0064d638  df ff ff eb                                      bl #0x64d5bc
0064d63c  04 00 a0 e1                                      mov r0, r4
0064d640  1a 03 f3 eb                                      bl #0x30e2b0
0064d644  04 00 a0 e1                                      mov r0, r4
0064d648  10 80 bd e8                                      pop {r4, pc}

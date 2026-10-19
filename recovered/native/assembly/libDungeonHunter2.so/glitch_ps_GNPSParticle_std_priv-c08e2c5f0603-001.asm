; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00638d54, declared_size=616, range_size=616, mode=arm
; class-group: glitch::ps::GNPSParticle* std::priv
; alias: _ZNSt4priv9__find_ifIPN6glitch2ps12GNPSParticleENS2_13AgeNKillCheckIS3_EEEET_S7_S7_T0_RKSt26random_access_iterator_tag
; demangled: glitch::ps::GNPSParticle* std::priv::__find_if<glitch::ps::GNPSParticle*, glitch::ps::AgeNKillCheck<glitch::ps::GNPSParticle> >(glitch::ps::GNPSParticle*, glitch::ps::GNPSParticle*, glitch::ps::AgeNKillCheck<glitch::ps::GNPSParticle>, std::random_access_iterator_tag const&)
; decoder-mode: arm
00638d54  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00638d58  97 3f 06 e3                                      movw r3, #0x6f97
00638d5c  01 50 a0 e1                                      mov r5, r1
00638d60  01 10 60 e0                                      rsb r1, r0, r1
00638d64  41 11 a0 e1                                      asr r1, r1, #2
00638d68  f9 36 49 e3                                      movt r3, #0x96f9
00638d6c  93 01 03 e0                                      mul r3, r3, r1
00638d70  00 40 a0 e1                                      mov r4, r0
00638d74  43 81 a0 e1                                      asr r8, r3, #2
00638d78  00 00 58 e3                                      cmp r8, #0
00638d7c  02 70 a0 e1                                      mov r7, r2
00638d80  50 00 00 da                                      ble #0x638ec8
00638d84  58 10 90 e5                                      ldr r1, [r0, #0x58]
00638d88  02 00 a0 e1                                      mov r0, r2
00638d8c  84 57 f3 eb                                      bl #0x30eba4
00638d90  5c 10 94 e5                                      ldr r1, [r4, #0x5c]
00638d94  58 00 84 e5                                      str r0, [r4, #0x58]
00638d98  00 60 a0 e1                                      mov r6, r0
00638d9c  c4 55 f3 eb                                      bl #0x30e4b4
00638da0  00 00 50 e3                                      cmp r0, #0
00638da4  4e 00 00 1a                                      bne #0x638ee4
00638da8  06 00 a0 e1                                      mov r0, r6
00638dac  00 10 a0 e3                                      mov r1, #0
00638db0  55 56 f3 eb                                      bl #0x30e70c
00638db4  00 00 50 e3                                      cmp r0, #0
00638db8  49 00 00 1a                                      bne #0x638ee4
00638dbc  9c 40 84 e2                                      add r4, r4, #0x9c
00638dc0  58 10 94 e5                                      ldr r1, [r4, #0x58]
00638dc4  07 00 a0 e1                                      mov r0, r7
00638dc8  75 57 f3 eb                                      bl #0x30eba4
00638dcc  5c 10 94 e5                                      ldr r1, [r4, #0x5c]
00638dd0  58 00 84 e5                                      str r0, [r4, #0x58]
00638dd4  00 60 a0 e1                                      mov r6, r0
00638dd8  b5 55 f3 eb                                      bl #0x30e4b4
00638ddc  00 00 50 e3                                      cmp r0, #0
00638de0  3f 00 00 1a                                      bne #0x638ee4
00638de4  06 00 a0 e1                                      mov r0, r6
00638de8  00 10 a0 e3                                      mov r1, #0
00638dec  46 56 f3 eb                                      bl #0x30e70c
00638df0  00 00 50 e3                                      cmp r0, #0
00638df4  3a 00 00 1a                                      bne #0x638ee4
00638df8  f4 10 94 e5                                      ldr r1, [r4, #0xf4]
00638dfc  07 00 a0 e1                                      mov r0, r7
00638e00  67 57 f3 eb                                      bl #0x30eba4
00638e04  f8 10 94 e5                                      ldr r1, [r4, #0xf8]
00638e08  f4 00 84 e5                                      str r0, [r4, #0xf4]
00638e0c  00 60 a0 e1                                      mov r6, r0
00638e10  a7 55 f3 eb                                      bl #0x30e4b4
00638e14  00 00 50 e3                                      cmp r0, #0
00638e18  33 00 00 1a                                      bne #0x638eec
00638e1c  06 00 a0 e1                                      mov r0, r6
00638e20  00 10 a0 e3                                      mov r1, #0
00638e24  38 56 f3 eb                                      bl #0x30e70c
00638e28  00 00 50 e3                                      cmp r0, #0
00638e2c  2e 00 00 1a                                      bne #0x638eec
00638e30  90 11 94 e5                                      ldr r1, [r4, #0x190]
00638e34  07 00 a0 e1                                      mov r0, r7
00638e38  59 57 f3 eb                                      bl #0x30eba4
00638e3c  94 11 94 e5                                      ldr r1, [r4, #0x194]
00638e40  90 01 84 e5                                      str r0, [r4, #0x190]
00638e44  00 60 a0 e1                                      mov r6, r0
00638e48  99 55 f3 eb                                      bl #0x30e4b4
00638e4c  00 00 50 e3                                      cmp r0, #0
00638e50  28 00 00 1a                                      bne #0x638ef8
00638e54  06 00 a0 e1                                      mov r0, r6
00638e58  00 10 a0 e3                                      mov r1, #0
00638e5c  2a 56 f3 eb                                      bl #0x30e70c
00638e60  00 00 50 e3                                      cmp r0, #0
00638e64  23 00 00 1a                                      bne #0x638ef8
00638e68  01 80 58 e2                                      subs r8, r8, #1
00638e6c  0f 00 00 0a                                      beq #0x638eb0
00638e70  2c 12 94 e5                                      ldr r1, [r4, #0x22c]
00638e74  07 00 a0 e1                                      mov r0, r7
00638e78  49 57 f3 eb                                      bl #0x30eba4
00638e7c  30 12 94 e5                                      ldr r1, [r4, #0x230]
00638e80  2c 02 84 e5                                      str r0, [r4, #0x22c]
00638e84  00 60 a0 e1                                      mov r6, r0
00638e88  89 55 f3 eb                                      bl #0x30e4b4
00638e8c  00 00 50 e3                                      cmp r0, #0
00638e90  1a 00 00 1a                                      bne #0x638f00
00638e94  06 00 a0 e1                                      mov r0, r6
00638e98  00 10 a0 e3                                      mov r1, #0
00638e9c  1a 56 f3 eb                                      bl #0x30e70c
00638ea0  00 00 50 e3                                      cmp r0, #0
00638ea4  15 00 00 1a                                      bne #0x638f00
00638ea8  27 4e 84 e2                                      add r4, r4, #0x270
00638eac  c3 ff ff ea                                      b #0x638dc0
00638eb0  75 4f 84 e2                                      add r4, r4, #0x1d4
00638eb4  05 20 64 e0                                      rsb r2, r4, r5
00638eb8  97 3f 06 e3                                      movw r3, #0x6f97
00638ebc  42 21 a0 e1                                      asr r2, r2, #2
00638ec0  f9 36 49 e3                                      movt r3, #0x96f9
00638ec4  93 02 03 e0                                      mul r3, r3, r2
00638ec8  02 00 53 e3                                      cmp r3, #2
00638ecc  1c 00 00 0a                                      beq #0x638f44
00638ed0  03 00 53 e3                                      cmp r3, #3
00638ed4  0b 00 00 0a                                      beq #0x638f08
00638ed8  01 00 53 e3                                      cmp r3, #1
00638edc  27 00 00 0a                                      beq #0x638f80
00638ee0  05 40 a0 e1                                      mov r4, r5
00638ee4  04 00 a0 e1                                      mov r0, r4
00638ee8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00638eec  9c 40 84 e2                                      add r4, r4, #0x9c
00638ef0  04 00 a0 e1                                      mov r0, r4
00638ef4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00638ef8  4e 4f 84 e2                                      add r4, r4, #0x138
00638efc  f8 ff ff ea                                      b #0x638ee4
00638f00  75 4f 84 e2                                      add r4, r4, #0x1d4
00638f04  f6 ff ff ea                                      b #0x638ee4
00638f08  58 10 94 e5                                      ldr r1, [r4, #0x58]
00638f0c  07 00 a0 e1                                      mov r0, r7
00638f10  23 57 f3 eb                                      bl #0x30eba4
00638f14  5c 10 94 e5                                      ldr r1, [r4, #0x5c]
00638f18  58 00 84 e5                                      str r0, [r4, #0x58]
00638f1c  00 60 a0 e1                                      mov r6, r0
00638f20  63 55 f3 eb                                      bl #0x30e4b4
00638f24  00 00 50 e3                                      cmp r0, #0
00638f28  ed ff ff 1a                                      bne #0x638ee4
00638f2c  06 00 a0 e1                                      mov r0, r6
00638f30  00 10 a0 e3                                      mov r1, #0
00638f34  f4 55 f3 eb                                      bl #0x30e70c
00638f38  00 00 50 e3                                      cmp r0, #0
00638f3c  e8 ff ff 1a                                      bne #0x638ee4
00638f40  9c 40 84 e2                                      add r4, r4, #0x9c
00638f44  58 10 94 e5                                      ldr r1, [r4, #0x58]
00638f48  07 00 a0 e1                                      mov r0, r7
00638f4c  14 57 f3 eb                                      bl #0x30eba4
00638f50  5c 10 94 e5                                      ldr r1, [r4, #0x5c]
00638f54  58 00 84 e5                                      str r0, [r4, #0x58]
00638f58  00 60 a0 e1                                      mov r6, r0
00638f5c  54 55 f3 eb                                      bl #0x30e4b4
00638f60  00 00 50 e3                                      cmp r0, #0
00638f64  de ff ff 1a                                      bne #0x638ee4
00638f68  06 00 a0 e1                                      mov r0, r6
00638f6c  00 10 a0 e3                                      mov r1, #0
00638f70  e5 55 f3 eb                                      bl #0x30e70c
00638f74  00 00 50 e3                                      cmp r0, #0
00638f78  d9 ff ff 1a                                      bne #0x638ee4
00638f7c  9c 40 84 e2                                      add r4, r4, #0x9c
00638f80  58 10 94 e5                                      ldr r1, [r4, #0x58]
00638f84  07 00 a0 e1                                      mov r0, r7
00638f88  05 57 f3 eb                                      bl #0x30eba4
00638f8c  5c 10 94 e5                                      ldr r1, [r4, #0x5c]
00638f90  58 00 84 e5                                      str r0, [r4, #0x58]
00638f94  00 60 a0 e1                                      mov r6, r0
00638f98  45 55 f3 eb                                      bl #0x30e4b4
00638f9c  00 00 50 e3                                      cmp r0, #0
00638fa0  cf ff ff 1a                                      bne #0x638ee4
00638fa4  06 00 a0 e1                                      mov r0, r6
00638fa8  00 10 a0 e3                                      mov r1, #0
00638fac  d6 55 f3 eb                                      bl #0x30e70c
00638fb0  00 00 50 e3                                      cmp r0, #0
00638fb4  ca ff ff 1a                                      bne #0x638ee4
00638fb8  c8 ff ff ea                                      b #0x638ee0

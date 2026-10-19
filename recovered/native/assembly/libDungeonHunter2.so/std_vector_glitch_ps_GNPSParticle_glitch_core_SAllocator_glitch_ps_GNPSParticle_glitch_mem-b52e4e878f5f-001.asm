; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00637fac, declared_size=104, range_size=104, mode=arm
; class-group: std::vector<glitch::ps::GNPSParticle, glitch::core::SAllocator<glitch::ps::GNPSParticle, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch2ps12GNPSParticleENS0_4core10SAllocatorIS2_LNS0_6memory13E_MEMORY_HINTE0EEEE8_M_eraseEPS2_S9_RKSt12__false_type
; demangled: std::vector<glitch::ps::GNPSParticle, glitch::core::SAllocator<glitch::ps::GNPSParticle, (glitch::memory::E_MEMORY_HINT)0> >::_M_erase(glitch::ps::GNPSParticle*, glitch::ps::GNPSParticle*, std::__false_type const&)
; decoder-mode: arm
00637fac  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00637fb0  04 30 90 e5                                      ldr r3, [r0, #4]
00637fb4  02 80 a0 e1                                      mov r8, r2
00637fb8  97 2f 06 e3                                      movw r2, #0x6f97
00637fbc  03 a0 68 e0                                      rsb sl, r8, r3
00637fc0  4a a1 a0 e1                                      asr sl, sl, #2
00637fc4  f9 26 49 e3                                      movt r2, #0x96f9
00637fc8  92 0a 0a e0                                      mul sl, r2, sl
00637fcc  00 40 a0 e1                                      mov r4, r0
00637fd0  00 00 5a e3                                      cmp sl, #0
00637fd4  01 70 a0 e1                                      mov r7, r1
00637fd8  01 a0 a0 d1                                      movle sl, r1
00637fdc  09 00 00 da                                      ble #0x638008
00637fe0  0a 60 a0 e1                                      mov r6, sl
00637fe4  00 50 a0 e3                                      mov r5, #0
00637fe8  05 00 87 e0                                      add r0, r7, r5
00637fec  05 10 88 e0                                      add r1, r8, r5
00637ff0  8e ff ff eb                                      bl #0x637e30
00637ff4  01 60 56 e2                                      subs r6, r6, #1
00637ff8  9c 50 85 e2                                      add r5, r5, #0x9c
00637ffc  f9 ff ff 1a                                      bne #0x637fe8
00638000  9c 30 a0 e3                                      mov r3, #0x9c
00638004  93 7a 2a e0                                      mla sl, r3, sl, r7
00638008  04 a0 84 e5                                      str sl, [r4, #4]
0063800c  07 00 a0 e1                                      mov r0, r7
00638010  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x0063a14c, declared_size=120, range_size=120, mode=arm
; class-group: std::vector<glitch::ps::GNPSParticle, glitch::core::SAllocator<glitch::ps::GNPSParticle, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch2ps12GNPSParticleENS0_4core10SAllocatorIS2_LNS0_6memory13E_MEMORY_HINTE0EEEE20_M_compute_next_sizeEj
; demangled: std::vector<glitch::ps::GNPSParticle, glitch::core::SAllocator<glitch::ps::GNPSParticle, (glitch::memory::E_MEMORY_HINT)0> >::_M_compute_next_size(unsigned int)
; decoder-mode: arm
0063a14c  70 40 2d e9                                      push {r4, r5, r6, lr}
0063a150  14 00 90 e8                                      ldm r0, {r2, r4}
0063a154  97 3f 06 e3                                      movw r3, #0x6f97
0063a158  f9 36 49 e3                                      movt r3, #0x96f9
0063a15c  04 40 62 e0                                      rsb r4, r2, r4
0063a160  44 41 a0 e1                                      asr r4, r4, #2
0063a164  93 04 04 e0                                      mul r4, r3, r4
0063a168  01 50 a0 e1                                      mov r5, r1
0063a16c  69 37 64 e2                                      rsb r3, r4, #0x1a40000
0063a170  69 3d 83 e2                                      add r3, r3, #0x1a40
0063a174  01 30 83 e2                                      add r3, r3, #1
0063a178  01 00 53 e1                                      cmp r3, r1
0063a17c  0b 00 00 3a                                      blo #0x63a1b0
0063a180  41 3a 01 e3                                      movw r3, #0x1a41
0063a184  05 00 54 e1                                      cmp r4, r5
0063a188  04 00 84 20                                      addhs r0, r4, r4
0063a18c  05 00 84 30                                      addlo r0, r4, r5
0063a190  03 36 83 e1                                      orr r3, r3, r3, lsl #12
0063a194  03 00 50 e1                                      cmp r0, r3
0063a198  01 00 00 8a                                      bhi #0x63a1a4
0063a19c  04 00 50 e1                                      cmp r0, r4
0063a1a0  01 00 00 2a                                      bhs #0x63a1ac
0063a1a4  41 0a 01 e3                                      movw r0, #0x1a41
0063a1a8  00 06 80 e1                                      orr r0, r0, r0, lsl #12
0063a1ac  70 80 bd e8                                      pop {r4, r5, r6, pc}
0063a1b0  08 00 9f e5                                      ldr r0, [pc, #8]
0063a1b4  00 00 8f e0                                      add r0, pc, r0
0063a1b8  20 3b 03 eb                                      bl #0x708e40
0063a1bc  ef ff ff ea                                      b #0x63a180
; mapping-symbol data/literal pool
0063a1c0  b4 42 28 00                                      .byte 0xb4, 0x42, 0x28, 0x00

; FUNCTION 0x0063dd94, declared_size=268, range_size=268, mode=arm
; class-group: std::vector<glitch::ps::GNPSParticle, glitch::core::SAllocator<glitch::ps::GNPSParticle, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch2ps12GNPSParticleENS0_4core10SAllocatorIS2_LNS0_6memory13E_MEMORY_HINTE0EEEE7reserveEj
; demangled: std::vector<glitch::ps::GNPSParticle, glitch::core::SAllocator<glitch::ps::GNPSParticle, (glitch::memory::E_MEMORY_HINT)0> >::reserve(unsigned int)
; decoder-mode: arm
0063dd94  70 40 2d e9                                      push {r4, r5, r6, lr}
0063dd98  00 40 a0 e1                                      mov r4, r0
0063dd9c  00 20 90 e5                                      ldr r2, [r0]
0063dda0  08 00 90 e5                                      ldr r0, [r0, #8]
0063dda4  97 3f 06 e3                                      movw r3, #0x6f97
0063dda8  f9 36 49 e3                                      movt r3, #0x96f9
0063ddac  00 00 62 e0                                      rsb r0, r2, r0
0063ddb0  40 01 a0 e1                                      asr r0, r0, #2
0063ddb4  93 00 03 e0                                      mul r3, r3, r0
0063ddb8  08 d0 4d e2                                      sub sp, sp, #8
0063ddbc  03 00 51 e1                                      cmp r1, r3
0063ddc0  04 10 8d e5                                      str r1, [sp, #4]
0063ddc4  26 00 00 9a                                      bls #0x63de64
0063ddc8  41 3a 01 e3                                      movw r3, #0x1a41
0063ddcc  03 36 83 e1                                      orr r3, r3, r3, lsl #12
0063ddd0  03 00 51 e1                                      cmp r1, r3
0063ddd4  24 00 00 8a                                      bhi #0x63de6c
0063ddd8  04 30 94 e5                                      ldr r3, [r4, #4]
0063dddc  97 1f 06 e3                                      movw r1, #0x6f97
0063dde0  f9 16 49 e3                                      movt r1, #0x96f9
0063dde4  03 50 62 e0                                      rsb r5, r2, r3
0063dde8  45 51 a0 e1                                      asr r5, r5, #2
0063ddec  00 00 52 e3                                      cmp r2, #0
0063ddf0  91 05 05 e0                                      mul r5, r1, r5
0063ddf4  21 00 00 0a                                      beq #0x63de80
0063ddf8  04 00 a0 e1                                      mov r0, r4
0063ddfc  04 10 8d e2                                      add r1, sp, #4
0063de00  ca ff ff eb                                      bl #0x63dd30
0063de04  00 30 94 e5                                      ldr r3, [r4]
0063de08  00 60 a0 e1                                      mov r6, r0
0063de0c  04 00 94 e5                                      ldr r0, [r4, #4]
0063de10  03 00 50 e1                                      cmp r0, r3
0063de14  0a 00 00 0a                                      beq #0x63de44
0063de18  9c 20 40 e2                                      sub r2, r0, #0x9c
0063de1c  02 20 63 e0                                      rsb r2, r3, r2
0063de20  97 3f 06 e3                                      movw r3, #0x6f97
0063de24  22 21 a0 e1                                      lsr r2, r2, #2
0063de28  f9 36 41 e3                                      movt r3, #0x16f9
0063de2c  93 02 03 e0                                      mul r3, r3, r2
0063de30  9b 20 e0 e3                                      mvn r2, #0x9b
0063de34  03 31 c3 e3                                      bic r3, r3, #0xc0000000
0063de38  92 03 03 e0                                      mul r3, r2, r3
0063de3c  02 30 83 e0                                      add r3, r3, r2
0063de40  03 00 80 e0                                      add r0, r0, r3
0063de44  81 49 f3 eb                                      bl #0x310450
0063de48  04 20 9d e5                                      ldr r2, [sp, #4]
0063de4c  9c 30 a0 e3                                      mov r3, #0x9c
0063de50  93 65 25 e0                                      mla r5, r3, r5, r6
0063de54  93 62 23 e0                                      mla r3, r3, r2, r6
0063de58  04 50 84 e5                                      str r5, [r4, #4]
0063de5c  08 30 84 e5                                      str r3, [r4, #8]
0063de60  00 60 84 e5                                      str r6, [r4]
0063de64  08 d0 8d e2                                      add sp, sp, #8
0063de68  70 80 bd e8                                      pop {r4, r5, r6, pc}
0063de6c  28 00 9f e5                                      ldr r0, [pc, #0x28]
0063de70  00 00 8f e0                                      add r0, pc, r0
0063de74  f1 2b 03 eb                                      bl #0x708e40
0063de78  00 20 94 e5                                      ldr r2, [r4]
0063de7c  d5 ff ff ea                                      b #0x63ddd8
0063de80  04 30 9d e5                                      ldr r3, [sp, #4]
0063de84  9c 00 a0 e3                                      mov r0, #0x9c
0063de88  02 10 a0 e1                                      mov r1, r2
0063de8c  90 03 00 e0                                      mul r0, r0, r3
0063de90  b4 49 f3 eb                                      bl #0x310568
0063de94  00 60 a0 e1                                      mov r6, r0
0063de98  ea ff ff ea                                      b #0x63de48
; mapping-symbol data/literal pool
0063de9c  f8 05 28 00                                      .byte 0xf8, 0x05, 0x28, 0x00

; FUNCTION 0x0063e250, declared_size=472, range_size=472, mode=arm
; class-group: std::vector<glitch::ps::GNPSParticle, glitch::core::SAllocator<glitch::ps::GNPSParticle, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch2ps12GNPSParticleENS0_4core10SAllocatorIS2_LNS0_6memory13E_MEMORY_HINTE0EEEE18_M_fill_insert_auxEPS2_jRKS2_RKSt12__false_type
; demangled: std::vector<glitch::ps::GNPSParticle, glitch::core::SAllocator<glitch::ps::GNPSParticle, (glitch::memory::E_MEMORY_HINT)0> >::_M_fill_insert_aux(glitch::ps::GNPSParticle*, unsigned int, glitch::ps::GNPSParticle const&, std::__false_type const&)
; decoder-mode: arm
0063e250  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0063e254  00 40 a0 e1                                      mov r4, r0
0063e258  00 00 90 e5                                      ldr r0, [r0]
0063e25c  b4 d0 4d e2                                      sub sp, sp, #0xb4
0063e260  03 60 a0 e1                                      mov r6, r3
0063e264  00 00 53 e1                                      cmp r3, r0
0063e268  01 50 a0 e1                                      mov r5, r1
0063e26c  04 70 94 35                                      ldrlo r7, [r4, #4]
0063e270  10 00 00 3a                                      blo #0x63e2b8
0063e274  04 70 94 e5                                      ldr r7, [r4, #4]
0063e278  07 00 53 e1                                      cmp r3, r7
0063e27c  0d 00 00 2a                                      bhs #0x63e2b8
0063e280  10 70 8d e2                                      add r7, sp, #0x10
0063e284  03 10 a0 e1                                      mov r1, r3
0063e288  07 00 a0 e1                                      mov r0, r7
0063e28c  0c 20 8d e5                                      str r2, [sp, #0xc]
0063e290  97 e6 ff eb                                      bl #0x637cf4
0063e294  ac c0 8d e2                                      add ip, sp, #0xac
0063e298  04 00 a0 e1                                      mov r0, r4
0063e29c  05 10 a0 e1                                      mov r1, r5
0063e2a0  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0063e2a4  07 30 a0 e1                                      mov r3, r7
0063e2a8  00 c0 8d e5                                      str ip, [sp]
0063e2ac  e7 ff ff eb                                      bl #0x63e250
0063e2b0  b4 d0 8d e2                                      add sp, sp, #0xb4
0063e2b4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0063e2b8  07 80 65 e0                                      rsb r8, r5, r7
0063e2bc  97 3f 06 e3                                      movw r3, #0x6f97
0063e2c0  48 81 a0 e1                                      asr r8, r8, #2
0063e2c4  f9 36 49 e3                                      movt r3, #0x96f9
0063e2c8  93 08 08 e0                                      mul r8, r3, r8
0063e2cc  08 00 52 e1                                      cmp r2, r8
0063e2d0  2c 00 00 2a                                      bhs #0x63e388
0063e2d4  9c 90 a0 e3                                      mov sb, #0x9c
0063e2d8  99 02 09 e0                                      mul sb, sb, r2
0063e2dc  49 b1 a0 e1                                      asr fp, sb, #2
0063e2e0  93 0b 0b e0                                      mul fp, r3, fp
0063e2e4  07 80 69 e0                                      rsb r8, sb, r7
0063e2e8  00 00 5b e3                                      cmp fp, #0
0063e2ec  07 20 a0 d1                                      movle r2, r7
0063e2f0  07 00 00 da                                      ble #0x63e314
0063e2f4  00 a0 a0 e3                                      mov sl, #0
0063e2f8  0a 00 87 e0                                      add r0, r7, sl
0063e2fc  0a 10 88 e0                                      add r1, r8, sl
0063e300  7b e6 ff eb                                      bl #0x637cf4
0063e304  01 b0 5b e2                                      subs fp, fp, #1
0063e308  9c a0 8a e2                                      add sl, sl, #0x9c
0063e30c  f9 ff ff 1a                                      bne #0x63e2f8
0063e310  04 20 94 e5                                      ldr r2, [r4, #4]
0063e314  08 a0 65 e0                                      rsb sl, r5, r8
0063e318  97 3f 06 e3                                      movw r3, #0x6f97
0063e31c  f9 36 49 e3                                      movt r3, #0x96f9
0063e320  4a a1 a0 e1                                      asr sl, sl, #2
0063e324  93 0a 0a e0                                      mul sl, r3, sl
0063e328  09 30 82 e0                                      add r3, r2, sb
0063e32c  00 00 5a e3                                      cmp sl, #0
0063e330  04 30 84 e5                                      str r3, [r4, #4]
0063e334  06 00 00 da                                      ble #0x63e354
0063e338  9c 70 47 e2                                      sub r7, r7, #0x9c
0063e33c  9c 80 48 e2                                      sub r8, r8, #0x9c
0063e340  07 00 a0 e1                                      mov r0, r7
0063e344  08 10 a0 e1                                      mov r1, r8
0063e348  b8 e6 ff eb                                      bl #0x637e30
0063e34c  01 a0 5a e2                                      subs sl, sl, #1
0063e350  f8 ff ff 1a                                      bne #0x63e338
0063e354  97 3f 06 e3                                      movw r3, #0x6f97
0063e358  49 41 a0 e1                                      asr r4, sb, #2
0063e35c  f9 36 49 e3                                      movt r3, #0x96f9
0063e360  93 04 04 e0                                      mul r4, r3, r4
0063e364  00 00 54 e3                                      cmp r4, #0
0063e368  d0 ff ff da                                      ble #0x63e2b0
0063e36c  05 00 a0 e1                                      mov r0, r5
0063e370  06 10 a0 e1                                      mov r1, r6
0063e374  ad e6 ff eb                                      bl #0x637e30
0063e378  01 40 54 e2                                      subs r4, r4, #1
0063e37c  9c 50 85 e2                                      add r5, r5, #0x9c
0063e380  f9 ff ff 1a                                      bne #0x63e36c
0063e384  c9 ff ff ea                                      b #0x63e2b0
0063e388  02 20 68 e0                                      rsb r2, r8, r2
0063e38c  9c 90 a0 e3                                      mov sb, #0x9c
0063e390  99 72 29 e0                                      mla sb, sb, r2, r7
0063e394  09 a0 67 e0                                      rsb sl, r7, sb
0063e398  4a a1 a0 e1                                      asr sl, sl, #2
0063e39c  93 0a 0a e0                                      mul sl, r3, sl
0063e3a0  00 00 5a e3                                      cmp sl, #0
0063e3a4  05 00 00 da                                      ble #0x63e3c0
0063e3a8  07 00 a0 e1                                      mov r0, r7
0063e3ac  06 10 a0 e1                                      mov r1, r6
0063e3b0  4f e6 ff eb                                      bl #0x637cf4
0063e3b4  01 a0 5a e2                                      subs sl, sl, #1
0063e3b8  9c 70 87 e2                                      add r7, r7, #0x9c
0063e3bc  f9 ff ff 1a                                      bne #0x63e3a8
0063e3c0  00 00 58 e3                                      cmp r8, #0
0063e3c4  04 90 84 e5                                      str sb, [r4, #4]
0063e3c8  12 00 00 da                                      ble #0x63e418
0063e3cc  08 a0 a0 e1                                      mov sl, r8
0063e3d0  00 70 a0 e3                                      mov r7, #0
0063e3d4  07 00 89 e0                                      add r0, sb, r7
0063e3d8  07 10 85 e0                                      add r1, r5, r7
0063e3dc  44 e6 ff eb                                      bl #0x637cf4
0063e3e0  01 a0 5a e2                                      subs sl, sl, #1
0063e3e4  9c 70 87 e2                                      add r7, r7, #0x9c
0063e3e8  f9 ff ff 1a                                      bne #0x63e3d4
0063e3ec  04 30 94 e5                                      ldr r3, [r4, #4]
0063e3f0  9c 20 a0 e3                                      mov r2, #0x9c
0063e3f4  92 38 23 e0                                      mla r3, r2, r8, r3
0063e3f8  04 30 84 e5                                      str r3, [r4, #4]
0063e3fc  05 00 a0 e1                                      mov r0, r5
0063e400  06 10 a0 e1                                      mov r1, r6
0063e404  89 e6 ff eb                                      bl #0x637e30
0063e408  01 80 58 e2                                      subs r8, r8, #1
0063e40c  9c 50 85 e2                                      add r5, r5, #0x9c
0063e410  f9 ff ff 1a                                      bne #0x63e3fc
0063e414  a5 ff ff ea                                      b #0x63e2b0
0063e418  9c 30 a0 e3                                      mov r3, #0x9c
0063e41c  93 98 28 e0                                      mla r8, r3, r8, sb
0063e420  04 80 84 e5                                      str r8, [r4, #4]
0063e424  a1 ff ff ea                                      b #0x63e2b0

; FUNCTION 0x0063e428, declared_size=444, range_size=444, mode=arm
; class-group: std::vector<glitch::ps::GNPSParticle, glitch::core::SAllocator<glitch::ps::GNPSParticle, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch2ps12GNPSParticleENS0_4core10SAllocatorIS2_LNS0_6memory13E_MEMORY_HINTE0EEEE14_M_fill_insertEPS2_jRKS2_
; demangled: std::vector<glitch::ps::GNPSParticle, glitch::core::SAllocator<glitch::ps::GNPSParticle, (glitch::memory::E_MEMORY_HINT)0> >::_M_fill_insert(glitch::ps::GNPSParticle*, unsigned int, glitch::ps::GNPSParticle const&)
; decoder-mode: arm
0063e428  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0063e42c  00 80 52 e2                                      subs r8, r2, #0
0063e430  1c d0 4d e2                                      sub sp, sp, #0x1c
0063e434  00 50 a0 e1                                      mov r5, r0
0063e438  01 40 a0 e1                                      mov r4, r1
0063e43c  03 60 a0 e1                                      mov r6, r3
0063e440  5c 00 00 0a                                      beq #0x63e5b8
0063e444  08 c0 90 e5                                      ldr ip, [r0, #8]
0063e448  04 e0 90 e5                                      ldr lr, [r0, #4]
0063e44c  97 7f 06 e3                                      movw r7, #0x6f97
0063e450  f9 76 49 e3                                      movt r7, #0x96f9
0063e454  0c c0 6e e0                                      rsb ip, lr, ip
0063e458  4c c1 a0 e1                                      asr ip, ip, #2
0063e45c  97 0c 0c e0                                      mul ip, r7, ip
0063e460  0c 00 58 e1                                      cmp r8, ip
0063e464  55 00 00 9a                                      bls #0x63e5c0
0063e468  08 10 a0 e1                                      mov r1, r8
0063e46c  36 ef ff eb                                      bl #0x63a14c
0063e470  9c 30 a0 e3                                      mov r3, #0x9c
0063e474  93 00 03 e0                                      mul r3, r3, r0
0063e478  00 10 a0 e3                                      mov r1, #0
0063e47c  03 00 a0 e1                                      mov r0, r3
0063e480  0c 30 8d e5                                      str r3, [sp, #0xc]
0063e484  37 48 f3 eb                                      bl #0x310568
0063e488  00 90 95 e5                                      ldr sb, [r5]
0063e48c  00 a0 a0 e1                                      mov sl, r0
0063e490  04 30 69 e0                                      rsb r3, sb, r4
0063e494  43 31 a0 e1                                      asr r3, r3, #2
0063e498  97 03 03 e0                                      mul r3, r7, r3
0063e49c  00 00 53 e3                                      cmp r3, #0
0063e4a0  08 30 8d e5                                      str r3, [sp, #8]
0063e4a4  00 70 a0 d1                                      movle r7, r0
0063e4a8  0a 00 00 da                                      ble #0x63e4d8
0063e4ac  08 b0 9d e5                                      ldr fp, [sp, #8]
0063e4b0  00 70 a0 e3                                      mov r7, #0
0063e4b4  07 00 8a e0                                      add r0, sl, r7
0063e4b8  07 10 89 e0                                      add r1, sb, r7
0063e4bc  0c e6 ff eb                                      bl #0x637cf4
0063e4c0  01 b0 5b e2                                      subs fp, fp, #1
0063e4c4  9c 70 87 e2                                      add r7, r7, #0x9c
0063e4c8  f9 ff ff 1a                                      bne #0x63e4b4
0063e4cc  08 20 9d e5                                      ldr r2, [sp, #8]
0063e4d0  9c 70 a0 e3                                      mov r7, #0x9c
0063e4d4  97 a2 27 e0                                      mla r7, r7, r2, sl
0063e4d8  01 00 58 e3                                      cmp r8, #1
0063e4dc  3b 00 00 0a                                      beq #0x63e5d0
0063e4e0  9c 30 a0 e3                                      mov r3, #0x9c
0063e4e4  93 78 28 e0                                      mla r8, r3, r8, r7
0063e4e8  97 3f 06 e3                                      movw r3, #0x6f97
0063e4ec  08 90 67 e0                                      rsb sb, r7, r8
0063e4f0  49 91 a0 e1                                      asr sb, sb, #2
0063e4f4  f9 36 49 e3                                      movt r3, #0x96f9
0063e4f8  93 09 09 e0                                      mul sb, r3, sb
0063e4fc  00 00 59 e3                                      cmp sb, #0
0063e500  05 00 00 da                                      ble #0x63e51c
0063e504  07 00 a0 e1                                      mov r0, r7
0063e508  06 10 a0 e1                                      mov r1, r6
0063e50c  f8 e5 ff eb                                      bl #0x637cf4
0063e510  01 90 59 e2                                      subs sb, sb, #1
0063e514  9c 70 87 e2                                      add r7, r7, #0x9c
0063e518  f9 ff ff 1a                                      bne #0x63e504
0063e51c  04 00 95 e5                                      ldr r0, [r5, #4]
0063e520  97 3f 06 e3                                      movw r3, #0x6f97
0063e524  f9 36 49 e3                                      movt r3, #0x96f9
0063e528  00 90 64 e0                                      rsb sb, r4, r0
0063e52c  49 91 a0 e1                                      asr sb, sb, #2
0063e530  93 09 09 e0                                      mul sb, r3, sb
0063e534  00 00 59 e3                                      cmp sb, #0
0063e538  0a 00 00 da                                      ble #0x63e568
0063e53c  09 70 a0 e1                                      mov r7, sb
0063e540  00 60 a0 e3                                      mov r6, #0
0063e544  06 00 88 e0                                      add r0, r8, r6
0063e548  06 10 84 e0                                      add r1, r4, r6
0063e54c  e8 e5 ff eb                                      bl #0x637cf4
0063e550  01 70 57 e2                                      subs r7, r7, #1
0063e554  9c 60 86 e2                                      add r6, r6, #0x9c
0063e558  f9 ff ff 1a                                      bne #0x63e544
0063e55c  9c 30 a0 e3                                      mov r3, #0x9c
0063e560  93 89 28 e0                                      mla r8, r3, sb, r8
0063e564  04 00 95 e5                                      ldr r0, [r5, #4]
0063e568  00 30 95 e5                                      ldr r3, [r5]
0063e56c  03 00 50 e1                                      cmp r0, r3
0063e570  0a 00 00 0a                                      beq #0x63e5a0
0063e574  9c 20 40 e2                                      sub r2, r0, #0x9c
0063e578  02 20 63 e0                                      rsb r2, r3, r2
0063e57c  97 3f 06 e3                                      movw r3, #0x6f97
0063e580  22 21 a0 e1                                      lsr r2, r2, #2
0063e584  f9 36 41 e3                                      movt r3, #0x16f9
0063e588  93 02 03 e0                                      mul r3, r3, r2
0063e58c  9b 20 e0 e3                                      mvn r2, #0x9b
0063e590  03 31 c3 e3                                      bic r3, r3, #0xc0000000
0063e594  92 03 03 e0                                      mul r3, r2, r3
0063e598  02 30 83 e0                                      add r3, r3, r2
0063e59c  03 00 80 e0                                      add r0, r0, r3
0063e5a0  aa 47 f3 eb                                      bl #0x310450
0063e5a4  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0063e5a8  04 80 85 e5                                      str r8, [r5, #4]
0063e5ac  00 a0 85 e5                                      str sl, [r5]
0063e5b0  02 30 8a e0                                      add r3, sl, r2
0063e5b4  08 30 85 e5                                      str r3, [r5, #8]
0063e5b8  1c d0 8d e2                                      add sp, sp, #0x1c
0063e5bc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0063e5c0  14 c0 8d e2                                      add ip, sp, #0x14
0063e5c4  00 c0 8d e5                                      str ip, [sp]
0063e5c8  20 ff ff eb                                      bl #0x63e250
0063e5cc  f9 ff ff ea                                      b #0x63e5b8
0063e5d0  06 10 a0 e1                                      mov r1, r6
0063e5d4  07 00 a0 e1                                      mov r0, r7
0063e5d8  c5 e5 ff eb                                      bl #0x637cf4
0063e5dc  9c 80 87 e2                                      add r8, r7, #0x9c
0063e5e0  cd ff ff ea                                      b #0x63e51c

; FUNCTION 0x0063e5e4, declared_size=96, range_size=96, mode=arm
; class-group: std::vector<glitch::ps::GNPSParticle, glitch::core::SAllocator<glitch::ps::GNPSParticle, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch2ps12GNPSParticleENS0_4core10SAllocatorIS2_LNS0_6memory13E_MEMORY_HINTE0EEEE6resizeEjRKS2_
; demangled: std::vector<glitch::ps::GNPSParticle, glitch::core::SAllocator<glitch::ps::GNPSParticle, (glitch::memory::E_MEMORY_HINT)0> >::resize(unsigned int, glitch::ps::GNPSParticle const&)
; decoder-mode: arm
0063e5e4  30 40 2d e9                                      push {r4, r5, lr}
0063e5e8  10 10 90 e8                                      ldm r0, {r4, ip}
0063e5ec  97 3f 06 e3                                      movw r3, #0x6f97
0063e5f0  f9 36 49 e3                                      movt r3, #0x96f9
0063e5f4  0c 50 64 e0                                      rsb r5, r4, ip
0063e5f8  45 51 a0 e1                                      asr r5, r5, #2
0063e5fc  93 05 05 e0                                      mul r5, r3, r5
0063e600  0c d0 4d e2                                      sub sp, sp, #0xc
0063e604  05 00 51 e1                                      cmp r1, r5
0063e608  02 30 a0 e1                                      mov r3, r2
0063e60c  08 00 00 2a                                      bhs #0x63e634
0063e610  9c 30 a0 e3                                      mov r3, #0x9c
0063e614  93 41 21 e0                                      mla r1, r3, r1, r4
0063e618  0c 00 51 e1                                      cmp r1, ip
0063e61c  02 00 00 0a                                      beq #0x63e62c
0063e620  0c 20 a0 e1                                      mov r2, ip
0063e624  04 30 8d e2                                      add r3, sp, #4
0063e628  5f e6 ff eb                                      bl #0x637fac
0063e62c  0c d0 8d e2                                      add sp, sp, #0xc
0063e630  30 80 bd e8                                      pop {r4, r5, pc}
0063e634  01 20 65 e0                                      rsb r2, r5, r1
0063e638  0c 10 a0 e1                                      mov r1, ip
0063e63c  79 ff ff eb                                      bl #0x63e428
0063e640  f9 ff ff ea                                      b #0x63e62c

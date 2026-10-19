; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0064d044, declared_size=120, range_size=120, mode=arm
; class-group: std::vector<glitch::ps::SParticle, glitch::core::SAllocator<glitch::ps::SParticle, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch2ps9SParticleENS0_4core10SAllocatorIS2_LNS0_6memory13E_MEMORY_HINTE0EEEE20_M_compute_next_sizeEj
; demangled: std::vector<glitch::ps::SParticle, glitch::core::SAllocator<glitch::ps::SParticle, (glitch::memory::E_MEMORY_HINT)0> >::_M_compute_next_size(unsigned int)
; decoder-mode: arm
0064d044  70 40 2d e9                                      push {r4, r5, r6, lr}
0064d048  14 00 90 e8                                      ldm r0, {r2, r4}
0064d04c  29 3c 05 e3                                      movw r3, #0x5c29
0064d050  8f 32 4c e3                                      movt r3, #0xc28f
0064d054  04 40 62 e0                                      rsb r4, r2, r4
0064d058  44 41 a0 e1                                      asr r4, r4, #2
0064d05c  93 04 04 e0                                      mul r4, r3, r4
0064d060  01 50 a0 e1                                      mov r5, r1
0064d064  a3 37 64 e2                                      rsb r3, r4, #0x28c0000
0064d068  d7 3b 83 e2                                      add r3, r3, #0x35c00
0064d06c  28 30 83 e2                                      add r3, r3, #0x28
0064d070  01 00 53 e1                                      cmp r3, r1
0064d074  0b 00 00 3a                                      blo #0x64d0a8
0064d078  28 3c 05 e3                                      movw r3, #0x5c28
0064d07c  05 00 54 e1                                      cmp r4, r5
0064d080  04 00 84 20                                      addhs r0, r4, r4
0064d084  05 00 84 30                                      addlo r0, r4, r5
0064d088  8f 32 40 e3                                      movt r3, #0x28f
0064d08c  03 00 50 e1                                      cmp r0, r3
0064d090  01 00 00 8a                                      bhi #0x64d09c
0064d094  04 00 50 e1                                      cmp r0, r4
0064d098  01 00 00 2a                                      bhs #0x64d0a4
0064d09c  28 0c 05 e3                                      movw r0, #0x5c28
0064d0a0  8f 02 40 e3                                      movt r0, #0x28f
0064d0a4  70 80 bd e8                                      pop {r4, r5, r6, pc}
0064d0a8  08 00 9f e5                                      ldr r0, [pc, #8]
0064d0ac  00 00 8f e0                                      add r0, pc, r0
0064d0b0  62 ef 02 eb                                      bl #0x708e40
0064d0b4  ef ff ff ea                                      b #0x64d078
; mapping-symbol data/literal pool
0064d0b8  bc 13 27 00                                      .byte 0xbc, 0x13, 0x27, 0x00

; FUNCTION 0x0064f900, declared_size=292, range_size=292, mode=arm
; class-group: std::vector<glitch::ps::SParticle, glitch::core::SAllocator<glitch::ps::SParticle, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch2ps9SParticleENS0_4core10SAllocatorIS2_LNS0_6memory13E_MEMORY_HINTE0EEEE8_M_eraseEPS2_S9_RKSt12__false_type
; demangled: std::vector<glitch::ps::SParticle, glitch::core::SAllocator<glitch::ps::SParticle, (glitch::memory::E_MEMORY_HINT)0> >::_M_erase(glitch::ps::SParticle*, glitch::ps::SParticle*, std::__false_type const&)
; decoder-mode: arm
0064f900  70 00 2d e9                                      push {r4, r5, r6}
0064f904  00 30 a0 e1                                      mov r3, r0
0064f908  04 00 90 e5                                      ldr r0, [r0, #4]
0064f90c  29 cc 05 e3                                      movw ip, #0x5c29
0064f910  8f c2 4c e3                                      movt ip, #0xc28f
0064f914  00 00 62 e0                                      rsb r0, r2, r0
0064f918  40 01 a0 e1                                      asr r0, r0, #2
0064f91c  9c 00 0c e0                                      mul ip, ip, r0
0064f920  00 00 5c e3                                      cmp ip, #0
0064f924  01 c0 a0 d1                                      movle ip, r1
0064f928  39 00 00 da                                      ble #0x64fa14
0064f92c  0c 50 a0 e1                                      mov r5, ip
0064f930  01 40 a0 e1                                      mov r4, r1
0064f934  00 00 92 e5                                      ldr r0, [r2]
0064f938  01 50 55 e2                                      subs r5, r5, #1
0064f93c  00 00 84 e5                                      str r0, [r4]
0064f940  04 00 92 e5                                      ldr r0, [r2, #4]
0064f944  04 00 84 e5                                      str r0, [r4, #4]
0064f948  08 00 92 e5                                      ldr r0, [r2, #8]
0064f94c  08 00 84 e5                                      str r0, [r4, #8]
0064f950  0c 00 92 e5                                      ldr r0, [r2, #0xc]
0064f954  0c 00 84 e5                                      str r0, [r4, #0xc]
0064f958  10 00 92 e5                                      ldr r0, [r2, #0x10]
0064f95c  10 00 84 e5                                      str r0, [r4, #0x10]
0064f960  14 00 92 e5                                      ldr r0, [r2, #0x14]
0064f964  14 00 84 e5                                      str r0, [r4, #0x14]
0064f968  18 00 92 e5                                      ldr r0, [r2, #0x18]
0064f96c  18 00 84 e5                                      str r0, [r4, #0x18]
0064f970  1c 00 92 e5                                      ldr r0, [r2, #0x1c]
0064f974  1c 00 84 e5                                      str r0, [r4, #0x1c]
0064f978  20 00 92 e5                                      ldr r0, [r2, #0x20]
0064f97c  20 00 84 e5                                      str r0, [r4, #0x20]
0064f980  24 00 92 e5                                      ldr r0, [r2, #0x24]
0064f984  24 00 84 e5                                      str r0, [r4, #0x24]
0064f988  28 00 92 e5                                      ldr r0, [r2, #0x28]
0064f98c  28 00 84 e5                                      str r0, [r4, #0x28]
0064f990  2c 00 92 e5                                      ldr r0, [r2, #0x2c]
0064f994  2c 00 84 e5                                      str r0, [r4, #0x2c]
0064f998  30 00 92 e5                                      ldr r0, [r2, #0x30]
0064f99c  30 00 84 e5                                      str r0, [r4, #0x30]
0064f9a0  34 00 92 e5                                      ldr r0, [r2, #0x34]
0064f9a4  34 00 84 e5                                      str r0, [r4, #0x34]
0064f9a8  38 00 92 e5                                      ldr r0, [r2, #0x38]
0064f9ac  38 00 84 e5                                      str r0, [r4, #0x38]
0064f9b0  3c 00 92 e5                                      ldr r0, [r2, #0x3c]
0064f9b4  3c 00 84 e5                                      str r0, [r4, #0x3c]
0064f9b8  40 00 92 e5                                      ldr r0, [r2, #0x40]
0064f9bc  40 00 84 e5                                      str r0, [r4, #0x40]
0064f9c0  44 00 92 e5                                      ldr r0, [r2, #0x44]
0064f9c4  44 00 84 e5                                      str r0, [r4, #0x44]
0064f9c8  48 00 92 e5                                      ldr r0, [r2, #0x48]
0064f9cc  48 00 84 e5                                      str r0, [r4, #0x48]
0064f9d0  4c 60 92 e5                                      ldr r6, [r2, #0x4c]
0064f9d4  4c 60 84 e5                                      str r6, [r4, #0x4c]
0064f9d8  50 60 92 e5                                      ldr r6, [r2, #0x50]
0064f9dc  50 60 84 e5                                      str r6, [r4, #0x50]
0064f9e0  54 60 92 e5                                      ldr r6, [r2, #0x54]
0064f9e4  54 60 84 e5                                      str r6, [r4, #0x54]
0064f9e8  58 60 92 e5                                      ldr r6, [r2, #0x58]
0064f9ec  58 60 84 e5                                      str r6, [r4, #0x58]
0064f9f0  5c 60 92 e5                                      ldr r6, [r2, #0x5c]
0064f9f4  5c 60 84 e5                                      str r6, [r4, #0x5c]
0064f9f8  60 60 92 e5                                      ldr r6, [r2, #0x60]
0064f9fc  64 20 82 e2                                      add r2, r2, #0x64
0064fa00  60 60 84 e5                                      str r6, [r4, #0x60]
0064fa04  64 40 84 e2                                      add r4, r4, #0x64
0064fa08  c9 ff ff 1a                                      bne #0x64f934
0064fa0c  64 20 a0 e3                                      mov r2, #0x64
0064fa10  92 1c 2c e0                                      mla ip, r2, ip, r1
0064fa14  04 c0 83 e5                                      str ip, [r3, #4]
0064fa18  01 00 a0 e1                                      mov r0, r1
0064fa1c  70 00 bd e8                                      pop {r4, r5, r6}
0064fa20  1e ff 2f e1                                      bx lr

; FUNCTION 0x0064fb44, declared_size=268, range_size=268, mode=arm
; class-group: std::vector<glitch::ps::SParticle, glitch::core::SAllocator<glitch::ps::SParticle, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch2ps9SParticleENS0_4core10SAllocatorIS2_LNS0_6memory13E_MEMORY_HINTE0EEEE7reserveEj
; demangled: std::vector<glitch::ps::SParticle, glitch::core::SAllocator<glitch::ps::SParticle, (glitch::memory::E_MEMORY_HINT)0> >::reserve(unsigned int)
; decoder-mode: arm
0064fb44  70 40 2d e9                                      push {r4, r5, r6, lr}
0064fb48  00 40 a0 e1                                      mov r4, r0
0064fb4c  00 20 90 e5                                      ldr r2, [r0]
0064fb50  08 00 90 e5                                      ldr r0, [r0, #8]
0064fb54  29 3c 05 e3                                      movw r3, #0x5c29
0064fb58  8f 32 4c e3                                      movt r3, #0xc28f
0064fb5c  00 00 62 e0                                      rsb r0, r2, r0
0064fb60  40 01 a0 e1                                      asr r0, r0, #2
0064fb64  93 00 03 e0                                      mul r3, r3, r0
0064fb68  08 d0 4d e2                                      sub sp, sp, #8
0064fb6c  03 00 51 e1                                      cmp r1, r3
0064fb70  04 10 8d e5                                      str r1, [sp, #4]
0064fb74  26 00 00 9a                                      bls #0x64fc14
0064fb78  28 3c 05 e3                                      movw r3, #0x5c28
0064fb7c  8f 32 40 e3                                      movt r3, #0x28f
0064fb80  03 00 51 e1                                      cmp r1, r3
0064fb84  24 00 00 8a                                      bhi #0x64fc1c
0064fb88  04 30 94 e5                                      ldr r3, [r4, #4]
0064fb8c  29 1c 05 e3                                      movw r1, #0x5c29
0064fb90  8f 12 4c e3                                      movt r1, #0xc28f
0064fb94  03 50 62 e0                                      rsb r5, r2, r3
0064fb98  45 51 a0 e1                                      asr r5, r5, #2
0064fb9c  00 00 52 e3                                      cmp r2, #0
0064fba0  91 05 05 e0                                      mul r5, r1, r5
0064fba4  21 00 00 0a                                      beq #0x64fc30
0064fba8  04 00 a0 e1                                      mov r0, r4
0064fbac  04 10 8d e2                                      add r1, sp, #4
0064fbb0  9b ff ff eb                                      bl #0x64fa24
0064fbb4  00 30 94 e5                                      ldr r3, [r4]
0064fbb8  00 60 a0 e1                                      mov r6, r0
0064fbbc  04 00 94 e5                                      ldr r0, [r4, #4]
0064fbc0  03 00 50 e1                                      cmp r0, r3
0064fbc4  0a 00 00 0a                                      beq #0x64fbf4
0064fbc8  64 20 40 e2                                      sub r2, r0, #0x64
0064fbcc  02 20 63 e0                                      rsb r2, r3, r2
0064fbd0  29 3c 05 e3                                      movw r3, #0x5c29
0064fbd4  22 21 a0 e1                                      lsr r2, r2, #2
0064fbd8  8f 32 40 e3                                      movt r3, #0x28f
0064fbdc  93 02 03 e0                                      mul r3, r3, r2
0064fbe0  63 20 e0 e3                                      mvn r2, #0x63
0064fbe4  03 31 c3 e3                                      bic r3, r3, #0xc0000000
0064fbe8  92 03 03 e0                                      mul r3, r2, r3
0064fbec  02 30 83 e0                                      add r3, r3, r2
0064fbf0  03 00 80 e0                                      add r0, r0, r3
0064fbf4  15 02 f3 eb                                      bl #0x310450
0064fbf8  04 20 9d e5                                      ldr r2, [sp, #4]
0064fbfc  64 30 a0 e3                                      mov r3, #0x64
0064fc00  93 65 25 e0                                      mla r5, r3, r5, r6
0064fc04  93 62 23 e0                                      mla r3, r3, r2, r6
0064fc08  04 50 84 e5                                      str r5, [r4, #4]
0064fc0c  08 30 84 e5                                      str r3, [r4, #8]
0064fc10  00 60 84 e5                                      str r6, [r4]
0064fc14  08 d0 8d e2                                      add sp, sp, #8
0064fc18  70 80 bd e8                                      pop {r4, r5, r6, pc}
0064fc1c  28 00 9f e5                                      ldr r0, [pc, #0x28]
0064fc20  00 00 8f e0                                      add r0, pc, r0
0064fc24  85 e4 02 eb                                      bl #0x708e40
0064fc28  00 20 94 e5                                      ldr r2, [r4]
0064fc2c  d5 ff ff ea                                      b #0x64fb88
0064fc30  04 30 9d e5                                      ldr r3, [sp, #4]
0064fc34  64 00 a0 e3                                      mov r0, #0x64
0064fc38  02 10 a0 e1                                      mov r1, r2
0064fc3c  90 03 00 e0                                      mul r0, r0, r3
0064fc40  48 02 f3 eb                                      bl #0x310568
0064fc44  00 60 a0 e1                                      mov r6, r0
0064fc48  ea ff ff ea                                      b #0x64fbf8
; mapping-symbol data/literal pool
0064fc4c  48 e8 26 00                                      .byte 0x48, 0xe8, 0x26, 0x00

; FUNCTION 0x00652634, declared_size=1848, range_size=1848, mode=arm
; class-group: std::vector<glitch::ps::SParticle, glitch::core::SAllocator<glitch::ps::SParticle, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch2ps9SParticleENS0_4core10SAllocatorIS2_LNS0_6memory13E_MEMORY_HINTE0EEEE18_M_fill_insert_auxEPS2_jRKS2_RKSt12__false_type
; demangled: std::vector<glitch::ps::SParticle, glitch::core::SAllocator<glitch::ps::SParticle, (glitch::memory::E_MEMORY_HINT)0> >::_M_fill_insert_aux(glitch::ps::SParticle*, unsigned int, glitch::ps::SParticle const&, std::__false_type const&)
; decoder-mode: arm
00652634  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00652638  00 40 90 e5                                      ldr r4, [r0]
0065263c  94 d0 4d e2                                      sub sp, sp, #0x94
00652640  00 c0 a0 e1                                      mov ip, r0
00652644  04 00 53 e1                                      cmp r3, r4
00652648  01 50 a0 e1                                      mov r5, r1
0065264c  02 40 a0 e1                                      mov r4, r2
00652650  04 60 90 35                                      ldrlo r6, [r0, #4]
00652654  48 00 00 3a                                      blo #0x65277c
00652658  04 60 90 e5                                      ldr r6, [r0, #4]
0065265c  06 00 53 e1                                      cmp r3, r6
00652660  45 00 00 2a                                      bhs #0x65277c
00652664  1c c0 93 e5                                      ldr ip, [r3, #0x1c]
00652668  04 80 93 e5                                      ldr r8, [r3, #4]
0065266c  08 70 93 e5                                      ldr r7, [r3, #8]
00652670  0c 60 93 e5                                      ldr r6, [r3, #0xc]
00652674  10 50 93 e5                                      ldr r5, [r3, #0x10]
00652678  14 40 93 e5                                      ldr r4, [r3, #0x14]
0065267c  18 e0 93 e5                                      ldr lr, [r3, #0x18]
00652680  0c c0 8d e5                                      str ip, [sp, #0xc]
00652684  2c c0 93 e5                                      ldr ip, [r3, #0x2c]
00652688  20 a0 93 e5                                      ldr sl, [r3, #0x20]
0065268c  24 90 93 e5                                      ldr sb, [r3, #0x24]
00652690  28 b0 93 e5                                      ldr fp, [r3, #0x28]
00652694  10 c0 8d e5                                      str ip, [sp, #0x10]
00652698  30 c0 93 e5                                      ldr ip, [r3, #0x30]
0065269c  14 c0 8d e5                                      str ip, [sp, #0x14]
006526a0  34 c0 93 e5                                      ldr ip, [r3, #0x34]
006526a4  18 c0 8d e5                                      str ip, [sp, #0x18]
006526a8  38 c0 93 e5                                      ldr ip, [r3, #0x38]
006526ac  1c c0 8d e5                                      str ip, [sp, #0x1c]
006526b0  3c c0 93 e5                                      ldr ip, [r3, #0x3c]
006526b4  20 c0 8d e5                                      str ip, [sp, #0x20]
006526b8  40 c0 93 e5                                      ldr ip, [r3, #0x40]
006526bc  24 c0 8d e5                                      str ip, [sp, #0x24]
006526c0  00 c0 93 e5                                      ldr ip, [r3]
006526c4  2c 80 8d e5                                      str r8, [sp, #0x2c]
006526c8  30 70 8d e5                                      str r7, [sp, #0x30]
006526cc  28 c0 8d e5                                      str ip, [sp, #0x28]
006526d0  0c c0 9d e5                                      ldr ip, [sp, #0xc]
006526d4  34 60 8d e5                                      str r6, [sp, #0x34]
006526d8  38 50 8d e5                                      str r5, [sp, #0x38]
006526dc  3c 40 8d e5                                      str r4, [sp, #0x3c]
006526e0  40 e0 8d e5                                      str lr, [sp, #0x40]
006526e4  44 c0 8d e5                                      str ip, [sp, #0x44]
006526e8  48 a0 8d e5                                      str sl, [sp, #0x48]
006526ec  10 c0 9d e5                                      ldr ip, [sp, #0x10]
006526f0  4c 90 8d e5                                      str sb, [sp, #0x4c]
006526f4  50 b0 8d e5                                      str fp, [sp, #0x50]
006526f8  54 c0 8d e5                                      str ip, [sp, #0x54]
006526fc  14 c0 9d e5                                      ldr ip, [sp, #0x14]
00652700  58 c0 8d e5                                      str ip, [sp, #0x58]
00652704  18 c0 9d e5                                      ldr ip, [sp, #0x18]
00652708  5c c0 8d e5                                      str ip, [sp, #0x5c]
0065270c  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
00652710  60 c0 8d e5                                      str ip, [sp, #0x60]
00652714  20 c0 9d e5                                      ldr ip, [sp, #0x20]
00652718  64 c0 8d e5                                      str ip, [sp, #0x64]
0065271c  24 c0 9d e5                                      ldr ip, [sp, #0x24]
00652720  68 c0 8d e5                                      str ip, [sp, #0x68]
00652724  54 c0 93 e5                                      ldr ip, [r3, #0x54]
00652728  60 80 93 e5                                      ldr r8, [r3, #0x60]
0065272c  44 60 93 e5                                      ldr r6, [r3, #0x44]
00652730  48 50 93 e5                                      ldr r5, [r3, #0x48]
00652734  4c 40 93 e5                                      ldr r4, [r3, #0x4c]
00652738  50 e0 93 e5                                      ldr lr, [r3, #0x50]
0065273c  58 70 93 e5                                      ldr r7, [r3, #0x58]
00652740  5c a0 93 e5                                      ldr sl, [r3, #0x5c]
00652744  7c c0 8d e5                                      str ip, [sp, #0x7c]
00652748  28 30 8d e2                                      add r3, sp, #0x28
0065274c  8c c0 8d e2                                      add ip, sp, #0x8c
00652750  6c 60 8d e5                                      str r6, [sp, #0x6c]
00652754  70 50 8d e5                                      str r5, [sp, #0x70]
00652758  74 40 8d e5                                      str r4, [sp, #0x74]
0065275c  78 e0 8d e5                                      str lr, [sp, #0x78]
00652760  80 70 8d e5                                      str r7, [sp, #0x80]
00652764  84 a0 8d e5                                      str sl, [sp, #0x84]
00652768  88 80 8d e5                                      str r8, [sp, #0x88]
0065276c  00 c0 8d e5                                      str ip, [sp]
00652770  af ff ff eb                                      bl #0x652634
00652774  94 d0 8d e2                                      add sp, sp, #0x94
00652778  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0065277c  06 10 65 e0                                      rsb r1, r5, r6
00652780  29 0c 05 e3                                      movw r0, #0x5c29
00652784  41 11 a0 e1                                      asr r1, r1, #2
00652788  8f 02 4c e3                                      movt r0, #0xc28f
0065278c  90 01 01 e0                                      mul r1, r0, r1
00652790  01 00 54 e1                                      cmp r4, r1
00652794  bc 00 00 2a                                      bhs #0x652a8c
00652798  64 20 a0 e3                                      mov r2, #0x64
0065279c  92 04 04 e0                                      mul r4, r2, r4
006527a0  44 71 a0 e1                                      asr r7, r4, #2
006527a4  90 07 07 e0                                      mul r7, r0, r7
006527a8  06 20 64 e0                                      rsb r2, r4, r6
006527ac  00 00 57 e3                                      cmp r7, #0
006527b0  06 70 a0 d1                                      movle r7, r6
006527b4  39 00 00 da                                      ble #0x6528a0
006527b8  02 10 a0 e1                                      mov r1, r2
006527bc  06 00 a0 e1                                      mov r0, r6
006527c0  00 00 00 ea                                      b #0x6527c8
006527c4  64 00 80 e2                                      add r0, r0, #0x64
006527c8  00 80 91 e5                                      ldr r8, [r1]
006527cc  01 70 57 e2                                      subs r7, r7, #1
006527d0  00 80 80 e5                                      str r8, [r0]
006527d4  04 80 91 e5                                      ldr r8, [r1, #4]
006527d8  04 80 80 e5                                      str r8, [r0, #4]
006527dc  08 80 91 e5                                      ldr r8, [r1, #8]
006527e0  08 80 80 e5                                      str r8, [r0, #8]
006527e4  0c 80 91 e5                                      ldr r8, [r1, #0xc]
006527e8  0c 80 80 e5                                      str r8, [r0, #0xc]
006527ec  10 80 91 e5                                      ldr r8, [r1, #0x10]
006527f0  10 80 80 e5                                      str r8, [r0, #0x10]
006527f4  14 80 91 e5                                      ldr r8, [r1, #0x14]
006527f8  14 80 80 e5                                      str r8, [r0, #0x14]
006527fc  18 80 91 e5                                      ldr r8, [r1, #0x18]
00652800  18 80 80 e5                                      str r8, [r0, #0x18]
00652804  1c 80 91 e5                                      ldr r8, [r1, #0x1c]
00652808  1c 80 80 e5                                      str r8, [r0, #0x1c]
0065280c  20 80 91 e5                                      ldr r8, [r1, #0x20]
00652810  20 80 80 e5                                      str r8, [r0, #0x20]
00652814  24 80 91 e5                                      ldr r8, [r1, #0x24]
00652818  24 80 80 e5                                      str r8, [r0, #0x24]
0065281c  28 80 91 e5                                      ldr r8, [r1, #0x28]
00652820  28 80 80 e5                                      str r8, [r0, #0x28]
00652824  2c 80 91 e5                                      ldr r8, [r1, #0x2c]
00652828  2c 80 80 e5                                      str r8, [r0, #0x2c]
0065282c  30 80 91 e5                                      ldr r8, [r1, #0x30]
00652830  30 80 80 e5                                      str r8, [r0, #0x30]
00652834  34 80 91 e5                                      ldr r8, [r1, #0x34]
00652838  34 80 80 e5                                      str r8, [r0, #0x34]
0065283c  38 80 91 e5                                      ldr r8, [r1, #0x38]
00652840  38 80 80 e5                                      str r8, [r0, #0x38]
00652844  3c 80 91 e5                                      ldr r8, [r1, #0x3c]
00652848  3c 80 80 e5                                      str r8, [r0, #0x3c]
0065284c  40 80 91 e5                                      ldr r8, [r1, #0x40]
00652850  40 80 80 e5                                      str r8, [r0, #0x40]
00652854  44 80 91 e5                                      ldr r8, [r1, #0x44]
00652858  44 80 80 e5                                      str r8, [r0, #0x44]
0065285c  48 80 91 e5                                      ldr r8, [r1, #0x48]
00652860  48 80 80 e5                                      str r8, [r0, #0x48]
00652864  4c 80 91 e5                                      ldr r8, [r1, #0x4c]
00652868  4c 80 80 e5                                      str r8, [r0, #0x4c]
0065286c  50 80 91 e5                                      ldr r8, [r1, #0x50]
00652870  50 80 80 e5                                      str r8, [r0, #0x50]
00652874  54 80 91 e5                                      ldr r8, [r1, #0x54]
00652878  54 80 80 e5                                      str r8, [r0, #0x54]
0065287c  58 80 91 e5                                      ldr r8, [r1, #0x58]
00652880  58 80 80 e5                                      str r8, [r0, #0x58]
00652884  5c 80 91 e5                                      ldr r8, [r1, #0x5c]
00652888  5c 80 80 e5                                      str r8, [r0, #0x5c]
0065288c  60 80 91 e5                                      ldr r8, [r1, #0x60]
00652890  64 10 81 e2                                      add r1, r1, #0x64
00652894  60 80 80 e5                                      str r8, [r0, #0x60]
00652898  c9 ff ff 1a                                      bne #0x6527c4
0065289c  04 70 9c e5                                      ldr r7, [ip, #4]
006528a0  02 10 65 e0                                      rsb r1, r5, r2
006528a4  29 0c 05 e3                                      movw r0, #0x5c29
006528a8  8f 02 4c e3                                      movt r0, #0xc28f
006528ac  41 11 a0 e1                                      asr r1, r1, #2
006528b0  90 01 01 e0                                      mul r1, r0, r1
006528b4  04 00 87 e0                                      add r0, r7, r4
006528b8  00 00 51 e3                                      cmp r1, #0
006528bc  04 00 8c e5                                      str r0, [ip, #4]
006528c0  35 00 00 da                                      ble #0x65299c
006528c4  64 00 12 e5                                      ldr r0, [r2, #-0x64]
006528c8  01 10 51 e2                                      subs r1, r1, #1
006528cc  64 00 06 e5                                      str r0, [r6, #-0x64]
006528d0  60 00 12 e5                                      ldr r0, [r2, #-0x60]
006528d4  60 00 06 e5                                      str r0, [r6, #-0x60]
006528d8  5c 00 12 e5                                      ldr r0, [r2, #-0x5c]
006528dc  5c 00 06 e5                                      str r0, [r6, #-0x5c]
006528e0  58 00 12 e5                                      ldr r0, [r2, #-0x58]
006528e4  58 00 06 e5                                      str r0, [r6, #-0x58]
006528e8  54 00 12 e5                                      ldr r0, [r2, #-0x54]
006528ec  54 00 06 e5                                      str r0, [r6, #-0x54]
006528f0  50 00 12 e5                                      ldr r0, [r2, #-0x50]
006528f4  50 00 06 e5                                      str r0, [r6, #-0x50]
006528f8  4c 00 12 e5                                      ldr r0, [r2, #-0x4c]
006528fc  4c 00 06 e5                                      str r0, [r6, #-0x4c]
00652900  48 00 12 e5                                      ldr r0, [r2, #-0x48]
00652904  48 00 06 e5                                      str r0, [r6, #-0x48]
00652908  44 00 12 e5                                      ldr r0, [r2, #-0x44]
0065290c  44 00 06 e5                                      str r0, [r6, #-0x44]
00652910  40 00 12 e5                                      ldr r0, [r2, #-0x40]
00652914  40 00 06 e5                                      str r0, [r6, #-0x40]
00652918  3c 00 12 e5                                      ldr r0, [r2, #-0x3c]
0065291c  3c 00 06 e5                                      str r0, [r6, #-0x3c]
00652920  38 00 12 e5                                      ldr r0, [r2, #-0x38]
00652924  38 00 06 e5                                      str r0, [r6, #-0x38]
00652928  34 00 12 e5                                      ldr r0, [r2, #-0x34]
0065292c  34 00 06 e5                                      str r0, [r6, #-0x34]
00652930  30 00 12 e5                                      ldr r0, [r2, #-0x30]
00652934  30 00 06 e5                                      str r0, [r6, #-0x30]
00652938  2c 00 12 e5                                      ldr r0, [r2, #-0x2c]
0065293c  2c 00 06 e5                                      str r0, [r6, #-0x2c]
00652940  28 00 12 e5                                      ldr r0, [r2, #-0x28]
00652944  28 00 06 e5                                      str r0, [r6, #-0x28]
00652948  24 00 12 e5                                      ldr r0, [r2, #-0x24]
0065294c  24 00 06 e5                                      str r0, [r6, #-0x24]
00652950  20 00 12 e5                                      ldr r0, [r2, #-0x20]
00652954  20 00 06 e5                                      str r0, [r6, #-0x20]
00652958  1c 00 12 e5                                      ldr r0, [r2, #-0x1c]
0065295c  1c 00 06 e5                                      str r0, [r6, #-0x1c]
00652960  18 00 12 e5                                      ldr r0, [r2, #-0x18]
00652964  18 00 06 e5                                      str r0, [r6, #-0x18]
00652968  14 00 12 e5                                      ldr r0, [r2, #-0x14]
0065296c  14 00 06 e5                                      str r0, [r6, #-0x14]
00652970  10 00 12 e5                                      ldr r0, [r2, #-0x10]
00652974  10 00 06 e5                                      str r0, [r6, #-0x10]
00652978  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
0065297c  0c 00 06 e5                                      str r0, [r6, #-0xc]
00652980  08 00 12 e5                                      ldr r0, [r2, #-8]
00652984  08 00 06 e5                                      str r0, [r6, #-8]
00652988  04 00 12 e5                                      ldr r0, [r2, #-4]
0065298c  64 20 42 e2                                      sub r2, r2, #0x64
00652990  04 00 06 e5                                      str r0, [r6, #-4]
00652994  64 60 46 e2                                      sub r6, r6, #0x64
00652998  c9 ff ff 1a                                      bne #0x6528c4
0065299c  29 2c 05 e3                                      movw r2, #0x5c29
006529a0  44 41 a0 e1                                      asr r4, r4, #2
006529a4  8f 22 4c e3                                      movt r2, #0xc28f
006529a8  92 04 04 e0                                      mul r4, r2, r4
006529ac  00 00 54 e3                                      cmp r4, #0
006529b0  6f ff ff da                                      ble #0x652774
006529b4  00 20 93 e5                                      ldr r2, [r3]
006529b8  01 40 54 e2                                      subs r4, r4, #1
006529bc  00 20 85 e5                                      str r2, [r5]
006529c0  04 20 93 e5                                      ldr r2, [r3, #4]
006529c4  04 20 85 e5                                      str r2, [r5, #4]
006529c8  08 20 93 e5                                      ldr r2, [r3, #8]
006529cc  08 20 85 e5                                      str r2, [r5, #8]
006529d0  0c 20 93 e5                                      ldr r2, [r3, #0xc]
006529d4  0c 20 85 e5                                      str r2, [r5, #0xc]
006529d8  10 20 93 e5                                      ldr r2, [r3, #0x10]
006529dc  10 20 85 e5                                      str r2, [r5, #0x10]
006529e0  14 20 93 e5                                      ldr r2, [r3, #0x14]
006529e4  14 20 85 e5                                      str r2, [r5, #0x14]
006529e8  18 20 93 e5                                      ldr r2, [r3, #0x18]
006529ec  18 20 85 e5                                      str r2, [r5, #0x18]
006529f0  1c 20 93 e5                                      ldr r2, [r3, #0x1c]
006529f4  1c 20 85 e5                                      str r2, [r5, #0x1c]
006529f8  20 20 93 e5                                      ldr r2, [r3, #0x20]
006529fc  20 20 85 e5                                      str r2, [r5, #0x20]
00652a00  24 20 93 e5                                      ldr r2, [r3, #0x24]
00652a04  24 20 85 e5                                      str r2, [r5, #0x24]
00652a08  28 20 93 e5                                      ldr r2, [r3, #0x28]
00652a0c  28 20 85 e5                                      str r2, [r5, #0x28]
00652a10  2c 20 93 e5                                      ldr r2, [r3, #0x2c]
00652a14  2c 20 85 e5                                      str r2, [r5, #0x2c]
00652a18  30 20 93 e5                                      ldr r2, [r3, #0x30]
00652a1c  30 20 85 e5                                      str r2, [r5, #0x30]
00652a20  34 20 93 e5                                      ldr r2, [r3, #0x34]
00652a24  34 20 85 e5                                      str r2, [r5, #0x34]
00652a28  38 20 93 e5                                      ldr r2, [r3, #0x38]
00652a2c  38 20 85 e5                                      str r2, [r5, #0x38]
00652a30  3c 20 93 e5                                      ldr r2, [r3, #0x3c]
00652a34  3c 20 85 e5                                      str r2, [r5, #0x3c]
00652a38  40 20 93 e5                                      ldr r2, [r3, #0x40]
00652a3c  40 20 85 e5                                      str r2, [r5, #0x40]
00652a40  44 20 93 e5                                      ldr r2, [r3, #0x44]
00652a44  44 20 85 e5                                      str r2, [r5, #0x44]
00652a48  48 20 93 e5                                      ldr r2, [r3, #0x48]
00652a4c  48 20 85 e5                                      str r2, [r5, #0x48]
00652a50  4c 20 93 e5                                      ldr r2, [r3, #0x4c]
00652a54  4c 20 85 e5                                      str r2, [r5, #0x4c]
00652a58  50 20 93 e5                                      ldr r2, [r3, #0x50]
00652a5c  50 20 85 e5                                      str r2, [r5, #0x50]
00652a60  54 20 93 e5                                      ldr r2, [r3, #0x54]
00652a64  54 20 85 e5                                      str r2, [r5, #0x54]
00652a68  58 20 93 e5                                      ldr r2, [r3, #0x58]
00652a6c  58 20 85 e5                                      str r2, [r5, #0x58]
00652a70  5c 20 93 e5                                      ldr r2, [r3, #0x5c]
00652a74  5c 20 85 e5                                      str r2, [r5, #0x5c]
00652a78  60 20 93 e5                                      ldr r2, [r3, #0x60]
00652a7c  60 20 85 e5                                      str r2, [r5, #0x60]
00652a80  64 50 85 e2                                      add r5, r5, #0x64
00652a84  ca ff ff 1a                                      bne #0x6529b4
00652a88  39 ff ff ea                                      b #0x652774
00652a8c  64 20 a0 e3                                      mov r2, #0x64
00652a90  04 40 61 e0                                      rsb r4, r1, r4
00652a94  92 64 24 e0                                      mla r4, r2, r4, r6
00652a98  04 20 66 e0                                      rsb r2, r6, r4
00652a9c  42 21 a0 e1                                      asr r2, r2, #2
00652aa0  90 02 02 e0                                      mul r2, r0, r2
00652aa4  00 00 52 e3                                      cmp r2, #0
00652aa8  01 00 00 ca                                      bgt #0x652ab4
00652aac  34 00 00 ea                                      b #0x652b84
00652ab0  64 60 86 e2                                      add r6, r6, #0x64
00652ab4  00 00 93 e5                                      ldr r0, [r3]
00652ab8  01 20 52 e2                                      subs r2, r2, #1
00652abc  00 00 86 e5                                      str r0, [r6]
00652ac0  04 00 93 e5                                      ldr r0, [r3, #4]
00652ac4  04 00 86 e5                                      str r0, [r6, #4]
00652ac8  08 00 93 e5                                      ldr r0, [r3, #8]
00652acc  08 00 86 e5                                      str r0, [r6, #8]
00652ad0  0c 00 93 e5                                      ldr r0, [r3, #0xc]
00652ad4  0c 00 86 e5                                      str r0, [r6, #0xc]
00652ad8  10 00 93 e5                                      ldr r0, [r3, #0x10]
00652adc  10 00 86 e5                                      str r0, [r6, #0x10]
00652ae0  14 00 93 e5                                      ldr r0, [r3, #0x14]
00652ae4  14 00 86 e5                                      str r0, [r6, #0x14]
00652ae8  18 00 93 e5                                      ldr r0, [r3, #0x18]
00652aec  18 00 86 e5                                      str r0, [r6, #0x18]
00652af0  1c 00 93 e5                                      ldr r0, [r3, #0x1c]
00652af4  1c 00 86 e5                                      str r0, [r6, #0x1c]
00652af8  20 00 93 e5                                      ldr r0, [r3, #0x20]
00652afc  20 00 86 e5                                      str r0, [r6, #0x20]
00652b00  24 00 93 e5                                      ldr r0, [r3, #0x24]
00652b04  24 00 86 e5                                      str r0, [r6, #0x24]
00652b08  28 00 93 e5                                      ldr r0, [r3, #0x28]
00652b0c  28 00 86 e5                                      str r0, [r6, #0x28]
00652b10  2c 00 93 e5                                      ldr r0, [r3, #0x2c]
00652b14  2c 00 86 e5                                      str r0, [r6, #0x2c]
00652b18  30 00 93 e5                                      ldr r0, [r3, #0x30]
00652b1c  30 00 86 e5                                      str r0, [r6, #0x30]
00652b20  34 00 93 e5                                      ldr r0, [r3, #0x34]
00652b24  34 00 86 e5                                      str r0, [r6, #0x34]
00652b28  38 00 93 e5                                      ldr r0, [r3, #0x38]
00652b2c  38 00 86 e5                                      str r0, [r6, #0x38]
00652b30  3c 00 93 e5                                      ldr r0, [r3, #0x3c]
00652b34  3c 00 86 e5                                      str r0, [r6, #0x3c]
00652b38  40 00 93 e5                                      ldr r0, [r3, #0x40]
00652b3c  40 00 86 e5                                      str r0, [r6, #0x40]
00652b40  44 00 93 e5                                      ldr r0, [r3, #0x44]
00652b44  44 00 86 e5                                      str r0, [r6, #0x44]
00652b48  48 00 93 e5                                      ldr r0, [r3, #0x48]
00652b4c  48 00 86 e5                                      str r0, [r6, #0x48]
00652b50  4c 00 93 e5                                      ldr r0, [r3, #0x4c]
00652b54  4c 00 86 e5                                      str r0, [r6, #0x4c]
00652b58  50 00 93 e5                                      ldr r0, [r3, #0x50]
00652b5c  50 00 86 e5                                      str r0, [r6, #0x50]
00652b60  54 00 93 e5                                      ldr r0, [r3, #0x54]
00652b64  54 00 86 e5                                      str r0, [r6, #0x54]
00652b68  58 00 93 e5                                      ldr r0, [r3, #0x58]
00652b6c  58 00 86 e5                                      str r0, [r6, #0x58]
00652b70  5c 00 93 e5                                      ldr r0, [r3, #0x5c]
00652b74  5c 00 86 e5                                      str r0, [r6, #0x5c]
00652b78  60 00 93 e5                                      ldr r0, [r3, #0x60]
00652b7c  60 00 86 e5                                      str r0, [r6, #0x60]
00652b80  ca ff ff 1a                                      bne #0x652ab0
00652b84  00 00 51 e3                                      cmp r1, #0
00652b88  04 40 8c e5                                      str r4, [ip, #4]
00652b8c  72 00 00 da                                      ble #0x652d5c
00652b90  01 00 a0 e1                                      mov r0, r1
00652b94  05 20 a0 e1                                      mov r2, r5
00652b98  00 00 00 ea                                      b #0x652ba0
00652b9c  64 40 84 e2                                      add r4, r4, #0x64
00652ba0  00 60 92 e5                                      ldr r6, [r2]
00652ba4  01 00 50 e2                                      subs r0, r0, #1
00652ba8  00 60 84 e5                                      str r6, [r4]
00652bac  04 60 92 e5                                      ldr r6, [r2, #4]
00652bb0  04 60 84 e5                                      str r6, [r4, #4]
00652bb4  08 60 92 e5                                      ldr r6, [r2, #8]
00652bb8  08 60 84 e5                                      str r6, [r4, #8]
00652bbc  0c 60 92 e5                                      ldr r6, [r2, #0xc]
00652bc0  0c 60 84 e5                                      str r6, [r4, #0xc]
00652bc4  10 60 92 e5                                      ldr r6, [r2, #0x10]
00652bc8  10 60 84 e5                                      str r6, [r4, #0x10]
00652bcc  14 60 92 e5                                      ldr r6, [r2, #0x14]
00652bd0  14 60 84 e5                                      str r6, [r4, #0x14]
00652bd4  18 60 92 e5                                      ldr r6, [r2, #0x18]
00652bd8  18 60 84 e5                                      str r6, [r4, #0x18]
00652bdc  1c 60 92 e5                                      ldr r6, [r2, #0x1c]
00652be0  1c 60 84 e5                                      str r6, [r4, #0x1c]
00652be4  20 60 92 e5                                      ldr r6, [r2, #0x20]
00652be8  20 60 84 e5                                      str r6, [r4, #0x20]
00652bec  24 60 92 e5                                      ldr r6, [r2, #0x24]
00652bf0  24 60 84 e5                                      str r6, [r4, #0x24]
00652bf4  28 60 92 e5                                      ldr r6, [r2, #0x28]
00652bf8  28 60 84 e5                                      str r6, [r4, #0x28]
00652bfc  2c 60 92 e5                                      ldr r6, [r2, #0x2c]
00652c00  2c 60 84 e5                                      str r6, [r4, #0x2c]
00652c04  30 60 92 e5                                      ldr r6, [r2, #0x30]
00652c08  30 60 84 e5                                      str r6, [r4, #0x30]
00652c0c  34 60 92 e5                                      ldr r6, [r2, #0x34]
00652c10  34 60 84 e5                                      str r6, [r4, #0x34]
00652c14  38 60 92 e5                                      ldr r6, [r2, #0x38]
00652c18  38 60 84 e5                                      str r6, [r4, #0x38]
00652c1c  3c 60 92 e5                                      ldr r6, [r2, #0x3c]
00652c20  3c 60 84 e5                                      str r6, [r4, #0x3c]
00652c24  40 60 92 e5                                      ldr r6, [r2, #0x40]
00652c28  40 60 84 e5                                      str r6, [r4, #0x40]
00652c2c  44 60 92 e5                                      ldr r6, [r2, #0x44]
00652c30  44 60 84 e5                                      str r6, [r4, #0x44]
00652c34  48 60 92 e5                                      ldr r6, [r2, #0x48]
00652c38  48 60 84 e5                                      str r6, [r4, #0x48]
00652c3c  4c 60 92 e5                                      ldr r6, [r2, #0x4c]
00652c40  4c 60 84 e5                                      str r6, [r4, #0x4c]
00652c44  50 60 92 e5                                      ldr r6, [r2, #0x50]
00652c48  50 60 84 e5                                      str r6, [r4, #0x50]
00652c4c  54 60 92 e5                                      ldr r6, [r2, #0x54]
00652c50  54 60 84 e5                                      str r6, [r4, #0x54]
00652c54  58 60 92 e5                                      ldr r6, [r2, #0x58]
00652c58  58 60 84 e5                                      str r6, [r4, #0x58]
00652c5c  5c 60 92 e5                                      ldr r6, [r2, #0x5c]
00652c60  5c 60 84 e5                                      str r6, [r4, #0x5c]
00652c64  60 60 92 e5                                      ldr r6, [r2, #0x60]
00652c68  64 20 82 e2                                      add r2, r2, #0x64
00652c6c  60 60 84 e5                                      str r6, [r4, #0x60]
00652c70  c9 ff ff 1a                                      bne #0x652b9c
00652c74  04 20 9c e5                                      ldr r2, [ip, #4]
00652c78  64 00 a0 e3                                      mov r0, #0x64
00652c7c  90 21 22 e0                                      mla r2, r0, r1, r2
00652c80  04 20 8c e5                                      str r2, [ip, #4]
00652c84  00 20 93 e5                                      ldr r2, [r3]
00652c88  01 10 51 e2                                      subs r1, r1, #1
00652c8c  00 20 85 e5                                      str r2, [r5]
00652c90  04 20 93 e5                                      ldr r2, [r3, #4]
00652c94  04 20 85 e5                                      str r2, [r5, #4]
00652c98  08 20 93 e5                                      ldr r2, [r3, #8]
00652c9c  08 20 85 e5                                      str r2, [r5, #8]
00652ca0  0c 20 93 e5                                      ldr r2, [r3, #0xc]
00652ca4  0c 20 85 e5                                      str r2, [r5, #0xc]
00652ca8  10 20 93 e5                                      ldr r2, [r3, #0x10]
00652cac  10 20 85 e5                                      str r2, [r5, #0x10]
00652cb0  14 20 93 e5                                      ldr r2, [r3, #0x14]
00652cb4  14 20 85 e5                                      str r2, [r5, #0x14]
00652cb8  18 20 93 e5                                      ldr r2, [r3, #0x18]
00652cbc  18 20 85 e5                                      str r2, [r5, #0x18]
00652cc0  1c 20 93 e5                                      ldr r2, [r3, #0x1c]
00652cc4  1c 20 85 e5                                      str r2, [r5, #0x1c]
00652cc8  20 20 93 e5                                      ldr r2, [r3, #0x20]
00652ccc  20 20 85 e5                                      str r2, [r5, #0x20]
00652cd0  24 20 93 e5                                      ldr r2, [r3, #0x24]
00652cd4  24 20 85 e5                                      str r2, [r5, #0x24]
00652cd8  28 20 93 e5                                      ldr r2, [r3, #0x28]
00652cdc  28 20 85 e5                                      str r2, [r5, #0x28]
00652ce0  2c 20 93 e5                                      ldr r2, [r3, #0x2c]
00652ce4  2c 20 85 e5                                      str r2, [r5, #0x2c]
00652ce8  30 20 93 e5                                      ldr r2, [r3, #0x30]
00652cec  30 20 85 e5                                      str r2, [r5, #0x30]
00652cf0  34 20 93 e5                                      ldr r2, [r3, #0x34]
00652cf4  34 20 85 e5                                      str r2, [r5, #0x34]
00652cf8  38 20 93 e5                                      ldr r2, [r3, #0x38]
00652cfc  38 20 85 e5                                      str r2, [r5, #0x38]
00652d00  3c 20 93 e5                                      ldr r2, [r3, #0x3c]
00652d04  3c 20 85 e5                                      str r2, [r5, #0x3c]
00652d08  40 20 93 e5                                      ldr r2, [r3, #0x40]
00652d0c  40 20 85 e5                                      str r2, [r5, #0x40]
00652d10  44 20 93 e5                                      ldr r2, [r3, #0x44]
00652d14  44 20 85 e5                                      str r2, [r5, #0x44]
00652d18  48 20 93 e5                                      ldr r2, [r3, #0x48]
00652d1c  48 20 85 e5                                      str r2, [r5, #0x48]
00652d20  4c 20 93 e5                                      ldr r2, [r3, #0x4c]
00652d24  4c 20 85 e5                                      str r2, [r5, #0x4c]
00652d28  50 20 93 e5                                      ldr r2, [r3, #0x50]
00652d2c  50 20 85 e5                                      str r2, [r5, #0x50]
00652d30  54 20 93 e5                                      ldr r2, [r3, #0x54]
00652d34  54 20 85 e5                                      str r2, [r5, #0x54]
00652d38  58 20 93 e5                                      ldr r2, [r3, #0x58]
00652d3c  58 20 85 e5                                      str r2, [r5, #0x58]
00652d40  5c 20 93 e5                                      ldr r2, [r3, #0x5c]
00652d44  5c 20 85 e5                                      str r2, [r5, #0x5c]
00652d48  60 20 93 e5                                      ldr r2, [r3, #0x60]
00652d4c  60 20 85 e5                                      str r2, [r5, #0x60]
00652d50  64 50 85 e2                                      add r5, r5, #0x64
00652d54  ca ff ff 1a                                      bne #0x652c84
00652d58  85 fe ff ea                                      b #0x652774
00652d5c  64 30 a0 e3                                      mov r3, #0x64
00652d60  93 41 21 e0                                      mla r1, r3, r1, r4
00652d64  04 10 8c e5                                      str r1, [ip, #4]
00652d68  81 fe ff ea                                      b #0x652774

; FUNCTION 0x00652d6c, declared_size=944, range_size=944, mode=arm
; class-group: std::vector<glitch::ps::SParticle, glitch::core::SAllocator<glitch::ps::SParticle, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch2ps9SParticleENS0_4core10SAllocatorIS2_LNS0_6memory13E_MEMORY_HINTE0EEEE14_M_fill_insertEPS2_jRKS2_
; demangled: std::vector<glitch::ps::SParticle, glitch::core::SAllocator<glitch::ps::SParticle, (glitch::memory::E_MEMORY_HINT)0> >::_M_fill_insert(glitch::ps::SParticle*, unsigned int, glitch::ps::SParticle const&)
; decoder-mode: arm
00652d6c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00652d70  00 70 52 e2                                      subs r7, r2, #0
00652d74  10 d0 4d e2                                      sub sp, sp, #0x10
00652d78  00 50 a0 e1                                      mov r5, r0
00652d7c  01 a0 a0 e1                                      mov sl, r1
00652d80  03 40 a0 e1                                      mov r4, r3
00652d84  aa 00 00 0a                                      beq #0x653034
00652d88  08 c0 90 e5                                      ldr ip, [r0, #8]
00652d8c  04 e0 90 e5                                      ldr lr, [r0, #4]
00652d90  29 6c 05 e3                                      movw r6, #0x5c29
00652d94  8f 62 4c e3                                      movt r6, #0xc28f
00652d98  0c c0 6e e0                                      rsb ip, lr, ip
00652d9c  4c c1 a0 e1                                      asr ip, ip, #2
00652da0  96 0c 0c e0                                      mul ip, r6, ip
00652da4  0c 00 57 e1                                      cmp r7, ip
00652da8  a3 00 00 9a                                      bls #0x65303c
00652dac  07 10 a0 e1                                      mov r1, r7
00652db0  a3 e8 ff eb                                      bl #0x64d044
00652db4  64 90 a0 e3                                      mov sb, #0x64
00652db8  99 00 09 e0                                      mul sb, sb, r0
00652dbc  00 10 a0 e3                                      mov r1, #0
00652dc0  09 00 a0 e1                                      mov r0, sb
00652dc4  e7 f5 f2 eb                                      bl #0x310568
00652dc8  00 30 95 e5                                      ldr r3, [r5]
00652dcc  00 80 a0 e1                                      mov r8, r0
00652dd0  0a 20 63 e0                                      rsb r2, r3, sl
00652dd4  42 21 a0 e1                                      asr r2, r2, #2
00652dd8  96 02 06 e0                                      mul r6, r6, r2
00652ddc  00 00 56 e3                                      cmp r6, #0
00652de0  00 60 a0 d1                                      movle r6, r0
00652de4  39 00 00 da                                      ble #0x652ed0
00652de8  06 10 a0 e1                                      mov r1, r6
00652dec  00 20 a0 e1                                      mov r2, r0
00652df0  00 00 93 e5                                      ldr r0, [r3]
00652df4  01 10 51 e2                                      subs r1, r1, #1
00652df8  00 00 82 e5                                      str r0, [r2]
00652dfc  04 00 93 e5                                      ldr r0, [r3, #4]
00652e00  04 00 82 e5                                      str r0, [r2, #4]
00652e04  08 00 93 e5                                      ldr r0, [r3, #8]
00652e08  08 00 82 e5                                      str r0, [r2, #8]
00652e0c  0c 00 93 e5                                      ldr r0, [r3, #0xc]
00652e10  0c 00 82 e5                                      str r0, [r2, #0xc]
00652e14  10 00 93 e5                                      ldr r0, [r3, #0x10]
00652e18  10 00 82 e5                                      str r0, [r2, #0x10]
00652e1c  14 00 93 e5                                      ldr r0, [r3, #0x14]
00652e20  14 00 82 e5                                      str r0, [r2, #0x14]
00652e24  18 00 93 e5                                      ldr r0, [r3, #0x18]
00652e28  18 00 82 e5                                      str r0, [r2, #0x18]
00652e2c  1c 00 93 e5                                      ldr r0, [r3, #0x1c]
00652e30  1c 00 82 e5                                      str r0, [r2, #0x1c]
00652e34  20 00 93 e5                                      ldr r0, [r3, #0x20]
00652e38  20 00 82 e5                                      str r0, [r2, #0x20]
00652e3c  24 00 93 e5                                      ldr r0, [r3, #0x24]
00652e40  24 00 82 e5                                      str r0, [r2, #0x24]
00652e44  28 00 93 e5                                      ldr r0, [r3, #0x28]
00652e48  28 00 82 e5                                      str r0, [r2, #0x28]
00652e4c  2c 00 93 e5                                      ldr r0, [r3, #0x2c]
00652e50  2c 00 82 e5                                      str r0, [r2, #0x2c]
00652e54  30 00 93 e5                                      ldr r0, [r3, #0x30]
00652e58  30 00 82 e5                                      str r0, [r2, #0x30]
00652e5c  34 00 93 e5                                      ldr r0, [r3, #0x34]
00652e60  34 00 82 e5                                      str r0, [r2, #0x34]
00652e64  38 00 93 e5                                      ldr r0, [r3, #0x38]
00652e68  38 00 82 e5                                      str r0, [r2, #0x38]
00652e6c  3c 00 93 e5                                      ldr r0, [r3, #0x3c]
00652e70  3c 00 82 e5                                      str r0, [r2, #0x3c]
00652e74  40 00 93 e5                                      ldr r0, [r3, #0x40]
00652e78  40 00 82 e5                                      str r0, [r2, #0x40]
00652e7c  44 00 93 e5                                      ldr r0, [r3, #0x44]
00652e80  44 00 82 e5                                      str r0, [r2, #0x44]
00652e84  48 00 93 e5                                      ldr r0, [r3, #0x48]
00652e88  48 00 82 e5                                      str r0, [r2, #0x48]
00652e8c  4c 00 93 e5                                      ldr r0, [r3, #0x4c]
00652e90  4c 00 82 e5                                      str r0, [r2, #0x4c]
00652e94  50 00 93 e5                                      ldr r0, [r3, #0x50]
00652e98  50 00 82 e5                                      str r0, [r2, #0x50]
00652e9c  54 00 93 e5                                      ldr r0, [r3, #0x54]
00652ea0  54 00 82 e5                                      str r0, [r2, #0x54]
00652ea4  58 00 93 e5                                      ldr r0, [r3, #0x58]
00652ea8  58 00 82 e5                                      str r0, [r2, #0x58]
00652eac  5c 00 93 e5                                      ldr r0, [r3, #0x5c]
00652eb0  5c 00 82 e5                                      str r0, [r2, #0x5c]
00652eb4  60 00 93 e5                                      ldr r0, [r3, #0x60]
00652eb8  64 30 83 e2                                      add r3, r3, #0x64
00652ebc  60 00 82 e5                                      str r0, [r2, #0x60]
00652ec0  64 20 82 e2                                      add r2, r2, #0x64
00652ec4  c9 ff ff 1a                                      bne #0x652df0
00652ec8  64 30 a0 e3                                      mov r3, #0x64
00652ecc  93 86 26 e0                                      mla r6, r3, r6, r8
00652ed0  01 00 57 e3                                      cmp r7, #1
00652ed4  5c 00 00 0a                                      beq #0x65304c
00652ed8  64 20 a0 e3                                      mov r2, #0x64
00652edc  92 67 22 e0                                      mla r2, r2, r7, r6
00652ee0  29 1c 05 e3                                      movw r1, #0x5c29
00652ee4  02 30 66 e0                                      rsb r3, r6, r2
00652ee8  43 31 a0 e1                                      asr r3, r3, #2
00652eec  8f 12 4c e3                                      movt r1, #0xc28f
00652ef0  91 03 03 e0                                      mul r3, r1, r3
00652ef4  00 00 53 e3                                      cmp r3, #0
00652ef8  01 00 00 ca                                      bgt #0x652f04
00652efc  34 00 00 ea                                      b #0x652fd4
00652f00  64 60 86 e2                                      add r6, r6, #0x64
00652f04  00 10 94 e5                                      ldr r1, [r4]
00652f08  01 30 53 e2                                      subs r3, r3, #1
00652f0c  00 10 86 e5                                      str r1, [r6]
00652f10  04 10 94 e5                                      ldr r1, [r4, #4]
00652f14  04 10 86 e5                                      str r1, [r6, #4]
00652f18  08 10 94 e5                                      ldr r1, [r4, #8]
00652f1c  08 10 86 e5                                      str r1, [r6, #8]
00652f20  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00652f24  0c 10 86 e5                                      str r1, [r6, #0xc]
00652f28  10 10 94 e5                                      ldr r1, [r4, #0x10]
00652f2c  10 10 86 e5                                      str r1, [r6, #0x10]
00652f30  14 10 94 e5                                      ldr r1, [r4, #0x14]
00652f34  14 10 86 e5                                      str r1, [r6, #0x14]
00652f38  18 10 94 e5                                      ldr r1, [r4, #0x18]
00652f3c  18 10 86 e5                                      str r1, [r6, #0x18]
00652f40  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
00652f44  1c 10 86 e5                                      str r1, [r6, #0x1c]
00652f48  20 10 94 e5                                      ldr r1, [r4, #0x20]
00652f4c  20 10 86 e5                                      str r1, [r6, #0x20]
00652f50  24 10 94 e5                                      ldr r1, [r4, #0x24]
00652f54  24 10 86 e5                                      str r1, [r6, #0x24]
00652f58  28 10 94 e5                                      ldr r1, [r4, #0x28]
00652f5c  28 10 86 e5                                      str r1, [r6, #0x28]
00652f60  2c 10 94 e5                                      ldr r1, [r4, #0x2c]
00652f64  2c 10 86 e5                                      str r1, [r6, #0x2c]
00652f68  30 10 94 e5                                      ldr r1, [r4, #0x30]
00652f6c  30 10 86 e5                                      str r1, [r6, #0x30]
00652f70  34 10 94 e5                                      ldr r1, [r4, #0x34]
00652f74  34 10 86 e5                                      str r1, [r6, #0x34]
00652f78  38 10 94 e5                                      ldr r1, [r4, #0x38]
00652f7c  38 10 86 e5                                      str r1, [r6, #0x38]
00652f80  3c 10 94 e5                                      ldr r1, [r4, #0x3c]
00652f84  3c 10 86 e5                                      str r1, [r6, #0x3c]
00652f88  40 10 94 e5                                      ldr r1, [r4, #0x40]
00652f8c  40 10 86 e5                                      str r1, [r6, #0x40]
00652f90  44 10 94 e5                                      ldr r1, [r4, #0x44]
00652f94  44 10 86 e5                                      str r1, [r6, #0x44]
00652f98  48 10 94 e5                                      ldr r1, [r4, #0x48]
00652f9c  48 10 86 e5                                      str r1, [r6, #0x48]
00652fa0  4c 10 94 e5                                      ldr r1, [r4, #0x4c]
00652fa4  4c 10 86 e5                                      str r1, [r6, #0x4c]
00652fa8  50 10 94 e5                                      ldr r1, [r4, #0x50]
00652fac  50 10 86 e5                                      str r1, [r6, #0x50]
00652fb0  54 10 94 e5                                      ldr r1, [r4, #0x54]
00652fb4  54 10 86 e5                                      str r1, [r6, #0x54]
00652fb8  58 10 94 e5                                      ldr r1, [r4, #0x58]
00652fbc  58 10 86 e5                                      str r1, [r6, #0x58]
00652fc0  5c 10 94 e5                                      ldr r1, [r4, #0x5c]
00652fc4  5c 10 86 e5                                      str r1, [r6, #0x5c]
00652fc8  60 10 94 e5                                      ldr r1, [r4, #0x60]
00652fcc  60 10 86 e5                                      str r1, [r6, #0x60]
00652fd0  ca ff ff 1a                                      bne #0x652f00
00652fd4  08 30 8d e2                                      add r3, sp, #8
00652fd8  0a 00 a0 e1                                      mov r0, sl
00652fdc  04 10 95 e5                                      ldr r1, [r5, #4]
00652fe0  00 f2 ff eb                                      bl #0x64f7e8
00652fe4  00 30 95 e5                                      ldr r3, [r5]
00652fe8  00 40 a0 e1                                      mov r4, r0
00652fec  04 00 95 e5                                      ldr r0, [r5, #4]
00652ff0  03 00 50 e1                                      cmp r0, r3
00652ff4  0a 00 00 0a                                      beq #0x653024
00652ff8  64 20 40 e2                                      sub r2, r0, #0x64
00652ffc  02 20 63 e0                                      rsb r2, r3, r2
00653000  29 3c 05 e3                                      movw r3, #0x5c29
00653004  22 21 a0 e1                                      lsr r2, r2, #2
00653008  8f 32 40 e3                                      movt r3, #0x28f
0065300c  93 02 03 e0                                      mul r3, r3, r2
00653010  63 20 e0 e3                                      mvn r2, #0x63
00653014  03 31 c3 e3                                      bic r3, r3, #0xc0000000
00653018  92 03 03 e0                                      mul r3, r2, r3
0065301c  02 30 83 e0                                      add r3, r3, r2
00653020  03 00 80 e0                                      add r0, r0, r3
00653024  09 90 88 e0                                      add sb, r8, sb
00653028  08 f5 f2 eb                                      bl #0x310450
0065302c  10 02 85 e9                                      stmib r5, {r4, sb}
00653030  00 80 85 e5                                      str r8, [r5]
00653034  10 d0 8d e2                                      add sp, sp, #0x10
00653038  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0065303c  0c c0 8d e2                                      add ip, sp, #0xc
00653040  00 c0 8d e5                                      str ip, [sp]
00653044  7a fd ff eb                                      bl #0x652634
00653048  f9 ff ff ea                                      b #0x653034
0065304c  00 30 94 e5                                      ldr r3, [r4]
00653050  64 20 86 e2                                      add r2, r6, #0x64
00653054  00 30 86 e5                                      str r3, [r6]
00653058  04 30 94 e5                                      ldr r3, [r4, #4]
0065305c  04 30 86 e5                                      str r3, [r6, #4]
00653060  08 30 94 e5                                      ldr r3, [r4, #8]
00653064  08 30 86 e5                                      str r3, [r6, #8]
00653068  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0065306c  0c 30 86 e5                                      str r3, [r6, #0xc]
00653070  10 30 94 e5                                      ldr r3, [r4, #0x10]
00653074  10 30 86 e5                                      str r3, [r6, #0x10]
00653078  14 30 94 e5                                      ldr r3, [r4, #0x14]
0065307c  14 30 86 e5                                      str r3, [r6, #0x14]
00653080  18 30 94 e5                                      ldr r3, [r4, #0x18]
00653084  18 30 86 e5                                      str r3, [r6, #0x18]
00653088  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
0065308c  1c 30 86 e5                                      str r3, [r6, #0x1c]
00653090  20 30 94 e5                                      ldr r3, [r4, #0x20]
00653094  20 30 86 e5                                      str r3, [r6, #0x20]
00653098  24 30 94 e5                                      ldr r3, [r4, #0x24]
0065309c  24 30 86 e5                                      str r3, [r6, #0x24]
006530a0  28 30 94 e5                                      ldr r3, [r4, #0x28]
006530a4  28 30 86 e5                                      str r3, [r6, #0x28]
006530a8  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
006530ac  2c 30 86 e5                                      str r3, [r6, #0x2c]
006530b0  30 30 94 e5                                      ldr r3, [r4, #0x30]
006530b4  30 30 86 e5                                      str r3, [r6, #0x30]
006530b8  34 30 94 e5                                      ldr r3, [r4, #0x34]
006530bc  34 30 86 e5                                      str r3, [r6, #0x34]
006530c0  38 30 94 e5                                      ldr r3, [r4, #0x38]
006530c4  38 30 86 e5                                      str r3, [r6, #0x38]
006530c8  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
006530cc  3c 30 86 e5                                      str r3, [r6, #0x3c]
006530d0  40 30 94 e5                                      ldr r3, [r4, #0x40]
006530d4  40 30 86 e5                                      str r3, [r6, #0x40]
006530d8  44 30 94 e5                                      ldr r3, [r4, #0x44]
006530dc  44 30 86 e5                                      str r3, [r6, #0x44]
006530e0  48 30 94 e5                                      ldr r3, [r4, #0x48]
006530e4  48 30 86 e5                                      str r3, [r6, #0x48]
006530e8  4c 30 94 e5                                      ldr r3, [r4, #0x4c]
006530ec  4c 30 86 e5                                      str r3, [r6, #0x4c]
006530f0  50 30 94 e5                                      ldr r3, [r4, #0x50]
006530f4  50 30 86 e5                                      str r3, [r6, #0x50]
006530f8  54 30 94 e5                                      ldr r3, [r4, #0x54]
006530fc  54 30 86 e5                                      str r3, [r6, #0x54]
00653100  58 30 94 e5                                      ldr r3, [r4, #0x58]
00653104  58 30 86 e5                                      str r3, [r6, #0x58]
00653108  5c 30 94 e5                                      ldr r3, [r4, #0x5c]
0065310c  5c 30 86 e5                                      str r3, [r6, #0x5c]
00653110  60 30 94 e5                                      ldr r3, [r4, #0x60]
00653114  60 30 86 e5                                      str r3, [r6, #0x60]
00653118  ad ff ff ea                                      b #0x652fd4

; FUNCTION 0x0065311c, declared_size=96, range_size=96, mode=arm
; class-group: std::vector<glitch::ps::SParticle, glitch::core::SAllocator<glitch::ps::SParticle, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch2ps9SParticleENS0_4core10SAllocatorIS2_LNS0_6memory13E_MEMORY_HINTE0EEEE6resizeEjRKS2_
; demangled: std::vector<glitch::ps::SParticle, glitch::core::SAllocator<glitch::ps::SParticle, (glitch::memory::E_MEMORY_HINT)0> >::resize(unsigned int, glitch::ps::SParticle const&)
; decoder-mode: arm
0065311c  30 40 2d e9                                      push {r4, r5, lr}
00653120  10 10 90 e8                                      ldm r0, {r4, ip}
00653124  29 3c 05 e3                                      movw r3, #0x5c29
00653128  8f 32 4c e3                                      movt r3, #0xc28f
0065312c  0c 50 64 e0                                      rsb r5, r4, ip
00653130  45 51 a0 e1                                      asr r5, r5, #2
00653134  93 05 05 e0                                      mul r5, r3, r5
00653138  0c d0 4d e2                                      sub sp, sp, #0xc
0065313c  05 00 51 e1                                      cmp r1, r5
00653140  02 30 a0 e1                                      mov r3, r2
00653144  08 00 00 2a                                      bhs #0x65316c
00653148  64 30 a0 e3                                      mov r3, #0x64
0065314c  93 41 21 e0                                      mla r1, r3, r1, r4
00653150  0c 00 51 e1                                      cmp r1, ip
00653154  02 00 00 0a                                      beq #0x653164
00653158  0c 20 a0 e1                                      mov r2, ip
0065315c  04 30 8d e2                                      add r3, sp, #4
00653160  e6 f1 ff eb                                      bl #0x64f900
00653164  0c d0 8d e2                                      add sp, sp, #0xc
00653168  30 80 bd e8                                      pop {r4, r5, pc}
0065316c  01 20 65 e0                                      rsb r2, r5, r1
00653170  0c 10 a0 e1                                      mov r1, ip
00653174  fc fe ff eb                                      bl #0x652d6c
00653178  f9 ff ff ea                                      b #0x653164

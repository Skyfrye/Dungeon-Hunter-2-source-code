; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006c1330, declared_size=516, range_size=516, mode=arm
; class-group: std::vector<glitch::scene::SParticle, glitch::core::SAllocator<glitch::scene::SParticle, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch5scene9SParticleENS0_4core10SAllocatorIS2_LNS0_6memory13E_MEMORY_HINTE0EEEE18_M_fill_insert_auxEPS2_jRKS2_RKSt12__false_type
; demangled: std::vector<glitch::scene::SParticle, glitch::core::SAllocator<glitch::scene::SParticle, (glitch::memory::E_MEMORY_HINT)0> >::_M_fill_insert_aux(glitch::scene::SParticle*, unsigned int, glitch::scene::SParticle const&, std::__false_type const&)
; decoder-mode: arm
006c1330  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006c1334  00 c0 90 e5                                      ldr ip, [r0]
006c1338  8c d0 4d e2                                      sub sp, sp, #0x8c
006c133c  00 50 a0 e1                                      mov r5, r0
006c1340  0c 00 53 e1                                      cmp r3, ip
006c1344  03 40 a0 e1                                      mov r4, r3
006c1348  01 70 a0 e1                                      mov r7, r1
006c134c  02 a0 a0 e1                                      mov sl, r2
006c1350  04 60 90 35                                      ldrlo r6, [r0, #4]
006c1354  37 00 00 3a                                      blo #0x6c1438
006c1358  04 60 90 e5                                      ldr r6, [r0, #4]
006c135c  06 00 53 e1                                      cmp r3, r6
006c1360  34 00 00 2a                                      bhs #0x6c1438
006c1364  40 30 93 e5                                      ldr r3, [r3, #0x40]
006c1368  24 30 8d e5                                      str r3, [sp, #0x24]
006c136c  24 30 94 e5                                      ldr r3, [r4, #0x24]
006c1370  00 70 94 e5                                      ldr r7, [r4]
006c1374  04 60 94 e5                                      ldr r6, [r4, #4]
006c1378  08 50 94 e5                                      ldr r5, [r4, #8]
006c137c  0c e0 94 e5                                      ldr lr, [r4, #0xc]
006c1380  10 c0 94 e5                                      ldr ip, [r4, #0x10]
006c1384  14 80 94 e5                                      ldr r8, [r4, #0x14]
006c1388  18 a0 94 e5                                      ldr sl, [r4, #0x18]
006c138c  1c 90 94 e5                                      ldr sb, [r4, #0x1c]
006c1390  20 b0 94 e5                                      ldr fp, [r4, #0x20]
006c1394  0c 30 8d e5                                      str r3, [sp, #0xc]
006c1398  28 30 94 e5                                      ldr r3, [r4, #0x28]
006c139c  10 30 8d e5                                      str r3, [sp, #0x10]
006c13a0  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
006c13a4  14 30 8d e5                                      str r3, [sp, #0x14]
006c13a8  30 30 94 e5                                      ldr r3, [r4, #0x30]
006c13ac  18 30 8d e5                                      str r3, [sp, #0x18]
006c13b0  34 30 94 e5                                      ldr r3, [r4, #0x34]
006c13b4  1c 30 8d e5                                      str r3, [sp, #0x1c]
006c13b8  38 30 94 e5                                      ldr r3, [r4, #0x38]
006c13bc  20 30 8d e5                                      str r3, [sp, #0x20]
006c13c0  3c 40 94 e5                                      ldr r4, [r4, #0x3c]
006c13c4  38 c0 8d e5                                      str ip, [sp, #0x38]
006c13c8  0c c0 9d e5                                      ldr ip, [sp, #0xc]
006c13cc  28 70 8d e5                                      str r7, [sp, #0x28]
006c13d0  2c 60 8d e5                                      str r6, [sp, #0x2c]
006c13d4  30 50 8d e5                                      str r5, [sp, #0x30]
006c13d8  34 e0 8d e5                                      str lr, [sp, #0x34]
006c13dc  3c 80 8d e5                                      str r8, [sp, #0x3c]
006c13e0  40 a0 8d e5                                      str sl, [sp, #0x40]
006c13e4  44 90 8d e5                                      str sb, [sp, #0x44]
006c13e8  48 b0 8d e5                                      str fp, [sp, #0x48]
006c13ec  4c c0 8d e5                                      str ip, [sp, #0x4c]
006c13f0  10 c0 9d e5                                      ldr ip, [sp, #0x10]
006c13f4  28 30 8d e2                                      add r3, sp, #0x28
006c13f8  64 40 8d e5                                      str r4, [sp, #0x64]
006c13fc  50 c0 8d e5                                      str ip, [sp, #0x50]
006c1400  14 c0 9d e5                                      ldr ip, [sp, #0x14]
006c1404  54 c0 8d e5                                      str ip, [sp, #0x54]
006c1408  18 c0 9d e5                                      ldr ip, [sp, #0x18]
006c140c  58 c0 8d e5                                      str ip, [sp, #0x58]
006c1410  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
006c1414  5c c0 8d e5                                      str ip, [sp, #0x5c]
006c1418  20 c0 9d e5                                      ldr ip, [sp, #0x20]
006c141c  60 c0 8d e5                                      str ip, [sp, #0x60]
006c1420  24 c0 9d e5                                      ldr ip, [sp, #0x24]
006c1424  68 c0 8d e5                                      str ip, [sp, #0x68]
006c1428  84 c0 8d e2                                      add ip, sp, #0x84
006c142c  00 c0 8d e5                                      str ip, [sp]
006c1430  be ff ff eb                                      bl #0x6c1330
006c1434  22 00 00 ea                                      b #0x6c14c4
006c1438  06 30 67 e0                                      rsb r3, r7, r6
006c143c  43 31 a0 e1                                      asr r3, r3, #2
006c1440  03 82 a0 e1                                      lsl r8, r3, #4
006c1444  08 80 63 e0                                      rsb r8, r3, r8
006c1448  08 84 88 e0                                      add r8, r8, r8, lsl #8
006c144c  08 88 88 e0                                      add r8, r8, r8, lsl #16
006c1450  08 82 83 e0                                      add r8, r3, r8, lsl #4
006c1454  08 00 5a e1                                      cmp sl, r8
006c1458  1b 00 00 3a                                      blo #0x6c14cc
006c145c  0a a0 68 e0                                      rsb sl, r8, sl
006c1460  44 b0 a0 e3                                      mov fp, #0x44
006c1464  9b 6a 2a e0                                      mla sl, fp, sl, r6
006c1468  00 90 a0 e3                                      mov sb, #0
006c146c  06 00 a0 e1                                      mov r0, r6
006c1470  0a 10 a0 e1                                      mov r1, sl
006c1474  04 20 a0 e1                                      mov r2, r4
006c1478  74 30 8d e2                                      add r3, sp, #0x74
006c147c  00 90 8d e5                                      str sb, [sp]
006c1480  7b ff ff eb                                      bl #0x6c1274
006c1484  0a 20 a0 e1                                      mov r2, sl
006c1488  04 a0 85 e5                                      str sl, [r5, #4]
006c148c  06 10 a0 e1                                      mov r1, r6
006c1490  70 30 8d e2                                      add r3, sp, #0x70
006c1494  07 00 a0 e1                                      mov r0, r7
006c1498  00 90 8d e5                                      str sb, [sp]
006c149c  d4 fe ff eb                                      bl #0x6c0ff4
006c14a0  04 30 95 e5                                      ldr r3, [r5, #4]
006c14a4  07 00 a0 e1                                      mov r0, r7
006c14a8  06 10 a0 e1                                      mov r1, r6
006c14ac  9b 38 28 e0                                      mla r8, fp, r8, r3
006c14b0  04 20 a0 e1                                      mov r2, r4
006c14b4  04 80 85 e5                                      str r8, [r5, #4]
006c14b8  6c 30 8d e2                                      add r3, sp, #0x6c
006c14bc  00 90 8d e5                                      str sb, [sp]
006c14c0  3c ff ff eb                                      bl #0x6c11b8
006c14c4  8c d0 8d e2                                      add sp, sp, #0x8c
006c14c8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006c14cc  44 30 a0 e3                                      mov r3, #0x44
006c14d0  93 0a 0a e0                                      mul sl, r3, sl
006c14d4  00 80 a0 e3                                      mov r8, #0
006c14d8  06 90 6a e0                                      rsb sb, sl, r6
006c14dc  06 10 a0 e1                                      mov r1, r6
006c14e0  06 20 a0 e1                                      mov r2, r6
006c14e4  80 30 8d e2                                      add r3, sp, #0x80
006c14e8  09 00 a0 e1                                      mov r0, sb
006c14ec  00 80 8d e5                                      str r8, [sp]
006c14f0  bf fe ff eb                                      bl #0x6c0ff4
006c14f4  04 30 95 e5                                      ldr r3, [r5, #4]
006c14f8  09 10 a0 e1                                      mov r1, sb
006c14fc  06 20 a0 e1                                      mov r2, r6
006c1500  0a 30 83 e0                                      add r3, r3, sl
006c1504  04 30 85 e5                                      str r3, [r5, #4]
006c1508  07 00 a0 e1                                      mov r0, r7
006c150c  7c 30 8d e2                                      add r3, sp, #0x7c
006c1510  00 80 8d e5                                      str r8, [sp]
006c1514  ed fe ff eb                                      bl #0x6c10d0
006c1518  07 00 a0 e1                                      mov r0, r7
006c151c  0a 10 87 e0                                      add r1, r7, sl
006c1520  04 20 a0 e1                                      mov r2, r4
006c1524  78 30 8d e2                                      add r3, sp, #0x78
006c1528  00 80 8d e5                                      str r8, [sp]
006c152c  21 ff ff eb                                      bl #0x6c11b8
006c1530  e3 ff ff ea                                      b #0x6c14c4

; FUNCTION 0x006c1bd4, declared_size=128, range_size=128, mode=arm
; class-group: std::vector<glitch::scene::SParticle, glitch::core::SAllocator<glitch::scene::SParticle, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch5scene9SParticleENS0_4core10SAllocatorIS2_LNS0_6memory13E_MEMORY_HINTE0EEEE20_M_compute_next_sizeEj
; demangled: std::vector<glitch::scene::SParticle, glitch::core::SAllocator<glitch::scene::SParticle, (glitch::memory::E_MEMORY_HINT)0> >::_M_compute_next_size(unsigned int)
; decoder-mode: arm
006c1bd4  70 40 2d e9                                      push {r4, r5, r6, lr}
006c1bd8  14 00 90 e8                                      ldm r0, {r2, r4}
006c1bdc  c3 33 0c e3                                      movw r3, #0xc3c3
006c1be0  c3 33 40 e3                                      movt r3, #0x3c3
006c1be4  04 20 62 e0                                      rsb r2, r2, r4
006c1be8  42 21 a0 e1                                      asr r2, r2, #2
006c1bec  01 50 a0 e1                                      mov r5, r1
006c1bf0  02 42 a0 e1                                      lsl r4, r2, #4
006c1bf4  04 40 62 e0                                      rsb r4, r2, r4
006c1bf8  04 44 84 e0                                      add r4, r4, r4, lsl #8
006c1bfc  04 48 84 e0                                      add r4, r4, r4, lsl #16
006c1c00  04 42 82 e0                                      add r4, r2, r4, lsl #4
006c1c04  03 30 64 e0                                      rsb r3, r4, r3
006c1c08  01 00 53 e1                                      cmp r3, r1
006c1c0c  0b 00 00 3a                                      blo #0x6c1c40
006c1c10  c3 33 0c e3                                      movw r3, #0xc3c3
006c1c14  05 00 54 e1                                      cmp r4, r5
006c1c18  04 00 84 20                                      addhs r0, r4, r4
006c1c1c  05 00 84 30                                      addlo r0, r4, r5
006c1c20  c3 33 40 e3                                      movt r3, #0x3c3
006c1c24  03 00 50 e1                                      cmp r0, r3
006c1c28  01 00 00 8a                                      bhi #0x6c1c34
006c1c2c  04 00 50 e1                                      cmp r0, r4
006c1c30  01 00 00 2a                                      bhs #0x6c1c3c
006c1c34  c3 03 0c e3                                      movw r0, #0xc3c3
006c1c38  c3 03 40 e3                                      movt r0, #0x3c3
006c1c3c  70 80 bd e8                                      pop {r4, r5, r6, pc}
006c1c40  08 00 9f e5                                      ldr r0, [pc, #8]
006c1c44  00 00 8f e0                                      add r0, pc, r0
006c1c48  7c 1c 01 eb                                      bl #0x708e40
006c1c4c  ef ff ff ea                                      b #0x6c1c10
; mapping-symbol data/literal pool
006c1c50  24 c8 1f 00                                      .byte 0x24, 0xc8, 0x1f, 0x00

; FUNCTION 0x006c2688, declared_size=380, range_size=380, mode=arm
; class-group: std::vector<glitch::scene::SParticle, glitch::core::SAllocator<glitch::scene::SParticle, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch5scene9SParticleENS0_4core10SAllocatorIS2_LNS0_6memory13E_MEMORY_HINTE0EEEE14_M_fill_insertEPS2_jRKS2_
; demangled: std::vector<glitch::scene::SParticle, glitch::core::SAllocator<glitch::scene::SParticle, (glitch::memory::E_MEMORY_HINT)0> >::_M_fill_insert(glitch::scene::SParticle*, unsigned int, glitch::scene::SParticle const&)
; decoder-mode: arm
006c2688  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006c268c  00 60 52 e2                                      subs r6, r2, #0
006c2690  1c d0 4d e2                                      sub sp, sp, #0x1c
006c2694  00 40 a0 e1                                      mov r4, r0
006c2698  01 70 a0 e1                                      mov r7, r1
006c269c  03 50 a0 e1                                      mov r5, r3
006c26a0  2d 00 00 0a                                      beq #0x6c275c
006c26a4  00 50 90 e9                                      ldmib r0, {ip, lr}
006c26a8  0e c0 6c e0                                      rsb ip, ip, lr
006c26ac  4c c1 a0 e1                                      asr ip, ip, #2
006c26b0  0c e2 a0 e1                                      lsl lr, ip, #4
006c26b4  0e e0 6c e0                                      rsb lr, ip, lr
006c26b8  0e e4 8e e0                                      add lr, lr, lr, lsl #8
006c26bc  0e e8 8e e0                                      add lr, lr, lr, lsl #16
006c26c0  0e c2 8c e0                                      add ip, ip, lr, lsl #4
006c26c4  0c 00 56 e1                                      cmp r6, ip
006c26c8  25 00 00 9a                                      bls #0x6c2764
006c26cc  06 10 a0 e1                                      mov r1, r6
006c26d0  3f fd ff eb                                      bl #0x6c1bd4
006c26d4  44 90 a0 e3                                      mov sb, #0x44
006c26d8  99 00 0a e0                                      mul sl, sb, r0
006c26dc  00 10 a0 e3                                      mov r1, #0
006c26e0  0a 00 a0 e1                                      mov r0, sl
006c26e4  9f 37 f1 eb                                      bl #0x310568
006c26e8  00 80 a0 e1                                      mov r8, r0
006c26ec  00 b0 a0 e3                                      mov fp, #0
006c26f0  00 00 94 e5                                      ldr r0, [r4]
006c26f4  07 10 a0 e1                                      mov r1, r7
006c26f8  08 20 a0 e1                                      mov r2, r8
006c26fc  10 30 8d e2                                      add r3, sp, #0x10
006c2700  00 b0 8d e5                                      str fp, [sp]
006c2704  3a fa ff eb                                      bl #0x6c0ff4
006c2708  01 00 56 e3                                      cmp r6, #1
006c270c  18 00 00 0a                                      beq #0x6c2774
006c2710  99 06 26 e0                                      mla r6, sb, r6, r0
006c2714  05 20 a0 e1                                      mov r2, r5
006c2718  06 10 a0 e1                                      mov r1, r6
006c271c  0c 30 8d e2                                      add r3, sp, #0xc
006c2720  00 b0 8d e5                                      str fp, [sp]
006c2724  d2 fa ff eb                                      bl #0x6c1274
006c2728  04 10 94 e5                                      ldr r1, [r4, #4]
006c272c  00 c0 a0 e3                                      mov ip, #0
006c2730  06 20 a0 e1                                      mov r2, r6
006c2734  08 30 8d e2                                      add r3, sp, #8
006c2738  07 00 a0 e1                                      mov r0, r7
006c273c  00 c0 8d e5                                      str ip, [sp]
006c2740  2b fa ff eb                                      bl #0x6c0ff4
006c2744  0a a0 88 e0                                      add sl, r8, sl
006c2748  00 50 a0 e1                                      mov r5, r0
006c274c  00 00 94 e5                                      ldr r0, [r4]
006c2750  3e 37 f1 eb                                      bl #0x310450
006c2754  20 04 84 e9                                      stmib r4, {r5, sl}
006c2758  00 80 84 e5                                      str r8, [r4]
006c275c  1c d0 8d e2                                      add sp, sp, #0x1c
006c2760  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006c2764  14 c0 8d e2                                      add ip, sp, #0x14
006c2768  00 c0 8d e5                                      str ip, [sp]
006c276c  ef fa ff eb                                      bl #0x6c1330
006c2770  f9 ff ff ea                                      b #0x6c275c
006c2774  00 20 95 e5                                      ldr r2, [r5]
006c2778  09 60 80 e0                                      add r6, r0, sb
006c277c  00 20 80 e5                                      str r2, [r0]
006c2780  04 20 95 e5                                      ldr r2, [r5, #4]
006c2784  04 20 80 e5                                      str r2, [r0, #4]
006c2788  08 20 95 e5                                      ldr r2, [r5, #8]
006c278c  08 20 80 e5                                      str r2, [r0, #8]
006c2790  0c 20 95 e5                                      ldr r2, [r5, #0xc]
006c2794  0c 20 80 e5                                      str r2, [r0, #0xc]
006c2798  10 20 95 e5                                      ldr r2, [r5, #0x10]
006c279c  10 20 80 e5                                      str r2, [r0, #0x10]
006c27a0  14 20 95 e5                                      ldr r2, [r5, #0x14]
006c27a4  14 20 80 e5                                      str r2, [r0, #0x14]
006c27a8  18 20 95 e5                                      ldr r2, [r5, #0x18]
006c27ac  18 20 80 e5                                      str r2, [r0, #0x18]
006c27b0  1c 20 95 e5                                      ldr r2, [r5, #0x1c]
006c27b4  1c 20 80 e5                                      str r2, [r0, #0x1c]
006c27b8  20 20 95 e5                                      ldr r2, [r5, #0x20]
006c27bc  20 20 80 e5                                      str r2, [r0, #0x20]
006c27c0  24 20 95 e5                                      ldr r2, [r5, #0x24]
006c27c4  24 20 80 e5                                      str r2, [r0, #0x24]
006c27c8  28 20 95 e5                                      ldr r2, [r5, #0x28]
006c27cc  28 20 80 e5                                      str r2, [r0, #0x28]
006c27d0  2c 20 95 e5                                      ldr r2, [r5, #0x2c]
006c27d4  2c 20 80 e5                                      str r2, [r0, #0x2c]
006c27d8  30 20 95 e5                                      ldr r2, [r5, #0x30]
006c27dc  30 20 80 e5                                      str r2, [r0, #0x30]
006c27e0  34 20 95 e5                                      ldr r2, [r5, #0x34]
006c27e4  34 20 80 e5                                      str r2, [r0, #0x34]
006c27e8  38 20 95 e5                                      ldr r2, [r5, #0x38]
006c27ec  38 20 80 e5                                      str r2, [r0, #0x38]
006c27f0  3c 20 95 e5                                      ldr r2, [r5, #0x3c]
006c27f4  3c 20 80 e5                                      str r2, [r0, #0x3c]
006c27f8  40 20 95 e5                                      ldr r2, [r5, #0x40]
006c27fc  40 20 80 e5                                      str r2, [r0, #0x40]
006c2800  c8 ff ff ea                                      b #0x6c2728

; FUNCTION 0x006c2804, declared_size=124, range_size=124, mode=arm
; class-group: std::vector<glitch::scene::SParticle, glitch::core::SAllocator<glitch::scene::SParticle, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch5scene9SParticleENS0_4core10SAllocatorIS2_LNS0_6memory13E_MEMORY_HINTE0EEEE6resizeEjRKS2_
; demangled: std::vector<glitch::scene::SParticle, glitch::core::SAllocator<glitch::scene::SParticle, (glitch::memory::E_MEMORY_HINT)0> >::resize(unsigned int, glitch::scene::SParticle const&)
; decoder-mode: arm
006c2804  70 40 2d e9                                      push {r4, r5, r6, lr}
006c2808  20 10 90 e8                                      ldm r0, {r5, ip}
006c280c  02 30 a0 e1                                      mov r3, r2
006c2810  10 d0 4d e2                                      sub sp, sp, #0x10
006c2814  0c 20 65 e0                                      rsb r2, r5, ip
006c2818  42 21 a0 e1                                      asr r2, r2, #2
006c281c  00 40 a0 e1                                      mov r4, r0
006c2820  02 62 a0 e1                                      lsl r6, r2, #4
006c2824  06 60 62 e0                                      rsb r6, r2, r6
006c2828  06 64 86 e0                                      add r6, r6, r6, lsl #8
006c282c  06 68 86 e0                                      add r6, r6, r6, lsl #16
006c2830  06 22 82 e0                                      add r2, r2, r6, lsl #4
006c2834  02 00 51 e1                                      cmp r1, r2
006c2838  0c 00 00 2a                                      bhs #0x6c2870
006c283c  44 20 a0 e3                                      mov r2, #0x44
006c2840  92 51 22 e0                                      mla r2, r2, r1, r5
006c2844  0c 00 52 e1                                      cmp r2, ip
006c2848  06 00 00 0a                                      beq #0x6c2868
006c284c  0c 00 a0 e1                                      mov r0, ip
006c2850  0c 10 a0 e1                                      mov r1, ip
006c2854  0c 30 8d e2                                      add r3, sp, #0xc
006c2858  00 c0 a0 e3                                      mov ip, #0
006c285c  00 c0 8d e5                                      str ip, [sp]
006c2860  ab f9 ff eb                                      bl #0x6c0f14
006c2864  04 00 84 e5                                      str r0, [r4, #4]
006c2868  10 d0 8d e2                                      add sp, sp, #0x10
006c286c  70 80 bd e8                                      pop {r4, r5, r6, pc}
006c2870  01 20 62 e0                                      rsb r2, r2, r1
006c2874  0c 10 a0 e1                                      mov r1, ip
006c2878  82 ff ff eb                                      bl #0x6c2688
006c287c  f9 ff ff ea                                      b #0x6c2868

; FUNCTION 0x006f92e0, declared_size=344, range_size=344, mode=arm
; class-group: std::vector<glitch::scene::SParticle, glitch::core::SAllocator<glitch::scene::SParticle, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch5scene9SParticleENS0_4core10SAllocatorIS2_LNS0_6memory13E_MEMORY_HINTE0EEEE22_M_insert_overflow_auxEPS2_RKS2_RKSt12__false_typejb
; demangled: std::vector<glitch::scene::SParticle, glitch::core::SAllocator<glitch::scene::SParticle, (glitch::memory::E_MEMORY_HINT)0> >::_M_insert_overflow_aux(glitch::scene::SParticle*, glitch::scene::SParticle const&, std::__false_type const&, unsigned int, bool)
; decoder-mode: arm
006f92e0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006f92e4  24 d0 4d e2                                      sub sp, sp, #0x24
006f92e8  48 a0 9d e5                                      ldr sl, [sp, #0x48]
006f92ec  4c 30 dd e5                                      ldrb r3, [sp, #0x4c]
006f92f0  01 b0 a0 e1                                      mov fp, r1
006f92f4  0a 10 a0 e1                                      mov r1, sl
006f92f8  02 40 a0 e1                                      mov r4, r2
006f92fc  0c 30 8d e5                                      str r3, [sp, #0xc]
006f9300  00 50 a0 e1                                      mov r5, r0
006f9304  32 22 ff eb                                      bl #0x6c1bd4
006f9308  44 70 a0 e3                                      mov r7, #0x44
006f930c  97 00 08 e0                                      mul r8, r7, r0
006f9310  00 10 a0 e3                                      mov r1, #0
006f9314  08 00 a0 e1                                      mov r0, r8
006f9318  92 5c f0 eb                                      bl #0x310568
006f931c  00 60 a0 e1                                      mov r6, r0
006f9320  00 90 a0 e3                                      mov sb, #0
006f9324  00 00 95 e5                                      ldr r0, [r5]
006f9328  0b 10 a0 e1                                      mov r1, fp
006f932c  06 20 a0 e1                                      mov r2, r6
006f9330  1c 30 8d e2                                      add r3, sp, #0x1c
006f9334  00 90 8d e5                                      str sb, [sp]
006f9338  2d 1f ff eb                                      bl #0x6c0ff4
006f933c  01 00 5a e3                                      cmp sl, #1
006f9340  0e 00 00 0a                                      beq #0x6f9380
006f9344  97 0a 27 e0                                      mla r7, r7, sl, r0
006f9348  04 20 a0 e1                                      mov r2, r4
006f934c  07 10 a0 e1                                      mov r1, r7
006f9350  18 30 8d e2                                      add r3, sp, #0x18
006f9354  00 90 8d e5                                      str sb, [sp]
006f9358  c5 1f ff eb                                      bl #0x6c1274
006f935c  0c c0 9d e5                                      ldr ip, [sp, #0xc]
006f9360  00 00 5c e3                                      cmp ip, #0
006f9364  2b 00 00 0a                                      beq #0x6f9418
006f9368  00 00 95 e5                                      ldr r0, [r5]
006f936c  08 80 86 e0                                      add r8, r6, r8
006f9370  36 5c f0 eb                                      bl #0x310450
006f9374  c0 01 85 e8                                      stm r5, {r6, r7, r8}
006f9378  24 d0 8d e2                                      add sp, sp, #0x24
006f937c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006f9380  00 20 94 e5                                      ldr r2, [r4]
006f9384  07 70 80 e0                                      add r7, r0, r7
006f9388  00 20 80 e5                                      str r2, [r0]
006f938c  04 20 94 e5                                      ldr r2, [r4, #4]
006f9390  04 20 80 e5                                      str r2, [r0, #4]
006f9394  08 20 94 e5                                      ldr r2, [r4, #8]
006f9398  08 20 80 e5                                      str r2, [r0, #8]
006f939c  0c 20 94 e5                                      ldr r2, [r4, #0xc]
006f93a0  0c 20 80 e5                                      str r2, [r0, #0xc]
006f93a4  10 20 94 e5                                      ldr r2, [r4, #0x10]
006f93a8  10 20 80 e5                                      str r2, [r0, #0x10]
006f93ac  14 20 94 e5                                      ldr r2, [r4, #0x14]
006f93b0  14 20 80 e5                                      str r2, [r0, #0x14]
006f93b4  18 20 94 e5                                      ldr r2, [r4, #0x18]
006f93b8  18 20 80 e5                                      str r2, [r0, #0x18]
006f93bc  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
006f93c0  1c 20 80 e5                                      str r2, [r0, #0x1c]
006f93c4  20 20 94 e5                                      ldr r2, [r4, #0x20]
006f93c8  20 20 80 e5                                      str r2, [r0, #0x20]
006f93cc  24 20 94 e5                                      ldr r2, [r4, #0x24]
006f93d0  24 20 80 e5                                      str r2, [r0, #0x24]
006f93d4  28 20 94 e5                                      ldr r2, [r4, #0x28]
006f93d8  28 20 80 e5                                      str r2, [r0, #0x28]
006f93dc  2c 20 94 e5                                      ldr r2, [r4, #0x2c]
006f93e0  2c 20 80 e5                                      str r2, [r0, #0x2c]
006f93e4  30 20 94 e5                                      ldr r2, [r4, #0x30]
006f93e8  30 20 80 e5                                      str r2, [r0, #0x30]
006f93ec  34 20 94 e5                                      ldr r2, [r4, #0x34]
006f93f0  34 20 80 e5                                      str r2, [r0, #0x34]
006f93f4  38 20 94 e5                                      ldr r2, [r4, #0x38]
006f93f8  38 20 80 e5                                      str r2, [r0, #0x38]
006f93fc  3c 20 94 e5                                      ldr r2, [r4, #0x3c]
006f9400  3c 20 80 e5                                      str r2, [r0, #0x3c]
006f9404  40 20 94 e5                                      ldr r2, [r4, #0x40]
006f9408  40 20 80 e5                                      str r2, [r0, #0x40]
006f940c  0c c0 9d e5                                      ldr ip, [sp, #0xc]
006f9410  00 00 5c e3                                      cmp ip, #0
006f9414  d3 ff ff 1a                                      bne #0x6f9368
006f9418  04 10 95 e5                                      ldr r1, [r5, #4]
006f941c  07 20 a0 e1                                      mov r2, r7
006f9420  0b 00 a0 e1                                      mov r0, fp
006f9424  14 30 8d e2                                      add r3, sp, #0x14
006f9428  00 c0 8d e5                                      str ip, [sp]
006f942c  f0 1e ff eb                                      bl #0x6c0ff4
006f9430  00 70 a0 e1                                      mov r7, r0
006f9434  cb ff ff ea                                      b #0x6f9368

; FUNCTION 0x006f9438, declared_size=208, range_size=208, mode=arm
; class-group: std::vector<glitch::scene::SParticle, glitch::core::SAllocator<glitch::scene::SParticle, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch5scene9SParticleENS0_4core10SAllocatorIS2_LNS0_6memory13E_MEMORY_HINTE0EEEE9push_backERKS2_
; demangled: std::vector<glitch::scene::SParticle, glitch::core::SAllocator<glitch::scene::SParticle, (glitch::memory::E_MEMORY_HINT)0> >::push_back(glitch::scene::SParticle const&)
; decoder-mode: arm
006f9438  10 40 2d e9                                      push {r4, lr}
006f943c  18 00 90 e9                                      ldmib r0, {r3, r4}
006f9440  10 d0 4d e2                                      sub sp, sp, #0x10
006f9444  01 20 a0 e1                                      mov r2, r1
006f9448  04 00 53 e1                                      cmp r3, r4
006f944c  26 00 00 0a                                      beq #0x6f94ec
006f9450  00 10 91 e5                                      ldr r1, [r1]
006f9454  00 10 83 e5                                      str r1, [r3]
006f9458  04 10 92 e5                                      ldr r1, [r2, #4]
006f945c  04 10 83 e5                                      str r1, [r3, #4]
006f9460  08 10 92 e5                                      ldr r1, [r2, #8]
006f9464  08 10 83 e5                                      str r1, [r3, #8]
006f9468  0c 10 92 e5                                      ldr r1, [r2, #0xc]
006f946c  0c 10 83 e5                                      str r1, [r3, #0xc]
006f9470  10 10 92 e5                                      ldr r1, [r2, #0x10]
006f9474  10 10 83 e5                                      str r1, [r3, #0x10]
006f9478  14 10 92 e5                                      ldr r1, [r2, #0x14]
006f947c  14 10 83 e5                                      str r1, [r3, #0x14]
006f9480  18 10 92 e5                                      ldr r1, [r2, #0x18]
006f9484  18 10 83 e5                                      str r1, [r3, #0x18]
006f9488  1c 10 92 e5                                      ldr r1, [r2, #0x1c]
006f948c  1c 10 83 e5                                      str r1, [r3, #0x1c]
006f9490  20 10 92 e5                                      ldr r1, [r2, #0x20]
006f9494  20 10 83 e5                                      str r1, [r3, #0x20]
006f9498  24 10 92 e5                                      ldr r1, [r2, #0x24]
006f949c  24 10 83 e5                                      str r1, [r3, #0x24]
006f94a0  28 10 92 e5                                      ldr r1, [r2, #0x28]
006f94a4  28 10 83 e5                                      str r1, [r3, #0x28]
006f94a8  2c 10 92 e5                                      ldr r1, [r2, #0x2c]
006f94ac  2c 10 83 e5                                      str r1, [r3, #0x2c]
006f94b0  30 10 92 e5                                      ldr r1, [r2, #0x30]
006f94b4  30 10 83 e5                                      str r1, [r3, #0x30]
006f94b8  34 10 92 e5                                      ldr r1, [r2, #0x34]
006f94bc  34 10 83 e5                                      str r1, [r3, #0x34]
006f94c0  38 10 92 e5                                      ldr r1, [r2, #0x38]
006f94c4  38 10 83 e5                                      str r1, [r3, #0x38]
006f94c8  3c 10 92 e5                                      ldr r1, [r2, #0x3c]
006f94cc  3c 10 83 e5                                      str r1, [r3, #0x3c]
006f94d0  40 20 92 e5                                      ldr r2, [r2, #0x40]
006f94d4  40 20 83 e5                                      str r2, [r3, #0x40]
006f94d8  04 30 90 e5                                      ldr r3, [r0, #4]
006f94dc  44 30 83 e2                                      add r3, r3, #0x44
006f94e0  04 30 80 e5                                      str r3, [r0, #4]
006f94e4  10 d0 8d e2                                      add sp, sp, #0x10
006f94e8  10 80 bd e8                                      pop {r4, pc}
006f94ec  01 c0 a0 e3                                      mov ip, #1
006f94f0  03 10 a0 e1                                      mov r1, r3
006f94f4  0c 30 8d e2                                      add r3, sp, #0xc
006f94f8  04 c0 8d e5                                      str ip, [sp, #4]
006f94fc  00 c0 8d e5                                      str ip, [sp]
006f9500  76 ff ff eb                                      bl #0x6f92e0
006f9504  f6 ff ff ea                                      b #0x6f94e4

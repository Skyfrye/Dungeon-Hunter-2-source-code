; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006472cc, declared_size=248, range_size=248, mode=arm
; class-group: std::vector<unsigned int, glitch::core::SAllocator<unsigned int, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIjN6glitch4core10SAllocatorIjLNS0_6memory13E_MEMORY_HINTE0EEEEaSERKS6_
; demangled: std::vector<unsigned int, glitch::core::SAllocator<unsigned int, (glitch::memory::E_MEMORY_HINT)0> >::operator=(std::vector<unsigned int, glitch::core::SAllocator<unsigned int, (glitch::memory::E_MEMORY_HINT)0> > const&)
; decoder-mode: arm
006472cc  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
006472d0  00 00 51 e1                                      cmp r1, r0
006472d4  0c d0 4d e2                                      sub sp, sp, #0xc
006472d8  01 60 a0 e1                                      mov r6, r1
006472dc  00 40 a0 e1                                      mov r4, r0
006472e0  16 00 00 0a                                      beq #0x647340
006472e4  0c 00 91 e8                                      ldm r1, {r2, r3}
006472e8  00 70 90 e5                                      ldr r7, [r0]
006472ec  08 10 90 e5                                      ldr r1, [r0, #8]
006472f0  03 c0 62 e0                                      rsb ip, r2, r3
006472f4  4c 51 a0 e1                                      asr r5, ip, #2
006472f8  01 10 67 e0                                      rsb r1, r7, r1
006472fc  41 01 55 e1                                      cmp r5, r1, asr #2
00647300  19 00 00 8a                                      bhi #0x64736c
00647304  04 00 90 e5                                      ldr r0, [r0, #4]
00647308  00 10 67 e0                                      rsb r1, r7, r0
0064730c  41 11 a0 e1                                      asr r1, r1, #2
00647310  01 00 55 e1                                      cmp r5, r1
00647314  0c 00 00 9a                                      bls #0x64734c
00647318  01 11 82 e0                                      add r1, r2, r1, lsl #2
0064731c  02 c0 51 e0                                      subs ip, r1, r2
00647320  1c 00 00 1a                                      bne #0x647398
00647324  03 00 51 e1                                      cmp r1, r3
00647328  02 00 00 0a                                      beq #0x647338
0064732c  03 20 61 e0                                      rsb r2, r1, r3
00647330  4c 1d f3 eb                                      bl #0x30e868
00647334  00 70 94 e5                                      ldr r7, [r4]
00647338  05 51 87 e0                                      add r5, r7, r5, lsl #2
0064733c  04 50 84 e5                                      str r5, [r4, #4]
00647340  04 00 a0 e1                                      mov r0, r4
00647344  0c d0 8d e2                                      add sp, sp, #0xc
00647348  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0064734c  00 00 5c e3                                      cmp ip, #0
00647350  f8 ff ff 0a                                      beq #0x647338
00647354  07 00 a0 e1                                      mov r0, r7
00647358  02 10 a0 e1                                      mov r1, r2
0064735c  0c 20 a0 e1                                      mov r2, ip
00647360  f4 1a f3 eb                                      bl #0x30df38
00647364  00 70 94 e5                                      ldr r7, [r4]
00647368  f2 ff ff ea                                      b #0x647338
0064736c  08 10 8d e2                                      add r1, sp, #8
00647370  04 50 21 e5                                      str r5, [r1, #-4]!
00647374  c5 ff ff eb                                      bl #0x647290
00647378  00 70 a0 e1                                      mov r7, r0
0064737c  00 00 94 e5                                      ldr r0, [r4]
00647380  32 24 f3 eb                                      bl #0x310450
00647384  04 30 9d e5                                      ldr r3, [sp, #4]
00647388  00 70 84 e5                                      str r7, [r4]
0064738c  03 31 87 e0                                      add r3, r7, r3, lsl #2
00647390  08 30 84 e5                                      str r3, [r4, #8]
00647394  e7 ff ff ea                                      b #0x647338
00647398  02 10 a0 e1                                      mov r1, r2
0064739c  07 00 a0 e1                                      mov r0, r7
006473a0  0c 20 a0 e1                                      mov r2, ip
006473a4  e3 1a f3 eb                                      bl #0x30df38
006473a8  04 00 94 e5                                      ldr r0, [r4, #4]
006473ac  00 70 94 e5                                      ldr r7, [r4]
006473b0  0c 00 96 e8                                      ldm r6, {r2, r3}
006473b4  00 10 67 e0                                      rsb r1, r7, r0
006473b8  03 10 c1 e3                                      bic r1, r1, #3
006473bc  01 10 82 e0                                      add r1, r2, r1
006473c0  d7 ff ff ea                                      b #0x647324

; FUNCTION 0x006473c4, declared_size=108, range_size=108, mode=arm
; class-group: std::vector<unsigned int, glitch::core::SAllocator<unsigned int, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIjN6glitch4core10SAllocatorIjLNS0_6memory13E_MEMORY_HINTE0EEEEC1ERKS6_
; demangled: std::vector<unsigned int, glitch::core::SAllocator<unsigned int, (glitch::memory::E_MEMORY_HINT)0> >::vector(std::vector<unsigned int, glitch::core::SAllocator<unsigned int, (glitch::memory::E_MEMORY_HINT)0> > const&)
; decoder-mode: arm
006473c4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006473c8  88 00 91 e8                                      ldm r1, {r3, r7}
006473cc  01 60 a0 e1                                      mov r6, r1
006473d0  00 10 a0 e3                                      mov r1, #0
006473d4  07 70 63 e0                                      rsb r7, r3, r7
006473d8  03 70 c7 e3                                      bic r7, r7, #3
006473dc  00 40 a0 e1                                      mov r4, r0
006473e0  00 10 80 e5                                      str r1, [r0]
006473e4  04 10 80 e5                                      str r1, [r0, #4]
006473e8  08 10 80 e5                                      str r1, [r0, #8]
006473ec  07 00 a0 e1                                      mov r0, r7
006473f0  5c 24 f3 eb                                      bl #0x310568
006473f4  07 70 80 e0                                      add r7, r0, r7
006473f8  08 70 84 e5                                      str r7, [r4, #8]
006473fc  00 00 84 e5                                      str r0, [r4]
00647400  04 00 84 e5                                      str r0, [r4, #4]
00647404  22 00 96 e8                                      ldm r6, {r1, r5}
00647408  00 30 a0 e1                                      mov r3, r0
0064740c  05 00 51 e1                                      cmp r1, r5
00647410  03 00 00 0a                                      beq #0x647424
00647414  05 50 61 e0                                      rsb r5, r1, r5
00647418  05 20 a0 e1                                      mov r2, r5
0064741c  11 1d f3 eb                                      bl #0x30e868
00647420  05 30 80 e0                                      add r3, r0, r5
00647424  04 30 84 e5                                      str r3, [r4, #4]
00647428  04 00 a0 e1                                      mov r0, r4
0064742c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x006478c0, declared_size=176, range_size=176, mode=arm
; class-group: std::vector<unsigned int, glitch::core::SAllocator<unsigned int, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIjN6glitch4core10SAllocatorIjLNS0_6memory13E_MEMORY_HINTE0EEEE18_M_insert_overflowEPjRKjRKSt11__true_typejb.clone.4
; demangled: std::vector<unsigned int, glitch::core::SAllocator<unsigned int, (glitch::memory::E_MEMORY_HINT)0> >::_M_insert_overflow(unsigned int*, unsigned int const&, std::__true_type const&, unsigned int, bool) [clone .clone.4]
; decoder-mode: arm
006478c0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006478c4  00 40 a0 e1                                      mov r4, r0
006478c8  00 30 94 e5                                      ldr r3, [r4]
006478cc  04 00 90 e5                                      ldr r0, [r0, #4]
006478d0  01 60 a0 e1                                      mov r6, r1
006478d4  02 80 a0 e1                                      mov r8, r2
006478d8  00 30 63 e0                                      rsb r3, r3, r0
006478dc  43 31 a0 e1                                      asr r3, r3, #2
006478e0  01 00 53 e3                                      cmp r3, #1
006478e4  03 70 83 20                                      addhs r7, r3, r3
006478e8  01 70 83 32                                      addlo r7, r3, #1
006478ec  07 01 77 e3                                      cmn r7, #0xc0000001
006478f0  11 00 00 8a                                      bhi #0x64793c
006478f4  07 00 53 e1                                      cmp r3, r7
006478f8  07 71 a0 91                                      lslls r7, r7, #2
006478fc  0e 00 00 8a                                      bhi #0x64793c
00647900  00 10 a0 e3                                      mov r1, #0
00647904  07 00 a0 e1                                      mov r0, r7
00647908  16 23 f3 eb                                      bl #0x310568
0064790c  00 10 94 e5                                      ldr r1, [r4]
00647910  00 50 a0 e1                                      mov r5, r0
00647914  01 60 56 e0                                      subs r6, r6, r1
00647918  00 60 a0 01                                      moveq r6, r0
0064791c  0f 00 00 1a                                      bne #0x647960
00647920  00 30 98 e5                                      ldr r3, [r8]
00647924  07 70 85 e0                                      add r7, r5, r7
00647928  04 30 86 e4                                      str r3, [r6], #4
0064792c  00 00 94 e5                                      ldr r0, [r4]
00647930  c6 22 f3 eb                                      bl #0x310450
00647934  e0 00 84 e8                                      stm r4, {r5, r6, r7}
00647938  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0064793c  03 70 e0 e3                                      mvn r7, #3
00647940  00 10 a0 e3                                      mov r1, #0
00647944  07 00 a0 e1                                      mov r0, r7
00647948  06 23 f3 eb                                      bl #0x310568
0064794c  00 10 94 e5                                      ldr r1, [r4]
00647950  00 50 a0 e1                                      mov r5, r0
00647954  01 60 56 e0                                      subs r6, r6, r1
00647958  00 60 a0 01                                      moveq r6, r0
0064795c  ef ff ff 0a                                      beq #0x647920
00647960  06 20 a0 e1                                      mov r2, r6
00647964  73 19 f3 eb                                      bl #0x30df38
00647968  06 60 80 e0                                      add r6, r0, r6
0064796c  eb ff ff ea                                      b #0x647920

; FUNCTION 0x006d0a10, declared_size=328, range_size=328, mode=arm
; class-group: std::vector<unsigned int, glitch::core::SAllocator<unsigned int, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIjN6glitch4core10SAllocatorIjLNS0_6memory13E_MEMORY_HINTE0EEEE18_M_fill_insert_auxEPjjRKjRKSt12__false_type
; demangled: std::vector<unsigned int, glitch::core::SAllocator<unsigned int, (glitch::memory::E_MEMORY_HINT)0> >::_M_fill_insert_aux(unsigned int*, unsigned int, unsigned int const&, std::__false_type const&)
; decoder-mode: arm
006d0a10  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
006d0a14  00 c0 90 e5                                      ldr ip, [r0]
006d0a18  03 50 a0 e1                                      mov r5, r3
006d0a1c  14 d0 4d e2                                      sub sp, sp, #0x14
006d0a20  0c 00 53 e1                                      cmp r3, ip
006d0a24  00 40 a0 e1                                      mov r4, r0
006d0a28  01 60 a0 e1                                      mov r6, r1
006d0a2c  02 30 a0 e1                                      mov r3, r2
006d0a30  04 70 90 35                                      ldrlo r7, [r0, #4]
006d0a34  0a 00 00 3a                                      blo #0x6d0a64
006d0a38  04 70 90 e5                                      ldr r7, [r0, #4]
006d0a3c  07 00 55 e1                                      cmp r5, r7
006d0a40  07 00 00 2a                                      bhs #0x6d0a64
006d0a44  00 c0 95 e5                                      ldr ip, [r5]
006d0a48  10 30 8d e2                                      add r3, sp, #0x10
006d0a4c  08 c0 23 e5                                      str ip, [r3, #-8]!
006d0a50  0c c0 8d e2                                      add ip, sp, #0xc
006d0a54  00 c0 8d e5                                      str ip, [sp]
006d0a58  ec ff ff eb                                      bl #0x6d0a10
006d0a5c  14 d0 8d e2                                      add sp, sp, #0x14
006d0a60  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
006d0a64  07 20 66 e0                                      rsb r2, r6, r7
006d0a68  42 81 a0 e1                                      asr r8, r2, #2
006d0a6c  08 00 53 e1                                      cmp r3, r8
006d0a70  1c 00 00 2a                                      bhs #0x6d0ae8
006d0a74  03 81 a0 e1                                      lsl r8, r3, #2
006d0a78  07 30 68 e0                                      rsb r3, r8, r7
006d0a7c  07 00 53 e1                                      cmp r3, r7
006d0a80  07 a0 a0 01                                      moveq sl, r7
006d0a84  05 00 00 0a                                      beq #0x6d0aa0
006d0a88  03 10 a0 e1                                      mov r1, r3
006d0a8c  07 20 63 e0                                      rsb r2, r3, r7
006d0a90  07 00 a0 e1                                      mov r0, r7
006d0a94  03 a0 a0 e1                                      mov sl, r3
006d0a98  72 f7 f0 eb                                      bl #0x30e868
006d0a9c  04 30 94 e5                                      ldr r3, [r4, #4]
006d0aa0  0a 20 66 e0                                      rsb r2, r6, sl
006d0aa4  08 30 83 e0                                      add r3, r3, r8
006d0aa8  00 00 52 e3                                      cmp r2, #0
006d0aac  04 30 84 e5                                      str r3, [r4, #4]
006d0ab0  02 00 00 da                                      ble #0x6d0ac0
006d0ab4  07 00 62 e0                                      rsb r0, r2, r7
006d0ab8  06 10 a0 e1                                      mov r1, r6
006d0abc  1d f5 f0 eb                                      bl #0x30df38
006d0ac0  48 81 a0 e1                                      asr r8, r8, #2
006d0ac4  00 00 58 e3                                      cmp r8, #0
006d0ac8  e3 ff ff da                                      ble #0x6d0a5c
006d0acc  00 20 a0 e3                                      mov r2, #0
006d0ad0  00 10 95 e5                                      ldr r1, [r5]
006d0ad4  02 11 86 e7                                      str r1, [r6, r2, lsl #2]
006d0ad8  01 20 82 e2                                      add r2, r2, #1
006d0adc  08 00 52 e1                                      cmp r2, r8
006d0ae0  fa ff ff 1a                                      bne #0x6d0ad0
006d0ae4  dc ff ff ea                                      b #0x6d0a5c
006d0ae8  03 30 68 e0                                      rsb r3, r8, r3
006d0aec  53 a0 bd e7                                      sbfx sl, r3, #0, #0x1e
006d0af0  00 00 5a e3                                      cmp sl, #0
006d0af4  03 01 87 e0                                      add r0, r7, r3, lsl #2
006d0af8  05 00 00 da                                      ble #0x6d0b14
006d0afc  00 10 a0 e3                                      mov r1, #0
006d0b00  00 c0 95 e5                                      ldr ip, [r5]
006d0b04  01 c1 87 e7                                      str ip, [r7, r1, lsl #2]
006d0b08  01 10 81 e2                                      add r1, r1, #1
006d0b0c  0a 00 51 e1                                      cmp r1, sl
006d0b10  fa ff ff 1a                                      bne #0x6d0b00
006d0b14  07 00 56 e1                                      cmp r6, r7
006d0b18  04 00 84 e5                                      str r0, [r4, #4]
006d0b1c  02 00 00 0a                                      beq #0x6d0b2c
006d0b20  06 10 a0 e1                                      mov r1, r6
006d0b24  4f f7 f0 eb                                      bl #0x30e868
006d0b28  04 00 94 e5                                      ldr r0, [r4, #4]
006d0b2c  08 01 80 e0                                      add r0, r0, r8, lsl #2
006d0b30  00 00 58 e3                                      cmp r8, #0
006d0b34  04 00 84 e5                                      str r0, [r4, #4]
006d0b38  c7 ff ff da                                      ble #0x6d0a5c
006d0b3c  00 30 a0 e3                                      mov r3, #0
006d0b40  00 20 95 e5                                      ldr r2, [r5]
006d0b44  03 21 86 e7                                      str r2, [r6, r3, lsl #2]
006d0b48  01 30 83 e2                                      add r3, r3, #1
006d0b4c  03 00 58 e1                                      cmp r8, r3
006d0b50  fa ff ff 1a                                      bne #0x6d0b40
006d0b54  c0 ff ff ea                                      b #0x6d0a5c

; FUNCTION 0x006d0bb8, declared_size=96, range_size=96, mode=arm
; class-group: std::vector<unsigned int, glitch::core::SAllocator<unsigned int, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIjN6glitch4core10SAllocatorIjLNS0_6memory13E_MEMORY_HINTE0EEEE20_M_compute_next_sizeEj
; demangled: std::vector<unsigned int, glitch::core::SAllocator<unsigned int, (glitch::memory::E_MEMORY_HINT)0> >::_M_compute_next_size(unsigned int)
; decoder-mode: arm
006d0bb8  70 40 2d e9                                      push {r4, r5, r6, lr}
006d0bbc  14 00 90 e8                                      ldm r0, {r2, r4}
006d0bc0  ff 3f 0f e3                                      movw r3, #0xffff
006d0bc4  ff 3f 43 e3                                      movt r3, #0x3fff
006d0bc8  04 40 62 e0                                      rsb r4, r2, r4
006d0bcc  44 41 a0 e1                                      asr r4, r4, #2
006d0bd0  03 30 64 e0                                      rsb r3, r4, r3
006d0bd4  01 00 53 e1                                      cmp r3, r1
006d0bd8  01 50 a0 e1                                      mov r5, r1
006d0bdc  08 00 00 3a                                      blo #0x6d0c04
006d0be0  05 00 54 e1                                      cmp r4, r5
006d0be4  04 00 84 20                                      addhs r0, r4, r4
006d0be8  05 00 84 30                                      addlo r0, r4, r5
006d0bec  07 01 70 e3                                      cmn r0, #0xc0000001
006d0bf0  01 00 00 8a                                      bhi #0x6d0bfc
006d0bf4  04 00 50 e1                                      cmp r0, r4
006d0bf8  00 00 00 2a                                      bhs #0x6d0c00
006d0bfc  03 01 e0 e3                                      mvn r0, #0xc0000000
006d0c00  70 80 bd e8                                      pop {r4, r5, r6, pc}
006d0c04  08 00 9f e5                                      ldr r0, [pc, #8]
006d0c08  00 00 8f e0                                      add r0, pc, r0
006d0c0c  8b e0 00 eb                                      bl #0x708e40
006d0c10  f2 ff ff ea                                      b #0x6d0be0
; mapping-symbol data/literal pool
006d0c14  60 d8 1e 00                                      .byte 0x60, 0xd8, 0x1e, 0x00

; FUNCTION 0x006d1404, declared_size=208, range_size=208, mode=arm
; class-group: std::vector<unsigned int, glitch::core::SAllocator<unsigned int, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIjN6glitch4core10SAllocatorIjLNS0_6memory13E_MEMORY_HINTE0EEEE14_M_fill_insertEPjjRKj
; demangled: std::vector<unsigned int, glitch::core::SAllocator<unsigned int, (glitch::memory::E_MEMORY_HINT)0> >::_M_fill_insert(unsigned int*, unsigned int, unsigned int const&)
; decoder-mode: arm
006d1404  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
006d1408  00 60 52 e2                                      subs r6, r2, #0
006d140c  10 d0 4d e2                                      sub sp, sp, #0x10
006d1410  00 50 a0 e1                                      mov r5, r0
006d1414  01 70 a0 e1                                      mov r7, r1
006d1418  03 40 a0 e1                                      mov r4, r3
006d141c  26 00 00 0a                                      beq #0x6d14bc
006d1420  00 50 90 e9                                      ldmib r0, {ip, lr}
006d1424  0e c0 6c e0                                      rsb ip, ip, lr
006d1428  4c 01 56 e1                                      cmp r6, ip, asr #2
006d142c  24 00 00 9a                                      bls #0x6d14c4
006d1430  06 10 a0 e1                                      mov r1, r6
006d1434  df fd ff eb                                      bl #0x6d0bb8
006d1438  00 91 a0 e1                                      lsl sb, r0, #2
006d143c  00 10 a0 e3                                      mov r1, #0
006d1440  09 00 a0 e1                                      mov r0, sb
006d1444  47 fc f0 eb                                      bl #0x310568
006d1448  00 10 95 e5                                      ldr r1, [r5]
006d144c  00 80 a0 e1                                      mov r8, r0
006d1450  01 a0 57 e0                                      subs sl, r7, r1
006d1454  00 00 a0 01                                      moveq r0, r0
006d1458  02 00 00 0a                                      beq #0x6d1468
006d145c  0a 20 a0 e1                                      mov r2, sl
006d1460  b4 f2 f0 eb                                      bl #0x30df38
006d1464  0a 00 80 e0                                      add r0, r0, sl
006d1468  06 20 a0 e1                                      mov r2, r6
006d146c  00 30 a0 e3                                      mov r3, #0
006d1470  00 10 94 e5                                      ldr r1, [r4]
006d1474  01 20 52 e2                                      subs r2, r2, #1
006d1478  03 10 80 e7                                      str r1, [r0, r3]
006d147c  04 30 83 e2                                      add r3, r3, #4
006d1480  fa ff ff 1a                                      bne #0x6d1470
006d1484  04 30 95 e5                                      ldr r3, [r5, #4]
006d1488  06 01 80 e0                                      add r0, r0, r6, lsl #2
006d148c  07 40 53 e0                                      subs r4, r3, r7
006d1490  00 60 a0 01                                      moveq r6, r0
006d1494  03 00 00 0a                                      beq #0x6d14a8
006d1498  07 10 a0 e1                                      mov r1, r7
006d149c  04 20 a0 e1                                      mov r2, r4
006d14a0  a4 f2 f0 eb                                      bl #0x30df38
006d14a4  04 60 80 e0                                      add r6, r0, r4
006d14a8  00 00 95 e5                                      ldr r0, [r5]
006d14ac  09 90 88 e0                                      add sb, r8, sb
006d14b0  e6 fb f0 eb                                      bl #0x310450
006d14b4  40 02 85 e9                                      stmib r5, {r6, sb}
006d14b8  00 80 85 e5                                      str r8, [r5]
006d14bc  10 d0 8d e2                                      add sp, sp, #0x10
006d14c0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
006d14c4  0c c0 8d e2                                      add ip, sp, #0xc
006d14c8  00 c0 8d e5                                      str ip, [sp]
006d14cc  4f fd ff eb                                      bl #0x6d0a10
006d14d0  f9 ff ff ea                                      b #0x6d14bc

; FUNCTION 0x006d14d4, declared_size=68, range_size=68, mode=arm
; class-group: std::vector<unsigned int, glitch::core::SAllocator<unsigned int, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIjN6glitch4core10SAllocatorIjLNS0_6memory13E_MEMORY_HINTE0EEEE6resizeEjRKj
; demangled: std::vector<unsigned int, glitch::core::SAllocator<unsigned int, (glitch::memory::E_MEMORY_HINT)0> >::resize(unsigned int, unsigned int const&)
; decoder-mode: arm
006d14d4  30 00 2d e9                                      push {r4, r5}
006d14d8  04 40 90 e5                                      ldr r4, [r0, #4]
006d14dc  00 50 90 e5                                      ldr r5, [r0]
006d14e0  02 30 a0 e1                                      mov r3, r2
006d14e4  04 20 65 e0                                      rsb r2, r5, r4
006d14e8  42 21 a0 e1                                      asr r2, r2, #2
006d14ec  02 00 51 e1                                      cmp r1, r2
006d14f0  04 00 00 2a                                      bhs #0x6d1508
006d14f4  01 51 85 e0                                      add r5, r5, r1, lsl #2
006d14f8  04 00 55 e1                                      cmp r5, r4
006d14fc  04 50 80 15                                      strne r5, [r0, #4]
006d1500  30 00 bd e8                                      pop {r4, r5}
006d1504  1e ff 2f e1                                      bx lr
006d1508  01 20 62 e0                                      rsb r2, r2, r1
006d150c  04 10 a0 e1                                      mov r1, r4
006d1510  30 00 bd e8                                      pop {r4, r5}
006d1514  ba ff ff ea                                      b #0x6d1404

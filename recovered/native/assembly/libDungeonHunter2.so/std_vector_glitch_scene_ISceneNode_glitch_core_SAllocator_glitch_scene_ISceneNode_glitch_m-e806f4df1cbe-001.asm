; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0035861c, declared_size=144, range_size=144, mode=arm
; class-group: std::vector<glitch::scene::ISceneNode*, glitch::core::SAllocator<glitch::scene::ISceneNode*, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIPN6glitch5scene10ISceneNodeENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE18_M_insert_overflowEPS3_RKS3_RKSt11__true_typejb.clone.17
; demangled: std::vector<glitch::scene::ISceneNode*, glitch::core::SAllocator<glitch::scene::ISceneNode*, (glitch::memory::E_MEMORY_HINT)0> >::_M_insert_overflow(glitch::scene::ISceneNode**, glitch::scene::ISceneNode* const&, std::__true_type const&, unsigned int, bool) [clone .clone.17]
; decoder-mode: arm
0035861c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00358620  00 40 a0 e1                                      mov r4, r0
00358624  00 30 94 e5                                      ldr r3, [r4]
00358628  04 00 90 e5                                      ldr r0, [r0, #4]
0035862c  01 60 a0 e1                                      mov r6, r1
00358630  02 80 a0 e1                                      mov r8, r2
00358634  00 30 63 e0                                      rsb r3, r3, r0
00358638  43 31 a0 e1                                      asr r3, r3, #2
0035863c  01 00 53 e3                                      cmp r3, #1
00358640  03 70 83 20                                      addhs r7, r3, r3
00358644  01 70 83 32                                      addlo r7, r3, #1
00358648  07 01 77 e3                                      cmn r7, #0xc0000001
0035864c  14 00 00 8a                                      bhi #0x3586a4
00358650  07 00 53 e1                                      cmp r3, r7
00358654  07 71 a0 91                                      lslls r7, r7, #2
00358658  11 00 00 8a                                      bhi #0x3586a4
0035865c  00 10 a0 e3                                      mov r1, #0
00358660  07 00 a0 e1                                      mov r0, r7
00358664  bf df fe eb                                      bl #0x310568
00358668  00 10 94 e5                                      ldr r1, [r4]
0035866c  00 50 a0 e1                                      mov r5, r0
00358670  01 60 56 e0                                      subs r6, r6, r1
00358674  00 60 a0 01                                      moveq r6, r0
00358678  02 00 00 0a                                      beq #0x358688
0035867c  06 20 a0 e1                                      mov r2, r6
00358680  2c d6 fe eb                                      bl #0x30df38
00358684  06 60 80 e0                                      add r6, r0, r6
00358688  00 30 98 e5                                      ldr r3, [r8]
0035868c  07 70 85 e0                                      add r7, r5, r7
00358690  04 30 86 e4                                      str r3, [r6], #4
00358694  00 00 94 e5                                      ldr r0, [r4]
00358698  6c df fe eb                                      bl #0x310450
0035869c  e0 00 84 e8                                      stm r4, {r5, r6, r7}
003586a0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003586a4  03 70 e0 e3                                      mvn r7, #3
003586a8  eb ff ff ea                                      b #0x35865c

; FUNCTION 0x00589a50, declared_size=96, range_size=96, mode=arm
; class-group: std::vector<glitch::scene::ISceneNode*, glitch::core::SAllocator<glitch::scene::ISceneNode*, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIPN6glitch5scene10ISceneNodeENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE20_M_compute_next_sizeEj
; demangled: std::vector<glitch::scene::ISceneNode*, glitch::core::SAllocator<glitch::scene::ISceneNode*, (glitch::memory::E_MEMORY_HINT)0> >::_M_compute_next_size(unsigned int)
; decoder-mode: arm
00589a50  70 40 2d e9                                      push {r4, r5, r6, lr}
00589a54  14 00 90 e8                                      ldm r0, {r2, r4}
00589a58  ff 3f 0f e3                                      movw r3, #0xffff
00589a5c  ff 3f 43 e3                                      movt r3, #0x3fff
00589a60  04 40 62 e0                                      rsb r4, r2, r4
00589a64  44 41 a0 e1                                      asr r4, r4, #2
00589a68  03 30 64 e0                                      rsb r3, r4, r3
00589a6c  01 00 53 e1                                      cmp r3, r1
00589a70  01 50 a0 e1                                      mov r5, r1
00589a74  08 00 00 3a                                      blo #0x589a9c
00589a78  05 00 54 e1                                      cmp r4, r5
00589a7c  04 00 84 20                                      addhs r0, r4, r4
00589a80  05 00 84 30                                      addlo r0, r4, r5
00589a84  07 01 70 e3                                      cmn r0, #0xc0000001
00589a88  01 00 00 8a                                      bhi #0x589a94
00589a8c  04 00 50 e1                                      cmp r0, r4
00589a90  00 00 00 2a                                      bhs #0x589a98
00589a94  03 01 e0 e3                                      mvn r0, #0xc0000000
00589a98  70 80 bd e8                                      pop {r4, r5, r6, pc}
00589a9c  08 00 9f e5                                      ldr r0, [pc, #8]
00589aa0  00 00 8f e0                                      add r0, pc, r0
00589aa4  e5 fc 05 eb                                      bl #0x708e40
00589aa8  f2 ff ff ea                                      b #0x589a78
; mapping-symbol data/literal pool
00589aac  c8 49 33 00                                      .byte 0xc8, 0x49, 0x33, 0x00

; FUNCTION 0x00589c00, declared_size=328, range_size=328, mode=arm
; class-group: std::vector<glitch::scene::ISceneNode*, glitch::core::SAllocator<glitch::scene::ISceneNode*, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIPN6glitch5scene10ISceneNodeENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE18_M_fill_insert_auxEPS3_jRKS3_RKSt12__false_type
; demangled: std::vector<glitch::scene::ISceneNode*, glitch::core::SAllocator<glitch::scene::ISceneNode*, (glitch::memory::E_MEMORY_HINT)0> >::_M_fill_insert_aux(glitch::scene::ISceneNode**, unsigned int, glitch::scene::ISceneNode* const&, std::__false_type const&)
; decoder-mode: arm
00589c00  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00589c04  00 c0 90 e5                                      ldr ip, [r0]
00589c08  03 50 a0 e1                                      mov r5, r3
00589c0c  14 d0 4d e2                                      sub sp, sp, #0x14
00589c10  0c 00 53 e1                                      cmp r3, ip
00589c14  00 40 a0 e1                                      mov r4, r0
00589c18  01 60 a0 e1                                      mov r6, r1
00589c1c  02 30 a0 e1                                      mov r3, r2
00589c20  04 70 90 35                                      ldrlo r7, [r0, #4]
00589c24  0a 00 00 3a                                      blo #0x589c54
00589c28  04 70 90 e5                                      ldr r7, [r0, #4]
00589c2c  07 00 55 e1                                      cmp r5, r7
00589c30  07 00 00 2a                                      bhs #0x589c54
00589c34  00 c0 95 e5                                      ldr ip, [r5]
00589c38  10 30 8d e2                                      add r3, sp, #0x10
00589c3c  08 c0 23 e5                                      str ip, [r3, #-8]!
00589c40  0c c0 8d e2                                      add ip, sp, #0xc
00589c44  00 c0 8d e5                                      str ip, [sp]
00589c48  ec ff ff eb                                      bl #0x589c00
00589c4c  14 d0 8d e2                                      add sp, sp, #0x14
00589c50  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00589c54  07 20 66 e0                                      rsb r2, r6, r7
00589c58  42 81 a0 e1                                      asr r8, r2, #2
00589c5c  08 00 53 e1                                      cmp r3, r8
00589c60  1c 00 00 2a                                      bhs #0x589cd8
00589c64  03 81 a0 e1                                      lsl r8, r3, #2
00589c68  07 30 68 e0                                      rsb r3, r8, r7
00589c6c  07 00 53 e1                                      cmp r3, r7
00589c70  07 a0 a0 01                                      moveq sl, r7
00589c74  05 00 00 0a                                      beq #0x589c90
00589c78  03 10 a0 e1                                      mov r1, r3
00589c7c  07 20 63 e0                                      rsb r2, r3, r7
00589c80  07 00 a0 e1                                      mov r0, r7
00589c84  03 a0 a0 e1                                      mov sl, r3
00589c88  f6 12 f6 eb                                      bl #0x30e868
00589c8c  04 30 94 e5                                      ldr r3, [r4, #4]
00589c90  0a 20 66 e0                                      rsb r2, r6, sl
00589c94  08 30 83 e0                                      add r3, r3, r8
00589c98  00 00 52 e3                                      cmp r2, #0
00589c9c  04 30 84 e5                                      str r3, [r4, #4]
00589ca0  02 00 00 da                                      ble #0x589cb0
00589ca4  07 00 62 e0                                      rsb r0, r2, r7
00589ca8  06 10 a0 e1                                      mov r1, r6
00589cac  a1 10 f6 eb                                      bl #0x30df38
00589cb0  48 81 a0 e1                                      asr r8, r8, #2
00589cb4  00 00 58 e3                                      cmp r8, #0
00589cb8  e3 ff ff da                                      ble #0x589c4c
00589cbc  00 20 a0 e3                                      mov r2, #0
00589cc0  00 10 95 e5                                      ldr r1, [r5]
00589cc4  02 11 86 e7                                      str r1, [r6, r2, lsl #2]
00589cc8  01 20 82 e2                                      add r2, r2, #1
00589ccc  08 00 52 e1                                      cmp r2, r8
00589cd0  fa ff ff 1a                                      bne #0x589cc0
00589cd4  dc ff ff ea                                      b #0x589c4c
00589cd8  03 30 68 e0                                      rsb r3, r8, r3
00589cdc  53 a0 bd e7                                      sbfx sl, r3, #0, #0x1e
00589ce0  00 00 5a e3                                      cmp sl, #0
00589ce4  03 01 87 e0                                      add r0, r7, r3, lsl #2
00589ce8  05 00 00 da                                      ble #0x589d04
00589cec  00 10 a0 e3                                      mov r1, #0
00589cf0  00 c0 95 e5                                      ldr ip, [r5]
00589cf4  01 c1 87 e7                                      str ip, [r7, r1, lsl #2]
00589cf8  01 10 81 e2                                      add r1, r1, #1
00589cfc  0a 00 51 e1                                      cmp r1, sl
00589d00  fa ff ff 1a                                      bne #0x589cf0
00589d04  07 00 56 e1                                      cmp r6, r7
00589d08  04 00 84 e5                                      str r0, [r4, #4]
00589d0c  02 00 00 0a                                      beq #0x589d1c
00589d10  06 10 a0 e1                                      mov r1, r6
00589d14  d3 12 f6 eb                                      bl #0x30e868
00589d18  04 00 94 e5                                      ldr r0, [r4, #4]
00589d1c  08 01 80 e0                                      add r0, r0, r8, lsl #2
00589d20  00 00 58 e3                                      cmp r8, #0
00589d24  04 00 84 e5                                      str r0, [r4, #4]
00589d28  c7 ff ff da                                      ble #0x589c4c
00589d2c  00 30 a0 e3                                      mov r3, #0
00589d30  00 20 95 e5                                      ldr r2, [r5]
00589d34  03 21 86 e7                                      str r2, [r6, r3, lsl #2]
00589d38  01 30 83 e2                                      add r3, r3, #1
00589d3c  03 00 58 e1                                      cmp r8, r3
00589d40  fa ff ff 1a                                      bne #0x589d30
00589d44  c0 ff ff ea                                      b #0x589c4c

; FUNCTION 0x0058b3cc, declared_size=192, range_size=192, mode=arm
; class-group: std::vector<glitch::scene::ISceneNode*, glitch::core::SAllocator<glitch::scene::ISceneNode*, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIPN6glitch5scene10ISceneNodeENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE18_M_insert_overflowEPS3_RKS3_RKSt11__true_typejb
; demangled: std::vector<glitch::scene::ISceneNode*, glitch::core::SAllocator<glitch::scene::ISceneNode*, (glitch::memory::E_MEMORY_HINT)0> >::_M_insert_overflow(glitch::scene::ISceneNode**, glitch::scene::ISceneNode* const&, std::__true_type const&, unsigned int, bool)
; decoder-mode: arm
0058b3cc  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
0058b3d0  28 60 9d e5                                      ldr r6, [sp, #0x28]
0058b3d4  01 90 a0 e1                                      mov sb, r1
0058b3d8  02 40 a0 e1                                      mov r4, r2
0058b3dc  06 10 a0 e1                                      mov r1, r6
0058b3e0  00 50 a0 e1                                      mov r5, r0
0058b3e4  2c b0 dd e5                                      ldrb fp, [sp, #0x2c]
0058b3e8  98 f9 ff eb                                      bl #0x589a50
0058b3ec  00 81 a0 e1                                      lsl r8, r0, #2
0058b3f0  00 10 a0 e3                                      mov r1, #0
0058b3f4  08 00 a0 e1                                      mov r0, r8
0058b3f8  5a 14 f6 eb                                      bl #0x310568
0058b3fc  00 10 95 e5                                      ldr r1, [r5]
0058b400  00 70 a0 e1                                      mov r7, r0
0058b404  01 a0 59 e0                                      subs sl, sb, r1
0058b408  00 00 a0 01                                      moveq r0, r0
0058b40c  02 00 00 0a                                      beq #0x58b41c
0058b410  0a 20 a0 e1                                      mov r2, sl
0058b414  c7 0a f6 eb                                      bl #0x30df38
0058b418  0a 00 80 e0                                      add r0, r0, sl
0058b41c  00 00 56 e3                                      cmp r6, #0
0058b420  00 a0 a0 e1                                      mov sl, r0
0058b424  07 00 00 0a                                      beq #0x58b448
0058b428  06 20 a0 e1                                      mov r2, r6
0058b42c  00 30 a0 e3                                      mov r3, #0
0058b430  00 10 94 e5                                      ldr r1, [r4]
0058b434  01 20 52 e2                                      subs r2, r2, #1
0058b438  03 10 80 e7                                      str r1, [r0, r3]
0058b43c  04 30 83 e2                                      add r3, r3, #4
0058b440  fa ff ff 1a                                      bne #0x58b430
0058b444  06 a1 80 e0                                      add sl, r0, r6, lsl #2
0058b448  00 00 5b e3                                      cmp fp, #0
0058b44c  05 00 00 0a                                      beq #0x58b468
0058b450  00 00 95 e5                                      ldr r0, [r5]
0058b454  08 80 87 e0                                      add r8, r7, r8
0058b458  fc 13 f6 eb                                      bl #0x310450
0058b45c  08 80 85 e5                                      str r8, [r5, #8]
0058b460  80 04 85 e8                                      stm r5, {r7, sl}
0058b464  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
0058b468  04 40 95 e5                                      ldr r4, [r5, #4]
0058b46c  09 40 54 e0                                      subs r4, r4, sb
0058b470  f6 ff ff 0a                                      beq #0x58b450
0058b474  0a 00 a0 e1                                      mov r0, sl
0058b478  09 10 a0 e1                                      mov r1, sb
0058b47c  04 20 a0 e1                                      mov r2, r4
0058b480  ac 0a f6 eb                                      bl #0x30df38
0058b484  04 a0 80 e0                                      add sl, r0, r4
0058b488  f0 ff ff ea                                      b #0x58b450

; FUNCTION 0x0058b48c, declared_size=84, range_size=84, mode=arm
; class-group: std::vector<glitch::scene::ISceneNode*, glitch::core::SAllocator<glitch::scene::ISceneNode*, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIPN6glitch5scene10ISceneNodeENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE14_M_fill_insertEPS3_jRKS3_
; demangled: std::vector<glitch::scene::ISceneNode*, glitch::core::SAllocator<glitch::scene::ISceneNode*, (glitch::memory::E_MEMORY_HINT)0> >::_M_fill_insert(glitch::scene::ISceneNode**, unsigned int, glitch::scene::ISceneNode* const&)
; decoder-mode: arm
0058b48c  30 40 2d e9                                      push {r4, r5, lr}
0058b490  00 40 52 e2                                      subs r4, r2, #0
0058b494  14 d0 4d e2                                      sub sp, sp, #0x14
0058b498  03 50 a0 e1                                      mov r5, r3
0058b49c  09 00 00 0a                                      beq #0x58b4c8
0058b4a0  04 e0 90 e5                                      ldr lr, [r0, #4]
0058b4a4  08 c0 90 e5                                      ldr ip, [r0, #8]
0058b4a8  0c c0 6e e0                                      rsb ip, lr, ip
0058b4ac  4c 01 54 e1                                      cmp r4, ip, asr #2
0058b4b0  06 00 00 9a                                      bls #0x58b4d0
0058b4b4  03 20 a0 e1                                      mov r2, r3
0058b4b8  00 c0 a0 e3                                      mov ip, #0
0058b4bc  08 30 8d e2                                      add r3, sp, #8
0058b4c0  10 10 8d e8                                      stm sp, {r4, ip}
0058b4c4  c0 ff ff eb                                      bl #0x58b3cc
0058b4c8  14 d0 8d e2                                      add sp, sp, #0x14
0058b4cc  30 80 bd e8                                      pop {r4, r5, pc}
0058b4d0  0c c0 8d e2                                      add ip, sp, #0xc
0058b4d4  00 c0 8d e5                                      str ip, [sp]
0058b4d8  c8 f9 ff eb                                      bl #0x589c00
0058b4dc  f9 ff ff ea                                      b #0x58b4c8

; FUNCTION 0x0058bd7c, declared_size=52, range_size=52, mode=arm
; class-group: std::vector<glitch::scene::ISceneNode*, glitch::core::SAllocator<glitch::scene::ISceneNode*, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIPN6glitch5scene10ISceneNodeENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE6resizeEjRKS3_.clone.5
; demangled: std::vector<glitch::scene::ISceneNode*, glitch::core::SAllocator<glitch::scene::ISceneNode*, (glitch::memory::E_MEMORY_HINT)0> >::resize(unsigned int, glitch::scene::ISceneNode* const&) [clone .clone.5]
; decoder-mode: arm
0058bd7c  30 00 2d e9                                      push {r4, r5}
0058bd80  30 00 90 e8                                      ldm r0, {r4, r5}
0058bd84  01 30 a0 e1                                      mov r3, r1
0058bd88  05 20 64 e0                                      rsb r2, r4, r5
0058bd8c  42 21 b0 e1                                      asrs r2, r2, #2
0058bd90  03 00 00 0a                                      beq #0x58bda4
0058bd94  04 00 55 e1                                      cmp r5, r4
0058bd98  04 40 80 15                                      strne r4, [r0, #4]
0058bd9c  30 00 bd e8                                      pop {r4, r5}
0058bda0  1e ff 2f e1                                      bx lr
0058bda4  05 10 a0 e1                                      mov r1, r5
0058bda8  30 00 bd e8                                      pop {r4, r5}
0058bdac  b6 fd ff ea                                      b #0x58b48c

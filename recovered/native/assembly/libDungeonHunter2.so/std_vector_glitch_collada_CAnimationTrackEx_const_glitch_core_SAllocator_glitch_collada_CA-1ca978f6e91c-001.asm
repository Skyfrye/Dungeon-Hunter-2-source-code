; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0062e500, declared_size=96, range_size=96, mode=arm
; class-group: std::vector<glitch::collada::CAnimationTrackEx const*, glitch::core::SAllocator<glitch::collada::CAnimationTrackEx const*, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIPKN6glitch7collada17CAnimationTrackExENS0_4core10SAllocatorIS4_LNS0_6memory13E_MEMORY_HINTE0EEEE20_M_compute_next_sizeEj
; demangled: std::vector<glitch::collada::CAnimationTrackEx const*, glitch::core::SAllocator<glitch::collada::CAnimationTrackEx const*, (glitch::memory::E_MEMORY_HINT)0> >::_M_compute_next_size(unsigned int)
; decoder-mode: arm
0062e500  70 40 2d e9                                      push {r4, r5, r6, lr}
0062e504  14 00 90 e8                                      ldm r0, {r2, r4}
0062e508  ff 3f 0f e3                                      movw r3, #0xffff
0062e50c  ff 3f 43 e3                                      movt r3, #0x3fff
0062e510  04 40 62 e0                                      rsb r4, r2, r4
0062e514  44 41 a0 e1                                      asr r4, r4, #2
0062e518  03 30 64 e0                                      rsb r3, r4, r3
0062e51c  01 00 53 e1                                      cmp r3, r1
0062e520  01 50 a0 e1                                      mov r5, r1
0062e524  08 00 00 3a                                      blo #0x62e54c
0062e528  05 00 54 e1                                      cmp r4, r5
0062e52c  04 00 84 20                                      addhs r0, r4, r4
0062e530  05 00 84 30                                      addlo r0, r4, r5
0062e534  07 01 70 e3                                      cmn r0, #0xc0000001
0062e538  01 00 00 8a                                      bhi #0x62e544
0062e53c  04 00 50 e1                                      cmp r0, r4
0062e540  00 00 00 2a                                      bhs #0x62e548
0062e544  03 01 e0 e3                                      mvn r0, #0xc0000000
0062e548  70 80 bd e8                                      pop {r4, r5, r6, pc}
0062e54c  08 00 9f e5                                      ldr r0, [pc, #8]
0062e550  00 00 8f e0                                      add r0, pc, r0
0062e554  39 6a 03 eb                                      bl #0x708e40
0062e558  f2 ff ff ea                                      b #0x62e528
; mapping-symbol data/literal pool
0062e55c  18 ff 28 00                                      .byte 0x18, 0xff, 0x28, 0x00

; FUNCTION 0x0062e8c0, declared_size=328, range_size=328, mode=arm
; class-group: std::vector<glitch::collada::CAnimationTrackEx const*, glitch::core::SAllocator<glitch::collada::CAnimationTrackEx const*, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIPKN6glitch7collada17CAnimationTrackExENS0_4core10SAllocatorIS4_LNS0_6memory13E_MEMORY_HINTE0EEEE18_M_fill_insert_auxEPS4_jRKS4_RKSt12__false_type
; demangled: std::vector<glitch::collada::CAnimationTrackEx const*, glitch::core::SAllocator<glitch::collada::CAnimationTrackEx const*, (glitch::memory::E_MEMORY_HINT)0> >::_M_fill_insert_aux(glitch::collada::CAnimationTrackEx const**, unsigned int, glitch::collada::CAnimationTrackEx const* const&, std::__false_type const&)
; decoder-mode: arm
0062e8c0  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0062e8c4  00 c0 90 e5                                      ldr ip, [r0]
0062e8c8  03 50 a0 e1                                      mov r5, r3
0062e8cc  14 d0 4d e2                                      sub sp, sp, #0x14
0062e8d0  0c 00 53 e1                                      cmp r3, ip
0062e8d4  00 40 a0 e1                                      mov r4, r0
0062e8d8  01 60 a0 e1                                      mov r6, r1
0062e8dc  02 30 a0 e1                                      mov r3, r2
0062e8e0  04 70 90 35                                      ldrlo r7, [r0, #4]
0062e8e4  0a 00 00 3a                                      blo #0x62e914
0062e8e8  04 70 90 e5                                      ldr r7, [r0, #4]
0062e8ec  07 00 55 e1                                      cmp r5, r7
0062e8f0  07 00 00 2a                                      bhs #0x62e914
0062e8f4  00 c0 95 e5                                      ldr ip, [r5]
0062e8f8  10 30 8d e2                                      add r3, sp, #0x10
0062e8fc  08 c0 23 e5                                      str ip, [r3, #-8]!
0062e900  0c c0 8d e2                                      add ip, sp, #0xc
0062e904  00 c0 8d e5                                      str ip, [sp]
0062e908  ec ff ff eb                                      bl #0x62e8c0
0062e90c  14 d0 8d e2                                      add sp, sp, #0x14
0062e910  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0062e914  07 20 66 e0                                      rsb r2, r6, r7
0062e918  42 81 a0 e1                                      asr r8, r2, #2
0062e91c  08 00 53 e1                                      cmp r3, r8
0062e920  1c 00 00 2a                                      bhs #0x62e998
0062e924  03 81 a0 e1                                      lsl r8, r3, #2
0062e928  07 30 68 e0                                      rsb r3, r8, r7
0062e92c  07 00 53 e1                                      cmp r3, r7
0062e930  07 a0 a0 01                                      moveq sl, r7
0062e934  05 00 00 0a                                      beq #0x62e950
0062e938  03 10 a0 e1                                      mov r1, r3
0062e93c  07 20 63 e0                                      rsb r2, r3, r7
0062e940  07 00 a0 e1                                      mov r0, r7
0062e944  03 a0 a0 e1                                      mov sl, r3
0062e948  c6 7f f3 eb                                      bl #0x30e868
0062e94c  04 30 94 e5                                      ldr r3, [r4, #4]
0062e950  0a 20 66 e0                                      rsb r2, r6, sl
0062e954  08 30 83 e0                                      add r3, r3, r8
0062e958  00 00 52 e3                                      cmp r2, #0
0062e95c  04 30 84 e5                                      str r3, [r4, #4]
0062e960  02 00 00 da                                      ble #0x62e970
0062e964  07 00 62 e0                                      rsb r0, r2, r7
0062e968  06 10 a0 e1                                      mov r1, r6
0062e96c  71 7d f3 eb                                      bl #0x30df38
0062e970  48 81 a0 e1                                      asr r8, r8, #2
0062e974  00 00 58 e3                                      cmp r8, #0
0062e978  e3 ff ff da                                      ble #0x62e90c
0062e97c  00 20 a0 e3                                      mov r2, #0
0062e980  00 10 95 e5                                      ldr r1, [r5]
0062e984  02 11 86 e7                                      str r1, [r6, r2, lsl #2]
0062e988  01 20 82 e2                                      add r2, r2, #1
0062e98c  08 00 52 e1                                      cmp r2, r8
0062e990  fa ff ff 1a                                      bne #0x62e980
0062e994  dc ff ff ea                                      b #0x62e90c
0062e998  03 30 68 e0                                      rsb r3, r8, r3
0062e99c  53 a0 bd e7                                      sbfx sl, r3, #0, #0x1e
0062e9a0  00 00 5a e3                                      cmp sl, #0
0062e9a4  03 01 87 e0                                      add r0, r7, r3, lsl #2
0062e9a8  05 00 00 da                                      ble #0x62e9c4
0062e9ac  00 10 a0 e3                                      mov r1, #0
0062e9b0  00 c0 95 e5                                      ldr ip, [r5]
0062e9b4  01 c1 87 e7                                      str ip, [r7, r1, lsl #2]
0062e9b8  01 10 81 e2                                      add r1, r1, #1
0062e9bc  0a 00 51 e1                                      cmp r1, sl
0062e9c0  fa ff ff 1a                                      bne #0x62e9b0
0062e9c4  07 00 56 e1                                      cmp r6, r7
0062e9c8  04 00 84 e5                                      str r0, [r4, #4]
0062e9cc  02 00 00 0a                                      beq #0x62e9dc
0062e9d0  06 10 a0 e1                                      mov r1, r6
0062e9d4  a3 7f f3 eb                                      bl #0x30e868
0062e9d8  04 00 94 e5                                      ldr r0, [r4, #4]
0062e9dc  08 01 80 e0                                      add r0, r0, r8, lsl #2
0062e9e0  00 00 58 e3                                      cmp r8, #0
0062e9e4  04 00 84 e5                                      str r0, [r4, #4]
0062e9e8  c7 ff ff da                                      ble #0x62e90c
0062e9ec  00 30 a0 e3                                      mov r3, #0
0062e9f0  00 20 95 e5                                      ldr r2, [r5]
0062e9f4  03 21 86 e7                                      str r2, [r6, r3, lsl #2]
0062e9f8  01 30 83 e2                                      add r3, r3, #1
0062e9fc  03 00 58 e1                                      cmp r8, r3
0062ea00  fa ff ff 1a                                      bne #0x62e9f0
0062ea04  c0 ff ff ea                                      b #0x62e90c

; FUNCTION 0x0062f240, declared_size=192, range_size=192, mode=arm
; class-group: std::vector<glitch::collada::CAnimationTrackEx const*, glitch::core::SAllocator<glitch::collada::CAnimationTrackEx const*, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIPKN6glitch7collada17CAnimationTrackExENS0_4core10SAllocatorIS4_LNS0_6memory13E_MEMORY_HINTE0EEEE18_M_insert_overflowEPS4_RKS4_RKSt11__true_typejb
; demangled: std::vector<glitch::collada::CAnimationTrackEx const*, glitch::core::SAllocator<glitch::collada::CAnimationTrackEx const*, (glitch::memory::E_MEMORY_HINT)0> >::_M_insert_overflow(glitch::collada::CAnimationTrackEx const**, glitch::collada::CAnimationTrackEx const* const&, std::__true_type const&, unsigned int, bool)
; decoder-mode: arm
0062f240  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
0062f244  28 60 9d e5                                      ldr r6, [sp, #0x28]
0062f248  01 90 a0 e1                                      mov sb, r1
0062f24c  02 40 a0 e1                                      mov r4, r2
0062f250  06 10 a0 e1                                      mov r1, r6
0062f254  00 50 a0 e1                                      mov r5, r0
0062f258  2c b0 dd e5                                      ldrb fp, [sp, #0x2c]
0062f25c  a7 fc ff eb                                      bl #0x62e500
0062f260  00 81 a0 e1                                      lsl r8, r0, #2
0062f264  00 10 a0 e3                                      mov r1, #0
0062f268  08 00 a0 e1                                      mov r0, r8
0062f26c  bd 84 f3 eb                                      bl #0x310568
0062f270  00 10 95 e5                                      ldr r1, [r5]
0062f274  00 70 a0 e1                                      mov r7, r0
0062f278  01 a0 59 e0                                      subs sl, sb, r1
0062f27c  00 00 a0 01                                      moveq r0, r0
0062f280  02 00 00 0a                                      beq #0x62f290
0062f284  0a 20 a0 e1                                      mov r2, sl
0062f288  2a 7b f3 eb                                      bl #0x30df38
0062f28c  0a 00 80 e0                                      add r0, r0, sl
0062f290  00 00 56 e3                                      cmp r6, #0
0062f294  00 a0 a0 e1                                      mov sl, r0
0062f298  07 00 00 0a                                      beq #0x62f2bc
0062f29c  06 20 a0 e1                                      mov r2, r6
0062f2a0  00 30 a0 e3                                      mov r3, #0
0062f2a4  00 10 94 e5                                      ldr r1, [r4]
0062f2a8  01 20 52 e2                                      subs r2, r2, #1
0062f2ac  03 10 80 e7                                      str r1, [r0, r3]
0062f2b0  04 30 83 e2                                      add r3, r3, #4
0062f2b4  fa ff ff 1a                                      bne #0x62f2a4
0062f2b8  06 a1 80 e0                                      add sl, r0, r6, lsl #2
0062f2bc  00 00 5b e3                                      cmp fp, #0
0062f2c0  05 00 00 0a                                      beq #0x62f2dc
0062f2c4  00 00 95 e5                                      ldr r0, [r5]
0062f2c8  08 80 87 e0                                      add r8, r7, r8
0062f2cc  5f 84 f3 eb                                      bl #0x310450
0062f2d0  08 80 85 e5                                      str r8, [r5, #8]
0062f2d4  80 04 85 e8                                      stm r5, {r7, sl}
0062f2d8  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
0062f2dc  04 40 95 e5                                      ldr r4, [r5, #4]
0062f2e0  09 40 54 e0                                      subs r4, r4, sb
0062f2e4  f6 ff ff 0a                                      beq #0x62f2c4
0062f2e8  0a 00 a0 e1                                      mov r0, sl
0062f2ec  09 10 a0 e1                                      mov r1, sb
0062f2f0  04 20 a0 e1                                      mov r2, r4
0062f2f4  0f 7b f3 eb                                      bl #0x30df38
0062f2f8  04 a0 80 e0                                      add sl, r0, r4
0062f2fc  f0 ff ff ea                                      b #0x62f2c4

; FUNCTION 0x0062f300, declared_size=84, range_size=84, mode=arm
; class-group: std::vector<glitch::collada::CAnimationTrackEx const*, glitch::core::SAllocator<glitch::collada::CAnimationTrackEx const*, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIPKN6glitch7collada17CAnimationTrackExENS0_4core10SAllocatorIS4_LNS0_6memory13E_MEMORY_HINTE0EEEE14_M_fill_insertEPS4_jRKS4_
; demangled: std::vector<glitch::collada::CAnimationTrackEx const*, glitch::core::SAllocator<glitch::collada::CAnimationTrackEx const*, (glitch::memory::E_MEMORY_HINT)0> >::_M_fill_insert(glitch::collada::CAnimationTrackEx const**, unsigned int, glitch::collada::CAnimationTrackEx const* const&)
; decoder-mode: arm
0062f300  30 40 2d e9                                      push {r4, r5, lr}
0062f304  00 40 52 e2                                      subs r4, r2, #0
0062f308  14 d0 4d e2                                      sub sp, sp, #0x14
0062f30c  03 50 a0 e1                                      mov r5, r3
0062f310  09 00 00 0a                                      beq #0x62f33c
0062f314  04 e0 90 e5                                      ldr lr, [r0, #4]
0062f318  08 c0 90 e5                                      ldr ip, [r0, #8]
0062f31c  0c c0 6e e0                                      rsb ip, lr, ip
0062f320  4c 01 54 e1                                      cmp r4, ip, asr #2
0062f324  06 00 00 9a                                      bls #0x62f344
0062f328  03 20 a0 e1                                      mov r2, r3
0062f32c  00 c0 a0 e3                                      mov ip, #0
0062f330  08 30 8d e2                                      add r3, sp, #8
0062f334  10 10 8d e8                                      stm sp, {r4, ip}
0062f338  c0 ff ff eb                                      bl #0x62f240
0062f33c  14 d0 8d e2                                      add sp, sp, #0x14
0062f340  30 80 bd e8                                      pop {r4, r5, pc}
0062f344  0c c0 8d e2                                      add ip, sp, #0xc
0062f348  00 c0 8d e5                                      str ip, [sp]
0062f34c  5b fd ff eb                                      bl #0x62e8c0
0062f350  f9 ff ff ea                                      b #0x62f33c

; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00561a10, declared_size=96, range_size=96, mode=arm
; class-group: std::vector<glitch::io::CAttributes::SContext*, glitch::core::SAllocator<glitch::io::CAttributes::SContext*, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIPN6glitch2io11CAttributes8SContextENS0_4core10SAllocatorIS4_LNS0_6memory13E_MEMORY_HINTE0EEEE20_M_compute_next_sizeEj
; demangled: std::vector<glitch::io::CAttributes::SContext*, glitch::core::SAllocator<glitch::io::CAttributes::SContext*, (glitch::memory::E_MEMORY_HINT)0> >::_M_compute_next_size(unsigned int)
; decoder-mode: arm
00561a10  70 40 2d e9                                      push {r4, r5, r6, lr}
00561a14  14 00 90 e8                                      ldm r0, {r2, r4}
00561a18  ff 3f 0f e3                                      movw r3, #0xffff
00561a1c  ff 3f 43 e3                                      movt r3, #0x3fff
00561a20  04 40 62 e0                                      rsb r4, r2, r4
00561a24  44 41 a0 e1                                      asr r4, r4, #2
00561a28  03 30 64 e0                                      rsb r3, r4, r3
00561a2c  01 00 53 e1                                      cmp r3, r1
00561a30  01 50 a0 e1                                      mov r5, r1
00561a34  08 00 00 3a                                      blo #0x561a5c
00561a38  05 00 54 e1                                      cmp r4, r5
00561a3c  04 00 84 20                                      addhs r0, r4, r4
00561a40  05 00 84 30                                      addlo r0, r4, r5
00561a44  07 01 70 e3                                      cmn r0, #0xc0000001
00561a48  01 00 00 8a                                      bhi #0x561a54
00561a4c  04 00 50 e1                                      cmp r0, r4
00561a50  00 00 00 2a                                      bhs #0x561a58
00561a54  03 01 e0 e3                                      mvn r0, #0xc0000000
00561a58  70 80 bd e8                                      pop {r4, r5, r6, pc}
00561a5c  08 00 9f e5                                      ldr r0, [pc, #8]
00561a60  00 00 8f e0                                      add r0, pc, r0
00561a64  f5 9c 06 eb                                      bl #0x708e40
00561a68  f2 ff ff ea                                      b #0x561a38
; mapping-symbol data/literal pool
00561a6c  08 ca 35 00                                      .byte 0x08, 0xca, 0x35, 0x00

; FUNCTION 0x005635d0, declared_size=192, range_size=192, mode=arm
; class-group: std::vector<glitch::io::CAttributes::SContext*, glitch::core::SAllocator<glitch::io::CAttributes::SContext*, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIPN6glitch2io11CAttributes8SContextENS0_4core10SAllocatorIS4_LNS0_6memory13E_MEMORY_HINTE0EEEE18_M_insert_overflowEPS4_RKS4_RKSt11__true_typejb
; demangled: std::vector<glitch::io::CAttributes::SContext*, glitch::core::SAllocator<glitch::io::CAttributes::SContext*, (glitch::memory::E_MEMORY_HINT)0> >::_M_insert_overflow(glitch::io::CAttributes::SContext**, glitch::io::CAttributes::SContext* const&, std::__true_type const&, unsigned int, bool)
; decoder-mode: arm
005635d0  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
005635d4  28 60 9d e5                                      ldr r6, [sp, #0x28]
005635d8  01 90 a0 e1                                      mov sb, r1
005635dc  02 40 a0 e1                                      mov r4, r2
005635e0  06 10 a0 e1                                      mov r1, r6
005635e4  00 50 a0 e1                                      mov r5, r0
005635e8  2c b0 dd e5                                      ldrb fp, [sp, #0x2c]
005635ec  07 f9 ff eb                                      bl #0x561a10
005635f0  00 81 a0 e1                                      lsl r8, r0, #2
005635f4  00 10 a0 e3                                      mov r1, #0
005635f8  08 00 a0 e1                                      mov r0, r8
005635fc  d9 b3 f6 eb                                      bl #0x310568
00563600  00 10 95 e5                                      ldr r1, [r5]
00563604  00 70 a0 e1                                      mov r7, r0
00563608  01 a0 59 e0                                      subs sl, sb, r1
0056360c  00 00 a0 01                                      moveq r0, r0
00563610  02 00 00 0a                                      beq #0x563620
00563614  0a 20 a0 e1                                      mov r2, sl
00563618  46 aa f6 eb                                      bl #0x30df38
0056361c  0a 00 80 e0                                      add r0, r0, sl
00563620  00 00 56 e3                                      cmp r6, #0
00563624  00 a0 a0 e1                                      mov sl, r0
00563628  07 00 00 0a                                      beq #0x56364c
0056362c  06 20 a0 e1                                      mov r2, r6
00563630  00 30 a0 e3                                      mov r3, #0
00563634  00 10 94 e5                                      ldr r1, [r4]
00563638  01 20 52 e2                                      subs r2, r2, #1
0056363c  03 10 80 e7                                      str r1, [r0, r3]
00563640  04 30 83 e2                                      add r3, r3, #4
00563644  fa ff ff 1a                                      bne #0x563634
00563648  06 a1 80 e0                                      add sl, r0, r6, lsl #2
0056364c  00 00 5b e3                                      cmp fp, #0
00563650  05 00 00 0a                                      beq #0x56366c
00563654  00 00 95 e5                                      ldr r0, [r5]
00563658  08 80 87 e0                                      add r8, r7, r8
0056365c  7b b3 f6 eb                                      bl #0x310450
00563660  08 80 85 e5                                      str r8, [r5, #8]
00563664  80 04 85 e8                                      stm r5, {r7, sl}
00563668  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
0056366c  04 40 95 e5                                      ldr r4, [r5, #4]
00563670  09 40 54 e0                                      subs r4, r4, sb
00563674  f6 ff ff 0a                                      beq #0x563654
00563678  0a 00 a0 e1                                      mov r0, sl
0056367c  09 10 a0 e1                                      mov r1, sb
00563680  04 20 a0 e1                                      mov r2, r4
00563684  2b aa f6 eb                                      bl #0x30df38
00563688  04 a0 80 e0                                      add sl, r0, r4
0056368c  f0 ff ff ea                                      b #0x563654

; FUNCTION 0x005638b8, declared_size=328, range_size=328, mode=arm
; class-group: std::vector<glitch::io::CAttributes::SContext*, glitch::core::SAllocator<glitch::io::CAttributes::SContext*, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIPN6glitch2io11CAttributes8SContextENS0_4core10SAllocatorIS4_LNS0_6memory13E_MEMORY_HINTE0EEEE18_M_fill_insert_auxEPS4_jRKS4_RKSt12__false_type
; demangled: std::vector<glitch::io::CAttributes::SContext*, glitch::core::SAllocator<glitch::io::CAttributes::SContext*, (glitch::memory::E_MEMORY_HINT)0> >::_M_fill_insert_aux(glitch::io::CAttributes::SContext**, unsigned int, glitch::io::CAttributes::SContext* const&, std::__false_type const&)
; decoder-mode: arm
005638b8  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
005638bc  00 c0 90 e5                                      ldr ip, [r0]
005638c0  03 50 a0 e1                                      mov r5, r3
005638c4  14 d0 4d e2                                      sub sp, sp, #0x14
005638c8  0c 00 53 e1                                      cmp r3, ip
005638cc  00 40 a0 e1                                      mov r4, r0
005638d0  01 60 a0 e1                                      mov r6, r1
005638d4  02 30 a0 e1                                      mov r3, r2
005638d8  04 70 90 35                                      ldrlo r7, [r0, #4]
005638dc  02 00 00 3a                                      blo #0x5638ec
005638e0  04 70 90 e5                                      ldr r7, [r0, #4]
005638e4  07 00 55 e1                                      cmp r5, r7
005638e8  20 00 00 3a                                      blo #0x563970
005638ec  07 20 66 e0                                      rsb r2, r6, r7
005638f0  42 81 a0 e1                                      asr r8, r2, #2
005638f4  08 00 53 e1                                      cmp r3, r8
005638f8  23 00 00 3a                                      blo #0x56398c
005638fc  03 30 68 e0                                      rsb r3, r8, r3
00563900  53 a0 bd e7                                      sbfx sl, r3, #0, #0x1e
00563904  00 00 5a e3                                      cmp sl, #0
00563908  03 01 87 e0                                      add r0, r7, r3, lsl #2
0056390c  05 00 00 da                                      ble #0x563928
00563910  00 10 a0 e3                                      mov r1, #0
00563914  00 c0 95 e5                                      ldr ip, [r5]
00563918  01 c1 87 e7                                      str ip, [r7, r1, lsl #2]
0056391c  01 10 81 e2                                      add r1, r1, #1
00563920  0a 00 51 e1                                      cmp r1, sl
00563924  fa ff ff 1a                                      bne #0x563914
00563928  07 00 56 e1                                      cmp r6, r7
0056392c  04 00 84 e5                                      str r0, [r4, #4]
00563930  02 00 00 0a                                      beq #0x563940
00563934  06 10 a0 e1                                      mov r1, r6
00563938  ca ab f6 eb                                      bl #0x30e868
0056393c  04 00 94 e5                                      ldr r0, [r4, #4]
00563940  08 01 80 e0                                      add r0, r0, r8, lsl #2
00563944  00 00 58 e3                                      cmp r8, #0
00563948  04 00 84 e5                                      str r0, [r4, #4]
0056394c  05 00 00 da                                      ble #0x563968
00563950  00 30 a0 e3                                      mov r3, #0
00563954  00 20 95 e5                                      ldr r2, [r5]
00563958  03 21 86 e7                                      str r2, [r6, r3, lsl #2]
0056395c  01 30 83 e2                                      add r3, r3, #1
00563960  03 00 58 e1                                      cmp r8, r3
00563964  fa ff ff 1a                                      bne #0x563954
00563968  14 d0 8d e2                                      add sp, sp, #0x14
0056396c  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00563970  00 c0 95 e5                                      ldr ip, [r5]
00563974  10 30 8d e2                                      add r3, sp, #0x10
00563978  08 c0 23 e5                                      str ip, [r3, #-8]!
0056397c  0c c0 8d e2                                      add ip, sp, #0xc
00563980  00 c0 8d e5                                      str ip, [sp]
00563984  cb ff ff eb                                      bl #0x5638b8
00563988  f6 ff ff ea                                      b #0x563968
0056398c  03 81 a0 e1                                      lsl r8, r3, #2
00563990  07 30 68 e0                                      rsb r3, r8, r7
00563994  07 00 53 e1                                      cmp r3, r7
00563998  07 a0 a0 01                                      moveq sl, r7
0056399c  05 00 00 0a                                      beq #0x5639b8
005639a0  03 10 a0 e1                                      mov r1, r3
005639a4  07 20 63 e0                                      rsb r2, r3, r7
005639a8  07 00 a0 e1                                      mov r0, r7
005639ac  03 a0 a0 e1                                      mov sl, r3
005639b0  ac ab f6 eb                                      bl #0x30e868
005639b4  04 30 94 e5                                      ldr r3, [r4, #4]
005639b8  0a 20 66 e0                                      rsb r2, r6, sl
005639bc  08 30 83 e0                                      add r3, r3, r8
005639c0  00 00 52 e3                                      cmp r2, #0
005639c4  04 30 84 e5                                      str r3, [r4, #4]
005639c8  02 00 00 da                                      ble #0x5639d8
005639cc  07 00 62 e0                                      rsb r0, r2, r7
005639d0  06 10 a0 e1                                      mov r1, r6
005639d4  57 a9 f6 eb                                      bl #0x30df38
005639d8  48 81 a0 e1                                      asr r8, r8, #2
005639dc  00 00 58 e3                                      cmp r8, #0
005639e0  e0 ff ff da                                      ble #0x563968
005639e4  00 20 a0 e3                                      mov r2, #0
005639e8  00 10 95 e5                                      ldr r1, [r5]
005639ec  02 11 86 e7                                      str r1, [r6, r2, lsl #2]
005639f0  01 20 82 e2                                      add r2, r2, #1
005639f4  08 00 52 e1                                      cmp r2, r8
005639f8  fa ff ff 1a                                      bne #0x5639e8
005639fc  d9 ff ff ea                                      b #0x563968

; FUNCTION 0x00563a00, declared_size=84, range_size=84, mode=arm
; class-group: std::vector<glitch::io::CAttributes::SContext*, glitch::core::SAllocator<glitch::io::CAttributes::SContext*, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIPN6glitch2io11CAttributes8SContextENS0_4core10SAllocatorIS4_LNS0_6memory13E_MEMORY_HINTE0EEEE14_M_fill_insertEPS4_jRKS4_
; demangled: std::vector<glitch::io::CAttributes::SContext*, glitch::core::SAllocator<glitch::io::CAttributes::SContext*, (glitch::memory::E_MEMORY_HINT)0> >::_M_fill_insert(glitch::io::CAttributes::SContext**, unsigned int, glitch::io::CAttributes::SContext* const&)
; decoder-mode: arm
00563a00  30 40 2d e9                                      push {r4, r5, lr}
00563a04  00 40 52 e2                                      subs r4, r2, #0
00563a08  14 d0 4d e2                                      sub sp, sp, #0x14
00563a0c  03 50 a0 e1                                      mov r5, r3
00563a10  09 00 00 0a                                      beq #0x563a3c
00563a14  04 e0 90 e5                                      ldr lr, [r0, #4]
00563a18  08 c0 90 e5                                      ldr ip, [r0, #8]
00563a1c  0c c0 6e e0                                      rsb ip, lr, ip
00563a20  4c 01 54 e1                                      cmp r4, ip, asr #2
00563a24  06 00 00 9a                                      bls #0x563a44
00563a28  03 20 a0 e1                                      mov r2, r3
00563a2c  00 c0 a0 e3                                      mov ip, #0
00563a30  08 30 8d e2                                      add r3, sp, #8
00563a34  10 10 8d e8                                      stm sp, {r4, ip}
00563a38  e4 fe ff eb                                      bl #0x5635d0
00563a3c  14 d0 8d e2                                      add sp, sp, #0x14
00563a40  30 80 bd e8                                      pop {r4, r5, pc}
00563a44  0c c0 8d e2                                      add ip, sp, #0xc
00563a48  00 c0 8d e5                                      str ip, [sp]
00563a4c  99 ff ff eb                                      bl #0x5638b8
00563a50  f9 ff ff ea                                      b #0x563a3c

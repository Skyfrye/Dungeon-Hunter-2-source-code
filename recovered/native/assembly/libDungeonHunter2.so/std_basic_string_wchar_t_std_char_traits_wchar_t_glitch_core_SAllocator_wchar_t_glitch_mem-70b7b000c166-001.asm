; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00561e1c, declared_size=124, range_size=124, mode=arm
; class-group: std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >* std::priv
; alias: _ZNSt4priv6__copyIPKSbIwSt11char_traitsIwEN6glitch4core10SAllocatorIwLNS3_6memory13E_MEMORY_HINTE0EEEEPS9_iEET0_T_SE_SD_RKSt26random_access_iterator_tagPT1_
; demangled: std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >* std::priv::__copy<std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> > const*, std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >*, int>(std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> > const*, std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> > const*, std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >*, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
00561e1c  01 30 60 e0                                      rsb r3, r0, r1
00561e20  c3 31 a0 e1                                      asr r3, r3, #3
00561e24  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00561e28  02 70 a0 e1                                      mov r7, r2
00561e2c  83 21 a0 e1                                      lsl r2, r3, #3
00561e30  02 20 63 e0                                      rsb r2, r3, r2
00561e34  02 23 82 e0                                      add r2, r2, r2, lsl #6
00561e38  00 40 a0 e1                                      mov r4, r0
00561e3c  82 21 83 e0                                      add r2, r3, r2, lsl #3
00561e40  82 87 a0 e1                                      lsl r8, r2, #0xf
00561e44  08 80 62 e0                                      rsb r8, r2, r8
00561e48  88 81 83 e0                                      add r8, r3, r8, lsl #3
00561e4c  00 00 58 e3                                      cmp r8, #0
00561e50  0e 00 00 da                                      ble #0x561e90
00561e54  07 50 a0 e1                                      mov r5, r7
00561e58  08 60 a0 e1                                      mov r6, r8
00561e5c  00 00 00 ea                                      b #0x561e64
00561e60  48 40 84 e2                                      add r4, r4, #0x48
00561e64  04 00 55 e1                                      cmp r5, r4
00561e68  05 00 a0 e1                                      mov r0, r5
00561e6c  02 00 00 0a                                      beq #0x561e7c
00561e70  44 10 94 e5                                      ldr r1, [r4, #0x44]
00561e74  40 20 94 e5                                      ldr r2, [r4, #0x40]
00561e78  c8 04 f7 eb                                      bl #0x3231a0
00561e7c  01 60 56 e2                                      subs r6, r6, #1
00561e80  48 50 85 e2                                      add r5, r5, #0x48
00561e84  f5 ff ff 1a                                      bne #0x561e60
00561e88  48 30 a0 e3                                      mov r3, #0x48
00561e8c  93 78 27 e0                                      mla r7, r3, r8, r7
00561e90  07 00 a0 e1                                      mov r0, r7
00561e94  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00562dfc, declared_size=128, range_size=128, mode=arm
; class-group: std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >* std::priv
; alias: _ZNSt4priv7__ucopyIPKSbIwSt11char_traitsIwEN6glitch4core10SAllocatorIwLNS3_6memory13E_MEMORY_HINTE0EEEEPS9_iEET0_T_SE_SD_RKSt26random_access_iterator_tagPT1_
; demangled: std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >* std::priv::__ucopy<std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> > const*, std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >*, int>(std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> > const*, std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> > const*, std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >*, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
00562dfc  01 30 60 e0                                      rsb r3, r0, r1
00562e00  c3 31 a0 e1                                      asr r3, r3, #3
00562e04  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00562e08  02 80 a0 e1                                      mov r8, r2
00562e0c  83 21 a0 e1                                      lsl r2, r3, #3
00562e10  02 20 63 e0                                      rsb r2, r3, r2
00562e14  02 23 82 e0                                      add r2, r2, r2, lsl #6
00562e18  00 50 a0 e1                                      mov r5, r0
00562e1c  82 21 83 e0                                      add r2, r3, r2, lsl #3
00562e20  82 77 a0 e1                                      lsl r7, r2, #0xf
00562e24  07 70 62 e0                                      rsb r7, r2, r7
00562e28  87 71 83 e0                                      add r7, r3, r7, lsl #3
00562e2c  00 00 57 e3                                      cmp r7, #0
00562e30  07 60 a0 c1                                      movgt r6, r7
00562e34  08 40 a0 c1                                      movgt r4, r8
00562e38  01 00 00 ca                                      bgt #0x562e44
00562e3c  0c 00 00 ea                                      b #0x562e74
00562e40  48 50 85 e2                                      add r5, r5, #0x48
00562e44  40 40 84 e5                                      str r4, [r4, #0x40]
00562e48  44 40 84 e5                                      str r4, [r4, #0x44]
00562e4c  04 00 a0 e1                                      mov r0, r4
00562e50  44 10 95 e5                                      ldr r1, [r5, #0x44]
00562e54  40 20 95 e5                                      ldr r2, [r5, #0x40]
00562e58  f3 0b f7 eb                                      bl #0x325e2c
00562e5c  01 60 56 e2                                      subs r6, r6, #1
00562e60  48 40 84 e2                                      add r4, r4, #0x48
00562e64  f5 ff ff 1a                                      bne #0x562e40
00562e68  48 00 a0 e3                                      mov r0, #0x48
00562e6c  90 87 20 e0                                      mla r0, r0, r7, r8
00562e70  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00562e74  08 00 a0 e1                                      mov r0, r8
00562e78  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00570dd0, declared_size=232, range_size=232, mode=arm
; class-group: std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >* std::priv
; alias: _ZNSt4priv20__uninitialized_moveIPSbIwSt11char_traitsIwEN6glitch4core10SAllocatorIwLNS3_6memory13E_MEMORY_HINTE0EEEESA_St12__false_typeEET0_T_SD_SC_T1_RKSt11__true_type
; demangled: std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >* std::priv::__uninitialized_move<std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >*, std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >*, std::__false_type>(std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >*, std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >*, std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >*, std::__false_type, std::__true_type const&)
; decoder-mode: arm
00570dd0  01 30 60 e0                                      rsb r3, r0, r1
00570dd4  c3 31 a0 e1                                      asr r3, r3, #3
00570dd8  f0 07 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl}
00570ddc  02 a0 a0 e1                                      mov sl, r2
00570de0  83 21 a0 e1                                      lsl r2, r3, #3
00570de4  02 20 63 e0                                      rsb r2, r3, r2
00570de8  02 23 82 e0                                      add r2, r2, r2, lsl #6
00570dec  00 c0 a0 e1                                      mov ip, r0
00570df0  82 21 83 e0                                      add r2, r3, r2, lsl #3
00570df4  82 97 a0 e1                                      lsl sb, r2, #0xf
00570df8  09 90 62 e0                                      rsb sb, r2, sb
00570dfc  89 91 83 e0                                      add sb, r3, sb, lsl #3
00570e00  00 00 59 e3                                      cmp sb, #0
00570e04  28 00 00 da                                      ble #0x570eac
00570e08  0a 40 a0 e1                                      mov r4, sl
00570e0c  09 50 a0 e1                                      mov r5, sb
00570e10  00 70 a0 e3                                      mov r7, #0
00570e14  09 00 00 ea                                      b #0x570e40
00570e18  44 30 84 e5                                      str r3, [r4, #0x44]
00570e1c  40 30 9c e5                                      ldr r3, [ip, #0x40]
00570e20  01 50 55 e2                                      subs r5, r5, #1
00570e24  40 30 84 e5                                      str r3, [r4, #0x40]
00570e28  00 30 9c e5                                      ldr r3, [ip]
00570e2c  00 30 84 e5                                      str r3, [r4]
00570e30  44 70 8c e5                                      str r7, [ip, #0x44]
00570e34  48 40 84 e2                                      add r4, r4, #0x48
00570e38  19 00 00 0a                                      beq #0x570ea4
00570e3c  48 c0 8c e2                                      add ip, ip, #0x48
00570e40  44 30 9c e5                                      ldr r3, [ip, #0x44]
00570e44  44 30 84 e5                                      str r3, [r4, #0x44]
00570e48  44 30 9c e5                                      ldr r3, [ip, #0x44]
00570e4c  0c 00 53 e1                                      cmp r3, ip
00570e50  f0 ff ff 1a                                      bne #0x570e18
00570e54  04 60 a0 e1                                      mov r6, r4
00570e58  0c 80 a0 e1                                      mov r8, ip
00570e5c  0f 00 b8 e8                                      ldm r8!, {r0, r1, r2, r3}
00570e60  0f 00 a6 e8                                      stm r6!, {r0, r1, r2, r3}
00570e64  0f 00 b8 e8                                      ldm r8!, {r0, r1, r2, r3}
00570e68  0f 00 a6 e8                                      stm r6!, {r0, r1, r2, r3}
00570e6c  0f 00 b8 e8                                      ldm r8!, {r0, r1, r2, r3}
00570e70  0f 00 a6 e8                                      stm r6!, {r0, r1, r2, r3}
00570e74  0f 00 98 e8                                      ldm r8, {r0, r1, r2, r3}
00570e78  0f 00 86 e8                                      stm r6, {r0, r1, r2, r3}
00570e7c  40 20 9c e5                                      ldr r2, [ip, #0x40]
00570e80  44 30 9c e5                                      ldr r3, [ip, #0x44]
00570e84  01 50 55 e2                                      subs r5, r5, #1
00570e88  44 40 84 e5                                      str r4, [r4, #0x44]
00570e8c  02 30 63 e0                                      rsb r3, r3, r2
00570e90  03 30 c3 e3                                      bic r3, r3, #3
00570e94  03 30 84 e0                                      add r3, r4, r3
00570e98  40 30 84 e5                                      str r3, [r4, #0x40]
00570e9c  48 40 84 e2                                      add r4, r4, #0x48
00570ea0  e5 ff ff 1a                                      bne #0x570e3c
00570ea4  48 30 a0 e3                                      mov r3, #0x48
00570ea8  93 a9 2a e0                                      mla sl, r3, sb, sl
00570eac  0a 00 a0 e1                                      mov r0, sl
00570eb0  f0 07 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl}
00570eb4  1e ff 2f e1                                      bx lr

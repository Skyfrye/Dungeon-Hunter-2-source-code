; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00562d24, declared_size=108, range_size=108, mode=arm
; class-group: std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >* std::vector<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >, glitch::core::SAllocator<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorISbIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS2_6memory13E_MEMORY_HINTE0EEEENS4_IS8_LS6_0EEEE20_M_allocate_and_copyIPS8_EESC_RjT_SE_
; demangled: std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >* std::vector<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >, glitch::core::SAllocator<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >, (glitch::memory::E_MEMORY_HINT)0> >::_M_allocate_and_copy<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >*>(unsigned int&, std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >*, std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >*)
; decoder-mode: arm
00562d24  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00562d28  00 10 91 e5                                      ldr r1, [r1]
00562d2c  18 00 a0 e3                                      mov r0, #0x18
00562d30  03 60 a0 e1                                      mov r6, r3
00562d34  90 01 00 e0                                      mul r0, r0, r1
00562d38  00 10 a0 e3                                      mov r1, #0
00562d3c  02 40 a0 e1                                      mov r4, r2
00562d40  08 b6 f6 eb                                      bl #0x310568
00562d44  06 60 64 e0                                      rsb r6, r4, r6
00562d48  c6 31 a0 e1                                      asr r3, r6, #3
00562d4c  00 70 a0 e1                                      mov r7, r0
00562d50  03 61 83 e0                                      add r6, r3, r3, lsl #2
00562d54  06 62 86 e0                                      add r6, r6, r6, lsl #4
00562d58  06 64 86 e0                                      add r6, r6, r6, lsl #8
00562d5c  06 68 86 e0                                      add r6, r6, r6, lsl #16
00562d60  86 60 83 e0                                      add r6, r3, r6, lsl #1
00562d64  00 00 56 e3                                      cmp r6, #0
00562d68  06 00 00 da                                      ble #0x562d88
00562d6c  00 50 a0 e3                                      mov r5, #0
00562d70  05 00 87 e0                                      add r0, r7, r5
00562d74  05 10 84 e0                                      add r1, r4, r5
00562d78  da ff ff eb                                      bl #0x562ce8
00562d7c  01 60 56 e2                                      subs r6, r6, #1
00562d80  18 50 85 e2                                      add r5, r5, #0x18
00562d84  f9 ff ff 1a                                      bne #0x562d70
00562d88  07 00 a0 e1                                      mov r0, r7
00562d8c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00562d90, declared_size=108, range_size=108, mode=arm
; class-group: std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >* std::vector<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >, glitch::core::SAllocator<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorISbIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS2_6memory13E_MEMORY_HINTE0EEEENS4_IS8_LS6_0EEEE20_M_allocate_and_copyIPKS8_EEPS8_RjT_SG_
; demangled: std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >* std::vector<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >, glitch::core::SAllocator<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >, (glitch::memory::E_MEMORY_HINT)0> >::_M_allocate_and_copy<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const*>(unsigned int&, std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const*, std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const*)
; decoder-mode: arm
00562d90  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00562d94  00 10 91 e5                                      ldr r1, [r1]
00562d98  18 00 a0 e3                                      mov r0, #0x18
00562d9c  03 60 a0 e1                                      mov r6, r3
00562da0  90 01 00 e0                                      mul r0, r0, r1
00562da4  00 10 a0 e3                                      mov r1, #0
00562da8  02 40 a0 e1                                      mov r4, r2
00562dac  ed b5 f6 eb                                      bl #0x310568
00562db0  06 60 64 e0                                      rsb r6, r4, r6
00562db4  c6 31 a0 e1                                      asr r3, r6, #3
00562db8  00 70 a0 e1                                      mov r7, r0
00562dbc  03 61 83 e0                                      add r6, r3, r3, lsl #2
00562dc0  06 62 86 e0                                      add r6, r6, r6, lsl #4
00562dc4  06 64 86 e0                                      add r6, r6, r6, lsl #8
00562dc8  06 68 86 e0                                      add r6, r6, r6, lsl #16
00562dcc  86 60 83 e0                                      add r6, r3, r6, lsl #1
00562dd0  00 00 56 e3                                      cmp r6, #0
00562dd4  06 00 00 da                                      ble #0x562df4
00562dd8  00 50 a0 e3                                      mov r5, #0
00562ddc  05 00 87 e0                                      add r0, r7, r5
00562de0  05 10 84 e0                                      add r1, r4, r5
00562de4  bf ff ff eb                                      bl #0x562ce8
00562de8  01 60 56 e2                                      subs r6, r6, #1
00562dec  18 50 85 e2                                      add r5, r5, #0x18
00562df0  f9 ff ff 1a                                      bne #0x562ddc
00562df4  07 00 a0 e1                                      mov r0, r7
00562df8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

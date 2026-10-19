; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0034e324, declared_size=112, range_size=112, mode=arm
; class-group: std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > std
; alias: _ZStplIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS2_6memory13E_MEMORY_HINTE0EEEESbIT_T0_T1_ERKSB_SD_
; demangled: std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > std::operator+<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >(std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const&, std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const&)
; decoder-mode: arm
0034e324  70 40 2d e9                                      push {r4, r5, r6, lr}
0034e328  02 50 a0 e1                                      mov r5, r2
0034e32c  10 c0 91 e5                                      ldr ip, [r1, #0x10]
0034e330  10 20 92 e5                                      ldr r2, [r2, #0x10]
0034e334  14 30 95 e5                                      ldr r3, [r5, #0x14]
0034e338  01 60 a0 e1                                      mov r6, r1
0034e33c  14 10 91 e5                                      ldr r1, [r1, #0x14]
0034e340  02 30 63 e0                                      rsb r3, r3, r2
0034e344  00 40 a0 e1                                      mov r4, r0
0034e348  0c 10 61 e0                                      rsb r1, r1, ip
0034e34c  03 10 81 e0                                      add r1, r1, r3
0034e350  10 00 84 e5                                      str r0, [r4, #0x10]
0034e354  14 00 84 e5                                      str r0, [r4, #0x14]
0034e358  01 10 81 e2                                      add r1, r1, #1
0034e35c  91 49 ff eb                                      bl #0x3209a8
0034e360  10 30 94 e5                                      ldr r3, [r4, #0x10]
0034e364  00 20 a0 e3                                      mov r2, #0
0034e368  04 00 a0 e1                                      mov r0, r4
0034e36c  00 20 c3 e5                                      strb r2, [r3]
0034e370  10 20 96 e5                                      ldr r2, [r6, #0x10]
0034e374  14 10 96 e5                                      ldr r1, [r6, #0x14]
0034e378  b3 49 ff eb                                      bl #0x320a4c
0034e37c  04 00 a0 e1                                      mov r0, r4
0034e380  10 20 95 e5                                      ldr r2, [r5, #0x10]
0034e384  14 10 95 e5                                      ldr r1, [r5, #0x14]
0034e388  af 49 ff eb                                      bl #0x320a4c
0034e38c  04 00 a0 e1                                      mov r0, r4
0034e390  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0034e394, declared_size=128, range_size=128, mode=arm
; class-group: std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > std
; alias: _ZStplIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS2_6memory13E_MEMORY_HINTE0EEEESbIT_T0_T1_EPKS8_RKSB_
; demangled: std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > std::operator+<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >(char const*, std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const&)
; decoder-mode: arm
0034e394  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0034e398  00 40 a0 e1                                      mov r4, r0
0034e39c  0c d0 4d e2                                      sub sp, sp, #0xc
0034e3a0  01 00 a0 e1                                      mov r0, r1
0034e3a4  02 50 a0 e1                                      mov r5, r2
0034e3a8  01 60 a0 e1                                      mov r6, r1
0034e3ac  a8 fe fe eb                                      bl #0x30de54
0034e3b0  14 30 95 e5                                      ldr r3, [r5, #0x14]
0034e3b4  10 10 95 e5                                      ldr r1, [r5, #0x10]
0034e3b8  00 70 a0 e1                                      mov r7, r0
0034e3bc  10 40 84 e5                                      str r4, [r4, #0x10]
0034e3c0  01 10 63 e0                                      rsb r1, r3, r1
0034e3c4  01 10 81 e2                                      add r1, r1, #1
0034e3c8  00 10 81 e0                                      add r1, r1, r0
0034e3cc  14 40 84 e5                                      str r4, [r4, #0x14]
0034e3d0  04 00 a0 e1                                      mov r0, r4
0034e3d4  73 49 ff eb                                      bl #0x3209a8
0034e3d8  10 30 94 e5                                      ldr r3, [r4, #0x10]
0034e3dc  00 20 a0 e3                                      mov r2, #0
0034e3e0  06 10 a0 e1                                      mov r1, r6
0034e3e4  00 20 c3 e5                                      strb r2, [r3]
0034e3e8  04 00 a0 e1                                      mov r0, r4
0034e3ec  07 20 86 e0                                      add r2, r6, r7
0034e3f0  04 30 8d e2                                      add r3, sp, #4
0034e3f4  88 ff ff eb                                      bl #0x34e21c
0034e3f8  04 00 a0 e1                                      mov r0, r4
0034e3fc  10 20 95 e5                                      ldr r2, [r5, #0x10]
0034e400  14 10 95 e5                                      ldr r1, [r5, #0x14]
0034e404  90 49 ff eb                                      bl #0x320a4c
0034e408  04 00 a0 e1                                      mov r0, r4
0034e40c  0c d0 8d e2                                      add sp, sp, #0xc
0034e410  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x0056d8b0, declared_size=128, range_size=128, mode=arm
; class-group: std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > std
; alias: _ZStplIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS2_6memory13E_MEMORY_HINTE0EEEESbIT_T0_T1_ERKSB_PKS8_
; demangled: std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > std::operator+<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >(std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const&, char const*)
; decoder-mode: arm
0056d8b0  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0056d8b4  00 40 a0 e1                                      mov r4, r0
0056d8b8  0c d0 4d e2                                      sub sp, sp, #0xc
0056d8bc  02 00 a0 e1                                      mov r0, r2
0056d8c0  02 70 a0 e1                                      mov r7, r2
0056d8c4  01 50 a0 e1                                      mov r5, r1
0056d8c8  61 81 f6 eb                                      bl #0x30de54
0056d8cc  14 30 95 e5                                      ldr r3, [r5, #0x14]
0056d8d0  10 10 95 e5                                      ldr r1, [r5, #0x10]
0056d8d4  00 60 a0 e1                                      mov r6, r0
0056d8d8  10 40 84 e5                                      str r4, [r4, #0x10]
0056d8dc  01 10 63 e0                                      rsb r1, r3, r1
0056d8e0  01 10 81 e2                                      add r1, r1, #1
0056d8e4  00 10 81 e0                                      add r1, r1, r0
0056d8e8  14 40 84 e5                                      str r4, [r4, #0x14]
0056d8ec  04 00 a0 e1                                      mov r0, r4
0056d8f0  2c cc f6 eb                                      bl #0x3209a8
0056d8f4  10 30 94 e5                                      ldr r3, [r4, #0x10]
0056d8f8  00 20 a0 e3                                      mov r2, #0
0056d8fc  04 00 a0 e1                                      mov r0, r4
0056d900  00 20 c3 e5                                      strb r2, [r3]
0056d904  10 20 95 e5                                      ldr r2, [r5, #0x10]
0056d908  14 10 95 e5                                      ldr r1, [r5, #0x14]
0056d90c  4e cc f6 eb                                      bl #0x320a4c
0056d910  04 00 a0 e1                                      mov r0, r4
0056d914  07 10 a0 e1                                      mov r1, r7
0056d918  06 20 87 e0                                      add r2, r7, r6
0056d91c  04 30 8d e2                                      add r3, sp, #4
0056d920  3d 82 f7 eb                                      bl #0x34e21c
0056d924  04 00 a0 e1                                      mov r0, r4
0056d928  0c d0 8d e2                                      add sp, sp, #0xc
0056d92c  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

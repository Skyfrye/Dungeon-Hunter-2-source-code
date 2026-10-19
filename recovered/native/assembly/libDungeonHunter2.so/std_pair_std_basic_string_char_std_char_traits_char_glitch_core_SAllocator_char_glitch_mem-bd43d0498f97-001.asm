; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0056c36c, declared_size=64, range_size=64, mode=arm
; class-group: std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > >
; alias: _ZNSt4pairIKSbIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS2_6memory13E_MEMORY_HINTE0EEEES8_EC1ERS9_SB_
; demangled: std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > >::pair(std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const&, std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const&)
; decoder-mode: arm
0056c36c  70 40 2d e9                                      push {r4, r5, r6, lr}
0056c370  00 40 a0 e1                                      mov r4, r0
0056c374  10 00 84 e5                                      str r0, [r4, #0x10]
0056c378  14 00 84 e5                                      str r0, [r4, #0x14]
0056c37c  02 50 a0 e1                                      mov r5, r2
0056c380  10 20 91 e5                                      ldr r2, [r1, #0x10]
0056c384  14 10 91 e5                                      ldr r1, [r1, #0x14]
0056c388  19 e7 f6 eb                                      bl #0x325ff4
0056c38c  18 00 84 e2                                      add r0, r4, #0x18
0056c390  28 00 84 e5                                      str r0, [r4, #0x28]
0056c394  2c 00 84 e5                                      str r0, [r4, #0x2c]
0056c398  10 20 95 e5                                      ldr r2, [r5, #0x10]
0056c39c  14 10 95 e5                                      ldr r1, [r5, #0x14]
0056c3a0  13 e7 f6 eb                                      bl #0x325ff4
0056c3a4  04 00 a0 e1                                      mov r0, r4
0056c3a8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0056c3ac, declared_size=64, range_size=64, mode=arm
; class-group: std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > >
; alias: _ZNSt4pairIKSbIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS2_6memory13E_MEMORY_HINTE0EEEES8_EC1ERKSA_
; demangled: std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > >::pair(std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > > const&)
; decoder-mode: arm
0056c3ac  70 40 2d e9                                      push {r4, r5, r6, lr}
0056c3b0  00 40 a0 e1                                      mov r4, r0
0056c3b4  01 50 a0 e1                                      mov r5, r1
0056c3b8  10 00 84 e5                                      str r0, [r4, #0x10]
0056c3bc  14 00 84 e5                                      str r0, [r4, #0x14]
0056c3c0  10 20 95 e5                                      ldr r2, [r5, #0x10]
0056c3c4  14 10 91 e5                                      ldr r1, [r1, #0x14]
0056c3c8  09 e7 f6 eb                                      bl #0x325ff4
0056c3cc  18 00 84 e2                                      add r0, r4, #0x18
0056c3d0  28 00 84 e5                                      str r0, [r4, #0x28]
0056c3d4  2c 00 84 e5                                      str r0, [r4, #0x2c]
0056c3d8  28 20 95 e5                                      ldr r2, [r5, #0x28]
0056c3dc  2c 10 95 e5                                      ldr r1, [r5, #0x2c]
0056c3e0  03 e7 f6 eb                                      bl #0x325ff4
0056c3e4  04 00 a0 e1                                      mov r0, r4
0056c3e8  70 80 bd e8                                      pop {r4, r5, r6, pc}

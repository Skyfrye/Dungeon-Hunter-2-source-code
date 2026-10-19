; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0056d0d4, declared_size=52, range_size=52, mode=arm
; class-group: std::map<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >, std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >, std::less<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > >, glitch::core::SAllocator<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > >, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt3mapISbIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS2_6memory13E_MEMORY_HINTE0EEEES8_St4lessIS8_ENS4_ISt4pairIKS8_S8_ELS6_0EEEED1Ev
; demangled: std::map<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >, std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >, std::less<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > >, glitch::core::SAllocator<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > >, (glitch::memory::E_MEMORY_HINT)0> >::~map()
; decoder-mode: arm
0056d0d4  10 40 2d e9                                      push {r4, lr}
0056d0d8  10 30 90 e5                                      ldr r3, [r0, #0x10]
0056d0dc  00 40 a0 e1                                      mov r4, r0
0056d0e0  00 00 53 e3                                      cmp r3, #0
0056d0e4  05 00 00 0a                                      beq #0x56d100
0056d0e8  04 10 90 e5                                      ldr r1, [r0, #4]
0056d0ec  db ff ff eb                                      bl #0x56d060
0056d0f0  00 30 a0 e3                                      mov r3, #0
0056d0f4  10 30 84 e5                                      str r3, [r4, #0x10]
0056d0f8  18 00 84 e9                                      stmib r4, {r3, r4}
0056d0fc  0c 40 84 e5                                      str r4, [r4, #0xc]
0056d100  04 00 a0 e1                                      mov r0, r4
0056d104  10 80 bd e8                                      pop {r4, pc}

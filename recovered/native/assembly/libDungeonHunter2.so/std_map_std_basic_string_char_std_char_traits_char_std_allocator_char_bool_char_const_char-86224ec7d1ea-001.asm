; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004227f0, declared_size=52, range_size=52, mode=arm
; class-group: std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, bool (*)(char const*, char const*, void*), std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool (*)(char const*, char const*, void*)> > >
; alias: _ZNSt3mapISsPFbPKcS1_PvESt4lessISsESaISt4pairIKSsS4_EEED1Ev
; demangled: std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, bool (*)(char const*, char const*, void*), std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool (*)(char const*, char const*, void*)> > >::~map()
; decoder-mode: arm
004227f0  10 40 2d e9                                      push {r4, lr}
004227f4  10 30 90 e5                                      ldr r3, [r0, #0x10]
004227f8  00 40 a0 e1                                      mov r4, r0
004227fc  00 00 53 e3                                      cmp r3, #0
00422800  05 00 00 0a                                      beq #0x42281c
00422804  04 10 90 e5                                      ldr r1, [r0, #4]
00422808  e8 ff ff eb                                      bl #0x4227b0
0042280c  00 30 a0 e3                                      mov r3, #0
00422810  10 30 84 e5                                      str r3, [r4, #0x10]
00422814  18 00 84 e9                                      stmib r4, {r3, r4}
00422818  0c 40 84 e5                                      str r4, [r4, #0xc]
0042281c  04 00 a0 e1                                      mov r0, r4
00422820  10 80 bd e8                                      pop {r4, pc}

; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00802438, declared_size=52, range_size=52, mode=arm
; class-group: std::map<unsigned int, std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<unsigned int>, std::allocator<std::pair<unsigned int const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > > >
; alias: _ZNSt3mapIjSsSt4lessIjESaISt4pairIKjSsEEED1Ev
; demangled: std::map<unsigned int, std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<unsigned int>, std::allocator<std::pair<unsigned int const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > > >::~map()
; decoder-mode: arm
00802438  10 40 2d e9                                      push {r4, lr}
0080243c  10 30 90 e5                                      ldr r3, [r0, #0x10]
00802440  00 40 a0 e1                                      mov r4, r0
00802444  00 00 53 e3                                      cmp r3, #0
00802448  05 00 00 0a                                      beq #0x802464
0080244c  04 10 90 e5                                      ldr r1, [r0, #4]
00802450  49 e6 ed eb                                      bl #0x37bd7c
00802454  00 30 a0 e3                                      mov r3, #0
00802458  10 30 84 e5                                      str r3, [r4, #0x10]
0080245c  18 00 84 e9                                      stmib r4, {r3, r4}
00802460  0c 40 84 e5                                      str r4, [r4, #0xc]
00802464  04 00 a0 e1                                      mov r0, r4
00802468  10 80 bd e8                                      pop {r4, pc}

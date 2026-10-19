; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003183cc, declared_size=64, range_size=64, mode=arm
; class-group: std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > >
; alias: _ZNSt4pairIKSsSsEC1ERS0_S2_
; demangled: std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > >::pair(std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&)
; decoder-mode: arm
003183cc  70 40 2d e9                                      push {r4, r5, r6, lr}
003183d0  00 40 a0 e1                                      mov r4, r0
003183d4  10 00 84 e5                                      str r0, [r4, #0x10]
003183d8  14 00 84 e5                                      str r0, [r4, #0x14]
003183dc  02 50 a0 e1                                      mov r5, r2
003183e0  10 20 91 e5                                      ldr r2, [r1, #0x10]
003183e4  14 10 91 e5                                      ldr r1, [r1, #0x14]
003183e8  be e4 ff eb                                      bl #0x3116e8
003183ec  18 00 84 e2                                      add r0, r4, #0x18
003183f0  28 00 84 e5                                      str r0, [r4, #0x28]
003183f4  2c 00 84 e5                                      str r0, [r4, #0x2c]
003183f8  10 20 95 e5                                      ldr r2, [r5, #0x10]
003183fc  14 10 95 e5                                      ldr r1, [r5, #0x14]
00318400  b8 e4 ff eb                                      bl #0x3116e8
00318404  04 00 a0 e1                                      mov r0, r4
00318408  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0031840c, declared_size=64, range_size=64, mode=arm
; class-group: std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > >
; alias: _ZNSt4pairIKSsSsEC1ERKS1_
; demangled: std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > >::pair(std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > const&)
; decoder-mode: arm
0031840c  70 40 2d e9                                      push {r4, r5, r6, lr}
00318410  00 40 a0 e1                                      mov r4, r0
00318414  01 50 a0 e1                                      mov r5, r1
00318418  10 00 84 e5                                      str r0, [r4, #0x10]
0031841c  14 00 84 e5                                      str r0, [r4, #0x14]
00318420  10 20 95 e5                                      ldr r2, [r5, #0x10]
00318424  14 10 91 e5                                      ldr r1, [r1, #0x14]
00318428  ae e4 ff eb                                      bl #0x3116e8
0031842c  18 00 84 e2                                      add r0, r4, #0x18
00318430  28 00 84 e5                                      str r0, [r4, #0x28]
00318434  2c 00 84 e5                                      str r0, [r4, #0x2c]
00318438  28 20 95 e5                                      ldr r2, [r5, #0x28]
0031843c  2c 10 95 e5                                      ldr r1, [r5, #0x2c]
00318440  a8 e4 ff eb                                      bl #0x3116e8
00318444  04 00 a0 e1                                      mov r0, r4
00318448  70 80 bd e8                                      pop {r4, r5, r6, pc}

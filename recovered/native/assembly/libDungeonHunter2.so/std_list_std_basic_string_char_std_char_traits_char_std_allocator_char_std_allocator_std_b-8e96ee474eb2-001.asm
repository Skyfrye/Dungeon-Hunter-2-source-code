; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00499974, declared_size=68, range_size=68, mode=arm
; class-group: std::list<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::allocator<std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >
; alias: _ZNSt4listISsSaISsEE14_M_create_nodeERKSs
; demangled: std::list<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::allocator<std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::_M_create_node(std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&)
; decoder-mode: arm
00499974  30 40 2d e9                                      push {r4, r5, lr}
00499978  0c d0 4d e2                                      sub sp, sp, #0xc
0049997c  20 30 a0 e3                                      mov r3, #0x20
00499980  08 00 8d e2                                      add r0, sp, #8
00499984  04 30 20 e5                                      str r3, [r0, #-4]!
00499988  01 50 a0 e1                                      mov r5, r1
0049998c  4b bd 09 eb                                      bl #0x708ec0
00499990  00 40 a0 e1                                      mov r4, r0
00499994  08 00 80 e2                                      add r0, r0, #8
00499998  18 00 84 e5                                      str r0, [r4, #0x18]
0049999c  1c 00 84 e5                                      str r0, [r4, #0x1c]
004999a0  10 20 95 e5                                      ldr r2, [r5, #0x10]
004999a4  14 10 95 e5                                      ldr r1, [r5, #0x14]
004999a8  4e df f9 eb                                      bl #0x3116e8
004999ac  04 00 a0 e1                                      mov r0, r4
004999b0  0c d0 8d e2                                      add sp, sp, #0xc
004999b4  30 80 bd e8                                      pop {r4, r5, pc}

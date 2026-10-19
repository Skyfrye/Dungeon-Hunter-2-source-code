; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00510d20, declared_size=88, range_size=88, mode=arm
; class-group: std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > > > >
; alias: _ZNSt4pairIKSsSt3mapISsS1_ISsP8PropertySt4lessISsESaIS_IS0_S3_EEES5_SaIS_IS0_S8_EEEED1Ev
; demangled: std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > > > >::~pair()
; decoder-mode: arm
00510d20  70 40 2d e9                                      push {r4, r5, r6, lr}
00510d24  28 30 90 e5                                      ldr r3, [r0, #0x28]
00510d28  00 40 a0 e1                                      mov r4, r0
00510d2c  00 00 53 e3                                      cmp r3, #0
00510d30  03 00 00 1a                                      bne #0x510d44
00510d34  04 00 a0 e1                                      mov r0, r4
00510d38  45 1d f8 eb                                      bl #0x318254
00510d3c  04 00 a0 e1                                      mov r0, r4
00510d40  70 80 bd e8                                      pop {r4, r5, r6, pc}
00510d44  18 50 80 e2                                      add r5, r0, #0x18
00510d48  05 00 a0 e1                                      mov r0, r5
00510d4c  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
00510d50  e2 ff ff eb                                      bl #0x510ce0
00510d54  00 30 a0 e3                                      mov r3, #0
00510d58  24 50 84 e5                                      str r5, [r4, #0x24]
00510d5c  28 30 84 e5                                      str r3, [r4, #0x28]
00510d60  20 50 84 e5                                      str r5, [r4, #0x20]
00510d64  1c 30 84 e5                                      str r3, [r4, #0x1c]
00510d68  04 00 a0 e1                                      mov r0, r4
00510d6c  38 1d f8 eb                                      bl #0x318254
00510d70  04 00 a0 e1                                      mov r0, r4
00510d74  70 80 bd e8                                      pop {r4, r5, r6, pc}

; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c41c0, declared_size=88, range_size=88, mode=arm
; class-group: std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> > > >
; alias: _ZNSt4pairIKSsSt3mapISsiSt4lessISsESaIS_IS0_iEEEED1Ev
; demangled: std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> > > >::~pair()
; decoder-mode: arm
004c41c0  70 40 2d e9                                      push {r4, r5, r6, lr}
004c41c4  28 30 90 e5                                      ldr r3, [r0, #0x28]
004c41c8  00 40 a0 e1                                      mov r4, r0
004c41cc  00 00 53 e3                                      cmp r3, #0
004c41d0  03 00 00 1a                                      bne #0x4c41e4
004c41d4  04 00 a0 e1                                      mov r0, r4
004c41d8  1d 50 f9 eb                                      bl #0x318254
004c41dc  04 00 a0 e1                                      mov r0, r4
004c41e0  70 80 bd e8                                      pop {r4, r5, r6, pc}
004c41e4  18 50 80 e2                                      add r5, r0, #0x18
004c41e8  05 00 a0 e1                                      mov r0, r5
004c41ec  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
004c41f0  52 b6 fc eb                                      bl #0x3f1b40
004c41f4  00 30 a0 e3                                      mov r3, #0
004c41f8  24 50 84 e5                                      str r5, [r4, #0x24]
004c41fc  28 30 84 e5                                      str r3, [r4, #0x28]
004c4200  20 50 84 e5                                      str r5, [r4, #0x20]
004c4204  1c 30 84 e5                                      str r3, [r4, #0x1c]
004c4208  04 00 a0 e1                                      mov r0, r4
004c420c  10 50 f9 eb                                      bl #0x318254
004c4210  04 00 a0 e1                                      mov r0, r4
004c4214  70 80 bd e8                                      pop {r4, r5, r6, pc}

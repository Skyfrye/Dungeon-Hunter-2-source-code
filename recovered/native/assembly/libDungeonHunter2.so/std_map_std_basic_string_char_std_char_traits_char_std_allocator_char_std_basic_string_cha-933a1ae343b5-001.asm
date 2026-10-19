; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0082ea78, declared_size=52, range_size=52, mode=arm
; class-group: std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > > >
; alias: _ZNSt3mapISsSsSt4lessISsESaISt4pairIKSsSsEEED1Ev
; demangled: std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > > >::~map()
; decoder-mode: arm
0082ea78  10 40 2d e9                                      push {r4, lr}
0082ea7c  10 30 90 e5                                      ldr r3, [r0, #0x10]
0082ea80  00 40 a0 e1                                      mov r4, r0
0082ea84  00 00 53 e3                                      cmp r3, #0
0082ea88  05 00 00 0a                                      beq #0x82eaa4
0082ea8c  04 10 90 e5                                      ldr r1, [r0, #4]
0082ea90  8b a5 eb eb                                      bl #0x3180c4
0082ea94  00 30 a0 e3                                      mov r3, #0
0082ea98  10 30 84 e5                                      str r3, [r4, #0x10]
0082ea9c  18 00 84 e9                                      stmib r4, {r3, r4}
0082eaa0  0c 40 84 e5                                      str r4, [r4, #0xc]
0082eaa4  04 00 a0 e1                                      mov r0, r4
0082eaa8  10 80 bd e8                                      pop {r4, pc}

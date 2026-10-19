; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00510c98, declared_size=72, range_size=72, mode=arm
; class-group: std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > >
; alias: _ZNSt4pairIKSsSt3mapISsP8PropertySt4lessISsESaIS_IS0_S3_EEEED1Ev
; demangled: std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > >::~pair()
; decoder-mode: arm
00510c98  70 40 2d e9                                      push {r4, r5, r6, lr}
00510c9c  28 30 90 e5                                      ldr r3, [r0, #0x28]
00510ca0  00 40 a0 e1                                      mov r4, r0
00510ca4  00 00 53 e3                                      cmp r3, #0
00510ca8  08 00 00 0a                                      beq #0x510cd0
00510cac  18 50 80 e2                                      add r5, r0, #0x18
00510cb0  05 00 a0 e1                                      mov r0, r5
00510cb4  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
00510cb8  e6 ff ff eb                                      bl #0x510c58
00510cbc  00 30 a0 e3                                      mov r3, #0
00510cc0  24 50 84 e5                                      str r5, [r4, #0x24]
00510cc4  28 30 84 e5                                      str r3, [r4, #0x28]
00510cc8  20 50 84 e5                                      str r5, [r4, #0x20]
00510ccc  1c 30 84 e5                                      str r3, [r4, #0x1c]
00510cd0  04 00 a0 e1                                      mov r0, r4
00510cd4  5e 1d f8 eb                                      bl #0x318254
00510cd8  04 00 a0 e1                                      mov r0, r4
00510cdc  70 80 bd e8                                      pop {r4, r5, r6, pc}

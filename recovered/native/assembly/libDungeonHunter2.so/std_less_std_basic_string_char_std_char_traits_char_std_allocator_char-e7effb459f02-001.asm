; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00313bf8, declared_size=80, range_size=80, mode=arm
; class-group: std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >
; alias: _ZNKSt4lessISsEclERKSsS2_
; demangled: std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >::operator()(std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&) const
; decoder-mode: arm
00313bf8  70 40 2d e9                                      push {r4, r5, r6, lr}
00313bfc  14 00 91 e5                                      ldr r0, [r1, #0x14]
00313c00  10 50 91 e5                                      ldr r5, [r1, #0x10]
00313c04  10 40 92 e5                                      ldr r4, [r2, #0x10]
00313c08  14 10 92 e5                                      ldr r1, [r2, #0x14]
00313c0c  05 50 60 e0                                      rsb r5, r0, r5
00313c10  04 40 61 e0                                      rsb r4, r1, r4
00313c14  05 00 54 e1                                      cmp r4, r5
00313c18  04 20 a0 b1                                      movlt r2, r4
00313c1c  05 20 a0 a1                                      movge r2, r5
00313c20  6e ea ff eb                                      bl #0x30e5e0
00313c24  00 00 50 e3                                      cmp r0, #0
00313c28  04 00 00 1a                                      bne #0x313c40
00313c2c  04 00 55 e1                                      cmp r5, r4
00313c30  00 00 e0 b3                                      mvnlt r0, #0
00313c34  01 00 00 ba                                      blt #0x313c40
00313c38  00 00 a0 d3                                      movle r0, #0
00313c3c  01 00 a0 c3                                      movgt r0, #1
00313c40  a0 0f a0 e1                                      lsr r0, r0, #0x1f
00313c44  70 80 bd e8                                      pop {r4, r5, r6, pc}

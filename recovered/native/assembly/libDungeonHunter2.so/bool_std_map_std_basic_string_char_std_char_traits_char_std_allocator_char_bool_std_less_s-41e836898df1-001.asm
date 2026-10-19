; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00337288, declared_size=380, range_size=380, mode=arm
; class-group: bool& std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, bool, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool> > >
; alias: _ZNSt3mapISsbSt4lessISsESaISt4pairIKSsbEEEixISsEERbRKT_
; demangled: bool& std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, bool, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool> > >::operator[]<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >(std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&)
; decoder-mode: arm
00337288  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0033728c  68 51 9f e5                                      ldr r5, [pc, #0x168]
00337290  68 21 9f e5                                      ldr r2, [pc, #0x168]
00337294  34 d0 4d e2                                      sub sp, sp, #0x34
00337298  05 50 8f e0                                      add r5, pc, r5
0033729c  02 30 95 e7                                      ldr r3, [r5, r2]
003372a0  04 20 8d e5                                      str r2, [sp, #4]
003372a4  04 40 90 e5                                      ldr r4, [r0, #4]
003372a8  00 30 93 e5                                      ldr r3, [r3]
003372ac  00 90 a0 e1                                      mov sb, r0
003372b0  00 00 54 e3                                      cmp r4, #0
003372b4  2c 30 8d e5                                      str r3, [sp, #0x2c]
003372b8  4a 00 00 0a                                      beq #0x3373e8
003372bc  10 b0 91 e5                                      ldr fp, [r1, #0x10]
003372c0  14 a0 91 e5                                      ldr sl, [r1, #0x14]
003372c4  00 80 a0 e1                                      mov r8, r0
003372c8  0b 70 6a e0                                      rsb r7, sl, fp
003372cc  24 30 94 e5                                      ldr r3, [r4, #0x24]
003372d0  20 60 94 e5                                      ldr r6, [r4, #0x20]
003372d4  0a 10 a0 e1                                      mov r1, sl
003372d8  03 00 a0 e1                                      mov r0, r3
003372dc  06 60 63 e0                                      rsb r6, r3, r6
003372e0  06 00 57 e1                                      cmp r7, r6
003372e4  07 20 a0 b1                                      movlt r2, r7
003372e8  06 20 a0 a1                                      movge r2, r6
003372ec  bb 5c ff eb                                      bl #0x30e5e0
003372f0  00 00 50 e3                                      cmp r0, #0
003372f4  07 00 00 1a                                      bne #0x337318
003372f8  07 00 56 e1                                      cmp r6, r7
003372fc  06 00 00 ba                                      blt #0x33731c
00337300  08 30 94 e5                                      ldr r3, [r4, #8]
00337304  00 00 53 e3                                      cmp r3, #0
00337308  07 00 00 0a                                      beq #0x33732c
0033730c  04 80 a0 e1                                      mov r8, r4
00337310  03 40 a0 e1                                      mov r4, r3
00337314  ec ff ff ea                                      b #0x3372cc
00337318  f8 ff ff aa                                      bge #0x337300
0033731c  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00337320  08 40 a0 e1                                      mov r4, r8
00337324  00 00 53 e3                                      cmp r3, #0
00337328  f7 ff ff 1a                                      bne #0x33730c
0033732c  04 00 59 e1                                      cmp sb, r4
00337330  0e 00 00 0a                                      beq #0x337370
00337334  24 30 94 e5                                      ldr r3, [r4, #0x24]
00337338  20 70 94 e5                                      ldr r7, [r4, #0x20]
0033733c  0b 60 6a e0                                      rsb r6, sl, fp
00337340  03 10 a0 e1                                      mov r1, r3
00337344  07 70 63 e0                                      rsb r7, r3, r7
00337348  06 00 57 e1                                      cmp r7, r6
0033734c  07 20 a0 b1                                      movlt r2, r7
00337350  06 20 a0 a1                                      movge r2, r6
00337354  0a 00 a0 e1                                      mov r0, sl
00337358  a0 5c ff eb                                      bl #0x30e5e0
0033735c  00 00 50 e3                                      cmp r0, #0
00337360  04 00 a0 e1                                      mov r0, r4
00337364  1d 00 00 1a                                      bne #0x3373e0
00337368  07 00 56 e1                                      cmp r6, r7
0033736c  12 00 00 aa                                      bge #0x3373bc
00337370  10 60 8d e2                                      add r6, sp, #0x10
00337374  0a 10 a0 e1                                      mov r1, sl
00337378  0b 20 a0 e1                                      mov r2, fp
0033737c  06 00 a0 e1                                      mov r0, r6
00337380  20 60 8d e5                                      str r6, [sp, #0x20]
00337384  24 60 8d e5                                      str r6, [sp, #0x24]
00337388  d6 68 ff eb                                      bl #0x3116e8
0033738c  00 c0 a0 e3                                      mov ip, #0
00337390  09 10 a0 e1                                      mov r1, sb
00337394  0c 00 8d e2                                      add r0, sp, #0xc
00337398  08 20 8d e2                                      add r2, sp, #8
0033739c  06 30 a0 e1                                      mov r3, r6
003373a0  28 c0 cd e5                                      strb ip, [sp, #0x28]
003373a4  08 40 8d e5                                      str r4, [sp, #8]
003373a8  75 fe ff eb                                      bl #0x336d84
003373ac  0c 40 9d e5                                      ldr r4, [sp, #0xc]
003373b0  06 00 a0 e1                                      mov r0, r6
003373b4  a6 83 ff eb                                      bl #0x318254
003373b8  04 00 a0 e1                                      mov r0, r4
003373bc  04 20 9d e5                                      ldr r2, [sp, #4]
003373c0  28 00 80 e2                                      add r0, r0, #0x28
003373c4  02 30 95 e7                                      ldr r3, [r5, r2]
003373c8  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
003373cc  00 30 93 e5                                      ldr r3, [r3]
003373d0  03 00 52 e1                                      cmp r2, r3
003373d4  07 00 00 1a                                      bne #0x3373f8
003373d8  34 d0 8d e2                                      add sp, sp, #0x34
003373dc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
003373e0  e2 ff ff ba                                      blt #0x337370
003373e4  f4 ff ff ea                                      b #0x3373bc
003373e8  10 b0 91 e5                                      ldr fp, [r1, #0x10]
003373ec  14 a0 91 e5                                      ldr sl, [r1, #0x14]
003373f0  00 40 a0 e1                                      mov r4, r0
003373f4  cc ff ff ea                                      b #0x33732c
003373f8  c4 5b ff eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003373fc  f8 d7 65 00 ac 40 00 00                          .byte 0xf8, 0xd7, 0x65, 0x00, 0xac, 0x40, 0x00, 0x00

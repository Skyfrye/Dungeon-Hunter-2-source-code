; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00465da0, declared_size=340, range_size=340, mode=arm
; class-group: std::basic_string<char, std::char_traits<char>, std::allocator<char> > const& std::priv
; alias: _ZNSt4priv8__medianISsSt4lessISsEEERKT_S5_S5_S5_T0_
; demangled: std::basic_string<char, std::char_traits<char>, std::allocator<char> > const& std::priv::__median<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >(std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >)
; decoder-mode: arm
00465da0  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
00465da4  14 70 90 e5                                      ldr r7, [r0, #0x14]
00465da8  14 60 91 e5                                      ldr r6, [r1, #0x14]
00465dac  10 50 90 e5                                      ldr r5, [r0, #0x10]
00465db0  10 90 91 e5                                      ldr sb, [r1, #0x10]
00465db4  00 a0 a0 e1                                      mov sl, r0
00465db8  05 50 67 e0                                      rsb r5, r7, r5
00465dbc  09 90 66 e0                                      rsb sb, r6, sb
00465dc0  01 40 a0 e1                                      mov r4, r1
00465dc4  02 80 a0 e1                                      mov r8, r2
00465dc8  07 00 a0 e1                                      mov r0, r7
00465dcc  05 00 59 e1                                      cmp sb, r5
00465dd0  09 20 a0 b1                                      movlt r2, sb
00465dd4  05 20 a0 a1                                      movge r2, r5
00465dd8  06 10 a0 e1                                      mov r1, r6
00465ddc  ff a1 fa eb                                      bl #0x30e5e0
00465de0  00 00 50 e3                                      cmp r0, #0
00465de4  1a 00 00 1a                                      bne #0x465e54
00465de8  09 00 55 e1                                      cmp r5, sb
00465dec  19 00 00 ba                                      blt #0x465e58
00465df0  14 b0 98 e5                                      ldr fp, [r8, #0x14]
00465df4  10 30 98 e5                                      ldr r3, [r8, #0x10]
00465df8  07 00 a0 e1                                      mov r0, r7
00465dfc  0b 10 a0 e1                                      mov r1, fp
00465e00  03 70 6b e0                                      rsb r7, fp, r3
00465e04  07 00 55 e1                                      cmp r5, r7
00465e08  05 20 a0 b1                                      movlt r2, r5
00465e0c  07 20 a0 a1                                      movge r2, r7
00465e10  f2 a1 fa eb                                      bl #0x30e5e0
00465e14  00 00 50 e3                                      cmp r0, #0
00465e18  2b 00 00 1a                                      bne #0x465ecc
00465e1c  07 00 55 e1                                      cmp r5, r7
00465e20  23 00 00 ba                                      blt #0x465eb4
00465e24  07 00 59 e1                                      cmp sb, r7
00465e28  09 20 a0 b1                                      movlt r2, sb
00465e2c  07 20 a0 a1                                      movge r2, r7
00465e30  06 00 a0 e1                                      mov r0, r6
00465e34  0b 10 a0 e1                                      mov r1, fp
00465e38  e8 a1 fa eb                                      bl #0x30e5e0
00465e3c  00 00 50 e3                                      cmp r0, #0
00465e40  24 00 00 1a                                      bne #0x465ed8
00465e44  07 00 59 e1                                      cmp sb, r7
00465e48  23 00 00 ba                                      blt #0x465edc
00465e4c  04 00 a0 e1                                      mov r0, r4
00465e50  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
00465e54  e5 ff ff aa                                      bge #0x465df0
00465e58  14 b0 98 e5                                      ldr fp, [r8, #0x14]
00465e5c  10 30 98 e5                                      ldr r3, [r8, #0x10]
00465e60  06 00 a0 e1                                      mov r0, r6
00465e64  0b 10 a0 e1                                      mov r1, fp
00465e68  03 60 6b e0                                      rsb r6, fp, r3
00465e6c  06 00 59 e1                                      cmp sb, r6
00465e70  09 20 a0 b1                                      movlt r2, sb
00465e74  06 20 a0 a1                                      movge r2, r6
00465e78  d8 a1 fa eb                                      bl #0x30e5e0
00465e7c  00 00 50 e3                                      cmp r0, #0
00465e80  0e 00 00 1a                                      bne #0x465ec0
00465e84  06 00 59 e1                                      cmp sb, r6
00465e88  ef ff ff ba                                      blt #0x465e4c
00465e8c  06 00 55 e1                                      cmp r5, r6
00465e90  05 20 a0 b1                                      movlt r2, r5
00465e94  06 20 a0 a1                                      movge r2, r6
00465e98  07 00 a0 e1                                      mov r0, r7
00465e9c  0b 10 a0 e1                                      mov r1, fp
00465ea0  ce a1 fa eb                                      bl #0x30e5e0
00465ea4  00 00 50 e3                                      cmp r0, #0
00465ea8  0e 00 00 1a                                      bne #0x465ee8
00465eac  06 00 55 e1                                      cmp r5, r6
00465eb0  09 00 00 ba                                      blt #0x465edc
00465eb4  0a 40 a0 e1                                      mov r4, sl
00465eb8  04 00 a0 e1                                      mov r0, r4
00465ebc  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
00465ec0  f1 ff ff aa                                      bge #0x465e8c
00465ec4  04 00 a0 e1                                      mov r0, r4
00465ec8  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
00465ecc  d4 ff ff aa                                      bge #0x465e24
00465ed0  0a 40 a0 e1                                      mov r4, sl
00465ed4  f7 ff ff ea                                      b #0x465eb8
00465ed8  db ff ff aa                                      bge #0x465e4c
00465edc  08 40 a0 e1                                      mov r4, r8
00465ee0  04 00 a0 e1                                      mov r0, r4
00465ee4  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
00465ee8  f1 ff ff aa                                      bge #0x465eb4
00465eec  08 40 a0 e1                                      mov r4, r8
00465ef0  fa ff ff ea                                      b #0x465ee0

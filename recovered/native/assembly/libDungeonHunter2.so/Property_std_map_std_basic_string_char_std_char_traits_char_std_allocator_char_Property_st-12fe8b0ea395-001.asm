; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00512b74, declared_size=364, range_size=364, mode=arm
; class-group: Property*& std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > >
; alias: _ZNSt3mapISsP8PropertySt4lessISsESaISt4pairIKSsS1_EEEixISsEERS1_RKT_
; demangled: Property*& std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > >::operator[]<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >(std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&)
; decoder-mode: arm
00512b74  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00512b78  58 91 9f e5                                      ldr sb, [pc, #0x158]
00512b7c  58 21 9f e5                                      ldr r2, [pc, #0x158]
00512b80  34 d0 4d e2                                      sub sp, sp, #0x34
00512b84  09 90 8f e0                                      add sb, pc, sb
00512b88  02 30 99 e7                                      ldr r3, [sb, r2]
00512b8c  04 20 8d e5                                      str r2, [sp, #4]
00512b90  04 40 90 e5                                      ldr r4, [r0, #4]
00512b94  00 30 93 e5                                      ldr r3, [r3]
00512b98  00 b0 a0 e1                                      mov fp, r0
00512b9c  00 00 54 e3                                      cmp r4, #0
00512ba0  01 a0 a0 e1                                      mov sl, r1
00512ba4  2c 30 8d e5                                      str r3, [sp, #0x2c]
00512ba8  00 40 a0 01                                      moveq r4, r0
00512bac  1b 00 00 0a                                      beq #0x512c20
00512bb0  14 80 91 e5                                      ldr r8, [r1, #0x14]
00512bb4  10 60 91 e5                                      ldr r6, [r1, #0x10]
00512bb8  00 70 a0 e1                                      mov r7, r0
00512bbc  06 60 68 e0                                      rsb r6, r8, r6
00512bc0  24 30 94 e5                                      ldr r3, [r4, #0x24]
00512bc4  20 50 94 e5                                      ldr r5, [r4, #0x20]
00512bc8  08 10 a0 e1                                      mov r1, r8
00512bcc  03 00 a0 e1                                      mov r0, r3
00512bd0  05 50 63 e0                                      rsb r5, r3, r5
00512bd4  05 00 56 e1                                      cmp r6, r5
00512bd8  06 20 a0 b1                                      movlt r2, r6
00512bdc  05 20 a0 a1                                      movge r2, r5
00512be0  7e ee f7 eb                                      bl #0x30e5e0
00512be4  00 00 50 e3                                      cmp r0, #0
00512be8  07 00 00 1a                                      bne #0x512c0c
00512bec  06 00 55 e1                                      cmp r5, r6
00512bf0  06 00 00 ba                                      blt #0x512c10
00512bf4  08 30 94 e5                                      ldr r3, [r4, #8]
00512bf8  00 00 53 e3                                      cmp r3, #0
00512bfc  07 00 00 0a                                      beq #0x512c20
00512c00  04 70 a0 e1                                      mov r7, r4
00512c04  03 40 a0 e1                                      mov r4, r3
00512c08  ec ff ff ea                                      b #0x512bc0
00512c0c  f8 ff ff aa                                      bge #0x512bf4
00512c10  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00512c14  07 40 a0 e1                                      mov r4, r7
00512c18  00 00 53 e3                                      cmp r3, #0
00512c1c  f7 ff ff 1a                                      bne #0x512c00
00512c20  04 00 5b e1                                      cmp fp, r4
00512c24  19 00 00 0a                                      beq #0x512c90
00512c28  14 30 9a e5                                      ldr r3, [sl, #0x14]
00512c2c  24 10 94 e5                                      ldr r1, [r4, #0x24]
00512c30  10 50 9a e5                                      ldr r5, [sl, #0x10]
00512c34  20 60 94 e5                                      ldr r6, [r4, #0x20]
00512c38  03 00 a0 e1                                      mov r0, r3
00512c3c  05 50 63 e0                                      rsb r5, r3, r5
00512c40  06 60 61 e0                                      rsb r6, r1, r6
00512c44  05 00 56 e1                                      cmp r6, r5
00512c48  06 20 a0 b1                                      movlt r2, r6
00512c4c  05 20 a0 a1                                      movge r2, r5
00512c50  62 ee f7 eb                                      bl #0x30e5e0
00512c54  00 00 50 e3                                      cmp r0, #0
00512c58  04 00 a0 e1                                      mov r0, r4
00512c5c  0a 00 00 1a                                      bne #0x512c8c
00512c60  06 00 55 e1                                      cmp r5, r6
00512c64  09 00 00 ba                                      blt #0x512c90
00512c68  04 20 9d e5                                      ldr r2, [sp, #4]
00512c6c  28 00 80 e2                                      add r0, r0, #0x28
00512c70  02 30 99 e7                                      ldr r3, [sb, r2]
00512c74  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
00512c78  00 30 93 e5                                      ldr r3, [r3]
00512c7c  03 00 52 e1                                      cmp r2, r3
00512c80  13 00 00 1a                                      bne #0x512cd4
00512c84  34 d0 8d e2                                      add sp, sp, #0x34
00512c88  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00512c8c  f5 ff ff aa                                      bge #0x512c68
00512c90  10 50 8d e2                                      add r5, sp, #0x10
00512c94  0a 10 a0 e1                                      mov r1, sl
00512c98  05 00 a0 e1                                      mov r0, r5
00512c9c  1d 63 f8 eb                                      bl #0x32b918
00512ca0  00 c0 a0 e3                                      mov ip, #0
00512ca4  0b 10 a0 e1                                      mov r1, fp
00512ca8  0c 00 8d e2                                      add r0, sp, #0xc
00512cac  08 20 8d e2                                      add r2, sp, #8
00512cb0  05 30 a0 e1                                      mov r3, r5
00512cb4  28 c0 8d e5                                      str ip, [sp, #0x28]
00512cb8  08 40 8d e5                                      str r4, [sp, #8]
00512cbc  6b fe ff eb                                      bl #0x512670
00512cc0  0c 40 9d e5                                      ldr r4, [sp, #0xc]
00512cc4  05 00 a0 e1                                      mov r0, r5
00512cc8  61 15 f8 eb                                      bl #0x318254
00512ccc  04 00 a0 e1                                      mov r0, r4
00512cd0  e4 ff ff ea                                      b #0x512c68
00512cd4  8d ed f7 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00512cd8  0c 1f 48 00 ac 40 00 00                          .byte 0x0c, 0x1f, 0x48, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x00512ce0, declared_size=308, range_size=308, mode=arm
; class-group: Property*& std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > >
; alias: _ZNSt3mapISsP8PropertySt4lessISsESaISt4pairIKSsS1_EEEixIPKcEERS1_RKT_
; demangled: Property*& std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > >::operator[]<char const*>(char const* const&)
; decoder-mode: arm
00512ce0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00512ce4  20 41 9f e5                                      ldr r4, [pc, #0x120]
00512ce8  20 61 9f e5                                      ldr r6, [pc, #0x120]
00512cec  6c d0 4d e2                                      sub sp, sp, #0x6c
00512cf0  04 40 8f e0                                      add r4, pc, r4
00512cf4  06 30 94 e7                                      ldr r3, [r4, r6]
00512cf8  00 90 a0 e1                                      mov sb, r0
00512cfc  01 70 a0 e1                                      mov r7, r1
00512d00  00 30 93 e5                                      ldr r3, [r3]
00512d04  64 30 8d e5                                      str r3, [sp, #0x64]
00512d08  86 fa ff eb                                      bl #0x511728
00512d0c  09 00 50 e1                                      cmp r0, sb
00512d10  00 50 a0 e1                                      mov r5, r0
00512d14  23 00 00 0a                                      beq #0x512da8
00512d18  4c 80 8d e2                                      add r8, sp, #0x4c
00512d1c  00 10 97 e5                                      ldr r1, [r7]
00512d20  14 20 8d e2                                      add r2, sp, #0x14
00512d24  08 00 a0 e1                                      mov r0, r8
00512d28  ef 04 f8 eb                                      bl #0x3140ec
00512d2c  60 30 9d e5                                      ldr r3, [sp, #0x60]
00512d30  24 10 95 e5                                      ldr r1, [r5, #0x24]
00512d34  20 b0 95 e5                                      ldr fp, [r5, #0x20]
00512d38  5c a0 9d e5                                      ldr sl, [sp, #0x5c]
00512d3c  03 00 a0 e1                                      mov r0, r3
00512d40  0b b0 61 e0                                      rsb fp, r1, fp
00512d44  0a a0 63 e0                                      rsb sl, r3, sl
00512d48  0a 00 5b e1                                      cmp fp, sl
00512d4c  0b 20 a0 b1                                      movlt r2, fp
00512d50  0a 20 a0 a1                                      movge r2, sl
00512d54  21 ee f7 eb                                      bl #0x30e5e0
00512d58  00 00 50 e3                                      cmp r0, #0
00512d5c  05 30 a0 e1                                      mov r3, r5
00512d60  0d 00 00 1a                                      bne #0x512d9c
00512d64  0b 00 5a e1                                      cmp sl, fp
00512d68  0c 00 00 ba                                      blt #0x512da0
00512d6c  08 00 a0 e1                                      mov r0, r8
00512d70  04 30 8d e5                                      str r3, [sp, #4]
00512d74  36 15 f8 eb                                      bl #0x318254
00512d78  04 30 9d e5                                      ldr r3, [sp, #4]
00512d7c  06 10 94 e7                                      ldr r1, [r4, r6]
00512d80  64 20 9d e5                                      ldr r2, [sp, #0x64]
00512d84  28 00 83 e2                                      add r0, r3, #0x28
00512d88  00 30 91 e5                                      ldr r3, [r1]
00512d8c  03 00 52 e1                                      cmp r2, r3
00512d90  1c 00 00 1a                                      bne #0x512e08
00512d94  6c d0 8d e2                                      add sp, sp, #0x6c
00512d98  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00512d9c  f2 ff ff aa                                      bge #0x512d6c
00512da0  08 00 a0 e1                                      mov r0, r8
00512da4  2a 15 f8 eb                                      bl #0x318254
00512da8  34 80 8d e2                                      add r8, sp, #0x34
00512dac  00 10 97 e5                                      ldr r1, [r7]
00512db0  10 20 8d e2                                      add r2, sp, #0x10
00512db4  18 70 8d e2                                      add r7, sp, #0x18
00512db8  08 00 a0 e1                                      mov r0, r8
00512dbc  ca 04 f8 eb                                      bl #0x3140ec
00512dc0  08 10 a0 e1                                      mov r1, r8
00512dc4  07 00 a0 e1                                      mov r0, r7
00512dc8  d2 62 f8 eb                                      bl #0x32b918
00512dcc  07 30 a0 e1                                      mov r3, r7
00512dd0  00 c0 a0 e3                                      mov ip, #0
00512dd4  09 10 a0 e1                                      mov r1, sb
00512dd8  08 20 8d e2                                      add r2, sp, #8
00512ddc  0c 00 8d e2                                      add r0, sp, #0xc
00512de0  30 c0 8d e5                                      str ip, [sp, #0x30]
00512de4  08 50 8d e5                                      str r5, [sp, #8]
00512de8  20 fe ff eb                                      bl #0x512670
00512dec  0c 50 9d e5                                      ldr r5, [sp, #0xc]
00512df0  07 00 a0 e1                                      mov r0, r7
00512df4  16 15 f8 eb                                      bl #0x318254
00512df8  08 00 a0 e1                                      mov r0, r8
00512dfc  14 15 f8 eb                                      bl #0x318254
00512e00  05 30 a0 e1                                      mov r3, r5
00512e04  dc ff ff ea                                      b #0x512d7c
00512e08  40 ed f7 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00512e0c  a0 1d 48 00 ac 40 00 00                          .byte 0xa0, 0x1d, 0x48, 0x00, 0xac, 0x40, 0x00, 0x00

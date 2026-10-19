; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00318cb4, declared_size=356, range_size=356, mode=arm
; class-group: std::basic_string<char, std::char_traits<char>, std::allocator<char> >& std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > > >
; alias: _ZNSt3mapISsSsSt4lessISsESaISt4pairIKSsSsEEEixIPKcEERSsRKT_
; demangled: std::basic_string<char, std::char_traits<char>, std::allocator<char> >& std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > > >::operator[]<char const*>(char const* const&)
; decoder-mode: arm
00318cb4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00318cb8  50 41 9f e5                                      ldr r4, [pc, #0x150]
00318cbc  50 91 9f e5                                      ldr sb, [pc, #0x150]
00318cc0  9c d0 4d e2                                      sub sp, sp, #0x9c
00318cc4  04 40 8f e0                                      add r4, pc, r4
00318cc8  09 30 94 e7                                      ldr r3, [r4, sb]
00318ccc  00 b0 a0 e1                                      mov fp, r0
00318cd0  01 60 a0 e1                                      mov r6, r1
00318cd4  00 30 93 e5                                      ldr r3, [r3]
00318cd8  94 30 8d e5                                      str r3, [sp, #0x94]
00318cdc  6d fd ff eb                                      bl #0x318298
00318ce0  0b 00 50 e1                                      cmp r0, fp
00318ce4  00 50 a0 e1                                      mov r5, r0
00318ce8  23 00 00 0a                                      beq #0x318d7c
00318cec  7c 70 8d e2                                      add r7, sp, #0x7c
00318cf0  00 10 96 e5                                      ldr r1, [r6]
00318cf4  18 20 8d e2                                      add r2, sp, #0x18
00318cf8  07 00 a0 e1                                      mov r0, r7
00318cfc  fa ec ff eb                                      bl #0x3140ec
00318d00  90 30 9d e5                                      ldr r3, [sp, #0x90]
00318d04  24 10 95 e5                                      ldr r1, [r5, #0x24]
00318d08  20 80 95 e5                                      ldr r8, [r5, #0x20]
00318d0c  8c a0 9d e5                                      ldr sl, [sp, #0x8c]
00318d10  03 00 a0 e1                                      mov r0, r3
00318d14  08 80 61 e0                                      rsb r8, r1, r8
00318d18  0a a0 63 e0                                      rsb sl, r3, sl
00318d1c  0a 00 58 e1                                      cmp r8, sl
00318d20  08 20 a0 b1                                      movlt r2, r8
00318d24  0a 20 a0 a1                                      movge r2, sl
00318d28  2c d6 ff eb                                      bl #0x30e5e0
00318d2c  00 00 50 e3                                      cmp r0, #0
00318d30  05 30 a0 e1                                      mov r3, r5
00318d34  0d 00 00 1a                                      bne #0x318d70
00318d38  08 00 5a e1                                      cmp sl, r8
00318d3c  0c 00 00 ba                                      blt #0x318d74
00318d40  07 00 a0 e1                                      mov r0, r7
00318d44  04 30 8d e5                                      str r3, [sp, #4]
00318d48  41 fd ff eb                                      bl #0x318254
00318d4c  04 30 9d e5                                      ldr r3, [sp, #4]
00318d50  09 10 94 e7                                      ldr r1, [r4, sb]
00318d54  94 20 9d e5                                      ldr r2, [sp, #0x94]
00318d58  28 00 83 e2                                      add r0, r3, #0x28
00318d5c  00 30 91 e5                                      ldr r3, [r1]
00318d60  03 00 52 e1                                      cmp r2, r3
00318d64  28 00 00 1a                                      bne #0x318e0c
00318d68  9c d0 8d e2                                      add sp, sp, #0x9c
00318d6c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00318d70  f2 ff ff aa                                      bge #0x318d40
00318d74  07 00 a0 e1                                      mov r0, r7
00318d78  35 fd ff eb                                      bl #0x318254
00318d7c  4c 80 8d e2                                      add r8, sp, #0x4c
00318d80  00 10 96 e5                                      ldr r1, [r6]
00318d84  14 20 8d e2                                      add r2, sp, #0x14
00318d88  64 60 8d e2                                      add r6, sp, #0x64
00318d8c  08 00 a0 e1                                      mov r0, r8
00318d90  d5 ec ff eb                                      bl #0x3140ec
00318d94  06 00 a0 e1                                      mov r0, r6
00318d98  10 10 a0 e3                                      mov r1, #0x10
00318d9c  74 60 8d e5                                      str r6, [sp, #0x74]
00318da0  78 60 8d e5                                      str r6, [sp, #0x78]
00318da4  34 e2 ff eb                                      bl #0x31167c
00318da8  74 30 9d e5                                      ldr r3, [sp, #0x74]
00318dac  1c 70 8d e2                                      add r7, sp, #0x1c
00318db0  00 20 a0 e3                                      mov r2, #0
00318db4  00 20 c3 e5                                      strb r2, [r3]
00318db8  08 10 a0 e1                                      mov r1, r8
00318dbc  06 20 a0 e1                                      mov r2, r6
00318dc0  07 00 a0 e1                                      mov r0, r7
00318dc4  80 fd ff eb                                      bl #0x3183cc
00318dc8  07 30 a0 e1                                      mov r3, r7
00318dcc  0b 10 a0 e1                                      mov r1, fp
00318dd0  0c 20 8d e2                                      add r2, sp, #0xc
00318dd4  10 00 8d e2                                      add r0, sp, #0x10
00318dd8  0c 50 8d e5                                      str r5, [sp, #0xc]
00318ddc  73 fe ff eb                                      bl #0x3187b0
00318de0  18 00 87 e2                                      add r0, r7, #0x18
00318de4  10 50 9d e5                                      ldr r5, [sp, #0x10]
00318de8  19 fd ff eb                                      bl #0x318254
00318dec  07 00 a0 e1                                      mov r0, r7
00318df0  17 fd ff eb                                      bl #0x318254
00318df4  06 00 a0 e1                                      mov r0, r6
00318df8  15 fd ff eb                                      bl #0x318254
00318dfc  08 00 a0 e1                                      mov r0, r8
00318e00  13 fd ff eb                                      bl #0x318254
00318e04  05 30 a0 e1                                      mov r3, r5
00318e08  d0 ff ff ea                                      b #0x318d50
00318e0c  3f d5 ff eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00318e10  cc bd 67 00 ac 40 00 00                          .byte 0xcc, 0xbd, 0x67, 0x00, 0xac, 0x40, 0x00, 0x00

; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005124d4, declared_size=412, range_size=412, mode=arm
; class-group: std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > > >& std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > > >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > > > > > >
; alias: _ZNSt3mapISsS_ISsS_ISsP8PropertySt4lessISsESaISt4pairIKSsS1_EEES3_SaIS4_IS5_S8_EEES3_SaIS4_IS5_SB_EEEixIPKcEERSB_RKT_.clone.2
; demangled: std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > > >& std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > > >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > > > > > >::operator[]<char const*>(char const* const&) [clone .clone.2]
; decoder-mode: arm
005124d4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005124d8  84 41 9f e5                                      ldr r4, [pc, #0x184]
005124dc  84 91 9f e5                                      ldr sb, [pc, #0x184]
005124e0  84 b1 9f e5                                      ldr fp, [pc, #0x184]
005124e4  04 40 8f e0                                      add r4, pc, r4
005124e8  09 30 94 e7                                      ldr r3, [r4, sb]
005124ec  0b 70 94 e7                                      ldr r7, [r4, fp]
005124f0  00 60 a0 e1                                      mov r6, r0
005124f4  00 30 93 e5                                      ldr r3, [r3]
005124f8  9c d0 4d e2                                      sub sp, sp, #0x9c
005124fc  07 00 a0 e1                                      mov r0, r7
00512500  06 10 a0 e1                                      mov r1, r6
00512504  94 30 8d e5                                      str r3, [sp, #0x94]
00512508  4a fc ff eb                                      bl #0x511638
0051250c  07 00 50 e1                                      cmp r0, r7
00512510  00 50 a0 e1                                      mov r5, r0
00512514  24 00 00 0a                                      beq #0x5125ac
00512518  64 70 8d e2                                      add r7, sp, #0x64
0051251c  00 10 96 e5                                      ldr r1, [r6]
00512520  2c 20 8d e2                                      add r2, sp, #0x2c
00512524  07 00 a0 e1                                      mov r0, r7
00512528  ef 06 f8 eb                                      bl #0x3140ec
0051252c  78 30 9d e5                                      ldr r3, [sp, #0x78]
00512530  24 10 95 e5                                      ldr r1, [r5, #0x24]
00512534  20 80 95 e5                                      ldr r8, [r5, #0x20]
00512538  74 a0 9d e5                                      ldr sl, [sp, #0x74]
0051253c  03 00 a0 e1                                      mov r0, r3
00512540  08 80 61 e0                                      rsb r8, r1, r8
00512544  0a a0 63 e0                                      rsb sl, r3, sl
00512548  0a 00 58 e1                                      cmp r8, sl
0051254c  08 20 a0 b1                                      movlt r2, r8
00512550  0a 20 a0 a1                                      movge r2, sl
00512554  21 f0 f7 eb                                      bl #0x30e5e0
00512558  00 00 50 e3                                      cmp r0, #0
0051255c  05 30 a0 e1                                      mov r3, r5
00512560  0e 00 00 1a                                      bne #0x5125a0
00512564  08 00 5a e1                                      cmp sl, r8
00512568  0d 00 00 ba                                      blt #0x5125a4
0051256c  07 00 a0 e1                                      mov r0, r7
00512570  04 30 8d e5                                      str r3, [sp, #4]
00512574  36 17 f8 eb                                      bl #0x318254
00512578  04 30 9d e5                                      ldr r3, [sp, #4]
0051257c  09 10 94 e7                                      ldr r1, [r4, sb]
00512580  94 20 9d e5                                      ldr r2, [sp, #0x94]
00512584  28 00 83 e2                                      add r0, r3, #0x28
00512588  00 30 91 e5                                      ldr r3, [r1]
0051258c  03 00 52 e1                                      cmp r2, r3
00512590  01 00 00 1a                                      bne #0x51259c
00512594  9c d0 8d e2                                      add sp, sp, #0x9c
00512598  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0051259c  5b ef f7 eb                                      bl #0x30e310
005125a0  f1 ff ff aa                                      bge #0x51256c
005125a4  07 00 a0 e1                                      mov r0, r7
005125a8  29 17 f8 eb                                      bl #0x318254
005125ac  7c a0 8d e2                                      add sl, sp, #0x7c
005125b0  30 20 8d e2                                      add r2, sp, #0x30
005125b4  34 70 8d e2                                      add r7, sp, #0x34
005125b8  00 80 a0 e3                                      mov r8, #0
005125bc  00 10 96 e5                                      ldr r1, [r6]
005125c0  0a 00 a0 e1                                      mov r0, sl
005125c4  98 60 8d e2                                      add r6, sp, #0x98
005125c8  c7 06 f8 eb                                      bl #0x3140ec
005125cc  8c 80 66 e5                                      strb r8, [r6, #-0x8c]!
005125d0  0a 10 a0 e1                                      mov r1, sl
005125d4  07 00 a0 e1                                      mov r0, r7
005125d8  10 80 8d e5                                      str r8, [sp, #0x10]
005125dc  14 60 8d e5                                      str r6, [sp, #0x14]
005125e0  18 60 8d e5                                      str r6, [sp, #0x18]
005125e4  1c 80 8d e5                                      str r8, [sp, #0x1c]
005125e8  ca 64 f8 eb                                      bl #0x32b918
005125ec  06 10 a0 e1                                      mov r1, r6
005125f0  18 00 87 e2                                      add r0, r7, #0x18
005125f4  65 fb ff eb                                      bl #0x511390
005125f8  07 30 a0 e1                                      mov r3, r7
005125fc  0b 10 94 e7                                      ldr r1, [r4, fp]
00512600  24 00 8d e2                                      add r0, sp, #0x24
00512604  28 20 8d e2                                      add r2, sp, #0x28
00512608  28 50 8d e5                                      str r5, [sp, #0x28]
0051260c  6f fe ff eb                                      bl #0x511fd0
00512610  07 00 a0 e1                                      mov r0, r7
00512614  24 50 9d e5                                      ldr r5, [sp, #0x24]
00512618  c0 f9 ff eb                                      bl #0x510d20
0051261c  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
00512620  08 00 53 e1                                      cmp r3, r8
00512624  03 00 00 1a                                      bne #0x512638
00512628  0a 00 a0 e1                                      mov r0, sl
0051262c  08 17 f8 eb                                      bl #0x318254
00512630  05 30 a0 e1                                      mov r3, r5
00512634  d0 ff ff ea                                      b #0x51257c
00512638  06 00 a0 e1                                      mov r0, r6
0051263c  10 10 9d e5                                      ldr r1, [sp, #0x10]
00512640  a6 f9 ff eb                                      bl #0x510ce0
00512644  0a 00 a0 e1                                      mov r0, sl
00512648  18 60 8d e5                                      str r6, [sp, #0x18]
0051264c  1c 80 8d e5                                      str r8, [sp, #0x1c]
00512650  14 60 8d e5                                      str r6, [sp, #0x14]
00512654  10 80 8d e5                                      str r8, [sp, #0x10]
00512658  fd 16 f8 eb                                      bl #0x318254
0051265c  05 30 a0 e1                                      mov r3, r5
00512660  c5 ff ff ea                                      b #0x51257c
; mapping-symbol data/literal pool
00512664  ac 25 48 00 ac 40 00 00 68 2a 00 00              .byte 0xac, 0x25, 0x48, 0x00, 0xac, 0x40, 0x00, 0x00, 0x68, 0x2a, 0x00, 0x00

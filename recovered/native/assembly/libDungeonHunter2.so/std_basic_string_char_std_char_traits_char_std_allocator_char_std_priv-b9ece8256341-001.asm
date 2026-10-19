; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00463970, declared_size=200, range_size=200, mode=arm
; class-group: std::basic_string<char, std::char_traits<char>, std::allocator<char> >* std::priv
; alias: _ZNSt4priv21__unguarded_partitionIPSsSsSt4lessISsEEET_S4_S4_T0_T1_
; demangled: std::basic_string<char, std::char_traits<char>, std::allocator<char> >* std::priv::__unguarded_partition<std::basic_string<char, std::char_traits<char>, std::allocator<char> >*, std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >(std::basic_string<char, std::char_traits<char>, std::allocator<char> >*, std::basic_string<char, std::char_traits<char>, std::allocator<char> >*, std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >)
; decoder-mode: arm
00463970  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00463974  14 60 92 e5                                      ldr r6, [r2, #0x14]
00463978  10 80 92 e5                                      ldr r8, [r2, #0x10]
0046397c  02 90 a0 e1                                      mov sb, r2
00463980  00 50 a0 e1                                      mov r5, r0
00463984  01 a0 a0 e1                                      mov sl, r1
00463988  14 30 95 e5                                      ldr r3, [r5, #0x14]
0046398c  10 70 95 e5                                      ldr r7, [r5, #0x10]
00463990  08 40 66 e0                                      rsb r4, r6, r8
00463994  03 00 a0 e1                                      mov r0, r3
00463998  07 70 63 e0                                      rsb r7, r3, r7
0046399c  07 00 54 e1                                      cmp r4, r7
004639a0  04 20 a0 b1                                      movlt r2, r4
004639a4  07 20 a0 a1                                      movge r2, r7
004639a8  06 10 a0 e1                                      mov r1, r6
004639ac  0b ab fa eb                                      bl #0x30e5e0
004639b0  00 00 50 e3                                      cmp r0, #0
004639b4  18 00 00 1a                                      bne #0x463a1c
004639b8  04 00 57 e1                                      cmp r7, r4
004639bc  17 00 00 ba                                      blt #0x463a20
004639c0  18 a0 4a e2                                      sub sl, sl, #0x18
004639c4  14 30 9a e5                                      ldr r3, [sl, #0x14]
004639c8  10 70 9a e5                                      ldr r7, [sl, #0x10]
004639cc  06 00 a0 e1                                      mov r0, r6
004639d0  03 10 a0 e1                                      mov r1, r3
004639d4  07 70 63 e0                                      rsb r7, r3, r7
004639d8  07 00 54 e1                                      cmp r4, r7
004639dc  04 20 a0 b1                                      movlt r2, r4
004639e0  07 20 a0 a1                                      movge r2, r7
004639e4  fd aa fa eb                                      bl #0x30e5e0
004639e8  00 00 50 e3                                      cmp r0, #0
004639ec  0d 00 00 1a                                      bne #0x463a28
004639f0  07 00 54 e1                                      cmp r4, r7
004639f4  f1 ff ff ba                                      blt #0x4639c0
004639f8  05 00 5a e1                                      cmp sl, r5
004639fc  0b 00 00 9a                                      bls #0x463a30
00463a00  05 00 a0 e1                                      mov r0, r5
00463a04  0a 10 a0 e1                                      mov r1, sl
00463a08  9c 3f ff eb                                      bl #0x433880
00463a0c  18 50 85 e2                                      add r5, r5, #0x18
00463a10  14 60 99 e5                                      ldr r6, [sb, #0x14]
00463a14  10 80 99 e5                                      ldr r8, [sb, #0x10]
00463a18  da ff ff ea                                      b #0x463988
00463a1c  e7 ff ff aa                                      bge #0x4639c0
00463a20  18 50 85 e2                                      add r5, r5, #0x18
00463a24  d7 ff ff ea                                      b #0x463988
00463a28  e4 ff ff ba                                      blt #0x4639c0
00463a2c  f1 ff ff ea                                      b #0x4639f8
00463a30  05 00 a0 e1                                      mov r0, r5
00463a34  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x0048a278, declared_size=120, range_size=120, mode=arm
; class-group: std::basic_string<char, std::char_traits<char>, std::allocator<char> >* std::priv
; alias: _ZNSt4priv7__ucopyIPKSsPSsiEET0_T_S5_S4_RKSt26random_access_iterator_tagPT1_
; demangled: std::basic_string<char, std::char_traits<char>, std::allocator<char> >* std::priv::__ucopy<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const*, std::basic_string<char, std::char_traits<char>, std::allocator<char> >*, int>(std::basic_string<char, std::char_traits<char>, std::allocator<char> > const*, std::basic_string<char, std::char_traits<char>, std::allocator<char> > const*, std::basic_string<char, std::char_traits<char>, std::allocator<char> >*, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
0048a278  01 30 60 e0                                      rsb r3, r0, r1
0048a27c  c3 31 a0 e1                                      asr r3, r3, #3
0048a280  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0048a284  03 71 83 e0                                      add r7, r3, r3, lsl #2
0048a288  00 50 a0 e1                                      mov r5, r0
0048a28c  07 72 87 e0                                      add r7, r7, r7, lsl #4
0048a290  02 80 a0 e1                                      mov r8, r2
0048a294  07 74 87 e0                                      add r7, r7, r7, lsl #8
0048a298  07 78 87 e0                                      add r7, r7, r7, lsl #16
0048a29c  87 70 83 e0                                      add r7, r3, r7, lsl #1
0048a2a0  00 00 57 e3                                      cmp r7, #0
0048a2a4  07 60 a0 c1                                      movgt r6, r7
0048a2a8  02 40 a0 c1                                      movgt r4, r2
0048a2ac  01 00 00 ca                                      bgt #0x48a2b8
0048a2b0  0c 00 00 ea                                      b #0x48a2e8
0048a2b4  18 50 85 e2                                      add r5, r5, #0x18
0048a2b8  10 40 84 e5                                      str r4, [r4, #0x10]
0048a2bc  14 40 84 e5                                      str r4, [r4, #0x14]
0048a2c0  04 00 a0 e1                                      mov r0, r4
0048a2c4  14 10 95 e5                                      ldr r1, [r5, #0x14]
0048a2c8  10 20 95 e5                                      ldr r2, [r5, #0x10]
0048a2cc  05 1d fa eb                                      bl #0x3116e8
0048a2d0  01 60 56 e2                                      subs r6, r6, #1
0048a2d4  18 40 84 e2                                      add r4, r4, #0x18
0048a2d8  f5 ff ff 1a                                      bne #0x48a2b4
0048a2dc  18 00 a0 e3                                      mov r0, #0x18
0048a2e0  90 87 20 e0                                      mla r0, r0, r7, r8
0048a2e4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0048a2e8  02 00 a0 e1                                      mov r0, r2
0048a2ec  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

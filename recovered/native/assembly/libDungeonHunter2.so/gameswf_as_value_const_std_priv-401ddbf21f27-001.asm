; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00798934, declared_size=180, range_size=180, mode=arm
; class-group: gameswf::as_value const& std::priv
; alias: _ZNSt4priv8__medianIN7gameswf8as_valueENS1_21standard_array_sorterEEERKT_S6_S6_S6_T0_
; demangled: gameswf::as_value const& std::priv::__median<gameswf::as_value, gameswf::standard_array_sorter>(gameswf::as_value const&, gameswf::as_value const&, gameswf::as_value const&, gameswf::standard_array_sorter)
; decoder-mode: arm
00798934  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00798938  00 50 a0 e1                                      mov r5, r0
0079893c  01 40 a0 e1                                      mov r4, r1
00798940  02 70 a0 e1                                      mov r7, r2
00798944  03 00 a0 e1                                      mov r0, r3
00798948  05 10 a0 e1                                      mov r1, r5
0079894c  04 20 a0 e1                                      mov r2, r4
00798950  03 60 a0 e1                                      mov r6, r3
00798954  62 ff ff eb                                      bl #0x7986e4
00798958  00 00 50 e3                                      cmp r0, #0
0079895c  07 00 00 0a                                      beq #0x798980
00798960  06 00 a0 e1                                      mov r0, r6
00798964  04 10 a0 e1                                      mov r1, r4
00798968  07 20 a0 e1                                      mov r2, r7
0079896c  5c ff ff eb                                      bl #0x7986e4
00798970  00 00 50 e3                                      cmp r0, #0
00798974  0a 00 00 0a                                      beq #0x7989a4
00798978  04 00 a0 e1                                      mov r0, r4
0079897c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00798980  06 00 a0 e1                                      mov r0, r6
00798984  05 10 a0 e1                                      mov r1, r5
00798988  07 20 a0 e1                                      mov r2, r7
0079898c  54 ff ff eb                                      bl #0x7986e4
00798990  00 00 50 e3                                      cmp r0, #0
00798994  0b 00 00 0a                                      beq #0x7989c8
00798998  05 40 a0 e1                                      mov r4, r5
0079899c  04 00 a0 e1                                      mov r0, r4
007989a0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007989a4  06 00 a0 e1                                      mov r0, r6
007989a8  05 10 a0 e1                                      mov r1, r5
007989ac  07 20 a0 e1                                      mov r2, r7
007989b0  4b ff ff eb                                      bl #0x7986e4
007989b4  00 00 50 e3                                      cmp r0, #0
007989b8  f6 ff ff 0a                                      beq #0x798998
007989bc  07 40 a0 e1                                      mov r4, r7
007989c0  04 00 a0 e1                                      mov r0, r4
007989c4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007989c8  06 00 a0 e1                                      mov r0, r6
007989cc  04 10 a0 e1                                      mov r1, r4
007989d0  07 20 a0 e1                                      mov r2, r7
007989d4  42 ff ff eb                                      bl #0x7986e4
007989d8  00 00 50 e3                                      cmp r0, #0
007989dc  f6 ff ff 1a                                      bne #0x7989bc
007989e0  04 00 a0 e1                                      mov r0, r4
007989e4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0079963c, declared_size=184, range_size=184, mode=arm
; class-group: gameswf::as_value const& std::priv
; alias: _ZNSt4priv8__medianIN7gameswf8as_valueENS1_19custom_array_sorterEEERKT_S6_S6_S6_T0_
; demangled: gameswf::as_value const& std::priv::__median<gameswf::as_value, gameswf::custom_array_sorter>(gameswf::as_value const&, gameswf::as_value const&, gameswf::as_value const&, gameswf::custom_array_sorter)
; decoder-mode: arm
0079963c  08 d0 4d e2                                      sub sp, sp, #8
00799640  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00799644  14 40 8d e2                                      add r4, sp, #0x14
00799648  08 30 a4 e5                                      str r3, [r4, #8]!
0079964c  00 60 a0 e1                                      mov r6, r0
00799650  01 50 a0 e1                                      mov r5, r1
00799654  02 70 a0 e1                                      mov r7, r2
00799658  04 00 a0 e1                                      mov r0, r4
0079965c  06 10 a0 e1                                      mov r1, r6
00799660  05 20 a0 e1                                      mov r2, r5
00799664  aa ff ff eb                                      bl #0x799514
00799668  00 00 50 e3                                      cmp r0, #0
0079966c  09 00 00 0a                                      beq #0x799698
00799670  04 00 a0 e1                                      mov r0, r4
00799674  05 10 a0 e1                                      mov r1, r5
00799678  07 20 a0 e1                                      mov r2, r7
0079967c  a4 ff ff eb                                      bl #0x799514
00799680  00 00 50 e3                                      cmp r0, #0
00799684  0b 00 00 0a                                      beq #0x7996b8
00799688  05 00 a0 e1                                      mov r0, r5
0079968c  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00799690  08 d0 8d e2                                      add sp, sp, #8
00799694  1e ff 2f e1                                      bx lr
00799698  04 00 a0 e1                                      mov r0, r4
0079969c  06 10 a0 e1                                      mov r1, r6
007996a0  07 20 a0 e1                                      mov r2, r7
007996a4  9a ff ff eb                                      bl #0x799514
007996a8  00 00 50 e3                                      cmp r0, #0
007996ac  09 00 00 0a                                      beq #0x7996d8
007996b0  06 50 a0 e1                                      mov r5, r6
007996b4  f3 ff ff ea                                      b #0x799688
007996b8  04 00 a0 e1                                      mov r0, r4
007996bc  06 10 a0 e1                                      mov r1, r6
007996c0  07 20 a0 e1                                      mov r2, r7
007996c4  92 ff ff eb                                      bl #0x799514
007996c8  00 00 50 e3                                      cmp r0, #0
007996cc  f7 ff ff 0a                                      beq #0x7996b0
007996d0  07 50 a0 e1                                      mov r5, r7
007996d4  eb ff ff ea                                      b #0x799688
007996d8  04 00 a0 e1                                      mov r0, r4
007996dc  05 10 a0 e1                                      mov r1, r5
007996e0  07 20 a0 e1                                      mov r2, r7
007996e4  8a ff ff eb                                      bl #0x799514
007996e8  00 00 50 e3                                      cmp r0, #0
007996ec  e5 ff ff 0a                                      beq #0x799688
007996f0  f6 ff ff ea                                      b #0x7996d0

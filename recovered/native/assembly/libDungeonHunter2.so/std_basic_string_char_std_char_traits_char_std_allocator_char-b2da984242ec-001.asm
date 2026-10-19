; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003107a0, declared_size=100, range_size=100, mode=arm
; class-group: std::basic_string<char, std::char_traits<char>, std::allocator<char> >
; alias: _ZNSs20_M_compute_next_sizeEj
; demangled: std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_compute_next_size(unsigned int)
; decoder-mode: arm
003107a0  70 40 2d e9                                      push {r4, r5, r6, lr}
003107a4  14 20 90 e5                                      ldr r2, [r0, #0x14]
003107a8  10 40 90 e5                                      ldr r4, [r0, #0x10]
003107ac  fe 3f 0f e3                                      movw r3, #0xfffe
003107b0  ff 3f 4f e3                                      movt r3, #0xffff
003107b4  04 40 62 e0                                      rsb r4, r2, r4
003107b8  03 30 64 e0                                      rsb r3, r4, r3
003107bc  01 00 53 e1                                      cmp r3, r1
003107c0  01 50 a0 e1                                      mov r5, r1
003107c4  09 00 00 3a                                      blo #0x3107f0
003107c8  01 00 84 e2                                      add r0, r4, #1
003107cc  04 00 55 e1                                      cmp r5, r4
003107d0  05 00 80 20                                      addhs r0, r0, r5
003107d4  04 00 80 30                                      addlo r0, r0, r4
003107d8  01 00 70 e3                                      cmn r0, #1
003107dc  01 00 00 0a                                      beq #0x3107e8
003107e0  04 00 50 e1                                      cmp r0, r4
003107e4  00 00 00 2a                                      bhs #0x3107ec
003107e8  01 00 e0 e3                                      mvn r0, #1
003107ec  70 80 bd e8                                      pop {r4, r5, r6, pc}
003107f0  08 00 9f e5                                      ldr r0, [pc, #8]
003107f4  00 00 8f e0                                      add r0, pc, r0
003107f8  90 e1 0f eb                                      bl #0x708e40
003107fc  f1 ff ff ea                                      b #0x3107c8
; mapping-symbol data/literal pool
00310800  64 dc 5a 00                                      .byte 0x64, 0xdc, 0x5a, 0x00

; FUNCTION 0x00310804, declared_size=380, range_size=380, mode=arm
; class-group: std::basic_string<char, std::char_traits<char>, std::allocator<char> >
; alias: _ZNSs9_M_appendEPKcS0_
; demangled: std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_append(char const*, char const*)
; decoder-mode: arm
00310804  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00310808  02 00 51 e1                                      cmp r1, r2
0031080c  0c d0 4d e2                                      sub sp, sp, #0xc
00310810  01 40 a0 e1                                      mov r4, r1
00310814  00 50 a0 e1                                      mov r5, r0
00310818  1d 00 00 0a                                      beq #0x310894
0031081c  14 30 90 e5                                      ldr r3, [r0, #0x14]
00310820  02 60 61 e0                                      rsb r6, r1, r2
00310824  00 00 53 e1                                      cmp r3, r0
00310828  10 10 90 05                                      ldreq r1, [r0, #0x10]
0031082c  00 30 90 15                                      ldrne r3, [r0]
00310830  10 10 90 15                                      ldrne r1, [r0, #0x10]
00310834  10 30 80 02                                      addeq r3, r0, #0x10
00310838  03 30 61 e0                                      rsb r3, r1, r3
0031083c  03 00 56 e1                                      cmp r6, r3
00310840  16 00 00 2a                                      bhs #0x3108a0
00310844  01 30 84 e2                                      add r3, r4, #1
00310848  02 20 63 e0                                      rsb r2, r3, r2
0031084c  00 00 52 e3                                      cmp r2, #0
00310850  01 30 a0 e1                                      mov r3, r1
00310854  06 00 00 da                                      ble #0x310874
00310858  04 20 82 e0                                      add r2, r2, r4
0031085c  04 30 a0 e1                                      mov r3, r4
00310860  01 00 f3 e5                                      ldrb r0, [r3, #1]!
00310864  02 00 53 e1                                      cmp r3, r2
00310868  01 00 e1 e5                                      strb r0, [r1, #1]!
0031086c  fb ff ff 1a                                      bne #0x310860
00310870  10 30 95 e5                                      ldr r3, [r5, #0x10]
00310874  00 20 a0 e3                                      mov r2, #0
00310878  06 20 c3 e7                                      strb r2, [r3, r6]
0031087c  10 30 95 e5                                      ldr r3, [r5, #0x10]
00310880  00 20 d4 e5                                      ldrb r2, [r4]
00310884  00 20 c3 e5                                      strb r2, [r3]
00310888  10 30 95 e5                                      ldr r3, [r5, #0x10]
0031088c  06 60 83 e0                                      add r6, r3, r6
00310890  10 60 85 e5                                      str r6, [r5, #0x10]
00310894  05 00 a0 e1                                      mov r0, r5
00310898  0c d0 8d e2                                      add sp, sp, #0xc
0031089c  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
003108a0  06 10 a0 e1                                      mov r1, r6
003108a4  bd ff ff eb                                      bl #0x3107a0
003108a8  00 a0 50 e2                                      subs sl, r0, #0
003108ac  0a 80 a0 01                                      moveq r8, sl
003108b0  25 00 00 1a                                      bne #0x31094c
003108b4  14 10 95 e5                                      ldr r1, [r5, #0x14]
003108b8  10 20 95 e5                                      ldr r2, [r5, #0x10]
003108bc  02 20 61 e0                                      rsb r2, r1, r2
003108c0  00 00 52 e3                                      cmp r2, #0
003108c4  08 70 a0 d1                                      movle r7, r8
003108c8  06 00 00 da                                      ble #0x3108e8
003108cc  00 70 a0 e3                                      mov r7, #0
003108d0  07 30 d1 e7                                      ldrb r3, [r1, r7]
003108d4  07 30 c8 e7                                      strb r3, [r8, r7]
003108d8  01 70 87 e2                                      add r7, r7, #1
003108dc  02 00 57 e1                                      cmp r7, r2
003108e0  fa ff ff 1a                                      bne #0x3108d0
003108e4  07 70 88 e0                                      add r7, r8, r7
003108e8  00 00 56 e3                                      cmp r6, #0
003108ec  06 00 00 da                                      ble #0x31090c
003108f0  00 30 a0 e3                                      mov r3, #0
003108f4  03 20 d4 e7                                      ldrb r2, [r4, r3]
003108f8  03 20 c7 e7                                      strb r2, [r7, r3]
003108fc  01 30 83 e2                                      add r3, r3, #1
00310900  03 00 56 e1                                      cmp r6, r3
00310904  fa ff ff 1a                                      bne #0x3108f4
00310908  06 70 87 e0                                      add r7, r7, r6
0031090c  00 30 a0 e3                                      mov r3, #0
00310910  00 30 c7 e5                                      strb r3, [r7]
00310914  14 00 95 e5                                      ldr r0, [r5, #0x14]
00310918  00 00 55 e1                                      cmp r5, r0
0031091c  06 00 00 0a                                      beq #0x31093c
00310920  03 00 50 e1                                      cmp r0, r3
00310924  04 00 00 0a                                      beq #0x31093c
00310928  00 10 95 e5                                      ldr r1, [r5]
0031092c  01 10 60 e0                                      rsb r1, r0, r1
00310930  80 00 51 e3                                      cmp r1, #0x80
00310934  0f 00 00 8a                                      bhi #0x310978
00310938  70 e1 0f eb                                      bl #0x708f00
0031093c  00 a0 85 e5                                      str sl, [r5]
00310940  10 70 85 e5                                      str r7, [r5, #0x10]
00310944  14 80 85 e5                                      str r8, [r5, #0x14]
00310948  d1 ff ff ea                                      b #0x310894
0031094c  80 00 5a e3                                      cmp sl, #0x80
00310950  04 a0 8d e5                                      str sl, [sp, #4]
00310954  05 00 00 8a                                      bhi #0x310970
00310958  04 00 8d e2                                      add r0, sp, #4
0031095c  57 e1 0f eb                                      bl #0x708ec0
00310960  04 a0 9d e5                                      ldr sl, [sp, #4]
00310964  00 80 a0 e1                                      mov r8, r0
00310968  0a a0 80 e0                                      add sl, r0, sl
0031096c  d0 ff ff ea                                      b #0x3108b4
00310970  b7 fe ff eb                                      bl #0x310454
00310974  f9 ff ff ea                                      b #0x310960
00310978  b0 fe ff eb                                      bl #0x310440
0031097c  ee ff ff ea                                      b #0x31093c

; FUNCTION 0x003109e0, declared_size=192, range_size=192, mode=arm
; class-group: std::basic_string<char, std::char_traits<char>, std::allocator<char> >
; alias: _ZNSs9_M_assignEPKcS0_
; demangled: std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_assign(char const*, char const*)
; decoder-mode: arm
003109e0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003109e4  00 40 a0 e1                                      mov r4, r0
003109e8  10 30 90 e5                                      ldr r3, [r0, #0x10]
003109ec  14 00 90 e5                                      ldr r0, [r0, #0x14]
003109f0  02 50 61 e0                                      rsb r5, r1, r2
003109f4  02 60 a0 e1                                      mov r6, r2
003109f8  03 20 60 e0                                      rsb r2, r0, r3
003109fc  02 00 55 e1                                      cmp r5, r2
00310a00  01 70 a0 e1                                      mov r7, r1
00310a04  0c 00 00 8a                                      bhi #0x310a3c
00310a08  00 00 55 e3                                      cmp r5, #0
00310a0c  12 00 00 1a                                      bne #0x310a5c
00310a10  05 20 80 e0                                      add r2, r0, r5
00310a14  03 00 52 e1                                      cmp r2, r3
00310a18  05 00 00 0a                                      beq #0x310a34
00310a1c  00 10 d3 e5                                      ldrb r1, [r3]
00310a20  02 30 63 e0                                      rsb r3, r3, r2
00310a24  05 10 c0 e7                                      strb r1, [r0, r5]
00310a28  10 20 94 e5                                      ldr r2, [r4, #0x10]
00310a2c  03 30 82 e0                                      add r3, r2, r3
00310a30  10 30 84 e5                                      str r3, [r4, #0x10]
00310a34  04 00 a0 e1                                      mov r0, r4
00310a38  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00310a3c  00 00 52 e3                                      cmp r2, #0
00310a40  0d 00 00 1a                                      bne #0x310a7c
00310a44  02 10 87 e0                                      add r1, r7, r2
00310a48  04 00 a0 e1                                      mov r0, r4
00310a4c  06 20 a0 e1                                      mov r2, r6
00310a50  6b ff ff eb                                      bl #0x310804
00310a54  04 00 a0 e1                                      mov r0, r4
00310a58  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00310a5c  05 20 a0 e1                                      mov r2, r5
00310a60  80 f7 ff eb                                      bl #0x30e868
00310a64  14 00 94 e5                                      ldr r0, [r4, #0x14]
00310a68  10 30 94 e5                                      ldr r3, [r4, #0x10]
00310a6c  05 20 80 e0                                      add r2, r0, r5
00310a70  03 00 52 e1                                      cmp r2, r3
00310a74  e8 ff ff 1a                                      bne #0x310a1c
00310a78  ed ff ff ea                                      b #0x310a34
00310a7c  79 f7 ff eb                                      bl #0x30e868
00310a80  14 30 94 e5                                      ldr r3, [r4, #0x14]
00310a84  10 20 94 e5                                      ldr r2, [r4, #0x10]
00310a88  04 00 a0 e1                                      mov r0, r4
00310a8c  02 20 63 e0                                      rsb r2, r3, r2
00310a90  02 10 87 e0                                      add r1, r7, r2
00310a94  06 20 a0 e1                                      mov r2, r6
00310a98  59 ff ff eb                                      bl #0x310804
00310a9c  ec ff ff ea                                      b #0x310a54

; FUNCTION 0x003116e8, declared_size=72, range_size=72, mode=arm
; class-group: std::basic_string<char, std::char_traits<char>, std::allocator<char> >
; alias: _ZNSs19_M_range_initializeEPKcS0_
; demangled: std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_range_initialize(char const*, char const*)
; decoder-mode: arm
003116e8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003116ec  02 50 61 e0                                      rsb r5, r1, r2
003116f0  01 40 a0 e1                                      mov r4, r1
003116f4  02 70 a0 e1                                      mov r7, r2
003116f8  01 10 85 e2                                      add r1, r5, #1
003116fc  00 60 a0 e1                                      mov r6, r0
00311700  dd ff ff eb                                      bl #0x31167c
00311704  04 00 57 e1                                      cmp r7, r4
00311708  14 00 96 e5                                      ldr r0, [r6, #0x14]
0031170c  03 00 00 0a                                      beq #0x311720
00311710  04 10 a0 e1                                      mov r1, r4
00311714  05 20 a0 e1                                      mov r2, r5
00311718  52 f4 ff eb                                      bl #0x30e868
0031171c  05 00 80 e0                                      add r0, r0, r5
00311720  00 30 a0 e3                                      mov r3, #0
00311724  10 00 86 e5                                      str r0, [r6, #0x10]
00311728  00 30 c0 e5                                      strb r3, [r0]
0031172c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x003140ec, declared_size=52, range_size=52, mode=arm
; class-group: std::basic_string<char, std::char_traits<char>, std::allocator<char> >
; alias: _ZNSsC1EPKcRKSaIcE
; demangled: std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)
; decoder-mode: arm
003140ec  70 40 2d e9                                      push {r4, r5, r6, lr}
003140f0  00 40 a0 e1                                      mov r4, r0
003140f4  10 00 84 e5                                      str r0, [r4, #0x10]
003140f8  14 00 84 e5                                      str r0, [r4, #0x14]
003140fc  01 00 a0 e1                                      mov r0, r1
00314100  01 50 a0 e1                                      mov r5, r1
00314104  52 e7 ff eb                                      bl #0x30de54
00314108  05 10 a0 e1                                      mov r1, r5
0031410c  00 20 85 e0                                      add r2, r5, r0
00314110  04 00 a0 e1                                      mov r0, r4
00314114  73 f5 ff eb                                      bl #0x3116e8
00314118  04 00 a0 e1                                      mov r0, r4
0031411c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00318254, declared_size=68, range_size=68, mode=arm
; class-group: std::basic_string<char, std::char_traits<char>, std::allocator<char> >
; alias: _ZNSsD1Ev
; demangled: std::basic_string<char, std::char_traits<char>, std::allocator<char> >::~basic_string()
; decoder-mode: arm
00318254  10 40 2d e9                                      push {r4, lr}
00318258  00 40 a0 e1                                      mov r4, r0
0031825c  14 00 90 e5                                      ldr r0, [r0, #0x14]
00318260  04 00 50 e1                                      cmp r0, r4
00318264  06 00 00 0a                                      beq #0x318284
00318268  00 00 50 e3                                      cmp r0, #0
0031826c  04 00 00 0a                                      beq #0x318284
00318270  00 10 94 e5                                      ldr r1, [r4]
00318274  01 10 60 e0                                      rsb r1, r0, r1
00318278  80 00 51 e3                                      cmp r1, #0x80
0031827c  02 00 00 8a                                      bhi #0x31828c
00318280  1e c3 0f eb                                      bl #0x708f00
00318284  04 00 a0 e1                                      mov r0, r4
00318288  10 80 bd e8                                      pop {r4, pc}
0031828c  6b e0 ff eb                                      bl #0x310440
00318290  04 00 a0 e1                                      mov r0, r4
00318294  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0032a1bc, declared_size=160, range_size=160, mode=arm
; class-group: std::basic_string<char, std::char_traits<char>, std::allocator<char> >
; alias: _ZNSs10_M_reserveEj
; demangled: std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_reserve(unsigned int)
; decoder-mode: arm
0032a1bc  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0032a1c0  00 70 51 e2                                      subs r7, r1, #0
0032a1c4  0c d0 4d e2                                      sub sp, sp, #0xc
0032a1c8  00 50 a0 e1                                      mov r5, r0
0032a1cc  07 40 a0 01                                      moveq r4, r7
0032a1d0  15 00 00 1a                                      bne #0x32a22c
0032a1d4  14 10 95 e5                                      ldr r1, [r5, #0x14]
0032a1d8  10 20 95 e5                                      ldr r2, [r5, #0x10]
0032a1dc  02 20 61 e0                                      rsb r2, r1, r2
0032a1e0  00 00 52 e3                                      cmp r2, #0
0032a1e4  04 60 a0 d1                                      movle r6, r4
0032a1e8  06 00 00 da                                      ble #0x32a208
0032a1ec  00 60 a0 e3                                      mov r6, #0
0032a1f0  06 30 d1 e7                                      ldrb r3, [r1, r6]
0032a1f4  06 30 c4 e7                                      strb r3, [r4, r6]
0032a1f8  01 60 86 e2                                      add r6, r6, #1
0032a1fc  02 00 56 e1                                      cmp r6, r2
0032a200  fa ff ff 1a                                      bne #0x32a1f0
0032a204  06 60 84 e0                                      add r6, r4, r6
0032a208  00 30 a0 e3                                      mov r3, #0
0032a20c  00 30 c6 e5                                      strb r3, [r6]
0032a210  05 00 a0 e1                                      mov r0, r5
0032a214  e4 a5 ff eb                                      bl #0x3139ac
0032a218  14 40 85 e5                                      str r4, [r5, #0x14]
0032a21c  00 70 85 e5                                      str r7, [r5]
0032a220  10 60 85 e5                                      str r6, [r5, #0x10]
0032a224  0c d0 8d e2                                      add sp, sp, #0xc
0032a228  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0032a22c  80 00 57 e3                                      cmp r7, #0x80
0032a230  04 70 8d e5                                      str r7, [sp, #4]
0032a234  05 00 00 8a                                      bhi #0x32a250
0032a238  04 00 8d e2                                      add r0, sp, #4
0032a23c  1f 7b 0f eb                                      bl #0x708ec0
0032a240  04 70 9d e5                                      ldr r7, [sp, #4]
0032a244  00 40 a0 e1                                      mov r4, r0
0032a248  07 70 80 e0                                      add r7, r0, r7
0032a24c  e0 ff ff ea                                      b #0x32a1d4
0032a250  07 00 a0 e1                                      mov r0, r7
0032a254  7e 98 ff eb                                      bl #0x310454
0032a258  f8 ff ff ea                                      b #0x32a240

; FUNCTION 0x0032a25c, declared_size=104, range_size=104, mode=arm
; class-group: std::basic_string<char, std::char_traits<char>, std::allocator<char> >
; alias: _ZNSs9push_backEc
; demangled: std::basic_string<char, std::char_traits<char>, std::allocator<char> >::push_back(char)
; decoder-mode: arm
0032a25c  70 40 2d e9                                      push {r4, r5, r6, lr}
0032a260  14 30 90 e5                                      ldr r3, [r0, #0x14]
0032a264  01 50 a0 e1                                      mov r5, r1
0032a268  00 40 a0 e1                                      mov r4, r0
0032a26c  00 00 53 e1                                      cmp r3, r0
0032a270  10 30 90 05                                      ldreq r3, [r0, #0x10]
0032a274  00 10 90 15                                      ldrne r1, [r0]
0032a278  10 30 90 15                                      ldrne r3, [r0, #0x10]
0032a27c  10 10 80 02                                      addeq r1, r0, #0x10
0032a280  01 10 63 e0                                      rsb r1, r3, r1
0032a284  01 00 51 e3                                      cmp r1, #1
0032a288  07 00 00 0a                                      beq #0x32a2ac
0032a28c  00 20 a0 e3                                      mov r2, #0
0032a290  01 20 c3 e5                                      strb r2, [r3, #1]
0032a294  10 30 94 e5                                      ldr r3, [r4, #0x10]
0032a298  00 50 c3 e5                                      strb r5, [r3]
0032a29c  10 30 94 e5                                      ldr r3, [r4, #0x10]
0032a2a0  01 30 83 e2                                      add r3, r3, #1
0032a2a4  10 30 84 e5                                      str r3, [r4, #0x10]
0032a2a8  70 80 bd e8                                      pop {r4, r5, r6, pc}
0032a2ac  3b 99 ff eb                                      bl #0x3107a0
0032a2b0  00 10 a0 e1                                      mov r1, r0
0032a2b4  04 00 a0 e1                                      mov r0, r4
0032a2b8  bf ff ff eb                                      bl #0x32a1bc
0032a2bc  10 30 94 e5                                      ldr r3, [r4, #0x10]
0032a2c0  f1 ff ff ea                                      b #0x32a28c

; FUNCTION 0x0032a388, declared_size=236, range_size=236, mode=arm
; class-group: std::basic_string<char, std::char_traits<char>, std::allocator<char> >
; alias: _ZNSs6appendEjc
; demangled: std::basic_string<char, std::char_traits<char>, std::allocator<char> >::append(unsigned int, char)
; decoder-mode: arm
0032a388  70 40 2d e9                                      push {r4, r5, r6, lr}
0032a38c  00 50 51 e2                                      subs r5, r1, #0
0032a390  00 40 a0 e1                                      mov r4, r0
0032a394  02 60 a0 e1                                      mov r6, r2
0032a398  1e 00 00 0a                                      beq #0x32a418
0032a39c  10 30 90 e5                                      ldr r3, [r0, #0x10]
0032a3a0  14 10 90 e5                                      ldr r1, [r0, #0x14]
0032a3a4  fe 2f 0f e3                                      movw r2, #0xfffe
0032a3a8  ff 2f 4f e3                                      movt r2, #0xffff
0032a3ac  03 00 61 e0                                      rsb r0, r1, r3
0032a3b0  02 20 60 e0                                      rsb r2, r0, r2
0032a3b4  02 00 55 e1                                      cmp r5, r2
0032a3b8  20 00 00 8a                                      bhi #0x32a440
0032a3bc  01 00 54 e1                                      cmp r4, r1
0032a3c0  00 20 94 15                                      ldrne r2, [r4]
0032a3c4  10 20 84 02                                      addeq r2, r4, #0x10
0032a3c8  02 20 63 e0                                      rsb r2, r3, r2
0032a3cc  02 00 55 e1                                      cmp r5, r2
0032a3d0  12 00 00 2a                                      bhs #0x32a420
0032a3d4  01 20 83 e2                                      add r2, r3, #1
0032a3d8  05 10 83 e0                                      add r1, r3, r5
0032a3dc  01 20 62 e0                                      rsb r2, r2, r1
0032a3e0  00 00 52 e3                                      cmp r2, #0
0032a3e4  04 00 00 da                                      ble #0x32a3fc
0032a3e8  02 20 83 e0                                      add r2, r3, r2
0032a3ec  01 60 e3 e5                                      strb r6, [r3, #1]!
0032a3f0  02 00 53 e1                                      cmp r3, r2
0032a3f4  fc ff ff 1a                                      bne #0x32a3ec
0032a3f8  10 30 94 e5                                      ldr r3, [r4, #0x10]
0032a3fc  00 20 a0 e3                                      mov r2, #0
0032a400  05 20 c3 e7                                      strb r2, [r3, r5]
0032a404  10 30 94 e5                                      ldr r3, [r4, #0x10]
0032a408  00 60 c3 e5                                      strb r6, [r3]
0032a40c  10 30 94 e5                                      ldr r3, [r4, #0x10]
0032a410  05 50 83 e0                                      add r5, r3, r5
0032a414  10 50 84 e5                                      str r5, [r4, #0x10]
0032a418  04 00 a0 e1                                      mov r0, r4
0032a41c  70 80 bd e8                                      pop {r4, r5, r6, pc}
0032a420  05 10 a0 e1                                      mov r1, r5
0032a424  04 00 a0 e1                                      mov r0, r4
0032a428  dc 98 ff eb                                      bl #0x3107a0
0032a42c  00 10 a0 e1                                      mov r1, r0
0032a430  04 00 a0 e1                                      mov r0, r4
0032a434  60 ff ff eb                                      bl #0x32a1bc
0032a438  10 30 94 e5                                      ldr r3, [r4, #0x10]
0032a43c  e4 ff ff ea                                      b #0x32a3d4
0032a440  28 00 9f e5                                      ldr r0, [pc, #0x28]
0032a444  00 00 8f e0                                      add r0, pc, r0
0032a448  7c 7a 0f eb                                      bl #0x708e40
0032a44c  14 10 94 e5                                      ldr r1, [r4, #0x14]
0032a450  10 30 94 e5                                      ldr r3, [r4, #0x10]
0032a454  01 00 54 e1                                      cmp r4, r1
0032a458  00 20 94 15                                      ldrne r2, [r4]
0032a45c  10 20 84 02                                      addeq r2, r4, #0x10
0032a460  02 20 63 e0                                      rsb r2, r3, r2
0032a464  02 00 55 e1                                      cmp r5, r2
0032a468  d9 ff ff 3a                                      blo #0x32a3d4
0032a46c  eb ff ff ea                                      b #0x32a420
; mapping-symbol data/literal pool
0032a470  14 40 59 00                                      .byte 0x14, 0x40, 0x59, 0x00

; FUNCTION 0x0032a570, declared_size=104, range_size=104, mode=arm
; class-group: std::basic_string<char, std::char_traits<char>, std::allocator<char> >
; alias: _ZNSs7reserveEj
; demangled: std::basic_string<char, std::char_traits<char>, std::allocator<char> >::reserve(unsigned int)
; decoder-mode: arm
0032a570  01 00 71 e3                                      cmn r1, #1
0032a574  70 40 2d e9                                      push {r4, r5, r6, lr}
0032a578  01 50 a0 e1                                      mov r5, r1
0032a57c  00 40 a0 e1                                      mov r4, r0
0032a580  0f 00 00 0a                                      beq #0x32a5c4
0032a584  14 30 94 e5                                      ldr r3, [r4, #0x14]
0032a588  10 10 94 e5                                      ldr r1, [r4, #0x10]
0032a58c  01 10 63 e0                                      rsb r1, r3, r1
0032a590  01 00 55 e1                                      cmp r5, r1
0032a594  01 50 a0 31                                      movlo r5, r1
0032a598  04 00 53 e1                                      cmp r3, r4
0032a59c  00 20 94 15                                      ldrne r2, [r4]
0032a5a0  01 10 85 e2                                      add r1, r5, #1
0032a5a4  10 30 a0 03                                      moveq r3, #0x10
0032a5a8  02 30 63 10                                      rsbne r3, r3, r2
0032a5ac  03 00 51 e1                                      cmp r1, r3
0032a5b0  00 00 00 2a                                      bhs #0x32a5b8
0032a5b4  70 80 bd e8                                      pop {r4, r5, r6, pc}
0032a5b8  04 00 a0 e1                                      mov r0, r4
0032a5bc  70 40 bd e8                                      pop {r4, r5, r6, lr}
0032a5c0  fd fe ff ea                                      b #0x32a1bc
0032a5c4  08 00 9f e5                                      ldr r0, [pc, #8]
0032a5c8  00 00 8f e0                                      add r0, pc, r0
0032a5cc  1b 7a 0f eb                                      bl #0x708e40
0032a5d0  eb ff ff ea                                      b #0x32a584
; mapping-symbol data/literal pool
0032a5d4  90 3e 59 00                                      .byte 0x90, 0x3e, 0x59, 0x00

; FUNCTION 0x0032b918, declared_size=36, range_size=36, mode=arm
; class-group: std::basic_string<char, std::char_traits<char>, std::allocator<char> >
; alias: _ZNSsC1ERKSs
; demangled: std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&)
; decoder-mode: arm
0032b918  10 40 2d e9                                      push {r4, lr}
0032b91c  00 40 a0 e1                                      mov r4, r0
0032b920  10 00 84 e5                                      str r0, [r4, #0x10]
0032b924  14 00 84 e5                                      str r0, [r4, #0x14]
0032b928  10 20 91 e5                                      ldr r2, [r1, #0x10]
0032b92c  14 10 91 e5                                      ldr r1, [r1, #0x14]
0032b930  6c 97 ff eb                                      bl #0x3116e8
0032b934  04 00 a0 e1                                      mov r0, r4
0032b938  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0033076c, declared_size=40, range_size=40, mode=arm
; class-group: std::basic_string<char, std::char_traits<char>, std::allocator<char> >
; alias: _ZNSsaSEPKc
; demangled: std::basic_string<char, std::char_traits<char>, std::allocator<char> >::operator=(char const*)
; decoder-mode: arm
0033076c  70 40 2d e9                                      push {r4, r5, r6, lr}
00330770  00 40 a0 e1                                      mov r4, r0
00330774  01 00 a0 e1                                      mov r0, r1
00330778  01 50 a0 e1                                      mov r5, r1
0033077c  b4 75 ff eb                                      bl #0x30de54
00330780  05 10 a0 e1                                      mov r1, r5
00330784  00 20 85 e0                                      add r2, r5, r0
00330788  04 00 a0 e1                                      mov r0, r4
0033078c  70 40 bd e8                                      pop {r4, r5, r6, lr}
00330790  92 80 ff ea                                      b #0x3109e0

; FUNCTION 0x0033c518, declared_size=80, range_size=80, mode=arm
; class-group: std::basic_string<char, std::char_traits<char>, std::allocator<char> >
; alias: _ZNSs19_M_range_initializeEPKcS0_.clone.6
; demangled: std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_range_initialize(char const*, char const*) [clone .clone.6]
; decoder-mode: arm
0033c518  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0033c51c  40 60 9f e5                                      ldr r6, [pc, #0x40]
0033c520  01 70 a0 e1                                      mov r7, r1
0033c524  00 50 a0 e1                                      mov r5, r0
0033c528  06 60 8f e0                                      add r6, pc, r6
0033c52c  01 40 66 e0                                      rsb r4, r6, r1
0033c530  01 10 84 e2                                      add r1, r4, #1
0033c534  50 54 ff eb                                      bl #0x31167c
0033c538  06 00 57 e1                                      cmp r7, r6
0033c53c  14 00 95 e5                                      ldr r0, [r5, #0x14]
0033c540  03 00 00 0a                                      beq #0x33c554
0033c544  06 10 a0 e1                                      mov r1, r6
0033c548  04 20 a0 e1                                      mov r2, r4
0033c54c  c5 48 ff eb                                      bl #0x30e868
0033c550  04 00 80 e0                                      add r0, r0, r4
0033c554  00 30 a0 e3                                      mov r3, #0
0033c558  10 00 85 e5                                      str r0, [r5, #0x10]
0033c55c  00 30 c0 e5                                      strb r3, [r0]
0033c560  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0033c564  98 3b 58 00                                      .byte 0x98, 0x3b, 0x58, 0x00

; FUNCTION 0x0033ce64, declared_size=80, range_size=80, mode=arm
; class-group: std::basic_string<char, std::char_traits<char>, std::allocator<char> >
; alias: _ZNSs19_M_range_initializeEPKcS0_.clone.0
; demangled: std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_range_initialize(char const*, char const*) [clone .clone.0]
; decoder-mode: arm
0033ce64  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0033ce68  40 60 9f e5                                      ldr r6, [pc, #0x40]
0033ce6c  01 70 a0 e1                                      mov r7, r1
0033ce70  00 50 a0 e1                                      mov r5, r0
0033ce74  06 60 8f e0                                      add r6, pc, r6
0033ce78  01 40 66 e0                                      rsb r4, r6, r1
0033ce7c  01 10 84 e2                                      add r1, r4, #1
0033ce80  fd 51 ff eb                                      bl #0x31167c
0033ce84  06 00 57 e1                                      cmp r7, r6
0033ce88  14 00 95 e5                                      ldr r0, [r5, #0x14]
0033ce8c  03 00 00 0a                                      beq #0x33cea0
0033ce90  06 10 a0 e1                                      mov r1, r6
0033ce94  04 20 a0 e1                                      mov r2, r4
0033ce98  72 46 ff eb                                      bl #0x30e868
0033ce9c  04 00 80 e0                                      add r0, r0, r4
0033cea0  00 30 a0 e3                                      mov r3, #0
0033cea4  10 00 85 e5                                      str r0, [r5, #0x10]
0033cea8  00 30 c0 e5                                      strb r3, [r0]
0033ceac  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0033ceb0  6c 32 58 00                                      .byte 0x6c, 0x32, 0x58, 0x00

; FUNCTION 0x0034c3c0, declared_size=80, range_size=80, mode=arm
; class-group: std::basic_string<char, std::char_traits<char>, std::allocator<char> >
; alias: _ZNSs19_M_range_initializeEPKcS0_.clone.0
; demangled: std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_range_initialize(char const*, char const*) [clone .clone.0]
; decoder-mode: arm
0034c3c0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0034c3c4  40 60 9f e5                                      ldr r6, [pc, #0x40]
0034c3c8  01 70 a0 e1                                      mov r7, r1
0034c3cc  00 50 a0 e1                                      mov r5, r0
0034c3d0  06 60 8f e0                                      add r6, pc, r6
0034c3d4  01 40 66 e0                                      rsb r4, r6, r1
0034c3d8  01 10 84 e2                                      add r1, r4, #1
0034c3dc  a6 14 ff eb                                      bl #0x31167c
0034c3e0  06 00 57 e1                                      cmp r7, r6
0034c3e4  14 00 95 e5                                      ldr r0, [r5, #0x14]
0034c3e8  03 00 00 0a                                      beq #0x34c3fc
0034c3ec  06 10 a0 e1                                      mov r1, r6
0034c3f0  04 20 a0 e1                                      mov r2, r4
0034c3f4  1b 09 ff eb                                      bl #0x30e868
0034c3f8  04 00 80 e0                                      add r0, r0, r4
0034c3fc  00 30 a0 e3                                      mov r3, #0
0034c400  10 00 85 e5                                      str r0, [r5, #0x10]
0034c404  00 30 c0 e5                                      strb r3, [r0]
0034c408  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0034c40c  60 42 57 00                                      .byte 0x60, 0x42, 0x57, 0x00

; FUNCTION 0x0035ee54, declared_size=80, range_size=80, mode=arm
; class-group: std::basic_string<char, std::char_traits<char>, std::allocator<char> >
; alias: _ZNSs19_M_range_initializeEPKcS0_.clone.6
; demangled: std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_range_initialize(char const*, char const*) [clone .clone.6]
; decoder-mode: arm
0035ee54  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0035ee58  40 60 9f e5                                      ldr r6, [pc, #0x40]
0035ee5c  01 70 a0 e1                                      mov r7, r1
0035ee60  00 50 a0 e1                                      mov r5, r0
0035ee64  06 60 8f e0                                      add r6, pc, r6
0035ee68  01 40 66 e0                                      rsb r4, r6, r1
0035ee6c  01 10 84 e2                                      add r1, r4, #1
0035ee70  01 ca fe eb                                      bl #0x31167c
0035ee74  06 00 57 e1                                      cmp r7, r6
0035ee78  14 00 95 e5                                      ldr r0, [r5, #0x14]
0035ee7c  03 00 00 0a                                      beq #0x35ee90
0035ee80  06 10 a0 e1                                      mov r1, r6
0035ee84  04 20 a0 e1                                      mov r2, r4
0035ee88  76 be fe eb                                      bl #0x30e868
0035ee8c  04 00 80 e0                                      add r0, r0, r4
0035ee90  00 30 a0 e3                                      mov r3, #0
0035ee94  10 00 85 e5                                      str r0, [r5, #0x10]
0035ee98  00 30 c0 e5                                      strb r3, [r0]
0035ee9c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0035eea0  ec 0b 56 00                                      .byte 0xec, 0x0b, 0x56, 0x00

; FUNCTION 0x00362dcc, declared_size=80, range_size=80, mode=arm
; class-group: std::basic_string<char, std::char_traits<char>, std::allocator<char> >
; alias: _ZNSs19_M_range_initializeEPKcS0_.clone.3
; demangled: std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_range_initialize(char const*, char const*) [clone .clone.3]
; decoder-mode: arm
00362dcc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00362dd0  40 60 9f e5                                      ldr r6, [pc, #0x40]
00362dd4  01 70 a0 e1                                      mov r7, r1
00362dd8  00 50 a0 e1                                      mov r5, r0
00362ddc  06 60 8f e0                                      add r6, pc, r6
00362de0  01 40 66 e0                                      rsb r4, r6, r1
00362de4  01 10 84 e2                                      add r1, r4, #1
00362de8  23 ba fe eb                                      bl #0x31167c
00362dec  06 00 57 e1                                      cmp r7, r6
00362df0  14 00 95 e5                                      ldr r0, [r5, #0x14]
00362df4  03 00 00 0a                                      beq #0x362e08
00362df8  06 10 a0 e1                                      mov r1, r6
00362dfc  04 20 a0 e1                                      mov r2, r4
00362e00  98 ae fe eb                                      bl #0x30e868
00362e04  04 00 80 e0                                      add r0, r0, r4
00362e08  00 30 a0 e3                                      mov r3, #0
00362e0c  10 00 85 e5                                      str r0, [r5, #0x10]
00362e10  00 30 c0 e5                                      strb r3, [r0]
00362e14  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00362e18  9c cc 55 00                                      .byte 0x9c, 0xcc, 0x55, 0x00

; FUNCTION 0x00379ef8, declared_size=40, range_size=40, mode=arm
; class-group: std::basic_string<char, std::char_traits<char>, std::allocator<char> >
; alias: _ZNSspLEPKc
; demangled: std::basic_string<char, std::char_traits<char>, std::allocator<char> >::operator+=(char const*)
; decoder-mode: arm
00379ef8  70 40 2d e9                                      push {r4, r5, r6, lr}
00379efc  00 40 a0 e1                                      mov r4, r0
00379f00  01 00 a0 e1                                      mov r0, r1
00379f04  01 50 a0 e1                                      mov r5, r1
00379f08  d1 4f fe eb                                      bl #0x30de54
00379f0c  05 10 a0 e1                                      mov r1, r5
00379f10  00 20 85 e0                                      add r2, r5, r0
00379f14  04 00 a0 e1                                      mov r0, r4
00379f18  70 40 bd e8                                      pop {r4, r5, r6, lr}
00379f1c  38 5a fe ea                                      b #0x310804

; FUNCTION 0x00384410, declared_size=80, range_size=80, mode=arm
; class-group: std::basic_string<char, std::char_traits<char>, std::allocator<char> >
; alias: _ZNSs19_M_range_initializeEPKcS0_.clone.2
; demangled: std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_range_initialize(char const*, char const*) [clone .clone.2]
; decoder-mode: arm
00384410  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00384414  40 60 9f e5                                      ldr r6, [pc, #0x40]
00384418  01 70 a0 e1                                      mov r7, r1
0038441c  00 50 a0 e1                                      mov r5, r0
00384420  06 60 8f e0                                      add r6, pc, r6
00384424  01 40 66 e0                                      rsb r4, r6, r1
00384428  01 10 84 e2                                      add r1, r4, #1
0038442c  92 34 fe eb                                      bl #0x31167c
00384430  06 00 57 e1                                      cmp r7, r6
00384434  14 00 95 e5                                      ldr r0, [r5, #0x14]
00384438  03 00 00 0a                                      beq #0x38444c
0038443c  06 10 a0 e1                                      mov r1, r6
00384440  04 20 a0 e1                                      mov r2, r4
00384444  07 29 fe eb                                      bl #0x30e868
00384448  04 00 80 e0                                      add r0, r0, r4
0038444c  00 30 a0 e3                                      mov r3, #0
00384450  10 00 85 e5                                      str r0, [r5, #0x10]
00384454  00 30 c0 e5                                      strb r3, [r0]
00384458  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0038445c  a0 d9 53 00                                      .byte 0xa0, 0xd9, 0x53, 0x00

; FUNCTION 0x003865e0, declared_size=80, range_size=80, mode=arm
; class-group: std::basic_string<char, std::char_traits<char>, std::allocator<char> >
; alias: _ZNSs19_M_range_initializeEPKcS0_.clone.2
; demangled: std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_range_initialize(char const*, char const*) [clone .clone.2]
; decoder-mode: arm
003865e0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003865e4  40 60 9f e5                                      ldr r6, [pc, #0x40]
003865e8  01 70 a0 e1                                      mov r7, r1
003865ec  00 50 a0 e1                                      mov r5, r0
003865f0  06 60 8f e0                                      add r6, pc, r6
003865f4  01 40 66 e0                                      rsb r4, r6, r1
003865f8  01 10 84 e2                                      add r1, r4, #1
003865fc  1e 2c fe eb                                      bl #0x31167c
00386600  06 00 57 e1                                      cmp r7, r6
00386604  14 00 95 e5                                      ldr r0, [r5, #0x14]
00386608  03 00 00 0a                                      beq #0x38661c
0038660c  06 10 a0 e1                                      mov r1, r6
00386610  04 20 a0 e1                                      mov r2, r4
00386614  93 20 fe eb                                      bl #0x30e868
00386618  04 00 80 e0                                      add r0, r0, r4
0038661c  00 30 a0 e3                                      mov r3, #0
00386620  10 00 85 e5                                      str r0, [r5, #0x10]
00386624  00 30 c0 e5                                      strb r3, [r0]
00386628  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0038662c  00 ba 53 00                                      .byte 0x00, 0xba, 0x53, 0x00

; FUNCTION 0x003a5720, declared_size=100, range_size=100, mode=arm
; class-group: std::basic_string<char, std::char_traits<char>, std::allocator<char> >
; alias: _ZNKSs7compareEPKc
; demangled: std::basic_string<char, std::char_traits<char>, std::allocator<char> >::compare(char const*) const
; decoder-mode: arm
003a5720  70 40 2d e9                                      push {r4, r5, r6, lr}
003a5724  00 40 a0 e1                                      mov r4, r0
003a5728  01 00 a0 e1                                      mov r0, r1
003a572c  01 60 a0 e1                                      mov r6, r1
003a5730  c7 a1 fd eb                                      bl #0x30de54
003a5734  14 30 94 e5                                      ldr r3, [r4, #0x14]
003a5738  10 50 94 e5                                      ldr r5, [r4, #0x10]
003a573c  06 10 a0 e1                                      mov r1, r6
003a5740  00 40 a0 e1                                      mov r4, r0
003a5744  05 50 63 e0                                      rsb r5, r3, r5
003a5748  05 00 50 e1                                      cmp r0, r5
003a574c  00 20 a0 b1                                      movlt r2, r0
003a5750  05 20 a0 a1                                      movge r2, r5
003a5754  03 00 a0 e1                                      mov r0, r3
003a5758  a0 a3 fd eb                                      bl #0x30e5e0
003a575c  00 00 50 e3                                      cmp r0, #0
003a5760  00 00 00 0a                                      beq #0x3a5768
003a5764  70 80 bd e8                                      pop {r4, r5, r6, pc}
003a5768  04 00 55 e1                                      cmp r5, r4
003a576c  02 00 00 ba                                      blt #0x3a577c
003a5770  00 00 a0 d3                                      movle r0, #0
003a5774  01 00 a0 c3                                      movgt r0, #1
003a5778  f9 ff ff ea                                      b #0x3a5764
003a577c  00 00 e0 e3                                      mvn r0, #0
003a5780  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x003bcc08, declared_size=80, range_size=80, mode=arm
; class-group: std::basic_string<char, std::char_traits<char>, std::allocator<char> >
; alias: _ZNSs19_M_range_initializeEPKcS0_.clone.2
; demangled: std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_range_initialize(char const*, char const*) [clone .clone.2]
; decoder-mode: arm
003bcc08  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003bcc0c  40 60 9f e5                                      ldr r6, [pc, #0x40]
003bcc10  01 70 a0 e1                                      mov r7, r1
003bcc14  00 50 a0 e1                                      mov r5, r0
003bcc18  06 60 8f e0                                      add r6, pc, r6
003bcc1c  01 40 66 e0                                      rsb r4, r6, r1
003bcc20  01 10 84 e2                                      add r1, r4, #1
003bcc24  94 52 fd eb                                      bl #0x31167c
003bcc28  06 00 57 e1                                      cmp r7, r6
003bcc2c  14 00 95 e5                                      ldr r0, [r5, #0x14]
003bcc30  03 00 00 0a                                      beq #0x3bcc44
003bcc34  06 10 a0 e1                                      mov r1, r6
003bcc38  04 20 a0 e1                                      mov r2, r4
003bcc3c  09 47 fd eb                                      bl #0x30e868
003bcc40  04 00 80 e0                                      add r0, r0, r4
003bcc44  00 30 a0 e3                                      mov r3, #0
003bcc48  10 00 85 e5                                      str r0, [r5, #0x10]
003bcc4c  00 30 c0 e5                                      strb r3, [r0]
003bcc50  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
003bcc54  78 7c 50 00                                      .byte 0x78, 0x7c, 0x50, 0x00

; FUNCTION 0x003d43ec, declared_size=72, range_size=72, mode=arm
; class-group: std::basic_string<char, std::char_traits<char>, std::allocator<char> >
; alias: _ZNSsC1EPKcRKSaIcE.clone.1
; demangled: std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&) [clone .clone.1]
; decoder-mode: arm
003d43ec  10 40 2d e9                                      push {r4, lr}
003d43f0  00 40 a0 e1                                      mov r4, r0
003d43f4  10 00 84 e5                                      str r0, [r4, #0x10]
003d43f8  14 00 84 e5                                      str r0, [r4, #0x14]
003d43fc  1a 10 a0 e3                                      mov r1, #0x1a
003d4400  9d f4 fc eb                                      bl #0x31167c
003d4404  24 10 9f e5                                      ldr r1, [pc, #0x24]
003d4408  14 00 94 e5                                      ldr r0, [r4, #0x14]
003d440c  19 20 a0 e3                                      mov r2, #0x19
003d4410  01 10 8f e0                                      add r1, pc, r1
003d4414  13 e9 fc eb                                      bl #0x30e868
003d4418  19 30 80 e2                                      add r3, r0, #0x19
003d441c  10 30 84 e5                                      str r3, [r4, #0x10]
003d4420  00 30 a0 e3                                      mov r3, #0
003d4424  19 30 c0 e5                                      strb r3, [r0, #0x19]
003d4428  04 00 a0 e1                                      mov r0, r4
003d442c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003d4430  10 11 4f 00                                      .byte 0x10, 0x11, 0x4f, 0x00

; FUNCTION 0x003db5f0, declared_size=80, range_size=80, mode=arm
; class-group: std::basic_string<char, std::char_traits<char>, std::allocator<char> >
; alias: _ZNSs19_M_range_initializeEPKcS0_.clone.3
; demangled: std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_range_initialize(char const*, char const*) [clone .clone.3]
; decoder-mode: arm
003db5f0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003db5f4  40 60 9f e5                                      ldr r6, [pc, #0x40]
003db5f8  01 70 a0 e1                                      mov r7, r1
003db5fc  00 50 a0 e1                                      mov r5, r0
003db600  06 60 8f e0                                      add r6, pc, r6
003db604  01 40 66 e0                                      rsb r4, r6, r1
003db608  01 10 84 e2                                      add r1, r4, #1
003db60c  1a d8 fc eb                                      bl #0x31167c
003db610  06 00 57 e1                                      cmp r7, r6
003db614  14 00 95 e5                                      ldr r0, [r5, #0x14]
003db618  03 00 00 0a                                      beq #0x3db62c
003db61c  06 10 a0 e1                                      mov r1, r6
003db620  04 20 a0 e1                                      mov r2, r4
003db624  8f cc fc eb                                      bl #0x30e868
003db628  04 00 80 e0                                      add r0, r0, r4
003db62c  00 30 a0 e3                                      mov r3, #0
003db630  10 00 85 e5                                      str r0, [r5, #0x10]
003db634  00 30 c0 e5                                      strb r3, [r0]
003db638  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
003db63c  48 a3 4e 00                                      .byte 0x48, 0xa3, 0x4e, 0x00

; FUNCTION 0x003e91f0, declared_size=72, range_size=72, mode=arm
; class-group: std::basic_string<char, std::char_traits<char>, std::allocator<char> >
; alias: _ZNSsC1EPKcRKSaIcE.clone.2
; demangled: std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&) [clone .clone.2]
; decoder-mode: arm
003e91f0  10 40 2d e9                                      push {r4, lr}
003e91f4  00 40 a0 e1                                      mov r4, r0
003e91f8  10 00 84 e5                                      str r0, [r4, #0x10]
003e91fc  14 00 84 e5                                      str r0, [r4, #0x14]
003e9200  1b 10 a0 e3                                      mov r1, #0x1b
003e9204  1c a1 fc eb                                      bl #0x31167c
003e9208  24 10 9f e5                                      ldr r1, [pc, #0x24]
003e920c  14 00 94 e5                                      ldr r0, [r4, #0x14]
003e9210  1a 20 a0 e3                                      mov r2, #0x1a
003e9214  01 10 8f e0                                      add r1, pc, r1
003e9218  92 95 fc eb                                      bl #0x30e868
003e921c  1a 30 80 e2                                      add r3, r0, #0x1a
003e9220  10 30 84 e5                                      str r3, [r4, #0x10]
003e9224  00 30 a0 e3                                      mov r3, #0
003e9228  1a 30 c0 e5                                      strb r3, [r0, #0x1a]
003e922c  04 00 a0 e1                                      mov r0, r4
003e9230  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003e9234  4c cf 4d 00                                      .byte 0x4c, 0xcf, 0x4d, 0x00

; FUNCTION 0x003f1b80, declared_size=40, range_size=40, mode=arm
; class-group: std::basic_string<char, std::char_traits<char>, std::allocator<char> >
; alias: _ZNSs6appendEPKc
; demangled: std::basic_string<char, std::char_traits<char>, std::allocator<char> >::append(char const*)
; decoder-mode: arm
003f1b80  70 40 2d e9                                      push {r4, r5, r6, lr}
003f1b84  00 40 a0 e1                                      mov r4, r0
003f1b88  01 00 a0 e1                                      mov r0, r1
003f1b8c  01 50 a0 e1                                      mov r5, r1
003f1b90  af 70 fc eb                                      bl #0x30de54
003f1b94  05 10 a0 e1                                      mov r1, r5
003f1b98  00 20 85 e0                                      add r2, r5, r0
003f1b9c  04 00 a0 e1                                      mov r0, r4
003f1ba0  70 40 bd e8                                      pop {r4, r5, r6, lr}
003f1ba4  16 7b fc ea                                      b #0x310804

; FUNCTION 0x003f1ba8, declared_size=664, range_size=664, mode=arm
; class-group: std::basic_string<char, std::char_traits<char>, std::allocator<char> >
; alias: _ZNSs9_M_insertEPcPKcS1_b
; demangled: std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_insert(char*, char const*, char const*, bool)
; decoder-mode: arm
003f1ba8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003f1bac  03 00 52 e1                                      cmp r2, r3
003f1bb0  14 d0 4d e2                                      sub sp, sp, #0x14
003f1bb4  02 40 a0 e1                                      mov r4, r2
003f1bb8  00 80 a0 e1                                      mov r8, r0
003f1bbc  01 50 a0 e1                                      mov r5, r1
003f1bc0  38 70 dd e5                                      ldrb r7, [sp, #0x38]
003f1bc4  28 00 00 0a                                      beq #0x3f1c6c
003f1bc8  14 20 90 e5                                      ldr r2, [r0, #0x14]
003f1bcc  03 60 64 e0                                      rsb r6, r4, r3
003f1bd0  00 00 52 e1                                      cmp r2, r0
003f1bd4  10 00 90 05                                      ldreq r0, [r0, #0x10]
003f1bd8  00 20 98 15                                      ldrne r2, [r8]
003f1bdc  10 00 98 15                                      ldrne r0, [r8, #0x10]
003f1be0  10 20 88 02                                      addeq r2, r8, #0x10
003f1be4  02 20 60 e0                                      rsb r2, r0, r2
003f1be8  02 00 56 e1                                      cmp r6, r2
003f1bec  4b 00 00 2a                                      bhs #0x3f1d20
003f1bf0  00 20 61 e0                                      rsb r2, r1, r0
003f1bf4  02 00 56 e1                                      cmp r6, r2
003f1bf8  00 10 a0 e1                                      mov r1, r0
003f1bfc  1c 00 00 8a                                      bhi #0x3f1c74
003f1c00  01 b0 66 e2                                      rsb fp, r6, #1
003f1c04  01 a0 6b e2                                      rsb sl, fp, #1
003f1c08  00 00 5a e3                                      cmp sl, #0
003f1c0c  0b 90 80 e0                                      add sb, r0, fp
003f1c10  06 00 00 da                                      ble #0x3f1c30
003f1c14  00 10 a0 e3                                      mov r1, #0
003f1c18  01 c0 d9 e7                                      ldrb ip, [sb, r1]
003f1c1c  01 10 81 e2                                      add r1, r1, #1
003f1c20  0a 00 51 e1                                      cmp r1, sl
003f1c24  01 c0 e0 e5                                      strb ip, [r0, #1]!
003f1c28  fa ff ff 1a                                      bne #0x3f1c18
003f1c2c  10 10 98 e5                                      ldr r1, [r8, #0x10]
003f1c30  06 10 81 e0                                      add r1, r1, r6
003f1c34  02 20 9b e0                                      adds r2, fp, r2
003f1c38  10 10 88 e5                                      str r1, [r8, #0x10]
003f1c3c  72 00 00 1a                                      bne #0x3f1e0c
003f1c40  00 00 57 e3                                      cmp r7, #0
003f1c44  2e 00 00 0a                                      beq #0x3f1d04
003f1c48  05 00 53 e1                                      cmp r3, r5
003f1c4c  2c 00 00 3a                                      blo #0x3f1d04
003f1c50  05 00 54 e1                                      cmp r4, r5
003f1c54  72 00 00 3a                                      blo #0x3f1e24
003f1c58  04 20 53 e0                                      subs r2, r3, r4
003f1c5c  06 10 84 e0                                      add r1, r4, r6
003f1c60  01 00 00 0a                                      beq #0x3f1c6c
003f1c64  05 00 a0 e1                                      mov r0, r5
003f1c68  fe 72 fc eb                                      bl #0x30e868
003f1c6c  14 d0 8d e2                                      add sp, sp, #0x14
003f1c70  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
003f1c74  01 c0 82 e2                                      add ip, r2, #1
003f1c78  0c c0 84 e0                                      add ip, r4, ip
003f1c7c  03 30 6c e0                                      rsb r3, ip, r3
003f1c80  00 00 53 e3                                      cmp r3, #0
003f1c84  01 a0 80 e2                                      add sl, r0, #1
003f1c88  06 00 00 da                                      ble #0x3f1ca8
003f1c8c  00 10 a0 e3                                      mov r1, #0
003f1c90  01 90 dc e7                                      ldrb sb, [ip, r1]
003f1c94  01 10 81 e2                                      add r1, r1, #1
003f1c98  03 00 51 e1                                      cmp r1, r3
003f1c9c  01 90 e0 e5                                      strb sb, [r0, #1]!
003f1ca0  fa ff ff 1a                                      bne #0x3f1c90
003f1ca4  10 10 98 e5                                      ldr r1, [r8, #0x10]
003f1ca8  06 60 62 e0                                      rsb r6, r2, r6
003f1cac  0a a0 65 e0                                      rsb sl, r5, sl
003f1cb0  06 10 81 e0                                      add r1, r1, r6
003f1cb4  00 00 5a e3                                      cmp sl, #0
003f1cb8  10 10 88 e5                                      str r1, [r8, #0x10]
003f1cbc  06 00 00 da                                      ble #0x3f1cdc
003f1cc0  00 30 a0 e3                                      mov r3, #0
003f1cc4  03 00 d5 e7                                      ldrb r0, [r5, r3]
003f1cc8  03 00 c1 e7                                      strb r0, [r1, r3]
003f1ccc  01 30 83 e2                                      add r3, r3, #1
003f1cd0  0a 00 53 e1                                      cmp r3, sl
003f1cd4  fa ff ff 1a                                      bne #0x3f1cc4
003f1cd8  10 10 98 e5                                      ldr r1, [r8, #0x10]
003f1cdc  02 10 81 e0                                      add r1, r1, r2
003f1ce0  00 00 57 e3                                      cmp r7, #0
003f1ce4  10 10 88 e5                                      str r1, [r8, #0x10]
003f1ce8  3a 00 00 1a                                      bne #0x3f1dd8
003f1cec  04 20 5c e0                                      subs r2, ip, r4
003f1cf0  dd ff ff 0a                                      beq #0x3f1c6c
003f1cf4  05 00 a0 e1                                      mov r0, r5
003f1cf8  04 10 a0 e1                                      mov r1, r4
003f1cfc  d9 72 fc eb                                      bl #0x30e868
003f1d00  d9 ff ff ea                                      b #0x3f1c6c
003f1d04  00 00 56 e3                                      cmp r6, #0
003f1d08  d7 ff ff 0a                                      beq #0x3f1c6c
003f1d0c  05 00 a0 e1                                      mov r0, r5
003f1d10  04 10 a0 e1                                      mov r1, r4
003f1d14  06 20 a0 e1                                      mov r2, r6
003f1d18  d2 72 fc eb                                      bl #0x30e868
003f1d1c  d2 ff ff ea                                      b #0x3f1c6c
003f1d20  08 00 a0 e1                                      mov r0, r8
003f1d24  06 10 a0 e1                                      mov r1, r6
003f1d28  9c 7a fc eb                                      bl #0x3107a0
003f1d2c  00 90 50 e2                                      subs sb, r0, #0
003f1d30  09 a0 a0 01                                      moveq sl, sb
003f1d34  2d 00 00 1a                                      bne #0x3f1df0
003f1d38  14 10 98 e5                                      ldr r1, [r8, #0x14]
003f1d3c  05 20 61 e0                                      rsb r2, r1, r5
003f1d40  00 00 52 e3                                      cmp r2, #0
003f1d44  0a 70 a0 d1                                      movle r7, sl
003f1d48  06 00 00 da                                      ble #0x3f1d68
003f1d4c  00 70 a0 e3                                      mov r7, #0
003f1d50  07 30 d1 e7                                      ldrb r3, [r1, r7]
003f1d54  07 30 ca e7                                      strb r3, [sl, r7]
003f1d58  01 70 87 e2                                      add r7, r7, #1
003f1d5c  02 00 57 e1                                      cmp r7, r2
003f1d60  fa ff ff 1a                                      bne #0x3f1d50
003f1d64  07 70 8a e0                                      add r7, sl, r7
003f1d68  00 00 56 e3                                      cmp r6, #0
003f1d6c  06 00 00 da                                      ble #0x3f1d8c
003f1d70  00 30 a0 e3                                      mov r3, #0
003f1d74  03 20 d4 e7                                      ldrb r2, [r4, r3]
003f1d78  03 20 c7 e7                                      strb r2, [r7, r3]
003f1d7c  01 30 83 e2                                      add r3, r3, #1
003f1d80  03 00 56 e1                                      cmp r6, r3
003f1d84  fa ff ff 1a                                      bne #0x3f1d74
003f1d88  06 70 87 e0                                      add r7, r7, r6
003f1d8c  10 10 98 e5                                      ldr r1, [r8, #0x10]
003f1d90  01 10 65 e0                                      rsb r1, r5, r1
003f1d94  00 00 51 e3                                      cmp r1, #0
003f1d98  06 00 00 da                                      ble #0x3f1db8
003f1d9c  00 30 a0 e3                                      mov r3, #0
003f1da0  03 20 d5 e7                                      ldrb r2, [r5, r3]
003f1da4  03 20 c7 e7                                      strb r2, [r7, r3]
003f1da8  01 30 83 e2                                      add r3, r3, #1
003f1dac  01 00 53 e1                                      cmp r3, r1
003f1db0  fa ff ff 1a                                      bne #0x3f1da0
003f1db4  03 70 87 e0                                      add r7, r7, r3
003f1db8  00 30 a0 e3                                      mov r3, #0
003f1dbc  00 30 c7 e5                                      strb r3, [r7]
003f1dc0  08 00 a0 e1                                      mov r0, r8
003f1dc4  f8 86 fc eb                                      bl #0x3139ac
003f1dc8  14 a0 88 e5                                      str sl, [r8, #0x14]
003f1dcc  00 90 88 e5                                      str sb, [r8]
003f1dd0  10 70 88 e5                                      str r7, [r8, #0x10]
003f1dd4  a4 ff ff ea                                      b #0x3f1c6c
003f1dd8  04 20 5c e0                                      subs r2, ip, r4
003f1ddc  a2 ff ff 0a                                      beq #0x3f1c6c
003f1de0  05 00 a0 e1                                      mov r0, r5
003f1de4  04 10 a0 e1                                      mov r1, r4
003f1de8  52 70 fc eb                                      bl #0x30df38
003f1dec  9e ff ff ea                                      b #0x3f1c6c
003f1df0  10 00 8d e2                                      add r0, sp, #0x10
003f1df4  04 90 20 e5                                      str sb, [r0, #-4]!
003f1df8  e5 86 fc eb                                      bl #0x313994
003f1dfc  0c 90 9d e5                                      ldr sb, [sp, #0xc]
003f1e00  00 a0 a0 e1                                      mov sl, r0
003f1e04  09 90 80 e0                                      add sb, r0, sb
003f1e08  ca ff ff ea                                      b #0x3f1d38
003f1e0c  06 00 85 e0                                      add r0, r5, r6
003f1e10  05 10 a0 e1                                      mov r1, r5
003f1e14  04 30 8d e5                                      str r3, [sp, #4]
003f1e18  46 70 fc eb                                      bl #0x30df38
003f1e1c  04 30 9d e5                                      ldr r3, [sp, #4]
003f1e20  86 ff ff ea                                      b #0x3f1c40
003f1e24  00 00 56 e3                                      cmp r6, #0
003f1e28  8f ff ff 0a                                      beq #0x3f1c6c
003f1e2c  05 00 a0 e1                                      mov r0, r5
003f1e30  04 10 a0 e1                                      mov r1, r4
003f1e34  06 20 a0 e1                                      mov r2, r6
003f1e38  3e 70 fc eb                                      bl #0x30df38
003f1e3c  8a ff ff ea                                      b #0x3f1c6c

; FUNCTION 0x003f1e40, declared_size=440, range_size=440, mode=arm
; class-group: std::basic_string<char, std::char_traits<char>, std::allocator<char> >
; alias: _ZNSs10_M_replaceEPcS_PKcS1_b
; demangled: std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_replace(char*, char*, char const*, char const*, bool)
; decoder-mode: arm
003f1e40  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003f1e44  0c d0 4d e2                                      sub sp, sp, #0xc
003f1e48  30 b0 9d e5                                      ldr fp, [sp, #0x30]
003f1e4c  02 80 61 e0                                      rsb r8, r1, r2
003f1e50  01 70 a0 e1                                      mov r7, r1
003f1e54  0b a0 63 e0                                      rsb sl, r3, fp
003f1e58  08 00 5a e1                                      cmp sl, r8
003f1e5c  02 40 a0 e1                                      mov r4, r2
003f1e60  03 50 a0 e1                                      mov r5, r3
003f1e64  00 60 a0 e1                                      mov r6, r0
003f1e68  34 90 dd e5                                      ldrb sb, [sp, #0x34]
003f1e6c  12 00 00 ca                                      bgt #0x3f1ebc
003f1e70  00 00 59 e3                                      cmp sb, #0
003f1e74  21 00 00 1a                                      bne #0x3f1f00
003f1e78  00 00 5a e3                                      cmp sl, #0
003f1e7c  42 00 00 1a                                      bne #0x3f1f8c
003f1e80  0a 70 87 e0                                      add r7, r7, sl
003f1e84  07 00 54 e1                                      cmp r4, r7
003f1e88  19 00 00 0a                                      beq #0x3f1ef4
003f1e8c  10 30 96 e5                                      ldr r3, [r6, #0x10]
003f1e90  01 20 83 e2                                      add r2, r3, #1
003f1e94  04 20 52 e0                                      subs r2, r2, r4
003f1e98  03 00 00 0a                                      beq #0x3f1eac
003f1e9c  07 00 a0 e1                                      mov r0, r7
003f1ea0  04 10 a0 e1                                      mov r1, r4
003f1ea4  23 70 fc eb                                      bl #0x30df38
003f1ea8  10 30 96 e5                                      ldr r3, [r6, #0x10]
003f1eac  07 70 64 e0                                      rsb r7, r4, r7
003f1eb0  07 30 83 e0                                      add r3, r3, r7
003f1eb4  10 30 86 e5                                      str r3, [r6, #0x10]
003f1eb8  0d 00 00 ea                                      b #0x3f1ef4
003f1ebc  00 00 59 e3                                      cmp sb, #0
003f1ec0  1d 00 00 1a                                      bne #0x3f1f3c
003f1ec4  08 80 85 e0                                      add r8, r5, r8
003f1ec8  05 20 58 e0                                      subs r2, r8, r5
003f1ecc  02 00 00 0a                                      beq #0x3f1edc
003f1ed0  07 00 a0 e1                                      mov r0, r7
003f1ed4  05 10 a0 e1                                      mov r1, r5
003f1ed8  62 72 fc eb                                      bl #0x30e868
003f1edc  04 10 a0 e1                                      mov r1, r4
003f1ee0  08 20 a0 e1                                      mov r2, r8
003f1ee4  0b 30 a0 e1                                      mov r3, fp
003f1ee8  06 00 a0 e1                                      mov r0, r6
003f1eec  00 90 8d e5                                      str sb, [sp]
003f1ef0  2c ff ff eb                                      bl #0x3f1ba8
003f1ef4  06 00 a0 e1                                      mov r0, r6
003f1ef8  0c d0 8d e2                                      add sp, sp, #0xc
003f1efc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
003f1f00  02 00 53 e1                                      cmp r3, r2
003f1f04  00 30 a0 33                                      movlo r3, #0
003f1f08  01 30 a0 23                                      movhs r3, #1
003f1f0c  01 00 5b e1                                      cmp fp, r1
003f1f10  03 b0 a0 21                                      movhs fp, r3
003f1f14  01 b0 83 33                                      orrlo fp, r3, #1
003f1f18  00 00 5b e3                                      cmp fp, #0
003f1f1c  d5 ff ff 1a                                      bne #0x3f1e78
003f1f20  00 00 5a e3                                      cmp sl, #0
003f1f24  d5 ff ff 0a                                      beq #0x3f1e80
003f1f28  05 10 a0 e1                                      mov r1, r5
003f1f2c  07 00 a0 e1                                      mov r0, r7
003f1f30  0a 20 a0 e1                                      mov r2, sl
003f1f34  ff 6f fc eb                                      bl #0x30df38
003f1f38  d0 ff ff ea                                      b #0x3f1e80
003f1f3c  02 00 53 e1                                      cmp r3, r2
003f1f40  00 30 a0 33                                      movlo r3, #0
003f1f44  01 30 a0 23                                      movhs r3, #1
003f1f48  01 00 5b e1                                      cmp fp, r1
003f1f4c  01 30 83 93                                      orrls r3, r3, #1
003f1f50  00 00 53 e3                                      cmp r3, #0
003f1f54  da ff ff 1a                                      bne #0x3f1ec4
003f1f58  01 00 55 e1                                      cmp r5, r1
003f1f5c  0f 00 00 3a                                      blo #0x3f1fa0
003f1f60  00 00 58 e3                                      cmp r8, #0
003f1f64  08 a0 85 e0                                      add sl, r5, r8
003f1f68  1d 00 00 1a                                      bne #0x3f1fe4
003f1f6c  01 c0 a0 e3                                      mov ip, #1
003f1f70  04 10 a0 e1                                      mov r1, r4
003f1f74  0a 20 a0 e1                                      mov r2, sl
003f1f78  0b 30 a0 e1                                      mov r3, fp
003f1f7c  06 00 a0 e1                                      mov r0, r6
003f1f80  00 c0 8d e5                                      str ip, [sp]
003f1f84  07 ff ff eb                                      bl #0x3f1ba8
003f1f88  d9 ff ff ea                                      b #0x3f1ef4
003f1f8c  05 10 a0 e1                                      mov r1, r5
003f1f90  07 00 a0 e1                                      mov r0, r7
003f1f94  0a 20 a0 e1                                      mov r2, sl
003f1f98  32 72 fc eb                                      bl #0x30e868
003f1f9c  b7 ff ff ea                                      b #0x3f1e80
003f1fa0  01 c0 a0 e3                                      mov ip, #1
003f1fa4  02 10 a0 e1                                      mov r1, r2
003f1fa8  0b 30 a0 e1                                      mov r3, fp
003f1fac  00 c0 8d e5                                      str ip, [sp]
003f1fb0  08 20 85 e0                                      add r2, r5, r8
003f1fb4  14 40 90 e5                                      ldr r4, [r0, #0x14]
003f1fb8  fa fe ff eb                                      bl #0x3f1ba8
003f1fbc  00 00 58 e3                                      cmp r8, #0
003f1fc0  14 30 96 e5                                      ldr r3, [r6, #0x14]
003f1fc4  ca ff ff 0a                                      beq #0x3f1ef4
003f1fc8  05 10 64 e0                                      rsb r1, r4, r5
003f1fcc  07 00 64 e0                                      rsb r0, r4, r7
003f1fd0  01 10 83 e0                                      add r1, r3, r1
003f1fd4  00 00 83 e0                                      add r0, r3, r0
003f1fd8  08 20 a0 e1                                      mov r2, r8
003f1fdc  d5 6f fc eb                                      bl #0x30df38
003f1fe0  c3 ff ff ea                                      b #0x3f1ef4
003f1fe4  01 00 a0 e1                                      mov r0, r1
003f1fe8  08 20 a0 e1                                      mov r2, r8
003f1fec  05 10 a0 e1                                      mov r1, r5
003f1ff0  d0 6f fc eb                                      bl #0x30df38
003f1ff4  dc ff ff ea                                      b #0x3f1f6c

; FUNCTION 0x003f1ff8, declared_size=200, range_size=200, mode=arm
; class-group: std::basic_string<char, std::char_traits<char>, std::allocator<char> >
; alias: _ZNSs7replaceEjjPKcj
; demangled: std::basic_string<char, std::char_traits<char>, std::allocator<char> >::replace(unsigned int, unsigned int, char const*, unsigned int)
; decoder-mode: arm
003f1ff8  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
003f1ffc  00 40 a0 e1                                      mov r4, r0
003f2000  10 70 90 e5                                      ldr r7, [r0, #0x10]
003f2004  14 00 90 e5                                      ldr r0, [r0, #0x14]
003f2008  0c d0 4d e2                                      sub sp, sp, #0xc
003f200c  01 50 a0 e1                                      mov r5, r1
003f2010  07 70 60 e0                                      rsb r7, r0, r7
003f2014  07 00 51 e1                                      cmp r1, r7
003f2018  02 80 a0 e1                                      mov r8, r2
003f201c  03 60 a0 e1                                      mov r6, r3
003f2020  28 a0 9d e5                                      ldr sl, [sp, #0x28]
003f2024  1b 00 00 8a                                      bhi #0x3f2098
003f2028  fe 3f 0f e3                                      movw r3, #0xfffe
003f202c  ff 3f 4f e3                                      movt r3, #0xffff
003f2030  07 20 65 e0                                      rsb r2, r5, r7
003f2034  02 00 58 e1                                      cmp r8, r2
003f2038  02 80 a0 21                                      movhs r8, r2
003f203c  03 30 67 e0                                      rsb r3, r7, r3
003f2040  08 30 83 e0                                      add r3, r3, r8
003f2044  0a 00 53 e1                                      cmp r3, sl
003f2048  16 00 00 3a                                      blo #0x3f20a8
003f204c  14 10 94 e5                                      ldr r1, [r4, #0x14]
003f2050  05 80 88 e0                                      add r8, r8, r5
003f2054  0a e0 86 e0                                      add lr, r6, sl
003f2058  01 00 56 e1                                      cmp r6, r1
003f205c  08 20 81 e0                                      add r2, r1, r8
003f2060  00 c0 a0 33                                      movlo ip, #0
003f2064  05 10 81 e0                                      add r1, r1, r5
003f2068  03 00 00 3a                                      blo #0x3f207c
003f206c  10 c0 94 e5                                      ldr ip, [r4, #0x10]
003f2070  0c 00 56 e1                                      cmp r6, ip
003f2074  00 c0 a0 23                                      movhs ip, #0
003f2078  01 c0 a0 33                                      movlo ip, #1
003f207c  04 00 a0 e1                                      mov r0, r4
003f2080  06 30 a0 e1                                      mov r3, r6
003f2084  00 e0 8d e5                                      str lr, [sp]
003f2088  04 c0 8d e5                                      str ip, [sp, #4]
003f208c  6b ff ff eb                                      bl #0x3f1e40
003f2090  0c d0 8d e2                                      add sp, sp, #0xc
003f2094  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
003f2098  18 00 9f e5                                      ldr r0, [pc, #0x18]
003f209c  00 00 8f e0                                      add r0, pc, r0
003f20a0  82 5b 0c eb                                      bl #0x708eb0
003f20a4  df ff ff ea                                      b #0x3f2028
003f20a8  0c 00 9f e5                                      ldr r0, [pc, #0xc]
003f20ac  00 00 8f e0                                      add r0, pc, r0
003f20b0  62 5b 0c eb                                      bl #0x708e40
003f20b4  e4 ff ff ea                                      b #0x3f204c
; mapping-symbol data/literal pool
003f20b8  bc c3 4c 00 ac c3 4c 00                          .byte 0xbc, 0xc3, 0x4c, 0x00, 0xac, 0xc3, 0x4c, 0x00

; FUNCTION 0x003fa720, declared_size=108, range_size=108, mode=arm
; class-group: std::basic_string<char, std::char_traits<char>, std::allocator<char> >
; alias: _ZNSs6appendERKSsjj
; demangled: std::basic_string<char, std::char_traits<char>, std::allocator<char> >::append(std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, unsigned int, unsigned int)
; decoder-mode: arm
003fa720  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003fa724  01 50 a0 e1                                      mov r5, r1
003fa728  14 c0 91 e5                                      ldr ip, [r1, #0x14]
003fa72c  10 10 91 e5                                      ldr r1, [r1, #0x10]
003fa730  02 40 a0 e1                                      mov r4, r2
003fa734  00 60 a0 e1                                      mov r6, r0
003fa738  01 10 6c e0                                      rsb r1, ip, r1
003fa73c  01 00 52 e1                                      cmp r2, r1
003fa740  03 70 a0 e1                                      mov r7, r3
003fa744  08 00 00 8a                                      bhi #0x3fa76c
003fa748  01 10 64 e0                                      rsb r1, r4, r1
003fa74c  07 00 51 e1                                      cmp r1, r7
003fa750  01 70 84 90                                      addls r7, r4, r1
003fa754  07 70 84 80                                      addhi r7, r4, r7
003fa758  07 20 8c e0                                      add r2, ip, r7
003fa75c  06 00 a0 e1                                      mov r0, r6
003fa760  04 10 8c e0                                      add r1, ip, r4
003fa764  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
003fa768  25 58 fc ea                                      b #0x310804
003fa76c  14 00 9f e5                                      ldr r0, [pc, #0x14]
003fa770  00 00 8f e0                                      add r0, pc, r0
003fa774  cd 39 0c eb                                      bl #0x708eb0
003fa778  10 10 95 e5                                      ldr r1, [r5, #0x10]
003fa77c  14 c0 95 e5                                      ldr ip, [r5, #0x14]
003fa780  01 10 6c e0                                      rsb r1, ip, r1
003fa784  ef ff ff ea                                      b #0x3fa748
; mapping-symbol data/literal pool
003fa788  e8 3c 4c 00                                      .byte 0xe8, 0x3c, 0x4c, 0x00

; FUNCTION 0x00415cd8, declared_size=100, range_size=100, mode=arm
; class-group: std::basic_string<char, std::char_traits<char>, std::allocator<char> >
; alias: _ZNSsC1ERKSsjjRKSaIcE
; demangled: std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, unsigned int, unsigned int, std::allocator<char> const&)
; decoder-mode: arm
00415cd8  10 40 2d e9                                      push {r4, lr}
00415cdc  00 40 a0 e1                                      mov r4, r0
00415ce0  10 00 84 e5                                      str r0, [r4, #0x10]
00415ce4  14 00 84 e5                                      str r0, [r4, #0x14]
00415ce8  10 e0 91 e5                                      ldr lr, [r1, #0x10]
00415cec  14 c0 91 e5                                      ldr ip, [r1, #0x14]
00415cf0  02 10 a0 e1                                      mov r1, r2
00415cf4  0e e0 6c e0                                      rsb lr, ip, lr
00415cf8  0e 00 52 e1                                      cmp r2, lr
00415cfc  08 00 00 8a                                      bhi #0x415d24
00415d00  0e e0 62 e0                                      rsb lr, r2, lr
00415d04  0e 00 53 e1                                      cmp r3, lr
00415d08  03 30 82 90                                      addls r3, r2, r3
00415d0c  0e 30 82 80                                      addhi r3, r2, lr
00415d10  03 20 8c e0                                      add r2, ip, r3
00415d14  01 10 8c e0                                      add r1, ip, r1
00415d18  72 ee fb eb                                      bl #0x3116e8
00415d1c  04 00 a0 e1                                      mov r0, r4
00415d20  10 80 bd e8                                      pop {r4, pc}
00415d24  0c 00 9f e5                                      ldr r0, [pc, #0xc]
00415d28  00 00 8f e0                                      add r0, pc, r0
00415d2c  5f cc 0b eb                                      bl #0x708eb0
00415d30  04 00 a0 e1                                      mov r0, r4
00415d34  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00415d38  30 87 4a 00                                      .byte 0x30, 0x87, 0x4a, 0x00

; FUNCTION 0x004352b8, declared_size=80, range_size=80, mode=arm
; class-group: std::basic_string<char, std::char_traits<char>, std::allocator<char> >
; alias: _ZNSs19_M_range_initializeEPKcS0_.clone.2
; demangled: std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_range_initialize(char const*, char const*) [clone .clone.2]
; decoder-mode: arm
004352b8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004352bc  40 60 9f e5                                      ldr r6, [pc, #0x40]
004352c0  01 70 a0 e1                                      mov r7, r1
004352c4  00 50 a0 e1                                      mov r5, r0
004352c8  06 60 8f e0                                      add r6, pc, r6
004352cc  01 40 66 e0                                      rsb r4, r6, r1
004352d0  01 10 84 e2                                      add r1, r4, #1
004352d4  e8 70 fb eb                                      bl #0x31167c
004352d8  06 00 57 e1                                      cmp r7, r6
004352dc  14 00 95 e5                                      ldr r0, [r5, #0x14]
004352e0  03 00 00 0a                                      beq #0x4352f4
004352e4  06 10 a0 e1                                      mov r1, r6
004352e8  04 20 a0 e1                                      mov r2, r4
004352ec  5d 65 fb eb                                      bl #0x30e868
004352f0  04 00 80 e0                                      add r0, r0, r4
004352f4  00 30 a0 e3                                      mov r3, #0
004352f8  10 00 85 e5                                      str r0, [r5, #0x10]
004352fc  00 30 c0 e5                                      strb r3, [r0]
00435300  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00435304  d8 a7 48 00                                      .byte 0xd8, 0xa7, 0x48, 0x00

; FUNCTION 0x00461ca8, declared_size=256, range_size=256, mode=arm
; class-group: std::basic_string<char, std::char_traits<char>, std::allocator<char> >
; alias: _ZNSs6resizeEjc.clone.6
; demangled: std::basic_string<char, std::char_traits<char>, std::allocator<char> >::resize(unsigned int, char) [clone .clone.6]
; decoder-mode: arm
00461ca8  70 40 2d e9                                      push {r4, r5, r6, lr}
00461cac  10 30 90 e5                                      ldr r3, [r0, #0x10]
00461cb0  14 20 90 e5                                      ldr r2, [r0, #0x14]
00461cb4  00 40 a0 e1                                      mov r4, r0
00461cb8  03 00 62 e0                                      rsb r0, r2, r3
00461cbc  01 00 50 e1                                      cmp r0, r1
00461cc0  09 00 00 3a                                      blo #0x461cec
00461cc4  01 00 82 e0                                      add r0, r2, r1
00461cc8  00 00 53 e1                                      cmp r3, r0
00461ccc  25 00 00 0a                                      beq #0x461d68
00461cd0  00 c0 d3 e5                                      ldrb ip, [r3]
00461cd4  00 30 63 e0                                      rsb r3, r3, r0
00461cd8  01 c0 c2 e7                                      strb ip, [r2, r1]
00461cdc  10 00 94 e5                                      ldr r0, [r4, #0x10]
00461ce0  03 30 80 e0                                      add r3, r0, r3
00461ce4  10 30 84 e5                                      str r3, [r4, #0x10]
00461ce8  70 80 bd e8                                      pop {r4, r5, r6, pc}
00461cec  00 50 51 e0                                      subs r5, r1, r0
00461cf0  1c 00 00 0a                                      beq #0x461d68
00461cf4  fe 1f 0f e3                                      movw r1, #0xfffe
00461cf8  ff 1f 4f e3                                      movt r1, #0xffff
00461cfc  01 10 60 e0                                      rsb r1, r0, r1
00461d00  01 00 55 e1                                      cmp r5, r1
00461d04  20 00 00 8a                                      bhi #0x461d8c
00461d08  04 00 52 e1                                      cmp r2, r4
00461d0c  00 20 94 15                                      ldrne r2, [r4]
00461d10  10 20 84 02                                      addeq r2, r4, #0x10
00461d14  02 20 63 e0                                      rsb r2, r3, r2
00461d18  02 00 55 e1                                      cmp r5, r2
00461d1c  12 00 00 2a                                      bhs #0x461d6c
00461d20  01 20 83 e2                                      add r2, r3, #1
00461d24  05 10 83 e0                                      add r1, r3, r5
00461d28  01 10 62 e0                                      rsb r1, r2, r1
00461d2c  00 00 51 e3                                      cmp r1, #0
00461d30  05 00 00 da                                      ble #0x461d4c
00461d34  01 10 83 e0                                      add r1, r3, r1
00461d38  00 20 a0 e3                                      mov r2, #0
00461d3c  01 20 e3 e5                                      strb r2, [r3, #1]!
00461d40  01 00 53 e1                                      cmp r3, r1
00461d44  fc ff ff 1a                                      bne #0x461d3c
00461d48  10 30 94 e5                                      ldr r3, [r4, #0x10]
00461d4c  00 20 a0 e3                                      mov r2, #0
00461d50  05 20 c3 e7                                      strb r2, [r3, r5]
00461d54  10 30 94 e5                                      ldr r3, [r4, #0x10]
00461d58  00 20 c3 e5                                      strb r2, [r3]
00461d5c  10 30 94 e5                                      ldr r3, [r4, #0x10]
00461d60  05 50 83 e0                                      add r5, r3, r5
00461d64  10 50 84 e5                                      str r5, [r4, #0x10]
00461d68  70 80 bd e8                                      pop {r4, r5, r6, pc}
00461d6c  05 10 a0 e1                                      mov r1, r5
00461d70  04 00 a0 e1                                      mov r0, r4
00461d74  89 ba fa eb                                      bl #0x3107a0
00461d78  00 10 a0 e1                                      mov r1, r0
00461d7c  04 00 a0 e1                                      mov r0, r4
00461d80  0d 21 fb eb                                      bl #0x32a1bc
00461d84  10 30 94 e5                                      ldr r3, [r4, #0x10]
00461d88  e4 ff ff ea                                      b #0x461d20
00461d8c  10 00 9f e5                                      ldr r0, [pc, #0x10]
00461d90  00 00 8f e0                                      add r0, pc, r0
00461d94  29 9c 0a eb                                      bl #0x708e40
00461d98  14 20 94 e5                                      ldr r2, [r4, #0x14]
00461d9c  10 30 94 e5                                      ldr r3, [r4, #0x10]
00461da0  d8 ff ff ea                                      b #0x461d08
; mapping-symbol data/literal pool
00461da4  c8 c6 45 00                                      .byte 0xc8, 0xc6, 0x45, 0x00

; FUNCTION 0x00469884, declared_size=88, range_size=88, mode=arm
; class-group: std::basic_string<char, std::char_traits<char>, std::allocator<char> >
; alias: _ZNSs6resizeEjc.clone.2
; demangled: std::basic_string<char, std::char_traits<char>, std::allocator<char> >::resize(unsigned int, char) [clone .clone.2]
; decoder-mode: arm
00469884  04 40 2d e5                                      str r4, [sp, #-4]!
00469888  10 20 90 e5                                      ldr r2, [r0, #0x10]
0046988c  14 c0 90 e5                                      ldr ip, [r0, #0x14]
00469890  00 30 a0 e1                                      mov r3, r0
00469894  02 40 6c e0                                      rsb r4, ip, r2
00469898  01 00 54 e1                                      cmp r4, r1
0046989c  03 00 00 2a                                      bhs #0x4698b0
004698a0  01 10 64 e0                                      rsb r1, r4, r1
004698a4  00 20 a0 e3                                      mov r2, #0
004698a8  10 00 bd e8                                      ldm sp!, {r4}
004698ac  b5 02 fb ea                                      b #0x32a388
004698b0  01 00 8c e0                                      add r0, ip, r1
004698b4  00 00 52 e1                                      cmp r2, r0
004698b8  05 00 00 0a                                      beq #0x4698d4
004698bc  00 40 d2 e5                                      ldrb r4, [r2]
004698c0  00 20 62 e0                                      rsb r2, r2, r0
004698c4  01 40 cc e7                                      strb r4, [ip, r1]
004698c8  10 00 93 e5                                      ldr r0, [r3, #0x10]
004698cc  02 20 80 e0                                      add r2, r0, r2
004698d0  10 20 83 e5                                      str r2, [r3, #0x10]
004698d4  10 00 bd e8                                      ldm sp!, {r4}
004698d8  1e ff 2f e1                                      bx lr

; FUNCTION 0x0046fcd8, declared_size=80, range_size=80, mode=arm
; class-group: std::basic_string<char, std::char_traits<char>, std::allocator<char> >
; alias: _ZNSs19_M_range_initializeEPKcS0_.clone.2
; demangled: std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_range_initialize(char const*, char const*) [clone .clone.2]
; decoder-mode: arm
0046fcd8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0046fcdc  40 60 9f e5                                      ldr r6, [pc, #0x40]
0046fce0  01 70 a0 e1                                      mov r7, r1
0046fce4  00 50 a0 e1                                      mov r5, r0
0046fce8  06 60 8f e0                                      add r6, pc, r6
0046fcec  01 40 66 e0                                      rsb r4, r6, r1
0046fcf0  01 10 84 e2                                      add r1, r4, #1
0046fcf4  60 86 fa eb                                      bl #0x31167c
0046fcf8  06 00 57 e1                                      cmp r7, r6
0046fcfc  14 00 95 e5                                      ldr r0, [r5, #0x14]
0046fd00  03 00 00 0a                                      beq #0x46fd14
0046fd04  06 10 a0 e1                                      mov r1, r6
0046fd08  04 20 a0 e1                                      mov r2, r4
0046fd0c  d5 7a fa eb                                      bl #0x30e868
0046fd10  04 00 80 e0                                      add r0, r0, r4
0046fd14  00 30 a0 e3                                      mov r3, #0
0046fd18  10 00 85 e5                                      str r0, [r5, #0x10]
0046fd1c  00 30 c0 e5                                      strb r3, [r0]
0046fd20  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0046fd24  30 d9 45 00                                      .byte 0x30, 0xd9, 0x45, 0x00

; FUNCTION 0x00484728, declared_size=132, range_size=132, mode=arm
; class-group: std::basic_string<char, std::char_traits<char>, std::allocator<char> >
; alias: _ZNKSs4findEPKcj.clone.1
; demangled: std::basic_string<char, std::char_traits<char>, std::allocator<char> >::find(char const*, unsigned int) const [clone .clone.1]
; decoder-mode: arm
00484728  70 40 2d e9                                      push {r4, r5, r6, lr}
0048472c  00 40 a0 e1                                      mov r4, r0
00484730  10 d0 4d e2                                      sub sp, sp, #0x10
00484734  01 00 a0 e1                                      mov r0, r1
00484738  01 60 a0 e1                                      mov r6, r1
0048473c  c4 25 fa eb                                      bl #0x30de54
00484740  10 c0 94 e5                                      ldr ip, [r4, #0x10]
00484744  14 50 94 e5                                      ldr r5, [r4, #0x14]
00484748  00 30 a0 e1                                      mov r3, r0
0048474c  05 20 5c e0                                      subs r2, ip, r5
00484750  04 00 00 1a                                      bne #0x484768
00484754  00 00 50 e3                                      cmp r0, #0
00484758  00 00 a0 01                                      moveq r0, r0
0048475c  03 00 00 1a                                      bne #0x484770
00484760  10 d0 8d e2                                      add sp, sp, #0x10
00484764  70 80 bd e8                                      pop {r4, r5, r6, pc}
00484768  02 00 50 e1                                      cmp r0, r2
0048476c  01 00 00 9a                                      bls #0x484778
00484770  00 00 e0 e3                                      mvn r0, #0
00484774  f9 ff ff ea                                      b #0x484760
00484778  0c 10 a0 e1                                      mov r1, ip
0048477c  03 30 86 e0                                      add r3, r6, r3
00484780  0c c0 8d e2                                      add ip, sp, #0xc
00484784  06 20 a0 e1                                      mov r2, r6
00484788  05 00 a0 e1                                      mov r0, r5
0048478c  00 c0 8d e5                                      str ip, [sp]
00484790  65 29 fb eb                                      bl #0x34ed2c
00484794  10 30 94 e5                                      ldr r3, [r4, #0x10]
00484798  03 00 50 e1                                      cmp r0, r3
0048479c  f3 ff ff 0a                                      beq #0x484770
004847a0  14 30 94 e5                                      ldr r3, [r4, #0x14]
004847a4  00 00 63 e0                                      rsb r0, r3, r0
004847a8  ec ff ff ea                                      b #0x484760

; FUNCTION 0x004847ac, declared_size=116, range_size=116, mode=arm
; class-group: std::basic_string<char, std::char_traits<char>, std::allocator<char> >
; alias: _ZNKSs5rfindEcj.clone.10
; demangled: std::basic_string<char, std::char_traits<char>, std::allocator<char> >::rfind(char, unsigned int) const [clone .clone.10]
; decoder-mode: arm
004847ac  10 40 2d e9                                      push {r4, lr}
004847b0  14 c0 90 e5                                      ldr ip, [r0, #0x14]
004847b4  10 30 90 e5                                      ldr r3, [r0, #0x10]
004847b8  20 d0 4d e2                                      sub sp, sp, #0x20
004847bc  00 40 a0 e1                                      mov r4, r0
004847c0  0c 30 53 e0                                      subs r3, r3, ip
004847c4  13 00 00 0a                                      beq #0x484818
004847c8  03 e0 8c e0                                      add lr, ip, r3
004847cc  0c c0 8d e5                                      str ip, [sp, #0xc]
004847d0  2f c0 a0 e3                                      mov ip, #0x2f
004847d4  14 00 8d e2                                      add r0, sp, #0x14
004847d8  1c 30 8d e2                                      add r3, sp, #0x1c
004847dc  1c c0 cd e5                                      strb ip, [sp, #0x1c]
004847e0  10 10 8d e2                                      add r1, sp, #0x10
004847e4  18 c0 8d e2                                      add ip, sp, #0x18
004847e8  0c 20 8d e2                                      add r2, sp, #0xc
004847ec  10 e0 8d e5                                      str lr, [sp, #0x10]
004847f0  00 c0 8d e5                                      str ip, [sp]
004847f4  d1 fc ff eb                                      bl #0x483b40
004847f8  14 00 9d e5                                      ldr r0, [sp, #0x14]
004847fc  14 30 94 e5                                      ldr r3, [r4, #0x14]
00484800  00 00 53 e1                                      cmp r3, r0
00484804  01 00 40 12                                      subne r0, r0, #1
00484808  00 00 63 10                                      rsbne r0, r3, r0
0048480c  01 00 00 0a                                      beq #0x484818
00484810  20 d0 8d e2                                      add sp, sp, #0x20
00484814  10 80 bd e8                                      pop {r4, pc}
00484818  00 00 e0 e3                                      mvn r0, #0
0048481c  fb ff ff ea                                      b #0x484810

; FUNCTION 0x00489f14, declared_size=68, range_size=68, mode=arm
; class-group: std::basic_string<char, std::char_traits<char>, std::allocator<char> >
; alias: _ZNKSs4findEPKcjj.clone.1
; demangled: std::basic_string<char, std::char_traits<char>, std::allocator<char> >::find(char const*, unsigned int, unsigned int) const [clone .clone.1]
; decoder-mode: arm
00489f14  14 30 90 e5                                      ldr r3, [r0, #0x14]
00489f18  10 20 90 e5                                      ldr r2, [r0, #0x10]
00489f1c  03 00 a0 e1                                      mov r0, r3
00489f20  03 00 52 e1                                      cmp r2, r3
00489f24  01 00 00 1a                                      bne #0x489f30
00489f28  00 00 e0 e3                                      mvn r0, #0
00489f2c  1e ff 2f e1                                      bx lr
00489f30  d0 10 d3 e1                                      ldrsb r1, [r3]
00489f34  2c 00 51 e3                                      cmp r1, #0x2c
00489f38  02 00 00 0a                                      beq #0x489f48
00489f3c  01 30 83 e2                                      add r3, r3, #1
00489f40  02 00 53 e1                                      cmp r3, r2
00489f44  f9 ff ff 1a                                      bne #0x489f30
00489f48  03 00 52 e1                                      cmp r2, r3
00489f4c  03 00 60 10                                      rsbne r0, r0, r3
00489f50  1e ff 2f 11                                      bxne lr
00489f54  f3 ff ff ea                                      b #0x489f28

; FUNCTION 0x004c8bb0, declared_size=44, range_size=44, mode=arm
; class-group: std::basic_string<char, std::char_traits<char>, std::allocator<char> >
; alias: _ZNSsC1ERKSaIcE
; demangled: std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(std::allocator<char> const&)
; decoder-mode: arm
004c8bb0  10 40 2d e9                                      push {r4, lr}
004c8bb4  00 40 a0 e1                                      mov r4, r0
004c8bb8  10 00 84 e5                                      str r0, [r4, #0x10]
004c8bbc  14 00 84 e5                                      str r0, [r4, #0x14]
004c8bc0  10 10 a0 e3                                      mov r1, #0x10
004c8bc4  ac 22 f9 eb                                      bl #0x31167c
004c8bc8  10 30 94 e5                                      ldr r3, [r4, #0x10]
004c8bcc  00 20 a0 e3                                      mov r2, #0
004c8bd0  04 00 a0 e1                                      mov r0, r4
004c8bd4  00 20 c3 e5                                      strb r2, [r3]
004c8bd8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0050d10c, declared_size=80, range_size=80, mode=arm
; class-group: std::basic_string<char, std::char_traits<char>, std::allocator<char> >
; alias: _ZNSs19_M_range_initializeEPKcS0_.clone.3
; demangled: std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_range_initialize(char const*, char const*) [clone .clone.3]
; decoder-mode: arm
0050d10c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0050d110  40 60 9f e5                                      ldr r6, [pc, #0x40]
0050d114  01 70 a0 e1                                      mov r7, r1
0050d118  00 50 a0 e1                                      mov r5, r0
0050d11c  06 60 8f e0                                      add r6, pc, r6
0050d120  01 40 66 e0                                      rsb r4, r6, r1
0050d124  01 10 84 e2                                      add r1, r4, #1
0050d128  53 11 f8 eb                                      bl #0x31167c
0050d12c  06 00 57 e1                                      cmp r7, r6
0050d130  14 00 95 e5                                      ldr r0, [r5, #0x14]
0050d134  03 00 00 0a                                      beq #0x50d148
0050d138  06 10 a0 e1                                      mov r1, r6
0050d13c  04 20 a0 e1                                      mov r2, r4
0050d140  c8 05 f8 eb                                      bl #0x30e868
0050d144  04 00 80 e0                                      add r0, r0, r4
0050d148  00 30 a0 e3                                      mov r3, #0
0050d14c  10 00 85 e5                                      str r0, [r5, #0x10]
0050d150  00 30 c0 e5                                      strb r3, [r0]
0050d154  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0050d158  ac 95 3b 00                                      .byte 0xac, 0x95, 0x3b, 0x00

; FUNCTION 0x005244e8, declared_size=80, range_size=80, mode=arm
; class-group: std::basic_string<char, std::char_traits<char>, std::allocator<char> >
; alias: _ZNSs19_M_range_initializeEPKcS0_.clone.4
; demangled: std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_range_initialize(char const*, char const*) [clone .clone.4]
; decoder-mode: arm
005244e8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005244ec  40 60 9f e5                                      ldr r6, [pc, #0x40]
005244f0  01 70 a0 e1                                      mov r7, r1
005244f4  00 50 a0 e1                                      mov r5, r0
005244f8  06 60 8f e0                                      add r6, pc, r6
005244fc  01 40 66 e0                                      rsb r4, r6, r1
00524500  01 10 84 e2                                      add r1, r4, #1
00524504  5c b4 f7 eb                                      bl #0x31167c
00524508  06 00 57 e1                                      cmp r7, r6
0052450c  14 00 95 e5                                      ldr r0, [r5, #0x14]
00524510  03 00 00 0a                                      beq #0x524524
00524514  06 10 a0 e1                                      mov r1, r6
00524518  04 20 a0 e1                                      mov r2, r4
0052451c  d1 a8 f7 eb                                      bl #0x30e868
00524520  04 00 80 e0                                      add r0, r0, r4
00524524  00 30 a0 e3                                      mov r3, #0
00524528  10 00 85 e5                                      str r0, [r5, #0x10]
0052452c  00 30 c0 e5                                      strb r3, [r0]
00524530  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00524534  e8 e4 3c 00                                      .byte 0xe8, 0xe4, 0x3c, 0x00

; FUNCTION 0x00824c90, declared_size=80, range_size=80, mode=arm
; class-group: std::basic_string<char, std::char_traits<char>, std::allocator<char> >
; alias: _ZNSs19_M_range_initializeEPKcS0_.clone.1
; demangled: std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_range_initialize(char const*, char const*) [clone .clone.1]
; decoder-mode: arm
00824c90  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00824c94  40 60 9f e5                                      ldr r6, [pc, #0x40]
00824c98  01 70 a0 e1                                      mov r7, r1
00824c9c  00 50 a0 e1                                      mov r5, r0
00824ca0  06 60 8f e0                                      add r6, pc, r6
00824ca4  01 40 66 e0                                      rsb r4, r6, r1
00824ca8  01 10 84 e2                                      add r1, r4, #1
00824cac  72 b2 eb eb                                      bl #0x31167c
00824cb0  06 00 57 e1                                      cmp r7, r6
00824cb4  14 00 95 e5                                      ldr r0, [r5, #0x14]
00824cb8  03 00 00 0a                                      beq #0x824ccc
00824cbc  06 10 a0 e1                                      mov r1, r6
00824cc0  04 20 a0 e1                                      mov r2, r4
00824cc4  e7 a6 eb eb                                      bl #0x30e868
00824cc8  04 00 80 e0                                      add r0, r0, r4
00824ccc  00 30 a0 e3                                      mov r3, #0
00824cd0  10 00 85 e5                                      str r0, [r5, #0x10]
00824cd4  00 30 c0 e5                                      strb r3, [r0]
00824cd8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00824cdc  68 6b 0a 00                                      .byte 0x68, 0x6b, 0x0a, 0x00

; FUNCTION 0x00827274, declared_size=80, range_size=80, mode=arm
; class-group: std::basic_string<char, std::char_traits<char>, std::allocator<char> >
; alias: _ZNSs19_M_range_initializeEPKcS0_.clone.0
; demangled: std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_range_initialize(char const*, char const*) [clone .clone.0]
; decoder-mode: arm
00827274  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00827278  40 60 9f e5                                      ldr r6, [pc, #0x40]
0082727c  01 70 a0 e1                                      mov r7, r1
00827280  00 50 a0 e1                                      mov r5, r0
00827284  06 60 8f e0                                      add r6, pc, r6
00827288  01 40 66 e0                                      rsb r4, r6, r1
0082728c  01 10 84 e2                                      add r1, r4, #1
00827290  f9 a8 eb eb                                      bl #0x31167c
00827294  06 00 57 e1                                      cmp r7, r6
00827298  14 00 95 e5                                      ldr r0, [r5, #0x14]
0082729c  03 00 00 0a                                      beq #0x8272b0
008272a0  06 10 a0 e1                                      mov r1, r6
008272a4  04 20 a0 e1                                      mov r2, r4
008272a8  6e 9d eb eb                                      bl #0x30e868
008272ac  04 00 80 e0                                      add r0, r0, r4
008272b0  00 30 a0 e3                                      mov r3, #0
008272b4  10 00 85 e5                                      str r0, [r5, #0x10]
008272b8  00 30 c0 e5                                      strb r3, [r0]
008272bc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
008272c0  0c 51 0e 00                                      .byte 0x0c, 0x51, 0x0e, 0x00

; FUNCTION 0x008300fc, declared_size=128, range_size=128, mode=arm
; class-group: std::basic_string<char, std::char_traits<char>, std::allocator<char> >
; alias: _ZNKSs4findEPKcjj
; demangled: std::basic_string<char, std::char_traits<char>, std::allocator<char> >::find(char const*, unsigned int, unsigned int) const
; decoder-mode: arm
008300fc  70 40 2d e9                                      push {r4, r5, r6, lr}
00830100  10 c0 90 e5                                      ldr ip, [r0, #0x10]
00830104  14 50 90 e5                                      ldr r5, [r0, #0x14]
00830108  00 40 a0 e1                                      mov r4, r0
0083010c  10 d0 4d e2                                      sub sp, sp, #0x10
00830110  0c 60 65 e0                                      rsb r6, r5, ip
00830114  06 00 52 e1                                      cmp r2, r6
00830118  02 00 a0 e1                                      mov r0, r2
0083011c  04 00 00 3a                                      blo #0x830134
00830120  06 00 50 e1                                      cmp r0, r6
00830124  00 00 53 93                                      cmpls r3, #0
00830128  0e 00 00 1a                                      bne #0x830168
0083012c  10 d0 8d e2                                      add sp, sp, #0x10
00830130  70 80 bd e8                                      pop {r4, r5, r6, pc}
00830134  02 20 83 e0                                      add r2, r3, r2
00830138  06 00 52 e1                                      cmp r2, r6
0083013c  f7 ff ff 8a                                      bhi #0x830120
00830140  01 20 a0 e1                                      mov r2, r1
00830144  03 30 82 e0                                      add r3, r2, r3
00830148  0c 10 a0 e1                                      mov r1, ip
0083014c  00 00 85 e0                                      add r0, r5, r0
00830150  0c c0 8d e2                                      add ip, sp, #0xc
00830154  00 c0 8d e5                                      str ip, [sp]
00830158  f3 7a ec eb                                      bl #0x34ed2c
0083015c  10 30 94 e5                                      ldr r3, [r4, #0x10]
00830160  03 00 50 e1                                      cmp r0, r3
00830164  01 00 00 1a                                      bne #0x830170
00830168  00 00 e0 e3                                      mvn r0, #0
0083016c  ee ff ff ea                                      b #0x83012c
00830170  14 30 94 e5                                      ldr r3, [r4, #0x14]
00830174  00 00 63 e0                                      rsb r0, r3, r0
00830178  eb ff ff ea                                      b #0x83012c

; FUNCTION 0x0083017c, declared_size=48, range_size=48, mode=arm
; class-group: std::basic_string<char, std::char_traits<char>, std::allocator<char> >
; alias: _ZNKSs4findEPKcj
; demangled: std::basic_string<char, std::char_traits<char>, std::allocator<char> >::find(char const*, unsigned int) const
; decoder-mode: arm
0083017c  70 40 2d e9                                      push {r4, r5, r6, lr}
00830180  00 60 a0 e1                                      mov r6, r0
00830184  01 00 a0 e1                                      mov r0, r1
00830188  01 40 a0 e1                                      mov r4, r1
0083018c  02 50 a0 e1                                      mov r5, r2
00830190  2f 77 eb eb                                      bl #0x30de54
00830194  04 10 a0 e1                                      mov r1, r4
00830198  00 30 a0 e1                                      mov r3, r0
0083019c  05 20 a0 e1                                      mov r2, r5
008301a0  06 00 a0 e1                                      mov r0, r6
008301a4  70 40 bd e8                                      pop {r4, r5, r6, lr}
008301a8  d3 ff ff ea                                      b #0x8300fc

; FUNCTION 0x00842570, declared_size=152, range_size=152, mode=arm
; class-group: std::basic_string<char, std::char_traits<char>, std::allocator<char> >
; alias: _ZNSs5eraseEjj
; demangled: std::basic_string<char, std::char_traits<char>, std::allocator<char> >::erase(unsigned int, unsigned int)
; decoder-mode: arm
00842570  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00842574  14 60 90 e5                                      ldr r6, [r0, #0x14]
00842578  10 30 90 e5                                      ldr r3, [r0, #0x10]
0084257c  00 40 a0 e1                                      mov r4, r0
00842580  01 70 a0 e1                                      mov r7, r1
00842584  03 50 66 e0                                      rsb r5, r6, r3
00842588  05 00 51 e1                                      cmp r1, r5
0084258c  02 80 a0 e1                                      mov r8, r2
00842590  0f 00 00 8a                                      bhi #0x8425d4
00842594  05 50 67 e0                                      rsb r5, r7, r5
00842598  08 00 55 e1                                      cmp r5, r8
0084259c  05 50 87 90                                      addls r5, r7, r5
008425a0  08 50 87 80                                      addhi r5, r7, r8
008425a4  05 50 86 e0                                      add r5, r6, r5
008425a8  07 60 86 e0                                      add r6, r6, r7
008425ac  05 00 56 e1                                      cmp r6, r5
008425b0  05 00 00 0a                                      beq #0x8425cc
008425b4  01 20 83 e2                                      add r2, r3, #1
008425b8  05 20 52 e0                                      subs r2, r2, r5
008425bc  0b 00 00 1a                                      bne #0x8425f0
008425c0  06 50 65 e0                                      rsb r5, r5, r6
008425c4  05 30 83 e0                                      add r3, r3, r5
008425c8  10 30 84 e5                                      str r3, [r4, #0x10]
008425cc  04 00 a0 e1                                      mov r0, r4
008425d0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
008425d4  28 00 9f e5                                      ldr r0, [pc, #0x28]
008425d8  00 00 8f e0                                      add r0, pc, r0
008425dc  51 ef 01 eb                                      bl #0x8be328
008425e0  14 60 94 e5                                      ldr r6, [r4, #0x14]
008425e4  10 30 94 e5                                      ldr r3, [r4, #0x10]
008425e8  03 50 66 e0                                      rsb r5, r6, r3
008425ec  e8 ff ff ea                                      b #0x842594
008425f0  06 00 a0 e1                                      mov r0, r6
008425f4  05 10 a0 e1                                      mov r1, r5
008425f8  4e 2e eb eb                                      bl #0x30df38
008425fc  10 30 94 e5                                      ldr r3, [r4, #0x10]
00842600  ee ff ff ea                                      b #0x8425c0
; mapping-symbol data/literal pool
00842604  80 be 07 00                                      .byte 0x80, 0xbe, 0x07, 0x00

; FUNCTION 0x008a0234, declared_size=144, range_size=144, mode=arm
; class-group: std::basic_string<char, std::char_traits<char>, std::allocator<char> >
; alias: _ZNKSs6substrEjj
; demangled: std::basic_string<char, std::char_traits<char>, std::allocator<char> >::substr(unsigned int, unsigned int) const
; decoder-mode: arm
008a0234  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
008a0238  00 40 a0 e1                                      mov r4, r0
008a023c  10 00 84 e5                                      str r0, [r4, #0x10]
008a0240  14 00 84 e5                                      str r0, [r4, #0x14]
008a0244  10 c0 91 e5                                      ldr ip, [r1, #0x10]
008a0248  14 10 91 e5                                      ldr r1, [r1, #0x14]
008a024c  0c c0 61 e0                                      rsb ip, r1, ip
008a0250  0c 00 52 e1                                      cmp r2, ip
008a0254  14 00 00 8a                                      bhi #0x8a02ac
008a0258  0c c0 62 e0                                      rsb ip, r2, ip
008a025c  03 00 5c e1                                      cmp ip, r3
008a0260  0c 70 82 90                                      addls r7, r2, ip
008a0264  03 70 82 80                                      addhi r7, r2, r3
008a0268  02 60 81 e0                                      add r6, r1, r2
008a026c  07 70 81 e0                                      add r7, r1, r7
008a0270  07 50 66 e0                                      rsb r5, r6, r7
008a0274  01 10 85 e2                                      add r1, r5, #1
008a0278  ff c4 e9 eb                                      bl #0x31167c
008a027c  07 00 56 e1                                      cmp r6, r7
008a0280  14 00 94 e5                                      ldr r0, [r4, #0x14]
008a0284  03 00 00 0a                                      beq #0x8a0298
008a0288  06 10 a0 e1                                      mov r1, r6
008a028c  05 20 a0 e1                                      mov r2, r5
008a0290  74 b9 e9 eb                                      bl #0x30e868
008a0294  05 00 80 e0                                      add r0, r0, r5
008a0298  00 30 a0 e3                                      mov r3, #0
008a029c  10 00 84 e5                                      str r0, [r4, #0x10]
008a02a0  00 30 c0 e5                                      strb r3, [r0]
008a02a4  04 00 a0 e1                                      mov r0, r4
008a02a8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
008a02ac  0c 00 9f e5                                      ldr r0, [pc, #0xc]
008a02b0  00 00 8f e0                                      add r0, pc, r0
008a02b4  1b 78 00 eb                                      bl #0x8be328
008a02b8  04 00 a0 e1                                      mov r0, r4
008a02bc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
008a02c0  a8 e1 01 00                                      .byte 0xa8, 0xe1, 0x01, 0x00

; FUNCTION 0x008b9528, declared_size=28, range_size=28, mode=thumb
; class-group: std::basic_string<char, std::char_traits<char>, std::allocator<char> >
; alias: _ZNSsC1ERKSs.clone.1
; demangled: std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&) [clone .clone.1]
; decoder-mode: thumb
008b9528  10 b5                                            push {r4, lr}
008b952a  05 4b                                            ldr r3, [pc, #0x14]
008b952c  04 1c                                            adds r4, r0, #0
008b952e  20 61                                            str r0, [r4, #0x10]
008b9530  60 61                                            str r0, [r4, #0x14]
008b9532  7b 44                                            add r3, pc
008b9534  59 69                                            ldr r1, [r3, #0x14]
008b9536  1a 69                                            ldr r2, [r3, #0x10]
008b9538  58 f6 d6 e0                                      blx #0x3116e8
008b953c  20 1c                                            adds r0, r4, #0
008b953e  10 bd                                            pop {r4, pc}
; mapping-symbol data/literal pool
008b9540  52 bf 17 00                                      .byte 0x52, 0xbf, 0x17, 0x00

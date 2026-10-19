; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00313f30, declared_size=128, range_size=128, mode=arm
; class-group: std::vector<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::allocator<std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >
; alias: _ZNSt6vectorISsSaISsEED1Ev
; demangled: std::vector<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::allocator<std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::~vector()
; decoder-mode: arm
00313f30  70 40 2d e9                                      push {r4, r5, r6, lr}
00313f34  04 50 90 e5                                      ldr r5, [r0, #4]
00313f38  00 60 90 e5                                      ldr r6, [r0]
00313f3c  00 40 a0 e1                                      mov r4, r0
00313f40  06 00 55 e1                                      cmp r5, r6
00313f44  04 00 00 0a                                      beq #0x313f5c
00313f48  18 50 45 e2                                      sub r5, r5, #0x18
00313f4c  05 00 a0 e1                                      mov r0, r5
00313f50  95 fe ff eb                                      bl #0x3139ac
00313f54  05 00 56 e1                                      cmp r6, r5
00313f58  fa ff ff 1a                                      bne #0x313f48
00313f5c  00 00 94 e5                                      ldr r0, [r4]
00313f60  00 00 50 e3                                      cmp r0, #0
00313f64  0c 00 00 0a                                      beq #0x313f9c
00313f68  08 30 94 e5                                      ldr r3, [r4, #8]
00313f6c  03 30 60 e0                                      rsb r3, r0, r3
00313f70  c3 31 a0 e1                                      asr r3, r3, #3
00313f74  03 11 83 e0                                      add r1, r3, r3, lsl #2
00313f78  01 12 81 e0                                      add r1, r1, r1, lsl #4
00313f7c  01 14 81 e0                                      add r1, r1, r1, lsl #8
00313f80  01 18 81 e0                                      add r1, r1, r1, lsl #16
00313f84  81 30 83 e0                                      add r3, r3, r1, lsl #1
00313f88  18 10 a0 e3                                      mov r1, #0x18
00313f8c  91 03 01 e0                                      mul r1, r1, r3
00313f90  80 00 51 e3                                      cmp r1, #0x80
00313f94  02 00 00 8a                                      bhi #0x313fa4
00313f98  d8 d3 0f eb                                      bl #0x708f00
00313f9c  04 00 a0 e1                                      mov r0, r4
00313fa0  70 80 bd e8                                      pop {r4, r5, r6, pc}
00313fa4  25 f1 ff eb                                      bl #0x310440
00313fa8  04 00 a0 e1                                      mov r0, r4
00313fac  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0032b93c, declared_size=412, range_size=412, mode=arm
; class-group: std::vector<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::allocator<std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >
; alias: _ZNSt6vectorISsSaISsEE22_M_insert_overflow_auxEPSsRKSsRKSt12__false_typejb.clone.19
; demangled: std::vector<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::allocator<std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::_M_insert_overflow_aux(std::basic_string<char, std::char_traits<char>, std::allocator<char> >*, std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, std::__false_type const&, unsigned int, bool) [clone .clone.19]
; decoder-mode: arm
0032b93c  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0032b940  00 40 a0 e1                                      mov r4, r0
0032b944  01 10 90 e8                                      ldm r0, {r0, ip}
0032b948  01 80 a0 e1                                      mov r8, r1
0032b94c  aa 3a 0a e3                                      movw r3, #0xaaaa
0032b950  0c 00 60 e0                                      rsb r0, r0, ip
0032b954  c0 01 a0 e1                                      asr r0, r0, #3
0032b958  03 36 83 e1                                      orr r3, r3, r3, lsl #12
0032b95c  00 11 80 e0                                      add r1, r0, r0, lsl #2
0032b960  0c d0 4d e2                                      sub sp, sp, #0xc
0032b964  01 12 81 e0                                      add r1, r1, r1, lsl #4
0032b968  02 a0 a0 e1                                      mov sl, r2
0032b96c  01 14 81 e0                                      add r1, r1, r1, lsl #8
0032b970  01 18 81 e0                                      add r1, r1, r1, lsl #16
0032b974  81 00 80 e0                                      add r0, r0, r1, lsl #1
0032b978  01 00 50 e3                                      cmp r0, #1
0032b97c  00 10 80 20                                      addhs r1, r0, r0
0032b980  01 10 80 32                                      addlo r1, r0, #1
0032b984  03 00 51 e1                                      cmp r1, r3
0032b988  4d 00 00 8a                                      bhi #0x32bac4
0032b98c  01 00 50 e1                                      cmp r0, r1
0032b990  4b 00 00 8a                                      bhi #0x32bac4
0032b994  08 20 8d e2                                      add r2, sp, #8
0032b998  04 10 22 e5                                      str r1, [r2, #-4]!
0032b99c  08 00 84 e2                                      add r0, r4, #8
0032b9a0  b8 f6 ff eb                                      bl #0x329488
0032b9a4  00 c0 94 e5                                      ldr ip, [r4]
0032b9a8  00 50 a0 e1                                      mov r5, r0
0032b9ac  08 80 6c e0                                      rsb r8, ip, r8
0032b9b0  c8 31 a0 e1                                      asr r3, r8, #3
0032b9b4  03 81 83 e0                                      add r8, r3, r3, lsl #2
0032b9b8  08 82 88 e0                                      add r8, r8, r8, lsl #4
0032b9bc  08 84 88 e0                                      add r8, r8, r8, lsl #8
0032b9c0  08 88 88 e0                                      add r8, r8, r8, lsl #16
0032b9c4  88 80 83 e0                                      add r8, r3, r8, lsl #1
0032b9c8  00 00 58 e3                                      cmp r8, #0
0032b9cc  00 80 a0 d1                                      movle r8, r0
0032b9d0  1f 00 00 da                                      ble #0x32ba54
0032b9d4  08 60 a0 e1                                      mov r6, r8
0032b9d8  00 e0 a0 e1                                      mov lr, r0
0032b9dc  00 70 a0 e3                                      mov r7, #0
0032b9e0  09 00 00 ea                                      b #0x32ba0c
0032b9e4  14 30 8e e5                                      str r3, [lr, #0x14]
0032b9e8  10 30 9c e5                                      ldr r3, [ip, #0x10]
0032b9ec  01 60 56 e2                                      subs r6, r6, #1
0032b9f0  10 30 8e e5                                      str r3, [lr, #0x10]
0032b9f4  00 30 9c e5                                      ldr r3, [ip]
0032b9f8  00 30 8e e5                                      str r3, [lr]
0032b9fc  14 70 8c e5                                      str r7, [ip, #0x14]
0032ba00  18 e0 8e e2                                      add lr, lr, #0x18
0032ba04  10 00 00 0a                                      beq #0x32ba4c
0032ba08  18 c0 8c e2                                      add ip, ip, #0x18
0032ba0c  14 30 9c e5                                      ldr r3, [ip, #0x14]
0032ba10  14 30 8e e5                                      str r3, [lr, #0x14]
0032ba14  14 30 9c e5                                      ldr r3, [ip, #0x14]
0032ba18  0c 00 53 e1                                      cmp r3, ip
0032ba1c  f0 ff ff 1a                                      bne #0x32b9e4
0032ba20  0f 00 9c e8                                      ldm ip, {r0, r1, r2, r3}
0032ba24  0f 00 8e e8                                      stm lr, {r0, r1, r2, r3}
0032ba28  10 20 9c e5                                      ldr r2, [ip, #0x10]
0032ba2c  14 30 9c e5                                      ldr r3, [ip, #0x14]
0032ba30  01 60 56 e2                                      subs r6, r6, #1
0032ba34  14 e0 8e e5                                      str lr, [lr, #0x14]
0032ba38  02 30 63 e0                                      rsb r3, r3, r2
0032ba3c  03 30 8e e0                                      add r3, lr, r3
0032ba40  10 30 8e e5                                      str r3, [lr, #0x10]
0032ba44  18 e0 8e e2                                      add lr, lr, #0x18
0032ba48  ee ff ff 1a                                      bne #0x32ba08
0032ba4c  18 30 a0 e3                                      mov r3, #0x18
0032ba50  93 58 28 e0                                      mla r8, r3, r8, r5
0032ba54  08 00 a0 e1                                      mov r0, r8
0032ba58  0a 10 a0 e1                                      mov r1, sl
0032ba5c  ad ff ff eb                                      bl #0x32b918
0032ba60  00 00 94 e5                                      ldr r0, [r4]
0032ba64  18 80 88 e2                                      add r8, r8, #0x18
0032ba68  08 30 94 e5                                      ldr r3, [r4, #8]
0032ba6c  00 00 50 e3                                      cmp r0, #0
0032ba70  0b 00 00 0a                                      beq #0x32baa4
0032ba74  03 30 60 e0                                      rsb r3, r0, r3
0032ba78  c3 31 a0 e1                                      asr r3, r3, #3
0032ba7c  03 11 83 e0                                      add r1, r3, r3, lsl #2
0032ba80  01 12 81 e0                                      add r1, r1, r1, lsl #4
0032ba84  01 14 81 e0                                      add r1, r1, r1, lsl #8
0032ba88  01 18 81 e0                                      add r1, r1, r1, lsl #16
0032ba8c  81 30 83 e0                                      add r3, r3, r1, lsl #1
0032ba90  18 10 a0 e3                                      mov r1, #0x18
0032ba94  91 03 01 e0                                      mul r1, r1, r3
0032ba98  80 00 51 e3                                      cmp r1, #0x80
0032ba9c  0b 00 00 8a                                      bhi #0x32bad0
0032baa0  16 75 0f eb                                      bl #0x708f00
0032baa4  04 30 9d e5                                      ldr r3, [sp, #4]
0032baa8  18 20 a0 e3                                      mov r2, #0x18
0032baac  00 50 84 e5                                      str r5, [r4]
0032bab0  92 53 25 e0                                      mla r5, r2, r3, r5
0032bab4  04 80 84 e5                                      str r8, [r4, #4]
0032bab8  08 50 84 e5                                      str r5, [r4, #8]
0032babc  0c d0 8d e2                                      add sp, sp, #0xc
0032bac0  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0032bac4  aa 1a 0a e3                                      movw r1, #0xaaaa
0032bac8  01 16 81 e1                                      orr r1, r1, r1, lsl #12
0032bacc  b0 ff ff ea                                      b #0x32b994
0032bad0  5a 92 ff eb                                      bl #0x310440
0032bad4  f2 ff ff ea                                      b #0x32baa4

; FUNCTION 0x0032bad8, declared_size=192, range_size=192, mode=arm
; class-group: std::vector<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::allocator<std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >
; alias: _ZNSt6vectorISsSaISsEE9push_backERKSs
; demangled: std::vector<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::allocator<std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::push_back(std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&)
; decoder-mode: arm
0032bad8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0032badc  ac 40 9f e5                                      ldr r4, [pc, #0xac]
0032bae0  ac 50 9f e5                                      ldr r5, [pc, #0xac]
0032bae4  04 80 90 e5                                      ldr r8, [r0, #4]
0032bae8  04 40 8f e0                                      add r4, pc, r4
0032baec  05 30 94 e7                                      ldr r3, [r4, r5]
0032baf0  00 70 a0 e1                                      mov r7, r0
0032baf4  08 00 90 e5                                      ldr r0, [r0, #8]
0032baf8  00 30 93 e5                                      ldr r3, [r3]
0032bafc  20 d0 4d e2                                      sub sp, sp, #0x20
0032bb00  00 00 58 e1                                      cmp r8, r0
0032bb04  01 20 a0 e1                                      mov r2, r1
0032bb08  1c 30 8d e5                                      str r3, [sp, #0x1c]
0032bb0c  0b 00 00 0a                                      beq #0x32bb40
0032bb10  08 00 a0 e1                                      mov r0, r8
0032bb14  7f ff ff eb                                      bl #0x32b918
0032bb18  04 30 97 e5                                      ldr r3, [r7, #4]
0032bb1c  18 30 83 e2                                      add r3, r3, #0x18
0032bb20  04 30 87 e5                                      str r3, [r7, #4]
0032bb24  05 30 94 e7                                      ldr r3, [r4, r5]
0032bb28  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0032bb2c  00 30 93 e5                                      ldr r3, [r3]
0032bb30  03 00 52 e1                                      cmp r2, r3
0032bb34  14 00 00 1a                                      bne #0x32bb8c
0032bb38  20 d0 8d e2                                      add sp, sp, #0x20
0032bb3c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0032bb40  00 30 97 e5                                      ldr r3, [r7]
0032bb44  03 00 51 e1                                      cmp r1, r3
0032bb48  0b 00 00 3a                                      blo #0x32bb7c
0032bb4c  01 00 58 e1                                      cmp r8, r1
0032bb50  09 00 00 9a                                      bls #0x32bb7c
0032bb54  04 60 8d e2                                      add r6, sp, #4
0032bb58  06 00 a0 e1                                      mov r0, r6
0032bb5c  6d ff ff eb                                      bl #0x32b918
0032bb60  07 00 a0 e1                                      mov r0, r7
0032bb64  08 10 a0 e1                                      mov r1, r8
0032bb68  06 20 a0 e1                                      mov r2, r6
0032bb6c  72 ff ff eb                                      bl #0x32b93c
0032bb70  06 00 a0 e1                                      mov r0, r6
0032bb74  8c 9f ff eb                                      bl #0x3139ac
0032bb78  e9 ff ff ea                                      b #0x32bb24
0032bb7c  07 00 a0 e1                                      mov r0, r7
0032bb80  08 10 a0 e1                                      mov r1, r8
0032bb84  6c ff ff eb                                      bl #0x32b93c
0032bb88  e5 ff ff ea                                      b #0x32bb24
0032bb8c  df 89 ff eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0032bb90  a8 8f 66 00 ac 40 00 00                          .byte 0xa8, 0x8f, 0x66, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x003303ec, declared_size=228, range_size=228, mode=arm
; class-group: std::vector<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::allocator<std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >
; alias: _ZNSt6vectorISsSaISsEE8_M_eraseEPSsRKSt11__true_type
; demangled: std::vector<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::allocator<std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::_M_erase(std::basic_string<char, std::char_traits<char>, std::allocator<char> >*, std::__true_type const&)
; decoder-mode: arm
003303ec  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
003303f0  00 90 a0 e1                                      mov sb, r0
003303f4  01 00 a0 e1                                      mov r0, r1
003303f8  01 80 a0 e1                                      mov r8, r1
003303fc  6a 8d ff eb                                      bl #0x3139ac
00330400  04 60 99 e5                                      ldr r6, [sb, #4]
00330404  18 40 88 e2                                      add r4, r8, #0x18
00330408  06 00 54 e1                                      cmp r4, r6
0033040c  08 30 a0 01                                      moveq r3, r8
00330410  2b 00 00 0a                                      beq #0x3304c4
00330414  08 c0 a0 e1                                      mov ip, r8
00330418  00 70 a0 e3                                      mov r7, #0
0033041c  09 00 00 ea                                      b #0x330448
00330420  28 10 9c e5                                      ldr r1, [ip, #0x28]
00330424  18 20 9c e5                                      ldr r2, [ip, #0x18]
00330428  14 30 8c e5                                      str r3, [ip, #0x14]
0033042c  10 10 8c e5                                      str r1, [ip, #0x10]
00330430  18 20 04 e5                                      str r2, [r4, #-0x18]
00330434  18 40 84 e2                                      add r4, r4, #0x18
00330438  06 00 54 e1                                      cmp r4, r6
0033043c  2c 70 8c e5                                      str r7, [ip, #0x2c]
00330440  05 c0 a0 e1                                      mov ip, r5
00330444  11 00 00 0a                                      beq #0x330490
00330448  2c 30 9c e5                                      ldr r3, [ip, #0x2c]
0033044c  18 50 8c e2                                      add r5, ip, #0x18
00330450  04 00 53 e1                                      cmp r3, r4
00330454  14 30 8c e5                                      str r3, [ip, #0x14]
00330458  f0 ff ff 1a                                      bne #0x330420
0033045c  18 a0 44 e2                                      sub sl, r4, #0x18
00330460  0f 00 95 e8                                      ldm r5, {r0, r1, r2, r3}
00330464  0f 00 8a e8                                      stm sl, {r0, r1, r2, r3}
00330468  28 20 9c e5                                      ldr r2, [ip, #0x28]
0033046c  2c 30 9c e5                                      ldr r3, [ip, #0x2c]
00330470  18 40 84 e2                                      add r4, r4, #0x18
00330474  06 00 54 e1                                      cmp r4, r6
00330478  02 30 63 e0                                      rsb r3, r3, r2
0033047c  03 30 8c e0                                      add r3, ip, r3
00330480  14 c0 8c e5                                      str ip, [ip, #0x14]
00330484  10 30 8c e5                                      str r3, [ip, #0x10]
00330488  05 c0 a0 e1                                      mov ip, r5
0033048c  ed ff ff 1a                                      bne #0x330448
00330490  30 30 88 e2                                      add r3, r8, #0x30
00330494  04 40 63 e0                                      rsb r4, r3, r4
00330498  a4 41 a0 e1                                      lsr r4, r4, #3
0033049c  18 30 a0 e3                                      mov r3, #0x18
003304a0  04 21 84 e0                                      add r2, r4, r4, lsl #2
003304a4  02 21 84 e0                                      add r2, r4, r2, lsl #2
003304a8  02 23 82 e0                                      add r2, r2, r2, lsl #6
003304ac  02 21 84 e0                                      add r2, r4, r2, lsl #2
003304b0  02 27 82 e0                                      add r2, r2, r2, lsl #14
003304b4  82 40 84 e0                                      add r4, r4, r2, lsl #1
003304b8  0e 42 c4 e3                                      bic r4, r4, #0xe0000000
003304bc  94 33 23 e0                                      mla r3, r4, r3, r3
003304c0  03 30 88 e0                                      add r3, r8, r3
003304c4  04 30 89 e5                                      str r3, [sb, #4]
003304c8  08 00 a0 e1                                      mov r0, r8
003304cc  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x003304d0, declared_size=420, range_size=420, mode=arm
; class-group: std::vector<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::allocator<std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >
; alias: _ZNSt6vectorISsSaISsEE8_M_eraseEPSsS2_RKSt11__true_type
; demangled: std::vector<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::allocator<std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::_M_erase(std::basic_string<char, std::char_traits<char>, std::allocator<char> >*, std::basic_string<char, std::char_traits<char>, std::allocator<char> >*, std::__true_type const&)
; decoder-mode: arm
003304d0  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
003304d4  04 60 90 e5                                      ldr r6, [r0, #4]
003304d8  00 90 a0 e1                                      mov sb, r0
003304dc  01 a0 a0 e1                                      mov sl, r1
003304e0  06 00 52 e1                                      cmp r2, r6
003304e4  02 00 51 11                                      cmpne r1, r2
003304e8  02 70 a0 e1                                      mov r7, r2
003304ec  02 40 a0 01                                      moveq r4, r2
003304f0  01 50 a0 01                                      moveq r5, r1
003304f4  22 00 00 0a                                      beq #0x330584
003304f8  02 40 a0 e1                                      mov r4, r2
003304fc  01 50 a0 e1                                      mov r5, r1
00330500  00 80 a0 e3                                      mov r8, #0
00330504  0a 00 00 ea                                      b #0x330534
00330508  14 30 85 e5                                      str r3, [r5, #0x14]
0033050c  10 30 94 e5                                      ldr r3, [r4, #0x10]
00330510  10 30 85 e5                                      str r3, [r5, #0x10]
00330514  00 30 94 e5                                      ldr r3, [r4]
00330518  00 30 85 e5                                      str r3, [r5]
0033051c  14 80 84 e5                                      str r8, [r4, #0x14]
00330520  18 50 85 e2                                      add r5, r5, #0x18
00330524  18 40 84 e2                                      add r4, r4, #0x18
00330528  06 00 54 e1                                      cmp r4, r6
0033052c  05 00 57 11                                      cmpne r7, r5
00330530  13 00 00 0a                                      beq #0x330584
00330534  05 00 a0 e1                                      mov r0, r5
00330538  1b 8d ff eb                                      bl #0x3139ac
0033053c  14 30 94 e5                                      ldr r3, [r4, #0x14]
00330540  14 30 85 e5                                      str r3, [r5, #0x14]
00330544  14 30 94 e5                                      ldr r3, [r4, #0x14]
00330548  04 00 53 e1                                      cmp r3, r4
0033054c  ed ff ff 1a                                      bne #0x330508
00330550  0f 00 94 e8                                      ldm r4, {r0, r1, r2, r3}
00330554  0f 00 85 e8                                      stm r5, {r0, r1, r2, r3}
00330558  10 20 94 e5                                      ldr r2, [r4, #0x10]
0033055c  14 30 94 e5                                      ldr r3, [r4, #0x14]
00330560  14 50 85 e5                                      str r5, [r5, #0x14]
00330564  18 40 84 e2                                      add r4, r4, #0x18
00330568  02 30 63 e0                                      rsb r3, r3, r2
0033056c  03 30 85 e0                                      add r3, r5, r3
00330570  10 30 85 e5                                      str r3, [r5, #0x10]
00330574  18 50 85 e2                                      add r5, r5, #0x18
00330578  06 00 54 e1                                      cmp r4, r6
0033057c  05 00 57 11                                      cmpne r7, r5
00330580  eb ff ff 1a                                      bne #0x330534
00330584  07 00 55 e1                                      cmp r5, r7
00330588  05 40 a0 11                                      movne r4, r5
0033058c  07 00 00 0a                                      beq #0x3305b0
00330590  04 00 a0 e1                                      mov r0, r4
00330594  18 40 84 e2                                      add r4, r4, #0x18
00330598  03 8d ff eb                                      bl #0x3139ac
0033059c  04 00 57 e1                                      cmp r7, r4
003305a0  fa ff ff 1a                                      bne #0x330590
003305a4  04 50 89 e5                                      str r5, [sb, #4]
003305a8  0a 00 a0 e1                                      mov r0, sl
003305ac  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
003305b0  04 00 56 e1                                      cmp r6, r4
003305b4  04 c0 a0 11                                      movne ip, r4
003305b8  05 70 a0 11                                      movne r7, r5
003305bc  00 80 a0 13                                      movne r8, #0
003305c0  0a 00 00 1a                                      bne #0x3305f0
003305c4  f6 ff ff ea                                      b #0x3305a4
003305c8  14 30 87 e5                                      str r3, [r7, #0x14]
003305cc  10 30 9c e5                                      ldr r3, [ip, #0x10]
003305d0  10 30 87 e5                                      str r3, [r7, #0x10]
003305d4  00 30 9c e5                                      ldr r3, [ip]
003305d8  00 30 87 e5                                      str r3, [r7]
003305dc  14 80 8c e5                                      str r8, [ip, #0x14]
003305e0  18 c0 8c e2                                      add ip, ip, #0x18
003305e4  06 00 5c e1                                      cmp ip, r6
003305e8  18 70 87 e2                                      add r7, r7, #0x18
003305ec  10 00 00 0a                                      beq #0x330634
003305f0  14 30 9c e5                                      ldr r3, [ip, #0x14]
003305f4  14 30 87 e5                                      str r3, [r7, #0x14]
003305f8  14 30 9c e5                                      ldr r3, [ip, #0x14]
003305fc  0c 00 53 e1                                      cmp r3, ip
00330600  f0 ff ff 1a                                      bne #0x3305c8
00330604  0f 00 9c e8                                      ldm ip, {r0, r1, r2, r3}
00330608  0f 00 87 e8                                      stm r7, {r0, r1, r2, r3}
0033060c  10 20 9c e5                                      ldr r2, [ip, #0x10]
00330610  14 30 9c e5                                      ldr r3, [ip, #0x14]
00330614  18 c0 8c e2                                      add ip, ip, #0x18
00330618  06 00 5c e1                                      cmp ip, r6
0033061c  02 30 63 e0                                      rsb r3, r3, r2
00330620  03 30 87 e0                                      add r3, r7, r3
00330624  14 70 87 e5                                      str r7, [r7, #0x14]
00330628  10 30 87 e5                                      str r3, [r7, #0x10]
0033062c  18 70 87 e2                                      add r7, r7, #0x18
00330630  ee ff ff 1a                                      bne #0x3305f0
00330634  18 30 84 e2                                      add r3, r4, #0x18
00330638  0c 30 63 e0                                      rsb r3, r3, ip
0033063c  a3 31 a0 e1                                      lsr r3, r3, #3
00330640  18 20 a0 e3                                      mov r2, #0x18
00330644  03 11 83 e0                                      add r1, r3, r3, lsl #2
00330648  0a 00 a0 e1                                      mov r0, sl
0033064c  01 11 83 e0                                      add r1, r3, r1, lsl #2
00330650  01 13 81 e0                                      add r1, r1, r1, lsl #6
00330654  01 11 83 e0                                      add r1, r3, r1, lsl #2
00330658  01 17 81 e0                                      add r1, r1, r1, lsl #14
0033065c  81 30 83 e0                                      add r3, r3, r1, lsl #1
00330660  0e 32 c3 e3                                      bic r3, r3, #0xe0000000
00330664  93 22 22 e0                                      mla r2, r3, r2, r2
00330668  02 50 85 e0                                      add r5, r5, r2
0033066c  04 50 89 e5                                      str r5, [sb, #4]
00330670  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x003322e0, declared_size=424, range_size=424, mode=arm
; class-group: std::vector<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::allocator<std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >
; alias: _ZNSt6vectorISsSaISsEE22_M_insert_overflow_auxEPSsRKSsRKSt12__false_typejb.clone.4
; demangled: std::vector<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::allocator<std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::_M_insert_overflow_aux(std::basic_string<char, std::char_traits<char>, std::allocator<char> >*, std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, std::__false_type const&, unsigned int, bool) [clone .clone.4]
; decoder-mode: arm
003322e0  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
003322e4  00 40 a0 e1                                      mov r4, r0
003322e8  01 10 90 e8                                      ldm r0, {r0, ip}
003322ec  01 80 a0 e1                                      mov r8, r1
003322f0  aa 3a 0a e3                                      movw r3, #0xaaaa
003322f4  0c 00 60 e0                                      rsb r0, r0, ip
003322f8  c0 01 a0 e1                                      asr r0, r0, #3
003322fc  03 36 83 e1                                      orr r3, r3, r3, lsl #12
00332300  00 11 80 e0                                      add r1, r0, r0, lsl #2
00332304  0c d0 4d e2                                      sub sp, sp, #0xc
00332308  01 12 81 e0                                      add r1, r1, r1, lsl #4
0033230c  02 a0 a0 e1                                      mov sl, r2
00332310  01 14 81 e0                                      add r1, r1, r1, lsl #8
00332314  01 18 81 e0                                      add r1, r1, r1, lsl #16
00332318  81 00 80 e0                                      add r0, r0, r1, lsl #1
0033231c  01 00 50 e3                                      cmp r0, #1
00332320  00 10 80 20                                      addhs r1, r0, r0
00332324  01 10 80 32                                      addlo r1, r0, #1
00332328  03 00 51 e1                                      cmp r1, r3
0033232c  50 00 00 8a                                      bhi #0x332474
00332330  01 00 50 e1                                      cmp r0, r1
00332334  4e 00 00 8a                                      bhi #0x332474
00332338  08 20 8d e2                                      add r2, sp, #8
0033233c  04 10 22 e5                                      str r1, [r2, #-4]!
00332340  08 00 84 e2                                      add r0, r4, #8
00332344  4f dc ff eb                                      bl #0x329488
00332348  00 c0 94 e5                                      ldr ip, [r4]
0033234c  00 50 a0 e1                                      mov r5, r0
00332350  08 80 6c e0                                      rsb r8, ip, r8
00332354  c8 31 a0 e1                                      asr r3, r8, #3
00332358  03 81 83 e0                                      add r8, r3, r3, lsl #2
0033235c  08 82 88 e0                                      add r8, r8, r8, lsl #4
00332360  08 84 88 e0                                      add r8, r8, r8, lsl #8
00332364  08 88 88 e0                                      add r8, r8, r8, lsl #16
00332368  88 80 83 e0                                      add r8, r3, r8, lsl #1
0033236c  00 00 58 e3                                      cmp r8, #0
00332370  00 80 a0 d1                                      movle r8, r0
00332374  1f 00 00 da                                      ble #0x3323f8
00332378  08 60 a0 e1                                      mov r6, r8
0033237c  00 e0 a0 e1                                      mov lr, r0
00332380  00 70 a0 e3                                      mov r7, #0
00332384  09 00 00 ea                                      b #0x3323b0
00332388  14 30 8e e5                                      str r3, [lr, #0x14]
0033238c  10 30 9c e5                                      ldr r3, [ip, #0x10]
00332390  01 60 56 e2                                      subs r6, r6, #1
00332394  10 30 8e e5                                      str r3, [lr, #0x10]
00332398  00 30 9c e5                                      ldr r3, [ip]
0033239c  00 30 8e e5                                      str r3, [lr]
003323a0  14 70 8c e5                                      str r7, [ip, #0x14]
003323a4  18 e0 8e e2                                      add lr, lr, #0x18
003323a8  10 00 00 0a                                      beq #0x3323f0
003323ac  18 c0 8c e2                                      add ip, ip, #0x18
003323b0  14 30 9c e5                                      ldr r3, [ip, #0x14]
003323b4  14 30 8e e5                                      str r3, [lr, #0x14]
003323b8  14 30 9c e5                                      ldr r3, [ip, #0x14]
003323bc  0c 00 53 e1                                      cmp r3, ip
003323c0  f0 ff ff 1a                                      bne #0x332388
003323c4  0f 00 9c e8                                      ldm ip, {r0, r1, r2, r3}
003323c8  0f 00 8e e8                                      stm lr, {r0, r1, r2, r3}
003323cc  10 20 9c e5                                      ldr r2, [ip, #0x10]
003323d0  14 30 9c e5                                      ldr r3, [ip, #0x14]
003323d4  01 60 56 e2                                      subs r6, r6, #1
003323d8  14 e0 8e e5                                      str lr, [lr, #0x14]
003323dc  02 30 63 e0                                      rsb r3, r3, r2
003323e0  03 30 8e e0                                      add r3, lr, r3
003323e4  10 30 8e e5                                      str r3, [lr, #0x10]
003323e8  18 e0 8e e2                                      add lr, lr, #0x18
003323ec  ee ff ff 1a                                      bne #0x3323ac
003323f0  18 30 a0 e3                                      mov r3, #0x18
003323f4  93 58 28 e0                                      mla r8, r3, r8, r5
003323f8  10 80 88 e5                                      str r8, [r8, #0x10]
003323fc  14 80 88 e5                                      str r8, [r8, #0x14]
00332400  08 00 a0 e1                                      mov r0, r8
00332404  10 20 9a e5                                      ldr r2, [sl, #0x10]
00332408  14 10 9a e5                                      ldr r1, [sl, #0x14]
0033240c  b5 7c ff eb                                      bl #0x3116e8
00332410  00 00 94 e5                                      ldr r0, [r4]
00332414  18 80 88 e2                                      add r8, r8, #0x18
00332418  08 30 94 e5                                      ldr r3, [r4, #8]
0033241c  00 00 50 e3                                      cmp r0, #0
00332420  0b 00 00 0a                                      beq #0x332454
00332424  03 30 60 e0                                      rsb r3, r0, r3
00332428  c3 31 a0 e1                                      asr r3, r3, #3
0033242c  03 11 83 e0                                      add r1, r3, r3, lsl #2
00332430  01 12 81 e0                                      add r1, r1, r1, lsl #4
00332434  01 14 81 e0                                      add r1, r1, r1, lsl #8
00332438  01 18 81 e0                                      add r1, r1, r1, lsl #16
0033243c  81 30 83 e0                                      add r3, r3, r1, lsl #1
00332440  18 10 a0 e3                                      mov r1, #0x18
00332444  91 03 01 e0                                      mul r1, r1, r3
00332448  80 00 51 e3                                      cmp r1, #0x80
0033244c  0b 00 00 8a                                      bhi #0x332480
00332450  aa 5a 0f eb                                      bl #0x708f00
00332454  04 30 9d e5                                      ldr r3, [sp, #4]
00332458  18 20 a0 e3                                      mov r2, #0x18
0033245c  00 50 84 e5                                      str r5, [r4]
00332460  92 53 25 e0                                      mla r5, r2, r3, r5
00332464  04 80 84 e5                                      str r8, [r4, #4]
00332468  08 50 84 e5                                      str r5, [r4, #8]
0033246c  0c d0 8d e2                                      add sp, sp, #0xc
00332470  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00332474  aa 1a 0a e3                                      movw r1, #0xaaaa
00332478  01 16 81 e1                                      orr r1, r1, r1, lsl #12
0033247c  ad ff ff ea                                      b #0x332338
00332480  ee 77 ff eb                                      bl #0x310440
00332484  f2 ff ff ea                                      b #0x332454

; FUNCTION 0x00350274, declared_size=424, range_size=424, mode=arm
; class-group: std::vector<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::allocator<std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >
; alias: _ZNSt6vectorISsSaISsEE22_M_insert_overflow_auxEPSsRKSsRKSt12__false_typejb.clone.3
; demangled: std::vector<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::allocator<std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::_M_insert_overflow_aux(std::basic_string<char, std::char_traits<char>, std::allocator<char> >*, std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, std::__false_type const&, unsigned int, bool) [clone .clone.3]
; decoder-mode: arm
00350274  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00350278  00 40 a0 e1                                      mov r4, r0
0035027c  01 10 90 e8                                      ldm r0, {r0, ip}
00350280  01 80 a0 e1                                      mov r8, r1
00350284  aa 3a 0a e3                                      movw r3, #0xaaaa
00350288  0c 00 60 e0                                      rsb r0, r0, ip
0035028c  c0 01 a0 e1                                      asr r0, r0, #3
00350290  03 36 83 e1                                      orr r3, r3, r3, lsl #12
00350294  00 11 80 e0                                      add r1, r0, r0, lsl #2
00350298  0c d0 4d e2                                      sub sp, sp, #0xc
0035029c  01 12 81 e0                                      add r1, r1, r1, lsl #4
003502a0  02 a0 a0 e1                                      mov sl, r2
003502a4  01 14 81 e0                                      add r1, r1, r1, lsl #8
003502a8  01 18 81 e0                                      add r1, r1, r1, lsl #16
003502ac  81 00 80 e0                                      add r0, r0, r1, lsl #1
003502b0  01 00 50 e3                                      cmp r0, #1
003502b4  00 10 80 20                                      addhs r1, r0, r0
003502b8  01 10 80 32                                      addlo r1, r0, #1
003502bc  03 00 51 e1                                      cmp r1, r3
003502c0  50 00 00 8a                                      bhi #0x350408
003502c4  01 00 50 e1                                      cmp r0, r1
003502c8  4e 00 00 8a                                      bhi #0x350408
003502cc  08 20 8d e2                                      add r2, sp, #8
003502d0  04 10 22 e5                                      str r1, [r2, #-4]!
003502d4  08 00 84 e2                                      add r0, r4, #8
003502d8  6a 64 ff eb                                      bl #0x329488
003502dc  00 c0 94 e5                                      ldr ip, [r4]
003502e0  00 50 a0 e1                                      mov r5, r0
003502e4  08 80 6c e0                                      rsb r8, ip, r8
003502e8  c8 31 a0 e1                                      asr r3, r8, #3
003502ec  03 81 83 e0                                      add r8, r3, r3, lsl #2
003502f0  08 82 88 e0                                      add r8, r8, r8, lsl #4
003502f4  08 84 88 e0                                      add r8, r8, r8, lsl #8
003502f8  08 88 88 e0                                      add r8, r8, r8, lsl #16
003502fc  88 80 83 e0                                      add r8, r3, r8, lsl #1
00350300  00 00 58 e3                                      cmp r8, #0
00350304  00 80 a0 d1                                      movle r8, r0
00350308  1f 00 00 da                                      ble #0x35038c
0035030c  08 60 a0 e1                                      mov r6, r8
00350310  00 e0 a0 e1                                      mov lr, r0
00350314  00 70 a0 e3                                      mov r7, #0
00350318  09 00 00 ea                                      b #0x350344
0035031c  14 30 8e e5                                      str r3, [lr, #0x14]
00350320  10 30 9c e5                                      ldr r3, [ip, #0x10]
00350324  01 60 56 e2                                      subs r6, r6, #1
00350328  10 30 8e e5                                      str r3, [lr, #0x10]
0035032c  00 30 9c e5                                      ldr r3, [ip]
00350330  00 30 8e e5                                      str r3, [lr]
00350334  14 70 8c e5                                      str r7, [ip, #0x14]
00350338  18 e0 8e e2                                      add lr, lr, #0x18
0035033c  10 00 00 0a                                      beq #0x350384
00350340  18 c0 8c e2                                      add ip, ip, #0x18
00350344  14 30 9c e5                                      ldr r3, [ip, #0x14]
00350348  14 30 8e e5                                      str r3, [lr, #0x14]
0035034c  14 30 9c e5                                      ldr r3, [ip, #0x14]
00350350  0c 00 53 e1                                      cmp r3, ip
00350354  f0 ff ff 1a                                      bne #0x35031c
00350358  0f 00 9c e8                                      ldm ip, {r0, r1, r2, r3}
0035035c  0f 00 8e e8                                      stm lr, {r0, r1, r2, r3}
00350360  10 20 9c e5                                      ldr r2, [ip, #0x10]
00350364  14 30 9c e5                                      ldr r3, [ip, #0x14]
00350368  01 60 56 e2                                      subs r6, r6, #1
0035036c  14 e0 8e e5                                      str lr, [lr, #0x14]
00350370  02 30 63 e0                                      rsb r3, r3, r2
00350374  03 30 8e e0                                      add r3, lr, r3
00350378  10 30 8e e5                                      str r3, [lr, #0x10]
0035037c  18 e0 8e e2                                      add lr, lr, #0x18
00350380  ee ff ff 1a                                      bne #0x350340
00350384  18 30 a0 e3                                      mov r3, #0x18
00350388  93 58 28 e0                                      mla r8, r3, r8, r5
0035038c  10 80 88 e5                                      str r8, [r8, #0x10]
00350390  14 80 88 e5                                      str r8, [r8, #0x14]
00350394  08 00 a0 e1                                      mov r0, r8
00350398  10 20 9a e5                                      ldr r2, [sl, #0x10]
0035039c  14 10 9a e5                                      ldr r1, [sl, #0x14]
003503a0  d0 04 ff eb                                      bl #0x3116e8
003503a4  00 00 94 e5                                      ldr r0, [r4]
003503a8  18 80 88 e2                                      add r8, r8, #0x18
003503ac  08 30 94 e5                                      ldr r3, [r4, #8]
003503b0  00 00 50 e3                                      cmp r0, #0
003503b4  0b 00 00 0a                                      beq #0x3503e8
003503b8  03 30 60 e0                                      rsb r3, r0, r3
003503bc  c3 31 a0 e1                                      asr r3, r3, #3
003503c0  03 11 83 e0                                      add r1, r3, r3, lsl #2
003503c4  01 12 81 e0                                      add r1, r1, r1, lsl #4
003503c8  01 14 81 e0                                      add r1, r1, r1, lsl #8
003503cc  01 18 81 e0                                      add r1, r1, r1, lsl #16
003503d0  81 30 83 e0                                      add r3, r3, r1, lsl #1
003503d4  18 10 a0 e3                                      mov r1, #0x18
003503d8  91 03 01 e0                                      mul r1, r1, r3
003503dc  80 00 51 e3                                      cmp r1, #0x80
003503e0  0b 00 00 8a                                      bhi #0x350414
003503e4  c5 e2 0e eb                                      bl #0x708f00
003503e8  04 30 9d e5                                      ldr r3, [sp, #4]
003503ec  18 20 a0 e3                                      mov r2, #0x18
003503f0  00 50 84 e5                                      str r5, [r4]
003503f4  92 53 25 e0                                      mla r5, r2, r3, r5
003503f8  04 80 84 e5                                      str r8, [r4, #4]
003503fc  08 50 84 e5                                      str r5, [r4, #8]
00350400  0c d0 8d e2                                      add sp, sp, #0xc
00350404  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00350408  aa 1a 0a e3                                      movw r1, #0xaaaa
0035040c  01 16 81 e1                                      orr r1, r1, r1, lsl #12
00350410  ad ff ff ea                                      b #0x3502cc
00350414  09 00 ff eb                                      bl #0x310440
00350418  f2 ff ff ea                                      b #0x3503e8

; FUNCTION 0x00389c30, declared_size=412, range_size=412, mode=arm
; class-group: std::vector<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::allocator<std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >
; alias: _ZNSt6vectorISsSaISsEE22_M_insert_overflow_auxEPSsRKSsRKSt12__false_typejb.clone.12
; demangled: std::vector<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::allocator<std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::_M_insert_overflow_aux(std::basic_string<char, std::char_traits<char>, std::allocator<char> >*, std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, std::__false_type const&, unsigned int, bool) [clone .clone.12]
; decoder-mode: arm
00389c30  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00389c34  00 40 a0 e1                                      mov r4, r0
00389c38  01 10 90 e8                                      ldm r0, {r0, ip}
00389c3c  01 80 a0 e1                                      mov r8, r1
00389c40  aa 3a 0a e3                                      movw r3, #0xaaaa
00389c44  0c 00 60 e0                                      rsb r0, r0, ip
00389c48  c0 01 a0 e1                                      asr r0, r0, #3
00389c4c  03 36 83 e1                                      orr r3, r3, r3, lsl #12
00389c50  00 11 80 e0                                      add r1, r0, r0, lsl #2
00389c54  0c d0 4d e2                                      sub sp, sp, #0xc
00389c58  01 12 81 e0                                      add r1, r1, r1, lsl #4
00389c5c  02 a0 a0 e1                                      mov sl, r2
00389c60  01 14 81 e0                                      add r1, r1, r1, lsl #8
00389c64  01 18 81 e0                                      add r1, r1, r1, lsl #16
00389c68  81 00 80 e0                                      add r0, r0, r1, lsl #1
00389c6c  01 00 50 e3                                      cmp r0, #1
00389c70  00 10 80 20                                      addhs r1, r0, r0
00389c74  01 10 80 32                                      addlo r1, r0, #1
00389c78  03 00 51 e1                                      cmp r1, r3
00389c7c  4d 00 00 8a                                      bhi #0x389db8
00389c80  01 00 50 e1                                      cmp r0, r1
00389c84  4b 00 00 8a                                      bhi #0x389db8
00389c88  08 20 8d e2                                      add r2, sp, #8
00389c8c  04 10 22 e5                                      str r1, [r2, #-4]!
00389c90  08 00 84 e2                                      add r0, r4, #8
00389c94  fb 7d fe eb                                      bl #0x329488
00389c98  00 c0 94 e5                                      ldr ip, [r4]
00389c9c  00 50 a0 e1                                      mov r5, r0
00389ca0  08 80 6c e0                                      rsb r8, ip, r8
00389ca4  c8 31 a0 e1                                      asr r3, r8, #3
00389ca8  03 81 83 e0                                      add r8, r3, r3, lsl #2
00389cac  08 82 88 e0                                      add r8, r8, r8, lsl #4
00389cb0  08 84 88 e0                                      add r8, r8, r8, lsl #8
00389cb4  08 88 88 e0                                      add r8, r8, r8, lsl #16
00389cb8  88 80 83 e0                                      add r8, r3, r8, lsl #1
00389cbc  00 00 58 e3                                      cmp r8, #0
00389cc0  00 80 a0 d1                                      movle r8, r0
00389cc4  1f 00 00 da                                      ble #0x389d48
00389cc8  08 60 a0 e1                                      mov r6, r8
00389ccc  00 e0 a0 e1                                      mov lr, r0
00389cd0  00 70 a0 e3                                      mov r7, #0
00389cd4  09 00 00 ea                                      b #0x389d00
00389cd8  14 30 8e e5                                      str r3, [lr, #0x14]
00389cdc  10 30 9c e5                                      ldr r3, [ip, #0x10]
00389ce0  01 60 56 e2                                      subs r6, r6, #1
00389ce4  10 30 8e e5                                      str r3, [lr, #0x10]
00389ce8  00 30 9c e5                                      ldr r3, [ip]
00389cec  00 30 8e e5                                      str r3, [lr]
00389cf0  14 70 8c e5                                      str r7, [ip, #0x14]
00389cf4  18 e0 8e e2                                      add lr, lr, #0x18
00389cf8  10 00 00 0a                                      beq #0x389d40
00389cfc  18 c0 8c e2                                      add ip, ip, #0x18
00389d00  14 30 9c e5                                      ldr r3, [ip, #0x14]
00389d04  14 30 8e e5                                      str r3, [lr, #0x14]
00389d08  14 30 9c e5                                      ldr r3, [ip, #0x14]
00389d0c  0c 00 53 e1                                      cmp r3, ip
00389d10  f0 ff ff 1a                                      bne #0x389cd8
00389d14  0f 00 9c e8                                      ldm ip, {r0, r1, r2, r3}
00389d18  0f 00 8e e8                                      stm lr, {r0, r1, r2, r3}
00389d1c  10 20 9c e5                                      ldr r2, [ip, #0x10]
00389d20  14 30 9c e5                                      ldr r3, [ip, #0x14]
00389d24  01 60 56 e2                                      subs r6, r6, #1
00389d28  14 e0 8e e5                                      str lr, [lr, #0x14]
00389d2c  02 30 63 e0                                      rsb r3, r3, r2
00389d30  03 30 8e e0                                      add r3, lr, r3
00389d34  10 30 8e e5                                      str r3, [lr, #0x10]
00389d38  18 e0 8e e2                                      add lr, lr, #0x18
00389d3c  ee ff ff 1a                                      bne #0x389cfc
00389d40  18 30 a0 e3                                      mov r3, #0x18
00389d44  93 58 28 e0                                      mla r8, r3, r8, r5
00389d48  08 00 a0 e1                                      mov r0, r8
00389d4c  0a 10 a0 e1                                      mov r1, sl
00389d50  f0 86 fe eb                                      bl #0x32b918
00389d54  00 00 94 e5                                      ldr r0, [r4]
00389d58  18 80 88 e2                                      add r8, r8, #0x18
00389d5c  08 30 94 e5                                      ldr r3, [r4, #8]
00389d60  00 00 50 e3                                      cmp r0, #0
00389d64  0b 00 00 0a                                      beq #0x389d98
00389d68  03 30 60 e0                                      rsb r3, r0, r3
00389d6c  c3 31 a0 e1                                      asr r3, r3, #3
00389d70  03 11 83 e0                                      add r1, r3, r3, lsl #2
00389d74  01 12 81 e0                                      add r1, r1, r1, lsl #4
00389d78  01 14 81 e0                                      add r1, r1, r1, lsl #8
00389d7c  01 18 81 e0                                      add r1, r1, r1, lsl #16
00389d80  81 30 83 e0                                      add r3, r3, r1, lsl #1
00389d84  18 10 a0 e3                                      mov r1, #0x18
00389d88  91 03 01 e0                                      mul r1, r1, r3
00389d8c  80 00 51 e3                                      cmp r1, #0x80
00389d90  0b 00 00 8a                                      bhi #0x389dc4
00389d94  59 fc 0d eb                                      bl #0x708f00
00389d98  04 30 9d e5                                      ldr r3, [sp, #4]
00389d9c  18 20 a0 e3                                      mov r2, #0x18
00389da0  00 50 84 e5                                      str r5, [r4]
00389da4  92 53 25 e0                                      mla r5, r2, r3, r5
00389da8  04 80 84 e5                                      str r8, [r4, #4]
00389dac  08 50 84 e5                                      str r5, [r4, #8]
00389db0  0c d0 8d e2                                      add sp, sp, #0xc
00389db4  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00389db8  aa 1a 0a e3                                      movw r1, #0xaaaa
00389dbc  01 16 81 e1                                      orr r1, r1, r1, lsl #12
00389dc0  b0 ff ff ea                                      b #0x389c88
00389dc4  9d 19 fe eb                                      bl #0x310440
00389dc8  f2 ff ff ea                                      b #0x389d98

; FUNCTION 0x00485b34, declared_size=424, range_size=424, mode=arm
; class-group: std::vector<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::allocator<std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >
; alias: _ZNSt6vectorISsSaISsEE22_M_insert_overflow_auxEPSsRKSsRKSt12__false_typejb.clone.9
; demangled: std::vector<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::allocator<std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::_M_insert_overflow_aux(std::basic_string<char, std::char_traits<char>, std::allocator<char> >*, std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, std::__false_type const&, unsigned int, bool) [clone .clone.9]
; decoder-mode: arm
00485b34  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00485b38  00 40 a0 e1                                      mov r4, r0
00485b3c  01 10 90 e8                                      ldm r0, {r0, ip}
00485b40  01 80 a0 e1                                      mov r8, r1
00485b44  aa 3a 0a e3                                      movw r3, #0xaaaa
00485b48  0c 00 60 e0                                      rsb r0, r0, ip
00485b4c  c0 01 a0 e1                                      asr r0, r0, #3
00485b50  03 36 83 e1                                      orr r3, r3, r3, lsl #12
00485b54  00 11 80 e0                                      add r1, r0, r0, lsl #2
00485b58  0c d0 4d e2                                      sub sp, sp, #0xc
00485b5c  01 12 81 e0                                      add r1, r1, r1, lsl #4
00485b60  02 a0 a0 e1                                      mov sl, r2
00485b64  01 14 81 e0                                      add r1, r1, r1, lsl #8
00485b68  01 18 81 e0                                      add r1, r1, r1, lsl #16
00485b6c  81 00 80 e0                                      add r0, r0, r1, lsl #1
00485b70  01 00 50 e3                                      cmp r0, #1
00485b74  00 10 80 20                                      addhs r1, r0, r0
00485b78  01 10 80 32                                      addlo r1, r0, #1
00485b7c  03 00 51 e1                                      cmp r1, r3
00485b80  50 00 00 8a                                      bhi #0x485cc8
00485b84  01 00 50 e1                                      cmp r0, r1
00485b88  4e 00 00 8a                                      bhi #0x485cc8
00485b8c  08 20 8d e2                                      add r2, sp, #8
00485b90  04 10 22 e5                                      str r1, [r2, #-4]!
00485b94  08 00 84 e2                                      add r0, r4, #8
00485b98  3a 8e fa eb                                      bl #0x329488
00485b9c  00 c0 94 e5                                      ldr ip, [r4]
00485ba0  00 50 a0 e1                                      mov r5, r0
00485ba4  08 80 6c e0                                      rsb r8, ip, r8
00485ba8  c8 31 a0 e1                                      asr r3, r8, #3
00485bac  03 81 83 e0                                      add r8, r3, r3, lsl #2
00485bb0  08 82 88 e0                                      add r8, r8, r8, lsl #4
00485bb4  08 84 88 e0                                      add r8, r8, r8, lsl #8
00485bb8  08 88 88 e0                                      add r8, r8, r8, lsl #16
00485bbc  88 80 83 e0                                      add r8, r3, r8, lsl #1
00485bc0  00 00 58 e3                                      cmp r8, #0
00485bc4  00 80 a0 d1                                      movle r8, r0
00485bc8  1f 00 00 da                                      ble #0x485c4c
00485bcc  08 60 a0 e1                                      mov r6, r8
00485bd0  00 e0 a0 e1                                      mov lr, r0
00485bd4  00 70 a0 e3                                      mov r7, #0
00485bd8  09 00 00 ea                                      b #0x485c04
00485bdc  14 30 8e e5                                      str r3, [lr, #0x14]
00485be0  10 30 9c e5                                      ldr r3, [ip, #0x10]
00485be4  01 60 56 e2                                      subs r6, r6, #1
00485be8  10 30 8e e5                                      str r3, [lr, #0x10]
00485bec  00 30 9c e5                                      ldr r3, [ip]
00485bf0  00 30 8e e5                                      str r3, [lr]
00485bf4  14 70 8c e5                                      str r7, [ip, #0x14]
00485bf8  18 e0 8e e2                                      add lr, lr, #0x18
00485bfc  10 00 00 0a                                      beq #0x485c44
00485c00  18 c0 8c e2                                      add ip, ip, #0x18
00485c04  14 30 9c e5                                      ldr r3, [ip, #0x14]
00485c08  14 30 8e e5                                      str r3, [lr, #0x14]
00485c0c  14 30 9c e5                                      ldr r3, [ip, #0x14]
00485c10  0c 00 53 e1                                      cmp r3, ip
00485c14  f0 ff ff 1a                                      bne #0x485bdc
00485c18  0f 00 9c e8                                      ldm ip, {r0, r1, r2, r3}
00485c1c  0f 00 8e e8                                      stm lr, {r0, r1, r2, r3}
00485c20  10 20 9c e5                                      ldr r2, [ip, #0x10]
00485c24  14 30 9c e5                                      ldr r3, [ip, #0x14]
00485c28  01 60 56 e2                                      subs r6, r6, #1
00485c2c  14 e0 8e e5                                      str lr, [lr, #0x14]
00485c30  02 30 63 e0                                      rsb r3, r3, r2
00485c34  03 30 8e e0                                      add r3, lr, r3
00485c38  10 30 8e e5                                      str r3, [lr, #0x10]
00485c3c  18 e0 8e e2                                      add lr, lr, #0x18
00485c40  ee ff ff 1a                                      bne #0x485c00
00485c44  18 30 a0 e3                                      mov r3, #0x18
00485c48  93 58 28 e0                                      mla r8, r3, r8, r5
00485c4c  10 80 88 e5                                      str r8, [r8, #0x10]
00485c50  14 80 88 e5                                      str r8, [r8, #0x14]
00485c54  08 00 a0 e1                                      mov r0, r8
00485c58  10 20 9a e5                                      ldr r2, [sl, #0x10]
00485c5c  14 10 9a e5                                      ldr r1, [sl, #0x14]
00485c60  a0 2e fa eb                                      bl #0x3116e8
00485c64  00 00 94 e5                                      ldr r0, [r4]
00485c68  18 80 88 e2                                      add r8, r8, #0x18
00485c6c  08 30 94 e5                                      ldr r3, [r4, #8]
00485c70  00 00 50 e3                                      cmp r0, #0
00485c74  0b 00 00 0a                                      beq #0x485ca8
00485c78  03 30 60 e0                                      rsb r3, r0, r3
00485c7c  c3 31 a0 e1                                      asr r3, r3, #3
00485c80  03 11 83 e0                                      add r1, r3, r3, lsl #2
00485c84  01 12 81 e0                                      add r1, r1, r1, lsl #4
00485c88  01 14 81 e0                                      add r1, r1, r1, lsl #8
00485c8c  01 18 81 e0                                      add r1, r1, r1, lsl #16
00485c90  81 30 83 e0                                      add r3, r3, r1, lsl #1
00485c94  18 10 a0 e3                                      mov r1, #0x18
00485c98  91 03 01 e0                                      mul r1, r1, r3
00485c9c  80 00 51 e3                                      cmp r1, #0x80
00485ca0  0b 00 00 8a                                      bhi #0x485cd4
00485ca4  95 0c 0a eb                                      bl #0x708f00
00485ca8  04 30 9d e5                                      ldr r3, [sp, #4]
00485cac  18 20 a0 e3                                      mov r2, #0x18
00485cb0  00 50 84 e5                                      str r5, [r4]
00485cb4  92 53 25 e0                                      mla r5, r2, r3, r5
00485cb8  04 80 84 e5                                      str r8, [r4, #4]
00485cbc  08 50 84 e5                                      str r5, [r4, #8]
00485cc0  0c d0 8d e2                                      add sp, sp, #0xc
00485cc4  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00485cc8  aa 1a 0a e3                                      movw r1, #0xaaaa
00485ccc  01 16 81 e1                                      orr r1, r1, r1, lsl #12
00485cd0  ad ff ff ea                                      b #0x485b8c
00485cd4  d9 29 fa eb                                      bl #0x310440
00485cd8  f2 ff ff ea                                      b #0x485ca8

; FUNCTION 0x0048a2f0, declared_size=144, range_size=144, mode=arm
; class-group: std::vector<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::allocator<std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >
; alias: _ZNSt6vectorISsSaISsEEC1ERKS1_
; demangled: std::vector<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::allocator<std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::vector(std::vector<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::allocator<std::basic_string<char, std::char_traits<char>, std::allocator<char> > > > const&)
; decoder-mode: arm
0048a2f0  70 40 2d e9                                      push {r4, r5, r6, lr}
0048a2f4  04 20 91 e5                                      ldr r2, [r1, #4]
0048a2f8  00 30 91 e5                                      ldr r3, [r1]
0048a2fc  01 60 a0 e1                                      mov r6, r1
0048a300  10 d0 4d e2                                      sub sp, sp, #0x10
0048a304  02 30 63 e0                                      rsb r3, r3, r2
0048a308  c3 31 a0 e1                                      asr r3, r3, #3
0048a30c  00 40 a0 e1                                      mov r4, r0
0048a310  03 11 83 e0                                      add r1, r3, r3, lsl #2
0048a314  00 50 a0 e3                                      mov r5, #0
0048a318  01 12 81 e0                                      add r1, r1, r1, lsl #4
0048a31c  10 20 8d e2                                      add r2, sp, #0x10
0048a320  01 14 81 e0                                      add r1, r1, r1, lsl #8
0048a324  00 50 84 e5                                      str r5, [r4]
0048a328  01 18 81 e0                                      add r1, r1, r1, lsl #16
0048a32c  04 50 84 e5                                      str r5, [r4, #4]
0048a330  81 10 83 e0                                      add r1, r3, r1, lsl #1
0048a334  08 50 a0 e5                                      str r5, [r0, #8]!
0048a338  08 10 22 e5                                      str r1, [r2, #-8]!
0048a33c  51 7c fa eb                                      bl #0x329488
0048a340  08 30 9d e5                                      ldr r3, [sp, #8]
0048a344  18 10 a0 e3                                      mov r1, #0x18
0048a348  00 00 84 e5                                      str r0, [r4]
0048a34c  91 03 23 e0                                      mla r3, r1, r3, r0
0048a350  09 00 84 e9                                      stmib r4, {r0, r3}
0048a354  00 30 96 e5                                      ldr r3, [r6]
0048a358  00 20 a0 e1                                      mov r2, r0
0048a35c  04 10 96 e5                                      ldr r1, [r6, #4]
0048a360  03 00 a0 e1                                      mov r0, r3
0048a364  0c 30 8d e2                                      add r3, sp, #0xc
0048a368  00 50 8d e5                                      str r5, [sp]
0048a36c  c1 ff ff eb                                      bl #0x48a278
0048a370  04 00 84 e5                                      str r0, [r4, #4]
0048a374  04 00 a0 e1                                      mov r0, r4
0048a378  10 d0 8d e2                                      add sp, sp, #0x10
0048a37c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0048a428, declared_size=424, range_size=424, mode=arm
; class-group: std::vector<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::allocator<std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >
; alias: _ZNSt6vectorISsSaISsEE22_M_insert_overflow_auxEPSsRKSsRKSt12__false_typejb.clone.8
; demangled: std::vector<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::allocator<std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::_M_insert_overflow_aux(std::basic_string<char, std::char_traits<char>, std::allocator<char> >*, std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, std::__false_type const&, unsigned int, bool) [clone .clone.8]
; decoder-mode: arm
0048a428  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0048a42c  00 40 a0 e1                                      mov r4, r0
0048a430  01 10 90 e8                                      ldm r0, {r0, ip}
0048a434  01 80 a0 e1                                      mov r8, r1
0048a438  aa 3a 0a e3                                      movw r3, #0xaaaa
0048a43c  0c 00 60 e0                                      rsb r0, r0, ip
0048a440  c0 01 a0 e1                                      asr r0, r0, #3
0048a444  03 36 83 e1                                      orr r3, r3, r3, lsl #12
0048a448  00 11 80 e0                                      add r1, r0, r0, lsl #2
0048a44c  0c d0 4d e2                                      sub sp, sp, #0xc
0048a450  01 12 81 e0                                      add r1, r1, r1, lsl #4
0048a454  02 a0 a0 e1                                      mov sl, r2
0048a458  01 14 81 e0                                      add r1, r1, r1, lsl #8
0048a45c  01 18 81 e0                                      add r1, r1, r1, lsl #16
0048a460  81 00 80 e0                                      add r0, r0, r1, lsl #1
0048a464  01 00 50 e3                                      cmp r0, #1
0048a468  00 10 80 20                                      addhs r1, r0, r0
0048a46c  01 10 80 32                                      addlo r1, r0, #1
0048a470  03 00 51 e1                                      cmp r1, r3
0048a474  50 00 00 8a                                      bhi #0x48a5bc
0048a478  01 00 50 e1                                      cmp r0, r1
0048a47c  4e 00 00 8a                                      bhi #0x48a5bc
0048a480  08 20 8d e2                                      add r2, sp, #8
0048a484  04 10 22 e5                                      str r1, [r2, #-4]!
0048a488  08 00 84 e2                                      add r0, r4, #8
0048a48c  fd 7b fa eb                                      bl #0x329488
0048a490  00 c0 94 e5                                      ldr ip, [r4]
0048a494  00 50 a0 e1                                      mov r5, r0
0048a498  08 80 6c e0                                      rsb r8, ip, r8
0048a49c  c8 31 a0 e1                                      asr r3, r8, #3
0048a4a0  03 81 83 e0                                      add r8, r3, r3, lsl #2
0048a4a4  08 82 88 e0                                      add r8, r8, r8, lsl #4
0048a4a8  08 84 88 e0                                      add r8, r8, r8, lsl #8
0048a4ac  08 88 88 e0                                      add r8, r8, r8, lsl #16
0048a4b0  88 80 83 e0                                      add r8, r3, r8, lsl #1
0048a4b4  00 00 58 e3                                      cmp r8, #0
0048a4b8  00 80 a0 d1                                      movle r8, r0
0048a4bc  1f 00 00 da                                      ble #0x48a540
0048a4c0  08 60 a0 e1                                      mov r6, r8
0048a4c4  00 e0 a0 e1                                      mov lr, r0
0048a4c8  00 70 a0 e3                                      mov r7, #0
0048a4cc  09 00 00 ea                                      b #0x48a4f8
0048a4d0  14 30 8e e5                                      str r3, [lr, #0x14]
0048a4d4  10 30 9c e5                                      ldr r3, [ip, #0x10]
0048a4d8  01 60 56 e2                                      subs r6, r6, #1
0048a4dc  10 30 8e e5                                      str r3, [lr, #0x10]
0048a4e0  00 30 9c e5                                      ldr r3, [ip]
0048a4e4  00 30 8e e5                                      str r3, [lr]
0048a4e8  14 70 8c e5                                      str r7, [ip, #0x14]
0048a4ec  18 e0 8e e2                                      add lr, lr, #0x18
0048a4f0  10 00 00 0a                                      beq #0x48a538
0048a4f4  18 c0 8c e2                                      add ip, ip, #0x18
0048a4f8  14 30 9c e5                                      ldr r3, [ip, #0x14]
0048a4fc  14 30 8e e5                                      str r3, [lr, #0x14]
0048a500  14 30 9c e5                                      ldr r3, [ip, #0x14]
0048a504  0c 00 53 e1                                      cmp r3, ip
0048a508  f0 ff ff 1a                                      bne #0x48a4d0
0048a50c  0f 00 9c e8                                      ldm ip, {r0, r1, r2, r3}
0048a510  0f 00 8e e8                                      stm lr, {r0, r1, r2, r3}
0048a514  10 20 9c e5                                      ldr r2, [ip, #0x10]
0048a518  14 30 9c e5                                      ldr r3, [ip, #0x14]
0048a51c  01 60 56 e2                                      subs r6, r6, #1
0048a520  14 e0 8e e5                                      str lr, [lr, #0x14]
0048a524  02 30 63 e0                                      rsb r3, r3, r2
0048a528  03 30 8e e0                                      add r3, lr, r3
0048a52c  10 30 8e e5                                      str r3, [lr, #0x10]
0048a530  18 e0 8e e2                                      add lr, lr, #0x18
0048a534  ee ff ff 1a                                      bne #0x48a4f4
0048a538  18 30 a0 e3                                      mov r3, #0x18
0048a53c  93 58 28 e0                                      mla r8, r3, r8, r5
0048a540  10 80 88 e5                                      str r8, [r8, #0x10]
0048a544  14 80 88 e5                                      str r8, [r8, #0x14]
0048a548  08 00 a0 e1                                      mov r0, r8
0048a54c  10 20 9a e5                                      ldr r2, [sl, #0x10]
0048a550  14 10 9a e5                                      ldr r1, [sl, #0x14]
0048a554  63 1c fa eb                                      bl #0x3116e8
0048a558  00 00 94 e5                                      ldr r0, [r4]
0048a55c  18 80 88 e2                                      add r8, r8, #0x18
0048a560  08 30 94 e5                                      ldr r3, [r4, #8]
0048a564  00 00 50 e3                                      cmp r0, #0
0048a568  0b 00 00 0a                                      beq #0x48a59c
0048a56c  03 30 60 e0                                      rsb r3, r0, r3
0048a570  c3 31 a0 e1                                      asr r3, r3, #3
0048a574  03 11 83 e0                                      add r1, r3, r3, lsl #2
0048a578  01 12 81 e0                                      add r1, r1, r1, lsl #4
0048a57c  01 14 81 e0                                      add r1, r1, r1, lsl #8
0048a580  01 18 81 e0                                      add r1, r1, r1, lsl #16
0048a584  81 30 83 e0                                      add r3, r3, r1, lsl #1
0048a588  18 10 a0 e3                                      mov r1, #0x18
0048a58c  91 03 01 e0                                      mul r1, r1, r3
0048a590  80 00 51 e3                                      cmp r1, #0x80
0048a594  0b 00 00 8a                                      bhi #0x48a5c8
0048a598  58 fa 09 eb                                      bl #0x708f00
0048a59c  04 30 9d e5                                      ldr r3, [sp, #4]
0048a5a0  18 20 a0 e3                                      mov r2, #0x18
0048a5a4  00 50 84 e5                                      str r5, [r4]
0048a5a8  92 53 25 e0                                      mla r5, r2, r3, r5
0048a5ac  04 80 84 e5                                      str r8, [r4, #4]
0048a5b0  08 50 84 e5                                      str r5, [r4, #8]
0048a5b4  0c d0 8d e2                                      add sp, sp, #0xc
0048a5b8  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0048a5bc  aa 1a 0a e3                                      movw r1, #0xaaaa
0048a5c0  01 16 81 e1                                      orr r1, r1, r1, lsl #12
0048a5c4  ad ff ff ea                                      b #0x48a480
0048a5c8  9c 17 fa eb                                      bl #0x310440
0048a5cc  f2 ff ff ea                                      b #0x48a59c

; FUNCTION 0x00490768, declared_size=412, range_size=412, mode=arm
; class-group: std::vector<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::allocator<std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >
; alias: _ZNSt6vectorISsSaISsEE22_M_insert_overflow_auxEPSsRKSsRKSt12__false_typejb.clone.4
; demangled: std::vector<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::allocator<std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::_M_insert_overflow_aux(std::basic_string<char, std::char_traits<char>, std::allocator<char> >*, std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, std::__false_type const&, unsigned int, bool) [clone .clone.4]
; decoder-mode: arm
00490768  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0049076c  00 40 a0 e1                                      mov r4, r0
00490770  01 10 90 e8                                      ldm r0, {r0, ip}
00490774  01 80 a0 e1                                      mov r8, r1
00490778  aa 3a 0a e3                                      movw r3, #0xaaaa
0049077c  0c 00 60 e0                                      rsb r0, r0, ip
00490780  c0 01 a0 e1                                      asr r0, r0, #3
00490784  03 36 83 e1                                      orr r3, r3, r3, lsl #12
00490788  00 11 80 e0                                      add r1, r0, r0, lsl #2
0049078c  0c d0 4d e2                                      sub sp, sp, #0xc
00490790  01 12 81 e0                                      add r1, r1, r1, lsl #4
00490794  02 a0 a0 e1                                      mov sl, r2
00490798  01 14 81 e0                                      add r1, r1, r1, lsl #8
0049079c  01 18 81 e0                                      add r1, r1, r1, lsl #16
004907a0  81 00 80 e0                                      add r0, r0, r1, lsl #1
004907a4  01 00 50 e3                                      cmp r0, #1
004907a8  00 10 80 20                                      addhs r1, r0, r0
004907ac  01 10 80 32                                      addlo r1, r0, #1
004907b0  03 00 51 e1                                      cmp r1, r3
004907b4  4d 00 00 8a                                      bhi #0x4908f0
004907b8  01 00 50 e1                                      cmp r0, r1
004907bc  4b 00 00 8a                                      bhi #0x4908f0
004907c0  08 20 8d e2                                      add r2, sp, #8
004907c4  04 10 22 e5                                      str r1, [r2, #-4]!
004907c8  08 00 84 e2                                      add r0, r4, #8
004907cc  2d 63 fa eb                                      bl #0x329488
004907d0  00 c0 94 e5                                      ldr ip, [r4]
004907d4  00 50 a0 e1                                      mov r5, r0
004907d8  08 80 6c e0                                      rsb r8, ip, r8
004907dc  c8 31 a0 e1                                      asr r3, r8, #3
004907e0  03 81 83 e0                                      add r8, r3, r3, lsl #2
004907e4  08 82 88 e0                                      add r8, r8, r8, lsl #4
004907e8  08 84 88 e0                                      add r8, r8, r8, lsl #8
004907ec  08 88 88 e0                                      add r8, r8, r8, lsl #16
004907f0  88 80 83 e0                                      add r8, r3, r8, lsl #1
004907f4  00 00 58 e3                                      cmp r8, #0
004907f8  00 80 a0 d1                                      movle r8, r0
004907fc  1f 00 00 da                                      ble #0x490880
00490800  08 60 a0 e1                                      mov r6, r8
00490804  00 e0 a0 e1                                      mov lr, r0
00490808  00 70 a0 e3                                      mov r7, #0
0049080c  09 00 00 ea                                      b #0x490838
00490810  14 30 8e e5                                      str r3, [lr, #0x14]
00490814  10 30 9c e5                                      ldr r3, [ip, #0x10]
00490818  01 60 56 e2                                      subs r6, r6, #1
0049081c  10 30 8e e5                                      str r3, [lr, #0x10]
00490820  00 30 9c e5                                      ldr r3, [ip]
00490824  00 30 8e e5                                      str r3, [lr]
00490828  14 70 8c e5                                      str r7, [ip, #0x14]
0049082c  18 e0 8e e2                                      add lr, lr, #0x18
00490830  10 00 00 0a                                      beq #0x490878
00490834  18 c0 8c e2                                      add ip, ip, #0x18
00490838  14 30 9c e5                                      ldr r3, [ip, #0x14]
0049083c  14 30 8e e5                                      str r3, [lr, #0x14]
00490840  14 30 9c e5                                      ldr r3, [ip, #0x14]
00490844  0c 00 53 e1                                      cmp r3, ip
00490848  f0 ff ff 1a                                      bne #0x490810
0049084c  0f 00 9c e8                                      ldm ip, {r0, r1, r2, r3}
00490850  0f 00 8e e8                                      stm lr, {r0, r1, r2, r3}
00490854  10 20 9c e5                                      ldr r2, [ip, #0x10]
00490858  14 30 9c e5                                      ldr r3, [ip, #0x14]
0049085c  01 60 56 e2                                      subs r6, r6, #1
00490860  14 e0 8e e5                                      str lr, [lr, #0x14]
00490864  02 30 63 e0                                      rsb r3, r3, r2
00490868  03 30 8e e0                                      add r3, lr, r3
0049086c  10 30 8e e5                                      str r3, [lr, #0x10]
00490870  18 e0 8e e2                                      add lr, lr, #0x18
00490874  ee ff ff 1a                                      bne #0x490834
00490878  18 30 a0 e3                                      mov r3, #0x18
0049087c  93 58 28 e0                                      mla r8, r3, r8, r5
00490880  08 00 a0 e1                                      mov r0, r8
00490884  0a 10 a0 e1                                      mov r1, sl
00490888  22 6c fa eb                                      bl #0x32b918
0049088c  00 00 94 e5                                      ldr r0, [r4]
00490890  18 80 88 e2                                      add r8, r8, #0x18
00490894  08 30 94 e5                                      ldr r3, [r4, #8]
00490898  00 00 50 e3                                      cmp r0, #0
0049089c  0b 00 00 0a                                      beq #0x4908d0
004908a0  03 30 60 e0                                      rsb r3, r0, r3
004908a4  c3 31 a0 e1                                      asr r3, r3, #3
004908a8  03 11 83 e0                                      add r1, r3, r3, lsl #2
004908ac  01 12 81 e0                                      add r1, r1, r1, lsl #4
004908b0  01 14 81 e0                                      add r1, r1, r1, lsl #8
004908b4  01 18 81 e0                                      add r1, r1, r1, lsl #16
004908b8  81 30 83 e0                                      add r3, r3, r1, lsl #1
004908bc  18 10 a0 e3                                      mov r1, #0x18
004908c0  91 03 01 e0                                      mul r1, r1, r3
004908c4  80 00 51 e3                                      cmp r1, #0x80
004908c8  0b 00 00 8a                                      bhi #0x4908fc
004908cc  8b e1 09 eb                                      bl #0x708f00
004908d0  04 30 9d e5                                      ldr r3, [sp, #4]
004908d4  18 20 a0 e3                                      mov r2, #0x18
004908d8  00 50 84 e5                                      str r5, [r4]
004908dc  92 53 25 e0                                      mla r5, r2, r3, r5
004908e0  04 80 84 e5                                      str r8, [r4, #4]
004908e4  08 50 84 e5                                      str r5, [r4, #8]
004908e8  0c d0 8d e2                                      add sp, sp, #0xc
004908ec  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
004908f0  aa 1a 0a e3                                      movw r1, #0xaaaa
004908f4  01 16 81 e1                                      orr r1, r1, r1, lsl #12
004908f8  b0 ff ff ea                                      b #0x4907c0
004908fc  cf fe f9 eb                                      bl #0x310440
00490900  f2 ff ff ea                                      b #0x4908d0

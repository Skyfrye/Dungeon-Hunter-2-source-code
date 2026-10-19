; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0038933c, declared_size=8, range_size=8, mode=arm
; class-group: std::basic_stringstream<char, std::char_traits<char>, std::allocator<char> >
; alias: _ZThn8_NSt18basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev
; demangled: non-virtual thunk to std::basic_stringstream<char, std::char_traits<char>, std::allocator<char> >::~basic_stringstream()
; decoder-mode: arm
0038933c  08 00 40 e2                                      sub r0, r0, #8
00389340  ff ff ff ea                                      b #0x389344

; FUNCTION 0x00389344, declared_size=180, range_size=180, mode=arm
; class-group: std::basic_stringstream<char, std::char_traits<char>, std::allocator<char> >
; alias: _ZNSt18basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev
; demangled: std::basic_stringstream<char, std::char_traits<char>, std::allocator<char> >::~basic_stringstream()
; decoder-mode: arm
00389344  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00389348  98 50 9f e5                                      ldr r5, [pc, #0x98]
0038934c  98 30 9f e5                                      ldr r3, [pc, #0x98]
00389350  00 40 a0 e1                                      mov r4, r0
00389354  05 50 8f e0                                      add r5, pc, r5
00389358  03 30 95 e7                                      ldr r3, [r5, r3]
0038935c  00 60 a0 e1                                      mov r6, r0
00389360  0c 00 80 e2                                      add r0, r0, #0xc
00389364  20 20 83 e2                                      add r2, r3, #0x20
00389368  0c 10 83 e2                                      add r1, r3, #0xc
0038936c  34 30 83 e2                                      add r3, r3, #0x34
00389370  48 10 86 e4                                      str r1, [r6], #0x48
00389374  48 30 84 e5                                      str r3, [r4, #0x48]
00389378  08 20 84 e5                                      str r2, [r4, #8]
0038937c  bd 66 fe eb                                      bl #0x322e78
00389380  68 30 9f e5                                      ldr r3, [pc, #0x68]
00389384  06 00 a0 e1                                      mov r0, r6
00389388  64 20 9f e5                                      ldr r2, [pc, #0x64]
0038938c  03 30 95 e7                                      ldr r3, [r5, r3]
00389390  08 70 84 e2                                      add r7, r4, #8
00389394  02 20 95 e7                                      ldr r2, [r5, r2]
00389398  04 10 93 e5                                      ldr r1, [r3, #4]
0038939c  10 c0 93 e5                                      ldr ip, [r3, #0x10]
003893a0  18 60 93 e5                                      ldr r6, [r3, #0x18]
003893a4  00 10 84 e5                                      str r1, [r4]
003893a8  0c e0 11 e5                                      ldr lr, [r1, #-0xc]
003893ac  14 50 93 e5                                      ldr r5, [r3, #0x14]
003893b0  08 10 93 e5                                      ldr r1, [r3, #8]
003893b4  0e 60 84 e7                                      str r6, [r4, lr]
003893b8  08 c0 84 e5                                      str ip, [r4, #8]
003893bc  0c e0 1c e5                                      ldr lr, [ip, #-0xc]
003893c0  0c c0 93 e5                                      ldr ip, [r3, #0xc]
003893c4  08 20 82 e2                                      add r2, r2, #8
003893c8  0e 50 87 e7                                      str r5, [r7, lr]
003893cc  00 10 84 e5                                      str r1, [r4]
003893d0  0c 30 11 e5                                      ldr r3, [r1, #-0xc]
003893d4  03 c0 84 e7                                      str ip, [r4, r3]
003893d8  48 20 84 e5                                      str r2, [r4, #0x48]
003893dc  a3 fe 0d eb                                      bl #0x708e70
003893e0  04 00 a0 e1                                      mov r0, r4
003893e4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
003893e8  3c b7 60 00 40 0e 00 00 cc 38 00 00 30 37 00 00  .byte 0x3c, 0xb7, 0x60, 0x00, 0x40, 0x0e, 0x00, 0x00, 0xcc, 0x38, 0x00, 0x00, 0x30, 0x37, 0x00, 0x00

; FUNCTION 0x003893f8, declared_size=16, range_size=16, mode=arm
; class-group: std::basic_stringstream<char, std::char_traits<char>, std::allocator<char> >
; alias: _ZTv0_n12_NSt18basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev
; demangled: virtual thunk to std::basic_stringstream<char, std::char_traits<char>, std::allocator<char> >::~basic_stringstream()
; decoder-mode: arm
003893f8  00 30 90 e5                                      ldr r3, [r0]
003893fc  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00389400  03 00 80 e0                                      add r0, r0, r3
00389404  ce ff ff ea                                      b #0x389344

; FUNCTION 0x00389408, declared_size=8, range_size=8, mode=arm
; class-group: std::basic_stringstream<char, std::char_traits<char>, std::allocator<char> >
; alias: _ZThn8_NSt18basic_stringstreamIcSt11char_traitsIcESaIcEED0Ev
; demangled: non-virtual thunk to std::basic_stringstream<char, std::char_traits<char>, std::allocator<char> >::~basic_stringstream()
; decoder-mode: arm
00389408  08 00 40 e2                                      sub r0, r0, #8
0038940c  ff ff ff ea                                      b #0x389410

; FUNCTION 0x00389410, declared_size=28, range_size=28, mode=arm
; class-group: std::basic_stringstream<char, std::char_traits<char>, std::allocator<char> >
; alias: _ZNSt18basic_stringstreamIcSt11char_traitsIcESaIcEED0Ev
; demangled: std::basic_stringstream<char, std::char_traits<char>, std::allocator<char> >::~basic_stringstream()
; decoder-mode: arm
00389410  10 40 2d e9                                      push {r4, lr}
00389414  00 40 a0 e1                                      mov r4, r0
00389418  c9 ff ff eb                                      bl #0x389344
0038941c  04 00 a0 e1                                      mov r0, r4
00389420  06 1c fe eb                                      bl #0x310440
00389424  04 00 a0 e1                                      mov r0, r4
00389428  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0038942c, declared_size=16, range_size=16, mode=arm
; class-group: std::basic_stringstream<char, std::char_traits<char>, std::allocator<char> >
; alias: _ZTv0_n12_NSt18basic_stringstreamIcSt11char_traitsIcESaIcEED0Ev
; demangled: virtual thunk to std::basic_stringstream<char, std::char_traits<char>, std::allocator<char> >::~basic_stringstream()
; decoder-mode: arm
0038942c  00 30 90 e5                                      ldr r3, [r0]
00389430  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00389434  03 00 80 e0                                      add r0, r0, r3
00389438  f4 ff ff ea                                      b #0x389410

; FUNCTION 0x00389a6c, declared_size=452, range_size=452, mode=arm
; class-group: std::basic_stringstream<char, std::char_traits<char>, std::allocator<char> >
; alias: _ZNSt18basic_stringstreamIcSt11char_traitsIcESaIcEEC1ERKSsi.clone.4
; demangled: std::basic_stringstream<char, std::char_traits<char>, std::allocator<char> >::basic_stringstream(std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, int) [clone .clone.4]
; decoder-mode: arm
00389a6c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00389a70  48 80 80 e2                                      add r8, r0, #0x48
00389a74  00 40 a0 e1                                      mov r4, r0
00389a78  98 61 9f e5                                      ldr r6, [pc, #0x198]
00389a7c  08 00 a0 e1                                      mov r0, r8
00389a80  01 a0 a0 e1                                      mov sl, r1
00389a84  2d fd 0d eb                                      bl #0x708f40
00389a88  8c 21 9f e5                                      ldr r2, [pc, #0x18c]
00389a8c  06 60 8f e0                                      add r6, pc, r6
00389a90  88 31 9f e5                                      ldr r3, [pc, #0x188]
00389a94  02 70 96 e7                                      ldr r7, [r6, r2]
00389a98  00 50 a0 e3                                      mov r5, #0
00389a9c  03 30 96 e7                                      ldr r3, [r6, r3]
00389aa0  08 10 97 e5                                      ldr r1, [r7, #8]
00389aa4  0c 20 97 e5                                      ldr r2, [r7, #0xc]
00389aa8  08 30 83 e2                                      add r3, r3, #8
00389aac  48 30 84 e5                                      str r3, [r4, #0x48]
00389ab0  44 50 c8 e5                                      strb r5, [r8, #0x44]
00389ab4  48 50 88 e5                                      str r5, [r8, #0x48]
00389ab8  4c 50 88 e5                                      str r5, [r8, #0x4c]
00389abc  00 10 84 e5                                      str r1, [r4]
00389ac0  0c 30 11 e5                                      ldr r3, [r1, #-0xc]
00389ac4  05 10 a0 e1                                      mov r1, r5
00389ac8  03 20 84 e7                                      str r2, [r4, r3]
00389acc  00 30 94 e5                                      ldr r3, [r4]
00389ad0  04 50 84 e5                                      str r5, [r4, #4]
00389ad4  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
00389ad8  00 00 84 e0                                      add r0, r4, r0
00389adc  70 65 fe eb                                      bl #0x3230a4
00389ae0  10 20 97 e5                                      ldr r2, [r7, #0x10]
00389ae4  04 30 a0 e1                                      mov r3, r4
00389ae8  14 00 97 e5                                      ldr r0, [r7, #0x14]
00389aec  08 20 a3 e5                                      str r2, [r3, #8]!
00389af0  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
00389af4  05 10 a0 e1                                      mov r1, r5
00389af8  02 00 83 e7                                      str r0, [r3, r2]
00389afc  08 20 94 e5                                      ldr r2, [r4, #8]
00389b00  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
00389b04  00 00 83 e0                                      add r0, r3, r0
00389b08  65 65 fe eb                                      bl #0x3230a4
00389b0c  04 30 97 e5                                      ldr r3, [r7, #4]
00389b10  18 00 97 e5                                      ldr r0, [r7, #0x18]
00389b14  1c 20 97 e5                                      ldr r2, [r7, #0x1c]
00389b18  00 30 84 e5                                      str r3, [r4]
00389b1c  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00389b20  05 10 a0 e1                                      mov r1, r5
00389b24  03 00 84 e7                                      str r0, [r4, r3]
00389b28  00 30 94 e5                                      ldr r3, [r4]
00389b2c  08 20 84 e5                                      str r2, [r4, #8]
00389b30  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
00389b34  00 00 84 e0                                      add r0, r4, r0
00389b38  59 65 fe eb                                      bl #0x3230a4
00389b3c  e0 30 9f e5                                      ldr r3, [pc, #0xe0]
00389b40  e0 20 9f e5                                      ldr r2, [pc, #0xe0]
00389b44  24 50 84 e5                                      str r5, [r4, #0x24]
00389b48  03 30 96 e7                                      ldr r3, [r6, r3]
00389b4c  02 20 96 e7                                      ldr r2, [r6, r2]
00389b50  10 50 84 e5                                      str r5, [r4, #0x10]
00389b54  20 10 83 e2                                      add r1, r3, #0x20
00389b58  08 20 82 e2                                      add r2, r2, #8
00389b5c  0c 00 83 e2                                      add r0, r3, #0xc
00389b60  34 30 83 e2                                      add r3, r3, #0x34
00389b64  00 00 84 e5                                      str r0, [r4]
00389b68  48 30 84 e5                                      str r3, [r4, #0x48]
00389b6c  08 10 84 e5                                      str r1, [r4, #8]
00389b70  0c 20 84 e5                                      str r2, [r4, #0xc]
00389b74  14 50 84 e5                                      str r5, [r4, #0x14]
00389b78  18 50 84 e5                                      str r5, [r4, #0x18]
00389b7c  1c 50 84 e5                                      str r5, [r4, #0x1c]
00389b80  20 50 84 e5                                      str r5, [r4, #0x20]
00389b84  28 00 84 e2                                      add r0, r4, #0x28
00389b88  b0 fc 0d eb                                      bl #0x708e50
00389b8c  98 30 9f e5                                      ldr r3, [pc, #0x98]
00389b90  08 20 a0 e3                                      mov r2, #8
00389b94  2c 20 84 e5                                      str r2, [r4, #0x2c]
00389b98  03 30 96 e7                                      ldr r3, [r6, r3]
00389b9c  0a 10 a0 e1                                      mov r1, sl
00389ba0  30 00 84 e2                                      add r0, r4, #0x30
00389ba4  02 30 83 e0                                      add r3, r3, r2
00389ba8  0c 30 84 e5                                      str r3, [r4, #0xc]
00389bac  59 87 fe eb                                      bl #0x32b918
00389bb0  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
00389bb4  40 10 94 e5                                      ldr r1, [r4, #0x40]
00389bb8  44 00 94 e5                                      ldr r0, [r4, #0x44]
00389bbc  08 00 13 e3                                      tst r3, #8
00389bc0  01 20 a0 e1                                      mov r2, r1
00389bc4  05 00 00 0a                                      beq #0x389be0
00389bc8  02 00 13 e3                                      tst r3, #2
00389bcc  01 c0 a0 11                                      movne ip, r1
00389bd0  00 c0 a0 01                                      moveq ip, r0
00389bd4  14 c0 84 e5                                      str ip, [r4, #0x14]
00389bd8  10 00 84 e5                                      str r0, [r4, #0x10]
00389bdc  18 10 84 e5                                      str r1, [r4, #0x18]
00389be0  10 00 13 e3                                      tst r3, #0x10
00389be4  06 00 00 0a                                      beq #0x389c04
00389be8  03 00 13 e3                                      tst r3, #3
00389bec  24 20 84 15                                      strne r2, [r4, #0x24]
00389bf0  1c 20 84 15                                      strne r2, [r4, #0x1c]
00389bf4  20 20 84 15                                      strne r2, [r4, #0x20]
00389bf8  1c 00 84 05                                      streq r0, [r4, #0x1c]
00389bfc  24 20 84 05                                      streq r2, [r4, #0x24]
00389c00  20 10 84 05                                      streq r1, [r4, #0x20]
00389c04  08 00 a0 e1                                      mov r0, r8
00389c08  0c 10 84 e2                                      add r1, r4, #0xc
00389c0c  24 65 fe eb                                      bl #0x3230a4
00389c10  04 00 a0 e1                                      mov r0, r4
00389c14  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
00389c18  04 b0 60 00 cc 38 00 00 30 37 00 00 40 0e 00 00  .byte 0x04, 0xb0, 0x60, 0x00, 0xcc, 0x38, 0x00, 0x00, 0x30, 0x37, 0x00, 0x00, 0x40, 0x0e, 0x00, 0x00
00389c28  b4 07 00 00 50 4a 00 00                          .byte 0xb4, 0x07, 0x00, 0x00, 0x50, 0x4a, 0x00, 0x00

; FUNCTION 0x0041ce74, declared_size=384, range_size=384, mode=arm
; class-group: std::basic_stringstream<char, std::char_traits<char>, std::allocator<char> >
; alias: _ZNSt18basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ei.clone.2
; demangled: std::basic_stringstream<char, std::char_traits<char>, std::allocator<char> >::basic_stringstream(int) [clone .clone.2]
; decoder-mode: arm
0041ce74  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0041ce78  48 80 80 e2                                      add r8, r0, #0x48
0041ce7c  00 40 a0 e1                                      mov r4, r0
0041ce80  54 61 9f e5                                      ldr r6, [pc, #0x154]
0041ce84  08 00 a0 e1                                      mov r0, r8
0041ce88  2c b0 0b eb                                      bl #0x708f40
0041ce8c  4c 21 9f e5                                      ldr r2, [pc, #0x14c]
0041ce90  06 60 8f e0                                      add r6, pc, r6
0041ce94  48 31 9f e5                                      ldr r3, [pc, #0x148]
0041ce98  02 70 96 e7                                      ldr r7, [r6, r2]
0041ce9c  00 50 a0 e3                                      mov r5, #0
0041cea0  03 30 96 e7                                      ldr r3, [r6, r3]
0041cea4  08 10 97 e5                                      ldr r1, [r7, #8]
0041cea8  0c 20 97 e5                                      ldr r2, [r7, #0xc]
0041ceac  08 30 83 e2                                      add r3, r3, #8
0041ceb0  48 30 84 e5                                      str r3, [r4, #0x48]
0041ceb4  44 50 c8 e5                                      strb r5, [r8, #0x44]
0041ceb8  48 50 88 e5                                      str r5, [r8, #0x48]
0041cebc  4c 50 88 e5                                      str r5, [r8, #0x4c]
0041cec0  00 10 84 e5                                      str r1, [r4]
0041cec4  0c 30 11 e5                                      ldr r3, [r1, #-0xc]
0041cec8  05 10 a0 e1                                      mov r1, r5
0041cecc  03 20 84 e7                                      str r2, [r4, r3]
0041ced0  00 30 94 e5                                      ldr r3, [r4]
0041ced4  04 50 84 e5                                      str r5, [r4, #4]
0041ced8  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
0041cedc  00 00 84 e0                                      add r0, r4, r0
0041cee0  6f 18 fc eb                                      bl #0x3230a4
0041cee4  10 20 97 e5                                      ldr r2, [r7, #0x10]
0041cee8  04 30 a0 e1                                      mov r3, r4
0041ceec  14 00 97 e5                                      ldr r0, [r7, #0x14]
0041cef0  08 20 a3 e5                                      str r2, [r3, #8]!
0041cef4  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
0041cef8  05 10 a0 e1                                      mov r1, r5
0041cefc  02 00 83 e7                                      str r0, [r3, r2]
0041cf00  08 20 94 e5                                      ldr r2, [r4, #8]
0041cf04  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
0041cf08  00 00 83 e0                                      add r0, r3, r0
0041cf0c  64 18 fc eb                                      bl #0x3230a4
0041cf10  04 30 97 e5                                      ldr r3, [r7, #4]
0041cf14  18 00 97 e5                                      ldr r0, [r7, #0x18]
0041cf18  1c 20 97 e5                                      ldr r2, [r7, #0x1c]
0041cf1c  00 30 84 e5                                      str r3, [r4]
0041cf20  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0041cf24  05 10 a0 e1                                      mov r1, r5
0041cf28  03 00 84 e7                                      str r0, [r4, r3]
0041cf2c  00 30 94 e5                                      ldr r3, [r4]
0041cf30  08 20 84 e5                                      str r2, [r4, #8]
0041cf34  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
0041cf38  00 00 84 e0                                      add r0, r4, r0
0041cf3c  58 18 fc eb                                      bl #0x3230a4
0041cf40  a0 30 9f e5                                      ldr r3, [pc, #0xa0]
0041cf44  a0 20 9f e5                                      ldr r2, [pc, #0xa0]
0041cf48  10 50 84 e5                                      str r5, [r4, #0x10]
0041cf4c  03 30 96 e7                                      ldr r3, [r6, r3]
0041cf50  02 20 96 e7                                      ldr r2, [r6, r2]
0041cf54  14 50 84 e5                                      str r5, [r4, #0x14]
0041cf58  20 10 83 e2                                      add r1, r3, #0x20
0041cf5c  08 20 82 e2                                      add r2, r2, #8
0041cf60  0c 00 83 e2                                      add r0, r3, #0xc
0041cf64  34 30 83 e2                                      add r3, r3, #0x34
0041cf68  00 00 84 e5                                      str r0, [r4]
0041cf6c  48 30 84 e5                                      str r3, [r4, #0x48]
0041cf70  08 10 84 e5                                      str r1, [r4, #8]
0041cf74  0c 20 84 e5                                      str r2, [r4, #0xc]
0041cf78  18 50 84 e5                                      str r5, [r4, #0x18]
0041cf7c  1c 50 84 e5                                      str r5, [r4, #0x1c]
0041cf80  20 50 84 e5                                      str r5, [r4, #0x20]
0041cf84  24 50 84 e5                                      str r5, [r4, #0x24]
0041cf88  28 00 84 e2                                      add r0, r4, #0x28
0041cf8c  af af 0b eb                                      bl #0x708e50
0041cf90  58 20 9f e5                                      ldr r2, [pc, #0x58]
0041cf94  30 30 84 e2                                      add r3, r4, #0x30
0041cf98  18 10 a0 e3                                      mov r1, #0x18
0041cf9c  02 20 96 e7                                      ldr r2, [r6, r2]
0041cfa0  2c 10 84 e5                                      str r1, [r4, #0x2c]
0041cfa4  03 00 a0 e1                                      mov r0, r3
0041cfa8  08 20 82 e2                                      add r2, r2, #8
0041cfac  0c 20 84 e5                                      str r2, [r4, #0xc]
0041cfb0  40 30 84 e5                                      str r3, [r4, #0x40]
0041cfb4  44 30 84 e5                                      str r3, [r4, #0x44]
0041cfb8  10 10 a0 e3                                      mov r1, #0x10
0041cfbc  ae d1 fb eb                                      bl #0x31167c
0041cfc0  40 30 94 e5                                      ldr r3, [r4, #0x40]
0041cfc4  08 00 a0 e1                                      mov r0, r8
0041cfc8  0c 10 84 e2                                      add r1, r4, #0xc
0041cfcc  00 50 c3 e5                                      strb r5, [r3]
0041cfd0  33 18 fc eb                                      bl #0x3230a4
0041cfd4  04 00 a0 e1                                      mov r0, r4
0041cfd8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0041cfdc  00 7c 57 00 cc 38 00 00 30 37 00 00 40 0e 00 00  .byte 0x00, 0x7c, 0x57, 0x00, 0xcc, 0x38, 0x00, 0x00, 0x30, 0x37, 0x00, 0x00, 0x40, 0x0e, 0x00, 0x00
0041cfec  b4 07 00 00 50 4a 00 00                          .byte 0xb4, 0x07, 0x00, 0x00, 0x50, 0x4a, 0x00, 0x00

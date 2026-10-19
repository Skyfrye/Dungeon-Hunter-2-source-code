; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00322ee4, declared_size=128, range_size=128, mode=arm
; class-group: std::basic_ostringstream<char, std::char_traits<char>, std::allocator<char> >
; alias: _ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev
; demangled: std::basic_ostringstream<char, std::char_traits<char>, std::allocator<char> >::~basic_ostringstream()
; decoder-mode: arm
00322ee4  70 40 2d e9                                      push {r4, r5, r6, lr}
00322ee8  64 50 9f e5                                      ldr r5, [pc, #0x64]
00322eec  64 30 9f e5                                      ldr r3, [pc, #0x64]
00322ef0  00 40 a0 e1                                      mov r4, r0
00322ef4  05 50 8f e0                                      add r5, pc, r5
00322ef8  03 30 95 e7                                      ldr r3, [r5, r3]
00322efc  00 60 a0 e1                                      mov r6, r0
00322f00  04 00 80 e2                                      add r0, r0, #4
00322f04  20 20 83 e2                                      add r2, r3, #0x20
00322f08  0c 30 83 e2                                      add r3, r3, #0xc
00322f0c  40 30 86 e4                                      str r3, [r6], #0x40
00322f10  40 20 84 e5                                      str r2, [r4, #0x40]
00322f14  d7 ff ff eb                                      bl #0x322e78
00322f18  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
00322f1c  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
00322f20  06 00 a0 e1                                      mov r0, r6
00322f24  02 10 95 e7                                      ldr r1, [r5, r2]
00322f28  03 30 95 e7                                      ldr r3, [r5, r3]
00322f2c  04 20 91 e5                                      ldr r2, [r1, #4]
00322f30  08 10 91 e5                                      ldr r1, [r1, #8]
00322f34  08 30 83 e2                                      add r3, r3, #8
00322f38  00 20 84 e5                                      str r2, [r4]
00322f3c  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
00322f40  02 10 84 e7                                      str r1, [r4, r2]
00322f44  40 30 84 e5                                      str r3, [r4, #0x40]
00322f48  c8 97 0f eb                                      bl #0x708e70
00322f4c  04 00 a0 e1                                      mov r0, r4
00322f50  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00322f54  9c 1b 67 00 54 10 00 00 2c 42 00 00 30 37 00 00  .byte 0x9c, 0x1b, 0x67, 0x00, 0x54, 0x10, 0x00, 0x00, 0x2c, 0x42, 0x00, 0x00, 0x30, 0x37, 0x00, 0x00

; FUNCTION 0x00322f64, declared_size=16, range_size=16, mode=arm
; class-group: std::basic_ostringstream<char, std::char_traits<char>, std::allocator<char> >
; alias: _ZTv0_n12_NSt19basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev
; demangled: virtual thunk to std::basic_ostringstream<char, std::char_traits<char>, std::allocator<char> >::~basic_ostringstream()
; decoder-mode: arm
00322f64  00 30 90 e5                                      ldr r3, [r0]
00322f68  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00322f6c  03 00 80 e0                                      add r0, r0, r3
00322f70  db ff ff ea                                      b #0x322ee4

; FUNCTION 0x00322f74, declared_size=28, range_size=28, mode=arm
; class-group: std::basic_ostringstream<char, std::char_traits<char>, std::allocator<char> >
; alias: _ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEED0Ev
; demangled: std::basic_ostringstream<char, std::char_traits<char>, std::allocator<char> >::~basic_ostringstream()
; decoder-mode: arm
00322f74  10 40 2d e9                                      push {r4, lr}
00322f78  00 40 a0 e1                                      mov r4, r0
00322f7c  d8 ff ff eb                                      bl #0x322ee4
00322f80  04 00 a0 e1                                      mov r0, r4
00322f84  2d b5 ff eb                                      bl #0x310440
00322f88  04 00 a0 e1                                      mov r0, r4
00322f8c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00322f90, declared_size=16, range_size=16, mode=arm
; class-group: std::basic_ostringstream<char, std::char_traits<char>, std::allocator<char> >
; alias: _ZTv0_n12_NSt19basic_ostringstreamIcSt11char_traitsIcESaIcEED0Ev
; demangled: virtual thunk to std::basic_ostringstream<char, std::char_traits<char>, std::allocator<char> >::~basic_ostringstream()
; decoder-mode: arm
00322f90  00 30 90 e5                                      ldr r3, [r0]
00322f94  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00322f98  03 00 80 e0                                      add r0, r0, r3
00322f9c  f4 ff ff ea                                      b #0x322f74

; FUNCTION 0x0032d170, declared_size=176, range_size=176, mode=arm
; class-group: std::basic_ostringstream<char, std::char_traits<char>, std::allocator<char> >
; alias: _ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ei.clone.29
; demangled: std::basic_ostringstream<char, std::char_traits<char>, std::allocator<char> >::basic_ostringstream(int) [clone .clone.29]
; decoder-mode: arm
0032d170  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0032d174  40 60 80 e2                                      add r6, r0, #0x40
0032d178  00 40 a0 e1                                      mov r4, r0
0032d17c  8c 50 9f e5                                      ldr r5, [pc, #0x8c]
0032d180  06 00 a0 e1                                      mov r0, r6
0032d184  6d 6f 0f eb                                      bl #0x708f40
0032d188  84 20 9f e5                                      ldr r2, [pc, #0x84]
0032d18c  05 50 8f e0                                      add r5, pc, r5
0032d190  80 30 9f e5                                      ldr r3, [pc, #0x80]
0032d194  02 20 95 e7                                      ldr r2, [r5, r2]
0032d198  00 10 a0 e3                                      mov r1, #0
0032d19c  03 30 95 e7                                      ldr r3, [r5, r3]
0032d1a0  05 00 92 e9                                      ldmib r2, {r0, r2}
0032d1a4  08 30 83 e2                                      add r3, r3, #8
0032d1a8  40 30 84 e5                                      str r3, [r4, #0x40]
0032d1ac  44 10 c6 e5                                      strb r1, [r6, #0x44]
0032d1b0  48 10 86 e5                                      str r1, [r6, #0x48]
0032d1b4  4c 10 86 e5                                      str r1, [r6, #0x4c]
0032d1b8  00 00 84 e5                                      str r0, [r4]
0032d1bc  0c 30 10 e5                                      ldr r3, [r0, #-0xc]
0032d1c0  04 70 84 e2                                      add r7, r4, #4
0032d1c4  03 20 84 e7                                      str r2, [r4, r3]
0032d1c8  00 30 94 e5                                      ldr r3, [r4]
0032d1cc  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
0032d1d0  00 00 84 e0                                      add r0, r4, r0
0032d1d4  b2 d7 ff eb                                      bl #0x3230a4
0032d1d8  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
0032d1dc  07 00 a0 e1                                      mov r0, r7
0032d1e0  10 10 a0 e3                                      mov r1, #0x10
0032d1e4  03 30 95 e7                                      ldr r3, [r5, r3]
0032d1e8  20 20 83 e2                                      add r2, r3, #0x20
0032d1ec  0c 30 83 e2                                      add r3, r3, #0xc
0032d1f0  00 30 84 e5                                      str r3, [r4]
0032d1f4  40 20 84 e5                                      str r2, [r4, #0x40]
0032d1f8  b8 ff ff eb                                      bl #0x32d0e0
0032d1fc  06 00 a0 e1                                      mov r0, r6
0032d200  07 10 a0 e1                                      mov r1, r7
0032d204  a6 d7 ff eb                                      bl #0x3230a4
0032d208  04 00 a0 e1                                      mov r0, r4
0032d20c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0032d210  04 79 66 00 2c 42 00 00 30 37 00 00 54 10 00 00  .byte 0x04, 0x79, 0x66, 0x00, 0x2c, 0x42, 0x00, 0x00, 0x30, 0x37, 0x00, 0x00, 0x54, 0x10, 0x00, 0x00

; FUNCTION 0x00404970, declared_size=176, range_size=176, mode=arm
; class-group: std::basic_ostringstream<char, std::char_traits<char>, std::allocator<char> >
; alias: _ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ei.clone.8
; demangled: std::basic_ostringstream<char, std::char_traits<char>, std::allocator<char> >::basic_ostringstream(int) [clone .clone.8]
; decoder-mode: arm
00404970  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00404974  40 60 80 e2                                      add r6, r0, #0x40
00404978  00 40 a0 e1                                      mov r4, r0
0040497c  8c 50 9f e5                                      ldr r5, [pc, #0x8c]
00404980  06 00 a0 e1                                      mov r0, r6
00404984  6d 11 0c eb                                      bl #0x708f40
00404988  84 20 9f e5                                      ldr r2, [pc, #0x84]
0040498c  05 50 8f e0                                      add r5, pc, r5
00404990  80 30 9f e5                                      ldr r3, [pc, #0x80]
00404994  02 20 95 e7                                      ldr r2, [r5, r2]
00404998  00 10 a0 e3                                      mov r1, #0
0040499c  03 30 95 e7                                      ldr r3, [r5, r3]
004049a0  05 00 92 e9                                      ldmib r2, {r0, r2}
004049a4  08 30 83 e2                                      add r3, r3, #8
004049a8  40 30 84 e5                                      str r3, [r4, #0x40]
004049ac  44 10 c6 e5                                      strb r1, [r6, #0x44]
004049b0  48 10 86 e5                                      str r1, [r6, #0x48]
004049b4  4c 10 86 e5                                      str r1, [r6, #0x4c]
004049b8  00 00 84 e5                                      str r0, [r4]
004049bc  0c 30 10 e5                                      ldr r3, [r0, #-0xc]
004049c0  04 70 84 e2                                      add r7, r4, #4
004049c4  03 20 84 e7                                      str r2, [r4, r3]
004049c8  00 30 94 e5                                      ldr r3, [r4]
004049cc  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
004049d0  00 00 84 e0                                      add r0, r4, r0
004049d4  b2 79 fc eb                                      bl #0x3230a4
004049d8  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
004049dc  07 00 a0 e1                                      mov r0, r7
004049e0  10 10 a0 e3                                      mov r1, #0x10
004049e4  03 30 95 e7                                      ldr r3, [r5, r3]
004049e8  20 20 83 e2                                      add r2, r3, #0x20
004049ec  0c 30 83 e2                                      add r3, r3, #0xc
004049f0  00 30 84 e5                                      str r3, [r4]
004049f4  40 20 84 e5                                      str r2, [r4, #0x40]
004049f8  b8 a1 fc eb                                      bl #0x32d0e0
004049fc  06 00 a0 e1                                      mov r0, r6
00404a00  07 10 a0 e1                                      mov r1, r7
00404a04  a6 79 fc eb                                      bl #0x3230a4
00404a08  04 00 a0 e1                                      mov r0, r4
00404a0c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00404a10  04 01 59 00 2c 42 00 00 30 37 00 00 54 10 00 00  .byte 0x04, 0x01, 0x59, 0x00, 0x2c, 0x42, 0x00, 0x00, 0x30, 0x37, 0x00, 0x00, 0x54, 0x10, 0x00, 0x00

; FUNCTION 0x0040e384, declared_size=176, range_size=176, mode=arm
; class-group: std::basic_ostringstream<char, std::char_traits<char>, std::allocator<char> >
; alias: _ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ei.clone.8
; demangled: std::basic_ostringstream<char, std::char_traits<char>, std::allocator<char> >::basic_ostringstream(int) [clone .clone.8]
; decoder-mode: arm
0040e384  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0040e388  40 60 80 e2                                      add r6, r0, #0x40
0040e38c  00 40 a0 e1                                      mov r4, r0
0040e390  8c 50 9f e5                                      ldr r5, [pc, #0x8c]
0040e394  06 00 a0 e1                                      mov r0, r6
0040e398  e8 ea 0b eb                                      bl #0x708f40
0040e39c  84 20 9f e5                                      ldr r2, [pc, #0x84]
0040e3a0  05 50 8f e0                                      add r5, pc, r5
0040e3a4  80 30 9f e5                                      ldr r3, [pc, #0x80]
0040e3a8  02 20 95 e7                                      ldr r2, [r5, r2]
0040e3ac  00 10 a0 e3                                      mov r1, #0
0040e3b0  03 30 95 e7                                      ldr r3, [r5, r3]
0040e3b4  05 00 92 e9                                      ldmib r2, {r0, r2}
0040e3b8  08 30 83 e2                                      add r3, r3, #8
0040e3bc  40 30 84 e5                                      str r3, [r4, #0x40]
0040e3c0  44 10 c6 e5                                      strb r1, [r6, #0x44]
0040e3c4  48 10 86 e5                                      str r1, [r6, #0x48]
0040e3c8  4c 10 86 e5                                      str r1, [r6, #0x4c]
0040e3cc  00 00 84 e5                                      str r0, [r4]
0040e3d0  0c 30 10 e5                                      ldr r3, [r0, #-0xc]
0040e3d4  04 70 84 e2                                      add r7, r4, #4
0040e3d8  03 20 84 e7                                      str r2, [r4, r3]
0040e3dc  00 30 94 e5                                      ldr r3, [r4]
0040e3e0  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
0040e3e4  00 00 84 e0                                      add r0, r4, r0
0040e3e8  2d 53 fc eb                                      bl #0x3230a4
0040e3ec  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
0040e3f0  07 00 a0 e1                                      mov r0, r7
0040e3f4  10 10 a0 e3                                      mov r1, #0x10
0040e3f8  03 30 95 e7                                      ldr r3, [r5, r3]
0040e3fc  20 20 83 e2                                      add r2, r3, #0x20
0040e400  0c 30 83 e2                                      add r3, r3, #0xc
0040e404  00 30 84 e5                                      str r3, [r4]
0040e408  40 20 84 e5                                      str r2, [r4, #0x40]
0040e40c  33 7b fc eb                                      bl #0x32d0e0
0040e410  06 00 a0 e1                                      mov r0, r6
0040e414  07 10 a0 e1                                      mov r1, r7
0040e418  21 53 fc eb                                      bl #0x3230a4
0040e41c  04 00 a0 e1                                      mov r0, r4
0040e420  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0040e424  f0 66 58 00 2c 42 00 00 30 37 00 00 54 10 00 00  .byte 0xf0, 0x66, 0x58, 0x00, 0x2c, 0x42, 0x00, 0x00, 0x30, 0x37, 0x00, 0x00, 0x54, 0x10, 0x00, 0x00

; FUNCTION 0x005629d4, declared_size=176, range_size=176, mode=arm
; class-group: std::basic_ostringstream<char, std::char_traits<char>, std::allocator<char> >
; alias: _ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ei.clone.2
; demangled: std::basic_ostringstream<char, std::char_traits<char>, std::allocator<char> >::basic_ostringstream(int) [clone .clone.2]
; decoder-mode: arm
005629d4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005629d8  40 60 80 e2                                      add r6, r0, #0x40
005629dc  00 40 a0 e1                                      mov r4, r0
005629e0  8c 50 9f e5                                      ldr r5, [pc, #0x8c]
005629e4  06 00 a0 e1                                      mov r0, r6
005629e8  54 99 06 eb                                      bl #0x708f40
005629ec  84 20 9f e5                                      ldr r2, [pc, #0x84]
005629f0  05 50 8f e0                                      add r5, pc, r5
005629f4  80 30 9f e5                                      ldr r3, [pc, #0x80]
005629f8  02 20 95 e7                                      ldr r2, [r5, r2]
005629fc  00 10 a0 e3                                      mov r1, #0
00562a00  03 30 95 e7                                      ldr r3, [r5, r3]
00562a04  05 00 92 e9                                      ldmib r2, {r0, r2}
00562a08  08 30 83 e2                                      add r3, r3, #8
00562a0c  40 30 84 e5                                      str r3, [r4, #0x40]
00562a10  44 10 c6 e5                                      strb r1, [r6, #0x44]
00562a14  48 10 86 e5                                      str r1, [r6, #0x48]
00562a18  4c 10 86 e5                                      str r1, [r6, #0x4c]
00562a1c  00 00 84 e5                                      str r0, [r4]
00562a20  0c 30 10 e5                                      ldr r3, [r0, #-0xc]
00562a24  04 70 84 e2                                      add r7, r4, #4
00562a28  03 20 84 e7                                      str r2, [r4, r3]
00562a2c  00 30 94 e5                                      ldr r3, [r4]
00562a30  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
00562a34  00 00 84 e0                                      add r0, r4, r0
00562a38  99 01 f7 eb                                      bl #0x3230a4
00562a3c  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
00562a40  07 00 a0 e1                                      mov r0, r7
00562a44  10 10 a0 e3                                      mov r1, #0x10
00562a48  03 30 95 e7                                      ldr r3, [r5, r3]
00562a4c  20 20 83 e2                                      add r2, r3, #0x20
00562a50  0c 30 83 e2                                      add r3, r3, #0xc
00562a54  00 30 84 e5                                      str r3, [r4]
00562a58  40 20 84 e5                                      str r2, [r4, #0x40]
00562a5c  9f 29 f7 eb                                      bl #0x32d0e0
00562a60  06 00 a0 e1                                      mov r0, r6
00562a64  07 10 a0 e1                                      mov r1, r7
00562a68  8d 01 f7 eb                                      bl #0x3230a4
00562a6c  04 00 a0 e1                                      mov r0, r4
00562a70  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00562a74  a0 20 43 00 2c 42 00 00 30 37 00 00 54 10 00 00  .byte 0xa0, 0x20, 0x43, 0x00, 0x2c, 0x42, 0x00, 0x00, 0x30, 0x37, 0x00, 0x00, 0x54, 0x10, 0x00, 0x00

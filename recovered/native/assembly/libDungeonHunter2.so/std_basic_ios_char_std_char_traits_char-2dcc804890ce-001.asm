; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0030f3e0, declared_size=40, range_size=40, mode=arm
; class-group: std::basic_ios<char, std::char_traits<char> >
; alias: _ZNSt9basic_iosIcSt11char_traitsIcEE8setstateEi
; demangled: std::basic_ios<char, std::char_traits<char> >::setstate(int)
; decoder-mode: arm
0030f3e0  48 20 90 e5                                      ldr r2, [r0, #0x48]
0030f3e4  08 30 90 e5                                      ldr r3, [r0, #8]
0030f3e8  00 00 52 e3                                      cmp r2, #0
0030f3ec  14 20 90 e5                                      ldr r2, [r0, #0x14]
0030f3f0  03 30 81 e1                                      orr r3, r1, r3
0030f3f4  01 30 83 03                                      orreq r3, r3, #1
0030f3f8  02 00 13 e1                                      tst r3, r2
0030f3fc  08 30 80 e5                                      str r3, [r0, #8]
0030f400  1e ff 2f 01                                      bxeq lr
0030f404  c5 e6 0f ea                                      b #0x708f20

; FUNCTION 0x00322e44, declared_size=52, range_size=52, mode=arm
; class-group: std::basic_ios<char, std::char_traits<char> >
; alias: _ZNSt9basic_iosIcSt11char_traitsIcEED1Ev
; demangled: std::basic_ios<char, std::char_traits<char> >::~basic_ios()
; decoder-mode: arm
00322e44  24 30 9f e5                                      ldr r3, [pc, #0x24]
00322e48  24 20 9f e5                                      ldr r2, [pc, #0x24]
00322e4c  10 40 2d e9                                      push {r4, lr}
00322e50  03 30 8f e0                                      add r3, pc, r3
00322e54  02 20 93 e7                                      ldr r2, [r3, r2]
00322e58  00 40 a0 e1                                      mov r4, r0
00322e5c  08 20 82 e2                                      add r2, r2, #8
00322e60  00 20 80 e5                                      str r2, [r0]
00322e64  01 98 0f eb                                      bl #0x708e70
00322e68  04 00 a0 e1                                      mov r0, r4
00322e6c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00322e70  40 1c 67 00 30 37 00 00                          .byte 0x40, 0x1c, 0x67, 0x00, 0x30, 0x37, 0x00, 0x00

; FUNCTION 0x00323038, declared_size=108, range_size=108, mode=arm
; class-group: std::basic_ios<char, std::char_traits<char> >
; alias: _ZNSt9basic_iosIcSt11char_traitsIcEE5imbueERKSt6locale
; demangled: std::basic_ios<char, std::char_traits<char> >::imbue(std::locale const&)
; decoder-mode: arm
00323038  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0032303c  01 50 a0 e1                                      mov r5, r1
00323040  08 d0 4d e2                                      sub sp, sp, #8
00323044  00 80 a0 e1                                      mov r8, r0
00323048  02 60 a0 e1                                      mov r6, r2
0032304c  8b 97 0f eb                                      bl #0x708e80
00323050  48 10 95 e5                                      ldr r1, [r5, #0x48]
00323054  40 40 9f e5                                      ldr r4, [pc, #0x40]
00323058  00 00 51 e3                                      cmp r1, #0
0032305c  04 40 8f e0                                      add r4, pc, r4
00323060  05 00 00 0a                                      beq #0x32307c
00323064  04 70 8d e2                                      add r7, sp, #4
00323068  07 00 a0 e1                                      mov r0, r7
0032306c  06 20 a0 e1                                      mov r2, r6
00323070  de ff ff eb                                      bl #0x322ff0
00323074  07 00 a0 e1                                      mov r0, r7
00323078  78 97 0f eb                                      bl #0x708e60
0032307c  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
00323080  06 00 a0 e1                                      mov r0, r6
00323084  03 10 94 e7                                      ldr r1, [r4, r3]
00323088  84 97 0f eb                                      bl #0x708ea0
0032308c  40 00 85 e5                                      str r0, [r5, #0x40]
00323090  08 00 a0 e1                                      mov r0, r8
00323094  08 d0 8d e2                                      add sp, sp, #8
00323098  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0032309c  34 1a 67 00 e4 1c 00 00                          .byte 0x34, 0x1a, 0x67, 0x00, 0xe4, 0x1c, 0x00, 0x00

; FUNCTION 0x003230a4, declared_size=172, range_size=172, mode=arm
; class-group: std::basic_ios<char, std::char_traits<char> >
; alias: _ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
; demangled: std::basic_ios<char, std::char_traits<char> >::init(std::basic_streambuf<char, std::char_traits<char> >*)
; decoder-mode: arm
003230a4  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
003230a8  00 00 51 e3                                      cmp r1, #0
003230ac  00 40 a0 e1                                      mov r4, r0
003230b0  00 30 a0 13                                      movne r3, #0
003230b4  48 10 84 e5                                      str r1, [r4, #0x48]
003230b8  0c d0 4d e2                                      sub sp, sp, #0xc
003230bc  01 50 a0 e1                                      mov r5, r1
003230c0  08 30 80 15                                      strne r3, [r0, #8]
003230c4  1a 00 00 0a                                      beq #0x323134
003230c8  04 60 8d e2                                      add r6, sp, #4
003230cc  06 00 a0 e1                                      mov r0, r6
003230d0  5e 97 0f eb                                      bl #0x708e50
003230d4  06 20 a0 e1                                      mov r2, r6
003230d8  04 10 a0 e1                                      mov r1, r4
003230dc  0d 00 a0 e1                                      mov r0, sp
003230e0  d4 ff ff eb                                      bl #0x323038
003230e4  0d 00 a0 e1                                      mov r0, sp
003230e8  5c 97 0f eb                                      bl #0x708e60
003230ec  06 00 a0 e1                                      mov r0, r6
003230f0  5a 97 0f eb                                      bl #0x708e60
003230f4  20 20 a0 e3                                      mov r2, #0x20
003230f8  44 20 c4 e5                                      strb r2, [r4, #0x44]
003230fc  08 20 01 e3                                      movw r2, #0x1008
00323100  00 30 a0 e3                                      mov r3, #0
00323104  01 50 75 e2                                      rsbs r5, r5, #1
00323108  00 50 a0 33                                      movlo r5, #0
0032310c  04 20 84 e5                                      str r2, [r4, #4]
00323110  06 20 a0 e3                                      mov r2, #6
00323114  0d 70 a0 e1                                      mov r7, sp
00323118  08 50 84 e5                                      str r5, [r4, #8]
0032311c  1c 30 84 e5                                      str r3, [r4, #0x1c]
00323120  18 20 84 e5                                      str r2, [r4, #0x18]
00323124  4c 30 84 e5                                      str r3, [r4, #0x4c]
00323128  14 30 84 e5                                      str r3, [r4, #0x14]
0032312c  0c d0 8d e2                                      add sp, sp, #0xc
00323130  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00323134  14 30 90 e5                                      ldr r3, [r0, #0x14]
00323138  01 20 a0 e3                                      mov r2, #1
0032313c  08 20 80 e5                                      str r2, [r0, #8]
00323140  01 00 13 e3                                      tst r3, #1
00323144  df ff ff 0a                                      beq #0x3230c8
00323148  74 97 0f eb                                      bl #0x708f20
0032314c  dd ff ff ea                                      b #0x3230c8

; FUNCTION 0x00324528, declared_size=60, range_size=60, mode=arm
; class-group: std::basic_ios<char, std::char_traits<char> >
; alias: _ZNSt9basic_iosIcSt11char_traitsIcEED0Ev
; demangled: std::basic_ios<char, std::char_traits<char> >::~basic_ios()
; decoder-mode: arm
00324528  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
0032452c  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
00324530  10 40 2d e9                                      push {r4, lr}
00324534  03 30 8f e0                                      add r3, pc, r3
00324538  02 20 93 e7                                      ldr r2, [r3, r2]
0032453c  00 40 a0 e1                                      mov r4, r0
00324540  08 20 82 e2                                      add r2, r2, #8
00324544  00 20 80 e5                                      str r2, [r0]
00324548  48 92 0f eb                                      bl #0x708e70
0032454c  04 00 a0 e1                                      mov r0, r4
00324550  ba af ff eb                                      bl #0x310440
00324554  04 00 a0 e1                                      mov r0, r4
00324558  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0032455c  5c 05 67 00 30 37 00 00                          .byte 0x5c, 0x05, 0x67, 0x00, 0x30, 0x37, 0x00, 0x00

; FUNCTION 0x008b8248, declared_size=34, range_size=34, mode=thumb
; class-group: std::basic_ios<char, std::char_traits<char> >
; alias: _ZNSt9basic_iosIcSt11char_traitsIcEE5rdbufEPSt15basic_streambufIcS1_E
; demangled: std::basic_ios<char, std::char_traits<char> >::rdbuf(std::basic_streambuf<char, std::char_traits<char> >*)
; decoder-mode: thumb
008b8248  10 b5                                            push {r4, lr}
008b824a  84 6c                                            ldr r4, [r0, #0x48]
008b824c  81 64                                            str r1, [r0, #0x48]
008b824e  00 29                                            cmp r1, #0
008b8250  03 d0                                            beq #0x8b825a
008b8252  00 23                                            movs r3, #0
008b8254  83 60                                            str r3, [r0, #8]
008b8256  20 1c                                            adds r0, r4, #0
008b8258  10 bd                                            pop {r4, pc}
008b825a  42 69                                            ldr r2, [r0, #0x14]
008b825c  01 23                                            movs r3, #1
008b825e  83 60                                            str r3, [r0, #8]
008b8260  13 42                                            tst r3, r2
008b8262  f8 d0                                            beq #0x8b8256
008b8264  ea f7 76 fc                                      bl #0x8a2b54
008b8268  f5 e7                                            b #0x8b8256

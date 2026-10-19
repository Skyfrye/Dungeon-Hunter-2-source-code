; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0030f6e8, declared_size=200, range_size=200, mode=arm
; class-group: bool std
; alias: _ZSt14_M_init_noskipIcSt11char_traitsIcEEbRSt13basic_istreamIT_T0_E
; demangled: bool std::_M_init_noskip<char, std::char_traits<char> >(std::basic_istream<char, std::char_traits<char> >&)
; decoder-mode: arm
0030f6e8  10 40 2d e9                                      push {r4, lr}
0030f6ec  00 30 90 e5                                      ldr r3, [r0]
0030f6f0  00 40 a0 e1                                      mov r4, r0
0030f6f4  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0030f6f8  03 30 80 e0                                      add r3, r0, r3
0030f6fc  08 20 93 e5                                      ldr r2, [r3, #8]
0030f700  00 00 52 e3                                      cmp r2, #0
0030f704  0d 00 00 1a                                      bne #0x30f740
0030f708  4c 00 93 e5                                      ldr r0, [r3, #0x4c]
0030f70c  00 00 50 e3                                      cmp r0, #0
0030f710  03 00 00 0a                                      beq #0x30f724
0030f714  75 ff ff eb                                      bl #0x30f4f0
0030f718  00 30 94 e5                                      ldr r3, [r4]
0030f71c  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0030f720  03 30 84 e0                                      add r3, r4, r3
0030f724  48 20 93 e5                                      ldr r2, [r3, #0x48]
0030f728  00 00 52 e3                                      cmp r2, #0
0030f72c  18 00 00 0a                                      beq #0x30f794
0030f730  08 00 93 e5                                      ldr r0, [r3, #8]
0030f734  01 00 70 e2                                      rsbs r0, r0, #1
0030f738  00 00 a0 33                                      movlo r0, #0
0030f73c  10 80 bd e8                                      pop {r4, pc}
0030f740  48 00 93 e5                                      ldr r0, [r3, #0x48]
0030f744  04 10 82 e3                                      orr r1, r2, #4
0030f748  00 00 50 e3                                      cmp r0, #0
0030f74c  05 10 82 03                                      orreq r1, r2, #5
0030f750  14 20 93 e5                                      ldr r2, [r3, #0x14]
0030f754  08 10 83 e5                                      str r1, [r3, #8]
0030f758  02 00 11 e1                                      tst r1, r2
0030f75c  06 00 00 1a                                      bne #0x30f77c
0030f760  00 30 94 e5                                      ldr r3, [r4]
0030f764  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0030f768  03 30 84 e0                                      add r3, r4, r3
0030f76c  08 00 93 e5                                      ldr r0, [r3, #8]
0030f770  01 00 70 e2                                      rsbs r0, r0, #1
0030f774  00 00 a0 33                                      movlo r0, #0
0030f778  10 80 bd e8                                      pop {r4, pc}
0030f77c  03 00 a0 e1                                      mov r0, r3
0030f780  e6 e5 0f eb                                      bl #0x708f20
0030f784  00 30 94 e5                                      ldr r3, [r4]
0030f788  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0030f78c  03 30 84 e0                                      add r3, r4, r3
0030f790  f5 ff ff ea                                      b #0x30f76c
0030f794  03 00 a0 e1                                      mov r0, r3
0030f798  01 10 a0 e3                                      mov r1, #1
0030f79c  0f ff ff eb                                      bl #0x30f3e0
0030f7a0  00 30 94 e5                                      ldr r3, [r4]
0030f7a4  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0030f7a8  03 30 84 e0                                      add r3, r4, r3
0030f7ac  df ff ff ea                                      b #0x30f730

; FUNCTION 0x0030f7b0, declared_size=448, range_size=448, mode=arm
; class-group: bool std
; alias: _ZSt12_M_init_skipIcSt11char_traitsIcEEbRSt13basic_istreamIT_T0_E
; demangled: bool std::_M_init_skip<char, std::char_traits<char> >(std::basic_istream<char, std::char_traits<char> >&)
; decoder-mode: arm
0030f7b0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0030f7b4  00 30 90 e5                                      ldr r3, [r0]
0030f7b8  00 40 a0 e1                                      mov r4, r0
0030f7bc  0c c0 13 e5                                      ldr ip, [r3, #-0xc]
0030f7c0  0c c0 80 e0                                      add ip, r0, ip
0030f7c4  08 30 9c e5                                      ldr r3, [ip, #8]
0030f7c8  00 00 53 e3                                      cmp r3, #0
0030f7cc  09 00 00 0a                                      beq #0x30f7f8
0030f7d0  48 30 9c e5                                      ldr r3, [ip, #0x48]
0030f7d4  08 20 9c e5                                      ldr r2, [ip, #8]
0030f7d8  14 00 9c e5                                      ldr r0, [ip, #0x14]
0030f7dc  00 00 53 e3                                      cmp r3, #0
0030f7e0  04 30 82 e3                                      orr r3, r2, #4
0030f7e4  05 30 82 03                                      orreq r3, r2, #5
0030f7e8  00 00 13 e0                                      ands r0, r3, r0
0030f7ec  08 30 8c e5                                      str r3, [ip, #8]
0030f7f0  3f 00 00 1a                                      bne #0x30f8f4
0030f7f4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0030f7f8  4c 00 9c e5                                      ldr r0, [ip, #0x4c]
0030f7fc  00 00 50 e3                                      cmp r0, #0
0030f800  03 00 00 0a                                      beq #0x30f814
0030f804  39 ff ff eb                                      bl #0x30f4f0
0030f808  00 30 94 e5                                      ldr r3, [r4]
0030f80c  0c c0 13 e5                                      ldr ip, [r3, #-0xc]
0030f810  0c c0 84 e0                                      add ip, r4, ip
0030f814  48 60 9c e5                                      ldr r6, [ip, #0x48]
0030f818  00 00 56 e3                                      cmp r6, #0
0030f81c  46 00 00 0a                                      beq #0x30f93c
0030f820  08 20 96 e5                                      ldr r2, [r6, #8]
0030f824  0c 30 96 e5                                      ldr r3, [r6, #0xc]
0030f828  03 00 52 e1                                      cmp r2, r3
0030f82c  3d 00 00 0a                                      beq #0x30f928
0030f830  40 70 9c e5                                      ldr r7, [ip, #0x40]
0030f834  00 50 a0 e3                                      mov r5, #0
0030f838  00 c0 a0 e3                                      mov ip, #0
0030f83c  02 00 53 e1                                      cmp r3, r2
0030f840  41 00 00 0a                                      beq #0x30f94c
0030f844  00 00 55 e3                                      cmp r5, #0
0030f848  13 00 00 0a                                      beq #0x30f89c
0030f84c  00 30 94 e5                                      ldr r3, [r4]
0030f850  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
0030f854  00 00 84 e0                                      add r0, r4, r0
0030f858  48 30 90 e5                                      ldr r3, [r0, #0x48]
0030f85c  08 20 90 e5                                      ldr r2, [r0, #8]
0030f860  00 00 53 e3                                      cmp r3, #0
0030f864  06 30 82 e3                                      orr r3, r2, #6
0030f868  07 30 82 03                                      orreq r3, r2, #7
0030f86c  14 20 90 e5                                      ldr r2, [r0, #0x14]
0030f870  08 30 80 e5                                      str r3, [r0, #8]
0030f874  02 00 13 e1                                      tst r3, r2
0030f878  21 00 00 1a                                      bne #0x30f904
0030f87c  00 30 94 e5                                      ldr r3, [r4]
0030f880  0c c0 13 e5                                      ldr ip, [r3, #-0xc]
0030f884  0c c0 84 e0                                      add ip, r4, ip
0030f888  08 30 9c e5                                      ldr r3, [ip, #8]
0030f88c  00 00 53 e3                                      cmp r3, #0
0030f890  ce ff ff 1a                                      bne #0x30f7d0
0030f894  01 00 a0 e3                                      mov r0, #1
0030f898  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0030f89c  00 00 5c e3                                      cmp ip, #0
0030f8a0  07 00 a0 e1                                      mov r0, r7
0030f8a4  01 10 a0 e3                                      mov r1, #1
0030f8a8  f3 ff ff 1a                                      bne #0x30f87c
0030f8ac  87 e5 0f eb                                      bl #0x708ed0
0030f8b0  0c 30 96 e5                                      ldr r3, [r6, #0xc]
0030f8b4  00 20 a0 e1                                      mov r2, r0
0030f8b8  08 00 86 e5                                      str r0, [r6, #8]
0030f8bc  03 00 50 e1                                      cmp r0, r3
0030f8c0  00 10 a0 e1                                      mov r1, r0
0030f8c4  03 80 a0 e1                                      mov r8, r3
0030f8c8  01 c0 a0 e3                                      mov ip, #1
0030f8cc  da ff ff 1a                                      bne #0x30f83c
0030f8d0  02 00 53 e1                                      cmp r3, r2
0030f8d4  00 00 d2 85                                      ldrbhi r0, [r2]
0030f8d8  0b 00 00 9a                                      bls #0x30f90c
0030f8dc  01 00 70 e3                                      cmn r0, #1
0030f8e0  00 50 a0 13                                      movne r5, #0
0030f8e4  01 50 a0 03                                      moveq r5, #1
0030f8e8  08 30 a0 e1                                      mov r3, r8
0030f8ec  01 20 a0 e1                                      mov r2, r1
0030f8f0  d0 ff ff ea                                      b #0x30f838
0030f8f4  0c 00 a0 e1                                      mov r0, ip
0030f8f8  88 e5 0f eb                                      bl #0x708f20
0030f8fc  00 00 a0 e3                                      mov r0, #0
0030f900  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0030f904  85 e5 0f eb                                      bl #0x708f20
0030f908  db ff ff ea                                      b #0x30f87c
0030f90c  00 30 96 e5                                      ldr r3, [r6]
0030f910  06 00 a0 e1                                      mov r0, r6
0030f914  0f e0 a0 e1                                      mov lr, pc
0030f918  20 f0 93 e5                                      ldr pc, [r3, #0x20]
0030f91c  08 10 96 e5                                      ldr r1, [r6, #8]
0030f920  0c 80 96 e5                                      ldr r8, [r6, #0xc]
0030f924  ec ff ff ea                                      b #0x30f8dc
0030f928  06 10 a0 e1                                      mov r1, r6
0030f92c  40 20 9c e5                                      ldr r2, [ip, #0x40]
0030f930  04 00 a0 e1                                      mov r0, r4
0030f934  b3 fe ff eb                                      bl #0x30f408
0030f938  cf ff ff ea                                      b #0x30f87c
0030f93c  0c 00 a0 e1                                      mov r0, ip
0030f940  01 10 a0 e3                                      mov r1, #1
0030f944  a5 fe ff eb                                      bl #0x30f3e0
0030f948  cb ff ff ea                                      b #0x30f87c
0030f94c  00 00 55 e3                                      cmp r5, #0
0030f950  bd ff ff 1a                                      bne #0x30f84c
0030f954  00 00 5c e3                                      cmp ip, #0
0030f958  c7 ff ff 1a                                      bne #0x30f87c
0030f95c  06 10 a0 e1                                      mov r1, r6
0030f960  07 20 a0 e1                                      mov r2, r7
0030f964  04 00 a0 e1                                      mov r0, r4
0030f968  a6 fe ff eb                                      bl #0x30f408
0030f96c  c2 ff ff ea                                      b #0x30f87c

; FUNCTION 0x00313c48, declared_size=72, range_size=72, mode=arm
; class-group: bool std
; alias: _ZSteqIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_EPKS3_
; demangled: bool std::operator==<char, std::char_traits<char>, std::allocator<char> >(std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, char const*)
; decoder-mode: arm
00313c48  70 40 2d e9                                      push {r4, r5, r6, lr}
00313c4c  00 40 a0 e1                                      mov r4, r0
00313c50  01 00 a0 e1                                      mov r0, r1
00313c54  01 50 a0 e1                                      mov r5, r1
00313c58  7d e8 ff eb                                      bl #0x30de54
00313c5c  10 30 94 e5                                      ldr r3, [r4, #0x10]
00313c60  00 20 a0 e1                                      mov r2, r0
00313c64  14 00 94 e5                                      ldr r0, [r4, #0x14]
00313c68  03 30 60 e0                                      rsb r3, r0, r3
00313c6c  03 00 52 e1                                      cmp r2, r3
00313c70  01 00 00 0a                                      beq #0x313c7c
00313c74  00 00 a0 e3                                      mov r0, #0
00313c78  70 80 bd e8                                      pop {r4, r5, r6, pc}
00313c7c  05 10 a0 e1                                      mov r1, r5
00313c80  56 ea ff eb                                      bl #0x30e5e0
00313c84  01 00 70 e2                                      rsbs r0, r0, #1
00313c88  00 00 a0 33                                      movlo r0, #0
00313c8c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x003d2ae8, declared_size=160, range_size=160, mode=arm
; class-group: bool std
; alias: _ZStltISsiEbRKSt4pairIT_T0_ES5_
; demangled: bool std::operator< <std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int>(std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int> const&, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int> const&)
; decoder-mode: arm
003d2ae8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
003d2aec  14 40 90 e5                                      ldr r4, [r0, #0x14]
003d2af0  14 50 91 e5                                      ldr r5, [r1, #0x14]
003d2af4  10 80 90 e5                                      ldr r8, [r0, #0x10]
003d2af8  10 90 91 e5                                      ldr sb, [r1, #0x10]
003d2afc  00 70 a0 e1                                      mov r7, r0
003d2b00  08 80 64 e0                                      rsb r8, r4, r8
003d2b04  09 90 65 e0                                      rsb sb, r5, sb
003d2b08  08 00 59 e1                                      cmp sb, r8
003d2b0c  09 a0 a0 b1                                      movlt sl, sb
003d2b10  08 a0 a0 a1                                      movge sl, r8
003d2b14  01 60 a0 e1                                      mov r6, r1
003d2b18  04 00 a0 e1                                      mov r0, r4
003d2b1c  05 10 a0 e1                                      mov r1, r5
003d2b20  0a 20 a0 e1                                      mov r2, sl
003d2b24  ad ee fc eb                                      bl #0x30e5e0
003d2b28  00 00 50 e3                                      cmp r0, #0
003d2b2c  0f 00 00 1a                                      bne #0x3d2b70
003d2b30  09 00 58 e1                                      cmp r8, sb
003d2b34  0e 00 00 ba                                      blt #0x3d2b74
003d2b38  05 00 a0 e1                                      mov r0, r5
003d2b3c  04 10 a0 e1                                      mov r1, r4
003d2b40  0a 20 a0 e1                                      mov r2, sl
003d2b44  a5 ee fc eb                                      bl #0x30e5e0
003d2b48  00 00 50 e3                                      cmp r0, #0
003d2b4c  0a 00 00 1a                                      bne #0x3d2b7c
003d2b50  09 00 58 e1                                      cmp r8, sb
003d2b54  09 00 00 ca                                      bgt #0x3d2b80
003d2b58  18 00 97 e5                                      ldr r0, [r7, #0x18]
003d2b5c  18 30 96 e5                                      ldr r3, [r6, #0x18]
003d2b60  03 00 50 e1                                      cmp r0, r3
003d2b64  00 00 a0 a3                                      movge r0, #0
003d2b68  01 00 a0 b3                                      movlt r0, #1
003d2b6c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
003d2b70  f0 ff ff aa                                      bge #0x3d2b38
003d2b74  01 00 a0 e3                                      mov r0, #1
003d2b78  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
003d2b7c  f5 ff ff aa                                      bge #0x3d2b58
003d2b80  00 00 a0 e3                                      mov r0, #0
003d2b84  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x003f0344, declared_size=148, range_size=148, mode=arm
; class-group: bool std
; alias: _ZSteqI7Point3DIfESaIS1_EEbRKSt6vectorIT_T0_ES8_
; demangled: bool std::operator==<Point3D<float>, std::allocator<Point3D<float> > >(std::vector<Point3D<float>, std::allocator<Point3D<float> > > const&, std::vector<Point3D<float>, std::allocator<Point3D<float> > > const&)
; decoder-mode: arm
003f0344  70 40 2d e9                                      push {r4, r5, r6, lr}
003f0348  00 40 90 e5                                      ldr r4, [r0]
003f034c  04 30 91 e5                                      ldr r3, [r1, #4]
003f0350  04 60 90 e5                                      ldr r6, [r0, #4]
003f0354  00 50 91 e5                                      ldr r5, [r1]
003f0358  06 20 64 e0                                      rsb r2, r4, r6
003f035c  03 30 65 e0                                      rsb r3, r5, r3
003f0360  42 21 a0 e1                                      asr r2, r2, #2
003f0364  43 31 a0 e1                                      asr r3, r3, #2
003f0368  02 01 82 e0                                      add r0, r2, r2, lsl #2
003f036c  03 11 83 e0                                      add r1, r3, r3, lsl #2
003f0370  00 02 80 e0                                      add r0, r0, r0, lsl #4
003f0374  01 12 81 e0                                      add r1, r1, r1, lsl #4
003f0378  00 04 80 e0                                      add r0, r0, r0, lsl #8
003f037c  01 14 81 e0                                      add r1, r1, r1, lsl #8
003f0380  00 08 80 e0                                      add r0, r0, r0, lsl #16
003f0384  01 18 81 e0                                      add r1, r1, r1, lsl #16
003f0388  80 20 82 e0                                      add r2, r2, r0, lsl #1
003f038c  81 30 83 e0                                      add r3, r3, r1, lsl #1
003f0390  03 00 52 e1                                      cmp r2, r3
003f0394  01 00 00 0a                                      beq #0x3f03a0
003f0398  00 00 a0 e3                                      mov r0, #0
003f039c  70 80 bd e8                                      pop {r4, r5, r6, pc}
003f03a0  04 00 56 e1                                      cmp r6, r4
003f03a4  01 00 00 1a                                      bne #0x3f03b0
003f03a8  08 00 00 ea                                      b #0x3f03d0
003f03ac  0c 50 85 e2                                      add r5, r5, #0xc
003f03b0  04 00 a0 e1                                      mov r0, r4
003f03b4  05 10 a0 e1                                      mov r1, r5
003f03b8  eb 89 fc eb                                      bl #0x312b6c
003f03bc  00 00 50 e3                                      cmp r0, #0
003f03c0  0c 40 84 e2                                      add r4, r4, #0xc
003f03c4  f3 ff ff 0a                                      beq #0x3f0398
003f03c8  04 00 56 e1                                      cmp r6, r4
003f03cc  f6 ff ff 1a                                      bne #0x3f03ac
003f03d0  01 00 a0 e3                                      mov r0, #1
003f03d4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0041b710, declared_size=128, range_size=128, mode=arm
; class-group: bool std
; alias: _ZSt18__stlp_string_fillIcSt11char_traitsIcEEbRSt13basic_ostreamIT_T0_EPSt15basic_streambufIS3_S4_Ei
; demangled: bool std::__stlp_string_fill<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, std::basic_streambuf<char, std::char_traits<char> >*, int)
; decoder-mode: arm
0041b710  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0041b714  00 30 90 e5                                      ldr r3, [r0]
0041b718  00 60 52 e2                                      subs r6, r2, #0
0041b71c  01 40 a0 e1                                      mov r4, r1
0041b720  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0041b724  03 00 80 e0                                      add r0, r0, r3
0041b728  44 70 d0 e5                                      ldrb r7, [r0, #0x44]
0041b72c  15 00 00 da                                      ble #0x41b788
0041b730  00 50 a0 e3                                      mov r5, #0
0041b734  77 80 ef e6                                      uxtb r8, r7
0041b738  02 00 00 ea                                      b #0x41b748
0041b73c  01 50 85 e2                                      add r5, r5, #1
0041b740  06 00 55 e1                                      cmp r5, r6
0041b744  0f 00 00 0a                                      beq #0x41b788
0041b748  14 20 94 e5                                      ldr r2, [r4, #0x14]
0041b74c  18 10 94 e5                                      ldr r1, [r4, #0x18]
0041b750  02 30 a0 e1                                      mov r3, r2
0041b754  01 00 52 e1                                      cmp r2, r1
0041b758  01 70 c3 34                                      strblo r7, [r3], #1
0041b75c  14 30 84 35                                      strlo r3, [r4, #0x14]
0041b760  f5 ff ff 3a                                      blo #0x41b73c
0041b764  00 30 94 e5                                      ldr r3, [r4]
0041b768  04 00 a0 e1                                      mov r0, r4
0041b76c  08 10 a0 e1                                      mov r1, r8
0041b770  0f e0 a0 e1                                      mov lr, pc
0041b774  34 f0 93 e5                                      ldr pc, [r3, #0x34]
0041b778  01 00 70 e3                                      cmn r0, #1
0041b77c  ee ff ff 1a                                      bne #0x41b73c
0041b780  00 00 a0 e3                                      mov r0, #0
0041b784  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0041b788  01 00 a0 e3                                      mov r0, #1
0041b78c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0043a7d4, declared_size=60, range_size=60, mode=arm
; class-group: bool std
; alias: _ZSteqIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_ES8_
; demangled: bool std::operator==<char, std::char_traits<char>, std::allocator<char> >(std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&)
; decoder-mode: arm
0043a7d4  10 40 2d e9                                      push {r4, lr}
0043a7d8  10 20 90 e5                                      ldr r2, [r0, #0x10]
0043a7dc  10 30 91 e5                                      ldr r3, [r1, #0x10]
0043a7e0  14 00 90 e5                                      ldr r0, [r0, #0x14]
0043a7e4  14 10 91 e5                                      ldr r1, [r1, #0x14]
0043a7e8  02 20 60 e0                                      rsb r2, r0, r2
0043a7ec  03 30 61 e0                                      rsb r3, r1, r3
0043a7f0  03 00 52 e1                                      cmp r2, r3
0043a7f4  01 00 00 0a                                      beq #0x43a800
0043a7f8  00 00 a0 e3                                      mov r0, #0
0043a7fc  10 80 bd e8                                      pop {r4, pc}
0043a800  76 4f fb eb                                      bl #0x30e5e0
0043a804  01 00 70 e2                                      rsbs r0, r0, #1
0043a808  00 00 a0 33                                      movlo r0, #0
0043a80c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005362f0, declared_size=80, range_size=80, mode=arm
; class-group: bool std
; alias: _ZStltIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS2_6memory13E_MEMORY_HINTE0EEEEbRKSbIT_T0_T1_ESD_
; demangled: bool std::operator< <char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >(std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const&, std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const&)
; decoder-mode: arm
005362f0  70 40 2d e9                                      push {r4, r5, r6, lr}
005362f4  10 50 90 e5                                      ldr r5, [r0, #0x10]
005362f8  10 40 91 e5                                      ldr r4, [r1, #0x10]
005362fc  14 00 90 e5                                      ldr r0, [r0, #0x14]
00536300  14 10 91 e5                                      ldr r1, [r1, #0x14]
00536304  05 50 60 e0                                      rsb r5, r0, r5
00536308  04 40 61 e0                                      rsb r4, r1, r4
0053630c  05 00 54 e1                                      cmp r4, r5
00536310  04 20 a0 b1                                      movlt r2, r4
00536314  05 20 a0 a1                                      movge r2, r5
00536318  b0 60 f7 eb                                      bl #0x30e5e0
0053631c  00 00 50 e3                                      cmp r0, #0
00536320  04 00 00 1a                                      bne #0x536338
00536324  04 00 55 e1                                      cmp r5, r4
00536328  00 00 e0 b3                                      mvnlt r0, #0
0053632c  01 00 00 ba                                      blt #0x536338
00536330  00 00 a0 d3                                      movle r0, #0
00536334  01 00 a0 c3                                      movgt r0, #1
00536338  a0 0f a0 e1                                      lsr r0, r0, #0x1f
0053633c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00536340, declared_size=72, range_size=72, mode=arm
; class-group: bool std
; alias: _ZSteqIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS2_6memory13E_MEMORY_HINTE0EEEEbRKSbIT_T0_T1_EPKS8_
; demangled: bool std::operator==<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >(std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const&, char const*)
; decoder-mode: arm
00536340  70 40 2d e9                                      push {r4, r5, r6, lr}
00536344  00 40 a0 e1                                      mov r4, r0
00536348  01 00 a0 e1                                      mov r0, r1
0053634c  01 50 a0 e1                                      mov r5, r1
00536350  bf 5e f7 eb                                      bl #0x30de54
00536354  10 30 94 e5                                      ldr r3, [r4, #0x10]
00536358  00 20 a0 e1                                      mov r2, r0
0053635c  14 00 94 e5                                      ldr r0, [r4, #0x14]
00536360  03 30 60 e0                                      rsb r3, r0, r3
00536364  03 00 52 e1                                      cmp r2, r3
00536368  01 00 00 0a                                      beq #0x536374
0053636c  00 00 a0 e3                                      mov r0, #0
00536370  70 80 bd e8                                      pop {r4, r5, r6, pc}
00536374  05 10 a0 e1                                      mov r1, r5
00536378  98 60 f7 eb                                      bl #0x30e5e0
0053637c  01 00 70 e2                                      rsbs r0, r0, #1
00536380  00 00 a0 33                                      movlo r0, #0
00536384  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00536404, declared_size=72, range_size=72, mode=arm
; class-group: bool std
; alias: _ZSteqIwSt11char_traitsIwEN6glitch4core10SAllocatorIwLNS2_6memory13E_MEMORY_HINTE0EEEEbRKSbIT_T0_T1_EPKS8_
; demangled: bool std::operator==<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >(std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> > const&, wchar_t const*)
; decoder-mode: arm
00536404  70 40 2d e9                                      push {r4, r5, r6, lr}
00536408  00 40 a0 e1                                      mov r4, r0
0053640c  01 00 a0 e1                                      mov r0, r1
00536410  01 50 a0 e1                                      mov r5, r1
00536414  1b 62 f7 eb                                      bl #0x30ec88
00536418  40 30 94 e5                                      ldr r3, [r4, #0x40]
0053641c  00 20 a0 e1                                      mov r2, r0
00536420  44 00 94 e5                                      ldr r0, [r4, #0x44]
00536424  03 30 60 e0                                      rsb r3, r0, r3
00536428  43 01 52 e1                                      cmp r2, r3, asr #2
0053642c  01 00 00 0a                                      beq #0x536438
00536430  00 00 a0 e3                                      mov r0, #0
00536434  70 80 bd e8                                      pop {r4, r5, r6, pc}
00536438  05 10 a0 e1                                      mov r1, r5
0053643c  5f 62 f7 eb                                      bl #0x30edc0
00536440  01 00 70 e2                                      rsbs r0, r0, #1
00536444  00 00 a0 33                                      movlo r0, #0
00536448  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0053eab0, declared_size=64, range_size=64, mode=arm
; class-group: bool std
; alias: _ZSteqIwSt11char_traitsIwEN6glitch4core10SAllocatorIwLNS2_6memory13E_MEMORY_HINTE0EEEEbRKSbIT_T0_T1_ESD_
; demangled: bool std::operator==<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >(std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> > const&, std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> > const&)
; decoder-mode: arm
0053eab0  10 40 2d e9                                      push {r4, lr}
0053eab4  40 20 90 e5                                      ldr r2, [r0, #0x40]
0053eab8  44 00 90 e5                                      ldr r0, [r0, #0x44]
0053eabc  40 30 91 e5                                      ldr r3, [r1, #0x40]
0053eac0  44 10 91 e5                                      ldr r1, [r1, #0x44]
0053eac4  02 20 60 e0                                      rsb r2, r0, r2
0053eac8  42 21 a0 e1                                      asr r2, r2, #2
0053eacc  03 30 61 e0                                      rsb r3, r1, r3
0053ead0  43 01 52 e1                                      cmp r2, r3, asr #2
0053ead4  01 00 00 0a                                      beq #0x53eae0
0053ead8  00 00 a0 e3                                      mov r0, #0
0053eadc  10 80 bd e8                                      pop {r4, pc}
0053eae0  b6 40 f7 eb                                      bl #0x30edc0
0053eae4  01 00 70 e2                                      rsbs r0, r0, #1
0053eae8  00 00 a0 33                                      movlo r0, #0
0053eaec  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005e566c, declared_size=60, range_size=60, mode=arm
; class-group: bool std
; alias: _ZSteqIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS2_6memory13E_MEMORY_HINTE0EEEEbRKSbIT_T0_T1_ESD_
; demangled: bool std::operator==<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >(std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const&, std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const&)
; decoder-mode: arm
005e566c  10 40 2d e9                                      push {r4, lr}
005e5670  10 20 90 e5                                      ldr r2, [r0, #0x10]
005e5674  10 30 91 e5                                      ldr r3, [r1, #0x10]
005e5678  14 00 90 e5                                      ldr r0, [r0, #0x14]
005e567c  14 10 91 e5                                      ldr r1, [r1, #0x14]
005e5680  02 20 60 e0                                      rsb r2, r0, r2
005e5684  03 30 61 e0                                      rsb r3, r1, r3
005e5688  03 00 52 e1                                      cmp r2, r3
005e568c  01 00 00 0a                                      beq #0x5e5698
005e5690  00 00 a0 e3                                      mov r0, #0
005e5694  10 80 bd e8                                      pop {r4, pc}
005e5698  d0 a3 f4 eb                                      bl #0x30e5e0
005e569c  01 00 70 e2                                      rsbs r0, r0, #1
005e56a0  00 00 a0 33                                      movlo r0, #0
005e56a4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0086f36c, declared_size=72, range_size=72, mode=arm
; class-group: bool std
; alias: _ZSteqIcSt11char_traitsIcEN3vox10SAllocatorIcLNS2_10VoxMemHintE0EEEEbRKSbIT_T0_T1_EPKS6_
; demangled: bool std::operator==<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> >(std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const&, char const*)
; decoder-mode: arm
0086f36c  70 40 2d e9                                      push {r4, r5, r6, lr}
0086f370  00 40 a0 e1                                      mov r4, r0
0086f374  01 00 a0 e1                                      mov r0, r1
0086f378  01 50 a0 e1                                      mov r5, r1
0086f37c  b4 7a ea eb                                      bl #0x30de54
0086f380  10 30 94 e5                                      ldr r3, [r4, #0x10]
0086f384  00 20 a0 e1                                      mov r2, r0
0086f388  14 00 94 e5                                      ldr r0, [r4, #0x14]
0086f38c  03 30 60 e0                                      rsb r3, r0, r3
0086f390  03 00 52 e1                                      cmp r2, r3
0086f394  01 00 00 0a                                      beq #0x86f3a0
0086f398  00 00 a0 e3                                      mov r0, #0
0086f39c  70 80 bd e8                                      pop {r4, r5, r6, pc}
0086f3a0  05 10 a0 e1                                      mov r1, r5
0086f3a4  8d 7c ea eb                                      bl #0x30e5e0
0086f3a8  01 00 70 e2                                      rsbs r0, r0, #1
0086f3ac  00 00 a0 33                                      movlo r0, #0
0086f3b0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x008a3960, declared_size=48, range_size=48, mode=thumb
; class-group: bool std
; alias: _ZSteqIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_EPKS3_.clone.1
; demangled: bool std::operator==<char, std::char_traits<char>, std::allocator<char> >(std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, char const*) [clone .clone.1]
; decoder-mode: thumb
008a3960  10 b5                                            push {r4, lr}
008a3962  04 1c                                            adds r4, r0, #0
008a3964  6a f6 76 e2                                      blx #0x30de54
008a3968  08 4b                                            ldr r3, [pc, #0x20]
008a396a  02 1c                                            adds r2, r0, #0
008a396c  00 20                                            movs r0, #0
008a396e  7b 44                                            add r3, pc
008a3970  99 69                                            ldr r1, [r3, #0x18]
008a3972  5b 69                                            ldr r3, [r3, #0x14]
008a3974  5b 1a                                            subs r3, r3, r1
008a3976  9a 42                                            cmp r2, r3
008a3978  00 d0                                            beq #0x8a397c
008a397a  10 bd                                            pop {r4, pc}
008a397c  08 1c                                            adds r0, r1, #0
008a397e  21 1c                                            adds r1, r4, #0
008a3980  6a f6 2e e6                                      blx #0x30e5e0
008a3984  03 1c                                            adds r3, r0, #0
008a3986  58 42                                            rsbs r0, r3, #0
008a3988  58 41                                            adcs r0, r3
008a398a  f6 e7                                            b #0x8a397a
; mapping-symbol data/literal pool
008a398c  ce 14 19 00                                      .byte 0xce, 0x14, 0x19, 0x00

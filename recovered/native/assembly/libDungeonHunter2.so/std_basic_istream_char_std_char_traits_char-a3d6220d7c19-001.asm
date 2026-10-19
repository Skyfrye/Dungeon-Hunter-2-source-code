; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0030fbd8, declared_size=64, range_size=64, mode=arm
; class-group: std::basic_istream<char, std::char_traits<char> >
; alias: _ZNSirsERi
; demangled: std::basic_istream<char, std::char_traits<char> >::operator>>(int&)
; decoder-mode: arm
0030fbd8  30 40 2d e9                                      push {r4, r5, lr}
0030fbdc  0c d0 4d e2                                      sub sp, sp, #0xc
0030fbe0  00 40 a0 e1                                      mov r4, r0
0030fbe4  01 50 a0 e1                                      mov r5, r1
0030fbe8  04 10 8d e2                                      add r1, sp, #4
0030fbec  b5 ff ff eb                                      bl #0x30fac8
0030fbf0  00 30 94 e5                                      ldr r3, [r4]
0030fbf4  04 00 a0 e1                                      mov r0, r4
0030fbf8  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0030fbfc  03 30 84 e0                                      add r3, r4, r3
0030fc00  08 30 93 e5                                      ldr r3, [r3, #8]
0030fc04  05 00 13 e3                                      tst r3, #5
0030fc08  04 30 9d 05                                      ldreq r3, [sp, #4]
0030fc0c  00 30 85 05                                      streq r3, [r5]
0030fc10  0c d0 8d e2                                      add sp, sp, #0xc
0030fc14  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x003101bc, declared_size=176, range_size=176, mode=arm
; class-group: std::basic_istream<char, std::char_traits<char> >
; alias: _ZNSi16_M_formatted_getERc
; demangled: std::basic_istream<char, std::char_traits<char> >::_M_formatted_get(char&)
; decoder-mode: arm
003101bc  30 40 2d e9                                      push {r4, r5, lr}
003101c0  00 40 a0 e1                                      mov r4, r0
003101c4  0c d0 4d e2                                      sub sp, sp, #0xc
003101c8  01 50 a0 e1                                      mov r5, r1
003101cc  04 00 8d e2                                      add r0, sp, #4
003101d0  04 10 a0 e1                                      mov r1, r4
003101d4  e5 fd ff eb                                      bl #0x30f970
003101d8  04 30 dd e5                                      ldrb r3, [sp, #4]
003101dc  00 00 53 e3                                      cmp r3, #0
003101e0  0b 00 00 0a                                      beq #0x310214
003101e4  00 30 94 e5                                      ldr r3, [r4]
003101e8  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
003101ec  03 30 84 e0                                      add r3, r4, r3
003101f0  48 30 93 e5                                      ldr r3, [r3, #0x48]
003101f4  08 20 93 e5                                      ldr r2, [r3, #8]
003101f8  0c 10 93 e5                                      ldr r1, [r3, #0xc]
003101fc  01 00 52 e1                                      cmp r2, r1
00310200  05 00 00 2a                                      bhs #0x31021c
00310204  01 10 82 e2                                      add r1, r2, #1
00310208  08 10 83 e5                                      str r1, [r3, #8]
0031020c  00 00 d2 e5                                      ldrb r0, [r2]
00310210  00 00 c5 e5                                      strb r0, [r5]
00310214  0c d0 8d e2                                      add sp, sp, #0xc
00310218  30 80 bd e8                                      pop {r4, r5, pc}
0031021c  03 00 a0 e1                                      mov r0, r3
00310220  00 30 93 e5                                      ldr r3, [r3]
00310224  0f e0 a0 e1                                      mov lr, pc
00310228  24 f0 93 e5                                      ldr pc, [r3, #0x24]
0031022c  01 00 70 e3                                      cmn r0, #1
00310230  f6 ff ff 1a                                      bne #0x310210
00310234  00 30 94 e5                                      ldr r3, [r4]
00310238  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
0031023c  00 00 84 e0                                      add r0, r4, r0
00310240  48 30 90 e5                                      ldr r3, [r0, #0x48]
00310244  08 20 90 e5                                      ldr r2, [r0, #8]
00310248  00 00 53 e3                                      cmp r3, #0
0031024c  06 30 82 e3                                      orr r3, r2, #6
00310250  07 30 82 03                                      orreq r3, r2, #7
00310254  14 20 90 e5                                      ldr r2, [r0, #0x14]
00310258  08 30 80 e5                                      str r3, [r0, #8]
0031025c  02 00 13 e1                                      tst r3, r2
00310260  eb ff ff 0a                                      beq #0x310214
00310264  2d e3 0f eb                                      bl #0x708f20
00310268  e9 ff ff ea                                      b #0x310214

; FUNCTION 0x003887b0, declared_size=72, range_size=72, mode=arm
; class-group: std::basic_istream<char, std::char_traits<char> >
; alias: _ZNSiD1Ev
; demangled: std::basic_istream<char, std::char_traits<char> >::~basic_istream()
; decoder-mode: arm
003887b0  34 30 9f e5                                      ldr r3, [pc, #0x34]
003887b4  34 10 9f e5                                      ldr r1, [pc, #0x34]
003887b8  34 20 9f e5                                      ldr r2, [pc, #0x34]
003887bc  03 30 8f e0                                      add r3, pc, r3
003887c0  01 10 93 e7                                      ldr r1, [r3, r1]
003887c4  02 20 93 e7                                      ldr r2, [r3, r2]
003887c8  10 40 2d e9                                      push {r4, lr}
003887cc  00 40 a0 e1                                      mov r4, r0
003887d0  0c 10 81 e2                                      add r1, r1, #0xc
003887d4  08 20 82 e2                                      add r2, r2, #8
003887d8  08 10 80 e4                                      str r1, [r0], #8
003887dc  08 20 84 e5                                      str r2, [r4, #8]
003887e0  a2 01 0e eb                                      bl #0x708e70
003887e4  04 00 a0 e1                                      mov r0, r4
003887e8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003887ec  d4 c2 60 00 f8 28 00 00 30 37 00 00              .byte 0xd4, 0xc2, 0x60, 0x00, 0xf8, 0x28, 0x00, 0x00, 0x30, 0x37, 0x00, 0x00

; FUNCTION 0x003887f8, declared_size=16, range_size=16, mode=arm
; class-group: std::basic_istream<char, std::char_traits<char> >
; alias: _ZTv0_n12_NSiD1Ev
; demangled: virtual thunk to std::basic_istream<char, std::char_traits<char> >::~basic_istream()
; decoder-mode: arm
003887f8  00 30 90 e5                                      ldr r3, [r0]
003887fc  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00388800  03 00 80 e0                                      add r0, r0, r3
00388804  e9 ff ff ea                                      b #0x3887b0

; FUNCTION 0x00388f4c, declared_size=80, range_size=80, mode=arm
; class-group: std::basic_istream<char, std::char_traits<char> >
; alias: _ZNSiD0Ev
; demangled: std::basic_istream<char, std::char_traits<char> >::~basic_istream()
; decoder-mode: arm
00388f4c  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
00388f50  3c 10 9f e5                                      ldr r1, [pc, #0x3c]
00388f54  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
00388f58  03 30 8f e0                                      add r3, pc, r3
00388f5c  01 10 93 e7                                      ldr r1, [r3, r1]
00388f60  02 20 93 e7                                      ldr r2, [r3, r2]
00388f64  10 40 2d e9                                      push {r4, lr}
00388f68  00 40 a0 e1                                      mov r4, r0
00388f6c  0c 10 81 e2                                      add r1, r1, #0xc
00388f70  08 20 82 e2                                      add r2, r2, #8
00388f74  08 10 80 e4                                      str r1, [r0], #8
00388f78  08 20 84 e5                                      str r2, [r4, #8]
00388f7c  bb ff 0d eb                                      bl #0x708e70
00388f80  04 00 a0 e1                                      mov r0, r4
00388f84  2d 1d fe eb                                      bl #0x310440
00388f88  04 00 a0 e1                                      mov r0, r4
00388f8c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00388f90  38 bb 60 00 f8 28 00 00 30 37 00 00              .byte 0x38, 0xbb, 0x60, 0x00, 0xf8, 0x28, 0x00, 0x00, 0x30, 0x37, 0x00, 0x00

; FUNCTION 0x00388f9c, declared_size=16, range_size=16, mode=arm
; class-group: std::basic_istream<char, std::char_traits<char> >
; alias: _ZTv0_n12_NSiD0Ev
; demangled: virtual thunk to std::basic_istream<char, std::char_traits<char> >::~basic_istream()
; decoder-mode: arm
00388f9c  00 30 90 e5                                      ldr r3, [r0]
00388fa0  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00388fa4  03 00 80 e0                                      add r0, r0, r3
00388fa8  e7 ff ff ea                                      b #0x388f4c

; FUNCTION 0x00518ec4, declared_size=192, range_size=192, mode=arm
; class-group: std::basic_istream<char, std::char_traits<char> >
; alias: _ZNSi3getEv
; demangled: std::basic_istream<char, std::char_traits<char> >::get()
; decoder-mode: arm
00518ec4  10 40 2d e9                                      push {r4, lr}
00518ec8  00 40 a0 e1                                      mov r4, r0
00518ecc  05 da f7 eb                                      bl #0x30f6e8
00518ed0  00 30 a0 e3                                      mov r3, #0
00518ed4  00 00 50 e3                                      cmp r0, #0
00518ed8  04 30 84 e5                                      str r3, [r4, #4]
00518edc  0d 00 00 1a                                      bne #0x518f18
00518ee0  00 30 94 e5                                      ldr r3, [r4]
00518ee4  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
00518ee8  00 00 84 e0                                      add r0, r4, r0
00518eec  48 30 90 e5                                      ldr r3, [r0, #0x48]
00518ef0  08 20 90 e5                                      ldr r2, [r0, #8]
00518ef4  00 00 53 e3                                      cmp r3, #0
00518ef8  06 30 82 e3                                      orr r3, r2, #6
00518efc  07 30 82 03                                      orreq r3, r2, #7
00518f00  14 20 90 e5                                      ldr r2, [r0, #0x14]
00518f04  08 30 80 e5                                      str r3, [r0, #8]
00518f08  02 00 13 e1                                      tst r3, r2
00518f0c  0f 00 00 1a                                      bne #0x518f50
00518f10  00 00 e0 e3                                      mvn r0, #0
00518f14  10 80 bd e8                                      pop {r4, pc}
00518f18  00 30 94 e5                                      ldr r3, [r4]
00518f1c  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00518f20  03 30 84 e0                                      add r3, r4, r3
00518f24  48 30 93 e5                                      ldr r3, [r3, #0x48]
00518f28  08 20 93 e5                                      ldr r2, [r3, #8]
00518f2c  0c 10 93 e5                                      ldr r1, [r3, #0xc]
00518f30  01 00 52 e1                                      cmp r2, r1
00518f34  08 00 00 2a                                      bhs #0x518f5c
00518f38  01 10 82 e2                                      add r1, r2, #1
00518f3c  08 10 83 e5                                      str r1, [r3, #8]
00518f40  00 00 d2 e5                                      ldrb r0, [r2]
00518f44  01 30 a0 e3                                      mov r3, #1
00518f48  04 30 84 e5                                      str r3, [r4, #4]
00518f4c  10 80 bd e8                                      pop {r4, pc}
00518f50  f2 bf 07 eb                                      bl #0x708f20
00518f54  00 00 e0 e3                                      mvn r0, #0
00518f58  10 80 bd e8                                      pop {r4, pc}
00518f5c  03 00 a0 e1                                      mov r0, r3
00518f60  00 30 93 e5                                      ldr r3, [r3]
00518f64  0f e0 a0 e1                                      mov lr, pc
00518f68  24 f0 93 e5                                      ldr pc, [r3, #0x24]
00518f6c  01 00 70 e3                                      cmn r0, #1
00518f70  f3 ff ff 1a                                      bne #0x518f44
00518f74  04 30 94 e5                                      ldr r3, [r4, #4]
00518f78  00 00 53 e3                                      cmp r3, #0
00518f7c  d7 ff ff 0a                                      beq #0x518ee0
00518f80  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00519314, declared_size=160, range_size=160, mode=arm
; class-group: std::basic_istream<char, std::char_traits<char> >
; alias: _ZNSi4peekEv
; demangled: std::basic_istream<char, std::char_traits<char> >::peek()
; decoder-mode: arm
00519314  00 30 a0 e3                                      mov r3, #0
00519318  70 40 2d e9                                      push {r4, r5, r6, lr}
0051931c  04 30 80 e5                                      str r3, [r0, #4]
00519320  00 40 a0 e1                                      mov r4, r0
00519324  ef d8 f7 eb                                      bl #0x30f6e8
00519328  00 00 50 e3                                      cmp r0, #0
0051932c  00 50 e0 03                                      mvneq r5, #0
00519330  08 00 00 0a                                      beq #0x519358
00519334  00 30 94 e5                                      ldr r3, [r4]
00519338  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0051933c  03 30 84 e0                                      add r3, r4, r3
00519340  48 30 93 e5                                      ldr r3, [r3, #0x48]
00519344  08 20 93 e5                                      ldr r2, [r3, #8]
00519348  0c 10 93 e5                                      ldr r1, [r3, #0xc]
0051934c  01 00 52 e1                                      cmp r2, r1
00519350  00 50 d2 35                                      ldrblo r5, [r2]
00519354  01 00 00 2a                                      bhs #0x519360
00519358  05 00 a0 e1                                      mov r0, r5
0051935c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00519360  03 00 a0 e1                                      mov r0, r3
00519364  00 30 93 e5                                      ldr r3, [r3]
00519368  0f e0 a0 e1                                      mov lr, pc
0051936c  20 f0 93 e5                                      ldr pc, [r3, #0x20]
00519370  01 00 70 e3                                      cmn r0, #1
00519374  00 50 a0 e1                                      mov r5, r0
00519378  f6 ff ff 1a                                      bne #0x519358
0051937c  00 30 94 e5                                      ldr r3, [r4]
00519380  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
00519384  00 00 84 e0                                      add r0, r4, r0
00519388  48 30 90 e5                                      ldr r3, [r0, #0x48]
0051938c  08 20 90 e5                                      ldr r2, [r0, #8]
00519390  00 00 53 e3                                      cmp r3, #0
00519394  02 30 82 e3                                      orr r3, r2, #2
00519398  03 30 82 03                                      orreq r3, r2, #3
0051939c  14 20 90 e5                                      ldr r2, [r0, #0x14]
005193a0  08 30 80 e5                                      str r3, [r0, #8]
005193a4  02 00 13 e1                                      tst r3, r2
005193a8  ea ff ff 0a                                      beq #0x519358
005193ac  db be 07 eb                                      bl #0x708f20
005193b0  e8 ff ff ea                                      b #0x519358

; FUNCTION 0x008b8350, declared_size=68, range_size=68, mode=thumb
; class-group: std::basic_istream<char, std::char_traits<char> >
; alias: _ZNSiC1EPSt15basic_streambufIcSt11char_traitsIcEE
; demangled: std::basic_istream<char, std::char_traits<char> >::basic_istream(std::basic_streambuf<char, std::char_traits<char> >*)
; decoder-mode: thumb
008b8350  f8 b5                                            push {r3, r4, r5, r6, r7, lr}
008b8352  05 1c                                            adds r5, r0, #0
008b8354  08 35                                            adds r5, #8
008b8356  04 1c                                            adds r4, r0, #0
008b8358  28 1c                                            adds r0, r5, #0
008b835a  0f 1c                                            adds r7, r1, #0
008b835c  0b 4e                                            ldr r6, [pc, #0x2c]
008b835e  ea f7 4d fb                                      bl #0x8a29fc
008b8362  00 23                                            movs r3, #0
008b8364  44 22                                            movs r2, #0x44
008b8366  ab 54                                            strb r3, [r5, r2]
008b8368  09 4a                                            ldr r2, [pc, #0x24]
008b836a  7e 44                                            add r6, pc
008b836c  ab 64                                            str r3, [r5, #0x48]
008b836e  b2 58                                            ldr r2, [r6, r2]
008b8370  eb 64                                            str r3, [r5, #0x4c]
008b8372  28 1c                                            adds r0, r5, #0
008b8374  11 1c                                            adds r1, r2, #0
008b8376  0c 31                                            adds r1, #0xc
008b8378  20 32                                            adds r2, #0x20
008b837a  21 60                                            str r1, [r4]
008b837c  a2 60                                            str r2, [r4, #8]
008b837e  39 1c                                            adds r1, r7, #0
008b8380  63 60                                            str r3, [r4, #4]
008b8382  6a f6 90 e6                                      blx #0x3230a4
008b8386  20 1c                                            adds r0, r4, #0
008b8388  f8 bd                                            pop {r3, r4, r5, r6, r7, pc}
008b838a  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008b838c  2a c7 0d 00 f8 28 00 00                          .byte 0x2a, 0xc7, 0x0d, 0x00, 0xf8, 0x28, 0x00, 0x00

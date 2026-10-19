; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0030f4f0, declared_size=108, range_size=108, mode=arm
; class-group: std::basic_ostream<char, std::char_traits<char> >
; alias: _ZNSo5flushEv
; demangled: std::basic_ostream<char, std::char_traits<char> >::flush()
; decoder-mode: arm
0030f4f0  10 40 2d e9                                      push {r4, lr}
0030f4f4  00 30 90 e5                                      ldr r3, [r0]
0030f4f8  00 40 a0 e1                                      mov r4, r0
0030f4fc  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0030f500  03 30 80 e0                                      add r3, r0, r3
0030f504  48 30 93 e5                                      ldr r3, [r3, #0x48]
0030f508  00 00 53 e3                                      cmp r3, #0
0030f50c  05 00 00 0a                                      beq #0x30f528
0030f510  03 00 a0 e1                                      mov r0, r3
0030f514  00 30 93 e5                                      ldr r3, [r3]
0030f518  0f e0 a0 e1                                      mov lr, pc
0030f51c  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0030f520  01 00 70 e3                                      cmn r0, #1
0030f524  01 00 00 0a                                      beq #0x30f530
0030f528  04 00 a0 e1                                      mov r0, r4
0030f52c  10 80 bd e8                                      pop {r4, pc}
0030f530  00 30 94 e5                                      ldr r3, [r4]
0030f534  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
0030f538  00 00 84 e0                                      add r0, r4, r0
0030f53c  08 30 90 e5                                      ldr r3, [r0, #8]
0030f540  14 20 90 e5                                      ldr r2, [r0, #0x14]
0030f544  01 30 83 e3                                      orr r3, r3, #1
0030f548  02 00 13 e1                                      tst r3, r2
0030f54c  08 30 80 e5                                      str r3, [r0, #8]
0030f550  f4 ff ff 0a                                      beq #0x30f528
0030f554  71 e6 0f eb                                      bl #0x708f20
0030f558  f2 ff ff ea                                      b #0x30f528

; FUNCTION 0x0030fc18, declared_size=440, range_size=440, mode=arm
; class-group: std::basic_ostream<char, std::char_traits<char> >
; alias: _ZNSo14_M_put_nowidenEPKc.clone.1
; demangled: std::basic_ostream<char, std::char_traits<char> >::_M_put_nowiden(char const*) [clone .clone.1]
; decoder-mode: arm
0030fc18  70 40 2d e9                                      push {r4, r5, r6, lr}
0030fc1c  00 40 a0 e1                                      mov r4, r0
0030fc20  4d fe ff eb                                      bl #0x30f55c
0030fc24  00 00 50 e3                                      cmp r0, #0
0030fc28  1d 00 00 0a                                      beq #0x30fca4
0030fc2c  00 30 94 e5                                      ldr r3, [r4]
0030fc30  0c 10 13 e5                                      ldr r1, [r3, #-0xc]
0030fc34  01 10 84 e0                                      add r1, r4, r1
0030fc38  1c 50 91 e5                                      ldr r5, [r1, #0x1c]
0030fc3c  01 00 55 e3                                      cmp r5, #1
0030fc40  1e 00 00 da                                      ble #0x30fcc0
0030fc44  04 20 91 e5                                      ldr r2, [r1, #4]
0030fc48  01 50 45 e2                                      sub r5, r5, #1
0030fc4c  07 20 02 e2                                      and r2, r2, #7
0030fc50  01 00 52 e3                                      cmp r2, #1
0030fc54  31 00 00 0a                                      beq #0x30fd20
0030fc58  48 30 91 e5                                      ldr r3, [r1, #0x48]
0030fc5c  05 20 a0 e1                                      mov r2, r5
0030fc60  d4 14 d1 e1                                      ldrsb r1, [r1, #0x44]
0030fc64  03 00 a0 e1                                      mov r0, r3
0030fc68  00 30 93 e5                                      ldr r3, [r3]
0030fc6c  0f e0 a0 e1                                      mov lr, pc
0030fc70  30 f0 93 e5                                      ldr pc, [r3, #0x30]
0030fc74  00 00 55 e1                                      cmp r5, r0
0030fc78  43 00 00 0a                                      beq #0x30fd8c
0030fc7c  00 30 94 e5                                      ldr r3, [r4]
0030fc80  00 20 a0 e3                                      mov r2, #0
0030fc84  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0030fc88  03 30 84 e0                                      add r3, r4, r3
0030fc8c  1c 20 83 e5                                      str r2, [r3, #0x1c]
0030fc90  00 30 94 e5                                      ldr r3, [r4]
0030fc94  04 10 a0 e3                                      mov r1, #4
0030fc98  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
0030fc9c  00 00 84 e0                                      add r0, r4, r0
0030fca0  ce fd ff eb                                      bl #0x30f3e0
0030fca4  00 30 94 e5                                      ldr r3, [r4]
0030fca8  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0030fcac  03 30 84 e0                                      add r3, r4, r3
0030fcb0  04 30 93 e5                                      ldr r3, [r3, #4]
0030fcb4  02 0a 13 e3                                      tst r3, #0x2000
0030fcb8  15 00 00 1a                                      bne #0x30fd14
0030fcbc  70 80 bd e8                                      pop {r4, r5, r6, pc}
0030fcc0  48 30 91 e5                                      ldr r3, [r1, #0x48]
0030fcc4  f8 10 9f e5                                      ldr r1, [pc, #0xf8]
0030fcc8  01 20 a0 e3                                      mov r2, #1
0030fccc  03 00 a0 e1                                      mov r0, r3
0030fcd0  01 10 8f e0                                      add r1, pc, r1
0030fcd4  00 30 93 e5                                      ldr r3, [r3]
0030fcd8  0f e0 a0 e1                                      mov lr, pc
0030fcdc  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
0030fce0  00 30 94 e5                                      ldr r3, [r4]
0030fce4  00 20 a0 e3                                      mov r2, #0
0030fce8  01 00 50 e3                                      cmp r0, #1
0030fcec  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0030fcf0  03 30 84 e0                                      add r3, r4, r3
0030fcf4  1c 20 83 e5                                      str r2, [r3, #0x1c]
0030fcf8  e4 ff ff 1a                                      bne #0x30fc90
0030fcfc  00 30 94 e5                                      ldr r3, [r4]
0030fd00  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0030fd04  03 30 84 e0                                      add r3, r4, r3
0030fd08  04 30 93 e5                                      ldr r3, [r3, #4]
0030fd0c  02 0a 13 e3                                      tst r3, #0x2000
0030fd10  e9 ff ff 0a                                      beq #0x30fcbc
0030fd14  04 00 a0 e1                                      mov r0, r4
0030fd18  70 40 bd e8                                      pop {r4, r5, r6, lr}
0030fd1c  f3 fd ff ea                                      b #0x30f4f0
0030fd20  48 30 91 e5                                      ldr r3, [r1, #0x48]
0030fd24  9c 10 9f e5                                      ldr r1, [pc, #0x9c]
0030fd28  03 00 a0 e1                                      mov r0, r3
0030fd2c  01 10 8f e0                                      add r1, pc, r1
0030fd30  00 30 93 e5                                      ldr r3, [r3]
0030fd34  0f e0 a0 e1                                      mov lr, pc
0030fd38  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
0030fd3c  01 00 50 e3                                      cmp r0, #1
0030fd40  cd ff ff 1a                                      bne #0x30fc7c
0030fd44  00 30 94 e5                                      ldr r3, [r4]
0030fd48  05 20 a0 e1                                      mov r2, r5
0030fd4c  0c 10 13 e5                                      ldr r1, [r3, #-0xc]
0030fd50  01 10 84 e0                                      add r1, r4, r1
0030fd54  48 30 91 e5                                      ldr r3, [r1, #0x48]
0030fd58  d4 14 d1 e1                                      ldrsb r1, [r1, #0x44]
0030fd5c  03 00 a0 e1                                      mov r0, r3
0030fd60  00 30 93 e5                                      ldr r3, [r3]
0030fd64  0f e0 a0 e1                                      mov lr, pc
0030fd68  30 f0 93 e5                                      ldr pc, [r3, #0x30]
0030fd6c  00 00 55 e1                                      cmp r5, r0
0030fd70  c1 ff ff 1a                                      bne #0x30fc7c
0030fd74  00 30 94 e5                                      ldr r3, [r4]
0030fd78  00 20 a0 e3                                      mov r2, #0
0030fd7c  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0030fd80  03 30 84 e0                                      add r3, r4, r3
0030fd84  1c 20 83 e5                                      str r2, [r3, #0x1c]
0030fd88  c5 ff ff ea                                      b #0x30fca4
0030fd8c  00 30 94 e5                                      ldr r3, [r4]
0030fd90  34 10 9f e5                                      ldr r1, [pc, #0x34]
0030fd94  01 20 a0 e3                                      mov r2, #1
0030fd98  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0030fd9c  01 10 8f e0                                      add r1, pc, r1
0030fda0  03 30 84 e0                                      add r3, r4, r3
0030fda4  48 30 93 e5                                      ldr r3, [r3, #0x48]
0030fda8  03 00 a0 e1                                      mov r0, r3
0030fdac  00 30 93 e5                                      ldr r3, [r3]
0030fdb0  0f e0 a0 e1                                      mov lr, pc
0030fdb4  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
0030fdb8  01 00 50 e3                                      cmp r0, #1
0030fdbc  ae ff ff 1a                                      bne #0x30fc7c
0030fdc0  eb ff ff ea                                      b #0x30fd74
; mapping-symbol data/literal pool
0030fdc4  f0 e6 5a 00 94 e6 5a 00 24 e6 5a 00              .byte 0xf0, 0xe6, 0x5a, 0x00, 0x94, 0xe6, 0x5a, 0x00, 0x24, 0xe6, 0x5a, 0x00

; FUNCTION 0x0030ff8c, declared_size=492, range_size=492, mode=arm
; class-group: std::basic_ostream<char, std::char_traits<char> >
; alias: _ZNSo11_M_put_charEc
; demangled: std::basic_ostream<char, std::char_traits<char> >::_M_put_char(char)
; decoder-mode: arm
0030ff8c  70 40 2d e9                                      push {r4, r5, r6, lr}
0030ff90  01 50 a0 e1                                      mov r5, r1
0030ff94  00 40 a0 e1                                      mov r4, r0
0030ff98  6f fd ff eb                                      bl #0x30f55c
0030ff9c  00 00 50 e3                                      cmp r0, #0
0030ffa0  22 00 00 0a                                      beq #0x310030
0030ffa4  00 30 94 e5                                      ldr r3, [r4]
0030ffa8  0c 20 13 e5                                      ldr r2, [r3, #-0xc]
0030ffac  02 20 84 e0                                      add r2, r4, r2
0030ffb0  1c 60 92 e5                                      ldr r6, [r2, #0x1c]
0030ffb4  00 00 56 e3                                      cmp r6, #0
0030ffb8  26 00 00 da                                      ble #0x310058
0030ffbc  01 60 56 e2                                      subs r6, r6, #1
0030ffc0  24 00 00 0a                                      beq #0x310058
0030ffc4  04 30 92 e5                                      ldr r3, [r2, #4]
0030ffc8  07 30 03 e2                                      and r3, r3, #7
0030ffcc  01 00 53 e3                                      cmp r3, #1
0030ffd0  2f 00 00 0a                                      beq #0x310094
0030ffd4  48 30 92 e5                                      ldr r3, [r2, #0x48]
0030ffd8  d4 14 d2 e1                                      ldrsb r1, [r2, #0x44]
0030ffdc  06 20 a0 e1                                      mov r2, r6
0030ffe0  03 00 a0 e1                                      mov r0, r3
0030ffe4  00 30 93 e5                                      ldr r3, [r3]
0030ffe8  0f e0 a0 e1                                      mov lr, pc
0030ffec  30 f0 93 e5                                      ldr pc, [r3, #0x30]
0030fff0  00 00 56 e1                                      cmp r6, r0
0030fff4  4f 00 00 0a                                      beq #0x310138
0030fff8  00 30 94 e5                                      ldr r3, [r4]
0030fffc  00 20 a0 e3                                      mov r2, #0
00310000  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00310004  03 30 84 e0                                      add r3, r4, r3
00310008  1c 20 83 e5                                      str r2, [r3, #0x1c]
0031000c  00 30 94 e5                                      ldr r3, [r4]
00310010  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
00310014  00 00 84 e0                                      add r0, r4, r0
00310018  08 30 90 e5                                      ldr r3, [r0, #8]
0031001c  14 20 90 e5                                      ldr r2, [r0, #0x14]
00310020  01 30 83 e3                                      orr r3, r3, #1
00310024  02 00 13 e1                                      tst r3, r2
00310028  08 30 80 e5                                      str r3, [r0, #8]
0031002c  16 00 00 1a                                      bne #0x31008c
00310030  00 30 94 e5                                      ldr r3, [r4]
00310034  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00310038  03 30 84 e0                                      add r3, r4, r3
0031003c  04 30 93 e5                                      ldr r3, [r3, #4]
00310040  02 0a 13 e3                                      tst r3, #0x2000
00310044  00 00 00 1a                                      bne #0x31004c
00310048  70 80 bd e8                                      pop {r4, r5, r6, pc}
0031004c  04 00 a0 e1                                      mov r0, r4
00310050  70 40 bd e8                                      pop {r4, r5, r6, lr}
00310054  25 fd ff ea                                      b #0x30f4f0
00310058  48 30 92 e5                                      ldr r3, [r2, #0x48]
0031005c  14 20 93 e5                                      ldr r2, [r3, #0x14]
00310060  18 10 93 e5                                      ldr r1, [r3, #0x18]
00310064  01 00 52 e1                                      cmp r2, r1
00310068  1d 00 00 2a                                      bhs #0x3100e4
0031006c  01 50 c2 e4                                      strb r5, [r2], #1
00310070  14 20 83 e5                                      str r2, [r3, #0x14]
00310074  00 30 94 e5                                      ldr r3, [r4]
00310078  00 20 a0 e3                                      mov r2, #0
0031007c  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00310080  03 30 84 e0                                      add r3, r4, r3
00310084  1c 20 83 e5                                      str r2, [r3, #0x1c]
00310088  e8 ff ff ea                                      b #0x310030
0031008c  a3 e3 0f eb                                      bl #0x708f20
00310090  e6 ff ff ea                                      b #0x310030
00310094  48 30 92 e5                                      ldr r3, [r2, #0x48]
00310098  14 20 93 e5                                      ldr r2, [r3, #0x14]
0031009c  18 10 93 e5                                      ldr r1, [r3, #0x18]
003100a0  01 00 52 e1                                      cmp r2, r1
003100a4  01 50 c2 34                                      strblo r5, [r2], #1
003100a8  14 20 83 35                                      strlo r2, [r3, #0x14]
003100ac  19 00 00 2a                                      bhs #0x310118
003100b0  00 30 94 e5                                      ldr r3, [r4]
003100b4  06 20 a0 e1                                      mov r2, r6
003100b8  0c 10 13 e5                                      ldr r1, [r3, #-0xc]
003100bc  01 10 84 e0                                      add r1, r4, r1
003100c0  48 30 91 e5                                      ldr r3, [r1, #0x48]
003100c4  d4 14 d1 e1                                      ldrsb r1, [r1, #0x44]
003100c8  03 00 a0 e1                                      mov r0, r3
003100cc  00 30 93 e5                                      ldr r3, [r3]
003100d0  0f e0 a0 e1                                      mov lr, pc
003100d4  30 f0 93 e5                                      ldr pc, [r3, #0x30]
003100d8  00 00 56 e1                                      cmp r6, r0
003100dc  c5 ff ff 1a                                      bne #0x30fff8
003100e0  e3 ff ff ea                                      b #0x310074
003100e4  03 00 a0 e1                                      mov r0, r3
003100e8  75 10 ef e6                                      uxtb r1, r5
003100ec  00 30 93 e5                                      ldr r3, [r3]
003100f0  0f e0 a0 e1                                      mov lr, pc
003100f4  34 f0 93 e5                                      ldr pc, [r3, #0x34]
003100f8  00 30 94 e5                                      ldr r3, [r4]
003100fc  00 20 a0 e3                                      mov r2, #0
00310100  01 00 70 e3                                      cmn r0, #1
00310104  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00310108  03 30 84 e0                                      add r3, r4, r3
0031010c  1c 20 83 e5                                      str r2, [r3, #0x1c]
00310110  c6 ff ff 1a                                      bne #0x310030
00310114  bc ff ff ea                                      b #0x31000c
00310118  03 00 a0 e1                                      mov r0, r3
0031011c  75 10 ef e6                                      uxtb r1, r5
00310120  00 30 93 e5                                      ldr r3, [r3]
00310124  0f e0 a0 e1                                      mov lr, pc
00310128  34 f0 93 e5                                      ldr pc, [r3, #0x34]
0031012c  01 00 70 e3                                      cmn r0, #1
00310130  b0 ff ff 0a                                      beq #0x30fff8
00310134  dd ff ff ea                                      b #0x3100b0
00310138  00 30 94 e5                                      ldr r3, [r4]
0031013c  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00310140  03 30 84 e0                                      add r3, r4, r3
00310144  48 30 93 e5                                      ldr r3, [r3, #0x48]
00310148  14 20 93 e5                                      ldr r2, [r3, #0x14]
0031014c  18 10 93 e5                                      ldr r1, [r3, #0x18]
00310150  01 00 52 e1                                      cmp r2, r1
00310154  c4 ff ff 3a                                      blo #0x31006c
00310158  03 00 a0 e1                                      mov r0, r3
0031015c  75 10 ef e6                                      uxtb r1, r5
00310160  00 30 93 e5                                      ldr r3, [r3]
00310164  0f e0 a0 e1                                      mov lr, pc
00310168  34 f0 93 e5                                      ldr pc, [r3, #0x34]
0031016c  01 00 70 e3                                      cmn r0, #1
00310170  a0 ff ff 0a                                      beq #0x30fff8
00310174  be ff ff ea                                      b #0x310074

; FUNCTION 0x00313198, declared_size=456, range_size=456, mode=arm
; class-group: std::basic_ostream<char, std::char_traits<char> >
; alias: _ZNSo14_M_put_nowidenEPKc
; demangled: std::basic_ostream<char, std::char_traits<char> >::_M_put_nowiden(char const*)
; decoder-mode: arm
00313198  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0031319c  01 60 a0 e1                                      mov r6, r1
003131a0  00 40 a0 e1                                      mov r4, r0
003131a4  ec f0 ff eb                                      bl #0x30f55c
003131a8  00 00 50 e3                                      cmp r0, #0
003131ac  28 00 00 0a                                      beq #0x313254
003131b0  06 00 a0 e1                                      mov r0, r6
003131b4  26 eb ff eb                                      bl #0x30de54
003131b8  00 30 94 e5                                      ldr r3, [r4]
003131bc  00 50 a0 e1                                      mov r5, r0
003131c0  0c 20 13 e5                                      ldr r2, [r3, #-0xc]
003131c4  02 20 84 e0                                      add r2, r4, r2
003131c8  1c 70 92 e5                                      ldr r7, [r2, #0x1c]
003131cc  07 00 50 e1                                      cmp r0, r7
003131d0  29 00 00 aa                                      bge #0x31327c
003131d4  00 70 57 e0                                      subs r7, r7, r0
003131d8  27 00 00 0a                                      beq #0x31327c
003131dc  04 30 92 e5                                      ldr r3, [r2, #4]
003131e0  07 30 03 e2                                      and r3, r3, #7
003131e4  01 00 53 e3                                      cmp r3, #1
003131e8  34 00 00 0a                                      beq #0x3132c0
003131ec  48 30 92 e5                                      ldr r3, [r2, #0x48]
003131f0  d4 14 d2 e1                                      ldrsb r1, [r2, #0x44]
003131f4  07 20 a0 e1                                      mov r2, r7
003131f8  03 00 a0 e1                                      mov r0, r3
003131fc  00 30 93 e5                                      ldr r3, [r3]
00313200  0f e0 a0 e1                                      mov lr, pc
00313204  30 f0 93 e5                                      ldr pc, [r3, #0x30]
00313208  00 00 57 e1                                      cmp r7, r0
0031320c  46 00 00 0a                                      beq #0x31332c
00313210  00 30 94 e5                                      ldr r3, [r4]
00313214  00 20 a0 e3                                      mov r2, #0
00313218  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0031321c  03 30 84 e0                                      add r3, r4, r3
00313220  1c 20 83 e5                                      str r2, [r3, #0x1c]
00313224  00 30 94 e5                                      ldr r3, [r4]
00313228  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
0031322c  00 00 84 e0                                      add r0, r4, r0
00313230  48 30 90 e5                                      ldr r3, [r0, #0x48]
00313234  08 20 90 e5                                      ldr r2, [r0, #8]
00313238  00 00 53 e3                                      cmp r3, #0
0031323c  04 30 82 e3                                      orr r3, r2, #4
00313240  05 30 82 03                                      orreq r3, r2, #5
00313244  14 20 90 e5                                      ldr r2, [r0, #0x14]
00313248  08 30 80 e5                                      str r3, [r0, #8]
0031324c  02 00 13 e1                                      tst r3, r2
00313250  18 00 00 1a                                      bne #0x3132b8
00313254  00 30 94 e5                                      ldr r3, [r4]
00313258  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0031325c  03 30 84 e0                                      add r3, r4, r3
00313260  04 30 93 e5                                      ldr r3, [r3, #4]
00313264  02 0a 13 e3                                      tst r3, #0x2000
00313268  00 00 00 1a                                      bne #0x313270
0031326c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00313270  04 00 a0 e1                                      mov r0, r4
00313274  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00313278  9c f0 ff ea                                      b #0x30f4f0
0031327c  48 30 92 e5                                      ldr r3, [r2, #0x48]
00313280  06 10 a0 e1                                      mov r1, r6
00313284  05 20 a0 e1                                      mov r2, r5
00313288  03 00 a0 e1                                      mov r0, r3
0031328c  00 30 93 e5                                      ldr r3, [r3]
00313290  0f e0 a0 e1                                      mov lr, pc
00313294  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
00313298  00 30 94 e5                                      ldr r3, [r4]
0031329c  00 20 a0 e3                                      mov r2, #0
003132a0  00 00 55 e1                                      cmp r5, r0
003132a4  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
003132a8  03 30 84 e0                                      add r3, r4, r3
003132ac  1c 20 83 e5                                      str r2, [r3, #0x1c]
003132b0  e7 ff ff 0a                                      beq #0x313254
003132b4  da ff ff ea                                      b #0x313224
003132b8  18 d7 0f eb                                      bl #0x708f20
003132bc  e4 ff ff ea                                      b #0x313254
003132c0  48 30 92 e5                                      ldr r3, [r2, #0x48]
003132c4  06 10 a0 e1                                      mov r1, r6
003132c8  00 20 a0 e1                                      mov r2, r0
003132cc  03 00 a0 e1                                      mov r0, r3
003132d0  00 30 93 e5                                      ldr r3, [r3]
003132d4  0f e0 a0 e1                                      mov lr, pc
003132d8  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
003132dc  00 00 55 e1                                      cmp r5, r0
003132e0  ca ff ff 1a                                      bne #0x313210
003132e4  00 30 94 e5                                      ldr r3, [r4]
003132e8  07 20 a0 e1                                      mov r2, r7
003132ec  0c 10 13 e5                                      ldr r1, [r3, #-0xc]
003132f0  01 10 84 e0                                      add r1, r4, r1
003132f4  48 30 91 e5                                      ldr r3, [r1, #0x48]
003132f8  d4 14 d1 e1                                      ldrsb r1, [r1, #0x44]
003132fc  03 00 a0 e1                                      mov r0, r3
00313300  00 30 93 e5                                      ldr r3, [r3]
00313304  0f e0 a0 e1                                      mov lr, pc
00313308  30 f0 93 e5                                      ldr pc, [r3, #0x30]
0031330c  00 00 57 e1                                      cmp r7, r0
00313310  be ff ff 1a                                      bne #0x313210
00313314  00 30 94 e5                                      ldr r3, [r4]
00313318  00 20 a0 e3                                      mov r2, #0
0031331c  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00313320  03 30 84 e0                                      add r3, r4, r3
00313324  1c 20 83 e5                                      str r2, [r3, #0x1c]
00313328  c9 ff ff ea                                      b #0x313254
0031332c  00 30 94 e5                                      ldr r3, [r4]
00313330  06 10 a0 e1                                      mov r1, r6
00313334  05 20 a0 e1                                      mov r2, r5
00313338  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0031333c  03 30 84 e0                                      add r3, r4, r3
00313340  48 30 93 e5                                      ldr r3, [r3, #0x48]
00313344  03 00 a0 e1                                      mov r0, r3
00313348  00 30 93 e5                                      ldr r3, [r3]
0031334c  0f e0 a0 e1                                      mov lr, pc
00313350  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
00313354  00 00 55 e1                                      cmp r5, r0
00313358  ac ff ff 1a                                      bne #0x313210
0031335c  ec ff ff ea                                      b #0x313314

; FUNCTION 0x00322dc0, declared_size=72, range_size=72, mode=arm
; class-group: std::basic_ostream<char, std::char_traits<char> >
; alias: _ZNSoD1Ev
; demangled: std::basic_ostream<char, std::char_traits<char> >::~basic_ostream()
; decoder-mode: arm
00322dc0  34 30 9f e5                                      ldr r3, [pc, #0x34]
00322dc4  34 10 9f e5                                      ldr r1, [pc, #0x34]
00322dc8  34 20 9f e5                                      ldr r2, [pc, #0x34]
00322dcc  03 30 8f e0                                      add r3, pc, r3
00322dd0  01 10 93 e7                                      ldr r1, [r3, r1]
00322dd4  02 20 93 e7                                      ldr r2, [r3, r2]
00322dd8  10 40 2d e9                                      push {r4, lr}
00322ddc  00 40 a0 e1                                      mov r4, r0
00322de0  0c 10 81 e2                                      add r1, r1, #0xc
00322de4  08 20 82 e2                                      add r2, r2, #8
00322de8  04 10 80 e4                                      str r1, [r0], #4
00322dec  04 20 84 e5                                      str r2, [r4, #4]
00322df0  1e 98 0f eb                                      bl #0x708e70
00322df4  04 00 a0 e1                                      mov r0, r4
00322df8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00322dfc  c4 1c 67 00 d0 17 00 00 30 37 00 00              .byte 0xc4, 0x1c, 0x67, 0x00, 0xd0, 0x17, 0x00, 0x00, 0x30, 0x37, 0x00, 0x00

; FUNCTION 0x00322e08, declared_size=16, range_size=16, mode=arm
; class-group: std::basic_ostream<char, std::char_traits<char> >
; alias: _ZTv0_n12_NSoD1Ev
; demangled: virtual thunk to std::basic_ostream<char, std::char_traits<char> >::~basic_ostream()
; decoder-mode: arm
00322e08  00 30 90 e5                                      ldr r3, [r0]
00322e0c  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00322e10  03 00 80 e0                                      add r0, r0, r3
00322e14  e9 ff ff ea                                      b #0x322dc0

; FUNCTION 0x00322e18, declared_size=28, range_size=28, mode=arm
; class-group: std::basic_ostream<char, std::char_traits<char> >
; alias: _ZNSoD0Ev
; demangled: std::basic_ostream<char, std::char_traits<char> >::~basic_ostream()
; decoder-mode: arm
00322e18  10 40 2d e9                                      push {r4, lr}
00322e1c  00 40 a0 e1                                      mov r4, r0
00322e20  e6 ff ff eb                                      bl #0x322dc0
00322e24  04 00 a0 e1                                      mov r0, r4
00322e28  84 b5 ff eb                                      bl #0x310440
00322e2c  04 00 a0 e1                                      mov r0, r4
00322e30  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00322e34, declared_size=16, range_size=16, mode=arm
; class-group: std::basic_ostream<char, std::char_traits<char> >
; alias: _ZTv0_n12_NSoD0Ev
; demangled: virtual thunk to std::basic_ostream<char, std::char_traits<char> >::~basic_ostream()
; decoder-mode: arm
00322e34  00 30 90 e5                                      ldr r3, [r0]
00322e38  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00322e3c  03 00 80 e0                                      add r0, r0, r3
00322e40  f4 ff ff ea                                      b #0x322e18

; FUNCTION 0x008b8394, declared_size=64, range_size=64, mode=thumb
; class-group: std::basic_ostream<char, std::char_traits<char> >
; alias: _ZNSoC1EPSt15basic_streambufIcSt11char_traitsIcEE
; demangled: std::basic_ostream<char, std::char_traits<char> >::basic_ostream(std::basic_streambuf<char, std::char_traits<char> >*)
; decoder-mode: thumb
008b8394  f8 b5                                            push {r3, r4, r5, r6, r7, lr}
008b8396  04 1d                                            adds r4, r0, #4
008b8398  05 1c                                            adds r5, r0, #0
008b839a  20 1c                                            adds r0, r4, #0
008b839c  0f 1c                                            adds r7, r1, #0
008b839e  0b 4e                                            ldr r6, [pc, #0x2c]
008b83a0  ea f7 2c fb                                      bl #0x8a29fc
008b83a4  00 23                                            movs r3, #0
008b83a6  44 22                                            movs r2, #0x44
008b83a8  a3 54                                            strb r3, [r4, r2]
008b83aa  a3 64                                            str r3, [r4, #0x48]
008b83ac  e3 64                                            str r3, [r4, #0x4c]
008b83ae  08 4b                                            ldr r3, [pc, #0x20]
008b83b0  7e 44                                            add r6, pc
008b83b2  20 1c                                            adds r0, r4, #0
008b83b4  f3 58                                            ldr r3, [r6, r3]
008b83b6  39 1c                                            adds r1, r7, #0
008b83b8  1a 1c                                            adds r2, r3, #0
008b83ba  0c 32                                            adds r2, #0xc
008b83bc  20 33                                            adds r3, #0x20
008b83be  2a 60                                            str r2, [r5]
008b83c0  6b 60                                            str r3, [r5, #4]
008b83c2  6a f6 70 e6                                      blx #0x3230a4
008b83c6  28 1c                                            adds r0, r5, #0
008b83c8  f8 bd                                            pop {r3, r4, r5, r6, r7, pc}
008b83ca  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008b83cc  e4 c6 0d 00 d0 17 00 00                          .byte 0xe4, 0xc6, 0x0d, 0x00, 0xd0, 0x17, 0x00, 0x00

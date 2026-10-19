; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0031f824, declared_size=4, range_size=4, mode=arm
; class-group: std::basic_streambuf<char, std::char_traits<char> >
; alias: _ZNSt15basic_streambufIcSt11char_traitsIcEE5imbueERKSt6locale
; demangled: std::basic_streambuf<char, std::char_traits<char> >::imbue(std::locale const&)
; decoder-mode: arm
0031f824  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031f828, declared_size=8, range_size=8, mode=arm
; class-group: std::basic_streambuf<char, std::char_traits<char> >
; alias: _ZNSt15basic_streambufIcSt11char_traitsIcEE4syncEv
; demangled: std::basic_streambuf<char, std::char_traits<char> >::sync()
; decoder-mode: arm
0031f828  00 00 a0 e3                                      mov r0, #0
0031f82c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031f830, declared_size=8, range_size=8, mode=arm
; class-group: std::basic_streambuf<char, std::char_traits<char> >
; alias: _ZNSt15basic_streambufIcSt11char_traitsIcEE8overflowEi
; demangled: std::basic_streambuf<char, std::char_traits<char> >::overflow(int)
; decoder-mode: arm
0031f830  00 00 e0 e3                                      mvn r0, #0
0031f834  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031fa68, declared_size=8, range_size=8, mode=arm
; class-group: std::basic_streambuf<char, std::char_traits<char> >
; alias: _ZNSt15basic_streambufIcSt11char_traitsIcEE9showmanycEv
; demangled: std::basic_streambuf<char, std::char_traits<char> >::showmanyc()
; decoder-mode: arm
0031fa68  00 00 a0 e3                                      mov r0, #0
0031fa6c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031fb14, declared_size=4, range_size=4, mode=arm
; class-group: std::basic_streambuf<char, std::char_traits<char> >
; alias: _ZNSt15basic_streambufIcSt11char_traitsIcEE6setbufEPci
; demangled: std::basic_streambuf<char, std::char_traits<char> >::setbuf(char*, int)
; decoder-mode: arm
0031fb14  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031fb18, declared_size=20, range_size=20, mode=arm
; class-group: std::basic_streambuf<char, std::char_traits<char> >
; alias: _ZNSt15basic_streambufIcSt11char_traitsIcEE7seekoffElii
; demangled: std::basic_streambuf<char, std::char_traits<char> >::seekoff(long, int, int)
; decoder-mode: arm
0031fb18  00 20 a0 e3                                      mov r2, #0
0031fb1c  04 20 80 e5                                      str r2, [r0, #4]
0031fb20  00 20 e0 e3                                      mvn r2, #0
0031fb24  00 20 80 e5                                      str r2, [r0]
0031fb28  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031fb2c, declared_size=28, range_size=28, mode=arm
; class-group: std::basic_streambuf<char, std::char_traits<char> >
; alias: _ZNSt15basic_streambufIcSt11char_traitsIcEE7seekposESt4fposI9mbstate_tEi
; demangled: std::basic_streambuf<char, std::char_traits<char> >::seekpos(std::fpos<mbstate_t>, int)
; decoder-mode: arm
0031fb2c  00 20 a0 e3                                      mov r2, #0
0031fb30  04 20 80 e5                                      str r2, [r0, #4]
0031fb34  00 20 e0 e3                                      mvn r2, #0
0031fb38  08 d0 4d e2                                      sub sp, sp, #8
0031fb3c  00 20 80 e5                                      str r2, [r0]
0031fb40  08 d0 8d e2                                      add sp, sp, #8
0031fb44  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031fb48, declared_size=8, range_size=8, mode=arm
; class-group: std::basic_streambuf<char, std::char_traits<char> >
; alias: _ZNSt15basic_streambufIcSt11char_traitsIcEE9underflowEv
; demangled: std::basic_streambuf<char, std::char_traits<char> >::underflow()
; decoder-mode: arm
0031fb48  00 00 e0 e3                                      mvn r0, #0
0031fb4c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031fb50, declared_size=44, range_size=44, mode=arm
; class-group: std::basic_streambuf<char, std::char_traits<char> >
; alias: _ZNSt15basic_streambufIcSt11char_traitsIcEE5uflowEv
; demangled: std::basic_streambuf<char, std::char_traits<char> >::uflow()
; decoder-mode: arm
0031fb50  10 40 2d e9                                      push {r4, lr}
0031fb54  00 30 90 e5                                      ldr r3, [r0]
0031fb58  00 40 a0 e1                                      mov r4, r0
0031fb5c  0f e0 a0 e1                                      mov lr, pc
0031fb60  20 f0 93 e5                                      ldr pc, [r3, #0x20]
0031fb64  01 00 70 e3                                      cmn r0, #1
0031fb68  08 30 94 15                                      ldrne r3, [r4, #8]
0031fb6c  01 20 83 12                                      addne r2, r3, #1
0031fb70  08 20 84 15                                      strne r2, [r4, #8]
0031fb74  00 00 d3 15                                      ldrbne r0, [r3]
0031fb78  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0031fb7c, declared_size=8, range_size=8, mode=arm
; class-group: std::basic_streambuf<char, std::char_traits<char> >
; alias: _ZNSt15basic_streambufIcSt11char_traitsIcEE9pbackfailEi
; demangled: std::basic_streambuf<char, std::char_traits<char> >::pbackfail(int)
; decoder-mode: arm
0031fb7c  00 00 e0 e3                                      mvn r0, #0
0031fb80  1e ff 2f e1                                      bx lr

; FUNCTION 0x00320148, declared_size=164, range_size=164, mode=arm
; class-group: std::basic_streambuf<char, std::char_traits<char> >
; alias: _ZNSt15basic_streambufIcSt11char_traitsIcEE6xsgetnEPci
; demangled: std::basic_streambuf<char, std::char_traits<char> >::xsgetn(char*, int)
; decoder-mode: arm
00320148  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0032014c  00 80 52 e2                                      subs r8, r2, #0
00320150  00 50 a0 e1                                      mov r5, r0
00320154  01 70 a0 e1                                      mov r7, r1
00320158  00 40 a0 d3                                      movle r4, #0
0032015c  1b 00 00 da                                      ble #0x3201d0
00320160  00 40 a0 e3                                      mov r4, #0
00320164  08 00 00 ea                                      b #0x32018c
00320168  00 30 95 e5                                      ldr r3, [r5]
0032016c  0f e0 a0 e1                                      mov lr, pc
00320170  24 f0 93 e5                                      ldr pc, [r3, #0x24]
00320174  01 00 70 e3                                      cmn r0, #1
00320178  14 00 00 0a                                      beq #0x3201d0
0032017c  01 40 84 e2                                      add r4, r4, #1
00320180  04 00 58 e1                                      cmp r8, r4
00320184  01 00 c7 e4                                      strb r0, [r7], #1
00320188  10 00 00 da                                      ble #0x3201d0
0032018c  08 10 95 e5                                      ldr r1, [r5, #8]
00320190  0c 30 95 e5                                      ldr r3, [r5, #0xc]
00320194  08 60 64 e0                                      rsb r6, r4, r8
00320198  05 00 a0 e1                                      mov r0, r5
0032019c  03 00 51 e1                                      cmp r1, r3
003201a0  03 20 61 e0                                      rsb r2, r1, r3
003201a4  ef ff ff 2a                                      bhs #0x320168
003201a8  02 00 56 e1                                      cmp r6, r2
003201ac  02 60 a0 21                                      movhs r6, r2
003201b0  00 00 56 e3                                      cmp r6, #0
003201b4  07 00 00 1a                                      bne #0x3201d8
003201b8  04 40 86 e0                                      add r4, r6, r4
003201bc  06 70 87 e0                                      add r7, r7, r6
003201c0  04 00 58 e1                                      cmp r8, r4
003201c4  06 60 81 e0                                      add r6, r1, r6
003201c8  08 60 85 e5                                      str r6, [r5, #8]
003201cc  ee ff ff ca                                      bgt #0x32018c
003201d0  04 00 a0 e1                                      mov r0, r4
003201d4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003201d8  07 00 a0 e1                                      mov r0, r7
003201dc  06 20 a0 e1                                      mov r2, r6
003201e0  a0 b9 ff eb                                      bl #0x30e868
003201e4  08 10 95 e5                                      ldr r1, [r5, #8]
003201e8  f2 ff ff ea                                      b #0x3201b8

; FUNCTION 0x003201ec, declared_size=168, range_size=168, mode=arm
; class-group: std::basic_streambuf<char, std::char_traits<char> >
; alias: _ZNSt15basic_streambufIcSt11char_traitsIcEE6xsputnEPKci
; demangled: std::basic_streambuf<char, std::char_traits<char> >::xsputn(char const*, int)
; decoder-mode: arm
003201ec  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003201f0  00 80 52 e2                                      subs r8, r2, #0
003201f4  00 60 a0 e1                                      mov r6, r0
003201f8  01 70 a0 e1                                      mov r7, r1
003201fc  00 40 a0 d3                                      movle r4, #0
00320200  1c 00 00 da                                      ble #0x320278
00320204  00 40 a0 e3                                      mov r4, #0
00320208  09 00 00 ea                                      b #0x320234
0032020c  02 00 55 e1                                      cmp r5, r2
00320210  02 50 a0 21                                      movhs r5, r2
00320214  00 00 55 e3                                      cmp r5, #0
00320218  18 00 00 1a                                      bne #0x320280
0032021c  04 40 85 e0                                      add r4, r5, r4
00320220  05 70 87 e0                                      add r7, r7, r5
00320224  04 00 58 e1                                      cmp r8, r4
00320228  05 50 80 e0                                      add r5, r0, r5
0032022c  14 50 86 e5                                      str r5, [r6, #0x14]
00320230  10 00 00 da                                      ble #0x320278
00320234  14 00 96 e5                                      ldr r0, [r6, #0x14]
00320238  18 30 96 e5                                      ldr r3, [r6, #0x18]
0032023c  08 50 64 e0                                      rsb r5, r4, r8
00320240  03 00 50 e1                                      cmp r0, r3
00320244  03 20 60 e0                                      rsb r2, r0, r3
00320248  ef ff ff 3a                                      blo #0x32020c
0032024c  00 10 d7 e5                                      ldrb r1, [r7]
00320250  00 30 96 e5                                      ldr r3, [r6]
00320254  06 00 a0 e1                                      mov r0, r6
00320258  0f e0 a0 e1                                      mov lr, pc
0032025c  34 f0 93 e5                                      ldr pc, [r3, #0x34]
00320260  01 00 70 e3                                      cmn r0, #1
00320264  03 00 00 0a                                      beq #0x320278
00320268  01 40 84 e2                                      add r4, r4, #1
0032026c  04 00 58 e1                                      cmp r8, r4
00320270  01 70 87 e2                                      add r7, r7, #1
00320274  ee ff ff ca                                      bgt #0x320234
00320278  04 00 a0 e1                                      mov r0, r4
0032027c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00320280  07 10 a0 e1                                      mov r1, r7
00320284  05 20 a0 e1                                      mov r2, r5
00320288  76 b9 ff eb                                      bl #0x30e868
0032028c  14 00 96 e5                                      ldr r0, [r6, #0x14]
00320290  e1 ff ff ea                                      b #0x32021c

; FUNCTION 0x00322b2c, declared_size=156, range_size=156, mode=arm
; class-group: std::basic_streambuf<char, std::char_traits<char> >
; alias: _ZNSt15basic_streambufIcSt11char_traitsIcEE10_M_xsputncEci
; demangled: std::basic_streambuf<char, std::char_traits<char> >::_M_xsputnc(char, int)
; decoder-mode: arm
00322b2c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00322b30  00 70 52 e2                                      subs r7, r2, #0
00322b34  00 50 a0 e1                                      mov r5, r0
00322b38  01 80 a0 e1                                      mov r8, r1
00322b3c  00 40 a0 d3                                      movle r4, #0
00322b40  1e 00 00 da                                      ble #0x322bc0
00322b44  00 40 a0 e3                                      mov r4, #0
00322b48  71 a0 ef e6                                      uxtb sl, r1
00322b4c  0b 00 00 ea                                      b #0x322b80
00322b50  02 60 63 e0                                      rsb r6, r3, r2
00322b54  06 00 51 e1                                      cmp r1, r6
00322b58  01 60 a0 31                                      movlo r6, r1
00322b5c  06 20 a0 e1                                      mov r2, r6
00322b60  08 10 a0 e1                                      mov r1, r8
00322b64  3d ae ff eb                                      bl #0x30e460
00322b68  14 30 95 e5                                      ldr r3, [r5, #0x14]
00322b6c  04 40 86 e0                                      add r4, r6, r4
00322b70  04 00 57 e1                                      cmp r7, r4
00322b74  06 60 83 e0                                      add r6, r3, r6
00322b78  14 60 85 e5                                      str r6, [r5, #0x14]
00322b7c  0f 00 00 da                                      ble #0x322bc0
00322b80  14 30 95 e5                                      ldr r3, [r5, #0x14]
00322b84  18 20 95 e5                                      ldr r2, [r5, #0x18]
00322b88  07 10 64 e0                                      rsb r1, r4, r7
00322b8c  03 00 a0 e1                                      mov r0, r3
00322b90  02 00 53 e1                                      cmp r3, r2
00322b94  ed ff ff 3a                                      blo #0x322b50
00322b98  00 30 95 e5                                      ldr r3, [r5]
00322b9c  05 00 a0 e1                                      mov r0, r5
00322ba0  0a 10 a0 e1                                      mov r1, sl
00322ba4  0f e0 a0 e1                                      mov lr, pc
00322ba8  34 f0 93 e5                                      ldr pc, [r3, #0x34]
00322bac  01 00 70 e3                                      cmn r0, #1
00322bb0  02 00 00 0a                                      beq #0x322bc0
00322bb4  01 40 84 e2                                      add r4, r4, #1
00322bb8  04 00 57 e1                                      cmp r7, r4
00322bbc  ef ff ff ca                                      bgt #0x322b80
00322bc0  04 00 a0 e1                                      mov r0, r4
00322bc4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x00322fa0, declared_size=52, range_size=52, mode=arm
; class-group: std::basic_streambuf<char, std::char_traits<char> >
; alias: _ZNSt15basic_streambufIcSt11char_traitsIcEED1Ev
; demangled: std::basic_streambuf<char, std::char_traits<char> >::~basic_streambuf()
; decoder-mode: arm
00322fa0  24 30 9f e5                                      ldr r3, [pc, #0x24]
00322fa4  24 20 9f e5                                      ldr r2, [pc, #0x24]
00322fa8  10 40 2d e9                                      push {r4, lr}
00322fac  03 30 8f e0                                      add r3, pc, r3
00322fb0  02 20 93 e7                                      ldr r2, [r3, r2]
00322fb4  00 40 a0 e1                                      mov r4, r0
00322fb8  08 20 82 e2                                      add r2, r2, #8
00322fbc  1c 20 80 e4                                      str r2, [r0], #0x1c
00322fc0  a6 97 0f eb                                      bl #0x708e60
00322fc4  04 00 a0 e1                                      mov r0, r4
00322fc8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00322fcc  e4 1a 67 00 b4 07 00 00                          .byte 0xe4, 0x1a, 0x67, 0x00, 0xb4, 0x07, 0x00, 0x00

; FUNCTION 0x00322fd4, declared_size=28, range_size=28, mode=arm
; class-group: std::basic_streambuf<char, std::char_traits<char> >
; alias: _ZNSt15basic_streambufIcSt11char_traitsIcEED0Ev
; demangled: std::basic_streambuf<char, std::char_traits<char> >::~basic_streambuf()
; decoder-mode: arm
00322fd4  10 40 2d e9                                      push {r4, lr}
00322fd8  00 40 a0 e1                                      mov r4, r0
00322fdc  ef ff ff eb                                      bl #0x322fa0
00322fe0  04 00 a0 e1                                      mov r0, r4
00322fe4  15 b5 ff eb                                      bl #0x310440
00322fe8  04 00 a0 e1                                      mov r0, r4
00322fec  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00322ff0, declared_size=72, range_size=72, mode=arm
; class-group: std::basic_streambuf<char, std::char_traits<char> >
; alias: _ZNSt15basic_streambufIcSt11char_traitsIcEE8pubimbueERKSt6locale
; demangled: std::basic_streambuf<char, std::char_traits<char> >::pubimbue(std::locale const&)
; decoder-mode: arm
00322ff0  70 40 2d e9                                      push {r4, r5, r6, lr}
00322ff4  01 30 a0 e1                                      mov r3, r1
00322ff8  00 40 a0 e1                                      mov r4, r0
00322ffc  1c 60 81 e2                                      add r6, r1, #0x1c
00323000  00 30 93 e5                                      ldr r3, [r3]
00323004  01 00 a0 e1                                      mov r0, r1
00323008  02 10 a0 e1                                      mov r1, r2
0032300c  02 50 a0 e1                                      mov r5, r2
00323010  0f e0 a0 e1                                      mov lr, pc
00323014  38 f0 93 e5                                      ldr pc, [r3, #0x38]
00323018  06 10 a0 e1                                      mov r1, r6
0032301c  04 00 a0 e1                                      mov r0, r4
00323020  b2 97 0f eb                                      bl #0x708ef0
00323024  06 00 a0 e1                                      mov r0, r6
00323028  05 10 a0 e1                                      mov r1, r5
0032302c  bf 97 0f eb                                      bl #0x708f30
00323030  04 00 a0 e1                                      mov r0, r4
00323034  70 80 bd e8                                      pop {r4, r5, r6, pc}

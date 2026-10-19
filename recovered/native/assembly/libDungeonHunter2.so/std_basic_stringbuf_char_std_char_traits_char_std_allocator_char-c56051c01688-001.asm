; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0031f838, declared_size=332, range_size=332, mode=arm
; class-group: std::basic_stringbuf<char, std::char_traits<char>, std::allocator<char> >
; alias: _ZNSt15basic_stringbufIcSt11char_traitsIcESaIcEE7seekoffElii
; demangled: std::basic_stringbuf<char, std::char_traits<char>, std::allocator<char> >::seekoff(long, int, int)
; decoder-mode: arm
0031f838  30 00 2d e9                                      push {r4, r5}
0031f83c  08 40 9d e5                                      ldr r4, [sp, #8]
0031f840  20 c0 91 e5                                      ldr ip, [r1, #0x20]
0031f844  0c c0 04 e0                                      and ip, r4, ip
0031f848  dc 41 e0 e7                                      ubfx r4, ip, #3, #1
0031f84c  00 00 54 e3                                      cmp r4, #0
0031f850  5c c2 e0 e7                                      ubfx ip, ip, #4, #1
0031f854  10 00 00 0a                                      beq #0x31f89c
0031f858  08 50 91 e5                                      ldr r5, [r1, #8]
0031f85c  00 00 55 e3                                      cmp r5, #0
0031f860  07 00 00 0a                                      beq #0x31f884
0031f864  00 00 5c e3                                      cmp ip, #0
0031f868  10 00 00 1a                                      bne #0x31f8b0
0031f86c  02 00 53 e3                                      cmp r3, #2
0031f870  13 00 00 0a                                      beq #0x31f8c4
0031f874  04 00 53 e3                                      cmp r3, #4
0031f878  3d 00 00 0a                                      beq #0x31f974
0031f87c  01 00 53 e3                                      cmp r3, #1
0031f880  1a 00 00 0a                                      beq #0x31f8f0
0031f884  00 30 e0 e3                                      mvn r3, #0
0031f888  00 30 80 e5                                      str r3, [r0]
0031f88c  00 30 a0 e3                                      mov r3, #0
0031f890  04 30 80 e5                                      str r3, [r0, #4]
0031f894  30 00 bd e8                                      pop {r4, r5}
0031f898  1e ff 2f e1                                      bx lr
0031f89c  00 00 5c e3                                      cmp ip, #0
0031f8a0  00 30 e0 03                                      mvneq r3, #0
0031f8a4  00 30 80 05                                      streq r3, [r0]
0031f8a8  04 c0 80 05                                      streq ip, [r0, #4]
0031f8ac  f8 ff ff 0a                                      beq #0x31f894
0031f8b0  14 50 91 e5                                      ldr r5, [r1, #0x14]
0031f8b4  00 00 55 e3                                      cmp r5, #0
0031f8b8  f1 ff ff 0a                                      beq #0x31f884
0031f8bc  02 00 53 e3                                      cmp r3, #2
0031f8c0  eb ff ff 1a                                      bne #0x31f874
0031f8c4  00 00 54 e3                                      cmp r4, #0
0031f8c8  08 50 91 15                                      ldrne r5, [r1, #8]
0031f8cc  04 30 91 15                                      ldrne r3, [r1, #4]
0031f8d0  14 50 91 05                                      ldreq r5, [r1, #0x14]
0031f8d4  10 30 91 05                                      ldreq r3, [r1, #0x10]
0031f8d8  00 00 52 e3                                      cmp r2, #0
0031f8dc  04 20 80 05                                      streq r2, [r0, #4]
0031f8e0  05 30 63 e0                                      rsb r3, r3, r5
0031f8e4  00 30 80 05                                      streq r3, [r0]
0031f8e8  01 00 00 1a                                      bne #0x31f8f4
0031f8ec  e8 ff ff ea                                      b #0x31f894
0031f8f0  00 30 a0 e3                                      mov r3, #0
0031f8f4  00 00 54 e3                                      cmp r4, #0
0031f8f8  02 20 83 e0                                      add r2, r3, r2
0031f8fc  0b 00 00 0a                                      beq #0x31f930
0031f900  04 30 91 e5                                      ldr r3, [r1, #4]
0031f904  0c 40 91 e5                                      ldr r4, [r1, #0xc]
0031f908  04 40 63 e0                                      rsb r4, r3, r4
0031f90c  04 00 52 e1                                      cmp r2, r4
0031f910  00 50 a0 d3                                      movle r5, #0
0031f914  01 50 a0 c3                                      movgt r5, #1
0031f918  a2 5f 95 e1                                      orrs r5, r5, r2, lsr #31
0031f91c  d8 ff ff 1a                                      bne #0x31f884
0031f920  04 40 83 e0                                      add r4, r3, r4
0031f924  02 30 83 e0                                      add r3, r3, r2
0031f928  08 30 81 e5                                      str r3, [r1, #8]
0031f92c  0c 40 81 e5                                      str r4, [r1, #0xc]
0031f930  00 00 5c e3                                      cmp ip, #0
0031f934  0b 00 00 0a                                      beq #0x31f968
0031f938  10 30 91 e5                                      ldr r3, [r1, #0x10]
0031f93c  18 c0 91 e5                                      ldr ip, [r1, #0x18]
0031f940  0c c0 63 e0                                      rsb ip, r3, ip
0031f944  0c 00 52 e1                                      cmp r2, ip
0031f948  00 40 a0 d3                                      movle r4, #0
0031f94c  01 40 a0 c3                                      movgt r4, #1
0031f950  a2 4f 94 e1                                      orrs r4, r4, r2, lsr #31
0031f954  ca ff ff 1a                                      bne #0x31f884
0031f958  0c c0 83 e0                                      add ip, r3, ip
0031f95c  02 30 83 e0                                      add r3, r3, r2
0031f960  14 30 81 e5                                      str r3, [r1, #0x14]
0031f964  18 c0 81 e5                                      str ip, [r1, #0x18]
0031f968  00 30 a0 e3                                      mov r3, #0
0031f96c  0c 00 80 e8                                      stm r0, {r2, r3}
0031f970  c7 ff ff ea                                      b #0x31f894
0031f974  34 50 91 e5                                      ldr r5, [r1, #0x34]
0031f978  38 30 91 e5                                      ldr r3, [r1, #0x38]
0031f97c  05 30 63 e0                                      rsb r3, r3, r5
0031f980  db ff ff ea                                      b #0x31f8f4

; FUNCTION 0x0031f984, declared_size=228, range_size=228, mode=arm
; class-group: std::basic_stringbuf<char, std::char_traits<char>, std::allocator<char> >
; alias: _ZNSt15basic_stringbufIcSt11char_traitsIcESaIcEE7seekposESt4fposI9mbstate_tEi
; demangled: std::basic_stringbuf<char, std::char_traits<char>, std::allocator<char> >::seekpos(std::fpos<mbstate_t>, int)
; decoder-mode: arm
0031f984  70 00 2d e9                                      push {r4, r5, r6}
0031f988  0c d0 4d e2                                      sub sp, sp, #0xc
0031f98c  18 40 9d e5                                      ldr r4, [sp, #0x18]
0031f990  20 c0 91 e5                                      ldr ip, [r1, #0x20]
0031f994  0c c0 04 e0                                      and ip, r4, ip
0031f998  dc 41 e0 e7                                      ubfx r4, ip, #3, #1
0031f99c  00 00 54 e3                                      cmp r4, #0
0031f9a0  5c c2 e0 e7                                      ubfx ip, ip, #4, #1
0031f9a4  15 00 00 0a                                      beq #0x31fa00
0031f9a8  08 50 91 e5                                      ldr r5, [r1, #8]
0031f9ac  00 00 55 e3                                      cmp r5, #0
0031f9b0  0b 00 00 0a                                      beq #0x31f9e4
0031f9b4  00 00 5c e3                                      cmp ip, #0
0031f9b8  15 00 00 1a                                      bne #0x31fa14
0031f9bc  00 00 52 e3                                      cmp r2, #0
0031f9c0  07 00 00 ba                                      blt #0x31f9e4
0031f9c4  04 50 91 e5                                      ldr r5, [r1, #4]
0031f9c8  0c 40 91 e5                                      ldr r4, [r1, #0xc]
0031f9cc  04 60 65 e0                                      rsb r6, r5, r4
0031f9d0  02 00 56 e1                                      cmp r6, r2
0031f9d4  02 50 85 a0                                      addge r5, r5, r2
0031f9d8  08 50 81 a5                                      strge r5, [r1, #8]
0031f9dc  0c 40 81 a5                                      strge r4, [r1, #0xc]
0031f9e0  10 00 00 aa                                      bge #0x31fa28
0031f9e4  00 30 e0 e3                                      mvn r3, #0
0031f9e8  00 30 80 e5                                      str r3, [r0]
0031f9ec  00 30 a0 e3                                      mov r3, #0
0031f9f0  04 30 80 e5                                      str r3, [r0, #4]
0031f9f4  0c d0 8d e2                                      add sp, sp, #0xc
0031f9f8  70 00 bd e8                                      pop {r4, r5, r6}
0031f9fc  1e ff 2f e1                                      bx lr
0031fa00  00 00 5c e3                                      cmp ip, #0
0031fa04  00 30 e0 03                                      mvneq r3, #0
0031fa08  00 30 80 05                                      streq r3, [r0]
0031fa0c  04 c0 80 05                                      streq ip, [r0, #4]
0031fa10  f7 ff ff 0a                                      beq #0x31f9f4
0031fa14  14 50 91 e5                                      ldr r5, [r1, #0x14]
0031fa18  00 00 55 e3                                      cmp r5, #0
0031fa1c  f0 ff ff 0a                                      beq #0x31f9e4
0031fa20  00 00 54 e3                                      cmp r4, #0
0031fa24  e4 ff ff 1a                                      bne #0x31f9bc
0031fa28  00 00 5c e3                                      cmp ip, #0
0031fa2c  0b 00 00 0a                                      beq #0x31fa60
0031fa30  00 00 52 e3                                      cmp r2, #0
0031fa34  ea ff ff ba                                      blt #0x31f9e4
0031fa38  38 c0 91 e5                                      ldr ip, [r1, #0x38]
0031fa3c  34 40 91 e5                                      ldr r4, [r1, #0x34]
0031fa40  04 40 6c e0                                      rsb r4, ip, r4
0031fa44  04 00 52 e1                                      cmp r2, r4
0031fa48  e5 ff ff 8a                                      bhi #0x31f9e4
0031fa4c  04 40 8c e0                                      add r4, ip, r4
0031fa50  02 50 8c e0                                      add r5, ip, r2
0031fa54  14 50 81 e5                                      str r5, [r1, #0x14]
0031fa58  18 40 81 e5                                      str r4, [r1, #0x18]
0031fa5c  10 c0 81 e5                                      str ip, [r1, #0x10]
0031fa60  0c 00 80 e8                                      stm r0, {r2, r3}
0031fa64  e2 ff ff ea                                      b #0x31f9f4

; FUNCTION 0x0031fa70, declared_size=24, range_size=24, mode=arm
; class-group: std::basic_stringbuf<char, std::char_traits<char>, std::allocator<char> >
; alias: _ZNSt15basic_stringbufIcSt11char_traitsIcESaIcEE9underflowEv
; demangled: std::basic_stringbuf<char, std::char_traits<char>, std::allocator<char> >::underflow()
; decoder-mode: arm
0031fa70  0c 20 90 e5                                      ldr r2, [r0, #0xc]
0031fa74  08 30 90 e5                                      ldr r3, [r0, #8]
0031fa78  02 00 53 e1                                      cmp r3, r2
0031fa7c  00 00 e0 03                                      mvneq r0, #0
0031fa80  00 00 d3 15                                      ldrbne r0, [r3]
0031fa84  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031fa88, declared_size=32, range_size=32, mode=arm
; class-group: std::basic_stringbuf<char, std::char_traits<char>, std::allocator<char> >
; alias: _ZNSt15basic_stringbufIcSt11char_traitsIcESaIcEE5uflowEv
; demangled: std::basic_stringbuf<char, std::char_traits<char>, std::allocator<char> >::uflow()
; decoder-mode: arm
0031fa88  08 20 90 e5                                      ldr r2, [r0, #8]
0031fa8c  0c 10 90 e5                                      ldr r1, [r0, #0xc]
0031fa90  00 30 a0 e1                                      mov r3, r0
0031fa94  01 00 52 e1                                      cmp r2, r1
0031fa98  01 00 d2 14                                      ldrbne r0, [r2], #1
0031fa9c  00 00 e0 03                                      mvneq r0, #0
0031faa0  08 20 83 15                                      strne r2, [r3, #8]
0031faa4  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031faa8, declared_size=108, range_size=108, mode=arm
; class-group: std::basic_stringbuf<char, std::char_traits<char>, std::allocator<char> >
; alias: _ZNSt15basic_stringbufIcSt11char_traitsIcESaIcEE9pbackfailEi
; demangled: std::basic_stringbuf<char, std::char_traits<char>, std::allocator<char> >::pbackfail(int)
; decoder-mode: arm
0031faa8  04 40 2d e5                                      str r4, [sp, #-4]!
0031faac  08 20 90 e5                                      ldr r2, [r0, #8]
0031fab0  04 c0 90 e5                                      ldr ip, [r0, #4]
0031fab4  00 30 a0 e1                                      mov r3, r0
0031fab8  0c 00 52 e1                                      cmp r2, ip
0031fabc  12 00 00 0a                                      beq #0x31fb0c
0031fac0  01 00 71 e3                                      cmn r1, #1
0031fac4  01 20 42 02                                      subeq r2, r2, #1
0031fac8  08 20 80 05                                      streq r2, [r0, #8]
0031facc  00 10 a0 03                                      moveq r1, #0
0031fad0  05 00 00 0a                                      beq #0x31faec
0031fad4  01 c0 52 e5                                      ldrb ip, [r2, #-1]
0031fad8  71 00 ef e6                                      uxtb r0, r1
0031fadc  01 40 42 e2                                      sub r4, r2, #1
0031fae0  0c 00 50 e1                                      cmp r0, ip
0031fae4  08 40 83 05                                      streq r4, [r3, #8]
0031fae8  02 00 00 1a                                      bne #0x31faf8
0031faec  01 00 a0 e1                                      mov r0, r1
0031faf0  10 00 bd e8                                      ldm sp!, {r4}
0031faf4  1e ff 2f e1                                      bx lr
0031faf8  20 c0 93 e5                                      ldr ip, [r3, #0x20]
0031fafc  10 00 1c e3                                      tst ip, #0x10
0031fb00  08 40 83 15                                      strne r4, [r3, #8]
0031fb04  01 00 42 15                                      strbne r0, [r2, #-1]
0031fb08  f7 ff ff 1a                                      bne #0x31faec
0031fb0c  00 10 e0 e3                                      mvn r1, #0
0031fb10  f5 ff ff ea                                      b #0x31faec

; FUNCTION 0x00322e78, declared_size=80, range_size=80, mode=arm
; class-group: std::basic_stringbuf<char, std::char_traits<char>, std::allocator<char> >
; alias: _ZNSt15basic_stringbufIcSt11char_traitsIcESaIcEED1Ev
; demangled: std::basic_stringbuf<char, std::char_traits<char>, std::allocator<char> >::~basic_stringbuf()
; decoder-mode: arm
00322e78  70 40 2d e9                                      push {r4, r5, r6, lr}
00322e7c  38 40 9f e5                                      ldr r4, [pc, #0x38]
00322e80  38 30 9f e5                                      ldr r3, [pc, #0x38]
00322e84  00 50 a0 e1                                      mov r5, r0
00322e88  04 40 8f e0                                      add r4, pc, r4
00322e8c  03 30 94 e7                                      ldr r3, [r4, r3]
00322e90  08 30 83 e2                                      add r3, r3, #8
00322e94  24 30 80 e4                                      str r3, [r0], #0x24
00322e98  c3 c2 ff eb                                      bl #0x3139ac
00322e9c  20 30 9f e5                                      ldr r3, [pc, #0x20]
00322ea0  05 00 a0 e1                                      mov r0, r5
00322ea4  03 30 94 e7                                      ldr r3, [r4, r3]
00322ea8  08 30 83 e2                                      add r3, r3, #8
00322eac  1c 30 80 e4                                      str r3, [r0], #0x1c
00322eb0  ea 97 0f eb                                      bl #0x708e60
00322eb4  05 00 a0 e1                                      mov r0, r5
00322eb8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00322ebc  08 1c 67 00 50 4a 00 00 b4 07 00 00              .byte 0x08, 0x1c, 0x67, 0x00, 0x50, 0x4a, 0x00, 0x00, 0xb4, 0x07, 0x00, 0x00

; FUNCTION 0x00322ec8, declared_size=28, range_size=28, mode=arm
; class-group: std::basic_stringbuf<char, std::char_traits<char>, std::allocator<char> >
; alias: _ZNSt15basic_stringbufIcSt11char_traitsIcESaIcEED0Ev
; demangled: std::basic_stringbuf<char, std::char_traits<char>, std::allocator<char> >::~basic_stringbuf()
; decoder-mode: arm
00322ec8  10 40 2d e9                                      push {r4, lr}
00322ecc  00 40 a0 e1                                      mov r4, r0
00322ed0  e8 ff ff eb                                      bl #0x322e78
00322ed4  04 00 a0 e1                                      mov r0, r4
00322ed8  58 b5 ff eb                                      bl #0x310440
00322edc  04 00 a0 e1                                      mov r0, r4
00322ee0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0032a2c4, declared_size=196, range_size=196, mode=arm
; class-group: std::basic_stringbuf<char, std::char_traits<char>, std::allocator<char> >
; alias: _ZNSt15basic_stringbufIcSt11char_traitsIcESaIcEE8overflowEi
; demangled: std::basic_stringbuf<char, std::char_traits<char>, std::allocator<char> >::overflow(int)
; decoder-mode: arm
0032a2c4  01 00 71 e3                                      cmn r1, #1
0032a2c8  70 40 2d e9                                      push {r4, r5, r6, lr}
0032a2cc  01 40 a0 e1                                      mov r4, r1
0032a2d0  00 50 a0 e1                                      mov r5, r0
0032a2d4  00 40 a0 03                                      moveq r4, #0
0032a2d8  01 00 00 1a                                      bne #0x32a2e4
0032a2dc  04 00 a0 e1                                      mov r0, r4
0032a2e0  70 80 bd e8                                      pop {r4, r5, r6, pc}
0032a2e4  20 30 90 e5                                      ldr r3, [r0, #0x20]
0032a2e8  10 00 13 e3                                      tst r3, #0x10
0032a2ec  00 40 e0 03                                      mvneq r4, #0
0032a2f0  f9 ff ff 0a                                      beq #0x32a2dc
0032a2f4  14 10 90 e5                                      ldr r1, [r0, #0x14]
0032a2f8  18 20 90 e5                                      ldr r2, [r0, #0x18]
0032a2fc  02 00 51 e1                                      cmp r1, r2
0032a300  10 00 00 3a                                      blo #0x32a348
0032a304  08 00 13 e3                                      tst r3, #8
0032a308  15 00 00 0a                                      beq #0x32a364
0032a30c  48 00 90 e9                                      ldmib r0, {r3, r6}
0032a310  74 10 af e6                                      sxtb r1, r4
0032a314  24 00 80 e2                                      add r0, r0, #0x24
0032a318  06 60 63 e0                                      rsb r6, r3, r6
0032a31c  ce ff ff eb                                      bl #0x32a25c
0032a320  38 20 95 e5                                      ldr r2, [r5, #0x38]
0032a324  34 30 95 e5                                      ldr r3, [r5, #0x34]
0032a328  06 60 82 e0                                      add r6, r2, r6
0032a32c  14 30 85 e5                                      str r3, [r5, #0x14]
0032a330  08 60 85 e5                                      str r6, [r5, #8]
0032a334  10 20 85 e5                                      str r2, [r5, #0x10]
0032a338  04 20 85 e5                                      str r2, [r5, #4]
0032a33c  0c 30 85 e5                                      str r3, [r5, #0xc]
0032a340  18 30 85 e5                                      str r3, [r5, #0x18]
0032a344  e4 ff ff ea                                      b #0x32a2dc
0032a348  24 00 80 e2                                      add r0, r0, #0x24
0032a34c  74 10 af e6                                      sxtb r1, r4
0032a350  c1 ff ff eb                                      bl #0x32a25c
0032a354  14 30 95 e5                                      ldr r3, [r5, #0x14]
0032a358  01 30 83 e2                                      add r3, r3, #1
0032a35c  14 30 85 e5                                      str r3, [r5, #0x14]
0032a360  dd ff ff ea                                      b #0x32a2dc
0032a364  24 00 80 e2                                      add r0, r0, #0x24
0032a368  74 10 af e6                                      sxtb r1, r4
0032a36c  ba ff ff eb                                      bl #0x32a25c
0032a370  34 30 95 e5                                      ldr r3, [r5, #0x34]
0032a374  38 20 95 e5                                      ldr r2, [r5, #0x38]
0032a378  14 30 85 e5                                      str r3, [r5, #0x14]
0032a37c  10 20 85 e5                                      str r2, [r5, #0x10]
0032a380  18 30 85 e5                                      str r3, [r5, #0x18]
0032a384  d4 ff ff ea                                      b #0x32a2dc

; FUNCTION 0x0032a474, declared_size=252, range_size=252, mode=arm
; class-group: std::basic_stringbuf<char, std::char_traits<char>, std::allocator<char> >
; alias: _ZNSt15basic_stringbufIcSt11char_traitsIcESaIcEE10_M_xsputncEci
; demangled: std::basic_stringbuf<char, std::char_traits<char>, std::allocator<char> >::_M_xsputnc(char, int)
; decoder-mode: arm
0032a474  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0032a478  20 30 90 e5                                      ldr r3, [r0, #0x20]
0032a47c  00 40 a0 e1                                      mov r4, r0
0032a480  01 60 a0 e1                                      mov r6, r1
0032a484  53 72 e0 e7                                      ubfx r7, r3, #4, #1
0032a488  00 00 52 e3                                      cmp r2, #0
0032a48c  00 70 a0 d3                                      movle r7, #0
0032a490  01 70 07 c2                                      andgt r7, r7, #1
0032a494  00 00 57 e3                                      cmp r7, #0
0032a498  02 50 a0 e1                                      mov r5, r2
0032a49c  01 00 00 1a                                      bne #0x32a4a8
0032a4a0  07 00 a0 e1                                      mov r0, r7
0032a4a4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0032a4a8  10 c0 90 e5                                      ldr ip, [r0, #0x10]
0032a4ac  38 00 90 e5                                      ldr r0, [r0, #0x38]
0032a4b0  00 00 5c e1                                      cmp ip, r0
0032a4b4  00 70 a0 13                                      movne r7, #0
0032a4b8  1c 00 00 0a                                      beq #0x32a530
0032a4bc  08 00 13 e3                                      tst r3, #8
0032a4c0  0f 00 00 0a                                      beq #0x32a504
0032a4c4  08 10 94 e9                                      ldmib r4, {r3, ip}
0032a4c8  06 20 a0 e1                                      mov r2, r6
0032a4cc  24 00 84 e2                                      add r0, r4, #0x24
0032a4d0  05 10 a0 e1                                      mov r1, r5
0032a4d4  0c 60 63 e0                                      rsb r6, r3, ip
0032a4d8  aa ff ff eb                                      bl #0x32a388
0032a4dc  38 20 94 e5                                      ldr r2, [r4, #0x38]
0032a4e0  34 30 94 e5                                      ldr r3, [r4, #0x34]
0032a4e4  07 00 85 e0                                      add r0, r5, r7
0032a4e8  06 60 82 e0                                      add r6, r2, r6
0032a4ec  44 00 84 e9                                      stmib r4, {r2, r6}
0032a4f0  0c 30 84 e5                                      str r3, [r4, #0xc]
0032a4f4  14 30 84 e5                                      str r3, [r4, #0x14]
0032a4f8  10 20 84 e5                                      str r2, [r4, #0x10]
0032a4fc  18 30 84 e5                                      str r3, [r4, #0x18]
0032a500  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0032a504  06 20 a0 e1                                      mov r2, r6
0032a508  24 00 84 e2                                      add r0, r4, #0x24
0032a50c  05 10 a0 e1                                      mov r1, r5
0032a510  9c ff ff eb                                      bl #0x32a388
0032a514  34 30 94 e5                                      ldr r3, [r4, #0x34]
0032a518  38 20 94 e5                                      ldr r2, [r4, #0x38]
0032a51c  07 00 85 e0                                      add r0, r5, r7
0032a520  14 30 84 e5                                      str r3, [r4, #0x14]
0032a524  10 20 84 e5                                      str r2, [r4, #0x10]
0032a528  18 30 84 e5                                      str r3, [r4, #0x18]
0032a52c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0032a530  14 00 94 e5                                      ldr r0, [r4, #0x14]
0032a534  34 70 94 e5                                      ldr r7, [r4, #0x34]
0032a538  07 70 60 e0                                      rsb r7, r0, r7
0032a53c  02 00 57 e1                                      cmp r7, r2
0032a540  04 00 00 ca                                      bgt #0x32a558
0032a544  07 20 a0 e1                                      mov r2, r7
0032a548  c4 8f ff eb                                      bl #0x30e460
0032a54c  05 50 67 e0                                      rsb r5, r7, r5
0032a550  20 30 94 e5                                      ldr r3, [r4, #0x20]
0032a554  d8 ff ff ea                                      b #0x32a4bc
0032a558  c0 8f ff eb                                      bl #0x30e460
0032a55c  14 30 94 e5                                      ldr r3, [r4, #0x14]
0032a560  05 00 a0 e1                                      mov r0, r5
0032a564  05 50 83 e0                                      add r5, r3, r5
0032a568  14 50 84 e5                                      str r5, [r4, #0x14]
0032a56c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0032a5d8, declared_size=148, range_size=148, mode=arm
; class-group: std::basic_stringbuf<char, std::char_traits<char>, std::allocator<char> >
; alias: _ZNSt15basic_stringbufIcSt11char_traitsIcESaIcEE6setbufEPci
; demangled: std::basic_stringbuf<char, std::char_traits<char>, std::allocator<char> >::setbuf(char*, int)
; decoder-mode: arm
0032a5d8  00 10 52 e2                                      subs r1, r2, #0
0032a5dc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0032a5e0  00 40 a0 e1                                      mov r4, r0
0032a5e4  13 00 00 da                                      ble #0x32a638
0032a5e8  38 30 90 e5                                      ldr r3, [r0, #0x38]
0032a5ec  10 20 90 e5                                      ldr r2, [r0, #0x10]
0032a5f0  03 00 52 e1                                      cmp r2, r3
0032a5f4  14 50 90 05                                      ldreq r5, [r0, #0x14]
0032a5f8  04 20 90 e5                                      ldr r2, [r0, #4]
0032a5fc  00 50 a0 13                                      movne r5, #0
0032a600  05 60 a0 11                                      movne r6, r5
0032a604  01 60 a0 03                                      moveq r6, #1
0032a608  05 50 63 00                                      rsbeq r5, r3, r5
0032a60c  02 00 53 e1                                      cmp r3, r2
0032a610  0a 00 00 0a                                      beq #0x32a640
0032a614  24 00 80 e2                                      add r0, r0, #0x24
0032a618  d4 ff ff eb                                      bl #0x32a570
0032a61c  38 30 94 e5                                      ldr r3, [r4, #0x38]
0032a620  00 00 56 e3                                      cmp r6, #0
0032a624  34 20 94 15                                      ldrne r2, [r4, #0x34]
0032a628  05 50 83 10                                      addne r5, r3, r5
0032a62c  14 50 84 15                                      strne r5, [r4, #0x14]
0032a630  18 20 84 15                                      strne r2, [r4, #0x18]
0032a634  10 30 84 15                                      strne r3, [r4, #0x10]
0032a638  04 00 a0 e1                                      mov r0, r4
0032a63c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0032a640  08 70 90 e5                                      ldr r7, [r0, #8]
0032a644  24 00 80 e2                                      add r0, r0, #0x24
0032a648  07 70 63 e0                                      rsb r7, r3, r7
0032a64c  c7 ff ff eb                                      bl #0x32a570
0032a650  38 30 94 e5                                      ldr r3, [r4, #0x38]
0032a654  34 20 94 e5                                      ldr r2, [r4, #0x34]
0032a658  07 70 83 e0                                      add r7, r3, r7
0032a65c  08 70 84 e5                                      str r7, [r4, #8]
0032a660  0c 20 84 e5                                      str r2, [r4, #0xc]
0032a664  04 30 84 e5                                      str r3, [r4, #4]
0032a668  ec ff ff ea                                      b #0x32a620

; FUNCTION 0x0032a8ac, declared_size=284, range_size=284, mode=arm
; class-group: std::basic_stringbuf<char, std::char_traits<char>, std::allocator<char> >
; alias: _ZNSt15basic_stringbufIcSt11char_traitsIcESaIcEE6xsputnEPKci
; demangled: std::basic_stringbuf<char, std::char_traits<char>, std::allocator<char> >::xsputn(char const*, int)
; decoder-mode: arm
0032a8ac  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0032a8b0  20 c0 90 e5                                      ldr ip, [r0, #0x20]
0032a8b4  02 50 a0 e1                                      mov r5, r2
0032a8b8  08 d0 4d e2                                      sub sp, sp, #8
0032a8bc  5c 32 e0 e7                                      ubfx r3, ip, #4, #1
0032a8c0  00 00 52 e3                                      cmp r2, #0
0032a8c4  00 30 a0 d3                                      movle r3, #0
0032a8c8  01 30 03 c2                                      andgt r3, r3, #1
0032a8cc  00 00 53 e3                                      cmp r3, #0
0032a8d0  00 40 a0 e1                                      mov r4, r0
0032a8d4  01 80 a0 e1                                      mov r8, r1
0032a8d8  03 50 a0 01                                      moveq r5, r3
0032a8dc  14 00 00 0a                                      beq #0x32a934
0032a8e0  38 30 90 e5                                      ldr r3, [r0, #0x38]
0032a8e4  34 60 90 e5                                      ldr r6, [r0, #0x34]
0032a8e8  06 00 53 e1                                      cmp r3, r6
0032a8ec  02 00 00 0a                                      beq #0x32a8fc
0032a8f0  10 00 90 e5                                      ldr r0, [r0, #0x10]
0032a8f4  00 00 53 e1                                      cmp r3, r0
0032a8f8  1e 00 00 0a                                      beq #0x32a978
0032a8fc  00 60 a0 e3                                      mov r6, #0
0032a900  08 00 1c e3                                      tst ip, #8
0032a904  0d 00 00 1a                                      bne #0x32a940
0032a908  05 20 88 e0                                      add r2, r8, r5
0032a90c  0d 30 a0 e1                                      mov r3, sp
0032a910  08 10 a0 e1                                      mov r1, r8
0032a914  24 00 84 e2                                      add r0, r4, #0x24
0032a918  9b ff ff eb                                      bl #0x32a78c
0032a91c  38 20 94 e5                                      ldr r2, [r4, #0x38]
0032a920  34 30 94 e5                                      ldr r3, [r4, #0x34]
0032a924  14 30 84 e5                                      str r3, [r4, #0x14]
0032a928  10 20 84 e5                                      str r2, [r4, #0x10]
0032a92c  05 50 86 e0                                      add r5, r6, r5
0032a930  18 30 84 e5                                      str r3, [r4, #0x18]
0032a934  05 00 a0 e1                                      mov r0, r5
0032a938  08 d0 8d e2                                      add sp, sp, #8
0032a93c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0032a940  08 70 94 e5                                      ldr r7, [r4, #8]
0032a944  04 c0 94 e5                                      ldr ip, [r4, #4]
0032a948  05 20 88 e0                                      add r2, r8, r5
0032a94c  04 30 8d e2                                      add r3, sp, #4
0032a950  08 10 a0 e1                                      mov r1, r8
0032a954  24 00 84 e2                                      add r0, r4, #0x24
0032a958  07 70 6c e0                                      rsb r7, ip, r7
0032a95c  8a ff ff eb                                      bl #0x32a78c
0032a960  38 20 94 e5                                      ldr r2, [r4, #0x38]
0032a964  34 30 94 e5                                      ldr r3, [r4, #0x34]
0032a968  07 70 82 e0                                      add r7, r2, r7
0032a96c  84 00 84 e9                                      stmib r4, {r2, r7}
0032a970  0c 30 84 e5                                      str r3, [r4, #0xc]
0032a974  ea ff ff ea                                      b #0x32a924
0032a978  14 00 94 e5                                      ldr r0, [r4, #0x14]
0032a97c  06 60 60 e0                                      rsb r6, r0, r6
0032a980  06 00 55 e1                                      cmp r5, r6
0032a984  06 00 00 aa                                      bge #0x32a9a4
0032a988  00 00 55 e3                                      cmp r5, #0
0032a98c  01 00 00 0a                                      beq #0x32a998
0032a990  b4 8f ff eb                                      bl #0x30e868
0032a994  14 00 94 e5                                      ldr r0, [r4, #0x14]
0032a998  05 00 80 e0                                      add r0, r0, r5
0032a99c  14 00 84 e5                                      str r0, [r4, #0x14]
0032a9a0  e3 ff ff ea                                      b #0x32a934
0032a9a4  00 00 56 e3                                      cmp r6, #0
0032a9a8  02 00 00 1a                                      bne #0x32a9b8
0032a9ac  05 50 66 e0                                      rsb r5, r6, r5
0032a9b0  06 80 88 e0                                      add r8, r8, r6
0032a9b4  d1 ff ff ea                                      b #0x32a900
0032a9b8  06 20 a0 e1                                      mov r2, r6
0032a9bc  a9 8f ff eb                                      bl #0x30e868
0032a9c0  20 c0 94 e5                                      ldr ip, [r4, #0x20]
0032a9c4  f8 ff ff ea                                      b #0x32a9ac

; FUNCTION 0x0032d0e0, declared_size=144, range_size=144, mode=arm
; class-group: std::basic_stringbuf<char, std::char_traits<char>, std::allocator<char> >
; alias: _ZNSt15basic_stringbufIcSt11char_traitsIcESaIcEEC1Ei
; demangled: std::basic_stringbuf<char, std::char_traits<char>, std::allocator<char> >::basic_stringbuf(int)
; decoder-mode: arm
0032d0e0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0032d0e4  78 60 9f e5                                      ldr r6, [pc, #0x78]
0032d0e8  78 30 9f e5                                      ldr r3, [pc, #0x78]
0032d0ec  00 50 a0 e3                                      mov r5, #0
0032d0f0  06 60 8f e0                                      add r6, pc, r6
0032d0f4  03 30 96 e7                                      ldr r3, [r6, r3]
0032d0f8  00 40 a0 e1                                      mov r4, r0
0032d0fc  04 50 80 e5                                      str r5, [r0, #4]
0032d100  08 30 83 e2                                      add r3, r3, #8
0032d104  00 30 80 e5                                      str r3, [r0]
0032d108  08 50 80 e5                                      str r5, [r0, #8]
0032d10c  0c 50 80 e5                                      str r5, [r0, #0xc]
0032d110  10 50 80 e5                                      str r5, [r0, #0x10]
0032d114  14 50 80 e5                                      str r5, [r0, #0x14]
0032d118  18 50 80 e5                                      str r5, [r0, #0x18]
0032d11c  1c 00 80 e2                                      add r0, r0, #0x1c
0032d120  01 70 a0 e1                                      mov r7, r1
0032d124  49 6f 0f eb                                      bl #0x708e50
0032d128  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
0032d12c  24 30 84 e2                                      add r3, r4, #0x24
0032d130  03 00 a0 e1                                      mov r0, r3
0032d134  02 20 96 e7                                      ldr r2, [r6, r2]
0032d138  34 30 84 e5                                      str r3, [r4, #0x34]
0032d13c  38 30 84 e5                                      str r3, [r4, #0x38]
0032d140  08 20 82 e2                                      add r2, r2, #8
0032d144  20 70 84 e5                                      str r7, [r4, #0x20]
0032d148  00 20 84 e5                                      str r2, [r4]
0032d14c  10 10 a0 e3                                      mov r1, #0x10
0032d150  49 91 ff eb                                      bl #0x31167c
0032d154  34 30 94 e5                                      ldr r3, [r4, #0x34]
0032d158  04 00 a0 e1                                      mov r0, r4
0032d15c  00 50 c3 e5                                      strb r5, [r3]
0032d160  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0032d164  a0 79 66 00 b4 07 00 00 50 4a 00 00              .byte 0xa0, 0x79, 0x66, 0x00, 0xb4, 0x07, 0x00, 0x00, 0x50, 0x4a, 0x00, 0x00

; FUNCTION 0x005a3e74, declared_size=124, range_size=124, mode=arm
; class-group: std::basic_stringbuf<char, std::char_traits<char>, std::allocator<char> >
; alias: _ZNSt15basic_stringbufIcSt11char_traitsIcESaIcEE3strERKSs
; demangled: std::basic_stringbuf<char, std::char_traits<char>, std::allocator<char> >::str(std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&)
; decoder-mode: arm
005a3e74  10 40 2d e9                                      push {r4, lr}
005a3e78  00 40 a0 e1                                      mov r4, r0
005a3e7c  24 00 80 e2                                      add r0, r0, #0x24
005a3e80  01 00 50 e1                                      cmp r0, r1
005a3e84  02 00 00 0a                                      beq #0x5a3e94
005a3e88  10 20 91 e5                                      ldr r2, [r1, #0x10]
005a3e8c  14 10 91 e5                                      ldr r1, [r1, #0x14]
005a3e90  d2 b2 f5 eb                                      bl #0x3109e0
005a3e94  20 30 94 e5                                      ldr r3, [r4, #0x20]
005a3e98  34 00 94 e5                                      ldr r0, [r4, #0x34]
005a3e9c  38 10 94 e5                                      ldr r1, [r4, #0x38]
005a3ea0  08 00 13 e3                                      tst r3, #8
005a3ea4  00 20 a0 e1                                      mov r2, r0
005a3ea8  04 00 00 0a                                      beq #0x5a3ec0
005a3eac  02 00 13 e3                                      tst r3, #2
005a3eb0  00 c0 a0 11                                      movne ip, r0
005a3eb4  01 c0 a0 01                                      moveq ip, r1
005a3eb8  02 10 84 e9                                      stmib r4, {r1, ip}
005a3ebc  0c 00 84 e5                                      str r0, [r4, #0xc]
005a3ec0  10 00 13 e3                                      tst r3, #0x10
005a3ec4  04 00 00 0a                                      beq #0x5a3edc
005a3ec8  03 00 13 e3                                      tst r3, #3
005a3ecc  14 00 84 05                                      streq r0, [r4, #0x14]
005a3ed0  10 10 84 05                                      streq r1, [r4, #0x10]
005a3ed4  18 20 84 05                                      streq r2, [r4, #0x18]
005a3ed8  00 00 00 1a                                      bne #0x5a3ee0
005a3edc  10 80 bd e8                                      pop {r4, pc}
005a3ee0  18 20 84 e5                                      str r2, [r4, #0x18]
005a3ee4  10 20 84 e5                                      str r2, [r4, #0x10]
005a3ee8  14 20 84 e5                                      str r2, [r4, #0x14]
005a3eec  10 80 bd e8                                      pop {r4, pc}

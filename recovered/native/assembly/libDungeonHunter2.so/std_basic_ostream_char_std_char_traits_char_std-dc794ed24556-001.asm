; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0041c364, declared_size=316, range_size=316, mode=arm
; class-group: std::basic_ostream<char, std::char_traits<char> >& std
; alias: _ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKSbIS4_S5_T1_E
; demangled: std::basic_ostream<char, std::char_traits<char> >& std::operator<< <char, std::char_traits<char>, std::allocator<char> >(std::basic_ostream<char, std::char_traits<char> >&, std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&)
; decoder-mode: arm
0041c364  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0041c368  01 50 a0 e1                                      mov r5, r1
0041c36c  00 40 a0 e1                                      mov r4, r0
0041c370  79 cc fb eb                                      bl #0x30f55c
0041c374  00 00 50 e3                                      cmp r0, #0
0041c378  15 00 00 1a                                      bne #0x41c3d4
0041c37c  00 30 94 e5                                      ldr r3, [r4]
0041c380  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
0041c384  00 00 84 e0                                      add r0, r4, r0
0041c388  48 30 90 e5                                      ldr r3, [r0, #0x48]
0041c38c  08 20 90 e5                                      ldr r2, [r0, #8]
0041c390  00 00 53 e3                                      cmp r3, #0
0041c394  04 30 82 e3                                      orr r3, r2, #4
0041c398  05 30 82 03                                      orreq r3, r2, #5
0041c39c  14 20 90 e5                                      ldr r2, [r0, #0x14]
0041c3a0  08 30 80 e5                                      str r3, [r0, #8]
0041c3a4  02 00 13 e1                                      tst r3, r2
0041c3a8  3a 00 00 1a                                      bne #0x41c498
0041c3ac  00 30 94 e5                                      ldr r3, [r4]
0041c3b0  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0041c3b4  03 30 84 e0                                      add r3, r4, r3
0041c3b8  04 30 93 e5                                      ldr r3, [r3, #4]
0041c3bc  02 0a 13 e3                                      tst r3, #0x2000
0041c3c0  01 00 00 0a                                      beq #0x41c3cc
0041c3c4  04 00 a0 e1                                      mov r0, r4
0041c3c8  48 cc fb eb                                      bl #0x30f4f0
0041c3cc  04 00 a0 e1                                      mov r0, r4
0041c3d0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0041c3d4  00 30 94 e5                                      ldr r3, [r4]
0041c3d8  00 80 a0 e3                                      mov r8, #0
0041c3dc  10 60 95 e5                                      ldr r6, [r5, #0x10]
0041c3e0  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0041c3e4  14 00 95 e5                                      ldr r0, [r5, #0x14]
0041c3e8  03 30 84 e0                                      add r3, r4, r3
0041c3ec  1c 20 93 e5                                      ldr r2, [r3, #0x1c]
0041c3f0  1c 80 83 e5                                      str r8, [r3, #0x1c]
0041c3f4  00 10 94 e5                                      ldr r1, [r4]
0041c3f8  04 30 93 e5                                      ldr r3, [r3, #4]
0041c3fc  06 60 60 e0                                      rsb r6, r0, r6
0041c400  0c 10 11 e5                                      ldr r1, [r1, #-0xc]
0041c404  06 00 52 e1                                      cmp r2, r6
0041c408  01 30 03 e2                                      and r3, r3, #1
0041c40c  01 10 84 e0                                      add r1, r4, r1
0041c410  02 80 66 80                                      rsbhi r8, r6, r2
0041c414  00 00 53 e3                                      cmp r3, #0
0041c418  48 70 91 e5                                      ldr r7, [r1, #0x48]
0041c41c  0e 00 00 0a                                      beq #0x41c45c
0041c420  14 10 95 e5                                      ldr r1, [r5, #0x14]
0041c424  00 30 97 e5                                      ldr r3, [r7]
0041c428  07 00 a0 e1                                      mov r0, r7
0041c42c  06 20 a0 e1                                      mov r2, r6
0041c430  0f e0 a0 e1                                      mov lr, pc
0041c434  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
0041c438  00 00 56 e1                                      cmp r6, r0
0041c43c  ce ff ff 1a                                      bne #0x41c37c
0041c440  07 10 a0 e1                                      mov r1, r7
0041c444  08 20 a0 e1                                      mov r2, r8
0041c448  04 00 a0 e1                                      mov r0, r4
0041c44c  af fc ff eb                                      bl #0x41b710
0041c450  00 00 50 e3                                      cmp r0, #0
0041c454  d4 ff ff 1a                                      bne #0x41c3ac
0041c458  c7 ff ff ea                                      b #0x41c37c
0041c45c  08 20 a0 e1                                      mov r2, r8
0041c460  04 00 a0 e1                                      mov r0, r4
0041c464  07 10 a0 e1                                      mov r1, r7
0041c468  a8 fc ff eb                                      bl #0x41b710
0041c46c  00 00 50 e3                                      cmp r0, #0
0041c470  c1 ff ff 0a                                      beq #0x41c37c
0041c474  07 00 a0 e1                                      mov r0, r7
0041c478  14 10 95 e5                                      ldr r1, [r5, #0x14]
0041c47c  00 30 97 e5                                      ldr r3, [r7]
0041c480  06 20 a0 e1                                      mov r2, r6
0041c484  0f e0 a0 e1                                      mov lr, pc
0041c488  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
0041c48c  00 00 56 e1                                      cmp r6, r0
0041c490  c5 ff ff 0a                                      beq #0x41c3ac
0041c494  b8 ff ff ea                                      b #0x41c37c
0041c498  a0 b2 0b eb                                      bl #0x708f20
0041c49c  c2 ff ff ea                                      b #0x41c3ac

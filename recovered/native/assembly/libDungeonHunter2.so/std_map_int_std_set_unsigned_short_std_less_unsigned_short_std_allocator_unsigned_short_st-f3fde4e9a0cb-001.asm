; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0080c974, declared_size=292, range_size=292, mode=arm
; class-group: std::map<int, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> >, std::less<int>, std::allocator<std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > > >& std::map<int, std::map<int, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> >, std::less<int>, std::allocator<std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > > >, std::less<int>, std::allocator<std::pair<int const, std::map<int, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> >, std::less<int>, std::allocator<std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > > > > > >
; alias: _ZNSt3mapIiS_IiSt3setItSt4lessItESaItEES1_IiESaISt4pairIKiS4_EEES5_SaIS6_IS7_SA_EEEixIiEERSA_RKT_
; demangled: std::map<int, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> >, std::less<int>, std::allocator<std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > > >& std::map<int, std::map<int, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> >, std::less<int>, std::allocator<std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > > >, std::less<int>, std::allocator<std::pair<int const, std::map<int, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> >, std::less<int>, std::allocator<std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > > > > > >::operator[]<int>(int const&)
; decoder-mode: arm
0080c974  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0080c978  04 40 90 e5                                      ldr r4, [r0, #4]
0080c97c  44 d0 4d e2                                      sub sp, sp, #0x44
0080c980  00 80 a0 e1                                      mov r8, r0
0080c984  00 00 54 e3                                      cmp r4, #0
0080c988  3f 00 00 0a                                      beq #0x80ca8c
0080c98c  00 10 91 e5                                      ldr r1, [r1]
0080c990  00 20 a0 e1                                      mov r2, r0
0080c994  00 00 00 ea                                      b #0x80c99c
0080c998  03 40 a0 e1                                      mov r4, r3
0080c99c  10 30 94 e5                                      ldr r3, [r4, #0x10]
0080c9a0  03 00 51 e1                                      cmp r1, r3
0080c9a4  0c 30 94 c5                                      ldrgt r3, [r4, #0xc]
0080c9a8  08 30 94 d5                                      ldrle r3, [r4, #8]
0080c9ac  02 40 a0 c1                                      movgt r4, r2
0080c9b0  04 20 a0 e1                                      mov r2, r4
0080c9b4  00 00 53 e3                                      cmp r3, #0
0080c9b8  f6 ff ff 1a                                      bne #0x80c998
0080c9bc  04 00 58 e1                                      cmp r8, r4
0080c9c0  03 00 00 0a                                      beq #0x80c9d4
0080c9c4  10 30 94 e5                                      ldr r3, [r4, #0x10]
0080c9c8  04 00 a0 e1                                      mov r0, r4
0080c9cc  03 00 51 e1                                      cmp r1, r3
0080c9d0  1a 00 00 aa                                      bge #0x80ca40
0080c9d4  40 a0 8d e2                                      add sl, sp, #0x40
0080c9d8  3c 10 2a e5                                      str r1, [sl, #-0x3c]!
0080c9dc  40 50 8d e2                                      add r5, sp, #0x40
0080c9e0  00 60 a0 e3                                      mov r6, #0
0080c9e4  20 60 65 e5                                      strb r6, [r5, #-0x20]!
0080c9e8  04 70 8a e2                                      add r7, sl, #4
0080c9ec  05 10 a0 e1                                      mov r1, r5
0080c9f0  07 00 a0 e1                                      mov r0, r7
0080c9f4  24 60 8d e5                                      str r6, [sp, #0x24]
0080c9f8  28 50 8d e5                                      str r5, [sp, #0x28]
0080c9fc  2c 50 8d e5                                      str r5, [sp, #0x2c]
0080ca00  30 60 8d e5                                      str r6, [sp, #0x30]
0080ca04  34 fe ff eb                                      bl #0x80c2dc
0080ca08  0a 30 a0 e1                                      mov r3, sl
0080ca0c  08 10 a0 e1                                      mov r1, r8
0080ca10  3c 00 8d e2                                      add r0, sp, #0x3c
0080ca14  38 20 8d e2                                      add r2, sp, #0x38
0080ca18  38 40 8d e5                                      str r4, [sp, #0x38]
0080ca1c  f7 fe ff eb                                      bl #0x80c600
0080ca20  18 30 9d e5                                      ldr r3, [sp, #0x18]
0080ca24  3c 40 9d e5                                      ldr r4, [sp, #0x3c]
0080ca28  06 00 53 e1                                      cmp r3, r6
0080ca2c  0b 00 00 1a                                      bne #0x80ca60
0080ca30  30 30 9d e5                                      ldr r3, [sp, #0x30]
0080ca34  00 00 53 e3                                      cmp r3, #0
0080ca38  03 00 00 1a                                      bne #0x80ca4c
0080ca3c  04 00 a0 e1                                      mov r0, r4
0080ca40  14 00 80 e2                                      add r0, r0, #0x14
0080ca44  44 d0 8d e2                                      add sp, sp, #0x44
0080ca48  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0080ca4c  05 00 a0 e1                                      mov r0, r5
0080ca50  24 10 9d e5                                      ldr r1, [sp, #0x24]
0080ca54  5c f8 ff eb                                      bl #0x80abcc
0080ca58  04 00 a0 e1                                      mov r0, r4
0080ca5c  f7 ff ff ea                                      b #0x80ca40
0080ca60  07 00 a0 e1                                      mov r0, r7
0080ca64  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0080ca68  57 f8 ff eb                                      bl #0x80abcc
0080ca6c  30 30 9d e5                                      ldr r3, [sp, #0x30]
0080ca70  14 70 8d e5                                      str r7, [sp, #0x14]
0080ca74  18 60 8d e5                                      str r6, [sp, #0x18]
0080ca78  00 00 53 e3                                      cmp r3, #0
0080ca7c  10 70 8d e5                                      str r7, [sp, #0x10]
0080ca80  0c 60 8d e5                                      str r6, [sp, #0xc]
0080ca84  ec ff ff 0a                                      beq #0x80ca3c
0080ca88  ef ff ff ea                                      b #0x80ca4c
0080ca8c  00 10 91 e5                                      ldr r1, [r1]
0080ca90  00 40 a0 e1                                      mov r4, r0
0080ca94  c8 ff ff ea                                      b #0x80c9bc

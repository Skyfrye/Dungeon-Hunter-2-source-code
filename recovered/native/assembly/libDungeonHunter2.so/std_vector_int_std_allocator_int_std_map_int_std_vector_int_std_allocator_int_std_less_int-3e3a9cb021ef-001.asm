; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008124f0, declared_size=280, range_size=280, mode=arm
; class-group: std::vector<int, std::allocator<int> >& std::map<int, std::vector<int, std::allocator<int> >, std::less<int>, std::allocator<std::pair<int const, std::vector<int, std::allocator<int> > > > >
; alias: _ZNSt3mapIiSt6vectorIiSaIiEESt4lessIiESaISt4pairIKiS2_EEEixIiEERS2_RKT_
; demangled: std::vector<int, std::allocator<int> >& std::map<int, std::vector<int, std::allocator<int> >, std::less<int>, std::allocator<std::pair<int const, std::vector<int, std::allocator<int> > > > >::operator[]<int>(int const&)
; decoder-mode: arm
008124f0  70 40 2d e9                                      push {r4, r5, r6, lr}
008124f4  04 40 90 e5                                      ldr r4, [r0, #4]
008124f8  28 d0 4d e2                                      sub sp, sp, #0x28
008124fc  00 50 a0 e1                                      mov r5, r0
00812500  00 00 54 e3                                      cmp r4, #0
00812504  3c 00 00 0a                                      beq #0x8125fc
00812508  00 10 91 e5                                      ldr r1, [r1]
0081250c  00 20 a0 e1                                      mov r2, r0
00812510  00 00 00 ea                                      b #0x812518
00812514  03 40 a0 e1                                      mov r4, r3
00812518  10 30 94 e5                                      ldr r3, [r4, #0x10]
0081251c  03 00 51 e1                                      cmp r1, r3
00812520  0c 30 94 c5                                      ldrgt r3, [r4, #0xc]
00812524  08 30 94 d5                                      ldrle r3, [r4, #8]
00812528  02 40 a0 c1                                      movgt r4, r2
0081252c  04 20 a0 e1                                      mov r2, r4
00812530  00 00 53 e3                                      cmp r3, #0
00812534  f6 ff ff 1a                                      bne #0x812514
00812538  04 00 55 e1                                      cmp r5, r4
0081253c  03 00 00 0a                                      beq #0x812550
00812540  10 30 94 e5                                      ldr r3, [r4, #0x10]
00812544  04 00 a0 e1                                      mov r0, r4
00812548  03 00 51 e1                                      cmp r1, r3
0081254c  22 00 00 aa                                      bge #0x8125dc
00812550  28 60 8d e2                                      add r6, sp, #0x28
00812554  24 10 26 e5                                      str r1, [r6, #-0x24]!
00812558  00 30 a0 e3                                      mov r3, #0
0081255c  14 10 8d e2                                      add r1, sp, #0x14
00812560  04 00 86 e2                                      add r0, r6, #4
00812564  1c 30 8d e5                                      str r3, [sp, #0x1c]
00812568  14 30 8d e5                                      str r3, [sp, #0x14]
0081256c  18 30 8d e5                                      str r3, [sp, #0x18]
00812570  e2 b5 ed eb                                      bl #0x37fd00
00812574  24 00 8d e2                                      add r0, sp, #0x24
00812578  05 10 a0 e1                                      mov r1, r5
0081257c  06 30 a0 e1                                      mov r3, r6
00812580  20 20 8d e2                                      add r2, sp, #0x20
00812584  20 40 8d e5                                      str r4, [sp, #0x20]
00812588  fb fe ff eb                                      bl #0x81217c
0081258c  08 00 9d e5                                      ldr r0, [sp, #8]
00812590  24 40 9d e5                                      ldr r4, [sp, #0x24]
00812594  00 00 50 e3                                      cmp r0, #0
00812598  05 00 00 0a                                      beq #0x8125b4
0081259c  10 10 9d e5                                      ldr r1, [sp, #0x10]
008125a0  01 10 60 e0                                      rsb r1, r0, r1
008125a4  03 10 c1 e3                                      bic r1, r1, #3
008125a8  80 00 51 e3                                      cmp r1, #0x80
008125ac  10 00 00 8a                                      bhi #0x8125f4
008125b0  60 af 02 eb                                      bl #0x8be338
008125b4  14 00 9d e5                                      ldr r0, [sp, #0x14]
008125b8  00 00 50 e3                                      cmp r0, #0
008125bc  05 00 00 0a                                      beq #0x8125d8
008125c0  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
008125c4  01 10 60 e0                                      rsb r1, r0, r1
008125c8  03 10 c1 e3                                      bic r1, r1, #3
008125cc  80 00 51 e3                                      cmp r1, #0x80
008125d0  04 00 00 8a                                      bhi #0x8125e8
008125d4  57 af 02 eb                                      bl #0x8be338
008125d8  04 00 a0 e1                                      mov r0, r4
008125dc  14 00 80 e2                                      add r0, r0, #0x14
008125e0  28 d0 8d e2                                      add sp, sp, #0x28
008125e4  70 80 bd e8                                      pop {r4, r5, r6, pc}
008125e8  94 f7 eb eb                                      bl #0x310440
008125ec  04 00 a0 e1                                      mov r0, r4
008125f0  f9 ff ff ea                                      b #0x8125dc
008125f4  91 f7 eb eb                                      bl #0x310440
008125f8  ed ff ff ea                                      b #0x8125b4
008125fc  00 10 91 e5                                      ldr r1, [r1]
00812600  00 40 a0 e1                                      mov r4, r0
00812604  cb ff ff ea                                      b #0x812538

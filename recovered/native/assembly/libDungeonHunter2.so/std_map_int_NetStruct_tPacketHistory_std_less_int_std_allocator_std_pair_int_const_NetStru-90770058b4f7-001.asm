; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00814018, declared_size=292, range_size=292, mode=arm
; class-group: std::map<int, NetStruct::tPacketHistory, std::less<int>, std::allocator<std::pair<int const, NetStruct::tPacketHistory> > >& std::map<int, std::map<int, NetStruct::tPacketHistory, std::less<int>, std::allocator<std::pair<int const, NetStruct::tPacketHistory> > >, std::less<int>, std::allocator<std::pair<int const, std::map<int, NetStruct::tPacketHistory, std::less<int>, std::allocator<std::pair<int const, NetStruct::tPacketHistory> > > > > >
; alias: _ZNSt3mapIiS_IiN9NetStruct14tPacketHistoryESt4lessIiESaISt4pairIKiS1_EEES3_SaIS4_IS5_S8_EEEixIiEERS8_RKT_
; demangled: std::map<int, NetStruct::tPacketHistory, std::less<int>, std::allocator<std::pair<int const, NetStruct::tPacketHistory> > >& std::map<int, std::map<int, NetStruct::tPacketHistory, std::less<int>, std::allocator<std::pair<int const, NetStruct::tPacketHistory> > >, std::less<int>, std::allocator<std::pair<int const, std::map<int, NetStruct::tPacketHistory, std::less<int>, std::allocator<std::pair<int const, NetStruct::tPacketHistory> > > > > >::operator[]<int>(int const&)
; decoder-mode: arm
00814018  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0081401c  04 40 90 e5                                      ldr r4, [r0, #4]
00814020  44 d0 4d e2                                      sub sp, sp, #0x44
00814024  00 80 a0 e1                                      mov r8, r0
00814028  00 00 54 e3                                      cmp r4, #0
0081402c  3f 00 00 0a                                      beq #0x814130
00814030  00 10 91 e5                                      ldr r1, [r1]
00814034  00 20 a0 e1                                      mov r2, r0
00814038  00 00 00 ea                                      b #0x814040
0081403c  03 40 a0 e1                                      mov r4, r3
00814040  10 30 94 e5                                      ldr r3, [r4, #0x10]
00814044  03 00 51 e1                                      cmp r1, r3
00814048  0c 30 94 c5                                      ldrgt r3, [r4, #0xc]
0081404c  08 30 94 d5                                      ldrle r3, [r4, #8]
00814050  02 40 a0 c1                                      movgt r4, r2
00814054  04 20 a0 e1                                      mov r2, r4
00814058  00 00 53 e3                                      cmp r3, #0
0081405c  f6 ff ff 1a                                      bne #0x81403c
00814060  04 00 58 e1                                      cmp r8, r4
00814064  03 00 00 0a                                      beq #0x814078
00814068  10 30 94 e5                                      ldr r3, [r4, #0x10]
0081406c  04 00 a0 e1                                      mov r0, r4
00814070  03 00 51 e1                                      cmp r1, r3
00814074  1a 00 00 aa                                      bge #0x8140e4
00814078  40 a0 8d e2                                      add sl, sp, #0x40
0081407c  3c 10 2a e5                                      str r1, [sl, #-0x3c]!
00814080  40 50 8d e2                                      add r5, sp, #0x40
00814084  00 60 a0 e3                                      mov r6, #0
00814088  20 60 65 e5                                      strb r6, [r5, #-0x20]!
0081408c  04 70 8a e2                                      add r7, sl, #4
00814090  05 10 a0 e1                                      mov r1, r5
00814094  07 00 a0 e1                                      mov r0, r7
00814098  24 60 8d e5                                      str r6, [sp, #0x24]
0081409c  28 50 8d e5                                      str r5, [sp, #0x28]
008140a0  2c 50 8d e5                                      str r5, [sp, #0x2c]
008140a4  30 60 8d e5                                      str r6, [sp, #0x30]
008140a8  6d 8c ed eb                                      bl #0x377264
008140ac  0a 30 a0 e1                                      mov r3, sl
008140b0  08 10 a0 e1                                      mov r1, r8
008140b4  3c 00 8d e2                                      add r0, sp, #0x3c
008140b8  38 20 8d e2                                      add r2, sp, #0x38
008140bc  38 40 8d e5                                      str r4, [sp, #0x38]
008140c0  f7 fe ff eb                                      bl #0x813ca4
008140c4  18 30 9d e5                                      ldr r3, [sp, #0x18]
008140c8  3c 40 9d e5                                      ldr r4, [sp, #0x3c]
008140cc  06 00 53 e1                                      cmp r3, r6
008140d0  0b 00 00 1a                                      bne #0x814104
008140d4  30 30 9d e5                                      ldr r3, [sp, #0x30]
008140d8  00 00 53 e3                                      cmp r3, #0
008140dc  03 00 00 1a                                      bne #0x8140f0
008140e0  04 00 a0 e1                                      mov r0, r4
008140e4  14 00 80 e2                                      add r0, r0, #0x14
008140e8  44 d0 8d e2                                      add sp, sp, #0x44
008140ec  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
008140f0  05 00 a0 e1                                      mov r0, r5
008140f4  24 10 9d e5                                      ldr r1, [sp, #0x24]
008140f8  a6 73 ed eb                                      bl #0x370f98
008140fc  04 00 a0 e1                                      mov r0, r4
00814100  f7 ff ff ea                                      b #0x8140e4
00814104  07 00 a0 e1                                      mov r0, r7
00814108  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0081410c  a1 73 ed eb                                      bl #0x370f98
00814110  30 30 9d e5                                      ldr r3, [sp, #0x30]
00814114  14 70 8d e5                                      str r7, [sp, #0x14]
00814118  18 60 8d e5                                      str r6, [sp, #0x18]
0081411c  00 00 53 e3                                      cmp r3, #0
00814120  10 70 8d e5                                      str r7, [sp, #0x10]
00814124  0c 60 8d e5                                      str r6, [sp, #0xc]
00814128  ec ff ff 0a                                      beq #0x8140e0
0081412c  ef ff ff ea                                      b #0x8140f0
00814130  00 10 91 e5                                      ldr r1, [r1]
00814134  00 40 a0 e1                                      mov r4, r0
00814138  c8 ff ff ea                                      b #0x814060

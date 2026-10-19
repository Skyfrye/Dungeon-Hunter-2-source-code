; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008201fc, declared_size=284, range_size=284, mode=arm
; class-group: CRoomAttributes& std::map<unsigned long long, CRoomAttributes, std::less<unsigned long long>, std::allocator<std::pair<unsigned long long const, CRoomAttributes> > >
; alias: _ZNSt3mapIy15CRoomAttributesSt4lessIyESaISt4pairIKyS0_EEEixIyEERS0_RKT_
; demangled: CRoomAttributes& std::map<unsigned long long, CRoomAttributes, std::less<unsigned long long>, std::allocator<std::pair<unsigned long long const, CRoomAttributes> > >::operator[]<unsigned long long>(unsigned long long const&)
; decoder-mode: arm
008201fc  f0 4d 2d e9                                      push {r4, r5, r6, r7, r8, sl, fp, lr}
00820200  04 40 90 e5                                      ldr r4, [r0, #4]
00820204  1d dd 4d e2                                      sub sp, sp, #0x740
00820208  00 70 a0 e1                                      mov r7, r0
0082020c  00 00 54 e3                                      cmp r4, #0
00820210  01 60 a0 e1                                      mov r6, r1
00820214  00 40 a0 01                                      moveq r4, r0
00820218  13 00 00 0a                                      beq #0x82026c
0082021c  03 00 91 e8                                      ldm r1, {r0, r1}
00820220  07 20 a0 e1                                      mov r2, r7
00820224  14 30 94 e5                                      ldr r3, [r4, #0x14]
00820228  01 00 53 e1                                      cmp r3, r1
0082022c  09 00 00 3a                                      blo #0x820258
00820230  05 00 00 0a                                      beq #0x82024c
00820234  08 30 94 e5                                      ldr r3, [r4, #8]
00820238  04 20 a0 e1                                      mov r2, r4
0082023c  00 00 53 e3                                      cmp r3, #0
00820240  09 00 00 0a                                      beq #0x82026c
00820244  03 40 a0 e1                                      mov r4, r3
00820248  f5 ff ff ea                                      b #0x820224
0082024c  10 30 94 e5                                      ldr r3, [r4, #0x10]
00820250  00 00 53 e1                                      cmp r3, r0
00820254  f6 ff ff 2a                                      bhs #0x820234
00820258  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0082025c  02 40 a0 e1                                      mov r4, r2
00820260  04 20 a0 e1                                      mov r2, r4
00820264  00 00 53 e3                                      cmp r3, #0
00820268  f5 ff ff 1a                                      bne #0x820244
0082026c  04 00 57 e1                                      cmp r7, r4
00820270  0c 00 00 0a                                      beq #0x8202a8
00820274  14 20 94 e5                                      ldr r2, [r4, #0x14]
00820278  04 30 96 e5                                      ldr r3, [r6, #4]
0082027c  04 00 a0 e1                                      mov r0, r4
00820280  03 00 52 e1                                      cmp r2, r3
00820284  07 00 00 8a                                      bhi #0x8202a8
00820288  02 00 00 0a                                      beq #0x820298
0082028c  18 00 80 e2                                      add r0, r0, #0x18
00820290  1d dd 8d e2                                      add sp, sp, #0x740
00820294  f0 8d bd e8                                      pop {r4, r5, r6, r7, r8, sl, fp, pc}
00820298  10 20 94 e5                                      ldr r2, [r4, #0x10]
0082029c  00 30 96 e5                                      ldr r3, [r6]
008202a0  03 00 52 e1                                      cmp r2, r3
008202a4  f8 ff ff 9a                                      bls #0x82028c
008202a8  3a 5e 8d e2                                      add r5, sp, #0x3a0
008202ac  05 00 a0 e1                                      mov r0, r5
008202b0  b3 e3 ff eb                                      bl #0x819184
008202b4  d0 a0 c6 e1                                      ldrd sl, fp, [r6]
008202b8  23 33 a0 e3                                      mov r3, #0x8c000000
008202bc  43 3a a0 e1                                      asr r3, r3, #0x14
008202c0  1d 2d 8d e2                                      add r2, sp, #0x740
008202c4  08 60 8d e2                                      add r6, sp, #8
008202c8  f3 a0 82 e1                                      strd sl, fp, [r2, r3]
008202cc  05 10 a0 e1                                      mov r1, r5
008202d0  06 00 a0 e1                                      mov r0, r6
008202d4  5d e3 ff eb                                      bl #0x819050
008202d8  73 2e 8d e2                                      add r2, sp, #0x730
008202dc  73 0e 8d e2                                      add r0, sp, #0x730
008202e0  07 10 a0 e1                                      mov r1, r7
008202e4  0d 30 a0 e1                                      mov r3, sp
008202e8  08 20 82 e2                                      add r2, r2, #8
008202ec  0c 00 80 e2                                      add r0, r0, #0xc
008202f0  38 47 8d e5                                      str r4, [sp, #0x738]
008202f4  cc fe ff eb                                      bl #0x81fe2c
008202f8  3c 47 9d e5                                      ldr r4, [sp, #0x73c]
008202fc  06 00 a0 e1                                      mov r0, r6
00820300  43 e2 ff eb                                      bl #0x818c14
00820304  05 00 a0 e1                                      mov r0, r5
00820308  41 e2 ff eb                                      bl #0x818c14
0082030c  0d 80 a0 e1                                      mov r8, sp
00820310  04 00 a0 e1                                      mov r0, r4
00820314  dc ff ff ea                                      b #0x82028c

; FUNCTION 0x008203ec, declared_size=284, range_size=284, mode=arm
; class-group: CRoomAttributes& std::map<unsigned long long, CRoomAttributes, std::less<unsigned long long>, std::allocator<std::pair<unsigned long long const, CRoomAttributes> > >
; alias: _ZNSt3mapIy15CRoomAttributesSt4lessIyESaISt4pairIKyS0_EEEixIiEERS0_RKT_
; demangled: CRoomAttributes& std::map<unsigned long long, CRoomAttributes, std::less<unsigned long long>, std::allocator<std::pair<unsigned long long const, CRoomAttributes> > >::operator[]<int>(int const&)
; decoder-mode: arm
008203ec  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
008203f0  04 40 90 e5                                      ldr r4, [r0, #4]
008203f4  1d dd 4d e2                                      sub sp, sp, #0x740
008203f8  00 70 a0 e1                                      mov r7, r0
008203fc  00 00 54 e3                                      cmp r4, #0
00820400  3c 00 00 0a                                      beq #0x8204f8
00820404  00 80 91 e5                                      ldr r8, [r1]
00820408  00 20 a0 e1                                      mov r2, r0
0082040c  c8 9f a0 e1                                      asr sb, r8, #0x1f
00820410  14 30 94 e5                                      ldr r3, [r4, #0x14]
00820414  09 00 53 e1                                      cmp r3, sb
00820418  09 00 00 3a                                      blo #0x820444
0082041c  05 00 00 0a                                      beq #0x820438
00820420  08 30 94 e5                                      ldr r3, [r4, #8]
00820424  04 20 a0 e1                                      mov r2, r4
00820428  00 00 53 e3                                      cmp r3, #0
0082042c  09 00 00 0a                                      beq #0x820458
00820430  03 40 a0 e1                                      mov r4, r3
00820434  f5 ff ff ea                                      b #0x820410
00820438  10 30 94 e5                                      ldr r3, [r4, #0x10]
0082043c  08 00 53 e1                                      cmp r3, r8
00820440  f6 ff ff 2a                                      bhs #0x820420
00820444  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00820448  02 40 a0 e1                                      mov r4, r2
0082044c  04 20 a0 e1                                      mov r2, r4
00820450  00 00 53 e3                                      cmp r3, #0
00820454  f5 ff ff 1a                                      bne #0x820430
00820458  04 00 57 e1                                      cmp r7, r4
0082045c  0a 00 00 0a                                      beq #0x82048c
00820460  14 30 94 e5                                      ldr r3, [r4, #0x14]
00820464  04 00 a0 e1                                      mov r0, r4
00820468  09 00 53 e1                                      cmp r3, sb
0082046c  06 00 00 8a                                      bhi #0x82048c
00820470  02 00 00 0a                                      beq #0x820480
00820474  18 00 80 e2                                      add r0, r0, #0x18
00820478  1d dd 8d e2                                      add sp, sp, #0x740
0082047c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00820480  10 30 94 e5                                      ldr r3, [r4, #0x10]
00820484  08 00 53 e1                                      cmp r3, r8
00820488  f9 ff ff 9a                                      bls #0x820474
0082048c  3a 5e 8d e2                                      add r5, sp, #0x3a0
00820490  05 00 a0 e1                                      mov r0, r5
00820494  3a e3 ff eb                                      bl #0x819184
00820498  23 33 a0 e3                                      mov r3, #0x8c000000
0082049c  43 3a a0 e1                                      asr r3, r3, #0x14
008204a0  1d 2d 8d e2                                      add r2, sp, #0x740
008204a4  08 60 8d e2                                      add r6, sp, #8
008204a8  f3 80 82 e1                                      strd r8, sb, [r2, r3]
008204ac  05 10 a0 e1                                      mov r1, r5
008204b0  06 00 a0 e1                                      mov r0, r6
008204b4  e5 e2 ff eb                                      bl #0x819050
008204b8  73 2e 8d e2                                      add r2, sp, #0x730
008204bc  73 0e 8d e2                                      add r0, sp, #0x730
008204c0  07 10 a0 e1                                      mov r1, r7
008204c4  0d 30 a0 e1                                      mov r3, sp
008204c8  08 20 82 e2                                      add r2, r2, #8
008204cc  0c 00 80 e2                                      add r0, r0, #0xc
008204d0  38 47 8d e5                                      str r4, [sp, #0x738]
008204d4  54 fe ff eb                                      bl #0x81fe2c
008204d8  3c 47 9d e5                                      ldr r4, [sp, #0x73c]
008204dc  06 00 a0 e1                                      mov r0, r6
008204e0  cb e1 ff eb                                      bl #0x818c14
008204e4  05 00 a0 e1                                      mov r0, r5
008204e8  c9 e1 ff eb                                      bl #0x818c14
008204ec  0d a0 a0 e1                                      mov sl, sp
008204f0  04 00 a0 e1                                      mov r0, r4
008204f4  de ff ff ea                                      b #0x820474
008204f8  00 80 91 e5                                      ldr r8, [r1]
008204fc  00 40 a0 e1                                      mov r4, r0
00820500  c8 9f a0 e1                                      asr sb, r8, #0x1f
00820504  d3 ff ff ea                                      b #0x820458

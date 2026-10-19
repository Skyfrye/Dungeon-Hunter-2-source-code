; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00819c08, declared_size=92, range_size=92, mode=arm
; class-group: std::vector<CRoomSearchFilter::tSearchFilterInt, std::allocator<CRoomSearchFilter::tSearchFilterInt> >
; alias: _ZNSt6vectorIN17CRoomSearchFilter16tSearchFilterIntESaIS1_EED1Ev
; demangled: std::vector<CRoomSearchFilter::tSearchFilterInt, std::allocator<CRoomSearchFilter::tSearchFilterInt> >::~vector()
; decoder-mode: arm
00819c08  10 40 2d e9                                      push {r4, lr}
00819c0c  00 40 a0 e1                                      mov r4, r0
00819c10  00 00 90 e5                                      ldr r0, [r0]
00819c14  00 00 50 e3                                      cmp r0, #0
00819c18  0c 00 00 0a                                      beq #0x819c50
00819c1c  08 30 94 e5                                      ldr r3, [r4, #8]
00819c20  03 30 60 e0                                      rsb r3, r0, r3
00819c24  43 31 a0 e1                                      asr r3, r3, #2
00819c28  03 11 83 e0                                      add r1, r3, r3, lsl #2
00819c2c  01 12 81 e0                                      add r1, r1, r1, lsl #4
00819c30  01 14 81 e0                                      add r1, r1, r1, lsl #8
00819c34  01 18 81 e0                                      add r1, r1, r1, lsl #16
00819c38  81 30 83 e0                                      add r3, r3, r1, lsl #1
00819c3c  0c 10 a0 e3                                      mov r1, #0xc
00819c40  91 03 01 e0                                      mul r1, r1, r3
00819c44  80 00 51 e3                                      cmp r1, #0x80
00819c48  02 00 00 8a                                      bhi #0x819c58
00819c4c  b9 91 02 eb                                      bl #0x8be338
00819c50  04 00 a0 e1                                      mov r0, r4
00819c54  10 80 bd e8                                      pop {r4, pc}
00819c58  f8 d9 eb eb                                      bl #0x310440
00819c5c  04 00 a0 e1                                      mov r0, r4
00819c60  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0081a144, declared_size=672, range_size=672, mode=arm
; class-group: std::vector<CRoomSearchFilter::tSearchFilterInt, std::allocator<CRoomSearchFilter::tSearchFilterInt> >
; alias: _ZNSt6vectorIN17CRoomSearchFilter16tSearchFilterIntESaIS1_EEaSERKS3_
; demangled: std::vector<CRoomSearchFilter::tSearchFilterInt, std::allocator<CRoomSearchFilter::tSearchFilterInt> >::operator=(std::vector<CRoomSearchFilter::tSearchFilterInt, std::allocator<CRoomSearchFilter::tSearchFilterInt> > const&)
; decoder-mode: arm
0081a144  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0081a148  00 00 51 e1                                      cmp r1, r0
0081a14c  0c d0 4d e2                                      sub sp, sp, #0xc
0081a150  00 40 a0 e1                                      mov r4, r0
0081a154  32 00 00 0a                                      beq #0x81a224
0081a158  00 60 90 e5                                      ldr r6, [r0]
0081a15c  0c 00 91 e8                                      ldm r1, {r2, r3}
0081a160  08 c0 90 e5                                      ldr ip, [r0, #8]
0081a164  06 80 a0 e1                                      mov r8, r6
0081a168  03 70 62 e0                                      rsb r7, r2, r3
0081a16c  0c c0 66 e0                                      rsb ip, r6, ip
0081a170  47 71 a0 e1                                      asr r7, r7, #2
0081a174  4c c1 a0 e1                                      asr ip, ip, #2
0081a178  07 51 87 e0                                      add r5, r7, r7, lsl #2
0081a17c  0c a1 8c e0                                      add sl, ip, ip, lsl #2
0081a180  05 52 85 e0                                      add r5, r5, r5, lsl #4
0081a184  0a a2 8a e0                                      add sl, sl, sl, lsl #4
0081a188  05 54 85 e0                                      add r5, r5, r5, lsl #8
0081a18c  0a a4 8a e0                                      add sl, sl, sl, lsl #8
0081a190  05 58 85 e0                                      add r5, r5, r5, lsl #16
0081a194  0a a8 8a e0                                      add sl, sl, sl, lsl #16
0081a198  85 50 87 e0                                      add r5, r7, r5, lsl #1
0081a19c  8a c0 8c e0                                      add ip, ip, sl, lsl #1
0081a1a0  0c 00 55 e1                                      cmp r5, ip
0081a1a4  05 c0 a0 e1                                      mov ip, r5
0081a1a8  5f 00 00 8a                                      bhi #0x81a32c
0081a1ac  04 a0 90 e5                                      ldr sl, [r0, #4]
0081a1b0  0a 00 66 e0                                      rsb r0, r6, sl
0081a1b4  40 01 a0 e1                                      asr r0, r0, #2
0081a1b8  00 71 80 e0                                      add r7, r0, r0, lsl #2
0081a1bc  07 72 87 e0                                      add r7, r7, r7, lsl #4
0081a1c0  07 74 87 e0                                      add r7, r7, r7, lsl #8
0081a1c4  07 78 87 e0                                      add r7, r7, r7, lsl #16
0081a1c8  87 00 80 e0                                      add r0, r0, r7, lsl #1
0081a1cc  00 00 55 e1                                      cmp r5, r0
0081a1d0  16 00 00 8a                                      bhi #0x81a230
0081a1d4  00 00 55 e3                                      cmp r5, #0
0081a1d8  0e 00 00 da                                      ble #0x81a218
0081a1dc  00 30 a0 e3                                      mov r3, #0
0081a1e0  03 10 92 e7                                      ldr r1, [r2, r3]
0081a1e4  03 00 82 e0                                      add r0, r2, r3
0081a1e8  04 00 80 e2                                      add r0, r0, #4
0081a1ec  03 10 86 e7                                      str r1, [r6, r3]
0081a1f0  04 70 90 e4                                      ldr r7, [r0], #4
0081a1f4  03 10 86 e0                                      add r1, r6, r3
0081a1f8  04 10 81 e2                                      add r1, r1, #4
0081a1fc  04 70 81 e4                                      str r7, [r1], #4
0081a200  00 00 90 e5                                      ldr r0, [r0]
0081a204  01 c0 5c e2                                      subs ip, ip, #1
0081a208  0c 30 83 e2                                      add r3, r3, #0xc
0081a20c  00 00 81 e5                                      str r0, [r1]
0081a210  f2 ff ff 1a                                      bne #0x81a1e0
0081a214  00 60 94 e5                                      ldr r6, [r4]
0081a218  0c 30 a0 e3                                      mov r3, #0xc
0081a21c  93 65 25 e0                                      mla r5, r3, r5, r6
0081a220  04 50 84 e5                                      str r5, [r4, #4]
0081a224  04 00 a0 e1                                      mov r0, r4
0081a228  0c d0 8d e2                                      add sp, sp, #0xc
0081a22c  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0081a230  0c c0 a0 e3                                      mov ip, #0xc
0081a234  9c 20 2c e0                                      mla ip, ip, r0, r2
0081a238  0c 00 62 e0                                      rsb r0, r2, ip
0081a23c  40 01 a0 e1                                      asr r0, r0, #2
0081a240  00 71 80 e0                                      add r7, r0, r0, lsl #2
0081a244  07 72 87 e0                                      add r7, r7, r7, lsl #4
0081a248  07 74 87 e0                                      add r7, r7, r7, lsl #8
0081a24c  07 78 87 e0                                      add r7, r7, r7, lsl #16
0081a250  87 70 80 e0                                      add r7, r0, r7, lsl #1
0081a254  00 00 57 e3                                      cmp r7, #0
0081a258  0a 60 a0 d1                                      movle r6, sl
0081a25c  19 00 00 da                                      ble #0x81a2c8
0081a260  00 30 a0 e3                                      mov r3, #0
0081a264  03 00 92 e7                                      ldr r0, [r2, r3]
0081a268  03 c0 82 e0                                      add ip, r2, r3
0081a26c  04 c0 8c e2                                      add ip, ip, #4
0081a270  03 00 86 e7                                      str r0, [r6, r3]
0081a274  04 80 9c e4                                      ldr r8, [ip], #4
0081a278  03 00 86 e0                                      add r0, r6, r3
0081a27c  04 00 80 e2                                      add r0, r0, #4
0081a280  04 80 80 e4                                      str r8, [r0], #4
0081a284  00 c0 9c e5                                      ldr ip, [ip]
0081a288  01 70 57 e2                                      subs r7, r7, #1
0081a28c  0c 30 83 e2                                      add r3, r3, #0xc
0081a290  00 c0 80 e5                                      str ip, [r0]
0081a294  f2 ff ff 1a                                      bne #0x81a264
0081a298  04 60 94 e5                                      ldr r6, [r4, #4]
0081a29c  00 80 94 e5                                      ldr r8, [r4]
0081a2a0  09 00 91 e8                                      ldm r1, {r0, r3}
0081a2a4  06 20 68 e0                                      rsb r2, r8, r6
0081a2a8  42 21 a0 e1                                      asr r2, r2, #2
0081a2ac  0c c0 a0 e3                                      mov ip, #0xc
0081a2b0  02 11 82 e0                                      add r1, r2, r2, lsl #2
0081a2b4  01 12 81 e0                                      add r1, r1, r1, lsl #4
0081a2b8  01 14 81 e0                                      add r1, r1, r1, lsl #8
0081a2bc  01 18 81 e0                                      add r1, r1, r1, lsl #16
0081a2c0  81 20 82 e0                                      add r2, r2, r1, lsl #1
0081a2c4  9c 02 2c e0                                      mla ip, ip, r2, r0
0081a2c8  03 30 6c e0                                      rsb r3, ip, r3
0081a2cc  43 21 a0 e1                                      asr r2, r3, #2
0081a2d0  02 31 82 e0                                      add r3, r2, r2, lsl #2
0081a2d4  03 32 83 e0                                      add r3, r3, r3, lsl #4
0081a2d8  03 34 83 e0                                      add r3, r3, r3, lsl #8
0081a2dc  03 38 83 e0                                      add r3, r3, r3, lsl #16
0081a2e0  83 30 82 e0                                      add r3, r2, r3, lsl #1
0081a2e4  00 00 53 e3                                      cmp r3, #0
0081a2e8  08 60 a0 d1                                      movle r6, r8
0081a2ec  c9 ff ff da                                      ble #0x81a218
0081a2f0  00 20 a0 e3                                      mov r2, #0
0081a2f4  02 10 9c e7                                      ldr r1, [ip, r2]
0081a2f8  02 00 8c e0                                      add r0, ip, r2
0081a2fc  04 00 80 e2                                      add r0, r0, #4
0081a300  02 10 86 e7                                      str r1, [r6, r2]
0081a304  04 70 90 e4                                      ldr r7, [r0], #4
0081a308  02 10 86 e0                                      add r1, r6, r2
0081a30c  04 10 81 e2                                      add r1, r1, #4
0081a310  04 70 81 e4                                      str r7, [r1], #4
0081a314  00 00 90 e5                                      ldr r0, [r0]
0081a318  01 30 53 e2                                      subs r3, r3, #1
0081a31c  0c 20 82 e2                                      add r2, r2, #0xc
0081a320  00 00 81 e5                                      str r0, [r1]
0081a324  f2 ff ff 1a                                      bne #0x81a2f4
0081a328  b9 ff ff ea                                      b #0x81a214
0081a32c  08 10 8d e2                                      add r1, sp, #8
0081a330  04 50 21 e5                                      str r5, [r1, #-4]!
0081a334  fc fd ff eb                                      bl #0x819b2c
0081a338  04 30 94 e5                                      ldr r3, [r4, #4]
0081a33c  00 60 a0 e1                                      mov r6, r0
0081a340  00 00 94 e5                                      ldr r0, [r4]
0081a344  00 00 53 e1                                      cmp r3, r0
0081a348  0e 00 00 0a                                      beq #0x81a388
0081a34c  0c 20 43 e2                                      sub r2, r3, #0xc
0081a350  02 20 60 e0                                      rsb r2, r0, r2
0081a354  22 21 a0 e1                                      lsr r2, r2, #2
0081a358  02 11 82 e0                                      add r1, r2, r2, lsl #2
0081a35c  81 12 81 e0                                      add r1, r1, r1, lsl #5
0081a360  81 10 82 e0                                      add r1, r2, r1, lsl #1
0081a364  81 12 81 e0                                      add r1, r1, r1, lsl #5
0081a368  81 c7 a0 e1                                      lsl ip, r1, #0xf
0081a36c  0c 10 61 e0                                      rsb r1, r1, ip
0081a370  81 20 82 e0                                      add r2, r2, r1, lsl #1
0081a374  03 21 c2 e3                                      bic r2, r2, #0xc0000000
0081a378  0b 10 e0 e3                                      mvn r1, #0xb
0081a37c  91 02 02 e0                                      mul r2, r1, r2
0081a380  01 20 82 e0                                      add r2, r2, r1
0081a384  02 30 83 e0                                      add r3, r3, r2
0081a388  00 00 53 e3                                      cmp r3, #0
0081a38c  08 20 94 e5                                      ldr r2, [r4, #8]
0081a390  0b 00 00 0a                                      beq #0x81a3c4
0081a394  02 30 63 e0                                      rsb r3, r3, r2
0081a398  43 31 a0 e1                                      asr r3, r3, #2
0081a39c  03 11 83 e0                                      add r1, r3, r3, lsl #2
0081a3a0  01 12 81 e0                                      add r1, r1, r1, lsl #4
0081a3a4  01 14 81 e0                                      add r1, r1, r1, lsl #8
0081a3a8  01 18 81 e0                                      add r1, r1, r1, lsl #16
0081a3ac  81 30 83 e0                                      add r3, r3, r1, lsl #1
0081a3b0  0c 10 a0 e3                                      mov r1, #0xc
0081a3b4  91 03 01 e0                                      mul r1, r1, r3
0081a3b8  80 00 51 e3                                      cmp r1, #0x80
0081a3bc  06 00 00 8a                                      bhi #0x81a3dc
0081a3c0  dc 8f 02 eb                                      bl #0x8be338
0081a3c4  04 30 9d e5                                      ldr r3, [sp, #4]
0081a3c8  0c 20 a0 e3                                      mov r2, #0xc
0081a3cc  00 60 84 e5                                      str r6, [r4]
0081a3d0  92 63 23 e0                                      mla r3, r2, r3, r6
0081a3d4  08 30 84 e5                                      str r3, [r4, #8]
0081a3d8  8e ff ff ea                                      b #0x81a218
0081a3dc  17 d8 eb eb                                      bl #0x310440
0081a3e0  f7 ff ff ea                                      b #0x81a3c4

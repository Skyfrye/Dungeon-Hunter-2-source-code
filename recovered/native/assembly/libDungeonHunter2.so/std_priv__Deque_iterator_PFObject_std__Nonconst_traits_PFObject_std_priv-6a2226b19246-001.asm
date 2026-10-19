; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00526044, declared_size=640, range_size=640, mode=arm
; class-group: std::priv::_Deque_iterator<PFObject*, std::_Nonconst_traits<PFObject*> > std::priv
; alias: _ZNSt4priv6__findINS_15_Deque_iteratorIP8PFObjectSt16_Nonconst_traitsIS3_EEES3_EET_S7_S7_RKT0_RKSt26random_access_iterator_tag
; demangled: std::priv::_Deque_iterator<PFObject*, std::_Nonconst_traits<PFObject*> > std::priv::__find<std::priv::_Deque_iterator<PFObject*, std::_Nonconst_traits<PFObject*> >, PFObject*>(std::priv::_Deque_iterator<PFObject*, std::_Nonconst_traits<PFObject*> >, std::priv::_Deque_iterator<PFObject*, std::_Nonconst_traits<PFObject*> >, PFObject* const&, std::random_access_iterator_tag const&)
; decoder-mode: arm
00526044  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00526048  24 d0 4d e2                                      sub sp, sp, #0x24
0052604c  10 c0 8d e2                                      add ip, sp, #0x10
00526050  02 70 a0 e1                                      mov r7, r2
00526054  01 40 a0 e1                                      mov r4, r1
00526058  00 60 a0 e1                                      mov r6, r0
0052605c  03 50 a0 e1                                      mov r5, r3
00526060  0f 00 91 e8                                      ldm r1, {r0, r1, r2, r3}
00526064  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
00526068  0c 10 a0 e1                                      mov r1, ip
0052606c  07 00 a0 e1                                      mov r0, r7
00526070  e2 f0 ff eb                                      bl #0x522400
00526074  40 01 a0 e1                                      asr r0, r0, #2
00526078  00 00 50 e3                                      cmp r0, #0
0052607c  1d 00 00 ca                                      bgt #0x5260f8
00526080  53 00 00 ea                                      b #0x5261d4
00526084  00 10 93 e5                                      ldr r1, [r3]
00526088  00 20 95 e5                                      ldr r2, [r5]
0052608c  02 00 51 e1                                      cmp r1, r2
00526090  2e 00 00 0a                                      beq #0x526150
00526094  08 20 94 e5                                      ldr r2, [r4, #8]
00526098  04 30 83 e2                                      add r3, r3, #4
0052609c  00 30 84 e5                                      str r3, [r4]
005260a0  02 00 53 e1                                      cmp r3, r2
005260a4  2e 00 00 0a                                      beq #0x526164
005260a8  00 10 93 e5                                      ldr r1, [r3]
005260ac  00 20 95 e5                                      ldr r2, [r5]
005260b0  02 00 51 e1                                      cmp r1, r2
005260b4  25 00 00 0a                                      beq #0x526150
005260b8  08 20 94 e5                                      ldr r2, [r4, #8]
005260bc  04 30 83 e2                                      add r3, r3, #4
005260c0  00 30 84 e5                                      str r3, [r4]
005260c4  02 00 53 e1                                      cmp r3, r2
005260c8  2e 00 00 0a                                      beq #0x526188
005260cc  00 10 93 e5                                      ldr r1, [r3]
005260d0  00 20 95 e5                                      ldr r2, [r5]
005260d4  02 00 51 e1                                      cmp r1, r2
005260d8  1c 00 00 0a                                      beq #0x526150
005260dc  08 20 94 e5                                      ldr r2, [r4, #8]
005260e0  04 30 83 e2                                      add r3, r3, #4
005260e4  00 30 84 e5                                      str r3, [r4]
005260e8  02 00 53 e1                                      cmp r3, r2
005260ec  2e 00 00 0a                                      beq #0x5261ac
005260f0  01 00 50 e2                                      subs r0, r0, #1
005260f4  36 00 00 0a                                      beq #0x5261d4
005260f8  00 30 94 e5                                      ldr r3, [r4]
005260fc  00 20 95 e5                                      ldr r2, [r5]
00526100  00 10 93 e5                                      ldr r1, [r3]
00526104  02 00 51 e1                                      cmp r1, r2
00526108  10 00 00 0a                                      beq #0x526150
0052610c  08 20 94 e5                                      ldr r2, [r4, #8]
00526110  04 30 83 e2                                      add r3, r3, #4
00526114  00 30 84 e5                                      str r3, [r4]
00526118  02 00 53 e1                                      cmp r3, r2
0052611c  d8 ff ff 1a                                      bne #0x526084
00526120  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00526124  04 20 83 e2                                      add r2, r3, #4
00526128  0c 20 84 e5                                      str r2, [r4, #0xc]
0052612c  04 30 93 e5                                      ldr r3, [r3, #4]
00526130  80 20 83 e2                                      add r2, r3, #0x80
00526134  08 20 84 e5                                      str r2, [r4, #8]
00526138  04 30 84 e5                                      str r3, [r4, #4]
0052613c  00 30 84 e5                                      str r3, [r4]
00526140  00 10 93 e5                                      ldr r1, [r3]
00526144  00 20 95 e5                                      ldr r2, [r5]
00526148  02 00 51 e1                                      cmp r1, r2
0052614c  d0 ff ff 1a                                      bne #0x526094
00526150  0f 00 94 e8                                      ldm r4, {r0, r1, r2, r3}
00526154  0f 00 86 e8                                      stm r6, {r0, r1, r2, r3}
00526158  06 00 a0 e1                                      mov r0, r6
0052615c  24 d0 8d e2                                      add sp, sp, #0x24
00526160  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00526164  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00526168  04 20 83 e2                                      add r2, r3, #4
0052616c  0c 20 84 e5                                      str r2, [r4, #0xc]
00526170  04 30 93 e5                                      ldr r3, [r3, #4]
00526174  80 20 83 e2                                      add r2, r3, #0x80
00526178  08 20 84 e5                                      str r2, [r4, #8]
0052617c  04 30 84 e5                                      str r3, [r4, #4]
00526180  00 30 84 e5                                      str r3, [r4]
00526184  c7 ff ff ea                                      b #0x5260a8
00526188  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0052618c  04 20 83 e2                                      add r2, r3, #4
00526190  0c 20 84 e5                                      str r2, [r4, #0xc]
00526194  04 30 93 e5                                      ldr r3, [r3, #4]
00526198  80 20 83 e2                                      add r2, r3, #0x80
0052619c  08 20 84 e5                                      str r2, [r4, #8]
005261a0  04 30 84 e5                                      str r3, [r4, #4]
005261a4  00 30 84 e5                                      str r3, [r4]
005261a8  c7 ff ff ea                                      b #0x5260cc
005261ac  0c 30 94 e5                                      ldr r3, [r4, #0xc]
005261b0  01 00 50 e2                                      subs r0, r0, #1
005261b4  04 20 83 e2                                      add r2, r3, #4
005261b8  0c 20 84 e5                                      str r2, [r4, #0xc]
005261bc  04 30 93 e5                                      ldr r3, [r3, #4]
005261c0  80 20 83 e2                                      add r2, r3, #0x80
005261c4  08 20 84 e5                                      str r2, [r4, #8]
005261c8  00 30 84 e5                                      str r3, [r4]
005261cc  04 30 84 e5                                      str r3, [r4, #4]
005261d0  c8 ff ff 1a                                      bne #0x5260f8
005261d4  0d c0 a0 e1                                      mov ip, sp
005261d8  0f 00 94 e8                                      ldm r4, {r0, r1, r2, r3}
005261dc  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
005261e0  0d 10 a0 e1                                      mov r1, sp
005261e4  07 00 a0 e1                                      mov r0, r7
005261e8  84 f0 ff eb                                      bl #0x522400
005261ec  02 00 50 e3                                      cmp r0, #2
005261f0  06 00 00 0a                                      beq #0x526210
005261f4  03 00 50 e3                                      cmp r0, #3
005261f8  15 00 00 0a                                      beq #0x526254
005261fc  01 00 50 e3                                      cmp r0, #1
00526200  11 00 00 0a                                      beq #0x52624c
00526204  0f 00 97 e8                                      ldm r7, {r0, r1, r2, r3}
00526208  0f 00 86 e8                                      stm r6, {r0, r1, r2, r3}
0052620c  d1 ff ff ea                                      b #0x526158
00526210  00 30 94 e5                                      ldr r3, [r4]
00526214  00 10 93 e5                                      ldr r1, [r3]
00526218  00 20 95 e5                                      ldr r2, [r5]
0052621c  02 00 51 e1                                      cmp r1, r2
00526220  ca ff ff 0a                                      beq #0x526150
00526224  08 20 94 e5                                      ldr r2, [r4, #8]
00526228  04 30 83 e2                                      add r3, r3, #4
0052622c  00 30 84 e5                                      str r3, [r4]
00526230  02 00 53 e1                                      cmp r3, r2
00526234  19 00 00 0a                                      beq #0x5262a0
00526238  00 20 93 e5                                      ldr r2, [r3]
0052623c  00 30 95 e5                                      ldr r3, [r5]
00526240  03 00 52 e1                                      cmp r2, r3
00526244  ee ff ff 1a                                      bne #0x526204
00526248  c0 ff ff ea                                      b #0x526150
0052624c  00 30 94 e5                                      ldr r3, [r4]
00526250  f8 ff ff ea                                      b #0x526238
00526254  00 30 94 e5                                      ldr r3, [r4]
00526258  00 20 95 e5                                      ldr r2, [r5]
0052625c  00 10 93 e5                                      ldr r1, [r3]
00526260  02 00 51 e1                                      cmp r1, r2
00526264  b9 ff ff 0a                                      beq #0x526150
00526268  08 20 94 e5                                      ldr r2, [r4, #8]
0052626c  04 30 83 e2                                      add r3, r3, #4
00526270  00 30 84 e5                                      str r3, [r4]
00526274  02 00 53 e1                                      cmp r3, r2
00526278  e5 ff ff 1a                                      bne #0x526214
0052627c  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00526280  04 20 83 e2                                      add r2, r3, #4
00526284  0c 20 84 e5                                      str r2, [r4, #0xc]
00526288  04 30 93 e5                                      ldr r3, [r3, #4]
0052628c  80 20 83 e2                                      add r2, r3, #0x80
00526290  08 20 84 e5                                      str r2, [r4, #8]
00526294  04 30 84 e5                                      str r3, [r4, #4]
00526298  00 30 84 e5                                      str r3, [r4]
0052629c  dc ff ff ea                                      b #0x526214
005262a0  0c 30 94 e5                                      ldr r3, [r4, #0xc]
005262a4  04 20 83 e2                                      add r2, r3, #4
005262a8  0c 20 84 e5                                      str r2, [r4, #0xc]
005262ac  04 30 93 e5                                      ldr r3, [r3, #4]
005262b0  80 20 83 e2                                      add r2, r3, #0x80
005262b4  08 20 84 e5                                      str r2, [r4, #8]
005262b8  04 30 84 e5                                      str r3, [r4, #4]
005262bc  00 30 84 e5                                      str r3, [r4]
005262c0  dc ff ff ea                                      b #0x526238

; FUNCTION 0x005262c4, declared_size=640, range_size=640, mode=arm
; class-group: std::priv::_Deque_iterator<PFObject*, std::_Nonconst_traits<PFObject*> > std::priv
; alias: _ZNSt4priv6__findINS_15_Deque_iteratorIP8PFObjectSt16_Nonconst_traitsIS3_EEEPKS2_EET_S9_S9_RKT0_RKSt26random_access_iterator_tag
; demangled: std::priv::_Deque_iterator<PFObject*, std::_Nonconst_traits<PFObject*> > std::priv::__find<std::priv::_Deque_iterator<PFObject*, std::_Nonconst_traits<PFObject*> >, PFObject const*>(std::priv::_Deque_iterator<PFObject*, std::_Nonconst_traits<PFObject*> >, std::priv::_Deque_iterator<PFObject*, std::_Nonconst_traits<PFObject*> >, PFObject const* const&, std::random_access_iterator_tag const&)
; decoder-mode: arm
005262c4  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
005262c8  24 d0 4d e2                                      sub sp, sp, #0x24
005262cc  10 c0 8d e2                                      add ip, sp, #0x10
005262d0  02 70 a0 e1                                      mov r7, r2
005262d4  01 40 a0 e1                                      mov r4, r1
005262d8  00 60 a0 e1                                      mov r6, r0
005262dc  03 50 a0 e1                                      mov r5, r3
005262e0  0f 00 91 e8                                      ldm r1, {r0, r1, r2, r3}
005262e4  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
005262e8  0c 10 a0 e1                                      mov r1, ip
005262ec  07 00 a0 e1                                      mov r0, r7
005262f0  42 f0 ff eb                                      bl #0x522400
005262f4  40 01 a0 e1                                      asr r0, r0, #2
005262f8  00 00 50 e3                                      cmp r0, #0
005262fc  1d 00 00 ca                                      bgt #0x526378
00526300  53 00 00 ea                                      b #0x526454
00526304  00 10 93 e5                                      ldr r1, [r3]
00526308  00 20 95 e5                                      ldr r2, [r5]
0052630c  02 00 51 e1                                      cmp r1, r2
00526310  2e 00 00 0a                                      beq #0x5263d0
00526314  08 20 94 e5                                      ldr r2, [r4, #8]
00526318  04 30 83 e2                                      add r3, r3, #4
0052631c  00 30 84 e5                                      str r3, [r4]
00526320  02 00 53 e1                                      cmp r3, r2
00526324  2e 00 00 0a                                      beq #0x5263e4
00526328  00 10 93 e5                                      ldr r1, [r3]
0052632c  00 20 95 e5                                      ldr r2, [r5]
00526330  02 00 51 e1                                      cmp r1, r2
00526334  25 00 00 0a                                      beq #0x5263d0
00526338  08 20 94 e5                                      ldr r2, [r4, #8]
0052633c  04 30 83 e2                                      add r3, r3, #4
00526340  00 30 84 e5                                      str r3, [r4]
00526344  02 00 53 e1                                      cmp r3, r2
00526348  2e 00 00 0a                                      beq #0x526408
0052634c  00 10 93 e5                                      ldr r1, [r3]
00526350  00 20 95 e5                                      ldr r2, [r5]
00526354  02 00 51 e1                                      cmp r1, r2
00526358  1c 00 00 0a                                      beq #0x5263d0
0052635c  08 20 94 e5                                      ldr r2, [r4, #8]
00526360  04 30 83 e2                                      add r3, r3, #4
00526364  00 30 84 e5                                      str r3, [r4]
00526368  02 00 53 e1                                      cmp r3, r2
0052636c  2e 00 00 0a                                      beq #0x52642c
00526370  01 00 50 e2                                      subs r0, r0, #1
00526374  36 00 00 0a                                      beq #0x526454
00526378  00 30 94 e5                                      ldr r3, [r4]
0052637c  00 20 95 e5                                      ldr r2, [r5]
00526380  00 10 93 e5                                      ldr r1, [r3]
00526384  02 00 51 e1                                      cmp r1, r2
00526388  10 00 00 0a                                      beq #0x5263d0
0052638c  08 20 94 e5                                      ldr r2, [r4, #8]
00526390  04 30 83 e2                                      add r3, r3, #4
00526394  00 30 84 e5                                      str r3, [r4]
00526398  02 00 53 e1                                      cmp r3, r2
0052639c  d8 ff ff 1a                                      bne #0x526304
005263a0  0c 30 94 e5                                      ldr r3, [r4, #0xc]
005263a4  04 20 83 e2                                      add r2, r3, #4
005263a8  0c 20 84 e5                                      str r2, [r4, #0xc]
005263ac  04 30 93 e5                                      ldr r3, [r3, #4]
005263b0  80 20 83 e2                                      add r2, r3, #0x80
005263b4  08 20 84 e5                                      str r2, [r4, #8]
005263b8  04 30 84 e5                                      str r3, [r4, #4]
005263bc  00 30 84 e5                                      str r3, [r4]
005263c0  00 10 93 e5                                      ldr r1, [r3]
005263c4  00 20 95 e5                                      ldr r2, [r5]
005263c8  02 00 51 e1                                      cmp r1, r2
005263cc  d0 ff ff 1a                                      bne #0x526314
005263d0  0f 00 94 e8                                      ldm r4, {r0, r1, r2, r3}
005263d4  0f 00 86 e8                                      stm r6, {r0, r1, r2, r3}
005263d8  06 00 a0 e1                                      mov r0, r6
005263dc  24 d0 8d e2                                      add sp, sp, #0x24
005263e0  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
005263e4  0c 30 94 e5                                      ldr r3, [r4, #0xc]
005263e8  04 20 83 e2                                      add r2, r3, #4
005263ec  0c 20 84 e5                                      str r2, [r4, #0xc]
005263f0  04 30 93 e5                                      ldr r3, [r3, #4]
005263f4  80 20 83 e2                                      add r2, r3, #0x80
005263f8  08 20 84 e5                                      str r2, [r4, #8]
005263fc  04 30 84 e5                                      str r3, [r4, #4]
00526400  00 30 84 e5                                      str r3, [r4]
00526404  c7 ff ff ea                                      b #0x526328
00526408  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0052640c  04 20 83 e2                                      add r2, r3, #4
00526410  0c 20 84 e5                                      str r2, [r4, #0xc]
00526414  04 30 93 e5                                      ldr r3, [r3, #4]
00526418  80 20 83 e2                                      add r2, r3, #0x80
0052641c  08 20 84 e5                                      str r2, [r4, #8]
00526420  04 30 84 e5                                      str r3, [r4, #4]
00526424  00 30 84 e5                                      str r3, [r4]
00526428  c7 ff ff ea                                      b #0x52634c
0052642c  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00526430  01 00 50 e2                                      subs r0, r0, #1
00526434  04 20 83 e2                                      add r2, r3, #4
00526438  0c 20 84 e5                                      str r2, [r4, #0xc]
0052643c  04 30 93 e5                                      ldr r3, [r3, #4]
00526440  80 20 83 e2                                      add r2, r3, #0x80
00526444  08 20 84 e5                                      str r2, [r4, #8]
00526448  00 30 84 e5                                      str r3, [r4]
0052644c  04 30 84 e5                                      str r3, [r4, #4]
00526450  c8 ff ff 1a                                      bne #0x526378
00526454  0d c0 a0 e1                                      mov ip, sp
00526458  0f 00 94 e8                                      ldm r4, {r0, r1, r2, r3}
0052645c  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
00526460  0d 10 a0 e1                                      mov r1, sp
00526464  07 00 a0 e1                                      mov r0, r7
00526468  e4 ef ff eb                                      bl #0x522400
0052646c  02 00 50 e3                                      cmp r0, #2
00526470  06 00 00 0a                                      beq #0x526490
00526474  03 00 50 e3                                      cmp r0, #3
00526478  15 00 00 0a                                      beq #0x5264d4
0052647c  01 00 50 e3                                      cmp r0, #1
00526480  11 00 00 0a                                      beq #0x5264cc
00526484  0f 00 97 e8                                      ldm r7, {r0, r1, r2, r3}
00526488  0f 00 86 e8                                      stm r6, {r0, r1, r2, r3}
0052648c  d1 ff ff ea                                      b #0x5263d8
00526490  00 30 94 e5                                      ldr r3, [r4]
00526494  00 10 93 e5                                      ldr r1, [r3]
00526498  00 20 95 e5                                      ldr r2, [r5]
0052649c  02 00 51 e1                                      cmp r1, r2
005264a0  ca ff ff 0a                                      beq #0x5263d0
005264a4  08 20 94 e5                                      ldr r2, [r4, #8]
005264a8  04 30 83 e2                                      add r3, r3, #4
005264ac  00 30 84 e5                                      str r3, [r4]
005264b0  02 00 53 e1                                      cmp r3, r2
005264b4  19 00 00 0a                                      beq #0x526520
005264b8  00 20 93 e5                                      ldr r2, [r3]
005264bc  00 30 95 e5                                      ldr r3, [r5]
005264c0  03 00 52 e1                                      cmp r2, r3
005264c4  ee ff ff 1a                                      bne #0x526484
005264c8  c0 ff ff ea                                      b #0x5263d0
005264cc  00 30 94 e5                                      ldr r3, [r4]
005264d0  f8 ff ff ea                                      b #0x5264b8
005264d4  00 30 94 e5                                      ldr r3, [r4]
005264d8  00 20 95 e5                                      ldr r2, [r5]
005264dc  00 10 93 e5                                      ldr r1, [r3]
005264e0  02 00 51 e1                                      cmp r1, r2
005264e4  b9 ff ff 0a                                      beq #0x5263d0
005264e8  08 20 94 e5                                      ldr r2, [r4, #8]
005264ec  04 30 83 e2                                      add r3, r3, #4
005264f0  00 30 84 e5                                      str r3, [r4]
005264f4  02 00 53 e1                                      cmp r3, r2
005264f8  e5 ff ff 1a                                      bne #0x526494
005264fc  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00526500  04 20 83 e2                                      add r2, r3, #4
00526504  0c 20 84 e5                                      str r2, [r4, #0xc]
00526508  04 30 93 e5                                      ldr r3, [r3, #4]
0052650c  80 20 83 e2                                      add r2, r3, #0x80
00526510  08 20 84 e5                                      str r2, [r4, #8]
00526514  04 30 84 e5                                      str r3, [r4, #4]
00526518  00 30 84 e5                                      str r3, [r4]
0052651c  dc ff ff ea                                      b #0x526494
00526520  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00526524  04 20 83 e2                                      add r2, r3, #4
00526528  0c 20 84 e5                                      str r2, [r4, #0xc]
0052652c  04 30 93 e5                                      ldr r3, [r3, #4]
00526530  80 20 83 e2                                      add r2, r3, #0x80
00526534  08 20 84 e5                                      str r2, [r4, #8]
00526538  04 30 84 e5                                      str r3, [r4, #4]
0052653c  00 30 84 e5                                      str r3, [r4]
00526540  dc ff ff ea                                      b #0x5264b8

; FUNCTION 0x00526544, declared_size=240, range_size=240, mode=arm
; class-group: std::priv::_Deque_iterator<PFObject*, std::_Nonconst_traits<PFObject*> > std::priv
; alias: _ZNSt4priv7__ucopyINS_15_Deque_iteratorIP8PFObjectSt13_Const_traitsIS3_EEENS1_IS3_St16_Nonconst_traitsIS3_EEEiEET0_T_SB_SA_RKSt26random_access_iterator_tagPT1_
; demangled: std::priv::_Deque_iterator<PFObject*, std::_Nonconst_traits<PFObject*> > std::priv::__ucopy<std::priv::_Deque_iterator<PFObject*, std::_Const_traits<PFObject*> >, std::priv::_Deque_iterator<PFObject*, std::_Nonconst_traits<PFObject*> >, int>(std::priv::_Deque_iterator<PFObject*, std::_Const_traits<PFObject*> >, std::priv::_Deque_iterator<PFObject*, std::_Const_traits<PFObject*> >, std::priv::_Deque_iterator<PFObject*, std::_Nonconst_traits<PFObject*> >, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
00526544  10 d0 4d e2                                      sub sp, sp, #0x10
00526548  10 40 2d e9                                      push {r4, lr}
0052654c  0c c0 8d e2                                      add ip, sp, #0xc
00526550  0e 00 8c e8                                      stm ip, {r1, r2, r3}
00526554  2c e0 9d e5                                      ldr lr, [sp, #0x2c]
00526558  00 40 a0 e1                                      mov r4, r0
0052655c  0f 00 9e e8                                      ldm lr, {r0, r1, r2, r3}
00526560  0f 00 84 e8                                      stm r4, {r0, r1, r2, r3}
00526564  0c 10 a0 e1                                      mov r1, ip
00526568  1c 00 8d e2                                      add r0, sp, #0x1c
0052656c  a3 ef ff eb                                      bl #0x522400
00526570  00 00 50 e3                                      cmp r0, #0
00526574  08 00 00 ca                                      bgt #0x52659c
00526578  29 00 00 ea                                      b #0x526624
0052657c  00 30 94 e5                                      ldr r3, [r4]
00526580  08 20 94 e5                                      ldr r2, [r4, #8]
00526584  04 30 83 e2                                      add r3, r3, #4
00526588  02 00 53 e1                                      cmp r3, r2
0052658c  00 30 84 e5                                      str r3, [r4]
00526590  19 00 00 0a                                      beq #0x5265fc
00526594  01 00 50 e2                                      subs r0, r0, #1
00526598  21 00 00 0a                                      beq #0x526624
0052659c  0c 20 9d e5                                      ldr r2, [sp, #0xc]
005265a0  00 30 94 e5                                      ldr r3, [r4]
005265a4  00 20 92 e5                                      ldr r2, [r2]
005265a8  00 20 83 e5                                      str r2, [r3]
005265ac  0c 30 9d e5                                      ldr r3, [sp, #0xc]
005265b0  14 20 9d e5                                      ldr r2, [sp, #0x14]
005265b4  04 30 83 e2                                      add r3, r3, #4
005265b8  02 00 53 e1                                      cmp r3, r2
005265bc  0c 30 8d e5                                      str r3, [sp, #0xc]
005265c0  ed ff ff 1a                                      bne #0x52657c
005265c4  18 30 9d e5                                      ldr r3, [sp, #0x18]
005265c8  04 20 83 e2                                      add r2, r3, #4
005265cc  18 20 8d e5                                      str r2, [sp, #0x18]
005265d0  04 30 93 e5                                      ldr r3, [r3, #4]
005265d4  80 20 83 e2                                      add r2, r3, #0x80
005265d8  14 20 8d e5                                      str r2, [sp, #0x14]
005265dc  0c 30 8d e5                                      str r3, [sp, #0xc]
005265e0  10 30 8d e5                                      str r3, [sp, #0x10]
005265e4  00 30 94 e5                                      ldr r3, [r4]
005265e8  08 20 94 e5                                      ldr r2, [r4, #8]
005265ec  04 30 83 e2                                      add r3, r3, #4
005265f0  02 00 53 e1                                      cmp r3, r2
005265f4  00 30 84 e5                                      str r3, [r4]
005265f8  e5 ff ff 1a                                      bne #0x526594
005265fc  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00526600  01 00 50 e2                                      subs r0, r0, #1
00526604  04 20 83 e2                                      add r2, r3, #4
00526608  0c 20 84 e5                                      str r2, [r4, #0xc]
0052660c  04 30 93 e5                                      ldr r3, [r3, #4]
00526610  80 20 83 e2                                      add r2, r3, #0x80
00526614  08 20 84 e5                                      str r2, [r4, #8]
00526618  00 30 84 e5                                      str r3, [r4]
0052661c  04 30 84 e5                                      str r3, [r4, #4]
00526620  dd ff ff 1a                                      bne #0x52659c
00526624  04 00 a0 e1                                      mov r0, r4
00526628  10 40 bd e8                                      pop {r4, lr}
0052662c  10 d0 8d e2                                      add sp, sp, #0x10
00526630  1e ff 2f e1                                      bx lr

; FUNCTION 0x00526634, declared_size=252, range_size=252, mode=arm
; class-group: std::priv::_Deque_iterator<PFObject*, std::_Nonconst_traits<PFObject*> > std::priv
; alias: _ZNSt4priv15__copy_backwardINS_15_Deque_iteratorIP8PFObjectSt16_Nonconst_traitsIS3_EEES6_iEET0_T_S8_S7_RKSt26random_access_iterator_tagPT1_
; demangled: std::priv::_Deque_iterator<PFObject*, std::_Nonconst_traits<PFObject*> > std::priv::__copy_backward<std::priv::_Deque_iterator<PFObject*, std::_Nonconst_traits<PFObject*> >, std::priv::_Deque_iterator<PFObject*, std::_Nonconst_traits<PFObject*> >, int>(std::priv::_Deque_iterator<PFObject*, std::_Nonconst_traits<PFObject*> >, std::priv::_Deque_iterator<PFObject*, std::_Nonconst_traits<PFObject*> >, std::priv::_Deque_iterator<PFObject*, std::_Nonconst_traits<PFObject*> >, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
00526634  70 40 2d e9                                      push {r4, r5, r6, lr}
00526638  10 d0 4d e2                                      sub sp, sp, #0x10
0052663c  02 50 a0 e1                                      mov r5, r2
00526640  0d c0 a0 e1                                      mov ip, sp
00526644  00 60 a0 e1                                      mov r6, r0
00526648  03 40 a0 e1                                      mov r4, r3
0052664c  0f 00 91 e8                                      ldm r1, {r0, r1, r2, r3}
00526650  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
00526654  0d 10 a0 e1                                      mov r1, sp
00526658  05 00 a0 e1                                      mov r0, r5
0052665c  67 ef ff eb                                      bl #0x522400
00526660  00 00 50 e3                                      cmp r0, #0
00526664  0c 00 00 ca                                      bgt #0x52669c
00526668  2b 00 00 ea                                      b #0x52671c
0052666c  04 20 43 e2                                      sub r2, r3, #4
00526670  00 20 84 e5                                      str r2, [r4]
00526674  00 30 95 e5                                      ldr r3, [r5]
00526678  04 10 95 e5                                      ldr r1, [r5, #4]
0052667c  01 00 53 e1                                      cmp r3, r1
00526680  17 00 00 0a                                      beq #0x5266e4
00526684  04 10 43 e2                                      sub r1, r3, #4
00526688  00 10 85 e5                                      str r1, [r5]
0052668c  04 30 13 e5                                      ldr r3, [r3, #-4]
00526690  01 00 50 e2                                      subs r0, r0, #1
00526694  00 30 82 e5                                      str r3, [r2]
00526698  1f 00 00 0a                                      beq #0x52671c
0052669c  00 30 94 e5                                      ldr r3, [r4]
005266a0  04 20 94 e5                                      ldr r2, [r4, #4]
005266a4  02 00 53 e1                                      cmp r3, r2
005266a8  ef ff ff 1a                                      bne #0x52666c
005266ac  0c 30 94 e5                                      ldr r3, [r4, #0xc]
005266b0  04 20 43 e2                                      sub r2, r3, #4
005266b4  0c 20 84 e5                                      str r2, [r4, #0xc]
005266b8  04 20 13 e5                                      ldr r2, [r3, #-4]
005266bc  80 30 82 e2                                      add r3, r2, #0x80
005266c0  04 20 84 e5                                      str r2, [r4, #4]
005266c4  04 20 43 e2                                      sub r2, r3, #4
005266c8  00 30 84 e5                                      str r3, [r4]
005266cc  08 30 84 e5                                      str r3, [r4, #8]
005266d0  00 20 84 e5                                      str r2, [r4]
005266d4  00 30 95 e5                                      ldr r3, [r5]
005266d8  04 10 95 e5                                      ldr r1, [r5, #4]
005266dc  01 00 53 e1                                      cmp r3, r1
005266e0  e7 ff ff 1a                                      bne #0x526684
005266e4  0c 30 95 e5                                      ldr r3, [r5, #0xc]
005266e8  01 00 50 e2                                      subs r0, r0, #1
005266ec  04 10 43 e2                                      sub r1, r3, #4
005266f0  0c 10 85 e5                                      str r1, [r5, #0xc]
005266f4  04 10 13 e5                                      ldr r1, [r3, #-4]
005266f8  80 30 81 e2                                      add r3, r1, #0x80
005266fc  04 10 85 e5                                      str r1, [r5, #4]
00526700  04 10 43 e2                                      sub r1, r3, #4
00526704  00 30 85 e5                                      str r3, [r5]
00526708  08 30 85 e5                                      str r3, [r5, #8]
0052670c  00 10 85 e5                                      str r1, [r5]
00526710  04 30 13 e5                                      ldr r3, [r3, #-4]
00526714  00 30 82 e5                                      str r3, [r2]
00526718  df ff ff 1a                                      bne #0x52669c
0052671c  0f 00 94 e8                                      ldm r4, {r0, r1, r2, r3}
00526720  0f 00 86 e8                                      stm r6, {r0, r1, r2, r3}
00526724  06 00 a0 e1                                      mov r0, r6
00526728  10 d0 8d e2                                      add sp, sp, #0x10
0052672c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00526730, declared_size=248, range_size=248, mode=arm
; class-group: std::priv::_Deque_iterator<PFObject*, std::_Nonconst_traits<PFObject*> > std::priv
; alias: _ZNSt4priv6__copyINS_15_Deque_iteratorIP8PFObjectSt16_Nonconst_traitsIS3_EEES6_iEET0_T_S8_S7_RKSt26random_access_iterator_tagPT1_
; demangled: std::priv::_Deque_iterator<PFObject*, std::_Nonconst_traits<PFObject*> > std::priv::__copy<std::priv::_Deque_iterator<PFObject*, std::_Nonconst_traits<PFObject*> >, std::priv::_Deque_iterator<PFObject*, std::_Nonconst_traits<PFObject*> >, int>(std::priv::_Deque_iterator<PFObject*, std::_Nonconst_traits<PFObject*> >, std::priv::_Deque_iterator<PFObject*, std::_Nonconst_traits<PFObject*> >, std::priv::_Deque_iterator<PFObject*, std::_Nonconst_traits<PFObject*> >, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
00526730  70 40 2d e9                                      push {r4, r5, r6, lr}
00526734  10 d0 4d e2                                      sub sp, sp, #0x10
00526738  02 e0 a0 e1                                      mov lr, r2
0052673c  0d c0 a0 e1                                      mov ip, sp
00526740  01 50 a0 e1                                      mov r5, r1
00526744  00 60 a0 e1                                      mov r6, r0
00526748  03 40 a0 e1                                      mov r4, r3
0052674c  0f 00 91 e8                                      ldm r1, {r0, r1, r2, r3}
00526750  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
00526754  0e 00 a0 e1                                      mov r0, lr
00526758  0d 10 a0 e1                                      mov r1, sp
0052675c  27 ef ff eb                                      bl #0x522400
00526760  00 00 50 e3                                      cmp r0, #0
00526764  08 00 00 ca                                      bgt #0x52678c
00526768  29 00 00 ea                                      b #0x526814
0052676c  00 30 94 e5                                      ldr r3, [r4]
00526770  08 20 94 e5                                      ldr r2, [r4, #8]
00526774  04 30 83 e2                                      add r3, r3, #4
00526778  02 00 53 e1                                      cmp r3, r2
0052677c  00 30 84 e5                                      str r3, [r4]
00526780  19 00 00 0a                                      beq #0x5267ec
00526784  01 00 50 e2                                      subs r0, r0, #1
00526788  21 00 00 0a                                      beq #0x526814
0052678c  00 20 95 e5                                      ldr r2, [r5]
00526790  00 30 94 e5                                      ldr r3, [r4]
00526794  00 20 92 e5                                      ldr r2, [r2]
00526798  00 20 83 e5                                      str r2, [r3]
0052679c  00 30 95 e5                                      ldr r3, [r5]
005267a0  08 20 95 e5                                      ldr r2, [r5, #8]
005267a4  04 30 83 e2                                      add r3, r3, #4
005267a8  02 00 53 e1                                      cmp r3, r2
005267ac  00 30 85 e5                                      str r3, [r5]
005267b0  ed ff ff 1a                                      bne #0x52676c
005267b4  0c 30 95 e5                                      ldr r3, [r5, #0xc]
005267b8  04 20 83 e2                                      add r2, r3, #4
005267bc  0c 20 85 e5                                      str r2, [r5, #0xc]
005267c0  04 30 93 e5                                      ldr r3, [r3, #4]
005267c4  80 20 83 e2                                      add r2, r3, #0x80
005267c8  08 20 85 e5                                      str r2, [r5, #8]
005267cc  00 30 85 e5                                      str r3, [r5]
005267d0  04 30 85 e5                                      str r3, [r5, #4]
005267d4  00 30 94 e5                                      ldr r3, [r4]
005267d8  08 20 94 e5                                      ldr r2, [r4, #8]
005267dc  04 30 83 e2                                      add r3, r3, #4
005267e0  02 00 53 e1                                      cmp r3, r2
005267e4  00 30 84 e5                                      str r3, [r4]
005267e8  e5 ff ff 1a                                      bne #0x526784
005267ec  0c 30 94 e5                                      ldr r3, [r4, #0xc]
005267f0  01 00 50 e2                                      subs r0, r0, #1
005267f4  04 20 83 e2                                      add r2, r3, #4
005267f8  0c 20 84 e5                                      str r2, [r4, #0xc]
005267fc  04 30 93 e5                                      ldr r3, [r3, #4]
00526800  80 20 83 e2                                      add r2, r3, #0x80
00526804  08 20 84 e5                                      str r2, [r4, #8]
00526808  00 30 84 e5                                      str r3, [r4]
0052680c  04 30 84 e5                                      str r3, [r4, #4]
00526810  dd ff ff 1a                                      bne #0x52678c
00526814  0f 00 94 e8                                      ldm r4, {r0, r1, r2, r3}
00526818  0f 00 86 e8                                      stm r6, {r0, r1, r2, r3}
0052681c  06 00 a0 e1                                      mov r0, r6
00526820  10 d0 8d e2                                      add sp, sp, #0x10
00526824  70 80 bd e8                                      pop {r4, r5, r6, pc}

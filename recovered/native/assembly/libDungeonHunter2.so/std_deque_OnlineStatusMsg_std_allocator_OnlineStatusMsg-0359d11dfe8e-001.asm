; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00329c00, declared_size=76, range_size=76, mode=arm
; class-group: std::deque<OnlineStatusMsg, std::allocator<OnlineStatusMsg> >
; alias: _ZNSt5dequeI15OnlineStatusMsgSaIS0_EED1Ev
; demangled: std::deque<OnlineStatusMsg, std::allocator<OnlineStatusMsg> >::~deque()
; decoder-mode: arm
00329c00  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00329c04  00 70 a0 e1                                      mov r7, r0
00329c08  00 40 90 e5                                      ldr r4, [r0]
00329c0c  08 50 90 e5                                      ldr r5, [r0, #8]
00329c10  10 60 90 e5                                      ldr r6, [r0, #0x10]
00329c14  0c 80 90 e5                                      ldr r8, [r0, #0xc]
00329c18  05 00 00 ea                                      b #0x329c34
00329c1c  04 00 a0 e1                                      mov r0, r4
00329c20  1c 40 84 e2                                      add r4, r4, #0x1c
00329c24  60 a7 ff eb                                      bl #0x3139ac
00329c28  05 00 54 e1                                      cmp r4, r5
00329c2c  04 40 b8 05                                      ldreq r4, [r8, #4]!
00329c30  70 50 84 02                                      addeq r5, r4, #0x70
00329c34  06 00 54 e1                                      cmp r4, r6
00329c38  f7 ff ff 1a                                      bne #0x329c1c
00329c3c  07 00 a0 e1                                      mov r0, r7
00329c40  cd ff ff eb                                      bl #0x329b7c
00329c44  07 00 a0 e1                                      mov r0, r7
00329c48  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x003761a8, declared_size=400, range_size=400, mode=arm
; class-group: std::deque<OnlineStatusMsg, std::allocator<OnlineStatusMsg> >
; alias: _ZNSt5dequeI15OnlineStatusMsgSaIS0_EE18_M_push_back_aux_vERKS0_
; demangled: std::deque<OnlineStatusMsg, std::allocator<OnlineStatusMsg> >::_M_push_back_aux_v(OnlineStatusMsg const&)
; decoder-mode: arm
003761a8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
003761ac  1c a0 90 e5                                      ldr sl, [r0, #0x1c]
003761b0  20 20 90 e5                                      ldr r2, [r0, #0x20]
003761b4  24 30 90 e5                                      ldr r3, [r0, #0x24]
003761b8  01 50 a0 e1                                      mov r5, r1
003761bc  0a 10 62 e0                                      rsb r1, r2, sl
003761c0  41 11 43 e0                                      sub r1, r3, r1, asr #2
003761c4  01 00 51 e3                                      cmp r1, #1
003761c8  00 40 a0 e1                                      mov r4, r0
003761cc  11 00 00 9a                                      bls #0x376218
003761d0  24 00 84 e2                                      add r0, r4, #0x24
003761d4  eb ff ff eb                                      bl #0x376188
003761d8  04 00 8a e5                                      str r0, [sl, #4]
003761dc  10 60 94 e5                                      ldr r6, [r4, #0x10]
003761e0  05 10 a0 e1                                      mov r1, r5
003761e4  06 00 a0 e1                                      mov r0, r6
003761e8  ca d5 fe eb                                      bl #0x32b918
003761ec  18 30 95 e5                                      ldr r3, [r5, #0x18]
003761f0  18 30 86 e5                                      str r3, [r6, #0x18]
003761f4  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
003761f8  04 20 83 e2                                      add r2, r3, #4
003761fc  1c 20 84 e5                                      str r2, [r4, #0x1c]
00376200  04 30 93 e5                                      ldr r3, [r3, #4]
00376204  70 20 83 e2                                      add r2, r3, #0x70
00376208  10 30 84 e5                                      str r3, [r4, #0x10]
0037620c  18 20 84 e5                                      str r2, [r4, #0x18]
00376210  14 30 84 e5                                      str r3, [r4, #0x14]
00376214  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00376218  0c 10 90 e5                                      ldr r1, [r0, #0xc]
0037621c  0a 70 61 e0                                      rsb r7, r1, sl
00376220  47 71 a0 e1                                      asr r7, r7, #2
00376224  01 70 87 e2                                      add r7, r7, #1
00376228  01 90 87 e2                                      add sb, r7, #1
0037622c  89 00 53 e1                                      cmp r3, sb, lsl #1
00376230  0a 00 00 9a                                      bls #0x376260
00376234  03 60 69 e0                                      rsb r6, sb, r3
00376238  a6 60 a0 e1                                      lsr r6, r6, #1
0037623c  06 61 82 e0                                      add r6, r2, r6, lsl #2
00376240  06 00 51 e1                                      cmp r1, r6
00376244  2e 00 00 9a                                      bls #0x376304
00376248  04 20 8a e2                                      add r2, sl, #4
0037624c  01 20 52 e0                                      subs r2, r2, r1
00376250  1e 00 00 0a                                      beq #0x3762d0
00376254  06 00 a0 e1                                      mov r0, r6
00376258  36 5f fe eb                                      bl #0x30df38
0037625c  1b 00 00 ea                                      b #0x3762d0
00376260  00 00 53 e3                                      cmp r3, #0
00376264  03 20 a0 11                                      movne r2, r3
00376268  01 20 a0 03                                      moveq r2, #1
0037626c  02 80 83 e2                                      add r8, r3, #2
00376270  02 80 88 e0                                      add r8, r8, r2
00376274  08 10 a0 e1                                      mov r1, r8
00376278  00 20 a0 e3                                      mov r2, #0
0037627c  20 00 80 e2                                      add r0, r0, #0x20
00376280  ba cc fe eb                                      bl #0x329570
00376284  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
00376288  0c 10 94 e5                                      ldr r1, [r4, #0xc]
0037628c  08 60 69 e0                                      rsb r6, sb, r8
00376290  a6 60 a0 e1                                      lsr r6, r6, #1
00376294  04 20 82 e2                                      add r2, r2, #4
00376298  01 20 52 e0                                      subs r2, r2, r1
0037629c  00 a0 a0 e1                                      mov sl, r0
003762a0  06 61 80 e0                                      add r6, r0, r6, lsl #2
003762a4  20 00 00 1a                                      bne #0x37632c
003762a8  20 00 94 e5                                      ldr r0, [r4, #0x20]
003762ac  24 10 94 e5                                      ldr r1, [r4, #0x24]
003762b0  00 00 50 e3                                      cmp r0, #0
003762b4  03 00 00 0a                                      beq #0x3762c8
003762b8  01 11 a0 e1                                      lsl r1, r1, #2
003762bc  80 00 51 e3                                      cmp r1, #0x80
003762c0  17 00 00 8a                                      bhi #0x376324
003762c4  0d 4b 0e eb                                      bl #0x708f00
003762c8  20 a0 84 e5                                      str sl, [r4, #0x20]
003762cc  24 80 84 e5                                      str r8, [r4, #0x24]
003762d0  0c 60 84 e5                                      str r6, [r4, #0xc]
003762d4  00 30 96 e5                                      ldr r3, [r6]
003762d8  01 70 47 e2                                      sub r7, r7, #1
003762dc  07 a1 86 e0                                      add sl, r6, r7, lsl #2
003762e0  70 20 83 e2                                      add r2, r3, #0x70
003762e4  08 20 84 e5                                      str r2, [r4, #8]
003762e8  04 30 84 e5                                      str r3, [r4, #4]
003762ec  1c a0 84 e5                                      str sl, [r4, #0x1c]
003762f0  07 31 96 e7                                      ldr r3, [r6, r7, lsl #2]
003762f4  70 20 83 e2                                      add r2, r3, #0x70
003762f8  18 20 84 e5                                      str r2, [r4, #0x18]
003762fc  14 30 84 e5                                      str r3, [r4, #0x14]
00376300  b2 ff ff ea                                      b #0x3761d0
00376304  04 20 8a e2                                      add r2, sl, #4
00376308  02 20 61 e0                                      rsb r2, r1, r2
0037630c  00 00 52 e3                                      cmp r2, #0
00376310  ee ff ff da                                      ble #0x3762d0
00376314  07 01 86 e0                                      add r0, r6, r7, lsl #2
00376318  00 00 62 e0                                      rsb r0, r2, r0
0037631c  05 5f fe eb                                      bl #0x30df38
00376320  ea ff ff ea                                      b #0x3762d0
00376324  45 68 fe eb                                      bl #0x310440
00376328  e6 ff ff ea                                      b #0x3762c8
0037632c  06 00 a0 e1                                      mov r0, r6
00376330  00 5f fe eb                                      bl #0x30df38
00376334  db ff ff ea                                      b #0x3762a8

; FUNCTION 0x00376338, declared_size=72, range_size=72, mode=arm
; class-group: std::deque<OnlineStatusMsg, std::allocator<OnlineStatusMsg> >
; alias: _ZNSt5dequeI15OnlineStatusMsgSaIS0_EE9push_backERKS0_
; demangled: std::deque<OnlineStatusMsg, std::allocator<OnlineStatusMsg> >::push_back(OnlineStatusMsg const&)
; decoder-mode: arm
00376338  70 40 2d e9                                      push {r4, r5, r6, lr}
0037633c  18 30 90 e5                                      ldr r3, [r0, #0x18]
00376340  10 50 90 e5                                      ldr r5, [r0, #0x10]
00376344  00 40 a0 e1                                      mov r4, r0
00376348  1c 30 43 e2                                      sub r3, r3, #0x1c
0037634c  03 00 55 e1                                      cmp r5, r3
00376350  01 60 a0 e1                                      mov r6, r1
00376354  07 00 00 0a                                      beq #0x376378
00376358  05 00 a0 e1                                      mov r0, r5
0037635c  6d d5 fe eb                                      bl #0x32b918
00376360  18 30 96 e5                                      ldr r3, [r6, #0x18]
00376364  18 30 85 e5                                      str r3, [r5, #0x18]
00376368  10 30 94 e5                                      ldr r3, [r4, #0x10]
0037636c  1c 30 83 e2                                      add r3, r3, #0x1c
00376370  10 30 84 e5                                      str r3, [r4, #0x10]
00376374  70 80 bd e8                                      pop {r4, r5, r6, pc}
00376378  70 40 bd e8                                      pop {r4, r5, r6, lr}
0037637c  89 ff ff ea                                      b #0x3761a8

; FUNCTION 0x00383da8, declared_size=152, range_size=152, mode=arm
; class-group: std::deque<OnlineStatusMsg, std::allocator<OnlineStatusMsg> >
; alias: _ZNSt5dequeI15OnlineStatusMsgSaIS0_EE9pop_frontEv
; demangled: std::deque<OnlineStatusMsg, std::allocator<OnlineStatusMsg> >::pop_front()
; decoder-mode: arm
00383da8  10 40 2d e9                                      push {r4, lr}
00383dac  00 30 90 e5                                      ldr r3, [r0]
00383db0  00 40 a0 e1                                      mov r4, r0
00383db4  14 00 93 e5                                      ldr r0, [r3, #0x14]
00383db8  03 00 50 e1                                      cmp r0, r3
00383dbc  07 00 00 0a                                      beq #0x383de0
00383dc0  00 00 50 e3                                      cmp r0, #0
00383dc4  05 00 00 0a                                      beq #0x383de0
00383dc8  00 10 93 e5                                      ldr r1, [r3]
00383dcc  01 10 60 e0                                      rsb r1, r0, r1
00383dd0  80 00 51 e3                                      cmp r1, #0x80
00383dd4  16 00 00 8a                                      bhi #0x383e34
00383dd8  48 14 0e eb                                      bl #0x708f00
00383ddc  00 30 94 e5                                      ldr r3, [r4]
00383de0  08 20 94 e5                                      ldr r2, [r4, #8]
00383de4  1c 20 42 e2                                      sub r2, r2, #0x1c
00383de8  02 00 53 e1                                      cmp r3, r2
00383dec  02 00 00 0a                                      beq #0x383dfc
00383df0  1c 30 83 e2                                      add r3, r3, #0x1c
00383df4  00 30 84 e5                                      str r3, [r4]
00383df8  10 80 bd e8                                      pop {r4, pc}
00383dfc  04 00 94 e5                                      ldr r0, [r4, #4]
00383e00  00 00 50 e3                                      cmp r0, #0
00383e04  01 00 00 0a                                      beq #0x383e10
00383e08  70 10 a0 e3                                      mov r1, #0x70
00383e0c  3b 14 0e eb                                      bl #0x708f00
00383e10  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00383e14  04 20 83 e2                                      add r2, r3, #4
00383e18  0c 20 84 e5                                      str r2, [r4, #0xc]
00383e1c  04 30 93 e5                                      ldr r3, [r3, #4]
00383e20  70 20 83 e2                                      add r2, r3, #0x70
00383e24  00 30 84 e5                                      str r3, [r4]
00383e28  08 20 84 e5                                      str r2, [r4, #8]
00383e2c  04 30 84 e5                                      str r3, [r4, #4]
00383e30  10 80 bd e8                                      pop {r4, pc}
00383e34  81 31 fe eb                                      bl #0x310440
00383e38  00 30 94 e5                                      ldr r3, [r4]
00383e3c  e7 ff ff ea                                      b #0x383de0

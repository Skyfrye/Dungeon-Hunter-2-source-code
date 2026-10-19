; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00319324, declared_size=140, range_size=140, mode=arm
; class-group: std::vector<sfc::script::lua::Value, std::allocator<sfc::script::lua::Value> >
; alias: _ZNSt6vectorIN3sfc6script3lua5ValueESaIS3_EE19_M_clear_after_moveEv
; demangled: std::vector<sfc::script::lua::Value, std::allocator<sfc::script::lua::Value> >::_M_clear_after_move()
; decoder-mode: arm
00319324  70 40 2d e9                                      push {r4, r5, r6, lr}
00319328  04 40 90 e5                                      ldr r4, [r0, #4]
0031932c  00 50 90 e5                                      ldr r5, [r0]
00319330  00 60 a0 e1                                      mov r6, r0
00319334  05 00 54 e1                                      cmp r4, r5
00319338  06 00 00 0a                                      beq #0x319358
0031933c  70 30 34 e5                                      ldr r3, [r4, #-0x70]!
00319340  04 00 a0 e1                                      mov r0, r4
00319344  0f e0 a0 e1                                      mov lr, pc
00319348  00 f0 93 e5                                      ldr pc, [r3]
0031934c  04 00 55 e1                                      cmp r5, r4
00319350  f9 ff ff 1a                                      bne #0x31933c
00319354  00 40 96 e5                                      ldr r4, [r6]
00319358  00 00 54 e3                                      cmp r4, #0
0031935c  08 30 96 e5                                      ldr r3, [r6, #8]
00319360  11 00 00 0a                                      beq #0x3193ac
00319364  03 30 64 e0                                      rsb r3, r4, r3
00319368  43 32 a0 e1                                      asr r3, r3, #4
0031936c  70 10 a0 e3                                      mov r1, #0x70
00319370  83 21 83 e0                                      add r2, r3, r3, lsl #3
00319374  02 23 82 e0                                      add r2, r2, r2, lsl #6
00319378  82 21 83 e0                                      add r2, r3, r2, lsl #3
0031937c  82 27 82 e0                                      add r2, r2, r2, lsl #15
00319380  82 31 83 e0                                      add r3, r3, r2, lsl #3
00319384  00 30 63 e2                                      rsb r3, r3, #0
00319388  91 03 01 e0                                      mul r1, r1, r3
0031938c  80 00 51 e3                                      cmp r1, #0x80
00319390  02 00 00 8a                                      bhi #0x3193a0
00319394  04 00 a0 e1                                      mov r0, r4
00319398  70 40 bd e8                                      pop {r4, r5, r6, lr}
0031939c  d7 be 0f ea                                      b #0x708f00
003193a0  04 00 a0 e1                                      mov r0, r4
003193a4  70 40 bd e8                                      pop {r4, r5, r6, lr}
003193a8  24 dc ff ea                                      b #0x310440
003193ac  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x003195c0, declared_size=300, range_size=300, mode=arm
; class-group: std::vector<sfc::script::lua::Value, std::allocator<sfc::script::lua::Value> >
; alias: _ZNSt6vectorIN3sfc6script3lua5ValueESaIS3_EE9push_backERKS3_
; demangled: std::vector<sfc::script::lua::Value, std::allocator<sfc::script::lua::Value> >::push_back(sfc::script::lua::Value const&)
; decoder-mode: arm
003195c0  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
003195c4  00 40 a0 e1                                      mov r4, r0
003195c8  08 50 94 e5                                      ldr r5, [r4, #8]
003195cc  04 00 90 e5                                      ldr r0, [r0, #4]
003195d0  08 d0 4d e2                                      sub sp, sp, #8
003195d4  01 60 a0 e1                                      mov r6, r1
003195d8  05 00 50 e1                                      cmp r0, r5
003195dc  05 00 00 0a                                      beq #0x3195f8
003195e0  13 0c 00 eb                                      bl #0x31c634
003195e4  04 30 94 e5                                      ldr r3, [r4, #4]
003195e8  70 30 83 e2                                      add r3, r3, #0x70
003195ec  04 30 84 e5                                      str r3, [r4, #4]
003195f0  08 d0 8d e2                                      add sp, sp, #8
003195f4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
003195f8  00 20 94 e5                                      ldr r2, [r4]
003195fc  92 34 02 e3                                      movw r3, #0x2492
00319600  03 36 83 e1                                      orr r3, r3, r3, lsl #12
00319604  05 20 62 e0                                      rsb r2, r2, r5
00319608  42 22 a0 e1                                      asr r2, r2, #4
0031960c  82 11 82 e0                                      add r1, r2, r2, lsl #3
00319610  01 13 81 e0                                      add r1, r1, r1, lsl #6
00319614  81 11 82 e0                                      add r1, r2, r1, lsl #3
00319618  81 17 81 e0                                      add r1, r1, r1, lsl #15
0031961c  81 21 82 e0                                      add r2, r2, r1, lsl #3
00319620  00 20 62 e2                                      rsb r2, r2, #0
00319624  01 00 52 e3                                      cmp r2, #1
00319628  02 10 82 20                                      addhs r1, r2, r2
0031962c  01 10 82 32                                      addlo r1, r2, #1
00319630  03 00 51 e1                                      cmp r1, r3
00319634  29 00 00 9a                                      bls #0x3196e0
00319638  92 14 02 e3                                      movw r1, #0x2492
0031963c  01 16 81 e1                                      orr r1, r1, r1, lsl #12
00319640  08 20 8d e2                                      add r2, sp, #8
00319644  04 10 22 e5                                      str r1, [r2, #-4]!
00319648  08 00 84 e2                                      add r0, r4, #8
0031964c  b9 ff ff eb                                      bl #0x319538
00319650  00 a0 94 e5                                      ldr sl, [r4]
00319654  00 80 a0 e1                                      mov r8, r0
00319658  05 50 6a e0                                      rsb r5, sl, r5
0031965c  45 52 a0 e1                                      asr r5, r5, #4
00319660  85 91 85 e0                                      add sb, r5, r5, lsl #3
00319664  09 93 89 e0                                      add sb, sb, sb, lsl #6
00319668  89 91 85 e0                                      add sb, r5, sb, lsl #3
0031966c  89 97 89 e0                                      add sb, sb, sb, lsl #15
00319670  89 91 85 e0                                      add sb, r5, sb, lsl #3
00319674  00 90 69 e2                                      rsb sb, sb, #0
00319678  00 00 59 e3                                      cmp sb, #0
0031967c  00 90 a0 d1                                      movle sb, r0
00319680  09 00 00 da                                      ble #0x3196ac
00319684  09 70 a0 e1                                      mov r7, sb
00319688  00 50 a0 e3                                      mov r5, #0
0031968c  05 00 88 e0                                      add r0, r8, r5
00319690  05 10 8a e0                                      add r1, sl, r5
00319694  e6 0b 00 eb                                      bl #0x31c634
00319698  01 70 57 e2                                      subs r7, r7, #1
0031969c  70 50 85 e2                                      add r5, r5, #0x70
003196a0  f9 ff ff 1a                                      bne #0x31968c
003196a4  70 30 a0 e3                                      mov r3, #0x70
003196a8  93 89 29 e0                                      mla sb, r3, sb, r8
003196ac  06 10 a0 e1                                      mov r1, r6
003196b0  09 00 a0 e1                                      mov r0, sb
003196b4  de 0b 00 eb                                      bl #0x31c634
003196b8  04 00 a0 e1                                      mov r0, r4
003196bc  18 ff ff eb                                      bl #0x319324
003196c0  04 30 9d e5                                      ldr r3, [sp, #4]
003196c4  70 20 a0 e3                                      mov r2, #0x70
003196c8  70 90 89 e2                                      add sb, sb, #0x70
003196cc  92 83 23 e0                                      mla r3, r2, r3, r8
003196d0  00 80 84 e5                                      str r8, [r4]
003196d4  08 30 84 e5                                      str r3, [r4, #8]
003196d8  04 90 84 e5                                      str sb, [r4, #4]
003196dc  c3 ff ff ea                                      b #0x3195f0
003196e0  01 00 52 e1                                      cmp r2, r1
003196e4  d5 ff ff 9a                                      bls #0x319640
003196e8  d2 ff ff ea                                      b #0x319638

; FUNCTION 0x0031bde0, declared_size=140, range_size=140, mode=arm
; class-group: std::vector<sfc::script::lua::Value, std::allocator<sfc::script::lua::Value> >
; alias: _ZNSt6vectorIN3sfc6script3lua5ValueESaIS3_EE8_M_clearEv
; demangled: std::vector<sfc::script::lua::Value, std::allocator<sfc::script::lua::Value> >::_M_clear()
; decoder-mode: arm
0031bde0  70 40 2d e9                                      push {r4, r5, r6, lr}
0031bde4  04 40 90 e5                                      ldr r4, [r0, #4]
0031bde8  00 50 90 e5                                      ldr r5, [r0]
0031bdec  00 60 a0 e1                                      mov r6, r0
0031bdf0  05 00 54 e1                                      cmp r4, r5
0031bdf4  06 00 00 0a                                      beq #0x31be14
0031bdf8  70 30 34 e5                                      ldr r3, [r4, #-0x70]!
0031bdfc  04 00 a0 e1                                      mov r0, r4
0031be00  0f e0 a0 e1                                      mov lr, pc
0031be04  00 f0 93 e5                                      ldr pc, [r3]
0031be08  04 00 55 e1                                      cmp r5, r4
0031be0c  f9 ff ff 1a                                      bne #0x31bdf8
0031be10  00 40 96 e5                                      ldr r4, [r6]
0031be14  00 00 54 e3                                      cmp r4, #0
0031be18  08 30 96 e5                                      ldr r3, [r6, #8]
0031be1c  11 00 00 0a                                      beq #0x31be68
0031be20  03 30 64 e0                                      rsb r3, r4, r3
0031be24  43 32 a0 e1                                      asr r3, r3, #4
0031be28  70 10 a0 e3                                      mov r1, #0x70
0031be2c  83 21 83 e0                                      add r2, r3, r3, lsl #3
0031be30  02 23 82 e0                                      add r2, r2, r2, lsl #6
0031be34  82 21 83 e0                                      add r2, r3, r2, lsl #3
0031be38  82 27 82 e0                                      add r2, r2, r2, lsl #15
0031be3c  82 31 83 e0                                      add r3, r3, r2, lsl #3
0031be40  00 30 63 e2                                      rsb r3, r3, #0
0031be44  91 03 01 e0                                      mul r1, r1, r3
0031be48  80 00 51 e3                                      cmp r1, #0x80
0031be4c  02 00 00 8a                                      bhi #0x31be5c
0031be50  04 00 a0 e1                                      mov r0, r4
0031be54  70 40 bd e8                                      pop {r4, r5, r6, lr}
0031be58  28 b4 0f ea                                      b #0x708f00
0031be5c  04 00 a0 e1                                      mov r0, r4
0031be60  70 40 bd e8                                      pop {r4, r5, r6, lr}
0031be64  75 d1 ff ea                                      b #0x310440
0031be68  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0031bf04, declared_size=136, range_size=136, mode=arm
; class-group: std::vector<sfc::script::lua::Value, std::allocator<sfc::script::lua::Value> >
; alias: _ZNSt6vectorIN3sfc6script3lua5ValueESaIS3_EED1Ev
; demangled: std::vector<sfc::script::lua::Value, std::allocator<sfc::script::lua::Value> >::~vector()
; decoder-mode: arm
0031bf04  70 40 2d e9                                      push {r4, r5, r6, lr}
0031bf08  04 50 90 e5                                      ldr r5, [r0, #4]
0031bf0c  00 60 90 e5                                      ldr r6, [r0]
0031bf10  00 40 a0 e1                                      mov r4, r0
0031bf14  06 00 55 e1                                      cmp r5, r6
0031bf18  05 00 00 0a                                      beq #0x31bf34
0031bf1c  70 30 35 e5                                      ldr r3, [r5, #-0x70]!
0031bf20  05 00 a0 e1                                      mov r0, r5
0031bf24  0f e0 a0 e1                                      mov lr, pc
0031bf28  00 f0 93 e5                                      ldr pc, [r3]
0031bf2c  05 00 56 e1                                      cmp r6, r5
0031bf30  f9 ff ff 1a                                      bne #0x31bf1c
0031bf34  00 00 94 e5                                      ldr r0, [r4]
0031bf38  00 00 50 e3                                      cmp r0, #0
0031bf3c  0d 00 00 0a                                      beq #0x31bf78
0031bf40  08 30 94 e5                                      ldr r3, [r4, #8]
0031bf44  70 10 a0 e3                                      mov r1, #0x70
0031bf48  03 30 60 e0                                      rsb r3, r0, r3
0031bf4c  43 32 a0 e1                                      asr r3, r3, #4
0031bf50  83 21 83 e0                                      add r2, r3, r3, lsl #3
0031bf54  02 23 82 e0                                      add r2, r2, r2, lsl #6
0031bf58  82 21 83 e0                                      add r2, r3, r2, lsl #3
0031bf5c  82 27 82 e0                                      add r2, r2, r2, lsl #15
0031bf60  82 31 83 e0                                      add r3, r3, r2, lsl #3
0031bf64  00 30 63 e2                                      rsb r3, r3, #0
0031bf68  91 03 01 e0                                      mul r1, r1, r3
0031bf6c  80 00 51 e3                                      cmp r1, #0x80
0031bf70  02 00 00 8a                                      bhi #0x31bf80
0031bf74  e1 b3 0f eb                                      bl #0x708f00
0031bf78  04 00 a0 e1                                      mov r0, r4
0031bf7c  70 80 bd e8                                      pop {r4, r5, r6, pc}
0031bf80  2e d1 ff eb                                      bl #0x310440
0031bf84  04 00 a0 e1                                      mov r0, r4
0031bf88  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0031c3cc, declared_size=160, range_size=160, mode=arm
; class-group: std::vector<sfc::script::lua::Value, std::allocator<sfc::script::lua::Value> >
; alias: _ZNSt6vectorIN3sfc6script3lua5ValueESaIS3_EE8_M_eraseEPS3_S6_RKSt12__false_type
; demangled: std::vector<sfc::script::lua::Value, std::allocator<sfc::script::lua::Value> >::_M_erase(sfc::script::lua::Value*, sfc::script::lua::Value*, std::__false_type const&)
; decoder-mode: arm
0031c3cc  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0031c3d0  04 40 90 e5                                      ldr r4, [r0, #4]
0031c3d4  00 50 a0 e1                                      mov r5, r0
0031c3d8  02 80 a0 e1                                      mov r8, r2
0031c3dc  04 30 62 e0                                      rsb r3, r2, r4
0031c3e0  43 32 a0 e1                                      asr r3, r3, #4
0031c3e4  01 70 a0 e1                                      mov r7, r1
0031c3e8  83 a1 83 e0                                      add sl, r3, r3, lsl #3
0031c3ec  0a a3 8a e0                                      add sl, sl, sl, lsl #6
0031c3f0  8a a1 83 e0                                      add sl, r3, sl, lsl #3
0031c3f4  8a a7 8a e0                                      add sl, sl, sl, lsl #15
0031c3f8  8a a1 83 e0                                      add sl, r3, sl, lsl #3
0031c3fc  00 a0 6a e2                                      rsb sl, sl, #0
0031c400  00 00 5a e3                                      cmp sl, #0
0031c404  01 a0 a0 d1                                      movle sl, r1
0031c408  0a 00 00 da                                      ble #0x31c438
0031c40c  0a 60 a0 e1                                      mov r6, sl
0031c410  00 40 a0 e3                                      mov r4, #0
0031c414  04 00 87 e0                                      add r0, r7, r4
0031c418  04 10 88 e0                                      add r1, r8, r4
0031c41c  d1 ff ff eb                                      bl #0x31c368
0031c420  01 60 56 e2                                      subs r6, r6, #1
0031c424  70 40 84 e2                                      add r4, r4, #0x70
0031c428  f9 ff ff 1a                                      bne #0x31c414
0031c42c  70 30 a0 e3                                      mov r3, #0x70
0031c430  93 7a 2a e0                                      mla sl, r3, sl, r7
0031c434  04 40 95 e5                                      ldr r4, [r5, #4]
0031c438  04 00 5a e1                                      cmp sl, r4
0031c43c  07 00 00 0a                                      beq #0x31c460
0031c440  0a 60 a0 e1                                      mov r6, sl
0031c444  00 30 96 e5                                      ldr r3, [r6]
0031c448  06 00 a0 e1                                      mov r0, r6
0031c44c  70 60 86 e2                                      add r6, r6, #0x70
0031c450  0f e0 a0 e1                                      mov lr, pc
0031c454  00 f0 93 e5                                      ldr pc, [r3]
0031c458  04 00 56 e1                                      cmp r6, r4
0031c45c  f8 ff ff 1a                                      bne #0x31c444
0031c460  04 a0 85 e5                                      str sl, [r5, #4]
0031c464  07 00 a0 e1                                      mov r0, r7
0031c468  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x0031c760, declared_size=208, range_size=208, mode=arm
; class-group: std::vector<sfc::script::lua::Value, std::allocator<sfc::script::lua::Value> >
; alias: _ZNSt6vectorIN3sfc6script3lua5ValueESaIS3_EEC1ERKS5_
; demangled: std::vector<sfc::script::lua::Value, std::allocator<sfc::script::lua::Value> >::vector(std::vector<sfc::script::lua::Value, std::allocator<sfc::script::lua::Value> > const&)
; decoder-mode: arm
0031c760  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0031c764  04 20 91 e5                                      ldr r2, [r1, #4]
0031c768  00 30 91 e5                                      ldr r3, [r1]
0031c76c  01 50 a0 e1                                      mov r5, r1
0031c770  0c d0 4d e2                                      sub sp, sp, #0xc
0031c774  02 30 63 e0                                      rsb r3, r3, r2
0031c778  43 32 a0 e1                                      asr r3, r3, #4
0031c77c  00 40 a0 e1                                      mov r4, r0
0031c780  83 11 83 e0                                      add r1, r3, r3, lsl #3
0031c784  00 60 a0 e3                                      mov r6, #0
0031c788  01 13 81 e0                                      add r1, r1, r1, lsl #6
0031c78c  08 20 8d e2                                      add r2, sp, #8
0031c790  81 11 83 e0                                      add r1, r3, r1, lsl #3
0031c794  00 60 84 e5                                      str r6, [r4]
0031c798  81 17 81 e0                                      add r1, r1, r1, lsl #15
0031c79c  04 60 84 e5                                      str r6, [r4, #4]
0031c7a0  81 11 83 e0                                      add r1, r3, r1, lsl #3
0031c7a4  00 10 61 e2                                      rsb r1, r1, #0
0031c7a8  08 60 a0 e5                                      str r6, [r0, #8]!
0031c7ac  04 10 22 e5                                      str r1, [r2, #-4]!
0031c7b0  60 f3 ff eb                                      bl #0x319538
0031c7b4  04 30 9d e5                                      ldr r3, [sp, #4]
0031c7b8  70 20 a0 e3                                      mov r2, #0x70
0031c7bc  00 00 84 e5                                      str r0, [r4]
0031c7c0  92 03 23 e0                                      mla r3, r2, r3, r0
0031c7c4  09 00 84 e9                                      stmib r4, {r0, r3}
0031c7c8  04 30 95 e5                                      ldr r3, [r5, #4]
0031c7cc  00 80 95 e5                                      ldr r8, [r5]
0031c7d0  00 70 a0 e1                                      mov r7, r0
0031c7d4  03 30 68 e0                                      rsb r3, r8, r3
0031c7d8  43 32 a0 e1                                      asr r3, r3, #4
0031c7dc  83 a1 83 e0                                      add sl, r3, r3, lsl #3
0031c7e0  0a a3 8a e0                                      add sl, sl, sl, lsl #6
0031c7e4  8a a1 83 e0                                      add sl, r3, sl, lsl #3
0031c7e8  8a a7 8a e0                                      add sl, sl, sl, lsl #15
0031c7ec  8a a1 83 e0                                      add sl, r3, sl, lsl #3
0031c7f0  00 a0 6a e2                                      rsb sl, sl, #0
0031c7f4  06 00 5a e1                                      cmp sl, r6
0031c7f8  08 00 00 da                                      ble #0x31c820
0031c7fc  0a 50 a0 e1                                      mov r5, sl
0031c800  06 00 87 e0                                      add r0, r7, r6
0031c804  06 10 88 e0                                      add r1, r8, r6
0031c808  89 ff ff eb                                      bl #0x31c634
0031c80c  01 50 55 e2                                      subs r5, r5, #1
0031c810  70 60 86 e2                                      add r6, r6, #0x70
0031c814  f9 ff ff 1a                                      bne #0x31c800
0031c818  70 30 a0 e3                                      mov r3, #0x70
0031c81c  93 7a 27 e0                                      mla r7, r3, sl, r7
0031c820  04 70 84 e5                                      str r7, [r4, #4]
0031c824  04 00 a0 e1                                      mov r0, r4
0031c828  0c d0 8d e2                                      add sp, sp, #0xc
0031c82c  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}

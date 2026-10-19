; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0081d0ac, declared_size=136, range_size=136, mode=arm
; class-group: std::vector<tMemberInfo, std::allocator<tMemberInfo> >
; alias: _ZNSt6vectorI11tMemberInfoSaIS0_EED1Ev
; demangled: std::vector<tMemberInfo, std::allocator<tMemberInfo> >::~vector()
; decoder-mode: arm
0081d0ac  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0081d0b0  04 50 90 e5                                      ldr r5, [r0, #4]
0081d0b4  00 60 90 e5                                      ldr r6, [r0]
0081d0b8  00 40 a0 e1                                      mov r4, r0
0081d0bc  06 00 55 e1                                      cmp r5, r6
0081d0c0  08 00 00 0a                                      beq #0x81d0e8
0081d0c4  00 80 a0 e3                                      mov r8, #0
0081d0c8  00 70 e0 e3                                      mvn r7, #0
0081d0cc  54 50 45 e2                                      sub r5, r5, #0x54
0081d0d0  05 00 a0 e1                                      mov r0, r5
0081d0d4  24 80 85 e5                                      str r8, [r5, #0x24]
0081d0d8  0c 70 80 e4                                      str r7, [r0], #0xc
0081d0dc  5c ec eb eb                                      bl #0x318254
0081d0e0  05 00 56 e1                                      cmp r6, r5
0081d0e4  f8 ff ff 1a                                      bne #0x81d0cc
0081d0e8  00 00 94 e5                                      ldr r0, [r4]
0081d0ec  00 00 50 e3                                      cmp r0, #0
0081d0f0  0a 00 00 0a                                      beq #0x81d120
0081d0f4  08 10 94 e5                                      ldr r1, [r4, #8]
0081d0f8  3d 3f 0c e3                                      movw r3, #0xcf3d
0081d0fc  f3 3c 43 e3                                      movt r3, #0x3cf3
0081d100  01 10 60 e0                                      rsb r1, r0, r1
0081d104  41 11 a0 e1                                      asr r1, r1, #2
0081d108  93 01 03 e0                                      mul r3, r3, r1
0081d10c  54 10 a0 e3                                      mov r1, #0x54
0081d110  91 03 01 e0                                      mul r1, r1, r3
0081d114  80 00 51 e3                                      cmp r1, #0x80
0081d118  02 00 00 8a                                      bhi #0x81d128
0081d11c  85 84 02 eb                                      bl #0x8be338
0081d120  04 00 a0 e1                                      mov r0, r4
0081d124  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0081d128  c4 cc eb eb                                      bl #0x310440
0081d12c  04 00 a0 e1                                      mov r0, r4
0081d130  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0081db18, declared_size=136, range_size=136, mode=arm
; class-group: std::vector<tMemberInfo, std::allocator<tMemberInfo> >
; alias: _ZNSt6vectorI11tMemberInfoSaIS0_EEC1ERKS2_
; demangled: std::vector<tMemberInfo, std::allocator<tMemberInfo> >::vector(std::vector<tMemberInfo, std::allocator<tMemberInfo> > const&)
; decoder-mode: arm
0081db18  70 40 2d e9                                      push {r4, r5, r6, lr}
0081db1c  01 60 a0 e1                                      mov r6, r1
0081db20  00 20 96 e5                                      ldr r2, [r6]
0081db24  04 10 91 e5                                      ldr r1, [r1, #4]
0081db28  3d 3f 0c e3                                      movw r3, #0xcf3d
0081db2c  f3 3c 43 e3                                      movt r3, #0x3cf3
0081db30  01 10 62 e0                                      rsb r1, r2, r1
0081db34  41 11 a0 e1                                      asr r1, r1, #2
0081db38  93 01 01 e0                                      mul r1, r3, r1
0081db3c  10 d0 4d e2                                      sub sp, sp, #0x10
0081db40  00 40 a0 e1                                      mov r4, r0
0081db44  00 50 a0 e3                                      mov r5, #0
0081db48  10 20 8d e2                                      add r2, sp, #0x10
0081db4c  08 10 22 e5                                      str r1, [r2, #-8]!
0081db50  00 50 84 e5                                      str r5, [r4]
0081db54  04 50 84 e5                                      str r5, [r4, #4]
0081db58  08 50 a0 e5                                      str r5, [r0, #8]!
0081db5c  e5 fb ff eb                                      bl #0x81caf8
0081db60  08 30 9d e5                                      ldr r3, [sp, #8]
0081db64  54 10 a0 e3                                      mov r1, #0x54
0081db68  00 00 84 e5                                      str r0, [r4]
0081db6c  91 03 23 e0                                      mla r3, r1, r3, r0
0081db70  09 00 84 e9                                      stmib r4, {r0, r3}
0081db74  00 30 96 e5                                      ldr r3, [r6]
0081db78  00 20 a0 e1                                      mov r2, r0
0081db7c  04 10 96 e5                                      ldr r1, [r6, #4]
0081db80  03 00 a0 e1                                      mov r0, r3
0081db84  0c 30 8d e2                                      add r3, sp, #0xc
0081db88  00 50 8d e5                                      str r5, [sp]
0081db8c  b5 ff ff eb                                      bl #0x81da68
0081db90  04 00 84 e5                                      str r0, [r4, #4]
0081db94  04 00 a0 e1                                      mov r0, r4
0081db98  10 d0 8d e2                                      add sp, sp, #0x10
0081db9c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00821cf8, declared_size=196, range_size=196, mode=arm
; class-group: std::vector<tMemberInfo, std::allocator<tMemberInfo> >
; alias: _ZNSt6vectorI11tMemberInfoSaIS0_EE8_M_clearEv
; demangled: std::vector<tMemberInfo, std::allocator<tMemberInfo> >::_M_clear()
; decoder-mode: arm
00821cf8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00821cfc  04 40 90 e5                                      ldr r4, [r0, #4]
00821d00  00 50 90 e5                                      ldr r5, [r0]
00821d04  00 80 a0 e1                                      mov r8, r0
00821d08  05 00 54 e1                                      cmp r4, r5
00821d0c  17 00 00 0a                                      beq #0x821d70
00821d10  00 70 a0 e3                                      mov r7, #0
00821d14  00 60 e0 e3                                      mvn r6, #0
00821d18  02 00 00 ea                                      b #0x821d28
00821d1c  85 71 02 eb                                      bl #0x8be338
00821d20  04 00 55 e1                                      cmp r5, r4
00821d24  10 00 00 0a                                      beq #0x821d6c
00821d28  54 40 44 e2                                      sub r4, r4, #0x54
00821d2c  04 20 a0 e1                                      mov r2, r4
00821d30  24 70 84 e5                                      str r7, [r4, #0x24]
00821d34  0c 60 82 e4                                      str r6, [r2], #0xc
00821d38  14 30 92 e5                                      ldr r3, [r2, #0x14]
00821d3c  02 00 53 e1                                      cmp r3, r2
00821d40  03 00 a0 e1                                      mov r0, r3
00821d44  f5 ff ff 0a                                      beq #0x821d20
00821d48  00 00 53 e3                                      cmp r3, #0
00821d4c  f3 ff ff 0a                                      beq #0x821d20
00821d50  00 10 92 e5                                      ldr r1, [r2]
00821d54  01 10 63 e0                                      rsb r1, r3, r1
00821d58  80 00 51 e3                                      cmp r1, #0x80
00821d5c  ee ff ff 9a                                      bls #0x821d1c
00821d60  b6 b9 eb eb                                      bl #0x310440
00821d64  04 00 55 e1                                      cmp r5, r4
00821d68  ee ff ff 1a                                      bne #0x821d28
00821d6c  00 40 98 e5                                      ldr r4, [r8]
00821d70  00 00 54 e3                                      cmp r4, #0
00821d74  08 30 98 e5                                      ldr r3, [r8, #8]
00821d78  0e 00 00 0a                                      beq #0x821db8
00821d7c  03 10 64 e0                                      rsb r1, r4, r3
00821d80  3d 3f 0c e3                                      movw r3, #0xcf3d
00821d84  41 11 a0 e1                                      asr r1, r1, #2
00821d88  f3 3c 43 e3                                      movt r3, #0x3cf3
00821d8c  93 01 03 e0                                      mul r3, r3, r1
00821d90  54 10 a0 e3                                      mov r1, #0x54
00821d94  91 03 01 e0                                      mul r1, r1, r3
00821d98  80 00 51 e3                                      cmp r1, #0x80
00821d9c  02 00 00 8a                                      bhi #0x821dac
00821da0  04 00 a0 e1                                      mov r0, r4
00821da4  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00821da8  62 71 02 ea                                      b #0x8be338
00821dac  04 00 a0 e1                                      mov r0, r4
00821db0  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00821db4  a1 b9 eb ea                                      b #0x310440
00821db8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00821e14, declared_size=196, range_size=196, mode=arm
; class-group: std::vector<tMemberInfo, std::allocator<tMemberInfo> >
; alias: _ZNSt6vectorI11tMemberInfoSaIS0_EE19_M_clear_after_moveEv
; demangled: std::vector<tMemberInfo, std::allocator<tMemberInfo> >::_M_clear_after_move()
; decoder-mode: arm
00821e14  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00821e18  04 40 90 e5                                      ldr r4, [r0, #4]
00821e1c  00 50 90 e5                                      ldr r5, [r0]
00821e20  00 80 a0 e1                                      mov r8, r0
00821e24  05 00 54 e1                                      cmp r4, r5
00821e28  17 00 00 0a                                      beq #0x821e8c
00821e2c  00 70 a0 e3                                      mov r7, #0
00821e30  00 60 e0 e3                                      mvn r6, #0
00821e34  02 00 00 ea                                      b #0x821e44
00821e38  3e 71 02 eb                                      bl #0x8be338
00821e3c  04 00 55 e1                                      cmp r5, r4
00821e40  10 00 00 0a                                      beq #0x821e88
00821e44  54 40 44 e2                                      sub r4, r4, #0x54
00821e48  04 20 a0 e1                                      mov r2, r4
00821e4c  24 70 84 e5                                      str r7, [r4, #0x24]
00821e50  0c 60 82 e4                                      str r6, [r2], #0xc
00821e54  14 30 92 e5                                      ldr r3, [r2, #0x14]
00821e58  02 00 53 e1                                      cmp r3, r2
00821e5c  03 00 a0 e1                                      mov r0, r3
00821e60  f5 ff ff 0a                                      beq #0x821e3c
00821e64  00 00 53 e3                                      cmp r3, #0
00821e68  f3 ff ff 0a                                      beq #0x821e3c
00821e6c  00 10 92 e5                                      ldr r1, [r2]
00821e70  01 10 63 e0                                      rsb r1, r3, r1
00821e74  80 00 51 e3                                      cmp r1, #0x80
00821e78  ee ff ff 9a                                      bls #0x821e38
00821e7c  6f b9 eb eb                                      bl #0x310440
00821e80  04 00 55 e1                                      cmp r5, r4
00821e84  ee ff ff 1a                                      bne #0x821e44
00821e88  00 40 98 e5                                      ldr r4, [r8]
00821e8c  00 00 54 e3                                      cmp r4, #0
00821e90  08 30 98 e5                                      ldr r3, [r8, #8]
00821e94  0e 00 00 0a                                      beq #0x821ed4
00821e98  03 10 64 e0                                      rsb r1, r4, r3
00821e9c  3d 3f 0c e3                                      movw r3, #0xcf3d
00821ea0  41 11 a0 e1                                      asr r1, r1, #2
00821ea4  f3 3c 43 e3                                      movt r3, #0x3cf3
00821ea8  93 01 03 e0                                      mul r3, r3, r1
00821eac  54 10 a0 e3                                      mov r1, #0x54
00821eb0  91 03 01 e0                                      mul r1, r1, r3
00821eb4  80 00 51 e3                                      cmp r1, #0x80
00821eb8  02 00 00 8a                                      bhi #0x821ec8
00821ebc  04 00 a0 e1                                      mov r0, r4
00821ec0  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00821ec4  1b 71 02 ea                                      b #0x8be338
00821ec8  04 00 a0 e1                                      mov r0, r4
00821ecc  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00821ed0  5a b9 eb ea                                      b #0x310440
00821ed4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x008220e8, declared_size=572, range_size=572, mode=arm
; class-group: std::vector<tMemberInfo, std::allocator<tMemberInfo> >
; alias: _ZNSt6vectorI11tMemberInfoSaIS0_EE9push_backERKS0_
; demangled: std::vector<tMemberInfo, std::allocator<tMemberInfo> >::push_back(tMemberInfo const&)
; decoder-mode: arm
008220e8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
008220ec  20 01 90 e9                                      ldmib r0, {r5, r8}
008220f0  08 d0 4d e2                                      sub sp, sp, #8
008220f4  00 60 a0 e1                                      mov r6, r0
008220f8  08 00 55 e1                                      cmp r5, r8
008220fc  01 40 a0 e1                                      mov r4, r1
00822100  1f 00 00 0a                                      beq #0x822184
00822104  00 20 91 e5                                      ldr r2, [r1]
00822108  0c 30 85 e2                                      add r3, r5, #0xc
0082210c  03 00 a0 e1                                      mov r0, r3
00822110  00 20 85 e5                                      str r2, [r5]
00822114  04 20 91 e5                                      ldr r2, [r1, #4]
00822118  28 70 85 e2                                      add r7, r5, #0x28
0082211c  04 20 85 e5                                      str r2, [r5, #4]
00822120  08 20 91 e5                                      ldr r2, [r1, #8]
00822124  1c 30 85 e5                                      str r3, [r5, #0x1c]
00822128  20 30 85 e5                                      str r3, [r5, #0x20]
0082212c  08 20 85 e5                                      str r2, [r5, #8]
00822130  20 10 91 e5                                      ldr r1, [r1, #0x20]
00822134  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
00822138  6a bd eb eb                                      bl #0x3116e8
0082213c  24 30 94 e5                                      ldr r3, [r4, #0x24]
00822140  28 c0 84 e2                                      add ip, r4, #0x28
00822144  24 30 85 e5                                      str r3, [r5, #0x24]
00822148  0f 00 bc e8                                      ldm ip!, {r0, r1, r2, r3}
0082214c  0f 00 a7 e8                                      stm r7!, {r0, r1, r2, r3}
00822150  0f 00 bc e8                                      ldm ip!, {r0, r1, r2, r3}
00822154  0f 00 a7 e8                                      stm r7!, {r0, r1, r2, r3}
00822158  00 30 9c e5                                      ldr r3, [ip]
0082215c  00 30 c7 e5                                      strb r3, [r7]
00822160  4c 30 94 e5                                      ldr r3, [r4, #0x4c]
00822164  4c 30 85 e5                                      str r3, [r5, #0x4c]
00822168  50 30 d4 e5                                      ldrb r3, [r4, #0x50]
0082216c  50 30 c5 e5                                      strb r3, [r5, #0x50]
00822170  04 30 96 e5                                      ldr r3, [r6, #4]
00822174  54 30 83 e2                                      add r3, r3, #0x54
00822178  04 30 86 e5                                      str r3, [r6, #4]
0082217c  08 d0 8d e2                                      add sp, sp, #8
00822180  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00822184  00 20 90 e5                                      ldr r2, [r0]
00822188  3d 3f 0c e3                                      movw r3, #0xcf3d
0082218c  f3 3c 43 e3                                      movt r3, #0x3cf3
00822190  08 20 62 e0                                      rsb r2, r2, r8
00822194  42 21 a0 e1                                      asr r2, r2, #2
00822198  93 02 02 e0                                      mul r2, r3, r2
0082219c  c3 30 03 e3                                      movw r3, #0x30c3
008221a0  01 00 52 e3                                      cmp r2, #1
008221a4  02 10 82 20                                      addhs r1, r2, r2
008221a8  01 10 82 32                                      addlo r1, r2, #1
008221ac  03 36 83 e1                                      orr r3, r3, r3, lsl #12
008221b0  03 00 51 e1                                      cmp r1, r3
008221b4  57 00 00 9a                                      bls #0x822318
008221b8  c3 10 03 e3                                      movw r1, #0x30c3
008221bc  01 16 81 e1                                      orr r1, r1, r1, lsl #12
008221c0  08 20 8d e2                                      add r2, sp, #8
008221c4  04 10 22 e5                                      str r1, [r2, #-4]!
008221c8  08 00 86 e2                                      add r0, r6, #8
008221cc  49 ea ff eb                                      bl #0x81caf8
008221d0  00 70 96 e5                                      ldr r7, [r6]
008221d4  3d 3f 0c e3                                      movw r3, #0xcf3d
008221d8  f3 3c 43 e3                                      movt r3, #0x3cf3
008221dc  08 90 67 e0                                      rsb sb, r7, r8
008221e0  49 91 a0 e1                                      asr sb, sb, #2
008221e4  93 09 09 e0                                      mul sb, r3, sb
008221e8  00 a0 a0 e1                                      mov sl, r0
008221ec  00 00 59 e3                                      cmp sb, #0
008221f0  00 90 a0 d1                                      movle sb, r0
008221f4  22 00 00 da                                      ble #0x822284
008221f8  09 80 a0 e1                                      mov r8, sb
008221fc  00 50 a0 e1                                      mov r5, r0
00822200  00 20 97 e5                                      ldr r2, [r7]
00822204  0c 30 85 e2                                      add r3, r5, #0xc
00822208  03 00 a0 e1                                      mov r0, r3
0082220c  00 20 85 e5                                      str r2, [r5]
00822210  04 20 97 e5                                      ldr r2, [r7, #4]
00822214  04 20 85 e5                                      str r2, [r5, #4]
00822218  08 20 97 e5                                      ldr r2, [r7, #8]
0082221c  1c 30 85 e5                                      str r3, [r5, #0x1c]
00822220  20 30 85 e5                                      str r3, [r5, #0x20]
00822224  08 20 85 e5                                      str r2, [r5, #8]
00822228  20 10 97 e5                                      ldr r1, [r7, #0x20]
0082222c  1c 20 97 e5                                      ldr r2, [r7, #0x1c]
00822230  2c bd eb eb                                      bl #0x3116e8
00822234  24 30 97 e5                                      ldr r3, [r7, #0x24]
00822238  28 c0 85 e2                                      add ip, r5, #0x28
0082223c  28 e0 87 e2                                      add lr, r7, #0x28
00822240  24 30 85 e5                                      str r3, [r5, #0x24]
00822244  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
00822248  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
0082224c  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
00822250  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
00822254  00 30 9e e5                                      ldr r3, [lr]
00822258  01 80 58 e2                                      subs r8, r8, #1
0082225c  00 30 cc e5                                      strb r3, [ip]
00822260  4c 30 97 e5                                      ldr r3, [r7, #0x4c]
00822264  4c 30 85 e5                                      str r3, [r5, #0x4c]
00822268  50 30 d7 e5                                      ldrb r3, [r7, #0x50]
0082226c  54 70 87 e2                                      add r7, r7, #0x54
00822270  50 30 c5 e5                                      strb r3, [r5, #0x50]
00822274  54 50 85 e2                                      add r5, r5, #0x54
00822278  e0 ff ff 1a                                      bne #0x822200
0082227c  54 30 a0 e3                                      mov r3, #0x54
00822280  93 a9 29 e0                                      mla sb, r3, sb, sl
00822284  00 20 94 e5                                      ldr r2, [r4]
00822288  0c 30 89 e2                                      add r3, sb, #0xc
0082228c  03 00 a0 e1                                      mov r0, r3
00822290  00 20 89 e5                                      str r2, [sb]
00822294  04 20 94 e5                                      ldr r2, [r4, #4]
00822298  04 20 89 e5                                      str r2, [sb, #4]
0082229c  08 20 94 e5                                      ldr r2, [r4, #8]
008222a0  1c 30 89 e5                                      str r3, [sb, #0x1c]
008222a4  20 30 89 e5                                      str r3, [sb, #0x20]
008222a8  08 20 89 e5                                      str r2, [sb, #8]
008222ac  20 10 94 e5                                      ldr r1, [r4, #0x20]
008222b0  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
008222b4  0b bd eb eb                                      bl #0x3116e8
008222b8  24 30 94 e5                                      ldr r3, [r4, #0x24]
008222bc  28 c0 89 e2                                      add ip, sb, #0x28
008222c0  28 e0 84 e2                                      add lr, r4, #0x28
008222c4  24 30 89 e5                                      str r3, [sb, #0x24]
008222c8  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
008222cc  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
008222d0  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
008222d4  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
008222d8  00 30 9e e5                                      ldr r3, [lr]
008222dc  06 00 a0 e1                                      mov r0, r6
008222e0  00 30 cc e5                                      strb r3, [ip]
008222e4  4c 30 94 e5                                      ldr r3, [r4, #0x4c]
008222e8  4c 30 89 e5                                      str r3, [sb, #0x4c]
008222ec  50 30 d4 e5                                      ldrb r3, [r4, #0x50]
008222f0  50 30 c9 e5                                      strb r3, [sb, #0x50]
008222f4  c6 fe ff eb                                      bl #0x821e14
008222f8  04 30 9d e5                                      ldr r3, [sp, #4]
008222fc  54 20 a0 e3                                      mov r2, #0x54
00822300  54 90 89 e2                                      add sb, sb, #0x54
00822304  92 a3 23 e0                                      mla r3, r2, r3, sl
00822308  00 a0 86 e5                                      str sl, [r6]
0082230c  08 30 86 e5                                      str r3, [r6, #8]
00822310  04 90 86 e5                                      str sb, [r6, #4]
00822314  98 ff ff ea                                      b #0x82217c
00822318  01 00 52 e1                                      cmp r2, r1
0082231c  a7 ff ff 9a                                      bls #0x8221c0
00822320  a4 ff ff ea                                      b #0x8221b8

; FUNCTION 0x00822434, declared_size=260, range_size=260, mode=arm
; class-group: std::vector<tMemberInfo, std::allocator<tMemberInfo> >
; alias: _ZNSt6vectorI11tMemberInfoSaIS0_EEC1Ej.clone.2
; demangled: std::vector<tMemberInfo, std::allocator<tMemberInfo> >::vector(unsigned int) [clone .clone.2]
; decoder-mode: arm
00822434  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00822438  f0 60 9f e5                                      ldr r6, [pc, #0xf0]
0082243c  f0 70 9f e5                                      ldr r7, [pc, #0xf0]
00822440  60 d0 4d e2                                      sub sp, sp, #0x60
00822444  06 60 8f e0                                      add r6, pc, r6
00822448  07 30 96 e7                                      ldr r3, [r6, r7]
0082244c  00 40 a0 e1                                      mov r4, r0
00822450  00 50 a0 e3                                      mov r5, #0
00822454  00 30 93 e5                                      ldr r3, [r3]
00822458  60 20 8d e2                                      add r2, sp, #0x60
0082245c  00 50 84 e5                                      str r5, [r4]
00822460  05 10 a0 e1                                      mov r1, r5
00822464  5c 30 8d e5                                      str r3, [sp, #0x5c]
00822468  04 50 84 e5                                      str r5, [r4, #4]
0082246c  5c 50 22 e5                                      str r5, [r2, #-0x5c]!
00822470  08 50 a0 e5                                      str r5, [r0, #8]!
00822474  9f e9 ff eb                                      bl #0x81caf8
00822478  04 30 9d e5                                      ldr r3, [sp, #4]
0082247c  54 20 a0 e3                                      mov r2, #0x54
00822480  14 80 8d e2                                      add r8, sp, #0x14
00822484  92 03 23 e0                                      mla r3, r2, r3, r0
00822488  00 00 84 e5                                      str r0, [r4]
0082248c  09 00 84 e9                                      stmib r4, {r0, r3}
00822490  10 10 a0 e3                                      mov r1, #0x10
00822494  08 00 a0 e1                                      mov r0, r8
00822498  24 80 8d e5                                      str r8, [sp, #0x24]
0082249c  28 80 8d e5                                      str r8, [sp, #0x28]
008224a0  75 bc eb eb                                      bl #0x31167c
008224a4  24 30 9d e5                                      ldr r3, [sp, #0x24]
008224a8  00 50 c3 e5                                      strb r5, [r3]
008224ac  00 30 94 e5                                      ldr r3, [r4]
008224b0  28 00 9d e5                                      ldr r0, [sp, #0x28]
008224b4  2c 50 8d e5                                      str r5, [sp, #0x2c]
008224b8  04 30 84 e5                                      str r3, [r4, #4]
008224bc  08 00 50 e1                                      cmp r0, r8
008224c0  00 30 e0 e3                                      mvn r3, #0
008224c4  08 30 8d e5                                      str r3, [sp, #8]
008224c8  10 50 8d e5                                      str r5, [sp, #0x10]
008224cc  06 00 00 0a                                      beq #0x8224ec
008224d0  05 00 50 e1                                      cmp r0, r5
008224d4  04 00 00 0a                                      beq #0x8224ec
008224d8  14 10 9d e5                                      ldr r1, [sp, #0x14]
008224dc  01 10 60 e0                                      rsb r1, r0, r1
008224e0  80 00 51 e3                                      cmp r1, #0x80
008224e4  09 00 00 8a                                      bhi #0x822510
008224e8  92 6f 02 eb                                      bl #0x8be338
008224ec  07 30 96 e7                                      ldr r3, [r6, r7]
008224f0  5c 20 9d e5                                      ldr r2, [sp, #0x5c]
008224f4  04 00 a0 e1                                      mov r0, r4
008224f8  00 30 93 e5                                      ldr r3, [r3]
008224fc  03 00 52 e1                                      cmp r2, r3
00822500  01 00 00 1a                                      bne #0x82250c
00822504  60 d0 8d e2                                      add sp, sp, #0x60
00822508  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0082250c  7f af eb eb                                      bl #0x30e310
00822510  ca b7 eb eb                                      bl #0x310440
00822514  07 30 96 e7                                      ldr r3, [r6, r7]
00822518  5c 20 9d e5                                      ldr r2, [sp, #0x5c]
0082251c  04 00 a0 e1                                      mov r0, r4
00822520  00 30 93 e5                                      ldr r3, [r3]
00822524  03 00 52 e1                                      cmp r2, r3
00822528  f5 ff ff 0a                                      beq #0x822504
0082252c  f6 ff ff ea                                      b #0x82250c
; mapping-symbol data/literal pool
00822530  4c 26 17 00 ac 40 00 00                          .byte 0x4c, 0x26, 0x17, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x00822744, declared_size=524, range_size=524, mode=arm
; class-group: std::vector<tMemberInfo, std::allocator<tMemberInfo> >
; alias: _ZNSt6vectorI11tMemberInfoSaIS0_EEaSERKS2_
; demangled: std::vector<tMemberInfo, std::allocator<tMemberInfo> >::operator=(std::vector<tMemberInfo, std::allocator<tMemberInfo> > const&)
; decoder-mode: arm
00822744  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00822748  00 00 51 e1                                      cmp r1, r0
0082274c  1c d0 4d e2                                      sub sp, sp, #0x1c
00822750  01 80 a0 e1                                      mov r8, r1
00822754  00 70 a0 e1                                      mov r7, r0
00822758  38 00 00 0a                                      beq #0x822840
0082275c  04 30 91 e5                                      ldr r3, [r1, #4]
00822760  00 c0 91 e5                                      ldr ip, [r1]
00822764  00 20 90 e5                                      ldr r2, [r0]
00822768  08 10 90 e5                                      ldr r1, [r0, #8]
0082276c  03 a0 6c e0                                      rsb sl, ip, r3
00822770  3d 4f 0c e3                                      movw r4, #0xcf3d
00822774  01 10 62 e0                                      rsb r1, r2, r1
00822778  f3 4c 43 e3                                      movt r4, #0x3cf3
0082277c  4a a1 a0 e1                                      asr sl, sl, #2
00822780  41 11 a0 e1                                      asr r1, r1, #2
00822784  94 0a 0a e0                                      mul sl, r4, sl
00822788  94 01 01 e0                                      mul r1, r4, r1
0082278c  01 00 5a e1                                      cmp sl, r1
00822790  61 00 00 8a                                      bhi #0x82291c
00822794  04 10 90 e5                                      ldr r1, [r0, #4]
00822798  01 10 62 e0                                      rsb r1, r2, r1
0082279c  41 11 a0 e1                                      asr r1, r1, #2
008227a0  94 01 01 e0                                      mul r1, r4, r1
008227a4  01 00 5a e1                                      cmp sl, r1
008227a8  27 00 00 8a                                      bhi #0x82284c
008227ac  03 10 a0 e1                                      mov r1, r3
008227b0  0c 00 a0 e1                                      mov r0, ip
008227b4  00 40 a0 e3                                      mov r4, #0
008227b8  14 30 8d e2                                      add r3, sp, #0x14
008227bc  00 40 8d e5                                      str r4, [sp]
008227c0  b0 ff ff eb                                      bl #0x822688
008227c4  04 60 97 e5                                      ldr r6, [r7, #4]
008227c8  00 50 a0 e1                                      mov r5, r0
008227cc  00 00 56 e1                                      cmp r6, r0
008227d0  00 80 e0 13                                      mvnne r8, #0
008227d4  04 00 00 1a                                      bne #0x8227ec
008227d8  14 00 00 ea                                      b #0x822830
008227dc  d5 6e 02 eb                                      bl #0x8be338
008227e0  54 50 85 e2                                      add r5, r5, #0x54
008227e4  05 00 56 e1                                      cmp r6, r5
008227e8  10 00 00 0a                                      beq #0x822830
008227ec  05 20 a0 e1                                      mov r2, r5
008227f0  24 40 85 e5                                      str r4, [r5, #0x24]
008227f4  0c 80 82 e4                                      str r8, [r2], #0xc
008227f8  14 30 92 e5                                      ldr r3, [r2, #0x14]
008227fc  02 00 53 e1                                      cmp r3, r2
00822800  03 00 a0 e1                                      mov r0, r3
00822804  f5 ff ff 0a                                      beq #0x8227e0
00822808  00 00 53 e3                                      cmp r3, #0
0082280c  f3 ff ff 0a                                      beq #0x8227e0
00822810  00 10 92 e5                                      ldr r1, [r2]
00822814  01 10 63 e0                                      rsb r1, r3, r1
00822818  80 00 51 e3                                      cmp r1, #0x80
0082281c  ee ff ff 9a                                      bls #0x8227dc
00822820  54 50 85 e2                                      add r5, r5, #0x54
00822824  05 b7 eb eb                                      bl #0x310440
00822828  05 00 56 e1                                      cmp r6, r5
0082282c  ee ff ff 1a                                      bne #0x8227ec
00822830  00 b0 97 e5                                      ldr fp, [r7]
00822834  54 30 a0 e3                                      mov r3, #0x54
00822838  93 ba 2a e0                                      mla sl, r3, sl, fp
0082283c  04 a0 87 e5                                      str sl, [r7, #4]
00822840  07 00 a0 e1                                      mov r0, r7
00822844  1c d0 8d e2                                      add sp, sp, #0x1c
00822848  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0082284c  54 90 a0 e3                                      mov sb, #0x54
00822850  0c 00 a0 e1                                      mov r0, ip
00822854  99 c1 21 e0                                      mla r1, sb, r1, ip
00822858  10 30 8d e2                                      add r3, sp, #0x10
0082285c  00 c0 a0 e3                                      mov ip, #0
00822860  00 c0 8d e5                                      str ip, [sp]
00822864  87 ff ff eb                                      bl #0x822688
00822868  04 50 97 e5                                      ldr r5, [r7, #4]
0082286c  00 b0 97 e5                                      ldr fp, [r7]
00822870  08 01 98 e8                                      ldm r8, {r3, r8}
00822874  05 60 6b e0                                      rsb r6, fp, r5
00822878  46 61 a0 e1                                      asr r6, r6, #2
0082287c  94 06 06 e0                                      mul r6, r4, r6
00822880  99 36 26 e0                                      mla r6, sb, r6, r3
00822884  08 80 66 e0                                      rsb r8, r6, r8
00822888  48 81 a0 e1                                      asr r8, r8, #2
0082288c  94 08 08 e0                                      mul r8, r4, r8
00822890  00 00 58 e3                                      cmp r8, #0
00822894  01 00 00 ca                                      bgt #0x8228a0
00822898  e5 ff ff ea                                      b #0x822834
0082289c  54 50 85 e2                                      add r5, r5, #0x54
008228a0  00 20 96 e5                                      ldr r2, [r6]
008228a4  0c 30 85 e2                                      add r3, r5, #0xc
008228a8  03 00 a0 e1                                      mov r0, r3
008228ac  00 20 85 e5                                      str r2, [r5]
008228b0  04 20 96 e5                                      ldr r2, [r6, #4]
008228b4  28 40 86 e2                                      add r4, r6, #0x28
008228b8  04 20 85 e5                                      str r2, [r5, #4]
008228bc  08 20 96 e5                                      ldr r2, [r6, #8]
008228c0  1c 30 85 e5                                      str r3, [r5, #0x1c]
008228c4  20 30 85 e5                                      str r3, [r5, #0x20]
008228c8  08 20 85 e5                                      str r2, [r5, #8]
008228cc  20 10 96 e5                                      ldr r1, [r6, #0x20]
008228d0  1c 20 96 e5                                      ldr r2, [r6, #0x1c]
008228d4  83 bb eb eb                                      bl #0x3116e8
008228d8  24 30 96 e5                                      ldr r3, [r6, #0x24]
008228dc  28 c0 85 e2                                      add ip, r5, #0x28
008228e0  01 80 58 e2                                      subs r8, r8, #1
008228e4  24 30 85 e5                                      str r3, [r5, #0x24]
008228e8  0f 00 b4 e8                                      ldm r4!, {r0, r1, r2, r3}
008228ec  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
008228f0  0f 00 b4 e8                                      ldm r4!, {r0, r1, r2, r3}
008228f4  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
008228f8  00 30 94 e5                                      ldr r3, [r4]
008228fc  00 30 cc e5                                      strb r3, [ip]
00822900  4c 30 96 e5                                      ldr r3, [r6, #0x4c]
00822904  4c 30 85 e5                                      str r3, [r5, #0x4c]
00822908  50 30 d6 e5                                      ldrb r3, [r6, #0x50]
0082290c  54 60 86 e2                                      add r6, r6, #0x54
00822910  50 30 c5 e5                                      strb r3, [r5, #0x50]
00822914  e0 ff ff 1a                                      bne #0x82289c
00822918  c4 ff ff ea                                      b #0x822830
0082291c  18 10 8d e2                                      add r1, sp, #0x18
00822920  0c 20 a0 e1                                      mov r2, ip
00822924  0c a0 21 e5                                      str sl, [r1, #-0xc]!
00822928  bc fd ff eb                                      bl #0x822020
0082292c  00 b0 a0 e1                                      mov fp, r0
00822930  07 00 a0 e1                                      mov r0, r7
00822934  ef fc ff eb                                      bl #0x821cf8
00822938  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0082293c  54 20 a0 e3                                      mov r2, #0x54
00822940  00 b0 87 e5                                      str fp, [r7]
00822944  92 b3 23 e0                                      mla r3, r2, r3, fp
00822948  08 30 87 e5                                      str r3, [r7, #8]
0082294c  b8 ff ff ea                                      b #0x822834

; FUNCTION 0x00822ac8, declared_size=176, range_size=176, mode=arm
; class-group: std::vector<tMemberInfo, std::allocator<tMemberInfo> >
; alias: _ZNSt6vectorI11tMemberInfoSaIS0_EE8_M_eraseEPS0_S3_RKSt12__false_type
; demangled: std::vector<tMemberInfo, std::allocator<tMemberInfo> >::_M_erase(tMemberInfo*, tMemberInfo*, std::__false_type const&)
; decoder-mode: arm
00822ac8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00822acc  04 30 90 e5                                      ldr r3, [r0, #4]
00822ad0  10 d0 4d e2                                      sub sp, sp, #0x10
00822ad4  01 50 a0 e1                                      mov r5, r1
00822ad8  00 40 a0 e1                                      mov r4, r0
00822adc  03 10 a0 e1                                      mov r1, r3
00822ae0  02 00 a0 e1                                      mov r0, r2
00822ae4  00 60 a0 e3                                      mov r6, #0
00822ae8  05 20 a0 e1                                      mov r2, r5
00822aec  0c 30 8d e2                                      add r3, sp, #0xc
00822af0  00 60 8d e5                                      str r6, [sp]
00822af4  c4 ff ff eb                                      bl #0x822a0c
00822af8  04 80 94 e5                                      ldr r8, [r4, #4]
00822afc  00 90 a0 e1                                      mov sb, r0
00822b00  00 00 58 e1                                      cmp r8, r0
00822b04  17 00 00 0a                                      beq #0x822b68
00822b08  00 70 a0 e1                                      mov r7, r0
00822b0c  00 a0 e0 e3                                      mvn sl, #0
00822b10  03 00 00 ea                                      b #0x822b24
00822b14  07 6e 02 eb                                      bl #0x8be338
00822b18  54 70 87 e2                                      add r7, r7, #0x54
00822b1c  07 00 58 e1                                      cmp r8, r7
00822b20  10 00 00 0a                                      beq #0x822b68
00822b24  07 20 a0 e1                                      mov r2, r7
00822b28  24 60 87 e5                                      str r6, [r7, #0x24]
00822b2c  0c a0 82 e4                                      str sl, [r2], #0xc
00822b30  14 30 92 e5                                      ldr r3, [r2, #0x14]
00822b34  02 00 53 e1                                      cmp r3, r2
00822b38  03 00 a0 e1                                      mov r0, r3
00822b3c  f5 ff ff 0a                                      beq #0x822b18
00822b40  00 00 53 e3                                      cmp r3, #0
00822b44  f3 ff ff 0a                                      beq #0x822b18
00822b48  00 10 92 e5                                      ldr r1, [r2]
00822b4c  01 10 63 e0                                      rsb r1, r3, r1
00822b50  80 00 51 e3                                      cmp r1, #0x80
00822b54  ee ff ff 9a                                      bls #0x822b14
00822b58  54 70 87 e2                                      add r7, r7, #0x54
00822b5c  37 b6 eb eb                                      bl #0x310440
00822b60  07 00 58 e1                                      cmp r8, r7
00822b64  ee ff ff 1a                                      bne #0x822b24
00822b68  04 90 84 e5                                      str sb, [r4, #4]
00822b6c  05 00 a0 e1                                      mov r0, r5
00822b70  10 d0 8d e2                                      add sp, sp, #0x10
00822b74  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x00822bc4, declared_size=148, range_size=148, mode=arm
; class-group: std::vector<tMemberInfo, std::allocator<tMemberInfo> >
; alias: _ZNSt6vectorI11tMemberInfoSaIS0_EE8_M_eraseEPS0_RKSt12__false_type
; demangled: std::vector<tMemberInfo, std::allocator<tMemberInfo> >::_M_erase(tMemberInfo*, std::__false_type const&)
; decoder-mode: arm
00822bc4  30 40 2d e9                                      push {r4, r5, lr}
00822bc8  04 30 90 e5                                      ldr r3, [r0, #4]
00822bcc  00 50 a0 e1                                      mov r5, r0
00822bd0  54 00 81 e2                                      add r0, r1, #0x54
00822bd4  03 00 50 e1                                      cmp r0, r3
00822bd8  14 d0 4d e2                                      sub sp, sp, #0x14
00822bdc  01 40 a0 e1                                      mov r4, r1
00822be0  06 00 00 0a                                      beq #0x822c00
00822be4  03 10 a0 e1                                      mov r1, r3
00822be8  00 c0 a0 e3                                      mov ip, #0
00822bec  04 20 a0 e1                                      mov r2, r4
00822bf0  0c 30 8d e2                                      add r3, sp, #0xc
00822bf4  00 c0 8d e5                                      str ip, [sp]
00822bf8  83 ff ff eb                                      bl #0x822a0c
00822bfc  04 00 95 e5                                      ldr r0, [r5, #4]
00822c00  54 30 40 e2                                      sub r3, r0, #0x54
00822c04  00 20 a0 e3                                      mov r2, #0
00822c08  04 30 85 e5                                      str r3, [r5, #4]
00822c0c  24 20 83 e5                                      str r2, [r3, #0x24]
00822c10  00 30 e0 e3                                      mvn r3, #0
00822c14  54 30 00 e5                                      str r3, [r0, #-0x54]
00822c18  48 30 40 e2                                      sub r3, r0, #0x48
00822c1c  14 00 93 e5                                      ldr r0, [r3, #0x14]
00822c20  03 00 50 e1                                      cmp r0, r3
00822c24  06 00 00 0a                                      beq #0x822c44
00822c28  02 00 50 e1                                      cmp r0, r2
00822c2c  04 00 00 0a                                      beq #0x822c44
00822c30  00 10 93 e5                                      ldr r1, [r3]
00822c34  01 10 60 e0                                      rsb r1, r0, r1
00822c38  80 00 51 e3                                      cmp r1, #0x80
00822c3c  03 00 00 8a                                      bhi #0x822c50
00822c40  bc 6d 02 eb                                      bl #0x8be338
00822c44  04 00 a0 e1                                      mov r0, r4
00822c48  14 d0 8d e2                                      add sp, sp, #0x14
00822c4c  30 80 bd e8                                      pop {r4, r5, pc}
00822c50  fa b5 eb eb                                      bl #0x310440
00822c54  fa ff ff ea                                      b #0x822c44

; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003298c8, declared_size=104, range_size=104, mode=arm
; class-group: std::deque<AchievementMsg, std::allocator<AchievementMsg> >
; alias: _ZNSt5dequeI14AchievementMsgSaIS0_EED1Ev
; demangled: std::deque<AchievementMsg, std::allocator<AchievementMsg> >::~deque()
; decoder-mode: arm
003298c8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
003298cc  18 c0 90 e5                                      ldr ip, [r0, #0x18]
003298d0  1c e0 90 e5                                      ldr lr, [r0, #0x1c]
003298d4  e0 02 90 e8                                      ldm r0, {r5, r6, r7, sb}
003298d8  10 a0 90 e5                                      ldr sl, [r0, #0x10]
003298dc  14 80 90 e5                                      ldr r8, [r0, #0x14]
003298e0  28 d0 4d e2                                      sub sp, sp, #0x28
003298e4  00 40 a0 e1                                      mov r4, r0
003298e8  04 10 8d e2                                      add r1, sp, #4
003298ec  00 20 a0 e3                                      mov r2, #0
003298f0  24 30 8d e2                                      add r3, sp, #0x24
003298f4  14 00 8d e2                                      add r0, sp, #0x14
003298f8  10 e0 8d e5                                      str lr, [sp, #0x10]
003298fc  0c c0 8d e5                                      str ip, [sp, #0xc]
00329900  20 90 8d e5                                      str sb, [sp, #0x20]
00329904  1c 70 8d e5                                      str r7, [sp, #0x1c]
00329908  18 60 8d e5                                      str r6, [sp, #0x18]
0032990c  14 50 8d e5                                      str r5, [sp, #0x14]
00329910  08 80 8d e5                                      str r8, [sp, #8]
00329914  04 a0 8d e5                                      str sl, [sp, #4]
00329918  28 d9 ff eb                                      bl #0x31fdc0
0032991c  04 00 a0 e1                                      mov r0, r4
00329920  c7 ff ff eb                                      bl #0x329844
00329924  04 00 a0 e1                                      mov r0, r4
00329928  28 d0 8d e2                                      add sp, sp, #0x28
0032992c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x00380c8c, declared_size=384, range_size=384, mode=arm
; class-group: std::deque<AchievementMsg, std::allocator<AchievementMsg> >
; alias: _ZNSt5dequeI14AchievementMsgSaIS0_EE18_M_push_back_aux_vERKS0_
; demangled: std::deque<AchievementMsg, std::allocator<AchievementMsg> >::_M_push_back_aux_v(AchievementMsg const&)
; decoder-mode: arm
00380c8c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00380c90  1c a0 90 e5                                      ldr sl, [r0, #0x1c]
00380c94  20 20 90 e5                                      ldr r2, [r0, #0x20]
00380c98  24 30 90 e5                                      ldr r3, [r0, #0x24]
00380c9c  01 50 a0 e1                                      mov r5, r1
00380ca0  0a 10 62 e0                                      rsb r1, r2, sl
00380ca4  41 11 43 e0                                      sub r1, r3, r1, asr #2
00380ca8  01 00 51 e3                                      cmp r1, #1
00380cac  00 40 a0 e1                                      mov r4, r0
00380cb0  0e 00 00 9a                                      bls #0x380cf0
00380cb4  24 00 84 e2                                      add r0, r4, #0x24
00380cb8  3b fe ff eb                                      bl #0x3805ac
00380cbc  04 00 8a e5                                      str r0, [sl, #4]
00380cc0  05 10 a0 e1                                      mov r1, r5
00380cc4  10 00 94 e5                                      ldr r0, [r4, #0x10]
00380cc8  21 fe ff eb                                      bl #0x380554
00380ccc  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
00380cd0  04 20 83 e2                                      add r2, r3, #4
00380cd4  1c 20 84 e5                                      str r2, [r4, #0x1c]
00380cd8  04 30 93 e5                                      ldr r3, [r3, #4]
00380cdc  78 20 83 e2                                      add r2, r3, #0x78
00380ce0  10 30 84 e5                                      str r3, [r4, #0x10]
00380ce4  18 20 84 e5                                      str r2, [r4, #0x18]
00380ce8  14 30 84 e5                                      str r3, [r4, #0x14]
00380cec  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00380cf0  0c 10 90 e5                                      ldr r1, [r0, #0xc]
00380cf4  0a 70 61 e0                                      rsb r7, r1, sl
00380cf8  47 71 a0 e1                                      asr r7, r7, #2
00380cfc  01 70 87 e2                                      add r7, r7, #1
00380d00  01 90 87 e2                                      add sb, r7, #1
00380d04  89 00 53 e1                                      cmp r3, sb, lsl #1
00380d08  18 00 00 9a                                      bls #0x380d70
00380d0c  03 60 69 e0                                      rsb r6, sb, r3
00380d10  a6 60 a0 e1                                      lsr r6, r6, #1
00380d14  06 61 82 e0                                      add r6, r2, r6, lsl #2
00380d18  06 00 51 e1                                      cmp r1, r6
00380d1c  34 00 00 8a                                      bhi #0x380df4
00380d20  04 a0 8a e2                                      add sl, sl, #4
00380d24  0a 20 61 e0                                      rsb r2, r1, sl
00380d28  00 00 52 e3                                      cmp r2, #0
00380d2c  02 00 00 da                                      ble #0x380d3c
00380d30  07 01 86 e0                                      add r0, r6, r7, lsl #2
00380d34  00 00 62 e0                                      rsb r0, r2, r0
00380d38  7e 34 fe eb                                      bl #0x30df38
00380d3c  0c 60 84 e5                                      str r6, [r4, #0xc]
00380d40  00 30 96 e5                                      ldr r3, [r6]
00380d44  01 70 47 e2                                      sub r7, r7, #1
00380d48  07 a1 86 e0                                      add sl, r6, r7, lsl #2
00380d4c  78 20 83 e2                                      add r2, r3, #0x78
00380d50  08 20 84 e5                                      str r2, [r4, #8]
00380d54  04 30 84 e5                                      str r3, [r4, #4]
00380d58  1c a0 84 e5                                      str sl, [r4, #0x1c]
00380d5c  07 31 96 e7                                      ldr r3, [r6, r7, lsl #2]
00380d60  78 20 83 e2                                      add r2, r3, #0x78
00380d64  18 20 84 e5                                      str r2, [r4, #0x18]
00380d68  14 30 84 e5                                      str r3, [r4, #0x14]
00380d6c  d0 ff ff ea                                      b #0x380cb4
00380d70  00 00 53 e3                                      cmp r3, #0
00380d74  03 20 a0 11                                      movne r2, r3
00380d78  01 20 a0 03                                      moveq r2, #1
00380d7c  02 80 83 e2                                      add r8, r3, #2
00380d80  02 80 88 e0                                      add r8, r8, r2
00380d84  08 10 a0 e1                                      mov r1, r8
00380d88  00 20 a0 e3                                      mov r2, #0
00380d8c  20 00 80 e2                                      add r0, r0, #0x20
00380d90  a4 a1 fe eb                                      bl #0x329428
00380d94  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
00380d98  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00380d9c  08 60 69 e0                                      rsb r6, sb, r8
00380da0  a6 60 a0 e1                                      lsr r6, r6, #1
00380da4  04 20 82 e2                                      add r2, r2, #4
00380da8  01 20 52 e0                                      subs r2, r2, r1
00380dac  00 a0 a0 e1                                      mov sl, r0
00380db0  06 61 80 e0                                      add r6, r0, r6, lsl #2
00380db4  01 00 00 0a                                      beq #0x380dc0
00380db8  06 00 a0 e1                                      mov r0, r6
00380dbc  5d 34 fe eb                                      bl #0x30df38
00380dc0  20 00 94 e5                                      ldr r0, [r4, #0x20]
00380dc4  24 10 94 e5                                      ldr r1, [r4, #0x24]
00380dc8  00 00 50 e3                                      cmp r0, #0
00380dcc  03 00 00 0a                                      beq #0x380de0
00380dd0  01 11 a0 e1                                      lsl r1, r1, #2
00380dd4  80 00 51 e3                                      cmp r1, #0x80
00380dd8  03 00 00 8a                                      bhi #0x380dec
00380ddc  47 20 0e eb                                      bl #0x708f00
00380de0  20 a0 84 e5                                      str sl, [r4, #0x20]
00380de4  24 80 84 e5                                      str r8, [r4, #0x24]
00380de8  d3 ff ff ea                                      b #0x380d3c
00380dec  93 3d fe eb                                      bl #0x310440
00380df0  fa ff ff ea                                      b #0x380de0
00380df4  04 20 8a e2                                      add r2, sl, #4
00380df8  01 20 52 e0                                      subs r2, r2, r1
00380dfc  ce ff ff 0a                                      beq #0x380d3c
00380e00  06 00 a0 e1                                      mov r0, r6
00380e04  4b 34 fe eb                                      bl #0x30df38
00380e08  cb ff ff ea                                      b #0x380d3c

; FUNCTION 0x00380e0c, declared_size=60, range_size=60, mode=arm
; class-group: std::deque<AchievementMsg, std::allocator<AchievementMsg> >
; alias: _ZNSt5dequeI14AchievementMsgSaIS0_EE9push_backERKS0_
; demangled: std::deque<AchievementMsg, std::allocator<AchievementMsg> >::push_back(AchievementMsg const&)
; decoder-mode: arm
00380e0c  10 40 2d e9                                      push {r4, lr}
00380e10  18 20 90 e5                                      ldr r2, [r0, #0x18]
00380e14  10 30 90 e5                                      ldr r3, [r0, #0x10]
00380e18  00 40 a0 e1                                      mov r4, r0
00380e1c  3c 20 42 e2                                      sub r2, r2, #0x3c
00380e20  02 00 53 e1                                      cmp r3, r2
00380e24  05 00 00 0a                                      beq #0x380e40
00380e28  03 00 a0 e1                                      mov r0, r3
00380e2c  c8 fd ff eb                                      bl #0x380554
00380e30  10 30 94 e5                                      ldr r3, [r4, #0x10]
00380e34  3c 30 83 e2                                      add r3, r3, #0x3c
00380e38  10 30 84 e5                                      str r3, [r4, #0x10]
00380e3c  10 80 bd e8                                      pop {r4, pc}
00380e40  10 40 bd e8                                      pop {r4, lr}
00380e44  90 ff ff ea                                      b #0x380c8c

; FUNCTION 0x00383ef4, declared_size=200, range_size=200, mode=arm
; class-group: std::deque<AchievementMsg, std::allocator<AchievementMsg> >
; alias: _ZNSt5dequeI14AchievementMsgSaIS0_EE9pop_frontEv
; demangled: std::deque<AchievementMsg, std::allocator<AchievementMsg> >::pop_front()
; decoder-mode: arm
00383ef4  70 40 2d e9                                      push {r4, r5, r6, lr}
00383ef8  00 50 90 e5                                      ldr r5, [r0]
00383efc  00 40 a0 e1                                      mov r4, r0
00383f00  18 30 85 e2                                      add r3, r5, #0x18
00383f04  14 00 93 e5                                      ldr r0, [r3, #0x14]
00383f08  03 00 50 e1                                      cmp r0, r3
00383f0c  06 00 00 0a                                      beq #0x383f2c
00383f10  00 00 50 e3                                      cmp r0, #0
00383f14  04 00 00 0a                                      beq #0x383f2c
00383f18  18 10 95 e5                                      ldr r1, [r5, #0x18]
00383f1c  01 10 60 e0                                      rsb r1, r0, r1
00383f20  80 00 51 e3                                      cmp r1, #0x80
00383f24  22 00 00 8a                                      bhi #0x383fb4
00383f28  f4 13 0e eb                                      bl #0x708f00
00383f2c  14 00 95 e5                                      ldr r0, [r5, #0x14]
00383f30  05 00 50 e1                                      cmp r0, r5
00383f34  06 00 00 0a                                      beq #0x383f54
00383f38  00 00 50 e3                                      cmp r0, #0
00383f3c  04 00 00 0a                                      beq #0x383f54
00383f40  00 10 95 e5                                      ldr r1, [r5]
00383f44  01 10 60 e0                                      rsb r1, r0, r1
00383f48  80 00 51 e3                                      cmp r1, #0x80
00383f4c  16 00 00 8a                                      bhi #0x383fac
00383f50  ea 13 0e eb                                      bl #0x708f00
00383f54  08 20 94 e5                                      ldr r2, [r4, #8]
00383f58  00 30 94 e5                                      ldr r3, [r4]
00383f5c  3c 20 42 e2                                      sub r2, r2, #0x3c
00383f60  02 00 53 e1                                      cmp r3, r2
00383f64  02 00 00 0a                                      beq #0x383f74
00383f68  3c 30 83 e2                                      add r3, r3, #0x3c
00383f6c  00 30 84 e5                                      str r3, [r4]
00383f70  70 80 bd e8                                      pop {r4, r5, r6, pc}
00383f74  04 00 94 e5                                      ldr r0, [r4, #4]
00383f78  00 00 50 e3                                      cmp r0, #0
00383f7c  01 00 00 0a                                      beq #0x383f88
00383f80  78 10 a0 e3                                      mov r1, #0x78
00383f84  dd 13 0e eb                                      bl #0x708f00
00383f88  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00383f8c  04 20 83 e2                                      add r2, r3, #4
00383f90  0c 20 84 e5                                      str r2, [r4, #0xc]
00383f94  04 30 93 e5                                      ldr r3, [r3, #4]
00383f98  78 20 83 e2                                      add r2, r3, #0x78
00383f9c  00 30 84 e5                                      str r3, [r4]
00383fa0  08 20 84 e5                                      str r2, [r4, #8]
00383fa4  04 30 84 e5                                      str r3, [r4, #4]
00383fa8  70 80 bd e8                                      pop {r4, r5, r6, pc}
00383fac  23 31 fe eb                                      bl #0x310440
00383fb0  e7 ff ff ea                                      b #0x383f54
00383fb4  21 31 fe eb                                      bl #0x310440
00383fb8  db ff ff ea                                      b #0x383f2c

; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00759e68, declared_size=192, range_size=192, mode=arm
; class-group: gameswf::hash<int, gameswf::matrix*, gameswf::fixed_size_hash<int> >
; alias: _ZNK7gameswf4hashIiPNS_6matrixENS_15fixed_size_hashIiEEE10find_indexERKi
; demangled: gameswf::hash<int, gameswf::matrix*, gameswf::fixed_size_hash<int> >::find_index(int const&) const
; decoder-mode: arm
00759e68  30 00 2d e9                                      push {r4, r5}
00759e6c  00 30 90 e5                                      ldr r3, [r0]
00759e70  00 00 53 e3                                      cmp r3, #0
00759e74  02 00 00 1a                                      bne #0x759e84
00759e78  00 00 e0 e3                                      mvn r0, #0
00759e7c  30 00 bd e8                                      pop {r4, r5}
00759e80  1e ff 2f e1                                      bx lr
00759e84  05 25 01 e3                                      movw r2, #0x1505
00759e88  04 00 a0 e3                                      mov r0, #4
00759e8c  01 00 40 e2                                      sub r0, r0, #1
00759e90  00 40 d1 e7                                      ldrb r4, [r1, r0]
00759e94  02 c3 a0 e1                                      lsl ip, r2, #6
00759e98  02 c8 8c e0                                      add ip, ip, r2, lsl #16
00759e9c  04 c0 8c e0                                      add ip, ip, r4
00759ea0  00 00 50 e3                                      cmp r0, #0
00759ea4  0c 20 62 e0                                      rsb r2, r2, ip
00759ea8  f7 ff ff 1a                                      bne #0x759e8c
00759eac  04 00 93 e5                                      ldr r0, [r3, #4]
00759eb0  01 00 72 e3                                      cmn r2, #1
00759eb4  02 29 e0 03                                      mvneq r2, #0x8000
00759eb8  00 40 02 e0                                      and r4, r2, r0
00759ebc  84 c0 a0 e1                                      lsl ip, r4, #1
00759ec0  01 c0 8c e2                                      add ip, ip, #1
00759ec4  8c 51 93 e7                                      ldr r5, [r3, ip, lsl #3]
00759ec8  8c c1 83 e0                                      add ip, r3, ip, lsl #3
00759ecc  02 00 75 e3                                      cmn r5, #2
00759ed0  e8 ff ff 0a                                      beq #0x759e78
00759ed4  04 50 9c e5                                      ldr r5, [ip, #4]
00759ed8  01 00 75 e3                                      cmn r5, #1
00759edc  04 00 a0 01                                      moveq r0, r4
00759ee0  06 00 00 0a                                      beq #0x759f00
00759ee4  05 00 00 e0                                      and r0, r0, r5
00759ee8  04 00 50 e1                                      cmp r0, r4
00759eec  e1 ff ff 1a                                      bne #0x759e78
00759ef0  02 00 00 ea                                      b #0x759f00
00759ef4  00 c2 83 e0                                      add ip, r3, r0, lsl #4
00759ef8  08 c0 8c e2                                      add ip, ip, #8
00759efc  04 50 9c e5                                      ldr r5, [ip, #4]
00759f00  05 00 52 e1                                      cmp r2, r5
00759f04  03 00 00 1a                                      bne #0x759f18
00759f08  08 50 9c e5                                      ldr r5, [ip, #8]
00759f0c  00 40 91 e5                                      ldr r4, [r1]
00759f10  04 00 55 e1                                      cmp r5, r4
00759f14  d8 ff ff 0a                                      beq #0x759e7c
00759f18  00 00 9c e5                                      ldr r0, [ip]
00759f1c  01 00 70 e3                                      cmn r0, #1
00759f20  f3 ff ff 1a                                      bne #0x759ef4
00759f24  d4 ff ff ea                                      b #0x759e7c

; FUNCTION 0x0075a0bc, declared_size=128, range_size=128, mode=arm
; class-group: gameswf::hash<int, gameswf::matrix*, gameswf::fixed_size_hash<int> >
; alias: _ZN7gameswf4hashIiPNS_6matrixENS_15fixed_size_hashIiEEE5clearEv
; demangled: gameswf::hash<int, gameswf::matrix*, gameswf::fixed_size_hash<int> >::clear()
; decoder-mode: arm
0075a0bc  70 40 2d e9                                      push {r4, r5, r6, lr}
0075a0c0  00 40 a0 e1                                      mov r4, r0
0075a0c4  00 00 90 e5                                      ldr r0, [r0]
0075a0c8  00 00 50 e3                                      cmp r0, #0
0075a0cc  19 00 00 0a                                      beq #0x75a138
0075a0d0  04 10 90 e5                                      ldr r1, [r0, #4]
0075a0d4  00 00 51 e3                                      cmp r1, #0
0075a0d8  11 00 00 ba                                      blt #0x75a124
0075a0dc  00 20 a0 e3                                      mov r2, #0
0075a0e0  08 30 a0 e3                                      mov r3, #8
0075a0e4  01 60 e0 e3                                      mvn r6, #1
0075a0e8  02 50 a0 e1                                      mov r5, r2
0075a0ec  03 e0 90 e7                                      ldr lr, [r0, r3]
0075a0f0  01 20 82 e2                                      add r2, r2, #1
0075a0f4  03 c0 80 e0                                      add ip, r0, r3
0075a0f8  02 00 7e e3                                      cmn lr, #2
0075a0fc  04 00 00 0a                                      beq #0x75a114
0075a100  04 e0 9c e5                                      ldr lr, [ip, #4]
0075a104  01 00 7e e3                                      cmn lr, #1
0075a108  04 50 8c 15                                      strne r5, [ip, #4]
0075a10c  00 60 8c 15                                      strne r6, [ip]
0075a110  00 00 94 15                                      ldrne r0, [r4]
0075a114  02 00 51 e1                                      cmp r1, r2
0075a118  10 30 83 e2                                      add r3, r3, #0x10
0075a11c  f2 ff ff aa                                      bge #0x75a0ec
0075a120  04 10 90 e5                                      ldr r1, [r0, #4]
0075a124  01 12 a0 e1                                      lsl r1, r1, #4
0075a128  18 10 81 e2                                      add r1, r1, #0x18
0075a12c  81 e2 ff eb                                      bl #0x752b38
0075a130  00 30 a0 e3                                      mov r3, #0
0075a134  00 30 84 e5                                      str r3, [r4]
0075a138  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0075baf8, declared_size=344, range_size=344, mode=arm
; class-group: gameswf::hash<int, gameswf::matrix*, gameswf::fixed_size_hash<int> >
; alias: _ZN7gameswf4hashIiPNS_6matrixENS_15fixed_size_hashIiEEE16set_raw_capacityEi
; demangled: gameswf::hash<int, gameswf::matrix*, gameswf::fixed_size_hash<int> >::set_raw_capacity(int)
; decoder-mode: arm
0075baf8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0075bafc  00 00 51 e3                                      cmp r1, #0
0075bb00  0c d0 4d e2                                      sub sp, sp, #0xc
0075bb04  00 80 a0 e1                                      mov r8, r0
0075bb08  4d 00 00 da                                      ble #0x75bc44
0075bb0c  01 00 41 e2                                      sub r0, r1, #1
0075bb10  93 cb ee eb                                      bl #0x30e964
0075bb14  e6 c8 ee eb                                      bl #0x30deb4
0075bb18  18 12 07 e3                                      movw r1, #0x7218
0075bb1c  31 1f 43 e3                                      movt r1, #0x3f31
0075bb20  5b cc ee eb                                      bl #0x30ec94
0075bb24  fe 15 a0 e3                                      mov r1, #0x3f800000
0075bb28  1d cc ee eb                                      bl #0x30eba4
0075bb2c  66 ca ee eb                                      bl #0x30e4cc
0075bb30  01 40 a0 e3                                      mov r4, #1
0075bb34  14 40 a0 e1                                      lsl r4, r4, r0
0075bb38  00 30 98 e5                                      ldr r3, [r8]
0075bb3c  04 00 54 e3                                      cmp r4, #4
0075bb40  04 40 a0 b3                                      movlt r4, #4
0075bb44  00 00 53 e3                                      cmp r3, #0
0075bb48  03 00 00 0a                                      beq #0x75bb5c
0075bb4c  04 30 93 e5                                      ldr r3, [r3, #4]
0075bb50  01 30 83 e2                                      add r3, r3, #1
0075bb54  04 00 53 e1                                      cmp r3, r4
0075bb58  3a 00 00 0a                                      beq #0x75bc48
0075bb5c  00 50 a0 e3                                      mov r5, #0
0075bb60  04 02 a0 e1                                      lsl r0, r4, #4
0075bb64  08 00 80 e2                                      add r0, r0, #8
0075bb68  05 10 a0 e1                                      mov r1, r5
0075bb6c  04 50 8d e5                                      str r5, [sp, #4]
0075bb70  09 dc ff eb                                      bl #0x752b9c
0075bb74  04 00 8d e5                                      str r0, [sp, #4]
0075bb78  00 50 80 e5                                      str r5, [r0]
0075bb7c  04 30 9d e5                                      ldr r3, [sp, #4]
0075bb80  01 20 44 e2                                      sub r2, r4, #1
0075bb84  01 90 e0 e3                                      mvn sb, #1
0075bb88  04 20 83 e5                                      str r2, [r3, #4]
0075bb8c  08 30 a0 e3                                      mov r3, #8
0075bb90  04 20 9d e5                                      ldr r2, [sp, #4]
0075bb94  01 50 85 e2                                      add r5, r5, #1
0075bb98  05 00 54 e1                                      cmp r4, r5
0075bb9c  03 90 82 e7                                      str sb, [r2, r3]
0075bba0  10 30 83 e2                                      add r3, r3, #0x10
0075bba4  f9 ff ff ca                                      bgt #0x75bb90
0075bba8  00 30 98 e5                                      ldr r3, [r8]
0075bbac  00 00 53 e3                                      cmp r3, #0
0075bbb0  04 a0 8d 02                                      addeq sl, sp, #4
0075bbb4  1d 00 00 0a                                      beq #0x75bc30
0075bbb8  04 70 93 e5                                      ldr r7, [r3, #4]
0075bbbc  00 00 57 e3                                      cmp r7, #0
0075bbc0  04 a0 8d b2                                      addlt sl, sp, #4
0075bbc4  15 00 00 ba                                      blt #0x75bc20
0075bbc8  00 60 a0 e3                                      mov r6, #0
0075bbcc  08 40 a0 e3                                      mov r4, #8
0075bbd0  04 a0 8d e2                                      add sl, sp, #4
0075bbd4  06 b0 a0 e1                                      mov fp, r6
0075bbd8  04 20 93 e7                                      ldr r2, [r3, r4]
0075bbdc  01 60 86 e2                                      add r6, r6, #1
0075bbe0  04 50 83 e0                                      add r5, r3, r4
0075bbe4  02 00 72 e3                                      cmn r2, #2
0075bbe8  08 00 00 0a                                      beq #0x75bc10
0075bbec  04 20 95 e5                                      ldr r2, [r5, #4]
0075bbf0  0a 00 a0 e1                                      mov r0, sl
0075bbf4  08 10 85 e2                                      add r1, r5, #8
0075bbf8  01 00 72 e3                                      cmn r2, #1
0075bbfc  03 00 00 0a                                      beq #0x75bc10
0075bc00  0c 20 85 e2                                      add r2, r5, #0xc
0075bc04  1e 00 00 eb                                      bl #0x75bc84
0075bc08  00 0a 85 e8                                      stm r5, {sb, fp}
0075bc0c  00 30 98 e5                                      ldr r3, [r8]
0075bc10  06 00 57 e1                                      cmp r7, r6
0075bc14  10 40 84 e2                                      add r4, r4, #0x10
0075bc18  ee ff ff aa                                      bge #0x75bbd8
0075bc1c  04 70 93 e5                                      ldr r7, [r3, #4]
0075bc20  07 12 a0 e1                                      lsl r1, r7, #4
0075bc24  03 00 a0 e1                                      mov r0, r3
0075bc28  18 10 81 e2                                      add r1, r1, #0x18
0075bc2c  c1 db ff eb                                      bl #0x752b38
0075bc30  04 30 9d e5                                      ldr r3, [sp, #4]
0075bc34  0a 00 a0 e1                                      mov r0, sl
0075bc38  00 30 88 e5                                      str r3, [r8]
0075bc3c  00 30 a0 e3                                      mov r3, #0
0075bc40  04 30 8d e5                                      str r3, [sp, #4]
0075bc44  1c f9 ff eb                                      bl #0x75a0bc
0075bc48  0c d0 8d e2                                      add sp, sp, #0xc
0075bc4c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x0075bc50, declared_size=52, range_size=52, mode=arm
; class-group: gameswf::hash<int, gameswf::matrix*, gameswf::fixed_size_hash<int> >
; alias: _ZN7gameswf4hashIiPNS_6matrixENS_15fixed_size_hashIiEEE12check_expandEv
; demangled: gameswf::hash<int, gameswf::matrix*, gameswf::fixed_size_hash<int> >::check_expand()
; decoder-mode: arm
0075bc50  00 30 90 e5                                      ldr r3, [r0]
0075bc54  00 00 53 e3                                      cmp r3, #0
0075bc58  07 00 00 0a                                      beq #0x75bc7c
0075bc5c  04 10 93 e5                                      ldr r1, [r3, #4]
0075bc60  00 30 93 e5                                      ldr r3, [r3]
0075bc64  01 10 81 e2                                      add r1, r1, #1
0075bc68  81 10 a0 e1                                      lsl r1, r1, #1
0075bc6c  83 30 83 e0                                      add r3, r3, r3, lsl #1
0075bc70  01 00 53 e1                                      cmp r3, r1
0075bc74  1e ff 2f d1                                      bxle lr
0075bc78  9e ff ff ea                                      b #0x75baf8
0075bc7c  08 10 a0 e3                                      mov r1, #8
0075bc80  9c ff ff ea                                      b #0x75baf8

; FUNCTION 0x0075bc84, declared_size=356, range_size=356, mode=arm
; class-group: gameswf::hash<int, gameswf::matrix*, gameswf::fixed_size_hash<int> >
; alias: _ZN7gameswf4hashIiPNS_6matrixENS_15fixed_size_hashIiEEE3addERKiRKS2_
; demangled: gameswf::hash<int, gameswf::matrix*, gameswf::fixed_size_hash<int> >::add(int const&, gameswf::matrix* const&)
; decoder-mode: arm
0075bc84  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
0075bc88  00 60 a0 e1                                      mov r6, r0
0075bc8c  01 40 a0 e1                                      mov r4, r1
0075bc90  02 50 a0 e1                                      mov r5, r2
0075bc94  ed ff ff eb                                      bl #0x75bc50
0075bc98  00 10 96 e5                                      ldr r1, [r6]
0075bc9c  05 25 01 e3                                      movw r2, #0x1505
0075bca0  04 30 a0 e3                                      mov r3, #4
0075bca4  00 00 91 e5                                      ldr r0, [r1]
0075bca8  01 00 80 e2                                      add r0, r0, #1
0075bcac  00 00 81 e5                                      str r0, [r1]
0075bcb0  01 30 43 e2                                      sub r3, r3, #1
0075bcb4  03 00 d4 e7                                      ldrb r0, [r4, r3]
0075bcb8  02 13 a0 e1                                      lsl r1, r2, #6
0075bcbc  02 18 81 e0                                      add r1, r1, r2, lsl #16
0075bcc0  00 10 81 e0                                      add r1, r1, r0
0075bcc4  00 00 53 e3                                      cmp r3, #0
0075bcc8  01 20 62 e0                                      rsb r2, r2, r1
0075bccc  f7 ff ff 1a                                      bne #0x75bcb0
0075bcd0  00 30 96 e5                                      ldr r3, [r6]
0075bcd4  01 00 72 e3                                      cmn r2, #1
0075bcd8  02 29 e0 03                                      mvneq r2, #0x8000
0075bcdc  04 70 93 e5                                      ldr r7, [r3, #4]
0075bce0  07 60 02 e0                                      and r6, r2, r7
0075bce4  86 a0 a0 e1                                      lsl sl, r6, #1
0075bce8  01 a0 8a e2                                      add sl, sl, #1
0075bcec  8a 91 93 e7                                      ldr sb, [r3, sl, lsl #3]
0075bcf0  8a 81 83 e0                                      add r8, r3, sl, lsl #3
0075bcf4  02 00 79 e3                                      cmn sb, #2
0075bcf8  00 10 e0 03                                      mvneq r1, #0
0075bcfc  8a 11 83 07                                      streq r1, [r3, sl, lsl #3]
0075bd00  24 00 00 0a                                      beq #0x75bd98
0075bd04  04 b0 98 e5                                      ldr fp, [r8, #4]
0075bd08  01 00 7b e3                                      cmn fp, #1
0075bd0c  06 10 a0 11                                      movne r1, r6
0075bd10  20 00 00 0a                                      beq #0x75bd98
0075bd14  01 10 81 e2                                      add r1, r1, #1
0075bd18  07 10 01 e0                                      and r1, r1, r7
0075bd1c  81 00 a0 e1                                      lsl r0, r1, #1
0075bd20  01 00 80 e2                                      add r0, r0, #1
0075bd24  80 c1 93 e7                                      ldr ip, [r3, r0, lsl #3]
0075bd28  80 01 83 e0                                      add r0, r3, r0, lsl #3
0075bd2c  02 00 7c e3                                      cmn ip, #2
0075bd30  f7 ff ff 1a                                      bne #0x75bd14
0075bd34  0b 70 07 e0                                      and r7, r7, fp
0075bd38  06 00 57 e1                                      cmp r7, r6
0075bd3c  1b 00 00 0a                                      beq #0x75bdb0
0075bd40  87 70 a0 e1                                      lsl r7, r7, #1
0075bd44  01 b0 87 e2                                      add fp, r7, #1
0075bd48  8b 71 93 e7                                      ldr r7, [r3, fp, lsl #3]
0075bd4c  8b b1 83 e0                                      add fp, r3, fp, lsl #3
0075bd50  06 00 57 e1                                      cmp r7, r6
0075bd54  f9 ff ff 1a                                      bne #0x75bd40
0075bd58  00 90 80 e5                                      str sb, [r0]
0075bd5c  04 c0 98 e5                                      ldr ip, [r8, #4]
0075bd60  04 c0 80 e5                                      str ip, [r0, #4]
0075bd64  08 c0 98 e5                                      ldr ip, [r8, #8]
0075bd68  08 c0 80 e5                                      str ip, [r0, #8]
0075bd6c  0c c0 98 e5                                      ldr ip, [r8, #0xc]
0075bd70  0c c0 80 e5                                      str ip, [r0, #0xc]
0075bd74  00 10 8b e5                                      str r1, [fp]
0075bd78  00 10 94 e5                                      ldr r1, [r4]
0075bd7c  08 10 88 e5                                      str r1, [r8, #8]
0075bd80  00 10 95 e5                                      ldr r1, [r5]
0075bd84  04 20 88 e5                                      str r2, [r8, #4]
0075bd88  00 20 e0 e3                                      mvn r2, #0
0075bd8c  0c 10 88 e5                                      str r1, [r8, #0xc]
0075bd90  8a 21 83 e7                                      str r2, [r3, sl, lsl #3]
0075bd94  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
0075bd98  04 20 88 e5                                      str r2, [r8, #4]
0075bd9c  00 30 94 e5                                      ldr r3, [r4]
0075bda0  08 30 88 e5                                      str r3, [r8, #8]
0075bda4  00 30 95 e5                                      ldr r3, [r5]
0075bda8  0c 30 88 e5                                      str r3, [r8, #0xc]
0075bdac  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
0075bdb0  00 90 80 e5                                      str sb, [r0]
0075bdb4  04 c0 98 e5                                      ldr ip, [r8, #4]
0075bdb8  04 c0 80 e5                                      str ip, [r0, #4]
0075bdbc  08 c0 98 e5                                      ldr ip, [r8, #8]
0075bdc0  08 c0 80 e5                                      str ip, [r0, #8]
0075bdc4  0c c0 98 e5                                      ldr ip, [r8, #0xc]
0075bdc8  0c c0 80 e5                                      str ip, [r0, #0xc]
0075bdcc  00 00 94 e5                                      ldr r0, [r4]
0075bdd0  08 00 88 e5                                      str r0, [r8, #8]
0075bdd4  00 00 95 e5                                      ldr r0, [r5]
0075bdd8  0c 00 88 e5                                      str r0, [r8, #0xc]
0075bddc  8a 11 83 e7                                      str r1, [r3, sl, lsl #3]
0075bde0  04 20 88 e5                                      str r2, [r8, #4]
0075bde4  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x0075bde8, declared_size=68, range_size=68, mode=arm
; class-group: gameswf::hash<int, gameswf::matrix*, gameswf::fixed_size_hash<int> >
; alias: _ZN7gameswf4hashIiPNS_6matrixENS_15fixed_size_hashIiEEE3setERKiRKS2_
; demangled: gameswf::hash<int, gameswf::matrix*, gameswf::fixed_size_hash<int> >::set(int const&, gameswf::matrix* const&)
; decoder-mode: arm
0075bde8  70 40 2d e9                                      push {r4, r5, r6, lr}
0075bdec  02 40 a0 e1                                      mov r4, r2
0075bdf0  00 50 a0 e1                                      mov r5, r0
0075bdf4  01 60 a0 e1                                      mov r6, r1
0075bdf8  1a f8 ff eb                                      bl #0x759e68
0075bdfc  00 00 50 e3                                      cmp r0, #0
0075be00  04 00 00 ba                                      blt #0x75be18
0075be04  00 20 95 e5                                      ldr r2, [r5]
0075be08  00 30 94 e5                                      ldr r3, [r4]
0075be0c  00 02 82 e0                                      add r0, r2, r0, lsl #4
0075be10  14 30 80 e5                                      str r3, [r0, #0x14]
0075be14  70 80 bd e8                                      pop {r4, r5, r6, pc}
0075be18  05 00 a0 e1                                      mov r0, r5
0075be1c  06 10 a0 e1                                      mov r1, r6
0075be20  04 20 a0 e1                                      mov r2, r4
0075be24  70 40 bd e8                                      pop {r4, r5, r6, lr}
0075be28  95 ff ff ea                                      b #0x75bc84

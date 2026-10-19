; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00759f28, declared_size=192, range_size=192, mode=arm
; class-group: gameswf::hash<int, gameswf::cxform*, gameswf::fixed_size_hash<int> >
; alias: _ZNK7gameswf4hashIiPNS_6cxformENS_15fixed_size_hashIiEEE10find_indexERKi
; demangled: gameswf::hash<int, gameswf::cxform*, gameswf::fixed_size_hash<int> >::find_index(int const&) const
; decoder-mode: arm
00759f28  30 00 2d e9                                      push {r4, r5}
00759f2c  00 30 90 e5                                      ldr r3, [r0]
00759f30  00 00 53 e3                                      cmp r3, #0
00759f34  02 00 00 1a                                      bne #0x759f44
00759f38  00 00 e0 e3                                      mvn r0, #0
00759f3c  30 00 bd e8                                      pop {r4, r5}
00759f40  1e ff 2f e1                                      bx lr
00759f44  05 25 01 e3                                      movw r2, #0x1505
00759f48  04 00 a0 e3                                      mov r0, #4
00759f4c  01 00 40 e2                                      sub r0, r0, #1
00759f50  00 40 d1 e7                                      ldrb r4, [r1, r0]
00759f54  02 c3 a0 e1                                      lsl ip, r2, #6
00759f58  02 c8 8c e0                                      add ip, ip, r2, lsl #16
00759f5c  04 c0 8c e0                                      add ip, ip, r4
00759f60  00 00 50 e3                                      cmp r0, #0
00759f64  0c 20 62 e0                                      rsb r2, r2, ip
00759f68  f7 ff ff 1a                                      bne #0x759f4c
00759f6c  04 00 93 e5                                      ldr r0, [r3, #4]
00759f70  01 00 72 e3                                      cmn r2, #1
00759f74  02 29 e0 03                                      mvneq r2, #0x8000
00759f78  00 40 02 e0                                      and r4, r2, r0
00759f7c  84 c0 a0 e1                                      lsl ip, r4, #1
00759f80  01 c0 8c e2                                      add ip, ip, #1
00759f84  8c 51 93 e7                                      ldr r5, [r3, ip, lsl #3]
00759f88  8c c1 83 e0                                      add ip, r3, ip, lsl #3
00759f8c  02 00 75 e3                                      cmn r5, #2
00759f90  e8 ff ff 0a                                      beq #0x759f38
00759f94  04 50 9c e5                                      ldr r5, [ip, #4]
00759f98  01 00 75 e3                                      cmn r5, #1
00759f9c  04 00 a0 01                                      moveq r0, r4
00759fa0  06 00 00 0a                                      beq #0x759fc0
00759fa4  05 00 00 e0                                      and r0, r0, r5
00759fa8  04 00 50 e1                                      cmp r0, r4
00759fac  e1 ff ff 1a                                      bne #0x759f38
00759fb0  02 00 00 ea                                      b #0x759fc0
00759fb4  00 c2 83 e0                                      add ip, r3, r0, lsl #4
00759fb8  08 c0 8c e2                                      add ip, ip, #8
00759fbc  04 50 9c e5                                      ldr r5, [ip, #4]
00759fc0  05 00 52 e1                                      cmp r2, r5
00759fc4  03 00 00 1a                                      bne #0x759fd8
00759fc8  08 50 9c e5                                      ldr r5, [ip, #8]
00759fcc  00 40 91 e5                                      ldr r4, [r1]
00759fd0  04 00 55 e1                                      cmp r5, r4
00759fd4  d8 ff ff 0a                                      beq #0x759f3c
00759fd8  00 00 9c e5                                      ldr r0, [ip]
00759fdc  01 00 70 e3                                      cmn r0, #1
00759fe0  f3 ff ff 1a                                      bne #0x759fb4
00759fe4  d4 ff ff ea                                      b #0x759f3c

; FUNCTION 0x0075a13c, declared_size=128, range_size=128, mode=arm
; class-group: gameswf::hash<int, gameswf::cxform*, gameswf::fixed_size_hash<int> >
; alias: _ZN7gameswf4hashIiPNS_6cxformENS_15fixed_size_hashIiEEE5clearEv
; demangled: gameswf::hash<int, gameswf::cxform*, gameswf::fixed_size_hash<int> >::clear()
; decoder-mode: arm
0075a13c  70 40 2d e9                                      push {r4, r5, r6, lr}
0075a140  00 40 a0 e1                                      mov r4, r0
0075a144  00 00 90 e5                                      ldr r0, [r0]
0075a148  00 00 50 e3                                      cmp r0, #0
0075a14c  19 00 00 0a                                      beq #0x75a1b8
0075a150  04 10 90 e5                                      ldr r1, [r0, #4]
0075a154  00 00 51 e3                                      cmp r1, #0
0075a158  11 00 00 ba                                      blt #0x75a1a4
0075a15c  00 20 a0 e3                                      mov r2, #0
0075a160  08 30 a0 e3                                      mov r3, #8
0075a164  01 60 e0 e3                                      mvn r6, #1
0075a168  02 50 a0 e1                                      mov r5, r2
0075a16c  03 e0 90 e7                                      ldr lr, [r0, r3]
0075a170  01 20 82 e2                                      add r2, r2, #1
0075a174  03 c0 80 e0                                      add ip, r0, r3
0075a178  02 00 7e e3                                      cmn lr, #2
0075a17c  04 00 00 0a                                      beq #0x75a194
0075a180  04 e0 9c e5                                      ldr lr, [ip, #4]
0075a184  01 00 7e e3                                      cmn lr, #1
0075a188  04 50 8c 15                                      strne r5, [ip, #4]
0075a18c  00 60 8c 15                                      strne r6, [ip]
0075a190  00 00 94 15                                      ldrne r0, [r4]
0075a194  02 00 51 e1                                      cmp r1, r2
0075a198  10 30 83 e2                                      add r3, r3, #0x10
0075a19c  f2 ff ff aa                                      bge #0x75a16c
0075a1a0  04 10 90 e5                                      ldr r1, [r0, #4]
0075a1a4  01 12 a0 e1                                      lsl r1, r1, #4
0075a1a8  18 10 81 e2                                      add r1, r1, #0x18
0075a1ac  61 e2 ff eb                                      bl #0x752b38
0075a1b0  00 30 a0 e3                                      mov r3, #0
0075a1b4  00 30 84 e5                                      str r3, [r4]
0075a1b8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0075aa70, declared_size=344, range_size=344, mode=arm
; class-group: gameswf::hash<int, gameswf::cxform*, gameswf::fixed_size_hash<int> >
; alias: _ZN7gameswf4hashIiPNS_6cxformENS_15fixed_size_hashIiEEE16set_raw_capacityEi
; demangled: gameswf::hash<int, gameswf::cxform*, gameswf::fixed_size_hash<int> >::set_raw_capacity(int)
; decoder-mode: arm
0075aa70  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0075aa74  00 00 51 e3                                      cmp r1, #0
0075aa78  0c d0 4d e2                                      sub sp, sp, #0xc
0075aa7c  00 80 a0 e1                                      mov r8, r0
0075aa80  4d 00 00 da                                      ble #0x75abbc
0075aa84  01 00 41 e2                                      sub r0, r1, #1
0075aa88  b5 cf ee eb                                      bl #0x30e964
0075aa8c  08 cd ee eb                                      bl #0x30deb4
0075aa90  18 12 07 e3                                      movw r1, #0x7218
0075aa94  31 1f 43 e3                                      movt r1, #0x3f31
0075aa98  7d d0 ee eb                                      bl #0x30ec94
0075aa9c  fe 15 a0 e3                                      mov r1, #0x3f800000
0075aaa0  3f d0 ee eb                                      bl #0x30eba4
0075aaa4  88 ce ee eb                                      bl #0x30e4cc
0075aaa8  01 40 a0 e3                                      mov r4, #1
0075aaac  14 40 a0 e1                                      lsl r4, r4, r0
0075aab0  00 30 98 e5                                      ldr r3, [r8]
0075aab4  04 00 54 e3                                      cmp r4, #4
0075aab8  04 40 a0 b3                                      movlt r4, #4
0075aabc  00 00 53 e3                                      cmp r3, #0
0075aac0  03 00 00 0a                                      beq #0x75aad4
0075aac4  04 30 93 e5                                      ldr r3, [r3, #4]
0075aac8  01 30 83 e2                                      add r3, r3, #1
0075aacc  04 00 53 e1                                      cmp r3, r4
0075aad0  3a 00 00 0a                                      beq #0x75abc0
0075aad4  00 50 a0 e3                                      mov r5, #0
0075aad8  04 02 a0 e1                                      lsl r0, r4, #4
0075aadc  08 00 80 e2                                      add r0, r0, #8
0075aae0  05 10 a0 e1                                      mov r1, r5
0075aae4  04 50 8d e5                                      str r5, [sp, #4]
0075aae8  2b e0 ff eb                                      bl #0x752b9c
0075aaec  04 00 8d e5                                      str r0, [sp, #4]
0075aaf0  00 50 80 e5                                      str r5, [r0]
0075aaf4  04 30 9d e5                                      ldr r3, [sp, #4]
0075aaf8  01 20 44 e2                                      sub r2, r4, #1
0075aafc  01 90 e0 e3                                      mvn sb, #1
0075ab00  04 20 83 e5                                      str r2, [r3, #4]
0075ab04  08 30 a0 e3                                      mov r3, #8
0075ab08  04 20 9d e5                                      ldr r2, [sp, #4]
0075ab0c  01 50 85 e2                                      add r5, r5, #1
0075ab10  05 00 54 e1                                      cmp r4, r5
0075ab14  03 90 82 e7                                      str sb, [r2, r3]
0075ab18  10 30 83 e2                                      add r3, r3, #0x10
0075ab1c  f9 ff ff ca                                      bgt #0x75ab08
0075ab20  00 30 98 e5                                      ldr r3, [r8]
0075ab24  00 00 53 e3                                      cmp r3, #0
0075ab28  04 a0 8d 02                                      addeq sl, sp, #4
0075ab2c  1d 00 00 0a                                      beq #0x75aba8
0075ab30  04 70 93 e5                                      ldr r7, [r3, #4]
0075ab34  00 00 57 e3                                      cmp r7, #0
0075ab38  04 a0 8d b2                                      addlt sl, sp, #4
0075ab3c  15 00 00 ba                                      blt #0x75ab98
0075ab40  00 60 a0 e3                                      mov r6, #0
0075ab44  08 40 a0 e3                                      mov r4, #8
0075ab48  04 a0 8d e2                                      add sl, sp, #4
0075ab4c  06 b0 a0 e1                                      mov fp, r6
0075ab50  04 20 93 e7                                      ldr r2, [r3, r4]
0075ab54  01 60 86 e2                                      add r6, r6, #1
0075ab58  04 50 83 e0                                      add r5, r3, r4
0075ab5c  02 00 72 e3                                      cmn r2, #2
0075ab60  08 00 00 0a                                      beq #0x75ab88
0075ab64  04 20 95 e5                                      ldr r2, [r5, #4]
0075ab68  0a 00 a0 e1                                      mov r0, sl
0075ab6c  08 10 85 e2                                      add r1, r5, #8
0075ab70  01 00 72 e3                                      cmn r2, #1
0075ab74  03 00 00 0a                                      beq #0x75ab88
0075ab78  0c 20 85 e2                                      add r2, r5, #0xc
0075ab7c  1e 00 00 eb                                      bl #0x75abfc
0075ab80  00 0a 85 e8                                      stm r5, {sb, fp}
0075ab84  00 30 98 e5                                      ldr r3, [r8]
0075ab88  06 00 57 e1                                      cmp r7, r6
0075ab8c  10 40 84 e2                                      add r4, r4, #0x10
0075ab90  ee ff ff aa                                      bge #0x75ab50
0075ab94  04 70 93 e5                                      ldr r7, [r3, #4]
0075ab98  07 12 a0 e1                                      lsl r1, r7, #4
0075ab9c  03 00 a0 e1                                      mov r0, r3
0075aba0  18 10 81 e2                                      add r1, r1, #0x18
0075aba4  e3 df ff eb                                      bl #0x752b38
0075aba8  04 30 9d e5                                      ldr r3, [sp, #4]
0075abac  0a 00 a0 e1                                      mov r0, sl
0075abb0  00 30 88 e5                                      str r3, [r8]
0075abb4  00 30 a0 e3                                      mov r3, #0
0075abb8  04 30 8d e5                                      str r3, [sp, #4]
0075abbc  5e fd ff eb                                      bl #0x75a13c
0075abc0  0c d0 8d e2                                      add sp, sp, #0xc
0075abc4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x0075abc8, declared_size=52, range_size=52, mode=arm
; class-group: gameswf::hash<int, gameswf::cxform*, gameswf::fixed_size_hash<int> >
; alias: _ZN7gameswf4hashIiPNS_6cxformENS_15fixed_size_hashIiEEE12check_expandEv
; demangled: gameswf::hash<int, gameswf::cxform*, gameswf::fixed_size_hash<int> >::check_expand()
; decoder-mode: arm
0075abc8  00 30 90 e5                                      ldr r3, [r0]
0075abcc  00 00 53 e3                                      cmp r3, #0
0075abd0  07 00 00 0a                                      beq #0x75abf4
0075abd4  04 10 93 e5                                      ldr r1, [r3, #4]
0075abd8  00 30 93 e5                                      ldr r3, [r3]
0075abdc  01 10 81 e2                                      add r1, r1, #1
0075abe0  81 10 a0 e1                                      lsl r1, r1, #1
0075abe4  83 30 83 e0                                      add r3, r3, r3, lsl #1
0075abe8  01 00 53 e1                                      cmp r3, r1
0075abec  1e ff 2f d1                                      bxle lr
0075abf0  9e ff ff ea                                      b #0x75aa70
0075abf4  08 10 a0 e3                                      mov r1, #8
0075abf8  9c ff ff ea                                      b #0x75aa70

; FUNCTION 0x0075abfc, declared_size=356, range_size=356, mode=arm
; class-group: gameswf::hash<int, gameswf::cxform*, gameswf::fixed_size_hash<int> >
; alias: _ZN7gameswf4hashIiPNS_6cxformENS_15fixed_size_hashIiEEE3addERKiRKS2_
; demangled: gameswf::hash<int, gameswf::cxform*, gameswf::fixed_size_hash<int> >::add(int const&, gameswf::cxform* const&)
; decoder-mode: arm
0075abfc  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
0075ac00  00 60 a0 e1                                      mov r6, r0
0075ac04  01 40 a0 e1                                      mov r4, r1
0075ac08  02 50 a0 e1                                      mov r5, r2
0075ac0c  ed ff ff eb                                      bl #0x75abc8
0075ac10  00 10 96 e5                                      ldr r1, [r6]
0075ac14  05 25 01 e3                                      movw r2, #0x1505
0075ac18  04 30 a0 e3                                      mov r3, #4
0075ac1c  00 00 91 e5                                      ldr r0, [r1]
0075ac20  01 00 80 e2                                      add r0, r0, #1
0075ac24  00 00 81 e5                                      str r0, [r1]
0075ac28  01 30 43 e2                                      sub r3, r3, #1
0075ac2c  03 00 d4 e7                                      ldrb r0, [r4, r3]
0075ac30  02 13 a0 e1                                      lsl r1, r2, #6
0075ac34  02 18 81 e0                                      add r1, r1, r2, lsl #16
0075ac38  00 10 81 e0                                      add r1, r1, r0
0075ac3c  00 00 53 e3                                      cmp r3, #0
0075ac40  01 20 62 e0                                      rsb r2, r2, r1
0075ac44  f7 ff ff 1a                                      bne #0x75ac28
0075ac48  00 30 96 e5                                      ldr r3, [r6]
0075ac4c  01 00 72 e3                                      cmn r2, #1
0075ac50  02 29 e0 03                                      mvneq r2, #0x8000
0075ac54  04 70 93 e5                                      ldr r7, [r3, #4]
0075ac58  07 60 02 e0                                      and r6, r2, r7
0075ac5c  86 a0 a0 e1                                      lsl sl, r6, #1
0075ac60  01 a0 8a e2                                      add sl, sl, #1
0075ac64  8a 91 93 e7                                      ldr sb, [r3, sl, lsl #3]
0075ac68  8a 81 83 e0                                      add r8, r3, sl, lsl #3
0075ac6c  02 00 79 e3                                      cmn sb, #2
0075ac70  00 10 e0 03                                      mvneq r1, #0
0075ac74  8a 11 83 07                                      streq r1, [r3, sl, lsl #3]
0075ac78  24 00 00 0a                                      beq #0x75ad10
0075ac7c  04 b0 98 e5                                      ldr fp, [r8, #4]
0075ac80  01 00 7b e3                                      cmn fp, #1
0075ac84  06 10 a0 11                                      movne r1, r6
0075ac88  20 00 00 0a                                      beq #0x75ad10
0075ac8c  01 10 81 e2                                      add r1, r1, #1
0075ac90  07 10 01 e0                                      and r1, r1, r7
0075ac94  81 00 a0 e1                                      lsl r0, r1, #1
0075ac98  01 00 80 e2                                      add r0, r0, #1
0075ac9c  80 c1 93 e7                                      ldr ip, [r3, r0, lsl #3]
0075aca0  80 01 83 e0                                      add r0, r3, r0, lsl #3
0075aca4  02 00 7c e3                                      cmn ip, #2
0075aca8  f7 ff ff 1a                                      bne #0x75ac8c
0075acac  0b 70 07 e0                                      and r7, r7, fp
0075acb0  06 00 57 e1                                      cmp r7, r6
0075acb4  1b 00 00 0a                                      beq #0x75ad28
0075acb8  87 70 a0 e1                                      lsl r7, r7, #1
0075acbc  01 b0 87 e2                                      add fp, r7, #1
0075acc0  8b 71 93 e7                                      ldr r7, [r3, fp, lsl #3]
0075acc4  8b b1 83 e0                                      add fp, r3, fp, lsl #3
0075acc8  06 00 57 e1                                      cmp r7, r6
0075accc  f9 ff ff 1a                                      bne #0x75acb8
0075acd0  00 90 80 e5                                      str sb, [r0]
0075acd4  04 c0 98 e5                                      ldr ip, [r8, #4]
0075acd8  04 c0 80 e5                                      str ip, [r0, #4]
0075acdc  08 c0 98 e5                                      ldr ip, [r8, #8]
0075ace0  08 c0 80 e5                                      str ip, [r0, #8]
0075ace4  0c c0 98 e5                                      ldr ip, [r8, #0xc]
0075ace8  0c c0 80 e5                                      str ip, [r0, #0xc]
0075acec  00 10 8b e5                                      str r1, [fp]
0075acf0  00 10 94 e5                                      ldr r1, [r4]
0075acf4  08 10 88 e5                                      str r1, [r8, #8]
0075acf8  00 10 95 e5                                      ldr r1, [r5]
0075acfc  04 20 88 e5                                      str r2, [r8, #4]
0075ad00  00 20 e0 e3                                      mvn r2, #0
0075ad04  0c 10 88 e5                                      str r1, [r8, #0xc]
0075ad08  8a 21 83 e7                                      str r2, [r3, sl, lsl #3]
0075ad0c  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
0075ad10  04 20 88 e5                                      str r2, [r8, #4]
0075ad14  00 30 94 e5                                      ldr r3, [r4]
0075ad18  08 30 88 e5                                      str r3, [r8, #8]
0075ad1c  00 30 95 e5                                      ldr r3, [r5]
0075ad20  0c 30 88 e5                                      str r3, [r8, #0xc]
0075ad24  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
0075ad28  00 90 80 e5                                      str sb, [r0]
0075ad2c  04 c0 98 e5                                      ldr ip, [r8, #4]
0075ad30  04 c0 80 e5                                      str ip, [r0, #4]
0075ad34  08 c0 98 e5                                      ldr ip, [r8, #8]
0075ad38  08 c0 80 e5                                      str ip, [r0, #8]
0075ad3c  0c c0 98 e5                                      ldr ip, [r8, #0xc]
0075ad40  0c c0 80 e5                                      str ip, [r0, #0xc]
0075ad44  00 00 94 e5                                      ldr r0, [r4]
0075ad48  08 00 88 e5                                      str r0, [r8, #8]
0075ad4c  00 00 95 e5                                      ldr r0, [r5]
0075ad50  0c 00 88 e5                                      str r0, [r8, #0xc]
0075ad54  8a 11 83 e7                                      str r1, [r3, sl, lsl #3]
0075ad58  04 20 88 e5                                      str r2, [r8, #4]
0075ad5c  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x0075ad60, declared_size=68, range_size=68, mode=arm
; class-group: gameswf::hash<int, gameswf::cxform*, gameswf::fixed_size_hash<int> >
; alias: _ZN7gameswf4hashIiPNS_6cxformENS_15fixed_size_hashIiEEE3setERKiRKS2_
; demangled: gameswf::hash<int, gameswf::cxform*, gameswf::fixed_size_hash<int> >::set(int const&, gameswf::cxform* const&)
; decoder-mode: arm
0075ad60  70 40 2d e9                                      push {r4, r5, r6, lr}
0075ad64  02 40 a0 e1                                      mov r4, r2
0075ad68  00 50 a0 e1                                      mov r5, r0
0075ad6c  01 60 a0 e1                                      mov r6, r1
0075ad70  6c fc ff eb                                      bl #0x759f28
0075ad74  00 00 50 e3                                      cmp r0, #0
0075ad78  04 00 00 ba                                      blt #0x75ad90
0075ad7c  00 20 95 e5                                      ldr r2, [r5]
0075ad80  00 30 94 e5                                      ldr r3, [r4]
0075ad84  00 02 82 e0                                      add r0, r2, r0, lsl #4
0075ad88  14 30 80 e5                                      str r3, [r0, #0x14]
0075ad8c  70 80 bd e8                                      pop {r4, r5, r6, pc}
0075ad90  05 00 a0 e1                                      mov r0, r5
0075ad94  06 10 a0 e1                                      mov r1, r6
0075ad98  04 20 a0 e1                                      mov r2, r4
0075ad9c  70 40 bd e8                                      pop {r4, r5, r6, lr}
0075ada0  95 ff ff ea                                      b #0x75abfc

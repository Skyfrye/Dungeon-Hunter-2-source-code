; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00381894, declared_size=192, range_size=192, mode=arm
; class-group: std::vector<char*, std::allocator<char*> >
; alias: _ZNSt6vectorIPcSaIS0_EE18_M_insert_overflowEPS0_RKS0_RKSt11__true_typejb.clone.1
; demangled: std::vector<char*, std::allocator<char*> >::_M_insert_overflow(char**, char* const&, std::__true_type const&, unsigned int, bool) [clone .clone.1]
; decoder-mode: arm
00381894  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00381898  00 40 a0 e1                                      mov r4, r0
0038189c  00 30 94 e5                                      ldr r3, [r4]
003818a0  04 00 90 e5                                      ldr r0, [r0, #4]
003818a4  01 50 a0 e1                                      mov r5, r1
003818a8  08 d0 4d e2                                      sub sp, sp, #8
003818ac  00 30 63 e0                                      rsb r3, r3, r0
003818b0  43 31 a0 e1                                      asr r3, r3, #2
003818b4  01 00 53 e3                                      cmp r3, #1
003818b8  03 10 83 20                                      addhs r1, r3, r3
003818bc  01 10 83 32                                      addlo r1, r3, #1
003818c0  07 01 71 e3                                      cmn r1, #0xc0000001
003818c4  02 80 a0 e1                                      mov r8, r2
003818c8  1b 00 00 8a                                      bhi #0x38193c
003818cc  01 00 53 e1                                      cmp r3, r1
003818d0  19 00 00 8a                                      bhi #0x38193c
003818d4  08 20 8d e2                                      add r2, sp, #8
003818d8  08 70 84 e2                                      add r7, r4, #8
003818dc  04 10 22 e5                                      str r1, [r2, #-4]!
003818e0  07 00 a0 e1                                      mov r0, r7
003818e4  a6 ff ff eb                                      bl #0x381784
003818e8  00 10 94 e5                                      ldr r1, [r4]
003818ec  00 60 a0 e1                                      mov r6, r0
003818f0  01 50 55 e0                                      subs r5, r5, r1
003818f4  00 50 a0 01                                      moveq r5, r0
003818f8  11 00 00 1a                                      bne #0x381944
003818fc  00 30 98 e5                                      ldr r3, [r8]
00381900  07 00 a0 e1                                      mov r0, r7
00381904  04 30 85 e4                                      str r3, [r5], #4
00381908  00 30 94 e5                                      ldr r3, [r4]
0038190c  08 20 94 e5                                      ldr r2, [r4, #8]
00381910  03 10 a0 e1                                      mov r1, r3
00381914  02 30 63 e0                                      rsb r3, r3, r2
00381918  43 21 a0 e1                                      asr r2, r3, #2
0038191c  b3 ff ff eb                                      bl #0x3817f0
00381920  04 30 9d e5                                      ldr r3, [sp, #4]
00381924  00 60 84 e5                                      str r6, [r4]
00381928  04 50 84 e5                                      str r5, [r4, #4]
0038192c  03 61 86 e0                                      add r6, r6, r3, lsl #2
00381930  08 60 84 e5                                      str r6, [r4, #8]
00381934  08 d0 8d e2                                      add sp, sp, #8
00381938  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0038193c  03 11 e0 e3                                      mvn r1, #0xc0000000
00381940  e3 ff ff ea                                      b #0x3818d4
00381944  05 20 a0 e1                                      mov r2, r5
00381948  7a 31 fe eb                                      bl #0x30df38
0038194c  05 50 80 e0                                      add r5, r0, r5
00381950  e9 ff ff ea                                      b #0x3818fc

; FUNCTION 0x003e0a28, declared_size=64, range_size=64, mode=arm
; class-group: std::vector<char*, std::allocator<char*> >
; alias: _ZNSt6vectorIPcSaIS0_EED1Ev
; demangled: std::vector<char*, std::allocator<char*> >::~vector()
; decoder-mode: arm
003e0a28  10 40 2d e9                                      push {r4, lr}
003e0a2c  00 40 a0 e1                                      mov r4, r0
003e0a30  00 00 90 e5                                      ldr r0, [r0]
003e0a34  00 00 50 e3                                      cmp r0, #0
003e0a38  05 00 00 0a                                      beq #0x3e0a54
003e0a3c  08 10 94 e5                                      ldr r1, [r4, #8]
003e0a40  01 10 60 e0                                      rsb r1, r0, r1
003e0a44  03 10 c1 e3                                      bic r1, r1, #3
003e0a48  80 00 51 e3                                      cmp r1, #0x80
003e0a4c  02 00 00 8a                                      bhi #0x3e0a5c
003e0a50  2a a1 0c eb                                      bl #0x708f00
003e0a54  04 00 a0 e1                                      mov r0, r4
003e0a58  10 80 bd e8                                      pop {r4, pc}
003e0a5c  77 be fc eb                                      bl #0x310440
003e0a60  04 00 a0 e1                                      mov r0, r4
003e0a64  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00458d8c, declared_size=328, range_size=328, mode=arm
; class-group: std::vector<char*, std::allocator<char*> >
; alias: _ZNSt6vectorIPcSaIS0_EE18_M_fill_insert_auxEPS0_jRKS0_RKSt12__false_type
; demangled: std::vector<char*, std::allocator<char*> >::_M_fill_insert_aux(char**, unsigned int, char* const&, std::__false_type const&)
; decoder-mode: arm
00458d8c  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00458d90  00 c0 90 e5                                      ldr ip, [r0]
00458d94  03 50 a0 e1                                      mov r5, r3
00458d98  14 d0 4d e2                                      sub sp, sp, #0x14
00458d9c  0c 00 53 e1                                      cmp r3, ip
00458da0  00 40 a0 e1                                      mov r4, r0
00458da4  01 60 a0 e1                                      mov r6, r1
00458da8  02 30 a0 e1                                      mov r3, r2
00458dac  04 70 90 35                                      ldrlo r7, [r0, #4]
00458db0  0a 00 00 3a                                      blo #0x458de0
00458db4  04 70 90 e5                                      ldr r7, [r0, #4]
00458db8  07 00 55 e1                                      cmp r5, r7
00458dbc  07 00 00 2a                                      bhs #0x458de0
00458dc0  00 c0 95 e5                                      ldr ip, [r5]
00458dc4  10 30 8d e2                                      add r3, sp, #0x10
00458dc8  08 c0 23 e5                                      str ip, [r3, #-8]!
00458dcc  0c c0 8d e2                                      add ip, sp, #0xc
00458dd0  00 c0 8d e5                                      str ip, [sp]
00458dd4  ec ff ff eb                                      bl #0x458d8c
00458dd8  14 d0 8d e2                                      add sp, sp, #0x14
00458ddc  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00458de0  07 20 66 e0                                      rsb r2, r6, r7
00458de4  42 81 a0 e1                                      asr r8, r2, #2
00458de8  08 00 53 e1                                      cmp r3, r8
00458dec  1c 00 00 2a                                      bhs #0x458e64
00458df0  03 81 a0 e1                                      lsl r8, r3, #2
00458df4  07 30 68 e0                                      rsb r3, r8, r7
00458df8  07 00 53 e1                                      cmp r3, r7
00458dfc  07 a0 a0 01                                      moveq sl, r7
00458e00  05 00 00 0a                                      beq #0x458e1c
00458e04  03 10 a0 e1                                      mov r1, r3
00458e08  07 20 63 e0                                      rsb r2, r3, r7
00458e0c  07 00 a0 e1                                      mov r0, r7
00458e10  03 a0 a0 e1                                      mov sl, r3
00458e14  93 d6 fa eb                                      bl #0x30e868
00458e18  04 30 94 e5                                      ldr r3, [r4, #4]
00458e1c  0a 20 66 e0                                      rsb r2, r6, sl
00458e20  08 30 83 e0                                      add r3, r3, r8
00458e24  00 00 52 e3                                      cmp r2, #0
00458e28  04 30 84 e5                                      str r3, [r4, #4]
00458e2c  02 00 00 da                                      ble #0x458e3c
00458e30  07 00 62 e0                                      rsb r0, r2, r7
00458e34  06 10 a0 e1                                      mov r1, r6
00458e38  3e d4 fa eb                                      bl #0x30df38
00458e3c  48 81 a0 e1                                      asr r8, r8, #2
00458e40  00 00 58 e3                                      cmp r8, #0
00458e44  e3 ff ff da                                      ble #0x458dd8
00458e48  00 20 a0 e3                                      mov r2, #0
00458e4c  00 10 95 e5                                      ldr r1, [r5]
00458e50  02 11 86 e7                                      str r1, [r6, r2, lsl #2]
00458e54  01 20 82 e2                                      add r2, r2, #1
00458e58  08 00 52 e1                                      cmp r2, r8
00458e5c  fa ff ff 1a                                      bne #0x458e4c
00458e60  dc ff ff ea                                      b #0x458dd8
00458e64  03 30 68 e0                                      rsb r3, r8, r3
00458e68  53 a0 bd e7                                      sbfx sl, r3, #0, #0x1e
00458e6c  00 00 5a e3                                      cmp sl, #0
00458e70  03 01 87 e0                                      add r0, r7, r3, lsl #2
00458e74  05 00 00 da                                      ble #0x458e90
00458e78  00 10 a0 e3                                      mov r1, #0
00458e7c  00 c0 95 e5                                      ldr ip, [r5]
00458e80  01 c1 87 e7                                      str ip, [r7, r1, lsl #2]
00458e84  01 10 81 e2                                      add r1, r1, #1
00458e88  0a 00 51 e1                                      cmp r1, sl
00458e8c  fa ff ff 1a                                      bne #0x458e7c
00458e90  07 00 56 e1                                      cmp r6, r7
00458e94  04 00 84 e5                                      str r0, [r4, #4]
00458e98  02 00 00 0a                                      beq #0x458ea8
00458e9c  06 10 a0 e1                                      mov r1, r6
00458ea0  70 d6 fa eb                                      bl #0x30e868
00458ea4  04 00 94 e5                                      ldr r0, [r4, #4]
00458ea8  08 01 80 e0                                      add r0, r0, r8, lsl #2
00458eac  00 00 58 e3                                      cmp r8, #0
00458eb0  04 00 84 e5                                      str r0, [r4, #4]
00458eb4  c7 ff ff da                                      ble #0x458dd8
00458eb8  00 30 a0 e3                                      mov r3, #0
00458ebc  00 20 95 e5                                      ldr r2, [r5]
00458ec0  03 21 86 e7                                      str r2, [r6, r3, lsl #2]
00458ec4  01 30 83 e2                                      add r3, r3, #1
00458ec8  03 00 58 e1                                      cmp r8, r3
00458ecc  fa ff ff 1a                                      bne #0x458ebc
00458ed0  c0 ff ff ea                                      b #0x458dd8

; FUNCTION 0x00458ed4, declared_size=96, range_size=96, mode=arm
; class-group: std::vector<char*, std::allocator<char*> >
; alias: _ZNSt6vectorIPcSaIS0_EE20_M_compute_next_sizeEj
; demangled: std::vector<char*, std::allocator<char*> >::_M_compute_next_size(unsigned int)
; decoder-mode: arm
00458ed4  70 40 2d e9                                      push {r4, r5, r6, lr}
00458ed8  14 00 90 e8                                      ldm r0, {r2, r4}
00458edc  ff 3f 0f e3                                      movw r3, #0xffff
00458ee0  ff 3f 43 e3                                      movt r3, #0x3fff
00458ee4  04 40 62 e0                                      rsb r4, r2, r4
00458ee8  44 41 a0 e1                                      asr r4, r4, #2
00458eec  03 30 64 e0                                      rsb r3, r4, r3
00458ef0  01 00 53 e1                                      cmp r3, r1
00458ef4  01 50 a0 e1                                      mov r5, r1
00458ef8  08 00 00 3a                                      blo #0x458f20
00458efc  05 00 54 e1                                      cmp r4, r5
00458f00  04 00 84 20                                      addhs r0, r4, r4
00458f04  05 00 84 30                                      addlo r0, r4, r5
00458f08  07 01 70 e3                                      cmn r0, #0xc0000001
00458f0c  01 00 00 8a                                      bhi #0x458f18
00458f10  04 00 50 e1                                      cmp r0, r4
00458f14  00 00 00 2a                                      bhs #0x458f1c
00458f18  03 01 e0 e3                                      mvn r0, #0xc0000000
00458f1c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00458f20  08 00 9f e5                                      ldr r0, [pc, #8]
00458f24  00 00 8f e0                                      add r0, pc, r0
00458f28  c4 bf 0a eb                                      bl #0x708e40
00458f2c  f2 ff ff ea                                      b #0x458efc
; mapping-symbol data/literal pool
00458f30  44 55 46 00                                      .byte 0x44, 0x55, 0x46, 0x00

; FUNCTION 0x0045abe8, declared_size=276, range_size=276, mode=arm
; class-group: std::vector<char*, std::allocator<char*> >
; alias: _ZNSt6vectorIPcSaIS0_EE14_M_fill_insertEPS0_jRKS0_
; demangled: std::vector<char*, std::allocator<char*> >::_M_fill_insert(char**, unsigned int, char* const&)
; decoder-mode: arm
0045abe8  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0045abec  00 60 52 e2                                      subs r6, r2, #0
0045abf0  14 d0 4d e2                                      sub sp, sp, #0x14
0045abf4  00 40 a0 e1                                      mov r4, r0
0045abf8  01 70 a0 e1                                      mov r7, r1
0045abfc  03 50 a0 e1                                      mov r5, r3
0045ac00  30 00 00 0a                                      beq #0x45acc8
0045ac04  00 50 90 e9                                      ldmib r0, {ip, lr}
0045ac08  0e c0 6c e0                                      rsb ip, ip, lr
0045ac0c  4c 01 56 e1                                      cmp r6, ip, asr #2
0045ac10  2e 00 00 9a                                      bls #0x45acd0
0045ac14  06 10 a0 e1                                      mov r1, r6
0045ac18  ad f8 ff eb                                      bl #0x458ed4
0045ac1c  10 20 8d e2                                      add r2, sp, #0x10
0045ac20  00 10 a0 e1                                      mov r1, r0
0045ac24  08 00 22 e5                                      str r0, [r2, #-8]!
0045ac28  08 00 84 e2                                      add r0, r4, #8
0045ac2c  d4 9a fc eb                                      bl #0x381784
0045ac30  00 10 94 e5                                      ldr r1, [r4]
0045ac34  00 80 a0 e1                                      mov r8, r0
0045ac38  01 a0 57 e0                                      subs sl, r7, r1
0045ac3c  00 00 a0 01                                      moveq r0, r0
0045ac40  02 00 00 0a                                      beq #0x45ac50
0045ac44  0a 20 a0 e1                                      mov r2, sl
0045ac48  ba cc fa eb                                      bl #0x30df38
0045ac4c  0a 00 80 e0                                      add r0, r0, sl
0045ac50  06 20 a0 e1                                      mov r2, r6
0045ac54  00 30 a0 e3                                      mov r3, #0
0045ac58  00 10 95 e5                                      ldr r1, [r5]
0045ac5c  01 20 52 e2                                      subs r2, r2, #1
0045ac60  03 10 80 e7                                      str r1, [r0, r3]
0045ac64  04 30 83 e2                                      add r3, r3, #4
0045ac68  fa ff ff 1a                                      bne #0x45ac58
0045ac6c  04 30 94 e5                                      ldr r3, [r4, #4]
0045ac70  06 01 80 e0                                      add r0, r0, r6, lsl #2
0045ac74  07 50 53 e0                                      subs r5, r3, r7
0045ac78  00 60 a0 01                                      moveq r6, r0
0045ac7c  03 00 00 0a                                      beq #0x45ac90
0045ac80  07 10 a0 e1                                      mov r1, r7
0045ac84  05 20 a0 e1                                      mov r2, r5
0045ac88  aa cc fa eb                                      bl #0x30df38
0045ac8c  05 60 80 e0                                      add r6, r0, r5
0045ac90  00 00 94 e5                                      ldr r0, [r4]
0045ac94  08 10 94 e5                                      ldr r1, [r4, #8]
0045ac98  00 00 50 e3                                      cmp r0, #0
0045ac9c  04 00 00 0a                                      beq #0x45acb4
0045aca0  01 10 60 e0                                      rsb r1, r0, r1
0045aca4  03 10 c1 e3                                      bic r1, r1, #3
0045aca8  80 00 51 e3                                      cmp r1, #0x80
0045acac  0b 00 00 8a                                      bhi #0x45ace0
0045acb0  92 b8 0a eb                                      bl #0x708f00
0045acb4  08 30 9d e5                                      ldr r3, [sp, #8]
0045acb8  00 80 84 e5                                      str r8, [r4]
0045acbc  04 60 84 e5                                      str r6, [r4, #4]
0045acc0  03 81 88 e0                                      add r8, r8, r3, lsl #2
0045acc4  08 80 84 e5                                      str r8, [r4, #8]
0045acc8  14 d0 8d e2                                      add sp, sp, #0x14
0045accc  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0045acd0  0c c0 8d e2                                      add ip, sp, #0xc
0045acd4  00 c0 8d e5                                      str ip, [sp]
0045acd8  2b f8 ff eb                                      bl #0x458d8c
0045acdc  f9 ff ff ea                                      b #0x45acc8
0045ace0  d6 d5 fa eb                                      bl #0x310440
0045ace4  08 30 9d e5                                      ldr r3, [sp, #8]
0045ace8  00 80 84 e5                                      str r8, [r4]
0045acec  04 60 84 e5                                      str r6, [r4, #4]
0045acf0  03 81 88 e0                                      add r8, r8, r3, lsl #2
0045acf4  08 80 84 e5                                      str r8, [r4, #8]
0045acf8  f2 ff ff ea                                      b #0x45acc8

; FUNCTION 0x0045acfc, declared_size=68, range_size=68, mode=arm
; class-group: std::vector<char*, std::allocator<char*> >
; alias: _ZNSt6vectorIPcSaIS0_EE6resizeEjRKS0_
; demangled: std::vector<char*, std::allocator<char*> >::resize(unsigned int, char* const&)
; decoder-mode: arm
0045acfc  30 00 2d e9                                      push {r4, r5}
0045ad00  04 40 90 e5                                      ldr r4, [r0, #4]
0045ad04  00 50 90 e5                                      ldr r5, [r0]
0045ad08  02 30 a0 e1                                      mov r3, r2
0045ad0c  04 20 65 e0                                      rsb r2, r5, r4
0045ad10  42 21 a0 e1                                      asr r2, r2, #2
0045ad14  02 00 51 e1                                      cmp r1, r2
0045ad18  04 00 00 2a                                      bhs #0x45ad30
0045ad1c  01 51 85 e0                                      add r5, r5, r1, lsl #2
0045ad20  04 00 55 e1                                      cmp r5, r4
0045ad24  04 50 80 15                                      strne r5, [r0, #4]
0045ad28  30 00 bd e8                                      pop {r4, r5}
0045ad2c  1e ff 2f e1                                      bx lr
0045ad30  01 20 62 e0                                      rsb r2, r2, r1
0045ad34  04 10 a0 e1                                      mov r1, r4
0045ad38  30 00 bd e8                                      pop {r4, r5}
0045ad3c  a9 ff ff ea                                      b #0x45abe8

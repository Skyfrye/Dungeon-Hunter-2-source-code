; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003b3618, declared_size=152, range_size=152, mode=arm
; class-group: std::priv::_Bit_iter<std::priv::_Bit_reference, std::priv::_Bit_reference*> std::priv
; alias: _ZNSt4priv10__copy_auxINS_9_Bit_iterIbPKbEENS1_INS_14_Bit_referenceEPS5_EEEET0_T_S9_S8_RKSt12__false_type
; demangled: std::priv::_Bit_iter<std::priv::_Bit_reference, std::priv::_Bit_reference*> std::priv::__copy_aux<std::priv::_Bit_iter<bool, bool const*>, std::priv::_Bit_iter<std::priv::_Bit_reference, std::priv::_Bit_reference*> >(std::priv::_Bit_iter<bool, bool const*>, std::priv::_Bit_iter<bool, bool const*>, std::priv::_Bit_iter<std::priv::_Bit_reference, std::priv::_Bit_reference*>, std::__false_type const&)
; decoder-mode: arm
003b3618  08 d0 4d e2                                      sub sp, sp, #8
003b361c  f0 00 2d e9                                      push {r4, r5, r6, r7}
003b3620  08 d0 4d e2                                      sub sp, sp, #8
003b3624  20 50 9d e5                                      ldr r5, [sp, #0x20]
003b3628  03 60 61 e0                                      rsb r6, r1, r3
003b362c  24 70 9d e5                                      ldr r7, [sp, #0x24]
003b3630  05 50 62 e0                                      rsb r5, r2, r5
003b3634  86 51 85 e0                                      add r5, r5, r6, lsl #3
003b3638  06 00 8d e8                                      stm sp, {r1, r2}
003b363c  1c 30 8d e5                                      str r3, [sp, #0x1c]
003b3640  00 00 55 e3                                      cmp r5, #0
003b3644  02 c0 a0 e1                                      mov ip, r2
003b3648  01 40 a0 e1                                      mov r4, r1
003b364c  0c 00 97 e8                                      ldm r7, {r2, r3}
003b3650  11 00 00 da                                      ble #0x3b369c
003b3654  01 10 a0 e3                                      mov r1, #1
003b3658  00 70 94 e5                                      ldr r7, [r4]
003b365c  11 63 a0 e1                                      lsl r6, r1, r3
003b3660  11 7c 17 e0                                      ands r7, r7, r1, lsl ip
003b3664  00 70 92 e5                                      ldr r7, [r2]
003b3668  06 60 87 11                                      orrne r6, r7, r6
003b366c  06 60 c7 01                                      biceq r6, r7, r6
003b3670  1f 00 5c e3                                      cmp ip, #0x1f
003b3674  01 c0 8c 12                                      addne ip, ip, #1
003b3678  04 40 84 02                                      addeq r4, r4, #4
003b367c  00 c0 a0 03                                      moveq ip, #0
003b3680  1f 00 53 e3                                      cmp r3, #0x1f
003b3684  00 60 82 e5                                      str r6, [r2]
003b3688  01 30 83 12                                      addne r3, r3, #1
003b368c  04 20 82 02                                      addeq r2, r2, #4
003b3690  00 30 a0 03                                      moveq r3, #0
003b3694  01 50 55 e2                                      subs r5, r5, #1
003b3698  ee ff ff 1a                                      bne #0x3b3658
003b369c  0c 00 80 e8                                      stm r0, {r2, r3}
003b36a0  08 d0 8d e2                                      add sp, sp, #8
003b36a4  f0 00 bd e8                                      pop {r4, r5, r6, r7}
003b36a8  08 d0 8d e2                                      add sp, sp, #8
003b36ac  1e ff 2f e1                                      bx lr

; FUNCTION 0x0040c180, declared_size=196, range_size=196, mode=arm
; class-group: std::priv::_Bit_iter<std::priv::_Bit_reference, std::priv::_Bit_reference*> std::priv
; alias: _ZNSt4priv15__copy_backwardINS_9_Bit_iterINS_14_Bit_referenceEPS2_EES4_iEET0_T_S6_S5_RKSt26random_access_iterator_tagPT1_
; demangled: std::priv::_Bit_iter<std::priv::_Bit_reference, std::priv::_Bit_reference*> std::priv::__copy_backward<std::priv::_Bit_iter<std::priv::_Bit_reference, std::priv::_Bit_reference*>, std::priv::_Bit_iter<std::priv::_Bit_reference, std::priv::_Bit_reference*>, int>(std::priv::_Bit_iter<std::priv::_Bit_reference, std::priv::_Bit_reference*>, std::priv::_Bit_iter<std::priv::_Bit_reference, std::priv::_Bit_reference*>, std::priv::_Bit_iter<std::priv::_Bit_reference, std::priv::_Bit_reference*>, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
0040c180  f0 01 2d e9                                      push {r4, r5, r6, r7, r8}
0040c184  00 c0 91 e5                                      ldr ip, [r1]
0040c188  04 50 91 e5                                      ldr r5, [r1, #4]
0040c18c  50 00 92 e8                                      ldm r2, {r4, r6}
0040c190  00 10 a0 e1                                      mov r1, r0
0040c194  06 50 65 e0                                      rsb r5, r5, r6
0040c198  04 c0 6c e0                                      rsb ip, ip, r4
0040c19c  8c c1 85 e0                                      add ip, r5, ip, lsl #3
0040c1a0  00 00 5c e3                                      cmp ip, #0
0040c1a4  1f 00 00 da                                      ble #0x40c228
0040c1a8  01 80 a0 e3                                      mov r8, #1
0040c1ac  1f 70 a0 e3                                      mov r7, #0x1f
0040c1b0  04 00 93 e5                                      ldr r0, [r3, #4]
0040c1b4  02 51 a0 e3                                      mov r5, #0x80000000
0040c1b8  02 61 a0 e3                                      mov r6, #0x80000000
0040c1bc  00 00 50 e3                                      cmp r0, #0
0040c1c0  01 00 40 e2                                      sub r0, r0, #1
0040c1c4  04 00 83 e5                                      str r0, [r3, #4]
0040c1c8  00 00 93 05                                      ldreq r0, [r3]
0040c1cc  04 70 83 05                                      streq r7, [r3, #4]
0040c1d0  18 50 a0 11                                      lslne r5, r8, r0
0040c1d4  04 00 40 02                                      subeq r0, r0, #4
0040c1d8  00 00 83 05                                      streq r0, [r3]
0040c1dc  04 40 92 e5                                      ldr r4, [r2, #4]
0040c1e0  00 00 93 15                                      ldrne r0, [r3]
0040c1e4  00 00 54 e3                                      cmp r4, #0
0040c1e8  01 40 44 e2                                      sub r4, r4, #1
0040c1ec  18 64 a0 11                                      lslne r6, r8, r4
0040c1f0  04 40 82 e5                                      str r4, [r2, #4]
0040c1f4  00 40 92 05                                      ldreq r4, [r2]
0040c1f8  00 40 92 15                                      ldrne r4, [r2]
0040c1fc  04 70 82 05                                      streq r7, [r2, #4]
0040c200  04 40 44 02                                      subeq r4, r4, #4
0040c204  00 40 82 05                                      streq r4, [r2]
0040c208  00 40 94 e5                                      ldr r4, [r4]
0040c20c  04 00 16 e1                                      tst r6, r4
0040c210  00 40 90 e5                                      ldr r4, [r0]
0040c214  05 50 84 11                                      orrne r5, r4, r5
0040c218  05 50 c4 01                                      biceq r5, r4, r5
0040c21c  01 c0 5c e2                                      subs ip, ip, #1
0040c220  00 50 80 e5                                      str r5, [r0]
0040c224  e1 ff ff 1a                                      bne #0x40c1b0
0040c228  00 20 93 e5                                      ldr r2, [r3]
0040c22c  01 00 a0 e1                                      mov r0, r1
0040c230  00 20 81 e5                                      str r2, [r1]
0040c234  04 30 93 e5                                      ldr r3, [r3, #4]
0040c238  04 30 81 e5                                      str r3, [r1, #4]
0040c23c  f0 01 bd e8                                      pop {r4, r5, r6, r7, r8}
0040c240  1e ff 2f e1                                      bx lr

; FUNCTION 0x0040c244, declared_size=184, range_size=184, mode=arm
; class-group: std::priv::_Bit_iter<std::priv::_Bit_reference, std::priv::_Bit_reference*> std::priv
; alias: _ZNSt4priv6__copyINS_9_Bit_iterINS_14_Bit_referenceEPS2_EES4_iEET0_T_S6_S5_RKSt26random_access_iterator_tagPT1_
; demangled: std::priv::_Bit_iter<std::priv::_Bit_reference, std::priv::_Bit_reference*> std::priv::__copy<std::priv::_Bit_iter<std::priv::_Bit_reference, std::priv::_Bit_reference*>, std::priv::_Bit_iter<std::priv::_Bit_reference, std::priv::_Bit_reference*>, int>(std::priv::_Bit_iter<std::priv::_Bit_reference, std::priv::_Bit_reference*>, std::priv::_Bit_iter<std::priv::_Bit_reference, std::priv::_Bit_reference*>, std::priv::_Bit_iter<std::priv::_Bit_reference, std::priv::_Bit_reference*>, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
0040c244  f0 01 2d e9                                      push {r4, r5, r6, r7, r8}
0040c248  60 00 92 e8                                      ldm r2, {r5, r6}
0040c24c  10 10 91 e8                                      ldm r1, {r4, ip}
0040c250  00 20 a0 e1                                      mov r2, r0
0040c254  05 50 64 e0                                      rsb r5, r4, r5
0040c258  06 60 6c e0                                      rsb r6, ip, r6
0040c25c  85 51 86 e0                                      add r5, r6, r5, lsl #3
0040c260  00 00 55 e3                                      cmp r5, #0
0040c264  1d 00 00 da                                      ble #0x40c2e0
0040c268  01 60 a0 e3                                      mov r6, #1
0040c26c  00 70 a0 e3                                      mov r7, #0
0040c270  00 00 00 ea                                      b #0x40c278
0040c274  10 10 91 e8                                      ldm r1, {r4, ip}
0040c278  00 80 94 e5                                      ldr r8, [r4]
0040c27c  11 00 93 e8                                      ldm r3, {r0, r4}
0040c280  16 8c 18 e0                                      ands r8, r8, r6, lsl ip
0040c284  16 c4 a0 e1                                      lsl ip, r6, r4
0040c288  00 40 90 e5                                      ldr r4, [r0]
0040c28c  0c c0 84 11                                      orrne ip, r4, ip
0040c290  0c c0 c4 01                                      biceq ip, r4, ip
0040c294  00 c0 80 e5                                      str ip, [r0]
0040c298  04 00 91 e5                                      ldr r0, [r1, #4]
0040c29c  1f 00 50 e3                                      cmp r0, #0x1f
0040c2a0  01 00 80 e2                                      add r0, r0, #1
0040c2a4  04 00 81 e5                                      str r0, [r1, #4]
0040c2a8  00 00 91 05                                      ldreq r0, [r1]
0040c2ac  04 70 81 05                                      streq r7, [r1, #4]
0040c2b0  04 00 80 02                                      addeq r0, r0, #4
0040c2b4  00 00 81 05                                      streq r0, [r1]
0040c2b8  04 00 93 e5                                      ldr r0, [r3, #4]
0040c2bc  1f 00 50 e3                                      cmp r0, #0x1f
0040c2c0  01 00 80 e2                                      add r0, r0, #1
0040c2c4  04 00 83 e5                                      str r0, [r3, #4]
0040c2c8  00 00 93 05                                      ldreq r0, [r3]
0040c2cc  04 70 83 05                                      streq r7, [r3, #4]
0040c2d0  04 00 80 02                                      addeq r0, r0, #4
0040c2d4  00 00 83 05                                      streq r0, [r3]
0040c2d8  01 50 55 e2                                      subs r5, r5, #1
0040c2dc  e4 ff ff 1a                                      bne #0x40c274
0040c2e0  00 10 93 e5                                      ldr r1, [r3]
0040c2e4  02 00 a0 e1                                      mov r0, r2
0040c2e8  00 10 82 e5                                      str r1, [r2]
0040c2ec  04 30 93 e5                                      ldr r3, [r3, #4]
0040c2f0  04 30 82 e5                                      str r3, [r2, #4]
0040c2f4  f0 01 bd e8                                      pop {r4, r5, r6, r7, r8}
0040c2f8  1e ff 2f e1                                      bx lr

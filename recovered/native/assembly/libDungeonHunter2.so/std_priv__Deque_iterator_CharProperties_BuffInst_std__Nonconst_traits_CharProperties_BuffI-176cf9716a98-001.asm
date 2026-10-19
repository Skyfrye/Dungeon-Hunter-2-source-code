; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003de928, declared_size=240, range_size=240, mode=arm
; class-group: std::priv::_Deque_iterator<CharProperties::BuffInst*, std::_Nonconst_traits<CharProperties::BuffInst*> > std::priv
; alias: _ZNSt4priv7__ucopyINS_15_Deque_iteratorIPN14CharProperties8BuffInstESt13_Const_traitsIS4_EEENS1_IS4_St16_Nonconst_traitsIS4_EEEiEET0_T_SC_SB_RKSt26random_access_iterator_tagPT1_
; demangled: std::priv::_Deque_iterator<CharProperties::BuffInst*, std::_Nonconst_traits<CharProperties::BuffInst*> > std::priv::__ucopy<std::priv::_Deque_iterator<CharProperties::BuffInst*, std::_Const_traits<CharProperties::BuffInst*> >, std::priv::_Deque_iterator<CharProperties::BuffInst*, std::_Nonconst_traits<CharProperties::BuffInst*> >, int>(std::priv::_Deque_iterator<CharProperties::BuffInst*, std::_Const_traits<CharProperties::BuffInst*> >, std::priv::_Deque_iterator<CharProperties::BuffInst*, std::_Const_traits<CharProperties::BuffInst*> >, std::priv::_Deque_iterator<CharProperties::BuffInst*, std::_Nonconst_traits<CharProperties::BuffInst*> >, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
003de928  10 d0 4d e2                                      sub sp, sp, #0x10
003de92c  10 40 2d e9                                      push {r4, lr}
003de930  0c c0 8d e2                                      add ip, sp, #0xc
003de934  0e 00 8c e8                                      stm ip, {r1, r2, r3}
003de938  2c e0 9d e5                                      ldr lr, [sp, #0x2c]
003de93c  00 40 a0 e1                                      mov r4, r0
003de940  0f 00 9e e8                                      ldm lr, {r0, r1, r2, r3}
003de944  0f 00 84 e8                                      stm r4, {r0, r1, r2, r3}
003de948  0c 10 a0 e1                                      mov r1, ip
003de94c  1c 00 8d e2                                      add r0, sp, #0x1c
003de950  c6 ff ff eb                                      bl #0x3de870
003de954  00 00 50 e3                                      cmp r0, #0
003de958  08 00 00 ca                                      bgt #0x3de980
003de95c  29 00 00 ea                                      b #0x3dea08
003de960  00 30 94 e5                                      ldr r3, [r4]
003de964  08 20 94 e5                                      ldr r2, [r4, #8]
003de968  04 30 83 e2                                      add r3, r3, #4
003de96c  02 00 53 e1                                      cmp r3, r2
003de970  00 30 84 e5                                      str r3, [r4]
003de974  19 00 00 0a                                      beq #0x3de9e0
003de978  01 00 50 e2                                      subs r0, r0, #1
003de97c  21 00 00 0a                                      beq #0x3dea08
003de980  0c 20 9d e5                                      ldr r2, [sp, #0xc]
003de984  00 30 94 e5                                      ldr r3, [r4]
003de988  00 20 92 e5                                      ldr r2, [r2]
003de98c  00 20 83 e5                                      str r2, [r3]
003de990  0c 30 9d e5                                      ldr r3, [sp, #0xc]
003de994  14 20 9d e5                                      ldr r2, [sp, #0x14]
003de998  04 30 83 e2                                      add r3, r3, #4
003de99c  02 00 53 e1                                      cmp r3, r2
003de9a0  0c 30 8d e5                                      str r3, [sp, #0xc]
003de9a4  ed ff ff 1a                                      bne #0x3de960
003de9a8  18 30 9d e5                                      ldr r3, [sp, #0x18]
003de9ac  04 20 83 e2                                      add r2, r3, #4
003de9b0  18 20 8d e5                                      str r2, [sp, #0x18]
003de9b4  04 30 93 e5                                      ldr r3, [r3, #4]
003de9b8  80 20 83 e2                                      add r2, r3, #0x80
003de9bc  14 20 8d e5                                      str r2, [sp, #0x14]
003de9c0  0c 30 8d e5                                      str r3, [sp, #0xc]
003de9c4  10 30 8d e5                                      str r3, [sp, #0x10]
003de9c8  00 30 94 e5                                      ldr r3, [r4]
003de9cc  08 20 94 e5                                      ldr r2, [r4, #8]
003de9d0  04 30 83 e2                                      add r3, r3, #4
003de9d4  02 00 53 e1                                      cmp r3, r2
003de9d8  00 30 84 e5                                      str r3, [r4]
003de9dc  e5 ff ff 1a                                      bne #0x3de978
003de9e0  0c 30 94 e5                                      ldr r3, [r4, #0xc]
003de9e4  01 00 50 e2                                      subs r0, r0, #1
003de9e8  04 20 83 e2                                      add r2, r3, #4
003de9ec  0c 20 84 e5                                      str r2, [r4, #0xc]
003de9f0  04 30 93 e5                                      ldr r3, [r3, #4]
003de9f4  80 20 83 e2                                      add r2, r3, #0x80
003de9f8  08 20 84 e5                                      str r2, [r4, #8]
003de9fc  00 30 84 e5                                      str r3, [r4]
003dea00  04 30 84 e5                                      str r3, [r4, #4]
003dea04  dd ff ff 1a                                      bne #0x3de980
003dea08  04 00 a0 e1                                      mov r0, r4
003dea0c  10 40 bd e8                                      pop {r4, lr}
003dea10  10 d0 8d e2                                      add sp, sp, #0x10
003dea14  1e ff 2f e1                                      bx lr

; FUNCTION 0x003dea18, declared_size=252, range_size=252, mode=arm
; class-group: std::priv::_Deque_iterator<CharProperties::BuffInst*, std::_Nonconst_traits<CharProperties::BuffInst*> > std::priv
; alias: _ZNSt4priv15__copy_backwardINS_15_Deque_iteratorIPN14CharProperties8BuffInstESt16_Nonconst_traitsIS4_EEES7_iEET0_T_S9_S8_RKSt26random_access_iterator_tagPT1_
; demangled: std::priv::_Deque_iterator<CharProperties::BuffInst*, std::_Nonconst_traits<CharProperties::BuffInst*> > std::priv::__copy_backward<std::priv::_Deque_iterator<CharProperties::BuffInst*, std::_Nonconst_traits<CharProperties::BuffInst*> >, std::priv::_Deque_iterator<CharProperties::BuffInst*, std::_Nonconst_traits<CharProperties::BuffInst*> >, int>(std::priv::_Deque_iterator<CharProperties::BuffInst*, std::_Nonconst_traits<CharProperties::BuffInst*> >, std::priv::_Deque_iterator<CharProperties::BuffInst*, std::_Nonconst_traits<CharProperties::BuffInst*> >, std::priv::_Deque_iterator<CharProperties::BuffInst*, std::_Nonconst_traits<CharProperties::BuffInst*> >, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
003dea18  70 40 2d e9                                      push {r4, r5, r6, lr}
003dea1c  10 d0 4d e2                                      sub sp, sp, #0x10
003dea20  02 50 a0 e1                                      mov r5, r2
003dea24  0d c0 a0 e1                                      mov ip, sp
003dea28  00 60 a0 e1                                      mov r6, r0
003dea2c  03 40 a0 e1                                      mov r4, r3
003dea30  0f 00 91 e8                                      ldm r1, {r0, r1, r2, r3}
003dea34  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
003dea38  0d 10 a0 e1                                      mov r1, sp
003dea3c  05 00 a0 e1                                      mov r0, r5
003dea40  8a ff ff eb                                      bl #0x3de870
003dea44  00 00 50 e3                                      cmp r0, #0
003dea48  0c 00 00 ca                                      bgt #0x3dea80
003dea4c  2b 00 00 ea                                      b #0x3deb00
003dea50  04 20 43 e2                                      sub r2, r3, #4
003dea54  00 20 84 e5                                      str r2, [r4]
003dea58  00 30 95 e5                                      ldr r3, [r5]
003dea5c  04 10 95 e5                                      ldr r1, [r5, #4]
003dea60  01 00 53 e1                                      cmp r3, r1
003dea64  17 00 00 0a                                      beq #0x3deac8
003dea68  04 10 43 e2                                      sub r1, r3, #4
003dea6c  00 10 85 e5                                      str r1, [r5]
003dea70  04 30 13 e5                                      ldr r3, [r3, #-4]
003dea74  01 00 50 e2                                      subs r0, r0, #1
003dea78  00 30 82 e5                                      str r3, [r2]
003dea7c  1f 00 00 0a                                      beq #0x3deb00
003dea80  00 30 94 e5                                      ldr r3, [r4]
003dea84  04 20 94 e5                                      ldr r2, [r4, #4]
003dea88  02 00 53 e1                                      cmp r3, r2
003dea8c  ef ff ff 1a                                      bne #0x3dea50
003dea90  0c 30 94 e5                                      ldr r3, [r4, #0xc]
003dea94  04 20 43 e2                                      sub r2, r3, #4
003dea98  0c 20 84 e5                                      str r2, [r4, #0xc]
003dea9c  04 20 13 e5                                      ldr r2, [r3, #-4]
003deaa0  80 30 82 e2                                      add r3, r2, #0x80
003deaa4  04 20 84 e5                                      str r2, [r4, #4]
003deaa8  04 20 43 e2                                      sub r2, r3, #4
003deaac  00 30 84 e5                                      str r3, [r4]
003deab0  08 30 84 e5                                      str r3, [r4, #8]
003deab4  00 20 84 e5                                      str r2, [r4]
003deab8  00 30 95 e5                                      ldr r3, [r5]
003deabc  04 10 95 e5                                      ldr r1, [r5, #4]
003deac0  01 00 53 e1                                      cmp r3, r1
003deac4  e7 ff ff 1a                                      bne #0x3dea68
003deac8  0c 30 95 e5                                      ldr r3, [r5, #0xc]
003deacc  01 00 50 e2                                      subs r0, r0, #1
003dead0  04 10 43 e2                                      sub r1, r3, #4
003dead4  0c 10 85 e5                                      str r1, [r5, #0xc]
003dead8  04 10 13 e5                                      ldr r1, [r3, #-4]
003deadc  80 30 81 e2                                      add r3, r1, #0x80
003deae0  04 10 85 e5                                      str r1, [r5, #4]
003deae4  04 10 43 e2                                      sub r1, r3, #4
003deae8  00 30 85 e5                                      str r3, [r5]
003deaec  08 30 85 e5                                      str r3, [r5, #8]
003deaf0  00 10 85 e5                                      str r1, [r5]
003deaf4  04 30 13 e5                                      ldr r3, [r3, #-4]
003deaf8  00 30 82 e5                                      str r3, [r2]
003deafc  df ff ff 1a                                      bne #0x3dea80
003deb00  0f 00 94 e8                                      ldm r4, {r0, r1, r2, r3}
003deb04  0f 00 86 e8                                      stm r6, {r0, r1, r2, r3}
003deb08  06 00 a0 e1                                      mov r0, r6
003deb0c  10 d0 8d e2                                      add sp, sp, #0x10
003deb10  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x003deb14, declared_size=248, range_size=248, mode=arm
; class-group: std::priv::_Deque_iterator<CharProperties::BuffInst*, std::_Nonconst_traits<CharProperties::BuffInst*> > std::priv
; alias: _ZNSt4priv6__copyINS_15_Deque_iteratorIPN14CharProperties8BuffInstESt16_Nonconst_traitsIS4_EEES7_iEET0_T_S9_S8_RKSt26random_access_iterator_tagPT1_
; demangled: std::priv::_Deque_iterator<CharProperties::BuffInst*, std::_Nonconst_traits<CharProperties::BuffInst*> > std::priv::__copy<std::priv::_Deque_iterator<CharProperties::BuffInst*, std::_Nonconst_traits<CharProperties::BuffInst*> >, std::priv::_Deque_iterator<CharProperties::BuffInst*, std::_Nonconst_traits<CharProperties::BuffInst*> >, int>(std::priv::_Deque_iterator<CharProperties::BuffInst*, std::_Nonconst_traits<CharProperties::BuffInst*> >, std::priv::_Deque_iterator<CharProperties::BuffInst*, std::_Nonconst_traits<CharProperties::BuffInst*> >, std::priv::_Deque_iterator<CharProperties::BuffInst*, std::_Nonconst_traits<CharProperties::BuffInst*> >, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
003deb14  70 40 2d e9                                      push {r4, r5, r6, lr}
003deb18  10 d0 4d e2                                      sub sp, sp, #0x10
003deb1c  02 e0 a0 e1                                      mov lr, r2
003deb20  0d c0 a0 e1                                      mov ip, sp
003deb24  01 50 a0 e1                                      mov r5, r1
003deb28  00 60 a0 e1                                      mov r6, r0
003deb2c  03 40 a0 e1                                      mov r4, r3
003deb30  0f 00 91 e8                                      ldm r1, {r0, r1, r2, r3}
003deb34  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
003deb38  0e 00 a0 e1                                      mov r0, lr
003deb3c  0d 10 a0 e1                                      mov r1, sp
003deb40  4a ff ff eb                                      bl #0x3de870
003deb44  00 00 50 e3                                      cmp r0, #0
003deb48  08 00 00 ca                                      bgt #0x3deb70
003deb4c  29 00 00 ea                                      b #0x3debf8
003deb50  00 30 94 e5                                      ldr r3, [r4]
003deb54  08 20 94 e5                                      ldr r2, [r4, #8]
003deb58  04 30 83 e2                                      add r3, r3, #4
003deb5c  02 00 53 e1                                      cmp r3, r2
003deb60  00 30 84 e5                                      str r3, [r4]
003deb64  19 00 00 0a                                      beq #0x3debd0
003deb68  01 00 50 e2                                      subs r0, r0, #1
003deb6c  21 00 00 0a                                      beq #0x3debf8
003deb70  00 20 95 e5                                      ldr r2, [r5]
003deb74  00 30 94 e5                                      ldr r3, [r4]
003deb78  00 20 92 e5                                      ldr r2, [r2]
003deb7c  00 20 83 e5                                      str r2, [r3]
003deb80  00 30 95 e5                                      ldr r3, [r5]
003deb84  08 20 95 e5                                      ldr r2, [r5, #8]
003deb88  04 30 83 e2                                      add r3, r3, #4
003deb8c  02 00 53 e1                                      cmp r3, r2
003deb90  00 30 85 e5                                      str r3, [r5]
003deb94  ed ff ff 1a                                      bne #0x3deb50
003deb98  0c 30 95 e5                                      ldr r3, [r5, #0xc]
003deb9c  04 20 83 e2                                      add r2, r3, #4
003deba0  0c 20 85 e5                                      str r2, [r5, #0xc]
003deba4  04 30 93 e5                                      ldr r3, [r3, #4]
003deba8  80 20 83 e2                                      add r2, r3, #0x80
003debac  08 20 85 e5                                      str r2, [r5, #8]
003debb0  00 30 85 e5                                      str r3, [r5]
003debb4  04 30 85 e5                                      str r3, [r5, #4]
003debb8  00 30 94 e5                                      ldr r3, [r4]
003debbc  08 20 94 e5                                      ldr r2, [r4, #8]
003debc0  04 30 83 e2                                      add r3, r3, #4
003debc4  02 00 53 e1                                      cmp r3, r2
003debc8  00 30 84 e5                                      str r3, [r4]
003debcc  e5 ff ff 1a                                      bne #0x3deb68
003debd0  0c 30 94 e5                                      ldr r3, [r4, #0xc]
003debd4  01 00 50 e2                                      subs r0, r0, #1
003debd8  04 20 83 e2                                      add r2, r3, #4
003debdc  0c 20 84 e5                                      str r2, [r4, #0xc]
003debe0  04 30 93 e5                                      ldr r3, [r3, #4]
003debe4  80 20 83 e2                                      add r2, r3, #0x80
003debe8  08 20 84 e5                                      str r2, [r4, #8]
003debec  00 30 84 e5                                      str r3, [r4]
003debf0  04 30 84 e5                                      str r3, [r4, #4]
003debf4  dd ff ff 1a                                      bne #0x3deb70
003debf8  0f 00 94 e8                                      ldm r4, {r0, r1, r2, r3}
003debfc  0f 00 86 e8                                      stm r6, {r0, r1, r2, r3}
003dec00  06 00 a0 e1                                      mov r0, r6
003dec04  10 d0 8d e2                                      add sp, sp, #0x10
003dec08  70 80 bd e8                                      pop {r4, r5, r6, pc}

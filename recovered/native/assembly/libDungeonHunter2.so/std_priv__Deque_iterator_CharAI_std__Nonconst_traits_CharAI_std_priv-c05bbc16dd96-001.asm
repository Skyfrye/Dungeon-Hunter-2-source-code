; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003cb4e0, declared_size=252, range_size=252, mode=arm
; class-group: std::priv::_Deque_iterator<CharAI*, std::_Nonconst_traits<CharAI*> > std::priv
; alias: _ZNSt4priv15__copy_backwardINS_15_Deque_iteratorIP6CharAISt16_Nonconst_traitsIS3_EEES6_iEET0_T_S8_S7_RKSt26random_access_iterator_tagPT1_
; demangled: std::priv::_Deque_iterator<CharAI*, std::_Nonconst_traits<CharAI*> > std::priv::__copy_backward<std::priv::_Deque_iterator<CharAI*, std::_Nonconst_traits<CharAI*> >, std::priv::_Deque_iterator<CharAI*, std::_Nonconst_traits<CharAI*> >, int>(std::priv::_Deque_iterator<CharAI*, std::_Nonconst_traits<CharAI*> >, std::priv::_Deque_iterator<CharAI*, std::_Nonconst_traits<CharAI*> >, std::priv::_Deque_iterator<CharAI*, std::_Nonconst_traits<CharAI*> >, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
003cb4e0  70 40 2d e9                                      push {r4, r5, r6, lr}
003cb4e4  10 d0 4d e2                                      sub sp, sp, #0x10
003cb4e8  02 50 a0 e1                                      mov r5, r2
003cb4ec  0d c0 a0 e1                                      mov ip, sp
003cb4f0  00 60 a0 e1                                      mov r6, r0
003cb4f4  03 40 a0 e1                                      mov r4, r3
003cb4f8  0f 00 91 e8                                      ldm r1, {r0, r1, r2, r3}
003cb4fc  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
003cb500  0d 10 a0 e1                                      mov r1, sp
003cb504  05 00 a0 e1                                      mov r0, r5
003cb508  e3 ff ff eb                                      bl #0x3cb49c
003cb50c  00 00 50 e3                                      cmp r0, #0
003cb510  0c 00 00 ca                                      bgt #0x3cb548
003cb514  2b 00 00 ea                                      b #0x3cb5c8
003cb518  04 20 43 e2                                      sub r2, r3, #4
003cb51c  00 20 84 e5                                      str r2, [r4]
003cb520  00 30 95 e5                                      ldr r3, [r5]
003cb524  04 10 95 e5                                      ldr r1, [r5, #4]
003cb528  01 00 53 e1                                      cmp r3, r1
003cb52c  17 00 00 0a                                      beq #0x3cb590
003cb530  04 10 43 e2                                      sub r1, r3, #4
003cb534  00 10 85 e5                                      str r1, [r5]
003cb538  04 30 13 e5                                      ldr r3, [r3, #-4]
003cb53c  01 00 50 e2                                      subs r0, r0, #1
003cb540  00 30 82 e5                                      str r3, [r2]
003cb544  1f 00 00 0a                                      beq #0x3cb5c8
003cb548  00 30 94 e5                                      ldr r3, [r4]
003cb54c  04 20 94 e5                                      ldr r2, [r4, #4]
003cb550  02 00 53 e1                                      cmp r3, r2
003cb554  ef ff ff 1a                                      bne #0x3cb518
003cb558  0c 30 94 e5                                      ldr r3, [r4, #0xc]
003cb55c  04 20 43 e2                                      sub r2, r3, #4
003cb560  0c 20 84 e5                                      str r2, [r4, #0xc]
003cb564  04 20 13 e5                                      ldr r2, [r3, #-4]
003cb568  80 30 82 e2                                      add r3, r2, #0x80
003cb56c  04 20 84 e5                                      str r2, [r4, #4]
003cb570  04 20 43 e2                                      sub r2, r3, #4
003cb574  00 30 84 e5                                      str r3, [r4]
003cb578  08 30 84 e5                                      str r3, [r4, #8]
003cb57c  00 20 84 e5                                      str r2, [r4]
003cb580  00 30 95 e5                                      ldr r3, [r5]
003cb584  04 10 95 e5                                      ldr r1, [r5, #4]
003cb588  01 00 53 e1                                      cmp r3, r1
003cb58c  e7 ff ff 1a                                      bne #0x3cb530
003cb590  0c 30 95 e5                                      ldr r3, [r5, #0xc]
003cb594  01 00 50 e2                                      subs r0, r0, #1
003cb598  04 10 43 e2                                      sub r1, r3, #4
003cb59c  0c 10 85 e5                                      str r1, [r5, #0xc]
003cb5a0  04 10 13 e5                                      ldr r1, [r3, #-4]
003cb5a4  80 30 81 e2                                      add r3, r1, #0x80
003cb5a8  04 10 85 e5                                      str r1, [r5, #4]
003cb5ac  04 10 43 e2                                      sub r1, r3, #4
003cb5b0  00 30 85 e5                                      str r3, [r5]
003cb5b4  08 30 85 e5                                      str r3, [r5, #8]
003cb5b8  00 10 85 e5                                      str r1, [r5]
003cb5bc  04 30 13 e5                                      ldr r3, [r3, #-4]
003cb5c0  00 30 82 e5                                      str r3, [r2]
003cb5c4  df ff ff 1a                                      bne #0x3cb548
003cb5c8  0f 00 94 e8                                      ldm r4, {r0, r1, r2, r3}
003cb5cc  0f 00 86 e8                                      stm r6, {r0, r1, r2, r3}
003cb5d0  06 00 a0 e1                                      mov r0, r6
003cb5d4  10 d0 8d e2                                      add sp, sp, #0x10
003cb5d8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x003cb5dc, declared_size=248, range_size=248, mode=arm
; class-group: std::priv::_Deque_iterator<CharAI*, std::_Nonconst_traits<CharAI*> > std::priv
; alias: _ZNSt4priv6__copyINS_15_Deque_iteratorIP6CharAISt16_Nonconst_traitsIS3_EEES6_iEET0_T_S8_S7_RKSt26random_access_iterator_tagPT1_
; demangled: std::priv::_Deque_iterator<CharAI*, std::_Nonconst_traits<CharAI*> > std::priv::__copy<std::priv::_Deque_iterator<CharAI*, std::_Nonconst_traits<CharAI*> >, std::priv::_Deque_iterator<CharAI*, std::_Nonconst_traits<CharAI*> >, int>(std::priv::_Deque_iterator<CharAI*, std::_Nonconst_traits<CharAI*> >, std::priv::_Deque_iterator<CharAI*, std::_Nonconst_traits<CharAI*> >, std::priv::_Deque_iterator<CharAI*, std::_Nonconst_traits<CharAI*> >, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
003cb5dc  70 40 2d e9                                      push {r4, r5, r6, lr}
003cb5e0  10 d0 4d e2                                      sub sp, sp, #0x10
003cb5e4  02 e0 a0 e1                                      mov lr, r2
003cb5e8  0d c0 a0 e1                                      mov ip, sp
003cb5ec  01 50 a0 e1                                      mov r5, r1
003cb5f0  00 60 a0 e1                                      mov r6, r0
003cb5f4  03 40 a0 e1                                      mov r4, r3
003cb5f8  0f 00 91 e8                                      ldm r1, {r0, r1, r2, r3}
003cb5fc  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
003cb600  0e 00 a0 e1                                      mov r0, lr
003cb604  0d 10 a0 e1                                      mov r1, sp
003cb608  a3 ff ff eb                                      bl #0x3cb49c
003cb60c  00 00 50 e3                                      cmp r0, #0
003cb610  08 00 00 ca                                      bgt #0x3cb638
003cb614  29 00 00 ea                                      b #0x3cb6c0
003cb618  00 30 94 e5                                      ldr r3, [r4]
003cb61c  08 20 94 e5                                      ldr r2, [r4, #8]
003cb620  04 30 83 e2                                      add r3, r3, #4
003cb624  02 00 53 e1                                      cmp r3, r2
003cb628  00 30 84 e5                                      str r3, [r4]
003cb62c  19 00 00 0a                                      beq #0x3cb698
003cb630  01 00 50 e2                                      subs r0, r0, #1
003cb634  21 00 00 0a                                      beq #0x3cb6c0
003cb638  00 20 95 e5                                      ldr r2, [r5]
003cb63c  00 30 94 e5                                      ldr r3, [r4]
003cb640  00 20 92 e5                                      ldr r2, [r2]
003cb644  00 20 83 e5                                      str r2, [r3]
003cb648  00 30 95 e5                                      ldr r3, [r5]
003cb64c  08 20 95 e5                                      ldr r2, [r5, #8]
003cb650  04 30 83 e2                                      add r3, r3, #4
003cb654  02 00 53 e1                                      cmp r3, r2
003cb658  00 30 85 e5                                      str r3, [r5]
003cb65c  ed ff ff 1a                                      bne #0x3cb618
003cb660  0c 30 95 e5                                      ldr r3, [r5, #0xc]
003cb664  04 20 83 e2                                      add r2, r3, #4
003cb668  0c 20 85 e5                                      str r2, [r5, #0xc]
003cb66c  04 30 93 e5                                      ldr r3, [r3, #4]
003cb670  80 20 83 e2                                      add r2, r3, #0x80
003cb674  08 20 85 e5                                      str r2, [r5, #8]
003cb678  00 30 85 e5                                      str r3, [r5]
003cb67c  04 30 85 e5                                      str r3, [r5, #4]
003cb680  00 30 94 e5                                      ldr r3, [r4]
003cb684  08 20 94 e5                                      ldr r2, [r4, #8]
003cb688  04 30 83 e2                                      add r3, r3, #4
003cb68c  02 00 53 e1                                      cmp r3, r2
003cb690  00 30 84 e5                                      str r3, [r4]
003cb694  e5 ff ff 1a                                      bne #0x3cb630
003cb698  0c 30 94 e5                                      ldr r3, [r4, #0xc]
003cb69c  01 00 50 e2                                      subs r0, r0, #1
003cb6a0  04 20 83 e2                                      add r2, r3, #4
003cb6a4  0c 20 84 e5                                      str r2, [r4, #0xc]
003cb6a8  04 30 93 e5                                      ldr r3, [r3, #4]
003cb6ac  80 20 83 e2                                      add r2, r3, #0x80
003cb6b0  08 20 84 e5                                      str r2, [r4, #8]
003cb6b4  00 30 84 e5                                      str r3, [r4]
003cb6b8  04 30 84 e5                                      str r3, [r4, #4]
003cb6bc  dd ff ff 1a                                      bne #0x3cb638
003cb6c0  0f 00 94 e8                                      ldm r4, {r0, r1, r2, r3}
003cb6c4  0f 00 86 e8                                      stm r6, {r0, r1, r2, r3}
003cb6c8  06 00 a0 e1                                      mov r0, r6
003cb6cc  10 d0 8d e2                                      add sp, sp, #0x10
003cb6d0  70 80 bd e8                                      pop {r4, r5, r6, pc}

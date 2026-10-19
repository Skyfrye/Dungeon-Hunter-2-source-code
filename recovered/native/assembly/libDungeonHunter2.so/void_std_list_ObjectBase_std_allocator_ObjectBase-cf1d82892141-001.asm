; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00345374, declared_size=180, range_size=180, mode=arm
; class-group: void std::list<ObjectBase*, std::allocator<ObjectBase*> >
; alias: _ZNSt4listIP10ObjectBaseSaIS1_EE25_M_splice_insert_dispatchINSt4priv14_List_iteratorIS1_St13_Const_traitsIS1_EEEEEvNS6_IS1_St16_Nonconst_traitsIS1_EEET_SD_RKSt12__false_type
; demangled: void std::list<ObjectBase*, std::allocator<ObjectBase*> >::_M_splice_insert_dispatch<std::priv::_List_iterator<ObjectBase*, std::_Const_traits<ObjectBase*> > >(std::priv::_List_iterator<ObjectBase*, std::_Nonconst_traits<ObjectBase*> >, std::priv::_List_iterator<ObjectBase*, std::_Const_traits<ObjectBase*> >, std::priv::_List_iterator<ObjectBase*, std::_Const_traits<ObjectBase*> >, std::__false_type const&)
; decoder-mode: arm
00345374  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00345378  02 00 53 e1                                      cmp r3, r2
0034537c  0c d0 4d e2                                      sub sp, sp, #0xc
00345380  03 50 a0 e1                                      mov r5, r3
00345384  0d 40 a0 e1                                      mov r4, sp
00345388  01 70 a0 e1                                      mov r7, r1
0034538c  00 d0 8d e5                                      str sp, [sp]
00345390  04 d0 8d e5                                      str sp, [sp, #4]
00345394  0d 30 a0 01                                      moveq r3, sp
00345398  0d 00 00 0a                                      beq #0x3453d4
0034539c  02 60 a0 e1                                      mov r6, r2
003453a0  04 00 a0 e1                                      mov r0, r4
003453a4  6f f7 ff eb                                      bl #0x343168
003453a8  08 30 96 e5                                      ldr r3, [r6, #8]
003453ac  08 30 80 e5                                      str r3, [r0, #8]
003453b0  04 30 9d e5                                      ldr r3, [sp, #4]
003453b4  00 40 80 e5                                      str r4, [r0]
003453b8  04 30 80 e5                                      str r3, [r0, #4]
003453bc  00 00 83 e5                                      str r0, [r3]
003453c0  04 00 8d e5                                      str r0, [sp, #4]
003453c4  00 60 96 e5                                      ldr r6, [r6]
003453c8  05 00 56 e1                                      cmp r6, r5
003453cc  f3 ff ff 1a                                      bne #0x3453a0
003453d0  00 30 9d e5                                      ldr r3, [sp]
003453d4  04 00 53 e1                                      cmp r3, r4
003453d8  00 20 97 e5                                      ldr r2, [r7]
003453dc  0d 00 00 0a                                      beq #0x345418
003453e0  04 00 52 e1                                      cmp r2, r4
003453e4  0b 00 00 0a                                      beq #0x345418
003453e8  04 10 9d e5                                      ldr r1, [sp, #4]
003453ec  00 20 81 e5                                      str r2, [r1]
003453f0  04 10 93 e5                                      ldr r1, [r3, #4]
003453f4  00 40 81 e5                                      str r4, [r1]
003453f8  04 10 92 e5                                      ldr r1, [r2, #4]
003453fc  00 30 81 e5                                      str r3, [r1]
00345400  04 00 9d e5                                      ldr r0, [sp, #4]
00345404  04 10 92 e5                                      ldr r1, [r2, #4]
00345408  04 00 82 e5                                      str r0, [r2, #4]
0034540c  04 20 93 e5                                      ldr r2, [r3, #4]
00345410  04 20 8d e5                                      str r2, [sp, #4]
00345414  04 10 83 e5                                      str r1, [r3, #4]
00345418  0d 00 a0 e1                                      mov r0, sp
0034541c  92 ff ff eb                                      bl #0x34526c
00345420  0c d0 8d e2                                      add sp, sp, #0xc
00345424  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x00345428, declared_size=180, range_size=180, mode=arm
; class-group: void std::list<ObjectBase*, std::allocator<ObjectBase*> >
; alias: _ZNSt4listIP10ObjectBaseSaIS1_EE25_M_splice_insert_dispatchINSt4priv14_List_iteratorIS1_St16_Nonconst_traitsIS1_EEEEEvS9_T_SA_RKSt12__false_type
; demangled: void std::list<ObjectBase*, std::allocator<ObjectBase*> >::_M_splice_insert_dispatch<std::priv::_List_iterator<ObjectBase*, std::_Nonconst_traits<ObjectBase*> > >(std::priv::_List_iterator<ObjectBase*, std::_Nonconst_traits<ObjectBase*> >, std::priv::_List_iterator<ObjectBase*, std::_Nonconst_traits<ObjectBase*> >, std::priv::_List_iterator<ObjectBase*, std::_Nonconst_traits<ObjectBase*> >, std::__false_type const&)
; decoder-mode: arm
00345428  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0034542c  00 60 93 e5                                      ldr r6, [r3]
00345430  00 40 92 e5                                      ldr r4, [r2]
00345434  0c d0 4d e2                                      sub sp, sp, #0xc
00345438  0d 50 a0 e1                                      mov r5, sp
0034543c  06 00 54 e1                                      cmp r4, r6
00345440  01 70 a0 e1                                      mov r7, r1
00345444  00 d0 8d e5                                      str sp, [sp]
00345448  04 d0 8d e5                                      str sp, [sp, #4]
0034544c  0d 30 a0 01                                      moveq r3, sp
00345450  0c 00 00 0a                                      beq #0x345488
00345454  05 00 a0 e1                                      mov r0, r5
00345458  42 f7 ff eb                                      bl #0x343168
0034545c  08 30 94 e5                                      ldr r3, [r4, #8]
00345460  08 30 80 e5                                      str r3, [r0, #8]
00345464  04 30 9d e5                                      ldr r3, [sp, #4]
00345468  00 50 80 e5                                      str r5, [r0]
0034546c  04 30 80 e5                                      str r3, [r0, #4]
00345470  00 00 83 e5                                      str r0, [r3]
00345474  04 00 8d e5                                      str r0, [sp, #4]
00345478  00 40 94 e5                                      ldr r4, [r4]
0034547c  04 00 56 e1                                      cmp r6, r4
00345480  f3 ff ff 1a                                      bne #0x345454
00345484  00 30 9d e5                                      ldr r3, [sp]
00345488  05 00 53 e1                                      cmp r3, r5
0034548c  00 20 97 e5                                      ldr r2, [r7]
00345490  0d 00 00 0a                                      beq #0x3454cc
00345494  05 00 52 e1                                      cmp r2, r5
00345498  0b 00 00 0a                                      beq #0x3454cc
0034549c  04 10 9d e5                                      ldr r1, [sp, #4]
003454a0  00 20 81 e5                                      str r2, [r1]
003454a4  04 10 93 e5                                      ldr r1, [r3, #4]
003454a8  00 50 81 e5                                      str r5, [r1]
003454ac  04 10 92 e5                                      ldr r1, [r2, #4]
003454b0  00 30 81 e5                                      str r3, [r1]
003454b4  04 00 9d e5                                      ldr r0, [sp, #4]
003454b8  04 10 92 e5                                      ldr r1, [r2, #4]
003454bc  04 00 82 e5                                      str r0, [r2, #4]
003454c0  04 20 93 e5                                      ldr r2, [r3, #4]
003454c4  04 20 8d e5                                      str r2, [sp, #4]
003454c8  04 10 83 e5                                      str r1, [r3, #4]
003454cc  0d 00 a0 e1                                      mov r0, sp
003454d0  65 ff ff eb                                      bl #0x34526c
003454d4  0c d0 8d e2                                      add sp, sp, #0xc
003454d8  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

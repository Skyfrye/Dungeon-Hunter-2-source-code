; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00494c08, declared_size=180, range_size=180, mode=arm
; class-group: void std::list<AnimatedFX*, std::allocator<AnimatedFX*> >
; alias: _ZNSt4listIP10AnimatedFXSaIS1_EE25_M_splice_insert_dispatchINSt4priv14_List_iteratorIS1_St13_Const_traitsIS1_EEEEEvNS6_IS1_St16_Nonconst_traitsIS1_EEET_SD_RKSt12__false_type
; demangled: void std::list<AnimatedFX*, std::allocator<AnimatedFX*> >::_M_splice_insert_dispatch<std::priv::_List_iterator<AnimatedFX*, std::_Const_traits<AnimatedFX*> > >(std::priv::_List_iterator<AnimatedFX*, std::_Nonconst_traits<AnimatedFX*> >, std::priv::_List_iterator<AnimatedFX*, std::_Const_traits<AnimatedFX*> >, std::priv::_List_iterator<AnimatedFX*, std::_Const_traits<AnimatedFX*> >, std::__false_type const&)
; decoder-mode: arm
00494c08  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00494c0c  02 00 53 e1                                      cmp r3, r2
00494c10  0c d0 4d e2                                      sub sp, sp, #0xc
00494c14  03 50 a0 e1                                      mov r5, r3
00494c18  0d 40 a0 e1                                      mov r4, sp
00494c1c  01 70 a0 e1                                      mov r7, r1
00494c20  00 d0 8d e5                                      str sp, [sp]
00494c24  04 d0 8d e5                                      str sp, [sp, #4]
00494c28  0d 30 a0 01                                      moveq r3, sp
00494c2c  0d 00 00 0a                                      beq #0x494c68
00494c30  02 60 a0 e1                                      mov r6, r2
00494c34  04 00 a0 e1                                      mov r0, r4
00494c38  9d ff ff eb                                      bl #0x494ab4
00494c3c  08 30 96 e5                                      ldr r3, [r6, #8]
00494c40  08 30 80 e5                                      str r3, [r0, #8]
00494c44  04 30 9d e5                                      ldr r3, [sp, #4]
00494c48  00 40 80 e5                                      str r4, [r0]
00494c4c  04 30 80 e5                                      str r3, [r0, #4]
00494c50  00 00 83 e5                                      str r0, [r3]
00494c54  04 00 8d e5                                      str r0, [sp, #4]
00494c58  00 60 96 e5                                      ldr r6, [r6]
00494c5c  05 00 56 e1                                      cmp r6, r5
00494c60  f3 ff ff 1a                                      bne #0x494c34
00494c64  00 30 9d e5                                      ldr r3, [sp]
00494c68  04 00 53 e1                                      cmp r3, r4
00494c6c  00 20 97 e5                                      ldr r2, [r7]
00494c70  0d 00 00 0a                                      beq #0x494cac
00494c74  04 00 52 e1                                      cmp r2, r4
00494c78  0b 00 00 0a                                      beq #0x494cac
00494c7c  04 10 9d e5                                      ldr r1, [sp, #4]
00494c80  00 20 81 e5                                      str r2, [r1]
00494c84  04 10 93 e5                                      ldr r1, [r3, #4]
00494c88  00 40 81 e5                                      str r4, [r1]
00494c8c  04 10 92 e5                                      ldr r1, [r2, #4]
00494c90  00 30 81 e5                                      str r3, [r1]
00494c94  04 00 9d e5                                      ldr r0, [sp, #4]
00494c98  04 10 92 e5                                      ldr r1, [r2, #4]
00494c9c  04 00 82 e5                                      str r0, [r2, #4]
00494ca0  04 20 93 e5                                      ldr r2, [r3, #4]
00494ca4  04 20 8d e5                                      str r2, [sp, #4]
00494ca8  04 10 83 e5                                      str r1, [r3, #4]
00494cac  0d 00 a0 e1                                      mov r0, sp
00494cb0  d3 fb ff eb                                      bl #0x493c04
00494cb4  0c d0 8d e2                                      add sp, sp, #0xc
00494cb8  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

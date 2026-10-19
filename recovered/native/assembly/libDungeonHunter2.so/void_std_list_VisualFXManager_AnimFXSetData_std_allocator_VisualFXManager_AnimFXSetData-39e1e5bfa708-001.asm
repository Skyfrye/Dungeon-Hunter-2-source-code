; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00493c44, declared_size=212, range_size=212, mode=arm
; class-group: void std::list<VisualFXManager::AnimFXSetData*, std::allocator<VisualFXManager::AnimFXSetData*> >
; alias: _ZNSt4listIPN15VisualFXManager13AnimFXSetDataESaIS2_EE25_M_splice_insert_dispatchINSt4priv14_List_iteratorIS2_St13_Const_traitsIS2_EEEEEvNS7_IS2_St16_Nonconst_traitsIS2_EEET_SE_RKSt12__false_type
; demangled: void std::list<VisualFXManager::AnimFXSetData*, std::allocator<VisualFXManager::AnimFXSetData*> >::_M_splice_insert_dispatch<std::priv::_List_iterator<VisualFXManager::AnimFXSetData*, std::_Const_traits<VisualFXManager::AnimFXSetData*> > >(std::priv::_List_iterator<VisualFXManager::AnimFXSetData*, std::_Nonconst_traits<VisualFXManager::AnimFXSetData*> >, std::priv::_List_iterator<VisualFXManager::AnimFXSetData*, std::_Const_traits<VisualFXManager::AnimFXSetData*> >, std::priv::_List_iterator<VisualFXManager::AnimFXSetData*, std::_Const_traits<VisualFXManager::AnimFXSetData*> >, std::__false_type const&)
; decoder-mode: arm
00493c44  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00493c48  02 00 53 e1                                      cmp r3, r2
00493c4c  0c d0 4d e2                                      sub sp, sp, #0xc
00493c50  03 50 a0 e1                                      mov r5, r3
00493c54  0d 40 a0 e1                                      mov r4, sp
00493c58  01 70 a0 e1                                      mov r7, r1
00493c5c  00 d0 8d e5                                      str sp, [sp]
00493c60  04 d0 8d e5                                      str sp, [sp, #4]
00493c64  0d 00 a0 01                                      moveq r0, sp
00493c68  0d 00 00 0a                                      beq #0x493ca4
00493c6c  02 60 a0 e1                                      mov r6, r2
00493c70  04 00 a0 e1                                      mov r0, r4
00493c74  e6 fe ff eb                                      bl #0x493814
00493c78  08 30 96 e5                                      ldr r3, [r6, #8]
00493c7c  08 30 80 e5                                      str r3, [r0, #8]
00493c80  04 30 9d e5                                      ldr r3, [sp, #4]
00493c84  00 40 80 e5                                      str r4, [r0]
00493c88  04 30 80 e5                                      str r3, [r0, #4]
00493c8c  00 00 83 e5                                      str r0, [r3]
00493c90  04 00 8d e5                                      str r0, [sp, #4]
00493c94  00 60 96 e5                                      ldr r6, [r6]
00493c98  05 00 56 e1                                      cmp r6, r5
00493c9c  f3 ff ff 1a                                      bne #0x493c70
00493ca0  00 00 9d e5                                      ldr r0, [sp]
00493ca4  04 00 50 e1                                      cmp r0, r4
00493ca8  00 30 97 e5                                      ldr r3, [r7]
00493cac  17 00 00 0a                                      beq #0x493d10
00493cb0  04 00 53 e1                                      cmp r3, r4
00493cb4  10 00 00 0a                                      beq #0x493cfc
00493cb8  04 20 9d e5                                      ldr r2, [sp, #4]
00493cbc  00 30 82 e5                                      str r3, [r2]
00493cc0  04 20 90 e5                                      ldr r2, [r0, #4]
00493cc4  00 40 82 e5                                      str r4, [r2]
00493cc8  04 20 93 e5                                      ldr r2, [r3, #4]
00493ccc  00 00 82 e5                                      str r0, [r2]
00493cd0  04 10 9d e5                                      ldr r1, [sp, #4]
00493cd4  04 20 93 e5                                      ldr r2, [r3, #4]
00493cd8  04 10 83 e5                                      str r1, [r3, #4]
00493cdc  04 30 90 e5                                      ldr r3, [r0, #4]
00493ce0  04 30 8d e5                                      str r3, [sp, #4]
00493ce4  04 20 80 e5                                      str r2, [r0, #4]
00493ce8  00 00 9d e5                                      ldr r0, [sp]
00493cec  04 00 50 e1                                      cmp r0, r4
00493cf0  01 00 00 1a                                      bne #0x493cfc
00493cf4  05 00 00 ea                                      b #0x493d10
00493cf8  05 00 a0 e1                                      mov r0, r5
00493cfc  00 50 90 e5                                      ldr r5, [r0]
00493d00  0c 10 a0 e3                                      mov r1, #0xc
00493d04  7d d4 09 eb                                      bl #0x708f00
00493d08  04 00 55 e1                                      cmp r5, r4
00493d0c  f9 ff ff 1a                                      bne #0x493cf8
00493d10  0c d0 8d e2                                      add sp, sp, #0xc
00493d14  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

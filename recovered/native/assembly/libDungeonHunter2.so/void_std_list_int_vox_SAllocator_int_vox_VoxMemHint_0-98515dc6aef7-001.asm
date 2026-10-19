; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00889d2c, declared_size=212, range_size=212, mode=arm
; class-group: void std::list<int, vox::SAllocator<int, (vox::VoxMemHint)0> >
; alias: _ZNSt4listIiN3vox10SAllocatorIiLNS0_10VoxMemHintE0EEEE25_M_splice_insert_dispatchINSt4priv14_List_iteratorIiSt13_Const_traitsIiEEEEEvNS7_IiSt16_Nonconst_traitsIiEEET_SE_RKSt12__false_type
; demangled: void std::list<int, vox::SAllocator<int, (vox::VoxMemHint)0> >::_M_splice_insert_dispatch<std::priv::_List_iterator<int, std::_Const_traits<int> > >(std::priv::_List_iterator<int, std::_Nonconst_traits<int> >, std::priv::_List_iterator<int, std::_Const_traits<int> >, std::priv::_List_iterator<int, std::_Const_traits<int> >, std::__false_type const&)
; decoder-mode: arm
00889d2c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00889d30  02 00 53 e1                                      cmp r3, r2
00889d34  0c d0 4d e2                                      sub sp, sp, #0xc
00889d38  03 60 a0 e1                                      mov r6, r3
00889d3c  0d 50 a0 e1                                      mov r5, sp
00889d40  01 70 a0 e1                                      mov r7, r1
00889d44  00 d0 8d e5                                      str sp, [sp]
00889d48  04 d0 8d e5                                      str sp, [sp, #4]
00889d4c  0d 00 a0 01                                      moveq r0, sp
00889d50  0e 00 00 0a                                      beq #0x889d90
00889d54  02 40 a0 e1                                      mov r4, r2
00889d58  0c 00 a0 e3                                      mov r0, #0xc
00889d5c  00 10 a0 e3                                      mov r1, #0
00889d60  38 1a ea eb                                      bl #0x310648
00889d64  08 30 94 e5                                      ldr r3, [r4, #8]
00889d68  08 30 80 e5                                      str r3, [r0, #8]
00889d6c  04 30 9d e5                                      ldr r3, [sp, #4]
00889d70  00 50 80 e5                                      str r5, [r0]
00889d74  04 30 80 e5                                      str r3, [r0, #4]
00889d78  00 00 83 e5                                      str r0, [r3]
00889d7c  04 00 8d e5                                      str r0, [sp, #4]
00889d80  00 40 94 e5                                      ldr r4, [r4]
00889d84  06 00 54 e1                                      cmp r4, r6
00889d88  f2 ff ff 1a                                      bne #0x889d58
00889d8c  00 00 9d e5                                      ldr r0, [sp]
00889d90  05 00 50 e1                                      cmp r0, r5
00889d94  00 30 97 e5                                      ldr r3, [r7]
00889d98  16 00 00 0a                                      beq #0x889df8
00889d9c  05 00 53 e1                                      cmp r3, r5
00889da0  10 00 00 0a                                      beq #0x889de8
00889da4  04 20 9d e5                                      ldr r2, [sp, #4]
00889da8  00 30 82 e5                                      str r3, [r2]
00889dac  04 20 90 e5                                      ldr r2, [r0, #4]
00889db0  00 50 82 e5                                      str r5, [r2]
00889db4  04 20 93 e5                                      ldr r2, [r3, #4]
00889db8  00 00 82 e5                                      str r0, [r2]
00889dbc  04 10 9d e5                                      ldr r1, [sp, #4]
00889dc0  04 20 93 e5                                      ldr r2, [r3, #4]
00889dc4  04 10 83 e5                                      str r1, [r3, #4]
00889dc8  04 30 90 e5                                      ldr r3, [r0, #4]
00889dcc  04 30 8d e5                                      str r3, [sp, #4]
00889dd0  04 20 80 e5                                      str r2, [r0, #4]
00889dd4  00 00 9d e5                                      ldr r0, [sp]
00889dd8  05 00 50 e1                                      cmp r0, r5
00889ddc  01 00 00 1a                                      bne #0x889de8
00889de0  04 00 00 ea                                      b #0x889df8
00889de4  04 00 a0 e1                                      mov r0, r4
00889de8  00 40 90 e5                                      ldr r4, [r0]
00889dec  94 19 ea eb                                      bl #0x310444
00889df0  05 00 54 e1                                      cmp r4, r5
00889df4  fa ff ff 1a                                      bne #0x889de4
00889df8  0c d0 8d e2                                      add sp, sp, #0xc
00889dfc  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

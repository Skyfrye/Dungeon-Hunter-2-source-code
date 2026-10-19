; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005a2dd4, declared_size=76, range_size=76, mode=arm
; class-group: boost::object_pool<glitch::core::CKdTree<std::pair<unsigned int, glitch::core::aabbox3d<float> > >::SKdNode, boost::default_user_allocator_new_delete>
; alias: _ZN5boost11object_poolIN6glitch4core7CKdTreeISt4pairIjNS2_8aabbox3dIfEEEE7SKdNodeENS_33default_user_allocator_new_deleteEE9constructEv
; demangled: boost::object_pool<glitch::core::CKdTree<std::pair<unsigned int, glitch::core::aabbox3d<float> > >::SKdNode, boost::default_user_allocator_new_delete>::construct()
; decoder-mode: arm
005a2dd4  10 40 2d e9                                      push {r4, lr}
005a2dd8  00 30 90 e5                                      ldr r3, [r0]
005a2ddc  00 00 53 e3                                      cmp r3, #0
005a2de0  0b 00 00 0a                                      beq #0x5a2e14
005a2de4  00 10 93 e5                                      ldr r1, [r3]
005a2de8  00 10 80 e5                                      str r1, [r0]
005a2dec  00 00 53 e3                                      cmp r3, #0
005a2df0  05 00 00 0a                                      beq #0x5a2e0c
005a2df4  00 20 a0 e3                                      mov r2, #0
005a2df8  14 20 83 e5                                      str r2, [r3, #0x14]
005a2dfc  00 20 83 e5                                      str r2, [r3]
005a2e00  04 20 83 e5                                      str r2, [r3, #4]
005a2e04  08 20 83 e5                                      str r2, [r3, #8]
005a2e08  10 20 83 e5                                      str r2, [r3, #0x10]
005a2e0c  03 00 a0 e1                                      mov r0, r3
005a2e10  10 80 bd e8                                      pop {r4, pc}
005a2e14  84 ff ff eb                                      bl #0x5a2c2c
005a2e18  00 30 a0 e1                                      mov r3, r0
005a2e1c  f2 ff ff ea                                      b #0x5a2dec

; FUNCTION 0x005a3904, declared_size=228, range_size=228, mode=arm
; class-group: boost::object_pool<glitch::core::CKdTree<std::pair<unsigned int, glitch::core::aabbox3d<float> > >::SKdNode, boost::default_user_allocator_new_delete>
; alias: _ZN5boost11object_poolIN6glitch4core7CKdTreeISt4pairIjNS2_8aabbox3dIfEEEE7SKdNodeENS_33default_user_allocator_new_deleteEED1Ev
; demangled: boost::object_pool<glitch::core::CKdTree<std::pair<unsigned int, glitch::core::aabbox3d<float> > >::SKdNode, boost::default_user_allocator_new_delete>::~object_pool()
; decoder-mode: arm
005a3904  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005a3908  04 50 90 e5                                      ldr r5, [r0, #4]
005a390c  0c d0 4d e2                                      sub sp, sp, #0xc
005a3910  00 70 a0 e1                                      mov r7, r0
005a3914  00 00 55 e3                                      cmp r5, #0
005a3918  2f 00 00 0a                                      beq #0x5a39dc
005a391c  0c 80 90 e5                                      ldr r8, [r0, #0xc]
005a3920  08 a0 90 e5                                      ldr sl, [r0, #8]
005a3924  00 40 90 e5                                      ldr r4, [r0]
005a3928  04 60 a0 e3                                      mov r6, #4
005a392c  08 00 a0 e1                                      mov r0, r8
005a3930  06 10 a0 e1                                      mov r1, r6
005a3934  7c ac f5 eb                                      bl #0x30eb2c
005a3938  06 30 a0 e1                                      mov r3, r6
005a393c  00 60 51 e2                                      subs r6, r1, #0
005a3940  03 00 a0 e1                                      mov r0, r3
005a3944  f9 ff ff 1a                                      bne #0x5a3930
005a3948  08 00 a0 e1                                      mov r0, r8
005a394c  03 10 a0 e1                                      mov r1, r3
005a3950  bd ac f5 eb                                      bl #0x30ec4c
005a3954  0a 30 a0 e1                                      mov r3, sl
005a3958  00 81 a0 e1                                      lsl r8, r0, #2
005a395c  05 20 a0 e1                                      mov r2, r5
005a3960  04 30 43 e2                                      sub r3, r3, #4
005a3964  03 10 82 e0                                      add r1, r2, r3
005a3968  03 30 92 e7                                      ldr r3, [r2, r3]
005a396c  04 b0 41 e2                                      sub fp, r1, #4
005a3970  05 00 5b e1                                      cmp fp, r5
005a3974  04 30 8d e5                                      str r3, [sp, #4]
005a3978  04 a0 11 e5                                      ldr sl, [r1, #-4]
005a397c  0d 00 00 0a                                      beq #0x5a39b8
005a3980  08 90 85 e0                                      add sb, r5, r8
005a3984  05 60 a0 e1                                      mov r6, r5
005a3988  04 00 56 e1                                      cmp r6, r4
005a398c  00 40 96 05                                      ldreq r4, [r6]
005a3990  03 00 00 0a                                      beq #0x5a39a4
005a3994  00 00 96 e5                                      ldr r0, [r6]
005a3998  00 00 50 e3                                      cmp r0, #0
005a399c  00 00 00 0a                                      beq #0x5a39a4
005a39a0  aa b2 f5 eb                                      bl #0x310450
005a39a4  08 90 89 e0                                      add sb, sb, r8
005a39a8  09 30 68 e0                                      rsb r3, r8, sb
005a39ac  03 00 5b e1                                      cmp fp, r3
005a39b0  08 60 86 e0                                      add r6, r6, r8
005a39b4  f3 ff ff 1a                                      bne #0x5a3988
005a39b8  00 00 55 e3                                      cmp r5, #0
005a39bc  01 00 00 0a                                      beq #0x5a39c8
005a39c0  05 00 a0 e1                                      mov r0, r5
005a39c4  bb a9 f5 eb                                      bl #0x30e0b8
005a39c8  00 20 5a e2                                      subs r2, sl, #0
005a39cc  04 30 9d e5                                      ldr r3, [sp, #4]
005a39d0  02 50 a0 11                                      movne r5, r2
005a39d4  e1 ff ff 1a                                      bne #0x5a3960
005a39d8  04 a0 87 e5                                      str sl, [r7, #4]
005a39dc  07 00 a0 e1                                      mov r0, r7
005a39e0  0c d0 8d e2                                      add sp, sp, #0xc
005a39e4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0088a11c, declared_size=52, range_size=52, mode=arm
; class-group: std::priv::_Rb_tree<char*, vox::c8stringcomp, std::pair<char* const, int>, std::priv::_Select1st<std::pair<char* const, int> >, std::priv::_MapTraitsT<std::pair<char* const, int> >, vox::SAllocator<std::pair<char const*, int>, (vox::VoxMemHint)0> >
; alias: _ZNSt4priv8_Rb_treeIPcN3vox12c8stringcompESt4pairIKS1_iENS_10_Select1stIS6_EENS_11_MapTraitsTIS6_EENS2_10SAllocatorIS4_IPKciELNS2_10VoxMemHintE0EEEE8_M_eraseEPNS_18_Rb_tree_node_baseE
; demangled: std::priv::_Rb_tree<char*, vox::c8stringcomp, std::pair<char* const, int>, std::priv::_Select1st<std::pair<char* const, int> >, std::priv::_MapTraitsT<std::pair<char* const, int> >, vox::SAllocator<std::pair<char const*, int>, (vox::VoxMemHint)0> >::_M_erase(std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
0088a11c  70 40 2d e9                                      push {r4, r5, r6, lr}
0088a120  00 40 51 e2                                      subs r4, r1, #0
0088a124  00 50 a0 e1                                      mov r5, r0
0088a128  07 00 00 0a                                      beq #0x88a14c
0088a12c  0c 10 94 e5                                      ldr r1, [r4, #0xc]
0088a130  05 00 a0 e1                                      mov r0, r5
0088a134  f8 ff ff eb                                      bl #0x88a11c
0088a138  08 60 94 e5                                      ldr r6, [r4, #8]
0088a13c  04 00 a0 e1                                      mov r0, r4
0088a140  bf 18 ea eb                                      bl #0x310444
0088a144  00 40 56 e2                                      subs r4, r6, #0
0088a148  f7 ff ff 1a                                      bne #0x88a12c
0088a14c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0088a69c, declared_size=312, range_size=312, mode=arm
; class-group: std::priv::_Rb_tree<char*, vox::c8stringcomp, std::pair<char* const, int>, std::priv::_Select1st<std::pair<char* const, int> >, std::priv::_MapTraitsT<std::pair<char* const, int> >, vox::SAllocator<std::pair<char const*, int>, (vox::VoxMemHint)0> >
; alias: _ZNSt4priv8_Rb_treeIPcN3vox12c8stringcompESt4pairIKS1_iENS_10_Select1stIS6_EENS_11_MapTraitsTIS6_EENS2_10SAllocatorIS4_IPKciELNS2_10VoxMemHintE0EEEE9_M_insertEPNS_18_Rb_tree_node_baseERKS6_SJ_SJ_
; demangled: std::priv::_Rb_tree<char*, vox::c8stringcomp, std::pair<char* const, int>, std::priv::_Select1st<std::pair<char* const, int> >, std::priv::_MapTraitsT<std::pair<char* const, int> >, vox::SAllocator<std::pair<char const*, int>, (vox::VoxMemHint)0> >::_M_insert(std::priv::_Rb_tree_node_base*, std::pair<char* const, int> const&, std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
0088a69c  02 00 51 e1                                      cmp r1, r2
0088a6a0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0088a6a4  01 40 a0 e1                                      mov r4, r1
0088a6a8  02 50 a0 e1                                      mov r5, r2
0088a6ac  00 60 a0 e1                                      mov r6, r0
0088a6b0  03 70 a0 e1                                      mov r7, r3
0088a6b4  30 00 00 0a                                      beq #0x88a77c
0088a6b8  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
0088a6bc  00 00 53 e3                                      cmp r3, #0
0088a6c0  18 00 00 0a                                      beq #0x88a728
0088a6c4  18 00 a0 e3                                      mov r0, #0x18
0088a6c8  00 10 a0 e3                                      mov r1, #0
0088a6cc  dd 17 ea eb                                      bl #0x310648
0088a6d0  00 20 97 e5                                      ldr r2, [r7]
0088a6d4  00 30 a0 e3                                      mov r3, #0
0088a6d8  00 80 a0 e1                                      mov r8, r0
0088a6dc  10 20 80 e5                                      str r2, [r0, #0x10]
0088a6e0  04 20 97 e5                                      ldr r2, [r7, #4]
0088a6e4  0c 30 80 e5                                      str r3, [r0, #0xc]
0088a6e8  08 30 80 e5                                      str r3, [r0, #8]
0088a6ec  14 20 80 e5                                      str r2, [r0, #0x14]
0088a6f0  0c 00 85 e5                                      str r0, [r5, #0xc]
0088a6f4  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0088a6f8  03 00 55 e1                                      cmp r5, r3
0088a6fc  1c 00 00 0a                                      beq #0x88a774
0088a700  08 00 a0 e1                                      mov r0, r8
0088a704  04 50 88 e5                                      str r5, [r8, #4]
0088a708  04 10 84 e2                                      add r1, r4, #4
0088a70c  13 24 ea eb                                      bl #0x313760
0088a710  10 30 94 e5                                      ldr r3, [r4, #0x10]
0088a714  06 00 a0 e1                                      mov r0, r6
0088a718  01 30 83 e2                                      add r3, r3, #1
0088a71c  10 30 84 e5                                      str r3, [r4, #0x10]
0088a720  00 80 86 e5                                      str r8, [r6]
0088a724  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0088a728  18 30 9d e5                                      ldr r3, [sp, #0x18]
0088a72c  00 00 53 e3                                      cmp r3, #0
0088a730  20 00 00 0a                                      beq #0x88a7b8
0088a734  18 00 a0 e3                                      mov r0, #0x18
0088a738  00 10 a0 e3                                      mov r1, #0
0088a73c  c1 17 ea eb                                      bl #0x310648
0088a740  00 20 97 e5                                      ldr r2, [r7]
0088a744  00 30 a0 e3                                      mov r3, #0
0088a748  00 80 a0 e1                                      mov r8, r0
0088a74c  10 20 80 e5                                      str r2, [r0, #0x10]
0088a750  04 20 97 e5                                      ldr r2, [r7, #4]
0088a754  0c 30 80 e5                                      str r3, [r0, #0xc]
0088a758  08 30 80 e5                                      str r3, [r0, #8]
0088a75c  14 20 80 e5                                      str r2, [r0, #0x14]
0088a760  08 00 85 e5                                      str r0, [r5, #8]
0088a764  08 30 94 e5                                      ldr r3, [r4, #8]
0088a768  03 00 55 e1                                      cmp r5, r3
0088a76c  08 00 84 05                                      streq r0, [r4, #8]
0088a770  e2 ff ff ea                                      b #0x88a700
0088a774  0c 80 84 e5                                      str r8, [r4, #0xc]
0088a778  e0 ff ff ea                                      b #0x88a700
0088a77c  18 00 a0 e3                                      mov r0, #0x18
0088a780  00 10 a0 e3                                      mov r1, #0
0088a784  af 17 ea eb                                      bl #0x310648
0088a788  00 20 97 e5                                      ldr r2, [r7]
0088a78c  00 30 a0 e3                                      mov r3, #0
0088a790  00 80 a0 e1                                      mov r8, r0
0088a794  10 20 80 e5                                      str r2, [r0, #0x10]
0088a798  04 20 97 e5                                      ldr r2, [r7, #4]
0088a79c  0c 30 80 e5                                      str r3, [r0, #0xc]
0088a7a0  08 30 80 e5                                      str r3, [r0, #8]
0088a7a4  14 20 80 e5                                      str r2, [r0, #0x14]
0088a7a8  08 00 84 e5                                      str r0, [r4, #8]
0088a7ac  04 00 84 e5                                      str r0, [r4, #4]
0088a7b0  0c 00 84 e5                                      str r0, [r4, #0xc]
0088a7b4  d1 ff ff ea                                      b #0x88a700
0088a7b8  14 00 81 e2                                      add r0, r1, #0x14
0088a7bc  10 20 92 e5                                      ldr r2, [r2, #0x10]
0088a7c0  00 10 97 e5                                      ldr r1, [r7]
0088a7c4  41 ff ff eb                                      bl #0x88a4d0
0088a7c8  00 00 50 e3                                      cmp r0, #0
0088a7cc  bc ff ff 0a                                      beq #0x88a6c4
0088a7d0  d7 ff ff ea                                      b #0x88a734

; FUNCTION 0x0088a7d4, declared_size=428, range_size=428, mode=arm
; class-group: std::priv::_Rb_tree<char*, vox::c8stringcomp, std::pair<char* const, int>, std::priv::_Select1st<std::pair<char* const, int> >, std::priv::_MapTraitsT<std::pair<char* const, int> >, vox::SAllocator<std::pair<char const*, int>, (vox::VoxMemHint)0> >
; alias: _ZNSt4priv8_Rb_treeIPcN3vox12c8stringcompESt4pairIKS1_iENS_10_Select1stIS6_EENS_11_MapTraitsTIS6_EENS2_10SAllocatorIS4_IPKciELNS2_10VoxMemHintE0EEEE13insert_uniqueERKS6_
; demangled: std::priv::_Rb_tree<char*, vox::c8stringcomp, std::pair<char* const, int>, std::priv::_Select1st<std::pair<char* const, int> >, std::priv::_MapTraitsT<std::pair<char* const, int> >, vox::SAllocator<std::pair<char const*, int>, (vox::VoxMemHint)0> >::insert_unique(std::pair<char* const, int> const&)
; decoder-mode: arm
0088a7d4  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0088a7d8  04 50 91 e5                                      ldr r5, [r1, #4]
0088a7dc  14 d0 4d e2                                      sub sp, sp, #0x14
0088a7e0  01 80 a0 e1                                      mov r8, r1
0088a7e4  00 00 55 e3                                      cmp r5, #0
0088a7e8  00 40 a0 e1                                      mov r4, r0
0088a7ec  02 70 a0 e1                                      mov r7, r2
0088a7f0  01 50 a0 01                                      moveq r5, r1
0088a7f4  1a 00 00 0a                                      beq #0x88a864
0088a7f8  14 60 81 e2                                      add r6, r1, #0x14
0088a7fc  00 00 00 ea                                      b #0x88a804
0088a800  02 50 a0 e1                                      mov r5, r2
0088a804  10 20 95 e5                                      ldr r2, [r5, #0x10]
0088a808  06 00 a0 e1                                      mov r0, r6
0088a80c  00 10 97 e5                                      ldr r1, [r7]
0088a810  2e ff ff eb                                      bl #0x88a4d0
0088a814  00 00 50 e3                                      cmp r0, #0
0088a818  08 20 95 15                                      ldrne r2, [r5, #8]
0088a81c  0c 20 95 05                                      ldreq r2, [r5, #0xc]
0088a820  05 30 a0 e1                                      mov r3, r5
0088a824  00 00 52 e3                                      cmp r2, #0
0088a828  f4 ff ff 1a                                      bne #0x88a800
0088a82c  00 00 50 e3                                      cmp r0, #0
0088a830  05 a0 a0 01                                      moveq sl, r5
0088a834  0a 00 00 1a                                      bne #0x88a864
0088a838  06 00 a0 e1                                      mov r0, r6
0088a83c  10 10 93 e5                                      ldr r1, [r3, #0x10]
0088a840  00 20 97 e5                                      ldr r2, [r7]
0088a844  21 ff ff eb                                      bl #0x88a4d0
0088a848  00 00 50 e3                                      cmp r0, #0
0088a84c  00 a0 84 05                                      streq sl, [r4]
0088a850  04 00 c4 05                                      strbeq r0, [r4, #4]
0088a854  1e 00 00 1a                                      bne #0x88a8d4
0088a858  04 00 a0 e1                                      mov r0, r4
0088a85c  14 d0 8d e2                                      add sp, sp, #0x14
0088a860  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0088a864  08 30 98 e5                                      ldr r3, [r8, #8]
0088a868  03 00 55 e1                                      cmp r5, r3
0088a86c  37 00 00 0a                                      beq #0x88a950
0088a870  00 30 d5 e5                                      ldrb r3, [r5]
0088a874  00 00 53 e3                                      cmp r3, #0
0088a878  03 00 00 1a                                      bne #0x88a88c
0088a87c  04 30 95 e5                                      ldr r3, [r5, #4]
0088a880  04 30 93 e5                                      ldr r3, [r3, #4]
0088a884  03 00 55 e1                                      cmp r5, r3
0088a888  2c 00 00 0a                                      beq #0x88a940
0088a88c  08 30 95 e5                                      ldr r3, [r5, #8]
0088a890  00 00 53 e3                                      cmp r3, #0
0088a894  01 00 00 1a                                      bne #0x88a8a0
0088a898  1a 00 00 ea                                      b #0x88a908
0088a89c  02 30 a0 e1                                      mov r3, r2
0088a8a0  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0088a8a4  00 00 52 e3                                      cmp r2, #0
0088a8a8  fb ff ff 1a                                      bne #0x88a89c
0088a8ac  14 60 88 e2                                      add r6, r8, #0x14
0088a8b0  06 00 a0 e1                                      mov r0, r6
0088a8b4  10 10 93 e5                                      ldr r1, [r3, #0x10]
0088a8b8  00 20 97 e5                                      ldr r2, [r7]
0088a8bc  03 a0 a0 e1                                      mov sl, r3
0088a8c0  02 ff ff eb                                      bl #0x88a4d0
0088a8c4  00 00 50 e3                                      cmp r0, #0
0088a8c8  00 a0 84 05                                      streq sl, [r4]
0088a8cc  04 00 c4 05                                      strbeq r0, [r4, #4]
0088a8d0  e0 ff ff 0a                                      beq #0x88a858
0088a8d4  00 c0 a0 e3                                      mov ip, #0
0088a8d8  05 20 a0 e1                                      mov r2, r5
0088a8dc  07 30 a0 e1                                      mov r3, r7
0088a8e0  08 10 a0 e1                                      mov r1, r8
0088a8e4  08 00 8d e2                                      add r0, sp, #8
0088a8e8  04 c0 8d e5                                      str ip, [sp, #4]
0088a8ec  00 c0 8d e5                                      str ip, [sp]
0088a8f0  69 ff ff eb                                      bl #0x88a69c
0088a8f4  08 30 9d e5                                      ldr r3, [sp, #8]
0088a8f8  01 20 a0 e3                                      mov r2, #1
0088a8fc  04 20 c4 e5                                      strb r2, [r4, #4]
0088a900  00 30 84 e5                                      str r3, [r4]
0088a904  d3 ff ff ea                                      b #0x88a858
0088a908  04 20 95 e5                                      ldr r2, [r5, #4]
0088a90c  08 30 92 e5                                      ldr r3, [r2, #8]
0088a910  03 00 55 e1                                      cmp r5, r3
0088a914  02 30 a0 11                                      movne r3, r2
0088a918  03 a0 a0 11                                      movne sl, r3
0088a91c  14 60 88 12                                      addne r6, r8, #0x14
0088a920  01 00 00 0a                                      beq #0x88a92c
0088a924  c3 ff ff ea                                      b #0x88a838
0088a928  03 20 a0 e1                                      mov r2, r3
0088a92c  04 30 92 e5                                      ldr r3, [r2, #4]
0088a930  08 10 93 e5                                      ldr r1, [r3, #8]
0088a934  02 00 51 e1                                      cmp r1, r2
0088a938  fa ff ff 0a                                      beq #0x88a928
0088a93c  da ff ff ea                                      b #0x88a8ac
0088a940  0c 30 95 e5                                      ldr r3, [r5, #0xc]
0088a944  14 60 88 e2                                      add r6, r8, #0x14
0088a948  03 a0 a0 e1                                      mov sl, r3
0088a94c  b9 ff ff ea                                      b #0x88a838
0088a950  05 20 a0 e1                                      mov r2, r5
0088a954  07 30 a0 e1                                      mov r3, r7
0088a958  00 c0 a0 e3                                      mov ip, #0
0088a95c  08 10 a0 e1                                      mov r1, r8
0088a960  0c 00 8d e2                                      add r0, sp, #0xc
0088a964  20 10 8d e8                                      stm sp, {r5, ip}
0088a968  4b ff ff eb                                      bl #0x88a69c
0088a96c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0088a970  01 20 a0 e3                                      mov r2, #1
0088a974  04 20 c4 e5                                      strb r2, [r4, #4]
0088a978  00 30 84 e5                                      str r3, [r4]
0088a97c  b5 ff ff ea                                      b #0x88a858

; FUNCTION 0x0088a980, declared_size=936, range_size=936, mode=arm
; class-group: std::priv::_Rb_tree<char*, vox::c8stringcomp, std::pair<char* const, int>, std::priv::_Select1st<std::pair<char* const, int> >, std::priv::_MapTraitsT<std::pair<char* const, int> >, vox::SAllocator<std::pair<char const*, int>, (vox::VoxMemHint)0> >
; alias: _ZNSt4priv8_Rb_treeIPcN3vox12c8stringcompESt4pairIKS1_iENS_10_Select1stIS6_EENS_11_MapTraitsTIS6_EENS2_10SAllocatorIS4_IPKciELNS2_10VoxMemHintE0EEEE13insert_uniqueENS_17_Rb_tree_iteratorIS6_SA_EERKS6_
; demangled: std::priv::_Rb_tree<char*, vox::c8stringcomp, std::pair<char* const, int>, std::priv::_Select1st<std::pair<char* const, int> >, std::priv::_MapTraitsT<std::pair<char* const, int> >, vox::SAllocator<std::pair<char const*, int>, (vox::VoxMemHint)0> >::insert_unique(std::priv::_Rb_tree_iterator<std::pair<char* const, int>, std::priv::_MapTraitsT<std::pair<char* const, int> > >, std::pair<char* const, int> const&)
; decoder-mode: arm
0088a980  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0088a984  02 60 a0 e1                                      mov r6, r2
0088a988  00 70 92 e5                                      ldr r7, [r2]
0088a98c  08 20 91 e5                                      ldr r2, [r1, #8]
0088a990  28 d0 4d e2                                      sub sp, sp, #0x28
0088a994  01 50 a0 e1                                      mov r5, r1
0088a998  02 00 57 e1                                      cmp r7, r2
0088a99c  00 a0 a0 e1                                      mov sl, r0
0088a9a0  03 80 a0 e1                                      mov r8, r3
0088a9a4  76 00 00 0a                                      beq #0x88ab84
0088a9a8  01 00 57 e1                                      cmp r7, r1
0088a9ac  ac 00 00 0a                                      beq #0x88ac64
0088a9b0  00 30 d7 e5                                      ldrb r3, [r7]
0088a9b4  00 00 53 e3                                      cmp r3, #0
0088a9b8  56 00 00 0a                                      beq #0x88ab18
0088a9bc  08 40 97 e5                                      ldr r4, [r7, #8]
0088a9c0  00 00 54 e3                                      cmp r4, #0
0088a9c4  01 00 00 1a                                      bne #0x88a9d0
0088a9c8  5a 00 00 ea                                      b #0x88ab38
0088a9cc  03 40 a0 e1                                      mov r4, r3
0088a9d0  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0088a9d4  00 00 53 e3                                      cmp r3, #0
0088a9d8  fb ff ff 1a                                      bne #0x88a9cc
0088a9dc  14 90 85 e2                                      add sb, r5, #0x14
0088a9e0  10 20 97 e5                                      ldr r2, [r7, #0x10]
0088a9e4  09 00 a0 e1                                      mov r0, sb
0088a9e8  00 10 98 e5                                      ldr r1, [r8]
0088a9ec  b7 fe ff eb                                      bl #0x88a4d0
0088a9f0  00 70 50 e2                                      subs r7, r0, #0
0088a9f4  13 00 00 0a                                      beq #0x88aa48
0088a9f8  09 00 a0 e1                                      mov r0, sb
0088a9fc  10 10 94 e5                                      ldr r1, [r4, #0x10]
0088aa00  00 20 98 e5                                      ldr r2, [r8]
0088aa04  b1 fe ff eb                                      bl #0x88a4d0
0088aa08  00 00 50 e3                                      cmp r0, #0
0088aa0c  0d 00 00 0a                                      beq #0x88aa48
0088aa10  0c c0 94 e5                                      ldr ip, [r4, #0xc]
0088aa14  00 00 5c e3                                      cmp ip, #0
0088aa18  ac 00 00 0a                                      beq #0x88acd0
0088aa1c  00 c0 96 e5                                      ldr ip, [r6]
0088aa20  00 e0 a0 e3                                      mov lr, #0
0088aa24  05 10 a0 e1                                      mov r1, r5
0088aa28  08 30 a0 e1                                      mov r3, r8
0088aa2c  0c 20 a0 e1                                      mov r2, ip
0088aa30  0a 00 a0 e1                                      mov r0, sl
0088aa34  00 50 8d e8                                      stm sp, {ip, lr}
0088aa38  17 ff ff eb                                      bl #0x88a69c
0088aa3c  0a 00 a0 e1                                      mov r0, sl
0088aa40  28 d0 8d e2                                      add sp, sp, #0x28
0088aa44  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0088aa48  00 20 96 e5                                      ldr r2, [r6]
0088aa4c  0c 40 92 e5                                      ldr r4, [r2, #0xc]
0088aa50  00 00 54 e3                                      cmp r4, #0
0088aa54  29 00 00 1a                                      bne #0x88ab00
0088aa58  04 30 92 e5                                      ldr r3, [r2, #4]
0088aa5c  0c 10 93 e5                                      ldr r1, [r3, #0xc]
0088aa60  01 00 52 e1                                      cmp r2, r1
0088aa64  02 40 a0 11                                      movne r4, r2
0088aa68  04 00 00 1a                                      bne #0x88aa80
0088aa6c  03 40 a0 e1                                      mov r4, r3
0088aa70  04 30 93 e5                                      ldr r3, [r3, #4]
0088aa74  0c 10 93 e5                                      ldr r1, [r3, #0xc]
0088aa78  04 00 51 e1                                      cmp r1, r4
0088aa7c  fa ff ff 0a                                      beq #0x88aa6c
0088aa80  0c 10 94 e5                                      ldr r1, [r4, #0xc]
0088aa84  01 00 53 e1                                      cmp r3, r1
0088aa88  03 40 a0 11                                      movne r4, r3
0088aa8c  00 00 57 e3                                      cmp r7, #0
0088aa90  34 00 00 1a                                      bne #0x88ab68
0088aa94  10 10 92 e5                                      ldr r1, [r2, #0x10]
0088aa98  09 00 a0 e1                                      mov r0, sb
0088aa9c  00 20 98 e5                                      ldr r2, [r8]
0088aaa0  8a fe ff eb                                      bl #0x88a4d0
0088aaa4  00 00 50 e3                                      cmp r0, #0
0088aaa8  7e 00 00 0a                                      beq #0x88aca8
0088aaac  04 00 55 e1                                      cmp r5, r4
0088aab0  05 00 00 0a                                      beq #0x88aacc
0088aab4  09 00 a0 e1                                      mov r0, sb
0088aab8  00 10 98 e5                                      ldr r1, [r8]
0088aabc  10 20 94 e5                                      ldr r2, [r4, #0x10]
0088aac0  82 fe ff eb                                      bl #0x88a4d0
0088aac4  00 00 50 e3                                      cmp r0, #0
0088aac8  26 00 00 0a                                      beq #0x88ab68
0088aacc  00 c0 96 e5                                      ldr ip, [r6]
0088aad0  0c e0 9c e5                                      ldr lr, [ip, #0xc]
0088aad4  00 00 5e e3                                      cmp lr, #0
0088aad8  84 00 00 0a                                      beq #0x88acf0
0088aadc  00 c0 a0 e3                                      mov ip, #0
0088aae0  05 10 a0 e1                                      mov r1, r5
0088aae4  04 20 a0 e1                                      mov r2, r4
0088aae8  08 30 a0 e1                                      mov r3, r8
0088aaec  0a 00 a0 e1                                      mov r0, sl
0088aaf0  10 10 8d e8                                      stm sp, {r4, ip}
0088aaf4  e8 fe ff eb                                      bl #0x88a69c
0088aaf8  cf ff ff ea                                      b #0x88aa3c
0088aafc  03 40 a0 e1                                      mov r4, r3
0088ab00  08 30 94 e5                                      ldr r3, [r4, #8]
0088ab04  00 00 53 e3                                      cmp r3, #0
0088ab08  fb ff ff 1a                                      bne #0x88aafc
0088ab0c  00 00 57 e3                                      cmp r7, #0
0088ab10  14 00 00 1a                                      bne #0x88ab68
0088ab14  de ff ff ea                                      b #0x88aa94
0088ab18  04 30 97 e5                                      ldr r3, [r7, #4]
0088ab1c  04 30 93 e5                                      ldr r3, [r3, #4]
0088ab20  03 00 57 e1                                      cmp r7, r3
0088ab24  0c 40 97 05                                      ldreq r4, [r7, #0xc]
0088ab28  ab ff ff 0a                                      beq #0x88a9dc
0088ab2c  08 40 97 e5                                      ldr r4, [r7, #8]
0088ab30  00 00 54 e3                                      cmp r4, #0
0088ab34  a5 ff ff 1a                                      bne #0x88a9d0
0088ab38  04 40 97 e5                                      ldr r4, [r7, #4]
0088ab3c  08 30 94 e5                                      ldr r3, [r4, #8]
0088ab40  03 00 57 e1                                      cmp r7, r3
0088ab44  01 00 00 0a                                      beq #0x88ab50
0088ab48  a3 ff ff ea                                      b #0x88a9dc
0088ab4c  03 40 a0 e1                                      mov r4, r3
0088ab50  04 30 94 e5                                      ldr r3, [r4, #4]
0088ab54  08 20 93 e5                                      ldr r2, [r3, #8]
0088ab58  04 00 52 e1                                      cmp r2, r4
0088ab5c  fa ff ff 0a                                      beq #0x88ab4c
0088ab60  03 40 a0 e1                                      mov r4, r3
0088ab64  9c ff ff ea                                      b #0x88a9dc
0088ab68  05 10 a0 e1                                      mov r1, r5
0088ab6c  08 20 a0 e1                                      mov r2, r8
0088ab70  08 00 8d e2                                      add r0, sp, #8
0088ab74  16 ff ff eb                                      bl #0x88a7d4
0088ab78  08 30 9d e5                                      ldr r3, [sp, #8]
0088ab7c  00 30 8a e5                                      str r3, [sl]
0088ab80  ad ff ff ea                                      b #0x88aa3c
0088ab84  10 30 91 e5                                      ldr r3, [r1, #0x10]
0088ab88  00 00 53 e3                                      cmp r3, #0
0088ab8c  5f 00 00 0a                                      beq #0x88ad10
0088ab90  14 90 81 e2                                      add sb, r1, #0x14
0088ab94  10 20 97 e5                                      ldr r2, [r7, #0x10]
0088ab98  09 00 a0 e1                                      mov r0, sb
0088ab9c  00 10 98 e5                                      ldr r1, [r8]
0088aba0  4a fe ff eb                                      bl #0x88a4d0
0088aba4  00 00 50 e3                                      cmp r0, #0
0088aba8  9b ff ff 1a                                      bne #0x88aa1c
0088abac  00 30 96 e5                                      ldr r3, [r6]
0088abb0  09 00 a0 e1                                      mov r0, sb
0088abb4  00 20 98 e5                                      ldr r2, [r8]
0088abb8  10 10 93 e5                                      ldr r1, [r3, #0x10]
0088abbc  43 fe ff eb                                      bl #0x88a4d0
0088abc0  00 00 50 e3                                      cmp r0, #0
0088abc4  37 00 00 0a                                      beq #0x88aca8
0088abc8  00 c0 96 e5                                      ldr ip, [r6]
0088abcc  0c 40 9c e5                                      ldr r4, [ip, #0xc]
0088abd0  00 00 54 e3                                      cmp r4, #0
0088abd4  1e 00 00 1a                                      bne #0x88ac54
0088abd8  04 30 9c e5                                      ldr r3, [ip, #4]
0088abdc  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0088abe0  02 00 5c e1                                      cmp ip, r2
0088abe4  0c 40 a0 11                                      movne r4, ip
0088abe8  04 00 00 1a                                      bne #0x88ac00
0088abec  03 40 a0 e1                                      mov r4, r3
0088abf0  04 30 93 e5                                      ldr r3, [r3, #4]
0088abf4  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0088abf8  04 00 52 e1                                      cmp r2, r4
0088abfc  fa ff ff 0a                                      beq #0x88abec
0088ac00  0c 20 94 e5                                      ldr r2, [r4, #0xc]
0088ac04  02 00 53 e1                                      cmp r3, r2
0088ac08  03 40 a0 11                                      movne r4, r3
0088ac0c  04 00 55 e1                                      cmp r5, r4
0088ac10  05 10 a0 01                                      moveq r1, r5
0088ac14  0c 20 a0 01                                      moveq r2, ip
0088ac18  1b 00 00 0a                                      beq #0x88ac8c
0088ac1c  09 00 a0 e1                                      mov r0, sb
0088ac20  00 10 98 e5                                      ldr r1, [r8]
0088ac24  10 20 94 e5                                      ldr r2, [r4, #0x10]
0088ac28  28 fe ff eb                                      bl #0x88a4d0
0088ac2c  00 00 50 e3                                      cmp r0, #0
0088ac30  a5 ff ff 1a                                      bne #0x88aacc
0088ac34  05 10 a0 e1                                      mov r1, r5
0088ac38  08 20 a0 e1                                      mov r2, r8
0088ac3c  18 00 8d e2                                      add r0, sp, #0x18
0088ac40  e3 fe ff eb                                      bl #0x88a7d4
0088ac44  18 30 9d e5                                      ldr r3, [sp, #0x18]
0088ac48  00 30 8a e5                                      str r3, [sl]
0088ac4c  7a ff ff ea                                      b #0x88aa3c
0088ac50  03 40 a0 e1                                      mov r4, r3
0088ac54  08 30 94 e5                                      ldr r3, [r4, #8]
0088ac58  00 00 53 e3                                      cmp r3, #0
0088ac5c  fb ff ff 1a                                      bne #0x88ac50
0088ac60  e9 ff ff ea                                      b #0x88ac0c
0088ac64  0c 30 97 e5                                      ldr r3, [r7, #0xc]
0088ac68  14 00 87 e2                                      add r0, r7, #0x14
0088ac6c  00 20 98 e5                                      ldr r2, [r8]
0088ac70  10 10 93 e5                                      ldr r1, [r3, #0x10]
0088ac74  15 fe ff eb                                      bl #0x88a4d0
0088ac78  00 00 50 e3                                      cmp r0, #0
0088ac7c  0c 00 00 0a                                      beq #0x88acb4
0088ac80  0c 20 97 e5                                      ldr r2, [r7, #0xc]
0088ac84  00 c0 96 e5                                      ldr ip, [r6]
0088ac88  07 10 a0 e1                                      mov r1, r7
0088ac8c  00 e0 a0 e3                                      mov lr, #0
0088ac90  08 30 a0 e1                                      mov r3, r8
0088ac94  0a 00 a0 e1                                      mov r0, sl
0088ac98  00 e0 8d e5                                      str lr, [sp]
0088ac9c  04 c0 8d e5                                      str ip, [sp, #4]
0088aca0  7d fe ff eb                                      bl #0x88a69c
0088aca4  64 ff ff ea                                      b #0x88aa3c
0088aca8  00 30 96 e5                                      ldr r3, [r6]
0088acac  00 30 8a e5                                      str r3, [sl]
0088acb0  61 ff ff ea                                      b #0x88aa3c
0088acb4  07 10 a0 e1                                      mov r1, r7
0088acb8  08 20 a0 e1                                      mov r2, r8
0088acbc  10 00 8d e2                                      add r0, sp, #0x10
0088acc0  c3 fe ff eb                                      bl #0x88a7d4
0088acc4  10 30 9d e5                                      ldr r3, [sp, #0x10]
0088acc8  00 30 8a e5                                      str r3, [sl]
0088accc  5a ff ff ea                                      b #0x88aa3c
0088acd0  05 10 a0 e1                                      mov r1, r5
0088acd4  04 20 a0 e1                                      mov r2, r4
0088acd8  08 30 a0 e1                                      mov r3, r8
0088acdc  0a 00 a0 e1                                      mov r0, sl
0088ace0  00 c0 8d e5                                      str ip, [sp]
0088ace4  04 40 8d e5                                      str r4, [sp, #4]
0088ace8  6b fe ff eb                                      bl #0x88a69c
0088acec  52 ff ff ea                                      b #0x88aa3c
0088acf0  05 10 a0 e1                                      mov r1, r5
0088acf4  0c 20 a0 e1                                      mov r2, ip
0088acf8  08 30 a0 e1                                      mov r3, r8
0088acfc  0a 00 a0 e1                                      mov r0, sl
0088ad00  00 e0 8d e5                                      str lr, [sp]
0088ad04  04 c0 8d e5                                      str ip, [sp, #4]
0088ad08  63 fe ff eb                                      bl #0x88a69c
0088ad0c  4a ff ff ea                                      b #0x88aa3c
0088ad10  08 20 a0 e1                                      mov r2, r8
0088ad14  20 00 8d e2                                      add r0, sp, #0x20
0088ad18  ad fe ff eb                                      bl #0x88a7d4
0088ad1c  20 30 9d e5                                      ldr r3, [sp, #0x20]
0088ad20  00 30 8a e5                                      str r3, [sl]
0088ad24  44 ff ff ea                                      b #0x88aa3c

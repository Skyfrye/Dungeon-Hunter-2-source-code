; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0088a4e8, declared_size=116, range_size=116, mode=arm
; class-group: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<char*, vox::c8stringcomp, std::pair<char* const, int>, std::priv::_Select1st<std::pair<char* const, int> >, std::priv::_MapTraitsT<std::pair<char* const, int> >, vox::SAllocator<std::pair<char const*, int>, (vox::VoxMemHint)0> >
; alias: _ZNKSt4priv8_Rb_treeIPcN3vox12c8stringcompESt4pairIKS1_iENS_10_Select1stIS6_EENS_11_MapTraitsTIS6_EENS2_10SAllocatorIS4_IPKciELNS2_10VoxMemHintE0EEEE7_M_findIS1_EEPNS_18_Rb_tree_node_baseERKT_
; demangled: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<char*, vox::c8stringcomp, std::pair<char* const, int>, std::priv::_Select1st<std::pair<char* const, int> >, std::priv::_MapTraitsT<std::pair<char* const, int> >, vox::SAllocator<std::pair<char const*, int>, (vox::VoxMemHint)0> >::_M_find<char*>(char* const&) const
; decoder-mode: arm
0088a4e8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0088a4ec  04 40 90 e5                                      ldr r4, [r0, #4]
0088a4f0  00 80 a0 e1                                      mov r8, r0
0088a4f4  01 50 a0 e1                                      mov r5, r1
0088a4f8  00 00 54 e3                                      cmp r4, #0
0088a4fc  13 00 00 0a                                      beq #0x88a550
0088a500  14 60 80 e2                                      add r6, r0, #0x14
0088a504  00 70 a0 e1                                      mov r7, r0
0088a508  10 10 94 e5                                      ldr r1, [r4, #0x10]
0088a50c  06 00 a0 e1                                      mov r0, r6
0088a510  00 20 95 e5                                      ldr r2, [r5]
0088a514  ed ff ff eb                                      bl #0x88a4d0
0088a518  00 00 50 e3                                      cmp r0, #0
0088a51c  04 70 a0 01                                      moveq r7, r4
0088a520  0c 40 94 15                                      ldrne r4, [r4, #0xc]
0088a524  08 40 94 05                                      ldreq r4, [r4, #8]
0088a528  00 00 54 e3                                      cmp r4, #0
0088a52c  f5 ff ff 1a                                      bne #0x88a508
0088a530  08 00 57 e1                                      cmp r7, r8
0088a534  06 00 00 0a                                      beq #0x88a554
0088a538  06 00 a0 e1                                      mov r0, r6
0088a53c  00 10 95 e5                                      ldr r1, [r5]
0088a540  10 20 97 e5                                      ldr r2, [r7, #0x10]
0088a544  e1 ff ff eb                                      bl #0x88a4d0
0088a548  00 00 50 e3                                      cmp r0, #0
0088a54c  00 00 00 0a                                      beq #0x88a554
0088a550  08 70 a0 e1                                      mov r7, r8
0088a554  07 00 a0 e1                                      mov r0, r7
0088a558  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

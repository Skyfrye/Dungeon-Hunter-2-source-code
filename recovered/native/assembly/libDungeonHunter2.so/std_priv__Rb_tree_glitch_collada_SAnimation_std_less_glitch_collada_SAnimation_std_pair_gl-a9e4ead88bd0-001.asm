; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0065b918, declared_size=328, range_size=328, mode=arm
; class-group: std::priv::_Rb_tree<glitch::collada::SAnimation*, std::less<glitch::collada::SAnimation*>, std::pair<glitch::collada::SAnimation* const, std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo, glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo, (glitch::memory::E_MEMORY_HINT)0> > >, std::priv::_Select1st<std::pair<glitch::collada::SAnimation* const, std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo, glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo, (glitch::memory::E_MEMORY_HINT)0> > > >, std::priv::_MapTraitsT<std::pair<glitch::collada::SAnimation* const, std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo, glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo, (glitch::memory::E_MEMORY_HINT)0> > > >, glitch::core::SAllocator<std::pair<glitch::collada::SAnimation* const, std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo, glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo, (glitch::memory::E_MEMORY_HINT)0> > >, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt4priv8_Rb_treeIPN6glitch7collada10SAnimationESt4lessIS4_ESt4pairIKS4_St6vectorINS2_14CRootSceneNode22CMaterialParameterInfoENS1_4core10SAllocatorISB_LNS1_6memory13E_MEMORY_HINTE0EEEEENS_10_Select1stISI_EENS_11_MapTraitsTISI_EENSD_ISI_LSF_0EEEE9_M_insertEPNS_18_Rb_tree_node_baseERKSI_SQ_SQ_
; demangled: std::priv::_Rb_tree<glitch::collada::SAnimation*, std::less<glitch::collada::SAnimation*>, std::pair<glitch::collada::SAnimation* const, std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo, glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo, (glitch::memory::E_MEMORY_HINT)0> > >, std::priv::_Select1st<std::pair<glitch::collada::SAnimation* const, std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo, glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo, (glitch::memory::E_MEMORY_HINT)0> > > >, std::priv::_MapTraitsT<std::pair<glitch::collada::SAnimation* const, std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo, glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo, (glitch::memory::E_MEMORY_HINT)0> > > >, glitch::core::SAllocator<std::pair<glitch::collada::SAnimation* const, std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo, glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo, (glitch::memory::E_MEMORY_HINT)0> > >, (glitch::memory::E_MEMORY_HINT)0> >::_M_insert(std::priv::_Rb_tree_node_base*, std::pair<glitch::collada::SAnimation* const, std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo, glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo, (glitch::memory::E_MEMORY_HINT)0> > > const&, std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
0065b918  02 00 51 e1                                      cmp r1, r2
0065b91c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0065b920  01 40 a0 e1                                      mov r4, r1
0065b924  02 50 a0 e1                                      mov r5, r2
0065b928  00 60 a0 e1                                      mov r6, r0
0065b92c  03 70 a0 e1                                      mov r7, r3
0065b930  34 00 00 0a                                      beq #0x65ba08
0065b934  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
0065b938  00 00 53 e3                                      cmp r3, #0
0065b93c  1a 00 00 0a                                      beq #0x65b9ac
0065b940  00 10 a0 e3                                      mov r1, #0
0065b944  20 00 a0 e3                                      mov r0, #0x20
0065b948  06 d3 f2 eb                                      bl #0x310568
0065b94c  07 10 a0 e1                                      mov r1, r7
0065b950  04 20 91 e4                                      ldr r2, [r1], #4
0065b954  00 30 a0 e1                                      mov r3, r0
0065b958  14 00 80 e2                                      add r0, r0, #0x14
0065b95c  10 20 83 e5                                      str r2, [r3, #0x10]
0065b960  03 70 a0 e1                                      mov r7, r3
0065b964  00 fe ff eb                                      bl #0x65b16c
0065b968  00 30 a0 e3                                      mov r3, #0
0065b96c  0c 30 87 e5                                      str r3, [r7, #0xc]
0065b970  08 30 87 e5                                      str r3, [r7, #8]
0065b974  0c 70 85 e5                                      str r7, [r5, #0xc]
0065b978  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0065b97c  03 00 55 e1                                      cmp r5, r3
0065b980  1e 00 00 0a                                      beq #0x65ba00
0065b984  07 00 a0 e1                                      mov r0, r7
0065b988  04 50 87 e5                                      str r5, [r7, #4]
0065b98c  04 10 84 e2                                      add r1, r4, #4
0065b990  72 df f2 eb                                      bl #0x313760
0065b994  10 30 94 e5                                      ldr r3, [r4, #0x10]
0065b998  06 00 a0 e1                                      mov r0, r6
0065b99c  01 30 83 e2                                      add r3, r3, #1
0065b9a0  10 30 84 e5                                      str r3, [r4, #0x10]
0065b9a4  00 70 86 e5                                      str r7, [r6]
0065b9a8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0065b9ac  18 30 9d e5                                      ldr r3, [sp, #0x18]
0065b9b0  00 00 53 e3                                      cmp r3, #0
0065b9b4  24 00 00 0a                                      beq #0x65ba4c
0065b9b8  00 10 a0 e3                                      mov r1, #0
0065b9bc  20 00 a0 e3                                      mov r0, #0x20
0065b9c0  e8 d2 f2 eb                                      bl #0x310568
0065b9c4  07 10 a0 e1                                      mov r1, r7
0065b9c8  04 20 91 e4                                      ldr r2, [r1], #4
0065b9cc  00 30 a0 e1                                      mov r3, r0
0065b9d0  14 00 80 e2                                      add r0, r0, #0x14
0065b9d4  10 20 83 e5                                      str r2, [r3, #0x10]
0065b9d8  03 70 a0 e1                                      mov r7, r3
0065b9dc  e2 fd ff eb                                      bl #0x65b16c
0065b9e0  00 30 a0 e3                                      mov r3, #0
0065b9e4  0c 30 87 e5                                      str r3, [r7, #0xc]
0065b9e8  08 30 87 e5                                      str r3, [r7, #8]
0065b9ec  08 70 85 e5                                      str r7, [r5, #8]
0065b9f0  08 30 94 e5                                      ldr r3, [r4, #8]
0065b9f4  03 00 55 e1                                      cmp r5, r3
0065b9f8  08 70 84 05                                      streq r7, [r4, #8]
0065b9fc  e0 ff ff ea                                      b #0x65b984
0065ba00  0c 70 84 e5                                      str r7, [r4, #0xc]
0065ba04  de ff ff ea                                      b #0x65b984
0065ba08  00 10 a0 e3                                      mov r1, #0
0065ba0c  20 00 a0 e3                                      mov r0, #0x20
0065ba10  d4 d2 f2 eb                                      bl #0x310568
0065ba14  07 10 a0 e1                                      mov r1, r7
0065ba18  04 20 91 e4                                      ldr r2, [r1], #4
0065ba1c  00 30 a0 e1                                      mov r3, r0
0065ba20  14 00 80 e2                                      add r0, r0, #0x14
0065ba24  10 20 83 e5                                      str r2, [r3, #0x10]
0065ba28  03 70 a0 e1                                      mov r7, r3
0065ba2c  ce fd ff eb                                      bl #0x65b16c
0065ba30  00 30 a0 e3                                      mov r3, #0
0065ba34  0c 30 87 e5                                      str r3, [r7, #0xc]
0065ba38  08 30 87 e5                                      str r3, [r7, #8]
0065ba3c  08 70 84 e5                                      str r7, [r4, #8]
0065ba40  04 70 84 e5                                      str r7, [r4, #4]
0065ba44  0c 70 84 e5                                      str r7, [r4, #0xc]
0065ba48  cd ff ff ea                                      b #0x65b984
0065ba4c  00 20 97 e5                                      ldr r2, [r7]
0065ba50  10 30 95 e5                                      ldr r3, [r5, #0x10]
0065ba54  03 00 52 e1                                      cmp r2, r3
0065ba58  b8 ff ff 2a                                      bhs #0x65b940
0065ba5c  d5 ff ff ea                                      b #0x65b9b8

; FUNCTION 0x0065ba60, declared_size=392, range_size=392, mode=arm
; class-group: std::priv::_Rb_tree<glitch::collada::SAnimation*, std::less<glitch::collada::SAnimation*>, std::pair<glitch::collada::SAnimation* const, std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo, glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo, (glitch::memory::E_MEMORY_HINT)0> > >, std::priv::_Select1st<std::pair<glitch::collada::SAnimation* const, std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo, glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo, (glitch::memory::E_MEMORY_HINT)0> > > >, std::priv::_MapTraitsT<std::pair<glitch::collada::SAnimation* const, std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo, glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo, (glitch::memory::E_MEMORY_HINT)0> > > >, glitch::core::SAllocator<std::pair<glitch::collada::SAnimation* const, std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo, glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo, (glitch::memory::E_MEMORY_HINT)0> > >, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt4priv8_Rb_treeIPN6glitch7collada10SAnimationESt4lessIS4_ESt4pairIKS4_St6vectorINS2_14CRootSceneNode22CMaterialParameterInfoENS1_4core10SAllocatorISB_LNS1_6memory13E_MEMORY_HINTE0EEEEENS_10_Select1stISI_EENS_11_MapTraitsTISI_EENSD_ISI_LSF_0EEEE13insert_uniqueERKSI_
; demangled: std::priv::_Rb_tree<glitch::collada::SAnimation*, std::less<glitch::collada::SAnimation*>, std::pair<glitch::collada::SAnimation* const, std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo, glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo, (glitch::memory::E_MEMORY_HINT)0> > >, std::priv::_Select1st<std::pair<glitch::collada::SAnimation* const, std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo, glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo, (glitch::memory::E_MEMORY_HINT)0> > > >, std::priv::_MapTraitsT<std::pair<glitch::collada::SAnimation* const, std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo, glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo, (glitch::memory::E_MEMORY_HINT)0> > > >, glitch::core::SAllocator<std::pair<glitch::collada::SAnimation* const, std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo, glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo, (glitch::memory::E_MEMORY_HINT)0> > >, (glitch::memory::E_MEMORY_HINT)0> >::insert_unique(std::pair<glitch::collada::SAnimation* const, std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo, glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo, (glitch::memory::E_MEMORY_HINT)0> > > const&)
; decoder-mode: arm
0065ba60  70 40 2d e9                                      push {r4, r5, r6, lr}
0065ba64  04 c0 91 e5                                      ldr ip, [r1, #4]
0065ba68  10 d0 4d e2                                      sub sp, sp, #0x10
0065ba6c  00 40 a0 e1                                      mov r4, r0
0065ba70  00 00 5c e3                                      cmp ip, #0
0065ba74  02 30 a0 e1                                      mov r3, r2
0065ba78  01 c0 a0 01                                      moveq ip, r1
0065ba7c  15 00 00 0a                                      beq #0x65bad8
0065ba80  00 60 92 e5                                      ldr r6, [r2]
0065ba84  00 00 00 ea                                      b #0x65ba8c
0065ba88  02 c0 a0 e1                                      mov ip, r2
0065ba8c  10 00 9c e5                                      ldr r0, [ip, #0x10]
0065ba90  01 50 a0 e3                                      mov r5, #1
0065ba94  06 00 50 e1                                      cmp r0, r6
0065ba98  08 20 9c 85                                      ldrhi r2, [ip, #8]
0065ba9c  0c 20 9c 95                                      ldrls r2, [ip, #0xc]
0065baa0  00 50 a0 93                                      movls r5, #0
0065baa4  00 00 52 e3                                      cmp r2, #0
0065baa8  f6 ff ff 1a                                      bne #0x65ba88
0065baac  00 00 55 e3                                      cmp r5, #0
0065bab0  0c 50 a0 01                                      moveq r5, ip
0065bab4  07 00 00 1a                                      bne #0x65bad8
0065bab8  00 00 56 e1                                      cmp r6, r0
0065babc  00 30 a0 93                                      movls r3, #0
0065bac0  00 50 84 95                                      strls r5, [r4]
0065bac4  04 30 c4 95                                      strbls r3, [r4, #4]
0065bac8  1c 00 00 8a                                      bhi #0x65bb40
0065bacc  04 00 a0 e1                                      mov r0, r4
0065bad0  10 d0 8d e2                                      add sp, sp, #0x10
0065bad4  70 80 bd e8                                      pop {r4, r5, r6, pc}
0065bad8  08 20 91 e5                                      ldr r2, [r1, #8]
0065badc  02 00 5c e1                                      cmp ip, r2
0065bae0  36 00 00 0a                                      beq #0x65bbc0
0065bae4  00 20 dc e5                                      ldrb r2, [ip]
0065bae8  00 00 52 e3                                      cmp r2, #0
0065baec  03 00 00 1a                                      bne #0x65bb00
0065baf0  04 20 9c e5                                      ldr r2, [ip, #4]
0065baf4  04 20 92 e5                                      ldr r2, [r2, #4]
0065baf8  02 00 5c e1                                      cmp ip, r2
0065bafc  2a 00 00 0a                                      beq #0x65bbac
0065bb00  08 00 9c e5                                      ldr r0, [ip, #8]
0065bb04  00 00 50 e3                                      cmp r0, #0
0065bb08  01 00 00 1a                                      bne #0x65bb14
0065bb0c  16 00 00 ea                                      b #0x65bb6c
0065bb10  02 00 a0 e1                                      mov r0, r2
0065bb14  0c 20 90 e5                                      ldr r2, [r0, #0xc]
0065bb18  00 00 52 e3                                      cmp r2, #0
0065bb1c  fb ff ff 1a                                      bne #0x65bb10
0065bb20  00 60 93 e5                                      ldr r6, [r3]
0065bb24  00 50 a0 e1                                      mov r5, r0
0065bb28  10 00 90 e5                                      ldr r0, [r0, #0x10]
0065bb2c  00 00 56 e1                                      cmp r6, r0
0065bb30  00 30 a0 93                                      movls r3, #0
0065bb34  00 50 84 95                                      strls r5, [r4]
0065bb38  04 30 c4 95                                      strbls r3, [r4, #4]
0065bb3c  e2 ff ff 9a                                      bls #0x65bacc
0065bb40  0c 20 a0 e1                                      mov r2, ip
0065bb44  08 00 8d e2                                      add r0, sp, #8
0065bb48  00 c0 a0 e3                                      mov ip, #0
0065bb4c  04 c0 8d e5                                      str ip, [sp, #4]
0065bb50  00 c0 8d e5                                      str ip, [sp]
0065bb54  6f ff ff eb                                      bl #0x65b918
0065bb58  08 30 9d e5                                      ldr r3, [sp, #8]
0065bb5c  01 20 a0 e3                                      mov r2, #1
0065bb60  04 20 c4 e5                                      strb r2, [r4, #4]
0065bb64  00 30 84 e5                                      str r3, [r4]
0065bb68  d7 ff ff ea                                      b #0x65bacc
0065bb6c  04 20 9c e5                                      ldr r2, [ip, #4]
0065bb70  08 00 92 e5                                      ldr r0, [r2, #8]
0065bb74  00 00 5c e1                                      cmp ip, r0
0065bb78  02 50 a0 11                                      movne r5, r2
0065bb7c  00 60 93 15                                      ldrne r6, [r3]
0065bb80  10 00 92 15                                      ldrne r0, [r2, #0x10]
0065bb84  01 00 00 0a                                      beq #0x65bb90
0065bb88  ca ff ff ea                                      b #0x65bab8
0065bb8c  05 20 a0 e1                                      mov r2, r5
0065bb90  04 50 92 e5                                      ldr r5, [r2, #4]
0065bb94  08 00 95 e5                                      ldr r0, [r5, #8]
0065bb98  02 00 50 e1                                      cmp r0, r2
0065bb9c  fa ff ff 0a                                      beq #0x65bb8c
0065bba0  00 60 93 e5                                      ldr r6, [r3]
0065bba4  10 00 95 e5                                      ldr r0, [r5, #0x10]
0065bba8  c2 ff ff ea                                      b #0x65bab8
0065bbac  0c 20 9c e5                                      ldr r2, [ip, #0xc]
0065bbb0  00 60 93 e5                                      ldr r6, [r3]
0065bbb4  02 50 a0 e1                                      mov r5, r2
0065bbb8  10 00 92 e5                                      ldr r0, [r2, #0x10]
0065bbbc  bd ff ff ea                                      b #0x65bab8
0065bbc0  0c 20 a0 e1                                      mov r2, ip
0065bbc4  00 e0 a0 e3                                      mov lr, #0
0065bbc8  0c 00 8d e2                                      add r0, sp, #0xc
0065bbcc  00 50 8d e8                                      stm sp, {ip, lr}
0065bbd0  50 ff ff eb                                      bl #0x65b918
0065bbd4  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0065bbd8  01 20 a0 e3                                      mov r2, #1
0065bbdc  04 20 c4 e5                                      strb r2, [r4, #4]
0065bbe0  00 30 84 e5                                      str r3, [r4]
0065bbe4  b8 ff ff ea                                      b #0x65bacc

; FUNCTION 0x0065bbe8, declared_size=884, range_size=884, mode=arm
; class-group: std::priv::_Rb_tree<glitch::collada::SAnimation*, std::less<glitch::collada::SAnimation*>, std::pair<glitch::collada::SAnimation* const, std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo, glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo, (glitch::memory::E_MEMORY_HINT)0> > >, std::priv::_Select1st<std::pair<glitch::collada::SAnimation* const, std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo, glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo, (glitch::memory::E_MEMORY_HINT)0> > > >, std::priv::_MapTraitsT<std::pair<glitch::collada::SAnimation* const, std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo, glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo, (glitch::memory::E_MEMORY_HINT)0> > > >, glitch::core::SAllocator<std::pair<glitch::collada::SAnimation* const, std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo, glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo, (glitch::memory::E_MEMORY_HINT)0> > >, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt4priv8_Rb_treeIPN6glitch7collada10SAnimationESt4lessIS4_ESt4pairIKS4_St6vectorINS2_14CRootSceneNode22CMaterialParameterInfoENS1_4core10SAllocatorISB_LNS1_6memory13E_MEMORY_HINTE0EEEEENS_10_Select1stISI_EENS_11_MapTraitsTISI_EENSD_ISI_LSF_0EEEE13insert_uniqueENS_17_Rb_tree_iteratorISI_SM_EERKSI_
; demangled: std::priv::_Rb_tree<glitch::collada::SAnimation*, std::less<glitch::collada::SAnimation*>, std::pair<glitch::collada::SAnimation* const, std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo, glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo, (glitch::memory::E_MEMORY_HINT)0> > >, std::priv::_Select1st<std::pair<glitch::collada::SAnimation* const, std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo, glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo, (glitch::memory::E_MEMORY_HINT)0> > > >, std::priv::_MapTraitsT<std::pair<glitch::collada::SAnimation* const, std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo, glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo, (glitch::memory::E_MEMORY_HINT)0> > > >, glitch::core::SAllocator<std::pair<glitch::collada::SAnimation* const, std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo, glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo, (glitch::memory::E_MEMORY_HINT)0> > >, (glitch::memory::E_MEMORY_HINT)0> >::insert_unique(std::priv::_Rb_tree_iterator<std::pair<glitch::collada::SAnimation* const, std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo, glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo, (glitch::memory::E_MEMORY_HINT)0> > >, std::priv::_MapTraitsT<std::pair<glitch::collada::SAnimation* const, std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo, glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo, (glitch::memory::E_MEMORY_HINT)0> > > > >, std::pair<glitch::collada::SAnimation* const, std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo, glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo, (glitch::memory::E_MEMORY_HINT)0> > > const&)
; decoder-mode: arm
0065bbe8  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0065bbec  00 40 92 e5                                      ldr r4, [r2]
0065bbf0  08 20 91 e5                                      ldr r2, [r1, #8]
0065bbf4  2c d0 4d e2                                      sub sp, sp, #0x2c
0065bbf8  01 50 a0 e1                                      mov r5, r1
0065bbfc  02 00 54 e1                                      cmp r4, r2
0065bc00  00 70 a0 e1                                      mov r7, r0
0065bc04  03 60 a0 e1                                      mov r6, r3
0065bc08  5a 00 00 0a                                      beq #0x65bd78
0065bc0c  01 00 54 e1                                      cmp r4, r1
0065bc10  78 00 00 0a                                      beq #0x65bdf8
0065bc14  00 30 d4 e5                                      ldrb r3, [r4]
0065bc18  00 00 53 e3                                      cmp r3, #0
0065bc1c  3a 00 00 0a                                      beq #0x65bd0c
0065bc20  08 c0 94 e5                                      ldr ip, [r4, #8]
0065bc24  00 00 5c e3                                      cmp ip, #0
0065bc28  01 00 00 1a                                      bne #0x65bc34
0065bc2c  3e 00 00 ea                                      b #0x65bd2c
0065bc30  03 c0 a0 e1                                      mov ip, r3
0065bc34  0c 30 9c e5                                      ldr r3, [ip, #0xc]
0065bc38  00 00 53 e3                                      cmp r3, #0
0065bc3c  fb ff ff 1a                                      bne #0x65bc30
0065bc40  00 20 96 e5                                      ldr r2, [r6]
0065bc44  10 00 94 e5                                      ldr r0, [r4, #0x10]
0065bc48  00 00 52 e1                                      cmp r2, r0
0065bc4c  00 10 a0 23                                      movhs r1, #0
0065bc50  01 10 a0 33                                      movlo r1, #1
0065bc54  00 00 51 e3                                      cmp r1, #0
0065bc58  1b 00 00 1a                                      bne #0x65bccc
0065bc5c  0c 80 94 e5                                      ldr r8, [r4, #0xc]
0065bc60  00 00 58 e3                                      cmp r8, #0
0065bc64  7d 00 00 0a                                      beq #0x65be60
0065bc68  08 c0 a0 e1                                      mov ip, r8
0065bc6c  00 00 00 ea                                      b #0x65bc74
0065bc70  03 c0 a0 e1                                      mov ip, r3
0065bc74  08 30 9c e5                                      ldr r3, [ip, #8]
0065bc78  00 00 53 e3                                      cmp r3, #0
0065bc7c  fb ff ff 1a                                      bne #0x65bc70
0065bc80  00 00 51 e3                                      cmp r1, #0
0065bc84  34 00 00 1a                                      bne #0x65bd5c
0065bc88  00 00 52 e1                                      cmp r2, r0
0065bc8c  63 00 00 9a                                      bls #0x65be20
0065bc90  0c 00 55 e1                                      cmp r5, ip
0065bc94  02 00 00 0a                                      beq #0x65bca4
0065bc98  10 30 9c e5                                      ldr r3, [ip, #0x10]
0065bc9c  03 00 52 e1                                      cmp r2, r3
0065bca0  2d 00 00 2a                                      bhs #0x65bd5c
0065bca4  00 00 58 e3                                      cmp r8, #0
0065bca8  4a 00 00 1a                                      bne #0x65bdd8
0065bcac  05 10 a0 e1                                      mov r1, r5
0065bcb0  04 20 a0 e1                                      mov r2, r4
0065bcb4  06 30 a0 e1                                      mov r3, r6
0065bcb8  07 00 a0 e1                                      mov r0, r7
0065bcbc  00 80 8d e5                                      str r8, [sp]
0065bcc0  04 40 8d e5                                      str r4, [sp, #4]
0065bcc4  13 ff ff eb                                      bl #0x65b918
0065bcc8  0c 00 00 ea                                      b #0x65bd00
0065bccc  10 30 9c e5                                      ldr r3, [ip, #0x10]
0065bcd0  03 00 52 e1                                      cmp r2, r3
0065bcd4  e0 ff ff 9a                                      bls #0x65bc5c
0065bcd8  0c e0 9c e5                                      ldr lr, [ip, #0xc]
0065bcdc  00 00 5e e3                                      cmp lr, #0
0065bce0  56 00 00 0a                                      beq #0x65be40
0065bce4  00 c0 a0 e3                                      mov ip, #0
0065bce8  05 10 a0 e1                                      mov r1, r5
0065bcec  04 20 a0 e1                                      mov r2, r4
0065bcf0  06 30 a0 e1                                      mov r3, r6
0065bcf4  07 00 a0 e1                                      mov r0, r7
0065bcf8  10 10 8d e8                                      stm sp, {r4, ip}
0065bcfc  05 ff ff eb                                      bl #0x65b918
0065bd00  07 00 a0 e1                                      mov r0, r7
0065bd04  2c d0 8d e2                                      add sp, sp, #0x2c
0065bd08  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0065bd0c  04 30 94 e5                                      ldr r3, [r4, #4]
0065bd10  04 30 93 e5                                      ldr r3, [r3, #4]
0065bd14  03 00 54 e1                                      cmp r4, r3
0065bd18  0c c0 94 05                                      ldreq ip, [r4, #0xc]
0065bd1c  c7 ff ff 0a                                      beq #0x65bc40
0065bd20  08 c0 94 e5                                      ldr ip, [r4, #8]
0065bd24  00 00 5c e3                                      cmp ip, #0
0065bd28  c1 ff ff 1a                                      bne #0x65bc34
0065bd2c  04 c0 94 e5                                      ldr ip, [r4, #4]
0065bd30  08 30 9c e5                                      ldr r3, [ip, #8]
0065bd34  03 00 54 e1                                      cmp r4, r3
0065bd38  01 00 00 0a                                      beq #0x65bd44
0065bd3c  bf ff ff ea                                      b #0x65bc40
0065bd40  03 c0 a0 e1                                      mov ip, r3
0065bd44  04 30 9c e5                                      ldr r3, [ip, #4]
0065bd48  08 20 93 e5                                      ldr r2, [r3, #8]
0065bd4c  0c 00 52 e1                                      cmp r2, ip
0065bd50  fa ff ff 0a                                      beq #0x65bd40
0065bd54  03 c0 a0 e1                                      mov ip, r3
0065bd58  b8 ff ff ea                                      b #0x65bc40
0065bd5c  05 10 a0 e1                                      mov r1, r5
0065bd60  06 20 a0 e1                                      mov r2, r6
0065bd64  08 00 8d e2                                      add r0, sp, #8
0065bd68  3c ff ff eb                                      bl #0x65ba60
0065bd6c  08 30 9d e5                                      ldr r3, [sp, #8]
0065bd70  00 30 87 e5                                      str r3, [r7]
0065bd74  e1 ff ff ea                                      b #0x65bd00
0065bd78  10 20 91 e5                                      ldr r2, [r1, #0x10]
0065bd7c  00 00 52 e3                                      cmp r2, #0
0065bd80  52 00 00 0a                                      beq #0x65bed0
0065bd84  00 20 93 e5                                      ldr r2, [r3]
0065bd88  10 c0 94 e5                                      ldr ip, [r4, #0x10]
0065bd8c  0c 00 52 e1                                      cmp r2, ip
0065bd90  54 00 00 3a                                      blo #0x65bee8
0065bd94  21 00 00 9a                                      bls #0x65be20
0065bd98  0c e0 94 e5                                      ldr lr, [r4, #0xc]
0065bd9c  00 00 5e e3                                      cmp lr, #0
0065bda0  3c 00 00 0a                                      beq #0x65be98
0065bda4  0e c0 a0 e1                                      mov ip, lr
0065bda8  00 00 00 ea                                      b #0x65bdb0
0065bdac  03 c0 a0 e1                                      mov ip, r3
0065bdb0  08 30 9c e5                                      ldr r3, [ip, #8]
0065bdb4  00 00 53 e3                                      cmp r3, #0
0065bdb8  fb ff ff 1a                                      bne #0x65bdac
0065bdbc  0c 00 55 e1                                      cmp r5, ip
0065bdc0  5c 00 00 0a                                      beq #0x65bf38
0065bdc4  10 30 9c e5                                      ldr r3, [ip, #0x10]
0065bdc8  03 00 52 e1                                      cmp r2, r3
0065bdcc  4a 00 00 2a                                      bhs #0x65befc
0065bdd0  00 00 5e e3                                      cmp lr, #0
0065bdd4  4f 00 00 0a                                      beq #0x65bf18
0065bdd8  00 e0 a0 e3                                      mov lr, #0
0065bddc  05 10 a0 e1                                      mov r1, r5
0065bde0  0c 20 a0 e1                                      mov r2, ip
0065bde4  06 30 a0 e1                                      mov r3, r6
0065bde8  07 00 a0 e1                                      mov r0, r7
0065bdec  00 50 8d e8                                      stm sp, {ip, lr}
0065bdf0  c8 fe ff eb                                      bl #0x65b918
0065bdf4  c1 ff ff ea                                      b #0x65bd00
0065bdf8  0c 20 94 e5                                      ldr r2, [r4, #0xc]
0065bdfc  00 c0 93 e5                                      ldr ip, [r3]
0065be00  10 e0 92 e5                                      ldr lr, [r2, #0x10]
0065be04  0c 00 5e e1                                      cmp lr, ip
0065be08  06 00 00 2a                                      bhs #0x65be28
0065be0c  00 c0 a0 e3                                      mov ip, #0
0065be10  00 c0 8d e5                                      str ip, [sp]
0065be14  04 40 8d e5                                      str r4, [sp, #4]
0065be18  be fe ff eb                                      bl #0x65b918
0065be1c  b7 ff ff ea                                      b #0x65bd00
0065be20  00 40 87 e5                                      str r4, [r7]
0065be24  b5 ff ff ea                                      b #0x65bd00
0065be28  03 20 a0 e1                                      mov r2, r3
0065be2c  10 00 8d e2                                      add r0, sp, #0x10
0065be30  0a ff ff eb                                      bl #0x65ba60
0065be34  10 30 9d e5                                      ldr r3, [sp, #0x10]
0065be38  00 30 87 e5                                      str r3, [r7]
0065be3c  af ff ff ea                                      b #0x65bd00
0065be40  05 10 a0 e1                                      mov r1, r5
0065be44  0c 20 a0 e1                                      mov r2, ip
0065be48  06 30 a0 e1                                      mov r3, r6
0065be4c  07 00 a0 e1                                      mov r0, r7
0065be50  00 e0 8d e5                                      str lr, [sp]
0065be54  04 c0 8d e5                                      str ip, [sp, #4]
0065be58  ae fe ff eb                                      bl #0x65b918
0065be5c  a7 ff ff ea                                      b #0x65bd00
0065be60  04 30 94 e5                                      ldr r3, [r4, #4]
0065be64  0c c0 93 e5                                      ldr ip, [r3, #0xc]
0065be68  0c 00 54 e1                                      cmp r4, ip
0065be6c  04 c0 a0 11                                      movne ip, r4
0065be70  04 00 00 1a                                      bne #0x65be88
0065be74  03 c0 a0 e1                                      mov ip, r3
0065be78  04 30 93 e5                                      ldr r3, [r3, #4]
0065be7c  0c a0 93 e5                                      ldr sl, [r3, #0xc]
0065be80  0a 00 5c e1                                      cmp ip, sl
0065be84  fa ff ff 0a                                      beq #0x65be74
0065be88  0c a0 9c e5                                      ldr sl, [ip, #0xc]
0065be8c  0a 00 53 e1                                      cmp r3, sl
0065be90  03 c0 a0 11                                      movne ip, r3
0065be94  79 ff ff ea                                      b #0x65bc80
0065be98  04 30 94 e5                                      ldr r3, [r4, #4]
0065be9c  0c 10 93 e5                                      ldr r1, [r3, #0xc]
0065bea0  01 00 54 e1                                      cmp r4, r1
0065bea4  04 c0 a0 11                                      movne ip, r4
0065bea8  04 00 00 1a                                      bne #0x65bec0
0065beac  03 c0 a0 e1                                      mov ip, r3
0065beb0  04 30 93 e5                                      ldr r3, [r3, #4]
0065beb4  0c 10 93 e5                                      ldr r1, [r3, #0xc]
0065beb8  0c 00 51 e1                                      cmp r1, ip
0065bebc  fa ff ff 0a                                      beq #0x65beac
0065bec0  0c 10 9c e5                                      ldr r1, [ip, #0xc]
0065bec4  01 00 53 e1                                      cmp r3, r1
0065bec8  03 c0 a0 11                                      movne ip, r3
0065becc  ba ff ff ea                                      b #0x65bdbc
0065bed0  03 20 a0 e1                                      mov r2, r3
0065bed4  20 00 8d e2                                      add r0, sp, #0x20
0065bed8  e0 fe ff eb                                      bl #0x65ba60
0065bedc  20 30 9d e5                                      ldr r3, [sp, #0x20]
0065bee0  00 30 87 e5                                      str r3, [r7]
0065bee4  85 ff ff ea                                      b #0x65bd00
0065bee8  00 c0 a0 e3                                      mov ip, #0
0065beec  04 20 a0 e1                                      mov r2, r4
0065bef0  10 10 8d e8                                      stm sp, {r4, ip}
0065bef4  87 fe ff eb                                      bl #0x65b918
0065bef8  80 ff ff ea                                      b #0x65bd00
0065befc  05 10 a0 e1                                      mov r1, r5
0065bf00  06 20 a0 e1                                      mov r2, r6
0065bf04  18 00 8d e2                                      add r0, sp, #0x18
0065bf08  d4 fe ff eb                                      bl #0x65ba60
0065bf0c  18 30 9d e5                                      ldr r3, [sp, #0x18]
0065bf10  00 30 87 e5                                      str r3, [r7]
0065bf14  79 ff ff ea                                      b #0x65bd00
0065bf18  05 10 a0 e1                                      mov r1, r5
0065bf1c  04 20 a0 e1                                      mov r2, r4
0065bf20  06 30 a0 e1                                      mov r3, r6
0065bf24  07 00 a0 e1                                      mov r0, r7
0065bf28  00 e0 8d e5                                      str lr, [sp]
0065bf2c  04 40 8d e5                                      str r4, [sp, #4]
0065bf30  78 fe ff eb                                      bl #0x65b918
0065bf34  71 ff ff ea                                      b #0x65bd00
0065bf38  00 c0 a0 e3                                      mov ip, #0
0065bf3c  05 10 a0 e1                                      mov r1, r5
0065bf40  04 20 a0 e1                                      mov r2, r4
0065bf44  06 30 a0 e1                                      mov r3, r6
0065bf48  07 00 a0 e1                                      mov r0, r7
0065bf4c  00 c0 8d e5                                      str ip, [sp]
0065bf50  04 40 8d e5                                      str r4, [sp, #4]
0065bf54  6f fe ff eb                                      bl #0x65b918
0065bf58  68 ff ff ea                                      b #0x65bd00

; FUNCTION 0x0065c038, declared_size=60, range_size=60, mode=arm
; class-group: std::priv::_Rb_tree<glitch::collada::SAnimation*, std::less<glitch::collada::SAnimation*>, std::pair<glitch::collada::SAnimation* const, std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo, glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo, (glitch::memory::E_MEMORY_HINT)0> > >, std::priv::_Select1st<std::pair<glitch::collada::SAnimation* const, std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo, glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo, (glitch::memory::E_MEMORY_HINT)0> > > >, std::priv::_MapTraitsT<std::pair<glitch::collada::SAnimation* const, std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo, glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo, (glitch::memory::E_MEMORY_HINT)0> > > >, glitch::core::SAllocator<std::pair<glitch::collada::SAnimation* const, std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo, glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo, (glitch::memory::E_MEMORY_HINT)0> > >, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt4priv8_Rb_treeIPN6glitch7collada10SAnimationESt4lessIS4_ESt4pairIKS4_St6vectorINS2_14CRootSceneNode22CMaterialParameterInfoENS1_4core10SAllocatorISB_LNS1_6memory13E_MEMORY_HINTE0EEEEENS_10_Select1stISI_EENS_11_MapTraitsTISI_EENSD_ISI_LSF_0EEEE8_M_eraseEPNS_18_Rb_tree_node_baseE
; demangled: std::priv::_Rb_tree<glitch::collada::SAnimation*, std::less<glitch::collada::SAnimation*>, std::pair<glitch::collada::SAnimation* const, std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo, glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo, (glitch::memory::E_MEMORY_HINT)0> > >, std::priv::_Select1st<std::pair<glitch::collada::SAnimation* const, std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo, glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo, (glitch::memory::E_MEMORY_HINT)0> > > >, std::priv::_MapTraitsT<std::pair<glitch::collada::SAnimation* const, std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo, glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo, (glitch::memory::E_MEMORY_HINT)0> > > >, glitch::core::SAllocator<std::pair<glitch::collada::SAnimation* const, std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo, glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo, (glitch::memory::E_MEMORY_HINT)0> > >, (glitch::memory::E_MEMORY_HINT)0> >::_M_erase(std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
0065c038  70 40 2d e9                                      push {r4, r5, r6, lr}
0065c03c  00 40 51 e2                                      subs r4, r1, #0
0065c040  00 50 a0 e1                                      mov r5, r0
0065c044  09 00 00 0a                                      beq #0x65c070
0065c048  0c 10 94 e5                                      ldr r1, [r4, #0xc]
0065c04c  05 00 a0 e1                                      mov r0, r5
0065c050  f8 ff ff eb                                      bl #0x65c038
0065c054  08 60 94 e5                                      ldr r6, [r4, #8]
0065c058  14 00 84 e2                                      add r0, r4, #0x14
0065c05c  da ff ff eb                                      bl #0x65bfcc
0065c060  04 00 a0 e1                                      mov r0, r4
0065c064  f9 d0 f2 eb                                      bl #0x310450
0065c068  00 40 56 e2                                      subs r4, r6, #0
0065c06c  f5 ff ff 1a                                      bne #0x65c048
0065c070  70 80 bd e8                                      pop {r4, r5, r6, pc}

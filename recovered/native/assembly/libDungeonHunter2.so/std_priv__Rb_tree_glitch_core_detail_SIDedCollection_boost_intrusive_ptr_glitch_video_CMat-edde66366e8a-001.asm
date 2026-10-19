; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005d9a58, declared_size=88, range_size=88, mode=arm
; class-group: std::priv::_Rb_tree<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName, std::less<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName>, std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>, std::priv::_Select1st<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue> >, std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue> >, glitch::core::SAllocator<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt4priv8_Rb_treeIN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS1_5video17CMaterialRendererEEEtLb0ENS7_6detail23materialrenderermanager11SPropertiesENS3_15sidedcollection12SValueTraitsEE5SNameESt4lessISG_ESt4pairIKSG_NSF_8SIdValueEENS_10_Select1stISM_EENS_11_MapTraitsTISM_EENS2_10SAllocatorISM_LNS1_6memory13E_MEMORY_HINTE0EEEE8_M_eraseEPNS_18_Rb_tree_node_baseE
; demangled: std::priv::_Rb_tree<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName, std::less<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName>, std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>, std::priv::_Select1st<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue> >, std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue> >, glitch::core::SAllocator<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>, (glitch::memory::E_MEMORY_HINT)0> >::_M_erase(std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
005d9a58  70 40 2d e9                                      push {r4, r5, r6, lr}
005d9a5c  00 40 51 e2                                      subs r4, r1, #0
005d9a60  00 50 a0 e1                                      mov r5, r0
005d9a64  10 00 00 0a                                      beq #0x5d9aac
005d9a68  0c 10 94 e5                                      ldr r1, [r4, #0xc]
005d9a6c  05 00 a0 e1                                      mov r0, r5
005d9a70  f8 ff ff eb                                      bl #0x5d9a58
005d9a74  18 00 84 e2                                      add r0, r4, #0x18
005d9a78  08 60 94 e5                                      ldr r6, [r4, #8]
005d9a7c  59 dc f4 eb                                      bl #0x310be8
005d9a80  14 30 d4 e5                                      ldrb r3, [r4, #0x14]
005d9a84  00 00 53 e3                                      cmp r3, #0
005d9a88  03 00 00 0a                                      beq #0x5d9a9c
005d9a8c  10 00 94 e5                                      ldr r0, [r4, #0x10]
005d9a90  00 00 50 e3                                      cmp r0, #0
005d9a94  00 00 00 0a                                      beq #0x5d9a9c
005d9a98  86 d1 f4 eb                                      bl #0x30e0b8
005d9a9c  04 00 a0 e1                                      mov r0, r4
005d9aa0  6a da f4 eb                                      bl #0x310450
005d9aa4  00 40 56 e2                                      subs r4, r6, #0
005d9aa8  ee ff ff 1a                                      bne #0x5d9a68
005d9aac  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x005d9f18, declared_size=92, range_size=92, mode=arm
; class-group: std::priv::_Rb_tree<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName, std::less<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName>, std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>, std::priv::_Select1st<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue> >, std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue> >, glitch::core::SAllocator<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt4priv8_Rb_treeIN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS1_5video17CMaterialRendererEEEtLb0ENS7_6detail23materialrenderermanager11SPropertiesENS3_15sidedcollection12SValueTraitsEE5SNameESt4lessISG_ESt4pairIKSG_NSF_8SIdValueEENS_10_Select1stISM_EENS_11_MapTraitsTISM_EENS2_10SAllocatorISM_LNS1_6memory13E_MEMORY_HINTE0EEEE5eraseENS_17_Rb_tree_iteratorISM_SQ_EE
; demangled: std::priv::_Rb_tree<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName, std::less<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName>, std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>, std::priv::_Select1st<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue> >, std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue> >, glitch::core::SAllocator<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>, (glitch::memory::E_MEMORY_HINT)0> >::erase(std::priv::_Rb_tree_iterator<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>, std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue> > >)
; decoder-mode: arm
005d9f18  70 40 2d e9                                      push {r4, r5, r6, lr}
005d9f1c  00 40 a0 e1                                      mov r4, r0
005d9f20  0c 30 84 e2                                      add r3, r4, #0xc
005d9f24  00 00 91 e5                                      ldr r0, [r1]
005d9f28  08 20 84 e2                                      add r2, r4, #8
005d9f2c  04 10 84 e2                                      add r1, r4, #4
005d9f30  33 70 f5 eb                                      bl #0x336004
005d9f34  00 50 a0 e1                                      mov r5, r0
005d9f38  18 00 80 e2                                      add r0, r0, #0x18
005d9f3c  29 db f4 eb                                      bl #0x310be8
005d9f40  14 30 d5 e5                                      ldrb r3, [r5, #0x14]
005d9f44  00 00 53 e3                                      cmp r3, #0
005d9f48  03 00 00 0a                                      beq #0x5d9f5c
005d9f4c  10 00 95 e5                                      ldr r0, [r5, #0x10]
005d9f50  00 00 50 e3                                      cmp r0, #0
005d9f54  00 00 00 0a                                      beq #0x5d9f5c
005d9f58  56 d0 f4 eb                                      bl #0x30e0b8
005d9f5c  05 00 a0 e1                                      mov r0, r5
005d9f60  3a d9 f4 eb                                      bl #0x310450
005d9f64  10 30 94 e5                                      ldr r3, [r4, #0x10]
005d9f68  01 30 43 e2                                      sub r3, r3, #1
005d9f6c  10 30 84 e5                                      str r3, [r4, #0x10]
005d9f70  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x005dc0a0, declared_size=492, range_size=492, mode=arm
; class-group: std::priv::_Rb_tree<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName, std::less<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName>, std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>, std::priv::_Select1st<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue> >, std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue> >, glitch::core::SAllocator<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt4priv8_Rb_treeIN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS1_5video17CMaterialRendererEEEtLb0ENS7_6detail23materialrenderermanager11SPropertiesENS3_15sidedcollection12SValueTraitsEE5SNameESt4lessISG_ESt4pairIKSG_NSF_8SIdValueEENS_10_Select1stISM_EENS_11_MapTraitsTISM_EENS2_10SAllocatorISM_LNS1_6memory13E_MEMORY_HINTE0EEEE9_M_insertEPNS_18_Rb_tree_node_baseERKSM_SX_SX_.clone.11
; demangled: std::priv::_Rb_tree<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName, std::less<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName>, std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>, std::priv::_Select1st<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue> >, std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue> >, glitch::core::SAllocator<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>, (glitch::memory::E_MEMORY_HINT)0> >::_M_insert(std::priv::_Rb_tree_node_base*, std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue> const&, std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*) [clone .clone.11]
; decoder-mode: arm
005dc0a0  70 40 2d e9                                      push {r4, r5, r6, lr}
005dc0a4  02 00 51 e1                                      cmp r1, r2
005dc0a8  08 d0 4d e2                                      sub sp, sp, #8
005dc0ac  01 40 a0 e1                                      mov r4, r1
005dc0b0  00 50 a0 e1                                      mov r5, r0
005dc0b4  22 00 00 0a                                      beq #0x5dc144
005dc0b8  18 10 9d e5                                      ldr r1, [sp, #0x18]
005dc0bc  00 00 51 e3                                      cmp r1, #0
005dc0c0  48 00 00 0a                                      beq #0x5dc1e8
005dc0c4  00 10 a0 e3                                      mov r1, #0
005dc0c8  24 00 a0 e3                                      mov r0, #0x24
005dc0cc  04 20 8d e5                                      str r2, [sp, #4]
005dc0d0  00 30 8d e5                                      str r3, [sp]
005dc0d4  23 d1 f4 eb                                      bl #0x310568
005dc0d8  00 30 9d e5                                      ldr r3, [sp]
005dc0dc  00 60 a0 e1                                      mov r6, r0
005dc0e0  00 10 93 e5                                      ldr r1, [r3]
005dc0e4  10 10 80 e5                                      str r1, [r0, #0x10]
005dc0e8  04 10 d3 e5                                      ldrb r1, [r3, #4]
005dc0ec  14 10 c0 e5                                      strb r1, [r0, #0x14]
005dc0f0  08 10 93 e5                                      ldr r1, [r3, #8]
005dc0f4  18 10 80 e5                                      str r1, [r0, #0x18]
005dc0f8  00 00 51 e3                                      cmp r1, #0
005dc0fc  00 c0 91 15                                      ldrne ip, [r1]
005dc100  04 20 9d e5                                      ldr r2, [sp, #4]
005dc104  01 c0 8c 12                                      addne ip, ip, #1
005dc108  00 c0 81 15                                      strne ip, [r1]
005dc10c  0c c0 93 e5                                      ldr ip, [r3, #0xc]
005dc110  00 10 a0 e3                                      mov r1, #0
005dc114  1c c0 80 e5                                      str ip, [r0, #0x1c]
005dc118  b0 c1 d3 e1                                      ldrh ip, [r3, #0x10]
005dc11c  b0 c2 c0 e1                                      strh ip, [r0, #0x20]
005dc120  b2 31 d3 e1                                      ldrh r3, [r3, #0x12]
005dc124  0c 10 80 e5                                      str r1, [r0, #0xc]
005dc128  08 10 80 e5                                      str r1, [r0, #8]
005dc12c  b2 32 c0 e1                                      strh r3, [r0, #0x22]
005dc130  08 00 82 e5                                      str r0, [r2, #8]
005dc134  08 30 94 e5                                      ldr r3, [r4, #8]
005dc138  03 00 52 e1                                      cmp r2, r3
005dc13c  08 00 84 05                                      streq r0, [r4, #8]
005dc140  1d 00 00 ea                                      b #0x5dc1bc
005dc144  00 10 a0 e3                                      mov r1, #0
005dc148  24 00 a0 e3                                      mov r0, #0x24
005dc14c  04 20 8d e5                                      str r2, [sp, #4]
005dc150  00 30 8d e5                                      str r3, [sp]
005dc154  03 d1 f4 eb                                      bl #0x310568
005dc158  00 30 9d e5                                      ldr r3, [sp]
005dc15c  00 60 a0 e1                                      mov r6, r0
005dc160  00 10 93 e5                                      ldr r1, [r3]
005dc164  10 10 80 e5                                      str r1, [r0, #0x10]
005dc168  04 10 d3 e5                                      ldrb r1, [r3, #4]
005dc16c  14 10 c0 e5                                      strb r1, [r0, #0x14]
005dc170  08 10 93 e5                                      ldr r1, [r3, #8]
005dc174  18 10 80 e5                                      str r1, [r0, #0x18]
005dc178  00 00 51 e3                                      cmp r1, #0
005dc17c  00 c0 91 15                                      ldrne ip, [r1]
005dc180  04 20 9d e5                                      ldr r2, [sp, #4]
005dc184  01 c0 8c 12                                      addne ip, ip, #1
005dc188  00 c0 81 15                                      strne ip, [r1]
005dc18c  0c c0 93 e5                                      ldr ip, [r3, #0xc]
005dc190  00 10 a0 e3                                      mov r1, #0
005dc194  1c c0 80 e5                                      str ip, [r0, #0x1c]
005dc198  b0 c1 d3 e1                                      ldrh ip, [r3, #0x10]
005dc19c  b0 c2 c0 e1                                      strh ip, [r0, #0x20]
005dc1a0  b2 31 d3 e1                                      ldrh r3, [r3, #0x12]
005dc1a4  0c 10 80 e5                                      str r1, [r0, #0xc]
005dc1a8  08 10 80 e5                                      str r1, [r0, #8]
005dc1ac  b2 32 c0 e1                                      strh r3, [r0, #0x22]
005dc1b0  08 00 84 e5                                      str r0, [r4, #8]
005dc1b4  04 00 84 e5                                      str r0, [r4, #4]
005dc1b8  0c 00 84 e5                                      str r0, [r4, #0xc]
005dc1bc  06 00 a0 e1                                      mov r0, r6
005dc1c0  04 20 86 e5                                      str r2, [r6, #4]
005dc1c4  04 10 84 e2                                      add r1, r4, #4
005dc1c8  64 dd f4 eb                                      bl #0x313760
005dc1cc  10 30 94 e5                                      ldr r3, [r4, #0x10]
005dc1d0  05 00 a0 e1                                      mov r0, r5
005dc1d4  01 30 83 e2                                      add r3, r3, #1
005dc1d8  10 30 84 e5                                      str r3, [r4, #0x10]
005dc1dc  00 60 85 e5                                      str r6, [r5]
005dc1e0  08 d0 8d e2                                      add sp, sp, #8
005dc1e4  70 80 bd e8                                      pop {r4, r5, r6, pc}
005dc1e8  10 10 82 e2                                      add r1, r2, #0x10
005dc1ec  03 00 a0 e1                                      mov r0, r3
005dc1f0  04 20 8d e5                                      str r2, [sp, #4]
005dc1f4  00 30 8d e5                                      str r3, [sp]
005dc1f8  bc f0 ff eb                                      bl #0x5d84f0
005dc1fc  00 10 50 e2                                      subs r1, r0, #0
005dc200  04 20 9d e5                                      ldr r2, [sp, #4]
005dc204  00 30 9d e5                                      ldr r3, [sp]
005dc208  ad ff ff 1a                                      bne #0x5dc0c4
005dc20c  24 00 a0 e3                                      mov r0, #0x24
005dc210  04 20 8d e5                                      str r2, [sp, #4]
005dc214  00 30 8d e5                                      str r3, [sp]
005dc218  d2 d0 f4 eb                                      bl #0x310568
005dc21c  00 30 9d e5                                      ldr r3, [sp]
005dc220  00 10 93 e5                                      ldr r1, [r3]
005dc224  10 10 80 e5                                      str r1, [r0, #0x10]
005dc228  04 10 d3 e5                                      ldrb r1, [r3, #4]
005dc22c  14 10 c0 e5                                      strb r1, [r0, #0x14]
005dc230  08 10 93 e5                                      ldr r1, [r3, #8]
005dc234  18 10 80 e5                                      str r1, [r0, #0x18]
005dc238  00 00 51 e3                                      cmp r1, #0
005dc23c  04 20 9d e5                                      ldr r2, [sp, #4]
005dc240  02 00 00 0a                                      beq #0x5dc250
005dc244  00 c0 91 e5                                      ldr ip, [r1]
005dc248  01 c0 8c e2                                      add ip, ip, #1
005dc24c  00 c0 81 e5                                      str ip, [r1]
005dc250  0c c0 93 e5                                      ldr ip, [r3, #0xc]
005dc254  00 10 a0 e3                                      mov r1, #0
005dc258  00 60 a0 e1                                      mov r6, r0
005dc25c  1c c0 80 e5                                      str ip, [r0, #0x1c]
005dc260  b0 c1 d3 e1                                      ldrh ip, [r3, #0x10]
005dc264  b0 c2 c0 e1                                      strh ip, [r0, #0x20]
005dc268  b2 31 d3 e1                                      ldrh r3, [r3, #0x12]
005dc26c  0c 10 80 e5                                      str r1, [r0, #0xc]
005dc270  08 10 80 e5                                      str r1, [r0, #8]
005dc274  b2 32 c0 e1                                      strh r3, [r0, #0x22]
005dc278  0c 00 82 e5                                      str r0, [r2, #0xc]
005dc27c  0c 30 94 e5                                      ldr r3, [r4, #0xc]
005dc280  03 00 52 e1                                      cmp r2, r3
005dc284  0c 00 84 05                                      streq r0, [r4, #0xc]
005dc288  cb ff ff ea                                      b #0x5dc1bc

; FUNCTION 0x005dc28c, declared_size=440, range_size=440, mode=arm
; class-group: std::priv::_Rb_tree<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName, std::less<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName>, std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>, std::priv::_Select1st<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue> >, std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue> >, glitch::core::SAllocator<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt4priv8_Rb_treeIN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS1_5video17CMaterialRendererEEEtLb0ENS7_6detail23materialrenderermanager11SPropertiesENS3_15sidedcollection12SValueTraitsEE5SNameESt4lessISG_ESt4pairIKSG_NSF_8SIdValueEENS_10_Select1stISM_EENS_11_MapTraitsTISM_EENS2_10SAllocatorISM_LNS1_6memory13E_MEMORY_HINTE0EEEE13insert_uniqueERKSM_
; demangled: std::priv::_Rb_tree<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName, std::less<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName>, std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>, std::priv::_Select1st<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue> >, std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue> >, glitch::core::SAllocator<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>, (glitch::memory::E_MEMORY_HINT)0> >::insert_unique(std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue> const&)
; decoder-mode: arm
005dc28c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005dc290  04 50 91 e5                                      ldr r5, [r1, #4]
005dc294  10 d0 4d e2                                      sub sp, sp, #0x10
005dc298  01 60 a0 e1                                      mov r6, r1
005dc29c  00 00 55 e3                                      cmp r5, #0
005dc2a0  00 40 a0 e1                                      mov r4, r0
005dc2a4  02 70 a0 e1                                      mov r7, r2
005dc2a8  01 50 a0 01                                      moveq r5, r1
005dc2ac  1b 00 00 0a                                      beq #0x5dc320
005dc2b0  00 a0 92 e5                                      ldr sl, [r2]
005dc2b4  00 00 00 ea                                      b #0x5dc2bc
005dc2b8  03 50 a0 e1                                      mov r5, r3
005dc2bc  10 80 95 e5                                      ldr r8, [r5, #0x10]
005dc2c0  0a 00 a0 e1                                      mov r0, sl
005dc2c4  08 10 a0 e1                                      mov r1, r8
005dc2c8  13 c8 f4 eb                                      bl #0x30e31c
005dc2cc  00 00 50 e3                                      cmp r0, #0
005dc2d0  08 30 95 b5                                      ldrlt r3, [r5, #8]
005dc2d4  0c 30 95 a5                                      ldrge r3, [r5, #0xc]
005dc2d8  01 20 a0 b3                                      movlt r2, #1
005dc2dc  00 20 a0 a3                                      movge r2, #0
005dc2e0  00 00 53 e3                                      cmp r3, #0
005dc2e4  f3 ff ff 1a                                      bne #0x5dc2b8
005dc2e8  00 00 52 e3                                      cmp r2, #0
005dc2ec  05 90 a0 01                                      moveq sb, r5
005dc2f0  0a 00 00 1a                                      bne #0x5dc320
005dc2f4  08 00 a0 e1                                      mov r0, r8
005dc2f8  0a 10 a0 e1                                      mov r1, sl
005dc2fc  06 c8 f4 eb                                      bl #0x30e31c
005dc300  00 00 50 e3                                      cmp r0, #0
005dc304  00 30 a0 a3                                      movge r3, #0
005dc308  00 90 84 a5                                      strge sb, [r4]
005dc30c  04 30 c4 a5                                      strbge r3, [r4, #4]
005dc310  1f 00 00 ba                                      blt #0x5dc394
005dc314  04 00 a0 e1                                      mov r0, r4
005dc318  10 d0 8d e2                                      add sp, sp, #0x10
005dc31c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005dc320  08 30 96 e5                                      ldr r3, [r6, #8]
005dc324  03 00 55 e1                                      cmp r5, r3
005dc328  3a 00 00 0a                                      beq #0x5dc418
005dc32c  00 30 d5 e5                                      ldrb r3, [r5]
005dc330  00 00 53 e3                                      cmp r3, #0
005dc334  03 00 00 1a                                      bne #0x5dc348
005dc338  04 30 95 e5                                      ldr r3, [r5, #4]
005dc33c  04 30 93 e5                                      ldr r3, [r3, #4]
005dc340  03 00 55 e1                                      cmp r5, r3
005dc344  2e 00 00 0a                                      beq #0x5dc404
005dc348  08 20 95 e5                                      ldr r2, [r5, #8]
005dc34c  00 00 52 e3                                      cmp r2, #0
005dc350  01 00 00 1a                                      bne #0x5dc35c
005dc354  1a 00 00 ea                                      b #0x5dc3c4
005dc358  03 20 a0 e1                                      mov r2, r3
005dc35c  0c 30 92 e5                                      ldr r3, [r2, #0xc]
005dc360  00 00 53 e3                                      cmp r3, #0
005dc364  fb ff ff 1a                                      bne #0x5dc358
005dc368  10 80 92 e5                                      ldr r8, [r2, #0x10]
005dc36c  00 a0 97 e5                                      ldr sl, [r7]
005dc370  02 90 a0 e1                                      mov sb, r2
005dc374  08 00 a0 e1                                      mov r0, r8
005dc378  0a 10 a0 e1                                      mov r1, sl
005dc37c  e6 c7 f4 eb                                      bl #0x30e31c
005dc380  00 00 50 e3                                      cmp r0, #0
005dc384  00 30 a0 a3                                      movge r3, #0
005dc388  00 90 84 a5                                      strge sb, [r4]
005dc38c  04 30 c4 a5                                      strbge r3, [r4, #4]
005dc390  df ff ff aa                                      bge #0x5dc314
005dc394  05 20 a0 e1                                      mov r2, r5
005dc398  07 30 a0 e1                                      mov r3, r7
005dc39c  00 c0 a0 e3                                      mov ip, #0
005dc3a0  06 10 a0 e1                                      mov r1, r6
005dc3a4  08 00 8d e2                                      add r0, sp, #8
005dc3a8  00 c0 8d e5                                      str ip, [sp]
005dc3ac  3b ff ff eb                                      bl #0x5dc0a0
005dc3b0  08 30 9d e5                                      ldr r3, [sp, #8]
005dc3b4  01 20 a0 e3                                      mov r2, #1
005dc3b8  04 20 c4 e5                                      strb r2, [r4, #4]
005dc3bc  00 30 84 e5                                      str r3, [r4]
005dc3c0  d3 ff ff ea                                      b #0x5dc314
005dc3c4  04 30 95 e5                                      ldr r3, [r5, #4]
005dc3c8  08 20 93 e5                                      ldr r2, [r3, #8]
005dc3cc  02 00 55 e1                                      cmp r5, r2
005dc3d0  03 90 a0 11                                      movne sb, r3
005dc3d4  00 a0 97 15                                      ldrne sl, [r7]
005dc3d8  10 80 93 15                                      ldrne r8, [r3, #0x10]
005dc3dc  01 00 00 0a                                      beq #0x5dc3e8
005dc3e0  c3 ff ff ea                                      b #0x5dc2f4
005dc3e4  09 30 a0 e1                                      mov r3, sb
005dc3e8  04 90 93 e5                                      ldr sb, [r3, #4]
005dc3ec  08 20 99 e5                                      ldr r2, [sb, #8]
005dc3f0  03 00 52 e1                                      cmp r2, r3
005dc3f4  fa ff ff 0a                                      beq #0x5dc3e4
005dc3f8  00 a0 97 e5                                      ldr sl, [r7]
005dc3fc  10 80 99 e5                                      ldr r8, [sb, #0x10]
005dc400  bb ff ff ea                                      b #0x5dc2f4
005dc404  0c 30 95 e5                                      ldr r3, [r5, #0xc]
005dc408  00 a0 97 e5                                      ldr sl, [r7]
005dc40c  03 90 a0 e1                                      mov sb, r3
005dc410  10 80 93 e5                                      ldr r8, [r3, #0x10]
005dc414  b6 ff ff ea                                      b #0x5dc2f4
005dc418  05 20 a0 e1                                      mov r2, r5
005dc41c  07 30 a0 e1                                      mov r3, r7
005dc420  06 10 a0 e1                                      mov r1, r6
005dc424  0c 00 8d e2                                      add r0, sp, #0xc
005dc428  00 50 8d e5                                      str r5, [sp]
005dc42c  1b ff ff eb                                      bl #0x5dc0a0
005dc430  0c 30 9d e5                                      ldr r3, [sp, #0xc]
005dc434  01 20 a0 e3                                      mov r2, #1
005dc438  04 20 c4 e5                                      strb r2, [r4, #4]
005dc43c  00 30 84 e5                                      str r3, [r4]
005dc440  b3 ff ff ea                                      b #0x5dc314

; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005e5c28, declared_size=64, range_size=64, mode=arm
; class-group: std::priv::_Rb_tree<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName, std::less<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName>, std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>, std::priv::_Select1st<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue> >, std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue> >, glitch::core::SAllocator<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt4priv8_Rb_treeIN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS1_5video7IShaderEEEtLb0ENS7_6detail13shadermanager17SShaderPropertiesENS3_15sidedcollection12SValueTraitsEE5SNameESt4lessISG_ESt4pairIKSG_NSF_8SIdValueEENS_10_Select1stISM_EENS_11_MapTraitsTISM_EENS2_10SAllocatorISM_LNS1_6memory13E_MEMORY_HINTE0EEEE5eraseENS_17_Rb_tree_iteratorISM_SQ_EE
; demangled: std::priv::_Rb_tree<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName, std::less<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName>, std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>, std::priv::_Select1st<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue> >, std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue> >, glitch::core::SAllocator<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>, (glitch::memory::E_MEMORY_HINT)0> >::erase(std::priv::_Rb_tree_iterator<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>, std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue> > >)
; decoder-mode: arm
005e5c28  70 40 2d e9                                      push {r4, r5, r6, lr}
005e5c2c  00 40 a0 e1                                      mov r4, r0
005e5c30  0c 30 84 e2                                      add r3, r4, #0xc
005e5c34  08 20 84 e2                                      add r2, r4, #8
005e5c38  00 00 91 e5                                      ldr r0, [r1]
005e5c3c  04 10 84 e2                                      add r1, r4, #4
005e5c40  ef 40 f5 eb                                      bl #0x336004
005e5c44  00 50 a0 e1                                      mov r5, r0
005e5c48  10 00 80 e2                                      add r0, r0, #0x10
005e5c4c  e6 ff ff eb                                      bl #0x5e5bec
005e5c50  05 00 a0 e1                                      mov r0, r5
005e5c54  fd a9 f4 eb                                      bl #0x310450
005e5c58  10 30 94 e5                                      ldr r3, [r4, #0x10]
005e5c5c  01 30 43 e2                                      sub r3, r3, #1
005e5c60  10 30 84 e5                                      str r3, [r4, #0x10]
005e5c64  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x005e5c68, declared_size=60, range_size=60, mode=arm
; class-group: std::priv::_Rb_tree<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName, std::less<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName>, std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>, std::priv::_Select1st<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue> >, std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue> >, glitch::core::SAllocator<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt4priv8_Rb_treeIN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS1_5video7IShaderEEEtLb0ENS7_6detail13shadermanager17SShaderPropertiesENS3_15sidedcollection12SValueTraitsEE5SNameESt4lessISG_ESt4pairIKSG_NSF_8SIdValueEENS_10_Select1stISM_EENS_11_MapTraitsTISM_EENS2_10SAllocatorISM_LNS1_6memory13E_MEMORY_HINTE0EEEE8_M_eraseEPNS_18_Rb_tree_node_baseE
; demangled: std::priv::_Rb_tree<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName, std::less<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName>, std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>, std::priv::_Select1st<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue> >, std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue> >, glitch::core::SAllocator<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>, (glitch::memory::E_MEMORY_HINT)0> >::_M_erase(std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
005e5c68  70 40 2d e9                                      push {r4, r5, r6, lr}
005e5c6c  00 40 51 e2                                      subs r4, r1, #0
005e5c70  00 50 a0 e1                                      mov r5, r0
005e5c74  09 00 00 0a                                      beq #0x5e5ca0
005e5c78  0c 10 94 e5                                      ldr r1, [r4, #0xc]
005e5c7c  05 00 a0 e1                                      mov r0, r5
005e5c80  f8 ff ff eb                                      bl #0x5e5c68
005e5c84  08 60 94 e5                                      ldr r6, [r4, #8]
005e5c88  10 00 84 e2                                      add r0, r4, #0x10
005e5c8c  d6 ff ff eb                                      bl #0x5e5bec
005e5c90  04 00 a0 e1                                      mov r0, r4
005e5c94  ed a9 f4 eb                                      bl #0x310450
005e5c98  00 40 56 e2                                      subs r4, r6, #0
005e5c9c  f5 ff ff 1a                                      bne #0x5e5c78
005e5ca0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x005e6cdc, declared_size=444, range_size=444, mode=arm
; class-group: std::priv::_Rb_tree<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName, std::less<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName>, std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>, std::priv::_Select1st<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue> >, std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue> >, glitch::core::SAllocator<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt4priv8_Rb_treeIN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS1_5video7IShaderEEEtLb0ENS7_6detail13shadermanager17SShaderPropertiesENS3_15sidedcollection12SValueTraitsEE5SNameESt4lessISG_ESt4pairIKSG_NSF_8SIdValueEENS_10_Select1stISM_EENS_11_MapTraitsTISM_EENS2_10SAllocatorISM_LNS1_6memory13E_MEMORY_HINTE0EEEE9_M_insertEPNS_18_Rb_tree_node_baseERKSM_SX_SX_.clone.6
; demangled: std::priv::_Rb_tree<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName, std::less<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName>, std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>, std::priv::_Select1st<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue> >, std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue> >, glitch::core::SAllocator<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>, (glitch::memory::E_MEMORY_HINT)0> >::_M_insert(std::priv::_Rb_tree_node_base*, std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue> const&, std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*) [clone .clone.6]
; decoder-mode: arm
005e6cdc  70 40 2d e9                                      push {r4, r5, r6, lr}
005e6ce0  02 00 51 e1                                      cmp r1, r2
005e6ce4  08 d0 4d e2                                      sub sp, sp, #8
005e6ce8  01 40 a0 e1                                      mov r4, r1
005e6cec  00 50 a0 e1                                      mov r5, r0
005e6cf0  1e 00 00 0a                                      beq #0x5e6d70
005e6cf4  18 10 9d e5                                      ldr r1, [sp, #0x18]
005e6cf8  00 00 51 e3                                      cmp r1, #0
005e6cfc  40 00 00 0a                                      beq #0x5e6e04
005e6d00  00 10 a0 e3                                      mov r1, #0
005e6d04  20 00 a0 e3                                      mov r0, #0x20
005e6d08  04 20 8d e5                                      str r2, [sp, #4]
005e6d0c  00 30 8d e5                                      str r3, [sp]
005e6d10  14 a6 f4 eb                                      bl #0x310568
005e6d14  00 30 9d e5                                      ldr r3, [sp]
005e6d18  00 60 a0 e1                                      mov r6, r0
005e6d1c  00 10 93 e5                                      ldr r1, [r3]
005e6d20  10 10 80 e5                                      str r1, [r0, #0x10]
005e6d24  04 10 d3 e5                                      ldrb r1, [r3, #4]
005e6d28  14 10 c0 e5                                      strb r1, [r0, #0x14]
005e6d2c  08 10 93 e5                                      ldr r1, [r3, #8]
005e6d30  18 10 80 e5                                      str r1, [r0, #0x18]
005e6d34  00 00 51 e3                                      cmp r1, #0
005e6d38  04 c0 91 15                                      ldrne ip, [r1, #4]
005e6d3c  04 20 9d e5                                      ldr r2, [sp, #4]
005e6d40  01 c0 8c 12                                      addne ip, ip, #1
005e6d44  04 c0 81 15                                      strne ip, [r1, #4]
005e6d48  bc 30 d3 e1                                      ldrh r3, [r3, #0xc]
005e6d4c  00 10 a0 e3                                      mov r1, #0
005e6d50  0c 10 80 e5                                      str r1, [r0, #0xc]
005e6d54  bc 31 c0 e1                                      strh r3, [r0, #0x1c]
005e6d58  08 10 80 e5                                      str r1, [r0, #8]
005e6d5c  08 00 82 e5                                      str r0, [r2, #8]
005e6d60  08 30 94 e5                                      ldr r3, [r4, #8]
005e6d64  03 00 52 e1                                      cmp r2, r3
005e6d68  08 00 84 05                                      streq r0, [r4, #8]
005e6d6c  19 00 00 ea                                      b #0x5e6dd8
005e6d70  00 10 a0 e3                                      mov r1, #0
005e6d74  20 00 a0 e3                                      mov r0, #0x20
005e6d78  04 20 8d e5                                      str r2, [sp, #4]
005e6d7c  00 30 8d e5                                      str r3, [sp]
005e6d80  f8 a5 f4 eb                                      bl #0x310568
005e6d84  00 30 9d e5                                      ldr r3, [sp]
005e6d88  00 60 a0 e1                                      mov r6, r0
005e6d8c  00 10 93 e5                                      ldr r1, [r3]
005e6d90  10 10 80 e5                                      str r1, [r0, #0x10]
005e6d94  04 10 d3 e5                                      ldrb r1, [r3, #4]
005e6d98  14 10 c0 e5                                      strb r1, [r0, #0x14]
005e6d9c  08 10 93 e5                                      ldr r1, [r3, #8]
005e6da0  18 10 80 e5                                      str r1, [r0, #0x18]
005e6da4  00 00 51 e3                                      cmp r1, #0
005e6da8  04 c0 91 15                                      ldrne ip, [r1, #4]
005e6dac  04 20 9d e5                                      ldr r2, [sp, #4]
005e6db0  01 c0 8c 12                                      addne ip, ip, #1
005e6db4  04 c0 81 15                                      strne ip, [r1, #4]
005e6db8  bc 30 d3 e1                                      ldrh r3, [r3, #0xc]
005e6dbc  00 10 a0 e3                                      mov r1, #0
005e6dc0  0c 10 80 e5                                      str r1, [r0, #0xc]
005e6dc4  bc 31 c0 e1                                      strh r3, [r0, #0x1c]
005e6dc8  08 10 80 e5                                      str r1, [r0, #8]
005e6dcc  08 00 84 e5                                      str r0, [r4, #8]
005e6dd0  04 00 84 e5                                      str r0, [r4, #4]
005e6dd4  0c 00 84 e5                                      str r0, [r4, #0xc]
005e6dd8  06 00 a0 e1                                      mov r0, r6
005e6ddc  04 20 86 e5                                      str r2, [r6, #4]
005e6de0  04 10 84 e2                                      add r1, r4, #4
005e6de4  5d b2 f4 eb                                      bl #0x313760
005e6de8  10 30 94 e5                                      ldr r3, [r4, #0x10]
005e6dec  05 00 a0 e1                                      mov r0, r5
005e6df0  01 30 83 e2                                      add r3, r3, #1
005e6df4  10 30 84 e5                                      str r3, [r4, #0x10]
005e6df8  00 60 85 e5                                      str r6, [r5]
005e6dfc  08 d0 8d e2                                      add sp, sp, #8
005e6e00  70 80 bd e8                                      pop {r4, r5, r6, pc}
005e6e04  10 10 82 e2                                      add r1, r2, #0x10
005e6e08  03 00 a0 e1                                      mov r0, r3
005e6e0c  04 20 8d e5                                      str r2, [sp, #4]
005e6e10  00 30 8d e5                                      str r3, [sp]
005e6e14  d0 f9 ff eb                                      bl #0x5e555c
005e6e18  00 10 50 e2                                      subs r1, r0, #0
005e6e1c  04 20 9d e5                                      ldr r2, [sp, #4]
005e6e20  00 30 9d e5                                      ldr r3, [sp]
005e6e24  b5 ff ff 1a                                      bne #0x5e6d00
005e6e28  20 00 a0 e3                                      mov r0, #0x20
005e6e2c  04 20 8d e5                                      str r2, [sp, #4]
005e6e30  00 30 8d e5                                      str r3, [sp]
005e6e34  cb a5 f4 eb                                      bl #0x310568
005e6e38  00 30 9d e5                                      ldr r3, [sp]
005e6e3c  00 10 93 e5                                      ldr r1, [r3]
005e6e40  10 10 80 e5                                      str r1, [r0, #0x10]
005e6e44  04 10 d3 e5                                      ldrb r1, [r3, #4]
005e6e48  14 10 c0 e5                                      strb r1, [r0, #0x14]
005e6e4c  08 10 93 e5                                      ldr r1, [r3, #8]
005e6e50  18 10 80 e5                                      str r1, [r0, #0x18]
005e6e54  00 00 51 e3                                      cmp r1, #0
005e6e58  04 20 9d e5                                      ldr r2, [sp, #4]
005e6e5c  02 00 00 0a                                      beq #0x5e6e6c
005e6e60  04 c0 91 e5                                      ldr ip, [r1, #4]
005e6e64  01 c0 8c e2                                      add ip, ip, #1
005e6e68  04 c0 81 e5                                      str ip, [r1, #4]
005e6e6c  bc 30 d3 e1                                      ldrh r3, [r3, #0xc]
005e6e70  00 10 a0 e3                                      mov r1, #0
005e6e74  0c 10 80 e5                                      str r1, [r0, #0xc]
005e6e78  bc 31 c0 e1                                      strh r3, [r0, #0x1c]
005e6e7c  08 10 80 e5                                      str r1, [r0, #8]
005e6e80  0c 00 82 e5                                      str r0, [r2, #0xc]
005e6e84  0c 30 94 e5                                      ldr r3, [r4, #0xc]
005e6e88  00 60 a0 e1                                      mov r6, r0
005e6e8c  03 00 52 e1                                      cmp r2, r3
005e6e90  0c 00 84 05                                      streq r0, [r4, #0xc]
005e6e94  cf ff ff ea                                      b #0x5e6dd8

; FUNCTION 0x005e6e98, declared_size=440, range_size=440, mode=arm
; class-group: std::priv::_Rb_tree<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName, std::less<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName>, std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>, std::priv::_Select1st<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue> >, std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue> >, glitch::core::SAllocator<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt4priv8_Rb_treeIN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS1_5video7IShaderEEEtLb0ENS7_6detail13shadermanager17SShaderPropertiesENS3_15sidedcollection12SValueTraitsEE5SNameESt4lessISG_ESt4pairIKSG_NSF_8SIdValueEENS_10_Select1stISM_EENS_11_MapTraitsTISM_EENS2_10SAllocatorISM_LNS1_6memory13E_MEMORY_HINTE0EEEE13insert_uniqueERKSM_
; demangled: std::priv::_Rb_tree<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName, std::less<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName>, std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>, std::priv::_Select1st<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue> >, std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue> >, glitch::core::SAllocator<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>, (glitch::memory::E_MEMORY_HINT)0> >::insert_unique(std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue> const&)
; decoder-mode: arm
005e6e98  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005e6e9c  04 50 91 e5                                      ldr r5, [r1, #4]
005e6ea0  10 d0 4d e2                                      sub sp, sp, #0x10
005e6ea4  01 60 a0 e1                                      mov r6, r1
005e6ea8  00 00 55 e3                                      cmp r5, #0
005e6eac  00 40 a0 e1                                      mov r4, r0
005e6eb0  02 70 a0 e1                                      mov r7, r2
005e6eb4  01 50 a0 01                                      moveq r5, r1
005e6eb8  1b 00 00 0a                                      beq #0x5e6f2c
005e6ebc  00 a0 92 e5                                      ldr sl, [r2]
005e6ec0  00 00 00 ea                                      b #0x5e6ec8
005e6ec4  03 50 a0 e1                                      mov r5, r3
005e6ec8  10 80 95 e5                                      ldr r8, [r5, #0x10]
005e6ecc  0a 00 a0 e1                                      mov r0, sl
005e6ed0  08 10 a0 e1                                      mov r1, r8
005e6ed4  10 9d f4 eb                                      bl #0x30e31c
005e6ed8  00 00 50 e3                                      cmp r0, #0
005e6edc  08 30 95 b5                                      ldrlt r3, [r5, #8]
005e6ee0  0c 30 95 a5                                      ldrge r3, [r5, #0xc]
005e6ee4  01 20 a0 b3                                      movlt r2, #1
005e6ee8  00 20 a0 a3                                      movge r2, #0
005e6eec  00 00 53 e3                                      cmp r3, #0
005e6ef0  f3 ff ff 1a                                      bne #0x5e6ec4
005e6ef4  00 00 52 e3                                      cmp r2, #0
005e6ef8  05 90 a0 01                                      moveq sb, r5
005e6efc  0a 00 00 1a                                      bne #0x5e6f2c
005e6f00  08 00 a0 e1                                      mov r0, r8
005e6f04  0a 10 a0 e1                                      mov r1, sl
005e6f08  03 9d f4 eb                                      bl #0x30e31c
005e6f0c  00 00 50 e3                                      cmp r0, #0
005e6f10  00 30 a0 a3                                      movge r3, #0
005e6f14  00 90 84 a5                                      strge sb, [r4]
005e6f18  04 30 c4 a5                                      strbge r3, [r4, #4]
005e6f1c  1f 00 00 ba                                      blt #0x5e6fa0
005e6f20  04 00 a0 e1                                      mov r0, r4
005e6f24  10 d0 8d e2                                      add sp, sp, #0x10
005e6f28  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005e6f2c  08 30 96 e5                                      ldr r3, [r6, #8]
005e6f30  03 00 55 e1                                      cmp r5, r3
005e6f34  3a 00 00 0a                                      beq #0x5e7024
005e6f38  00 30 d5 e5                                      ldrb r3, [r5]
005e6f3c  00 00 53 e3                                      cmp r3, #0
005e6f40  03 00 00 1a                                      bne #0x5e6f54
005e6f44  04 30 95 e5                                      ldr r3, [r5, #4]
005e6f48  04 30 93 e5                                      ldr r3, [r3, #4]
005e6f4c  03 00 55 e1                                      cmp r5, r3
005e6f50  2e 00 00 0a                                      beq #0x5e7010
005e6f54  08 20 95 e5                                      ldr r2, [r5, #8]
005e6f58  00 00 52 e3                                      cmp r2, #0
005e6f5c  01 00 00 1a                                      bne #0x5e6f68
005e6f60  1a 00 00 ea                                      b #0x5e6fd0
005e6f64  03 20 a0 e1                                      mov r2, r3
005e6f68  0c 30 92 e5                                      ldr r3, [r2, #0xc]
005e6f6c  00 00 53 e3                                      cmp r3, #0
005e6f70  fb ff ff 1a                                      bne #0x5e6f64
005e6f74  10 80 92 e5                                      ldr r8, [r2, #0x10]
005e6f78  00 a0 97 e5                                      ldr sl, [r7]
005e6f7c  02 90 a0 e1                                      mov sb, r2
005e6f80  08 00 a0 e1                                      mov r0, r8
005e6f84  0a 10 a0 e1                                      mov r1, sl
005e6f88  e3 9c f4 eb                                      bl #0x30e31c
005e6f8c  00 00 50 e3                                      cmp r0, #0
005e6f90  00 30 a0 a3                                      movge r3, #0
005e6f94  00 90 84 a5                                      strge sb, [r4]
005e6f98  04 30 c4 a5                                      strbge r3, [r4, #4]
005e6f9c  df ff ff aa                                      bge #0x5e6f20
005e6fa0  05 20 a0 e1                                      mov r2, r5
005e6fa4  07 30 a0 e1                                      mov r3, r7
005e6fa8  00 c0 a0 e3                                      mov ip, #0
005e6fac  06 10 a0 e1                                      mov r1, r6
005e6fb0  08 00 8d e2                                      add r0, sp, #8
005e6fb4  00 c0 8d e5                                      str ip, [sp]
005e6fb8  47 ff ff eb                                      bl #0x5e6cdc
005e6fbc  08 30 9d e5                                      ldr r3, [sp, #8]
005e6fc0  01 20 a0 e3                                      mov r2, #1
005e6fc4  04 20 c4 e5                                      strb r2, [r4, #4]
005e6fc8  00 30 84 e5                                      str r3, [r4]
005e6fcc  d3 ff ff ea                                      b #0x5e6f20
005e6fd0  04 30 95 e5                                      ldr r3, [r5, #4]
005e6fd4  08 20 93 e5                                      ldr r2, [r3, #8]
005e6fd8  02 00 55 e1                                      cmp r5, r2
005e6fdc  03 90 a0 11                                      movne sb, r3
005e6fe0  00 a0 97 15                                      ldrne sl, [r7]
005e6fe4  10 80 93 15                                      ldrne r8, [r3, #0x10]
005e6fe8  01 00 00 0a                                      beq #0x5e6ff4
005e6fec  c3 ff ff ea                                      b #0x5e6f00
005e6ff0  09 30 a0 e1                                      mov r3, sb
005e6ff4  04 90 93 e5                                      ldr sb, [r3, #4]
005e6ff8  08 20 99 e5                                      ldr r2, [sb, #8]
005e6ffc  03 00 52 e1                                      cmp r2, r3
005e7000  fa ff ff 0a                                      beq #0x5e6ff0
005e7004  00 a0 97 e5                                      ldr sl, [r7]
005e7008  10 80 99 e5                                      ldr r8, [sb, #0x10]
005e700c  bb ff ff ea                                      b #0x5e6f00
005e7010  0c 30 95 e5                                      ldr r3, [r5, #0xc]
005e7014  00 a0 97 e5                                      ldr sl, [r7]
005e7018  03 90 a0 e1                                      mov sb, r3
005e701c  10 80 93 e5                                      ldr r8, [r3, #0x10]
005e7020  b6 ff ff ea                                      b #0x5e6f00
005e7024  05 20 a0 e1                                      mov r2, r5
005e7028  07 30 a0 e1                                      mov r3, r7
005e702c  06 10 a0 e1                                      mov r1, r6
005e7030  0c 00 8d e2                                      add r0, sp, #0xc
005e7034  00 50 8d e5                                      str r5, [sp]
005e7038  27 ff ff eb                                      bl #0x5e6cdc
005e703c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
005e7040  01 20 a0 e3                                      mov r2, #1
005e7044  04 20 c4 e5                                      strb r2, [r4, #4]
005e7048  00 30 84 e5                                      str r3, [r4]
005e704c  b3 ff ff ea                                      b #0x5e6f20

; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005e868c, declared_size=104, range_size=104, mode=arm
; class-group: std::priv::_Rb_tree<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName, std::less<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName>, std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>, std::priv::_Select1st<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue> >, std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue> >, glitch::core::SAllocator<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt4priv8_Rb_treeIN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS1_5video8ITextureEEEtLb0ENS7_6detail14texturemanager18STexturePropertiesENS3_15sidedcollection12SValueTraitsEE5SNameESt4lessISG_ESt4pairIKSG_NSF_8SIdValueEENS_10_Select1stISM_EENS_11_MapTraitsTISM_EENS2_10SAllocatorISM_LNS1_6memory13E_MEMORY_HINTE0EEEE14_M_create_nodeERKSM_
; demangled: std::priv::_Rb_tree<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName, std::less<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName>, std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>, std::priv::_Select1st<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue> >, std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue> >, glitch::core::SAllocator<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>, (glitch::memory::E_MEMORY_HINT)0> >::_M_create_node(std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue> const&)
; decoder-mode: arm
005e868c  70 40 2d e9                                      push {r4, r5, r6, lr}
005e8690  38 00 a0 e3                                      mov r0, #0x38
005e8694  01 50 a0 e1                                      mov r5, r1
005e8698  00 10 a0 e3                                      mov r1, #0
005e869c  b1 9f f4 eb                                      bl #0x310568
005e86a0  00 20 95 e5                                      ldr r2, [r5]
005e86a4  00 40 a0 e1                                      mov r4, r0
005e86a8  18 30 80 e2                                      add r3, r0, #0x18
005e86ac  10 20 84 e5                                      str r2, [r4, #0x10]
005e86b0  04 20 d5 e5                                      ldrb r2, [r5, #4]
005e86b4  28 30 84 e5                                      str r3, [r4, #0x28]
005e86b8  2c 30 84 e5                                      str r3, [r4, #0x2c]
005e86bc  14 20 c4 e5                                      strb r2, [r4, #0x14]
005e86c0  03 00 a0 e1                                      mov r0, r3
005e86c4  1c 10 95 e5                                      ldr r1, [r5, #0x1c]
005e86c8  18 20 95 e5                                      ldr r2, [r5, #0x18]
005e86cc  48 f6 f4 eb                                      bl #0x325ff4
005e86d0  20 20 95 e5                                      ldr r2, [r5, #0x20]
005e86d4  00 30 a0 e3                                      mov r3, #0
005e86d8  04 00 a0 e1                                      mov r0, r4
005e86dc  30 20 84 e5                                      str r2, [r4, #0x30]
005e86e0  b4 52 d5 e1                                      ldrh r5, [r5, #0x24]
005e86e4  0c 30 84 e5                                      str r3, [r4, #0xc]
005e86e8  08 30 84 e5                                      str r3, [r4, #8]
005e86ec  b4 53 c4 e1                                      strh r5, [r4, #0x34]
005e86f0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x005e8acc, declared_size=232, range_size=232, mode=arm
; class-group: std::priv::_Rb_tree<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName, std::less<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName>, std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>, std::priv::_Select1st<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue> >, std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue> >, glitch::core::SAllocator<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt4priv8_Rb_treeIN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS1_5video8ITextureEEEtLb0ENS7_6detail14texturemanager18STexturePropertiesENS3_15sidedcollection12SValueTraitsEE5SNameESt4lessISG_ESt4pairIKSG_NSF_8SIdValueEENS_10_Select1stISM_EENS_11_MapTraitsTISM_EENS2_10SAllocatorISM_LNS1_6memory13E_MEMORY_HINTE0EEEE9_M_insertEPNS_18_Rb_tree_node_baseERKSM_SX_SX_.clone.6
; demangled: std::priv::_Rb_tree<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName, std::less<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName>, std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>, std::priv::_Select1st<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue> >, std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue> >, glitch::core::SAllocator<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>, (glitch::memory::E_MEMORY_HINT)0> >::_M_insert(std::priv::_Rb_tree_node_base*, std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue> const&, std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*) [clone .clone.6]
; decoder-mode: arm
005e8acc  70 40 2d e9                                      push {r4, r5, r6, lr}
005e8ad0  02 00 51 e1                                      cmp r1, r2
005e8ad4  08 d0 4d e2                                      sub sp, sp, #8
005e8ad8  01 40 a0 e1                                      mov r4, r1
005e8adc  00 50 a0 e1                                      mov r5, r0
005e8ae0  0d 00 00 0a                                      beq #0x5e8b1c
005e8ae4  18 10 9d e5                                      ldr r1, [sp, #0x18]
005e8ae8  00 00 51 e3                                      cmp r1, #0
005e8aec  1e 00 00 0a                                      beq #0x5e8b6c
005e8af0  03 10 a0 e1                                      mov r1, r3
005e8af4  04 00 a0 e1                                      mov r0, r4
005e8af8  00 20 8d e5                                      str r2, [sp]
005e8afc  e2 fe ff eb                                      bl #0x5e868c
005e8b00  00 20 9d e5                                      ldr r2, [sp]
005e8b04  00 60 a0 e1                                      mov r6, r0
005e8b08  08 00 82 e5                                      str r0, [r2, #8]
005e8b0c  08 30 94 e5                                      ldr r3, [r4, #8]
005e8b10  03 00 52 e1                                      cmp r2, r3
005e8b14  08 00 84 05                                      streq r0, [r4, #8]
005e8b18  08 00 00 ea                                      b #0x5e8b40
005e8b1c  03 10 a0 e1                                      mov r1, r3
005e8b20  04 00 a0 e1                                      mov r0, r4
005e8b24  00 20 8d e5                                      str r2, [sp]
005e8b28  d7 fe ff eb                                      bl #0x5e868c
005e8b2c  08 00 84 e5                                      str r0, [r4, #8]
005e8b30  04 00 84 e5                                      str r0, [r4, #4]
005e8b34  0c 00 84 e5                                      str r0, [r4, #0xc]
005e8b38  00 20 9d e5                                      ldr r2, [sp]
005e8b3c  00 60 a0 e1                                      mov r6, r0
005e8b40  06 00 a0 e1                                      mov r0, r6
005e8b44  04 20 86 e5                                      str r2, [r6, #4]
005e8b48  04 10 84 e2                                      add r1, r4, #4
005e8b4c  03 ab f4 eb                                      bl #0x313760
005e8b50  10 30 94 e5                                      ldr r3, [r4, #0x10]
005e8b54  05 00 a0 e1                                      mov r0, r5
005e8b58  01 30 83 e2                                      add r3, r3, #1
005e8b5c  10 30 84 e5                                      str r3, [r4, #0x10]
005e8b60  00 60 85 e5                                      str r6, [r5]
005e8b64  08 d0 8d e2                                      add sp, sp, #8
005e8b68  70 80 bd e8                                      pop {r4, r5, r6, pc}
005e8b6c  03 00 a0 e1                                      mov r0, r3
005e8b70  10 10 82 e2                                      add r1, r2, #0x10
005e8b74  0c 00 8d e8                                      stm sp, {r2, r3}
005e8b78  71 fe ff eb                                      bl #0x5e8544
005e8b7c  00 00 50 e3                                      cmp r0, #0
005e8b80  0c 00 9d e8                                      ldm sp, {r2, r3}
005e8b84  d9 ff ff 1a                                      bne #0x5e8af0
005e8b88  03 10 a0 e1                                      mov r1, r3
005e8b8c  04 00 a0 e1                                      mov r0, r4
005e8b90  00 20 8d e5                                      str r2, [sp]
005e8b94  bc fe ff eb                                      bl #0x5e868c
005e8b98  00 20 9d e5                                      ldr r2, [sp]
005e8b9c  00 60 a0 e1                                      mov r6, r0
005e8ba0  0c 00 82 e5                                      str r0, [r2, #0xc]
005e8ba4  0c 30 94 e5                                      ldr r3, [r4, #0xc]
005e8ba8  03 00 52 e1                                      cmp r2, r3
005e8bac  0c 00 84 05                                      streq r0, [r4, #0xc]
005e8bb0  e2 ff ff ea                                      b #0x5e8b40

; FUNCTION 0x005e8c1c, declared_size=440, range_size=440, mode=arm
; class-group: std::priv::_Rb_tree<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName, std::less<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName>, std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>, std::priv::_Select1st<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue> >, std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue> >, glitch::core::SAllocator<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt4priv8_Rb_treeIN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS1_5video8ITextureEEEtLb0ENS7_6detail14texturemanager18STexturePropertiesENS3_15sidedcollection12SValueTraitsEE5SNameESt4lessISG_ESt4pairIKSG_NSF_8SIdValueEENS_10_Select1stISM_EENS_11_MapTraitsTISM_EENS2_10SAllocatorISM_LNS1_6memory13E_MEMORY_HINTE0EEEE13insert_uniqueERKSM_
; demangled: std::priv::_Rb_tree<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName, std::less<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName>, std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>, std::priv::_Select1st<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue> >, std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue> >, glitch::core::SAllocator<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>, (glitch::memory::E_MEMORY_HINT)0> >::insert_unique(std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue> const&)
; decoder-mode: arm
005e8c1c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005e8c20  04 50 91 e5                                      ldr r5, [r1, #4]
005e8c24  10 d0 4d e2                                      sub sp, sp, #0x10
005e8c28  01 60 a0 e1                                      mov r6, r1
005e8c2c  00 00 55 e3                                      cmp r5, #0
005e8c30  00 40 a0 e1                                      mov r4, r0
005e8c34  02 70 a0 e1                                      mov r7, r2
005e8c38  01 50 a0 01                                      moveq r5, r1
005e8c3c  1b 00 00 0a                                      beq #0x5e8cb0
005e8c40  00 a0 92 e5                                      ldr sl, [r2]
005e8c44  00 00 00 ea                                      b #0x5e8c4c
005e8c48  03 50 a0 e1                                      mov r5, r3
005e8c4c  10 80 95 e5                                      ldr r8, [r5, #0x10]
005e8c50  0a 00 a0 e1                                      mov r0, sl
005e8c54  08 10 a0 e1                                      mov r1, r8
005e8c58  af 95 f4 eb                                      bl #0x30e31c
005e8c5c  00 00 50 e3                                      cmp r0, #0
005e8c60  08 30 95 b5                                      ldrlt r3, [r5, #8]
005e8c64  0c 30 95 a5                                      ldrge r3, [r5, #0xc]
005e8c68  01 20 a0 b3                                      movlt r2, #1
005e8c6c  00 20 a0 a3                                      movge r2, #0
005e8c70  00 00 53 e3                                      cmp r3, #0
005e8c74  f3 ff ff 1a                                      bne #0x5e8c48
005e8c78  00 00 52 e3                                      cmp r2, #0
005e8c7c  05 90 a0 01                                      moveq sb, r5
005e8c80  0a 00 00 1a                                      bne #0x5e8cb0
005e8c84  08 00 a0 e1                                      mov r0, r8
005e8c88  0a 10 a0 e1                                      mov r1, sl
005e8c8c  a2 95 f4 eb                                      bl #0x30e31c
005e8c90  00 00 50 e3                                      cmp r0, #0
005e8c94  00 30 a0 a3                                      movge r3, #0
005e8c98  00 90 84 a5                                      strge sb, [r4]
005e8c9c  04 30 c4 a5                                      strbge r3, [r4, #4]
005e8ca0  1f 00 00 ba                                      blt #0x5e8d24
005e8ca4  04 00 a0 e1                                      mov r0, r4
005e8ca8  10 d0 8d e2                                      add sp, sp, #0x10
005e8cac  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005e8cb0  08 30 96 e5                                      ldr r3, [r6, #8]
005e8cb4  03 00 55 e1                                      cmp r5, r3
005e8cb8  3a 00 00 0a                                      beq #0x5e8da8
005e8cbc  00 30 d5 e5                                      ldrb r3, [r5]
005e8cc0  00 00 53 e3                                      cmp r3, #0
005e8cc4  03 00 00 1a                                      bne #0x5e8cd8
005e8cc8  04 30 95 e5                                      ldr r3, [r5, #4]
005e8ccc  04 30 93 e5                                      ldr r3, [r3, #4]
005e8cd0  03 00 55 e1                                      cmp r5, r3
005e8cd4  2e 00 00 0a                                      beq #0x5e8d94
005e8cd8  08 20 95 e5                                      ldr r2, [r5, #8]
005e8cdc  00 00 52 e3                                      cmp r2, #0
005e8ce0  01 00 00 1a                                      bne #0x5e8cec
005e8ce4  1a 00 00 ea                                      b #0x5e8d54
005e8ce8  03 20 a0 e1                                      mov r2, r3
005e8cec  0c 30 92 e5                                      ldr r3, [r2, #0xc]
005e8cf0  00 00 53 e3                                      cmp r3, #0
005e8cf4  fb ff ff 1a                                      bne #0x5e8ce8
005e8cf8  10 80 92 e5                                      ldr r8, [r2, #0x10]
005e8cfc  00 a0 97 e5                                      ldr sl, [r7]
005e8d00  02 90 a0 e1                                      mov sb, r2
005e8d04  08 00 a0 e1                                      mov r0, r8
005e8d08  0a 10 a0 e1                                      mov r1, sl
005e8d0c  82 95 f4 eb                                      bl #0x30e31c
005e8d10  00 00 50 e3                                      cmp r0, #0
005e8d14  00 30 a0 a3                                      movge r3, #0
005e8d18  00 90 84 a5                                      strge sb, [r4]
005e8d1c  04 30 c4 a5                                      strbge r3, [r4, #4]
005e8d20  df ff ff aa                                      bge #0x5e8ca4
005e8d24  05 20 a0 e1                                      mov r2, r5
005e8d28  07 30 a0 e1                                      mov r3, r7
005e8d2c  00 c0 a0 e3                                      mov ip, #0
005e8d30  06 10 a0 e1                                      mov r1, r6
005e8d34  08 00 8d e2                                      add r0, sp, #8
005e8d38  00 c0 8d e5                                      str ip, [sp]
005e8d3c  62 ff ff eb                                      bl #0x5e8acc
005e8d40  08 30 9d e5                                      ldr r3, [sp, #8]
005e8d44  01 20 a0 e3                                      mov r2, #1
005e8d48  04 20 c4 e5                                      strb r2, [r4, #4]
005e8d4c  00 30 84 e5                                      str r3, [r4]
005e8d50  d3 ff ff ea                                      b #0x5e8ca4
005e8d54  04 30 95 e5                                      ldr r3, [r5, #4]
005e8d58  08 20 93 e5                                      ldr r2, [r3, #8]
005e8d5c  02 00 55 e1                                      cmp r5, r2
005e8d60  03 90 a0 11                                      movne sb, r3
005e8d64  00 a0 97 15                                      ldrne sl, [r7]
005e8d68  10 80 93 15                                      ldrne r8, [r3, #0x10]
005e8d6c  01 00 00 0a                                      beq #0x5e8d78
005e8d70  c3 ff ff ea                                      b #0x5e8c84
005e8d74  09 30 a0 e1                                      mov r3, sb
005e8d78  04 90 93 e5                                      ldr sb, [r3, #4]
005e8d7c  08 20 99 e5                                      ldr r2, [sb, #8]
005e8d80  03 00 52 e1                                      cmp r2, r3
005e8d84  fa ff ff 0a                                      beq #0x5e8d74
005e8d88  00 a0 97 e5                                      ldr sl, [r7]
005e8d8c  10 80 99 e5                                      ldr r8, [sb, #0x10]
005e8d90  bb ff ff ea                                      b #0x5e8c84
005e8d94  0c 30 95 e5                                      ldr r3, [r5, #0xc]
005e8d98  00 a0 97 e5                                      ldr sl, [r7]
005e8d9c  03 90 a0 e1                                      mov sb, r3
005e8da0  10 80 93 e5                                      ldr r8, [r3, #0x10]
005e8da4  b6 ff ff ea                                      b #0x5e8c84
005e8da8  05 20 a0 e1                                      mov r2, r5
005e8dac  07 30 a0 e1                                      mov r3, r7
005e8db0  06 10 a0 e1                                      mov r1, r6
005e8db4  0c 00 8d e2                                      add r0, sp, #0xc
005e8db8  00 50 8d e5                                      str r5, [sp]
005e8dbc  42 ff ff eb                                      bl #0x5e8acc
005e8dc0  0c 30 9d e5                                      ldr r3, [sp, #0xc]
005e8dc4  01 20 a0 e3                                      mov r2, #1
005e8dc8  04 20 c4 e5                                      strb r2, [r4, #4]
005e8dcc  00 30 84 e5                                      str r3, [r4]
005e8dd0  b3 ff ff ea                                      b #0x5e8ca4

; FUNCTION 0x005e9250, declared_size=112, range_size=112, mode=arm
; class-group: std::priv::_Rb_tree<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName, std::less<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName>, std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>, std::priv::_Select1st<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue> >, std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue> >, glitch::core::SAllocator<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt4priv8_Rb_treeIN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS1_5video8ITextureEEEtLb0ENS7_6detail14texturemanager18STexturePropertiesENS3_15sidedcollection12SValueTraitsEE5SNameESt4lessISG_ESt4pairIKSG_NSF_8SIdValueEENS_10_Select1stISM_EENS_11_MapTraitsTISM_EENS2_10SAllocatorISM_LNS1_6memory13E_MEMORY_HINTE0EEEE8_M_eraseEPNS_18_Rb_tree_node_baseE
; demangled: std::priv::_Rb_tree<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName, std::less<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName>, std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>, std::priv::_Select1st<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue> >, std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue> >, glitch::core::SAllocator<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>, (glitch::memory::E_MEMORY_HINT)0> >::_M_erase(std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
005e9250  70 40 2d e9                                      push {r4, r5, r6, lr}
005e9254  00 40 51 e2                                      subs r4, r1, #0
005e9258  00 50 a0 e1                                      mov r5, r0
005e925c  16 00 00 0a                                      beq #0x5e92bc
005e9260  05 00 a0 e1                                      mov r0, r5
005e9264  0c 10 94 e5                                      ldr r1, [r4, #0xc]
005e9268  f8 ff ff eb                                      bl #0x5e9250
005e926c  18 20 84 e2                                      add r2, r4, #0x18
005e9270  14 30 92 e5                                      ldr r3, [r2, #0x14]
005e9274  08 60 94 e5                                      ldr r6, [r4, #8]
005e9278  02 00 53 e1                                      cmp r3, r2
005e927c  03 00 a0 e1                                      mov r0, r3
005e9280  02 00 00 0a                                      beq #0x5e9290
005e9284  00 00 53 e3                                      cmp r3, #0
005e9288  00 00 00 0a                                      beq #0x5e9290
005e928c  6f 9c f4 eb                                      bl #0x310450
005e9290  14 30 d4 e5                                      ldrb r3, [r4, #0x14]
005e9294  00 00 53 e3                                      cmp r3, #0
005e9298  03 00 00 0a                                      beq #0x5e92ac
005e929c  10 00 94 e5                                      ldr r0, [r4, #0x10]
005e92a0  00 00 50 e3                                      cmp r0, #0
005e92a4  00 00 00 0a                                      beq #0x5e92ac
005e92a8  82 93 f4 eb                                      bl #0x30e0b8
005e92ac  04 00 a0 e1                                      mov r0, r4
005e92b0  66 9c f4 eb                                      bl #0x310450
005e92b4  00 40 56 e2                                      subs r4, r6, #0
005e92b8  e8 ff ff 1a                                      bne #0x5e9260
005e92bc  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x005e9308, declared_size=64, range_size=64, mode=arm
; class-group: std::priv::_Rb_tree<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName, std::less<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName>, std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>, std::priv::_Select1st<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue> >, std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue> >, glitch::core::SAllocator<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt4priv8_Rb_treeIN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS1_5video8ITextureEEEtLb0ENS7_6detail14texturemanager18STexturePropertiesENS3_15sidedcollection12SValueTraitsEE5SNameESt4lessISG_ESt4pairIKSG_NSF_8SIdValueEENS_10_Select1stISM_EENS_11_MapTraitsTISM_EENS2_10SAllocatorISM_LNS1_6memory13E_MEMORY_HINTE0EEEE5eraseENS_17_Rb_tree_iteratorISM_SQ_EE
; demangled: std::priv::_Rb_tree<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName, std::less<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName>, std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>, std::priv::_Select1st<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue> >, std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue> >, glitch::core::SAllocator<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>, (glitch::memory::E_MEMORY_HINT)0> >::erase(std::priv::_Rb_tree_iterator<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>, std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue> > >)
; decoder-mode: arm
005e9308  70 40 2d e9                                      push {r4, r5, r6, lr}
005e930c  00 40 a0 e1                                      mov r4, r0
005e9310  0c 30 84 e2                                      add r3, r4, #0xc
005e9314  08 20 84 e2                                      add r2, r4, #8
005e9318  00 00 91 e5                                      ldr r0, [r1]
005e931c  04 10 84 e2                                      add r1, r4, #4
005e9320  37 33 f5 eb                                      bl #0x336004
005e9324  00 50 a0 e1                                      mov r5, r0
005e9328  10 00 80 e2                                      add r0, r0, #0x10
005e932c  e3 ff ff eb                                      bl #0x5e92c0
005e9330  05 00 a0 e1                                      mov r0, r5
005e9334  45 9c f4 eb                                      bl #0x310450
005e9338  10 30 94 e5                                      ldr r3, [r4, #0x10]
005e933c  01 30 43 e2                                      sub r3, r3, #1
005e9340  10 30 84 e5                                      str r3, [r4, #0x10]
005e9344  70 80 bd e8                                      pop {r4, r5, r6, pc}

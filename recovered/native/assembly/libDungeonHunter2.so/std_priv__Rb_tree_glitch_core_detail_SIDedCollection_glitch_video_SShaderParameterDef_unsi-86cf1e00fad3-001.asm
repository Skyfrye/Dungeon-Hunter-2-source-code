; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005bae64, declared_size=392, range_size=392, mode=arm
; class-group: std::priv::_Rb_tree<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName, std::less<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName>, std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue>, std::priv::_Select1st<std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue> >, std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue> >, glitch::core::SAllocator<std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt4priv8_Rb_treeIN6glitch4core6detail15SIDedCollectionINS1_5video19SShaderParameterDefEtLb0ENS5_6detail30globalmaterialparametermanager10SPropetiesENS8_12SValueTraitsEE5SNameESt4lessISC_ESt4pairIKSC_NSB_8SIdValueEENS_10_Select1stISI_EENS_11_MapTraitsTISI_EENS2_10SAllocatorISI_LNS1_6memory13E_MEMORY_HINTE0EEEE9_M_insertEPNS_18_Rb_tree_node_baseERKSI_ST_ST_.clone.9
; demangled: std::priv::_Rb_tree<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName, std::less<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName>, std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue>, std::priv::_Select1st<std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue> >, std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue> >, glitch::core::SAllocator<std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue>, (glitch::memory::E_MEMORY_HINT)0> >::_M_insert(std::priv::_Rb_tree_node_base*, std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue> const&, std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*) [clone .clone.9]
; decoder-mode: arm
005bae64  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
005bae68  02 00 51 e1                                      cmp r1, r2
005bae6c  0c d0 4d e2                                      sub sp, sp, #0xc
005bae70  01 40 a0 e1                                      mov r4, r1
005bae74  00 50 a0 e1                                      mov r5, r0
005bae78  1a 00 00 0a                                      beq #0x5baee8
005bae7c  20 10 9d e5                                      ldr r1, [sp, #0x20]
005bae80  00 00 51 e3                                      cmp r1, #0
005bae84  38 00 00 0a                                      beq #0x5baf6c
005bae88  00 10 a0 e3                                      mov r1, #0
005bae8c  20 00 a0 e3                                      mov r0, #0x20
005bae90  04 20 8d e5                                      str r2, [sp, #4]
005bae94  00 30 8d e5                                      str r3, [sp]
005bae98  b2 55 f5 eb                                      bl #0x310568
005bae9c  00 30 9d e5                                      ldr r3, [sp]
005baea0  00 10 a0 e3                                      mov r1, #0
005baea4  00 60 a0 e1                                      mov r6, r0
005baea8  00 c0 93 e5                                      ldr ip, [r3]
005baeac  10 c0 80 e5                                      str ip, [r0, #0x10]
005baeb0  04 c0 d3 e5                                      ldrb ip, [r3, #4]
005baeb4  14 c0 c0 e5                                      strb ip, [r0, #0x14]
005baeb8  08 c0 93 e5                                      ldr ip, [r3, #8]
005baebc  18 c0 80 e5                                      str ip, [r0, #0x18]
005baec0  bc 30 d3 e1                                      ldrh r3, [r3, #0xc]
005baec4  0c 10 80 e5                                      str r1, [r0, #0xc]
005baec8  08 10 80 e5                                      str r1, [r0, #8]
005baecc  bc 31 c0 e1                                      strh r3, [r0, #0x1c]
005baed0  04 20 9d e5                                      ldr r2, [sp, #4]
005baed4  08 00 82 e5                                      str r0, [r2, #8]
005baed8  08 30 94 e5                                      ldr r3, [r4, #8]
005baedc  03 00 52 e1                                      cmp r2, r3
005baee0  08 00 84 05                                      streq r0, [r4, #8]
005baee4  15 00 00 ea                                      b #0x5baf40
005baee8  00 10 a0 e3                                      mov r1, #0
005baeec  20 00 a0 e3                                      mov r0, #0x20
005baef0  04 20 8d e5                                      str r2, [sp, #4]
005baef4  00 30 8d e5                                      str r3, [sp]
005baef8  9a 55 f5 eb                                      bl #0x310568
005baefc  00 30 9d e5                                      ldr r3, [sp]
005baf00  00 10 a0 e3                                      mov r1, #0
005baf04  00 60 a0 e1                                      mov r6, r0
005baf08  00 c0 93 e5                                      ldr ip, [r3]
005baf0c  10 c0 80 e5                                      str ip, [r0, #0x10]
005baf10  04 c0 d3 e5                                      ldrb ip, [r3, #4]
005baf14  14 c0 c0 e5                                      strb ip, [r0, #0x14]
005baf18  08 c0 93 e5                                      ldr ip, [r3, #8]
005baf1c  18 c0 80 e5                                      str ip, [r0, #0x18]
005baf20  bc 30 d3 e1                                      ldrh r3, [r3, #0xc]
005baf24  0c 10 80 e5                                      str r1, [r0, #0xc]
005baf28  08 10 80 e5                                      str r1, [r0, #8]
005baf2c  bc 31 c0 e1                                      strh r3, [r0, #0x1c]
005baf30  08 00 84 e5                                      str r0, [r4, #8]
005baf34  04 00 84 e5                                      str r0, [r4, #4]
005baf38  0c 00 84 e5                                      str r0, [r4, #0xc]
005baf3c  04 20 9d e5                                      ldr r2, [sp, #4]
005baf40  06 00 a0 e1                                      mov r0, r6
005baf44  04 20 86 e5                                      str r2, [r6, #4]
005baf48  04 10 84 e2                                      add r1, r4, #4
005baf4c  03 62 f5 eb                                      bl #0x313760
005baf50  10 30 94 e5                                      ldr r3, [r4, #0x10]
005baf54  05 00 a0 e1                                      mov r0, r5
005baf58  01 30 83 e2                                      add r3, r3, #1
005baf5c  10 30 84 e5                                      str r3, [r4, #0x10]
005baf60  00 60 85 e5                                      str r6, [r5]
005baf64  0c d0 8d e2                                      add sp, sp, #0xc
005baf68  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
005baf6c  03 00 a0 e1                                      mov r0, r3
005baf70  10 10 82 e2                                      add r1, r2, #0x10
005baf74  04 20 8d e5                                      str r2, [sp, #4]
005baf78  00 30 8d e5                                      str r3, [sp]
005baf7c  0b fe ff eb                                      bl #0x5ba7b0
005baf80  00 70 50 e2                                      subs r7, r0, #0
005baf84  04 20 9d e5                                      ldr r2, [sp, #4]
005baf88  00 30 9d e5                                      ldr r3, [sp]
005baf8c  bd ff ff 1a                                      bne #0x5bae88
005baf90  07 10 a0 e1                                      mov r1, r7
005baf94  20 00 a0 e3                                      mov r0, #0x20
005baf98  04 20 8d e5                                      str r2, [sp, #4]
005baf9c  00 30 8d e5                                      str r3, [sp]
005bafa0  70 55 f5 eb                                      bl #0x310568
005bafa4  00 30 9d e5                                      ldr r3, [sp]
005bafa8  00 60 a0 e1                                      mov r6, r0
005bafac  00 10 93 e5                                      ldr r1, [r3]
005bafb0  10 10 80 e5                                      str r1, [r0, #0x10]
005bafb4  04 10 d3 e5                                      ldrb r1, [r3, #4]
005bafb8  14 10 c0 e5                                      strb r1, [r0, #0x14]
005bafbc  08 10 93 e5                                      ldr r1, [r3, #8]
005bafc0  18 10 80 e5                                      str r1, [r0, #0x18]
005bafc4  bc 30 d3 e1                                      ldrh r3, [r3, #0xc]
005bafc8  0c 70 80 e5                                      str r7, [r0, #0xc]
005bafcc  08 70 80 e5                                      str r7, [r0, #8]
005bafd0  bc 31 c0 e1                                      strh r3, [r0, #0x1c]
005bafd4  04 20 9d e5                                      ldr r2, [sp, #4]
005bafd8  0c 00 82 e5                                      str r0, [r2, #0xc]
005bafdc  0c 30 94 e5                                      ldr r3, [r4, #0xc]
005bafe0  03 00 52 e1                                      cmp r2, r3
005bafe4  0c 00 84 05                                      streq r0, [r4, #0xc]
005bafe8  d4 ff ff ea                                      b #0x5baf40

; FUNCTION 0x005bb060, declared_size=440, range_size=440, mode=arm
; class-group: std::priv::_Rb_tree<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName, std::less<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName>, std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue>, std::priv::_Select1st<std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue> >, std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue> >, glitch::core::SAllocator<std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt4priv8_Rb_treeIN6glitch4core6detail15SIDedCollectionINS1_5video19SShaderParameterDefEtLb0ENS5_6detail30globalmaterialparametermanager10SPropetiesENS8_12SValueTraitsEE5SNameESt4lessISC_ESt4pairIKSC_NSB_8SIdValueEENS_10_Select1stISI_EENS_11_MapTraitsTISI_EENS2_10SAllocatorISI_LNS1_6memory13E_MEMORY_HINTE0EEEE13insert_uniqueERKSI_
; demangled: std::priv::_Rb_tree<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName, std::less<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName>, std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue>, std::priv::_Select1st<std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue> >, std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue> >, glitch::core::SAllocator<std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue>, (glitch::memory::E_MEMORY_HINT)0> >::insert_unique(std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue> const&)
; decoder-mode: arm
005bb060  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005bb064  04 50 91 e5                                      ldr r5, [r1, #4]
005bb068  10 d0 4d e2                                      sub sp, sp, #0x10
005bb06c  01 60 a0 e1                                      mov r6, r1
005bb070  00 00 55 e3                                      cmp r5, #0
005bb074  00 40 a0 e1                                      mov r4, r0
005bb078  02 70 a0 e1                                      mov r7, r2
005bb07c  01 50 a0 01                                      moveq r5, r1
005bb080  1b 00 00 0a                                      beq #0x5bb0f4
005bb084  00 a0 92 e5                                      ldr sl, [r2]
005bb088  00 00 00 ea                                      b #0x5bb090
005bb08c  03 50 a0 e1                                      mov r5, r3
005bb090  10 80 95 e5                                      ldr r8, [r5, #0x10]
005bb094  0a 00 a0 e1                                      mov r0, sl
005bb098  08 10 a0 e1                                      mov r1, r8
005bb09c  9e 4c f5 eb                                      bl #0x30e31c
005bb0a0  00 00 50 e3                                      cmp r0, #0
005bb0a4  08 30 95 b5                                      ldrlt r3, [r5, #8]
005bb0a8  0c 30 95 a5                                      ldrge r3, [r5, #0xc]
005bb0ac  01 20 a0 b3                                      movlt r2, #1
005bb0b0  00 20 a0 a3                                      movge r2, #0
005bb0b4  00 00 53 e3                                      cmp r3, #0
005bb0b8  f3 ff ff 1a                                      bne #0x5bb08c
005bb0bc  00 00 52 e3                                      cmp r2, #0
005bb0c0  05 90 a0 01                                      moveq sb, r5
005bb0c4  0a 00 00 1a                                      bne #0x5bb0f4
005bb0c8  08 00 a0 e1                                      mov r0, r8
005bb0cc  0a 10 a0 e1                                      mov r1, sl
005bb0d0  91 4c f5 eb                                      bl #0x30e31c
005bb0d4  00 00 50 e3                                      cmp r0, #0
005bb0d8  00 30 a0 a3                                      movge r3, #0
005bb0dc  00 90 84 a5                                      strge sb, [r4]
005bb0e0  04 30 c4 a5                                      strbge r3, [r4, #4]
005bb0e4  1f 00 00 ba                                      blt #0x5bb168
005bb0e8  04 00 a0 e1                                      mov r0, r4
005bb0ec  10 d0 8d e2                                      add sp, sp, #0x10
005bb0f0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005bb0f4  08 30 96 e5                                      ldr r3, [r6, #8]
005bb0f8  03 00 55 e1                                      cmp r5, r3
005bb0fc  3a 00 00 0a                                      beq #0x5bb1ec
005bb100  00 30 d5 e5                                      ldrb r3, [r5]
005bb104  00 00 53 e3                                      cmp r3, #0
005bb108  03 00 00 1a                                      bne #0x5bb11c
005bb10c  04 30 95 e5                                      ldr r3, [r5, #4]
005bb110  04 30 93 e5                                      ldr r3, [r3, #4]
005bb114  03 00 55 e1                                      cmp r5, r3
005bb118  2e 00 00 0a                                      beq #0x5bb1d8
005bb11c  08 20 95 e5                                      ldr r2, [r5, #8]
005bb120  00 00 52 e3                                      cmp r2, #0
005bb124  01 00 00 1a                                      bne #0x5bb130
005bb128  1a 00 00 ea                                      b #0x5bb198
005bb12c  03 20 a0 e1                                      mov r2, r3
005bb130  0c 30 92 e5                                      ldr r3, [r2, #0xc]
005bb134  00 00 53 e3                                      cmp r3, #0
005bb138  fb ff ff 1a                                      bne #0x5bb12c
005bb13c  10 80 92 e5                                      ldr r8, [r2, #0x10]
005bb140  00 a0 97 e5                                      ldr sl, [r7]
005bb144  02 90 a0 e1                                      mov sb, r2
005bb148  08 00 a0 e1                                      mov r0, r8
005bb14c  0a 10 a0 e1                                      mov r1, sl
005bb150  71 4c f5 eb                                      bl #0x30e31c
005bb154  00 00 50 e3                                      cmp r0, #0
005bb158  00 30 a0 a3                                      movge r3, #0
005bb15c  00 90 84 a5                                      strge sb, [r4]
005bb160  04 30 c4 a5                                      strbge r3, [r4, #4]
005bb164  df ff ff aa                                      bge #0x5bb0e8
005bb168  05 20 a0 e1                                      mov r2, r5
005bb16c  07 30 a0 e1                                      mov r3, r7
005bb170  00 c0 a0 e3                                      mov ip, #0
005bb174  06 10 a0 e1                                      mov r1, r6
005bb178  08 00 8d e2                                      add r0, sp, #8
005bb17c  00 c0 8d e5                                      str ip, [sp]
005bb180  37 ff ff eb                                      bl #0x5bae64
005bb184  08 30 9d e5                                      ldr r3, [sp, #8]
005bb188  01 20 a0 e3                                      mov r2, #1
005bb18c  04 20 c4 e5                                      strb r2, [r4, #4]
005bb190  00 30 84 e5                                      str r3, [r4]
005bb194  d3 ff ff ea                                      b #0x5bb0e8
005bb198  04 30 95 e5                                      ldr r3, [r5, #4]
005bb19c  08 20 93 e5                                      ldr r2, [r3, #8]
005bb1a0  02 00 55 e1                                      cmp r5, r2
005bb1a4  03 90 a0 11                                      movne sb, r3
005bb1a8  00 a0 97 15                                      ldrne sl, [r7]
005bb1ac  10 80 93 15                                      ldrne r8, [r3, #0x10]
005bb1b0  01 00 00 0a                                      beq #0x5bb1bc
005bb1b4  c3 ff ff ea                                      b #0x5bb0c8
005bb1b8  09 30 a0 e1                                      mov r3, sb
005bb1bc  04 90 93 e5                                      ldr sb, [r3, #4]
005bb1c0  08 20 99 e5                                      ldr r2, [sb, #8]
005bb1c4  03 00 52 e1                                      cmp r2, r3
005bb1c8  fa ff ff 0a                                      beq #0x5bb1b8
005bb1cc  00 a0 97 e5                                      ldr sl, [r7]
005bb1d0  10 80 99 e5                                      ldr r8, [sb, #0x10]
005bb1d4  bb ff ff ea                                      b #0x5bb0c8
005bb1d8  0c 30 95 e5                                      ldr r3, [r5, #0xc]
005bb1dc  00 a0 97 e5                                      ldr sl, [r7]
005bb1e0  03 90 a0 e1                                      mov sb, r3
005bb1e4  10 80 93 e5                                      ldr r8, [r3, #0x10]
005bb1e8  b6 ff ff ea                                      b #0x5bb0c8
005bb1ec  05 20 a0 e1                                      mov r2, r5
005bb1f0  07 30 a0 e1                                      mov r3, r7
005bb1f4  06 10 a0 e1                                      mov r1, r6
005bb1f8  0c 00 8d e2                                      add r0, sp, #0xc
005bb1fc  00 50 8d e5                                      str r5, [sp]
005bb200  17 ff ff eb                                      bl #0x5bae64
005bb204  0c 30 9d e5                                      ldr r3, [sp, #0xc]
005bb208  01 20 a0 e3                                      mov r2, #1
005bb20c  04 20 c4 e5                                      strb r2, [r4, #4]
005bb210  00 30 84 e5                                      str r3, [r4]
005bb214  b3 ff ff ea                                      b #0x5bb0e8

; FUNCTION 0x005bb2d4, declared_size=80, range_size=80, mode=arm
; class-group: std::priv::_Rb_tree<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName, std::less<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName>, std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue>, std::priv::_Select1st<std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue> >, std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue> >, glitch::core::SAllocator<std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt4priv8_Rb_treeIN6glitch4core6detail15SIDedCollectionINS1_5video19SShaderParameterDefEtLb0ENS5_6detail30globalmaterialparametermanager10SPropetiesENS8_12SValueTraitsEE5SNameESt4lessISC_ESt4pairIKSC_NSB_8SIdValueEENS_10_Select1stISI_EENS_11_MapTraitsTISI_EENS2_10SAllocatorISI_LNS1_6memory13E_MEMORY_HINTE0EEEE8_M_eraseEPNS_18_Rb_tree_node_baseE
; demangled: std::priv::_Rb_tree<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName, std::less<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName>, std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue>, std::priv::_Select1st<std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue> >, std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue> >, glitch::core::SAllocator<std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue>, (glitch::memory::E_MEMORY_HINT)0> >::_M_erase(std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
005bb2d4  70 40 2d e9                                      push {r4, r5, r6, lr}
005bb2d8  00 40 51 e2                                      subs r4, r1, #0
005bb2dc  00 50 a0 e1                                      mov r5, r0
005bb2e0  0e 00 00 0a                                      beq #0x5bb320
005bb2e4  0c 10 94 e5                                      ldr r1, [r4, #0xc]
005bb2e8  05 00 a0 e1                                      mov r0, r5
005bb2ec  f8 ff ff eb                                      bl #0x5bb2d4
005bb2f0  14 30 d4 e5                                      ldrb r3, [r4, #0x14]
005bb2f4  08 60 94 e5                                      ldr r6, [r4, #8]
005bb2f8  00 00 53 e3                                      cmp r3, #0
005bb2fc  03 00 00 0a                                      beq #0x5bb310
005bb300  10 00 94 e5                                      ldr r0, [r4, #0x10]
005bb304  00 00 50 e3                                      cmp r0, #0
005bb308  00 00 00 0a                                      beq #0x5bb310
005bb30c  69 4b f5 eb                                      bl #0x30e0b8
005bb310  04 00 a0 e1                                      mov r0, r4
005bb314  4d 54 f5 eb                                      bl #0x310450
005bb318  00 40 56 e2                                      subs r4, r6, #0
005bb31c  f0 ff ff 1a                                      bne #0x5bb2e4
005bb320  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x005bb324, declared_size=84, range_size=84, mode=arm
; class-group: std::priv::_Rb_tree<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName, std::less<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName>, std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue>, std::priv::_Select1st<std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue> >, std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue> >, glitch::core::SAllocator<std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt4priv8_Rb_treeIN6glitch4core6detail15SIDedCollectionINS1_5video19SShaderParameterDefEtLb0ENS5_6detail30globalmaterialparametermanager10SPropetiesENS8_12SValueTraitsEE5SNameESt4lessISC_ESt4pairIKSC_NSB_8SIdValueEENS_10_Select1stISI_EENS_11_MapTraitsTISI_EENS2_10SAllocatorISI_LNS1_6memory13E_MEMORY_HINTE0EEEE5eraseENS_17_Rb_tree_iteratorISI_SM_EE
; demangled: std::priv::_Rb_tree<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName, std::less<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName>, std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue>, std::priv::_Select1st<std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue> >, std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue> >, glitch::core::SAllocator<std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue>, (glitch::memory::E_MEMORY_HINT)0> >::erase(std::priv::_Rb_tree_iterator<std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue>, std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue> > >)
; decoder-mode: arm
005bb324  70 40 2d e9                                      push {r4, r5, r6, lr}
005bb328  00 40 a0 e1                                      mov r4, r0
005bb32c  0c 30 84 e2                                      add r3, r4, #0xc
005bb330  00 00 91 e5                                      ldr r0, [r1]
005bb334  08 20 84 e2                                      add r2, r4, #8
005bb338  04 10 84 e2                                      add r1, r4, #4
005bb33c  30 eb f5 eb                                      bl #0x336004
005bb340  14 30 d0 e5                                      ldrb r3, [r0, #0x14]
005bb344  00 50 a0 e1                                      mov r5, r0
005bb348  00 00 53 e3                                      cmp r3, #0
005bb34c  03 00 00 0a                                      beq #0x5bb360
005bb350  10 00 90 e5                                      ldr r0, [r0, #0x10]
005bb354  00 00 50 e3                                      cmp r0, #0
005bb358  00 00 00 0a                                      beq #0x5bb360
005bb35c  55 4b f5 eb                                      bl #0x30e0b8
005bb360  05 00 a0 e1                                      mov r0, r5
005bb364  39 54 f5 eb                                      bl #0x310450
005bb368  10 30 94 e5                                      ldr r3, [r4, #0x10]
005bb36c  01 30 43 e2                                      sub r3, r3, #1
005bb370  10 30 84 e5                                      str r3, [r4, #0x10]
005bb374  70 80 bd e8                                      pop {r4, r5, r6, pc}

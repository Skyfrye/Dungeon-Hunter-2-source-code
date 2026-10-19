; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005dab0c, declared_size=144, range_size=144, mode=arm
; class-group: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<glitch::core::SSharedString, std::less<glitch::core::SSharedString>, std::pair<glitch::core::SSharedString const, glitch::video::CMaterialRendererManager::SCreationState::SParameterDef>, std::priv::_Select1st<std::pair<glitch::core::SSharedString const, glitch::video::CMaterialRendererManager::SCreationState::SParameterDef> >, std::priv::_MapTraitsT<std::pair<glitch::core::SSharedString const, glitch::video::CMaterialRendererManager::SCreationState::SParameterDef> >, glitch::core::SProcessBufferAllocator<std::pair<glitch::core::SSharedString const, glitch::video::CMaterialRendererManager::SCreationState::SParameterDef> > >
; alias: _ZNKSt4priv8_Rb_treeIN6glitch4core13SSharedStringESt4lessIS3_ESt4pairIKS3_NS1_5video24CMaterialRendererManager14SCreationState13SParameterDefEENS_10_Select1stISC_EENS_11_MapTraitsTISC_EENS2_23SProcessBufferAllocatorISC_EEE7_M_findIS3_EEPNS_18_Rb_tree_node_baseERKT_
; demangled: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<glitch::core::SSharedString, std::less<glitch::core::SSharedString>, std::pair<glitch::core::SSharedString const, glitch::video::CMaterialRendererManager::SCreationState::SParameterDef>, std::priv::_Select1st<std::pair<glitch::core::SSharedString const, glitch::video::CMaterialRendererManager::SCreationState::SParameterDef> >, std::priv::_MapTraitsT<std::pair<glitch::core::SSharedString const, glitch::video::CMaterialRendererManager::SCreationState::SParameterDef> >, glitch::core::SProcessBufferAllocator<std::pair<glitch::core::SSharedString const, glitch::video::CMaterialRendererManager::SCreationState::SParameterDef> > >::_M_find<glitch::core::SSharedString>(glitch::core::SSharedString const&) const
; decoder-mode: arm
005dab0c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005dab10  04 40 90 e5                                      ldr r4, [r0, #4]
005dab14  00 80 a0 e1                                      mov r8, r0
005dab18  00 00 54 e3                                      cmp r4, #0
005dab1c  1b 00 00 0a                                      beq #0x5dab90
005dab20  00 60 91 e5                                      ldr r6, [r1]
005dab24  00 70 a0 e1                                      mov r7, r0
005dab28  04 50 86 e2                                      add r5, r6, #4
005dab2c  10 00 94 e5                                      ldr r0, [r4, #0x10]
005dab30  00 00 50 e3                                      cmp r0, #0
005dab34  04 00 80 12                                      addne r0, r0, #4
005dab38  00 00 56 e3                                      cmp r6, #0
005dab3c  05 10 a0 11                                      movne r1, r5
005dab40  00 10 a0 03                                      moveq r1, #0
005dab44  f4 cd f4 eb                                      bl #0x30e31c
005dab48  00 00 50 e3                                      cmp r0, #0
005dab4c  04 70 a0 a1                                      movge r7, r4
005dab50  0c 40 94 b5                                      ldrlt r4, [r4, #0xc]
005dab54  08 40 94 a5                                      ldrge r4, [r4, #8]
005dab58  00 00 54 e3                                      cmp r4, #0
005dab5c  f2 ff ff 1a                                      bne #0x5dab2c
005dab60  08 00 57 e1                                      cmp r7, r8
005dab64  0a 00 00 0a                                      beq #0x5dab94
005dab68  10 10 97 e5                                      ldr r1, [r7, #0x10]
005dab6c  00 00 56 e3                                      cmp r6, #0
005dab70  00 50 a0 03                                      moveq r5, #0
005dab74  00 00 51 e3                                      cmp r1, #0
005dab78  04 10 a0 01                                      moveq r1, r4
005dab7c  04 10 81 12                                      addne r1, r1, #4
005dab80  05 00 a0 e1                                      mov r0, r5
005dab84  e4 cd f4 eb                                      bl #0x30e31c
005dab88  00 00 50 e3                                      cmp r0, #0
005dab8c  00 00 00 aa                                      bge #0x5dab94
005dab90  08 70 a0 e1                                      mov r7, r8
005dab94  07 00 a0 e1                                      mov r0, r7
005dab98  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

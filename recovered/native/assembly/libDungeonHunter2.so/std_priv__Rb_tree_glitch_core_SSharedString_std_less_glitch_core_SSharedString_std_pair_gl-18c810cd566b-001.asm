; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005d8980, declared_size=172, range_size=172, mode=arm
; class-group: std::priv::_Rb_tree<glitch::core::SSharedString, std::less<glitch::core::SSharedString>, std::pair<glitch::core::SSharedString const, glitch::video::CMaterialRendererManager::SCreationState::SParameterDef>, std::priv::_Select1st<std::pair<glitch::core::SSharedString const, glitch::video::CMaterialRendererManager::SCreationState::SParameterDef> >, std::priv::_MapTraitsT<std::pair<glitch::core::SSharedString const, glitch::video::CMaterialRendererManager::SCreationState::SParameterDef> >, glitch::core::SProcessBufferAllocator<std::pair<glitch::core::SSharedString const, glitch::video::CMaterialRendererManager::SCreationState::SParameterDef> > >
; alias: _ZNSt4priv8_Rb_treeIN6glitch4core13SSharedStringESt4lessIS3_ESt4pairIKS3_NS1_5video24CMaterialRendererManager14SCreationState13SParameterDefEENS_10_Select1stISC_EENS_11_MapTraitsTISC_EENS2_23SProcessBufferAllocatorISC_EEE14_M_create_nodeERKSC_
; demangled: std::priv::_Rb_tree<glitch::core::SSharedString, std::less<glitch::core::SSharedString>, std::pair<glitch::core::SSharedString const, glitch::video::CMaterialRendererManager::SCreationState::SParameterDef>, std::priv::_Select1st<std::pair<glitch::core::SSharedString const, glitch::video::CMaterialRendererManager::SCreationState::SParameterDef> >, std::priv::_MapTraitsT<std::pair<glitch::core::SSharedString const, glitch::video::CMaterialRendererManager::SCreationState::SParameterDef> >, glitch::core::SProcessBufferAllocator<std::pair<glitch::core::SSharedString const, glitch::video::CMaterialRendererManager::SCreationState::SParameterDef> > >::_M_create_node(std::pair<glitch::core::SSharedString const, glitch::video::CMaterialRendererManager::SCreationState::SParameterDef> const&)
; decoder-mode: arm
005d8980  10 40 2d e9                                      push {r4, lr}
005d8984  34 00 a0 e3                                      mov r0, #0x34
005d8988  01 40 a0 e1                                      mov r4, r1
005d898c  18 6f fd eb                                      bl #0x5345f4
005d8990  00 20 94 e5                                      ldr r2, [r4]
005d8994  00 30 a0 e1                                      mov r3, r0
005d8998  10 20 80 e5                                      str r2, [r0, #0x10]
005d899c  00 00 52 e3                                      cmp r2, #0
005d89a0  00 10 92 15                                      ldrne r1, [r2]
005d89a4  01 10 81 12                                      addne r1, r1, #1
005d89a8  00 10 82 15                                      strne r1, [r2]
005d89ac  04 20 94 e5                                      ldr r2, [r4, #4]
005d89b0  14 20 80 e5                                      str r2, [r0, #0x14]
005d89b4  00 00 52 e3                                      cmp r2, #0
005d89b8  00 10 92 15                                      ldrne r1, [r2]
005d89bc  01 10 81 12                                      addne r1, r1, #1
005d89c0  00 10 82 15                                      strne r1, [r2]
005d89c4  b8 20 d4 e1                                      ldrh r2, [r4, #8]
005d89c8  b8 21 c0 e1                                      strh r2, [r0, #0x18]
005d89cc  0a 10 d4 e5                                      ldrb r1, [r4, #0xa]
005d89d0  00 20 a0 e3                                      mov r2, #0
005d89d4  1a 10 c3 e5                                      strb r1, [r3, #0x1a]
005d89d8  0b 10 d4 e5                                      ldrb r1, [r4, #0xb]
005d89dc  1b 10 c3 e5                                      strb r1, [r3, #0x1b]
005d89e0  0c 10 94 e5                                      ldr r1, [r4, #0xc]
005d89e4  1c 10 83 e5                                      str r1, [r3, #0x1c]
005d89e8  10 10 94 e5                                      ldr r1, [r4, #0x10]
005d89ec  20 10 83 e5                                      str r1, [r3, #0x20]
005d89f0  14 10 94 e5                                      ldr r1, [r4, #0x14]
005d89f4  24 10 83 e5                                      str r1, [r3, #0x24]
005d89f8  18 10 94 e5                                      ldr r1, [r4, #0x18]
005d89fc  28 10 83 e5                                      str r1, [r3, #0x28]
005d8a00  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
005d8a04  2c 10 83 e5                                      str r1, [r3, #0x2c]
005d8a08  20 10 d4 e5                                      ldrb r1, [r4, #0x20]
005d8a0c  30 10 c3 e5                                      strb r1, [r3, #0x30]
005d8a10  21 10 d4 e5                                      ldrb r1, [r4, #0x21]
005d8a14  31 10 c3 e5                                      strb r1, [r3, #0x31]
005d8a18  22 10 d4 e5                                      ldrb r1, [r4, #0x22]
005d8a1c  0c 20 83 e5                                      str r2, [r3, #0xc]
005d8a20  08 20 83 e5                                      str r2, [r3, #8]
005d8a24  32 10 c3 e5                                      strb r1, [r3, #0x32]
005d8a28  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005d9638, declared_size=252, range_size=252, mode=arm
; class-group: std::priv::_Rb_tree<glitch::core::SSharedString, std::less<glitch::core::SSharedString>, std::pair<glitch::core::SSharedString const, glitch::video::CMaterialRendererManager::SCreationState::SParameterDef>, std::priv::_Select1st<std::pair<glitch::core::SSharedString const, glitch::video::CMaterialRendererManager::SCreationState::SParameterDef> >, std::priv::_MapTraitsT<std::pair<glitch::core::SSharedString const, glitch::video::CMaterialRendererManager::SCreationState::SParameterDef> >, glitch::core::SProcessBufferAllocator<std::pair<glitch::core::SSharedString const, glitch::video::CMaterialRendererManager::SCreationState::SParameterDef> > >
; alias: _ZNSt4priv8_Rb_treeIN6glitch4core13SSharedStringESt4lessIS3_ESt4pairIKS3_NS1_5video24CMaterialRendererManager14SCreationState13SParameterDefEENS_10_Select1stISC_EENS_11_MapTraitsTISC_EENS2_23SProcessBufferAllocatorISC_EEE9_M_insertEPNS_18_Rb_tree_node_baseERKSC_SL_SL_.clone.7
; demangled: std::priv::_Rb_tree<glitch::core::SSharedString, std::less<glitch::core::SSharedString>, std::pair<glitch::core::SSharedString const, glitch::video::CMaterialRendererManager::SCreationState::SParameterDef>, std::priv::_Select1st<std::pair<glitch::core::SSharedString const, glitch::video::CMaterialRendererManager::SCreationState::SParameterDef> >, std::priv::_MapTraitsT<std::pair<glitch::core::SSharedString const, glitch::video::CMaterialRendererManager::SCreationState::SParameterDef> >, glitch::core::SProcessBufferAllocator<std::pair<glitch::core::SSharedString const, glitch::video::CMaterialRendererManager::SCreationState::SParameterDef> > >::_M_insert(std::priv::_Rb_tree_node_base*, std::pair<glitch::core::SSharedString const, glitch::video::CMaterialRendererManager::SCreationState::SParameterDef> const&, std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*) [clone .clone.7]
; decoder-mode: arm
005d9638  70 40 2d e9                                      push {r4, r5, r6, lr}
005d963c  02 00 51 e1                                      cmp r1, r2
005d9640  08 d0 4d e2                                      sub sp, sp, #8
005d9644  01 40 a0 e1                                      mov r4, r1
005d9648  00 50 a0 e1                                      mov r5, r0
005d964c  0d 00 00 0a                                      beq #0x5d9688
005d9650  18 10 9d e5                                      ldr r1, [sp, #0x18]
005d9654  00 00 51 e3                                      cmp r1, #0
005d9658  1e 00 00 0a                                      beq #0x5d96d8
005d965c  03 10 a0 e1                                      mov r1, r3
005d9660  04 00 a0 e1                                      mov r0, r4
005d9664  00 20 8d e5                                      str r2, [sp]
005d9668  c4 fc ff eb                                      bl #0x5d8980
005d966c  00 20 9d e5                                      ldr r2, [sp]
005d9670  00 60 a0 e1                                      mov r6, r0
005d9674  08 00 82 e5                                      str r0, [r2, #8]
005d9678  08 30 94 e5                                      ldr r3, [r4, #8]
005d967c  03 00 52 e1                                      cmp r2, r3
005d9680  08 00 84 05                                      streq r0, [r4, #8]
005d9684  08 00 00 ea                                      b #0x5d96ac
005d9688  03 10 a0 e1                                      mov r1, r3
005d968c  04 00 a0 e1                                      mov r0, r4
005d9690  00 20 8d e5                                      str r2, [sp]
005d9694  b9 fc ff eb                                      bl #0x5d8980
005d9698  08 00 84 e5                                      str r0, [r4, #8]
005d969c  04 00 84 e5                                      str r0, [r4, #4]
005d96a0  0c 00 84 e5                                      str r0, [r4, #0xc]
005d96a4  00 20 9d e5                                      ldr r2, [sp]
005d96a8  00 60 a0 e1                                      mov r6, r0
005d96ac  06 00 a0 e1                                      mov r0, r6
005d96b0  04 20 86 e5                                      str r2, [r6, #4]
005d96b4  04 10 84 e2                                      add r1, r4, #4
005d96b8  28 e8 f4 eb                                      bl #0x313760
005d96bc  10 30 94 e5                                      ldr r3, [r4, #0x10]
005d96c0  05 00 a0 e1                                      mov r0, r5
005d96c4  01 30 83 e2                                      add r3, r3, #1
005d96c8  10 30 84 e5                                      str r3, [r4, #0x10]
005d96cc  00 60 85 e5                                      str r6, [r5]
005d96d0  08 d0 8d e2                                      add sp, sp, #8
005d96d4  70 80 bd e8                                      pop {r4, r5, r6, pc}
005d96d8  00 00 93 e5                                      ldr r0, [r3]
005d96dc  10 10 92 e5                                      ldr r1, [r2, #0x10]
005d96e0  00 20 8d e5                                      str r2, [sp]
005d96e4  00 00 50 e3                                      cmp r0, #0
005d96e8  04 00 80 12                                      addne r0, r0, #4
005d96ec  00 00 51 e3                                      cmp r1, #0
005d96f0  04 10 81 12                                      addne r1, r1, #4
005d96f4  04 30 8d e5                                      str r3, [sp, #4]
005d96f8  07 d3 f4 eb                                      bl #0x30e31c
005d96fc  00 00 50 e3                                      cmp r0, #0
005d9700  0c 00 9d e8                                      ldm sp, {r2, r3}
005d9704  d4 ff ff ba                                      blt #0x5d965c
005d9708  03 10 a0 e1                                      mov r1, r3
005d970c  04 00 a0 e1                                      mov r0, r4
005d9710  00 20 8d e5                                      str r2, [sp]
005d9714  99 fc ff eb                                      bl #0x5d8980
005d9718  00 20 9d e5                                      ldr r2, [sp]
005d971c  00 60 a0 e1                                      mov r6, r0
005d9720  0c 00 82 e5                                      str r0, [r2, #0xc]
005d9724  0c 30 94 e5                                      ldr r3, [r4, #0xc]
005d9728  03 00 52 e1                                      cmp r2, r3
005d972c  0c 00 84 05                                      streq r0, [r4, #0xc]
005d9730  dd ff ff ea                                      b #0x5d96ac

; FUNCTION 0x005da8bc, declared_size=448, range_size=448, mode=arm
; class-group: std::priv::_Rb_tree<glitch::core::SSharedString, std::less<glitch::core::SSharedString>, std::pair<glitch::core::SSharedString const, glitch::video::CMaterialRendererManager::SCreationState::SParameterDef>, std::priv::_Select1st<std::pair<glitch::core::SSharedString const, glitch::video::CMaterialRendererManager::SCreationState::SParameterDef> >, std::priv::_MapTraitsT<std::pair<glitch::core::SSharedString const, glitch::video::CMaterialRendererManager::SCreationState::SParameterDef> >, glitch::core::SProcessBufferAllocator<std::pair<glitch::core::SSharedString const, glitch::video::CMaterialRendererManager::SCreationState::SParameterDef> > >
; alias: _ZNSt4priv8_Rb_treeIN6glitch4core13SSharedStringESt4lessIS3_ESt4pairIKS3_NS1_5video24CMaterialRendererManager14SCreationState13SParameterDefEENS_10_Select1stISC_EENS_11_MapTraitsTISC_EENS2_23SProcessBufferAllocatorISC_EEE13insert_uniqueERKSC_
; demangled: std::priv::_Rb_tree<glitch::core::SSharedString, std::less<glitch::core::SSharedString>, std::pair<glitch::core::SSharedString const, glitch::video::CMaterialRendererManager::SCreationState::SParameterDef>, std::priv::_Select1st<std::pair<glitch::core::SSharedString const, glitch::video::CMaterialRendererManager::SCreationState::SParameterDef> >, std::priv::_MapTraitsT<std::pair<glitch::core::SSharedString const, glitch::video::CMaterialRendererManager::SCreationState::SParameterDef> >, glitch::core::SProcessBufferAllocator<std::pair<glitch::core::SSharedString const, glitch::video::CMaterialRendererManager::SCreationState::SParameterDef> > >::insert_unique(std::pair<glitch::core::SSharedString const, glitch::video::CMaterialRendererManager::SCreationState::SParameterDef> const&)
; decoder-mode: arm
005da8bc  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005da8c0  04 50 91 e5                                      ldr r5, [r1, #4]
005da8c4  10 d0 4d e2                                      sub sp, sp, #0x10
005da8c8  01 60 a0 e1                                      mov r6, r1
005da8cc  00 00 55 e3                                      cmp r5, #0
005da8d0  00 40 a0 e1                                      mov r4, r0
005da8d4  02 70 a0 e1                                      mov r7, r2
005da8d8  01 50 a0 01                                      moveq r5, r1
005da8dc  24 00 00 0a                                      beq #0x5da974
005da8e0  00 a0 92 e5                                      ldr sl, [r2]
005da8e4  04 90 8a e2                                      add sb, sl, #4
005da8e8  00 00 00 ea                                      b #0x5da8f0
005da8ec  03 50 a0 e1                                      mov r5, r3
005da8f0  10 80 95 e5                                      ldr r8, [r5, #0x10]
005da8f4  00 00 5a e3                                      cmp sl, #0
005da8f8  09 00 a0 11                                      movne r0, sb
005da8fc  00 00 a0 03                                      moveq r0, #0
005da900  00 00 58 e3                                      cmp r8, #0
005da904  08 10 a0 01                                      moveq r1, r8
005da908  04 10 88 12                                      addne r1, r8, #4
005da90c  82 ce f4 eb                                      bl #0x30e31c
005da910  00 00 50 e3                                      cmp r0, #0
005da914  08 30 95 b5                                      ldrlt r3, [r5, #8]
005da918  0c 30 95 a5                                      ldrge r3, [r5, #0xc]
005da91c  01 20 a0 b3                                      movlt r2, #1
005da920  00 20 a0 a3                                      movge r2, #0
005da924  00 00 53 e3                                      cmp r3, #0
005da928  ef ff ff 1a                                      bne #0x5da8ec
005da92c  00 00 52 e3                                      cmp r2, #0
005da930  05 90 a0 01                                      moveq sb, r5
005da934  0e 00 00 1a                                      bne #0x5da974
005da938  00 00 58 e3                                      cmp r8, #0
005da93c  08 00 a0 01                                      moveq r0, r8
005da940  04 00 88 12                                      addne r0, r8, #4
005da944  00 00 5a e3                                      cmp sl, #0
005da948  0a 10 a0 01                                      moveq r1, sl
005da94c  04 10 8a 12                                      addne r1, sl, #4
005da950  71 ce f4 eb                                      bl #0x30e31c
005da954  00 00 50 e3                                      cmp r0, #0
005da958  00 30 a0 a3                                      movge r3, #0
005da95c  00 90 84 a5                                      strge sb, [r4]
005da960  04 30 c4 a5                                      strbge r3, [r4, #4]
005da964  18 00 00 ba                                      blt #0x5da9cc
005da968  04 00 a0 e1                                      mov r0, r4
005da96c  10 d0 8d e2                                      add sp, sp, #0x10
005da970  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005da974  08 30 96 e5                                      ldr r3, [r6, #8]
005da978  03 00 55 e1                                      cmp r5, r3
005da97c  33 00 00 0a                                      beq #0x5daa50
005da980  00 30 d5 e5                                      ldrb r3, [r5]
005da984  00 00 53 e3                                      cmp r3, #0
005da988  03 00 00 1a                                      bne #0x5da99c
005da98c  04 30 95 e5                                      ldr r3, [r5, #4]
005da990  04 30 93 e5                                      ldr r3, [r3, #4]
005da994  03 00 55 e1                                      cmp r5, r3
005da998  27 00 00 0a                                      beq #0x5daa3c
005da99c  08 20 95 e5                                      ldr r2, [r5, #8]
005da9a0  00 00 52 e3                                      cmp r2, #0
005da9a4  01 00 00 1a                                      bne #0x5da9b0
005da9a8  13 00 00 ea                                      b #0x5da9fc
005da9ac  03 20 a0 e1                                      mov r2, r3
005da9b0  0c 30 92 e5                                      ldr r3, [r2, #0xc]
005da9b4  00 00 53 e3                                      cmp r3, #0
005da9b8  fb ff ff 1a                                      bne #0x5da9ac
005da9bc  02 90 a0 e1                                      mov sb, r2
005da9c0  00 a0 97 e5                                      ldr sl, [r7]
005da9c4  10 80 92 e5                                      ldr r8, [r2, #0x10]
005da9c8  da ff ff ea                                      b #0x5da938
005da9cc  05 20 a0 e1                                      mov r2, r5
005da9d0  07 30 a0 e1                                      mov r3, r7
005da9d4  00 c0 a0 e3                                      mov ip, #0
005da9d8  06 10 a0 e1                                      mov r1, r6
005da9dc  08 00 8d e2                                      add r0, sp, #8
005da9e0  00 c0 8d e5                                      str ip, [sp]
005da9e4  13 fb ff eb                                      bl #0x5d9638
005da9e8  08 30 9d e5                                      ldr r3, [sp, #8]
005da9ec  01 20 a0 e3                                      mov r2, #1
005da9f0  04 20 c4 e5                                      strb r2, [r4, #4]
005da9f4  00 30 84 e5                                      str r3, [r4]
005da9f8  da ff ff ea                                      b #0x5da968
005da9fc  04 30 95 e5                                      ldr r3, [r5, #4]
005daa00  08 20 93 e5                                      ldr r2, [r3, #8]
005daa04  02 00 55 e1                                      cmp r5, r2
005daa08  03 90 a0 11                                      movne sb, r3
005daa0c  00 a0 97 15                                      ldrne sl, [r7]
005daa10  10 80 93 15                                      ldrne r8, [r3, #0x10]
005daa14  01 00 00 0a                                      beq #0x5daa20
005daa18  c6 ff ff ea                                      b #0x5da938
005daa1c  09 30 a0 e1                                      mov r3, sb
005daa20  04 90 93 e5                                      ldr sb, [r3, #4]
005daa24  08 20 99 e5                                      ldr r2, [sb, #8]
005daa28  03 00 52 e1                                      cmp r2, r3
005daa2c  fa ff ff 0a                                      beq #0x5daa1c
005daa30  00 a0 97 e5                                      ldr sl, [r7]
005daa34  10 80 99 e5                                      ldr r8, [sb, #0x10]
005daa38  be ff ff ea                                      b #0x5da938
005daa3c  0c 30 95 e5                                      ldr r3, [r5, #0xc]
005daa40  00 a0 97 e5                                      ldr sl, [r7]
005daa44  03 90 a0 e1                                      mov sb, r3
005daa48  10 80 93 e5                                      ldr r8, [r3, #0x10]
005daa4c  b9 ff ff ea                                      b #0x5da938
005daa50  05 20 a0 e1                                      mov r2, r5
005daa54  07 30 a0 e1                                      mov r3, r7
005daa58  06 10 a0 e1                                      mov r1, r6
005daa5c  0c 00 8d e2                                      add r0, sp, #0xc
005daa60  00 50 8d e5                                      str r5, [sp]
005daa64  f3 fa ff eb                                      bl #0x5d9638
005daa68  0c 30 9d e5                                      ldr r3, [sp, #0xc]
005daa6c  01 20 a0 e3                                      mov r2, #1
005daa70  04 20 c4 e5                                      strb r2, [r4, #4]
005daa74  00 30 84 e5                                      str r3, [r4]
005daa78  ba ff ff ea                                      b #0x5da968

; FUNCTION 0x005dac00, declared_size=124, range_size=124, mode=arm
; class-group: std::priv::_Rb_tree<glitch::core::SSharedString, std::less<glitch::core::SSharedString>, std::pair<glitch::core::SSharedString const, glitch::video::CMaterialRendererManager::SCreationState::SParameterDef>, std::priv::_Select1st<std::pair<glitch::core::SSharedString const, glitch::video::CMaterialRendererManager::SCreationState::SParameterDef> >, std::priv::_MapTraitsT<std::pair<glitch::core::SSharedString const, glitch::video::CMaterialRendererManager::SCreationState::SParameterDef> >, glitch::core::SProcessBufferAllocator<std::pair<glitch::core::SSharedString const, glitch::video::CMaterialRendererManager::SCreationState::SParameterDef> > >
; alias: _ZNSt4priv8_Rb_treeIN6glitch4core13SSharedStringESt4lessIS3_ESt4pairIKS3_NS1_5video24CMaterialRendererManager14SCreationState13SParameterDefEENS_10_Select1stISC_EENS_11_MapTraitsTISC_EENS2_23SProcessBufferAllocatorISC_EEE8_M_eraseEPNS_18_Rb_tree_node_baseE
; demangled: std::priv::_Rb_tree<glitch::core::SSharedString, std::less<glitch::core::SSharedString>, std::pair<glitch::core::SSharedString const, glitch::video::CMaterialRendererManager::SCreationState::SParameterDef>, std::priv::_Select1st<std::pair<glitch::core::SSharedString const, glitch::video::CMaterialRendererManager::SCreationState::SParameterDef> >, std::priv::_MapTraitsT<std::pair<glitch::core::SSharedString const, glitch::video::CMaterialRendererManager::SCreationState::SParameterDef> >, glitch::core::SProcessBufferAllocator<std::pair<glitch::core::SSharedString const, glitch::video::CMaterialRendererManager::SCreationState::SParameterDef> > >::_M_erase(std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
005dac00  70 40 2d e9                                      push {r4, r5, r6, lr}
005dac04  00 40 51 e2                                      subs r4, r1, #0
005dac08  00 50 a0 e1                                      mov r5, r0
005dac0c  19 00 00 0a                                      beq #0x5dac78
005dac10  05 00 a0 e1                                      mov r0, r5
005dac14  0c 10 94 e5                                      ldr r1, [r4, #0xc]
005dac18  f8 ff ff eb                                      bl #0x5dac00
005dac1c  14 00 94 e5                                      ldr r0, [r4, #0x14]
005dac20  08 60 94 e5                                      ldr r6, [r4, #8]
005dac24  00 00 50 e3                                      cmp r0, #0
005dac28  05 00 00 0a                                      beq #0x5dac44
005dac2c  00 30 90 e5                                      ldr r3, [r0]
005dac30  01 30 43 e2                                      sub r3, r3, #1
005dac34  00 00 53 e3                                      cmp r3, #0
005dac38  00 30 80 e5                                      str r3, [r0]
005dac3c  00 00 00 1a                                      bne #0x5dac44
005dac40  55 28 03 eb                                      bl #0x6a4d9c
005dac44  10 00 94 e5                                      ldr r0, [r4, #0x10]
005dac48  00 00 50 e3                                      cmp r0, #0
005dac4c  05 00 00 0a                                      beq #0x5dac68
005dac50  00 30 90 e5                                      ldr r3, [r0]
005dac54  01 30 43 e2                                      sub r3, r3, #1
005dac58  00 00 53 e3                                      cmp r3, #0
005dac5c  00 30 80 e5                                      str r3, [r0]
005dac60  00 00 00 1a                                      bne #0x5dac68
005dac64  4c 28 03 eb                                      bl #0x6a4d9c
005dac68  04 00 a0 e1                                      mov r0, r4
005dac6c  85 66 fd eb                                      bl #0x534688
005dac70  00 40 56 e2                                      subs r4, r6, #0
005dac74  e5 ff ff 1a                                      bne #0x5dac10
005dac78  70 80 bd e8                                      pop {r4, r5, r6, pc}

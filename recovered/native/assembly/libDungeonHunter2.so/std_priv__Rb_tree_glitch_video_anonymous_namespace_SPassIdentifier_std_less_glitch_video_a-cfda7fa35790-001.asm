; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005d8014, declared_size=52, range_size=52, mode=arm
; class-group: std::priv::_Rb_tree<glitch::video::(anonymous namespace)::SPassIdentifier, std::less<glitch::video::(anonymous namespace)::SPassIdentifier const>, std::pair<glitch::video::(anonymous namespace)::SPassIdentifier const, unsigned short>, std::priv::_Select1st<std::pair<glitch::video::(anonymous namespace)::SPassIdentifier const, unsigned short> >, std::priv::_MapTraitsT<std::pair<glitch::video::(anonymous namespace)::SPassIdentifier const, unsigned short> >, glitch::core::SProcessBufferAllocator<std::pair<glitch::video::(anonymous namespace)::SPassIdentifier const, unsigned short> > >
; alias: _ZNSt4priv8_Rb_treeIN6glitch5video12_GLOBAL__N_115SPassIdentifierESt4lessIKS4_ESt4pairIS6_tENS_10_Select1stIS9_EENS_11_MapTraitsTIS9_EENS1_4core23SProcessBufferAllocatorIS9_EEE8_M_eraseEPNS_18_Rb_tree_node_baseE
; demangled: std::priv::_Rb_tree<glitch::video::(anonymous namespace)::SPassIdentifier, std::less<glitch::video::(anonymous namespace)::SPassIdentifier const>, std::pair<glitch::video::(anonymous namespace)::SPassIdentifier const, unsigned short>, std::priv::_Select1st<std::pair<glitch::video::(anonymous namespace)::SPassIdentifier const, unsigned short> >, std::priv::_MapTraitsT<std::pair<glitch::video::(anonymous namespace)::SPassIdentifier const, unsigned short> >, glitch::core::SProcessBufferAllocator<std::pair<glitch::video::(anonymous namespace)::SPassIdentifier const, unsigned short> > >::_M_erase(std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
005d8014  70 40 2d e9                                      push {r4, r5, r6, lr}
005d8018  00 40 51 e2                                      subs r4, r1, #0
005d801c  00 50 a0 e1                                      mov r5, r0
005d8020  07 00 00 0a                                      beq #0x5d8044
005d8024  0c 10 94 e5                                      ldr r1, [r4, #0xc]
005d8028  05 00 a0 e1                                      mov r0, r5
005d802c  f8 ff ff eb                                      bl #0x5d8014
005d8030  08 60 94 e5                                      ldr r6, [r4, #8]
005d8034  04 00 a0 e1                                      mov r0, r4
005d8038  92 71 fd eb                                      bl #0x534688
005d803c  00 40 56 e2                                      subs r4, r6, #0
005d8040  f7 ff ff 1a                                      bne #0x5d8024
005d8044  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x005d8c50, declared_size=324, range_size=324, mode=arm
; class-group: std::priv::_Rb_tree<glitch::video::(anonymous namespace)::SPassIdentifier, std::less<glitch::video::(anonymous namespace)::SPassIdentifier const>, std::pair<glitch::video::(anonymous namespace)::SPassIdentifier const, unsigned short>, std::priv::_Select1st<std::pair<glitch::video::(anonymous namespace)::SPassIdentifier const, unsigned short> >, std::priv::_MapTraitsT<std::pair<glitch::video::(anonymous namespace)::SPassIdentifier const, unsigned short> >, glitch::core::SProcessBufferAllocator<std::pair<glitch::video::(anonymous namespace)::SPassIdentifier const, unsigned short> > >
; alias: _ZNSt4priv8_Rb_treeIN6glitch5video12_GLOBAL__N_115SPassIdentifierESt4lessIKS4_ESt4pairIS6_tENS_10_Select1stIS9_EENS_11_MapTraitsTIS9_EENS1_4core23SProcessBufferAllocatorIS9_EEE9_M_insertEPNS_18_Rb_tree_node_baseERKS9_SJ_SJ_
; demangled: std::priv::_Rb_tree<glitch::video::(anonymous namespace)::SPassIdentifier, std::less<glitch::video::(anonymous namespace)::SPassIdentifier const>, std::pair<glitch::video::(anonymous namespace)::SPassIdentifier const, unsigned short>, std::priv::_Select1st<std::pair<glitch::video::(anonymous namespace)::SPassIdentifier const, unsigned short> >, std::priv::_MapTraitsT<std::pair<glitch::video::(anonymous namespace)::SPassIdentifier const, unsigned short> >, glitch::core::SProcessBufferAllocator<std::pair<glitch::video::(anonymous namespace)::SPassIdentifier const, unsigned short> > >::_M_insert(std::priv::_Rb_tree_node_base*, std::pair<glitch::video::(anonymous namespace)::SPassIdentifier const, unsigned short> const&, std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
005d8c50  02 00 51 e1                                      cmp r1, r2
005d8c54  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005d8c58  01 40 a0 e1                                      mov r4, r1
005d8c5c  02 50 a0 e1                                      mov r5, r2
005d8c60  00 60 a0 e1                                      mov r6, r0
005d8c64  03 70 a0 e1                                      mov r7, r3
005d8c68  32 00 00 0a                                      beq #0x5d8d38
005d8c6c  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
005d8c70  00 00 53 e3                                      cmp r3, #0
005d8c74  19 00 00 0a                                      beq #0x5d8ce0
005d8c78  18 00 a0 e3                                      mov r0, #0x18
005d8c7c  5c 6e fd eb                                      bl #0x5345f4
005d8c80  b0 30 d7 e1                                      ldrh r3, [r7]
005d8c84  00 80 a0 e1                                      mov r8, r0
005d8c88  b0 31 c0 e1                                      strh r3, [r0, #0x10]
005d8c8c  b2 30 d7 e1                                      ldrh r3, [r7, #2]
005d8c90  b2 31 c0 e1                                      strh r3, [r0, #0x12]
005d8c94  b4 70 d7 e1                                      ldrh r7, [r7, #4]
005d8c98  00 30 a0 e3                                      mov r3, #0
005d8c9c  0c 30 80 e5                                      str r3, [r0, #0xc]
005d8ca0  b4 71 c0 e1                                      strh r7, [r0, #0x14]
005d8ca4  08 30 80 e5                                      str r3, [r0, #8]
005d8ca8  0c 00 85 e5                                      str r0, [r5, #0xc]
005d8cac  0c 30 94 e5                                      ldr r3, [r4, #0xc]
005d8cb0  03 00 55 e1                                      cmp r5, r3
005d8cb4  1d 00 00 0a                                      beq #0x5d8d30
005d8cb8  08 00 a0 e1                                      mov r0, r8
005d8cbc  04 50 88 e5                                      str r5, [r8, #4]
005d8cc0  04 10 84 e2                                      add r1, r4, #4
005d8cc4  a5 ea f4 eb                                      bl #0x313760
005d8cc8  10 30 94 e5                                      ldr r3, [r4, #0x10]
005d8ccc  06 00 a0 e1                                      mov r0, r6
005d8cd0  01 30 83 e2                                      add r3, r3, #1
005d8cd4  10 30 84 e5                                      str r3, [r4, #0x10]
005d8cd8  00 80 86 e5                                      str r8, [r6]
005d8cdc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005d8ce0  18 30 9d e5                                      ldr r3, [sp, #0x18]
005d8ce4  00 00 53 e3                                      cmp r3, #0
005d8ce8  22 00 00 0a                                      beq #0x5d8d78
005d8cec  18 00 a0 e3                                      mov r0, #0x18
005d8cf0  3f 6e fd eb                                      bl #0x5345f4
005d8cf4  b0 30 d7 e1                                      ldrh r3, [r7]
005d8cf8  00 80 a0 e1                                      mov r8, r0
005d8cfc  b0 31 c0 e1                                      strh r3, [r0, #0x10]
005d8d00  b2 30 d7 e1                                      ldrh r3, [r7, #2]
005d8d04  b2 31 c0 e1                                      strh r3, [r0, #0x12]
005d8d08  b4 70 d7 e1                                      ldrh r7, [r7, #4]
005d8d0c  00 30 a0 e3                                      mov r3, #0
005d8d10  0c 30 80 e5                                      str r3, [r0, #0xc]
005d8d14  b4 71 c0 e1                                      strh r7, [r0, #0x14]
005d8d18  08 30 80 e5                                      str r3, [r0, #8]
005d8d1c  08 00 85 e5                                      str r0, [r5, #8]
005d8d20  08 30 94 e5                                      ldr r3, [r4, #8]
005d8d24  03 00 55 e1                                      cmp r5, r3
005d8d28  08 00 84 05                                      streq r0, [r4, #8]
005d8d2c  e1 ff ff ea                                      b #0x5d8cb8
005d8d30  0c 80 84 e5                                      str r8, [r4, #0xc]
005d8d34  df ff ff ea                                      b #0x5d8cb8
005d8d38  18 00 a0 e3                                      mov r0, #0x18
005d8d3c  2c 6e fd eb                                      bl #0x5345f4
005d8d40  b0 30 d7 e1                                      ldrh r3, [r7]
005d8d44  00 80 a0 e1                                      mov r8, r0
005d8d48  b0 31 c0 e1                                      strh r3, [r0, #0x10]
005d8d4c  b2 30 d7 e1                                      ldrh r3, [r7, #2]
005d8d50  b2 31 c0 e1                                      strh r3, [r0, #0x12]
005d8d54  b4 70 d7 e1                                      ldrh r7, [r7, #4]
005d8d58  00 30 a0 e3                                      mov r3, #0
005d8d5c  0c 30 80 e5                                      str r3, [r0, #0xc]
005d8d60  b4 71 c0 e1                                      strh r7, [r0, #0x14]
005d8d64  08 30 80 e5                                      str r3, [r0, #8]
005d8d68  08 00 84 e5                                      str r0, [r4, #8]
005d8d6c  04 00 84 e5                                      str r0, [r4, #4]
005d8d70  0c 00 84 e5                                      str r0, [r4, #0xc]
005d8d74  cf ff ff ea                                      b #0x5d8cb8
005d8d78  10 10 82 e2                                      add r1, r2, #0x10
005d8d7c  07 00 a0 e1                                      mov r0, r7
005d8d80  04 20 a0 e3                                      mov r2, #4
005d8d84  15 d6 f4 eb                                      bl #0x30e5e0
005d8d88  00 00 50 e3                                      cmp r0, #0
005d8d8c  b9 ff ff aa                                      bge #0x5d8c78
005d8d90  d5 ff ff ea                                      b #0x5d8cec

; FUNCTION 0x005d8d94, declared_size=400, range_size=400, mode=arm
; class-group: std::priv::_Rb_tree<glitch::video::(anonymous namespace)::SPassIdentifier, std::less<glitch::video::(anonymous namespace)::SPassIdentifier const>, std::pair<glitch::video::(anonymous namespace)::SPassIdentifier const, unsigned short>, std::priv::_Select1st<std::pair<glitch::video::(anonymous namespace)::SPassIdentifier const, unsigned short> >, std::priv::_MapTraitsT<std::pair<glitch::video::(anonymous namespace)::SPassIdentifier const, unsigned short> >, glitch::core::SProcessBufferAllocator<std::pair<glitch::video::(anonymous namespace)::SPassIdentifier const, unsigned short> > >
; alias: _ZNSt4priv8_Rb_treeIN6glitch5video12_GLOBAL__N_115SPassIdentifierESt4lessIKS4_ESt4pairIS6_tENS_10_Select1stIS9_EENS_11_MapTraitsTIS9_EENS1_4core23SProcessBufferAllocatorIS9_EEE13insert_uniqueERKS9_
; demangled: std::priv::_Rb_tree<glitch::video::(anonymous namespace)::SPassIdentifier, std::less<glitch::video::(anonymous namespace)::SPassIdentifier const>, std::pair<glitch::video::(anonymous namespace)::SPassIdentifier const, unsigned short>, std::priv::_Select1st<std::pair<glitch::video::(anonymous namespace)::SPassIdentifier const, unsigned short> >, std::priv::_MapTraitsT<std::pair<glitch::video::(anonymous namespace)::SPassIdentifier const, unsigned short> >, glitch::core::SProcessBufferAllocator<std::pair<glitch::video::(anonymous namespace)::SPassIdentifier const, unsigned short> > >::insert_unique(std::pair<glitch::video::(anonymous namespace)::SPassIdentifier const, unsigned short> const&)
; decoder-mode: arm
005d8d94  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005d8d98  04 50 91 e5                                      ldr r5, [r1, #4]
005d8d9c  10 d0 4d e2                                      sub sp, sp, #0x10
005d8da0  01 70 a0 e1                                      mov r7, r1
005d8da4  00 00 55 e3                                      cmp r5, #0
005d8da8  00 40 a0 e1                                      mov r4, r0
005d8dac  02 60 a0 e1                                      mov r6, r2
005d8db0  01 50 a0 01                                      moveq r5, r1
005d8db4  01 00 00 1a                                      bne #0x5d8dc0
005d8db8  1b 00 00 ea                                      b #0x5d8e2c
005d8dbc  03 50 a0 e1                                      mov r5, r3
005d8dc0  04 20 a0 e3                                      mov r2, #4
005d8dc4  10 10 85 e2                                      add r1, r5, #0x10
005d8dc8  06 00 a0 e1                                      mov r0, r6
005d8dcc  03 d6 f4 eb                                      bl #0x30e5e0
005d8dd0  00 00 50 e3                                      cmp r0, #0
005d8dd4  08 30 95 b5                                      ldrlt r3, [r5, #8]
005d8dd8  0c 30 95 a5                                      ldrge r3, [r5, #0xc]
005d8ddc  01 20 a0 b3                                      movlt r2, #1
005d8de0  00 20 a0 a3                                      movge r2, #0
005d8de4  00 00 53 e3                                      cmp r3, #0
005d8de8  05 00 a0 e1                                      mov r0, r5
005d8dec  f2 ff ff 1a                                      bne #0x5d8dbc
005d8df0  00 00 52 e3                                      cmp r2, #0
005d8df4  05 80 a0 01                                      moveq r8, r5
005d8df8  0b 00 00 1a                                      bne #0x5d8e2c
005d8dfc  10 00 80 e2                                      add r0, r0, #0x10
005d8e00  06 10 a0 e1                                      mov r1, r6
005d8e04  04 20 a0 e3                                      mov r2, #4
005d8e08  f4 d5 f4 eb                                      bl #0x30e5e0
005d8e0c  00 00 50 e3                                      cmp r0, #0
005d8e10  00 30 a0 a3                                      movge r3, #0
005d8e14  00 80 84 a5                                      strge r8, [r4]
005d8e18  04 30 c4 a5                                      strbge r3, [r4, #4]
005d8e1c  16 00 00 ba                                      blt #0x5d8e7c
005d8e20  04 00 a0 e1                                      mov r0, r4
005d8e24  10 d0 8d e2                                      add sp, sp, #0x10
005d8e28  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005d8e2c  08 30 97 e5                                      ldr r3, [r7, #8]
005d8e30  03 00 55 e1                                      cmp r5, r3
005d8e34  2e 00 00 0a                                      beq #0x5d8ef4
005d8e38  00 30 d5 e5                                      ldrb r3, [r5]
005d8e3c  00 00 53 e3                                      cmp r3, #0
005d8e40  03 00 00 1a                                      bne #0x5d8e54
005d8e44  04 30 95 e5                                      ldr r3, [r5, #4]
005d8e48  04 30 93 e5                                      ldr r3, [r3, #4]
005d8e4c  03 00 55 e1                                      cmp r5, r3
005d8e50  24 00 00 0a                                      beq #0x5d8ee8
005d8e54  08 00 95 e5                                      ldr r0, [r5, #8]
005d8e58  00 00 50 e3                                      cmp r0, #0
005d8e5c  01 00 00 1a                                      bne #0x5d8e68
005d8e60  12 00 00 ea                                      b #0x5d8eb0
005d8e64  03 00 a0 e1                                      mov r0, r3
005d8e68  0c 30 90 e5                                      ldr r3, [r0, #0xc]
005d8e6c  00 00 53 e3                                      cmp r3, #0
005d8e70  fb ff ff 1a                                      bne #0x5d8e64
005d8e74  00 80 a0 e1                                      mov r8, r0
005d8e78  df ff ff ea                                      b #0x5d8dfc
005d8e7c  00 c0 a0 e3                                      mov ip, #0
005d8e80  05 20 a0 e1                                      mov r2, r5
005d8e84  06 30 a0 e1                                      mov r3, r6
005d8e88  07 10 a0 e1                                      mov r1, r7
005d8e8c  08 00 8d e2                                      add r0, sp, #8
005d8e90  04 c0 8d e5                                      str ip, [sp, #4]
005d8e94  00 c0 8d e5                                      str ip, [sp]
005d8e98  6c ff ff eb                                      bl #0x5d8c50
005d8e9c  08 30 9d e5                                      ldr r3, [sp, #8]
005d8ea0  01 20 a0 e3                                      mov r2, #1
005d8ea4  04 20 c4 e5                                      strb r2, [r4, #4]
005d8ea8  00 30 84 e5                                      str r3, [r4]
005d8eac  db ff ff ea                                      b #0x5d8e20
005d8eb0  04 30 95 e5                                      ldr r3, [r5, #4]
005d8eb4  08 20 93 e5                                      ldr r2, [r3, #8]
005d8eb8  02 00 55 e1                                      cmp r5, r2
005d8ebc  03 00 a0 11                                      movne r0, r3
005d8ec0  00 80 a0 11                                      movne r8, r0
005d8ec4  01 00 00 0a                                      beq #0x5d8ed0
005d8ec8  cb ff ff ea                                      b #0x5d8dfc
005d8ecc  00 30 a0 e1                                      mov r3, r0
005d8ed0  04 00 93 e5                                      ldr r0, [r3, #4]
005d8ed4  08 20 90 e5                                      ldr r2, [r0, #8]
005d8ed8  03 00 52 e1                                      cmp r2, r3
005d8edc  fa ff ff 0a                                      beq #0x5d8ecc
005d8ee0  00 80 a0 e1                                      mov r8, r0
005d8ee4  c4 ff ff ea                                      b #0x5d8dfc
005d8ee8  0c 00 95 e5                                      ldr r0, [r5, #0xc]
005d8eec  00 80 a0 e1                                      mov r8, r0
005d8ef0  c1 ff ff ea                                      b #0x5d8dfc
005d8ef4  05 20 a0 e1                                      mov r2, r5
005d8ef8  06 30 a0 e1                                      mov r3, r6
005d8efc  00 c0 a0 e3                                      mov ip, #0
005d8f00  07 10 a0 e1                                      mov r1, r7
005d8f04  0c 00 8d e2                                      add r0, sp, #0xc
005d8f08  20 10 8d e8                                      stm sp, {r5, ip}
005d8f0c  4f ff ff eb                                      bl #0x5d8c50
005d8f10  0c 30 9d e5                                      ldr r3, [sp, #0xc]
005d8f14  01 20 a0 e3                                      mov r2, #1
005d8f18  04 20 c4 e5                                      strb r2, [r4, #4]
005d8f1c  00 30 84 e5                                      str r3, [r4]
005d8f20  be ff ff ea                                      b #0x5d8e20

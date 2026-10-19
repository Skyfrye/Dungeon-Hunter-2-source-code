; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003c2980, declared_size=128, range_size=128, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, CharStateMachine::StateInfo>, std::priv::_Select1st<std::pair<int const, CharStateMachine::StateInfo> >, std::priv::_MapTraitsT<std::pair<int const, CharStateMachine::StateInfo> >, std::allocator<std::pair<int const, CharStateMachine::StateInfo> > >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKiN16CharStateMachine9StateInfoEENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE8_M_eraseEPNS_18_Rb_tree_node_baseE
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, CharStateMachine::StateInfo>, std::priv::_Select1st<std::pair<int const, CharStateMachine::StateInfo> >, std::priv::_MapTraitsT<std::pair<int const, CharStateMachine::StateInfo> >, std::allocator<std::pair<int const, CharStateMachine::StateInfo> > >::_M_erase(std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
003c2980  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003c2984  00 40 51 e2                                      subs r4, r1, #0
003c2988  00 70 a0 e1                                      mov r7, r0
003c298c  1a 00 00 0a                                      beq #0x3c29fc
003c2990  00 80 a0 e3                                      mov r8, #0
003c2994  04 00 00 ea                                      b #0x3c29ac
003c2998  04 00 a0 e1                                      mov r0, r4
003c299c  34 10 a0 e3                                      mov r1, #0x34
003c29a0  56 19 0d eb                                      bl #0x708f00
003c29a4  00 40 55 e2                                      subs r4, r5, #0
003c29a8  13 00 00 0a                                      beq #0x3c29fc
003c29ac  0c 10 94 e5                                      ldr r1, [r4, #0xc]
003c29b0  07 00 a0 e1                                      mov r0, r7
003c29b4  f1 ff ff eb                                      bl #0x3c2980
003c29b8  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
003c29bc  08 50 94 e5                                      ldr r5, [r4, #8]
003c29c0  00 00 53 e3                                      cmp r3, #0
003c29c4  f3 ff ff 0a                                      beq #0x3c2998
003c29c8  1c 60 84 e2                                      add r6, r4, #0x1c
003c29cc  20 10 94 e5                                      ldr r1, [r4, #0x20]
003c29d0  06 00 a0 e1                                      mov r0, r6
003c29d4  db ff ff eb                                      bl #0x3c2948
003c29d8  28 60 84 e5                                      str r6, [r4, #0x28]
003c29dc  24 60 84 e5                                      str r6, [r4, #0x24]
003c29e0  20 80 84 e5                                      str r8, [r4, #0x20]
003c29e4  2c 80 84 e5                                      str r8, [r4, #0x2c]
003c29e8  04 00 a0 e1                                      mov r0, r4
003c29ec  34 10 a0 e3                                      mov r1, #0x34
003c29f0  42 19 0d eb                                      bl #0x708f00
003c29f4  00 40 55 e2                                      subs r4, r5, #0
003c29f8  eb ff ff 1a                                      bne #0x3c29ac
003c29fc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x003c6bb0, declared_size=92, range_size=92, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, CharStateMachine::StateInfo>, std::priv::_Select1st<std::pair<int const, CharStateMachine::StateInfo> >, std::priv::_MapTraitsT<std::pair<int const, CharStateMachine::StateInfo> >, std::allocator<std::pair<int const, CharStateMachine::StateInfo> > >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKiN16CharStateMachine9StateInfoEENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE14_M_create_nodeERKS7_
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, CharStateMachine::StateInfo>, std::priv::_Select1st<std::pair<int const, CharStateMachine::StateInfo> >, std::priv::_MapTraitsT<std::pair<int const, CharStateMachine::StateInfo> >, std::allocator<std::pair<int const, CharStateMachine::StateInfo> > >::_M_create_node(std::pair<int const, CharStateMachine::StateInfo> const&)
; decoder-mode: arm
003c6bb0  30 40 2d e9                                      push {r4, r5, lr}
003c6bb4  0c d0 4d e2                                      sub sp, sp, #0xc
003c6bb8  08 00 8d e2                                      add r0, sp, #8
003c6bbc  34 30 a0 e3                                      mov r3, #0x34
003c6bc0  04 30 20 e5                                      str r3, [r0, #-4]!
003c6bc4  01 50 a0 e1                                      mov r5, r1
003c6bc8  bc 08 0d eb                                      bl #0x708ec0
003c6bcc  00 30 95 e5                                      ldr r3, [r5]
003c6bd0  00 40 a0 e1                                      mov r4, r0
003c6bd4  0c 10 85 e2                                      add r1, r5, #0xc
003c6bd8  10 30 84 e5                                      str r3, [r4, #0x10]
003c6bdc  04 30 95 e5                                      ldr r3, [r5, #4]
003c6be0  1c 00 80 e2                                      add r0, r0, #0x1c
003c6be4  14 30 84 e5                                      str r3, [r4, #0x14]
003c6be8  08 30 95 e5                                      ldr r3, [r5, #8]
003c6bec  18 30 84 e5                                      str r3, [r4, #0x18]
003c6bf0  d0 ff ff eb                                      bl #0x3c6b38
003c6bf4  00 30 a0 e3                                      mov r3, #0
003c6bf8  0c 30 84 e5                                      str r3, [r4, #0xc]
003c6bfc  08 30 84 e5                                      str r3, [r4, #8]
003c6c00  04 00 a0 e1                                      mov r0, r4
003c6c04  0c d0 8d e2                                      add sp, sp, #0xc
003c6c08  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x003c6c0c, declared_size=216, range_size=216, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, CharStateMachine::StateInfo>, std::priv::_Select1st<std::pair<int const, CharStateMachine::StateInfo> >, std::priv::_MapTraitsT<std::pair<int const, CharStateMachine::StateInfo> >, std::allocator<std::pair<int const, CharStateMachine::StateInfo> > >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKiN16CharStateMachine9StateInfoEENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE9_M_insertEPNS_18_Rb_tree_node_baseERKS7_SF_SF_
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, CharStateMachine::StateInfo>, std::priv::_Select1st<std::pair<int const, CharStateMachine::StateInfo> >, std::priv::_MapTraitsT<std::pair<int const, CharStateMachine::StateInfo> >, std::allocator<std::pair<int const, CharStateMachine::StateInfo> > >::_M_insert(std::priv::_Rb_tree_node_base*, std::pair<int const, CharStateMachine::StateInfo> const&, std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
003c6c0c  02 00 51 e1                                      cmp r1, r2
003c6c10  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003c6c14  01 40 a0 e1                                      mov r4, r1
003c6c18  02 50 a0 e1                                      mov r5, r2
003c6c1c  00 60 a0 e1                                      mov r6, r0
003c6c20  22 00 00 0a                                      beq #0x3c6cb0
003c6c24  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
003c6c28  00 00 52 e3                                      cmp r2, #0
003c6c2c  11 00 00 0a                                      beq #0x3c6c78
003c6c30  03 10 a0 e1                                      mov r1, r3
003c6c34  04 00 a0 e1                                      mov r0, r4
003c6c38  dc ff ff eb                                      bl #0x3c6bb0
003c6c3c  0c 00 85 e5                                      str r0, [r5, #0xc]
003c6c40  0c 30 94 e5                                      ldr r3, [r4, #0xc]
003c6c44  00 70 a0 e1                                      mov r7, r0
003c6c48  03 00 55 e1                                      cmp r5, r3
003c6c4c  15 00 00 0a                                      beq #0x3c6ca8
003c6c50  07 00 a0 e1                                      mov r0, r7
003c6c54  04 50 87 e5                                      str r5, [r7, #4]
003c6c58  04 10 84 e2                                      add r1, r4, #4
003c6c5c  bf 32 fd eb                                      bl #0x313760
003c6c60  10 30 94 e5                                      ldr r3, [r4, #0x10]
003c6c64  06 00 a0 e1                                      mov r0, r6
003c6c68  01 30 83 e2                                      add r3, r3, #1
003c6c6c  10 30 84 e5                                      str r3, [r4, #0x10]
003c6c70  00 70 86 e5                                      str r7, [r6]
003c6c74  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003c6c78  18 20 9d e5                                      ldr r2, [sp, #0x18]
003c6c7c  00 00 52 e3                                      cmp r2, #0
003c6c80  12 00 00 0a                                      beq #0x3c6cd0
003c6c84  03 10 a0 e1                                      mov r1, r3
003c6c88  04 00 a0 e1                                      mov r0, r4
003c6c8c  c7 ff ff eb                                      bl #0x3c6bb0
003c6c90  08 00 85 e5                                      str r0, [r5, #8]
003c6c94  08 30 94 e5                                      ldr r3, [r4, #8]
003c6c98  00 70 a0 e1                                      mov r7, r0
003c6c9c  03 00 55 e1                                      cmp r5, r3
003c6ca0  08 00 84 05                                      streq r0, [r4, #8]
003c6ca4  e9 ff ff ea                                      b #0x3c6c50
003c6ca8  0c 70 84 e5                                      str r7, [r4, #0xc]
003c6cac  e7 ff ff ea                                      b #0x3c6c50
003c6cb0  03 10 a0 e1                                      mov r1, r3
003c6cb4  04 00 a0 e1                                      mov r0, r4
003c6cb8  bc ff ff eb                                      bl #0x3c6bb0
003c6cbc  00 70 a0 e1                                      mov r7, r0
003c6cc0  08 00 84 e5                                      str r0, [r4, #8]
003c6cc4  04 00 84 e5                                      str r0, [r4, #4]
003c6cc8  0c 00 84 e5                                      str r0, [r4, #0xc]
003c6ccc  df ff ff ea                                      b #0x3c6c50
003c6cd0  00 10 93 e5                                      ldr r1, [r3]
003c6cd4  10 20 95 e5                                      ldr r2, [r5, #0x10]
003c6cd8  02 00 51 e1                                      cmp r1, r2
003c6cdc  d3 ff ff aa                                      bge #0x3c6c30
003c6ce0  e7 ff ff ea                                      b #0x3c6c84

; FUNCTION 0x003c6ce4, declared_size=392, range_size=392, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, CharStateMachine::StateInfo>, std::priv::_Select1st<std::pair<int const, CharStateMachine::StateInfo> >, std::priv::_MapTraitsT<std::pair<int const, CharStateMachine::StateInfo> >, std::allocator<std::pair<int const, CharStateMachine::StateInfo> > >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKiN16CharStateMachine9StateInfoEENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE13insert_uniqueERKS7_
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, CharStateMachine::StateInfo>, std::priv::_Select1st<std::pair<int const, CharStateMachine::StateInfo> >, std::priv::_MapTraitsT<std::pair<int const, CharStateMachine::StateInfo> >, std::allocator<std::pair<int const, CharStateMachine::StateInfo> > >::insert_unique(std::pair<int const, CharStateMachine::StateInfo> const&)
; decoder-mode: arm
003c6ce4  70 40 2d e9                                      push {r4, r5, r6, lr}
003c6ce8  04 c0 91 e5                                      ldr ip, [r1, #4]
003c6cec  10 d0 4d e2                                      sub sp, sp, #0x10
003c6cf0  00 40 a0 e1                                      mov r4, r0
003c6cf4  00 00 5c e3                                      cmp ip, #0
003c6cf8  02 30 a0 e1                                      mov r3, r2
003c6cfc  01 c0 a0 01                                      moveq ip, r1
003c6d00  15 00 00 0a                                      beq #0x3c6d5c
003c6d04  00 60 92 e5                                      ldr r6, [r2]
003c6d08  00 00 00 ea                                      b #0x3c6d10
003c6d0c  02 c0 a0 e1                                      mov ip, r2
003c6d10  10 00 9c e5                                      ldr r0, [ip, #0x10]
003c6d14  01 50 a0 e3                                      mov r5, #1
003c6d18  06 00 50 e1                                      cmp r0, r6
003c6d1c  08 20 9c c5                                      ldrgt r2, [ip, #8]
003c6d20  0c 20 9c d5                                      ldrle r2, [ip, #0xc]
003c6d24  00 50 a0 d3                                      movle r5, #0
003c6d28  00 00 52 e3                                      cmp r2, #0
003c6d2c  f6 ff ff 1a                                      bne #0x3c6d0c
003c6d30  00 00 55 e3                                      cmp r5, #0
003c6d34  0c 50 a0 01                                      moveq r5, ip
003c6d38  07 00 00 1a                                      bne #0x3c6d5c
003c6d3c  00 00 56 e1                                      cmp r6, r0
003c6d40  00 30 a0 d3                                      movle r3, #0
003c6d44  00 50 84 d5                                      strle r5, [r4]
003c6d48  04 30 c4 d5                                      strble r3, [r4, #4]
003c6d4c  1c 00 00 ca                                      bgt #0x3c6dc4
003c6d50  04 00 a0 e1                                      mov r0, r4
003c6d54  10 d0 8d e2                                      add sp, sp, #0x10
003c6d58  70 80 bd e8                                      pop {r4, r5, r6, pc}
003c6d5c  08 20 91 e5                                      ldr r2, [r1, #8]
003c6d60  02 00 5c e1                                      cmp ip, r2
003c6d64  36 00 00 0a                                      beq #0x3c6e44
003c6d68  00 20 dc e5                                      ldrb r2, [ip]
003c6d6c  00 00 52 e3                                      cmp r2, #0
003c6d70  03 00 00 1a                                      bne #0x3c6d84
003c6d74  04 20 9c e5                                      ldr r2, [ip, #4]
003c6d78  04 20 92 e5                                      ldr r2, [r2, #4]
003c6d7c  02 00 5c e1                                      cmp ip, r2
003c6d80  2a 00 00 0a                                      beq #0x3c6e30
003c6d84  08 00 9c e5                                      ldr r0, [ip, #8]
003c6d88  00 00 50 e3                                      cmp r0, #0
003c6d8c  01 00 00 1a                                      bne #0x3c6d98
003c6d90  16 00 00 ea                                      b #0x3c6df0
003c6d94  02 00 a0 e1                                      mov r0, r2
003c6d98  0c 20 90 e5                                      ldr r2, [r0, #0xc]
003c6d9c  00 00 52 e3                                      cmp r2, #0
003c6da0  fb ff ff 1a                                      bne #0x3c6d94
003c6da4  00 60 93 e5                                      ldr r6, [r3]
003c6da8  00 50 a0 e1                                      mov r5, r0
003c6dac  10 00 90 e5                                      ldr r0, [r0, #0x10]
003c6db0  00 00 56 e1                                      cmp r6, r0
003c6db4  00 30 a0 d3                                      movle r3, #0
003c6db8  00 50 84 d5                                      strle r5, [r4]
003c6dbc  04 30 c4 d5                                      strble r3, [r4, #4]
003c6dc0  e2 ff ff da                                      ble #0x3c6d50
003c6dc4  0c 20 a0 e1                                      mov r2, ip
003c6dc8  08 00 8d e2                                      add r0, sp, #8
003c6dcc  00 c0 a0 e3                                      mov ip, #0
003c6dd0  04 c0 8d e5                                      str ip, [sp, #4]
003c6dd4  00 c0 8d e5                                      str ip, [sp]
003c6dd8  8b ff ff eb                                      bl #0x3c6c0c
003c6ddc  08 30 9d e5                                      ldr r3, [sp, #8]
003c6de0  01 20 a0 e3                                      mov r2, #1
003c6de4  04 20 c4 e5                                      strb r2, [r4, #4]
003c6de8  00 30 84 e5                                      str r3, [r4]
003c6dec  d7 ff ff ea                                      b #0x3c6d50
003c6df0  04 20 9c e5                                      ldr r2, [ip, #4]
003c6df4  08 00 92 e5                                      ldr r0, [r2, #8]
003c6df8  00 00 5c e1                                      cmp ip, r0
003c6dfc  02 50 a0 11                                      movne r5, r2
003c6e00  00 60 93 15                                      ldrne r6, [r3]
003c6e04  10 00 92 15                                      ldrne r0, [r2, #0x10]
003c6e08  01 00 00 0a                                      beq #0x3c6e14
003c6e0c  ca ff ff ea                                      b #0x3c6d3c
003c6e10  05 20 a0 e1                                      mov r2, r5
003c6e14  04 50 92 e5                                      ldr r5, [r2, #4]
003c6e18  08 00 95 e5                                      ldr r0, [r5, #8]
003c6e1c  02 00 50 e1                                      cmp r0, r2
003c6e20  fa ff ff 0a                                      beq #0x3c6e10
003c6e24  00 60 93 e5                                      ldr r6, [r3]
003c6e28  10 00 95 e5                                      ldr r0, [r5, #0x10]
003c6e2c  c2 ff ff ea                                      b #0x3c6d3c
003c6e30  0c 20 9c e5                                      ldr r2, [ip, #0xc]
003c6e34  00 60 93 e5                                      ldr r6, [r3]
003c6e38  02 50 a0 e1                                      mov r5, r2
003c6e3c  10 00 92 e5                                      ldr r0, [r2, #0x10]
003c6e40  bd ff ff ea                                      b #0x3c6d3c
003c6e44  0c 20 a0 e1                                      mov r2, ip
003c6e48  00 e0 a0 e3                                      mov lr, #0
003c6e4c  0c 00 8d e2                                      add r0, sp, #0xc
003c6e50  00 50 8d e8                                      stm sp, {ip, lr}
003c6e54  6c ff ff eb                                      bl #0x3c6c0c
003c6e58  0c 30 9d e5                                      ldr r3, [sp, #0xc]
003c6e5c  01 20 a0 e3                                      mov r2, #1
003c6e60  04 20 c4 e5                                      strb r2, [r4, #4]
003c6e64  00 30 84 e5                                      str r3, [r4]
003c6e68  b8 ff ff ea                                      b #0x3c6d50

; FUNCTION 0x003c6e6c, declared_size=884, range_size=884, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, CharStateMachine::StateInfo>, std::priv::_Select1st<std::pair<int const, CharStateMachine::StateInfo> >, std::priv::_MapTraitsT<std::pair<int const, CharStateMachine::StateInfo> >, std::allocator<std::pair<int const, CharStateMachine::StateInfo> > >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKiN16CharStateMachine9StateInfoEENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE13insert_uniqueENS_17_Rb_tree_iteratorIS7_SB_EERKS7_
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, CharStateMachine::StateInfo>, std::priv::_Select1st<std::pair<int const, CharStateMachine::StateInfo> >, std::priv::_MapTraitsT<std::pair<int const, CharStateMachine::StateInfo> >, std::allocator<std::pair<int const, CharStateMachine::StateInfo> > >::insert_unique(std::priv::_Rb_tree_iterator<std::pair<int const, CharStateMachine::StateInfo>, std::priv::_MapTraitsT<std::pair<int const, CharStateMachine::StateInfo> > >, std::pair<int const, CharStateMachine::StateInfo> const&)
; decoder-mode: arm
003c6e6c  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
003c6e70  00 40 92 e5                                      ldr r4, [r2]
003c6e74  08 20 91 e5                                      ldr r2, [r1, #8]
003c6e78  2c d0 4d e2                                      sub sp, sp, #0x2c
003c6e7c  01 50 a0 e1                                      mov r5, r1
003c6e80  02 00 54 e1                                      cmp r4, r2
003c6e84  00 70 a0 e1                                      mov r7, r0
003c6e88  03 60 a0 e1                                      mov r6, r3
003c6e8c  5a 00 00 0a                                      beq #0x3c6ffc
003c6e90  01 00 54 e1                                      cmp r4, r1
003c6e94  78 00 00 0a                                      beq #0x3c707c
003c6e98  00 30 d4 e5                                      ldrb r3, [r4]
003c6e9c  00 00 53 e3                                      cmp r3, #0
003c6ea0  3a 00 00 0a                                      beq #0x3c6f90
003c6ea4  08 c0 94 e5                                      ldr ip, [r4, #8]
003c6ea8  00 00 5c e3                                      cmp ip, #0
003c6eac  01 00 00 1a                                      bne #0x3c6eb8
003c6eb0  3e 00 00 ea                                      b #0x3c6fb0
003c6eb4  03 c0 a0 e1                                      mov ip, r3
003c6eb8  0c 30 9c e5                                      ldr r3, [ip, #0xc]
003c6ebc  00 00 53 e3                                      cmp r3, #0
003c6ec0  fb ff ff 1a                                      bne #0x3c6eb4
003c6ec4  00 20 96 e5                                      ldr r2, [r6]
003c6ec8  10 00 94 e5                                      ldr r0, [r4, #0x10]
003c6ecc  00 00 52 e1                                      cmp r2, r0
003c6ed0  00 10 a0 a3                                      movge r1, #0
003c6ed4  01 10 a0 b3                                      movlt r1, #1
003c6ed8  00 00 51 e3                                      cmp r1, #0
003c6edc  1b 00 00 1a                                      bne #0x3c6f50
003c6ee0  0c 80 94 e5                                      ldr r8, [r4, #0xc]
003c6ee4  00 00 58 e3                                      cmp r8, #0
003c6ee8  7d 00 00 0a                                      beq #0x3c70e4
003c6eec  08 c0 a0 e1                                      mov ip, r8
003c6ef0  00 00 00 ea                                      b #0x3c6ef8
003c6ef4  03 c0 a0 e1                                      mov ip, r3
003c6ef8  08 30 9c e5                                      ldr r3, [ip, #8]
003c6efc  00 00 53 e3                                      cmp r3, #0
003c6f00  fb ff ff 1a                                      bne #0x3c6ef4
003c6f04  00 00 51 e3                                      cmp r1, #0
003c6f08  34 00 00 1a                                      bne #0x3c6fe0
003c6f0c  00 00 52 e1                                      cmp r2, r0
003c6f10  63 00 00 da                                      ble #0x3c70a4
003c6f14  0c 00 55 e1                                      cmp r5, ip
003c6f18  02 00 00 0a                                      beq #0x3c6f28
003c6f1c  10 30 9c e5                                      ldr r3, [ip, #0x10]
003c6f20  03 00 52 e1                                      cmp r2, r3
003c6f24  2d 00 00 aa                                      bge #0x3c6fe0
003c6f28  00 00 58 e3                                      cmp r8, #0
003c6f2c  4a 00 00 1a                                      bne #0x3c705c
003c6f30  05 10 a0 e1                                      mov r1, r5
003c6f34  04 20 a0 e1                                      mov r2, r4
003c6f38  06 30 a0 e1                                      mov r3, r6
003c6f3c  07 00 a0 e1                                      mov r0, r7
003c6f40  00 80 8d e5                                      str r8, [sp]
003c6f44  04 40 8d e5                                      str r4, [sp, #4]
003c6f48  2f ff ff eb                                      bl #0x3c6c0c
003c6f4c  0c 00 00 ea                                      b #0x3c6f84
003c6f50  10 30 9c e5                                      ldr r3, [ip, #0x10]
003c6f54  03 00 52 e1                                      cmp r2, r3
003c6f58  e0 ff ff da                                      ble #0x3c6ee0
003c6f5c  0c e0 9c e5                                      ldr lr, [ip, #0xc]
003c6f60  00 00 5e e3                                      cmp lr, #0
003c6f64  56 00 00 0a                                      beq #0x3c70c4
003c6f68  00 c0 a0 e3                                      mov ip, #0
003c6f6c  05 10 a0 e1                                      mov r1, r5
003c6f70  04 20 a0 e1                                      mov r2, r4
003c6f74  06 30 a0 e1                                      mov r3, r6
003c6f78  07 00 a0 e1                                      mov r0, r7
003c6f7c  10 10 8d e8                                      stm sp, {r4, ip}
003c6f80  21 ff ff eb                                      bl #0x3c6c0c
003c6f84  07 00 a0 e1                                      mov r0, r7
003c6f88  2c d0 8d e2                                      add sp, sp, #0x2c
003c6f8c  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
003c6f90  04 30 94 e5                                      ldr r3, [r4, #4]
003c6f94  04 30 93 e5                                      ldr r3, [r3, #4]
003c6f98  03 00 54 e1                                      cmp r4, r3
003c6f9c  0c c0 94 05                                      ldreq ip, [r4, #0xc]
003c6fa0  c7 ff ff 0a                                      beq #0x3c6ec4
003c6fa4  08 c0 94 e5                                      ldr ip, [r4, #8]
003c6fa8  00 00 5c e3                                      cmp ip, #0
003c6fac  c1 ff ff 1a                                      bne #0x3c6eb8
003c6fb0  04 c0 94 e5                                      ldr ip, [r4, #4]
003c6fb4  08 30 9c e5                                      ldr r3, [ip, #8]
003c6fb8  03 00 54 e1                                      cmp r4, r3
003c6fbc  01 00 00 0a                                      beq #0x3c6fc8
003c6fc0  bf ff ff ea                                      b #0x3c6ec4
003c6fc4  03 c0 a0 e1                                      mov ip, r3
003c6fc8  04 30 9c e5                                      ldr r3, [ip, #4]
003c6fcc  08 20 93 e5                                      ldr r2, [r3, #8]
003c6fd0  0c 00 52 e1                                      cmp r2, ip
003c6fd4  fa ff ff 0a                                      beq #0x3c6fc4
003c6fd8  03 c0 a0 e1                                      mov ip, r3
003c6fdc  b8 ff ff ea                                      b #0x3c6ec4
003c6fe0  05 10 a0 e1                                      mov r1, r5
003c6fe4  06 20 a0 e1                                      mov r2, r6
003c6fe8  08 00 8d e2                                      add r0, sp, #8
003c6fec  3c ff ff eb                                      bl #0x3c6ce4
003c6ff0  08 30 9d e5                                      ldr r3, [sp, #8]
003c6ff4  00 30 87 e5                                      str r3, [r7]
003c6ff8  e1 ff ff ea                                      b #0x3c6f84
003c6ffc  10 20 91 e5                                      ldr r2, [r1, #0x10]
003c7000  00 00 52 e3                                      cmp r2, #0
003c7004  52 00 00 0a                                      beq #0x3c7154
003c7008  00 20 93 e5                                      ldr r2, [r3]
003c700c  10 c0 94 e5                                      ldr ip, [r4, #0x10]
003c7010  0c 00 52 e1                                      cmp r2, ip
003c7014  54 00 00 ba                                      blt #0x3c716c
003c7018  21 00 00 da                                      ble #0x3c70a4
003c701c  0c e0 94 e5                                      ldr lr, [r4, #0xc]
003c7020  00 00 5e e3                                      cmp lr, #0
003c7024  3c 00 00 0a                                      beq #0x3c711c
003c7028  0e c0 a0 e1                                      mov ip, lr
003c702c  00 00 00 ea                                      b #0x3c7034
003c7030  03 c0 a0 e1                                      mov ip, r3
003c7034  08 30 9c e5                                      ldr r3, [ip, #8]
003c7038  00 00 53 e3                                      cmp r3, #0
003c703c  fb ff ff 1a                                      bne #0x3c7030
003c7040  0c 00 55 e1                                      cmp r5, ip
003c7044  5c 00 00 0a                                      beq #0x3c71bc
003c7048  10 30 9c e5                                      ldr r3, [ip, #0x10]
003c704c  03 00 52 e1                                      cmp r2, r3
003c7050  4a 00 00 aa                                      bge #0x3c7180
003c7054  00 00 5e e3                                      cmp lr, #0
003c7058  4f 00 00 0a                                      beq #0x3c719c
003c705c  00 e0 a0 e3                                      mov lr, #0
003c7060  05 10 a0 e1                                      mov r1, r5
003c7064  0c 20 a0 e1                                      mov r2, ip
003c7068  06 30 a0 e1                                      mov r3, r6
003c706c  07 00 a0 e1                                      mov r0, r7
003c7070  00 50 8d e8                                      stm sp, {ip, lr}
003c7074  e4 fe ff eb                                      bl #0x3c6c0c
003c7078  c1 ff ff ea                                      b #0x3c6f84
003c707c  0c 20 94 e5                                      ldr r2, [r4, #0xc]
003c7080  00 c0 93 e5                                      ldr ip, [r3]
003c7084  10 e0 92 e5                                      ldr lr, [r2, #0x10]
003c7088  0c 00 5e e1                                      cmp lr, ip
003c708c  06 00 00 aa                                      bge #0x3c70ac
003c7090  00 c0 a0 e3                                      mov ip, #0
003c7094  00 c0 8d e5                                      str ip, [sp]
003c7098  04 40 8d e5                                      str r4, [sp, #4]
003c709c  da fe ff eb                                      bl #0x3c6c0c
003c70a0  b7 ff ff ea                                      b #0x3c6f84
003c70a4  00 40 87 e5                                      str r4, [r7]
003c70a8  b5 ff ff ea                                      b #0x3c6f84
003c70ac  03 20 a0 e1                                      mov r2, r3
003c70b0  10 00 8d e2                                      add r0, sp, #0x10
003c70b4  0a ff ff eb                                      bl #0x3c6ce4
003c70b8  10 30 9d e5                                      ldr r3, [sp, #0x10]
003c70bc  00 30 87 e5                                      str r3, [r7]
003c70c0  af ff ff ea                                      b #0x3c6f84
003c70c4  05 10 a0 e1                                      mov r1, r5
003c70c8  0c 20 a0 e1                                      mov r2, ip
003c70cc  06 30 a0 e1                                      mov r3, r6
003c70d0  07 00 a0 e1                                      mov r0, r7
003c70d4  00 e0 8d e5                                      str lr, [sp]
003c70d8  04 c0 8d e5                                      str ip, [sp, #4]
003c70dc  ca fe ff eb                                      bl #0x3c6c0c
003c70e0  a7 ff ff ea                                      b #0x3c6f84
003c70e4  04 30 94 e5                                      ldr r3, [r4, #4]
003c70e8  0c c0 93 e5                                      ldr ip, [r3, #0xc]
003c70ec  0c 00 54 e1                                      cmp r4, ip
003c70f0  04 c0 a0 11                                      movne ip, r4
003c70f4  04 00 00 1a                                      bne #0x3c710c
003c70f8  03 c0 a0 e1                                      mov ip, r3
003c70fc  04 30 93 e5                                      ldr r3, [r3, #4]
003c7100  0c a0 93 e5                                      ldr sl, [r3, #0xc]
003c7104  0a 00 5c e1                                      cmp ip, sl
003c7108  fa ff ff 0a                                      beq #0x3c70f8
003c710c  0c a0 9c e5                                      ldr sl, [ip, #0xc]
003c7110  0a 00 53 e1                                      cmp r3, sl
003c7114  03 c0 a0 11                                      movne ip, r3
003c7118  79 ff ff ea                                      b #0x3c6f04
003c711c  04 30 94 e5                                      ldr r3, [r4, #4]
003c7120  0c 10 93 e5                                      ldr r1, [r3, #0xc]
003c7124  01 00 54 e1                                      cmp r4, r1
003c7128  04 c0 a0 11                                      movne ip, r4
003c712c  04 00 00 1a                                      bne #0x3c7144
003c7130  03 c0 a0 e1                                      mov ip, r3
003c7134  04 30 93 e5                                      ldr r3, [r3, #4]
003c7138  0c 10 93 e5                                      ldr r1, [r3, #0xc]
003c713c  0c 00 51 e1                                      cmp r1, ip
003c7140  fa ff ff 0a                                      beq #0x3c7130
003c7144  0c 10 9c e5                                      ldr r1, [ip, #0xc]
003c7148  01 00 53 e1                                      cmp r3, r1
003c714c  03 c0 a0 11                                      movne ip, r3
003c7150  ba ff ff ea                                      b #0x3c7040
003c7154  03 20 a0 e1                                      mov r2, r3
003c7158  20 00 8d e2                                      add r0, sp, #0x20
003c715c  e0 fe ff eb                                      bl #0x3c6ce4
003c7160  20 30 9d e5                                      ldr r3, [sp, #0x20]
003c7164  00 30 87 e5                                      str r3, [r7]
003c7168  85 ff ff ea                                      b #0x3c6f84
003c716c  00 c0 a0 e3                                      mov ip, #0
003c7170  04 20 a0 e1                                      mov r2, r4
003c7174  10 10 8d e8                                      stm sp, {r4, ip}
003c7178  a3 fe ff eb                                      bl #0x3c6c0c
003c717c  80 ff ff ea                                      b #0x3c6f84
003c7180  05 10 a0 e1                                      mov r1, r5
003c7184  06 20 a0 e1                                      mov r2, r6
003c7188  18 00 8d e2                                      add r0, sp, #0x18
003c718c  d4 fe ff eb                                      bl #0x3c6ce4
003c7190  18 30 9d e5                                      ldr r3, [sp, #0x18]
003c7194  00 30 87 e5                                      str r3, [r7]
003c7198  79 ff ff ea                                      b #0x3c6f84
003c719c  05 10 a0 e1                                      mov r1, r5
003c71a0  04 20 a0 e1                                      mov r2, r4
003c71a4  06 30 a0 e1                                      mov r3, r6
003c71a8  07 00 a0 e1                                      mov r0, r7
003c71ac  00 e0 8d e5                                      str lr, [sp]
003c71b0  04 40 8d e5                                      str r4, [sp, #4]
003c71b4  94 fe ff eb                                      bl #0x3c6c0c
003c71b8  71 ff ff ea                                      b #0x3c6f84
003c71bc  00 c0 a0 e3                                      mov ip, #0
003c71c0  05 10 a0 e1                                      mov r1, r5
003c71c4  04 20 a0 e1                                      mov r2, r4
003c71c8  06 30 a0 e1                                      mov r3, r6
003c71cc  07 00 a0 e1                                      mov r0, r7
003c71d0  00 c0 8d e5                                      str ip, [sp]
003c71d4  04 40 8d e5                                      str r4, [sp, #4]
003c71d8  8b fe ff eb                                      bl #0x3c6c0c
003c71dc  68 ff ff ea                                      b #0x3c6f84

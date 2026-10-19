; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00343b2c, declared_size=136, range_size=136, mode=arm
; class-group: std::priv::_Rb_tree<short, std::less<short>, std::pair<short const, std::list<ObjectBase*, std::allocator<ObjectBase*> > >, std::priv::_Select1st<std::pair<short const, std::list<ObjectBase*, std::allocator<ObjectBase*> > > >, std::priv::_MapTraitsT<std::pair<short const, std::list<ObjectBase*, std::allocator<ObjectBase*> > > >, std::allocator<std::pair<short const, std::list<ObjectBase*, std::allocator<ObjectBase*> > > > >
; alias: _ZNSt4priv8_Rb_treeIsSt4lessIsESt4pairIKsSt4listIP10ObjectBaseSaIS7_EEENS_10_Select1stISA_EENS_11_MapTraitsTISA_EESaISA_EE14_M_create_nodeERKSA_
; demangled: std::priv::_Rb_tree<short, std::less<short>, std::pair<short const, std::list<ObjectBase*, std::allocator<ObjectBase*> > >, std::priv::_Select1st<std::pair<short const, std::list<ObjectBase*, std::allocator<ObjectBase*> > > >, std::priv::_MapTraitsT<std::pair<short const, std::list<ObjectBase*, std::allocator<ObjectBase*> > > >, std::allocator<std::pair<short const, std::list<ObjectBase*, std::allocator<ObjectBase*> > > > >::_M_create_node(std::pair<short const, std::list<ObjectBase*, std::allocator<ObjectBase*> > > const&)
; decoder-mode: arm
00343b2c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00343b30  0c d0 4d e2                                      sub sp, sp, #0xc
00343b34  1c 30 a0 e3                                      mov r3, #0x1c
00343b38  08 00 8d e2                                      add r0, sp, #8
00343b3c  04 30 20 e5                                      str r3, [r0, #-4]!
00343b40  01 60 a0 e1                                      mov r6, r1
00343b44  dd 14 0f eb                                      bl #0x708ec0
00343b48  b0 30 d6 e1                                      ldrh r3, [r6]
00343b4c  14 40 80 e2                                      add r4, r0, #0x14
00343b50  14 40 80 e5                                      str r4, [r0, #0x14]
00343b54  b0 31 c0 e1                                      strh r3, [r0, #0x10]
00343b58  18 40 80 e5                                      str r4, [r0, #0x18]
00343b5c  04 50 b6 e5                                      ldr r5, [r6, #4]!
00343b60  00 70 a0 e1                                      mov r7, r0
00343b64  06 00 55 e1                                      cmp r5, r6
00343b68  0b 00 00 0a                                      beq #0x343b9c
00343b6c  04 00 a0 e1                                      mov r0, r4
00343b70  7c fd ff eb                                      bl #0x343168
00343b74  08 30 95 e5                                      ldr r3, [r5, #8]
00343b78  08 30 80 e5                                      str r3, [r0, #8]
00343b7c  04 30 94 e5                                      ldr r3, [r4, #4]
00343b80  00 40 80 e5                                      str r4, [r0]
00343b84  04 30 80 e5                                      str r3, [r0, #4]
00343b88  00 00 83 e5                                      str r0, [r3]
00343b8c  04 00 84 e5                                      str r0, [r4, #4]
00343b90  00 50 95 e5                                      ldr r5, [r5]
00343b94  05 00 56 e1                                      cmp r6, r5
00343b98  f3 ff ff 1a                                      bne #0x343b6c
00343b9c  00 30 a0 e3                                      mov r3, #0
00343ba0  0c 30 87 e5                                      str r3, [r7, #0xc]
00343ba4  08 30 87 e5                                      str r3, [r7, #8]
00343ba8  07 00 a0 e1                                      mov r0, r7
00343bac  0c d0 8d e2                                      add sp, sp, #0xc
00343bb0  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x00343bb4, declared_size=216, range_size=216, mode=arm
; class-group: std::priv::_Rb_tree<short, std::less<short>, std::pair<short const, std::list<ObjectBase*, std::allocator<ObjectBase*> > >, std::priv::_Select1st<std::pair<short const, std::list<ObjectBase*, std::allocator<ObjectBase*> > > >, std::priv::_MapTraitsT<std::pair<short const, std::list<ObjectBase*, std::allocator<ObjectBase*> > > >, std::allocator<std::pair<short const, std::list<ObjectBase*, std::allocator<ObjectBase*> > > > >
; alias: _ZNSt4priv8_Rb_treeIsSt4lessIsESt4pairIKsSt4listIP10ObjectBaseSaIS7_EEENS_10_Select1stISA_EENS_11_MapTraitsTISA_EESaISA_EE9_M_insertEPNS_18_Rb_tree_node_baseERKSA_SI_SI_
; demangled: std::priv::_Rb_tree<short, std::less<short>, std::pair<short const, std::list<ObjectBase*, std::allocator<ObjectBase*> > >, std::priv::_Select1st<std::pair<short const, std::list<ObjectBase*, std::allocator<ObjectBase*> > > >, std::priv::_MapTraitsT<std::pair<short const, std::list<ObjectBase*, std::allocator<ObjectBase*> > > >, std::allocator<std::pair<short const, std::list<ObjectBase*, std::allocator<ObjectBase*> > > > >::_M_insert(std::priv::_Rb_tree_node_base*, std::pair<short const, std::list<ObjectBase*, std::allocator<ObjectBase*> > > const&, std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
00343bb4  02 00 51 e1                                      cmp r1, r2
00343bb8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00343bbc  01 40 a0 e1                                      mov r4, r1
00343bc0  02 50 a0 e1                                      mov r5, r2
00343bc4  00 60 a0 e1                                      mov r6, r0
00343bc8  22 00 00 0a                                      beq #0x343c58
00343bcc  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00343bd0  00 00 52 e3                                      cmp r2, #0
00343bd4  11 00 00 0a                                      beq #0x343c20
00343bd8  03 10 a0 e1                                      mov r1, r3
00343bdc  04 00 a0 e1                                      mov r0, r4
00343be0  d1 ff ff eb                                      bl #0x343b2c
00343be4  0c 00 85 e5                                      str r0, [r5, #0xc]
00343be8  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00343bec  00 70 a0 e1                                      mov r7, r0
00343bf0  03 00 55 e1                                      cmp r5, r3
00343bf4  15 00 00 0a                                      beq #0x343c50
00343bf8  07 00 a0 e1                                      mov r0, r7
00343bfc  04 50 87 e5                                      str r5, [r7, #4]
00343c00  04 10 84 e2                                      add r1, r4, #4
00343c04  d5 3e ff eb                                      bl #0x313760
00343c08  10 30 94 e5                                      ldr r3, [r4, #0x10]
00343c0c  06 00 a0 e1                                      mov r0, r6
00343c10  01 30 83 e2                                      add r3, r3, #1
00343c14  10 30 84 e5                                      str r3, [r4, #0x10]
00343c18  00 70 86 e5                                      str r7, [r6]
00343c1c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00343c20  18 20 9d e5                                      ldr r2, [sp, #0x18]
00343c24  00 00 52 e3                                      cmp r2, #0
00343c28  12 00 00 0a                                      beq #0x343c78
00343c2c  03 10 a0 e1                                      mov r1, r3
00343c30  04 00 a0 e1                                      mov r0, r4
00343c34  bc ff ff eb                                      bl #0x343b2c
00343c38  08 00 85 e5                                      str r0, [r5, #8]
00343c3c  08 30 94 e5                                      ldr r3, [r4, #8]
00343c40  00 70 a0 e1                                      mov r7, r0
00343c44  03 00 55 e1                                      cmp r5, r3
00343c48  08 00 84 05                                      streq r0, [r4, #8]
00343c4c  e9 ff ff ea                                      b #0x343bf8
00343c50  0c 70 84 e5                                      str r7, [r4, #0xc]
00343c54  e7 ff ff ea                                      b #0x343bf8
00343c58  03 10 a0 e1                                      mov r1, r3
00343c5c  04 00 a0 e1                                      mov r0, r4
00343c60  b1 ff ff eb                                      bl #0x343b2c
00343c64  00 70 a0 e1                                      mov r7, r0
00343c68  08 00 84 e5                                      str r0, [r4, #8]
00343c6c  04 00 84 e5                                      str r0, [r4, #4]
00343c70  0c 00 84 e5                                      str r0, [r4, #0xc]
00343c74  df ff ff ea                                      b #0x343bf8
00343c78  f0 10 d3 e1                                      ldrsh r1, [r3]
00343c7c  f0 21 d5 e1                                      ldrsh r2, [r5, #0x10]
00343c80  02 00 51 e1                                      cmp r1, r2
00343c84  d3 ff ff aa                                      bge #0x343bd8
00343c88  e7 ff ff ea                                      b #0x343c2c

; FUNCTION 0x00343c8c, declared_size=388, range_size=388, mode=arm
; class-group: std::priv::_Rb_tree<short, std::less<short>, std::pair<short const, std::list<ObjectBase*, std::allocator<ObjectBase*> > >, std::priv::_Select1st<std::pair<short const, std::list<ObjectBase*, std::allocator<ObjectBase*> > > >, std::priv::_MapTraitsT<std::pair<short const, std::list<ObjectBase*, std::allocator<ObjectBase*> > > >, std::allocator<std::pair<short const, std::list<ObjectBase*, std::allocator<ObjectBase*> > > > >
; alias: _ZNSt4priv8_Rb_treeIsSt4lessIsESt4pairIKsSt4listIP10ObjectBaseSaIS7_EEENS_10_Select1stISA_EENS_11_MapTraitsTISA_EESaISA_EE13insert_uniqueERKSA_
; demangled: std::priv::_Rb_tree<short, std::less<short>, std::pair<short const, std::list<ObjectBase*, std::allocator<ObjectBase*> > >, std::priv::_Select1st<std::pair<short const, std::list<ObjectBase*, std::allocator<ObjectBase*> > > >, std::priv::_MapTraitsT<std::pair<short const, std::list<ObjectBase*, std::allocator<ObjectBase*> > > >, std::allocator<std::pair<short const, std::list<ObjectBase*, std::allocator<ObjectBase*> > > > >::insert_unique(std::pair<short const, std::list<ObjectBase*, std::allocator<ObjectBase*> > > const&)
; decoder-mode: arm
00343c8c  70 40 2d e9                                      push {r4, r5, r6, lr}
00343c90  04 c0 91 e5                                      ldr ip, [r1, #4]
00343c94  10 d0 4d e2                                      sub sp, sp, #0x10
00343c98  00 40 a0 e1                                      mov r4, r0
00343c9c  00 00 5c e3                                      cmp ip, #0
00343ca0  02 30 a0 e1                                      mov r3, r2
00343ca4  01 c0 a0 01                                      moveq ip, r1
00343ca8  15 00 00 0a                                      beq #0x343d04
00343cac  f0 60 d2 e1                                      ldrsh r6, [r2]
00343cb0  00 00 00 ea                                      b #0x343cb8
00343cb4  02 c0 a0 e1                                      mov ip, r2
00343cb8  f0 01 dc e1                                      ldrsh r0, [ip, #0x10]
00343cbc  01 50 a0 e3                                      mov r5, #1
00343cc0  06 00 50 e1                                      cmp r0, r6
00343cc4  08 20 9c c5                                      ldrgt r2, [ip, #8]
00343cc8  0c 20 9c d5                                      ldrle r2, [ip, #0xc]
00343ccc  00 50 a0 d3                                      movle r5, #0
00343cd0  00 00 52 e3                                      cmp r2, #0
00343cd4  f6 ff ff 1a                                      bne #0x343cb4
00343cd8  00 00 55 e3                                      cmp r5, #0
00343cdc  0c 20 a0 01                                      moveq r2, ip
00343ce0  07 00 00 1a                                      bne #0x343d04
00343ce4  00 00 56 e1                                      cmp r6, r0
00343ce8  00 30 a0 d3                                      movle r3, #0
00343cec  00 20 84 d5                                      strle r2, [r4]
00343cf0  04 30 c4 d5                                      strble r3, [r4, #4]
00343cf4  1c 00 00 ca                                      bgt #0x343d6c
00343cf8  04 00 a0 e1                                      mov r0, r4
00343cfc  10 d0 8d e2                                      add sp, sp, #0x10
00343d00  70 80 bd e8                                      pop {r4, r5, r6, pc}
00343d04  08 20 91 e5                                      ldr r2, [r1, #8]
00343d08  02 00 5c e1                                      cmp ip, r2
00343d0c  35 00 00 0a                                      beq #0x343de8
00343d10  00 20 dc e5                                      ldrb r2, [ip]
00343d14  00 00 52 e3                                      cmp r2, #0
00343d18  03 00 00 1a                                      bne #0x343d2c
00343d1c  04 20 9c e5                                      ldr r2, [ip, #4]
00343d20  04 20 92 e5                                      ldr r2, [r2, #4]
00343d24  02 00 5c e1                                      cmp ip, r2
00343d28  2a 00 00 0a                                      beq #0x343dd8
00343d2c  08 00 9c e5                                      ldr r0, [ip, #8]
00343d30  00 00 50 e3                                      cmp r0, #0
00343d34  01 00 00 1a                                      bne #0x343d40
00343d38  16 00 00 ea                                      b #0x343d98
00343d3c  02 00 a0 e1                                      mov r0, r2
00343d40  0c 20 90 e5                                      ldr r2, [r0, #0xc]
00343d44  00 00 52 e3                                      cmp r2, #0
00343d48  fb ff ff 1a                                      bne #0x343d3c
00343d4c  f0 60 d3 e1                                      ldrsh r6, [r3]
00343d50  00 20 a0 e1                                      mov r2, r0
00343d54  f0 01 d0 e1                                      ldrsh r0, [r0, #0x10]
00343d58  00 00 56 e1                                      cmp r6, r0
00343d5c  00 30 a0 d3                                      movle r3, #0
00343d60  00 20 84 d5                                      strle r2, [r4]
00343d64  04 30 c4 d5                                      strble r3, [r4, #4]
00343d68  e2 ff ff da                                      ble #0x343cf8
00343d6c  0c 20 a0 e1                                      mov r2, ip
00343d70  08 00 8d e2                                      add r0, sp, #8
00343d74  00 c0 a0 e3                                      mov ip, #0
00343d78  04 c0 8d e5                                      str ip, [sp, #4]
00343d7c  00 c0 8d e5                                      str ip, [sp]
00343d80  8b ff ff eb                                      bl #0x343bb4
00343d84  08 30 9d e5                                      ldr r3, [sp, #8]
00343d88  01 20 a0 e3                                      mov r2, #1
00343d8c  04 20 c4 e5                                      strb r2, [r4, #4]
00343d90  00 30 84 e5                                      str r3, [r4]
00343d94  d7 ff ff ea                                      b #0x343cf8
00343d98  04 50 9c e5                                      ldr r5, [ip, #4]
00343d9c  08 20 95 e5                                      ldr r2, [r5, #8]
00343da0  02 00 5c e1                                      cmp ip, r2
00343da4  05 20 a0 11                                      movne r2, r5
00343da8  f0 01 d2 11                                      ldrshne r0, [r2, #0x10]
00343dac  f0 60 d3 11                                      ldrshne r6, [r3]
00343db0  01 00 00 0a                                      beq #0x343dbc
00343db4  ca ff ff ea                                      b #0x343ce4
00343db8  02 50 a0 e1                                      mov r5, r2
00343dbc  04 20 95 e5                                      ldr r2, [r5, #4]
00343dc0  08 00 92 e5                                      ldr r0, [r2, #8]
00343dc4  05 00 50 e1                                      cmp r0, r5
00343dc8  fa ff ff 0a                                      beq #0x343db8
00343dcc  f0 01 d2 e1                                      ldrsh r0, [r2, #0x10]
00343dd0  f0 60 d3 e1                                      ldrsh r6, [r3]
00343dd4  c2 ff ff ea                                      b #0x343ce4
00343dd8  0c 20 9c e5                                      ldr r2, [ip, #0xc]
00343ddc  f0 60 d3 e1                                      ldrsh r6, [r3]
00343de0  f0 01 d2 e1                                      ldrsh r0, [r2, #0x10]
00343de4  be ff ff ea                                      b #0x343ce4
00343de8  0c 20 a0 e1                                      mov r2, ip
00343dec  00 e0 a0 e3                                      mov lr, #0
00343df0  0c 00 8d e2                                      add r0, sp, #0xc
00343df4  00 50 8d e8                                      stm sp, {ip, lr}
00343df8  6d ff ff eb                                      bl #0x343bb4
00343dfc  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00343e00  01 20 a0 e3                                      mov r2, #1
00343e04  04 20 c4 e5                                      strb r2, [r4, #4]
00343e08  00 30 84 e5                                      str r3, [r4]
00343e0c  b9 ff ff ea                                      b #0x343cf8

; FUNCTION 0x00343e10, declared_size=884, range_size=884, mode=arm
; class-group: std::priv::_Rb_tree<short, std::less<short>, std::pair<short const, std::list<ObjectBase*, std::allocator<ObjectBase*> > >, std::priv::_Select1st<std::pair<short const, std::list<ObjectBase*, std::allocator<ObjectBase*> > > >, std::priv::_MapTraitsT<std::pair<short const, std::list<ObjectBase*, std::allocator<ObjectBase*> > > >, std::allocator<std::pair<short const, std::list<ObjectBase*, std::allocator<ObjectBase*> > > > >
; alias: _ZNSt4priv8_Rb_treeIsSt4lessIsESt4pairIKsSt4listIP10ObjectBaseSaIS7_EEENS_10_Select1stISA_EENS_11_MapTraitsTISA_EESaISA_EE13insert_uniqueENS_17_Rb_tree_iteratorISA_SE_EERKSA_
; demangled: std::priv::_Rb_tree<short, std::less<short>, std::pair<short const, std::list<ObjectBase*, std::allocator<ObjectBase*> > >, std::priv::_Select1st<std::pair<short const, std::list<ObjectBase*, std::allocator<ObjectBase*> > > >, std::priv::_MapTraitsT<std::pair<short const, std::list<ObjectBase*, std::allocator<ObjectBase*> > > >, std::allocator<std::pair<short const, std::list<ObjectBase*, std::allocator<ObjectBase*> > > > >::insert_unique(std::priv::_Rb_tree_iterator<std::pair<short const, std::list<ObjectBase*, std::allocator<ObjectBase*> > >, std::priv::_MapTraitsT<std::pair<short const, std::list<ObjectBase*, std::allocator<ObjectBase*> > > > >, std::pair<short const, std::list<ObjectBase*, std::allocator<ObjectBase*> > > const&)
; decoder-mode: arm
00343e10  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00343e14  00 40 92 e5                                      ldr r4, [r2]
00343e18  08 20 91 e5                                      ldr r2, [r1, #8]
00343e1c  2c d0 4d e2                                      sub sp, sp, #0x2c
00343e20  01 50 a0 e1                                      mov r5, r1
00343e24  02 00 54 e1                                      cmp r4, r2
00343e28  00 70 a0 e1                                      mov r7, r0
00343e2c  03 60 a0 e1                                      mov r6, r3
00343e30  5a 00 00 0a                                      beq #0x343fa0
00343e34  01 00 54 e1                                      cmp r4, r1
00343e38  78 00 00 0a                                      beq #0x344020
00343e3c  00 30 d4 e5                                      ldrb r3, [r4]
00343e40  00 00 53 e3                                      cmp r3, #0
00343e44  3a 00 00 0a                                      beq #0x343f34
00343e48  08 c0 94 e5                                      ldr ip, [r4, #8]
00343e4c  00 00 5c e3                                      cmp ip, #0
00343e50  01 00 00 1a                                      bne #0x343e5c
00343e54  3e 00 00 ea                                      b #0x343f54
00343e58  03 c0 a0 e1                                      mov ip, r3
00343e5c  0c 30 9c e5                                      ldr r3, [ip, #0xc]
00343e60  00 00 53 e3                                      cmp r3, #0
00343e64  fb ff ff 1a                                      bne #0x343e58
00343e68  f0 20 d6 e1                                      ldrsh r2, [r6]
00343e6c  f0 01 d4 e1                                      ldrsh r0, [r4, #0x10]
00343e70  00 00 52 e1                                      cmp r2, r0
00343e74  00 10 a0 a3                                      movge r1, #0
00343e78  01 10 a0 b3                                      movlt r1, #1
00343e7c  00 00 51 e3                                      cmp r1, #0
00343e80  1b 00 00 1a                                      bne #0x343ef4
00343e84  0c 80 94 e5                                      ldr r8, [r4, #0xc]
00343e88  00 00 58 e3                                      cmp r8, #0
00343e8c  7d 00 00 0a                                      beq #0x344088
00343e90  08 c0 a0 e1                                      mov ip, r8
00343e94  00 00 00 ea                                      b #0x343e9c
00343e98  03 c0 a0 e1                                      mov ip, r3
00343e9c  08 30 9c e5                                      ldr r3, [ip, #8]
00343ea0  00 00 53 e3                                      cmp r3, #0
00343ea4  fb ff ff 1a                                      bne #0x343e98
00343ea8  00 00 51 e3                                      cmp r1, #0
00343eac  34 00 00 1a                                      bne #0x343f84
00343eb0  00 00 52 e1                                      cmp r2, r0
00343eb4  63 00 00 da                                      ble #0x344048
00343eb8  0c 00 55 e1                                      cmp r5, ip
00343ebc  02 00 00 0a                                      beq #0x343ecc
00343ec0  f0 31 dc e1                                      ldrsh r3, [ip, #0x10]
00343ec4  02 00 53 e1                                      cmp r3, r2
00343ec8  2d 00 00 da                                      ble #0x343f84
00343ecc  00 00 58 e3                                      cmp r8, #0
00343ed0  4a 00 00 1a                                      bne #0x344000
00343ed4  05 10 a0 e1                                      mov r1, r5
00343ed8  04 20 a0 e1                                      mov r2, r4
00343edc  06 30 a0 e1                                      mov r3, r6
00343ee0  07 00 a0 e1                                      mov r0, r7
00343ee4  00 80 8d e5                                      str r8, [sp]
00343ee8  04 40 8d e5                                      str r4, [sp, #4]
00343eec  30 ff ff eb                                      bl #0x343bb4
00343ef0  0c 00 00 ea                                      b #0x343f28
00343ef4  f0 31 dc e1                                      ldrsh r3, [ip, #0x10]
00343ef8  02 00 53 e1                                      cmp r3, r2
00343efc  e0 ff ff aa                                      bge #0x343e84
00343f00  0c e0 9c e5                                      ldr lr, [ip, #0xc]
00343f04  00 00 5e e3                                      cmp lr, #0
00343f08  56 00 00 0a                                      beq #0x344068
00343f0c  00 c0 a0 e3                                      mov ip, #0
00343f10  05 10 a0 e1                                      mov r1, r5
00343f14  04 20 a0 e1                                      mov r2, r4
00343f18  06 30 a0 e1                                      mov r3, r6
00343f1c  07 00 a0 e1                                      mov r0, r7
00343f20  10 10 8d e8                                      stm sp, {r4, ip}
00343f24  22 ff ff eb                                      bl #0x343bb4
00343f28  07 00 a0 e1                                      mov r0, r7
00343f2c  2c d0 8d e2                                      add sp, sp, #0x2c
00343f30  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00343f34  04 30 94 e5                                      ldr r3, [r4, #4]
00343f38  04 30 93 e5                                      ldr r3, [r3, #4]
00343f3c  03 00 54 e1                                      cmp r4, r3
00343f40  0c c0 94 05                                      ldreq ip, [r4, #0xc]
00343f44  c7 ff ff 0a                                      beq #0x343e68
00343f48  08 c0 94 e5                                      ldr ip, [r4, #8]
00343f4c  00 00 5c e3                                      cmp ip, #0
00343f50  c1 ff ff 1a                                      bne #0x343e5c
00343f54  04 c0 94 e5                                      ldr ip, [r4, #4]
00343f58  08 30 9c e5                                      ldr r3, [ip, #8]
00343f5c  03 00 54 e1                                      cmp r4, r3
00343f60  01 00 00 0a                                      beq #0x343f6c
00343f64  bf ff ff ea                                      b #0x343e68
00343f68  03 c0 a0 e1                                      mov ip, r3
00343f6c  04 30 9c e5                                      ldr r3, [ip, #4]
00343f70  08 20 93 e5                                      ldr r2, [r3, #8]
00343f74  0c 00 52 e1                                      cmp r2, ip
00343f78  fa ff ff 0a                                      beq #0x343f68
00343f7c  03 c0 a0 e1                                      mov ip, r3
00343f80  b8 ff ff ea                                      b #0x343e68
00343f84  05 10 a0 e1                                      mov r1, r5
00343f88  06 20 a0 e1                                      mov r2, r6
00343f8c  08 00 8d e2                                      add r0, sp, #8
00343f90  3d ff ff eb                                      bl #0x343c8c
00343f94  08 30 9d e5                                      ldr r3, [sp, #8]
00343f98  00 30 87 e5                                      str r3, [r7]
00343f9c  e1 ff ff ea                                      b #0x343f28
00343fa0  10 20 91 e5                                      ldr r2, [r1, #0x10]
00343fa4  00 00 52 e3                                      cmp r2, #0
00343fa8  52 00 00 0a                                      beq #0x3440f8
00343fac  f0 20 d3 e1                                      ldrsh r2, [r3]
00343fb0  f0 c1 d4 e1                                      ldrsh ip, [r4, #0x10]
00343fb4  0c 00 52 e1                                      cmp r2, ip
00343fb8  54 00 00 ba                                      blt #0x344110
00343fbc  21 00 00 da                                      ble #0x344048
00343fc0  0c e0 94 e5                                      ldr lr, [r4, #0xc]
00343fc4  00 00 5e e3                                      cmp lr, #0
00343fc8  3c 00 00 0a                                      beq #0x3440c0
00343fcc  0e c0 a0 e1                                      mov ip, lr
00343fd0  00 00 00 ea                                      b #0x343fd8
00343fd4  03 c0 a0 e1                                      mov ip, r3
00343fd8  08 30 9c e5                                      ldr r3, [ip, #8]
00343fdc  00 00 53 e3                                      cmp r3, #0
00343fe0  fb ff ff 1a                                      bne #0x343fd4
00343fe4  0c 00 55 e1                                      cmp r5, ip
00343fe8  5c 00 00 0a                                      beq #0x344160
00343fec  f0 31 dc e1                                      ldrsh r3, [ip, #0x10]
00343ff0  03 00 52 e1                                      cmp r2, r3
00343ff4  4a 00 00 aa                                      bge #0x344124
00343ff8  00 00 5e e3                                      cmp lr, #0
00343ffc  4f 00 00 0a                                      beq #0x344140
00344000  00 e0 a0 e3                                      mov lr, #0
00344004  05 10 a0 e1                                      mov r1, r5
00344008  0c 20 a0 e1                                      mov r2, ip
0034400c  06 30 a0 e1                                      mov r3, r6
00344010  07 00 a0 e1                                      mov r0, r7
00344014  00 50 8d e8                                      stm sp, {ip, lr}
00344018  e5 fe ff eb                                      bl #0x343bb4
0034401c  c1 ff ff ea                                      b #0x343f28
00344020  0c 20 94 e5                                      ldr r2, [r4, #0xc]
00344024  f0 c0 d3 e1                                      ldrsh ip, [r3]
00344028  f0 e1 d2 e1                                      ldrsh lr, [r2, #0x10]
0034402c  0c 00 5e e1                                      cmp lr, ip
00344030  06 00 00 aa                                      bge #0x344050
00344034  00 c0 a0 e3                                      mov ip, #0
00344038  00 c0 8d e5                                      str ip, [sp]
0034403c  04 40 8d e5                                      str r4, [sp, #4]
00344040  db fe ff eb                                      bl #0x343bb4
00344044  b7 ff ff ea                                      b #0x343f28
00344048  00 40 87 e5                                      str r4, [r7]
0034404c  b5 ff ff ea                                      b #0x343f28
00344050  03 20 a0 e1                                      mov r2, r3
00344054  10 00 8d e2                                      add r0, sp, #0x10
00344058  0b ff ff eb                                      bl #0x343c8c
0034405c  10 30 9d e5                                      ldr r3, [sp, #0x10]
00344060  00 30 87 e5                                      str r3, [r7]
00344064  af ff ff ea                                      b #0x343f28
00344068  05 10 a0 e1                                      mov r1, r5
0034406c  0c 20 a0 e1                                      mov r2, ip
00344070  06 30 a0 e1                                      mov r3, r6
00344074  07 00 a0 e1                                      mov r0, r7
00344078  00 e0 8d e5                                      str lr, [sp]
0034407c  04 c0 8d e5                                      str ip, [sp, #4]
00344080  cb fe ff eb                                      bl #0x343bb4
00344084  a7 ff ff ea                                      b #0x343f28
00344088  04 30 94 e5                                      ldr r3, [r4, #4]
0034408c  0c c0 93 e5                                      ldr ip, [r3, #0xc]
00344090  0c 00 54 e1                                      cmp r4, ip
00344094  04 c0 a0 11                                      movne ip, r4
00344098  04 00 00 1a                                      bne #0x3440b0
0034409c  03 c0 a0 e1                                      mov ip, r3
003440a0  04 30 93 e5                                      ldr r3, [r3, #4]
003440a4  0c a0 93 e5                                      ldr sl, [r3, #0xc]
003440a8  0a 00 5c e1                                      cmp ip, sl
003440ac  fa ff ff 0a                                      beq #0x34409c
003440b0  0c a0 9c e5                                      ldr sl, [ip, #0xc]
003440b4  0a 00 53 e1                                      cmp r3, sl
003440b8  03 c0 a0 11                                      movne ip, r3
003440bc  79 ff ff ea                                      b #0x343ea8
003440c0  04 30 94 e5                                      ldr r3, [r4, #4]
003440c4  0c 10 93 e5                                      ldr r1, [r3, #0xc]
003440c8  01 00 54 e1                                      cmp r4, r1
003440cc  04 c0 a0 11                                      movne ip, r4
003440d0  04 00 00 1a                                      bne #0x3440e8
003440d4  03 c0 a0 e1                                      mov ip, r3
003440d8  04 30 93 e5                                      ldr r3, [r3, #4]
003440dc  0c 10 93 e5                                      ldr r1, [r3, #0xc]
003440e0  0c 00 51 e1                                      cmp r1, ip
003440e4  fa ff ff 0a                                      beq #0x3440d4
003440e8  0c 10 9c e5                                      ldr r1, [ip, #0xc]
003440ec  01 00 53 e1                                      cmp r3, r1
003440f0  03 c0 a0 11                                      movne ip, r3
003440f4  ba ff ff ea                                      b #0x343fe4
003440f8  03 20 a0 e1                                      mov r2, r3
003440fc  20 00 8d e2                                      add r0, sp, #0x20
00344100  e1 fe ff eb                                      bl #0x343c8c
00344104  20 30 9d e5                                      ldr r3, [sp, #0x20]
00344108  00 30 87 e5                                      str r3, [r7]
0034410c  85 ff ff ea                                      b #0x343f28
00344110  00 c0 a0 e3                                      mov ip, #0
00344114  04 20 a0 e1                                      mov r2, r4
00344118  10 10 8d e8                                      stm sp, {r4, ip}
0034411c  a4 fe ff eb                                      bl #0x343bb4
00344120  80 ff ff ea                                      b #0x343f28
00344124  05 10 a0 e1                                      mov r1, r5
00344128  06 20 a0 e1                                      mov r2, r6
0034412c  18 00 8d e2                                      add r0, sp, #0x18
00344130  d5 fe ff eb                                      bl #0x343c8c
00344134  18 30 9d e5                                      ldr r3, [sp, #0x18]
00344138  00 30 87 e5                                      str r3, [r7]
0034413c  79 ff ff ea                                      b #0x343f28
00344140  05 10 a0 e1                                      mov r1, r5
00344144  04 20 a0 e1                                      mov r2, r4
00344148  06 30 a0 e1                                      mov r3, r6
0034414c  07 00 a0 e1                                      mov r0, r7
00344150  00 e0 8d e5                                      str lr, [sp]
00344154  04 40 8d e5                                      str r4, [sp, #4]
00344158  95 fe ff eb                                      bl #0x343bb4
0034415c  71 ff ff ea                                      b #0x343f28
00344160  00 c0 a0 e3                                      mov ip, #0
00344164  05 10 a0 e1                                      mov r1, r5
00344168  04 20 a0 e1                                      mov r2, r4
0034416c  06 30 a0 e1                                      mov r3, r6
00344170  07 00 a0 e1                                      mov r0, r7
00344174  00 c0 8d e5                                      str ip, [sp]
00344178  04 40 8d e5                                      str r4, [sp, #4]
0034417c  8c fe ff eb                                      bl #0x343bb4
00344180  68 ff ff ea                                      b #0x343f28

; FUNCTION 0x003458d4, declared_size=64, range_size=64, mode=arm
; class-group: std::priv::_Rb_tree<short, std::less<short>, std::pair<short const, std::list<ObjectBase*, std::allocator<ObjectBase*> > >, std::priv::_Select1st<std::pair<short const, std::list<ObjectBase*, std::allocator<ObjectBase*> > > >, std::priv::_MapTraitsT<std::pair<short const, std::list<ObjectBase*, std::allocator<ObjectBase*> > > >, std::allocator<std::pair<short const, std::list<ObjectBase*, std::allocator<ObjectBase*> > > > >
; alias: _ZNSt4priv8_Rb_treeIsSt4lessIsESt4pairIKsSt4listIP10ObjectBaseSaIS7_EEENS_10_Select1stISA_EENS_11_MapTraitsTISA_EESaISA_EE8_M_eraseEPNS_18_Rb_tree_node_baseE
; demangled: std::priv::_Rb_tree<short, std::less<short>, std::pair<short const, std::list<ObjectBase*, std::allocator<ObjectBase*> > >, std::priv::_Select1st<std::pair<short const, std::list<ObjectBase*, std::allocator<ObjectBase*> > > >, std::priv::_MapTraitsT<std::pair<short const, std::list<ObjectBase*, std::allocator<ObjectBase*> > > >, std::allocator<std::pair<short const, std::list<ObjectBase*, std::allocator<ObjectBase*> > > > >::_M_erase(std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
003458d4  70 40 2d e9                                      push {r4, r5, r6, lr}
003458d8  00 40 51 e2                                      subs r4, r1, #0
003458dc  00 60 a0 e1                                      mov r6, r0
003458e0  0a 00 00 0a                                      beq #0x345910
003458e4  0c 10 94 e5                                      ldr r1, [r4, #0xc]
003458e8  06 00 a0 e1                                      mov r0, r6
003458ec  f8 ff ff eb                                      bl #0x3458d4
003458f0  08 50 94 e5                                      ldr r5, [r4, #8]
003458f4  14 00 84 e2                                      add r0, r4, #0x14
003458f8  5b fe ff eb                                      bl #0x34526c
003458fc  04 00 a0 e1                                      mov r0, r4
00345900  1c 10 a0 e3                                      mov r1, #0x1c
00345904  7d 0d 0f eb                                      bl #0x708f00
00345908  00 40 55 e2                                      subs r4, r5, #0
0034590c  f4 ff ff 1a                                      bne #0x3458e4
00345910  70 80 bd e8                                      pop {r4, r5, r6, pc}

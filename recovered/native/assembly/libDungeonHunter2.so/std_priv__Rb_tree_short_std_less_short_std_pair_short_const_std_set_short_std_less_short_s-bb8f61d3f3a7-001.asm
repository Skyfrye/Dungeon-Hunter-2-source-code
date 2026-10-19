; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00344c50, declared_size=76, range_size=76, mode=arm
; class-group: std::priv::_Rb_tree<short, std::less<short>, std::pair<short const, std::set<short, std::less<short>, std::allocator<short> > >, std::priv::_Select1st<std::pair<short const, std::set<short, std::less<short>, std::allocator<short> > > >, std::priv::_MapTraitsT<std::pair<short const, std::set<short, std::less<short>, std::allocator<short> > > >, std::allocator<std::pair<short const, std::set<short, std::less<short>, std::allocator<short> > > > >
; alias: _ZNSt4priv8_Rb_treeIsSt4lessIsESt4pairIKsSt3setIsS2_SaIsEEENS_10_Select1stIS8_EENS_11_MapTraitsTIS8_EESaIS8_EE14_M_create_nodeERKS8_
; demangled: std::priv::_Rb_tree<short, std::less<short>, std::pair<short const, std::set<short, std::less<short>, std::allocator<short> > >, std::priv::_Select1st<std::pair<short const, std::set<short, std::less<short>, std::allocator<short> > > >, std::priv::_MapTraitsT<std::pair<short const, std::set<short, std::less<short>, std::allocator<short> > > >, std::allocator<std::pair<short const, std::set<short, std::less<short>, std::allocator<short> > > > >::_M_create_node(std::pair<short const, std::set<short, std::less<short>, std::allocator<short> > > const&)
; decoder-mode: arm
00344c50  30 40 2d e9                                      push {r4, r5, lr}
00344c54  0c d0 4d e2                                      sub sp, sp, #0xc
00344c58  08 00 8d e2                                      add r0, sp, #8
00344c5c  2c 30 a0 e3                                      mov r3, #0x2c
00344c60  04 30 20 e5                                      str r3, [r0, #-4]!
00344c64  01 50 a0 e1                                      mov r5, r1
00344c68  94 10 0f eb                                      bl #0x708ec0
00344c6c  05 10 a0 e1                                      mov r1, r5
00344c70  b4 30 d1 e0                                      ldrh r3, [r1], #4
00344c74  00 40 a0 e1                                      mov r4, r0
00344c78  b0 31 c0 e1                                      strh r3, [r0, #0x10]
00344c7c  14 00 80 e2                                      add r0, r0, #0x14
00344c80  d4 ff ff eb                                      bl #0x344bd8
00344c84  00 30 a0 e3                                      mov r3, #0
00344c88  0c 30 84 e5                                      str r3, [r4, #0xc]
00344c8c  08 30 84 e5                                      str r3, [r4, #8]
00344c90  04 00 a0 e1                                      mov r0, r4
00344c94  0c d0 8d e2                                      add sp, sp, #0xc
00344c98  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x00344c9c, declared_size=216, range_size=216, mode=arm
; class-group: std::priv::_Rb_tree<short, std::less<short>, std::pair<short const, std::set<short, std::less<short>, std::allocator<short> > >, std::priv::_Select1st<std::pair<short const, std::set<short, std::less<short>, std::allocator<short> > > >, std::priv::_MapTraitsT<std::pair<short const, std::set<short, std::less<short>, std::allocator<short> > > >, std::allocator<std::pair<short const, std::set<short, std::less<short>, std::allocator<short> > > > >
; alias: _ZNSt4priv8_Rb_treeIsSt4lessIsESt4pairIKsSt3setIsS2_SaIsEEENS_10_Select1stIS8_EENS_11_MapTraitsTIS8_EESaIS8_EE9_M_insertEPNS_18_Rb_tree_node_baseERKS8_SG_SG_
; demangled: std::priv::_Rb_tree<short, std::less<short>, std::pair<short const, std::set<short, std::less<short>, std::allocator<short> > >, std::priv::_Select1st<std::pair<short const, std::set<short, std::less<short>, std::allocator<short> > > >, std::priv::_MapTraitsT<std::pair<short const, std::set<short, std::less<short>, std::allocator<short> > > >, std::allocator<std::pair<short const, std::set<short, std::less<short>, std::allocator<short> > > > >::_M_insert(std::priv::_Rb_tree_node_base*, std::pair<short const, std::set<short, std::less<short>, std::allocator<short> > > const&, std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
00344c9c  02 00 51 e1                                      cmp r1, r2
00344ca0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00344ca4  01 40 a0 e1                                      mov r4, r1
00344ca8  02 50 a0 e1                                      mov r5, r2
00344cac  00 60 a0 e1                                      mov r6, r0
00344cb0  22 00 00 0a                                      beq #0x344d40
00344cb4  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00344cb8  00 00 52 e3                                      cmp r2, #0
00344cbc  11 00 00 0a                                      beq #0x344d08
00344cc0  03 10 a0 e1                                      mov r1, r3
00344cc4  04 00 a0 e1                                      mov r0, r4
00344cc8  e0 ff ff eb                                      bl #0x344c50
00344ccc  0c 00 85 e5                                      str r0, [r5, #0xc]
00344cd0  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00344cd4  00 70 a0 e1                                      mov r7, r0
00344cd8  03 00 55 e1                                      cmp r5, r3
00344cdc  15 00 00 0a                                      beq #0x344d38
00344ce0  07 00 a0 e1                                      mov r0, r7
00344ce4  04 50 87 e5                                      str r5, [r7, #4]
00344ce8  04 10 84 e2                                      add r1, r4, #4
00344cec  9b 3a ff eb                                      bl #0x313760
00344cf0  10 30 94 e5                                      ldr r3, [r4, #0x10]
00344cf4  06 00 a0 e1                                      mov r0, r6
00344cf8  01 30 83 e2                                      add r3, r3, #1
00344cfc  10 30 84 e5                                      str r3, [r4, #0x10]
00344d00  00 70 86 e5                                      str r7, [r6]
00344d04  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00344d08  18 20 9d e5                                      ldr r2, [sp, #0x18]
00344d0c  00 00 52 e3                                      cmp r2, #0
00344d10  12 00 00 0a                                      beq #0x344d60
00344d14  03 10 a0 e1                                      mov r1, r3
00344d18  04 00 a0 e1                                      mov r0, r4
00344d1c  cb ff ff eb                                      bl #0x344c50
00344d20  08 00 85 e5                                      str r0, [r5, #8]
00344d24  08 30 94 e5                                      ldr r3, [r4, #8]
00344d28  00 70 a0 e1                                      mov r7, r0
00344d2c  03 00 55 e1                                      cmp r5, r3
00344d30  08 00 84 05                                      streq r0, [r4, #8]
00344d34  e9 ff ff ea                                      b #0x344ce0
00344d38  0c 70 84 e5                                      str r7, [r4, #0xc]
00344d3c  e7 ff ff ea                                      b #0x344ce0
00344d40  03 10 a0 e1                                      mov r1, r3
00344d44  04 00 a0 e1                                      mov r0, r4
00344d48  c0 ff ff eb                                      bl #0x344c50
00344d4c  00 70 a0 e1                                      mov r7, r0
00344d50  08 00 84 e5                                      str r0, [r4, #8]
00344d54  04 00 84 e5                                      str r0, [r4, #4]
00344d58  0c 00 84 e5                                      str r0, [r4, #0xc]
00344d5c  df ff ff ea                                      b #0x344ce0
00344d60  f0 10 d3 e1                                      ldrsh r1, [r3]
00344d64  f0 21 d5 e1                                      ldrsh r2, [r5, #0x10]
00344d68  02 00 51 e1                                      cmp r1, r2
00344d6c  d3 ff ff aa                                      bge #0x344cc0
00344d70  e7 ff ff ea                                      b #0x344d14

; FUNCTION 0x00344d74, declared_size=388, range_size=388, mode=arm
; class-group: std::priv::_Rb_tree<short, std::less<short>, std::pair<short const, std::set<short, std::less<short>, std::allocator<short> > >, std::priv::_Select1st<std::pair<short const, std::set<short, std::less<short>, std::allocator<short> > > >, std::priv::_MapTraitsT<std::pair<short const, std::set<short, std::less<short>, std::allocator<short> > > >, std::allocator<std::pair<short const, std::set<short, std::less<short>, std::allocator<short> > > > >
; alias: _ZNSt4priv8_Rb_treeIsSt4lessIsESt4pairIKsSt3setIsS2_SaIsEEENS_10_Select1stIS8_EENS_11_MapTraitsTIS8_EESaIS8_EE13insert_uniqueERKS8_
; demangled: std::priv::_Rb_tree<short, std::less<short>, std::pair<short const, std::set<short, std::less<short>, std::allocator<short> > >, std::priv::_Select1st<std::pair<short const, std::set<short, std::less<short>, std::allocator<short> > > >, std::priv::_MapTraitsT<std::pair<short const, std::set<short, std::less<short>, std::allocator<short> > > >, std::allocator<std::pair<short const, std::set<short, std::less<short>, std::allocator<short> > > > >::insert_unique(std::pair<short const, std::set<short, std::less<short>, std::allocator<short> > > const&)
; decoder-mode: arm
00344d74  70 40 2d e9                                      push {r4, r5, r6, lr}
00344d78  04 c0 91 e5                                      ldr ip, [r1, #4]
00344d7c  10 d0 4d e2                                      sub sp, sp, #0x10
00344d80  00 40 a0 e1                                      mov r4, r0
00344d84  00 00 5c e3                                      cmp ip, #0
00344d88  02 30 a0 e1                                      mov r3, r2
00344d8c  01 c0 a0 01                                      moveq ip, r1
00344d90  15 00 00 0a                                      beq #0x344dec
00344d94  f0 60 d2 e1                                      ldrsh r6, [r2]
00344d98  00 00 00 ea                                      b #0x344da0
00344d9c  02 c0 a0 e1                                      mov ip, r2
00344da0  f0 01 dc e1                                      ldrsh r0, [ip, #0x10]
00344da4  01 50 a0 e3                                      mov r5, #1
00344da8  06 00 50 e1                                      cmp r0, r6
00344dac  08 20 9c c5                                      ldrgt r2, [ip, #8]
00344db0  0c 20 9c d5                                      ldrle r2, [ip, #0xc]
00344db4  00 50 a0 d3                                      movle r5, #0
00344db8  00 00 52 e3                                      cmp r2, #0
00344dbc  f6 ff ff 1a                                      bne #0x344d9c
00344dc0  00 00 55 e3                                      cmp r5, #0
00344dc4  0c 20 a0 01                                      moveq r2, ip
00344dc8  07 00 00 1a                                      bne #0x344dec
00344dcc  00 00 56 e1                                      cmp r6, r0
00344dd0  00 30 a0 d3                                      movle r3, #0
00344dd4  00 20 84 d5                                      strle r2, [r4]
00344dd8  04 30 c4 d5                                      strble r3, [r4, #4]
00344ddc  1c 00 00 ca                                      bgt #0x344e54
00344de0  04 00 a0 e1                                      mov r0, r4
00344de4  10 d0 8d e2                                      add sp, sp, #0x10
00344de8  70 80 bd e8                                      pop {r4, r5, r6, pc}
00344dec  08 20 91 e5                                      ldr r2, [r1, #8]
00344df0  02 00 5c e1                                      cmp ip, r2
00344df4  35 00 00 0a                                      beq #0x344ed0
00344df8  00 20 dc e5                                      ldrb r2, [ip]
00344dfc  00 00 52 e3                                      cmp r2, #0
00344e00  03 00 00 1a                                      bne #0x344e14
00344e04  04 20 9c e5                                      ldr r2, [ip, #4]
00344e08  04 20 92 e5                                      ldr r2, [r2, #4]
00344e0c  02 00 5c e1                                      cmp ip, r2
00344e10  2a 00 00 0a                                      beq #0x344ec0
00344e14  08 00 9c e5                                      ldr r0, [ip, #8]
00344e18  00 00 50 e3                                      cmp r0, #0
00344e1c  01 00 00 1a                                      bne #0x344e28
00344e20  16 00 00 ea                                      b #0x344e80
00344e24  02 00 a0 e1                                      mov r0, r2
00344e28  0c 20 90 e5                                      ldr r2, [r0, #0xc]
00344e2c  00 00 52 e3                                      cmp r2, #0
00344e30  fb ff ff 1a                                      bne #0x344e24
00344e34  f0 60 d3 e1                                      ldrsh r6, [r3]
00344e38  00 20 a0 e1                                      mov r2, r0
00344e3c  f0 01 d0 e1                                      ldrsh r0, [r0, #0x10]
00344e40  00 00 56 e1                                      cmp r6, r0
00344e44  00 30 a0 d3                                      movle r3, #0
00344e48  00 20 84 d5                                      strle r2, [r4]
00344e4c  04 30 c4 d5                                      strble r3, [r4, #4]
00344e50  e2 ff ff da                                      ble #0x344de0
00344e54  0c 20 a0 e1                                      mov r2, ip
00344e58  08 00 8d e2                                      add r0, sp, #8
00344e5c  00 c0 a0 e3                                      mov ip, #0
00344e60  04 c0 8d e5                                      str ip, [sp, #4]
00344e64  00 c0 8d e5                                      str ip, [sp]
00344e68  8b ff ff eb                                      bl #0x344c9c
00344e6c  08 30 9d e5                                      ldr r3, [sp, #8]
00344e70  01 20 a0 e3                                      mov r2, #1
00344e74  04 20 c4 e5                                      strb r2, [r4, #4]
00344e78  00 30 84 e5                                      str r3, [r4]
00344e7c  d7 ff ff ea                                      b #0x344de0
00344e80  04 50 9c e5                                      ldr r5, [ip, #4]
00344e84  08 20 95 e5                                      ldr r2, [r5, #8]
00344e88  02 00 5c e1                                      cmp ip, r2
00344e8c  05 20 a0 11                                      movne r2, r5
00344e90  f0 01 d2 11                                      ldrshne r0, [r2, #0x10]
00344e94  f0 60 d3 11                                      ldrshne r6, [r3]
00344e98  01 00 00 0a                                      beq #0x344ea4
00344e9c  ca ff ff ea                                      b #0x344dcc
00344ea0  02 50 a0 e1                                      mov r5, r2
00344ea4  04 20 95 e5                                      ldr r2, [r5, #4]
00344ea8  08 00 92 e5                                      ldr r0, [r2, #8]
00344eac  05 00 50 e1                                      cmp r0, r5
00344eb0  fa ff ff 0a                                      beq #0x344ea0
00344eb4  f0 01 d2 e1                                      ldrsh r0, [r2, #0x10]
00344eb8  f0 60 d3 e1                                      ldrsh r6, [r3]
00344ebc  c2 ff ff ea                                      b #0x344dcc
00344ec0  0c 20 9c e5                                      ldr r2, [ip, #0xc]
00344ec4  f0 60 d3 e1                                      ldrsh r6, [r3]
00344ec8  f0 01 d2 e1                                      ldrsh r0, [r2, #0x10]
00344ecc  be ff ff ea                                      b #0x344dcc
00344ed0  0c 20 a0 e1                                      mov r2, ip
00344ed4  00 e0 a0 e3                                      mov lr, #0
00344ed8  0c 00 8d e2                                      add r0, sp, #0xc
00344edc  00 50 8d e8                                      stm sp, {ip, lr}
00344ee0  6d ff ff eb                                      bl #0x344c9c
00344ee4  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00344ee8  01 20 a0 e3                                      mov r2, #1
00344eec  04 20 c4 e5                                      strb r2, [r4, #4]
00344ef0  00 30 84 e5                                      str r3, [r4]
00344ef4  b9 ff ff ea                                      b #0x344de0

; FUNCTION 0x00344ef8, declared_size=884, range_size=884, mode=arm
; class-group: std::priv::_Rb_tree<short, std::less<short>, std::pair<short const, std::set<short, std::less<short>, std::allocator<short> > >, std::priv::_Select1st<std::pair<short const, std::set<short, std::less<short>, std::allocator<short> > > >, std::priv::_MapTraitsT<std::pair<short const, std::set<short, std::less<short>, std::allocator<short> > > >, std::allocator<std::pair<short const, std::set<short, std::less<short>, std::allocator<short> > > > >
; alias: _ZNSt4priv8_Rb_treeIsSt4lessIsESt4pairIKsSt3setIsS2_SaIsEEENS_10_Select1stIS8_EENS_11_MapTraitsTIS8_EESaIS8_EE13insert_uniqueENS_17_Rb_tree_iteratorIS8_SC_EERKS8_
; demangled: std::priv::_Rb_tree<short, std::less<short>, std::pair<short const, std::set<short, std::less<short>, std::allocator<short> > >, std::priv::_Select1st<std::pair<short const, std::set<short, std::less<short>, std::allocator<short> > > >, std::priv::_MapTraitsT<std::pair<short const, std::set<short, std::less<short>, std::allocator<short> > > >, std::allocator<std::pair<short const, std::set<short, std::less<short>, std::allocator<short> > > > >::insert_unique(std::priv::_Rb_tree_iterator<std::pair<short const, std::set<short, std::less<short>, std::allocator<short> > >, std::priv::_MapTraitsT<std::pair<short const, std::set<short, std::less<short>, std::allocator<short> > > > >, std::pair<short const, std::set<short, std::less<short>, std::allocator<short> > > const&)
; decoder-mode: arm
00344ef8  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00344efc  00 40 92 e5                                      ldr r4, [r2]
00344f00  08 20 91 e5                                      ldr r2, [r1, #8]
00344f04  2c d0 4d e2                                      sub sp, sp, #0x2c
00344f08  01 50 a0 e1                                      mov r5, r1
00344f0c  02 00 54 e1                                      cmp r4, r2
00344f10  00 70 a0 e1                                      mov r7, r0
00344f14  03 60 a0 e1                                      mov r6, r3
00344f18  5a 00 00 0a                                      beq #0x345088
00344f1c  01 00 54 e1                                      cmp r4, r1
00344f20  78 00 00 0a                                      beq #0x345108
00344f24  00 30 d4 e5                                      ldrb r3, [r4]
00344f28  00 00 53 e3                                      cmp r3, #0
00344f2c  3a 00 00 0a                                      beq #0x34501c
00344f30  08 c0 94 e5                                      ldr ip, [r4, #8]
00344f34  00 00 5c e3                                      cmp ip, #0
00344f38  01 00 00 1a                                      bne #0x344f44
00344f3c  3e 00 00 ea                                      b #0x34503c
00344f40  03 c0 a0 e1                                      mov ip, r3
00344f44  0c 30 9c e5                                      ldr r3, [ip, #0xc]
00344f48  00 00 53 e3                                      cmp r3, #0
00344f4c  fb ff ff 1a                                      bne #0x344f40
00344f50  f0 20 d6 e1                                      ldrsh r2, [r6]
00344f54  f0 01 d4 e1                                      ldrsh r0, [r4, #0x10]
00344f58  00 00 52 e1                                      cmp r2, r0
00344f5c  00 10 a0 a3                                      movge r1, #0
00344f60  01 10 a0 b3                                      movlt r1, #1
00344f64  00 00 51 e3                                      cmp r1, #0
00344f68  1b 00 00 1a                                      bne #0x344fdc
00344f6c  0c 80 94 e5                                      ldr r8, [r4, #0xc]
00344f70  00 00 58 e3                                      cmp r8, #0
00344f74  7d 00 00 0a                                      beq #0x345170
00344f78  08 c0 a0 e1                                      mov ip, r8
00344f7c  00 00 00 ea                                      b #0x344f84
00344f80  03 c0 a0 e1                                      mov ip, r3
00344f84  08 30 9c e5                                      ldr r3, [ip, #8]
00344f88  00 00 53 e3                                      cmp r3, #0
00344f8c  fb ff ff 1a                                      bne #0x344f80
00344f90  00 00 51 e3                                      cmp r1, #0
00344f94  34 00 00 1a                                      bne #0x34506c
00344f98  00 00 52 e1                                      cmp r2, r0
00344f9c  63 00 00 da                                      ble #0x345130
00344fa0  0c 00 55 e1                                      cmp r5, ip
00344fa4  02 00 00 0a                                      beq #0x344fb4
00344fa8  f0 31 dc e1                                      ldrsh r3, [ip, #0x10]
00344fac  02 00 53 e1                                      cmp r3, r2
00344fb0  2d 00 00 da                                      ble #0x34506c
00344fb4  00 00 58 e3                                      cmp r8, #0
00344fb8  4a 00 00 1a                                      bne #0x3450e8
00344fbc  05 10 a0 e1                                      mov r1, r5
00344fc0  04 20 a0 e1                                      mov r2, r4
00344fc4  06 30 a0 e1                                      mov r3, r6
00344fc8  07 00 a0 e1                                      mov r0, r7
00344fcc  00 80 8d e5                                      str r8, [sp]
00344fd0  04 40 8d e5                                      str r4, [sp, #4]
00344fd4  30 ff ff eb                                      bl #0x344c9c
00344fd8  0c 00 00 ea                                      b #0x345010
00344fdc  f0 31 dc e1                                      ldrsh r3, [ip, #0x10]
00344fe0  02 00 53 e1                                      cmp r3, r2
00344fe4  e0 ff ff aa                                      bge #0x344f6c
00344fe8  0c e0 9c e5                                      ldr lr, [ip, #0xc]
00344fec  00 00 5e e3                                      cmp lr, #0
00344ff0  56 00 00 0a                                      beq #0x345150
00344ff4  00 c0 a0 e3                                      mov ip, #0
00344ff8  05 10 a0 e1                                      mov r1, r5
00344ffc  04 20 a0 e1                                      mov r2, r4
00345000  06 30 a0 e1                                      mov r3, r6
00345004  07 00 a0 e1                                      mov r0, r7
00345008  10 10 8d e8                                      stm sp, {r4, ip}
0034500c  22 ff ff eb                                      bl #0x344c9c
00345010  07 00 a0 e1                                      mov r0, r7
00345014  2c d0 8d e2                                      add sp, sp, #0x2c
00345018  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0034501c  04 30 94 e5                                      ldr r3, [r4, #4]
00345020  04 30 93 e5                                      ldr r3, [r3, #4]
00345024  03 00 54 e1                                      cmp r4, r3
00345028  0c c0 94 05                                      ldreq ip, [r4, #0xc]
0034502c  c7 ff ff 0a                                      beq #0x344f50
00345030  08 c0 94 e5                                      ldr ip, [r4, #8]
00345034  00 00 5c e3                                      cmp ip, #0
00345038  c1 ff ff 1a                                      bne #0x344f44
0034503c  04 c0 94 e5                                      ldr ip, [r4, #4]
00345040  08 30 9c e5                                      ldr r3, [ip, #8]
00345044  03 00 54 e1                                      cmp r4, r3
00345048  01 00 00 0a                                      beq #0x345054
0034504c  bf ff ff ea                                      b #0x344f50
00345050  03 c0 a0 e1                                      mov ip, r3
00345054  04 30 9c e5                                      ldr r3, [ip, #4]
00345058  08 20 93 e5                                      ldr r2, [r3, #8]
0034505c  0c 00 52 e1                                      cmp r2, ip
00345060  fa ff ff 0a                                      beq #0x345050
00345064  03 c0 a0 e1                                      mov ip, r3
00345068  b8 ff ff ea                                      b #0x344f50
0034506c  05 10 a0 e1                                      mov r1, r5
00345070  06 20 a0 e1                                      mov r2, r6
00345074  08 00 8d e2                                      add r0, sp, #8
00345078  3d ff ff eb                                      bl #0x344d74
0034507c  08 30 9d e5                                      ldr r3, [sp, #8]
00345080  00 30 87 e5                                      str r3, [r7]
00345084  e1 ff ff ea                                      b #0x345010
00345088  10 20 91 e5                                      ldr r2, [r1, #0x10]
0034508c  00 00 52 e3                                      cmp r2, #0
00345090  52 00 00 0a                                      beq #0x3451e0
00345094  f0 20 d3 e1                                      ldrsh r2, [r3]
00345098  f0 c1 d4 e1                                      ldrsh ip, [r4, #0x10]
0034509c  0c 00 52 e1                                      cmp r2, ip
003450a0  54 00 00 ba                                      blt #0x3451f8
003450a4  21 00 00 da                                      ble #0x345130
003450a8  0c e0 94 e5                                      ldr lr, [r4, #0xc]
003450ac  00 00 5e e3                                      cmp lr, #0
003450b0  3c 00 00 0a                                      beq #0x3451a8
003450b4  0e c0 a0 e1                                      mov ip, lr
003450b8  00 00 00 ea                                      b #0x3450c0
003450bc  03 c0 a0 e1                                      mov ip, r3
003450c0  08 30 9c e5                                      ldr r3, [ip, #8]
003450c4  00 00 53 e3                                      cmp r3, #0
003450c8  fb ff ff 1a                                      bne #0x3450bc
003450cc  0c 00 55 e1                                      cmp r5, ip
003450d0  5c 00 00 0a                                      beq #0x345248
003450d4  f0 31 dc e1                                      ldrsh r3, [ip, #0x10]
003450d8  03 00 52 e1                                      cmp r2, r3
003450dc  4a 00 00 aa                                      bge #0x34520c
003450e0  00 00 5e e3                                      cmp lr, #0
003450e4  4f 00 00 0a                                      beq #0x345228
003450e8  00 e0 a0 e3                                      mov lr, #0
003450ec  05 10 a0 e1                                      mov r1, r5
003450f0  0c 20 a0 e1                                      mov r2, ip
003450f4  06 30 a0 e1                                      mov r3, r6
003450f8  07 00 a0 e1                                      mov r0, r7
003450fc  00 50 8d e8                                      stm sp, {ip, lr}
00345100  e5 fe ff eb                                      bl #0x344c9c
00345104  c1 ff ff ea                                      b #0x345010
00345108  0c 20 94 e5                                      ldr r2, [r4, #0xc]
0034510c  f0 c0 d3 e1                                      ldrsh ip, [r3]
00345110  f0 e1 d2 e1                                      ldrsh lr, [r2, #0x10]
00345114  0c 00 5e e1                                      cmp lr, ip
00345118  06 00 00 aa                                      bge #0x345138
0034511c  00 c0 a0 e3                                      mov ip, #0
00345120  00 c0 8d e5                                      str ip, [sp]
00345124  04 40 8d e5                                      str r4, [sp, #4]
00345128  db fe ff eb                                      bl #0x344c9c
0034512c  b7 ff ff ea                                      b #0x345010
00345130  00 40 87 e5                                      str r4, [r7]
00345134  b5 ff ff ea                                      b #0x345010
00345138  03 20 a0 e1                                      mov r2, r3
0034513c  10 00 8d e2                                      add r0, sp, #0x10
00345140  0b ff ff eb                                      bl #0x344d74
00345144  10 30 9d e5                                      ldr r3, [sp, #0x10]
00345148  00 30 87 e5                                      str r3, [r7]
0034514c  af ff ff ea                                      b #0x345010
00345150  05 10 a0 e1                                      mov r1, r5
00345154  0c 20 a0 e1                                      mov r2, ip
00345158  06 30 a0 e1                                      mov r3, r6
0034515c  07 00 a0 e1                                      mov r0, r7
00345160  00 e0 8d e5                                      str lr, [sp]
00345164  04 c0 8d e5                                      str ip, [sp, #4]
00345168  cb fe ff eb                                      bl #0x344c9c
0034516c  a7 ff ff ea                                      b #0x345010
00345170  04 30 94 e5                                      ldr r3, [r4, #4]
00345174  0c c0 93 e5                                      ldr ip, [r3, #0xc]
00345178  0c 00 54 e1                                      cmp r4, ip
0034517c  04 c0 a0 11                                      movne ip, r4
00345180  04 00 00 1a                                      bne #0x345198
00345184  03 c0 a0 e1                                      mov ip, r3
00345188  04 30 93 e5                                      ldr r3, [r3, #4]
0034518c  0c a0 93 e5                                      ldr sl, [r3, #0xc]
00345190  0a 00 5c e1                                      cmp ip, sl
00345194  fa ff ff 0a                                      beq #0x345184
00345198  0c a0 9c e5                                      ldr sl, [ip, #0xc]
0034519c  0a 00 53 e1                                      cmp r3, sl
003451a0  03 c0 a0 11                                      movne ip, r3
003451a4  79 ff ff ea                                      b #0x344f90
003451a8  04 30 94 e5                                      ldr r3, [r4, #4]
003451ac  0c 10 93 e5                                      ldr r1, [r3, #0xc]
003451b0  01 00 54 e1                                      cmp r4, r1
003451b4  04 c0 a0 11                                      movne ip, r4
003451b8  04 00 00 1a                                      bne #0x3451d0
003451bc  03 c0 a0 e1                                      mov ip, r3
003451c0  04 30 93 e5                                      ldr r3, [r3, #4]
003451c4  0c 10 93 e5                                      ldr r1, [r3, #0xc]
003451c8  0c 00 51 e1                                      cmp r1, ip
003451cc  fa ff ff 0a                                      beq #0x3451bc
003451d0  0c 10 9c e5                                      ldr r1, [ip, #0xc]
003451d4  01 00 53 e1                                      cmp r3, r1
003451d8  03 c0 a0 11                                      movne ip, r3
003451dc  ba ff ff ea                                      b #0x3450cc
003451e0  03 20 a0 e1                                      mov r2, r3
003451e4  20 00 8d e2                                      add r0, sp, #0x20
003451e8  e1 fe ff eb                                      bl #0x344d74
003451ec  20 30 9d e5                                      ldr r3, [sp, #0x20]
003451f0  00 30 87 e5                                      str r3, [r7]
003451f4  85 ff ff ea                                      b #0x345010
003451f8  00 c0 a0 e3                                      mov ip, #0
003451fc  04 20 a0 e1                                      mov r2, r4
00345200  10 10 8d e8                                      stm sp, {r4, ip}
00345204  a4 fe ff eb                                      bl #0x344c9c
00345208  80 ff ff ea                                      b #0x345010
0034520c  05 10 a0 e1                                      mov r1, r5
00345210  06 20 a0 e1                                      mov r2, r6
00345214  18 00 8d e2                                      add r0, sp, #0x18
00345218  d5 fe ff eb                                      bl #0x344d74
0034521c  18 30 9d e5                                      ldr r3, [sp, #0x18]
00345220  00 30 87 e5                                      str r3, [r7]
00345224  79 ff ff ea                                      b #0x345010
00345228  05 10 a0 e1                                      mov r1, r5
0034522c  04 20 a0 e1                                      mov r2, r4
00345230  06 30 a0 e1                                      mov r3, r6
00345234  07 00 a0 e1                                      mov r0, r7
00345238  00 e0 8d e5                                      str lr, [sp]
0034523c  04 40 8d e5                                      str r4, [sp, #4]
00345240  95 fe ff eb                                      bl #0x344c9c
00345244  71 ff ff ea                                      b #0x345010
00345248  00 c0 a0 e3                                      mov ip, #0
0034524c  05 10 a0 e1                                      mov r1, r5
00345250  04 20 a0 e1                                      mov r2, r4
00345254  06 30 a0 e1                                      mov r3, r6
00345258  07 00 a0 e1                                      mov r0, r7
0034525c  00 c0 8d e5                                      str ip, [sp]
00345260  04 40 8d e5                                      str r4, [sp, #4]
00345264  8c fe ff eb                                      bl #0x344c9c
00345268  68 ff ff ea                                      b #0x345010

; FUNCTION 0x00345f04, declared_size=128, range_size=128, mode=arm
; class-group: std::priv::_Rb_tree<short, std::less<short>, std::pair<short const, std::set<short, std::less<short>, std::allocator<short> > >, std::priv::_Select1st<std::pair<short const, std::set<short, std::less<short>, std::allocator<short> > > >, std::priv::_MapTraitsT<std::pair<short const, std::set<short, std::less<short>, std::allocator<short> > > >, std::allocator<std::pair<short const, std::set<short, std::less<short>, std::allocator<short> > > > >
; alias: _ZNSt4priv8_Rb_treeIsSt4lessIsESt4pairIKsSt3setIsS2_SaIsEEENS_10_Select1stIS8_EENS_11_MapTraitsTIS8_EESaIS8_EE8_M_eraseEPNS_18_Rb_tree_node_baseE
; demangled: std::priv::_Rb_tree<short, std::less<short>, std::pair<short const, std::set<short, std::less<short>, std::allocator<short> > >, std::priv::_Select1st<std::pair<short const, std::set<short, std::less<short>, std::allocator<short> > > >, std::priv::_MapTraitsT<std::pair<short const, std::set<short, std::less<short>, std::allocator<short> > > >, std::allocator<std::pair<short const, std::set<short, std::less<short>, std::allocator<short> > > > >::_M_erase(std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
00345f04  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00345f08  00 40 51 e2                                      subs r4, r1, #0
00345f0c  00 70 a0 e1                                      mov r7, r0
00345f10  1a 00 00 0a                                      beq #0x345f80
00345f14  00 80 a0 e3                                      mov r8, #0
00345f18  04 00 00 ea                                      b #0x345f30
00345f1c  04 00 a0 e1                                      mov r0, r4
00345f20  2c 10 a0 e3                                      mov r1, #0x2c
00345f24  f5 0b 0f eb                                      bl #0x708f00
00345f28  00 40 55 e2                                      subs r4, r5, #0
00345f2c  13 00 00 0a                                      beq #0x345f80
00345f30  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00345f34  07 00 a0 e1                                      mov r0, r7
00345f38  f1 ff ff eb                                      bl #0x345f04
00345f3c  24 30 94 e5                                      ldr r3, [r4, #0x24]
00345f40  08 50 94 e5                                      ldr r5, [r4, #8]
00345f44  00 00 53 e3                                      cmp r3, #0
00345f48  f3 ff ff 0a                                      beq #0x345f1c
00345f4c  14 60 84 e2                                      add r6, r4, #0x14
00345f50  18 10 94 e5                                      ldr r1, [r4, #0x18]
00345f54  06 00 a0 e1                                      mov r0, r6
00345f58  5b ff ff eb                                      bl #0x345ccc
00345f5c  20 60 84 e5                                      str r6, [r4, #0x20]
00345f60  1c 60 84 e5                                      str r6, [r4, #0x1c]
00345f64  18 80 84 e5                                      str r8, [r4, #0x18]
00345f68  24 80 84 e5                                      str r8, [r4, #0x24]
00345f6c  04 00 a0 e1                                      mov r0, r4
00345f70  2c 10 a0 e3                                      mov r1, #0x2c
00345f74  e1 0b 0f eb                                      bl #0x708f00
00345f78  00 40 55 e2                                      subs r4, r5, #0
00345f7c  eb ff ff 1a                                      bne #0x345f30
00345f80  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

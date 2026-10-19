; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003e0ab8, declared_size=64, range_size=64, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, CharProperties::BuffDecl>, std::priv::_Select1st<std::pair<int const, CharProperties::BuffDecl> >, std::priv::_MapTraitsT<std::pair<int const, CharProperties::BuffDecl> >, std::allocator<std::pair<int const, CharProperties::BuffDecl> > >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKiN14CharProperties8BuffDeclEENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE8_M_eraseEPNS_18_Rb_tree_node_baseE
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, CharProperties::BuffDecl>, std::priv::_Select1st<std::pair<int const, CharProperties::BuffDecl> >, std::priv::_MapTraitsT<std::pair<int const, CharProperties::BuffDecl> >, std::allocator<std::pair<int const, CharProperties::BuffDecl> > >::_M_erase(std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
003e0ab8  70 40 2d e9                                      push {r4, r5, r6, lr}
003e0abc  00 40 51 e2                                      subs r4, r1, #0
003e0ac0  00 60 a0 e1                                      mov r6, r0
003e0ac4  0a 00 00 0a                                      beq #0x3e0af4
003e0ac8  0c 10 94 e5                                      ldr r1, [r4, #0xc]
003e0acc  06 00 a0 e1                                      mov r0, r6
003e0ad0  f8 ff ff eb                                      bl #0x3e0ab8
003e0ad4  08 50 94 e5                                      ldr r5, [r4, #8]
003e0ad8  14 00 84 e2                                      add r0, r4, #0x14
003e0adc  e1 ff ff eb                                      bl #0x3e0a68
003e0ae0  04 00 a0 e1                                      mov r0, r4
003e0ae4  5c 10 a0 e3                                      mov r1, #0x5c
003e0ae8  04 a1 0c eb                                      bl #0x708f00
003e0aec  00 40 55 e2                                      subs r4, r5, #0
003e0af0  f4 ff ff 1a                                      bne #0x3e0ac8
003e0af4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x003e0fd0, declared_size=76, range_size=76, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, CharProperties::BuffDecl>, std::priv::_Select1st<std::pair<int const, CharProperties::BuffDecl> >, std::priv::_MapTraitsT<std::pair<int const, CharProperties::BuffDecl> >, std::allocator<std::pair<int const, CharProperties::BuffDecl> > >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKiN14CharProperties8BuffDeclEENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE5eraseENS_17_Rb_tree_iteratorIS7_SB_EE
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, CharProperties::BuffDecl>, std::priv::_Select1st<std::pair<int const, CharProperties::BuffDecl> >, std::priv::_MapTraitsT<std::pair<int const, CharProperties::BuffDecl> >, std::allocator<std::pair<int const, CharProperties::BuffDecl> > >::erase(std::priv::_Rb_tree_iterator<std::pair<int const, CharProperties::BuffDecl>, std::priv::_MapTraitsT<std::pair<int const, CharProperties::BuffDecl> > >)
; decoder-mode: arm
003e0fd0  70 40 2d e9                                      push {r4, r5, r6, lr}
003e0fd4  00 40 a0 e1                                      mov r4, r0
003e0fd8  08 20 84 e2                                      add r2, r4, #8
003e0fdc  00 00 91 e5                                      ldr r0, [r1]
003e0fe0  0c 30 84 e2                                      add r3, r4, #0xc
003e0fe4  04 10 84 e2                                      add r1, r4, #4
003e0fe8  05 54 fd eb                                      bl #0x336004
003e0fec  00 50 a0 e1                                      mov r5, r0
003e0ff0  14 00 80 e2                                      add r0, r0, #0x14
003e0ff4  9b fe ff eb                                      bl #0x3e0a68
003e0ff8  00 00 55 e3                                      cmp r5, #0
003e0ffc  02 00 00 0a                                      beq #0x3e100c
003e1000  05 00 a0 e1                                      mov r0, r5
003e1004  5c 10 a0 e3                                      mov r1, #0x5c
003e1008  bc 9f 0c eb                                      bl #0x708f00
003e100c  10 30 94 e5                                      ldr r3, [r4, #0x10]
003e1010  01 30 43 e2                                      sub r3, r3, #1
003e1014  10 30 84 e5                                      str r3, [r4, #0x10]
003e1018  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x003e1a7c, declared_size=76, range_size=76, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, CharProperties::BuffDecl>, std::priv::_Select1st<std::pair<int const, CharProperties::BuffDecl> >, std::priv::_MapTraitsT<std::pair<int const, CharProperties::BuffDecl> >, std::allocator<std::pair<int const, CharProperties::BuffDecl> > >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKiN14CharProperties8BuffDeclEENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE14_M_create_nodeERKS7_
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, CharProperties::BuffDecl>, std::priv::_Select1st<std::pair<int const, CharProperties::BuffDecl> >, std::priv::_MapTraitsT<std::pair<int const, CharProperties::BuffDecl> >, std::allocator<std::pair<int const, CharProperties::BuffDecl> > >::_M_create_node(std::pair<int const, CharProperties::BuffDecl> const&)
; decoder-mode: arm
003e1a7c  30 40 2d e9                                      push {r4, r5, lr}
003e1a80  0c d0 4d e2                                      sub sp, sp, #0xc
003e1a84  08 00 8d e2                                      add r0, sp, #8
003e1a88  5c 30 a0 e3                                      mov r3, #0x5c
003e1a8c  04 30 20 e5                                      str r3, [r0, #-4]!
003e1a90  01 50 a0 e1                                      mov r5, r1
003e1a94  09 9d 0c eb                                      bl #0x708ec0
003e1a98  05 10 a0 e1                                      mov r1, r5
003e1a9c  04 30 91 e4                                      ldr r3, [r1], #4
003e1aa0  00 40 a0 e1                                      mov r4, r0
003e1aa4  14 00 80 e2                                      add r0, r0, #0x14
003e1aa8  10 30 84 e5                                      str r3, [r4, #0x10]
003e1aac  c3 ff ff eb                                      bl #0x3e19c0
003e1ab0  00 30 a0 e3                                      mov r3, #0
003e1ab4  0c 30 84 e5                                      str r3, [r4, #0xc]
003e1ab8  08 30 84 e5                                      str r3, [r4, #8]
003e1abc  04 00 a0 e1                                      mov r0, r4
003e1ac0  0c d0 8d e2                                      add sp, sp, #0xc
003e1ac4  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x003e1ac8, declared_size=216, range_size=216, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, CharProperties::BuffDecl>, std::priv::_Select1st<std::pair<int const, CharProperties::BuffDecl> >, std::priv::_MapTraitsT<std::pair<int const, CharProperties::BuffDecl> >, std::allocator<std::pair<int const, CharProperties::BuffDecl> > >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKiN14CharProperties8BuffDeclEENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE9_M_insertEPNS_18_Rb_tree_node_baseERKS7_SF_SF_
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, CharProperties::BuffDecl>, std::priv::_Select1st<std::pair<int const, CharProperties::BuffDecl> >, std::priv::_MapTraitsT<std::pair<int const, CharProperties::BuffDecl> >, std::allocator<std::pair<int const, CharProperties::BuffDecl> > >::_M_insert(std::priv::_Rb_tree_node_base*, std::pair<int const, CharProperties::BuffDecl> const&, std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
003e1ac8  02 00 51 e1                                      cmp r1, r2
003e1acc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003e1ad0  01 40 a0 e1                                      mov r4, r1
003e1ad4  02 50 a0 e1                                      mov r5, r2
003e1ad8  00 60 a0 e1                                      mov r6, r0
003e1adc  22 00 00 0a                                      beq #0x3e1b6c
003e1ae0  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
003e1ae4  00 00 52 e3                                      cmp r2, #0
003e1ae8  11 00 00 0a                                      beq #0x3e1b34
003e1aec  03 10 a0 e1                                      mov r1, r3
003e1af0  04 00 a0 e1                                      mov r0, r4
003e1af4  e0 ff ff eb                                      bl #0x3e1a7c
003e1af8  0c 00 85 e5                                      str r0, [r5, #0xc]
003e1afc  0c 30 94 e5                                      ldr r3, [r4, #0xc]
003e1b00  00 70 a0 e1                                      mov r7, r0
003e1b04  03 00 55 e1                                      cmp r5, r3
003e1b08  15 00 00 0a                                      beq #0x3e1b64
003e1b0c  07 00 a0 e1                                      mov r0, r7
003e1b10  04 50 87 e5                                      str r5, [r7, #4]
003e1b14  04 10 84 e2                                      add r1, r4, #4
003e1b18  10 c7 fc eb                                      bl #0x313760
003e1b1c  10 30 94 e5                                      ldr r3, [r4, #0x10]
003e1b20  06 00 a0 e1                                      mov r0, r6
003e1b24  01 30 83 e2                                      add r3, r3, #1
003e1b28  10 30 84 e5                                      str r3, [r4, #0x10]
003e1b2c  00 70 86 e5                                      str r7, [r6]
003e1b30  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003e1b34  18 20 9d e5                                      ldr r2, [sp, #0x18]
003e1b38  00 00 52 e3                                      cmp r2, #0
003e1b3c  12 00 00 0a                                      beq #0x3e1b8c
003e1b40  03 10 a0 e1                                      mov r1, r3
003e1b44  04 00 a0 e1                                      mov r0, r4
003e1b48  cb ff ff eb                                      bl #0x3e1a7c
003e1b4c  08 00 85 e5                                      str r0, [r5, #8]
003e1b50  08 30 94 e5                                      ldr r3, [r4, #8]
003e1b54  00 70 a0 e1                                      mov r7, r0
003e1b58  03 00 55 e1                                      cmp r5, r3
003e1b5c  08 00 84 05                                      streq r0, [r4, #8]
003e1b60  e9 ff ff ea                                      b #0x3e1b0c
003e1b64  0c 70 84 e5                                      str r7, [r4, #0xc]
003e1b68  e7 ff ff ea                                      b #0x3e1b0c
003e1b6c  03 10 a0 e1                                      mov r1, r3
003e1b70  04 00 a0 e1                                      mov r0, r4
003e1b74  c0 ff ff eb                                      bl #0x3e1a7c
003e1b78  00 70 a0 e1                                      mov r7, r0
003e1b7c  08 00 84 e5                                      str r0, [r4, #8]
003e1b80  04 00 84 e5                                      str r0, [r4, #4]
003e1b84  0c 00 84 e5                                      str r0, [r4, #0xc]
003e1b88  df ff ff ea                                      b #0x3e1b0c
003e1b8c  00 10 93 e5                                      ldr r1, [r3]
003e1b90  10 20 95 e5                                      ldr r2, [r5, #0x10]
003e1b94  02 00 51 e1                                      cmp r1, r2
003e1b98  d3 ff ff aa                                      bge #0x3e1aec
003e1b9c  e7 ff ff ea                                      b #0x3e1b40

; FUNCTION 0x003e1ba0, declared_size=392, range_size=392, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, CharProperties::BuffDecl>, std::priv::_Select1st<std::pair<int const, CharProperties::BuffDecl> >, std::priv::_MapTraitsT<std::pair<int const, CharProperties::BuffDecl> >, std::allocator<std::pair<int const, CharProperties::BuffDecl> > >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKiN14CharProperties8BuffDeclEENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE13insert_uniqueERKS7_
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, CharProperties::BuffDecl>, std::priv::_Select1st<std::pair<int const, CharProperties::BuffDecl> >, std::priv::_MapTraitsT<std::pair<int const, CharProperties::BuffDecl> >, std::allocator<std::pair<int const, CharProperties::BuffDecl> > >::insert_unique(std::pair<int const, CharProperties::BuffDecl> const&)
; decoder-mode: arm
003e1ba0  70 40 2d e9                                      push {r4, r5, r6, lr}
003e1ba4  04 c0 91 e5                                      ldr ip, [r1, #4]
003e1ba8  10 d0 4d e2                                      sub sp, sp, #0x10
003e1bac  00 40 a0 e1                                      mov r4, r0
003e1bb0  00 00 5c e3                                      cmp ip, #0
003e1bb4  02 30 a0 e1                                      mov r3, r2
003e1bb8  01 c0 a0 01                                      moveq ip, r1
003e1bbc  15 00 00 0a                                      beq #0x3e1c18
003e1bc0  00 60 92 e5                                      ldr r6, [r2]
003e1bc4  00 00 00 ea                                      b #0x3e1bcc
003e1bc8  02 c0 a0 e1                                      mov ip, r2
003e1bcc  10 00 9c e5                                      ldr r0, [ip, #0x10]
003e1bd0  01 50 a0 e3                                      mov r5, #1
003e1bd4  06 00 50 e1                                      cmp r0, r6
003e1bd8  08 20 9c c5                                      ldrgt r2, [ip, #8]
003e1bdc  0c 20 9c d5                                      ldrle r2, [ip, #0xc]
003e1be0  00 50 a0 d3                                      movle r5, #0
003e1be4  00 00 52 e3                                      cmp r2, #0
003e1be8  f6 ff ff 1a                                      bne #0x3e1bc8
003e1bec  00 00 55 e3                                      cmp r5, #0
003e1bf0  0c 50 a0 01                                      moveq r5, ip
003e1bf4  07 00 00 1a                                      bne #0x3e1c18
003e1bf8  00 00 56 e1                                      cmp r6, r0
003e1bfc  00 30 a0 d3                                      movle r3, #0
003e1c00  00 50 84 d5                                      strle r5, [r4]
003e1c04  04 30 c4 d5                                      strble r3, [r4, #4]
003e1c08  1c 00 00 ca                                      bgt #0x3e1c80
003e1c0c  04 00 a0 e1                                      mov r0, r4
003e1c10  10 d0 8d e2                                      add sp, sp, #0x10
003e1c14  70 80 bd e8                                      pop {r4, r5, r6, pc}
003e1c18  08 20 91 e5                                      ldr r2, [r1, #8]
003e1c1c  02 00 5c e1                                      cmp ip, r2
003e1c20  36 00 00 0a                                      beq #0x3e1d00
003e1c24  00 20 dc e5                                      ldrb r2, [ip]
003e1c28  00 00 52 e3                                      cmp r2, #0
003e1c2c  03 00 00 1a                                      bne #0x3e1c40
003e1c30  04 20 9c e5                                      ldr r2, [ip, #4]
003e1c34  04 20 92 e5                                      ldr r2, [r2, #4]
003e1c38  02 00 5c e1                                      cmp ip, r2
003e1c3c  2a 00 00 0a                                      beq #0x3e1cec
003e1c40  08 00 9c e5                                      ldr r0, [ip, #8]
003e1c44  00 00 50 e3                                      cmp r0, #0
003e1c48  01 00 00 1a                                      bne #0x3e1c54
003e1c4c  16 00 00 ea                                      b #0x3e1cac
003e1c50  02 00 a0 e1                                      mov r0, r2
003e1c54  0c 20 90 e5                                      ldr r2, [r0, #0xc]
003e1c58  00 00 52 e3                                      cmp r2, #0
003e1c5c  fb ff ff 1a                                      bne #0x3e1c50
003e1c60  00 60 93 e5                                      ldr r6, [r3]
003e1c64  00 50 a0 e1                                      mov r5, r0
003e1c68  10 00 90 e5                                      ldr r0, [r0, #0x10]
003e1c6c  00 00 56 e1                                      cmp r6, r0
003e1c70  00 30 a0 d3                                      movle r3, #0
003e1c74  00 50 84 d5                                      strle r5, [r4]
003e1c78  04 30 c4 d5                                      strble r3, [r4, #4]
003e1c7c  e2 ff ff da                                      ble #0x3e1c0c
003e1c80  0c 20 a0 e1                                      mov r2, ip
003e1c84  08 00 8d e2                                      add r0, sp, #8
003e1c88  00 c0 a0 e3                                      mov ip, #0
003e1c8c  04 c0 8d e5                                      str ip, [sp, #4]
003e1c90  00 c0 8d e5                                      str ip, [sp]
003e1c94  8b ff ff eb                                      bl #0x3e1ac8
003e1c98  08 30 9d e5                                      ldr r3, [sp, #8]
003e1c9c  01 20 a0 e3                                      mov r2, #1
003e1ca0  04 20 c4 e5                                      strb r2, [r4, #4]
003e1ca4  00 30 84 e5                                      str r3, [r4]
003e1ca8  d7 ff ff ea                                      b #0x3e1c0c
003e1cac  04 20 9c e5                                      ldr r2, [ip, #4]
003e1cb0  08 00 92 e5                                      ldr r0, [r2, #8]
003e1cb4  00 00 5c e1                                      cmp ip, r0
003e1cb8  02 50 a0 11                                      movne r5, r2
003e1cbc  00 60 93 15                                      ldrne r6, [r3]
003e1cc0  10 00 92 15                                      ldrne r0, [r2, #0x10]
003e1cc4  01 00 00 0a                                      beq #0x3e1cd0
003e1cc8  ca ff ff ea                                      b #0x3e1bf8
003e1ccc  05 20 a0 e1                                      mov r2, r5
003e1cd0  04 50 92 e5                                      ldr r5, [r2, #4]
003e1cd4  08 00 95 e5                                      ldr r0, [r5, #8]
003e1cd8  02 00 50 e1                                      cmp r0, r2
003e1cdc  fa ff ff 0a                                      beq #0x3e1ccc
003e1ce0  00 60 93 e5                                      ldr r6, [r3]
003e1ce4  10 00 95 e5                                      ldr r0, [r5, #0x10]
003e1ce8  c2 ff ff ea                                      b #0x3e1bf8
003e1cec  0c 20 9c e5                                      ldr r2, [ip, #0xc]
003e1cf0  00 60 93 e5                                      ldr r6, [r3]
003e1cf4  02 50 a0 e1                                      mov r5, r2
003e1cf8  10 00 92 e5                                      ldr r0, [r2, #0x10]
003e1cfc  bd ff ff ea                                      b #0x3e1bf8
003e1d00  0c 20 a0 e1                                      mov r2, ip
003e1d04  00 e0 a0 e3                                      mov lr, #0
003e1d08  0c 00 8d e2                                      add r0, sp, #0xc
003e1d0c  00 50 8d e8                                      stm sp, {ip, lr}
003e1d10  6c ff ff eb                                      bl #0x3e1ac8
003e1d14  0c 30 9d e5                                      ldr r3, [sp, #0xc]
003e1d18  01 20 a0 e3                                      mov r2, #1
003e1d1c  04 20 c4 e5                                      strb r2, [r4, #4]
003e1d20  00 30 84 e5                                      str r3, [r4]
003e1d24  b8 ff ff ea                                      b #0x3e1c0c

; FUNCTION 0x003e1d28, declared_size=884, range_size=884, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, CharProperties::BuffDecl>, std::priv::_Select1st<std::pair<int const, CharProperties::BuffDecl> >, std::priv::_MapTraitsT<std::pair<int const, CharProperties::BuffDecl> >, std::allocator<std::pair<int const, CharProperties::BuffDecl> > >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKiN14CharProperties8BuffDeclEENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE13insert_uniqueENS_17_Rb_tree_iteratorIS7_SB_EERKS7_
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, CharProperties::BuffDecl>, std::priv::_Select1st<std::pair<int const, CharProperties::BuffDecl> >, std::priv::_MapTraitsT<std::pair<int const, CharProperties::BuffDecl> >, std::allocator<std::pair<int const, CharProperties::BuffDecl> > >::insert_unique(std::priv::_Rb_tree_iterator<std::pair<int const, CharProperties::BuffDecl>, std::priv::_MapTraitsT<std::pair<int const, CharProperties::BuffDecl> > >, std::pair<int const, CharProperties::BuffDecl> const&)
; decoder-mode: arm
003e1d28  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
003e1d2c  00 40 92 e5                                      ldr r4, [r2]
003e1d30  08 20 91 e5                                      ldr r2, [r1, #8]
003e1d34  2c d0 4d e2                                      sub sp, sp, #0x2c
003e1d38  01 50 a0 e1                                      mov r5, r1
003e1d3c  02 00 54 e1                                      cmp r4, r2
003e1d40  00 70 a0 e1                                      mov r7, r0
003e1d44  03 60 a0 e1                                      mov r6, r3
003e1d48  5a 00 00 0a                                      beq #0x3e1eb8
003e1d4c  01 00 54 e1                                      cmp r4, r1
003e1d50  78 00 00 0a                                      beq #0x3e1f38
003e1d54  00 30 d4 e5                                      ldrb r3, [r4]
003e1d58  00 00 53 e3                                      cmp r3, #0
003e1d5c  3a 00 00 0a                                      beq #0x3e1e4c
003e1d60  08 c0 94 e5                                      ldr ip, [r4, #8]
003e1d64  00 00 5c e3                                      cmp ip, #0
003e1d68  01 00 00 1a                                      bne #0x3e1d74
003e1d6c  3e 00 00 ea                                      b #0x3e1e6c
003e1d70  03 c0 a0 e1                                      mov ip, r3
003e1d74  0c 30 9c e5                                      ldr r3, [ip, #0xc]
003e1d78  00 00 53 e3                                      cmp r3, #0
003e1d7c  fb ff ff 1a                                      bne #0x3e1d70
003e1d80  00 20 96 e5                                      ldr r2, [r6]
003e1d84  10 00 94 e5                                      ldr r0, [r4, #0x10]
003e1d88  00 00 52 e1                                      cmp r2, r0
003e1d8c  00 10 a0 a3                                      movge r1, #0
003e1d90  01 10 a0 b3                                      movlt r1, #1
003e1d94  00 00 51 e3                                      cmp r1, #0
003e1d98  1b 00 00 1a                                      bne #0x3e1e0c
003e1d9c  0c 80 94 e5                                      ldr r8, [r4, #0xc]
003e1da0  00 00 58 e3                                      cmp r8, #0
003e1da4  7d 00 00 0a                                      beq #0x3e1fa0
003e1da8  08 c0 a0 e1                                      mov ip, r8
003e1dac  00 00 00 ea                                      b #0x3e1db4
003e1db0  03 c0 a0 e1                                      mov ip, r3
003e1db4  08 30 9c e5                                      ldr r3, [ip, #8]
003e1db8  00 00 53 e3                                      cmp r3, #0
003e1dbc  fb ff ff 1a                                      bne #0x3e1db0
003e1dc0  00 00 51 e3                                      cmp r1, #0
003e1dc4  34 00 00 1a                                      bne #0x3e1e9c
003e1dc8  00 00 52 e1                                      cmp r2, r0
003e1dcc  63 00 00 da                                      ble #0x3e1f60
003e1dd0  0c 00 55 e1                                      cmp r5, ip
003e1dd4  02 00 00 0a                                      beq #0x3e1de4
003e1dd8  10 30 9c e5                                      ldr r3, [ip, #0x10]
003e1ddc  03 00 52 e1                                      cmp r2, r3
003e1de0  2d 00 00 aa                                      bge #0x3e1e9c
003e1de4  00 00 58 e3                                      cmp r8, #0
003e1de8  4a 00 00 1a                                      bne #0x3e1f18
003e1dec  05 10 a0 e1                                      mov r1, r5
003e1df0  04 20 a0 e1                                      mov r2, r4
003e1df4  06 30 a0 e1                                      mov r3, r6
003e1df8  07 00 a0 e1                                      mov r0, r7
003e1dfc  00 80 8d e5                                      str r8, [sp]
003e1e00  04 40 8d e5                                      str r4, [sp, #4]
003e1e04  2f ff ff eb                                      bl #0x3e1ac8
003e1e08  0c 00 00 ea                                      b #0x3e1e40
003e1e0c  10 30 9c e5                                      ldr r3, [ip, #0x10]
003e1e10  03 00 52 e1                                      cmp r2, r3
003e1e14  e0 ff ff da                                      ble #0x3e1d9c
003e1e18  0c e0 9c e5                                      ldr lr, [ip, #0xc]
003e1e1c  00 00 5e e3                                      cmp lr, #0
003e1e20  56 00 00 0a                                      beq #0x3e1f80
003e1e24  00 c0 a0 e3                                      mov ip, #0
003e1e28  05 10 a0 e1                                      mov r1, r5
003e1e2c  04 20 a0 e1                                      mov r2, r4
003e1e30  06 30 a0 e1                                      mov r3, r6
003e1e34  07 00 a0 e1                                      mov r0, r7
003e1e38  10 10 8d e8                                      stm sp, {r4, ip}
003e1e3c  21 ff ff eb                                      bl #0x3e1ac8
003e1e40  07 00 a0 e1                                      mov r0, r7
003e1e44  2c d0 8d e2                                      add sp, sp, #0x2c
003e1e48  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
003e1e4c  04 30 94 e5                                      ldr r3, [r4, #4]
003e1e50  04 30 93 e5                                      ldr r3, [r3, #4]
003e1e54  03 00 54 e1                                      cmp r4, r3
003e1e58  0c c0 94 05                                      ldreq ip, [r4, #0xc]
003e1e5c  c7 ff ff 0a                                      beq #0x3e1d80
003e1e60  08 c0 94 e5                                      ldr ip, [r4, #8]
003e1e64  00 00 5c e3                                      cmp ip, #0
003e1e68  c1 ff ff 1a                                      bne #0x3e1d74
003e1e6c  04 c0 94 e5                                      ldr ip, [r4, #4]
003e1e70  08 30 9c e5                                      ldr r3, [ip, #8]
003e1e74  03 00 54 e1                                      cmp r4, r3
003e1e78  01 00 00 0a                                      beq #0x3e1e84
003e1e7c  bf ff ff ea                                      b #0x3e1d80
003e1e80  03 c0 a0 e1                                      mov ip, r3
003e1e84  04 30 9c e5                                      ldr r3, [ip, #4]
003e1e88  08 20 93 e5                                      ldr r2, [r3, #8]
003e1e8c  0c 00 52 e1                                      cmp r2, ip
003e1e90  fa ff ff 0a                                      beq #0x3e1e80
003e1e94  03 c0 a0 e1                                      mov ip, r3
003e1e98  b8 ff ff ea                                      b #0x3e1d80
003e1e9c  05 10 a0 e1                                      mov r1, r5
003e1ea0  06 20 a0 e1                                      mov r2, r6
003e1ea4  08 00 8d e2                                      add r0, sp, #8
003e1ea8  3c ff ff eb                                      bl #0x3e1ba0
003e1eac  08 30 9d e5                                      ldr r3, [sp, #8]
003e1eb0  00 30 87 e5                                      str r3, [r7]
003e1eb4  e1 ff ff ea                                      b #0x3e1e40
003e1eb8  10 20 91 e5                                      ldr r2, [r1, #0x10]
003e1ebc  00 00 52 e3                                      cmp r2, #0
003e1ec0  52 00 00 0a                                      beq #0x3e2010
003e1ec4  00 20 93 e5                                      ldr r2, [r3]
003e1ec8  10 c0 94 e5                                      ldr ip, [r4, #0x10]
003e1ecc  0c 00 52 e1                                      cmp r2, ip
003e1ed0  54 00 00 ba                                      blt #0x3e2028
003e1ed4  21 00 00 da                                      ble #0x3e1f60
003e1ed8  0c e0 94 e5                                      ldr lr, [r4, #0xc]
003e1edc  00 00 5e e3                                      cmp lr, #0
003e1ee0  3c 00 00 0a                                      beq #0x3e1fd8
003e1ee4  0e c0 a0 e1                                      mov ip, lr
003e1ee8  00 00 00 ea                                      b #0x3e1ef0
003e1eec  03 c0 a0 e1                                      mov ip, r3
003e1ef0  08 30 9c e5                                      ldr r3, [ip, #8]
003e1ef4  00 00 53 e3                                      cmp r3, #0
003e1ef8  fb ff ff 1a                                      bne #0x3e1eec
003e1efc  0c 00 55 e1                                      cmp r5, ip
003e1f00  5c 00 00 0a                                      beq #0x3e2078
003e1f04  10 30 9c e5                                      ldr r3, [ip, #0x10]
003e1f08  03 00 52 e1                                      cmp r2, r3
003e1f0c  4a 00 00 aa                                      bge #0x3e203c
003e1f10  00 00 5e e3                                      cmp lr, #0
003e1f14  4f 00 00 0a                                      beq #0x3e2058
003e1f18  00 e0 a0 e3                                      mov lr, #0
003e1f1c  05 10 a0 e1                                      mov r1, r5
003e1f20  0c 20 a0 e1                                      mov r2, ip
003e1f24  06 30 a0 e1                                      mov r3, r6
003e1f28  07 00 a0 e1                                      mov r0, r7
003e1f2c  00 50 8d e8                                      stm sp, {ip, lr}
003e1f30  e4 fe ff eb                                      bl #0x3e1ac8
003e1f34  c1 ff ff ea                                      b #0x3e1e40
003e1f38  0c 20 94 e5                                      ldr r2, [r4, #0xc]
003e1f3c  00 c0 93 e5                                      ldr ip, [r3]
003e1f40  10 e0 92 e5                                      ldr lr, [r2, #0x10]
003e1f44  0c 00 5e e1                                      cmp lr, ip
003e1f48  06 00 00 aa                                      bge #0x3e1f68
003e1f4c  00 c0 a0 e3                                      mov ip, #0
003e1f50  00 c0 8d e5                                      str ip, [sp]
003e1f54  04 40 8d e5                                      str r4, [sp, #4]
003e1f58  da fe ff eb                                      bl #0x3e1ac8
003e1f5c  b7 ff ff ea                                      b #0x3e1e40
003e1f60  00 40 87 e5                                      str r4, [r7]
003e1f64  b5 ff ff ea                                      b #0x3e1e40
003e1f68  03 20 a0 e1                                      mov r2, r3
003e1f6c  10 00 8d e2                                      add r0, sp, #0x10
003e1f70  0a ff ff eb                                      bl #0x3e1ba0
003e1f74  10 30 9d e5                                      ldr r3, [sp, #0x10]
003e1f78  00 30 87 e5                                      str r3, [r7]
003e1f7c  af ff ff ea                                      b #0x3e1e40
003e1f80  05 10 a0 e1                                      mov r1, r5
003e1f84  0c 20 a0 e1                                      mov r2, ip
003e1f88  06 30 a0 e1                                      mov r3, r6
003e1f8c  07 00 a0 e1                                      mov r0, r7
003e1f90  00 e0 8d e5                                      str lr, [sp]
003e1f94  04 c0 8d e5                                      str ip, [sp, #4]
003e1f98  ca fe ff eb                                      bl #0x3e1ac8
003e1f9c  a7 ff ff ea                                      b #0x3e1e40
003e1fa0  04 30 94 e5                                      ldr r3, [r4, #4]
003e1fa4  0c c0 93 e5                                      ldr ip, [r3, #0xc]
003e1fa8  0c 00 54 e1                                      cmp r4, ip
003e1fac  04 c0 a0 11                                      movne ip, r4
003e1fb0  04 00 00 1a                                      bne #0x3e1fc8
003e1fb4  03 c0 a0 e1                                      mov ip, r3
003e1fb8  04 30 93 e5                                      ldr r3, [r3, #4]
003e1fbc  0c a0 93 e5                                      ldr sl, [r3, #0xc]
003e1fc0  0a 00 5c e1                                      cmp ip, sl
003e1fc4  fa ff ff 0a                                      beq #0x3e1fb4
003e1fc8  0c a0 9c e5                                      ldr sl, [ip, #0xc]
003e1fcc  0a 00 53 e1                                      cmp r3, sl
003e1fd0  03 c0 a0 11                                      movne ip, r3
003e1fd4  79 ff ff ea                                      b #0x3e1dc0
003e1fd8  04 30 94 e5                                      ldr r3, [r4, #4]
003e1fdc  0c 10 93 e5                                      ldr r1, [r3, #0xc]
003e1fe0  01 00 54 e1                                      cmp r4, r1
003e1fe4  04 c0 a0 11                                      movne ip, r4
003e1fe8  04 00 00 1a                                      bne #0x3e2000
003e1fec  03 c0 a0 e1                                      mov ip, r3
003e1ff0  04 30 93 e5                                      ldr r3, [r3, #4]
003e1ff4  0c 10 93 e5                                      ldr r1, [r3, #0xc]
003e1ff8  0c 00 51 e1                                      cmp r1, ip
003e1ffc  fa ff ff 0a                                      beq #0x3e1fec
003e2000  0c 10 9c e5                                      ldr r1, [ip, #0xc]
003e2004  01 00 53 e1                                      cmp r3, r1
003e2008  03 c0 a0 11                                      movne ip, r3
003e200c  ba ff ff ea                                      b #0x3e1efc
003e2010  03 20 a0 e1                                      mov r2, r3
003e2014  20 00 8d e2                                      add r0, sp, #0x20
003e2018  e0 fe ff eb                                      bl #0x3e1ba0
003e201c  20 30 9d e5                                      ldr r3, [sp, #0x20]
003e2020  00 30 87 e5                                      str r3, [r7]
003e2024  85 ff ff ea                                      b #0x3e1e40
003e2028  00 c0 a0 e3                                      mov ip, #0
003e202c  04 20 a0 e1                                      mov r2, r4
003e2030  10 10 8d e8                                      stm sp, {r4, ip}
003e2034  a3 fe ff eb                                      bl #0x3e1ac8
003e2038  80 ff ff ea                                      b #0x3e1e40
003e203c  05 10 a0 e1                                      mov r1, r5
003e2040  06 20 a0 e1                                      mov r2, r6
003e2044  18 00 8d e2                                      add r0, sp, #0x18
003e2048  d4 fe ff eb                                      bl #0x3e1ba0
003e204c  18 30 9d e5                                      ldr r3, [sp, #0x18]
003e2050  00 30 87 e5                                      str r3, [r7]
003e2054  79 ff ff ea                                      b #0x3e1e40
003e2058  05 10 a0 e1                                      mov r1, r5
003e205c  04 20 a0 e1                                      mov r2, r4
003e2060  06 30 a0 e1                                      mov r3, r6
003e2064  07 00 a0 e1                                      mov r0, r7
003e2068  00 e0 8d e5                                      str lr, [sp]
003e206c  04 40 8d e5                                      str r4, [sp, #4]
003e2070  94 fe ff eb                                      bl #0x3e1ac8
003e2074  71 ff ff ea                                      b #0x3e1e40
003e2078  00 c0 a0 e3                                      mov ip, #0
003e207c  05 10 a0 e1                                      mov r1, r5
003e2080  04 20 a0 e1                                      mov r2, r4
003e2084  06 30 a0 e1                                      mov r3, r6
003e2088  07 00 a0 e1                                      mov r0, r7
003e208c  00 c0 8d e5                                      str ip, [sp]
003e2090  04 40 8d e5                                      str r4, [sp, #4]
003e2094  8b fe ff eb                                      bl #0x3e1ac8
003e2098  68 ff ff ea                                      b #0x3e1e40

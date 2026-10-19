; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005a39e8, declared_size=56, range_size=56, mode=arm
; class-group: std::priv::_Rb_tree<unsigned short, std::less<unsigned short>, std::pair<unsigned short const, unsigned short>, std::priv::_Select1st<std::pair<unsigned short const, unsigned short> >, std::priv::_MapTraitsT<std::pair<unsigned short const, unsigned short> >, std::allocator<std::pair<unsigned short const, unsigned short> > >
; alias: _ZNSt4priv8_Rb_treeItSt4lessItESt4pairIKttENS_10_Select1stIS5_EENS_11_MapTraitsTIS5_EESaIS5_EE8_M_eraseEPNS_18_Rb_tree_node_baseE
; demangled: std::priv::_Rb_tree<unsigned short, std::less<unsigned short>, std::pair<unsigned short const, unsigned short>, std::priv::_Select1st<std::pair<unsigned short const, unsigned short> >, std::priv::_MapTraitsT<std::pair<unsigned short const, unsigned short> >, std::allocator<std::pair<unsigned short const, unsigned short> > >::_M_erase(std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
005a39e8  70 40 2d e9                                      push {r4, r5, r6, lr}
005a39ec  00 40 51 e2                                      subs r4, r1, #0
005a39f0  00 60 a0 e1                                      mov r6, r0
005a39f4  08 00 00 0a                                      beq #0x5a3a1c
005a39f8  0c 10 94 e5                                      ldr r1, [r4, #0xc]
005a39fc  06 00 a0 e1                                      mov r0, r6
005a3a00  f8 ff ff eb                                      bl #0x5a39e8
005a3a04  08 50 94 e5                                      ldr r5, [r4, #8]
005a3a08  04 00 a0 e1                                      mov r0, r4
005a3a0c  14 10 a0 e3                                      mov r1, #0x14
005a3a10  3a 95 05 eb                                      bl #0x708f00
005a3a14  00 40 55 e2                                      subs r4, r5, #0
005a3a18  f6 ff ff 1a                                      bne #0x5a39f8
005a3a1c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x005a69c0, declared_size=292, range_size=292, mode=arm
; class-group: std::priv::_Rb_tree<unsigned short, std::less<unsigned short>, std::pair<unsigned short const, unsigned short>, std::priv::_Select1st<std::pair<unsigned short const, unsigned short> >, std::priv::_MapTraitsT<std::pair<unsigned short const, unsigned short> >, std::allocator<std::pair<unsigned short const, unsigned short> > >
; alias: _ZNSt4priv8_Rb_treeItSt4lessItESt4pairIKttENS_10_Select1stIS5_EENS_11_MapTraitsTIS5_EESaIS5_EE9_M_insertEPNS_18_Rb_tree_node_baseERKS5_SD_SD_
; demangled: std::priv::_Rb_tree<unsigned short, std::less<unsigned short>, std::pair<unsigned short const, unsigned short>, std::priv::_Select1st<std::pair<unsigned short const, unsigned short> >, std::priv::_MapTraitsT<std::pair<unsigned short const, unsigned short> >, std::allocator<std::pair<unsigned short const, unsigned short> > >::_M_insert(std::priv::_Rb_tree_node_base*, std::pair<unsigned short const, unsigned short> const&, std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
005a69c0  02 00 51 e1                                      cmp r1, r2
005a69c4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005a69c8  01 40 a0 e1                                      mov r4, r1
005a69cc  02 70 a0 e1                                      mov r7, r2
005a69d0  00 50 a0 e1                                      mov r5, r0
005a69d4  03 80 a0 e1                                      mov r8, r3
005a69d8  2e 00 00 0a                                      beq #0x5a6a98
005a69dc  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
005a69e0  00 00 53 e3                                      cmp r3, #0
005a69e4  17 00 00 0a                                      beq #0x5a6a48
005a69e8  04 00 a0 e1                                      mov r0, r4
005a69ec  eb ff ff eb                                      bl #0x5a69a0
005a69f0  b0 30 d8 e1                                      ldrh r3, [r8]
005a69f4  00 60 a0 e1                                      mov r6, r0
005a69f8  b0 31 c0 e1                                      strh r3, [r0, #0x10]
005a69fc  b2 80 d8 e1                                      ldrh r8, [r8, #2]
005a6a00  00 30 a0 e3                                      mov r3, #0
005a6a04  0c 30 80 e5                                      str r3, [r0, #0xc]
005a6a08  b2 81 c0 e1                                      strh r8, [r0, #0x12]
005a6a0c  08 30 80 e5                                      str r3, [r0, #8]
005a6a10  0c 00 87 e5                                      str r0, [r7, #0xc]
005a6a14  0c 30 94 e5                                      ldr r3, [r4, #0xc]
005a6a18  03 00 57 e1                                      cmp r7, r3
005a6a1c  1b 00 00 0a                                      beq #0x5a6a90
005a6a20  06 00 a0 e1                                      mov r0, r6
005a6a24  04 70 86 e5                                      str r7, [r6, #4]
005a6a28  04 10 84 e2                                      add r1, r4, #4
005a6a2c  4b b3 f5 eb                                      bl #0x313760
005a6a30  10 30 94 e5                                      ldr r3, [r4, #0x10]
005a6a34  05 00 a0 e1                                      mov r0, r5
005a6a38  01 30 83 e2                                      add r3, r3, #1
005a6a3c  10 30 84 e5                                      str r3, [r4, #0x10]
005a6a40  00 60 85 e5                                      str r6, [r5]
005a6a44  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005a6a48  18 30 9d e5                                      ldr r3, [sp, #0x18]
005a6a4c  00 00 53 e3                                      cmp r3, #0
005a6a50  1e 00 00 0a                                      beq #0x5a6ad0
005a6a54  04 00 a0 e1                                      mov r0, r4
005a6a58  d0 ff ff eb                                      bl #0x5a69a0
005a6a5c  b0 30 d8 e1                                      ldrh r3, [r8]
005a6a60  00 60 a0 e1                                      mov r6, r0
005a6a64  b0 31 c0 e1                                      strh r3, [r0, #0x10]
005a6a68  b2 80 d8 e1                                      ldrh r8, [r8, #2]
005a6a6c  00 30 a0 e3                                      mov r3, #0
005a6a70  0c 30 80 e5                                      str r3, [r0, #0xc]
005a6a74  b2 81 c0 e1                                      strh r8, [r0, #0x12]
005a6a78  08 30 80 e5                                      str r3, [r0, #8]
005a6a7c  08 00 87 e5                                      str r0, [r7, #8]
005a6a80  08 30 94 e5                                      ldr r3, [r4, #8]
005a6a84  03 00 57 e1                                      cmp r7, r3
005a6a88  08 00 84 05                                      streq r0, [r4, #8]
005a6a8c  e3 ff ff ea                                      b #0x5a6a20
005a6a90  0c 60 84 e5                                      str r6, [r4, #0xc]
005a6a94  e1 ff ff ea                                      b #0x5a6a20
005a6a98  01 00 a0 e1                                      mov r0, r1
005a6a9c  bf ff ff eb                                      bl #0x5a69a0
005a6aa0  b0 30 d8 e1                                      ldrh r3, [r8]
005a6aa4  00 60 a0 e1                                      mov r6, r0
005a6aa8  b0 31 c0 e1                                      strh r3, [r0, #0x10]
005a6aac  b2 80 d8 e1                                      ldrh r8, [r8, #2]
005a6ab0  00 30 a0 e3                                      mov r3, #0
005a6ab4  0c 30 80 e5                                      str r3, [r0, #0xc]
005a6ab8  b2 81 c0 e1                                      strh r8, [r0, #0x12]
005a6abc  08 30 80 e5                                      str r3, [r0, #8]
005a6ac0  08 00 84 e5                                      str r0, [r4, #8]
005a6ac4  04 00 84 e5                                      str r0, [r4, #4]
005a6ac8  0c 00 84 e5                                      str r0, [r4, #0xc]
005a6acc  d3 ff ff ea                                      b #0x5a6a20
005a6ad0  b0 20 d8 e1                                      ldrh r2, [r8]
005a6ad4  b0 31 d7 e1                                      ldrh r3, [r7, #0x10]
005a6ad8  03 00 52 e1                                      cmp r2, r3
005a6adc  c1 ff ff 2a                                      bhs #0x5a69e8
005a6ae0  db ff ff ea                                      b #0x5a6a54

; FUNCTION 0x005a6ae4, declared_size=392, range_size=392, mode=arm
; class-group: std::priv::_Rb_tree<unsigned short, std::less<unsigned short>, std::pair<unsigned short const, unsigned short>, std::priv::_Select1st<std::pair<unsigned short const, unsigned short> >, std::priv::_MapTraitsT<std::pair<unsigned short const, unsigned short> >, std::allocator<std::pair<unsigned short const, unsigned short> > >
; alias: _ZNSt4priv8_Rb_treeItSt4lessItESt4pairIKttENS_10_Select1stIS5_EENS_11_MapTraitsTIS5_EESaIS5_EE13insert_uniqueERKS5_
; demangled: std::priv::_Rb_tree<unsigned short, std::less<unsigned short>, std::pair<unsigned short const, unsigned short>, std::priv::_Select1st<std::pair<unsigned short const, unsigned short> >, std::priv::_MapTraitsT<std::pair<unsigned short const, unsigned short> >, std::allocator<std::pair<unsigned short const, unsigned short> > >::insert_unique(std::pair<unsigned short const, unsigned short> const&)
; decoder-mode: arm
005a6ae4  70 40 2d e9                                      push {r4, r5, r6, lr}
005a6ae8  04 c0 91 e5                                      ldr ip, [r1, #4]
005a6aec  10 d0 4d e2                                      sub sp, sp, #0x10
005a6af0  00 40 a0 e1                                      mov r4, r0
005a6af4  00 00 5c e3                                      cmp ip, #0
005a6af8  02 30 a0 e1                                      mov r3, r2
005a6afc  01 c0 a0 01                                      moveq ip, r1
005a6b00  15 00 00 0a                                      beq #0x5a6b5c
005a6b04  b0 60 d2 e1                                      ldrh r6, [r2]
005a6b08  00 00 00 ea                                      b #0x5a6b10
005a6b0c  02 c0 a0 e1                                      mov ip, r2
005a6b10  b0 01 dc e1                                      ldrh r0, [ip, #0x10]
005a6b14  01 50 a0 e3                                      mov r5, #1
005a6b18  06 00 50 e1                                      cmp r0, r6
005a6b1c  08 20 9c 85                                      ldrhi r2, [ip, #8]
005a6b20  0c 20 9c 95                                      ldrls r2, [ip, #0xc]
005a6b24  00 50 a0 93                                      movls r5, #0
005a6b28  00 00 52 e3                                      cmp r2, #0
005a6b2c  f6 ff ff 1a                                      bne #0x5a6b0c
005a6b30  00 00 55 e3                                      cmp r5, #0
005a6b34  0c 50 a0 01                                      moveq r5, ip
005a6b38  07 00 00 1a                                      bne #0x5a6b5c
005a6b3c  00 00 56 e1                                      cmp r6, r0
005a6b40  00 30 a0 93                                      movls r3, #0
005a6b44  00 50 84 95                                      strls r5, [r4]
005a6b48  04 30 c4 95                                      strbls r3, [r4, #4]
005a6b4c  1c 00 00 8a                                      bhi #0x5a6bc4
005a6b50  04 00 a0 e1                                      mov r0, r4
005a6b54  10 d0 8d e2                                      add sp, sp, #0x10
005a6b58  70 80 bd e8                                      pop {r4, r5, r6, pc}
005a6b5c  08 20 91 e5                                      ldr r2, [r1, #8]
005a6b60  02 00 5c e1                                      cmp ip, r2
005a6b64  36 00 00 0a                                      beq #0x5a6c44
005a6b68  00 20 dc e5                                      ldrb r2, [ip]
005a6b6c  00 00 52 e3                                      cmp r2, #0
005a6b70  03 00 00 1a                                      bne #0x5a6b84
005a6b74  04 20 9c e5                                      ldr r2, [ip, #4]
005a6b78  04 20 92 e5                                      ldr r2, [r2, #4]
005a6b7c  02 00 5c e1                                      cmp ip, r2
005a6b80  2a 00 00 0a                                      beq #0x5a6c30
005a6b84  08 00 9c e5                                      ldr r0, [ip, #8]
005a6b88  00 00 50 e3                                      cmp r0, #0
005a6b8c  01 00 00 1a                                      bne #0x5a6b98
005a6b90  16 00 00 ea                                      b #0x5a6bf0
005a6b94  02 00 a0 e1                                      mov r0, r2
005a6b98  0c 20 90 e5                                      ldr r2, [r0, #0xc]
005a6b9c  00 00 52 e3                                      cmp r2, #0
005a6ba0  fb ff ff 1a                                      bne #0x5a6b94
005a6ba4  b0 60 d3 e1                                      ldrh r6, [r3]
005a6ba8  00 50 a0 e1                                      mov r5, r0
005a6bac  b0 01 d0 e1                                      ldrh r0, [r0, #0x10]
005a6bb0  00 00 56 e1                                      cmp r6, r0
005a6bb4  00 30 a0 93                                      movls r3, #0
005a6bb8  00 50 84 95                                      strls r5, [r4]
005a6bbc  04 30 c4 95                                      strbls r3, [r4, #4]
005a6bc0  e2 ff ff 9a                                      bls #0x5a6b50
005a6bc4  0c 20 a0 e1                                      mov r2, ip
005a6bc8  08 00 8d e2                                      add r0, sp, #8
005a6bcc  00 c0 a0 e3                                      mov ip, #0
005a6bd0  04 c0 8d e5                                      str ip, [sp, #4]
005a6bd4  00 c0 8d e5                                      str ip, [sp]
005a6bd8  78 ff ff eb                                      bl #0x5a69c0
005a6bdc  08 30 9d e5                                      ldr r3, [sp, #8]
005a6be0  01 20 a0 e3                                      mov r2, #1
005a6be4  04 20 c4 e5                                      strb r2, [r4, #4]
005a6be8  00 30 84 e5                                      str r3, [r4]
005a6bec  d7 ff ff ea                                      b #0x5a6b50
005a6bf0  04 20 9c e5                                      ldr r2, [ip, #4]
005a6bf4  08 00 92 e5                                      ldr r0, [r2, #8]
005a6bf8  00 00 5c e1                                      cmp ip, r0
005a6bfc  02 50 a0 11                                      movne r5, r2
005a6c00  b0 60 d3 11                                      ldrhne r6, [r3]
005a6c04  b0 01 d2 11                                      ldrhne r0, [r2, #0x10]
005a6c08  01 00 00 0a                                      beq #0x5a6c14
005a6c0c  ca ff ff ea                                      b #0x5a6b3c
005a6c10  05 20 a0 e1                                      mov r2, r5
005a6c14  04 50 92 e5                                      ldr r5, [r2, #4]
005a6c18  08 00 95 e5                                      ldr r0, [r5, #8]
005a6c1c  02 00 50 e1                                      cmp r0, r2
005a6c20  fa ff ff 0a                                      beq #0x5a6c10
005a6c24  b0 60 d3 e1                                      ldrh r6, [r3]
005a6c28  b0 01 d5 e1                                      ldrh r0, [r5, #0x10]
005a6c2c  c2 ff ff ea                                      b #0x5a6b3c
005a6c30  0c 20 9c e5                                      ldr r2, [ip, #0xc]
005a6c34  b0 60 d3 e1                                      ldrh r6, [r3]
005a6c38  02 50 a0 e1                                      mov r5, r2
005a6c3c  b0 01 d2 e1                                      ldrh r0, [r2, #0x10]
005a6c40  bd ff ff ea                                      b #0x5a6b3c
005a6c44  0c 20 a0 e1                                      mov r2, ip
005a6c48  00 e0 a0 e3                                      mov lr, #0
005a6c4c  0c 00 8d e2                                      add r0, sp, #0xc
005a6c50  00 50 8d e8                                      stm sp, {ip, lr}
005a6c54  59 ff ff eb                                      bl #0x5a69c0
005a6c58  0c 30 9d e5                                      ldr r3, [sp, #0xc]
005a6c5c  01 20 a0 e3                                      mov r2, #1
005a6c60  04 20 c4 e5                                      strb r2, [r4, #4]
005a6c64  00 30 84 e5                                      str r3, [r4]
005a6c68  b8 ff ff ea                                      b #0x5a6b50

; FUNCTION 0x005a6c6c, declared_size=884, range_size=884, mode=arm
; class-group: std::priv::_Rb_tree<unsigned short, std::less<unsigned short>, std::pair<unsigned short const, unsigned short>, std::priv::_Select1st<std::pair<unsigned short const, unsigned short> >, std::priv::_MapTraitsT<std::pair<unsigned short const, unsigned short> >, std::allocator<std::pair<unsigned short const, unsigned short> > >
; alias: _ZNSt4priv8_Rb_treeItSt4lessItESt4pairIKttENS_10_Select1stIS5_EENS_11_MapTraitsTIS5_EESaIS5_EE13insert_uniqueENS_17_Rb_tree_iteratorIS5_S9_EERKS5_
; demangled: std::priv::_Rb_tree<unsigned short, std::less<unsigned short>, std::pair<unsigned short const, unsigned short>, std::priv::_Select1st<std::pair<unsigned short const, unsigned short> >, std::priv::_MapTraitsT<std::pair<unsigned short const, unsigned short> >, std::allocator<std::pair<unsigned short const, unsigned short> > >::insert_unique(std::priv::_Rb_tree_iterator<std::pair<unsigned short const, unsigned short>, std::priv::_MapTraitsT<std::pair<unsigned short const, unsigned short> > >, std::pair<unsigned short const, unsigned short> const&)
; decoder-mode: arm
005a6c6c  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
005a6c70  00 40 92 e5                                      ldr r4, [r2]
005a6c74  08 20 91 e5                                      ldr r2, [r1, #8]
005a6c78  2c d0 4d e2                                      sub sp, sp, #0x2c
005a6c7c  01 50 a0 e1                                      mov r5, r1
005a6c80  02 00 54 e1                                      cmp r4, r2
005a6c84  00 70 a0 e1                                      mov r7, r0
005a6c88  03 60 a0 e1                                      mov r6, r3
005a6c8c  5a 00 00 0a                                      beq #0x5a6dfc
005a6c90  01 00 54 e1                                      cmp r4, r1
005a6c94  78 00 00 0a                                      beq #0x5a6e7c
005a6c98  00 30 d4 e5                                      ldrb r3, [r4]
005a6c9c  00 00 53 e3                                      cmp r3, #0
005a6ca0  3a 00 00 0a                                      beq #0x5a6d90
005a6ca4  08 c0 94 e5                                      ldr ip, [r4, #8]
005a6ca8  00 00 5c e3                                      cmp ip, #0
005a6cac  01 00 00 1a                                      bne #0x5a6cb8
005a6cb0  3e 00 00 ea                                      b #0x5a6db0
005a6cb4  03 c0 a0 e1                                      mov ip, r3
005a6cb8  0c 30 9c e5                                      ldr r3, [ip, #0xc]
005a6cbc  00 00 53 e3                                      cmp r3, #0
005a6cc0  fb ff ff 1a                                      bne #0x5a6cb4
005a6cc4  b0 20 d6 e1                                      ldrh r2, [r6]
005a6cc8  b0 01 d4 e1                                      ldrh r0, [r4, #0x10]
005a6ccc  00 00 52 e1                                      cmp r2, r0
005a6cd0  00 10 a0 23                                      movhs r1, #0
005a6cd4  01 10 a0 33                                      movlo r1, #1
005a6cd8  00 00 51 e3                                      cmp r1, #0
005a6cdc  1b 00 00 1a                                      bne #0x5a6d50
005a6ce0  0c 80 94 e5                                      ldr r8, [r4, #0xc]
005a6ce4  00 00 58 e3                                      cmp r8, #0
005a6ce8  7d 00 00 0a                                      beq #0x5a6ee4
005a6cec  08 c0 a0 e1                                      mov ip, r8
005a6cf0  00 00 00 ea                                      b #0x5a6cf8
005a6cf4  03 c0 a0 e1                                      mov ip, r3
005a6cf8  08 30 9c e5                                      ldr r3, [ip, #8]
005a6cfc  00 00 53 e3                                      cmp r3, #0
005a6d00  fb ff ff 1a                                      bne #0x5a6cf4
005a6d04  00 00 51 e3                                      cmp r1, #0
005a6d08  34 00 00 1a                                      bne #0x5a6de0
005a6d0c  00 00 52 e1                                      cmp r2, r0
005a6d10  63 00 00 9a                                      bls #0x5a6ea4
005a6d14  0c 00 55 e1                                      cmp r5, ip
005a6d18  02 00 00 0a                                      beq #0x5a6d28
005a6d1c  b0 31 dc e1                                      ldrh r3, [ip, #0x10]
005a6d20  02 00 53 e1                                      cmp r3, r2
005a6d24  2d 00 00 9a                                      bls #0x5a6de0
005a6d28  00 00 58 e3                                      cmp r8, #0
005a6d2c  4a 00 00 1a                                      bne #0x5a6e5c
005a6d30  05 10 a0 e1                                      mov r1, r5
005a6d34  04 20 a0 e1                                      mov r2, r4
005a6d38  06 30 a0 e1                                      mov r3, r6
005a6d3c  07 00 a0 e1                                      mov r0, r7
005a6d40  00 80 8d e5                                      str r8, [sp]
005a6d44  04 40 8d e5                                      str r4, [sp, #4]
005a6d48  1c ff ff eb                                      bl #0x5a69c0
005a6d4c  0c 00 00 ea                                      b #0x5a6d84
005a6d50  b0 31 dc e1                                      ldrh r3, [ip, #0x10]
005a6d54  02 00 53 e1                                      cmp r3, r2
005a6d58  e0 ff ff 2a                                      bhs #0x5a6ce0
005a6d5c  0c e0 9c e5                                      ldr lr, [ip, #0xc]
005a6d60  00 00 5e e3                                      cmp lr, #0
005a6d64  56 00 00 0a                                      beq #0x5a6ec4
005a6d68  00 c0 a0 e3                                      mov ip, #0
005a6d6c  05 10 a0 e1                                      mov r1, r5
005a6d70  04 20 a0 e1                                      mov r2, r4
005a6d74  06 30 a0 e1                                      mov r3, r6
005a6d78  07 00 a0 e1                                      mov r0, r7
005a6d7c  10 10 8d e8                                      stm sp, {r4, ip}
005a6d80  0e ff ff eb                                      bl #0x5a69c0
005a6d84  07 00 a0 e1                                      mov r0, r7
005a6d88  2c d0 8d e2                                      add sp, sp, #0x2c
005a6d8c  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
005a6d90  04 30 94 e5                                      ldr r3, [r4, #4]
005a6d94  04 30 93 e5                                      ldr r3, [r3, #4]
005a6d98  03 00 54 e1                                      cmp r4, r3
005a6d9c  0c c0 94 05                                      ldreq ip, [r4, #0xc]
005a6da0  c7 ff ff 0a                                      beq #0x5a6cc4
005a6da4  08 c0 94 e5                                      ldr ip, [r4, #8]
005a6da8  00 00 5c e3                                      cmp ip, #0
005a6dac  c1 ff ff 1a                                      bne #0x5a6cb8
005a6db0  04 c0 94 e5                                      ldr ip, [r4, #4]
005a6db4  08 30 9c e5                                      ldr r3, [ip, #8]
005a6db8  03 00 54 e1                                      cmp r4, r3
005a6dbc  01 00 00 0a                                      beq #0x5a6dc8
005a6dc0  bf ff ff ea                                      b #0x5a6cc4
005a6dc4  03 c0 a0 e1                                      mov ip, r3
005a6dc8  04 30 9c e5                                      ldr r3, [ip, #4]
005a6dcc  08 20 93 e5                                      ldr r2, [r3, #8]
005a6dd0  0c 00 52 e1                                      cmp r2, ip
005a6dd4  fa ff ff 0a                                      beq #0x5a6dc4
005a6dd8  03 c0 a0 e1                                      mov ip, r3
005a6ddc  b8 ff ff ea                                      b #0x5a6cc4
005a6de0  05 10 a0 e1                                      mov r1, r5
005a6de4  06 20 a0 e1                                      mov r2, r6
005a6de8  08 00 8d e2                                      add r0, sp, #8
005a6dec  3c ff ff eb                                      bl #0x5a6ae4
005a6df0  08 30 9d e5                                      ldr r3, [sp, #8]
005a6df4  00 30 87 e5                                      str r3, [r7]
005a6df8  e1 ff ff ea                                      b #0x5a6d84
005a6dfc  10 20 91 e5                                      ldr r2, [r1, #0x10]
005a6e00  00 00 52 e3                                      cmp r2, #0
005a6e04  52 00 00 0a                                      beq #0x5a6f54
005a6e08  b0 20 d3 e1                                      ldrh r2, [r3]
005a6e0c  b0 c1 d4 e1                                      ldrh ip, [r4, #0x10]
005a6e10  0c 00 52 e1                                      cmp r2, ip
005a6e14  54 00 00 3a                                      blo #0x5a6f6c
005a6e18  21 00 00 9a                                      bls #0x5a6ea4
005a6e1c  0c e0 94 e5                                      ldr lr, [r4, #0xc]
005a6e20  00 00 5e e3                                      cmp lr, #0
005a6e24  3c 00 00 0a                                      beq #0x5a6f1c
005a6e28  0e c0 a0 e1                                      mov ip, lr
005a6e2c  00 00 00 ea                                      b #0x5a6e34
005a6e30  03 c0 a0 e1                                      mov ip, r3
005a6e34  08 30 9c e5                                      ldr r3, [ip, #8]
005a6e38  00 00 53 e3                                      cmp r3, #0
005a6e3c  fb ff ff 1a                                      bne #0x5a6e30
005a6e40  0c 00 55 e1                                      cmp r5, ip
005a6e44  5c 00 00 0a                                      beq #0x5a6fbc
005a6e48  b0 31 dc e1                                      ldrh r3, [ip, #0x10]
005a6e4c  03 00 52 e1                                      cmp r2, r3
005a6e50  4a 00 00 2a                                      bhs #0x5a6f80
005a6e54  00 00 5e e3                                      cmp lr, #0
005a6e58  4f 00 00 0a                                      beq #0x5a6f9c
005a6e5c  00 e0 a0 e3                                      mov lr, #0
005a6e60  05 10 a0 e1                                      mov r1, r5
005a6e64  0c 20 a0 e1                                      mov r2, ip
005a6e68  06 30 a0 e1                                      mov r3, r6
005a6e6c  07 00 a0 e1                                      mov r0, r7
005a6e70  00 50 8d e8                                      stm sp, {ip, lr}
005a6e74  d1 fe ff eb                                      bl #0x5a69c0
005a6e78  c1 ff ff ea                                      b #0x5a6d84
005a6e7c  0c 20 94 e5                                      ldr r2, [r4, #0xc]
005a6e80  b0 c0 d3 e1                                      ldrh ip, [r3]
005a6e84  b0 e1 d2 e1                                      ldrh lr, [r2, #0x10]
005a6e88  0c 00 5e e1                                      cmp lr, ip
005a6e8c  06 00 00 2a                                      bhs #0x5a6eac
005a6e90  00 c0 a0 e3                                      mov ip, #0
005a6e94  00 c0 8d e5                                      str ip, [sp]
005a6e98  04 40 8d e5                                      str r4, [sp, #4]
005a6e9c  c7 fe ff eb                                      bl #0x5a69c0
005a6ea0  b7 ff ff ea                                      b #0x5a6d84
005a6ea4  00 40 87 e5                                      str r4, [r7]
005a6ea8  b5 ff ff ea                                      b #0x5a6d84
005a6eac  03 20 a0 e1                                      mov r2, r3
005a6eb0  10 00 8d e2                                      add r0, sp, #0x10
005a6eb4  0a ff ff eb                                      bl #0x5a6ae4
005a6eb8  10 30 9d e5                                      ldr r3, [sp, #0x10]
005a6ebc  00 30 87 e5                                      str r3, [r7]
005a6ec0  af ff ff ea                                      b #0x5a6d84
005a6ec4  05 10 a0 e1                                      mov r1, r5
005a6ec8  0c 20 a0 e1                                      mov r2, ip
005a6ecc  06 30 a0 e1                                      mov r3, r6
005a6ed0  07 00 a0 e1                                      mov r0, r7
005a6ed4  00 e0 8d e5                                      str lr, [sp]
005a6ed8  04 c0 8d e5                                      str ip, [sp, #4]
005a6edc  b7 fe ff eb                                      bl #0x5a69c0
005a6ee0  a7 ff ff ea                                      b #0x5a6d84
005a6ee4  04 30 94 e5                                      ldr r3, [r4, #4]
005a6ee8  0c c0 93 e5                                      ldr ip, [r3, #0xc]
005a6eec  0c 00 54 e1                                      cmp r4, ip
005a6ef0  04 c0 a0 11                                      movne ip, r4
005a6ef4  04 00 00 1a                                      bne #0x5a6f0c
005a6ef8  03 c0 a0 e1                                      mov ip, r3
005a6efc  04 30 93 e5                                      ldr r3, [r3, #4]
005a6f00  0c a0 93 e5                                      ldr sl, [r3, #0xc]
005a6f04  0a 00 5c e1                                      cmp ip, sl
005a6f08  fa ff ff 0a                                      beq #0x5a6ef8
005a6f0c  0c a0 9c e5                                      ldr sl, [ip, #0xc]
005a6f10  0a 00 53 e1                                      cmp r3, sl
005a6f14  03 c0 a0 11                                      movne ip, r3
005a6f18  79 ff ff ea                                      b #0x5a6d04
005a6f1c  04 30 94 e5                                      ldr r3, [r4, #4]
005a6f20  0c 10 93 e5                                      ldr r1, [r3, #0xc]
005a6f24  01 00 54 e1                                      cmp r4, r1
005a6f28  04 c0 a0 11                                      movne ip, r4
005a6f2c  04 00 00 1a                                      bne #0x5a6f44
005a6f30  03 c0 a0 e1                                      mov ip, r3
005a6f34  04 30 93 e5                                      ldr r3, [r3, #4]
005a6f38  0c 10 93 e5                                      ldr r1, [r3, #0xc]
005a6f3c  0c 00 51 e1                                      cmp r1, ip
005a6f40  fa ff ff 0a                                      beq #0x5a6f30
005a6f44  0c 10 9c e5                                      ldr r1, [ip, #0xc]
005a6f48  01 00 53 e1                                      cmp r3, r1
005a6f4c  03 c0 a0 11                                      movne ip, r3
005a6f50  ba ff ff ea                                      b #0x5a6e40
005a6f54  03 20 a0 e1                                      mov r2, r3
005a6f58  20 00 8d e2                                      add r0, sp, #0x20
005a6f5c  e0 fe ff eb                                      bl #0x5a6ae4
005a6f60  20 30 9d e5                                      ldr r3, [sp, #0x20]
005a6f64  00 30 87 e5                                      str r3, [r7]
005a6f68  85 ff ff ea                                      b #0x5a6d84
005a6f6c  00 c0 a0 e3                                      mov ip, #0
005a6f70  04 20 a0 e1                                      mov r2, r4
005a6f74  10 10 8d e8                                      stm sp, {r4, ip}
005a6f78  90 fe ff eb                                      bl #0x5a69c0
005a6f7c  80 ff ff ea                                      b #0x5a6d84
005a6f80  05 10 a0 e1                                      mov r1, r5
005a6f84  06 20 a0 e1                                      mov r2, r6
005a6f88  18 00 8d e2                                      add r0, sp, #0x18
005a6f8c  d4 fe ff eb                                      bl #0x5a6ae4
005a6f90  18 30 9d e5                                      ldr r3, [sp, #0x18]
005a6f94  00 30 87 e5                                      str r3, [r7]
005a6f98  79 ff ff ea                                      b #0x5a6d84
005a6f9c  05 10 a0 e1                                      mov r1, r5
005a6fa0  04 20 a0 e1                                      mov r2, r4
005a6fa4  06 30 a0 e1                                      mov r3, r6
005a6fa8  07 00 a0 e1                                      mov r0, r7
005a6fac  00 e0 8d e5                                      str lr, [sp]
005a6fb0  04 40 8d e5                                      str r4, [sp, #4]
005a6fb4  81 fe ff eb                                      bl #0x5a69c0
005a6fb8  71 ff ff ea                                      b #0x5a6d84
005a6fbc  00 c0 a0 e3                                      mov ip, #0
005a6fc0  05 10 a0 e1                                      mov r1, r5
005a6fc4  04 20 a0 e1                                      mov r2, r4
005a6fc8  06 30 a0 e1                                      mov r3, r6
005a6fcc  07 00 a0 e1                                      mov r0, r7
005a6fd0  00 c0 8d e5                                      str ip, [sp]
005a6fd4  04 40 8d e5                                      str r4, [sp, #4]
005a6fd8  78 fe ff eb                                      bl #0x5a69c0
005a6fdc  68 ff ff ea                                      b #0x5a6d84

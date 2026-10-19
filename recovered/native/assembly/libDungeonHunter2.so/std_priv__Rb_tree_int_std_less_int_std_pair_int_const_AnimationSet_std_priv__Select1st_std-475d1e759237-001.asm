; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00475624, declared_size=64, range_size=64, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, AnimationSet>, std::priv::_Select1st<std::pair<int const, AnimationSet> >, std::priv::_MapTraitsT<std::pair<int const, AnimationSet> >, std::allocator<std::pair<int const, AnimationSet> > >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKi12AnimationSetENS_10_Select1stIS6_EENS_11_MapTraitsTIS6_EESaIS6_EE8_M_eraseEPNS_18_Rb_tree_node_baseE
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, AnimationSet>, std::priv::_Select1st<std::pair<int const, AnimationSet> >, std::priv::_MapTraitsT<std::pair<int const, AnimationSet> >, std::allocator<std::pair<int const, AnimationSet> > >::_M_erase(std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
00475624  70 40 2d e9                                      push {r4, r5, r6, lr}
00475628  00 40 51 e2                                      subs r4, r1, #0
0047562c  00 60 a0 e1                                      mov r6, r0
00475630  0a 00 00 0a                                      beq #0x475660
00475634  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00475638  06 00 a0 e1                                      mov r0, r6
0047563c  f8 ff ff eb                                      bl #0x475624
00475640  08 50 94 e5                                      ldr r5, [r4, #8]
00475644  14 00 84 e2                                      add r0, r4, #0x14
00475648  34 be fb eb                                      bl #0x364f20
0047564c  04 00 a0 e1                                      mov r0, r4
00475650  54 10 a0 e3                                      mov r1, #0x54
00475654  29 4e 0a eb                                      bl #0x708f00
00475658  00 40 55 e2                                      subs r4, r5, #0
0047565c  f4 ff ff 1a                                      bne #0x475634
00475660  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x004759d0, declared_size=180, range_size=180, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, AnimationSet>, std::priv::_Select1st<std::pair<int const, AnimationSet> >, std::priv::_MapTraitsT<std::pair<int const, AnimationSet> >, std::allocator<std::pair<int const, AnimationSet> > >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKi12AnimationSetENS_10_Select1stIS6_EENS_11_MapTraitsTIS6_EESaIS6_EE14_M_create_nodeERKS6_
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, AnimationSet>, std::priv::_Select1st<std::pair<int const, AnimationSet> >, std::priv::_MapTraitsT<std::pair<int const, AnimationSet> >, std::allocator<std::pair<int const, AnimationSet> > >::_M_create_node(std::pair<int const, AnimationSet> const&)
; decoder-mode: arm
004759d0  70 40 2d e9                                      push {r4, r5, r6, lr}
004759d4  08 d0 4d e2                                      sub sp, sp, #8
004759d8  08 00 8d e2                                      add r0, sp, #8
004759dc  54 30 a0 e3                                      mov r3, #0x54
004759e0  04 30 20 e5                                      str r3, [r0, #-4]!
004759e4  01 50 a0 e1                                      mov r5, r1
004759e8  34 4d 0a eb                                      bl #0x708ec0
004759ec  88 60 9f e5                                      ldr r6, [pc, #0x88]
004759f0  00 20 95 e5                                      ldr r2, [r5]
004759f4  84 30 9f e5                                      ldr r3, [pc, #0x84]
004759f8  06 60 8f e0                                      add r6, pc, r6
004759fc  10 20 80 e5                                      str r2, [r0, #0x10]
00475a00  03 30 96 e7                                      ldr r3, [r6, r3]
00475a04  08 20 95 e5                                      ldr r2, [r5, #8]
00475a08  00 40 a0 e1                                      mov r4, r0
00475a0c  08 30 83 e2                                      add r3, r3, #8
00475a10  18 20 84 e5                                      str r2, [r4, #0x18]
00475a14  14 30 84 e5                                      str r3, [r4, #0x14]
00475a18  0c 10 85 e2                                      add r1, r5, #0xc
00475a1c  1c 00 80 e2                                      add r0, r0, #0x1c
00475a20  cc ff ff eb                                      bl #0x475958
00475a24  24 20 95 e5                                      ldr r2, [r5, #0x24]
00475a28  00 30 a0 e3                                      mov r3, #0
00475a2c  04 00 a0 e1                                      mov r0, r4
00475a30  34 20 84 e5                                      str r2, [r4, #0x34]
00475a34  28 20 95 e5                                      ldr r2, [r5, #0x28]
00475a38  38 20 84 e5                                      str r2, [r4, #0x38]
00475a3c  2c 20 95 e5                                      ldr r2, [r5, #0x2c]
00475a40  3c 20 84 e5                                      str r2, [r4, #0x3c]
00475a44  30 20 95 e5                                      ldr r2, [r5, #0x30]
00475a48  40 20 84 e5                                      str r2, [r4, #0x40]
00475a4c  34 20 95 e5                                      ldr r2, [r5, #0x34]
00475a50  44 20 84 e5                                      str r2, [r4, #0x44]
00475a54  38 20 95 e5                                      ldr r2, [r5, #0x38]
00475a58  48 20 84 e5                                      str r2, [r4, #0x48]
00475a5c  3c 20 95 e5                                      ldr r2, [r5, #0x3c]
00475a60  4c 20 84 e5                                      str r2, [r4, #0x4c]
00475a64  40 20 d5 e5                                      ldrb r2, [r5, #0x40]
00475a68  0c 30 84 e5                                      str r3, [r4, #0xc]
00475a6c  08 30 84 e5                                      str r3, [r4, #8]
00475a70  50 20 c4 e5                                      strb r2, [r4, #0x50]
00475a74  08 d0 8d e2                                      add sp, sp, #8
00475a78  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00475a7c  98 f0 51 00 7c 1b 00 00                          .byte 0x98, 0xf0, 0x51, 0x00, 0x7c, 0x1b, 0x00, 0x00

; FUNCTION 0x00475a84, declared_size=216, range_size=216, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, AnimationSet>, std::priv::_Select1st<std::pair<int const, AnimationSet> >, std::priv::_MapTraitsT<std::pair<int const, AnimationSet> >, std::allocator<std::pair<int const, AnimationSet> > >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKi12AnimationSetENS_10_Select1stIS6_EENS_11_MapTraitsTIS6_EESaIS6_EE9_M_insertEPNS_18_Rb_tree_node_baseERKS6_SE_SE_
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, AnimationSet>, std::priv::_Select1st<std::pair<int const, AnimationSet> >, std::priv::_MapTraitsT<std::pair<int const, AnimationSet> >, std::allocator<std::pair<int const, AnimationSet> > >::_M_insert(std::priv::_Rb_tree_node_base*, std::pair<int const, AnimationSet> const&, std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
00475a84  02 00 51 e1                                      cmp r1, r2
00475a88  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00475a8c  01 40 a0 e1                                      mov r4, r1
00475a90  02 50 a0 e1                                      mov r5, r2
00475a94  00 60 a0 e1                                      mov r6, r0
00475a98  22 00 00 0a                                      beq #0x475b28
00475a9c  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00475aa0  00 00 52 e3                                      cmp r2, #0
00475aa4  11 00 00 0a                                      beq #0x475af0
00475aa8  03 10 a0 e1                                      mov r1, r3
00475aac  04 00 a0 e1                                      mov r0, r4
00475ab0  c6 ff ff eb                                      bl #0x4759d0
00475ab4  0c 00 85 e5                                      str r0, [r5, #0xc]
00475ab8  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00475abc  00 70 a0 e1                                      mov r7, r0
00475ac0  03 00 55 e1                                      cmp r5, r3
00475ac4  15 00 00 0a                                      beq #0x475b20
00475ac8  07 00 a0 e1                                      mov r0, r7
00475acc  04 50 87 e5                                      str r5, [r7, #4]
00475ad0  04 10 84 e2                                      add r1, r4, #4
00475ad4  21 77 fa eb                                      bl #0x313760
00475ad8  10 30 94 e5                                      ldr r3, [r4, #0x10]
00475adc  06 00 a0 e1                                      mov r0, r6
00475ae0  01 30 83 e2                                      add r3, r3, #1
00475ae4  10 30 84 e5                                      str r3, [r4, #0x10]
00475ae8  00 70 86 e5                                      str r7, [r6]
00475aec  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00475af0  18 20 9d e5                                      ldr r2, [sp, #0x18]
00475af4  00 00 52 e3                                      cmp r2, #0
00475af8  12 00 00 0a                                      beq #0x475b48
00475afc  03 10 a0 e1                                      mov r1, r3
00475b00  04 00 a0 e1                                      mov r0, r4
00475b04  b1 ff ff eb                                      bl #0x4759d0
00475b08  08 00 85 e5                                      str r0, [r5, #8]
00475b0c  08 30 94 e5                                      ldr r3, [r4, #8]
00475b10  00 70 a0 e1                                      mov r7, r0
00475b14  03 00 55 e1                                      cmp r5, r3
00475b18  08 00 84 05                                      streq r0, [r4, #8]
00475b1c  e9 ff ff ea                                      b #0x475ac8
00475b20  0c 70 84 e5                                      str r7, [r4, #0xc]
00475b24  e7 ff ff ea                                      b #0x475ac8
00475b28  03 10 a0 e1                                      mov r1, r3
00475b2c  04 00 a0 e1                                      mov r0, r4
00475b30  a6 ff ff eb                                      bl #0x4759d0
00475b34  00 70 a0 e1                                      mov r7, r0
00475b38  08 00 84 e5                                      str r0, [r4, #8]
00475b3c  04 00 84 e5                                      str r0, [r4, #4]
00475b40  0c 00 84 e5                                      str r0, [r4, #0xc]
00475b44  df ff ff ea                                      b #0x475ac8
00475b48  00 10 93 e5                                      ldr r1, [r3]
00475b4c  10 20 95 e5                                      ldr r2, [r5, #0x10]
00475b50  02 00 51 e1                                      cmp r1, r2
00475b54  d3 ff ff aa                                      bge #0x475aa8
00475b58  e7 ff ff ea                                      b #0x475afc

; FUNCTION 0x00475b5c, declared_size=392, range_size=392, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, AnimationSet>, std::priv::_Select1st<std::pair<int const, AnimationSet> >, std::priv::_MapTraitsT<std::pair<int const, AnimationSet> >, std::allocator<std::pair<int const, AnimationSet> > >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKi12AnimationSetENS_10_Select1stIS6_EENS_11_MapTraitsTIS6_EESaIS6_EE13insert_uniqueERKS6_
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, AnimationSet>, std::priv::_Select1st<std::pair<int const, AnimationSet> >, std::priv::_MapTraitsT<std::pair<int const, AnimationSet> >, std::allocator<std::pair<int const, AnimationSet> > >::insert_unique(std::pair<int const, AnimationSet> const&)
; decoder-mode: arm
00475b5c  70 40 2d e9                                      push {r4, r5, r6, lr}
00475b60  04 c0 91 e5                                      ldr ip, [r1, #4]
00475b64  10 d0 4d e2                                      sub sp, sp, #0x10
00475b68  00 40 a0 e1                                      mov r4, r0
00475b6c  00 00 5c e3                                      cmp ip, #0
00475b70  02 30 a0 e1                                      mov r3, r2
00475b74  01 c0 a0 01                                      moveq ip, r1
00475b78  15 00 00 0a                                      beq #0x475bd4
00475b7c  00 60 92 e5                                      ldr r6, [r2]
00475b80  00 00 00 ea                                      b #0x475b88
00475b84  02 c0 a0 e1                                      mov ip, r2
00475b88  10 00 9c e5                                      ldr r0, [ip, #0x10]
00475b8c  01 50 a0 e3                                      mov r5, #1
00475b90  06 00 50 e1                                      cmp r0, r6
00475b94  08 20 9c c5                                      ldrgt r2, [ip, #8]
00475b98  0c 20 9c d5                                      ldrle r2, [ip, #0xc]
00475b9c  00 50 a0 d3                                      movle r5, #0
00475ba0  00 00 52 e3                                      cmp r2, #0
00475ba4  f6 ff ff 1a                                      bne #0x475b84
00475ba8  00 00 55 e3                                      cmp r5, #0
00475bac  0c 50 a0 01                                      moveq r5, ip
00475bb0  07 00 00 1a                                      bne #0x475bd4
00475bb4  00 00 56 e1                                      cmp r6, r0
00475bb8  00 30 a0 d3                                      movle r3, #0
00475bbc  00 50 84 d5                                      strle r5, [r4]
00475bc0  04 30 c4 d5                                      strble r3, [r4, #4]
00475bc4  1c 00 00 ca                                      bgt #0x475c3c
00475bc8  04 00 a0 e1                                      mov r0, r4
00475bcc  10 d0 8d e2                                      add sp, sp, #0x10
00475bd0  70 80 bd e8                                      pop {r4, r5, r6, pc}
00475bd4  08 20 91 e5                                      ldr r2, [r1, #8]
00475bd8  02 00 5c e1                                      cmp ip, r2
00475bdc  36 00 00 0a                                      beq #0x475cbc
00475be0  00 20 dc e5                                      ldrb r2, [ip]
00475be4  00 00 52 e3                                      cmp r2, #0
00475be8  03 00 00 1a                                      bne #0x475bfc
00475bec  04 20 9c e5                                      ldr r2, [ip, #4]
00475bf0  04 20 92 e5                                      ldr r2, [r2, #4]
00475bf4  02 00 5c e1                                      cmp ip, r2
00475bf8  2a 00 00 0a                                      beq #0x475ca8
00475bfc  08 00 9c e5                                      ldr r0, [ip, #8]
00475c00  00 00 50 e3                                      cmp r0, #0
00475c04  01 00 00 1a                                      bne #0x475c10
00475c08  16 00 00 ea                                      b #0x475c68
00475c0c  02 00 a0 e1                                      mov r0, r2
00475c10  0c 20 90 e5                                      ldr r2, [r0, #0xc]
00475c14  00 00 52 e3                                      cmp r2, #0
00475c18  fb ff ff 1a                                      bne #0x475c0c
00475c1c  00 60 93 e5                                      ldr r6, [r3]
00475c20  00 50 a0 e1                                      mov r5, r0
00475c24  10 00 90 e5                                      ldr r0, [r0, #0x10]
00475c28  00 00 56 e1                                      cmp r6, r0
00475c2c  00 30 a0 d3                                      movle r3, #0
00475c30  00 50 84 d5                                      strle r5, [r4]
00475c34  04 30 c4 d5                                      strble r3, [r4, #4]
00475c38  e2 ff ff da                                      ble #0x475bc8
00475c3c  0c 20 a0 e1                                      mov r2, ip
00475c40  08 00 8d e2                                      add r0, sp, #8
00475c44  00 c0 a0 e3                                      mov ip, #0
00475c48  04 c0 8d e5                                      str ip, [sp, #4]
00475c4c  00 c0 8d e5                                      str ip, [sp]
00475c50  8b ff ff eb                                      bl #0x475a84
00475c54  08 30 9d e5                                      ldr r3, [sp, #8]
00475c58  01 20 a0 e3                                      mov r2, #1
00475c5c  04 20 c4 e5                                      strb r2, [r4, #4]
00475c60  00 30 84 e5                                      str r3, [r4]
00475c64  d7 ff ff ea                                      b #0x475bc8
00475c68  04 20 9c e5                                      ldr r2, [ip, #4]
00475c6c  08 00 92 e5                                      ldr r0, [r2, #8]
00475c70  00 00 5c e1                                      cmp ip, r0
00475c74  02 50 a0 11                                      movne r5, r2
00475c78  00 60 93 15                                      ldrne r6, [r3]
00475c7c  10 00 92 15                                      ldrne r0, [r2, #0x10]
00475c80  01 00 00 0a                                      beq #0x475c8c
00475c84  ca ff ff ea                                      b #0x475bb4
00475c88  05 20 a0 e1                                      mov r2, r5
00475c8c  04 50 92 e5                                      ldr r5, [r2, #4]
00475c90  08 00 95 e5                                      ldr r0, [r5, #8]
00475c94  02 00 50 e1                                      cmp r0, r2
00475c98  fa ff ff 0a                                      beq #0x475c88
00475c9c  00 60 93 e5                                      ldr r6, [r3]
00475ca0  10 00 95 e5                                      ldr r0, [r5, #0x10]
00475ca4  c2 ff ff ea                                      b #0x475bb4
00475ca8  0c 20 9c e5                                      ldr r2, [ip, #0xc]
00475cac  00 60 93 e5                                      ldr r6, [r3]
00475cb0  02 50 a0 e1                                      mov r5, r2
00475cb4  10 00 92 e5                                      ldr r0, [r2, #0x10]
00475cb8  bd ff ff ea                                      b #0x475bb4
00475cbc  0c 20 a0 e1                                      mov r2, ip
00475cc0  00 e0 a0 e3                                      mov lr, #0
00475cc4  0c 00 8d e2                                      add r0, sp, #0xc
00475cc8  00 50 8d e8                                      stm sp, {ip, lr}
00475ccc  6c ff ff eb                                      bl #0x475a84
00475cd0  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00475cd4  01 20 a0 e3                                      mov r2, #1
00475cd8  04 20 c4 e5                                      strb r2, [r4, #4]
00475cdc  00 30 84 e5                                      str r3, [r4]
00475ce0  b8 ff ff ea                                      b #0x475bc8

; FUNCTION 0x00475ce4, declared_size=884, range_size=884, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, AnimationSet>, std::priv::_Select1st<std::pair<int const, AnimationSet> >, std::priv::_MapTraitsT<std::pair<int const, AnimationSet> >, std::allocator<std::pair<int const, AnimationSet> > >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKi12AnimationSetENS_10_Select1stIS6_EENS_11_MapTraitsTIS6_EESaIS6_EE13insert_uniqueENS_17_Rb_tree_iteratorIS6_SA_EERKS6_
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, AnimationSet>, std::priv::_Select1st<std::pair<int const, AnimationSet> >, std::priv::_MapTraitsT<std::pair<int const, AnimationSet> >, std::allocator<std::pair<int const, AnimationSet> > >::insert_unique(std::priv::_Rb_tree_iterator<std::pair<int const, AnimationSet>, std::priv::_MapTraitsT<std::pair<int const, AnimationSet> > >, std::pair<int const, AnimationSet> const&)
; decoder-mode: arm
00475ce4  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00475ce8  00 40 92 e5                                      ldr r4, [r2]
00475cec  08 20 91 e5                                      ldr r2, [r1, #8]
00475cf0  2c d0 4d e2                                      sub sp, sp, #0x2c
00475cf4  01 50 a0 e1                                      mov r5, r1
00475cf8  02 00 54 e1                                      cmp r4, r2
00475cfc  00 70 a0 e1                                      mov r7, r0
00475d00  03 60 a0 e1                                      mov r6, r3
00475d04  5a 00 00 0a                                      beq #0x475e74
00475d08  01 00 54 e1                                      cmp r4, r1
00475d0c  78 00 00 0a                                      beq #0x475ef4
00475d10  00 30 d4 e5                                      ldrb r3, [r4]
00475d14  00 00 53 e3                                      cmp r3, #0
00475d18  3a 00 00 0a                                      beq #0x475e08
00475d1c  08 c0 94 e5                                      ldr ip, [r4, #8]
00475d20  00 00 5c e3                                      cmp ip, #0
00475d24  01 00 00 1a                                      bne #0x475d30
00475d28  3e 00 00 ea                                      b #0x475e28
00475d2c  03 c0 a0 e1                                      mov ip, r3
00475d30  0c 30 9c e5                                      ldr r3, [ip, #0xc]
00475d34  00 00 53 e3                                      cmp r3, #0
00475d38  fb ff ff 1a                                      bne #0x475d2c
00475d3c  00 20 96 e5                                      ldr r2, [r6]
00475d40  10 00 94 e5                                      ldr r0, [r4, #0x10]
00475d44  00 00 52 e1                                      cmp r2, r0
00475d48  00 10 a0 a3                                      movge r1, #0
00475d4c  01 10 a0 b3                                      movlt r1, #1
00475d50  00 00 51 e3                                      cmp r1, #0
00475d54  1b 00 00 1a                                      bne #0x475dc8
00475d58  0c 80 94 e5                                      ldr r8, [r4, #0xc]
00475d5c  00 00 58 e3                                      cmp r8, #0
00475d60  7d 00 00 0a                                      beq #0x475f5c
00475d64  08 c0 a0 e1                                      mov ip, r8
00475d68  00 00 00 ea                                      b #0x475d70
00475d6c  03 c0 a0 e1                                      mov ip, r3
00475d70  08 30 9c e5                                      ldr r3, [ip, #8]
00475d74  00 00 53 e3                                      cmp r3, #0
00475d78  fb ff ff 1a                                      bne #0x475d6c
00475d7c  00 00 51 e3                                      cmp r1, #0
00475d80  34 00 00 1a                                      bne #0x475e58
00475d84  00 00 52 e1                                      cmp r2, r0
00475d88  63 00 00 da                                      ble #0x475f1c
00475d8c  0c 00 55 e1                                      cmp r5, ip
00475d90  02 00 00 0a                                      beq #0x475da0
00475d94  10 30 9c e5                                      ldr r3, [ip, #0x10]
00475d98  03 00 52 e1                                      cmp r2, r3
00475d9c  2d 00 00 aa                                      bge #0x475e58
00475da0  00 00 58 e3                                      cmp r8, #0
00475da4  4a 00 00 1a                                      bne #0x475ed4
00475da8  05 10 a0 e1                                      mov r1, r5
00475dac  04 20 a0 e1                                      mov r2, r4
00475db0  06 30 a0 e1                                      mov r3, r6
00475db4  07 00 a0 e1                                      mov r0, r7
00475db8  00 80 8d e5                                      str r8, [sp]
00475dbc  04 40 8d e5                                      str r4, [sp, #4]
00475dc0  2f ff ff eb                                      bl #0x475a84
00475dc4  0c 00 00 ea                                      b #0x475dfc
00475dc8  10 30 9c e5                                      ldr r3, [ip, #0x10]
00475dcc  03 00 52 e1                                      cmp r2, r3
00475dd0  e0 ff ff da                                      ble #0x475d58
00475dd4  0c e0 9c e5                                      ldr lr, [ip, #0xc]
00475dd8  00 00 5e e3                                      cmp lr, #0
00475ddc  56 00 00 0a                                      beq #0x475f3c
00475de0  00 c0 a0 e3                                      mov ip, #0
00475de4  05 10 a0 e1                                      mov r1, r5
00475de8  04 20 a0 e1                                      mov r2, r4
00475dec  06 30 a0 e1                                      mov r3, r6
00475df0  07 00 a0 e1                                      mov r0, r7
00475df4  10 10 8d e8                                      stm sp, {r4, ip}
00475df8  21 ff ff eb                                      bl #0x475a84
00475dfc  07 00 a0 e1                                      mov r0, r7
00475e00  2c d0 8d e2                                      add sp, sp, #0x2c
00475e04  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00475e08  04 30 94 e5                                      ldr r3, [r4, #4]
00475e0c  04 30 93 e5                                      ldr r3, [r3, #4]
00475e10  03 00 54 e1                                      cmp r4, r3
00475e14  0c c0 94 05                                      ldreq ip, [r4, #0xc]
00475e18  c7 ff ff 0a                                      beq #0x475d3c
00475e1c  08 c0 94 e5                                      ldr ip, [r4, #8]
00475e20  00 00 5c e3                                      cmp ip, #0
00475e24  c1 ff ff 1a                                      bne #0x475d30
00475e28  04 c0 94 e5                                      ldr ip, [r4, #4]
00475e2c  08 30 9c e5                                      ldr r3, [ip, #8]
00475e30  03 00 54 e1                                      cmp r4, r3
00475e34  01 00 00 0a                                      beq #0x475e40
00475e38  bf ff ff ea                                      b #0x475d3c
00475e3c  03 c0 a0 e1                                      mov ip, r3
00475e40  04 30 9c e5                                      ldr r3, [ip, #4]
00475e44  08 20 93 e5                                      ldr r2, [r3, #8]
00475e48  0c 00 52 e1                                      cmp r2, ip
00475e4c  fa ff ff 0a                                      beq #0x475e3c
00475e50  03 c0 a0 e1                                      mov ip, r3
00475e54  b8 ff ff ea                                      b #0x475d3c
00475e58  05 10 a0 e1                                      mov r1, r5
00475e5c  06 20 a0 e1                                      mov r2, r6
00475e60  08 00 8d e2                                      add r0, sp, #8
00475e64  3c ff ff eb                                      bl #0x475b5c
00475e68  08 30 9d e5                                      ldr r3, [sp, #8]
00475e6c  00 30 87 e5                                      str r3, [r7]
00475e70  e1 ff ff ea                                      b #0x475dfc
00475e74  10 20 91 e5                                      ldr r2, [r1, #0x10]
00475e78  00 00 52 e3                                      cmp r2, #0
00475e7c  52 00 00 0a                                      beq #0x475fcc
00475e80  00 20 93 e5                                      ldr r2, [r3]
00475e84  10 c0 94 e5                                      ldr ip, [r4, #0x10]
00475e88  0c 00 52 e1                                      cmp r2, ip
00475e8c  54 00 00 ba                                      blt #0x475fe4
00475e90  21 00 00 da                                      ble #0x475f1c
00475e94  0c e0 94 e5                                      ldr lr, [r4, #0xc]
00475e98  00 00 5e e3                                      cmp lr, #0
00475e9c  3c 00 00 0a                                      beq #0x475f94
00475ea0  0e c0 a0 e1                                      mov ip, lr
00475ea4  00 00 00 ea                                      b #0x475eac
00475ea8  03 c0 a0 e1                                      mov ip, r3
00475eac  08 30 9c e5                                      ldr r3, [ip, #8]
00475eb0  00 00 53 e3                                      cmp r3, #0
00475eb4  fb ff ff 1a                                      bne #0x475ea8
00475eb8  0c 00 55 e1                                      cmp r5, ip
00475ebc  5c 00 00 0a                                      beq #0x476034
00475ec0  10 30 9c e5                                      ldr r3, [ip, #0x10]
00475ec4  03 00 52 e1                                      cmp r2, r3
00475ec8  4a 00 00 aa                                      bge #0x475ff8
00475ecc  00 00 5e e3                                      cmp lr, #0
00475ed0  4f 00 00 0a                                      beq #0x476014
00475ed4  00 e0 a0 e3                                      mov lr, #0
00475ed8  05 10 a0 e1                                      mov r1, r5
00475edc  0c 20 a0 e1                                      mov r2, ip
00475ee0  06 30 a0 e1                                      mov r3, r6
00475ee4  07 00 a0 e1                                      mov r0, r7
00475ee8  00 50 8d e8                                      stm sp, {ip, lr}
00475eec  e4 fe ff eb                                      bl #0x475a84
00475ef0  c1 ff ff ea                                      b #0x475dfc
00475ef4  0c 20 94 e5                                      ldr r2, [r4, #0xc]
00475ef8  00 c0 93 e5                                      ldr ip, [r3]
00475efc  10 e0 92 e5                                      ldr lr, [r2, #0x10]
00475f00  0c 00 5e e1                                      cmp lr, ip
00475f04  06 00 00 aa                                      bge #0x475f24
00475f08  00 c0 a0 e3                                      mov ip, #0
00475f0c  00 c0 8d e5                                      str ip, [sp]
00475f10  04 40 8d e5                                      str r4, [sp, #4]
00475f14  da fe ff eb                                      bl #0x475a84
00475f18  b7 ff ff ea                                      b #0x475dfc
00475f1c  00 40 87 e5                                      str r4, [r7]
00475f20  b5 ff ff ea                                      b #0x475dfc
00475f24  03 20 a0 e1                                      mov r2, r3
00475f28  10 00 8d e2                                      add r0, sp, #0x10
00475f2c  0a ff ff eb                                      bl #0x475b5c
00475f30  10 30 9d e5                                      ldr r3, [sp, #0x10]
00475f34  00 30 87 e5                                      str r3, [r7]
00475f38  af ff ff ea                                      b #0x475dfc
00475f3c  05 10 a0 e1                                      mov r1, r5
00475f40  0c 20 a0 e1                                      mov r2, ip
00475f44  06 30 a0 e1                                      mov r3, r6
00475f48  07 00 a0 e1                                      mov r0, r7
00475f4c  00 e0 8d e5                                      str lr, [sp]
00475f50  04 c0 8d e5                                      str ip, [sp, #4]
00475f54  ca fe ff eb                                      bl #0x475a84
00475f58  a7 ff ff ea                                      b #0x475dfc
00475f5c  04 30 94 e5                                      ldr r3, [r4, #4]
00475f60  0c c0 93 e5                                      ldr ip, [r3, #0xc]
00475f64  0c 00 54 e1                                      cmp r4, ip
00475f68  04 c0 a0 11                                      movne ip, r4
00475f6c  04 00 00 1a                                      bne #0x475f84
00475f70  03 c0 a0 e1                                      mov ip, r3
00475f74  04 30 93 e5                                      ldr r3, [r3, #4]
00475f78  0c a0 93 e5                                      ldr sl, [r3, #0xc]
00475f7c  0a 00 5c e1                                      cmp ip, sl
00475f80  fa ff ff 0a                                      beq #0x475f70
00475f84  0c a0 9c e5                                      ldr sl, [ip, #0xc]
00475f88  0a 00 53 e1                                      cmp r3, sl
00475f8c  03 c0 a0 11                                      movne ip, r3
00475f90  79 ff ff ea                                      b #0x475d7c
00475f94  04 30 94 e5                                      ldr r3, [r4, #4]
00475f98  0c 10 93 e5                                      ldr r1, [r3, #0xc]
00475f9c  01 00 54 e1                                      cmp r4, r1
00475fa0  04 c0 a0 11                                      movne ip, r4
00475fa4  04 00 00 1a                                      bne #0x475fbc
00475fa8  03 c0 a0 e1                                      mov ip, r3
00475fac  04 30 93 e5                                      ldr r3, [r3, #4]
00475fb0  0c 10 93 e5                                      ldr r1, [r3, #0xc]
00475fb4  0c 00 51 e1                                      cmp r1, ip
00475fb8  fa ff ff 0a                                      beq #0x475fa8
00475fbc  0c 10 9c e5                                      ldr r1, [ip, #0xc]
00475fc0  01 00 53 e1                                      cmp r3, r1
00475fc4  03 c0 a0 11                                      movne ip, r3
00475fc8  ba ff ff ea                                      b #0x475eb8
00475fcc  03 20 a0 e1                                      mov r2, r3
00475fd0  20 00 8d e2                                      add r0, sp, #0x20
00475fd4  e0 fe ff eb                                      bl #0x475b5c
00475fd8  20 30 9d e5                                      ldr r3, [sp, #0x20]
00475fdc  00 30 87 e5                                      str r3, [r7]
00475fe0  85 ff ff ea                                      b #0x475dfc
00475fe4  00 c0 a0 e3                                      mov ip, #0
00475fe8  04 20 a0 e1                                      mov r2, r4
00475fec  10 10 8d e8                                      stm sp, {r4, ip}
00475ff0  a3 fe ff eb                                      bl #0x475a84
00475ff4  80 ff ff ea                                      b #0x475dfc
00475ff8  05 10 a0 e1                                      mov r1, r5
00475ffc  06 20 a0 e1                                      mov r2, r6
00476000  18 00 8d e2                                      add r0, sp, #0x18
00476004  d4 fe ff eb                                      bl #0x475b5c
00476008  18 30 9d e5                                      ldr r3, [sp, #0x18]
0047600c  00 30 87 e5                                      str r3, [r7]
00476010  79 ff ff ea                                      b #0x475dfc
00476014  05 10 a0 e1                                      mov r1, r5
00476018  04 20 a0 e1                                      mov r2, r4
0047601c  06 30 a0 e1                                      mov r3, r6
00476020  07 00 a0 e1                                      mov r0, r7
00476024  00 e0 8d e5                                      str lr, [sp]
00476028  04 40 8d e5                                      str r4, [sp, #4]
0047602c  94 fe ff eb                                      bl #0x475a84
00476030  71 ff ff ea                                      b #0x475dfc
00476034  00 c0 a0 e3                                      mov ip, #0
00476038  05 10 a0 e1                                      mov r1, r5
0047603c  04 20 a0 e1                                      mov r2, r4
00476040  06 30 a0 e1                                      mov r3, r6
00476044  07 00 a0 e1                                      mov r0, r7
00476048  00 c0 8d e5                                      str ip, [sp]
0047604c  04 40 8d e5                                      str r4, [sp, #4]
00476050  8b fe ff eb                                      bl #0x475a84
00476054  68 ff ff ea                                      b #0x475dfc

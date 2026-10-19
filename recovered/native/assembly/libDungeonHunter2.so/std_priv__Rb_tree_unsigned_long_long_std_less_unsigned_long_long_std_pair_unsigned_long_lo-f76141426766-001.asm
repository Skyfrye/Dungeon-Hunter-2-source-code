; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0080251c, declared_size=68, range_size=68, mode=arm
; class-group: std::priv::_Rb_tree<unsigned long long, std::less<unsigned long long>, std::pair<unsigned long long const, tMatchingPeer>, std::priv::_Select1st<std::pair<unsigned long long const, tMatchingPeer> >, std::priv::_MapTraitsT<std::pair<unsigned long long const, tMatchingPeer> >, std::allocator<std::pair<unsigned long long const, tMatchingPeer> > >
; alias: _ZNSt4priv8_Rb_treeIySt4lessIyESt4pairIKy13tMatchingPeerENS_10_Select1stIS6_EENS_11_MapTraitsTIS6_EESaIS6_EE8_M_eraseEPNS_18_Rb_tree_node_baseE
; demangled: std::priv::_Rb_tree<unsigned long long, std::less<unsigned long long>, std::pair<unsigned long long const, tMatchingPeer>, std::priv::_Select1st<std::pair<unsigned long long const, tMatchingPeer> >, std::priv::_MapTraitsT<std::pair<unsigned long long const, tMatchingPeer> >, std::allocator<std::pair<unsigned long long const, tMatchingPeer> > >::_M_erase(std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
0080251c  70 40 2d e9                                      push {r4, r5, r6, lr}
00802520  00 40 51 e2                                      subs r4, r1, #0
00802524  00 50 a0 e1                                      mov r5, r0
00802528  0b 00 00 0a                                      beq #0x80255c
0080252c  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00802530  05 00 a0 e1                                      mov r0, r5
00802534  f8 ff ff eb                                      bl #0x80251c
00802538  08 60 94 e5                                      ldr r6, [r4, #8]
0080253c  60 00 84 e2                                      add r0, r4, #0x60
00802540  b3 59 00 eb                                      bl #0x818c14
00802544  3c 00 84 e2                                      add r0, r4, #0x3c
00802548  41 57 ec eb                                      bl #0x318254
0080254c  04 00 a0 e1                                      mov r0, r4
00802550  ba 37 ec eb                                      bl #0x310440
00802554  00 40 56 e2                                      subs r4, r6, #0
00802558  f3 ff ff 1a                                      bne #0x80252c
0080255c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x008028e0, declared_size=60, range_size=60, mode=arm
; class-group: std::priv::_Rb_tree<unsigned long long, std::less<unsigned long long>, std::pair<unsigned long long const, tMatchingPeer>, std::priv::_Select1st<std::pair<unsigned long long const, tMatchingPeer> >, std::priv::_MapTraitsT<std::pair<unsigned long long const, tMatchingPeer> >, std::allocator<std::pair<unsigned long long const, tMatchingPeer> > >
; alias: _ZNSt4priv8_Rb_treeIySt4lessIyESt4pairIKy13tMatchingPeerENS_10_Select1stIS6_EENS_11_MapTraitsTIS6_EESaIS6_EE14_M_create_nodeERKS6_
; demangled: std::priv::_Rb_tree<unsigned long long, std::less<unsigned long long>, std::pair<unsigned long long const, tMatchingPeer>, std::priv::_Select1st<std::pair<unsigned long long const, tMatchingPeer> >, std::priv::_MapTraitsT<std::pair<unsigned long long const, tMatchingPeer> >, std::allocator<std::pair<unsigned long long const, tMatchingPeer> > >::_M_create_node(std::pair<unsigned long long const, tMatchingPeer> const&)
; decoder-mode: arm
008028e0  70 40 2d e9                                      push {r4, r5, r6, lr}
008028e4  fe 0f a0 e3                                      mov r0, #0x3f8
008028e8  01 50 a0 e1                                      mov r5, r1
008028ec  d8 36 ec eb                                      bl #0x310454
008028f0  05 10 a0 e1                                      mov r1, r5
008028f4  00 40 a0 e1                                      mov r4, r0
008028f8  d8 20 c1 e0                                      ldrd r2, r3, [r1], #8
008028fc  f0 21 c0 e1                                      strd r2, r3, [r0, #0x10]
00802900  18 00 80 e2                                      add r0, r0, #0x18
00802904  15 ff ff eb                                      bl #0x802560
00802908  00 30 a0 e3                                      mov r3, #0
0080290c  0c 30 84 e5                                      str r3, [r4, #0xc]
00802910  08 30 84 e5                                      str r3, [r4, #8]
00802914  04 00 a0 e1                                      mov r0, r4
00802918  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0080291c, declared_size=236, range_size=236, mode=arm
; class-group: std::priv::_Rb_tree<unsigned long long, std::less<unsigned long long>, std::pair<unsigned long long const, tMatchingPeer>, std::priv::_Select1st<std::pair<unsigned long long const, tMatchingPeer> >, std::priv::_MapTraitsT<std::pair<unsigned long long const, tMatchingPeer> >, std::allocator<std::pair<unsigned long long const, tMatchingPeer> > >
; alias: _ZNSt4priv8_Rb_treeIySt4lessIyESt4pairIKy13tMatchingPeerENS_10_Select1stIS6_EENS_11_MapTraitsTIS6_EESaIS6_EE9_M_insertEPNS_18_Rb_tree_node_baseERKS6_SE_SE_
; demangled: std::priv::_Rb_tree<unsigned long long, std::less<unsigned long long>, std::pair<unsigned long long const, tMatchingPeer>, std::priv::_Select1st<std::pair<unsigned long long const, tMatchingPeer> >, std::priv::_MapTraitsT<std::pair<unsigned long long const, tMatchingPeer> >, std::allocator<std::pair<unsigned long long const, tMatchingPeer> > >::_M_insert(std::priv::_Rb_tree_node_base*, std::pair<unsigned long long const, tMatchingPeer> const&, std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
0080291c  02 00 51 e1                                      cmp r1, r2
00802920  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00802924  01 40 a0 e1                                      mov r4, r1
00802928  02 50 a0 e1                                      mov r5, r2
0080292c  00 60 a0 e1                                      mov r6, r0
00802930  22 00 00 0a                                      beq #0x8029c0
00802934  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00802938  00 00 52 e3                                      cmp r2, #0
0080293c  11 00 00 0a                                      beq #0x802988
00802940  03 10 a0 e1                                      mov r1, r3
00802944  04 00 a0 e1                                      mov r0, r4
00802948  e4 ff ff eb                                      bl #0x8028e0
0080294c  0c 00 85 e5                                      str r0, [r5, #0xc]
00802950  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00802954  00 70 a0 e1                                      mov r7, r0
00802958  03 00 55 e1                                      cmp r5, r3
0080295c  15 00 00 0a                                      beq #0x8029b8
00802960  07 00 a0 e1                                      mov r0, r7
00802964  04 50 87 e5                                      str r5, [r7, #4]
00802968  04 10 84 e2                                      add r1, r4, #4
0080296c  7b 43 ec eb                                      bl #0x313760
00802970  10 30 94 e5                                      ldr r3, [r4, #0x10]
00802974  06 00 a0 e1                                      mov r0, r6
00802978  01 30 83 e2                                      add r3, r3, #1
0080297c  10 30 84 e5                                      str r3, [r4, #0x10]
00802980  00 70 86 e5                                      str r7, [r6]
00802984  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00802988  18 20 9d e5                                      ldr r2, [sp, #0x18]
0080298c  00 00 52 e3                                      cmp r2, #0
00802990  12 00 00 0a                                      beq #0x8029e0
00802994  03 10 a0 e1                                      mov r1, r3
00802998  04 00 a0 e1                                      mov r0, r4
0080299c  cf ff ff eb                                      bl #0x8028e0
008029a0  08 00 85 e5                                      str r0, [r5, #8]
008029a4  08 30 94 e5                                      ldr r3, [r4, #8]
008029a8  00 70 a0 e1                                      mov r7, r0
008029ac  03 00 55 e1                                      cmp r5, r3
008029b0  08 00 84 05                                      streq r0, [r4, #8]
008029b4  e9 ff ff ea                                      b #0x802960
008029b8  0c 70 84 e5                                      str r7, [r4, #0xc]
008029bc  e7 ff ff ea                                      b #0x802960
008029c0  03 10 a0 e1                                      mov r1, r3
008029c4  04 00 a0 e1                                      mov r0, r4
008029c8  c4 ff ff eb                                      bl #0x8028e0
008029cc  00 70 a0 e1                                      mov r7, r0
008029d0  08 00 84 e5                                      str r0, [r4, #8]
008029d4  04 00 84 e5                                      str r0, [r4, #4]
008029d8  0c 00 84 e5                                      str r0, [r4, #0xc]
008029dc  df ff ff ea                                      b #0x802960
008029e0  14 10 95 e5                                      ldr r1, [r5, #0x14]
008029e4  04 20 93 e5                                      ldr r2, [r3, #4]
008029e8  02 00 51 e1                                      cmp r1, r2
008029ec  e8 ff ff 8a                                      bhi #0x802994
008029f0  d2 ff ff 1a                                      bne #0x802940
008029f4  10 10 95 e5                                      ldr r1, [r5, #0x10]
008029f8  00 20 93 e5                                      ldr r2, [r3]
008029fc  02 00 51 e1                                      cmp r1, r2
00802a00  ce ff ff 9a                                      bls #0x802940
00802a04  e2 ff ff ea                                      b #0x802994

; FUNCTION 0x00802a08, declared_size=448, range_size=448, mode=arm
; class-group: std::priv::_Rb_tree<unsigned long long, std::less<unsigned long long>, std::pair<unsigned long long const, tMatchingPeer>, std::priv::_Select1st<std::pair<unsigned long long const, tMatchingPeer> >, std::priv::_MapTraitsT<std::pair<unsigned long long const, tMatchingPeer> >, std::allocator<std::pair<unsigned long long const, tMatchingPeer> > >
; alias: _ZNSt4priv8_Rb_treeIySt4lessIyESt4pairIKy13tMatchingPeerENS_10_Select1stIS6_EENS_11_MapTraitsTIS6_EESaIS6_EE13insert_uniqueERKS6_
; demangled: std::priv::_Rb_tree<unsigned long long, std::less<unsigned long long>, std::pair<unsigned long long const, tMatchingPeer>, std::priv::_Select1st<std::pair<unsigned long long const, tMatchingPeer> >, std::priv::_MapTraitsT<std::pair<unsigned long long const, tMatchingPeer> >, std::allocator<std::pair<unsigned long long const, tMatchingPeer> > >::insert_unique(std::pair<unsigned long long const, tMatchingPeer> const&)
; decoder-mode: arm
00802a08  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00802a0c  04 c0 91 e5                                      ldr ip, [r1, #4]
00802a10  10 d0 4d e2                                      sub sp, sp, #0x10
00802a14  00 40 a0 e1                                      mov r4, r0
00802a18  00 00 5c e3                                      cmp ip, #0
00802a1c  02 30 a0 e1                                      mov r3, r2
00802a20  01 c0 a0 01                                      moveq ip, r1
00802a24  20 00 00 0a                                      beq #0x802aac
00802a28  00 80 92 e5                                      ldr r8, [r2]
00802a2c  04 60 92 e5                                      ldr r6, [r2, #4]
00802a30  05 00 00 ea                                      b #0x802a4c
00802a34  18 00 00 0a                                      beq #0x802a9c
00802a38  0c 20 9c e5                                      ldr r2, [ip, #0xc]
00802a3c  00 50 a0 e3                                      mov r5, #0
00802a40  00 00 52 e3                                      cmp r2, #0
00802a44  08 00 00 0a                                      beq #0x802a6c
00802a48  02 c0 a0 e1                                      mov ip, r2
00802a4c  14 00 9c e5                                      ldr r0, [ip, #0x14]
00802a50  10 70 9c e5                                      ldr r7, [ip, #0x10]
00802a54  01 50 a0 e3                                      mov r5, #1
00802a58  06 00 50 e1                                      cmp r0, r6
00802a5c  f4 ff ff 9a                                      bls #0x802a34
00802a60  08 20 9c e5                                      ldr r2, [ip, #8]
00802a64  00 00 52 e3                                      cmp r2, #0
00802a68  f6 ff ff 1a                                      bne #0x802a48
00802a6c  00 00 55 e3                                      cmp r5, #0
00802a70  0c 20 a0 01                                      moveq r2, ip
00802a74  0c 00 00 1a                                      bne #0x802aac
00802a78  00 00 56 e1                                      cmp r6, r0
00802a7c  23 00 00 8a                                      bhi #0x802b10
00802a80  2d 00 00 0a                                      beq #0x802b3c
00802a84  00 30 a0 e3                                      mov r3, #0
00802a88  00 20 84 e5                                      str r2, [r4]
00802a8c  04 30 c4 e5                                      strb r3, [r4, #4]
00802a90  04 00 a0 e1                                      mov r0, r4
00802a94  10 d0 8d e2                                      add sp, sp, #0x10
00802a98  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00802a9c  08 00 57 e1                                      cmp r7, r8
00802aa0  e4 ff ff 9a                                      bls #0x802a38
00802aa4  08 20 9c e5                                      ldr r2, [ip, #8]
00802aa8  ed ff ff ea                                      b #0x802a64
00802aac  08 20 91 e5                                      ldr r2, [r1, #8]
00802ab0  02 00 5c e1                                      cmp ip, r2
00802ab4  39 00 00 0a                                      beq #0x802ba0
00802ab8  00 20 dc e5                                      ldrb r2, [ip]
00802abc  00 00 52 e3                                      cmp r2, #0
00802ac0  03 00 00 1a                                      bne #0x802ad4
00802ac4  04 20 9c e5                                      ldr r2, [ip, #4]
00802ac8  04 20 92 e5                                      ldr r2, [r2, #4]
00802acc  02 00 5c e1                                      cmp ip, r2
00802ad0  2b 00 00 0a                                      beq #0x802b84
00802ad4  08 00 9c e5                                      ldr r0, [ip, #8]
00802ad8  00 00 50 e3                                      cmp r0, #0
00802adc  01 00 00 1a                                      bne #0x802ae8
00802ae0  18 00 00 ea                                      b #0x802b48
00802ae4  02 00 a0 e1                                      mov r0, r2
00802ae8  0c 20 90 e5                                      ldr r2, [r0, #0xc]
00802aec  00 00 52 e3                                      cmp r2, #0
00802af0  fb ff ff 1a                                      bne #0x802ae4
00802af4  00 20 a0 e1                                      mov r2, r0
00802af8  04 60 93 e5                                      ldr r6, [r3, #4]
00802afc  10 70 90 e5                                      ldr r7, [r0, #0x10]
00802b00  14 00 90 e5                                      ldr r0, [r0, #0x14]
00802b04  00 80 93 e5                                      ldr r8, [r3]
00802b08  00 00 56 e1                                      cmp r6, r0
00802b0c  db ff ff 9a                                      bls #0x802a80
00802b10  0c 20 a0 e1                                      mov r2, ip
00802b14  08 00 8d e2                                      add r0, sp, #8
00802b18  00 c0 a0 e3                                      mov ip, #0
00802b1c  04 c0 8d e5                                      str ip, [sp, #4]
00802b20  00 c0 8d e5                                      str ip, [sp]
00802b24  7c ff ff eb                                      bl #0x80291c
00802b28  08 30 9d e5                                      ldr r3, [sp, #8]
00802b2c  01 20 a0 e3                                      mov r2, #1
00802b30  04 20 c4 e5                                      strb r2, [r4, #4]
00802b34  00 30 84 e5                                      str r3, [r4]
00802b38  d4 ff ff ea                                      b #0x802a90
00802b3c  07 00 58 e1                                      cmp r8, r7
00802b40  cf ff ff 9a                                      bls #0x802a84
00802b44  f1 ff ff ea                                      b #0x802b10
00802b48  04 00 9c e5                                      ldr r0, [ip, #4]
00802b4c  08 20 90 e5                                      ldr r2, [r0, #8]
00802b50  02 00 5c e1                                      cmp ip, r2
00802b54  01 00 00 0a                                      beq #0x802b60
00802b58  e5 ff ff ea                                      b #0x802af4
00802b5c  02 00 a0 e1                                      mov r0, r2
00802b60  04 20 90 e5                                      ldr r2, [r0, #4]
00802b64  08 50 92 e5                                      ldr r5, [r2, #8]
00802b68  00 00 55 e1                                      cmp r5, r0
00802b6c  fa ff ff 0a                                      beq #0x802b5c
00802b70  00 80 93 e5                                      ldr r8, [r3]
00802b74  04 60 93 e5                                      ldr r6, [r3, #4]
00802b78  10 70 92 e5                                      ldr r7, [r2, #0x10]
00802b7c  14 00 92 e5                                      ldr r0, [r2, #0x14]
00802b80  bc ff ff ea                                      b #0x802a78
00802b84  0c 00 9c e5                                      ldr r0, [ip, #0xc]
00802b88  00 80 93 e5                                      ldr r8, [r3]
00802b8c  04 60 93 e5                                      ldr r6, [r3, #4]
00802b90  00 20 a0 e1                                      mov r2, r0
00802b94  10 70 90 e5                                      ldr r7, [r0, #0x10]
00802b98  14 00 90 e5                                      ldr r0, [r0, #0x14]
00802b9c  b5 ff ff ea                                      b #0x802a78
00802ba0  0c 20 a0 e1                                      mov r2, ip
00802ba4  00 e0 a0 e3                                      mov lr, #0
00802ba8  0c 00 8d e2                                      add r0, sp, #0xc
00802bac  00 50 8d e8                                      stm sp, {ip, lr}
00802bb0  59 ff ff eb                                      bl #0x80291c
00802bb4  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00802bb8  01 20 a0 e3                                      mov r2, #1
00802bbc  04 20 c4 e5                                      strb r2, [r4, #4]
00802bc0  00 30 84 e5                                      str r3, [r4]
00802bc4  b1 ff ff ea                                      b #0x802a90

; FUNCTION 0x00802bc8, declared_size=976, range_size=976, mode=arm
; class-group: std::priv::_Rb_tree<unsigned long long, std::less<unsigned long long>, std::pair<unsigned long long const, tMatchingPeer>, std::priv::_Select1st<std::pair<unsigned long long const, tMatchingPeer> >, std::priv::_MapTraitsT<std::pair<unsigned long long const, tMatchingPeer> >, std::allocator<std::pair<unsigned long long const, tMatchingPeer> > >
; alias: _ZNSt4priv8_Rb_treeIySt4lessIyESt4pairIKy13tMatchingPeerENS_10_Select1stIS6_EENS_11_MapTraitsTIS6_EESaIS6_EE13insert_uniqueENS_17_Rb_tree_iteratorIS6_SA_EERKS6_
; demangled: std::priv::_Rb_tree<unsigned long long, std::less<unsigned long long>, std::pair<unsigned long long const, tMatchingPeer>, std::priv::_Select1st<std::pair<unsigned long long const, tMatchingPeer> >, std::priv::_MapTraitsT<std::pair<unsigned long long const, tMatchingPeer> >, std::allocator<std::pair<unsigned long long const, tMatchingPeer> > >::insert_unique(std::priv::_Rb_tree_iterator<std::pair<unsigned long long const, tMatchingPeer>, std::priv::_MapTraitsT<std::pair<unsigned long long const, tMatchingPeer> > >, std::pair<unsigned long long const, tMatchingPeer> const&)
; decoder-mode: arm
00802bc8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00802bcc  00 40 92 e5                                      ldr r4, [r2]
00802bd0  08 20 91 e5                                      ldr r2, [r1, #8]
00802bd4  2c d0 4d e2                                      sub sp, sp, #0x2c
00802bd8  01 50 a0 e1                                      mov r5, r1
00802bdc  02 00 54 e1                                      cmp r4, r2
00802be0  00 60 a0 e1                                      mov r6, r0
00802be4  59 00 00 0a                                      beq #0x802d50
00802be8  01 00 54 e1                                      cmp r4, r1
00802bec  7f 00 00 0a                                      beq #0x802df0
00802bf0  00 20 d4 e5                                      ldrb r2, [r4]
00802bf4  00 00 52 e3                                      cmp r2, #0
00802bf8  25 00 00 0a                                      beq #0x802c94
00802bfc  08 c0 94 e5                                      ldr ip, [r4, #8]
00802c00  00 00 5c e3                                      cmp ip, #0
00802c04  01 00 00 1a                                      bne #0x802c10
00802c08  29 00 00 ea                                      b #0x802cb4
00802c0c  02 c0 a0 e1                                      mov ip, r2
00802c10  0c 20 9c e5                                      ldr r2, [ip, #0xc]
00802c14  00 00 52 e3                                      cmp r2, #0
00802c18  fb ff ff 1a                                      bne #0x802c0c
00802c1c  04 10 93 e5                                      ldr r1, [r3, #4]
00802c20  14 80 94 e5                                      ldr r8, [r4, #0x14]
00802c24  00 a0 93 e5                                      ldr sl, [r3]
00802c28  10 b0 94 e5                                      ldr fp, [r4, #0x10]
00802c2c  01 00 58 e1                                      cmp r8, r1
00802c30  00 00 a0 e3                                      mov r0, #0
00802c34  12 00 00 9a                                      bls #0x802c84
00802c38  01 00 a0 e3                                      mov r0, #1
00802c3c  70 00 ef e6                                      uxtb r0, r0
00802c40  00 00 50 e3                                      cmp r0, #0
00802c44  2a 00 00 0a                                      beq #0x802cf4
00802c48  14 20 9c e5                                      ldr r2, [ip, #0x14]
00802c4c  01 00 52 e1                                      cmp r2, r1
00802c50  23 00 00 2a                                      bhs #0x802ce4
00802c54  0c e0 9c e5                                      ldr lr, [ip, #0xc]
00802c58  00 00 5e e3                                      cmp lr, #0
00802c5c  9d 00 00 0a                                      beq #0x802ed8
00802c60  00 c0 a0 e3                                      mov ip, #0
00802c64  05 10 a0 e1                                      mov r1, r5
00802c68  04 20 a0 e1                                      mov r2, r4
00802c6c  06 00 a0 e1                                      mov r0, r6
00802c70  10 10 8d e8                                      stm sp, {r4, ip}
00802c74  28 ff ff eb                                      bl #0x80291c
00802c78  06 00 a0 e1                                      mov r0, r6
00802c7c  2c d0 8d e2                                      add sp, sp, #0x2c
00802c80  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00802c84  ec ff ff 1a                                      bne #0x802c3c
00802c88  0a 00 5b e1                                      cmp fp, sl
00802c8c  ea ff ff 9a                                      bls #0x802c3c
00802c90  e8 ff ff ea                                      b #0x802c38
00802c94  04 20 94 e5                                      ldr r2, [r4, #4]
00802c98  04 20 92 e5                                      ldr r2, [r2, #4]
00802c9c  02 00 54 e1                                      cmp r4, r2
00802ca0  0c c0 94 05                                      ldreq ip, [r4, #0xc]
00802ca4  dc ff ff 0a                                      beq #0x802c1c
00802ca8  08 c0 94 e5                                      ldr ip, [r4, #8]
00802cac  00 00 5c e3                                      cmp ip, #0
00802cb0  d6 ff ff 1a                                      bne #0x802c10
00802cb4  04 c0 94 e5                                      ldr ip, [r4, #4]
00802cb8  08 20 9c e5                                      ldr r2, [ip, #8]
00802cbc  02 00 54 e1                                      cmp r4, r2
00802cc0  01 00 00 0a                                      beq #0x802ccc
00802cc4  d4 ff ff ea                                      b #0x802c1c
00802cc8  02 c0 a0 e1                                      mov ip, r2
00802ccc  04 20 9c e5                                      ldr r2, [ip, #4]
00802cd0  08 10 92 e5                                      ldr r1, [r2, #8]
00802cd4  0c 00 51 e1                                      cmp r1, ip
00802cd8  fa ff ff 0a                                      beq #0x802cc8
00802cdc  02 c0 a0 e1                                      mov ip, r2
00802ce0  cd ff ff ea                                      b #0x802c1c
00802ce4  02 00 00 1a                                      bne #0x802cf4
00802ce8  10 20 9c e5                                      ldr r2, [ip, #0x10]
00802cec  0a 00 52 e1                                      cmp r2, sl
00802cf0  d7 ff ff 3a                                      blo #0x802c54
00802cf4  0c 70 94 e5                                      ldr r7, [r4, #0xc]
00802cf8  00 00 57 e3                                      cmp r7, #0
00802cfc  67 00 00 0a                                      beq #0x802ea0
00802d00  07 c0 a0 e1                                      mov ip, r7
00802d04  00 00 00 ea                                      b #0x802d0c
00802d08  02 c0 a0 e1                                      mov ip, r2
00802d0c  08 20 9c e5                                      ldr r2, [ip, #8]
00802d10  00 00 52 e3                                      cmp r2, #0
00802d14  fb ff ff 1a                                      bne #0x802d08
00802d18  00 00 50 e3                                      cmp r0, #0
00802d1c  04 00 00 1a                                      bne #0x802d34
00802d20  08 00 51 e1                                      cmp r1, r8
00802d24  42 00 00 8a                                      bhi #0x802e34
00802d28  3f 00 00 0a                                      beq #0x802e2c
00802d2c  00 40 86 e5                                      str r4, [r6]
00802d30  d0 ff ff ea                                      b #0x802c78
00802d34  03 20 a0 e1                                      mov r2, r3
00802d38  05 10 a0 e1                                      mov r1, r5
00802d3c  08 00 8d e2                                      add r0, sp, #8
00802d40  30 ff ff eb                                      bl #0x802a08
00802d44  08 30 9d e5                                      ldr r3, [sp, #8]
00802d48  00 30 86 e5                                      str r3, [r6]
00802d4c  c9 ff ff ea                                      b #0x802c78
00802d50  10 20 91 e5                                      ldr r2, [r1, #0x10]
00802d54  00 00 52 e3                                      cmp r2, #0
00802d58  81 00 00 0a                                      beq #0x802f64
00802d5c  04 20 93 e5                                      ldr r2, [r3, #4]
00802d60  14 10 94 e5                                      ldr r1, [r4, #0x14]
00802d64  00 00 93 e5                                      ldr r0, [r3]
00802d68  10 c0 94 e5                                      ldr ip, [r4, #0x10]
00802d6c  02 00 51 e1                                      cmp r1, r2
00802d70  ba ff ff 8a                                      bhi #0x802c60
00802d74  5e 00 00 0a                                      beq #0x802ef4
00802d78  01 00 52 e1                                      cmp r2, r1
00802d7c  02 00 00 8a                                      bhi #0x802d8c
00802d80  e9 ff ff 1a                                      bne #0x802d2c
00802d84  0c 00 50 e1                                      cmp r0, ip
00802d88  e7 ff ff 9a                                      bls #0x802d2c
00802d8c  0c e0 94 e5                                      ldr lr, [r4, #0xc]
00802d90  00 00 5e e3                                      cmp lr, #0
00802d94  59 00 00 0a                                      beq #0x802f00
00802d98  0e c0 a0 e1                                      mov ip, lr
00802d9c  00 00 00 ea                                      b #0x802da4
00802da0  01 c0 a0 e1                                      mov ip, r1
00802da4  08 10 9c e5                                      ldr r1, [ip, #8]
00802da8  00 00 51 e3                                      cmp r1, #0
00802dac  fb ff ff 1a                                      bne #0x802da0
00802db0  0c 00 55 e1                                      cmp r5, ip
00802db4  05 10 a0 01                                      moveq r1, r5
00802db8  04 20 a0 01                                      moveq r2, r4
00802dbc  31 00 00 0a                                      beq #0x802e88
00802dc0  14 10 9c e5                                      ldr r1, [ip, #0x14]
00802dc4  10 70 9c e5                                      ldr r7, [ip, #0x10]
00802dc8  02 00 51 e1                                      cmp r1, r2
00802dcc  5b 00 00 8a                                      bhi #0x802f40
00802dd0  58 00 00 0a                                      beq #0x802f38
00802dd4  03 20 a0 e1                                      mov r2, r3
00802dd8  05 10 a0 e1                                      mov r1, r5
00802ddc  18 00 8d e2                                      add r0, sp, #0x18
00802de0  08 ff ff eb                                      bl #0x802a08
00802de4  18 30 9d e5                                      ldr r3, [sp, #0x18]
00802de8  00 30 86 e5                                      str r3, [r6]
00802dec  a1 ff ff ea                                      b #0x802c78
00802df0  0c 20 94 e5                                      ldr r2, [r4, #0xc]
00802df4  04 00 93 e5                                      ldr r0, [r3, #4]
00802df8  00 e0 93 e5                                      ldr lr, [r3]
00802dfc  14 10 92 e5                                      ldr r1, [r2, #0x14]
00802e00  10 c0 92 e5                                      ldr ip, [r2, #0x10]
00802e04  01 00 50 e1                                      cmp r0, r1
00802e08  1d 00 00 8a                                      bhi #0x802e84
00802e0c  1a 00 00 0a                                      beq #0x802e7c
00802e10  03 20 a0 e1                                      mov r2, r3
00802e14  05 10 a0 e1                                      mov r1, r5
00802e18  10 00 8d e2                                      add r0, sp, #0x10
00802e1c  f9 fe ff eb                                      bl #0x802a08
00802e20  10 30 9d e5                                      ldr r3, [sp, #0x10]
00802e24  00 30 86 e5                                      str r3, [r6]
00802e28  92 ff ff ea                                      b #0x802c78
00802e2c  0b 00 5a e1                                      cmp sl, fp
00802e30  bd ff ff 9a                                      bls #0x802d2c
00802e34  0c 00 55 e1                                      cmp r5, ip
00802e38  06 00 00 0a                                      beq #0x802e58
00802e3c  14 20 9c e5                                      ldr r2, [ip, #0x14]
00802e40  01 00 52 e1                                      cmp r2, r1
00802e44  03 00 00 8a                                      bhi #0x802e58
00802e48  b9 ff ff 1a                                      bne #0x802d34
00802e4c  10 20 9c e5                                      ldr r2, [ip, #0x10]
00802e50  0a 00 52 e1                                      cmp r2, sl
00802e54  b6 ff ff 9a                                      bls #0x802d34
00802e58  00 00 57 e3                                      cmp r7, #0
00802e5c  46 00 00 0a                                      beq #0x802f7c
00802e60  00 e0 a0 e3                                      mov lr, #0
00802e64  05 10 a0 e1                                      mov r1, r5
00802e68  0c 20 a0 e1                                      mov r2, ip
00802e6c  06 00 a0 e1                                      mov r0, r6
00802e70  00 50 8d e8                                      stm sp, {ip, lr}
00802e74  a8 fe ff eb                                      bl #0x80291c
00802e78  7e ff ff ea                                      b #0x802c78
00802e7c  0c 00 5e e1                                      cmp lr, ip
00802e80  e2 ff ff 9a                                      bls #0x802e10
00802e84  05 10 a0 e1                                      mov r1, r5
00802e88  00 c0 a0 e3                                      mov ip, #0
00802e8c  06 00 a0 e1                                      mov r0, r6
00802e90  00 c0 8d e5                                      str ip, [sp]
00802e94  04 40 8d e5                                      str r4, [sp, #4]
00802e98  9f fe ff eb                                      bl #0x80291c
00802e9c  75 ff ff ea                                      b #0x802c78
00802ea0  04 20 94 e5                                      ldr r2, [r4, #4]
00802ea4  0c c0 92 e5                                      ldr ip, [r2, #0xc]
00802ea8  0c 00 54 e1                                      cmp r4, ip
00802eac  04 c0 a0 11                                      movne ip, r4
00802eb0  04 00 00 1a                                      bne #0x802ec8
00802eb4  02 c0 a0 e1                                      mov ip, r2
00802eb8  04 20 92 e5                                      ldr r2, [r2, #4]
00802ebc  0c 90 92 e5                                      ldr sb, [r2, #0xc]
00802ec0  09 00 5c e1                                      cmp ip, sb
00802ec4  fa ff ff 0a                                      beq #0x802eb4
00802ec8  0c 90 9c e5                                      ldr sb, [ip, #0xc]
00802ecc  09 00 52 e1                                      cmp r2, sb
00802ed0  02 c0 a0 11                                      movne ip, r2
00802ed4  8f ff ff ea                                      b #0x802d18
00802ed8  05 10 a0 e1                                      mov r1, r5
00802edc  0c 20 a0 e1                                      mov r2, ip
00802ee0  06 00 a0 e1                                      mov r0, r6
00802ee4  00 e0 8d e5                                      str lr, [sp]
00802ee8  04 c0 8d e5                                      str ip, [sp, #4]
00802eec  8a fe ff eb                                      bl #0x80291c
00802ef0  60 ff ff ea                                      b #0x802c78
00802ef4  00 00 5c e1                                      cmp ip, r0
00802ef8  9e ff ff 9a                                      bls #0x802d78
00802efc  57 ff ff ea                                      b #0x802c60
00802f00  04 10 94 e5                                      ldr r1, [r4, #4]
00802f04  0c c0 91 e5                                      ldr ip, [r1, #0xc]
00802f08  0c 00 54 e1                                      cmp r4, ip
00802f0c  04 c0 a0 11                                      movne ip, r4
00802f10  04 00 00 1a                                      bne #0x802f28
00802f14  01 c0 a0 e1                                      mov ip, r1
00802f18  04 10 91 e5                                      ldr r1, [r1, #4]
00802f1c  0c 70 91 e5                                      ldr r7, [r1, #0xc]
00802f20  0c 00 57 e1                                      cmp r7, ip
00802f24  fa ff ff 0a                                      beq #0x802f14
00802f28  0c 70 9c e5                                      ldr r7, [ip, #0xc]
00802f2c  07 00 51 e1                                      cmp r1, r7
00802f30  01 c0 a0 11                                      movne ip, r1
00802f34  9d ff ff ea                                      b #0x802db0
00802f38  00 00 57 e1                                      cmp r7, r0
00802f3c  a4 ff ff 9a                                      bls #0x802dd4
00802f40  00 00 5e e3                                      cmp lr, #0
00802f44  c5 ff ff 1a                                      bne #0x802e60
00802f48  05 10 a0 e1                                      mov r1, r5
00802f4c  04 20 a0 e1                                      mov r2, r4
00802f50  06 00 a0 e1                                      mov r0, r6
00802f54  00 e0 8d e5                                      str lr, [sp]
00802f58  04 40 8d e5                                      str r4, [sp, #4]
00802f5c  6e fe ff eb                                      bl #0x80291c
00802f60  44 ff ff ea                                      b #0x802c78
00802f64  03 20 a0 e1                                      mov r2, r3
00802f68  20 00 8d e2                                      add r0, sp, #0x20
00802f6c  a5 fe ff eb                                      bl #0x802a08
00802f70  20 30 9d e5                                      ldr r3, [sp, #0x20]
00802f74  00 30 86 e5                                      str r3, [r6]
00802f78  3e ff ff ea                                      b #0x802c78
00802f7c  05 10 a0 e1                                      mov r1, r5
00802f80  04 20 a0 e1                                      mov r2, r4
00802f84  06 00 a0 e1                                      mov r0, r6
00802f88  00 70 8d e5                                      str r7, [sp]
00802f8c  04 40 8d e5                                      str r4, [sp, #4]
00802f90  61 fe ff eb                                      bl #0x80291c
00802f94  37 ff ff ea                                      b #0x802c78

; FUNCTION 0x00807290, declared_size=72, range_size=72, mode=arm
; class-group: std::priv::_Rb_tree<unsigned long long, std::less<unsigned long long>, std::pair<unsigned long long const, tMatchingPeer>, std::priv::_Select1st<std::pair<unsigned long long const, tMatchingPeer> >, std::priv::_MapTraitsT<std::pair<unsigned long long const, tMatchingPeer> >, std::allocator<std::pair<unsigned long long const, tMatchingPeer> > >
; alias: _ZNSt4priv8_Rb_treeIySt4lessIyESt4pairIKy13tMatchingPeerENS_10_Select1stIS6_EENS_11_MapTraitsTIS6_EESaIS6_EE5eraseENS_17_Rb_tree_iteratorIS6_SA_EE
; demangled: std::priv::_Rb_tree<unsigned long long, std::less<unsigned long long>, std::pair<unsigned long long const, tMatchingPeer>, std::priv::_Select1st<std::pair<unsigned long long const, tMatchingPeer> >, std::priv::_MapTraitsT<std::pair<unsigned long long const, tMatchingPeer> >, std::allocator<std::pair<unsigned long long const, tMatchingPeer> > >::erase(std::priv::_Rb_tree_iterator<std::pair<unsigned long long const, tMatchingPeer>, std::priv::_MapTraitsT<std::pair<unsigned long long const, tMatchingPeer> > >)
; decoder-mode: arm
00807290  70 40 2d e9                                      push {r4, r5, r6, lr}
00807294  00 40 a0 e1                                      mov r4, r0
00807298  08 20 84 e2                                      add r2, r4, #8
0080729c  00 00 91 e5                                      ldr r0, [r1]
008072a0  0c 30 84 e2                                      add r3, r4, #0xc
008072a4  04 10 84 e2                                      add r1, r4, #4
008072a8  55 bb ec eb                                      bl #0x336004
008072ac  00 50 a0 e1                                      mov r5, r0
008072b0  18 00 80 e2                                      add r0, r0, #0x18
008072b4  e1 ff ff eb                                      bl #0x807240
008072b8  00 00 55 e3                                      cmp r5, #0
008072bc  01 00 00 0a                                      beq #0x8072c8
008072c0  05 00 a0 e1                                      mov r0, r5
008072c4  5d 24 ec eb                                      bl #0x310440
008072c8  10 30 94 e5                                      ldr r3, [r4, #0x10]
008072cc  01 30 43 e2                                      sub r3, r3, #1
008072d0  10 30 84 e5                                      str r3, [r4, #0x10]
008072d4  70 80 bd e8                                      pop {r4, r5, r6, pc}

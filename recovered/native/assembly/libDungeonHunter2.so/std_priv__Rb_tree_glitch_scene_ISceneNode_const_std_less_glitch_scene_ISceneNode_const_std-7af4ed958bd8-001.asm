; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003f1830, declared_size=56, range_size=56, mode=arm
; class-group: std::priv::_Rb_tree<glitch::scene::ISceneNode const*, std::less<glitch::scene::ISceneNode const*>, std::pair<glitch::scene::ISceneNode const* const, GameObject*>, std::priv::_Select1st<std::pair<glitch::scene::ISceneNode const* const, GameObject*> >, std::priv::_MapTraitsT<std::pair<glitch::scene::ISceneNode const* const, GameObject*> >, std::allocator<std::pair<glitch::scene::ISceneNode const* const, GameObject*> > >
; alias: _ZNSt4priv8_Rb_treeIPKN6glitch5scene10ISceneNodeESt4lessIS5_ESt4pairIKS5_P10GameObjectENS_10_Select1stISC_EENS_11_MapTraitsTISC_EESaISC_EE8_M_eraseEPNS_18_Rb_tree_node_baseE
; demangled: std::priv::_Rb_tree<glitch::scene::ISceneNode const*, std::less<glitch::scene::ISceneNode const*>, std::pair<glitch::scene::ISceneNode const* const, GameObject*>, std::priv::_Select1st<std::pair<glitch::scene::ISceneNode const* const, GameObject*> >, std::priv::_MapTraitsT<std::pair<glitch::scene::ISceneNode const* const, GameObject*> >, std::allocator<std::pair<glitch::scene::ISceneNode const* const, GameObject*> > >::_M_erase(std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
003f1830  70 40 2d e9                                      push {r4, r5, r6, lr}
003f1834  00 40 51 e2                                      subs r4, r1, #0
003f1838  00 60 a0 e1                                      mov r6, r0
003f183c  08 00 00 0a                                      beq #0x3f1864
003f1840  0c 10 94 e5                                      ldr r1, [r4, #0xc]
003f1844  06 00 a0 e1                                      mov r0, r6
003f1848  f8 ff ff eb                                      bl #0x3f1830
003f184c  08 50 94 e5                                      ldr r5, [r4, #8]
003f1850  04 00 a0 e1                                      mov r0, r4
003f1854  18 10 a0 e3                                      mov r1, #0x18
003f1858  a8 5d 0c eb                                      bl #0x708f00
003f185c  00 40 55 e2                                      subs r4, r5, #0
003f1860  f6 ff ff 1a                                      bne #0x3f1840
003f1864  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x003f57ac, declared_size=292, range_size=292, mode=arm
; class-group: std::priv::_Rb_tree<glitch::scene::ISceneNode const*, std::less<glitch::scene::ISceneNode const*>, std::pair<glitch::scene::ISceneNode const* const, GameObject*>, std::priv::_Select1st<std::pair<glitch::scene::ISceneNode const* const, GameObject*> >, std::priv::_MapTraitsT<std::pair<glitch::scene::ISceneNode const* const, GameObject*> >, std::allocator<std::pair<glitch::scene::ISceneNode const* const, GameObject*> > >
; alias: _ZNSt4priv8_Rb_treeIPKN6glitch5scene10ISceneNodeESt4lessIS5_ESt4pairIKS5_P10GameObjectENS_10_Select1stISC_EENS_11_MapTraitsTISC_EESaISC_EE9_M_insertEPNS_18_Rb_tree_node_baseERKSC_SK_SK_
; demangled: std::priv::_Rb_tree<glitch::scene::ISceneNode const*, std::less<glitch::scene::ISceneNode const*>, std::pair<glitch::scene::ISceneNode const* const, GameObject*>, std::priv::_Select1st<std::pair<glitch::scene::ISceneNode const* const, GameObject*> >, std::priv::_MapTraitsT<std::pair<glitch::scene::ISceneNode const* const, GameObject*> >, std::allocator<std::pair<glitch::scene::ISceneNode const* const, GameObject*> > >::_M_insert(std::priv::_Rb_tree_node_base*, std::pair<glitch::scene::ISceneNode const* const, GameObject*> const&, std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
003f57ac  02 00 51 e1                                      cmp r1, r2
003f57b0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003f57b4  01 40 a0 e1                                      mov r4, r1
003f57b8  02 70 a0 e1                                      mov r7, r2
003f57bc  00 50 a0 e1                                      mov r5, r0
003f57c0  03 80 a0 e1                                      mov r8, r3
003f57c4  2e 00 00 0a                                      beq #0x3f5884
003f57c8  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
003f57cc  00 00 53 e3                                      cmp r3, #0
003f57d0  17 00 00 0a                                      beq #0x3f5834
003f57d4  04 00 a0 e1                                      mov r0, r4
003f57d8  eb ff ff eb                                      bl #0x3f578c
003f57dc  00 20 98 e5                                      ldr r2, [r8]
003f57e0  00 30 a0 e3                                      mov r3, #0
003f57e4  00 60 a0 e1                                      mov r6, r0
003f57e8  10 20 80 e5                                      str r2, [r0, #0x10]
003f57ec  04 20 98 e5                                      ldr r2, [r8, #4]
003f57f0  0c 30 80 e5                                      str r3, [r0, #0xc]
003f57f4  08 30 80 e5                                      str r3, [r0, #8]
003f57f8  14 20 80 e5                                      str r2, [r0, #0x14]
003f57fc  0c 00 87 e5                                      str r0, [r7, #0xc]
003f5800  0c 30 94 e5                                      ldr r3, [r4, #0xc]
003f5804  03 00 57 e1                                      cmp r7, r3
003f5808  1b 00 00 0a                                      beq #0x3f587c
003f580c  06 00 a0 e1                                      mov r0, r6
003f5810  04 70 86 e5                                      str r7, [r6, #4]
003f5814  04 10 84 e2                                      add r1, r4, #4
003f5818  d0 77 fc eb                                      bl #0x313760
003f581c  10 30 94 e5                                      ldr r3, [r4, #0x10]
003f5820  05 00 a0 e1                                      mov r0, r5
003f5824  01 30 83 e2                                      add r3, r3, #1
003f5828  10 30 84 e5                                      str r3, [r4, #0x10]
003f582c  00 60 85 e5                                      str r6, [r5]
003f5830  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003f5834  18 30 9d e5                                      ldr r3, [sp, #0x18]
003f5838  00 00 53 e3                                      cmp r3, #0
003f583c  1e 00 00 0a                                      beq #0x3f58bc
003f5840  04 00 a0 e1                                      mov r0, r4
003f5844  d0 ff ff eb                                      bl #0x3f578c
003f5848  00 20 98 e5                                      ldr r2, [r8]
003f584c  00 30 a0 e3                                      mov r3, #0
003f5850  00 60 a0 e1                                      mov r6, r0
003f5854  10 20 80 e5                                      str r2, [r0, #0x10]
003f5858  04 20 98 e5                                      ldr r2, [r8, #4]
003f585c  0c 30 80 e5                                      str r3, [r0, #0xc]
003f5860  08 30 80 e5                                      str r3, [r0, #8]
003f5864  14 20 80 e5                                      str r2, [r0, #0x14]
003f5868  08 00 87 e5                                      str r0, [r7, #8]
003f586c  08 30 94 e5                                      ldr r3, [r4, #8]
003f5870  03 00 57 e1                                      cmp r7, r3
003f5874  08 00 84 05                                      streq r0, [r4, #8]
003f5878  e3 ff ff ea                                      b #0x3f580c
003f587c  0c 60 84 e5                                      str r6, [r4, #0xc]
003f5880  e1 ff ff ea                                      b #0x3f580c
003f5884  01 00 a0 e1                                      mov r0, r1
003f5888  bf ff ff eb                                      bl #0x3f578c
003f588c  00 20 98 e5                                      ldr r2, [r8]
003f5890  00 30 a0 e3                                      mov r3, #0
003f5894  00 60 a0 e1                                      mov r6, r0
003f5898  10 20 80 e5                                      str r2, [r0, #0x10]
003f589c  04 20 98 e5                                      ldr r2, [r8, #4]
003f58a0  0c 30 80 e5                                      str r3, [r0, #0xc]
003f58a4  08 30 80 e5                                      str r3, [r0, #8]
003f58a8  14 20 80 e5                                      str r2, [r0, #0x14]
003f58ac  08 00 84 e5                                      str r0, [r4, #8]
003f58b0  04 00 84 e5                                      str r0, [r4, #4]
003f58b4  0c 00 84 e5                                      str r0, [r4, #0xc]
003f58b8  d3 ff ff ea                                      b #0x3f580c
003f58bc  00 20 98 e5                                      ldr r2, [r8]
003f58c0  10 30 97 e5                                      ldr r3, [r7, #0x10]
003f58c4  03 00 52 e1                                      cmp r2, r3
003f58c8  c1 ff ff 2a                                      bhs #0x3f57d4
003f58cc  db ff ff ea                                      b #0x3f5840

; FUNCTION 0x003f58d0, declared_size=392, range_size=392, mode=arm
; class-group: std::priv::_Rb_tree<glitch::scene::ISceneNode const*, std::less<glitch::scene::ISceneNode const*>, std::pair<glitch::scene::ISceneNode const* const, GameObject*>, std::priv::_Select1st<std::pair<glitch::scene::ISceneNode const* const, GameObject*> >, std::priv::_MapTraitsT<std::pair<glitch::scene::ISceneNode const* const, GameObject*> >, std::allocator<std::pair<glitch::scene::ISceneNode const* const, GameObject*> > >
; alias: _ZNSt4priv8_Rb_treeIPKN6glitch5scene10ISceneNodeESt4lessIS5_ESt4pairIKS5_P10GameObjectENS_10_Select1stISC_EENS_11_MapTraitsTISC_EESaISC_EE13insert_uniqueERKSC_
; demangled: std::priv::_Rb_tree<glitch::scene::ISceneNode const*, std::less<glitch::scene::ISceneNode const*>, std::pair<glitch::scene::ISceneNode const* const, GameObject*>, std::priv::_Select1st<std::pair<glitch::scene::ISceneNode const* const, GameObject*> >, std::priv::_MapTraitsT<std::pair<glitch::scene::ISceneNode const* const, GameObject*> >, std::allocator<std::pair<glitch::scene::ISceneNode const* const, GameObject*> > >::insert_unique(std::pair<glitch::scene::ISceneNode const* const, GameObject*> const&)
; decoder-mode: arm
003f58d0  70 40 2d e9                                      push {r4, r5, r6, lr}
003f58d4  04 c0 91 e5                                      ldr ip, [r1, #4]
003f58d8  10 d0 4d e2                                      sub sp, sp, #0x10
003f58dc  00 40 a0 e1                                      mov r4, r0
003f58e0  00 00 5c e3                                      cmp ip, #0
003f58e4  02 30 a0 e1                                      mov r3, r2
003f58e8  01 c0 a0 01                                      moveq ip, r1
003f58ec  15 00 00 0a                                      beq #0x3f5948
003f58f0  00 60 92 e5                                      ldr r6, [r2]
003f58f4  00 00 00 ea                                      b #0x3f58fc
003f58f8  02 c0 a0 e1                                      mov ip, r2
003f58fc  10 00 9c e5                                      ldr r0, [ip, #0x10]
003f5900  01 50 a0 e3                                      mov r5, #1
003f5904  06 00 50 e1                                      cmp r0, r6
003f5908  08 20 9c 85                                      ldrhi r2, [ip, #8]
003f590c  0c 20 9c 95                                      ldrls r2, [ip, #0xc]
003f5910  00 50 a0 93                                      movls r5, #0
003f5914  00 00 52 e3                                      cmp r2, #0
003f5918  f6 ff ff 1a                                      bne #0x3f58f8
003f591c  00 00 55 e3                                      cmp r5, #0
003f5920  0c 50 a0 01                                      moveq r5, ip
003f5924  07 00 00 1a                                      bne #0x3f5948
003f5928  00 00 56 e1                                      cmp r6, r0
003f592c  00 30 a0 93                                      movls r3, #0
003f5930  00 50 84 95                                      strls r5, [r4]
003f5934  04 30 c4 95                                      strbls r3, [r4, #4]
003f5938  1c 00 00 8a                                      bhi #0x3f59b0
003f593c  04 00 a0 e1                                      mov r0, r4
003f5940  10 d0 8d e2                                      add sp, sp, #0x10
003f5944  70 80 bd e8                                      pop {r4, r5, r6, pc}
003f5948  08 20 91 e5                                      ldr r2, [r1, #8]
003f594c  02 00 5c e1                                      cmp ip, r2
003f5950  36 00 00 0a                                      beq #0x3f5a30
003f5954  00 20 dc e5                                      ldrb r2, [ip]
003f5958  00 00 52 e3                                      cmp r2, #0
003f595c  03 00 00 1a                                      bne #0x3f5970
003f5960  04 20 9c e5                                      ldr r2, [ip, #4]
003f5964  04 20 92 e5                                      ldr r2, [r2, #4]
003f5968  02 00 5c e1                                      cmp ip, r2
003f596c  2a 00 00 0a                                      beq #0x3f5a1c
003f5970  08 00 9c e5                                      ldr r0, [ip, #8]
003f5974  00 00 50 e3                                      cmp r0, #0
003f5978  01 00 00 1a                                      bne #0x3f5984
003f597c  16 00 00 ea                                      b #0x3f59dc
003f5980  02 00 a0 e1                                      mov r0, r2
003f5984  0c 20 90 e5                                      ldr r2, [r0, #0xc]
003f5988  00 00 52 e3                                      cmp r2, #0
003f598c  fb ff ff 1a                                      bne #0x3f5980
003f5990  00 60 93 e5                                      ldr r6, [r3]
003f5994  00 50 a0 e1                                      mov r5, r0
003f5998  10 00 90 e5                                      ldr r0, [r0, #0x10]
003f599c  00 00 56 e1                                      cmp r6, r0
003f59a0  00 30 a0 93                                      movls r3, #0
003f59a4  00 50 84 95                                      strls r5, [r4]
003f59a8  04 30 c4 95                                      strbls r3, [r4, #4]
003f59ac  e2 ff ff 9a                                      bls #0x3f593c
003f59b0  0c 20 a0 e1                                      mov r2, ip
003f59b4  08 00 8d e2                                      add r0, sp, #8
003f59b8  00 c0 a0 e3                                      mov ip, #0
003f59bc  04 c0 8d e5                                      str ip, [sp, #4]
003f59c0  00 c0 8d e5                                      str ip, [sp]
003f59c4  78 ff ff eb                                      bl #0x3f57ac
003f59c8  08 30 9d e5                                      ldr r3, [sp, #8]
003f59cc  01 20 a0 e3                                      mov r2, #1
003f59d0  04 20 c4 e5                                      strb r2, [r4, #4]
003f59d4  00 30 84 e5                                      str r3, [r4]
003f59d8  d7 ff ff ea                                      b #0x3f593c
003f59dc  04 20 9c e5                                      ldr r2, [ip, #4]
003f59e0  08 00 92 e5                                      ldr r0, [r2, #8]
003f59e4  00 00 5c e1                                      cmp ip, r0
003f59e8  02 50 a0 11                                      movne r5, r2
003f59ec  00 60 93 15                                      ldrne r6, [r3]
003f59f0  10 00 92 15                                      ldrne r0, [r2, #0x10]
003f59f4  01 00 00 0a                                      beq #0x3f5a00
003f59f8  ca ff ff ea                                      b #0x3f5928
003f59fc  05 20 a0 e1                                      mov r2, r5
003f5a00  04 50 92 e5                                      ldr r5, [r2, #4]
003f5a04  08 00 95 e5                                      ldr r0, [r5, #8]
003f5a08  02 00 50 e1                                      cmp r0, r2
003f5a0c  fa ff ff 0a                                      beq #0x3f59fc
003f5a10  00 60 93 e5                                      ldr r6, [r3]
003f5a14  10 00 95 e5                                      ldr r0, [r5, #0x10]
003f5a18  c2 ff ff ea                                      b #0x3f5928
003f5a1c  0c 20 9c e5                                      ldr r2, [ip, #0xc]
003f5a20  00 60 93 e5                                      ldr r6, [r3]
003f5a24  02 50 a0 e1                                      mov r5, r2
003f5a28  10 00 92 e5                                      ldr r0, [r2, #0x10]
003f5a2c  bd ff ff ea                                      b #0x3f5928
003f5a30  0c 20 a0 e1                                      mov r2, ip
003f5a34  00 e0 a0 e3                                      mov lr, #0
003f5a38  0c 00 8d e2                                      add r0, sp, #0xc
003f5a3c  00 50 8d e8                                      stm sp, {ip, lr}
003f5a40  59 ff ff eb                                      bl #0x3f57ac
003f5a44  0c 30 9d e5                                      ldr r3, [sp, #0xc]
003f5a48  01 20 a0 e3                                      mov r2, #1
003f5a4c  04 20 c4 e5                                      strb r2, [r4, #4]
003f5a50  00 30 84 e5                                      str r3, [r4]
003f5a54  b8 ff ff ea                                      b #0x3f593c

; FUNCTION 0x003f5a58, declared_size=884, range_size=884, mode=arm
; class-group: std::priv::_Rb_tree<glitch::scene::ISceneNode const*, std::less<glitch::scene::ISceneNode const*>, std::pair<glitch::scene::ISceneNode const* const, GameObject*>, std::priv::_Select1st<std::pair<glitch::scene::ISceneNode const* const, GameObject*> >, std::priv::_MapTraitsT<std::pair<glitch::scene::ISceneNode const* const, GameObject*> >, std::allocator<std::pair<glitch::scene::ISceneNode const* const, GameObject*> > >
; alias: _ZNSt4priv8_Rb_treeIPKN6glitch5scene10ISceneNodeESt4lessIS5_ESt4pairIKS5_P10GameObjectENS_10_Select1stISC_EENS_11_MapTraitsTISC_EESaISC_EE13insert_uniqueENS_17_Rb_tree_iteratorISC_SG_EERKSC_
; demangled: std::priv::_Rb_tree<glitch::scene::ISceneNode const*, std::less<glitch::scene::ISceneNode const*>, std::pair<glitch::scene::ISceneNode const* const, GameObject*>, std::priv::_Select1st<std::pair<glitch::scene::ISceneNode const* const, GameObject*> >, std::priv::_MapTraitsT<std::pair<glitch::scene::ISceneNode const* const, GameObject*> >, std::allocator<std::pair<glitch::scene::ISceneNode const* const, GameObject*> > >::insert_unique(std::priv::_Rb_tree_iterator<std::pair<glitch::scene::ISceneNode const* const, GameObject*>, std::priv::_MapTraitsT<std::pair<glitch::scene::ISceneNode const* const, GameObject*> > >, std::pair<glitch::scene::ISceneNode const* const, GameObject*> const&)
; decoder-mode: arm
003f5a58  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
003f5a5c  00 40 92 e5                                      ldr r4, [r2]
003f5a60  08 20 91 e5                                      ldr r2, [r1, #8]
003f5a64  2c d0 4d e2                                      sub sp, sp, #0x2c
003f5a68  01 50 a0 e1                                      mov r5, r1
003f5a6c  02 00 54 e1                                      cmp r4, r2
003f5a70  00 70 a0 e1                                      mov r7, r0
003f5a74  03 60 a0 e1                                      mov r6, r3
003f5a78  5a 00 00 0a                                      beq #0x3f5be8
003f5a7c  01 00 54 e1                                      cmp r4, r1
003f5a80  78 00 00 0a                                      beq #0x3f5c68
003f5a84  00 30 d4 e5                                      ldrb r3, [r4]
003f5a88  00 00 53 e3                                      cmp r3, #0
003f5a8c  3a 00 00 0a                                      beq #0x3f5b7c
003f5a90  08 c0 94 e5                                      ldr ip, [r4, #8]
003f5a94  00 00 5c e3                                      cmp ip, #0
003f5a98  01 00 00 1a                                      bne #0x3f5aa4
003f5a9c  3e 00 00 ea                                      b #0x3f5b9c
003f5aa0  03 c0 a0 e1                                      mov ip, r3
003f5aa4  0c 30 9c e5                                      ldr r3, [ip, #0xc]
003f5aa8  00 00 53 e3                                      cmp r3, #0
003f5aac  fb ff ff 1a                                      bne #0x3f5aa0
003f5ab0  00 20 96 e5                                      ldr r2, [r6]
003f5ab4  10 00 94 e5                                      ldr r0, [r4, #0x10]
003f5ab8  00 00 52 e1                                      cmp r2, r0
003f5abc  00 10 a0 23                                      movhs r1, #0
003f5ac0  01 10 a0 33                                      movlo r1, #1
003f5ac4  00 00 51 e3                                      cmp r1, #0
003f5ac8  1b 00 00 1a                                      bne #0x3f5b3c
003f5acc  0c 80 94 e5                                      ldr r8, [r4, #0xc]
003f5ad0  00 00 58 e3                                      cmp r8, #0
003f5ad4  7d 00 00 0a                                      beq #0x3f5cd0
003f5ad8  08 c0 a0 e1                                      mov ip, r8
003f5adc  00 00 00 ea                                      b #0x3f5ae4
003f5ae0  03 c0 a0 e1                                      mov ip, r3
003f5ae4  08 30 9c e5                                      ldr r3, [ip, #8]
003f5ae8  00 00 53 e3                                      cmp r3, #0
003f5aec  fb ff ff 1a                                      bne #0x3f5ae0
003f5af0  00 00 51 e3                                      cmp r1, #0
003f5af4  34 00 00 1a                                      bne #0x3f5bcc
003f5af8  00 00 52 e1                                      cmp r2, r0
003f5afc  63 00 00 9a                                      bls #0x3f5c90
003f5b00  0c 00 55 e1                                      cmp r5, ip
003f5b04  02 00 00 0a                                      beq #0x3f5b14
003f5b08  10 30 9c e5                                      ldr r3, [ip, #0x10]
003f5b0c  03 00 52 e1                                      cmp r2, r3
003f5b10  2d 00 00 2a                                      bhs #0x3f5bcc
003f5b14  00 00 58 e3                                      cmp r8, #0
003f5b18  4a 00 00 1a                                      bne #0x3f5c48
003f5b1c  05 10 a0 e1                                      mov r1, r5
003f5b20  04 20 a0 e1                                      mov r2, r4
003f5b24  06 30 a0 e1                                      mov r3, r6
003f5b28  07 00 a0 e1                                      mov r0, r7
003f5b2c  00 80 8d e5                                      str r8, [sp]
003f5b30  04 40 8d e5                                      str r4, [sp, #4]
003f5b34  1c ff ff eb                                      bl #0x3f57ac
003f5b38  0c 00 00 ea                                      b #0x3f5b70
003f5b3c  10 30 9c e5                                      ldr r3, [ip, #0x10]
003f5b40  03 00 52 e1                                      cmp r2, r3
003f5b44  e0 ff ff 9a                                      bls #0x3f5acc
003f5b48  0c e0 9c e5                                      ldr lr, [ip, #0xc]
003f5b4c  00 00 5e e3                                      cmp lr, #0
003f5b50  56 00 00 0a                                      beq #0x3f5cb0
003f5b54  00 c0 a0 e3                                      mov ip, #0
003f5b58  05 10 a0 e1                                      mov r1, r5
003f5b5c  04 20 a0 e1                                      mov r2, r4
003f5b60  06 30 a0 e1                                      mov r3, r6
003f5b64  07 00 a0 e1                                      mov r0, r7
003f5b68  10 10 8d e8                                      stm sp, {r4, ip}
003f5b6c  0e ff ff eb                                      bl #0x3f57ac
003f5b70  07 00 a0 e1                                      mov r0, r7
003f5b74  2c d0 8d e2                                      add sp, sp, #0x2c
003f5b78  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
003f5b7c  04 30 94 e5                                      ldr r3, [r4, #4]
003f5b80  04 30 93 e5                                      ldr r3, [r3, #4]
003f5b84  03 00 54 e1                                      cmp r4, r3
003f5b88  0c c0 94 05                                      ldreq ip, [r4, #0xc]
003f5b8c  c7 ff ff 0a                                      beq #0x3f5ab0
003f5b90  08 c0 94 e5                                      ldr ip, [r4, #8]
003f5b94  00 00 5c e3                                      cmp ip, #0
003f5b98  c1 ff ff 1a                                      bne #0x3f5aa4
003f5b9c  04 c0 94 e5                                      ldr ip, [r4, #4]
003f5ba0  08 30 9c e5                                      ldr r3, [ip, #8]
003f5ba4  03 00 54 e1                                      cmp r4, r3
003f5ba8  01 00 00 0a                                      beq #0x3f5bb4
003f5bac  bf ff ff ea                                      b #0x3f5ab0
003f5bb0  03 c0 a0 e1                                      mov ip, r3
003f5bb4  04 30 9c e5                                      ldr r3, [ip, #4]
003f5bb8  08 20 93 e5                                      ldr r2, [r3, #8]
003f5bbc  0c 00 52 e1                                      cmp r2, ip
003f5bc0  fa ff ff 0a                                      beq #0x3f5bb0
003f5bc4  03 c0 a0 e1                                      mov ip, r3
003f5bc8  b8 ff ff ea                                      b #0x3f5ab0
003f5bcc  05 10 a0 e1                                      mov r1, r5
003f5bd0  06 20 a0 e1                                      mov r2, r6
003f5bd4  08 00 8d e2                                      add r0, sp, #8
003f5bd8  3c ff ff eb                                      bl #0x3f58d0
003f5bdc  08 30 9d e5                                      ldr r3, [sp, #8]
003f5be0  00 30 87 e5                                      str r3, [r7]
003f5be4  e1 ff ff ea                                      b #0x3f5b70
003f5be8  10 20 91 e5                                      ldr r2, [r1, #0x10]
003f5bec  00 00 52 e3                                      cmp r2, #0
003f5bf0  52 00 00 0a                                      beq #0x3f5d40
003f5bf4  00 20 93 e5                                      ldr r2, [r3]
003f5bf8  10 c0 94 e5                                      ldr ip, [r4, #0x10]
003f5bfc  0c 00 52 e1                                      cmp r2, ip
003f5c00  54 00 00 3a                                      blo #0x3f5d58
003f5c04  21 00 00 9a                                      bls #0x3f5c90
003f5c08  0c e0 94 e5                                      ldr lr, [r4, #0xc]
003f5c0c  00 00 5e e3                                      cmp lr, #0
003f5c10  3c 00 00 0a                                      beq #0x3f5d08
003f5c14  0e c0 a0 e1                                      mov ip, lr
003f5c18  00 00 00 ea                                      b #0x3f5c20
003f5c1c  03 c0 a0 e1                                      mov ip, r3
003f5c20  08 30 9c e5                                      ldr r3, [ip, #8]
003f5c24  00 00 53 e3                                      cmp r3, #0
003f5c28  fb ff ff 1a                                      bne #0x3f5c1c
003f5c2c  0c 00 55 e1                                      cmp r5, ip
003f5c30  5c 00 00 0a                                      beq #0x3f5da8
003f5c34  10 30 9c e5                                      ldr r3, [ip, #0x10]
003f5c38  03 00 52 e1                                      cmp r2, r3
003f5c3c  4a 00 00 2a                                      bhs #0x3f5d6c
003f5c40  00 00 5e e3                                      cmp lr, #0
003f5c44  4f 00 00 0a                                      beq #0x3f5d88
003f5c48  00 e0 a0 e3                                      mov lr, #0
003f5c4c  05 10 a0 e1                                      mov r1, r5
003f5c50  0c 20 a0 e1                                      mov r2, ip
003f5c54  06 30 a0 e1                                      mov r3, r6
003f5c58  07 00 a0 e1                                      mov r0, r7
003f5c5c  00 50 8d e8                                      stm sp, {ip, lr}
003f5c60  d1 fe ff eb                                      bl #0x3f57ac
003f5c64  c1 ff ff ea                                      b #0x3f5b70
003f5c68  0c 20 94 e5                                      ldr r2, [r4, #0xc]
003f5c6c  00 c0 93 e5                                      ldr ip, [r3]
003f5c70  10 e0 92 e5                                      ldr lr, [r2, #0x10]
003f5c74  0c 00 5e e1                                      cmp lr, ip
003f5c78  06 00 00 2a                                      bhs #0x3f5c98
003f5c7c  00 c0 a0 e3                                      mov ip, #0
003f5c80  00 c0 8d e5                                      str ip, [sp]
003f5c84  04 40 8d e5                                      str r4, [sp, #4]
003f5c88  c7 fe ff eb                                      bl #0x3f57ac
003f5c8c  b7 ff ff ea                                      b #0x3f5b70
003f5c90  00 40 87 e5                                      str r4, [r7]
003f5c94  b5 ff ff ea                                      b #0x3f5b70
003f5c98  03 20 a0 e1                                      mov r2, r3
003f5c9c  10 00 8d e2                                      add r0, sp, #0x10
003f5ca0  0a ff ff eb                                      bl #0x3f58d0
003f5ca4  10 30 9d e5                                      ldr r3, [sp, #0x10]
003f5ca8  00 30 87 e5                                      str r3, [r7]
003f5cac  af ff ff ea                                      b #0x3f5b70
003f5cb0  05 10 a0 e1                                      mov r1, r5
003f5cb4  0c 20 a0 e1                                      mov r2, ip
003f5cb8  06 30 a0 e1                                      mov r3, r6
003f5cbc  07 00 a0 e1                                      mov r0, r7
003f5cc0  00 e0 8d e5                                      str lr, [sp]
003f5cc4  04 c0 8d e5                                      str ip, [sp, #4]
003f5cc8  b7 fe ff eb                                      bl #0x3f57ac
003f5ccc  a7 ff ff ea                                      b #0x3f5b70
003f5cd0  04 30 94 e5                                      ldr r3, [r4, #4]
003f5cd4  0c c0 93 e5                                      ldr ip, [r3, #0xc]
003f5cd8  0c 00 54 e1                                      cmp r4, ip
003f5cdc  04 c0 a0 11                                      movne ip, r4
003f5ce0  04 00 00 1a                                      bne #0x3f5cf8
003f5ce4  03 c0 a0 e1                                      mov ip, r3
003f5ce8  04 30 93 e5                                      ldr r3, [r3, #4]
003f5cec  0c a0 93 e5                                      ldr sl, [r3, #0xc]
003f5cf0  0a 00 5c e1                                      cmp ip, sl
003f5cf4  fa ff ff 0a                                      beq #0x3f5ce4
003f5cf8  0c a0 9c e5                                      ldr sl, [ip, #0xc]
003f5cfc  0a 00 53 e1                                      cmp r3, sl
003f5d00  03 c0 a0 11                                      movne ip, r3
003f5d04  79 ff ff ea                                      b #0x3f5af0
003f5d08  04 30 94 e5                                      ldr r3, [r4, #4]
003f5d0c  0c 10 93 e5                                      ldr r1, [r3, #0xc]
003f5d10  01 00 54 e1                                      cmp r4, r1
003f5d14  04 c0 a0 11                                      movne ip, r4
003f5d18  04 00 00 1a                                      bne #0x3f5d30
003f5d1c  03 c0 a0 e1                                      mov ip, r3
003f5d20  04 30 93 e5                                      ldr r3, [r3, #4]
003f5d24  0c 10 93 e5                                      ldr r1, [r3, #0xc]
003f5d28  0c 00 51 e1                                      cmp r1, ip
003f5d2c  fa ff ff 0a                                      beq #0x3f5d1c
003f5d30  0c 10 9c e5                                      ldr r1, [ip, #0xc]
003f5d34  01 00 53 e1                                      cmp r3, r1
003f5d38  03 c0 a0 11                                      movne ip, r3
003f5d3c  ba ff ff ea                                      b #0x3f5c2c
003f5d40  03 20 a0 e1                                      mov r2, r3
003f5d44  20 00 8d e2                                      add r0, sp, #0x20
003f5d48  e0 fe ff eb                                      bl #0x3f58d0
003f5d4c  20 30 9d e5                                      ldr r3, [sp, #0x20]
003f5d50  00 30 87 e5                                      str r3, [r7]
003f5d54  85 ff ff ea                                      b #0x3f5b70
003f5d58  00 c0 a0 e3                                      mov ip, #0
003f5d5c  04 20 a0 e1                                      mov r2, r4
003f5d60  10 10 8d e8                                      stm sp, {r4, ip}
003f5d64  90 fe ff eb                                      bl #0x3f57ac
003f5d68  80 ff ff ea                                      b #0x3f5b70
003f5d6c  05 10 a0 e1                                      mov r1, r5
003f5d70  06 20 a0 e1                                      mov r2, r6
003f5d74  18 00 8d e2                                      add r0, sp, #0x18
003f5d78  d4 fe ff eb                                      bl #0x3f58d0
003f5d7c  18 30 9d e5                                      ldr r3, [sp, #0x18]
003f5d80  00 30 87 e5                                      str r3, [r7]
003f5d84  79 ff ff ea                                      b #0x3f5b70
003f5d88  05 10 a0 e1                                      mov r1, r5
003f5d8c  04 20 a0 e1                                      mov r2, r4
003f5d90  06 30 a0 e1                                      mov r3, r6
003f5d94  07 00 a0 e1                                      mov r0, r7
003f5d98  00 e0 8d e5                                      str lr, [sp]
003f5d9c  04 40 8d e5                                      str r4, [sp, #4]
003f5da0  81 fe ff eb                                      bl #0x3f57ac
003f5da4  71 ff ff ea                                      b #0x3f5b70
003f5da8  00 c0 a0 e3                                      mov ip, #0
003f5dac  05 10 a0 e1                                      mov r1, r5
003f5db0  04 20 a0 e1                                      mov r2, r4
003f5db4  06 30 a0 e1                                      mov r3, r6
003f5db8  07 00 a0 e1                                      mov r0, r7
003f5dbc  00 c0 8d e5                                      str ip, [sp]
003f5dc0  04 40 8d e5                                      str r4, [sp, #4]
003f5dc4  78 fe ff eb                                      bl #0x3f57ac
003f5dc8  68 ff ff ea                                      b #0x3f5b70

; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005a3df4, declared_size=128, range_size=128, mode=arm
; class-group: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, std::vector<unsigned int, std::allocator<unsigned int> > >, std::priv::_Select1st<std::pair<unsigned int const, std::vector<unsigned int, std::allocator<unsigned int> > > >, std::priv::_MapTraitsT<std::pair<unsigned int const, std::vector<unsigned int, std::allocator<unsigned int> > > >, std::allocator<std::pair<unsigned int const, std::vector<unsigned int, std::allocator<unsigned int> > > > >
; alias: _ZNSt4priv8_Rb_treeIjSt4lessIjESt4pairIKjSt6vectorIjSaIjEEENS_10_Select1stIS8_EENS_11_MapTraitsTIS8_EESaIS8_EE8_M_eraseEPNS_18_Rb_tree_node_baseE
; demangled: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, std::vector<unsigned int, std::allocator<unsigned int> > >, std::priv::_Select1st<std::pair<unsigned int const, std::vector<unsigned int, std::allocator<unsigned int> > > >, std::priv::_MapTraitsT<std::pair<unsigned int const, std::vector<unsigned int, std::allocator<unsigned int> > > >, std::allocator<std::pair<unsigned int const, std::vector<unsigned int, std::allocator<unsigned int> > > > >::_M_erase(std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
005a3df4  70 40 2d e9                                      push {r4, r5, r6, lr}
005a3df8  00 40 51 e2                                      subs r4, r1, #0
005a3dfc  00 60 a0 e1                                      mov r6, r0
005a3e00  06 00 00 1a                                      bne #0x5a3e20
005a3e04  19 00 00 ea                                      b #0x5a3e70
005a3e08  3c 94 05 eb                                      bl #0x708f00
005a3e0c  04 00 a0 e1                                      mov r0, r4
005a3e10  20 10 a0 e3                                      mov r1, #0x20
005a3e14  39 94 05 eb                                      bl #0x708f00
005a3e18  00 40 55 e2                                      subs r4, r5, #0
005a3e1c  13 00 00 0a                                      beq #0x5a3e70
005a3e20  06 00 a0 e1                                      mov r0, r6
005a3e24  0c 10 94 e5                                      ldr r1, [r4, #0xc]
005a3e28  f1 ff ff eb                                      bl #0x5a3df4
005a3e2c  14 30 94 e5                                      ldr r3, [r4, #0x14]
005a3e30  08 50 94 e5                                      ldr r5, [r4, #8]
005a3e34  14 20 84 e2                                      add r2, r4, #0x14
005a3e38  00 00 53 e3                                      cmp r3, #0
005a3e3c  03 00 a0 e1                                      mov r0, r3
005a3e40  f1 ff ff 0a                                      beq #0x5a3e0c
005a3e44  08 10 92 e5                                      ldr r1, [r2, #8]
005a3e48  01 10 63 e0                                      rsb r1, r3, r1
005a3e4c  03 10 c1 e3                                      bic r1, r1, #3
005a3e50  80 00 51 e3                                      cmp r1, #0x80
005a3e54  eb ff ff 9a                                      bls #0x5a3e08
005a3e58  14 a9 f5 eb                                      bl #0x30e2b0
005a3e5c  04 00 a0 e1                                      mov r0, r4
005a3e60  20 10 a0 e3                                      mov r1, #0x20
005a3e64  25 94 05 eb                                      bl #0x708f00
005a3e68  00 40 55 e2                                      subs r4, r5, #0
005a3e6c  eb ff ff 1a                                      bne #0x5a3e20
005a3e70  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x005a5128, declared_size=76, range_size=76, mode=arm
; class-group: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, std::vector<unsigned int, std::allocator<unsigned int> > >, std::priv::_Select1st<std::pair<unsigned int const, std::vector<unsigned int, std::allocator<unsigned int> > > >, std::priv::_MapTraitsT<std::pair<unsigned int const, std::vector<unsigned int, std::allocator<unsigned int> > > >, std::allocator<std::pair<unsigned int const, std::vector<unsigned int, std::allocator<unsigned int> > > > >
; alias: _ZNSt4priv8_Rb_treeIjSt4lessIjESt4pairIKjSt6vectorIjSaIjEEENS_10_Select1stIS8_EENS_11_MapTraitsTIS8_EESaIS8_EE14_M_create_nodeERKS8_
; demangled: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, std::vector<unsigned int, std::allocator<unsigned int> > >, std::priv::_Select1st<std::pair<unsigned int const, std::vector<unsigned int, std::allocator<unsigned int> > > >, std::priv::_MapTraitsT<std::pair<unsigned int const, std::vector<unsigned int, std::allocator<unsigned int> > > >, std::allocator<std::pair<unsigned int const, std::vector<unsigned int, std::allocator<unsigned int> > > > >::_M_create_node(std::pair<unsigned int const, std::vector<unsigned int, std::allocator<unsigned int> > > const&)
; decoder-mode: arm
005a5128  30 40 2d e9                                      push {r4, r5, lr}
005a512c  0c d0 4d e2                                      sub sp, sp, #0xc
005a5130  08 00 8d e2                                      add r0, sp, #8
005a5134  20 30 a0 e3                                      mov r3, #0x20
005a5138  04 30 20 e5                                      str r3, [r0, #-4]!
005a513c  01 50 a0 e1                                      mov r5, r1
005a5140  5e 8f 05 eb                                      bl #0x708ec0
005a5144  05 10 a0 e1                                      mov r1, r5
005a5148  04 30 91 e4                                      ldr r3, [r1], #4
005a514c  00 40 a0 e1                                      mov r4, r0
005a5150  14 00 80 e2                                      add r0, r0, #0x14
005a5154  10 30 84 e5                                      str r3, [r4, #0x10]
005a5158  1d fe ff eb                                      bl #0x5a49d4
005a515c  00 30 a0 e3                                      mov r3, #0
005a5160  0c 30 84 e5                                      str r3, [r4, #0xc]
005a5164  08 30 84 e5                                      str r3, [r4, #8]
005a5168  04 00 a0 e1                                      mov r0, r4
005a516c  0c d0 8d e2                                      add sp, sp, #0xc
005a5170  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x005a5174, declared_size=216, range_size=216, mode=arm
; class-group: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, std::vector<unsigned int, std::allocator<unsigned int> > >, std::priv::_Select1st<std::pair<unsigned int const, std::vector<unsigned int, std::allocator<unsigned int> > > >, std::priv::_MapTraitsT<std::pair<unsigned int const, std::vector<unsigned int, std::allocator<unsigned int> > > >, std::allocator<std::pair<unsigned int const, std::vector<unsigned int, std::allocator<unsigned int> > > > >
; alias: _ZNSt4priv8_Rb_treeIjSt4lessIjESt4pairIKjSt6vectorIjSaIjEEENS_10_Select1stIS8_EENS_11_MapTraitsTIS8_EESaIS8_EE9_M_insertEPNS_18_Rb_tree_node_baseERKS8_SG_SG_
; demangled: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, std::vector<unsigned int, std::allocator<unsigned int> > >, std::priv::_Select1st<std::pair<unsigned int const, std::vector<unsigned int, std::allocator<unsigned int> > > >, std::priv::_MapTraitsT<std::pair<unsigned int const, std::vector<unsigned int, std::allocator<unsigned int> > > >, std::allocator<std::pair<unsigned int const, std::vector<unsigned int, std::allocator<unsigned int> > > > >::_M_insert(std::priv::_Rb_tree_node_base*, std::pair<unsigned int const, std::vector<unsigned int, std::allocator<unsigned int> > > const&, std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
005a5174  02 00 51 e1                                      cmp r1, r2
005a5178  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005a517c  01 40 a0 e1                                      mov r4, r1
005a5180  02 50 a0 e1                                      mov r5, r2
005a5184  00 60 a0 e1                                      mov r6, r0
005a5188  22 00 00 0a                                      beq #0x5a5218
005a518c  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
005a5190  00 00 52 e3                                      cmp r2, #0
005a5194  11 00 00 0a                                      beq #0x5a51e0
005a5198  03 10 a0 e1                                      mov r1, r3
005a519c  04 00 a0 e1                                      mov r0, r4
005a51a0  e0 ff ff eb                                      bl #0x5a5128
005a51a4  0c 00 85 e5                                      str r0, [r5, #0xc]
005a51a8  0c 30 94 e5                                      ldr r3, [r4, #0xc]
005a51ac  00 70 a0 e1                                      mov r7, r0
005a51b0  03 00 55 e1                                      cmp r5, r3
005a51b4  15 00 00 0a                                      beq #0x5a5210
005a51b8  07 00 a0 e1                                      mov r0, r7
005a51bc  04 50 87 e5                                      str r5, [r7, #4]
005a51c0  04 10 84 e2                                      add r1, r4, #4
005a51c4  65 b9 f5 eb                                      bl #0x313760
005a51c8  10 30 94 e5                                      ldr r3, [r4, #0x10]
005a51cc  06 00 a0 e1                                      mov r0, r6
005a51d0  01 30 83 e2                                      add r3, r3, #1
005a51d4  10 30 84 e5                                      str r3, [r4, #0x10]
005a51d8  00 70 86 e5                                      str r7, [r6]
005a51dc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005a51e0  18 20 9d e5                                      ldr r2, [sp, #0x18]
005a51e4  00 00 52 e3                                      cmp r2, #0
005a51e8  12 00 00 0a                                      beq #0x5a5238
005a51ec  03 10 a0 e1                                      mov r1, r3
005a51f0  04 00 a0 e1                                      mov r0, r4
005a51f4  cb ff ff eb                                      bl #0x5a5128
005a51f8  08 00 85 e5                                      str r0, [r5, #8]
005a51fc  08 30 94 e5                                      ldr r3, [r4, #8]
005a5200  00 70 a0 e1                                      mov r7, r0
005a5204  03 00 55 e1                                      cmp r5, r3
005a5208  08 00 84 05                                      streq r0, [r4, #8]
005a520c  e9 ff ff ea                                      b #0x5a51b8
005a5210  0c 70 84 e5                                      str r7, [r4, #0xc]
005a5214  e7 ff ff ea                                      b #0x5a51b8
005a5218  03 10 a0 e1                                      mov r1, r3
005a521c  04 00 a0 e1                                      mov r0, r4
005a5220  c0 ff ff eb                                      bl #0x5a5128
005a5224  00 70 a0 e1                                      mov r7, r0
005a5228  08 00 84 e5                                      str r0, [r4, #8]
005a522c  04 00 84 e5                                      str r0, [r4, #4]
005a5230  0c 00 84 e5                                      str r0, [r4, #0xc]
005a5234  df ff ff ea                                      b #0x5a51b8
005a5238  00 10 93 e5                                      ldr r1, [r3]
005a523c  10 20 95 e5                                      ldr r2, [r5, #0x10]
005a5240  02 00 51 e1                                      cmp r1, r2
005a5244  d3 ff ff 2a                                      bhs #0x5a5198
005a5248  e7 ff ff ea                                      b #0x5a51ec

; FUNCTION 0x005a524c, declared_size=392, range_size=392, mode=arm
; class-group: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, std::vector<unsigned int, std::allocator<unsigned int> > >, std::priv::_Select1st<std::pair<unsigned int const, std::vector<unsigned int, std::allocator<unsigned int> > > >, std::priv::_MapTraitsT<std::pair<unsigned int const, std::vector<unsigned int, std::allocator<unsigned int> > > >, std::allocator<std::pair<unsigned int const, std::vector<unsigned int, std::allocator<unsigned int> > > > >
; alias: _ZNSt4priv8_Rb_treeIjSt4lessIjESt4pairIKjSt6vectorIjSaIjEEENS_10_Select1stIS8_EENS_11_MapTraitsTIS8_EESaIS8_EE13insert_uniqueERKS8_
; demangled: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, std::vector<unsigned int, std::allocator<unsigned int> > >, std::priv::_Select1st<std::pair<unsigned int const, std::vector<unsigned int, std::allocator<unsigned int> > > >, std::priv::_MapTraitsT<std::pair<unsigned int const, std::vector<unsigned int, std::allocator<unsigned int> > > >, std::allocator<std::pair<unsigned int const, std::vector<unsigned int, std::allocator<unsigned int> > > > >::insert_unique(std::pair<unsigned int const, std::vector<unsigned int, std::allocator<unsigned int> > > const&)
; decoder-mode: arm
005a524c  70 40 2d e9                                      push {r4, r5, r6, lr}
005a5250  04 c0 91 e5                                      ldr ip, [r1, #4]
005a5254  10 d0 4d e2                                      sub sp, sp, #0x10
005a5258  00 40 a0 e1                                      mov r4, r0
005a525c  00 00 5c e3                                      cmp ip, #0
005a5260  02 30 a0 e1                                      mov r3, r2
005a5264  01 c0 a0 01                                      moveq ip, r1
005a5268  15 00 00 0a                                      beq #0x5a52c4
005a526c  00 60 92 e5                                      ldr r6, [r2]
005a5270  00 00 00 ea                                      b #0x5a5278
005a5274  02 c0 a0 e1                                      mov ip, r2
005a5278  10 00 9c e5                                      ldr r0, [ip, #0x10]
005a527c  01 50 a0 e3                                      mov r5, #1
005a5280  06 00 50 e1                                      cmp r0, r6
005a5284  08 20 9c 85                                      ldrhi r2, [ip, #8]
005a5288  0c 20 9c 95                                      ldrls r2, [ip, #0xc]
005a528c  00 50 a0 93                                      movls r5, #0
005a5290  00 00 52 e3                                      cmp r2, #0
005a5294  f6 ff ff 1a                                      bne #0x5a5274
005a5298  00 00 55 e3                                      cmp r5, #0
005a529c  0c 50 a0 01                                      moveq r5, ip
005a52a0  07 00 00 1a                                      bne #0x5a52c4
005a52a4  00 00 56 e1                                      cmp r6, r0
005a52a8  00 30 a0 93                                      movls r3, #0
005a52ac  00 50 84 95                                      strls r5, [r4]
005a52b0  04 30 c4 95                                      strbls r3, [r4, #4]
005a52b4  1c 00 00 8a                                      bhi #0x5a532c
005a52b8  04 00 a0 e1                                      mov r0, r4
005a52bc  10 d0 8d e2                                      add sp, sp, #0x10
005a52c0  70 80 bd e8                                      pop {r4, r5, r6, pc}
005a52c4  08 20 91 e5                                      ldr r2, [r1, #8]
005a52c8  02 00 5c e1                                      cmp ip, r2
005a52cc  36 00 00 0a                                      beq #0x5a53ac
005a52d0  00 20 dc e5                                      ldrb r2, [ip]
005a52d4  00 00 52 e3                                      cmp r2, #0
005a52d8  03 00 00 1a                                      bne #0x5a52ec
005a52dc  04 20 9c e5                                      ldr r2, [ip, #4]
005a52e0  04 20 92 e5                                      ldr r2, [r2, #4]
005a52e4  02 00 5c e1                                      cmp ip, r2
005a52e8  2a 00 00 0a                                      beq #0x5a5398
005a52ec  08 00 9c e5                                      ldr r0, [ip, #8]
005a52f0  00 00 50 e3                                      cmp r0, #0
005a52f4  01 00 00 1a                                      bne #0x5a5300
005a52f8  16 00 00 ea                                      b #0x5a5358
005a52fc  02 00 a0 e1                                      mov r0, r2
005a5300  0c 20 90 e5                                      ldr r2, [r0, #0xc]
005a5304  00 00 52 e3                                      cmp r2, #0
005a5308  fb ff ff 1a                                      bne #0x5a52fc
005a530c  00 60 93 e5                                      ldr r6, [r3]
005a5310  00 50 a0 e1                                      mov r5, r0
005a5314  10 00 90 e5                                      ldr r0, [r0, #0x10]
005a5318  00 00 56 e1                                      cmp r6, r0
005a531c  00 30 a0 93                                      movls r3, #0
005a5320  00 50 84 95                                      strls r5, [r4]
005a5324  04 30 c4 95                                      strbls r3, [r4, #4]
005a5328  e2 ff ff 9a                                      bls #0x5a52b8
005a532c  0c 20 a0 e1                                      mov r2, ip
005a5330  08 00 8d e2                                      add r0, sp, #8
005a5334  00 c0 a0 e3                                      mov ip, #0
005a5338  04 c0 8d e5                                      str ip, [sp, #4]
005a533c  00 c0 8d e5                                      str ip, [sp]
005a5340  8b ff ff eb                                      bl #0x5a5174
005a5344  08 30 9d e5                                      ldr r3, [sp, #8]
005a5348  01 20 a0 e3                                      mov r2, #1
005a534c  04 20 c4 e5                                      strb r2, [r4, #4]
005a5350  00 30 84 e5                                      str r3, [r4]
005a5354  d7 ff ff ea                                      b #0x5a52b8
005a5358  04 20 9c e5                                      ldr r2, [ip, #4]
005a535c  08 00 92 e5                                      ldr r0, [r2, #8]
005a5360  00 00 5c e1                                      cmp ip, r0
005a5364  02 50 a0 11                                      movne r5, r2
005a5368  00 60 93 15                                      ldrne r6, [r3]
005a536c  10 00 92 15                                      ldrne r0, [r2, #0x10]
005a5370  01 00 00 0a                                      beq #0x5a537c
005a5374  ca ff ff ea                                      b #0x5a52a4
005a5378  05 20 a0 e1                                      mov r2, r5
005a537c  04 50 92 e5                                      ldr r5, [r2, #4]
005a5380  08 00 95 e5                                      ldr r0, [r5, #8]
005a5384  02 00 50 e1                                      cmp r0, r2
005a5388  fa ff ff 0a                                      beq #0x5a5378
005a538c  00 60 93 e5                                      ldr r6, [r3]
005a5390  10 00 95 e5                                      ldr r0, [r5, #0x10]
005a5394  c2 ff ff ea                                      b #0x5a52a4
005a5398  0c 20 9c e5                                      ldr r2, [ip, #0xc]
005a539c  00 60 93 e5                                      ldr r6, [r3]
005a53a0  02 50 a0 e1                                      mov r5, r2
005a53a4  10 00 92 e5                                      ldr r0, [r2, #0x10]
005a53a8  bd ff ff ea                                      b #0x5a52a4
005a53ac  0c 20 a0 e1                                      mov r2, ip
005a53b0  00 e0 a0 e3                                      mov lr, #0
005a53b4  0c 00 8d e2                                      add r0, sp, #0xc
005a53b8  00 50 8d e8                                      stm sp, {ip, lr}
005a53bc  6c ff ff eb                                      bl #0x5a5174
005a53c0  0c 30 9d e5                                      ldr r3, [sp, #0xc]
005a53c4  01 20 a0 e3                                      mov r2, #1
005a53c8  04 20 c4 e5                                      strb r2, [r4, #4]
005a53cc  00 30 84 e5                                      str r3, [r4]
005a53d0  b8 ff ff ea                                      b #0x5a52b8

; FUNCTION 0x005a53d4, declared_size=884, range_size=884, mode=arm
; class-group: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, std::vector<unsigned int, std::allocator<unsigned int> > >, std::priv::_Select1st<std::pair<unsigned int const, std::vector<unsigned int, std::allocator<unsigned int> > > >, std::priv::_MapTraitsT<std::pair<unsigned int const, std::vector<unsigned int, std::allocator<unsigned int> > > >, std::allocator<std::pair<unsigned int const, std::vector<unsigned int, std::allocator<unsigned int> > > > >
; alias: _ZNSt4priv8_Rb_treeIjSt4lessIjESt4pairIKjSt6vectorIjSaIjEEENS_10_Select1stIS8_EENS_11_MapTraitsTIS8_EESaIS8_EE13insert_uniqueENS_17_Rb_tree_iteratorIS8_SC_EERKS8_
; demangled: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, std::vector<unsigned int, std::allocator<unsigned int> > >, std::priv::_Select1st<std::pair<unsigned int const, std::vector<unsigned int, std::allocator<unsigned int> > > >, std::priv::_MapTraitsT<std::pair<unsigned int const, std::vector<unsigned int, std::allocator<unsigned int> > > >, std::allocator<std::pair<unsigned int const, std::vector<unsigned int, std::allocator<unsigned int> > > > >::insert_unique(std::priv::_Rb_tree_iterator<std::pair<unsigned int const, std::vector<unsigned int, std::allocator<unsigned int> > >, std::priv::_MapTraitsT<std::pair<unsigned int const, std::vector<unsigned int, std::allocator<unsigned int> > > > >, std::pair<unsigned int const, std::vector<unsigned int, std::allocator<unsigned int> > > const&)
; decoder-mode: arm
005a53d4  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
005a53d8  00 40 92 e5                                      ldr r4, [r2]
005a53dc  08 20 91 e5                                      ldr r2, [r1, #8]
005a53e0  2c d0 4d e2                                      sub sp, sp, #0x2c
005a53e4  01 50 a0 e1                                      mov r5, r1
005a53e8  02 00 54 e1                                      cmp r4, r2
005a53ec  00 70 a0 e1                                      mov r7, r0
005a53f0  03 60 a0 e1                                      mov r6, r3
005a53f4  5a 00 00 0a                                      beq #0x5a5564
005a53f8  01 00 54 e1                                      cmp r4, r1
005a53fc  78 00 00 0a                                      beq #0x5a55e4
005a5400  00 30 d4 e5                                      ldrb r3, [r4]
005a5404  00 00 53 e3                                      cmp r3, #0
005a5408  3a 00 00 0a                                      beq #0x5a54f8
005a540c  08 c0 94 e5                                      ldr ip, [r4, #8]
005a5410  00 00 5c e3                                      cmp ip, #0
005a5414  01 00 00 1a                                      bne #0x5a5420
005a5418  3e 00 00 ea                                      b #0x5a5518
005a541c  03 c0 a0 e1                                      mov ip, r3
005a5420  0c 30 9c e5                                      ldr r3, [ip, #0xc]
005a5424  00 00 53 e3                                      cmp r3, #0
005a5428  fb ff ff 1a                                      bne #0x5a541c
005a542c  00 20 96 e5                                      ldr r2, [r6]
005a5430  10 00 94 e5                                      ldr r0, [r4, #0x10]
005a5434  00 00 52 e1                                      cmp r2, r0
005a5438  00 10 a0 23                                      movhs r1, #0
005a543c  01 10 a0 33                                      movlo r1, #1
005a5440  00 00 51 e3                                      cmp r1, #0
005a5444  1b 00 00 1a                                      bne #0x5a54b8
005a5448  0c 80 94 e5                                      ldr r8, [r4, #0xc]
005a544c  00 00 58 e3                                      cmp r8, #0
005a5450  7d 00 00 0a                                      beq #0x5a564c
005a5454  08 c0 a0 e1                                      mov ip, r8
005a5458  00 00 00 ea                                      b #0x5a5460
005a545c  03 c0 a0 e1                                      mov ip, r3
005a5460  08 30 9c e5                                      ldr r3, [ip, #8]
005a5464  00 00 53 e3                                      cmp r3, #0
005a5468  fb ff ff 1a                                      bne #0x5a545c
005a546c  00 00 51 e3                                      cmp r1, #0
005a5470  34 00 00 1a                                      bne #0x5a5548
005a5474  00 00 52 e1                                      cmp r2, r0
005a5478  63 00 00 9a                                      bls #0x5a560c
005a547c  0c 00 55 e1                                      cmp r5, ip
005a5480  02 00 00 0a                                      beq #0x5a5490
005a5484  10 30 9c e5                                      ldr r3, [ip, #0x10]
005a5488  03 00 52 e1                                      cmp r2, r3
005a548c  2d 00 00 2a                                      bhs #0x5a5548
005a5490  00 00 58 e3                                      cmp r8, #0
005a5494  4a 00 00 1a                                      bne #0x5a55c4
005a5498  05 10 a0 e1                                      mov r1, r5
005a549c  04 20 a0 e1                                      mov r2, r4
005a54a0  06 30 a0 e1                                      mov r3, r6
005a54a4  07 00 a0 e1                                      mov r0, r7
005a54a8  00 80 8d e5                                      str r8, [sp]
005a54ac  04 40 8d e5                                      str r4, [sp, #4]
005a54b0  2f ff ff eb                                      bl #0x5a5174
005a54b4  0c 00 00 ea                                      b #0x5a54ec
005a54b8  10 30 9c e5                                      ldr r3, [ip, #0x10]
005a54bc  03 00 52 e1                                      cmp r2, r3
005a54c0  e0 ff ff 9a                                      bls #0x5a5448
005a54c4  0c e0 9c e5                                      ldr lr, [ip, #0xc]
005a54c8  00 00 5e e3                                      cmp lr, #0
005a54cc  56 00 00 0a                                      beq #0x5a562c
005a54d0  00 c0 a0 e3                                      mov ip, #0
005a54d4  05 10 a0 e1                                      mov r1, r5
005a54d8  04 20 a0 e1                                      mov r2, r4
005a54dc  06 30 a0 e1                                      mov r3, r6
005a54e0  07 00 a0 e1                                      mov r0, r7
005a54e4  10 10 8d e8                                      stm sp, {r4, ip}
005a54e8  21 ff ff eb                                      bl #0x5a5174
005a54ec  07 00 a0 e1                                      mov r0, r7
005a54f0  2c d0 8d e2                                      add sp, sp, #0x2c
005a54f4  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
005a54f8  04 30 94 e5                                      ldr r3, [r4, #4]
005a54fc  04 30 93 e5                                      ldr r3, [r3, #4]
005a5500  03 00 54 e1                                      cmp r4, r3
005a5504  0c c0 94 05                                      ldreq ip, [r4, #0xc]
005a5508  c7 ff ff 0a                                      beq #0x5a542c
005a550c  08 c0 94 e5                                      ldr ip, [r4, #8]
005a5510  00 00 5c e3                                      cmp ip, #0
005a5514  c1 ff ff 1a                                      bne #0x5a5420
005a5518  04 c0 94 e5                                      ldr ip, [r4, #4]
005a551c  08 30 9c e5                                      ldr r3, [ip, #8]
005a5520  03 00 54 e1                                      cmp r4, r3
005a5524  01 00 00 0a                                      beq #0x5a5530
005a5528  bf ff ff ea                                      b #0x5a542c
005a552c  03 c0 a0 e1                                      mov ip, r3
005a5530  04 30 9c e5                                      ldr r3, [ip, #4]
005a5534  08 20 93 e5                                      ldr r2, [r3, #8]
005a5538  0c 00 52 e1                                      cmp r2, ip
005a553c  fa ff ff 0a                                      beq #0x5a552c
005a5540  03 c0 a0 e1                                      mov ip, r3
005a5544  b8 ff ff ea                                      b #0x5a542c
005a5548  05 10 a0 e1                                      mov r1, r5
005a554c  06 20 a0 e1                                      mov r2, r6
005a5550  08 00 8d e2                                      add r0, sp, #8
005a5554  3c ff ff eb                                      bl #0x5a524c
005a5558  08 30 9d e5                                      ldr r3, [sp, #8]
005a555c  00 30 87 e5                                      str r3, [r7]
005a5560  e1 ff ff ea                                      b #0x5a54ec
005a5564  10 20 91 e5                                      ldr r2, [r1, #0x10]
005a5568  00 00 52 e3                                      cmp r2, #0
005a556c  52 00 00 0a                                      beq #0x5a56bc
005a5570  00 20 93 e5                                      ldr r2, [r3]
005a5574  10 c0 94 e5                                      ldr ip, [r4, #0x10]
005a5578  0c 00 52 e1                                      cmp r2, ip
005a557c  54 00 00 3a                                      blo #0x5a56d4
005a5580  21 00 00 9a                                      bls #0x5a560c
005a5584  0c e0 94 e5                                      ldr lr, [r4, #0xc]
005a5588  00 00 5e e3                                      cmp lr, #0
005a558c  3c 00 00 0a                                      beq #0x5a5684
005a5590  0e c0 a0 e1                                      mov ip, lr
005a5594  00 00 00 ea                                      b #0x5a559c
005a5598  03 c0 a0 e1                                      mov ip, r3
005a559c  08 30 9c e5                                      ldr r3, [ip, #8]
005a55a0  00 00 53 e3                                      cmp r3, #0
005a55a4  fb ff ff 1a                                      bne #0x5a5598
005a55a8  0c 00 55 e1                                      cmp r5, ip
005a55ac  5c 00 00 0a                                      beq #0x5a5724
005a55b0  10 30 9c e5                                      ldr r3, [ip, #0x10]
005a55b4  03 00 52 e1                                      cmp r2, r3
005a55b8  4a 00 00 2a                                      bhs #0x5a56e8
005a55bc  00 00 5e e3                                      cmp lr, #0
005a55c0  4f 00 00 0a                                      beq #0x5a5704
005a55c4  00 e0 a0 e3                                      mov lr, #0
005a55c8  05 10 a0 e1                                      mov r1, r5
005a55cc  0c 20 a0 e1                                      mov r2, ip
005a55d0  06 30 a0 e1                                      mov r3, r6
005a55d4  07 00 a0 e1                                      mov r0, r7
005a55d8  00 50 8d e8                                      stm sp, {ip, lr}
005a55dc  e4 fe ff eb                                      bl #0x5a5174
005a55e0  c1 ff ff ea                                      b #0x5a54ec
005a55e4  0c 20 94 e5                                      ldr r2, [r4, #0xc]
005a55e8  00 c0 93 e5                                      ldr ip, [r3]
005a55ec  10 e0 92 e5                                      ldr lr, [r2, #0x10]
005a55f0  0c 00 5e e1                                      cmp lr, ip
005a55f4  06 00 00 2a                                      bhs #0x5a5614
005a55f8  00 c0 a0 e3                                      mov ip, #0
005a55fc  00 c0 8d e5                                      str ip, [sp]
005a5600  04 40 8d e5                                      str r4, [sp, #4]
005a5604  da fe ff eb                                      bl #0x5a5174
005a5608  b7 ff ff ea                                      b #0x5a54ec
005a560c  00 40 87 e5                                      str r4, [r7]
005a5610  b5 ff ff ea                                      b #0x5a54ec
005a5614  03 20 a0 e1                                      mov r2, r3
005a5618  10 00 8d e2                                      add r0, sp, #0x10
005a561c  0a ff ff eb                                      bl #0x5a524c
005a5620  10 30 9d e5                                      ldr r3, [sp, #0x10]
005a5624  00 30 87 e5                                      str r3, [r7]
005a5628  af ff ff ea                                      b #0x5a54ec
005a562c  05 10 a0 e1                                      mov r1, r5
005a5630  0c 20 a0 e1                                      mov r2, ip
005a5634  06 30 a0 e1                                      mov r3, r6
005a5638  07 00 a0 e1                                      mov r0, r7
005a563c  00 e0 8d e5                                      str lr, [sp]
005a5640  04 c0 8d e5                                      str ip, [sp, #4]
005a5644  ca fe ff eb                                      bl #0x5a5174
005a5648  a7 ff ff ea                                      b #0x5a54ec
005a564c  04 30 94 e5                                      ldr r3, [r4, #4]
005a5650  0c c0 93 e5                                      ldr ip, [r3, #0xc]
005a5654  0c 00 54 e1                                      cmp r4, ip
005a5658  04 c0 a0 11                                      movne ip, r4
005a565c  04 00 00 1a                                      bne #0x5a5674
005a5660  03 c0 a0 e1                                      mov ip, r3
005a5664  04 30 93 e5                                      ldr r3, [r3, #4]
005a5668  0c a0 93 e5                                      ldr sl, [r3, #0xc]
005a566c  0a 00 5c e1                                      cmp ip, sl
005a5670  fa ff ff 0a                                      beq #0x5a5660
005a5674  0c a0 9c e5                                      ldr sl, [ip, #0xc]
005a5678  0a 00 53 e1                                      cmp r3, sl
005a567c  03 c0 a0 11                                      movne ip, r3
005a5680  79 ff ff ea                                      b #0x5a546c
005a5684  04 30 94 e5                                      ldr r3, [r4, #4]
005a5688  0c 10 93 e5                                      ldr r1, [r3, #0xc]
005a568c  01 00 54 e1                                      cmp r4, r1
005a5690  04 c0 a0 11                                      movne ip, r4
005a5694  04 00 00 1a                                      bne #0x5a56ac
005a5698  03 c0 a0 e1                                      mov ip, r3
005a569c  04 30 93 e5                                      ldr r3, [r3, #4]
005a56a0  0c 10 93 e5                                      ldr r1, [r3, #0xc]
005a56a4  0c 00 51 e1                                      cmp r1, ip
005a56a8  fa ff ff 0a                                      beq #0x5a5698
005a56ac  0c 10 9c e5                                      ldr r1, [ip, #0xc]
005a56b0  01 00 53 e1                                      cmp r3, r1
005a56b4  03 c0 a0 11                                      movne ip, r3
005a56b8  ba ff ff ea                                      b #0x5a55a8
005a56bc  03 20 a0 e1                                      mov r2, r3
005a56c0  20 00 8d e2                                      add r0, sp, #0x20
005a56c4  e0 fe ff eb                                      bl #0x5a524c
005a56c8  20 30 9d e5                                      ldr r3, [sp, #0x20]
005a56cc  00 30 87 e5                                      str r3, [r7]
005a56d0  85 ff ff ea                                      b #0x5a54ec
005a56d4  00 c0 a0 e3                                      mov ip, #0
005a56d8  04 20 a0 e1                                      mov r2, r4
005a56dc  10 10 8d e8                                      stm sp, {r4, ip}
005a56e0  a3 fe ff eb                                      bl #0x5a5174
005a56e4  80 ff ff ea                                      b #0x5a54ec
005a56e8  05 10 a0 e1                                      mov r1, r5
005a56ec  06 20 a0 e1                                      mov r2, r6
005a56f0  18 00 8d e2                                      add r0, sp, #0x18
005a56f4  d4 fe ff eb                                      bl #0x5a524c
005a56f8  18 30 9d e5                                      ldr r3, [sp, #0x18]
005a56fc  00 30 87 e5                                      str r3, [r7]
005a5700  79 ff ff ea                                      b #0x5a54ec
005a5704  05 10 a0 e1                                      mov r1, r5
005a5708  04 20 a0 e1                                      mov r2, r4
005a570c  06 30 a0 e1                                      mov r3, r6
005a5710  07 00 a0 e1                                      mov r0, r7
005a5714  00 e0 8d e5                                      str lr, [sp]
005a5718  04 40 8d e5                                      str r4, [sp, #4]
005a571c  94 fe ff eb                                      bl #0x5a5174
005a5720  71 ff ff ea                                      b #0x5a54ec
005a5724  00 c0 a0 e3                                      mov ip, #0
005a5728  05 10 a0 e1                                      mov r1, r5
005a572c  04 20 a0 e1                                      mov r2, r4
005a5730  06 30 a0 e1                                      mov r3, r6
005a5734  07 00 a0 e1                                      mov r0, r7
005a5738  00 c0 8d e5                                      str ip, [sp]
005a573c  04 40 8d e5                                      str r4, [sp, #4]
005a5740  8b fe ff eb                                      bl #0x5a5174
005a5744  68 ff ff ea                                      b #0x5a54ec

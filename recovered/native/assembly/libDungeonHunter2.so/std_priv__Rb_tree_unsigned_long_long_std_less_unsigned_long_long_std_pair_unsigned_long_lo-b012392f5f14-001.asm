; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0081cdc4, declared_size=60, range_size=60, mode=arm
; class-group: std::priv::_Rb_tree<unsigned long long, std::less<unsigned long long>, std::pair<unsigned long long const, CRoomAttributes>, std::priv::_Select1st<std::pair<unsigned long long const, CRoomAttributes> >, std::priv::_MapTraitsT<std::pair<unsigned long long const, CRoomAttributes> >, std::allocator<std::pair<unsigned long long const, CRoomAttributes> > >
; alias: _ZNSt4priv8_Rb_treeIySt4lessIyESt4pairIKy15CRoomAttributesENS_10_Select1stIS6_EENS_11_MapTraitsTIS6_EESaIS6_EE8_M_eraseEPNS_18_Rb_tree_node_baseE
; demangled: std::priv::_Rb_tree<unsigned long long, std::less<unsigned long long>, std::pair<unsigned long long const, CRoomAttributes>, std::priv::_Select1st<std::pair<unsigned long long const, CRoomAttributes> >, std::priv::_MapTraitsT<std::pair<unsigned long long const, CRoomAttributes> >, std::allocator<std::pair<unsigned long long const, CRoomAttributes> > >::_M_erase(std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
0081cdc4  70 40 2d e9                                      push {r4, r5, r6, lr}
0081cdc8  00 40 51 e2                                      subs r4, r1, #0
0081cdcc  00 50 a0 e1                                      mov r5, r0
0081cdd0  09 00 00 0a                                      beq #0x81cdfc
0081cdd4  0c 10 94 e5                                      ldr r1, [r4, #0xc]
0081cdd8  05 00 a0 e1                                      mov r0, r5
0081cddc  f8 ff ff eb                                      bl #0x81cdc4
0081cde0  08 60 94 e5                                      ldr r6, [r4, #8]
0081cde4  18 00 84 e2                                      add r0, r4, #0x18
0081cde8  89 ef ff eb                                      bl #0x818c14
0081cdec  04 00 a0 e1                                      mov r0, r4
0081cdf0  92 cd eb eb                                      bl #0x310440
0081cdf4  00 40 56 e2                                      subs r4, r6, #0
0081cdf8  f5 ff ff 1a                                      bne #0x81cdd4
0081cdfc  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0081fb44, declared_size=60, range_size=60, mode=arm
; class-group: std::priv::_Rb_tree<unsigned long long, std::less<unsigned long long>, std::pair<unsigned long long const, CRoomAttributes>, std::priv::_Select1st<std::pair<unsigned long long const, CRoomAttributes> >, std::priv::_MapTraitsT<std::pair<unsigned long long const, CRoomAttributes> >, std::allocator<std::pair<unsigned long long const, CRoomAttributes> > >
; alias: _ZNSt4priv8_Rb_treeIySt4lessIyESt4pairIKy15CRoomAttributesENS_10_Select1stIS6_EENS_11_MapTraitsTIS6_EESaIS6_EE14_M_create_nodeERKS6_
; demangled: std::priv::_Rb_tree<unsigned long long, std::less<unsigned long long>, std::pair<unsigned long long const, CRoomAttributes>, std::priv::_Select1st<std::pair<unsigned long long const, CRoomAttributes> >, std::priv::_MapTraitsT<std::pair<unsigned long long const, CRoomAttributes> >, std::allocator<std::pair<unsigned long long const, CRoomAttributes> > >::_M_create_node(std::pair<unsigned long long const, CRoomAttributes> const&)
; decoder-mode: arm
0081fb44  70 40 2d e9                                      push {r4, r5, r6, lr}
0081fb48  3b 0e a0 e3                                      mov r0, #0x3b0
0081fb4c  01 50 a0 e1                                      mov r5, r1
0081fb50  3f c2 eb eb                                      bl #0x310454
0081fb54  05 10 a0 e1                                      mov r1, r5
0081fb58  00 40 a0 e1                                      mov r4, r0
0081fb5c  d8 20 c1 e0                                      ldrd r2, r3, [r1], #8
0081fb60  f0 21 c0 e1                                      strd r2, r3, [r0, #0x10]
0081fb64  18 00 80 e2                                      add r0, r0, #0x18
0081fb68  38 e5 ff eb                                      bl #0x819050
0081fb6c  00 30 a0 e3                                      mov r3, #0
0081fb70  0c 30 84 e5                                      str r3, [r4, #0xc]
0081fb74  08 30 84 e5                                      str r3, [r4, #8]
0081fb78  04 00 a0 e1                                      mov r0, r4
0081fb7c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0081fb80, declared_size=236, range_size=236, mode=arm
; class-group: std::priv::_Rb_tree<unsigned long long, std::less<unsigned long long>, std::pair<unsigned long long const, CRoomAttributes>, std::priv::_Select1st<std::pair<unsigned long long const, CRoomAttributes> >, std::priv::_MapTraitsT<std::pair<unsigned long long const, CRoomAttributes> >, std::allocator<std::pair<unsigned long long const, CRoomAttributes> > >
; alias: _ZNSt4priv8_Rb_treeIySt4lessIyESt4pairIKy15CRoomAttributesENS_10_Select1stIS6_EENS_11_MapTraitsTIS6_EESaIS6_EE9_M_insertEPNS_18_Rb_tree_node_baseERKS6_SE_SE_
; demangled: std::priv::_Rb_tree<unsigned long long, std::less<unsigned long long>, std::pair<unsigned long long const, CRoomAttributes>, std::priv::_Select1st<std::pair<unsigned long long const, CRoomAttributes> >, std::priv::_MapTraitsT<std::pair<unsigned long long const, CRoomAttributes> >, std::allocator<std::pair<unsigned long long const, CRoomAttributes> > >::_M_insert(std::priv::_Rb_tree_node_base*, std::pair<unsigned long long const, CRoomAttributes> const&, std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
0081fb80  02 00 51 e1                                      cmp r1, r2
0081fb84  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0081fb88  01 40 a0 e1                                      mov r4, r1
0081fb8c  02 50 a0 e1                                      mov r5, r2
0081fb90  00 60 a0 e1                                      mov r6, r0
0081fb94  22 00 00 0a                                      beq #0x81fc24
0081fb98  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0081fb9c  00 00 52 e3                                      cmp r2, #0
0081fba0  11 00 00 0a                                      beq #0x81fbec
0081fba4  03 10 a0 e1                                      mov r1, r3
0081fba8  04 00 a0 e1                                      mov r0, r4
0081fbac  e4 ff ff eb                                      bl #0x81fb44
0081fbb0  0c 00 85 e5                                      str r0, [r5, #0xc]
0081fbb4  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0081fbb8  00 70 a0 e1                                      mov r7, r0
0081fbbc  03 00 55 e1                                      cmp r5, r3
0081fbc0  15 00 00 0a                                      beq #0x81fc1c
0081fbc4  07 00 a0 e1                                      mov r0, r7
0081fbc8  04 50 87 e5                                      str r5, [r7, #4]
0081fbcc  04 10 84 e2                                      add r1, r4, #4
0081fbd0  e2 ce eb eb                                      bl #0x313760
0081fbd4  10 30 94 e5                                      ldr r3, [r4, #0x10]
0081fbd8  06 00 a0 e1                                      mov r0, r6
0081fbdc  01 30 83 e2                                      add r3, r3, #1
0081fbe0  10 30 84 e5                                      str r3, [r4, #0x10]
0081fbe4  00 70 86 e5                                      str r7, [r6]
0081fbe8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0081fbec  18 20 9d e5                                      ldr r2, [sp, #0x18]
0081fbf0  00 00 52 e3                                      cmp r2, #0
0081fbf4  12 00 00 0a                                      beq #0x81fc44
0081fbf8  03 10 a0 e1                                      mov r1, r3
0081fbfc  04 00 a0 e1                                      mov r0, r4
0081fc00  cf ff ff eb                                      bl #0x81fb44
0081fc04  08 00 85 e5                                      str r0, [r5, #8]
0081fc08  08 30 94 e5                                      ldr r3, [r4, #8]
0081fc0c  00 70 a0 e1                                      mov r7, r0
0081fc10  03 00 55 e1                                      cmp r5, r3
0081fc14  08 00 84 05                                      streq r0, [r4, #8]
0081fc18  e9 ff ff ea                                      b #0x81fbc4
0081fc1c  0c 70 84 e5                                      str r7, [r4, #0xc]
0081fc20  e7 ff ff ea                                      b #0x81fbc4
0081fc24  03 10 a0 e1                                      mov r1, r3
0081fc28  04 00 a0 e1                                      mov r0, r4
0081fc2c  c4 ff ff eb                                      bl #0x81fb44
0081fc30  00 70 a0 e1                                      mov r7, r0
0081fc34  08 00 84 e5                                      str r0, [r4, #8]
0081fc38  04 00 84 e5                                      str r0, [r4, #4]
0081fc3c  0c 00 84 e5                                      str r0, [r4, #0xc]
0081fc40  df ff ff ea                                      b #0x81fbc4
0081fc44  14 10 95 e5                                      ldr r1, [r5, #0x14]
0081fc48  04 20 93 e5                                      ldr r2, [r3, #4]
0081fc4c  02 00 51 e1                                      cmp r1, r2
0081fc50  e8 ff ff 8a                                      bhi #0x81fbf8
0081fc54  d2 ff ff 1a                                      bne #0x81fba4
0081fc58  10 10 95 e5                                      ldr r1, [r5, #0x10]
0081fc5c  00 20 93 e5                                      ldr r2, [r3]
0081fc60  02 00 51 e1                                      cmp r1, r2
0081fc64  ce ff ff 9a                                      bls #0x81fba4
0081fc68  e2 ff ff ea                                      b #0x81fbf8

; FUNCTION 0x0081fc6c, declared_size=448, range_size=448, mode=arm
; class-group: std::priv::_Rb_tree<unsigned long long, std::less<unsigned long long>, std::pair<unsigned long long const, CRoomAttributes>, std::priv::_Select1st<std::pair<unsigned long long const, CRoomAttributes> >, std::priv::_MapTraitsT<std::pair<unsigned long long const, CRoomAttributes> >, std::allocator<std::pair<unsigned long long const, CRoomAttributes> > >
; alias: _ZNSt4priv8_Rb_treeIySt4lessIyESt4pairIKy15CRoomAttributesENS_10_Select1stIS6_EENS_11_MapTraitsTIS6_EESaIS6_EE13insert_uniqueERKS6_
; demangled: std::priv::_Rb_tree<unsigned long long, std::less<unsigned long long>, std::pair<unsigned long long const, CRoomAttributes>, std::priv::_Select1st<std::pair<unsigned long long const, CRoomAttributes> >, std::priv::_MapTraitsT<std::pair<unsigned long long const, CRoomAttributes> >, std::allocator<std::pair<unsigned long long const, CRoomAttributes> > >::insert_unique(std::pair<unsigned long long const, CRoomAttributes> const&)
; decoder-mode: arm
0081fc6c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0081fc70  04 c0 91 e5                                      ldr ip, [r1, #4]
0081fc74  10 d0 4d e2                                      sub sp, sp, #0x10
0081fc78  00 40 a0 e1                                      mov r4, r0
0081fc7c  00 00 5c e3                                      cmp ip, #0
0081fc80  02 30 a0 e1                                      mov r3, r2
0081fc84  01 c0 a0 01                                      moveq ip, r1
0081fc88  20 00 00 0a                                      beq #0x81fd10
0081fc8c  00 80 92 e5                                      ldr r8, [r2]
0081fc90  04 60 92 e5                                      ldr r6, [r2, #4]
0081fc94  05 00 00 ea                                      b #0x81fcb0
0081fc98  18 00 00 0a                                      beq #0x81fd00
0081fc9c  0c 20 9c e5                                      ldr r2, [ip, #0xc]
0081fca0  00 50 a0 e3                                      mov r5, #0
0081fca4  00 00 52 e3                                      cmp r2, #0
0081fca8  08 00 00 0a                                      beq #0x81fcd0
0081fcac  02 c0 a0 e1                                      mov ip, r2
0081fcb0  14 00 9c e5                                      ldr r0, [ip, #0x14]
0081fcb4  10 70 9c e5                                      ldr r7, [ip, #0x10]
0081fcb8  01 50 a0 e3                                      mov r5, #1
0081fcbc  06 00 50 e1                                      cmp r0, r6
0081fcc0  f4 ff ff 9a                                      bls #0x81fc98
0081fcc4  08 20 9c e5                                      ldr r2, [ip, #8]
0081fcc8  00 00 52 e3                                      cmp r2, #0
0081fccc  f6 ff ff 1a                                      bne #0x81fcac
0081fcd0  00 00 55 e3                                      cmp r5, #0
0081fcd4  0c 20 a0 01                                      moveq r2, ip
0081fcd8  0c 00 00 1a                                      bne #0x81fd10
0081fcdc  00 00 56 e1                                      cmp r6, r0
0081fce0  23 00 00 8a                                      bhi #0x81fd74
0081fce4  2d 00 00 0a                                      beq #0x81fda0
0081fce8  00 30 a0 e3                                      mov r3, #0
0081fcec  00 20 84 e5                                      str r2, [r4]
0081fcf0  04 30 c4 e5                                      strb r3, [r4, #4]
0081fcf4  04 00 a0 e1                                      mov r0, r4
0081fcf8  10 d0 8d e2                                      add sp, sp, #0x10
0081fcfc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0081fd00  08 00 57 e1                                      cmp r7, r8
0081fd04  e4 ff ff 9a                                      bls #0x81fc9c
0081fd08  08 20 9c e5                                      ldr r2, [ip, #8]
0081fd0c  ed ff ff ea                                      b #0x81fcc8
0081fd10  08 20 91 e5                                      ldr r2, [r1, #8]
0081fd14  02 00 5c e1                                      cmp ip, r2
0081fd18  39 00 00 0a                                      beq #0x81fe04
0081fd1c  00 20 dc e5                                      ldrb r2, [ip]
0081fd20  00 00 52 e3                                      cmp r2, #0
0081fd24  03 00 00 1a                                      bne #0x81fd38
0081fd28  04 20 9c e5                                      ldr r2, [ip, #4]
0081fd2c  04 20 92 e5                                      ldr r2, [r2, #4]
0081fd30  02 00 5c e1                                      cmp ip, r2
0081fd34  2b 00 00 0a                                      beq #0x81fde8
0081fd38  08 00 9c e5                                      ldr r0, [ip, #8]
0081fd3c  00 00 50 e3                                      cmp r0, #0
0081fd40  01 00 00 1a                                      bne #0x81fd4c
0081fd44  18 00 00 ea                                      b #0x81fdac
0081fd48  02 00 a0 e1                                      mov r0, r2
0081fd4c  0c 20 90 e5                                      ldr r2, [r0, #0xc]
0081fd50  00 00 52 e3                                      cmp r2, #0
0081fd54  fb ff ff 1a                                      bne #0x81fd48
0081fd58  00 20 a0 e1                                      mov r2, r0
0081fd5c  04 60 93 e5                                      ldr r6, [r3, #4]
0081fd60  10 70 90 e5                                      ldr r7, [r0, #0x10]
0081fd64  14 00 90 e5                                      ldr r0, [r0, #0x14]
0081fd68  00 80 93 e5                                      ldr r8, [r3]
0081fd6c  00 00 56 e1                                      cmp r6, r0
0081fd70  db ff ff 9a                                      bls #0x81fce4
0081fd74  0c 20 a0 e1                                      mov r2, ip
0081fd78  08 00 8d e2                                      add r0, sp, #8
0081fd7c  00 c0 a0 e3                                      mov ip, #0
0081fd80  04 c0 8d e5                                      str ip, [sp, #4]
0081fd84  00 c0 8d e5                                      str ip, [sp]
0081fd88  7c ff ff eb                                      bl #0x81fb80
0081fd8c  08 30 9d e5                                      ldr r3, [sp, #8]
0081fd90  01 20 a0 e3                                      mov r2, #1
0081fd94  04 20 c4 e5                                      strb r2, [r4, #4]
0081fd98  00 30 84 e5                                      str r3, [r4]
0081fd9c  d4 ff ff ea                                      b #0x81fcf4
0081fda0  07 00 58 e1                                      cmp r8, r7
0081fda4  cf ff ff 9a                                      bls #0x81fce8
0081fda8  f1 ff ff ea                                      b #0x81fd74
0081fdac  04 00 9c e5                                      ldr r0, [ip, #4]
0081fdb0  08 20 90 e5                                      ldr r2, [r0, #8]
0081fdb4  02 00 5c e1                                      cmp ip, r2
0081fdb8  01 00 00 0a                                      beq #0x81fdc4
0081fdbc  e5 ff ff ea                                      b #0x81fd58
0081fdc0  02 00 a0 e1                                      mov r0, r2
0081fdc4  04 20 90 e5                                      ldr r2, [r0, #4]
0081fdc8  08 50 92 e5                                      ldr r5, [r2, #8]
0081fdcc  00 00 55 e1                                      cmp r5, r0
0081fdd0  fa ff ff 0a                                      beq #0x81fdc0
0081fdd4  00 80 93 e5                                      ldr r8, [r3]
0081fdd8  04 60 93 e5                                      ldr r6, [r3, #4]
0081fddc  10 70 92 e5                                      ldr r7, [r2, #0x10]
0081fde0  14 00 92 e5                                      ldr r0, [r2, #0x14]
0081fde4  bc ff ff ea                                      b #0x81fcdc
0081fde8  0c 00 9c e5                                      ldr r0, [ip, #0xc]
0081fdec  00 80 93 e5                                      ldr r8, [r3]
0081fdf0  04 60 93 e5                                      ldr r6, [r3, #4]
0081fdf4  00 20 a0 e1                                      mov r2, r0
0081fdf8  10 70 90 e5                                      ldr r7, [r0, #0x10]
0081fdfc  14 00 90 e5                                      ldr r0, [r0, #0x14]
0081fe00  b5 ff ff ea                                      b #0x81fcdc
0081fe04  0c 20 a0 e1                                      mov r2, ip
0081fe08  00 e0 a0 e3                                      mov lr, #0
0081fe0c  0c 00 8d e2                                      add r0, sp, #0xc
0081fe10  00 50 8d e8                                      stm sp, {ip, lr}
0081fe14  59 ff ff eb                                      bl #0x81fb80
0081fe18  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0081fe1c  01 20 a0 e3                                      mov r2, #1
0081fe20  04 20 c4 e5                                      strb r2, [r4, #4]
0081fe24  00 30 84 e5                                      str r3, [r4]
0081fe28  b1 ff ff ea                                      b #0x81fcf4

; FUNCTION 0x0081fe2c, declared_size=976, range_size=976, mode=arm
; class-group: std::priv::_Rb_tree<unsigned long long, std::less<unsigned long long>, std::pair<unsigned long long const, CRoomAttributes>, std::priv::_Select1st<std::pair<unsigned long long const, CRoomAttributes> >, std::priv::_MapTraitsT<std::pair<unsigned long long const, CRoomAttributes> >, std::allocator<std::pair<unsigned long long const, CRoomAttributes> > >
; alias: _ZNSt4priv8_Rb_treeIySt4lessIyESt4pairIKy15CRoomAttributesENS_10_Select1stIS6_EENS_11_MapTraitsTIS6_EESaIS6_EE13insert_uniqueENS_17_Rb_tree_iteratorIS6_SA_EERKS6_
; demangled: std::priv::_Rb_tree<unsigned long long, std::less<unsigned long long>, std::pair<unsigned long long const, CRoomAttributes>, std::priv::_Select1st<std::pair<unsigned long long const, CRoomAttributes> >, std::priv::_MapTraitsT<std::pair<unsigned long long const, CRoomAttributes> >, std::allocator<std::pair<unsigned long long const, CRoomAttributes> > >::insert_unique(std::priv::_Rb_tree_iterator<std::pair<unsigned long long const, CRoomAttributes>, std::priv::_MapTraitsT<std::pair<unsigned long long const, CRoomAttributes> > >, std::pair<unsigned long long const, CRoomAttributes> const&)
; decoder-mode: arm
0081fe2c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0081fe30  00 40 92 e5                                      ldr r4, [r2]
0081fe34  08 20 91 e5                                      ldr r2, [r1, #8]
0081fe38  2c d0 4d e2                                      sub sp, sp, #0x2c
0081fe3c  01 50 a0 e1                                      mov r5, r1
0081fe40  02 00 54 e1                                      cmp r4, r2
0081fe44  00 60 a0 e1                                      mov r6, r0
0081fe48  59 00 00 0a                                      beq #0x81ffb4
0081fe4c  01 00 54 e1                                      cmp r4, r1
0081fe50  7f 00 00 0a                                      beq #0x820054
0081fe54  00 20 d4 e5                                      ldrb r2, [r4]
0081fe58  00 00 52 e3                                      cmp r2, #0
0081fe5c  25 00 00 0a                                      beq #0x81fef8
0081fe60  08 c0 94 e5                                      ldr ip, [r4, #8]
0081fe64  00 00 5c e3                                      cmp ip, #0
0081fe68  01 00 00 1a                                      bne #0x81fe74
0081fe6c  29 00 00 ea                                      b #0x81ff18
0081fe70  02 c0 a0 e1                                      mov ip, r2
0081fe74  0c 20 9c e5                                      ldr r2, [ip, #0xc]
0081fe78  00 00 52 e3                                      cmp r2, #0
0081fe7c  fb ff ff 1a                                      bne #0x81fe70
0081fe80  04 10 93 e5                                      ldr r1, [r3, #4]
0081fe84  14 80 94 e5                                      ldr r8, [r4, #0x14]
0081fe88  00 a0 93 e5                                      ldr sl, [r3]
0081fe8c  10 b0 94 e5                                      ldr fp, [r4, #0x10]
0081fe90  01 00 58 e1                                      cmp r8, r1
0081fe94  00 00 a0 e3                                      mov r0, #0
0081fe98  12 00 00 9a                                      bls #0x81fee8
0081fe9c  01 00 a0 e3                                      mov r0, #1
0081fea0  70 00 ef e6                                      uxtb r0, r0
0081fea4  00 00 50 e3                                      cmp r0, #0
0081fea8  2a 00 00 0a                                      beq #0x81ff58
0081feac  14 20 9c e5                                      ldr r2, [ip, #0x14]
0081feb0  01 00 52 e1                                      cmp r2, r1
0081feb4  23 00 00 2a                                      bhs #0x81ff48
0081feb8  0c e0 9c e5                                      ldr lr, [ip, #0xc]
0081febc  00 00 5e e3                                      cmp lr, #0
0081fec0  9d 00 00 0a                                      beq #0x82013c
0081fec4  00 c0 a0 e3                                      mov ip, #0
0081fec8  05 10 a0 e1                                      mov r1, r5
0081fecc  04 20 a0 e1                                      mov r2, r4
0081fed0  06 00 a0 e1                                      mov r0, r6
0081fed4  10 10 8d e8                                      stm sp, {r4, ip}
0081fed8  28 ff ff eb                                      bl #0x81fb80
0081fedc  06 00 a0 e1                                      mov r0, r6
0081fee0  2c d0 8d e2                                      add sp, sp, #0x2c
0081fee4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0081fee8  ec ff ff 1a                                      bne #0x81fea0
0081feec  0a 00 5b e1                                      cmp fp, sl
0081fef0  ea ff ff 9a                                      bls #0x81fea0
0081fef4  e8 ff ff ea                                      b #0x81fe9c
0081fef8  04 20 94 e5                                      ldr r2, [r4, #4]
0081fefc  04 20 92 e5                                      ldr r2, [r2, #4]
0081ff00  02 00 54 e1                                      cmp r4, r2
0081ff04  0c c0 94 05                                      ldreq ip, [r4, #0xc]
0081ff08  dc ff ff 0a                                      beq #0x81fe80
0081ff0c  08 c0 94 e5                                      ldr ip, [r4, #8]
0081ff10  00 00 5c e3                                      cmp ip, #0
0081ff14  d6 ff ff 1a                                      bne #0x81fe74
0081ff18  04 c0 94 e5                                      ldr ip, [r4, #4]
0081ff1c  08 20 9c e5                                      ldr r2, [ip, #8]
0081ff20  02 00 54 e1                                      cmp r4, r2
0081ff24  01 00 00 0a                                      beq #0x81ff30
0081ff28  d4 ff ff ea                                      b #0x81fe80
0081ff2c  02 c0 a0 e1                                      mov ip, r2
0081ff30  04 20 9c e5                                      ldr r2, [ip, #4]
0081ff34  08 10 92 e5                                      ldr r1, [r2, #8]
0081ff38  0c 00 51 e1                                      cmp r1, ip
0081ff3c  fa ff ff 0a                                      beq #0x81ff2c
0081ff40  02 c0 a0 e1                                      mov ip, r2
0081ff44  cd ff ff ea                                      b #0x81fe80
0081ff48  02 00 00 1a                                      bne #0x81ff58
0081ff4c  10 20 9c e5                                      ldr r2, [ip, #0x10]
0081ff50  0a 00 52 e1                                      cmp r2, sl
0081ff54  d7 ff ff 3a                                      blo #0x81feb8
0081ff58  0c 70 94 e5                                      ldr r7, [r4, #0xc]
0081ff5c  00 00 57 e3                                      cmp r7, #0
0081ff60  67 00 00 0a                                      beq #0x820104
0081ff64  07 c0 a0 e1                                      mov ip, r7
0081ff68  00 00 00 ea                                      b #0x81ff70
0081ff6c  02 c0 a0 e1                                      mov ip, r2
0081ff70  08 20 9c e5                                      ldr r2, [ip, #8]
0081ff74  00 00 52 e3                                      cmp r2, #0
0081ff78  fb ff ff 1a                                      bne #0x81ff6c
0081ff7c  00 00 50 e3                                      cmp r0, #0
0081ff80  04 00 00 1a                                      bne #0x81ff98
0081ff84  08 00 51 e1                                      cmp r1, r8
0081ff88  42 00 00 8a                                      bhi #0x820098
0081ff8c  3f 00 00 0a                                      beq #0x820090
0081ff90  00 40 86 e5                                      str r4, [r6]
0081ff94  d0 ff ff ea                                      b #0x81fedc
0081ff98  03 20 a0 e1                                      mov r2, r3
0081ff9c  05 10 a0 e1                                      mov r1, r5
0081ffa0  08 00 8d e2                                      add r0, sp, #8
0081ffa4  30 ff ff eb                                      bl #0x81fc6c
0081ffa8  08 30 9d e5                                      ldr r3, [sp, #8]
0081ffac  00 30 86 e5                                      str r3, [r6]
0081ffb0  c9 ff ff ea                                      b #0x81fedc
0081ffb4  10 20 91 e5                                      ldr r2, [r1, #0x10]
0081ffb8  00 00 52 e3                                      cmp r2, #0
0081ffbc  81 00 00 0a                                      beq #0x8201c8
0081ffc0  04 20 93 e5                                      ldr r2, [r3, #4]
0081ffc4  14 10 94 e5                                      ldr r1, [r4, #0x14]
0081ffc8  00 00 93 e5                                      ldr r0, [r3]
0081ffcc  10 c0 94 e5                                      ldr ip, [r4, #0x10]
0081ffd0  02 00 51 e1                                      cmp r1, r2
0081ffd4  ba ff ff 8a                                      bhi #0x81fec4
0081ffd8  5e 00 00 0a                                      beq #0x820158
0081ffdc  01 00 52 e1                                      cmp r2, r1
0081ffe0  02 00 00 8a                                      bhi #0x81fff0
0081ffe4  e9 ff ff 1a                                      bne #0x81ff90
0081ffe8  0c 00 50 e1                                      cmp r0, ip
0081ffec  e7 ff ff 9a                                      bls #0x81ff90
0081fff0  0c e0 94 e5                                      ldr lr, [r4, #0xc]
0081fff4  00 00 5e e3                                      cmp lr, #0
0081fff8  59 00 00 0a                                      beq #0x820164
0081fffc  0e c0 a0 e1                                      mov ip, lr
00820000  00 00 00 ea                                      b #0x820008
00820004  01 c0 a0 e1                                      mov ip, r1
00820008  08 10 9c e5                                      ldr r1, [ip, #8]
0082000c  00 00 51 e3                                      cmp r1, #0
00820010  fb ff ff 1a                                      bne #0x820004
00820014  0c 00 55 e1                                      cmp r5, ip
00820018  05 10 a0 01                                      moveq r1, r5
0082001c  04 20 a0 01                                      moveq r2, r4
00820020  31 00 00 0a                                      beq #0x8200ec
00820024  14 10 9c e5                                      ldr r1, [ip, #0x14]
00820028  10 70 9c e5                                      ldr r7, [ip, #0x10]
0082002c  02 00 51 e1                                      cmp r1, r2
00820030  5b 00 00 8a                                      bhi #0x8201a4
00820034  58 00 00 0a                                      beq #0x82019c
00820038  03 20 a0 e1                                      mov r2, r3
0082003c  05 10 a0 e1                                      mov r1, r5
00820040  18 00 8d e2                                      add r0, sp, #0x18
00820044  08 ff ff eb                                      bl #0x81fc6c
00820048  18 30 9d e5                                      ldr r3, [sp, #0x18]
0082004c  00 30 86 e5                                      str r3, [r6]
00820050  a1 ff ff ea                                      b #0x81fedc
00820054  0c 20 94 e5                                      ldr r2, [r4, #0xc]
00820058  04 00 93 e5                                      ldr r0, [r3, #4]
0082005c  00 e0 93 e5                                      ldr lr, [r3]
00820060  14 10 92 e5                                      ldr r1, [r2, #0x14]
00820064  10 c0 92 e5                                      ldr ip, [r2, #0x10]
00820068  01 00 50 e1                                      cmp r0, r1
0082006c  1d 00 00 8a                                      bhi #0x8200e8
00820070  1a 00 00 0a                                      beq #0x8200e0
00820074  03 20 a0 e1                                      mov r2, r3
00820078  05 10 a0 e1                                      mov r1, r5
0082007c  10 00 8d e2                                      add r0, sp, #0x10
00820080  f9 fe ff eb                                      bl #0x81fc6c
00820084  10 30 9d e5                                      ldr r3, [sp, #0x10]
00820088  00 30 86 e5                                      str r3, [r6]
0082008c  92 ff ff ea                                      b #0x81fedc
00820090  0b 00 5a e1                                      cmp sl, fp
00820094  bd ff ff 9a                                      bls #0x81ff90
00820098  0c 00 55 e1                                      cmp r5, ip
0082009c  06 00 00 0a                                      beq #0x8200bc
008200a0  14 20 9c e5                                      ldr r2, [ip, #0x14]
008200a4  01 00 52 e1                                      cmp r2, r1
008200a8  03 00 00 8a                                      bhi #0x8200bc
008200ac  b9 ff ff 1a                                      bne #0x81ff98
008200b0  10 20 9c e5                                      ldr r2, [ip, #0x10]
008200b4  0a 00 52 e1                                      cmp r2, sl
008200b8  b6 ff ff 9a                                      bls #0x81ff98
008200bc  00 00 57 e3                                      cmp r7, #0
008200c0  46 00 00 0a                                      beq #0x8201e0
008200c4  00 e0 a0 e3                                      mov lr, #0
008200c8  05 10 a0 e1                                      mov r1, r5
008200cc  0c 20 a0 e1                                      mov r2, ip
008200d0  06 00 a0 e1                                      mov r0, r6
008200d4  00 50 8d e8                                      stm sp, {ip, lr}
008200d8  a8 fe ff eb                                      bl #0x81fb80
008200dc  7e ff ff ea                                      b #0x81fedc
008200e0  0c 00 5e e1                                      cmp lr, ip
008200e4  e2 ff ff 9a                                      bls #0x820074
008200e8  05 10 a0 e1                                      mov r1, r5
008200ec  00 c0 a0 e3                                      mov ip, #0
008200f0  06 00 a0 e1                                      mov r0, r6
008200f4  00 c0 8d e5                                      str ip, [sp]
008200f8  04 40 8d e5                                      str r4, [sp, #4]
008200fc  9f fe ff eb                                      bl #0x81fb80
00820100  75 ff ff ea                                      b #0x81fedc
00820104  04 20 94 e5                                      ldr r2, [r4, #4]
00820108  0c c0 92 e5                                      ldr ip, [r2, #0xc]
0082010c  0c 00 54 e1                                      cmp r4, ip
00820110  04 c0 a0 11                                      movne ip, r4
00820114  04 00 00 1a                                      bne #0x82012c
00820118  02 c0 a0 e1                                      mov ip, r2
0082011c  04 20 92 e5                                      ldr r2, [r2, #4]
00820120  0c 90 92 e5                                      ldr sb, [r2, #0xc]
00820124  09 00 5c e1                                      cmp ip, sb
00820128  fa ff ff 0a                                      beq #0x820118
0082012c  0c 90 9c e5                                      ldr sb, [ip, #0xc]
00820130  09 00 52 e1                                      cmp r2, sb
00820134  02 c0 a0 11                                      movne ip, r2
00820138  8f ff ff ea                                      b #0x81ff7c
0082013c  05 10 a0 e1                                      mov r1, r5
00820140  0c 20 a0 e1                                      mov r2, ip
00820144  06 00 a0 e1                                      mov r0, r6
00820148  00 e0 8d e5                                      str lr, [sp]
0082014c  04 c0 8d e5                                      str ip, [sp, #4]
00820150  8a fe ff eb                                      bl #0x81fb80
00820154  60 ff ff ea                                      b #0x81fedc
00820158  00 00 5c e1                                      cmp ip, r0
0082015c  9e ff ff 9a                                      bls #0x81ffdc
00820160  57 ff ff ea                                      b #0x81fec4
00820164  04 10 94 e5                                      ldr r1, [r4, #4]
00820168  0c c0 91 e5                                      ldr ip, [r1, #0xc]
0082016c  0c 00 54 e1                                      cmp r4, ip
00820170  04 c0 a0 11                                      movne ip, r4
00820174  04 00 00 1a                                      bne #0x82018c
00820178  01 c0 a0 e1                                      mov ip, r1
0082017c  04 10 91 e5                                      ldr r1, [r1, #4]
00820180  0c 70 91 e5                                      ldr r7, [r1, #0xc]
00820184  0c 00 57 e1                                      cmp r7, ip
00820188  fa ff ff 0a                                      beq #0x820178
0082018c  0c 70 9c e5                                      ldr r7, [ip, #0xc]
00820190  07 00 51 e1                                      cmp r1, r7
00820194  01 c0 a0 11                                      movne ip, r1
00820198  9d ff ff ea                                      b #0x820014
0082019c  00 00 57 e1                                      cmp r7, r0
008201a0  a4 ff ff 9a                                      bls #0x820038
008201a4  00 00 5e e3                                      cmp lr, #0
008201a8  c5 ff ff 1a                                      bne #0x8200c4
008201ac  05 10 a0 e1                                      mov r1, r5
008201b0  04 20 a0 e1                                      mov r2, r4
008201b4  06 00 a0 e1                                      mov r0, r6
008201b8  00 e0 8d e5                                      str lr, [sp]
008201bc  04 40 8d e5                                      str r4, [sp, #4]
008201c0  6e fe ff eb                                      bl #0x81fb80
008201c4  44 ff ff ea                                      b #0x81fedc
008201c8  03 20 a0 e1                                      mov r2, r3
008201cc  20 00 8d e2                                      add r0, sp, #0x20
008201d0  a5 fe ff eb                                      bl #0x81fc6c
008201d4  20 30 9d e5                                      ldr r3, [sp, #0x20]
008201d8  00 30 86 e5                                      str r3, [r6]
008201dc  3e ff ff ea                                      b #0x81fedc
008201e0  05 10 a0 e1                                      mov r1, r5
008201e4  04 20 a0 e1                                      mov r2, r4
008201e8  06 00 a0 e1                                      mov r0, r6
008201ec  00 70 8d e5                                      str r7, [sp]
008201f0  04 40 8d e5                                      str r4, [sp, #4]
008201f4  61 fe ff eb                                      bl #0x81fb80
008201f8  37 ff ff ea                                      b #0x81fedc

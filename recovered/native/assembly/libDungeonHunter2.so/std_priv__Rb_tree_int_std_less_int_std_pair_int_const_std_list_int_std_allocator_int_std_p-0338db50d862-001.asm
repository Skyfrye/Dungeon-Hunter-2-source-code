; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003441f8, declared_size=136, range_size=136, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, std::list<int, std::allocator<int> > >, std::priv::_Select1st<std::pair<int const, std::list<int, std::allocator<int> > > >, std::priv::_MapTraitsT<std::pair<int const, std::list<int, std::allocator<int> > > >, std::allocator<std::pair<int const, std::list<int, std::allocator<int> > > > >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKiSt4listIiSaIiEEENS_10_Select1stIS8_EENS_11_MapTraitsTIS8_EESaIS8_EE14_M_create_nodeERKS8_
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, std::list<int, std::allocator<int> > >, std::priv::_Select1st<std::pair<int const, std::list<int, std::allocator<int> > > >, std::priv::_MapTraitsT<std::pair<int const, std::list<int, std::allocator<int> > > >, std::allocator<std::pair<int const, std::list<int, std::allocator<int> > > > >::_M_create_node(std::pair<int const, std::list<int, std::allocator<int> > > const&)
; decoder-mode: arm
003441f8  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
003441fc  0c d0 4d e2                                      sub sp, sp, #0xc
00344200  1c 30 a0 e3                                      mov r3, #0x1c
00344204  08 00 8d e2                                      add r0, sp, #8
00344208  04 30 20 e5                                      str r3, [r0, #-4]!
0034420c  01 60 a0 e1                                      mov r6, r1
00344210  2a 13 0f eb                                      bl #0x708ec0
00344214  00 30 96 e5                                      ldr r3, [r6]
00344218  14 40 80 e2                                      add r4, r0, #0x14
0034421c  14 40 80 e5                                      str r4, [r0, #0x14]
00344220  10 30 80 e5                                      str r3, [r0, #0x10]
00344224  18 40 80 e5                                      str r4, [r0, #0x18]
00344228  04 50 b6 e5                                      ldr r5, [r6, #4]!
0034422c  00 70 a0 e1                                      mov r7, r0
00344230  06 00 55 e1                                      cmp r5, r6
00344234  0b 00 00 0a                                      beq #0x344268
00344238  04 00 a0 e1                                      mov r0, r4
0034423c  e5 ff ff eb                                      bl #0x3441d8
00344240  08 30 95 e5                                      ldr r3, [r5, #8]
00344244  08 30 80 e5                                      str r3, [r0, #8]
00344248  04 30 94 e5                                      ldr r3, [r4, #4]
0034424c  00 40 80 e5                                      str r4, [r0]
00344250  04 30 80 e5                                      str r3, [r0, #4]
00344254  00 00 83 e5                                      str r0, [r3]
00344258  04 00 84 e5                                      str r0, [r4, #4]
0034425c  00 50 95 e5                                      ldr r5, [r5]
00344260  05 00 56 e1                                      cmp r6, r5
00344264  f3 ff ff 1a                                      bne #0x344238
00344268  00 30 a0 e3                                      mov r3, #0
0034426c  0c 30 87 e5                                      str r3, [r7, #0xc]
00344270  08 30 87 e5                                      str r3, [r7, #8]
00344274  07 00 a0 e1                                      mov r0, r7
00344278  0c d0 8d e2                                      add sp, sp, #0xc
0034427c  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x00344280, declared_size=216, range_size=216, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, std::list<int, std::allocator<int> > >, std::priv::_Select1st<std::pair<int const, std::list<int, std::allocator<int> > > >, std::priv::_MapTraitsT<std::pair<int const, std::list<int, std::allocator<int> > > >, std::allocator<std::pair<int const, std::list<int, std::allocator<int> > > > >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKiSt4listIiSaIiEEENS_10_Select1stIS8_EENS_11_MapTraitsTIS8_EESaIS8_EE9_M_insertEPNS_18_Rb_tree_node_baseERKS8_SG_SG_
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, std::list<int, std::allocator<int> > >, std::priv::_Select1st<std::pair<int const, std::list<int, std::allocator<int> > > >, std::priv::_MapTraitsT<std::pair<int const, std::list<int, std::allocator<int> > > >, std::allocator<std::pair<int const, std::list<int, std::allocator<int> > > > >::_M_insert(std::priv::_Rb_tree_node_base*, std::pair<int const, std::list<int, std::allocator<int> > > const&, std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
00344280  02 00 51 e1                                      cmp r1, r2
00344284  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00344288  01 40 a0 e1                                      mov r4, r1
0034428c  02 50 a0 e1                                      mov r5, r2
00344290  00 60 a0 e1                                      mov r6, r0
00344294  22 00 00 0a                                      beq #0x344324
00344298  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0034429c  00 00 52 e3                                      cmp r2, #0
003442a0  11 00 00 0a                                      beq #0x3442ec
003442a4  03 10 a0 e1                                      mov r1, r3
003442a8  04 00 a0 e1                                      mov r0, r4
003442ac  d1 ff ff eb                                      bl #0x3441f8
003442b0  0c 00 85 e5                                      str r0, [r5, #0xc]
003442b4  0c 30 94 e5                                      ldr r3, [r4, #0xc]
003442b8  00 70 a0 e1                                      mov r7, r0
003442bc  03 00 55 e1                                      cmp r5, r3
003442c0  15 00 00 0a                                      beq #0x34431c
003442c4  07 00 a0 e1                                      mov r0, r7
003442c8  04 50 87 e5                                      str r5, [r7, #4]
003442cc  04 10 84 e2                                      add r1, r4, #4
003442d0  22 3d ff eb                                      bl #0x313760
003442d4  10 30 94 e5                                      ldr r3, [r4, #0x10]
003442d8  06 00 a0 e1                                      mov r0, r6
003442dc  01 30 83 e2                                      add r3, r3, #1
003442e0  10 30 84 e5                                      str r3, [r4, #0x10]
003442e4  00 70 86 e5                                      str r7, [r6]
003442e8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003442ec  18 20 9d e5                                      ldr r2, [sp, #0x18]
003442f0  00 00 52 e3                                      cmp r2, #0
003442f4  12 00 00 0a                                      beq #0x344344
003442f8  03 10 a0 e1                                      mov r1, r3
003442fc  04 00 a0 e1                                      mov r0, r4
00344300  bc ff ff eb                                      bl #0x3441f8
00344304  08 00 85 e5                                      str r0, [r5, #8]
00344308  08 30 94 e5                                      ldr r3, [r4, #8]
0034430c  00 70 a0 e1                                      mov r7, r0
00344310  03 00 55 e1                                      cmp r5, r3
00344314  08 00 84 05                                      streq r0, [r4, #8]
00344318  e9 ff ff ea                                      b #0x3442c4
0034431c  0c 70 84 e5                                      str r7, [r4, #0xc]
00344320  e7 ff ff ea                                      b #0x3442c4
00344324  03 10 a0 e1                                      mov r1, r3
00344328  04 00 a0 e1                                      mov r0, r4
0034432c  b1 ff ff eb                                      bl #0x3441f8
00344330  00 70 a0 e1                                      mov r7, r0
00344334  08 00 84 e5                                      str r0, [r4, #8]
00344338  04 00 84 e5                                      str r0, [r4, #4]
0034433c  0c 00 84 e5                                      str r0, [r4, #0xc]
00344340  df ff ff ea                                      b #0x3442c4
00344344  00 10 93 e5                                      ldr r1, [r3]
00344348  10 20 95 e5                                      ldr r2, [r5, #0x10]
0034434c  02 00 51 e1                                      cmp r1, r2
00344350  d3 ff ff aa                                      bge #0x3442a4
00344354  e7 ff ff ea                                      b #0x3442f8

; FUNCTION 0x00344358, declared_size=392, range_size=392, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, std::list<int, std::allocator<int> > >, std::priv::_Select1st<std::pair<int const, std::list<int, std::allocator<int> > > >, std::priv::_MapTraitsT<std::pair<int const, std::list<int, std::allocator<int> > > >, std::allocator<std::pair<int const, std::list<int, std::allocator<int> > > > >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKiSt4listIiSaIiEEENS_10_Select1stIS8_EENS_11_MapTraitsTIS8_EESaIS8_EE13insert_uniqueERKS8_
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, std::list<int, std::allocator<int> > >, std::priv::_Select1st<std::pair<int const, std::list<int, std::allocator<int> > > >, std::priv::_MapTraitsT<std::pair<int const, std::list<int, std::allocator<int> > > >, std::allocator<std::pair<int const, std::list<int, std::allocator<int> > > > >::insert_unique(std::pair<int const, std::list<int, std::allocator<int> > > const&)
; decoder-mode: arm
00344358  70 40 2d e9                                      push {r4, r5, r6, lr}
0034435c  04 c0 91 e5                                      ldr ip, [r1, #4]
00344360  10 d0 4d e2                                      sub sp, sp, #0x10
00344364  00 40 a0 e1                                      mov r4, r0
00344368  00 00 5c e3                                      cmp ip, #0
0034436c  02 30 a0 e1                                      mov r3, r2
00344370  01 c0 a0 01                                      moveq ip, r1
00344374  15 00 00 0a                                      beq #0x3443d0
00344378  00 60 92 e5                                      ldr r6, [r2]
0034437c  00 00 00 ea                                      b #0x344384
00344380  02 c0 a0 e1                                      mov ip, r2
00344384  10 00 9c e5                                      ldr r0, [ip, #0x10]
00344388  01 50 a0 e3                                      mov r5, #1
0034438c  06 00 50 e1                                      cmp r0, r6
00344390  08 20 9c c5                                      ldrgt r2, [ip, #8]
00344394  0c 20 9c d5                                      ldrle r2, [ip, #0xc]
00344398  00 50 a0 d3                                      movle r5, #0
0034439c  00 00 52 e3                                      cmp r2, #0
003443a0  f6 ff ff 1a                                      bne #0x344380
003443a4  00 00 55 e3                                      cmp r5, #0
003443a8  0c 50 a0 01                                      moveq r5, ip
003443ac  07 00 00 1a                                      bne #0x3443d0
003443b0  00 00 56 e1                                      cmp r6, r0
003443b4  00 30 a0 d3                                      movle r3, #0
003443b8  00 50 84 d5                                      strle r5, [r4]
003443bc  04 30 c4 d5                                      strble r3, [r4, #4]
003443c0  1c 00 00 ca                                      bgt #0x344438
003443c4  04 00 a0 e1                                      mov r0, r4
003443c8  10 d0 8d e2                                      add sp, sp, #0x10
003443cc  70 80 bd e8                                      pop {r4, r5, r6, pc}
003443d0  08 20 91 e5                                      ldr r2, [r1, #8]
003443d4  02 00 5c e1                                      cmp ip, r2
003443d8  36 00 00 0a                                      beq #0x3444b8
003443dc  00 20 dc e5                                      ldrb r2, [ip]
003443e0  00 00 52 e3                                      cmp r2, #0
003443e4  03 00 00 1a                                      bne #0x3443f8
003443e8  04 20 9c e5                                      ldr r2, [ip, #4]
003443ec  04 20 92 e5                                      ldr r2, [r2, #4]
003443f0  02 00 5c e1                                      cmp ip, r2
003443f4  2a 00 00 0a                                      beq #0x3444a4
003443f8  08 00 9c e5                                      ldr r0, [ip, #8]
003443fc  00 00 50 e3                                      cmp r0, #0
00344400  01 00 00 1a                                      bne #0x34440c
00344404  16 00 00 ea                                      b #0x344464
00344408  02 00 a0 e1                                      mov r0, r2
0034440c  0c 20 90 e5                                      ldr r2, [r0, #0xc]
00344410  00 00 52 e3                                      cmp r2, #0
00344414  fb ff ff 1a                                      bne #0x344408
00344418  00 60 93 e5                                      ldr r6, [r3]
0034441c  00 50 a0 e1                                      mov r5, r0
00344420  10 00 90 e5                                      ldr r0, [r0, #0x10]
00344424  00 00 56 e1                                      cmp r6, r0
00344428  00 30 a0 d3                                      movle r3, #0
0034442c  00 50 84 d5                                      strle r5, [r4]
00344430  04 30 c4 d5                                      strble r3, [r4, #4]
00344434  e2 ff ff da                                      ble #0x3443c4
00344438  0c 20 a0 e1                                      mov r2, ip
0034443c  08 00 8d e2                                      add r0, sp, #8
00344440  00 c0 a0 e3                                      mov ip, #0
00344444  04 c0 8d e5                                      str ip, [sp, #4]
00344448  00 c0 8d e5                                      str ip, [sp]
0034444c  8b ff ff eb                                      bl #0x344280
00344450  08 30 9d e5                                      ldr r3, [sp, #8]
00344454  01 20 a0 e3                                      mov r2, #1
00344458  04 20 c4 e5                                      strb r2, [r4, #4]
0034445c  00 30 84 e5                                      str r3, [r4]
00344460  d7 ff ff ea                                      b #0x3443c4
00344464  04 20 9c e5                                      ldr r2, [ip, #4]
00344468  08 00 92 e5                                      ldr r0, [r2, #8]
0034446c  00 00 5c e1                                      cmp ip, r0
00344470  02 50 a0 11                                      movne r5, r2
00344474  00 60 93 15                                      ldrne r6, [r3]
00344478  10 00 92 15                                      ldrne r0, [r2, #0x10]
0034447c  01 00 00 0a                                      beq #0x344488
00344480  ca ff ff ea                                      b #0x3443b0
00344484  05 20 a0 e1                                      mov r2, r5
00344488  04 50 92 e5                                      ldr r5, [r2, #4]
0034448c  08 00 95 e5                                      ldr r0, [r5, #8]
00344490  02 00 50 e1                                      cmp r0, r2
00344494  fa ff ff 0a                                      beq #0x344484
00344498  00 60 93 e5                                      ldr r6, [r3]
0034449c  10 00 95 e5                                      ldr r0, [r5, #0x10]
003444a0  c2 ff ff ea                                      b #0x3443b0
003444a4  0c 20 9c e5                                      ldr r2, [ip, #0xc]
003444a8  00 60 93 e5                                      ldr r6, [r3]
003444ac  02 50 a0 e1                                      mov r5, r2
003444b0  10 00 92 e5                                      ldr r0, [r2, #0x10]
003444b4  bd ff ff ea                                      b #0x3443b0
003444b8  0c 20 a0 e1                                      mov r2, ip
003444bc  00 e0 a0 e3                                      mov lr, #0
003444c0  0c 00 8d e2                                      add r0, sp, #0xc
003444c4  00 50 8d e8                                      stm sp, {ip, lr}
003444c8  6c ff ff eb                                      bl #0x344280
003444cc  0c 30 9d e5                                      ldr r3, [sp, #0xc]
003444d0  01 20 a0 e3                                      mov r2, #1
003444d4  04 20 c4 e5                                      strb r2, [r4, #4]
003444d8  00 30 84 e5                                      str r3, [r4]
003444dc  b8 ff ff ea                                      b #0x3443c4

; FUNCTION 0x003444e0, declared_size=884, range_size=884, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, std::list<int, std::allocator<int> > >, std::priv::_Select1st<std::pair<int const, std::list<int, std::allocator<int> > > >, std::priv::_MapTraitsT<std::pair<int const, std::list<int, std::allocator<int> > > >, std::allocator<std::pair<int const, std::list<int, std::allocator<int> > > > >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKiSt4listIiSaIiEEENS_10_Select1stIS8_EENS_11_MapTraitsTIS8_EESaIS8_EE13insert_uniqueENS_17_Rb_tree_iteratorIS8_SC_EERKS8_
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, std::list<int, std::allocator<int> > >, std::priv::_Select1st<std::pair<int const, std::list<int, std::allocator<int> > > >, std::priv::_MapTraitsT<std::pair<int const, std::list<int, std::allocator<int> > > >, std::allocator<std::pair<int const, std::list<int, std::allocator<int> > > > >::insert_unique(std::priv::_Rb_tree_iterator<std::pair<int const, std::list<int, std::allocator<int> > >, std::priv::_MapTraitsT<std::pair<int const, std::list<int, std::allocator<int> > > > >, std::pair<int const, std::list<int, std::allocator<int> > > const&)
; decoder-mode: arm
003444e0  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
003444e4  00 40 92 e5                                      ldr r4, [r2]
003444e8  08 20 91 e5                                      ldr r2, [r1, #8]
003444ec  2c d0 4d e2                                      sub sp, sp, #0x2c
003444f0  01 50 a0 e1                                      mov r5, r1
003444f4  02 00 54 e1                                      cmp r4, r2
003444f8  00 70 a0 e1                                      mov r7, r0
003444fc  03 60 a0 e1                                      mov r6, r3
00344500  5a 00 00 0a                                      beq #0x344670
00344504  01 00 54 e1                                      cmp r4, r1
00344508  78 00 00 0a                                      beq #0x3446f0
0034450c  00 30 d4 e5                                      ldrb r3, [r4]
00344510  00 00 53 e3                                      cmp r3, #0
00344514  3a 00 00 0a                                      beq #0x344604
00344518  08 c0 94 e5                                      ldr ip, [r4, #8]
0034451c  00 00 5c e3                                      cmp ip, #0
00344520  01 00 00 1a                                      bne #0x34452c
00344524  3e 00 00 ea                                      b #0x344624
00344528  03 c0 a0 e1                                      mov ip, r3
0034452c  0c 30 9c e5                                      ldr r3, [ip, #0xc]
00344530  00 00 53 e3                                      cmp r3, #0
00344534  fb ff ff 1a                                      bne #0x344528
00344538  00 20 96 e5                                      ldr r2, [r6]
0034453c  10 00 94 e5                                      ldr r0, [r4, #0x10]
00344540  00 00 52 e1                                      cmp r2, r0
00344544  00 10 a0 a3                                      movge r1, #0
00344548  01 10 a0 b3                                      movlt r1, #1
0034454c  00 00 51 e3                                      cmp r1, #0
00344550  1b 00 00 1a                                      bne #0x3445c4
00344554  0c 80 94 e5                                      ldr r8, [r4, #0xc]
00344558  00 00 58 e3                                      cmp r8, #0
0034455c  7d 00 00 0a                                      beq #0x344758
00344560  08 c0 a0 e1                                      mov ip, r8
00344564  00 00 00 ea                                      b #0x34456c
00344568  03 c0 a0 e1                                      mov ip, r3
0034456c  08 30 9c e5                                      ldr r3, [ip, #8]
00344570  00 00 53 e3                                      cmp r3, #0
00344574  fb ff ff 1a                                      bne #0x344568
00344578  00 00 51 e3                                      cmp r1, #0
0034457c  34 00 00 1a                                      bne #0x344654
00344580  00 00 52 e1                                      cmp r2, r0
00344584  63 00 00 da                                      ble #0x344718
00344588  0c 00 55 e1                                      cmp r5, ip
0034458c  02 00 00 0a                                      beq #0x34459c
00344590  10 30 9c e5                                      ldr r3, [ip, #0x10]
00344594  03 00 52 e1                                      cmp r2, r3
00344598  2d 00 00 aa                                      bge #0x344654
0034459c  00 00 58 e3                                      cmp r8, #0
003445a0  4a 00 00 1a                                      bne #0x3446d0
003445a4  05 10 a0 e1                                      mov r1, r5
003445a8  04 20 a0 e1                                      mov r2, r4
003445ac  06 30 a0 e1                                      mov r3, r6
003445b0  07 00 a0 e1                                      mov r0, r7
003445b4  00 80 8d e5                                      str r8, [sp]
003445b8  04 40 8d e5                                      str r4, [sp, #4]
003445bc  2f ff ff eb                                      bl #0x344280
003445c0  0c 00 00 ea                                      b #0x3445f8
003445c4  10 30 9c e5                                      ldr r3, [ip, #0x10]
003445c8  03 00 52 e1                                      cmp r2, r3
003445cc  e0 ff ff da                                      ble #0x344554
003445d0  0c e0 9c e5                                      ldr lr, [ip, #0xc]
003445d4  00 00 5e e3                                      cmp lr, #0
003445d8  56 00 00 0a                                      beq #0x344738
003445dc  00 c0 a0 e3                                      mov ip, #0
003445e0  05 10 a0 e1                                      mov r1, r5
003445e4  04 20 a0 e1                                      mov r2, r4
003445e8  06 30 a0 e1                                      mov r3, r6
003445ec  07 00 a0 e1                                      mov r0, r7
003445f0  10 10 8d e8                                      stm sp, {r4, ip}
003445f4  21 ff ff eb                                      bl #0x344280
003445f8  07 00 a0 e1                                      mov r0, r7
003445fc  2c d0 8d e2                                      add sp, sp, #0x2c
00344600  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00344604  04 30 94 e5                                      ldr r3, [r4, #4]
00344608  04 30 93 e5                                      ldr r3, [r3, #4]
0034460c  03 00 54 e1                                      cmp r4, r3
00344610  0c c0 94 05                                      ldreq ip, [r4, #0xc]
00344614  c7 ff ff 0a                                      beq #0x344538
00344618  08 c0 94 e5                                      ldr ip, [r4, #8]
0034461c  00 00 5c e3                                      cmp ip, #0
00344620  c1 ff ff 1a                                      bne #0x34452c
00344624  04 c0 94 e5                                      ldr ip, [r4, #4]
00344628  08 30 9c e5                                      ldr r3, [ip, #8]
0034462c  03 00 54 e1                                      cmp r4, r3
00344630  01 00 00 0a                                      beq #0x34463c
00344634  bf ff ff ea                                      b #0x344538
00344638  03 c0 a0 e1                                      mov ip, r3
0034463c  04 30 9c e5                                      ldr r3, [ip, #4]
00344640  08 20 93 e5                                      ldr r2, [r3, #8]
00344644  0c 00 52 e1                                      cmp r2, ip
00344648  fa ff ff 0a                                      beq #0x344638
0034464c  03 c0 a0 e1                                      mov ip, r3
00344650  b8 ff ff ea                                      b #0x344538
00344654  05 10 a0 e1                                      mov r1, r5
00344658  06 20 a0 e1                                      mov r2, r6
0034465c  08 00 8d e2                                      add r0, sp, #8
00344660  3c ff ff eb                                      bl #0x344358
00344664  08 30 9d e5                                      ldr r3, [sp, #8]
00344668  00 30 87 e5                                      str r3, [r7]
0034466c  e1 ff ff ea                                      b #0x3445f8
00344670  10 20 91 e5                                      ldr r2, [r1, #0x10]
00344674  00 00 52 e3                                      cmp r2, #0
00344678  52 00 00 0a                                      beq #0x3447c8
0034467c  00 20 93 e5                                      ldr r2, [r3]
00344680  10 c0 94 e5                                      ldr ip, [r4, #0x10]
00344684  0c 00 52 e1                                      cmp r2, ip
00344688  54 00 00 ba                                      blt #0x3447e0
0034468c  21 00 00 da                                      ble #0x344718
00344690  0c e0 94 e5                                      ldr lr, [r4, #0xc]
00344694  00 00 5e e3                                      cmp lr, #0
00344698  3c 00 00 0a                                      beq #0x344790
0034469c  0e c0 a0 e1                                      mov ip, lr
003446a0  00 00 00 ea                                      b #0x3446a8
003446a4  03 c0 a0 e1                                      mov ip, r3
003446a8  08 30 9c e5                                      ldr r3, [ip, #8]
003446ac  00 00 53 e3                                      cmp r3, #0
003446b0  fb ff ff 1a                                      bne #0x3446a4
003446b4  0c 00 55 e1                                      cmp r5, ip
003446b8  5c 00 00 0a                                      beq #0x344830
003446bc  10 30 9c e5                                      ldr r3, [ip, #0x10]
003446c0  03 00 52 e1                                      cmp r2, r3
003446c4  4a 00 00 aa                                      bge #0x3447f4
003446c8  00 00 5e e3                                      cmp lr, #0
003446cc  4f 00 00 0a                                      beq #0x344810
003446d0  00 e0 a0 e3                                      mov lr, #0
003446d4  05 10 a0 e1                                      mov r1, r5
003446d8  0c 20 a0 e1                                      mov r2, ip
003446dc  06 30 a0 e1                                      mov r3, r6
003446e0  07 00 a0 e1                                      mov r0, r7
003446e4  00 50 8d e8                                      stm sp, {ip, lr}
003446e8  e4 fe ff eb                                      bl #0x344280
003446ec  c1 ff ff ea                                      b #0x3445f8
003446f0  0c 20 94 e5                                      ldr r2, [r4, #0xc]
003446f4  00 c0 93 e5                                      ldr ip, [r3]
003446f8  10 e0 92 e5                                      ldr lr, [r2, #0x10]
003446fc  0c 00 5e e1                                      cmp lr, ip
00344700  06 00 00 aa                                      bge #0x344720
00344704  00 c0 a0 e3                                      mov ip, #0
00344708  00 c0 8d e5                                      str ip, [sp]
0034470c  04 40 8d e5                                      str r4, [sp, #4]
00344710  da fe ff eb                                      bl #0x344280
00344714  b7 ff ff ea                                      b #0x3445f8
00344718  00 40 87 e5                                      str r4, [r7]
0034471c  b5 ff ff ea                                      b #0x3445f8
00344720  03 20 a0 e1                                      mov r2, r3
00344724  10 00 8d e2                                      add r0, sp, #0x10
00344728  0a ff ff eb                                      bl #0x344358
0034472c  10 30 9d e5                                      ldr r3, [sp, #0x10]
00344730  00 30 87 e5                                      str r3, [r7]
00344734  af ff ff ea                                      b #0x3445f8
00344738  05 10 a0 e1                                      mov r1, r5
0034473c  0c 20 a0 e1                                      mov r2, ip
00344740  06 30 a0 e1                                      mov r3, r6
00344744  07 00 a0 e1                                      mov r0, r7
00344748  00 e0 8d e5                                      str lr, [sp]
0034474c  04 c0 8d e5                                      str ip, [sp, #4]
00344750  ca fe ff eb                                      bl #0x344280
00344754  a7 ff ff ea                                      b #0x3445f8
00344758  04 30 94 e5                                      ldr r3, [r4, #4]
0034475c  0c c0 93 e5                                      ldr ip, [r3, #0xc]
00344760  0c 00 54 e1                                      cmp r4, ip
00344764  04 c0 a0 11                                      movne ip, r4
00344768  04 00 00 1a                                      bne #0x344780
0034476c  03 c0 a0 e1                                      mov ip, r3
00344770  04 30 93 e5                                      ldr r3, [r3, #4]
00344774  0c a0 93 e5                                      ldr sl, [r3, #0xc]
00344778  0a 00 5c e1                                      cmp ip, sl
0034477c  fa ff ff 0a                                      beq #0x34476c
00344780  0c a0 9c e5                                      ldr sl, [ip, #0xc]
00344784  0a 00 53 e1                                      cmp r3, sl
00344788  03 c0 a0 11                                      movne ip, r3
0034478c  79 ff ff ea                                      b #0x344578
00344790  04 30 94 e5                                      ldr r3, [r4, #4]
00344794  0c 10 93 e5                                      ldr r1, [r3, #0xc]
00344798  01 00 54 e1                                      cmp r4, r1
0034479c  04 c0 a0 11                                      movne ip, r4
003447a0  04 00 00 1a                                      bne #0x3447b8
003447a4  03 c0 a0 e1                                      mov ip, r3
003447a8  04 30 93 e5                                      ldr r3, [r3, #4]
003447ac  0c 10 93 e5                                      ldr r1, [r3, #0xc]
003447b0  0c 00 51 e1                                      cmp r1, ip
003447b4  fa ff ff 0a                                      beq #0x3447a4
003447b8  0c 10 9c e5                                      ldr r1, [ip, #0xc]
003447bc  01 00 53 e1                                      cmp r3, r1
003447c0  03 c0 a0 11                                      movne ip, r3
003447c4  ba ff ff ea                                      b #0x3446b4
003447c8  03 20 a0 e1                                      mov r2, r3
003447cc  20 00 8d e2                                      add r0, sp, #0x20
003447d0  e0 fe ff eb                                      bl #0x344358
003447d4  20 30 9d e5                                      ldr r3, [sp, #0x20]
003447d8  00 30 87 e5                                      str r3, [r7]
003447dc  85 ff ff ea                                      b #0x3445f8
003447e0  00 c0 a0 e3                                      mov ip, #0
003447e4  04 20 a0 e1                                      mov r2, r4
003447e8  10 10 8d e8                                      stm sp, {r4, ip}
003447ec  a3 fe ff eb                                      bl #0x344280
003447f0  80 ff ff ea                                      b #0x3445f8
003447f4  05 10 a0 e1                                      mov r1, r5
003447f8  06 20 a0 e1                                      mov r2, r6
003447fc  18 00 8d e2                                      add r0, sp, #0x18
00344800  d4 fe ff eb                                      bl #0x344358
00344804  18 30 9d e5                                      ldr r3, [sp, #0x18]
00344808  00 30 87 e5                                      str r3, [r7]
0034480c  79 ff ff ea                                      b #0x3445f8
00344810  05 10 a0 e1                                      mov r1, r5
00344814  04 20 a0 e1                                      mov r2, r4
00344818  06 30 a0 e1                                      mov r3, r6
0034481c  07 00 a0 e1                                      mov r0, r7
00344820  00 e0 8d e5                                      str lr, [sp]
00344824  04 40 8d e5                                      str r4, [sp, #4]
00344828  94 fe ff eb                                      bl #0x344280
0034482c  71 ff ff ea                                      b #0x3445f8
00344830  00 c0 a0 e3                                      mov ip, #0
00344834  05 10 a0 e1                                      mov r1, r5
00344838  04 20 a0 e1                                      mov r2, r4
0034483c  06 30 a0 e1                                      mov r3, r6
00344840  07 00 a0 e1                                      mov r0, r7
00344844  00 c0 8d e5                                      str ip, [sp]
00344848  04 40 8d e5                                      str r4, [sp, #4]
0034484c  8b fe ff eb                                      bl #0x344280
00344850  68 ff ff ea                                      b #0x3445f8

; FUNCTION 0x00345b4c, declared_size=64, range_size=64, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, std::list<int, std::allocator<int> > >, std::priv::_Select1st<std::pair<int const, std::list<int, std::allocator<int> > > >, std::priv::_MapTraitsT<std::pair<int const, std::list<int, std::allocator<int> > > >, std::allocator<std::pair<int const, std::list<int, std::allocator<int> > > > >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKiSt4listIiSaIiEEENS_10_Select1stIS8_EENS_11_MapTraitsTIS8_EESaIS8_EE8_M_eraseEPNS_18_Rb_tree_node_baseE
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, std::list<int, std::allocator<int> > >, std::priv::_Select1st<std::pair<int const, std::list<int, std::allocator<int> > > >, std::priv::_MapTraitsT<std::pair<int const, std::list<int, std::allocator<int> > > >, std::allocator<std::pair<int const, std::list<int, std::allocator<int> > > > >::_M_erase(std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
00345b4c  70 40 2d e9                                      push {r4, r5, r6, lr}
00345b50  00 40 51 e2                                      subs r4, r1, #0
00345b54  00 60 a0 e1                                      mov r6, r0
00345b58  0a 00 00 0a                                      beq #0x345b88
00345b5c  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00345b60  06 00 a0 e1                                      mov r0, r6
00345b64  f8 ff ff eb                                      bl #0x345b4c
00345b68  08 50 94 e5                                      ldr r5, [r4, #8]
00345b6c  14 00 84 e2                                      add r0, r4, #0x14
00345b70  b5 ff ff eb                                      bl #0x345a4c
00345b74  04 00 a0 e1                                      mov r0, r4
00345b78  1c 10 a0 e3                                      mov r1, #0x1c
00345b7c  df 0c 0f eb                                      bl #0x708f00
00345b80  00 40 55 e2                                      subs r4, r5, #0
00345b84  f4 ff ff 1a                                      bne #0x345b5c
00345b88  70 80 bd e8                                      pop {r4, r5, r6, pc}

; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006a17d4, declared_size=88, range_size=88, mode=arm
; class-group: std::priv::_Rb_tree<boost::intrusive_ptr<glitch::video::IBuffer const>, std::less<boost::intrusive_ptr<glitch::video::IBuffer const> >, std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const, glitch::core::SBufferData>, std::priv::_Select1st<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const, glitch::core::SBufferData> >, std::priv::_MapTraitsT<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const, glitch::core::SBufferData> >, std::allocator<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const, glitch::core::SBufferData> > >
; alias: _ZNSt4priv8_Rb_treeIN5boost13intrusive_ptrIKN6glitch5video7IBufferEEESt4lessIS7_ESt4pairIKS7_NS3_4core11SBufferDataEENS_10_Select1stISE_EENS_11_MapTraitsTISE_EESaISE_EE8_M_eraseEPNS_18_Rb_tree_node_baseE
; demangled: std::priv::_Rb_tree<boost::intrusive_ptr<glitch::video::IBuffer const>, std::less<boost::intrusive_ptr<glitch::video::IBuffer const> >, std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const, glitch::core::SBufferData>, std::priv::_Select1st<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const, glitch::core::SBufferData> >, std::priv::_MapTraitsT<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const, glitch::core::SBufferData> >, std::allocator<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const, glitch::core::SBufferData> > >::_M_erase(std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
006a17d4  70 40 2d e9                                      push {r4, r5, r6, lr}
006a17d8  00 40 51 e2                                      subs r4, r1, #0
006a17dc  00 60 a0 e1                                      mov r6, r0
006a17e0  10 00 00 0a                                      beq #0x6a1828
006a17e4  06 00 a0 e1                                      mov r0, r6
006a17e8  0c 10 94 e5                                      ldr r1, [r4, #0xc]
006a17ec  f8 ff ff eb                                      bl #0x6a17d4
006a17f0  14 00 94 e5                                      ldr r0, [r4, #0x14]
006a17f4  08 50 94 e5                                      ldr r5, [r4, #8]
006a17f8  00 00 50 e3                                      cmp r0, #0
006a17fc  00 00 00 0a                                      beq #0x6a1804
006a1800  5f ef f1 eb                                      bl #0x31d584
006a1804  10 00 94 e5                                      ldr r0, [r4, #0x10]
006a1808  00 00 50 e3                                      cmp r0, #0
006a180c  00 00 00 0a                                      beq #0x6a1814
006a1810  5b ef f1 eb                                      bl #0x31d584
006a1814  04 00 a0 e1                                      mov r0, r4
006a1818  1c 10 a0 e3                                      mov r1, #0x1c
006a181c  b7 9d 01 eb                                      bl #0x708f00
006a1820  00 40 55 e2                                      subs r4, r5, #0
006a1824  ee ff ff 1a                                      bne #0x6a17e4
006a1828  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x006a228c, declared_size=432, range_size=432, mode=arm
; class-group: std::priv::_Rb_tree<boost::intrusive_ptr<glitch::video::IBuffer const>, std::less<boost::intrusive_ptr<glitch::video::IBuffer const> >, std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const, glitch::core::SBufferData>, std::priv::_Select1st<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const, glitch::core::SBufferData> >, std::priv::_MapTraitsT<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const, glitch::core::SBufferData> >, std::allocator<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const, glitch::core::SBufferData> > >
; alias: _ZNSt4priv8_Rb_treeIN5boost13intrusive_ptrIKN6glitch5video7IBufferEEESt4lessIS7_ESt4pairIKS7_NS3_4core11SBufferDataEENS_10_Select1stISE_EENS_11_MapTraitsTISE_EESaISE_EE9_M_insertEPNS_18_Rb_tree_node_baseERKSE_SM_SM_
; demangled: std::priv::_Rb_tree<boost::intrusive_ptr<glitch::video::IBuffer const>, std::less<boost::intrusive_ptr<glitch::video::IBuffer const> >, std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const, glitch::core::SBufferData>, std::priv::_Select1st<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const, glitch::core::SBufferData> >, std::priv::_MapTraitsT<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const, glitch::core::SBufferData> >, std::allocator<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const, glitch::core::SBufferData> > >::_M_insert(std::priv::_Rb_tree_node_base*, std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const, glitch::core::SBufferData> const&, std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
006a228c  02 00 51 e1                                      cmp r1, r2
006a2290  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006a2294  01 40 a0 e1                                      mov r4, r1
006a2298  02 70 a0 e1                                      mov r7, r2
006a229c  00 50 a0 e1                                      mov r5, r0
006a22a0  03 80 a0 e1                                      mov r8, r3
006a22a4  45 00 00 0a                                      beq #0x6a23c0
006a22a8  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
006a22ac  00 00 53 e3                                      cmp r3, #0
006a22b0  24 00 00 0a                                      beq #0x6a2348
006a22b4  04 00 a0 e1                                      mov r0, r4
006a22b8  13 fd ff eb                                      bl #0x6a170c
006a22bc  00 30 98 e5                                      ldr r3, [r8]
006a22c0  00 00 53 e3                                      cmp r3, #0
006a22c4  10 30 80 e5                                      str r3, [r0, #0x10]
006a22c8  02 00 00 0a                                      beq #0x6a22d8
006a22cc  04 20 93 e5                                      ldr r2, [r3, #4]
006a22d0  01 20 82 e2                                      add r2, r2, #1
006a22d4  04 20 83 e5                                      str r2, [r3, #4]
006a22d8  04 30 98 e5                                      ldr r3, [r8, #4]
006a22dc  00 60 a0 e1                                      mov r6, r0
006a22e0  14 30 80 e5                                      str r3, [r0, #0x14]
006a22e4  00 00 53 e3                                      cmp r3, #0
006a22e8  04 20 93 15                                      ldrne r2, [r3, #4]
006a22ec  01 20 82 12                                      addne r2, r2, #1
006a22f0  04 20 83 15                                      strne r2, [r3, #4]
006a22f4  b8 30 d8 e1                                      ldrh r3, [r8, #8]
006a22f8  b8 31 c0 e1                                      strh r3, [r0, #0x18]
006a22fc  ba 80 d8 e1                                      ldrh r8, [r8, #0xa]
006a2300  00 30 a0 e3                                      mov r3, #0
006a2304  0c 30 80 e5                                      str r3, [r0, #0xc]
006a2308  ba 81 c0 e1                                      strh r8, [r0, #0x1a]
006a230c  08 30 80 e5                                      str r3, [r0, #8]
006a2310  0c 00 87 e5                                      str r0, [r7, #0xc]
006a2314  0c 30 94 e5                                      ldr r3, [r4, #0xc]
006a2318  03 00 57 e1                                      cmp r7, r3
006a231c  0c 00 84 05                                      streq r0, [r4, #0xc]
006a2320  06 00 a0 e1                                      mov r0, r6
006a2324  04 70 86 e5                                      str r7, [r6, #4]
006a2328  04 10 84 e2                                      add r1, r4, #4
006a232c  0b c5 f1 eb                                      bl #0x313760
006a2330  10 30 94 e5                                      ldr r3, [r4, #0x10]
006a2334  05 00 a0 e1                                      mov r0, r5
006a2338  01 30 83 e2                                      add r3, r3, #1
006a233c  10 30 84 e5                                      str r3, [r4, #0x10]
006a2340  00 60 85 e5                                      str r6, [r5]
006a2344  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
006a2348  18 30 9d e5                                      ldr r3, [sp, #0x18]
006a234c  00 00 53 e3                                      cmp r3, #0
006a2350  34 00 00 0a                                      beq #0x6a2428
006a2354  04 00 a0 e1                                      mov r0, r4
006a2358  eb fc ff eb                                      bl #0x6a170c
006a235c  00 30 98 e5                                      ldr r3, [r8]
006a2360  00 60 a0 e1                                      mov r6, r0
006a2364  10 30 80 e5                                      str r3, [r0, #0x10]
006a2368  00 00 53 e3                                      cmp r3, #0
006a236c  04 20 93 15                                      ldrne r2, [r3, #4]
006a2370  01 20 82 12                                      addne r2, r2, #1
006a2374  04 20 83 15                                      strne r2, [r3, #4]
006a2378  04 30 98 e5                                      ldr r3, [r8, #4]
006a237c  14 30 80 e5                                      str r3, [r0, #0x14]
006a2380  00 00 53 e3                                      cmp r3, #0
006a2384  04 20 93 15                                      ldrne r2, [r3, #4]
006a2388  01 20 82 12                                      addne r2, r2, #1
006a238c  04 20 83 15                                      strne r2, [r3, #4]
006a2390  b8 30 d8 e1                                      ldrh r3, [r8, #8]
006a2394  b8 31 c0 e1                                      strh r3, [r0, #0x18]
006a2398  ba 80 d8 e1                                      ldrh r8, [r8, #0xa]
006a239c  00 30 a0 e3                                      mov r3, #0
006a23a0  0c 30 80 e5                                      str r3, [r0, #0xc]
006a23a4  ba 81 c0 e1                                      strh r8, [r0, #0x1a]
006a23a8  08 30 80 e5                                      str r3, [r0, #8]
006a23ac  08 00 87 e5                                      str r0, [r7, #8]
006a23b0  08 30 94 e5                                      ldr r3, [r4, #8]
006a23b4  03 00 57 e1                                      cmp r7, r3
006a23b8  08 00 84 05                                      streq r0, [r4, #8]
006a23bc  d7 ff ff ea                                      b #0x6a2320
006a23c0  01 00 a0 e1                                      mov r0, r1
006a23c4  d0 fc ff eb                                      bl #0x6a170c
006a23c8  00 30 98 e5                                      ldr r3, [r8]
006a23cc  00 60 a0 e1                                      mov r6, r0
006a23d0  10 30 80 e5                                      str r3, [r0, #0x10]
006a23d4  00 00 53 e3                                      cmp r3, #0
006a23d8  04 20 93 15                                      ldrne r2, [r3, #4]
006a23dc  01 20 82 12                                      addne r2, r2, #1
006a23e0  04 20 83 15                                      strne r2, [r3, #4]
006a23e4  04 30 98 e5                                      ldr r3, [r8, #4]
006a23e8  14 30 80 e5                                      str r3, [r0, #0x14]
006a23ec  00 00 53 e3                                      cmp r3, #0
006a23f0  04 20 93 15                                      ldrne r2, [r3, #4]
006a23f4  01 20 82 12                                      addne r2, r2, #1
006a23f8  04 20 83 15                                      strne r2, [r3, #4]
006a23fc  b8 30 d8 e1                                      ldrh r3, [r8, #8]
006a2400  b8 31 c0 e1                                      strh r3, [r0, #0x18]
006a2404  ba 80 d8 e1                                      ldrh r8, [r8, #0xa]
006a2408  00 30 a0 e3                                      mov r3, #0
006a240c  0c 30 80 e5                                      str r3, [r0, #0xc]
006a2410  ba 81 c0 e1                                      strh r8, [r0, #0x1a]
006a2414  08 30 80 e5                                      str r3, [r0, #8]
006a2418  08 00 84 e5                                      str r0, [r4, #8]
006a241c  04 00 84 e5                                      str r0, [r4, #4]
006a2420  0c 00 84 e5                                      str r0, [r4, #0xc]
006a2424  bd ff ff ea                                      b #0x6a2320
006a2428  00 20 98 e5                                      ldr r2, [r8]
006a242c  10 30 97 e5                                      ldr r3, [r7, #0x10]
006a2430  03 00 52 e1                                      cmp r2, r3
006a2434  9e ff ff 2a                                      bhs #0x6a22b4
006a2438  c5 ff ff ea                                      b #0x6a2354

; FUNCTION 0x006a243c, declared_size=392, range_size=392, mode=arm
; class-group: std::priv::_Rb_tree<boost::intrusive_ptr<glitch::video::IBuffer const>, std::less<boost::intrusive_ptr<glitch::video::IBuffer const> >, std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const, glitch::core::SBufferData>, std::priv::_Select1st<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const, glitch::core::SBufferData> >, std::priv::_MapTraitsT<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const, glitch::core::SBufferData> >, std::allocator<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const, glitch::core::SBufferData> > >
; alias: _ZNSt4priv8_Rb_treeIN5boost13intrusive_ptrIKN6glitch5video7IBufferEEESt4lessIS7_ESt4pairIKS7_NS3_4core11SBufferDataEENS_10_Select1stISE_EENS_11_MapTraitsTISE_EESaISE_EE13insert_uniqueERKSE_
; demangled: std::priv::_Rb_tree<boost::intrusive_ptr<glitch::video::IBuffer const>, std::less<boost::intrusive_ptr<glitch::video::IBuffer const> >, std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const, glitch::core::SBufferData>, std::priv::_Select1st<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const, glitch::core::SBufferData> >, std::priv::_MapTraitsT<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const, glitch::core::SBufferData> >, std::allocator<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const, glitch::core::SBufferData> > >::insert_unique(std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const, glitch::core::SBufferData> const&)
; decoder-mode: arm
006a243c  70 40 2d e9                                      push {r4, r5, r6, lr}
006a2440  04 c0 91 e5                                      ldr ip, [r1, #4]
006a2444  10 d0 4d e2                                      sub sp, sp, #0x10
006a2448  00 40 a0 e1                                      mov r4, r0
006a244c  00 00 5c e3                                      cmp ip, #0
006a2450  02 30 a0 e1                                      mov r3, r2
006a2454  01 c0 a0 01                                      moveq ip, r1
006a2458  15 00 00 0a                                      beq #0x6a24b4
006a245c  00 60 92 e5                                      ldr r6, [r2]
006a2460  00 00 00 ea                                      b #0x6a2468
006a2464  02 c0 a0 e1                                      mov ip, r2
006a2468  10 00 9c e5                                      ldr r0, [ip, #0x10]
006a246c  01 50 a0 e3                                      mov r5, #1
006a2470  06 00 50 e1                                      cmp r0, r6
006a2474  08 20 9c 85                                      ldrhi r2, [ip, #8]
006a2478  0c 20 9c 95                                      ldrls r2, [ip, #0xc]
006a247c  00 50 a0 93                                      movls r5, #0
006a2480  00 00 52 e3                                      cmp r2, #0
006a2484  f6 ff ff 1a                                      bne #0x6a2464
006a2488  00 00 55 e3                                      cmp r5, #0
006a248c  0c 50 a0 01                                      moveq r5, ip
006a2490  07 00 00 1a                                      bne #0x6a24b4
006a2494  00 00 56 e1                                      cmp r6, r0
006a2498  00 30 a0 93                                      movls r3, #0
006a249c  00 50 84 95                                      strls r5, [r4]
006a24a0  04 30 c4 95                                      strbls r3, [r4, #4]
006a24a4  1c 00 00 8a                                      bhi #0x6a251c
006a24a8  04 00 a0 e1                                      mov r0, r4
006a24ac  10 d0 8d e2                                      add sp, sp, #0x10
006a24b0  70 80 bd e8                                      pop {r4, r5, r6, pc}
006a24b4  08 20 91 e5                                      ldr r2, [r1, #8]
006a24b8  02 00 5c e1                                      cmp ip, r2
006a24bc  36 00 00 0a                                      beq #0x6a259c
006a24c0  00 20 dc e5                                      ldrb r2, [ip]
006a24c4  00 00 52 e3                                      cmp r2, #0
006a24c8  03 00 00 1a                                      bne #0x6a24dc
006a24cc  04 20 9c e5                                      ldr r2, [ip, #4]
006a24d0  04 20 92 e5                                      ldr r2, [r2, #4]
006a24d4  02 00 5c e1                                      cmp ip, r2
006a24d8  2a 00 00 0a                                      beq #0x6a2588
006a24dc  08 00 9c e5                                      ldr r0, [ip, #8]
006a24e0  00 00 50 e3                                      cmp r0, #0
006a24e4  01 00 00 1a                                      bne #0x6a24f0
006a24e8  16 00 00 ea                                      b #0x6a2548
006a24ec  02 00 a0 e1                                      mov r0, r2
006a24f0  0c 20 90 e5                                      ldr r2, [r0, #0xc]
006a24f4  00 00 52 e3                                      cmp r2, #0
006a24f8  fb ff ff 1a                                      bne #0x6a24ec
006a24fc  00 60 93 e5                                      ldr r6, [r3]
006a2500  00 50 a0 e1                                      mov r5, r0
006a2504  10 00 90 e5                                      ldr r0, [r0, #0x10]
006a2508  00 00 56 e1                                      cmp r6, r0
006a250c  00 30 a0 93                                      movls r3, #0
006a2510  00 50 84 95                                      strls r5, [r4]
006a2514  04 30 c4 95                                      strbls r3, [r4, #4]
006a2518  e2 ff ff 9a                                      bls #0x6a24a8
006a251c  0c 20 a0 e1                                      mov r2, ip
006a2520  08 00 8d e2                                      add r0, sp, #8
006a2524  00 c0 a0 e3                                      mov ip, #0
006a2528  04 c0 8d e5                                      str ip, [sp, #4]
006a252c  00 c0 8d e5                                      str ip, [sp]
006a2530  55 ff ff eb                                      bl #0x6a228c
006a2534  08 30 9d e5                                      ldr r3, [sp, #8]
006a2538  01 20 a0 e3                                      mov r2, #1
006a253c  04 20 c4 e5                                      strb r2, [r4, #4]
006a2540  00 30 84 e5                                      str r3, [r4]
006a2544  d7 ff ff ea                                      b #0x6a24a8
006a2548  04 20 9c e5                                      ldr r2, [ip, #4]
006a254c  08 00 92 e5                                      ldr r0, [r2, #8]
006a2550  00 00 5c e1                                      cmp ip, r0
006a2554  02 50 a0 11                                      movne r5, r2
006a2558  00 60 93 15                                      ldrne r6, [r3]
006a255c  10 00 92 15                                      ldrne r0, [r2, #0x10]
006a2560  01 00 00 0a                                      beq #0x6a256c
006a2564  ca ff ff ea                                      b #0x6a2494
006a2568  05 20 a0 e1                                      mov r2, r5
006a256c  04 50 92 e5                                      ldr r5, [r2, #4]
006a2570  08 00 95 e5                                      ldr r0, [r5, #8]
006a2574  02 00 50 e1                                      cmp r0, r2
006a2578  fa ff ff 0a                                      beq #0x6a2568
006a257c  00 60 93 e5                                      ldr r6, [r3]
006a2580  10 00 95 e5                                      ldr r0, [r5, #0x10]
006a2584  c2 ff ff ea                                      b #0x6a2494
006a2588  0c 20 9c e5                                      ldr r2, [ip, #0xc]
006a258c  00 60 93 e5                                      ldr r6, [r3]
006a2590  02 50 a0 e1                                      mov r5, r2
006a2594  10 00 92 e5                                      ldr r0, [r2, #0x10]
006a2598  bd ff ff ea                                      b #0x6a2494
006a259c  0c 20 a0 e1                                      mov r2, ip
006a25a0  00 e0 a0 e3                                      mov lr, #0
006a25a4  0c 00 8d e2                                      add r0, sp, #0xc
006a25a8  00 50 8d e8                                      stm sp, {ip, lr}
006a25ac  36 ff ff eb                                      bl #0x6a228c
006a25b0  0c 30 9d e5                                      ldr r3, [sp, #0xc]
006a25b4  01 20 a0 e3                                      mov r2, #1
006a25b8  04 20 c4 e5                                      strb r2, [r4, #4]
006a25bc  00 30 84 e5                                      str r3, [r4]
006a25c0  b8 ff ff ea                                      b #0x6a24a8

; FUNCTION 0x006a25c4, declared_size=884, range_size=884, mode=arm
; class-group: std::priv::_Rb_tree<boost::intrusive_ptr<glitch::video::IBuffer const>, std::less<boost::intrusive_ptr<glitch::video::IBuffer const> >, std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const, glitch::core::SBufferData>, std::priv::_Select1st<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const, glitch::core::SBufferData> >, std::priv::_MapTraitsT<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const, glitch::core::SBufferData> >, std::allocator<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const, glitch::core::SBufferData> > >
; alias: _ZNSt4priv8_Rb_treeIN5boost13intrusive_ptrIKN6glitch5video7IBufferEEESt4lessIS7_ESt4pairIKS7_NS3_4core11SBufferDataEENS_10_Select1stISE_EENS_11_MapTraitsTISE_EESaISE_EE13insert_uniqueENS_17_Rb_tree_iteratorISE_SI_EERKSE_
; demangled: std::priv::_Rb_tree<boost::intrusive_ptr<glitch::video::IBuffer const>, std::less<boost::intrusive_ptr<glitch::video::IBuffer const> >, std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const, glitch::core::SBufferData>, std::priv::_Select1st<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const, glitch::core::SBufferData> >, std::priv::_MapTraitsT<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const, glitch::core::SBufferData> >, std::allocator<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const, glitch::core::SBufferData> > >::insert_unique(std::priv::_Rb_tree_iterator<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const, glitch::core::SBufferData>, std::priv::_MapTraitsT<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const, glitch::core::SBufferData> > >, std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const, glitch::core::SBufferData> const&)
; decoder-mode: arm
006a25c4  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
006a25c8  00 40 92 e5                                      ldr r4, [r2]
006a25cc  08 20 91 e5                                      ldr r2, [r1, #8]
006a25d0  2c d0 4d e2                                      sub sp, sp, #0x2c
006a25d4  01 50 a0 e1                                      mov r5, r1
006a25d8  02 00 54 e1                                      cmp r4, r2
006a25dc  00 70 a0 e1                                      mov r7, r0
006a25e0  03 60 a0 e1                                      mov r6, r3
006a25e4  5a 00 00 0a                                      beq #0x6a2754
006a25e8  01 00 54 e1                                      cmp r4, r1
006a25ec  78 00 00 0a                                      beq #0x6a27d4
006a25f0  00 30 d4 e5                                      ldrb r3, [r4]
006a25f4  00 00 53 e3                                      cmp r3, #0
006a25f8  3a 00 00 0a                                      beq #0x6a26e8
006a25fc  08 c0 94 e5                                      ldr ip, [r4, #8]
006a2600  00 00 5c e3                                      cmp ip, #0
006a2604  01 00 00 1a                                      bne #0x6a2610
006a2608  3e 00 00 ea                                      b #0x6a2708
006a260c  03 c0 a0 e1                                      mov ip, r3
006a2610  0c 30 9c e5                                      ldr r3, [ip, #0xc]
006a2614  00 00 53 e3                                      cmp r3, #0
006a2618  fb ff ff 1a                                      bne #0x6a260c
006a261c  00 20 96 e5                                      ldr r2, [r6]
006a2620  10 00 94 e5                                      ldr r0, [r4, #0x10]
006a2624  00 00 52 e1                                      cmp r2, r0
006a2628  00 10 a0 23                                      movhs r1, #0
006a262c  01 10 a0 33                                      movlo r1, #1
006a2630  00 00 51 e3                                      cmp r1, #0
006a2634  1b 00 00 1a                                      bne #0x6a26a8
006a2638  0c 80 94 e5                                      ldr r8, [r4, #0xc]
006a263c  00 00 58 e3                                      cmp r8, #0
006a2640  7d 00 00 0a                                      beq #0x6a283c
006a2644  08 c0 a0 e1                                      mov ip, r8
006a2648  00 00 00 ea                                      b #0x6a2650
006a264c  03 c0 a0 e1                                      mov ip, r3
006a2650  08 30 9c e5                                      ldr r3, [ip, #8]
006a2654  00 00 53 e3                                      cmp r3, #0
006a2658  fb ff ff 1a                                      bne #0x6a264c
006a265c  00 00 51 e3                                      cmp r1, #0
006a2660  34 00 00 1a                                      bne #0x6a2738
006a2664  00 00 52 e1                                      cmp r2, r0
006a2668  63 00 00 9a                                      bls #0x6a27fc
006a266c  0c 00 55 e1                                      cmp r5, ip
006a2670  02 00 00 0a                                      beq #0x6a2680
006a2674  10 30 9c e5                                      ldr r3, [ip, #0x10]
006a2678  03 00 52 e1                                      cmp r2, r3
006a267c  2d 00 00 2a                                      bhs #0x6a2738
006a2680  00 00 58 e3                                      cmp r8, #0
006a2684  4a 00 00 1a                                      bne #0x6a27b4
006a2688  05 10 a0 e1                                      mov r1, r5
006a268c  04 20 a0 e1                                      mov r2, r4
006a2690  06 30 a0 e1                                      mov r3, r6
006a2694  07 00 a0 e1                                      mov r0, r7
006a2698  00 80 8d e5                                      str r8, [sp]
006a269c  04 40 8d e5                                      str r4, [sp, #4]
006a26a0  f9 fe ff eb                                      bl #0x6a228c
006a26a4  0c 00 00 ea                                      b #0x6a26dc
006a26a8  10 30 9c e5                                      ldr r3, [ip, #0x10]
006a26ac  03 00 52 e1                                      cmp r2, r3
006a26b0  e0 ff ff 9a                                      bls #0x6a2638
006a26b4  0c e0 9c e5                                      ldr lr, [ip, #0xc]
006a26b8  00 00 5e e3                                      cmp lr, #0
006a26bc  56 00 00 0a                                      beq #0x6a281c
006a26c0  00 c0 a0 e3                                      mov ip, #0
006a26c4  05 10 a0 e1                                      mov r1, r5
006a26c8  04 20 a0 e1                                      mov r2, r4
006a26cc  06 30 a0 e1                                      mov r3, r6
006a26d0  07 00 a0 e1                                      mov r0, r7
006a26d4  10 10 8d e8                                      stm sp, {r4, ip}
006a26d8  eb fe ff eb                                      bl #0x6a228c
006a26dc  07 00 a0 e1                                      mov r0, r7
006a26e0  2c d0 8d e2                                      add sp, sp, #0x2c
006a26e4  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
006a26e8  04 30 94 e5                                      ldr r3, [r4, #4]
006a26ec  04 30 93 e5                                      ldr r3, [r3, #4]
006a26f0  03 00 54 e1                                      cmp r4, r3
006a26f4  0c c0 94 05                                      ldreq ip, [r4, #0xc]
006a26f8  c7 ff ff 0a                                      beq #0x6a261c
006a26fc  08 c0 94 e5                                      ldr ip, [r4, #8]
006a2700  00 00 5c e3                                      cmp ip, #0
006a2704  c1 ff ff 1a                                      bne #0x6a2610
006a2708  04 c0 94 e5                                      ldr ip, [r4, #4]
006a270c  08 30 9c e5                                      ldr r3, [ip, #8]
006a2710  03 00 54 e1                                      cmp r4, r3
006a2714  01 00 00 0a                                      beq #0x6a2720
006a2718  bf ff ff ea                                      b #0x6a261c
006a271c  03 c0 a0 e1                                      mov ip, r3
006a2720  04 30 9c e5                                      ldr r3, [ip, #4]
006a2724  08 20 93 e5                                      ldr r2, [r3, #8]
006a2728  0c 00 52 e1                                      cmp r2, ip
006a272c  fa ff ff 0a                                      beq #0x6a271c
006a2730  03 c0 a0 e1                                      mov ip, r3
006a2734  b8 ff ff ea                                      b #0x6a261c
006a2738  05 10 a0 e1                                      mov r1, r5
006a273c  06 20 a0 e1                                      mov r2, r6
006a2740  08 00 8d e2                                      add r0, sp, #8
006a2744  3c ff ff eb                                      bl #0x6a243c
006a2748  08 30 9d e5                                      ldr r3, [sp, #8]
006a274c  00 30 87 e5                                      str r3, [r7]
006a2750  e1 ff ff ea                                      b #0x6a26dc
006a2754  10 20 91 e5                                      ldr r2, [r1, #0x10]
006a2758  00 00 52 e3                                      cmp r2, #0
006a275c  52 00 00 0a                                      beq #0x6a28ac
006a2760  00 20 93 e5                                      ldr r2, [r3]
006a2764  10 c0 94 e5                                      ldr ip, [r4, #0x10]
006a2768  0c 00 52 e1                                      cmp r2, ip
006a276c  54 00 00 3a                                      blo #0x6a28c4
006a2770  21 00 00 9a                                      bls #0x6a27fc
006a2774  0c e0 94 e5                                      ldr lr, [r4, #0xc]
006a2778  00 00 5e e3                                      cmp lr, #0
006a277c  3c 00 00 0a                                      beq #0x6a2874
006a2780  0e c0 a0 e1                                      mov ip, lr
006a2784  00 00 00 ea                                      b #0x6a278c
006a2788  03 c0 a0 e1                                      mov ip, r3
006a278c  08 30 9c e5                                      ldr r3, [ip, #8]
006a2790  00 00 53 e3                                      cmp r3, #0
006a2794  fb ff ff 1a                                      bne #0x6a2788
006a2798  0c 00 55 e1                                      cmp r5, ip
006a279c  5c 00 00 0a                                      beq #0x6a2914
006a27a0  10 30 9c e5                                      ldr r3, [ip, #0x10]
006a27a4  03 00 52 e1                                      cmp r2, r3
006a27a8  4a 00 00 2a                                      bhs #0x6a28d8
006a27ac  00 00 5e e3                                      cmp lr, #0
006a27b0  4f 00 00 0a                                      beq #0x6a28f4
006a27b4  00 e0 a0 e3                                      mov lr, #0
006a27b8  05 10 a0 e1                                      mov r1, r5
006a27bc  0c 20 a0 e1                                      mov r2, ip
006a27c0  06 30 a0 e1                                      mov r3, r6
006a27c4  07 00 a0 e1                                      mov r0, r7
006a27c8  00 50 8d e8                                      stm sp, {ip, lr}
006a27cc  ae fe ff eb                                      bl #0x6a228c
006a27d0  c1 ff ff ea                                      b #0x6a26dc
006a27d4  0c 20 94 e5                                      ldr r2, [r4, #0xc]
006a27d8  00 c0 93 e5                                      ldr ip, [r3]
006a27dc  10 e0 92 e5                                      ldr lr, [r2, #0x10]
006a27e0  0c 00 5e e1                                      cmp lr, ip
006a27e4  06 00 00 2a                                      bhs #0x6a2804
006a27e8  00 c0 a0 e3                                      mov ip, #0
006a27ec  00 c0 8d e5                                      str ip, [sp]
006a27f0  04 40 8d e5                                      str r4, [sp, #4]
006a27f4  a4 fe ff eb                                      bl #0x6a228c
006a27f8  b7 ff ff ea                                      b #0x6a26dc
006a27fc  00 40 87 e5                                      str r4, [r7]
006a2800  b5 ff ff ea                                      b #0x6a26dc
006a2804  03 20 a0 e1                                      mov r2, r3
006a2808  10 00 8d e2                                      add r0, sp, #0x10
006a280c  0a ff ff eb                                      bl #0x6a243c
006a2810  10 30 9d e5                                      ldr r3, [sp, #0x10]
006a2814  00 30 87 e5                                      str r3, [r7]
006a2818  af ff ff ea                                      b #0x6a26dc
006a281c  05 10 a0 e1                                      mov r1, r5
006a2820  0c 20 a0 e1                                      mov r2, ip
006a2824  06 30 a0 e1                                      mov r3, r6
006a2828  07 00 a0 e1                                      mov r0, r7
006a282c  00 e0 8d e5                                      str lr, [sp]
006a2830  04 c0 8d e5                                      str ip, [sp, #4]
006a2834  94 fe ff eb                                      bl #0x6a228c
006a2838  a7 ff ff ea                                      b #0x6a26dc
006a283c  04 30 94 e5                                      ldr r3, [r4, #4]
006a2840  0c c0 93 e5                                      ldr ip, [r3, #0xc]
006a2844  0c 00 54 e1                                      cmp r4, ip
006a2848  04 c0 a0 11                                      movne ip, r4
006a284c  04 00 00 1a                                      bne #0x6a2864
006a2850  03 c0 a0 e1                                      mov ip, r3
006a2854  04 30 93 e5                                      ldr r3, [r3, #4]
006a2858  0c a0 93 e5                                      ldr sl, [r3, #0xc]
006a285c  0c 00 5a e1                                      cmp sl, ip
006a2860  fa ff ff 0a                                      beq #0x6a2850
006a2864  0c a0 9c e5                                      ldr sl, [ip, #0xc]
006a2868  0a 00 53 e1                                      cmp r3, sl
006a286c  03 c0 a0 11                                      movne ip, r3
006a2870  79 ff ff ea                                      b #0x6a265c
006a2874  04 30 94 e5                                      ldr r3, [r4, #4]
006a2878  0c 10 93 e5                                      ldr r1, [r3, #0xc]
006a287c  01 00 54 e1                                      cmp r4, r1
006a2880  04 c0 a0 11                                      movne ip, r4
006a2884  04 00 00 1a                                      bne #0x6a289c
006a2888  03 c0 a0 e1                                      mov ip, r3
006a288c  04 30 93 e5                                      ldr r3, [r3, #4]
006a2890  0c 10 93 e5                                      ldr r1, [r3, #0xc]
006a2894  0c 00 51 e1                                      cmp r1, ip
006a2898  fa ff ff 0a                                      beq #0x6a2888
006a289c  0c 10 9c e5                                      ldr r1, [ip, #0xc]
006a28a0  01 00 53 e1                                      cmp r3, r1
006a28a4  03 c0 a0 11                                      movne ip, r3
006a28a8  ba ff ff ea                                      b #0x6a2798
006a28ac  03 20 a0 e1                                      mov r2, r3
006a28b0  20 00 8d e2                                      add r0, sp, #0x20
006a28b4  e0 fe ff eb                                      bl #0x6a243c
006a28b8  20 30 9d e5                                      ldr r3, [sp, #0x20]
006a28bc  00 30 87 e5                                      str r3, [r7]
006a28c0  85 ff ff ea                                      b #0x6a26dc
006a28c4  00 c0 a0 e3                                      mov ip, #0
006a28c8  04 20 a0 e1                                      mov r2, r4
006a28cc  10 10 8d e8                                      stm sp, {r4, ip}
006a28d0  6d fe ff eb                                      bl #0x6a228c
006a28d4  80 ff ff ea                                      b #0x6a26dc
006a28d8  05 10 a0 e1                                      mov r1, r5
006a28dc  06 20 a0 e1                                      mov r2, r6
006a28e0  18 00 8d e2                                      add r0, sp, #0x18
006a28e4  d4 fe ff eb                                      bl #0x6a243c
006a28e8  18 30 9d e5                                      ldr r3, [sp, #0x18]
006a28ec  00 30 87 e5                                      str r3, [r7]
006a28f0  79 ff ff ea                                      b #0x6a26dc
006a28f4  05 10 a0 e1                                      mov r1, r5
006a28f8  04 20 a0 e1                                      mov r2, r4
006a28fc  06 30 a0 e1                                      mov r3, r6
006a2900  07 00 a0 e1                                      mov r0, r7
006a2904  00 e0 8d e5                                      str lr, [sp]
006a2908  04 40 8d e5                                      str r4, [sp, #4]
006a290c  5e fe ff eb                                      bl #0x6a228c
006a2910  71 ff ff ea                                      b #0x6a26dc
006a2914  00 c0 a0 e3                                      mov ip, #0
006a2918  05 10 a0 e1                                      mov r1, r5
006a291c  04 20 a0 e1                                      mov r2, r4
006a2920  06 30 a0 e1                                      mov r3, r6
006a2924  07 00 a0 e1                                      mov r0, r7
006a2928  00 c0 8d e5                                      str ip, [sp]
006a292c  04 40 8d e5                                      str r4, [sp, #4]
006a2930  55 fe ff eb                                      bl #0x6a228c
006a2934  68 ff ff ea                                      b #0x6a26dc

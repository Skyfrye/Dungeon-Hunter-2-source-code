; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00338438, declared_size=116, range_size=116, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, std::list<EventManager::ReceiverInfo, std::allocator<EventManager::ReceiverInfo> > >, std::priv::_Select1st<std::pair<int const, std::list<EventManager::ReceiverInfo, std::allocator<EventManager::ReceiverInfo> > > >, std::priv::_MapTraitsT<std::pair<int const, std::list<EventManager::ReceiverInfo, std::allocator<EventManager::ReceiverInfo> > > >, std::allocator<std::pair<int const, std::list<EventManager::ReceiverInfo, std::allocator<EventManager::ReceiverInfo> > > > >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKiSt4listIN12EventManager12ReceiverInfoESaIS7_EEENS_10_Select1stISA_EENS_11_MapTraitsTISA_EESaISA_EE8_M_eraseEPNS_18_Rb_tree_node_baseE
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, std::list<EventManager::ReceiverInfo, std::allocator<EventManager::ReceiverInfo> > >, std::priv::_Select1st<std::pair<int const, std::list<EventManager::ReceiverInfo, std::allocator<EventManager::ReceiverInfo> > > >, std::priv::_MapTraitsT<std::pair<int const, std::list<EventManager::ReceiverInfo, std::allocator<EventManager::ReceiverInfo> > > >, std::allocator<std::pair<int const, std::list<EventManager::ReceiverInfo, std::allocator<EventManager::ReceiverInfo> > > > >::_M_erase(std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
00338438  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0033843c  00 60 51 e2                                      subs r6, r1, #0
00338440  00 80 a0 e1                                      mov r8, r0
00338444  17 00 00 0a                                      beq #0x3384a8
00338448  08 00 a0 e1                                      mov r0, r8
0033844c  0c 10 96 e5                                      ldr r1, [r6, #0xc]
00338450  f8 ff ff eb                                      bl #0x338438
00338454  14 30 96 e5                                      ldr r3, [r6, #0x14]
00338458  14 50 86 e2                                      add r5, r6, #0x14
0033845c  08 70 96 e5                                      ldr r7, [r6, #8]
00338460  05 00 53 e1                                      cmp r3, r5
00338464  08 00 00 0a                                      beq #0x33848c
00338468  03 00 a0 e1                                      mov r0, r3
0033846c  00 00 00 ea                                      b #0x338474
00338470  04 00 a0 e1                                      mov r0, r4
00338474  00 40 90 e5                                      ldr r4, [r0]
00338478  14 10 a0 e3                                      mov r1, #0x14
0033847c  9f 42 0f eb                                      bl #0x708f00
00338480  05 00 54 e1                                      cmp r4, r5
00338484  f9 ff ff 1a                                      bne #0x338470
00338488  05 30 a0 e1                                      mov r3, r5
0033848c  06 00 a0 e1                                      mov r0, r6
00338490  04 30 85 e5                                      str r3, [r5, #4]
00338494  00 30 85 e5                                      str r3, [r5]
00338498  1c 10 a0 e3                                      mov r1, #0x1c
0033849c  97 42 0f eb                                      bl #0x708f00
003384a0  00 60 57 e2                                      subs r6, r7, #0
003384a4  e7 ff ff 1a                                      bne #0x338448
003384a8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0033862c, declared_size=152, range_size=152, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, std::list<EventManager::ReceiverInfo, std::allocator<EventManager::ReceiverInfo> > >, std::priv::_Select1st<std::pair<int const, std::list<EventManager::ReceiverInfo, std::allocator<EventManager::ReceiverInfo> > > >, std::priv::_MapTraitsT<std::pair<int const, std::list<EventManager::ReceiverInfo, std::allocator<EventManager::ReceiverInfo> > > >, std::allocator<std::pair<int const, std::list<EventManager::ReceiverInfo, std::allocator<EventManager::ReceiverInfo> > > > >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKiSt4listIN12EventManager12ReceiverInfoESaIS7_EEENS_10_Select1stISA_EENS_11_MapTraitsTISA_EESaISA_EE14_M_create_nodeERKSA_
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, std::list<EventManager::ReceiverInfo, std::allocator<EventManager::ReceiverInfo> > >, std::priv::_Select1st<std::pair<int const, std::list<EventManager::ReceiverInfo, std::allocator<EventManager::ReceiverInfo> > > >, std::priv::_MapTraitsT<std::pair<int const, std::list<EventManager::ReceiverInfo, std::allocator<EventManager::ReceiverInfo> > > >, std::allocator<std::pair<int const, std::list<EventManager::ReceiverInfo, std::allocator<EventManager::ReceiverInfo> > > > >::_M_create_node(std::pair<int const, std::list<EventManager::ReceiverInfo, std::allocator<EventManager::ReceiverInfo> > > const&)
; decoder-mode: arm
0033862c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00338630  0c d0 4d e2                                      sub sp, sp, #0xc
00338634  1c 30 a0 e3                                      mov r3, #0x1c
00338638  08 00 8d e2                                      add r0, sp, #8
0033863c  04 30 20 e5                                      str r3, [r0, #-4]!
00338640  01 60 a0 e1                                      mov r6, r1
00338644  1d 42 0f eb                                      bl #0x708ec0
00338648  00 30 96 e5                                      ldr r3, [r6]
0033864c  14 50 80 e2                                      add r5, r0, #0x14
00338650  14 50 80 e5                                      str r5, [r0, #0x14]
00338654  10 30 80 e5                                      str r3, [r0, #0x10]
00338658  18 50 80 e5                                      str r5, [r0, #0x18]
0033865c  04 40 b6 e5                                      ldr r4, [r6, #4]!
00338660  00 70 a0 e1                                      mov r7, r0
00338664  06 00 54 e1                                      cmp r4, r6
00338668  0f 00 00 0a                                      beq #0x3386ac
0033866c  05 00 a0 e1                                      mov r0, r5
00338670  e5 ff ff eb                                      bl #0x33860c
00338674  08 30 94 e5                                      ldr r3, [r4, #8]
00338678  08 30 80 e5                                      str r3, [r0, #8]
0033867c  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00338680  0c 30 80 e5                                      str r3, [r0, #0xc]
00338684  10 30 d4 e5                                      ldrb r3, [r4, #0x10]
00338688  10 30 c0 e5                                      strb r3, [r0, #0x10]
0033868c  04 30 95 e5                                      ldr r3, [r5, #4]
00338690  00 50 80 e5                                      str r5, [r0]
00338694  04 30 80 e5                                      str r3, [r0, #4]
00338698  00 00 83 e5                                      str r0, [r3]
0033869c  04 00 85 e5                                      str r0, [r5, #4]
003386a0  00 40 94 e5                                      ldr r4, [r4]
003386a4  04 00 56 e1                                      cmp r6, r4
003386a8  ef ff ff 1a                                      bne #0x33866c
003386ac  00 30 a0 e3                                      mov r3, #0
003386b0  0c 30 87 e5                                      str r3, [r7, #0xc]
003386b4  08 30 87 e5                                      str r3, [r7, #8]
003386b8  07 00 a0 e1                                      mov r0, r7
003386bc  0c d0 8d e2                                      add sp, sp, #0xc
003386c0  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x003386c4, declared_size=216, range_size=216, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, std::list<EventManager::ReceiverInfo, std::allocator<EventManager::ReceiverInfo> > >, std::priv::_Select1st<std::pair<int const, std::list<EventManager::ReceiverInfo, std::allocator<EventManager::ReceiverInfo> > > >, std::priv::_MapTraitsT<std::pair<int const, std::list<EventManager::ReceiverInfo, std::allocator<EventManager::ReceiverInfo> > > >, std::allocator<std::pair<int const, std::list<EventManager::ReceiverInfo, std::allocator<EventManager::ReceiverInfo> > > > >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKiSt4listIN12EventManager12ReceiverInfoESaIS7_EEENS_10_Select1stISA_EENS_11_MapTraitsTISA_EESaISA_EE9_M_insertEPNS_18_Rb_tree_node_baseERKSA_SI_SI_
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, std::list<EventManager::ReceiverInfo, std::allocator<EventManager::ReceiverInfo> > >, std::priv::_Select1st<std::pair<int const, std::list<EventManager::ReceiverInfo, std::allocator<EventManager::ReceiverInfo> > > >, std::priv::_MapTraitsT<std::pair<int const, std::list<EventManager::ReceiverInfo, std::allocator<EventManager::ReceiverInfo> > > >, std::allocator<std::pair<int const, std::list<EventManager::ReceiverInfo, std::allocator<EventManager::ReceiverInfo> > > > >::_M_insert(std::priv::_Rb_tree_node_base*, std::pair<int const, std::list<EventManager::ReceiverInfo, std::allocator<EventManager::ReceiverInfo> > > const&, std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
003386c4  02 00 51 e1                                      cmp r1, r2
003386c8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003386cc  01 40 a0 e1                                      mov r4, r1
003386d0  02 50 a0 e1                                      mov r5, r2
003386d4  00 60 a0 e1                                      mov r6, r0
003386d8  22 00 00 0a                                      beq #0x338768
003386dc  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
003386e0  00 00 52 e3                                      cmp r2, #0
003386e4  11 00 00 0a                                      beq #0x338730
003386e8  03 10 a0 e1                                      mov r1, r3
003386ec  04 00 a0 e1                                      mov r0, r4
003386f0  cd ff ff eb                                      bl #0x33862c
003386f4  0c 00 85 e5                                      str r0, [r5, #0xc]
003386f8  0c 30 94 e5                                      ldr r3, [r4, #0xc]
003386fc  00 70 a0 e1                                      mov r7, r0
00338700  03 00 55 e1                                      cmp r5, r3
00338704  15 00 00 0a                                      beq #0x338760
00338708  07 00 a0 e1                                      mov r0, r7
0033870c  04 50 87 e5                                      str r5, [r7, #4]
00338710  04 10 84 e2                                      add r1, r4, #4
00338714  11 6c ff eb                                      bl #0x313760
00338718  10 30 94 e5                                      ldr r3, [r4, #0x10]
0033871c  06 00 a0 e1                                      mov r0, r6
00338720  01 30 83 e2                                      add r3, r3, #1
00338724  10 30 84 e5                                      str r3, [r4, #0x10]
00338728  00 70 86 e5                                      str r7, [r6]
0033872c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00338730  18 20 9d e5                                      ldr r2, [sp, #0x18]
00338734  00 00 52 e3                                      cmp r2, #0
00338738  12 00 00 0a                                      beq #0x338788
0033873c  03 10 a0 e1                                      mov r1, r3
00338740  04 00 a0 e1                                      mov r0, r4
00338744  b8 ff ff eb                                      bl #0x33862c
00338748  08 00 85 e5                                      str r0, [r5, #8]
0033874c  08 30 94 e5                                      ldr r3, [r4, #8]
00338750  00 70 a0 e1                                      mov r7, r0
00338754  03 00 55 e1                                      cmp r5, r3
00338758  08 00 84 05                                      streq r0, [r4, #8]
0033875c  e9 ff ff ea                                      b #0x338708
00338760  0c 70 84 e5                                      str r7, [r4, #0xc]
00338764  e7 ff ff ea                                      b #0x338708
00338768  03 10 a0 e1                                      mov r1, r3
0033876c  04 00 a0 e1                                      mov r0, r4
00338770  ad ff ff eb                                      bl #0x33862c
00338774  00 70 a0 e1                                      mov r7, r0
00338778  08 00 84 e5                                      str r0, [r4, #8]
0033877c  04 00 84 e5                                      str r0, [r4, #4]
00338780  0c 00 84 e5                                      str r0, [r4, #0xc]
00338784  df ff ff ea                                      b #0x338708
00338788  00 10 93 e5                                      ldr r1, [r3]
0033878c  10 20 95 e5                                      ldr r2, [r5, #0x10]
00338790  02 00 51 e1                                      cmp r1, r2
00338794  d3 ff ff aa                                      bge #0x3386e8
00338798  e7 ff ff ea                                      b #0x33873c

; FUNCTION 0x0033879c, declared_size=392, range_size=392, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, std::list<EventManager::ReceiverInfo, std::allocator<EventManager::ReceiverInfo> > >, std::priv::_Select1st<std::pair<int const, std::list<EventManager::ReceiverInfo, std::allocator<EventManager::ReceiverInfo> > > >, std::priv::_MapTraitsT<std::pair<int const, std::list<EventManager::ReceiverInfo, std::allocator<EventManager::ReceiverInfo> > > >, std::allocator<std::pair<int const, std::list<EventManager::ReceiverInfo, std::allocator<EventManager::ReceiverInfo> > > > >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKiSt4listIN12EventManager12ReceiverInfoESaIS7_EEENS_10_Select1stISA_EENS_11_MapTraitsTISA_EESaISA_EE13insert_uniqueERKSA_
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, std::list<EventManager::ReceiverInfo, std::allocator<EventManager::ReceiverInfo> > >, std::priv::_Select1st<std::pair<int const, std::list<EventManager::ReceiverInfo, std::allocator<EventManager::ReceiverInfo> > > >, std::priv::_MapTraitsT<std::pair<int const, std::list<EventManager::ReceiverInfo, std::allocator<EventManager::ReceiverInfo> > > >, std::allocator<std::pair<int const, std::list<EventManager::ReceiverInfo, std::allocator<EventManager::ReceiverInfo> > > > >::insert_unique(std::pair<int const, std::list<EventManager::ReceiverInfo, std::allocator<EventManager::ReceiverInfo> > > const&)
; decoder-mode: arm
0033879c  70 40 2d e9                                      push {r4, r5, r6, lr}
003387a0  04 c0 91 e5                                      ldr ip, [r1, #4]
003387a4  10 d0 4d e2                                      sub sp, sp, #0x10
003387a8  00 40 a0 e1                                      mov r4, r0
003387ac  00 00 5c e3                                      cmp ip, #0
003387b0  02 30 a0 e1                                      mov r3, r2
003387b4  01 c0 a0 01                                      moveq ip, r1
003387b8  15 00 00 0a                                      beq #0x338814
003387bc  00 60 92 e5                                      ldr r6, [r2]
003387c0  00 00 00 ea                                      b #0x3387c8
003387c4  02 c0 a0 e1                                      mov ip, r2
003387c8  10 00 9c e5                                      ldr r0, [ip, #0x10]
003387cc  01 50 a0 e3                                      mov r5, #1
003387d0  06 00 50 e1                                      cmp r0, r6
003387d4  08 20 9c c5                                      ldrgt r2, [ip, #8]
003387d8  0c 20 9c d5                                      ldrle r2, [ip, #0xc]
003387dc  00 50 a0 d3                                      movle r5, #0
003387e0  00 00 52 e3                                      cmp r2, #0
003387e4  f6 ff ff 1a                                      bne #0x3387c4
003387e8  00 00 55 e3                                      cmp r5, #0
003387ec  0c 50 a0 01                                      moveq r5, ip
003387f0  07 00 00 1a                                      bne #0x338814
003387f4  00 00 56 e1                                      cmp r6, r0
003387f8  00 30 a0 d3                                      movle r3, #0
003387fc  00 50 84 d5                                      strle r5, [r4]
00338800  04 30 c4 d5                                      strble r3, [r4, #4]
00338804  1c 00 00 ca                                      bgt #0x33887c
00338808  04 00 a0 e1                                      mov r0, r4
0033880c  10 d0 8d e2                                      add sp, sp, #0x10
00338810  70 80 bd e8                                      pop {r4, r5, r6, pc}
00338814  08 20 91 e5                                      ldr r2, [r1, #8]
00338818  02 00 5c e1                                      cmp ip, r2
0033881c  36 00 00 0a                                      beq #0x3388fc
00338820  00 20 dc e5                                      ldrb r2, [ip]
00338824  00 00 52 e3                                      cmp r2, #0
00338828  03 00 00 1a                                      bne #0x33883c
0033882c  04 20 9c e5                                      ldr r2, [ip, #4]
00338830  04 20 92 e5                                      ldr r2, [r2, #4]
00338834  02 00 5c e1                                      cmp ip, r2
00338838  2a 00 00 0a                                      beq #0x3388e8
0033883c  08 00 9c e5                                      ldr r0, [ip, #8]
00338840  00 00 50 e3                                      cmp r0, #0
00338844  01 00 00 1a                                      bne #0x338850
00338848  16 00 00 ea                                      b #0x3388a8
0033884c  02 00 a0 e1                                      mov r0, r2
00338850  0c 20 90 e5                                      ldr r2, [r0, #0xc]
00338854  00 00 52 e3                                      cmp r2, #0
00338858  fb ff ff 1a                                      bne #0x33884c
0033885c  00 60 93 e5                                      ldr r6, [r3]
00338860  00 50 a0 e1                                      mov r5, r0
00338864  10 00 90 e5                                      ldr r0, [r0, #0x10]
00338868  00 00 56 e1                                      cmp r6, r0
0033886c  00 30 a0 d3                                      movle r3, #0
00338870  00 50 84 d5                                      strle r5, [r4]
00338874  04 30 c4 d5                                      strble r3, [r4, #4]
00338878  e2 ff ff da                                      ble #0x338808
0033887c  0c 20 a0 e1                                      mov r2, ip
00338880  08 00 8d e2                                      add r0, sp, #8
00338884  00 c0 a0 e3                                      mov ip, #0
00338888  04 c0 8d e5                                      str ip, [sp, #4]
0033888c  00 c0 8d e5                                      str ip, [sp]
00338890  8b ff ff eb                                      bl #0x3386c4
00338894  08 30 9d e5                                      ldr r3, [sp, #8]
00338898  01 20 a0 e3                                      mov r2, #1
0033889c  04 20 c4 e5                                      strb r2, [r4, #4]
003388a0  00 30 84 e5                                      str r3, [r4]
003388a4  d7 ff ff ea                                      b #0x338808
003388a8  04 20 9c e5                                      ldr r2, [ip, #4]
003388ac  08 00 92 e5                                      ldr r0, [r2, #8]
003388b0  00 00 5c e1                                      cmp ip, r0
003388b4  02 50 a0 11                                      movne r5, r2
003388b8  00 60 93 15                                      ldrne r6, [r3]
003388bc  10 00 92 15                                      ldrne r0, [r2, #0x10]
003388c0  01 00 00 0a                                      beq #0x3388cc
003388c4  ca ff ff ea                                      b #0x3387f4
003388c8  05 20 a0 e1                                      mov r2, r5
003388cc  04 50 92 e5                                      ldr r5, [r2, #4]
003388d0  08 00 95 e5                                      ldr r0, [r5, #8]
003388d4  02 00 50 e1                                      cmp r0, r2
003388d8  fa ff ff 0a                                      beq #0x3388c8
003388dc  00 60 93 e5                                      ldr r6, [r3]
003388e0  10 00 95 e5                                      ldr r0, [r5, #0x10]
003388e4  c2 ff ff ea                                      b #0x3387f4
003388e8  0c 20 9c e5                                      ldr r2, [ip, #0xc]
003388ec  00 60 93 e5                                      ldr r6, [r3]
003388f0  02 50 a0 e1                                      mov r5, r2
003388f4  10 00 92 e5                                      ldr r0, [r2, #0x10]
003388f8  bd ff ff ea                                      b #0x3387f4
003388fc  0c 20 a0 e1                                      mov r2, ip
00338900  00 e0 a0 e3                                      mov lr, #0
00338904  0c 00 8d e2                                      add r0, sp, #0xc
00338908  00 50 8d e8                                      stm sp, {ip, lr}
0033890c  6c ff ff eb                                      bl #0x3386c4
00338910  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00338914  01 20 a0 e3                                      mov r2, #1
00338918  04 20 c4 e5                                      strb r2, [r4, #4]
0033891c  00 30 84 e5                                      str r3, [r4]
00338920  b8 ff ff ea                                      b #0x338808

; FUNCTION 0x00338924, declared_size=884, range_size=884, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, std::list<EventManager::ReceiverInfo, std::allocator<EventManager::ReceiverInfo> > >, std::priv::_Select1st<std::pair<int const, std::list<EventManager::ReceiverInfo, std::allocator<EventManager::ReceiverInfo> > > >, std::priv::_MapTraitsT<std::pair<int const, std::list<EventManager::ReceiverInfo, std::allocator<EventManager::ReceiverInfo> > > >, std::allocator<std::pair<int const, std::list<EventManager::ReceiverInfo, std::allocator<EventManager::ReceiverInfo> > > > >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKiSt4listIN12EventManager12ReceiverInfoESaIS7_EEENS_10_Select1stISA_EENS_11_MapTraitsTISA_EESaISA_EE13insert_uniqueENS_17_Rb_tree_iteratorISA_SE_EERKSA_
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, std::list<EventManager::ReceiverInfo, std::allocator<EventManager::ReceiverInfo> > >, std::priv::_Select1st<std::pair<int const, std::list<EventManager::ReceiverInfo, std::allocator<EventManager::ReceiverInfo> > > >, std::priv::_MapTraitsT<std::pair<int const, std::list<EventManager::ReceiverInfo, std::allocator<EventManager::ReceiverInfo> > > >, std::allocator<std::pair<int const, std::list<EventManager::ReceiverInfo, std::allocator<EventManager::ReceiverInfo> > > > >::insert_unique(std::priv::_Rb_tree_iterator<std::pair<int const, std::list<EventManager::ReceiverInfo, std::allocator<EventManager::ReceiverInfo> > >, std::priv::_MapTraitsT<std::pair<int const, std::list<EventManager::ReceiverInfo, std::allocator<EventManager::ReceiverInfo> > > > >, std::pair<int const, std::list<EventManager::ReceiverInfo, std::allocator<EventManager::ReceiverInfo> > > const&)
; decoder-mode: arm
00338924  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00338928  00 40 92 e5                                      ldr r4, [r2]
0033892c  08 20 91 e5                                      ldr r2, [r1, #8]
00338930  2c d0 4d e2                                      sub sp, sp, #0x2c
00338934  01 50 a0 e1                                      mov r5, r1
00338938  02 00 54 e1                                      cmp r4, r2
0033893c  00 70 a0 e1                                      mov r7, r0
00338940  03 60 a0 e1                                      mov r6, r3
00338944  5a 00 00 0a                                      beq #0x338ab4
00338948  01 00 54 e1                                      cmp r4, r1
0033894c  78 00 00 0a                                      beq #0x338b34
00338950  00 30 d4 e5                                      ldrb r3, [r4]
00338954  00 00 53 e3                                      cmp r3, #0
00338958  3a 00 00 0a                                      beq #0x338a48
0033895c  08 c0 94 e5                                      ldr ip, [r4, #8]
00338960  00 00 5c e3                                      cmp ip, #0
00338964  01 00 00 1a                                      bne #0x338970
00338968  3e 00 00 ea                                      b #0x338a68
0033896c  03 c0 a0 e1                                      mov ip, r3
00338970  0c 30 9c e5                                      ldr r3, [ip, #0xc]
00338974  00 00 53 e3                                      cmp r3, #0
00338978  fb ff ff 1a                                      bne #0x33896c
0033897c  00 20 96 e5                                      ldr r2, [r6]
00338980  10 00 94 e5                                      ldr r0, [r4, #0x10]
00338984  00 00 52 e1                                      cmp r2, r0
00338988  00 10 a0 a3                                      movge r1, #0
0033898c  01 10 a0 b3                                      movlt r1, #1
00338990  00 00 51 e3                                      cmp r1, #0
00338994  1b 00 00 1a                                      bne #0x338a08
00338998  0c 80 94 e5                                      ldr r8, [r4, #0xc]
0033899c  00 00 58 e3                                      cmp r8, #0
003389a0  7d 00 00 0a                                      beq #0x338b9c
003389a4  08 c0 a0 e1                                      mov ip, r8
003389a8  00 00 00 ea                                      b #0x3389b0
003389ac  03 c0 a0 e1                                      mov ip, r3
003389b0  08 30 9c e5                                      ldr r3, [ip, #8]
003389b4  00 00 53 e3                                      cmp r3, #0
003389b8  fb ff ff 1a                                      bne #0x3389ac
003389bc  00 00 51 e3                                      cmp r1, #0
003389c0  34 00 00 1a                                      bne #0x338a98
003389c4  00 00 52 e1                                      cmp r2, r0
003389c8  63 00 00 da                                      ble #0x338b5c
003389cc  0c 00 55 e1                                      cmp r5, ip
003389d0  02 00 00 0a                                      beq #0x3389e0
003389d4  10 30 9c e5                                      ldr r3, [ip, #0x10]
003389d8  03 00 52 e1                                      cmp r2, r3
003389dc  2d 00 00 aa                                      bge #0x338a98
003389e0  00 00 58 e3                                      cmp r8, #0
003389e4  4a 00 00 1a                                      bne #0x338b14
003389e8  05 10 a0 e1                                      mov r1, r5
003389ec  04 20 a0 e1                                      mov r2, r4
003389f0  06 30 a0 e1                                      mov r3, r6
003389f4  07 00 a0 e1                                      mov r0, r7
003389f8  00 80 8d e5                                      str r8, [sp]
003389fc  04 40 8d e5                                      str r4, [sp, #4]
00338a00  2f ff ff eb                                      bl #0x3386c4
00338a04  0c 00 00 ea                                      b #0x338a3c
00338a08  10 30 9c e5                                      ldr r3, [ip, #0x10]
00338a0c  03 00 52 e1                                      cmp r2, r3
00338a10  e0 ff ff da                                      ble #0x338998
00338a14  0c e0 9c e5                                      ldr lr, [ip, #0xc]
00338a18  00 00 5e e3                                      cmp lr, #0
00338a1c  56 00 00 0a                                      beq #0x338b7c
00338a20  00 c0 a0 e3                                      mov ip, #0
00338a24  05 10 a0 e1                                      mov r1, r5
00338a28  04 20 a0 e1                                      mov r2, r4
00338a2c  06 30 a0 e1                                      mov r3, r6
00338a30  07 00 a0 e1                                      mov r0, r7
00338a34  10 10 8d e8                                      stm sp, {r4, ip}
00338a38  21 ff ff eb                                      bl #0x3386c4
00338a3c  07 00 a0 e1                                      mov r0, r7
00338a40  2c d0 8d e2                                      add sp, sp, #0x2c
00338a44  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00338a48  04 30 94 e5                                      ldr r3, [r4, #4]
00338a4c  04 30 93 e5                                      ldr r3, [r3, #4]
00338a50  03 00 54 e1                                      cmp r4, r3
00338a54  0c c0 94 05                                      ldreq ip, [r4, #0xc]
00338a58  c7 ff ff 0a                                      beq #0x33897c
00338a5c  08 c0 94 e5                                      ldr ip, [r4, #8]
00338a60  00 00 5c e3                                      cmp ip, #0
00338a64  c1 ff ff 1a                                      bne #0x338970
00338a68  04 c0 94 e5                                      ldr ip, [r4, #4]
00338a6c  08 30 9c e5                                      ldr r3, [ip, #8]
00338a70  03 00 54 e1                                      cmp r4, r3
00338a74  01 00 00 0a                                      beq #0x338a80
00338a78  bf ff ff ea                                      b #0x33897c
00338a7c  03 c0 a0 e1                                      mov ip, r3
00338a80  04 30 9c e5                                      ldr r3, [ip, #4]
00338a84  08 20 93 e5                                      ldr r2, [r3, #8]
00338a88  0c 00 52 e1                                      cmp r2, ip
00338a8c  fa ff ff 0a                                      beq #0x338a7c
00338a90  03 c0 a0 e1                                      mov ip, r3
00338a94  b8 ff ff ea                                      b #0x33897c
00338a98  05 10 a0 e1                                      mov r1, r5
00338a9c  06 20 a0 e1                                      mov r2, r6
00338aa0  08 00 8d e2                                      add r0, sp, #8
00338aa4  3c ff ff eb                                      bl #0x33879c
00338aa8  08 30 9d e5                                      ldr r3, [sp, #8]
00338aac  00 30 87 e5                                      str r3, [r7]
00338ab0  e1 ff ff ea                                      b #0x338a3c
00338ab4  10 20 91 e5                                      ldr r2, [r1, #0x10]
00338ab8  00 00 52 e3                                      cmp r2, #0
00338abc  52 00 00 0a                                      beq #0x338c0c
00338ac0  00 20 93 e5                                      ldr r2, [r3]
00338ac4  10 c0 94 e5                                      ldr ip, [r4, #0x10]
00338ac8  0c 00 52 e1                                      cmp r2, ip
00338acc  54 00 00 ba                                      blt #0x338c24
00338ad0  21 00 00 da                                      ble #0x338b5c
00338ad4  0c e0 94 e5                                      ldr lr, [r4, #0xc]
00338ad8  00 00 5e e3                                      cmp lr, #0
00338adc  3c 00 00 0a                                      beq #0x338bd4
00338ae0  0e c0 a0 e1                                      mov ip, lr
00338ae4  00 00 00 ea                                      b #0x338aec
00338ae8  03 c0 a0 e1                                      mov ip, r3
00338aec  08 30 9c e5                                      ldr r3, [ip, #8]
00338af0  00 00 53 e3                                      cmp r3, #0
00338af4  fb ff ff 1a                                      bne #0x338ae8
00338af8  0c 00 55 e1                                      cmp r5, ip
00338afc  5c 00 00 0a                                      beq #0x338c74
00338b00  10 30 9c e5                                      ldr r3, [ip, #0x10]
00338b04  03 00 52 e1                                      cmp r2, r3
00338b08  4a 00 00 aa                                      bge #0x338c38
00338b0c  00 00 5e e3                                      cmp lr, #0
00338b10  4f 00 00 0a                                      beq #0x338c54
00338b14  00 e0 a0 e3                                      mov lr, #0
00338b18  05 10 a0 e1                                      mov r1, r5
00338b1c  0c 20 a0 e1                                      mov r2, ip
00338b20  06 30 a0 e1                                      mov r3, r6
00338b24  07 00 a0 e1                                      mov r0, r7
00338b28  00 50 8d e8                                      stm sp, {ip, lr}
00338b2c  e4 fe ff eb                                      bl #0x3386c4
00338b30  c1 ff ff ea                                      b #0x338a3c
00338b34  0c 20 94 e5                                      ldr r2, [r4, #0xc]
00338b38  00 c0 93 e5                                      ldr ip, [r3]
00338b3c  10 e0 92 e5                                      ldr lr, [r2, #0x10]
00338b40  0c 00 5e e1                                      cmp lr, ip
00338b44  06 00 00 aa                                      bge #0x338b64
00338b48  00 c0 a0 e3                                      mov ip, #0
00338b4c  00 c0 8d e5                                      str ip, [sp]
00338b50  04 40 8d e5                                      str r4, [sp, #4]
00338b54  da fe ff eb                                      bl #0x3386c4
00338b58  b7 ff ff ea                                      b #0x338a3c
00338b5c  00 40 87 e5                                      str r4, [r7]
00338b60  b5 ff ff ea                                      b #0x338a3c
00338b64  03 20 a0 e1                                      mov r2, r3
00338b68  10 00 8d e2                                      add r0, sp, #0x10
00338b6c  0a ff ff eb                                      bl #0x33879c
00338b70  10 30 9d e5                                      ldr r3, [sp, #0x10]
00338b74  00 30 87 e5                                      str r3, [r7]
00338b78  af ff ff ea                                      b #0x338a3c
00338b7c  05 10 a0 e1                                      mov r1, r5
00338b80  0c 20 a0 e1                                      mov r2, ip
00338b84  06 30 a0 e1                                      mov r3, r6
00338b88  07 00 a0 e1                                      mov r0, r7
00338b8c  00 e0 8d e5                                      str lr, [sp]
00338b90  04 c0 8d e5                                      str ip, [sp, #4]
00338b94  ca fe ff eb                                      bl #0x3386c4
00338b98  a7 ff ff ea                                      b #0x338a3c
00338b9c  04 30 94 e5                                      ldr r3, [r4, #4]
00338ba0  0c c0 93 e5                                      ldr ip, [r3, #0xc]
00338ba4  0c 00 54 e1                                      cmp r4, ip
00338ba8  04 c0 a0 11                                      movne ip, r4
00338bac  04 00 00 1a                                      bne #0x338bc4
00338bb0  03 c0 a0 e1                                      mov ip, r3
00338bb4  04 30 93 e5                                      ldr r3, [r3, #4]
00338bb8  0c a0 93 e5                                      ldr sl, [r3, #0xc]
00338bbc  0a 00 5c e1                                      cmp ip, sl
00338bc0  fa ff ff 0a                                      beq #0x338bb0
00338bc4  0c a0 9c e5                                      ldr sl, [ip, #0xc]
00338bc8  0a 00 53 e1                                      cmp r3, sl
00338bcc  03 c0 a0 11                                      movne ip, r3
00338bd0  79 ff ff ea                                      b #0x3389bc
00338bd4  04 30 94 e5                                      ldr r3, [r4, #4]
00338bd8  0c 10 93 e5                                      ldr r1, [r3, #0xc]
00338bdc  01 00 54 e1                                      cmp r4, r1
00338be0  04 c0 a0 11                                      movne ip, r4
00338be4  04 00 00 1a                                      bne #0x338bfc
00338be8  03 c0 a0 e1                                      mov ip, r3
00338bec  04 30 93 e5                                      ldr r3, [r3, #4]
00338bf0  0c 10 93 e5                                      ldr r1, [r3, #0xc]
00338bf4  0c 00 51 e1                                      cmp r1, ip
00338bf8  fa ff ff 0a                                      beq #0x338be8
00338bfc  0c 10 9c e5                                      ldr r1, [ip, #0xc]
00338c00  01 00 53 e1                                      cmp r3, r1
00338c04  03 c0 a0 11                                      movne ip, r3
00338c08  ba ff ff ea                                      b #0x338af8
00338c0c  03 20 a0 e1                                      mov r2, r3
00338c10  20 00 8d e2                                      add r0, sp, #0x20
00338c14  e0 fe ff eb                                      bl #0x33879c
00338c18  20 30 9d e5                                      ldr r3, [sp, #0x20]
00338c1c  00 30 87 e5                                      str r3, [r7]
00338c20  85 ff ff ea                                      b #0x338a3c
00338c24  00 c0 a0 e3                                      mov ip, #0
00338c28  04 20 a0 e1                                      mov r2, r4
00338c2c  10 10 8d e8                                      stm sp, {r4, ip}
00338c30  a3 fe ff eb                                      bl #0x3386c4
00338c34  80 ff ff ea                                      b #0x338a3c
00338c38  05 10 a0 e1                                      mov r1, r5
00338c3c  06 20 a0 e1                                      mov r2, r6
00338c40  18 00 8d e2                                      add r0, sp, #0x18
00338c44  d4 fe ff eb                                      bl #0x33879c
00338c48  18 30 9d e5                                      ldr r3, [sp, #0x18]
00338c4c  00 30 87 e5                                      str r3, [r7]
00338c50  79 ff ff ea                                      b #0x338a3c
00338c54  05 10 a0 e1                                      mov r1, r5
00338c58  04 20 a0 e1                                      mov r2, r4
00338c5c  06 30 a0 e1                                      mov r3, r6
00338c60  07 00 a0 e1                                      mov r0, r7
00338c64  00 e0 8d e5                                      str lr, [sp]
00338c68  04 40 8d e5                                      str r4, [sp, #4]
00338c6c  94 fe ff eb                                      bl #0x3386c4
00338c70  71 ff ff ea                                      b #0x338a3c
00338c74  00 c0 a0 e3                                      mov ip, #0
00338c78  05 10 a0 e1                                      mov r1, r5
00338c7c  04 20 a0 e1                                      mov r2, r4
00338c80  06 30 a0 e1                                      mov r3, r6
00338c84  07 00 a0 e1                                      mov r0, r7
00338c88  00 c0 8d e5                                      str ip, [sp]
00338c8c  04 40 8d e5                                      str r4, [sp, #4]
00338c90  8b fe ff eb                                      bl #0x3386c4
00338c94  68 ff ff ea                                      b #0x338a3c

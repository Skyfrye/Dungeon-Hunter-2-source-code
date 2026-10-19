; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003c2948, declared_size=56, range_size=56, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, CharStateMachine::Event>, std::priv::_Select1st<std::pair<int const, CharStateMachine::Event> >, std::priv::_MapTraitsT<std::pair<int const, CharStateMachine::Event> >, std::allocator<std::pair<int const, CharStateMachine::Event> > >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKiN16CharStateMachine5EventEENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE8_M_eraseEPNS_18_Rb_tree_node_baseE
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, CharStateMachine::Event>, std::priv::_Select1st<std::pair<int const, CharStateMachine::Event> >, std::priv::_MapTraitsT<std::pair<int const, CharStateMachine::Event> >, std::allocator<std::pair<int const, CharStateMachine::Event> > >::_M_erase(std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
003c2948  70 40 2d e9                                      push {r4, r5, r6, lr}
003c294c  00 40 51 e2                                      subs r4, r1, #0
003c2950  00 60 a0 e1                                      mov r6, r0
003c2954  08 00 00 0a                                      beq #0x3c297c
003c2958  0c 10 94 e5                                      ldr r1, [r4, #0xc]
003c295c  06 00 a0 e1                                      mov r0, r6
003c2960  f8 ff ff eb                                      bl #0x3c2948
003c2964  08 50 94 e5                                      ldr r5, [r4, #8]
003c2968  04 00 a0 e1                                      mov r0, r4
003c296c  20 10 a0 e3                                      mov r1, #0x20
003c2970  62 19 0d eb                                      bl #0x708f00
003c2974  00 40 55 e2                                      subs r4, r5, #0
003c2978  f6 ff ff 1a                                      bne #0x3c2958
003c297c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x003c6a40, declared_size=248, range_size=248, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, CharStateMachine::Event>, std::priv::_Select1st<std::pair<int const, CharStateMachine::Event> >, std::priv::_MapTraitsT<std::pair<int const, CharStateMachine::Event> >, std::allocator<std::pair<int const, CharStateMachine::Event> > >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKiN16CharStateMachine5EventEENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE7_M_copyEPNS_18_Rb_tree_node_baseESF_
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, CharStateMachine::Event>, std::priv::_Select1st<std::pair<int const, CharStateMachine::Event> >, std::priv::_MapTraitsT<std::pair<int const, CharStateMachine::Event> >, std::allocator<std::pair<int const, CharStateMachine::Event> > >::_M_copy(std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
003c6a40  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
003c6a44  01 40 a0 e1                                      mov r4, r1
003c6a48  02 50 a0 e1                                      mov r5, r2
003c6a4c  00 70 a0 e1                                      mov r7, r0
003c6a50  f2 ff ff eb                                      bl #0x3c6a20
003c6a54  10 20 94 e5                                      ldr r2, [r4, #0x10]
003c6a58  00 30 a0 e3                                      mov r3, #0
003c6a5c  00 a0 a0 e1                                      mov sl, r0
003c6a60  10 20 80 e5                                      str r2, [r0, #0x10]
003c6a64  14 20 94 e5                                      ldr r2, [r4, #0x14]
003c6a68  14 20 80 e5                                      str r2, [r0, #0x14]
003c6a6c  18 20 94 e5                                      ldr r2, [r4, #0x18]
003c6a70  18 20 80 e5                                      str r2, [r0, #0x18]
003c6a74  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
003c6a78  0c 30 80 e5                                      str r3, [r0, #0xc]
003c6a7c  08 30 80 e5                                      str r3, [r0, #8]
003c6a80  1c 20 80 e5                                      str r2, [r0, #0x1c]
003c6a84  00 30 d4 e5                                      ldrb r3, [r4]
003c6a88  04 50 80 e5                                      str r5, [r0, #4]
003c6a8c  00 30 c0 e5                                      strb r3, [r0]
003c6a90  0c 10 94 e5                                      ldr r1, [r4, #0xc]
003c6a94  00 00 51 e3                                      cmp r1, #0
003c6a98  03 00 00 0a                                      beq #0x3c6aac
003c6a9c  07 00 a0 e1                                      mov r0, r7
003c6aa0  0a 20 a0 e1                                      mov r2, sl
003c6aa4  e5 ff ff eb                                      bl #0x3c6a40
003c6aa8  0c 00 8a e5                                      str r0, [sl, #0xc]
003c6aac  08 50 94 e5                                      ldr r5, [r4, #8]
003c6ab0  00 00 55 e3                                      cmp r5, #0
003c6ab4  1d 00 00 0a                                      beq #0x3c6b30
003c6ab8  0a 60 a0 e1                                      mov r6, sl
003c6abc  00 80 a0 e3                                      mov r8, #0
003c6ac0  07 00 a0 e1                                      mov r0, r7
003c6ac4  d5 ff ff eb                                      bl #0x3c6a20
003c6ac8  10 30 95 e5                                      ldr r3, [r5, #0x10]
003c6acc  00 40 a0 e1                                      mov r4, r0
003c6ad0  04 20 a0 e1                                      mov r2, r4
003c6ad4  10 30 84 e5                                      str r3, [r4, #0x10]
003c6ad8  14 30 95 e5                                      ldr r3, [r5, #0x14]
003c6adc  07 00 a0 e1                                      mov r0, r7
003c6ae0  14 30 84 e5                                      str r3, [r4, #0x14]
003c6ae4  18 30 95 e5                                      ldr r3, [r5, #0x18]
003c6ae8  18 30 84 e5                                      str r3, [r4, #0x18]
003c6aec  1c 30 95 e5                                      ldr r3, [r5, #0x1c]
003c6af0  08 80 84 e5                                      str r8, [r4, #8]
003c6af4  0c 80 84 e5                                      str r8, [r4, #0xc]
003c6af8  1c 30 84 e5                                      str r3, [r4, #0x1c]
003c6afc  00 30 d5 e5                                      ldrb r3, [r5]
003c6b00  00 30 c4 e5                                      strb r3, [r4]
003c6b04  08 40 86 e5                                      str r4, [r6, #8]
003c6b08  04 60 84 e5                                      str r6, [r4, #4]
003c6b0c  0c 30 95 e5                                      ldr r3, [r5, #0xc]
003c6b10  04 60 a0 e1                                      mov r6, r4
003c6b14  00 10 53 e2                                      subs r1, r3, #0
003c6b18  01 00 00 0a                                      beq #0x3c6b24
003c6b1c  c7 ff ff eb                                      bl #0x3c6a40
003c6b20  0c 00 84 e5                                      str r0, [r4, #0xc]
003c6b24  08 50 95 e5                                      ldr r5, [r5, #8]
003c6b28  00 00 55 e3                                      cmp r5, #0
003c6b2c  e3 ff ff 1a                                      bne #0x3c6ac0
003c6b30  0a 00 a0 e1                                      mov r0, sl
003c6b34  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x003c6b38, declared_size=120, range_size=120, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, CharStateMachine::Event>, std::priv::_Select1st<std::pair<int const, CharStateMachine::Event> >, std::priv::_MapTraitsT<std::pair<int const, CharStateMachine::Event> >, std::allocator<std::pair<int const, CharStateMachine::Event> > >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKiN16CharStateMachine5EventEENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EEC1ERKSD_
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, CharStateMachine::Event>, std::priv::_Select1st<std::pair<int const, CharStateMachine::Event> >, std::priv::_MapTraitsT<std::pair<int const, CharStateMachine::Event> >, std::allocator<std::pair<int const, CharStateMachine::Event> > >::_Rb_tree(std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, CharStateMachine::Event>, std::priv::_Select1st<std::pair<int const, CharStateMachine::Event> >, std::priv::_MapTraitsT<std::pair<int const, CharStateMachine::Event> >, std::allocator<std::pair<int const, CharStateMachine::Event> > > const&)
; decoder-mode: arm
003c6b38  70 40 2d e9                                      push {r4, r5, r6, lr}
003c6b3c  00 30 a0 e3                                      mov r3, #0
003c6b40  00 40 a0 e1                                      mov r4, r0
003c6b44  10 30 80 e5                                      str r3, [r0, #0x10]
003c6b48  04 30 80 e5                                      str r3, [r0, #4]
003c6b4c  00 30 c0 e5                                      strb r3, [r0]
003c6b50  08 00 84 e5                                      str r0, [r4, #8]
003c6b54  0c 00 84 e5                                      str r0, [r4, #0xc]
003c6b58  01 50 a0 e1                                      mov r5, r1
003c6b5c  04 10 91 e5                                      ldr r1, [r1, #4]
003c6b60  03 00 51 e1                                      cmp r1, r3
003c6b64  0d 00 00 0a                                      beq #0x3c6ba0
003c6b68  00 20 a0 e1                                      mov r2, r0
003c6b6c  b3 ff ff eb                                      bl #0x3c6a40
003c6b70  04 00 84 e5                                      str r0, [r4, #4]
003c6b74  00 30 a0 e1                                      mov r3, r0
003c6b78  03 20 a0 e1                                      mov r2, r3
003c6b7c  08 30 93 e5                                      ldr r3, [r3, #8]
003c6b80  00 00 53 e3                                      cmp r3, #0
003c6b84  fb ff ff 1a                                      bne #0x3c6b78
003c6b88  08 20 84 e5                                      str r2, [r4, #8]
003c6b8c  00 30 a0 e1                                      mov r3, r0
003c6b90  0c 00 90 e5                                      ldr r0, [r0, #0xc]
003c6b94  00 00 50 e3                                      cmp r0, #0
003c6b98  fb ff ff 1a                                      bne #0x3c6b8c
003c6b9c  0c 30 84 e5                                      str r3, [r4, #0xc]
003c6ba0  10 30 95 e5                                      ldr r3, [r5, #0x10]
003c6ba4  04 00 a0 e1                                      mov r0, r4
003c6ba8  10 30 84 e5                                      str r3, [r4, #0x10]
003c6bac  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x003c74b0, declared_size=364, range_size=364, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, CharStateMachine::Event>, std::priv::_Select1st<std::pair<int const, CharStateMachine::Event> >, std::priv::_MapTraitsT<std::pair<int const, CharStateMachine::Event> >, std::allocator<std::pair<int const, CharStateMachine::Event> > >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKiN16CharStateMachine5EventEENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE9_M_insertEPNS_18_Rb_tree_node_baseERKS7_SF_SF_
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, CharStateMachine::Event>, std::priv::_Select1st<std::pair<int const, CharStateMachine::Event> >, std::priv::_MapTraitsT<std::pair<int const, CharStateMachine::Event> >, std::allocator<std::pair<int const, CharStateMachine::Event> > >::_M_insert(std::priv::_Rb_tree_node_base*, std::pair<int const, CharStateMachine::Event> const&, std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
003c74b0  02 00 51 e1                                      cmp r1, r2
003c74b4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003c74b8  01 40 a0 e1                                      mov r4, r1
003c74bc  02 70 a0 e1                                      mov r7, r2
003c74c0  00 50 a0 e1                                      mov r5, r0
003c74c4  03 80 a0 e1                                      mov r8, r3
003c74c8  3a 00 00 0a                                      beq #0x3c75b8
003c74cc  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
003c74d0  00 00 53 e3                                      cmp r3, #0
003c74d4  1d 00 00 0a                                      beq #0x3c7550
003c74d8  04 00 a0 e1                                      mov r0, r4
003c74dc  4f fd ff eb                                      bl #0x3c6a20
003c74e0  08 30 a0 e1                                      mov r3, r8
003c74e4  04 10 93 e4                                      ldr r1, [r3], #4
003c74e8  00 20 a0 e3                                      mov r2, #0
003c74ec  00 60 a0 e1                                      mov r6, r0
003c74f0  10 10 80 e5                                      str r1, [r0, #0x10]
003c74f4  04 10 98 e5                                      ldr r1, [r8, #4]
003c74f8  04 30 83 e2                                      add r3, r3, #4
003c74fc  14 10 80 e5                                      str r1, [r0, #0x14]
003c7500  04 10 93 e4                                      ldr r1, [r3], #4
003c7504  18 10 80 e5                                      str r1, [r0, #0x18]
003c7508  00 30 93 e5                                      ldr r3, [r3]
003c750c  0c 20 80 e5                                      str r2, [r0, #0xc]
003c7510  08 20 80 e5                                      str r2, [r0, #8]
003c7514  1c 30 80 e5                                      str r3, [r0, #0x1c]
003c7518  0c 00 87 e5                                      str r0, [r7, #0xc]
003c751c  0c 30 94 e5                                      ldr r3, [r4, #0xc]
003c7520  03 00 57 e1                                      cmp r7, r3
003c7524  21 00 00 0a                                      beq #0x3c75b0
003c7528  06 00 a0 e1                                      mov r0, r6
003c752c  04 70 86 e5                                      str r7, [r6, #4]
003c7530  04 10 84 e2                                      add r1, r4, #4
003c7534  89 30 fd eb                                      bl #0x313760
003c7538  10 30 94 e5                                      ldr r3, [r4, #0x10]
003c753c  05 00 a0 e1                                      mov r0, r5
003c7540  01 30 83 e2                                      add r3, r3, #1
003c7544  10 30 84 e5                                      str r3, [r4, #0x10]
003c7548  00 60 85 e5                                      str r6, [r5]
003c754c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003c7550  18 30 9d e5                                      ldr r3, [sp, #0x18]
003c7554  00 00 53 e3                                      cmp r3, #0
003c7558  2a 00 00 0a                                      beq #0x3c7608
003c755c  04 00 a0 e1                                      mov r0, r4
003c7560  2e fd ff eb                                      bl #0x3c6a20
003c7564  08 30 a0 e1                                      mov r3, r8
003c7568  04 10 93 e4                                      ldr r1, [r3], #4
003c756c  00 20 a0 e3                                      mov r2, #0
003c7570  00 60 a0 e1                                      mov r6, r0
003c7574  10 10 80 e5                                      str r1, [r0, #0x10]
003c7578  04 10 98 e5                                      ldr r1, [r8, #4]
003c757c  04 30 83 e2                                      add r3, r3, #4
003c7580  14 10 80 e5                                      str r1, [r0, #0x14]
003c7584  04 10 93 e4                                      ldr r1, [r3], #4
003c7588  18 10 80 e5                                      str r1, [r0, #0x18]
003c758c  00 30 93 e5                                      ldr r3, [r3]
003c7590  0c 20 80 e5                                      str r2, [r0, #0xc]
003c7594  08 20 80 e5                                      str r2, [r0, #8]
003c7598  1c 30 80 e5                                      str r3, [r0, #0x1c]
003c759c  08 00 87 e5                                      str r0, [r7, #8]
003c75a0  08 30 94 e5                                      ldr r3, [r4, #8]
003c75a4  03 00 57 e1                                      cmp r7, r3
003c75a8  08 00 84 05                                      streq r0, [r4, #8]
003c75ac  dd ff ff ea                                      b #0x3c7528
003c75b0  0c 60 84 e5                                      str r6, [r4, #0xc]
003c75b4  db ff ff ea                                      b #0x3c7528
003c75b8  01 00 a0 e1                                      mov r0, r1
003c75bc  17 fd ff eb                                      bl #0x3c6a20
003c75c0  08 30 a0 e1                                      mov r3, r8
003c75c4  04 10 93 e4                                      ldr r1, [r3], #4
003c75c8  00 20 a0 e3                                      mov r2, #0
003c75cc  00 60 a0 e1                                      mov r6, r0
003c75d0  10 10 80 e5                                      str r1, [r0, #0x10]
003c75d4  04 10 98 e5                                      ldr r1, [r8, #4]
003c75d8  04 30 83 e2                                      add r3, r3, #4
003c75dc  14 10 80 e5                                      str r1, [r0, #0x14]
003c75e0  04 10 93 e4                                      ldr r1, [r3], #4
003c75e4  18 10 80 e5                                      str r1, [r0, #0x18]
003c75e8  00 30 93 e5                                      ldr r3, [r3]
003c75ec  0c 20 80 e5                                      str r2, [r0, #0xc]
003c75f0  08 20 80 e5                                      str r2, [r0, #8]
003c75f4  1c 30 80 e5                                      str r3, [r0, #0x1c]
003c75f8  08 00 84 e5                                      str r0, [r4, #8]
003c75fc  04 00 84 e5                                      str r0, [r4, #4]
003c7600  0c 00 84 e5                                      str r0, [r4, #0xc]
003c7604  c7 ff ff ea                                      b #0x3c7528
003c7608  00 20 98 e5                                      ldr r2, [r8]
003c760c  10 30 97 e5                                      ldr r3, [r7, #0x10]
003c7610  03 00 52 e1                                      cmp r2, r3
003c7614  af ff ff aa                                      bge #0x3c74d8
003c7618  cf ff ff ea                                      b #0x3c755c

; FUNCTION 0x003c761c, declared_size=392, range_size=392, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, CharStateMachine::Event>, std::priv::_Select1st<std::pair<int const, CharStateMachine::Event> >, std::priv::_MapTraitsT<std::pair<int const, CharStateMachine::Event> >, std::allocator<std::pair<int const, CharStateMachine::Event> > >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKiN16CharStateMachine5EventEENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE13insert_uniqueERKS7_
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, CharStateMachine::Event>, std::priv::_Select1st<std::pair<int const, CharStateMachine::Event> >, std::priv::_MapTraitsT<std::pair<int const, CharStateMachine::Event> >, std::allocator<std::pair<int const, CharStateMachine::Event> > >::insert_unique(std::pair<int const, CharStateMachine::Event> const&)
; decoder-mode: arm
003c761c  70 40 2d e9                                      push {r4, r5, r6, lr}
003c7620  04 c0 91 e5                                      ldr ip, [r1, #4]
003c7624  10 d0 4d e2                                      sub sp, sp, #0x10
003c7628  00 40 a0 e1                                      mov r4, r0
003c762c  00 00 5c e3                                      cmp ip, #0
003c7630  02 30 a0 e1                                      mov r3, r2
003c7634  01 c0 a0 01                                      moveq ip, r1
003c7638  15 00 00 0a                                      beq #0x3c7694
003c763c  00 60 92 e5                                      ldr r6, [r2]
003c7640  00 00 00 ea                                      b #0x3c7648
003c7644  02 c0 a0 e1                                      mov ip, r2
003c7648  10 00 9c e5                                      ldr r0, [ip, #0x10]
003c764c  01 50 a0 e3                                      mov r5, #1
003c7650  06 00 50 e1                                      cmp r0, r6
003c7654  08 20 9c c5                                      ldrgt r2, [ip, #8]
003c7658  0c 20 9c d5                                      ldrle r2, [ip, #0xc]
003c765c  00 50 a0 d3                                      movle r5, #0
003c7660  00 00 52 e3                                      cmp r2, #0
003c7664  f6 ff ff 1a                                      bne #0x3c7644
003c7668  00 00 55 e3                                      cmp r5, #0
003c766c  0c 50 a0 01                                      moveq r5, ip
003c7670  07 00 00 1a                                      bne #0x3c7694
003c7674  00 00 56 e1                                      cmp r6, r0
003c7678  00 30 a0 d3                                      movle r3, #0
003c767c  00 50 84 d5                                      strle r5, [r4]
003c7680  04 30 c4 d5                                      strble r3, [r4, #4]
003c7684  1c 00 00 ca                                      bgt #0x3c76fc
003c7688  04 00 a0 e1                                      mov r0, r4
003c768c  10 d0 8d e2                                      add sp, sp, #0x10
003c7690  70 80 bd e8                                      pop {r4, r5, r6, pc}
003c7694  08 20 91 e5                                      ldr r2, [r1, #8]
003c7698  02 00 5c e1                                      cmp ip, r2
003c769c  36 00 00 0a                                      beq #0x3c777c
003c76a0  00 20 dc e5                                      ldrb r2, [ip]
003c76a4  00 00 52 e3                                      cmp r2, #0
003c76a8  03 00 00 1a                                      bne #0x3c76bc
003c76ac  04 20 9c e5                                      ldr r2, [ip, #4]
003c76b0  04 20 92 e5                                      ldr r2, [r2, #4]
003c76b4  02 00 5c e1                                      cmp ip, r2
003c76b8  2a 00 00 0a                                      beq #0x3c7768
003c76bc  08 00 9c e5                                      ldr r0, [ip, #8]
003c76c0  00 00 50 e3                                      cmp r0, #0
003c76c4  01 00 00 1a                                      bne #0x3c76d0
003c76c8  16 00 00 ea                                      b #0x3c7728
003c76cc  02 00 a0 e1                                      mov r0, r2
003c76d0  0c 20 90 e5                                      ldr r2, [r0, #0xc]
003c76d4  00 00 52 e3                                      cmp r2, #0
003c76d8  fb ff ff 1a                                      bne #0x3c76cc
003c76dc  00 60 93 e5                                      ldr r6, [r3]
003c76e0  00 50 a0 e1                                      mov r5, r0
003c76e4  10 00 90 e5                                      ldr r0, [r0, #0x10]
003c76e8  00 00 56 e1                                      cmp r6, r0
003c76ec  00 30 a0 d3                                      movle r3, #0
003c76f0  00 50 84 d5                                      strle r5, [r4]
003c76f4  04 30 c4 d5                                      strble r3, [r4, #4]
003c76f8  e2 ff ff da                                      ble #0x3c7688
003c76fc  0c 20 a0 e1                                      mov r2, ip
003c7700  08 00 8d e2                                      add r0, sp, #8
003c7704  00 c0 a0 e3                                      mov ip, #0
003c7708  04 c0 8d e5                                      str ip, [sp, #4]
003c770c  00 c0 8d e5                                      str ip, [sp]
003c7710  66 ff ff eb                                      bl #0x3c74b0
003c7714  08 30 9d e5                                      ldr r3, [sp, #8]
003c7718  01 20 a0 e3                                      mov r2, #1
003c771c  04 20 c4 e5                                      strb r2, [r4, #4]
003c7720  00 30 84 e5                                      str r3, [r4]
003c7724  d7 ff ff ea                                      b #0x3c7688
003c7728  04 20 9c e5                                      ldr r2, [ip, #4]
003c772c  08 00 92 e5                                      ldr r0, [r2, #8]
003c7730  00 00 5c e1                                      cmp ip, r0
003c7734  02 50 a0 11                                      movne r5, r2
003c7738  00 60 93 15                                      ldrne r6, [r3]
003c773c  10 00 92 15                                      ldrne r0, [r2, #0x10]
003c7740  01 00 00 0a                                      beq #0x3c774c
003c7744  ca ff ff ea                                      b #0x3c7674
003c7748  05 20 a0 e1                                      mov r2, r5
003c774c  04 50 92 e5                                      ldr r5, [r2, #4]
003c7750  08 00 95 e5                                      ldr r0, [r5, #8]
003c7754  02 00 50 e1                                      cmp r0, r2
003c7758  fa ff ff 0a                                      beq #0x3c7748
003c775c  00 60 93 e5                                      ldr r6, [r3]
003c7760  10 00 95 e5                                      ldr r0, [r5, #0x10]
003c7764  c2 ff ff ea                                      b #0x3c7674
003c7768  0c 20 9c e5                                      ldr r2, [ip, #0xc]
003c776c  00 60 93 e5                                      ldr r6, [r3]
003c7770  02 50 a0 e1                                      mov r5, r2
003c7774  10 00 92 e5                                      ldr r0, [r2, #0x10]
003c7778  bd ff ff ea                                      b #0x3c7674
003c777c  0c 20 a0 e1                                      mov r2, ip
003c7780  00 e0 a0 e3                                      mov lr, #0
003c7784  0c 00 8d e2                                      add r0, sp, #0xc
003c7788  00 50 8d e8                                      stm sp, {ip, lr}
003c778c  47 ff ff eb                                      bl #0x3c74b0
003c7790  0c 30 9d e5                                      ldr r3, [sp, #0xc]
003c7794  01 20 a0 e3                                      mov r2, #1
003c7798  04 20 c4 e5                                      strb r2, [r4, #4]
003c779c  00 30 84 e5                                      str r3, [r4]
003c77a0  b8 ff ff ea                                      b #0x3c7688

; FUNCTION 0x003c77a4, declared_size=884, range_size=884, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, CharStateMachine::Event>, std::priv::_Select1st<std::pair<int const, CharStateMachine::Event> >, std::priv::_MapTraitsT<std::pair<int const, CharStateMachine::Event> >, std::allocator<std::pair<int const, CharStateMachine::Event> > >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKiN16CharStateMachine5EventEENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE13insert_uniqueENS_17_Rb_tree_iteratorIS7_SB_EERKS7_
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, CharStateMachine::Event>, std::priv::_Select1st<std::pair<int const, CharStateMachine::Event> >, std::priv::_MapTraitsT<std::pair<int const, CharStateMachine::Event> >, std::allocator<std::pair<int const, CharStateMachine::Event> > >::insert_unique(std::priv::_Rb_tree_iterator<std::pair<int const, CharStateMachine::Event>, std::priv::_MapTraitsT<std::pair<int const, CharStateMachine::Event> > >, std::pair<int const, CharStateMachine::Event> const&)
; decoder-mode: arm
003c77a4  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
003c77a8  00 40 92 e5                                      ldr r4, [r2]
003c77ac  08 20 91 e5                                      ldr r2, [r1, #8]
003c77b0  2c d0 4d e2                                      sub sp, sp, #0x2c
003c77b4  01 50 a0 e1                                      mov r5, r1
003c77b8  02 00 54 e1                                      cmp r4, r2
003c77bc  00 70 a0 e1                                      mov r7, r0
003c77c0  03 60 a0 e1                                      mov r6, r3
003c77c4  5a 00 00 0a                                      beq #0x3c7934
003c77c8  01 00 54 e1                                      cmp r4, r1
003c77cc  78 00 00 0a                                      beq #0x3c79b4
003c77d0  00 30 d4 e5                                      ldrb r3, [r4]
003c77d4  00 00 53 e3                                      cmp r3, #0
003c77d8  3a 00 00 0a                                      beq #0x3c78c8
003c77dc  08 c0 94 e5                                      ldr ip, [r4, #8]
003c77e0  00 00 5c e3                                      cmp ip, #0
003c77e4  01 00 00 1a                                      bne #0x3c77f0
003c77e8  3e 00 00 ea                                      b #0x3c78e8
003c77ec  03 c0 a0 e1                                      mov ip, r3
003c77f0  0c 30 9c e5                                      ldr r3, [ip, #0xc]
003c77f4  00 00 53 e3                                      cmp r3, #0
003c77f8  fb ff ff 1a                                      bne #0x3c77ec
003c77fc  00 20 96 e5                                      ldr r2, [r6]
003c7800  10 00 94 e5                                      ldr r0, [r4, #0x10]
003c7804  00 00 52 e1                                      cmp r2, r0
003c7808  00 10 a0 a3                                      movge r1, #0
003c780c  01 10 a0 b3                                      movlt r1, #1
003c7810  00 00 51 e3                                      cmp r1, #0
003c7814  1b 00 00 1a                                      bne #0x3c7888
003c7818  0c 80 94 e5                                      ldr r8, [r4, #0xc]
003c781c  00 00 58 e3                                      cmp r8, #0
003c7820  7d 00 00 0a                                      beq #0x3c7a1c
003c7824  08 c0 a0 e1                                      mov ip, r8
003c7828  00 00 00 ea                                      b #0x3c7830
003c782c  03 c0 a0 e1                                      mov ip, r3
003c7830  08 30 9c e5                                      ldr r3, [ip, #8]
003c7834  00 00 53 e3                                      cmp r3, #0
003c7838  fb ff ff 1a                                      bne #0x3c782c
003c783c  00 00 51 e3                                      cmp r1, #0
003c7840  34 00 00 1a                                      bne #0x3c7918
003c7844  00 00 52 e1                                      cmp r2, r0
003c7848  63 00 00 da                                      ble #0x3c79dc
003c784c  0c 00 55 e1                                      cmp r5, ip
003c7850  02 00 00 0a                                      beq #0x3c7860
003c7854  10 30 9c e5                                      ldr r3, [ip, #0x10]
003c7858  03 00 52 e1                                      cmp r2, r3
003c785c  2d 00 00 aa                                      bge #0x3c7918
003c7860  00 00 58 e3                                      cmp r8, #0
003c7864  4a 00 00 1a                                      bne #0x3c7994
003c7868  05 10 a0 e1                                      mov r1, r5
003c786c  04 20 a0 e1                                      mov r2, r4
003c7870  06 30 a0 e1                                      mov r3, r6
003c7874  07 00 a0 e1                                      mov r0, r7
003c7878  00 80 8d e5                                      str r8, [sp]
003c787c  04 40 8d e5                                      str r4, [sp, #4]
003c7880  0a ff ff eb                                      bl #0x3c74b0
003c7884  0c 00 00 ea                                      b #0x3c78bc
003c7888  10 30 9c e5                                      ldr r3, [ip, #0x10]
003c788c  03 00 52 e1                                      cmp r2, r3
003c7890  e0 ff ff da                                      ble #0x3c7818
003c7894  0c e0 9c e5                                      ldr lr, [ip, #0xc]
003c7898  00 00 5e e3                                      cmp lr, #0
003c789c  56 00 00 0a                                      beq #0x3c79fc
003c78a0  00 c0 a0 e3                                      mov ip, #0
003c78a4  05 10 a0 e1                                      mov r1, r5
003c78a8  04 20 a0 e1                                      mov r2, r4
003c78ac  06 30 a0 e1                                      mov r3, r6
003c78b0  07 00 a0 e1                                      mov r0, r7
003c78b4  10 10 8d e8                                      stm sp, {r4, ip}
003c78b8  fc fe ff eb                                      bl #0x3c74b0
003c78bc  07 00 a0 e1                                      mov r0, r7
003c78c0  2c d0 8d e2                                      add sp, sp, #0x2c
003c78c4  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
003c78c8  04 30 94 e5                                      ldr r3, [r4, #4]
003c78cc  04 30 93 e5                                      ldr r3, [r3, #4]
003c78d0  03 00 54 e1                                      cmp r4, r3
003c78d4  0c c0 94 05                                      ldreq ip, [r4, #0xc]
003c78d8  c7 ff ff 0a                                      beq #0x3c77fc
003c78dc  08 c0 94 e5                                      ldr ip, [r4, #8]
003c78e0  00 00 5c e3                                      cmp ip, #0
003c78e4  c1 ff ff 1a                                      bne #0x3c77f0
003c78e8  04 c0 94 e5                                      ldr ip, [r4, #4]
003c78ec  08 30 9c e5                                      ldr r3, [ip, #8]
003c78f0  03 00 54 e1                                      cmp r4, r3
003c78f4  01 00 00 0a                                      beq #0x3c7900
003c78f8  bf ff ff ea                                      b #0x3c77fc
003c78fc  03 c0 a0 e1                                      mov ip, r3
003c7900  04 30 9c e5                                      ldr r3, [ip, #4]
003c7904  08 20 93 e5                                      ldr r2, [r3, #8]
003c7908  0c 00 52 e1                                      cmp r2, ip
003c790c  fa ff ff 0a                                      beq #0x3c78fc
003c7910  03 c0 a0 e1                                      mov ip, r3
003c7914  b8 ff ff ea                                      b #0x3c77fc
003c7918  05 10 a0 e1                                      mov r1, r5
003c791c  06 20 a0 e1                                      mov r2, r6
003c7920  08 00 8d e2                                      add r0, sp, #8
003c7924  3c ff ff eb                                      bl #0x3c761c
003c7928  08 30 9d e5                                      ldr r3, [sp, #8]
003c792c  00 30 87 e5                                      str r3, [r7]
003c7930  e1 ff ff ea                                      b #0x3c78bc
003c7934  10 20 91 e5                                      ldr r2, [r1, #0x10]
003c7938  00 00 52 e3                                      cmp r2, #0
003c793c  52 00 00 0a                                      beq #0x3c7a8c
003c7940  00 20 93 e5                                      ldr r2, [r3]
003c7944  10 c0 94 e5                                      ldr ip, [r4, #0x10]
003c7948  0c 00 52 e1                                      cmp r2, ip
003c794c  54 00 00 ba                                      blt #0x3c7aa4
003c7950  21 00 00 da                                      ble #0x3c79dc
003c7954  0c e0 94 e5                                      ldr lr, [r4, #0xc]
003c7958  00 00 5e e3                                      cmp lr, #0
003c795c  3c 00 00 0a                                      beq #0x3c7a54
003c7960  0e c0 a0 e1                                      mov ip, lr
003c7964  00 00 00 ea                                      b #0x3c796c
003c7968  03 c0 a0 e1                                      mov ip, r3
003c796c  08 30 9c e5                                      ldr r3, [ip, #8]
003c7970  00 00 53 e3                                      cmp r3, #0
003c7974  fb ff ff 1a                                      bne #0x3c7968
003c7978  0c 00 55 e1                                      cmp r5, ip
003c797c  5c 00 00 0a                                      beq #0x3c7af4
003c7980  10 30 9c e5                                      ldr r3, [ip, #0x10]
003c7984  03 00 52 e1                                      cmp r2, r3
003c7988  4a 00 00 aa                                      bge #0x3c7ab8
003c798c  00 00 5e e3                                      cmp lr, #0
003c7990  4f 00 00 0a                                      beq #0x3c7ad4
003c7994  00 e0 a0 e3                                      mov lr, #0
003c7998  05 10 a0 e1                                      mov r1, r5
003c799c  0c 20 a0 e1                                      mov r2, ip
003c79a0  06 30 a0 e1                                      mov r3, r6
003c79a4  07 00 a0 e1                                      mov r0, r7
003c79a8  00 50 8d e8                                      stm sp, {ip, lr}
003c79ac  bf fe ff eb                                      bl #0x3c74b0
003c79b0  c1 ff ff ea                                      b #0x3c78bc
003c79b4  0c 20 94 e5                                      ldr r2, [r4, #0xc]
003c79b8  00 c0 93 e5                                      ldr ip, [r3]
003c79bc  10 e0 92 e5                                      ldr lr, [r2, #0x10]
003c79c0  0c 00 5e e1                                      cmp lr, ip
003c79c4  06 00 00 aa                                      bge #0x3c79e4
003c79c8  00 c0 a0 e3                                      mov ip, #0
003c79cc  00 c0 8d e5                                      str ip, [sp]
003c79d0  04 40 8d e5                                      str r4, [sp, #4]
003c79d4  b5 fe ff eb                                      bl #0x3c74b0
003c79d8  b7 ff ff ea                                      b #0x3c78bc
003c79dc  00 40 87 e5                                      str r4, [r7]
003c79e0  b5 ff ff ea                                      b #0x3c78bc
003c79e4  03 20 a0 e1                                      mov r2, r3
003c79e8  10 00 8d e2                                      add r0, sp, #0x10
003c79ec  0a ff ff eb                                      bl #0x3c761c
003c79f0  10 30 9d e5                                      ldr r3, [sp, #0x10]
003c79f4  00 30 87 e5                                      str r3, [r7]
003c79f8  af ff ff ea                                      b #0x3c78bc
003c79fc  05 10 a0 e1                                      mov r1, r5
003c7a00  0c 20 a0 e1                                      mov r2, ip
003c7a04  06 30 a0 e1                                      mov r3, r6
003c7a08  07 00 a0 e1                                      mov r0, r7
003c7a0c  00 e0 8d e5                                      str lr, [sp]
003c7a10  04 c0 8d e5                                      str ip, [sp, #4]
003c7a14  a5 fe ff eb                                      bl #0x3c74b0
003c7a18  a7 ff ff ea                                      b #0x3c78bc
003c7a1c  04 30 94 e5                                      ldr r3, [r4, #4]
003c7a20  0c c0 93 e5                                      ldr ip, [r3, #0xc]
003c7a24  0c 00 54 e1                                      cmp r4, ip
003c7a28  04 c0 a0 11                                      movne ip, r4
003c7a2c  04 00 00 1a                                      bne #0x3c7a44
003c7a30  03 c0 a0 e1                                      mov ip, r3
003c7a34  04 30 93 e5                                      ldr r3, [r3, #4]
003c7a38  0c a0 93 e5                                      ldr sl, [r3, #0xc]
003c7a3c  0a 00 5c e1                                      cmp ip, sl
003c7a40  fa ff ff 0a                                      beq #0x3c7a30
003c7a44  0c a0 9c e5                                      ldr sl, [ip, #0xc]
003c7a48  0a 00 53 e1                                      cmp r3, sl
003c7a4c  03 c0 a0 11                                      movne ip, r3
003c7a50  79 ff ff ea                                      b #0x3c783c
003c7a54  04 30 94 e5                                      ldr r3, [r4, #4]
003c7a58  0c 10 93 e5                                      ldr r1, [r3, #0xc]
003c7a5c  01 00 54 e1                                      cmp r4, r1
003c7a60  04 c0 a0 11                                      movne ip, r4
003c7a64  04 00 00 1a                                      bne #0x3c7a7c
003c7a68  03 c0 a0 e1                                      mov ip, r3
003c7a6c  04 30 93 e5                                      ldr r3, [r3, #4]
003c7a70  0c 10 93 e5                                      ldr r1, [r3, #0xc]
003c7a74  0c 00 51 e1                                      cmp r1, ip
003c7a78  fa ff ff 0a                                      beq #0x3c7a68
003c7a7c  0c 10 9c e5                                      ldr r1, [ip, #0xc]
003c7a80  01 00 53 e1                                      cmp r3, r1
003c7a84  03 c0 a0 11                                      movne ip, r3
003c7a88  ba ff ff ea                                      b #0x3c7978
003c7a8c  03 20 a0 e1                                      mov r2, r3
003c7a90  20 00 8d e2                                      add r0, sp, #0x20
003c7a94  e0 fe ff eb                                      bl #0x3c761c
003c7a98  20 30 9d e5                                      ldr r3, [sp, #0x20]
003c7a9c  00 30 87 e5                                      str r3, [r7]
003c7aa0  85 ff ff ea                                      b #0x3c78bc
003c7aa4  00 c0 a0 e3                                      mov ip, #0
003c7aa8  04 20 a0 e1                                      mov r2, r4
003c7aac  10 10 8d e8                                      stm sp, {r4, ip}
003c7ab0  7e fe ff eb                                      bl #0x3c74b0
003c7ab4  80 ff ff ea                                      b #0x3c78bc
003c7ab8  05 10 a0 e1                                      mov r1, r5
003c7abc  06 20 a0 e1                                      mov r2, r6
003c7ac0  18 00 8d e2                                      add r0, sp, #0x18
003c7ac4  d4 fe ff eb                                      bl #0x3c761c
003c7ac8  18 30 9d e5                                      ldr r3, [sp, #0x18]
003c7acc  00 30 87 e5                                      str r3, [r7]
003c7ad0  79 ff ff ea                                      b #0x3c78bc
003c7ad4  05 10 a0 e1                                      mov r1, r5
003c7ad8  04 20 a0 e1                                      mov r2, r4
003c7adc  06 30 a0 e1                                      mov r3, r6
003c7ae0  07 00 a0 e1                                      mov r0, r7
003c7ae4  00 e0 8d e5                                      str lr, [sp]
003c7ae8  04 40 8d e5                                      str r4, [sp, #4]
003c7aec  6f fe ff eb                                      bl #0x3c74b0
003c7af0  71 ff ff ea                                      b #0x3c78bc
003c7af4  00 c0 a0 e3                                      mov ip, #0
003c7af8  05 10 a0 e1                                      mov r1, r5
003c7afc  04 20 a0 e1                                      mov r2, r4
003c7b00  06 30 a0 e1                                      mov r3, r6
003c7b04  07 00 a0 e1                                      mov r0, r7
003c7b08  00 c0 8d e5                                      str ip, [sp]
003c7b0c  04 40 8d e5                                      str r4, [sp, #4]
003c7b10  66 fe ff eb                                      bl #0x3c74b0
003c7b14  68 ff ff ea                                      b #0x3c78bc

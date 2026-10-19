; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003a7930, declared_size=56, range_size=56, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, Character*>, std::priv::_Select1st<std::pair<int const, Character*> >, std::priv::_MapTraitsT<std::pair<int const, Character*> >, std::allocator<std::pair<int const, Character*> > >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKiP9CharacterENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE8_M_eraseEPNS_18_Rb_tree_node_baseE
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, Character*>, std::priv::_Select1st<std::pair<int const, Character*> >, std::priv::_MapTraitsT<std::pair<int const, Character*> >, std::allocator<std::pair<int const, Character*> > >::_M_erase(std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
003a7930  70 40 2d e9                                      push {r4, r5, r6, lr}
003a7934  00 40 51 e2                                      subs r4, r1, #0
003a7938  00 60 a0 e1                                      mov r6, r0
003a793c  08 00 00 0a                                      beq #0x3a7964
003a7940  0c 10 94 e5                                      ldr r1, [r4, #0xc]
003a7944  06 00 a0 e1                                      mov r0, r6
003a7948  f8 ff ff eb                                      bl #0x3a7930
003a794c  08 50 94 e5                                      ldr r5, [r4, #8]
003a7950  04 00 a0 e1                                      mov r0, r4
003a7954  18 10 a0 e3                                      mov r1, #0x18
003a7958  68 85 0d eb                                      bl #0x708f00
003a795c  00 40 55 e2                                      subs r4, r5, #0
003a7960  f6 ff ff 1a                                      bne #0x3a7940
003a7964  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x003aa77c, declared_size=312, range_size=312, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, Character*>, std::priv::_Select1st<std::pair<int const, Character*> >, std::priv::_MapTraitsT<std::pair<int const, Character*> >, std::allocator<std::pair<int const, Character*> > >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKiP9CharacterENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE9_M_insertEPNS_18_Rb_tree_node_baseERKS7_SF_SF_.clone.2
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, Character*>, std::priv::_Select1st<std::pair<int const, Character*> >, std::priv::_MapTraitsT<std::pair<int const, Character*> >, std::allocator<std::pair<int const, Character*> > >::_M_insert(std::priv::_Rb_tree_node_base*, std::pair<int const, Character*> const&, std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*) [clone .clone.2]
; decoder-mode: arm
003aa77c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
003aa780  24 41 9f e5                                      ldr r4, [pc, #0x124]
003aa784  24 51 9f e5                                      ldr r5, [pc, #0x124]
003aa788  01 70 a0 e1                                      mov r7, r1
003aa78c  04 40 8f e0                                      add r4, pc, r4
003aa790  05 10 94 e7                                      ldr r1, [r4, r5]
003aa794  00 60 a0 e1                                      mov r6, r0
003aa798  02 a0 a0 e1                                      mov sl, r2
003aa79c  01 00 57 e1                                      cmp r7, r1
003aa7a0  2e 00 00 0a                                      beq #0x3aa860
003aa7a4  20 20 9d e5                                      ldr r2, [sp, #0x20]
003aa7a8  00 00 52 e3                                      cmp r2, #0
003aa7ac  19 00 00 0a                                      beq #0x3aa818
003aa7b0  05 90 94 e7                                      ldr sb, [r4, r5]
003aa7b4  09 00 a0 e1                                      mov r0, sb
003aa7b8  e7 ff ff eb                                      bl #0x3aa75c
003aa7bc  00 20 9a e5                                      ldr r2, [sl]
003aa7c0  00 30 a0 e3                                      mov r3, #0
003aa7c4  00 80 a0 e1                                      mov r8, r0
003aa7c8  10 20 80 e5                                      str r2, [r0, #0x10]
003aa7cc  04 20 9a e5                                      ldr r2, [sl, #4]
003aa7d0  0c 30 80 e5                                      str r3, [r0, #0xc]
003aa7d4  08 30 80 e5                                      str r3, [r0, #8]
003aa7d8  14 20 80 e5                                      str r2, [r0, #0x14]
003aa7dc  0c 00 87 e5                                      str r0, [r7, #0xc]
003aa7e0  0c 30 99 e5                                      ldr r3, [sb, #0xc]
003aa7e4  03 00 57 e1                                      cmp r7, r3
003aa7e8  0c 00 89 05                                      streq r0, [sb, #0xc]
003aa7ec  05 40 94 e7                                      ldr r4, [r4, r5]
003aa7f0  08 00 a0 e1                                      mov r0, r8
003aa7f4  04 70 88 e5                                      str r7, [r8, #4]
003aa7f8  04 10 84 e2                                      add r1, r4, #4
003aa7fc  d7 a3 fd eb                                      bl #0x313760
003aa800  10 30 94 e5                                      ldr r3, [r4, #0x10]
003aa804  06 00 a0 e1                                      mov r0, r6
003aa808  01 30 83 e2                                      add r3, r3, #1
003aa80c  10 30 84 e5                                      str r3, [r4, #0x10]
003aa810  00 80 86 e5                                      str r8, [r6]
003aa814  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
003aa818  00 00 53 e3                                      cmp r3, #0
003aa81c  1d 00 00 0a                                      beq #0x3aa898
003aa820  05 90 94 e7                                      ldr sb, [r4, r5]
003aa824  09 00 a0 e1                                      mov r0, sb
003aa828  cb ff ff eb                                      bl #0x3aa75c
003aa82c  00 20 9a e5                                      ldr r2, [sl]
003aa830  00 30 a0 e3                                      mov r3, #0
003aa834  00 80 a0 e1                                      mov r8, r0
003aa838  10 20 80 e5                                      str r2, [r0, #0x10]
003aa83c  04 20 9a e5                                      ldr r2, [sl, #4]
003aa840  0c 30 80 e5                                      str r3, [r0, #0xc]
003aa844  08 30 80 e5                                      str r3, [r0, #8]
003aa848  14 20 80 e5                                      str r2, [r0, #0x14]
003aa84c  08 00 87 e5                                      str r0, [r7, #8]
003aa850  08 30 99 e5                                      ldr r3, [sb, #8]
003aa854  03 00 57 e1                                      cmp r7, r3
003aa858  08 00 89 05                                      streq r0, [sb, #8]
003aa85c  e2 ff ff ea                                      b #0x3aa7ec
003aa860  07 00 a0 e1                                      mov r0, r7
003aa864  bc ff ff eb                                      bl #0x3aa75c
003aa868  00 20 9a e5                                      ldr r2, [sl]
003aa86c  00 30 a0 e3                                      mov r3, #0
003aa870  00 80 a0 e1                                      mov r8, r0
003aa874  10 20 80 e5                                      str r2, [r0, #0x10]
003aa878  04 20 9a e5                                      ldr r2, [sl, #4]
003aa87c  0c 30 80 e5                                      str r3, [r0, #0xc]
003aa880  08 30 80 e5                                      str r3, [r0, #8]
003aa884  14 20 80 e5                                      str r2, [r0, #0x14]
003aa888  08 00 87 e5                                      str r0, [r7, #8]
003aa88c  04 00 87 e5                                      str r0, [r7, #4]
003aa890  0c 00 87 e5                                      str r0, [r7, #0xc]
003aa894  d4 ff ff ea                                      b #0x3aa7ec
003aa898  00 20 9a e5                                      ldr r2, [sl]
003aa89c  10 30 97 e5                                      ldr r3, [r7, #0x10]
003aa8a0  03 00 52 e1                                      cmp r2, r3
003aa8a4  dd ff ff ba                                      blt #0x3aa820
003aa8a8  c0 ff ff ea                                      b #0x3aa7b0
; mapping-symbol data/literal pool
003aa8ac  04 a3 5e 00 34 11 00 00                          .byte 0x04, 0xa3, 0x5e, 0x00, 0x34, 0x11, 0x00, 0x00

; FUNCTION 0x003aa8b4, declared_size=384, range_size=384, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, Character*>, std::priv::_Select1st<std::pair<int const, Character*> >, std::priv::_MapTraitsT<std::pair<int const, Character*> >, std::allocator<std::pair<int const, Character*> > >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKiP9CharacterENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE13insert_uniqueERKS7_.clone.7
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, Character*>, std::priv::_Select1st<std::pair<int const, Character*> >, std::priv::_MapTraitsT<std::pair<int const, Character*> >, std::allocator<std::pair<int const, Character*> > >::insert_unique(std::pair<int const, Character*> const&) [clone .clone.7]
; decoder-mode: arm
003aa8b4  70 31 9f e5                                      ldr r3, [pc, #0x170]
003aa8b8  70 c1 9f e5                                      ldr ip, [pc, #0x170]
003aa8bc  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
003aa8c0  03 30 8f e0                                      add r3, pc, r3
003aa8c4  00 40 a0 e1                                      mov r4, r0
003aa8c8  0c 00 93 e7                                      ldr r0, [r3, ip]
003aa8cc  01 20 a0 e1                                      mov r2, r1
003aa8d0  14 d0 4d e2                                      sub sp, sp, #0x14
003aa8d4  04 10 90 e5                                      ldr r1, [r0, #4]
003aa8d8  00 00 51 e3                                      cmp r1, #0
003aa8dc  00 10 a0 01                                      moveq r1, r0
003aa8e0  15 00 00 0a                                      beq #0x3aa93c
003aa8e4  00 70 92 e5                                      ldr r7, [r2]
003aa8e8  00 00 00 ea                                      b #0x3aa8f0
003aa8ec  00 10 a0 e1                                      mov r1, r0
003aa8f0  10 50 91 e5                                      ldr r5, [r1, #0x10]
003aa8f4  01 60 a0 e3                                      mov r6, #1
003aa8f8  07 00 55 e1                                      cmp r5, r7
003aa8fc  08 00 91 c5                                      ldrgt r0, [r1, #8]
003aa900  0c 00 91 d5                                      ldrle r0, [r1, #0xc]
003aa904  00 60 a0 d3                                      movle r6, #0
003aa908  00 00 50 e3                                      cmp r0, #0
003aa90c  f6 ff ff 1a                                      bne #0x3aa8ec
003aa910  00 00 56 e3                                      cmp r6, #0
003aa914  01 30 a0 01                                      moveq r3, r1
003aa918  07 00 00 1a                                      bne #0x3aa93c
003aa91c  05 00 57 e1                                      cmp r7, r5
003aa920  00 30 84 d5                                      strle r3, [r4]
003aa924  00 30 a0 d3                                      movle r3, #0
003aa928  04 30 c4 d5                                      strble r3, [r4, #4]
003aa92c  1c 00 00 ca                                      bgt #0x3aa9a4
003aa930  04 00 a0 e1                                      mov r0, r4
003aa934  14 d0 8d e2                                      add sp, sp, #0x14
003aa938  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
003aa93c  0c 30 93 e7                                      ldr r3, [r3, ip]
003aa940  08 30 93 e5                                      ldr r3, [r3, #8]
003aa944  01 00 53 e1                                      cmp r3, r1
003aa948  2d 00 00 0a                                      beq #0x3aaa04
003aa94c  00 30 d1 e5                                      ldrb r3, [r1]
003aa950  00 00 53 e3                                      cmp r3, #0
003aa954  03 00 00 1a                                      bne #0x3aa968
003aa958  04 30 91 e5                                      ldr r3, [r1, #4]
003aa95c  04 30 93 e5                                      ldr r3, [r3, #4]
003aa960  03 00 51 e1                                      cmp r1, r3
003aa964  22 00 00 0a                                      beq #0x3aa9f4
003aa968  08 30 91 e5                                      ldr r3, [r1, #8]
003aa96c  00 00 53 e3                                      cmp r3, #0
003aa970  15 00 00 0a                                      beq #0x3aa9cc
003aa974  00 00 00 ea                                      b #0x3aa97c
003aa978  00 30 a0 e1                                      mov r3, r0
003aa97c  0c 00 93 e5                                      ldr r0, [r3, #0xc]
003aa980  00 00 50 e3                                      cmp r0, #0
003aa984  fb ff ff 1a                                      bne #0x3aa978
003aa988  10 50 93 e5                                      ldr r5, [r3, #0x10]
003aa98c  00 70 92 e5                                      ldr r7, [r2]
003aa990  05 00 57 e1                                      cmp r7, r5
003aa994  00 30 84 d5                                      strle r3, [r4]
003aa998  00 30 a0 d3                                      movle r3, #0
003aa99c  04 30 c4 d5                                      strble r3, [r4, #4]
003aa9a0  e2 ff ff da                                      ble #0x3aa930
003aa9a4  00 c0 a0 e3                                      mov ip, #0
003aa9a8  0c 30 a0 e1                                      mov r3, ip
003aa9ac  0c 00 8d e2                                      add r0, sp, #0xc
003aa9b0  00 c0 8d e5                                      str ip, [sp]
003aa9b4  70 ff ff eb                                      bl #0x3aa77c
003aa9b8  0c 30 9d e5                                      ldr r3, [sp, #0xc]
003aa9bc  01 20 a0 e3                                      mov r2, #1
003aa9c0  04 20 c4 e5                                      strb r2, [r4, #4]
003aa9c4  00 30 84 e5                                      str r3, [r4]
003aa9c8  d8 ff ff ea                                      b #0x3aa930
003aa9cc  04 30 91 e5                                      ldr r3, [r1, #4]
003aa9d0  08 00 93 e5                                      ldr r0, [r3, #8]
003aa9d4  00 00 51 e1                                      cmp r1, r0
003aa9d8  ea ff ff 1a                                      bne #0x3aa988
003aa9dc  03 00 a0 e1                                      mov r0, r3
003aa9e0  04 30 93 e5                                      ldr r3, [r3, #4]
003aa9e4  08 c0 93 e5                                      ldr ip, [r3, #8]
003aa9e8  00 00 5c e1                                      cmp ip, r0
003aa9ec  fa ff ff 0a                                      beq #0x3aa9dc
003aa9f0  e4 ff ff ea                                      b #0x3aa988
003aa9f4  0c 30 91 e5                                      ldr r3, [r1, #0xc]
003aa9f8  00 70 92 e5                                      ldr r7, [r2]
003aa9fc  10 50 93 e5                                      ldr r5, [r3, #0x10]
003aaa00  c5 ff ff ea                                      b #0x3aa91c
003aaa04  01 30 a0 e1                                      mov r3, r1
003aaa08  00 c0 a0 e3                                      mov ip, #0
003aaa0c  08 00 8d e2                                      add r0, sp, #8
003aaa10  00 c0 8d e5                                      str ip, [sp]
003aaa14  58 ff ff eb                                      bl #0x3aa77c
003aaa18  08 30 9d e5                                      ldr r3, [sp, #8]
003aaa1c  01 20 a0 e3                                      mov r2, #1
003aaa20  04 20 c4 e5                                      strb r2, [r4, #4]
003aaa24  00 30 84 e5                                      str r3, [r4]
003aaa28  c0 ff ff ea                                      b #0x3aa930
; mapping-symbol data/literal pool
003aaa2c  d0 a1 5e 00 34 11 00 00                          .byte 0xd0, 0xa1, 0x5e, 0x00, 0x34, 0x11, 0x00, 0x00

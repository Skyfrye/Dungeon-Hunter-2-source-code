; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003cd34c, declared_size=56, range_size=56, mode=arm
; class-group: std::priv::_Rb_tree<Character*, std::less<Character*>, std::pair<Character* const, float>, std::priv::_Select1st<std::pair<Character* const, float> >, std::priv::_MapTraitsT<std::pair<Character* const, float> >, std::allocator<std::pair<Character* const, float> > >
; alias: _ZNSt4priv8_Rb_treeIP9CharacterSt4lessIS2_ESt4pairIKS2_fENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE8_M_eraseEPNS_18_Rb_tree_node_baseE
; demangled: std::priv::_Rb_tree<Character*, std::less<Character*>, std::pair<Character* const, float>, std::priv::_Select1st<std::pair<Character* const, float> >, std::priv::_MapTraitsT<std::pair<Character* const, float> >, std::allocator<std::pair<Character* const, float> > >::_M_erase(std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
003cd34c  70 40 2d e9                                      push {r4, r5, r6, lr}
003cd350  00 40 51 e2                                      subs r4, r1, #0
003cd354  00 60 a0 e1                                      mov r6, r0
003cd358  08 00 00 0a                                      beq #0x3cd380
003cd35c  0c 10 94 e5                                      ldr r1, [r4, #0xc]
003cd360  06 00 a0 e1                                      mov r0, r6
003cd364  f8 ff ff eb                                      bl #0x3cd34c
003cd368  08 50 94 e5                                      ldr r5, [r4, #8]
003cd36c  04 00 a0 e1                                      mov r0, r4
003cd370  18 10 a0 e3                                      mov r1, #0x18
003cd374  e1 ee 0c eb                                      bl #0x708f00
003cd378  00 40 55 e2                                      subs r4, r5, #0
003cd37c  f6 ff ff 1a                                      bne #0x3cd35c
003cd380  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x003d5d9c, declared_size=60, range_size=60, mode=arm
; class-group: std::priv::_Rb_tree<Character*, std::less<Character*>, std::pair<Character* const, float>, std::priv::_Select1st<std::pair<Character* const, float> >, std::priv::_MapTraitsT<std::pair<Character* const, float> >, std::allocator<std::pair<Character* const, float> > >
; alias: _ZNSt4priv8_Rb_treeIP9CharacterSt4lessIS2_ESt4pairIKS2_fENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE5eraseENS_17_Rb_tree_iteratorIS7_SB_EE
; demangled: std::priv::_Rb_tree<Character*, std::less<Character*>, std::pair<Character* const, float>, std::priv::_Select1st<std::pair<Character* const, float> >, std::priv::_MapTraitsT<std::pair<Character* const, float> >, std::allocator<std::pair<Character* const, float> > >::erase(std::priv::_Rb_tree_iterator<std::pair<Character* const, float>, std::priv::_MapTraitsT<std::pair<Character* const, float> > >)
; decoder-mode: arm
003d5d9c  10 40 2d e9                                      push {r4, lr}
003d5da0  00 40 a0 e1                                      mov r4, r0
003d5da4  08 20 84 e2                                      add r2, r4, #8
003d5da8  00 00 91 e5                                      ldr r0, [r1]
003d5dac  0c 30 84 e2                                      add r3, r4, #0xc
003d5db0  04 10 84 e2                                      add r1, r4, #4
003d5db4  92 80 fd eb                                      bl #0x336004
003d5db8  00 00 50 e3                                      cmp r0, #0
003d5dbc  01 00 00 0a                                      beq #0x3d5dc8
003d5dc0  18 10 a0 e3                                      mov r1, #0x18
003d5dc4  4d cc 0c eb                                      bl #0x708f00
003d5dc8  10 30 94 e5                                      ldr r3, [r4, #0x10]
003d5dcc  01 30 43 e2                                      sub r3, r3, #1
003d5dd0  10 30 84 e5                                      str r3, [r4, #0x10]
003d5dd4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003d73cc, declared_size=292, range_size=292, mode=arm
; class-group: std::priv::_Rb_tree<Character*, std::less<Character*>, std::pair<Character* const, float>, std::priv::_Select1st<std::pair<Character* const, float> >, std::priv::_MapTraitsT<std::pair<Character* const, float> >, std::allocator<std::pair<Character* const, float> > >
; alias: _ZNSt4priv8_Rb_treeIP9CharacterSt4lessIS2_ESt4pairIKS2_fENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE9_M_insertEPNS_18_Rb_tree_node_baseERKS7_SF_SF_
; demangled: std::priv::_Rb_tree<Character*, std::less<Character*>, std::pair<Character* const, float>, std::priv::_Select1st<std::pair<Character* const, float> >, std::priv::_MapTraitsT<std::pair<Character* const, float> >, std::allocator<std::pair<Character* const, float> > >::_M_insert(std::priv::_Rb_tree_node_base*, std::pair<Character* const, float> const&, std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
003d73cc  02 00 51 e1                                      cmp r1, r2
003d73d0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003d73d4  01 40 a0 e1                                      mov r4, r1
003d73d8  02 70 a0 e1                                      mov r7, r2
003d73dc  00 50 a0 e1                                      mov r5, r0
003d73e0  03 80 a0 e1                                      mov r8, r3
003d73e4  2e 00 00 0a                                      beq #0x3d74a4
003d73e8  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
003d73ec  00 00 53 e3                                      cmp r3, #0
003d73f0  17 00 00 0a                                      beq #0x3d7454
003d73f4  04 00 a0 e1                                      mov r0, r4
003d73f8  eb ff ff eb                                      bl #0x3d73ac
003d73fc  00 20 98 e5                                      ldr r2, [r8]
003d7400  00 30 a0 e3                                      mov r3, #0
003d7404  00 60 a0 e1                                      mov r6, r0
003d7408  10 20 80 e5                                      str r2, [r0, #0x10]
003d740c  04 20 98 e5                                      ldr r2, [r8, #4]
003d7410  0c 30 80 e5                                      str r3, [r0, #0xc]
003d7414  08 30 80 e5                                      str r3, [r0, #8]
003d7418  14 20 80 e5                                      str r2, [r0, #0x14]
003d741c  0c 00 87 e5                                      str r0, [r7, #0xc]
003d7420  0c 30 94 e5                                      ldr r3, [r4, #0xc]
003d7424  03 00 57 e1                                      cmp r7, r3
003d7428  1b 00 00 0a                                      beq #0x3d749c
003d742c  06 00 a0 e1                                      mov r0, r6
003d7430  04 70 86 e5                                      str r7, [r6, #4]
003d7434  04 10 84 e2                                      add r1, r4, #4
003d7438  c8 f0 fc eb                                      bl #0x313760
003d743c  10 30 94 e5                                      ldr r3, [r4, #0x10]
003d7440  05 00 a0 e1                                      mov r0, r5
003d7444  01 30 83 e2                                      add r3, r3, #1
003d7448  10 30 84 e5                                      str r3, [r4, #0x10]
003d744c  00 60 85 e5                                      str r6, [r5]
003d7450  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003d7454  18 30 9d e5                                      ldr r3, [sp, #0x18]
003d7458  00 00 53 e3                                      cmp r3, #0
003d745c  1e 00 00 0a                                      beq #0x3d74dc
003d7460  04 00 a0 e1                                      mov r0, r4
003d7464  d0 ff ff eb                                      bl #0x3d73ac
003d7468  00 20 98 e5                                      ldr r2, [r8]
003d746c  00 30 a0 e3                                      mov r3, #0
003d7470  00 60 a0 e1                                      mov r6, r0
003d7474  10 20 80 e5                                      str r2, [r0, #0x10]
003d7478  04 20 98 e5                                      ldr r2, [r8, #4]
003d747c  0c 30 80 e5                                      str r3, [r0, #0xc]
003d7480  08 30 80 e5                                      str r3, [r0, #8]
003d7484  14 20 80 e5                                      str r2, [r0, #0x14]
003d7488  08 00 87 e5                                      str r0, [r7, #8]
003d748c  08 30 94 e5                                      ldr r3, [r4, #8]
003d7490  03 00 57 e1                                      cmp r7, r3
003d7494  08 00 84 05                                      streq r0, [r4, #8]
003d7498  e3 ff ff ea                                      b #0x3d742c
003d749c  0c 60 84 e5                                      str r6, [r4, #0xc]
003d74a0  e1 ff ff ea                                      b #0x3d742c
003d74a4  01 00 a0 e1                                      mov r0, r1
003d74a8  bf ff ff eb                                      bl #0x3d73ac
003d74ac  00 20 98 e5                                      ldr r2, [r8]
003d74b0  00 30 a0 e3                                      mov r3, #0
003d74b4  00 60 a0 e1                                      mov r6, r0
003d74b8  10 20 80 e5                                      str r2, [r0, #0x10]
003d74bc  04 20 98 e5                                      ldr r2, [r8, #4]
003d74c0  0c 30 80 e5                                      str r3, [r0, #0xc]
003d74c4  08 30 80 e5                                      str r3, [r0, #8]
003d74c8  14 20 80 e5                                      str r2, [r0, #0x14]
003d74cc  08 00 84 e5                                      str r0, [r4, #8]
003d74d0  04 00 84 e5                                      str r0, [r4, #4]
003d74d4  0c 00 84 e5                                      str r0, [r4, #0xc]
003d74d8  d3 ff ff ea                                      b #0x3d742c
003d74dc  00 20 98 e5                                      ldr r2, [r8]
003d74e0  10 30 97 e5                                      ldr r3, [r7, #0x10]
003d74e4  03 00 52 e1                                      cmp r2, r3
003d74e8  c1 ff ff 2a                                      bhs #0x3d73f4
003d74ec  db ff ff ea                                      b #0x3d7460

; FUNCTION 0x003d74f0, declared_size=392, range_size=392, mode=arm
; class-group: std::priv::_Rb_tree<Character*, std::less<Character*>, std::pair<Character* const, float>, std::priv::_Select1st<std::pair<Character* const, float> >, std::priv::_MapTraitsT<std::pair<Character* const, float> >, std::allocator<std::pair<Character* const, float> > >
; alias: _ZNSt4priv8_Rb_treeIP9CharacterSt4lessIS2_ESt4pairIKS2_fENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE13insert_uniqueERKS7_
; demangled: std::priv::_Rb_tree<Character*, std::less<Character*>, std::pair<Character* const, float>, std::priv::_Select1st<std::pair<Character* const, float> >, std::priv::_MapTraitsT<std::pair<Character* const, float> >, std::allocator<std::pair<Character* const, float> > >::insert_unique(std::pair<Character* const, float> const&)
; decoder-mode: arm
003d74f0  70 40 2d e9                                      push {r4, r5, r6, lr}
003d74f4  04 c0 91 e5                                      ldr ip, [r1, #4]
003d74f8  10 d0 4d e2                                      sub sp, sp, #0x10
003d74fc  00 40 a0 e1                                      mov r4, r0
003d7500  00 00 5c e3                                      cmp ip, #0
003d7504  02 30 a0 e1                                      mov r3, r2
003d7508  01 c0 a0 01                                      moveq ip, r1
003d750c  15 00 00 0a                                      beq #0x3d7568
003d7510  00 60 92 e5                                      ldr r6, [r2]
003d7514  00 00 00 ea                                      b #0x3d751c
003d7518  02 c0 a0 e1                                      mov ip, r2
003d751c  10 00 9c e5                                      ldr r0, [ip, #0x10]
003d7520  01 50 a0 e3                                      mov r5, #1
003d7524  06 00 50 e1                                      cmp r0, r6
003d7528  08 20 9c 85                                      ldrhi r2, [ip, #8]
003d752c  0c 20 9c 95                                      ldrls r2, [ip, #0xc]
003d7530  00 50 a0 93                                      movls r5, #0
003d7534  00 00 52 e3                                      cmp r2, #0
003d7538  f6 ff ff 1a                                      bne #0x3d7518
003d753c  00 00 55 e3                                      cmp r5, #0
003d7540  0c 50 a0 01                                      moveq r5, ip
003d7544  07 00 00 1a                                      bne #0x3d7568
003d7548  00 00 56 e1                                      cmp r6, r0
003d754c  00 30 a0 93                                      movls r3, #0
003d7550  00 50 84 95                                      strls r5, [r4]
003d7554  04 30 c4 95                                      strbls r3, [r4, #4]
003d7558  1c 00 00 8a                                      bhi #0x3d75d0
003d755c  04 00 a0 e1                                      mov r0, r4
003d7560  10 d0 8d e2                                      add sp, sp, #0x10
003d7564  70 80 bd e8                                      pop {r4, r5, r6, pc}
003d7568  08 20 91 e5                                      ldr r2, [r1, #8]
003d756c  02 00 5c e1                                      cmp ip, r2
003d7570  36 00 00 0a                                      beq #0x3d7650
003d7574  00 20 dc e5                                      ldrb r2, [ip]
003d7578  00 00 52 e3                                      cmp r2, #0
003d757c  03 00 00 1a                                      bne #0x3d7590
003d7580  04 20 9c e5                                      ldr r2, [ip, #4]
003d7584  04 20 92 e5                                      ldr r2, [r2, #4]
003d7588  02 00 5c e1                                      cmp ip, r2
003d758c  2a 00 00 0a                                      beq #0x3d763c
003d7590  08 00 9c e5                                      ldr r0, [ip, #8]
003d7594  00 00 50 e3                                      cmp r0, #0
003d7598  01 00 00 1a                                      bne #0x3d75a4
003d759c  16 00 00 ea                                      b #0x3d75fc
003d75a0  02 00 a0 e1                                      mov r0, r2
003d75a4  0c 20 90 e5                                      ldr r2, [r0, #0xc]
003d75a8  00 00 52 e3                                      cmp r2, #0
003d75ac  fb ff ff 1a                                      bne #0x3d75a0
003d75b0  00 60 93 e5                                      ldr r6, [r3]
003d75b4  00 50 a0 e1                                      mov r5, r0
003d75b8  10 00 90 e5                                      ldr r0, [r0, #0x10]
003d75bc  00 00 56 e1                                      cmp r6, r0
003d75c0  00 30 a0 93                                      movls r3, #0
003d75c4  00 50 84 95                                      strls r5, [r4]
003d75c8  04 30 c4 95                                      strbls r3, [r4, #4]
003d75cc  e2 ff ff 9a                                      bls #0x3d755c
003d75d0  0c 20 a0 e1                                      mov r2, ip
003d75d4  08 00 8d e2                                      add r0, sp, #8
003d75d8  00 c0 a0 e3                                      mov ip, #0
003d75dc  04 c0 8d e5                                      str ip, [sp, #4]
003d75e0  00 c0 8d e5                                      str ip, [sp]
003d75e4  78 ff ff eb                                      bl #0x3d73cc
003d75e8  08 30 9d e5                                      ldr r3, [sp, #8]
003d75ec  01 20 a0 e3                                      mov r2, #1
003d75f0  04 20 c4 e5                                      strb r2, [r4, #4]
003d75f4  00 30 84 e5                                      str r3, [r4]
003d75f8  d7 ff ff ea                                      b #0x3d755c
003d75fc  04 20 9c e5                                      ldr r2, [ip, #4]
003d7600  08 00 92 e5                                      ldr r0, [r2, #8]
003d7604  00 00 5c e1                                      cmp ip, r0
003d7608  02 50 a0 11                                      movne r5, r2
003d760c  00 60 93 15                                      ldrne r6, [r3]
003d7610  10 00 92 15                                      ldrne r0, [r2, #0x10]
003d7614  01 00 00 0a                                      beq #0x3d7620
003d7618  ca ff ff ea                                      b #0x3d7548
003d761c  05 20 a0 e1                                      mov r2, r5
003d7620  04 50 92 e5                                      ldr r5, [r2, #4]
003d7624  08 00 95 e5                                      ldr r0, [r5, #8]
003d7628  02 00 50 e1                                      cmp r0, r2
003d762c  fa ff ff 0a                                      beq #0x3d761c
003d7630  00 60 93 e5                                      ldr r6, [r3]
003d7634  10 00 95 e5                                      ldr r0, [r5, #0x10]
003d7638  c2 ff ff ea                                      b #0x3d7548
003d763c  0c 20 9c e5                                      ldr r2, [ip, #0xc]
003d7640  00 60 93 e5                                      ldr r6, [r3]
003d7644  02 50 a0 e1                                      mov r5, r2
003d7648  10 00 92 e5                                      ldr r0, [r2, #0x10]
003d764c  bd ff ff ea                                      b #0x3d7548
003d7650  0c 20 a0 e1                                      mov r2, ip
003d7654  00 e0 a0 e3                                      mov lr, #0
003d7658  0c 00 8d e2                                      add r0, sp, #0xc
003d765c  00 50 8d e8                                      stm sp, {ip, lr}
003d7660  59 ff ff eb                                      bl #0x3d73cc
003d7664  0c 30 9d e5                                      ldr r3, [sp, #0xc]
003d7668  01 20 a0 e3                                      mov r2, #1
003d766c  04 20 c4 e5                                      strb r2, [r4, #4]
003d7670  00 30 84 e5                                      str r3, [r4]
003d7674  b8 ff ff ea                                      b #0x3d755c

; FUNCTION 0x003d7678, declared_size=884, range_size=884, mode=arm
; class-group: std::priv::_Rb_tree<Character*, std::less<Character*>, std::pair<Character* const, float>, std::priv::_Select1st<std::pair<Character* const, float> >, std::priv::_MapTraitsT<std::pair<Character* const, float> >, std::allocator<std::pair<Character* const, float> > >
; alias: _ZNSt4priv8_Rb_treeIP9CharacterSt4lessIS2_ESt4pairIKS2_fENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE13insert_uniqueENS_17_Rb_tree_iteratorIS7_SB_EERKS7_
; demangled: std::priv::_Rb_tree<Character*, std::less<Character*>, std::pair<Character* const, float>, std::priv::_Select1st<std::pair<Character* const, float> >, std::priv::_MapTraitsT<std::pair<Character* const, float> >, std::allocator<std::pair<Character* const, float> > >::insert_unique(std::priv::_Rb_tree_iterator<std::pair<Character* const, float>, std::priv::_MapTraitsT<std::pair<Character* const, float> > >, std::pair<Character* const, float> const&)
; decoder-mode: arm
003d7678  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
003d767c  00 40 92 e5                                      ldr r4, [r2]
003d7680  08 20 91 e5                                      ldr r2, [r1, #8]
003d7684  2c d0 4d e2                                      sub sp, sp, #0x2c
003d7688  01 50 a0 e1                                      mov r5, r1
003d768c  02 00 54 e1                                      cmp r4, r2
003d7690  00 70 a0 e1                                      mov r7, r0
003d7694  03 60 a0 e1                                      mov r6, r3
003d7698  5a 00 00 0a                                      beq #0x3d7808
003d769c  01 00 54 e1                                      cmp r4, r1
003d76a0  78 00 00 0a                                      beq #0x3d7888
003d76a4  00 30 d4 e5                                      ldrb r3, [r4]
003d76a8  00 00 53 e3                                      cmp r3, #0
003d76ac  3a 00 00 0a                                      beq #0x3d779c
003d76b0  08 c0 94 e5                                      ldr ip, [r4, #8]
003d76b4  00 00 5c e3                                      cmp ip, #0
003d76b8  01 00 00 1a                                      bne #0x3d76c4
003d76bc  3e 00 00 ea                                      b #0x3d77bc
003d76c0  03 c0 a0 e1                                      mov ip, r3
003d76c4  0c 30 9c e5                                      ldr r3, [ip, #0xc]
003d76c8  00 00 53 e3                                      cmp r3, #0
003d76cc  fb ff ff 1a                                      bne #0x3d76c0
003d76d0  00 20 96 e5                                      ldr r2, [r6]
003d76d4  10 00 94 e5                                      ldr r0, [r4, #0x10]
003d76d8  00 00 52 e1                                      cmp r2, r0
003d76dc  00 10 a0 23                                      movhs r1, #0
003d76e0  01 10 a0 33                                      movlo r1, #1
003d76e4  00 00 51 e3                                      cmp r1, #0
003d76e8  1b 00 00 1a                                      bne #0x3d775c
003d76ec  0c 80 94 e5                                      ldr r8, [r4, #0xc]
003d76f0  00 00 58 e3                                      cmp r8, #0
003d76f4  7d 00 00 0a                                      beq #0x3d78f0
003d76f8  08 c0 a0 e1                                      mov ip, r8
003d76fc  00 00 00 ea                                      b #0x3d7704
003d7700  03 c0 a0 e1                                      mov ip, r3
003d7704  08 30 9c e5                                      ldr r3, [ip, #8]
003d7708  00 00 53 e3                                      cmp r3, #0
003d770c  fb ff ff 1a                                      bne #0x3d7700
003d7710  00 00 51 e3                                      cmp r1, #0
003d7714  34 00 00 1a                                      bne #0x3d77ec
003d7718  00 00 52 e1                                      cmp r2, r0
003d771c  63 00 00 9a                                      bls #0x3d78b0
003d7720  0c 00 55 e1                                      cmp r5, ip
003d7724  02 00 00 0a                                      beq #0x3d7734
003d7728  10 30 9c e5                                      ldr r3, [ip, #0x10]
003d772c  03 00 52 e1                                      cmp r2, r3
003d7730  2d 00 00 2a                                      bhs #0x3d77ec
003d7734  00 00 58 e3                                      cmp r8, #0
003d7738  4a 00 00 1a                                      bne #0x3d7868
003d773c  05 10 a0 e1                                      mov r1, r5
003d7740  04 20 a0 e1                                      mov r2, r4
003d7744  06 30 a0 e1                                      mov r3, r6
003d7748  07 00 a0 e1                                      mov r0, r7
003d774c  00 80 8d e5                                      str r8, [sp]
003d7750  04 40 8d e5                                      str r4, [sp, #4]
003d7754  1c ff ff eb                                      bl #0x3d73cc
003d7758  0c 00 00 ea                                      b #0x3d7790
003d775c  10 30 9c e5                                      ldr r3, [ip, #0x10]
003d7760  03 00 52 e1                                      cmp r2, r3
003d7764  e0 ff ff 9a                                      bls #0x3d76ec
003d7768  0c e0 9c e5                                      ldr lr, [ip, #0xc]
003d776c  00 00 5e e3                                      cmp lr, #0
003d7770  56 00 00 0a                                      beq #0x3d78d0
003d7774  00 c0 a0 e3                                      mov ip, #0
003d7778  05 10 a0 e1                                      mov r1, r5
003d777c  04 20 a0 e1                                      mov r2, r4
003d7780  06 30 a0 e1                                      mov r3, r6
003d7784  07 00 a0 e1                                      mov r0, r7
003d7788  10 10 8d e8                                      stm sp, {r4, ip}
003d778c  0e ff ff eb                                      bl #0x3d73cc
003d7790  07 00 a0 e1                                      mov r0, r7
003d7794  2c d0 8d e2                                      add sp, sp, #0x2c
003d7798  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
003d779c  04 30 94 e5                                      ldr r3, [r4, #4]
003d77a0  04 30 93 e5                                      ldr r3, [r3, #4]
003d77a4  03 00 54 e1                                      cmp r4, r3
003d77a8  0c c0 94 05                                      ldreq ip, [r4, #0xc]
003d77ac  c7 ff ff 0a                                      beq #0x3d76d0
003d77b0  08 c0 94 e5                                      ldr ip, [r4, #8]
003d77b4  00 00 5c e3                                      cmp ip, #0
003d77b8  c1 ff ff 1a                                      bne #0x3d76c4
003d77bc  04 c0 94 e5                                      ldr ip, [r4, #4]
003d77c0  08 30 9c e5                                      ldr r3, [ip, #8]
003d77c4  03 00 54 e1                                      cmp r4, r3
003d77c8  01 00 00 0a                                      beq #0x3d77d4
003d77cc  bf ff ff ea                                      b #0x3d76d0
003d77d0  03 c0 a0 e1                                      mov ip, r3
003d77d4  04 30 9c e5                                      ldr r3, [ip, #4]
003d77d8  08 20 93 e5                                      ldr r2, [r3, #8]
003d77dc  0c 00 52 e1                                      cmp r2, ip
003d77e0  fa ff ff 0a                                      beq #0x3d77d0
003d77e4  03 c0 a0 e1                                      mov ip, r3
003d77e8  b8 ff ff ea                                      b #0x3d76d0
003d77ec  05 10 a0 e1                                      mov r1, r5
003d77f0  06 20 a0 e1                                      mov r2, r6
003d77f4  08 00 8d e2                                      add r0, sp, #8
003d77f8  3c ff ff eb                                      bl #0x3d74f0
003d77fc  08 30 9d e5                                      ldr r3, [sp, #8]
003d7800  00 30 87 e5                                      str r3, [r7]
003d7804  e1 ff ff ea                                      b #0x3d7790
003d7808  10 20 91 e5                                      ldr r2, [r1, #0x10]
003d780c  00 00 52 e3                                      cmp r2, #0
003d7810  52 00 00 0a                                      beq #0x3d7960
003d7814  00 20 93 e5                                      ldr r2, [r3]
003d7818  10 c0 94 e5                                      ldr ip, [r4, #0x10]
003d781c  0c 00 52 e1                                      cmp r2, ip
003d7820  54 00 00 3a                                      blo #0x3d7978
003d7824  21 00 00 9a                                      bls #0x3d78b0
003d7828  0c e0 94 e5                                      ldr lr, [r4, #0xc]
003d782c  00 00 5e e3                                      cmp lr, #0
003d7830  3c 00 00 0a                                      beq #0x3d7928
003d7834  0e c0 a0 e1                                      mov ip, lr
003d7838  00 00 00 ea                                      b #0x3d7840
003d783c  03 c0 a0 e1                                      mov ip, r3
003d7840  08 30 9c e5                                      ldr r3, [ip, #8]
003d7844  00 00 53 e3                                      cmp r3, #0
003d7848  fb ff ff 1a                                      bne #0x3d783c
003d784c  0c 00 55 e1                                      cmp r5, ip
003d7850  5c 00 00 0a                                      beq #0x3d79c8
003d7854  10 30 9c e5                                      ldr r3, [ip, #0x10]
003d7858  03 00 52 e1                                      cmp r2, r3
003d785c  4a 00 00 2a                                      bhs #0x3d798c
003d7860  00 00 5e e3                                      cmp lr, #0
003d7864  4f 00 00 0a                                      beq #0x3d79a8
003d7868  00 e0 a0 e3                                      mov lr, #0
003d786c  05 10 a0 e1                                      mov r1, r5
003d7870  0c 20 a0 e1                                      mov r2, ip
003d7874  06 30 a0 e1                                      mov r3, r6
003d7878  07 00 a0 e1                                      mov r0, r7
003d787c  00 50 8d e8                                      stm sp, {ip, lr}
003d7880  d1 fe ff eb                                      bl #0x3d73cc
003d7884  c1 ff ff ea                                      b #0x3d7790
003d7888  0c 20 94 e5                                      ldr r2, [r4, #0xc]
003d788c  00 c0 93 e5                                      ldr ip, [r3]
003d7890  10 e0 92 e5                                      ldr lr, [r2, #0x10]
003d7894  0c 00 5e e1                                      cmp lr, ip
003d7898  06 00 00 2a                                      bhs #0x3d78b8
003d789c  00 c0 a0 e3                                      mov ip, #0
003d78a0  00 c0 8d e5                                      str ip, [sp]
003d78a4  04 40 8d e5                                      str r4, [sp, #4]
003d78a8  c7 fe ff eb                                      bl #0x3d73cc
003d78ac  b7 ff ff ea                                      b #0x3d7790
003d78b0  00 40 87 e5                                      str r4, [r7]
003d78b4  b5 ff ff ea                                      b #0x3d7790
003d78b8  03 20 a0 e1                                      mov r2, r3
003d78bc  10 00 8d e2                                      add r0, sp, #0x10
003d78c0  0a ff ff eb                                      bl #0x3d74f0
003d78c4  10 30 9d e5                                      ldr r3, [sp, #0x10]
003d78c8  00 30 87 e5                                      str r3, [r7]
003d78cc  af ff ff ea                                      b #0x3d7790
003d78d0  05 10 a0 e1                                      mov r1, r5
003d78d4  0c 20 a0 e1                                      mov r2, ip
003d78d8  06 30 a0 e1                                      mov r3, r6
003d78dc  07 00 a0 e1                                      mov r0, r7
003d78e0  00 e0 8d e5                                      str lr, [sp]
003d78e4  04 c0 8d e5                                      str ip, [sp, #4]
003d78e8  b7 fe ff eb                                      bl #0x3d73cc
003d78ec  a7 ff ff ea                                      b #0x3d7790
003d78f0  04 30 94 e5                                      ldr r3, [r4, #4]
003d78f4  0c c0 93 e5                                      ldr ip, [r3, #0xc]
003d78f8  0c 00 54 e1                                      cmp r4, ip
003d78fc  04 c0 a0 11                                      movne ip, r4
003d7900  04 00 00 1a                                      bne #0x3d7918
003d7904  03 c0 a0 e1                                      mov ip, r3
003d7908  04 30 93 e5                                      ldr r3, [r3, #4]
003d790c  0c a0 93 e5                                      ldr sl, [r3, #0xc]
003d7910  0a 00 5c e1                                      cmp ip, sl
003d7914  fa ff ff 0a                                      beq #0x3d7904
003d7918  0c a0 9c e5                                      ldr sl, [ip, #0xc]
003d791c  0a 00 53 e1                                      cmp r3, sl
003d7920  03 c0 a0 11                                      movne ip, r3
003d7924  79 ff ff ea                                      b #0x3d7710
003d7928  04 30 94 e5                                      ldr r3, [r4, #4]
003d792c  0c 10 93 e5                                      ldr r1, [r3, #0xc]
003d7930  01 00 54 e1                                      cmp r4, r1
003d7934  04 c0 a0 11                                      movne ip, r4
003d7938  04 00 00 1a                                      bne #0x3d7950
003d793c  03 c0 a0 e1                                      mov ip, r3
003d7940  04 30 93 e5                                      ldr r3, [r3, #4]
003d7944  0c 10 93 e5                                      ldr r1, [r3, #0xc]
003d7948  0c 00 51 e1                                      cmp r1, ip
003d794c  fa ff ff 0a                                      beq #0x3d793c
003d7950  0c 10 9c e5                                      ldr r1, [ip, #0xc]
003d7954  01 00 53 e1                                      cmp r3, r1
003d7958  03 c0 a0 11                                      movne ip, r3
003d795c  ba ff ff ea                                      b #0x3d784c
003d7960  03 20 a0 e1                                      mov r2, r3
003d7964  20 00 8d e2                                      add r0, sp, #0x20
003d7968  e0 fe ff eb                                      bl #0x3d74f0
003d796c  20 30 9d e5                                      ldr r3, [sp, #0x20]
003d7970  00 30 87 e5                                      str r3, [r7]
003d7974  85 ff ff ea                                      b #0x3d7790
003d7978  00 c0 a0 e3                                      mov ip, #0
003d797c  04 20 a0 e1                                      mov r2, r4
003d7980  10 10 8d e8                                      stm sp, {r4, ip}
003d7984  90 fe ff eb                                      bl #0x3d73cc
003d7988  80 ff ff ea                                      b #0x3d7790
003d798c  05 10 a0 e1                                      mov r1, r5
003d7990  06 20 a0 e1                                      mov r2, r6
003d7994  18 00 8d e2                                      add r0, sp, #0x18
003d7998  d4 fe ff eb                                      bl #0x3d74f0
003d799c  18 30 9d e5                                      ldr r3, [sp, #0x18]
003d79a0  00 30 87 e5                                      str r3, [r7]
003d79a4  79 ff ff ea                                      b #0x3d7790
003d79a8  05 10 a0 e1                                      mov r1, r5
003d79ac  04 20 a0 e1                                      mov r2, r4
003d79b0  06 30 a0 e1                                      mov r3, r6
003d79b4  07 00 a0 e1                                      mov r0, r7
003d79b8  00 e0 8d e5                                      str lr, [sp]
003d79bc  04 40 8d e5                                      str r4, [sp, #4]
003d79c0  81 fe ff eb                                      bl #0x3d73cc
003d79c4  71 ff ff ea                                      b #0x3d7790
003d79c8  00 c0 a0 e3                                      mov ip, #0
003d79cc  05 10 a0 e1                                      mov r1, r5
003d79d0  04 20 a0 e1                                      mov r2, r4
003d79d4  06 30 a0 e1                                      mov r3, r6
003d79d8  07 00 a0 e1                                      mov r0, r7
003d79dc  00 c0 8d e5                                      str ip, [sp]
003d79e0  04 40 8d e5                                      str r4, [sp, #4]
003d79e4  78 fe ff eb                                      bl #0x3d73cc
003d79e8  68 ff ff ea                                      b #0x3d7790

; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0033f654, declared_size=96, range_size=96, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, ObjectListItem>, std::priv::_Select1st<std::pair<int const, ObjectListItem> >, std::priv::_MapTraitsT<std::pair<int const, ObjectListItem> >, std::allocator<std::pair<int const, ObjectListItem> > >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKi14ObjectListItemENS_10_Select1stIS6_EENS_11_MapTraitsTIS6_EESaIS6_EE14_M_create_nodeERKS6_
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, ObjectListItem>, std::priv::_Select1st<std::pair<int const, ObjectListItem> >, std::priv::_MapTraitsT<std::pair<int const, ObjectListItem> >, std::allocator<std::pair<int const, ObjectListItem> > >::_M_create_node(std::pair<int const, ObjectListItem> const&)
; decoder-mode: arm
0033f654  30 40 2d e9                                      push {r4, r5, lr}
0033f658  0c d0 4d e2                                      sub sp, sp, #0xc
0033f65c  08 00 8d e2                                      add r0, sp, #8
0033f660  30 30 a0 e3                                      mov r3, #0x30
0033f664  04 30 20 e5                                      str r3, [r0, #-4]!
0033f668  01 50 a0 e1                                      mov r5, r1
0033f66c  13 26 0f eb                                      bl #0x708ec0
0033f670  00 30 95 e5                                      ldr r3, [r5]
0033f674  00 40 a0 e1                                      mov r4, r0
0033f678  14 00 80 e2                                      add r0, r0, #0x14
0033f67c  24 00 84 e5                                      str r0, [r4, #0x24]
0033f680  10 30 84 e5                                      str r3, [r4, #0x10]
0033f684  28 00 84 e5                                      str r0, [r4, #0x28]
0033f688  14 20 95 e5                                      ldr r2, [r5, #0x14]
0033f68c  18 10 95 e5                                      ldr r1, [r5, #0x18]
0033f690  14 48 ff eb                                      bl #0x3116e8
0033f694  1c 20 95 e5                                      ldr r2, [r5, #0x1c]
0033f698  00 30 a0 e3                                      mov r3, #0
0033f69c  0c 30 84 e5                                      str r3, [r4, #0xc]
0033f6a0  2c 20 84 e5                                      str r2, [r4, #0x2c]
0033f6a4  08 30 84 e5                                      str r3, [r4, #8]
0033f6a8  04 00 a0 e1                                      mov r0, r4
0033f6ac  0c d0 8d e2                                      add sp, sp, #0xc
0033f6b0  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x0033f6b4, declared_size=216, range_size=216, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, ObjectListItem>, std::priv::_Select1st<std::pair<int const, ObjectListItem> >, std::priv::_MapTraitsT<std::pair<int const, ObjectListItem> >, std::allocator<std::pair<int const, ObjectListItem> > >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKi14ObjectListItemENS_10_Select1stIS6_EENS_11_MapTraitsTIS6_EESaIS6_EE9_M_insertEPNS_18_Rb_tree_node_baseERKS6_SE_SE_
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, ObjectListItem>, std::priv::_Select1st<std::pair<int const, ObjectListItem> >, std::priv::_MapTraitsT<std::pair<int const, ObjectListItem> >, std::allocator<std::pair<int const, ObjectListItem> > >::_M_insert(std::priv::_Rb_tree_node_base*, std::pair<int const, ObjectListItem> const&, std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
0033f6b4  02 00 51 e1                                      cmp r1, r2
0033f6b8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0033f6bc  01 40 a0 e1                                      mov r4, r1
0033f6c0  02 50 a0 e1                                      mov r5, r2
0033f6c4  00 60 a0 e1                                      mov r6, r0
0033f6c8  22 00 00 0a                                      beq #0x33f758
0033f6cc  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0033f6d0  00 00 52 e3                                      cmp r2, #0
0033f6d4  11 00 00 0a                                      beq #0x33f720
0033f6d8  03 10 a0 e1                                      mov r1, r3
0033f6dc  04 00 a0 e1                                      mov r0, r4
0033f6e0  db ff ff eb                                      bl #0x33f654
0033f6e4  0c 00 85 e5                                      str r0, [r5, #0xc]
0033f6e8  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0033f6ec  00 70 a0 e1                                      mov r7, r0
0033f6f0  03 00 55 e1                                      cmp r5, r3
0033f6f4  15 00 00 0a                                      beq #0x33f750
0033f6f8  07 00 a0 e1                                      mov r0, r7
0033f6fc  04 50 87 e5                                      str r5, [r7, #4]
0033f700  04 10 84 e2                                      add r1, r4, #4
0033f704  15 50 ff eb                                      bl #0x313760
0033f708  10 30 94 e5                                      ldr r3, [r4, #0x10]
0033f70c  06 00 a0 e1                                      mov r0, r6
0033f710  01 30 83 e2                                      add r3, r3, #1
0033f714  10 30 84 e5                                      str r3, [r4, #0x10]
0033f718  00 70 86 e5                                      str r7, [r6]
0033f71c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0033f720  18 20 9d e5                                      ldr r2, [sp, #0x18]
0033f724  00 00 52 e3                                      cmp r2, #0
0033f728  12 00 00 0a                                      beq #0x33f778
0033f72c  03 10 a0 e1                                      mov r1, r3
0033f730  04 00 a0 e1                                      mov r0, r4
0033f734  c6 ff ff eb                                      bl #0x33f654
0033f738  08 00 85 e5                                      str r0, [r5, #8]
0033f73c  08 30 94 e5                                      ldr r3, [r4, #8]
0033f740  00 70 a0 e1                                      mov r7, r0
0033f744  03 00 55 e1                                      cmp r5, r3
0033f748  08 00 84 05                                      streq r0, [r4, #8]
0033f74c  e9 ff ff ea                                      b #0x33f6f8
0033f750  0c 70 84 e5                                      str r7, [r4, #0xc]
0033f754  e7 ff ff ea                                      b #0x33f6f8
0033f758  03 10 a0 e1                                      mov r1, r3
0033f75c  04 00 a0 e1                                      mov r0, r4
0033f760  bb ff ff eb                                      bl #0x33f654
0033f764  00 70 a0 e1                                      mov r7, r0
0033f768  08 00 84 e5                                      str r0, [r4, #8]
0033f76c  04 00 84 e5                                      str r0, [r4, #4]
0033f770  0c 00 84 e5                                      str r0, [r4, #0xc]
0033f774  df ff ff ea                                      b #0x33f6f8
0033f778  00 10 93 e5                                      ldr r1, [r3]
0033f77c  10 20 95 e5                                      ldr r2, [r5, #0x10]
0033f780  02 00 51 e1                                      cmp r1, r2
0033f784  d3 ff ff aa                                      bge #0x33f6d8
0033f788  e7 ff ff ea                                      b #0x33f72c

; FUNCTION 0x0033f78c, declared_size=392, range_size=392, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, ObjectListItem>, std::priv::_Select1st<std::pair<int const, ObjectListItem> >, std::priv::_MapTraitsT<std::pair<int const, ObjectListItem> >, std::allocator<std::pair<int const, ObjectListItem> > >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKi14ObjectListItemENS_10_Select1stIS6_EENS_11_MapTraitsTIS6_EESaIS6_EE13insert_uniqueERKS6_
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, ObjectListItem>, std::priv::_Select1st<std::pair<int const, ObjectListItem> >, std::priv::_MapTraitsT<std::pair<int const, ObjectListItem> >, std::allocator<std::pair<int const, ObjectListItem> > >::insert_unique(std::pair<int const, ObjectListItem> const&)
; decoder-mode: arm
0033f78c  70 40 2d e9                                      push {r4, r5, r6, lr}
0033f790  04 c0 91 e5                                      ldr ip, [r1, #4]
0033f794  10 d0 4d e2                                      sub sp, sp, #0x10
0033f798  00 40 a0 e1                                      mov r4, r0
0033f79c  00 00 5c e3                                      cmp ip, #0
0033f7a0  02 30 a0 e1                                      mov r3, r2
0033f7a4  01 c0 a0 01                                      moveq ip, r1
0033f7a8  15 00 00 0a                                      beq #0x33f804
0033f7ac  00 60 92 e5                                      ldr r6, [r2]
0033f7b0  00 00 00 ea                                      b #0x33f7b8
0033f7b4  02 c0 a0 e1                                      mov ip, r2
0033f7b8  10 00 9c e5                                      ldr r0, [ip, #0x10]
0033f7bc  01 50 a0 e3                                      mov r5, #1
0033f7c0  06 00 50 e1                                      cmp r0, r6
0033f7c4  08 20 9c c5                                      ldrgt r2, [ip, #8]
0033f7c8  0c 20 9c d5                                      ldrle r2, [ip, #0xc]
0033f7cc  00 50 a0 d3                                      movle r5, #0
0033f7d0  00 00 52 e3                                      cmp r2, #0
0033f7d4  f6 ff ff 1a                                      bne #0x33f7b4
0033f7d8  00 00 55 e3                                      cmp r5, #0
0033f7dc  0c 50 a0 01                                      moveq r5, ip
0033f7e0  07 00 00 1a                                      bne #0x33f804
0033f7e4  00 00 56 e1                                      cmp r6, r0
0033f7e8  00 30 a0 d3                                      movle r3, #0
0033f7ec  00 50 84 d5                                      strle r5, [r4]
0033f7f0  04 30 c4 d5                                      strble r3, [r4, #4]
0033f7f4  1c 00 00 ca                                      bgt #0x33f86c
0033f7f8  04 00 a0 e1                                      mov r0, r4
0033f7fc  10 d0 8d e2                                      add sp, sp, #0x10
0033f800  70 80 bd e8                                      pop {r4, r5, r6, pc}
0033f804  08 20 91 e5                                      ldr r2, [r1, #8]
0033f808  02 00 5c e1                                      cmp ip, r2
0033f80c  36 00 00 0a                                      beq #0x33f8ec
0033f810  00 20 dc e5                                      ldrb r2, [ip]
0033f814  00 00 52 e3                                      cmp r2, #0
0033f818  03 00 00 1a                                      bne #0x33f82c
0033f81c  04 20 9c e5                                      ldr r2, [ip, #4]
0033f820  04 20 92 e5                                      ldr r2, [r2, #4]
0033f824  02 00 5c e1                                      cmp ip, r2
0033f828  2a 00 00 0a                                      beq #0x33f8d8
0033f82c  08 00 9c e5                                      ldr r0, [ip, #8]
0033f830  00 00 50 e3                                      cmp r0, #0
0033f834  01 00 00 1a                                      bne #0x33f840
0033f838  16 00 00 ea                                      b #0x33f898
0033f83c  02 00 a0 e1                                      mov r0, r2
0033f840  0c 20 90 e5                                      ldr r2, [r0, #0xc]
0033f844  00 00 52 e3                                      cmp r2, #0
0033f848  fb ff ff 1a                                      bne #0x33f83c
0033f84c  00 60 93 e5                                      ldr r6, [r3]
0033f850  00 50 a0 e1                                      mov r5, r0
0033f854  10 00 90 e5                                      ldr r0, [r0, #0x10]
0033f858  00 00 56 e1                                      cmp r6, r0
0033f85c  00 30 a0 d3                                      movle r3, #0
0033f860  00 50 84 d5                                      strle r5, [r4]
0033f864  04 30 c4 d5                                      strble r3, [r4, #4]
0033f868  e2 ff ff da                                      ble #0x33f7f8
0033f86c  0c 20 a0 e1                                      mov r2, ip
0033f870  08 00 8d e2                                      add r0, sp, #8
0033f874  00 c0 a0 e3                                      mov ip, #0
0033f878  04 c0 8d e5                                      str ip, [sp, #4]
0033f87c  00 c0 8d e5                                      str ip, [sp]
0033f880  8b ff ff eb                                      bl #0x33f6b4
0033f884  08 30 9d e5                                      ldr r3, [sp, #8]
0033f888  01 20 a0 e3                                      mov r2, #1
0033f88c  04 20 c4 e5                                      strb r2, [r4, #4]
0033f890  00 30 84 e5                                      str r3, [r4]
0033f894  d7 ff ff ea                                      b #0x33f7f8
0033f898  04 20 9c e5                                      ldr r2, [ip, #4]
0033f89c  08 00 92 e5                                      ldr r0, [r2, #8]
0033f8a0  00 00 5c e1                                      cmp ip, r0
0033f8a4  02 50 a0 11                                      movne r5, r2
0033f8a8  00 60 93 15                                      ldrne r6, [r3]
0033f8ac  10 00 92 15                                      ldrne r0, [r2, #0x10]
0033f8b0  01 00 00 0a                                      beq #0x33f8bc
0033f8b4  ca ff ff ea                                      b #0x33f7e4
0033f8b8  05 20 a0 e1                                      mov r2, r5
0033f8bc  04 50 92 e5                                      ldr r5, [r2, #4]
0033f8c0  08 00 95 e5                                      ldr r0, [r5, #8]
0033f8c4  02 00 50 e1                                      cmp r0, r2
0033f8c8  fa ff ff 0a                                      beq #0x33f8b8
0033f8cc  00 60 93 e5                                      ldr r6, [r3]
0033f8d0  10 00 95 e5                                      ldr r0, [r5, #0x10]
0033f8d4  c2 ff ff ea                                      b #0x33f7e4
0033f8d8  0c 20 9c e5                                      ldr r2, [ip, #0xc]
0033f8dc  00 60 93 e5                                      ldr r6, [r3]
0033f8e0  02 50 a0 e1                                      mov r5, r2
0033f8e4  10 00 92 e5                                      ldr r0, [r2, #0x10]
0033f8e8  bd ff ff ea                                      b #0x33f7e4
0033f8ec  0c 20 a0 e1                                      mov r2, ip
0033f8f0  00 e0 a0 e3                                      mov lr, #0
0033f8f4  0c 00 8d e2                                      add r0, sp, #0xc
0033f8f8  00 50 8d e8                                      stm sp, {ip, lr}
0033f8fc  6c ff ff eb                                      bl #0x33f6b4
0033f900  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0033f904  01 20 a0 e3                                      mov r2, #1
0033f908  04 20 c4 e5                                      strb r2, [r4, #4]
0033f90c  00 30 84 e5                                      str r3, [r4]
0033f910  b8 ff ff ea                                      b #0x33f7f8

; FUNCTION 0x0033f914, declared_size=884, range_size=884, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, ObjectListItem>, std::priv::_Select1st<std::pair<int const, ObjectListItem> >, std::priv::_MapTraitsT<std::pair<int const, ObjectListItem> >, std::allocator<std::pair<int const, ObjectListItem> > >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKi14ObjectListItemENS_10_Select1stIS6_EENS_11_MapTraitsTIS6_EESaIS6_EE13insert_uniqueENS_17_Rb_tree_iteratorIS6_SA_EERKS6_
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, ObjectListItem>, std::priv::_Select1st<std::pair<int const, ObjectListItem> >, std::priv::_MapTraitsT<std::pair<int const, ObjectListItem> >, std::allocator<std::pair<int const, ObjectListItem> > >::insert_unique(std::priv::_Rb_tree_iterator<std::pair<int const, ObjectListItem>, std::priv::_MapTraitsT<std::pair<int const, ObjectListItem> > >, std::pair<int const, ObjectListItem> const&)
; decoder-mode: arm
0033f914  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0033f918  00 40 92 e5                                      ldr r4, [r2]
0033f91c  08 20 91 e5                                      ldr r2, [r1, #8]
0033f920  2c d0 4d e2                                      sub sp, sp, #0x2c
0033f924  01 50 a0 e1                                      mov r5, r1
0033f928  02 00 54 e1                                      cmp r4, r2
0033f92c  00 70 a0 e1                                      mov r7, r0
0033f930  03 60 a0 e1                                      mov r6, r3
0033f934  5a 00 00 0a                                      beq #0x33faa4
0033f938  01 00 54 e1                                      cmp r4, r1
0033f93c  78 00 00 0a                                      beq #0x33fb24
0033f940  00 30 d4 e5                                      ldrb r3, [r4]
0033f944  00 00 53 e3                                      cmp r3, #0
0033f948  3a 00 00 0a                                      beq #0x33fa38
0033f94c  08 c0 94 e5                                      ldr ip, [r4, #8]
0033f950  00 00 5c e3                                      cmp ip, #0
0033f954  01 00 00 1a                                      bne #0x33f960
0033f958  3e 00 00 ea                                      b #0x33fa58
0033f95c  03 c0 a0 e1                                      mov ip, r3
0033f960  0c 30 9c e5                                      ldr r3, [ip, #0xc]
0033f964  00 00 53 e3                                      cmp r3, #0
0033f968  fb ff ff 1a                                      bne #0x33f95c
0033f96c  00 20 96 e5                                      ldr r2, [r6]
0033f970  10 00 94 e5                                      ldr r0, [r4, #0x10]
0033f974  00 00 52 e1                                      cmp r2, r0
0033f978  00 10 a0 a3                                      movge r1, #0
0033f97c  01 10 a0 b3                                      movlt r1, #1
0033f980  00 00 51 e3                                      cmp r1, #0
0033f984  1b 00 00 1a                                      bne #0x33f9f8
0033f988  0c 80 94 e5                                      ldr r8, [r4, #0xc]
0033f98c  00 00 58 e3                                      cmp r8, #0
0033f990  7d 00 00 0a                                      beq #0x33fb8c
0033f994  08 c0 a0 e1                                      mov ip, r8
0033f998  00 00 00 ea                                      b #0x33f9a0
0033f99c  03 c0 a0 e1                                      mov ip, r3
0033f9a0  08 30 9c e5                                      ldr r3, [ip, #8]
0033f9a4  00 00 53 e3                                      cmp r3, #0
0033f9a8  fb ff ff 1a                                      bne #0x33f99c
0033f9ac  00 00 51 e3                                      cmp r1, #0
0033f9b0  34 00 00 1a                                      bne #0x33fa88
0033f9b4  00 00 52 e1                                      cmp r2, r0
0033f9b8  63 00 00 da                                      ble #0x33fb4c
0033f9bc  0c 00 55 e1                                      cmp r5, ip
0033f9c0  02 00 00 0a                                      beq #0x33f9d0
0033f9c4  10 30 9c e5                                      ldr r3, [ip, #0x10]
0033f9c8  03 00 52 e1                                      cmp r2, r3
0033f9cc  2d 00 00 aa                                      bge #0x33fa88
0033f9d0  00 00 58 e3                                      cmp r8, #0
0033f9d4  4a 00 00 1a                                      bne #0x33fb04
0033f9d8  05 10 a0 e1                                      mov r1, r5
0033f9dc  04 20 a0 e1                                      mov r2, r4
0033f9e0  06 30 a0 e1                                      mov r3, r6
0033f9e4  07 00 a0 e1                                      mov r0, r7
0033f9e8  00 80 8d e5                                      str r8, [sp]
0033f9ec  04 40 8d e5                                      str r4, [sp, #4]
0033f9f0  2f ff ff eb                                      bl #0x33f6b4
0033f9f4  0c 00 00 ea                                      b #0x33fa2c
0033f9f8  10 30 9c e5                                      ldr r3, [ip, #0x10]
0033f9fc  03 00 52 e1                                      cmp r2, r3
0033fa00  e0 ff ff da                                      ble #0x33f988
0033fa04  0c e0 9c e5                                      ldr lr, [ip, #0xc]
0033fa08  00 00 5e e3                                      cmp lr, #0
0033fa0c  56 00 00 0a                                      beq #0x33fb6c
0033fa10  00 c0 a0 e3                                      mov ip, #0
0033fa14  05 10 a0 e1                                      mov r1, r5
0033fa18  04 20 a0 e1                                      mov r2, r4
0033fa1c  06 30 a0 e1                                      mov r3, r6
0033fa20  07 00 a0 e1                                      mov r0, r7
0033fa24  10 10 8d e8                                      stm sp, {r4, ip}
0033fa28  21 ff ff eb                                      bl #0x33f6b4
0033fa2c  07 00 a0 e1                                      mov r0, r7
0033fa30  2c d0 8d e2                                      add sp, sp, #0x2c
0033fa34  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0033fa38  04 30 94 e5                                      ldr r3, [r4, #4]
0033fa3c  04 30 93 e5                                      ldr r3, [r3, #4]
0033fa40  03 00 54 e1                                      cmp r4, r3
0033fa44  0c c0 94 05                                      ldreq ip, [r4, #0xc]
0033fa48  c7 ff ff 0a                                      beq #0x33f96c
0033fa4c  08 c0 94 e5                                      ldr ip, [r4, #8]
0033fa50  00 00 5c e3                                      cmp ip, #0
0033fa54  c1 ff ff 1a                                      bne #0x33f960
0033fa58  04 c0 94 e5                                      ldr ip, [r4, #4]
0033fa5c  08 30 9c e5                                      ldr r3, [ip, #8]
0033fa60  03 00 54 e1                                      cmp r4, r3
0033fa64  01 00 00 0a                                      beq #0x33fa70
0033fa68  bf ff ff ea                                      b #0x33f96c
0033fa6c  03 c0 a0 e1                                      mov ip, r3
0033fa70  04 30 9c e5                                      ldr r3, [ip, #4]
0033fa74  08 20 93 e5                                      ldr r2, [r3, #8]
0033fa78  0c 00 52 e1                                      cmp r2, ip
0033fa7c  fa ff ff 0a                                      beq #0x33fa6c
0033fa80  03 c0 a0 e1                                      mov ip, r3
0033fa84  b8 ff ff ea                                      b #0x33f96c
0033fa88  05 10 a0 e1                                      mov r1, r5
0033fa8c  06 20 a0 e1                                      mov r2, r6
0033fa90  08 00 8d e2                                      add r0, sp, #8
0033fa94  3c ff ff eb                                      bl #0x33f78c
0033fa98  08 30 9d e5                                      ldr r3, [sp, #8]
0033fa9c  00 30 87 e5                                      str r3, [r7]
0033faa0  e1 ff ff ea                                      b #0x33fa2c
0033faa4  10 20 91 e5                                      ldr r2, [r1, #0x10]
0033faa8  00 00 52 e3                                      cmp r2, #0
0033faac  52 00 00 0a                                      beq #0x33fbfc
0033fab0  00 20 93 e5                                      ldr r2, [r3]
0033fab4  10 c0 94 e5                                      ldr ip, [r4, #0x10]
0033fab8  0c 00 52 e1                                      cmp r2, ip
0033fabc  54 00 00 ba                                      blt #0x33fc14
0033fac0  21 00 00 da                                      ble #0x33fb4c
0033fac4  0c e0 94 e5                                      ldr lr, [r4, #0xc]
0033fac8  00 00 5e e3                                      cmp lr, #0
0033facc  3c 00 00 0a                                      beq #0x33fbc4
0033fad0  0e c0 a0 e1                                      mov ip, lr
0033fad4  00 00 00 ea                                      b #0x33fadc
0033fad8  03 c0 a0 e1                                      mov ip, r3
0033fadc  08 30 9c e5                                      ldr r3, [ip, #8]
0033fae0  00 00 53 e3                                      cmp r3, #0
0033fae4  fb ff ff 1a                                      bne #0x33fad8
0033fae8  0c 00 55 e1                                      cmp r5, ip
0033faec  5c 00 00 0a                                      beq #0x33fc64
0033faf0  10 30 9c e5                                      ldr r3, [ip, #0x10]
0033faf4  03 00 52 e1                                      cmp r2, r3
0033faf8  4a 00 00 aa                                      bge #0x33fc28
0033fafc  00 00 5e e3                                      cmp lr, #0
0033fb00  4f 00 00 0a                                      beq #0x33fc44
0033fb04  00 e0 a0 e3                                      mov lr, #0
0033fb08  05 10 a0 e1                                      mov r1, r5
0033fb0c  0c 20 a0 e1                                      mov r2, ip
0033fb10  06 30 a0 e1                                      mov r3, r6
0033fb14  07 00 a0 e1                                      mov r0, r7
0033fb18  00 50 8d e8                                      stm sp, {ip, lr}
0033fb1c  e4 fe ff eb                                      bl #0x33f6b4
0033fb20  c1 ff ff ea                                      b #0x33fa2c
0033fb24  0c 20 94 e5                                      ldr r2, [r4, #0xc]
0033fb28  00 c0 93 e5                                      ldr ip, [r3]
0033fb2c  10 e0 92 e5                                      ldr lr, [r2, #0x10]
0033fb30  0c 00 5e e1                                      cmp lr, ip
0033fb34  06 00 00 aa                                      bge #0x33fb54
0033fb38  00 c0 a0 e3                                      mov ip, #0
0033fb3c  00 c0 8d e5                                      str ip, [sp]
0033fb40  04 40 8d e5                                      str r4, [sp, #4]
0033fb44  da fe ff eb                                      bl #0x33f6b4
0033fb48  b7 ff ff ea                                      b #0x33fa2c
0033fb4c  00 40 87 e5                                      str r4, [r7]
0033fb50  b5 ff ff ea                                      b #0x33fa2c
0033fb54  03 20 a0 e1                                      mov r2, r3
0033fb58  10 00 8d e2                                      add r0, sp, #0x10
0033fb5c  0a ff ff eb                                      bl #0x33f78c
0033fb60  10 30 9d e5                                      ldr r3, [sp, #0x10]
0033fb64  00 30 87 e5                                      str r3, [r7]
0033fb68  af ff ff ea                                      b #0x33fa2c
0033fb6c  05 10 a0 e1                                      mov r1, r5
0033fb70  0c 20 a0 e1                                      mov r2, ip
0033fb74  06 30 a0 e1                                      mov r3, r6
0033fb78  07 00 a0 e1                                      mov r0, r7
0033fb7c  00 e0 8d e5                                      str lr, [sp]
0033fb80  04 c0 8d e5                                      str ip, [sp, #4]
0033fb84  ca fe ff eb                                      bl #0x33f6b4
0033fb88  a7 ff ff ea                                      b #0x33fa2c
0033fb8c  04 30 94 e5                                      ldr r3, [r4, #4]
0033fb90  0c c0 93 e5                                      ldr ip, [r3, #0xc]
0033fb94  0c 00 54 e1                                      cmp r4, ip
0033fb98  04 c0 a0 11                                      movne ip, r4
0033fb9c  04 00 00 1a                                      bne #0x33fbb4
0033fba0  03 c0 a0 e1                                      mov ip, r3
0033fba4  04 30 93 e5                                      ldr r3, [r3, #4]
0033fba8  0c a0 93 e5                                      ldr sl, [r3, #0xc]
0033fbac  0a 00 5c e1                                      cmp ip, sl
0033fbb0  fa ff ff 0a                                      beq #0x33fba0
0033fbb4  0c a0 9c e5                                      ldr sl, [ip, #0xc]
0033fbb8  0a 00 53 e1                                      cmp r3, sl
0033fbbc  03 c0 a0 11                                      movne ip, r3
0033fbc0  79 ff ff ea                                      b #0x33f9ac
0033fbc4  04 30 94 e5                                      ldr r3, [r4, #4]
0033fbc8  0c 10 93 e5                                      ldr r1, [r3, #0xc]
0033fbcc  01 00 54 e1                                      cmp r4, r1
0033fbd0  04 c0 a0 11                                      movne ip, r4
0033fbd4  04 00 00 1a                                      bne #0x33fbec
0033fbd8  03 c0 a0 e1                                      mov ip, r3
0033fbdc  04 30 93 e5                                      ldr r3, [r3, #4]
0033fbe0  0c 10 93 e5                                      ldr r1, [r3, #0xc]
0033fbe4  0c 00 51 e1                                      cmp r1, ip
0033fbe8  fa ff ff 0a                                      beq #0x33fbd8
0033fbec  0c 10 9c e5                                      ldr r1, [ip, #0xc]
0033fbf0  01 00 53 e1                                      cmp r3, r1
0033fbf4  03 c0 a0 11                                      movne ip, r3
0033fbf8  ba ff ff ea                                      b #0x33fae8
0033fbfc  03 20 a0 e1                                      mov r2, r3
0033fc00  20 00 8d e2                                      add r0, sp, #0x20
0033fc04  e0 fe ff eb                                      bl #0x33f78c
0033fc08  20 30 9d e5                                      ldr r3, [sp, #0x20]
0033fc0c  00 30 87 e5                                      str r3, [r7]
0033fc10  85 ff ff ea                                      b #0x33fa2c
0033fc14  00 c0 a0 e3                                      mov ip, #0
0033fc18  04 20 a0 e1                                      mov r2, r4
0033fc1c  10 10 8d e8                                      stm sp, {r4, ip}
0033fc20  a3 fe ff eb                                      bl #0x33f6b4
0033fc24  80 ff ff ea                                      b #0x33fa2c
0033fc28  05 10 a0 e1                                      mov r1, r5
0033fc2c  06 20 a0 e1                                      mov r2, r6
0033fc30  18 00 8d e2                                      add r0, sp, #0x18
0033fc34  d4 fe ff eb                                      bl #0x33f78c
0033fc38  18 30 9d e5                                      ldr r3, [sp, #0x18]
0033fc3c  00 30 87 e5                                      str r3, [r7]
0033fc40  79 ff ff ea                                      b #0x33fa2c
0033fc44  05 10 a0 e1                                      mov r1, r5
0033fc48  04 20 a0 e1                                      mov r2, r4
0033fc4c  06 30 a0 e1                                      mov r3, r6
0033fc50  07 00 a0 e1                                      mov r0, r7
0033fc54  00 e0 8d e5                                      str lr, [sp]
0033fc58  04 40 8d e5                                      str r4, [sp, #4]
0033fc5c  94 fe ff eb                                      bl #0x33f6b4
0033fc60  71 ff ff ea                                      b #0x33fa2c
0033fc64  00 c0 a0 e3                                      mov ip, #0
0033fc68  05 10 a0 e1                                      mov r1, r5
0033fc6c  04 20 a0 e1                                      mov r2, r4
0033fc70  06 30 a0 e1                                      mov r3, r6
0033fc74  07 00 a0 e1                                      mov r0, r7
0033fc78  00 c0 8d e5                                      str ip, [sp]
0033fc7c  04 40 8d e5                                      str r4, [sp, #4]
0033fc80  8b fe ff eb                                      bl #0x33f6b4
0033fc84  68 ff ff ea                                      b #0x33fa2c

; FUNCTION 0x00347ed4, declared_size=132, range_size=132, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, ObjectListItem>, std::priv::_Select1st<std::pair<int const, ObjectListItem> >, std::priv::_MapTraitsT<std::pair<int const, ObjectListItem> >, std::allocator<std::pair<int const, ObjectListItem> > >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKi14ObjectListItemENS_10_Select1stIS6_EENS_11_MapTraitsTIS6_EESaIS6_EE8_M_eraseEPNS_18_Rb_tree_node_baseE
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, ObjectListItem>, std::priv::_Select1st<std::pair<int const, ObjectListItem> >, std::priv::_MapTraitsT<std::pair<int const, ObjectListItem> >, std::allocator<std::pair<int const, ObjectListItem> > >::_M_erase(std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
00347ed4  70 40 2d e9                                      push {r4, r5, r6, lr}
00347ed8  00 40 51 e2                                      subs r4, r1, #0
00347edc  00 60 a0 e1                                      mov r6, r0
00347ee0  06 00 00 1a                                      bne #0x347f00
00347ee4  1a 00 00 ea                                      b #0x347f54
00347ee8  04 04 0f eb                                      bl #0x708f00
00347eec  04 00 a0 e1                                      mov r0, r4
00347ef0  30 10 a0 e3                                      mov r1, #0x30
00347ef4  01 04 0f eb                                      bl #0x708f00
00347ef8  00 40 55 e2                                      subs r4, r5, #0
00347efc  14 00 00 0a                                      beq #0x347f54
00347f00  06 00 a0 e1                                      mov r0, r6
00347f04  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00347f08  f1 ff ff eb                                      bl #0x347ed4
00347f0c  14 20 84 e2                                      add r2, r4, #0x14
00347f10  14 30 92 e5                                      ldr r3, [r2, #0x14]
00347f14  08 50 94 e5                                      ldr r5, [r4, #8]
00347f18  02 00 53 e1                                      cmp r3, r2
00347f1c  03 00 a0 e1                                      mov r0, r3
00347f20  f1 ff ff 0a                                      beq #0x347eec
00347f24  00 00 53 e3                                      cmp r3, #0
00347f28  ef ff ff 0a                                      beq #0x347eec
00347f2c  00 10 92 e5                                      ldr r1, [r2]
00347f30  01 10 63 e0                                      rsb r1, r3, r1
00347f34  80 00 51 e3                                      cmp r1, #0x80
00347f38  ea ff ff 9a                                      bls #0x347ee8
00347f3c  3f 21 ff eb                                      bl #0x310440
00347f40  04 00 a0 e1                                      mov r0, r4
00347f44  30 10 a0 e3                                      mov r1, #0x30
00347f48  ec 03 0f eb                                      bl #0x708f00
00347f4c  00 40 55 e2                                      subs r4, r5, #0
00347f50  ea ff ff 1a                                      bne #0x347f00
00347f54  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00347f58, declared_size=120, range_size=120, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, ObjectListItem>, std::priv::_Select1st<std::pair<int const, ObjectListItem> >, std::priv::_MapTraitsT<std::pair<int const, ObjectListItem> >, std::allocator<std::pair<int const, ObjectListItem> > >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKi14ObjectListItemENS_10_Select1stIS6_EENS_11_MapTraitsTIS6_EESaIS6_EE5eraseENS_17_Rb_tree_iteratorIS6_SA_EE
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, ObjectListItem>, std::priv::_Select1st<std::pair<int const, ObjectListItem> >, std::priv::_MapTraitsT<std::pair<int const, ObjectListItem> >, std::allocator<std::pair<int const, ObjectListItem> > >::erase(std::priv::_Rb_tree_iterator<std::pair<int const, ObjectListItem>, std::priv::_MapTraitsT<std::pair<int const, ObjectListItem> > >)
; decoder-mode: arm
00347f58  70 40 2d e9                                      push {r4, r5, r6, lr}
00347f5c  00 40 a0 e1                                      mov r4, r0
00347f60  0c 30 84 e2                                      add r3, r4, #0xc
00347f64  00 00 91 e5                                      ldr r0, [r1]
00347f68  08 20 84 e2                                      add r2, r4, #8
00347f6c  04 10 84 e2                                      add r1, r4, #4
00347f70  23 b8 ff eb                                      bl #0x336004
00347f74  14 30 80 e2                                      add r3, r0, #0x14
00347f78  00 50 a0 e1                                      mov r5, r0
00347f7c  14 00 93 e5                                      ldr r0, [r3, #0x14]
00347f80  03 00 50 e1                                      cmp r0, r3
00347f84  06 00 00 0a                                      beq #0x347fa4
00347f88  00 00 50 e3                                      cmp r0, #0
00347f8c  04 00 00 0a                                      beq #0x347fa4
00347f90  14 10 95 e5                                      ldr r1, [r5, #0x14]
00347f94  01 10 60 e0                                      rsb r1, r0, r1
00347f98  80 00 51 e3                                      cmp r1, #0x80
00347f9c  09 00 00 8a                                      bhi #0x347fc8
00347fa0  d6 03 0f eb                                      bl #0x708f00
00347fa4  00 00 55 e3                                      cmp r5, #0
00347fa8  02 00 00 0a                                      beq #0x347fb8
00347fac  05 00 a0 e1                                      mov r0, r5
00347fb0  30 10 a0 e3                                      mov r1, #0x30
00347fb4  d1 03 0f eb                                      bl #0x708f00
00347fb8  10 30 94 e5                                      ldr r3, [r4, #0x10]
00347fbc  01 30 43 e2                                      sub r3, r3, #1
00347fc0  10 30 84 e5                                      str r3, [r4, #0x10]
00347fc4  70 80 bd e8                                      pop {r4, r5, r6, pc}
00347fc8  1c 21 ff eb                                      bl #0x310440
00347fcc  f4 ff ff ea                                      b #0x347fa4

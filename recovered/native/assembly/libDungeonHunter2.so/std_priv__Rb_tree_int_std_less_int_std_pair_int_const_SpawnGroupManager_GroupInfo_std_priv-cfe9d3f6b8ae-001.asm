; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003e8eb0, declared_size=116, range_size=116, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, SpawnGroupManager::GroupInfo>, std::priv::_Select1st<std::pair<int const, SpawnGroupManager::GroupInfo> >, std::priv::_MapTraitsT<std::pair<int const, SpawnGroupManager::GroupInfo> >, std::allocator<std::pair<int const, SpawnGroupManager::GroupInfo> > >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKiN17SpawnGroupManager9GroupInfoEENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE8_M_eraseEPNS_18_Rb_tree_node_baseE
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, SpawnGroupManager::GroupInfo>, std::priv::_Select1st<std::pair<int const, SpawnGroupManager::GroupInfo> >, std::priv::_MapTraitsT<std::pair<int const, SpawnGroupManager::GroupInfo> >, std::allocator<std::pair<int const, SpawnGroupManager::GroupInfo> > >::_M_erase(std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
003e8eb0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003e8eb4  00 60 51 e2                                      subs r6, r1, #0
003e8eb8  00 80 a0 e1                                      mov r8, r0
003e8ebc  17 00 00 0a                                      beq #0x3e8f20
003e8ec0  08 00 a0 e1                                      mov r0, r8
003e8ec4  0c 10 96 e5                                      ldr r1, [r6, #0xc]
003e8ec8  f8 ff ff eb                                      bl #0x3e8eb0
003e8ecc  14 30 96 e5                                      ldr r3, [r6, #0x14]
003e8ed0  14 50 86 e2                                      add r5, r6, #0x14
003e8ed4  08 70 96 e5                                      ldr r7, [r6, #8]
003e8ed8  05 00 53 e1                                      cmp r3, r5
003e8edc  08 00 00 0a                                      beq #0x3e8f04
003e8ee0  03 00 a0 e1                                      mov r0, r3
003e8ee4  00 00 00 ea                                      b #0x3e8eec
003e8ee8  04 00 a0 e1                                      mov r0, r4
003e8eec  00 40 90 e5                                      ldr r4, [r0]
003e8ef0  0c 10 a0 e3                                      mov r1, #0xc
003e8ef4  01 80 0c eb                                      bl #0x708f00
003e8ef8  05 00 54 e1                                      cmp r4, r5
003e8efc  f9 ff ff 1a                                      bne #0x3e8ee8
003e8f00  05 30 a0 e1                                      mov r3, r5
003e8f04  06 00 a0 e1                                      mov r0, r6
003e8f08  04 30 85 e5                                      str r3, [r5, #4]
003e8f0c  00 30 85 e5                                      str r3, [r5]
003e8f10  20 10 a0 e3                                      mov r1, #0x20
003e8f14  f9 7f 0c eb                                      bl #0x708f00
003e8f18  00 60 57 e2                                      subs r6, r7, #0
003e8f1c  e7 ff ff 1a                                      bne #0x3e8ec0
003e8f20  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x003e9000, declared_size=124, range_size=124, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, SpawnGroupManager::GroupInfo>, std::priv::_Select1st<std::pair<int const, SpawnGroupManager::GroupInfo> >, std::priv::_MapTraitsT<std::pair<int const, SpawnGroupManager::GroupInfo> >, std::allocator<std::pair<int const, SpawnGroupManager::GroupInfo> > >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKiN17SpawnGroupManager9GroupInfoEENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE5eraseENS_17_Rb_tree_iteratorIS7_SB_EE
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, SpawnGroupManager::GroupInfo>, std::priv::_Select1st<std::pair<int const, SpawnGroupManager::GroupInfo> >, std::priv::_MapTraitsT<std::pair<int const, SpawnGroupManager::GroupInfo> >, std::allocator<std::pair<int const, SpawnGroupManager::GroupInfo> > >::erase(std::priv::_Rb_tree_iterator<std::pair<int const, SpawnGroupManager::GroupInfo>, std::priv::_MapTraitsT<std::pair<int const, SpawnGroupManager::GroupInfo> > >)
; decoder-mode: arm
003e9000  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003e9004  00 40 a0 e1                                      mov r4, r0
003e9008  08 20 84 e2                                      add r2, r4, #8
003e900c  00 00 91 e5                                      ldr r0, [r1]
003e9010  0c 30 84 e2                                      add r3, r4, #0xc
003e9014  04 10 84 e2                                      add r1, r4, #4
003e9018  f9 33 fd eb                                      bl #0x336004
003e901c  00 70 a0 e1                                      mov r7, r0
003e9020  14 00 90 e5                                      ldr r0, [r0, #0x14]
003e9024  14 60 87 e2                                      add r6, r7, #0x14
003e9028  06 00 50 e1                                      cmp r0, r6
003e902c  01 00 00 1a                                      bne #0x3e9038
003e9030  06 00 00 ea                                      b #0x3e9050
003e9034  05 00 a0 e1                                      mov r0, r5
003e9038  00 50 90 e5                                      ldr r5, [r0]
003e903c  0c 10 a0 e3                                      mov r1, #0xc
003e9040  ae 7f 0c eb                                      bl #0x708f00
003e9044  06 00 55 e1                                      cmp r5, r6
003e9048  f9 ff ff 1a                                      bne #0x3e9034
003e904c  06 00 a0 e1                                      mov r0, r6
003e9050  00 00 57 e3                                      cmp r7, #0
003e9054  14 00 87 e5                                      str r0, [r7, #0x14]
003e9058  04 00 86 e5                                      str r0, [r6, #4]
003e905c  02 00 00 0a                                      beq #0x3e906c
003e9060  07 00 a0 e1                                      mov r0, r7
003e9064  20 10 a0 e3                                      mov r1, #0x20
003e9068  a4 7f 0c eb                                      bl #0x708f00
003e906c  10 30 94 e5                                      ldr r3, [r4, #0x10]
003e9070  01 30 43 e2                                      sub r3, r3, #1
003e9074  10 30 84 e5                                      str r3, [r4, #0x10]
003e9078  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x003e991c, declared_size=148, range_size=148, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, SpawnGroupManager::GroupInfo>, std::priv::_Select1st<std::pair<int const, SpawnGroupManager::GroupInfo> >, std::priv::_MapTraitsT<std::pair<int const, SpawnGroupManager::GroupInfo> >, std::allocator<std::pair<int const, SpawnGroupManager::GroupInfo> > >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKiN17SpawnGroupManager9GroupInfoEENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE14_M_create_nodeERKS7_
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, SpawnGroupManager::GroupInfo>, std::priv::_Select1st<std::pair<int const, SpawnGroupManager::GroupInfo> >, std::priv::_MapTraitsT<std::pair<int const, SpawnGroupManager::GroupInfo> >, std::allocator<std::pair<int const, SpawnGroupManager::GroupInfo> > >::_M_create_node(std::pair<int const, SpawnGroupManager::GroupInfo> const&)
; decoder-mode: arm
003e991c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003e9920  08 d0 4d e2                                      sub sp, sp, #8
003e9924  20 30 a0 e3                                      mov r3, #0x20
003e9928  08 00 8d e2                                      add r0, sp, #8
003e992c  04 30 20 e5                                      str r3, [r0, #-4]!
003e9930  01 80 a0 e1                                      mov r8, r1
003e9934  61 7d 0c eb                                      bl #0x708ec0
003e9938  00 30 98 e5                                      ldr r3, [r8]
003e993c  14 40 80 e2                                      add r4, r0, #0x14
003e9940  08 60 a0 e1                                      mov r6, r8
003e9944  14 40 80 e5                                      str r4, [r0, #0x14]
003e9948  10 30 80 e5                                      str r3, [r0, #0x10]
003e994c  18 40 80 e5                                      str r4, [r0, #0x18]
003e9950  04 50 b6 e5                                      ldr r5, [r6, #4]!
003e9954  00 70 a0 e1                                      mov r7, r0
003e9958  06 00 55 e1                                      cmp r5, r6
003e995c  0b 00 00 0a                                      beq #0x3e9990
003e9960  04 00 a0 e1                                      mov r0, r4
003e9964  e4 ff ff eb                                      bl #0x3e98fc
003e9968  08 30 95 e5                                      ldr r3, [r5, #8]
003e996c  08 30 80 e5                                      str r3, [r0, #8]
003e9970  04 30 94 e5                                      ldr r3, [r4, #4]
003e9974  00 40 80 e5                                      str r4, [r0]
003e9978  04 30 80 e5                                      str r3, [r0, #4]
003e997c  00 00 83 e5                                      str r0, [r3]
003e9980  04 00 84 e5                                      str r0, [r4, #4]
003e9984  00 50 95 e5                                      ldr r5, [r5]
003e9988  05 00 56 e1                                      cmp r6, r5
003e998c  f3 ff ff 1a                                      bne #0x3e9960
003e9990  0c 20 98 e5                                      ldr r2, [r8, #0xc]
003e9994  00 30 a0 e3                                      mov r3, #0
003e9998  0c 30 87 e5                                      str r3, [r7, #0xc]
003e999c  1c 20 87 e5                                      str r2, [r7, #0x1c]
003e99a0  08 30 87 e5                                      str r3, [r7, #8]
003e99a4  07 00 a0 e1                                      mov r0, r7
003e99a8  08 d0 8d e2                                      add sp, sp, #8
003e99ac  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x003e99b0, declared_size=216, range_size=216, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, SpawnGroupManager::GroupInfo>, std::priv::_Select1st<std::pair<int const, SpawnGroupManager::GroupInfo> >, std::priv::_MapTraitsT<std::pair<int const, SpawnGroupManager::GroupInfo> >, std::allocator<std::pair<int const, SpawnGroupManager::GroupInfo> > >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKiN17SpawnGroupManager9GroupInfoEENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE9_M_insertEPNS_18_Rb_tree_node_baseERKS7_SF_SF_
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, SpawnGroupManager::GroupInfo>, std::priv::_Select1st<std::pair<int const, SpawnGroupManager::GroupInfo> >, std::priv::_MapTraitsT<std::pair<int const, SpawnGroupManager::GroupInfo> >, std::allocator<std::pair<int const, SpawnGroupManager::GroupInfo> > >::_M_insert(std::priv::_Rb_tree_node_base*, std::pair<int const, SpawnGroupManager::GroupInfo> const&, std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
003e99b0  02 00 51 e1                                      cmp r1, r2
003e99b4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003e99b8  01 40 a0 e1                                      mov r4, r1
003e99bc  02 50 a0 e1                                      mov r5, r2
003e99c0  00 60 a0 e1                                      mov r6, r0
003e99c4  22 00 00 0a                                      beq #0x3e9a54
003e99c8  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
003e99cc  00 00 52 e3                                      cmp r2, #0
003e99d0  11 00 00 0a                                      beq #0x3e9a1c
003e99d4  03 10 a0 e1                                      mov r1, r3
003e99d8  04 00 a0 e1                                      mov r0, r4
003e99dc  ce ff ff eb                                      bl #0x3e991c
003e99e0  0c 00 85 e5                                      str r0, [r5, #0xc]
003e99e4  0c 30 94 e5                                      ldr r3, [r4, #0xc]
003e99e8  00 70 a0 e1                                      mov r7, r0
003e99ec  03 00 55 e1                                      cmp r5, r3
003e99f0  15 00 00 0a                                      beq #0x3e9a4c
003e99f4  07 00 a0 e1                                      mov r0, r7
003e99f8  04 50 87 e5                                      str r5, [r7, #4]
003e99fc  04 10 84 e2                                      add r1, r4, #4
003e9a00  56 a7 fc eb                                      bl #0x313760
003e9a04  10 30 94 e5                                      ldr r3, [r4, #0x10]
003e9a08  06 00 a0 e1                                      mov r0, r6
003e9a0c  01 30 83 e2                                      add r3, r3, #1
003e9a10  10 30 84 e5                                      str r3, [r4, #0x10]
003e9a14  00 70 86 e5                                      str r7, [r6]
003e9a18  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003e9a1c  18 20 9d e5                                      ldr r2, [sp, #0x18]
003e9a20  00 00 52 e3                                      cmp r2, #0
003e9a24  12 00 00 0a                                      beq #0x3e9a74
003e9a28  03 10 a0 e1                                      mov r1, r3
003e9a2c  04 00 a0 e1                                      mov r0, r4
003e9a30  b9 ff ff eb                                      bl #0x3e991c
003e9a34  08 00 85 e5                                      str r0, [r5, #8]
003e9a38  08 30 94 e5                                      ldr r3, [r4, #8]
003e9a3c  00 70 a0 e1                                      mov r7, r0
003e9a40  03 00 55 e1                                      cmp r5, r3
003e9a44  08 00 84 05                                      streq r0, [r4, #8]
003e9a48  e9 ff ff ea                                      b #0x3e99f4
003e9a4c  0c 70 84 e5                                      str r7, [r4, #0xc]
003e9a50  e7 ff ff ea                                      b #0x3e99f4
003e9a54  03 10 a0 e1                                      mov r1, r3
003e9a58  04 00 a0 e1                                      mov r0, r4
003e9a5c  ae ff ff eb                                      bl #0x3e991c
003e9a60  00 70 a0 e1                                      mov r7, r0
003e9a64  08 00 84 e5                                      str r0, [r4, #8]
003e9a68  04 00 84 e5                                      str r0, [r4, #4]
003e9a6c  0c 00 84 e5                                      str r0, [r4, #0xc]
003e9a70  df ff ff ea                                      b #0x3e99f4
003e9a74  00 10 93 e5                                      ldr r1, [r3]
003e9a78  10 20 95 e5                                      ldr r2, [r5, #0x10]
003e9a7c  02 00 51 e1                                      cmp r1, r2
003e9a80  d3 ff ff aa                                      bge #0x3e99d4
003e9a84  e7 ff ff ea                                      b #0x3e9a28

; FUNCTION 0x003e9a88, declared_size=392, range_size=392, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, SpawnGroupManager::GroupInfo>, std::priv::_Select1st<std::pair<int const, SpawnGroupManager::GroupInfo> >, std::priv::_MapTraitsT<std::pair<int const, SpawnGroupManager::GroupInfo> >, std::allocator<std::pair<int const, SpawnGroupManager::GroupInfo> > >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKiN17SpawnGroupManager9GroupInfoEENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE13insert_uniqueERKS7_
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, SpawnGroupManager::GroupInfo>, std::priv::_Select1st<std::pair<int const, SpawnGroupManager::GroupInfo> >, std::priv::_MapTraitsT<std::pair<int const, SpawnGroupManager::GroupInfo> >, std::allocator<std::pair<int const, SpawnGroupManager::GroupInfo> > >::insert_unique(std::pair<int const, SpawnGroupManager::GroupInfo> const&)
; decoder-mode: arm
003e9a88  70 40 2d e9                                      push {r4, r5, r6, lr}
003e9a8c  04 c0 91 e5                                      ldr ip, [r1, #4]
003e9a90  10 d0 4d e2                                      sub sp, sp, #0x10
003e9a94  00 40 a0 e1                                      mov r4, r0
003e9a98  00 00 5c e3                                      cmp ip, #0
003e9a9c  02 30 a0 e1                                      mov r3, r2
003e9aa0  01 c0 a0 01                                      moveq ip, r1
003e9aa4  15 00 00 0a                                      beq #0x3e9b00
003e9aa8  00 60 92 e5                                      ldr r6, [r2]
003e9aac  00 00 00 ea                                      b #0x3e9ab4
003e9ab0  02 c0 a0 e1                                      mov ip, r2
003e9ab4  10 00 9c e5                                      ldr r0, [ip, #0x10]
003e9ab8  01 50 a0 e3                                      mov r5, #1
003e9abc  06 00 50 e1                                      cmp r0, r6
003e9ac0  08 20 9c c5                                      ldrgt r2, [ip, #8]
003e9ac4  0c 20 9c d5                                      ldrle r2, [ip, #0xc]
003e9ac8  00 50 a0 d3                                      movle r5, #0
003e9acc  00 00 52 e3                                      cmp r2, #0
003e9ad0  f6 ff ff 1a                                      bne #0x3e9ab0
003e9ad4  00 00 55 e3                                      cmp r5, #0
003e9ad8  0c 50 a0 01                                      moveq r5, ip
003e9adc  07 00 00 1a                                      bne #0x3e9b00
003e9ae0  00 00 56 e1                                      cmp r6, r0
003e9ae4  00 30 a0 d3                                      movle r3, #0
003e9ae8  00 50 84 d5                                      strle r5, [r4]
003e9aec  04 30 c4 d5                                      strble r3, [r4, #4]
003e9af0  1c 00 00 ca                                      bgt #0x3e9b68
003e9af4  04 00 a0 e1                                      mov r0, r4
003e9af8  10 d0 8d e2                                      add sp, sp, #0x10
003e9afc  70 80 bd e8                                      pop {r4, r5, r6, pc}
003e9b00  08 20 91 e5                                      ldr r2, [r1, #8]
003e9b04  02 00 5c e1                                      cmp ip, r2
003e9b08  36 00 00 0a                                      beq #0x3e9be8
003e9b0c  00 20 dc e5                                      ldrb r2, [ip]
003e9b10  00 00 52 e3                                      cmp r2, #0
003e9b14  03 00 00 1a                                      bne #0x3e9b28
003e9b18  04 20 9c e5                                      ldr r2, [ip, #4]
003e9b1c  04 20 92 e5                                      ldr r2, [r2, #4]
003e9b20  02 00 5c e1                                      cmp ip, r2
003e9b24  2a 00 00 0a                                      beq #0x3e9bd4
003e9b28  08 00 9c e5                                      ldr r0, [ip, #8]
003e9b2c  00 00 50 e3                                      cmp r0, #0
003e9b30  01 00 00 1a                                      bne #0x3e9b3c
003e9b34  16 00 00 ea                                      b #0x3e9b94
003e9b38  02 00 a0 e1                                      mov r0, r2
003e9b3c  0c 20 90 e5                                      ldr r2, [r0, #0xc]
003e9b40  00 00 52 e3                                      cmp r2, #0
003e9b44  fb ff ff 1a                                      bne #0x3e9b38
003e9b48  00 60 93 e5                                      ldr r6, [r3]
003e9b4c  00 50 a0 e1                                      mov r5, r0
003e9b50  10 00 90 e5                                      ldr r0, [r0, #0x10]
003e9b54  00 00 56 e1                                      cmp r6, r0
003e9b58  00 30 a0 d3                                      movle r3, #0
003e9b5c  00 50 84 d5                                      strle r5, [r4]
003e9b60  04 30 c4 d5                                      strble r3, [r4, #4]
003e9b64  e2 ff ff da                                      ble #0x3e9af4
003e9b68  0c 20 a0 e1                                      mov r2, ip
003e9b6c  08 00 8d e2                                      add r0, sp, #8
003e9b70  00 c0 a0 e3                                      mov ip, #0
003e9b74  04 c0 8d e5                                      str ip, [sp, #4]
003e9b78  00 c0 8d e5                                      str ip, [sp]
003e9b7c  8b ff ff eb                                      bl #0x3e99b0
003e9b80  08 30 9d e5                                      ldr r3, [sp, #8]
003e9b84  01 20 a0 e3                                      mov r2, #1
003e9b88  04 20 c4 e5                                      strb r2, [r4, #4]
003e9b8c  00 30 84 e5                                      str r3, [r4]
003e9b90  d7 ff ff ea                                      b #0x3e9af4
003e9b94  04 20 9c e5                                      ldr r2, [ip, #4]
003e9b98  08 00 92 e5                                      ldr r0, [r2, #8]
003e9b9c  00 00 5c e1                                      cmp ip, r0
003e9ba0  02 50 a0 11                                      movne r5, r2
003e9ba4  00 60 93 15                                      ldrne r6, [r3]
003e9ba8  10 00 92 15                                      ldrne r0, [r2, #0x10]
003e9bac  01 00 00 0a                                      beq #0x3e9bb8
003e9bb0  ca ff ff ea                                      b #0x3e9ae0
003e9bb4  05 20 a0 e1                                      mov r2, r5
003e9bb8  04 50 92 e5                                      ldr r5, [r2, #4]
003e9bbc  08 00 95 e5                                      ldr r0, [r5, #8]
003e9bc0  02 00 50 e1                                      cmp r0, r2
003e9bc4  fa ff ff 0a                                      beq #0x3e9bb4
003e9bc8  00 60 93 e5                                      ldr r6, [r3]
003e9bcc  10 00 95 e5                                      ldr r0, [r5, #0x10]
003e9bd0  c2 ff ff ea                                      b #0x3e9ae0
003e9bd4  0c 20 9c e5                                      ldr r2, [ip, #0xc]
003e9bd8  00 60 93 e5                                      ldr r6, [r3]
003e9bdc  02 50 a0 e1                                      mov r5, r2
003e9be0  10 00 92 e5                                      ldr r0, [r2, #0x10]
003e9be4  bd ff ff ea                                      b #0x3e9ae0
003e9be8  0c 20 a0 e1                                      mov r2, ip
003e9bec  00 e0 a0 e3                                      mov lr, #0
003e9bf0  0c 00 8d e2                                      add r0, sp, #0xc
003e9bf4  00 50 8d e8                                      stm sp, {ip, lr}
003e9bf8  6c ff ff eb                                      bl #0x3e99b0
003e9bfc  0c 30 9d e5                                      ldr r3, [sp, #0xc]
003e9c00  01 20 a0 e3                                      mov r2, #1
003e9c04  04 20 c4 e5                                      strb r2, [r4, #4]
003e9c08  00 30 84 e5                                      str r3, [r4]
003e9c0c  b8 ff ff ea                                      b #0x3e9af4

; FUNCTION 0x003e9c10, declared_size=884, range_size=884, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, SpawnGroupManager::GroupInfo>, std::priv::_Select1st<std::pair<int const, SpawnGroupManager::GroupInfo> >, std::priv::_MapTraitsT<std::pair<int const, SpawnGroupManager::GroupInfo> >, std::allocator<std::pair<int const, SpawnGroupManager::GroupInfo> > >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKiN17SpawnGroupManager9GroupInfoEENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE13insert_uniqueENS_17_Rb_tree_iteratorIS7_SB_EERKS7_
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, SpawnGroupManager::GroupInfo>, std::priv::_Select1st<std::pair<int const, SpawnGroupManager::GroupInfo> >, std::priv::_MapTraitsT<std::pair<int const, SpawnGroupManager::GroupInfo> >, std::allocator<std::pair<int const, SpawnGroupManager::GroupInfo> > >::insert_unique(std::priv::_Rb_tree_iterator<std::pair<int const, SpawnGroupManager::GroupInfo>, std::priv::_MapTraitsT<std::pair<int const, SpawnGroupManager::GroupInfo> > >, std::pair<int const, SpawnGroupManager::GroupInfo> const&)
; decoder-mode: arm
003e9c10  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
003e9c14  00 40 92 e5                                      ldr r4, [r2]
003e9c18  08 20 91 e5                                      ldr r2, [r1, #8]
003e9c1c  2c d0 4d e2                                      sub sp, sp, #0x2c
003e9c20  01 50 a0 e1                                      mov r5, r1
003e9c24  02 00 54 e1                                      cmp r4, r2
003e9c28  00 70 a0 e1                                      mov r7, r0
003e9c2c  03 60 a0 e1                                      mov r6, r3
003e9c30  5a 00 00 0a                                      beq #0x3e9da0
003e9c34  01 00 54 e1                                      cmp r4, r1
003e9c38  78 00 00 0a                                      beq #0x3e9e20
003e9c3c  00 30 d4 e5                                      ldrb r3, [r4]
003e9c40  00 00 53 e3                                      cmp r3, #0
003e9c44  3a 00 00 0a                                      beq #0x3e9d34
003e9c48  08 c0 94 e5                                      ldr ip, [r4, #8]
003e9c4c  00 00 5c e3                                      cmp ip, #0
003e9c50  01 00 00 1a                                      bne #0x3e9c5c
003e9c54  3e 00 00 ea                                      b #0x3e9d54
003e9c58  03 c0 a0 e1                                      mov ip, r3
003e9c5c  0c 30 9c e5                                      ldr r3, [ip, #0xc]
003e9c60  00 00 53 e3                                      cmp r3, #0
003e9c64  fb ff ff 1a                                      bne #0x3e9c58
003e9c68  00 20 96 e5                                      ldr r2, [r6]
003e9c6c  10 00 94 e5                                      ldr r0, [r4, #0x10]
003e9c70  00 00 52 e1                                      cmp r2, r0
003e9c74  00 10 a0 a3                                      movge r1, #0
003e9c78  01 10 a0 b3                                      movlt r1, #1
003e9c7c  00 00 51 e3                                      cmp r1, #0
003e9c80  1b 00 00 1a                                      bne #0x3e9cf4
003e9c84  0c 80 94 e5                                      ldr r8, [r4, #0xc]
003e9c88  00 00 58 e3                                      cmp r8, #0
003e9c8c  7d 00 00 0a                                      beq #0x3e9e88
003e9c90  08 c0 a0 e1                                      mov ip, r8
003e9c94  00 00 00 ea                                      b #0x3e9c9c
003e9c98  03 c0 a0 e1                                      mov ip, r3
003e9c9c  08 30 9c e5                                      ldr r3, [ip, #8]
003e9ca0  00 00 53 e3                                      cmp r3, #0
003e9ca4  fb ff ff 1a                                      bne #0x3e9c98
003e9ca8  00 00 51 e3                                      cmp r1, #0
003e9cac  34 00 00 1a                                      bne #0x3e9d84
003e9cb0  00 00 52 e1                                      cmp r2, r0
003e9cb4  63 00 00 da                                      ble #0x3e9e48
003e9cb8  0c 00 55 e1                                      cmp r5, ip
003e9cbc  02 00 00 0a                                      beq #0x3e9ccc
003e9cc0  10 30 9c e5                                      ldr r3, [ip, #0x10]
003e9cc4  03 00 52 e1                                      cmp r2, r3
003e9cc8  2d 00 00 aa                                      bge #0x3e9d84
003e9ccc  00 00 58 e3                                      cmp r8, #0
003e9cd0  4a 00 00 1a                                      bne #0x3e9e00
003e9cd4  05 10 a0 e1                                      mov r1, r5
003e9cd8  04 20 a0 e1                                      mov r2, r4
003e9cdc  06 30 a0 e1                                      mov r3, r6
003e9ce0  07 00 a0 e1                                      mov r0, r7
003e9ce4  00 80 8d e5                                      str r8, [sp]
003e9ce8  04 40 8d e5                                      str r4, [sp, #4]
003e9cec  2f ff ff eb                                      bl #0x3e99b0
003e9cf0  0c 00 00 ea                                      b #0x3e9d28
003e9cf4  10 30 9c e5                                      ldr r3, [ip, #0x10]
003e9cf8  03 00 52 e1                                      cmp r2, r3
003e9cfc  e0 ff ff da                                      ble #0x3e9c84
003e9d00  0c e0 9c e5                                      ldr lr, [ip, #0xc]
003e9d04  00 00 5e e3                                      cmp lr, #0
003e9d08  56 00 00 0a                                      beq #0x3e9e68
003e9d0c  00 c0 a0 e3                                      mov ip, #0
003e9d10  05 10 a0 e1                                      mov r1, r5
003e9d14  04 20 a0 e1                                      mov r2, r4
003e9d18  06 30 a0 e1                                      mov r3, r6
003e9d1c  07 00 a0 e1                                      mov r0, r7
003e9d20  10 10 8d e8                                      stm sp, {r4, ip}
003e9d24  21 ff ff eb                                      bl #0x3e99b0
003e9d28  07 00 a0 e1                                      mov r0, r7
003e9d2c  2c d0 8d e2                                      add sp, sp, #0x2c
003e9d30  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
003e9d34  04 30 94 e5                                      ldr r3, [r4, #4]
003e9d38  04 30 93 e5                                      ldr r3, [r3, #4]
003e9d3c  03 00 54 e1                                      cmp r4, r3
003e9d40  0c c0 94 05                                      ldreq ip, [r4, #0xc]
003e9d44  c7 ff ff 0a                                      beq #0x3e9c68
003e9d48  08 c0 94 e5                                      ldr ip, [r4, #8]
003e9d4c  00 00 5c e3                                      cmp ip, #0
003e9d50  c1 ff ff 1a                                      bne #0x3e9c5c
003e9d54  04 c0 94 e5                                      ldr ip, [r4, #4]
003e9d58  08 30 9c e5                                      ldr r3, [ip, #8]
003e9d5c  03 00 54 e1                                      cmp r4, r3
003e9d60  01 00 00 0a                                      beq #0x3e9d6c
003e9d64  bf ff ff ea                                      b #0x3e9c68
003e9d68  03 c0 a0 e1                                      mov ip, r3
003e9d6c  04 30 9c e5                                      ldr r3, [ip, #4]
003e9d70  08 20 93 e5                                      ldr r2, [r3, #8]
003e9d74  0c 00 52 e1                                      cmp r2, ip
003e9d78  fa ff ff 0a                                      beq #0x3e9d68
003e9d7c  03 c0 a0 e1                                      mov ip, r3
003e9d80  b8 ff ff ea                                      b #0x3e9c68
003e9d84  05 10 a0 e1                                      mov r1, r5
003e9d88  06 20 a0 e1                                      mov r2, r6
003e9d8c  08 00 8d e2                                      add r0, sp, #8
003e9d90  3c ff ff eb                                      bl #0x3e9a88
003e9d94  08 30 9d e5                                      ldr r3, [sp, #8]
003e9d98  00 30 87 e5                                      str r3, [r7]
003e9d9c  e1 ff ff ea                                      b #0x3e9d28
003e9da0  10 20 91 e5                                      ldr r2, [r1, #0x10]
003e9da4  00 00 52 e3                                      cmp r2, #0
003e9da8  52 00 00 0a                                      beq #0x3e9ef8
003e9dac  00 20 93 e5                                      ldr r2, [r3]
003e9db0  10 c0 94 e5                                      ldr ip, [r4, #0x10]
003e9db4  0c 00 52 e1                                      cmp r2, ip
003e9db8  54 00 00 ba                                      blt #0x3e9f10
003e9dbc  21 00 00 da                                      ble #0x3e9e48
003e9dc0  0c e0 94 e5                                      ldr lr, [r4, #0xc]
003e9dc4  00 00 5e e3                                      cmp lr, #0
003e9dc8  3c 00 00 0a                                      beq #0x3e9ec0
003e9dcc  0e c0 a0 e1                                      mov ip, lr
003e9dd0  00 00 00 ea                                      b #0x3e9dd8
003e9dd4  03 c0 a0 e1                                      mov ip, r3
003e9dd8  08 30 9c e5                                      ldr r3, [ip, #8]
003e9ddc  00 00 53 e3                                      cmp r3, #0
003e9de0  fb ff ff 1a                                      bne #0x3e9dd4
003e9de4  0c 00 55 e1                                      cmp r5, ip
003e9de8  5c 00 00 0a                                      beq #0x3e9f60
003e9dec  10 30 9c e5                                      ldr r3, [ip, #0x10]
003e9df0  03 00 52 e1                                      cmp r2, r3
003e9df4  4a 00 00 aa                                      bge #0x3e9f24
003e9df8  00 00 5e e3                                      cmp lr, #0
003e9dfc  4f 00 00 0a                                      beq #0x3e9f40
003e9e00  00 e0 a0 e3                                      mov lr, #0
003e9e04  05 10 a0 e1                                      mov r1, r5
003e9e08  0c 20 a0 e1                                      mov r2, ip
003e9e0c  06 30 a0 e1                                      mov r3, r6
003e9e10  07 00 a0 e1                                      mov r0, r7
003e9e14  00 50 8d e8                                      stm sp, {ip, lr}
003e9e18  e4 fe ff eb                                      bl #0x3e99b0
003e9e1c  c1 ff ff ea                                      b #0x3e9d28
003e9e20  0c 20 94 e5                                      ldr r2, [r4, #0xc]
003e9e24  00 c0 93 e5                                      ldr ip, [r3]
003e9e28  10 e0 92 e5                                      ldr lr, [r2, #0x10]
003e9e2c  0c 00 5e e1                                      cmp lr, ip
003e9e30  06 00 00 aa                                      bge #0x3e9e50
003e9e34  00 c0 a0 e3                                      mov ip, #0
003e9e38  00 c0 8d e5                                      str ip, [sp]
003e9e3c  04 40 8d e5                                      str r4, [sp, #4]
003e9e40  da fe ff eb                                      bl #0x3e99b0
003e9e44  b7 ff ff ea                                      b #0x3e9d28
003e9e48  00 40 87 e5                                      str r4, [r7]
003e9e4c  b5 ff ff ea                                      b #0x3e9d28
003e9e50  03 20 a0 e1                                      mov r2, r3
003e9e54  10 00 8d e2                                      add r0, sp, #0x10
003e9e58  0a ff ff eb                                      bl #0x3e9a88
003e9e5c  10 30 9d e5                                      ldr r3, [sp, #0x10]
003e9e60  00 30 87 e5                                      str r3, [r7]
003e9e64  af ff ff ea                                      b #0x3e9d28
003e9e68  05 10 a0 e1                                      mov r1, r5
003e9e6c  0c 20 a0 e1                                      mov r2, ip
003e9e70  06 30 a0 e1                                      mov r3, r6
003e9e74  07 00 a0 e1                                      mov r0, r7
003e9e78  00 e0 8d e5                                      str lr, [sp]
003e9e7c  04 c0 8d e5                                      str ip, [sp, #4]
003e9e80  ca fe ff eb                                      bl #0x3e99b0
003e9e84  a7 ff ff ea                                      b #0x3e9d28
003e9e88  04 30 94 e5                                      ldr r3, [r4, #4]
003e9e8c  0c c0 93 e5                                      ldr ip, [r3, #0xc]
003e9e90  0c 00 54 e1                                      cmp r4, ip
003e9e94  04 c0 a0 11                                      movne ip, r4
003e9e98  04 00 00 1a                                      bne #0x3e9eb0
003e9e9c  03 c0 a0 e1                                      mov ip, r3
003e9ea0  04 30 93 e5                                      ldr r3, [r3, #4]
003e9ea4  0c a0 93 e5                                      ldr sl, [r3, #0xc]
003e9ea8  0a 00 5c e1                                      cmp ip, sl
003e9eac  fa ff ff 0a                                      beq #0x3e9e9c
003e9eb0  0c a0 9c e5                                      ldr sl, [ip, #0xc]
003e9eb4  0a 00 53 e1                                      cmp r3, sl
003e9eb8  03 c0 a0 11                                      movne ip, r3
003e9ebc  79 ff ff ea                                      b #0x3e9ca8
003e9ec0  04 30 94 e5                                      ldr r3, [r4, #4]
003e9ec4  0c 10 93 e5                                      ldr r1, [r3, #0xc]
003e9ec8  01 00 54 e1                                      cmp r4, r1
003e9ecc  04 c0 a0 11                                      movne ip, r4
003e9ed0  04 00 00 1a                                      bne #0x3e9ee8
003e9ed4  03 c0 a0 e1                                      mov ip, r3
003e9ed8  04 30 93 e5                                      ldr r3, [r3, #4]
003e9edc  0c 10 93 e5                                      ldr r1, [r3, #0xc]
003e9ee0  0c 00 51 e1                                      cmp r1, ip
003e9ee4  fa ff ff 0a                                      beq #0x3e9ed4
003e9ee8  0c 10 9c e5                                      ldr r1, [ip, #0xc]
003e9eec  01 00 53 e1                                      cmp r3, r1
003e9ef0  03 c0 a0 11                                      movne ip, r3
003e9ef4  ba ff ff ea                                      b #0x3e9de4
003e9ef8  03 20 a0 e1                                      mov r2, r3
003e9efc  20 00 8d e2                                      add r0, sp, #0x20
003e9f00  e0 fe ff eb                                      bl #0x3e9a88
003e9f04  20 30 9d e5                                      ldr r3, [sp, #0x20]
003e9f08  00 30 87 e5                                      str r3, [r7]
003e9f0c  85 ff ff ea                                      b #0x3e9d28
003e9f10  00 c0 a0 e3                                      mov ip, #0
003e9f14  04 20 a0 e1                                      mov r2, r4
003e9f18  10 10 8d e8                                      stm sp, {r4, ip}
003e9f1c  a3 fe ff eb                                      bl #0x3e99b0
003e9f20  80 ff ff ea                                      b #0x3e9d28
003e9f24  05 10 a0 e1                                      mov r1, r5
003e9f28  06 20 a0 e1                                      mov r2, r6
003e9f2c  18 00 8d e2                                      add r0, sp, #0x18
003e9f30  d4 fe ff eb                                      bl #0x3e9a88
003e9f34  18 30 9d e5                                      ldr r3, [sp, #0x18]
003e9f38  00 30 87 e5                                      str r3, [r7]
003e9f3c  79 ff ff ea                                      b #0x3e9d28
003e9f40  05 10 a0 e1                                      mov r1, r5
003e9f44  04 20 a0 e1                                      mov r2, r4
003e9f48  06 30 a0 e1                                      mov r3, r6
003e9f4c  07 00 a0 e1                                      mov r0, r7
003e9f50  00 e0 8d e5                                      str lr, [sp]
003e9f54  04 40 8d e5                                      str r4, [sp, #4]
003e9f58  94 fe ff eb                                      bl #0x3e99b0
003e9f5c  71 ff ff ea                                      b #0x3e9d28
003e9f60  00 c0 a0 e3                                      mov ip, #0
003e9f64  05 10 a0 e1                                      mov r1, r5
003e9f68  04 20 a0 e1                                      mov r2, r4
003e9f6c  06 30 a0 e1                                      mov r3, r6
003e9f70  07 00 a0 e1                                      mov r0, r7
003e9f74  00 c0 8d e5                                      str ip, [sp]
003e9f78  04 40 8d e5                                      str r4, [sp, #4]
003e9f7c  8b fe ff eb                                      bl #0x3e99b0
003e9f80  68 ff ff ea                                      b #0x3e9d28

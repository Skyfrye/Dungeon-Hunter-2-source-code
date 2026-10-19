; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0080ab94, declared_size=56, range_size=56, mode=arm
; class-group: std::priv::_Rb_tree<unsigned short, std::less<unsigned short>, unsigned short, std::priv::_Identity<unsigned short>, std::priv::_SetTraitsT<unsigned short>, std::allocator<unsigned short> >
; alias: _ZNSt4priv8_Rb_treeItSt4lessItEtNS_9_IdentityItEENS_11_SetTraitsTItEESaItEE8_M_eraseEPNS_18_Rb_tree_node_baseE
; demangled: std::priv::_Rb_tree<unsigned short, std::less<unsigned short>, unsigned short, std::priv::_Identity<unsigned short>, std::priv::_SetTraitsT<unsigned short>, std::allocator<unsigned short> >::_M_erase(std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
0080ab94  70 40 2d e9                                      push {r4, r5, r6, lr}
0080ab98  00 40 51 e2                                      subs r4, r1, #0
0080ab9c  00 60 a0 e1                                      mov r6, r0
0080aba0  08 00 00 0a                                      beq #0x80abc8
0080aba4  0c 10 94 e5                                      ldr r1, [r4, #0xc]
0080aba8  06 00 a0 e1                                      mov r0, r6
0080abac  f8 ff ff eb                                      bl #0x80ab94
0080abb0  08 50 94 e5                                      ldr r5, [r4, #8]
0080abb4  04 00 a0 e1                                      mov r0, r4
0080abb8  14 10 a0 e3                                      mov r1, #0x14
0080abbc  dd cd 02 eb                                      bl #0x8be338
0080abc0  00 40 55 e2                                      subs r4, r5, #0
0080abc4  f6 ff ff 1a                                      bne #0x80aba4
0080abc8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0080b598, declared_size=60, range_size=60, mode=arm
; class-group: std::priv::_Rb_tree<unsigned short, std::less<unsigned short>, unsigned short, std::priv::_Identity<unsigned short>, std::priv::_SetTraitsT<unsigned short>, std::allocator<unsigned short> >
; alias: _ZNSt4priv8_Rb_treeItSt4lessItEtNS_9_IdentityItEENS_11_SetTraitsTItEESaItEE5eraseENS_17_Rb_tree_iteratorItS6_EE
; demangled: std::priv::_Rb_tree<unsigned short, std::less<unsigned short>, unsigned short, std::priv::_Identity<unsigned short>, std::priv::_SetTraitsT<unsigned short>, std::allocator<unsigned short> >::erase(std::priv::_Rb_tree_iterator<unsigned short, std::priv::_SetTraitsT<unsigned short> >)
; decoder-mode: arm
0080b598  10 40 2d e9                                      push {r4, lr}
0080b59c  00 40 a0 e1                                      mov r4, r0
0080b5a0  08 20 84 e2                                      add r2, r4, #8
0080b5a4  00 00 91 e5                                      ldr r0, [r1]
0080b5a8  0c 30 84 e2                                      add r3, r4, #0xc
0080b5ac  04 10 84 e2                                      add r1, r4, #4
0080b5b0  93 aa ec eb                                      bl #0x336004
0080b5b4  00 00 50 e3                                      cmp r0, #0
0080b5b8  01 00 00 0a                                      beq #0x80b5c4
0080b5bc  14 10 a0 e3                                      mov r1, #0x14
0080b5c0  5c cb 02 eb                                      bl #0x8be338
0080b5c4  10 30 94 e5                                      ldr r3, [r4, #0x10]
0080b5c8  01 30 43 e2                                      sub r3, r3, #1
0080b5cc  10 30 84 e5                                      str r3, [r4, #0x10]
0080b5d0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0080b660, declared_size=288, range_size=288, mode=arm
; class-group: std::priv::_Rb_tree<unsigned short, std::less<unsigned short>, unsigned short, std::priv::_Identity<unsigned short>, std::priv::_SetTraitsT<unsigned short>, std::allocator<unsigned short> >
; alias: _ZNSt4priv8_Rb_treeItSt4lessItEtNS_9_IdentityItEENS_11_SetTraitsTItEESaItEE9_M_insertEPNS_18_Rb_tree_node_baseERKtSA_SA_.clone.2
; demangled: std::priv::_Rb_tree<unsigned short, std::less<unsigned short>, unsigned short, std::priv::_Identity<unsigned short>, std::priv::_SetTraitsT<unsigned short>, std::allocator<unsigned short> >::_M_insert(std::priv::_Rb_tree_node_base*, unsigned short const&, std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*) [clone .clone.2]
; decoder-mode: arm
0080b660  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0080b664  02 00 51 e1                                      cmp r1, r2
0080b668  0c d0 4d e2                                      sub sp, sp, #0xc
0080b66c  01 40 a0 e1                                      mov r4, r1
0080b670  00 50 a0 e1                                      mov r5, r0
0080b674  20 70 9d e5                                      ldr r7, [sp, #0x20]
0080b678  12 00 00 0a                                      beq #0x80b6c8
0080b67c  00 00 57 e3                                      cmp r7, #0
0080b680  2a 00 00 0a                                      beq #0x80b730
0080b684  04 00 a0 e1                                      mov r0, r4
0080b688  04 20 8d e5                                      str r2, [sp, #4]
0080b68c  00 30 8d e5                                      str r3, [sp]
0080b690  ea ff ff eb                                      bl #0x80b640
0080b694  00 30 9d e5                                      ldr r3, [sp]
0080b698  00 10 a0 e3                                      mov r1, #0
0080b69c  00 60 a0 e1                                      mov r6, r0
0080b6a0  b0 30 d3 e1                                      ldrh r3, [r3]
0080b6a4  0c 10 80 e5                                      str r1, [r0, #0xc]
0080b6a8  08 10 80 e5                                      str r1, [r0, #8]
0080b6ac  b0 31 c0 e1                                      strh r3, [r0, #0x10]
0080b6b0  04 20 9d e5                                      ldr r2, [sp, #4]
0080b6b4  08 00 82 e5                                      str r0, [r2, #8]
0080b6b8  08 30 94 e5                                      ldr r3, [r4, #8]
0080b6bc  03 00 52 e1                                      cmp r2, r3
0080b6c0  08 00 84 05                                      streq r0, [r4, #8]
0080b6c4  0e 00 00 ea                                      b #0x80b704
0080b6c8  01 00 a0 e1                                      mov r0, r1
0080b6cc  04 20 8d e5                                      str r2, [sp, #4]
0080b6d0  00 30 8d e5                                      str r3, [sp]
0080b6d4  d9 ff ff eb                                      bl #0x80b640
0080b6d8  00 30 9d e5                                      ldr r3, [sp]
0080b6dc  00 10 a0 e3                                      mov r1, #0
0080b6e0  00 60 a0 e1                                      mov r6, r0
0080b6e4  b0 30 d3 e1                                      ldrh r3, [r3]
0080b6e8  0c 10 80 e5                                      str r1, [r0, #0xc]
0080b6ec  08 10 80 e5                                      str r1, [r0, #8]
0080b6f0  b0 31 c0 e1                                      strh r3, [r0, #0x10]
0080b6f4  08 00 84 e5                                      str r0, [r4, #8]
0080b6f8  04 00 84 e5                                      str r0, [r4, #4]
0080b6fc  0c 00 84 e5                                      str r0, [r4, #0xc]
0080b700  04 20 9d e5                                      ldr r2, [sp, #4]
0080b704  06 00 a0 e1                                      mov r0, r6
0080b708  04 20 86 e5                                      str r2, [r6, #4]
0080b70c  04 10 84 e2                                      add r1, r4, #4
0080b710  12 20 ec eb                                      bl #0x313760
0080b714  10 30 94 e5                                      ldr r3, [r4, #0x10]
0080b718  05 00 a0 e1                                      mov r0, r5
0080b71c  01 30 83 e2                                      add r3, r3, #1
0080b720  10 30 84 e5                                      str r3, [r4, #0x10]
0080b724  00 60 85 e5                                      str r6, [r5]
0080b728  0c d0 8d e2                                      add sp, sp, #0xc
0080b72c  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0080b730  b0 00 d3 e1                                      ldrh r0, [r3]
0080b734  b0 11 d2 e1                                      ldrh r1, [r2, #0x10]
0080b738  01 00 50 e1                                      cmp r0, r1
0080b73c  d0 ff ff 3a                                      blo #0x80b684
0080b740  04 00 a0 e1                                      mov r0, r4
0080b744  04 20 8d e5                                      str r2, [sp, #4]
0080b748  00 30 8d e5                                      str r3, [sp]
0080b74c  bb ff ff eb                                      bl #0x80b640
0080b750  00 30 9d e5                                      ldr r3, [sp]
0080b754  00 60 a0 e1                                      mov r6, r0
0080b758  b0 30 d3 e1                                      ldrh r3, [r3]
0080b75c  0c 70 80 e5                                      str r7, [r0, #0xc]
0080b760  08 70 80 e5                                      str r7, [r0, #8]
0080b764  b0 31 c0 e1                                      strh r3, [r0, #0x10]
0080b768  04 20 9d e5                                      ldr r2, [sp, #4]
0080b76c  0c 00 82 e5                                      str r0, [r2, #0xc]
0080b770  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0080b774  03 00 52 e1                                      cmp r2, r3
0080b778  0c 00 84 05                                      streq r0, [r4, #0xc]
0080b77c  e0 ff ff ea                                      b #0x80b704

; FUNCTION 0x0080b780, declared_size=384, range_size=384, mode=arm
; class-group: std::priv::_Rb_tree<unsigned short, std::less<unsigned short>, unsigned short, std::priv::_Identity<unsigned short>, std::priv::_SetTraitsT<unsigned short>, std::allocator<unsigned short> >
; alias: _ZNSt4priv8_Rb_treeItSt4lessItEtNS_9_IdentityItEENS_11_SetTraitsTItEESaItEE13insert_uniqueERKt
; demangled: std::priv::_Rb_tree<unsigned short, std::less<unsigned short>, unsigned short, std::priv::_Identity<unsigned short>, std::priv::_SetTraitsT<unsigned short>, std::allocator<unsigned short> >::insert_unique(unsigned short const&)
; decoder-mode: arm
0080b780  70 40 2d e9                                      push {r4, r5, r6, lr}
0080b784  04 c0 91 e5                                      ldr ip, [r1, #4]
0080b788  10 d0 4d e2                                      sub sp, sp, #0x10
0080b78c  00 40 a0 e1                                      mov r4, r0
0080b790  00 00 5c e3                                      cmp ip, #0
0080b794  02 30 a0 e1                                      mov r3, r2
0080b798  01 c0 a0 01                                      moveq ip, r1
0080b79c  15 00 00 0a                                      beq #0x80b7f8
0080b7a0  b0 60 d2 e1                                      ldrh r6, [r2]
0080b7a4  00 00 00 ea                                      b #0x80b7ac
0080b7a8  02 c0 a0 e1                                      mov ip, r2
0080b7ac  b0 01 dc e1                                      ldrh r0, [ip, #0x10]
0080b7b0  01 50 a0 e3                                      mov r5, #1
0080b7b4  06 00 50 e1                                      cmp r0, r6
0080b7b8  08 20 9c 85                                      ldrhi r2, [ip, #8]
0080b7bc  0c 20 9c 95                                      ldrls r2, [ip, #0xc]
0080b7c0  00 50 a0 93                                      movls r5, #0
0080b7c4  00 00 52 e3                                      cmp r2, #0
0080b7c8  f6 ff ff 1a                                      bne #0x80b7a8
0080b7cc  00 00 55 e3                                      cmp r5, #0
0080b7d0  0c 50 a0 01                                      moveq r5, ip
0080b7d4  07 00 00 1a                                      bne #0x80b7f8
0080b7d8  00 00 56 e1                                      cmp r6, r0
0080b7dc  00 30 a0 93                                      movls r3, #0
0080b7e0  00 50 84 95                                      strls r5, [r4]
0080b7e4  04 30 c4 95                                      strbls r3, [r4, #4]
0080b7e8  1c 00 00 8a                                      bhi #0x80b860
0080b7ec  04 00 a0 e1                                      mov r0, r4
0080b7f0  10 d0 8d e2                                      add sp, sp, #0x10
0080b7f4  70 80 bd e8                                      pop {r4, r5, r6, pc}
0080b7f8  08 20 91 e5                                      ldr r2, [r1, #8]
0080b7fc  02 00 5c e1                                      cmp ip, r2
0080b800  35 00 00 0a                                      beq #0x80b8dc
0080b804  00 20 dc e5                                      ldrb r2, [ip]
0080b808  00 00 52 e3                                      cmp r2, #0
0080b80c  03 00 00 1a                                      bne #0x80b820
0080b810  04 20 9c e5                                      ldr r2, [ip, #4]
0080b814  04 20 92 e5                                      ldr r2, [r2, #4]
0080b818  02 00 5c e1                                      cmp ip, r2
0080b81c  29 00 00 0a                                      beq #0x80b8c8
0080b820  08 00 9c e5                                      ldr r0, [ip, #8]
0080b824  00 00 50 e3                                      cmp r0, #0
0080b828  01 00 00 1a                                      bne #0x80b834
0080b82c  15 00 00 ea                                      b #0x80b888
0080b830  02 00 a0 e1                                      mov r0, r2
0080b834  0c 20 90 e5                                      ldr r2, [r0, #0xc]
0080b838  00 00 52 e3                                      cmp r2, #0
0080b83c  fb ff ff 1a                                      bne #0x80b830
0080b840  b0 60 d3 e1                                      ldrh r6, [r3]
0080b844  00 50 a0 e1                                      mov r5, r0
0080b848  b0 01 d0 e1                                      ldrh r0, [r0, #0x10]
0080b84c  00 00 56 e1                                      cmp r6, r0
0080b850  00 30 a0 93                                      movls r3, #0
0080b854  00 50 84 95                                      strls r5, [r4]
0080b858  04 30 c4 95                                      strbls r3, [r4, #4]
0080b85c  e2 ff ff 9a                                      bls #0x80b7ec
0080b860  0c 20 a0 e1                                      mov r2, ip
0080b864  08 00 8d e2                                      add r0, sp, #8
0080b868  00 c0 a0 e3                                      mov ip, #0
0080b86c  00 c0 8d e5                                      str ip, [sp]
0080b870  7a ff ff eb                                      bl #0x80b660
0080b874  08 30 9d e5                                      ldr r3, [sp, #8]
0080b878  01 20 a0 e3                                      mov r2, #1
0080b87c  04 20 c4 e5                                      strb r2, [r4, #4]
0080b880  00 30 84 e5                                      str r3, [r4]
0080b884  d8 ff ff ea                                      b #0x80b7ec
0080b888  04 20 9c e5                                      ldr r2, [ip, #4]
0080b88c  08 00 92 e5                                      ldr r0, [r2, #8]
0080b890  00 00 5c e1                                      cmp ip, r0
0080b894  02 50 a0 11                                      movne r5, r2
0080b898  b0 60 d3 11                                      ldrhne r6, [r3]
0080b89c  b0 01 d2 11                                      ldrhne r0, [r2, #0x10]
0080b8a0  01 00 00 0a                                      beq #0x80b8ac
0080b8a4  cb ff ff ea                                      b #0x80b7d8
0080b8a8  05 20 a0 e1                                      mov r2, r5
0080b8ac  04 50 92 e5                                      ldr r5, [r2, #4]
0080b8b0  08 00 95 e5                                      ldr r0, [r5, #8]
0080b8b4  02 00 50 e1                                      cmp r0, r2
0080b8b8  fa ff ff 0a                                      beq #0x80b8a8
0080b8bc  b0 60 d3 e1                                      ldrh r6, [r3]
0080b8c0  b0 01 d5 e1                                      ldrh r0, [r5, #0x10]
0080b8c4  c3 ff ff ea                                      b #0x80b7d8
0080b8c8  0c 20 9c e5                                      ldr r2, [ip, #0xc]
0080b8cc  b0 60 d3 e1                                      ldrh r6, [r3]
0080b8d0  02 50 a0 e1                                      mov r5, r2
0080b8d4  b0 01 d2 e1                                      ldrh r0, [r2, #0x10]
0080b8d8  be ff ff ea                                      b #0x80b7d8
0080b8dc  0c 20 a0 e1                                      mov r2, ip
0080b8e0  0c 00 8d e2                                      add r0, sp, #0xc
0080b8e4  00 c0 8d e5                                      str ip, [sp]
0080b8e8  5c ff ff eb                                      bl #0x80b660
0080b8ec  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0080b8f0  01 20 a0 e3                                      mov r2, #1
0080b8f4  04 20 c4 e5                                      strb r2, [r4, #4]
0080b8f8  00 30 84 e5                                      str r3, [r4]
0080b8fc  ba ff ff ea                                      b #0x80b7ec

; FUNCTION 0x0080bad4, declared_size=200, range_size=200, mode=arm
; class-group: std::priv::_Rb_tree<unsigned short, std::less<unsigned short>, unsigned short, std::priv::_Identity<unsigned short>, std::priv::_SetTraitsT<unsigned short>, std::allocator<unsigned short> >
; alias: _ZNSt4priv8_Rb_treeItSt4lessItEtNS_9_IdentityItEENS_11_SetTraitsTItEESaItEE7_M_copyEPNS_18_Rb_tree_node_baseESA_
; demangled: std::priv::_Rb_tree<unsigned short, std::less<unsigned short>, unsigned short, std::priv::_Identity<unsigned short>, std::priv::_SetTraitsT<unsigned short>, std::allocator<unsigned short> >::_M_copy(std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
0080bad4  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0080bad8  01 40 a0 e1                                      mov r4, r1
0080badc  02 50 a0 e1                                      mov r5, r2
0080bae0  00 70 a0 e1                                      mov r7, r0
0080bae4  d5 fe ff eb                                      bl #0x80b640
0080bae8  b0 21 d4 e1                                      ldrh r2, [r4, #0x10]
0080baec  00 30 a0 e3                                      mov r3, #0
0080baf0  0c 30 80 e5                                      str r3, [r0, #0xc]
0080baf4  b0 21 c0 e1                                      strh r2, [r0, #0x10]
0080baf8  08 30 80 e5                                      str r3, [r0, #8]
0080bafc  00 30 d4 e5                                      ldrb r3, [r4]
0080bb00  04 50 80 e5                                      str r5, [r0, #4]
0080bb04  00 a0 a0 e1                                      mov sl, r0
0080bb08  00 30 c0 e5                                      strb r3, [r0]
0080bb0c  0c 10 94 e5                                      ldr r1, [r4, #0xc]
0080bb10  00 00 51 e3                                      cmp r1, #0
0080bb14  03 00 00 0a                                      beq #0x80bb28
0080bb18  07 00 a0 e1                                      mov r0, r7
0080bb1c  0a 20 a0 e1                                      mov r2, sl
0080bb20  eb ff ff eb                                      bl #0x80bad4
0080bb24  0c 00 8a e5                                      str r0, [sl, #0xc]
0080bb28  08 50 94 e5                                      ldr r5, [r4, #8]
0080bb2c  00 00 55 e3                                      cmp r5, #0
0080bb30  17 00 00 0a                                      beq #0x80bb94
0080bb34  0a 60 a0 e1                                      mov r6, sl
0080bb38  00 80 a0 e3                                      mov r8, #0
0080bb3c  07 00 a0 e1                                      mov r0, r7
0080bb40  be fe ff eb                                      bl #0x80b640
0080bb44  b0 31 d5 e1                                      ldrh r3, [r5, #0x10]
0080bb48  08 80 80 e5                                      str r8, [r0, #8]
0080bb4c  0c 80 80 e5                                      str r8, [r0, #0xc]
0080bb50  b0 31 c0 e1                                      strh r3, [r0, #0x10]
0080bb54  00 30 d5 e5                                      ldrb r3, [r5]
0080bb58  00 40 a0 e1                                      mov r4, r0
0080bb5c  04 20 a0 e1                                      mov r2, r4
0080bb60  00 30 c4 e5                                      strb r3, [r4]
0080bb64  08 40 86 e5                                      str r4, [r6, #8]
0080bb68  04 60 84 e5                                      str r6, [r4, #4]
0080bb6c  0c 30 95 e5                                      ldr r3, [r5, #0xc]
0080bb70  07 00 a0 e1                                      mov r0, r7
0080bb74  04 60 a0 e1                                      mov r6, r4
0080bb78  00 10 53 e2                                      subs r1, r3, #0
0080bb7c  01 00 00 0a                                      beq #0x80bb88
0080bb80  d3 ff ff eb                                      bl #0x80bad4
0080bb84  0c 00 84 e5                                      str r0, [r4, #0xc]
0080bb88  08 50 95 e5                                      ldr r5, [r5, #8]
0080bb8c  00 00 55 e3                                      cmp r5, #0
0080bb90  e9 ff ff 1a                                      bne #0x80bb3c
0080bb94  0a 00 a0 e1                                      mov r0, sl
0080bb98  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x0080bb9c, declared_size=120, range_size=120, mode=arm
; class-group: std::priv::_Rb_tree<unsigned short, std::less<unsigned short>, unsigned short, std::priv::_Identity<unsigned short>, std::priv::_SetTraitsT<unsigned short>, std::allocator<unsigned short> >
; alias: _ZNSt4priv8_Rb_treeItSt4lessItEtNS_9_IdentityItEENS_11_SetTraitsTItEESaItEEC1ERKS8_
; demangled: std::priv::_Rb_tree<unsigned short, std::less<unsigned short>, unsigned short, std::priv::_Identity<unsigned short>, std::priv::_SetTraitsT<unsigned short>, std::allocator<unsigned short> >::_Rb_tree(std::priv::_Rb_tree<unsigned short, std::less<unsigned short>, unsigned short, std::priv::_Identity<unsigned short>, std::priv::_SetTraitsT<unsigned short>, std::allocator<unsigned short> > const&)
; decoder-mode: arm
0080bb9c  70 40 2d e9                                      push {r4, r5, r6, lr}
0080bba0  00 30 a0 e3                                      mov r3, #0
0080bba4  00 40 a0 e1                                      mov r4, r0
0080bba8  10 30 80 e5                                      str r3, [r0, #0x10]
0080bbac  04 30 80 e5                                      str r3, [r0, #4]
0080bbb0  00 30 c0 e5                                      strb r3, [r0]
0080bbb4  08 00 84 e5                                      str r0, [r4, #8]
0080bbb8  0c 00 84 e5                                      str r0, [r4, #0xc]
0080bbbc  01 50 a0 e1                                      mov r5, r1
0080bbc0  04 10 91 e5                                      ldr r1, [r1, #4]
0080bbc4  03 00 51 e1                                      cmp r1, r3
0080bbc8  0d 00 00 0a                                      beq #0x80bc04
0080bbcc  00 20 a0 e1                                      mov r2, r0
0080bbd0  bf ff ff eb                                      bl #0x80bad4
0080bbd4  04 00 84 e5                                      str r0, [r4, #4]
0080bbd8  00 30 a0 e1                                      mov r3, r0
0080bbdc  03 20 a0 e1                                      mov r2, r3
0080bbe0  08 30 93 e5                                      ldr r3, [r3, #8]
0080bbe4  00 00 53 e3                                      cmp r3, #0
0080bbe8  fb ff ff 1a                                      bne #0x80bbdc
0080bbec  08 20 84 e5                                      str r2, [r4, #8]
0080bbf0  00 30 a0 e1                                      mov r3, r0
0080bbf4  0c 00 90 e5                                      ldr r0, [r0, #0xc]
0080bbf8  00 00 50 e3                                      cmp r0, #0
0080bbfc  fb ff ff 1a                                      bne #0x80bbf0
0080bc00  0c 30 84 e5                                      str r3, [r4, #0xc]
0080bc04  10 30 95 e5                                      ldr r3, [r5, #0x10]
0080bc08  04 00 a0 e1                                      mov r0, r4
0080bc0c  10 30 84 e5                                      str r3, [r4, #0x10]
0080bc10  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0080ce74, declared_size=168, range_size=168, mode=arm
; class-group: std::priv::_Rb_tree<unsigned short, std::less<unsigned short>, unsigned short, std::priv::_Identity<unsigned short>, std::priv::_SetTraitsT<unsigned short>, std::allocator<unsigned short> >
; alias: _ZNSt4priv8_Rb_treeItSt4lessItEtNS_9_IdentityItEENS_11_SetTraitsTItEESaItEEaSERKS8_
; demangled: std::priv::_Rb_tree<unsigned short, std::less<unsigned short>, unsigned short, std::priv::_Identity<unsigned short>, std::priv::_SetTraitsT<unsigned short>, std::allocator<unsigned short> >::operator=(std::priv::_Rb_tree<unsigned short, std::less<unsigned short>, unsigned short, std::priv::_Identity<unsigned short>, std::priv::_SetTraitsT<unsigned short>, std::allocator<unsigned short> > const&)
; decoder-mode: arm
0080ce74  01 00 50 e1                                      cmp r0, r1
0080ce78  70 40 2d e9                                      push {r4, r5, r6, lr}
0080ce7c  01 50 a0 e1                                      mov r5, r1
0080ce80  00 40 a0 e1                                      mov r4, r0
0080ce84  1b 00 00 0a                                      beq #0x80cef8
0080ce88  10 30 90 e5                                      ldr r3, [r0, #0x10]
0080ce8c  00 00 53 e3                                      cmp r3, #0
0080ce90  1a 00 00 1a                                      bne #0x80cf00
0080ce94  00 30 a0 e3                                      mov r3, #0
0080ce98  10 30 84 e5                                      str r3, [r4, #0x10]
0080ce9c  04 10 95 e5                                      ldr r1, [r5, #4]
0080cea0  03 00 51 e1                                      cmp r1, r3
0080cea4  04 10 84 05                                      streq r1, [r4, #4]
0080cea8  08 40 84 05                                      streq r4, [r4, #8]
0080ceac  0c 40 84 05                                      streq r4, [r4, #0xc]
0080ceb0  10 00 00 0a                                      beq #0x80cef8
0080ceb4  04 00 a0 e1                                      mov r0, r4
0080ceb8  04 20 a0 e1                                      mov r2, r4
0080cebc  04 fb ff eb                                      bl #0x80bad4
0080cec0  04 00 84 e5                                      str r0, [r4, #4]
0080cec4  00 30 a0 e1                                      mov r3, r0
0080cec8  03 20 a0 e1                                      mov r2, r3
0080cecc  08 30 93 e5                                      ldr r3, [r3, #8]
0080ced0  00 00 53 e3                                      cmp r3, #0
0080ced4  fb ff ff 1a                                      bne #0x80cec8
0080ced8  08 20 84 e5                                      str r2, [r4, #8]
0080cedc  00 30 a0 e1                                      mov r3, r0
0080cee0  0c 00 90 e5                                      ldr r0, [r0, #0xc]
0080cee4  00 00 50 e3                                      cmp r0, #0
0080cee8  fb ff ff 1a                                      bne #0x80cedc
0080ceec  0c 30 84 e5                                      str r3, [r4, #0xc]
0080cef0  10 30 95 e5                                      ldr r3, [r5, #0x10]
0080cef4  10 30 84 e5                                      str r3, [r4, #0x10]
0080cef8  04 00 a0 e1                                      mov r0, r4
0080cefc  70 80 bd e8                                      pop {r4, r5, r6, pc}
0080cf00  04 10 90 e5                                      ldr r1, [r0, #4]
0080cf04  22 f7 ff eb                                      bl #0x80ab94
0080cf08  00 30 a0 e3                                      mov r3, #0
0080cf0c  10 30 84 e5                                      str r3, [r4, #0x10]
0080cf10  18 00 84 e9                                      stmib r4, {r3, r4}
0080cf14  0c 40 84 e5                                      str r4, [r4, #0xc]
0080cf18  dd ff ff ea                                      b #0x80ce94

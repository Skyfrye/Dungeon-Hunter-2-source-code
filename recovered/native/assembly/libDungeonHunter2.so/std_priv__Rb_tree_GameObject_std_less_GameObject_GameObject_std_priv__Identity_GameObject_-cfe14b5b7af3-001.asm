; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0039806c, declared_size=60, range_size=60, mode=arm
; class-group: std::priv::_Rb_tree<GameObject*, std::less<GameObject*>, GameObject*, std::priv::_Identity<GameObject*>, std::priv::_SetTraitsT<GameObject*>, std::allocator<GameObject*> >
; alias: _ZNSt4priv8_Rb_treeIP10GameObjectSt4lessIS2_ES2_NS_9_IdentityIS2_EENS_11_SetTraitsTIS2_EESaIS2_EE5eraseENS_17_Rb_tree_iteratorIS2_S8_EE
; demangled: std::priv::_Rb_tree<GameObject*, std::less<GameObject*>, GameObject*, std::priv::_Identity<GameObject*>, std::priv::_SetTraitsT<GameObject*>, std::allocator<GameObject*> >::erase(std::priv::_Rb_tree_iterator<GameObject*, std::priv::_SetTraitsT<GameObject*> >)
; decoder-mode: arm
0039806c  10 40 2d e9                                      push {r4, lr}
00398070  00 40 a0 e1                                      mov r4, r0
00398074  08 20 84 e2                                      add r2, r4, #8
00398078  00 00 91 e5                                      ldr r0, [r1]
0039807c  0c 30 84 e2                                      add r3, r4, #0xc
00398080  04 10 84 e2                                      add r1, r4, #4
00398084  de 77 fe eb                                      bl #0x336004
00398088  00 00 50 e3                                      cmp r0, #0
0039808c  01 00 00 0a                                      beq #0x398098
00398090  14 10 a0 e3                                      mov r1, #0x14
00398094  99 c3 0d eb                                      bl #0x708f00
00398098  10 30 94 e5                                      ldr r3, [r4, #0x10]
0039809c  01 30 43 e2                                      sub r3, r3, #1
003980a0  10 30 84 e5                                      str r3, [r4, #0x10]
003980a4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003982ec, declared_size=288, range_size=288, mode=arm
; class-group: std::priv::_Rb_tree<GameObject*, std::less<GameObject*>, GameObject*, std::priv::_Identity<GameObject*>, std::priv::_SetTraitsT<GameObject*>, std::allocator<GameObject*> >
; alias: _ZNSt4priv8_Rb_treeIP10GameObjectSt4lessIS2_ES2_NS_9_IdentityIS2_EENS_11_SetTraitsTIS2_EESaIS2_EE9_M_insertEPNS_18_Rb_tree_node_baseERKS2_SC_SC_.clone.1
; demangled: std::priv::_Rb_tree<GameObject*, std::less<GameObject*>, GameObject*, std::priv::_Identity<GameObject*>, std::priv::_SetTraitsT<GameObject*>, std::allocator<GameObject*> >::_M_insert(std::priv::_Rb_tree_node_base*, GameObject* const&, std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*) [clone .clone.1]
; decoder-mode: arm
003982ec  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
003982f0  02 00 51 e1                                      cmp r1, r2
003982f4  0c d0 4d e2                                      sub sp, sp, #0xc
003982f8  01 40 a0 e1                                      mov r4, r1
003982fc  00 50 a0 e1                                      mov r5, r0
00398300  20 70 9d e5                                      ldr r7, [sp, #0x20]
00398304  12 00 00 0a                                      beq #0x398354
00398308  00 00 57 e3                                      cmp r7, #0
0039830c  2a 00 00 0a                                      beq #0x3983bc
00398310  04 00 a0 e1                                      mov r0, r4
00398314  04 20 8d e5                                      str r2, [sp, #4]
00398318  00 30 8d e5                                      str r3, [sp]
0039831c  ea ff ff eb                                      bl #0x3982cc
00398320  00 30 9d e5                                      ldr r3, [sp]
00398324  00 60 a0 e1                                      mov r6, r0
00398328  00 10 93 e5                                      ldr r1, [r3]
0039832c  00 30 a0 e3                                      mov r3, #0
00398330  0c 30 80 e5                                      str r3, [r0, #0xc]
00398334  10 10 80 e5                                      str r1, [r0, #0x10]
00398338  08 30 80 e5                                      str r3, [r0, #8]
0039833c  04 20 9d e5                                      ldr r2, [sp, #4]
00398340  08 00 82 e5                                      str r0, [r2, #8]
00398344  08 30 94 e5                                      ldr r3, [r4, #8]
00398348  03 00 52 e1                                      cmp r2, r3
0039834c  08 00 84 05                                      streq r0, [r4, #8]
00398350  0e 00 00 ea                                      b #0x398390
00398354  01 00 a0 e1                                      mov r0, r1
00398358  04 20 8d e5                                      str r2, [sp, #4]
0039835c  00 30 8d e5                                      str r3, [sp]
00398360  d9 ff ff eb                                      bl #0x3982cc
00398364  00 30 9d e5                                      ldr r3, [sp]
00398368  00 60 a0 e1                                      mov r6, r0
0039836c  00 10 93 e5                                      ldr r1, [r3]
00398370  00 30 a0 e3                                      mov r3, #0
00398374  0c 30 80 e5                                      str r3, [r0, #0xc]
00398378  10 10 80 e5                                      str r1, [r0, #0x10]
0039837c  08 30 80 e5                                      str r3, [r0, #8]
00398380  08 00 84 e5                                      str r0, [r4, #8]
00398384  04 00 84 e5                                      str r0, [r4, #4]
00398388  0c 00 84 e5                                      str r0, [r4, #0xc]
0039838c  04 20 9d e5                                      ldr r2, [sp, #4]
00398390  06 00 a0 e1                                      mov r0, r6
00398394  04 20 86 e5                                      str r2, [r6, #4]
00398398  04 10 84 e2                                      add r1, r4, #4
0039839c  ef ec fd eb                                      bl #0x313760
003983a0  10 30 94 e5                                      ldr r3, [r4, #0x10]
003983a4  05 00 a0 e1                                      mov r0, r5
003983a8  01 30 83 e2                                      add r3, r3, #1
003983ac  10 30 84 e5                                      str r3, [r4, #0x10]
003983b0  00 60 85 e5                                      str r6, [r5]
003983b4  0c d0 8d e2                                      add sp, sp, #0xc
003983b8  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
003983bc  00 00 93 e5                                      ldr r0, [r3]
003983c0  10 10 92 e5                                      ldr r1, [r2, #0x10]
003983c4  01 00 50 e1                                      cmp r0, r1
003983c8  d0 ff ff 3a                                      blo #0x398310
003983cc  04 00 a0 e1                                      mov r0, r4
003983d0  04 20 8d e5                                      str r2, [sp, #4]
003983d4  00 30 8d e5                                      str r3, [sp]
003983d8  bb ff ff eb                                      bl #0x3982cc
003983dc  00 30 9d e5                                      ldr r3, [sp]
003983e0  00 60 a0 e1                                      mov r6, r0
003983e4  00 30 93 e5                                      ldr r3, [r3]
003983e8  0c 70 80 e5                                      str r7, [r0, #0xc]
003983ec  08 70 80 e5                                      str r7, [r0, #8]
003983f0  10 30 80 e5                                      str r3, [r0, #0x10]
003983f4  04 20 9d e5                                      ldr r2, [sp, #4]
003983f8  0c 00 82 e5                                      str r0, [r2, #0xc]
003983fc  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00398400  03 00 52 e1                                      cmp r2, r3
00398404  0c 00 84 05                                      streq r0, [r4, #0xc]
00398408  e0 ff ff ea                                      b #0x398390

; FUNCTION 0x0039840c, declared_size=384, range_size=384, mode=arm
; class-group: std::priv::_Rb_tree<GameObject*, std::less<GameObject*>, GameObject*, std::priv::_Identity<GameObject*>, std::priv::_SetTraitsT<GameObject*>, std::allocator<GameObject*> >
; alias: _ZNSt4priv8_Rb_treeIP10GameObjectSt4lessIS2_ES2_NS_9_IdentityIS2_EENS_11_SetTraitsTIS2_EESaIS2_EE13insert_uniqueERKS2_
; demangled: std::priv::_Rb_tree<GameObject*, std::less<GameObject*>, GameObject*, std::priv::_Identity<GameObject*>, std::priv::_SetTraitsT<GameObject*>, std::allocator<GameObject*> >::insert_unique(GameObject* const&)
; decoder-mode: arm
0039840c  70 40 2d e9                                      push {r4, r5, r6, lr}
00398410  04 c0 91 e5                                      ldr ip, [r1, #4]
00398414  10 d0 4d e2                                      sub sp, sp, #0x10
00398418  00 40 a0 e1                                      mov r4, r0
0039841c  00 00 5c e3                                      cmp ip, #0
00398420  02 30 a0 e1                                      mov r3, r2
00398424  01 c0 a0 01                                      moveq ip, r1
00398428  15 00 00 0a                                      beq #0x398484
0039842c  00 60 92 e5                                      ldr r6, [r2]
00398430  00 00 00 ea                                      b #0x398438
00398434  02 c0 a0 e1                                      mov ip, r2
00398438  10 00 9c e5                                      ldr r0, [ip, #0x10]
0039843c  01 50 a0 e3                                      mov r5, #1
00398440  06 00 50 e1                                      cmp r0, r6
00398444  08 20 9c 85                                      ldrhi r2, [ip, #8]
00398448  0c 20 9c 95                                      ldrls r2, [ip, #0xc]
0039844c  00 50 a0 93                                      movls r5, #0
00398450  00 00 52 e3                                      cmp r2, #0
00398454  f6 ff ff 1a                                      bne #0x398434
00398458  00 00 55 e3                                      cmp r5, #0
0039845c  0c 50 a0 01                                      moveq r5, ip
00398460  07 00 00 1a                                      bne #0x398484
00398464  00 00 56 e1                                      cmp r6, r0
00398468  00 30 a0 93                                      movls r3, #0
0039846c  00 50 84 95                                      strls r5, [r4]
00398470  04 30 c4 95                                      strbls r3, [r4, #4]
00398474  1c 00 00 8a                                      bhi #0x3984ec
00398478  04 00 a0 e1                                      mov r0, r4
0039847c  10 d0 8d e2                                      add sp, sp, #0x10
00398480  70 80 bd e8                                      pop {r4, r5, r6, pc}
00398484  08 20 91 e5                                      ldr r2, [r1, #8]
00398488  02 00 5c e1                                      cmp ip, r2
0039848c  35 00 00 0a                                      beq #0x398568
00398490  00 20 dc e5                                      ldrb r2, [ip]
00398494  00 00 52 e3                                      cmp r2, #0
00398498  03 00 00 1a                                      bne #0x3984ac
0039849c  04 20 9c e5                                      ldr r2, [ip, #4]
003984a0  04 20 92 e5                                      ldr r2, [r2, #4]
003984a4  02 00 5c e1                                      cmp ip, r2
003984a8  29 00 00 0a                                      beq #0x398554
003984ac  08 00 9c e5                                      ldr r0, [ip, #8]
003984b0  00 00 50 e3                                      cmp r0, #0
003984b4  01 00 00 1a                                      bne #0x3984c0
003984b8  15 00 00 ea                                      b #0x398514
003984bc  02 00 a0 e1                                      mov r0, r2
003984c0  0c 20 90 e5                                      ldr r2, [r0, #0xc]
003984c4  00 00 52 e3                                      cmp r2, #0
003984c8  fb ff ff 1a                                      bne #0x3984bc
003984cc  00 60 93 e5                                      ldr r6, [r3]
003984d0  00 50 a0 e1                                      mov r5, r0
003984d4  10 00 90 e5                                      ldr r0, [r0, #0x10]
003984d8  00 00 56 e1                                      cmp r6, r0
003984dc  00 30 a0 93                                      movls r3, #0
003984e0  00 50 84 95                                      strls r5, [r4]
003984e4  04 30 c4 95                                      strbls r3, [r4, #4]
003984e8  e2 ff ff 9a                                      bls #0x398478
003984ec  0c 20 a0 e1                                      mov r2, ip
003984f0  08 00 8d e2                                      add r0, sp, #8
003984f4  00 c0 a0 e3                                      mov ip, #0
003984f8  00 c0 8d e5                                      str ip, [sp]
003984fc  7a ff ff eb                                      bl #0x3982ec
00398500  08 30 9d e5                                      ldr r3, [sp, #8]
00398504  01 20 a0 e3                                      mov r2, #1
00398508  04 20 c4 e5                                      strb r2, [r4, #4]
0039850c  00 30 84 e5                                      str r3, [r4]
00398510  d8 ff ff ea                                      b #0x398478
00398514  04 20 9c e5                                      ldr r2, [ip, #4]
00398518  08 00 92 e5                                      ldr r0, [r2, #8]
0039851c  00 00 5c e1                                      cmp ip, r0
00398520  02 50 a0 11                                      movne r5, r2
00398524  00 60 93 15                                      ldrne r6, [r3]
00398528  10 00 92 15                                      ldrne r0, [r2, #0x10]
0039852c  01 00 00 0a                                      beq #0x398538
00398530  cb ff ff ea                                      b #0x398464
00398534  05 20 a0 e1                                      mov r2, r5
00398538  04 50 92 e5                                      ldr r5, [r2, #4]
0039853c  08 00 95 e5                                      ldr r0, [r5, #8]
00398540  02 00 50 e1                                      cmp r0, r2
00398544  fa ff ff 0a                                      beq #0x398534
00398548  00 60 93 e5                                      ldr r6, [r3]
0039854c  10 00 95 e5                                      ldr r0, [r5, #0x10]
00398550  c3 ff ff ea                                      b #0x398464
00398554  0c 20 9c e5                                      ldr r2, [ip, #0xc]
00398558  00 60 93 e5                                      ldr r6, [r3]
0039855c  02 50 a0 e1                                      mov r5, r2
00398560  10 00 92 e5                                      ldr r0, [r2, #0x10]
00398564  be ff ff ea                                      b #0x398464
00398568  0c 20 a0 e1                                      mov r2, ip
0039856c  0c 00 8d e2                                      add r0, sp, #0xc
00398570  00 c0 8d e5                                      str ip, [sp]
00398574  5c ff ff eb                                      bl #0x3982ec
00398578  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0039857c  01 20 a0 e3                                      mov r2, #1
00398580  04 20 c4 e5                                      strb r2, [r4, #4]
00398584  00 30 84 e5                                      str r3, [r4]
00398588  ba ff ff ea                                      b #0x398478

; FUNCTION 0x0039861c, declared_size=56, range_size=56, mode=arm
; class-group: std::priv::_Rb_tree<GameObject*, std::less<GameObject*>, GameObject*, std::priv::_Identity<GameObject*>, std::priv::_SetTraitsT<GameObject*>, std::allocator<GameObject*> >
; alias: _ZNSt4priv8_Rb_treeIP10GameObjectSt4lessIS2_ES2_NS_9_IdentityIS2_EENS_11_SetTraitsTIS2_EESaIS2_EE8_M_eraseEPNS_18_Rb_tree_node_baseE
; demangled: std::priv::_Rb_tree<GameObject*, std::less<GameObject*>, GameObject*, std::priv::_Identity<GameObject*>, std::priv::_SetTraitsT<GameObject*>, std::allocator<GameObject*> >::_M_erase(std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
0039861c  70 40 2d e9                                      push {r4, r5, r6, lr}
00398620  00 40 51 e2                                      subs r4, r1, #0
00398624  00 60 a0 e1                                      mov r6, r0
00398628  08 00 00 0a                                      beq #0x398650
0039862c  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00398630  06 00 a0 e1                                      mov r0, r6
00398634  f8 ff ff eb                                      bl #0x39861c
00398638  08 50 94 e5                                      ldr r5, [r4, #8]
0039863c  04 00 a0 e1                                      mov r0, r4
00398640  14 10 a0 e3                                      mov r1, #0x14
00398644  2d c2 0d eb                                      bl #0x708f00
00398648  00 40 55 e2                                      subs r4, r5, #0
0039864c  f6 ff ff 1a                                      bne #0x39862c
00398650  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0039edbc, declared_size=288, range_size=288, mode=arm
; class-group: std::priv::_Rb_tree<GameObject*, std::less<GameObject*>, GameObject*, std::priv::_Identity<GameObject*>, std::priv::_SetTraitsT<GameObject*>, std::allocator<GameObject*> >
; alias: _ZNSt4priv8_Rb_treeIP10GameObjectSt4lessIS2_ES2_NS_9_IdentityIS2_EENS_11_SetTraitsTIS2_EESaIS2_EE9_M_insertEPNS_18_Rb_tree_node_baseERKS2_SC_SC_.clone.6
; demangled: std::priv::_Rb_tree<GameObject*, std::less<GameObject*>, GameObject*, std::priv::_Identity<GameObject*>, std::priv::_SetTraitsT<GameObject*>, std::allocator<GameObject*> >::_M_insert(std::priv::_Rb_tree_node_base*, GameObject* const&, std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*) [clone .clone.6]
; decoder-mode: arm
0039edbc  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0039edc0  02 00 51 e1                                      cmp r1, r2
0039edc4  0c d0 4d e2                                      sub sp, sp, #0xc
0039edc8  01 40 a0 e1                                      mov r4, r1
0039edcc  00 50 a0 e1                                      mov r5, r0
0039edd0  20 70 9d e5                                      ldr r7, [sp, #0x20]
0039edd4  12 00 00 0a                                      beq #0x39ee24
0039edd8  00 00 57 e3                                      cmp r7, #0
0039eddc  2a 00 00 0a                                      beq #0x39ee8c
0039ede0  04 00 a0 e1                                      mov r0, r4
0039ede4  04 20 8d e5                                      str r2, [sp, #4]
0039ede8  00 30 8d e5                                      str r3, [sp]
0039edec  ea ff ff eb                                      bl #0x39ed9c
0039edf0  00 30 9d e5                                      ldr r3, [sp]
0039edf4  00 60 a0 e1                                      mov r6, r0
0039edf8  00 10 93 e5                                      ldr r1, [r3]
0039edfc  00 30 a0 e3                                      mov r3, #0
0039ee00  0c 30 80 e5                                      str r3, [r0, #0xc]
0039ee04  10 10 80 e5                                      str r1, [r0, #0x10]
0039ee08  08 30 80 e5                                      str r3, [r0, #8]
0039ee0c  04 20 9d e5                                      ldr r2, [sp, #4]
0039ee10  08 00 82 e5                                      str r0, [r2, #8]
0039ee14  08 30 94 e5                                      ldr r3, [r4, #8]
0039ee18  03 00 52 e1                                      cmp r2, r3
0039ee1c  08 00 84 05                                      streq r0, [r4, #8]
0039ee20  0e 00 00 ea                                      b #0x39ee60
0039ee24  01 00 a0 e1                                      mov r0, r1
0039ee28  04 20 8d e5                                      str r2, [sp, #4]
0039ee2c  00 30 8d e5                                      str r3, [sp]
0039ee30  d9 ff ff eb                                      bl #0x39ed9c
0039ee34  00 30 9d e5                                      ldr r3, [sp]
0039ee38  00 60 a0 e1                                      mov r6, r0
0039ee3c  00 10 93 e5                                      ldr r1, [r3]
0039ee40  00 30 a0 e3                                      mov r3, #0
0039ee44  0c 30 80 e5                                      str r3, [r0, #0xc]
0039ee48  10 10 80 e5                                      str r1, [r0, #0x10]
0039ee4c  08 30 80 e5                                      str r3, [r0, #8]
0039ee50  08 00 84 e5                                      str r0, [r4, #8]
0039ee54  04 00 84 e5                                      str r0, [r4, #4]
0039ee58  0c 00 84 e5                                      str r0, [r4, #0xc]
0039ee5c  04 20 9d e5                                      ldr r2, [sp, #4]
0039ee60  06 00 a0 e1                                      mov r0, r6
0039ee64  04 20 86 e5                                      str r2, [r6, #4]
0039ee68  04 10 84 e2                                      add r1, r4, #4
0039ee6c  3b d2 fd eb                                      bl #0x313760
0039ee70  10 30 94 e5                                      ldr r3, [r4, #0x10]
0039ee74  05 00 a0 e1                                      mov r0, r5
0039ee78  01 30 83 e2                                      add r3, r3, #1
0039ee7c  10 30 84 e5                                      str r3, [r4, #0x10]
0039ee80  00 60 85 e5                                      str r6, [r5]
0039ee84  0c d0 8d e2                                      add sp, sp, #0xc
0039ee88  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0039ee8c  00 00 93 e5                                      ldr r0, [r3]
0039ee90  10 10 92 e5                                      ldr r1, [r2, #0x10]
0039ee94  01 00 50 e1                                      cmp r0, r1
0039ee98  d0 ff ff 3a                                      blo #0x39ede0
0039ee9c  04 00 a0 e1                                      mov r0, r4
0039eea0  04 20 8d e5                                      str r2, [sp, #4]
0039eea4  00 30 8d e5                                      str r3, [sp]
0039eea8  bb ff ff eb                                      bl #0x39ed9c
0039eeac  00 30 9d e5                                      ldr r3, [sp]
0039eeb0  00 60 a0 e1                                      mov r6, r0
0039eeb4  00 30 93 e5                                      ldr r3, [r3]
0039eeb8  0c 70 80 e5                                      str r7, [r0, #0xc]
0039eebc  08 70 80 e5                                      str r7, [r0, #8]
0039eec0  10 30 80 e5                                      str r3, [r0, #0x10]
0039eec4  04 20 9d e5                                      ldr r2, [sp, #4]
0039eec8  0c 00 82 e5                                      str r0, [r2, #0xc]
0039eecc  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0039eed0  03 00 52 e1                                      cmp r2, r3
0039eed4  0c 00 84 05                                      streq r0, [r4, #0xc]
0039eed8  e0 ff ff ea                                      b #0x39ee60

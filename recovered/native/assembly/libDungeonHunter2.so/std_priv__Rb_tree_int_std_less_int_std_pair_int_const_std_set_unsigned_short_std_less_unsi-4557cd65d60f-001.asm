; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0080abcc, declared_size=104, range_size=104, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > >, std::priv::_Select1st<std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > >, std::priv::_MapTraitsT<std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > >, std::allocator<std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > > >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKiSt3setItS1_ItESaItEEENS_10_Select1stIS9_EENS_11_MapTraitsTIS9_EESaIS9_EE8_M_eraseEPNS_18_Rb_tree_node_baseE
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > >, std::priv::_Select1st<std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > >, std::priv::_MapTraitsT<std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > >, std::allocator<std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > > >::_M_erase(std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
0080abcc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0080abd0  00 40 51 e2                                      subs r4, r1, #0
0080abd4  00 70 a0 e1                                      mov r7, r0
0080abd8  14 00 00 0a                                      beq #0x80ac30
0080abdc  00 80 a0 e3                                      mov r8, #0
0080abe0  0c 10 94 e5                                      ldr r1, [r4, #0xc]
0080abe4  07 00 a0 e1                                      mov r0, r7
0080abe8  f7 ff ff eb                                      bl #0x80abcc
0080abec  24 30 94 e5                                      ldr r3, [r4, #0x24]
0080abf0  08 50 94 e5                                      ldr r5, [r4, #8]
0080abf4  00 00 53 e3                                      cmp r3, #0
0080abf8  07 00 00 0a                                      beq #0x80ac1c
0080abfc  14 60 84 e2                                      add r6, r4, #0x14
0080ac00  18 10 94 e5                                      ldr r1, [r4, #0x18]
0080ac04  06 00 a0 e1                                      mov r0, r6
0080ac08  e1 ff ff eb                                      bl #0x80ab94
0080ac0c  20 60 84 e5                                      str r6, [r4, #0x20]
0080ac10  1c 60 84 e5                                      str r6, [r4, #0x1c]
0080ac14  18 80 84 e5                                      str r8, [r4, #0x18]
0080ac18  24 80 84 e5                                      str r8, [r4, #0x24]
0080ac1c  04 00 a0 e1                                      mov r0, r4
0080ac20  2c 10 a0 e3                                      mov r1, #0x2c
0080ac24  c3 cd 02 eb                                      bl #0x8be338
0080ac28  00 40 55 e2                                      subs r4, r5, #0
0080ac2c  eb ff ff 1a                                      bne #0x80abe0
0080ac30  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0080b5d4, declared_size=108, range_size=108, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > >, std::priv::_Select1st<std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > >, std::priv::_MapTraitsT<std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > >, std::allocator<std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > > >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKiSt3setItS1_ItESaItEEENS_10_Select1stIS9_EENS_11_MapTraitsTIS9_EESaIS9_EE5eraseENS_17_Rb_tree_iteratorIS9_SD_EE
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > >, std::priv::_Select1st<std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > >, std::priv::_MapTraitsT<std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > >, std::allocator<std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > > >::erase(std::priv::_Rb_tree_iterator<std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > >, std::priv::_MapTraitsT<std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > > >)
; decoder-mode: arm
0080b5d4  70 40 2d e9                                      push {r4, r5, r6, lr}
0080b5d8  00 40 a0 e1                                      mov r4, r0
0080b5dc  0c 30 84 e2                                      add r3, r4, #0xc
0080b5e0  00 00 91 e5                                      ldr r0, [r1]
0080b5e4  08 20 84 e2                                      add r2, r4, #8
0080b5e8  04 10 84 e2                                      add r1, r4, #4
0080b5ec  84 aa ec eb                                      bl #0x336004
0080b5f0  24 30 90 e5                                      ldr r3, [r0, #0x24]
0080b5f4  00 50 a0 e1                                      mov r5, r0
0080b5f8  00 00 53 e3                                      cmp r3, #0
0080b5fc  08 00 00 0a                                      beq #0x80b624
0080b600  14 60 80 e2                                      add r6, r0, #0x14
0080b604  06 00 a0 e1                                      mov r0, r6
0080b608  18 10 95 e5                                      ldr r1, [r5, #0x18]
0080b60c  60 fd ff eb                                      bl #0x80ab94
0080b610  00 30 a0 e3                                      mov r3, #0
0080b614  20 60 85 e5                                      str r6, [r5, #0x20]
0080b618  24 30 85 e5                                      str r3, [r5, #0x24]
0080b61c  1c 60 85 e5                                      str r6, [r5, #0x1c]
0080b620  18 30 85 e5                                      str r3, [r5, #0x18]
0080b624  05 00 a0 e1                                      mov r0, r5
0080b628  2c 10 a0 e3                                      mov r1, #0x2c
0080b62c  41 cb 02 eb                                      bl #0x8be338
0080b630  10 30 94 e5                                      ldr r3, [r4, #0x10]
0080b634  01 30 43 e2                                      sub r3, r3, #1
0080b638  10 30 84 e5                                      str r3, [r4, #0x10]
0080b63c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0080bc14, declared_size=76, range_size=76, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > >, std::priv::_Select1st<std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > >, std::priv::_MapTraitsT<std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > >, std::allocator<std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > > >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKiSt3setItS1_ItESaItEEENS_10_Select1stIS9_EENS_11_MapTraitsTIS9_EESaIS9_EE14_M_create_nodeERKS9_
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > >, std::priv::_Select1st<std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > >, std::priv::_MapTraitsT<std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > >, std::allocator<std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > > >::_M_create_node(std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > const&)
; decoder-mode: arm
0080bc14  30 40 2d e9                                      push {r4, r5, lr}
0080bc18  0c d0 4d e2                                      sub sp, sp, #0xc
0080bc1c  08 00 8d e2                                      add r0, sp, #8
0080bc20  2c 30 a0 e3                                      mov r3, #0x2c
0080bc24  04 30 20 e5                                      str r3, [r0, #-4]!
0080bc28  01 50 a0 e1                                      mov r5, r1
0080bc2c  b9 c9 02 eb                                      bl #0x8be318
0080bc30  05 10 a0 e1                                      mov r1, r5
0080bc34  04 30 91 e4                                      ldr r3, [r1], #4
0080bc38  00 40 a0 e1                                      mov r4, r0
0080bc3c  14 00 80 e2                                      add r0, r0, #0x14
0080bc40  10 30 84 e5                                      str r3, [r4, #0x10]
0080bc44  d4 ff ff eb                                      bl #0x80bb9c
0080bc48  00 30 a0 e3                                      mov r3, #0
0080bc4c  0c 30 84 e5                                      str r3, [r4, #0xc]
0080bc50  08 30 84 e5                                      str r3, [r4, #8]
0080bc54  04 00 a0 e1                                      mov r0, r4
0080bc58  0c d0 8d e2                                      add sp, sp, #0xc
0080bc5c  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x0080bc60, declared_size=216, range_size=216, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > >, std::priv::_Select1st<std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > >, std::priv::_MapTraitsT<std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > >, std::allocator<std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > > >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKiSt3setItS1_ItESaItEEENS_10_Select1stIS9_EENS_11_MapTraitsTIS9_EESaIS9_EE9_M_insertEPNS_18_Rb_tree_node_baseERKS9_SH_SH_
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > >, std::priv::_Select1st<std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > >, std::priv::_MapTraitsT<std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > >, std::allocator<std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > > >::_M_insert(std::priv::_Rb_tree_node_base*, std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > const&, std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
0080bc60  02 00 51 e1                                      cmp r1, r2
0080bc64  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0080bc68  01 40 a0 e1                                      mov r4, r1
0080bc6c  02 50 a0 e1                                      mov r5, r2
0080bc70  00 60 a0 e1                                      mov r6, r0
0080bc74  22 00 00 0a                                      beq #0x80bd04
0080bc78  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0080bc7c  00 00 52 e3                                      cmp r2, #0
0080bc80  11 00 00 0a                                      beq #0x80bccc
0080bc84  03 10 a0 e1                                      mov r1, r3
0080bc88  04 00 a0 e1                                      mov r0, r4
0080bc8c  e0 ff ff eb                                      bl #0x80bc14
0080bc90  0c 00 85 e5                                      str r0, [r5, #0xc]
0080bc94  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0080bc98  00 70 a0 e1                                      mov r7, r0
0080bc9c  03 00 55 e1                                      cmp r5, r3
0080bca0  15 00 00 0a                                      beq #0x80bcfc
0080bca4  07 00 a0 e1                                      mov r0, r7
0080bca8  04 50 87 e5                                      str r5, [r7, #4]
0080bcac  04 10 84 e2                                      add r1, r4, #4
0080bcb0  aa 1e ec eb                                      bl #0x313760
0080bcb4  10 30 94 e5                                      ldr r3, [r4, #0x10]
0080bcb8  06 00 a0 e1                                      mov r0, r6
0080bcbc  01 30 83 e2                                      add r3, r3, #1
0080bcc0  10 30 84 e5                                      str r3, [r4, #0x10]
0080bcc4  00 70 86 e5                                      str r7, [r6]
0080bcc8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0080bccc  18 20 9d e5                                      ldr r2, [sp, #0x18]
0080bcd0  00 00 52 e3                                      cmp r2, #0
0080bcd4  12 00 00 0a                                      beq #0x80bd24
0080bcd8  03 10 a0 e1                                      mov r1, r3
0080bcdc  04 00 a0 e1                                      mov r0, r4
0080bce0  cb ff ff eb                                      bl #0x80bc14
0080bce4  08 00 85 e5                                      str r0, [r5, #8]
0080bce8  08 30 94 e5                                      ldr r3, [r4, #8]
0080bcec  00 70 a0 e1                                      mov r7, r0
0080bcf0  03 00 55 e1                                      cmp r5, r3
0080bcf4  08 00 84 05                                      streq r0, [r4, #8]
0080bcf8  e9 ff ff ea                                      b #0x80bca4
0080bcfc  0c 70 84 e5                                      str r7, [r4, #0xc]
0080bd00  e7 ff ff ea                                      b #0x80bca4
0080bd04  03 10 a0 e1                                      mov r1, r3
0080bd08  04 00 a0 e1                                      mov r0, r4
0080bd0c  c0 ff ff eb                                      bl #0x80bc14
0080bd10  00 70 a0 e1                                      mov r7, r0
0080bd14  08 00 84 e5                                      str r0, [r4, #8]
0080bd18  04 00 84 e5                                      str r0, [r4, #4]
0080bd1c  0c 00 84 e5                                      str r0, [r4, #0xc]
0080bd20  df ff ff ea                                      b #0x80bca4
0080bd24  00 10 93 e5                                      ldr r1, [r3]
0080bd28  10 20 95 e5                                      ldr r2, [r5, #0x10]
0080bd2c  02 00 51 e1                                      cmp r1, r2
0080bd30  d3 ff ff aa                                      bge #0x80bc84
0080bd34  e7 ff ff ea                                      b #0x80bcd8

; FUNCTION 0x0080bd38, declared_size=392, range_size=392, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > >, std::priv::_Select1st<std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > >, std::priv::_MapTraitsT<std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > >, std::allocator<std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > > >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKiSt3setItS1_ItESaItEEENS_10_Select1stIS9_EENS_11_MapTraitsTIS9_EESaIS9_EE13insert_uniqueERKS9_
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > >, std::priv::_Select1st<std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > >, std::priv::_MapTraitsT<std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > >, std::allocator<std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > > >::insert_unique(std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > const&)
; decoder-mode: arm
0080bd38  70 40 2d e9                                      push {r4, r5, r6, lr}
0080bd3c  04 c0 91 e5                                      ldr ip, [r1, #4]
0080bd40  10 d0 4d e2                                      sub sp, sp, #0x10
0080bd44  00 40 a0 e1                                      mov r4, r0
0080bd48  00 00 5c e3                                      cmp ip, #0
0080bd4c  02 30 a0 e1                                      mov r3, r2
0080bd50  01 c0 a0 01                                      moveq ip, r1
0080bd54  15 00 00 0a                                      beq #0x80bdb0
0080bd58  00 60 92 e5                                      ldr r6, [r2]
0080bd5c  00 00 00 ea                                      b #0x80bd64
0080bd60  02 c0 a0 e1                                      mov ip, r2
0080bd64  10 00 9c e5                                      ldr r0, [ip, #0x10]
0080bd68  01 50 a0 e3                                      mov r5, #1
0080bd6c  06 00 50 e1                                      cmp r0, r6
0080bd70  08 20 9c c5                                      ldrgt r2, [ip, #8]
0080bd74  0c 20 9c d5                                      ldrle r2, [ip, #0xc]
0080bd78  00 50 a0 d3                                      movle r5, #0
0080bd7c  00 00 52 e3                                      cmp r2, #0
0080bd80  f6 ff ff 1a                                      bne #0x80bd60
0080bd84  00 00 55 e3                                      cmp r5, #0
0080bd88  0c 50 a0 01                                      moveq r5, ip
0080bd8c  07 00 00 1a                                      bne #0x80bdb0
0080bd90  00 00 56 e1                                      cmp r6, r0
0080bd94  00 30 a0 d3                                      movle r3, #0
0080bd98  00 50 84 d5                                      strle r5, [r4]
0080bd9c  04 30 c4 d5                                      strble r3, [r4, #4]
0080bda0  1c 00 00 ca                                      bgt #0x80be18
0080bda4  04 00 a0 e1                                      mov r0, r4
0080bda8  10 d0 8d e2                                      add sp, sp, #0x10
0080bdac  70 80 bd e8                                      pop {r4, r5, r6, pc}
0080bdb0  08 20 91 e5                                      ldr r2, [r1, #8]
0080bdb4  02 00 5c e1                                      cmp ip, r2
0080bdb8  36 00 00 0a                                      beq #0x80be98
0080bdbc  00 20 dc e5                                      ldrb r2, [ip]
0080bdc0  00 00 52 e3                                      cmp r2, #0
0080bdc4  03 00 00 1a                                      bne #0x80bdd8
0080bdc8  04 20 9c e5                                      ldr r2, [ip, #4]
0080bdcc  04 20 92 e5                                      ldr r2, [r2, #4]
0080bdd0  02 00 5c e1                                      cmp ip, r2
0080bdd4  2a 00 00 0a                                      beq #0x80be84
0080bdd8  08 00 9c e5                                      ldr r0, [ip, #8]
0080bddc  00 00 50 e3                                      cmp r0, #0
0080bde0  01 00 00 1a                                      bne #0x80bdec
0080bde4  16 00 00 ea                                      b #0x80be44
0080bde8  02 00 a0 e1                                      mov r0, r2
0080bdec  0c 20 90 e5                                      ldr r2, [r0, #0xc]
0080bdf0  00 00 52 e3                                      cmp r2, #0
0080bdf4  fb ff ff 1a                                      bne #0x80bde8
0080bdf8  00 60 93 e5                                      ldr r6, [r3]
0080bdfc  00 50 a0 e1                                      mov r5, r0
0080be00  10 00 90 e5                                      ldr r0, [r0, #0x10]
0080be04  00 00 56 e1                                      cmp r6, r0
0080be08  00 30 a0 d3                                      movle r3, #0
0080be0c  00 50 84 d5                                      strle r5, [r4]
0080be10  04 30 c4 d5                                      strble r3, [r4, #4]
0080be14  e2 ff ff da                                      ble #0x80bda4
0080be18  0c 20 a0 e1                                      mov r2, ip
0080be1c  08 00 8d e2                                      add r0, sp, #8
0080be20  00 c0 a0 e3                                      mov ip, #0
0080be24  04 c0 8d e5                                      str ip, [sp, #4]
0080be28  00 c0 8d e5                                      str ip, [sp]
0080be2c  8b ff ff eb                                      bl #0x80bc60
0080be30  08 30 9d e5                                      ldr r3, [sp, #8]
0080be34  01 20 a0 e3                                      mov r2, #1
0080be38  04 20 c4 e5                                      strb r2, [r4, #4]
0080be3c  00 30 84 e5                                      str r3, [r4]
0080be40  d7 ff ff ea                                      b #0x80bda4
0080be44  04 20 9c e5                                      ldr r2, [ip, #4]
0080be48  08 00 92 e5                                      ldr r0, [r2, #8]
0080be4c  00 00 5c e1                                      cmp ip, r0
0080be50  02 50 a0 11                                      movne r5, r2
0080be54  00 60 93 15                                      ldrne r6, [r3]
0080be58  10 00 92 15                                      ldrne r0, [r2, #0x10]
0080be5c  01 00 00 0a                                      beq #0x80be68
0080be60  ca ff ff ea                                      b #0x80bd90
0080be64  05 20 a0 e1                                      mov r2, r5
0080be68  04 50 92 e5                                      ldr r5, [r2, #4]
0080be6c  08 00 95 e5                                      ldr r0, [r5, #8]
0080be70  02 00 50 e1                                      cmp r0, r2
0080be74  fa ff ff 0a                                      beq #0x80be64
0080be78  00 60 93 e5                                      ldr r6, [r3]
0080be7c  10 00 95 e5                                      ldr r0, [r5, #0x10]
0080be80  c2 ff ff ea                                      b #0x80bd90
0080be84  0c 20 9c e5                                      ldr r2, [ip, #0xc]
0080be88  00 60 93 e5                                      ldr r6, [r3]
0080be8c  02 50 a0 e1                                      mov r5, r2
0080be90  10 00 92 e5                                      ldr r0, [r2, #0x10]
0080be94  bd ff ff ea                                      b #0x80bd90
0080be98  0c 20 a0 e1                                      mov r2, ip
0080be9c  00 e0 a0 e3                                      mov lr, #0
0080bea0  0c 00 8d e2                                      add r0, sp, #0xc
0080bea4  00 50 8d e8                                      stm sp, {ip, lr}
0080bea8  6c ff ff eb                                      bl #0x80bc60
0080beac  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0080beb0  01 20 a0 e3                                      mov r2, #1
0080beb4  04 20 c4 e5                                      strb r2, [r4, #4]
0080beb8  00 30 84 e5                                      str r3, [r4]
0080bebc  b8 ff ff ea                                      b #0x80bda4

; FUNCTION 0x0080bec0, declared_size=884, range_size=884, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > >, std::priv::_Select1st<std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > >, std::priv::_MapTraitsT<std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > >, std::allocator<std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > > >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKiSt3setItS1_ItESaItEEENS_10_Select1stIS9_EENS_11_MapTraitsTIS9_EESaIS9_EE13insert_uniqueENS_17_Rb_tree_iteratorIS9_SD_EERKS9_
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > >, std::priv::_Select1st<std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > >, std::priv::_MapTraitsT<std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > >, std::allocator<std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > > >::insert_unique(std::priv::_Rb_tree_iterator<std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > >, std::priv::_MapTraitsT<std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > > >, std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > const&)
; decoder-mode: arm
0080bec0  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0080bec4  00 40 92 e5                                      ldr r4, [r2]
0080bec8  08 20 91 e5                                      ldr r2, [r1, #8]
0080becc  2c d0 4d e2                                      sub sp, sp, #0x2c
0080bed0  01 50 a0 e1                                      mov r5, r1
0080bed4  02 00 54 e1                                      cmp r4, r2
0080bed8  00 70 a0 e1                                      mov r7, r0
0080bedc  03 60 a0 e1                                      mov r6, r3
0080bee0  5a 00 00 0a                                      beq #0x80c050
0080bee4  01 00 54 e1                                      cmp r4, r1
0080bee8  78 00 00 0a                                      beq #0x80c0d0
0080beec  00 30 d4 e5                                      ldrb r3, [r4]
0080bef0  00 00 53 e3                                      cmp r3, #0
0080bef4  3a 00 00 0a                                      beq #0x80bfe4
0080bef8  08 c0 94 e5                                      ldr ip, [r4, #8]
0080befc  00 00 5c e3                                      cmp ip, #0
0080bf00  01 00 00 1a                                      bne #0x80bf0c
0080bf04  3e 00 00 ea                                      b #0x80c004
0080bf08  03 c0 a0 e1                                      mov ip, r3
0080bf0c  0c 30 9c e5                                      ldr r3, [ip, #0xc]
0080bf10  00 00 53 e3                                      cmp r3, #0
0080bf14  fb ff ff 1a                                      bne #0x80bf08
0080bf18  00 20 96 e5                                      ldr r2, [r6]
0080bf1c  10 00 94 e5                                      ldr r0, [r4, #0x10]
0080bf20  00 00 52 e1                                      cmp r2, r0
0080bf24  00 10 a0 a3                                      movge r1, #0
0080bf28  01 10 a0 b3                                      movlt r1, #1
0080bf2c  00 00 51 e3                                      cmp r1, #0
0080bf30  1b 00 00 1a                                      bne #0x80bfa4
0080bf34  0c 80 94 e5                                      ldr r8, [r4, #0xc]
0080bf38  00 00 58 e3                                      cmp r8, #0
0080bf3c  7d 00 00 0a                                      beq #0x80c138
0080bf40  08 c0 a0 e1                                      mov ip, r8
0080bf44  00 00 00 ea                                      b #0x80bf4c
0080bf48  03 c0 a0 e1                                      mov ip, r3
0080bf4c  08 30 9c e5                                      ldr r3, [ip, #8]
0080bf50  00 00 53 e3                                      cmp r3, #0
0080bf54  fb ff ff 1a                                      bne #0x80bf48
0080bf58  00 00 51 e3                                      cmp r1, #0
0080bf5c  34 00 00 1a                                      bne #0x80c034
0080bf60  00 00 52 e1                                      cmp r2, r0
0080bf64  63 00 00 da                                      ble #0x80c0f8
0080bf68  0c 00 55 e1                                      cmp r5, ip
0080bf6c  02 00 00 0a                                      beq #0x80bf7c
0080bf70  10 30 9c e5                                      ldr r3, [ip, #0x10]
0080bf74  03 00 52 e1                                      cmp r2, r3
0080bf78  2d 00 00 aa                                      bge #0x80c034
0080bf7c  00 00 58 e3                                      cmp r8, #0
0080bf80  4a 00 00 1a                                      bne #0x80c0b0
0080bf84  05 10 a0 e1                                      mov r1, r5
0080bf88  04 20 a0 e1                                      mov r2, r4
0080bf8c  06 30 a0 e1                                      mov r3, r6
0080bf90  07 00 a0 e1                                      mov r0, r7
0080bf94  00 80 8d e5                                      str r8, [sp]
0080bf98  04 40 8d e5                                      str r4, [sp, #4]
0080bf9c  2f ff ff eb                                      bl #0x80bc60
0080bfa0  0c 00 00 ea                                      b #0x80bfd8
0080bfa4  10 30 9c e5                                      ldr r3, [ip, #0x10]
0080bfa8  03 00 52 e1                                      cmp r2, r3
0080bfac  e0 ff ff da                                      ble #0x80bf34
0080bfb0  0c e0 9c e5                                      ldr lr, [ip, #0xc]
0080bfb4  00 00 5e e3                                      cmp lr, #0
0080bfb8  56 00 00 0a                                      beq #0x80c118
0080bfbc  00 c0 a0 e3                                      mov ip, #0
0080bfc0  05 10 a0 e1                                      mov r1, r5
0080bfc4  04 20 a0 e1                                      mov r2, r4
0080bfc8  06 30 a0 e1                                      mov r3, r6
0080bfcc  07 00 a0 e1                                      mov r0, r7
0080bfd0  10 10 8d e8                                      stm sp, {r4, ip}
0080bfd4  21 ff ff eb                                      bl #0x80bc60
0080bfd8  07 00 a0 e1                                      mov r0, r7
0080bfdc  2c d0 8d e2                                      add sp, sp, #0x2c
0080bfe0  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0080bfe4  04 30 94 e5                                      ldr r3, [r4, #4]
0080bfe8  04 30 93 e5                                      ldr r3, [r3, #4]
0080bfec  03 00 54 e1                                      cmp r4, r3
0080bff0  0c c0 94 05                                      ldreq ip, [r4, #0xc]
0080bff4  c7 ff ff 0a                                      beq #0x80bf18
0080bff8  08 c0 94 e5                                      ldr ip, [r4, #8]
0080bffc  00 00 5c e3                                      cmp ip, #0
0080c000  c1 ff ff 1a                                      bne #0x80bf0c
0080c004  04 c0 94 e5                                      ldr ip, [r4, #4]
0080c008  08 30 9c e5                                      ldr r3, [ip, #8]
0080c00c  03 00 54 e1                                      cmp r4, r3
0080c010  01 00 00 0a                                      beq #0x80c01c
0080c014  bf ff ff ea                                      b #0x80bf18
0080c018  03 c0 a0 e1                                      mov ip, r3
0080c01c  04 30 9c e5                                      ldr r3, [ip, #4]
0080c020  08 20 93 e5                                      ldr r2, [r3, #8]
0080c024  0c 00 52 e1                                      cmp r2, ip
0080c028  fa ff ff 0a                                      beq #0x80c018
0080c02c  03 c0 a0 e1                                      mov ip, r3
0080c030  b8 ff ff ea                                      b #0x80bf18
0080c034  05 10 a0 e1                                      mov r1, r5
0080c038  06 20 a0 e1                                      mov r2, r6
0080c03c  08 00 8d e2                                      add r0, sp, #8
0080c040  3c ff ff eb                                      bl #0x80bd38
0080c044  08 30 9d e5                                      ldr r3, [sp, #8]
0080c048  00 30 87 e5                                      str r3, [r7]
0080c04c  e1 ff ff ea                                      b #0x80bfd8
0080c050  10 20 91 e5                                      ldr r2, [r1, #0x10]
0080c054  00 00 52 e3                                      cmp r2, #0
0080c058  52 00 00 0a                                      beq #0x80c1a8
0080c05c  00 20 93 e5                                      ldr r2, [r3]
0080c060  10 c0 94 e5                                      ldr ip, [r4, #0x10]
0080c064  0c 00 52 e1                                      cmp r2, ip
0080c068  54 00 00 ba                                      blt #0x80c1c0
0080c06c  21 00 00 da                                      ble #0x80c0f8
0080c070  0c e0 94 e5                                      ldr lr, [r4, #0xc]
0080c074  00 00 5e e3                                      cmp lr, #0
0080c078  3c 00 00 0a                                      beq #0x80c170
0080c07c  0e c0 a0 e1                                      mov ip, lr
0080c080  00 00 00 ea                                      b #0x80c088
0080c084  03 c0 a0 e1                                      mov ip, r3
0080c088  08 30 9c e5                                      ldr r3, [ip, #8]
0080c08c  00 00 53 e3                                      cmp r3, #0
0080c090  fb ff ff 1a                                      bne #0x80c084
0080c094  0c 00 55 e1                                      cmp r5, ip
0080c098  5c 00 00 0a                                      beq #0x80c210
0080c09c  10 30 9c e5                                      ldr r3, [ip, #0x10]
0080c0a0  03 00 52 e1                                      cmp r2, r3
0080c0a4  4a 00 00 aa                                      bge #0x80c1d4
0080c0a8  00 00 5e e3                                      cmp lr, #0
0080c0ac  4f 00 00 0a                                      beq #0x80c1f0
0080c0b0  00 e0 a0 e3                                      mov lr, #0
0080c0b4  05 10 a0 e1                                      mov r1, r5
0080c0b8  0c 20 a0 e1                                      mov r2, ip
0080c0bc  06 30 a0 e1                                      mov r3, r6
0080c0c0  07 00 a0 e1                                      mov r0, r7
0080c0c4  00 50 8d e8                                      stm sp, {ip, lr}
0080c0c8  e4 fe ff eb                                      bl #0x80bc60
0080c0cc  c1 ff ff ea                                      b #0x80bfd8
0080c0d0  0c 20 94 e5                                      ldr r2, [r4, #0xc]
0080c0d4  00 c0 93 e5                                      ldr ip, [r3]
0080c0d8  10 e0 92 e5                                      ldr lr, [r2, #0x10]
0080c0dc  0c 00 5e e1                                      cmp lr, ip
0080c0e0  06 00 00 aa                                      bge #0x80c100
0080c0e4  00 c0 a0 e3                                      mov ip, #0
0080c0e8  00 c0 8d e5                                      str ip, [sp]
0080c0ec  04 40 8d e5                                      str r4, [sp, #4]
0080c0f0  da fe ff eb                                      bl #0x80bc60
0080c0f4  b7 ff ff ea                                      b #0x80bfd8
0080c0f8  00 40 87 e5                                      str r4, [r7]
0080c0fc  b5 ff ff ea                                      b #0x80bfd8
0080c100  03 20 a0 e1                                      mov r2, r3
0080c104  10 00 8d e2                                      add r0, sp, #0x10
0080c108  0a ff ff eb                                      bl #0x80bd38
0080c10c  10 30 9d e5                                      ldr r3, [sp, #0x10]
0080c110  00 30 87 e5                                      str r3, [r7]
0080c114  af ff ff ea                                      b #0x80bfd8
0080c118  05 10 a0 e1                                      mov r1, r5
0080c11c  0c 20 a0 e1                                      mov r2, ip
0080c120  06 30 a0 e1                                      mov r3, r6
0080c124  07 00 a0 e1                                      mov r0, r7
0080c128  00 e0 8d e5                                      str lr, [sp]
0080c12c  04 c0 8d e5                                      str ip, [sp, #4]
0080c130  ca fe ff eb                                      bl #0x80bc60
0080c134  a7 ff ff ea                                      b #0x80bfd8
0080c138  04 30 94 e5                                      ldr r3, [r4, #4]
0080c13c  0c c0 93 e5                                      ldr ip, [r3, #0xc]
0080c140  0c 00 54 e1                                      cmp r4, ip
0080c144  04 c0 a0 11                                      movne ip, r4
0080c148  04 00 00 1a                                      bne #0x80c160
0080c14c  03 c0 a0 e1                                      mov ip, r3
0080c150  04 30 93 e5                                      ldr r3, [r3, #4]
0080c154  0c a0 93 e5                                      ldr sl, [r3, #0xc]
0080c158  0a 00 5c e1                                      cmp ip, sl
0080c15c  fa ff ff 0a                                      beq #0x80c14c
0080c160  0c a0 9c e5                                      ldr sl, [ip, #0xc]
0080c164  0a 00 53 e1                                      cmp r3, sl
0080c168  03 c0 a0 11                                      movne ip, r3
0080c16c  79 ff ff ea                                      b #0x80bf58
0080c170  04 30 94 e5                                      ldr r3, [r4, #4]
0080c174  0c 10 93 e5                                      ldr r1, [r3, #0xc]
0080c178  01 00 54 e1                                      cmp r4, r1
0080c17c  04 c0 a0 11                                      movne ip, r4
0080c180  04 00 00 1a                                      bne #0x80c198
0080c184  03 c0 a0 e1                                      mov ip, r3
0080c188  04 30 93 e5                                      ldr r3, [r3, #4]
0080c18c  0c 10 93 e5                                      ldr r1, [r3, #0xc]
0080c190  0c 00 51 e1                                      cmp r1, ip
0080c194  fa ff ff 0a                                      beq #0x80c184
0080c198  0c 10 9c e5                                      ldr r1, [ip, #0xc]
0080c19c  01 00 53 e1                                      cmp r3, r1
0080c1a0  03 c0 a0 11                                      movne ip, r3
0080c1a4  ba ff ff ea                                      b #0x80c094
0080c1a8  03 20 a0 e1                                      mov r2, r3
0080c1ac  20 00 8d e2                                      add r0, sp, #0x20
0080c1b0  e0 fe ff eb                                      bl #0x80bd38
0080c1b4  20 30 9d e5                                      ldr r3, [sp, #0x20]
0080c1b8  00 30 87 e5                                      str r3, [r7]
0080c1bc  85 ff ff ea                                      b #0x80bfd8
0080c1c0  00 c0 a0 e3                                      mov ip, #0
0080c1c4  04 20 a0 e1                                      mov r2, r4
0080c1c8  10 10 8d e8                                      stm sp, {r4, ip}
0080c1cc  a3 fe ff eb                                      bl #0x80bc60
0080c1d0  80 ff ff ea                                      b #0x80bfd8
0080c1d4  05 10 a0 e1                                      mov r1, r5
0080c1d8  06 20 a0 e1                                      mov r2, r6
0080c1dc  18 00 8d e2                                      add r0, sp, #0x18
0080c1e0  d4 fe ff eb                                      bl #0x80bd38
0080c1e4  18 30 9d e5                                      ldr r3, [sp, #0x18]
0080c1e8  00 30 87 e5                                      str r3, [r7]
0080c1ec  79 ff ff ea                                      b #0x80bfd8
0080c1f0  05 10 a0 e1                                      mov r1, r5
0080c1f4  04 20 a0 e1                                      mov r2, r4
0080c1f8  06 30 a0 e1                                      mov r3, r6
0080c1fc  07 00 a0 e1                                      mov r0, r7
0080c200  00 e0 8d e5                                      str lr, [sp]
0080c204  04 40 8d e5                                      str r4, [sp, #4]
0080c208  94 fe ff eb                                      bl #0x80bc60
0080c20c  71 ff ff ea                                      b #0x80bfd8
0080c210  00 c0 a0 e3                                      mov ip, #0
0080c214  05 10 a0 e1                                      mov r1, r5
0080c218  04 20 a0 e1                                      mov r2, r4
0080c21c  06 30 a0 e1                                      mov r3, r6
0080c220  07 00 a0 e1                                      mov r0, r7
0080c224  00 c0 8d e5                                      str ip, [sp]
0080c228  04 40 8d e5                                      str r4, [sp, #4]
0080c22c  8b fe ff eb                                      bl #0x80bc60
0080c230  68 ff ff ea                                      b #0x80bfd8

; FUNCTION 0x0080c234, declared_size=168, range_size=168, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > >, std::priv::_Select1st<std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > >, std::priv::_MapTraitsT<std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > >, std::allocator<std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > > >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKiSt3setItS1_ItESaItEEENS_10_Select1stIS9_EENS_11_MapTraitsTIS9_EESaIS9_EE7_M_copyEPNS_18_Rb_tree_node_baseESH_
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > >, std::priv::_Select1st<std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > >, std::priv::_MapTraitsT<std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > >, std::allocator<std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > > >::_M_copy(std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
0080c234  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0080c238  01 40 a0 e1                                      mov r4, r1
0080c23c  10 10 81 e2                                      add r1, r1, #0x10
0080c240  02 50 a0 e1                                      mov r5, r2
0080c244  00 70 a0 e1                                      mov r7, r0
0080c248  71 fe ff eb                                      bl #0x80bc14
0080c24c  00 30 d4 e5                                      ldrb r3, [r4]
0080c250  04 50 80 e5                                      str r5, [r0, #4]
0080c254  00 80 a0 e1                                      mov r8, r0
0080c258  00 30 c0 e5                                      strb r3, [r0]
0080c25c  0c 10 94 e5                                      ldr r1, [r4, #0xc]
0080c260  00 00 51 e3                                      cmp r1, #0
0080c264  03 00 00 0a                                      beq #0x80c278
0080c268  07 00 a0 e1                                      mov r0, r7
0080c26c  08 20 a0 e1                                      mov r2, r8
0080c270  ef ff ff eb                                      bl #0x80c234
0080c274  0c 00 88 e5                                      str r0, [r8, #0xc]
0080c278  08 50 94 e5                                      ldr r5, [r4, #8]
0080c27c  00 00 55 e3                                      cmp r5, #0
0080c280  13 00 00 0a                                      beq #0x80c2d4
0080c284  08 60 a0 e1                                      mov r6, r8
0080c288  10 10 85 e2                                      add r1, r5, #0x10
0080c28c  07 00 a0 e1                                      mov r0, r7
0080c290  5f fe ff eb                                      bl #0x80bc14
0080c294  00 30 d5 e5                                      ldrb r3, [r5]
0080c298  00 40 a0 e1                                      mov r4, r0
0080c29c  04 20 a0 e1                                      mov r2, r4
0080c2a0  00 30 c4 e5                                      strb r3, [r4]
0080c2a4  08 40 86 e5                                      str r4, [r6, #8]
0080c2a8  04 60 84 e5                                      str r6, [r4, #4]
0080c2ac  0c 30 95 e5                                      ldr r3, [r5, #0xc]
0080c2b0  07 00 a0 e1                                      mov r0, r7
0080c2b4  04 60 a0 e1                                      mov r6, r4
0080c2b8  00 10 53 e2                                      subs r1, r3, #0
0080c2bc  01 00 00 0a                                      beq #0x80c2c8
0080c2c0  db ff ff eb                                      bl #0x80c234
0080c2c4  0c 00 84 e5                                      str r0, [r4, #0xc]
0080c2c8  08 50 95 e5                                      ldr r5, [r5, #8]
0080c2cc  00 00 55 e3                                      cmp r5, #0
0080c2d0  ec ff ff 1a                                      bne #0x80c288
0080c2d4  08 00 a0 e1                                      mov r0, r8
0080c2d8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0080c2dc, declared_size=120, range_size=120, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > >, std::priv::_Select1st<std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > >, std::priv::_MapTraitsT<std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > >, std::allocator<std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > > >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKiSt3setItS1_ItESaItEEENS_10_Select1stIS9_EENS_11_MapTraitsTIS9_EESaIS9_EEC1ERKSF_
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > >, std::priv::_Select1st<std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > >, std::priv::_MapTraitsT<std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > >, std::allocator<std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > > >::_Rb_tree(std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > >, std::priv::_Select1st<std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > >, std::priv::_MapTraitsT<std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > >, std::allocator<std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > > > const&)
; decoder-mode: arm
0080c2dc  70 40 2d e9                                      push {r4, r5, r6, lr}
0080c2e0  00 30 a0 e3                                      mov r3, #0
0080c2e4  00 40 a0 e1                                      mov r4, r0
0080c2e8  10 30 80 e5                                      str r3, [r0, #0x10]
0080c2ec  04 30 80 e5                                      str r3, [r0, #4]
0080c2f0  00 30 c0 e5                                      strb r3, [r0]
0080c2f4  08 00 84 e5                                      str r0, [r4, #8]
0080c2f8  0c 00 84 e5                                      str r0, [r4, #0xc]
0080c2fc  01 50 a0 e1                                      mov r5, r1
0080c300  04 10 91 e5                                      ldr r1, [r1, #4]
0080c304  03 00 51 e1                                      cmp r1, r3
0080c308  0d 00 00 0a                                      beq #0x80c344
0080c30c  00 20 a0 e1                                      mov r2, r0
0080c310  c7 ff ff eb                                      bl #0x80c234
0080c314  04 00 84 e5                                      str r0, [r4, #4]
0080c318  00 30 a0 e1                                      mov r3, r0
0080c31c  03 20 a0 e1                                      mov r2, r3
0080c320  08 30 93 e5                                      ldr r3, [r3, #8]
0080c324  00 00 53 e3                                      cmp r3, #0
0080c328  fb ff ff 1a                                      bne #0x80c31c
0080c32c  08 20 84 e5                                      str r2, [r4, #8]
0080c330  00 30 a0 e1                                      mov r3, r0
0080c334  0c 00 90 e5                                      ldr r0, [r0, #0xc]
0080c338  00 00 50 e3                                      cmp r0, #0
0080c33c  fb ff ff 1a                                      bne #0x80c330
0080c340  0c 30 84 e5                                      str r3, [r4, #0xc]
0080c344  10 30 95 e5                                      ldr r3, [r5, #0x10]
0080c348  04 00 a0 e1                                      mov r0, r4
0080c34c  10 30 84 e5                                      str r3, [r4, #0x10]
0080c350  70 80 bd e8                                      pop {r4, r5, r6, pc}

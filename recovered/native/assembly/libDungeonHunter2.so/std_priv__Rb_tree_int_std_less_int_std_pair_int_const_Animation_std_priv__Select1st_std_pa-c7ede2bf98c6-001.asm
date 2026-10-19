; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00364df4, declared_size=148, range_size=148, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, Animation>, std::priv::_Select1st<std::pair<int const, Animation> >, std::priv::_MapTraitsT<std::pair<int const, Animation> >, glitch::core::SAllocator<std::pair<int const, Animation>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKi9AnimationENS_10_Select1stIS6_EENS_11_MapTraitsTIS6_EEN6glitch4core10SAllocatorIS6_LNSB_6memory13E_MEMORY_HINTE0EEEE14_M_create_nodeERKS6_
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, Animation>, std::priv::_Select1st<std::pair<int const, Animation> >, std::priv::_MapTraitsT<std::pair<int const, Animation> >, glitch::core::SAllocator<std::pair<int const, Animation>, (glitch::memory::E_MEMORY_HINT)0> >::_M_create_node(std::pair<int const, Animation> const&)
; decoder-mode: arm
00364df4  70 40 2d e9                                      push {r4, r5, r6, lr}
00364df8  44 00 a0 e3                                      mov r0, #0x44
00364dfc  01 50 a0 e1                                      mov r5, r1
00364e00  00 10 a0 e3                                      mov r1, #0
00364e04  d7 ad fe eb                                      bl #0x310568
00364e08  00 30 95 e5                                      ldr r3, [r5]
00364e0c  00 40 a0 e1                                      mov r4, r0
00364e10  14 00 80 e2                                      add r0, r0, #0x14
00364e14  10 30 84 e5                                      str r3, [r4, #0x10]
00364e18  24 00 84 e5                                      str r0, [r4, #0x24]
00364e1c  28 00 84 e5                                      str r0, [r4, #0x28]
00364e20  14 20 95 e5                                      ldr r2, [r5, #0x14]
00364e24  18 10 95 e5                                      ldr r1, [r5, #0x18]
00364e28  2e b2 fe eb                                      bl #0x3116e8
00364e2c  1c 30 95 e5                                      ldr r3, [r5, #0x1c]
00364e30  2c 30 84 e5                                      str r3, [r4, #0x2c]
00364e34  20 20 95 e5                                      ldr r2, [r5, #0x20]
00364e38  00 00 53 e3                                      cmp r3, #0
00364e3c  30 20 84 e5                                      str r2, [r4, #0x30]
00364e40  03 00 00 0a                                      beq #0x364e54
00364e44  04 20 93 e5                                      ldr r2, [r3, #4]
00364e48  00 00 52 e3                                      cmp r2, #0
00364e4c  01 20 82 12                                      addne r2, r2, #1
00364e50  04 20 83 15                                      strne r2, [r3, #4]
00364e54  24 20 95 e5                                      ldr r2, [r5, #0x24]
00364e58  00 30 a0 e3                                      mov r3, #0
00364e5c  04 00 a0 e1                                      mov r0, r4
00364e60  34 20 84 e5                                      str r2, [r4, #0x34]
00364e64  28 20 95 e5                                      ldr r2, [r5, #0x28]
00364e68  38 20 84 e5                                      str r2, [r4, #0x38]
00364e6c  2c 20 95 e5                                      ldr r2, [r5, #0x2c]
00364e70  3c 20 84 e5                                      str r2, [r4, #0x3c]
00364e74  30 20 95 e5                                      ldr r2, [r5, #0x30]
00364e78  0c 30 84 e5                                      str r3, [r4, #0xc]
00364e7c  08 30 84 e5                                      str r3, [r4, #8]
00364e80  40 20 84 e5                                      str r2, [r4, #0x40]
00364e84  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00364e88, declared_size=68, range_size=68, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, Animation>, std::priv::_Select1st<std::pair<int const, Animation> >, std::priv::_MapTraitsT<std::pair<int const, Animation> >, glitch::core::SAllocator<std::pair<int const, Animation>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKi9AnimationENS_10_Select1stIS6_EENS_11_MapTraitsTIS6_EEN6glitch4core10SAllocatorIS6_LNSB_6memory13E_MEMORY_HINTE0EEEE8_M_eraseEPNS_18_Rb_tree_node_baseE
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, Animation>, std::priv::_Select1st<std::pair<int const, Animation> >, std::priv::_MapTraitsT<std::pair<int const, Animation> >, glitch::core::SAllocator<std::pair<int const, Animation>, (glitch::memory::E_MEMORY_HINT)0> >::_M_erase(std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
00364e88  70 40 2d e9                                      push {r4, r5, r6, lr}
00364e8c  00 40 51 e2                                      subs r4, r1, #0
00364e90  00 50 a0 e1                                      mov r5, r0
00364e94  0b 00 00 0a                                      beq #0x364ec8
00364e98  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00364e9c  05 00 a0 e1                                      mov r0, r5
00364ea0  f8 ff ff eb                                      bl #0x364e88
00364ea4  08 60 94 e5                                      ldr r6, [r4, #8]
00364ea8  2c 00 84 e2                                      add r0, r4, #0x2c
00364eac  70 d1 0a eb                                      bl #0x619474
00364eb0  14 00 84 e2                                      add r0, r4, #0x14
00364eb4  bc ba fe eb                                      bl #0x3139ac
00364eb8  04 00 a0 e1                                      mov r0, r4
00364ebc  63 ad fe eb                                      bl #0x310450
00364ec0  00 40 56 e2                                      subs r4, r6, #0
00364ec4  f3 ff ff 1a                                      bne #0x364e98
00364ec8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00365004, declared_size=72, range_size=72, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, Animation>, std::priv::_Select1st<std::pair<int const, Animation> >, std::priv::_MapTraitsT<std::pair<int const, Animation> >, glitch::core::SAllocator<std::pair<int const, Animation>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKi9AnimationENS_10_Select1stIS6_EENS_11_MapTraitsTIS6_EEN6glitch4core10SAllocatorIS6_LNSB_6memory13E_MEMORY_HINTE0EEEE5eraseENS_17_Rb_tree_iteratorIS6_SA_EE
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, Animation>, std::priv::_Select1st<std::pair<int const, Animation> >, std::priv::_MapTraitsT<std::pair<int const, Animation> >, glitch::core::SAllocator<std::pair<int const, Animation>, (glitch::memory::E_MEMORY_HINT)0> >::erase(std::priv::_Rb_tree_iterator<std::pair<int const, Animation>, std::priv::_MapTraitsT<std::pair<int const, Animation> > >)
; decoder-mode: arm
00365004  70 40 2d e9                                      push {r4, r5, r6, lr}
00365008  00 40 a0 e1                                      mov r4, r0
0036500c  0c 30 84 e2                                      add r3, r4, #0xc
00365010  08 20 84 e2                                      add r2, r4, #8
00365014  00 00 91 e5                                      ldr r0, [r1]
00365018  04 10 84 e2                                      add r1, r4, #4
0036501c  f8 43 ff eb                                      bl #0x336004
00365020  00 50 a0 e1                                      mov r5, r0
00365024  2c 00 80 e2                                      add r0, r0, #0x2c
00365028  11 d1 0a eb                                      bl #0x619474
0036502c  14 00 85 e2                                      add r0, r5, #0x14
00365030  5d ba fe eb                                      bl #0x3139ac
00365034  05 00 a0 e1                                      mov r0, r5
00365038  04 ad fe eb                                      bl #0x310450
0036503c  10 30 94 e5                                      ldr r3, [r4, #0x10]
00365040  01 30 43 e2                                      sub r3, r3, #1
00365044  10 30 84 e5                                      str r3, [r4, #0x10]
00365048  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0036517c, declared_size=452, range_size=452, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, Animation>, std::priv::_Select1st<std::pair<int const, Animation> >, std::priv::_MapTraitsT<std::pair<int const, Animation> >, glitch::core::SAllocator<std::pair<int const, Animation>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKi9AnimationENS_10_Select1stIS6_EENS_11_MapTraitsTIS6_EEN6glitch4core10SAllocatorIS6_LNSB_6memory13E_MEMORY_HINTE0EEEE9_M_insertEPNS_18_Rb_tree_node_baseERKS6_SJ_SJ_
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, Animation>, std::priv::_Select1st<std::pair<int const, Animation> >, std::priv::_MapTraitsT<std::pair<int const, Animation> >, glitch::core::SAllocator<std::pair<int const, Animation>, (glitch::memory::E_MEMORY_HINT)0> >::_M_insert(std::priv::_Rb_tree_node_base*, std::pair<int const, Animation> const&, std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
0036517c  02 00 51 e1                                      cmp r1, r2
00365180  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00365184  01 40 a0 e1                                      mov r4, r1
00365188  02 50 a0 e1                                      mov r5, r2
0036518c  00 60 a0 e1                                      mov r6, r0
00365190  03 70 a0 e1                                      mov r7, r3
00365194  5c 00 00 0a                                      beq #0x36530c
00365198  24 30 9d e5                                      ldr r3, [sp, #0x24]
0036519c  00 00 53 e3                                      cmp r3, #0
003651a0  2f 00 00 0a                                      beq #0x365264
003651a4  00 10 a0 e3                                      mov r1, #0
003651a8  44 00 a0 e3                                      mov r0, #0x44
003651ac  ed ac fe eb                                      bl #0x310568
003651b0  00 30 97 e5                                      ldr r3, [r7]
003651b4  00 80 a0 e1                                      mov r8, r0
003651b8  14 00 80 e2                                      add r0, r0, #0x14
003651bc  10 30 88 e5                                      str r3, [r8, #0x10]
003651c0  24 00 88 e5                                      str r0, [r8, #0x24]
003651c4  28 00 88 e5                                      str r0, [r8, #0x28]
003651c8  14 20 97 e5                                      ldr r2, [r7, #0x14]
003651cc  18 10 97 e5                                      ldr r1, [r7, #0x18]
003651d0  44 b1 fe eb                                      bl #0x3116e8
003651d4  1c 30 97 e5                                      ldr r3, [r7, #0x1c]
003651d8  2c 30 88 e5                                      str r3, [r8, #0x2c]
003651dc  20 20 97 e5                                      ldr r2, [r7, #0x20]
003651e0  00 00 53 e3                                      cmp r3, #0
003651e4  30 20 88 e5                                      str r2, [r8, #0x30]
003651e8  03 00 00 0a                                      beq #0x3651fc
003651ec  04 20 93 e5                                      ldr r2, [r3, #4]
003651f0  00 00 52 e3                                      cmp r2, #0
003651f4  01 20 82 12                                      addne r2, r2, #1
003651f8  04 20 83 15                                      strne r2, [r3, #4]
003651fc  24 20 97 e5                                      ldr r2, [r7, #0x24]
00365200  00 30 a0 e3                                      mov r3, #0
00365204  08 a0 a0 e1                                      mov sl, r8
00365208  34 20 88 e5                                      str r2, [r8, #0x34]
0036520c  28 20 97 e5                                      ldr r2, [r7, #0x28]
00365210  38 20 88 e5                                      str r2, [r8, #0x38]
00365214  2c 20 97 e5                                      ldr r2, [r7, #0x2c]
00365218  3c 20 88 e5                                      str r2, [r8, #0x3c]
0036521c  30 20 97 e5                                      ldr r2, [r7, #0x30]
00365220  0c 30 88 e5                                      str r3, [r8, #0xc]
00365224  08 30 88 e5                                      str r3, [r8, #8]
00365228  40 20 88 e5                                      str r2, [r8, #0x40]
0036522c  0c 80 85 e5                                      str r8, [r5, #0xc]
00365230  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00365234  03 00 55 e1                                      cmp r5, r3
00365238  0c 80 84 05                                      streq r8, [r4, #0xc]
0036523c  0a 00 a0 e1                                      mov r0, sl
00365240  04 50 8a e5                                      str r5, [sl, #4]
00365244  04 10 84 e2                                      add r1, r4, #4
00365248  44 b9 fe eb                                      bl #0x313760
0036524c  10 30 94 e5                                      ldr r3, [r4, #0x10]
00365250  06 00 a0 e1                                      mov r0, r6
00365254  01 30 83 e2                                      add r3, r3, #1
00365258  10 30 84 e5                                      str r3, [r4, #0x10]
0036525c  00 a0 86 e5                                      str sl, [r6]
00365260  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00365264  20 30 9d e5                                      ldr r3, [sp, #0x20]
00365268  00 00 53 e3                                      cmp r3, #0
0036526c  2e 00 00 0a                                      beq #0x36532c
00365270  00 10 a0 e3                                      mov r1, #0
00365274  44 00 a0 e3                                      mov r0, #0x44
00365278  ba ac fe eb                                      bl #0x310568
0036527c  00 30 97 e5                                      ldr r3, [r7]
00365280  00 80 a0 e1                                      mov r8, r0
00365284  14 00 80 e2                                      add r0, r0, #0x14
00365288  10 30 88 e5                                      str r3, [r8, #0x10]
0036528c  24 00 88 e5                                      str r0, [r8, #0x24]
00365290  28 00 88 e5                                      str r0, [r8, #0x28]
00365294  14 20 97 e5                                      ldr r2, [r7, #0x14]
00365298  18 10 97 e5                                      ldr r1, [r7, #0x18]
0036529c  11 b1 fe eb                                      bl #0x3116e8
003652a0  1c 20 97 e5                                      ldr r2, [r7, #0x1c]
003652a4  2c 20 88 e5                                      str r2, [r8, #0x2c]
003652a8  20 30 97 e5                                      ldr r3, [r7, #0x20]
003652ac  00 00 52 e3                                      cmp r2, #0
003652b0  30 30 88 e5                                      str r3, [r8, #0x30]
003652b4  03 00 00 0a                                      beq #0x3652c8
003652b8  04 30 92 e5                                      ldr r3, [r2, #4]
003652bc  00 00 53 e3                                      cmp r3, #0
003652c0  01 30 83 12                                      addne r3, r3, #1
003652c4  04 30 82 15                                      strne r3, [r2, #4]
003652c8  24 20 97 e5                                      ldr r2, [r7, #0x24]
003652cc  00 30 a0 e3                                      mov r3, #0
003652d0  08 a0 a0 e1                                      mov sl, r8
003652d4  34 20 88 e5                                      str r2, [r8, #0x34]
003652d8  28 20 97 e5                                      ldr r2, [r7, #0x28]
003652dc  38 20 88 e5                                      str r2, [r8, #0x38]
003652e0  2c 20 97 e5                                      ldr r2, [r7, #0x2c]
003652e4  3c 20 88 e5                                      str r2, [r8, #0x3c]
003652e8  30 20 97 e5                                      ldr r2, [r7, #0x30]
003652ec  0c 30 88 e5                                      str r3, [r8, #0xc]
003652f0  08 30 88 e5                                      str r3, [r8, #8]
003652f4  40 20 88 e5                                      str r2, [r8, #0x40]
003652f8  08 80 85 e5                                      str r8, [r5, #8]
003652fc  08 30 94 e5                                      ldr r3, [r4, #8]
00365300  03 00 55 e1                                      cmp r5, r3
00365304  08 80 84 05                                      streq r8, [r4, #8]
00365308  cb ff ff ea                                      b #0x36523c
0036530c  03 10 a0 e1                                      mov r1, r3
00365310  04 00 a0 e1                                      mov r0, r4
00365314  b6 fe ff eb                                      bl #0x364df4
00365318  00 a0 a0 e1                                      mov sl, r0
0036531c  08 00 84 e5                                      str r0, [r4, #8]
00365320  04 00 84 e5                                      str r0, [r4, #4]
00365324  0c 00 84 e5                                      str r0, [r4, #0xc]
00365328  c3 ff ff ea                                      b #0x36523c
0036532c  00 20 97 e5                                      ldr r2, [r7]
00365330  10 30 95 e5                                      ldr r3, [r5, #0x10]
00365334  03 00 52 e1                                      cmp r2, r3
00365338  99 ff ff aa                                      bge #0x3651a4
0036533c  cb ff ff ea                                      b #0x365270

; FUNCTION 0x00365340, declared_size=392, range_size=392, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, Animation>, std::priv::_Select1st<std::pair<int const, Animation> >, std::priv::_MapTraitsT<std::pair<int const, Animation> >, glitch::core::SAllocator<std::pair<int const, Animation>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKi9AnimationENS_10_Select1stIS6_EENS_11_MapTraitsTIS6_EEN6glitch4core10SAllocatorIS6_LNSB_6memory13E_MEMORY_HINTE0EEEE13insert_uniqueERKS6_
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, Animation>, std::priv::_Select1st<std::pair<int const, Animation> >, std::priv::_MapTraitsT<std::pair<int const, Animation> >, glitch::core::SAllocator<std::pair<int const, Animation>, (glitch::memory::E_MEMORY_HINT)0> >::insert_unique(std::pair<int const, Animation> const&)
; decoder-mode: arm
00365340  70 40 2d e9                                      push {r4, r5, r6, lr}
00365344  04 c0 91 e5                                      ldr ip, [r1, #4]
00365348  10 d0 4d e2                                      sub sp, sp, #0x10
0036534c  00 40 a0 e1                                      mov r4, r0
00365350  00 00 5c e3                                      cmp ip, #0
00365354  02 30 a0 e1                                      mov r3, r2
00365358  01 c0 a0 01                                      moveq ip, r1
0036535c  15 00 00 0a                                      beq #0x3653b8
00365360  00 60 92 e5                                      ldr r6, [r2]
00365364  00 00 00 ea                                      b #0x36536c
00365368  02 c0 a0 e1                                      mov ip, r2
0036536c  10 00 9c e5                                      ldr r0, [ip, #0x10]
00365370  01 50 a0 e3                                      mov r5, #1
00365374  06 00 50 e1                                      cmp r0, r6
00365378  08 20 9c c5                                      ldrgt r2, [ip, #8]
0036537c  0c 20 9c d5                                      ldrle r2, [ip, #0xc]
00365380  00 50 a0 d3                                      movle r5, #0
00365384  00 00 52 e3                                      cmp r2, #0
00365388  f6 ff ff 1a                                      bne #0x365368
0036538c  00 00 55 e3                                      cmp r5, #0
00365390  0c 50 a0 01                                      moveq r5, ip
00365394  07 00 00 1a                                      bne #0x3653b8
00365398  00 00 56 e1                                      cmp r6, r0
0036539c  00 30 a0 d3                                      movle r3, #0
003653a0  00 50 84 d5                                      strle r5, [r4]
003653a4  04 30 c4 d5                                      strble r3, [r4, #4]
003653a8  1c 00 00 ca                                      bgt #0x365420
003653ac  04 00 a0 e1                                      mov r0, r4
003653b0  10 d0 8d e2                                      add sp, sp, #0x10
003653b4  70 80 bd e8                                      pop {r4, r5, r6, pc}
003653b8  08 20 91 e5                                      ldr r2, [r1, #8]
003653bc  02 00 5c e1                                      cmp ip, r2
003653c0  36 00 00 0a                                      beq #0x3654a0
003653c4  00 20 dc e5                                      ldrb r2, [ip]
003653c8  00 00 52 e3                                      cmp r2, #0
003653cc  03 00 00 1a                                      bne #0x3653e0
003653d0  04 20 9c e5                                      ldr r2, [ip, #4]
003653d4  04 20 92 e5                                      ldr r2, [r2, #4]
003653d8  02 00 5c e1                                      cmp ip, r2
003653dc  2a 00 00 0a                                      beq #0x36548c
003653e0  08 00 9c e5                                      ldr r0, [ip, #8]
003653e4  00 00 50 e3                                      cmp r0, #0
003653e8  01 00 00 1a                                      bne #0x3653f4
003653ec  16 00 00 ea                                      b #0x36544c
003653f0  02 00 a0 e1                                      mov r0, r2
003653f4  0c 20 90 e5                                      ldr r2, [r0, #0xc]
003653f8  00 00 52 e3                                      cmp r2, #0
003653fc  fb ff ff 1a                                      bne #0x3653f0
00365400  00 60 93 e5                                      ldr r6, [r3]
00365404  00 50 a0 e1                                      mov r5, r0
00365408  10 00 90 e5                                      ldr r0, [r0, #0x10]
0036540c  00 00 56 e1                                      cmp r6, r0
00365410  00 30 a0 d3                                      movle r3, #0
00365414  00 50 84 d5                                      strle r5, [r4]
00365418  04 30 c4 d5                                      strble r3, [r4, #4]
0036541c  e2 ff ff da                                      ble #0x3653ac
00365420  0c 20 a0 e1                                      mov r2, ip
00365424  08 00 8d e2                                      add r0, sp, #8
00365428  00 c0 a0 e3                                      mov ip, #0
0036542c  04 c0 8d e5                                      str ip, [sp, #4]
00365430  00 c0 8d e5                                      str ip, [sp]
00365434  50 ff ff eb                                      bl #0x36517c
00365438  08 30 9d e5                                      ldr r3, [sp, #8]
0036543c  01 20 a0 e3                                      mov r2, #1
00365440  04 20 c4 e5                                      strb r2, [r4, #4]
00365444  00 30 84 e5                                      str r3, [r4]
00365448  d7 ff ff ea                                      b #0x3653ac
0036544c  04 20 9c e5                                      ldr r2, [ip, #4]
00365450  08 00 92 e5                                      ldr r0, [r2, #8]
00365454  00 00 5c e1                                      cmp ip, r0
00365458  02 50 a0 11                                      movne r5, r2
0036545c  00 60 93 15                                      ldrne r6, [r3]
00365460  10 00 92 15                                      ldrne r0, [r2, #0x10]
00365464  01 00 00 0a                                      beq #0x365470
00365468  ca ff ff ea                                      b #0x365398
0036546c  05 20 a0 e1                                      mov r2, r5
00365470  04 50 92 e5                                      ldr r5, [r2, #4]
00365474  08 00 95 e5                                      ldr r0, [r5, #8]
00365478  02 00 50 e1                                      cmp r0, r2
0036547c  fa ff ff 0a                                      beq #0x36546c
00365480  00 60 93 e5                                      ldr r6, [r3]
00365484  10 00 95 e5                                      ldr r0, [r5, #0x10]
00365488  c2 ff ff ea                                      b #0x365398
0036548c  0c 20 9c e5                                      ldr r2, [ip, #0xc]
00365490  00 60 93 e5                                      ldr r6, [r3]
00365494  02 50 a0 e1                                      mov r5, r2
00365498  10 00 92 e5                                      ldr r0, [r2, #0x10]
0036549c  bd ff ff ea                                      b #0x365398
003654a0  0c 20 a0 e1                                      mov r2, ip
003654a4  00 e0 a0 e3                                      mov lr, #0
003654a8  0c 00 8d e2                                      add r0, sp, #0xc
003654ac  00 50 8d e8                                      stm sp, {ip, lr}
003654b0  31 ff ff eb                                      bl #0x36517c
003654b4  0c 30 9d e5                                      ldr r3, [sp, #0xc]
003654b8  01 20 a0 e3                                      mov r2, #1
003654bc  04 20 c4 e5                                      strb r2, [r4, #4]
003654c0  00 30 84 e5                                      str r3, [r4]
003654c4  b8 ff ff ea                                      b #0x3653ac

; FUNCTION 0x003654c8, declared_size=884, range_size=884, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, Animation>, std::priv::_Select1st<std::pair<int const, Animation> >, std::priv::_MapTraitsT<std::pair<int const, Animation> >, glitch::core::SAllocator<std::pair<int const, Animation>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKi9AnimationENS_10_Select1stIS6_EENS_11_MapTraitsTIS6_EEN6glitch4core10SAllocatorIS6_LNSB_6memory13E_MEMORY_HINTE0EEEE13insert_uniqueENS_17_Rb_tree_iteratorIS6_SA_EERKS6_
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, Animation>, std::priv::_Select1st<std::pair<int const, Animation> >, std::priv::_MapTraitsT<std::pair<int const, Animation> >, glitch::core::SAllocator<std::pair<int const, Animation>, (glitch::memory::E_MEMORY_HINT)0> >::insert_unique(std::priv::_Rb_tree_iterator<std::pair<int const, Animation>, std::priv::_MapTraitsT<std::pair<int const, Animation> > >, std::pair<int const, Animation> const&)
; decoder-mode: arm
003654c8  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
003654cc  00 40 92 e5                                      ldr r4, [r2]
003654d0  08 20 91 e5                                      ldr r2, [r1, #8]
003654d4  2c d0 4d e2                                      sub sp, sp, #0x2c
003654d8  01 50 a0 e1                                      mov r5, r1
003654dc  02 00 54 e1                                      cmp r4, r2
003654e0  00 70 a0 e1                                      mov r7, r0
003654e4  03 60 a0 e1                                      mov r6, r3
003654e8  5a 00 00 0a                                      beq #0x365658
003654ec  01 00 54 e1                                      cmp r4, r1
003654f0  78 00 00 0a                                      beq #0x3656d8
003654f4  00 30 d4 e5                                      ldrb r3, [r4]
003654f8  00 00 53 e3                                      cmp r3, #0
003654fc  3a 00 00 0a                                      beq #0x3655ec
00365500  08 c0 94 e5                                      ldr ip, [r4, #8]
00365504  00 00 5c e3                                      cmp ip, #0
00365508  01 00 00 1a                                      bne #0x365514
0036550c  3e 00 00 ea                                      b #0x36560c
00365510  03 c0 a0 e1                                      mov ip, r3
00365514  0c 30 9c e5                                      ldr r3, [ip, #0xc]
00365518  00 00 53 e3                                      cmp r3, #0
0036551c  fb ff ff 1a                                      bne #0x365510
00365520  00 20 96 e5                                      ldr r2, [r6]
00365524  10 00 94 e5                                      ldr r0, [r4, #0x10]
00365528  00 00 52 e1                                      cmp r2, r0
0036552c  00 10 a0 a3                                      movge r1, #0
00365530  01 10 a0 b3                                      movlt r1, #1
00365534  00 00 51 e3                                      cmp r1, #0
00365538  1b 00 00 1a                                      bne #0x3655ac
0036553c  0c 80 94 e5                                      ldr r8, [r4, #0xc]
00365540  00 00 58 e3                                      cmp r8, #0
00365544  7d 00 00 0a                                      beq #0x365740
00365548  08 c0 a0 e1                                      mov ip, r8
0036554c  00 00 00 ea                                      b #0x365554
00365550  03 c0 a0 e1                                      mov ip, r3
00365554  08 30 9c e5                                      ldr r3, [ip, #8]
00365558  00 00 53 e3                                      cmp r3, #0
0036555c  fb ff ff 1a                                      bne #0x365550
00365560  00 00 51 e3                                      cmp r1, #0
00365564  34 00 00 1a                                      bne #0x36563c
00365568  00 00 52 e1                                      cmp r2, r0
0036556c  63 00 00 da                                      ble #0x365700
00365570  0c 00 55 e1                                      cmp r5, ip
00365574  02 00 00 0a                                      beq #0x365584
00365578  10 30 9c e5                                      ldr r3, [ip, #0x10]
0036557c  03 00 52 e1                                      cmp r2, r3
00365580  2d 00 00 aa                                      bge #0x36563c
00365584  00 00 58 e3                                      cmp r8, #0
00365588  4a 00 00 1a                                      bne #0x3656b8
0036558c  05 10 a0 e1                                      mov r1, r5
00365590  04 20 a0 e1                                      mov r2, r4
00365594  06 30 a0 e1                                      mov r3, r6
00365598  07 00 a0 e1                                      mov r0, r7
0036559c  00 80 8d e5                                      str r8, [sp]
003655a0  04 40 8d e5                                      str r4, [sp, #4]
003655a4  f4 fe ff eb                                      bl #0x36517c
003655a8  0c 00 00 ea                                      b #0x3655e0
003655ac  10 30 9c e5                                      ldr r3, [ip, #0x10]
003655b0  03 00 52 e1                                      cmp r2, r3
003655b4  e0 ff ff da                                      ble #0x36553c
003655b8  0c e0 9c e5                                      ldr lr, [ip, #0xc]
003655bc  00 00 5e e3                                      cmp lr, #0
003655c0  56 00 00 0a                                      beq #0x365720
003655c4  00 c0 a0 e3                                      mov ip, #0
003655c8  05 10 a0 e1                                      mov r1, r5
003655cc  04 20 a0 e1                                      mov r2, r4
003655d0  06 30 a0 e1                                      mov r3, r6
003655d4  07 00 a0 e1                                      mov r0, r7
003655d8  10 10 8d e8                                      stm sp, {r4, ip}
003655dc  e6 fe ff eb                                      bl #0x36517c
003655e0  07 00 a0 e1                                      mov r0, r7
003655e4  2c d0 8d e2                                      add sp, sp, #0x2c
003655e8  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
003655ec  04 30 94 e5                                      ldr r3, [r4, #4]
003655f0  04 30 93 e5                                      ldr r3, [r3, #4]
003655f4  03 00 54 e1                                      cmp r4, r3
003655f8  0c c0 94 05                                      ldreq ip, [r4, #0xc]
003655fc  c7 ff ff 0a                                      beq #0x365520
00365600  08 c0 94 e5                                      ldr ip, [r4, #8]
00365604  00 00 5c e3                                      cmp ip, #0
00365608  c1 ff ff 1a                                      bne #0x365514
0036560c  04 c0 94 e5                                      ldr ip, [r4, #4]
00365610  08 30 9c e5                                      ldr r3, [ip, #8]
00365614  03 00 54 e1                                      cmp r4, r3
00365618  01 00 00 0a                                      beq #0x365624
0036561c  bf ff ff ea                                      b #0x365520
00365620  03 c0 a0 e1                                      mov ip, r3
00365624  04 30 9c e5                                      ldr r3, [ip, #4]
00365628  08 20 93 e5                                      ldr r2, [r3, #8]
0036562c  0c 00 52 e1                                      cmp r2, ip
00365630  fa ff ff 0a                                      beq #0x365620
00365634  03 c0 a0 e1                                      mov ip, r3
00365638  b8 ff ff ea                                      b #0x365520
0036563c  05 10 a0 e1                                      mov r1, r5
00365640  06 20 a0 e1                                      mov r2, r6
00365644  08 00 8d e2                                      add r0, sp, #8
00365648  3c ff ff eb                                      bl #0x365340
0036564c  08 30 9d e5                                      ldr r3, [sp, #8]
00365650  00 30 87 e5                                      str r3, [r7]
00365654  e1 ff ff ea                                      b #0x3655e0
00365658  10 20 91 e5                                      ldr r2, [r1, #0x10]
0036565c  00 00 52 e3                                      cmp r2, #0
00365660  52 00 00 0a                                      beq #0x3657b0
00365664  00 20 93 e5                                      ldr r2, [r3]
00365668  10 c0 94 e5                                      ldr ip, [r4, #0x10]
0036566c  0c 00 52 e1                                      cmp r2, ip
00365670  54 00 00 ba                                      blt #0x3657c8
00365674  21 00 00 da                                      ble #0x365700
00365678  0c e0 94 e5                                      ldr lr, [r4, #0xc]
0036567c  00 00 5e e3                                      cmp lr, #0
00365680  3c 00 00 0a                                      beq #0x365778
00365684  0e c0 a0 e1                                      mov ip, lr
00365688  00 00 00 ea                                      b #0x365690
0036568c  03 c0 a0 e1                                      mov ip, r3
00365690  08 30 9c e5                                      ldr r3, [ip, #8]
00365694  00 00 53 e3                                      cmp r3, #0
00365698  fb ff ff 1a                                      bne #0x36568c
0036569c  0c 00 55 e1                                      cmp r5, ip
003656a0  5c 00 00 0a                                      beq #0x365818
003656a4  10 30 9c e5                                      ldr r3, [ip, #0x10]
003656a8  03 00 52 e1                                      cmp r2, r3
003656ac  4a 00 00 aa                                      bge #0x3657dc
003656b0  00 00 5e e3                                      cmp lr, #0
003656b4  4f 00 00 0a                                      beq #0x3657f8
003656b8  00 e0 a0 e3                                      mov lr, #0
003656bc  05 10 a0 e1                                      mov r1, r5
003656c0  0c 20 a0 e1                                      mov r2, ip
003656c4  06 30 a0 e1                                      mov r3, r6
003656c8  07 00 a0 e1                                      mov r0, r7
003656cc  00 50 8d e8                                      stm sp, {ip, lr}
003656d0  a9 fe ff eb                                      bl #0x36517c
003656d4  c1 ff ff ea                                      b #0x3655e0
003656d8  0c 20 94 e5                                      ldr r2, [r4, #0xc]
003656dc  00 c0 93 e5                                      ldr ip, [r3]
003656e0  10 e0 92 e5                                      ldr lr, [r2, #0x10]
003656e4  0c 00 5e e1                                      cmp lr, ip
003656e8  06 00 00 aa                                      bge #0x365708
003656ec  00 c0 a0 e3                                      mov ip, #0
003656f0  00 c0 8d e5                                      str ip, [sp]
003656f4  04 40 8d e5                                      str r4, [sp, #4]
003656f8  9f fe ff eb                                      bl #0x36517c
003656fc  b7 ff ff ea                                      b #0x3655e0
00365700  00 40 87 e5                                      str r4, [r7]
00365704  b5 ff ff ea                                      b #0x3655e0
00365708  03 20 a0 e1                                      mov r2, r3
0036570c  10 00 8d e2                                      add r0, sp, #0x10
00365710  0a ff ff eb                                      bl #0x365340
00365714  10 30 9d e5                                      ldr r3, [sp, #0x10]
00365718  00 30 87 e5                                      str r3, [r7]
0036571c  af ff ff ea                                      b #0x3655e0
00365720  05 10 a0 e1                                      mov r1, r5
00365724  0c 20 a0 e1                                      mov r2, ip
00365728  06 30 a0 e1                                      mov r3, r6
0036572c  07 00 a0 e1                                      mov r0, r7
00365730  00 e0 8d e5                                      str lr, [sp]
00365734  04 c0 8d e5                                      str ip, [sp, #4]
00365738  8f fe ff eb                                      bl #0x36517c
0036573c  a7 ff ff ea                                      b #0x3655e0
00365740  04 30 94 e5                                      ldr r3, [r4, #4]
00365744  0c c0 93 e5                                      ldr ip, [r3, #0xc]
00365748  0c 00 54 e1                                      cmp r4, ip
0036574c  04 c0 a0 11                                      movne ip, r4
00365750  04 00 00 1a                                      bne #0x365768
00365754  03 c0 a0 e1                                      mov ip, r3
00365758  04 30 93 e5                                      ldr r3, [r3, #4]
0036575c  0c a0 93 e5                                      ldr sl, [r3, #0xc]
00365760  0a 00 5c e1                                      cmp ip, sl
00365764  fa ff ff 0a                                      beq #0x365754
00365768  0c a0 9c e5                                      ldr sl, [ip, #0xc]
0036576c  0a 00 53 e1                                      cmp r3, sl
00365770  03 c0 a0 11                                      movne ip, r3
00365774  79 ff ff ea                                      b #0x365560
00365778  04 30 94 e5                                      ldr r3, [r4, #4]
0036577c  0c 10 93 e5                                      ldr r1, [r3, #0xc]
00365780  01 00 54 e1                                      cmp r4, r1
00365784  04 c0 a0 11                                      movne ip, r4
00365788  04 00 00 1a                                      bne #0x3657a0
0036578c  03 c0 a0 e1                                      mov ip, r3
00365790  04 30 93 e5                                      ldr r3, [r3, #4]
00365794  0c 10 93 e5                                      ldr r1, [r3, #0xc]
00365798  0c 00 51 e1                                      cmp r1, ip
0036579c  fa ff ff 0a                                      beq #0x36578c
003657a0  0c 10 9c e5                                      ldr r1, [ip, #0xc]
003657a4  01 00 53 e1                                      cmp r3, r1
003657a8  03 c0 a0 11                                      movne ip, r3
003657ac  ba ff ff ea                                      b #0x36569c
003657b0  03 20 a0 e1                                      mov r2, r3
003657b4  20 00 8d e2                                      add r0, sp, #0x20
003657b8  e0 fe ff eb                                      bl #0x365340
003657bc  20 30 9d e5                                      ldr r3, [sp, #0x20]
003657c0  00 30 87 e5                                      str r3, [r7]
003657c4  85 ff ff ea                                      b #0x3655e0
003657c8  00 c0 a0 e3                                      mov ip, #0
003657cc  04 20 a0 e1                                      mov r2, r4
003657d0  10 10 8d e8                                      stm sp, {r4, ip}
003657d4  68 fe ff eb                                      bl #0x36517c
003657d8  80 ff ff ea                                      b #0x3655e0
003657dc  05 10 a0 e1                                      mov r1, r5
003657e0  06 20 a0 e1                                      mov r2, r6
003657e4  18 00 8d e2                                      add r0, sp, #0x18
003657e8  d4 fe ff eb                                      bl #0x365340
003657ec  18 30 9d e5                                      ldr r3, [sp, #0x18]
003657f0  00 30 87 e5                                      str r3, [r7]
003657f4  79 ff ff ea                                      b #0x3655e0
003657f8  05 10 a0 e1                                      mov r1, r5
003657fc  04 20 a0 e1                                      mov r2, r4
00365800  06 30 a0 e1                                      mov r3, r6
00365804  07 00 a0 e1                                      mov r0, r7
00365808  00 e0 8d e5                                      str lr, [sp]
0036580c  04 40 8d e5                                      str r4, [sp, #4]
00365810  59 fe ff eb                                      bl #0x36517c
00365814  71 ff ff ea                                      b #0x3655e0
00365818  00 c0 a0 e3                                      mov ip, #0
0036581c  05 10 a0 e1                                      mov r1, r5
00365820  04 20 a0 e1                                      mov r2, r4
00365824  06 30 a0 e1                                      mov r3, r6
00365828  07 00 a0 e1                                      mov r0, r7
0036582c  00 c0 8d e5                                      str ip, [sp]
00365830  04 40 8d e5                                      str r4, [sp, #4]
00365834  50 fe ff eb                                      bl #0x36517c
00365838  68 ff ff ea                                      b #0x3655e0

; FUNCTION 0x0047587c, declared_size=220, range_size=220, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, Animation>, std::priv::_Select1st<std::pair<int const, Animation> >, std::priv::_MapTraitsT<std::pair<int const, Animation> >, glitch::core::SAllocator<std::pair<int const, Animation>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKi9AnimationENS_10_Select1stIS6_EENS_11_MapTraitsTIS6_EEN6glitch4core10SAllocatorIS6_LNSB_6memory13E_MEMORY_HINTE0EEEE7_M_copyEPNS_18_Rb_tree_node_baseESJ_
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, Animation>, std::priv::_Select1st<std::pair<int const, Animation> >, std::priv::_MapTraitsT<std::pair<int const, Animation> >, glitch::core::SAllocator<std::pair<int const, Animation>, (glitch::memory::E_MEMORY_HINT)0> >::_M_copy(std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
0047587c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00475880  01 40 a0 e1                                      mov r4, r1
00475884  00 80 a0 e1                                      mov r8, r0
00475888  00 10 a0 e3                                      mov r1, #0
0047588c  44 00 a0 e3                                      mov r0, #0x44
00475890  02 50 a0 e1                                      mov r5, r2
00475894  33 6b fa eb                                      bl #0x310568
00475898  10 10 84 e2                                      add r1, r4, #0x10
0047589c  00 a0 a0 e1                                      mov sl, r0
004758a0  10 00 80 e2                                      add r0, r0, #0x10
004758a4  d6 ff ff eb                                      bl #0x475804
004758a8  00 30 a0 e3                                      mov r3, #0
004758ac  0c 30 8a e5                                      str r3, [sl, #0xc]
004758b0  08 30 8a e5                                      str r3, [sl, #8]
004758b4  00 30 d4 e5                                      ldrb r3, [r4]
004758b8  04 50 8a e5                                      str r5, [sl, #4]
004758bc  00 30 ca e5                                      strb r3, [sl]
004758c0  0c 10 94 e5                                      ldr r1, [r4, #0xc]
004758c4  00 00 51 e3                                      cmp r1, #0
004758c8  03 00 00 0a                                      beq #0x4758dc
004758cc  08 00 a0 e1                                      mov r0, r8
004758d0  0a 20 a0 e1                                      mov r2, sl
004758d4  e8 ff ff eb                                      bl #0x47587c
004758d8  0c 00 8a e5                                      str r0, [sl, #0xc]
004758dc  08 50 94 e5                                      ldr r5, [r4, #8]
004758e0  00 00 55 e3                                      cmp r5, #0
004758e4  19 00 00 0a                                      beq #0x475950
004758e8  0a 60 a0 e1                                      mov r6, sl
004758ec  00 70 a0 e3                                      mov r7, #0
004758f0  00 10 a0 e3                                      mov r1, #0
004758f4  44 00 a0 e3                                      mov r0, #0x44
004758f8  1a 6b fa eb                                      bl #0x310568
004758fc  10 10 85 e2                                      add r1, r5, #0x10
00475900  00 40 a0 e1                                      mov r4, r0
00475904  10 00 80 e2                                      add r0, r0, #0x10
00475908  bd ff ff eb                                      bl #0x475804
0047590c  08 70 84 e5                                      str r7, [r4, #8]
00475910  0c 70 84 e5                                      str r7, [r4, #0xc]
00475914  00 30 d5 e5                                      ldrb r3, [r5]
00475918  08 00 a0 e1                                      mov r0, r8
0047591c  04 20 a0 e1                                      mov r2, r4
00475920  00 30 c4 e5                                      strb r3, [r4]
00475924  08 40 86 e5                                      str r4, [r6, #8]
00475928  04 60 84 e5                                      str r6, [r4, #4]
0047592c  0c 30 95 e5                                      ldr r3, [r5, #0xc]
00475930  04 60 a0 e1                                      mov r6, r4
00475934  00 10 53 e2                                      subs r1, r3, #0
00475938  01 00 00 0a                                      beq #0x475944
0047593c  ce ff ff eb                                      bl #0x47587c
00475940  0c 00 84 e5                                      str r0, [r4, #0xc]
00475944  08 50 95 e5                                      ldr r5, [r5, #8]
00475948  00 00 55 e3                                      cmp r5, #0
0047594c  e7 ff ff 1a                                      bne #0x4758f0
00475950  0a 00 a0 e1                                      mov r0, sl
00475954  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x00475958, declared_size=120, range_size=120, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, Animation>, std::priv::_Select1st<std::pair<int const, Animation> >, std::priv::_MapTraitsT<std::pair<int const, Animation> >, glitch::core::SAllocator<std::pair<int const, Animation>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKi9AnimationENS_10_Select1stIS6_EENS_11_MapTraitsTIS6_EEN6glitch4core10SAllocatorIS6_LNSB_6memory13E_MEMORY_HINTE0EEEEC1ERKSH_
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, Animation>, std::priv::_Select1st<std::pair<int const, Animation> >, std::priv::_MapTraitsT<std::pair<int const, Animation> >, glitch::core::SAllocator<std::pair<int const, Animation>, (glitch::memory::E_MEMORY_HINT)0> >::_Rb_tree(std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, Animation>, std::priv::_Select1st<std::pair<int const, Animation> >, std::priv::_MapTraitsT<std::pair<int const, Animation> >, glitch::core::SAllocator<std::pair<int const, Animation>, (glitch::memory::E_MEMORY_HINT)0> > const&)
; decoder-mode: arm
00475958  70 40 2d e9                                      push {r4, r5, r6, lr}
0047595c  00 30 a0 e3                                      mov r3, #0
00475960  00 40 a0 e1                                      mov r4, r0
00475964  10 30 80 e5                                      str r3, [r0, #0x10]
00475968  04 30 80 e5                                      str r3, [r0, #4]
0047596c  00 30 c0 e5                                      strb r3, [r0]
00475970  08 00 84 e5                                      str r0, [r4, #8]
00475974  0c 00 84 e5                                      str r0, [r4, #0xc]
00475978  01 50 a0 e1                                      mov r5, r1
0047597c  04 10 91 e5                                      ldr r1, [r1, #4]
00475980  03 00 51 e1                                      cmp r1, r3
00475984  0d 00 00 0a                                      beq #0x4759c0
00475988  00 20 a0 e1                                      mov r2, r0
0047598c  ba ff ff eb                                      bl #0x47587c
00475990  04 00 84 e5                                      str r0, [r4, #4]
00475994  00 30 a0 e1                                      mov r3, r0
00475998  03 20 a0 e1                                      mov r2, r3
0047599c  08 30 93 e5                                      ldr r3, [r3, #8]
004759a0  00 00 53 e3                                      cmp r3, #0
004759a4  fb ff ff 1a                                      bne #0x475998
004759a8  08 20 84 e5                                      str r2, [r4, #8]
004759ac  00 30 a0 e1                                      mov r3, r0
004759b0  0c 00 90 e5                                      ldr r0, [r0, #0xc]
004759b4  00 00 50 e3                                      cmp r0, #0
004759b8  fb ff ff 1a                                      bne #0x4759ac
004759bc  0c 30 84 e5                                      str r3, [r4, #0xc]
004759c0  10 30 95 e5                                      ldr r3, [r5, #0x10]
004759c4  04 00 a0 e1                                      mov r0, r4
004759c8  10 30 84 e5                                      str r3, [r4, #0x10]
004759cc  70 80 bd e8                                      pop {r4, r5, r6, pc}

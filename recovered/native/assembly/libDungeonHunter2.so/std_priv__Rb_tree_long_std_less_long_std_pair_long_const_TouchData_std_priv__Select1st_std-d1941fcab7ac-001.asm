; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003824a0, declared_size=60, range_size=60, mode=arm
; class-group: std::priv::_Rb_tree<long, std::less<long>, std::pair<long const, TouchData>, std::priv::_Select1st<std::pair<long const, TouchData> >, std::priv::_MapTraitsT<std::pair<long const, TouchData> >, std::allocator<std::pair<long const, TouchData> > >
; alias: _ZNSt4priv8_Rb_treeIlSt4lessIlESt4pairIKl9TouchDataENS_10_Select1stIS6_EENS_11_MapTraitsTIS6_EESaIS6_EE5eraseENS_17_Rb_tree_iteratorIS6_SA_EE
; demangled: std::priv::_Rb_tree<long, std::less<long>, std::pair<long const, TouchData>, std::priv::_Select1st<std::pair<long const, TouchData> >, std::priv::_MapTraitsT<std::pair<long const, TouchData> >, std::allocator<std::pair<long const, TouchData> > >::erase(std::priv::_Rb_tree_iterator<std::pair<long const, TouchData>, std::priv::_MapTraitsT<std::pair<long const, TouchData> > >)
; decoder-mode: arm
003824a0  10 40 2d e9                                      push {r4, lr}
003824a4  00 40 a0 e1                                      mov r4, r0
003824a8  08 20 84 e2                                      add r2, r4, #8
003824ac  00 00 91 e5                                      ldr r0, [r1]
003824b0  0c 30 84 e2                                      add r3, r4, #0xc
003824b4  04 10 84 e2                                      add r1, r4, #4
003824b8  d1 ce fe eb                                      bl #0x336004
003824bc  00 00 50 e3                                      cmp r0, #0
003824c0  01 00 00 0a                                      beq #0x3824cc
003824c4  1c 10 a0 e3                                      mov r1, #0x1c
003824c8  8c 1a 0e eb                                      bl #0x708f00
003824cc  10 30 94 e5                                      ldr r3, [r4, #0x10]
003824d0  01 30 43 e2                                      sub r3, r3, #1
003824d4  10 30 84 e5                                      str r3, [r4, #0x10]
003824d8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003824fc, declared_size=316, range_size=316, mode=arm
; class-group: std::priv::_Rb_tree<long, std::less<long>, std::pair<long const, TouchData>, std::priv::_Select1st<std::pair<long const, TouchData> >, std::priv::_MapTraitsT<std::pair<long const, TouchData> >, std::allocator<std::pair<long const, TouchData> > >
; alias: _ZNSt4priv8_Rb_treeIlSt4lessIlESt4pairIKl9TouchDataENS_10_Select1stIS6_EENS_11_MapTraitsTIS6_EESaIS6_EE9_M_insertEPNS_18_Rb_tree_node_baseERKS6_SE_SE_
; demangled: std::priv::_Rb_tree<long, std::less<long>, std::pair<long const, TouchData>, std::priv::_Select1st<std::pair<long const, TouchData> >, std::priv::_MapTraitsT<std::pair<long const, TouchData> >, std::allocator<std::pair<long const, TouchData> > >::_M_insert(std::priv::_Rb_tree_node_base*, std::pair<long const, TouchData> const&, std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
003824fc  02 00 51 e1                                      cmp r1, r2
00382500  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00382504  01 40 a0 e1                                      mov r4, r1
00382508  02 70 a0 e1                                      mov r7, r2
0038250c  00 50 a0 e1                                      mov r5, r0
00382510  03 80 a0 e1                                      mov r8, r3
00382514  32 00 00 0a                                      beq #0x3825e4
00382518  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
0038251c  00 00 53 e3                                      cmp r3, #0
00382520  19 00 00 0a                                      beq #0x38258c
00382524  04 00 a0 e1                                      mov r0, r4
00382528  eb ff ff eb                                      bl #0x3824dc
0038252c  00 20 98 e5                                      ldr r2, [r8]
00382530  00 30 a0 e3                                      mov r3, #0
00382534  00 60 a0 e1                                      mov r6, r0
00382538  10 20 80 e5                                      str r2, [r0, #0x10]
0038253c  04 20 98 e5                                      ldr r2, [r8, #4]
00382540  14 20 80 e5                                      str r2, [r0, #0x14]
00382544  08 20 98 e5                                      ldr r2, [r8, #8]
00382548  0c 30 80 e5                                      str r3, [r0, #0xc]
0038254c  08 30 80 e5                                      str r3, [r0, #8]
00382550  18 20 80 e5                                      str r2, [r0, #0x18]
00382554  0c 00 87 e5                                      str r0, [r7, #0xc]
00382558  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0038255c  03 00 57 e1                                      cmp r7, r3
00382560  1d 00 00 0a                                      beq #0x3825dc
00382564  06 00 a0 e1                                      mov r0, r6
00382568  04 70 86 e5                                      str r7, [r6, #4]
0038256c  04 10 84 e2                                      add r1, r4, #4
00382570  7a 44 fe eb                                      bl #0x313760
00382574  10 30 94 e5                                      ldr r3, [r4, #0x10]
00382578  05 00 a0 e1                                      mov r0, r5
0038257c  01 30 83 e2                                      add r3, r3, #1
00382580  10 30 84 e5                                      str r3, [r4, #0x10]
00382584  00 60 85 e5                                      str r6, [r5]
00382588  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0038258c  18 30 9d e5                                      ldr r3, [sp, #0x18]
00382590  00 00 53 e3                                      cmp r3, #0
00382594  22 00 00 0a                                      beq #0x382624
00382598  04 00 a0 e1                                      mov r0, r4
0038259c  ce ff ff eb                                      bl #0x3824dc
003825a0  00 20 98 e5                                      ldr r2, [r8]
003825a4  00 30 a0 e3                                      mov r3, #0
003825a8  00 60 a0 e1                                      mov r6, r0
003825ac  10 20 80 e5                                      str r2, [r0, #0x10]
003825b0  04 20 98 e5                                      ldr r2, [r8, #4]
003825b4  14 20 80 e5                                      str r2, [r0, #0x14]
003825b8  08 20 98 e5                                      ldr r2, [r8, #8]
003825bc  0c 30 80 e5                                      str r3, [r0, #0xc]
003825c0  08 30 80 e5                                      str r3, [r0, #8]
003825c4  18 20 80 e5                                      str r2, [r0, #0x18]
003825c8  08 00 87 e5                                      str r0, [r7, #8]
003825cc  08 30 94 e5                                      ldr r3, [r4, #8]
003825d0  03 00 57 e1                                      cmp r7, r3
003825d4  08 00 84 05                                      streq r0, [r4, #8]
003825d8  e1 ff ff ea                                      b #0x382564
003825dc  0c 60 84 e5                                      str r6, [r4, #0xc]
003825e0  df ff ff ea                                      b #0x382564
003825e4  01 00 a0 e1                                      mov r0, r1
003825e8  bb ff ff eb                                      bl #0x3824dc
003825ec  00 20 98 e5                                      ldr r2, [r8]
003825f0  00 30 a0 e3                                      mov r3, #0
003825f4  00 60 a0 e1                                      mov r6, r0
003825f8  10 20 80 e5                                      str r2, [r0, #0x10]
003825fc  04 20 98 e5                                      ldr r2, [r8, #4]
00382600  14 20 80 e5                                      str r2, [r0, #0x14]
00382604  08 20 98 e5                                      ldr r2, [r8, #8]
00382608  0c 30 80 e5                                      str r3, [r0, #0xc]
0038260c  08 30 80 e5                                      str r3, [r0, #8]
00382610  18 20 80 e5                                      str r2, [r0, #0x18]
00382614  08 00 84 e5                                      str r0, [r4, #8]
00382618  04 00 84 e5                                      str r0, [r4, #4]
0038261c  0c 00 84 e5                                      str r0, [r4, #0xc]
00382620  cf ff ff ea                                      b #0x382564
00382624  00 20 98 e5                                      ldr r2, [r8]
00382628  10 30 97 e5                                      ldr r3, [r7, #0x10]
0038262c  03 00 52 e1                                      cmp r2, r3
00382630  bb ff ff aa                                      bge #0x382524
00382634  d7 ff ff ea                                      b #0x382598

; FUNCTION 0x00382638, declared_size=392, range_size=392, mode=arm
; class-group: std::priv::_Rb_tree<long, std::less<long>, std::pair<long const, TouchData>, std::priv::_Select1st<std::pair<long const, TouchData> >, std::priv::_MapTraitsT<std::pair<long const, TouchData> >, std::allocator<std::pair<long const, TouchData> > >
; alias: _ZNSt4priv8_Rb_treeIlSt4lessIlESt4pairIKl9TouchDataENS_10_Select1stIS6_EENS_11_MapTraitsTIS6_EESaIS6_EE13insert_uniqueERKS6_
; demangled: std::priv::_Rb_tree<long, std::less<long>, std::pair<long const, TouchData>, std::priv::_Select1st<std::pair<long const, TouchData> >, std::priv::_MapTraitsT<std::pair<long const, TouchData> >, std::allocator<std::pair<long const, TouchData> > >::insert_unique(std::pair<long const, TouchData> const&)
; decoder-mode: arm
00382638  70 40 2d e9                                      push {r4, r5, r6, lr}
0038263c  04 c0 91 e5                                      ldr ip, [r1, #4]
00382640  10 d0 4d e2                                      sub sp, sp, #0x10
00382644  00 40 a0 e1                                      mov r4, r0
00382648  00 00 5c e3                                      cmp ip, #0
0038264c  02 30 a0 e1                                      mov r3, r2
00382650  01 c0 a0 01                                      moveq ip, r1
00382654  15 00 00 0a                                      beq #0x3826b0
00382658  00 60 92 e5                                      ldr r6, [r2]
0038265c  00 00 00 ea                                      b #0x382664
00382660  02 c0 a0 e1                                      mov ip, r2
00382664  10 00 9c e5                                      ldr r0, [ip, #0x10]
00382668  01 50 a0 e3                                      mov r5, #1
0038266c  06 00 50 e1                                      cmp r0, r6
00382670  08 20 9c c5                                      ldrgt r2, [ip, #8]
00382674  0c 20 9c d5                                      ldrle r2, [ip, #0xc]
00382678  00 50 a0 d3                                      movle r5, #0
0038267c  00 00 52 e3                                      cmp r2, #0
00382680  f6 ff ff 1a                                      bne #0x382660
00382684  00 00 55 e3                                      cmp r5, #0
00382688  0c 50 a0 01                                      moveq r5, ip
0038268c  07 00 00 1a                                      bne #0x3826b0
00382690  00 00 56 e1                                      cmp r6, r0
00382694  00 30 a0 d3                                      movle r3, #0
00382698  00 50 84 d5                                      strle r5, [r4]
0038269c  04 30 c4 d5                                      strble r3, [r4, #4]
003826a0  1c 00 00 ca                                      bgt #0x382718
003826a4  04 00 a0 e1                                      mov r0, r4
003826a8  10 d0 8d e2                                      add sp, sp, #0x10
003826ac  70 80 bd e8                                      pop {r4, r5, r6, pc}
003826b0  08 20 91 e5                                      ldr r2, [r1, #8]
003826b4  02 00 5c e1                                      cmp ip, r2
003826b8  36 00 00 0a                                      beq #0x382798
003826bc  00 20 dc e5                                      ldrb r2, [ip]
003826c0  00 00 52 e3                                      cmp r2, #0
003826c4  03 00 00 1a                                      bne #0x3826d8
003826c8  04 20 9c e5                                      ldr r2, [ip, #4]
003826cc  04 20 92 e5                                      ldr r2, [r2, #4]
003826d0  02 00 5c e1                                      cmp ip, r2
003826d4  2a 00 00 0a                                      beq #0x382784
003826d8  08 00 9c e5                                      ldr r0, [ip, #8]
003826dc  00 00 50 e3                                      cmp r0, #0
003826e0  01 00 00 1a                                      bne #0x3826ec
003826e4  16 00 00 ea                                      b #0x382744
003826e8  02 00 a0 e1                                      mov r0, r2
003826ec  0c 20 90 e5                                      ldr r2, [r0, #0xc]
003826f0  00 00 52 e3                                      cmp r2, #0
003826f4  fb ff ff 1a                                      bne #0x3826e8
003826f8  00 60 93 e5                                      ldr r6, [r3]
003826fc  00 50 a0 e1                                      mov r5, r0
00382700  10 00 90 e5                                      ldr r0, [r0, #0x10]
00382704  00 00 56 e1                                      cmp r6, r0
00382708  00 30 a0 d3                                      movle r3, #0
0038270c  00 50 84 d5                                      strle r5, [r4]
00382710  04 30 c4 d5                                      strble r3, [r4, #4]
00382714  e2 ff ff da                                      ble #0x3826a4
00382718  0c 20 a0 e1                                      mov r2, ip
0038271c  08 00 8d e2                                      add r0, sp, #8
00382720  00 c0 a0 e3                                      mov ip, #0
00382724  04 c0 8d e5                                      str ip, [sp, #4]
00382728  00 c0 8d e5                                      str ip, [sp]
0038272c  72 ff ff eb                                      bl #0x3824fc
00382730  08 30 9d e5                                      ldr r3, [sp, #8]
00382734  01 20 a0 e3                                      mov r2, #1
00382738  04 20 c4 e5                                      strb r2, [r4, #4]
0038273c  00 30 84 e5                                      str r3, [r4]
00382740  d7 ff ff ea                                      b #0x3826a4
00382744  04 20 9c e5                                      ldr r2, [ip, #4]
00382748  08 00 92 e5                                      ldr r0, [r2, #8]
0038274c  00 00 5c e1                                      cmp ip, r0
00382750  02 50 a0 11                                      movne r5, r2
00382754  00 60 93 15                                      ldrne r6, [r3]
00382758  10 00 92 15                                      ldrne r0, [r2, #0x10]
0038275c  01 00 00 0a                                      beq #0x382768
00382760  ca ff ff ea                                      b #0x382690
00382764  05 20 a0 e1                                      mov r2, r5
00382768  04 50 92 e5                                      ldr r5, [r2, #4]
0038276c  08 00 95 e5                                      ldr r0, [r5, #8]
00382770  02 00 50 e1                                      cmp r0, r2
00382774  fa ff ff 0a                                      beq #0x382764
00382778  00 60 93 e5                                      ldr r6, [r3]
0038277c  10 00 95 e5                                      ldr r0, [r5, #0x10]
00382780  c2 ff ff ea                                      b #0x382690
00382784  0c 20 9c e5                                      ldr r2, [ip, #0xc]
00382788  00 60 93 e5                                      ldr r6, [r3]
0038278c  02 50 a0 e1                                      mov r5, r2
00382790  10 00 92 e5                                      ldr r0, [r2, #0x10]
00382794  bd ff ff ea                                      b #0x382690
00382798  0c 20 a0 e1                                      mov r2, ip
0038279c  00 e0 a0 e3                                      mov lr, #0
003827a0  0c 00 8d e2                                      add r0, sp, #0xc
003827a4  00 50 8d e8                                      stm sp, {ip, lr}
003827a8  53 ff ff eb                                      bl #0x3824fc
003827ac  0c 30 9d e5                                      ldr r3, [sp, #0xc]
003827b0  01 20 a0 e3                                      mov r2, #1
003827b4  04 20 c4 e5                                      strb r2, [r4, #4]
003827b8  00 30 84 e5                                      str r3, [r4]
003827bc  b8 ff ff ea                                      b #0x3826a4

; FUNCTION 0x003827c0, declared_size=884, range_size=884, mode=arm
; class-group: std::priv::_Rb_tree<long, std::less<long>, std::pair<long const, TouchData>, std::priv::_Select1st<std::pair<long const, TouchData> >, std::priv::_MapTraitsT<std::pair<long const, TouchData> >, std::allocator<std::pair<long const, TouchData> > >
; alias: _ZNSt4priv8_Rb_treeIlSt4lessIlESt4pairIKl9TouchDataENS_10_Select1stIS6_EENS_11_MapTraitsTIS6_EESaIS6_EE13insert_uniqueENS_17_Rb_tree_iteratorIS6_SA_EERKS6_
; demangled: std::priv::_Rb_tree<long, std::less<long>, std::pair<long const, TouchData>, std::priv::_Select1st<std::pair<long const, TouchData> >, std::priv::_MapTraitsT<std::pair<long const, TouchData> >, std::allocator<std::pair<long const, TouchData> > >::insert_unique(std::priv::_Rb_tree_iterator<std::pair<long const, TouchData>, std::priv::_MapTraitsT<std::pair<long const, TouchData> > >, std::pair<long const, TouchData> const&)
; decoder-mode: arm
003827c0  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
003827c4  00 40 92 e5                                      ldr r4, [r2]
003827c8  08 20 91 e5                                      ldr r2, [r1, #8]
003827cc  2c d0 4d e2                                      sub sp, sp, #0x2c
003827d0  01 50 a0 e1                                      mov r5, r1
003827d4  02 00 54 e1                                      cmp r4, r2
003827d8  00 70 a0 e1                                      mov r7, r0
003827dc  03 60 a0 e1                                      mov r6, r3
003827e0  5a 00 00 0a                                      beq #0x382950
003827e4  01 00 54 e1                                      cmp r4, r1
003827e8  78 00 00 0a                                      beq #0x3829d0
003827ec  00 30 d4 e5                                      ldrb r3, [r4]
003827f0  00 00 53 e3                                      cmp r3, #0
003827f4  3a 00 00 0a                                      beq #0x3828e4
003827f8  08 c0 94 e5                                      ldr ip, [r4, #8]
003827fc  00 00 5c e3                                      cmp ip, #0
00382800  01 00 00 1a                                      bne #0x38280c
00382804  3e 00 00 ea                                      b #0x382904
00382808  03 c0 a0 e1                                      mov ip, r3
0038280c  0c 30 9c e5                                      ldr r3, [ip, #0xc]
00382810  00 00 53 e3                                      cmp r3, #0
00382814  fb ff ff 1a                                      bne #0x382808
00382818  00 20 96 e5                                      ldr r2, [r6]
0038281c  10 00 94 e5                                      ldr r0, [r4, #0x10]
00382820  00 00 52 e1                                      cmp r2, r0
00382824  00 10 a0 a3                                      movge r1, #0
00382828  01 10 a0 b3                                      movlt r1, #1
0038282c  00 00 51 e3                                      cmp r1, #0
00382830  1b 00 00 1a                                      bne #0x3828a4
00382834  0c 80 94 e5                                      ldr r8, [r4, #0xc]
00382838  00 00 58 e3                                      cmp r8, #0
0038283c  7d 00 00 0a                                      beq #0x382a38
00382840  08 c0 a0 e1                                      mov ip, r8
00382844  00 00 00 ea                                      b #0x38284c
00382848  03 c0 a0 e1                                      mov ip, r3
0038284c  08 30 9c e5                                      ldr r3, [ip, #8]
00382850  00 00 53 e3                                      cmp r3, #0
00382854  fb ff ff 1a                                      bne #0x382848
00382858  00 00 51 e3                                      cmp r1, #0
0038285c  34 00 00 1a                                      bne #0x382934
00382860  00 00 52 e1                                      cmp r2, r0
00382864  63 00 00 da                                      ble #0x3829f8
00382868  0c 00 55 e1                                      cmp r5, ip
0038286c  02 00 00 0a                                      beq #0x38287c
00382870  10 30 9c e5                                      ldr r3, [ip, #0x10]
00382874  03 00 52 e1                                      cmp r2, r3
00382878  2d 00 00 aa                                      bge #0x382934
0038287c  00 00 58 e3                                      cmp r8, #0
00382880  4a 00 00 1a                                      bne #0x3829b0
00382884  05 10 a0 e1                                      mov r1, r5
00382888  04 20 a0 e1                                      mov r2, r4
0038288c  06 30 a0 e1                                      mov r3, r6
00382890  07 00 a0 e1                                      mov r0, r7
00382894  00 80 8d e5                                      str r8, [sp]
00382898  04 40 8d e5                                      str r4, [sp, #4]
0038289c  16 ff ff eb                                      bl #0x3824fc
003828a0  0c 00 00 ea                                      b #0x3828d8
003828a4  10 30 9c e5                                      ldr r3, [ip, #0x10]
003828a8  03 00 52 e1                                      cmp r2, r3
003828ac  e0 ff ff da                                      ble #0x382834
003828b0  0c e0 9c e5                                      ldr lr, [ip, #0xc]
003828b4  00 00 5e e3                                      cmp lr, #0
003828b8  56 00 00 0a                                      beq #0x382a18
003828bc  00 c0 a0 e3                                      mov ip, #0
003828c0  05 10 a0 e1                                      mov r1, r5
003828c4  04 20 a0 e1                                      mov r2, r4
003828c8  06 30 a0 e1                                      mov r3, r6
003828cc  07 00 a0 e1                                      mov r0, r7
003828d0  10 10 8d e8                                      stm sp, {r4, ip}
003828d4  08 ff ff eb                                      bl #0x3824fc
003828d8  07 00 a0 e1                                      mov r0, r7
003828dc  2c d0 8d e2                                      add sp, sp, #0x2c
003828e0  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
003828e4  04 30 94 e5                                      ldr r3, [r4, #4]
003828e8  04 30 93 e5                                      ldr r3, [r3, #4]
003828ec  03 00 54 e1                                      cmp r4, r3
003828f0  0c c0 94 05                                      ldreq ip, [r4, #0xc]
003828f4  c7 ff ff 0a                                      beq #0x382818
003828f8  08 c0 94 e5                                      ldr ip, [r4, #8]
003828fc  00 00 5c e3                                      cmp ip, #0
00382900  c1 ff ff 1a                                      bne #0x38280c
00382904  04 c0 94 e5                                      ldr ip, [r4, #4]
00382908  08 30 9c e5                                      ldr r3, [ip, #8]
0038290c  03 00 54 e1                                      cmp r4, r3
00382910  01 00 00 0a                                      beq #0x38291c
00382914  bf ff ff ea                                      b #0x382818
00382918  03 c0 a0 e1                                      mov ip, r3
0038291c  04 30 9c e5                                      ldr r3, [ip, #4]
00382920  08 20 93 e5                                      ldr r2, [r3, #8]
00382924  0c 00 52 e1                                      cmp r2, ip
00382928  fa ff ff 0a                                      beq #0x382918
0038292c  03 c0 a0 e1                                      mov ip, r3
00382930  b8 ff ff ea                                      b #0x382818
00382934  05 10 a0 e1                                      mov r1, r5
00382938  06 20 a0 e1                                      mov r2, r6
0038293c  08 00 8d e2                                      add r0, sp, #8
00382940  3c ff ff eb                                      bl #0x382638
00382944  08 30 9d e5                                      ldr r3, [sp, #8]
00382948  00 30 87 e5                                      str r3, [r7]
0038294c  e1 ff ff ea                                      b #0x3828d8
00382950  10 20 91 e5                                      ldr r2, [r1, #0x10]
00382954  00 00 52 e3                                      cmp r2, #0
00382958  52 00 00 0a                                      beq #0x382aa8
0038295c  00 20 93 e5                                      ldr r2, [r3]
00382960  10 c0 94 e5                                      ldr ip, [r4, #0x10]
00382964  0c 00 52 e1                                      cmp r2, ip
00382968  54 00 00 ba                                      blt #0x382ac0
0038296c  21 00 00 da                                      ble #0x3829f8
00382970  0c e0 94 e5                                      ldr lr, [r4, #0xc]
00382974  00 00 5e e3                                      cmp lr, #0
00382978  3c 00 00 0a                                      beq #0x382a70
0038297c  0e c0 a0 e1                                      mov ip, lr
00382980  00 00 00 ea                                      b #0x382988
00382984  03 c0 a0 e1                                      mov ip, r3
00382988  08 30 9c e5                                      ldr r3, [ip, #8]
0038298c  00 00 53 e3                                      cmp r3, #0
00382990  fb ff ff 1a                                      bne #0x382984
00382994  0c 00 55 e1                                      cmp r5, ip
00382998  5c 00 00 0a                                      beq #0x382b10
0038299c  10 30 9c e5                                      ldr r3, [ip, #0x10]
003829a0  03 00 52 e1                                      cmp r2, r3
003829a4  4a 00 00 aa                                      bge #0x382ad4
003829a8  00 00 5e e3                                      cmp lr, #0
003829ac  4f 00 00 0a                                      beq #0x382af0
003829b0  00 e0 a0 e3                                      mov lr, #0
003829b4  05 10 a0 e1                                      mov r1, r5
003829b8  0c 20 a0 e1                                      mov r2, ip
003829bc  06 30 a0 e1                                      mov r3, r6
003829c0  07 00 a0 e1                                      mov r0, r7
003829c4  00 50 8d e8                                      stm sp, {ip, lr}
003829c8  cb fe ff eb                                      bl #0x3824fc
003829cc  c1 ff ff ea                                      b #0x3828d8
003829d0  0c 20 94 e5                                      ldr r2, [r4, #0xc]
003829d4  00 c0 93 e5                                      ldr ip, [r3]
003829d8  10 e0 92 e5                                      ldr lr, [r2, #0x10]
003829dc  0c 00 5e e1                                      cmp lr, ip
003829e0  06 00 00 aa                                      bge #0x382a00
003829e4  00 c0 a0 e3                                      mov ip, #0
003829e8  00 c0 8d e5                                      str ip, [sp]
003829ec  04 40 8d e5                                      str r4, [sp, #4]
003829f0  c1 fe ff eb                                      bl #0x3824fc
003829f4  b7 ff ff ea                                      b #0x3828d8
003829f8  00 40 87 e5                                      str r4, [r7]
003829fc  b5 ff ff ea                                      b #0x3828d8
00382a00  03 20 a0 e1                                      mov r2, r3
00382a04  10 00 8d e2                                      add r0, sp, #0x10
00382a08  0a ff ff eb                                      bl #0x382638
00382a0c  10 30 9d e5                                      ldr r3, [sp, #0x10]
00382a10  00 30 87 e5                                      str r3, [r7]
00382a14  af ff ff ea                                      b #0x3828d8
00382a18  05 10 a0 e1                                      mov r1, r5
00382a1c  0c 20 a0 e1                                      mov r2, ip
00382a20  06 30 a0 e1                                      mov r3, r6
00382a24  07 00 a0 e1                                      mov r0, r7
00382a28  00 e0 8d e5                                      str lr, [sp]
00382a2c  04 c0 8d e5                                      str ip, [sp, #4]
00382a30  b1 fe ff eb                                      bl #0x3824fc
00382a34  a7 ff ff ea                                      b #0x3828d8
00382a38  04 30 94 e5                                      ldr r3, [r4, #4]
00382a3c  0c c0 93 e5                                      ldr ip, [r3, #0xc]
00382a40  0c 00 54 e1                                      cmp r4, ip
00382a44  04 c0 a0 11                                      movne ip, r4
00382a48  04 00 00 1a                                      bne #0x382a60
00382a4c  03 c0 a0 e1                                      mov ip, r3
00382a50  04 30 93 e5                                      ldr r3, [r3, #4]
00382a54  0c a0 93 e5                                      ldr sl, [r3, #0xc]
00382a58  0a 00 5c e1                                      cmp ip, sl
00382a5c  fa ff ff 0a                                      beq #0x382a4c
00382a60  0c a0 9c e5                                      ldr sl, [ip, #0xc]
00382a64  0a 00 53 e1                                      cmp r3, sl
00382a68  03 c0 a0 11                                      movne ip, r3
00382a6c  79 ff ff ea                                      b #0x382858
00382a70  04 30 94 e5                                      ldr r3, [r4, #4]
00382a74  0c 10 93 e5                                      ldr r1, [r3, #0xc]
00382a78  01 00 54 e1                                      cmp r4, r1
00382a7c  04 c0 a0 11                                      movne ip, r4
00382a80  04 00 00 1a                                      bne #0x382a98
00382a84  03 c0 a0 e1                                      mov ip, r3
00382a88  04 30 93 e5                                      ldr r3, [r3, #4]
00382a8c  0c 10 93 e5                                      ldr r1, [r3, #0xc]
00382a90  0c 00 51 e1                                      cmp r1, ip
00382a94  fa ff ff 0a                                      beq #0x382a84
00382a98  0c 10 9c e5                                      ldr r1, [ip, #0xc]
00382a9c  01 00 53 e1                                      cmp r3, r1
00382aa0  03 c0 a0 11                                      movne ip, r3
00382aa4  ba ff ff ea                                      b #0x382994
00382aa8  03 20 a0 e1                                      mov r2, r3
00382aac  20 00 8d e2                                      add r0, sp, #0x20
00382ab0  e0 fe ff eb                                      bl #0x382638
00382ab4  20 30 9d e5                                      ldr r3, [sp, #0x20]
00382ab8  00 30 87 e5                                      str r3, [r7]
00382abc  85 ff ff ea                                      b #0x3828d8
00382ac0  00 c0 a0 e3                                      mov ip, #0
00382ac4  04 20 a0 e1                                      mov r2, r4
00382ac8  10 10 8d e8                                      stm sp, {r4, ip}
00382acc  8a fe ff eb                                      bl #0x3824fc
00382ad0  80 ff ff ea                                      b #0x3828d8
00382ad4  05 10 a0 e1                                      mov r1, r5
00382ad8  06 20 a0 e1                                      mov r2, r6
00382adc  18 00 8d e2                                      add r0, sp, #0x18
00382ae0  d4 fe ff eb                                      bl #0x382638
00382ae4  18 30 9d e5                                      ldr r3, [sp, #0x18]
00382ae8  00 30 87 e5                                      str r3, [r7]
00382aec  79 ff ff ea                                      b #0x3828d8
00382af0  05 10 a0 e1                                      mov r1, r5
00382af4  04 20 a0 e1                                      mov r2, r4
00382af8  06 30 a0 e1                                      mov r3, r6
00382afc  07 00 a0 e1                                      mov r0, r7
00382b00  00 e0 8d e5                                      str lr, [sp]
00382b04  04 40 8d e5                                      str r4, [sp, #4]
00382b08  7b fe ff eb                                      bl #0x3824fc
00382b0c  71 ff ff ea                                      b #0x3828d8
00382b10  00 c0 a0 e3                                      mov ip, #0
00382b14  05 10 a0 e1                                      mov r1, r5
00382b18  04 20 a0 e1                                      mov r2, r4
00382b1c  06 30 a0 e1                                      mov r3, r6
00382b20  07 00 a0 e1                                      mov r0, r7
00382b24  00 c0 8d e5                                      str ip, [sp]
00382b28  04 40 8d e5                                      str r4, [sp, #4]
00382b2c  72 fe ff eb                                      bl #0x3824fc
00382b30  68 ff ff ea                                      b #0x3828d8

; FUNCTION 0x00383084, declared_size=56, range_size=56, mode=arm
; class-group: std::priv::_Rb_tree<long, std::less<long>, std::pair<long const, TouchData>, std::priv::_Select1st<std::pair<long const, TouchData> >, std::priv::_MapTraitsT<std::pair<long const, TouchData> >, std::allocator<std::pair<long const, TouchData> > >
; alias: _ZNSt4priv8_Rb_treeIlSt4lessIlESt4pairIKl9TouchDataENS_10_Select1stIS6_EENS_11_MapTraitsTIS6_EESaIS6_EE8_M_eraseEPNS_18_Rb_tree_node_baseE
; demangled: std::priv::_Rb_tree<long, std::less<long>, std::pair<long const, TouchData>, std::priv::_Select1st<std::pair<long const, TouchData> >, std::priv::_MapTraitsT<std::pair<long const, TouchData> >, std::allocator<std::pair<long const, TouchData> > >::_M_erase(std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
00383084  70 40 2d e9                                      push {r4, r5, r6, lr}
00383088  00 40 51 e2                                      subs r4, r1, #0
0038308c  00 60 a0 e1                                      mov r6, r0
00383090  08 00 00 0a                                      beq #0x3830b8
00383094  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00383098  06 00 a0 e1                                      mov r0, r6
0038309c  f8 ff ff eb                                      bl #0x383084
003830a0  08 50 94 e5                                      ldr r5, [r4, #8]
003830a4  04 00 a0 e1                                      mov r0, r4
003830a8  1c 10 a0 e3                                      mov r1, #0x1c
003830ac  93 17 0e eb                                      bl #0x708f00
003830b0  00 40 55 e2                                      subs r4, r5, #0
003830b4  f6 ff ff 1a                                      bne #0x383094
003830b8  70 80 bd e8                                      pop {r4, r5, r6, pc}

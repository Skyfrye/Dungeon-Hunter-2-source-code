; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00529754, declared_size=340, range_size=340, mode=arm
; class-group: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, sfc::math::graph::AlgoAStar<PFGInnerGraph, DiabloIPhoneHeuristic>::_InEdge>, std::priv::_Select1st<std::pair<unsigned int const, sfc::math::graph::AlgoAStar<PFGInnerGraph, DiabloIPhoneHeuristic>::_InEdge> >, std::priv::_MapTraitsT<std::pair<unsigned int const, sfc::math::graph::AlgoAStar<PFGInnerGraph, DiabloIPhoneHeuristic>::_InEdge> >, std::allocator<std::pair<unsigned int const, sfc::math::graph::AlgoAStar<PFGInnerGraph, DiabloIPhoneHeuristic>::_InEdge> > >
; alias: _ZNSt4priv8_Rb_treeIjSt4lessIjESt4pairIKjN3sfc4math5graph9AlgoAStarI13PFGInnerGraph21DiabloIPhoneHeuristicE7_InEdgeEENS_10_Select1stISD_EENS_11_MapTraitsTISD_EESaISD_EE9_M_insertEPNS_18_Rb_tree_node_baseERKSD_SL_SL_
; demangled: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, sfc::math::graph::AlgoAStar<PFGInnerGraph, DiabloIPhoneHeuristic>::_InEdge>, std::priv::_Select1st<std::pair<unsigned int const, sfc::math::graph::AlgoAStar<PFGInnerGraph, DiabloIPhoneHeuristic>::_InEdge> >, std::priv::_MapTraitsT<std::pair<unsigned int const, sfc::math::graph::AlgoAStar<PFGInnerGraph, DiabloIPhoneHeuristic>::_InEdge> >, std::allocator<std::pair<unsigned int const, sfc::math::graph::AlgoAStar<PFGInnerGraph, DiabloIPhoneHeuristic>::_InEdge> > >::_M_insert(std::priv::_Rb_tree_node_base*, std::pair<unsigned int const, sfc::math::graph::AlgoAStar<PFGInnerGraph, DiabloIPhoneHeuristic>::_InEdge> const&, std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
00529754  02 00 51 e1                                      cmp r1, r2
00529758  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0052975c  01 40 a0 e1                                      mov r4, r1
00529760  02 70 a0 e1                                      mov r7, r2
00529764  00 50 a0 e1                                      mov r5, r0
00529768  03 80 a0 e1                                      mov r8, r3
0052976c  36 00 00 0a                                      beq #0x52984c
00529770  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
00529774  00 00 53 e3                                      cmp r3, #0
00529778  1b 00 00 0a                                      beq #0x5297ec
0052977c  04 00 a0 e1                                      mov r0, r4
00529780  eb ff ff eb                                      bl #0x529734
00529784  00 20 98 e5                                      ldr r2, [r8]
00529788  00 30 a0 e3                                      mov r3, #0
0052978c  00 60 a0 e1                                      mov r6, r0
00529790  10 20 80 e5                                      str r2, [r0, #0x10]
00529794  04 20 98 e5                                      ldr r2, [r8, #4]
00529798  14 20 80 e5                                      str r2, [r0, #0x14]
0052979c  08 20 98 e5                                      ldr r2, [r8, #8]
005297a0  18 20 80 e5                                      str r2, [r0, #0x18]
005297a4  0c 20 98 e5                                      ldr r2, [r8, #0xc]
005297a8  0c 30 80 e5                                      str r3, [r0, #0xc]
005297ac  08 30 80 e5                                      str r3, [r0, #8]
005297b0  1c 20 80 e5                                      str r2, [r0, #0x1c]
005297b4  0c 00 87 e5                                      str r0, [r7, #0xc]
005297b8  0c 30 94 e5                                      ldr r3, [r4, #0xc]
005297bc  03 00 57 e1                                      cmp r7, r3
005297c0  1f 00 00 0a                                      beq #0x529844
005297c4  06 00 a0 e1                                      mov r0, r6
005297c8  04 70 86 e5                                      str r7, [r6, #4]
005297cc  04 10 84 e2                                      add r1, r4, #4
005297d0  e2 a7 f7 eb                                      bl #0x313760
005297d4  10 30 94 e5                                      ldr r3, [r4, #0x10]
005297d8  05 00 a0 e1                                      mov r0, r5
005297dc  01 30 83 e2                                      add r3, r3, #1
005297e0  10 30 84 e5                                      str r3, [r4, #0x10]
005297e4  00 60 85 e5                                      str r6, [r5]
005297e8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005297ec  18 30 9d e5                                      ldr r3, [sp, #0x18]
005297f0  00 00 53 e3                                      cmp r3, #0
005297f4  26 00 00 0a                                      beq #0x529894
005297f8  04 00 a0 e1                                      mov r0, r4
005297fc  cc ff ff eb                                      bl #0x529734
00529800  00 20 98 e5                                      ldr r2, [r8]
00529804  00 30 a0 e3                                      mov r3, #0
00529808  00 60 a0 e1                                      mov r6, r0
0052980c  10 20 80 e5                                      str r2, [r0, #0x10]
00529810  04 20 98 e5                                      ldr r2, [r8, #4]
00529814  14 20 80 e5                                      str r2, [r0, #0x14]
00529818  08 20 98 e5                                      ldr r2, [r8, #8]
0052981c  18 20 80 e5                                      str r2, [r0, #0x18]
00529820  0c 20 98 e5                                      ldr r2, [r8, #0xc]
00529824  0c 30 80 e5                                      str r3, [r0, #0xc]
00529828  08 30 80 e5                                      str r3, [r0, #8]
0052982c  1c 20 80 e5                                      str r2, [r0, #0x1c]
00529830  08 00 87 e5                                      str r0, [r7, #8]
00529834  08 30 94 e5                                      ldr r3, [r4, #8]
00529838  03 00 57 e1                                      cmp r7, r3
0052983c  08 00 84 05                                      streq r0, [r4, #8]
00529840  df ff ff ea                                      b #0x5297c4
00529844  0c 60 84 e5                                      str r6, [r4, #0xc]
00529848  dd ff ff ea                                      b #0x5297c4
0052984c  01 00 a0 e1                                      mov r0, r1
00529850  b7 ff ff eb                                      bl #0x529734
00529854  00 20 98 e5                                      ldr r2, [r8]
00529858  00 30 a0 e3                                      mov r3, #0
0052985c  00 60 a0 e1                                      mov r6, r0
00529860  10 20 80 e5                                      str r2, [r0, #0x10]
00529864  04 20 98 e5                                      ldr r2, [r8, #4]
00529868  14 20 80 e5                                      str r2, [r0, #0x14]
0052986c  08 20 98 e5                                      ldr r2, [r8, #8]
00529870  18 20 80 e5                                      str r2, [r0, #0x18]
00529874  0c 20 98 e5                                      ldr r2, [r8, #0xc]
00529878  0c 30 80 e5                                      str r3, [r0, #0xc]
0052987c  08 30 80 e5                                      str r3, [r0, #8]
00529880  1c 20 80 e5                                      str r2, [r0, #0x1c]
00529884  08 00 84 e5                                      str r0, [r4, #8]
00529888  04 00 84 e5                                      str r0, [r4, #4]
0052988c  0c 00 84 e5                                      str r0, [r4, #0xc]
00529890  cb ff ff ea                                      b #0x5297c4
00529894  00 20 98 e5                                      ldr r2, [r8]
00529898  10 30 97 e5                                      ldr r3, [r7, #0x10]
0052989c  03 00 52 e1                                      cmp r2, r3
005298a0  b5 ff ff 2a                                      bhs #0x52977c
005298a4  d3 ff ff ea                                      b #0x5297f8

; FUNCTION 0x005298a8, declared_size=392, range_size=392, mode=arm
; class-group: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, sfc::math::graph::AlgoAStar<PFGInnerGraph, DiabloIPhoneHeuristic>::_InEdge>, std::priv::_Select1st<std::pair<unsigned int const, sfc::math::graph::AlgoAStar<PFGInnerGraph, DiabloIPhoneHeuristic>::_InEdge> >, std::priv::_MapTraitsT<std::pair<unsigned int const, sfc::math::graph::AlgoAStar<PFGInnerGraph, DiabloIPhoneHeuristic>::_InEdge> >, std::allocator<std::pair<unsigned int const, sfc::math::graph::AlgoAStar<PFGInnerGraph, DiabloIPhoneHeuristic>::_InEdge> > >
; alias: _ZNSt4priv8_Rb_treeIjSt4lessIjESt4pairIKjN3sfc4math5graph9AlgoAStarI13PFGInnerGraph21DiabloIPhoneHeuristicE7_InEdgeEENS_10_Select1stISD_EENS_11_MapTraitsTISD_EESaISD_EE13insert_uniqueERKSD_
; demangled: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, sfc::math::graph::AlgoAStar<PFGInnerGraph, DiabloIPhoneHeuristic>::_InEdge>, std::priv::_Select1st<std::pair<unsigned int const, sfc::math::graph::AlgoAStar<PFGInnerGraph, DiabloIPhoneHeuristic>::_InEdge> >, std::priv::_MapTraitsT<std::pair<unsigned int const, sfc::math::graph::AlgoAStar<PFGInnerGraph, DiabloIPhoneHeuristic>::_InEdge> >, std::allocator<std::pair<unsigned int const, sfc::math::graph::AlgoAStar<PFGInnerGraph, DiabloIPhoneHeuristic>::_InEdge> > >::insert_unique(std::pair<unsigned int const, sfc::math::graph::AlgoAStar<PFGInnerGraph, DiabloIPhoneHeuristic>::_InEdge> const&)
; decoder-mode: arm
005298a8  70 40 2d e9                                      push {r4, r5, r6, lr}
005298ac  04 c0 91 e5                                      ldr ip, [r1, #4]
005298b0  10 d0 4d e2                                      sub sp, sp, #0x10
005298b4  00 40 a0 e1                                      mov r4, r0
005298b8  00 00 5c e3                                      cmp ip, #0
005298bc  02 30 a0 e1                                      mov r3, r2
005298c0  01 c0 a0 01                                      moveq ip, r1
005298c4  15 00 00 0a                                      beq #0x529920
005298c8  00 60 92 e5                                      ldr r6, [r2]
005298cc  00 00 00 ea                                      b #0x5298d4
005298d0  02 c0 a0 e1                                      mov ip, r2
005298d4  10 00 9c e5                                      ldr r0, [ip, #0x10]
005298d8  01 50 a0 e3                                      mov r5, #1
005298dc  06 00 50 e1                                      cmp r0, r6
005298e0  08 20 9c 85                                      ldrhi r2, [ip, #8]
005298e4  0c 20 9c 95                                      ldrls r2, [ip, #0xc]
005298e8  00 50 a0 93                                      movls r5, #0
005298ec  00 00 52 e3                                      cmp r2, #0
005298f0  f6 ff ff 1a                                      bne #0x5298d0
005298f4  00 00 55 e3                                      cmp r5, #0
005298f8  0c 50 a0 01                                      moveq r5, ip
005298fc  07 00 00 1a                                      bne #0x529920
00529900  00 00 56 e1                                      cmp r6, r0
00529904  00 30 a0 93                                      movls r3, #0
00529908  00 50 84 95                                      strls r5, [r4]
0052990c  04 30 c4 95                                      strbls r3, [r4, #4]
00529910  1c 00 00 8a                                      bhi #0x529988
00529914  04 00 a0 e1                                      mov r0, r4
00529918  10 d0 8d e2                                      add sp, sp, #0x10
0052991c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00529920  08 20 91 e5                                      ldr r2, [r1, #8]
00529924  02 00 5c e1                                      cmp ip, r2
00529928  36 00 00 0a                                      beq #0x529a08
0052992c  00 20 dc e5                                      ldrb r2, [ip]
00529930  00 00 52 e3                                      cmp r2, #0
00529934  03 00 00 1a                                      bne #0x529948
00529938  04 20 9c e5                                      ldr r2, [ip, #4]
0052993c  04 20 92 e5                                      ldr r2, [r2, #4]
00529940  02 00 5c e1                                      cmp ip, r2
00529944  2a 00 00 0a                                      beq #0x5299f4
00529948  08 00 9c e5                                      ldr r0, [ip, #8]
0052994c  00 00 50 e3                                      cmp r0, #0
00529950  01 00 00 1a                                      bne #0x52995c
00529954  16 00 00 ea                                      b #0x5299b4
00529958  02 00 a0 e1                                      mov r0, r2
0052995c  0c 20 90 e5                                      ldr r2, [r0, #0xc]
00529960  00 00 52 e3                                      cmp r2, #0
00529964  fb ff ff 1a                                      bne #0x529958
00529968  00 60 93 e5                                      ldr r6, [r3]
0052996c  00 50 a0 e1                                      mov r5, r0
00529970  10 00 90 e5                                      ldr r0, [r0, #0x10]
00529974  00 00 56 e1                                      cmp r6, r0
00529978  00 30 a0 93                                      movls r3, #0
0052997c  00 50 84 95                                      strls r5, [r4]
00529980  04 30 c4 95                                      strbls r3, [r4, #4]
00529984  e2 ff ff 9a                                      bls #0x529914
00529988  0c 20 a0 e1                                      mov r2, ip
0052998c  08 00 8d e2                                      add r0, sp, #8
00529990  00 c0 a0 e3                                      mov ip, #0
00529994  04 c0 8d e5                                      str ip, [sp, #4]
00529998  00 c0 8d e5                                      str ip, [sp]
0052999c  6c ff ff eb                                      bl #0x529754
005299a0  08 30 9d e5                                      ldr r3, [sp, #8]
005299a4  01 20 a0 e3                                      mov r2, #1
005299a8  04 20 c4 e5                                      strb r2, [r4, #4]
005299ac  00 30 84 e5                                      str r3, [r4]
005299b0  d7 ff ff ea                                      b #0x529914
005299b4  04 20 9c e5                                      ldr r2, [ip, #4]
005299b8  08 00 92 e5                                      ldr r0, [r2, #8]
005299bc  00 00 5c e1                                      cmp ip, r0
005299c0  02 50 a0 11                                      movne r5, r2
005299c4  00 60 93 15                                      ldrne r6, [r3]
005299c8  10 00 92 15                                      ldrne r0, [r2, #0x10]
005299cc  01 00 00 0a                                      beq #0x5299d8
005299d0  ca ff ff ea                                      b #0x529900
005299d4  05 20 a0 e1                                      mov r2, r5
005299d8  04 50 92 e5                                      ldr r5, [r2, #4]
005299dc  08 00 95 e5                                      ldr r0, [r5, #8]
005299e0  02 00 50 e1                                      cmp r0, r2
005299e4  fa ff ff 0a                                      beq #0x5299d4
005299e8  00 60 93 e5                                      ldr r6, [r3]
005299ec  10 00 95 e5                                      ldr r0, [r5, #0x10]
005299f0  c2 ff ff ea                                      b #0x529900
005299f4  0c 20 9c e5                                      ldr r2, [ip, #0xc]
005299f8  00 60 93 e5                                      ldr r6, [r3]
005299fc  02 50 a0 e1                                      mov r5, r2
00529a00  10 00 92 e5                                      ldr r0, [r2, #0x10]
00529a04  bd ff ff ea                                      b #0x529900
00529a08  0c 20 a0 e1                                      mov r2, ip
00529a0c  00 e0 a0 e3                                      mov lr, #0
00529a10  0c 00 8d e2                                      add r0, sp, #0xc
00529a14  00 50 8d e8                                      stm sp, {ip, lr}
00529a18  4d ff ff eb                                      bl #0x529754
00529a1c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00529a20  01 20 a0 e3                                      mov r2, #1
00529a24  04 20 c4 e5                                      strb r2, [r4, #4]
00529a28  00 30 84 e5                                      str r3, [r4]
00529a2c  b8 ff ff ea                                      b #0x529914

; FUNCTION 0x00529a30, declared_size=884, range_size=884, mode=arm
; class-group: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, sfc::math::graph::AlgoAStar<PFGInnerGraph, DiabloIPhoneHeuristic>::_InEdge>, std::priv::_Select1st<std::pair<unsigned int const, sfc::math::graph::AlgoAStar<PFGInnerGraph, DiabloIPhoneHeuristic>::_InEdge> >, std::priv::_MapTraitsT<std::pair<unsigned int const, sfc::math::graph::AlgoAStar<PFGInnerGraph, DiabloIPhoneHeuristic>::_InEdge> >, std::allocator<std::pair<unsigned int const, sfc::math::graph::AlgoAStar<PFGInnerGraph, DiabloIPhoneHeuristic>::_InEdge> > >
; alias: _ZNSt4priv8_Rb_treeIjSt4lessIjESt4pairIKjN3sfc4math5graph9AlgoAStarI13PFGInnerGraph21DiabloIPhoneHeuristicE7_InEdgeEENS_10_Select1stISD_EENS_11_MapTraitsTISD_EESaISD_EE13insert_uniqueENS_17_Rb_tree_iteratorISD_SH_EERKSD_
; demangled: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, sfc::math::graph::AlgoAStar<PFGInnerGraph, DiabloIPhoneHeuristic>::_InEdge>, std::priv::_Select1st<std::pair<unsigned int const, sfc::math::graph::AlgoAStar<PFGInnerGraph, DiabloIPhoneHeuristic>::_InEdge> >, std::priv::_MapTraitsT<std::pair<unsigned int const, sfc::math::graph::AlgoAStar<PFGInnerGraph, DiabloIPhoneHeuristic>::_InEdge> >, std::allocator<std::pair<unsigned int const, sfc::math::graph::AlgoAStar<PFGInnerGraph, DiabloIPhoneHeuristic>::_InEdge> > >::insert_unique(std::priv::_Rb_tree_iterator<std::pair<unsigned int const, sfc::math::graph::AlgoAStar<PFGInnerGraph, DiabloIPhoneHeuristic>::_InEdge>, std::priv::_MapTraitsT<std::pair<unsigned int const, sfc::math::graph::AlgoAStar<PFGInnerGraph, DiabloIPhoneHeuristic>::_InEdge> > >, std::pair<unsigned int const, sfc::math::graph::AlgoAStar<PFGInnerGraph, DiabloIPhoneHeuristic>::_InEdge> const&)
; decoder-mode: arm
00529a30  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00529a34  00 40 92 e5                                      ldr r4, [r2]
00529a38  08 20 91 e5                                      ldr r2, [r1, #8]
00529a3c  2c d0 4d e2                                      sub sp, sp, #0x2c
00529a40  01 50 a0 e1                                      mov r5, r1
00529a44  02 00 54 e1                                      cmp r4, r2
00529a48  00 70 a0 e1                                      mov r7, r0
00529a4c  03 60 a0 e1                                      mov r6, r3
00529a50  5a 00 00 0a                                      beq #0x529bc0
00529a54  01 00 54 e1                                      cmp r4, r1
00529a58  78 00 00 0a                                      beq #0x529c40
00529a5c  00 30 d4 e5                                      ldrb r3, [r4]
00529a60  00 00 53 e3                                      cmp r3, #0
00529a64  3a 00 00 0a                                      beq #0x529b54
00529a68  08 c0 94 e5                                      ldr ip, [r4, #8]
00529a6c  00 00 5c e3                                      cmp ip, #0
00529a70  01 00 00 1a                                      bne #0x529a7c
00529a74  3e 00 00 ea                                      b #0x529b74
00529a78  03 c0 a0 e1                                      mov ip, r3
00529a7c  0c 30 9c e5                                      ldr r3, [ip, #0xc]
00529a80  00 00 53 e3                                      cmp r3, #0
00529a84  fb ff ff 1a                                      bne #0x529a78
00529a88  00 20 96 e5                                      ldr r2, [r6]
00529a8c  10 00 94 e5                                      ldr r0, [r4, #0x10]
00529a90  00 00 52 e1                                      cmp r2, r0
00529a94  00 10 a0 23                                      movhs r1, #0
00529a98  01 10 a0 33                                      movlo r1, #1
00529a9c  00 00 51 e3                                      cmp r1, #0
00529aa0  1b 00 00 1a                                      bne #0x529b14
00529aa4  0c 80 94 e5                                      ldr r8, [r4, #0xc]
00529aa8  00 00 58 e3                                      cmp r8, #0
00529aac  7d 00 00 0a                                      beq #0x529ca8
00529ab0  08 c0 a0 e1                                      mov ip, r8
00529ab4  00 00 00 ea                                      b #0x529abc
00529ab8  03 c0 a0 e1                                      mov ip, r3
00529abc  08 30 9c e5                                      ldr r3, [ip, #8]
00529ac0  00 00 53 e3                                      cmp r3, #0
00529ac4  fb ff ff 1a                                      bne #0x529ab8
00529ac8  00 00 51 e3                                      cmp r1, #0
00529acc  34 00 00 1a                                      bne #0x529ba4
00529ad0  00 00 52 e1                                      cmp r2, r0
00529ad4  63 00 00 9a                                      bls #0x529c68
00529ad8  0c 00 55 e1                                      cmp r5, ip
00529adc  02 00 00 0a                                      beq #0x529aec
00529ae0  10 30 9c e5                                      ldr r3, [ip, #0x10]
00529ae4  03 00 52 e1                                      cmp r2, r3
00529ae8  2d 00 00 2a                                      bhs #0x529ba4
00529aec  00 00 58 e3                                      cmp r8, #0
00529af0  4a 00 00 1a                                      bne #0x529c20
00529af4  05 10 a0 e1                                      mov r1, r5
00529af8  04 20 a0 e1                                      mov r2, r4
00529afc  06 30 a0 e1                                      mov r3, r6
00529b00  07 00 a0 e1                                      mov r0, r7
00529b04  00 80 8d e5                                      str r8, [sp]
00529b08  04 40 8d e5                                      str r4, [sp, #4]
00529b0c  10 ff ff eb                                      bl #0x529754
00529b10  0c 00 00 ea                                      b #0x529b48
00529b14  10 30 9c e5                                      ldr r3, [ip, #0x10]
00529b18  03 00 52 e1                                      cmp r2, r3
00529b1c  e0 ff ff 9a                                      bls #0x529aa4
00529b20  0c e0 9c e5                                      ldr lr, [ip, #0xc]
00529b24  00 00 5e e3                                      cmp lr, #0
00529b28  56 00 00 0a                                      beq #0x529c88
00529b2c  00 c0 a0 e3                                      mov ip, #0
00529b30  05 10 a0 e1                                      mov r1, r5
00529b34  04 20 a0 e1                                      mov r2, r4
00529b38  06 30 a0 e1                                      mov r3, r6
00529b3c  07 00 a0 e1                                      mov r0, r7
00529b40  10 10 8d e8                                      stm sp, {r4, ip}
00529b44  02 ff ff eb                                      bl #0x529754
00529b48  07 00 a0 e1                                      mov r0, r7
00529b4c  2c d0 8d e2                                      add sp, sp, #0x2c
00529b50  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00529b54  04 30 94 e5                                      ldr r3, [r4, #4]
00529b58  04 30 93 e5                                      ldr r3, [r3, #4]
00529b5c  03 00 54 e1                                      cmp r4, r3
00529b60  0c c0 94 05                                      ldreq ip, [r4, #0xc]
00529b64  c7 ff ff 0a                                      beq #0x529a88
00529b68  08 c0 94 e5                                      ldr ip, [r4, #8]
00529b6c  00 00 5c e3                                      cmp ip, #0
00529b70  c1 ff ff 1a                                      bne #0x529a7c
00529b74  04 c0 94 e5                                      ldr ip, [r4, #4]
00529b78  08 30 9c e5                                      ldr r3, [ip, #8]
00529b7c  03 00 54 e1                                      cmp r4, r3
00529b80  01 00 00 0a                                      beq #0x529b8c
00529b84  bf ff ff ea                                      b #0x529a88
00529b88  03 c0 a0 e1                                      mov ip, r3
00529b8c  04 30 9c e5                                      ldr r3, [ip, #4]
00529b90  08 20 93 e5                                      ldr r2, [r3, #8]
00529b94  0c 00 52 e1                                      cmp r2, ip
00529b98  fa ff ff 0a                                      beq #0x529b88
00529b9c  03 c0 a0 e1                                      mov ip, r3
00529ba0  b8 ff ff ea                                      b #0x529a88
00529ba4  05 10 a0 e1                                      mov r1, r5
00529ba8  06 20 a0 e1                                      mov r2, r6
00529bac  08 00 8d e2                                      add r0, sp, #8
00529bb0  3c ff ff eb                                      bl #0x5298a8
00529bb4  08 30 9d e5                                      ldr r3, [sp, #8]
00529bb8  00 30 87 e5                                      str r3, [r7]
00529bbc  e1 ff ff ea                                      b #0x529b48
00529bc0  10 20 91 e5                                      ldr r2, [r1, #0x10]
00529bc4  00 00 52 e3                                      cmp r2, #0
00529bc8  52 00 00 0a                                      beq #0x529d18
00529bcc  00 20 93 e5                                      ldr r2, [r3]
00529bd0  10 c0 94 e5                                      ldr ip, [r4, #0x10]
00529bd4  0c 00 52 e1                                      cmp r2, ip
00529bd8  54 00 00 3a                                      blo #0x529d30
00529bdc  21 00 00 9a                                      bls #0x529c68
00529be0  0c e0 94 e5                                      ldr lr, [r4, #0xc]
00529be4  00 00 5e e3                                      cmp lr, #0
00529be8  3c 00 00 0a                                      beq #0x529ce0
00529bec  0e c0 a0 e1                                      mov ip, lr
00529bf0  00 00 00 ea                                      b #0x529bf8
00529bf4  03 c0 a0 e1                                      mov ip, r3
00529bf8  08 30 9c e5                                      ldr r3, [ip, #8]
00529bfc  00 00 53 e3                                      cmp r3, #0
00529c00  fb ff ff 1a                                      bne #0x529bf4
00529c04  0c 00 55 e1                                      cmp r5, ip
00529c08  5c 00 00 0a                                      beq #0x529d80
00529c0c  10 30 9c e5                                      ldr r3, [ip, #0x10]
00529c10  03 00 52 e1                                      cmp r2, r3
00529c14  4a 00 00 2a                                      bhs #0x529d44
00529c18  00 00 5e e3                                      cmp lr, #0
00529c1c  4f 00 00 0a                                      beq #0x529d60
00529c20  00 e0 a0 e3                                      mov lr, #0
00529c24  05 10 a0 e1                                      mov r1, r5
00529c28  0c 20 a0 e1                                      mov r2, ip
00529c2c  06 30 a0 e1                                      mov r3, r6
00529c30  07 00 a0 e1                                      mov r0, r7
00529c34  00 50 8d e8                                      stm sp, {ip, lr}
00529c38  c5 fe ff eb                                      bl #0x529754
00529c3c  c1 ff ff ea                                      b #0x529b48
00529c40  0c 20 94 e5                                      ldr r2, [r4, #0xc]
00529c44  00 c0 93 e5                                      ldr ip, [r3]
00529c48  10 e0 92 e5                                      ldr lr, [r2, #0x10]
00529c4c  0c 00 5e e1                                      cmp lr, ip
00529c50  06 00 00 2a                                      bhs #0x529c70
00529c54  00 c0 a0 e3                                      mov ip, #0
00529c58  00 c0 8d e5                                      str ip, [sp]
00529c5c  04 40 8d e5                                      str r4, [sp, #4]
00529c60  bb fe ff eb                                      bl #0x529754
00529c64  b7 ff ff ea                                      b #0x529b48
00529c68  00 40 87 e5                                      str r4, [r7]
00529c6c  b5 ff ff ea                                      b #0x529b48
00529c70  03 20 a0 e1                                      mov r2, r3
00529c74  10 00 8d e2                                      add r0, sp, #0x10
00529c78  0a ff ff eb                                      bl #0x5298a8
00529c7c  10 30 9d e5                                      ldr r3, [sp, #0x10]
00529c80  00 30 87 e5                                      str r3, [r7]
00529c84  af ff ff ea                                      b #0x529b48
00529c88  05 10 a0 e1                                      mov r1, r5
00529c8c  0c 20 a0 e1                                      mov r2, ip
00529c90  06 30 a0 e1                                      mov r3, r6
00529c94  07 00 a0 e1                                      mov r0, r7
00529c98  00 e0 8d e5                                      str lr, [sp]
00529c9c  04 c0 8d e5                                      str ip, [sp, #4]
00529ca0  ab fe ff eb                                      bl #0x529754
00529ca4  a7 ff ff ea                                      b #0x529b48
00529ca8  04 30 94 e5                                      ldr r3, [r4, #4]
00529cac  0c c0 93 e5                                      ldr ip, [r3, #0xc]
00529cb0  0c 00 54 e1                                      cmp r4, ip
00529cb4  04 c0 a0 11                                      movne ip, r4
00529cb8  04 00 00 1a                                      bne #0x529cd0
00529cbc  03 c0 a0 e1                                      mov ip, r3
00529cc0  04 30 93 e5                                      ldr r3, [r3, #4]
00529cc4  0c a0 93 e5                                      ldr sl, [r3, #0xc]
00529cc8  0a 00 5c e1                                      cmp ip, sl
00529ccc  fa ff ff 0a                                      beq #0x529cbc
00529cd0  0c a0 9c e5                                      ldr sl, [ip, #0xc]
00529cd4  0a 00 53 e1                                      cmp r3, sl
00529cd8  03 c0 a0 11                                      movne ip, r3
00529cdc  79 ff ff ea                                      b #0x529ac8
00529ce0  04 30 94 e5                                      ldr r3, [r4, #4]
00529ce4  0c 10 93 e5                                      ldr r1, [r3, #0xc]
00529ce8  01 00 54 e1                                      cmp r4, r1
00529cec  04 c0 a0 11                                      movne ip, r4
00529cf0  04 00 00 1a                                      bne #0x529d08
00529cf4  03 c0 a0 e1                                      mov ip, r3
00529cf8  04 30 93 e5                                      ldr r3, [r3, #4]
00529cfc  0c 10 93 e5                                      ldr r1, [r3, #0xc]
00529d00  0c 00 51 e1                                      cmp r1, ip
00529d04  fa ff ff 0a                                      beq #0x529cf4
00529d08  0c 10 9c e5                                      ldr r1, [ip, #0xc]
00529d0c  01 00 53 e1                                      cmp r3, r1
00529d10  03 c0 a0 11                                      movne ip, r3
00529d14  ba ff ff ea                                      b #0x529c04
00529d18  03 20 a0 e1                                      mov r2, r3
00529d1c  20 00 8d e2                                      add r0, sp, #0x20
00529d20  e0 fe ff eb                                      bl #0x5298a8
00529d24  20 30 9d e5                                      ldr r3, [sp, #0x20]
00529d28  00 30 87 e5                                      str r3, [r7]
00529d2c  85 ff ff ea                                      b #0x529b48
00529d30  00 c0 a0 e3                                      mov ip, #0
00529d34  04 20 a0 e1                                      mov r2, r4
00529d38  10 10 8d e8                                      stm sp, {r4, ip}
00529d3c  84 fe ff eb                                      bl #0x529754
00529d40  80 ff ff ea                                      b #0x529b48
00529d44  05 10 a0 e1                                      mov r1, r5
00529d48  06 20 a0 e1                                      mov r2, r6
00529d4c  18 00 8d e2                                      add r0, sp, #0x18
00529d50  d4 fe ff eb                                      bl #0x5298a8
00529d54  18 30 9d e5                                      ldr r3, [sp, #0x18]
00529d58  00 30 87 e5                                      str r3, [r7]
00529d5c  79 ff ff ea                                      b #0x529b48
00529d60  05 10 a0 e1                                      mov r1, r5
00529d64  04 20 a0 e1                                      mov r2, r4
00529d68  06 30 a0 e1                                      mov r3, r6
00529d6c  07 00 a0 e1                                      mov r0, r7
00529d70  00 e0 8d e5                                      str lr, [sp]
00529d74  04 40 8d e5                                      str r4, [sp, #4]
00529d78  75 fe ff eb                                      bl #0x529754
00529d7c  71 ff ff ea                                      b #0x529b48
00529d80  00 c0 a0 e3                                      mov ip, #0
00529d84  05 10 a0 e1                                      mov r1, r5
00529d88  04 20 a0 e1                                      mov r2, r4
00529d8c  06 30 a0 e1                                      mov r3, r6
00529d90  07 00 a0 e1                                      mov r0, r7
00529d94  00 c0 8d e5                                      str ip, [sp]
00529d98  04 40 8d e5                                      str r4, [sp, #4]
00529d9c  6c fe ff eb                                      bl #0x529754
00529da0  68 ff ff ea                                      b #0x529b48

; FUNCTION 0x0052a06c, declared_size=56, range_size=56, mode=arm
; class-group: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, sfc::math::graph::AlgoAStar<PFGInnerGraph, DiabloIPhoneHeuristic>::_InEdge>, std::priv::_Select1st<std::pair<unsigned int const, sfc::math::graph::AlgoAStar<PFGInnerGraph, DiabloIPhoneHeuristic>::_InEdge> >, std::priv::_MapTraitsT<std::pair<unsigned int const, sfc::math::graph::AlgoAStar<PFGInnerGraph, DiabloIPhoneHeuristic>::_InEdge> >, std::allocator<std::pair<unsigned int const, sfc::math::graph::AlgoAStar<PFGInnerGraph, DiabloIPhoneHeuristic>::_InEdge> > >
; alias: _ZNSt4priv8_Rb_treeIjSt4lessIjESt4pairIKjN3sfc4math5graph9AlgoAStarI13PFGInnerGraph21DiabloIPhoneHeuristicE7_InEdgeEENS_10_Select1stISD_EENS_11_MapTraitsTISD_EESaISD_EE8_M_eraseEPNS_18_Rb_tree_node_baseE
; demangled: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, sfc::math::graph::AlgoAStar<PFGInnerGraph, DiabloIPhoneHeuristic>::_InEdge>, std::priv::_Select1st<std::pair<unsigned int const, sfc::math::graph::AlgoAStar<PFGInnerGraph, DiabloIPhoneHeuristic>::_InEdge> >, std::priv::_MapTraitsT<std::pair<unsigned int const, sfc::math::graph::AlgoAStar<PFGInnerGraph, DiabloIPhoneHeuristic>::_InEdge> >, std::allocator<std::pair<unsigned int const, sfc::math::graph::AlgoAStar<PFGInnerGraph, DiabloIPhoneHeuristic>::_InEdge> > >::_M_erase(std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
0052a06c  70 40 2d e9                                      push {r4, r5, r6, lr}
0052a070  00 40 51 e2                                      subs r4, r1, #0
0052a074  00 60 a0 e1                                      mov r6, r0
0052a078  08 00 00 0a                                      beq #0x52a0a0
0052a07c  0c 10 94 e5                                      ldr r1, [r4, #0xc]
0052a080  06 00 a0 e1                                      mov r0, r6
0052a084  f8 ff ff eb                                      bl #0x52a06c
0052a088  08 50 94 e5                                      ldr r5, [r4, #8]
0052a08c  04 00 a0 e1                                      mov r0, r4
0052a090  20 10 a0 e3                                      mov r1, #0x20
0052a094  99 7b 07 eb                                      bl #0x708f00
0052a098  00 40 55 e2                                      subs r4, r5, #0
0052a09c  f6 ff ff 1a                                      bne #0x52a07c
0052a0a0  70 80 bd e8                                      pop {r4, r5, r6, pc}

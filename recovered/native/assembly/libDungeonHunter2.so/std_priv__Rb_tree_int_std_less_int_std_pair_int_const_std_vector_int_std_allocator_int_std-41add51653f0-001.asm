; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00811508, declared_size=128, range_size=128, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, std::vector<int, std::allocator<int> > >, std::priv::_Select1st<std::pair<int const, std::vector<int, std::allocator<int> > > >, std::priv::_MapTraitsT<std::pair<int const, std::vector<int, std::allocator<int> > > >, std::allocator<std::pair<int const, std::vector<int, std::allocator<int> > > > >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKiSt6vectorIiSaIiEEENS_10_Select1stIS8_EENS_11_MapTraitsTIS8_EESaIS8_EE8_M_eraseEPNS_18_Rb_tree_node_baseE
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, std::vector<int, std::allocator<int> > >, std::priv::_Select1st<std::pair<int const, std::vector<int, std::allocator<int> > > >, std::priv::_MapTraitsT<std::pair<int const, std::vector<int, std::allocator<int> > > >, std::allocator<std::pair<int const, std::vector<int, std::allocator<int> > > > >::_M_erase(std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
00811508  70 40 2d e9                                      push {r4, r5, r6, lr}
0081150c  00 40 51 e2                                      subs r4, r1, #0
00811510  00 60 a0 e1                                      mov r6, r0
00811514  06 00 00 1a                                      bne #0x811534
00811518  19 00 00 ea                                      b #0x811584
0081151c  85 b3 02 eb                                      bl #0x8be338
00811520  04 00 a0 e1                                      mov r0, r4
00811524  20 10 a0 e3                                      mov r1, #0x20
00811528  82 b3 02 eb                                      bl #0x8be338
0081152c  00 40 55 e2                                      subs r4, r5, #0
00811530  13 00 00 0a                                      beq #0x811584
00811534  06 00 a0 e1                                      mov r0, r6
00811538  0c 10 94 e5                                      ldr r1, [r4, #0xc]
0081153c  f1 ff ff eb                                      bl #0x811508
00811540  14 30 94 e5                                      ldr r3, [r4, #0x14]
00811544  08 50 94 e5                                      ldr r5, [r4, #8]
00811548  14 20 84 e2                                      add r2, r4, #0x14
0081154c  00 00 53 e3                                      cmp r3, #0
00811550  03 00 a0 e1                                      mov r0, r3
00811554  f1 ff ff 0a                                      beq #0x811520
00811558  08 10 92 e5                                      ldr r1, [r2, #8]
0081155c  01 10 63 e0                                      rsb r1, r3, r1
00811560  03 10 c1 e3                                      bic r1, r1, #3
00811564  80 00 51 e3                                      cmp r1, #0x80
00811568  eb ff ff 9a                                      bls #0x81151c
0081156c  b3 fb eb eb                                      bl #0x310440
00811570  04 00 a0 e1                                      mov r0, r4
00811574  20 10 a0 e3                                      mov r1, #0x20
00811578  6e b3 02 eb                                      bl #0x8be338
0081157c  00 40 55 e2                                      subs r4, r5, #0
00811580  eb ff ff 1a                                      bne #0x811534
00811584  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00811ed0, declared_size=76, range_size=76, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, std::vector<int, std::allocator<int> > >, std::priv::_Select1st<std::pair<int const, std::vector<int, std::allocator<int> > > >, std::priv::_MapTraitsT<std::pair<int const, std::vector<int, std::allocator<int> > > >, std::allocator<std::pair<int const, std::vector<int, std::allocator<int> > > > >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKiSt6vectorIiSaIiEEENS_10_Select1stIS8_EENS_11_MapTraitsTIS8_EESaIS8_EE14_M_create_nodeERKS8_
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, std::vector<int, std::allocator<int> > >, std::priv::_Select1st<std::pair<int const, std::vector<int, std::allocator<int> > > >, std::priv::_MapTraitsT<std::pair<int const, std::vector<int, std::allocator<int> > > >, std::allocator<std::pair<int const, std::vector<int, std::allocator<int> > > > >::_M_create_node(std::pair<int const, std::vector<int, std::allocator<int> > > const&)
; decoder-mode: arm
00811ed0  30 40 2d e9                                      push {r4, r5, lr}
00811ed4  0c d0 4d e2                                      sub sp, sp, #0xc
00811ed8  08 00 8d e2                                      add r0, sp, #8
00811edc  20 30 a0 e3                                      mov r3, #0x20
00811ee0  04 30 20 e5                                      str r3, [r0, #-4]!
00811ee4  01 50 a0 e1                                      mov r5, r1
00811ee8  0a b1 02 eb                                      bl #0x8be318
00811eec  05 10 a0 e1                                      mov r1, r5
00811ef0  04 30 91 e4                                      ldr r3, [r1], #4
00811ef4  00 40 a0 e1                                      mov r4, r0
00811ef8  14 00 80 e2                                      add r0, r0, #0x14
00811efc  10 30 84 e5                                      str r3, [r4, #0x10]
00811f00  7e b7 ed eb                                      bl #0x37fd00
00811f04  00 30 a0 e3                                      mov r3, #0
00811f08  0c 30 84 e5                                      str r3, [r4, #0xc]
00811f0c  08 30 84 e5                                      str r3, [r4, #8]
00811f10  04 00 a0 e1                                      mov r0, r4
00811f14  0c d0 8d e2                                      add sp, sp, #0xc
00811f18  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x00811f1c, declared_size=216, range_size=216, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, std::vector<int, std::allocator<int> > >, std::priv::_Select1st<std::pair<int const, std::vector<int, std::allocator<int> > > >, std::priv::_MapTraitsT<std::pair<int const, std::vector<int, std::allocator<int> > > >, std::allocator<std::pair<int const, std::vector<int, std::allocator<int> > > > >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKiSt6vectorIiSaIiEEENS_10_Select1stIS8_EENS_11_MapTraitsTIS8_EESaIS8_EE9_M_insertEPNS_18_Rb_tree_node_baseERKS8_SG_SG_
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, std::vector<int, std::allocator<int> > >, std::priv::_Select1st<std::pair<int const, std::vector<int, std::allocator<int> > > >, std::priv::_MapTraitsT<std::pair<int const, std::vector<int, std::allocator<int> > > >, std::allocator<std::pair<int const, std::vector<int, std::allocator<int> > > > >::_M_insert(std::priv::_Rb_tree_node_base*, std::pair<int const, std::vector<int, std::allocator<int> > > const&, std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
00811f1c  02 00 51 e1                                      cmp r1, r2
00811f20  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00811f24  01 40 a0 e1                                      mov r4, r1
00811f28  02 50 a0 e1                                      mov r5, r2
00811f2c  00 60 a0 e1                                      mov r6, r0
00811f30  22 00 00 0a                                      beq #0x811fc0
00811f34  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00811f38  00 00 52 e3                                      cmp r2, #0
00811f3c  11 00 00 0a                                      beq #0x811f88
00811f40  03 10 a0 e1                                      mov r1, r3
00811f44  04 00 a0 e1                                      mov r0, r4
00811f48  e0 ff ff eb                                      bl #0x811ed0
00811f4c  0c 00 85 e5                                      str r0, [r5, #0xc]
00811f50  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00811f54  00 70 a0 e1                                      mov r7, r0
00811f58  03 00 55 e1                                      cmp r5, r3
00811f5c  15 00 00 0a                                      beq #0x811fb8
00811f60  07 00 a0 e1                                      mov r0, r7
00811f64  04 50 87 e5                                      str r5, [r7, #4]
00811f68  04 10 84 e2                                      add r1, r4, #4
00811f6c  fb 05 ec eb                                      bl #0x313760
00811f70  10 30 94 e5                                      ldr r3, [r4, #0x10]
00811f74  06 00 a0 e1                                      mov r0, r6
00811f78  01 30 83 e2                                      add r3, r3, #1
00811f7c  10 30 84 e5                                      str r3, [r4, #0x10]
00811f80  00 70 86 e5                                      str r7, [r6]
00811f84  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00811f88  18 20 9d e5                                      ldr r2, [sp, #0x18]
00811f8c  00 00 52 e3                                      cmp r2, #0
00811f90  12 00 00 0a                                      beq #0x811fe0
00811f94  03 10 a0 e1                                      mov r1, r3
00811f98  04 00 a0 e1                                      mov r0, r4
00811f9c  cb ff ff eb                                      bl #0x811ed0
00811fa0  08 00 85 e5                                      str r0, [r5, #8]
00811fa4  08 30 94 e5                                      ldr r3, [r4, #8]
00811fa8  00 70 a0 e1                                      mov r7, r0
00811fac  03 00 55 e1                                      cmp r5, r3
00811fb0  08 00 84 05                                      streq r0, [r4, #8]
00811fb4  e9 ff ff ea                                      b #0x811f60
00811fb8  0c 70 84 e5                                      str r7, [r4, #0xc]
00811fbc  e7 ff ff ea                                      b #0x811f60
00811fc0  03 10 a0 e1                                      mov r1, r3
00811fc4  04 00 a0 e1                                      mov r0, r4
00811fc8  c0 ff ff eb                                      bl #0x811ed0
00811fcc  00 70 a0 e1                                      mov r7, r0
00811fd0  08 00 84 e5                                      str r0, [r4, #8]
00811fd4  04 00 84 e5                                      str r0, [r4, #4]
00811fd8  0c 00 84 e5                                      str r0, [r4, #0xc]
00811fdc  df ff ff ea                                      b #0x811f60
00811fe0  00 10 93 e5                                      ldr r1, [r3]
00811fe4  10 20 95 e5                                      ldr r2, [r5, #0x10]
00811fe8  02 00 51 e1                                      cmp r1, r2
00811fec  d3 ff ff aa                                      bge #0x811f40
00811ff0  e7 ff ff ea                                      b #0x811f94

; FUNCTION 0x00811ff4, declared_size=392, range_size=392, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, std::vector<int, std::allocator<int> > >, std::priv::_Select1st<std::pair<int const, std::vector<int, std::allocator<int> > > >, std::priv::_MapTraitsT<std::pair<int const, std::vector<int, std::allocator<int> > > >, std::allocator<std::pair<int const, std::vector<int, std::allocator<int> > > > >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKiSt6vectorIiSaIiEEENS_10_Select1stIS8_EENS_11_MapTraitsTIS8_EESaIS8_EE13insert_uniqueERKS8_
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, std::vector<int, std::allocator<int> > >, std::priv::_Select1st<std::pair<int const, std::vector<int, std::allocator<int> > > >, std::priv::_MapTraitsT<std::pair<int const, std::vector<int, std::allocator<int> > > >, std::allocator<std::pair<int const, std::vector<int, std::allocator<int> > > > >::insert_unique(std::pair<int const, std::vector<int, std::allocator<int> > > const&)
; decoder-mode: arm
00811ff4  70 40 2d e9                                      push {r4, r5, r6, lr}
00811ff8  04 c0 91 e5                                      ldr ip, [r1, #4]
00811ffc  10 d0 4d e2                                      sub sp, sp, #0x10
00812000  00 40 a0 e1                                      mov r4, r0
00812004  00 00 5c e3                                      cmp ip, #0
00812008  02 30 a0 e1                                      mov r3, r2
0081200c  01 c0 a0 01                                      moveq ip, r1
00812010  15 00 00 0a                                      beq #0x81206c
00812014  00 60 92 e5                                      ldr r6, [r2]
00812018  00 00 00 ea                                      b #0x812020
0081201c  02 c0 a0 e1                                      mov ip, r2
00812020  10 00 9c e5                                      ldr r0, [ip, #0x10]
00812024  01 50 a0 e3                                      mov r5, #1
00812028  06 00 50 e1                                      cmp r0, r6
0081202c  08 20 9c c5                                      ldrgt r2, [ip, #8]
00812030  0c 20 9c d5                                      ldrle r2, [ip, #0xc]
00812034  00 50 a0 d3                                      movle r5, #0
00812038  00 00 52 e3                                      cmp r2, #0
0081203c  f6 ff ff 1a                                      bne #0x81201c
00812040  00 00 55 e3                                      cmp r5, #0
00812044  0c 50 a0 01                                      moveq r5, ip
00812048  07 00 00 1a                                      bne #0x81206c
0081204c  00 00 56 e1                                      cmp r6, r0
00812050  00 30 a0 d3                                      movle r3, #0
00812054  00 50 84 d5                                      strle r5, [r4]
00812058  04 30 c4 d5                                      strble r3, [r4, #4]
0081205c  1c 00 00 ca                                      bgt #0x8120d4
00812060  04 00 a0 e1                                      mov r0, r4
00812064  10 d0 8d e2                                      add sp, sp, #0x10
00812068  70 80 bd e8                                      pop {r4, r5, r6, pc}
0081206c  08 20 91 e5                                      ldr r2, [r1, #8]
00812070  02 00 5c e1                                      cmp ip, r2
00812074  36 00 00 0a                                      beq #0x812154
00812078  00 20 dc e5                                      ldrb r2, [ip]
0081207c  00 00 52 e3                                      cmp r2, #0
00812080  03 00 00 1a                                      bne #0x812094
00812084  04 20 9c e5                                      ldr r2, [ip, #4]
00812088  04 20 92 e5                                      ldr r2, [r2, #4]
0081208c  02 00 5c e1                                      cmp ip, r2
00812090  2a 00 00 0a                                      beq #0x812140
00812094  08 00 9c e5                                      ldr r0, [ip, #8]
00812098  00 00 50 e3                                      cmp r0, #0
0081209c  01 00 00 1a                                      bne #0x8120a8
008120a0  16 00 00 ea                                      b #0x812100
008120a4  02 00 a0 e1                                      mov r0, r2
008120a8  0c 20 90 e5                                      ldr r2, [r0, #0xc]
008120ac  00 00 52 e3                                      cmp r2, #0
008120b0  fb ff ff 1a                                      bne #0x8120a4
008120b4  00 60 93 e5                                      ldr r6, [r3]
008120b8  00 50 a0 e1                                      mov r5, r0
008120bc  10 00 90 e5                                      ldr r0, [r0, #0x10]
008120c0  00 00 56 e1                                      cmp r6, r0
008120c4  00 30 a0 d3                                      movle r3, #0
008120c8  00 50 84 d5                                      strle r5, [r4]
008120cc  04 30 c4 d5                                      strble r3, [r4, #4]
008120d0  e2 ff ff da                                      ble #0x812060
008120d4  0c 20 a0 e1                                      mov r2, ip
008120d8  08 00 8d e2                                      add r0, sp, #8
008120dc  00 c0 a0 e3                                      mov ip, #0
008120e0  04 c0 8d e5                                      str ip, [sp, #4]
008120e4  00 c0 8d e5                                      str ip, [sp]
008120e8  8b ff ff eb                                      bl #0x811f1c
008120ec  08 30 9d e5                                      ldr r3, [sp, #8]
008120f0  01 20 a0 e3                                      mov r2, #1
008120f4  04 20 c4 e5                                      strb r2, [r4, #4]
008120f8  00 30 84 e5                                      str r3, [r4]
008120fc  d7 ff ff ea                                      b #0x812060
00812100  04 20 9c e5                                      ldr r2, [ip, #4]
00812104  08 00 92 e5                                      ldr r0, [r2, #8]
00812108  00 00 5c e1                                      cmp ip, r0
0081210c  02 50 a0 11                                      movne r5, r2
00812110  00 60 93 15                                      ldrne r6, [r3]
00812114  10 00 92 15                                      ldrne r0, [r2, #0x10]
00812118  01 00 00 0a                                      beq #0x812124
0081211c  ca ff ff ea                                      b #0x81204c
00812120  05 20 a0 e1                                      mov r2, r5
00812124  04 50 92 e5                                      ldr r5, [r2, #4]
00812128  08 00 95 e5                                      ldr r0, [r5, #8]
0081212c  02 00 50 e1                                      cmp r0, r2
00812130  fa ff ff 0a                                      beq #0x812120
00812134  00 60 93 e5                                      ldr r6, [r3]
00812138  10 00 95 e5                                      ldr r0, [r5, #0x10]
0081213c  c2 ff ff ea                                      b #0x81204c
00812140  0c 20 9c e5                                      ldr r2, [ip, #0xc]
00812144  00 60 93 e5                                      ldr r6, [r3]
00812148  02 50 a0 e1                                      mov r5, r2
0081214c  10 00 92 e5                                      ldr r0, [r2, #0x10]
00812150  bd ff ff ea                                      b #0x81204c
00812154  0c 20 a0 e1                                      mov r2, ip
00812158  00 e0 a0 e3                                      mov lr, #0
0081215c  0c 00 8d e2                                      add r0, sp, #0xc
00812160  00 50 8d e8                                      stm sp, {ip, lr}
00812164  6c ff ff eb                                      bl #0x811f1c
00812168  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0081216c  01 20 a0 e3                                      mov r2, #1
00812170  04 20 c4 e5                                      strb r2, [r4, #4]
00812174  00 30 84 e5                                      str r3, [r4]
00812178  b8 ff ff ea                                      b #0x812060

; FUNCTION 0x0081217c, declared_size=884, range_size=884, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, std::vector<int, std::allocator<int> > >, std::priv::_Select1st<std::pair<int const, std::vector<int, std::allocator<int> > > >, std::priv::_MapTraitsT<std::pair<int const, std::vector<int, std::allocator<int> > > >, std::allocator<std::pair<int const, std::vector<int, std::allocator<int> > > > >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKiSt6vectorIiSaIiEEENS_10_Select1stIS8_EENS_11_MapTraitsTIS8_EESaIS8_EE13insert_uniqueENS_17_Rb_tree_iteratorIS8_SC_EERKS8_
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, std::vector<int, std::allocator<int> > >, std::priv::_Select1st<std::pair<int const, std::vector<int, std::allocator<int> > > >, std::priv::_MapTraitsT<std::pair<int const, std::vector<int, std::allocator<int> > > >, std::allocator<std::pair<int const, std::vector<int, std::allocator<int> > > > >::insert_unique(std::priv::_Rb_tree_iterator<std::pair<int const, std::vector<int, std::allocator<int> > >, std::priv::_MapTraitsT<std::pair<int const, std::vector<int, std::allocator<int> > > > >, std::pair<int const, std::vector<int, std::allocator<int> > > const&)
; decoder-mode: arm
0081217c  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00812180  00 40 92 e5                                      ldr r4, [r2]
00812184  08 20 91 e5                                      ldr r2, [r1, #8]
00812188  2c d0 4d e2                                      sub sp, sp, #0x2c
0081218c  01 50 a0 e1                                      mov r5, r1
00812190  02 00 54 e1                                      cmp r4, r2
00812194  00 70 a0 e1                                      mov r7, r0
00812198  03 60 a0 e1                                      mov r6, r3
0081219c  5a 00 00 0a                                      beq #0x81230c
008121a0  01 00 54 e1                                      cmp r4, r1
008121a4  78 00 00 0a                                      beq #0x81238c
008121a8  00 30 d4 e5                                      ldrb r3, [r4]
008121ac  00 00 53 e3                                      cmp r3, #0
008121b0  3a 00 00 0a                                      beq #0x8122a0
008121b4  08 c0 94 e5                                      ldr ip, [r4, #8]
008121b8  00 00 5c e3                                      cmp ip, #0
008121bc  01 00 00 1a                                      bne #0x8121c8
008121c0  3e 00 00 ea                                      b #0x8122c0
008121c4  03 c0 a0 e1                                      mov ip, r3
008121c8  0c 30 9c e5                                      ldr r3, [ip, #0xc]
008121cc  00 00 53 e3                                      cmp r3, #0
008121d0  fb ff ff 1a                                      bne #0x8121c4
008121d4  00 20 96 e5                                      ldr r2, [r6]
008121d8  10 00 94 e5                                      ldr r0, [r4, #0x10]
008121dc  00 00 52 e1                                      cmp r2, r0
008121e0  00 10 a0 a3                                      movge r1, #0
008121e4  01 10 a0 b3                                      movlt r1, #1
008121e8  00 00 51 e3                                      cmp r1, #0
008121ec  1b 00 00 1a                                      bne #0x812260
008121f0  0c 80 94 e5                                      ldr r8, [r4, #0xc]
008121f4  00 00 58 e3                                      cmp r8, #0
008121f8  7d 00 00 0a                                      beq #0x8123f4
008121fc  08 c0 a0 e1                                      mov ip, r8
00812200  00 00 00 ea                                      b #0x812208
00812204  03 c0 a0 e1                                      mov ip, r3
00812208  08 30 9c e5                                      ldr r3, [ip, #8]
0081220c  00 00 53 e3                                      cmp r3, #0
00812210  fb ff ff 1a                                      bne #0x812204
00812214  00 00 51 e3                                      cmp r1, #0
00812218  34 00 00 1a                                      bne #0x8122f0
0081221c  00 00 52 e1                                      cmp r2, r0
00812220  63 00 00 da                                      ble #0x8123b4
00812224  0c 00 55 e1                                      cmp r5, ip
00812228  02 00 00 0a                                      beq #0x812238
0081222c  10 30 9c e5                                      ldr r3, [ip, #0x10]
00812230  03 00 52 e1                                      cmp r2, r3
00812234  2d 00 00 aa                                      bge #0x8122f0
00812238  00 00 58 e3                                      cmp r8, #0
0081223c  4a 00 00 1a                                      bne #0x81236c
00812240  05 10 a0 e1                                      mov r1, r5
00812244  04 20 a0 e1                                      mov r2, r4
00812248  06 30 a0 e1                                      mov r3, r6
0081224c  07 00 a0 e1                                      mov r0, r7
00812250  00 80 8d e5                                      str r8, [sp]
00812254  04 40 8d e5                                      str r4, [sp, #4]
00812258  2f ff ff eb                                      bl #0x811f1c
0081225c  0c 00 00 ea                                      b #0x812294
00812260  10 30 9c e5                                      ldr r3, [ip, #0x10]
00812264  03 00 52 e1                                      cmp r2, r3
00812268  e0 ff ff da                                      ble #0x8121f0
0081226c  0c e0 9c e5                                      ldr lr, [ip, #0xc]
00812270  00 00 5e e3                                      cmp lr, #0
00812274  56 00 00 0a                                      beq #0x8123d4
00812278  00 c0 a0 e3                                      mov ip, #0
0081227c  05 10 a0 e1                                      mov r1, r5
00812280  04 20 a0 e1                                      mov r2, r4
00812284  06 30 a0 e1                                      mov r3, r6
00812288  07 00 a0 e1                                      mov r0, r7
0081228c  10 10 8d e8                                      stm sp, {r4, ip}
00812290  21 ff ff eb                                      bl #0x811f1c
00812294  07 00 a0 e1                                      mov r0, r7
00812298  2c d0 8d e2                                      add sp, sp, #0x2c
0081229c  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
008122a0  04 30 94 e5                                      ldr r3, [r4, #4]
008122a4  04 30 93 e5                                      ldr r3, [r3, #4]
008122a8  03 00 54 e1                                      cmp r4, r3
008122ac  0c c0 94 05                                      ldreq ip, [r4, #0xc]
008122b0  c7 ff ff 0a                                      beq #0x8121d4
008122b4  08 c0 94 e5                                      ldr ip, [r4, #8]
008122b8  00 00 5c e3                                      cmp ip, #0
008122bc  c1 ff ff 1a                                      bne #0x8121c8
008122c0  04 c0 94 e5                                      ldr ip, [r4, #4]
008122c4  08 30 9c e5                                      ldr r3, [ip, #8]
008122c8  03 00 54 e1                                      cmp r4, r3
008122cc  01 00 00 0a                                      beq #0x8122d8
008122d0  bf ff ff ea                                      b #0x8121d4
008122d4  03 c0 a0 e1                                      mov ip, r3
008122d8  04 30 9c e5                                      ldr r3, [ip, #4]
008122dc  08 20 93 e5                                      ldr r2, [r3, #8]
008122e0  0c 00 52 e1                                      cmp r2, ip
008122e4  fa ff ff 0a                                      beq #0x8122d4
008122e8  03 c0 a0 e1                                      mov ip, r3
008122ec  b8 ff ff ea                                      b #0x8121d4
008122f0  05 10 a0 e1                                      mov r1, r5
008122f4  06 20 a0 e1                                      mov r2, r6
008122f8  08 00 8d e2                                      add r0, sp, #8
008122fc  3c ff ff eb                                      bl #0x811ff4
00812300  08 30 9d e5                                      ldr r3, [sp, #8]
00812304  00 30 87 e5                                      str r3, [r7]
00812308  e1 ff ff ea                                      b #0x812294
0081230c  10 20 91 e5                                      ldr r2, [r1, #0x10]
00812310  00 00 52 e3                                      cmp r2, #0
00812314  52 00 00 0a                                      beq #0x812464
00812318  00 20 93 e5                                      ldr r2, [r3]
0081231c  10 c0 94 e5                                      ldr ip, [r4, #0x10]
00812320  0c 00 52 e1                                      cmp r2, ip
00812324  54 00 00 ba                                      blt #0x81247c
00812328  21 00 00 da                                      ble #0x8123b4
0081232c  0c e0 94 e5                                      ldr lr, [r4, #0xc]
00812330  00 00 5e e3                                      cmp lr, #0
00812334  3c 00 00 0a                                      beq #0x81242c
00812338  0e c0 a0 e1                                      mov ip, lr
0081233c  00 00 00 ea                                      b #0x812344
00812340  03 c0 a0 e1                                      mov ip, r3
00812344  08 30 9c e5                                      ldr r3, [ip, #8]
00812348  00 00 53 e3                                      cmp r3, #0
0081234c  fb ff ff 1a                                      bne #0x812340
00812350  0c 00 55 e1                                      cmp r5, ip
00812354  5c 00 00 0a                                      beq #0x8124cc
00812358  10 30 9c e5                                      ldr r3, [ip, #0x10]
0081235c  03 00 52 e1                                      cmp r2, r3
00812360  4a 00 00 aa                                      bge #0x812490
00812364  00 00 5e e3                                      cmp lr, #0
00812368  4f 00 00 0a                                      beq #0x8124ac
0081236c  00 e0 a0 e3                                      mov lr, #0
00812370  05 10 a0 e1                                      mov r1, r5
00812374  0c 20 a0 e1                                      mov r2, ip
00812378  06 30 a0 e1                                      mov r3, r6
0081237c  07 00 a0 e1                                      mov r0, r7
00812380  00 50 8d e8                                      stm sp, {ip, lr}
00812384  e4 fe ff eb                                      bl #0x811f1c
00812388  c1 ff ff ea                                      b #0x812294
0081238c  0c 20 94 e5                                      ldr r2, [r4, #0xc]
00812390  00 c0 93 e5                                      ldr ip, [r3]
00812394  10 e0 92 e5                                      ldr lr, [r2, #0x10]
00812398  0c 00 5e e1                                      cmp lr, ip
0081239c  06 00 00 aa                                      bge #0x8123bc
008123a0  00 c0 a0 e3                                      mov ip, #0
008123a4  00 c0 8d e5                                      str ip, [sp]
008123a8  04 40 8d e5                                      str r4, [sp, #4]
008123ac  da fe ff eb                                      bl #0x811f1c
008123b0  b7 ff ff ea                                      b #0x812294
008123b4  00 40 87 e5                                      str r4, [r7]
008123b8  b5 ff ff ea                                      b #0x812294
008123bc  03 20 a0 e1                                      mov r2, r3
008123c0  10 00 8d e2                                      add r0, sp, #0x10
008123c4  0a ff ff eb                                      bl #0x811ff4
008123c8  10 30 9d e5                                      ldr r3, [sp, #0x10]
008123cc  00 30 87 e5                                      str r3, [r7]
008123d0  af ff ff ea                                      b #0x812294
008123d4  05 10 a0 e1                                      mov r1, r5
008123d8  0c 20 a0 e1                                      mov r2, ip
008123dc  06 30 a0 e1                                      mov r3, r6
008123e0  07 00 a0 e1                                      mov r0, r7
008123e4  00 e0 8d e5                                      str lr, [sp]
008123e8  04 c0 8d e5                                      str ip, [sp, #4]
008123ec  ca fe ff eb                                      bl #0x811f1c
008123f0  a7 ff ff ea                                      b #0x812294
008123f4  04 30 94 e5                                      ldr r3, [r4, #4]
008123f8  0c c0 93 e5                                      ldr ip, [r3, #0xc]
008123fc  0c 00 54 e1                                      cmp r4, ip
00812400  04 c0 a0 11                                      movne ip, r4
00812404  04 00 00 1a                                      bne #0x81241c
00812408  03 c0 a0 e1                                      mov ip, r3
0081240c  04 30 93 e5                                      ldr r3, [r3, #4]
00812410  0c a0 93 e5                                      ldr sl, [r3, #0xc]
00812414  0a 00 5c e1                                      cmp ip, sl
00812418  fa ff ff 0a                                      beq #0x812408
0081241c  0c a0 9c e5                                      ldr sl, [ip, #0xc]
00812420  0a 00 53 e1                                      cmp r3, sl
00812424  03 c0 a0 11                                      movne ip, r3
00812428  79 ff ff ea                                      b #0x812214
0081242c  04 30 94 e5                                      ldr r3, [r4, #4]
00812430  0c 10 93 e5                                      ldr r1, [r3, #0xc]
00812434  01 00 54 e1                                      cmp r4, r1
00812438  04 c0 a0 11                                      movne ip, r4
0081243c  04 00 00 1a                                      bne #0x812454
00812440  03 c0 a0 e1                                      mov ip, r3
00812444  04 30 93 e5                                      ldr r3, [r3, #4]
00812448  0c 10 93 e5                                      ldr r1, [r3, #0xc]
0081244c  0c 00 51 e1                                      cmp r1, ip
00812450  fa ff ff 0a                                      beq #0x812440
00812454  0c 10 9c e5                                      ldr r1, [ip, #0xc]
00812458  01 00 53 e1                                      cmp r3, r1
0081245c  03 c0 a0 11                                      movne ip, r3
00812460  ba ff ff ea                                      b #0x812350
00812464  03 20 a0 e1                                      mov r2, r3
00812468  20 00 8d e2                                      add r0, sp, #0x20
0081246c  e0 fe ff eb                                      bl #0x811ff4
00812470  20 30 9d e5                                      ldr r3, [sp, #0x20]
00812474  00 30 87 e5                                      str r3, [r7]
00812478  85 ff ff ea                                      b #0x812294
0081247c  00 c0 a0 e3                                      mov ip, #0
00812480  04 20 a0 e1                                      mov r2, r4
00812484  10 10 8d e8                                      stm sp, {r4, ip}
00812488  a3 fe ff eb                                      bl #0x811f1c
0081248c  80 ff ff ea                                      b #0x812294
00812490  05 10 a0 e1                                      mov r1, r5
00812494  06 20 a0 e1                                      mov r2, r6
00812498  18 00 8d e2                                      add r0, sp, #0x18
0081249c  d4 fe ff eb                                      bl #0x811ff4
008124a0  18 30 9d e5                                      ldr r3, [sp, #0x18]
008124a4  00 30 87 e5                                      str r3, [r7]
008124a8  79 ff ff ea                                      b #0x812294
008124ac  05 10 a0 e1                                      mov r1, r5
008124b0  04 20 a0 e1                                      mov r2, r4
008124b4  06 30 a0 e1                                      mov r3, r6
008124b8  07 00 a0 e1                                      mov r0, r7
008124bc  00 e0 8d e5                                      str lr, [sp]
008124c0  04 40 8d e5                                      str r4, [sp, #4]
008124c4  94 fe ff eb                                      bl #0x811f1c
008124c8  71 ff ff ea                                      b #0x812294
008124cc  00 c0 a0 e3                                      mov ip, #0
008124d0  05 10 a0 e1                                      mov r1, r5
008124d4  04 20 a0 e1                                      mov r2, r4
008124d8  06 30 a0 e1                                      mov r3, r6
008124dc  07 00 a0 e1                                      mov r0, r7
008124e0  00 c0 8d e5                                      str ip, [sp]
008124e4  04 40 8d e5                                      str r4, [sp, #4]
008124e8  8b fe ff eb                                      bl #0x811f1c
008124ec  68 ff ff ea                                      b #0x812294

; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00343470, declared_size=292, range_size=292, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, short>, std::priv::_Select1st<std::pair<int const, short> >, std::priv::_MapTraitsT<std::pair<int const, short> >, std::allocator<std::pair<int const, short> > >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKisENS_10_Select1stIS5_EENS_11_MapTraitsTIS5_EESaIS5_EE9_M_insertEPNS_18_Rb_tree_node_baseERKS5_SD_SD_
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, short>, std::priv::_Select1st<std::pair<int const, short> >, std::priv::_MapTraitsT<std::pair<int const, short> >, std::allocator<std::pair<int const, short> > >::_M_insert(std::priv::_Rb_tree_node_base*, std::pair<int const, short> const&, std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
00343470  02 00 51 e1                                      cmp r1, r2
00343474  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00343478  01 40 a0 e1                                      mov r4, r1
0034347c  02 70 a0 e1                                      mov r7, r2
00343480  00 50 a0 e1                                      mov r5, r0
00343484  03 80 a0 e1                                      mov r8, r3
00343488  2e 00 00 0a                                      beq #0x343548
0034348c  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
00343490  00 00 53 e3                                      cmp r3, #0
00343494  17 00 00 0a                                      beq #0x3434f8
00343498  04 00 a0 e1                                      mov r0, r4
0034349c  eb ff ff eb                                      bl #0x343450
003434a0  00 20 98 e5                                      ldr r2, [r8]
003434a4  00 30 a0 e3                                      mov r3, #0
003434a8  00 60 a0 e1                                      mov r6, r0
003434ac  10 20 80 e5                                      str r2, [r0, #0x10]
003434b0  b4 80 d8 e1                                      ldrh r8, [r8, #4]
003434b4  0c 30 80 e5                                      str r3, [r0, #0xc]
003434b8  08 30 80 e5                                      str r3, [r0, #8]
003434bc  b4 81 c0 e1                                      strh r8, [r0, #0x14]
003434c0  0c 00 87 e5                                      str r0, [r7, #0xc]
003434c4  0c 30 94 e5                                      ldr r3, [r4, #0xc]
003434c8  03 00 57 e1                                      cmp r7, r3
003434cc  1b 00 00 0a                                      beq #0x343540
003434d0  06 00 a0 e1                                      mov r0, r6
003434d4  04 70 86 e5                                      str r7, [r6, #4]
003434d8  04 10 84 e2                                      add r1, r4, #4
003434dc  9f 40 ff eb                                      bl #0x313760
003434e0  10 30 94 e5                                      ldr r3, [r4, #0x10]
003434e4  05 00 a0 e1                                      mov r0, r5
003434e8  01 30 83 e2                                      add r3, r3, #1
003434ec  10 30 84 e5                                      str r3, [r4, #0x10]
003434f0  00 60 85 e5                                      str r6, [r5]
003434f4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003434f8  18 30 9d e5                                      ldr r3, [sp, #0x18]
003434fc  00 00 53 e3                                      cmp r3, #0
00343500  1e 00 00 0a                                      beq #0x343580
00343504  04 00 a0 e1                                      mov r0, r4
00343508  d0 ff ff eb                                      bl #0x343450
0034350c  00 20 98 e5                                      ldr r2, [r8]
00343510  00 30 a0 e3                                      mov r3, #0
00343514  00 60 a0 e1                                      mov r6, r0
00343518  10 20 80 e5                                      str r2, [r0, #0x10]
0034351c  b4 80 d8 e1                                      ldrh r8, [r8, #4]
00343520  0c 30 80 e5                                      str r3, [r0, #0xc]
00343524  08 30 80 e5                                      str r3, [r0, #8]
00343528  b4 81 c0 e1                                      strh r8, [r0, #0x14]
0034352c  08 00 87 e5                                      str r0, [r7, #8]
00343530  08 30 94 e5                                      ldr r3, [r4, #8]
00343534  03 00 57 e1                                      cmp r7, r3
00343538  08 00 84 05                                      streq r0, [r4, #8]
0034353c  e3 ff ff ea                                      b #0x3434d0
00343540  0c 60 84 e5                                      str r6, [r4, #0xc]
00343544  e1 ff ff ea                                      b #0x3434d0
00343548  01 00 a0 e1                                      mov r0, r1
0034354c  bf ff ff eb                                      bl #0x343450
00343550  00 20 98 e5                                      ldr r2, [r8]
00343554  00 30 a0 e3                                      mov r3, #0
00343558  00 60 a0 e1                                      mov r6, r0
0034355c  10 20 80 e5                                      str r2, [r0, #0x10]
00343560  b4 80 d8 e1                                      ldrh r8, [r8, #4]
00343564  0c 30 80 e5                                      str r3, [r0, #0xc]
00343568  08 30 80 e5                                      str r3, [r0, #8]
0034356c  b4 81 c0 e1                                      strh r8, [r0, #0x14]
00343570  08 00 84 e5                                      str r0, [r4, #8]
00343574  04 00 84 e5                                      str r0, [r4, #4]
00343578  0c 00 84 e5                                      str r0, [r4, #0xc]
0034357c  d3 ff ff ea                                      b #0x3434d0
00343580  00 20 98 e5                                      ldr r2, [r8]
00343584  10 30 97 e5                                      ldr r3, [r7, #0x10]
00343588  03 00 52 e1                                      cmp r2, r3
0034358c  c1 ff ff aa                                      bge #0x343498
00343590  db ff ff ea                                      b #0x343504

; FUNCTION 0x00343594, declared_size=392, range_size=392, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, short>, std::priv::_Select1st<std::pair<int const, short> >, std::priv::_MapTraitsT<std::pair<int const, short> >, std::allocator<std::pair<int const, short> > >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKisENS_10_Select1stIS5_EENS_11_MapTraitsTIS5_EESaIS5_EE13insert_uniqueERKS5_
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, short>, std::priv::_Select1st<std::pair<int const, short> >, std::priv::_MapTraitsT<std::pair<int const, short> >, std::allocator<std::pair<int const, short> > >::insert_unique(std::pair<int const, short> const&)
; decoder-mode: arm
00343594  70 40 2d e9                                      push {r4, r5, r6, lr}
00343598  04 c0 91 e5                                      ldr ip, [r1, #4]
0034359c  10 d0 4d e2                                      sub sp, sp, #0x10
003435a0  00 40 a0 e1                                      mov r4, r0
003435a4  00 00 5c e3                                      cmp ip, #0
003435a8  02 30 a0 e1                                      mov r3, r2
003435ac  01 c0 a0 01                                      moveq ip, r1
003435b0  15 00 00 0a                                      beq #0x34360c
003435b4  00 60 92 e5                                      ldr r6, [r2]
003435b8  00 00 00 ea                                      b #0x3435c0
003435bc  02 c0 a0 e1                                      mov ip, r2
003435c0  10 00 9c e5                                      ldr r0, [ip, #0x10]
003435c4  01 50 a0 e3                                      mov r5, #1
003435c8  06 00 50 e1                                      cmp r0, r6
003435cc  08 20 9c c5                                      ldrgt r2, [ip, #8]
003435d0  0c 20 9c d5                                      ldrle r2, [ip, #0xc]
003435d4  00 50 a0 d3                                      movle r5, #0
003435d8  00 00 52 e3                                      cmp r2, #0
003435dc  f6 ff ff 1a                                      bne #0x3435bc
003435e0  00 00 55 e3                                      cmp r5, #0
003435e4  0c 50 a0 01                                      moveq r5, ip
003435e8  07 00 00 1a                                      bne #0x34360c
003435ec  00 00 56 e1                                      cmp r6, r0
003435f0  00 30 a0 d3                                      movle r3, #0
003435f4  00 50 84 d5                                      strle r5, [r4]
003435f8  04 30 c4 d5                                      strble r3, [r4, #4]
003435fc  1c 00 00 ca                                      bgt #0x343674
00343600  04 00 a0 e1                                      mov r0, r4
00343604  10 d0 8d e2                                      add sp, sp, #0x10
00343608  70 80 bd e8                                      pop {r4, r5, r6, pc}
0034360c  08 20 91 e5                                      ldr r2, [r1, #8]
00343610  02 00 5c e1                                      cmp ip, r2
00343614  36 00 00 0a                                      beq #0x3436f4
00343618  00 20 dc e5                                      ldrb r2, [ip]
0034361c  00 00 52 e3                                      cmp r2, #0
00343620  03 00 00 1a                                      bne #0x343634
00343624  04 20 9c e5                                      ldr r2, [ip, #4]
00343628  04 20 92 e5                                      ldr r2, [r2, #4]
0034362c  02 00 5c e1                                      cmp ip, r2
00343630  2a 00 00 0a                                      beq #0x3436e0
00343634  08 00 9c e5                                      ldr r0, [ip, #8]
00343638  00 00 50 e3                                      cmp r0, #0
0034363c  01 00 00 1a                                      bne #0x343648
00343640  16 00 00 ea                                      b #0x3436a0
00343644  02 00 a0 e1                                      mov r0, r2
00343648  0c 20 90 e5                                      ldr r2, [r0, #0xc]
0034364c  00 00 52 e3                                      cmp r2, #0
00343650  fb ff ff 1a                                      bne #0x343644
00343654  00 60 93 e5                                      ldr r6, [r3]
00343658  00 50 a0 e1                                      mov r5, r0
0034365c  10 00 90 e5                                      ldr r0, [r0, #0x10]
00343660  00 00 56 e1                                      cmp r6, r0
00343664  00 30 a0 d3                                      movle r3, #0
00343668  00 50 84 d5                                      strle r5, [r4]
0034366c  04 30 c4 d5                                      strble r3, [r4, #4]
00343670  e2 ff ff da                                      ble #0x343600
00343674  0c 20 a0 e1                                      mov r2, ip
00343678  08 00 8d e2                                      add r0, sp, #8
0034367c  00 c0 a0 e3                                      mov ip, #0
00343680  04 c0 8d e5                                      str ip, [sp, #4]
00343684  00 c0 8d e5                                      str ip, [sp]
00343688  78 ff ff eb                                      bl #0x343470
0034368c  08 30 9d e5                                      ldr r3, [sp, #8]
00343690  01 20 a0 e3                                      mov r2, #1
00343694  04 20 c4 e5                                      strb r2, [r4, #4]
00343698  00 30 84 e5                                      str r3, [r4]
0034369c  d7 ff ff ea                                      b #0x343600
003436a0  04 20 9c e5                                      ldr r2, [ip, #4]
003436a4  08 00 92 e5                                      ldr r0, [r2, #8]
003436a8  00 00 5c e1                                      cmp ip, r0
003436ac  02 50 a0 11                                      movne r5, r2
003436b0  00 60 93 15                                      ldrne r6, [r3]
003436b4  10 00 92 15                                      ldrne r0, [r2, #0x10]
003436b8  01 00 00 0a                                      beq #0x3436c4
003436bc  ca ff ff ea                                      b #0x3435ec
003436c0  05 20 a0 e1                                      mov r2, r5
003436c4  04 50 92 e5                                      ldr r5, [r2, #4]
003436c8  08 00 95 e5                                      ldr r0, [r5, #8]
003436cc  02 00 50 e1                                      cmp r0, r2
003436d0  fa ff ff 0a                                      beq #0x3436c0
003436d4  00 60 93 e5                                      ldr r6, [r3]
003436d8  10 00 95 e5                                      ldr r0, [r5, #0x10]
003436dc  c2 ff ff ea                                      b #0x3435ec
003436e0  0c 20 9c e5                                      ldr r2, [ip, #0xc]
003436e4  00 60 93 e5                                      ldr r6, [r3]
003436e8  02 50 a0 e1                                      mov r5, r2
003436ec  10 00 92 e5                                      ldr r0, [r2, #0x10]
003436f0  bd ff ff ea                                      b #0x3435ec
003436f4  0c 20 a0 e1                                      mov r2, ip
003436f8  00 e0 a0 e3                                      mov lr, #0
003436fc  0c 00 8d e2                                      add r0, sp, #0xc
00343700  00 50 8d e8                                      stm sp, {ip, lr}
00343704  59 ff ff eb                                      bl #0x343470
00343708  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0034370c  01 20 a0 e3                                      mov r2, #1
00343710  04 20 c4 e5                                      strb r2, [r4, #4]
00343714  00 30 84 e5                                      str r3, [r4]
00343718  b8 ff ff ea                                      b #0x343600

; FUNCTION 0x0034371c, declared_size=884, range_size=884, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, short>, std::priv::_Select1st<std::pair<int const, short> >, std::priv::_MapTraitsT<std::pair<int const, short> >, std::allocator<std::pair<int const, short> > >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKisENS_10_Select1stIS5_EENS_11_MapTraitsTIS5_EESaIS5_EE13insert_uniqueENS_17_Rb_tree_iteratorIS5_S9_EERKS5_
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, short>, std::priv::_Select1st<std::pair<int const, short> >, std::priv::_MapTraitsT<std::pair<int const, short> >, std::allocator<std::pair<int const, short> > >::insert_unique(std::priv::_Rb_tree_iterator<std::pair<int const, short>, std::priv::_MapTraitsT<std::pair<int const, short> > >, std::pair<int const, short> const&)
; decoder-mode: arm
0034371c  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00343720  00 40 92 e5                                      ldr r4, [r2]
00343724  08 20 91 e5                                      ldr r2, [r1, #8]
00343728  2c d0 4d e2                                      sub sp, sp, #0x2c
0034372c  01 50 a0 e1                                      mov r5, r1
00343730  02 00 54 e1                                      cmp r4, r2
00343734  00 70 a0 e1                                      mov r7, r0
00343738  03 60 a0 e1                                      mov r6, r3
0034373c  5a 00 00 0a                                      beq #0x3438ac
00343740  01 00 54 e1                                      cmp r4, r1
00343744  78 00 00 0a                                      beq #0x34392c
00343748  00 30 d4 e5                                      ldrb r3, [r4]
0034374c  00 00 53 e3                                      cmp r3, #0
00343750  3a 00 00 0a                                      beq #0x343840
00343754  08 c0 94 e5                                      ldr ip, [r4, #8]
00343758  00 00 5c e3                                      cmp ip, #0
0034375c  01 00 00 1a                                      bne #0x343768
00343760  3e 00 00 ea                                      b #0x343860
00343764  03 c0 a0 e1                                      mov ip, r3
00343768  0c 30 9c e5                                      ldr r3, [ip, #0xc]
0034376c  00 00 53 e3                                      cmp r3, #0
00343770  fb ff ff 1a                                      bne #0x343764
00343774  00 20 96 e5                                      ldr r2, [r6]
00343778  10 00 94 e5                                      ldr r0, [r4, #0x10]
0034377c  00 00 52 e1                                      cmp r2, r0
00343780  00 10 a0 a3                                      movge r1, #0
00343784  01 10 a0 b3                                      movlt r1, #1
00343788  00 00 51 e3                                      cmp r1, #0
0034378c  1b 00 00 1a                                      bne #0x343800
00343790  0c 80 94 e5                                      ldr r8, [r4, #0xc]
00343794  00 00 58 e3                                      cmp r8, #0
00343798  7d 00 00 0a                                      beq #0x343994
0034379c  08 c0 a0 e1                                      mov ip, r8
003437a0  00 00 00 ea                                      b #0x3437a8
003437a4  03 c0 a0 e1                                      mov ip, r3
003437a8  08 30 9c e5                                      ldr r3, [ip, #8]
003437ac  00 00 53 e3                                      cmp r3, #0
003437b0  fb ff ff 1a                                      bne #0x3437a4
003437b4  00 00 51 e3                                      cmp r1, #0
003437b8  34 00 00 1a                                      bne #0x343890
003437bc  00 00 52 e1                                      cmp r2, r0
003437c0  63 00 00 da                                      ble #0x343954
003437c4  0c 00 55 e1                                      cmp r5, ip
003437c8  02 00 00 0a                                      beq #0x3437d8
003437cc  10 30 9c e5                                      ldr r3, [ip, #0x10]
003437d0  03 00 52 e1                                      cmp r2, r3
003437d4  2d 00 00 aa                                      bge #0x343890
003437d8  00 00 58 e3                                      cmp r8, #0
003437dc  4a 00 00 1a                                      bne #0x34390c
003437e0  05 10 a0 e1                                      mov r1, r5
003437e4  04 20 a0 e1                                      mov r2, r4
003437e8  06 30 a0 e1                                      mov r3, r6
003437ec  07 00 a0 e1                                      mov r0, r7
003437f0  00 80 8d e5                                      str r8, [sp]
003437f4  04 40 8d e5                                      str r4, [sp, #4]
003437f8  1c ff ff eb                                      bl #0x343470
003437fc  0c 00 00 ea                                      b #0x343834
00343800  10 30 9c e5                                      ldr r3, [ip, #0x10]
00343804  03 00 52 e1                                      cmp r2, r3
00343808  e0 ff ff da                                      ble #0x343790
0034380c  0c e0 9c e5                                      ldr lr, [ip, #0xc]
00343810  00 00 5e e3                                      cmp lr, #0
00343814  56 00 00 0a                                      beq #0x343974
00343818  00 c0 a0 e3                                      mov ip, #0
0034381c  05 10 a0 e1                                      mov r1, r5
00343820  04 20 a0 e1                                      mov r2, r4
00343824  06 30 a0 e1                                      mov r3, r6
00343828  07 00 a0 e1                                      mov r0, r7
0034382c  10 10 8d e8                                      stm sp, {r4, ip}
00343830  0e ff ff eb                                      bl #0x343470
00343834  07 00 a0 e1                                      mov r0, r7
00343838  2c d0 8d e2                                      add sp, sp, #0x2c
0034383c  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00343840  04 30 94 e5                                      ldr r3, [r4, #4]
00343844  04 30 93 e5                                      ldr r3, [r3, #4]
00343848  03 00 54 e1                                      cmp r4, r3
0034384c  0c c0 94 05                                      ldreq ip, [r4, #0xc]
00343850  c7 ff ff 0a                                      beq #0x343774
00343854  08 c0 94 e5                                      ldr ip, [r4, #8]
00343858  00 00 5c e3                                      cmp ip, #0
0034385c  c1 ff ff 1a                                      bne #0x343768
00343860  04 c0 94 e5                                      ldr ip, [r4, #4]
00343864  08 30 9c e5                                      ldr r3, [ip, #8]
00343868  03 00 54 e1                                      cmp r4, r3
0034386c  01 00 00 0a                                      beq #0x343878
00343870  bf ff ff ea                                      b #0x343774
00343874  03 c0 a0 e1                                      mov ip, r3
00343878  04 30 9c e5                                      ldr r3, [ip, #4]
0034387c  08 20 93 e5                                      ldr r2, [r3, #8]
00343880  0c 00 52 e1                                      cmp r2, ip
00343884  fa ff ff 0a                                      beq #0x343874
00343888  03 c0 a0 e1                                      mov ip, r3
0034388c  b8 ff ff ea                                      b #0x343774
00343890  05 10 a0 e1                                      mov r1, r5
00343894  06 20 a0 e1                                      mov r2, r6
00343898  08 00 8d e2                                      add r0, sp, #8
0034389c  3c ff ff eb                                      bl #0x343594
003438a0  08 30 9d e5                                      ldr r3, [sp, #8]
003438a4  00 30 87 e5                                      str r3, [r7]
003438a8  e1 ff ff ea                                      b #0x343834
003438ac  10 20 91 e5                                      ldr r2, [r1, #0x10]
003438b0  00 00 52 e3                                      cmp r2, #0
003438b4  52 00 00 0a                                      beq #0x343a04
003438b8  00 20 93 e5                                      ldr r2, [r3]
003438bc  10 c0 94 e5                                      ldr ip, [r4, #0x10]
003438c0  0c 00 52 e1                                      cmp r2, ip
003438c4  54 00 00 ba                                      blt #0x343a1c
003438c8  21 00 00 da                                      ble #0x343954
003438cc  0c e0 94 e5                                      ldr lr, [r4, #0xc]
003438d0  00 00 5e e3                                      cmp lr, #0
003438d4  3c 00 00 0a                                      beq #0x3439cc
003438d8  0e c0 a0 e1                                      mov ip, lr
003438dc  00 00 00 ea                                      b #0x3438e4
003438e0  03 c0 a0 e1                                      mov ip, r3
003438e4  08 30 9c e5                                      ldr r3, [ip, #8]
003438e8  00 00 53 e3                                      cmp r3, #0
003438ec  fb ff ff 1a                                      bne #0x3438e0
003438f0  0c 00 55 e1                                      cmp r5, ip
003438f4  5c 00 00 0a                                      beq #0x343a6c
003438f8  10 30 9c e5                                      ldr r3, [ip, #0x10]
003438fc  03 00 52 e1                                      cmp r2, r3
00343900  4a 00 00 aa                                      bge #0x343a30
00343904  00 00 5e e3                                      cmp lr, #0
00343908  4f 00 00 0a                                      beq #0x343a4c
0034390c  00 e0 a0 e3                                      mov lr, #0
00343910  05 10 a0 e1                                      mov r1, r5
00343914  0c 20 a0 e1                                      mov r2, ip
00343918  06 30 a0 e1                                      mov r3, r6
0034391c  07 00 a0 e1                                      mov r0, r7
00343920  00 50 8d e8                                      stm sp, {ip, lr}
00343924  d1 fe ff eb                                      bl #0x343470
00343928  c1 ff ff ea                                      b #0x343834
0034392c  0c 20 94 e5                                      ldr r2, [r4, #0xc]
00343930  00 c0 93 e5                                      ldr ip, [r3]
00343934  10 e0 92 e5                                      ldr lr, [r2, #0x10]
00343938  0c 00 5e e1                                      cmp lr, ip
0034393c  06 00 00 aa                                      bge #0x34395c
00343940  00 c0 a0 e3                                      mov ip, #0
00343944  00 c0 8d e5                                      str ip, [sp]
00343948  04 40 8d e5                                      str r4, [sp, #4]
0034394c  c7 fe ff eb                                      bl #0x343470
00343950  b7 ff ff ea                                      b #0x343834
00343954  00 40 87 e5                                      str r4, [r7]
00343958  b5 ff ff ea                                      b #0x343834
0034395c  03 20 a0 e1                                      mov r2, r3
00343960  10 00 8d e2                                      add r0, sp, #0x10
00343964  0a ff ff eb                                      bl #0x343594
00343968  10 30 9d e5                                      ldr r3, [sp, #0x10]
0034396c  00 30 87 e5                                      str r3, [r7]
00343970  af ff ff ea                                      b #0x343834
00343974  05 10 a0 e1                                      mov r1, r5
00343978  0c 20 a0 e1                                      mov r2, ip
0034397c  06 30 a0 e1                                      mov r3, r6
00343980  07 00 a0 e1                                      mov r0, r7
00343984  00 e0 8d e5                                      str lr, [sp]
00343988  04 c0 8d e5                                      str ip, [sp, #4]
0034398c  b7 fe ff eb                                      bl #0x343470
00343990  a7 ff ff ea                                      b #0x343834
00343994  04 30 94 e5                                      ldr r3, [r4, #4]
00343998  0c c0 93 e5                                      ldr ip, [r3, #0xc]
0034399c  0c 00 54 e1                                      cmp r4, ip
003439a0  04 c0 a0 11                                      movne ip, r4
003439a4  04 00 00 1a                                      bne #0x3439bc
003439a8  03 c0 a0 e1                                      mov ip, r3
003439ac  04 30 93 e5                                      ldr r3, [r3, #4]
003439b0  0c a0 93 e5                                      ldr sl, [r3, #0xc]
003439b4  0a 00 5c e1                                      cmp ip, sl
003439b8  fa ff ff 0a                                      beq #0x3439a8
003439bc  0c a0 9c e5                                      ldr sl, [ip, #0xc]
003439c0  0a 00 53 e1                                      cmp r3, sl
003439c4  03 c0 a0 11                                      movne ip, r3
003439c8  79 ff ff ea                                      b #0x3437b4
003439cc  04 30 94 e5                                      ldr r3, [r4, #4]
003439d0  0c 10 93 e5                                      ldr r1, [r3, #0xc]
003439d4  01 00 54 e1                                      cmp r4, r1
003439d8  04 c0 a0 11                                      movne ip, r4
003439dc  04 00 00 1a                                      bne #0x3439f4
003439e0  03 c0 a0 e1                                      mov ip, r3
003439e4  04 30 93 e5                                      ldr r3, [r3, #4]
003439e8  0c 10 93 e5                                      ldr r1, [r3, #0xc]
003439ec  0c 00 51 e1                                      cmp r1, ip
003439f0  fa ff ff 0a                                      beq #0x3439e0
003439f4  0c 10 9c e5                                      ldr r1, [ip, #0xc]
003439f8  01 00 53 e1                                      cmp r3, r1
003439fc  03 c0 a0 11                                      movne ip, r3
00343a00  ba ff ff ea                                      b #0x3438f0
00343a04  03 20 a0 e1                                      mov r2, r3
00343a08  20 00 8d e2                                      add r0, sp, #0x20
00343a0c  e0 fe ff eb                                      bl #0x343594
00343a10  20 30 9d e5                                      ldr r3, [sp, #0x20]
00343a14  00 30 87 e5                                      str r3, [r7]
00343a18  85 ff ff ea                                      b #0x343834
00343a1c  00 c0 a0 e3                                      mov ip, #0
00343a20  04 20 a0 e1                                      mov r2, r4
00343a24  10 10 8d e8                                      stm sp, {r4, ip}
00343a28  90 fe ff eb                                      bl #0x343470
00343a2c  80 ff ff ea                                      b #0x343834
00343a30  05 10 a0 e1                                      mov r1, r5
00343a34  06 20 a0 e1                                      mov r2, r6
00343a38  18 00 8d e2                                      add r0, sp, #0x18
00343a3c  d4 fe ff eb                                      bl #0x343594
00343a40  18 30 9d e5                                      ldr r3, [sp, #0x18]
00343a44  00 30 87 e5                                      str r3, [r7]
00343a48  79 ff ff ea                                      b #0x343834
00343a4c  05 10 a0 e1                                      mov r1, r5
00343a50  04 20 a0 e1                                      mov r2, r4
00343a54  06 30 a0 e1                                      mov r3, r6
00343a58  07 00 a0 e1                                      mov r0, r7
00343a5c  00 e0 8d e5                                      str lr, [sp]
00343a60  04 40 8d e5                                      str r4, [sp, #4]
00343a64  81 fe ff eb                                      bl #0x343470
00343a68  71 ff ff ea                                      b #0x343834
00343a6c  00 c0 a0 e3                                      mov ip, #0
00343a70  05 10 a0 e1                                      mov r1, r5
00343a74  04 20 a0 e1                                      mov r2, r4
00343a78  06 30 a0 e1                                      mov r3, r6
00343a7c  07 00 a0 e1                                      mov r0, r7
00343a80  00 c0 8d e5                                      str ip, [sp]
00343a84  04 40 8d e5                                      str r4, [sp, #4]
00343a88  78 fe ff eb                                      bl #0x343470
00343a8c  68 ff ff ea                                      b #0x343834

; FUNCTION 0x00345f84, declared_size=56, range_size=56, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, short>, std::priv::_Select1st<std::pair<int const, short> >, std::priv::_MapTraitsT<std::pair<int const, short> >, std::allocator<std::pair<int const, short> > >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKisENS_10_Select1stIS5_EENS_11_MapTraitsTIS5_EESaIS5_EE8_M_eraseEPNS_18_Rb_tree_node_baseE
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, short>, std::priv::_Select1st<std::pair<int const, short> >, std::priv::_MapTraitsT<std::pair<int const, short> >, std::allocator<std::pair<int const, short> > >::_M_erase(std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
00345f84  70 40 2d e9                                      push {r4, r5, r6, lr}
00345f88  00 40 51 e2                                      subs r4, r1, #0
00345f8c  00 60 a0 e1                                      mov r6, r0
00345f90  08 00 00 0a                                      beq #0x345fb8
00345f94  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00345f98  06 00 a0 e1                                      mov r0, r6
00345f9c  f8 ff ff eb                                      bl #0x345f84
00345fa0  08 50 94 e5                                      ldr r5, [r4, #8]
00345fa4  04 00 a0 e1                                      mov r0, r4
00345fa8  18 10 a0 e3                                      mov r1, #0x18
00345fac  d3 0b 0f eb                                      bl #0x708f00
00345fb0  00 40 55 e2                                      subs r4, r5, #0
00345fb4  f6 ff ff 1a                                      bne #0x345f94
00345fb8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004021a4, declared_size=288, range_size=288, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, int, std::priv::_Identity<int>, std::priv::_SetTraitsT<int>, std::allocator<int> >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiEiNS_9_IdentityIiEENS_11_SetTraitsTIiEESaIiEE9_M_insertEPNS_18_Rb_tree_node_baseERKiSA_SA_.clone.6
; demangled: std::priv::_Rb_tree<int, std::less<int>, int, std::priv::_Identity<int>, std::priv::_SetTraitsT<int>, std::allocator<int> >::_M_insert(std::priv::_Rb_tree_node_base*, int const&, std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*) [clone .clone.6]
; decoder-mode: arm
004021a4  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
004021a8  02 00 51 e1                                      cmp r1, r2
004021ac  0c d0 4d e2                                      sub sp, sp, #0xc
004021b0  01 40 a0 e1                                      mov r4, r1
004021b4  00 50 a0 e1                                      mov r5, r0
004021b8  20 70 9d e5                                      ldr r7, [sp, #0x20]
004021bc  12 00 00 0a                                      beq #0x40220c
004021c0  00 00 57 e3                                      cmp r7, #0
004021c4  2a 00 00 0a                                      beq #0x402274
004021c8  04 00 a0 e1                                      mov r0, r4
004021cc  04 20 8d e5                                      str r2, [sp, #4]
004021d0  00 30 8d e5                                      str r3, [sp]
004021d4  ea ff ff eb                                      bl #0x402184
004021d8  00 30 9d e5                                      ldr r3, [sp]
004021dc  00 60 a0 e1                                      mov r6, r0
004021e0  00 10 93 e5                                      ldr r1, [r3]
004021e4  00 30 a0 e3                                      mov r3, #0
004021e8  0c 30 80 e5                                      str r3, [r0, #0xc]
004021ec  10 10 80 e5                                      str r1, [r0, #0x10]
004021f0  08 30 80 e5                                      str r3, [r0, #8]
004021f4  04 20 9d e5                                      ldr r2, [sp, #4]
004021f8  08 00 82 e5                                      str r0, [r2, #8]
004021fc  08 30 94 e5                                      ldr r3, [r4, #8]
00402200  03 00 52 e1                                      cmp r2, r3
00402204  08 00 84 05                                      streq r0, [r4, #8]
00402208  0e 00 00 ea                                      b #0x402248
0040220c  01 00 a0 e1                                      mov r0, r1
00402210  04 20 8d e5                                      str r2, [sp, #4]
00402214  00 30 8d e5                                      str r3, [sp]
00402218  d9 ff ff eb                                      bl #0x402184
0040221c  00 30 9d e5                                      ldr r3, [sp]
00402220  00 60 a0 e1                                      mov r6, r0
00402224  00 10 93 e5                                      ldr r1, [r3]
00402228  00 30 a0 e3                                      mov r3, #0
0040222c  0c 30 80 e5                                      str r3, [r0, #0xc]
00402230  10 10 80 e5                                      str r1, [r0, #0x10]
00402234  08 30 80 e5                                      str r3, [r0, #8]
00402238  08 00 84 e5                                      str r0, [r4, #8]
0040223c  04 00 84 e5                                      str r0, [r4, #4]
00402240  0c 00 84 e5                                      str r0, [r4, #0xc]
00402244  04 20 9d e5                                      ldr r2, [sp, #4]
00402248  06 00 a0 e1                                      mov r0, r6
0040224c  04 20 86 e5                                      str r2, [r6, #4]
00402250  04 10 84 e2                                      add r1, r4, #4
00402254  41 45 fc eb                                      bl #0x313760
00402258  10 30 94 e5                                      ldr r3, [r4, #0x10]
0040225c  05 00 a0 e1                                      mov r0, r5
00402260  01 30 83 e2                                      add r3, r3, #1
00402264  10 30 84 e5                                      str r3, [r4, #0x10]
00402268  00 60 85 e5                                      str r6, [r5]
0040226c  0c d0 8d e2                                      add sp, sp, #0xc
00402270  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00402274  00 00 93 e5                                      ldr r0, [r3]
00402278  10 10 92 e5                                      ldr r1, [r2, #0x10]
0040227c  01 00 50 e1                                      cmp r0, r1
00402280  d0 ff ff ba                                      blt #0x4021c8
00402284  04 00 a0 e1                                      mov r0, r4
00402288  04 20 8d e5                                      str r2, [sp, #4]
0040228c  00 30 8d e5                                      str r3, [sp]
00402290  bb ff ff eb                                      bl #0x402184
00402294  00 30 9d e5                                      ldr r3, [sp]
00402298  00 60 a0 e1                                      mov r6, r0
0040229c  00 30 93 e5                                      ldr r3, [r3]
004022a0  0c 70 80 e5                                      str r7, [r0, #0xc]
004022a4  08 70 80 e5                                      str r7, [r0, #8]
004022a8  10 30 80 e5                                      str r3, [r0, #0x10]
004022ac  04 20 9d e5                                      ldr r2, [sp, #4]
004022b0  0c 00 82 e5                                      str r0, [r2, #0xc]
004022b4  0c 30 94 e5                                      ldr r3, [r4, #0xc]
004022b8  03 00 52 e1                                      cmp r2, r3
004022bc  0c 00 84 05                                      streq r0, [r4, #0xc]
004022c0  e0 ff ff ea                                      b #0x402248

; FUNCTION 0x004022c4, declared_size=384, range_size=384, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, int, std::priv::_Identity<int>, std::priv::_SetTraitsT<int>, std::allocator<int> >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiEiNS_9_IdentityIiEENS_11_SetTraitsTIiEESaIiEE13insert_uniqueERKi
; demangled: std::priv::_Rb_tree<int, std::less<int>, int, std::priv::_Identity<int>, std::priv::_SetTraitsT<int>, std::allocator<int> >::insert_unique(int const&)
; decoder-mode: arm
004022c4  70 40 2d e9                                      push {r4, r5, r6, lr}
004022c8  04 c0 91 e5                                      ldr ip, [r1, #4]
004022cc  10 d0 4d e2                                      sub sp, sp, #0x10
004022d0  00 40 a0 e1                                      mov r4, r0
004022d4  00 00 5c e3                                      cmp ip, #0
004022d8  02 30 a0 e1                                      mov r3, r2
004022dc  01 c0 a0 01                                      moveq ip, r1
004022e0  15 00 00 0a                                      beq #0x40233c
004022e4  00 60 92 e5                                      ldr r6, [r2]
004022e8  00 00 00 ea                                      b #0x4022f0
004022ec  02 c0 a0 e1                                      mov ip, r2
004022f0  10 00 9c e5                                      ldr r0, [ip, #0x10]
004022f4  01 50 a0 e3                                      mov r5, #1
004022f8  06 00 50 e1                                      cmp r0, r6
004022fc  08 20 9c c5                                      ldrgt r2, [ip, #8]
00402300  0c 20 9c d5                                      ldrle r2, [ip, #0xc]
00402304  00 50 a0 d3                                      movle r5, #0
00402308  00 00 52 e3                                      cmp r2, #0
0040230c  f6 ff ff 1a                                      bne #0x4022ec
00402310  00 00 55 e3                                      cmp r5, #0
00402314  0c 50 a0 01                                      moveq r5, ip
00402318  07 00 00 1a                                      bne #0x40233c
0040231c  00 00 56 e1                                      cmp r6, r0
00402320  00 30 a0 d3                                      movle r3, #0
00402324  00 50 84 d5                                      strle r5, [r4]
00402328  04 30 c4 d5                                      strble r3, [r4, #4]
0040232c  1c 00 00 ca                                      bgt #0x4023a4
00402330  04 00 a0 e1                                      mov r0, r4
00402334  10 d0 8d e2                                      add sp, sp, #0x10
00402338  70 80 bd e8                                      pop {r4, r5, r6, pc}
0040233c  08 20 91 e5                                      ldr r2, [r1, #8]
00402340  02 00 5c e1                                      cmp ip, r2
00402344  35 00 00 0a                                      beq #0x402420
00402348  00 20 dc e5                                      ldrb r2, [ip]
0040234c  00 00 52 e3                                      cmp r2, #0
00402350  03 00 00 1a                                      bne #0x402364
00402354  04 20 9c e5                                      ldr r2, [ip, #4]
00402358  04 20 92 e5                                      ldr r2, [r2, #4]
0040235c  02 00 5c e1                                      cmp ip, r2
00402360  29 00 00 0a                                      beq #0x40240c
00402364  08 00 9c e5                                      ldr r0, [ip, #8]
00402368  00 00 50 e3                                      cmp r0, #0
0040236c  01 00 00 1a                                      bne #0x402378
00402370  15 00 00 ea                                      b #0x4023cc
00402374  02 00 a0 e1                                      mov r0, r2
00402378  0c 20 90 e5                                      ldr r2, [r0, #0xc]
0040237c  00 00 52 e3                                      cmp r2, #0
00402380  fb ff ff 1a                                      bne #0x402374
00402384  00 60 93 e5                                      ldr r6, [r3]
00402388  00 50 a0 e1                                      mov r5, r0
0040238c  10 00 90 e5                                      ldr r0, [r0, #0x10]
00402390  00 00 56 e1                                      cmp r6, r0
00402394  00 30 a0 d3                                      movle r3, #0
00402398  00 50 84 d5                                      strle r5, [r4]
0040239c  04 30 c4 d5                                      strble r3, [r4, #4]
004023a0  e2 ff ff da                                      ble #0x402330
004023a4  0c 20 a0 e1                                      mov r2, ip
004023a8  08 00 8d e2                                      add r0, sp, #8
004023ac  00 c0 a0 e3                                      mov ip, #0
004023b0  00 c0 8d e5                                      str ip, [sp]
004023b4  7a ff ff eb                                      bl #0x4021a4
004023b8  08 30 9d e5                                      ldr r3, [sp, #8]
004023bc  01 20 a0 e3                                      mov r2, #1
004023c0  04 20 c4 e5                                      strb r2, [r4, #4]
004023c4  00 30 84 e5                                      str r3, [r4]
004023c8  d8 ff ff ea                                      b #0x402330
004023cc  04 20 9c e5                                      ldr r2, [ip, #4]
004023d0  08 00 92 e5                                      ldr r0, [r2, #8]
004023d4  00 00 5c e1                                      cmp ip, r0
004023d8  02 50 a0 11                                      movne r5, r2
004023dc  00 60 93 15                                      ldrne r6, [r3]
004023e0  10 00 92 15                                      ldrne r0, [r2, #0x10]
004023e4  01 00 00 0a                                      beq #0x4023f0
004023e8  cb ff ff ea                                      b #0x40231c
004023ec  05 20 a0 e1                                      mov r2, r5
004023f0  04 50 92 e5                                      ldr r5, [r2, #4]
004023f4  08 00 95 e5                                      ldr r0, [r5, #8]
004023f8  02 00 50 e1                                      cmp r0, r2
004023fc  fa ff ff 0a                                      beq #0x4023ec
00402400  00 60 93 e5                                      ldr r6, [r3]
00402404  10 00 95 e5                                      ldr r0, [r5, #0x10]
00402408  c3 ff ff ea                                      b #0x40231c
0040240c  0c 20 9c e5                                      ldr r2, [ip, #0xc]
00402410  00 60 93 e5                                      ldr r6, [r3]
00402414  02 50 a0 e1                                      mov r5, r2
00402418  10 00 92 e5                                      ldr r0, [r2, #0x10]
0040241c  be ff ff ea                                      b #0x40231c
00402420  0c 20 a0 e1                                      mov r2, ip
00402424  0c 00 8d e2                                      add r0, sp, #0xc
00402428  00 c0 8d e5                                      str ip, [sp]
0040242c  5c ff ff eb                                      bl #0x4021a4
00402430  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00402434  01 20 a0 e3                                      mov r2, #1
00402438  04 20 c4 e5                                      strb r2, [r4, #4]
0040243c  00 30 84 e5                                      str r3, [r4]
00402440  ba ff ff ea                                      b #0x402330

; FUNCTION 0x00402444, declared_size=56, range_size=56, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, int, std::priv::_Identity<int>, std::priv::_SetTraitsT<int>, std::allocator<int> >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiEiNS_9_IdentityIiEENS_11_SetTraitsTIiEESaIiEE8_M_eraseEPNS_18_Rb_tree_node_baseE
; demangled: std::priv::_Rb_tree<int, std::less<int>, int, std::priv::_Identity<int>, std::priv::_SetTraitsT<int>, std::allocator<int> >::_M_erase(std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
00402444  70 40 2d e9                                      push {r4, r5, r6, lr}
00402448  00 40 51 e2                                      subs r4, r1, #0
0040244c  00 60 a0 e1                                      mov r6, r0
00402450  08 00 00 0a                                      beq #0x402478
00402454  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00402458  06 00 a0 e1                                      mov r0, r6
0040245c  f8 ff ff eb                                      bl #0x402444
00402460  08 50 94 e5                                      ldr r5, [r4, #8]
00402464  04 00 a0 e1                                      mov r0, r4
00402468  14 10 a0 e3                                      mov r1, #0x14
0040246c  a3 1a 0c eb                                      bl #0x708f00
00402470  00 40 55 e2                                      subs r4, r5, #0
00402474  f6 ff ff 1a                                      bne #0x402454
00402478  70 80 bd e8                                      pop {r4, r5, r6, pc}

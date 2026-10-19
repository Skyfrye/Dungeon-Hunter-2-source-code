; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0053e328, declared_size=304, range_size=304, mode=arm
; class-group: std::priv::_Rb_tree<wchar_t, std::less<wchar_t>, std::pair<wchar_t const, int>, std::priv::_Select1st<std::pair<wchar_t const, int> >, std::priv::_MapTraitsT<std::pair<wchar_t const, int> >, glitch::core::SAllocator<std::pair<wchar_t const, int>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt4priv8_Rb_treeIwSt4lessIwESt4pairIKwiENS_10_Select1stIS5_EENS_11_MapTraitsTIS5_EEN6glitch4core10SAllocatorIS5_LNSA_6memory13E_MEMORY_HINTE0EEEE9_M_insertEPNS_18_Rb_tree_node_baseERKS5_SI_SI_
; demangled: std::priv::_Rb_tree<wchar_t, std::less<wchar_t>, std::pair<wchar_t const, int>, std::priv::_Select1st<std::pair<wchar_t const, int> >, std::priv::_MapTraitsT<std::pair<wchar_t const, int> >, glitch::core::SAllocator<std::pair<wchar_t const, int>, (glitch::memory::E_MEMORY_HINT)0> >::_M_insert(std::priv::_Rb_tree_node_base*, std::pair<wchar_t const, int> const&, std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
0053e328  02 00 51 e1                                      cmp r1, r2
0053e32c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0053e330  01 40 a0 e1                                      mov r4, r1
0053e334  02 50 a0 e1                                      mov r5, r2
0053e338  00 60 a0 e1                                      mov r6, r0
0053e33c  03 80 a0 e1                                      mov r8, r3
0053e340  30 00 00 0a                                      beq #0x53e408
0053e344  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
0053e348  00 00 53 e3                                      cmp r3, #0
0053e34c  18 00 00 0a                                      beq #0x53e3b4
0053e350  18 00 a0 e3                                      mov r0, #0x18
0053e354  00 10 a0 e3                                      mov r1, #0
0053e358  82 48 f7 eb                                      bl #0x310568
0053e35c  00 20 98 e5                                      ldr r2, [r8]
0053e360  00 30 a0 e3                                      mov r3, #0
0053e364  00 70 a0 e1                                      mov r7, r0
0053e368  10 20 80 e5                                      str r2, [r0, #0x10]
0053e36c  04 20 98 e5                                      ldr r2, [r8, #4]
0053e370  0c 30 80 e5                                      str r3, [r0, #0xc]
0053e374  08 30 80 e5                                      str r3, [r0, #8]
0053e378  14 20 80 e5                                      str r2, [r0, #0x14]
0053e37c  0c 00 85 e5                                      str r0, [r5, #0xc]
0053e380  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0053e384  03 00 55 e1                                      cmp r5, r3
0053e388  1c 00 00 0a                                      beq #0x53e400
0053e38c  07 00 a0 e1                                      mov r0, r7
0053e390  04 50 87 e5                                      str r5, [r7, #4]
0053e394  04 10 84 e2                                      add r1, r4, #4
0053e398  f0 54 f7 eb                                      bl #0x313760
0053e39c  10 30 94 e5                                      ldr r3, [r4, #0x10]
0053e3a0  06 00 a0 e1                                      mov r0, r6
0053e3a4  01 30 83 e2                                      add r3, r3, #1
0053e3a8  10 30 84 e5                                      str r3, [r4, #0x10]
0053e3ac  00 70 86 e5                                      str r7, [r6]
0053e3b0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0053e3b4  18 30 9d e5                                      ldr r3, [sp, #0x18]
0053e3b8  00 00 53 e3                                      cmp r3, #0
0053e3bc  20 00 00 0a                                      beq #0x53e444
0053e3c0  18 00 a0 e3                                      mov r0, #0x18
0053e3c4  00 10 a0 e3                                      mov r1, #0
0053e3c8  66 48 f7 eb                                      bl #0x310568
0053e3cc  00 20 98 e5                                      ldr r2, [r8]
0053e3d0  00 30 a0 e3                                      mov r3, #0
0053e3d4  00 70 a0 e1                                      mov r7, r0
0053e3d8  10 20 80 e5                                      str r2, [r0, #0x10]
0053e3dc  04 20 98 e5                                      ldr r2, [r8, #4]
0053e3e0  0c 30 80 e5                                      str r3, [r0, #0xc]
0053e3e4  08 30 80 e5                                      str r3, [r0, #8]
0053e3e8  14 20 80 e5                                      str r2, [r0, #0x14]
0053e3ec  08 00 85 e5                                      str r0, [r5, #8]
0053e3f0  08 30 94 e5                                      ldr r3, [r4, #8]
0053e3f4  03 00 55 e1                                      cmp r5, r3
0053e3f8  08 00 84 05                                      streq r0, [r4, #8]
0053e3fc  e2 ff ff ea                                      b #0x53e38c
0053e400  0c 70 84 e5                                      str r7, [r4, #0xc]
0053e404  e0 ff ff ea                                      b #0x53e38c
0053e408  18 00 a0 e3                                      mov r0, #0x18
0053e40c  00 10 a0 e3                                      mov r1, #0
0053e410  54 48 f7 eb                                      bl #0x310568
0053e414  00 20 98 e5                                      ldr r2, [r8]
0053e418  00 30 a0 e3                                      mov r3, #0
0053e41c  00 70 a0 e1                                      mov r7, r0
0053e420  10 20 80 e5                                      str r2, [r0, #0x10]
0053e424  04 20 98 e5                                      ldr r2, [r8, #4]
0053e428  0c 30 80 e5                                      str r3, [r0, #0xc]
0053e42c  08 30 80 e5                                      str r3, [r0, #8]
0053e430  14 20 80 e5                                      str r2, [r0, #0x14]
0053e434  08 00 84 e5                                      str r0, [r4, #8]
0053e438  04 00 84 e5                                      str r0, [r4, #4]
0053e43c  0c 00 84 e5                                      str r0, [r4, #0xc]
0053e440  d1 ff ff ea                                      b #0x53e38c
0053e444  00 20 98 e5                                      ldr r2, [r8]
0053e448  10 30 95 e5                                      ldr r3, [r5, #0x10]
0053e44c  03 00 52 e1                                      cmp r2, r3
0053e450  be ff ff 2a                                      bhs #0x53e350
0053e454  d9 ff ff ea                                      b #0x53e3c0

; FUNCTION 0x0053e458, declared_size=392, range_size=392, mode=arm
; class-group: std::priv::_Rb_tree<wchar_t, std::less<wchar_t>, std::pair<wchar_t const, int>, std::priv::_Select1st<std::pair<wchar_t const, int> >, std::priv::_MapTraitsT<std::pair<wchar_t const, int> >, glitch::core::SAllocator<std::pair<wchar_t const, int>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt4priv8_Rb_treeIwSt4lessIwESt4pairIKwiENS_10_Select1stIS5_EENS_11_MapTraitsTIS5_EEN6glitch4core10SAllocatorIS5_LNSA_6memory13E_MEMORY_HINTE0EEEE13insert_uniqueERKS5_
; demangled: std::priv::_Rb_tree<wchar_t, std::less<wchar_t>, std::pair<wchar_t const, int>, std::priv::_Select1st<std::pair<wchar_t const, int> >, std::priv::_MapTraitsT<std::pair<wchar_t const, int> >, glitch::core::SAllocator<std::pair<wchar_t const, int>, (glitch::memory::E_MEMORY_HINT)0> >::insert_unique(std::pair<wchar_t const, int> const&)
; decoder-mode: arm
0053e458  70 40 2d e9                                      push {r4, r5, r6, lr}
0053e45c  04 c0 91 e5                                      ldr ip, [r1, #4]
0053e460  10 d0 4d e2                                      sub sp, sp, #0x10
0053e464  00 40 a0 e1                                      mov r4, r0
0053e468  00 00 5c e3                                      cmp ip, #0
0053e46c  02 30 a0 e1                                      mov r3, r2
0053e470  01 c0 a0 01                                      moveq ip, r1
0053e474  15 00 00 0a                                      beq #0x53e4d0
0053e478  00 60 92 e5                                      ldr r6, [r2]
0053e47c  00 00 00 ea                                      b #0x53e484
0053e480  02 c0 a0 e1                                      mov ip, r2
0053e484  10 00 9c e5                                      ldr r0, [ip, #0x10]
0053e488  01 50 a0 e3                                      mov r5, #1
0053e48c  06 00 50 e1                                      cmp r0, r6
0053e490  08 20 9c 85                                      ldrhi r2, [ip, #8]
0053e494  0c 20 9c 95                                      ldrls r2, [ip, #0xc]
0053e498  00 50 a0 93                                      movls r5, #0
0053e49c  00 00 52 e3                                      cmp r2, #0
0053e4a0  f6 ff ff 1a                                      bne #0x53e480
0053e4a4  00 00 55 e3                                      cmp r5, #0
0053e4a8  0c 50 a0 01                                      moveq r5, ip
0053e4ac  07 00 00 1a                                      bne #0x53e4d0
0053e4b0  00 00 56 e1                                      cmp r6, r0
0053e4b4  00 30 a0 93                                      movls r3, #0
0053e4b8  00 50 84 95                                      strls r5, [r4]
0053e4bc  04 30 c4 95                                      strbls r3, [r4, #4]
0053e4c0  1c 00 00 8a                                      bhi #0x53e538
0053e4c4  04 00 a0 e1                                      mov r0, r4
0053e4c8  10 d0 8d e2                                      add sp, sp, #0x10
0053e4cc  70 80 bd e8                                      pop {r4, r5, r6, pc}
0053e4d0  08 20 91 e5                                      ldr r2, [r1, #8]
0053e4d4  02 00 5c e1                                      cmp ip, r2
0053e4d8  36 00 00 0a                                      beq #0x53e5b8
0053e4dc  00 20 dc e5                                      ldrb r2, [ip]
0053e4e0  00 00 52 e3                                      cmp r2, #0
0053e4e4  03 00 00 1a                                      bne #0x53e4f8
0053e4e8  04 20 9c e5                                      ldr r2, [ip, #4]
0053e4ec  04 20 92 e5                                      ldr r2, [r2, #4]
0053e4f0  02 00 5c e1                                      cmp ip, r2
0053e4f4  2a 00 00 0a                                      beq #0x53e5a4
0053e4f8  08 00 9c e5                                      ldr r0, [ip, #8]
0053e4fc  00 00 50 e3                                      cmp r0, #0
0053e500  01 00 00 1a                                      bne #0x53e50c
0053e504  16 00 00 ea                                      b #0x53e564
0053e508  02 00 a0 e1                                      mov r0, r2
0053e50c  0c 20 90 e5                                      ldr r2, [r0, #0xc]
0053e510  00 00 52 e3                                      cmp r2, #0
0053e514  fb ff ff 1a                                      bne #0x53e508
0053e518  00 60 93 e5                                      ldr r6, [r3]
0053e51c  00 50 a0 e1                                      mov r5, r0
0053e520  10 00 90 e5                                      ldr r0, [r0, #0x10]
0053e524  00 00 56 e1                                      cmp r6, r0
0053e528  00 30 a0 93                                      movls r3, #0
0053e52c  00 50 84 95                                      strls r5, [r4]
0053e530  04 30 c4 95                                      strbls r3, [r4, #4]
0053e534  e2 ff ff 9a                                      bls #0x53e4c4
0053e538  0c 20 a0 e1                                      mov r2, ip
0053e53c  08 00 8d e2                                      add r0, sp, #8
0053e540  00 c0 a0 e3                                      mov ip, #0
0053e544  04 c0 8d e5                                      str ip, [sp, #4]
0053e548  00 c0 8d e5                                      str ip, [sp]
0053e54c  75 ff ff eb                                      bl #0x53e328
0053e550  08 30 9d e5                                      ldr r3, [sp, #8]
0053e554  01 20 a0 e3                                      mov r2, #1
0053e558  04 20 c4 e5                                      strb r2, [r4, #4]
0053e55c  00 30 84 e5                                      str r3, [r4]
0053e560  d7 ff ff ea                                      b #0x53e4c4
0053e564  04 20 9c e5                                      ldr r2, [ip, #4]
0053e568  08 00 92 e5                                      ldr r0, [r2, #8]
0053e56c  00 00 5c e1                                      cmp ip, r0
0053e570  02 50 a0 11                                      movne r5, r2
0053e574  00 60 93 15                                      ldrne r6, [r3]
0053e578  10 00 92 15                                      ldrne r0, [r2, #0x10]
0053e57c  01 00 00 0a                                      beq #0x53e588
0053e580  ca ff ff ea                                      b #0x53e4b0
0053e584  05 20 a0 e1                                      mov r2, r5
0053e588  04 50 92 e5                                      ldr r5, [r2, #4]
0053e58c  08 00 95 e5                                      ldr r0, [r5, #8]
0053e590  02 00 50 e1                                      cmp r0, r2
0053e594  fa ff ff 0a                                      beq #0x53e584
0053e598  00 60 93 e5                                      ldr r6, [r3]
0053e59c  10 00 95 e5                                      ldr r0, [r5, #0x10]
0053e5a0  c2 ff ff ea                                      b #0x53e4b0
0053e5a4  0c 20 9c e5                                      ldr r2, [ip, #0xc]
0053e5a8  00 60 93 e5                                      ldr r6, [r3]
0053e5ac  02 50 a0 e1                                      mov r5, r2
0053e5b0  10 00 92 e5                                      ldr r0, [r2, #0x10]
0053e5b4  bd ff ff ea                                      b #0x53e4b0
0053e5b8  0c 20 a0 e1                                      mov r2, ip
0053e5bc  00 e0 a0 e3                                      mov lr, #0
0053e5c0  0c 00 8d e2                                      add r0, sp, #0xc
0053e5c4  00 50 8d e8                                      stm sp, {ip, lr}
0053e5c8  56 ff ff eb                                      bl #0x53e328
0053e5cc  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0053e5d0  01 20 a0 e3                                      mov r2, #1
0053e5d4  04 20 c4 e5                                      strb r2, [r4, #4]
0053e5d8  00 30 84 e5                                      str r3, [r4]
0053e5dc  b8 ff ff ea                                      b #0x53e4c4

; FUNCTION 0x0053e5e0, declared_size=884, range_size=884, mode=arm
; class-group: std::priv::_Rb_tree<wchar_t, std::less<wchar_t>, std::pair<wchar_t const, int>, std::priv::_Select1st<std::pair<wchar_t const, int> >, std::priv::_MapTraitsT<std::pair<wchar_t const, int> >, glitch::core::SAllocator<std::pair<wchar_t const, int>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt4priv8_Rb_treeIwSt4lessIwESt4pairIKwiENS_10_Select1stIS5_EENS_11_MapTraitsTIS5_EEN6glitch4core10SAllocatorIS5_LNSA_6memory13E_MEMORY_HINTE0EEEE13insert_uniqueENS_17_Rb_tree_iteratorIS5_S9_EERKS5_
; demangled: std::priv::_Rb_tree<wchar_t, std::less<wchar_t>, std::pair<wchar_t const, int>, std::priv::_Select1st<std::pair<wchar_t const, int> >, std::priv::_MapTraitsT<std::pair<wchar_t const, int> >, glitch::core::SAllocator<std::pair<wchar_t const, int>, (glitch::memory::E_MEMORY_HINT)0> >::insert_unique(std::priv::_Rb_tree_iterator<std::pair<wchar_t const, int>, std::priv::_MapTraitsT<std::pair<wchar_t const, int> > >, std::pair<wchar_t const, int> const&)
; decoder-mode: arm
0053e5e0  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0053e5e4  00 40 92 e5                                      ldr r4, [r2]
0053e5e8  08 20 91 e5                                      ldr r2, [r1, #8]
0053e5ec  2c d0 4d e2                                      sub sp, sp, #0x2c
0053e5f0  01 50 a0 e1                                      mov r5, r1
0053e5f4  02 00 54 e1                                      cmp r4, r2
0053e5f8  00 70 a0 e1                                      mov r7, r0
0053e5fc  03 60 a0 e1                                      mov r6, r3
0053e600  5a 00 00 0a                                      beq #0x53e770
0053e604  01 00 54 e1                                      cmp r4, r1
0053e608  78 00 00 0a                                      beq #0x53e7f0
0053e60c  00 30 d4 e5                                      ldrb r3, [r4]
0053e610  00 00 53 e3                                      cmp r3, #0
0053e614  3a 00 00 0a                                      beq #0x53e704
0053e618  08 c0 94 e5                                      ldr ip, [r4, #8]
0053e61c  00 00 5c e3                                      cmp ip, #0
0053e620  01 00 00 1a                                      bne #0x53e62c
0053e624  3e 00 00 ea                                      b #0x53e724
0053e628  03 c0 a0 e1                                      mov ip, r3
0053e62c  0c 30 9c e5                                      ldr r3, [ip, #0xc]
0053e630  00 00 53 e3                                      cmp r3, #0
0053e634  fb ff ff 1a                                      bne #0x53e628
0053e638  00 20 96 e5                                      ldr r2, [r6]
0053e63c  10 00 94 e5                                      ldr r0, [r4, #0x10]
0053e640  00 00 52 e1                                      cmp r2, r0
0053e644  00 10 a0 23                                      movhs r1, #0
0053e648  01 10 a0 33                                      movlo r1, #1
0053e64c  00 00 51 e3                                      cmp r1, #0
0053e650  1b 00 00 1a                                      bne #0x53e6c4
0053e654  0c 80 94 e5                                      ldr r8, [r4, #0xc]
0053e658  00 00 58 e3                                      cmp r8, #0
0053e65c  7d 00 00 0a                                      beq #0x53e858
0053e660  08 c0 a0 e1                                      mov ip, r8
0053e664  00 00 00 ea                                      b #0x53e66c
0053e668  03 c0 a0 e1                                      mov ip, r3
0053e66c  08 30 9c e5                                      ldr r3, [ip, #8]
0053e670  00 00 53 e3                                      cmp r3, #0
0053e674  fb ff ff 1a                                      bne #0x53e668
0053e678  00 00 51 e3                                      cmp r1, #0
0053e67c  34 00 00 1a                                      bne #0x53e754
0053e680  00 00 52 e1                                      cmp r2, r0
0053e684  63 00 00 9a                                      bls #0x53e818
0053e688  0c 00 55 e1                                      cmp r5, ip
0053e68c  02 00 00 0a                                      beq #0x53e69c
0053e690  10 30 9c e5                                      ldr r3, [ip, #0x10]
0053e694  03 00 52 e1                                      cmp r2, r3
0053e698  2d 00 00 2a                                      bhs #0x53e754
0053e69c  00 00 58 e3                                      cmp r8, #0
0053e6a0  4a 00 00 1a                                      bne #0x53e7d0
0053e6a4  05 10 a0 e1                                      mov r1, r5
0053e6a8  04 20 a0 e1                                      mov r2, r4
0053e6ac  06 30 a0 e1                                      mov r3, r6
0053e6b0  07 00 a0 e1                                      mov r0, r7
0053e6b4  00 80 8d e5                                      str r8, [sp]
0053e6b8  04 40 8d e5                                      str r4, [sp, #4]
0053e6bc  19 ff ff eb                                      bl #0x53e328
0053e6c0  0c 00 00 ea                                      b #0x53e6f8
0053e6c4  10 30 9c e5                                      ldr r3, [ip, #0x10]
0053e6c8  03 00 52 e1                                      cmp r2, r3
0053e6cc  e0 ff ff 9a                                      bls #0x53e654
0053e6d0  0c e0 9c e5                                      ldr lr, [ip, #0xc]
0053e6d4  00 00 5e e3                                      cmp lr, #0
0053e6d8  56 00 00 0a                                      beq #0x53e838
0053e6dc  00 c0 a0 e3                                      mov ip, #0
0053e6e0  05 10 a0 e1                                      mov r1, r5
0053e6e4  04 20 a0 e1                                      mov r2, r4
0053e6e8  06 30 a0 e1                                      mov r3, r6
0053e6ec  07 00 a0 e1                                      mov r0, r7
0053e6f0  10 10 8d e8                                      stm sp, {r4, ip}
0053e6f4  0b ff ff eb                                      bl #0x53e328
0053e6f8  07 00 a0 e1                                      mov r0, r7
0053e6fc  2c d0 8d e2                                      add sp, sp, #0x2c
0053e700  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0053e704  04 30 94 e5                                      ldr r3, [r4, #4]
0053e708  04 30 93 e5                                      ldr r3, [r3, #4]
0053e70c  03 00 54 e1                                      cmp r4, r3
0053e710  0c c0 94 05                                      ldreq ip, [r4, #0xc]
0053e714  c7 ff ff 0a                                      beq #0x53e638
0053e718  08 c0 94 e5                                      ldr ip, [r4, #8]
0053e71c  00 00 5c e3                                      cmp ip, #0
0053e720  c1 ff ff 1a                                      bne #0x53e62c
0053e724  04 c0 94 e5                                      ldr ip, [r4, #4]
0053e728  08 30 9c e5                                      ldr r3, [ip, #8]
0053e72c  03 00 54 e1                                      cmp r4, r3
0053e730  01 00 00 0a                                      beq #0x53e73c
0053e734  bf ff ff ea                                      b #0x53e638
0053e738  03 c0 a0 e1                                      mov ip, r3
0053e73c  04 30 9c e5                                      ldr r3, [ip, #4]
0053e740  08 20 93 e5                                      ldr r2, [r3, #8]
0053e744  0c 00 52 e1                                      cmp r2, ip
0053e748  fa ff ff 0a                                      beq #0x53e738
0053e74c  03 c0 a0 e1                                      mov ip, r3
0053e750  b8 ff ff ea                                      b #0x53e638
0053e754  05 10 a0 e1                                      mov r1, r5
0053e758  06 20 a0 e1                                      mov r2, r6
0053e75c  08 00 8d e2                                      add r0, sp, #8
0053e760  3c ff ff eb                                      bl #0x53e458
0053e764  08 30 9d e5                                      ldr r3, [sp, #8]
0053e768  00 30 87 e5                                      str r3, [r7]
0053e76c  e1 ff ff ea                                      b #0x53e6f8
0053e770  10 20 91 e5                                      ldr r2, [r1, #0x10]
0053e774  00 00 52 e3                                      cmp r2, #0
0053e778  52 00 00 0a                                      beq #0x53e8c8
0053e77c  00 20 93 e5                                      ldr r2, [r3]
0053e780  10 c0 94 e5                                      ldr ip, [r4, #0x10]
0053e784  0c 00 52 e1                                      cmp r2, ip
0053e788  54 00 00 3a                                      blo #0x53e8e0
0053e78c  21 00 00 9a                                      bls #0x53e818
0053e790  0c e0 94 e5                                      ldr lr, [r4, #0xc]
0053e794  00 00 5e e3                                      cmp lr, #0
0053e798  3c 00 00 0a                                      beq #0x53e890
0053e79c  0e c0 a0 e1                                      mov ip, lr
0053e7a0  00 00 00 ea                                      b #0x53e7a8
0053e7a4  03 c0 a0 e1                                      mov ip, r3
0053e7a8  08 30 9c e5                                      ldr r3, [ip, #8]
0053e7ac  00 00 53 e3                                      cmp r3, #0
0053e7b0  fb ff ff 1a                                      bne #0x53e7a4
0053e7b4  0c 00 55 e1                                      cmp r5, ip
0053e7b8  5c 00 00 0a                                      beq #0x53e930
0053e7bc  10 30 9c e5                                      ldr r3, [ip, #0x10]
0053e7c0  03 00 52 e1                                      cmp r2, r3
0053e7c4  4a 00 00 2a                                      bhs #0x53e8f4
0053e7c8  00 00 5e e3                                      cmp lr, #0
0053e7cc  4f 00 00 0a                                      beq #0x53e910
0053e7d0  00 e0 a0 e3                                      mov lr, #0
0053e7d4  05 10 a0 e1                                      mov r1, r5
0053e7d8  0c 20 a0 e1                                      mov r2, ip
0053e7dc  06 30 a0 e1                                      mov r3, r6
0053e7e0  07 00 a0 e1                                      mov r0, r7
0053e7e4  00 50 8d e8                                      stm sp, {ip, lr}
0053e7e8  ce fe ff eb                                      bl #0x53e328
0053e7ec  c1 ff ff ea                                      b #0x53e6f8
0053e7f0  0c 20 94 e5                                      ldr r2, [r4, #0xc]
0053e7f4  00 c0 93 e5                                      ldr ip, [r3]
0053e7f8  10 e0 92 e5                                      ldr lr, [r2, #0x10]
0053e7fc  0c 00 5e e1                                      cmp lr, ip
0053e800  06 00 00 2a                                      bhs #0x53e820
0053e804  00 c0 a0 e3                                      mov ip, #0
0053e808  00 c0 8d e5                                      str ip, [sp]
0053e80c  04 40 8d e5                                      str r4, [sp, #4]
0053e810  c4 fe ff eb                                      bl #0x53e328
0053e814  b7 ff ff ea                                      b #0x53e6f8
0053e818  00 40 87 e5                                      str r4, [r7]
0053e81c  b5 ff ff ea                                      b #0x53e6f8
0053e820  03 20 a0 e1                                      mov r2, r3
0053e824  10 00 8d e2                                      add r0, sp, #0x10
0053e828  0a ff ff eb                                      bl #0x53e458
0053e82c  10 30 9d e5                                      ldr r3, [sp, #0x10]
0053e830  00 30 87 e5                                      str r3, [r7]
0053e834  af ff ff ea                                      b #0x53e6f8
0053e838  05 10 a0 e1                                      mov r1, r5
0053e83c  0c 20 a0 e1                                      mov r2, ip
0053e840  06 30 a0 e1                                      mov r3, r6
0053e844  07 00 a0 e1                                      mov r0, r7
0053e848  00 e0 8d e5                                      str lr, [sp]
0053e84c  04 c0 8d e5                                      str ip, [sp, #4]
0053e850  b4 fe ff eb                                      bl #0x53e328
0053e854  a7 ff ff ea                                      b #0x53e6f8
0053e858  04 30 94 e5                                      ldr r3, [r4, #4]
0053e85c  0c c0 93 e5                                      ldr ip, [r3, #0xc]
0053e860  0c 00 54 e1                                      cmp r4, ip
0053e864  04 c0 a0 11                                      movne ip, r4
0053e868  04 00 00 1a                                      bne #0x53e880
0053e86c  03 c0 a0 e1                                      mov ip, r3
0053e870  04 30 93 e5                                      ldr r3, [r3, #4]
0053e874  0c a0 93 e5                                      ldr sl, [r3, #0xc]
0053e878  0a 00 5c e1                                      cmp ip, sl
0053e87c  fa ff ff 0a                                      beq #0x53e86c
0053e880  0c a0 9c e5                                      ldr sl, [ip, #0xc]
0053e884  0a 00 53 e1                                      cmp r3, sl
0053e888  03 c0 a0 11                                      movne ip, r3
0053e88c  79 ff ff ea                                      b #0x53e678
0053e890  04 30 94 e5                                      ldr r3, [r4, #4]
0053e894  0c 10 93 e5                                      ldr r1, [r3, #0xc]
0053e898  01 00 54 e1                                      cmp r4, r1
0053e89c  04 c0 a0 11                                      movne ip, r4
0053e8a0  04 00 00 1a                                      bne #0x53e8b8
0053e8a4  03 c0 a0 e1                                      mov ip, r3
0053e8a8  04 30 93 e5                                      ldr r3, [r3, #4]
0053e8ac  0c 10 93 e5                                      ldr r1, [r3, #0xc]
0053e8b0  0c 00 51 e1                                      cmp r1, ip
0053e8b4  fa ff ff 0a                                      beq #0x53e8a4
0053e8b8  0c 10 9c e5                                      ldr r1, [ip, #0xc]
0053e8bc  01 00 53 e1                                      cmp r3, r1
0053e8c0  03 c0 a0 11                                      movne ip, r3
0053e8c4  ba ff ff ea                                      b #0x53e7b4
0053e8c8  03 20 a0 e1                                      mov r2, r3
0053e8cc  20 00 8d e2                                      add r0, sp, #0x20
0053e8d0  e0 fe ff eb                                      bl #0x53e458
0053e8d4  20 30 9d e5                                      ldr r3, [sp, #0x20]
0053e8d8  00 30 87 e5                                      str r3, [r7]
0053e8dc  85 ff ff ea                                      b #0x53e6f8
0053e8e0  00 c0 a0 e3                                      mov ip, #0
0053e8e4  04 20 a0 e1                                      mov r2, r4
0053e8e8  10 10 8d e8                                      stm sp, {r4, ip}
0053e8ec  8d fe ff eb                                      bl #0x53e328
0053e8f0  80 ff ff ea                                      b #0x53e6f8
0053e8f4  05 10 a0 e1                                      mov r1, r5
0053e8f8  06 20 a0 e1                                      mov r2, r6
0053e8fc  18 00 8d e2                                      add r0, sp, #0x18
0053e900  d4 fe ff eb                                      bl #0x53e458
0053e904  18 30 9d e5                                      ldr r3, [sp, #0x18]
0053e908  00 30 87 e5                                      str r3, [r7]
0053e90c  79 ff ff ea                                      b #0x53e6f8
0053e910  05 10 a0 e1                                      mov r1, r5
0053e914  04 20 a0 e1                                      mov r2, r4
0053e918  06 30 a0 e1                                      mov r3, r6
0053e91c  07 00 a0 e1                                      mov r0, r7
0053e920  00 e0 8d e5                                      str lr, [sp]
0053e924  04 40 8d e5                                      str r4, [sp, #4]
0053e928  7e fe ff eb                                      bl #0x53e328
0053e92c  71 ff ff ea                                      b #0x53e6f8
0053e930  00 c0 a0 e3                                      mov ip, #0
0053e934  05 10 a0 e1                                      mov r1, r5
0053e938  04 20 a0 e1                                      mov r2, r4
0053e93c  06 30 a0 e1                                      mov r3, r6
0053e940  07 00 a0 e1                                      mov r0, r7
0053e944  00 c0 8d e5                                      str ip, [sp]
0053e948  04 40 8d e5                                      str r4, [sp, #4]
0053e94c  75 fe ff eb                                      bl #0x53e328
0053e950  68 ff ff ea                                      b #0x53e6f8

; FUNCTION 0x0053e954, declared_size=52, range_size=52, mode=arm
; class-group: std::priv::_Rb_tree<wchar_t, std::less<wchar_t>, std::pair<wchar_t const, int>, std::priv::_Select1st<std::pair<wchar_t const, int> >, std::priv::_MapTraitsT<std::pair<wchar_t const, int> >, glitch::core::SAllocator<std::pair<wchar_t const, int>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt4priv8_Rb_treeIwSt4lessIwESt4pairIKwiENS_10_Select1stIS5_EENS_11_MapTraitsTIS5_EEN6glitch4core10SAllocatorIS5_LNSA_6memory13E_MEMORY_HINTE0EEEE8_M_eraseEPNS_18_Rb_tree_node_baseE
; demangled: std::priv::_Rb_tree<wchar_t, std::less<wchar_t>, std::pair<wchar_t const, int>, std::priv::_Select1st<std::pair<wchar_t const, int> >, std::priv::_MapTraitsT<std::pair<wchar_t const, int> >, glitch::core::SAllocator<std::pair<wchar_t const, int>, (glitch::memory::E_MEMORY_HINT)0> >::_M_erase(std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
0053e954  70 40 2d e9                                      push {r4, r5, r6, lr}
0053e958  00 40 51 e2                                      subs r4, r1, #0
0053e95c  00 50 a0 e1                                      mov r5, r0
0053e960  07 00 00 0a                                      beq #0x53e984
0053e964  0c 10 94 e5                                      ldr r1, [r4, #0xc]
0053e968  05 00 a0 e1                                      mov r0, r5
0053e96c  f8 ff ff eb                                      bl #0x53e954
0053e970  08 60 94 e5                                      ldr r6, [r4, #8]
0053e974  04 00 a0 e1                                      mov r0, r4
0053e978  b4 46 f7 eb                                      bl #0x310450
0053e97c  00 40 56 e2                                      subs r4, r6, #0
0053e980  f7 ff ff 1a                                      bne #0x53e964
0053e984  70 80 bd e8                                      pop {r4, r5, r6, pc}

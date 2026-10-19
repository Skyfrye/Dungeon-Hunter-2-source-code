; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006db358, declared_size=52, range_size=52, mode=arm
; class-group: std::priv::_Rb_tree<char const*, glitch::core::SStringLess, std::pair<char const* const, glitch::video::E_VERTEX_ATTRIBUTE>, std::priv::_Select1st<std::pair<char const* const, glitch::video::E_VERTEX_ATTRIBUTE> >, std::priv::_MapTraitsT<std::pair<char const* const, glitch::video::E_VERTEX_ATTRIBUTE> >, glitch::core::SAllocator<std::pair<char const* const, glitch::video::E_VERTEX_ATTRIBUTE>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt4priv8_Rb_treeIPKcN6glitch4core11SStringLessESt4pairIKS2_NS3_5video18E_VERTEX_ATTRIBUTEEENS_10_Select1stISA_EENS_11_MapTraitsTISA_EENS4_10SAllocatorISA_LNS3_6memory13E_MEMORY_HINTE0EEEE8_M_eraseEPNS_18_Rb_tree_node_baseE
; demangled: std::priv::_Rb_tree<char const*, glitch::core::SStringLess, std::pair<char const* const, glitch::video::E_VERTEX_ATTRIBUTE>, std::priv::_Select1st<std::pair<char const* const, glitch::video::E_VERTEX_ATTRIBUTE> >, std::priv::_MapTraitsT<std::pair<char const* const, glitch::video::E_VERTEX_ATTRIBUTE> >, glitch::core::SAllocator<std::pair<char const* const, glitch::video::E_VERTEX_ATTRIBUTE>, (glitch::memory::E_MEMORY_HINT)0> >::_M_erase(std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
006db358  70 40 2d e9                                      push {r4, r5, r6, lr}
006db35c  00 40 51 e2                                      subs r4, r1, #0
006db360  00 50 a0 e1                                      mov r5, r0
006db364  07 00 00 0a                                      beq #0x6db388
006db368  0c 10 94 e5                                      ldr r1, [r4, #0xc]
006db36c  05 00 a0 e1                                      mov r0, r5
006db370  f8 ff ff eb                                      bl #0x6db358
006db374  08 60 94 e5                                      ldr r6, [r4, #8]
006db378  04 00 a0 e1                                      mov r0, r4
006db37c  33 d4 f0 eb                                      bl #0x310450
006db380  00 40 56 e2                                      subs r4, r6, #0
006db384  f7 ff ff 1a                                      bne #0x6db368
006db388  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x006db3c0, declared_size=344, range_size=344, mode=arm
; class-group: std::priv::_Rb_tree<char const*, glitch::core::SStringLess, std::pair<char const* const, glitch::video::E_VERTEX_ATTRIBUTE>, std::priv::_Select1st<std::pair<char const* const, glitch::video::E_VERTEX_ATTRIBUTE> >, std::priv::_MapTraitsT<std::pair<char const* const, glitch::video::E_VERTEX_ATTRIBUTE> >, glitch::core::SAllocator<std::pair<char const* const, glitch::video::E_VERTEX_ATTRIBUTE>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt4priv8_Rb_treeIPKcN6glitch4core11SStringLessESt4pairIKS2_NS3_5video18E_VERTEX_ATTRIBUTEEENS_10_Select1stISA_EENS_11_MapTraitsTISA_EENS4_10SAllocatorISA_LNS3_6memory13E_MEMORY_HINTE0EEEE9_M_insertEPNS_18_Rb_tree_node_baseERKSA_SL_SL_.clone.0
; demangled: std::priv::_Rb_tree<char const*, glitch::core::SStringLess, std::pair<char const* const, glitch::video::E_VERTEX_ATTRIBUTE>, std::priv::_Select1st<std::pair<char const* const, glitch::video::E_VERTEX_ATTRIBUTE> >, std::priv::_MapTraitsT<std::pair<char const* const, glitch::video::E_VERTEX_ATTRIBUTE> >, glitch::core::SAllocator<std::pair<char const* const, glitch::video::E_VERTEX_ATTRIBUTE>, (glitch::memory::E_MEMORY_HINT)0> >::_M_insert(std::priv::_Rb_tree_node_base*, std::pair<char const* const, glitch::video::E_VERTEX_ATTRIBUTE> const&, std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*) [clone .clone.0]
; decoder-mode: arm
006db3c0  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
006db3c4  02 00 51 e1                                      cmp r1, r2
006db3c8  0c d0 4d e2                                      sub sp, sp, #0xc
006db3cc  01 40 a0 e1                                      mov r4, r1
006db3d0  00 50 a0 e1                                      mov r5, r0
006db3d4  20 70 9d e5                                      ldr r7, [sp, #0x20]
006db3d8  15 00 00 0a                                      beq #0x6db434
006db3dc  00 00 57 e3                                      cmp r7, #0
006db3e0  30 00 00 0a                                      beq #0x6db4a8
006db3e4  00 10 a0 e3                                      mov r1, #0
006db3e8  18 00 a0 e3                                      mov r0, #0x18
006db3ec  04 20 8d e5                                      str r2, [sp, #4]
006db3f0  00 30 8d e5                                      str r3, [sp]
006db3f4  5b d4 f0 eb                                      bl #0x310568
006db3f8  00 30 9d e5                                      ldr r3, [sp]
006db3fc  00 10 a0 e3                                      mov r1, #0
006db400  00 60 a0 e1                                      mov r6, r0
006db404  00 c0 93 e5                                      ldr ip, [r3]
006db408  10 c0 80 e5                                      str ip, [r0, #0x10]
006db40c  04 30 93 e5                                      ldr r3, [r3, #4]
006db410  0c 10 80 e5                                      str r1, [r0, #0xc]
006db414  08 10 80 e5                                      str r1, [r0, #8]
006db418  14 30 80 e5                                      str r3, [r0, #0x14]
006db41c  04 20 9d e5                                      ldr r2, [sp, #4]
006db420  08 00 82 e5                                      str r0, [r2, #8]
006db424  08 30 94 e5                                      ldr r3, [r4, #8]
006db428  03 00 52 e1                                      cmp r2, r3
006db42c  08 00 84 05                                      streq r0, [r4, #8]
006db430  11 00 00 ea                                      b #0x6db47c
006db434  00 10 a0 e3                                      mov r1, #0
006db438  18 00 a0 e3                                      mov r0, #0x18
006db43c  04 20 8d e5                                      str r2, [sp, #4]
006db440  00 30 8d e5                                      str r3, [sp]
006db444  47 d4 f0 eb                                      bl #0x310568
006db448  00 30 9d e5                                      ldr r3, [sp]
006db44c  00 10 a0 e3                                      mov r1, #0
006db450  00 60 a0 e1                                      mov r6, r0
006db454  00 c0 93 e5                                      ldr ip, [r3]
006db458  10 c0 80 e5                                      str ip, [r0, #0x10]
006db45c  04 30 93 e5                                      ldr r3, [r3, #4]
006db460  0c 10 80 e5                                      str r1, [r0, #0xc]
006db464  08 10 80 e5                                      str r1, [r0, #8]
006db468  14 30 80 e5                                      str r3, [r0, #0x14]
006db46c  08 00 84 e5                                      str r0, [r4, #8]
006db470  04 00 84 e5                                      str r0, [r4, #4]
006db474  0c 00 84 e5                                      str r0, [r4, #0xc]
006db478  04 20 9d e5                                      ldr r2, [sp, #4]
006db47c  06 00 a0 e1                                      mov r0, r6
006db480  04 20 86 e5                                      str r2, [r6, #4]
006db484  04 10 84 e2                                      add r1, r4, #4
006db488  b4 e0 f0 eb                                      bl #0x313760
006db48c  10 30 94 e5                                      ldr r3, [r4, #0x10]
006db490  05 00 a0 e1                                      mov r0, r5
006db494  01 30 83 e2                                      add r3, r3, #1
006db498  10 30 84 e5                                      str r3, [r4, #0x10]
006db49c  00 60 85 e5                                      str r6, [r5]
006db4a0  0c d0 8d e2                                      add sp, sp, #0xc
006db4a4  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
006db4a8  00 00 93 e5                                      ldr r0, [r3]
006db4ac  10 10 92 e5                                      ldr r1, [r2, #0x10]
006db4b0  04 20 8d e5                                      str r2, [sp, #4]
006db4b4  00 30 8d e5                                      str r3, [sp]
006db4b8  97 cb f0 eb                                      bl #0x30e31c
006db4bc  00 00 50 e3                                      cmp r0, #0
006db4c0  04 20 9d e5                                      ldr r2, [sp, #4]
006db4c4  00 30 9d e5                                      ldr r3, [sp]
006db4c8  c5 ff ff ba                                      blt #0x6db3e4
006db4cc  07 10 a0 e1                                      mov r1, r7
006db4d0  18 00 a0 e3                                      mov r0, #0x18
006db4d4  04 20 8d e5                                      str r2, [sp, #4]
006db4d8  00 30 8d e5                                      str r3, [sp]
006db4dc  21 d4 f0 eb                                      bl #0x310568
006db4e0  00 30 9d e5                                      ldr r3, [sp]
006db4e4  00 60 a0 e1                                      mov r6, r0
006db4e8  00 10 93 e5                                      ldr r1, [r3]
006db4ec  10 10 80 e5                                      str r1, [r0, #0x10]
006db4f0  04 30 93 e5                                      ldr r3, [r3, #4]
006db4f4  0c 70 80 e5                                      str r7, [r0, #0xc]
006db4f8  08 70 80 e5                                      str r7, [r0, #8]
006db4fc  14 30 80 e5                                      str r3, [r0, #0x14]
006db500  04 20 9d e5                                      ldr r2, [sp, #4]
006db504  0c 00 82 e5                                      str r0, [r2, #0xc]
006db508  0c 30 94 e5                                      ldr r3, [r4, #0xc]
006db50c  03 00 52 e1                                      cmp r2, r3
006db510  0c 00 84 05                                      streq r0, [r4, #0xc]
006db514  d8 ff ff ea                                      b #0x6db47c

; FUNCTION 0x006db518, declared_size=440, range_size=440, mode=arm
; class-group: std::priv::_Rb_tree<char const*, glitch::core::SStringLess, std::pair<char const* const, glitch::video::E_VERTEX_ATTRIBUTE>, std::priv::_Select1st<std::pair<char const* const, glitch::video::E_VERTEX_ATTRIBUTE> >, std::priv::_MapTraitsT<std::pair<char const* const, glitch::video::E_VERTEX_ATTRIBUTE> >, glitch::core::SAllocator<std::pair<char const* const, glitch::video::E_VERTEX_ATTRIBUTE>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt4priv8_Rb_treeIPKcN6glitch4core11SStringLessESt4pairIKS2_NS3_5video18E_VERTEX_ATTRIBUTEEENS_10_Select1stISA_EENS_11_MapTraitsTISA_EENS4_10SAllocatorISA_LNS3_6memory13E_MEMORY_HINTE0EEEE13insert_uniqueERKSA_
; demangled: std::priv::_Rb_tree<char const*, glitch::core::SStringLess, std::pair<char const* const, glitch::video::E_VERTEX_ATTRIBUTE>, std::priv::_Select1st<std::pair<char const* const, glitch::video::E_VERTEX_ATTRIBUTE> >, std::priv::_MapTraitsT<std::pair<char const* const, glitch::video::E_VERTEX_ATTRIBUTE> >, glitch::core::SAllocator<std::pair<char const* const, glitch::video::E_VERTEX_ATTRIBUTE>, (glitch::memory::E_MEMORY_HINT)0> >::insert_unique(std::pair<char const* const, glitch::video::E_VERTEX_ATTRIBUTE> const&)
; decoder-mode: arm
006db518  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
006db51c  04 50 91 e5                                      ldr r5, [r1, #4]
006db520  10 d0 4d e2                                      sub sp, sp, #0x10
006db524  01 60 a0 e1                                      mov r6, r1
006db528  00 00 55 e3                                      cmp r5, #0
006db52c  00 40 a0 e1                                      mov r4, r0
006db530  02 70 a0 e1                                      mov r7, r2
006db534  01 50 a0 01                                      moveq r5, r1
006db538  1b 00 00 0a                                      beq #0x6db5ac
006db53c  00 a0 92 e5                                      ldr sl, [r2]
006db540  00 00 00 ea                                      b #0x6db548
006db544  03 50 a0 e1                                      mov r5, r3
006db548  10 80 95 e5                                      ldr r8, [r5, #0x10]
006db54c  0a 00 a0 e1                                      mov r0, sl
006db550  08 10 a0 e1                                      mov r1, r8
006db554  70 cb f0 eb                                      bl #0x30e31c
006db558  00 00 50 e3                                      cmp r0, #0
006db55c  08 30 95 b5                                      ldrlt r3, [r5, #8]
006db560  0c 30 95 a5                                      ldrge r3, [r5, #0xc]
006db564  01 20 a0 b3                                      movlt r2, #1
006db568  00 20 a0 a3                                      movge r2, #0
006db56c  00 00 53 e3                                      cmp r3, #0
006db570  f3 ff ff 1a                                      bne #0x6db544
006db574  00 00 52 e3                                      cmp r2, #0
006db578  05 90 a0 01                                      moveq sb, r5
006db57c  0a 00 00 1a                                      bne #0x6db5ac
006db580  08 00 a0 e1                                      mov r0, r8
006db584  0a 10 a0 e1                                      mov r1, sl
006db588  63 cb f0 eb                                      bl #0x30e31c
006db58c  00 00 50 e3                                      cmp r0, #0
006db590  00 30 a0 a3                                      movge r3, #0
006db594  00 90 84 a5                                      strge sb, [r4]
006db598  04 30 c4 a5                                      strbge r3, [r4, #4]
006db59c  1f 00 00 ba                                      blt #0x6db620
006db5a0  04 00 a0 e1                                      mov r0, r4
006db5a4  10 d0 8d e2                                      add sp, sp, #0x10
006db5a8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
006db5ac  08 30 96 e5                                      ldr r3, [r6, #8]
006db5b0  03 00 55 e1                                      cmp r5, r3
006db5b4  3a 00 00 0a                                      beq #0x6db6a4
006db5b8  00 30 d5 e5                                      ldrb r3, [r5]
006db5bc  00 00 53 e3                                      cmp r3, #0
006db5c0  03 00 00 1a                                      bne #0x6db5d4
006db5c4  04 30 95 e5                                      ldr r3, [r5, #4]
006db5c8  04 30 93 e5                                      ldr r3, [r3, #4]
006db5cc  03 00 55 e1                                      cmp r5, r3
006db5d0  2e 00 00 0a                                      beq #0x6db690
006db5d4  08 20 95 e5                                      ldr r2, [r5, #8]
006db5d8  00 00 52 e3                                      cmp r2, #0
006db5dc  01 00 00 1a                                      bne #0x6db5e8
006db5e0  1a 00 00 ea                                      b #0x6db650
006db5e4  03 20 a0 e1                                      mov r2, r3
006db5e8  0c 30 92 e5                                      ldr r3, [r2, #0xc]
006db5ec  00 00 53 e3                                      cmp r3, #0
006db5f0  fb ff ff 1a                                      bne #0x6db5e4
006db5f4  10 80 92 e5                                      ldr r8, [r2, #0x10]
006db5f8  00 a0 97 e5                                      ldr sl, [r7]
006db5fc  02 90 a0 e1                                      mov sb, r2
006db600  08 00 a0 e1                                      mov r0, r8
006db604  0a 10 a0 e1                                      mov r1, sl
006db608  43 cb f0 eb                                      bl #0x30e31c
006db60c  00 00 50 e3                                      cmp r0, #0
006db610  00 30 a0 a3                                      movge r3, #0
006db614  00 90 84 a5                                      strge sb, [r4]
006db618  04 30 c4 a5                                      strbge r3, [r4, #4]
006db61c  df ff ff aa                                      bge #0x6db5a0
006db620  05 20 a0 e1                                      mov r2, r5
006db624  07 30 a0 e1                                      mov r3, r7
006db628  00 c0 a0 e3                                      mov ip, #0
006db62c  06 10 a0 e1                                      mov r1, r6
006db630  08 00 8d e2                                      add r0, sp, #8
006db634  00 c0 8d e5                                      str ip, [sp]
006db638  60 ff ff eb                                      bl #0x6db3c0
006db63c  08 30 9d e5                                      ldr r3, [sp, #8]
006db640  01 20 a0 e3                                      mov r2, #1
006db644  04 20 c4 e5                                      strb r2, [r4, #4]
006db648  00 30 84 e5                                      str r3, [r4]
006db64c  d3 ff ff ea                                      b #0x6db5a0
006db650  04 30 95 e5                                      ldr r3, [r5, #4]
006db654  08 20 93 e5                                      ldr r2, [r3, #8]
006db658  02 00 55 e1                                      cmp r5, r2
006db65c  03 90 a0 11                                      movne sb, r3
006db660  00 a0 97 15                                      ldrne sl, [r7]
006db664  10 80 93 15                                      ldrne r8, [r3, #0x10]
006db668  01 00 00 0a                                      beq #0x6db674
006db66c  c3 ff ff ea                                      b #0x6db580
006db670  09 30 a0 e1                                      mov r3, sb
006db674  04 90 93 e5                                      ldr sb, [r3, #4]
006db678  08 20 99 e5                                      ldr r2, [sb, #8]
006db67c  03 00 52 e1                                      cmp r2, r3
006db680  fa ff ff 0a                                      beq #0x6db670
006db684  00 a0 97 e5                                      ldr sl, [r7]
006db688  10 80 99 e5                                      ldr r8, [sb, #0x10]
006db68c  bb ff ff ea                                      b #0x6db580
006db690  0c 30 95 e5                                      ldr r3, [r5, #0xc]
006db694  00 a0 97 e5                                      ldr sl, [r7]
006db698  03 90 a0 e1                                      mov sb, r3
006db69c  10 80 93 e5                                      ldr r8, [r3, #0x10]
006db6a0  b6 ff ff ea                                      b #0x6db580
006db6a4  05 20 a0 e1                                      mov r2, r5
006db6a8  07 30 a0 e1                                      mov r3, r7
006db6ac  06 10 a0 e1                                      mov r1, r6
006db6b0  0c 00 8d e2                                      add r0, sp, #0xc
006db6b4  00 50 8d e5                                      str r5, [sp]
006db6b8  40 ff ff eb                                      bl #0x6db3c0
006db6bc  0c 30 9d e5                                      ldr r3, [sp, #0xc]
006db6c0  01 20 a0 e3                                      mov r2, #1
006db6c4  04 20 c4 e5                                      strb r2, [r4, #4]
006db6c8  00 30 84 e5                                      str r3, [r4]
006db6cc  b3 ff ff ea                                      b #0x6db5a0

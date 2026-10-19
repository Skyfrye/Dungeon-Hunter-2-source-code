; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0063a1c4, declared_size=52, range_size=52, mode=arm
; class-group: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, void*>, std::priv::_Select1st<std::pair<unsigned int const, void*> >, std::priv::_MapTraitsT<std::pair<unsigned int const, void*> >, glitch::core::SAllocator<std::pair<unsigned int const, void*>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt4priv8_Rb_treeIjSt4lessIjESt4pairIKjPvENS_10_Select1stIS6_EENS_11_MapTraitsTIS6_EEN6glitch4core10SAllocatorIS6_LNSB_6memory13E_MEMORY_HINTE0EEEE8_M_eraseEPNS_18_Rb_tree_node_baseE
; demangled: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, void*>, std::priv::_Select1st<std::pair<unsigned int const, void*> >, std::priv::_MapTraitsT<std::pair<unsigned int const, void*> >, glitch::core::SAllocator<std::pair<unsigned int const, void*>, (glitch::memory::E_MEMORY_HINT)0> >::_M_erase(std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
0063a1c4  70 40 2d e9                                      push {r4, r5, r6, lr}
0063a1c8  00 40 51 e2                                      subs r4, r1, #0
0063a1cc  00 50 a0 e1                                      mov r5, r0
0063a1d0  07 00 00 0a                                      beq #0x63a1f4
0063a1d4  0c 10 94 e5                                      ldr r1, [r4, #0xc]
0063a1d8  05 00 a0 e1                                      mov r0, r5
0063a1dc  f8 ff ff eb                                      bl #0x63a1c4
0063a1e0  08 60 94 e5                                      ldr r6, [r4, #8]
0063a1e4  04 00 a0 e1                                      mov r0, r4
0063a1e8  98 58 f3 eb                                      bl #0x310450
0063a1ec  00 40 56 e2                                      subs r4, r6, #0
0063a1f0  f7 ff ff 1a                                      bne #0x63a1d4
0063a1f4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0063a7bc, declared_size=304, range_size=304, mode=arm
; class-group: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, void*>, std::priv::_Select1st<std::pair<unsigned int const, void*> >, std::priv::_MapTraitsT<std::pair<unsigned int const, void*> >, glitch::core::SAllocator<std::pair<unsigned int const, void*>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt4priv8_Rb_treeIjSt4lessIjESt4pairIKjPvENS_10_Select1stIS6_EENS_11_MapTraitsTIS6_EEN6glitch4core10SAllocatorIS6_LNSB_6memory13E_MEMORY_HINTE0EEEE9_M_insertEPNS_18_Rb_tree_node_baseERKS6_SJ_SJ_
; demangled: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, void*>, std::priv::_Select1st<std::pair<unsigned int const, void*> >, std::priv::_MapTraitsT<std::pair<unsigned int const, void*> >, glitch::core::SAllocator<std::pair<unsigned int const, void*>, (glitch::memory::E_MEMORY_HINT)0> >::_M_insert(std::priv::_Rb_tree_node_base*, std::pair<unsigned int const, void*> const&, std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
0063a7bc  02 00 51 e1                                      cmp r1, r2
0063a7c0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0063a7c4  01 40 a0 e1                                      mov r4, r1
0063a7c8  02 50 a0 e1                                      mov r5, r2
0063a7cc  00 60 a0 e1                                      mov r6, r0
0063a7d0  03 80 a0 e1                                      mov r8, r3
0063a7d4  30 00 00 0a                                      beq #0x63a89c
0063a7d8  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
0063a7dc  00 00 53 e3                                      cmp r3, #0
0063a7e0  18 00 00 0a                                      beq #0x63a848
0063a7e4  18 00 a0 e3                                      mov r0, #0x18
0063a7e8  00 10 a0 e3                                      mov r1, #0
0063a7ec  5d 57 f3 eb                                      bl #0x310568
0063a7f0  00 20 98 e5                                      ldr r2, [r8]
0063a7f4  00 30 a0 e3                                      mov r3, #0
0063a7f8  00 70 a0 e1                                      mov r7, r0
0063a7fc  10 20 80 e5                                      str r2, [r0, #0x10]
0063a800  04 20 98 e5                                      ldr r2, [r8, #4]
0063a804  0c 30 80 e5                                      str r3, [r0, #0xc]
0063a808  08 30 80 e5                                      str r3, [r0, #8]
0063a80c  14 20 80 e5                                      str r2, [r0, #0x14]
0063a810  0c 00 85 e5                                      str r0, [r5, #0xc]
0063a814  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0063a818  03 00 55 e1                                      cmp r5, r3
0063a81c  1c 00 00 0a                                      beq #0x63a894
0063a820  07 00 a0 e1                                      mov r0, r7
0063a824  04 50 87 e5                                      str r5, [r7, #4]
0063a828  04 10 84 e2                                      add r1, r4, #4
0063a82c  cb 63 f3 eb                                      bl #0x313760
0063a830  10 30 94 e5                                      ldr r3, [r4, #0x10]
0063a834  06 00 a0 e1                                      mov r0, r6
0063a838  01 30 83 e2                                      add r3, r3, #1
0063a83c  10 30 84 e5                                      str r3, [r4, #0x10]
0063a840  00 70 86 e5                                      str r7, [r6]
0063a844  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0063a848  18 30 9d e5                                      ldr r3, [sp, #0x18]
0063a84c  00 00 53 e3                                      cmp r3, #0
0063a850  20 00 00 0a                                      beq #0x63a8d8
0063a854  18 00 a0 e3                                      mov r0, #0x18
0063a858  00 10 a0 e3                                      mov r1, #0
0063a85c  41 57 f3 eb                                      bl #0x310568
0063a860  00 20 98 e5                                      ldr r2, [r8]
0063a864  00 30 a0 e3                                      mov r3, #0
0063a868  00 70 a0 e1                                      mov r7, r0
0063a86c  10 20 80 e5                                      str r2, [r0, #0x10]
0063a870  04 20 98 e5                                      ldr r2, [r8, #4]
0063a874  0c 30 80 e5                                      str r3, [r0, #0xc]
0063a878  08 30 80 e5                                      str r3, [r0, #8]
0063a87c  14 20 80 e5                                      str r2, [r0, #0x14]
0063a880  08 00 85 e5                                      str r0, [r5, #8]
0063a884  08 30 94 e5                                      ldr r3, [r4, #8]
0063a888  03 00 55 e1                                      cmp r5, r3
0063a88c  08 00 84 05                                      streq r0, [r4, #8]
0063a890  e2 ff ff ea                                      b #0x63a820
0063a894  0c 70 84 e5                                      str r7, [r4, #0xc]
0063a898  e0 ff ff ea                                      b #0x63a820
0063a89c  18 00 a0 e3                                      mov r0, #0x18
0063a8a0  00 10 a0 e3                                      mov r1, #0
0063a8a4  2f 57 f3 eb                                      bl #0x310568
0063a8a8  00 20 98 e5                                      ldr r2, [r8]
0063a8ac  00 30 a0 e3                                      mov r3, #0
0063a8b0  00 70 a0 e1                                      mov r7, r0
0063a8b4  10 20 80 e5                                      str r2, [r0, #0x10]
0063a8b8  04 20 98 e5                                      ldr r2, [r8, #4]
0063a8bc  0c 30 80 e5                                      str r3, [r0, #0xc]
0063a8c0  08 30 80 e5                                      str r3, [r0, #8]
0063a8c4  14 20 80 e5                                      str r2, [r0, #0x14]
0063a8c8  08 00 84 e5                                      str r0, [r4, #8]
0063a8cc  04 00 84 e5                                      str r0, [r4, #4]
0063a8d0  0c 00 84 e5                                      str r0, [r4, #0xc]
0063a8d4  d1 ff ff ea                                      b #0x63a820
0063a8d8  00 20 98 e5                                      ldr r2, [r8]
0063a8dc  10 30 95 e5                                      ldr r3, [r5, #0x10]
0063a8e0  03 00 52 e1                                      cmp r2, r3
0063a8e4  be ff ff 2a                                      bhs #0x63a7e4
0063a8e8  d9 ff ff ea                                      b #0x63a854

; FUNCTION 0x0063a8ec, declared_size=392, range_size=392, mode=arm
; class-group: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, void*>, std::priv::_Select1st<std::pair<unsigned int const, void*> >, std::priv::_MapTraitsT<std::pair<unsigned int const, void*> >, glitch::core::SAllocator<std::pair<unsigned int const, void*>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt4priv8_Rb_treeIjSt4lessIjESt4pairIKjPvENS_10_Select1stIS6_EENS_11_MapTraitsTIS6_EEN6glitch4core10SAllocatorIS6_LNSB_6memory13E_MEMORY_HINTE0EEEE13insert_uniqueERKS6_
; demangled: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, void*>, std::priv::_Select1st<std::pair<unsigned int const, void*> >, std::priv::_MapTraitsT<std::pair<unsigned int const, void*> >, glitch::core::SAllocator<std::pair<unsigned int const, void*>, (glitch::memory::E_MEMORY_HINT)0> >::insert_unique(std::pair<unsigned int const, void*> const&)
; decoder-mode: arm
0063a8ec  70 40 2d e9                                      push {r4, r5, r6, lr}
0063a8f0  04 c0 91 e5                                      ldr ip, [r1, #4]
0063a8f4  10 d0 4d e2                                      sub sp, sp, #0x10
0063a8f8  00 40 a0 e1                                      mov r4, r0
0063a8fc  00 00 5c e3                                      cmp ip, #0
0063a900  02 30 a0 e1                                      mov r3, r2
0063a904  01 c0 a0 01                                      moveq ip, r1
0063a908  15 00 00 0a                                      beq #0x63a964
0063a90c  00 60 92 e5                                      ldr r6, [r2]
0063a910  00 00 00 ea                                      b #0x63a918
0063a914  02 c0 a0 e1                                      mov ip, r2
0063a918  10 00 9c e5                                      ldr r0, [ip, #0x10]
0063a91c  01 50 a0 e3                                      mov r5, #1
0063a920  06 00 50 e1                                      cmp r0, r6
0063a924  08 20 9c 85                                      ldrhi r2, [ip, #8]
0063a928  0c 20 9c 95                                      ldrls r2, [ip, #0xc]
0063a92c  00 50 a0 93                                      movls r5, #0
0063a930  00 00 52 e3                                      cmp r2, #0
0063a934  f6 ff ff 1a                                      bne #0x63a914
0063a938  00 00 55 e3                                      cmp r5, #0
0063a93c  0c 50 a0 01                                      moveq r5, ip
0063a940  07 00 00 1a                                      bne #0x63a964
0063a944  00 00 56 e1                                      cmp r6, r0
0063a948  00 30 a0 93                                      movls r3, #0
0063a94c  00 50 84 95                                      strls r5, [r4]
0063a950  04 30 c4 95                                      strbls r3, [r4, #4]
0063a954  1c 00 00 8a                                      bhi #0x63a9cc
0063a958  04 00 a0 e1                                      mov r0, r4
0063a95c  10 d0 8d e2                                      add sp, sp, #0x10
0063a960  70 80 bd e8                                      pop {r4, r5, r6, pc}
0063a964  08 20 91 e5                                      ldr r2, [r1, #8]
0063a968  02 00 5c e1                                      cmp ip, r2
0063a96c  36 00 00 0a                                      beq #0x63aa4c
0063a970  00 20 dc e5                                      ldrb r2, [ip]
0063a974  00 00 52 e3                                      cmp r2, #0
0063a978  03 00 00 1a                                      bne #0x63a98c
0063a97c  04 20 9c e5                                      ldr r2, [ip, #4]
0063a980  04 20 92 e5                                      ldr r2, [r2, #4]
0063a984  02 00 5c e1                                      cmp ip, r2
0063a988  2a 00 00 0a                                      beq #0x63aa38
0063a98c  08 00 9c e5                                      ldr r0, [ip, #8]
0063a990  00 00 50 e3                                      cmp r0, #0
0063a994  01 00 00 1a                                      bne #0x63a9a0
0063a998  16 00 00 ea                                      b #0x63a9f8
0063a99c  02 00 a0 e1                                      mov r0, r2
0063a9a0  0c 20 90 e5                                      ldr r2, [r0, #0xc]
0063a9a4  00 00 52 e3                                      cmp r2, #0
0063a9a8  fb ff ff 1a                                      bne #0x63a99c
0063a9ac  00 60 93 e5                                      ldr r6, [r3]
0063a9b0  00 50 a0 e1                                      mov r5, r0
0063a9b4  10 00 90 e5                                      ldr r0, [r0, #0x10]
0063a9b8  00 00 56 e1                                      cmp r6, r0
0063a9bc  00 30 a0 93                                      movls r3, #0
0063a9c0  00 50 84 95                                      strls r5, [r4]
0063a9c4  04 30 c4 95                                      strbls r3, [r4, #4]
0063a9c8  e2 ff ff 9a                                      bls #0x63a958
0063a9cc  0c 20 a0 e1                                      mov r2, ip
0063a9d0  08 00 8d e2                                      add r0, sp, #8
0063a9d4  00 c0 a0 e3                                      mov ip, #0
0063a9d8  04 c0 8d e5                                      str ip, [sp, #4]
0063a9dc  00 c0 8d e5                                      str ip, [sp]
0063a9e0  75 ff ff eb                                      bl #0x63a7bc
0063a9e4  08 30 9d e5                                      ldr r3, [sp, #8]
0063a9e8  01 20 a0 e3                                      mov r2, #1
0063a9ec  04 20 c4 e5                                      strb r2, [r4, #4]
0063a9f0  00 30 84 e5                                      str r3, [r4]
0063a9f4  d7 ff ff ea                                      b #0x63a958
0063a9f8  04 20 9c e5                                      ldr r2, [ip, #4]
0063a9fc  08 00 92 e5                                      ldr r0, [r2, #8]
0063aa00  00 00 5c e1                                      cmp ip, r0
0063aa04  02 50 a0 11                                      movne r5, r2
0063aa08  00 60 93 15                                      ldrne r6, [r3]
0063aa0c  10 00 92 15                                      ldrne r0, [r2, #0x10]
0063aa10  01 00 00 0a                                      beq #0x63aa1c
0063aa14  ca ff ff ea                                      b #0x63a944
0063aa18  05 20 a0 e1                                      mov r2, r5
0063aa1c  04 50 92 e5                                      ldr r5, [r2, #4]
0063aa20  08 00 95 e5                                      ldr r0, [r5, #8]
0063aa24  02 00 50 e1                                      cmp r0, r2
0063aa28  fa ff ff 0a                                      beq #0x63aa18
0063aa2c  00 60 93 e5                                      ldr r6, [r3]
0063aa30  10 00 95 e5                                      ldr r0, [r5, #0x10]
0063aa34  c2 ff ff ea                                      b #0x63a944
0063aa38  0c 20 9c e5                                      ldr r2, [ip, #0xc]
0063aa3c  00 60 93 e5                                      ldr r6, [r3]
0063aa40  02 50 a0 e1                                      mov r5, r2
0063aa44  10 00 92 e5                                      ldr r0, [r2, #0x10]
0063aa48  bd ff ff ea                                      b #0x63a944
0063aa4c  0c 20 a0 e1                                      mov r2, ip
0063aa50  00 e0 a0 e3                                      mov lr, #0
0063aa54  0c 00 8d e2                                      add r0, sp, #0xc
0063aa58  00 50 8d e8                                      stm sp, {ip, lr}
0063aa5c  56 ff ff eb                                      bl #0x63a7bc
0063aa60  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0063aa64  01 20 a0 e3                                      mov r2, #1
0063aa68  04 20 c4 e5                                      strb r2, [r4, #4]
0063aa6c  00 30 84 e5                                      str r3, [r4]
0063aa70  b8 ff ff ea                                      b #0x63a958

; FUNCTION 0x0063aa74, declared_size=884, range_size=884, mode=arm
; class-group: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, void*>, std::priv::_Select1st<std::pair<unsigned int const, void*> >, std::priv::_MapTraitsT<std::pair<unsigned int const, void*> >, glitch::core::SAllocator<std::pair<unsigned int const, void*>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt4priv8_Rb_treeIjSt4lessIjESt4pairIKjPvENS_10_Select1stIS6_EENS_11_MapTraitsTIS6_EEN6glitch4core10SAllocatorIS6_LNSB_6memory13E_MEMORY_HINTE0EEEE13insert_uniqueENS_17_Rb_tree_iteratorIS6_SA_EERKS6_
; demangled: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, void*>, std::priv::_Select1st<std::pair<unsigned int const, void*> >, std::priv::_MapTraitsT<std::pair<unsigned int const, void*> >, glitch::core::SAllocator<std::pair<unsigned int const, void*>, (glitch::memory::E_MEMORY_HINT)0> >::insert_unique(std::priv::_Rb_tree_iterator<std::pair<unsigned int const, void*>, std::priv::_MapTraitsT<std::pair<unsigned int const, void*> > >, std::pair<unsigned int const, void*> const&)
; decoder-mode: arm
0063aa74  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0063aa78  00 40 92 e5                                      ldr r4, [r2]
0063aa7c  08 20 91 e5                                      ldr r2, [r1, #8]
0063aa80  2c d0 4d e2                                      sub sp, sp, #0x2c
0063aa84  01 50 a0 e1                                      mov r5, r1
0063aa88  02 00 54 e1                                      cmp r4, r2
0063aa8c  00 70 a0 e1                                      mov r7, r0
0063aa90  03 60 a0 e1                                      mov r6, r3
0063aa94  5a 00 00 0a                                      beq #0x63ac04
0063aa98  01 00 54 e1                                      cmp r4, r1
0063aa9c  78 00 00 0a                                      beq #0x63ac84
0063aaa0  00 30 d4 e5                                      ldrb r3, [r4]
0063aaa4  00 00 53 e3                                      cmp r3, #0
0063aaa8  3a 00 00 0a                                      beq #0x63ab98
0063aaac  08 c0 94 e5                                      ldr ip, [r4, #8]
0063aab0  00 00 5c e3                                      cmp ip, #0
0063aab4  01 00 00 1a                                      bne #0x63aac0
0063aab8  3e 00 00 ea                                      b #0x63abb8
0063aabc  03 c0 a0 e1                                      mov ip, r3
0063aac0  0c 30 9c e5                                      ldr r3, [ip, #0xc]
0063aac4  00 00 53 e3                                      cmp r3, #0
0063aac8  fb ff ff 1a                                      bne #0x63aabc
0063aacc  00 20 96 e5                                      ldr r2, [r6]
0063aad0  10 00 94 e5                                      ldr r0, [r4, #0x10]
0063aad4  00 00 52 e1                                      cmp r2, r0
0063aad8  00 10 a0 23                                      movhs r1, #0
0063aadc  01 10 a0 33                                      movlo r1, #1
0063aae0  00 00 51 e3                                      cmp r1, #0
0063aae4  1b 00 00 1a                                      bne #0x63ab58
0063aae8  0c 80 94 e5                                      ldr r8, [r4, #0xc]
0063aaec  00 00 58 e3                                      cmp r8, #0
0063aaf0  7d 00 00 0a                                      beq #0x63acec
0063aaf4  08 c0 a0 e1                                      mov ip, r8
0063aaf8  00 00 00 ea                                      b #0x63ab00
0063aafc  03 c0 a0 e1                                      mov ip, r3
0063ab00  08 30 9c e5                                      ldr r3, [ip, #8]
0063ab04  00 00 53 e3                                      cmp r3, #0
0063ab08  fb ff ff 1a                                      bne #0x63aafc
0063ab0c  00 00 51 e3                                      cmp r1, #0
0063ab10  34 00 00 1a                                      bne #0x63abe8
0063ab14  00 00 52 e1                                      cmp r2, r0
0063ab18  63 00 00 9a                                      bls #0x63acac
0063ab1c  0c 00 55 e1                                      cmp r5, ip
0063ab20  02 00 00 0a                                      beq #0x63ab30
0063ab24  10 30 9c e5                                      ldr r3, [ip, #0x10]
0063ab28  03 00 52 e1                                      cmp r2, r3
0063ab2c  2d 00 00 2a                                      bhs #0x63abe8
0063ab30  00 00 58 e3                                      cmp r8, #0
0063ab34  4a 00 00 1a                                      bne #0x63ac64
0063ab38  05 10 a0 e1                                      mov r1, r5
0063ab3c  04 20 a0 e1                                      mov r2, r4
0063ab40  06 30 a0 e1                                      mov r3, r6
0063ab44  07 00 a0 e1                                      mov r0, r7
0063ab48  00 80 8d e5                                      str r8, [sp]
0063ab4c  04 40 8d e5                                      str r4, [sp, #4]
0063ab50  19 ff ff eb                                      bl #0x63a7bc
0063ab54  0c 00 00 ea                                      b #0x63ab8c
0063ab58  10 30 9c e5                                      ldr r3, [ip, #0x10]
0063ab5c  03 00 52 e1                                      cmp r2, r3
0063ab60  e0 ff ff 9a                                      bls #0x63aae8
0063ab64  0c e0 9c e5                                      ldr lr, [ip, #0xc]
0063ab68  00 00 5e e3                                      cmp lr, #0
0063ab6c  56 00 00 0a                                      beq #0x63accc
0063ab70  00 c0 a0 e3                                      mov ip, #0
0063ab74  05 10 a0 e1                                      mov r1, r5
0063ab78  04 20 a0 e1                                      mov r2, r4
0063ab7c  06 30 a0 e1                                      mov r3, r6
0063ab80  07 00 a0 e1                                      mov r0, r7
0063ab84  10 10 8d e8                                      stm sp, {r4, ip}
0063ab88  0b ff ff eb                                      bl #0x63a7bc
0063ab8c  07 00 a0 e1                                      mov r0, r7
0063ab90  2c d0 8d e2                                      add sp, sp, #0x2c
0063ab94  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0063ab98  04 30 94 e5                                      ldr r3, [r4, #4]
0063ab9c  04 30 93 e5                                      ldr r3, [r3, #4]
0063aba0  03 00 54 e1                                      cmp r4, r3
0063aba4  0c c0 94 05                                      ldreq ip, [r4, #0xc]
0063aba8  c7 ff ff 0a                                      beq #0x63aacc
0063abac  08 c0 94 e5                                      ldr ip, [r4, #8]
0063abb0  00 00 5c e3                                      cmp ip, #0
0063abb4  c1 ff ff 1a                                      bne #0x63aac0
0063abb8  04 c0 94 e5                                      ldr ip, [r4, #4]
0063abbc  08 30 9c e5                                      ldr r3, [ip, #8]
0063abc0  03 00 54 e1                                      cmp r4, r3
0063abc4  01 00 00 0a                                      beq #0x63abd0
0063abc8  bf ff ff ea                                      b #0x63aacc
0063abcc  03 c0 a0 e1                                      mov ip, r3
0063abd0  04 30 9c e5                                      ldr r3, [ip, #4]
0063abd4  08 20 93 e5                                      ldr r2, [r3, #8]
0063abd8  0c 00 52 e1                                      cmp r2, ip
0063abdc  fa ff ff 0a                                      beq #0x63abcc
0063abe0  03 c0 a0 e1                                      mov ip, r3
0063abe4  b8 ff ff ea                                      b #0x63aacc
0063abe8  05 10 a0 e1                                      mov r1, r5
0063abec  06 20 a0 e1                                      mov r2, r6
0063abf0  08 00 8d e2                                      add r0, sp, #8
0063abf4  3c ff ff eb                                      bl #0x63a8ec
0063abf8  08 30 9d e5                                      ldr r3, [sp, #8]
0063abfc  00 30 87 e5                                      str r3, [r7]
0063ac00  e1 ff ff ea                                      b #0x63ab8c
0063ac04  10 20 91 e5                                      ldr r2, [r1, #0x10]
0063ac08  00 00 52 e3                                      cmp r2, #0
0063ac0c  52 00 00 0a                                      beq #0x63ad5c
0063ac10  00 20 93 e5                                      ldr r2, [r3]
0063ac14  10 c0 94 e5                                      ldr ip, [r4, #0x10]
0063ac18  0c 00 52 e1                                      cmp r2, ip
0063ac1c  54 00 00 3a                                      blo #0x63ad74
0063ac20  21 00 00 9a                                      bls #0x63acac
0063ac24  0c e0 94 e5                                      ldr lr, [r4, #0xc]
0063ac28  00 00 5e e3                                      cmp lr, #0
0063ac2c  3c 00 00 0a                                      beq #0x63ad24
0063ac30  0e c0 a0 e1                                      mov ip, lr
0063ac34  00 00 00 ea                                      b #0x63ac3c
0063ac38  03 c0 a0 e1                                      mov ip, r3
0063ac3c  08 30 9c e5                                      ldr r3, [ip, #8]
0063ac40  00 00 53 e3                                      cmp r3, #0
0063ac44  fb ff ff 1a                                      bne #0x63ac38
0063ac48  0c 00 55 e1                                      cmp r5, ip
0063ac4c  5c 00 00 0a                                      beq #0x63adc4
0063ac50  10 30 9c e5                                      ldr r3, [ip, #0x10]
0063ac54  03 00 52 e1                                      cmp r2, r3
0063ac58  4a 00 00 2a                                      bhs #0x63ad88
0063ac5c  00 00 5e e3                                      cmp lr, #0
0063ac60  4f 00 00 0a                                      beq #0x63ada4
0063ac64  00 e0 a0 e3                                      mov lr, #0
0063ac68  05 10 a0 e1                                      mov r1, r5
0063ac6c  0c 20 a0 e1                                      mov r2, ip
0063ac70  06 30 a0 e1                                      mov r3, r6
0063ac74  07 00 a0 e1                                      mov r0, r7
0063ac78  00 50 8d e8                                      stm sp, {ip, lr}
0063ac7c  ce fe ff eb                                      bl #0x63a7bc
0063ac80  c1 ff ff ea                                      b #0x63ab8c
0063ac84  0c 20 94 e5                                      ldr r2, [r4, #0xc]
0063ac88  00 c0 93 e5                                      ldr ip, [r3]
0063ac8c  10 e0 92 e5                                      ldr lr, [r2, #0x10]
0063ac90  0c 00 5e e1                                      cmp lr, ip
0063ac94  06 00 00 2a                                      bhs #0x63acb4
0063ac98  00 c0 a0 e3                                      mov ip, #0
0063ac9c  00 c0 8d e5                                      str ip, [sp]
0063aca0  04 40 8d e5                                      str r4, [sp, #4]
0063aca4  c4 fe ff eb                                      bl #0x63a7bc
0063aca8  b7 ff ff ea                                      b #0x63ab8c
0063acac  00 40 87 e5                                      str r4, [r7]
0063acb0  b5 ff ff ea                                      b #0x63ab8c
0063acb4  03 20 a0 e1                                      mov r2, r3
0063acb8  10 00 8d e2                                      add r0, sp, #0x10
0063acbc  0a ff ff eb                                      bl #0x63a8ec
0063acc0  10 30 9d e5                                      ldr r3, [sp, #0x10]
0063acc4  00 30 87 e5                                      str r3, [r7]
0063acc8  af ff ff ea                                      b #0x63ab8c
0063accc  05 10 a0 e1                                      mov r1, r5
0063acd0  0c 20 a0 e1                                      mov r2, ip
0063acd4  06 30 a0 e1                                      mov r3, r6
0063acd8  07 00 a0 e1                                      mov r0, r7
0063acdc  00 e0 8d e5                                      str lr, [sp]
0063ace0  04 c0 8d e5                                      str ip, [sp, #4]
0063ace4  b4 fe ff eb                                      bl #0x63a7bc
0063ace8  a7 ff ff ea                                      b #0x63ab8c
0063acec  04 30 94 e5                                      ldr r3, [r4, #4]
0063acf0  0c c0 93 e5                                      ldr ip, [r3, #0xc]
0063acf4  0c 00 54 e1                                      cmp r4, ip
0063acf8  04 c0 a0 11                                      movne ip, r4
0063acfc  04 00 00 1a                                      bne #0x63ad14
0063ad00  03 c0 a0 e1                                      mov ip, r3
0063ad04  04 30 93 e5                                      ldr r3, [r3, #4]
0063ad08  0c a0 93 e5                                      ldr sl, [r3, #0xc]
0063ad0c  0a 00 5c e1                                      cmp ip, sl
0063ad10  fa ff ff 0a                                      beq #0x63ad00
0063ad14  0c a0 9c e5                                      ldr sl, [ip, #0xc]
0063ad18  0a 00 53 e1                                      cmp r3, sl
0063ad1c  03 c0 a0 11                                      movne ip, r3
0063ad20  79 ff ff ea                                      b #0x63ab0c
0063ad24  04 30 94 e5                                      ldr r3, [r4, #4]
0063ad28  0c 10 93 e5                                      ldr r1, [r3, #0xc]
0063ad2c  01 00 54 e1                                      cmp r4, r1
0063ad30  04 c0 a0 11                                      movne ip, r4
0063ad34  04 00 00 1a                                      bne #0x63ad4c
0063ad38  03 c0 a0 e1                                      mov ip, r3
0063ad3c  04 30 93 e5                                      ldr r3, [r3, #4]
0063ad40  0c 10 93 e5                                      ldr r1, [r3, #0xc]
0063ad44  0c 00 51 e1                                      cmp r1, ip
0063ad48  fa ff ff 0a                                      beq #0x63ad38
0063ad4c  0c 10 9c e5                                      ldr r1, [ip, #0xc]
0063ad50  01 00 53 e1                                      cmp r3, r1
0063ad54  03 c0 a0 11                                      movne ip, r3
0063ad58  ba ff ff ea                                      b #0x63ac48
0063ad5c  03 20 a0 e1                                      mov r2, r3
0063ad60  20 00 8d e2                                      add r0, sp, #0x20
0063ad64  e0 fe ff eb                                      bl #0x63a8ec
0063ad68  20 30 9d e5                                      ldr r3, [sp, #0x20]
0063ad6c  00 30 87 e5                                      str r3, [r7]
0063ad70  85 ff ff ea                                      b #0x63ab8c
0063ad74  00 c0 a0 e3                                      mov ip, #0
0063ad78  04 20 a0 e1                                      mov r2, r4
0063ad7c  10 10 8d e8                                      stm sp, {r4, ip}
0063ad80  8d fe ff eb                                      bl #0x63a7bc
0063ad84  80 ff ff ea                                      b #0x63ab8c
0063ad88  05 10 a0 e1                                      mov r1, r5
0063ad8c  06 20 a0 e1                                      mov r2, r6
0063ad90  18 00 8d e2                                      add r0, sp, #0x18
0063ad94  d4 fe ff eb                                      bl #0x63a8ec
0063ad98  18 30 9d e5                                      ldr r3, [sp, #0x18]
0063ad9c  00 30 87 e5                                      str r3, [r7]
0063ada0  79 ff ff ea                                      b #0x63ab8c
0063ada4  05 10 a0 e1                                      mov r1, r5
0063ada8  04 20 a0 e1                                      mov r2, r4
0063adac  06 30 a0 e1                                      mov r3, r6
0063adb0  07 00 a0 e1                                      mov r0, r7
0063adb4  00 e0 8d e5                                      str lr, [sp]
0063adb8  04 40 8d e5                                      str r4, [sp, #4]
0063adbc  7e fe ff eb                                      bl #0x63a7bc
0063adc0  71 ff ff ea                                      b #0x63ab8c
0063adc4  00 c0 a0 e3                                      mov ip, #0
0063adc8  05 10 a0 e1                                      mov r1, r5
0063adcc  04 20 a0 e1                                      mov r2, r4
0063add0  06 30 a0 e1                                      mov r3, r6
0063add4  07 00 a0 e1                                      mov r0, r7
0063add8  00 c0 8d e5                                      str ip, [sp]
0063addc  04 40 8d e5                                      str r4, [sp, #4]
0063ade0  75 fe ff eb                                      bl #0x63a7bc
0063ade4  68 ff ff ea                                      b #0x63ab8c

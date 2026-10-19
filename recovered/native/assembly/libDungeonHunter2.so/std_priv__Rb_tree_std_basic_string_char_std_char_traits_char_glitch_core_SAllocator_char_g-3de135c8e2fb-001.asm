; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0056cd28, declared_size=312, range_size=312, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >, std::less<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > >, std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > > >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > > >, glitch::core::SAllocator<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > >, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt4priv8_Rb_treeISbIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS3_6memory13E_MEMORY_HINTE0EEEESt4lessIS9_ESt4pairIKS9_S9_ENS_10_Select1stISE_EENS_11_MapTraitsTISE_EENS5_ISE_LS7_0EEEE9_M_insertEPNS_18_Rb_tree_node_baseERKSE_SM_SM_
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >, std::less<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > >, std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > > >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > > >, glitch::core::SAllocator<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > >, (glitch::memory::E_MEMORY_HINT)0> >::_M_insert(std::priv::_Rb_tree_node_base*, std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > > const&, std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
0056cd28  02 00 51 e1                                      cmp r1, r2
0056cd2c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0056cd30  01 40 a0 e1                                      mov r4, r1
0056cd34  02 50 a0 e1                                      mov r5, r2
0056cd38  00 60 a0 e1                                      mov r6, r0
0056cd3c  03 70 a0 e1                                      mov r7, r3
0056cd40  30 00 00 0a                                      beq #0x56ce08
0056cd44  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
0056cd48  00 00 53 e3                                      cmp r3, #0
0056cd4c  18 00 00 0a                                      beq #0x56cdb4
0056cd50  00 10 a0 e3                                      mov r1, #0
0056cd54  40 00 a0 e3                                      mov r0, #0x40
0056cd58  02 8e f6 eb                                      bl #0x310568
0056cd5c  07 10 a0 e1                                      mov r1, r7
0056cd60  00 80 a0 e1                                      mov r8, r0
0056cd64  10 00 80 e2                                      add r0, r0, #0x10
0056cd68  8f fd ff eb                                      bl #0x56c3ac
0056cd6c  00 30 a0 e3                                      mov r3, #0
0056cd70  0c 30 88 e5                                      str r3, [r8, #0xc]
0056cd74  08 30 88 e5                                      str r3, [r8, #8]
0056cd78  0c 80 85 e5                                      str r8, [r5, #0xc]
0056cd7c  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0056cd80  08 70 a0 e1                                      mov r7, r8
0056cd84  03 00 55 e1                                      cmp r5, r3
0056cd88  1c 00 00 0a                                      beq #0x56ce00
0056cd8c  07 00 a0 e1                                      mov r0, r7
0056cd90  04 50 87 e5                                      str r5, [r7, #4]
0056cd94  04 10 84 e2                                      add r1, r4, #4
0056cd98  70 9a f6 eb                                      bl #0x313760
0056cd9c  10 30 94 e5                                      ldr r3, [r4, #0x10]
0056cda0  06 00 a0 e1                                      mov r0, r6
0056cda4  01 30 83 e2                                      add r3, r3, #1
0056cda8  10 30 84 e5                                      str r3, [r4, #0x10]
0056cdac  00 70 86 e5                                      str r7, [r6]
0056cdb0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0056cdb4  18 30 9d e5                                      ldr r3, [sp, #0x18]
0056cdb8  00 00 53 e3                                      cmp r3, #0
0056cdbc  20 00 00 0a                                      beq #0x56ce44
0056cdc0  00 10 a0 e3                                      mov r1, #0
0056cdc4  40 00 a0 e3                                      mov r0, #0x40
0056cdc8  e6 8d f6 eb                                      bl #0x310568
0056cdcc  07 10 a0 e1                                      mov r1, r7
0056cdd0  00 80 a0 e1                                      mov r8, r0
0056cdd4  10 00 80 e2                                      add r0, r0, #0x10
0056cdd8  73 fd ff eb                                      bl #0x56c3ac
0056cddc  00 30 a0 e3                                      mov r3, #0
0056cde0  0c 30 88 e5                                      str r3, [r8, #0xc]
0056cde4  08 30 88 e5                                      str r3, [r8, #8]
0056cde8  08 80 85 e5                                      str r8, [r5, #8]
0056cdec  08 30 94 e5                                      ldr r3, [r4, #8]
0056cdf0  08 70 a0 e1                                      mov r7, r8
0056cdf4  03 00 55 e1                                      cmp r5, r3
0056cdf8  08 80 84 05                                      streq r8, [r4, #8]
0056cdfc  e2 ff ff ea                                      b #0x56cd8c
0056ce00  0c 70 84 e5                                      str r7, [r4, #0xc]
0056ce04  e0 ff ff ea                                      b #0x56cd8c
0056ce08  00 10 a0 e3                                      mov r1, #0
0056ce0c  40 00 a0 e3                                      mov r0, #0x40
0056ce10  d4 8d f6 eb                                      bl #0x310568
0056ce14  07 10 a0 e1                                      mov r1, r7
0056ce18  00 80 a0 e1                                      mov r8, r0
0056ce1c  10 00 80 e2                                      add r0, r0, #0x10
0056ce20  61 fd ff eb                                      bl #0x56c3ac
0056ce24  00 30 a0 e3                                      mov r3, #0
0056ce28  0c 30 88 e5                                      str r3, [r8, #0xc]
0056ce2c  08 30 88 e5                                      str r3, [r8, #8]
0056ce30  08 70 a0 e1                                      mov r7, r8
0056ce34  08 80 84 e5                                      str r8, [r4, #8]
0056ce38  04 80 84 e5                                      str r8, [r4, #4]
0056ce3c  0c 80 84 e5                                      str r8, [r4, #0xc]
0056ce40  d1 ff ff ea                                      b #0x56cd8c
0056ce44  14 00 81 e2                                      add r0, r1, #0x14
0056ce48  10 20 82 e2                                      add r2, r2, #0x10
0056ce4c  07 10 a0 e1                                      mov r1, r7
0056ce50  28 fd ff eb                                      bl #0x56c2f8
0056ce54  00 00 50 e3                                      cmp r0, #0
0056ce58  bc ff ff 0a                                      beq #0x56cd50
0056ce5c  d7 ff ff ea                                      b #0x56cdc0

; FUNCTION 0x0056d060, declared_size=116, range_size=116, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >, std::less<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > >, std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > > >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > > >, glitch::core::SAllocator<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > >, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt4priv8_Rb_treeISbIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS3_6memory13E_MEMORY_HINTE0EEEESt4lessIS9_ESt4pairIKS9_S9_ENS_10_Select1stISE_EENS_11_MapTraitsTISE_EENS5_ISE_LS7_0EEEE8_M_eraseEPNS_18_Rb_tree_node_baseE
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >, std::less<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > >, std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > > >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > > >, glitch::core::SAllocator<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > >, (glitch::memory::E_MEMORY_HINT)0> >::_M_erase(std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
0056d060  70 40 2d e9                                      push {r4, r5, r6, lr}
0056d064  00 40 51 e2                                      subs r4, r1, #0
0056d068  00 50 a0 e1                                      mov r5, r0
0056d06c  17 00 00 0a                                      beq #0x56d0d0
0056d070  05 00 a0 e1                                      mov r0, r5
0056d074  0c 10 94 e5                                      ldr r1, [r4, #0xc]
0056d078  f8 ff ff eb                                      bl #0x56d060
0056d07c  28 20 84 e2                                      add r2, r4, #0x28
0056d080  14 30 92 e5                                      ldr r3, [r2, #0x14]
0056d084  08 60 94 e5                                      ldr r6, [r4, #8]
0056d088  02 00 53 e1                                      cmp r3, r2
0056d08c  03 00 a0 e1                                      mov r0, r3
0056d090  02 00 00 0a                                      beq #0x56d0a0
0056d094  00 00 53 e3                                      cmp r3, #0
0056d098  00 00 00 0a                                      beq #0x56d0a0
0056d09c  eb 8c f6 eb                                      bl #0x310450
0056d0a0  10 20 84 e2                                      add r2, r4, #0x10
0056d0a4  14 30 92 e5                                      ldr r3, [r2, #0x14]
0056d0a8  02 00 53 e1                                      cmp r3, r2
0056d0ac  03 00 a0 e1                                      mov r0, r3
0056d0b0  02 00 00 0a                                      beq #0x56d0c0
0056d0b4  00 00 53 e3                                      cmp r3, #0
0056d0b8  00 00 00 0a                                      beq #0x56d0c0
0056d0bc  e3 8c f6 eb                                      bl #0x310450
0056d0c0  04 00 a0 e1                                      mov r0, r4
0056d0c4  e1 8c f6 eb                                      bl #0x310450
0056d0c8  00 40 56 e2                                      subs r4, r6, #0
0056d0cc  e7 ff ff 1a                                      bne #0x56d070
0056d0d0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0056d930, declared_size=536, range_size=536, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >, std::less<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > >, std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > > >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > > >, glitch::core::SAllocator<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > >, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt4priv8_Rb_treeISbIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS3_6memory13E_MEMORY_HINTE0EEEESt4lessIS9_ESt4pairIKS9_S9_ENS_10_Select1stISE_EENS_11_MapTraitsTISE_EENS5_ISE_LS7_0EEEE13insert_uniqueERKSE_
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >, std::less<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > >, std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > > >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > > >, glitch::core::SAllocator<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > >, (glitch::memory::E_MEMORY_HINT)0> >::insert_unique(std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > > const&)
; decoder-mode: arm
0056d930  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0056d934  04 50 91 e5                                      ldr r5, [r1, #4]
0056d938  14 d0 4d e2                                      sub sp, sp, #0x14
0056d93c  01 90 a0 e1                                      mov sb, r1
0056d940  00 00 55 e3                                      cmp r5, #0
0056d944  00 40 a0 e1                                      mov r4, r0
0056d948  02 80 a0 e1                                      mov r8, r2
0056d94c  38 00 00 0a                                      beq #0x56da34
0056d950  14 70 92 e5                                      ldr r7, [r2, #0x14]
0056d954  10 b0 92 e5                                      ldr fp, [r2, #0x10]
0056d958  0b a0 67 e0                                      rsb sl, r7, fp
0056d95c  04 00 00 ea                                      b #0x56d974
0056d960  08 30 95 e5                                      ldr r3, [r5, #8]
0056d964  01 10 a0 e3                                      mov r1, #1
0056d968  00 00 53 e3                                      cmp r3, #0
0056d96c  16 00 00 0a                                      beq #0x56d9cc
0056d970  03 50 a0 e1                                      mov r5, r3
0056d974  24 30 95 e5                                      ldr r3, [r5, #0x24]
0056d978  20 60 95 e5                                      ldr r6, [r5, #0x20]
0056d97c  07 00 a0 e1                                      mov r0, r7
0056d980  03 10 a0 e1                                      mov r1, r3
0056d984  06 60 63 e0                                      rsb r6, r3, r6
0056d988  0a 00 56 e1                                      cmp r6, sl
0056d98c  06 20 a0 b1                                      movlt r2, r6
0056d990  0a 20 a0 a1                                      movge r2, sl
0056d994  11 83 f6 eb                                      bl #0x30e5e0
0056d998  00 00 50 e3                                      cmp r0, #0
0056d99c  05 20 a0 e1                                      mov r2, r5
0056d9a0  03 00 00 1a                                      bne #0x56d9b4
0056d9a4  06 00 5a e1                                      cmp sl, r6
0056d9a8  ec ff ff ba                                      blt #0x56d960
0056d9ac  00 00 a0 d3                                      movle r0, #0
0056d9b0  01 00 a0 c3                                      movgt r0, #1
0056d9b4  00 00 50 e3                                      cmp r0, #0
0056d9b8  e8 ff ff ba                                      blt #0x56d960
0056d9bc  0c 30 95 e5                                      ldr r3, [r5, #0xc]
0056d9c0  00 10 a0 e3                                      mov r1, #0
0056d9c4  00 00 53 e3                                      cmp r3, #0
0056d9c8  e8 ff ff 1a                                      bne #0x56d970
0056d9cc  00 00 51 e3                                      cmp r1, #0
0056d9d0  05 a0 a0 01                                      moveq sl, r5
0056d9d4  17 00 00 1a                                      bne #0x56da38
0056d9d8  24 00 92 e5                                      ldr r0, [r2, #0x24]
0056d9dc  20 60 92 e5                                      ldr r6, [r2, #0x20]
0056d9e0  0b b0 67 e0                                      rsb fp, r7, fp
0056d9e4  07 10 a0 e1                                      mov r1, r7
0056d9e8  06 60 60 e0                                      rsb r6, r0, r6
0056d9ec  06 00 5b e1                                      cmp fp, r6
0056d9f0  0b 20 a0 b1                                      movlt r2, fp
0056d9f4  06 20 a0 a1                                      movge r2, r6
0056d9f8  f8 82 f6 eb                                      bl #0x30e5e0
0056d9fc  00 00 50 e3                                      cmp r0, #0
0056da00  03 00 00 1a                                      bne #0x56da14
0056da04  0b 00 56 e1                                      cmp r6, fp
0056da08  20 00 00 ba                                      blt #0x56da90
0056da0c  00 00 a0 d3                                      movle r0, #0
0056da10  01 00 a0 c3                                      movgt r0, #1
0056da14  00 00 50 e3                                      cmp r0, #0
0056da18  00 30 a0 a3                                      movge r3, #0
0056da1c  00 a0 84 a5                                      strge sl, [r4]
0056da20  04 30 c4 a5                                      strbge r3, [r4, #4]
0056da24  19 00 00 ba                                      blt #0x56da90
0056da28  04 00 a0 e1                                      mov r0, r4
0056da2c  14 d0 8d e2                                      add sp, sp, #0x14
0056da30  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0056da34  01 50 a0 e1                                      mov r5, r1
0056da38  08 30 99 e5                                      ldr r3, [sb, #8]
0056da3c  03 00 55 e1                                      cmp r5, r3
0056da40  32 00 00 0a                                      beq #0x56db10
0056da44  00 30 d5 e5                                      ldrb r3, [r5]
0056da48  00 00 53 e3                                      cmp r3, #0
0056da4c  03 00 00 1a                                      bne #0x56da60
0056da50  04 30 95 e5                                      ldr r3, [r5, #4]
0056da54  04 30 93 e5                                      ldr r3, [r3, #4]
0056da58  03 00 55 e1                                      cmp r5, r3
0056da5c  26 00 00 0a                                      beq #0x56dafc
0056da60  08 20 95 e5                                      ldr r2, [r5, #8]
0056da64  00 00 52 e3                                      cmp r2, #0
0056da68  01 00 00 1a                                      bne #0x56da74
0056da6c  14 00 00 ea                                      b #0x56dac4
0056da70  03 20 a0 e1                                      mov r2, r3
0056da74  0c 30 92 e5                                      ldr r3, [r2, #0xc]
0056da78  00 00 53 e3                                      cmp r3, #0
0056da7c  fb ff ff 1a                                      bne #0x56da70
0056da80  02 a0 a0 e1                                      mov sl, r2
0056da84  14 70 98 e5                                      ldr r7, [r8, #0x14]
0056da88  10 b0 98 e5                                      ldr fp, [r8, #0x10]
0056da8c  d1 ff ff ea                                      b #0x56d9d8
0056da90  00 c0 a0 e3                                      mov ip, #0
0056da94  05 20 a0 e1                                      mov r2, r5
0056da98  08 30 a0 e1                                      mov r3, r8
0056da9c  09 10 a0 e1                                      mov r1, sb
0056daa0  08 00 8d e2                                      add r0, sp, #8
0056daa4  04 c0 8d e5                                      str ip, [sp, #4]
0056daa8  00 c0 8d e5                                      str ip, [sp]
0056daac  9d fc ff eb                                      bl #0x56cd28
0056dab0  08 30 9d e5                                      ldr r3, [sp, #8]
0056dab4  01 20 a0 e3                                      mov r2, #1
0056dab8  04 20 c4 e5                                      strb r2, [r4, #4]
0056dabc  00 30 84 e5                                      str r3, [r4]
0056dac0  d8 ff ff ea                                      b #0x56da28
0056dac4  04 30 95 e5                                      ldr r3, [r5, #4]
0056dac8  08 20 93 e5                                      ldr r2, [r3, #8]
0056dacc  02 00 55 e1                                      cmp r5, r2
0056dad0  01 00 00 0a                                      beq #0x56dadc
0056dad4  19 00 00 ea                                      b #0x56db40
0056dad8  02 30 a0 e1                                      mov r3, r2
0056dadc  04 20 93 e5                                      ldr r2, [r3, #4]
0056dae0  08 10 92 e5                                      ldr r1, [r2, #8]
0056dae4  03 00 51 e1                                      cmp r1, r3
0056dae8  fa ff ff 0a                                      beq #0x56dad8
0056daec  14 70 98 e5                                      ldr r7, [r8, #0x14]
0056daf0  10 b0 98 e5                                      ldr fp, [r8, #0x10]
0056daf4  02 a0 a0 e1                                      mov sl, r2
0056daf8  b6 ff ff ea                                      b #0x56d9d8
0056dafc  0c 20 95 e5                                      ldr r2, [r5, #0xc]
0056db00  14 70 98 e5                                      ldr r7, [r8, #0x14]
0056db04  10 b0 98 e5                                      ldr fp, [r8, #0x10]
0056db08  02 a0 a0 e1                                      mov sl, r2
0056db0c  b1 ff ff ea                                      b #0x56d9d8
0056db10  05 20 a0 e1                                      mov r2, r5
0056db14  08 30 a0 e1                                      mov r3, r8
0056db18  00 c0 a0 e3                                      mov ip, #0
0056db1c  09 10 a0 e1                                      mov r1, sb
0056db20  0c 00 8d e2                                      add r0, sp, #0xc
0056db24  20 10 8d e8                                      stm sp, {r5, ip}
0056db28  7e fc ff eb                                      bl #0x56cd28
0056db2c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0056db30  01 20 a0 e3                                      mov r2, #1
0056db34  04 20 c4 e5                                      strb r2, [r4, #4]
0056db38  00 30 84 e5                                      str r3, [r4]
0056db3c  b9 ff ff ea                                      b #0x56da28
0056db40  03 20 a0 e1                                      mov r2, r3
0056db44  cd ff ff ea                                      b #0x56da80

; FUNCTION 0x0056e1d8, declared_size=1284, range_size=1284, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >, std::less<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > >, std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > > >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > > >, glitch::core::SAllocator<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > >, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt4priv8_Rb_treeISbIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS3_6memory13E_MEMORY_HINTE0EEEESt4lessIS9_ESt4pairIKS9_S9_ENS_10_Select1stISE_EENS_11_MapTraitsTISE_EENS5_ISE_LS7_0EEEE13insert_uniqueENS_17_Rb_tree_iteratorISE_SI_EERKSE_
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >, std::less<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > >, std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > > >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > > >, glitch::core::SAllocator<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > >, (glitch::memory::E_MEMORY_HINT)0> >::insert_unique(std::priv::_Rb_tree_iterator<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > > > >, std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > > const&)
; decoder-mode: arm
0056e1d8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0056e1dc  44 d0 4d e2                                      sub sp, sp, #0x44
0056e1e0  14 20 8d e5                                      str r2, [sp, #0x14]
0056e1e4  00 50 92 e5                                      ldr r5, [r2]
0056e1e8  08 20 91 e5                                      ldr r2, [r1, #8]
0056e1ec  01 60 a0 e1                                      mov r6, r1
0056e1f0  00 70 a0 e1                                      mov r7, r0
0056e1f4  02 00 55 e1                                      cmp r5, r2
0056e1f8  03 80 a0 e1                                      mov r8, r3
0056e1fc  7c 00 00 0a                                      beq #0x56e3f4
0056e200  01 00 55 e1                                      cmp r5, r1
0056e204  d0 00 00 0a                                      beq #0x56e54c
0056e208  00 30 d5 e5                                      ldrb r3, [r5]
0056e20c  00 00 53 e3                                      cmp r3, #0
0056e210  35 00 00 0a                                      beq #0x56e2ec
0056e214  08 40 95 e5                                      ldr r4, [r5, #8]
0056e218  00 00 54 e3                                      cmp r4, #0
0056e21c  01 00 00 1a                                      bne #0x56e228
0056e220  39 00 00 ea                                      b #0x56e30c
0056e224  03 40 a0 e1                                      mov r4, r3
0056e228  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0056e22c  00 00 53 e3                                      cmp r3, #0
0056e230  fb ff ff 1a                                      bne #0x56e224
0056e234  24 30 95 e5                                      ldr r3, [r5, #0x24]
0056e238  14 90 98 e5                                      ldr sb, [r8, #0x14]
0056e23c  10 b0 98 e5                                      ldr fp, [r8, #0x10]
0056e240  20 20 95 e5                                      ldr r2, [r5, #0x20]
0056e244  03 10 a0 e1                                      mov r1, r3
0056e248  0b b0 69 e0                                      rsb fp, sb, fp
0056e24c  02 20 63 e0                                      rsb r2, r3, r2
0056e250  18 20 8d e5                                      str r2, [sp, #0x18]
0056e254  09 00 a0 e1                                      mov r0, sb
0056e258  0b 00 52 e1                                      cmp r2, fp
0056e25c  0b 20 a0 a1                                      movge r2, fp
0056e260  0c 30 8d e5                                      str r3, [sp, #0xc]
0056e264  1c 20 8d e5                                      str r2, [sp, #0x1c]
0056e268  dc 80 f6 eb                                      bl #0x30e5e0
0056e26c  00 00 50 e3                                      cmp r0, #0
0056e270  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0056e274  05 00 00 1a                                      bne #0x56e290
0056e278  18 20 9d e5                                      ldr r2, [sp, #0x18]
0056e27c  02 00 5b e1                                      cmp fp, r2
0056e280  00 00 e0 b3                                      mvnlt r0, #0
0056e284  01 00 00 ba                                      blt #0x56e290
0056e288  00 00 a0 d3                                      movle r0, #0
0056e28c  01 00 a0 c3                                      movgt r0, #1
0056e290  a0 cf b0 e1                                      lsrs ip, r0, #0x1f
0056e294  28 00 00 1a                                      bne #0x56e33c
0056e298  0c 40 95 e5                                      ldr r4, [r5, #0xc]
0056e29c  00 00 54 e3                                      cmp r4, #0
0056e2a0  01 00 00 1a                                      bne #0x56e2ac
0056e2a4  cc 00 00 ea                                      b #0x56e5dc
0056e2a8  02 40 a0 e1                                      mov r4, r2
0056e2ac  08 20 94 e5                                      ldr r2, [r4, #8]
0056e2b0  00 00 52 e3                                      cmp r2, #0
0056e2b4  fb ff ff 1a                                      bne #0x56e2a8
0056e2b8  00 00 5c e3                                      cmp ip, #0
0056e2bc  43 00 00 1a                                      bne #0x56e3d0
0056e2c0  03 00 a0 e1                                      mov r0, r3
0056e2c4  09 10 a0 e1                                      mov r1, sb
0056e2c8  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0056e2cc  c3 80 f6 eb                                      bl #0x30e5e0
0056e2d0  00 00 50 e3                                      cmp r0, #0
0056e2d4  34 00 00 1a                                      bne #0x56e3ac
0056e2d8  18 30 9d e5                                      ldr r3, [sp, #0x18]
0056e2dc  03 00 5b e1                                      cmp fp, r3
0056e2e0  32 00 00 ca                                      bgt #0x56e3b0
0056e2e4  00 50 87 e5                                      str r5, [r7]
0056e2e8  3e 00 00 ea                                      b #0x56e3e8
0056e2ec  04 30 95 e5                                      ldr r3, [r5, #4]
0056e2f0  04 30 93 e5                                      ldr r3, [r3, #4]
0056e2f4  03 00 55 e1                                      cmp r5, r3
0056e2f8  0c 40 95 05                                      ldreq r4, [r5, #0xc]
0056e2fc  cc ff ff 0a                                      beq #0x56e234
0056e300  08 40 95 e5                                      ldr r4, [r5, #8]
0056e304  00 00 54 e3                                      cmp r4, #0
0056e308  c6 ff ff 1a                                      bne #0x56e228
0056e30c  04 40 95 e5                                      ldr r4, [r5, #4]
0056e310  08 30 94 e5                                      ldr r3, [r4, #8]
0056e314  03 00 55 e1                                      cmp r5, r3
0056e318  01 00 00 0a                                      beq #0x56e324
0056e31c  c4 ff ff ea                                      b #0x56e234
0056e320  03 40 a0 e1                                      mov r4, r3
0056e324  04 30 94 e5                                      ldr r3, [r4, #4]
0056e328  08 20 93 e5                                      ldr r2, [r3, #8]
0056e32c  04 00 52 e1                                      cmp r2, r4
0056e330  fa ff ff 0a                                      beq #0x56e320
0056e334  03 40 a0 e1                                      mov r4, r3
0056e338  bd ff ff ea                                      b #0x56e234
0056e33c  24 20 94 e5                                      ldr r2, [r4, #0x24]
0056e340  20 a0 94 e5                                      ldr sl, [r4, #0x20]
0056e344  09 10 a0 e1                                      mov r1, sb
0056e348  02 00 a0 e1                                      mov r0, r2
0056e34c  0a a0 62 e0                                      rsb sl, r2, sl
0056e350  0a 00 5b e1                                      cmp fp, sl
0056e354  0b 20 a0 b1                                      movlt r2, fp
0056e358  0a 20 a0 a1                                      movge r2, sl
0056e35c  0c 30 8d e5                                      str r3, [sp, #0xc]
0056e360  10 c0 8d e5                                      str ip, [sp, #0x10]
0056e364  9d 80 f6 eb                                      bl #0x30e5e0
0056e368  00 00 50 e3                                      cmp r0, #0
0056e36c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0056e370  10 c0 9d e5                                      ldr ip, [sp, #0x10]
0056e374  6f 00 00 1a                                      bne #0x56e538
0056e378  0a 00 5b e1                                      cmp fp, sl
0056e37c  c5 ff ff da                                      ble #0x56e298
0056e380  0c c0 94 e5                                      ldr ip, [r4, #0xc]
0056e384  00 00 5c e3                                      cmp ip, #0
0056e388  62 00 00 0a                                      beq #0x56e518
0056e38c  00 c0 a0 e3                                      mov ip, #0
0056e390  06 10 a0 e1                                      mov r1, r6
0056e394  05 20 a0 e1                                      mov r2, r5
0056e398  08 30 a0 e1                                      mov r3, r8
0056e39c  07 00 a0 e1                                      mov r0, r7
0056e3a0  20 10 8d e8                                      stm sp, {r5, ip}
0056e3a4  5f fa ff eb                                      bl #0x56cd28
0056e3a8  0e 00 00 ea                                      b #0x56e3e8
0056e3ac  cc ff ff aa                                      bge #0x56e2e4
0056e3b0  04 00 56 e1                                      cmp r6, r4
0056e3b4  9b 00 00 0a                                      beq #0x56e628
0056e3b8  14 00 86 e2                                      add r0, r6, #0x14
0056e3bc  08 10 a0 e1                                      mov r1, r8
0056e3c0  10 20 84 e2                                      add r2, r4, #0x10
0056e3c4  cb f7 ff eb                                      bl #0x56c2f8
0056e3c8  00 00 50 e3                                      cmp r0, #0
0056e3cc  93 00 00 1a                                      bne #0x56e620
0056e3d0  06 10 a0 e1                                      mov r1, r6
0056e3d4  08 20 a0 e1                                      mov r2, r8
0056e3d8  20 00 8d e2                                      add r0, sp, #0x20
0056e3dc  53 fd ff eb                                      bl #0x56d930
0056e3e0  20 30 9d e5                                      ldr r3, [sp, #0x20]
0056e3e4  00 30 87 e5                                      str r3, [r7]
0056e3e8  07 00 a0 e1                                      mov r0, r7
0056e3ec  44 d0 8d e2                                      add sp, sp, #0x44
0056e3f0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0056e3f4  10 30 91 e5                                      ldr r3, [r1, #0x10]
0056e3f8  00 00 53 e3                                      cmp r3, #0
0056e3fc  9f 00 00 0a                                      beq #0x56e680
0056e400  14 30 98 e5                                      ldr r3, [r8, #0x14]
0056e404  24 10 95 e5                                      ldr r1, [r5, #0x24]
0056e408  10 40 98 e5                                      ldr r4, [r8, #0x10]
0056e40c  20 a0 95 e5                                      ldr sl, [r5, #0x20]
0056e410  03 00 a0 e1                                      mov r0, r3
0056e414  04 40 63 e0                                      rsb r4, r3, r4
0056e418  0a a0 61 e0                                      rsb sl, r1, sl
0056e41c  04 00 5a e1                                      cmp sl, r4
0056e420  0a 20 a0 b1                                      movlt r2, sl
0056e424  04 20 a0 a1                                      movge r2, r4
0056e428  6c 80 f6 eb                                      bl #0x30e5e0
0056e42c  00 00 50 e3                                      cmp r0, #0
0056e430  03 00 00 1a                                      bne #0x56e444
0056e434  0a 00 54 e1                                      cmp r4, sl
0056e438  d3 ff ff ba                                      blt #0x56e38c
0056e43c  00 00 a0 d3                                      movle r0, #0
0056e440  01 00 a0 c3                                      movgt r0, #1
0056e444  00 00 50 e3                                      cmp r0, #0
0056e448  cf ff ff ba                                      blt #0x56e38c
0056e44c  14 a0 86 e2                                      add sl, r6, #0x14
0056e450  10 10 85 e2                                      add r1, r5, #0x10
0056e454  0a 00 a0 e1                                      mov r0, sl
0056e458  08 20 a0 e1                                      mov r2, r8
0056e45c  a5 f7 ff eb                                      bl #0x56c2f8
0056e460  00 00 50 e3                                      cmp r0, #0
0056e464  81 00 00 0a                                      beq #0x56e670
0056e468  14 30 9d e5                                      ldr r3, [sp, #0x14]
0056e46c  00 c0 93 e5                                      ldr ip, [r3]
0056e470  0c 40 9c e5                                      ldr r4, [ip, #0xc]
0056e474  00 00 54 e3                                      cmp r4, #0
0056e478  22 00 00 1a                                      bne #0x56e508
0056e47c  04 30 9c e5                                      ldr r3, [ip, #4]
0056e480  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0056e484  02 00 5c e1                                      cmp ip, r2
0056e488  0c 40 a0 11                                      movne r4, ip
0056e48c  04 00 00 1a                                      bne #0x56e4a4
0056e490  03 40 a0 e1                                      mov r4, r3
0056e494  04 30 93 e5                                      ldr r3, [r3, #4]
0056e498  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0056e49c  04 00 52 e1                                      cmp r2, r4
0056e4a0  fa ff ff 0a                                      beq #0x56e490
0056e4a4  0c 20 94 e5                                      ldr r2, [r4, #0xc]
0056e4a8  02 00 53 e1                                      cmp r3, r2
0056e4ac  03 40 a0 11                                      movne r4, r3
0056e4b0  04 00 56 e1                                      cmp r6, r4
0056e4b4  7f 00 00 0a                                      beq #0x56e6b8
0056e4b8  0a 00 a0 e1                                      mov r0, sl
0056e4bc  08 10 a0 e1                                      mov r1, r8
0056e4c0  10 20 84 e2                                      add r2, r4, #0x10
0056e4c4  8b f7 ff eb                                      bl #0x56c2f8
0056e4c8  00 00 50 e3                                      cmp r0, #0
0056e4cc  60 00 00 0a                                      beq #0x56e654
0056e4d0  14 20 9d e5                                      ldr r2, [sp, #0x14]
0056e4d4  00 c0 92 e5                                      ldr ip, [r2]
0056e4d8  0c e0 9c e5                                      ldr lr, [ip, #0xc]
0056e4dc  00 00 5e e3                                      cmp lr, #0
0056e4e0  6c 00 00 0a                                      beq #0x56e698
0056e4e4  00 c0 a0 e3                                      mov ip, #0
0056e4e8  06 10 a0 e1                                      mov r1, r6
0056e4ec  04 20 a0 e1                                      mov r2, r4
0056e4f0  08 30 a0 e1                                      mov r3, r8
0056e4f4  07 00 a0 e1                                      mov r0, r7
0056e4f8  10 10 8d e8                                      stm sp, {r4, ip}
0056e4fc  09 fa ff eb                                      bl #0x56cd28
0056e500  b8 ff ff ea                                      b #0x56e3e8
0056e504  03 40 a0 e1                                      mov r4, r3
0056e508  08 30 94 e5                                      ldr r3, [r4, #8]
0056e50c  00 00 53 e3                                      cmp r3, #0
0056e510  fb ff ff 1a                                      bne #0x56e504
0056e514  e5 ff ff ea                                      b #0x56e4b0
0056e518  06 10 a0 e1                                      mov r1, r6
0056e51c  04 20 a0 e1                                      mov r2, r4
0056e520  08 30 a0 e1                                      mov r3, r8
0056e524  07 00 a0 e1                                      mov r0, r7
0056e528  00 c0 8d e5                                      str ip, [sp]
0056e52c  04 40 8d e5                                      str r4, [sp, #4]
0056e530  fc f9 ff eb                                      bl #0x56cd28
0056e534  ab ff ff ea                                      b #0x56e3e8
0056e538  56 ff ff aa                                      bge #0x56e298
0056e53c  0c c0 94 e5                                      ldr ip, [r4, #0xc]
0056e540  00 00 5c e3                                      cmp ip, #0
0056e544  90 ff ff 1a                                      bne #0x56e38c
0056e548  f2 ff ff ea                                      b #0x56e518
0056e54c  0c 40 95 e5                                      ldr r4, [r5, #0xc]
0056e550  14 10 93 e5                                      ldr r1, [r3, #0x14]
0056e554  10 90 93 e5                                      ldr sb, [r3, #0x10]
0056e558  20 a0 94 e5                                      ldr sl, [r4, #0x20]
0056e55c  24 30 94 e5                                      ldr r3, [r4, #0x24]
0056e560  09 90 61 e0                                      rsb sb, r1, sb
0056e564  0a a0 63 e0                                      rsb sl, r3, sl
0056e568  0a 00 59 e1                                      cmp sb, sl
0056e56c  09 20 a0 b1                                      movlt r2, sb
0056e570  0a 20 a0 a1                                      movge r2, sl
0056e574  03 00 a0 e1                                      mov r0, r3
0056e578  18 80 f6 eb                                      bl #0x30e5e0
0056e57c  00 00 50 e3                                      cmp r0, #0
0056e580  03 00 00 1a                                      bne #0x56e594
0056e584  09 00 5a e1                                      cmp sl, sb
0056e588  03 00 00 ba                                      blt #0x56e59c
0056e58c  00 00 a0 d3                                      movle r0, #0
0056e590  01 00 a0 c3                                      movgt r0, #1
0056e594  00 00 50 e3                                      cmp r0, #0
0056e598  08 00 00 aa                                      bge #0x56e5c0
0056e59c  00 c0 a0 e3                                      mov ip, #0
0056e5a0  06 10 a0 e1                                      mov r1, r6
0056e5a4  04 20 a0 e1                                      mov r2, r4
0056e5a8  08 30 a0 e1                                      mov r3, r8
0056e5ac  07 00 a0 e1                                      mov r0, r7
0056e5b0  00 c0 8d e5                                      str ip, [sp]
0056e5b4  04 50 8d e5                                      str r5, [sp, #4]
0056e5b8  da f9 ff eb                                      bl #0x56cd28
0056e5bc  89 ff ff ea                                      b #0x56e3e8
0056e5c0  06 10 a0 e1                                      mov r1, r6
0056e5c4  08 20 a0 e1                                      mov r2, r8
0056e5c8  28 00 8d e2                                      add r0, sp, #0x28
0056e5cc  d7 fc ff eb                                      bl #0x56d930
0056e5d0  28 30 9d e5                                      ldr r3, [sp, #0x28]
0056e5d4  00 30 87 e5                                      str r3, [r7]
0056e5d8  82 ff ff ea                                      b #0x56e3e8
0056e5dc  04 20 95 e5                                      ldr r2, [r5, #4]
0056e5e0  0c 10 92 e5                                      ldr r1, [r2, #0xc]
0056e5e4  01 00 55 e1                                      cmp r5, r1
0056e5e8  05 40 a0 11                                      movne r4, r5
0056e5ec  04 00 00 0a                                      beq #0x56e604
0056e5f0  0c 10 94 e5                                      ldr r1, [r4, #0xc]
0056e5f4  01 00 52 e1                                      cmp r2, r1
0056e5f8  02 40 a0 11                                      movne r4, r2
0056e5fc  2d ff ff ea                                      b #0x56e2b8
0056e600  01 20 a0 e1                                      mov r2, r1
0056e604  04 10 92 e5                                      ldr r1, [r2, #4]
0056e608  0c 00 91 e5                                      ldr r0, [r1, #0xc]
0056e60c  02 00 50 e1                                      cmp r0, r2
0056e610  fa ff ff 0a                                      beq #0x56e600
0056e614  02 40 a0 e1                                      mov r4, r2
0056e618  01 20 a0 e1                                      mov r2, r1
0056e61c  f3 ff ff ea                                      b #0x56e5f0
0056e620  14 20 9d e5                                      ldr r2, [sp, #0x14]
0056e624  00 50 92 e5                                      ldr r5, [r2]
0056e628  0c c0 95 e5                                      ldr ip, [r5, #0xc]
0056e62c  00 00 5c e3                                      cmp ip, #0
0056e630  ab ff ff 1a                                      bne #0x56e4e4
0056e634  06 10 a0 e1                                      mov r1, r6
0056e638  05 20 a0 e1                                      mov r2, r5
0056e63c  08 30 a0 e1                                      mov r3, r8
0056e640  07 00 a0 e1                                      mov r0, r7
0056e644  00 c0 8d e5                                      str ip, [sp]
0056e648  04 50 8d e5                                      str r5, [sp, #4]
0056e64c  b5 f9 ff eb                                      bl #0x56cd28
0056e650  64 ff ff ea                                      b #0x56e3e8
0056e654  06 10 a0 e1                                      mov r1, r6
0056e658  08 20 a0 e1                                      mov r2, r8
0056e65c  30 00 8d e2                                      add r0, sp, #0x30
0056e660  b2 fc ff eb                                      bl #0x56d930
0056e664  30 30 9d e5                                      ldr r3, [sp, #0x30]
0056e668  00 30 87 e5                                      str r3, [r7]
0056e66c  5d ff ff ea                                      b #0x56e3e8
0056e670  14 20 9d e5                                      ldr r2, [sp, #0x14]
0056e674  00 30 92 e5                                      ldr r3, [r2]
0056e678  00 30 87 e5                                      str r3, [r7]
0056e67c  59 ff ff ea                                      b #0x56e3e8
0056e680  08 20 a0 e1                                      mov r2, r8
0056e684  38 00 8d e2                                      add r0, sp, #0x38
0056e688  a8 fc ff eb                                      bl #0x56d930
0056e68c  38 30 9d e5                                      ldr r3, [sp, #0x38]
0056e690  00 30 87 e5                                      str r3, [r7]
0056e694  53 ff ff ea                                      b #0x56e3e8
0056e698  06 10 a0 e1                                      mov r1, r6
0056e69c  0c 20 a0 e1                                      mov r2, ip
0056e6a0  08 30 a0 e1                                      mov r3, r8
0056e6a4  07 00 a0 e1                                      mov r0, r7
0056e6a8  00 e0 8d e5                                      str lr, [sp]
0056e6ac  04 c0 8d e5                                      str ip, [sp, #4]
0056e6b0  9c f9 ff eb                                      bl #0x56cd28
0056e6b4  4b ff ff ea                                      b #0x56e3e8
0056e6b8  00 e0 a0 e3                                      mov lr, #0
0056e6bc  06 10 a0 e1                                      mov r1, r6
0056e6c0  0c 20 a0 e1                                      mov r2, ip
0056e6c4  08 30 a0 e1                                      mov r3, r8
0056e6c8  07 00 a0 e1                                      mov r0, r7
0056e6cc  00 e0 8d e5                                      str lr, [sp]
0056e6d0  04 c0 8d e5                                      str ip, [sp, #4]
0056e6d4  93 f9 ff eb                                      bl #0x56cd28
0056e6d8  42 ff ff ea                                      b #0x56e3e8

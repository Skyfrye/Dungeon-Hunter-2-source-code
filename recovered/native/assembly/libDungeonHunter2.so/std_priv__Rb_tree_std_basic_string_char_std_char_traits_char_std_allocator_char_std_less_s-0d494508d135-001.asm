; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0038d144, declared_size=72, range_size=72, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, ObjectSearcher::BackupObjectList>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, ObjectSearcher::BackupObjectList> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, ObjectSearcher::BackupObjectList> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, ObjectSearcher::BackupObjectList> > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsN14ObjectSearcher16BackupObjectListEENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE8_M_eraseEPNS_18_Rb_tree_node_baseE
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, ObjectSearcher::BackupObjectList>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, ObjectSearcher::BackupObjectList> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, ObjectSearcher::BackupObjectList> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, ObjectSearcher::BackupObjectList> > >::_M_erase(std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
0038d144  70 40 2d e9                                      push {r4, r5, r6, lr}
0038d148  00 40 51 e2                                      subs r4, r1, #0
0038d14c  00 60 a0 e1                                      mov r6, r0
0038d150  0c 00 00 0a                                      beq #0x38d188
0038d154  0c 10 94 e5                                      ldr r1, [r4, #0xc]
0038d158  06 00 a0 e1                                      mov r0, r6
0038d15c  f8 ff ff eb                                      bl #0x38d144
0038d160  08 50 94 e5                                      ldr r5, [r4, #8]
0038d164  28 00 84 e2                                      add r0, r4, #0x28
0038d168  e4 fd ff eb                                      bl #0x38c900
0038d16c  10 00 84 e2                                      add r0, r4, #0x10
0038d170  37 2c fe eb                                      bl #0x318254
0038d174  04 00 a0 e1                                      mov r0, r4
0038d178  40 10 a0 e3                                      mov r1, #0x40
0038d17c  5f ef 0d eb                                      bl #0x708f00
0038d180  00 40 55 e2                                      subs r4, r5, #0
0038d184  f2 ff ff 1a                                      bne #0x38d154
0038d188  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0038ec1c, declared_size=300, range_size=300, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, ObjectSearcher::BackupObjectList>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, ObjectSearcher::BackupObjectList> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, ObjectSearcher::BackupObjectList> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, ObjectSearcher::BackupObjectList> > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsN14ObjectSearcher16BackupObjectListEENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE9_M_insertEPNS_18_Rb_tree_node_baseERKS7_SF_SF_
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, ObjectSearcher::BackupObjectList>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, ObjectSearcher::BackupObjectList> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, ObjectSearcher::BackupObjectList> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, ObjectSearcher::BackupObjectList> > >::_M_insert(std::priv::_Rb_tree_node_base*, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, ObjectSearcher::BackupObjectList> const&, std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
0038ec1c  02 00 51 e1                                      cmp r1, r2
0038ec20  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0038ec24  01 40 a0 e1                                      mov r4, r1
0038ec28  02 50 a0 e1                                      mov r5, r2
0038ec2c  00 60 a0 e1                                      mov r6, r0
0038ec30  03 70 a0 e1                                      mov r7, r3
0038ec34  2e 00 00 0a                                      beq #0x38ecf4
0038ec38  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
0038ec3c  00 00 53 e3                                      cmp r3, #0
0038ec40  17 00 00 0a                                      beq #0x38eca4
0038ec44  04 00 a0 e1                                      mov r0, r4
0038ec48  eb ff ff eb                                      bl #0x38ebfc
0038ec4c  07 10 a0 e1                                      mov r1, r7
0038ec50  00 80 a0 e1                                      mov r8, r0
0038ec54  10 00 80 e2                                      add r0, r0, #0x10
0038ec58  1b ff ff eb                                      bl #0x38e8cc
0038ec5c  00 30 a0 e3                                      mov r3, #0
0038ec60  0c 30 88 e5                                      str r3, [r8, #0xc]
0038ec64  08 30 88 e5                                      str r3, [r8, #8]
0038ec68  0c 80 85 e5                                      str r8, [r5, #0xc]
0038ec6c  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0038ec70  08 70 a0 e1                                      mov r7, r8
0038ec74  03 00 55 e1                                      cmp r5, r3
0038ec78  1b 00 00 0a                                      beq #0x38ecec
0038ec7c  07 00 a0 e1                                      mov r0, r7
0038ec80  04 50 87 e5                                      str r5, [r7, #4]
0038ec84  04 10 84 e2                                      add r1, r4, #4
0038ec88  b4 12 fe eb                                      bl #0x313760
0038ec8c  10 30 94 e5                                      ldr r3, [r4, #0x10]
0038ec90  06 00 a0 e1                                      mov r0, r6
0038ec94  01 30 83 e2                                      add r3, r3, #1
0038ec98  10 30 84 e5                                      str r3, [r4, #0x10]
0038ec9c  00 70 86 e5                                      str r7, [r6]
0038eca0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0038eca4  18 30 9d e5                                      ldr r3, [sp, #0x18]
0038eca8  00 00 53 e3                                      cmp r3, #0
0038ecac  1e 00 00 0a                                      beq #0x38ed2c
0038ecb0  04 00 a0 e1                                      mov r0, r4
0038ecb4  d0 ff ff eb                                      bl #0x38ebfc
0038ecb8  07 10 a0 e1                                      mov r1, r7
0038ecbc  00 80 a0 e1                                      mov r8, r0
0038ecc0  10 00 80 e2                                      add r0, r0, #0x10
0038ecc4  00 ff ff eb                                      bl #0x38e8cc
0038ecc8  00 30 a0 e3                                      mov r3, #0
0038eccc  0c 30 88 e5                                      str r3, [r8, #0xc]
0038ecd0  08 30 88 e5                                      str r3, [r8, #8]
0038ecd4  08 80 85 e5                                      str r8, [r5, #8]
0038ecd8  08 30 94 e5                                      ldr r3, [r4, #8]
0038ecdc  08 70 a0 e1                                      mov r7, r8
0038ece0  03 00 55 e1                                      cmp r5, r3
0038ece4  08 80 84 05                                      streq r8, [r4, #8]
0038ece8  e3 ff ff ea                                      b #0x38ec7c
0038ecec  0c 70 84 e5                                      str r7, [r4, #0xc]
0038ecf0  e1 ff ff ea                                      b #0x38ec7c
0038ecf4  01 00 a0 e1                                      mov r0, r1
0038ecf8  bf ff ff eb                                      bl #0x38ebfc
0038ecfc  07 10 a0 e1                                      mov r1, r7
0038ed00  00 80 a0 e1                                      mov r8, r0
0038ed04  10 00 80 e2                                      add r0, r0, #0x10
0038ed08  ef fe ff eb                                      bl #0x38e8cc
0038ed0c  00 30 a0 e3                                      mov r3, #0
0038ed10  0c 30 88 e5                                      str r3, [r8, #0xc]
0038ed14  08 30 88 e5                                      str r3, [r8, #8]
0038ed18  08 70 a0 e1                                      mov r7, r8
0038ed1c  08 80 84 e5                                      str r8, [r4, #8]
0038ed20  04 80 84 e5                                      str r8, [r4, #4]
0038ed24  0c 80 84 e5                                      str r8, [r4, #0xc]
0038ed28  d3 ff ff ea                                      b #0x38ec7c
0038ed2c  14 00 81 e2                                      add r0, r1, #0x14
0038ed30  10 20 82 e2                                      add r2, r2, #0x10
0038ed34  07 10 a0 e1                                      mov r1, r7
0038ed38  ae 13 fe eb                                      bl #0x313bf8
0038ed3c  00 00 50 e3                                      cmp r0, #0
0038ed40  bf ff ff 0a                                      beq #0x38ec44
0038ed44  d9 ff ff ea                                      b #0x38ecb0

; FUNCTION 0x0038ed48, declared_size=536, range_size=536, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, ObjectSearcher::BackupObjectList>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, ObjectSearcher::BackupObjectList> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, ObjectSearcher::BackupObjectList> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, ObjectSearcher::BackupObjectList> > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsN14ObjectSearcher16BackupObjectListEENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE13insert_uniqueERKS7_
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, ObjectSearcher::BackupObjectList>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, ObjectSearcher::BackupObjectList> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, ObjectSearcher::BackupObjectList> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, ObjectSearcher::BackupObjectList> > >::insert_unique(std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, ObjectSearcher::BackupObjectList> const&)
; decoder-mode: arm
0038ed48  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0038ed4c  04 50 91 e5                                      ldr r5, [r1, #4]
0038ed50  14 d0 4d e2                                      sub sp, sp, #0x14
0038ed54  01 90 a0 e1                                      mov sb, r1
0038ed58  00 00 55 e3                                      cmp r5, #0
0038ed5c  00 40 a0 e1                                      mov r4, r0
0038ed60  02 80 a0 e1                                      mov r8, r2
0038ed64  38 00 00 0a                                      beq #0x38ee4c
0038ed68  14 70 92 e5                                      ldr r7, [r2, #0x14]
0038ed6c  10 b0 92 e5                                      ldr fp, [r2, #0x10]
0038ed70  0b a0 67 e0                                      rsb sl, r7, fp
0038ed74  04 00 00 ea                                      b #0x38ed8c
0038ed78  08 30 95 e5                                      ldr r3, [r5, #8]
0038ed7c  01 10 a0 e3                                      mov r1, #1
0038ed80  00 00 53 e3                                      cmp r3, #0
0038ed84  16 00 00 0a                                      beq #0x38ede4
0038ed88  03 50 a0 e1                                      mov r5, r3
0038ed8c  24 30 95 e5                                      ldr r3, [r5, #0x24]
0038ed90  20 60 95 e5                                      ldr r6, [r5, #0x20]
0038ed94  07 00 a0 e1                                      mov r0, r7
0038ed98  03 10 a0 e1                                      mov r1, r3
0038ed9c  06 60 63 e0                                      rsb r6, r3, r6
0038eda0  0a 00 56 e1                                      cmp r6, sl
0038eda4  06 20 a0 b1                                      movlt r2, r6
0038eda8  0a 20 a0 a1                                      movge r2, sl
0038edac  0b fe fd eb                                      bl #0x30e5e0
0038edb0  00 00 50 e3                                      cmp r0, #0
0038edb4  05 20 a0 e1                                      mov r2, r5
0038edb8  03 00 00 1a                                      bne #0x38edcc
0038edbc  06 00 5a e1                                      cmp sl, r6
0038edc0  ec ff ff ba                                      blt #0x38ed78
0038edc4  00 00 a0 d3                                      movle r0, #0
0038edc8  01 00 a0 c3                                      movgt r0, #1
0038edcc  00 00 50 e3                                      cmp r0, #0
0038edd0  e8 ff ff ba                                      blt #0x38ed78
0038edd4  0c 30 95 e5                                      ldr r3, [r5, #0xc]
0038edd8  00 10 a0 e3                                      mov r1, #0
0038eddc  00 00 53 e3                                      cmp r3, #0
0038ede0  e8 ff ff 1a                                      bne #0x38ed88
0038ede4  00 00 51 e3                                      cmp r1, #0
0038ede8  05 a0 a0 01                                      moveq sl, r5
0038edec  17 00 00 1a                                      bne #0x38ee50
0038edf0  24 00 92 e5                                      ldr r0, [r2, #0x24]
0038edf4  20 60 92 e5                                      ldr r6, [r2, #0x20]
0038edf8  0b b0 67 e0                                      rsb fp, r7, fp
0038edfc  07 10 a0 e1                                      mov r1, r7
0038ee00  06 60 60 e0                                      rsb r6, r0, r6
0038ee04  06 00 5b e1                                      cmp fp, r6
0038ee08  0b 20 a0 b1                                      movlt r2, fp
0038ee0c  06 20 a0 a1                                      movge r2, r6
0038ee10  f2 fd fd eb                                      bl #0x30e5e0
0038ee14  00 00 50 e3                                      cmp r0, #0
0038ee18  03 00 00 1a                                      bne #0x38ee2c
0038ee1c  0b 00 56 e1                                      cmp r6, fp
0038ee20  20 00 00 ba                                      blt #0x38eea8
0038ee24  00 00 a0 d3                                      movle r0, #0
0038ee28  01 00 a0 c3                                      movgt r0, #1
0038ee2c  00 00 50 e3                                      cmp r0, #0
0038ee30  00 30 a0 a3                                      movge r3, #0
0038ee34  00 a0 84 a5                                      strge sl, [r4]
0038ee38  04 30 c4 a5                                      strbge r3, [r4, #4]
0038ee3c  19 00 00 ba                                      blt #0x38eea8
0038ee40  04 00 a0 e1                                      mov r0, r4
0038ee44  14 d0 8d e2                                      add sp, sp, #0x14
0038ee48  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0038ee4c  01 50 a0 e1                                      mov r5, r1
0038ee50  08 30 99 e5                                      ldr r3, [sb, #8]
0038ee54  03 00 55 e1                                      cmp r5, r3
0038ee58  32 00 00 0a                                      beq #0x38ef28
0038ee5c  00 30 d5 e5                                      ldrb r3, [r5]
0038ee60  00 00 53 e3                                      cmp r3, #0
0038ee64  03 00 00 1a                                      bne #0x38ee78
0038ee68  04 30 95 e5                                      ldr r3, [r5, #4]
0038ee6c  04 30 93 e5                                      ldr r3, [r3, #4]
0038ee70  03 00 55 e1                                      cmp r5, r3
0038ee74  26 00 00 0a                                      beq #0x38ef14
0038ee78  08 20 95 e5                                      ldr r2, [r5, #8]
0038ee7c  00 00 52 e3                                      cmp r2, #0
0038ee80  01 00 00 1a                                      bne #0x38ee8c
0038ee84  14 00 00 ea                                      b #0x38eedc
0038ee88  03 20 a0 e1                                      mov r2, r3
0038ee8c  0c 30 92 e5                                      ldr r3, [r2, #0xc]
0038ee90  00 00 53 e3                                      cmp r3, #0
0038ee94  fb ff ff 1a                                      bne #0x38ee88
0038ee98  02 a0 a0 e1                                      mov sl, r2
0038ee9c  14 70 98 e5                                      ldr r7, [r8, #0x14]
0038eea0  10 b0 98 e5                                      ldr fp, [r8, #0x10]
0038eea4  d1 ff ff ea                                      b #0x38edf0
0038eea8  00 c0 a0 e3                                      mov ip, #0
0038eeac  05 20 a0 e1                                      mov r2, r5
0038eeb0  08 30 a0 e1                                      mov r3, r8
0038eeb4  09 10 a0 e1                                      mov r1, sb
0038eeb8  08 00 8d e2                                      add r0, sp, #8
0038eebc  04 c0 8d e5                                      str ip, [sp, #4]
0038eec0  00 c0 8d e5                                      str ip, [sp]
0038eec4  54 ff ff eb                                      bl #0x38ec1c
0038eec8  08 30 9d e5                                      ldr r3, [sp, #8]
0038eecc  01 20 a0 e3                                      mov r2, #1
0038eed0  04 20 c4 e5                                      strb r2, [r4, #4]
0038eed4  00 30 84 e5                                      str r3, [r4]
0038eed8  d8 ff ff ea                                      b #0x38ee40
0038eedc  04 30 95 e5                                      ldr r3, [r5, #4]
0038eee0  08 20 93 e5                                      ldr r2, [r3, #8]
0038eee4  02 00 55 e1                                      cmp r5, r2
0038eee8  01 00 00 0a                                      beq #0x38eef4
0038eeec  19 00 00 ea                                      b #0x38ef58
0038eef0  02 30 a0 e1                                      mov r3, r2
0038eef4  04 20 93 e5                                      ldr r2, [r3, #4]
0038eef8  08 10 92 e5                                      ldr r1, [r2, #8]
0038eefc  03 00 51 e1                                      cmp r1, r3
0038ef00  fa ff ff 0a                                      beq #0x38eef0
0038ef04  14 70 98 e5                                      ldr r7, [r8, #0x14]
0038ef08  10 b0 98 e5                                      ldr fp, [r8, #0x10]
0038ef0c  02 a0 a0 e1                                      mov sl, r2
0038ef10  b6 ff ff ea                                      b #0x38edf0
0038ef14  0c 20 95 e5                                      ldr r2, [r5, #0xc]
0038ef18  14 70 98 e5                                      ldr r7, [r8, #0x14]
0038ef1c  10 b0 98 e5                                      ldr fp, [r8, #0x10]
0038ef20  02 a0 a0 e1                                      mov sl, r2
0038ef24  b1 ff ff ea                                      b #0x38edf0
0038ef28  05 20 a0 e1                                      mov r2, r5
0038ef2c  08 30 a0 e1                                      mov r3, r8
0038ef30  00 c0 a0 e3                                      mov ip, #0
0038ef34  09 10 a0 e1                                      mov r1, sb
0038ef38  0c 00 8d e2                                      add r0, sp, #0xc
0038ef3c  20 10 8d e8                                      stm sp, {r5, ip}
0038ef40  35 ff ff eb                                      bl #0x38ec1c
0038ef44  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0038ef48  01 20 a0 e3                                      mov r2, #1
0038ef4c  04 20 c4 e5                                      strb r2, [r4, #4]
0038ef50  00 30 84 e5                                      str r3, [r4]
0038ef54  b9 ff ff ea                                      b #0x38ee40
0038ef58  03 20 a0 e1                                      mov r2, r3
0038ef5c  cd ff ff ea                                      b #0x38ee98

; FUNCTION 0x0038f038, declared_size=1284, range_size=1284, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, ObjectSearcher::BackupObjectList>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, ObjectSearcher::BackupObjectList> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, ObjectSearcher::BackupObjectList> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, ObjectSearcher::BackupObjectList> > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsN14ObjectSearcher16BackupObjectListEENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE13insert_uniqueENS_17_Rb_tree_iteratorIS7_SB_EERKS7_
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, ObjectSearcher::BackupObjectList>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, ObjectSearcher::BackupObjectList> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, ObjectSearcher::BackupObjectList> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, ObjectSearcher::BackupObjectList> > >::insert_unique(std::priv::_Rb_tree_iterator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, ObjectSearcher::BackupObjectList>, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, ObjectSearcher::BackupObjectList> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, ObjectSearcher::BackupObjectList> const&)
; decoder-mode: arm
0038f038  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0038f03c  44 d0 4d e2                                      sub sp, sp, #0x44
0038f040  14 20 8d e5                                      str r2, [sp, #0x14]
0038f044  00 50 92 e5                                      ldr r5, [r2]
0038f048  08 20 91 e5                                      ldr r2, [r1, #8]
0038f04c  01 60 a0 e1                                      mov r6, r1
0038f050  00 70 a0 e1                                      mov r7, r0
0038f054  02 00 55 e1                                      cmp r5, r2
0038f058  03 80 a0 e1                                      mov r8, r3
0038f05c  7c 00 00 0a                                      beq #0x38f254
0038f060  01 00 55 e1                                      cmp r5, r1
0038f064  d0 00 00 0a                                      beq #0x38f3ac
0038f068  00 30 d5 e5                                      ldrb r3, [r5]
0038f06c  00 00 53 e3                                      cmp r3, #0
0038f070  35 00 00 0a                                      beq #0x38f14c
0038f074  08 40 95 e5                                      ldr r4, [r5, #8]
0038f078  00 00 54 e3                                      cmp r4, #0
0038f07c  01 00 00 1a                                      bne #0x38f088
0038f080  39 00 00 ea                                      b #0x38f16c
0038f084  03 40 a0 e1                                      mov r4, r3
0038f088  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0038f08c  00 00 53 e3                                      cmp r3, #0
0038f090  fb ff ff 1a                                      bne #0x38f084
0038f094  24 30 95 e5                                      ldr r3, [r5, #0x24]
0038f098  14 90 98 e5                                      ldr sb, [r8, #0x14]
0038f09c  10 b0 98 e5                                      ldr fp, [r8, #0x10]
0038f0a0  20 20 95 e5                                      ldr r2, [r5, #0x20]
0038f0a4  03 10 a0 e1                                      mov r1, r3
0038f0a8  0b b0 69 e0                                      rsb fp, sb, fp
0038f0ac  02 20 63 e0                                      rsb r2, r3, r2
0038f0b0  18 20 8d e5                                      str r2, [sp, #0x18]
0038f0b4  09 00 a0 e1                                      mov r0, sb
0038f0b8  0b 00 52 e1                                      cmp r2, fp
0038f0bc  0b 20 a0 a1                                      movge r2, fp
0038f0c0  0c 30 8d e5                                      str r3, [sp, #0xc]
0038f0c4  1c 20 8d e5                                      str r2, [sp, #0x1c]
0038f0c8  44 fd fd eb                                      bl #0x30e5e0
0038f0cc  00 00 50 e3                                      cmp r0, #0
0038f0d0  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0038f0d4  05 00 00 1a                                      bne #0x38f0f0
0038f0d8  18 20 9d e5                                      ldr r2, [sp, #0x18]
0038f0dc  02 00 5b e1                                      cmp fp, r2
0038f0e0  00 00 e0 b3                                      mvnlt r0, #0
0038f0e4  01 00 00 ba                                      blt #0x38f0f0
0038f0e8  00 00 a0 d3                                      movle r0, #0
0038f0ec  01 00 a0 c3                                      movgt r0, #1
0038f0f0  a0 cf b0 e1                                      lsrs ip, r0, #0x1f
0038f0f4  28 00 00 1a                                      bne #0x38f19c
0038f0f8  0c 40 95 e5                                      ldr r4, [r5, #0xc]
0038f0fc  00 00 54 e3                                      cmp r4, #0
0038f100  01 00 00 1a                                      bne #0x38f10c
0038f104  cc 00 00 ea                                      b #0x38f43c
0038f108  02 40 a0 e1                                      mov r4, r2
0038f10c  08 20 94 e5                                      ldr r2, [r4, #8]
0038f110  00 00 52 e3                                      cmp r2, #0
0038f114  fb ff ff 1a                                      bne #0x38f108
0038f118  00 00 5c e3                                      cmp ip, #0
0038f11c  43 00 00 1a                                      bne #0x38f230
0038f120  03 00 a0 e1                                      mov r0, r3
0038f124  09 10 a0 e1                                      mov r1, sb
0038f128  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0038f12c  2b fd fd eb                                      bl #0x30e5e0
0038f130  00 00 50 e3                                      cmp r0, #0
0038f134  34 00 00 1a                                      bne #0x38f20c
0038f138  18 30 9d e5                                      ldr r3, [sp, #0x18]
0038f13c  03 00 5b e1                                      cmp fp, r3
0038f140  32 00 00 ca                                      bgt #0x38f210
0038f144  00 50 87 e5                                      str r5, [r7]
0038f148  3e 00 00 ea                                      b #0x38f248
0038f14c  04 30 95 e5                                      ldr r3, [r5, #4]
0038f150  04 30 93 e5                                      ldr r3, [r3, #4]
0038f154  03 00 55 e1                                      cmp r5, r3
0038f158  0c 40 95 05                                      ldreq r4, [r5, #0xc]
0038f15c  cc ff ff 0a                                      beq #0x38f094
0038f160  08 40 95 e5                                      ldr r4, [r5, #8]
0038f164  00 00 54 e3                                      cmp r4, #0
0038f168  c6 ff ff 1a                                      bne #0x38f088
0038f16c  04 40 95 e5                                      ldr r4, [r5, #4]
0038f170  08 30 94 e5                                      ldr r3, [r4, #8]
0038f174  03 00 55 e1                                      cmp r5, r3
0038f178  01 00 00 0a                                      beq #0x38f184
0038f17c  c4 ff ff ea                                      b #0x38f094
0038f180  03 40 a0 e1                                      mov r4, r3
0038f184  04 30 94 e5                                      ldr r3, [r4, #4]
0038f188  08 20 93 e5                                      ldr r2, [r3, #8]
0038f18c  04 00 52 e1                                      cmp r2, r4
0038f190  fa ff ff 0a                                      beq #0x38f180
0038f194  03 40 a0 e1                                      mov r4, r3
0038f198  bd ff ff ea                                      b #0x38f094
0038f19c  24 20 94 e5                                      ldr r2, [r4, #0x24]
0038f1a0  20 a0 94 e5                                      ldr sl, [r4, #0x20]
0038f1a4  09 10 a0 e1                                      mov r1, sb
0038f1a8  02 00 a0 e1                                      mov r0, r2
0038f1ac  0a a0 62 e0                                      rsb sl, r2, sl
0038f1b0  0a 00 5b e1                                      cmp fp, sl
0038f1b4  0b 20 a0 b1                                      movlt r2, fp
0038f1b8  0a 20 a0 a1                                      movge r2, sl
0038f1bc  0c 30 8d e5                                      str r3, [sp, #0xc]
0038f1c0  10 c0 8d e5                                      str ip, [sp, #0x10]
0038f1c4  05 fd fd eb                                      bl #0x30e5e0
0038f1c8  00 00 50 e3                                      cmp r0, #0
0038f1cc  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0038f1d0  10 c0 9d e5                                      ldr ip, [sp, #0x10]
0038f1d4  6f 00 00 1a                                      bne #0x38f398
0038f1d8  0a 00 5b e1                                      cmp fp, sl
0038f1dc  c5 ff ff da                                      ble #0x38f0f8
0038f1e0  0c c0 94 e5                                      ldr ip, [r4, #0xc]
0038f1e4  00 00 5c e3                                      cmp ip, #0
0038f1e8  62 00 00 0a                                      beq #0x38f378
0038f1ec  00 c0 a0 e3                                      mov ip, #0
0038f1f0  06 10 a0 e1                                      mov r1, r6
0038f1f4  05 20 a0 e1                                      mov r2, r5
0038f1f8  08 30 a0 e1                                      mov r3, r8
0038f1fc  07 00 a0 e1                                      mov r0, r7
0038f200  20 10 8d e8                                      stm sp, {r5, ip}
0038f204  84 fe ff eb                                      bl #0x38ec1c
0038f208  0e 00 00 ea                                      b #0x38f248
0038f20c  cc ff ff aa                                      bge #0x38f144
0038f210  04 00 56 e1                                      cmp r6, r4
0038f214  9b 00 00 0a                                      beq #0x38f488
0038f218  14 00 86 e2                                      add r0, r6, #0x14
0038f21c  08 10 a0 e1                                      mov r1, r8
0038f220  10 20 84 e2                                      add r2, r4, #0x10
0038f224  73 12 fe eb                                      bl #0x313bf8
0038f228  00 00 50 e3                                      cmp r0, #0
0038f22c  93 00 00 1a                                      bne #0x38f480
0038f230  06 10 a0 e1                                      mov r1, r6
0038f234  08 20 a0 e1                                      mov r2, r8
0038f238  20 00 8d e2                                      add r0, sp, #0x20
0038f23c  c1 fe ff eb                                      bl #0x38ed48
0038f240  20 30 9d e5                                      ldr r3, [sp, #0x20]
0038f244  00 30 87 e5                                      str r3, [r7]
0038f248  07 00 a0 e1                                      mov r0, r7
0038f24c  44 d0 8d e2                                      add sp, sp, #0x44
0038f250  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0038f254  10 30 91 e5                                      ldr r3, [r1, #0x10]
0038f258  00 00 53 e3                                      cmp r3, #0
0038f25c  9f 00 00 0a                                      beq #0x38f4e0
0038f260  14 30 98 e5                                      ldr r3, [r8, #0x14]
0038f264  24 10 95 e5                                      ldr r1, [r5, #0x24]
0038f268  10 40 98 e5                                      ldr r4, [r8, #0x10]
0038f26c  20 a0 95 e5                                      ldr sl, [r5, #0x20]
0038f270  03 00 a0 e1                                      mov r0, r3
0038f274  04 40 63 e0                                      rsb r4, r3, r4
0038f278  0a a0 61 e0                                      rsb sl, r1, sl
0038f27c  04 00 5a e1                                      cmp sl, r4
0038f280  0a 20 a0 b1                                      movlt r2, sl
0038f284  04 20 a0 a1                                      movge r2, r4
0038f288  d4 fc fd eb                                      bl #0x30e5e0
0038f28c  00 00 50 e3                                      cmp r0, #0
0038f290  03 00 00 1a                                      bne #0x38f2a4
0038f294  0a 00 54 e1                                      cmp r4, sl
0038f298  d3 ff ff ba                                      blt #0x38f1ec
0038f29c  00 00 a0 d3                                      movle r0, #0
0038f2a0  01 00 a0 c3                                      movgt r0, #1
0038f2a4  00 00 50 e3                                      cmp r0, #0
0038f2a8  cf ff ff ba                                      blt #0x38f1ec
0038f2ac  14 a0 86 e2                                      add sl, r6, #0x14
0038f2b0  10 10 85 e2                                      add r1, r5, #0x10
0038f2b4  0a 00 a0 e1                                      mov r0, sl
0038f2b8  08 20 a0 e1                                      mov r2, r8
0038f2bc  4d 12 fe eb                                      bl #0x313bf8
0038f2c0  00 00 50 e3                                      cmp r0, #0
0038f2c4  81 00 00 0a                                      beq #0x38f4d0
0038f2c8  14 30 9d e5                                      ldr r3, [sp, #0x14]
0038f2cc  00 c0 93 e5                                      ldr ip, [r3]
0038f2d0  0c 40 9c e5                                      ldr r4, [ip, #0xc]
0038f2d4  00 00 54 e3                                      cmp r4, #0
0038f2d8  22 00 00 1a                                      bne #0x38f368
0038f2dc  04 30 9c e5                                      ldr r3, [ip, #4]
0038f2e0  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0038f2e4  02 00 5c e1                                      cmp ip, r2
0038f2e8  0c 40 a0 11                                      movne r4, ip
0038f2ec  04 00 00 1a                                      bne #0x38f304
0038f2f0  03 40 a0 e1                                      mov r4, r3
0038f2f4  04 30 93 e5                                      ldr r3, [r3, #4]
0038f2f8  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0038f2fc  04 00 52 e1                                      cmp r2, r4
0038f300  fa ff ff 0a                                      beq #0x38f2f0
0038f304  0c 20 94 e5                                      ldr r2, [r4, #0xc]
0038f308  02 00 53 e1                                      cmp r3, r2
0038f30c  03 40 a0 11                                      movne r4, r3
0038f310  04 00 56 e1                                      cmp r6, r4
0038f314  7f 00 00 0a                                      beq #0x38f518
0038f318  0a 00 a0 e1                                      mov r0, sl
0038f31c  08 10 a0 e1                                      mov r1, r8
0038f320  10 20 84 e2                                      add r2, r4, #0x10
0038f324  33 12 fe eb                                      bl #0x313bf8
0038f328  00 00 50 e3                                      cmp r0, #0
0038f32c  60 00 00 0a                                      beq #0x38f4b4
0038f330  14 20 9d e5                                      ldr r2, [sp, #0x14]
0038f334  00 c0 92 e5                                      ldr ip, [r2]
0038f338  0c e0 9c e5                                      ldr lr, [ip, #0xc]
0038f33c  00 00 5e e3                                      cmp lr, #0
0038f340  6c 00 00 0a                                      beq #0x38f4f8
0038f344  00 c0 a0 e3                                      mov ip, #0
0038f348  06 10 a0 e1                                      mov r1, r6
0038f34c  04 20 a0 e1                                      mov r2, r4
0038f350  08 30 a0 e1                                      mov r3, r8
0038f354  07 00 a0 e1                                      mov r0, r7
0038f358  10 10 8d e8                                      stm sp, {r4, ip}
0038f35c  2e fe ff eb                                      bl #0x38ec1c
0038f360  b8 ff ff ea                                      b #0x38f248
0038f364  03 40 a0 e1                                      mov r4, r3
0038f368  08 30 94 e5                                      ldr r3, [r4, #8]
0038f36c  00 00 53 e3                                      cmp r3, #0
0038f370  fb ff ff 1a                                      bne #0x38f364
0038f374  e5 ff ff ea                                      b #0x38f310
0038f378  06 10 a0 e1                                      mov r1, r6
0038f37c  04 20 a0 e1                                      mov r2, r4
0038f380  08 30 a0 e1                                      mov r3, r8
0038f384  07 00 a0 e1                                      mov r0, r7
0038f388  00 c0 8d e5                                      str ip, [sp]
0038f38c  04 40 8d e5                                      str r4, [sp, #4]
0038f390  21 fe ff eb                                      bl #0x38ec1c
0038f394  ab ff ff ea                                      b #0x38f248
0038f398  56 ff ff aa                                      bge #0x38f0f8
0038f39c  0c c0 94 e5                                      ldr ip, [r4, #0xc]
0038f3a0  00 00 5c e3                                      cmp ip, #0
0038f3a4  90 ff ff 1a                                      bne #0x38f1ec
0038f3a8  f2 ff ff ea                                      b #0x38f378
0038f3ac  0c 40 95 e5                                      ldr r4, [r5, #0xc]
0038f3b0  14 10 93 e5                                      ldr r1, [r3, #0x14]
0038f3b4  10 90 93 e5                                      ldr sb, [r3, #0x10]
0038f3b8  20 a0 94 e5                                      ldr sl, [r4, #0x20]
0038f3bc  24 30 94 e5                                      ldr r3, [r4, #0x24]
0038f3c0  09 90 61 e0                                      rsb sb, r1, sb
0038f3c4  0a a0 63 e0                                      rsb sl, r3, sl
0038f3c8  0a 00 59 e1                                      cmp sb, sl
0038f3cc  09 20 a0 b1                                      movlt r2, sb
0038f3d0  0a 20 a0 a1                                      movge r2, sl
0038f3d4  03 00 a0 e1                                      mov r0, r3
0038f3d8  80 fc fd eb                                      bl #0x30e5e0
0038f3dc  00 00 50 e3                                      cmp r0, #0
0038f3e0  03 00 00 1a                                      bne #0x38f3f4
0038f3e4  09 00 5a e1                                      cmp sl, sb
0038f3e8  03 00 00 ba                                      blt #0x38f3fc
0038f3ec  00 00 a0 d3                                      movle r0, #0
0038f3f0  01 00 a0 c3                                      movgt r0, #1
0038f3f4  00 00 50 e3                                      cmp r0, #0
0038f3f8  08 00 00 aa                                      bge #0x38f420
0038f3fc  00 c0 a0 e3                                      mov ip, #0
0038f400  06 10 a0 e1                                      mov r1, r6
0038f404  04 20 a0 e1                                      mov r2, r4
0038f408  08 30 a0 e1                                      mov r3, r8
0038f40c  07 00 a0 e1                                      mov r0, r7
0038f410  00 c0 8d e5                                      str ip, [sp]
0038f414  04 50 8d e5                                      str r5, [sp, #4]
0038f418  ff fd ff eb                                      bl #0x38ec1c
0038f41c  89 ff ff ea                                      b #0x38f248
0038f420  06 10 a0 e1                                      mov r1, r6
0038f424  08 20 a0 e1                                      mov r2, r8
0038f428  28 00 8d e2                                      add r0, sp, #0x28
0038f42c  45 fe ff eb                                      bl #0x38ed48
0038f430  28 30 9d e5                                      ldr r3, [sp, #0x28]
0038f434  00 30 87 e5                                      str r3, [r7]
0038f438  82 ff ff ea                                      b #0x38f248
0038f43c  04 20 95 e5                                      ldr r2, [r5, #4]
0038f440  0c 10 92 e5                                      ldr r1, [r2, #0xc]
0038f444  01 00 55 e1                                      cmp r5, r1
0038f448  05 40 a0 11                                      movne r4, r5
0038f44c  04 00 00 0a                                      beq #0x38f464
0038f450  0c 10 94 e5                                      ldr r1, [r4, #0xc]
0038f454  01 00 52 e1                                      cmp r2, r1
0038f458  02 40 a0 11                                      movne r4, r2
0038f45c  2d ff ff ea                                      b #0x38f118
0038f460  01 20 a0 e1                                      mov r2, r1
0038f464  04 10 92 e5                                      ldr r1, [r2, #4]
0038f468  0c 00 91 e5                                      ldr r0, [r1, #0xc]
0038f46c  02 00 50 e1                                      cmp r0, r2
0038f470  fa ff ff 0a                                      beq #0x38f460
0038f474  02 40 a0 e1                                      mov r4, r2
0038f478  01 20 a0 e1                                      mov r2, r1
0038f47c  f3 ff ff ea                                      b #0x38f450
0038f480  14 20 9d e5                                      ldr r2, [sp, #0x14]
0038f484  00 50 92 e5                                      ldr r5, [r2]
0038f488  0c c0 95 e5                                      ldr ip, [r5, #0xc]
0038f48c  00 00 5c e3                                      cmp ip, #0
0038f490  ab ff ff 1a                                      bne #0x38f344
0038f494  06 10 a0 e1                                      mov r1, r6
0038f498  05 20 a0 e1                                      mov r2, r5
0038f49c  08 30 a0 e1                                      mov r3, r8
0038f4a0  07 00 a0 e1                                      mov r0, r7
0038f4a4  00 c0 8d e5                                      str ip, [sp]
0038f4a8  04 50 8d e5                                      str r5, [sp, #4]
0038f4ac  da fd ff eb                                      bl #0x38ec1c
0038f4b0  64 ff ff ea                                      b #0x38f248
0038f4b4  06 10 a0 e1                                      mov r1, r6
0038f4b8  08 20 a0 e1                                      mov r2, r8
0038f4bc  30 00 8d e2                                      add r0, sp, #0x30
0038f4c0  20 fe ff eb                                      bl #0x38ed48
0038f4c4  30 30 9d e5                                      ldr r3, [sp, #0x30]
0038f4c8  00 30 87 e5                                      str r3, [r7]
0038f4cc  5d ff ff ea                                      b #0x38f248
0038f4d0  14 20 9d e5                                      ldr r2, [sp, #0x14]
0038f4d4  00 30 92 e5                                      ldr r3, [r2]
0038f4d8  00 30 87 e5                                      str r3, [r7]
0038f4dc  59 ff ff ea                                      b #0x38f248
0038f4e0  08 20 a0 e1                                      mov r2, r8
0038f4e4  38 00 8d e2                                      add r0, sp, #0x38
0038f4e8  16 fe ff eb                                      bl #0x38ed48
0038f4ec  38 30 9d e5                                      ldr r3, [sp, #0x38]
0038f4f0  00 30 87 e5                                      str r3, [r7]
0038f4f4  53 ff ff ea                                      b #0x38f248
0038f4f8  06 10 a0 e1                                      mov r1, r6
0038f4fc  0c 20 a0 e1                                      mov r2, ip
0038f500  08 30 a0 e1                                      mov r3, r8
0038f504  07 00 a0 e1                                      mov r0, r7
0038f508  00 e0 8d e5                                      str lr, [sp]
0038f50c  04 c0 8d e5                                      str ip, [sp, #4]
0038f510  c1 fd ff eb                                      bl #0x38ec1c
0038f514  4b ff ff ea                                      b #0x38f248
0038f518  00 e0 a0 e3                                      mov lr, #0
0038f51c  06 10 a0 e1                                      mov r1, r6
0038f520  0c 20 a0 e1                                      mov r2, ip
0038f524  08 30 a0 e1                                      mov r3, r8
0038f528  07 00 a0 e1                                      mov r0, r7
0038f52c  00 e0 8d e5                                      str lr, [sp]
0038f530  04 c0 8d e5                                      str ip, [sp, #4]
0038f534  b8 fd ff eb                                      bl #0x38ec1c
0038f538  42 ff ff ea                                      b #0x38f248

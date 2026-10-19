; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00314120, declared_size=368, range_size=368, mode=arm
; class-group: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Savegame::SectionInfo>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Savegame::SectionInfo> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Savegame::SectionInfo> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Savegame::SectionInfo> > >
; alias: _ZNKSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsN8Savegame11SectionInfoEENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE7_M_findIPKcEEPNS_18_Rb_tree_node_baseERKT_
; demangled: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Savegame::SectionInfo>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Savegame::SectionInfo> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Savegame::SectionInfo> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Savegame::SectionInfo> > >::_M_find<char const*>(char const* const&) const
; decoder-mode: arm
00314120  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00314124  5c b1 9f e5                                      ldr fp, [pc, #0x15c]
00314128  5c 21 9f e5                                      ldr r2, [pc, #0x15c]
0031412c  54 d0 4d e2                                      sub sp, sp, #0x54
00314130  0b b0 8f e0                                      add fp, pc, fp
00314134  02 30 9b e7                                      ldr r3, [fp, r2]
00314138  0c 20 8d e5                                      str r2, [sp, #0xc]
0031413c  08 00 8d e5                                      str r0, [sp, #8]
00314140  04 40 90 e5                                      ldr r4, [r0, #4]
00314144  00 30 93 e5                                      ldr r3, [r3]
00314148  01 80 a0 e1                                      mov r8, r1
0031414c  00 00 54 e3                                      cmp r4, #0
00314150  4c 30 8d e5                                      str r3, [sp, #0x4c]
00314154  40 00 00 0a                                      beq #0x31425c
00314158  00 a0 a0 e1                                      mov sl, r0
0031415c  34 70 8d e2                                      add r7, sp, #0x34
00314160  18 90 8d e2                                      add sb, sp, #0x18
00314164  00 10 98 e5                                      ldr r1, [r8]
00314168  09 20 a0 e1                                      mov r2, sb
0031416c  07 00 a0 e1                                      mov r0, r7
00314170  dd ff ff eb                                      bl #0x3140ec
00314174  24 30 94 e5                                      ldr r3, [r4, #0x24]
00314178  48 10 9d e5                                      ldr r1, [sp, #0x48]
0031417c  20 60 94 e5                                      ldr r6, [r4, #0x20]
00314180  44 50 9d e5                                      ldr r5, [sp, #0x44]
00314184  03 00 a0 e1                                      mov r0, r3
00314188  06 60 63 e0                                      rsb r6, r3, r6
0031418c  05 50 61 e0                                      rsb r5, r1, r5
00314190  06 00 55 e1                                      cmp r5, r6
00314194  05 20 a0 b1                                      movlt r2, r5
00314198  06 20 a0 a1                                      movge r2, r6
0031419c  0f e9 ff eb                                      bl #0x30e5e0
003141a0  00 30 50 e2                                      subs r3, r0, #0
003141a4  04 00 00 1a                                      bne #0x3141bc
003141a8  05 00 56 e1                                      cmp r6, r5
003141ac  00 30 e0 b3                                      mvnlt r3, #0
003141b0  01 00 00 ba                                      blt #0x3141bc
003141b4  00 30 a0 d3                                      movle r3, #0
003141b8  01 30 a0 c3                                      movgt r3, #1
003141bc  07 00 a0 e1                                      mov r0, r7
003141c0  04 30 8d e5                                      str r3, [sp, #4]
003141c4  f8 fd ff eb                                      bl #0x3139ac
003141c8  04 30 9d e5                                      ldr r3, [sp, #4]
003141cc  00 00 53 e3                                      cmp r3, #0
003141d0  04 a0 a0 a1                                      movge sl, r4
003141d4  0c 40 94 b5                                      ldrlt r4, [r4, #0xc]
003141d8  08 40 94 a5                                      ldrge r4, [r4, #8]
003141dc  00 00 54 e3                                      cmp r4, #0
003141e0  df ff ff 1a                                      bne #0x314164
003141e4  08 30 9d e5                                      ldr r3, [sp, #8]
003141e8  03 00 5a e1                                      cmp sl, r3
003141ec  1b 00 00 0a                                      beq #0x314260
003141f0  1c 40 8d e2                                      add r4, sp, #0x1c
003141f4  00 10 98 e5                                      ldr r1, [r8]
003141f8  14 20 8d e2                                      add r2, sp, #0x14
003141fc  04 00 a0 e1                                      mov r0, r4
00314200  b9 ff ff eb                                      bl #0x3140ec
00314204  30 30 9d e5                                      ldr r3, [sp, #0x30]
00314208  24 10 9a e5                                      ldr r1, [sl, #0x24]
0031420c  20 50 9a e5                                      ldr r5, [sl, #0x20]
00314210  2c 60 9d e5                                      ldr r6, [sp, #0x2c]
00314214  03 00 a0 e1                                      mov r0, r3
00314218  05 50 61 e0                                      rsb r5, r1, r5
0031421c  06 60 63 e0                                      rsb r6, r3, r6
00314220  06 00 55 e1                                      cmp r5, r6
00314224  05 20 a0 b1                                      movlt r2, r5
00314228  06 20 a0 a1                                      movge r2, r6
0031422c  eb e8 ff eb                                      bl #0x30e5e0
00314230  00 70 50 e2                                      subs r7, r0, #0
00314234  04 00 00 1a                                      bne #0x31424c
00314238  05 00 56 e1                                      cmp r6, r5
0031423c  00 70 e0 b3                                      mvnlt r7, #0
00314240  01 00 00 ba                                      blt #0x31424c
00314244  00 70 a0 d3                                      movle r7, #0
00314248  01 70 a0 c3                                      movgt r7, #1
0031424c  04 00 a0 e1                                      mov r0, r4
00314250  d5 fd ff eb                                      bl #0x3139ac
00314254  00 00 57 e3                                      cmp r7, #0
00314258  00 00 00 aa                                      bge #0x314260
0031425c  08 a0 9d e5                                      ldr sl, [sp, #8]
00314260  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00314264  0a 00 a0 e1                                      mov r0, sl
00314268  02 30 9b e7                                      ldr r3, [fp, r2]
0031426c  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
00314270  00 30 93 e5                                      ldr r3, [r3]
00314274  03 00 52 e1                                      cmp r2, r3
00314278  01 00 00 1a                                      bne #0x314284
0031427c  54 d0 8d e2                                      add sp, sp, #0x54
00314280  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00314284  21 e8 ff eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00314288  60 09 68 00 ac 40 00 00                          .byte 0x60, 0x09, 0x68, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x00314290, declared_size=240, range_size=240, mode=arm
; class-group: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Savegame::SectionInfo>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Savegame::SectionInfo> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Savegame::SectionInfo> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Savegame::SectionInfo> > >
; alias: _ZNKSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsN8Savegame11SectionInfoEENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE14_M_lower_boundIPKcEEPNS_18_Rb_tree_node_baseERKT_
; demangled: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Savegame::SectionInfo>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Savegame::SectionInfo> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Savegame::SectionInfo> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Savegame::SectionInfo> > >::_M_lower_bound<char const*>(char const* const&) const
; decoder-mode: arm
00314290  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00314294  dc b0 9f e5                                      ldr fp, [pc, #0xdc]
00314298  dc 20 9f e5                                      ldr r2, [pc, #0xdc]
0031429c  2c d0 4d e2                                      sub sp, sp, #0x2c
003142a0  0b b0 8f e0                                      add fp, pc, fp
003142a4  02 30 9b e7                                      ldr r3, [fp, r2]
003142a8  04 20 8d e5                                      str r2, [sp, #4]
003142ac  00 90 a0 e1                                      mov sb, r0
003142b0  00 30 93 e5                                      ldr r3, [r3]
003142b4  01 80 a0 e1                                      mov r8, r1
003142b8  24 30 8d e5                                      str r3, [sp, #0x24]
003142bc  04 40 90 e5                                      ldr r4, [r0, #4]
003142c0  00 00 54 e3                                      cmp r4, #0
003142c4  21 00 00 0a                                      beq #0x314350
003142c8  0c 70 8d e2                                      add r7, sp, #0xc
003142cc  08 a0 8d e2                                      add sl, sp, #8
003142d0  00 10 98 e5                                      ldr r1, [r8]
003142d4  0a 20 a0 e1                                      mov r2, sl
003142d8  07 00 a0 e1                                      mov r0, r7
003142dc  82 ff ff eb                                      bl #0x3140ec
003142e0  24 30 94 e5                                      ldr r3, [r4, #0x24]
003142e4  20 10 9d e5                                      ldr r1, [sp, #0x20]
003142e8  20 60 94 e5                                      ldr r6, [r4, #0x20]
003142ec  1c 50 9d e5                                      ldr r5, [sp, #0x1c]
003142f0  03 00 a0 e1                                      mov r0, r3
003142f4  06 60 63 e0                                      rsb r6, r3, r6
003142f8  05 50 61 e0                                      rsb r5, r1, r5
003142fc  06 00 55 e1                                      cmp r5, r6
00314300  05 20 a0 b1                                      movlt r2, r5
00314304  06 20 a0 a1                                      movge r2, r6
00314308  b4 e8 ff eb                                      bl #0x30e5e0
0031430c  00 30 50 e2                                      subs r3, r0, #0
00314310  04 00 00 1a                                      bne #0x314328
00314314  05 00 56 e1                                      cmp r6, r5
00314318  00 30 e0 b3                                      mvnlt r3, #0
0031431c  01 00 00 ba                                      blt #0x314328
00314320  00 30 a0 d3                                      movle r3, #0
00314324  01 30 a0 c3                                      movgt r3, #1
00314328  07 00 a0 e1                                      mov r0, r7
0031432c  00 30 8d e5                                      str r3, [sp]
00314330  9d fd ff eb                                      bl #0x3139ac
00314334  00 30 9d e5                                      ldr r3, [sp]
00314338  00 00 53 e3                                      cmp r3, #0
0031433c  04 90 a0 a1                                      movge sb, r4
00314340  0c 40 94 b5                                      ldrlt r4, [r4, #0xc]
00314344  08 40 94 a5                                      ldrge r4, [r4, #8]
00314348  00 00 54 e3                                      cmp r4, #0
0031434c  df ff ff 1a                                      bne #0x3142d0
00314350  04 20 9d e5                                      ldr r2, [sp, #4]
00314354  09 00 a0 e1                                      mov r0, sb
00314358  02 30 9b e7                                      ldr r3, [fp, r2]
0031435c  24 20 9d e5                                      ldr r2, [sp, #0x24]
00314360  00 30 93 e5                                      ldr r3, [r3]
00314364  03 00 52 e1                                      cmp r2, r3
00314368  01 00 00 1a                                      bne #0x314374
0031436c  2c d0 8d e2                                      add sp, sp, #0x2c
00314370  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00314374  e5 e7 ff eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00314378  f0 07 68 00 ac 40 00 00                          .byte 0xf0, 0x07, 0x68, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x00314380, declared_size=368, range_size=368, mode=arm
; class-group: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Savegame::SectionInfo>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Savegame::SectionInfo> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Savegame::SectionInfo> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Savegame::SectionInfo> > >
; alias: _ZNKSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsN8Savegame11SectionInfoEENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE7_M_findIA5_cEEPNS_18_Rb_tree_node_baseERKT_
; demangled: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Savegame::SectionInfo>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Savegame::SectionInfo> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Savegame::SectionInfo> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Savegame::SectionInfo> > >::_M_find<char [5]>(char const (&) [5]) const
; decoder-mode: arm
00314380  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00314384  5c b1 9f e5                                      ldr fp, [pc, #0x15c]
00314388  5c 21 9f e5                                      ldr r2, [pc, #0x15c]
0031438c  54 d0 4d e2                                      sub sp, sp, #0x54
00314390  0b b0 8f e0                                      add fp, pc, fp
00314394  02 30 9b e7                                      ldr r3, [fp, r2]
00314398  0c 20 8d e5                                      str r2, [sp, #0xc]
0031439c  08 00 8d e5                                      str r0, [sp, #8]
003143a0  04 40 90 e5                                      ldr r4, [r0, #4]
003143a4  00 30 93 e5                                      ldr r3, [r3]
003143a8  01 80 a0 e1                                      mov r8, r1
003143ac  00 00 54 e3                                      cmp r4, #0
003143b0  4c 30 8d e5                                      str r3, [sp, #0x4c]
003143b4  40 00 00 0a                                      beq #0x3144bc
003143b8  00 a0 a0 e1                                      mov sl, r0
003143bc  34 70 8d e2                                      add r7, sp, #0x34
003143c0  18 90 8d e2                                      add sb, sp, #0x18
003143c4  08 10 a0 e1                                      mov r1, r8
003143c8  09 20 a0 e1                                      mov r2, sb
003143cc  07 00 a0 e1                                      mov r0, r7
003143d0  45 ff ff eb                                      bl #0x3140ec
003143d4  24 30 94 e5                                      ldr r3, [r4, #0x24]
003143d8  48 10 9d e5                                      ldr r1, [sp, #0x48]
003143dc  20 60 94 e5                                      ldr r6, [r4, #0x20]
003143e0  44 50 9d e5                                      ldr r5, [sp, #0x44]
003143e4  03 00 a0 e1                                      mov r0, r3
003143e8  06 60 63 e0                                      rsb r6, r3, r6
003143ec  05 50 61 e0                                      rsb r5, r1, r5
003143f0  06 00 55 e1                                      cmp r5, r6
003143f4  05 20 a0 b1                                      movlt r2, r5
003143f8  06 20 a0 a1                                      movge r2, r6
003143fc  77 e8 ff eb                                      bl #0x30e5e0
00314400  00 30 50 e2                                      subs r3, r0, #0
00314404  04 00 00 1a                                      bne #0x31441c
00314408  05 00 56 e1                                      cmp r6, r5
0031440c  00 30 e0 b3                                      mvnlt r3, #0
00314410  01 00 00 ba                                      blt #0x31441c
00314414  00 30 a0 d3                                      movle r3, #0
00314418  01 30 a0 c3                                      movgt r3, #1
0031441c  07 00 a0 e1                                      mov r0, r7
00314420  04 30 8d e5                                      str r3, [sp, #4]
00314424  60 fd ff eb                                      bl #0x3139ac
00314428  04 30 9d e5                                      ldr r3, [sp, #4]
0031442c  00 00 53 e3                                      cmp r3, #0
00314430  04 a0 a0 a1                                      movge sl, r4
00314434  0c 40 94 b5                                      ldrlt r4, [r4, #0xc]
00314438  08 40 94 a5                                      ldrge r4, [r4, #8]
0031443c  00 00 54 e3                                      cmp r4, #0
00314440  df ff ff 1a                                      bne #0x3143c4
00314444  08 30 9d e5                                      ldr r3, [sp, #8]
00314448  03 00 5a e1                                      cmp sl, r3
0031444c  1b 00 00 0a                                      beq #0x3144c0
00314450  1c 40 8d e2                                      add r4, sp, #0x1c
00314454  08 10 a0 e1                                      mov r1, r8
00314458  14 20 8d e2                                      add r2, sp, #0x14
0031445c  04 00 a0 e1                                      mov r0, r4
00314460  21 ff ff eb                                      bl #0x3140ec
00314464  30 30 9d e5                                      ldr r3, [sp, #0x30]
00314468  24 10 9a e5                                      ldr r1, [sl, #0x24]
0031446c  20 50 9a e5                                      ldr r5, [sl, #0x20]
00314470  2c 60 9d e5                                      ldr r6, [sp, #0x2c]
00314474  03 00 a0 e1                                      mov r0, r3
00314478  05 50 61 e0                                      rsb r5, r1, r5
0031447c  06 60 63 e0                                      rsb r6, r3, r6
00314480  06 00 55 e1                                      cmp r5, r6
00314484  05 20 a0 b1                                      movlt r2, r5
00314488  06 20 a0 a1                                      movge r2, r6
0031448c  53 e8 ff eb                                      bl #0x30e5e0
00314490  00 70 50 e2                                      subs r7, r0, #0
00314494  04 00 00 1a                                      bne #0x3144ac
00314498  05 00 56 e1                                      cmp r6, r5
0031449c  00 70 e0 b3                                      mvnlt r7, #0
003144a0  01 00 00 ba                                      blt #0x3144ac
003144a4  00 70 a0 d3                                      movle r7, #0
003144a8  01 70 a0 c3                                      movgt r7, #1
003144ac  04 00 a0 e1                                      mov r0, r4
003144b0  3d fd ff eb                                      bl #0x3139ac
003144b4  00 00 57 e3                                      cmp r7, #0
003144b8  00 00 00 aa                                      bge #0x3144c0
003144bc  08 a0 9d e5                                      ldr sl, [sp, #8]
003144c0  0c 20 9d e5                                      ldr r2, [sp, #0xc]
003144c4  0a 00 a0 e1                                      mov r0, sl
003144c8  02 30 9b e7                                      ldr r3, [fp, r2]
003144cc  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
003144d0  00 30 93 e5                                      ldr r3, [r3]
003144d4  03 00 52 e1                                      cmp r2, r3
003144d8  01 00 00 1a                                      bne #0x3144e4
003144dc  54 d0 8d e2                                      add sp, sp, #0x54
003144e0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
003144e4  89 e7 ff eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003144e8  00 07 68 00 ac 40 00 00                          .byte 0x00, 0x07, 0x68, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x003144f0, declared_size=240, range_size=240, mode=arm
; class-group: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Savegame::SectionInfo>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Savegame::SectionInfo> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Savegame::SectionInfo> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Savegame::SectionInfo> > >
; alias: _ZNKSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsN8Savegame11SectionInfoEENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE14_M_lower_boundIA5_cEEPNS_18_Rb_tree_node_baseERKT_
; demangled: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Savegame::SectionInfo>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Savegame::SectionInfo> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Savegame::SectionInfo> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Savegame::SectionInfo> > >::_M_lower_bound<char [5]>(char const (&) [5]) const
; decoder-mode: arm
003144f0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003144f4  dc b0 9f e5                                      ldr fp, [pc, #0xdc]
003144f8  dc 20 9f e5                                      ldr r2, [pc, #0xdc]
003144fc  2c d0 4d e2                                      sub sp, sp, #0x2c
00314500  0b b0 8f e0                                      add fp, pc, fp
00314504  02 30 9b e7                                      ldr r3, [fp, r2]
00314508  04 20 8d e5                                      str r2, [sp, #4]
0031450c  00 90 a0 e1                                      mov sb, r0
00314510  00 30 93 e5                                      ldr r3, [r3]
00314514  01 80 a0 e1                                      mov r8, r1
00314518  24 30 8d e5                                      str r3, [sp, #0x24]
0031451c  04 40 90 e5                                      ldr r4, [r0, #4]
00314520  00 00 54 e3                                      cmp r4, #0
00314524  21 00 00 0a                                      beq #0x3145b0
00314528  0c 70 8d e2                                      add r7, sp, #0xc
0031452c  08 a0 8d e2                                      add sl, sp, #8
00314530  08 10 a0 e1                                      mov r1, r8
00314534  0a 20 a0 e1                                      mov r2, sl
00314538  07 00 a0 e1                                      mov r0, r7
0031453c  ea fe ff eb                                      bl #0x3140ec
00314540  24 30 94 e5                                      ldr r3, [r4, #0x24]
00314544  20 10 9d e5                                      ldr r1, [sp, #0x20]
00314548  20 60 94 e5                                      ldr r6, [r4, #0x20]
0031454c  1c 50 9d e5                                      ldr r5, [sp, #0x1c]
00314550  03 00 a0 e1                                      mov r0, r3
00314554  06 60 63 e0                                      rsb r6, r3, r6
00314558  05 50 61 e0                                      rsb r5, r1, r5
0031455c  06 00 55 e1                                      cmp r5, r6
00314560  05 20 a0 b1                                      movlt r2, r5
00314564  06 20 a0 a1                                      movge r2, r6
00314568  1c e8 ff eb                                      bl #0x30e5e0
0031456c  00 30 50 e2                                      subs r3, r0, #0
00314570  04 00 00 1a                                      bne #0x314588
00314574  05 00 56 e1                                      cmp r6, r5
00314578  00 30 e0 b3                                      mvnlt r3, #0
0031457c  01 00 00 ba                                      blt #0x314588
00314580  00 30 a0 d3                                      movle r3, #0
00314584  01 30 a0 c3                                      movgt r3, #1
00314588  07 00 a0 e1                                      mov r0, r7
0031458c  00 30 8d e5                                      str r3, [sp]
00314590  05 fd ff eb                                      bl #0x3139ac
00314594  00 30 9d e5                                      ldr r3, [sp]
00314598  00 00 53 e3                                      cmp r3, #0
0031459c  04 90 a0 a1                                      movge sb, r4
003145a0  0c 40 94 b5                                      ldrlt r4, [r4, #0xc]
003145a4  08 40 94 a5                                      ldrge r4, [r4, #8]
003145a8  00 00 54 e3                                      cmp r4, #0
003145ac  df ff ff 1a                                      bne #0x314530
003145b0  04 20 9d e5                                      ldr r2, [sp, #4]
003145b4  09 00 a0 e1                                      mov r0, sb
003145b8  02 30 9b e7                                      ldr r3, [fp, r2]
003145bc  24 20 9d e5                                      ldr r2, [sp, #0x24]
003145c0  00 30 93 e5                                      ldr r3, [r3]
003145c4  03 00 52 e1                                      cmp r2, r3
003145c8  01 00 00 1a                                      bne #0x3145d4
003145cc  2c d0 8d e2                                      add sp, sp, #0x2c
003145d0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
003145d4  4d e7 ff eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003145d8  90 05 68 00 ac 40 00 00                          .byte 0x90, 0x05, 0x68, 0x00, 0xac, 0x40, 0x00, 0x00

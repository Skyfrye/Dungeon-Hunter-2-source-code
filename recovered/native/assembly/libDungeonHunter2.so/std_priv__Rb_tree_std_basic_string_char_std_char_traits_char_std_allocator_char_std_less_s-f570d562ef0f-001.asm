; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0046cbd8, declared_size=64, range_size=64, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, SavegameManager::_GameOption>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, SavegameManager::_GameOption> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, SavegameManager::_GameOption> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, SavegameManager::_GameOption> > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsN15SavegameManager11_GameOptionEENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE8_M_eraseEPNS_18_Rb_tree_node_baseE
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, SavegameManager::_GameOption>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, SavegameManager::_GameOption> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, SavegameManager::_GameOption> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, SavegameManager::_GameOption> > >::_M_erase(std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
0046cbd8  70 40 2d e9                                      push {r4, r5, r6, lr}
0046cbdc  00 40 51 e2                                      subs r4, r1, #0
0046cbe0  00 60 a0 e1                                      mov r6, r0
0046cbe4  0a 00 00 0a                                      beq #0x46cc14
0046cbe8  0c 10 94 e5                                      ldr r1, [r4, #0xc]
0046cbec  06 00 a0 e1                                      mov r0, r6
0046cbf0  f8 ff ff eb                                      bl #0x46cbd8
0046cbf4  08 50 94 e5                                      ldr r5, [r4, #8]
0046cbf8  10 00 84 e2                                      add r0, r4, #0x10
0046cbfc  94 ad fa eb                                      bl #0x318254
0046cc00  04 00 a0 e1                                      mov r0, r4
0046cc04  30 10 a0 e3                                      mov r1, #0x30
0046cc08  bc 70 0a eb                                      bl #0x708f00
0046cc0c  00 40 55 e2                                      subs r4, r5, #0
0046cc10  f4 ff ff 1a                                      bne #0x46cbe8
0046cc14  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0046dacc, declared_size=96, range_size=96, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, SavegameManager::_GameOption>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, SavegameManager::_GameOption> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, SavegameManager::_GameOption> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, SavegameManager::_GameOption> > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsN15SavegameManager11_GameOptionEENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE14_M_create_nodeERKS7_
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, SavegameManager::_GameOption>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, SavegameManager::_GameOption> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, SavegameManager::_GameOption> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, SavegameManager::_GameOption> > >::_M_create_node(std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, SavegameManager::_GameOption> const&)
; decoder-mode: arm
0046dacc  30 40 2d e9                                      push {r4, r5, lr}
0046dad0  0c d0 4d e2                                      sub sp, sp, #0xc
0046dad4  30 30 a0 e3                                      mov r3, #0x30
0046dad8  08 00 8d e2                                      add r0, sp, #8
0046dadc  04 30 20 e5                                      str r3, [r0, #-4]!
0046dae0  01 50 a0 e1                                      mov r5, r1
0046dae4  f5 6c 0a eb                                      bl #0x708ec0
0046dae8  00 40 a0 e1                                      mov r4, r0
0046daec  10 00 80 e2                                      add r0, r0, #0x10
0046daf0  20 00 84 e5                                      str r0, [r4, #0x20]
0046daf4  24 00 84 e5                                      str r0, [r4, #0x24]
0046daf8  10 20 95 e5                                      ldr r2, [r5, #0x10]
0046dafc  14 10 95 e5                                      ldr r1, [r5, #0x14]
0046db00  f8 8e fa eb                                      bl #0x3116e8
0046db04  18 20 95 e5                                      ldr r2, [r5, #0x18]
0046db08  00 30 a0 e3                                      mov r3, #0
0046db0c  04 00 a0 e1                                      mov r0, r4
0046db10  28 20 84 e5                                      str r2, [r4, #0x28]
0046db14  1c 20 95 e5                                      ldr r2, [r5, #0x1c]
0046db18  0c 30 84 e5                                      str r3, [r4, #0xc]
0046db1c  08 30 84 e5                                      str r3, [r4, #8]
0046db20  2c 20 84 e5                                      str r2, [r4, #0x2c]
0046db24  0c d0 8d e2                                      add sp, sp, #0xc
0046db28  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x0046db2c, declared_size=240, range_size=240, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, SavegameManager::_GameOption>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, SavegameManager::_GameOption> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, SavegameManager::_GameOption> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, SavegameManager::_GameOption> > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsN15SavegameManager11_GameOptionEENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE9_M_insertEPNS_18_Rb_tree_node_baseERKS7_SF_SF_
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, SavegameManager::_GameOption>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, SavegameManager::_GameOption> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, SavegameManager::_GameOption> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, SavegameManager::_GameOption> > >::_M_insert(std::priv::_Rb_tree_node_base*, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, SavegameManager::_GameOption> const&, std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
0046db2c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0046db30  02 00 51 e1                                      cmp r1, r2
0046db34  0c d0 4d e2                                      sub sp, sp, #0xc
0046db38  01 40 a0 e1                                      mov r4, r1
0046db3c  02 50 a0 e1                                      mov r5, r2
0046db40  00 60 a0 e1                                      mov r6, r0
0046db44  23 00 00 0a                                      beq #0x46dbd8
0046db48  24 20 9d e5                                      ldr r2, [sp, #0x24]
0046db4c  00 00 52 e3                                      cmp r2, #0
0046db50  12 00 00 0a                                      beq #0x46dba0
0046db54  03 10 a0 e1                                      mov r1, r3
0046db58  04 00 a0 e1                                      mov r0, r4
0046db5c  da ff ff eb                                      bl #0x46dacc
0046db60  0c 00 85 e5                                      str r0, [r5, #0xc]
0046db64  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0046db68  00 70 a0 e1                                      mov r7, r0
0046db6c  03 00 55 e1                                      cmp r5, r3
0046db70  16 00 00 0a                                      beq #0x46dbd0
0046db74  07 00 a0 e1                                      mov r0, r7
0046db78  04 50 87 e5                                      str r5, [r7, #4]
0046db7c  04 10 84 e2                                      add r1, r4, #4
0046db80  f6 96 fa eb                                      bl #0x313760
0046db84  10 30 94 e5                                      ldr r3, [r4, #0x10]
0046db88  06 00 a0 e1                                      mov r0, r6
0046db8c  01 30 83 e2                                      add r3, r3, #1
0046db90  10 30 84 e5                                      str r3, [r4, #0x10]
0046db94  00 70 86 e5                                      str r7, [r6]
0046db98  0c d0 8d e2                                      add sp, sp, #0xc
0046db9c  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0046dba0  20 20 9d e5                                      ldr r2, [sp, #0x20]
0046dba4  00 00 52 e3                                      cmp r2, #0
0046dba8  12 00 00 0a                                      beq #0x46dbf8
0046dbac  03 10 a0 e1                                      mov r1, r3
0046dbb0  04 00 a0 e1                                      mov r0, r4
0046dbb4  c4 ff ff eb                                      bl #0x46dacc
0046dbb8  08 00 85 e5                                      str r0, [r5, #8]
0046dbbc  08 30 94 e5                                      ldr r3, [r4, #8]
0046dbc0  00 70 a0 e1                                      mov r7, r0
0046dbc4  03 00 55 e1                                      cmp r5, r3
0046dbc8  08 00 84 05                                      streq r0, [r4, #8]
0046dbcc  e8 ff ff ea                                      b #0x46db74
0046dbd0  0c 70 84 e5                                      str r7, [r4, #0xc]
0046dbd4  e6 ff ff ea                                      b #0x46db74
0046dbd8  03 10 a0 e1                                      mov r1, r3
0046dbdc  04 00 a0 e1                                      mov r0, r4
0046dbe0  b9 ff ff eb                                      bl #0x46dacc
0046dbe4  00 70 a0 e1                                      mov r7, r0
0046dbe8  08 00 84 e5                                      str r0, [r4, #8]
0046dbec  04 00 84 e5                                      str r0, [r4, #4]
0046dbf0  0c 00 84 e5                                      str r0, [r4, #0xc]
0046dbf4  de ff ff ea                                      b #0x46db74
0046dbf8  14 00 81 e2                                      add r0, r1, #0x14
0046dbfc  10 20 85 e2                                      add r2, r5, #0x10
0046dc00  03 10 a0 e1                                      mov r1, r3
0046dc04  04 30 8d e5                                      str r3, [sp, #4]
0046dc08  fa 97 fa eb                                      bl #0x313bf8
0046dc0c  00 00 50 e3                                      cmp r0, #0
0046dc10  04 30 9d e5                                      ldr r3, [sp, #4]
0046dc14  ce ff ff 0a                                      beq #0x46db54
0046dc18  e3 ff ff ea                                      b #0x46dbac

; FUNCTION 0x0046dc1c, declared_size=536, range_size=536, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, SavegameManager::_GameOption>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, SavegameManager::_GameOption> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, SavegameManager::_GameOption> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, SavegameManager::_GameOption> > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsN15SavegameManager11_GameOptionEENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE13insert_uniqueERKS7_
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, SavegameManager::_GameOption>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, SavegameManager::_GameOption> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, SavegameManager::_GameOption> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, SavegameManager::_GameOption> > >::insert_unique(std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, SavegameManager::_GameOption> const&)
; decoder-mode: arm
0046dc1c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0046dc20  04 50 91 e5                                      ldr r5, [r1, #4]
0046dc24  14 d0 4d e2                                      sub sp, sp, #0x14
0046dc28  01 90 a0 e1                                      mov sb, r1
0046dc2c  00 00 55 e3                                      cmp r5, #0
0046dc30  00 40 a0 e1                                      mov r4, r0
0046dc34  02 80 a0 e1                                      mov r8, r2
0046dc38  38 00 00 0a                                      beq #0x46dd20
0046dc3c  14 70 92 e5                                      ldr r7, [r2, #0x14]
0046dc40  10 b0 92 e5                                      ldr fp, [r2, #0x10]
0046dc44  0b a0 67 e0                                      rsb sl, r7, fp
0046dc48  04 00 00 ea                                      b #0x46dc60
0046dc4c  08 30 95 e5                                      ldr r3, [r5, #8]
0046dc50  01 10 a0 e3                                      mov r1, #1
0046dc54  00 00 53 e3                                      cmp r3, #0
0046dc58  16 00 00 0a                                      beq #0x46dcb8
0046dc5c  03 50 a0 e1                                      mov r5, r3
0046dc60  24 30 95 e5                                      ldr r3, [r5, #0x24]
0046dc64  20 60 95 e5                                      ldr r6, [r5, #0x20]
0046dc68  07 00 a0 e1                                      mov r0, r7
0046dc6c  03 10 a0 e1                                      mov r1, r3
0046dc70  06 60 63 e0                                      rsb r6, r3, r6
0046dc74  0a 00 56 e1                                      cmp r6, sl
0046dc78  06 20 a0 b1                                      movlt r2, r6
0046dc7c  0a 20 a0 a1                                      movge r2, sl
0046dc80  56 82 fa eb                                      bl #0x30e5e0
0046dc84  00 00 50 e3                                      cmp r0, #0
0046dc88  05 20 a0 e1                                      mov r2, r5
0046dc8c  03 00 00 1a                                      bne #0x46dca0
0046dc90  06 00 5a e1                                      cmp sl, r6
0046dc94  ec ff ff ba                                      blt #0x46dc4c
0046dc98  00 00 a0 d3                                      movle r0, #0
0046dc9c  01 00 a0 c3                                      movgt r0, #1
0046dca0  00 00 50 e3                                      cmp r0, #0
0046dca4  e8 ff ff ba                                      blt #0x46dc4c
0046dca8  0c 30 95 e5                                      ldr r3, [r5, #0xc]
0046dcac  00 10 a0 e3                                      mov r1, #0
0046dcb0  00 00 53 e3                                      cmp r3, #0
0046dcb4  e8 ff ff 1a                                      bne #0x46dc5c
0046dcb8  00 00 51 e3                                      cmp r1, #0
0046dcbc  05 a0 a0 01                                      moveq sl, r5
0046dcc0  17 00 00 1a                                      bne #0x46dd24
0046dcc4  24 00 92 e5                                      ldr r0, [r2, #0x24]
0046dcc8  20 60 92 e5                                      ldr r6, [r2, #0x20]
0046dccc  0b b0 67 e0                                      rsb fp, r7, fp
0046dcd0  07 10 a0 e1                                      mov r1, r7
0046dcd4  06 60 60 e0                                      rsb r6, r0, r6
0046dcd8  06 00 5b e1                                      cmp fp, r6
0046dcdc  0b 20 a0 b1                                      movlt r2, fp
0046dce0  06 20 a0 a1                                      movge r2, r6
0046dce4  3d 82 fa eb                                      bl #0x30e5e0
0046dce8  00 00 50 e3                                      cmp r0, #0
0046dcec  03 00 00 1a                                      bne #0x46dd00
0046dcf0  0b 00 56 e1                                      cmp r6, fp
0046dcf4  20 00 00 ba                                      blt #0x46dd7c
0046dcf8  00 00 a0 d3                                      movle r0, #0
0046dcfc  01 00 a0 c3                                      movgt r0, #1
0046dd00  00 00 50 e3                                      cmp r0, #0
0046dd04  00 30 a0 a3                                      movge r3, #0
0046dd08  00 a0 84 a5                                      strge sl, [r4]
0046dd0c  04 30 c4 a5                                      strbge r3, [r4, #4]
0046dd10  19 00 00 ba                                      blt #0x46dd7c
0046dd14  04 00 a0 e1                                      mov r0, r4
0046dd18  14 d0 8d e2                                      add sp, sp, #0x14
0046dd1c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0046dd20  01 50 a0 e1                                      mov r5, r1
0046dd24  08 30 99 e5                                      ldr r3, [sb, #8]
0046dd28  03 00 55 e1                                      cmp r5, r3
0046dd2c  32 00 00 0a                                      beq #0x46ddfc
0046dd30  00 30 d5 e5                                      ldrb r3, [r5]
0046dd34  00 00 53 e3                                      cmp r3, #0
0046dd38  03 00 00 1a                                      bne #0x46dd4c
0046dd3c  04 30 95 e5                                      ldr r3, [r5, #4]
0046dd40  04 30 93 e5                                      ldr r3, [r3, #4]
0046dd44  03 00 55 e1                                      cmp r5, r3
0046dd48  26 00 00 0a                                      beq #0x46dde8
0046dd4c  08 20 95 e5                                      ldr r2, [r5, #8]
0046dd50  00 00 52 e3                                      cmp r2, #0
0046dd54  01 00 00 1a                                      bne #0x46dd60
0046dd58  14 00 00 ea                                      b #0x46ddb0
0046dd5c  03 20 a0 e1                                      mov r2, r3
0046dd60  0c 30 92 e5                                      ldr r3, [r2, #0xc]
0046dd64  00 00 53 e3                                      cmp r3, #0
0046dd68  fb ff ff 1a                                      bne #0x46dd5c
0046dd6c  02 a0 a0 e1                                      mov sl, r2
0046dd70  14 70 98 e5                                      ldr r7, [r8, #0x14]
0046dd74  10 b0 98 e5                                      ldr fp, [r8, #0x10]
0046dd78  d1 ff ff ea                                      b #0x46dcc4
0046dd7c  00 c0 a0 e3                                      mov ip, #0
0046dd80  05 20 a0 e1                                      mov r2, r5
0046dd84  08 30 a0 e1                                      mov r3, r8
0046dd88  09 10 a0 e1                                      mov r1, sb
0046dd8c  08 00 8d e2                                      add r0, sp, #8
0046dd90  04 c0 8d e5                                      str ip, [sp, #4]
0046dd94  00 c0 8d e5                                      str ip, [sp]
0046dd98  63 ff ff eb                                      bl #0x46db2c
0046dd9c  08 30 9d e5                                      ldr r3, [sp, #8]
0046dda0  01 20 a0 e3                                      mov r2, #1
0046dda4  04 20 c4 e5                                      strb r2, [r4, #4]
0046dda8  00 30 84 e5                                      str r3, [r4]
0046ddac  d8 ff ff ea                                      b #0x46dd14
0046ddb0  04 30 95 e5                                      ldr r3, [r5, #4]
0046ddb4  08 20 93 e5                                      ldr r2, [r3, #8]
0046ddb8  02 00 55 e1                                      cmp r5, r2
0046ddbc  01 00 00 0a                                      beq #0x46ddc8
0046ddc0  19 00 00 ea                                      b #0x46de2c
0046ddc4  02 30 a0 e1                                      mov r3, r2
0046ddc8  04 20 93 e5                                      ldr r2, [r3, #4]
0046ddcc  08 10 92 e5                                      ldr r1, [r2, #8]
0046ddd0  03 00 51 e1                                      cmp r1, r3
0046ddd4  fa ff ff 0a                                      beq #0x46ddc4
0046ddd8  14 70 98 e5                                      ldr r7, [r8, #0x14]
0046dddc  10 b0 98 e5                                      ldr fp, [r8, #0x10]
0046dde0  02 a0 a0 e1                                      mov sl, r2
0046dde4  b6 ff ff ea                                      b #0x46dcc4
0046dde8  0c 20 95 e5                                      ldr r2, [r5, #0xc]
0046ddec  14 70 98 e5                                      ldr r7, [r8, #0x14]
0046ddf0  10 b0 98 e5                                      ldr fp, [r8, #0x10]
0046ddf4  02 a0 a0 e1                                      mov sl, r2
0046ddf8  b1 ff ff ea                                      b #0x46dcc4
0046ddfc  05 20 a0 e1                                      mov r2, r5
0046de00  08 30 a0 e1                                      mov r3, r8
0046de04  00 c0 a0 e3                                      mov ip, #0
0046de08  09 10 a0 e1                                      mov r1, sb
0046de0c  0c 00 8d e2                                      add r0, sp, #0xc
0046de10  20 10 8d e8                                      stm sp, {r5, ip}
0046de14  44 ff ff eb                                      bl #0x46db2c
0046de18  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0046de1c  01 20 a0 e3                                      mov r2, #1
0046de20  04 20 c4 e5                                      strb r2, [r4, #4]
0046de24  00 30 84 e5                                      str r3, [r4]
0046de28  b9 ff ff ea                                      b #0x46dd14
0046de2c  03 20 a0 e1                                      mov r2, r3
0046de30  cd ff ff ea                                      b #0x46dd6c

; FUNCTION 0x0046de34, declared_size=1284, range_size=1284, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, SavegameManager::_GameOption>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, SavegameManager::_GameOption> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, SavegameManager::_GameOption> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, SavegameManager::_GameOption> > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsN15SavegameManager11_GameOptionEENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE13insert_uniqueENS_17_Rb_tree_iteratorIS7_SB_EERKS7_
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, SavegameManager::_GameOption>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, SavegameManager::_GameOption> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, SavegameManager::_GameOption> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, SavegameManager::_GameOption> > >::insert_unique(std::priv::_Rb_tree_iterator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, SavegameManager::_GameOption>, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, SavegameManager::_GameOption> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, SavegameManager::_GameOption> const&)
; decoder-mode: arm
0046de34  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0046de38  44 d0 4d e2                                      sub sp, sp, #0x44
0046de3c  14 20 8d e5                                      str r2, [sp, #0x14]
0046de40  00 50 92 e5                                      ldr r5, [r2]
0046de44  08 20 91 e5                                      ldr r2, [r1, #8]
0046de48  01 60 a0 e1                                      mov r6, r1
0046de4c  00 70 a0 e1                                      mov r7, r0
0046de50  02 00 55 e1                                      cmp r5, r2
0046de54  03 80 a0 e1                                      mov r8, r3
0046de58  7c 00 00 0a                                      beq #0x46e050
0046de5c  01 00 55 e1                                      cmp r5, r1
0046de60  d0 00 00 0a                                      beq #0x46e1a8
0046de64  00 30 d5 e5                                      ldrb r3, [r5]
0046de68  00 00 53 e3                                      cmp r3, #0
0046de6c  35 00 00 0a                                      beq #0x46df48
0046de70  08 40 95 e5                                      ldr r4, [r5, #8]
0046de74  00 00 54 e3                                      cmp r4, #0
0046de78  01 00 00 1a                                      bne #0x46de84
0046de7c  39 00 00 ea                                      b #0x46df68
0046de80  03 40 a0 e1                                      mov r4, r3
0046de84  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0046de88  00 00 53 e3                                      cmp r3, #0
0046de8c  fb ff ff 1a                                      bne #0x46de80
0046de90  24 30 95 e5                                      ldr r3, [r5, #0x24]
0046de94  14 90 98 e5                                      ldr sb, [r8, #0x14]
0046de98  10 b0 98 e5                                      ldr fp, [r8, #0x10]
0046de9c  20 20 95 e5                                      ldr r2, [r5, #0x20]
0046dea0  03 10 a0 e1                                      mov r1, r3
0046dea4  0b b0 69 e0                                      rsb fp, sb, fp
0046dea8  02 20 63 e0                                      rsb r2, r3, r2
0046deac  18 20 8d e5                                      str r2, [sp, #0x18]
0046deb0  09 00 a0 e1                                      mov r0, sb
0046deb4  0b 00 52 e1                                      cmp r2, fp
0046deb8  0b 20 a0 a1                                      movge r2, fp
0046debc  0c 30 8d e5                                      str r3, [sp, #0xc]
0046dec0  1c 20 8d e5                                      str r2, [sp, #0x1c]
0046dec4  c5 81 fa eb                                      bl #0x30e5e0
0046dec8  00 00 50 e3                                      cmp r0, #0
0046decc  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0046ded0  05 00 00 1a                                      bne #0x46deec
0046ded4  18 20 9d e5                                      ldr r2, [sp, #0x18]
0046ded8  02 00 5b e1                                      cmp fp, r2
0046dedc  00 00 e0 b3                                      mvnlt r0, #0
0046dee0  01 00 00 ba                                      blt #0x46deec
0046dee4  00 00 a0 d3                                      movle r0, #0
0046dee8  01 00 a0 c3                                      movgt r0, #1
0046deec  a0 cf b0 e1                                      lsrs ip, r0, #0x1f
0046def0  28 00 00 1a                                      bne #0x46df98
0046def4  0c 40 95 e5                                      ldr r4, [r5, #0xc]
0046def8  00 00 54 e3                                      cmp r4, #0
0046defc  01 00 00 1a                                      bne #0x46df08
0046df00  cc 00 00 ea                                      b #0x46e238
0046df04  02 40 a0 e1                                      mov r4, r2
0046df08  08 20 94 e5                                      ldr r2, [r4, #8]
0046df0c  00 00 52 e3                                      cmp r2, #0
0046df10  fb ff ff 1a                                      bne #0x46df04
0046df14  00 00 5c e3                                      cmp ip, #0
0046df18  43 00 00 1a                                      bne #0x46e02c
0046df1c  03 00 a0 e1                                      mov r0, r3
0046df20  09 10 a0 e1                                      mov r1, sb
0046df24  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0046df28  ac 81 fa eb                                      bl #0x30e5e0
0046df2c  00 00 50 e3                                      cmp r0, #0
0046df30  34 00 00 1a                                      bne #0x46e008
0046df34  18 30 9d e5                                      ldr r3, [sp, #0x18]
0046df38  03 00 5b e1                                      cmp fp, r3
0046df3c  32 00 00 ca                                      bgt #0x46e00c
0046df40  00 50 87 e5                                      str r5, [r7]
0046df44  3e 00 00 ea                                      b #0x46e044
0046df48  04 30 95 e5                                      ldr r3, [r5, #4]
0046df4c  04 30 93 e5                                      ldr r3, [r3, #4]
0046df50  03 00 55 e1                                      cmp r5, r3
0046df54  0c 40 95 05                                      ldreq r4, [r5, #0xc]
0046df58  cc ff ff 0a                                      beq #0x46de90
0046df5c  08 40 95 e5                                      ldr r4, [r5, #8]
0046df60  00 00 54 e3                                      cmp r4, #0
0046df64  c6 ff ff 1a                                      bne #0x46de84
0046df68  04 40 95 e5                                      ldr r4, [r5, #4]
0046df6c  08 30 94 e5                                      ldr r3, [r4, #8]
0046df70  03 00 55 e1                                      cmp r5, r3
0046df74  01 00 00 0a                                      beq #0x46df80
0046df78  c4 ff ff ea                                      b #0x46de90
0046df7c  03 40 a0 e1                                      mov r4, r3
0046df80  04 30 94 e5                                      ldr r3, [r4, #4]
0046df84  08 20 93 e5                                      ldr r2, [r3, #8]
0046df88  04 00 52 e1                                      cmp r2, r4
0046df8c  fa ff ff 0a                                      beq #0x46df7c
0046df90  03 40 a0 e1                                      mov r4, r3
0046df94  bd ff ff ea                                      b #0x46de90
0046df98  24 20 94 e5                                      ldr r2, [r4, #0x24]
0046df9c  20 a0 94 e5                                      ldr sl, [r4, #0x20]
0046dfa0  09 10 a0 e1                                      mov r1, sb
0046dfa4  02 00 a0 e1                                      mov r0, r2
0046dfa8  0a a0 62 e0                                      rsb sl, r2, sl
0046dfac  0a 00 5b e1                                      cmp fp, sl
0046dfb0  0b 20 a0 b1                                      movlt r2, fp
0046dfb4  0a 20 a0 a1                                      movge r2, sl
0046dfb8  0c 30 8d e5                                      str r3, [sp, #0xc]
0046dfbc  10 c0 8d e5                                      str ip, [sp, #0x10]
0046dfc0  86 81 fa eb                                      bl #0x30e5e0
0046dfc4  00 00 50 e3                                      cmp r0, #0
0046dfc8  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0046dfcc  10 c0 9d e5                                      ldr ip, [sp, #0x10]
0046dfd0  6f 00 00 1a                                      bne #0x46e194
0046dfd4  0a 00 5b e1                                      cmp fp, sl
0046dfd8  c5 ff ff da                                      ble #0x46def4
0046dfdc  0c c0 94 e5                                      ldr ip, [r4, #0xc]
0046dfe0  00 00 5c e3                                      cmp ip, #0
0046dfe4  62 00 00 0a                                      beq #0x46e174
0046dfe8  00 c0 a0 e3                                      mov ip, #0
0046dfec  06 10 a0 e1                                      mov r1, r6
0046dff0  05 20 a0 e1                                      mov r2, r5
0046dff4  08 30 a0 e1                                      mov r3, r8
0046dff8  07 00 a0 e1                                      mov r0, r7
0046dffc  20 10 8d e8                                      stm sp, {r5, ip}
0046e000  c9 fe ff eb                                      bl #0x46db2c
0046e004  0e 00 00 ea                                      b #0x46e044
0046e008  cc ff ff aa                                      bge #0x46df40
0046e00c  04 00 56 e1                                      cmp r6, r4
0046e010  9b 00 00 0a                                      beq #0x46e284
0046e014  14 00 86 e2                                      add r0, r6, #0x14
0046e018  08 10 a0 e1                                      mov r1, r8
0046e01c  10 20 84 e2                                      add r2, r4, #0x10
0046e020  f4 96 fa eb                                      bl #0x313bf8
0046e024  00 00 50 e3                                      cmp r0, #0
0046e028  93 00 00 1a                                      bne #0x46e27c
0046e02c  06 10 a0 e1                                      mov r1, r6
0046e030  08 20 a0 e1                                      mov r2, r8
0046e034  20 00 8d e2                                      add r0, sp, #0x20
0046e038  f7 fe ff eb                                      bl #0x46dc1c
0046e03c  20 30 9d e5                                      ldr r3, [sp, #0x20]
0046e040  00 30 87 e5                                      str r3, [r7]
0046e044  07 00 a0 e1                                      mov r0, r7
0046e048  44 d0 8d e2                                      add sp, sp, #0x44
0046e04c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0046e050  10 30 91 e5                                      ldr r3, [r1, #0x10]
0046e054  00 00 53 e3                                      cmp r3, #0
0046e058  9f 00 00 0a                                      beq #0x46e2dc
0046e05c  14 30 98 e5                                      ldr r3, [r8, #0x14]
0046e060  24 10 95 e5                                      ldr r1, [r5, #0x24]
0046e064  10 40 98 e5                                      ldr r4, [r8, #0x10]
0046e068  20 a0 95 e5                                      ldr sl, [r5, #0x20]
0046e06c  03 00 a0 e1                                      mov r0, r3
0046e070  04 40 63 e0                                      rsb r4, r3, r4
0046e074  0a a0 61 e0                                      rsb sl, r1, sl
0046e078  04 00 5a e1                                      cmp sl, r4
0046e07c  0a 20 a0 b1                                      movlt r2, sl
0046e080  04 20 a0 a1                                      movge r2, r4
0046e084  55 81 fa eb                                      bl #0x30e5e0
0046e088  00 00 50 e3                                      cmp r0, #0
0046e08c  03 00 00 1a                                      bne #0x46e0a0
0046e090  0a 00 54 e1                                      cmp r4, sl
0046e094  d3 ff ff ba                                      blt #0x46dfe8
0046e098  00 00 a0 d3                                      movle r0, #0
0046e09c  01 00 a0 c3                                      movgt r0, #1
0046e0a0  00 00 50 e3                                      cmp r0, #0
0046e0a4  cf ff ff ba                                      blt #0x46dfe8
0046e0a8  14 a0 86 e2                                      add sl, r6, #0x14
0046e0ac  10 10 85 e2                                      add r1, r5, #0x10
0046e0b0  0a 00 a0 e1                                      mov r0, sl
0046e0b4  08 20 a0 e1                                      mov r2, r8
0046e0b8  ce 96 fa eb                                      bl #0x313bf8
0046e0bc  00 00 50 e3                                      cmp r0, #0
0046e0c0  81 00 00 0a                                      beq #0x46e2cc
0046e0c4  14 30 9d e5                                      ldr r3, [sp, #0x14]
0046e0c8  00 c0 93 e5                                      ldr ip, [r3]
0046e0cc  0c 40 9c e5                                      ldr r4, [ip, #0xc]
0046e0d0  00 00 54 e3                                      cmp r4, #0
0046e0d4  22 00 00 1a                                      bne #0x46e164
0046e0d8  04 30 9c e5                                      ldr r3, [ip, #4]
0046e0dc  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0046e0e0  02 00 5c e1                                      cmp ip, r2
0046e0e4  0c 40 a0 11                                      movne r4, ip
0046e0e8  04 00 00 1a                                      bne #0x46e100
0046e0ec  03 40 a0 e1                                      mov r4, r3
0046e0f0  04 30 93 e5                                      ldr r3, [r3, #4]
0046e0f4  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0046e0f8  04 00 52 e1                                      cmp r2, r4
0046e0fc  fa ff ff 0a                                      beq #0x46e0ec
0046e100  0c 20 94 e5                                      ldr r2, [r4, #0xc]
0046e104  02 00 53 e1                                      cmp r3, r2
0046e108  03 40 a0 11                                      movne r4, r3
0046e10c  04 00 56 e1                                      cmp r6, r4
0046e110  7f 00 00 0a                                      beq #0x46e314
0046e114  0a 00 a0 e1                                      mov r0, sl
0046e118  08 10 a0 e1                                      mov r1, r8
0046e11c  10 20 84 e2                                      add r2, r4, #0x10
0046e120  b4 96 fa eb                                      bl #0x313bf8
0046e124  00 00 50 e3                                      cmp r0, #0
0046e128  60 00 00 0a                                      beq #0x46e2b0
0046e12c  14 20 9d e5                                      ldr r2, [sp, #0x14]
0046e130  00 c0 92 e5                                      ldr ip, [r2]
0046e134  0c e0 9c e5                                      ldr lr, [ip, #0xc]
0046e138  00 00 5e e3                                      cmp lr, #0
0046e13c  6c 00 00 0a                                      beq #0x46e2f4
0046e140  00 c0 a0 e3                                      mov ip, #0
0046e144  06 10 a0 e1                                      mov r1, r6
0046e148  04 20 a0 e1                                      mov r2, r4
0046e14c  08 30 a0 e1                                      mov r3, r8
0046e150  07 00 a0 e1                                      mov r0, r7
0046e154  10 10 8d e8                                      stm sp, {r4, ip}
0046e158  73 fe ff eb                                      bl #0x46db2c
0046e15c  b8 ff ff ea                                      b #0x46e044
0046e160  03 40 a0 e1                                      mov r4, r3
0046e164  08 30 94 e5                                      ldr r3, [r4, #8]
0046e168  00 00 53 e3                                      cmp r3, #0
0046e16c  fb ff ff 1a                                      bne #0x46e160
0046e170  e5 ff ff ea                                      b #0x46e10c
0046e174  06 10 a0 e1                                      mov r1, r6
0046e178  04 20 a0 e1                                      mov r2, r4
0046e17c  08 30 a0 e1                                      mov r3, r8
0046e180  07 00 a0 e1                                      mov r0, r7
0046e184  00 c0 8d e5                                      str ip, [sp]
0046e188  04 40 8d e5                                      str r4, [sp, #4]
0046e18c  66 fe ff eb                                      bl #0x46db2c
0046e190  ab ff ff ea                                      b #0x46e044
0046e194  56 ff ff aa                                      bge #0x46def4
0046e198  0c c0 94 e5                                      ldr ip, [r4, #0xc]
0046e19c  00 00 5c e3                                      cmp ip, #0
0046e1a0  90 ff ff 1a                                      bne #0x46dfe8
0046e1a4  f2 ff ff ea                                      b #0x46e174
0046e1a8  0c 40 95 e5                                      ldr r4, [r5, #0xc]
0046e1ac  14 10 93 e5                                      ldr r1, [r3, #0x14]
0046e1b0  10 90 93 e5                                      ldr sb, [r3, #0x10]
0046e1b4  20 a0 94 e5                                      ldr sl, [r4, #0x20]
0046e1b8  24 30 94 e5                                      ldr r3, [r4, #0x24]
0046e1bc  09 90 61 e0                                      rsb sb, r1, sb
0046e1c0  0a a0 63 e0                                      rsb sl, r3, sl
0046e1c4  0a 00 59 e1                                      cmp sb, sl
0046e1c8  09 20 a0 b1                                      movlt r2, sb
0046e1cc  0a 20 a0 a1                                      movge r2, sl
0046e1d0  03 00 a0 e1                                      mov r0, r3
0046e1d4  01 81 fa eb                                      bl #0x30e5e0
0046e1d8  00 00 50 e3                                      cmp r0, #0
0046e1dc  03 00 00 1a                                      bne #0x46e1f0
0046e1e0  09 00 5a e1                                      cmp sl, sb
0046e1e4  03 00 00 ba                                      blt #0x46e1f8
0046e1e8  00 00 a0 d3                                      movle r0, #0
0046e1ec  01 00 a0 c3                                      movgt r0, #1
0046e1f0  00 00 50 e3                                      cmp r0, #0
0046e1f4  08 00 00 aa                                      bge #0x46e21c
0046e1f8  00 c0 a0 e3                                      mov ip, #0
0046e1fc  06 10 a0 e1                                      mov r1, r6
0046e200  04 20 a0 e1                                      mov r2, r4
0046e204  08 30 a0 e1                                      mov r3, r8
0046e208  07 00 a0 e1                                      mov r0, r7
0046e20c  00 c0 8d e5                                      str ip, [sp]
0046e210  04 50 8d e5                                      str r5, [sp, #4]
0046e214  44 fe ff eb                                      bl #0x46db2c
0046e218  89 ff ff ea                                      b #0x46e044
0046e21c  06 10 a0 e1                                      mov r1, r6
0046e220  08 20 a0 e1                                      mov r2, r8
0046e224  28 00 8d e2                                      add r0, sp, #0x28
0046e228  7b fe ff eb                                      bl #0x46dc1c
0046e22c  28 30 9d e5                                      ldr r3, [sp, #0x28]
0046e230  00 30 87 e5                                      str r3, [r7]
0046e234  82 ff ff ea                                      b #0x46e044
0046e238  04 20 95 e5                                      ldr r2, [r5, #4]
0046e23c  0c 10 92 e5                                      ldr r1, [r2, #0xc]
0046e240  01 00 55 e1                                      cmp r5, r1
0046e244  05 40 a0 11                                      movne r4, r5
0046e248  04 00 00 0a                                      beq #0x46e260
0046e24c  0c 10 94 e5                                      ldr r1, [r4, #0xc]
0046e250  01 00 52 e1                                      cmp r2, r1
0046e254  02 40 a0 11                                      movne r4, r2
0046e258  2d ff ff ea                                      b #0x46df14
0046e25c  01 20 a0 e1                                      mov r2, r1
0046e260  04 10 92 e5                                      ldr r1, [r2, #4]
0046e264  0c 00 91 e5                                      ldr r0, [r1, #0xc]
0046e268  02 00 50 e1                                      cmp r0, r2
0046e26c  fa ff ff 0a                                      beq #0x46e25c
0046e270  02 40 a0 e1                                      mov r4, r2
0046e274  01 20 a0 e1                                      mov r2, r1
0046e278  f3 ff ff ea                                      b #0x46e24c
0046e27c  14 20 9d e5                                      ldr r2, [sp, #0x14]
0046e280  00 50 92 e5                                      ldr r5, [r2]
0046e284  0c c0 95 e5                                      ldr ip, [r5, #0xc]
0046e288  00 00 5c e3                                      cmp ip, #0
0046e28c  ab ff ff 1a                                      bne #0x46e140
0046e290  06 10 a0 e1                                      mov r1, r6
0046e294  05 20 a0 e1                                      mov r2, r5
0046e298  08 30 a0 e1                                      mov r3, r8
0046e29c  07 00 a0 e1                                      mov r0, r7
0046e2a0  00 c0 8d e5                                      str ip, [sp]
0046e2a4  04 50 8d e5                                      str r5, [sp, #4]
0046e2a8  1f fe ff eb                                      bl #0x46db2c
0046e2ac  64 ff ff ea                                      b #0x46e044
0046e2b0  06 10 a0 e1                                      mov r1, r6
0046e2b4  08 20 a0 e1                                      mov r2, r8
0046e2b8  30 00 8d e2                                      add r0, sp, #0x30
0046e2bc  56 fe ff eb                                      bl #0x46dc1c
0046e2c0  30 30 9d e5                                      ldr r3, [sp, #0x30]
0046e2c4  00 30 87 e5                                      str r3, [r7]
0046e2c8  5d ff ff ea                                      b #0x46e044
0046e2cc  14 20 9d e5                                      ldr r2, [sp, #0x14]
0046e2d0  00 30 92 e5                                      ldr r3, [r2]
0046e2d4  00 30 87 e5                                      str r3, [r7]
0046e2d8  59 ff ff ea                                      b #0x46e044
0046e2dc  08 20 a0 e1                                      mov r2, r8
0046e2e0  38 00 8d e2                                      add r0, sp, #0x38
0046e2e4  4c fe ff eb                                      bl #0x46dc1c
0046e2e8  38 30 9d e5                                      ldr r3, [sp, #0x38]
0046e2ec  00 30 87 e5                                      str r3, [r7]
0046e2f0  53 ff ff ea                                      b #0x46e044
0046e2f4  06 10 a0 e1                                      mov r1, r6
0046e2f8  0c 20 a0 e1                                      mov r2, ip
0046e2fc  08 30 a0 e1                                      mov r3, r8
0046e300  07 00 a0 e1                                      mov r0, r7
0046e304  00 e0 8d e5                                      str lr, [sp]
0046e308  04 c0 8d e5                                      str ip, [sp, #4]
0046e30c  06 fe ff eb                                      bl #0x46db2c
0046e310  4b ff ff ea                                      b #0x46e044
0046e314  00 e0 a0 e3                                      mov lr, #0
0046e318  06 10 a0 e1                                      mov r1, r6
0046e31c  0c 20 a0 e1                                      mov r2, ip
0046e320  08 30 a0 e1                                      mov r3, r8
0046e324  07 00 a0 e1                                      mov r0, r7
0046e328  00 e0 8d e5                                      str lr, [sp]
0046e32c  04 c0 8d e5                                      str ip, [sp, #4]
0046e330  fd fd ff eb                                      bl #0x46db2c
0046e334  42 ff ff ea                                      b #0x46e044

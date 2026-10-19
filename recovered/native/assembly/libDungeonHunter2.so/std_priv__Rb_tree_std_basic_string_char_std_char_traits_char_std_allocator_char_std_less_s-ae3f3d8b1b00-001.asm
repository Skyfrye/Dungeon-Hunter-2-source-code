; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00510c58, declared_size=64, range_size=64, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsP8PropertyENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE8_M_eraseEPNS_18_Rb_tree_node_baseE
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > >::_M_erase(std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
00510c58  70 40 2d e9                                      push {r4, r5, r6, lr}
00510c5c  00 40 51 e2                                      subs r4, r1, #0
00510c60  00 60 a0 e1                                      mov r6, r0
00510c64  0a 00 00 0a                                      beq #0x510c94
00510c68  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00510c6c  06 00 a0 e1                                      mov r0, r6
00510c70  f8 ff ff eb                                      bl #0x510c58
00510c74  08 50 94 e5                                      ldr r5, [r4, #8]
00510c78  10 00 84 e2                                      add r0, r4, #0x10
00510c7c  74 1d f8 eb                                      bl #0x318254
00510c80  04 00 a0 e1                                      mov r0, r4
00510c84  2c 10 a0 e3                                      mov r1, #0x2c
00510c88  9c e0 07 eb                                      bl #0x708f00
00510c8c  00 40 55 e2                                      subs r4, r5, #0
00510c90  f4 ff ff 1a                                      bne #0x510c68
00510c94  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0051103c, declared_size=76, range_size=76, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsP8PropertyENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE14_M_create_nodeERKS7_
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > >::_M_create_node(std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> const&)
; decoder-mode: arm
0051103c  30 40 2d e9                                      push {r4, r5, lr}
00511040  0c d0 4d e2                                      sub sp, sp, #0xc
00511044  2c 30 a0 e3                                      mov r3, #0x2c
00511048  08 00 8d e2                                      add r0, sp, #8
0051104c  04 30 20 e5                                      str r3, [r0, #-4]!
00511050  01 50 a0 e1                                      mov r5, r1
00511054  99 df 07 eb                                      bl #0x708ec0
00511058  05 10 a0 e1                                      mov r1, r5
0051105c  00 40 a0 e1                                      mov r4, r0
00511060  10 00 80 e2                                      add r0, r0, #0x10
00511064  2b 6a f8 eb                                      bl #0x32b918
00511068  18 20 95 e5                                      ldr r2, [r5, #0x18]
0051106c  00 30 a0 e3                                      mov r3, #0
00511070  0c 30 84 e5                                      str r3, [r4, #0xc]
00511074  28 20 84 e5                                      str r2, [r4, #0x28]
00511078  08 30 84 e5                                      str r3, [r4, #8]
0051107c  04 00 a0 e1                                      mov r0, r4
00511080  0c d0 8d e2                                      add sp, sp, #0xc
00511084  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x00511088, declared_size=168, range_size=168, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsP8PropertyENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE7_M_copyEPNS_18_Rb_tree_node_baseESF_
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > >::_M_copy(std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
00511088  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0051108c  01 40 a0 e1                                      mov r4, r1
00511090  10 10 81 e2                                      add r1, r1, #0x10
00511094  02 50 a0 e1                                      mov r5, r2
00511098  00 70 a0 e1                                      mov r7, r0
0051109c  e6 ff ff eb                                      bl #0x51103c
005110a0  00 30 d4 e5                                      ldrb r3, [r4]
005110a4  04 50 80 e5                                      str r5, [r0, #4]
005110a8  00 80 a0 e1                                      mov r8, r0
005110ac  00 30 c0 e5                                      strb r3, [r0]
005110b0  0c 10 94 e5                                      ldr r1, [r4, #0xc]
005110b4  00 00 51 e3                                      cmp r1, #0
005110b8  03 00 00 0a                                      beq #0x5110cc
005110bc  07 00 a0 e1                                      mov r0, r7
005110c0  08 20 a0 e1                                      mov r2, r8
005110c4  ef ff ff eb                                      bl #0x511088
005110c8  0c 00 88 e5                                      str r0, [r8, #0xc]
005110cc  08 50 94 e5                                      ldr r5, [r4, #8]
005110d0  00 00 55 e3                                      cmp r5, #0
005110d4  13 00 00 0a                                      beq #0x511128
005110d8  08 60 a0 e1                                      mov r6, r8
005110dc  10 10 85 e2                                      add r1, r5, #0x10
005110e0  07 00 a0 e1                                      mov r0, r7
005110e4  d4 ff ff eb                                      bl #0x51103c
005110e8  00 30 d5 e5                                      ldrb r3, [r5]
005110ec  00 40 a0 e1                                      mov r4, r0
005110f0  04 20 a0 e1                                      mov r2, r4
005110f4  00 30 c4 e5                                      strb r3, [r4]
005110f8  08 40 86 e5                                      str r4, [r6, #8]
005110fc  04 60 84 e5                                      str r6, [r4, #4]
00511100  0c 30 95 e5                                      ldr r3, [r5, #0xc]
00511104  07 00 a0 e1                                      mov r0, r7
00511108  04 60 a0 e1                                      mov r6, r4
0051110c  00 10 53 e2                                      subs r1, r3, #0
00511110  01 00 00 0a                                      beq #0x51111c
00511114  db ff ff eb                                      bl #0x511088
00511118  0c 00 84 e5                                      str r0, [r4, #0xc]
0051111c  08 50 95 e5                                      ldr r5, [r5, #8]
00511120  00 00 55 e3                                      cmp r5, #0
00511124  ec ff ff 1a                                      bne #0x5110dc
00511128  08 00 a0 e1                                      mov r0, r8
0051112c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00511130, declared_size=120, range_size=120, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsP8PropertyENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EEC1ERKSD_
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > >::_Rb_tree(std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > const&)
; decoder-mode: arm
00511130  70 40 2d e9                                      push {r4, r5, r6, lr}
00511134  00 30 a0 e3                                      mov r3, #0
00511138  00 40 a0 e1                                      mov r4, r0
0051113c  10 30 80 e5                                      str r3, [r0, #0x10]
00511140  04 30 80 e5                                      str r3, [r0, #4]
00511144  00 30 c0 e5                                      strb r3, [r0]
00511148  08 00 84 e5                                      str r0, [r4, #8]
0051114c  0c 00 84 e5                                      str r0, [r4, #0xc]
00511150  01 50 a0 e1                                      mov r5, r1
00511154  04 10 91 e5                                      ldr r1, [r1, #4]
00511158  03 00 51 e1                                      cmp r1, r3
0051115c  0d 00 00 0a                                      beq #0x511198
00511160  00 20 a0 e1                                      mov r2, r0
00511164  c7 ff ff eb                                      bl #0x511088
00511168  04 00 84 e5                                      str r0, [r4, #4]
0051116c  00 30 a0 e1                                      mov r3, r0
00511170  03 20 a0 e1                                      mov r2, r3
00511174  08 30 93 e5                                      ldr r3, [r3, #8]
00511178  00 00 53 e3                                      cmp r3, #0
0051117c  fb ff ff 1a                                      bne #0x511170
00511180  08 20 84 e5                                      str r2, [r4, #8]
00511184  00 30 a0 e1                                      mov r3, r0
00511188  0c 00 90 e5                                      ldr r0, [r0, #0xc]
0051118c  00 00 50 e3                                      cmp r0, #0
00511190  fb ff ff 1a                                      bne #0x511184
00511194  0c 30 84 e5                                      str r3, [r4, #0xc]
00511198  10 30 95 e5                                      ldr r3, [r5, #0x10]
0051119c  04 00 a0 e1                                      mov r0, r4
005111a0  10 30 84 e5                                      str r3, [r4, #0x10]
005111a4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x005111a8, declared_size=240, range_size=240, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsP8PropertyENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE9_M_insertEPNS_18_Rb_tree_node_baseERKS7_SF_SF_
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > >::_M_insert(std::priv::_Rb_tree_node_base*, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> const&, std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
005111a8  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
005111ac  02 00 51 e1                                      cmp r1, r2
005111b0  0c d0 4d e2                                      sub sp, sp, #0xc
005111b4  01 40 a0 e1                                      mov r4, r1
005111b8  02 50 a0 e1                                      mov r5, r2
005111bc  00 60 a0 e1                                      mov r6, r0
005111c0  23 00 00 0a                                      beq #0x511254
005111c4  24 20 9d e5                                      ldr r2, [sp, #0x24]
005111c8  00 00 52 e3                                      cmp r2, #0
005111cc  12 00 00 0a                                      beq #0x51121c
005111d0  03 10 a0 e1                                      mov r1, r3
005111d4  04 00 a0 e1                                      mov r0, r4
005111d8  97 ff ff eb                                      bl #0x51103c
005111dc  0c 00 85 e5                                      str r0, [r5, #0xc]
005111e0  0c 30 94 e5                                      ldr r3, [r4, #0xc]
005111e4  00 70 a0 e1                                      mov r7, r0
005111e8  03 00 55 e1                                      cmp r5, r3
005111ec  16 00 00 0a                                      beq #0x51124c
005111f0  07 00 a0 e1                                      mov r0, r7
005111f4  04 50 87 e5                                      str r5, [r7, #4]
005111f8  04 10 84 e2                                      add r1, r4, #4
005111fc  57 09 f8 eb                                      bl #0x313760
00511200  10 30 94 e5                                      ldr r3, [r4, #0x10]
00511204  06 00 a0 e1                                      mov r0, r6
00511208  01 30 83 e2                                      add r3, r3, #1
0051120c  10 30 84 e5                                      str r3, [r4, #0x10]
00511210  00 70 86 e5                                      str r7, [r6]
00511214  0c d0 8d e2                                      add sp, sp, #0xc
00511218  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0051121c  20 20 9d e5                                      ldr r2, [sp, #0x20]
00511220  00 00 52 e3                                      cmp r2, #0
00511224  12 00 00 0a                                      beq #0x511274
00511228  03 10 a0 e1                                      mov r1, r3
0051122c  04 00 a0 e1                                      mov r0, r4
00511230  81 ff ff eb                                      bl #0x51103c
00511234  08 00 85 e5                                      str r0, [r5, #8]
00511238  08 30 94 e5                                      ldr r3, [r4, #8]
0051123c  00 70 a0 e1                                      mov r7, r0
00511240  03 00 55 e1                                      cmp r5, r3
00511244  08 00 84 05                                      streq r0, [r4, #8]
00511248  e8 ff ff ea                                      b #0x5111f0
0051124c  0c 70 84 e5                                      str r7, [r4, #0xc]
00511250  e6 ff ff ea                                      b #0x5111f0
00511254  03 10 a0 e1                                      mov r1, r3
00511258  04 00 a0 e1                                      mov r0, r4
0051125c  76 ff ff eb                                      bl #0x51103c
00511260  00 70 a0 e1                                      mov r7, r0
00511264  08 00 84 e5                                      str r0, [r4, #8]
00511268  04 00 84 e5                                      str r0, [r4, #4]
0051126c  0c 00 84 e5                                      str r0, [r4, #0xc]
00511270  de ff ff ea                                      b #0x5111f0
00511274  14 00 81 e2                                      add r0, r1, #0x14
00511278  10 20 85 e2                                      add r2, r5, #0x10
0051127c  03 10 a0 e1                                      mov r1, r3
00511280  04 30 8d e5                                      str r3, [sp, #4]
00511284  5b 0a f8 eb                                      bl #0x313bf8
00511288  00 00 50 e3                                      cmp r0, #0
0051128c  04 30 9d e5                                      ldr r3, [sp, #4]
00511290  ce ff ff 0a                                      beq #0x5111d0
00511294  e3 ff ff ea                                      b #0x511228

; FUNCTION 0x00511a30, declared_size=536, range_size=536, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsP8PropertyENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE13insert_uniqueERKS7_
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > >::insert_unique(std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> const&)
; decoder-mode: arm
00511a30  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00511a34  04 50 91 e5                                      ldr r5, [r1, #4]
00511a38  14 d0 4d e2                                      sub sp, sp, #0x14
00511a3c  01 90 a0 e1                                      mov sb, r1
00511a40  00 00 55 e3                                      cmp r5, #0
00511a44  00 40 a0 e1                                      mov r4, r0
00511a48  02 80 a0 e1                                      mov r8, r2
00511a4c  38 00 00 0a                                      beq #0x511b34
00511a50  14 70 92 e5                                      ldr r7, [r2, #0x14]
00511a54  10 b0 92 e5                                      ldr fp, [r2, #0x10]
00511a58  0b a0 67 e0                                      rsb sl, r7, fp
00511a5c  04 00 00 ea                                      b #0x511a74
00511a60  08 30 95 e5                                      ldr r3, [r5, #8]
00511a64  01 10 a0 e3                                      mov r1, #1
00511a68  00 00 53 e3                                      cmp r3, #0
00511a6c  16 00 00 0a                                      beq #0x511acc
00511a70  03 50 a0 e1                                      mov r5, r3
00511a74  24 30 95 e5                                      ldr r3, [r5, #0x24]
00511a78  20 60 95 e5                                      ldr r6, [r5, #0x20]
00511a7c  07 00 a0 e1                                      mov r0, r7
00511a80  03 10 a0 e1                                      mov r1, r3
00511a84  06 60 63 e0                                      rsb r6, r3, r6
00511a88  0a 00 56 e1                                      cmp r6, sl
00511a8c  06 20 a0 b1                                      movlt r2, r6
00511a90  0a 20 a0 a1                                      movge r2, sl
00511a94  d1 f2 f7 eb                                      bl #0x30e5e0
00511a98  00 00 50 e3                                      cmp r0, #0
00511a9c  05 20 a0 e1                                      mov r2, r5
00511aa0  03 00 00 1a                                      bne #0x511ab4
00511aa4  06 00 5a e1                                      cmp sl, r6
00511aa8  ec ff ff ba                                      blt #0x511a60
00511aac  00 00 a0 d3                                      movle r0, #0
00511ab0  01 00 a0 c3                                      movgt r0, #1
00511ab4  00 00 50 e3                                      cmp r0, #0
00511ab8  e8 ff ff ba                                      blt #0x511a60
00511abc  0c 30 95 e5                                      ldr r3, [r5, #0xc]
00511ac0  00 10 a0 e3                                      mov r1, #0
00511ac4  00 00 53 e3                                      cmp r3, #0
00511ac8  e8 ff ff 1a                                      bne #0x511a70
00511acc  00 00 51 e3                                      cmp r1, #0
00511ad0  05 a0 a0 01                                      moveq sl, r5
00511ad4  17 00 00 1a                                      bne #0x511b38
00511ad8  24 00 92 e5                                      ldr r0, [r2, #0x24]
00511adc  20 60 92 e5                                      ldr r6, [r2, #0x20]
00511ae0  0b b0 67 e0                                      rsb fp, r7, fp
00511ae4  07 10 a0 e1                                      mov r1, r7
00511ae8  06 60 60 e0                                      rsb r6, r0, r6
00511aec  06 00 5b e1                                      cmp fp, r6
00511af0  0b 20 a0 b1                                      movlt r2, fp
00511af4  06 20 a0 a1                                      movge r2, r6
00511af8  b8 f2 f7 eb                                      bl #0x30e5e0
00511afc  00 00 50 e3                                      cmp r0, #0
00511b00  03 00 00 1a                                      bne #0x511b14
00511b04  0b 00 56 e1                                      cmp r6, fp
00511b08  20 00 00 ba                                      blt #0x511b90
00511b0c  00 00 a0 d3                                      movle r0, #0
00511b10  01 00 a0 c3                                      movgt r0, #1
00511b14  00 00 50 e3                                      cmp r0, #0
00511b18  00 30 a0 a3                                      movge r3, #0
00511b1c  00 a0 84 a5                                      strge sl, [r4]
00511b20  04 30 c4 a5                                      strbge r3, [r4, #4]
00511b24  19 00 00 ba                                      blt #0x511b90
00511b28  04 00 a0 e1                                      mov r0, r4
00511b2c  14 d0 8d e2                                      add sp, sp, #0x14
00511b30  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00511b34  01 50 a0 e1                                      mov r5, r1
00511b38  08 30 99 e5                                      ldr r3, [sb, #8]
00511b3c  03 00 55 e1                                      cmp r5, r3
00511b40  32 00 00 0a                                      beq #0x511c10
00511b44  00 30 d5 e5                                      ldrb r3, [r5]
00511b48  00 00 53 e3                                      cmp r3, #0
00511b4c  03 00 00 1a                                      bne #0x511b60
00511b50  04 30 95 e5                                      ldr r3, [r5, #4]
00511b54  04 30 93 e5                                      ldr r3, [r3, #4]
00511b58  03 00 55 e1                                      cmp r5, r3
00511b5c  26 00 00 0a                                      beq #0x511bfc
00511b60  08 20 95 e5                                      ldr r2, [r5, #8]
00511b64  00 00 52 e3                                      cmp r2, #0
00511b68  01 00 00 1a                                      bne #0x511b74
00511b6c  14 00 00 ea                                      b #0x511bc4
00511b70  03 20 a0 e1                                      mov r2, r3
00511b74  0c 30 92 e5                                      ldr r3, [r2, #0xc]
00511b78  00 00 53 e3                                      cmp r3, #0
00511b7c  fb ff ff 1a                                      bne #0x511b70
00511b80  02 a0 a0 e1                                      mov sl, r2
00511b84  14 70 98 e5                                      ldr r7, [r8, #0x14]
00511b88  10 b0 98 e5                                      ldr fp, [r8, #0x10]
00511b8c  d1 ff ff ea                                      b #0x511ad8
00511b90  00 c0 a0 e3                                      mov ip, #0
00511b94  05 20 a0 e1                                      mov r2, r5
00511b98  08 30 a0 e1                                      mov r3, r8
00511b9c  09 10 a0 e1                                      mov r1, sb
00511ba0  08 00 8d e2                                      add r0, sp, #8
00511ba4  04 c0 8d e5                                      str ip, [sp, #4]
00511ba8  00 c0 8d e5                                      str ip, [sp]
00511bac  7d fd ff eb                                      bl #0x5111a8
00511bb0  08 30 9d e5                                      ldr r3, [sp, #8]
00511bb4  01 20 a0 e3                                      mov r2, #1
00511bb8  04 20 c4 e5                                      strb r2, [r4, #4]
00511bbc  00 30 84 e5                                      str r3, [r4]
00511bc0  d8 ff ff ea                                      b #0x511b28
00511bc4  04 30 95 e5                                      ldr r3, [r5, #4]
00511bc8  08 20 93 e5                                      ldr r2, [r3, #8]
00511bcc  02 00 55 e1                                      cmp r5, r2
00511bd0  01 00 00 0a                                      beq #0x511bdc
00511bd4  19 00 00 ea                                      b #0x511c40
00511bd8  02 30 a0 e1                                      mov r3, r2
00511bdc  04 20 93 e5                                      ldr r2, [r3, #4]
00511be0  08 10 92 e5                                      ldr r1, [r2, #8]
00511be4  03 00 51 e1                                      cmp r1, r3
00511be8  fa ff ff 0a                                      beq #0x511bd8
00511bec  14 70 98 e5                                      ldr r7, [r8, #0x14]
00511bf0  10 b0 98 e5                                      ldr fp, [r8, #0x10]
00511bf4  02 a0 a0 e1                                      mov sl, r2
00511bf8  b6 ff ff ea                                      b #0x511ad8
00511bfc  0c 20 95 e5                                      ldr r2, [r5, #0xc]
00511c00  14 70 98 e5                                      ldr r7, [r8, #0x14]
00511c04  10 b0 98 e5                                      ldr fp, [r8, #0x10]
00511c08  02 a0 a0 e1                                      mov sl, r2
00511c0c  b1 ff ff ea                                      b #0x511ad8
00511c10  05 20 a0 e1                                      mov r2, r5
00511c14  08 30 a0 e1                                      mov r3, r8
00511c18  00 c0 a0 e3                                      mov ip, #0
00511c1c  09 10 a0 e1                                      mov r1, sb
00511c20  0c 00 8d e2                                      add r0, sp, #0xc
00511c24  20 10 8d e8                                      stm sp, {r5, ip}
00511c28  5e fd ff eb                                      bl #0x5111a8
00511c2c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00511c30  01 20 a0 e3                                      mov r2, #1
00511c34  04 20 c4 e5                                      strb r2, [r4, #4]
00511c38  00 30 84 e5                                      str r3, [r4]
00511c3c  b9 ff ff ea                                      b #0x511b28
00511c40  03 20 a0 e1                                      mov r2, r3
00511c44  cd ff ff ea                                      b #0x511b80

; FUNCTION 0x00512670, declared_size=1284, range_size=1284, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsP8PropertyENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE13insert_uniqueENS_17_Rb_tree_iteratorIS7_SB_EERKS7_
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > >::insert_unique(std::priv::_Rb_tree_iterator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*>, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> const&)
; decoder-mode: arm
00512670  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00512674  44 d0 4d e2                                      sub sp, sp, #0x44
00512678  14 20 8d e5                                      str r2, [sp, #0x14]
0051267c  00 50 92 e5                                      ldr r5, [r2]
00512680  08 20 91 e5                                      ldr r2, [r1, #8]
00512684  01 60 a0 e1                                      mov r6, r1
00512688  00 70 a0 e1                                      mov r7, r0
0051268c  02 00 55 e1                                      cmp r5, r2
00512690  03 80 a0 e1                                      mov r8, r3
00512694  7c 00 00 0a                                      beq #0x51288c
00512698  01 00 55 e1                                      cmp r5, r1
0051269c  d0 00 00 0a                                      beq #0x5129e4
005126a0  00 30 d5 e5                                      ldrb r3, [r5]
005126a4  00 00 53 e3                                      cmp r3, #0
005126a8  35 00 00 0a                                      beq #0x512784
005126ac  08 40 95 e5                                      ldr r4, [r5, #8]
005126b0  00 00 54 e3                                      cmp r4, #0
005126b4  01 00 00 1a                                      bne #0x5126c0
005126b8  39 00 00 ea                                      b #0x5127a4
005126bc  03 40 a0 e1                                      mov r4, r3
005126c0  0c 30 94 e5                                      ldr r3, [r4, #0xc]
005126c4  00 00 53 e3                                      cmp r3, #0
005126c8  fb ff ff 1a                                      bne #0x5126bc
005126cc  24 30 95 e5                                      ldr r3, [r5, #0x24]
005126d0  14 90 98 e5                                      ldr sb, [r8, #0x14]
005126d4  10 b0 98 e5                                      ldr fp, [r8, #0x10]
005126d8  20 20 95 e5                                      ldr r2, [r5, #0x20]
005126dc  03 10 a0 e1                                      mov r1, r3
005126e0  0b b0 69 e0                                      rsb fp, sb, fp
005126e4  02 20 63 e0                                      rsb r2, r3, r2
005126e8  18 20 8d e5                                      str r2, [sp, #0x18]
005126ec  09 00 a0 e1                                      mov r0, sb
005126f0  0b 00 52 e1                                      cmp r2, fp
005126f4  0b 20 a0 a1                                      movge r2, fp
005126f8  0c 30 8d e5                                      str r3, [sp, #0xc]
005126fc  1c 20 8d e5                                      str r2, [sp, #0x1c]
00512700  b6 ef f7 eb                                      bl #0x30e5e0
00512704  00 00 50 e3                                      cmp r0, #0
00512708  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0051270c  05 00 00 1a                                      bne #0x512728
00512710  18 20 9d e5                                      ldr r2, [sp, #0x18]
00512714  02 00 5b e1                                      cmp fp, r2
00512718  00 00 e0 b3                                      mvnlt r0, #0
0051271c  01 00 00 ba                                      blt #0x512728
00512720  00 00 a0 d3                                      movle r0, #0
00512724  01 00 a0 c3                                      movgt r0, #1
00512728  a0 cf b0 e1                                      lsrs ip, r0, #0x1f
0051272c  28 00 00 1a                                      bne #0x5127d4
00512730  0c 40 95 e5                                      ldr r4, [r5, #0xc]
00512734  00 00 54 e3                                      cmp r4, #0
00512738  01 00 00 1a                                      bne #0x512744
0051273c  cc 00 00 ea                                      b #0x512a74
00512740  02 40 a0 e1                                      mov r4, r2
00512744  08 20 94 e5                                      ldr r2, [r4, #8]
00512748  00 00 52 e3                                      cmp r2, #0
0051274c  fb ff ff 1a                                      bne #0x512740
00512750  00 00 5c e3                                      cmp ip, #0
00512754  43 00 00 1a                                      bne #0x512868
00512758  03 00 a0 e1                                      mov r0, r3
0051275c  09 10 a0 e1                                      mov r1, sb
00512760  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00512764  9d ef f7 eb                                      bl #0x30e5e0
00512768  00 00 50 e3                                      cmp r0, #0
0051276c  34 00 00 1a                                      bne #0x512844
00512770  18 30 9d e5                                      ldr r3, [sp, #0x18]
00512774  03 00 5b e1                                      cmp fp, r3
00512778  32 00 00 ca                                      bgt #0x512848
0051277c  00 50 87 e5                                      str r5, [r7]
00512780  3e 00 00 ea                                      b #0x512880
00512784  04 30 95 e5                                      ldr r3, [r5, #4]
00512788  04 30 93 e5                                      ldr r3, [r3, #4]
0051278c  03 00 55 e1                                      cmp r5, r3
00512790  0c 40 95 05                                      ldreq r4, [r5, #0xc]
00512794  cc ff ff 0a                                      beq #0x5126cc
00512798  08 40 95 e5                                      ldr r4, [r5, #8]
0051279c  00 00 54 e3                                      cmp r4, #0
005127a0  c6 ff ff 1a                                      bne #0x5126c0
005127a4  04 40 95 e5                                      ldr r4, [r5, #4]
005127a8  08 30 94 e5                                      ldr r3, [r4, #8]
005127ac  03 00 55 e1                                      cmp r5, r3
005127b0  01 00 00 0a                                      beq #0x5127bc
005127b4  c4 ff ff ea                                      b #0x5126cc
005127b8  03 40 a0 e1                                      mov r4, r3
005127bc  04 30 94 e5                                      ldr r3, [r4, #4]
005127c0  08 20 93 e5                                      ldr r2, [r3, #8]
005127c4  04 00 52 e1                                      cmp r2, r4
005127c8  fa ff ff 0a                                      beq #0x5127b8
005127cc  03 40 a0 e1                                      mov r4, r3
005127d0  bd ff ff ea                                      b #0x5126cc
005127d4  24 20 94 e5                                      ldr r2, [r4, #0x24]
005127d8  20 a0 94 e5                                      ldr sl, [r4, #0x20]
005127dc  09 10 a0 e1                                      mov r1, sb
005127e0  02 00 a0 e1                                      mov r0, r2
005127e4  0a a0 62 e0                                      rsb sl, r2, sl
005127e8  0a 00 5b e1                                      cmp fp, sl
005127ec  0b 20 a0 b1                                      movlt r2, fp
005127f0  0a 20 a0 a1                                      movge r2, sl
005127f4  0c 30 8d e5                                      str r3, [sp, #0xc]
005127f8  10 c0 8d e5                                      str ip, [sp, #0x10]
005127fc  77 ef f7 eb                                      bl #0x30e5e0
00512800  00 00 50 e3                                      cmp r0, #0
00512804  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00512808  10 c0 9d e5                                      ldr ip, [sp, #0x10]
0051280c  6f 00 00 1a                                      bne #0x5129d0
00512810  0a 00 5b e1                                      cmp fp, sl
00512814  c5 ff ff da                                      ble #0x512730
00512818  0c c0 94 e5                                      ldr ip, [r4, #0xc]
0051281c  00 00 5c e3                                      cmp ip, #0
00512820  62 00 00 0a                                      beq #0x5129b0
00512824  00 c0 a0 e3                                      mov ip, #0
00512828  06 10 a0 e1                                      mov r1, r6
0051282c  05 20 a0 e1                                      mov r2, r5
00512830  08 30 a0 e1                                      mov r3, r8
00512834  07 00 a0 e1                                      mov r0, r7
00512838  20 10 8d e8                                      stm sp, {r5, ip}
0051283c  59 fa ff eb                                      bl #0x5111a8
00512840  0e 00 00 ea                                      b #0x512880
00512844  cc ff ff aa                                      bge #0x51277c
00512848  04 00 56 e1                                      cmp r6, r4
0051284c  9b 00 00 0a                                      beq #0x512ac0
00512850  14 00 86 e2                                      add r0, r6, #0x14
00512854  08 10 a0 e1                                      mov r1, r8
00512858  10 20 84 e2                                      add r2, r4, #0x10
0051285c  e5 04 f8 eb                                      bl #0x313bf8
00512860  00 00 50 e3                                      cmp r0, #0
00512864  93 00 00 1a                                      bne #0x512ab8
00512868  06 10 a0 e1                                      mov r1, r6
0051286c  08 20 a0 e1                                      mov r2, r8
00512870  20 00 8d e2                                      add r0, sp, #0x20
00512874  6d fc ff eb                                      bl #0x511a30
00512878  20 30 9d e5                                      ldr r3, [sp, #0x20]
0051287c  00 30 87 e5                                      str r3, [r7]
00512880  07 00 a0 e1                                      mov r0, r7
00512884  44 d0 8d e2                                      add sp, sp, #0x44
00512888  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0051288c  10 30 91 e5                                      ldr r3, [r1, #0x10]
00512890  00 00 53 e3                                      cmp r3, #0
00512894  9f 00 00 0a                                      beq #0x512b18
00512898  14 30 98 e5                                      ldr r3, [r8, #0x14]
0051289c  24 10 95 e5                                      ldr r1, [r5, #0x24]
005128a0  10 40 98 e5                                      ldr r4, [r8, #0x10]
005128a4  20 a0 95 e5                                      ldr sl, [r5, #0x20]
005128a8  03 00 a0 e1                                      mov r0, r3
005128ac  04 40 63 e0                                      rsb r4, r3, r4
005128b0  0a a0 61 e0                                      rsb sl, r1, sl
005128b4  04 00 5a e1                                      cmp sl, r4
005128b8  0a 20 a0 b1                                      movlt r2, sl
005128bc  04 20 a0 a1                                      movge r2, r4
005128c0  46 ef f7 eb                                      bl #0x30e5e0
005128c4  00 00 50 e3                                      cmp r0, #0
005128c8  03 00 00 1a                                      bne #0x5128dc
005128cc  0a 00 54 e1                                      cmp r4, sl
005128d0  d3 ff ff ba                                      blt #0x512824
005128d4  00 00 a0 d3                                      movle r0, #0
005128d8  01 00 a0 c3                                      movgt r0, #1
005128dc  00 00 50 e3                                      cmp r0, #0
005128e0  cf ff ff ba                                      blt #0x512824
005128e4  14 a0 86 e2                                      add sl, r6, #0x14
005128e8  10 10 85 e2                                      add r1, r5, #0x10
005128ec  0a 00 a0 e1                                      mov r0, sl
005128f0  08 20 a0 e1                                      mov r2, r8
005128f4  bf 04 f8 eb                                      bl #0x313bf8
005128f8  00 00 50 e3                                      cmp r0, #0
005128fc  81 00 00 0a                                      beq #0x512b08
00512900  14 30 9d e5                                      ldr r3, [sp, #0x14]
00512904  00 c0 93 e5                                      ldr ip, [r3]
00512908  0c 40 9c e5                                      ldr r4, [ip, #0xc]
0051290c  00 00 54 e3                                      cmp r4, #0
00512910  22 00 00 1a                                      bne #0x5129a0
00512914  04 30 9c e5                                      ldr r3, [ip, #4]
00512918  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0051291c  02 00 5c e1                                      cmp ip, r2
00512920  0c 40 a0 11                                      movne r4, ip
00512924  04 00 00 1a                                      bne #0x51293c
00512928  03 40 a0 e1                                      mov r4, r3
0051292c  04 30 93 e5                                      ldr r3, [r3, #4]
00512930  0c 20 93 e5                                      ldr r2, [r3, #0xc]
00512934  04 00 52 e1                                      cmp r2, r4
00512938  fa ff ff 0a                                      beq #0x512928
0051293c  0c 20 94 e5                                      ldr r2, [r4, #0xc]
00512940  02 00 53 e1                                      cmp r3, r2
00512944  03 40 a0 11                                      movne r4, r3
00512948  04 00 56 e1                                      cmp r6, r4
0051294c  7f 00 00 0a                                      beq #0x512b50
00512950  0a 00 a0 e1                                      mov r0, sl
00512954  08 10 a0 e1                                      mov r1, r8
00512958  10 20 84 e2                                      add r2, r4, #0x10
0051295c  a5 04 f8 eb                                      bl #0x313bf8
00512960  00 00 50 e3                                      cmp r0, #0
00512964  60 00 00 0a                                      beq #0x512aec
00512968  14 20 9d e5                                      ldr r2, [sp, #0x14]
0051296c  00 c0 92 e5                                      ldr ip, [r2]
00512970  0c e0 9c e5                                      ldr lr, [ip, #0xc]
00512974  00 00 5e e3                                      cmp lr, #0
00512978  6c 00 00 0a                                      beq #0x512b30
0051297c  00 c0 a0 e3                                      mov ip, #0
00512980  06 10 a0 e1                                      mov r1, r6
00512984  04 20 a0 e1                                      mov r2, r4
00512988  08 30 a0 e1                                      mov r3, r8
0051298c  07 00 a0 e1                                      mov r0, r7
00512990  10 10 8d e8                                      stm sp, {r4, ip}
00512994  03 fa ff eb                                      bl #0x5111a8
00512998  b8 ff ff ea                                      b #0x512880
0051299c  03 40 a0 e1                                      mov r4, r3
005129a0  08 30 94 e5                                      ldr r3, [r4, #8]
005129a4  00 00 53 e3                                      cmp r3, #0
005129a8  fb ff ff 1a                                      bne #0x51299c
005129ac  e5 ff ff ea                                      b #0x512948
005129b0  06 10 a0 e1                                      mov r1, r6
005129b4  04 20 a0 e1                                      mov r2, r4
005129b8  08 30 a0 e1                                      mov r3, r8
005129bc  07 00 a0 e1                                      mov r0, r7
005129c0  00 c0 8d e5                                      str ip, [sp]
005129c4  04 40 8d e5                                      str r4, [sp, #4]
005129c8  f6 f9 ff eb                                      bl #0x5111a8
005129cc  ab ff ff ea                                      b #0x512880
005129d0  56 ff ff aa                                      bge #0x512730
005129d4  0c c0 94 e5                                      ldr ip, [r4, #0xc]
005129d8  00 00 5c e3                                      cmp ip, #0
005129dc  90 ff ff 1a                                      bne #0x512824
005129e0  f2 ff ff ea                                      b #0x5129b0
005129e4  0c 40 95 e5                                      ldr r4, [r5, #0xc]
005129e8  14 10 93 e5                                      ldr r1, [r3, #0x14]
005129ec  10 90 93 e5                                      ldr sb, [r3, #0x10]
005129f0  20 a0 94 e5                                      ldr sl, [r4, #0x20]
005129f4  24 30 94 e5                                      ldr r3, [r4, #0x24]
005129f8  09 90 61 e0                                      rsb sb, r1, sb
005129fc  0a a0 63 e0                                      rsb sl, r3, sl
00512a00  0a 00 59 e1                                      cmp sb, sl
00512a04  09 20 a0 b1                                      movlt r2, sb
00512a08  0a 20 a0 a1                                      movge r2, sl
00512a0c  03 00 a0 e1                                      mov r0, r3
00512a10  f2 ee f7 eb                                      bl #0x30e5e0
00512a14  00 00 50 e3                                      cmp r0, #0
00512a18  03 00 00 1a                                      bne #0x512a2c
00512a1c  09 00 5a e1                                      cmp sl, sb
00512a20  03 00 00 ba                                      blt #0x512a34
00512a24  00 00 a0 d3                                      movle r0, #0
00512a28  01 00 a0 c3                                      movgt r0, #1
00512a2c  00 00 50 e3                                      cmp r0, #0
00512a30  08 00 00 aa                                      bge #0x512a58
00512a34  00 c0 a0 e3                                      mov ip, #0
00512a38  06 10 a0 e1                                      mov r1, r6
00512a3c  04 20 a0 e1                                      mov r2, r4
00512a40  08 30 a0 e1                                      mov r3, r8
00512a44  07 00 a0 e1                                      mov r0, r7
00512a48  00 c0 8d e5                                      str ip, [sp]
00512a4c  04 50 8d e5                                      str r5, [sp, #4]
00512a50  d4 f9 ff eb                                      bl #0x5111a8
00512a54  89 ff ff ea                                      b #0x512880
00512a58  06 10 a0 e1                                      mov r1, r6
00512a5c  08 20 a0 e1                                      mov r2, r8
00512a60  28 00 8d e2                                      add r0, sp, #0x28
00512a64  f1 fb ff eb                                      bl #0x511a30
00512a68  28 30 9d e5                                      ldr r3, [sp, #0x28]
00512a6c  00 30 87 e5                                      str r3, [r7]
00512a70  82 ff ff ea                                      b #0x512880
00512a74  04 20 95 e5                                      ldr r2, [r5, #4]
00512a78  0c 10 92 e5                                      ldr r1, [r2, #0xc]
00512a7c  01 00 55 e1                                      cmp r5, r1
00512a80  05 40 a0 11                                      movne r4, r5
00512a84  04 00 00 0a                                      beq #0x512a9c
00512a88  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00512a8c  01 00 52 e1                                      cmp r2, r1
00512a90  02 40 a0 11                                      movne r4, r2
00512a94  2d ff ff ea                                      b #0x512750
00512a98  01 20 a0 e1                                      mov r2, r1
00512a9c  04 10 92 e5                                      ldr r1, [r2, #4]
00512aa0  0c 00 91 e5                                      ldr r0, [r1, #0xc]
00512aa4  02 00 50 e1                                      cmp r0, r2
00512aa8  fa ff ff 0a                                      beq #0x512a98
00512aac  02 40 a0 e1                                      mov r4, r2
00512ab0  01 20 a0 e1                                      mov r2, r1
00512ab4  f3 ff ff ea                                      b #0x512a88
00512ab8  14 20 9d e5                                      ldr r2, [sp, #0x14]
00512abc  00 50 92 e5                                      ldr r5, [r2]
00512ac0  0c c0 95 e5                                      ldr ip, [r5, #0xc]
00512ac4  00 00 5c e3                                      cmp ip, #0
00512ac8  ab ff ff 1a                                      bne #0x51297c
00512acc  06 10 a0 e1                                      mov r1, r6
00512ad0  05 20 a0 e1                                      mov r2, r5
00512ad4  08 30 a0 e1                                      mov r3, r8
00512ad8  07 00 a0 e1                                      mov r0, r7
00512adc  00 c0 8d e5                                      str ip, [sp]
00512ae0  04 50 8d e5                                      str r5, [sp, #4]
00512ae4  af f9 ff eb                                      bl #0x5111a8
00512ae8  64 ff ff ea                                      b #0x512880
00512aec  06 10 a0 e1                                      mov r1, r6
00512af0  08 20 a0 e1                                      mov r2, r8
00512af4  30 00 8d e2                                      add r0, sp, #0x30
00512af8  cc fb ff eb                                      bl #0x511a30
00512afc  30 30 9d e5                                      ldr r3, [sp, #0x30]
00512b00  00 30 87 e5                                      str r3, [r7]
00512b04  5d ff ff ea                                      b #0x512880
00512b08  14 20 9d e5                                      ldr r2, [sp, #0x14]
00512b0c  00 30 92 e5                                      ldr r3, [r2]
00512b10  00 30 87 e5                                      str r3, [r7]
00512b14  59 ff ff ea                                      b #0x512880
00512b18  08 20 a0 e1                                      mov r2, r8
00512b1c  38 00 8d e2                                      add r0, sp, #0x38
00512b20  c2 fb ff eb                                      bl #0x511a30
00512b24  38 30 9d e5                                      ldr r3, [sp, #0x38]
00512b28  00 30 87 e5                                      str r3, [r7]
00512b2c  53 ff ff ea                                      b #0x512880
00512b30  06 10 a0 e1                                      mov r1, r6
00512b34  0c 20 a0 e1                                      mov r2, ip
00512b38  08 30 a0 e1                                      mov r3, r8
00512b3c  07 00 a0 e1                                      mov r0, r7
00512b40  00 e0 8d e5                                      str lr, [sp]
00512b44  04 c0 8d e5                                      str ip, [sp, #4]
00512b48  96 f9 ff eb                                      bl #0x5111a8
00512b4c  4b ff ff ea                                      b #0x512880
00512b50  00 e0 a0 e3                                      mov lr, #0
00512b54  06 10 a0 e1                                      mov r1, r6
00512b58  0c 20 a0 e1                                      mov r2, ip
00512b5c  08 30 a0 e1                                      mov r3, r8
00512b60  07 00 a0 e1                                      mov r0, r7
00512b64  00 e0 8d e5                                      str lr, [sp]
00512b68  04 c0 8d e5                                      str ip, [sp, #4]
00512b6c  8d f9 ff eb                                      bl #0x5111a8
00512b70  42 ff ff ea                                      b #0x512880

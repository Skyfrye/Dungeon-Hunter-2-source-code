; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c4218, declared_size=64, range_size=64, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> > > >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> > > > >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> > > > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> > > > > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsSt3mapISsiS2_SaIS3_IS4_iEEEENS_10_Select1stIS9_EENS_11_MapTraitsTIS9_EESaIS9_EE8_M_eraseEPNS_18_Rb_tree_node_baseE
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> > > >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> > > > >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> > > > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> > > > > >::_M_erase(std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
004c4218  70 40 2d e9                                      push {r4, r5, r6, lr}
004c421c  00 40 51 e2                                      subs r4, r1, #0
004c4220  00 60 a0 e1                                      mov r6, r0
004c4224  0a 00 00 0a                                      beq #0x4c4254
004c4228  0c 10 94 e5                                      ldr r1, [r4, #0xc]
004c422c  06 00 a0 e1                                      mov r0, r6
004c4230  f8 ff ff eb                                      bl #0x4c4218
004c4234  08 50 94 e5                                      ldr r5, [r4, #8]
004c4238  10 00 84 e2                                      add r0, r4, #0x10
004c423c  df ff ff eb                                      bl #0x4c41c0
004c4240  04 00 a0 e1                                      mov r0, r4
004c4244  40 10 a0 e3                                      mov r1, #0x40
004c4248  2c 13 09 eb                                      bl #0x708f00
004c424c  00 40 55 e2                                      subs r4, r5, #0
004c4250  f4 ff ff 1a                                      bne #0x4c4228
004c4254  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x004c4454, declared_size=92, range_size=92, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> > > >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> > > > >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> > > > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> > > > > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsSt3mapISsiS2_SaIS3_IS4_iEEEENS_10_Select1stIS9_EENS_11_MapTraitsTIS9_EESaIS9_EE14_M_create_nodeERKS9_
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> > > >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> > > > >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> > > > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> > > > > >::_M_create_node(std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> > > > const&)
; decoder-mode: arm
004c4454  30 40 2d e9                                      push {r4, r5, lr}
004c4458  0c d0 4d e2                                      sub sp, sp, #0xc
004c445c  40 30 a0 e3                                      mov r3, #0x40
004c4460  08 00 8d e2                                      add r0, sp, #8
004c4464  04 30 20 e5                                      str r3, [r0, #-4]!
004c4468  01 50 a0 e1                                      mov r5, r1
004c446c  93 12 09 eb                                      bl #0x708ec0
004c4470  00 40 a0 e1                                      mov r4, r0
004c4474  10 00 80 e2                                      add r0, r0, #0x10
004c4478  20 00 84 e5                                      str r0, [r4, #0x20]
004c447c  24 00 84 e5                                      str r0, [r4, #0x24]
004c4480  14 10 95 e5                                      ldr r1, [r5, #0x14]
004c4484  10 20 95 e5                                      ldr r2, [r5, #0x10]
004c4488  96 34 f9 eb                                      bl #0x3116e8
004c448c  18 10 85 e2                                      add r1, r5, #0x18
004c4490  28 00 84 e2                                      add r0, r4, #0x28
004c4494  d0 ff ff eb                                      bl #0x4c43dc
004c4498  00 30 a0 e3                                      mov r3, #0
004c449c  0c 30 84 e5                                      str r3, [r4, #0xc]
004c44a0  08 30 84 e5                                      str r3, [r4, #8]
004c44a4  04 00 a0 e1                                      mov r0, r4
004c44a8  0c d0 8d e2                                      add sp, sp, #0xc
004c44ac  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x004c44b0, declared_size=240, range_size=240, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> > > >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> > > > >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> > > > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> > > > > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsSt3mapISsiS2_SaIS3_IS4_iEEEENS_10_Select1stIS9_EENS_11_MapTraitsTIS9_EESaIS9_EE9_M_insertEPNS_18_Rb_tree_node_baseERKS9_SH_SH_
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> > > >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> > > > >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> > > > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> > > > > >::_M_insert(std::priv::_Rb_tree_node_base*, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> > > > const&, std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
004c44b0  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
004c44b4  02 00 51 e1                                      cmp r1, r2
004c44b8  0c d0 4d e2                                      sub sp, sp, #0xc
004c44bc  01 40 a0 e1                                      mov r4, r1
004c44c0  02 50 a0 e1                                      mov r5, r2
004c44c4  00 60 a0 e1                                      mov r6, r0
004c44c8  23 00 00 0a                                      beq #0x4c455c
004c44cc  24 20 9d e5                                      ldr r2, [sp, #0x24]
004c44d0  00 00 52 e3                                      cmp r2, #0
004c44d4  12 00 00 0a                                      beq #0x4c4524
004c44d8  03 10 a0 e1                                      mov r1, r3
004c44dc  04 00 a0 e1                                      mov r0, r4
004c44e0  db ff ff eb                                      bl #0x4c4454
004c44e4  0c 00 85 e5                                      str r0, [r5, #0xc]
004c44e8  0c 30 94 e5                                      ldr r3, [r4, #0xc]
004c44ec  00 70 a0 e1                                      mov r7, r0
004c44f0  03 00 55 e1                                      cmp r5, r3
004c44f4  16 00 00 0a                                      beq #0x4c4554
004c44f8  07 00 a0 e1                                      mov r0, r7
004c44fc  04 50 87 e5                                      str r5, [r7, #4]
004c4500  04 10 84 e2                                      add r1, r4, #4
004c4504  95 3c f9 eb                                      bl #0x313760
004c4508  10 30 94 e5                                      ldr r3, [r4, #0x10]
004c450c  06 00 a0 e1                                      mov r0, r6
004c4510  01 30 83 e2                                      add r3, r3, #1
004c4514  10 30 84 e5                                      str r3, [r4, #0x10]
004c4518  00 70 86 e5                                      str r7, [r6]
004c451c  0c d0 8d e2                                      add sp, sp, #0xc
004c4520  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
004c4524  20 20 9d e5                                      ldr r2, [sp, #0x20]
004c4528  00 00 52 e3                                      cmp r2, #0
004c452c  12 00 00 0a                                      beq #0x4c457c
004c4530  03 10 a0 e1                                      mov r1, r3
004c4534  04 00 a0 e1                                      mov r0, r4
004c4538  c5 ff ff eb                                      bl #0x4c4454
004c453c  08 00 85 e5                                      str r0, [r5, #8]
004c4540  08 30 94 e5                                      ldr r3, [r4, #8]
004c4544  00 70 a0 e1                                      mov r7, r0
004c4548  03 00 55 e1                                      cmp r5, r3
004c454c  08 00 84 05                                      streq r0, [r4, #8]
004c4550  e8 ff ff ea                                      b #0x4c44f8
004c4554  0c 70 84 e5                                      str r7, [r4, #0xc]
004c4558  e6 ff ff ea                                      b #0x4c44f8
004c455c  03 10 a0 e1                                      mov r1, r3
004c4560  04 00 a0 e1                                      mov r0, r4
004c4564  ba ff ff eb                                      bl #0x4c4454
004c4568  00 70 a0 e1                                      mov r7, r0
004c456c  08 00 84 e5                                      str r0, [r4, #8]
004c4570  04 00 84 e5                                      str r0, [r4, #4]
004c4574  0c 00 84 e5                                      str r0, [r4, #0xc]
004c4578  de ff ff ea                                      b #0x4c44f8
004c457c  14 00 81 e2                                      add r0, r1, #0x14
004c4580  10 20 85 e2                                      add r2, r5, #0x10
004c4584  03 10 a0 e1                                      mov r1, r3
004c4588  04 30 8d e5                                      str r3, [sp, #4]
004c458c  99 3d f9 eb                                      bl #0x313bf8
004c4590  00 00 50 e3                                      cmp r0, #0
004c4594  04 30 9d e5                                      ldr r3, [sp, #4]
004c4598  ce ff ff 0a                                      beq #0x4c44d8
004c459c  e3 ff ff ea                                      b #0x4c4530

; FUNCTION 0x004c4780, declared_size=536, range_size=536, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> > > >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> > > > >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> > > > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> > > > > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsSt3mapISsiS2_SaIS3_IS4_iEEEENS_10_Select1stIS9_EENS_11_MapTraitsTIS9_EESaIS9_EE13insert_uniqueERKS9_
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> > > >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> > > > >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> > > > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> > > > > >::insert_unique(std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> > > > const&)
; decoder-mode: arm
004c4780  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004c4784  04 50 91 e5                                      ldr r5, [r1, #4]
004c4788  14 d0 4d e2                                      sub sp, sp, #0x14
004c478c  01 90 a0 e1                                      mov sb, r1
004c4790  00 00 55 e3                                      cmp r5, #0
004c4794  00 40 a0 e1                                      mov r4, r0
004c4798  02 80 a0 e1                                      mov r8, r2
004c479c  38 00 00 0a                                      beq #0x4c4884
004c47a0  14 70 92 e5                                      ldr r7, [r2, #0x14]
004c47a4  10 b0 92 e5                                      ldr fp, [r2, #0x10]
004c47a8  0b a0 67 e0                                      rsb sl, r7, fp
004c47ac  04 00 00 ea                                      b #0x4c47c4
004c47b0  08 30 95 e5                                      ldr r3, [r5, #8]
004c47b4  01 10 a0 e3                                      mov r1, #1
004c47b8  00 00 53 e3                                      cmp r3, #0
004c47bc  16 00 00 0a                                      beq #0x4c481c
004c47c0  03 50 a0 e1                                      mov r5, r3
004c47c4  24 30 95 e5                                      ldr r3, [r5, #0x24]
004c47c8  20 60 95 e5                                      ldr r6, [r5, #0x20]
004c47cc  07 00 a0 e1                                      mov r0, r7
004c47d0  03 10 a0 e1                                      mov r1, r3
004c47d4  06 60 63 e0                                      rsb r6, r3, r6
004c47d8  0a 00 56 e1                                      cmp r6, sl
004c47dc  06 20 a0 b1                                      movlt r2, r6
004c47e0  0a 20 a0 a1                                      movge r2, sl
004c47e4  7d 27 f9 eb                                      bl #0x30e5e0
004c47e8  00 00 50 e3                                      cmp r0, #0
004c47ec  05 20 a0 e1                                      mov r2, r5
004c47f0  03 00 00 1a                                      bne #0x4c4804
004c47f4  06 00 5a e1                                      cmp sl, r6
004c47f8  ec ff ff ba                                      blt #0x4c47b0
004c47fc  00 00 a0 d3                                      movle r0, #0
004c4800  01 00 a0 c3                                      movgt r0, #1
004c4804  00 00 50 e3                                      cmp r0, #0
004c4808  e8 ff ff ba                                      blt #0x4c47b0
004c480c  0c 30 95 e5                                      ldr r3, [r5, #0xc]
004c4810  00 10 a0 e3                                      mov r1, #0
004c4814  00 00 53 e3                                      cmp r3, #0
004c4818  e8 ff ff 1a                                      bne #0x4c47c0
004c481c  00 00 51 e3                                      cmp r1, #0
004c4820  05 a0 a0 01                                      moveq sl, r5
004c4824  17 00 00 1a                                      bne #0x4c4888
004c4828  24 00 92 e5                                      ldr r0, [r2, #0x24]
004c482c  20 60 92 e5                                      ldr r6, [r2, #0x20]
004c4830  0b b0 67 e0                                      rsb fp, r7, fp
004c4834  07 10 a0 e1                                      mov r1, r7
004c4838  06 60 60 e0                                      rsb r6, r0, r6
004c483c  06 00 5b e1                                      cmp fp, r6
004c4840  0b 20 a0 b1                                      movlt r2, fp
004c4844  06 20 a0 a1                                      movge r2, r6
004c4848  64 27 f9 eb                                      bl #0x30e5e0
004c484c  00 00 50 e3                                      cmp r0, #0
004c4850  03 00 00 1a                                      bne #0x4c4864
004c4854  0b 00 56 e1                                      cmp r6, fp
004c4858  20 00 00 ba                                      blt #0x4c48e0
004c485c  00 00 a0 d3                                      movle r0, #0
004c4860  01 00 a0 c3                                      movgt r0, #1
004c4864  00 00 50 e3                                      cmp r0, #0
004c4868  00 30 a0 a3                                      movge r3, #0
004c486c  00 a0 84 a5                                      strge sl, [r4]
004c4870  04 30 c4 a5                                      strbge r3, [r4, #4]
004c4874  19 00 00 ba                                      blt #0x4c48e0
004c4878  04 00 a0 e1                                      mov r0, r4
004c487c  14 d0 8d e2                                      add sp, sp, #0x14
004c4880  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004c4884  01 50 a0 e1                                      mov r5, r1
004c4888  08 30 99 e5                                      ldr r3, [sb, #8]
004c488c  03 00 55 e1                                      cmp r5, r3
004c4890  32 00 00 0a                                      beq #0x4c4960
004c4894  00 30 d5 e5                                      ldrb r3, [r5]
004c4898  00 00 53 e3                                      cmp r3, #0
004c489c  03 00 00 1a                                      bne #0x4c48b0
004c48a0  04 30 95 e5                                      ldr r3, [r5, #4]
004c48a4  04 30 93 e5                                      ldr r3, [r3, #4]
004c48a8  03 00 55 e1                                      cmp r5, r3
004c48ac  26 00 00 0a                                      beq #0x4c494c
004c48b0  08 20 95 e5                                      ldr r2, [r5, #8]
004c48b4  00 00 52 e3                                      cmp r2, #0
004c48b8  01 00 00 1a                                      bne #0x4c48c4
004c48bc  14 00 00 ea                                      b #0x4c4914
004c48c0  03 20 a0 e1                                      mov r2, r3
004c48c4  0c 30 92 e5                                      ldr r3, [r2, #0xc]
004c48c8  00 00 53 e3                                      cmp r3, #0
004c48cc  fb ff ff 1a                                      bne #0x4c48c0
004c48d0  02 a0 a0 e1                                      mov sl, r2
004c48d4  14 70 98 e5                                      ldr r7, [r8, #0x14]
004c48d8  10 b0 98 e5                                      ldr fp, [r8, #0x10]
004c48dc  d1 ff ff ea                                      b #0x4c4828
004c48e0  00 c0 a0 e3                                      mov ip, #0
004c48e4  05 20 a0 e1                                      mov r2, r5
004c48e8  08 30 a0 e1                                      mov r3, r8
004c48ec  09 10 a0 e1                                      mov r1, sb
004c48f0  08 00 8d e2                                      add r0, sp, #8
004c48f4  04 c0 8d e5                                      str ip, [sp, #4]
004c48f8  00 c0 8d e5                                      str ip, [sp]
004c48fc  eb fe ff eb                                      bl #0x4c44b0
004c4900  08 30 9d e5                                      ldr r3, [sp, #8]
004c4904  01 20 a0 e3                                      mov r2, #1
004c4908  04 20 c4 e5                                      strb r2, [r4, #4]
004c490c  00 30 84 e5                                      str r3, [r4]
004c4910  d8 ff ff ea                                      b #0x4c4878
004c4914  04 30 95 e5                                      ldr r3, [r5, #4]
004c4918  08 20 93 e5                                      ldr r2, [r3, #8]
004c491c  02 00 55 e1                                      cmp r5, r2
004c4920  01 00 00 0a                                      beq #0x4c492c
004c4924  19 00 00 ea                                      b #0x4c4990
004c4928  02 30 a0 e1                                      mov r3, r2
004c492c  04 20 93 e5                                      ldr r2, [r3, #4]
004c4930  08 10 92 e5                                      ldr r1, [r2, #8]
004c4934  03 00 51 e1                                      cmp r1, r3
004c4938  fa ff ff 0a                                      beq #0x4c4928
004c493c  14 70 98 e5                                      ldr r7, [r8, #0x14]
004c4940  10 b0 98 e5                                      ldr fp, [r8, #0x10]
004c4944  02 a0 a0 e1                                      mov sl, r2
004c4948  b6 ff ff ea                                      b #0x4c4828
004c494c  0c 20 95 e5                                      ldr r2, [r5, #0xc]
004c4950  14 70 98 e5                                      ldr r7, [r8, #0x14]
004c4954  10 b0 98 e5                                      ldr fp, [r8, #0x10]
004c4958  02 a0 a0 e1                                      mov sl, r2
004c495c  b1 ff ff ea                                      b #0x4c4828
004c4960  05 20 a0 e1                                      mov r2, r5
004c4964  08 30 a0 e1                                      mov r3, r8
004c4968  00 c0 a0 e3                                      mov ip, #0
004c496c  09 10 a0 e1                                      mov r1, sb
004c4970  0c 00 8d e2                                      add r0, sp, #0xc
004c4974  20 10 8d e8                                      stm sp, {r5, ip}
004c4978  cc fe ff eb                                      bl #0x4c44b0
004c497c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
004c4980  01 20 a0 e3                                      mov r2, #1
004c4984  04 20 c4 e5                                      strb r2, [r4, #4]
004c4988  00 30 84 e5                                      str r3, [r4]
004c498c  b9 ff ff ea                                      b #0x4c4878
004c4990  03 20 a0 e1                                      mov r2, r3
004c4994  cd ff ff ea                                      b #0x4c48d0

; FUNCTION 0x004c4d70, declared_size=1284, range_size=1284, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> > > >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> > > > >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> > > > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> > > > > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsSt3mapISsiS2_SaIS3_IS4_iEEEENS_10_Select1stIS9_EENS_11_MapTraitsTIS9_EESaIS9_EE13insert_uniqueENS_17_Rb_tree_iteratorIS9_SD_EERKS9_
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> > > >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> > > > >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> > > > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> > > > > >::insert_unique(std::priv::_Rb_tree_iterator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> > > >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> > > > > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> > > > const&)
; decoder-mode: arm
004c4d70  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004c4d74  44 d0 4d e2                                      sub sp, sp, #0x44
004c4d78  14 20 8d e5                                      str r2, [sp, #0x14]
004c4d7c  00 50 92 e5                                      ldr r5, [r2]
004c4d80  08 20 91 e5                                      ldr r2, [r1, #8]
004c4d84  01 60 a0 e1                                      mov r6, r1
004c4d88  00 70 a0 e1                                      mov r7, r0
004c4d8c  02 00 55 e1                                      cmp r5, r2
004c4d90  03 80 a0 e1                                      mov r8, r3
004c4d94  7c 00 00 0a                                      beq #0x4c4f8c
004c4d98  01 00 55 e1                                      cmp r5, r1
004c4d9c  d0 00 00 0a                                      beq #0x4c50e4
004c4da0  00 30 d5 e5                                      ldrb r3, [r5]
004c4da4  00 00 53 e3                                      cmp r3, #0
004c4da8  35 00 00 0a                                      beq #0x4c4e84
004c4dac  08 40 95 e5                                      ldr r4, [r5, #8]
004c4db0  00 00 54 e3                                      cmp r4, #0
004c4db4  01 00 00 1a                                      bne #0x4c4dc0
004c4db8  39 00 00 ea                                      b #0x4c4ea4
004c4dbc  03 40 a0 e1                                      mov r4, r3
004c4dc0  0c 30 94 e5                                      ldr r3, [r4, #0xc]
004c4dc4  00 00 53 e3                                      cmp r3, #0
004c4dc8  fb ff ff 1a                                      bne #0x4c4dbc
004c4dcc  24 30 95 e5                                      ldr r3, [r5, #0x24]
004c4dd0  14 90 98 e5                                      ldr sb, [r8, #0x14]
004c4dd4  10 b0 98 e5                                      ldr fp, [r8, #0x10]
004c4dd8  20 20 95 e5                                      ldr r2, [r5, #0x20]
004c4ddc  03 10 a0 e1                                      mov r1, r3
004c4de0  0b b0 69 e0                                      rsb fp, sb, fp
004c4de4  02 20 63 e0                                      rsb r2, r3, r2
004c4de8  18 20 8d e5                                      str r2, [sp, #0x18]
004c4dec  09 00 a0 e1                                      mov r0, sb
004c4df0  0b 00 52 e1                                      cmp r2, fp
004c4df4  0b 20 a0 a1                                      movge r2, fp
004c4df8  0c 30 8d e5                                      str r3, [sp, #0xc]
004c4dfc  1c 20 8d e5                                      str r2, [sp, #0x1c]
004c4e00  f6 25 f9 eb                                      bl #0x30e5e0
004c4e04  00 00 50 e3                                      cmp r0, #0
004c4e08  0c 30 9d e5                                      ldr r3, [sp, #0xc]
004c4e0c  05 00 00 1a                                      bne #0x4c4e28
004c4e10  18 20 9d e5                                      ldr r2, [sp, #0x18]
004c4e14  02 00 5b e1                                      cmp fp, r2
004c4e18  00 00 e0 b3                                      mvnlt r0, #0
004c4e1c  01 00 00 ba                                      blt #0x4c4e28
004c4e20  00 00 a0 d3                                      movle r0, #0
004c4e24  01 00 a0 c3                                      movgt r0, #1
004c4e28  a0 cf b0 e1                                      lsrs ip, r0, #0x1f
004c4e2c  28 00 00 1a                                      bne #0x4c4ed4
004c4e30  0c 40 95 e5                                      ldr r4, [r5, #0xc]
004c4e34  00 00 54 e3                                      cmp r4, #0
004c4e38  01 00 00 1a                                      bne #0x4c4e44
004c4e3c  cc 00 00 ea                                      b #0x4c5174
004c4e40  02 40 a0 e1                                      mov r4, r2
004c4e44  08 20 94 e5                                      ldr r2, [r4, #8]
004c4e48  00 00 52 e3                                      cmp r2, #0
004c4e4c  fb ff ff 1a                                      bne #0x4c4e40
004c4e50  00 00 5c e3                                      cmp ip, #0
004c4e54  43 00 00 1a                                      bne #0x4c4f68
004c4e58  03 00 a0 e1                                      mov r0, r3
004c4e5c  09 10 a0 e1                                      mov r1, sb
004c4e60  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
004c4e64  dd 25 f9 eb                                      bl #0x30e5e0
004c4e68  00 00 50 e3                                      cmp r0, #0
004c4e6c  34 00 00 1a                                      bne #0x4c4f44
004c4e70  18 30 9d e5                                      ldr r3, [sp, #0x18]
004c4e74  03 00 5b e1                                      cmp fp, r3
004c4e78  32 00 00 ca                                      bgt #0x4c4f48
004c4e7c  00 50 87 e5                                      str r5, [r7]
004c4e80  3e 00 00 ea                                      b #0x4c4f80
004c4e84  04 30 95 e5                                      ldr r3, [r5, #4]
004c4e88  04 30 93 e5                                      ldr r3, [r3, #4]
004c4e8c  03 00 55 e1                                      cmp r5, r3
004c4e90  0c 40 95 05                                      ldreq r4, [r5, #0xc]
004c4e94  cc ff ff 0a                                      beq #0x4c4dcc
004c4e98  08 40 95 e5                                      ldr r4, [r5, #8]
004c4e9c  00 00 54 e3                                      cmp r4, #0
004c4ea0  c6 ff ff 1a                                      bne #0x4c4dc0
004c4ea4  04 40 95 e5                                      ldr r4, [r5, #4]
004c4ea8  08 30 94 e5                                      ldr r3, [r4, #8]
004c4eac  03 00 55 e1                                      cmp r5, r3
004c4eb0  01 00 00 0a                                      beq #0x4c4ebc
004c4eb4  c4 ff ff ea                                      b #0x4c4dcc
004c4eb8  03 40 a0 e1                                      mov r4, r3
004c4ebc  04 30 94 e5                                      ldr r3, [r4, #4]
004c4ec0  08 20 93 e5                                      ldr r2, [r3, #8]
004c4ec4  04 00 52 e1                                      cmp r2, r4
004c4ec8  fa ff ff 0a                                      beq #0x4c4eb8
004c4ecc  03 40 a0 e1                                      mov r4, r3
004c4ed0  bd ff ff ea                                      b #0x4c4dcc
004c4ed4  24 20 94 e5                                      ldr r2, [r4, #0x24]
004c4ed8  20 a0 94 e5                                      ldr sl, [r4, #0x20]
004c4edc  09 10 a0 e1                                      mov r1, sb
004c4ee0  02 00 a0 e1                                      mov r0, r2
004c4ee4  0a a0 62 e0                                      rsb sl, r2, sl
004c4ee8  0a 00 5b e1                                      cmp fp, sl
004c4eec  0b 20 a0 b1                                      movlt r2, fp
004c4ef0  0a 20 a0 a1                                      movge r2, sl
004c4ef4  0c 30 8d e5                                      str r3, [sp, #0xc]
004c4ef8  10 c0 8d e5                                      str ip, [sp, #0x10]
004c4efc  b7 25 f9 eb                                      bl #0x30e5e0
004c4f00  00 00 50 e3                                      cmp r0, #0
004c4f04  0c 30 9d e5                                      ldr r3, [sp, #0xc]
004c4f08  10 c0 9d e5                                      ldr ip, [sp, #0x10]
004c4f0c  6f 00 00 1a                                      bne #0x4c50d0
004c4f10  0a 00 5b e1                                      cmp fp, sl
004c4f14  c5 ff ff da                                      ble #0x4c4e30
004c4f18  0c c0 94 e5                                      ldr ip, [r4, #0xc]
004c4f1c  00 00 5c e3                                      cmp ip, #0
004c4f20  62 00 00 0a                                      beq #0x4c50b0
004c4f24  00 c0 a0 e3                                      mov ip, #0
004c4f28  06 10 a0 e1                                      mov r1, r6
004c4f2c  05 20 a0 e1                                      mov r2, r5
004c4f30  08 30 a0 e1                                      mov r3, r8
004c4f34  07 00 a0 e1                                      mov r0, r7
004c4f38  20 10 8d e8                                      stm sp, {r5, ip}
004c4f3c  5b fd ff eb                                      bl #0x4c44b0
004c4f40  0e 00 00 ea                                      b #0x4c4f80
004c4f44  cc ff ff aa                                      bge #0x4c4e7c
004c4f48  04 00 56 e1                                      cmp r6, r4
004c4f4c  9b 00 00 0a                                      beq #0x4c51c0
004c4f50  14 00 86 e2                                      add r0, r6, #0x14
004c4f54  08 10 a0 e1                                      mov r1, r8
004c4f58  10 20 84 e2                                      add r2, r4, #0x10
004c4f5c  25 3b f9 eb                                      bl #0x313bf8
004c4f60  00 00 50 e3                                      cmp r0, #0
004c4f64  93 00 00 1a                                      bne #0x4c51b8
004c4f68  06 10 a0 e1                                      mov r1, r6
004c4f6c  08 20 a0 e1                                      mov r2, r8
004c4f70  20 00 8d e2                                      add r0, sp, #0x20
004c4f74  01 fe ff eb                                      bl #0x4c4780
004c4f78  20 30 9d e5                                      ldr r3, [sp, #0x20]
004c4f7c  00 30 87 e5                                      str r3, [r7]
004c4f80  07 00 a0 e1                                      mov r0, r7
004c4f84  44 d0 8d e2                                      add sp, sp, #0x44
004c4f88  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004c4f8c  10 30 91 e5                                      ldr r3, [r1, #0x10]
004c4f90  00 00 53 e3                                      cmp r3, #0
004c4f94  9f 00 00 0a                                      beq #0x4c5218
004c4f98  14 30 98 e5                                      ldr r3, [r8, #0x14]
004c4f9c  24 10 95 e5                                      ldr r1, [r5, #0x24]
004c4fa0  10 40 98 e5                                      ldr r4, [r8, #0x10]
004c4fa4  20 a0 95 e5                                      ldr sl, [r5, #0x20]
004c4fa8  03 00 a0 e1                                      mov r0, r3
004c4fac  04 40 63 e0                                      rsb r4, r3, r4
004c4fb0  0a a0 61 e0                                      rsb sl, r1, sl
004c4fb4  04 00 5a e1                                      cmp sl, r4
004c4fb8  0a 20 a0 b1                                      movlt r2, sl
004c4fbc  04 20 a0 a1                                      movge r2, r4
004c4fc0  86 25 f9 eb                                      bl #0x30e5e0
004c4fc4  00 00 50 e3                                      cmp r0, #0
004c4fc8  03 00 00 1a                                      bne #0x4c4fdc
004c4fcc  0a 00 54 e1                                      cmp r4, sl
004c4fd0  d3 ff ff ba                                      blt #0x4c4f24
004c4fd4  00 00 a0 d3                                      movle r0, #0
004c4fd8  01 00 a0 c3                                      movgt r0, #1
004c4fdc  00 00 50 e3                                      cmp r0, #0
004c4fe0  cf ff ff ba                                      blt #0x4c4f24
004c4fe4  14 a0 86 e2                                      add sl, r6, #0x14
004c4fe8  10 10 85 e2                                      add r1, r5, #0x10
004c4fec  0a 00 a0 e1                                      mov r0, sl
004c4ff0  08 20 a0 e1                                      mov r2, r8
004c4ff4  ff 3a f9 eb                                      bl #0x313bf8
004c4ff8  00 00 50 e3                                      cmp r0, #0
004c4ffc  81 00 00 0a                                      beq #0x4c5208
004c5000  14 30 9d e5                                      ldr r3, [sp, #0x14]
004c5004  00 c0 93 e5                                      ldr ip, [r3]
004c5008  0c 40 9c e5                                      ldr r4, [ip, #0xc]
004c500c  00 00 54 e3                                      cmp r4, #0
004c5010  22 00 00 1a                                      bne #0x4c50a0
004c5014  04 30 9c e5                                      ldr r3, [ip, #4]
004c5018  0c 20 93 e5                                      ldr r2, [r3, #0xc]
004c501c  02 00 5c e1                                      cmp ip, r2
004c5020  0c 40 a0 11                                      movne r4, ip
004c5024  04 00 00 1a                                      bne #0x4c503c
004c5028  03 40 a0 e1                                      mov r4, r3
004c502c  04 30 93 e5                                      ldr r3, [r3, #4]
004c5030  0c 20 93 e5                                      ldr r2, [r3, #0xc]
004c5034  04 00 52 e1                                      cmp r2, r4
004c5038  fa ff ff 0a                                      beq #0x4c5028
004c503c  0c 20 94 e5                                      ldr r2, [r4, #0xc]
004c5040  02 00 53 e1                                      cmp r3, r2
004c5044  03 40 a0 11                                      movne r4, r3
004c5048  04 00 56 e1                                      cmp r6, r4
004c504c  7f 00 00 0a                                      beq #0x4c5250
004c5050  0a 00 a0 e1                                      mov r0, sl
004c5054  08 10 a0 e1                                      mov r1, r8
004c5058  10 20 84 e2                                      add r2, r4, #0x10
004c505c  e5 3a f9 eb                                      bl #0x313bf8
004c5060  00 00 50 e3                                      cmp r0, #0
004c5064  60 00 00 0a                                      beq #0x4c51ec
004c5068  14 20 9d e5                                      ldr r2, [sp, #0x14]
004c506c  00 c0 92 e5                                      ldr ip, [r2]
004c5070  0c e0 9c e5                                      ldr lr, [ip, #0xc]
004c5074  00 00 5e e3                                      cmp lr, #0
004c5078  6c 00 00 0a                                      beq #0x4c5230
004c507c  00 c0 a0 e3                                      mov ip, #0
004c5080  06 10 a0 e1                                      mov r1, r6
004c5084  04 20 a0 e1                                      mov r2, r4
004c5088  08 30 a0 e1                                      mov r3, r8
004c508c  07 00 a0 e1                                      mov r0, r7
004c5090  10 10 8d e8                                      stm sp, {r4, ip}
004c5094  05 fd ff eb                                      bl #0x4c44b0
004c5098  b8 ff ff ea                                      b #0x4c4f80
004c509c  03 40 a0 e1                                      mov r4, r3
004c50a0  08 30 94 e5                                      ldr r3, [r4, #8]
004c50a4  00 00 53 e3                                      cmp r3, #0
004c50a8  fb ff ff 1a                                      bne #0x4c509c
004c50ac  e5 ff ff ea                                      b #0x4c5048
004c50b0  06 10 a0 e1                                      mov r1, r6
004c50b4  04 20 a0 e1                                      mov r2, r4
004c50b8  08 30 a0 e1                                      mov r3, r8
004c50bc  07 00 a0 e1                                      mov r0, r7
004c50c0  00 c0 8d e5                                      str ip, [sp]
004c50c4  04 40 8d e5                                      str r4, [sp, #4]
004c50c8  f8 fc ff eb                                      bl #0x4c44b0
004c50cc  ab ff ff ea                                      b #0x4c4f80
004c50d0  56 ff ff aa                                      bge #0x4c4e30
004c50d4  0c c0 94 e5                                      ldr ip, [r4, #0xc]
004c50d8  00 00 5c e3                                      cmp ip, #0
004c50dc  90 ff ff 1a                                      bne #0x4c4f24
004c50e0  f2 ff ff ea                                      b #0x4c50b0
004c50e4  0c 40 95 e5                                      ldr r4, [r5, #0xc]
004c50e8  14 10 93 e5                                      ldr r1, [r3, #0x14]
004c50ec  10 90 93 e5                                      ldr sb, [r3, #0x10]
004c50f0  20 a0 94 e5                                      ldr sl, [r4, #0x20]
004c50f4  24 30 94 e5                                      ldr r3, [r4, #0x24]
004c50f8  09 90 61 e0                                      rsb sb, r1, sb
004c50fc  0a a0 63 e0                                      rsb sl, r3, sl
004c5100  0a 00 59 e1                                      cmp sb, sl
004c5104  09 20 a0 b1                                      movlt r2, sb
004c5108  0a 20 a0 a1                                      movge r2, sl
004c510c  03 00 a0 e1                                      mov r0, r3
004c5110  32 25 f9 eb                                      bl #0x30e5e0
004c5114  00 00 50 e3                                      cmp r0, #0
004c5118  03 00 00 1a                                      bne #0x4c512c
004c511c  09 00 5a e1                                      cmp sl, sb
004c5120  03 00 00 ba                                      blt #0x4c5134
004c5124  00 00 a0 d3                                      movle r0, #0
004c5128  01 00 a0 c3                                      movgt r0, #1
004c512c  00 00 50 e3                                      cmp r0, #0
004c5130  08 00 00 aa                                      bge #0x4c5158
004c5134  00 c0 a0 e3                                      mov ip, #0
004c5138  06 10 a0 e1                                      mov r1, r6
004c513c  04 20 a0 e1                                      mov r2, r4
004c5140  08 30 a0 e1                                      mov r3, r8
004c5144  07 00 a0 e1                                      mov r0, r7
004c5148  00 c0 8d e5                                      str ip, [sp]
004c514c  04 50 8d e5                                      str r5, [sp, #4]
004c5150  d6 fc ff eb                                      bl #0x4c44b0
004c5154  89 ff ff ea                                      b #0x4c4f80
004c5158  06 10 a0 e1                                      mov r1, r6
004c515c  08 20 a0 e1                                      mov r2, r8
004c5160  28 00 8d e2                                      add r0, sp, #0x28
004c5164  85 fd ff eb                                      bl #0x4c4780
004c5168  28 30 9d e5                                      ldr r3, [sp, #0x28]
004c516c  00 30 87 e5                                      str r3, [r7]
004c5170  82 ff ff ea                                      b #0x4c4f80
004c5174  04 20 95 e5                                      ldr r2, [r5, #4]
004c5178  0c 10 92 e5                                      ldr r1, [r2, #0xc]
004c517c  01 00 55 e1                                      cmp r5, r1
004c5180  05 40 a0 11                                      movne r4, r5
004c5184  04 00 00 0a                                      beq #0x4c519c
004c5188  0c 10 94 e5                                      ldr r1, [r4, #0xc]
004c518c  01 00 52 e1                                      cmp r2, r1
004c5190  02 40 a0 11                                      movne r4, r2
004c5194  2d ff ff ea                                      b #0x4c4e50
004c5198  01 20 a0 e1                                      mov r2, r1
004c519c  04 10 92 e5                                      ldr r1, [r2, #4]
004c51a0  0c 00 91 e5                                      ldr r0, [r1, #0xc]
004c51a4  02 00 50 e1                                      cmp r0, r2
004c51a8  fa ff ff 0a                                      beq #0x4c5198
004c51ac  02 40 a0 e1                                      mov r4, r2
004c51b0  01 20 a0 e1                                      mov r2, r1
004c51b4  f3 ff ff ea                                      b #0x4c5188
004c51b8  14 20 9d e5                                      ldr r2, [sp, #0x14]
004c51bc  00 50 92 e5                                      ldr r5, [r2]
004c51c0  0c c0 95 e5                                      ldr ip, [r5, #0xc]
004c51c4  00 00 5c e3                                      cmp ip, #0
004c51c8  ab ff ff 1a                                      bne #0x4c507c
004c51cc  06 10 a0 e1                                      mov r1, r6
004c51d0  05 20 a0 e1                                      mov r2, r5
004c51d4  08 30 a0 e1                                      mov r3, r8
004c51d8  07 00 a0 e1                                      mov r0, r7
004c51dc  00 c0 8d e5                                      str ip, [sp]
004c51e0  04 50 8d e5                                      str r5, [sp, #4]
004c51e4  b1 fc ff eb                                      bl #0x4c44b0
004c51e8  64 ff ff ea                                      b #0x4c4f80
004c51ec  06 10 a0 e1                                      mov r1, r6
004c51f0  08 20 a0 e1                                      mov r2, r8
004c51f4  30 00 8d e2                                      add r0, sp, #0x30
004c51f8  60 fd ff eb                                      bl #0x4c4780
004c51fc  30 30 9d e5                                      ldr r3, [sp, #0x30]
004c5200  00 30 87 e5                                      str r3, [r7]
004c5204  5d ff ff ea                                      b #0x4c4f80
004c5208  14 20 9d e5                                      ldr r2, [sp, #0x14]
004c520c  00 30 92 e5                                      ldr r3, [r2]
004c5210  00 30 87 e5                                      str r3, [r7]
004c5214  59 ff ff ea                                      b #0x4c4f80
004c5218  08 20 a0 e1                                      mov r2, r8
004c521c  38 00 8d e2                                      add r0, sp, #0x38
004c5220  56 fd ff eb                                      bl #0x4c4780
004c5224  38 30 9d e5                                      ldr r3, [sp, #0x38]
004c5228  00 30 87 e5                                      str r3, [r7]
004c522c  53 ff ff ea                                      b #0x4c4f80
004c5230  06 10 a0 e1                                      mov r1, r6
004c5234  0c 20 a0 e1                                      mov r2, ip
004c5238  08 30 a0 e1                                      mov r3, r8
004c523c  07 00 a0 e1                                      mov r0, r7
004c5240  00 e0 8d e5                                      str lr, [sp]
004c5244  04 c0 8d e5                                      str ip, [sp, #4]
004c5248  98 fc ff eb                                      bl #0x4c44b0
004c524c  4b ff ff ea                                      b #0x4c4f80
004c5250  00 e0 a0 e3                                      mov lr, #0
004c5254  06 10 a0 e1                                      mov r1, r6
004c5258  0c 20 a0 e1                                      mov r2, ip
004c525c  08 30 a0 e1                                      mov r3, r8
004c5260  07 00 a0 e1                                      mov r0, r7
004c5264  00 e0 8d e5                                      str lr, [sp]
004c5268  04 c0 8d e5                                      str ip, [sp, #4]
004c526c  8f fc ff eb                                      bl #0x4c44b0
004c5270  42 ff ff ea                                      b #0x4c4f80

; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008639d8, declared_size=52, range_size=52, mode=arm
; class-group: std::priv::_Rb_tree<long long, vox::HandleIdCompStruct, std::pair<long long const, vox::Handlable*>, std::priv::_Select1st<std::pair<long long const, vox::Handlable*> >, std::priv::_MapTraitsT<std::pair<long long const, vox::Handlable*> >, vox::SAllocator<std::pair<long long, vox::Handlable*>, (vox::VoxMemHint)0> >
; alias: _ZNSt4priv8_Rb_treeIxN3vox18HandleIdCompStructESt4pairIKxPNS1_9HandlableEENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EENS1_10SAllocatorIS3_IxS6_ELNS1_10VoxMemHintE0EEEE8_M_eraseEPNS_18_Rb_tree_node_baseE
; demangled: std::priv::_Rb_tree<long long, vox::HandleIdCompStruct, std::pair<long long const, vox::Handlable*>, std::priv::_Select1st<std::pair<long long const, vox::Handlable*> >, std::priv::_MapTraitsT<std::pair<long long const, vox::Handlable*> >, vox::SAllocator<std::pair<long long, vox::Handlable*>, (vox::VoxMemHint)0> >::_M_erase(std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
008639d8  70 40 2d e9                                      push {r4, r5, r6, lr}
008639dc  00 40 51 e2                                      subs r4, r1, #0
008639e0  00 50 a0 e1                                      mov r5, r0
008639e4  07 00 00 0a                                      beq #0x863a08
008639e8  0c 10 94 e5                                      ldr r1, [r4, #0xc]
008639ec  05 00 a0 e1                                      mov r0, r5
008639f0  f8 ff ff eb                                      bl #0x8639d8
008639f4  08 60 94 e5                                      ldr r6, [r4, #8]
008639f8  04 00 a0 e1                                      mov r0, r4
008639fc  90 b2 ea eb                                      bl #0x310444
00863a00  00 40 56 e2                                      subs r4, r6, #0
00863a04  f7 ff ff 1a                                      bne #0x8639e8
00863a08  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00864220, declared_size=324, range_size=324, mode=arm
; class-group: std::priv::_Rb_tree<long long, vox::HandleIdCompStruct, std::pair<long long const, vox::Handlable*>, std::priv::_Select1st<std::pair<long long const, vox::Handlable*> >, std::priv::_MapTraitsT<std::pair<long long const, vox::Handlable*> >, vox::SAllocator<std::pair<long long, vox::Handlable*>, (vox::VoxMemHint)0> >
; alias: _ZNSt4priv8_Rb_treeIxN3vox18HandleIdCompStructESt4pairIKxPNS1_9HandlableEENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EENS1_10SAllocatorIS3_IxS6_ELNS1_10VoxMemHintE0EEEE9_M_insertEPNS_18_Rb_tree_node_baseERKS7_SI_SI_
; demangled: std::priv::_Rb_tree<long long, vox::HandleIdCompStruct, std::pair<long long const, vox::Handlable*>, std::priv::_Select1st<std::pair<long long const, vox::Handlable*> >, std::priv::_MapTraitsT<std::pair<long long const, vox::Handlable*> >, vox::SAllocator<std::pair<long long, vox::Handlable*>, (vox::VoxMemHint)0> >::_M_insert(std::priv::_Rb_tree_node_base*, std::pair<long long const, vox::Handlable*> const&, std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
00864220  02 00 51 e1                                      cmp r1, r2
00864224  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00864228  01 40 a0 e1                                      mov r4, r1
0086422c  02 50 a0 e1                                      mov r5, r2
00864230  00 60 a0 e1                                      mov r6, r0
00864234  03 70 a0 e1                                      mov r7, r3
00864238  30 00 00 0a                                      beq #0x864300
0086423c  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
00864240  00 00 53 e3                                      cmp r3, #0
00864244  18 00 00 0a                                      beq #0x8642ac
00864248  20 00 a0 e3                                      mov r0, #0x20
0086424c  00 10 a0 e3                                      mov r1, #0
00864250  fc b0 ea eb                                      bl #0x310648
00864254  d0 20 c7 e1                                      ldrd r2, r3, [r7]
00864258  f0 21 c0 e1                                      strd r2, r3, [r0, #0x10]
0086425c  08 20 97 e5                                      ldr r2, [r7, #8]
00864260  00 30 a0 e3                                      mov r3, #0
00864264  0c 30 80 e5                                      str r3, [r0, #0xc]
00864268  18 20 80 e5                                      str r2, [r0, #0x18]
0086426c  08 30 80 e5                                      str r3, [r0, #8]
00864270  0c 00 85 e5                                      str r0, [r5, #0xc]
00864274  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00864278  00 70 a0 e1                                      mov r7, r0
0086427c  03 00 55 e1                                      cmp r5, r3
00864280  1c 00 00 0a                                      beq #0x8642f8
00864284  07 00 a0 e1                                      mov r0, r7
00864288  04 50 87 e5                                      str r5, [r7, #4]
0086428c  04 10 84 e2                                      add r1, r4, #4
00864290  32 bd ea eb                                      bl #0x313760
00864294  10 30 94 e5                                      ldr r3, [r4, #0x10]
00864298  06 00 a0 e1                                      mov r0, r6
0086429c  01 30 83 e2                                      add r3, r3, #1
008642a0  10 30 84 e5                                      str r3, [r4, #0x10]
008642a4  00 70 86 e5                                      str r7, [r6]
008642a8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
008642ac  18 30 9d e5                                      ldr r3, [sp, #0x18]
008642b0  00 00 53 e3                                      cmp r3, #0
008642b4  20 00 00 0a                                      beq #0x86433c
008642b8  20 00 a0 e3                                      mov r0, #0x20
008642bc  00 10 a0 e3                                      mov r1, #0
008642c0  e0 b0 ea eb                                      bl #0x310648
008642c4  d0 20 c7 e1                                      ldrd r2, r3, [r7]
008642c8  f0 21 c0 e1                                      strd r2, r3, [r0, #0x10]
008642cc  08 20 97 e5                                      ldr r2, [r7, #8]
008642d0  00 30 a0 e3                                      mov r3, #0
008642d4  0c 30 80 e5                                      str r3, [r0, #0xc]
008642d8  18 20 80 e5                                      str r2, [r0, #0x18]
008642dc  08 30 80 e5                                      str r3, [r0, #8]
008642e0  08 00 85 e5                                      str r0, [r5, #8]
008642e4  08 30 94 e5                                      ldr r3, [r4, #8]
008642e8  00 70 a0 e1                                      mov r7, r0
008642ec  03 00 55 e1                                      cmp r5, r3
008642f0  08 00 84 05                                      streq r0, [r4, #8]
008642f4  e2 ff ff ea                                      b #0x864284
008642f8  0c 70 84 e5                                      str r7, [r4, #0xc]
008642fc  e0 ff ff ea                                      b #0x864284
00864300  20 00 a0 e3                                      mov r0, #0x20
00864304  00 10 a0 e3                                      mov r1, #0
00864308  ce b0 ea eb                                      bl #0x310648
0086430c  d0 20 c7 e1                                      ldrd r2, r3, [r7]
00864310  f0 21 c0 e1                                      strd r2, r3, [r0, #0x10]
00864314  08 20 97 e5                                      ldr r2, [r7, #8]
00864318  00 30 a0 e3                                      mov r3, #0
0086431c  0c 30 80 e5                                      str r3, [r0, #0xc]
00864320  18 20 80 e5                                      str r2, [r0, #0x18]
00864324  08 30 80 e5                                      str r3, [r0, #8]
00864328  00 70 a0 e1                                      mov r7, r0
0086432c  08 00 84 e5                                      str r0, [r4, #8]
00864330  04 00 84 e5                                      str r0, [r4, #4]
00864334  0c 00 84 e5                                      str r0, [r4, #0xc]
00864338  d1 ff ff ea                                      b #0x864284
0086433c  14 20 92 e5                                      ldr r2, [r2, #0x14]
00864340  04 30 97 e5                                      ldr r3, [r7, #4]
00864344  03 00 52 e1                                      cmp r2, r3
00864348  da ff ff ca                                      bgt #0x8642b8
0086434c  bd ff ff 1a                                      bne #0x864248
00864350  10 20 95 e5                                      ldr r2, [r5, #0x10]
00864354  00 30 97 e5                                      ldr r3, [r7]
00864358  03 00 52 e1                                      cmp r2, r3
0086435c  b9 ff ff 9a                                      bls #0x864248
00864360  d4 ff ff ea                                      b #0x8642b8

; FUNCTION 0x00864364, declared_size=448, range_size=448, mode=arm
; class-group: std::priv::_Rb_tree<long long, vox::HandleIdCompStruct, std::pair<long long const, vox::Handlable*>, std::priv::_Select1st<std::pair<long long const, vox::Handlable*> >, std::priv::_MapTraitsT<std::pair<long long const, vox::Handlable*> >, vox::SAllocator<std::pair<long long, vox::Handlable*>, (vox::VoxMemHint)0> >
; alias: _ZNSt4priv8_Rb_treeIxN3vox18HandleIdCompStructESt4pairIKxPNS1_9HandlableEENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EENS1_10SAllocatorIS3_IxS6_ELNS1_10VoxMemHintE0EEEE13insert_uniqueERKS7_
; demangled: std::priv::_Rb_tree<long long, vox::HandleIdCompStruct, std::pair<long long const, vox::Handlable*>, std::priv::_Select1st<std::pair<long long const, vox::Handlable*> >, std::priv::_MapTraitsT<std::pair<long long const, vox::Handlable*> >, vox::SAllocator<std::pair<long long, vox::Handlable*>, (vox::VoxMemHint)0> >::insert_unique(std::pair<long long const, vox::Handlable*> const&)
; decoder-mode: arm
00864364  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00864368  04 c0 91 e5                                      ldr ip, [r1, #4]
0086436c  10 d0 4d e2                                      sub sp, sp, #0x10
00864370  00 40 a0 e1                                      mov r4, r0
00864374  00 00 5c e3                                      cmp ip, #0
00864378  02 30 a0 e1                                      mov r3, r2
0086437c  01 c0 a0 01                                      moveq ip, r1
00864380  20 00 00 0a                                      beq #0x864408
00864384  00 80 92 e5                                      ldr r8, [r2]
00864388  04 60 92 e5                                      ldr r6, [r2, #4]
0086438c  05 00 00 ea                                      b #0x8643a8
00864390  18 00 00 0a                                      beq #0x8643f8
00864394  0c 20 9c e5                                      ldr r2, [ip, #0xc]
00864398  00 50 a0 e3                                      mov r5, #0
0086439c  00 00 52 e3                                      cmp r2, #0
008643a0  08 00 00 0a                                      beq #0x8643c8
008643a4  02 c0 a0 e1                                      mov ip, r2
008643a8  14 00 9c e5                                      ldr r0, [ip, #0x14]
008643ac  10 70 9c e5                                      ldr r7, [ip, #0x10]
008643b0  01 50 a0 e3                                      mov r5, #1
008643b4  06 00 50 e1                                      cmp r0, r6
008643b8  f4 ff ff da                                      ble #0x864390
008643bc  08 20 9c e5                                      ldr r2, [ip, #8]
008643c0  00 00 52 e3                                      cmp r2, #0
008643c4  f6 ff ff 1a                                      bne #0x8643a4
008643c8  00 00 55 e3                                      cmp r5, #0
008643cc  0c 20 a0 01                                      moveq r2, ip
008643d0  0c 00 00 1a                                      bne #0x864408
008643d4  00 00 56 e1                                      cmp r6, r0
008643d8  23 00 00 ca                                      bgt #0x86446c
008643dc  2d 00 00 0a                                      beq #0x864498
008643e0  00 30 a0 e3                                      mov r3, #0
008643e4  00 20 84 e5                                      str r2, [r4]
008643e8  04 30 c4 e5                                      strb r3, [r4, #4]
008643ec  04 00 a0 e1                                      mov r0, r4
008643f0  10 d0 8d e2                                      add sp, sp, #0x10
008643f4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
008643f8  08 00 57 e1                                      cmp r7, r8
008643fc  e4 ff ff 9a                                      bls #0x864394
00864400  08 20 9c e5                                      ldr r2, [ip, #8]
00864404  ed ff ff ea                                      b #0x8643c0
00864408  08 20 91 e5                                      ldr r2, [r1, #8]
0086440c  02 00 5c e1                                      cmp ip, r2
00864410  39 00 00 0a                                      beq #0x8644fc
00864414  00 20 dc e5                                      ldrb r2, [ip]
00864418  00 00 52 e3                                      cmp r2, #0
0086441c  03 00 00 1a                                      bne #0x864430
00864420  04 20 9c e5                                      ldr r2, [ip, #4]
00864424  04 20 92 e5                                      ldr r2, [r2, #4]
00864428  02 00 5c e1                                      cmp ip, r2
0086442c  2b 00 00 0a                                      beq #0x8644e0
00864430  08 00 9c e5                                      ldr r0, [ip, #8]
00864434  00 00 50 e3                                      cmp r0, #0
00864438  01 00 00 1a                                      bne #0x864444
0086443c  18 00 00 ea                                      b #0x8644a4
00864440  02 00 a0 e1                                      mov r0, r2
00864444  0c 20 90 e5                                      ldr r2, [r0, #0xc]
00864448  00 00 52 e3                                      cmp r2, #0
0086444c  fb ff ff 1a                                      bne #0x864440
00864450  00 20 a0 e1                                      mov r2, r0
00864454  04 60 93 e5                                      ldr r6, [r3, #4]
00864458  10 70 90 e5                                      ldr r7, [r0, #0x10]
0086445c  14 00 90 e5                                      ldr r0, [r0, #0x14]
00864460  00 80 93 e5                                      ldr r8, [r3]
00864464  00 00 56 e1                                      cmp r6, r0
00864468  db ff ff da                                      ble #0x8643dc
0086446c  0c 20 a0 e1                                      mov r2, ip
00864470  08 00 8d e2                                      add r0, sp, #8
00864474  00 c0 a0 e3                                      mov ip, #0
00864478  04 c0 8d e5                                      str ip, [sp, #4]
0086447c  00 c0 8d e5                                      str ip, [sp]
00864480  66 ff ff eb                                      bl #0x864220
00864484  08 30 9d e5                                      ldr r3, [sp, #8]
00864488  01 20 a0 e3                                      mov r2, #1
0086448c  04 20 c4 e5                                      strb r2, [r4, #4]
00864490  00 30 84 e5                                      str r3, [r4]
00864494  d4 ff ff ea                                      b #0x8643ec
00864498  07 00 58 e1                                      cmp r8, r7
0086449c  cf ff ff 9a                                      bls #0x8643e0
008644a0  f1 ff ff ea                                      b #0x86446c
008644a4  04 00 9c e5                                      ldr r0, [ip, #4]
008644a8  08 20 90 e5                                      ldr r2, [r0, #8]
008644ac  02 00 5c e1                                      cmp ip, r2
008644b0  01 00 00 0a                                      beq #0x8644bc
008644b4  e5 ff ff ea                                      b #0x864450
008644b8  02 00 a0 e1                                      mov r0, r2
008644bc  04 20 90 e5                                      ldr r2, [r0, #4]
008644c0  08 50 92 e5                                      ldr r5, [r2, #8]
008644c4  00 00 55 e1                                      cmp r5, r0
008644c8  fa ff ff 0a                                      beq #0x8644b8
008644cc  00 80 93 e5                                      ldr r8, [r3]
008644d0  04 60 93 e5                                      ldr r6, [r3, #4]
008644d4  10 70 92 e5                                      ldr r7, [r2, #0x10]
008644d8  14 00 92 e5                                      ldr r0, [r2, #0x14]
008644dc  bc ff ff ea                                      b #0x8643d4
008644e0  0c 00 9c e5                                      ldr r0, [ip, #0xc]
008644e4  00 80 93 e5                                      ldr r8, [r3]
008644e8  04 60 93 e5                                      ldr r6, [r3, #4]
008644ec  00 20 a0 e1                                      mov r2, r0
008644f0  10 70 90 e5                                      ldr r7, [r0, #0x10]
008644f4  14 00 90 e5                                      ldr r0, [r0, #0x14]
008644f8  b5 ff ff ea                                      b #0x8643d4
008644fc  0c 20 a0 e1                                      mov r2, ip
00864500  00 e0 a0 e3                                      mov lr, #0
00864504  0c 00 8d e2                                      add r0, sp, #0xc
00864508  00 50 8d e8                                      stm sp, {ip, lr}
0086450c  43 ff ff eb                                      bl #0x864220
00864510  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00864514  01 20 a0 e3                                      mov r2, #1
00864518  04 20 c4 e5                                      strb r2, [r4, #4]
0086451c  00 30 84 e5                                      str r3, [r4]
00864520  b1 ff ff ea                                      b #0x8643ec

; FUNCTION 0x00864524, declared_size=976, range_size=976, mode=arm
; class-group: std::priv::_Rb_tree<long long, vox::HandleIdCompStruct, std::pair<long long const, vox::Handlable*>, std::priv::_Select1st<std::pair<long long const, vox::Handlable*> >, std::priv::_MapTraitsT<std::pair<long long const, vox::Handlable*> >, vox::SAllocator<std::pair<long long, vox::Handlable*>, (vox::VoxMemHint)0> >
; alias: _ZNSt4priv8_Rb_treeIxN3vox18HandleIdCompStructESt4pairIKxPNS1_9HandlableEENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EENS1_10SAllocatorIS3_IxS6_ELNS1_10VoxMemHintE0EEEE13insert_uniqueENS_17_Rb_tree_iteratorIS7_SB_EERKS7_
; demangled: std::priv::_Rb_tree<long long, vox::HandleIdCompStruct, std::pair<long long const, vox::Handlable*>, std::priv::_Select1st<std::pair<long long const, vox::Handlable*> >, std::priv::_MapTraitsT<std::pair<long long const, vox::Handlable*> >, vox::SAllocator<std::pair<long long, vox::Handlable*>, (vox::VoxMemHint)0> >::insert_unique(std::priv::_Rb_tree_iterator<std::pair<long long const, vox::Handlable*>, std::priv::_MapTraitsT<std::pair<long long const, vox::Handlable*> > >, std::pair<long long const, vox::Handlable*> const&)
; decoder-mode: arm
00864524  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00864528  00 40 92 e5                                      ldr r4, [r2]
0086452c  08 20 91 e5                                      ldr r2, [r1, #8]
00864530  2c d0 4d e2                                      sub sp, sp, #0x2c
00864534  01 50 a0 e1                                      mov r5, r1
00864538  02 00 54 e1                                      cmp r4, r2
0086453c  00 60 a0 e1                                      mov r6, r0
00864540  59 00 00 0a                                      beq #0x8646ac
00864544  01 00 54 e1                                      cmp r4, r1
00864548  7f 00 00 0a                                      beq #0x86474c
0086454c  00 20 d4 e5                                      ldrb r2, [r4]
00864550  00 00 52 e3                                      cmp r2, #0
00864554  25 00 00 0a                                      beq #0x8645f0
00864558  08 c0 94 e5                                      ldr ip, [r4, #8]
0086455c  00 00 5c e3                                      cmp ip, #0
00864560  01 00 00 1a                                      bne #0x86456c
00864564  29 00 00 ea                                      b #0x864610
00864568  02 c0 a0 e1                                      mov ip, r2
0086456c  0c 20 9c e5                                      ldr r2, [ip, #0xc]
00864570  00 00 52 e3                                      cmp r2, #0
00864574  fb ff ff 1a                                      bne #0x864568
00864578  04 10 93 e5                                      ldr r1, [r3, #4]
0086457c  14 80 94 e5                                      ldr r8, [r4, #0x14]
00864580  00 a0 93 e5                                      ldr sl, [r3]
00864584  10 b0 94 e5                                      ldr fp, [r4, #0x10]
00864588  01 00 58 e1                                      cmp r8, r1
0086458c  00 00 a0 e3                                      mov r0, #0
00864590  12 00 00 da                                      ble #0x8645e0
00864594  01 00 a0 e3                                      mov r0, #1
00864598  70 00 ef e6                                      uxtb r0, r0
0086459c  00 00 50 e3                                      cmp r0, #0
008645a0  2a 00 00 0a                                      beq #0x864650
008645a4  14 20 9c e5                                      ldr r2, [ip, #0x14]
008645a8  01 00 52 e1                                      cmp r2, r1
008645ac  23 00 00 aa                                      bge #0x864640
008645b0  0c e0 9c e5                                      ldr lr, [ip, #0xc]
008645b4  00 00 5e e3                                      cmp lr, #0
008645b8  9d 00 00 0a                                      beq #0x864834
008645bc  00 c0 a0 e3                                      mov ip, #0
008645c0  05 10 a0 e1                                      mov r1, r5
008645c4  04 20 a0 e1                                      mov r2, r4
008645c8  06 00 a0 e1                                      mov r0, r6
008645cc  10 10 8d e8                                      stm sp, {r4, ip}
008645d0  12 ff ff eb                                      bl #0x864220
008645d4  06 00 a0 e1                                      mov r0, r6
008645d8  2c d0 8d e2                                      add sp, sp, #0x2c
008645dc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
008645e0  ec ff ff 1a                                      bne #0x864598
008645e4  0a 00 5b e1                                      cmp fp, sl
008645e8  ea ff ff 9a                                      bls #0x864598
008645ec  e8 ff ff ea                                      b #0x864594
008645f0  04 20 94 e5                                      ldr r2, [r4, #4]
008645f4  04 20 92 e5                                      ldr r2, [r2, #4]
008645f8  02 00 54 e1                                      cmp r4, r2
008645fc  0c c0 94 05                                      ldreq ip, [r4, #0xc]
00864600  dc ff ff 0a                                      beq #0x864578
00864604  08 c0 94 e5                                      ldr ip, [r4, #8]
00864608  00 00 5c e3                                      cmp ip, #0
0086460c  d6 ff ff 1a                                      bne #0x86456c
00864610  04 c0 94 e5                                      ldr ip, [r4, #4]
00864614  08 20 9c e5                                      ldr r2, [ip, #8]
00864618  02 00 54 e1                                      cmp r4, r2
0086461c  01 00 00 0a                                      beq #0x864628
00864620  d4 ff ff ea                                      b #0x864578
00864624  02 c0 a0 e1                                      mov ip, r2
00864628  04 20 9c e5                                      ldr r2, [ip, #4]
0086462c  08 10 92 e5                                      ldr r1, [r2, #8]
00864630  0c 00 51 e1                                      cmp r1, ip
00864634  fa ff ff 0a                                      beq #0x864624
00864638  02 c0 a0 e1                                      mov ip, r2
0086463c  cd ff ff ea                                      b #0x864578
00864640  02 00 00 1a                                      bne #0x864650
00864644  10 20 9c e5                                      ldr r2, [ip, #0x10]
00864648  0a 00 52 e1                                      cmp r2, sl
0086464c  d7 ff ff 3a                                      blo #0x8645b0
00864650  0c 70 94 e5                                      ldr r7, [r4, #0xc]
00864654  00 00 57 e3                                      cmp r7, #0
00864658  67 00 00 0a                                      beq #0x8647fc
0086465c  07 c0 a0 e1                                      mov ip, r7
00864660  00 00 00 ea                                      b #0x864668
00864664  02 c0 a0 e1                                      mov ip, r2
00864668  08 20 9c e5                                      ldr r2, [ip, #8]
0086466c  00 00 52 e3                                      cmp r2, #0
00864670  fb ff ff 1a                                      bne #0x864664
00864674  00 00 50 e3                                      cmp r0, #0
00864678  04 00 00 1a                                      bne #0x864690
0086467c  08 00 51 e1                                      cmp r1, r8
00864680  42 00 00 ca                                      bgt #0x864790
00864684  3f 00 00 0a                                      beq #0x864788
00864688  00 40 86 e5                                      str r4, [r6]
0086468c  d0 ff ff ea                                      b #0x8645d4
00864690  03 20 a0 e1                                      mov r2, r3
00864694  05 10 a0 e1                                      mov r1, r5
00864698  08 00 8d e2                                      add r0, sp, #8
0086469c  30 ff ff eb                                      bl #0x864364
008646a0  08 30 9d e5                                      ldr r3, [sp, #8]
008646a4  00 30 86 e5                                      str r3, [r6]
008646a8  c9 ff ff ea                                      b #0x8645d4
008646ac  10 20 91 e5                                      ldr r2, [r1, #0x10]
008646b0  00 00 52 e3                                      cmp r2, #0
008646b4  81 00 00 0a                                      beq #0x8648c0
008646b8  04 20 93 e5                                      ldr r2, [r3, #4]
008646bc  14 10 94 e5                                      ldr r1, [r4, #0x14]
008646c0  00 00 93 e5                                      ldr r0, [r3]
008646c4  10 c0 94 e5                                      ldr ip, [r4, #0x10]
008646c8  02 00 51 e1                                      cmp r1, r2
008646cc  ba ff ff ca                                      bgt #0x8645bc
008646d0  5e 00 00 0a                                      beq #0x864850
008646d4  01 00 52 e1                                      cmp r2, r1
008646d8  02 00 00 ca                                      bgt #0x8646e8
008646dc  e9 ff ff 1a                                      bne #0x864688
008646e0  0c 00 50 e1                                      cmp r0, ip
008646e4  e7 ff ff 9a                                      bls #0x864688
008646e8  0c e0 94 e5                                      ldr lr, [r4, #0xc]
008646ec  00 00 5e e3                                      cmp lr, #0
008646f0  59 00 00 0a                                      beq #0x86485c
008646f4  0e c0 a0 e1                                      mov ip, lr
008646f8  00 00 00 ea                                      b #0x864700
008646fc  01 c0 a0 e1                                      mov ip, r1
00864700  08 10 9c e5                                      ldr r1, [ip, #8]
00864704  00 00 51 e3                                      cmp r1, #0
00864708  fb ff ff 1a                                      bne #0x8646fc
0086470c  0c 00 55 e1                                      cmp r5, ip
00864710  05 10 a0 01                                      moveq r1, r5
00864714  04 20 a0 01                                      moveq r2, r4
00864718  31 00 00 0a                                      beq #0x8647e4
0086471c  14 10 9c e5                                      ldr r1, [ip, #0x14]
00864720  10 70 9c e5                                      ldr r7, [ip, #0x10]
00864724  02 00 51 e1                                      cmp r1, r2
00864728  5b 00 00 ca                                      bgt #0x86489c
0086472c  58 00 00 0a                                      beq #0x864894
00864730  03 20 a0 e1                                      mov r2, r3
00864734  05 10 a0 e1                                      mov r1, r5
00864738  18 00 8d e2                                      add r0, sp, #0x18
0086473c  08 ff ff eb                                      bl #0x864364
00864740  18 30 9d e5                                      ldr r3, [sp, #0x18]
00864744  00 30 86 e5                                      str r3, [r6]
00864748  a1 ff ff ea                                      b #0x8645d4
0086474c  0c 20 94 e5                                      ldr r2, [r4, #0xc]
00864750  04 00 93 e5                                      ldr r0, [r3, #4]
00864754  00 e0 93 e5                                      ldr lr, [r3]
00864758  14 10 92 e5                                      ldr r1, [r2, #0x14]
0086475c  10 c0 92 e5                                      ldr ip, [r2, #0x10]
00864760  01 00 50 e1                                      cmp r0, r1
00864764  1d 00 00 ca                                      bgt #0x8647e0
00864768  1a 00 00 0a                                      beq #0x8647d8
0086476c  03 20 a0 e1                                      mov r2, r3
00864770  05 10 a0 e1                                      mov r1, r5
00864774  10 00 8d e2                                      add r0, sp, #0x10
00864778  f9 fe ff eb                                      bl #0x864364
0086477c  10 30 9d e5                                      ldr r3, [sp, #0x10]
00864780  00 30 86 e5                                      str r3, [r6]
00864784  92 ff ff ea                                      b #0x8645d4
00864788  0b 00 5a e1                                      cmp sl, fp
0086478c  bd ff ff 9a                                      bls #0x864688
00864790  0c 00 55 e1                                      cmp r5, ip
00864794  06 00 00 0a                                      beq #0x8647b4
00864798  14 20 9c e5                                      ldr r2, [ip, #0x14]
0086479c  01 00 52 e1                                      cmp r2, r1
008647a0  03 00 00 ca                                      bgt #0x8647b4
008647a4  b9 ff ff 1a                                      bne #0x864690
008647a8  10 20 9c e5                                      ldr r2, [ip, #0x10]
008647ac  0a 00 52 e1                                      cmp r2, sl
008647b0  b6 ff ff 9a                                      bls #0x864690
008647b4  00 00 57 e3                                      cmp r7, #0
008647b8  46 00 00 0a                                      beq #0x8648d8
008647bc  00 e0 a0 e3                                      mov lr, #0
008647c0  05 10 a0 e1                                      mov r1, r5
008647c4  0c 20 a0 e1                                      mov r2, ip
008647c8  06 00 a0 e1                                      mov r0, r6
008647cc  00 50 8d e8                                      stm sp, {ip, lr}
008647d0  92 fe ff eb                                      bl #0x864220
008647d4  7e ff ff ea                                      b #0x8645d4
008647d8  0c 00 5e e1                                      cmp lr, ip
008647dc  e2 ff ff 9a                                      bls #0x86476c
008647e0  05 10 a0 e1                                      mov r1, r5
008647e4  00 c0 a0 e3                                      mov ip, #0
008647e8  06 00 a0 e1                                      mov r0, r6
008647ec  00 c0 8d e5                                      str ip, [sp]
008647f0  04 40 8d e5                                      str r4, [sp, #4]
008647f4  89 fe ff eb                                      bl #0x864220
008647f8  75 ff ff ea                                      b #0x8645d4
008647fc  04 20 94 e5                                      ldr r2, [r4, #4]
00864800  0c c0 92 e5                                      ldr ip, [r2, #0xc]
00864804  0c 00 54 e1                                      cmp r4, ip
00864808  04 c0 a0 11                                      movne ip, r4
0086480c  04 00 00 1a                                      bne #0x864824
00864810  02 c0 a0 e1                                      mov ip, r2
00864814  04 20 92 e5                                      ldr r2, [r2, #4]
00864818  0c 90 92 e5                                      ldr sb, [r2, #0xc]
0086481c  09 00 5c e1                                      cmp ip, sb
00864820  fa ff ff 0a                                      beq #0x864810
00864824  0c 90 9c e5                                      ldr sb, [ip, #0xc]
00864828  09 00 52 e1                                      cmp r2, sb
0086482c  02 c0 a0 11                                      movne ip, r2
00864830  8f ff ff ea                                      b #0x864674
00864834  05 10 a0 e1                                      mov r1, r5
00864838  0c 20 a0 e1                                      mov r2, ip
0086483c  06 00 a0 e1                                      mov r0, r6
00864840  00 e0 8d e5                                      str lr, [sp]
00864844  04 c0 8d e5                                      str ip, [sp, #4]
00864848  74 fe ff eb                                      bl #0x864220
0086484c  60 ff ff ea                                      b #0x8645d4
00864850  00 00 5c e1                                      cmp ip, r0
00864854  9e ff ff 9a                                      bls #0x8646d4
00864858  57 ff ff ea                                      b #0x8645bc
0086485c  04 10 94 e5                                      ldr r1, [r4, #4]
00864860  0c c0 91 e5                                      ldr ip, [r1, #0xc]
00864864  0c 00 54 e1                                      cmp r4, ip
00864868  04 c0 a0 11                                      movne ip, r4
0086486c  04 00 00 1a                                      bne #0x864884
00864870  01 c0 a0 e1                                      mov ip, r1
00864874  04 10 91 e5                                      ldr r1, [r1, #4]
00864878  0c 70 91 e5                                      ldr r7, [r1, #0xc]
0086487c  0c 00 57 e1                                      cmp r7, ip
00864880  fa ff ff 0a                                      beq #0x864870
00864884  0c 70 9c e5                                      ldr r7, [ip, #0xc]
00864888  07 00 51 e1                                      cmp r1, r7
0086488c  01 c0 a0 11                                      movne ip, r1
00864890  9d ff ff ea                                      b #0x86470c
00864894  00 00 57 e1                                      cmp r7, r0
00864898  a4 ff ff 9a                                      bls #0x864730
0086489c  00 00 5e e3                                      cmp lr, #0
008648a0  c5 ff ff 1a                                      bne #0x8647bc
008648a4  05 10 a0 e1                                      mov r1, r5
008648a8  04 20 a0 e1                                      mov r2, r4
008648ac  06 00 a0 e1                                      mov r0, r6
008648b0  00 e0 8d e5                                      str lr, [sp]
008648b4  04 40 8d e5                                      str r4, [sp, #4]
008648b8  58 fe ff eb                                      bl #0x864220
008648bc  44 ff ff ea                                      b #0x8645d4
008648c0  03 20 a0 e1                                      mov r2, r3
008648c4  20 00 8d e2                                      add r0, sp, #0x20
008648c8  a5 fe ff eb                                      bl #0x864364
008648cc  20 30 9d e5                                      ldr r3, [sp, #0x20]
008648d0  00 30 86 e5                                      str r3, [r6]
008648d4  3e ff ff ea                                      b #0x8645d4
008648d8  05 10 a0 e1                                      mov r1, r5
008648dc  04 20 a0 e1                                      mov r2, r4
008648e0  06 00 a0 e1                                      mov r0, r6
008648e4  00 70 8d e5                                      str r7, [sp]
008648e8  04 40 8d e5                                      str r4, [sp, #4]
008648ec  4b fe ff eb                                      bl #0x864220
008648f0  37 ff ff ea                                      b #0x8645d4

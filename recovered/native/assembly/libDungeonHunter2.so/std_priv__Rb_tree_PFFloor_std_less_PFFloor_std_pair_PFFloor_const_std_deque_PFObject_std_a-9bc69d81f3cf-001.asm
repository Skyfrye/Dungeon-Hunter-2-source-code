; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00523690, declared_size=64, range_size=64, mode=arm
; class-group: std::priv::_Rb_tree<PFFloor*, std::less<PFFloor*>, std::pair<PFFloor* const, std::deque<PFObject*, std::allocator<PFObject*> > >, std::priv::_Select1st<std::pair<PFFloor* const, std::deque<PFObject*, std::allocator<PFObject*> > > >, std::priv::_MapTraitsT<std::pair<PFFloor* const, std::deque<PFObject*, std::allocator<PFObject*> > > >, std::allocator<std::pair<PFFloor* const, std::deque<PFObject*, std::allocator<PFObject*> > > > >
; alias: _ZNSt4priv8_Rb_treeIP7PFFloorSt4lessIS2_ESt4pairIKS2_St5dequeIP8PFObjectSaIS9_EEENS_10_Select1stISC_EENS_11_MapTraitsTISC_EESaISC_EE8_M_eraseEPNS_18_Rb_tree_node_baseE
; demangled: std::priv::_Rb_tree<PFFloor*, std::less<PFFloor*>, std::pair<PFFloor* const, std::deque<PFObject*, std::allocator<PFObject*> > >, std::priv::_Select1st<std::pair<PFFloor* const, std::deque<PFObject*, std::allocator<PFObject*> > > >, std::priv::_MapTraitsT<std::pair<PFFloor* const, std::deque<PFObject*, std::allocator<PFObject*> > > >, std::allocator<std::pair<PFFloor* const, std::deque<PFObject*, std::allocator<PFObject*> > > > >::_M_erase(std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
00523690  70 40 2d e9                                      push {r4, r5, r6, lr}
00523694  00 40 51 e2                                      subs r4, r1, #0
00523698  00 60 a0 e1                                      mov r6, r0
0052369c  0a 00 00 0a                                      beq #0x5236cc
005236a0  0c 10 94 e5                                      ldr r1, [r4, #0xc]
005236a4  06 00 a0 e1                                      mov r0, r6
005236a8  f8 ff ff eb                                      bl #0x523690
005236ac  08 50 94 e5                                      ldr r5, [r4, #8]
005236b0  14 00 84 e2                                      add r0, r4, #0x14
005236b4  d4 ff ff eb                                      bl #0x52360c
005236b8  04 00 a0 e1                                      mov r0, r4
005236bc  3c 10 a0 e3                                      mov r1, #0x3c
005236c0  0e 96 07 eb                                      bl #0x708f00
005236c4  00 40 55 e2                                      subs r4, r5, #0
005236c8  f4 ff ff 1a                                      bne #0x5236a0
005236cc  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00526f40, declared_size=76, range_size=76, mode=arm
; class-group: std::priv::_Rb_tree<PFFloor*, std::less<PFFloor*>, std::pair<PFFloor* const, std::deque<PFObject*, std::allocator<PFObject*> > >, std::priv::_Select1st<std::pair<PFFloor* const, std::deque<PFObject*, std::allocator<PFObject*> > > >, std::priv::_MapTraitsT<std::pair<PFFloor* const, std::deque<PFObject*, std::allocator<PFObject*> > > >, std::allocator<std::pair<PFFloor* const, std::deque<PFObject*, std::allocator<PFObject*> > > > >
; alias: _ZNSt4priv8_Rb_treeIP7PFFloorSt4lessIS2_ESt4pairIKS2_St5dequeIP8PFObjectSaIS9_EEENS_10_Select1stISC_EENS_11_MapTraitsTISC_EESaISC_EE14_M_create_nodeERKSC_
; demangled: std::priv::_Rb_tree<PFFloor*, std::less<PFFloor*>, std::pair<PFFloor* const, std::deque<PFObject*, std::allocator<PFObject*> > >, std::priv::_Select1st<std::pair<PFFloor* const, std::deque<PFObject*, std::allocator<PFObject*> > > >, std::priv::_MapTraitsT<std::pair<PFFloor* const, std::deque<PFObject*, std::allocator<PFObject*> > > >, std::allocator<std::pair<PFFloor* const, std::deque<PFObject*, std::allocator<PFObject*> > > > >::_M_create_node(std::pair<PFFloor* const, std::deque<PFObject*, std::allocator<PFObject*> > > const&)
; decoder-mode: arm
00526f40  30 40 2d e9                                      push {r4, r5, lr}
00526f44  0c d0 4d e2                                      sub sp, sp, #0xc
00526f48  08 00 8d e2                                      add r0, sp, #8
00526f4c  3c 30 a0 e3                                      mov r3, #0x3c
00526f50  04 30 20 e5                                      str r3, [r0, #-4]!
00526f54  01 50 a0 e1                                      mov r5, r1
00526f58  d8 87 07 eb                                      bl #0x708ec0
00526f5c  05 10 a0 e1                                      mov r1, r5
00526f60  04 30 91 e4                                      ldr r3, [r1], #4
00526f64  00 40 a0 e1                                      mov r4, r0
00526f68  14 00 80 e2                                      add r0, r0, #0x14
00526f6c  10 30 84 e5                                      str r3, [r4, #0x10]
00526f70  b3 ff ff eb                                      bl #0x526e44
00526f74  00 30 a0 e3                                      mov r3, #0
00526f78  0c 30 84 e5                                      str r3, [r4, #0xc]
00526f7c  08 30 84 e5                                      str r3, [r4, #8]
00526f80  04 00 a0 e1                                      mov r0, r4
00526f84  0c d0 8d e2                                      add sp, sp, #0xc
00526f88  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x00526f8c, declared_size=216, range_size=216, mode=arm
; class-group: std::priv::_Rb_tree<PFFloor*, std::less<PFFloor*>, std::pair<PFFloor* const, std::deque<PFObject*, std::allocator<PFObject*> > >, std::priv::_Select1st<std::pair<PFFloor* const, std::deque<PFObject*, std::allocator<PFObject*> > > >, std::priv::_MapTraitsT<std::pair<PFFloor* const, std::deque<PFObject*, std::allocator<PFObject*> > > >, std::allocator<std::pair<PFFloor* const, std::deque<PFObject*, std::allocator<PFObject*> > > > >
; alias: _ZNSt4priv8_Rb_treeIP7PFFloorSt4lessIS2_ESt4pairIKS2_St5dequeIP8PFObjectSaIS9_EEENS_10_Select1stISC_EENS_11_MapTraitsTISC_EESaISC_EE9_M_insertEPNS_18_Rb_tree_node_baseERKSC_SK_SK_
; demangled: std::priv::_Rb_tree<PFFloor*, std::less<PFFloor*>, std::pair<PFFloor* const, std::deque<PFObject*, std::allocator<PFObject*> > >, std::priv::_Select1st<std::pair<PFFloor* const, std::deque<PFObject*, std::allocator<PFObject*> > > >, std::priv::_MapTraitsT<std::pair<PFFloor* const, std::deque<PFObject*, std::allocator<PFObject*> > > >, std::allocator<std::pair<PFFloor* const, std::deque<PFObject*, std::allocator<PFObject*> > > > >::_M_insert(std::priv::_Rb_tree_node_base*, std::pair<PFFloor* const, std::deque<PFObject*, std::allocator<PFObject*> > > const&, std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
00526f8c  02 00 51 e1                                      cmp r1, r2
00526f90  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00526f94  01 40 a0 e1                                      mov r4, r1
00526f98  02 50 a0 e1                                      mov r5, r2
00526f9c  00 60 a0 e1                                      mov r6, r0
00526fa0  22 00 00 0a                                      beq #0x527030
00526fa4  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00526fa8  00 00 52 e3                                      cmp r2, #0
00526fac  11 00 00 0a                                      beq #0x526ff8
00526fb0  03 10 a0 e1                                      mov r1, r3
00526fb4  04 00 a0 e1                                      mov r0, r4
00526fb8  e0 ff ff eb                                      bl #0x526f40
00526fbc  0c 00 85 e5                                      str r0, [r5, #0xc]
00526fc0  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00526fc4  00 70 a0 e1                                      mov r7, r0
00526fc8  03 00 55 e1                                      cmp r5, r3
00526fcc  15 00 00 0a                                      beq #0x527028
00526fd0  07 00 a0 e1                                      mov r0, r7
00526fd4  04 50 87 e5                                      str r5, [r7, #4]
00526fd8  04 10 84 e2                                      add r1, r4, #4
00526fdc  df b1 f7 eb                                      bl #0x313760
00526fe0  10 30 94 e5                                      ldr r3, [r4, #0x10]
00526fe4  06 00 a0 e1                                      mov r0, r6
00526fe8  01 30 83 e2                                      add r3, r3, #1
00526fec  10 30 84 e5                                      str r3, [r4, #0x10]
00526ff0  00 70 86 e5                                      str r7, [r6]
00526ff4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00526ff8  18 20 9d e5                                      ldr r2, [sp, #0x18]
00526ffc  00 00 52 e3                                      cmp r2, #0
00527000  12 00 00 0a                                      beq #0x527050
00527004  03 10 a0 e1                                      mov r1, r3
00527008  04 00 a0 e1                                      mov r0, r4
0052700c  cb ff ff eb                                      bl #0x526f40
00527010  08 00 85 e5                                      str r0, [r5, #8]
00527014  08 30 94 e5                                      ldr r3, [r4, #8]
00527018  00 70 a0 e1                                      mov r7, r0
0052701c  03 00 55 e1                                      cmp r5, r3
00527020  08 00 84 05                                      streq r0, [r4, #8]
00527024  e9 ff ff ea                                      b #0x526fd0
00527028  0c 70 84 e5                                      str r7, [r4, #0xc]
0052702c  e7 ff ff ea                                      b #0x526fd0
00527030  03 10 a0 e1                                      mov r1, r3
00527034  04 00 a0 e1                                      mov r0, r4
00527038  c0 ff ff eb                                      bl #0x526f40
0052703c  00 70 a0 e1                                      mov r7, r0
00527040  08 00 84 e5                                      str r0, [r4, #8]
00527044  04 00 84 e5                                      str r0, [r4, #4]
00527048  0c 00 84 e5                                      str r0, [r4, #0xc]
0052704c  df ff ff ea                                      b #0x526fd0
00527050  00 10 93 e5                                      ldr r1, [r3]
00527054  10 20 95 e5                                      ldr r2, [r5, #0x10]
00527058  02 00 51 e1                                      cmp r1, r2
0052705c  d3 ff ff 2a                                      bhs #0x526fb0
00527060  e7 ff ff ea                                      b #0x527004

; FUNCTION 0x00527064, declared_size=392, range_size=392, mode=arm
; class-group: std::priv::_Rb_tree<PFFloor*, std::less<PFFloor*>, std::pair<PFFloor* const, std::deque<PFObject*, std::allocator<PFObject*> > >, std::priv::_Select1st<std::pair<PFFloor* const, std::deque<PFObject*, std::allocator<PFObject*> > > >, std::priv::_MapTraitsT<std::pair<PFFloor* const, std::deque<PFObject*, std::allocator<PFObject*> > > >, std::allocator<std::pair<PFFloor* const, std::deque<PFObject*, std::allocator<PFObject*> > > > >
; alias: _ZNSt4priv8_Rb_treeIP7PFFloorSt4lessIS2_ESt4pairIKS2_St5dequeIP8PFObjectSaIS9_EEENS_10_Select1stISC_EENS_11_MapTraitsTISC_EESaISC_EE13insert_uniqueERKSC_
; demangled: std::priv::_Rb_tree<PFFloor*, std::less<PFFloor*>, std::pair<PFFloor* const, std::deque<PFObject*, std::allocator<PFObject*> > >, std::priv::_Select1st<std::pair<PFFloor* const, std::deque<PFObject*, std::allocator<PFObject*> > > >, std::priv::_MapTraitsT<std::pair<PFFloor* const, std::deque<PFObject*, std::allocator<PFObject*> > > >, std::allocator<std::pair<PFFloor* const, std::deque<PFObject*, std::allocator<PFObject*> > > > >::insert_unique(std::pair<PFFloor* const, std::deque<PFObject*, std::allocator<PFObject*> > > const&)
; decoder-mode: arm
00527064  70 40 2d e9                                      push {r4, r5, r6, lr}
00527068  04 c0 91 e5                                      ldr ip, [r1, #4]
0052706c  10 d0 4d e2                                      sub sp, sp, #0x10
00527070  00 40 a0 e1                                      mov r4, r0
00527074  00 00 5c e3                                      cmp ip, #0
00527078  02 30 a0 e1                                      mov r3, r2
0052707c  01 c0 a0 01                                      moveq ip, r1
00527080  15 00 00 0a                                      beq #0x5270dc
00527084  00 60 92 e5                                      ldr r6, [r2]
00527088  00 00 00 ea                                      b #0x527090
0052708c  02 c0 a0 e1                                      mov ip, r2
00527090  10 00 9c e5                                      ldr r0, [ip, #0x10]
00527094  01 50 a0 e3                                      mov r5, #1
00527098  06 00 50 e1                                      cmp r0, r6
0052709c  08 20 9c 85                                      ldrhi r2, [ip, #8]
005270a0  0c 20 9c 95                                      ldrls r2, [ip, #0xc]
005270a4  00 50 a0 93                                      movls r5, #0
005270a8  00 00 52 e3                                      cmp r2, #0
005270ac  f6 ff ff 1a                                      bne #0x52708c
005270b0  00 00 55 e3                                      cmp r5, #0
005270b4  0c 50 a0 01                                      moveq r5, ip
005270b8  07 00 00 1a                                      bne #0x5270dc
005270bc  00 00 56 e1                                      cmp r6, r0
005270c0  00 30 a0 93                                      movls r3, #0
005270c4  00 50 84 95                                      strls r5, [r4]
005270c8  04 30 c4 95                                      strbls r3, [r4, #4]
005270cc  1c 00 00 8a                                      bhi #0x527144
005270d0  04 00 a0 e1                                      mov r0, r4
005270d4  10 d0 8d e2                                      add sp, sp, #0x10
005270d8  70 80 bd e8                                      pop {r4, r5, r6, pc}
005270dc  08 20 91 e5                                      ldr r2, [r1, #8]
005270e0  02 00 5c e1                                      cmp ip, r2
005270e4  36 00 00 0a                                      beq #0x5271c4
005270e8  00 20 dc e5                                      ldrb r2, [ip]
005270ec  00 00 52 e3                                      cmp r2, #0
005270f0  03 00 00 1a                                      bne #0x527104
005270f4  04 20 9c e5                                      ldr r2, [ip, #4]
005270f8  04 20 92 e5                                      ldr r2, [r2, #4]
005270fc  02 00 5c e1                                      cmp ip, r2
00527100  2a 00 00 0a                                      beq #0x5271b0
00527104  08 00 9c e5                                      ldr r0, [ip, #8]
00527108  00 00 50 e3                                      cmp r0, #0
0052710c  01 00 00 1a                                      bne #0x527118
00527110  16 00 00 ea                                      b #0x527170
00527114  02 00 a0 e1                                      mov r0, r2
00527118  0c 20 90 e5                                      ldr r2, [r0, #0xc]
0052711c  00 00 52 e3                                      cmp r2, #0
00527120  fb ff ff 1a                                      bne #0x527114
00527124  00 60 93 e5                                      ldr r6, [r3]
00527128  00 50 a0 e1                                      mov r5, r0
0052712c  10 00 90 e5                                      ldr r0, [r0, #0x10]
00527130  00 00 56 e1                                      cmp r6, r0
00527134  00 30 a0 93                                      movls r3, #0
00527138  00 50 84 95                                      strls r5, [r4]
0052713c  04 30 c4 95                                      strbls r3, [r4, #4]
00527140  e2 ff ff 9a                                      bls #0x5270d0
00527144  0c 20 a0 e1                                      mov r2, ip
00527148  08 00 8d e2                                      add r0, sp, #8
0052714c  00 c0 a0 e3                                      mov ip, #0
00527150  04 c0 8d e5                                      str ip, [sp, #4]
00527154  00 c0 8d e5                                      str ip, [sp]
00527158  8b ff ff eb                                      bl #0x526f8c
0052715c  08 30 9d e5                                      ldr r3, [sp, #8]
00527160  01 20 a0 e3                                      mov r2, #1
00527164  04 20 c4 e5                                      strb r2, [r4, #4]
00527168  00 30 84 e5                                      str r3, [r4]
0052716c  d7 ff ff ea                                      b #0x5270d0
00527170  04 20 9c e5                                      ldr r2, [ip, #4]
00527174  08 00 92 e5                                      ldr r0, [r2, #8]
00527178  00 00 5c e1                                      cmp ip, r0
0052717c  02 50 a0 11                                      movne r5, r2
00527180  00 60 93 15                                      ldrne r6, [r3]
00527184  10 00 92 15                                      ldrne r0, [r2, #0x10]
00527188  01 00 00 0a                                      beq #0x527194
0052718c  ca ff ff ea                                      b #0x5270bc
00527190  05 20 a0 e1                                      mov r2, r5
00527194  04 50 92 e5                                      ldr r5, [r2, #4]
00527198  08 00 95 e5                                      ldr r0, [r5, #8]
0052719c  02 00 50 e1                                      cmp r0, r2
005271a0  fa ff ff 0a                                      beq #0x527190
005271a4  00 60 93 e5                                      ldr r6, [r3]
005271a8  10 00 95 e5                                      ldr r0, [r5, #0x10]
005271ac  c2 ff ff ea                                      b #0x5270bc
005271b0  0c 20 9c e5                                      ldr r2, [ip, #0xc]
005271b4  00 60 93 e5                                      ldr r6, [r3]
005271b8  02 50 a0 e1                                      mov r5, r2
005271bc  10 00 92 e5                                      ldr r0, [r2, #0x10]
005271c0  bd ff ff ea                                      b #0x5270bc
005271c4  0c 20 a0 e1                                      mov r2, ip
005271c8  00 e0 a0 e3                                      mov lr, #0
005271cc  0c 00 8d e2                                      add r0, sp, #0xc
005271d0  00 50 8d e8                                      stm sp, {ip, lr}
005271d4  6c ff ff eb                                      bl #0x526f8c
005271d8  0c 30 9d e5                                      ldr r3, [sp, #0xc]
005271dc  01 20 a0 e3                                      mov r2, #1
005271e0  04 20 c4 e5                                      strb r2, [r4, #4]
005271e4  00 30 84 e5                                      str r3, [r4]
005271e8  b8 ff ff ea                                      b #0x5270d0

; FUNCTION 0x005271ec, declared_size=884, range_size=884, mode=arm
; class-group: std::priv::_Rb_tree<PFFloor*, std::less<PFFloor*>, std::pair<PFFloor* const, std::deque<PFObject*, std::allocator<PFObject*> > >, std::priv::_Select1st<std::pair<PFFloor* const, std::deque<PFObject*, std::allocator<PFObject*> > > >, std::priv::_MapTraitsT<std::pair<PFFloor* const, std::deque<PFObject*, std::allocator<PFObject*> > > >, std::allocator<std::pair<PFFloor* const, std::deque<PFObject*, std::allocator<PFObject*> > > > >
; alias: _ZNSt4priv8_Rb_treeIP7PFFloorSt4lessIS2_ESt4pairIKS2_St5dequeIP8PFObjectSaIS9_EEENS_10_Select1stISC_EENS_11_MapTraitsTISC_EESaISC_EE13insert_uniqueENS_17_Rb_tree_iteratorISC_SG_EERKSC_
; demangled: std::priv::_Rb_tree<PFFloor*, std::less<PFFloor*>, std::pair<PFFloor* const, std::deque<PFObject*, std::allocator<PFObject*> > >, std::priv::_Select1st<std::pair<PFFloor* const, std::deque<PFObject*, std::allocator<PFObject*> > > >, std::priv::_MapTraitsT<std::pair<PFFloor* const, std::deque<PFObject*, std::allocator<PFObject*> > > >, std::allocator<std::pair<PFFloor* const, std::deque<PFObject*, std::allocator<PFObject*> > > > >::insert_unique(std::priv::_Rb_tree_iterator<std::pair<PFFloor* const, std::deque<PFObject*, std::allocator<PFObject*> > >, std::priv::_MapTraitsT<std::pair<PFFloor* const, std::deque<PFObject*, std::allocator<PFObject*> > > > >, std::pair<PFFloor* const, std::deque<PFObject*, std::allocator<PFObject*> > > const&)
; decoder-mode: arm
005271ec  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
005271f0  00 40 92 e5                                      ldr r4, [r2]
005271f4  08 20 91 e5                                      ldr r2, [r1, #8]
005271f8  2c d0 4d e2                                      sub sp, sp, #0x2c
005271fc  01 50 a0 e1                                      mov r5, r1
00527200  02 00 54 e1                                      cmp r4, r2
00527204  00 70 a0 e1                                      mov r7, r0
00527208  03 60 a0 e1                                      mov r6, r3
0052720c  5a 00 00 0a                                      beq #0x52737c
00527210  01 00 54 e1                                      cmp r4, r1
00527214  78 00 00 0a                                      beq #0x5273fc
00527218  00 30 d4 e5                                      ldrb r3, [r4]
0052721c  00 00 53 e3                                      cmp r3, #0
00527220  3a 00 00 0a                                      beq #0x527310
00527224  08 c0 94 e5                                      ldr ip, [r4, #8]
00527228  00 00 5c e3                                      cmp ip, #0
0052722c  01 00 00 1a                                      bne #0x527238
00527230  3e 00 00 ea                                      b #0x527330
00527234  03 c0 a0 e1                                      mov ip, r3
00527238  0c 30 9c e5                                      ldr r3, [ip, #0xc]
0052723c  00 00 53 e3                                      cmp r3, #0
00527240  fb ff ff 1a                                      bne #0x527234
00527244  00 20 96 e5                                      ldr r2, [r6]
00527248  10 00 94 e5                                      ldr r0, [r4, #0x10]
0052724c  00 00 52 e1                                      cmp r2, r0
00527250  00 10 a0 23                                      movhs r1, #0
00527254  01 10 a0 33                                      movlo r1, #1
00527258  00 00 51 e3                                      cmp r1, #0
0052725c  1b 00 00 1a                                      bne #0x5272d0
00527260  0c 80 94 e5                                      ldr r8, [r4, #0xc]
00527264  00 00 58 e3                                      cmp r8, #0
00527268  7d 00 00 0a                                      beq #0x527464
0052726c  08 c0 a0 e1                                      mov ip, r8
00527270  00 00 00 ea                                      b #0x527278
00527274  03 c0 a0 e1                                      mov ip, r3
00527278  08 30 9c e5                                      ldr r3, [ip, #8]
0052727c  00 00 53 e3                                      cmp r3, #0
00527280  fb ff ff 1a                                      bne #0x527274
00527284  00 00 51 e3                                      cmp r1, #0
00527288  34 00 00 1a                                      bne #0x527360
0052728c  00 00 52 e1                                      cmp r2, r0
00527290  63 00 00 9a                                      bls #0x527424
00527294  0c 00 55 e1                                      cmp r5, ip
00527298  02 00 00 0a                                      beq #0x5272a8
0052729c  10 30 9c e5                                      ldr r3, [ip, #0x10]
005272a0  03 00 52 e1                                      cmp r2, r3
005272a4  2d 00 00 2a                                      bhs #0x527360
005272a8  00 00 58 e3                                      cmp r8, #0
005272ac  4a 00 00 1a                                      bne #0x5273dc
005272b0  05 10 a0 e1                                      mov r1, r5
005272b4  04 20 a0 e1                                      mov r2, r4
005272b8  06 30 a0 e1                                      mov r3, r6
005272bc  07 00 a0 e1                                      mov r0, r7
005272c0  00 80 8d e5                                      str r8, [sp]
005272c4  04 40 8d e5                                      str r4, [sp, #4]
005272c8  2f ff ff eb                                      bl #0x526f8c
005272cc  0c 00 00 ea                                      b #0x527304
005272d0  10 30 9c e5                                      ldr r3, [ip, #0x10]
005272d4  03 00 52 e1                                      cmp r2, r3
005272d8  e0 ff ff 9a                                      bls #0x527260
005272dc  0c e0 9c e5                                      ldr lr, [ip, #0xc]
005272e0  00 00 5e e3                                      cmp lr, #0
005272e4  56 00 00 0a                                      beq #0x527444
005272e8  00 c0 a0 e3                                      mov ip, #0
005272ec  05 10 a0 e1                                      mov r1, r5
005272f0  04 20 a0 e1                                      mov r2, r4
005272f4  06 30 a0 e1                                      mov r3, r6
005272f8  07 00 a0 e1                                      mov r0, r7
005272fc  10 10 8d e8                                      stm sp, {r4, ip}
00527300  21 ff ff eb                                      bl #0x526f8c
00527304  07 00 a0 e1                                      mov r0, r7
00527308  2c d0 8d e2                                      add sp, sp, #0x2c
0052730c  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00527310  04 30 94 e5                                      ldr r3, [r4, #4]
00527314  04 30 93 e5                                      ldr r3, [r3, #4]
00527318  03 00 54 e1                                      cmp r4, r3
0052731c  0c c0 94 05                                      ldreq ip, [r4, #0xc]
00527320  c7 ff ff 0a                                      beq #0x527244
00527324  08 c0 94 e5                                      ldr ip, [r4, #8]
00527328  00 00 5c e3                                      cmp ip, #0
0052732c  c1 ff ff 1a                                      bne #0x527238
00527330  04 c0 94 e5                                      ldr ip, [r4, #4]
00527334  08 30 9c e5                                      ldr r3, [ip, #8]
00527338  03 00 54 e1                                      cmp r4, r3
0052733c  01 00 00 0a                                      beq #0x527348
00527340  bf ff ff ea                                      b #0x527244
00527344  03 c0 a0 e1                                      mov ip, r3
00527348  04 30 9c e5                                      ldr r3, [ip, #4]
0052734c  08 20 93 e5                                      ldr r2, [r3, #8]
00527350  0c 00 52 e1                                      cmp r2, ip
00527354  fa ff ff 0a                                      beq #0x527344
00527358  03 c0 a0 e1                                      mov ip, r3
0052735c  b8 ff ff ea                                      b #0x527244
00527360  05 10 a0 e1                                      mov r1, r5
00527364  06 20 a0 e1                                      mov r2, r6
00527368  08 00 8d e2                                      add r0, sp, #8
0052736c  3c ff ff eb                                      bl #0x527064
00527370  08 30 9d e5                                      ldr r3, [sp, #8]
00527374  00 30 87 e5                                      str r3, [r7]
00527378  e1 ff ff ea                                      b #0x527304
0052737c  10 20 91 e5                                      ldr r2, [r1, #0x10]
00527380  00 00 52 e3                                      cmp r2, #0
00527384  52 00 00 0a                                      beq #0x5274d4
00527388  00 20 93 e5                                      ldr r2, [r3]
0052738c  10 c0 94 e5                                      ldr ip, [r4, #0x10]
00527390  0c 00 52 e1                                      cmp r2, ip
00527394  54 00 00 3a                                      blo #0x5274ec
00527398  21 00 00 9a                                      bls #0x527424
0052739c  0c e0 94 e5                                      ldr lr, [r4, #0xc]
005273a0  00 00 5e e3                                      cmp lr, #0
005273a4  3c 00 00 0a                                      beq #0x52749c
005273a8  0e c0 a0 e1                                      mov ip, lr
005273ac  00 00 00 ea                                      b #0x5273b4
005273b0  03 c0 a0 e1                                      mov ip, r3
005273b4  08 30 9c e5                                      ldr r3, [ip, #8]
005273b8  00 00 53 e3                                      cmp r3, #0
005273bc  fb ff ff 1a                                      bne #0x5273b0
005273c0  0c 00 55 e1                                      cmp r5, ip
005273c4  5c 00 00 0a                                      beq #0x52753c
005273c8  10 30 9c e5                                      ldr r3, [ip, #0x10]
005273cc  03 00 52 e1                                      cmp r2, r3
005273d0  4a 00 00 2a                                      bhs #0x527500
005273d4  00 00 5e e3                                      cmp lr, #0
005273d8  4f 00 00 0a                                      beq #0x52751c
005273dc  00 e0 a0 e3                                      mov lr, #0
005273e0  05 10 a0 e1                                      mov r1, r5
005273e4  0c 20 a0 e1                                      mov r2, ip
005273e8  06 30 a0 e1                                      mov r3, r6
005273ec  07 00 a0 e1                                      mov r0, r7
005273f0  00 50 8d e8                                      stm sp, {ip, lr}
005273f4  e4 fe ff eb                                      bl #0x526f8c
005273f8  c1 ff ff ea                                      b #0x527304
005273fc  0c 20 94 e5                                      ldr r2, [r4, #0xc]
00527400  00 c0 93 e5                                      ldr ip, [r3]
00527404  10 e0 92 e5                                      ldr lr, [r2, #0x10]
00527408  0c 00 5e e1                                      cmp lr, ip
0052740c  06 00 00 2a                                      bhs #0x52742c
00527410  00 c0 a0 e3                                      mov ip, #0
00527414  00 c0 8d e5                                      str ip, [sp]
00527418  04 40 8d e5                                      str r4, [sp, #4]
0052741c  da fe ff eb                                      bl #0x526f8c
00527420  b7 ff ff ea                                      b #0x527304
00527424  00 40 87 e5                                      str r4, [r7]
00527428  b5 ff ff ea                                      b #0x527304
0052742c  03 20 a0 e1                                      mov r2, r3
00527430  10 00 8d e2                                      add r0, sp, #0x10
00527434  0a ff ff eb                                      bl #0x527064
00527438  10 30 9d e5                                      ldr r3, [sp, #0x10]
0052743c  00 30 87 e5                                      str r3, [r7]
00527440  af ff ff ea                                      b #0x527304
00527444  05 10 a0 e1                                      mov r1, r5
00527448  0c 20 a0 e1                                      mov r2, ip
0052744c  06 30 a0 e1                                      mov r3, r6
00527450  07 00 a0 e1                                      mov r0, r7
00527454  00 e0 8d e5                                      str lr, [sp]
00527458  04 c0 8d e5                                      str ip, [sp, #4]
0052745c  ca fe ff eb                                      bl #0x526f8c
00527460  a7 ff ff ea                                      b #0x527304
00527464  04 30 94 e5                                      ldr r3, [r4, #4]
00527468  0c c0 93 e5                                      ldr ip, [r3, #0xc]
0052746c  0c 00 54 e1                                      cmp r4, ip
00527470  04 c0 a0 11                                      movne ip, r4
00527474  04 00 00 1a                                      bne #0x52748c
00527478  03 c0 a0 e1                                      mov ip, r3
0052747c  04 30 93 e5                                      ldr r3, [r3, #4]
00527480  0c a0 93 e5                                      ldr sl, [r3, #0xc]
00527484  0a 00 5c e1                                      cmp ip, sl
00527488  fa ff ff 0a                                      beq #0x527478
0052748c  0c a0 9c e5                                      ldr sl, [ip, #0xc]
00527490  0a 00 53 e1                                      cmp r3, sl
00527494  03 c0 a0 11                                      movne ip, r3
00527498  79 ff ff ea                                      b #0x527284
0052749c  04 30 94 e5                                      ldr r3, [r4, #4]
005274a0  0c 10 93 e5                                      ldr r1, [r3, #0xc]
005274a4  01 00 54 e1                                      cmp r4, r1
005274a8  04 c0 a0 11                                      movne ip, r4
005274ac  04 00 00 1a                                      bne #0x5274c4
005274b0  03 c0 a0 e1                                      mov ip, r3
005274b4  04 30 93 e5                                      ldr r3, [r3, #4]
005274b8  0c 10 93 e5                                      ldr r1, [r3, #0xc]
005274bc  0c 00 51 e1                                      cmp r1, ip
005274c0  fa ff ff 0a                                      beq #0x5274b0
005274c4  0c 10 9c e5                                      ldr r1, [ip, #0xc]
005274c8  01 00 53 e1                                      cmp r3, r1
005274cc  03 c0 a0 11                                      movne ip, r3
005274d0  ba ff ff ea                                      b #0x5273c0
005274d4  03 20 a0 e1                                      mov r2, r3
005274d8  20 00 8d e2                                      add r0, sp, #0x20
005274dc  e0 fe ff eb                                      bl #0x527064
005274e0  20 30 9d e5                                      ldr r3, [sp, #0x20]
005274e4  00 30 87 e5                                      str r3, [r7]
005274e8  85 ff ff ea                                      b #0x527304
005274ec  00 c0 a0 e3                                      mov ip, #0
005274f0  04 20 a0 e1                                      mov r2, r4
005274f4  10 10 8d e8                                      stm sp, {r4, ip}
005274f8  a3 fe ff eb                                      bl #0x526f8c
005274fc  80 ff ff ea                                      b #0x527304
00527500  05 10 a0 e1                                      mov r1, r5
00527504  06 20 a0 e1                                      mov r2, r6
00527508  18 00 8d e2                                      add r0, sp, #0x18
0052750c  d4 fe ff eb                                      bl #0x527064
00527510  18 30 9d e5                                      ldr r3, [sp, #0x18]
00527514  00 30 87 e5                                      str r3, [r7]
00527518  79 ff ff ea                                      b #0x527304
0052751c  05 10 a0 e1                                      mov r1, r5
00527520  04 20 a0 e1                                      mov r2, r4
00527524  06 30 a0 e1                                      mov r3, r6
00527528  07 00 a0 e1                                      mov r0, r7
0052752c  00 e0 8d e5                                      str lr, [sp]
00527530  04 40 8d e5                                      str r4, [sp, #4]
00527534  94 fe ff eb                                      bl #0x526f8c
00527538  71 ff ff ea                                      b #0x527304
0052753c  00 c0 a0 e3                                      mov ip, #0
00527540  05 10 a0 e1                                      mov r1, r5
00527544  04 20 a0 e1                                      mov r2, r4
00527548  06 30 a0 e1                                      mov r3, r6
0052754c  07 00 a0 e1                                      mov r0, r7
00527550  00 c0 8d e5                                      str ip, [sp]
00527554  04 40 8d e5                                      str r4, [sp, #4]
00527558  8b fe ff eb                                      bl #0x526f8c
0052755c  68 ff ff ea                                      b #0x527304

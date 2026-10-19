; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008949ec, declared_size=80, range_size=80, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> >, vox::StringComp, std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, vox::SZipFileEntry>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, vox::SZipFileEntry> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, vox::SZipFileEntry> >, vox::SAllocator<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, vox::SZipFileEntry>, (vox::VoxMemHint)0> >
; alias: _ZNSt4priv8_Rb_treeISbIcSt11char_traitsIcEN3vox10SAllocatorIcLNS3_10VoxMemHintE0EEEENS3_10StringCompESt4pairIKS7_NS3_13SZipFileEntryEENS_10_Select1stISC_EENS_11_MapTraitsTISC_EENS4_ISC_LS5_0EEEE14_M_create_nodeERKSC_
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> >, vox::StringComp, std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, vox::SZipFileEntry>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, vox::SZipFileEntry> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, vox::SZipFileEntry> >, vox::SAllocator<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, vox::SZipFileEntry>, (vox::VoxMemHint)0> >::_M_create_node(std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, vox::SZipFileEntry> const&)
; decoder-mode: arm
008949ec  70 40 2d e9                                      push {r4, r5, r6, lr}
008949f0  94 00 a0 e3                                      mov r0, #0x94
008949f4  01 50 a0 e1                                      mov r5, r1
008949f8  00 10 a0 e3                                      mov r1, #0
008949fc  11 ef e9 eb                                      bl #0x310648
00894a00  00 40 a0 e1                                      mov r4, r0
00894a04  10 00 80 e2                                      add r0, r0, #0x10
00894a08  20 00 84 e5                                      str r0, [r4, #0x20]
00894a0c  24 00 84 e5                                      str r0, [r4, #0x24]
00894a10  14 10 95 e5                                      ldr r1, [r5, #0x14]
00894a14  10 20 95 e5                                      ldr r2, [r5, #0x10]
00894a18  34 6a ff eb                                      bl #0x86f2f0
00894a1c  18 10 85 e2                                      add r1, r5, #0x18
00894a20  28 00 84 e2                                      add r0, r4, #0x28
00894a24  b6 ff ff eb                                      bl #0x894904
00894a28  00 30 a0 e3                                      mov r3, #0
00894a2c  0c 30 84 e5                                      str r3, [r4, #0xc]
00894a30  08 30 84 e5                                      str r3, [r4, #8]
00894a34  04 00 a0 e1                                      mov r0, r4
00894a38  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00894bfc, declared_size=240, range_size=240, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> >, vox::StringComp, std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, vox::SZipFileEntry>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, vox::SZipFileEntry> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, vox::SZipFileEntry> >, vox::SAllocator<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, vox::SZipFileEntry>, (vox::VoxMemHint)0> >
; alias: _ZNSt4priv8_Rb_treeISbIcSt11char_traitsIcEN3vox10SAllocatorIcLNS3_10VoxMemHintE0EEEENS3_10StringCompESt4pairIKS7_NS3_13SZipFileEntryEENS_10_Select1stISC_EENS_11_MapTraitsTISC_EENS4_ISC_LS5_0EEEE9_M_insertEPNS_18_Rb_tree_node_baseERKSC_SK_SK_
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> >, vox::StringComp, std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, vox::SZipFileEntry>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, vox::SZipFileEntry> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, vox::SZipFileEntry> >, vox::SAllocator<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, vox::SZipFileEntry>, (vox::VoxMemHint)0> >::_M_insert(std::priv::_Rb_tree_node_base*, std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, vox::SZipFileEntry> const&, std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
00894bfc  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00894c00  02 00 51 e1                                      cmp r1, r2
00894c04  0c d0 4d e2                                      sub sp, sp, #0xc
00894c08  01 40 a0 e1                                      mov r4, r1
00894c0c  02 50 a0 e1                                      mov r5, r2
00894c10  00 60 a0 e1                                      mov r6, r0
00894c14  23 00 00 0a                                      beq #0x894ca8
00894c18  24 20 9d e5                                      ldr r2, [sp, #0x24]
00894c1c  00 00 52 e3                                      cmp r2, #0
00894c20  12 00 00 0a                                      beq #0x894c70
00894c24  03 10 a0 e1                                      mov r1, r3
00894c28  04 00 a0 e1                                      mov r0, r4
00894c2c  6e ff ff eb                                      bl #0x8949ec
00894c30  0c 00 85 e5                                      str r0, [r5, #0xc]
00894c34  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00894c38  00 70 a0 e1                                      mov r7, r0
00894c3c  03 00 55 e1                                      cmp r5, r3
00894c40  16 00 00 0a                                      beq #0x894ca0
00894c44  07 00 a0 e1                                      mov r0, r7
00894c48  04 50 87 e5                                      str r5, [r7, #4]
00894c4c  04 10 84 e2                                      add r1, r4, #4
00894c50  c2 fa e9 eb                                      bl #0x313760
00894c54  10 30 94 e5                                      ldr r3, [r4, #0x10]
00894c58  06 00 a0 e1                                      mov r0, r6
00894c5c  01 30 83 e2                                      add r3, r3, #1
00894c60  10 30 84 e5                                      str r3, [r4, #0x10]
00894c64  00 70 86 e5                                      str r7, [r6]
00894c68  0c d0 8d e2                                      add sp, sp, #0xc
00894c6c  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00894c70  20 20 9d e5                                      ldr r2, [sp, #0x20]
00894c74  00 00 52 e3                                      cmp r2, #0
00894c78  12 00 00 0a                                      beq #0x894cc8
00894c7c  03 10 a0 e1                                      mov r1, r3
00894c80  04 00 a0 e1                                      mov r0, r4
00894c84  58 ff ff eb                                      bl #0x8949ec
00894c88  08 00 85 e5                                      str r0, [r5, #8]
00894c8c  08 30 94 e5                                      ldr r3, [r4, #8]
00894c90  00 70 a0 e1                                      mov r7, r0
00894c94  03 00 55 e1                                      cmp r5, r3
00894c98  08 00 84 05                                      streq r0, [r4, #8]
00894c9c  e8 ff ff ea                                      b #0x894c44
00894ca0  0c 70 84 e5                                      str r7, [r4, #0xc]
00894ca4  e6 ff ff ea                                      b #0x894c44
00894ca8  03 10 a0 e1                                      mov r1, r3
00894cac  04 00 a0 e1                                      mov r0, r4
00894cb0  4d ff ff eb                                      bl #0x8949ec
00894cb4  00 70 a0 e1                                      mov r7, r0
00894cb8  08 00 84 e5                                      str r0, [r4, #8]
00894cbc  04 00 84 e5                                      str r0, [r4, #4]
00894cc0  0c 00 84 e5                                      str r0, [r4, #0xc]
00894cc4  de ff ff ea                                      b #0x894c44
00894cc8  14 00 81 e2                                      add r0, r1, #0x14
00894ccc  10 20 85 e2                                      add r2, r5, #0x10
00894cd0  03 10 a0 e1                                      mov r1, r3
00894cd4  04 30 8d e5                                      str r3, [sp, #4]
00894cd8  b3 ff ff eb                                      bl #0x894bac
00894cdc  00 00 50 e3                                      cmp r0, #0
00894ce0  04 30 9d e5                                      ldr r3, [sp, #4]
00894ce4  ce ff ff 0a                                      beq #0x894c24
00894ce8  e3 ff ff ea                                      b #0x894c7c

; FUNCTION 0x00894d4c, declared_size=92, range_size=92, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> >, vox::StringComp, std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, vox::SZipFileEntry>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, vox::SZipFileEntry> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, vox::SZipFileEntry> >, vox::SAllocator<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, vox::SZipFileEntry>, (vox::VoxMemHint)0> >
; alias: _ZNSt4priv8_Rb_treeISbIcSt11char_traitsIcEN3vox10SAllocatorIcLNS3_10VoxMemHintE0EEEENS3_10StringCompESt4pairIKS7_NS3_13SZipFileEntryEENS_10_Select1stISC_EENS_11_MapTraitsTISC_EENS4_ISC_LS5_0EEEE8_M_eraseEPNS_18_Rb_tree_node_baseE
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> >, vox::StringComp, std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, vox::SZipFileEntry>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, vox::SZipFileEntry> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, vox::SZipFileEntry> >, vox::SAllocator<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, vox::SZipFileEntry>, (vox::VoxMemHint)0> >::_M_erase(std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
00894d4c  70 40 2d e9                                      push {r4, r5, r6, lr}
00894d50  00 40 51 e2                                      subs r4, r1, #0
00894d54  00 50 a0 e1                                      mov r5, r0
00894d58  11 00 00 0a                                      beq #0x894da4
00894d5c  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00894d60  05 00 a0 e1                                      mov r0, r5
00894d64  f8 ff ff eb                                      bl #0x894d4c
00894d68  28 00 84 e2                                      add r0, r4, #0x28
00894d6c  08 60 94 e5                                      ldr r6, [r4, #8]
00894d70  dd ff ff eb                                      bl #0x894cec
00894d74  10 20 84 e2                                      add r2, r4, #0x10
00894d78  14 30 92 e5                                      ldr r3, [r2, #0x14]
00894d7c  02 00 53 e1                                      cmp r3, r2
00894d80  03 00 a0 e1                                      mov r0, r3
00894d84  02 00 00 0a                                      beq #0x894d94
00894d88  00 00 53 e3                                      cmp r3, #0
00894d8c  00 00 00 0a                                      beq #0x894d94
00894d90  ab ed e9 eb                                      bl #0x310444
00894d94  04 00 a0 e1                                      mov r0, r4
00894d98  a9 ed e9 eb                                      bl #0x310444
00894d9c  00 40 56 e2                                      subs r4, r6, #0
00894da0  ed ff ff 1a                                      bne #0x894d5c
00894da4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00895160, declared_size=536, range_size=536, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> >, vox::StringComp, std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, vox::SZipFileEntry>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, vox::SZipFileEntry> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, vox::SZipFileEntry> >, vox::SAllocator<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, vox::SZipFileEntry>, (vox::VoxMemHint)0> >
; alias: _ZNSt4priv8_Rb_treeISbIcSt11char_traitsIcEN3vox10SAllocatorIcLNS3_10VoxMemHintE0EEEENS3_10StringCompESt4pairIKS7_NS3_13SZipFileEntryEENS_10_Select1stISC_EENS_11_MapTraitsTISC_EENS4_ISC_LS5_0EEEE13insert_uniqueERKSC_
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> >, vox::StringComp, std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, vox::SZipFileEntry>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, vox::SZipFileEntry> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, vox::SZipFileEntry> >, vox::SAllocator<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, vox::SZipFileEntry>, (vox::VoxMemHint)0> >::insert_unique(std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, vox::SZipFileEntry> const&)
; decoder-mode: arm
00895160  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00895164  04 50 91 e5                                      ldr r5, [r1, #4]
00895168  14 d0 4d e2                                      sub sp, sp, #0x14
0089516c  01 90 a0 e1                                      mov sb, r1
00895170  00 00 55 e3                                      cmp r5, #0
00895174  00 40 a0 e1                                      mov r4, r0
00895178  02 80 a0 e1                                      mov r8, r2
0089517c  38 00 00 0a                                      beq #0x895264
00895180  14 70 92 e5                                      ldr r7, [r2, #0x14]
00895184  10 b0 92 e5                                      ldr fp, [r2, #0x10]
00895188  0b a0 67 e0                                      rsb sl, r7, fp
0089518c  04 00 00 ea                                      b #0x8951a4
00895190  08 30 95 e5                                      ldr r3, [r5, #8]
00895194  01 10 a0 e3                                      mov r1, #1
00895198  00 00 53 e3                                      cmp r3, #0
0089519c  16 00 00 0a                                      beq #0x8951fc
008951a0  03 50 a0 e1                                      mov r5, r3
008951a4  24 30 95 e5                                      ldr r3, [r5, #0x24]
008951a8  20 60 95 e5                                      ldr r6, [r5, #0x20]
008951ac  07 00 a0 e1                                      mov r0, r7
008951b0  03 10 a0 e1                                      mov r1, r3
008951b4  06 60 63 e0                                      rsb r6, r3, r6
008951b8  0a 00 56 e1                                      cmp r6, sl
008951bc  06 20 a0 b1                                      movlt r2, r6
008951c0  0a 20 a0 a1                                      movge r2, sl
008951c4  05 e5 e9 eb                                      bl #0x30e5e0
008951c8  00 00 50 e3                                      cmp r0, #0
008951cc  05 20 a0 e1                                      mov r2, r5
008951d0  03 00 00 1a                                      bne #0x8951e4
008951d4  06 00 5a e1                                      cmp sl, r6
008951d8  ec ff ff ba                                      blt #0x895190
008951dc  00 00 a0 d3                                      movle r0, #0
008951e0  01 00 a0 c3                                      movgt r0, #1
008951e4  00 00 50 e3                                      cmp r0, #0
008951e8  e8 ff ff ba                                      blt #0x895190
008951ec  0c 30 95 e5                                      ldr r3, [r5, #0xc]
008951f0  00 10 a0 e3                                      mov r1, #0
008951f4  00 00 53 e3                                      cmp r3, #0
008951f8  e8 ff ff 1a                                      bne #0x8951a0
008951fc  00 00 51 e3                                      cmp r1, #0
00895200  05 a0 a0 01                                      moveq sl, r5
00895204  17 00 00 1a                                      bne #0x895268
00895208  24 00 92 e5                                      ldr r0, [r2, #0x24]
0089520c  20 60 92 e5                                      ldr r6, [r2, #0x20]
00895210  0b b0 67 e0                                      rsb fp, r7, fp
00895214  07 10 a0 e1                                      mov r1, r7
00895218  06 60 60 e0                                      rsb r6, r0, r6
0089521c  06 00 5b e1                                      cmp fp, r6
00895220  0b 20 a0 b1                                      movlt r2, fp
00895224  06 20 a0 a1                                      movge r2, r6
00895228  ec e4 e9 eb                                      bl #0x30e5e0
0089522c  00 00 50 e3                                      cmp r0, #0
00895230  03 00 00 1a                                      bne #0x895244
00895234  0b 00 56 e1                                      cmp r6, fp
00895238  20 00 00 ba                                      blt #0x8952c0
0089523c  00 00 a0 d3                                      movle r0, #0
00895240  01 00 a0 c3                                      movgt r0, #1
00895244  00 00 50 e3                                      cmp r0, #0
00895248  00 30 a0 a3                                      movge r3, #0
0089524c  00 a0 84 a5                                      strge sl, [r4]
00895250  04 30 c4 a5                                      strbge r3, [r4, #4]
00895254  19 00 00 ba                                      blt #0x8952c0
00895258  04 00 a0 e1                                      mov r0, r4
0089525c  14 d0 8d e2                                      add sp, sp, #0x14
00895260  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00895264  01 50 a0 e1                                      mov r5, r1
00895268  08 30 99 e5                                      ldr r3, [sb, #8]
0089526c  03 00 55 e1                                      cmp r5, r3
00895270  32 00 00 0a                                      beq #0x895340
00895274  00 30 d5 e5                                      ldrb r3, [r5]
00895278  00 00 53 e3                                      cmp r3, #0
0089527c  03 00 00 1a                                      bne #0x895290
00895280  04 30 95 e5                                      ldr r3, [r5, #4]
00895284  04 30 93 e5                                      ldr r3, [r3, #4]
00895288  03 00 55 e1                                      cmp r5, r3
0089528c  26 00 00 0a                                      beq #0x89532c
00895290  08 20 95 e5                                      ldr r2, [r5, #8]
00895294  00 00 52 e3                                      cmp r2, #0
00895298  01 00 00 1a                                      bne #0x8952a4
0089529c  14 00 00 ea                                      b #0x8952f4
008952a0  03 20 a0 e1                                      mov r2, r3
008952a4  0c 30 92 e5                                      ldr r3, [r2, #0xc]
008952a8  00 00 53 e3                                      cmp r3, #0
008952ac  fb ff ff 1a                                      bne #0x8952a0
008952b0  02 a0 a0 e1                                      mov sl, r2
008952b4  14 70 98 e5                                      ldr r7, [r8, #0x14]
008952b8  10 b0 98 e5                                      ldr fp, [r8, #0x10]
008952bc  d1 ff ff ea                                      b #0x895208
008952c0  00 c0 a0 e3                                      mov ip, #0
008952c4  05 20 a0 e1                                      mov r2, r5
008952c8  08 30 a0 e1                                      mov r3, r8
008952cc  09 10 a0 e1                                      mov r1, sb
008952d0  08 00 8d e2                                      add r0, sp, #8
008952d4  04 c0 8d e5                                      str ip, [sp, #4]
008952d8  00 c0 8d e5                                      str ip, [sp]
008952dc  46 fe ff eb                                      bl #0x894bfc
008952e0  08 30 9d e5                                      ldr r3, [sp, #8]
008952e4  01 20 a0 e3                                      mov r2, #1
008952e8  04 20 c4 e5                                      strb r2, [r4, #4]
008952ec  00 30 84 e5                                      str r3, [r4]
008952f0  d8 ff ff ea                                      b #0x895258
008952f4  04 30 95 e5                                      ldr r3, [r5, #4]
008952f8  08 20 93 e5                                      ldr r2, [r3, #8]
008952fc  02 00 55 e1                                      cmp r5, r2
00895300  01 00 00 0a                                      beq #0x89530c
00895304  19 00 00 ea                                      b #0x895370
00895308  02 30 a0 e1                                      mov r3, r2
0089530c  04 20 93 e5                                      ldr r2, [r3, #4]
00895310  08 10 92 e5                                      ldr r1, [r2, #8]
00895314  03 00 51 e1                                      cmp r1, r3
00895318  fa ff ff 0a                                      beq #0x895308
0089531c  14 70 98 e5                                      ldr r7, [r8, #0x14]
00895320  10 b0 98 e5                                      ldr fp, [r8, #0x10]
00895324  02 a0 a0 e1                                      mov sl, r2
00895328  b6 ff ff ea                                      b #0x895208
0089532c  0c 20 95 e5                                      ldr r2, [r5, #0xc]
00895330  14 70 98 e5                                      ldr r7, [r8, #0x14]
00895334  10 b0 98 e5                                      ldr fp, [r8, #0x10]
00895338  02 a0 a0 e1                                      mov sl, r2
0089533c  b1 ff ff ea                                      b #0x895208
00895340  05 20 a0 e1                                      mov r2, r5
00895344  08 30 a0 e1                                      mov r3, r8
00895348  00 c0 a0 e3                                      mov ip, #0
0089534c  09 10 a0 e1                                      mov r1, sb
00895350  0c 00 8d e2                                      add r0, sp, #0xc
00895354  20 10 8d e8                                      stm sp, {r5, ip}
00895358  27 fe ff eb                                      bl #0x894bfc
0089535c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00895360  01 20 a0 e3                                      mov r2, #1
00895364  04 20 c4 e5                                      strb r2, [r4, #4]
00895368  00 30 84 e5                                      str r3, [r4]
0089536c  b9 ff ff ea                                      b #0x895258
00895370  03 20 a0 e1                                      mov r2, r3
00895374  cd ff ff ea                                      b #0x8952b0

; FUNCTION 0x008955a4, declared_size=1284, range_size=1284, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> >, vox::StringComp, std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, vox::SZipFileEntry>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, vox::SZipFileEntry> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, vox::SZipFileEntry> >, vox::SAllocator<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, vox::SZipFileEntry>, (vox::VoxMemHint)0> >
; alias: _ZNSt4priv8_Rb_treeISbIcSt11char_traitsIcEN3vox10SAllocatorIcLNS3_10VoxMemHintE0EEEENS3_10StringCompESt4pairIKS7_NS3_13SZipFileEntryEENS_10_Select1stISC_EENS_11_MapTraitsTISC_EENS4_ISC_LS5_0EEEE13insert_uniqueENS_17_Rb_tree_iteratorISC_SG_EERKSC_
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> >, vox::StringComp, std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, vox::SZipFileEntry>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, vox::SZipFileEntry> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, vox::SZipFileEntry> >, vox::SAllocator<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, vox::SZipFileEntry>, (vox::VoxMemHint)0> >::insert_unique(std::priv::_Rb_tree_iterator<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, vox::SZipFileEntry>, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, vox::SZipFileEntry> > >, std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, vox::SZipFileEntry> const&)
; decoder-mode: arm
008955a4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
008955a8  44 d0 4d e2                                      sub sp, sp, #0x44
008955ac  14 20 8d e5                                      str r2, [sp, #0x14]
008955b0  00 50 92 e5                                      ldr r5, [r2]
008955b4  08 20 91 e5                                      ldr r2, [r1, #8]
008955b8  01 60 a0 e1                                      mov r6, r1
008955bc  00 70 a0 e1                                      mov r7, r0
008955c0  02 00 55 e1                                      cmp r5, r2
008955c4  03 80 a0 e1                                      mov r8, r3
008955c8  7c 00 00 0a                                      beq #0x8957c0
008955cc  01 00 55 e1                                      cmp r5, r1
008955d0  d0 00 00 0a                                      beq #0x895918
008955d4  00 30 d5 e5                                      ldrb r3, [r5]
008955d8  00 00 53 e3                                      cmp r3, #0
008955dc  35 00 00 0a                                      beq #0x8956b8
008955e0  08 40 95 e5                                      ldr r4, [r5, #8]
008955e4  00 00 54 e3                                      cmp r4, #0
008955e8  01 00 00 1a                                      bne #0x8955f4
008955ec  39 00 00 ea                                      b #0x8956d8
008955f0  03 40 a0 e1                                      mov r4, r3
008955f4  0c 30 94 e5                                      ldr r3, [r4, #0xc]
008955f8  00 00 53 e3                                      cmp r3, #0
008955fc  fb ff ff 1a                                      bne #0x8955f0
00895600  24 30 95 e5                                      ldr r3, [r5, #0x24]
00895604  14 90 98 e5                                      ldr sb, [r8, #0x14]
00895608  10 b0 98 e5                                      ldr fp, [r8, #0x10]
0089560c  20 20 95 e5                                      ldr r2, [r5, #0x20]
00895610  03 10 a0 e1                                      mov r1, r3
00895614  0b b0 69 e0                                      rsb fp, sb, fp
00895618  02 20 63 e0                                      rsb r2, r3, r2
0089561c  18 20 8d e5                                      str r2, [sp, #0x18]
00895620  09 00 a0 e1                                      mov r0, sb
00895624  0b 00 52 e1                                      cmp r2, fp
00895628  0b 20 a0 a1                                      movge r2, fp
0089562c  0c 30 8d e5                                      str r3, [sp, #0xc]
00895630  1c 20 8d e5                                      str r2, [sp, #0x1c]
00895634  e9 e3 e9 eb                                      bl #0x30e5e0
00895638  00 00 50 e3                                      cmp r0, #0
0089563c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00895640  05 00 00 1a                                      bne #0x89565c
00895644  18 20 9d e5                                      ldr r2, [sp, #0x18]
00895648  02 00 5b e1                                      cmp fp, r2
0089564c  00 00 e0 b3                                      mvnlt r0, #0
00895650  01 00 00 ba                                      blt #0x89565c
00895654  00 00 a0 d3                                      movle r0, #0
00895658  01 00 a0 c3                                      movgt r0, #1
0089565c  a0 cf b0 e1                                      lsrs ip, r0, #0x1f
00895660  28 00 00 1a                                      bne #0x895708
00895664  0c 40 95 e5                                      ldr r4, [r5, #0xc]
00895668  00 00 54 e3                                      cmp r4, #0
0089566c  01 00 00 1a                                      bne #0x895678
00895670  cc 00 00 ea                                      b #0x8959a8
00895674  02 40 a0 e1                                      mov r4, r2
00895678  08 20 94 e5                                      ldr r2, [r4, #8]
0089567c  00 00 52 e3                                      cmp r2, #0
00895680  fb ff ff 1a                                      bne #0x895674
00895684  00 00 5c e3                                      cmp ip, #0
00895688  43 00 00 1a                                      bne #0x89579c
0089568c  03 00 a0 e1                                      mov r0, r3
00895690  09 10 a0 e1                                      mov r1, sb
00895694  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00895698  d0 e3 e9 eb                                      bl #0x30e5e0
0089569c  00 00 50 e3                                      cmp r0, #0
008956a0  34 00 00 1a                                      bne #0x895778
008956a4  18 30 9d e5                                      ldr r3, [sp, #0x18]
008956a8  03 00 5b e1                                      cmp fp, r3
008956ac  32 00 00 ca                                      bgt #0x89577c
008956b0  00 50 87 e5                                      str r5, [r7]
008956b4  3e 00 00 ea                                      b #0x8957b4
008956b8  04 30 95 e5                                      ldr r3, [r5, #4]
008956bc  04 30 93 e5                                      ldr r3, [r3, #4]
008956c0  03 00 55 e1                                      cmp r5, r3
008956c4  0c 40 95 05                                      ldreq r4, [r5, #0xc]
008956c8  cc ff ff 0a                                      beq #0x895600
008956cc  08 40 95 e5                                      ldr r4, [r5, #8]
008956d0  00 00 54 e3                                      cmp r4, #0
008956d4  c6 ff ff 1a                                      bne #0x8955f4
008956d8  04 40 95 e5                                      ldr r4, [r5, #4]
008956dc  08 30 94 e5                                      ldr r3, [r4, #8]
008956e0  03 00 55 e1                                      cmp r5, r3
008956e4  01 00 00 0a                                      beq #0x8956f0
008956e8  c4 ff ff ea                                      b #0x895600
008956ec  03 40 a0 e1                                      mov r4, r3
008956f0  04 30 94 e5                                      ldr r3, [r4, #4]
008956f4  08 20 93 e5                                      ldr r2, [r3, #8]
008956f8  04 00 52 e1                                      cmp r2, r4
008956fc  fa ff ff 0a                                      beq #0x8956ec
00895700  03 40 a0 e1                                      mov r4, r3
00895704  bd ff ff ea                                      b #0x895600
00895708  24 20 94 e5                                      ldr r2, [r4, #0x24]
0089570c  20 a0 94 e5                                      ldr sl, [r4, #0x20]
00895710  09 10 a0 e1                                      mov r1, sb
00895714  02 00 a0 e1                                      mov r0, r2
00895718  0a a0 62 e0                                      rsb sl, r2, sl
0089571c  0a 00 5b e1                                      cmp fp, sl
00895720  0b 20 a0 b1                                      movlt r2, fp
00895724  0a 20 a0 a1                                      movge r2, sl
00895728  0c 30 8d e5                                      str r3, [sp, #0xc]
0089572c  10 c0 8d e5                                      str ip, [sp, #0x10]
00895730  aa e3 e9 eb                                      bl #0x30e5e0
00895734  00 00 50 e3                                      cmp r0, #0
00895738  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0089573c  10 c0 9d e5                                      ldr ip, [sp, #0x10]
00895740  6f 00 00 1a                                      bne #0x895904
00895744  0a 00 5b e1                                      cmp fp, sl
00895748  c5 ff ff da                                      ble #0x895664
0089574c  0c c0 94 e5                                      ldr ip, [r4, #0xc]
00895750  00 00 5c e3                                      cmp ip, #0
00895754  62 00 00 0a                                      beq #0x8958e4
00895758  00 c0 a0 e3                                      mov ip, #0
0089575c  06 10 a0 e1                                      mov r1, r6
00895760  05 20 a0 e1                                      mov r2, r5
00895764  08 30 a0 e1                                      mov r3, r8
00895768  07 00 a0 e1                                      mov r0, r7
0089576c  20 10 8d e8                                      stm sp, {r5, ip}
00895770  21 fd ff eb                                      bl #0x894bfc
00895774  0e 00 00 ea                                      b #0x8957b4
00895778  cc ff ff aa                                      bge #0x8956b0
0089577c  04 00 56 e1                                      cmp r6, r4
00895780  9b 00 00 0a                                      beq #0x8959f4
00895784  14 00 86 e2                                      add r0, r6, #0x14
00895788  08 10 a0 e1                                      mov r1, r8
0089578c  10 20 84 e2                                      add r2, r4, #0x10
00895790  05 fd ff eb                                      bl #0x894bac
00895794  00 00 50 e3                                      cmp r0, #0
00895798  93 00 00 1a                                      bne #0x8959ec
0089579c  06 10 a0 e1                                      mov r1, r6
008957a0  08 20 a0 e1                                      mov r2, r8
008957a4  20 00 8d e2                                      add r0, sp, #0x20
008957a8  6c fe ff eb                                      bl #0x895160
008957ac  20 30 9d e5                                      ldr r3, [sp, #0x20]
008957b0  00 30 87 e5                                      str r3, [r7]
008957b4  07 00 a0 e1                                      mov r0, r7
008957b8  44 d0 8d e2                                      add sp, sp, #0x44
008957bc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
008957c0  10 30 91 e5                                      ldr r3, [r1, #0x10]
008957c4  00 00 53 e3                                      cmp r3, #0
008957c8  9f 00 00 0a                                      beq #0x895a4c
008957cc  14 30 98 e5                                      ldr r3, [r8, #0x14]
008957d0  24 10 95 e5                                      ldr r1, [r5, #0x24]
008957d4  10 40 98 e5                                      ldr r4, [r8, #0x10]
008957d8  20 a0 95 e5                                      ldr sl, [r5, #0x20]
008957dc  03 00 a0 e1                                      mov r0, r3
008957e0  04 40 63 e0                                      rsb r4, r3, r4
008957e4  0a a0 61 e0                                      rsb sl, r1, sl
008957e8  04 00 5a e1                                      cmp sl, r4
008957ec  0a 20 a0 b1                                      movlt r2, sl
008957f0  04 20 a0 a1                                      movge r2, r4
008957f4  79 e3 e9 eb                                      bl #0x30e5e0
008957f8  00 00 50 e3                                      cmp r0, #0
008957fc  03 00 00 1a                                      bne #0x895810
00895800  0a 00 54 e1                                      cmp r4, sl
00895804  d3 ff ff ba                                      blt #0x895758
00895808  00 00 a0 d3                                      movle r0, #0
0089580c  01 00 a0 c3                                      movgt r0, #1
00895810  00 00 50 e3                                      cmp r0, #0
00895814  cf ff ff ba                                      blt #0x895758
00895818  14 a0 86 e2                                      add sl, r6, #0x14
0089581c  10 10 85 e2                                      add r1, r5, #0x10
00895820  0a 00 a0 e1                                      mov r0, sl
00895824  08 20 a0 e1                                      mov r2, r8
00895828  df fc ff eb                                      bl #0x894bac
0089582c  00 00 50 e3                                      cmp r0, #0
00895830  81 00 00 0a                                      beq #0x895a3c
00895834  14 30 9d e5                                      ldr r3, [sp, #0x14]
00895838  00 c0 93 e5                                      ldr ip, [r3]
0089583c  0c 40 9c e5                                      ldr r4, [ip, #0xc]
00895840  00 00 54 e3                                      cmp r4, #0
00895844  22 00 00 1a                                      bne #0x8958d4
00895848  04 30 9c e5                                      ldr r3, [ip, #4]
0089584c  0c 20 93 e5                                      ldr r2, [r3, #0xc]
00895850  02 00 5c e1                                      cmp ip, r2
00895854  0c 40 a0 11                                      movne r4, ip
00895858  04 00 00 1a                                      bne #0x895870
0089585c  03 40 a0 e1                                      mov r4, r3
00895860  04 30 93 e5                                      ldr r3, [r3, #4]
00895864  0c 20 93 e5                                      ldr r2, [r3, #0xc]
00895868  04 00 52 e1                                      cmp r2, r4
0089586c  fa ff ff 0a                                      beq #0x89585c
00895870  0c 20 94 e5                                      ldr r2, [r4, #0xc]
00895874  02 00 53 e1                                      cmp r3, r2
00895878  03 40 a0 11                                      movne r4, r3
0089587c  04 00 56 e1                                      cmp r6, r4
00895880  7f 00 00 0a                                      beq #0x895a84
00895884  0a 00 a0 e1                                      mov r0, sl
00895888  08 10 a0 e1                                      mov r1, r8
0089588c  10 20 84 e2                                      add r2, r4, #0x10
00895890  c5 fc ff eb                                      bl #0x894bac
00895894  00 00 50 e3                                      cmp r0, #0
00895898  60 00 00 0a                                      beq #0x895a20
0089589c  14 20 9d e5                                      ldr r2, [sp, #0x14]
008958a0  00 c0 92 e5                                      ldr ip, [r2]
008958a4  0c e0 9c e5                                      ldr lr, [ip, #0xc]
008958a8  00 00 5e e3                                      cmp lr, #0
008958ac  6c 00 00 0a                                      beq #0x895a64
008958b0  00 c0 a0 e3                                      mov ip, #0
008958b4  06 10 a0 e1                                      mov r1, r6
008958b8  04 20 a0 e1                                      mov r2, r4
008958bc  08 30 a0 e1                                      mov r3, r8
008958c0  07 00 a0 e1                                      mov r0, r7
008958c4  10 10 8d e8                                      stm sp, {r4, ip}
008958c8  cb fc ff eb                                      bl #0x894bfc
008958cc  b8 ff ff ea                                      b #0x8957b4
008958d0  03 40 a0 e1                                      mov r4, r3
008958d4  08 30 94 e5                                      ldr r3, [r4, #8]
008958d8  00 00 53 e3                                      cmp r3, #0
008958dc  fb ff ff 1a                                      bne #0x8958d0
008958e0  e5 ff ff ea                                      b #0x89587c
008958e4  06 10 a0 e1                                      mov r1, r6
008958e8  04 20 a0 e1                                      mov r2, r4
008958ec  08 30 a0 e1                                      mov r3, r8
008958f0  07 00 a0 e1                                      mov r0, r7
008958f4  00 c0 8d e5                                      str ip, [sp]
008958f8  04 40 8d e5                                      str r4, [sp, #4]
008958fc  be fc ff eb                                      bl #0x894bfc
00895900  ab ff ff ea                                      b #0x8957b4
00895904  56 ff ff aa                                      bge #0x895664
00895908  0c c0 94 e5                                      ldr ip, [r4, #0xc]
0089590c  00 00 5c e3                                      cmp ip, #0
00895910  90 ff ff 1a                                      bne #0x895758
00895914  f2 ff ff ea                                      b #0x8958e4
00895918  0c 40 95 e5                                      ldr r4, [r5, #0xc]
0089591c  14 10 93 e5                                      ldr r1, [r3, #0x14]
00895920  10 90 93 e5                                      ldr sb, [r3, #0x10]
00895924  20 a0 94 e5                                      ldr sl, [r4, #0x20]
00895928  24 30 94 e5                                      ldr r3, [r4, #0x24]
0089592c  09 90 61 e0                                      rsb sb, r1, sb
00895930  0a a0 63 e0                                      rsb sl, r3, sl
00895934  0a 00 59 e1                                      cmp sb, sl
00895938  09 20 a0 b1                                      movlt r2, sb
0089593c  0a 20 a0 a1                                      movge r2, sl
00895940  03 00 a0 e1                                      mov r0, r3
00895944  25 e3 e9 eb                                      bl #0x30e5e0
00895948  00 00 50 e3                                      cmp r0, #0
0089594c  03 00 00 1a                                      bne #0x895960
00895950  09 00 5a e1                                      cmp sl, sb
00895954  03 00 00 ba                                      blt #0x895968
00895958  00 00 a0 d3                                      movle r0, #0
0089595c  01 00 a0 c3                                      movgt r0, #1
00895960  00 00 50 e3                                      cmp r0, #0
00895964  08 00 00 aa                                      bge #0x89598c
00895968  00 c0 a0 e3                                      mov ip, #0
0089596c  06 10 a0 e1                                      mov r1, r6
00895970  04 20 a0 e1                                      mov r2, r4
00895974  08 30 a0 e1                                      mov r3, r8
00895978  07 00 a0 e1                                      mov r0, r7
0089597c  00 c0 8d e5                                      str ip, [sp]
00895980  04 50 8d e5                                      str r5, [sp, #4]
00895984  9c fc ff eb                                      bl #0x894bfc
00895988  89 ff ff ea                                      b #0x8957b4
0089598c  06 10 a0 e1                                      mov r1, r6
00895990  08 20 a0 e1                                      mov r2, r8
00895994  28 00 8d e2                                      add r0, sp, #0x28
00895998  f0 fd ff eb                                      bl #0x895160
0089599c  28 30 9d e5                                      ldr r3, [sp, #0x28]
008959a0  00 30 87 e5                                      str r3, [r7]
008959a4  82 ff ff ea                                      b #0x8957b4
008959a8  04 20 95 e5                                      ldr r2, [r5, #4]
008959ac  0c 10 92 e5                                      ldr r1, [r2, #0xc]
008959b0  01 00 55 e1                                      cmp r5, r1
008959b4  05 40 a0 11                                      movne r4, r5
008959b8  04 00 00 0a                                      beq #0x8959d0
008959bc  0c 10 94 e5                                      ldr r1, [r4, #0xc]
008959c0  01 00 52 e1                                      cmp r2, r1
008959c4  02 40 a0 11                                      movne r4, r2
008959c8  2d ff ff ea                                      b #0x895684
008959cc  01 20 a0 e1                                      mov r2, r1
008959d0  04 10 92 e5                                      ldr r1, [r2, #4]
008959d4  0c 00 91 e5                                      ldr r0, [r1, #0xc]
008959d8  02 00 50 e1                                      cmp r0, r2
008959dc  fa ff ff 0a                                      beq #0x8959cc
008959e0  02 40 a0 e1                                      mov r4, r2
008959e4  01 20 a0 e1                                      mov r2, r1
008959e8  f3 ff ff ea                                      b #0x8959bc
008959ec  14 20 9d e5                                      ldr r2, [sp, #0x14]
008959f0  00 50 92 e5                                      ldr r5, [r2]
008959f4  0c c0 95 e5                                      ldr ip, [r5, #0xc]
008959f8  00 00 5c e3                                      cmp ip, #0
008959fc  ab ff ff 1a                                      bne #0x8958b0
00895a00  06 10 a0 e1                                      mov r1, r6
00895a04  05 20 a0 e1                                      mov r2, r5
00895a08  08 30 a0 e1                                      mov r3, r8
00895a0c  07 00 a0 e1                                      mov r0, r7
00895a10  00 c0 8d e5                                      str ip, [sp]
00895a14  04 50 8d e5                                      str r5, [sp, #4]
00895a18  77 fc ff eb                                      bl #0x894bfc
00895a1c  64 ff ff ea                                      b #0x8957b4
00895a20  06 10 a0 e1                                      mov r1, r6
00895a24  08 20 a0 e1                                      mov r2, r8
00895a28  30 00 8d e2                                      add r0, sp, #0x30
00895a2c  cb fd ff eb                                      bl #0x895160
00895a30  30 30 9d e5                                      ldr r3, [sp, #0x30]
00895a34  00 30 87 e5                                      str r3, [r7]
00895a38  5d ff ff ea                                      b #0x8957b4
00895a3c  14 20 9d e5                                      ldr r2, [sp, #0x14]
00895a40  00 30 92 e5                                      ldr r3, [r2]
00895a44  00 30 87 e5                                      str r3, [r7]
00895a48  59 ff ff ea                                      b #0x8957b4
00895a4c  08 20 a0 e1                                      mov r2, r8
00895a50  38 00 8d e2                                      add r0, sp, #0x38
00895a54  c1 fd ff eb                                      bl #0x895160
00895a58  38 30 9d e5                                      ldr r3, [sp, #0x38]
00895a5c  00 30 87 e5                                      str r3, [r7]
00895a60  53 ff ff ea                                      b #0x8957b4
00895a64  06 10 a0 e1                                      mov r1, r6
00895a68  0c 20 a0 e1                                      mov r2, ip
00895a6c  08 30 a0 e1                                      mov r3, r8
00895a70  07 00 a0 e1                                      mov r0, r7
00895a74  00 e0 8d e5                                      str lr, [sp]
00895a78  04 c0 8d e5                                      str ip, [sp, #4]
00895a7c  5e fc ff eb                                      bl #0x894bfc
00895a80  4b ff ff ea                                      b #0x8957b4
00895a84  00 e0 a0 e3                                      mov lr, #0
00895a88  06 10 a0 e1                                      mov r1, r6
00895a8c  0c 20 a0 e1                                      mov r2, ip
00895a90  08 30 a0 e1                                      mov r3, r8
00895a94  07 00 a0 e1                                      mov r0, r7
00895a98  00 e0 8d e5                                      str lr, [sp]
00895a9c  04 c0 8d e5                                      str ip, [sp, #4]
00895aa0  55 fc ff eb                                      bl #0x894bfc
00895aa4  42 ff ff ea                                      b #0x8957b4

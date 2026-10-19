; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0051bc78, declared_size=408, range_size=408, mode=arm
; class-group: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<CompPos, std::less<CompPos>, std::pair<CompPos const, PFGInnerNode*>, std::priv::_Select1st<std::pair<CompPos const, PFGInnerNode*> >, std::priv::_MapTraitsT<std::pair<CompPos const, PFGInnerNode*> >, std::allocator<std::pair<CompPos const, PFGInnerNode*> > >
; alias: _ZNKSt4priv8_Rb_treeI7CompPosSt4lessIS1_ESt4pairIKS1_P12PFGInnerNodeENS_10_Select1stIS8_EENS_11_MapTraitsTIS8_EESaIS8_EE7_M_findIS1_EEPNS_18_Rb_tree_node_baseERKT_
; demangled: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<CompPos, std::less<CompPos>, std::pair<CompPos const, PFGInnerNode*>, std::priv::_Select1st<std::pair<CompPos const, PFGInnerNode*> >, std::priv::_MapTraitsT<std::pair<CompPos const, PFGInnerNode*> >, std::allocator<std::pair<CompPos const, PFGInnerNode*> > >::_M_find<CompPos>(CompPos const&) const
; decoder-mode: arm
0051bc78  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0051bc7c  04 40 90 e5                                      ldr r4, [r0, #4]
0051bc80  00 a0 a0 e1                                      mov sl, r0
0051bc84  01 70 a0 e1                                      mov r7, r1
0051bc88  00 00 54 e3                                      cmp r4, #0
0051bc8c  42 00 00 0a                                      beq #0x51bd9c
0051bc90  00 60 91 e5                                      ldr r6, [r1]
0051bc94  00 80 a0 e1                                      mov r8, r0
0051bc98  10 50 94 e5                                      ldr r5, [r4, #0x10]
0051bc9c  06 10 a0 e1                                      mov r1, r6
0051bca0  05 00 a0 e1                                      mov r0, r5
0051bca4  c0 c9 f7 eb                                      bl #0x30e3ac
0051bca8  17 17 0b e3                                      movw r1, #0xb717
0051bcac  02 01 c0 e3                                      bic r0, r0, #0x80000000
0051bcb0  d1 18 43 e3                                      movt r1, #0x38d1
0051bcb4  94 ca f7 eb                                      bl #0x30e70c
0051bcb8  00 00 50 e3                                      cmp r0, #0
0051bcbc  39 00 00 0a                                      beq #0x51bda8
0051bcc0  14 90 94 e5                                      ldr sb, [r4, #0x14]
0051bcc4  04 50 97 e5                                      ldr r5, [r7, #4]
0051bcc8  09 00 a0 e1                                      mov r0, sb
0051bccc  05 10 a0 e1                                      mov r1, r5
0051bcd0  b5 c9 f7 eb                                      bl #0x30e3ac
0051bcd4  17 17 0b e3                                      movw r1, #0xb717
0051bcd8  02 01 c0 e3                                      bic r0, r0, #0x80000000
0051bcdc  d1 18 43 e3                                      movt r1, #0x38d1
0051bce0  89 ca f7 eb                                      bl #0x30e70c
0051bce4  00 00 50 e3                                      cmp r0, #0
0051bce8  35 00 00 0a                                      beq #0x51bdc4
0051bcec  18 00 94 e5                                      ldr r0, [r4, #0x18]
0051bcf0  08 10 97 e5                                      ldr r1, [r7, #8]
0051bcf4  84 ca f7 eb                                      bl #0x30e70c
0051bcf8  00 00 50 e3                                      cmp r0, #0
0051bcfc  00 30 a0 e3                                      mov r3, #0
0051bd00  01 30 a0 13                                      movne r3, #1
0051bd04  73 30 ef e6                                      uxtb r3, r3
0051bd08  00 00 53 e3                                      cmp r3, #0
0051bd0c  04 80 a0 01                                      moveq r8, r4
0051bd10  0c 40 94 15                                      ldrne r4, [r4, #0xc]
0051bd14  08 40 94 05                                      ldreq r4, [r4, #8]
0051bd18  00 00 54 e3                                      cmp r4, #0
0051bd1c  dd ff ff 1a                                      bne #0x51bc98
0051bd20  0a 00 58 e1                                      cmp r8, sl
0051bd24  1d 00 00 0a                                      beq #0x51bda0
0051bd28  10 50 98 e5                                      ldr r5, [r8, #0x10]
0051bd2c  06 00 a0 e1                                      mov r0, r6
0051bd30  05 10 a0 e1                                      mov r1, r5
0051bd34  9c c9 f7 eb                                      bl #0x30e3ac
0051bd38  17 17 0b e3                                      movw r1, #0xb717
0051bd3c  02 01 c0 e3                                      bic r0, r0, #0x80000000
0051bd40  d1 18 43 e3                                      movt r1, #0x38d1
0051bd44  70 ca f7 eb                                      bl #0x30e70c
0051bd48  00 00 50 e3                                      cmp r0, #0
0051bd4c  23 00 00 0a                                      beq #0x51bde0
0051bd50  04 60 97 e5                                      ldr r6, [r7, #4]
0051bd54  14 50 98 e5                                      ldr r5, [r8, #0x14]
0051bd58  06 00 a0 e1                                      mov r0, r6
0051bd5c  05 10 a0 e1                                      mov r1, r5
0051bd60  91 c9 f7 eb                                      bl #0x30e3ac
0051bd64  17 17 0b e3                                      movw r1, #0xb717
0051bd68  02 01 c0 e3                                      bic r0, r0, #0x80000000
0051bd6c  d1 18 43 e3                                      movt r1, #0x38d1
0051bd70  65 ca f7 eb                                      bl #0x30e70c
0051bd74  00 00 50 e3                                      cmp r0, #0
0051bd78  1e 00 00 0a                                      beq #0x51bdf8
0051bd7c  08 00 97 e5                                      ldr r0, [r7, #8]
0051bd80  18 10 98 e5                                      ldr r1, [r8, #0x18]
0051bd84  60 ca f7 eb                                      bl #0x30e70c
0051bd88  00 00 50 e3                                      cmp r0, #0
0051bd8c  01 40 a0 13                                      movne r4, #1
0051bd90  74 40 ef e6                                      uxtb r4, r4
0051bd94  00 00 54 e3                                      cmp r4, #0
0051bd98  00 00 00 0a                                      beq #0x51bda0
0051bd9c  0a 80 a0 e1                                      mov r8, sl
0051bda0  08 00 a0 e1                                      mov r0, r8
0051bda4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0051bda8  05 00 a0 e1                                      mov r0, r5
0051bdac  06 10 a0 e1                                      mov r1, r6
0051bdb0  55 ca f7 eb                                      bl #0x30e70c
0051bdb4  00 00 50 e3                                      cmp r0, #0
0051bdb8  00 30 a0 e3                                      mov r3, #0
0051bdbc  01 30 a0 13                                      movne r3, #1
0051bdc0  cf ff ff ea                                      b #0x51bd04
0051bdc4  09 00 a0 e1                                      mov r0, sb
0051bdc8  05 10 a0 e1                                      mov r1, r5
0051bdcc  4e ca f7 eb                                      bl #0x30e70c
0051bdd0  00 00 50 e3                                      cmp r0, #0
0051bdd4  00 30 a0 e3                                      mov r3, #0
0051bdd8  01 30 a0 13                                      movne r3, #1
0051bddc  c8 ff ff ea                                      b #0x51bd04
0051bde0  05 00 a0 e1                                      mov r0, r5
0051bde4  06 10 a0 e1                                      mov r1, r6
0051bde8  42 c9 f7 eb                                      bl #0x30e2f8
0051bdec  00 00 50 e3                                      cmp r0, #0
0051bdf0  01 40 a0 13                                      movne r4, #1
0051bdf4  e5 ff ff ea                                      b #0x51bd90
0051bdf8  06 00 a0 e1                                      mov r0, r6
0051bdfc  05 10 a0 e1                                      mov r1, r5
0051be00  41 ca f7 eb                                      bl #0x30e70c
0051be04  00 00 50 e3                                      cmp r0, #0
0051be08  01 40 a0 13                                      movne r4, #1
0051be0c  df ff ff ea                                      b #0x51bd90

; FUNCTION 0x0051bf28, declared_size=404, range_size=404, mode=arm
; class-group: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<CompPos, std::less<CompPos>, std::pair<CompPos const, PFGInnerNode*>, std::priv::_Select1st<std::pair<CompPos const, PFGInnerNode*> >, std::priv::_MapTraitsT<std::pair<CompPos const, PFGInnerNode*> >, std::allocator<std::pair<CompPos const, PFGInnerNode*> > >
; alias: _ZNKSt4priv8_Rb_treeI7CompPosSt4lessIS1_ESt4pairIKS1_P12PFGInnerNodeENS_10_Select1stIS8_EENS_11_MapTraitsTIS8_EESaIS8_EE7_M_findI7Point3DIfEEEPNS_18_Rb_tree_node_baseERKT_
; demangled: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<CompPos, std::less<CompPos>, std::pair<CompPos const, PFGInnerNode*>, std::priv::_Select1st<std::pair<CompPos const, PFGInnerNode*> >, std::priv::_MapTraitsT<std::pair<CompPos const, PFGInnerNode*> >, std::allocator<std::pair<CompPos const, PFGInnerNode*> > >::_M_find<Point3D<float> >(Point3D<float> const&) const
; decoder-mode: arm
0051bf28  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0051bf2c  04 40 90 e5                                      ldr r4, [r0, #4]
0051bf30  00 a0 a0 e1                                      mov sl, r0
0051bf34  00 00 54 e3                                      cmp r4, #0
0051bf38  42 00 00 0a                                      beq #0x51c048
0051bf3c  08 90 91 e5                                      ldr sb, [r1, #8]
0051bf40  00 60 91 e5                                      ldr r6, [r1]
0051bf44  04 80 91 e5                                      ldr r8, [r1, #4]
0051bf48  00 70 a0 e1                                      mov r7, r0
0051bf4c  10 50 94 e5                                      ldr r5, [r4, #0x10]
0051bf50  06 10 a0 e1                                      mov r1, r6
0051bf54  05 00 a0 e1                                      mov r0, r5
0051bf58  13 c9 f7 eb                                      bl #0x30e3ac
0051bf5c  17 17 0b e3                                      movw r1, #0xb717
0051bf60  02 01 c0 e3                                      bic r0, r0, #0x80000000
0051bf64  d1 18 43 e3                                      movt r1, #0x38d1
0051bf68  e7 c9 f7 eb                                      bl #0x30e70c
0051bf6c  00 00 50 e3                                      cmp r0, #0
0051bf70  37 00 00 0a                                      beq #0x51c054
0051bf74  14 50 94 e5                                      ldr r5, [r4, #0x14]
0051bf78  08 10 a0 e1                                      mov r1, r8
0051bf7c  05 00 a0 e1                                      mov r0, r5
0051bf80  09 c9 f7 eb                                      bl #0x30e3ac
0051bf84  17 17 0b e3                                      movw r1, #0xb717
0051bf88  02 01 c0 e3                                      bic r0, r0, #0x80000000
0051bf8c  d1 18 43 e3                                      movt r1, #0x38d1
0051bf90  dd c9 f7 eb                                      bl #0x30e70c
0051bf94  00 00 50 e3                                      cmp r0, #0
0051bf98  34 00 00 0a                                      beq #0x51c070
0051bf9c  18 00 94 e5                                      ldr r0, [r4, #0x18]
0051bfa0  09 10 a0 e1                                      mov r1, sb
0051bfa4  d8 c9 f7 eb                                      bl #0x30e70c
0051bfa8  00 00 50 e3                                      cmp r0, #0
0051bfac  00 30 a0 e3                                      mov r3, #0
0051bfb0  01 30 a0 13                                      movne r3, #1
0051bfb4  73 30 ef e6                                      uxtb r3, r3
0051bfb8  00 00 53 e3                                      cmp r3, #0
0051bfbc  04 70 a0 01                                      moveq r7, r4
0051bfc0  0c 40 94 15                                      ldrne r4, [r4, #0xc]
0051bfc4  08 40 94 05                                      ldreq r4, [r4, #8]
0051bfc8  00 00 54 e3                                      cmp r4, #0
0051bfcc  de ff ff 1a                                      bne #0x51bf4c
0051bfd0  0a 00 57 e1                                      cmp r7, sl
0051bfd4  1c 00 00 0a                                      beq #0x51c04c
0051bfd8  10 50 97 e5                                      ldr r5, [r7, #0x10]
0051bfdc  06 00 a0 e1                                      mov r0, r6
0051bfe0  05 10 a0 e1                                      mov r1, r5
0051bfe4  f0 c8 f7 eb                                      bl #0x30e3ac
0051bfe8  17 17 0b e3                                      movw r1, #0xb717
0051bfec  02 01 c0 e3                                      bic r0, r0, #0x80000000
0051bff0  d1 18 43 e3                                      movt r1, #0x38d1
0051bff4  c4 c9 f7 eb                                      bl #0x30e70c
0051bff8  00 00 50 e3                                      cmp r0, #0
0051bffc  22 00 00 0a                                      beq #0x51c08c
0051c000  14 50 97 e5                                      ldr r5, [r7, #0x14]
0051c004  08 00 a0 e1                                      mov r0, r8
0051c008  05 10 a0 e1                                      mov r1, r5
0051c00c  e6 c8 f7 eb                                      bl #0x30e3ac
0051c010  17 17 0b e3                                      movw r1, #0xb717
0051c014  02 01 c0 e3                                      bic r0, r0, #0x80000000
0051c018  d1 18 43 e3                                      movt r1, #0x38d1
0051c01c  ba c9 f7 eb                                      bl #0x30e70c
0051c020  00 00 50 e3                                      cmp r0, #0
0051c024  1e 00 00 0a                                      beq #0x51c0a4
0051c028  09 00 a0 e1                                      mov r0, sb
0051c02c  18 10 97 e5                                      ldr r1, [r7, #0x18]
0051c030  b5 c9 f7 eb                                      bl #0x30e70c
0051c034  00 00 50 e3                                      cmp r0, #0
0051c038  01 40 a0 13                                      movne r4, #1
0051c03c  74 40 ef e6                                      uxtb r4, r4
0051c040  00 00 54 e3                                      cmp r4, #0
0051c044  00 00 00 0a                                      beq #0x51c04c
0051c048  0a 70 a0 e1                                      mov r7, sl
0051c04c  07 00 a0 e1                                      mov r0, r7
0051c050  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0051c054  05 00 a0 e1                                      mov r0, r5
0051c058  06 10 a0 e1                                      mov r1, r6
0051c05c  aa c9 f7 eb                                      bl #0x30e70c
0051c060  00 00 50 e3                                      cmp r0, #0
0051c064  00 30 a0 e3                                      mov r3, #0
0051c068  01 30 a0 13                                      movne r3, #1
0051c06c  d0 ff ff ea                                      b #0x51bfb4
0051c070  05 00 a0 e1                                      mov r0, r5
0051c074  08 10 a0 e1                                      mov r1, r8
0051c078  a3 c9 f7 eb                                      bl #0x30e70c
0051c07c  00 00 50 e3                                      cmp r0, #0
0051c080  00 30 a0 e3                                      mov r3, #0
0051c084  01 30 a0 13                                      movne r3, #1
0051c088  c9 ff ff ea                                      b #0x51bfb4
0051c08c  06 00 a0 e1                                      mov r0, r6
0051c090  05 10 a0 e1                                      mov r1, r5
0051c094  9c c9 f7 eb                                      bl #0x30e70c
0051c098  00 00 50 e3                                      cmp r0, #0
0051c09c  01 40 a0 13                                      movne r4, #1
0051c0a0  e5 ff ff ea                                      b #0x51c03c
0051c0a4  08 00 a0 e1                                      mov r0, r8
0051c0a8  05 10 a0 e1                                      mov r1, r5
0051c0ac  96 c9 f7 eb                                      bl #0x30e70c
0051c0b0  00 00 50 e3                                      cmp r0, #0
0051c0b4  01 40 a0 13                                      movne r4, #1
0051c0b8  df ff ff ea                                      b #0x51c03c

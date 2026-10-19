; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0051c5fc, declared_size=56, range_size=56, mode=arm
; class-group: std::priv::_Rb_tree<CompPos, std::less<CompPos>, std::pair<CompPos const, PFGInnerNode*>, std::priv::_Select1st<std::pair<CompPos const, PFGInnerNode*> >, std::priv::_MapTraitsT<std::pair<CompPos const, PFGInnerNode*> >, std::allocator<std::pair<CompPos const, PFGInnerNode*> > >
; alias: _ZNSt4priv8_Rb_treeI7CompPosSt4lessIS1_ESt4pairIKS1_P12PFGInnerNodeENS_10_Select1stIS8_EENS_11_MapTraitsTIS8_EESaIS8_EE8_M_eraseEPNS_18_Rb_tree_node_baseE
; demangled: std::priv::_Rb_tree<CompPos, std::less<CompPos>, std::pair<CompPos const, PFGInnerNode*>, std::priv::_Select1st<std::pair<CompPos const, PFGInnerNode*> >, std::priv::_MapTraitsT<std::pair<CompPos const, PFGInnerNode*> >, std::allocator<std::pair<CompPos const, PFGInnerNode*> > >::_M_erase(std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
0051c5fc  70 40 2d e9                                      push {r4, r5, r6, lr}
0051c600  00 40 51 e2                                      subs r4, r1, #0
0051c604  00 60 a0 e1                                      mov r6, r0
0051c608  08 00 00 0a                                      beq #0x51c630
0051c60c  0c 10 94 e5                                      ldr r1, [r4, #0xc]
0051c610  06 00 a0 e1                                      mov r0, r6
0051c614  f8 ff ff eb                                      bl #0x51c5fc
0051c618  08 50 94 e5                                      ldr r5, [r4, #8]
0051c61c  04 00 a0 e1                                      mov r0, r4
0051c620  20 10 a0 e3                                      mov r1, #0x20
0051c624  35 b2 07 eb                                      bl #0x708f00
0051c628  00 40 55 e2                                      subs r4, r5, #0
0051c62c  f6 ff ff 1a                                      bne #0x51c60c
0051c630  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0051ead4, declared_size=468, range_size=468, mode=arm
; class-group: std::priv::_Rb_tree<CompPos, std::less<CompPos>, std::pair<CompPos const, PFGInnerNode*>, std::priv::_Select1st<std::pair<CompPos const, PFGInnerNode*> >, std::priv::_MapTraitsT<std::pair<CompPos const, PFGInnerNode*> >, std::allocator<std::pair<CompPos const, PFGInnerNode*> > >
; alias: _ZNSt4priv8_Rb_treeI7CompPosSt4lessIS1_ESt4pairIKS1_P12PFGInnerNodeENS_10_Select1stIS8_EENS_11_MapTraitsTIS8_EESaIS8_EE9_M_insertEPNS_18_Rb_tree_node_baseERKS8_SG_SG_
; demangled: std::priv::_Rb_tree<CompPos, std::less<CompPos>, std::pair<CompPos const, PFGInnerNode*>, std::priv::_Select1st<std::pair<CompPos const, PFGInnerNode*> >, std::priv::_MapTraitsT<std::pair<CompPos const, PFGInnerNode*> >, std::allocator<std::pair<CompPos const, PFGInnerNode*> > >::_M_insert(std::priv::_Rb_tree_node_base*, std::pair<CompPos const, PFGInnerNode*> const&, std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
0051ead4  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0051ead8  02 00 51 e1                                      cmp r1, r2
0051eadc  01 40 a0 e1                                      mov r4, r1
0051eae0  02 50 a0 e1                                      mov r5, r2
0051eae4  00 60 a0 e1                                      mov r6, r0
0051eae8  03 80 a0 e1                                      mov r8, r3
0051eaec  20 70 9d e5                                      ldr r7, [sp, #0x20]
0051eaf0  35 00 00 0a                                      beq #0x51ebcc
0051eaf4  24 30 9d e5                                      ldr r3, [sp, #0x24]
0051eaf8  00 00 53 e3                                      cmp r3, #0
0051eafc  1b 00 00 0a                                      beq #0x51eb70
0051eb00  04 00 a0 e1                                      mov r0, r4
0051eb04  ea ff ff eb                                      bl #0x51eab4
0051eb08  00 20 98 e5                                      ldr r2, [r8]
0051eb0c  00 30 a0 e3                                      mov r3, #0
0051eb10  00 70 a0 e1                                      mov r7, r0
0051eb14  10 20 80 e5                                      str r2, [r0, #0x10]
0051eb18  04 20 98 e5                                      ldr r2, [r8, #4]
0051eb1c  14 20 80 e5                                      str r2, [r0, #0x14]
0051eb20  08 20 98 e5                                      ldr r2, [r8, #8]
0051eb24  18 20 80 e5                                      str r2, [r0, #0x18]
0051eb28  0c 20 98 e5                                      ldr r2, [r8, #0xc]
0051eb2c  0c 30 80 e5                                      str r3, [r0, #0xc]
0051eb30  08 30 80 e5                                      str r3, [r0, #8]
0051eb34  1c 20 80 e5                                      str r2, [r0, #0x1c]
0051eb38  0c 00 85 e5                                      str r0, [r5, #0xc]
0051eb3c  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0051eb40  03 00 55 e1                                      cmp r5, r3
0051eb44  1e 00 00 0a                                      beq #0x51ebc4
0051eb48  07 00 a0 e1                                      mov r0, r7
0051eb4c  04 50 87 e5                                      str r5, [r7, #4]
0051eb50  04 10 84 e2                                      add r1, r4, #4
0051eb54  01 d3 f7 eb                                      bl #0x313760
0051eb58  10 30 94 e5                                      ldr r3, [r4, #0x10]
0051eb5c  06 00 a0 e1                                      mov r0, r6
0051eb60  01 30 83 e2                                      add r3, r3, #1
0051eb64  10 30 84 e5                                      str r3, [r4, #0x10]
0051eb68  00 70 86 e5                                      str r7, [r6]
0051eb6c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0051eb70  00 00 57 e3                                      cmp r7, #0
0051eb74  26 00 00 0a                                      beq #0x51ec14
0051eb78  04 00 a0 e1                                      mov r0, r4
0051eb7c  cc ff ff eb                                      bl #0x51eab4
0051eb80  00 20 98 e5                                      ldr r2, [r8]
0051eb84  00 30 a0 e3                                      mov r3, #0
0051eb88  00 70 a0 e1                                      mov r7, r0
0051eb8c  10 20 80 e5                                      str r2, [r0, #0x10]
0051eb90  04 20 98 e5                                      ldr r2, [r8, #4]
0051eb94  14 20 80 e5                                      str r2, [r0, #0x14]
0051eb98  08 20 98 e5                                      ldr r2, [r8, #8]
0051eb9c  18 20 80 e5                                      str r2, [r0, #0x18]
0051eba0  0c 20 98 e5                                      ldr r2, [r8, #0xc]
0051eba4  0c 30 80 e5                                      str r3, [r0, #0xc]
0051eba8  08 30 80 e5                                      str r3, [r0, #8]
0051ebac  1c 20 80 e5                                      str r2, [r0, #0x1c]
0051ebb0  08 00 85 e5                                      str r0, [r5, #8]
0051ebb4  08 30 94 e5                                      ldr r3, [r4, #8]
0051ebb8  03 00 55 e1                                      cmp r5, r3
0051ebbc  08 00 84 05                                      streq r0, [r4, #8]
0051ebc0  e0 ff ff ea                                      b #0x51eb48
0051ebc4  0c 70 84 e5                                      str r7, [r4, #0xc]
0051ebc8  de ff ff ea                                      b #0x51eb48
0051ebcc  01 00 a0 e1                                      mov r0, r1
0051ebd0  b7 ff ff eb                                      bl #0x51eab4
0051ebd4  00 20 98 e5                                      ldr r2, [r8]
0051ebd8  00 30 a0 e3                                      mov r3, #0
0051ebdc  00 70 a0 e1                                      mov r7, r0
0051ebe0  10 20 80 e5                                      str r2, [r0, #0x10]
0051ebe4  04 20 98 e5                                      ldr r2, [r8, #4]
0051ebe8  14 20 80 e5                                      str r2, [r0, #0x14]
0051ebec  08 20 98 e5                                      ldr r2, [r8, #8]
0051ebf0  18 20 80 e5                                      str r2, [r0, #0x18]
0051ebf4  0c 20 98 e5                                      ldr r2, [r8, #0xc]
0051ebf8  0c 30 80 e5                                      str r3, [r0, #0xc]
0051ebfc  08 30 80 e5                                      str r3, [r0, #8]
0051ec00  1c 20 80 e5                                      str r2, [r0, #0x1c]
0051ec04  08 00 84 e5                                      str r0, [r4, #8]
0051ec08  04 00 84 e5                                      str r0, [r4, #4]
0051ec0c  0c 00 84 e5                                      str r0, [r4, #0xc]
0051ec10  cc ff ff ea                                      b #0x51eb48
0051ec14  10 a0 92 e5                                      ldr sl, [r2, #0x10]
0051ec18  00 90 98 e5                                      ldr sb, [r8]
0051ec1c  0a 10 a0 e1                                      mov r1, sl
0051ec20  09 00 a0 e1                                      mov r0, sb
0051ec24  e0 bd f7 eb                                      bl #0x30e3ac
0051ec28  17 17 0b e3                                      movw r1, #0xb717
0051ec2c  02 01 c0 e3                                      bic r0, r0, #0x80000000
0051ec30  d1 18 43 e3                                      movt r1, #0x38d1
0051ec34  b4 be f7 eb                                      bl #0x30e70c
0051ec38  00 00 50 e3                                      cmp r0, #0
0051ec3c  13 00 00 0a                                      beq #0x51ec90
0051ec40  04 90 98 e5                                      ldr sb, [r8, #4]
0051ec44  14 a0 95 e5                                      ldr sl, [r5, #0x14]
0051ec48  09 00 a0 e1                                      mov r0, sb
0051ec4c  0a 10 a0 e1                                      mov r1, sl
0051ec50  d5 bd f7 eb                                      bl #0x30e3ac
0051ec54  17 17 0b e3                                      movw r1, #0xb717
0051ec58  02 01 c0 e3                                      bic r0, r0, #0x80000000
0051ec5c  d1 18 43 e3                                      movt r1, #0x38d1
0051ec60  a9 be f7 eb                                      bl #0x30e70c
0051ec64  00 00 50 e3                                      cmp r0, #0
0051ec68  08 00 00 0a                                      beq #0x51ec90
0051ec6c  08 00 98 e5                                      ldr r0, [r8, #8]
0051ec70  18 10 95 e5                                      ldr r1, [r5, #0x18]
0051ec74  a4 be f7 eb                                      bl #0x30e70c
0051ec78  00 00 50 e3                                      cmp r0, #0
0051ec7c  01 70 a0 13                                      movne r7, #1
0051ec80  77 30 ef e6                                      uxtb r3, r7
0051ec84  00 00 53 e3                                      cmp r3, #0
0051ec88  9c ff ff 0a                                      beq #0x51eb00
0051ec8c  b9 ff ff ea                                      b #0x51eb78
0051ec90  09 00 a0 e1                                      mov r0, sb
0051ec94  0a 10 a0 e1                                      mov r1, sl
0051ec98  9b be f7 eb                                      bl #0x30e70c
0051ec9c  00 00 50 e3                                      cmp r0, #0
0051eca0  01 70 a0 13                                      movne r7, #1
0051eca4  f5 ff ff ea                                      b #0x51ec80

; FUNCTION 0x0051eca8, declared_size=784, range_size=784, mode=arm
; class-group: std::priv::_Rb_tree<CompPos, std::less<CompPos>, std::pair<CompPos const, PFGInnerNode*>, std::priv::_Select1st<std::pair<CompPos const, PFGInnerNode*> >, std::priv::_MapTraitsT<std::pair<CompPos const, PFGInnerNode*> >, std::allocator<std::pair<CompPos const, PFGInnerNode*> > >
; alias: _ZNSt4priv8_Rb_treeI7CompPosSt4lessIS1_ESt4pairIKS1_P12PFGInnerNodeENS_10_Select1stIS8_EENS_11_MapTraitsTIS8_EESaIS8_EE13insert_uniqueERKS8_
; demangled: std::priv::_Rb_tree<CompPos, std::less<CompPos>, std::pair<CompPos const, PFGInnerNode*>, std::priv::_Select1st<std::pair<CompPos const, PFGInnerNode*> >, std::priv::_MapTraitsT<std::pair<CompPos const, PFGInnerNode*> >, std::allocator<std::pair<CompPos const, PFGInnerNode*> > >::insert_unique(std::pair<CompPos const, PFGInnerNode*> const&)
; decoder-mode: arm
0051eca8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0051ecac  1c d0 4d e2                                      sub sp, sp, #0x1c
0051ecb0  0c 10 8d e5                                      str r1, [sp, #0xc]
0051ecb4  04 50 91 e5                                      ldr r5, [r1, #4]
0051ecb8  00 40 a0 e1                                      mov r4, r0
0051ecbc  02 60 a0 e1                                      mov r6, r2
0051ecc0  00 00 55 e3                                      cmp r5, #0
0051ecc4  01 c0 a0 01                                      moveq ip, r1
0051ecc8  5f 00 00 0a                                      beq #0x51ee4c
0051eccc  00 80 92 e5                                      ldr r8, [r2]
0051ecd0  10 70 95 e5                                      ldr r7, [r5, #0x10]
0051ecd4  08 00 a0 e1                                      mov r0, r8
0051ecd8  05 b0 a0 e1                                      mov fp, r5
0051ecdc  07 10 a0 e1                                      mov r1, r7
0051ece0  b1 bd f7 eb                                      bl #0x30e3ac
0051ece4  17 17 0b e3                                      movw r1, #0xb717
0051ece8  02 01 c0 e3                                      bic r0, r0, #0x80000000
0051ecec  d1 18 43 e3                                      movt r1, #0x38d1
0051ecf0  85 be f7 eb                                      bl #0x30e70c
0051ecf4  00 00 50 e3                                      cmp r0, #0
0051ecf8  18 00 00 0a                                      beq #0x51ed60
0051ecfc  04 90 96 e5                                      ldr sb, [r6, #4]
0051ed00  14 a0 95 e5                                      ldr sl, [r5, #0x14]
0051ed04  09 00 a0 e1                                      mov r0, sb
0051ed08  0a 10 a0 e1                                      mov r1, sl
0051ed0c  a6 bd f7 eb                                      bl #0x30e3ac
0051ed10  17 17 0b e3                                      movw r1, #0xb717
0051ed14  02 01 c0 e3                                      bic r0, r0, #0x80000000
0051ed18  d1 18 43 e3                                      movt r1, #0x38d1
0051ed1c  7a be f7 eb                                      bl #0x30e70c
0051ed20  00 00 50 e3                                      cmp r0, #0
0051ed24  3f 00 00 0a                                      beq #0x51ee28
0051ed28  08 00 96 e5                                      ldr r0, [r6, #8]
0051ed2c  18 10 95 e5                                      ldr r1, [r5, #0x18]
0051ed30  75 be f7 eb                                      bl #0x30e70c
0051ed34  00 00 50 e3                                      cmp r0, #0
0051ed38  00 20 a0 e3                                      mov r2, #0
0051ed3c  0d 00 00 1a                                      bne #0x51ed78
0051ed40  72 20 ef e6                                      uxtb r2, r2
0051ed44  00 00 52 e3                                      cmp r2, #0
0051ed48  08 30 95 15                                      ldrne r3, [r5, #8]
0051ed4c  0c 30 95 05                                      ldreq r3, [r5, #0xc]
0051ed50  00 00 53 e3                                      cmp r3, #0
0051ed54  0e 00 00 0a                                      beq #0x51ed94
0051ed58  03 50 a0 e1                                      mov r5, r3
0051ed5c  db ff ff ea                                      b #0x51ecd0
0051ed60  07 00 a0 e1                                      mov r0, r7
0051ed64  08 10 a0 e1                                      mov r1, r8
0051ed68  62 bd f7 eb                                      bl #0x30e2f8
0051ed6c  00 00 50 e3                                      cmp r0, #0
0051ed70  00 20 a0 e3                                      mov r2, #0
0051ed74  f1 ff ff 0a                                      beq #0x51ed40
0051ed78  01 20 a0 e3                                      mov r2, #1
0051ed7c  72 20 ef e6                                      uxtb r2, r2
0051ed80  00 00 52 e3                                      cmp r2, #0
0051ed84  08 30 95 15                                      ldrne r3, [r5, #8]
0051ed88  0c 30 95 05                                      ldreq r3, [r5, #0xc]
0051ed8c  00 00 53 e3                                      cmp r3, #0
0051ed90  f0 ff ff 1a                                      bne #0x51ed58
0051ed94  00 00 52 e3                                      cmp r2, #0
0051ed98  05 a0 a0 01                                      moveq sl, r5
0051ed9c  29 00 00 1a                                      bne #0x51ee48
0051eda0  08 10 a0 e1                                      mov r1, r8
0051eda4  07 00 a0 e1                                      mov r0, r7
0051eda8  7f bd f7 eb                                      bl #0x30e3ac
0051edac  17 17 0b e3                                      movw r1, #0xb717
0051edb0  02 01 c0 e3                                      bic r0, r0, #0x80000000
0051edb4  d1 18 43 e3                                      movt r1, #0x38d1
0051edb8  53 be f7 eb                                      bl #0x30e70c
0051edbc  00 00 50 e3                                      cmp r0, #0
0051edc0  39 00 00 0a                                      beq #0x51eeac
0051edc4  14 80 9b e5                                      ldr r8, [fp, #0x14]
0051edc8  04 70 96 e5                                      ldr r7, [r6, #4]
0051edcc  08 00 a0 e1                                      mov r0, r8
0051edd0  07 10 a0 e1                                      mov r1, r7
0051edd4  74 bd f7 eb                                      bl #0x30e3ac
0051edd8  17 17 0b e3                                      movw r1, #0xb717
0051eddc  02 01 c0 e3                                      bic r0, r0, #0x80000000
0051ede0  d1 18 43 e3                                      movt r1, #0x38d1
0051ede4  48 be f7 eb                                      bl #0x30e70c
0051ede8  00 00 50 e3                                      cmp r0, #0
0051edec  47 00 00 0a                                      beq #0x51ef10
0051edf0  18 00 9b e5                                      ldr r0, [fp, #0x18]
0051edf4  08 10 96 e5                                      ldr r1, [r6, #8]
0051edf8  43 be f7 eb                                      bl #0x30e70c
0051edfc  00 00 50 e3                                      cmp r0, #0
0051ee00  00 30 a0 e3                                      mov r3, #0
0051ee04  2e 00 00 1a                                      bne #0x51eec4
0051ee08  73 30 ef e6                                      uxtb r3, r3
0051ee0c  00 00 53 e3                                      cmp r3, #0
0051ee10  00 a0 84 05                                      streq sl, [r4]
0051ee14  04 30 c4 05                                      strbeq r3, [r4, #4]
0051ee18  2f 00 00 1a                                      bne #0x51eedc
0051ee1c  04 00 a0 e1                                      mov r0, r4
0051ee20  1c d0 8d e2                                      add sp, sp, #0x1c
0051ee24  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0051ee28  09 00 a0 e1                                      mov r0, sb
0051ee2c  0a 10 a0 e1                                      mov r1, sl
0051ee30  35 be f7 eb                                      bl #0x30e70c
0051ee34  00 00 50 e3                                      cmp r0, #0
0051ee38  00 20 a0 e3                                      mov r2, #0
0051ee3c  bf ff ff 0a                                      beq #0x51ed40
0051ee40  01 20 a0 e3                                      mov r2, #1
0051ee44  cc ff ff ea                                      b #0x51ed7c
0051ee48  05 c0 a0 e1                                      mov ip, r5
0051ee4c  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0051ee50  08 30 92 e5                                      ldr r3, [r2, #8]
0051ee54  03 00 5c e1                                      cmp ip, r3
0051ee58  48 00 00 0a                                      beq #0x51ef80
0051ee5c  00 30 dc e5                                      ldrb r3, [ip]
0051ee60  00 00 53 e3                                      cmp r3, #0
0051ee64  03 00 00 1a                                      bne #0x51ee78
0051ee68  04 30 9c e5                                      ldr r3, [ip, #4]
0051ee6c  04 30 93 e5                                      ldr r3, [r3, #4]
0051ee70  03 00 5c e1                                      cmp ip, r3
0051ee74  3b 00 00 0a                                      beq #0x51ef68
0051ee78  08 b0 9c e5                                      ldr fp, [ip, #8]
0051ee7c  00 00 5b e3                                      cmp fp, #0
0051ee80  01 00 00 1a                                      bne #0x51ee8c
0051ee84  29 00 00 ea                                      b #0x51ef30
0051ee88  03 b0 a0 e1                                      mov fp, r3
0051ee8c  0c 30 9b e5                                      ldr r3, [fp, #0xc]
0051ee90  00 00 53 e3                                      cmp r3, #0
0051ee94  fb ff ff 1a                                      bne #0x51ee88
0051ee98  0c 50 a0 e1                                      mov r5, ip
0051ee9c  00 80 96 e5                                      ldr r8, [r6]
0051eea0  10 70 9b e5                                      ldr r7, [fp, #0x10]
0051eea4  0b a0 a0 e1                                      mov sl, fp
0051eea8  bc ff ff ea                                      b #0x51eda0
0051eeac  08 00 a0 e1                                      mov r0, r8
0051eeb0  07 10 a0 e1                                      mov r1, r7
0051eeb4  0f bd f7 eb                                      bl #0x30e2f8
0051eeb8  00 00 50 e3                                      cmp r0, #0
0051eebc  00 30 a0 e3                                      mov r3, #0
0051eec0  d0 ff ff 0a                                      beq #0x51ee08
0051eec4  01 30 a0 e3                                      mov r3, #1
0051eec8  73 30 ef e6                                      uxtb r3, r3
0051eecc  00 00 53 e3                                      cmp r3, #0
0051eed0  00 a0 84 05                                      streq sl, [r4]
0051eed4  04 30 c4 05                                      strbeq r3, [r4, #4]
0051eed8  cf ff ff 0a                                      beq #0x51ee1c
0051eedc  00 c0 a0 e3                                      mov ip, #0
0051eee0  05 20 a0 e1                                      mov r2, r5
0051eee4  06 30 a0 e1                                      mov r3, r6
0051eee8  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0051eeec  10 00 8d e2                                      add r0, sp, #0x10
0051eef0  04 c0 8d e5                                      str ip, [sp, #4]
0051eef4  00 c0 8d e5                                      str ip, [sp]
0051eef8  f5 fe ff eb                                      bl #0x51ead4
0051eefc  10 30 9d e5                                      ldr r3, [sp, #0x10]
0051ef00  01 20 a0 e3                                      mov r2, #1
0051ef04  04 20 c4 e5                                      strb r2, [r4, #4]
0051ef08  00 30 84 e5                                      str r3, [r4]
0051ef0c  c2 ff ff ea                                      b #0x51ee1c
0051ef10  08 00 a0 e1                                      mov r0, r8
0051ef14  07 10 a0 e1                                      mov r1, r7
0051ef18  fb bd f7 eb                                      bl #0x30e70c
0051ef1c  00 00 50 e3                                      cmp r0, #0
0051ef20  00 30 a0 e3                                      mov r3, #0
0051ef24  b7 ff ff 0a                                      beq #0x51ee08
0051ef28  01 30 a0 e3                                      mov r3, #1
0051ef2c  e5 ff ff ea                                      b #0x51eec8
0051ef30  04 30 9c e5                                      ldr r3, [ip, #4]
0051ef34  08 50 93 e5                                      ldr r5, [r3, #8]
0051ef38  0c 00 55 e1                                      cmp r5, ip
0051ef3c  01 00 00 0a                                      beq #0x51ef48
0051ef40  1a 00 00 ea                                      b #0x51efb0
0051ef44  0b 30 a0 e1                                      mov r3, fp
0051ef48  04 b0 93 e5                                      ldr fp, [r3, #4]
0051ef4c  08 20 9b e5                                      ldr r2, [fp, #8]
0051ef50  03 00 52 e1                                      cmp r2, r3
0051ef54  fa ff ff 0a                                      beq #0x51ef44
0051ef58  00 80 96 e5                                      ldr r8, [r6]
0051ef5c  10 70 9b e5                                      ldr r7, [fp, #0x10]
0051ef60  0b a0 a0 e1                                      mov sl, fp
0051ef64  8d ff ff ea                                      b #0x51eda0
0051ef68  0c b0 9c e5                                      ldr fp, [ip, #0xc]
0051ef6c  0c 50 a0 e1                                      mov r5, ip
0051ef70  00 80 96 e5                                      ldr r8, [r6]
0051ef74  10 70 9b e5                                      ldr r7, [fp, #0x10]
0051ef78  0b a0 a0 e1                                      mov sl, fp
0051ef7c  87 ff ff ea                                      b #0x51eda0
0051ef80  02 10 a0 e1                                      mov r1, r2
0051ef84  06 30 a0 e1                                      mov r3, r6
0051ef88  0c 20 a0 e1                                      mov r2, ip
0051ef8c  00 e0 a0 e3                                      mov lr, #0
0051ef90  14 00 8d e2                                      add r0, sp, #0x14
0051ef94  00 50 8d e8                                      stm sp, {ip, lr}
0051ef98  cd fe ff eb                                      bl #0x51ead4
0051ef9c  14 30 9d e5                                      ldr r3, [sp, #0x14]
0051efa0  01 20 a0 e3                                      mov r2, #1
0051efa4  04 20 c4 e5                                      strb r2, [r4, #4]
0051efa8  00 30 84 e5                                      str r3, [r4]
0051efac  9a ff ff ea                                      b #0x51ee1c
0051efb0  03 b0 a0 e1                                      mov fp, r3
0051efb4  b7 ff ff ea                                      b #0x51ee98

; FUNCTION 0x0051efb8, declared_size=2192, range_size=2192, mode=arm
; class-group: std::priv::_Rb_tree<CompPos, std::less<CompPos>, std::pair<CompPos const, PFGInnerNode*>, std::priv::_Select1st<std::pair<CompPos const, PFGInnerNode*> >, std::priv::_MapTraitsT<std::pair<CompPos const, PFGInnerNode*> >, std::allocator<std::pair<CompPos const, PFGInnerNode*> > >
; alias: _ZNSt4priv8_Rb_treeI7CompPosSt4lessIS1_ESt4pairIKS1_P12PFGInnerNodeENS_10_Select1stIS8_EENS_11_MapTraitsTIS8_EESaIS8_EE13insert_uniqueENS_17_Rb_tree_iteratorIS8_SC_EERKS8_
; demangled: std::priv::_Rb_tree<CompPos, std::less<CompPos>, std::pair<CompPos const, PFGInnerNode*>, std::priv::_Select1st<std::pair<CompPos const, PFGInnerNode*> >, std::priv::_MapTraitsT<std::pair<CompPos const, PFGInnerNode*> >, std::allocator<std::pair<CompPos const, PFGInnerNode*> > >::insert_unique(std::priv::_Rb_tree_iterator<std::pair<CompPos const, PFGInnerNode*>, std::priv::_MapTraitsT<std::pair<CompPos const, PFGInnerNode*> > >, std::pair<CompPos const, PFGInnerNode*> const&)
; decoder-mode: arm
0051efb8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0051efbc  00 50 92 e5                                      ldr r5, [r2]
0051efc0  08 20 91 e5                                      ldr r2, [r1, #8]
0051efc4  3c d0 4d e2                                      sub sp, sp, #0x3c
0051efc8  01 60 a0 e1                                      mov r6, r1
0051efcc  02 00 55 e1                                      cmp r5, r2
0051efd0  00 70 a0 e1                                      mov r7, r0
0051efd4  03 80 a0 e1                                      mov r8, r3
0051efd8  e6 00 00 0a                                      beq #0x51f378
0051efdc  01 00 55 e1                                      cmp r5, r1
0051efe0  57 01 00 0a                                      beq #0x51f544
0051efe4  00 30 d5 e5                                      ldrb r3, [r5]
0051efe8  00 00 53 e3                                      cmp r3, #0
0051efec  b4 00 00 0a                                      beq #0x51f2c4
0051eff0  08 40 95 e5                                      ldr r4, [r5, #8]
0051eff4  00 00 54 e3                                      cmp r4, #0
0051eff8  01 00 00 1a                                      bne #0x51f004
0051effc  b8 00 00 ea                                      b #0x51f2e4
0051f000  03 40 a0 e1                                      mov r4, r3
0051f004  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0051f008  00 00 53 e3                                      cmp r3, #0
0051f00c  fb ff ff 1a                                      bne #0x51f000
0051f010  00 a0 98 e5                                      ldr sl, [r8]
0051f014  10 90 95 e5                                      ldr sb, [r5, #0x10]
0051f018  0a 00 a0 e1                                      mov r0, sl
0051f01c  09 10 a0 e1                                      mov r1, sb
0051f020  e1 bc f7 eb                                      bl #0x30e3ac
0051f024  17 17 0b e3                                      movw r1, #0xb717
0051f028  02 01 c0 e3                                      bic r0, r0, #0x80000000
0051f02c  d1 18 43 e3                                      movt r1, #0x38d1
0051f030  b5 bd f7 eb                                      bl #0x30e70c
0051f034  00 00 50 e3                                      cmp r0, #0
0051f038  44 00 00 0a                                      beq #0x51f150
0051f03c  14 30 95 e5                                      ldr r3, [r5, #0x14]
0051f040  04 b0 98 e5                                      ldr fp, [r8, #4]
0051f044  03 10 a0 e1                                      mov r1, r3
0051f048  0b 00 a0 e1                                      mov r0, fp
0051f04c  0c 30 8d e5                                      str r3, [sp, #0xc]
0051f050  d5 bc f7 eb                                      bl #0x30e3ac
0051f054  17 17 0b e3                                      movw r1, #0xb717
0051f058  02 01 c0 e3                                      bic r0, r0, #0x80000000
0051f05c  d1 18 43 e3                                      movt r1, #0x38d1
0051f060  a9 bd f7 eb                                      bl #0x30e70c
0051f064  00 00 50 e3                                      cmp r0, #0
0051f068  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0051f06c  b0 00 00 0a                                      beq #0x51f334
0051f070  08 00 98 e5                                      ldr r0, [r8, #8]
0051f074  18 10 95 e5                                      ldr r1, [r5, #0x18]
0051f078  a3 bd f7 eb                                      bl #0x30e70c
0051f07c  00 00 50 e3                                      cmp r0, #0
0051f080  00 b0 a0 e3                                      mov fp, #0
0051f084  37 00 00 1a                                      bne #0x51f168
0051f088  7b b0 ef e6                                      uxtb fp, fp
0051f08c  00 00 5b e3                                      cmp fp, #0
0051f090  38 00 00 0a                                      beq #0x51f178
0051f094  10 30 94 e5                                      ldr r3, [r4, #0x10]
0051f098  0a 10 a0 e1                                      mov r1, sl
0051f09c  03 00 a0 e1                                      mov r0, r3
0051f0a0  0c 30 8d e5                                      str r3, [sp, #0xc]
0051f0a4  c0 bc f7 eb                                      bl #0x30e3ac
0051f0a8  17 17 0b e3                                      movw r1, #0xb717
0051f0ac  02 01 c0 e3                                      bic r0, r0, #0x80000000
0051f0b0  d1 18 43 e3                                      movt r1, #0x38d1
0051f0b4  94 bd f7 eb                                      bl #0x30e70c
0051f0b8  00 00 50 e3                                      cmp r0, #0
0051f0bc  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0051f0c0  93 00 00 0a                                      beq #0x51f314
0051f0c4  14 30 94 e5                                      ldr r3, [r4, #0x14]
0051f0c8  04 20 98 e5                                      ldr r2, [r8, #4]
0051f0cc  03 00 a0 e1                                      mov r0, r3
0051f0d0  02 10 a0 e1                                      mov r1, r2
0051f0d4  10 20 8d e5                                      str r2, [sp, #0x10]
0051f0d8  0c 30 8d e5                                      str r3, [sp, #0xc]
0051f0dc  b2 bc f7 eb                                      bl #0x30e3ac
0051f0e0  17 17 0b e3                                      movw r1, #0xb717
0051f0e4  02 01 c0 e3                                      bic r0, r0, #0x80000000
0051f0e8  d1 18 43 e3                                      movt r1, #0x38d1
0051f0ec  86 bd f7 eb                                      bl #0x30e70c
0051f0f0  00 00 50 e3                                      cmp r0, #0
0051f0f4  10 20 9d e5                                      ldr r2, [sp, #0x10]
0051f0f8  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0051f0fc  4a 01 00 0a                                      beq #0x51f62c
0051f100  18 00 94 e5                                      ldr r0, [r4, #0x18]
0051f104  08 10 98 e5                                      ldr r1, [r8, #8]
0051f108  7f bd f7 eb                                      bl #0x30e70c
0051f10c  00 00 50 e3                                      cmp r0, #0
0051f110  00 30 a0 e3                                      mov r3, #0
0051f114  84 00 00 1a                                      bne #0x51f32c
0051f118  73 30 ef e6                                      uxtb r3, r3
0051f11c  00 00 53 e3                                      cmp r3, #0
0051f120  14 00 00 0a                                      beq #0x51f178
0051f124  0c c0 94 e5                                      ldr ip, [r4, #0xc]
0051f128  00 00 5c e3                                      cmp ip, #0
0051f12c  62 01 00 0a                                      beq #0x51f6bc
0051f130  00 c0 a0 e3                                      mov ip, #0
0051f134  06 10 a0 e1                                      mov r1, r6
0051f138  05 20 a0 e1                                      mov r2, r5
0051f13c  08 30 a0 e1                                      mov r3, r8
0051f140  07 00 a0 e1                                      mov r0, r7
0051f144  20 10 8d e8                                      stm sp, {r5, ip}
0051f148  61 fe ff eb                                      bl #0x51ead4
0051f14c  86 00 00 ea                                      b #0x51f36c
0051f150  0a 00 a0 e1                                      mov r0, sl
0051f154  09 10 a0 e1                                      mov r1, sb
0051f158  6b bd f7 eb                                      bl #0x30e70c
0051f15c  00 00 50 e3                                      cmp r0, #0
0051f160  00 b0 a0 e3                                      mov fp, #0
0051f164  c7 ff ff 0a                                      beq #0x51f088
0051f168  01 b0 a0 e3                                      mov fp, #1
0051f16c  7b b0 ef e6                                      uxtb fp, fp
0051f170  00 00 5b e3                                      cmp fp, #0
0051f174  c6 ff ff 1a                                      bne #0x51f094
0051f178  0c 30 95 e5                                      ldr r3, [r5, #0xc]
0051f17c  00 00 53 e3                                      cmp r3, #0
0051f180  14 30 8d e5                                      str r3, [sp, #0x14]
0051f184  3e 01 00 0a                                      beq #0x51f684
0051f188  03 40 a0 e1                                      mov r4, r3
0051f18c  08 30 93 e5                                      ldr r3, [r3, #8]
0051f190  00 00 53 e3                                      cmp r3, #0
0051f194  fb ff ff 1a                                      bne #0x51f188
0051f198  00 00 5b e3                                      cmp fp, #0
0051f19c  6c 00 00 1a                                      bne #0x51f354
0051f1a0  0a 10 a0 e1                                      mov r1, sl
0051f1a4  09 00 a0 e1                                      mov r0, sb
0051f1a8  7f bc f7 eb                                      bl #0x30e3ac
0051f1ac  17 17 0b e3                                      movw r1, #0xb717
0051f1b0  02 01 c0 e3                                      bic r0, r0, #0x80000000
0051f1b4  d1 18 43 e3                                      movt r1, #0x38d1
0051f1b8  53 bd f7 eb                                      bl #0x30e70c
0051f1bc  00 00 50 e3                                      cmp r0, #0
0051f1c0  10 01 00 0a                                      beq #0x51f608
0051f1c4  04 30 98 e5                                      ldr r3, [r8, #4]
0051f1c8  14 90 95 e5                                      ldr sb, [r5, #0x14]
0051f1cc  03 10 a0 e1                                      mov r1, r3
0051f1d0  09 00 a0 e1                                      mov r0, sb
0051f1d4  0c 30 8d e5                                      str r3, [sp, #0xc]
0051f1d8  73 bc f7 eb                                      bl #0x30e3ac
0051f1dc  17 17 0b e3                                      movw r1, #0xb717
0051f1e0  02 01 c0 e3                                      bic r0, r0, #0x80000000
0051f1e4  d1 18 43 e3                                      movt r1, #0x38d1
0051f1e8  47 bd f7 eb                                      bl #0x30e70c
0051f1ec  00 00 50 e3                                      cmp r0, #0
0051f1f0  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0051f1f4  3f 01 00 0a                                      beq #0x51f6f8
0051f1f8  18 00 95 e5                                      ldr r0, [r5, #0x18]
0051f1fc  08 10 98 e5                                      ldr r1, [r8, #8]
0051f200  41 bd f7 eb                                      bl #0x30e70c
0051f204  00 00 50 e3                                      cmp r0, #0
0051f208  03 01 00 1a                                      bne #0x51f61c
0051f20c  7b 30 ef e6                                      uxtb r3, fp
0051f210  00 00 53 e3                                      cmp r3, #0
0051f214  02 01 00 0a                                      beq #0x51f624
0051f218  04 00 56 e1                                      cmp r6, r4
0051f21c  1d 00 00 0a                                      beq #0x51f298
0051f220  10 90 94 e5                                      ldr sb, [r4, #0x10]
0051f224  0a 00 a0 e1                                      mov r0, sl
0051f228  09 10 a0 e1                                      mov r1, sb
0051f22c  5e bc f7 eb                                      bl #0x30e3ac
0051f230  17 17 0b e3                                      movw r1, #0xb717
0051f234  02 01 c0 e3                                      bic r0, r0, #0x80000000
0051f238  d1 18 43 e3                                      movt r1, #0x38d1
0051f23c  32 bd f7 eb                                      bl #0x30e70c
0051f240  00 00 50 e3                                      cmp r0, #0
0051f244  31 01 00 0a                                      beq #0x51f710
0051f248  04 90 98 e5                                      ldr sb, [r8, #4]
0051f24c  14 a0 94 e5                                      ldr sl, [r4, #0x14]
0051f250  09 00 a0 e1                                      mov r0, sb
0051f254  0a 10 a0 e1                                      mov r1, sl
0051f258  53 bc f7 eb                                      bl #0x30e3ac
0051f25c  17 17 0b e3                                      movw r1, #0xb717
0051f260  02 01 c0 e3                                      bic r0, r0, #0x80000000
0051f264  d1 18 43 e3                                      movt r1, #0x38d1
0051f268  27 bd f7 eb                                      bl #0x30e70c
0051f26c  00 00 50 e3                                      cmp r0, #0
0051f270  51 01 00 0a                                      beq #0x51f7bc
0051f274  08 00 98 e5                                      ldr r0, [r8, #8]
0051f278  18 10 94 e5                                      ldr r1, [r4, #0x18]
0051f27c  22 bd f7 eb                                      bl #0x30e70c
0051f280  00 00 50 e3                                      cmp r0, #0
0051f284  00 30 a0 e3                                      mov r3, #0
0051f288  26 01 00 1a                                      bne #0x51f728
0051f28c  73 30 ef e6                                      uxtb r3, r3
0051f290  00 00 53 e3                                      cmp r3, #0
0051f294  2e 00 00 0a                                      beq #0x51f354
0051f298  14 c0 9d e5                                      ldr ip, [sp, #0x14]
0051f29c  00 00 5c e3                                      cmp ip, #0
0051f2a0  37 01 00 0a                                      beq #0x51f784
0051f2a4  00 c0 a0 e3                                      mov ip, #0
0051f2a8  06 10 a0 e1                                      mov r1, r6
0051f2ac  04 20 a0 e1                                      mov r2, r4
0051f2b0  08 30 a0 e1                                      mov r3, r8
0051f2b4  07 00 a0 e1                                      mov r0, r7
0051f2b8  10 10 8d e8                                      stm sp, {r4, ip}
0051f2bc  04 fe ff eb                                      bl #0x51ead4
0051f2c0  29 00 00 ea                                      b #0x51f36c
0051f2c4  04 30 95 e5                                      ldr r3, [r5, #4]
0051f2c8  04 30 93 e5                                      ldr r3, [r3, #4]
0051f2cc  03 00 55 e1                                      cmp r5, r3
0051f2d0  0c 40 95 05                                      ldreq r4, [r5, #0xc]
0051f2d4  4d ff ff 0a                                      beq #0x51f010
0051f2d8  08 40 95 e5                                      ldr r4, [r5, #8]
0051f2dc  00 00 54 e3                                      cmp r4, #0
0051f2e0  47 ff ff 1a                                      bne #0x51f004
0051f2e4  04 40 95 e5                                      ldr r4, [r5, #4]
0051f2e8  08 30 94 e5                                      ldr r3, [r4, #8]
0051f2ec  03 00 55 e1                                      cmp r5, r3
0051f2f0  01 00 00 0a                                      beq #0x51f2fc
0051f2f4  45 ff ff ea                                      b #0x51f010
0051f2f8  03 40 a0 e1                                      mov r4, r3
0051f2fc  04 30 94 e5                                      ldr r3, [r4, #4]
0051f300  08 20 93 e5                                      ldr r2, [r3, #8]
0051f304  04 00 52 e1                                      cmp r2, r4
0051f308  fa ff ff 0a                                      beq #0x51f2f8
0051f30c  03 40 a0 e1                                      mov r4, r3
0051f310  3e ff ff ea                                      b #0x51f010
0051f314  03 10 a0 e1                                      mov r1, r3
0051f318  0a 00 a0 e1                                      mov r0, sl
0051f31c  f5 bb f7 eb                                      bl #0x30e2f8
0051f320  00 00 50 e3                                      cmp r0, #0
0051f324  00 30 a0 e3                                      mov r3, #0
0051f328  7a ff ff 0a                                      beq #0x51f118
0051f32c  01 30 a0 e3                                      mov r3, #1
0051f330  78 ff ff ea                                      b #0x51f118
0051f334  0b 00 a0 e1                                      mov r0, fp
0051f338  03 10 a0 e1                                      mov r1, r3
0051f33c  f2 bc f7 eb                                      bl #0x30e70c
0051f340  00 00 50 e3                                      cmp r0, #0
0051f344  00 b0 a0 e3                                      mov fp, #0
0051f348  4e ff ff 0a                                      beq #0x51f088
0051f34c  01 b0 a0 e3                                      mov fp, #1
0051f350  85 ff ff ea                                      b #0x51f16c
0051f354  06 10 a0 e1                                      mov r1, r6
0051f358  08 20 a0 e1                                      mov r2, r8
0051f35c  18 00 8d e2                                      add r0, sp, #0x18
0051f360  50 fe ff eb                                      bl #0x51eca8
0051f364  18 30 9d e5                                      ldr r3, [sp, #0x18]
0051f368  00 30 87 e5                                      str r3, [r7]
0051f36c  07 00 a0 e1                                      mov r0, r7
0051f370  3c d0 8d e2                                      add sp, sp, #0x3c
0051f374  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0051f378  10 30 91 e5                                      ldr r3, [r1, #0x10]
0051f37c  00 00 53 e3                                      cmp r3, #0
0051f380  f9 00 00 0a                                      beq #0x51f76c
0051f384  00 90 98 e5                                      ldr sb, [r8]
0051f388  10 40 95 e5                                      ldr r4, [r5, #0x10]
0051f38c  09 00 a0 e1                                      mov r0, sb
0051f390  04 10 a0 e1                                      mov r1, r4
0051f394  04 bc f7 eb                                      bl #0x30e3ac
0051f398  17 17 0b e3                                      movw r1, #0xb717
0051f39c  02 01 c0 e3                                      bic r0, r0, #0x80000000
0051f3a0  d1 18 43 e3                                      movt r1, #0x38d1
0051f3a4  d8 bc f7 eb                                      bl #0x30e70c
0051f3a8  00 00 50 e3                                      cmp r0, #0
0051f3ac  ac 00 00 0a                                      beq #0x51f664
0051f3b0  04 b0 98 e5                                      ldr fp, [r8, #4]
0051f3b4  14 a0 95 e5                                      ldr sl, [r5, #0x14]
0051f3b8  0b 00 a0 e1                                      mov r0, fp
0051f3bc  0a 10 a0 e1                                      mov r1, sl
0051f3c0  f9 bb f7 eb                                      bl #0x30e3ac
0051f3c4  17 17 0b e3                                      movw r1, #0xb717
0051f3c8  02 01 c0 e3                                      bic r0, r0, #0x80000000
0051f3cc  d1 18 43 e3                                      movt r1, #0x38d1
0051f3d0  cd bc f7 eb                                      bl #0x30e70c
0051f3d4  00 00 50 e3                                      cmp r0, #0
0051f3d8  d4 00 00 0a                                      beq #0x51f730
0051f3dc  08 00 98 e5                                      ldr r0, [r8, #8]
0051f3e0  18 10 95 e5                                      ldr r1, [r5, #0x18]
0051f3e4  c8 bc f7 eb                                      bl #0x30e70c
0051f3e8  00 00 50 e3                                      cmp r0, #0
0051f3ec  00 a0 a0 e3                                      mov sl, #0
0051f3f0  a1 00 00 1a                                      bne #0x51f67c
0051f3f4  7a a0 ef e6                                      uxtb sl, sl
0051f3f8  00 00 5a e3                                      cmp sl, #0
0051f3fc  4b ff ff 1a                                      bne #0x51f130
0051f400  09 10 a0 e1                                      mov r1, sb
0051f404  04 00 a0 e1                                      mov r0, r4
0051f408  e7 bb f7 eb                                      bl #0x30e3ac
0051f40c  17 17 0b e3                                      movw r1, #0xb717
0051f410  02 01 c0 e3                                      bic r0, r0, #0x80000000
0051f414  d1 18 43 e3                                      movt r1, #0x38d1
0051f418  bb bc f7 eb                                      bl #0x30e70c
0051f41c  00 00 50 e3                                      cmp r0, #0
0051f420  ad 00 00 0a                                      beq #0x51f6dc
0051f424  14 b0 95 e5                                      ldr fp, [r5, #0x14]
0051f428  04 40 98 e5                                      ldr r4, [r8, #4]
0051f42c  0b 00 a0 e1                                      mov r0, fp
0051f430  04 10 a0 e1                                      mov r1, r4
0051f434  dc bb f7 eb                                      bl #0x30e3ac
0051f438  17 17 0b e3                                      movw r1, #0xb717
0051f43c  02 01 c0 e3                                      bic r0, r0, #0x80000000
0051f440  d1 18 43 e3                                      movt r1, #0x38d1
0051f444  b0 bc f7 eb                                      bl #0x30e70c
0051f448  00 00 50 e3                                      cmp r0, #0
0051f44c  d4 00 00 0a                                      beq #0x51f7a4
0051f450  18 00 95 e5                                      ldr r0, [r5, #0x18]
0051f454  08 10 98 e5                                      ldr r1, [r8, #8]
0051f458  ab bc f7 eb                                      bl #0x30e70c
0051f45c  00 00 50 e3                                      cmp r0, #0
0051f460  a2 00 00 1a                                      bne #0x51f6f0
0051f464  7a 30 ef e6                                      uxtb r3, sl
0051f468  00 00 53 e3                                      cmp r3, #0
0051f46c  6c 00 00 0a                                      beq #0x51f624
0051f470  0c a0 95 e5                                      ldr sl, [r5, #0xc]
0051f474  00 00 5a e3                                      cmp sl, #0
0051f478  e4 00 00 0a                                      beq #0x51f810
0051f47c  0a 40 a0 e1                                      mov r4, sl
0051f480  00 00 00 ea                                      b #0x51f488
0051f484  03 40 a0 e1                                      mov r4, r3
0051f488  08 30 94 e5                                      ldr r3, [r4, #8]
0051f48c  00 00 53 e3                                      cmp r3, #0
0051f490  fb ff ff 1a                                      bne #0x51f484
0051f494  04 00 56 e1                                      cmp r6, r4
0051f498  06 10 a0 01                                      moveq r1, r6
0051f49c  05 20 a0 01                                      moveq r2, r5
0051f4a0  49 00 00 0a                                      beq #0x51f5cc
0051f4a4  10 b0 94 e5                                      ldr fp, [r4, #0x10]
0051f4a8  09 00 a0 e1                                      mov r0, sb
0051f4ac  0b 10 a0 e1                                      mov r1, fp
0051f4b0  bd bb f7 eb                                      bl #0x30e3ac
0051f4b4  17 17 0b e3                                      movw r1, #0xb717
0051f4b8  02 01 c0 e3                                      bic r0, r0, #0x80000000
0051f4bc  d1 18 43 e3                                      movt r1, #0x38d1
0051f4c0  91 bc f7 eb                                      bl #0x30e70c
0051f4c4  00 00 50 e3                                      cmp r0, #0
0051f4c8  9f 00 00 0a                                      beq #0x51f74c
0051f4cc  04 b0 98 e5                                      ldr fp, [r8, #4]
0051f4d0  14 90 94 e5                                      ldr sb, [r4, #0x14]
0051f4d4  0b 00 a0 e1                                      mov r0, fp
0051f4d8  09 10 a0 e1                                      mov r1, sb
0051f4dc  b2 bb f7 eb                                      bl #0x30e3ac
0051f4e0  17 17 0b e3                                      movw r1, #0xb717
0051f4e4  02 01 c0 e3                                      bic r0, r0, #0x80000000
0051f4e8  d1 18 43 e3                                      movt r1, #0x38d1
0051f4ec  86 bc f7 eb                                      bl #0x30e70c
0051f4f0  00 00 50 e3                                      cmp r0, #0
0051f4f4  b7 00 00 0a                                      beq #0x51f7d8
0051f4f8  08 00 98 e5                                      ldr r0, [r8, #8]
0051f4fc  18 10 94 e5                                      ldr r1, [r4, #0x18]
0051f500  81 bc f7 eb                                      bl #0x30e70c
0051f504  00 00 50 e3                                      cmp r0, #0
0051f508  00 30 a0 e3                                      mov r3, #0
0051f50c  94 00 00 1a                                      bne #0x51f764
0051f510  73 30 ef e6                                      uxtb r3, r3
0051f514  00 00 53 e3                                      cmp r3, #0
0051f518  b5 00 00 0a                                      beq #0x51f7f4
0051f51c  00 00 5a e3                                      cmp sl, #0
0051f520  5f ff ff 1a                                      bne #0x51f2a4
0051f524  06 10 a0 e1                                      mov r1, r6
0051f528  05 20 a0 e1                                      mov r2, r5
0051f52c  08 30 a0 e1                                      mov r3, r8
0051f530  07 00 a0 e1                                      mov r0, r7
0051f534  00 a0 8d e5                                      str sl, [sp]
0051f538  04 50 8d e5                                      str r5, [sp, #4]
0051f53c  64 fd ff eb                                      bl #0x51ead4
0051f540  89 ff ff ea                                      b #0x51f36c
0051f544  0c 40 95 e5                                      ldr r4, [r5, #0xc]
0051f548  00 a0 93 e5                                      ldr sl, [r3]
0051f54c  10 90 94 e5                                      ldr sb, [r4, #0x10]
0051f550  0a 10 a0 e1                                      mov r1, sl
0051f554  09 00 a0 e1                                      mov r0, sb
0051f558  93 bb f7 eb                                      bl #0x30e3ac
0051f55c  17 17 0b e3                                      movw r1, #0xb717
0051f560  02 01 c0 e3                                      bic r0, r0, #0x80000000
0051f564  d1 18 43 e3                                      movt r1, #0x38d1
0051f568  67 bc f7 eb                                      bl #0x30e70c
0051f56c  00 00 50 e3                                      cmp r0, #0
0051f570  1c 00 00 0a                                      beq #0x51f5e8
0051f574  14 90 94 e5                                      ldr sb, [r4, #0x14]
0051f578  04 a0 98 e5                                      ldr sl, [r8, #4]
0051f57c  09 00 a0 e1                                      mov r0, sb
0051f580  0a 10 a0 e1                                      mov r1, sl
0051f584  88 bb f7 eb                                      bl #0x30e3ac
0051f588  17 17 0b e3                                      movw r1, #0xb717
0051f58c  02 01 c0 e3                                      bic r0, r0, #0x80000000
0051f590  d1 18 43 e3                                      movt r1, #0x38d1
0051f594  5c bc f7 eb                                      bl #0x30e70c
0051f598  00 00 50 e3                                      cmp r0, #0
0051f59c  11 00 00 0a                                      beq #0x51f5e8
0051f5a0  18 00 94 e5                                      ldr r0, [r4, #0x18]
0051f5a4  08 10 98 e5                                      ldr r1, [r8, #8]
0051f5a8  57 bc f7 eb                                      bl #0x30e70c
0051f5ac  00 00 50 e3                                      cmp r0, #0
0051f5b0  00 30 a0 e3                                      mov r3, #0
0051f5b4  11 00 00 1a                                      bne #0x51f600
0051f5b8  73 30 ef e6                                      uxtb r3, r3
0051f5bc  00 00 53 e3                                      cmp r3, #0
0051f5c0  20 00 00 0a                                      beq #0x51f648
0051f5c4  06 10 a0 e1                                      mov r1, r6
0051f5c8  04 20 a0 e1                                      mov r2, r4
0051f5cc  00 c0 a0 e3                                      mov ip, #0
0051f5d0  08 30 a0 e1                                      mov r3, r8
0051f5d4  07 00 a0 e1                                      mov r0, r7
0051f5d8  00 c0 8d e5                                      str ip, [sp]
0051f5dc  04 50 8d e5                                      str r5, [sp, #4]
0051f5e0  3b fd ff eb                                      bl #0x51ead4
0051f5e4  60 ff ff ea                                      b #0x51f36c
0051f5e8  09 00 a0 e1                                      mov r0, sb
0051f5ec  0a 10 a0 e1                                      mov r1, sl
0051f5f0  45 bc f7 eb                                      bl #0x30e70c
0051f5f4  00 00 50 e3                                      cmp r0, #0
0051f5f8  00 30 a0 e3                                      mov r3, #0
0051f5fc  ed ff ff 0a                                      beq #0x51f5b8
0051f600  01 30 a0 e3                                      mov r3, #1
0051f604  eb ff ff ea                                      b #0x51f5b8
0051f608  09 10 a0 e1                                      mov r1, sb
0051f60c  0a 00 a0 e1                                      mov r0, sl
0051f610  38 bb f7 eb                                      bl #0x30e2f8
0051f614  00 00 50 e3                                      cmp r0, #0
0051f618  fb fe ff 0a                                      beq #0x51f20c
0051f61c  01 b0 a0 e3                                      mov fp, #1
0051f620  f9 fe ff ea                                      b #0x51f20c
0051f624  00 50 87 e5                                      str r5, [r7]
0051f628  4f ff ff ea                                      b #0x51f36c
0051f62c  03 00 a0 e1                                      mov r0, r3
0051f630  02 10 a0 e1                                      mov r1, r2
0051f634  34 bc f7 eb                                      bl #0x30e70c
0051f638  00 00 50 e3                                      cmp r0, #0
0051f63c  00 30 a0 e3                                      mov r3, #0
0051f640  01 30 a0 13                                      movne r3, #1
0051f644  b3 fe ff ea                                      b #0x51f118
0051f648  06 10 a0 e1                                      mov r1, r6
0051f64c  08 20 a0 e1                                      mov r2, r8
0051f650  20 00 8d e2                                      add r0, sp, #0x20
0051f654  93 fd ff eb                                      bl #0x51eca8
0051f658  20 30 9d e5                                      ldr r3, [sp, #0x20]
0051f65c  00 30 87 e5                                      str r3, [r7]
0051f660  41 ff ff ea                                      b #0x51f36c
0051f664  09 00 a0 e1                                      mov r0, sb
0051f668  04 10 a0 e1                                      mov r1, r4
0051f66c  26 bc f7 eb                                      bl #0x30e70c
0051f670  00 00 50 e3                                      cmp r0, #0
0051f674  00 a0 a0 e3                                      mov sl, #0
0051f678  5d ff ff 0a                                      beq #0x51f3f4
0051f67c  01 a0 a0 e3                                      mov sl, #1
0051f680  5b ff ff ea                                      b #0x51f3f4
0051f684  04 30 95 e5                                      ldr r3, [r5, #4]
0051f688  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0051f68c  02 00 55 e1                                      cmp r5, r2
0051f690  05 40 a0 11                                      movne r4, r5
0051f694  04 00 00 1a                                      bne #0x51f6ac
0051f698  03 40 a0 e1                                      mov r4, r3
0051f69c  04 30 93 e5                                      ldr r3, [r3, #4]
0051f6a0  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0051f6a4  02 00 54 e1                                      cmp r4, r2
0051f6a8  fa ff ff 0a                                      beq #0x51f698
0051f6ac  0c 20 94 e5                                      ldr r2, [r4, #0xc]
0051f6b0  02 00 53 e1                                      cmp r3, r2
0051f6b4  03 40 a0 11                                      movne r4, r3
0051f6b8  b6 fe ff ea                                      b #0x51f198
0051f6bc  06 10 a0 e1                                      mov r1, r6
0051f6c0  04 20 a0 e1                                      mov r2, r4
0051f6c4  08 30 a0 e1                                      mov r3, r8
0051f6c8  07 00 a0 e1                                      mov r0, r7
0051f6cc  00 c0 8d e5                                      str ip, [sp]
0051f6d0  04 40 8d e5                                      str r4, [sp, #4]
0051f6d4  fe fc ff eb                                      bl #0x51ead4
0051f6d8  23 ff ff ea                                      b #0x51f36c
0051f6dc  04 10 a0 e1                                      mov r1, r4
0051f6e0  09 00 a0 e1                                      mov r0, sb
0051f6e4  03 bb f7 eb                                      bl #0x30e2f8
0051f6e8  00 00 50 e3                                      cmp r0, #0
0051f6ec  5c ff ff 0a                                      beq #0x51f464
0051f6f0  01 a0 a0 e3                                      mov sl, #1
0051f6f4  5a ff ff ea                                      b #0x51f464
0051f6f8  09 00 a0 e1                                      mov r0, sb
0051f6fc  03 10 a0 e1                                      mov r1, r3
0051f700  01 bc f7 eb                                      bl #0x30e70c
0051f704  00 00 50 e3                                      cmp r0, #0
0051f708  01 b0 a0 13                                      movne fp, #1
0051f70c  be fe ff ea                                      b #0x51f20c
0051f710  0a 00 a0 e1                                      mov r0, sl
0051f714  09 10 a0 e1                                      mov r1, sb
0051f718  fb bb f7 eb                                      bl #0x30e70c
0051f71c  00 00 50 e3                                      cmp r0, #0
0051f720  00 30 a0 e3                                      mov r3, #0
0051f724  d8 fe ff 0a                                      beq #0x51f28c
0051f728  01 30 a0 e3                                      mov r3, #1
0051f72c  d6 fe ff ea                                      b #0x51f28c
0051f730  0a 10 a0 e1                                      mov r1, sl
0051f734  0b 00 a0 e1                                      mov r0, fp
0051f738  f3 bb f7 eb                                      bl #0x30e70c
0051f73c  00 00 50 e3                                      cmp r0, #0
0051f740  00 a0 a0 e3                                      mov sl, #0
0051f744  01 a0 a0 13                                      movne sl, #1
0051f748  29 ff ff ea                                      b #0x51f3f4
0051f74c  09 00 a0 e1                                      mov r0, sb
0051f750  0b 10 a0 e1                                      mov r1, fp
0051f754  ec bb f7 eb                                      bl #0x30e70c
0051f758  00 00 50 e3                                      cmp r0, #0
0051f75c  00 30 a0 e3                                      mov r3, #0
0051f760  6a ff ff 0a                                      beq #0x51f510
0051f764  01 30 a0 e3                                      mov r3, #1
0051f768  68 ff ff ea                                      b #0x51f510
0051f76c  08 20 a0 e1                                      mov r2, r8
0051f770  30 00 8d e2                                      add r0, sp, #0x30
0051f774  4b fd ff eb                                      bl #0x51eca8
0051f778  30 30 9d e5                                      ldr r3, [sp, #0x30]
0051f77c  00 30 87 e5                                      str r3, [r7]
0051f780  f9 fe ff ea                                      b #0x51f36c
0051f784  06 10 a0 e1                                      mov r1, r6
0051f788  05 20 a0 e1                                      mov r2, r5
0051f78c  08 30 a0 e1                                      mov r3, r8
0051f790  07 00 a0 e1                                      mov r0, r7
0051f794  00 c0 8d e5                                      str ip, [sp]
0051f798  04 50 8d e5                                      str r5, [sp, #4]
0051f79c  cc fc ff eb                                      bl #0x51ead4
0051f7a0  f1 fe ff ea                                      b #0x51f36c
0051f7a4  0b 00 a0 e1                                      mov r0, fp
0051f7a8  04 10 a0 e1                                      mov r1, r4
0051f7ac  d6 bb f7 eb                                      bl #0x30e70c
0051f7b0  00 00 50 e3                                      cmp r0, #0
0051f7b4  01 a0 a0 13                                      movne sl, #1
0051f7b8  29 ff ff ea                                      b #0x51f464
0051f7bc  09 00 a0 e1                                      mov r0, sb
0051f7c0  0a 10 a0 e1                                      mov r1, sl
0051f7c4  d0 bb f7 eb                                      bl #0x30e70c
0051f7c8  00 00 50 e3                                      cmp r0, #0
0051f7cc  00 30 a0 e3                                      mov r3, #0
0051f7d0  01 30 a0 13                                      movne r3, #1
0051f7d4  ac fe ff ea                                      b #0x51f28c
0051f7d8  0b 00 a0 e1                                      mov r0, fp
0051f7dc  09 10 a0 e1                                      mov r1, sb
0051f7e0  c9 bb f7 eb                                      bl #0x30e70c
0051f7e4  00 00 50 e3                                      cmp r0, #0
0051f7e8  00 30 a0 e3                                      mov r3, #0
0051f7ec  01 30 a0 13                                      movne r3, #1
0051f7f0  46 ff ff ea                                      b #0x51f510
0051f7f4  06 10 a0 e1                                      mov r1, r6
0051f7f8  08 20 a0 e1                                      mov r2, r8
0051f7fc  28 00 8d e2                                      add r0, sp, #0x28
0051f800  28 fd ff eb                                      bl #0x51eca8
0051f804  28 30 9d e5                                      ldr r3, [sp, #0x28]
0051f808  00 30 87 e5                                      str r3, [r7]
0051f80c  d6 fe ff ea                                      b #0x51f36c
0051f810  04 30 95 e5                                      ldr r3, [r5, #4]
0051f814  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0051f818  02 00 55 e1                                      cmp r5, r2
0051f81c  05 40 a0 11                                      movne r4, r5
0051f820  04 00 00 1a                                      bne #0x51f838
0051f824  03 40 a0 e1                                      mov r4, r3
0051f828  04 30 93 e5                                      ldr r3, [r3, #4]
0051f82c  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0051f830  02 00 54 e1                                      cmp r4, r2
0051f834  fa ff ff 0a                                      beq #0x51f824
0051f838  0c 20 94 e5                                      ldr r2, [r4, #0xc]
0051f83c  02 00 53 e1                                      cmp r3, r2
0051f840  03 40 a0 11                                      movne r4, r3
0051f844  12 ff ff ea                                      b #0x51f494

; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00344874, declared_size=288, range_size=288, mode=arm
; class-group: std::priv::_Rb_tree<short, std::less<short>, short, std::priv::_Identity<short>, std::priv::_SetTraitsT<short>, std::allocator<short> >
; alias: _ZNSt4priv8_Rb_treeIsSt4lessIsEsNS_9_IdentityIsEENS_11_SetTraitsTIsEESaIsEE9_M_insertEPNS_18_Rb_tree_node_baseERKsSA_SA_.clone.5
; demangled: std::priv::_Rb_tree<short, std::less<short>, short, std::priv::_Identity<short>, std::priv::_SetTraitsT<short>, std::allocator<short> >::_M_insert(std::priv::_Rb_tree_node_base*, short const&, std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*) [clone .clone.5]
; decoder-mode: arm
00344874  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00344878  02 00 51 e1                                      cmp r1, r2
0034487c  0c d0 4d e2                                      sub sp, sp, #0xc
00344880  01 40 a0 e1                                      mov r4, r1
00344884  00 50 a0 e1                                      mov r5, r0
00344888  20 70 9d e5                                      ldr r7, [sp, #0x20]
0034488c  12 00 00 0a                                      beq #0x3448dc
00344890  00 00 57 e3                                      cmp r7, #0
00344894  2a 00 00 0a                                      beq #0x344944
00344898  04 00 a0 e1                                      mov r0, r4
0034489c  04 20 8d e5                                      str r2, [sp, #4]
003448a0  00 30 8d e5                                      str r3, [sp]
003448a4  ea ff ff eb                                      bl #0x344854
003448a8  00 30 9d e5                                      ldr r3, [sp]
003448ac  00 10 a0 e3                                      mov r1, #0
003448b0  00 60 a0 e1                                      mov r6, r0
003448b4  b0 30 d3 e1                                      ldrh r3, [r3]
003448b8  0c 10 80 e5                                      str r1, [r0, #0xc]
003448bc  08 10 80 e5                                      str r1, [r0, #8]
003448c0  b0 31 c0 e1                                      strh r3, [r0, #0x10]
003448c4  04 20 9d e5                                      ldr r2, [sp, #4]
003448c8  08 00 82 e5                                      str r0, [r2, #8]
003448cc  08 30 94 e5                                      ldr r3, [r4, #8]
003448d0  03 00 52 e1                                      cmp r2, r3
003448d4  08 00 84 05                                      streq r0, [r4, #8]
003448d8  0e 00 00 ea                                      b #0x344918
003448dc  01 00 a0 e1                                      mov r0, r1
003448e0  04 20 8d e5                                      str r2, [sp, #4]
003448e4  00 30 8d e5                                      str r3, [sp]
003448e8  d9 ff ff eb                                      bl #0x344854
003448ec  00 30 9d e5                                      ldr r3, [sp]
003448f0  00 10 a0 e3                                      mov r1, #0
003448f4  00 60 a0 e1                                      mov r6, r0
003448f8  b0 30 d3 e1                                      ldrh r3, [r3]
003448fc  0c 10 80 e5                                      str r1, [r0, #0xc]
00344900  08 10 80 e5                                      str r1, [r0, #8]
00344904  b0 31 c0 e1                                      strh r3, [r0, #0x10]
00344908  08 00 84 e5                                      str r0, [r4, #8]
0034490c  04 00 84 e5                                      str r0, [r4, #4]
00344910  0c 00 84 e5                                      str r0, [r4, #0xc]
00344914  04 20 9d e5                                      ldr r2, [sp, #4]
00344918  06 00 a0 e1                                      mov r0, r6
0034491c  04 20 86 e5                                      str r2, [r6, #4]
00344920  04 10 84 e2                                      add r1, r4, #4
00344924  8d 3b ff eb                                      bl #0x313760
00344928  10 30 94 e5                                      ldr r3, [r4, #0x10]
0034492c  05 00 a0 e1                                      mov r0, r5
00344930  01 30 83 e2                                      add r3, r3, #1
00344934  10 30 84 e5                                      str r3, [r4, #0x10]
00344938  00 60 85 e5                                      str r6, [r5]
0034493c  0c d0 8d e2                                      add sp, sp, #0xc
00344940  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00344944  f0 00 d3 e1                                      ldrsh r0, [r3]
00344948  f0 11 d2 e1                                      ldrsh r1, [r2, #0x10]
0034494c  01 00 50 e1                                      cmp r0, r1
00344950  d0 ff ff ba                                      blt #0x344898
00344954  04 00 a0 e1                                      mov r0, r4
00344958  04 20 8d e5                                      str r2, [sp, #4]
0034495c  00 30 8d e5                                      str r3, [sp]
00344960  bb ff ff eb                                      bl #0x344854
00344964  00 30 9d e5                                      ldr r3, [sp]
00344968  00 60 a0 e1                                      mov r6, r0
0034496c  b0 30 d3 e1                                      ldrh r3, [r3]
00344970  0c 70 80 e5                                      str r7, [r0, #0xc]
00344974  08 70 80 e5                                      str r7, [r0, #8]
00344978  b0 31 c0 e1                                      strh r3, [r0, #0x10]
0034497c  04 20 9d e5                                      ldr r2, [sp, #4]
00344980  0c 00 82 e5                                      str r0, [r2, #0xc]
00344984  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00344988  03 00 52 e1                                      cmp r2, r3
0034498c  0c 00 84 05                                      streq r0, [r4, #0xc]
00344990  e0 ff ff ea                                      b #0x344918

; FUNCTION 0x00344994, declared_size=380, range_size=380, mode=arm
; class-group: std::priv::_Rb_tree<short, std::less<short>, short, std::priv::_Identity<short>, std::priv::_SetTraitsT<short>, std::allocator<short> >
; alias: _ZNSt4priv8_Rb_treeIsSt4lessIsEsNS_9_IdentityIsEENS_11_SetTraitsTIsEESaIsEE13insert_uniqueERKs
; demangled: std::priv::_Rb_tree<short, std::less<short>, short, std::priv::_Identity<short>, std::priv::_SetTraitsT<short>, std::allocator<short> >::insert_unique(short const&)
; decoder-mode: arm
00344994  70 40 2d e9                                      push {r4, r5, r6, lr}
00344998  04 c0 91 e5                                      ldr ip, [r1, #4]
0034499c  10 d0 4d e2                                      sub sp, sp, #0x10
003449a0  00 40 a0 e1                                      mov r4, r0
003449a4  00 00 5c e3                                      cmp ip, #0
003449a8  02 30 a0 e1                                      mov r3, r2
003449ac  01 c0 a0 01                                      moveq ip, r1
003449b0  15 00 00 0a                                      beq #0x344a0c
003449b4  f0 60 d2 e1                                      ldrsh r6, [r2]
003449b8  00 00 00 ea                                      b #0x3449c0
003449bc  02 c0 a0 e1                                      mov ip, r2
003449c0  f0 01 dc e1                                      ldrsh r0, [ip, #0x10]
003449c4  01 50 a0 e3                                      mov r5, #1
003449c8  06 00 50 e1                                      cmp r0, r6
003449cc  08 20 9c c5                                      ldrgt r2, [ip, #8]
003449d0  0c 20 9c d5                                      ldrle r2, [ip, #0xc]
003449d4  00 50 a0 d3                                      movle r5, #0
003449d8  00 00 52 e3                                      cmp r2, #0
003449dc  f6 ff ff 1a                                      bne #0x3449bc
003449e0  00 00 55 e3                                      cmp r5, #0
003449e4  0c 20 a0 01                                      moveq r2, ip
003449e8  07 00 00 1a                                      bne #0x344a0c
003449ec  00 00 56 e1                                      cmp r6, r0
003449f0  00 30 a0 d3                                      movle r3, #0
003449f4  00 20 84 d5                                      strle r2, [r4]
003449f8  04 30 c4 d5                                      strble r3, [r4, #4]
003449fc  1c 00 00 ca                                      bgt #0x344a74
00344a00  04 00 a0 e1                                      mov r0, r4
00344a04  10 d0 8d e2                                      add sp, sp, #0x10
00344a08  70 80 bd e8                                      pop {r4, r5, r6, pc}
00344a0c  08 20 91 e5                                      ldr r2, [r1, #8]
00344a10  02 00 5c e1                                      cmp ip, r2
00344a14  34 00 00 0a                                      beq #0x344aec
00344a18  00 20 dc e5                                      ldrb r2, [ip]
00344a1c  00 00 52 e3                                      cmp r2, #0
00344a20  03 00 00 1a                                      bne #0x344a34
00344a24  04 20 9c e5                                      ldr r2, [ip, #4]
00344a28  04 20 92 e5                                      ldr r2, [r2, #4]
00344a2c  02 00 5c e1                                      cmp ip, r2
00344a30  29 00 00 0a                                      beq #0x344adc
00344a34  08 00 9c e5                                      ldr r0, [ip, #8]
00344a38  00 00 50 e3                                      cmp r0, #0
00344a3c  01 00 00 1a                                      bne #0x344a48
00344a40  15 00 00 ea                                      b #0x344a9c
00344a44  02 00 a0 e1                                      mov r0, r2
00344a48  0c 20 90 e5                                      ldr r2, [r0, #0xc]
00344a4c  00 00 52 e3                                      cmp r2, #0
00344a50  fb ff ff 1a                                      bne #0x344a44
00344a54  f0 60 d3 e1                                      ldrsh r6, [r3]
00344a58  00 20 a0 e1                                      mov r2, r0
00344a5c  f0 01 d0 e1                                      ldrsh r0, [r0, #0x10]
00344a60  00 00 56 e1                                      cmp r6, r0
00344a64  00 30 a0 d3                                      movle r3, #0
00344a68  00 20 84 d5                                      strle r2, [r4]
00344a6c  04 30 c4 d5                                      strble r3, [r4, #4]
00344a70  e2 ff ff da                                      ble #0x344a00
00344a74  0c 20 a0 e1                                      mov r2, ip
00344a78  08 00 8d e2                                      add r0, sp, #8
00344a7c  00 c0 a0 e3                                      mov ip, #0
00344a80  00 c0 8d e5                                      str ip, [sp]
00344a84  7a ff ff eb                                      bl #0x344874
00344a88  08 30 9d e5                                      ldr r3, [sp, #8]
00344a8c  01 20 a0 e3                                      mov r2, #1
00344a90  04 20 c4 e5                                      strb r2, [r4, #4]
00344a94  00 30 84 e5                                      str r3, [r4]
00344a98  d8 ff ff ea                                      b #0x344a00
00344a9c  04 50 9c e5                                      ldr r5, [ip, #4]
00344aa0  08 20 95 e5                                      ldr r2, [r5, #8]
00344aa4  02 00 5c e1                                      cmp ip, r2
00344aa8  05 20 a0 11                                      movne r2, r5
00344aac  f0 01 d2 11                                      ldrshne r0, [r2, #0x10]
00344ab0  f0 60 d3 11                                      ldrshne r6, [r3]
00344ab4  01 00 00 0a                                      beq #0x344ac0
00344ab8  cb ff ff ea                                      b #0x3449ec
00344abc  02 50 a0 e1                                      mov r5, r2
00344ac0  04 20 95 e5                                      ldr r2, [r5, #4]
00344ac4  08 00 92 e5                                      ldr r0, [r2, #8]
00344ac8  05 00 50 e1                                      cmp r0, r5
00344acc  fa ff ff 0a                                      beq #0x344abc
00344ad0  f0 01 d2 e1                                      ldrsh r0, [r2, #0x10]
00344ad4  f0 60 d3 e1                                      ldrsh r6, [r3]
00344ad8  c3 ff ff ea                                      b #0x3449ec
00344adc  0c 20 9c e5                                      ldr r2, [ip, #0xc]
00344ae0  f0 60 d3 e1                                      ldrsh r6, [r3]
00344ae4  f0 01 d2 e1                                      ldrsh r0, [r2, #0x10]
00344ae8  bf ff ff ea                                      b #0x3449ec
00344aec  0c 20 a0 e1                                      mov r2, ip
00344af0  0c 00 8d e2                                      add r0, sp, #0xc
00344af4  00 c0 8d e5                                      str ip, [sp]
00344af8  5d ff ff eb                                      bl #0x344874
00344afc  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00344b00  01 20 a0 e3                                      mov r2, #1
00344b04  04 20 c4 e5                                      strb r2, [r4, #4]
00344b08  00 30 84 e5                                      str r3, [r4]
00344b0c  bb ff ff ea                                      b #0x344a00

; FUNCTION 0x00344b10, declared_size=200, range_size=200, mode=arm
; class-group: std::priv::_Rb_tree<short, std::less<short>, short, std::priv::_Identity<short>, std::priv::_SetTraitsT<short>, std::allocator<short> >
; alias: _ZNSt4priv8_Rb_treeIsSt4lessIsEsNS_9_IdentityIsEENS_11_SetTraitsTIsEESaIsEE7_M_copyEPNS_18_Rb_tree_node_baseESA_
; demangled: std::priv::_Rb_tree<short, std::less<short>, short, std::priv::_Identity<short>, std::priv::_SetTraitsT<short>, std::allocator<short> >::_M_copy(std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
00344b10  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00344b14  01 40 a0 e1                                      mov r4, r1
00344b18  02 50 a0 e1                                      mov r5, r2
00344b1c  00 70 a0 e1                                      mov r7, r0
00344b20  4b ff ff eb                                      bl #0x344854
00344b24  b0 21 d4 e1                                      ldrh r2, [r4, #0x10]
00344b28  00 30 a0 e3                                      mov r3, #0
00344b2c  0c 30 80 e5                                      str r3, [r0, #0xc]
00344b30  b0 21 c0 e1                                      strh r2, [r0, #0x10]
00344b34  08 30 80 e5                                      str r3, [r0, #8]
00344b38  00 30 d4 e5                                      ldrb r3, [r4]
00344b3c  04 50 80 e5                                      str r5, [r0, #4]
00344b40  00 a0 a0 e1                                      mov sl, r0
00344b44  00 30 c0 e5                                      strb r3, [r0]
00344b48  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00344b4c  00 00 51 e3                                      cmp r1, #0
00344b50  03 00 00 0a                                      beq #0x344b64
00344b54  07 00 a0 e1                                      mov r0, r7
00344b58  0a 20 a0 e1                                      mov r2, sl
00344b5c  eb ff ff eb                                      bl #0x344b10
00344b60  0c 00 8a e5                                      str r0, [sl, #0xc]
00344b64  08 50 94 e5                                      ldr r5, [r4, #8]
00344b68  00 00 55 e3                                      cmp r5, #0
00344b6c  17 00 00 0a                                      beq #0x344bd0
00344b70  0a 60 a0 e1                                      mov r6, sl
00344b74  00 80 a0 e3                                      mov r8, #0
00344b78  07 00 a0 e1                                      mov r0, r7
00344b7c  34 ff ff eb                                      bl #0x344854
00344b80  b0 31 d5 e1                                      ldrh r3, [r5, #0x10]
00344b84  08 80 80 e5                                      str r8, [r0, #8]
00344b88  0c 80 80 e5                                      str r8, [r0, #0xc]
00344b8c  b0 31 c0 e1                                      strh r3, [r0, #0x10]
00344b90  00 30 d5 e5                                      ldrb r3, [r5]
00344b94  00 40 a0 e1                                      mov r4, r0
00344b98  04 20 a0 e1                                      mov r2, r4
00344b9c  00 30 c4 e5                                      strb r3, [r4]
00344ba0  08 40 86 e5                                      str r4, [r6, #8]
00344ba4  04 60 84 e5                                      str r6, [r4, #4]
00344ba8  0c 30 95 e5                                      ldr r3, [r5, #0xc]
00344bac  07 00 a0 e1                                      mov r0, r7
00344bb0  04 60 a0 e1                                      mov r6, r4
00344bb4  00 10 53 e2                                      subs r1, r3, #0
00344bb8  01 00 00 0a                                      beq #0x344bc4
00344bbc  d3 ff ff eb                                      bl #0x344b10
00344bc0  0c 00 84 e5                                      str r0, [r4, #0xc]
00344bc4  08 50 95 e5                                      ldr r5, [r5, #8]
00344bc8  00 00 55 e3                                      cmp r5, #0
00344bcc  e9 ff ff 1a                                      bne #0x344b78
00344bd0  0a 00 a0 e1                                      mov r0, sl
00344bd4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x00344bd8, declared_size=120, range_size=120, mode=arm
; class-group: std::priv::_Rb_tree<short, std::less<short>, short, std::priv::_Identity<short>, std::priv::_SetTraitsT<short>, std::allocator<short> >
; alias: _ZNSt4priv8_Rb_treeIsSt4lessIsEsNS_9_IdentityIsEENS_11_SetTraitsTIsEESaIsEEC1ERKS8_
; demangled: std::priv::_Rb_tree<short, std::less<short>, short, std::priv::_Identity<short>, std::priv::_SetTraitsT<short>, std::allocator<short> >::_Rb_tree(std::priv::_Rb_tree<short, std::less<short>, short, std::priv::_Identity<short>, std::priv::_SetTraitsT<short>, std::allocator<short> > const&)
; decoder-mode: arm
00344bd8  70 40 2d e9                                      push {r4, r5, r6, lr}
00344bdc  00 30 a0 e3                                      mov r3, #0
00344be0  00 40 a0 e1                                      mov r4, r0
00344be4  10 30 80 e5                                      str r3, [r0, #0x10]
00344be8  04 30 80 e5                                      str r3, [r0, #4]
00344bec  00 30 c0 e5                                      strb r3, [r0]
00344bf0  08 00 84 e5                                      str r0, [r4, #8]
00344bf4  0c 00 84 e5                                      str r0, [r4, #0xc]
00344bf8  01 50 a0 e1                                      mov r5, r1
00344bfc  04 10 91 e5                                      ldr r1, [r1, #4]
00344c00  03 00 51 e1                                      cmp r1, r3
00344c04  0d 00 00 0a                                      beq #0x344c40
00344c08  00 20 a0 e1                                      mov r2, r0
00344c0c  bf ff ff eb                                      bl #0x344b10
00344c10  04 00 84 e5                                      str r0, [r4, #4]
00344c14  00 30 a0 e1                                      mov r3, r0
00344c18  03 20 a0 e1                                      mov r2, r3
00344c1c  08 30 93 e5                                      ldr r3, [r3, #8]
00344c20  00 00 53 e3                                      cmp r3, #0
00344c24  fb ff ff 1a                                      bne #0x344c18
00344c28  08 20 84 e5                                      str r2, [r4, #8]
00344c2c  00 30 a0 e1                                      mov r3, r0
00344c30  0c 00 90 e5                                      ldr r0, [r0, #0xc]
00344c34  00 00 50 e3                                      cmp r0, #0
00344c38  fb ff ff 1a                                      bne #0x344c2c
00344c3c  0c 30 84 e5                                      str r3, [r4, #0xc]
00344c40  10 30 95 e5                                      ldr r3, [r5, #0x10]
00344c44  04 00 a0 e1                                      mov r0, r4
00344c48  10 30 84 e5                                      str r3, [r4, #0x10]
00344c4c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00345ccc, declared_size=56, range_size=56, mode=arm
; class-group: std::priv::_Rb_tree<short, std::less<short>, short, std::priv::_Identity<short>, std::priv::_SetTraitsT<short>, std::allocator<short> >
; alias: _ZNSt4priv8_Rb_treeIsSt4lessIsEsNS_9_IdentityIsEENS_11_SetTraitsTIsEESaIsEE8_M_eraseEPNS_18_Rb_tree_node_baseE
; demangled: std::priv::_Rb_tree<short, std::less<short>, short, std::priv::_Identity<short>, std::priv::_SetTraitsT<short>, std::allocator<short> >::_M_erase(std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
00345ccc  70 40 2d e9                                      push {r4, r5, r6, lr}
00345cd0  00 40 51 e2                                      subs r4, r1, #0
00345cd4  00 60 a0 e1                                      mov r6, r0
00345cd8  08 00 00 0a                                      beq #0x345d00
00345cdc  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00345ce0  06 00 a0 e1                                      mov r0, r6
00345ce4  f8 ff ff eb                                      bl #0x345ccc
00345ce8  08 50 94 e5                                      ldr r5, [r4, #8]
00345cec  04 00 a0 e1                                      mov r0, r4
00345cf0  14 10 a0 e3                                      mov r1, #0x14
00345cf4  81 0c 0f eb                                      bl #0x708f00
00345cf8  00 40 55 e2                                      subs r4, r5, #0
00345cfc  f6 ff ff 1a                                      bne #0x345cdc
00345d00  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00346090, declared_size=60, range_size=60, mode=arm
; class-group: std::priv::_Rb_tree<short, std::less<short>, short, std::priv::_Identity<short>, std::priv::_SetTraitsT<short>, std::allocator<short> >
; alias: _ZNSt4priv8_Rb_treeIsSt4lessIsEsNS_9_IdentityIsEENS_11_SetTraitsTIsEESaIsEE5eraseENS_17_Rb_tree_iteratorIsS6_EE
; demangled: std::priv::_Rb_tree<short, std::less<short>, short, std::priv::_Identity<short>, std::priv::_SetTraitsT<short>, std::allocator<short> >::erase(std::priv::_Rb_tree_iterator<short, std::priv::_SetTraitsT<short> >)
; decoder-mode: arm
00346090  10 40 2d e9                                      push {r4, lr}
00346094  00 40 a0 e1                                      mov r4, r0
00346098  08 20 84 e2                                      add r2, r4, #8
0034609c  00 00 91 e5                                      ldr r0, [r1]
003460a0  0c 30 84 e2                                      add r3, r4, #0xc
003460a4  04 10 84 e2                                      add r1, r4, #4
003460a8  d5 bf ff eb                                      bl #0x336004
003460ac  00 00 50 e3                                      cmp r0, #0
003460b0  01 00 00 0a                                      beq #0x3460bc
003460b4  14 10 a0 e3                                      mov r1, #0x14
003460b8  90 0b 0f eb                                      bl #0x708f00
003460bc  10 30 94 e5                                      ldr r3, [r4, #0x10]
003460c0  01 30 43 e2                                      sub r3, r3, #1
003460c4  10 30 84 e5                                      str r3, [r4, #0x10]
003460c8  10 80 bd e8                                      pop {r4, pc}

; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004bccac, declared_size=240, range_size=240, mode=arm
; class-group: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::vector<PyDataArrays::_Funcs, std::allocator<PyDataArrays::_Funcs> > >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::vector<PyDataArrays::_Funcs, std::allocator<PyDataArrays::_Funcs> > > >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::vector<PyDataArrays::_Funcs, std::allocator<PyDataArrays::_Funcs> > > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::vector<PyDataArrays::_Funcs, std::allocator<PyDataArrays::_Funcs> > > > >
; alias: _ZNKSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsSt6vectorIN12PyDataArrays6_FuncsESaIS7_EEENS_10_Select1stISA_EENS_11_MapTraitsTISA_EESaISA_EE14_M_lower_boundIPKcEEPNS_18_Rb_tree_node_baseERKT_
; demangled: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::vector<PyDataArrays::_Funcs, std::allocator<PyDataArrays::_Funcs> > >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::vector<PyDataArrays::_Funcs, std::allocator<PyDataArrays::_Funcs> > > >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::vector<PyDataArrays::_Funcs, std::allocator<PyDataArrays::_Funcs> > > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::vector<PyDataArrays::_Funcs, std::allocator<PyDataArrays::_Funcs> > > > >::_M_lower_bound<char const*>(char const* const&) const
; decoder-mode: arm
004bccac  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004bccb0  dc b0 9f e5                                      ldr fp, [pc, #0xdc]
004bccb4  dc 20 9f e5                                      ldr r2, [pc, #0xdc]
004bccb8  2c d0 4d e2                                      sub sp, sp, #0x2c
004bccbc  0b b0 8f e0                                      add fp, pc, fp
004bccc0  02 30 9b e7                                      ldr r3, [fp, r2]
004bccc4  04 20 8d e5                                      str r2, [sp, #4]
004bccc8  00 90 a0 e1                                      mov sb, r0
004bcccc  00 30 93 e5                                      ldr r3, [r3]
004bccd0  01 80 a0 e1                                      mov r8, r1
004bccd4  24 30 8d e5                                      str r3, [sp, #0x24]
004bccd8  04 40 90 e5                                      ldr r4, [r0, #4]
004bccdc  00 00 54 e3                                      cmp r4, #0
004bcce0  21 00 00 0a                                      beq #0x4bcd6c
004bcce4  0c 70 8d e2                                      add r7, sp, #0xc
004bcce8  08 a0 8d e2                                      add sl, sp, #8
004bccec  00 10 98 e5                                      ldr r1, [r8]
004bccf0  0a 20 a0 e1                                      mov r2, sl
004bccf4  07 00 a0 e1                                      mov r0, r7
004bccf8  fb 5c f9 eb                                      bl #0x3140ec
004bccfc  24 30 94 e5                                      ldr r3, [r4, #0x24]
004bcd00  20 10 9d e5                                      ldr r1, [sp, #0x20]
004bcd04  20 60 94 e5                                      ldr r6, [r4, #0x20]
004bcd08  1c 50 9d e5                                      ldr r5, [sp, #0x1c]
004bcd0c  03 00 a0 e1                                      mov r0, r3
004bcd10  06 60 63 e0                                      rsb r6, r3, r6
004bcd14  05 50 61 e0                                      rsb r5, r1, r5
004bcd18  06 00 55 e1                                      cmp r5, r6
004bcd1c  05 20 a0 b1                                      movlt r2, r5
004bcd20  06 20 a0 a1                                      movge r2, r6
004bcd24  2d 46 f9 eb                                      bl #0x30e5e0
004bcd28  00 30 50 e2                                      subs r3, r0, #0
004bcd2c  04 00 00 1a                                      bne #0x4bcd44
004bcd30  05 00 56 e1                                      cmp r6, r5
004bcd34  00 30 e0 b3                                      mvnlt r3, #0
004bcd38  01 00 00 ba                                      blt #0x4bcd44
004bcd3c  00 30 a0 d3                                      movle r3, #0
004bcd40  01 30 a0 c3                                      movgt r3, #1
004bcd44  07 00 a0 e1                                      mov r0, r7
004bcd48  00 30 8d e5                                      str r3, [sp]
004bcd4c  40 6d f9 eb                                      bl #0x318254
004bcd50  00 30 9d e5                                      ldr r3, [sp]
004bcd54  00 00 53 e3                                      cmp r3, #0
004bcd58  04 90 a0 a1                                      movge sb, r4
004bcd5c  0c 40 94 b5                                      ldrlt r4, [r4, #0xc]
004bcd60  08 40 94 a5                                      ldrge r4, [r4, #8]
004bcd64  00 00 54 e3                                      cmp r4, #0
004bcd68  df ff ff 1a                                      bne #0x4bccec
004bcd6c  04 20 9d e5                                      ldr r2, [sp, #4]
004bcd70  09 00 a0 e1                                      mov r0, sb
004bcd74  02 30 9b e7                                      ldr r3, [fp, r2]
004bcd78  24 20 9d e5                                      ldr r2, [sp, #0x24]
004bcd7c  00 30 93 e5                                      ldr r3, [r3]
004bcd80  03 00 52 e1                                      cmp r2, r3
004bcd84  01 00 00 1a                                      bne #0x4bcd90
004bcd88  2c d0 8d e2                                      add sp, sp, #0x2c
004bcd8c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004bcd90  5e 45 f9 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
004bcd94  d4 7d 4d 00 ac 40 00 00                          .byte 0xd4, 0x7d, 0x4d, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x004bd2bc, declared_size=444, range_size=444, mode=arm
; class-group: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::vector<PyDataArrays::_Funcs, std::allocator<PyDataArrays::_Funcs> > >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::vector<PyDataArrays::_Funcs, std::allocator<PyDataArrays::_Funcs> > > >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::vector<PyDataArrays::_Funcs, std::allocator<PyDataArrays::_Funcs> > > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::vector<PyDataArrays::_Funcs, std::allocator<PyDataArrays::_Funcs> > > > >
; alias: _ZNKSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsSt6vectorIN12PyDataArrays6_FuncsESaIS7_EEENS_10_Select1stISA_EENS_11_MapTraitsTISA_EESaISA_EE7_M_findIPKcEEPNS_18_Rb_tree_node_baseERKT_
; demangled: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::vector<PyDataArrays::_Funcs, std::allocator<PyDataArrays::_Funcs> > >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::vector<PyDataArrays::_Funcs, std::allocator<PyDataArrays::_Funcs> > > >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::vector<PyDataArrays::_Funcs, std::allocator<PyDataArrays::_Funcs> > > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::vector<PyDataArrays::_Funcs, std::allocator<PyDataArrays::_Funcs> > > > >::_M_find<char const*>(char const* const&) const
; decoder-mode: arm
004bd2bc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004bd2c0  a8 21 9f e5                                      ldr r2, [pc, #0x1a8]
004bd2c4  a8 31 9f e5                                      ldr r3, [pc, #0x1a8]
004bd2c8  54 d0 4d e2                                      sub sp, sp, #0x54
004bd2cc  02 20 8f e0                                      add r2, pc, r2
004bd2d0  0c 30 8d e5                                      str r3, [sp, #0xc]
004bd2d4  03 30 92 e7                                      ldr r3, [r2, r3]
004bd2d8  04 20 8d e5                                      str r2, [sp, #4]
004bd2dc  08 00 8d e5                                      str r0, [sp, #8]
004bd2e0  04 50 90 e5                                      ldr r5, [r0, #4]
004bd2e4  00 30 93 e5                                      ldr r3, [r3]
004bd2e8  01 90 a0 e1                                      mov sb, r1
004bd2ec  00 00 55 e3                                      cmp r5, #0
004bd2f0  4c 30 8d e5                                      str r3, [sp, #0x4c]
004bd2f4  51 00 00 0a                                      beq #0x4bd440
004bd2f8  00 a0 a0 e1                                      mov sl, r0
004bd2fc  18 00 8d e2                                      add r0, sp, #0x18
004bd300  34 80 8d e2                                      add r8, sp, #0x34
004bd304  00 00 8d e5                                      str r0, [sp]
004bd308  07 00 00 ea                                      b #0x4bd32c
004bd30c  04 00 a0 e1                                      mov r0, r4
004bd310  fa 2e 09 eb                                      bl #0x708f00
004bd314  00 00 5b e3                                      cmp fp, #0
004bd318  05 a0 a0 a1                                      movge sl, r5
004bd31c  0c 50 95 b5                                      ldrlt r5, [r5, #0xc]
004bd320  08 50 95 a5                                      ldrge r5, [r5, #8]
004bd324  00 00 55 e3                                      cmp r5, #0
004bd328  26 00 00 0a                                      beq #0x4bd3c8
004bd32c  00 10 99 e5                                      ldr r1, [sb]
004bd330  00 20 9d e5                                      ldr r2, [sp]
004bd334  08 00 a0 e1                                      mov r0, r8
004bd338  6b 5b f9 eb                                      bl #0x3140ec
004bd33c  24 30 95 e5                                      ldr r3, [r5, #0x24]
004bd340  48 40 9d e5                                      ldr r4, [sp, #0x48]
004bd344  20 70 95 e5                                      ldr r7, [r5, #0x20]
004bd348  44 60 9d e5                                      ldr r6, [sp, #0x44]
004bd34c  03 00 a0 e1                                      mov r0, r3
004bd350  07 70 63 e0                                      rsb r7, r3, r7
004bd354  06 60 64 e0                                      rsb r6, r4, r6
004bd358  07 00 56 e1                                      cmp r6, r7
004bd35c  06 20 a0 b1                                      movlt r2, r6
004bd360  07 20 a0 a1                                      movge r2, r7
004bd364  04 10 a0 e1                                      mov r1, r4
004bd368  9c 44 f9 eb                                      bl #0x30e5e0
004bd36c  00 b0 50 e2                                      subs fp, r0, #0
004bd370  04 00 00 1a                                      bne #0x4bd388
004bd374  06 00 57 e1                                      cmp r7, r6
004bd378  00 b0 e0 b3                                      mvnlt fp, #0
004bd37c  01 00 00 ba                                      blt #0x4bd388
004bd380  00 b0 a0 d3                                      movle fp, #0
004bd384  01 b0 a0 c3                                      movgt fp, #1
004bd388  08 00 54 e1                                      cmp r4, r8
004bd38c  e0 ff ff 0a                                      beq #0x4bd314
004bd390  00 00 54 e3                                      cmp r4, #0
004bd394  de ff ff 0a                                      beq #0x4bd314
004bd398  34 10 9d e5                                      ldr r1, [sp, #0x34]
004bd39c  01 10 64 e0                                      rsb r1, r4, r1
004bd3a0  80 00 51 e3                                      cmp r1, #0x80
004bd3a4  d8 ff ff 9a                                      bls #0x4bd30c
004bd3a8  04 00 a0 e1                                      mov r0, r4
004bd3ac  23 4c f9 eb                                      bl #0x310440
004bd3b0  00 00 5b e3                                      cmp fp, #0
004bd3b4  05 a0 a0 a1                                      movge sl, r5
004bd3b8  0c 50 95 b5                                      ldrlt r5, [r5, #0xc]
004bd3bc  08 50 95 a5                                      ldrge r5, [r5, #8]
004bd3c0  00 00 55 e3                                      cmp r5, #0
004bd3c4  d8 ff ff 1a                                      bne #0x4bd32c
004bd3c8  08 10 9d e5                                      ldr r1, [sp, #8]
004bd3cc  01 00 5a e1                                      cmp sl, r1
004bd3d0  1b 00 00 0a                                      beq #0x4bd444
004bd3d4  1c 40 8d e2                                      add r4, sp, #0x1c
004bd3d8  00 10 99 e5                                      ldr r1, [sb]
004bd3dc  14 20 8d e2                                      add r2, sp, #0x14
004bd3e0  04 00 a0 e1                                      mov r0, r4
004bd3e4  40 5b f9 eb                                      bl #0x3140ec
004bd3e8  30 30 9d e5                                      ldr r3, [sp, #0x30]
004bd3ec  24 10 9a e5                                      ldr r1, [sl, #0x24]
004bd3f0  20 50 9a e5                                      ldr r5, [sl, #0x20]
004bd3f4  2c 60 9d e5                                      ldr r6, [sp, #0x2c]
004bd3f8  03 00 a0 e1                                      mov r0, r3
004bd3fc  05 50 61 e0                                      rsb r5, r1, r5
004bd400  06 60 63 e0                                      rsb r6, r3, r6
004bd404  06 00 55 e1                                      cmp r5, r6
004bd408  05 20 a0 b1                                      movlt r2, r5
004bd40c  06 20 a0 a1                                      movge r2, r6
004bd410  72 44 f9 eb                                      bl #0x30e5e0
004bd414  00 70 50 e2                                      subs r7, r0, #0
004bd418  04 00 00 1a                                      bne #0x4bd430
004bd41c  05 00 56 e1                                      cmp r6, r5
004bd420  00 70 e0 b3                                      mvnlt r7, #0
004bd424  01 00 00 ba                                      blt #0x4bd430
004bd428  00 70 a0 d3                                      movle r7, #0
004bd42c  01 70 a0 c3                                      movgt r7, #1
004bd430  04 00 a0 e1                                      mov r0, r4
004bd434  86 6b f9 eb                                      bl #0x318254
004bd438  00 00 57 e3                                      cmp r7, #0
004bd43c  00 00 00 aa                                      bge #0x4bd444
004bd440  08 a0 9d e5                                      ldr sl, [sp, #8]
004bd444  04 00 9d e5                                      ldr r0, [sp, #4]
004bd448  0c 20 9d e5                                      ldr r2, [sp, #0xc]
004bd44c  02 30 90 e7                                      ldr r3, [r0, r2]
004bd450  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
004bd454  0a 00 a0 e1                                      mov r0, sl
004bd458  00 30 93 e5                                      ldr r3, [r3]
004bd45c  03 00 52 e1                                      cmp r2, r3
004bd460  01 00 00 1a                                      bne #0x4bd46c
004bd464  54 d0 8d e2                                      add sp, sp, #0x54
004bd468  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004bd46c  a7 43 f9 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
004bd470  c4 77 4d 00 ac 40 00 00                          .byte 0xc4, 0x77, 0x4d, 0x00, 0xac, 0x40, 0x00, 0x00

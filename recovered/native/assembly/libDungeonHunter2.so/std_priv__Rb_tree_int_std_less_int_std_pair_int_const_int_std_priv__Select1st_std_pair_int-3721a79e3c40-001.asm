; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00342910, declared_size=292, range_size=292, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, int>, std::priv::_Select1st<std::pair<int const, int> >, std::priv::_MapTraitsT<std::pair<int const, int> >, std::allocator<std::pair<int const, int> > >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKiiENS_10_Select1stIS5_EENS_11_MapTraitsTIS5_EESaIS5_EE9_M_insertEPNS_18_Rb_tree_node_baseERKS5_SD_SD_
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, int>, std::priv::_Select1st<std::pair<int const, int> >, std::priv::_MapTraitsT<std::pair<int const, int> >, std::allocator<std::pair<int const, int> > >::_M_insert(std::priv::_Rb_tree_node_base*, std::pair<int const, int> const&, std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
00342910  02 00 51 e1                                      cmp r1, r2
00342914  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00342918  01 40 a0 e1                                      mov r4, r1
0034291c  02 70 a0 e1                                      mov r7, r2
00342920  00 50 a0 e1                                      mov r5, r0
00342924  03 80 a0 e1                                      mov r8, r3
00342928  2e 00 00 0a                                      beq #0x3429e8
0034292c  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
00342930  00 00 53 e3                                      cmp r3, #0
00342934  17 00 00 0a                                      beq #0x342998
00342938  04 00 a0 e1                                      mov r0, r4
0034293c  eb ff ff eb                                      bl #0x3428f0
00342940  00 20 98 e5                                      ldr r2, [r8]
00342944  00 30 a0 e3                                      mov r3, #0
00342948  00 60 a0 e1                                      mov r6, r0
0034294c  10 20 80 e5                                      str r2, [r0, #0x10]
00342950  04 20 98 e5                                      ldr r2, [r8, #4]
00342954  0c 30 80 e5                                      str r3, [r0, #0xc]
00342958  08 30 80 e5                                      str r3, [r0, #8]
0034295c  14 20 80 e5                                      str r2, [r0, #0x14]
00342960  0c 00 87 e5                                      str r0, [r7, #0xc]
00342964  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00342968  03 00 57 e1                                      cmp r7, r3
0034296c  1b 00 00 0a                                      beq #0x3429e0
00342970  06 00 a0 e1                                      mov r0, r6
00342974  04 70 86 e5                                      str r7, [r6, #4]
00342978  04 10 84 e2                                      add r1, r4, #4
0034297c  77 43 ff eb                                      bl #0x313760
00342980  10 30 94 e5                                      ldr r3, [r4, #0x10]
00342984  05 00 a0 e1                                      mov r0, r5
00342988  01 30 83 e2                                      add r3, r3, #1
0034298c  10 30 84 e5                                      str r3, [r4, #0x10]
00342990  00 60 85 e5                                      str r6, [r5]
00342994  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00342998  18 30 9d e5                                      ldr r3, [sp, #0x18]
0034299c  00 00 53 e3                                      cmp r3, #0
003429a0  1e 00 00 0a                                      beq #0x342a20
003429a4  04 00 a0 e1                                      mov r0, r4
003429a8  d0 ff ff eb                                      bl #0x3428f0
003429ac  00 20 98 e5                                      ldr r2, [r8]
003429b0  00 30 a0 e3                                      mov r3, #0
003429b4  00 60 a0 e1                                      mov r6, r0
003429b8  10 20 80 e5                                      str r2, [r0, #0x10]
003429bc  04 20 98 e5                                      ldr r2, [r8, #4]
003429c0  0c 30 80 e5                                      str r3, [r0, #0xc]
003429c4  08 30 80 e5                                      str r3, [r0, #8]
003429c8  14 20 80 e5                                      str r2, [r0, #0x14]
003429cc  08 00 87 e5                                      str r0, [r7, #8]
003429d0  08 30 94 e5                                      ldr r3, [r4, #8]
003429d4  03 00 57 e1                                      cmp r7, r3
003429d8  08 00 84 05                                      streq r0, [r4, #8]
003429dc  e3 ff ff ea                                      b #0x342970
003429e0  0c 60 84 e5                                      str r6, [r4, #0xc]
003429e4  e1 ff ff ea                                      b #0x342970
003429e8  01 00 a0 e1                                      mov r0, r1
003429ec  bf ff ff eb                                      bl #0x3428f0
003429f0  00 20 98 e5                                      ldr r2, [r8]
003429f4  00 30 a0 e3                                      mov r3, #0
003429f8  00 60 a0 e1                                      mov r6, r0
003429fc  10 20 80 e5                                      str r2, [r0, #0x10]
00342a00  04 20 98 e5                                      ldr r2, [r8, #4]
00342a04  0c 30 80 e5                                      str r3, [r0, #0xc]
00342a08  08 30 80 e5                                      str r3, [r0, #8]
00342a0c  14 20 80 e5                                      str r2, [r0, #0x14]
00342a10  08 00 84 e5                                      str r0, [r4, #8]
00342a14  04 00 84 e5                                      str r0, [r4, #4]
00342a18  0c 00 84 e5                                      str r0, [r4, #0xc]
00342a1c  d3 ff ff ea                                      b #0x342970
00342a20  00 20 98 e5                                      ldr r2, [r8]
00342a24  10 30 97 e5                                      ldr r3, [r7, #0x10]
00342a28  03 00 52 e1                                      cmp r2, r3
00342a2c  c1 ff ff aa                                      bge #0x342938
00342a30  db ff ff ea                                      b #0x3429a4

; FUNCTION 0x00342a34, declared_size=392, range_size=392, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, int>, std::priv::_Select1st<std::pair<int const, int> >, std::priv::_MapTraitsT<std::pair<int const, int> >, std::allocator<std::pair<int const, int> > >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKiiENS_10_Select1stIS5_EENS_11_MapTraitsTIS5_EESaIS5_EE13insert_uniqueERKS5_
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, int>, std::priv::_Select1st<std::pair<int const, int> >, std::priv::_MapTraitsT<std::pair<int const, int> >, std::allocator<std::pair<int const, int> > >::insert_unique(std::pair<int const, int> const&)
; decoder-mode: arm
00342a34  70 40 2d e9                                      push {r4, r5, r6, lr}
00342a38  04 c0 91 e5                                      ldr ip, [r1, #4]
00342a3c  10 d0 4d e2                                      sub sp, sp, #0x10
00342a40  00 40 a0 e1                                      mov r4, r0
00342a44  00 00 5c e3                                      cmp ip, #0
00342a48  02 30 a0 e1                                      mov r3, r2
00342a4c  01 c0 a0 01                                      moveq ip, r1
00342a50  15 00 00 0a                                      beq #0x342aac
00342a54  00 60 92 e5                                      ldr r6, [r2]
00342a58  00 00 00 ea                                      b #0x342a60
00342a5c  02 c0 a0 e1                                      mov ip, r2
00342a60  10 00 9c e5                                      ldr r0, [ip, #0x10]
00342a64  01 50 a0 e3                                      mov r5, #1
00342a68  06 00 50 e1                                      cmp r0, r6
00342a6c  08 20 9c c5                                      ldrgt r2, [ip, #8]
00342a70  0c 20 9c d5                                      ldrle r2, [ip, #0xc]
00342a74  00 50 a0 d3                                      movle r5, #0
00342a78  00 00 52 e3                                      cmp r2, #0
00342a7c  f6 ff ff 1a                                      bne #0x342a5c
00342a80  00 00 55 e3                                      cmp r5, #0
00342a84  0c 50 a0 01                                      moveq r5, ip
00342a88  07 00 00 1a                                      bne #0x342aac
00342a8c  00 00 56 e1                                      cmp r6, r0
00342a90  00 30 a0 d3                                      movle r3, #0
00342a94  00 50 84 d5                                      strle r5, [r4]
00342a98  04 30 c4 d5                                      strble r3, [r4, #4]
00342a9c  1c 00 00 ca                                      bgt #0x342b14
00342aa0  04 00 a0 e1                                      mov r0, r4
00342aa4  10 d0 8d e2                                      add sp, sp, #0x10
00342aa8  70 80 bd e8                                      pop {r4, r5, r6, pc}
00342aac  08 20 91 e5                                      ldr r2, [r1, #8]
00342ab0  02 00 5c e1                                      cmp ip, r2
00342ab4  36 00 00 0a                                      beq #0x342b94
00342ab8  00 20 dc e5                                      ldrb r2, [ip]
00342abc  00 00 52 e3                                      cmp r2, #0
00342ac0  03 00 00 1a                                      bne #0x342ad4
00342ac4  04 20 9c e5                                      ldr r2, [ip, #4]
00342ac8  04 20 92 e5                                      ldr r2, [r2, #4]
00342acc  02 00 5c e1                                      cmp ip, r2
00342ad0  2a 00 00 0a                                      beq #0x342b80
00342ad4  08 00 9c e5                                      ldr r0, [ip, #8]
00342ad8  00 00 50 e3                                      cmp r0, #0
00342adc  01 00 00 1a                                      bne #0x342ae8
00342ae0  16 00 00 ea                                      b #0x342b40
00342ae4  02 00 a0 e1                                      mov r0, r2
00342ae8  0c 20 90 e5                                      ldr r2, [r0, #0xc]
00342aec  00 00 52 e3                                      cmp r2, #0
00342af0  fb ff ff 1a                                      bne #0x342ae4
00342af4  00 60 93 e5                                      ldr r6, [r3]
00342af8  00 50 a0 e1                                      mov r5, r0
00342afc  10 00 90 e5                                      ldr r0, [r0, #0x10]
00342b00  00 00 56 e1                                      cmp r6, r0
00342b04  00 30 a0 d3                                      movle r3, #0
00342b08  00 50 84 d5                                      strle r5, [r4]
00342b0c  04 30 c4 d5                                      strble r3, [r4, #4]
00342b10  e2 ff ff da                                      ble #0x342aa0
00342b14  0c 20 a0 e1                                      mov r2, ip
00342b18  08 00 8d e2                                      add r0, sp, #8
00342b1c  00 c0 a0 e3                                      mov ip, #0
00342b20  04 c0 8d e5                                      str ip, [sp, #4]
00342b24  00 c0 8d e5                                      str ip, [sp]
00342b28  78 ff ff eb                                      bl #0x342910
00342b2c  08 30 9d e5                                      ldr r3, [sp, #8]
00342b30  01 20 a0 e3                                      mov r2, #1
00342b34  04 20 c4 e5                                      strb r2, [r4, #4]
00342b38  00 30 84 e5                                      str r3, [r4]
00342b3c  d7 ff ff ea                                      b #0x342aa0
00342b40  04 20 9c e5                                      ldr r2, [ip, #4]
00342b44  08 00 92 e5                                      ldr r0, [r2, #8]
00342b48  00 00 5c e1                                      cmp ip, r0
00342b4c  02 50 a0 11                                      movne r5, r2
00342b50  00 60 93 15                                      ldrne r6, [r3]
00342b54  10 00 92 15                                      ldrne r0, [r2, #0x10]
00342b58  01 00 00 0a                                      beq #0x342b64
00342b5c  ca ff ff ea                                      b #0x342a8c
00342b60  05 20 a0 e1                                      mov r2, r5
00342b64  04 50 92 e5                                      ldr r5, [r2, #4]
00342b68  08 00 95 e5                                      ldr r0, [r5, #8]
00342b6c  02 00 50 e1                                      cmp r0, r2
00342b70  fa ff ff 0a                                      beq #0x342b60
00342b74  00 60 93 e5                                      ldr r6, [r3]
00342b78  10 00 95 e5                                      ldr r0, [r5, #0x10]
00342b7c  c2 ff ff ea                                      b #0x342a8c
00342b80  0c 20 9c e5                                      ldr r2, [ip, #0xc]
00342b84  00 60 93 e5                                      ldr r6, [r3]
00342b88  02 50 a0 e1                                      mov r5, r2
00342b8c  10 00 92 e5                                      ldr r0, [r2, #0x10]
00342b90  bd ff ff ea                                      b #0x342a8c
00342b94  0c 20 a0 e1                                      mov r2, ip
00342b98  00 e0 a0 e3                                      mov lr, #0
00342b9c  0c 00 8d e2                                      add r0, sp, #0xc
00342ba0  00 50 8d e8                                      stm sp, {ip, lr}
00342ba4  59 ff ff eb                                      bl #0x342910
00342ba8  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00342bac  01 20 a0 e3                                      mov r2, #1
00342bb0  04 20 c4 e5                                      strb r2, [r4, #4]
00342bb4  00 30 84 e5                                      str r3, [r4]
00342bb8  b8 ff ff ea                                      b #0x342aa0

; FUNCTION 0x00342bbc, declared_size=884, range_size=884, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, int>, std::priv::_Select1st<std::pair<int const, int> >, std::priv::_MapTraitsT<std::pair<int const, int> >, std::allocator<std::pair<int const, int> > >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKiiENS_10_Select1stIS5_EENS_11_MapTraitsTIS5_EESaIS5_EE13insert_uniqueENS_17_Rb_tree_iteratorIS5_S9_EERKS5_
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, int>, std::priv::_Select1st<std::pair<int const, int> >, std::priv::_MapTraitsT<std::pair<int const, int> >, std::allocator<std::pair<int const, int> > >::insert_unique(std::priv::_Rb_tree_iterator<std::pair<int const, int>, std::priv::_MapTraitsT<std::pair<int const, int> > >, std::pair<int const, int> const&)
; decoder-mode: arm
00342bbc  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00342bc0  00 40 92 e5                                      ldr r4, [r2]
00342bc4  08 20 91 e5                                      ldr r2, [r1, #8]
00342bc8  2c d0 4d e2                                      sub sp, sp, #0x2c
00342bcc  01 50 a0 e1                                      mov r5, r1
00342bd0  02 00 54 e1                                      cmp r4, r2
00342bd4  00 70 a0 e1                                      mov r7, r0
00342bd8  03 60 a0 e1                                      mov r6, r3
00342bdc  5a 00 00 0a                                      beq #0x342d4c
00342be0  01 00 54 e1                                      cmp r4, r1
00342be4  78 00 00 0a                                      beq #0x342dcc
00342be8  00 30 d4 e5                                      ldrb r3, [r4]
00342bec  00 00 53 e3                                      cmp r3, #0
00342bf0  3a 00 00 0a                                      beq #0x342ce0
00342bf4  08 c0 94 e5                                      ldr ip, [r4, #8]
00342bf8  00 00 5c e3                                      cmp ip, #0
00342bfc  01 00 00 1a                                      bne #0x342c08
00342c00  3e 00 00 ea                                      b #0x342d00
00342c04  03 c0 a0 e1                                      mov ip, r3
00342c08  0c 30 9c e5                                      ldr r3, [ip, #0xc]
00342c0c  00 00 53 e3                                      cmp r3, #0
00342c10  fb ff ff 1a                                      bne #0x342c04
00342c14  00 20 96 e5                                      ldr r2, [r6]
00342c18  10 00 94 e5                                      ldr r0, [r4, #0x10]
00342c1c  00 00 52 e1                                      cmp r2, r0
00342c20  00 10 a0 a3                                      movge r1, #0
00342c24  01 10 a0 b3                                      movlt r1, #1
00342c28  00 00 51 e3                                      cmp r1, #0
00342c2c  1b 00 00 1a                                      bne #0x342ca0
00342c30  0c 80 94 e5                                      ldr r8, [r4, #0xc]
00342c34  00 00 58 e3                                      cmp r8, #0
00342c38  7d 00 00 0a                                      beq #0x342e34
00342c3c  08 c0 a0 e1                                      mov ip, r8
00342c40  00 00 00 ea                                      b #0x342c48
00342c44  03 c0 a0 e1                                      mov ip, r3
00342c48  08 30 9c e5                                      ldr r3, [ip, #8]
00342c4c  00 00 53 e3                                      cmp r3, #0
00342c50  fb ff ff 1a                                      bne #0x342c44
00342c54  00 00 51 e3                                      cmp r1, #0
00342c58  34 00 00 1a                                      bne #0x342d30
00342c5c  00 00 52 e1                                      cmp r2, r0
00342c60  63 00 00 da                                      ble #0x342df4
00342c64  0c 00 55 e1                                      cmp r5, ip
00342c68  02 00 00 0a                                      beq #0x342c78
00342c6c  10 30 9c e5                                      ldr r3, [ip, #0x10]
00342c70  03 00 52 e1                                      cmp r2, r3
00342c74  2d 00 00 aa                                      bge #0x342d30
00342c78  00 00 58 e3                                      cmp r8, #0
00342c7c  4a 00 00 1a                                      bne #0x342dac
00342c80  05 10 a0 e1                                      mov r1, r5
00342c84  04 20 a0 e1                                      mov r2, r4
00342c88  06 30 a0 e1                                      mov r3, r6
00342c8c  07 00 a0 e1                                      mov r0, r7
00342c90  00 80 8d e5                                      str r8, [sp]
00342c94  04 40 8d e5                                      str r4, [sp, #4]
00342c98  1c ff ff eb                                      bl #0x342910
00342c9c  0c 00 00 ea                                      b #0x342cd4
00342ca0  10 30 9c e5                                      ldr r3, [ip, #0x10]
00342ca4  03 00 52 e1                                      cmp r2, r3
00342ca8  e0 ff ff da                                      ble #0x342c30
00342cac  0c e0 9c e5                                      ldr lr, [ip, #0xc]
00342cb0  00 00 5e e3                                      cmp lr, #0
00342cb4  56 00 00 0a                                      beq #0x342e14
00342cb8  00 c0 a0 e3                                      mov ip, #0
00342cbc  05 10 a0 e1                                      mov r1, r5
00342cc0  04 20 a0 e1                                      mov r2, r4
00342cc4  06 30 a0 e1                                      mov r3, r6
00342cc8  07 00 a0 e1                                      mov r0, r7
00342ccc  10 10 8d e8                                      stm sp, {r4, ip}
00342cd0  0e ff ff eb                                      bl #0x342910
00342cd4  07 00 a0 e1                                      mov r0, r7
00342cd8  2c d0 8d e2                                      add sp, sp, #0x2c
00342cdc  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00342ce0  04 30 94 e5                                      ldr r3, [r4, #4]
00342ce4  04 30 93 e5                                      ldr r3, [r3, #4]
00342ce8  03 00 54 e1                                      cmp r4, r3
00342cec  0c c0 94 05                                      ldreq ip, [r4, #0xc]
00342cf0  c7 ff ff 0a                                      beq #0x342c14
00342cf4  08 c0 94 e5                                      ldr ip, [r4, #8]
00342cf8  00 00 5c e3                                      cmp ip, #0
00342cfc  c1 ff ff 1a                                      bne #0x342c08
00342d00  04 c0 94 e5                                      ldr ip, [r4, #4]
00342d04  08 30 9c e5                                      ldr r3, [ip, #8]
00342d08  03 00 54 e1                                      cmp r4, r3
00342d0c  01 00 00 0a                                      beq #0x342d18
00342d10  bf ff ff ea                                      b #0x342c14
00342d14  03 c0 a0 e1                                      mov ip, r3
00342d18  04 30 9c e5                                      ldr r3, [ip, #4]
00342d1c  08 20 93 e5                                      ldr r2, [r3, #8]
00342d20  0c 00 52 e1                                      cmp r2, ip
00342d24  fa ff ff 0a                                      beq #0x342d14
00342d28  03 c0 a0 e1                                      mov ip, r3
00342d2c  b8 ff ff ea                                      b #0x342c14
00342d30  05 10 a0 e1                                      mov r1, r5
00342d34  06 20 a0 e1                                      mov r2, r6
00342d38  08 00 8d e2                                      add r0, sp, #8
00342d3c  3c ff ff eb                                      bl #0x342a34
00342d40  08 30 9d e5                                      ldr r3, [sp, #8]
00342d44  00 30 87 e5                                      str r3, [r7]
00342d48  e1 ff ff ea                                      b #0x342cd4
00342d4c  10 20 91 e5                                      ldr r2, [r1, #0x10]
00342d50  00 00 52 e3                                      cmp r2, #0
00342d54  52 00 00 0a                                      beq #0x342ea4
00342d58  00 20 93 e5                                      ldr r2, [r3]
00342d5c  10 c0 94 e5                                      ldr ip, [r4, #0x10]
00342d60  0c 00 52 e1                                      cmp r2, ip
00342d64  54 00 00 ba                                      blt #0x342ebc
00342d68  21 00 00 da                                      ble #0x342df4
00342d6c  0c e0 94 e5                                      ldr lr, [r4, #0xc]
00342d70  00 00 5e e3                                      cmp lr, #0
00342d74  3c 00 00 0a                                      beq #0x342e6c
00342d78  0e c0 a0 e1                                      mov ip, lr
00342d7c  00 00 00 ea                                      b #0x342d84
00342d80  03 c0 a0 e1                                      mov ip, r3
00342d84  08 30 9c e5                                      ldr r3, [ip, #8]
00342d88  00 00 53 e3                                      cmp r3, #0
00342d8c  fb ff ff 1a                                      bne #0x342d80
00342d90  0c 00 55 e1                                      cmp r5, ip
00342d94  5c 00 00 0a                                      beq #0x342f0c
00342d98  10 30 9c e5                                      ldr r3, [ip, #0x10]
00342d9c  03 00 52 e1                                      cmp r2, r3
00342da0  4a 00 00 aa                                      bge #0x342ed0
00342da4  00 00 5e e3                                      cmp lr, #0
00342da8  4f 00 00 0a                                      beq #0x342eec
00342dac  00 e0 a0 e3                                      mov lr, #0
00342db0  05 10 a0 e1                                      mov r1, r5
00342db4  0c 20 a0 e1                                      mov r2, ip
00342db8  06 30 a0 e1                                      mov r3, r6
00342dbc  07 00 a0 e1                                      mov r0, r7
00342dc0  00 50 8d e8                                      stm sp, {ip, lr}
00342dc4  d1 fe ff eb                                      bl #0x342910
00342dc8  c1 ff ff ea                                      b #0x342cd4
00342dcc  0c 20 94 e5                                      ldr r2, [r4, #0xc]
00342dd0  00 c0 93 e5                                      ldr ip, [r3]
00342dd4  10 e0 92 e5                                      ldr lr, [r2, #0x10]
00342dd8  0c 00 5e e1                                      cmp lr, ip
00342ddc  06 00 00 aa                                      bge #0x342dfc
00342de0  00 c0 a0 e3                                      mov ip, #0
00342de4  00 c0 8d e5                                      str ip, [sp]
00342de8  04 40 8d e5                                      str r4, [sp, #4]
00342dec  c7 fe ff eb                                      bl #0x342910
00342df0  b7 ff ff ea                                      b #0x342cd4
00342df4  00 40 87 e5                                      str r4, [r7]
00342df8  b5 ff ff ea                                      b #0x342cd4
00342dfc  03 20 a0 e1                                      mov r2, r3
00342e00  10 00 8d e2                                      add r0, sp, #0x10
00342e04  0a ff ff eb                                      bl #0x342a34
00342e08  10 30 9d e5                                      ldr r3, [sp, #0x10]
00342e0c  00 30 87 e5                                      str r3, [r7]
00342e10  af ff ff ea                                      b #0x342cd4
00342e14  05 10 a0 e1                                      mov r1, r5
00342e18  0c 20 a0 e1                                      mov r2, ip
00342e1c  06 30 a0 e1                                      mov r3, r6
00342e20  07 00 a0 e1                                      mov r0, r7
00342e24  00 e0 8d e5                                      str lr, [sp]
00342e28  04 c0 8d e5                                      str ip, [sp, #4]
00342e2c  b7 fe ff eb                                      bl #0x342910
00342e30  a7 ff ff ea                                      b #0x342cd4
00342e34  04 30 94 e5                                      ldr r3, [r4, #4]
00342e38  0c c0 93 e5                                      ldr ip, [r3, #0xc]
00342e3c  0c 00 54 e1                                      cmp r4, ip
00342e40  04 c0 a0 11                                      movne ip, r4
00342e44  04 00 00 1a                                      bne #0x342e5c
00342e48  03 c0 a0 e1                                      mov ip, r3
00342e4c  04 30 93 e5                                      ldr r3, [r3, #4]
00342e50  0c a0 93 e5                                      ldr sl, [r3, #0xc]
00342e54  0a 00 5c e1                                      cmp ip, sl
00342e58  fa ff ff 0a                                      beq #0x342e48
00342e5c  0c a0 9c e5                                      ldr sl, [ip, #0xc]
00342e60  0a 00 53 e1                                      cmp r3, sl
00342e64  03 c0 a0 11                                      movne ip, r3
00342e68  79 ff ff ea                                      b #0x342c54
00342e6c  04 30 94 e5                                      ldr r3, [r4, #4]
00342e70  0c 10 93 e5                                      ldr r1, [r3, #0xc]
00342e74  01 00 54 e1                                      cmp r4, r1
00342e78  04 c0 a0 11                                      movne ip, r4
00342e7c  04 00 00 1a                                      bne #0x342e94
00342e80  03 c0 a0 e1                                      mov ip, r3
00342e84  04 30 93 e5                                      ldr r3, [r3, #4]
00342e88  0c 10 93 e5                                      ldr r1, [r3, #0xc]
00342e8c  0c 00 51 e1                                      cmp r1, ip
00342e90  fa ff ff 0a                                      beq #0x342e80
00342e94  0c 10 9c e5                                      ldr r1, [ip, #0xc]
00342e98  01 00 53 e1                                      cmp r3, r1
00342e9c  03 c0 a0 11                                      movne ip, r3
00342ea0  ba ff ff ea                                      b #0x342d90
00342ea4  03 20 a0 e1                                      mov r2, r3
00342ea8  20 00 8d e2                                      add r0, sp, #0x20
00342eac  e0 fe ff eb                                      bl #0x342a34
00342eb0  20 30 9d e5                                      ldr r3, [sp, #0x20]
00342eb4  00 30 87 e5                                      str r3, [r7]
00342eb8  85 ff ff ea                                      b #0x342cd4
00342ebc  00 c0 a0 e3                                      mov ip, #0
00342ec0  04 20 a0 e1                                      mov r2, r4
00342ec4  10 10 8d e8                                      stm sp, {r4, ip}
00342ec8  90 fe ff eb                                      bl #0x342910
00342ecc  80 ff ff ea                                      b #0x342cd4
00342ed0  05 10 a0 e1                                      mov r1, r5
00342ed4  06 20 a0 e1                                      mov r2, r6
00342ed8  18 00 8d e2                                      add r0, sp, #0x18
00342edc  d4 fe ff eb                                      bl #0x342a34
00342ee0  18 30 9d e5                                      ldr r3, [sp, #0x18]
00342ee4  00 30 87 e5                                      str r3, [r7]
00342ee8  79 ff ff ea                                      b #0x342cd4
00342eec  05 10 a0 e1                                      mov r1, r5
00342ef0  04 20 a0 e1                                      mov r2, r4
00342ef4  06 30 a0 e1                                      mov r3, r6
00342ef8  07 00 a0 e1                                      mov r0, r7
00342efc  00 e0 8d e5                                      str lr, [sp]
00342f00  04 40 8d e5                                      str r4, [sp, #4]
00342f04  81 fe ff eb                                      bl #0x342910
00342f08  71 ff ff ea                                      b #0x342cd4
00342f0c  00 c0 a0 e3                                      mov ip, #0
00342f10  05 10 a0 e1                                      mov r1, r5
00342f14  04 20 a0 e1                                      mov r2, r4
00342f18  06 30 a0 e1                                      mov r3, r6
00342f1c  07 00 a0 e1                                      mov r0, r7
00342f20  00 c0 8d e5                                      str ip, [sp]
00342f24  04 40 8d e5                                      str r4, [sp, #4]
00342f28  78 fe ff eb                                      bl #0x342910
00342f2c  68 ff ff ea                                      b #0x342cd4

; FUNCTION 0x00345c94, declared_size=56, range_size=56, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, int>, std::priv::_Select1st<std::pair<int const, int> >, std::priv::_MapTraitsT<std::pair<int const, int> >, std::allocator<std::pair<int const, int> > >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKiiENS_10_Select1stIS5_EENS_11_MapTraitsTIS5_EESaIS5_EE8_M_eraseEPNS_18_Rb_tree_node_baseE
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, int>, std::priv::_Select1st<std::pair<int const, int> >, std::priv::_MapTraitsT<std::pair<int const, int> >, std::allocator<std::pair<int const, int> > >::_M_erase(std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
00345c94  70 40 2d e9                                      push {r4, r5, r6, lr}
00345c98  00 40 51 e2                                      subs r4, r1, #0
00345c9c  00 60 a0 e1                                      mov r6, r0
00345ca0  08 00 00 0a                                      beq #0x345cc8
00345ca4  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00345ca8  06 00 a0 e1                                      mov r0, r6
00345cac  f8 ff ff eb                                      bl #0x345c94
00345cb0  08 50 94 e5                                      ldr r5, [r4, #8]
00345cb4  04 00 a0 e1                                      mov r0, r4
00345cb8  18 10 a0 e3                                      mov r1, #0x18
00345cbc  8f 0c 0f eb                                      bl #0x708f00
00345cc0  00 40 55 e2                                      subs r4, r5, #0
00345cc4  f6 ff ff 1a                                      bne #0x345ca4
00345cc8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x004657ec, declared_size=216, range_size=216, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, int>, std::priv::_Select1st<std::pair<int const, int> >, std::priv::_MapTraitsT<std::pair<int const, int> >, std::allocator<std::pair<int const, int> > >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKiiENS_10_Select1stIS5_EENS_11_MapTraitsTIS5_EESaIS5_EE7_M_copyEPNS_18_Rb_tree_node_baseESD_
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, int>, std::priv::_Select1st<std::pair<int const, int> >, std::priv::_MapTraitsT<std::pair<int const, int> >, std::allocator<std::pair<int const, int> > >::_M_copy(std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
004657ec  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
004657f0  01 40 a0 e1                                      mov r4, r1
004657f4  02 50 a0 e1                                      mov r5, r2
004657f8  00 70 a0 e1                                      mov r7, r0
004657fc  f2 ff ff eb                                      bl #0x4657cc
00465800  10 20 94 e5                                      ldr r2, [r4, #0x10]
00465804  00 30 a0 e3                                      mov r3, #0
00465808  00 a0 a0 e1                                      mov sl, r0
0046580c  10 20 80 e5                                      str r2, [r0, #0x10]
00465810  14 20 94 e5                                      ldr r2, [r4, #0x14]
00465814  0c 30 80 e5                                      str r3, [r0, #0xc]
00465818  08 30 80 e5                                      str r3, [r0, #8]
0046581c  14 20 80 e5                                      str r2, [r0, #0x14]
00465820  00 30 d4 e5                                      ldrb r3, [r4]
00465824  04 50 80 e5                                      str r5, [r0, #4]
00465828  00 30 c0 e5                                      strb r3, [r0]
0046582c  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00465830  00 00 51 e3                                      cmp r1, #0
00465834  03 00 00 0a                                      beq #0x465848
00465838  07 00 a0 e1                                      mov r0, r7
0046583c  0a 20 a0 e1                                      mov r2, sl
00465840  e9 ff ff eb                                      bl #0x4657ec
00465844  0c 00 8a e5                                      str r0, [sl, #0xc]
00465848  08 50 94 e5                                      ldr r5, [r4, #8]
0046584c  00 00 55 e3                                      cmp r5, #0
00465850  19 00 00 0a                                      beq #0x4658bc
00465854  0a 60 a0 e1                                      mov r6, sl
00465858  00 80 a0 e3                                      mov r8, #0
0046585c  07 00 a0 e1                                      mov r0, r7
00465860  d9 ff ff eb                                      bl #0x4657cc
00465864  10 30 95 e5                                      ldr r3, [r5, #0x10]
00465868  00 40 a0 e1                                      mov r4, r0
0046586c  04 20 a0 e1                                      mov r2, r4
00465870  10 30 84 e5                                      str r3, [r4, #0x10]
00465874  14 30 95 e5                                      ldr r3, [r5, #0x14]
00465878  08 80 84 e5                                      str r8, [r4, #8]
0046587c  0c 80 84 e5                                      str r8, [r4, #0xc]
00465880  14 30 84 e5                                      str r3, [r4, #0x14]
00465884  00 30 d5 e5                                      ldrb r3, [r5]
00465888  07 00 a0 e1                                      mov r0, r7
0046588c  00 30 c4 e5                                      strb r3, [r4]
00465890  08 40 86 e5                                      str r4, [r6, #8]
00465894  04 60 84 e5                                      str r6, [r4, #4]
00465898  0c 30 95 e5                                      ldr r3, [r5, #0xc]
0046589c  04 60 a0 e1                                      mov r6, r4
004658a0  00 10 53 e2                                      subs r1, r3, #0
004658a4  01 00 00 0a                                      beq #0x4658b0
004658a8  cf ff ff eb                                      bl #0x4657ec
004658ac  0c 00 84 e5                                      str r0, [r4, #0xc]
004658b0  08 50 95 e5                                      ldr r5, [r5, #8]
004658b4  00 00 55 e3                                      cmp r5, #0
004658b8  e7 ff ff 1a                                      bne #0x46585c
004658bc  0a 00 a0 e1                                      mov r0, sl
004658c0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x004658c4, declared_size=120, range_size=120, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, int>, std::priv::_Select1st<std::pair<int const, int> >, std::priv::_MapTraitsT<std::pair<int const, int> >, std::allocator<std::pair<int const, int> > >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKiiENS_10_Select1stIS5_EENS_11_MapTraitsTIS5_EESaIS5_EEC1ERKSB_
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, int>, std::priv::_Select1st<std::pair<int const, int> >, std::priv::_MapTraitsT<std::pair<int const, int> >, std::allocator<std::pair<int const, int> > >::_Rb_tree(std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, int>, std::priv::_Select1st<std::pair<int const, int> >, std::priv::_MapTraitsT<std::pair<int const, int> >, std::allocator<std::pair<int const, int> > > const&)
; decoder-mode: arm
004658c4  70 40 2d e9                                      push {r4, r5, r6, lr}
004658c8  00 30 a0 e3                                      mov r3, #0
004658cc  00 40 a0 e1                                      mov r4, r0
004658d0  10 30 80 e5                                      str r3, [r0, #0x10]
004658d4  04 30 80 e5                                      str r3, [r0, #4]
004658d8  00 30 c0 e5                                      strb r3, [r0]
004658dc  08 00 84 e5                                      str r0, [r4, #8]
004658e0  0c 00 84 e5                                      str r0, [r4, #0xc]
004658e4  01 50 a0 e1                                      mov r5, r1
004658e8  04 10 91 e5                                      ldr r1, [r1, #4]
004658ec  03 00 51 e1                                      cmp r1, r3
004658f0  0d 00 00 0a                                      beq #0x46592c
004658f4  00 20 a0 e1                                      mov r2, r0
004658f8  bb ff ff eb                                      bl #0x4657ec
004658fc  04 00 84 e5                                      str r0, [r4, #4]
00465900  00 30 a0 e1                                      mov r3, r0
00465904  03 20 a0 e1                                      mov r2, r3
00465908  08 30 93 e5                                      ldr r3, [r3, #8]
0046590c  00 00 53 e3                                      cmp r3, #0
00465910  fb ff ff 1a                                      bne #0x465904
00465914  08 20 84 e5                                      str r2, [r4, #8]
00465918  00 30 a0 e1                                      mov r3, r0
0046591c  0c 00 90 e5                                      ldr r0, [r0, #0xc]
00465920  00 00 50 e3                                      cmp r0, #0
00465924  fb ff ff 1a                                      bne #0x465918
00465928  0c 30 84 e5                                      str r3, [r4, #0xc]
0046592c  10 30 95 e5                                      ldr r3, [r5, #0x10]
00465930  04 00 a0 e1                                      mov r0, r4
00465934  10 30 84 e5                                      str r3, [r4, #0x10]
00465938  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00467c18, declared_size=60, range_size=60, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, int>, std::priv::_Select1st<std::pair<int const, int> >, std::priv::_MapTraitsT<std::pair<int const, int> >, std::allocator<std::pair<int const, int> > >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKiiENS_10_Select1stIS5_EENS_11_MapTraitsTIS5_EESaIS5_EE5eraseENS_17_Rb_tree_iteratorIS5_S9_EE
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, int>, std::priv::_Select1st<std::pair<int const, int> >, std::priv::_MapTraitsT<std::pair<int const, int> >, std::allocator<std::pair<int const, int> > >::erase(std::priv::_Rb_tree_iterator<std::pair<int const, int>, std::priv::_MapTraitsT<std::pair<int const, int> > >)
; decoder-mode: arm
00467c18  10 40 2d e9                                      push {r4, lr}
00467c1c  00 40 a0 e1                                      mov r4, r0
00467c20  08 20 84 e2                                      add r2, r4, #8
00467c24  00 00 91 e5                                      ldr r0, [r1]
00467c28  0c 30 84 e2                                      add r3, r4, #0xc
00467c2c  04 10 84 e2                                      add r1, r4, #4
00467c30  f3 38 fb eb                                      bl #0x336004
00467c34  00 00 50 e3                                      cmp r0, #0
00467c38  01 00 00 0a                                      beq #0x467c44
00467c3c  18 10 a0 e3                                      mov r1, #0x18
00467c40  ae 84 0a eb                                      bl #0x708f00
00467c44  10 30 94 e5                                      ldr r3, [r4, #0x10]
00467c48  01 30 43 e2                                      sub r3, r3, #1
00467c4c  10 30 84 e5                                      str r3, [r4, #0x10]
00467c50  10 80 bd e8                                      pop {r4, pc}

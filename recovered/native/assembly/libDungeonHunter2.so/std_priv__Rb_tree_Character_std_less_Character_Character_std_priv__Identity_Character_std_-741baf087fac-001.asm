; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00395af8, declared_size=56, range_size=56, mode=arm
; class-group: std::priv::_Rb_tree<Character*, std::less<Character*>, Character*, std::priv::_Identity<Character*>, std::priv::_SetTraitsT<Character*>, std::allocator<Character*> >
; alias: _ZNSt4priv8_Rb_treeIP9CharacterSt4lessIS2_ES2_NS_9_IdentityIS2_EENS_11_SetTraitsTIS2_EESaIS2_EE8_M_eraseEPNS_18_Rb_tree_node_baseE
; demangled: std::priv::_Rb_tree<Character*, std::less<Character*>, Character*, std::priv::_Identity<Character*>, std::priv::_SetTraitsT<Character*>, std::allocator<Character*> >::_M_erase(std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
00395af8  70 40 2d e9                                      push {r4, r5, r6, lr}
00395afc  00 40 51 e2                                      subs r4, r1, #0
00395b00  00 60 a0 e1                                      mov r6, r0
00395b04  08 00 00 0a                                      beq #0x395b2c
00395b08  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00395b0c  06 00 a0 e1                                      mov r0, r6
00395b10  f8 ff ff eb                                      bl #0x395af8
00395b14  08 50 94 e5                                      ldr r5, [r4, #8]
00395b18  04 00 a0 e1                                      mov r0, r4
00395b1c  14 10 a0 e3                                      mov r1, #0x14
00395b20  f6 cc 0d eb                                      bl #0x708f00
00395b24  00 40 55 e2                                      subs r4, r5, #0
00395b28  f6 ff ff 1a                                      bne #0x395b08
00395b2c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00395c64, declared_size=288, range_size=288, mode=arm
; class-group: std::priv::_Rb_tree<Character*, std::less<Character*>, Character*, std::priv::_Identity<Character*>, std::priv::_SetTraitsT<Character*>, std::allocator<Character*> >
; alias: _ZNSt4priv8_Rb_treeIP9CharacterSt4lessIS2_ES2_NS_9_IdentityIS2_EENS_11_SetTraitsTIS2_EESaIS2_EE9_M_insertEPNS_18_Rb_tree_node_baseERKS2_SC_SC_.clone.1
; demangled: std::priv::_Rb_tree<Character*, std::less<Character*>, Character*, std::priv::_Identity<Character*>, std::priv::_SetTraitsT<Character*>, std::allocator<Character*> >::_M_insert(std::priv::_Rb_tree_node_base*, Character* const&, std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*) [clone .clone.1]
; decoder-mode: arm
00395c64  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00395c68  02 00 51 e1                                      cmp r1, r2
00395c6c  0c d0 4d e2                                      sub sp, sp, #0xc
00395c70  01 40 a0 e1                                      mov r4, r1
00395c74  00 50 a0 e1                                      mov r5, r0
00395c78  20 70 9d e5                                      ldr r7, [sp, #0x20]
00395c7c  12 00 00 0a                                      beq #0x395ccc
00395c80  00 00 57 e3                                      cmp r7, #0
00395c84  2a 00 00 0a                                      beq #0x395d34
00395c88  04 00 a0 e1                                      mov r0, r4
00395c8c  04 20 8d e5                                      str r2, [sp, #4]
00395c90  00 30 8d e5                                      str r3, [sp]
00395c94  ea ff ff eb                                      bl #0x395c44
00395c98  00 30 9d e5                                      ldr r3, [sp]
00395c9c  00 60 a0 e1                                      mov r6, r0
00395ca0  00 10 93 e5                                      ldr r1, [r3]
00395ca4  00 30 a0 e3                                      mov r3, #0
00395ca8  0c 30 80 e5                                      str r3, [r0, #0xc]
00395cac  10 10 80 e5                                      str r1, [r0, #0x10]
00395cb0  08 30 80 e5                                      str r3, [r0, #8]
00395cb4  04 20 9d e5                                      ldr r2, [sp, #4]
00395cb8  08 00 82 e5                                      str r0, [r2, #8]
00395cbc  08 30 94 e5                                      ldr r3, [r4, #8]
00395cc0  03 00 52 e1                                      cmp r2, r3
00395cc4  08 00 84 05                                      streq r0, [r4, #8]
00395cc8  0e 00 00 ea                                      b #0x395d08
00395ccc  01 00 a0 e1                                      mov r0, r1
00395cd0  04 20 8d e5                                      str r2, [sp, #4]
00395cd4  00 30 8d e5                                      str r3, [sp]
00395cd8  d9 ff ff eb                                      bl #0x395c44
00395cdc  00 30 9d e5                                      ldr r3, [sp]
00395ce0  00 60 a0 e1                                      mov r6, r0
00395ce4  00 10 93 e5                                      ldr r1, [r3]
00395ce8  00 30 a0 e3                                      mov r3, #0
00395cec  0c 30 80 e5                                      str r3, [r0, #0xc]
00395cf0  10 10 80 e5                                      str r1, [r0, #0x10]
00395cf4  08 30 80 e5                                      str r3, [r0, #8]
00395cf8  08 00 84 e5                                      str r0, [r4, #8]
00395cfc  04 00 84 e5                                      str r0, [r4, #4]
00395d00  0c 00 84 e5                                      str r0, [r4, #0xc]
00395d04  04 20 9d e5                                      ldr r2, [sp, #4]
00395d08  06 00 a0 e1                                      mov r0, r6
00395d0c  04 20 86 e5                                      str r2, [r6, #4]
00395d10  04 10 84 e2                                      add r1, r4, #4
00395d14  91 f6 fd eb                                      bl #0x313760
00395d18  10 30 94 e5                                      ldr r3, [r4, #0x10]
00395d1c  05 00 a0 e1                                      mov r0, r5
00395d20  01 30 83 e2                                      add r3, r3, #1
00395d24  10 30 84 e5                                      str r3, [r4, #0x10]
00395d28  00 60 85 e5                                      str r6, [r5]
00395d2c  0c d0 8d e2                                      add sp, sp, #0xc
00395d30  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00395d34  00 00 93 e5                                      ldr r0, [r3]
00395d38  10 10 92 e5                                      ldr r1, [r2, #0x10]
00395d3c  01 00 50 e1                                      cmp r0, r1
00395d40  d0 ff ff 3a                                      blo #0x395c88
00395d44  04 00 a0 e1                                      mov r0, r4
00395d48  04 20 8d e5                                      str r2, [sp, #4]
00395d4c  00 30 8d e5                                      str r3, [sp]
00395d50  bb ff ff eb                                      bl #0x395c44
00395d54  00 30 9d e5                                      ldr r3, [sp]
00395d58  00 60 a0 e1                                      mov r6, r0
00395d5c  00 30 93 e5                                      ldr r3, [r3]
00395d60  0c 70 80 e5                                      str r7, [r0, #0xc]
00395d64  08 70 80 e5                                      str r7, [r0, #8]
00395d68  10 30 80 e5                                      str r3, [r0, #0x10]
00395d6c  04 20 9d e5                                      ldr r2, [sp, #4]
00395d70  0c 00 82 e5                                      str r0, [r2, #0xc]
00395d74  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00395d78  03 00 52 e1                                      cmp r2, r3
00395d7c  0c 00 84 05                                      streq r0, [r4, #0xc]
00395d80  e0 ff ff ea                                      b #0x395d08

; FUNCTION 0x00395d84, declared_size=384, range_size=384, mode=arm
; class-group: std::priv::_Rb_tree<Character*, std::less<Character*>, Character*, std::priv::_Identity<Character*>, std::priv::_SetTraitsT<Character*>, std::allocator<Character*> >
; alias: _ZNSt4priv8_Rb_treeIP9CharacterSt4lessIS2_ES2_NS_9_IdentityIS2_EENS_11_SetTraitsTIS2_EESaIS2_EE13insert_uniqueERKS2_
; demangled: std::priv::_Rb_tree<Character*, std::less<Character*>, Character*, std::priv::_Identity<Character*>, std::priv::_SetTraitsT<Character*>, std::allocator<Character*> >::insert_unique(Character* const&)
; decoder-mode: arm
00395d84  70 40 2d e9                                      push {r4, r5, r6, lr}
00395d88  04 c0 91 e5                                      ldr ip, [r1, #4]
00395d8c  10 d0 4d e2                                      sub sp, sp, #0x10
00395d90  00 40 a0 e1                                      mov r4, r0
00395d94  00 00 5c e3                                      cmp ip, #0
00395d98  02 30 a0 e1                                      mov r3, r2
00395d9c  01 c0 a0 01                                      moveq ip, r1
00395da0  15 00 00 0a                                      beq #0x395dfc
00395da4  00 60 92 e5                                      ldr r6, [r2]
00395da8  00 00 00 ea                                      b #0x395db0
00395dac  02 c0 a0 e1                                      mov ip, r2
00395db0  10 00 9c e5                                      ldr r0, [ip, #0x10]
00395db4  01 50 a0 e3                                      mov r5, #1
00395db8  06 00 50 e1                                      cmp r0, r6
00395dbc  08 20 9c 85                                      ldrhi r2, [ip, #8]
00395dc0  0c 20 9c 95                                      ldrls r2, [ip, #0xc]
00395dc4  00 50 a0 93                                      movls r5, #0
00395dc8  00 00 52 e3                                      cmp r2, #0
00395dcc  f6 ff ff 1a                                      bne #0x395dac
00395dd0  00 00 55 e3                                      cmp r5, #0
00395dd4  0c 50 a0 01                                      moveq r5, ip
00395dd8  07 00 00 1a                                      bne #0x395dfc
00395ddc  00 00 56 e1                                      cmp r6, r0
00395de0  00 30 a0 93                                      movls r3, #0
00395de4  00 50 84 95                                      strls r5, [r4]
00395de8  04 30 c4 95                                      strbls r3, [r4, #4]
00395dec  1c 00 00 8a                                      bhi #0x395e64
00395df0  04 00 a0 e1                                      mov r0, r4
00395df4  10 d0 8d e2                                      add sp, sp, #0x10
00395df8  70 80 bd e8                                      pop {r4, r5, r6, pc}
00395dfc  08 20 91 e5                                      ldr r2, [r1, #8]
00395e00  02 00 5c e1                                      cmp ip, r2
00395e04  35 00 00 0a                                      beq #0x395ee0
00395e08  00 20 dc e5                                      ldrb r2, [ip]
00395e0c  00 00 52 e3                                      cmp r2, #0
00395e10  03 00 00 1a                                      bne #0x395e24
00395e14  04 20 9c e5                                      ldr r2, [ip, #4]
00395e18  04 20 92 e5                                      ldr r2, [r2, #4]
00395e1c  02 00 5c e1                                      cmp ip, r2
00395e20  29 00 00 0a                                      beq #0x395ecc
00395e24  08 00 9c e5                                      ldr r0, [ip, #8]
00395e28  00 00 50 e3                                      cmp r0, #0
00395e2c  01 00 00 1a                                      bne #0x395e38
00395e30  15 00 00 ea                                      b #0x395e8c
00395e34  02 00 a0 e1                                      mov r0, r2
00395e38  0c 20 90 e5                                      ldr r2, [r0, #0xc]
00395e3c  00 00 52 e3                                      cmp r2, #0
00395e40  fb ff ff 1a                                      bne #0x395e34
00395e44  00 60 93 e5                                      ldr r6, [r3]
00395e48  00 50 a0 e1                                      mov r5, r0
00395e4c  10 00 90 e5                                      ldr r0, [r0, #0x10]
00395e50  00 00 56 e1                                      cmp r6, r0
00395e54  00 30 a0 93                                      movls r3, #0
00395e58  00 50 84 95                                      strls r5, [r4]
00395e5c  04 30 c4 95                                      strbls r3, [r4, #4]
00395e60  e2 ff ff 9a                                      bls #0x395df0
00395e64  0c 20 a0 e1                                      mov r2, ip
00395e68  08 00 8d e2                                      add r0, sp, #8
00395e6c  00 c0 a0 e3                                      mov ip, #0
00395e70  00 c0 8d e5                                      str ip, [sp]
00395e74  7a ff ff eb                                      bl #0x395c64
00395e78  08 30 9d e5                                      ldr r3, [sp, #8]
00395e7c  01 20 a0 e3                                      mov r2, #1
00395e80  04 20 c4 e5                                      strb r2, [r4, #4]
00395e84  00 30 84 e5                                      str r3, [r4]
00395e88  d8 ff ff ea                                      b #0x395df0
00395e8c  04 20 9c e5                                      ldr r2, [ip, #4]
00395e90  08 00 92 e5                                      ldr r0, [r2, #8]
00395e94  00 00 5c e1                                      cmp ip, r0
00395e98  02 50 a0 11                                      movne r5, r2
00395e9c  00 60 93 15                                      ldrne r6, [r3]
00395ea0  10 00 92 15                                      ldrne r0, [r2, #0x10]
00395ea4  01 00 00 0a                                      beq #0x395eb0
00395ea8  cb ff ff ea                                      b #0x395ddc
00395eac  05 20 a0 e1                                      mov r2, r5
00395eb0  04 50 92 e5                                      ldr r5, [r2, #4]
00395eb4  08 00 95 e5                                      ldr r0, [r5, #8]
00395eb8  02 00 50 e1                                      cmp r0, r2
00395ebc  fa ff ff 0a                                      beq #0x395eac
00395ec0  00 60 93 e5                                      ldr r6, [r3]
00395ec4  10 00 95 e5                                      ldr r0, [r5, #0x10]
00395ec8  c3 ff ff ea                                      b #0x395ddc
00395ecc  0c 20 9c e5                                      ldr r2, [ip, #0xc]
00395ed0  00 60 93 e5                                      ldr r6, [r3]
00395ed4  02 50 a0 e1                                      mov r5, r2
00395ed8  10 00 92 e5                                      ldr r0, [r2, #0x10]
00395edc  be ff ff ea                                      b #0x395ddc
00395ee0  0c 20 a0 e1                                      mov r2, ip
00395ee4  0c 00 8d e2                                      add r0, sp, #0xc
00395ee8  00 c0 8d e5                                      str ip, [sp]
00395eec  5c ff ff eb                                      bl #0x395c64
00395ef0  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00395ef4  01 20 a0 e3                                      mov r2, #1
00395ef8  04 20 c4 e5                                      strb r2, [r4, #4]
00395efc  00 30 84 e5                                      str r3, [r4]
00395f00  ba ff ff ea                                      b #0x395df0

; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005d3000, declared_size=52, range_size=52, mode=arm
; class-group: std::priv::_Rb_tree<unsigned short, std::less<unsigned short>, unsigned short, std::priv::_Identity<unsigned short>, std::priv::_SetTraitsT<unsigned short>, glitch::core::SProcessBufferAllocator<unsigned short> >
; alias: _ZNSt4priv8_Rb_treeItSt4lessItEtNS_9_IdentityItEENS_11_SetTraitsTItEEN6glitch4core23SProcessBufferAllocatorItEEE8_M_eraseEPNS_18_Rb_tree_node_baseE
; demangled: std::priv::_Rb_tree<unsigned short, std::less<unsigned short>, unsigned short, std::priv::_Identity<unsigned short>, std::priv::_SetTraitsT<unsigned short>, glitch::core::SProcessBufferAllocator<unsigned short> >::_M_erase(std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
005d3000  70 40 2d e9                                      push {r4, r5, r6, lr}
005d3004  00 40 51 e2                                      subs r4, r1, #0
005d3008  00 50 a0 e1                                      mov r5, r0
005d300c  07 00 00 0a                                      beq #0x5d3030
005d3010  0c 10 94 e5                                      ldr r1, [r4, #0xc]
005d3014  05 00 a0 e1                                      mov r0, r5
005d3018  f8 ff ff eb                                      bl #0x5d3000
005d301c  08 60 94 e5                                      ldr r6, [r4, #8]
005d3020  04 00 a0 e1                                      mov r0, r4
005d3024  97 85 fd eb                                      bl #0x534688
005d3028  00 40 56 e2                                      subs r4, r6, #0
005d302c  f7 ff ff 1a                                      bne #0x5d3010
005d3030  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x005d3c74, declared_size=288, range_size=288, mode=arm
; class-group: std::priv::_Rb_tree<unsigned short, std::less<unsigned short>, unsigned short, std::priv::_Identity<unsigned short>, std::priv::_SetTraitsT<unsigned short>, glitch::core::SProcessBufferAllocator<unsigned short> >
; alias: _ZNSt4priv8_Rb_treeItSt4lessItEtNS_9_IdentityItEENS_11_SetTraitsTItEEN6glitch4core23SProcessBufferAllocatorItEEE9_M_insertEPNS_18_Rb_tree_node_baseERKtSD_SD_.clone.0
; demangled: std::priv::_Rb_tree<unsigned short, std::less<unsigned short>, unsigned short, std::priv::_Identity<unsigned short>, std::priv::_SetTraitsT<unsigned short>, glitch::core::SProcessBufferAllocator<unsigned short> >::_M_insert(std::priv::_Rb_tree_node_base*, unsigned short const&, std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*) [clone .clone.0]
; decoder-mode: arm
005d3c74  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
005d3c78  02 00 51 e1                                      cmp r1, r2
005d3c7c  0c d0 4d e2                                      sub sp, sp, #0xc
005d3c80  01 40 a0 e1                                      mov r4, r1
005d3c84  00 50 a0 e1                                      mov r5, r0
005d3c88  20 70 9d e5                                      ldr r7, [sp, #0x20]
005d3c8c  12 00 00 0a                                      beq #0x5d3cdc
005d3c90  00 00 57 e3                                      cmp r7, #0
005d3c94  2a 00 00 0a                                      beq #0x5d3d44
005d3c98  14 00 a0 e3                                      mov r0, #0x14
005d3c9c  04 20 8d e5                                      str r2, [sp, #4]
005d3ca0  00 30 8d e5                                      str r3, [sp]
005d3ca4  52 82 fd eb                                      bl #0x5345f4
005d3ca8  00 30 9d e5                                      ldr r3, [sp]
005d3cac  00 10 a0 e3                                      mov r1, #0
005d3cb0  00 60 a0 e1                                      mov r6, r0
005d3cb4  b0 30 d3 e1                                      ldrh r3, [r3]
005d3cb8  0c 10 80 e5                                      str r1, [r0, #0xc]
005d3cbc  08 10 80 e5                                      str r1, [r0, #8]
005d3cc0  b0 31 c0 e1                                      strh r3, [r0, #0x10]
005d3cc4  04 20 9d e5                                      ldr r2, [sp, #4]
005d3cc8  08 00 82 e5                                      str r0, [r2, #8]
005d3ccc  08 30 94 e5                                      ldr r3, [r4, #8]
005d3cd0  03 00 52 e1                                      cmp r2, r3
005d3cd4  08 00 84 05                                      streq r0, [r4, #8]
005d3cd8  0e 00 00 ea                                      b #0x5d3d18
005d3cdc  14 00 a0 e3                                      mov r0, #0x14
005d3ce0  04 20 8d e5                                      str r2, [sp, #4]
005d3ce4  00 30 8d e5                                      str r3, [sp]
005d3ce8  41 82 fd eb                                      bl #0x5345f4
005d3cec  00 30 9d e5                                      ldr r3, [sp]
005d3cf0  00 10 a0 e3                                      mov r1, #0
005d3cf4  00 60 a0 e1                                      mov r6, r0
005d3cf8  b0 30 d3 e1                                      ldrh r3, [r3]
005d3cfc  0c 10 80 e5                                      str r1, [r0, #0xc]
005d3d00  08 10 80 e5                                      str r1, [r0, #8]
005d3d04  b0 31 c0 e1                                      strh r3, [r0, #0x10]
005d3d08  08 00 84 e5                                      str r0, [r4, #8]
005d3d0c  04 00 84 e5                                      str r0, [r4, #4]
005d3d10  0c 00 84 e5                                      str r0, [r4, #0xc]
005d3d14  04 20 9d e5                                      ldr r2, [sp, #4]
005d3d18  06 00 a0 e1                                      mov r0, r6
005d3d1c  04 20 86 e5                                      str r2, [r6, #4]
005d3d20  04 10 84 e2                                      add r1, r4, #4
005d3d24  8d fe f4 eb                                      bl #0x313760
005d3d28  10 30 94 e5                                      ldr r3, [r4, #0x10]
005d3d2c  05 00 a0 e1                                      mov r0, r5
005d3d30  01 30 83 e2                                      add r3, r3, #1
005d3d34  10 30 84 e5                                      str r3, [r4, #0x10]
005d3d38  00 60 85 e5                                      str r6, [r5]
005d3d3c  0c d0 8d e2                                      add sp, sp, #0xc
005d3d40  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
005d3d44  b0 00 d3 e1                                      ldrh r0, [r3]
005d3d48  b0 11 d2 e1                                      ldrh r1, [r2, #0x10]
005d3d4c  01 00 50 e1                                      cmp r0, r1
005d3d50  d0 ff ff 3a                                      blo #0x5d3c98
005d3d54  14 00 a0 e3                                      mov r0, #0x14
005d3d58  04 20 8d e5                                      str r2, [sp, #4]
005d3d5c  00 30 8d e5                                      str r3, [sp]
005d3d60  23 82 fd eb                                      bl #0x5345f4
005d3d64  00 30 9d e5                                      ldr r3, [sp]
005d3d68  00 60 a0 e1                                      mov r6, r0
005d3d6c  b0 30 d3 e1                                      ldrh r3, [r3]
005d3d70  0c 70 80 e5                                      str r7, [r0, #0xc]
005d3d74  08 70 80 e5                                      str r7, [r0, #8]
005d3d78  b0 31 c0 e1                                      strh r3, [r0, #0x10]
005d3d7c  04 20 9d e5                                      ldr r2, [sp, #4]
005d3d80  0c 00 82 e5                                      str r0, [r2, #0xc]
005d3d84  0c 30 94 e5                                      ldr r3, [r4, #0xc]
005d3d88  03 00 52 e1                                      cmp r2, r3
005d3d8c  0c 00 84 05                                      streq r0, [r4, #0xc]
005d3d90  e0 ff ff ea                                      b #0x5d3d18

; FUNCTION 0x005d3d94, declared_size=384, range_size=384, mode=arm
; class-group: std::priv::_Rb_tree<unsigned short, std::less<unsigned short>, unsigned short, std::priv::_Identity<unsigned short>, std::priv::_SetTraitsT<unsigned short>, glitch::core::SProcessBufferAllocator<unsigned short> >
; alias: _ZNSt4priv8_Rb_treeItSt4lessItEtNS_9_IdentityItEENS_11_SetTraitsTItEEN6glitch4core23SProcessBufferAllocatorItEEE13insert_uniqueERKt
; demangled: std::priv::_Rb_tree<unsigned short, std::less<unsigned short>, unsigned short, std::priv::_Identity<unsigned short>, std::priv::_SetTraitsT<unsigned short>, glitch::core::SProcessBufferAllocator<unsigned short> >::insert_unique(unsigned short const&)
; decoder-mode: arm
005d3d94  70 40 2d e9                                      push {r4, r5, r6, lr}
005d3d98  04 c0 91 e5                                      ldr ip, [r1, #4]
005d3d9c  10 d0 4d e2                                      sub sp, sp, #0x10
005d3da0  00 40 a0 e1                                      mov r4, r0
005d3da4  00 00 5c e3                                      cmp ip, #0
005d3da8  02 30 a0 e1                                      mov r3, r2
005d3dac  01 c0 a0 01                                      moveq ip, r1
005d3db0  15 00 00 0a                                      beq #0x5d3e0c
005d3db4  b0 60 d2 e1                                      ldrh r6, [r2]
005d3db8  00 00 00 ea                                      b #0x5d3dc0
005d3dbc  02 c0 a0 e1                                      mov ip, r2
005d3dc0  b0 01 dc e1                                      ldrh r0, [ip, #0x10]
005d3dc4  01 50 a0 e3                                      mov r5, #1
005d3dc8  06 00 50 e1                                      cmp r0, r6
005d3dcc  08 20 9c 85                                      ldrhi r2, [ip, #8]
005d3dd0  0c 20 9c 95                                      ldrls r2, [ip, #0xc]
005d3dd4  00 50 a0 93                                      movls r5, #0
005d3dd8  00 00 52 e3                                      cmp r2, #0
005d3ddc  f6 ff ff 1a                                      bne #0x5d3dbc
005d3de0  00 00 55 e3                                      cmp r5, #0
005d3de4  0c 50 a0 01                                      moveq r5, ip
005d3de8  07 00 00 1a                                      bne #0x5d3e0c
005d3dec  00 00 56 e1                                      cmp r6, r0
005d3df0  00 30 a0 93                                      movls r3, #0
005d3df4  00 50 84 95                                      strls r5, [r4]
005d3df8  04 30 c4 95                                      strbls r3, [r4, #4]
005d3dfc  1c 00 00 8a                                      bhi #0x5d3e74
005d3e00  04 00 a0 e1                                      mov r0, r4
005d3e04  10 d0 8d e2                                      add sp, sp, #0x10
005d3e08  70 80 bd e8                                      pop {r4, r5, r6, pc}
005d3e0c  08 20 91 e5                                      ldr r2, [r1, #8]
005d3e10  02 00 5c e1                                      cmp ip, r2
005d3e14  35 00 00 0a                                      beq #0x5d3ef0
005d3e18  00 20 dc e5                                      ldrb r2, [ip]
005d3e1c  00 00 52 e3                                      cmp r2, #0
005d3e20  03 00 00 1a                                      bne #0x5d3e34
005d3e24  04 20 9c e5                                      ldr r2, [ip, #4]
005d3e28  04 20 92 e5                                      ldr r2, [r2, #4]
005d3e2c  02 00 5c e1                                      cmp ip, r2
005d3e30  29 00 00 0a                                      beq #0x5d3edc
005d3e34  08 00 9c e5                                      ldr r0, [ip, #8]
005d3e38  00 00 50 e3                                      cmp r0, #0
005d3e3c  01 00 00 1a                                      bne #0x5d3e48
005d3e40  15 00 00 ea                                      b #0x5d3e9c
005d3e44  02 00 a0 e1                                      mov r0, r2
005d3e48  0c 20 90 e5                                      ldr r2, [r0, #0xc]
005d3e4c  00 00 52 e3                                      cmp r2, #0
005d3e50  fb ff ff 1a                                      bne #0x5d3e44
005d3e54  b0 60 d3 e1                                      ldrh r6, [r3]
005d3e58  00 50 a0 e1                                      mov r5, r0
005d3e5c  b0 01 d0 e1                                      ldrh r0, [r0, #0x10]
005d3e60  00 00 56 e1                                      cmp r6, r0
005d3e64  00 30 a0 93                                      movls r3, #0
005d3e68  00 50 84 95                                      strls r5, [r4]
005d3e6c  04 30 c4 95                                      strbls r3, [r4, #4]
005d3e70  e2 ff ff 9a                                      bls #0x5d3e00
005d3e74  0c 20 a0 e1                                      mov r2, ip
005d3e78  08 00 8d e2                                      add r0, sp, #8
005d3e7c  00 c0 a0 e3                                      mov ip, #0
005d3e80  00 c0 8d e5                                      str ip, [sp]
005d3e84  7a ff ff eb                                      bl #0x5d3c74
005d3e88  08 30 9d e5                                      ldr r3, [sp, #8]
005d3e8c  01 20 a0 e3                                      mov r2, #1
005d3e90  04 20 c4 e5                                      strb r2, [r4, #4]
005d3e94  00 30 84 e5                                      str r3, [r4]
005d3e98  d8 ff ff ea                                      b #0x5d3e00
005d3e9c  04 20 9c e5                                      ldr r2, [ip, #4]
005d3ea0  08 00 92 e5                                      ldr r0, [r2, #8]
005d3ea4  00 00 5c e1                                      cmp ip, r0
005d3ea8  02 50 a0 11                                      movne r5, r2
005d3eac  b0 60 d3 11                                      ldrhne r6, [r3]
005d3eb0  b0 01 d2 11                                      ldrhne r0, [r2, #0x10]
005d3eb4  01 00 00 0a                                      beq #0x5d3ec0
005d3eb8  cb ff ff ea                                      b #0x5d3dec
005d3ebc  05 20 a0 e1                                      mov r2, r5
005d3ec0  04 50 92 e5                                      ldr r5, [r2, #4]
005d3ec4  08 00 95 e5                                      ldr r0, [r5, #8]
005d3ec8  02 00 50 e1                                      cmp r0, r2
005d3ecc  fa ff ff 0a                                      beq #0x5d3ebc
005d3ed0  b0 60 d3 e1                                      ldrh r6, [r3]
005d3ed4  b0 01 d5 e1                                      ldrh r0, [r5, #0x10]
005d3ed8  c3 ff ff ea                                      b #0x5d3dec
005d3edc  0c 20 9c e5                                      ldr r2, [ip, #0xc]
005d3ee0  b0 60 d3 e1                                      ldrh r6, [r3]
005d3ee4  02 50 a0 e1                                      mov r5, r2
005d3ee8  b0 01 d2 e1                                      ldrh r0, [r2, #0x10]
005d3eec  be ff ff ea                                      b #0x5d3dec
005d3ef0  0c 20 a0 e1                                      mov r2, ip
005d3ef4  0c 00 8d e2                                      add r0, sp, #0xc
005d3ef8  00 c0 8d e5                                      str ip, [sp]
005d3efc  5c ff ff eb                                      bl #0x5d3c74
005d3f00  0c 30 9d e5                                      ldr r3, [sp, #0xc]
005d3f04  01 20 a0 e3                                      mov r2, #1
005d3f08  04 20 c4 e5                                      strb r2, [r4, #4]
005d3f0c  00 30 84 e5                                      str r3, [r4]
005d3f10  ba ff ff ea                                      b #0x5d3e00

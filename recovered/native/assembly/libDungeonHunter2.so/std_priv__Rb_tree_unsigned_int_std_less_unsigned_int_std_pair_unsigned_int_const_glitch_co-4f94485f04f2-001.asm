; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0066e914, declared_size=384, range_size=384, mode=arm
; class-group: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, glitch::collada::detail::CColladaHardwareTextureSkinTechnique::SHardwareData>, std::priv::_Select1st<std::pair<unsigned int const, glitch::collada::detail::CColladaHardwareTextureSkinTechnique::SHardwareData> >, std::priv::_MapTraitsT<std::pair<unsigned int const, glitch::collada::detail::CColladaHardwareTextureSkinTechnique::SHardwareData> >, std::allocator<std::pair<unsigned int const, glitch::collada::detail::CColladaHardwareTextureSkinTechnique::SHardwareData> > >
; alias: _ZNSt4priv8_Rb_treeIjSt4lessIjESt4pairIKjN6glitch7collada6detail36CColladaHardwareTextureSkinTechnique13SHardwareDataEENS_10_Select1stISA_EENS_11_MapTraitsTISA_EESaISA_EE9_M_insertEPNS_18_Rb_tree_node_baseERKSA_SI_SI_.clone.2
; demangled: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, glitch::collada::detail::CColladaHardwareTextureSkinTechnique::SHardwareData>, std::priv::_Select1st<std::pair<unsigned int const, glitch::collada::detail::CColladaHardwareTextureSkinTechnique::SHardwareData> >, std::priv::_MapTraitsT<std::pair<unsigned int const, glitch::collada::detail::CColladaHardwareTextureSkinTechnique::SHardwareData> >, std::allocator<std::pair<unsigned int const, glitch::collada::detail::CColladaHardwareTextureSkinTechnique::SHardwareData> > >::_M_insert(std::priv::_Rb_tree_node_base*, std::pair<unsigned int const, glitch::collada::detail::CColladaHardwareTextureSkinTechnique::SHardwareData> const&, std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*) [clone .clone.2]
; decoder-mode: arm
0066e914  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0066e918  02 00 51 e1                                      cmp r1, r2
0066e91c  0c d0 4d e2                                      sub sp, sp, #0xc
0066e920  01 40 a0 e1                                      mov r4, r1
0066e924  00 50 a0 e1                                      mov r5, r0
0066e928  20 70 9d e5                                      ldr r7, [sp, #0x20]
0066e92c  1a 00 00 0a                                      beq #0x66e99c
0066e930  00 00 57 e3                                      cmp r7, #0
0066e934  3a 00 00 0a                                      beq #0x66ea24
0066e938  04 00 a0 e1                                      mov r0, r4
0066e93c  04 20 8d e5                                      str r2, [sp, #4]
0066e940  00 30 8d e5                                      str r3, [sp]
0066e944  cc ff ff eb                                      bl #0x66e87c
0066e948  00 30 9d e5                                      ldr r3, [sp]
0066e94c  00 c0 a0 e3                                      mov ip, #0
0066e950  00 60 a0 e1                                      mov r6, r0
0066e954  03 10 a0 e1                                      mov r1, r3
0066e958  04 e0 91 e4                                      ldr lr, [r1], #4
0066e95c  10 e0 80 e5                                      str lr, [r0, #0x10]
0066e960  04 30 93 e5                                      ldr r3, [r3, #4]
0066e964  04 10 81 e2                                      add r1, r1, #4
0066e968  14 30 80 e5                                      str r3, [r0, #0x14]
0066e96c  b2 30 d1 e0                                      ldrh r3, [r1], #2
0066e970  b8 31 c0 e1                                      strh r3, [r0, #0x18]
0066e974  00 30 d1 e5                                      ldrb r3, [r1]
0066e978  0c c0 80 e5                                      str ip, [r0, #0xc]
0066e97c  08 c0 80 e5                                      str ip, [r0, #8]
0066e980  1a 30 c0 e5                                      strb r3, [r0, #0x1a]
0066e984  04 20 9d e5                                      ldr r2, [sp, #4]
0066e988  08 00 82 e5                                      str r0, [r2, #8]
0066e98c  08 30 94 e5                                      ldr r3, [r4, #8]
0066e990  03 00 52 e1                                      cmp r2, r3
0066e994  08 00 84 05                                      streq r0, [r4, #8]
0066e998  16 00 00 ea                                      b #0x66e9f8
0066e99c  01 00 a0 e1                                      mov r0, r1
0066e9a0  04 20 8d e5                                      str r2, [sp, #4]
0066e9a4  00 30 8d e5                                      str r3, [sp]
0066e9a8  b3 ff ff eb                                      bl #0x66e87c
0066e9ac  00 30 9d e5                                      ldr r3, [sp]
0066e9b0  00 c0 a0 e3                                      mov ip, #0
0066e9b4  00 60 a0 e1                                      mov r6, r0
0066e9b8  03 10 a0 e1                                      mov r1, r3
0066e9bc  04 e0 91 e4                                      ldr lr, [r1], #4
0066e9c0  10 e0 80 e5                                      str lr, [r0, #0x10]
0066e9c4  04 30 93 e5                                      ldr r3, [r3, #4]
0066e9c8  04 10 81 e2                                      add r1, r1, #4
0066e9cc  14 30 80 e5                                      str r3, [r0, #0x14]
0066e9d0  b2 30 d1 e0                                      ldrh r3, [r1], #2
0066e9d4  b8 31 c0 e1                                      strh r3, [r0, #0x18]
0066e9d8  00 30 d1 e5                                      ldrb r3, [r1]
0066e9dc  0c c0 80 e5                                      str ip, [r0, #0xc]
0066e9e0  08 c0 80 e5                                      str ip, [r0, #8]
0066e9e4  1a 30 c0 e5                                      strb r3, [r0, #0x1a]
0066e9e8  08 00 84 e5                                      str r0, [r4, #8]
0066e9ec  04 00 84 e5                                      str r0, [r4, #4]
0066e9f0  0c 00 84 e5                                      str r0, [r4, #0xc]
0066e9f4  04 20 9d e5                                      ldr r2, [sp, #4]
0066e9f8  06 00 a0 e1                                      mov r0, r6
0066e9fc  04 20 86 e5                                      str r2, [r6, #4]
0066ea00  04 10 84 e2                                      add r1, r4, #4
0066ea04  55 93 f2 eb                                      bl #0x313760
0066ea08  10 30 94 e5                                      ldr r3, [r4, #0x10]
0066ea0c  05 00 a0 e1                                      mov r0, r5
0066ea10  01 30 83 e2                                      add r3, r3, #1
0066ea14  10 30 84 e5                                      str r3, [r4, #0x10]
0066ea18  00 60 85 e5                                      str r6, [r5]
0066ea1c  0c d0 8d e2                                      add sp, sp, #0xc
0066ea20  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0066ea24  00 00 93 e5                                      ldr r0, [r3]
0066ea28  10 10 92 e5                                      ldr r1, [r2, #0x10]
0066ea2c  01 00 50 e1                                      cmp r0, r1
0066ea30  c0 ff ff 3a                                      blo #0x66e938
0066ea34  04 00 a0 e1                                      mov r0, r4
0066ea38  04 20 8d e5                                      str r2, [sp, #4]
0066ea3c  00 30 8d e5                                      str r3, [sp]
0066ea40  8d ff ff eb                                      bl #0x66e87c
0066ea44  00 30 9d e5                                      ldr r3, [sp]
0066ea48  00 60 a0 e1                                      mov r6, r0
0066ea4c  03 10 a0 e1                                      mov r1, r3
0066ea50  04 c0 91 e4                                      ldr ip, [r1], #4
0066ea54  10 c0 80 e5                                      str ip, [r0, #0x10]
0066ea58  04 30 93 e5                                      ldr r3, [r3, #4]
0066ea5c  04 10 81 e2                                      add r1, r1, #4
0066ea60  14 30 80 e5                                      str r3, [r0, #0x14]
0066ea64  b2 30 d1 e0                                      ldrh r3, [r1], #2
0066ea68  b8 31 c0 e1                                      strh r3, [r0, #0x18]
0066ea6c  00 30 d1 e5                                      ldrb r3, [r1]
0066ea70  0c 70 80 e5                                      str r7, [r0, #0xc]
0066ea74  08 70 80 e5                                      str r7, [r0, #8]
0066ea78  1a 30 c0 e5                                      strb r3, [r0, #0x1a]
0066ea7c  04 20 9d e5                                      ldr r2, [sp, #4]
0066ea80  0c 00 82 e5                                      str r0, [r2, #0xc]
0066ea84  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0066ea88  03 00 52 e1                                      cmp r2, r3
0066ea8c  0c 00 84 05                                      streq r0, [r4, #0xc]
0066ea90  d8 ff ff ea                                      b #0x66e9f8

; FUNCTION 0x0066ea94, declared_size=384, range_size=384, mode=arm
; class-group: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, glitch::collada::detail::CColladaHardwareTextureSkinTechnique::SHardwareData>, std::priv::_Select1st<std::pair<unsigned int const, glitch::collada::detail::CColladaHardwareTextureSkinTechnique::SHardwareData> >, std::priv::_MapTraitsT<std::pair<unsigned int const, glitch::collada::detail::CColladaHardwareTextureSkinTechnique::SHardwareData> >, std::allocator<std::pair<unsigned int const, glitch::collada::detail::CColladaHardwareTextureSkinTechnique::SHardwareData> > >
; alias: _ZNSt4priv8_Rb_treeIjSt4lessIjESt4pairIKjN6glitch7collada6detail36CColladaHardwareTextureSkinTechnique13SHardwareDataEENS_10_Select1stISA_EENS_11_MapTraitsTISA_EESaISA_EE13insert_uniqueERKSA_
; demangled: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, glitch::collada::detail::CColladaHardwareTextureSkinTechnique::SHardwareData>, std::priv::_Select1st<std::pair<unsigned int const, glitch::collada::detail::CColladaHardwareTextureSkinTechnique::SHardwareData> >, std::priv::_MapTraitsT<std::pair<unsigned int const, glitch::collada::detail::CColladaHardwareTextureSkinTechnique::SHardwareData> >, std::allocator<std::pair<unsigned int const, glitch::collada::detail::CColladaHardwareTextureSkinTechnique::SHardwareData> > >::insert_unique(std::pair<unsigned int const, glitch::collada::detail::CColladaHardwareTextureSkinTechnique::SHardwareData> const&)
; decoder-mode: arm
0066ea94  70 40 2d e9                                      push {r4, r5, r6, lr}
0066ea98  04 c0 91 e5                                      ldr ip, [r1, #4]
0066ea9c  10 d0 4d e2                                      sub sp, sp, #0x10
0066eaa0  00 40 a0 e1                                      mov r4, r0
0066eaa4  00 00 5c e3                                      cmp ip, #0
0066eaa8  02 30 a0 e1                                      mov r3, r2
0066eaac  01 c0 a0 01                                      moveq ip, r1
0066eab0  15 00 00 0a                                      beq #0x66eb0c
0066eab4  00 60 92 e5                                      ldr r6, [r2]
0066eab8  00 00 00 ea                                      b #0x66eac0
0066eabc  02 c0 a0 e1                                      mov ip, r2
0066eac0  10 00 9c e5                                      ldr r0, [ip, #0x10]
0066eac4  01 50 a0 e3                                      mov r5, #1
0066eac8  06 00 50 e1                                      cmp r0, r6
0066eacc  08 20 9c 85                                      ldrhi r2, [ip, #8]
0066ead0  0c 20 9c 95                                      ldrls r2, [ip, #0xc]
0066ead4  00 50 a0 93                                      movls r5, #0
0066ead8  00 00 52 e3                                      cmp r2, #0
0066eadc  f6 ff ff 1a                                      bne #0x66eabc
0066eae0  00 00 55 e3                                      cmp r5, #0
0066eae4  0c 50 a0 01                                      moveq r5, ip
0066eae8  07 00 00 1a                                      bne #0x66eb0c
0066eaec  00 00 56 e1                                      cmp r6, r0
0066eaf0  00 30 a0 93                                      movls r3, #0
0066eaf4  00 50 84 95                                      strls r5, [r4]
0066eaf8  04 30 c4 95                                      strbls r3, [r4, #4]
0066eafc  1c 00 00 8a                                      bhi #0x66eb74
0066eb00  04 00 a0 e1                                      mov r0, r4
0066eb04  10 d0 8d e2                                      add sp, sp, #0x10
0066eb08  70 80 bd e8                                      pop {r4, r5, r6, pc}
0066eb0c  08 20 91 e5                                      ldr r2, [r1, #8]
0066eb10  02 00 5c e1                                      cmp ip, r2
0066eb14  35 00 00 0a                                      beq #0x66ebf0
0066eb18  00 20 dc e5                                      ldrb r2, [ip]
0066eb1c  00 00 52 e3                                      cmp r2, #0
0066eb20  03 00 00 1a                                      bne #0x66eb34
0066eb24  04 20 9c e5                                      ldr r2, [ip, #4]
0066eb28  04 20 92 e5                                      ldr r2, [r2, #4]
0066eb2c  02 00 5c e1                                      cmp ip, r2
0066eb30  29 00 00 0a                                      beq #0x66ebdc
0066eb34  08 00 9c e5                                      ldr r0, [ip, #8]
0066eb38  00 00 50 e3                                      cmp r0, #0
0066eb3c  01 00 00 1a                                      bne #0x66eb48
0066eb40  15 00 00 ea                                      b #0x66eb9c
0066eb44  02 00 a0 e1                                      mov r0, r2
0066eb48  0c 20 90 e5                                      ldr r2, [r0, #0xc]
0066eb4c  00 00 52 e3                                      cmp r2, #0
0066eb50  fb ff ff 1a                                      bne #0x66eb44
0066eb54  00 60 93 e5                                      ldr r6, [r3]
0066eb58  00 50 a0 e1                                      mov r5, r0
0066eb5c  10 00 90 e5                                      ldr r0, [r0, #0x10]
0066eb60  00 00 56 e1                                      cmp r6, r0
0066eb64  00 30 a0 93                                      movls r3, #0
0066eb68  00 50 84 95                                      strls r5, [r4]
0066eb6c  04 30 c4 95                                      strbls r3, [r4, #4]
0066eb70  e2 ff ff 9a                                      bls #0x66eb00
0066eb74  0c 20 a0 e1                                      mov r2, ip
0066eb78  08 00 8d e2                                      add r0, sp, #8
0066eb7c  00 c0 a0 e3                                      mov ip, #0
0066eb80  00 c0 8d e5                                      str ip, [sp]
0066eb84  62 ff ff eb                                      bl #0x66e914
0066eb88  08 30 9d e5                                      ldr r3, [sp, #8]
0066eb8c  01 20 a0 e3                                      mov r2, #1
0066eb90  04 20 c4 e5                                      strb r2, [r4, #4]
0066eb94  00 30 84 e5                                      str r3, [r4]
0066eb98  d8 ff ff ea                                      b #0x66eb00
0066eb9c  04 20 9c e5                                      ldr r2, [ip, #4]
0066eba0  08 00 92 e5                                      ldr r0, [r2, #8]
0066eba4  00 00 5c e1                                      cmp ip, r0
0066eba8  02 50 a0 11                                      movne r5, r2
0066ebac  00 60 93 15                                      ldrne r6, [r3]
0066ebb0  10 00 92 15                                      ldrne r0, [r2, #0x10]
0066ebb4  01 00 00 0a                                      beq #0x66ebc0
0066ebb8  cb ff ff ea                                      b #0x66eaec
0066ebbc  05 20 a0 e1                                      mov r2, r5
0066ebc0  04 50 92 e5                                      ldr r5, [r2, #4]
0066ebc4  08 00 95 e5                                      ldr r0, [r5, #8]
0066ebc8  02 00 50 e1                                      cmp r0, r2
0066ebcc  fa ff ff 0a                                      beq #0x66ebbc
0066ebd0  00 60 93 e5                                      ldr r6, [r3]
0066ebd4  10 00 95 e5                                      ldr r0, [r5, #0x10]
0066ebd8  c3 ff ff ea                                      b #0x66eaec
0066ebdc  0c 20 9c e5                                      ldr r2, [ip, #0xc]
0066ebe0  00 60 93 e5                                      ldr r6, [r3]
0066ebe4  02 50 a0 e1                                      mov r5, r2
0066ebe8  10 00 92 e5                                      ldr r0, [r2, #0x10]
0066ebec  be ff ff ea                                      b #0x66eaec
0066ebf0  0c 20 a0 e1                                      mov r2, ip
0066ebf4  0c 00 8d e2                                      add r0, sp, #0xc
0066ebf8  00 c0 8d e5                                      str ip, [sp]
0066ebfc  44 ff ff eb                                      bl #0x66e914
0066ec00  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0066ec04  01 20 a0 e3                                      mov r2, #1
0066ec08  04 20 c4 e5                                      strb r2, [r4, #4]
0066ec0c  00 30 84 e5                                      str r3, [r4]
0066ec10  ba ff ff ea                                      b #0x66eb00

; FUNCTION 0x0066edd8, declared_size=56, range_size=56, mode=arm
; class-group: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, glitch::collada::detail::CColladaHardwareTextureSkinTechnique::SHardwareData>, std::priv::_Select1st<std::pair<unsigned int const, glitch::collada::detail::CColladaHardwareTextureSkinTechnique::SHardwareData> >, std::priv::_MapTraitsT<std::pair<unsigned int const, glitch::collada::detail::CColladaHardwareTextureSkinTechnique::SHardwareData> >, std::allocator<std::pair<unsigned int const, glitch::collada::detail::CColladaHardwareTextureSkinTechnique::SHardwareData> > >
; alias: _ZNSt4priv8_Rb_treeIjSt4lessIjESt4pairIKjN6glitch7collada6detail36CColladaHardwareTextureSkinTechnique13SHardwareDataEENS_10_Select1stISA_EENS_11_MapTraitsTISA_EESaISA_EE8_M_eraseEPNS_18_Rb_tree_node_baseE
; demangled: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, glitch::collada::detail::CColladaHardwareTextureSkinTechnique::SHardwareData>, std::priv::_Select1st<std::pair<unsigned int const, glitch::collada::detail::CColladaHardwareTextureSkinTechnique::SHardwareData> >, std::priv::_MapTraitsT<std::pair<unsigned int const, glitch::collada::detail::CColladaHardwareTextureSkinTechnique::SHardwareData> >, std::allocator<std::pair<unsigned int const, glitch::collada::detail::CColladaHardwareTextureSkinTechnique::SHardwareData> > >::_M_erase(std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
0066edd8  70 40 2d e9                                      push {r4, r5, r6, lr}
0066eddc  00 40 51 e2                                      subs r4, r1, #0
0066ede0  00 60 a0 e1                                      mov r6, r0
0066ede4  08 00 00 0a                                      beq #0x66ee0c
0066ede8  0c 10 94 e5                                      ldr r1, [r4, #0xc]
0066edec  06 00 a0 e1                                      mov r0, r6
0066edf0  f8 ff ff eb                                      bl #0x66edd8
0066edf4  08 50 94 e5                                      ldr r5, [r4, #8]
0066edf8  04 00 a0 e1                                      mov r0, r4
0066edfc  1c 10 a0 e3                                      mov r1, #0x1c
0066ee00  3e 68 02 eb                                      bl #0x708f00
0066ee04  00 40 55 e2                                      subs r4, r5, #0
0066ee08  f6 ff ff 1a                                      bne #0x66ede8
0066ee0c  70 80 bd e8                                      pop {r4, r5, r6, pc}

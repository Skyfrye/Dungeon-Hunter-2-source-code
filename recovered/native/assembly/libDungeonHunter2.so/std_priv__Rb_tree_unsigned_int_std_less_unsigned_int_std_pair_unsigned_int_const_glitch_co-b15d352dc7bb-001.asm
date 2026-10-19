; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0066d940, declared_size=384, range_size=384, mode=arm
; class-group: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, glitch::collada::detail::CColladaHardwareQuatSkinTechnique::SHardwareData>, std::priv::_Select1st<std::pair<unsigned int const, glitch::collada::detail::CColladaHardwareQuatSkinTechnique::SHardwareData> >, std::priv::_MapTraitsT<std::pair<unsigned int const, glitch::collada::detail::CColladaHardwareQuatSkinTechnique::SHardwareData> >, std::allocator<std::pair<unsigned int const, glitch::collada::detail::CColladaHardwareQuatSkinTechnique::SHardwareData> > >
; alias: _ZNSt4priv8_Rb_treeIjSt4lessIjESt4pairIKjN6glitch7collada6detail33CColladaHardwareQuatSkinTechnique13SHardwareDataEENS_10_Select1stISA_EENS_11_MapTraitsTISA_EESaISA_EE9_M_insertEPNS_18_Rb_tree_node_baseERKSA_SI_SI_.clone.2
; demangled: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, glitch::collada::detail::CColladaHardwareQuatSkinTechnique::SHardwareData>, std::priv::_Select1st<std::pair<unsigned int const, glitch::collada::detail::CColladaHardwareQuatSkinTechnique::SHardwareData> >, std::priv::_MapTraitsT<std::pair<unsigned int const, glitch::collada::detail::CColladaHardwareQuatSkinTechnique::SHardwareData> >, std::allocator<std::pair<unsigned int const, glitch::collada::detail::CColladaHardwareQuatSkinTechnique::SHardwareData> > >::_M_insert(std::priv::_Rb_tree_node_base*, std::pair<unsigned int const, glitch::collada::detail::CColladaHardwareQuatSkinTechnique::SHardwareData> const&, std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*) [clone .clone.2]
; decoder-mode: arm
0066d940  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0066d944  02 00 51 e1                                      cmp r1, r2
0066d948  0c d0 4d e2                                      sub sp, sp, #0xc
0066d94c  01 40 a0 e1                                      mov r4, r1
0066d950  00 50 a0 e1                                      mov r5, r0
0066d954  20 70 9d e5                                      ldr r7, [sp, #0x20]
0066d958  1a 00 00 0a                                      beq #0x66d9c8
0066d95c  00 00 57 e3                                      cmp r7, #0
0066d960  3a 00 00 0a                                      beq #0x66da50
0066d964  04 00 a0 e1                                      mov r0, r4
0066d968  04 20 8d e5                                      str r2, [sp, #4]
0066d96c  00 30 8d e5                                      str r3, [sp]
0066d970  cc ff ff eb                                      bl #0x66d8a8
0066d974  00 30 9d e5                                      ldr r3, [sp]
0066d978  00 c0 a0 e3                                      mov ip, #0
0066d97c  00 60 a0 e1                                      mov r6, r0
0066d980  03 10 a0 e1                                      mov r1, r3
0066d984  04 e0 91 e4                                      ldr lr, [r1], #4
0066d988  10 e0 80 e5                                      str lr, [r0, #0x10]
0066d98c  04 30 93 e5                                      ldr r3, [r3, #4]
0066d990  04 10 81 e2                                      add r1, r1, #4
0066d994  14 30 80 e5                                      str r3, [r0, #0x14]
0066d998  b2 30 d1 e0                                      ldrh r3, [r1], #2
0066d99c  b8 31 c0 e1                                      strh r3, [r0, #0x18]
0066d9a0  00 30 d1 e5                                      ldrb r3, [r1]
0066d9a4  0c c0 80 e5                                      str ip, [r0, #0xc]
0066d9a8  08 c0 80 e5                                      str ip, [r0, #8]
0066d9ac  1a 30 c0 e5                                      strb r3, [r0, #0x1a]
0066d9b0  04 20 9d e5                                      ldr r2, [sp, #4]
0066d9b4  08 00 82 e5                                      str r0, [r2, #8]
0066d9b8  08 30 94 e5                                      ldr r3, [r4, #8]
0066d9bc  03 00 52 e1                                      cmp r2, r3
0066d9c0  08 00 84 05                                      streq r0, [r4, #8]
0066d9c4  16 00 00 ea                                      b #0x66da24
0066d9c8  01 00 a0 e1                                      mov r0, r1
0066d9cc  04 20 8d e5                                      str r2, [sp, #4]
0066d9d0  00 30 8d e5                                      str r3, [sp]
0066d9d4  b3 ff ff eb                                      bl #0x66d8a8
0066d9d8  00 30 9d e5                                      ldr r3, [sp]
0066d9dc  00 c0 a0 e3                                      mov ip, #0
0066d9e0  00 60 a0 e1                                      mov r6, r0
0066d9e4  03 10 a0 e1                                      mov r1, r3
0066d9e8  04 e0 91 e4                                      ldr lr, [r1], #4
0066d9ec  10 e0 80 e5                                      str lr, [r0, #0x10]
0066d9f0  04 30 93 e5                                      ldr r3, [r3, #4]
0066d9f4  04 10 81 e2                                      add r1, r1, #4
0066d9f8  14 30 80 e5                                      str r3, [r0, #0x14]
0066d9fc  b2 30 d1 e0                                      ldrh r3, [r1], #2
0066da00  b8 31 c0 e1                                      strh r3, [r0, #0x18]
0066da04  00 30 d1 e5                                      ldrb r3, [r1]
0066da08  0c c0 80 e5                                      str ip, [r0, #0xc]
0066da0c  08 c0 80 e5                                      str ip, [r0, #8]
0066da10  1a 30 c0 e5                                      strb r3, [r0, #0x1a]
0066da14  08 00 84 e5                                      str r0, [r4, #8]
0066da18  04 00 84 e5                                      str r0, [r4, #4]
0066da1c  0c 00 84 e5                                      str r0, [r4, #0xc]
0066da20  04 20 9d e5                                      ldr r2, [sp, #4]
0066da24  06 00 a0 e1                                      mov r0, r6
0066da28  04 20 86 e5                                      str r2, [r6, #4]
0066da2c  04 10 84 e2                                      add r1, r4, #4
0066da30  4a 97 f2 eb                                      bl #0x313760
0066da34  10 30 94 e5                                      ldr r3, [r4, #0x10]
0066da38  05 00 a0 e1                                      mov r0, r5
0066da3c  01 30 83 e2                                      add r3, r3, #1
0066da40  10 30 84 e5                                      str r3, [r4, #0x10]
0066da44  00 60 85 e5                                      str r6, [r5]
0066da48  0c d0 8d e2                                      add sp, sp, #0xc
0066da4c  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0066da50  00 00 93 e5                                      ldr r0, [r3]
0066da54  10 10 92 e5                                      ldr r1, [r2, #0x10]
0066da58  01 00 50 e1                                      cmp r0, r1
0066da5c  c0 ff ff 3a                                      blo #0x66d964
0066da60  04 00 a0 e1                                      mov r0, r4
0066da64  04 20 8d e5                                      str r2, [sp, #4]
0066da68  00 30 8d e5                                      str r3, [sp]
0066da6c  8d ff ff eb                                      bl #0x66d8a8
0066da70  00 30 9d e5                                      ldr r3, [sp]
0066da74  00 60 a0 e1                                      mov r6, r0
0066da78  03 10 a0 e1                                      mov r1, r3
0066da7c  04 c0 91 e4                                      ldr ip, [r1], #4
0066da80  10 c0 80 e5                                      str ip, [r0, #0x10]
0066da84  04 30 93 e5                                      ldr r3, [r3, #4]
0066da88  04 10 81 e2                                      add r1, r1, #4
0066da8c  14 30 80 e5                                      str r3, [r0, #0x14]
0066da90  b2 30 d1 e0                                      ldrh r3, [r1], #2
0066da94  b8 31 c0 e1                                      strh r3, [r0, #0x18]
0066da98  00 30 d1 e5                                      ldrb r3, [r1]
0066da9c  0c 70 80 e5                                      str r7, [r0, #0xc]
0066daa0  08 70 80 e5                                      str r7, [r0, #8]
0066daa4  1a 30 c0 e5                                      strb r3, [r0, #0x1a]
0066daa8  04 20 9d e5                                      ldr r2, [sp, #4]
0066daac  0c 00 82 e5                                      str r0, [r2, #0xc]
0066dab0  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0066dab4  03 00 52 e1                                      cmp r2, r3
0066dab8  0c 00 84 05                                      streq r0, [r4, #0xc]
0066dabc  d8 ff ff ea                                      b #0x66da24

; FUNCTION 0x0066dac0, declared_size=384, range_size=384, mode=arm
; class-group: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, glitch::collada::detail::CColladaHardwareQuatSkinTechnique::SHardwareData>, std::priv::_Select1st<std::pair<unsigned int const, glitch::collada::detail::CColladaHardwareQuatSkinTechnique::SHardwareData> >, std::priv::_MapTraitsT<std::pair<unsigned int const, glitch::collada::detail::CColladaHardwareQuatSkinTechnique::SHardwareData> >, std::allocator<std::pair<unsigned int const, glitch::collada::detail::CColladaHardwareQuatSkinTechnique::SHardwareData> > >
; alias: _ZNSt4priv8_Rb_treeIjSt4lessIjESt4pairIKjN6glitch7collada6detail33CColladaHardwareQuatSkinTechnique13SHardwareDataEENS_10_Select1stISA_EENS_11_MapTraitsTISA_EESaISA_EE13insert_uniqueERKSA_
; demangled: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, glitch::collada::detail::CColladaHardwareQuatSkinTechnique::SHardwareData>, std::priv::_Select1st<std::pair<unsigned int const, glitch::collada::detail::CColladaHardwareQuatSkinTechnique::SHardwareData> >, std::priv::_MapTraitsT<std::pair<unsigned int const, glitch::collada::detail::CColladaHardwareQuatSkinTechnique::SHardwareData> >, std::allocator<std::pair<unsigned int const, glitch::collada::detail::CColladaHardwareQuatSkinTechnique::SHardwareData> > >::insert_unique(std::pair<unsigned int const, glitch::collada::detail::CColladaHardwareQuatSkinTechnique::SHardwareData> const&)
; decoder-mode: arm
0066dac0  70 40 2d e9                                      push {r4, r5, r6, lr}
0066dac4  04 c0 91 e5                                      ldr ip, [r1, #4]
0066dac8  10 d0 4d e2                                      sub sp, sp, #0x10
0066dacc  00 40 a0 e1                                      mov r4, r0
0066dad0  00 00 5c e3                                      cmp ip, #0
0066dad4  02 30 a0 e1                                      mov r3, r2
0066dad8  01 c0 a0 01                                      moveq ip, r1
0066dadc  15 00 00 0a                                      beq #0x66db38
0066dae0  00 60 92 e5                                      ldr r6, [r2]
0066dae4  00 00 00 ea                                      b #0x66daec
0066dae8  02 c0 a0 e1                                      mov ip, r2
0066daec  10 00 9c e5                                      ldr r0, [ip, #0x10]
0066daf0  01 50 a0 e3                                      mov r5, #1
0066daf4  06 00 50 e1                                      cmp r0, r6
0066daf8  08 20 9c 85                                      ldrhi r2, [ip, #8]
0066dafc  0c 20 9c 95                                      ldrls r2, [ip, #0xc]
0066db00  00 50 a0 93                                      movls r5, #0
0066db04  00 00 52 e3                                      cmp r2, #0
0066db08  f6 ff ff 1a                                      bne #0x66dae8
0066db0c  00 00 55 e3                                      cmp r5, #0
0066db10  0c 50 a0 01                                      moveq r5, ip
0066db14  07 00 00 1a                                      bne #0x66db38
0066db18  00 00 56 e1                                      cmp r6, r0
0066db1c  00 30 a0 93                                      movls r3, #0
0066db20  00 50 84 95                                      strls r5, [r4]
0066db24  04 30 c4 95                                      strbls r3, [r4, #4]
0066db28  1c 00 00 8a                                      bhi #0x66dba0
0066db2c  04 00 a0 e1                                      mov r0, r4
0066db30  10 d0 8d e2                                      add sp, sp, #0x10
0066db34  70 80 bd e8                                      pop {r4, r5, r6, pc}
0066db38  08 20 91 e5                                      ldr r2, [r1, #8]
0066db3c  02 00 5c e1                                      cmp ip, r2
0066db40  35 00 00 0a                                      beq #0x66dc1c
0066db44  00 20 dc e5                                      ldrb r2, [ip]
0066db48  00 00 52 e3                                      cmp r2, #0
0066db4c  03 00 00 1a                                      bne #0x66db60
0066db50  04 20 9c e5                                      ldr r2, [ip, #4]
0066db54  04 20 92 e5                                      ldr r2, [r2, #4]
0066db58  02 00 5c e1                                      cmp ip, r2
0066db5c  29 00 00 0a                                      beq #0x66dc08
0066db60  08 00 9c e5                                      ldr r0, [ip, #8]
0066db64  00 00 50 e3                                      cmp r0, #0
0066db68  01 00 00 1a                                      bne #0x66db74
0066db6c  15 00 00 ea                                      b #0x66dbc8
0066db70  02 00 a0 e1                                      mov r0, r2
0066db74  0c 20 90 e5                                      ldr r2, [r0, #0xc]
0066db78  00 00 52 e3                                      cmp r2, #0
0066db7c  fb ff ff 1a                                      bne #0x66db70
0066db80  00 60 93 e5                                      ldr r6, [r3]
0066db84  00 50 a0 e1                                      mov r5, r0
0066db88  10 00 90 e5                                      ldr r0, [r0, #0x10]
0066db8c  00 00 56 e1                                      cmp r6, r0
0066db90  00 30 a0 93                                      movls r3, #0
0066db94  00 50 84 95                                      strls r5, [r4]
0066db98  04 30 c4 95                                      strbls r3, [r4, #4]
0066db9c  e2 ff ff 9a                                      bls #0x66db2c
0066dba0  0c 20 a0 e1                                      mov r2, ip
0066dba4  08 00 8d e2                                      add r0, sp, #8
0066dba8  00 c0 a0 e3                                      mov ip, #0
0066dbac  00 c0 8d e5                                      str ip, [sp]
0066dbb0  62 ff ff eb                                      bl #0x66d940
0066dbb4  08 30 9d e5                                      ldr r3, [sp, #8]
0066dbb8  01 20 a0 e3                                      mov r2, #1
0066dbbc  04 20 c4 e5                                      strb r2, [r4, #4]
0066dbc0  00 30 84 e5                                      str r3, [r4]
0066dbc4  d8 ff ff ea                                      b #0x66db2c
0066dbc8  04 20 9c e5                                      ldr r2, [ip, #4]
0066dbcc  08 00 92 e5                                      ldr r0, [r2, #8]
0066dbd0  00 00 5c e1                                      cmp ip, r0
0066dbd4  02 50 a0 11                                      movne r5, r2
0066dbd8  00 60 93 15                                      ldrne r6, [r3]
0066dbdc  10 00 92 15                                      ldrne r0, [r2, #0x10]
0066dbe0  01 00 00 0a                                      beq #0x66dbec
0066dbe4  cb ff ff ea                                      b #0x66db18
0066dbe8  05 20 a0 e1                                      mov r2, r5
0066dbec  04 50 92 e5                                      ldr r5, [r2, #4]
0066dbf0  08 00 95 e5                                      ldr r0, [r5, #8]
0066dbf4  02 00 50 e1                                      cmp r0, r2
0066dbf8  fa ff ff 0a                                      beq #0x66dbe8
0066dbfc  00 60 93 e5                                      ldr r6, [r3]
0066dc00  10 00 95 e5                                      ldr r0, [r5, #0x10]
0066dc04  c3 ff ff ea                                      b #0x66db18
0066dc08  0c 20 9c e5                                      ldr r2, [ip, #0xc]
0066dc0c  00 60 93 e5                                      ldr r6, [r3]
0066dc10  02 50 a0 e1                                      mov r5, r2
0066dc14  10 00 92 e5                                      ldr r0, [r2, #0x10]
0066dc18  be ff ff ea                                      b #0x66db18
0066dc1c  0c 20 a0 e1                                      mov r2, ip
0066dc20  0c 00 8d e2                                      add r0, sp, #0xc
0066dc24  00 c0 8d e5                                      str ip, [sp]
0066dc28  44 ff ff eb                                      bl #0x66d940
0066dc2c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0066dc30  01 20 a0 e3                                      mov r2, #1
0066dc34  04 20 c4 e5                                      strb r2, [r4, #4]
0066dc38  00 30 84 e5                                      str r3, [r4]
0066dc3c  ba ff ff ea                                      b #0x66db2c

; FUNCTION 0x0066decc, declared_size=56, range_size=56, mode=arm
; class-group: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, glitch::collada::detail::CColladaHardwareQuatSkinTechnique::SHardwareData>, std::priv::_Select1st<std::pair<unsigned int const, glitch::collada::detail::CColladaHardwareQuatSkinTechnique::SHardwareData> >, std::priv::_MapTraitsT<std::pair<unsigned int const, glitch::collada::detail::CColladaHardwareQuatSkinTechnique::SHardwareData> >, std::allocator<std::pair<unsigned int const, glitch::collada::detail::CColladaHardwareQuatSkinTechnique::SHardwareData> > >
; alias: _ZNSt4priv8_Rb_treeIjSt4lessIjESt4pairIKjN6glitch7collada6detail33CColladaHardwareQuatSkinTechnique13SHardwareDataEENS_10_Select1stISA_EENS_11_MapTraitsTISA_EESaISA_EE8_M_eraseEPNS_18_Rb_tree_node_baseE
; demangled: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, glitch::collada::detail::CColladaHardwareQuatSkinTechnique::SHardwareData>, std::priv::_Select1st<std::pair<unsigned int const, glitch::collada::detail::CColladaHardwareQuatSkinTechnique::SHardwareData> >, std::priv::_MapTraitsT<std::pair<unsigned int const, glitch::collada::detail::CColladaHardwareQuatSkinTechnique::SHardwareData> >, std::allocator<std::pair<unsigned int const, glitch::collada::detail::CColladaHardwareQuatSkinTechnique::SHardwareData> > >::_M_erase(std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
0066decc  70 40 2d e9                                      push {r4, r5, r6, lr}
0066ded0  00 40 51 e2                                      subs r4, r1, #0
0066ded4  00 60 a0 e1                                      mov r6, r0
0066ded8  08 00 00 0a                                      beq #0x66df00
0066dedc  0c 10 94 e5                                      ldr r1, [r4, #0xc]
0066dee0  06 00 a0 e1                                      mov r0, r6
0066dee4  f8 ff ff eb                                      bl #0x66decc
0066dee8  08 50 94 e5                                      ldr r5, [r4, #8]
0066deec  04 00 a0 e1                                      mov r0, r4
0066def0  1c 10 a0 e3                                      mov r1, #0x1c
0066def4  01 6c 02 eb                                      bl #0x708f00
0066def8  00 40 55 e2                                      subs r4, r5, #0
0066defc  f6 ff ff 1a                                      bne #0x66dedc
0066df00  70 80 bd e8                                      pop {r4, r5, r6, pc}

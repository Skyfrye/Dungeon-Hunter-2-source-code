; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0066b998, declared_size=52, range_size=52, mode=arm
; class-group: std::priv::_Rb_tree<unsigned short, std::less<unsigned short>, std::pair<unsigned short const, glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::SHardwareData>, std::priv::_Select1st<std::pair<unsigned short const, glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::SHardwareData> >, std::priv::_MapTraitsT<std::pair<unsigned short const, glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::SHardwareData> >, glitch::core::SAllocator<std::pair<unsigned short const, glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::SHardwareData>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt4priv8_Rb_treeItSt4lessItESt4pairIKtN6glitch7collada6detail35CColladaHardwareMatrixSkinTechnique13SHardwareDataEENS_10_Select1stISA_EENS_11_MapTraitsTISA_EENS5_4core10SAllocatorISA_LNS5_6memory13E_MEMORY_HINTE0EEEE8_M_eraseEPNS_18_Rb_tree_node_baseE
; demangled: std::priv::_Rb_tree<unsigned short, std::less<unsigned short>, std::pair<unsigned short const, glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::SHardwareData>, std::priv::_Select1st<std::pair<unsigned short const, glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::SHardwareData> >, std::priv::_MapTraitsT<std::pair<unsigned short const, glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::SHardwareData> >, glitch::core::SAllocator<std::pair<unsigned short const, glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::SHardwareData>, (glitch::memory::E_MEMORY_HINT)0> >::_M_erase(std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
0066b998  70 40 2d e9                                      push {r4, r5, r6, lr}
0066b99c  00 40 51 e2                                      subs r4, r1, #0
0066b9a0  00 50 a0 e1                                      mov r5, r0
0066b9a4  07 00 00 0a                                      beq #0x66b9c8
0066b9a8  0c 10 94 e5                                      ldr r1, [r4, #0xc]
0066b9ac  05 00 a0 e1                                      mov r0, r5
0066b9b0  f8 ff ff eb                                      bl #0x66b998
0066b9b4  08 60 94 e5                                      ldr r6, [r4, #8]
0066b9b8  04 00 a0 e1                                      mov r0, r4
0066b9bc  a3 92 f2 eb                                      bl #0x310450
0066b9c0  00 40 56 e2                                      subs r4, r6, #0
0066b9c4  f7 ff ff 1a                                      bne #0x66b9a8
0066b9c8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0066bf9c, declared_size=348, range_size=348, mode=arm
; class-group: std::priv::_Rb_tree<unsigned short, std::less<unsigned short>, std::pair<unsigned short const, glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::SHardwareData>, std::priv::_Select1st<std::pair<unsigned short const, glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::SHardwareData> >, std::priv::_MapTraitsT<std::pair<unsigned short const, glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::SHardwareData> >, glitch::core::SAllocator<std::pair<unsigned short const, glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::SHardwareData>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt4priv8_Rb_treeItSt4lessItESt4pairIKtN6glitch7collada6detail35CColladaHardwareMatrixSkinTechnique13SHardwareDataEENS_10_Select1stISA_EENS_11_MapTraitsTISA_EENS5_4core10SAllocatorISA_LNS5_6memory13E_MEMORY_HINTE0EEEE9_M_insertEPNS_18_Rb_tree_node_baseERKSA_SM_SM_.clone.3
; demangled: std::priv::_Rb_tree<unsigned short, std::less<unsigned short>, std::pair<unsigned short const, glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::SHardwareData>, std::priv::_Select1st<std::pair<unsigned short const, glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::SHardwareData> >, std::priv::_MapTraitsT<std::pair<unsigned short const, glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::SHardwareData> >, glitch::core::SAllocator<std::pair<unsigned short const, glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::SHardwareData>, (glitch::memory::E_MEMORY_HINT)0> >::_M_insert(std::priv::_Rb_tree_node_base*, std::pair<unsigned short const, glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::SHardwareData> const&, std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*) [clone .clone.3]
; decoder-mode: arm
0066bf9c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0066bfa0  02 00 51 e1                                      cmp r1, r2
0066bfa4  0c d0 4d e2                                      sub sp, sp, #0xc
0066bfa8  01 40 a0 e1                                      mov r4, r1
0066bfac  00 50 a0 e1                                      mov r5, r0
0066bfb0  20 70 9d e5                                      ldr r7, [sp, #0x20]
0066bfb4  17 00 00 0a                                      beq #0x66c018
0066bfb8  00 00 57 e3                                      cmp r7, #0
0066bfbc  34 00 00 0a                                      beq #0x66c094
0066bfc0  00 10 a0 e3                                      mov r1, #0
0066bfc4  18 00 a0 e3                                      mov r0, #0x18
0066bfc8  04 20 8d e5                                      str r2, [sp, #4]
0066bfcc  00 30 8d e5                                      str r3, [sp]
0066bfd0  64 91 f2 eb                                      bl #0x310568
0066bfd4  00 30 9d e5                                      ldr r3, [sp]
0066bfd8  00 60 a0 e1                                      mov r6, r0
0066bfdc  b0 10 d3 e1                                      ldrh r1, [r3]
0066bfe0  b0 11 c0 e1                                      strh r1, [r0, #0x10]
0066bfe4  b2 10 d3 e1                                      ldrh r1, [r3, #2]
0066bfe8  b2 11 c0 e1                                      strh r1, [r0, #0x12]
0066bfec  b4 30 d3 e1                                      ldrh r3, [r3, #4]
0066bff0  00 10 a0 e3                                      mov r1, #0
0066bff4  0c 10 80 e5                                      str r1, [r0, #0xc]
0066bff8  b4 31 c0 e1                                      strh r3, [r0, #0x14]
0066bffc  08 10 80 e5                                      str r1, [r0, #8]
0066c000  04 20 9d e5                                      ldr r2, [sp, #4]
0066c004  08 00 82 e5                                      str r0, [r2, #8]
0066c008  08 30 94 e5                                      ldr r3, [r4, #8]
0066c00c  03 00 52 e1                                      cmp r2, r3
0066c010  08 00 84 05                                      streq r0, [r4, #8]
0066c014  13 00 00 ea                                      b #0x66c068
0066c018  00 10 a0 e3                                      mov r1, #0
0066c01c  18 00 a0 e3                                      mov r0, #0x18
0066c020  04 20 8d e5                                      str r2, [sp, #4]
0066c024  00 30 8d e5                                      str r3, [sp]
0066c028  4e 91 f2 eb                                      bl #0x310568
0066c02c  00 30 9d e5                                      ldr r3, [sp]
0066c030  00 60 a0 e1                                      mov r6, r0
0066c034  b0 10 d3 e1                                      ldrh r1, [r3]
0066c038  b0 11 c0 e1                                      strh r1, [r0, #0x10]
0066c03c  b2 10 d3 e1                                      ldrh r1, [r3, #2]
0066c040  b2 11 c0 e1                                      strh r1, [r0, #0x12]
0066c044  b4 30 d3 e1                                      ldrh r3, [r3, #4]
0066c048  00 10 a0 e3                                      mov r1, #0
0066c04c  0c 10 80 e5                                      str r1, [r0, #0xc]
0066c050  b4 31 c0 e1                                      strh r3, [r0, #0x14]
0066c054  08 10 80 e5                                      str r1, [r0, #8]
0066c058  08 00 84 e5                                      str r0, [r4, #8]
0066c05c  04 00 84 e5                                      str r0, [r4, #4]
0066c060  0c 00 84 e5                                      str r0, [r4, #0xc]
0066c064  04 20 9d e5                                      ldr r2, [sp, #4]
0066c068  06 00 a0 e1                                      mov r0, r6
0066c06c  04 20 86 e5                                      str r2, [r6, #4]
0066c070  04 10 84 e2                                      add r1, r4, #4
0066c074  b9 9d f2 eb                                      bl #0x313760
0066c078  10 30 94 e5                                      ldr r3, [r4, #0x10]
0066c07c  05 00 a0 e1                                      mov r0, r5
0066c080  01 30 83 e2                                      add r3, r3, #1
0066c084  10 30 84 e5                                      str r3, [r4, #0x10]
0066c088  00 60 85 e5                                      str r6, [r5]
0066c08c  0c d0 8d e2                                      add sp, sp, #0xc
0066c090  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0066c094  b0 00 d3 e1                                      ldrh r0, [r3]
0066c098  b0 11 d2 e1                                      ldrh r1, [r2, #0x10]
0066c09c  01 00 50 e1                                      cmp r0, r1
0066c0a0  c6 ff ff 3a                                      blo #0x66bfc0
0066c0a4  07 10 a0 e1                                      mov r1, r7
0066c0a8  18 00 a0 e3                                      mov r0, #0x18
0066c0ac  04 20 8d e5                                      str r2, [sp, #4]
0066c0b0  00 30 8d e5                                      str r3, [sp]
0066c0b4  2b 91 f2 eb                                      bl #0x310568
0066c0b8  00 30 9d e5                                      ldr r3, [sp]
0066c0bc  00 60 a0 e1                                      mov r6, r0
0066c0c0  b0 10 d3 e1                                      ldrh r1, [r3]
0066c0c4  b0 11 c0 e1                                      strh r1, [r0, #0x10]
0066c0c8  b2 10 d3 e1                                      ldrh r1, [r3, #2]
0066c0cc  b2 11 c0 e1                                      strh r1, [r0, #0x12]
0066c0d0  b4 30 d3 e1                                      ldrh r3, [r3, #4]
0066c0d4  0c 70 80 e5                                      str r7, [r0, #0xc]
0066c0d8  08 70 80 e5                                      str r7, [r0, #8]
0066c0dc  b4 31 c0 e1                                      strh r3, [r0, #0x14]
0066c0e0  04 20 9d e5                                      ldr r2, [sp, #4]
0066c0e4  0c 00 82 e5                                      str r0, [r2, #0xc]
0066c0e8  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0066c0ec  03 00 52 e1                                      cmp r2, r3
0066c0f0  0c 00 84 05                                      streq r0, [r4, #0xc]
0066c0f4  db ff ff ea                                      b #0x66c068

; FUNCTION 0x0066c0f8, declared_size=384, range_size=384, mode=arm
; class-group: std::priv::_Rb_tree<unsigned short, std::less<unsigned short>, std::pair<unsigned short const, glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::SHardwareData>, std::priv::_Select1st<std::pair<unsigned short const, glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::SHardwareData> >, std::priv::_MapTraitsT<std::pair<unsigned short const, glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::SHardwareData> >, glitch::core::SAllocator<std::pair<unsigned short const, glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::SHardwareData>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt4priv8_Rb_treeItSt4lessItESt4pairIKtN6glitch7collada6detail35CColladaHardwareMatrixSkinTechnique13SHardwareDataEENS_10_Select1stISA_EENS_11_MapTraitsTISA_EENS5_4core10SAllocatorISA_LNS5_6memory13E_MEMORY_HINTE0EEEE13insert_uniqueERKSA_
; demangled: std::priv::_Rb_tree<unsigned short, std::less<unsigned short>, std::pair<unsigned short const, glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::SHardwareData>, std::priv::_Select1st<std::pair<unsigned short const, glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::SHardwareData> >, std::priv::_MapTraitsT<std::pair<unsigned short const, glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::SHardwareData> >, glitch::core::SAllocator<std::pair<unsigned short const, glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::SHardwareData>, (glitch::memory::E_MEMORY_HINT)0> >::insert_unique(std::pair<unsigned short const, glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::SHardwareData> const&)
; decoder-mode: arm
0066c0f8  70 40 2d e9                                      push {r4, r5, r6, lr}
0066c0fc  04 c0 91 e5                                      ldr ip, [r1, #4]
0066c100  10 d0 4d e2                                      sub sp, sp, #0x10
0066c104  00 40 a0 e1                                      mov r4, r0
0066c108  00 00 5c e3                                      cmp ip, #0
0066c10c  02 30 a0 e1                                      mov r3, r2
0066c110  01 c0 a0 01                                      moveq ip, r1
0066c114  15 00 00 0a                                      beq #0x66c170
0066c118  b0 60 d2 e1                                      ldrh r6, [r2]
0066c11c  00 00 00 ea                                      b #0x66c124
0066c120  02 c0 a0 e1                                      mov ip, r2
0066c124  b0 01 dc e1                                      ldrh r0, [ip, #0x10]
0066c128  01 50 a0 e3                                      mov r5, #1
0066c12c  06 00 50 e1                                      cmp r0, r6
0066c130  08 20 9c 85                                      ldrhi r2, [ip, #8]
0066c134  0c 20 9c 95                                      ldrls r2, [ip, #0xc]
0066c138  00 50 a0 93                                      movls r5, #0
0066c13c  00 00 52 e3                                      cmp r2, #0
0066c140  f6 ff ff 1a                                      bne #0x66c120
0066c144  00 00 55 e3                                      cmp r5, #0
0066c148  0c 50 a0 01                                      moveq r5, ip
0066c14c  07 00 00 1a                                      bne #0x66c170
0066c150  00 00 56 e1                                      cmp r6, r0
0066c154  00 30 a0 93                                      movls r3, #0
0066c158  00 50 84 95                                      strls r5, [r4]
0066c15c  04 30 c4 95                                      strbls r3, [r4, #4]
0066c160  1c 00 00 8a                                      bhi #0x66c1d8
0066c164  04 00 a0 e1                                      mov r0, r4
0066c168  10 d0 8d e2                                      add sp, sp, #0x10
0066c16c  70 80 bd e8                                      pop {r4, r5, r6, pc}
0066c170  08 20 91 e5                                      ldr r2, [r1, #8]
0066c174  02 00 5c e1                                      cmp ip, r2
0066c178  35 00 00 0a                                      beq #0x66c254
0066c17c  00 20 dc e5                                      ldrb r2, [ip]
0066c180  00 00 52 e3                                      cmp r2, #0
0066c184  03 00 00 1a                                      bne #0x66c198
0066c188  04 20 9c e5                                      ldr r2, [ip, #4]
0066c18c  04 20 92 e5                                      ldr r2, [r2, #4]
0066c190  02 00 5c e1                                      cmp ip, r2
0066c194  29 00 00 0a                                      beq #0x66c240
0066c198  08 00 9c e5                                      ldr r0, [ip, #8]
0066c19c  00 00 50 e3                                      cmp r0, #0
0066c1a0  01 00 00 1a                                      bne #0x66c1ac
0066c1a4  15 00 00 ea                                      b #0x66c200
0066c1a8  02 00 a0 e1                                      mov r0, r2
0066c1ac  0c 20 90 e5                                      ldr r2, [r0, #0xc]
0066c1b0  00 00 52 e3                                      cmp r2, #0
0066c1b4  fb ff ff 1a                                      bne #0x66c1a8
0066c1b8  b0 60 d3 e1                                      ldrh r6, [r3]
0066c1bc  00 50 a0 e1                                      mov r5, r0
0066c1c0  b0 01 d0 e1                                      ldrh r0, [r0, #0x10]
0066c1c4  00 00 56 e1                                      cmp r6, r0
0066c1c8  00 30 a0 93                                      movls r3, #0
0066c1cc  00 50 84 95                                      strls r5, [r4]
0066c1d0  04 30 c4 95                                      strbls r3, [r4, #4]
0066c1d4  e2 ff ff 9a                                      bls #0x66c164
0066c1d8  0c 20 a0 e1                                      mov r2, ip
0066c1dc  08 00 8d e2                                      add r0, sp, #8
0066c1e0  00 c0 a0 e3                                      mov ip, #0
0066c1e4  00 c0 8d e5                                      str ip, [sp]
0066c1e8  6b ff ff eb                                      bl #0x66bf9c
0066c1ec  08 30 9d e5                                      ldr r3, [sp, #8]
0066c1f0  01 20 a0 e3                                      mov r2, #1
0066c1f4  04 20 c4 e5                                      strb r2, [r4, #4]
0066c1f8  00 30 84 e5                                      str r3, [r4]
0066c1fc  d8 ff ff ea                                      b #0x66c164
0066c200  04 20 9c e5                                      ldr r2, [ip, #4]
0066c204  08 00 92 e5                                      ldr r0, [r2, #8]
0066c208  00 00 5c e1                                      cmp ip, r0
0066c20c  02 50 a0 11                                      movne r5, r2
0066c210  b0 60 d3 11                                      ldrhne r6, [r3]
0066c214  b0 01 d2 11                                      ldrhne r0, [r2, #0x10]
0066c218  01 00 00 0a                                      beq #0x66c224
0066c21c  cb ff ff ea                                      b #0x66c150
0066c220  05 20 a0 e1                                      mov r2, r5
0066c224  04 50 92 e5                                      ldr r5, [r2, #4]
0066c228  08 00 95 e5                                      ldr r0, [r5, #8]
0066c22c  02 00 50 e1                                      cmp r0, r2
0066c230  fa ff ff 0a                                      beq #0x66c220
0066c234  b0 60 d3 e1                                      ldrh r6, [r3]
0066c238  b0 01 d5 e1                                      ldrh r0, [r5, #0x10]
0066c23c  c3 ff ff ea                                      b #0x66c150
0066c240  0c 20 9c e5                                      ldr r2, [ip, #0xc]
0066c244  b0 60 d3 e1                                      ldrh r6, [r3]
0066c248  02 50 a0 e1                                      mov r5, r2
0066c24c  b0 01 d2 e1                                      ldrh r0, [r2, #0x10]
0066c250  be ff ff ea                                      b #0x66c150
0066c254  0c 20 a0 e1                                      mov r2, ip
0066c258  0c 00 8d e2                                      add r0, sp, #0xc
0066c25c  00 c0 8d e5                                      str ip, [sp]
0066c260  4d ff ff eb                                      bl #0x66bf9c
0066c264  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0066c268  01 20 a0 e3                                      mov r2, #1
0066c26c  04 20 c4 e5                                      strb r2, [r4, #4]
0066c270  00 30 84 e5                                      str r3, [r4]
0066c274  ba ff ff ea                                      b #0x66c164

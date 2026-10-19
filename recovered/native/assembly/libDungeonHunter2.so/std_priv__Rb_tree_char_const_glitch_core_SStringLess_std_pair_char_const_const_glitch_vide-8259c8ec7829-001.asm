; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005e18e4, declared_size=52, range_size=52, mode=arm
; class-group: std::priv::_Rb_tree<char const*, glitch::core::SStringLess, std::pair<char const* const, glitch::video::E_SHADER_PARAMETER_TYPE>, std::priv::_Select1st<std::pair<char const* const, glitch::video::E_SHADER_PARAMETER_TYPE> >, std::priv::_MapTraitsT<std::pair<char const* const, glitch::video::E_SHADER_PARAMETER_TYPE> >, glitch::core::SAllocator<std::pair<char const* const, glitch::video::E_SHADER_PARAMETER_TYPE>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt4priv8_Rb_treeIPKcN6glitch4core11SStringLessESt4pairIKS2_NS3_5video23E_SHADER_PARAMETER_TYPEEENS_10_Select1stISA_EENS_11_MapTraitsTISA_EENS4_10SAllocatorISA_LNS3_6memory13E_MEMORY_HINTE0EEEE8_M_eraseEPNS_18_Rb_tree_node_baseE
; demangled: std::priv::_Rb_tree<char const*, glitch::core::SStringLess, std::pair<char const* const, glitch::video::E_SHADER_PARAMETER_TYPE>, std::priv::_Select1st<std::pair<char const* const, glitch::video::E_SHADER_PARAMETER_TYPE> >, std::priv::_MapTraitsT<std::pair<char const* const, glitch::video::E_SHADER_PARAMETER_TYPE> >, glitch::core::SAllocator<std::pair<char const* const, glitch::video::E_SHADER_PARAMETER_TYPE>, (glitch::memory::E_MEMORY_HINT)0> >::_M_erase(std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
005e18e4  70 40 2d e9                                      push {r4, r5, r6, lr}
005e18e8  00 40 51 e2                                      subs r4, r1, #0
005e18ec  00 50 a0 e1                                      mov r5, r0
005e18f0  07 00 00 0a                                      beq #0x5e1914
005e18f4  0c 10 94 e5                                      ldr r1, [r4, #0xc]
005e18f8  05 00 a0 e1                                      mov r0, r5
005e18fc  f8 ff ff eb                                      bl #0x5e18e4
005e1900  08 60 94 e5                                      ldr r6, [r4, #8]
005e1904  04 00 a0 e1                                      mov r0, r4
005e1908  d0 ba f4 eb                                      bl #0x310450
005e190c  00 40 56 e2                                      subs r4, r6, #0
005e1910  f7 ff ff 1a                                      bne #0x5e18f4
005e1914  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x005e1a0c, declared_size=344, range_size=344, mode=arm
; class-group: std::priv::_Rb_tree<char const*, glitch::core::SStringLess, std::pair<char const* const, glitch::video::E_SHADER_PARAMETER_TYPE>, std::priv::_Select1st<std::pair<char const* const, glitch::video::E_SHADER_PARAMETER_TYPE> >, std::priv::_MapTraitsT<std::pair<char const* const, glitch::video::E_SHADER_PARAMETER_TYPE> >, glitch::core::SAllocator<std::pair<char const* const, glitch::video::E_SHADER_PARAMETER_TYPE>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt4priv8_Rb_treeIPKcN6glitch4core11SStringLessESt4pairIKS2_NS3_5video23E_SHADER_PARAMETER_TYPEEENS_10_Select1stISA_EENS_11_MapTraitsTISA_EENS4_10SAllocatorISA_LNS3_6memory13E_MEMORY_HINTE0EEEE9_M_insertEPNS_18_Rb_tree_node_baseERKSA_SL_SL_.clone.6
; demangled: std::priv::_Rb_tree<char const*, glitch::core::SStringLess, std::pair<char const* const, glitch::video::E_SHADER_PARAMETER_TYPE>, std::priv::_Select1st<std::pair<char const* const, glitch::video::E_SHADER_PARAMETER_TYPE> >, std::priv::_MapTraitsT<std::pair<char const* const, glitch::video::E_SHADER_PARAMETER_TYPE> >, glitch::core::SAllocator<std::pair<char const* const, glitch::video::E_SHADER_PARAMETER_TYPE>, (glitch::memory::E_MEMORY_HINT)0> >::_M_insert(std::priv::_Rb_tree_node_base*, std::pair<char const* const, glitch::video::E_SHADER_PARAMETER_TYPE> const&, std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*) [clone .clone.6]
; decoder-mode: arm
005e1a0c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
005e1a10  02 00 51 e1                                      cmp r1, r2
005e1a14  0c d0 4d e2                                      sub sp, sp, #0xc
005e1a18  01 40 a0 e1                                      mov r4, r1
005e1a1c  00 50 a0 e1                                      mov r5, r0
005e1a20  20 70 9d e5                                      ldr r7, [sp, #0x20]
005e1a24  15 00 00 0a                                      beq #0x5e1a80
005e1a28  00 00 57 e3                                      cmp r7, #0
005e1a2c  30 00 00 0a                                      beq #0x5e1af4
005e1a30  00 10 a0 e3                                      mov r1, #0
005e1a34  18 00 a0 e3                                      mov r0, #0x18
005e1a38  04 20 8d e5                                      str r2, [sp, #4]
005e1a3c  00 30 8d e5                                      str r3, [sp]
005e1a40  c8 ba f4 eb                                      bl #0x310568
005e1a44  00 30 9d e5                                      ldr r3, [sp]
005e1a48  00 10 a0 e3                                      mov r1, #0
005e1a4c  00 60 a0 e1                                      mov r6, r0
005e1a50  00 c0 93 e5                                      ldr ip, [r3]
005e1a54  10 c0 80 e5                                      str ip, [r0, #0x10]
005e1a58  04 30 93 e5                                      ldr r3, [r3, #4]
005e1a5c  0c 10 80 e5                                      str r1, [r0, #0xc]
005e1a60  08 10 80 e5                                      str r1, [r0, #8]
005e1a64  14 30 80 e5                                      str r3, [r0, #0x14]
005e1a68  04 20 9d e5                                      ldr r2, [sp, #4]
005e1a6c  08 00 82 e5                                      str r0, [r2, #8]
005e1a70  08 30 94 e5                                      ldr r3, [r4, #8]
005e1a74  03 00 52 e1                                      cmp r2, r3
005e1a78  08 00 84 05                                      streq r0, [r4, #8]
005e1a7c  11 00 00 ea                                      b #0x5e1ac8
005e1a80  00 10 a0 e3                                      mov r1, #0
005e1a84  18 00 a0 e3                                      mov r0, #0x18
005e1a88  04 20 8d e5                                      str r2, [sp, #4]
005e1a8c  00 30 8d e5                                      str r3, [sp]
005e1a90  b4 ba f4 eb                                      bl #0x310568
005e1a94  00 30 9d e5                                      ldr r3, [sp]
005e1a98  00 10 a0 e3                                      mov r1, #0
005e1a9c  00 60 a0 e1                                      mov r6, r0
005e1aa0  00 c0 93 e5                                      ldr ip, [r3]
005e1aa4  10 c0 80 e5                                      str ip, [r0, #0x10]
005e1aa8  04 30 93 e5                                      ldr r3, [r3, #4]
005e1aac  0c 10 80 e5                                      str r1, [r0, #0xc]
005e1ab0  08 10 80 e5                                      str r1, [r0, #8]
005e1ab4  14 30 80 e5                                      str r3, [r0, #0x14]
005e1ab8  08 00 84 e5                                      str r0, [r4, #8]
005e1abc  04 00 84 e5                                      str r0, [r4, #4]
005e1ac0  0c 00 84 e5                                      str r0, [r4, #0xc]
005e1ac4  04 20 9d e5                                      ldr r2, [sp, #4]
005e1ac8  06 00 a0 e1                                      mov r0, r6
005e1acc  04 20 86 e5                                      str r2, [r6, #4]
005e1ad0  04 10 84 e2                                      add r1, r4, #4
005e1ad4  21 c7 f4 eb                                      bl #0x313760
005e1ad8  10 30 94 e5                                      ldr r3, [r4, #0x10]
005e1adc  05 00 a0 e1                                      mov r0, r5
005e1ae0  01 30 83 e2                                      add r3, r3, #1
005e1ae4  10 30 84 e5                                      str r3, [r4, #0x10]
005e1ae8  00 60 85 e5                                      str r6, [r5]
005e1aec  0c d0 8d e2                                      add sp, sp, #0xc
005e1af0  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
005e1af4  00 00 93 e5                                      ldr r0, [r3]
005e1af8  10 10 92 e5                                      ldr r1, [r2, #0x10]
005e1afc  04 20 8d e5                                      str r2, [sp, #4]
005e1b00  00 30 8d e5                                      str r3, [sp]
005e1b04  04 b2 f4 eb                                      bl #0x30e31c
005e1b08  00 00 50 e3                                      cmp r0, #0
005e1b0c  04 20 9d e5                                      ldr r2, [sp, #4]
005e1b10  00 30 9d e5                                      ldr r3, [sp]
005e1b14  c5 ff ff ba                                      blt #0x5e1a30
005e1b18  07 10 a0 e1                                      mov r1, r7
005e1b1c  18 00 a0 e3                                      mov r0, #0x18
005e1b20  04 20 8d e5                                      str r2, [sp, #4]
005e1b24  00 30 8d e5                                      str r3, [sp]
005e1b28  8e ba f4 eb                                      bl #0x310568
005e1b2c  00 30 9d e5                                      ldr r3, [sp]
005e1b30  00 60 a0 e1                                      mov r6, r0
005e1b34  00 10 93 e5                                      ldr r1, [r3]
005e1b38  10 10 80 e5                                      str r1, [r0, #0x10]
005e1b3c  04 30 93 e5                                      ldr r3, [r3, #4]
005e1b40  0c 70 80 e5                                      str r7, [r0, #0xc]
005e1b44  08 70 80 e5                                      str r7, [r0, #8]
005e1b48  14 30 80 e5                                      str r3, [r0, #0x14]
005e1b4c  04 20 9d e5                                      ldr r2, [sp, #4]
005e1b50  0c 00 82 e5                                      str r0, [r2, #0xc]
005e1b54  0c 30 94 e5                                      ldr r3, [r4, #0xc]
005e1b58  03 00 52 e1                                      cmp r2, r3
005e1b5c  0c 00 84 05                                      streq r0, [r4, #0xc]
005e1b60  d8 ff ff ea                                      b #0x5e1ac8

; FUNCTION 0x005e1b64, declared_size=440, range_size=440, mode=arm
; class-group: std::priv::_Rb_tree<char const*, glitch::core::SStringLess, std::pair<char const* const, glitch::video::E_SHADER_PARAMETER_TYPE>, std::priv::_Select1st<std::pair<char const* const, glitch::video::E_SHADER_PARAMETER_TYPE> >, std::priv::_MapTraitsT<std::pair<char const* const, glitch::video::E_SHADER_PARAMETER_TYPE> >, glitch::core::SAllocator<std::pair<char const* const, glitch::video::E_SHADER_PARAMETER_TYPE>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt4priv8_Rb_treeIPKcN6glitch4core11SStringLessESt4pairIKS2_NS3_5video23E_SHADER_PARAMETER_TYPEEENS_10_Select1stISA_EENS_11_MapTraitsTISA_EENS4_10SAllocatorISA_LNS3_6memory13E_MEMORY_HINTE0EEEE13insert_uniqueERKSA_
; demangled: std::priv::_Rb_tree<char const*, glitch::core::SStringLess, std::pair<char const* const, glitch::video::E_SHADER_PARAMETER_TYPE>, std::priv::_Select1st<std::pair<char const* const, glitch::video::E_SHADER_PARAMETER_TYPE> >, std::priv::_MapTraitsT<std::pair<char const* const, glitch::video::E_SHADER_PARAMETER_TYPE> >, glitch::core::SAllocator<std::pair<char const* const, glitch::video::E_SHADER_PARAMETER_TYPE>, (glitch::memory::E_MEMORY_HINT)0> >::insert_unique(std::pair<char const* const, glitch::video::E_SHADER_PARAMETER_TYPE> const&)
; decoder-mode: arm
005e1b64  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005e1b68  04 50 91 e5                                      ldr r5, [r1, #4]
005e1b6c  10 d0 4d e2                                      sub sp, sp, #0x10
005e1b70  01 60 a0 e1                                      mov r6, r1
005e1b74  00 00 55 e3                                      cmp r5, #0
005e1b78  00 40 a0 e1                                      mov r4, r0
005e1b7c  02 70 a0 e1                                      mov r7, r2
005e1b80  01 50 a0 01                                      moveq r5, r1
005e1b84  1b 00 00 0a                                      beq #0x5e1bf8
005e1b88  00 a0 92 e5                                      ldr sl, [r2]
005e1b8c  00 00 00 ea                                      b #0x5e1b94
005e1b90  03 50 a0 e1                                      mov r5, r3
005e1b94  10 80 95 e5                                      ldr r8, [r5, #0x10]
005e1b98  0a 00 a0 e1                                      mov r0, sl
005e1b9c  08 10 a0 e1                                      mov r1, r8
005e1ba0  dd b1 f4 eb                                      bl #0x30e31c
005e1ba4  00 00 50 e3                                      cmp r0, #0
005e1ba8  08 30 95 b5                                      ldrlt r3, [r5, #8]
005e1bac  0c 30 95 a5                                      ldrge r3, [r5, #0xc]
005e1bb0  01 20 a0 b3                                      movlt r2, #1
005e1bb4  00 20 a0 a3                                      movge r2, #0
005e1bb8  00 00 53 e3                                      cmp r3, #0
005e1bbc  f3 ff ff 1a                                      bne #0x5e1b90
005e1bc0  00 00 52 e3                                      cmp r2, #0
005e1bc4  05 90 a0 01                                      moveq sb, r5
005e1bc8  0a 00 00 1a                                      bne #0x5e1bf8
005e1bcc  08 00 a0 e1                                      mov r0, r8
005e1bd0  0a 10 a0 e1                                      mov r1, sl
005e1bd4  d0 b1 f4 eb                                      bl #0x30e31c
005e1bd8  00 00 50 e3                                      cmp r0, #0
005e1bdc  00 30 a0 a3                                      movge r3, #0
005e1be0  00 90 84 a5                                      strge sb, [r4]
005e1be4  04 30 c4 a5                                      strbge r3, [r4, #4]
005e1be8  1f 00 00 ba                                      blt #0x5e1c6c
005e1bec  04 00 a0 e1                                      mov r0, r4
005e1bf0  10 d0 8d e2                                      add sp, sp, #0x10
005e1bf4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005e1bf8  08 30 96 e5                                      ldr r3, [r6, #8]
005e1bfc  03 00 55 e1                                      cmp r5, r3
005e1c00  3a 00 00 0a                                      beq #0x5e1cf0
005e1c04  00 30 d5 e5                                      ldrb r3, [r5]
005e1c08  00 00 53 e3                                      cmp r3, #0
005e1c0c  03 00 00 1a                                      bne #0x5e1c20
005e1c10  04 30 95 e5                                      ldr r3, [r5, #4]
005e1c14  04 30 93 e5                                      ldr r3, [r3, #4]
005e1c18  03 00 55 e1                                      cmp r5, r3
005e1c1c  2e 00 00 0a                                      beq #0x5e1cdc
005e1c20  08 20 95 e5                                      ldr r2, [r5, #8]
005e1c24  00 00 52 e3                                      cmp r2, #0
005e1c28  01 00 00 1a                                      bne #0x5e1c34
005e1c2c  1a 00 00 ea                                      b #0x5e1c9c
005e1c30  03 20 a0 e1                                      mov r2, r3
005e1c34  0c 30 92 e5                                      ldr r3, [r2, #0xc]
005e1c38  00 00 53 e3                                      cmp r3, #0
005e1c3c  fb ff ff 1a                                      bne #0x5e1c30
005e1c40  10 80 92 e5                                      ldr r8, [r2, #0x10]
005e1c44  00 a0 97 e5                                      ldr sl, [r7]
005e1c48  02 90 a0 e1                                      mov sb, r2
005e1c4c  08 00 a0 e1                                      mov r0, r8
005e1c50  0a 10 a0 e1                                      mov r1, sl
005e1c54  b0 b1 f4 eb                                      bl #0x30e31c
005e1c58  00 00 50 e3                                      cmp r0, #0
005e1c5c  00 30 a0 a3                                      movge r3, #0
005e1c60  00 90 84 a5                                      strge sb, [r4]
005e1c64  04 30 c4 a5                                      strbge r3, [r4, #4]
005e1c68  df ff ff aa                                      bge #0x5e1bec
005e1c6c  05 20 a0 e1                                      mov r2, r5
005e1c70  07 30 a0 e1                                      mov r3, r7
005e1c74  00 c0 a0 e3                                      mov ip, #0
005e1c78  06 10 a0 e1                                      mov r1, r6
005e1c7c  08 00 8d e2                                      add r0, sp, #8
005e1c80  00 c0 8d e5                                      str ip, [sp]
005e1c84  60 ff ff eb                                      bl #0x5e1a0c
005e1c88  08 30 9d e5                                      ldr r3, [sp, #8]
005e1c8c  01 20 a0 e3                                      mov r2, #1
005e1c90  04 20 c4 e5                                      strb r2, [r4, #4]
005e1c94  00 30 84 e5                                      str r3, [r4]
005e1c98  d3 ff ff ea                                      b #0x5e1bec
005e1c9c  04 30 95 e5                                      ldr r3, [r5, #4]
005e1ca0  08 20 93 e5                                      ldr r2, [r3, #8]
005e1ca4  02 00 55 e1                                      cmp r5, r2
005e1ca8  03 90 a0 11                                      movne sb, r3
005e1cac  00 a0 97 15                                      ldrne sl, [r7]
005e1cb0  10 80 93 15                                      ldrne r8, [r3, #0x10]
005e1cb4  01 00 00 0a                                      beq #0x5e1cc0
005e1cb8  c3 ff ff ea                                      b #0x5e1bcc
005e1cbc  09 30 a0 e1                                      mov r3, sb
005e1cc0  04 90 93 e5                                      ldr sb, [r3, #4]
005e1cc4  08 20 99 e5                                      ldr r2, [sb, #8]
005e1cc8  03 00 52 e1                                      cmp r2, r3
005e1ccc  fa ff ff 0a                                      beq #0x5e1cbc
005e1cd0  00 a0 97 e5                                      ldr sl, [r7]
005e1cd4  10 80 99 e5                                      ldr r8, [sb, #0x10]
005e1cd8  bb ff ff ea                                      b #0x5e1bcc
005e1cdc  0c 30 95 e5                                      ldr r3, [r5, #0xc]
005e1ce0  00 a0 97 e5                                      ldr sl, [r7]
005e1ce4  03 90 a0 e1                                      mov sb, r3
005e1ce8  10 80 93 e5                                      ldr r8, [r3, #0x10]
005e1cec  b6 ff ff ea                                      b #0x5e1bcc
005e1cf0  05 20 a0 e1                                      mov r2, r5
005e1cf4  07 30 a0 e1                                      mov r3, r7
005e1cf8  06 10 a0 e1                                      mov r1, r6
005e1cfc  0c 00 8d e2                                      add r0, sp, #0xc
005e1d00  00 50 8d e5                                      str r5, [sp]
005e1d04  40 ff ff eb                                      bl #0x5e1a0c
005e1d08  0c 30 9d e5                                      ldr r3, [sp, #0xc]
005e1d0c  01 20 a0 e3                                      mov r2, #1
005e1d10  04 20 c4 e5                                      strb r2, [r4, #4]
005e1d14  00 30 84 e5                                      str r3, [r4]
005e1d18  b3 ff ff ea                                      b #0x5e1bec

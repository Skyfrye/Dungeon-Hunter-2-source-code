; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005dac7c, declared_size=88, range_size=88, mode=arm
; class-group: std::priv::_Rb_tree<glitch::core::SSharedString, std::less<glitch::core::SSharedString>, std::pair<glitch::core::SSharedString const, unsigned int>, std::priv::_Select1st<std::pair<glitch::core::SSharedString const, unsigned int> >, std::priv::_MapTraitsT<std::pair<glitch::core::SSharedString const, unsigned int> >, glitch::core::SAllocator<std::pair<glitch::core::SSharedString const, unsigned int>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt4priv8_Rb_treeIN6glitch4core13SSharedStringESt4lessIS3_ESt4pairIKS3_jENS_10_Select1stIS8_EENS_11_MapTraitsTIS8_EENS2_10SAllocatorIS8_LNS1_6memory13E_MEMORY_HINTE0EEEE8_M_eraseEPNS_18_Rb_tree_node_baseE
; demangled: std::priv::_Rb_tree<glitch::core::SSharedString, std::less<glitch::core::SSharedString>, std::pair<glitch::core::SSharedString const, unsigned int>, std::priv::_Select1st<std::pair<glitch::core::SSharedString const, unsigned int> >, std::priv::_MapTraitsT<std::pair<glitch::core::SSharedString const, unsigned int> >, glitch::core::SAllocator<std::pair<glitch::core::SSharedString const, unsigned int>, (glitch::memory::E_MEMORY_HINT)0> >::_M_erase(std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
005dac7c  70 40 2d e9                                      push {r4, r5, r6, lr}
005dac80  00 40 51 e2                                      subs r4, r1, #0
005dac84  00 50 a0 e1                                      mov r5, r0
005dac88  10 00 00 0a                                      beq #0x5dacd0
005dac8c  05 00 a0 e1                                      mov r0, r5
005dac90  0c 10 94 e5                                      ldr r1, [r4, #0xc]
005dac94  f8 ff ff eb                                      bl #0x5dac7c
005dac98  10 00 94 e5                                      ldr r0, [r4, #0x10]
005dac9c  08 60 94 e5                                      ldr r6, [r4, #8]
005daca0  00 00 50 e3                                      cmp r0, #0
005daca4  05 00 00 0a                                      beq #0x5dacc0
005daca8  00 30 90 e5                                      ldr r3, [r0]
005dacac  01 30 43 e2                                      sub r3, r3, #1
005dacb0  00 00 53 e3                                      cmp r3, #0
005dacb4  00 30 80 e5                                      str r3, [r0]
005dacb8  00 00 00 1a                                      bne #0x5dacc0
005dacbc  36 28 03 eb                                      bl #0x6a4d9c
005dacc0  04 00 a0 e1                                      mov r0, r4
005dacc4  e1 d5 f4 eb                                      bl #0x310450
005dacc8  00 40 56 e2                                      subs r4, r6, #0
005daccc  ee ff ff 1a                                      bne #0x5dac8c
005dacd0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x005dee20, declared_size=416, range_size=416, mode=arm
; class-group: std::priv::_Rb_tree<glitch::core::SSharedString, std::less<glitch::core::SSharedString>, std::pair<glitch::core::SSharedString const, unsigned int>, std::priv::_Select1st<std::pair<glitch::core::SSharedString const, unsigned int> >, std::priv::_MapTraitsT<std::pair<glitch::core::SSharedString const, unsigned int> >, glitch::core::SAllocator<std::pair<glitch::core::SSharedString const, unsigned int>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt4priv8_Rb_treeIN6glitch4core13SSharedStringESt4lessIS3_ESt4pairIKS3_jENS_10_Select1stIS8_EENS_11_MapTraitsTIS8_EENS2_10SAllocatorIS8_LNS1_6memory13E_MEMORY_HINTE0EEEE9_M_insertEPNS_18_Rb_tree_node_baseERKS8_SJ_SJ_.clone.8
; demangled: std::priv::_Rb_tree<glitch::core::SSharedString, std::less<glitch::core::SSharedString>, std::pair<glitch::core::SSharedString const, unsigned int>, std::priv::_Select1st<std::pair<glitch::core::SSharedString const, unsigned int> >, std::priv::_MapTraitsT<std::pair<glitch::core::SSharedString const, unsigned int> >, glitch::core::SAllocator<std::pair<glitch::core::SSharedString const, unsigned int>, (glitch::memory::E_MEMORY_HINT)0> >::_M_insert(std::priv::_Rb_tree_node_base*, std::pair<glitch::core::SSharedString const, unsigned int> const&, std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*) [clone .clone.8]
; decoder-mode: arm
005dee20  70 40 2d e9                                      push {r4, r5, r6, lr}
005dee24  02 00 51 e1                                      cmp r1, r2
005dee28  08 d0 4d e2                                      sub sp, sp, #8
005dee2c  01 40 a0 e1                                      mov r4, r1
005dee30  00 50 a0 e1                                      mov r5, r0
005dee34  1a 00 00 0a                                      beq #0x5deea4
005dee38  18 10 9d e5                                      ldr r1, [sp, #0x18]
005dee3c  00 00 51 e3                                      cmp r1, #0
005dee40  38 00 00 0a                                      beq #0x5def28
005dee44  00 10 a0 e3                                      mov r1, #0
005dee48  18 00 a0 e3                                      mov r0, #0x18
005dee4c  04 20 8d e5                                      str r2, [sp, #4]
005dee50  00 30 8d e5                                      str r3, [sp]
005dee54  c3 c5 f4 eb                                      bl #0x310568
005dee58  00 30 9d e5                                      ldr r3, [sp]
005dee5c  00 60 a0 e1                                      mov r6, r0
005dee60  00 10 93 e5                                      ldr r1, [r3]
005dee64  10 10 80 e5                                      str r1, [r0, #0x10]
005dee68  00 00 51 e3                                      cmp r1, #0
005dee6c  00 c0 91 15                                      ldrne ip, [r1]
005dee70  04 20 9d e5                                      ldr r2, [sp, #4]
005dee74  01 c0 8c 12                                      addne ip, ip, #1
005dee78  00 c0 81 15                                      strne ip, [r1]
005dee7c  04 10 93 e5                                      ldr r1, [r3, #4]
005dee80  00 30 a0 e3                                      mov r3, #0
005dee84  0c 30 80 e5                                      str r3, [r0, #0xc]
005dee88  14 10 80 e5                                      str r1, [r0, #0x14]
005dee8c  08 30 80 e5                                      str r3, [r0, #8]
005dee90  08 00 82 e5                                      str r0, [r2, #8]
005dee94  08 30 94 e5                                      ldr r3, [r4, #8]
005dee98  03 00 52 e1                                      cmp r2, r3
005dee9c  08 00 84 05                                      streq r0, [r4, #8]
005deea0  15 00 00 ea                                      b #0x5deefc
005deea4  00 10 a0 e3                                      mov r1, #0
005deea8  18 00 a0 e3                                      mov r0, #0x18
005deeac  04 20 8d e5                                      str r2, [sp, #4]
005deeb0  00 30 8d e5                                      str r3, [sp]
005deeb4  ab c5 f4 eb                                      bl #0x310568
005deeb8  00 30 9d e5                                      ldr r3, [sp]
005deebc  00 60 a0 e1                                      mov r6, r0
005deec0  00 10 93 e5                                      ldr r1, [r3]
005deec4  10 10 80 e5                                      str r1, [r0, #0x10]
005deec8  00 00 51 e3                                      cmp r1, #0
005deecc  00 c0 91 15                                      ldrne ip, [r1]
005deed0  04 20 9d e5                                      ldr r2, [sp, #4]
005deed4  01 c0 8c 12                                      addne ip, ip, #1
005deed8  00 c0 81 15                                      strne ip, [r1]
005deedc  04 10 93 e5                                      ldr r1, [r3, #4]
005deee0  00 30 a0 e3                                      mov r3, #0
005deee4  0c 30 80 e5                                      str r3, [r0, #0xc]
005deee8  14 10 80 e5                                      str r1, [r0, #0x14]
005deeec  08 30 80 e5                                      str r3, [r0, #8]
005deef0  08 00 84 e5                                      str r0, [r4, #8]
005deef4  04 00 84 e5                                      str r0, [r4, #4]
005deef8  0c 00 84 e5                                      str r0, [r4, #0xc]
005deefc  06 00 a0 e1                                      mov r0, r6
005def00  04 20 86 e5                                      str r2, [r6, #4]
005def04  04 10 84 e2                                      add r1, r4, #4
005def08  14 d2 f4 eb                                      bl #0x313760
005def0c  10 30 94 e5                                      ldr r3, [r4, #0x10]
005def10  05 00 a0 e1                                      mov r0, r5
005def14  01 30 83 e2                                      add r3, r3, #1
005def18  10 30 84 e5                                      str r3, [r4, #0x10]
005def1c  00 60 85 e5                                      str r6, [r5]
005def20  08 d0 8d e2                                      add sp, sp, #8
005def24  70 80 bd e8                                      pop {r4, r5, r6, pc}
005def28  00 00 93 e5                                      ldr r0, [r3]
005def2c  10 10 92 e5                                      ldr r1, [r2, #0x10]
005def30  04 20 8d e5                                      str r2, [sp, #4]
005def34  00 00 50 e3                                      cmp r0, #0
005def38  04 00 80 12                                      addne r0, r0, #4
005def3c  00 00 51 e3                                      cmp r1, #0
005def40  04 10 81 12                                      addne r1, r1, #4
005def44  00 30 8d e5                                      str r3, [sp]
005def48  f3 bc f4 eb                                      bl #0x30e31c
005def4c  00 00 50 e3                                      cmp r0, #0
005def50  04 20 9d e5                                      ldr r2, [sp, #4]
005def54  00 30 9d e5                                      ldr r3, [sp]
005def58  b9 ff ff ba                                      blt #0x5dee44
005def5c  00 10 a0 e3                                      mov r1, #0
005def60  18 00 a0 e3                                      mov r0, #0x18
005def64  04 20 8d e5                                      str r2, [sp, #4]
005def68  00 30 8d e5                                      str r3, [sp]
005def6c  7d c5 f4 eb                                      bl #0x310568
005def70  00 30 9d e5                                      ldr r3, [sp]
005def74  00 10 93 e5                                      ldr r1, [r3]
005def78  10 10 80 e5                                      str r1, [r0, #0x10]
005def7c  00 00 51 e3                                      cmp r1, #0
005def80  04 20 9d e5                                      ldr r2, [sp, #4]
005def84  02 00 00 0a                                      beq #0x5def94
005def88  00 c0 91 e5                                      ldr ip, [r1]
005def8c  01 c0 8c e2                                      add ip, ip, #1
005def90  00 c0 81 e5                                      str ip, [r1]
005def94  04 10 93 e5                                      ldr r1, [r3, #4]
005def98  00 30 a0 e3                                      mov r3, #0
005def9c  0c 30 80 e5                                      str r3, [r0, #0xc]
005defa0  14 10 80 e5                                      str r1, [r0, #0x14]
005defa4  08 30 80 e5                                      str r3, [r0, #8]
005defa8  0c 00 82 e5                                      str r0, [r2, #0xc]
005defac  0c 30 94 e5                                      ldr r3, [r4, #0xc]
005defb0  00 60 a0 e1                                      mov r6, r0
005defb4  03 00 52 e1                                      cmp r2, r3
005defb8  0c 00 84 05                                      streq r0, [r4, #0xc]
005defbc  ce ff ff ea                                      b #0x5deefc

; FUNCTION 0x005defc0, declared_size=448, range_size=448, mode=arm
; class-group: std::priv::_Rb_tree<glitch::core::SSharedString, std::less<glitch::core::SSharedString>, std::pair<glitch::core::SSharedString const, unsigned int>, std::priv::_Select1st<std::pair<glitch::core::SSharedString const, unsigned int> >, std::priv::_MapTraitsT<std::pair<glitch::core::SSharedString const, unsigned int> >, glitch::core::SAllocator<std::pair<glitch::core::SSharedString const, unsigned int>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt4priv8_Rb_treeIN6glitch4core13SSharedStringESt4lessIS3_ESt4pairIKS3_jENS_10_Select1stIS8_EENS_11_MapTraitsTIS8_EENS2_10SAllocatorIS8_LNS1_6memory13E_MEMORY_HINTE0EEEE13insert_uniqueERKS8_
; demangled: std::priv::_Rb_tree<glitch::core::SSharedString, std::less<glitch::core::SSharedString>, std::pair<glitch::core::SSharedString const, unsigned int>, std::priv::_Select1st<std::pair<glitch::core::SSharedString const, unsigned int> >, std::priv::_MapTraitsT<std::pair<glitch::core::SSharedString const, unsigned int> >, glitch::core::SAllocator<std::pair<glitch::core::SSharedString const, unsigned int>, (glitch::memory::E_MEMORY_HINT)0> >::insert_unique(std::pair<glitch::core::SSharedString const, unsigned int> const&)
; decoder-mode: arm
005defc0  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005defc4  04 50 91 e5                                      ldr r5, [r1, #4]
005defc8  10 d0 4d e2                                      sub sp, sp, #0x10
005defcc  01 60 a0 e1                                      mov r6, r1
005defd0  00 00 55 e3                                      cmp r5, #0
005defd4  00 40 a0 e1                                      mov r4, r0
005defd8  02 70 a0 e1                                      mov r7, r2
005defdc  01 50 a0 01                                      moveq r5, r1
005defe0  24 00 00 0a                                      beq #0x5df078
005defe4  00 a0 92 e5                                      ldr sl, [r2]
005defe8  04 90 8a e2                                      add sb, sl, #4
005defec  00 00 00 ea                                      b #0x5deff4
005deff0  03 50 a0 e1                                      mov r5, r3
005deff4  10 80 95 e5                                      ldr r8, [r5, #0x10]
005deff8  00 00 5a e3                                      cmp sl, #0
005deffc  09 00 a0 11                                      movne r0, sb
005df000  00 00 a0 03                                      moveq r0, #0
005df004  00 00 58 e3                                      cmp r8, #0
005df008  08 10 a0 01                                      moveq r1, r8
005df00c  04 10 88 12                                      addne r1, r8, #4
005df010  c1 bc f4 eb                                      bl #0x30e31c
005df014  00 00 50 e3                                      cmp r0, #0
005df018  08 30 95 b5                                      ldrlt r3, [r5, #8]
005df01c  0c 30 95 a5                                      ldrge r3, [r5, #0xc]
005df020  01 20 a0 b3                                      movlt r2, #1
005df024  00 20 a0 a3                                      movge r2, #0
005df028  00 00 53 e3                                      cmp r3, #0
005df02c  ef ff ff 1a                                      bne #0x5deff0
005df030  00 00 52 e3                                      cmp r2, #0
005df034  05 90 a0 01                                      moveq sb, r5
005df038  0e 00 00 1a                                      bne #0x5df078
005df03c  00 00 58 e3                                      cmp r8, #0
005df040  08 00 a0 01                                      moveq r0, r8
005df044  04 00 88 12                                      addne r0, r8, #4
005df048  00 00 5a e3                                      cmp sl, #0
005df04c  0a 10 a0 01                                      moveq r1, sl
005df050  04 10 8a 12                                      addne r1, sl, #4
005df054  b0 bc f4 eb                                      bl #0x30e31c
005df058  00 00 50 e3                                      cmp r0, #0
005df05c  00 30 a0 a3                                      movge r3, #0
005df060  00 90 84 a5                                      strge sb, [r4]
005df064  04 30 c4 a5                                      strbge r3, [r4, #4]
005df068  18 00 00 ba                                      blt #0x5df0d0
005df06c  04 00 a0 e1                                      mov r0, r4
005df070  10 d0 8d e2                                      add sp, sp, #0x10
005df074  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005df078  08 30 96 e5                                      ldr r3, [r6, #8]
005df07c  03 00 55 e1                                      cmp r5, r3
005df080  33 00 00 0a                                      beq #0x5df154
005df084  00 30 d5 e5                                      ldrb r3, [r5]
005df088  00 00 53 e3                                      cmp r3, #0
005df08c  03 00 00 1a                                      bne #0x5df0a0
005df090  04 30 95 e5                                      ldr r3, [r5, #4]
005df094  04 30 93 e5                                      ldr r3, [r3, #4]
005df098  03 00 55 e1                                      cmp r5, r3
005df09c  27 00 00 0a                                      beq #0x5df140
005df0a0  08 20 95 e5                                      ldr r2, [r5, #8]
005df0a4  00 00 52 e3                                      cmp r2, #0
005df0a8  01 00 00 1a                                      bne #0x5df0b4
005df0ac  13 00 00 ea                                      b #0x5df100
005df0b0  03 20 a0 e1                                      mov r2, r3
005df0b4  0c 30 92 e5                                      ldr r3, [r2, #0xc]
005df0b8  00 00 53 e3                                      cmp r3, #0
005df0bc  fb ff ff 1a                                      bne #0x5df0b0
005df0c0  02 90 a0 e1                                      mov sb, r2
005df0c4  00 a0 97 e5                                      ldr sl, [r7]
005df0c8  10 80 92 e5                                      ldr r8, [r2, #0x10]
005df0cc  da ff ff ea                                      b #0x5df03c
005df0d0  05 20 a0 e1                                      mov r2, r5
005df0d4  07 30 a0 e1                                      mov r3, r7
005df0d8  00 c0 a0 e3                                      mov ip, #0
005df0dc  06 10 a0 e1                                      mov r1, r6
005df0e0  08 00 8d e2                                      add r0, sp, #8
005df0e4  00 c0 8d e5                                      str ip, [sp]
005df0e8  4c ff ff eb                                      bl #0x5dee20
005df0ec  08 30 9d e5                                      ldr r3, [sp, #8]
005df0f0  01 20 a0 e3                                      mov r2, #1
005df0f4  04 20 c4 e5                                      strb r2, [r4, #4]
005df0f8  00 30 84 e5                                      str r3, [r4]
005df0fc  da ff ff ea                                      b #0x5df06c
005df100  04 30 95 e5                                      ldr r3, [r5, #4]
005df104  08 20 93 e5                                      ldr r2, [r3, #8]
005df108  02 00 55 e1                                      cmp r5, r2
005df10c  03 90 a0 11                                      movne sb, r3
005df110  00 a0 97 15                                      ldrne sl, [r7]
005df114  10 80 93 15                                      ldrne r8, [r3, #0x10]
005df118  01 00 00 0a                                      beq #0x5df124
005df11c  c6 ff ff ea                                      b #0x5df03c
005df120  09 30 a0 e1                                      mov r3, sb
005df124  04 90 93 e5                                      ldr sb, [r3, #4]
005df128  08 20 99 e5                                      ldr r2, [sb, #8]
005df12c  03 00 52 e1                                      cmp r2, r3
005df130  fa ff ff 0a                                      beq #0x5df120
005df134  00 a0 97 e5                                      ldr sl, [r7]
005df138  10 80 99 e5                                      ldr r8, [sb, #0x10]
005df13c  be ff ff ea                                      b #0x5df03c
005df140  0c 30 95 e5                                      ldr r3, [r5, #0xc]
005df144  00 a0 97 e5                                      ldr sl, [r7]
005df148  03 90 a0 e1                                      mov sb, r3
005df14c  10 80 93 e5                                      ldr r8, [r3, #0x10]
005df150  b9 ff ff ea                                      b #0x5df03c
005df154  05 20 a0 e1                                      mov r2, r5
005df158  07 30 a0 e1                                      mov r3, r7
005df15c  06 10 a0 e1                                      mov r1, r6
005df160  0c 00 8d e2                                      add r0, sp, #0xc
005df164  00 50 8d e5                                      str r5, [sp]
005df168  2c ff ff eb                                      bl #0x5dee20
005df16c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
005df170  01 20 a0 e3                                      mov r2, #1
005df174  04 20 c4 e5                                      strb r2, [r4, #4]
005df178  00 30 84 e5                                      str r3, [r4]
005df17c  ba ff ff ea                                      b #0x5df06c

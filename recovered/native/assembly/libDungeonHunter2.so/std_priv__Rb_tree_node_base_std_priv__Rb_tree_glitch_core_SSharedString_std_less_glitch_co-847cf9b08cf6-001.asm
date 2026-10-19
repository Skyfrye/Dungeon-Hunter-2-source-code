; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005daa7c, declared_size=144, range_size=144, mode=arm
; class-group: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<glitch::core::SSharedString, std::less<glitch::core::SSharedString>, std::pair<glitch::core::SSharedString const, unsigned int>, std::priv::_Select1st<std::pair<glitch::core::SSharedString const, unsigned int> >, std::priv::_MapTraitsT<std::pair<glitch::core::SSharedString const, unsigned int> >, glitch::core::SAllocator<std::pair<glitch::core::SSharedString const, unsigned int>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNKSt4priv8_Rb_treeIN6glitch4core13SSharedStringESt4lessIS3_ESt4pairIKS3_jENS_10_Select1stIS8_EENS_11_MapTraitsTIS8_EENS2_10SAllocatorIS8_LNS1_6memory13E_MEMORY_HINTE0EEEE7_M_findIS3_EEPNS_18_Rb_tree_node_baseERKT_
; demangled: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<glitch::core::SSharedString, std::less<glitch::core::SSharedString>, std::pair<glitch::core::SSharedString const, unsigned int>, std::priv::_Select1st<std::pair<glitch::core::SSharedString const, unsigned int> >, std::priv::_MapTraitsT<std::pair<glitch::core::SSharedString const, unsigned int> >, glitch::core::SAllocator<std::pair<glitch::core::SSharedString const, unsigned int>, (glitch::memory::E_MEMORY_HINT)0> >::_M_find<glitch::core::SSharedString>(glitch::core::SSharedString const&) const
; decoder-mode: arm
005daa7c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005daa80  04 40 90 e5                                      ldr r4, [r0, #4]
005daa84  00 80 a0 e1                                      mov r8, r0
005daa88  00 00 54 e3                                      cmp r4, #0
005daa8c  1b 00 00 0a                                      beq #0x5dab00
005daa90  00 60 91 e5                                      ldr r6, [r1]
005daa94  00 70 a0 e1                                      mov r7, r0
005daa98  04 50 86 e2                                      add r5, r6, #4
005daa9c  10 00 94 e5                                      ldr r0, [r4, #0x10]
005daaa0  00 00 50 e3                                      cmp r0, #0
005daaa4  04 00 80 12                                      addne r0, r0, #4
005daaa8  00 00 56 e3                                      cmp r6, #0
005daaac  05 10 a0 11                                      movne r1, r5
005daab0  00 10 a0 03                                      moveq r1, #0
005daab4  18 ce f4 eb                                      bl #0x30e31c
005daab8  00 00 50 e3                                      cmp r0, #0
005daabc  04 70 a0 a1                                      movge r7, r4
005daac0  0c 40 94 b5                                      ldrlt r4, [r4, #0xc]
005daac4  08 40 94 a5                                      ldrge r4, [r4, #8]
005daac8  00 00 54 e3                                      cmp r4, #0
005daacc  f2 ff ff 1a                                      bne #0x5daa9c
005daad0  08 00 57 e1                                      cmp r7, r8
005daad4  0a 00 00 0a                                      beq #0x5dab04
005daad8  10 10 97 e5                                      ldr r1, [r7, #0x10]
005daadc  00 00 56 e3                                      cmp r6, #0
005daae0  00 50 a0 03                                      moveq r5, #0
005daae4  00 00 51 e3                                      cmp r1, #0
005daae8  04 10 a0 01                                      moveq r1, r4
005daaec  04 10 81 12                                      addne r1, r1, #4
005daaf0  05 00 a0 e1                                      mov r0, r5
005daaf4  08 ce f4 eb                                      bl #0x30e31c
005daaf8  00 00 50 e3                                      cmp r0, #0
005daafc  00 00 00 aa                                      bge #0x5dab04
005dab00  08 70 a0 e1                                      mov r7, r8
005dab04  07 00 a0 e1                                      mov r0, r7
005dab08  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

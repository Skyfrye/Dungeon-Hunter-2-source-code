; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006a0514, declared_size=52, range_size=52, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, int>, std::priv::_Select1st<std::pair<int const, int> >, std::priv::_MapTraitsT<std::pair<int const, int> >, glitch::core::SAllocator<std::pair<int const, int>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKiiENS_10_Select1stIS5_EENS_11_MapTraitsTIS5_EEN6glitch4core10SAllocatorIS5_LNSA_6memory13E_MEMORY_HINTE0EEEE8_M_eraseEPNS_18_Rb_tree_node_baseE
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, int>, std::priv::_Select1st<std::pair<int const, int> >, std::priv::_MapTraitsT<std::pair<int const, int> >, glitch::core::SAllocator<std::pair<int const, int>, (glitch::memory::E_MEMORY_HINT)0> >::_M_erase(std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
006a0514  70 40 2d e9                                      push {r4, r5, r6, lr}
006a0518  00 40 51 e2                                      subs r4, r1, #0
006a051c  00 50 a0 e1                                      mov r5, r0
006a0520  07 00 00 0a                                      beq #0x6a0544
006a0524  0c 10 94 e5                                      ldr r1, [r4, #0xc]
006a0528  05 00 a0 e1                                      mov r0, r5
006a052c  f8 ff ff eb                                      bl #0x6a0514
006a0530  08 60 94 e5                                      ldr r6, [r4, #8]
006a0534  04 00 a0 e1                                      mov r0, r4
006a0538  c4 bf f1 eb                                      bl #0x310450
006a053c  00 40 56 e2                                      subs r4, r6, #0
006a0540  f7 ff ff 1a                                      bne #0x6a0524
006a0544  70 80 bd e8                                      pop {r4, r5, r6, pc}

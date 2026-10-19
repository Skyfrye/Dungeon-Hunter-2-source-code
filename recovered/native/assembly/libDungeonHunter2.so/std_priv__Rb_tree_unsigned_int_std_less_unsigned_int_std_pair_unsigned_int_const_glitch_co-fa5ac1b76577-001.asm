; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0066f6f0, declared_size=52, range_size=52, mode=arm
; class-group: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, glitch::collada::detail::CColladaSoftwareSkinTechnique::SSoftwareColorGenData>, std::priv::_Select1st<std::pair<unsigned int const, glitch::collada::detail::CColladaSoftwareSkinTechnique::SSoftwareColorGenData> >, std::priv::_MapTraitsT<std::pair<unsigned int const, glitch::collada::detail::CColladaSoftwareSkinTechnique::SSoftwareColorGenData> >, glitch::core::SAllocator<std::pair<unsigned int const, glitch::collada::detail::CColladaSoftwareSkinTechnique::SSoftwareColorGenData>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt4priv8_Rb_treeIjSt4lessIjESt4pairIKjN6glitch7collada6detail29CColladaSoftwareSkinTechnique21SSoftwareColorGenDataEENS_10_Select1stISA_EENS_11_MapTraitsTISA_EENS5_4core10SAllocatorISA_LNS5_6memory13E_MEMORY_HINTE0EEEE8_M_eraseEPNS_18_Rb_tree_node_baseE
; demangled: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, glitch::collada::detail::CColladaSoftwareSkinTechnique::SSoftwareColorGenData>, std::priv::_Select1st<std::pair<unsigned int const, glitch::collada::detail::CColladaSoftwareSkinTechnique::SSoftwareColorGenData> >, std::priv::_MapTraitsT<std::pair<unsigned int const, glitch::collada::detail::CColladaSoftwareSkinTechnique::SSoftwareColorGenData> >, glitch::core::SAllocator<std::pair<unsigned int const, glitch::collada::detail::CColladaSoftwareSkinTechnique::SSoftwareColorGenData>, (glitch::memory::E_MEMORY_HINT)0> >::_M_erase(std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
0066f6f0  70 40 2d e9                                      push {r4, r5, r6, lr}
0066f6f4  00 40 51 e2                                      subs r4, r1, #0
0066f6f8  00 50 a0 e1                                      mov r5, r0
0066f6fc  07 00 00 0a                                      beq #0x66f720
0066f700  0c 10 94 e5                                      ldr r1, [r4, #0xc]
0066f704  05 00 a0 e1                                      mov r0, r5
0066f708  f8 ff ff eb                                      bl #0x66f6f0
0066f70c  08 60 94 e5                                      ldr r6, [r4, #8]
0066f710  04 00 a0 e1                                      mov r0, r4
0066f714  4d 83 f2 eb                                      bl #0x310450
0066f718  00 40 56 e2                                      subs r4, r6, #0
0066f71c  f7 ff ff 1a                                      bne #0x66f700
0066f720  70 80 bd e8                                      pop {r4, r5, r6, pc}

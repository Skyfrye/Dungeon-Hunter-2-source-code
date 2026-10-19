; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005d9734, declared_size=52, range_size=52, mode=arm
; class-group: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, glitch::video::IBatchBaker*>, std::priv::_Select1st<std::pair<unsigned int const, glitch::video::IBatchBaker*> >, std::priv::_MapTraitsT<std::pair<unsigned int const, glitch::video::IBatchBaker*> >, glitch::core::SAllocator<std::pair<unsigned int const, glitch::video::IBatchBaker*>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt4priv8_Rb_treeIjSt4lessIjESt4pairIKjPN6glitch5video11IBatchBakerEENS_10_Select1stIS9_EENS_11_MapTraitsTIS9_EENS5_4core10SAllocatorIS9_LNS5_6memory13E_MEMORY_HINTE0EEEE8_M_eraseEPNS_18_Rb_tree_node_baseE.clone.10
; demangled: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, glitch::video::IBatchBaker*>, std::priv::_Select1st<std::pair<unsigned int const, glitch::video::IBatchBaker*> >, std::priv::_MapTraitsT<std::pair<unsigned int const, glitch::video::IBatchBaker*> >, glitch::core::SAllocator<std::pair<unsigned int const, glitch::video::IBatchBaker*>, (glitch::memory::E_MEMORY_HINT)0> >::_M_erase(std::priv::_Rb_tree_node_base*) [clone .clone.10]
; decoder-mode: arm
005d9734  70 40 2d e9                                      push {r4, r5, r6, lr}
005d9738  00 40 50 e2                                      subs r4, r0, #0
005d973c  08 00 00 0a                                      beq #0x5d9764
005d9740  00 00 00 ea                                      b #0x5d9748
005d9744  05 40 a0 e1                                      mov r4, r5
005d9748  0c 00 94 e5                                      ldr r0, [r4, #0xc]
005d974c  f8 ff ff eb                                      bl #0x5d9734
005d9750  08 50 94 e5                                      ldr r5, [r4, #8]
005d9754  04 00 a0 e1                                      mov r0, r4
005d9758  3c db f4 eb                                      bl #0x310450
005d975c  00 00 55 e3                                      cmp r5, #0
005d9760  f7 ff ff 1a                                      bne #0x5d9744
005d9764  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0060abc4, declared_size=52, range_size=52, mode=arm
; class-group: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, glitch::video::IBatchBaker*>, std::priv::_Select1st<std::pair<unsigned int const, glitch::video::IBatchBaker*> >, std::priv::_MapTraitsT<std::pair<unsigned int const, glitch::video::IBatchBaker*> >, glitch::core::SAllocator<std::pair<unsigned int const, glitch::video::IBatchBaker*>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt4priv8_Rb_treeIjSt4lessIjESt4pairIKjPN6glitch5video11IBatchBakerEENS_10_Select1stIS9_EENS_11_MapTraitsTIS9_EENS5_4core10SAllocatorIS9_LNS5_6memory13E_MEMORY_HINTE0EEEE8_M_eraseEPNS_18_Rb_tree_node_baseE
; demangled: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, glitch::video::IBatchBaker*>, std::priv::_Select1st<std::pair<unsigned int const, glitch::video::IBatchBaker*> >, std::priv::_MapTraitsT<std::pair<unsigned int const, glitch::video::IBatchBaker*> >, glitch::core::SAllocator<std::pair<unsigned int const, glitch::video::IBatchBaker*>, (glitch::memory::E_MEMORY_HINT)0> >::_M_erase(std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
0060abc4  70 40 2d e9                                      push {r4, r5, r6, lr}
0060abc8  00 40 51 e2                                      subs r4, r1, #0
0060abcc  00 50 a0 e1                                      mov r5, r0
0060abd0  07 00 00 0a                                      beq #0x60abf4
0060abd4  0c 10 94 e5                                      ldr r1, [r4, #0xc]
0060abd8  05 00 a0 e1                                      mov r0, r5
0060abdc  f8 ff ff eb                                      bl #0x60abc4
0060abe0  08 60 94 e5                                      ldr r6, [r4, #8]
0060abe4  04 00 a0 e1                                      mov r0, r4
0060abe8  18 16 f4 eb                                      bl #0x310450
0060abec  00 40 56 e2                                      subs r4, r6, #0
0060abf0  f7 ff ff 1a                                      bne #0x60abd4
0060abf4  70 80 bd e8                                      pop {r4, r5, r6, pc}

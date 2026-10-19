; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00522f00, declared_size=56, range_size=56, mode=arm
; class-group: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, PFGOuterEdge*>, std::priv::_Select1st<std::pair<unsigned int const, PFGOuterEdge*> >, std::priv::_MapTraitsT<std::pair<unsigned int const, PFGOuterEdge*> >, std::allocator<std::pair<unsigned int const, PFGOuterEdge*> > >
; alias: _ZNSt4priv8_Rb_treeIjSt4lessIjESt4pairIKjP12PFGOuterEdgeENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE8_M_eraseEPNS_18_Rb_tree_node_baseE
; demangled: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, PFGOuterEdge*>, std::priv::_Select1st<std::pair<unsigned int const, PFGOuterEdge*> >, std::priv::_MapTraitsT<std::pair<unsigned int const, PFGOuterEdge*> >, std::allocator<std::pair<unsigned int const, PFGOuterEdge*> > >::_M_erase(std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
00522f00  70 40 2d e9                                      push {r4, r5, r6, lr}
00522f04  00 40 51 e2                                      subs r4, r1, #0
00522f08  00 60 a0 e1                                      mov r6, r0
00522f0c  08 00 00 0a                                      beq #0x522f34
00522f10  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00522f14  06 00 a0 e1                                      mov r0, r6
00522f18  f8 ff ff eb                                      bl #0x522f00
00522f1c  08 50 94 e5                                      ldr r5, [r4, #8]
00522f20  04 00 a0 e1                                      mov r0, r4
00522f24  18 10 a0 e3                                      mov r1, #0x18
00522f28  f4 97 07 eb                                      bl #0x708f00
00522f2c  00 40 55 e2                                      subs r4, r5, #0
00522f30  f6 ff ff 1a                                      bne #0x522f10
00522f34  70 80 bd e8                                      pop {r4, r5, r6, pc}

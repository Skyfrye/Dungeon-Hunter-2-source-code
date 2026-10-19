; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003cd54c, declared_size=56, range_size=56, mode=arm
; class-group: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, Character*>, std::priv::_Select1st<std::pair<unsigned int const, Character*> >, std::priv::_MapTraitsT<std::pair<unsigned int const, Character*> >, std::allocator<std::pair<unsigned int const, Character*> > >
; alias: _ZNSt4priv8_Rb_treeIjSt4lessIjESt4pairIKjP9CharacterENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE8_M_eraseEPNS_18_Rb_tree_node_baseE
; demangled: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, Character*>, std::priv::_Select1st<std::pair<unsigned int const, Character*> >, std::priv::_MapTraitsT<std::pair<unsigned int const, Character*> >, std::allocator<std::pair<unsigned int const, Character*> > >::_M_erase(std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
003cd54c  70 40 2d e9                                      push {r4, r5, r6, lr}
003cd550  00 40 51 e2                                      subs r4, r1, #0
003cd554  00 60 a0 e1                                      mov r6, r0
003cd558  08 00 00 0a                                      beq #0x3cd580
003cd55c  0c 10 94 e5                                      ldr r1, [r4, #0xc]
003cd560  06 00 a0 e1                                      mov r0, r6
003cd564  f8 ff ff eb                                      bl #0x3cd54c
003cd568  08 50 94 e5                                      ldr r5, [r4, #8]
003cd56c  04 00 a0 e1                                      mov r0, r4
003cd570  18 10 a0 e3                                      mov r1, #0x18
003cd574  61 ee 0c eb                                      bl #0x708f00
003cd578  00 40 55 e2                                      subs r4, r5, #0
003cd57c  f6 ff ff 1a                                      bne #0x3cd55c
003cd580  70 80 bd e8                                      pop {r4, r5, r6, pc}

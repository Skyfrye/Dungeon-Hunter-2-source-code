; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00816118, declared_size=56, range_size=56, mode=arm
; class-group: std::priv::_Rb_tree<long, std::less<long>, std::pair<long const, int>, std::priv::_Select1st<std::pair<long const, int> >, std::priv::_MultimapTraitsT<std::pair<long const, int> >, std::allocator<std::pair<long const, int> > >
; alias: _ZNSt4priv8_Rb_treeIlSt4lessIlESt4pairIKliENS_10_Select1stIS5_EENS_16_MultimapTraitsTIS5_EESaIS5_EE8_M_eraseEPNS_18_Rb_tree_node_baseE
; demangled: std::priv::_Rb_tree<long, std::less<long>, std::pair<long const, int>, std::priv::_Select1st<std::pair<long const, int> >, std::priv::_MultimapTraitsT<std::pair<long const, int> >, std::allocator<std::pair<long const, int> > >::_M_erase(std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
00816118  70 40 2d e9                                      push {r4, r5, r6, lr}
0081611c  00 40 51 e2                                      subs r4, r1, #0
00816120  00 60 a0 e1                                      mov r6, r0
00816124  08 00 00 0a                                      beq #0x81614c
00816128  0c 10 94 e5                                      ldr r1, [r4, #0xc]
0081612c  06 00 a0 e1                                      mov r0, r6
00816130  f8 ff ff eb                                      bl #0x816118
00816134  08 50 94 e5                                      ldr r5, [r4, #8]
00816138  04 00 a0 e1                                      mov r0, r4
0081613c  18 10 a0 e3                                      mov r1, #0x18
00816140  7c a0 02 eb                                      bl #0x8be338
00816144  00 40 55 e2                                      subs r4, r5, #0
00816148  f6 ff ff 1a                                      bne #0x816128
0081614c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00825588, declared_size=60, range_size=60, mode=arm
; class-group: std::priv::_Rb_tree<long, std::less<long>, std::pair<long const, int>, std::priv::_Select1st<std::pair<long const, int> >, std::priv::_MultimapTraitsT<std::pair<long const, int> >, std::allocator<std::pair<long const, int> > >
; alias: _ZNSt4priv8_Rb_treeIlSt4lessIlESt4pairIKliENS_10_Select1stIS5_EENS_16_MultimapTraitsTIS5_EESaIS5_EE5eraseENS_17_Rb_tree_iteratorIS5_S9_EE
; demangled: std::priv::_Rb_tree<long, std::less<long>, std::pair<long const, int>, std::priv::_Select1st<std::pair<long const, int> >, std::priv::_MultimapTraitsT<std::pair<long const, int> >, std::allocator<std::pair<long const, int> > >::erase(std::priv::_Rb_tree_iterator<std::pair<long const, int>, std::priv::_MultimapTraitsT<std::pair<long const, int> > >)
; decoder-mode: arm
00825588  10 40 2d e9                                      push {r4, lr}
0082558c  00 40 a0 e1                                      mov r4, r0
00825590  08 20 84 e2                                      add r2, r4, #8
00825594  00 00 91 e5                                      ldr r0, [r1]
00825598  0c 30 84 e2                                      add r3, r4, #0xc
0082559c  04 10 84 e2                                      add r1, r4, #4
008255a0  97 42 ec eb                                      bl #0x336004
008255a4  00 00 50 e3                                      cmp r0, #0
008255a8  01 00 00 0a                                      beq #0x8255b4
008255ac  18 10 a0 e3                                      mov r1, #0x18
008255b0  60 63 02 eb                                      bl #0x8be338
008255b4  10 30 94 e5                                      ldr r3, [r4, #0x10]
008255b8  01 30 43 e2                                      sub r3, r3, #1
008255bc  10 30 84 e5                                      str r3, [r4, #0x10]
008255c0  10 80 bd e8                                      pop {r4, pc}

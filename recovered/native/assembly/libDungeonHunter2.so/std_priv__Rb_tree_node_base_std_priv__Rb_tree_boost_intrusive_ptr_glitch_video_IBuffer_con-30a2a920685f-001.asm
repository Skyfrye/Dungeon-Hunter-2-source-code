; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006a172c, declared_size=168, range_size=168, mode=arm
; class-group: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<boost::intrusive_ptr<glitch::video::IBuffer const>, std::less<boost::intrusive_ptr<glitch::video::IBuffer const> >, std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const, glitch::core::SBufferData>, std::priv::_Select1st<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const, glitch::core::SBufferData> >, std::priv::_MapTraitsT<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const, glitch::core::SBufferData> >, std::allocator<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const, glitch::core::SBufferData> > >
; alias: _ZNKSt4priv8_Rb_treeIN5boost13intrusive_ptrIKN6glitch5video7IBufferEEESt4lessIS7_ESt4pairIKS7_NS3_4core11SBufferDataEENS_10_Select1stISE_EENS_11_MapTraitsTISE_EESaISE_EE7_M_findINS2_IS5_EEEEPNS_18_Rb_tree_node_baseERKT_
; demangled: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<boost::intrusive_ptr<glitch::video::IBuffer const>, std::less<boost::intrusive_ptr<glitch::video::IBuffer const> >, std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const, glitch::core::SBufferData>, std::priv::_Select1st<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const, glitch::core::SBufferData> >, std::priv::_MapTraitsT<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const, glitch::core::SBufferData> >, std::allocator<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const, glitch::core::SBufferData> > >::_M_find<boost::intrusive_ptr<glitch::video::IBuffer> >(boost::intrusive_ptr<glitch::video::IBuffer> const&) const
; decoder-mode: arm
006a172c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
006a1730  04 40 90 e5                                      ldr r4, [r0, #4]
006a1734  00 50 a0 e1                                      mov r5, r0
006a1738  01 80 a0 e1                                      mov r8, r1
006a173c  00 00 54 e3                                      cmp r4, #0
006a1740  20 00 00 0a                                      beq #0x6a17c8
006a1744  00 a0 a0 e1                                      mov sl, r0
006a1748  01 00 00 ea                                      b #0x6a1754
006a174c  00 00 54 e3                                      cmp r4, #0
006a1750  0e 00 00 0a                                      beq #0x6a1790
006a1754  00 60 98 e5                                      ldr r6, [r8]
006a1758  00 00 56 e2                                      subs r0, r6, #0
006a175c  07 00 00 0a                                      beq #0x6a1780
006a1760  04 30 96 e5                                      ldr r3, [r6, #4]
006a1764  01 30 83 e2                                      add r3, r3, #1
006a1768  04 30 86 e5                                      str r3, [r6, #4]
006a176c  10 70 94 e5                                      ldr r7, [r4, #0x10]
006a1770  83 ef f1 eb                                      bl #0x31d584
006a1774  06 00 57 e1                                      cmp r7, r6
006a1778  0c 40 94 35                                      ldrlo r4, [r4, #0xc]
006a177c  f2 ff ff 3a                                      blo #0x6a174c
006a1780  04 a0 a0 e1                                      mov sl, r4
006a1784  08 40 94 e5                                      ldr r4, [r4, #8]
006a1788  00 00 54 e3                                      cmp r4, #0
006a178c  f0 ff ff 1a                                      bne #0x6a1754
006a1790  05 00 5a e1                                      cmp sl, r5
006a1794  0c 00 00 0a                                      beq #0x6a17cc
006a1798  00 40 98 e5                                      ldr r4, [r8]
006a179c  00 00 54 e3                                      cmp r4, #0
006a17a0  04 30 94 15                                      ldrne r3, [r4, #4]
006a17a4  01 30 83 12                                      addne r3, r3, #1
006a17a8  04 30 84 15                                      strne r3, [r4, #4]
006a17ac  00 00 54 e3                                      cmp r4, #0
006a17b0  10 60 9a e5                                      ldr r6, [sl, #0x10]
006a17b4  01 00 00 0a                                      beq #0x6a17c0
006a17b8  04 00 a0 e1                                      mov r0, r4
006a17bc  70 ef f1 eb                                      bl #0x31d584
006a17c0  06 00 54 e1                                      cmp r4, r6
006a17c4  00 00 00 2a                                      bhs #0x6a17cc
006a17c8  05 a0 a0 e1                                      mov sl, r5
006a17cc  0a 00 a0 e1                                      mov r0, sl
006a17d0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

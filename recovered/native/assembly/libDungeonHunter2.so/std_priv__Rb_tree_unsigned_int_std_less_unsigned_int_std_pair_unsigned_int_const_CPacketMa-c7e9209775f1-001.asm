; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00816784, declared_size=64, range_size=64, mode=arm
; class-group: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, CPacketManager::tSendPacket>, std::priv::_Select1st<std::pair<unsigned int const, CPacketManager::tSendPacket> >, std::priv::_MultimapTraitsT<std::pair<unsigned int const, CPacketManager::tSendPacket> >, std::allocator<std::pair<unsigned int const, CPacketManager::tSendPacket> > >
; alias: _ZNSt4priv8_Rb_treeIjSt4lessIjESt4pairIKjN14CPacketManager11tSendPacketEENS_10_Select1stIS7_EENS_16_MultimapTraitsTIS7_EESaIS7_EE8_M_eraseEPNS_18_Rb_tree_node_baseE
; demangled: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, CPacketManager::tSendPacket>, std::priv::_Select1st<std::pair<unsigned int const, CPacketManager::tSendPacket> >, std::priv::_MultimapTraitsT<std::pair<unsigned int const, CPacketManager::tSendPacket> >, std::allocator<std::pair<unsigned int const, CPacketManager::tSendPacket> > >::_M_erase(std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
00816784  70 40 2d e9                                      push {r4, r5, r6, lr}
00816788  00 40 51 e2                                      subs r4, r1, #0
0081678c  00 60 a0 e1                                      mov r6, r0
00816790  0a 00 00 0a                                      beq #0x8167c0
00816794  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00816798  06 00 a0 e1                                      mov r0, r6
0081679c  f8 ff ff eb                                      bl #0x816784
008167a0  08 50 94 e5                                      ldr r5, [r4, #8]
008167a4  18 00 84 e2                                      add r0, r4, #0x18
008167a8  f8 df ff eb                                      bl #0x80e790
008167ac  04 00 a0 e1                                      mov r0, r4
008167b0  38 10 a0 e3                                      mov r1, #0x38
008167b4  df 9e 02 eb                                      bl #0x8be338
008167b8  00 40 55 e2                                      subs r4, r5, #0
008167bc  f4 ff ff 1a                                      bne #0x816794
008167c0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00816800, declared_size=76, range_size=76, mode=arm
; class-group: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, CPacketManager::tSendPacket>, std::priv::_Select1st<std::pair<unsigned int const, CPacketManager::tSendPacket> >, std::priv::_MultimapTraitsT<std::pair<unsigned int const, CPacketManager::tSendPacket> >, std::allocator<std::pair<unsigned int const, CPacketManager::tSendPacket> > >
; alias: _ZNSt4priv8_Rb_treeIjSt4lessIjESt4pairIKjN14CPacketManager11tSendPacketEENS_10_Select1stIS7_EENS_16_MultimapTraitsTIS7_EESaIS7_EE5eraseENS_17_Rb_tree_iteratorIS7_SB_EE
; demangled: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, CPacketManager::tSendPacket>, std::priv::_Select1st<std::pair<unsigned int const, CPacketManager::tSendPacket> >, std::priv::_MultimapTraitsT<std::pair<unsigned int const, CPacketManager::tSendPacket> >, std::allocator<std::pair<unsigned int const, CPacketManager::tSendPacket> > >::erase(std::priv::_Rb_tree_iterator<std::pair<unsigned int const, CPacketManager::tSendPacket>, std::priv::_MultimapTraitsT<std::pair<unsigned int const, CPacketManager::tSendPacket> > >)
; decoder-mode: arm
00816800  70 40 2d e9                                      push {r4, r5, r6, lr}
00816804  00 40 a0 e1                                      mov r4, r0
00816808  08 20 84 e2                                      add r2, r4, #8
0081680c  00 00 91 e5                                      ldr r0, [r1]
00816810  0c 30 84 e2                                      add r3, r4, #0xc
00816814  04 10 84 e2                                      add r1, r4, #4
00816818  f9 7d ec eb                                      bl #0x336004
0081681c  00 50 a0 e1                                      mov r5, r0
00816820  18 00 80 e2                                      add r0, r0, #0x18
00816824  d9 df ff eb                                      bl #0x80e790
00816828  00 00 55 e3                                      cmp r5, #0
0081682c  02 00 00 0a                                      beq #0x81683c
00816830  05 00 a0 e1                                      mov r0, r5
00816834  38 10 a0 e3                                      mov r1, #0x38
00816838  be 9e 02 eb                                      bl #0x8be338
0081683c  10 30 94 e5                                      ldr r3, [r4, #0x10]
00816840  01 30 43 e2                                      sub r3, r3, #1
00816844  10 30 84 e5                                      str r3, [r4, #0x10]
00816848  70 80 bd e8                                      pop {r4, r5, r6, pc}

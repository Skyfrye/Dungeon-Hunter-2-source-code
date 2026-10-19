; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008154e4, declared_size=32, range_size=32, mode=arm
; class-group: std::allocator<std::priv::_Rb_tree_node<std::pair<int const, CPacketManager::tPacketMemberInfo> > >
; alias: _ZNSaINSt4priv13_Rb_tree_nodeISt4pairIKiN14CPacketManager17tPacketMemberInfoEEEEE8allocateEjPKv.clone.4
; demangled: std::allocator<std::priv::_Rb_tree_node<std::pair<int const, CPacketManager::tPacketMemberInfo> > >::allocate(unsigned int, void const*) [clone .clone.4]
; decoder-mode: arm
008154e4  04 e0 2d e5                                      str lr, [sp, #-4]!
008154e8  0c d0 4d e2                                      sub sp, sp, #0xc
008154ec  08 00 8d e2                                      add r0, sp, #8
008154f0  24 30 a0 e3                                      mov r3, #0x24
008154f4  04 30 20 e5                                      str r3, [r0, #-4]!
008154f8  86 a3 02 eb                                      bl #0x8be318
008154fc  0c d0 8d e2                                      add sp, sp, #0xc
00815500  00 80 bd e8                                      ldm sp!, {pc}

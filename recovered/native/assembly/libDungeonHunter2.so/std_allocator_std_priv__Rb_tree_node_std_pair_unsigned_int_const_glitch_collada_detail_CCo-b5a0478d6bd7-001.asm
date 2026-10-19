; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0066d8a8, declared_size=32, range_size=32, mode=arm
; class-group: std::allocator<std::priv::_Rb_tree_node<std::pair<unsigned int const, glitch::collada::detail::CColladaHardwareQuatSkinTechnique::SHardwareData> > >
; alias: _ZNSaINSt4priv13_Rb_tree_nodeISt4pairIKjN6glitch7collada6detail33CColladaHardwareQuatSkinTechnique13SHardwareDataEEEEE8allocateEjPKv.clone.0
; demangled: std::allocator<std::priv::_Rb_tree_node<std::pair<unsigned int const, glitch::collada::detail::CColladaHardwareQuatSkinTechnique::SHardwareData> > >::allocate(unsigned int, void const*) [clone .clone.0]
; decoder-mode: arm
0066d8a8  04 e0 2d e5                                      str lr, [sp, #-4]!
0066d8ac  0c d0 4d e2                                      sub sp, sp, #0xc
0066d8b0  08 00 8d e2                                      add r0, sp, #8
0066d8b4  1c 30 a0 e3                                      mov r3, #0x1c
0066d8b8  04 30 20 e5                                      str r3, [r0, #-4]!
0066d8bc  7f 6d 02 eb                                      bl #0x708ec0
0066d8c0  0c d0 8d e2                                      add sp, sp, #0xc
0066d8c4  00 80 bd e8                                      ldm sp!, {pc}

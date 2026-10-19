; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00493814, declared_size=32, range_size=32, mode=arm
; class-group: std::allocator<std::priv::_List_node<VisualFXManager::AnimFXSetData*> >
; alias: _ZNSaINSt4priv10_List_nodeIPN15VisualFXManager13AnimFXSetDataEEEE8allocateEjPKv.clone.13
; demangled: std::allocator<std::priv::_List_node<VisualFXManager::AnimFXSetData*> >::allocate(unsigned int, void const*) [clone .clone.13]
; decoder-mode: arm
00493814  04 e0 2d e5                                      str lr, [sp, #-4]!
00493818  0c d0 4d e2                                      sub sp, sp, #0xc
0049381c  08 00 8d e2                                      add r0, sp, #8
00493820  0c 30 a0 e3                                      mov r3, #0xc
00493824  04 30 20 e5                                      str r3, [r0, #-4]!
00493828  a4 d5 09 eb                                      bl #0x708ec0
0049382c  0c d0 8d e2                                      add sp, sp, #0xc
00493830  00 80 bd e8                                      ldm sp!, {pc}

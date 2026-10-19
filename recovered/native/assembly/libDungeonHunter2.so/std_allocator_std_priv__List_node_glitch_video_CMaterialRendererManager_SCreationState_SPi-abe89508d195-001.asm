; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005d9768, declared_size=32, range_size=32, mode=arm
; class-group: std::allocator<std::priv::_List_node<glitch::video::CMaterialRendererManager::SCreationState::SPinkBind> >
; alias: _ZNSaINSt4priv10_List_nodeIN6glitch5video24CMaterialRendererManager14SCreationState9SPinkBindEEEE8allocateEjPKv.clone.13
; demangled: std::allocator<std::priv::_List_node<glitch::video::CMaterialRendererManager::SCreationState::SPinkBind> >::allocate(unsigned int, void const*) [clone .clone.13]
; decoder-mode: arm
005d9768  04 e0 2d e5                                      str lr, [sp, #-4]!
005d976c  0c d0 4d e2                                      sub sp, sp, #0xc
005d9770  08 00 8d e2                                      add r0, sp, #8
005d9774  10 30 a0 e3                                      mov r3, #0x10
005d9778  04 30 20 e5                                      str r3, [r0, #-4]!
005d977c  cf bd 04 eb                                      bl #0x708ec0
005d9780  0c d0 8d e2                                      add sp, sp, #0xc
005d9784  00 80 bd e8                                      ldm sp!, {pc}

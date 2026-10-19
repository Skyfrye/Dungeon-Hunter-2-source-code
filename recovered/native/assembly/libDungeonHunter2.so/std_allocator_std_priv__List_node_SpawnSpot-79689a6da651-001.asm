; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003e98fc, declared_size=32, range_size=32, mode=arm
; class-group: std::allocator<std::priv::_List_node<SpawnSpot*> >
; alias: _ZNSaINSt4priv10_List_nodeIP9SpawnSpotEEE8allocateEjPKv.clone.6
; demangled: std::allocator<std::priv::_List_node<SpawnSpot*> >::allocate(unsigned int, void const*) [clone .clone.6]
; decoder-mode: arm
003e98fc  04 e0 2d e5                                      str lr, [sp, #-4]!
003e9900  0c d0 4d e2                                      sub sp, sp, #0xc
003e9904  08 00 8d e2                                      add r0, sp, #8
003e9908  0c 30 a0 e3                                      mov r3, #0xc
003e990c  04 30 20 e5                                      str r3, [r0, #-4]!
003e9910  6a 7d 0c eb                                      bl #0x708ec0
003e9914  0c d0 8d e2                                      add sp, sp, #0xc
003e9918  00 80 bd e8                                      ldm sp!, {pc}

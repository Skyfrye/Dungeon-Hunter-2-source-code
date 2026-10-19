; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004542c8, declared_size=32, range_size=32, mode=arm
; class-group: std::allocator<std::priv::_List_node<RoomZone*> >
; alias: _ZNSaINSt4priv10_List_nodeIP8RoomZoneEEE8allocateEjPKv.clone.4
; demangled: std::allocator<std::priv::_List_node<RoomZone*> >::allocate(unsigned int, void const*) [clone .clone.4]
; decoder-mode: arm
004542c8  04 e0 2d e5                                      str lr, [sp, #-4]!
004542cc  0c d0 4d e2                                      sub sp, sp, #0xc
004542d0  08 00 8d e2                                      add r0, sp, #8
004542d4  0c 30 a0 e3                                      mov r3, #0xc
004542d8  04 30 20 e5                                      str r3, [r0, #-4]!
004542dc  f7 d2 0a eb                                      bl #0x708ec0
004542e0  0c d0 8d e2                                      add sp, sp, #0xc
004542e4  00 80 bd e8                                      ldm sp!, {pc}

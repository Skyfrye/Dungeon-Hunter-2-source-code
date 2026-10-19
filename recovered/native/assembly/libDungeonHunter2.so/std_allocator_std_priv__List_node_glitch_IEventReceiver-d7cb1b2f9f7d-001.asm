; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0032fa5c, declared_size=32, range_size=32, mode=arm
; class-group: std::allocator<std::priv::_List_node<glitch::IEventReceiver*> >
; alias: _ZNSaINSt4priv10_List_nodeIPN6glitch14IEventReceiverEEEE8allocateEjPKv.clone.20
; demangled: std::allocator<std::priv::_List_node<glitch::IEventReceiver*> >::allocate(unsigned int, void const*) [clone .clone.20]
; decoder-mode: arm
0032fa5c  04 e0 2d e5                                      str lr, [sp, #-4]!
0032fa60  0c d0 4d e2                                      sub sp, sp, #0xc
0032fa64  08 00 8d e2                                      add r0, sp, #8
0032fa68  0c 30 a0 e3                                      mov r3, #0xc
0032fa6c  04 30 20 e5                                      str r3, [r0, #-4]!
0032fa70  12 65 0f eb                                      bl #0x708ec0
0032fa74  0c d0 8d e2                                      add sp, sp, #0xc
0032fa78  00 80 bd e8                                      ldm sp!, {pc}

; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008bcf8c, declared_size=18, range_size=18, mode=thumb
; class-group: std::allocator<std::priv::_Slist_node<std::pair<int const, std::locale> > >
; alias: _ZNSaINSt4priv11_Slist_nodeISt4pairIKiSt6localeEEEE8allocateEjPKv.clone.0
; demangled: std::allocator<std::priv::_Slist_node<std::pair<int const, std::locale> > >::allocate(unsigned int, void const*) [clone .clone.0]
; decoder-mode: thumb
008bcf8c  00 b5                                            push {lr}
008bcf8e  83 b0                                            sub sp, #0xc
008bcf90  0c 23                                            movs r3, #0xc
008bcf92  01 a8                                            add r0, sp, #4
008bcf94  01 93                                            str r3, [sp, #4]
008bcf96  f9 f7 2d fa                                      bl #0x8b63f4
008bcf9a  03 b0                                            add sp, #0xc
008bcf9c  00 bd                                            pop {pc}

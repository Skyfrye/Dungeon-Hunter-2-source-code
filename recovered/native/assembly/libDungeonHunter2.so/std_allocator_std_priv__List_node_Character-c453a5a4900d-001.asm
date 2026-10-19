; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00342690, declared_size=32, range_size=32, mode=arm
; class-group: std::allocator<std::priv::_List_node<Character*> >
; alias: _ZNSaINSt4priv10_List_nodeIP9CharacterEEE8allocateEjPKv.clone.13
; demangled: std::allocator<std::priv::_List_node<Character*> >::allocate(unsigned int, void const*) [clone .clone.13]
; decoder-mode: arm
00342690  04 e0 2d e5                                      str lr, [sp, #-4]!
00342694  0c d0 4d e2                                      sub sp, sp, #0xc
00342698  08 00 8d e2                                      add r0, sp, #8
0034269c  0c 30 a0 e3                                      mov r3, #0xc
003426a0  04 30 20 e5                                      str r3, [r0, #-4]!
003426a4  05 1a 0f eb                                      bl #0x708ec0
003426a8  0c d0 8d e2                                      add sp, sp, #0xc
003426ac  00 80 bd e8                                      ldm sp!, {pc}

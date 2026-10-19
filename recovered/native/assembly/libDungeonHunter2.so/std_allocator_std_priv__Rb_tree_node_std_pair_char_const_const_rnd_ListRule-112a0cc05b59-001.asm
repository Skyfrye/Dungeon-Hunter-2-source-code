; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004862f8, declared_size=32, range_size=32, mode=arm
; class-group: std::allocator<std::priv::_Rb_tree_node<std::pair<char const* const, rnd::ListRule*> > >
; alias: _ZNSaINSt4priv13_Rb_tree_nodeISt4pairIKPKcPN3rnd8ListRuleEEEEE8allocateEjPKv.clone.15
; demangled: std::allocator<std::priv::_Rb_tree_node<std::pair<char const* const, rnd::ListRule*> > >::allocate(unsigned int, void const*) [clone .clone.15]
; decoder-mode: arm
004862f8  04 e0 2d e5                                      str lr, [sp, #-4]!
004862fc  0c d0 4d e2                                      sub sp, sp, #0xc
00486300  08 00 8d e2                                      add r0, sp, #8
00486304  18 30 a0 e3                                      mov r3, #0x18
00486308  04 30 20 e5                                      str r3, [r0, #-4]!
0048630c  eb 0a 0a eb                                      bl #0x708ec0
00486310  0c d0 8d e2                                      add sp, sp, #0xc
00486314  00 80 bd e8                                      ldm sp!, {pc}

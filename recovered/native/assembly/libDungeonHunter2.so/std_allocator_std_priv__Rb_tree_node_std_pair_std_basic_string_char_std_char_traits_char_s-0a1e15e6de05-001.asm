; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0038ebfc, declared_size=32, range_size=32, mode=arm
; class-group: std::allocator<std::priv::_Rb_tree_node<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, ObjectSearcher::BackupObjectList> > >
; alias: _ZNSaINSt4priv13_Rb_tree_nodeISt4pairIKSsN14ObjectSearcher16BackupObjectListEEEEE8allocateEjPKv.clone.6
; demangled: std::allocator<std::priv::_Rb_tree_node<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, ObjectSearcher::BackupObjectList> > >::allocate(unsigned int, void const*) [clone .clone.6]
; decoder-mode: arm
0038ebfc  04 e0 2d e5                                      str lr, [sp, #-4]!
0038ec00  0c d0 4d e2                                      sub sp, sp, #0xc
0038ec04  08 00 8d e2                                      add r0, sp, #8
0038ec08  40 30 a0 e3                                      mov r3, #0x40
0038ec0c  04 30 20 e5                                      str r3, [r0, #-4]!
0038ec10  aa e8 0d eb                                      bl #0x708ec0
0038ec14  0c d0 8d e2                                      add sp, sp, #0xc
0038ec18  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x004a3690, declared_size=32, range_size=32, mode=arm
; class-group: std::allocator<std::priv::_Rb_tree_node<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, ObjectSearcher::BackupObjectList> > >
; alias: _ZNSaINSt4priv13_Rb_tree_nodeISt4pairIKSsN14ObjectSearcher16BackupObjectListEEEEE8allocateEjPKv.clone.6
; demangled: std::allocator<std::priv::_Rb_tree_node<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, ObjectSearcher::BackupObjectList> > >::allocate(unsigned int, void const*) [clone .clone.6]
; decoder-mode: arm
004a3690  04 e0 2d e5                                      str lr, [sp, #-4]!
004a3694  0c d0 4d e2                                      sub sp, sp, #0xc
004a3698  08 00 8d e2                                      add r0, sp, #8
004a369c  40 30 a0 e3                                      mov r3, #0x40
004a36a0  04 30 20 e5                                      str r3, [r0, #-4]!
004a36a4  05 96 09 eb                                      bl #0x708ec0
004a36a8  0c d0 8d e2                                      add sp, sp, #0xc
004a36ac  00 80 bd e8                                      ldm sp!, {pc}

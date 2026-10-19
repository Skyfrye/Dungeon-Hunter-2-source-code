; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0037b564, declared_size=4, range_size=4, mode=arm
; class-group: boost::hash<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >
; alias: _ZN5boost4hashISsED1Ev
; demangled: boost::hash<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >::~hash()
; decoder-mode: arm
0037b564  1e ff 2f e1                                      bx lr

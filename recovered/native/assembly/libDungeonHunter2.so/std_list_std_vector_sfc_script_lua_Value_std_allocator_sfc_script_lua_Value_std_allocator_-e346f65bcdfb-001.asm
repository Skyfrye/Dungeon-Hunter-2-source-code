; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0031bfd8, declared_size=20, range_size=20, mode=arm
; class-group: std::list<std::vector<sfc::script::lua::Value, std::allocator<sfc::script::lua::Value> >, std::allocator<std::vector<sfc::script::lua::Value, std::allocator<sfc::script::lua::Value> > > >
; alias: _ZNSt4listISt6vectorIN3sfc6script3lua5ValueESaIS4_EESaIS6_EED1Ev
; demangled: std::list<std::vector<sfc::script::lua::Value, std::allocator<sfc::script::lua::Value> >, std::allocator<std::vector<sfc::script::lua::Value, std::allocator<sfc::script::lua::Value> > > >::~list()
; decoder-mode: arm
0031bfd8  10 40 2d e9                                      push {r4, lr}
0031bfdc  00 40 a0 e1                                      mov r4, r0
0031bfe0  e9 ff ff eb                                      bl #0x31bf8c
0031bfe4  04 00 a0 e1                                      mov r0, r4
0031bfe8  10 80 bd e8                                      pop {r4, pc}

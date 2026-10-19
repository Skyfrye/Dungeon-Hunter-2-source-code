; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0031bf8c, declared_size=76, range_size=76, mode=arm
; class-group: std::priv::_List_base<std::vector<sfc::script::lua::Value, std::allocator<sfc::script::lua::Value> >, std::allocator<std::vector<sfc::script::lua::Value, std::allocator<sfc::script::lua::Value> > > >
; alias: _ZNSt4priv10_List_baseISt6vectorIN3sfc6script3lua5ValueESaIS5_EESaIS7_EE5clearEv
; demangled: std::priv::_List_base<std::vector<sfc::script::lua::Value, std::allocator<sfc::script::lua::Value> >, std::allocator<std::vector<sfc::script::lua::Value, std::allocator<sfc::script::lua::Value> > > >::clear()
; decoder-mode: arm
0031bf8c  70 40 2d e9                                      push {r4, r5, r6, lr}
0031bf90  00 60 90 e5                                      ldr r6, [r0]
0031bf94  00 50 a0 e1                                      mov r5, r0
0031bf98  00 00 56 e1                                      cmp r6, r0
0031bf9c  01 00 00 1a                                      bne #0x31bfa8
0031bfa0  09 00 00 ea                                      b #0x31bfcc
0031bfa4  04 60 a0 e1                                      mov r6, r4
0031bfa8  06 00 a0 e1                                      mov r0, r6
0031bfac  08 40 90 e4                                      ldr r4, [r0], #8
0031bfb0  d3 ff ff eb                                      bl #0x31bf04
0031bfb4  06 00 a0 e1                                      mov r0, r6
0031bfb8  14 10 a0 e3                                      mov r1, #0x14
0031bfbc  cf b3 0f eb                                      bl #0x708f00
0031bfc0  05 00 54 e1                                      cmp r4, r5
0031bfc4  f6 ff ff 1a                                      bne #0x31bfa4
0031bfc8  05 60 a0 e1                                      mov r6, r5
0031bfcc  04 60 85 e5                                      str r6, [r5, #4]
0031bfd0  00 60 85 e5                                      str r6, [r5]
0031bfd4  70 80 bd e8                                      pop {r4, r5, r6, pc}

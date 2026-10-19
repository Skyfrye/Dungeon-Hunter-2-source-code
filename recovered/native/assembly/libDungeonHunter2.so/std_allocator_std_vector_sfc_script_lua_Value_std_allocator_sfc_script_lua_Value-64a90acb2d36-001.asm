; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0031c1c4, declared_size=32, range_size=32, mode=arm
; class-group: std::allocator<std::vector<sfc::script::lua::Value, std::allocator<sfc::script::lua::Value> >*>
; alias: _ZNSaIPSt6vectorIN3sfc6script3lua5ValueESaIS3_EEE8allocateEjPKv.clone.4
; demangled: std::allocator<std::vector<sfc::script::lua::Value, std::allocator<sfc::script::lua::Value> >*>::allocate(unsigned int, void const*) [clone .clone.4]
; decoder-mode: arm
0031c1c4  04 e0 2d e5                                      str lr, [sp, #-4]!
0031c1c8  0c d0 4d e2                                      sub sp, sp, #0xc
0031c1cc  08 00 8d e2                                      add r0, sp, #8
0031c1d0  80 30 a0 e3                                      mov r3, #0x80
0031c1d4  04 30 20 e5                                      str r3, [r0, #-4]!
0031c1d8  38 b3 0f eb                                      bl #0x708ec0
0031c1dc  0c d0 8d e2                                      add sp, sp, #0xc
0031c1e0  00 80 bd e8                                      ldm sp!, {pc}

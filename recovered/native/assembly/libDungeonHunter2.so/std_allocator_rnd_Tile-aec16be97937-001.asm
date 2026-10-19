; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004866c0, declared_size=32, range_size=32, mode=arm
; class-group: std::allocator<rnd::Tile*>
; alias: _ZNSaIPN3rnd4TileEE8allocateEjPKv.clone.21
; demangled: std::allocator<rnd::Tile*>::allocate(unsigned int, void const*) [clone .clone.21]
; decoder-mode: arm
004866c0  04 e0 2d e5                                      str lr, [sp, #-4]!
004866c4  0c d0 4d e2                                      sub sp, sp, #0xc
004866c8  08 00 8d e2                                      add r0, sp, #8
004866cc  80 30 a0 e3                                      mov r3, #0x80
004866d0  04 30 20 e5                                      str r3, [r0, #-4]!
004866d4  f9 09 0a eb                                      bl #0x708ec0
004866d8  0c d0 8d e2                                      add sp, sp, #0xc
004866dc  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x0048b148, declared_size=32, range_size=32, mode=arm
; class-group: std::allocator<rnd::Tile*>
; alias: _ZNSaIPN3rnd4TileEE8allocateEjPKv.clone.10
; demangled: std::allocator<rnd::Tile*>::allocate(unsigned int, void const*) [clone .clone.10]
; decoder-mode: arm
0048b148  04 e0 2d e5                                      str lr, [sp, #-4]!
0048b14c  0c d0 4d e2                                      sub sp, sp, #0xc
0048b150  08 00 8d e2                                      add r0, sp, #8
0048b154  80 30 a0 e3                                      mov r3, #0x80
0048b158  04 30 20 e5                                      str r3, [r0, #-4]!
0048b15c  57 f7 09 eb                                      bl #0x708ec0
0048b160  0c d0 8d e2                                      add sp, sp, #0xc
0048b164  00 80 bd e8                                      ldm sp!, {pc}

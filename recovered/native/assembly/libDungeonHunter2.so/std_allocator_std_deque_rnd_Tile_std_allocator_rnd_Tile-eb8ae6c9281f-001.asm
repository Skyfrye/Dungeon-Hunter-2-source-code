; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004868f8, declared_size=32, range_size=32, mode=arm
; class-group: std::allocator<std::deque<rnd::Tile*, std::allocator<rnd::Tile*> > >
; alias: _ZNSaISt5dequeIPN3rnd4TileESaIS2_EEE8allocateEjPKv.clone.22
; demangled: std::allocator<std::deque<rnd::Tile*, std::allocator<rnd::Tile*> > >::allocate(unsigned int, void const*) [clone .clone.22]
; decoder-mode: arm
004868f8  04 e0 2d e5                                      str lr, [sp, #-4]!
004868fc  0c d0 4d e2                                      sub sp, sp, #0xc
00486900  08 00 8d e2                                      add r0, sp, #8
00486904  78 30 a0 e3                                      mov r3, #0x78
00486908  04 30 20 e5                                      str r3, [r0, #-4]!
0048690c  6b 09 0a eb                                      bl #0x708ec0
00486910  0c d0 8d e2                                      add sp, sp, #0xc
00486914  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x0048b2a4, declared_size=32, range_size=32, mode=arm
; class-group: std::allocator<std::deque<rnd::Tile*, std::allocator<rnd::Tile*> > >
; alias: _ZNSaISt5dequeIPN3rnd4TileESaIS2_EEE8allocateEjPKv.clone.12
; demangled: std::allocator<std::deque<rnd::Tile*, std::allocator<rnd::Tile*> > >::allocate(unsigned int, void const*) [clone .clone.12]
; decoder-mode: arm
0048b2a4  04 e0 2d e5                                      str lr, [sp, #-4]!
0048b2a8  0c d0 4d e2                                      sub sp, sp, #0xc
0048b2ac  08 00 8d e2                                      add r0, sp, #8
0048b2b0  78 30 a0 e3                                      mov r3, #0x78
0048b2b4  04 30 20 e5                                      str r3, [r0, #-4]!
0048b2b8  00 f7 09 eb                                      bl #0x708ec0
0048b2bc  0c d0 8d e2                                      add sp, sp, #0xc
0048b2c0  00 80 bd e8                                      ldm sp!, {pc}

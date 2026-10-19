; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008a2568, declared_size=32, range_size=32, mode=thumb
; class-group: std::length_error
; alias: _ZNSt12length_errorD1Ev
; demangled: std::length_error::~length_error()
; decoder-mode: thumb
008a2568  10 b5                                            push {r4, lr}
008a256a  05 4b                                            ldr r3, [pc, #0x14]
008a256c  05 4a                                            ldr r2, [pc, #0x14]
008a256e  04 1c                                            adds r4, r0, #0
008a2570  7b 44                                            add r3, pc
008a2572  9a 58                                            ldr r2, [r3, r2]
008a2574  08 32                                            adds r2, #8
008a2576  02 60                                            str r2, [r0]
008a2578  ff f7 bc ff                                      bl #0x8a24f4
008a257c  20 1c                                            adds r0, r4, #0
008a257e  10 bd                                            pop {r4, pc}
; mapping-symbol data/literal pool
008a2580  24 25 0f 00 90 1d 00 00                          .byte 0x24, 0x25, 0x0f, 0x00, 0x90, 0x1d, 0x00, 0x00

; FUNCTION 0x008a2588, declared_size=18, range_size=18, mode=thumb
; class-group: std::length_error
; alias: _ZNSt12length_errorD0Ev
; demangled: std::length_error::~length_error()
; decoder-mode: thumb
008a2588  10 b5                                            push {r4, lr}
008a258a  04 1c                                            adds r4, r0, #0
008a258c  ff f7 ec ff                                      bl #0x8a2568
008a2590  20 1c                                            adds r0, r4, #0
008a2592  6b f6 8e e6                                      blx #0x30e2b0
008a2596  20 1c                                            adds r0, r4, #0
008a2598  10 bd                                            pop {r4, pc}

; FUNCTION 0x008a259c, declared_size=32, range_size=32, mode=thumb
; class-group: std::length_error
; alias: _ZNSt12length_errorD2Ev
; demangled: std::length_error::~length_error()
; decoder-mode: thumb
008a259c  10 b5                                            push {r4, lr}
008a259e  05 4b                                            ldr r3, [pc, #0x14]
008a25a0  05 4a                                            ldr r2, [pc, #0x14]
008a25a2  04 1c                                            adds r4, r0, #0
008a25a4  7b 44                                            add r3, pc
008a25a6  9a 58                                            ldr r2, [r3, r2]
008a25a8  08 32                                            adds r2, #8
008a25aa  02 60                                            str r2, [r0]
008a25ac  ff f7 a2 ff                                      bl #0x8a24f4
008a25b0  20 1c                                            adds r0, r4, #0
008a25b2  10 bd                                            pop {r4, pc}
; mapping-symbol data/literal pool
008a25b4  f0 24 0f 00 90 1d 00 00                          .byte 0xf0, 0x24, 0x0f, 0x00, 0x90, 0x1d, 0x00, 0x00

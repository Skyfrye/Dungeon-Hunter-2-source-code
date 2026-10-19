; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008a246c, declared_size=32, range_size=32, mode=thumb
; class-group: std::range_error
; alias: _ZNSt11range_errorD1Ev
; demangled: std::range_error::~range_error()
; decoder-mode: thumb
008a246c  10 b5                                            push {r4, lr}
008a246e  05 4b                                            ldr r3, [pc, #0x14]
008a2470  05 4a                                            ldr r2, [pc, #0x14]
008a2472  04 1c                                            adds r4, r0, #0
008a2474  7b 44                                            add r3, pc
008a2476  9a 58                                            ldr r2, [r3, r2]
008a2478  08 32                                            adds r2, #8
008a247a  02 60                                            str r2, [r0]
008a247c  ff f7 92 ff                                      bl #0x8a23a4
008a2480  20 1c                                            adds r0, r4, #0
008a2482  10 bd                                            pop {r4, pc}
; mapping-symbol data/literal pool
008a2484  20 26 0f 00 4c 24 00 00                          .byte 0x20, 0x26, 0x0f, 0x00, 0x4c, 0x24, 0x00, 0x00

; FUNCTION 0x008a248c, declared_size=18, range_size=18, mode=thumb
; class-group: std::range_error
; alias: _ZNSt11range_errorD0Ev
; demangled: std::range_error::~range_error()
; decoder-mode: thumb
008a248c  10 b5                                            push {r4, lr}
008a248e  04 1c                                            adds r4, r0, #0
008a2490  ff f7 ec ff                                      bl #0x8a246c
008a2494  20 1c                                            adds r0, r4, #0
008a2496  6b f6 0c e7                                      blx #0x30e2b0
008a249a  20 1c                                            adds r0, r4, #0
008a249c  10 bd                                            pop {r4, pc}

; FUNCTION 0x008a24a0, declared_size=32, range_size=32, mode=thumb
; class-group: std::range_error
; alias: _ZNSt11range_errorD2Ev
; demangled: std::range_error::~range_error()
; decoder-mode: thumb
008a24a0  10 b5                                            push {r4, lr}
008a24a2  05 4b                                            ldr r3, [pc, #0x14]
008a24a4  05 4a                                            ldr r2, [pc, #0x14]
008a24a6  04 1c                                            adds r4, r0, #0
008a24a8  7b 44                                            add r3, pc
008a24aa  9a 58                                            ldr r2, [r3, r2]
008a24ac  08 32                                            adds r2, #8
008a24ae  02 60                                            str r2, [r0]
008a24b0  ff f7 78 ff                                      bl #0x8a23a4
008a24b4  20 1c                                            adds r0, r4, #0
008a24b6  10 bd                                            pop {r4, pc}
; mapping-symbol data/literal pool
008a24b8  ec 25 0f 00 4c 24 00 00                          .byte 0xec, 0x25, 0x0f, 0x00, 0x4c, 0x24, 0x00, 0x00

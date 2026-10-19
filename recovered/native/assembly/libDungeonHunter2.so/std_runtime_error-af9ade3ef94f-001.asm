; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008a2370, declared_size=32, range_size=32, mode=thumb
; class-group: std::runtime_error
; alias: _ZNSt13runtime_errorD1Ev
; demangled: std::runtime_error::~runtime_error()
; decoder-mode: thumb
008a2370  10 b5                                            push {r4, lr}
008a2372  05 4b                                            ldr r3, [pc, #0x14]
008a2374  05 4a                                            ldr r2, [pc, #0x14]
008a2376  04 1c                                            adds r4, r0, #0
008a2378  7b 44                                            add r3, pc
008a237a  9a 58                                            ldr r2, [r3, r2]
008a237c  08 32                                            adds r2, #8
008a237e  02 60                                            str r2, [r0]
008a2380  ff f7 dc ff                                      bl #0x8a233c
008a2384  20 1c                                            adds r0, r4, #0
008a2386  10 bd                                            pop {r4, pc}
; mapping-symbol data/literal pool
008a2388  1c 27 0f 00 08 47 00 00                          .byte 0x1c, 0x27, 0x0f, 0x00, 0x08, 0x47, 0x00, 0x00

; FUNCTION 0x008a2390, declared_size=18, range_size=18, mode=thumb
; class-group: std::runtime_error
; alias: _ZNSt13runtime_errorD0Ev
; demangled: std::runtime_error::~runtime_error()
; decoder-mode: thumb
008a2390  10 b5                                            push {r4, lr}
008a2392  04 1c                                            adds r4, r0, #0
008a2394  ff f7 ec ff                                      bl #0x8a2370
008a2398  20 1c                                            adds r0, r4, #0
008a239a  6b f6 8a e7                                      blx #0x30e2b0
008a239e  20 1c                                            adds r0, r4, #0
008a23a0  10 bd                                            pop {r4, pc}

; FUNCTION 0x008a23a4, declared_size=32, range_size=32, mode=thumb
; class-group: std::runtime_error
; alias: _ZNSt13runtime_errorD2Ev
; demangled: std::runtime_error::~runtime_error()
; decoder-mode: thumb
008a23a4  10 b5                                            push {r4, lr}
008a23a6  05 4b                                            ldr r3, [pc, #0x14]
008a23a8  05 4a                                            ldr r2, [pc, #0x14]
008a23aa  04 1c                                            adds r4, r0, #0
008a23ac  7b 44                                            add r3, pc
008a23ae  9a 58                                            ldr r2, [r3, r2]
008a23b0  08 32                                            adds r2, #8
008a23b2  02 60                                            str r2, [r0]
008a23b4  ff f7 c2 ff                                      bl #0x8a233c
008a23b8  20 1c                                            adds r0, r4, #0
008a23ba  10 bd                                            pop {r4, pc}
; mapping-symbol data/literal pool
008a23bc  e8 26 0f 00 08 47 00 00                          .byte 0xe8, 0x26, 0x0f, 0x00, 0x08, 0x47, 0x00, 0x00

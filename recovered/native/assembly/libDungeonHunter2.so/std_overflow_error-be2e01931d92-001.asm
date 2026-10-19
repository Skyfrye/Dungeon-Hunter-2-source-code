; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008a2418, declared_size=32, range_size=32, mode=thumb
; class-group: std::overflow_error
; alias: _ZNSt14overflow_errorD1Ev
; demangled: std::overflow_error::~overflow_error()
; decoder-mode: thumb
008a2418  10 b5                                            push {r4, lr}
008a241a  05 4b                                            ldr r3, [pc, #0x14]
008a241c  05 4a                                            ldr r2, [pc, #0x14]
008a241e  04 1c                                            adds r4, r0, #0
008a2420  7b 44                                            add r3, pc
008a2422  9a 58                                            ldr r2, [r3, r2]
008a2424  08 32                                            adds r2, #8
008a2426  02 60                                            str r2, [r0]
008a2428  ff f7 bc ff                                      bl #0x8a23a4
008a242c  20 1c                                            adds r0, r4, #0
008a242e  10 bd                                            pop {r4, pc}
; mapping-symbol data/literal pool
008a2430  74 26 0f 00 80 26 00 00                          .byte 0x74, 0x26, 0x0f, 0x00, 0x80, 0x26, 0x00, 0x00

; FUNCTION 0x008a2438, declared_size=18, range_size=18, mode=thumb
; class-group: std::overflow_error
; alias: _ZNSt14overflow_errorD0Ev
; demangled: std::overflow_error::~overflow_error()
; decoder-mode: thumb
008a2438  10 b5                                            push {r4, lr}
008a243a  04 1c                                            adds r4, r0, #0
008a243c  ff f7 ec ff                                      bl #0x8a2418
008a2440  20 1c                                            adds r0, r4, #0
008a2442  6b f6 36 e7                                      blx #0x30e2b0
008a2446  20 1c                                            adds r0, r4, #0
008a2448  10 bd                                            pop {r4, pc}

; FUNCTION 0x008a244c, declared_size=32, range_size=32, mode=thumb
; class-group: std::overflow_error
; alias: _ZNSt14overflow_errorD2Ev
; demangled: std::overflow_error::~overflow_error()
; decoder-mode: thumb
008a244c  10 b5                                            push {r4, lr}
008a244e  05 4b                                            ldr r3, [pc, #0x14]
008a2450  05 4a                                            ldr r2, [pc, #0x14]
008a2452  04 1c                                            adds r4, r0, #0
008a2454  7b 44                                            add r3, pc
008a2456  9a 58                                            ldr r2, [r3, r2]
008a2458  08 32                                            adds r2, #8
008a245a  02 60                                            str r2, [r0]
008a245c  ff f7 a2 ff                                      bl #0x8a23a4
008a2460  20 1c                                            adds r0, r4, #0
008a2462  10 bd                                            pop {r4, pc}
; mapping-symbol data/literal pool
008a2464  40 26 0f 00 80 26 00 00                          .byte 0x40, 0x26, 0x0f, 0x00, 0x80, 0x26, 0x00, 0x00

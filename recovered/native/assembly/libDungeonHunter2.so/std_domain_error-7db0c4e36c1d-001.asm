; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008a2610, declared_size=32, range_size=32, mode=thumb
; class-group: std::domain_error
; alias: _ZNSt12domain_errorD1Ev
; demangled: std::domain_error::~domain_error()
; decoder-mode: thumb
008a2610  10 b5                                            push {r4, lr}
008a2612  05 4b                                            ldr r3, [pc, #0x14]
008a2614  05 4a                                            ldr r2, [pc, #0x14]
008a2616  04 1c                                            adds r4, r0, #0
008a2618  7b 44                                            add r3, pc
008a261a  9a 58                                            ldr r2, [r3, r2]
008a261c  08 32                                            adds r2, #8
008a261e  02 60                                            str r2, [r0]
008a2620  ff f7 68 ff                                      bl #0x8a24f4
008a2624  20 1c                                            adds r0, r4, #0
008a2626  10 bd                                            pop {r4, pc}
; mapping-symbol data/literal pool
008a2628  7c 24 0f 00 8c 27 00 00                          .byte 0x7c, 0x24, 0x0f, 0x00, 0x8c, 0x27, 0x00, 0x00

; FUNCTION 0x008a2630, declared_size=18, range_size=18, mode=thumb
; class-group: std::domain_error
; alias: _ZNSt12domain_errorD0Ev
; demangled: std::domain_error::~domain_error()
; decoder-mode: thumb
008a2630  10 b5                                            push {r4, lr}
008a2632  04 1c                                            adds r4, r0, #0
008a2634  ff f7 ec ff                                      bl #0x8a2610
008a2638  20 1c                                            adds r0, r4, #0
008a263a  6b f6 3a e6                                      blx #0x30e2b0
008a263e  20 1c                                            adds r0, r4, #0
008a2640  10 bd                                            pop {r4, pc}

; FUNCTION 0x008a2644, declared_size=32, range_size=32, mode=thumb
; class-group: std::domain_error
; alias: _ZNSt12domain_errorD2Ev
; demangled: std::domain_error::~domain_error()
; decoder-mode: thumb
008a2644  10 b5                                            push {r4, lr}
008a2646  05 4b                                            ldr r3, [pc, #0x14]
008a2648  05 4a                                            ldr r2, [pc, #0x14]
008a264a  04 1c                                            adds r4, r0, #0
008a264c  7b 44                                            add r3, pc
008a264e  9a 58                                            ldr r2, [r3, r2]
008a2650  08 32                                            adds r2, #8
008a2652  02 60                                            str r2, [r0]
008a2654  ff f7 4e ff                                      bl #0x8a24f4
008a2658  20 1c                                            adds r0, r4, #0
008a265a  10 bd                                            pop {r4, pc}
; mapping-symbol data/literal pool
008a265c  48 24 0f 00 8c 27 00 00                          .byte 0x48, 0x24, 0x0f, 0x00, 0x8c, 0x27, 0x00, 0x00

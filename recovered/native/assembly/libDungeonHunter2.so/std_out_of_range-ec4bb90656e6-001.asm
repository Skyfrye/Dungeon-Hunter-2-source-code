; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008a2514, declared_size=32, range_size=32, mode=thumb
; class-group: std::out_of_range
; alias: _ZNSt12out_of_rangeD1Ev
; demangled: std::out_of_range::~out_of_range()
; decoder-mode: thumb
008a2514  10 b5                                            push {r4, lr}
008a2516  05 4b                                            ldr r3, [pc, #0x14]
008a2518  05 4a                                            ldr r2, [pc, #0x14]
008a251a  04 1c                                            adds r4, r0, #0
008a251c  7b 44                                            add r3, pc
008a251e  9a 58                                            ldr r2, [r3, r2]
008a2520  08 32                                            adds r2, #8
008a2522  02 60                                            str r2, [r0]
008a2524  ff f7 e6 ff                                      bl #0x8a24f4
008a2528  20 1c                                            adds r0, r4, #0
008a252a  10 bd                                            pop {r4, pc}
; mapping-symbol data/literal pool
008a252c  78 25 0f 00 80 4a 00 00                          .byte 0x78, 0x25, 0x0f, 0x00, 0x80, 0x4a, 0x00, 0x00

; FUNCTION 0x008a2534, declared_size=18, range_size=18, mode=thumb
; class-group: std::out_of_range
; alias: _ZNSt12out_of_rangeD0Ev
; demangled: std::out_of_range::~out_of_range()
; decoder-mode: thumb
008a2534  10 b5                                            push {r4, lr}
008a2536  04 1c                                            adds r4, r0, #0
008a2538  ff f7 ec ff                                      bl #0x8a2514
008a253c  20 1c                                            adds r0, r4, #0
008a253e  6b f6 b8 e6                                      blx #0x30e2b0
008a2542  20 1c                                            adds r0, r4, #0
008a2544  10 bd                                            pop {r4, pc}

; FUNCTION 0x008a2548, declared_size=32, range_size=32, mode=thumb
; class-group: std::out_of_range
; alias: _ZNSt12out_of_rangeD2Ev
; demangled: std::out_of_range::~out_of_range()
; decoder-mode: thumb
008a2548  10 b5                                            push {r4, lr}
008a254a  05 4b                                            ldr r3, [pc, #0x14]
008a254c  05 4a                                            ldr r2, [pc, #0x14]
008a254e  04 1c                                            adds r4, r0, #0
008a2550  7b 44                                            add r3, pc
008a2552  9a 58                                            ldr r2, [r3, r2]
008a2554  08 32                                            adds r2, #8
008a2556  02 60                                            str r2, [r0]
008a2558  ff f7 cc ff                                      bl #0x8a24f4
008a255c  20 1c                                            adds r0, r4, #0
008a255e  10 bd                                            pop {r4, pc}
; mapping-symbol data/literal pool
008a2560  44 25 0f 00 80 4a 00 00                          .byte 0x44, 0x25, 0x0f, 0x00, 0x80, 0x4a, 0x00, 0x00

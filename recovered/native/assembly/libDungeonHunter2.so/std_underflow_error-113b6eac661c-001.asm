; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008a23c4, declared_size=32, range_size=32, mode=thumb
; class-group: std::underflow_error
; alias: _ZNSt15underflow_errorD1Ev
; demangled: std::underflow_error::~underflow_error()
; decoder-mode: thumb
008a23c4  10 b5                                            push {r4, lr}
008a23c6  05 4b                                            ldr r3, [pc, #0x14]
008a23c8  05 4a                                            ldr r2, [pc, #0x14]
008a23ca  04 1c                                            adds r4, r0, #0
008a23cc  7b 44                                            add r3, pc
008a23ce  9a 58                                            ldr r2, [r3, r2]
008a23d0  08 32                                            adds r2, #8
008a23d2  02 60                                            str r2, [r0]
008a23d4  ff f7 e6 ff                                      bl #0x8a23a4
008a23d8  20 1c                                            adds r0, r4, #0
008a23da  10 bd                                            pop {r4, pc}
; mapping-symbol data/literal pool
008a23dc  c8 26 0f 00 a4 40 00 00                          .byte 0xc8, 0x26, 0x0f, 0x00, 0xa4, 0x40, 0x00, 0x00

; FUNCTION 0x008a23e4, declared_size=18, range_size=18, mode=thumb
; class-group: std::underflow_error
; alias: _ZNSt15underflow_errorD0Ev
; demangled: std::underflow_error::~underflow_error()
; decoder-mode: thumb
008a23e4  10 b5                                            push {r4, lr}
008a23e6  04 1c                                            adds r4, r0, #0
008a23e8  ff f7 ec ff                                      bl #0x8a23c4
008a23ec  20 1c                                            adds r0, r4, #0
008a23ee  6b f6 60 e7                                      blx #0x30e2b0
008a23f2  20 1c                                            adds r0, r4, #0
008a23f4  10 bd                                            pop {r4, pc}

; FUNCTION 0x008a23f8, declared_size=32, range_size=32, mode=thumb
; class-group: std::underflow_error
; alias: _ZNSt15underflow_errorD2Ev
; demangled: std::underflow_error::~underflow_error()
; decoder-mode: thumb
008a23f8  10 b5                                            push {r4, lr}
008a23fa  05 4b                                            ldr r3, [pc, #0x14]
008a23fc  05 4a                                            ldr r2, [pc, #0x14]
008a23fe  04 1c                                            adds r4, r0, #0
008a2400  7b 44                                            add r3, pc
008a2402  9a 58                                            ldr r2, [r3, r2]
008a2404  08 32                                            adds r2, #8
008a2406  02 60                                            str r2, [r0]
008a2408  ff f7 cc ff                                      bl #0x8a23a4
008a240c  20 1c                                            adds r0, r4, #0
008a240e  10 bd                                            pop {r4, pc}
; mapping-symbol data/literal pool
008a2410  94 26 0f 00 a4 40 00 00                          .byte 0x94, 0x26, 0x0f, 0x00, 0xa4, 0x40, 0x00, 0x00

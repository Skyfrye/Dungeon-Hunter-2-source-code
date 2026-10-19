; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008a24c0, declared_size=32, range_size=32, mode=thumb
; class-group: std::logic_error
; alias: _ZNSt11logic_errorD1Ev
; demangled: std::logic_error::~logic_error()
; decoder-mode: thumb
008a24c0  10 b5                                            push {r4, lr}
008a24c2  05 4b                                            ldr r3, [pc, #0x14]
008a24c4  05 4a                                            ldr r2, [pc, #0x14]
008a24c6  04 1c                                            adds r4, r0, #0
008a24c8  7b 44                                            add r3, pc
008a24ca  9a 58                                            ldr r2, [r3, r2]
008a24cc  08 32                                            adds r2, #8
008a24ce  02 60                                            str r2, [r0]
008a24d0  ff f7 34 ff                                      bl #0x8a233c
008a24d4  20 1c                                            adds r0, r4, #0
008a24d6  10 bd                                            pop {r4, pc}
; mapping-symbol data/literal pool
008a24d8  cc 25 0f 00 e8 41 00 00                          .byte 0xcc, 0x25, 0x0f, 0x00, 0xe8, 0x41, 0x00, 0x00

; FUNCTION 0x008a24e0, declared_size=18, range_size=18, mode=thumb
; class-group: std::logic_error
; alias: _ZNSt11logic_errorD0Ev
; demangled: std::logic_error::~logic_error()
; decoder-mode: thumb
008a24e0  10 b5                                            push {r4, lr}
008a24e2  04 1c                                            adds r4, r0, #0
008a24e4  ff f7 ec ff                                      bl #0x8a24c0
008a24e8  20 1c                                            adds r0, r4, #0
008a24ea  6b f6 e2 e6                                      blx #0x30e2b0
008a24ee  20 1c                                            adds r0, r4, #0
008a24f0  10 bd                                            pop {r4, pc}

; FUNCTION 0x008a24f4, declared_size=32, range_size=32, mode=thumb
; class-group: std::logic_error
; alias: _ZNSt11logic_errorD2Ev
; demangled: std::logic_error::~logic_error()
; decoder-mode: thumb
008a24f4  10 b5                                            push {r4, lr}
008a24f6  05 4b                                            ldr r3, [pc, #0x14]
008a24f8  05 4a                                            ldr r2, [pc, #0x14]
008a24fa  04 1c                                            adds r4, r0, #0
008a24fc  7b 44                                            add r3, pc
008a24fe  9a 58                                            ldr r2, [r3, r2]
008a2500  08 32                                            adds r2, #8
008a2502  02 60                                            str r2, [r0]
008a2504  ff f7 1a ff                                      bl #0x8a233c
008a2508  20 1c                                            adds r0, r4, #0
008a250a  10 bd                                            pop {r4, pc}
; mapping-symbol data/literal pool
008a250c  98 25 0f 00 e8 41 00 00                          .byte 0x98, 0x25, 0x0f, 0x00, 0xe8, 0x41, 0x00, 0x00

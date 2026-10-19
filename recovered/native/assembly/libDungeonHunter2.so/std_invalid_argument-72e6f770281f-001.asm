; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008a25bc, declared_size=32, range_size=32, mode=thumb
; class-group: std::invalid_argument
; alias: _ZNSt16invalid_argumentD1Ev
; demangled: std::invalid_argument::~invalid_argument()
; decoder-mode: thumb
008a25bc  10 b5                                            push {r4, lr}
008a25be  05 4b                                            ldr r3, [pc, #0x14]
008a25c0  05 4a                                            ldr r2, [pc, #0x14]
008a25c2  04 1c                                            adds r4, r0, #0
008a25c4  7b 44                                            add r3, pc
008a25c6  9a 58                                            ldr r2, [r3, r2]
008a25c8  08 32                                            adds r2, #8
008a25ca  02 60                                            str r2, [r0]
008a25cc  ff f7 92 ff                                      bl #0x8a24f4
008a25d0  20 1c                                            adds r0, r4, #0
008a25d2  10 bd                                            pop {r4, pc}
; mapping-symbol data/literal pool
008a25d4  d0 24 0f 00 a0 2a 00 00                          .byte 0xd0, 0x24, 0x0f, 0x00, 0xa0, 0x2a, 0x00, 0x00

; FUNCTION 0x008a25dc, declared_size=18, range_size=18, mode=thumb
; class-group: std::invalid_argument
; alias: _ZNSt16invalid_argumentD0Ev
; demangled: std::invalid_argument::~invalid_argument()
; decoder-mode: thumb
008a25dc  10 b5                                            push {r4, lr}
008a25de  04 1c                                            adds r4, r0, #0
008a25e0  ff f7 ec ff                                      bl #0x8a25bc
008a25e4  20 1c                                            adds r0, r4, #0
008a25e6  6b f6 64 e6                                      blx #0x30e2b0
008a25ea  20 1c                                            adds r0, r4, #0
008a25ec  10 bd                                            pop {r4, pc}

; FUNCTION 0x008a25f0, declared_size=32, range_size=32, mode=thumb
; class-group: std::invalid_argument
; alias: _ZNSt16invalid_argumentD2Ev
; demangled: std::invalid_argument::~invalid_argument()
; decoder-mode: thumb
008a25f0  10 b5                                            push {r4, lr}
008a25f2  05 4b                                            ldr r3, [pc, #0x14]
008a25f4  05 4a                                            ldr r2, [pc, #0x14]
008a25f6  04 1c                                            adds r4, r0, #0
008a25f8  7b 44                                            add r3, pc
008a25fa  9a 58                                            ldr r2, [r3, r2]
008a25fc  08 32                                            adds r2, #8
008a25fe  02 60                                            str r2, [r0]
008a2600  ff f7 78 ff                                      bl #0x8a24f4
008a2604  20 1c                                            adds r0, r4, #0
008a2606  10 bd                                            pop {r4, pc}
; mapping-symbol data/literal pool
008a2608  9c 24 0f 00 a0 2a 00 00                          .byte 0x9c, 0x24, 0x0f, 0x00, 0xa0, 0x2a, 0x00, 0x00

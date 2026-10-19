; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008a38c4, declared_size=36, range_size=36, mode=thumb
; class-group: std::locale::facet
; alias: _ZNSt6locale5facetD1Ev
; demangled: std::locale::facet::~facet()
; decoder-mode: thumb
008a38c4  10 b5                                            push {r4, lr}
008a38c6  06 4b                                            ldr r3, [pc, #0x18]
008a38c8  06 4a                                            ldr r2, [pc, #0x18]
008a38ca  04 1c                                            adds r4, r0, #0
008a38cc  7b 44                                            add r3, pc
008a38ce  9a 58                                            ldr r2, [r3, r2]
008a38d0  08 32                                            adds r2, #8
008a38d2  04 c0                                            stm r0!, {r2}
008a38d4  04 30                                            adds r0, #4
008a38d6  6a f6 f0 e6                                      blx #0x30e6b8
008a38da  20 1c                                            adds r0, r4, #0
008a38dc  10 bd                                            pop {r4, pc}
008a38de  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008a38e0  c8 11 0f 00 4c 2b 00 00                          .byte 0xc8, 0x11, 0x0f, 0x00, 0x4c, 0x2b, 0x00, 0x00

; FUNCTION 0x008a38e8, declared_size=18, range_size=18, mode=thumb
; class-group: std::locale::facet
; alias: _ZNSt6locale5facetD0Ev
; demangled: std::locale::facet::~facet()
; decoder-mode: thumb
008a38e8  10 b5                                            push {r4, lr}
008a38ea  04 1c                                            adds r4, r0, #0
008a38ec  ff f7 ea ff                                      bl #0x8a38c4
008a38f0  20 1c                                            adds r0, r4, #0
008a38f2  6a f6 de e4                                      blx #0x30e2b0
008a38f6  20 1c                                            adds r0, r4, #0
008a38f8  10 bd                                            pop {r4, pc}

; FUNCTION 0x008a38fc, declared_size=36, range_size=36, mode=thumb
; class-group: std::locale::facet
; alias: _ZNSt6locale5facetD2Ev
; demangled: std::locale::facet::~facet()
; decoder-mode: thumb
008a38fc  10 b5                                            push {r4, lr}
008a38fe  06 4b                                            ldr r3, [pc, #0x18]
008a3900  06 4a                                            ldr r2, [pc, #0x18]
008a3902  04 1c                                            adds r4, r0, #0
008a3904  7b 44                                            add r3, pc
008a3906  9a 58                                            ldr r2, [r3, r2]
008a3908  08 32                                            adds r2, #8
008a390a  04 c0                                            stm r0!, {r2}
008a390c  04 30                                            adds r0, #4
008a390e  6a f6 d4 e6                                      blx #0x30e6b8
008a3912  20 1c                                            adds r0, r4, #0
008a3914  10 bd                                            pop {r4, pc}
008a3916  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008a3918  90 11 0f 00 4c 2b 00 00                          .byte 0x90, 0x11, 0x0f, 0x00, 0x4c, 0x2b, 0x00, 0x00

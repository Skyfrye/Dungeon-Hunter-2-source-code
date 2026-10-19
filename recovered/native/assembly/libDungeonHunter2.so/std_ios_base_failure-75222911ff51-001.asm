; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008a2ac0, declared_size=32, range_size=32, mode=thumb
; class-group: std::ios_base::failure
; alias: _ZNSt8ios_base7failureD1Ev
; demangled: std::ios_base::failure::~failure()
; decoder-mode: thumb
008a2ac0  10 b5                                            push {r4, lr}
008a2ac2  05 4b                                            ldr r3, [pc, #0x14]
008a2ac4  05 4a                                            ldr r2, [pc, #0x14]
008a2ac6  04 1c                                            adds r4, r0, #0
008a2ac8  7b 44                                            add r3, pc
008a2aca  9a 58                                            ldr r2, [r3, r2]
008a2acc  08 32                                            adds r2, #8
008a2ace  02 60                                            str r2, [r0]
008a2ad0  ff f7 34 fc                                      bl #0x8a233c
008a2ad4  20 1c                                            adds r0, r4, #0
008a2ad6  10 bd                                            pop {r4, pc}
; mapping-symbol data/literal pool
008a2ad8  cc 1f 0f 00 ec 31 00 00                          .byte 0xcc, 0x1f, 0x0f, 0x00, 0xec, 0x31, 0x00, 0x00

; FUNCTION 0x008a2ae0, declared_size=18, range_size=18, mode=thumb
; class-group: std::ios_base::failure
; alias: _ZNSt8ios_base7failureD0Ev
; demangled: std::ios_base::failure::~failure()
; decoder-mode: thumb
008a2ae0  10 b5                                            push {r4, lr}
008a2ae2  04 1c                                            adds r4, r0, #0
008a2ae4  ff f7 ec ff                                      bl #0x8a2ac0
008a2ae8  20 1c                                            adds r0, r4, #0
008a2aea  6b f6 e2 e3                                      blx #0x30e2b0
008a2aee  20 1c                                            adds r0, r4, #0
008a2af0  10 bd                                            pop {r4, pc}

; FUNCTION 0x008a2af4, declared_size=32, range_size=32, mode=thumb
; class-group: std::ios_base::failure
; alias: _ZNSt8ios_base7failureD2Ev
; demangled: std::ios_base::failure::~failure()
; decoder-mode: thumb
008a2af4  10 b5                                            push {r4, lr}
008a2af6  05 4b                                            ldr r3, [pc, #0x14]
008a2af8  05 4a                                            ldr r2, [pc, #0x14]
008a2afa  04 1c                                            adds r4, r0, #0
008a2afc  7b 44                                            add r3, pc
008a2afe  9a 58                                            ldr r2, [r3, r2]
008a2b00  08 32                                            adds r2, #8
008a2b02  02 60                                            str r2, [r0]
008a2b04  ff f7 1a fc                                      bl #0x8a233c
008a2b08  20 1c                                            adds r0, r4, #0
008a2b0a  10 bd                                            pop {r4, pc}
; mapping-symbol data/literal pool
008a2b0c  98 1f 0f 00 ec 31 00 00                          .byte 0x98, 0x1f, 0x0f, 0x00, 0xec, 0x31, 0x00, 0x00

; FUNCTION 0x008a2b14, declared_size=32, range_size=32, mode=thumb
; class-group: std::ios_base::failure
; alias: _ZNSt8ios_base7failureC1ERKSs
; demangled: std::ios_base::failure::failure(std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&)
; decoder-mode: thumb
008a2b14  70 b5                                            push {r4, r5, r6, lr}
008a2b16  05 4c                                            ldr r4, [pc, #0x14]
008a2b18  05 1c                                            adds r5, r0, #0
008a2b1a  ff f7 95 fe                                      bl #0x8a2848
008a2b1e  04 4b                                            ldr r3, [pc, #0x10]
008a2b20  7c 44                                            add r4, pc
008a2b22  28 1c                                            adds r0, r5, #0
008a2b24  e3 58                                            ldr r3, [r4, r3]
008a2b26  08 33                                            adds r3, #8
008a2b28  2b 60                                            str r3, [r5]
008a2b2a  70 bd                                            pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
008a2b2c  74 1f 0f 00 ec 31 00 00                          .byte 0x74, 0x1f, 0x0f, 0x00, 0xec, 0x31, 0x00, 0x00

; FUNCTION 0x008a2b34, declared_size=32, range_size=32, mode=thumb
; class-group: std::ios_base::failure
; alias: _ZNSt8ios_base7failureC2ERKSs
; demangled: std::ios_base::failure::failure(std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&)
; decoder-mode: thumb
008a2b34  70 b5                                            push {r4, r5, r6, lr}
008a2b36  05 4c                                            ldr r4, [pc, #0x14]
008a2b38  05 1c                                            adds r5, r0, #0
008a2b3a  ff f7 85 fe                                      bl #0x8a2848
008a2b3e  04 4b                                            ldr r3, [pc, #0x10]
008a2b40  7c 44                                            add r4, pc
008a2b42  28 1c                                            adds r0, r5, #0
008a2b44  e3 58                                            ldr r3, [r4, r3]
008a2b46  08 33                                            adds r3, #8
008a2b48  2b 60                                            str r3, [r5]
008a2b4a  70 bd                                            pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
008a2b4c  54 1f 0f 00 ec 31 00 00                          .byte 0x54, 0x1f, 0x0f, 0x00, 0xec, 0x31, 0x00, 0x00

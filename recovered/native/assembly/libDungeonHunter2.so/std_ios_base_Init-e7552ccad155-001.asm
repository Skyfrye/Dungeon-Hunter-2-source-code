; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008b8a6c, declared_size=44, range_size=44, mode=thumb
; class-group: std::ios_base::Init
; alias: _ZNSt8ios_base4InitD1Ev
; demangled: std::ios_base::Init::~Init()
; decoder-mode: thumb
008b8a6c  10 b5                                            push {r4, lr}
008b8a6e  08 4b                                            ldr r3, [pc, #0x20]
008b8a70  08 4a                                            ldr r2, [pc, #0x20]
008b8a72  04 1c                                            adds r4, r0, #0
008b8a74  7b 44                                            add r3, pc
008b8a76  9a 58                                            ldr r2, [r3, r2]
008b8a78  13 68                                            ldr r3, [r2]
008b8a7a  01 3b                                            subs r3, #1
008b8a7c  13 60                                            str r3, [r2]
008b8a7e  00 2b                                            cmp r3, #0
008b8a80  03 d1                                            bne #0x8b8a8a
008b8a82  ff f7 c3 fe                                      bl #0x8b880c
008b8a86  fd f7 ad fe                                      bl #0x8b67e4
008b8a8a  20 1c                                            adds r0, r4, #0
008b8a8c  10 bd                                            pop {r4, pc}
008b8a8e  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008b8a90  20 c0 0d 00 20 0f 00 00                          .byte 0x20, 0xc0, 0x0d, 0x00, 0x20, 0x0f, 0x00, 0x00

; FUNCTION 0x008b8a98, declared_size=44, range_size=44, mode=thumb
; class-group: std::ios_base::Init
; alias: _ZNSt8ios_base4InitD2Ev
; demangled: std::ios_base::Init::~Init()
; decoder-mode: thumb
008b8a98  10 b5                                            push {r4, lr}
008b8a9a  08 4b                                            ldr r3, [pc, #0x20]
008b8a9c  08 4a                                            ldr r2, [pc, #0x20]
008b8a9e  04 1c                                            adds r4, r0, #0
008b8aa0  7b 44                                            add r3, pc
008b8aa2  9a 58                                            ldr r2, [r3, r2]
008b8aa4  13 68                                            ldr r3, [r2]
008b8aa6  01 3b                                            subs r3, #1
008b8aa8  13 60                                            str r3, [r2]
008b8aaa  00 2b                                            cmp r3, #0
008b8aac  03 d1                                            bne #0x8b8ab6
008b8aae  ff f7 ad fe                                      bl #0x8b880c
008b8ab2  fd f7 97 fe                                      bl #0x8b67e4
008b8ab6  20 1c                                            adds r0, r4, #0
008b8ab8  10 bd                                            pop {r4, pc}
008b8aba  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008b8abc  f4 bf 0d 00 20 0f 00 00                          .byte 0xf4, 0xbf, 0x0d, 0x00, 0x20, 0x0f, 0x00, 0x00

; FUNCTION 0x008b8cd4, declared_size=48, range_size=48, mode=thumb
; class-group: std::ios_base::Init
; alias: _ZNSt8ios_base4InitC1Ev
; demangled: std::ios_base::Init::Init()
; decoder-mode: thumb
008b8cd4  10 b5                                            push {r4, lr}
008b8cd6  09 4b                                            ldr r3, [pc, #0x24]
008b8cd8  09 4a                                            ldr r2, [pc, #0x24]
008b8cda  04 1c                                            adds r4, r0, #0
008b8cdc  7b 44                                            add r3, pc
008b8cde  9a 58                                            ldr r2, [r3, r2]
008b8ce0  13 68                                            ldr r3, [r2]
008b8ce2  59 1c                                            adds r1, r3, #1
008b8ce4  11 60                                            str r1, [r2]
008b8ce6  00 2b                                            cmp r3, #0
008b8ce8  05 d1                                            bne #0x8b8cf6
008b8cea  fe f7 0b f9                                      bl #0x8b6f04
008b8cee  ff f7 05 ff                                      bl #0x8b8afc
008b8cf2  05 f0 65 f8                                      bl #0x8bddc0
008b8cf6  20 1c                                            adds r0, r4, #0
008b8cf8  10 bd                                            pop {r4, pc}
008b8cfa  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008b8cfc  b8 bd 0d 00 20 0f 00 00                          .byte 0xb8, 0xbd, 0x0d, 0x00, 0x20, 0x0f, 0x00, 0x00

; FUNCTION 0x008b8d04, declared_size=48, range_size=48, mode=thumb
; class-group: std::ios_base::Init
; alias: _ZNSt8ios_base4InitC2Ev
; demangled: std::ios_base::Init::Init()
; decoder-mode: thumb
008b8d04  10 b5                                            push {r4, lr}
008b8d06  09 4b                                            ldr r3, [pc, #0x24]
008b8d08  09 4a                                            ldr r2, [pc, #0x24]
008b8d0a  04 1c                                            adds r4, r0, #0
008b8d0c  7b 44                                            add r3, pc
008b8d0e  9a 58                                            ldr r2, [r3, r2]
008b8d10  13 68                                            ldr r3, [r2]
008b8d12  59 1c                                            adds r1, r3, #1
008b8d14  11 60                                            str r1, [r2]
008b8d16  00 2b                                            cmp r3, #0
008b8d18  05 d1                                            bne #0x8b8d26
008b8d1a  fe f7 f3 f8                                      bl #0x8b6f04
008b8d1e  ff f7 ed fe                                      bl #0x8b8afc
008b8d22  05 f0 4d f8                                      bl #0x8bddc0
008b8d26  20 1c                                            adds r0, r4, #0
008b8d28  10 bd                                            pop {r4, pc}
008b8d2a  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008b8d2c  88 bd 0d 00 20 0f 00 00                          .byte 0x88, 0xbd, 0x0d, 0x00, 0x20, 0x0f, 0x00, 0x00

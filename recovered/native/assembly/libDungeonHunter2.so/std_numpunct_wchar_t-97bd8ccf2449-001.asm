; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008bb1bc, declared_size=4, range_size=4, mode=thumb
; class-group: std::numpunct<wchar_t>
; alias: _ZNKSt8numpunctIwE16do_decimal_pointEv
; demangled: std::numpunct<wchar_t>::do_decimal_point() const
; decoder-mode: thumb
008bb1bc  2e 20                                            movs r0, #0x2e
008bb1be  70 47                                            bx lr

; FUNCTION 0x008bb1c0, declared_size=4, range_size=4, mode=thumb
; class-group: std::numpunct<wchar_t>
; alias: _ZNKSt8numpunctIwE16do_thousands_sepEv
; demangled: std::numpunct<wchar_t>::do_thousands_sep() const
; decoder-mode: thumb
008bb1c0  2c 20                                            movs r0, #0x2c
008bb1c2  70 47                                            bx lr

; FUNCTION 0x008bb1c4, declared_size=32, range_size=32, mode=thumb
; class-group: std::numpunct<wchar_t>
; alias: _ZNSt8numpunctIwED1Ev
; demangled: std::numpunct<wchar_t>::~numpunct()
; decoder-mode: thumb
008bb1c4  10 b5                                            push {r4, lr}
008bb1c6  05 4b                                            ldr r3, [pc, #0x14]
008bb1c8  05 4a                                            ldr r2, [pc, #0x14]
008bb1ca  04 1c                                            adds r4, r0, #0
008bb1cc  7b 44                                            add r3, pc
008bb1ce  9a 58                                            ldr r2, [r3, r2]
008bb1d0  08 32                                            adds r2, #8
008bb1d2  02 60                                            str r2, [r0]
008bb1d4  e8 f7 92 fb                                      bl #0x8a38fc
008bb1d8  20 1c                                            adds r0, r4, #0
008bb1da  10 bd                                            pop {r4, pc}
; mapping-symbol data/literal pool
008bb1dc  c8 98 0d 00 44 3a 00 00                          .byte 0xc8, 0x98, 0x0d, 0x00, 0x44, 0x3a, 0x00, 0x00

; FUNCTION 0x008bb1e4, declared_size=18, range_size=18, mode=thumb
; class-group: std::numpunct<wchar_t>
; alias: _ZNSt8numpunctIwED0Ev
; demangled: std::numpunct<wchar_t>::~numpunct()
; decoder-mode: thumb
008bb1e4  10 b5                                            push {r4, lr}
008bb1e6  04 1c                                            adds r4, r0, #0
008bb1e8  ff f7 ec ff                                      bl #0x8bb1c4
008bb1ec  20 1c                                            adds r0, r4, #0
008bb1ee  53 f6 60 e0                                      blx #0x30e2b0
008bb1f2  20 1c                                            adds r0, r4, #0
008bb1f4  10 bd                                            pop {r4, pc}

; FUNCTION 0x008bb1f8, declared_size=32, range_size=32, mode=thumb
; class-group: std::numpunct<wchar_t>
; alias: _ZNSt8numpunctIwED2Ev
; demangled: std::numpunct<wchar_t>::~numpunct()
; decoder-mode: thumb
008bb1f8  10 b5                                            push {r4, lr}
008bb1fa  05 4b                                            ldr r3, [pc, #0x14]
008bb1fc  05 4a                                            ldr r2, [pc, #0x14]
008bb1fe  04 1c                                            adds r4, r0, #0
008bb200  7b 44                                            add r3, pc
008bb202  9a 58                                            ldr r2, [r3, r2]
008bb204  08 32                                            adds r2, #8
008bb206  02 60                                            str r2, [r0]
008bb208  e8 f7 78 fb                                      bl #0x8a38fc
008bb20c  20 1c                                            adds r0, r4, #0
008bb20e  10 bd                                            pop {r4, pc}
; mapping-symbol data/literal pool
008bb210  94 98 0d 00 44 3a 00 00                          .byte 0x94, 0x98, 0x0d, 0x00, 0x44, 0x3a, 0x00, 0x00

; FUNCTION 0x008bb26c, declared_size=24, range_size=24, mode=thumb
; class-group: std::numpunct<wchar_t>
; alias: _ZNKSt8numpunctIwE11do_groupingEv
; demangled: std::numpunct<wchar_t>::do_grouping() const
; decoder-mode: thumb
008bb26c  10 b5                                            push {r4, lr}
008bb26e  04 1c                                            adds r4, r0, #0
008bb270  20 61                                            str r0, [r4, #0x10]
008bb272  60 61                                            str r0, [r4, #0x14]
008bb274  10 21                                            movs r1, #0x10
008bb276  56 f6 02 e2                                      blx #0x31167c
008bb27a  23 69                                            ldr r3, [r4, #0x10]
008bb27c  00 22                                            movs r2, #0
008bb27e  20 1c                                            adds r0, r4, #0
008bb280  1a 70                                            strb r2, [r3]
008bb282  10 bd                                            pop {r4, pc}

; FUNCTION 0x008bb2d4, declared_size=28, range_size=28, mode=thumb
; class-group: std::numpunct<wchar_t>
; alias: _ZNKSt8numpunctIwE12do_falsenameEv
; demangled: std::numpunct<wchar_t>::do_falsename() const
; decoder-mode: thumb
008bb2d4  10 b5                                            push {r4, lr}
008bb2d6  05 49                                            ldr r1, [pc, #0x14]
008bb2d8  82 b0                                            sub sp, #8
008bb2da  01 aa                                            add r2, sp, #4
008bb2dc  79 44                                            add r1, pc
008bb2de  04 1c                                            adds r4, r0, #0
008bb2e0  fa f7 6a fe                                      bl #0x8b5fb8
008bb2e4  02 b0                                            add sp, #8
008bb2e6  20 1c                                            adds r0, r4, #0
008bb2e8  10 bd                                            pop {r4, pc}
008bb2ea  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008bb2ec  38 af 05 00                                      .byte 0x38, 0xaf, 0x05, 0x00

; FUNCTION 0x008bb2f0, declared_size=28, range_size=28, mode=thumb
; class-group: std::numpunct<wchar_t>
; alias: _ZNKSt8numpunctIwE11do_truenameEv
; demangled: std::numpunct<wchar_t>::do_truename() const
; decoder-mode: thumb
008bb2f0  10 b5                                            push {r4, lr}
008bb2f2  05 49                                            ldr r1, [pc, #0x14]
008bb2f4  82 b0                                            sub sp, #8
008bb2f6  01 aa                                            add r2, sp, #4
008bb2f8  79 44                                            add r1, pc
008bb2fa  04 1c                                            adds r4, r0, #0
008bb2fc  fa f7 5c fe                                      bl #0x8b5fb8
008bb300  02 b0                                            add sp, #8
008bb302  20 1c                                            adds r0, r4, #0
008bb304  10 bd                                            pop {r4, pc}
008bb306  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008bb308  34 af 05 00                                      .byte 0x34, 0xaf, 0x05, 0x00

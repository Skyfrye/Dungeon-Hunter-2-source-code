; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008bb1b4, declared_size=4, range_size=4, mode=thumb
; class-group: std::numpunct<char>
; alias: _ZNKSt8numpunctIcE16do_decimal_pointEv
; demangled: std::numpunct<char>::do_decimal_point() const
; decoder-mode: thumb
008bb1b4  2e 20                                            movs r0, #0x2e
008bb1b6  70 47                                            bx lr

; FUNCTION 0x008bb1b8, declared_size=4, range_size=4, mode=thumb
; class-group: std::numpunct<char>
; alias: _ZNKSt8numpunctIcE16do_thousands_sepEv
; demangled: std::numpunct<char>::do_thousands_sep() const
; decoder-mode: thumb
008bb1b8  2c 20                                            movs r0, #0x2c
008bb1ba  70 47                                            bx lr

; FUNCTION 0x008bb218, declared_size=32, range_size=32, mode=thumb
; class-group: std::numpunct<char>
; alias: _ZNSt8numpunctIcED1Ev
; demangled: std::numpunct<char>::~numpunct()
; decoder-mode: thumb
008bb218  10 b5                                            push {r4, lr}
008bb21a  05 4b                                            ldr r3, [pc, #0x14]
008bb21c  05 4a                                            ldr r2, [pc, #0x14]
008bb21e  04 1c                                            adds r4, r0, #0
008bb220  7b 44                                            add r3, pc
008bb222  9a 58                                            ldr r2, [r3, r2]
008bb224  08 32                                            adds r2, #8
008bb226  02 60                                            str r2, [r0]
008bb228  e8 f7 68 fb                                      bl #0x8a38fc
008bb22c  20 1c                                            adds r0, r4, #0
008bb22e  10 bd                                            pop {r4, pc}
; mapping-symbol data/literal pool
008bb230  74 98 0d 00 20 3c 00 00                          .byte 0x74, 0x98, 0x0d, 0x00, 0x20, 0x3c, 0x00, 0x00

; FUNCTION 0x008bb238, declared_size=18, range_size=18, mode=thumb
; class-group: std::numpunct<char>
; alias: _ZNSt8numpunctIcED0Ev
; demangled: std::numpunct<char>::~numpunct()
; decoder-mode: thumb
008bb238  10 b5                                            push {r4, lr}
008bb23a  04 1c                                            adds r4, r0, #0
008bb23c  ff f7 ec ff                                      bl #0x8bb218
008bb240  20 1c                                            adds r0, r4, #0
008bb242  53 f6 36 e0                                      blx #0x30e2b0
008bb246  20 1c                                            adds r0, r4, #0
008bb248  10 bd                                            pop {r4, pc}

; FUNCTION 0x008bb24c, declared_size=32, range_size=32, mode=thumb
; class-group: std::numpunct<char>
; alias: _ZNSt8numpunctIcED2Ev
; demangled: std::numpunct<char>::~numpunct()
; decoder-mode: thumb
008bb24c  10 b5                                            push {r4, lr}
008bb24e  05 4b                                            ldr r3, [pc, #0x14]
008bb250  05 4a                                            ldr r2, [pc, #0x14]
008bb252  04 1c                                            adds r4, r0, #0
008bb254  7b 44                                            add r3, pc
008bb256  9a 58                                            ldr r2, [r3, r2]
008bb258  08 32                                            adds r2, #8
008bb25a  02 60                                            str r2, [r0]
008bb25c  e8 f7 4e fb                                      bl #0x8a38fc
008bb260  20 1c                                            adds r0, r4, #0
008bb262  10 bd                                            pop {r4, pc}
; mapping-symbol data/literal pool
008bb264  40 98 0d 00 20 3c 00 00                          .byte 0x40, 0x98, 0x0d, 0x00, 0x20, 0x3c, 0x00, 0x00

; FUNCTION 0x008bb284, declared_size=24, range_size=24, mode=thumb
; class-group: std::numpunct<char>
; alias: _ZNKSt8numpunctIcE11do_groupingEv
; demangled: std::numpunct<char>::do_grouping() const
; decoder-mode: thumb
008bb284  10 b5                                            push {r4, lr}
008bb286  04 1c                                            adds r4, r0, #0
008bb288  20 61                                            str r0, [r4, #0x10]
008bb28a  60 61                                            str r0, [r4, #0x14]
008bb28c  10 21                                            movs r1, #0x10
008bb28e  56 f6 f6 e1                                      blx #0x31167c
008bb292  23 69                                            ldr r3, [r4, #0x10]
008bb294  00 22                                            movs r2, #0
008bb296  20 1c                                            adds r0, r4, #0
008bb298  1a 70                                            strb r2, [r3]
008bb29a  10 bd                                            pop {r4, pc}

; FUNCTION 0x008bb29c, declared_size=28, range_size=28, mode=thumb
; class-group: std::numpunct<char>
; alias: _ZNKSt8numpunctIcE12do_falsenameEv
; demangled: std::numpunct<char>::do_falsename() const
; decoder-mode: thumb
008bb29c  10 b5                                            push {r4, lr}
008bb29e  05 49                                            ldr r1, [pc, #0x14]
008bb2a0  82 b0                                            sub sp, #8
008bb2a2  01 aa                                            add r2, sp, #4
008bb2a4  79 44                                            add r1, pc
008bb2a6  04 1c                                            adds r4, r0, #0
008bb2a8  58 f6 20 e7                                      blx #0x3140ec
008bb2ac  02 b0                                            add sp, #8
008bb2ae  20 1c                                            adds r0, r4, #0
008bb2b0  10 bd                                            pop {r4, pc}
008bb2b2  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008bb2b4  6c aa 05 00                                      .byte 0x6c, 0xaa, 0x05, 0x00

; FUNCTION 0x008bb2b8, declared_size=28, range_size=28, mode=thumb
; class-group: std::numpunct<char>
; alias: _ZNKSt8numpunctIcE11do_truenameEv
; demangled: std::numpunct<char>::do_truename() const
; decoder-mode: thumb
008bb2b8  10 b5                                            push {r4, lr}
008bb2ba  05 49                                            ldr r1, [pc, #0x14]
008bb2bc  82 b0                                            sub sp, #8
008bb2be  01 aa                                            add r2, sp, #4
008bb2c0  79 44                                            add r1, pc
008bb2c2  04 1c                                            adds r4, r0, #0
008bb2c4  58 f6 12 e7                                      blx #0x3140ec
008bb2c8  02 b0                                            add sp, #8
008bb2ca  20 1c                                            adds r0, r4, #0
008bb2cc  10 bd                                            pop {r4, pc}
008bb2ce  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008bb2d0  48 aa 05 00                                      .byte 0x48, 0xaa, 0x05, 0x00

; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008b42c0, declared_size=10, range_size=10, mode=thumb
; class-group: std::moneypunct_byname<char, false>
; alias: _ZNKSt17moneypunct_bynameIcLb0EE14do_frac_digitsEv
; demangled: std::moneypunct_byname<char, false>::do_frac_digits() const
; decoder-mode: thumb
008b42c0  10 b5                                            push {r4, lr}
008b42c2  40 69                                            ldr r0, [r0, #0x14]
008b42c4  02 f0 1c fc                                      bl #0x8b6b00
008b42c8  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b4304, declared_size=28, range_size=28, mode=thumb
; class-group: std::moneypunct_byname<char, false>
; alias: _ZNKSt17moneypunct_bynameIcLb0EE11do_groupingEv
; demangled: std::moneypunct_byname<char, false>::do_grouping() const
; decoder-mode: thumb
008b4304  10 b5                                            push {r4, lr}
008b4306  82 b0                                            sub sp, #8
008b4308  04 1c                                            adds r4, r0, #0
008b430a  48 69                                            ldr r0, [r1, #0x14]
008b430c  02 f0 e4 fb                                      bl #0x8b6ad8
008b4310  01 aa                                            add r2, sp, #4
008b4312  01 1c                                            adds r1, r0, #0
008b4314  20 1c                                            adds r0, r4, #0
008b4316  5f f6 ea e6                                      blx #0x3140ec
008b431a  02 b0                                            add sp, #8
008b431c  20 1c                                            adds r0, r4, #0
008b431e  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b4354, declared_size=10, range_size=10, mode=thumb
; class-group: std::moneypunct_byname<char, false>
; alias: _ZNKSt17moneypunct_bynameIcLb0EE16do_thousands_sepEv
; demangled: std::moneypunct_byname<char, false>::do_thousands_sep() const
; decoder-mode: thumb
008b4354  10 b5                                            push {r4, lr}
008b4356  40 69                                            ldr r0, [r0, #0x14]
008b4358  02 f0 bc fb                                      bl #0x8b6ad4
008b435c  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b4384, declared_size=10, range_size=10, mode=thumb
; class-group: std::moneypunct_byname<char, false>
; alias: _ZNKSt17moneypunct_bynameIcLb0EE16do_decimal_pointEv
; demangled: std::moneypunct_byname<char, false>::do_decimal_point() const
; decoder-mode: thumb
008b4384  10 b5                                            push {r4, lr}
008b4386  40 69                                            ldr r0, [r0, #0x14]
008b4388  02 f0 a2 fb                                      bl #0x8b6ad0
008b438c  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b4a60, declared_size=28, range_size=28, mode=thumb
; class-group: std::moneypunct_byname<char, false>
; alias: _ZNKSt17moneypunct_bynameIcLb0EE16do_negative_signEv
; demangled: std::moneypunct_byname<char, false>::do_negative_sign() const
; decoder-mode: thumb
008b4a60  10 b5                                            push {r4, lr}
008b4a62  82 b0                                            sub sp, #8
008b4a64  04 1c                                            adds r4, r0, #0
008b4a66  48 69                                            ldr r0, [r1, #0x14]
008b4a68  02 f0 42 f8                                      bl #0x8b6af0
008b4a6c  01 aa                                            add r2, sp, #4
008b4a6e  01 1c                                            adds r1, r0, #0
008b4a70  20 1c                                            adds r0, r4, #0
008b4a72  5f f6 3c e3                                      blx #0x3140ec
008b4a76  02 b0                                            add sp, #8
008b4a78  20 1c                                            adds r0, r4, #0
008b4a7a  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b4a98, declared_size=28, range_size=28, mode=thumb
; class-group: std::moneypunct_byname<char, false>
; alias: _ZNKSt17moneypunct_bynameIcLb0EE16do_positive_signEv
; demangled: std::moneypunct_byname<char, false>::do_positive_sign() const
; decoder-mode: thumb
008b4a98  10 b5                                            push {r4, lr}
008b4a9a  82 b0                                            sub sp, #8
008b4a9c  04 1c                                            adds r4, r0, #0
008b4a9e  48 69                                            ldr r0, [r1, #0x14]
008b4aa0  02 f0 20 f8                                      bl #0x8b6ae4
008b4aa4  01 aa                                            add r2, sp, #4
008b4aa6  01 1c                                            adds r1, r0, #0
008b4aa8  20 1c                                            adds r0, r4, #0
008b4aaa  5f f6 20 e3                                      blx #0x3140ec
008b4aae  02 b0                                            add sp, #8
008b4ab0  20 1c                                            adds r0, r4, #0
008b4ab2  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b4ad0, declared_size=28, range_size=28, mode=thumb
; class-group: std::moneypunct_byname<char, false>
; alias: _ZNKSt17moneypunct_bynameIcLb0EE14do_curr_symbolEv
; demangled: std::moneypunct_byname<char, false>::do_curr_symbol() const
; decoder-mode: thumb
008b4ad0  10 b5                                            push {r4, lr}
008b4ad2  82 b0                                            sub sp, #8
008b4ad4  04 1c                                            adds r4, r0, #0
008b4ad6  48 69                                            ldr r0, [r1, #0x14]
008b4ad8  01 f0 f4 ff                                      bl #0x8b6ac4
008b4adc  01 aa                                            add r2, sp, #4
008b4ade  01 1c                                            adds r1, r0, #0
008b4ae0  20 1c                                            adds r0, r4, #0
008b4ae2  5f f6 04 e3                                      blx #0x3140ec
008b4ae6  02 b0                                            add sp, #8
008b4ae8  20 1c                                            adds r0, r4, #0
008b4aea  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b4aec, declared_size=40, range_size=40, mode=thumb
; class-group: std::moneypunct_byname<char, false>
; alias: _ZNSt17moneypunct_bynameIcLb0EED1Ev
; demangled: std::moneypunct_byname<char, false>::~moneypunct_byname()
; decoder-mode: thumb
008b4aec  10 b5                                            push {r4, lr}
008b4aee  07 4b                                            ldr r3, [pc, #0x1c]
008b4af0  07 4a                                            ldr r2, [pc, #0x1c]
008b4af2  04 1c                                            adds r4, r0, #0
008b4af4  7b 44                                            add r3, pc
008b4af6  9a 58                                            ldr r2, [r3, r2]
008b4af8  08 32                                            adds r2, #8
008b4afa  02 60                                            str r2, [r0]
008b4afc  40 69                                            ldr r0, [r0, #0x14]
008b4afe  ff f7 eb f8                                      bl #0x8b3cd8
008b4b02  20 1c                                            adds r0, r4, #0
008b4b04  04 f0 b4 fc                                      bl #0x8b9470
008b4b08  20 1c                                            adds r0, r4, #0
008b4b0a  10 bd                                            pop {r4, pc}
; mapping-symbol data/literal pool
008b4b0c  a0 ff 0d 00 70 1f 00 00                          .byte 0xa0, 0xff, 0x0d, 0x00, 0x70, 0x1f, 0x00, 0x00

; FUNCTION 0x008b4b14, declared_size=18, range_size=18, mode=thumb
; class-group: std::moneypunct_byname<char, false>
; alias: _ZNSt17moneypunct_bynameIcLb0EED0Ev
; demangled: std::moneypunct_byname<char, false>::~moneypunct_byname()
; decoder-mode: thumb
008b4b14  10 b5                                            push {r4, lr}
008b4b16  04 1c                                            adds r4, r0, #0
008b4b18  ff f7 e8 ff                                      bl #0x8b4aec
008b4b1c  20 1c                                            adds r0, r4, #0
008b4b1e  59 f6 c8 e3                                      blx #0x30e2b0
008b4b22  20 1c                                            adds r0, r4, #0
008b4b24  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b4b28, declared_size=40, range_size=40, mode=thumb
; class-group: std::moneypunct_byname<char, false>
; alias: _ZNSt17moneypunct_bynameIcLb0EED2Ev
; demangled: std::moneypunct_byname<char, false>::~moneypunct_byname()
; decoder-mode: thumb
008b4b28  10 b5                                            push {r4, lr}
008b4b2a  07 4b                                            ldr r3, [pc, #0x1c]
008b4b2c  07 4a                                            ldr r2, [pc, #0x1c]
008b4b2e  04 1c                                            adds r4, r0, #0
008b4b30  7b 44                                            add r3, pc
008b4b32  9a 58                                            ldr r2, [r3, r2]
008b4b34  08 32                                            adds r2, #8
008b4b36  02 60                                            str r2, [r0]
008b4b38  40 69                                            ldr r0, [r0, #0x14]
008b4b3a  ff f7 cd f8                                      bl #0x8b3cd8
008b4b3e  20 1c                                            adds r0, r4, #0
008b4b40  04 f0 96 fc                                      bl #0x8b9470
008b4b44  20 1c                                            adds r0, r4, #0
008b4b46  10 bd                                            pop {r4, pc}
; mapping-symbol data/literal pool
008b4b48  64 ff 0d 00 70 1f 00 00                          .byte 0x64, 0xff, 0x0d, 0x00, 0x70, 0x1f, 0x00, 0x00

; FUNCTION 0x008b4b50, declared_size=52, range_size=52, mode=thumb
; class-group: std::moneypunct_byname<char, false>
; alias: _ZNSt17moneypunct_bynameIcLb0EEC1EP16_Locale_monetary
; demangled: std::moneypunct_byname<char, false>::moneypunct_byname(_Locale_monetary*)
; decoder-mode: thumb
008b4b50  70 b5                                            push {r4, r5, r6, lr}
008b4b52  0e 1c                                            adds r6, r1, #0
008b4b54  09 4d                                            ldr r5, [pc, #0x24]
008b4b56  00 21                                            movs r1, #0
008b4b58  04 1c                                            adds r4, r0, #0
008b4b5a  04 f0 fb fd                                      bl #0x8b9754
008b4b5e  08 4b                                            ldr r3, [pc, #0x20]
008b4b60  7d 44                                            add r5, pc
008b4b62  20 1c                                            adds r0, r4, #0
008b4b64  eb 58                                            ldr r3, [r5, r3]
008b4b66  21 1c                                            adds r1, r4, #0
008b4b68  66 61                                            str r6, [r4, #0x14]
008b4b6a  08 33                                            adds r3, #8
008b4b6c  32 1c                                            adds r2, r6, #0
008b4b6e  23 60                                            str r3, [r4]
008b4b70  0c 30                                            adds r0, #0xc
008b4b72  10 31                                            adds r1, #0x10
008b4b74  ff f7 be fc                                      bl #0x8b44f4
008b4b78  20 1c                                            adds r0, r4, #0
008b4b7a  70 bd                                            pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
008b4b7c  34 ff 0d 00 70 1f 00 00                          .byte 0x34, 0xff, 0x0d, 0x00, 0x70, 0x1f, 0x00, 0x00

; FUNCTION 0x008b4b84, declared_size=52, range_size=52, mode=thumb
; class-group: std::moneypunct_byname<char, false>
; alias: _ZNSt17moneypunct_bynameIcLb0EEC2EP16_Locale_monetary
; demangled: std::moneypunct_byname<char, false>::moneypunct_byname(_Locale_monetary*)
; decoder-mode: thumb
008b4b84  70 b5                                            push {r4, r5, r6, lr}
008b4b86  0e 1c                                            adds r6, r1, #0
008b4b88  09 4d                                            ldr r5, [pc, #0x24]
008b4b8a  00 21                                            movs r1, #0
008b4b8c  04 1c                                            adds r4, r0, #0
008b4b8e  04 f0 e1 fd                                      bl #0x8b9754
008b4b92  08 4b                                            ldr r3, [pc, #0x20]
008b4b94  7d 44                                            add r5, pc
008b4b96  20 1c                                            adds r0, r4, #0
008b4b98  eb 58                                            ldr r3, [r5, r3]
008b4b9a  21 1c                                            adds r1, r4, #0
008b4b9c  66 61                                            str r6, [r4, #0x14]
008b4b9e  08 33                                            adds r3, #8
008b4ba0  32 1c                                            adds r2, r6, #0
008b4ba2  23 60                                            str r3, [r4]
008b4ba4  0c 30                                            adds r0, #0xc
008b4ba6  10 31                                            adds r1, #0x10
008b4ba8  ff f7 a4 fc                                      bl #0x8b44f4
008b4bac  20 1c                                            adds r0, r4, #0
008b4bae  70 bd                                            pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
008b4bb0  00 ff 0d 00 70 1f 00 00                          .byte 0x00, 0xff, 0x0d, 0x00, 0x70, 0x1f, 0x00, 0x00

; FUNCTION 0x008b4bb8, declared_size=132, range_size=132, mode=thumb
; class-group: std::moneypunct_byname<char, false>
; alias: _ZNSt17moneypunct_bynameIcLb0EEC1EPKcj
; demangled: std::moneypunct_byname<char, false>::moneypunct_byname(char const*, unsigned int)
; decoder-mode: thumb
008b4bb8  70 b5                                            push {r4, r5, r6, lr}
008b4bba  1c 4d                                            ldr r5, [pc, #0x70]
008b4bbc  1c 4e                                            ldr r6, [pc, #0x70]
008b4bbe  c4 b0                                            sub sp, #0x110
008b4bc0  7d 44                                            add r5, pc
008b4bc2  ab 59                                            ldr r3, [r5, r6]
008b4bc4  01 91                                            str r1, [sp, #4]
008b4bc6  11 1c                                            adds r1, r2, #0
008b4bc8  1b 68                                            ldr r3, [r3]
008b4bca  04 1c                                            adds r4, r0, #0
008b4bcc  43 93                                            str r3, [sp, #0x10c]
008b4bce  04 f0 c1 fd                                      bl #0x8b9754
008b4bd2  18 4b                                            ldr r3, [pc, #0x60]
008b4bd4  eb 58                                            ldr r3, [r5, r3]
008b4bd6  08 33                                            adds r3, #8
008b4bd8  23 60                                            str r3, [r4]
008b4bda  01 9b                                            ldr r3, [sp, #4]
008b4bdc  00 2b                                            cmp r3, #0
008b4bde  17 d0                                            beq #0x8b4c10
008b4be0  00 22                                            movs r2, #0
008b4be2  01 a8                                            add r0, sp, #4
008b4be4  03 a9                                            add r1, sp, #0xc
008b4be6  02 ab                                            add r3, sp, #8
008b4be8  ff f7 a2 fa                                      bl #0x8b4130
008b4bec  02 1c                                            adds r2, r0, #0
008b4bee  60 61                                            str r0, [r4, #0x14]
008b4bf0  00 28                                            cmp r0, #0
008b4bf2  10 d0                                            beq #0x8b4c16
008b4bf4  20 1c                                            adds r0, r4, #0
008b4bf6  21 1c                                            adds r1, r4, #0
008b4bf8  0c 30                                            adds r0, #0xc
008b4bfa  10 31                                            adds r1, #0x10
008b4bfc  ff f7 7a fc                                      bl #0x8b44f4
008b4c00  ab 59                                            ldr r3, [r5, r6]
008b4c02  43 9a                                            ldr r2, [sp, #0x10c]
008b4c04  20 1c                                            adds r0, r4, #0
008b4c06  1b 68                                            ldr r3, [r3]
008b4c08  9a 42                                            cmp r2, r3
008b4c0a  0c d1                                            bne #0x8b4c26
008b4c0c  44 b0                                            add sp, #0x110
008b4c0e  70 bd                                            pop {r4, r5, r6, pc}
008b4c10  ee f7 56 fc                                      bl #0x8a34c0
008b4c14  e4 e7                                            b #0x8b4be0
008b4c16  08 4a                                            ldr r2, [pc, #0x20]
008b4c18  02 98                                            ldr r0, [sp, #8]
008b4c1a  01 99                                            ldr r1, [sp, #4]
008b4c1c  7a 44                                            add r2, pc
008b4c1e  ef f7 d7 fd                                      bl #0x8a47d0
008b4c22  62 69                                            ldr r2, [r4, #0x14]
008b4c24  e6 e7                                            b #0x8b4bf4
008b4c26  59 f6 74 e3                                      blx #0x30e310
008b4c2a  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008b4c2c  d4 fe 0d 00 ac 40 00 00 70 1f 00 00 d8 10 06 00  .byte 0xd4, 0xfe, 0x0d, 0x00, 0xac, 0x40, 0x00, 0x00, 0x70, 0x1f, 0x00, 0x00, 0xd8, 0x10, 0x06, 0x00

; FUNCTION 0x008b4c3c, declared_size=132, range_size=132, mode=thumb
; class-group: std::moneypunct_byname<char, false>
; alias: _ZNSt17moneypunct_bynameIcLb0EEC2EPKcj
; demangled: std::moneypunct_byname<char, false>::moneypunct_byname(char const*, unsigned int)
; decoder-mode: thumb
008b4c3c  70 b5                                            push {r4, r5, r6, lr}
008b4c3e  1c 4d                                            ldr r5, [pc, #0x70]
008b4c40  1c 4e                                            ldr r6, [pc, #0x70]
008b4c42  c4 b0                                            sub sp, #0x110
008b4c44  7d 44                                            add r5, pc
008b4c46  ab 59                                            ldr r3, [r5, r6]
008b4c48  01 91                                            str r1, [sp, #4]
008b4c4a  11 1c                                            adds r1, r2, #0
008b4c4c  1b 68                                            ldr r3, [r3]
008b4c4e  04 1c                                            adds r4, r0, #0
008b4c50  43 93                                            str r3, [sp, #0x10c]
008b4c52  04 f0 7f fd                                      bl #0x8b9754
008b4c56  18 4b                                            ldr r3, [pc, #0x60]
008b4c58  eb 58                                            ldr r3, [r5, r3]
008b4c5a  08 33                                            adds r3, #8
008b4c5c  23 60                                            str r3, [r4]
008b4c5e  01 9b                                            ldr r3, [sp, #4]
008b4c60  00 2b                                            cmp r3, #0
008b4c62  17 d0                                            beq #0x8b4c94
008b4c64  00 22                                            movs r2, #0
008b4c66  01 a8                                            add r0, sp, #4
008b4c68  03 a9                                            add r1, sp, #0xc
008b4c6a  02 ab                                            add r3, sp, #8
008b4c6c  ff f7 60 fa                                      bl #0x8b4130
008b4c70  02 1c                                            adds r2, r0, #0
008b4c72  60 61                                            str r0, [r4, #0x14]
008b4c74  00 28                                            cmp r0, #0
008b4c76  10 d0                                            beq #0x8b4c9a
008b4c78  20 1c                                            adds r0, r4, #0
008b4c7a  21 1c                                            adds r1, r4, #0
008b4c7c  0c 30                                            adds r0, #0xc
008b4c7e  10 31                                            adds r1, #0x10
008b4c80  ff f7 38 fc                                      bl #0x8b44f4
008b4c84  ab 59                                            ldr r3, [r5, r6]
008b4c86  43 9a                                            ldr r2, [sp, #0x10c]
008b4c88  20 1c                                            adds r0, r4, #0
008b4c8a  1b 68                                            ldr r3, [r3]
008b4c8c  9a 42                                            cmp r2, r3
008b4c8e  0c d1                                            bne #0x8b4caa
008b4c90  44 b0                                            add sp, #0x110
008b4c92  70 bd                                            pop {r4, r5, r6, pc}
008b4c94  ee f7 14 fc                                      bl #0x8a34c0
008b4c98  e4 e7                                            b #0x8b4c64
008b4c9a  08 4a                                            ldr r2, [pc, #0x20]
008b4c9c  02 98                                            ldr r0, [sp, #8]
008b4c9e  01 99                                            ldr r1, [sp, #4]
008b4ca0  7a 44                                            add r2, pc
008b4ca2  ef f7 95 fd                                      bl #0x8a47d0
008b4ca6  62 69                                            ldr r2, [r4, #0x14]
008b4ca8  e6 e7                                            b #0x8b4c78
008b4caa  59 f6 32 e3                                      blx #0x30e310
008b4cae  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008b4cb0  50 fe 0d 00 ac 40 00 00 70 1f 00 00 54 10 06 00  .byte 0x50, 0xfe, 0x0d, 0x00, 0xac, 0x40, 0x00, 0x00, 0x70, 0x1f, 0x00, 0x00, 0x54, 0x10, 0x06, 0x00

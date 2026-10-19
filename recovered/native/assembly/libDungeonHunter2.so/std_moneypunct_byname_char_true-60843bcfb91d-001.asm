; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008b4320, declared_size=28, range_size=28, mode=thumb
; class-group: std::moneypunct_byname<char, true>
; alias: _ZNKSt17moneypunct_bynameIcLb1EE11do_groupingEv
; demangled: std::moneypunct_byname<char, true>::do_grouping() const
; decoder-mode: thumb
008b4320  10 b5                                            push {r4, lr}
008b4322  82 b0                                            sub sp, #8
008b4324  04 1c                                            adds r4, r0, #0
008b4326  48 69                                            ldr r0, [r1, #0x14]
008b4328  02 f0 d6 fb                                      bl #0x8b6ad8
008b432c  01 aa                                            add r2, sp, #4
008b432e  01 1c                                            adds r1, r0, #0
008b4330  20 1c                                            adds r0, r4, #0
008b4332  5f f6 dc e6                                      blx #0x3140ec
008b4336  02 b0                                            add sp, #8
008b4338  20 1c                                            adds r0, r4, #0
008b433a  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b4360, declared_size=10, range_size=10, mode=thumb
; class-group: std::moneypunct_byname<char, true>
; alias: _ZNKSt17moneypunct_bynameIcLb1EE16do_thousands_sepEv
; demangled: std::moneypunct_byname<char, true>::do_thousands_sep() const
; decoder-mode: thumb
008b4360  10 b5                                            push {r4, lr}
008b4362  40 69                                            ldr r0, [r0, #0x14]
008b4364  02 f0 b6 fb                                      bl #0x8b6ad4
008b4368  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b4390, declared_size=10, range_size=10, mode=thumb
; class-group: std::moneypunct_byname<char, true>
; alias: _ZNKSt17moneypunct_bynameIcLb1EE16do_decimal_pointEv
; demangled: std::moneypunct_byname<char, true>::do_decimal_point() const
; decoder-mode: thumb
008b4390  10 b5                                            push {r4, lr}
008b4392  40 69                                            ldr r0, [r0, #0x14]
008b4394  02 f0 9c fb                                      bl #0x8b6ad0
008b4398  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b4880, declared_size=10, range_size=10, mode=thumb
; class-group: std::moneypunct_byname<char, true>
; alias: _ZNKSt17moneypunct_bynameIcLb1EE14do_frac_digitsEv
; demangled: std::moneypunct_byname<char, true>::do_frac_digits() const
; decoder-mode: thumb
008b4880  10 b5                                            push {r4, lr}
008b4882  40 69                                            ldr r0, [r0, #0x14]
008b4884  02 f0 3a f9                                      bl #0x8b6afc
008b4888  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b4a7c, declared_size=28, range_size=28, mode=thumb
; class-group: std::moneypunct_byname<char, true>
; alias: _ZNKSt17moneypunct_bynameIcLb1EE16do_negative_signEv
; demangled: std::moneypunct_byname<char, true>::do_negative_sign() const
; decoder-mode: thumb
008b4a7c  10 b5                                            push {r4, lr}
008b4a7e  82 b0                                            sub sp, #8
008b4a80  04 1c                                            adds r4, r0, #0
008b4a82  48 69                                            ldr r0, [r1, #0x14]
008b4a84  02 f0 34 f8                                      bl #0x8b6af0
008b4a88  01 aa                                            add r2, sp, #4
008b4a8a  01 1c                                            adds r1, r0, #0
008b4a8c  20 1c                                            adds r0, r4, #0
008b4a8e  5f f6 2e e3                                      blx #0x3140ec
008b4a92  02 b0                                            add sp, #8
008b4a94  20 1c                                            adds r0, r4, #0
008b4a96  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b4ab4, declared_size=28, range_size=28, mode=thumb
; class-group: std::moneypunct_byname<char, true>
; alias: _ZNKSt17moneypunct_bynameIcLb1EE16do_positive_signEv
; demangled: std::moneypunct_byname<char, true>::do_positive_sign() const
; decoder-mode: thumb
008b4ab4  10 b5                                            push {r4, lr}
008b4ab6  82 b0                                            sub sp, #8
008b4ab8  04 1c                                            adds r4, r0, #0
008b4aba  48 69                                            ldr r0, [r1, #0x14]
008b4abc  02 f0 12 f8                                      bl #0x8b6ae4
008b4ac0  01 aa                                            add r2, sp, #4
008b4ac2  01 1c                                            adds r1, r0, #0
008b4ac4  20 1c                                            adds r0, r4, #0
008b4ac6  5f f6 12 e3                                      blx #0x3140ec
008b4aca  02 b0                                            add sp, #8
008b4acc  20 1c                                            adds r0, r4, #0
008b4ace  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b4cc0, declared_size=28, range_size=28, mode=thumb
; class-group: std::moneypunct_byname<char, true>
; alias: _ZNKSt17moneypunct_bynameIcLb1EE14do_curr_symbolEv
; demangled: std::moneypunct_byname<char, true>::do_curr_symbol() const
; decoder-mode: thumb
008b4cc0  10 b5                                            push {r4, lr}
008b4cc2  82 b0                                            sub sp, #8
008b4cc4  04 1c                                            adds r4, r0, #0
008b4cc6  48 69                                            ldr r0, [r1, #0x14]
008b4cc8  01 f0 f6 fe                                      bl #0x8b6ab8
008b4ccc  01 aa                                            add r2, sp, #4
008b4cce  01 1c                                            adds r1, r0, #0
008b4cd0  20 1c                                            adds r0, r4, #0
008b4cd2  5f f6 0c e2                                      blx #0x3140ec
008b4cd6  02 b0                                            add sp, #8
008b4cd8  20 1c                                            adds r0, r4, #0
008b4cda  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b4cdc, declared_size=40, range_size=40, mode=thumb
; class-group: std::moneypunct_byname<char, true>
; alias: _ZNSt17moneypunct_bynameIcLb1EED1Ev
; demangled: std::moneypunct_byname<char, true>::~moneypunct_byname()
; decoder-mode: thumb
008b4cdc  10 b5                                            push {r4, lr}
008b4cde  07 4b                                            ldr r3, [pc, #0x1c]
008b4ce0  07 4a                                            ldr r2, [pc, #0x1c]
008b4ce2  04 1c                                            adds r4, r0, #0
008b4ce4  7b 44                                            add r3, pc
008b4ce6  9a 58                                            ldr r2, [r3, r2]
008b4ce8  08 32                                            adds r2, #8
008b4cea  02 60                                            str r2, [r0]
008b4cec  40 69                                            ldr r0, [r0, #0x14]
008b4cee  fe f7 f3 ff                                      bl #0x8b3cd8
008b4cf2  20 1c                                            adds r0, r4, #0
008b4cf4  04 f0 e6 fb                                      bl #0x8b94c4
008b4cf8  20 1c                                            adds r0, r4, #0
008b4cfa  10 bd                                            pop {r4, pc}
; mapping-symbol data/literal pool
008b4cfc  b0 fd 0d 00 e0 2c 00 00                          .byte 0xb0, 0xfd, 0x0d, 0x00, 0xe0, 0x2c, 0x00, 0x00

; FUNCTION 0x008b4d04, declared_size=18, range_size=18, mode=thumb
; class-group: std::moneypunct_byname<char, true>
; alias: _ZNSt17moneypunct_bynameIcLb1EED0Ev
; demangled: std::moneypunct_byname<char, true>::~moneypunct_byname()
; decoder-mode: thumb
008b4d04  10 b5                                            push {r4, lr}
008b4d06  04 1c                                            adds r4, r0, #0
008b4d08  ff f7 e8 ff                                      bl #0x8b4cdc
008b4d0c  20 1c                                            adds r0, r4, #0
008b4d0e  59 f6 d0 e2                                      blx #0x30e2b0
008b4d12  20 1c                                            adds r0, r4, #0
008b4d14  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b4d18, declared_size=40, range_size=40, mode=thumb
; class-group: std::moneypunct_byname<char, true>
; alias: _ZNSt17moneypunct_bynameIcLb1EED2Ev
; demangled: std::moneypunct_byname<char, true>::~moneypunct_byname()
; decoder-mode: thumb
008b4d18  10 b5                                            push {r4, lr}
008b4d1a  07 4b                                            ldr r3, [pc, #0x1c]
008b4d1c  07 4a                                            ldr r2, [pc, #0x1c]
008b4d1e  04 1c                                            adds r4, r0, #0
008b4d20  7b 44                                            add r3, pc
008b4d22  9a 58                                            ldr r2, [r3, r2]
008b4d24  08 32                                            adds r2, #8
008b4d26  02 60                                            str r2, [r0]
008b4d28  40 69                                            ldr r0, [r0, #0x14]
008b4d2a  fe f7 d5 ff                                      bl #0x8b3cd8
008b4d2e  20 1c                                            adds r0, r4, #0
008b4d30  04 f0 c8 fb                                      bl #0x8b94c4
008b4d34  20 1c                                            adds r0, r4, #0
008b4d36  10 bd                                            pop {r4, pc}
; mapping-symbol data/literal pool
008b4d38  74 fd 0d 00 e0 2c 00 00                          .byte 0x74, 0xfd, 0x0d, 0x00, 0xe0, 0x2c, 0x00, 0x00

; FUNCTION 0x008b4d40, declared_size=52, range_size=52, mode=thumb
; class-group: std::moneypunct_byname<char, true>
; alias: _ZNSt17moneypunct_bynameIcLb1EEC1EP16_Locale_monetary
; demangled: std::moneypunct_byname<char, true>::moneypunct_byname(_Locale_monetary*)
; decoder-mode: thumb
008b4d40  70 b5                                            push {r4, r5, r6, lr}
008b4d42  0e 1c                                            adds r6, r1, #0
008b4d44  09 4d                                            ldr r5, [pc, #0x24]
008b4d46  00 21                                            movs r1, #0
008b4d48  04 1c                                            adds r4, r0, #0
008b4d4a  04 f0 37 fc                                      bl #0x8b95bc
008b4d4e  08 4b                                            ldr r3, [pc, #0x20]
008b4d50  7d 44                                            add r5, pc
008b4d52  20 1c                                            adds r0, r4, #0
008b4d54  eb 58                                            ldr r3, [r5, r3]
008b4d56  21 1c                                            adds r1, r4, #0
008b4d58  66 61                                            str r6, [r4, #0x14]
008b4d5a  08 33                                            adds r3, #8
008b4d5c  32 1c                                            adds r2, r6, #0
008b4d5e  23 60                                            str r3, [r4]
008b4d60  0c 30                                            adds r0, #0xc
008b4d62  10 31                                            adds r1, #0x10
008b4d64  ff f7 4c fb                                      bl #0x8b4400
008b4d68  20 1c                                            adds r0, r4, #0
008b4d6a  70 bd                                            pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
008b4d6c  44 fd 0d 00 e0 2c 00 00                          .byte 0x44, 0xfd, 0x0d, 0x00, 0xe0, 0x2c, 0x00, 0x00

; FUNCTION 0x008b4d74, declared_size=52, range_size=52, mode=thumb
; class-group: std::moneypunct_byname<char, true>
; alias: _ZNSt17moneypunct_bynameIcLb1EEC2EP16_Locale_monetary
; demangled: std::moneypunct_byname<char, true>::moneypunct_byname(_Locale_monetary*)
; decoder-mode: thumb
008b4d74  70 b5                                            push {r4, r5, r6, lr}
008b4d76  0e 1c                                            adds r6, r1, #0
008b4d78  09 4d                                            ldr r5, [pc, #0x24]
008b4d7a  00 21                                            movs r1, #0
008b4d7c  04 1c                                            adds r4, r0, #0
008b4d7e  04 f0 1d fc                                      bl #0x8b95bc
008b4d82  08 4b                                            ldr r3, [pc, #0x20]
008b4d84  7d 44                                            add r5, pc
008b4d86  20 1c                                            adds r0, r4, #0
008b4d88  eb 58                                            ldr r3, [r5, r3]
008b4d8a  21 1c                                            adds r1, r4, #0
008b4d8c  66 61                                            str r6, [r4, #0x14]
008b4d8e  08 33                                            adds r3, #8
008b4d90  32 1c                                            adds r2, r6, #0
008b4d92  23 60                                            str r3, [r4]
008b4d94  0c 30                                            adds r0, #0xc
008b4d96  10 31                                            adds r1, #0x10
008b4d98  ff f7 32 fb                                      bl #0x8b4400
008b4d9c  20 1c                                            adds r0, r4, #0
008b4d9e  70 bd                                            pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
008b4da0  10 fd 0d 00 e0 2c 00 00                          .byte 0x10, 0xfd, 0x0d, 0x00, 0xe0, 0x2c, 0x00, 0x00

; FUNCTION 0x008b4da8, declared_size=132, range_size=132, mode=thumb
; class-group: std::moneypunct_byname<char, true>
; alias: _ZNSt17moneypunct_bynameIcLb1EEC1EPKcj
; demangled: std::moneypunct_byname<char, true>::moneypunct_byname(char const*, unsigned int)
; decoder-mode: thumb
008b4da8  70 b5                                            push {r4, r5, r6, lr}
008b4daa  1c 4d                                            ldr r5, [pc, #0x70]
008b4dac  1c 4e                                            ldr r6, [pc, #0x70]
008b4dae  c4 b0                                            sub sp, #0x110
008b4db0  7d 44                                            add r5, pc
008b4db2  ab 59                                            ldr r3, [r5, r6]
008b4db4  01 91                                            str r1, [sp, #4]
008b4db6  11 1c                                            adds r1, r2, #0
008b4db8  1b 68                                            ldr r3, [r3]
008b4dba  04 1c                                            adds r4, r0, #0
008b4dbc  43 93                                            str r3, [sp, #0x10c]
008b4dbe  04 f0 fd fb                                      bl #0x8b95bc
008b4dc2  18 4b                                            ldr r3, [pc, #0x60]
008b4dc4  eb 58                                            ldr r3, [r5, r3]
008b4dc6  08 33                                            adds r3, #8
008b4dc8  23 60                                            str r3, [r4]
008b4dca  01 9b                                            ldr r3, [sp, #4]
008b4dcc  00 2b                                            cmp r3, #0
008b4dce  17 d0                                            beq #0x8b4e00
008b4dd0  00 22                                            movs r2, #0
008b4dd2  01 a8                                            add r0, sp, #4
008b4dd4  03 a9                                            add r1, sp, #0xc
008b4dd6  02 ab                                            add r3, sp, #8
008b4dd8  ff f7 aa f9                                      bl #0x8b4130
008b4ddc  02 1c                                            adds r2, r0, #0
008b4dde  60 61                                            str r0, [r4, #0x14]
008b4de0  00 28                                            cmp r0, #0
008b4de2  10 d0                                            beq #0x8b4e06
008b4de4  20 1c                                            adds r0, r4, #0
008b4de6  21 1c                                            adds r1, r4, #0
008b4de8  0c 30                                            adds r0, #0xc
008b4dea  10 31                                            adds r1, #0x10
008b4dec  ff f7 08 fb                                      bl #0x8b4400
008b4df0  ab 59                                            ldr r3, [r5, r6]
008b4df2  43 9a                                            ldr r2, [sp, #0x10c]
008b4df4  20 1c                                            adds r0, r4, #0
008b4df6  1b 68                                            ldr r3, [r3]
008b4df8  9a 42                                            cmp r2, r3
008b4dfa  0c d1                                            bne #0x8b4e16
008b4dfc  44 b0                                            add sp, #0x110
008b4dfe  70 bd                                            pop {r4, r5, r6, pc}
008b4e00  ee f7 5e fb                                      bl #0x8a34c0
008b4e04  e4 e7                                            b #0x8b4dd0
008b4e06  08 4a                                            ldr r2, [pc, #0x20]
008b4e08  02 98                                            ldr r0, [sp, #8]
008b4e0a  01 99                                            ldr r1, [sp, #4]
008b4e0c  7a 44                                            add r2, pc
008b4e0e  ef f7 df fc                                      bl #0x8a47d0
008b4e12  62 69                                            ldr r2, [r4, #0x14]
008b4e14  e6 e7                                            b #0x8b4de4
008b4e16  59 f6 7c e2                                      blx #0x30e310
008b4e1a  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008b4e1c  e4 fc 0d 00 ac 40 00 00 e0 2c 00 00 e8 0e 06 00  .byte 0xe4, 0xfc, 0x0d, 0x00, 0xac, 0x40, 0x00, 0x00, 0xe0, 0x2c, 0x00, 0x00, 0xe8, 0x0e, 0x06, 0x00

; FUNCTION 0x008b4e2c, declared_size=132, range_size=132, mode=thumb
; class-group: std::moneypunct_byname<char, true>
; alias: _ZNSt17moneypunct_bynameIcLb1EEC2EPKcj
; demangled: std::moneypunct_byname<char, true>::moneypunct_byname(char const*, unsigned int)
; decoder-mode: thumb
008b4e2c  70 b5                                            push {r4, r5, r6, lr}
008b4e2e  1c 4d                                            ldr r5, [pc, #0x70]
008b4e30  1c 4e                                            ldr r6, [pc, #0x70]
008b4e32  c4 b0                                            sub sp, #0x110
008b4e34  7d 44                                            add r5, pc
008b4e36  ab 59                                            ldr r3, [r5, r6]
008b4e38  01 91                                            str r1, [sp, #4]
008b4e3a  11 1c                                            adds r1, r2, #0
008b4e3c  1b 68                                            ldr r3, [r3]
008b4e3e  04 1c                                            adds r4, r0, #0
008b4e40  43 93                                            str r3, [sp, #0x10c]
008b4e42  04 f0 bb fb                                      bl #0x8b95bc
008b4e46  18 4b                                            ldr r3, [pc, #0x60]
008b4e48  eb 58                                            ldr r3, [r5, r3]
008b4e4a  08 33                                            adds r3, #8
008b4e4c  23 60                                            str r3, [r4]
008b4e4e  01 9b                                            ldr r3, [sp, #4]
008b4e50  00 2b                                            cmp r3, #0
008b4e52  17 d0                                            beq #0x8b4e84
008b4e54  00 22                                            movs r2, #0
008b4e56  01 a8                                            add r0, sp, #4
008b4e58  03 a9                                            add r1, sp, #0xc
008b4e5a  02 ab                                            add r3, sp, #8
008b4e5c  ff f7 68 f9                                      bl #0x8b4130
008b4e60  02 1c                                            adds r2, r0, #0
008b4e62  60 61                                            str r0, [r4, #0x14]
008b4e64  00 28                                            cmp r0, #0
008b4e66  10 d0                                            beq #0x8b4e8a
008b4e68  20 1c                                            adds r0, r4, #0
008b4e6a  21 1c                                            adds r1, r4, #0
008b4e6c  0c 30                                            adds r0, #0xc
008b4e6e  10 31                                            adds r1, #0x10
008b4e70  ff f7 c6 fa                                      bl #0x8b4400
008b4e74  ab 59                                            ldr r3, [r5, r6]
008b4e76  43 9a                                            ldr r2, [sp, #0x10c]
008b4e78  20 1c                                            adds r0, r4, #0
008b4e7a  1b 68                                            ldr r3, [r3]
008b4e7c  9a 42                                            cmp r2, r3
008b4e7e  0c d1                                            bne #0x8b4e9a
008b4e80  44 b0                                            add sp, #0x110
008b4e82  70 bd                                            pop {r4, r5, r6, pc}
008b4e84  ee f7 1c fb                                      bl #0x8a34c0
008b4e88  e4 e7                                            b #0x8b4e54
008b4e8a  08 4a                                            ldr r2, [pc, #0x20]
008b4e8c  02 98                                            ldr r0, [sp, #8]
008b4e8e  01 99                                            ldr r1, [sp, #4]
008b4e90  7a 44                                            add r2, pc
008b4e92  ef f7 9d fc                                      bl #0x8a47d0
008b4e96  62 69                                            ldr r2, [r4, #0x14]
008b4e98  e6 e7                                            b #0x8b4e68
008b4e9a  59 f6 3a e2                                      blx #0x30e310
008b4e9e  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008b4ea0  60 fc 0d 00 ac 40 00 00 e0 2c 00 00 64 0e 06 00  .byte 0x60, 0xfc, 0x0d, 0x00, 0xac, 0x40, 0x00, 0x00, 0xe0, 0x2c, 0x00, 0x00, 0x64, 0x0e, 0x06, 0x00

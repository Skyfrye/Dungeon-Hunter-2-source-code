; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008b92b0, declared_size=4, range_size=4, mode=thumb
; class-group: std::moneypunct<char, false>
; alias: _ZNKSt10moneypunctIcLb0EE16do_decimal_pointEv
; demangled: std::moneypunct<char, false>::do_decimal_point() const
; decoder-mode: thumb
008b92b0  20 20                                            movs r0, #0x20
008b92b2  70 47                                            bx lr

; FUNCTION 0x008b92b4, declared_size=4, range_size=4, mode=thumb
; class-group: std::moneypunct<char, false>
; alias: _ZNKSt10moneypunctIcLb0EE16do_thousands_sepEv
; demangled: std::moneypunct<char, false>::do_thousands_sep() const
; decoder-mode: thumb
008b92b4  20 20                                            movs r0, #0x20
008b92b6  70 47                                            bx lr

; FUNCTION 0x008b92b8, declared_size=32, range_size=32, mode=thumb
; class-group: std::moneypunct<char, false>
; alias: _ZNKSt10moneypunctIcLb0EE13do_pos_formatEv
; demangled: std::moneypunct<char, false>::do_pos_format() const
; decoder-mode: thumb
008b92b8  c2 68                                            ldr r2, [r0, #0xc]
008b92ba  82 b0                                            sub sp, #8
008b92bc  01 ab                                            add r3, sp, #4
008b92be  01 92                                            str r2, [sp, #4]
008b92c0  59 78                                            ldrb r1, [r3, #1]
008b92c2  18 78                                            ldrb r0, [r3]
008b92c4  9a 78                                            ldrb r2, [r3, #2]
008b92c6  db 78                                            ldrb r3, [r3, #3]
008b92c8  09 02                                            lsls r1, r1, #8
008b92ca  12 04                                            lsls r2, r2, #0x10
008b92cc  08 43                                            orrs r0, r1
008b92ce  1b 06                                            lsls r3, r3, #0x18
008b92d0  10 43                                            orrs r0, r2
008b92d2  02 b0                                            add sp, #8
008b92d4  18 43                                            orrs r0, r3
008b92d6  70 47                                            bx lr

; FUNCTION 0x008b92d8, declared_size=32, range_size=32, mode=thumb
; class-group: std::moneypunct<char, false>
; alias: _ZNKSt10moneypunctIcLb0EE13do_neg_formatEv
; demangled: std::moneypunct<char, false>::do_neg_format() const
; decoder-mode: thumb
008b92d8  02 69                                            ldr r2, [r0, #0x10]
008b92da  82 b0                                            sub sp, #8
008b92dc  01 ab                                            add r3, sp, #4
008b92de  01 92                                            str r2, [sp, #4]
008b92e0  59 78                                            ldrb r1, [r3, #1]
008b92e2  18 78                                            ldrb r0, [r3]
008b92e4  9a 78                                            ldrb r2, [r3, #2]
008b92e6  db 78                                            ldrb r3, [r3, #3]
008b92e8  09 02                                            lsls r1, r1, #8
008b92ea  12 04                                            lsls r2, r2, #0x10
008b92ec  08 43                                            orrs r0, r1
008b92ee  1b 06                                            lsls r3, r3, #0x18
008b92f0  10 43                                            orrs r0, r2
008b92f2  02 b0                                            add sp, #8
008b92f4  18 43                                            orrs r0, r3
008b92f6  70 47                                            bx lr

; FUNCTION 0x008b92f8, declared_size=4, range_size=4, mode=thumb
; class-group: std::moneypunct<char, false>
; alias: _ZNKSt10moneypunctIcLb0EE14do_frac_digitsEv
; demangled: std::moneypunct<char, false>::do_frac_digits() const
; decoder-mode: thumb
008b92f8  00 20                                            movs r0, #0
008b92fa  70 47                                            bx lr

; FUNCTION 0x008b943c, declared_size=32, range_size=32, mode=thumb
; class-group: std::moneypunct<char, false>
; alias: _ZNSt10moneypunctIcLb0EED1Ev
; demangled: std::moneypunct<char, false>::~moneypunct()
; decoder-mode: thumb
008b943c  10 b5                                            push {r4, lr}
008b943e  05 4b                                            ldr r3, [pc, #0x14]
008b9440  05 4a                                            ldr r2, [pc, #0x14]
008b9442  04 1c                                            adds r4, r0, #0
008b9444  7b 44                                            add r3, pc
008b9446  9a 58                                            ldr r2, [r3, r2]
008b9448  08 32                                            adds r2, #8
008b944a  02 60                                            str r2, [r0]
008b944c  ea f7 56 fa                                      bl #0x8a38fc
008b9450  20 1c                                            adds r0, r4, #0
008b9452  10 bd                                            pop {r4, pc}
; mapping-symbol data/literal pool
008b9454  50 b6 0d 00 f4 3e 00 00                          .byte 0x50, 0xb6, 0x0d, 0x00, 0xf4, 0x3e, 0x00, 0x00

; FUNCTION 0x008b945c, declared_size=18, range_size=18, mode=thumb
; class-group: std::moneypunct<char, false>
; alias: _ZNSt10moneypunctIcLb0EED0Ev
; demangled: std::moneypunct<char, false>::~moneypunct()
; decoder-mode: thumb
008b945c  10 b5                                            push {r4, lr}
008b945e  04 1c                                            adds r4, r0, #0
008b9460  ff f7 ec ff                                      bl #0x8b943c
008b9464  20 1c                                            adds r0, r4, #0
008b9466  54 f6 24 e7                                      blx #0x30e2b0
008b946a  20 1c                                            adds r0, r4, #0
008b946c  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b9470, declared_size=32, range_size=32, mode=thumb
; class-group: std::moneypunct<char, false>
; alias: _ZNSt10moneypunctIcLb0EED2Ev
; demangled: std::moneypunct<char, false>::~moneypunct()
; decoder-mode: thumb
008b9470  10 b5                                            push {r4, lr}
008b9472  05 4b                                            ldr r3, [pc, #0x14]
008b9474  05 4a                                            ldr r2, [pc, #0x14]
008b9476  04 1c                                            adds r4, r0, #0
008b9478  7b 44                                            add r3, pc
008b947a  9a 58                                            ldr r2, [r3, r2]
008b947c  08 32                                            adds r2, #8
008b947e  02 60                                            str r2, [r0]
008b9480  ea f7 3c fa                                      bl #0x8a38fc
008b9484  20 1c                                            adds r0, r4, #0
008b9486  10 bd                                            pop {r4, pc}
; mapping-symbol data/literal pool
008b9488  1c b6 0d 00 f4 3e 00 00                          .byte 0x1c, 0xb6, 0x0d, 0x00, 0xf4, 0x3e, 0x00, 0x00

; FUNCTION 0x008b9574, declared_size=12, range_size=12, mode=thumb
; class-group: std::moneypunct<char, false>
; alias: _ZNKSt10moneypunctIcLb0EE11do_groupingEv
; demangled: std::moneypunct<char, false>::do_grouping() const
; decoder-mode: thumb
008b9574  10 b5                                            push {r4, lr}
008b9576  04 1c                                            adds r4, r0, #0
008b9578  ff f7 d6 ff                                      bl #0x8b9528
008b957c  20 1c                                            adds r0, r4, #0
008b957e  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b9580, declared_size=12, range_size=12, mode=thumb
; class-group: std::moneypunct<char, false>
; alias: _ZNKSt10moneypunctIcLb0EE14do_curr_symbolEv
; demangled: std::moneypunct<char, false>::do_curr_symbol() const
; decoder-mode: thumb
008b9580  10 b5                                            push {r4, lr}
008b9582  04 1c                                            adds r4, r0, #0
008b9584  ff f7 d0 ff                                      bl #0x8b9528
008b9588  20 1c                                            adds r0, r4, #0
008b958a  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b958c, declared_size=12, range_size=12, mode=thumb
; class-group: std::moneypunct<char, false>
; alias: _ZNKSt10moneypunctIcLb0EE16do_positive_signEv
; demangled: std::moneypunct<char, false>::do_positive_sign() const
; decoder-mode: thumb
008b958c  10 b5                                            push {r4, lr}
008b958e  04 1c                                            adds r4, r0, #0
008b9590  ff f7 ca ff                                      bl #0x8b9528
008b9594  20 1c                                            adds r0, r4, #0
008b9596  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b9598, declared_size=12, range_size=12, mode=thumb
; class-group: std::moneypunct<char, false>
; alias: _ZNKSt10moneypunctIcLb0EE16do_negative_signEv
; demangled: std::moneypunct<char, false>::do_negative_sign() const
; decoder-mode: thumb
008b9598  10 b5                                            push {r4, lr}
008b959a  04 1c                                            adds r4, r0, #0
008b959c  ff f7 c4 ff                                      bl #0x8b9528
008b95a0  20 1c                                            adds r0, r4, #0
008b95a2  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b9710, declared_size=68, range_size=68, mode=thumb
; class-group: std::moneypunct<char, false>
; alias: _ZNSt10moneypunctIcLb0EEC1Ej
; demangled: std::moneypunct<char, false>::moneypunct(unsigned int)
; decoder-mode: thumb
008b9710  70 b5                                            push {r4, r5, r6, lr}
008b9712  4b 1e                                            subs r3, r1, #1
008b9714  99 41                                            sbcs r1, r3
008b9716  04 1c                                            adds r4, r0, #0
008b9718  41 60                                            str r1, [r0, #4]
008b971a  0c 4d                                            ldr r5, [pc, #0x30]
008b971c  00 21                                            movs r1, #0
008b971e  08 30                                            adds r0, #8
008b9720  54 f6 46 e4                                      blx #0x30dfb0
008b9724  0a 4b                                            ldr r3, [pc, #0x28]
008b9726  7d 44                                            add r5, pc
008b9728  02 20                                            movs r0, #2
008b972a  eb 58                                            ldr r3, [r5, r3]
008b972c  03 21                                            movs r1, #3
008b972e  00 22                                            movs r2, #0
008b9730  08 33                                            adds r3, #8
008b9732  23 60                                            str r3, [r4]
008b9734  04 23                                            movs r3, #4
008b9736  20 73                                            strb r0, [r4, #0xc]
008b9738  20 74                                            strb r0, [r4, #0x10]
008b973a  61 73                                            strb r1, [r4, #0xd]
008b973c  20 1c                                            adds r0, r4, #0
008b973e  a2 73                                            strb r2, [r4, #0xe]
008b9740  e3 73                                            strb r3, [r4, #0xf]
008b9742  61 74                                            strb r1, [r4, #0x11]
008b9744  a2 74                                            strb r2, [r4, #0x12]
008b9746  e3 74                                            strb r3, [r4, #0x13]
008b9748  70 bd                                            pop {r4, r5, r6, pc}
008b974a  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008b974c  6e b3 0d 00 f4 3e 00 00                          .byte 0x6e, 0xb3, 0x0d, 0x00, 0xf4, 0x3e, 0x00, 0x00

; FUNCTION 0x008b9754, declared_size=68, range_size=68, mode=thumb
; class-group: std::moneypunct<char, false>
; alias: _ZNSt10moneypunctIcLb0EEC2Ej
; demangled: std::moneypunct<char, false>::moneypunct(unsigned int)
; decoder-mode: thumb
008b9754  70 b5                                            push {r4, r5, r6, lr}
008b9756  4b 1e                                            subs r3, r1, #1
008b9758  99 41                                            sbcs r1, r3
008b975a  04 1c                                            adds r4, r0, #0
008b975c  41 60                                            str r1, [r0, #4]
008b975e  0c 4d                                            ldr r5, [pc, #0x30]
008b9760  00 21                                            movs r1, #0
008b9762  08 30                                            adds r0, #8
008b9764  54 f6 24 e4                                      blx #0x30dfb0
008b9768  0a 4b                                            ldr r3, [pc, #0x28]
008b976a  7d 44                                            add r5, pc
008b976c  02 20                                            movs r0, #2
008b976e  eb 58                                            ldr r3, [r5, r3]
008b9770  03 21                                            movs r1, #3
008b9772  00 22                                            movs r2, #0
008b9774  08 33                                            adds r3, #8
008b9776  23 60                                            str r3, [r4]
008b9778  04 23                                            movs r3, #4
008b977a  20 73                                            strb r0, [r4, #0xc]
008b977c  20 74                                            strb r0, [r4, #0x10]
008b977e  61 73                                            strb r1, [r4, #0xd]
008b9780  20 1c                                            adds r0, r4, #0
008b9782  a2 73                                            strb r2, [r4, #0xe]
008b9784  e3 73                                            strb r3, [r4, #0xf]
008b9786  61 74                                            strb r1, [r4, #0x11]
008b9788  a2 74                                            strb r2, [r4, #0x12]
008b978a  e3 74                                            strb r3, [r4, #0x13]
008b978c  70 bd                                            pop {r4, r5, r6, pc}
008b978e  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008b9790  2a b3 0d 00 f4 3e 00 00                          .byte 0x2a, 0xb3, 0x0d, 0x00, 0xf4, 0x3e, 0x00, 0x00

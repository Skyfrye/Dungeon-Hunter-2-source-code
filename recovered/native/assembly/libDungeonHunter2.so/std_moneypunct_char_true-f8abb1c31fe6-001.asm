; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008b9264, declared_size=4, range_size=4, mode=thumb
; class-group: std::moneypunct<char, true>
; alias: _ZNKSt10moneypunctIcLb1EE16do_decimal_pointEv
; demangled: std::moneypunct<char, true>::do_decimal_point() const
; decoder-mode: thumb
008b9264  20 20                                            movs r0, #0x20
008b9266  70 47                                            bx lr

; FUNCTION 0x008b9268, declared_size=4, range_size=4, mode=thumb
; class-group: std::moneypunct<char, true>
; alias: _ZNKSt10moneypunctIcLb1EE16do_thousands_sepEv
; demangled: std::moneypunct<char, true>::do_thousands_sep() const
; decoder-mode: thumb
008b9268  20 20                                            movs r0, #0x20
008b926a  70 47                                            bx lr

; FUNCTION 0x008b926c, declared_size=32, range_size=32, mode=thumb
; class-group: std::moneypunct<char, true>
; alias: _ZNKSt10moneypunctIcLb1EE13do_pos_formatEv
; demangled: std::moneypunct<char, true>::do_pos_format() const
; decoder-mode: thumb
008b926c  c2 68                                            ldr r2, [r0, #0xc]
008b926e  82 b0                                            sub sp, #8
008b9270  01 ab                                            add r3, sp, #4
008b9272  01 92                                            str r2, [sp, #4]
008b9274  59 78                                            ldrb r1, [r3, #1]
008b9276  18 78                                            ldrb r0, [r3]
008b9278  9a 78                                            ldrb r2, [r3, #2]
008b927a  db 78                                            ldrb r3, [r3, #3]
008b927c  09 02                                            lsls r1, r1, #8
008b927e  12 04                                            lsls r2, r2, #0x10
008b9280  08 43                                            orrs r0, r1
008b9282  1b 06                                            lsls r3, r3, #0x18
008b9284  10 43                                            orrs r0, r2
008b9286  02 b0                                            add sp, #8
008b9288  18 43                                            orrs r0, r3
008b928a  70 47                                            bx lr

; FUNCTION 0x008b928c, declared_size=32, range_size=32, mode=thumb
; class-group: std::moneypunct<char, true>
; alias: _ZNKSt10moneypunctIcLb1EE13do_neg_formatEv
; demangled: std::moneypunct<char, true>::do_neg_format() const
; decoder-mode: thumb
008b928c  02 69                                            ldr r2, [r0, #0x10]
008b928e  82 b0                                            sub sp, #8
008b9290  01 ab                                            add r3, sp, #4
008b9292  01 92                                            str r2, [sp, #4]
008b9294  59 78                                            ldrb r1, [r3, #1]
008b9296  18 78                                            ldrb r0, [r3]
008b9298  9a 78                                            ldrb r2, [r3, #2]
008b929a  db 78                                            ldrb r3, [r3, #3]
008b929c  09 02                                            lsls r1, r1, #8
008b929e  12 04                                            lsls r2, r2, #0x10
008b92a0  08 43                                            orrs r0, r1
008b92a2  1b 06                                            lsls r3, r3, #0x18
008b92a4  10 43                                            orrs r0, r2
008b92a6  02 b0                                            add sp, #8
008b92a8  18 43                                            orrs r0, r3
008b92aa  70 47                                            bx lr

; FUNCTION 0x008b92ac, declared_size=4, range_size=4, mode=thumb
; class-group: std::moneypunct<char, true>
; alias: _ZNKSt10moneypunctIcLb1EE14do_frac_digitsEv
; demangled: std::moneypunct<char, true>::do_frac_digits() const
; decoder-mode: thumb
008b92ac  00 20                                            movs r0, #0
008b92ae  70 47                                            bx lr

; FUNCTION 0x008b9490, declared_size=32, range_size=32, mode=thumb
; class-group: std::moneypunct<char, true>
; alias: _ZNSt10moneypunctIcLb1EED1Ev
; demangled: std::moneypunct<char, true>::~moneypunct()
; decoder-mode: thumb
008b9490  10 b5                                            push {r4, lr}
008b9492  05 4b                                            ldr r3, [pc, #0x14]
008b9494  05 4a                                            ldr r2, [pc, #0x14]
008b9496  04 1c                                            adds r4, r0, #0
008b9498  7b 44                                            add r3, pc
008b949a  9a 58                                            ldr r2, [r3, r2]
008b949c  08 32                                            adds r2, #8
008b949e  02 60                                            str r2, [r0]
008b94a0  ea f7 2c fa                                      bl #0x8a38fc
008b94a4  20 1c                                            adds r0, r4, #0
008b94a6  10 bd                                            pop {r4, pc}
; mapping-symbol data/literal pool
008b94a8  fc b5 0d 00 dc 0d 00 00                          .byte 0xfc, 0xb5, 0x0d, 0x00, 0xdc, 0x0d, 0x00, 0x00

; FUNCTION 0x008b94b0, declared_size=18, range_size=18, mode=thumb
; class-group: std::moneypunct<char, true>
; alias: _ZNSt10moneypunctIcLb1EED0Ev
; demangled: std::moneypunct<char, true>::~moneypunct()
; decoder-mode: thumb
008b94b0  10 b5                                            push {r4, lr}
008b94b2  04 1c                                            adds r4, r0, #0
008b94b4  ff f7 ec ff                                      bl #0x8b9490
008b94b8  20 1c                                            adds r0, r4, #0
008b94ba  54 f6 fa e6                                      blx #0x30e2b0
008b94be  20 1c                                            adds r0, r4, #0
008b94c0  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b94c4, declared_size=32, range_size=32, mode=thumb
; class-group: std::moneypunct<char, true>
; alias: _ZNSt10moneypunctIcLb1EED2Ev
; demangled: std::moneypunct<char, true>::~moneypunct()
; decoder-mode: thumb
008b94c4  10 b5                                            push {r4, lr}
008b94c6  05 4b                                            ldr r3, [pc, #0x14]
008b94c8  05 4a                                            ldr r2, [pc, #0x14]
008b94ca  04 1c                                            adds r4, r0, #0
008b94cc  7b 44                                            add r3, pc
008b94ce  9a 58                                            ldr r2, [r3, r2]
008b94d0  08 32                                            adds r2, #8
008b94d2  02 60                                            str r2, [r0]
008b94d4  ea f7 12 fa                                      bl #0x8a38fc
008b94d8  20 1c                                            adds r0, r4, #0
008b94da  10 bd                                            pop {r4, pc}
; mapping-symbol data/literal pool
008b94dc  c8 b5 0d 00 dc 0d 00 00                          .byte 0xc8, 0xb5, 0x0d, 0x00, 0xdc, 0x0d, 0x00, 0x00

; FUNCTION 0x008b94e4, declared_size=68, range_size=68, mode=thumb
; class-group: std::moneypunct<char, true>
; alias: _ZNSt10moneypunctIcLb1EEC1Ej
; demangled: std::moneypunct<char, true>::moneypunct(unsigned int)
; decoder-mode: thumb
008b94e4  70 b5                                            push {r4, r5, r6, lr}
008b94e6  4b 1e                                            subs r3, r1, #1
008b94e8  99 41                                            sbcs r1, r3
008b94ea  04 1c                                            adds r4, r0, #0
008b94ec  41 60                                            str r1, [r0, #4]
008b94ee  0c 4d                                            ldr r5, [pc, #0x30]
008b94f0  00 21                                            movs r1, #0
008b94f2  08 30                                            adds r0, #8
008b94f4  54 f6 5c e5                                      blx #0x30dfb0
008b94f8  0a 4b                                            ldr r3, [pc, #0x28]
008b94fa  7d 44                                            add r5, pc
008b94fc  02 20                                            movs r0, #2
008b94fe  eb 58                                            ldr r3, [r5, r3]
008b9500  03 21                                            movs r1, #3
008b9502  00 22                                            movs r2, #0
008b9504  08 33                                            adds r3, #8
008b9506  23 60                                            str r3, [r4]
008b9508  04 23                                            movs r3, #4
008b950a  20 73                                            strb r0, [r4, #0xc]
008b950c  20 74                                            strb r0, [r4, #0x10]
008b950e  61 73                                            strb r1, [r4, #0xd]
008b9510  20 1c                                            adds r0, r4, #0
008b9512  a2 73                                            strb r2, [r4, #0xe]
008b9514  e3 73                                            strb r3, [r4, #0xf]
008b9516  61 74                                            strb r1, [r4, #0x11]
008b9518  a2 74                                            strb r2, [r4, #0x12]
008b951a  e3 74                                            strb r3, [r4, #0x13]
008b951c  70 bd                                            pop {r4, r5, r6, pc}
008b951e  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008b9520  9a b5 0d 00 dc 0d 00 00                          .byte 0x9a, 0xb5, 0x0d, 0x00, 0xdc, 0x0d, 0x00, 0x00

; FUNCTION 0x008b9544, declared_size=12, range_size=12, mode=thumb
; class-group: std::moneypunct<char, true>
; alias: _ZNKSt10moneypunctIcLb1EE11do_groupingEv
; demangled: std::moneypunct<char, true>::do_grouping() const
; decoder-mode: thumb
008b9544  10 b5                                            push {r4, lr}
008b9546  04 1c                                            adds r4, r0, #0
008b9548  ff f7 ee ff                                      bl #0x8b9528
008b954c  20 1c                                            adds r0, r4, #0
008b954e  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b9550, declared_size=12, range_size=12, mode=thumb
; class-group: std::moneypunct<char, true>
; alias: _ZNKSt10moneypunctIcLb1EE14do_curr_symbolEv
; demangled: std::moneypunct<char, true>::do_curr_symbol() const
; decoder-mode: thumb
008b9550  10 b5                                            push {r4, lr}
008b9552  04 1c                                            adds r4, r0, #0
008b9554  ff f7 e8 ff                                      bl #0x8b9528
008b9558  20 1c                                            adds r0, r4, #0
008b955a  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b955c, declared_size=12, range_size=12, mode=thumb
; class-group: std::moneypunct<char, true>
; alias: _ZNKSt10moneypunctIcLb1EE16do_positive_signEv
; demangled: std::moneypunct<char, true>::do_positive_sign() const
; decoder-mode: thumb
008b955c  10 b5                                            push {r4, lr}
008b955e  04 1c                                            adds r4, r0, #0
008b9560  ff f7 e2 ff                                      bl #0x8b9528
008b9564  20 1c                                            adds r0, r4, #0
008b9566  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b9568, declared_size=12, range_size=12, mode=thumb
; class-group: std::moneypunct<char, true>
; alias: _ZNKSt10moneypunctIcLb1EE16do_negative_signEv
; demangled: std::moneypunct<char, true>::do_negative_sign() const
; decoder-mode: thumb
008b9568  10 b5                                            push {r4, lr}
008b956a  04 1c                                            adds r4, r0, #0
008b956c  ff f7 dc ff                                      bl #0x8b9528
008b9570  20 1c                                            adds r0, r4, #0
008b9572  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b95bc, declared_size=68, range_size=68, mode=thumb
; class-group: std::moneypunct<char, true>
; alias: _ZNSt10moneypunctIcLb1EEC2Ej
; demangled: std::moneypunct<char, true>::moneypunct(unsigned int)
; decoder-mode: thumb
008b95bc  70 b5                                            push {r4, r5, r6, lr}
008b95be  4b 1e                                            subs r3, r1, #1
008b95c0  99 41                                            sbcs r1, r3
008b95c2  04 1c                                            adds r4, r0, #0
008b95c4  41 60                                            str r1, [r0, #4]
008b95c6  0c 4d                                            ldr r5, [pc, #0x30]
008b95c8  00 21                                            movs r1, #0
008b95ca  08 30                                            adds r0, #8
008b95cc  54 f6 f0 e4                                      blx #0x30dfb0
008b95d0  0a 4b                                            ldr r3, [pc, #0x28]
008b95d2  7d 44                                            add r5, pc
008b95d4  02 20                                            movs r0, #2
008b95d6  eb 58                                            ldr r3, [r5, r3]
008b95d8  03 21                                            movs r1, #3
008b95da  00 22                                            movs r2, #0
008b95dc  08 33                                            adds r3, #8
008b95de  23 60                                            str r3, [r4]
008b95e0  04 23                                            movs r3, #4
008b95e2  20 73                                            strb r0, [r4, #0xc]
008b95e4  20 74                                            strb r0, [r4, #0x10]
008b95e6  61 73                                            strb r1, [r4, #0xd]
008b95e8  20 1c                                            adds r0, r4, #0
008b95ea  a2 73                                            strb r2, [r4, #0xe]
008b95ec  e3 73                                            strb r3, [r4, #0xf]
008b95ee  61 74                                            strb r1, [r4, #0x11]
008b95f0  a2 74                                            strb r2, [r4, #0x12]
008b95f2  e3 74                                            strb r3, [r4, #0x13]
008b95f4  70 bd                                            pop {r4, r5, r6, pc}
008b95f6  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008b95f8  c2 b4 0d 00 dc 0d 00 00                          .byte 0xc2, 0xb4, 0x0d, 0x00, 0xdc, 0x0d, 0x00, 0x00

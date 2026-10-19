; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008b92fc, declared_size=4, range_size=4, mode=thumb
; class-group: std::moneypunct<wchar_t, true>
; alias: _ZNKSt10moneypunctIwLb1EE16do_decimal_pointEv
; demangled: std::moneypunct<wchar_t, true>::do_decimal_point() const
; decoder-mode: thumb
008b92fc  20 20                                            movs r0, #0x20
008b92fe  70 47                                            bx lr

; FUNCTION 0x008b9300, declared_size=4, range_size=4, mode=thumb
; class-group: std::moneypunct<wchar_t, true>
; alias: _ZNKSt10moneypunctIwLb1EE16do_thousands_sepEv
; demangled: std::moneypunct<wchar_t, true>::do_thousands_sep() const
; decoder-mode: thumb
008b9300  20 20                                            movs r0, #0x20
008b9302  70 47                                            bx lr

; FUNCTION 0x008b9304, declared_size=4, range_size=4, mode=thumb
; class-group: std::moneypunct<wchar_t, true>
; alias: _ZNKSt10moneypunctIwLb1EE14do_frac_digitsEv
; demangled: std::moneypunct<wchar_t, true>::do_frac_digits() const
; decoder-mode: thumb
008b9304  00 20                                            movs r0, #0
008b9306  70 47                                            bx lr

; FUNCTION 0x008b9308, declared_size=32, range_size=32, mode=thumb
; class-group: std::moneypunct<wchar_t, true>
; alias: _ZNKSt10moneypunctIwLb1EE13do_pos_formatEv
; demangled: std::moneypunct<wchar_t, true>::do_pos_format() const
; decoder-mode: thumb
008b9308  c2 68                                            ldr r2, [r0, #0xc]
008b930a  82 b0                                            sub sp, #8
008b930c  01 ab                                            add r3, sp, #4
008b930e  01 92                                            str r2, [sp, #4]
008b9310  59 78                                            ldrb r1, [r3, #1]
008b9312  18 78                                            ldrb r0, [r3]
008b9314  9a 78                                            ldrb r2, [r3, #2]
008b9316  db 78                                            ldrb r3, [r3, #3]
008b9318  09 02                                            lsls r1, r1, #8
008b931a  12 04                                            lsls r2, r2, #0x10
008b931c  08 43                                            orrs r0, r1
008b931e  1b 06                                            lsls r3, r3, #0x18
008b9320  10 43                                            orrs r0, r2
008b9322  02 b0                                            add sp, #8
008b9324  18 43                                            orrs r0, r3
008b9326  70 47                                            bx lr

; FUNCTION 0x008b9328, declared_size=32, range_size=32, mode=thumb
; class-group: std::moneypunct<wchar_t, true>
; alias: _ZNKSt10moneypunctIwLb1EE13do_neg_formatEv
; demangled: std::moneypunct<wchar_t, true>::do_neg_format() const
; decoder-mode: thumb
008b9328  02 69                                            ldr r2, [r0, #0x10]
008b932a  82 b0                                            sub sp, #8
008b932c  01 ab                                            add r3, sp, #4
008b932e  01 92                                            str r2, [sp, #4]
008b9330  59 78                                            ldrb r1, [r3, #1]
008b9332  18 78                                            ldrb r0, [r3]
008b9334  9a 78                                            ldrb r2, [r3, #2]
008b9336  db 78                                            ldrb r3, [r3, #3]
008b9338  09 02                                            lsls r1, r1, #8
008b933a  12 04                                            lsls r2, r2, #0x10
008b933c  08 43                                            orrs r0, r1
008b933e  1b 06                                            lsls r3, r3, #0x18
008b9340  10 43                                            orrs r0, r2
008b9342  02 b0                                            add sp, #8
008b9344  18 43                                            orrs r0, r3
008b9346  70 47                                            bx lr

; FUNCTION 0x008b93e8, declared_size=32, range_size=32, mode=thumb
; class-group: std::moneypunct<wchar_t, true>
; alias: _ZNSt10moneypunctIwLb1EED1Ev
; demangled: std::moneypunct<wchar_t, true>::~moneypunct()
; decoder-mode: thumb
008b93e8  10 b5                                            push {r4, lr}
008b93ea  05 4b                                            ldr r3, [pc, #0x14]
008b93ec  05 4a                                            ldr r2, [pc, #0x14]
008b93ee  04 1c                                            adds r4, r0, #0
008b93f0  7b 44                                            add r3, pc
008b93f2  9a 58                                            ldr r2, [r3, r2]
008b93f4  08 32                                            adds r2, #8
008b93f6  02 60                                            str r2, [r0]
008b93f8  ea f7 80 fa                                      bl #0x8a38fc
008b93fc  20 1c                                            adds r0, r4, #0
008b93fe  10 bd                                            pop {r4, pc}
; mapping-symbol data/literal pool
008b9400  a4 b6 0d 00 d4 21 00 00                          .byte 0xa4, 0xb6, 0x0d, 0x00, 0xd4, 0x21, 0x00, 0x00

; FUNCTION 0x008b9408, declared_size=18, range_size=18, mode=thumb
; class-group: std::moneypunct<wchar_t, true>
; alias: _ZNSt10moneypunctIwLb1EED0Ev
; demangled: std::moneypunct<wchar_t, true>::~moneypunct()
; decoder-mode: thumb
008b9408  10 b5                                            push {r4, lr}
008b940a  04 1c                                            adds r4, r0, #0
008b940c  ff f7 ec ff                                      bl #0x8b93e8
008b9410  20 1c                                            adds r0, r4, #0
008b9412  54 f6 4e e7                                      blx #0x30e2b0
008b9416  20 1c                                            adds r0, r4, #0
008b9418  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b941c, declared_size=32, range_size=32, mode=thumb
; class-group: std::moneypunct<wchar_t, true>
; alias: _ZNSt10moneypunctIwLb1EED2Ev
; demangled: std::moneypunct<wchar_t, true>::~moneypunct()
; decoder-mode: thumb
008b941c  10 b5                                            push {r4, lr}
008b941e  05 4b                                            ldr r3, [pc, #0x14]
008b9420  05 4a                                            ldr r2, [pc, #0x14]
008b9422  04 1c                                            adds r4, r0, #0
008b9424  7b 44                                            add r3, pc
008b9426  9a 58                                            ldr r2, [r3, r2]
008b9428  08 32                                            adds r2, #8
008b942a  02 60                                            str r2, [r0]
008b942c  ea f7 66 fa                                      bl #0x8a38fc
008b9430  20 1c                                            adds r0, r4, #0
008b9432  10 bd                                            pop {r4, pc}
; mapping-symbol data/literal pool
008b9434  70 b6 0d 00 d4 21 00 00                          .byte 0x70, 0xb6, 0x0d, 0x00, 0xd4, 0x21, 0x00, 0x00

; FUNCTION 0x008b95a4, declared_size=12, range_size=12, mode=thumb
; class-group: std::moneypunct<wchar_t, true>
; alias: _ZNKSt10moneypunctIwLb1EE11do_groupingEv
; demangled: std::moneypunct<wchar_t, true>::do_grouping() const
; decoder-mode: thumb
008b95a4  10 b5                                            push {r4, lr}
008b95a6  04 1c                                            adds r4, r0, #0
008b95a8  ff f7 be ff                                      bl #0x8b9528
008b95ac  20 1c                                            adds r0, r4, #0
008b95ae  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b9688, declared_size=68, range_size=68, mode=thumb
; class-group: std::moneypunct<wchar_t, true>
; alias: _ZNSt10moneypunctIwLb1EEC1Ej
; demangled: std::moneypunct<wchar_t, true>::moneypunct(unsigned int)
; decoder-mode: thumb
008b9688  70 b5                                            push {r4, r5, r6, lr}
008b968a  4b 1e                                            subs r3, r1, #1
008b968c  99 41                                            sbcs r1, r3
008b968e  04 1c                                            adds r4, r0, #0
008b9690  41 60                                            str r1, [r0, #4]
008b9692  0c 4d                                            ldr r5, [pc, #0x30]
008b9694  00 21                                            movs r1, #0
008b9696  08 30                                            adds r0, #8
008b9698  54 f6 8a e4                                      blx #0x30dfb0
008b969c  0a 4b                                            ldr r3, [pc, #0x28]
008b969e  7d 44                                            add r5, pc
008b96a0  02 20                                            movs r0, #2
008b96a2  eb 58                                            ldr r3, [r5, r3]
008b96a4  03 21                                            movs r1, #3
008b96a6  00 22                                            movs r2, #0
008b96a8  08 33                                            adds r3, #8
008b96aa  23 60                                            str r3, [r4]
008b96ac  04 23                                            movs r3, #4
008b96ae  20 73                                            strb r0, [r4, #0xc]
008b96b0  20 74                                            strb r0, [r4, #0x10]
008b96b2  61 73                                            strb r1, [r4, #0xd]
008b96b4  20 1c                                            adds r0, r4, #0
008b96b6  a2 73                                            strb r2, [r4, #0xe]
008b96b8  e3 73                                            strb r3, [r4, #0xf]
008b96ba  61 74                                            strb r1, [r4, #0x11]
008b96bc  a2 74                                            strb r2, [r4, #0x12]
008b96be  e3 74                                            strb r3, [r4, #0x13]
008b96c0  70 bd                                            pop {r4, r5, r6, pc}
008b96c2  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008b96c4  f6 b3 0d 00 d4 21 00 00                          .byte 0xf6, 0xb3, 0x0d, 0x00, 0xd4, 0x21, 0x00, 0x00

; FUNCTION 0x008b96cc, declared_size=68, range_size=68, mode=thumb
; class-group: std::moneypunct<wchar_t, true>
; alias: _ZNSt10moneypunctIwLb1EEC2Ej
; demangled: std::moneypunct<wchar_t, true>::moneypunct(unsigned int)
; decoder-mode: thumb
008b96cc  70 b5                                            push {r4, r5, r6, lr}
008b96ce  4b 1e                                            subs r3, r1, #1
008b96d0  99 41                                            sbcs r1, r3
008b96d2  04 1c                                            adds r4, r0, #0
008b96d4  41 60                                            str r1, [r0, #4]
008b96d6  0c 4d                                            ldr r5, [pc, #0x30]
008b96d8  00 21                                            movs r1, #0
008b96da  08 30                                            adds r0, #8
008b96dc  54 f6 68 e4                                      blx #0x30dfb0
008b96e0  0a 4b                                            ldr r3, [pc, #0x28]
008b96e2  7d 44                                            add r5, pc
008b96e4  02 20                                            movs r0, #2
008b96e6  eb 58                                            ldr r3, [r5, r3]
008b96e8  03 21                                            movs r1, #3
008b96ea  00 22                                            movs r2, #0
008b96ec  08 33                                            adds r3, #8
008b96ee  23 60                                            str r3, [r4]
008b96f0  04 23                                            movs r3, #4
008b96f2  20 73                                            strb r0, [r4, #0xc]
008b96f4  20 74                                            strb r0, [r4, #0x10]
008b96f6  61 73                                            strb r1, [r4, #0xd]
008b96f8  20 1c                                            adds r0, r4, #0
008b96fa  a2 73                                            strb r2, [r4, #0xe]
008b96fc  e3 73                                            strb r3, [r4, #0xf]
008b96fe  61 74                                            strb r1, [r4, #0x11]
008b9700  a2 74                                            strb r2, [r4, #0x12]
008b9702  e3 74                                            strb r3, [r4, #0x13]
008b9704  70 bd                                            pop {r4, r5, r6, pc}
008b9706  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008b9708  b2 b3 0d 00 d4 21 00 00                          .byte 0xb2, 0xb3, 0x0d, 0x00, 0xd4, 0x21, 0x00, 0x00

; FUNCTION 0x008b97c0, declared_size=12, range_size=12, mode=thumb
; class-group: std::moneypunct<wchar_t, true>
; alias: _ZNKSt10moneypunctIwLb1EE14do_curr_symbolEv
; demangled: std::moneypunct<wchar_t, true>::do_curr_symbol() const
; decoder-mode: thumb
008b97c0  10 b5                                            push {r4, lr}
008b97c2  04 1c                                            adds r4, r0, #0
008b97c4  ff f7 ee ff                                      bl #0x8b97a4
008b97c8  20 1c                                            adds r0, r4, #0
008b97ca  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b97cc, declared_size=12, range_size=12, mode=thumb
; class-group: std::moneypunct<wchar_t, true>
; alias: _ZNKSt10moneypunctIwLb1EE16do_positive_signEv
; demangled: std::moneypunct<wchar_t, true>::do_positive_sign() const
; decoder-mode: thumb
008b97cc  10 b5                                            push {r4, lr}
008b97ce  04 1c                                            adds r4, r0, #0
008b97d0  ff f7 e8 ff                                      bl #0x8b97a4
008b97d4  20 1c                                            adds r0, r4, #0
008b97d6  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b97d8, declared_size=12, range_size=12, mode=thumb
; class-group: std::moneypunct<wchar_t, true>
; alias: _ZNKSt10moneypunctIwLb1EE16do_negative_signEv
; demangled: std::moneypunct<wchar_t, true>::do_negative_sign() const
; decoder-mode: thumb
008b97d8  10 b5                                            push {r4, lr}
008b97da  04 1c                                            adds r4, r0, #0
008b97dc  ff f7 e2 ff                                      bl #0x8b97a4
008b97e0  20 1c                                            adds r0, r4, #0
008b97e2  10 bd                                            pop {r4, pc}

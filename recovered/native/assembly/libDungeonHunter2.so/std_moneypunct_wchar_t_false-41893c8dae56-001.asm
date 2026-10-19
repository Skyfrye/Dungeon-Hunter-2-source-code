; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008b9348, declared_size=4, range_size=4, mode=thumb
; class-group: std::moneypunct<wchar_t, false>
; alias: _ZNKSt10moneypunctIwLb0EE16do_decimal_pointEv
; demangled: std::moneypunct<wchar_t, false>::do_decimal_point() const
; decoder-mode: thumb
008b9348  20 20                                            movs r0, #0x20
008b934a  70 47                                            bx lr

; FUNCTION 0x008b934c, declared_size=4, range_size=4, mode=thumb
; class-group: std::moneypunct<wchar_t, false>
; alias: _ZNKSt10moneypunctIwLb0EE16do_thousands_sepEv
; demangled: std::moneypunct<wchar_t, false>::do_thousands_sep() const
; decoder-mode: thumb
008b934c  20 20                                            movs r0, #0x20
008b934e  70 47                                            bx lr

; FUNCTION 0x008b9350, declared_size=4, range_size=4, mode=thumb
; class-group: std::moneypunct<wchar_t, false>
; alias: _ZNKSt10moneypunctIwLb0EE14do_frac_digitsEv
; demangled: std::moneypunct<wchar_t, false>::do_frac_digits() const
; decoder-mode: thumb
008b9350  00 20                                            movs r0, #0
008b9352  70 47                                            bx lr

; FUNCTION 0x008b9354, declared_size=32, range_size=32, mode=thumb
; class-group: std::moneypunct<wchar_t, false>
; alias: _ZNKSt10moneypunctIwLb0EE13do_pos_formatEv
; demangled: std::moneypunct<wchar_t, false>::do_pos_format() const
; decoder-mode: thumb
008b9354  c2 68                                            ldr r2, [r0, #0xc]
008b9356  82 b0                                            sub sp, #8
008b9358  01 ab                                            add r3, sp, #4
008b935a  01 92                                            str r2, [sp, #4]
008b935c  59 78                                            ldrb r1, [r3, #1]
008b935e  18 78                                            ldrb r0, [r3]
008b9360  9a 78                                            ldrb r2, [r3, #2]
008b9362  db 78                                            ldrb r3, [r3, #3]
008b9364  09 02                                            lsls r1, r1, #8
008b9366  12 04                                            lsls r2, r2, #0x10
008b9368  08 43                                            orrs r0, r1
008b936a  1b 06                                            lsls r3, r3, #0x18
008b936c  10 43                                            orrs r0, r2
008b936e  02 b0                                            add sp, #8
008b9370  18 43                                            orrs r0, r3
008b9372  70 47                                            bx lr

; FUNCTION 0x008b9374, declared_size=32, range_size=32, mode=thumb
; class-group: std::moneypunct<wchar_t, false>
; alias: _ZNKSt10moneypunctIwLb0EE13do_neg_formatEv
; demangled: std::moneypunct<wchar_t, false>::do_neg_format() const
; decoder-mode: thumb
008b9374  02 69                                            ldr r2, [r0, #0x10]
008b9376  82 b0                                            sub sp, #8
008b9378  01 ab                                            add r3, sp, #4
008b937a  01 92                                            str r2, [sp, #4]
008b937c  59 78                                            ldrb r1, [r3, #1]
008b937e  18 78                                            ldrb r0, [r3]
008b9380  9a 78                                            ldrb r2, [r3, #2]
008b9382  db 78                                            ldrb r3, [r3, #3]
008b9384  09 02                                            lsls r1, r1, #8
008b9386  12 04                                            lsls r2, r2, #0x10
008b9388  08 43                                            orrs r0, r1
008b938a  1b 06                                            lsls r3, r3, #0x18
008b938c  10 43                                            orrs r0, r2
008b938e  02 b0                                            add sp, #8
008b9390  18 43                                            orrs r0, r3
008b9392  70 47                                            bx lr

; FUNCTION 0x008b9394, declared_size=32, range_size=32, mode=thumb
; class-group: std::moneypunct<wchar_t, false>
; alias: _ZNSt10moneypunctIwLb0EED1Ev
; demangled: std::moneypunct<wchar_t, false>::~moneypunct()
; decoder-mode: thumb
008b9394  10 b5                                            push {r4, lr}
008b9396  05 4b                                            ldr r3, [pc, #0x14]
008b9398  05 4a                                            ldr r2, [pc, #0x14]
008b939a  04 1c                                            adds r4, r0, #0
008b939c  7b 44                                            add r3, pc
008b939e  9a 58                                            ldr r2, [r3, r2]
008b93a0  08 32                                            adds r2, #8
008b93a2  02 60                                            str r2, [r0]
008b93a4  ea f7 aa fa                                      bl #0x8a38fc
008b93a8  20 1c                                            adds r0, r4, #0
008b93aa  10 bd                                            pop {r4, pc}
; mapping-symbol data/literal pool
008b93ac  f8 b6 0d 00 a4 17 00 00                          .byte 0xf8, 0xb6, 0x0d, 0x00, 0xa4, 0x17, 0x00, 0x00

; FUNCTION 0x008b93b4, declared_size=18, range_size=18, mode=thumb
; class-group: std::moneypunct<wchar_t, false>
; alias: _ZNSt10moneypunctIwLb0EED0Ev
; demangled: std::moneypunct<wchar_t, false>::~moneypunct()
; decoder-mode: thumb
008b93b4  10 b5                                            push {r4, lr}
008b93b6  04 1c                                            adds r4, r0, #0
008b93b8  ff f7 ec ff                                      bl #0x8b9394
008b93bc  20 1c                                            adds r0, r4, #0
008b93be  54 f6 78 e7                                      blx #0x30e2b0
008b93c2  20 1c                                            adds r0, r4, #0
008b93c4  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b93c8, declared_size=32, range_size=32, mode=thumb
; class-group: std::moneypunct<wchar_t, false>
; alias: _ZNSt10moneypunctIwLb0EED2Ev
; demangled: std::moneypunct<wchar_t, false>::~moneypunct()
; decoder-mode: thumb
008b93c8  10 b5                                            push {r4, lr}
008b93ca  05 4b                                            ldr r3, [pc, #0x14]
008b93cc  05 4a                                            ldr r2, [pc, #0x14]
008b93ce  04 1c                                            adds r4, r0, #0
008b93d0  7b 44                                            add r3, pc
008b93d2  9a 58                                            ldr r2, [r3, r2]
008b93d4  08 32                                            adds r2, #8
008b93d6  02 60                                            str r2, [r0]
008b93d8  ea f7 90 fa                                      bl #0x8a38fc
008b93dc  20 1c                                            adds r0, r4, #0
008b93de  10 bd                                            pop {r4, pc}
; mapping-symbol data/literal pool
008b93e0  c4 b6 0d 00 a4 17 00 00                          .byte 0xc4, 0xb6, 0x0d, 0x00, 0xa4, 0x17, 0x00, 0x00

; FUNCTION 0x008b95b0, declared_size=12, range_size=12, mode=thumb
; class-group: std::moneypunct<wchar_t, false>
; alias: _ZNKSt10moneypunctIwLb0EE11do_groupingEv
; demangled: std::moneypunct<wchar_t, false>::do_grouping() const
; decoder-mode: thumb
008b95b0  10 b5                                            push {r4, lr}
008b95b2  04 1c                                            adds r4, r0, #0
008b95b4  ff f7 b8 ff                                      bl #0x8b9528
008b95b8  20 1c                                            adds r0, r4, #0
008b95ba  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b9600, declared_size=68, range_size=68, mode=thumb
; class-group: std::moneypunct<wchar_t, false>
; alias: _ZNSt10moneypunctIwLb0EEC1Ej
; demangled: std::moneypunct<wchar_t, false>::moneypunct(unsigned int)
; decoder-mode: thumb
008b9600  70 b5                                            push {r4, r5, r6, lr}
008b9602  4b 1e                                            subs r3, r1, #1
008b9604  99 41                                            sbcs r1, r3
008b9606  04 1c                                            adds r4, r0, #0
008b9608  41 60                                            str r1, [r0, #4]
008b960a  0c 4d                                            ldr r5, [pc, #0x30]
008b960c  00 21                                            movs r1, #0
008b960e  08 30                                            adds r0, #8
008b9610  54 f6 ce e4                                      blx #0x30dfb0
008b9614  0a 4b                                            ldr r3, [pc, #0x28]
008b9616  7d 44                                            add r5, pc
008b9618  02 20                                            movs r0, #2
008b961a  eb 58                                            ldr r3, [r5, r3]
008b961c  03 21                                            movs r1, #3
008b961e  00 22                                            movs r2, #0
008b9620  08 33                                            adds r3, #8
008b9622  23 60                                            str r3, [r4]
008b9624  04 23                                            movs r3, #4
008b9626  20 73                                            strb r0, [r4, #0xc]
008b9628  20 74                                            strb r0, [r4, #0x10]
008b962a  61 73                                            strb r1, [r4, #0xd]
008b962c  20 1c                                            adds r0, r4, #0
008b962e  a2 73                                            strb r2, [r4, #0xe]
008b9630  e3 73                                            strb r3, [r4, #0xf]
008b9632  61 74                                            strb r1, [r4, #0x11]
008b9634  a2 74                                            strb r2, [r4, #0x12]
008b9636  e3 74                                            strb r3, [r4, #0x13]
008b9638  70 bd                                            pop {r4, r5, r6, pc}
008b963a  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008b963c  7e b4 0d 00 a4 17 00 00                          .byte 0x7e, 0xb4, 0x0d, 0x00, 0xa4, 0x17, 0x00, 0x00

; FUNCTION 0x008b9644, declared_size=68, range_size=68, mode=thumb
; class-group: std::moneypunct<wchar_t, false>
; alias: _ZNSt10moneypunctIwLb0EEC2Ej
; demangled: std::moneypunct<wchar_t, false>::moneypunct(unsigned int)
; decoder-mode: thumb
008b9644  70 b5                                            push {r4, r5, r6, lr}
008b9646  4b 1e                                            subs r3, r1, #1
008b9648  99 41                                            sbcs r1, r3
008b964a  04 1c                                            adds r4, r0, #0
008b964c  41 60                                            str r1, [r0, #4]
008b964e  0c 4d                                            ldr r5, [pc, #0x30]
008b9650  00 21                                            movs r1, #0
008b9652  08 30                                            adds r0, #8
008b9654  54 f6 ac e4                                      blx #0x30dfb0
008b9658  0a 4b                                            ldr r3, [pc, #0x28]
008b965a  7d 44                                            add r5, pc
008b965c  02 20                                            movs r0, #2
008b965e  eb 58                                            ldr r3, [r5, r3]
008b9660  03 21                                            movs r1, #3
008b9662  00 22                                            movs r2, #0
008b9664  08 33                                            adds r3, #8
008b9666  23 60                                            str r3, [r4]
008b9668  04 23                                            movs r3, #4
008b966a  20 73                                            strb r0, [r4, #0xc]
008b966c  20 74                                            strb r0, [r4, #0x10]
008b966e  61 73                                            strb r1, [r4, #0xd]
008b9670  20 1c                                            adds r0, r4, #0
008b9672  a2 73                                            strb r2, [r4, #0xe]
008b9674  e3 73                                            strb r3, [r4, #0xf]
008b9676  61 74                                            strb r1, [r4, #0x11]
008b9678  a2 74                                            strb r2, [r4, #0x12]
008b967a  e3 74                                            strb r3, [r4, #0x13]
008b967c  70 bd                                            pop {r4, r5, r6, pc}
008b967e  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008b9680  3a b4 0d 00 a4 17 00 00                          .byte 0x3a, 0xb4, 0x0d, 0x00, 0xa4, 0x17, 0x00, 0x00

; FUNCTION 0x008b97e4, declared_size=12, range_size=12, mode=thumb
; class-group: std::moneypunct<wchar_t, false>
; alias: _ZNKSt10moneypunctIwLb0EE14do_curr_symbolEv
; demangled: std::moneypunct<wchar_t, false>::do_curr_symbol() const
; decoder-mode: thumb
008b97e4  10 b5                                            push {r4, lr}
008b97e6  04 1c                                            adds r4, r0, #0
008b97e8  ff f7 dc ff                                      bl #0x8b97a4
008b97ec  20 1c                                            adds r0, r4, #0
008b97ee  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b97f0, declared_size=12, range_size=12, mode=thumb
; class-group: std::moneypunct<wchar_t, false>
; alias: _ZNKSt10moneypunctIwLb0EE16do_positive_signEv
; demangled: std::moneypunct<wchar_t, false>::do_positive_sign() const
; decoder-mode: thumb
008b97f0  10 b5                                            push {r4, lr}
008b97f2  04 1c                                            adds r4, r0, #0
008b97f4  ff f7 d6 ff                                      bl #0x8b97a4
008b97f8  20 1c                                            adds r0, r4, #0
008b97fa  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b97fc, declared_size=12, range_size=12, mode=thumb
; class-group: std::moneypunct<wchar_t, false>
; alias: _ZNKSt10moneypunctIwLb0EE16do_negative_signEv
; demangled: std::moneypunct<wchar_t, false>::do_negative_sign() const
; decoder-mode: thumb
008b97fc  10 b5                                            push {r4, lr}
008b97fe  04 1c                                            adds r4, r0, #0
008b9800  ff f7 d0 ff                                      bl #0x8b97a4
008b9804  20 1c                                            adds r0, r4, #0
008b9806  10 bd                                            pop {r4, pc}

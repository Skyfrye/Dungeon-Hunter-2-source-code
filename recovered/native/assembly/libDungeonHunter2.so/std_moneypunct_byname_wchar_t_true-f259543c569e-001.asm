; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008b42e8, declared_size=28, range_size=28, mode=thumb
; class-group: std::moneypunct_byname<wchar_t, true>
; alias: _ZNKSt17moneypunct_bynameIwLb1EE11do_groupingEv
; demangled: std::moneypunct_byname<wchar_t, true>::do_grouping() const
; decoder-mode: thumb
008b42e8  10 b5                                            push {r4, lr}
008b42ea  82 b0                                            sub sp, #8
008b42ec  04 1c                                            adds r4, r0, #0
008b42ee  48 69                                            ldr r0, [r1, #0x14]
008b42f0  02 f0 f2 fb                                      bl #0x8b6ad8
008b42f4  01 aa                                            add r2, sp, #4
008b42f6  01 1c                                            adds r1, r0, #0
008b42f8  20 1c                                            adds r0, r4, #0
008b42fa  5f f6 f8 e6                                      blx #0x3140ec
008b42fe  02 b0                                            add sp, #8
008b4300  20 1c                                            adds r0, r4, #0
008b4302  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b4348, declared_size=10, range_size=10, mode=thumb
; class-group: std::moneypunct_byname<wchar_t, true>
; alias: _ZNKSt17moneypunct_bynameIwLb1EE16do_thousands_sepEv
; demangled: std::moneypunct_byname<wchar_t, true>::do_thousands_sep() const
; decoder-mode: thumb
008b4348  10 b5                                            push {r4, lr}
008b434a  40 69                                            ldr r0, [r0, #0x14]
008b434c  02 f0 c2 fb                                      bl #0x8b6ad4
008b4350  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b4378, declared_size=10, range_size=10, mode=thumb
; class-group: std::moneypunct_byname<wchar_t, true>
; alias: _ZNKSt17moneypunct_bynameIwLb1EE16do_decimal_pointEv
; demangled: std::moneypunct_byname<wchar_t, true>::do_decimal_point() const
; decoder-mode: thumb
008b4378  10 b5                                            push {r4, lr}
008b437a  40 69                                            ldr r0, [r0, #0x14]
008b437c  02 f0 a8 fb                                      bl #0x8b6ad0
008b4380  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b4874, declared_size=10, range_size=10, mode=thumb
; class-group: std::moneypunct_byname<wchar_t, true>
; alias: _ZNKSt17moneypunct_bynameIwLb1EE14do_frac_digitsEv
; demangled: std::moneypunct_byname<wchar_t, true>::do_frac_digits() const
; decoder-mode: thumb
008b4874  10 b5                                            push {r4, lr}
008b4876  40 69                                            ldr r0, [r0, #0x14]
008b4878  02 f0 40 f9                                      bl #0x8b6afc
008b487c  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b488c, declared_size=40, range_size=40, mode=thumb
; class-group: std::moneypunct_byname<wchar_t, true>
; alias: _ZNSt17moneypunct_bynameIwLb1EED1Ev
; demangled: std::moneypunct_byname<wchar_t, true>::~moneypunct_byname()
; decoder-mode: thumb
008b488c  10 b5                                            push {r4, lr}
008b488e  07 4b                                            ldr r3, [pc, #0x1c]
008b4890  07 4a                                            ldr r2, [pc, #0x1c]
008b4892  04 1c                                            adds r4, r0, #0
008b4894  7b 44                                            add r3, pc
008b4896  9a 58                                            ldr r2, [r3, r2]
008b4898  08 32                                            adds r2, #8
008b489a  02 60                                            str r2, [r0]
008b489c  40 69                                            ldr r0, [r0, #0x14]
008b489e  ff f7 1b fa                                      bl #0x8b3cd8
008b48a2  20 1c                                            adds r0, r4, #0
008b48a4  04 f0 ba fd                                      bl #0x8b941c
008b48a8  20 1c                                            adds r0, r4, #0
008b48aa  10 bd                                            pop {r4, pc}
; mapping-symbol data/literal pool
008b48ac  00 02 0e 00 98 1e 00 00                          .byte 0x00, 0x02, 0x0e, 0x00, 0x98, 0x1e, 0x00, 0x00

; FUNCTION 0x008b48b4, declared_size=18, range_size=18, mode=thumb
; class-group: std::moneypunct_byname<wchar_t, true>
; alias: _ZNSt17moneypunct_bynameIwLb1EED0Ev
; demangled: std::moneypunct_byname<wchar_t, true>::~moneypunct_byname()
; decoder-mode: thumb
008b48b4  10 b5                                            push {r4, lr}
008b48b6  04 1c                                            adds r4, r0, #0
008b48b8  ff f7 e8 ff                                      bl #0x8b488c
008b48bc  20 1c                                            adds r0, r4, #0
008b48be  59 f6 f8 e4                                      blx #0x30e2b0
008b48c2  20 1c                                            adds r0, r4, #0
008b48c4  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b48c8, declared_size=40, range_size=40, mode=thumb
; class-group: std::moneypunct_byname<wchar_t, true>
; alias: _ZNSt17moneypunct_bynameIwLb1EED2Ev
; demangled: std::moneypunct_byname<wchar_t, true>::~moneypunct_byname()
; decoder-mode: thumb
008b48c8  10 b5                                            push {r4, lr}
008b48ca  07 4b                                            ldr r3, [pc, #0x1c]
008b48cc  07 4a                                            ldr r2, [pc, #0x1c]
008b48ce  04 1c                                            adds r4, r0, #0
008b48d0  7b 44                                            add r3, pc
008b48d2  9a 58                                            ldr r2, [r3, r2]
008b48d4  08 32                                            adds r2, #8
008b48d6  02 60                                            str r2, [r0]
008b48d8  40 69                                            ldr r0, [r0, #0x14]
008b48da  ff f7 fd f9                                      bl #0x8b3cd8
008b48de  20 1c                                            adds r0, r4, #0
008b48e0  04 f0 9c fd                                      bl #0x8b941c
008b48e4  20 1c                                            adds r0, r4, #0
008b48e6  10 bd                                            pop {r4, pc}
; mapping-symbol data/literal pool
008b48e8  c4 01 0e 00 98 1e 00 00                          .byte 0xc4, 0x01, 0x0e, 0x00, 0x98, 0x1e, 0x00, 0x00

; FUNCTION 0x008b48f0, declared_size=52, range_size=52, mode=thumb
; class-group: std::moneypunct_byname<wchar_t, true>
; alias: _ZNSt17moneypunct_bynameIwLb1EEC1EP16_Locale_monetary
; demangled: std::moneypunct_byname<wchar_t, true>::moneypunct_byname(_Locale_monetary*)
; decoder-mode: thumb
008b48f0  70 b5                                            push {r4, r5, r6, lr}
008b48f2  0e 1c                                            adds r6, r1, #0
008b48f4  09 4d                                            ldr r5, [pc, #0x24]
008b48f6  00 21                                            movs r1, #0
008b48f8  04 1c                                            adds r4, r0, #0
008b48fa  04 f0 e7 fe                                      bl #0x8b96cc
008b48fe  08 4b                                            ldr r3, [pc, #0x20]
008b4900  7d 44                                            add r5, pc
008b4902  20 1c                                            adds r0, r4, #0
008b4904  eb 58                                            ldr r3, [r5, r3]
008b4906  21 1c                                            adds r1, r4, #0
008b4908  66 61                                            str r6, [r4, #0x14]
008b490a  08 33                                            adds r3, #8
008b490c  32 1c                                            adds r2, r6, #0
008b490e  23 60                                            str r3, [r4]
008b4910  0c 30                                            adds r0, #0xc
008b4912  10 31                                            adds r1, #0x10
008b4914  ff f7 74 fd                                      bl #0x8b4400
008b4918  20 1c                                            adds r0, r4, #0
008b491a  70 bd                                            pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
008b491c  94 01 0e 00 98 1e 00 00                          .byte 0x94, 0x01, 0x0e, 0x00, 0x98, 0x1e, 0x00, 0x00

; FUNCTION 0x008b4924, declared_size=52, range_size=52, mode=thumb
; class-group: std::moneypunct_byname<wchar_t, true>
; alias: _ZNSt17moneypunct_bynameIwLb1EEC2EP16_Locale_monetary
; demangled: std::moneypunct_byname<wchar_t, true>::moneypunct_byname(_Locale_monetary*)
; decoder-mode: thumb
008b4924  70 b5                                            push {r4, r5, r6, lr}
008b4926  0e 1c                                            adds r6, r1, #0
008b4928  09 4d                                            ldr r5, [pc, #0x24]
008b492a  00 21                                            movs r1, #0
008b492c  04 1c                                            adds r4, r0, #0
008b492e  04 f0 cd fe                                      bl #0x8b96cc
008b4932  08 4b                                            ldr r3, [pc, #0x20]
008b4934  7d 44                                            add r5, pc
008b4936  20 1c                                            adds r0, r4, #0
008b4938  eb 58                                            ldr r3, [r5, r3]
008b493a  21 1c                                            adds r1, r4, #0
008b493c  66 61                                            str r6, [r4, #0x14]
008b493e  08 33                                            adds r3, #8
008b4940  32 1c                                            adds r2, r6, #0
008b4942  23 60                                            str r3, [r4]
008b4944  0c 30                                            adds r0, #0xc
008b4946  10 31                                            adds r1, #0x10
008b4948  ff f7 5a fd                                      bl #0x8b4400
008b494c  20 1c                                            adds r0, r4, #0
008b494e  70 bd                                            pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
008b4950  60 01 0e 00 98 1e 00 00                          .byte 0x60, 0x01, 0x0e, 0x00, 0x98, 0x1e, 0x00, 0x00

; FUNCTION 0x008b4958, declared_size=132, range_size=132, mode=thumb
; class-group: std::moneypunct_byname<wchar_t, true>
; alias: _ZNSt17moneypunct_bynameIwLb1EEC1EPKcj
; demangled: std::moneypunct_byname<wchar_t, true>::moneypunct_byname(char const*, unsigned int)
; decoder-mode: thumb
008b4958  70 b5                                            push {r4, r5, r6, lr}
008b495a  1c 4d                                            ldr r5, [pc, #0x70]
008b495c  1c 4e                                            ldr r6, [pc, #0x70]
008b495e  c4 b0                                            sub sp, #0x110
008b4960  7d 44                                            add r5, pc
008b4962  ab 59                                            ldr r3, [r5, r6]
008b4964  01 91                                            str r1, [sp, #4]
008b4966  11 1c                                            adds r1, r2, #0
008b4968  1b 68                                            ldr r3, [r3]
008b496a  04 1c                                            adds r4, r0, #0
008b496c  43 93                                            str r3, [sp, #0x10c]
008b496e  04 f0 ad fe                                      bl #0x8b96cc
008b4972  18 4b                                            ldr r3, [pc, #0x60]
008b4974  eb 58                                            ldr r3, [r5, r3]
008b4976  08 33                                            adds r3, #8
008b4978  23 60                                            str r3, [r4]
008b497a  01 9b                                            ldr r3, [sp, #4]
008b497c  00 2b                                            cmp r3, #0
008b497e  17 d0                                            beq #0x8b49b0
008b4980  00 22                                            movs r2, #0
008b4982  01 a8                                            add r0, sp, #4
008b4984  03 a9                                            add r1, sp, #0xc
008b4986  02 ab                                            add r3, sp, #8
008b4988  ff f7 d2 fb                                      bl #0x8b4130
008b498c  02 1c                                            adds r2, r0, #0
008b498e  60 61                                            str r0, [r4, #0x14]
008b4990  00 28                                            cmp r0, #0
008b4992  10 d0                                            beq #0x8b49b6
008b4994  20 1c                                            adds r0, r4, #0
008b4996  21 1c                                            adds r1, r4, #0
008b4998  0c 30                                            adds r0, #0xc
008b499a  10 31                                            adds r1, #0x10
008b499c  ff f7 30 fd                                      bl #0x8b4400
008b49a0  ab 59                                            ldr r3, [r5, r6]
008b49a2  43 9a                                            ldr r2, [sp, #0x10c]
008b49a4  20 1c                                            adds r0, r4, #0
008b49a6  1b 68                                            ldr r3, [r3]
008b49a8  9a 42                                            cmp r2, r3
008b49aa  0c d1                                            bne #0x8b49c6
008b49ac  44 b0                                            add sp, #0x110
008b49ae  70 bd                                            pop {r4, r5, r6, pc}
008b49b0  ee f7 86 fd                                      bl #0x8a34c0
008b49b4  e4 e7                                            b #0x8b4980
008b49b6  08 4a                                            ldr r2, [pc, #0x20]
008b49b8  02 98                                            ldr r0, [sp, #8]
008b49ba  01 99                                            ldr r1, [sp, #4]
008b49bc  7a 44                                            add r2, pc
008b49be  ef f7 07 ff                                      bl #0x8a47d0
008b49c2  62 69                                            ldr r2, [r4, #0x14]
008b49c4  e6 e7                                            b #0x8b4994
008b49c6  59 f6 a4 e4                                      blx #0x30e310
008b49ca  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008b49cc  34 01 0e 00 ac 40 00 00 98 1e 00 00 38 13 06 00  .byte 0x34, 0x01, 0x0e, 0x00, 0xac, 0x40, 0x00, 0x00, 0x98, 0x1e, 0x00, 0x00, 0x38, 0x13, 0x06, 0x00

; FUNCTION 0x008b49dc, declared_size=132, range_size=132, mode=thumb
; class-group: std::moneypunct_byname<wchar_t, true>
; alias: _ZNSt17moneypunct_bynameIwLb1EEC2EPKcj
; demangled: std::moneypunct_byname<wchar_t, true>::moneypunct_byname(char const*, unsigned int)
; decoder-mode: thumb
008b49dc  70 b5                                            push {r4, r5, r6, lr}
008b49de  1c 4d                                            ldr r5, [pc, #0x70]
008b49e0  1c 4e                                            ldr r6, [pc, #0x70]
008b49e2  c4 b0                                            sub sp, #0x110
008b49e4  7d 44                                            add r5, pc
008b49e6  ab 59                                            ldr r3, [r5, r6]
008b49e8  01 91                                            str r1, [sp, #4]
008b49ea  11 1c                                            adds r1, r2, #0
008b49ec  1b 68                                            ldr r3, [r3]
008b49ee  04 1c                                            adds r4, r0, #0
008b49f0  43 93                                            str r3, [sp, #0x10c]
008b49f2  04 f0 6b fe                                      bl #0x8b96cc
008b49f6  18 4b                                            ldr r3, [pc, #0x60]
008b49f8  eb 58                                            ldr r3, [r5, r3]
008b49fa  08 33                                            adds r3, #8
008b49fc  23 60                                            str r3, [r4]
008b49fe  01 9b                                            ldr r3, [sp, #4]
008b4a00  00 2b                                            cmp r3, #0
008b4a02  17 d0                                            beq #0x8b4a34
008b4a04  00 22                                            movs r2, #0
008b4a06  01 a8                                            add r0, sp, #4
008b4a08  03 a9                                            add r1, sp, #0xc
008b4a0a  02 ab                                            add r3, sp, #8
008b4a0c  ff f7 90 fb                                      bl #0x8b4130
008b4a10  02 1c                                            adds r2, r0, #0
008b4a12  60 61                                            str r0, [r4, #0x14]
008b4a14  00 28                                            cmp r0, #0
008b4a16  10 d0                                            beq #0x8b4a3a
008b4a18  20 1c                                            adds r0, r4, #0
008b4a1a  21 1c                                            adds r1, r4, #0
008b4a1c  0c 30                                            adds r0, #0xc
008b4a1e  10 31                                            adds r1, #0x10
008b4a20  ff f7 ee fc                                      bl #0x8b4400
008b4a24  ab 59                                            ldr r3, [r5, r6]
008b4a26  43 9a                                            ldr r2, [sp, #0x10c]
008b4a28  20 1c                                            adds r0, r4, #0
008b4a2a  1b 68                                            ldr r3, [r3]
008b4a2c  9a 42                                            cmp r2, r3
008b4a2e  0c d1                                            bne #0x8b4a4a
008b4a30  44 b0                                            add sp, #0x110
008b4a32  70 bd                                            pop {r4, r5, r6, pc}
008b4a34  ee f7 44 fd                                      bl #0x8a34c0
008b4a38  e4 e7                                            b #0x8b4a04
008b4a3a  08 4a                                            ldr r2, [pc, #0x20]
008b4a3c  02 98                                            ldr r0, [sp, #8]
008b4a3e  01 99                                            ldr r1, [sp, #4]
008b4a40  7a 44                                            add r2, pc
008b4a42  ef f7 c5 fe                                      bl #0x8a47d0
008b4a46  62 69                                            ldr r2, [r4, #0x14]
008b4a48  e6 e7                                            b #0x8b4a18
008b4a4a  59 f6 62 e4                                      blx #0x30e310
008b4a4e  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008b4a50  b0 00 0e 00 ac 40 00 00 98 1e 00 00 b4 12 06 00  .byte 0xb0, 0x00, 0x0e, 0x00, 0xac, 0x40, 0x00, 0x00, 0x98, 0x1e, 0x00, 0x00, 0xb4, 0x12, 0x06, 0x00

; FUNCTION 0x008b5ff8, declared_size=32, range_size=32, mode=thumb
; class-group: std::moneypunct_byname<wchar_t, true>
; alias: _ZNKSt17moneypunct_bynameIwLb1EE16do_negative_signEv
; demangled: std::moneypunct_byname<wchar_t, true>::do_negative_sign() const
; decoder-mode: thumb
008b5ff8  10 b5                                            push {r4, lr}
008b5ffa  92 b0                                            sub sp, #0x48
008b5ffc  04 1c                                            adds r4, r0, #0
008b5ffe  10 22                                            movs r2, #0x10
008b6000  48 69                                            ldr r0, [r1, #0x14]
008b6002  01 a9                                            add r1, sp, #4
008b6004  00 f0 a0 fd                                      bl #0x8b6b48
008b6008  11 aa                                            add r2, sp, #0x44
008b600a  01 1c                                            adds r1, r0, #0
008b600c  20 1c                                            adds r0, r4, #0
008b600e  ff f7 d3 ff                                      bl #0x8b5fb8
008b6012  12 b0                                            add sp, #0x48
008b6014  20 1c                                            adds r0, r4, #0
008b6016  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b6038, declared_size=32, range_size=32, mode=thumb
; class-group: std::moneypunct_byname<wchar_t, true>
; alias: _ZNKSt17moneypunct_bynameIwLb1EE16do_positive_signEv
; demangled: std::moneypunct_byname<wchar_t, true>::do_positive_sign() const
; decoder-mode: thumb
008b6038  10 b5                                            push {r4, lr}
008b603a  92 b0                                            sub sp, #0x48
008b603c  04 1c                                            adds r4, r0, #0
008b603e  10 22                                            movs r2, #0x10
008b6040  48 69                                            ldr r0, [r1, #0x14]
008b6042  01 a9                                            add r1, sp, #4
008b6044  00 f0 7a fd                                      bl #0x8b6b3c
008b6048  11 aa                                            add r2, sp, #0x44
008b604a  01 1c                                            adds r1, r0, #0
008b604c  20 1c                                            adds r0, r4, #0
008b604e  ff f7 b3 ff                                      bl #0x8b5fb8
008b6052  12 b0                                            add sp, #0x48
008b6054  20 1c                                            adds r0, r4, #0
008b6056  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b6078, declared_size=32, range_size=32, mode=thumb
; class-group: std::moneypunct_byname<wchar_t, true>
; alias: _ZNKSt17moneypunct_bynameIwLb1EE14do_curr_symbolEv
; demangled: std::moneypunct_byname<wchar_t, true>::do_curr_symbol() const
; decoder-mode: thumb
008b6078  10 b5                                            push {r4, lr}
008b607a  92 b0                                            sub sp, #0x48
008b607c  04 1c                                            adds r4, r0, #0
008b607e  10 22                                            movs r2, #0x10
008b6080  48 69                                            ldr r0, [r1, #0x14]
008b6082  01 a9                                            add r1, sp, #4
008b6084  00 f0 4a fd                                      bl #0x8b6b1c
008b6088  11 aa                                            add r2, sp, #0x44
008b608a  01 1c                                            adds r1, r0, #0
008b608c  20 1c                                            adds r0, r4, #0
008b608e  ff f7 93 ff                                      bl #0x8b5fb8
008b6092  12 b0                                            add sp, #0x48
008b6094  20 1c                                            adds r0, r4, #0
008b6096  10 bd                                            pop {r4, pc}

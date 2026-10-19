; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008b42b4, declared_size=10, range_size=10, mode=thumb
; class-group: std::moneypunct_byname<wchar_t, false>
; alias: _ZNKSt17moneypunct_bynameIwLb0EE14do_frac_digitsEv
; demangled: std::moneypunct_byname<wchar_t, false>::do_frac_digits() const
; decoder-mode: thumb
008b42b4  10 b5                                            push {r4, lr}
008b42b6  40 69                                            ldr r0, [r0, #0x14]
008b42b8  02 f0 22 fc                                      bl #0x8b6b00
008b42bc  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b42cc, declared_size=28, range_size=28, mode=thumb
; class-group: std::moneypunct_byname<wchar_t, false>
; alias: _ZNKSt17moneypunct_bynameIwLb0EE11do_groupingEv
; demangled: std::moneypunct_byname<wchar_t, false>::do_grouping() const
; decoder-mode: thumb
008b42cc  10 b5                                            push {r4, lr}
008b42ce  82 b0                                            sub sp, #8
008b42d0  04 1c                                            adds r4, r0, #0
008b42d2  48 69                                            ldr r0, [r1, #0x14]
008b42d4  02 f0 00 fc                                      bl #0x8b6ad8
008b42d8  01 aa                                            add r2, sp, #4
008b42da  01 1c                                            adds r1, r0, #0
008b42dc  20 1c                                            adds r0, r4, #0
008b42de  5f f6 06 e7                                      blx #0x3140ec
008b42e2  02 b0                                            add sp, #8
008b42e4  20 1c                                            adds r0, r4, #0
008b42e6  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b433c, declared_size=10, range_size=10, mode=thumb
; class-group: std::moneypunct_byname<wchar_t, false>
; alias: _ZNKSt17moneypunct_bynameIwLb0EE16do_thousands_sepEv
; demangled: std::moneypunct_byname<wchar_t, false>::do_thousands_sep() const
; decoder-mode: thumb
008b433c  10 b5                                            push {r4, lr}
008b433e  40 69                                            ldr r0, [r0, #0x14]
008b4340  02 f0 c8 fb                                      bl #0x8b6ad4
008b4344  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b436c, declared_size=10, range_size=10, mode=thumb
; class-group: std::moneypunct_byname<wchar_t, false>
; alias: _ZNKSt17moneypunct_bynameIwLb0EE16do_decimal_pointEv
; demangled: std::moneypunct_byname<wchar_t, false>::do_decimal_point() const
; decoder-mode: thumb
008b436c  10 b5                                            push {r4, lr}
008b436e  40 69                                            ldr r0, [r0, #0x14]
008b4370  02 f0 ae fb                                      bl #0x8b6ad0
008b4374  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b439c, declared_size=40, range_size=40, mode=thumb
; class-group: std::moneypunct_byname<wchar_t, false>
; alias: _ZNSt17moneypunct_bynameIwLb0EED1Ev
; demangled: std::moneypunct_byname<wchar_t, false>::~moneypunct_byname()
; decoder-mode: thumb
008b439c  10 b5                                            push {r4, lr}
008b439e  07 4b                                            ldr r3, [pc, #0x1c]
008b43a0  07 4a                                            ldr r2, [pc, #0x1c]
008b43a2  04 1c                                            adds r4, r0, #0
008b43a4  7b 44                                            add r3, pc
008b43a6  9a 58                                            ldr r2, [r3, r2]
008b43a8  08 32                                            adds r2, #8
008b43aa  02 60                                            str r2, [r0]
008b43ac  40 69                                            ldr r0, [r0, #0x14]
008b43ae  ff f7 93 fc                                      bl #0x8b3cd8
008b43b2  20 1c                                            adds r0, r4, #0
008b43b4  05 f0 08 f8                                      bl #0x8b93c8
008b43b8  20 1c                                            adds r0, r4, #0
008b43ba  10 bd                                            pop {r4, pc}
; mapping-symbol data/literal pool
008b43bc  f0 06 0e 00 68 22 00 00                          .byte 0xf0, 0x06, 0x0e, 0x00, 0x68, 0x22, 0x00, 0x00

; FUNCTION 0x008b43c4, declared_size=18, range_size=18, mode=thumb
; class-group: std::moneypunct_byname<wchar_t, false>
; alias: _ZNSt17moneypunct_bynameIwLb0EED0Ev
; demangled: std::moneypunct_byname<wchar_t, false>::~moneypunct_byname()
; decoder-mode: thumb
008b43c4  10 b5                                            push {r4, lr}
008b43c6  04 1c                                            adds r4, r0, #0
008b43c8  ff f7 e8 ff                                      bl #0x8b439c
008b43cc  20 1c                                            adds r0, r4, #0
008b43ce  59 f6 70 e7                                      blx #0x30e2b0
008b43d2  20 1c                                            adds r0, r4, #0
008b43d4  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b43d8, declared_size=40, range_size=40, mode=thumb
; class-group: std::moneypunct_byname<wchar_t, false>
; alias: _ZNSt17moneypunct_bynameIwLb0EED2Ev
; demangled: std::moneypunct_byname<wchar_t, false>::~moneypunct_byname()
; decoder-mode: thumb
008b43d8  10 b5                                            push {r4, lr}
008b43da  07 4b                                            ldr r3, [pc, #0x1c]
008b43dc  07 4a                                            ldr r2, [pc, #0x1c]
008b43de  04 1c                                            adds r4, r0, #0
008b43e0  7b 44                                            add r3, pc
008b43e2  9a 58                                            ldr r2, [r3, r2]
008b43e4  08 32                                            adds r2, #8
008b43e6  02 60                                            str r2, [r0]
008b43e8  40 69                                            ldr r0, [r0, #0x14]
008b43ea  ff f7 75 fc                                      bl #0x8b3cd8
008b43ee  20 1c                                            adds r0, r4, #0
008b43f0  04 f0 ea ff                                      bl #0x8b93c8
008b43f4  20 1c                                            adds r0, r4, #0
008b43f6  10 bd                                            pop {r4, pc}
; mapping-symbol data/literal pool
008b43f8  b4 06 0e 00 68 22 00 00                          .byte 0xb4, 0x06, 0x0e, 0x00, 0x68, 0x22, 0x00, 0x00

; FUNCTION 0x008b4704, declared_size=52, range_size=52, mode=thumb
; class-group: std::moneypunct_byname<wchar_t, false>
; alias: _ZNSt17moneypunct_bynameIwLb0EEC1EP16_Locale_monetary
; demangled: std::moneypunct_byname<wchar_t, false>::moneypunct_byname(_Locale_monetary*)
; decoder-mode: thumb
008b4704  70 b5                                            push {r4, r5, r6, lr}
008b4706  0e 1c                                            adds r6, r1, #0
008b4708  09 4d                                            ldr r5, [pc, #0x24]
008b470a  00 21                                            movs r1, #0
008b470c  04 1c                                            adds r4, r0, #0
008b470e  04 f0 99 ff                                      bl #0x8b9644
008b4712  08 4b                                            ldr r3, [pc, #0x20]
008b4714  7d 44                                            add r5, pc
008b4716  20 1c                                            adds r0, r4, #0
008b4718  eb 58                                            ldr r3, [r5, r3]
008b471a  21 1c                                            adds r1, r4, #0
008b471c  66 61                                            str r6, [r4, #0x14]
008b471e  08 33                                            adds r3, #8
008b4720  32 1c                                            adds r2, r6, #0
008b4722  23 60                                            str r3, [r4]
008b4724  0c 30                                            adds r0, #0xc
008b4726  10 31                                            adds r1, #0x10
008b4728  ff f7 e4 fe                                      bl #0x8b44f4
008b472c  20 1c                                            adds r0, r4, #0
008b472e  70 bd                                            pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
008b4730  80 03 0e 00 68 22 00 00                          .byte 0x80, 0x03, 0x0e, 0x00, 0x68, 0x22, 0x00, 0x00

; FUNCTION 0x008b4738, declared_size=52, range_size=52, mode=thumb
; class-group: std::moneypunct_byname<wchar_t, false>
; alias: _ZNSt17moneypunct_bynameIwLb0EEC2EP16_Locale_monetary
; demangled: std::moneypunct_byname<wchar_t, false>::moneypunct_byname(_Locale_monetary*)
; decoder-mode: thumb
008b4738  70 b5                                            push {r4, r5, r6, lr}
008b473a  0e 1c                                            adds r6, r1, #0
008b473c  09 4d                                            ldr r5, [pc, #0x24]
008b473e  00 21                                            movs r1, #0
008b4740  04 1c                                            adds r4, r0, #0
008b4742  04 f0 7f ff                                      bl #0x8b9644
008b4746  08 4b                                            ldr r3, [pc, #0x20]
008b4748  7d 44                                            add r5, pc
008b474a  20 1c                                            adds r0, r4, #0
008b474c  eb 58                                            ldr r3, [r5, r3]
008b474e  21 1c                                            adds r1, r4, #0
008b4750  66 61                                            str r6, [r4, #0x14]
008b4752  08 33                                            adds r3, #8
008b4754  32 1c                                            adds r2, r6, #0
008b4756  23 60                                            str r3, [r4]
008b4758  0c 30                                            adds r0, #0xc
008b475a  10 31                                            adds r1, #0x10
008b475c  ff f7 ca fe                                      bl #0x8b44f4
008b4760  20 1c                                            adds r0, r4, #0
008b4762  70 bd                                            pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
008b4764  4c 03 0e 00 68 22 00 00                          .byte 0x4c, 0x03, 0x0e, 0x00, 0x68, 0x22, 0x00, 0x00

; FUNCTION 0x008b476c, declared_size=132, range_size=132, mode=thumb
; class-group: std::moneypunct_byname<wchar_t, false>
; alias: _ZNSt17moneypunct_bynameIwLb0EEC1EPKcj
; demangled: std::moneypunct_byname<wchar_t, false>::moneypunct_byname(char const*, unsigned int)
; decoder-mode: thumb
008b476c  70 b5                                            push {r4, r5, r6, lr}
008b476e  1c 4d                                            ldr r5, [pc, #0x70]
008b4770  1c 4e                                            ldr r6, [pc, #0x70]
008b4772  c4 b0                                            sub sp, #0x110
008b4774  7d 44                                            add r5, pc
008b4776  ab 59                                            ldr r3, [r5, r6]
008b4778  01 91                                            str r1, [sp, #4]
008b477a  11 1c                                            adds r1, r2, #0
008b477c  1b 68                                            ldr r3, [r3]
008b477e  04 1c                                            adds r4, r0, #0
008b4780  43 93                                            str r3, [sp, #0x10c]
008b4782  04 f0 5f ff                                      bl #0x8b9644
008b4786  18 4b                                            ldr r3, [pc, #0x60]
008b4788  eb 58                                            ldr r3, [r5, r3]
008b478a  08 33                                            adds r3, #8
008b478c  23 60                                            str r3, [r4]
008b478e  01 9b                                            ldr r3, [sp, #4]
008b4790  00 2b                                            cmp r3, #0
008b4792  17 d0                                            beq #0x8b47c4
008b4794  00 22                                            movs r2, #0
008b4796  01 a8                                            add r0, sp, #4
008b4798  03 a9                                            add r1, sp, #0xc
008b479a  02 ab                                            add r3, sp, #8
008b479c  ff f7 c8 fc                                      bl #0x8b4130
008b47a0  02 1c                                            adds r2, r0, #0
008b47a2  60 61                                            str r0, [r4, #0x14]
008b47a4  00 28                                            cmp r0, #0
008b47a6  10 d0                                            beq #0x8b47ca
008b47a8  20 1c                                            adds r0, r4, #0
008b47aa  21 1c                                            adds r1, r4, #0
008b47ac  0c 30                                            adds r0, #0xc
008b47ae  10 31                                            adds r1, #0x10
008b47b0  ff f7 a0 fe                                      bl #0x8b44f4
008b47b4  ab 59                                            ldr r3, [r5, r6]
008b47b6  43 9a                                            ldr r2, [sp, #0x10c]
008b47b8  20 1c                                            adds r0, r4, #0
008b47ba  1b 68                                            ldr r3, [r3]
008b47bc  9a 42                                            cmp r2, r3
008b47be  0c d1                                            bne #0x8b47da
008b47c0  44 b0                                            add sp, #0x110
008b47c2  70 bd                                            pop {r4, r5, r6, pc}
008b47c4  ee f7 7c fe                                      bl #0x8a34c0
008b47c8  e4 e7                                            b #0x8b4794
008b47ca  08 4a                                            ldr r2, [pc, #0x20]
008b47cc  02 98                                            ldr r0, [sp, #8]
008b47ce  01 99                                            ldr r1, [sp, #4]
008b47d0  7a 44                                            add r2, pc
008b47d2  ef f7 fd ff                                      bl #0x8a47d0
008b47d6  62 69                                            ldr r2, [r4, #0x14]
008b47d8  e6 e7                                            b #0x8b47a8
008b47da  59 f6 9a e5                                      blx #0x30e310
008b47de  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008b47e0  20 03 0e 00 ac 40 00 00 68 22 00 00 24 15 06 00  .byte 0x20, 0x03, 0x0e, 0x00, 0xac, 0x40, 0x00, 0x00, 0x68, 0x22, 0x00, 0x00, 0x24, 0x15, 0x06, 0x00

; FUNCTION 0x008b47f0, declared_size=132, range_size=132, mode=thumb
; class-group: std::moneypunct_byname<wchar_t, false>
; alias: _ZNSt17moneypunct_bynameIwLb0EEC2EPKcj
; demangled: std::moneypunct_byname<wchar_t, false>::moneypunct_byname(char const*, unsigned int)
; decoder-mode: thumb
008b47f0  70 b5                                            push {r4, r5, r6, lr}
008b47f2  1c 4d                                            ldr r5, [pc, #0x70]
008b47f4  1c 4e                                            ldr r6, [pc, #0x70]
008b47f6  c4 b0                                            sub sp, #0x110
008b47f8  7d 44                                            add r5, pc
008b47fa  ab 59                                            ldr r3, [r5, r6]
008b47fc  01 91                                            str r1, [sp, #4]
008b47fe  11 1c                                            adds r1, r2, #0
008b4800  1b 68                                            ldr r3, [r3]
008b4802  04 1c                                            adds r4, r0, #0
008b4804  43 93                                            str r3, [sp, #0x10c]
008b4806  04 f0 1d ff                                      bl #0x8b9644
008b480a  18 4b                                            ldr r3, [pc, #0x60]
008b480c  eb 58                                            ldr r3, [r5, r3]
008b480e  08 33                                            adds r3, #8
008b4810  23 60                                            str r3, [r4]
008b4812  01 9b                                            ldr r3, [sp, #4]
008b4814  00 2b                                            cmp r3, #0
008b4816  17 d0                                            beq #0x8b4848
008b4818  00 22                                            movs r2, #0
008b481a  01 a8                                            add r0, sp, #4
008b481c  03 a9                                            add r1, sp, #0xc
008b481e  02 ab                                            add r3, sp, #8
008b4820  ff f7 86 fc                                      bl #0x8b4130
008b4824  02 1c                                            adds r2, r0, #0
008b4826  60 61                                            str r0, [r4, #0x14]
008b4828  00 28                                            cmp r0, #0
008b482a  10 d0                                            beq #0x8b484e
008b482c  20 1c                                            adds r0, r4, #0
008b482e  21 1c                                            adds r1, r4, #0
008b4830  0c 30                                            adds r0, #0xc
008b4832  10 31                                            adds r1, #0x10
008b4834  ff f7 5e fe                                      bl #0x8b44f4
008b4838  ab 59                                            ldr r3, [r5, r6]
008b483a  43 9a                                            ldr r2, [sp, #0x10c]
008b483c  20 1c                                            adds r0, r4, #0
008b483e  1b 68                                            ldr r3, [r3]
008b4840  9a 42                                            cmp r2, r3
008b4842  0c d1                                            bne #0x8b485e
008b4844  44 b0                                            add sp, #0x110
008b4846  70 bd                                            pop {r4, r5, r6, pc}
008b4848  ee f7 3a fe                                      bl #0x8a34c0
008b484c  e4 e7                                            b #0x8b4818
008b484e  08 4a                                            ldr r2, [pc, #0x20]
008b4850  02 98                                            ldr r0, [sp, #8]
008b4852  01 99                                            ldr r1, [sp, #4]
008b4854  7a 44                                            add r2, pc
008b4856  ef f7 bb ff                                      bl #0x8a47d0
008b485a  62 69                                            ldr r2, [r4, #0x14]
008b485c  e6 e7                                            b #0x8b482c
008b485e  59 f6 58 e5                                      blx #0x30e310
008b4862  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008b4864  9c 02 0e 00 ac 40 00 00 68 22 00 00 a0 14 06 00  .byte 0x9c, 0x02, 0x0e, 0x00, 0xac, 0x40, 0x00, 0x00, 0x68, 0x22, 0x00, 0x00, 0xa0, 0x14, 0x06, 0x00

; FUNCTION 0x008b5fd8, declared_size=32, range_size=32, mode=thumb
; class-group: std::moneypunct_byname<wchar_t, false>
; alias: _ZNKSt17moneypunct_bynameIwLb0EE16do_negative_signEv
; demangled: std::moneypunct_byname<wchar_t, false>::do_negative_sign() const
; decoder-mode: thumb
008b5fd8  10 b5                                            push {r4, lr}
008b5fda  92 b0                                            sub sp, #0x48
008b5fdc  04 1c                                            adds r4, r0, #0
008b5fde  10 22                                            movs r2, #0x10
008b5fe0  48 69                                            ldr r0, [r1, #0x14]
008b5fe2  01 a9                                            add r1, sp, #4
008b5fe4  00 f0 b0 fd                                      bl #0x8b6b48
008b5fe8  11 aa                                            add r2, sp, #0x44
008b5fea  01 1c                                            adds r1, r0, #0
008b5fec  20 1c                                            adds r0, r4, #0
008b5fee  ff f7 e3 ff                                      bl #0x8b5fb8
008b5ff2  12 b0                                            add sp, #0x48
008b5ff4  20 1c                                            adds r0, r4, #0
008b5ff6  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b6018, declared_size=32, range_size=32, mode=thumb
; class-group: std::moneypunct_byname<wchar_t, false>
; alias: _ZNKSt17moneypunct_bynameIwLb0EE16do_positive_signEv
; demangled: std::moneypunct_byname<wchar_t, false>::do_positive_sign() const
; decoder-mode: thumb
008b6018  10 b5                                            push {r4, lr}
008b601a  92 b0                                            sub sp, #0x48
008b601c  04 1c                                            adds r4, r0, #0
008b601e  10 22                                            movs r2, #0x10
008b6020  48 69                                            ldr r0, [r1, #0x14]
008b6022  01 a9                                            add r1, sp, #4
008b6024  00 f0 8a fd                                      bl #0x8b6b3c
008b6028  11 aa                                            add r2, sp, #0x44
008b602a  01 1c                                            adds r1, r0, #0
008b602c  20 1c                                            adds r0, r4, #0
008b602e  ff f7 c3 ff                                      bl #0x8b5fb8
008b6032  12 b0                                            add sp, #0x48
008b6034  20 1c                                            adds r0, r4, #0
008b6036  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b6058, declared_size=32, range_size=32, mode=thumb
; class-group: std::moneypunct_byname<wchar_t, false>
; alias: _ZNKSt17moneypunct_bynameIwLb0EE14do_curr_symbolEv
; demangled: std::moneypunct_byname<wchar_t, false>::do_curr_symbol() const
; decoder-mode: thumb
008b6058  10 b5                                            push {r4, lr}
008b605a  92 b0                                            sub sp, #0x48
008b605c  04 1c                                            adds r4, r0, #0
008b605e  10 22                                            movs r2, #0x10
008b6060  48 69                                            ldr r0, [r1, #0x14]
008b6062  01 a9                                            add r1, sp, #4
008b6064  00 f0 60 fd                                      bl #0x8b6b28
008b6068  11 aa                                            add r2, sp, #0x44
008b606a  01 1c                                            adds r1, r0, #0
008b606c  20 1c                                            adds r0, r4, #0
008b606e  ff f7 a3 ff                                      bl #0x8b5fb8
008b6072  12 b0                                            add sp, #0x48
008b6074  20 1c                                            adds r0, r4, #0
008b6076  10 bd                                            pop {r4, pc}

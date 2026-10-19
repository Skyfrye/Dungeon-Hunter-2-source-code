; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008a6e28, declared_size=96, range_size=96, mode=thumb
; class-group: std::ostreambuf_iterator<char, std::char_traits<char> > std::priv
; alias: _ZNSt4priv8__fill_nISt19ostreambuf_iteratorIcSt11char_traitsIcEEicEET_S5_T0_RKT1_
; demangled: std::ostreambuf_iterator<char, std::char_traits<char> > std::priv::__fill_n<std::ostreambuf_iterator<char, std::char_traits<char> >, int, char>(std::ostreambuf_iterator<char, std::char_traits<char> >, int, char const&)
; decoder-mode: thumb
008a6e28  f0 b5                                            push {r4, r5, r6, r7, lr}
008a6e2a  47 46                                            mov r7, r8
008a6e2c  80 b4                                            push {r7}
008a6e2e  82 b0                                            sub sp, #8
008a6e30  80 46                                            mov r8, r0
008a6e32  00 91                                            str r1, [sp]
008a6e34  68 46                                            mov r0, sp
008a6e36  01 92                                            str r2, [sp, #4]
008a6e38  0d 1c                                            adds r5, r1, #0
008a6e3a  1c 1c                                            adds r4, r3, #0
008a6e3c  08 9f                                            ldr r7, [sp, #0x20]
008a6e3e  06 79                                            ldrb r6, [r0, #4]
008a6e40  00 2b                                            cmp r3, #0
008a6e42  06 dc                                            bgt #0x8a6e52
008a6e44  18 e0                                            b #0x8a6e78
008a6e46  19 70                                            strb r1, [r3]
008a6e48  01 33                                            adds r3, #1
008a6e4a  6b 61                                            str r3, [r5, #0x14]
008a6e4c  01 3c                                            subs r4, #1
008a6e4e  00 2c                                            cmp r4, #0
008a6e50  12 d0                                            beq #0x8a6e78
008a6e52  39 78                                            ldrb r1, [r7]
008a6e54  00 2e                                            cmp r6, #0
008a6e56  f9 d0                                            beq #0x8a6e4c
008a6e58  6b 69                                            ldr r3, [r5, #0x14]
008a6e5a  aa 69                                            ldr r2, [r5, #0x18]
008a6e5c  93 42                                            cmp r3, r2
008a6e5e  f2 d3                                            blo #0x8a6e46
008a6e60  2b 68                                            ldr r3, [r5]
008a6e62  28 1c                                            adds r0, r5, #0
008a6e64  01 3c                                            subs r4, #1
008a6e66  5b 6b                                            ldr r3, [r3, #0x34]
008a6e68  98 47                                            blx r3
008a6e6a  01 30                                            adds r0, #1
008a6e6c  43 1e                                            subs r3, r0, #1
008a6e6e  98 41                                            sbcs r0, r3
008a6e70  40 42                                            rsbs r0, r0, #0
008a6e72  06 40                                            ands r6, r0
008a6e74  00 2c                                            cmp r4, #0
008a6e76  ec d1                                            bne #0x8a6e52
008a6e78  43 46                                            mov r3, r8
008a6e7a  02 b0                                            add sp, #8
008a6e7c  40 46                                            mov r0, r8
008a6e7e  1d 60                                            str r5, [r3]
008a6e80  1e 71                                            strb r6, [r3, #4]
008a6e82  04 bc                                            pop {r2}
008a6e84  90 46                                            mov r8, r2
008a6e86  f0 bd                                            pop {r4, r5, r6, r7, pc}

; FUNCTION 0x008a8634, declared_size=644, range_size=644, mode=thumb
; class-group: std::ostreambuf_iterator<char, std::char_traits<char> > std::priv
; alias: _ZNSt4priv13__do_put_boolIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEEET0_S5_RSt8ios_baseT_b
; demangled: std::ostreambuf_iterator<char, std::char_traits<char> > std::priv::__do_put_bool<char, std::ostreambuf_iterator<char, std::char_traits<char> > >(std::ostreambuf_iterator<char, std::char_traits<char> >, std::ios_base&, char, bool)
; decoder-mode: thumb
008a8634  f0 b5                                            push {r4, r5, r6, r7, lr}
008a8636  5f 46                                            mov r7, fp
008a8638  56 46                                            mov r6, sl
008a863a  4d 46                                            mov r5, sb
008a863c  44 46                                            mov r4, r8
008a863e  f0 b4                                            push {r4, r5, r6, r7}
008a8640  93 b0                                            sub sp, #0x4c
008a8642  00 90                                            str r0, [sp]
008a8644  99 4c                                            ldr r4, [pc, #0x264]
008a8646  04 a8                                            add r0, sp, #0x10
008a8648  42 60                                            str r2, [r0, #4]
008a864a  04 91                                            str r1, [sp, #0x10]
008a864c  1d 1c                                            adds r5, r3, #0
008a864e  1c ab                                            add r3, sp, #0x70
008a8650  1b 78                                            ldrb r3, [r3]
008a8652  97 49                                            ldr r1, [pc, #0x25c]
008a8654  a2 46                                            mov sl, r4
008a8656  fa 44                                            add sl, pc
008a8658  52 46                                            mov r2, sl
008a865a  03 93                                            str r3, [sp, #0xc]
008a865c  1d ab                                            add r3, sp, #0x74
008a865e  1f 78                                            ldrb r7, [r3]
008a8660  53 58                                            ldr r3, [r2, r1]
008a8662  0a ae                                            add r6, sp, #0x28
008a8664  02 91                                            str r1, [sp, #8]
008a8666  1b 68                                            ldr r3, [r3]
008a8668  29 1c                                            adds r1, r5, #0
008a866a  20 31                                            adds r1, #0x20
008a866c  83 46                                            mov fp, r0
008a866e  30 1c                                            adds r0, r6, #0
008a8670  11 93                                            str r3, [sp, #0x44]
008a8672  fa f7 75 ff                                      bl #0x8a3560
008a8676  8f 4b                                            ldr r3, [pc, #0x23c]
008a8678  54 46                                            mov r4, sl
008a867a  30 1c                                            adds r0, r6, #0
008a867c  e1 58                                            ldr r1, [r4, r3]
008a867e  fa f7 97 ff                                      bl #0x8a35b0
008a8682  04 1c                                            adds r4, r0, #0
008a8684  30 1c                                            adds r0, r6, #0
008a8686  fa f7 35 ff                                      bl #0x8a34f4
008a868a  00 2f                                            cmp r7, #0
008a868c  00 d1                                            bne #0x8a8690
008a868e  80 e0                                            b #0x8a8792
008a8690  23 68                                            ldr r3, [r4]
008a8692  0b ae                                            add r6, sp, #0x2c
008a8694  30 1c                                            adds r0, r6, #0
008a8696  5b 69                                            ldr r3, [r3, #0x14]
008a8698  21 1c                                            adds r1, r4, #0
008a869a  98 47                                            blx r3
008a869c  00 23                                            movs r3, #0
008a869e  ec 69                                            ldr r4, [r5, #0x1c]
008a86a0  eb 61                                            str r3, [r5, #0x1c]
008a86a2  70 69                                            ldr r0, [r6, #0x14]
008a86a4  33 69                                            ldr r3, [r6, #0x10]
008a86a6  81 46                                            mov sb, r0
008a86a8  19 1a                                            subs r1, r3, r0
008a86aa  88 46                                            mov r8, r1
008a86ac  44 45                                            cmp r4, r8
008a86ae  00 d8                                            bhi #0x8a86b2
008a86b0  76 e0                                            b #0x8a87a0
008a86b2  6b 68                                            ldr r3, [r5, #4]
008a86b4  07 22                                            movs r2, #7
008a86b6  08 1c                                            adds r0, r1, #0
008a86b8  13 40                                            ands r3, r2
008a86ba  64 1a                                            subs r4, r4, r1
008a86bc  01 2b                                            cmp r3, #1
008a86be  00 d1                                            bne #0x8a86c2
008a86c0  98 e0                                            b #0x8a87f4
008a86c2  5a 46                                            mov r2, fp
008a86c4  04 9d                                            ldr r5, [sp, #0x10]
008a86c6  17 79                                            ldrb r7, [r2, #4]
008a86c8  00 2c                                            cmp r4, #0
008a86ca  1c dd                                            ble #0x8a8706
008a86cc  03 9b                                            ldr r3, [sp, #0xc]
008a86ce  98 46                                            mov r8, r3
008a86d0  06 e0                                            b #0x8a86e0
008a86d2  40 46                                            mov r0, r8
008a86d4  18 70                                            strb r0, [r3]
008a86d6  01 33                                            adds r3, #1
008a86d8  6b 61                                            str r3, [r5, #0x14]
008a86da  01 3c                                            subs r4, #1
008a86dc  00 2c                                            cmp r4, #0
008a86de  12 d0                                            beq #0x8a8706
008a86e0  00 2f                                            cmp r7, #0
008a86e2  fa d0                                            beq #0x8a86da
008a86e4  6b 69                                            ldr r3, [r5, #0x14]
008a86e6  aa 69                                            ldr r2, [r5, #0x18]
008a86e8  93 42                                            cmp r3, r2
008a86ea  f2 d3                                            blo #0x8a86d2
008a86ec  2b 68                                            ldr r3, [r5]
008a86ee  28 1c                                            adds r0, r5, #0
008a86f0  41 46                                            mov r1, r8
008a86f2  5b 6b                                            ldr r3, [r3, #0x34]
008a86f4  98 47                                            blx r3
008a86f6  01 30                                            adds r0, #1
008a86f8  43 1e                                            subs r3, r0, #1
008a86fa  98 41                                            sbcs r0, r3
008a86fc  40 42                                            rsbs r0, r0, #0
008a86fe  01 3c                                            subs r4, #1
008a8700  07 40                                            ands r7, r0
008a8702  00 2c                                            cmp r4, #0
008a8704  ec d1                                            bne #0x8a86e0
008a8706  06 ab                                            add r3, sp, #0x18
008a8708  1f 71                                            strb r7, [r3, #4]
008a870a  06 95                                            str r5, [sp, #0x18]
008a870c  04 95                                            str r5, [sp, #0x10]
008a870e  1b 79                                            ldrb r3, [r3, #4]
008a8710  72 69                                            ldr r2, [r6, #0x14]
008a8712  59 46                                            mov r1, fp
008a8714  0b 71                                            strb r3, [r1, #4]
008a8716  90 46                                            mov r8, r2
008a8718  32 69                                            ldr r2, [r6, #0x10]
008a871a  0b 79                                            ldrb r3, [r1, #4]
008a871c  44 46                                            mov r4, r8
008a871e  14 1b                                            subs r4, r2, r4
008a8720  a1 46                                            mov sb, r4
008a8722  1f 1c                                            adds r7, r3, #0
008a8724  00 2c                                            cmp r4, #0
008a8726  1e dd                                            ble #0x8a8766
008a8728  33 1c                                            adds r3, r6, #0
008a872a  00 24                                            movs r4, #0
008a872c  46 46                                            mov r6, r8
008a872e  98 46                                            mov r8, r3
008a8730  05 e0                                            b #0x8a873e
008a8732  19 70                                            strb r1, [r3]
008a8734  01 33                                            adds r3, #1
008a8736  6b 61                                            str r3, [r5, #0x14]
008a8738  01 34                                            adds r4, #1
008a873a  4c 45                                            cmp r4, sb
008a873c  12 d0                                            beq #0x8a8764
008a873e  31 5d                                            ldrb r1, [r6, r4]
008a8740  00 2f                                            cmp r7, #0
008a8742  f9 d0                                            beq #0x8a8738
008a8744  6b 69                                            ldr r3, [r5, #0x14]
008a8746  aa 69                                            ldr r2, [r5, #0x18]
008a8748  93 42                                            cmp r3, r2
008a874a  f2 d3                                            blo #0x8a8732
008a874c  2b 68                                            ldr r3, [r5]
008a874e  28 1c                                            adds r0, r5, #0
008a8750  01 34                                            adds r4, #1
008a8752  5b 6b                                            ldr r3, [r3, #0x34]
008a8754  98 47                                            blx r3
008a8756  01 30                                            adds r0, #1
008a8758  43 1e                                            subs r3, r0, #1
008a875a  98 41                                            sbcs r0, r3
008a875c  40 42                                            rsbs r0, r0, #0
008a875e  07 40                                            ands r7, r0
008a8760  4c 45                                            cmp r4, sb
008a8762  ec d1                                            bne #0x8a873e
008a8764  46 46                                            mov r6, r8
008a8766  00 98                                            ldr r0, [sp]
008a8768  05 60                                            str r5, [r0]
008a876a  07 71                                            strb r7, [r0, #4]
008a876c  30 1c                                            adds r0, r6, #0
008a876e  6b f6 1e e1                                      blx #0x3139ac
008a8772  02 9a                                            ldr r2, [sp, #8]
008a8774  51 46                                            mov r1, sl
008a8776  00 98                                            ldr r0, [sp]
008a8778  8b 58                                            ldr r3, [r1, r2]
008a877a  11 9a                                            ldr r2, [sp, #0x44]
008a877c  1b 68                                            ldr r3, [r3]
008a877e  9a 42                                            cmp r2, r3
008a8780  00 d0                                            beq #0x8a8784
008a8782  90 e0                                            b #0x8a88a6
008a8784  13 b0                                            add sp, #0x4c
008a8786  3c bc                                            pop {r2, r3, r4, r5}
008a8788  90 46                                            mov r8, r2
008a878a  99 46                                            mov sb, r3
008a878c  a2 46                                            mov sl, r4
008a878e  ab 46                                            mov fp, r5
008a8790  f0 bd                                            pop {r4, r5, r6, r7, pc}
008a8792  23 68                                            ldr r3, [r4]
008a8794  0b ae                                            add r6, sp, #0x2c
008a8796  30 1c                                            adds r0, r6, #0
008a8798  9b 69                                            ldr r3, [r3, #0x18]
008a879a  21 1c                                            adds r1, r4, #0
008a879c  98 47                                            blx r3
008a879e  7d e7                                            b #0x8a869c
008a87a0  5a 46                                            mov r2, fp
008a87a2  13 79                                            ldrb r3, [r2, #4]
008a87a4  04 9d                                            ldr r5, [sp, #0x10]
008a87a6  1f 1c                                            adds r7, r3, #0
008a87a8  00 29                                            cmp r1, #0
008a87aa  1f dd                                            ble #0x8a87ec
008a87ac  33 1c                                            adds r3, r6, #0
008a87ae  00 24                                            movs r4, #0
008a87b0  0e 1c                                            adds r6, r1, #0
008a87b2  98 46                                            mov r8, r3
008a87b4  05 e0                                            b #0x8a87c2
008a87b6  19 70                                            strb r1, [r3]
008a87b8  01 33                                            adds r3, #1
008a87ba  6b 61                                            str r3, [r5, #0x14]
008a87bc  01 34                                            adds r4, #1
008a87be  a6 42                                            cmp r6, r4
008a87c0  13 d0                                            beq #0x8a87ea
008a87c2  4b 46                                            mov r3, sb
008a87c4  19 5d                                            ldrb r1, [r3, r4]
008a87c6  00 2f                                            cmp r7, #0
008a87c8  f8 d0                                            beq #0x8a87bc
008a87ca  6b 69                                            ldr r3, [r5, #0x14]
008a87cc  aa 69                                            ldr r2, [r5, #0x18]
008a87ce  93 42                                            cmp r3, r2
008a87d0  f1 d3                                            blo #0x8a87b6
008a87d2  2b 68                                            ldr r3, [r5]
008a87d4  28 1c                                            adds r0, r5, #0
008a87d6  01 34                                            adds r4, #1
008a87d8  5b 6b                                            ldr r3, [r3, #0x34]
008a87da  98 47                                            blx r3
008a87dc  43 1c                                            adds r3, r0, #1
008a87de  5a 1e                                            subs r2, r3, #1
008a87e0  93 41                                            sbcs r3, r2
008a87e2  5b 42                                            rsbs r3, r3, #0
008a87e4  1f 40                                            ands r7, r3
008a87e6  a6 42                                            cmp r6, r4
008a87e8  eb d1                                            bne #0x8a87c2
008a87ea  46 46                                            mov r6, r8
008a87ec  00 9c                                            ldr r4, [sp]
008a87ee  25 60                                            str r5, [r4]
008a87f0  27 71                                            strb r7, [r4, #4]
008a87f2  bb e7                                            b #0x8a876c
008a87f4  59 46                                            mov r1, fp
008a87f6  0b 79                                            ldrb r3, [r1, #4]
008a87f8  04 9d                                            ldr r5, [sp, #0x10]
008a87fa  01 93                                            str r3, [sp, #4]
008a87fc  00 28                                            cmp r0, #0
008a87fe  24 dd                                            ble #0x8a884a
008a8800  33 1c                                            adds r3, r6, #0
008a8802  00 27                                            movs r7, #0
008a8804  4e 46                                            mov r6, sb
008a8806  a1 46                                            mov sb, r4
008a8808  44 46                                            mov r4, r8
008a880a  98 46                                            mov r8, r3
008a880c  05 e0                                            b #0x8a881a
008a880e  19 70                                            strb r1, [r3]
008a8810  01 33                                            adds r3, #1
008a8812  6b 61                                            str r3, [r5, #0x14]
008a8814  01 37                                            adds r7, #1
008a8816  bc 42                                            cmp r4, r7
008a8818  15 d0                                            beq #0x8a8846
008a881a  01 9a                                            ldr r2, [sp, #4]
008a881c  f1 5d                                            ldrb r1, [r6, r7]
008a881e  00 2a                                            cmp r2, #0
008a8820  f8 d0                                            beq #0x8a8814
008a8822  6b 69                                            ldr r3, [r5, #0x14]
008a8824  aa 69                                            ldr r2, [r5, #0x18]
008a8826  93 42                                            cmp r3, r2
008a8828  f1 d3                                            blo #0x8a880e
008a882a  2b 68                                            ldr r3, [r5]
008a882c  28 1c                                            adds r0, r5, #0
008a882e  01 37                                            adds r7, #1
008a8830  5b 6b                                            ldr r3, [r3, #0x34]
008a8832  98 47                                            blx r3
008a8834  01 30                                            adds r0, #1
008a8836  43 1e                                            subs r3, r0, #1
008a8838  98 41                                            sbcs r0, r3
008a883a  01 9b                                            ldr r3, [sp, #4]
008a883c  40 42                                            rsbs r0, r0, #0
008a883e  03 40                                            ands r3, r0
008a8840  01 93                                            str r3, [sp, #4]
008a8842  bc 42                                            cmp r4, r7
008a8844  e9 d1                                            bne #0x8a881a
008a8846  4c 46                                            mov r4, sb
008a8848  46 46                                            mov r6, r8
008a884a  68 46                                            mov r0, sp
008a884c  08 95                                            str r5, [sp, #0x20]
008a884e  01 1d                                            adds r1, r0, #4
008a8850  08 78                                            ldrb r0, [r1]
008a8852  08 ab                                            add r3, sp, #0x20
008a8854  59 46                                            mov r1, fp
008a8856  18 71                                            strb r0, [r3, #4]
008a8858  04 95                                            str r5, [sp, #0x10]
008a885a  1b 79                                            ldrb r3, [r3, #4]
008a885c  0b 71                                            strb r3, [r1, #4]
008a885e  0f 79                                            ldrb r7, [r1, #4]
008a8860  00 2c                                            cmp r4, #0
008a8862  1c dd                                            ble #0x8a889e
008a8864  03 9a                                            ldr r2, [sp, #0xc]
008a8866  90 46                                            mov r8, r2
008a8868  06 e0                                            b #0x8a8878
008a886a  40 46                                            mov r0, r8
008a886c  18 70                                            strb r0, [r3]
008a886e  01 33                                            adds r3, #1
008a8870  6b 61                                            str r3, [r5, #0x14]
008a8872  01 3c                                            subs r4, #1
008a8874  00 2c                                            cmp r4, #0
008a8876  12 d0                                            beq #0x8a889e
008a8878  00 2f                                            cmp r7, #0
008a887a  fa d0                                            beq #0x8a8872
008a887c  6b 69                                            ldr r3, [r5, #0x14]
008a887e  aa 69                                            ldr r2, [r5, #0x18]
008a8880  93 42                                            cmp r3, r2
008a8882  f2 d3                                            blo #0x8a886a
008a8884  2b 68                                            ldr r3, [r5]
008a8886  28 1c                                            adds r0, r5, #0
008a8888  41 46                                            mov r1, r8
008a888a  5b 6b                                            ldr r3, [r3, #0x34]
008a888c  98 47                                            blx r3
008a888e  43 1c                                            adds r3, r0, #1
008a8890  5a 1e                                            subs r2, r3, #1
008a8892  93 41                                            sbcs r3, r2
008a8894  5b 42                                            rsbs r3, r3, #0
008a8896  01 3c                                            subs r4, #1
008a8898  1f 40                                            ands r7, r3
008a889a  00 2c                                            cmp r4, #0
008a889c  ec d1                                            bne #0x8a8878
008a889e  00 99                                            ldr r1, [sp]
008a88a0  0d 60                                            str r5, [r1]
008a88a2  0f 71                                            strb r7, [r1, #4]
008a88a4  62 e7                                            b #0x8a876c
008a88a6  65 f6 34 e5                                      blx #0x30e310
008a88aa  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008a88ac  3e c4 0e 00 ac 40 00 00 e0 1f 00 00              .byte 0x3e, 0xc4, 0x0e, 0x00, 0xac, 0x40, 0x00, 0x00, 0xe0, 0x1f, 0x00, 0x00

; FUNCTION 0x008a88fc, declared_size=744, range_size=744, mode=thumb
; class-group: std::ostreambuf_iterator<char, std::char_traits<char> > std::priv
; alias: _ZNSt4priv13__put_integerISt19ostreambuf_iteratorIcSt11char_traitsIcEEEET_PcS6_S5_RSt8ios_baseic
; demangled: std::ostreambuf_iterator<char, std::char_traits<char> > std::priv::__put_integer<std::ostreambuf_iterator<char, std::char_traits<char> > >(char*, char*, std::ostreambuf_iterator<char, std::char_traits<char> >, std::ios_base&, int, char)
; decoder-mode: thumb
008a88fc  82 b0                                            sub sp, #8
008a88fe  f0 b5                                            push {r4, r5, r6, r7, lr}
008a8900  5f 46                                            mov r7, fp
008a8902  56 46                                            mov r6, sl
008a8904  4d 46                                            mov r5, sb
008a8906  44 46                                            mov r4, r8
008a8908  f0 b4                                            push {r4, r5, r6, r7}
008a890a  b2 4c                                            ldr r4, [pc, #0x2c8]
008a890c  89 46                                            mov sb, r1
008a890e  b2 49                                            ldr r1, [pc, #0x2c8]
008a8910  af b0                                            sub sp, #0xbc
008a8912  7c 44                                            add r4, pc
008a8914  39 93                                            str r3, [sp, #0xe4]
008a8916  3d ab                                            add r3, sp, #0xf4
008a8918  1e 78                                            ldrb r6, [r3]
008a891a  63 58                                            ldr r3, [r4, r1]
008a891c  05 94                                            str r4, [sp, #0x14]
008a891e  07 90                                            str r0, [sp, #0x1c]
008a8920  1b 68                                            ldr r3, [r3]
008a8922  08 91                                            str r1, [sp, #0x20]
008a8924  3b 98                                            ldr r0, [sp, #0xec]
008a8926  2d 93                                            str r3, [sp, #0xb4]
008a8928  39 ab                                            add r3, sp, #0xe4
008a892a  1b 79                                            ldrb r3, [r3, #4]
008a892c  15 af                                            add r7, sp, #0x54
008a892e  01 1c                                            adds r1, r0, #0
008a8930  09 93                                            str r3, [sp, #0x24]
008a8932  4b 46                                            mov r3, sb
008a8934  d3 1a                                            subs r3, r2, r3
008a8936  20 31                                            adds r1, #0x20
008a8938  82 46                                            mov sl, r0
008a893a  38 1c                                            adds r0, r7, #0
008a893c  9b 46                                            mov fp, r3
008a893e  39 9d                                            ldr r5, [sp, #0xe4]
008a8940  fa f7 0e fe                                      bl #0x8a3560
008a8944  a5 4b                                            ldr r3, [pc, #0x294]
008a8946  38 1c                                            adds r0, r7, #0
008a8948  e1 58                                            ldr r1, [r4, r3]
008a894a  fa f7 31 fe                                      bl #0x8a35b0
008a894e  04 1c                                            adds r4, r0, #0
008a8950  38 1c                                            adds r0, r7, #0
008a8952  fa f7 cf fd                                      bl #0x8a34f4
008a8956  23 68                                            ldr r3, [r4]
008a8958  27 af                                            add r7, sp, #0x9c
008a895a  38 1c                                            adds r0, r7, #0
008a895c  1b 69                                            ldr r3, [r3, #0x10]
008a895e  21 1c                                            adds r1, r4, #0
008a8960  98 47                                            blx r3
008a8962  7a 69                                            ldr r2, [r7, #0x14]
008a8964  3b 69                                            ldr r3, [r7, #0x10]
008a8966  9a 42                                            cmp r2, r3
008a8968  22 d0                                            beq #0x8a89b0
008a896a  3c 98                                            ldr r0, [sp, #0xf0]
008a896c  80 05                                            lsls r0, r0, #0x16
008a896e  00 d5                                            bpl #0x8a8972
008a8970  af e0                                            b #0x8a8ad2
008a8972  00 22                                            movs r2, #0
008a8974  06 92                                            str r2, [sp, #0x18]
008a8976  17 ab                                            add r3, sp, #0x5c
008a8978  58 46                                            mov r0, fp
008a897a  98 46                                            mov r8, r3
008a897c  00 28                                            cmp r0, #0
008a897e  04 d0                                            beq #0x8a898a
008a8980  18 1c                                            adds r0, r3, #0
008a8982  49 46                                            mov r1, sb
008a8984  5a 46                                            mov r2, fp
008a8986  65 f6 d8 e2                                      blx #0x30df38
008a898a  23 68                                            ldr r3, [r4]
008a898c  20 1c                                            adds r0, r4, #0
008a898e  c1 46                                            mov sb, r8
008a8990  db 68                                            ldr r3, [r3, #0xc]
008a8992  98 47                                            blx r3
008a8994  2b 22                                            movs r2, #0x2b
008a8996  06 9c                                            ldr r4, [sp, #0x18]
008a8998  00 92                                            str r2, [sp]
008a899a  41 46                                            mov r1, r8
008a899c  2d 22                                            movs r2, #0x2d
008a899e  03 1c                                            adds r3, r0, #0
008a89a0  59 44                                            add r1, fp
008a89a2  01 92                                            str r2, [sp, #4]
008a89a4  40 46                                            mov r0, r8
008a89a6  3a 1c                                            adds r2, r7, #0
008a89a8  02 94                                            str r4, [sp, #8]
008a89aa  11 f0 5f f8                                      bl #0x8b9a6c
008a89ae  83 46                                            mov fp, r0
008a89b0  50 46                                            mov r0, sl
008a89b2  00 23                                            movs r3, #0
008a89b4  c4 69                                            ldr r4, [r0, #0x1c]
008a89b6  09 aa                                            add r2, sp, #0x24
008a89b8  c3 61                                            str r3, [r0, #0x1c]
008a89ba  12 78                                            ldrb r2, [r2]
008a89bc  69 46                                            mov r1, sp
008a89be  5b 23                                            movs r3, #0x5b
008a89c0  4c 31                                            adds r1, #0x4c
008a89c2  6b 44                                            add r3, sp, r3
008a89c4  06 91                                            str r1, [sp, #0x18]
008a89c6  0a 71                                            strb r2, [r1, #4]
008a89c8  13 95                                            str r5, [sp, #0x4c]
008a89ca  9a 46                                            mov sl, r3
008a89cc  1e 70                                            strb r6, [r3]
008a89ce  a3 45                                            cmp fp, r4
008a89d0  00 db                                            blt #0x8a89d4
008a89d2  da e0                                            b #0x8a8b8a
008a89d4  3c 99                                            ldr r1, [sp, #0xf0]
008a89d6  07 23                                            movs r3, #7
008a89d8  58 46                                            mov r0, fp
008a89da  0b 40                                            ands r3, r1
008a89dc  24 1a                                            subs r4, r4, r0
008a89de  01 2b                                            cmp r3, #1
008a89e0  00 d1                                            bne #0x8a89e4
008a89e2  dc e0                                            b #0x8a8b9e
008a89e4  04 3b                                            subs r3, #4
008a89e6  58 46                                            mov r0, fp
008a89e8  5a 42                                            rsbs r2, r3, #0
008a89ea  5a 41                                            adcs r2, r3
008a89ec  00 28                                            cmp r0, #0
008a89ee  00 d0                                            beq #0x8a89f2
008a89f0  7d e0                                            b #0x8a8aee
008a89f2  59 46                                            mov r1, fp
008a89f4  01 29                                            cmp r1, #1
008a89f6  00 dd                                            ble #0x8a89fa
008a89f8  9f e0                                            b #0x8a8b3a
008a89fa  09 99                                            ldr r1, [sp, #0x24]
008a89fc  88 46                                            mov r8, r1
008a89fe  00 2c                                            cmp r4, #0
008a8a00  21 dd                                            ble #0x8a8a46
008a8a02  3b 1c                                            adds r3, r7, #0
008a8a04  31 1c                                            adds r1, r6, #0
008a8a06  47 46                                            mov r7, r8
008a8a08  56 46                                            mov r6, sl
008a8a0a  98 46                                            mov r8, r3
008a8a0c  06 e0                                            b #0x8a8a1c
008a8a0e  19 70                                            strb r1, [r3]
008a8a10  01 33                                            adds r3, #1
008a8a12  6b 61                                            str r3, [r5, #0x14]
008a8a14  01 3c                                            subs r4, #1
008a8a16  00 2c                                            cmp r4, #0
008a8a18  12 d0                                            beq #0x8a8a40
008a8a1a  31 78                                            ldrb r1, [r6]
008a8a1c  00 2f                                            cmp r7, #0
008a8a1e  f9 d0                                            beq #0x8a8a14
008a8a20  6b 69                                            ldr r3, [r5, #0x14]
008a8a22  aa 69                                            ldr r2, [r5, #0x18]
008a8a24  93 42                                            cmp r3, r2
008a8a26  f2 d3                                            blo #0x8a8a0e
008a8a28  2b 68                                            ldr r3, [r5]
008a8a2a  28 1c                                            adds r0, r5, #0
008a8a2c  01 3c                                            subs r4, #1
008a8a2e  5b 6b                                            ldr r3, [r3, #0x34]
008a8a30  98 47                                            blx r3
008a8a32  01 30                                            adds r0, #1
008a8a34  43 1e                                            subs r3, r0, #1
008a8a36  98 41                                            sbcs r0, r3
008a8a38  40 42                                            rsbs r0, r0, #0
008a8a3a  07 40                                            ands r7, r0
008a8a3c  00 2c                                            cmp r4, #0
008a8a3e  ec d1                                            bne #0x8a8a1a
008a8a40  43 46                                            mov r3, r8
008a8a42  b8 46                                            mov r8, r7
008a8a44  1f 1c                                            adds r7, r3, #0
008a8a46  0b ab                                            add r3, sp, #0x2c
008a8a48  42 46                                            mov r2, r8
008a8a4a  1a 71                                            strb r2, [r3, #4]
008a8a4c  13 95                                            str r5, [sp, #0x4c]
008a8a4e  1b 79                                            ldrb r3, [r3, #4]
008a8a50  06 9c                                            ldr r4, [sp, #0x18]
008a8a52  0b 95                                            str r5, [sp, #0x2c]
008a8a54  58 46                                            mov r0, fp
008a8a56  23 71                                            strb r3, [r4, #4]
008a8a58  23 79                                            ldrb r3, [r4, #4]
008a8a5a  1e 1c                                            adds r6, r3, #0
008a8a5c  00 28                                            cmp r0, #0
008a8a5e  80 46                                            mov r8, r0
008a8a60  1e dd                                            ble #0x8a8aa0
008a8a62  3b 1c                                            adds r3, r7, #0
008a8a64  00 24                                            movs r4, #0
008a8a66  4f 46                                            mov r7, sb
008a8a68  99 46                                            mov sb, r3
008a8a6a  05 e0                                            b #0x8a8a78
008a8a6c  19 70                                            strb r1, [r3]
008a8a6e  01 33                                            adds r3, #1
008a8a70  6b 61                                            str r3, [r5, #0x14]
008a8a72  01 34                                            adds r4, #1
008a8a74  44 45                                            cmp r4, r8
008a8a76  12 d0                                            beq #0x8a8a9e
008a8a78  39 5d                                            ldrb r1, [r7, r4]
008a8a7a  00 2e                                            cmp r6, #0
008a8a7c  f9 d0                                            beq #0x8a8a72
008a8a7e  6b 69                                            ldr r3, [r5, #0x14]
008a8a80  aa 69                                            ldr r2, [r5, #0x18]
008a8a82  93 42                                            cmp r3, r2
008a8a84  f2 d3                                            blo #0x8a8a6c
008a8a86  2b 68                                            ldr r3, [r5]
008a8a88  28 1c                                            adds r0, r5, #0
008a8a8a  01 34                                            adds r4, #1
008a8a8c  5b 6b                                            ldr r3, [r3, #0x34]
008a8a8e  98 47                                            blx r3
008a8a90  01 30                                            adds r0, #1
008a8a92  43 1e                                            subs r3, r0, #1
008a8a94  98 41                                            sbcs r0, r3
008a8a96  40 42                                            rsbs r0, r0, #0
008a8a98  06 40                                            ands r6, r0
008a8a9a  44 45                                            cmp r4, r8
008a8a9c  ec d1                                            bne #0x8a8a78
008a8a9e  4f 46                                            mov r7, sb
008a8aa0  07 99                                            ldr r1, [sp, #0x1c]
008a8aa2  0d 60                                            str r5, [r1]
008a8aa4  0e 71                                            strb r6, [r1, #4]
008a8aa6  38 1c                                            adds r0, r7, #0
008a8aa8  6a f6 80 e7                                      blx #0x3139ac
008a8aac  05 9a                                            ldr r2, [sp, #0x14]
008a8aae  08 9c                                            ldr r4, [sp, #0x20]
008a8ab0  07 98                                            ldr r0, [sp, #0x1c]
008a8ab2  13 59                                            ldr r3, [r2, r4]
008a8ab4  2d 9a                                            ldr r2, [sp, #0xb4]
008a8ab6  1b 68                                            ldr r3, [r3]
008a8ab8  9a 42                                            cmp r2, r3
008a8aba  00 d0                                            beq #0x8a8abe
008a8abc  87 e0                                            b #0x8a8bce
008a8abe  2f b0                                            add sp, #0xbc
008a8ac0  3c bc                                            pop {r2, r3, r4, r5}
008a8ac2  90 46                                            mov r8, r2
008a8ac4  99 46                                            mov sb, r3
008a8ac6  a2 46                                            mov sl, r4
008a8ac8  ab 46                                            mov fp, r5
008a8aca  f0 bc                                            pop {r4, r5, r6, r7}
008a8acc  08 bc                                            pop {r3}
008a8ace  02 b0                                            add sp, #8
008a8ad0  18 47                                            bx r3
008a8ad2  3c 99                                            ldr r1, [sp, #0xf0]
008a8ad4  38 23                                            movs r3, #0x38
008a8ad6  0b 40                                            ands r3, r1
008a8ad8  10 3b                                            subs r3, #0x10
008a8ada  10 2b                                            cmp r3, #0x10
008a8adc  00 d9                                            bls #0x8a8ae0
008a8ade  48 e7                                            b #0x8a8972
008a8ae0  3f 4a                                            ldr r2, [pc, #0xfc]
008a8ae2  9b 00                                            lsls r3, r3, #2
008a8ae4  7a 44                                            add r2, pc
008a8ae6  d3 18                                            adds r3, r2, r3
008a8ae8  5b 6c                                            ldr r3, [r3, #0x44]
008a8aea  06 93                                            str r3, [sp, #0x18]
008a8aec  43 e7                                            b #0x8a8976
008a8aee  00 2a                                            cmp r2, #0
008a8af0  00 d1                                            bne #0x8a8af4
008a8af2  7e e7                                            b #0x8a89f2
008a8af4  4b 46                                            mov r3, sb
008a8af6  19 78                                            ldrb r1, [r3]
008a8af8  2b 29                                            cmp r1, #0x2b
008a8afa  02 d0                                            beq #0x8a8b02
008a8afc  2d 29                                            cmp r1, #0x2d
008a8afe  00 d0                                            beq #0x8a8b02
008a8b00  77 e7                                            b #0x8a89f2
008a8b02  06 98                                            ldr r0, [sp, #0x18]
008a8b04  fb f7 d2 ff                                      bl #0x8a4aac
008a8b08  06 9b                                            ldr r3, [sp, #0x18]
008a8b0a  50 46                                            mov r0, sl
008a8b0c  00 90                                            str r0, [sp]
008a8b0e  0f ad                                            add r5, sp, #0x3c
008a8b10  5a 68                                            ldr r2, [r3, #4]
008a8b12  13 99                                            ldr r1, [sp, #0x4c]
008a8b14  23 1c                                            adds r3, r4, #0
008a8b16  28 1c                                            adds r0, r5, #0
008a8b18  fe f7 86 f9                                      bl #0x8a6e28
008a8b1c  0f 9b                                            ldr r3, [sp, #0x3c]
008a8b1e  06 9c                                            ldr r4, [sp, #0x18]
008a8b20  49 46                                            mov r1, sb
008a8b22  13 93                                            str r3, [sp, #0x4c]
008a8b24  2a 79                                            ldrb r2, [r5, #4]
008a8b26  01 31                                            adds r1, #1
008a8b28  22 71                                            strb r2, [r4, #4]
008a8b2a  60 68                                            ldr r0, [r4, #4]
008a8b2c  4a 46                                            mov r2, sb
008a8b2e  5a 44                                            add r2, fp
008a8b30  00 90                                            str r0, [sp]
008a8b32  07 98                                            ldr r0, [sp, #0x1c]
008a8b34  fe f7 92 fa                                      bl #0x8a705c
008a8b38  b5 e7                                            b #0x8a8aa6
008a8b3a  00 2a                                            cmp r2, #0
008a8b3c  00 d1                                            bne #0x8a8b40
008a8b3e  5c e7                                            b #0x8a89fa
008a8b40  3c 9a                                            ldr r2, [sp, #0xf0]
008a8b42  8e 23                                            movs r3, #0x8e
008a8b44  9b 00                                            lsls r3, r3, #2
008a8b46  1a 40                                            ands r2, r3
008a8b48  84 23                                            movs r3, #0x84
008a8b4a  9b 00                                            lsls r3, r3, #2
008a8b4c  9a 42                                            cmp r2, r3
008a8b4e  00 d0                                            beq #0x8a8b52
008a8b50  53 e7                                            b #0x8a89fa
008a8b52  4a 46                                            mov r2, sb
008a8b54  11 78                                            ldrb r1, [r2]
008a8b56  06 98                                            ldr r0, [sp, #0x18]
008a8b58  fb f7 a8 ff                                      bl #0x8a4aac
008a8b5c  4b 46                                            mov r3, sb
008a8b5e  59 78                                            ldrb r1, [r3, #1]
008a8b60  06 98                                            ldr r0, [sp, #0x18]
008a8b62  fb f7 a3 ff                                      bl #0x8a4aac
008a8b66  06 9b                                            ldr r3, [sp, #0x18]
008a8b68  50 46                                            mov r0, sl
008a8b6a  00 90                                            str r0, [sp]
008a8b6c  0d ad                                            add r5, sp, #0x34
008a8b6e  5a 68                                            ldr r2, [r3, #4]
008a8b70  13 99                                            ldr r1, [sp, #0x4c]
008a8b72  23 1c                                            adds r3, r4, #0
008a8b74  28 1c                                            adds r0, r5, #0
008a8b76  fe f7 57 f9                                      bl #0x8a6e28
008a8b7a  0d 9b                                            ldr r3, [sp, #0x34]
008a8b7c  06 9c                                            ldr r4, [sp, #0x18]
008a8b7e  49 46                                            mov r1, sb
008a8b80  13 93                                            str r3, [sp, #0x4c]
008a8b82  2a 79                                            ldrb r2, [r5, #4]
008a8b84  02 31                                            adds r1, #2
008a8b86  22 71                                            strb r2, [r4, #4]
008a8b88  cf e7                                            b #0x8a8b2a
008a8b8a  4b 68                                            ldr r3, [r1, #4]
008a8b8c  4a 46                                            mov r2, sb
008a8b8e  5a 44                                            add r2, fp
008a8b90  00 93                                            str r3, [sp]
008a8b92  07 98                                            ldr r0, [sp, #0x1c]
008a8b94  2b 1c                                            adds r3, r5, #0
008a8b96  49 46                                            mov r1, sb
008a8b98  fe f7 60 fa                                      bl #0x8a705c
008a8b9c  83 e7                                            b #0x8a8aa6
008a8b9e  06 98                                            ldr r0, [sp, #0x18]
008a8ba0  11 ae                                            add r6, sp, #0x44
008a8ba2  4a 46                                            mov r2, sb
008a8ba4  43 68                                            ldr r3, [r0, #4]
008a8ba6  5a 44                                            add r2, fp
008a8ba8  30 1c                                            adds r0, r6, #0
008a8baa  00 93                                            str r3, [sp]
008a8bac  49 46                                            mov r1, sb
008a8bae  2b 1c                                            adds r3, r5, #0
008a8bb0  fe f7 54 fa                                      bl #0x8a705c
008a8bb4  06 9a                                            ldr r2, [sp, #0x18]
008a8bb6  11 99                                            ldr r1, [sp, #0x44]
008a8bb8  07 98                                            ldr r0, [sp, #0x1c]
008a8bba  11 60                                            str r1, [r2]
008a8bbc  33 79                                            ldrb r3, [r6, #4]
008a8bbe  13 71                                            strb r3, [r2, #4]
008a8bc0  53 46                                            mov r3, sl
008a8bc2  00 93                                            str r3, [sp]
008a8bc4  52 68                                            ldr r2, [r2, #4]
008a8bc6  23 1c                                            adds r3, r4, #0
008a8bc8  fe f7 2e f9                                      bl #0x8a6e28
008a8bcc  6b e7                                            b #0x8a8aa6
008a8bce  65 f6 a0 e3                                      blx #0x30e310
008a8bd2  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008a8bd4  82 c1 0e 00 ac 40 00 00 e0 1f 00 00 a0 d0 06 00  .byte 0x82, 0xc1, 0x0e, 0x00, 0xac, 0x40, 0x00, 0x00, 0xe0, 0x1f, 0x00, 0x00, 0xa0, 0xd0, 0x06, 0x00

; FUNCTION 0x008a8be4, declared_size=116, range_size=116, mode=thumb
; class-group: std::ostreambuf_iterator<char, std::char_traits<char> > std::priv
; alias: _ZNSt4priv16__do_put_integerIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEmEET0_S5_RSt8ios_baseT_T1_
; demangled: std::ostreambuf_iterator<char, std::char_traits<char> > std::priv::__do_put_integer<char, std::ostreambuf_iterator<char, std::char_traits<char> >, unsigned long>(std::ostreambuf_iterator<char, std::char_traits<char> >, std::ios_base&, char, unsigned long)
; decoder-mode: thumb
008a8be4  f0 b5                                            push {r4, r5, r6, r7, lr}
008a8be6  57 46                                            mov r7, sl
008a8be8  4e 46                                            mov r6, sb
008a8bea  45 46                                            mov r5, r8
008a8bec  e0 b4                                            push {r5, r6, r7}
008a8bee  8c b0                                            sub sp, #0x30
008a8bf0  1e 1c                                            adds r6, r3, #0
008a8bf2  14 ab                                            add r3, sp, #0x50
008a8bf4  1b 78                                            ldrb r3, [r3]
008a8bf6  16 4c                                            ldr r4, [pc, #0x58]
008a8bf8  77 68                                            ldr r7, [r6, #4]
008a8bfa  9a 46                                            mov sl, r3
008a8bfc  15 4b                                            ldr r3, [pc, #0x54]
008a8bfe  7c 44                                            add r4, pc
008a8c00  04 ad                                            add r5, sp, #0x10
008a8c02  e4 58                                            ldr r4, [r4, r3]
008a8c04  6a 60                                            str r2, [r5, #4]
008a8c06  81 46                                            mov sb, r0
008a8c08  23 68                                            ldr r3, [r4]
008a8c0a  04 91                                            str r1, [sp, #0x10]
008a8c0c  15 9a                                            ldr r2, [sp, #0x54]
008a8c0e  0b 93                                            str r3, [sp, #0x2c]
008a8c10  2a 23                                            movs r3, #0x2a
008a8c12  6b 44                                            add r3, sp, r3
008a8c14  18 1c                                            adds r0, r3, #0
008a8c16  39 1c                                            adds r1, r7, #0
008a8c18  98 46                                            mov r8, r3
008a8c1a  fc f7 b3 f9                                      bl #0x8a4f84
008a8c1e  53 46                                            mov r3, sl
008a8c20  01 96                                            str r6, [sp, #4]
008a8c22  02 97                                            str r7, [sp, #8]
008a8c24  03 93                                            str r3, [sp, #0xc]
008a8c26  6b 68                                            ldr r3, [r5, #4]
008a8c28  01 1c                                            adds r1, r0, #0
008a8c2a  42 46                                            mov r2, r8
008a8c2c  00 93                                            str r3, [sp]
008a8c2e  48 46                                            mov r0, sb
008a8c30  04 9b                                            ldr r3, [sp, #0x10]
008a8c32  ff f7 63 fe                                      bl #0x8a88fc
008a8c36  0b 9a                                            ldr r2, [sp, #0x2c]
008a8c38  23 68                                            ldr r3, [r4]
008a8c3a  48 46                                            mov r0, sb
008a8c3c  9a 42                                            cmp r2, r3
008a8c3e  05 d1                                            bne #0x8a8c4c
008a8c40  0c b0                                            add sp, #0x30
008a8c42  1c bc                                            pop {r2, r3, r4}
008a8c44  90 46                                            mov r8, r2
008a8c46  99 46                                            mov sb, r3
008a8c48  a2 46                                            mov sl, r4
008a8c4a  f0 bd                                            pop {r4, r5, r6, r7, pc}
008a8c4c  65 f6 60 e3                                      blx #0x30e310
; mapping-symbol data/literal pool
008a8c50  96 be 0e 00 ac 40 00 00                          .byte 0x96, 0xbe, 0x0e, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x008a8c80, declared_size=120, range_size=120, mode=thumb
; class-group: std::ostreambuf_iterator<char, std::char_traits<char> > std::priv
; alias: _ZNSt4priv16__do_put_integerIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEyEET0_S5_RSt8ios_baseT_T1_
; demangled: std::ostreambuf_iterator<char, std::char_traits<char> > std::priv::__do_put_integer<char, std::ostreambuf_iterator<char, std::char_traits<char> >, unsigned long long>(std::ostreambuf_iterator<char, std::char_traits<char> >, std::ios_base&, char, unsigned long long)
; decoder-mode: thumb
008a8c80  f0 b5                                            push {r4, r5, r6, r7, lr}
008a8c82  57 46                                            mov r7, sl
008a8c84  4e 46                                            mov r6, sb
008a8c86  45 46                                            mov r5, r8
008a8c88  e0 b4                                            push {r5, r6, r7}
008a8c8a  8e b0                                            sub sp, #0x38
008a8c8c  1e 1c                                            adds r6, r3, #0
008a8c8e  16 ab                                            add r3, sp, #0x58
008a8c90  1b 78                                            ldrb r3, [r3]
008a8c92  17 4c                                            ldr r4, [pc, #0x5c]
008a8c94  77 68                                            ldr r7, [r6, #4]
008a8c96  9a 46                                            mov sl, r3
008a8c98  16 4b                                            ldr r3, [pc, #0x58]
008a8c9a  7c 44                                            add r4, pc
008a8c9c  04 ad                                            add r5, sp, #0x10
008a8c9e  e4 58                                            ldr r4, [r4, r3]
008a8ca0  6a 60                                            str r2, [r5, #4]
008a8ca2  81 46                                            mov sb, r0
008a8ca4  23 68                                            ldr r3, [r4]
008a8ca6  04 91                                            str r1, [sp, #0x10]
008a8ca8  39 1c                                            adds r1, r7, #0
008a8caa  0d 93                                            str r3, [sp, #0x34]
008a8cac  32 23                                            movs r3, #0x32
008a8cae  6b 44                                            add r3, sp, r3
008a8cb0  98 46                                            mov r8, r3
008a8cb2  18 1c                                            adds r0, r3, #0
008a8cb4  18 9a                                            ldr r2, [sp, #0x60]
008a8cb6  19 9b                                            ldr r3, [sp, #0x64]
008a8cb8  fc f7 ca f9                                      bl #0x8a5050
008a8cbc  53 46                                            mov r3, sl
008a8cbe  01 96                                            str r6, [sp, #4]
008a8cc0  02 97                                            str r7, [sp, #8]
008a8cc2  03 93                                            str r3, [sp, #0xc]
008a8cc4  6b 68                                            ldr r3, [r5, #4]
008a8cc6  01 1c                                            adds r1, r0, #0
008a8cc8  42 46                                            mov r2, r8
008a8cca  00 93                                            str r3, [sp]
008a8ccc  48 46                                            mov r0, sb
008a8cce  04 9b                                            ldr r3, [sp, #0x10]
008a8cd0  ff f7 14 fe                                      bl #0x8a88fc
008a8cd4  0d 9a                                            ldr r2, [sp, #0x34]
008a8cd6  23 68                                            ldr r3, [r4]
008a8cd8  48 46                                            mov r0, sb
008a8cda  9a 42                                            cmp r2, r3
008a8cdc  05 d1                                            bne #0x8a8cea
008a8cde  0e b0                                            add sp, #0x38
008a8ce0  1c bc                                            pop {r2, r3, r4}
008a8ce2  90 46                                            mov r8, r2
008a8ce4  99 46                                            mov sb, r3
008a8ce6  a2 46                                            mov sl, r4
008a8ce8  f0 bd                                            pop {r4, r5, r6, r7, pc}
008a8cea  65 f6 12 e3                                      blx #0x30e310
008a8cee  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008a8cf0  fa bd 0e 00 ac 40 00 00                          .byte 0xfa, 0xbd, 0x0e, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x008a8d24, declared_size=120, range_size=120, mode=thumb
; class-group: std::ostreambuf_iterator<char, std::char_traits<char> > std::priv
; alias: _ZNSt4priv16__do_put_integerIcSt19ostreambuf_iteratorIcSt11char_traitsIcEExEET0_S5_RSt8ios_baseT_T1_
; demangled: std::ostreambuf_iterator<char, std::char_traits<char> > std::priv::__do_put_integer<char, std::ostreambuf_iterator<char, std::char_traits<char> >, long long>(std::ostreambuf_iterator<char, std::char_traits<char> >, std::ios_base&, char, long long)
; decoder-mode: thumb
008a8d24  f0 b5                                            push {r4, r5, r6, r7, lr}
008a8d26  57 46                                            mov r7, sl
008a8d28  4e 46                                            mov r6, sb
008a8d2a  45 46                                            mov r5, r8
008a8d2c  e0 b4                                            push {r5, r6, r7}
008a8d2e  8e b0                                            sub sp, #0x38
008a8d30  1e 1c                                            adds r6, r3, #0
008a8d32  16 ab                                            add r3, sp, #0x58
008a8d34  1b 78                                            ldrb r3, [r3]
008a8d36  17 4c                                            ldr r4, [pc, #0x5c]
008a8d38  77 68                                            ldr r7, [r6, #4]
008a8d3a  9a 46                                            mov sl, r3
008a8d3c  16 4b                                            ldr r3, [pc, #0x58]
008a8d3e  7c 44                                            add r4, pc
008a8d40  04 ad                                            add r5, sp, #0x10
008a8d42  e4 58                                            ldr r4, [r4, r3]
008a8d44  6a 60                                            str r2, [r5, #4]
008a8d46  81 46                                            mov sb, r0
008a8d48  23 68                                            ldr r3, [r4]
008a8d4a  04 91                                            str r1, [sp, #0x10]
008a8d4c  39 1c                                            adds r1, r7, #0
008a8d4e  0d 93                                            str r3, [sp, #0x34]
008a8d50  32 23                                            movs r3, #0x32
008a8d52  6b 44                                            add r3, sp, r3
008a8d54  98 46                                            mov r8, r3
008a8d56  18 1c                                            adds r0, r3, #0
008a8d58  18 9a                                            ldr r2, [sp, #0x60]
008a8d5a  19 9b                                            ldr r3, [sp, #0x64]
008a8d5c  fc f7 ea f9                                      bl #0x8a5134
008a8d60  53 46                                            mov r3, sl
008a8d62  01 96                                            str r6, [sp, #4]
008a8d64  02 97                                            str r7, [sp, #8]
008a8d66  03 93                                            str r3, [sp, #0xc]
008a8d68  6b 68                                            ldr r3, [r5, #4]
008a8d6a  01 1c                                            adds r1, r0, #0
008a8d6c  42 46                                            mov r2, r8
008a8d6e  00 93                                            str r3, [sp]
008a8d70  48 46                                            mov r0, sb
008a8d72  04 9b                                            ldr r3, [sp, #0x10]
008a8d74  ff f7 c2 fd                                      bl #0x8a88fc
008a8d78  0d 9a                                            ldr r2, [sp, #0x34]
008a8d7a  23 68                                            ldr r3, [r4]
008a8d7c  48 46                                            mov r0, sb
008a8d7e  9a 42                                            cmp r2, r3
008a8d80  05 d1                                            bne #0x8a8d8e
008a8d82  0e b0                                            add sp, #0x38
008a8d84  1c bc                                            pop {r2, r3, r4}
008a8d86  90 46                                            mov r8, r2
008a8d88  99 46                                            mov sb, r3
008a8d8a  a2 46                                            mov sl, r4
008a8d8c  f0 bd                                            pop {r4, r5, r6, r7, pc}
008a8d8e  65 f6 c0 e2                                      blx #0x30e310
008a8d92  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008a8d94  56 bd 0e 00 ac 40 00 00                          .byte 0x56, 0xbd, 0x0e, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x008a8dc8, declared_size=116, range_size=116, mode=thumb
; class-group: std::ostreambuf_iterator<char, std::char_traits<char> > std::priv
; alias: _ZNSt4priv16__do_put_integerIcSt19ostreambuf_iteratorIcSt11char_traitsIcEElEET0_S5_RSt8ios_baseT_T1_
; demangled: std::ostreambuf_iterator<char, std::char_traits<char> > std::priv::__do_put_integer<char, std::ostreambuf_iterator<char, std::char_traits<char> >, long>(std::ostreambuf_iterator<char, std::char_traits<char> >, std::ios_base&, char, long)
; decoder-mode: thumb
008a8dc8  f0 b5                                            push {r4, r5, r6, r7, lr}
008a8dca  57 46                                            mov r7, sl
008a8dcc  4e 46                                            mov r6, sb
008a8dce  45 46                                            mov r5, r8
008a8dd0  e0 b4                                            push {r5, r6, r7}
008a8dd2  8c b0                                            sub sp, #0x30
008a8dd4  1e 1c                                            adds r6, r3, #0
008a8dd6  14 ab                                            add r3, sp, #0x50
008a8dd8  1b 78                                            ldrb r3, [r3]
008a8dda  16 4c                                            ldr r4, [pc, #0x58]
008a8ddc  77 68                                            ldr r7, [r6, #4]
008a8dde  9a 46                                            mov sl, r3
008a8de0  15 4b                                            ldr r3, [pc, #0x54]
008a8de2  7c 44                                            add r4, pc
008a8de4  04 ad                                            add r5, sp, #0x10
008a8de6  e4 58                                            ldr r4, [r4, r3]
008a8de8  6a 60                                            str r2, [r5, #4]
008a8dea  81 46                                            mov sb, r0
008a8dec  23 68                                            ldr r3, [r4]
008a8dee  04 91                                            str r1, [sp, #0x10]
008a8df0  15 9a                                            ldr r2, [sp, #0x54]
008a8df2  0b 93                                            str r3, [sp, #0x2c]
008a8df4  2a 23                                            movs r3, #0x2a
008a8df6  6b 44                                            add r3, sp, r3
008a8df8  18 1c                                            adds r0, r3, #0
008a8dfa  39 1c                                            adds r1, r7, #0
008a8dfc  98 46                                            mov r8, r3
008a8dfe  fc f7 f3 f9                                      bl #0x8a51e8
008a8e02  53 46                                            mov r3, sl
008a8e04  01 96                                            str r6, [sp, #4]
008a8e06  02 97                                            str r7, [sp, #8]
008a8e08  03 93                                            str r3, [sp, #0xc]
008a8e0a  6b 68                                            ldr r3, [r5, #4]
008a8e0c  01 1c                                            adds r1, r0, #0
008a8e0e  42 46                                            mov r2, r8
008a8e10  00 93                                            str r3, [sp]
008a8e12  48 46                                            mov r0, sb
008a8e14  04 9b                                            ldr r3, [sp, #0x10]
008a8e16  ff f7 71 fd                                      bl #0x8a88fc
008a8e1a  0b 9a                                            ldr r2, [sp, #0x2c]
008a8e1c  23 68                                            ldr r3, [r4]
008a8e1e  48 46                                            mov r0, sb
008a8e20  9a 42                                            cmp r2, r3
008a8e22  05 d1                                            bne #0x8a8e30
008a8e24  0c b0                                            add sp, #0x30
008a8e26  1c bc                                            pop {r2, r3, r4}
008a8e28  90 46                                            mov r8, r2
008a8e2a  99 46                                            mov sb, r3
008a8e2c  a2 46                                            mov sl, r4
008a8e2e  f0 bd                                            pop {r4, r5, r6, r7, pc}
008a8e30  65 f6 6e e2                                      blx #0x30e310
; mapping-symbol data/literal pool
008a8e34  b2 bc 0e 00 ac 40 00 00                          .byte 0xb2, 0xbc, 0x0e, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x008a8e64, declared_size=506, range_size=506, mode=thumb
; class-group: std::ostreambuf_iterator<char, std::char_traits<char> > std::priv
; alias: _ZNSt4priv11__put_floatISt19ostreambuf_iteratorIcSt11char_traitsIcEEEET_RNS_16__basic_iostringIcEES5_RSt8ios_basecccjRKSs
; demangled: std::ostreambuf_iterator<char, std::char_traits<char> > std::priv::__put_float<std::ostreambuf_iterator<char, std::char_traits<char> > >(std::priv::__basic_iostring<char>&, std::ostreambuf_iterator<char, std::char_traits<char> >, std::ios_base&, char, char, char, unsigned int, std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&)
; decoder-mode: thumb
008a8e64  f0 b5                                            push {r4, r5, r6, r7, lr}
008a8e66  5f 46                                            mov r7, fp
008a8e68  56 46                                            mov r6, sl
008a8e6a  4d 46                                            mov r5, sb
008a8e6c  44 46                                            mov r4, r8
008a8e6e  f0 b4                                            push {r4, r5, r6, r7}
008a8e70  95 b0                                            sub sp, #0x54
008a8e72  06 90                                            str r0, [sp, #0x18]
008a8e74  08 a8                                            add r0, sp, #0x20
008a8e76  08 92                                            str r2, [sp, #0x20]
008a8e78  43 60                                            str r3, [r0, #4]
008a8e7a  1e ab                                            add r3, sp, #0x78
008a8e7c  80 cb                                            ldm r3!, {r7}
008a8e7e  00 79                                            ldrb r0, [r0, #4]
008a8e80  0d 1c                                            adds r5, r1, #0
008a8e82  1e 78                                            ldrb r6, [r3]
008a8e84  07 90                                            str r0, [sp, #0x1c]
008a8e86  20 ab                                            add r3, sp, #0x80
008a8e88  8c 20                                            movs r0, #0x8c
008a8e8a  1b 78                                            ldrb r3, [r3]
008a8e8c  40 00                                            lsls r0, r0, #1
008a8e8e  28 58                                            ldr r0, [r5, r0]
008a8e90  9c 46                                            mov ip, r3
008a8e92  21 ab                                            add r3, sp, #0x84
008a8e94  1b 78                                            ldrb r3, [r3]
008a8e96  81 46                                            mov sb, r0
008a8e98  28 69                                            ldr r0, [r5, #0x10]
008a8e9a  9a 46                                            mov sl, r3
008a8e9c  22 99                                            ldr r1, [sp, #0x88]
008a8e9e  03 1c                                            adds r3, r0, #0
008a8ea0  48 46                                            mov r0, sb
008a8ea2  1b 1a                                            subs r3, r3, r0
008a8ea4  98 46                                            mov r8, r3
008a8ea6  14 1c                                            adds r4, r2, #0
008a8ea8  23 9a                                            ldr r2, [sp, #0x8c]
008a8eaa  41 45                                            cmp r1, r8
008a8eac  05 d2                                            bhs #0x8a8eba
008a8eae  89 44                                            add sb, r1
008a8eb0  4b 46                                            mov r3, sb
008a8eb2  1b 78                                            ldrb r3, [r3]
008a8eb4  2e 2b                                            cmp r3, #0x2e
008a8eb6  00 d1                                            bne #0x8a8eba
008a8eb8  b4 e0                                            b #0x8a9024
008a8eba  50 69                                            ldr r0, [r2, #0x14]
008a8ebc  84 46                                            mov ip, r0
008a8ebe  10 69                                            ldr r0, [r2, #0x10]
008a8ec0  84 45                                            cmp ip, r0
008a8ec2  09 d0                                            beq #0x8a8ed8
008a8ec4  2b 20                                            movs r0, #0x2b
008a8ec6  00 90                                            str r0, [sp]
008a8ec8  2d 20                                            movs r0, #0x2d
008a8eca  01 90                                            str r0, [sp, #4]
008a8ecc  00 20                                            movs r0, #0
008a8ece  02 90                                            str r0, [sp, #8]
008a8ed0  53 46                                            mov r3, sl
008a8ed2  28 1c                                            adds r0, r5, #0
008a8ed4  11 f0 1e f8                                      bl #0x8b9f14
008a8ed8  8c 23                                            movs r3, #0x8c
008a8eda  5b 00                                            lsls r3, r3, #1
008a8edc  eb 58                                            ldr r3, [r5, r3]
008a8ede  2d 69                                            ldr r5, [r5, #0x10]
008a8ee0  00 22                                            movs r2, #0
008a8ee2  1c 20                                            movs r0, #0x1c
008a8ee4  05 95                                            str r5, [sp, #0x14]
008a8ee6  fd 69                                            ldr r5, [r7, #0x1c]
008a8ee8  fa 61                                            str r2, [r7, #0x1c]
008a8eea  6a 46                                            mov r2, sp
008a8eec  82 5c                                            ldrb r2, [r0, r2]
008a8eee  11 a9                                            add r1, sp, #0x44
008a8ef0  98 46                                            mov r8, r3
008a8ef2  8b 46                                            mov fp, r1
008a8ef4  7b 68                                            ldr r3, [r7, #4]
008a8ef6  0a 71                                            strb r2, [r1, #4]
008a8ef8  05 99                                            ldr r1, [sp, #0x14]
008a8efa  42 46                                            mov r2, r8
008a8efc  4f 20                                            movs r0, #0x4f
008a8efe  89 1a                                            subs r1, r1, r2
008a8f00  68 44                                            add r0, sp, r0
008a8f02  8a 46                                            mov sl, r1
008a8f04  11 94                                            str r4, [sp, #0x44]
008a8f06  81 46                                            mov sb, r0
008a8f08  06 70                                            strb r6, [r0]
008a8f0a  55 45                                            cmp r5, sl
008a8f0c  00 dc                                            bgt #0x8a8f10
008a8f0e  7f e0                                            b #0x8a9010
008a8f10  05 99                                            ldr r1, [sp, #0x14]
008a8f12  07 22                                            movs r2, #7
008a8f14  45 44                                            add r5, r8
008a8f16  13 40                                            ands r3, r2
008a8f18  6d 1a                                            subs r5, r5, r1
008a8f1a  01 2b                                            cmp r3, #1
008a8f1c  00 d1                                            bne #0x8a8f20
008a8f1e  85 e0                                            b #0x8a902c
008a8f20  05 98                                            ldr r0, [sp, #0x14]
008a8f22  40 45                                            cmp r0, r8
008a8f24  01 d0                                            beq #0x8a8f2a
008a8f26  04 2b                                            cmp r3, #4
008a8f28  51 d0                                            beq #0x8a8fce
008a8f2a  07 9f                                            ldr r7, [sp, #0x1c]
008a8f2c  00 2d                                            cmp r5, #0
008a8f2e  08 dc                                            bgt #0x8a8f42
008a8f30  1a e0                                            b #0x8a8f68
008a8f32  1e 70                                            strb r6, [r3]
008a8f34  01 33                                            adds r3, #1
008a8f36  63 61                                            str r3, [r4, #0x14]
008a8f38  01 3d                                            subs r5, #1
008a8f3a  00 2d                                            cmp r5, #0
008a8f3c  14 d0                                            beq #0x8a8f68
008a8f3e  49 46                                            mov r1, sb
008a8f40  0e 78                                            ldrb r6, [r1]
008a8f42  00 2f                                            cmp r7, #0
008a8f44  f8 d0                                            beq #0x8a8f38
008a8f46  63 69                                            ldr r3, [r4, #0x14]
008a8f48  a2 69                                            ldr r2, [r4, #0x18]
008a8f4a  93 42                                            cmp r3, r2
008a8f4c  f1 d3                                            blo #0x8a8f32
008a8f4e  23 68                                            ldr r3, [r4]
008a8f50  20 1c                                            adds r0, r4, #0
008a8f52  31 1c                                            adds r1, r6, #0
008a8f54  5b 6b                                            ldr r3, [r3, #0x34]
008a8f56  98 47                                            blx r3
008a8f58  01 30                                            adds r0, #1
008a8f5a  43 1e                                            subs r3, r0, #1
008a8f5c  98 41                                            sbcs r0, r3
008a8f5e  40 42                                            rsbs r0, r0, #0
008a8f60  01 3d                                            subs r5, #1
008a8f62  07 40                                            ands r7, r0
008a8f64  00 2d                                            cmp r5, #0
008a8f66  ea d1                                            bne #0x8a8f3e
008a8f68  0b ab                                            add r3, sp, #0x2c
008a8f6a  1f 71                                            strb r7, [r3, #4]
008a8f6c  11 94                                            str r4, [sp, #0x44]
008a8f6e  1b 79                                            ldrb r3, [r3, #4]
008a8f70  5a 46                                            mov r2, fp
008a8f72  0b 94                                            str r4, [sp, #0x2c]
008a8f74  13 71                                            strb r3, [r2, #4]
008a8f76  13 79                                            ldrb r3, [r2, #4]
008a8f78  50 46                                            mov r0, sl
008a8f7a  1e 1c                                            adds r6, r3, #0
008a8f7c  00 28                                            cmp r0, #0
008a8f7e  1b dd                                            ble #0x8a8fb8
008a8f80  00 25                                            movs r5, #0
008a8f82  05 e0                                            b #0x8a8f90
008a8f84  19 70                                            strb r1, [r3]
008a8f86  01 33                                            adds r3, #1
008a8f88  63 61                                            str r3, [r4, #0x14]
008a8f8a  01 35                                            adds r5, #1
008a8f8c  55 45                                            cmp r5, sl
008a8f8e  13 d0                                            beq #0x8a8fb8
008a8f90  42 46                                            mov r2, r8
008a8f92  51 5d                                            ldrb r1, [r2, r5]
008a8f94  00 2e                                            cmp r6, #0
008a8f96  f8 d0                                            beq #0x8a8f8a
008a8f98  63 69                                            ldr r3, [r4, #0x14]
008a8f9a  a2 69                                            ldr r2, [r4, #0x18]
008a8f9c  93 42                                            cmp r3, r2
008a8f9e  f1 d3                                            blo #0x8a8f84
008a8fa0  23 68                                            ldr r3, [r4]
008a8fa2  20 1c                                            adds r0, r4, #0
008a8fa4  01 35                                            adds r5, #1
008a8fa6  5b 6b                                            ldr r3, [r3, #0x34]
008a8fa8  98 47                                            blx r3
008a8faa  01 30                                            adds r0, #1
008a8fac  43 1e                                            subs r3, r0, #1
008a8fae  98 41                                            sbcs r0, r3
008a8fb0  40 42                                            rsbs r0, r0, #0
008a8fb2  06 40                                            ands r6, r0
008a8fb4  55 45                                            cmp r5, sl
008a8fb6  eb d1                                            bne #0x8a8f90
008a8fb8  06 9b                                            ldr r3, [sp, #0x18]
008a8fba  1c 60                                            str r4, [r3]
008a8fbc  1e 71                                            strb r6, [r3, #4]
008a8fbe  06 98                                            ldr r0, [sp, #0x18]
008a8fc0  15 b0                                            add sp, #0x54
008a8fc2  3c bc                                            pop {r2, r3, r4, r5}
008a8fc4  90 46                                            mov r8, r2
008a8fc6  99 46                                            mov sb, r3
008a8fc8  a2 46                                            mov sl, r4
008a8fca  ab 46                                            mov fp, r5
008a8fcc  f0 bd                                            pop {r4, r5, r6, r7, pc}
008a8fce  42 46                                            mov r2, r8
008a8fd0  11 78                                            ldrb r1, [r2]
008a8fd2  2b 29                                            cmp r1, #0x2b
008a8fd4  01 d0                                            beq #0x8a8fda
008a8fd6  2d 29                                            cmp r1, #0x2d
008a8fd8  a7 d1                                            bne #0x8a8f2a
008a8fda  58 46                                            mov r0, fp
008a8fdc  fb f7 66 fd                                      bl #0x8a4aac
008a8fe0  4b 46                                            mov r3, sb
008a8fe2  00 93                                            str r3, [sp]
008a8fe4  0d ac                                            add r4, sp, #0x34
008a8fe6  5b 46                                            mov r3, fp
008a8fe8  20 1c                                            adds r0, r4, #0
008a8fea  11 99                                            ldr r1, [sp, #0x44]
008a8fec  5a 68                                            ldr r2, [r3, #4]
008a8fee  2b 1c                                            adds r3, r5, #0
008a8ff0  fd f7 1a ff                                      bl #0x8a6e28
008a8ff4  0d 9b                                            ldr r3, [sp, #0x34]
008a8ff6  58 46                                            mov r0, fp
008a8ff8  41 46                                            mov r1, r8
008a8ffa  11 93                                            str r3, [sp, #0x44]
008a8ffc  22 79                                            ldrb r2, [r4, #4]
008a8ffe  01 31                                            adds r1, #1
008a9000  02 71                                            strb r2, [r0, #4]
008a9002  42 68                                            ldr r2, [r0, #4]
008a9004  06 98                                            ldr r0, [sp, #0x18]
008a9006  00 92                                            str r2, [sp]
008a9008  05 9a                                            ldr r2, [sp, #0x14]
008a900a  fe f7 27 f8                                      bl #0x8a705c
008a900e  d6 e7                                            b #0x8a8fbe
008a9010  58 46                                            mov r0, fp
008a9012  43 68                                            ldr r3, [r0, #4]
008a9014  41 46                                            mov r1, r8
008a9016  06 98                                            ldr r0, [sp, #0x18]
008a9018  00 93                                            str r3, [sp]
008a901a  05 9a                                            ldr r2, [sp, #0x14]
008a901c  23 1c                                            adds r3, r4, #0
008a901e  fe f7 1d f8                                      bl #0x8a705c
008a9022  cc e7                                            b #0x8a8fbe
008a9024  63 46                                            mov r3, ip
008a9026  48 46                                            mov r0, sb
008a9028  03 70                                            strb r3, [r0]
008a902a  46 e7                                            b #0x8a8eba
008a902c  5a 46                                            mov r2, fp
008a902e  53 68                                            ldr r3, [r2, #4]
008a9030  0f ae                                            add r6, sp, #0x3c
008a9032  30 1c                                            adds r0, r6, #0
008a9034  00 93                                            str r3, [sp]
008a9036  41 46                                            mov r1, r8
008a9038  23 1c                                            adds r3, r4, #0
008a903a  05 9a                                            ldr r2, [sp, #0x14]
008a903c  fe f7 0e f8                                      bl #0x8a705c
008a9040  0f 99                                            ldr r1, [sp, #0x3c]
008a9042  5b 46                                            mov r3, fp
008a9044  58 46                                            mov r0, fp
008a9046  19 60                                            str r1, [r3]
008a9048  33 79                                            ldrb r3, [r6, #4]
008a904a  4a 46                                            mov r2, sb
008a904c  03 71                                            strb r3, [r0, #4]
008a904e  5b 46                                            mov r3, fp
008a9050  00 92                                            str r2, [sp]
008a9052  5a 68                                            ldr r2, [r3, #4]
008a9054  06 98                                            ldr r0, [sp, #0x18]
008a9056  2b 1c                                            adds r3, r5, #0
008a9058  fd f7 e6 fe                                      bl #0x8a6e28
008a905c  af e7                                            b #0x8a8fbe

; FUNCTION 0x008a9060, declared_size=272, range_size=272, mode=thumb
; class-group: std::ostreambuf_iterator<char, std::char_traits<char> > std::priv
; alias: _ZNSt4priv14__do_put_floatIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEeEET0_S5_RSt8ios_baseT_T1_
; demangled: std::ostreambuf_iterator<char, std::char_traits<char> > std::priv::__do_put_float<char, std::ostreambuf_iterator<char, std::char_traits<char> >, long double>(std::ostreambuf_iterator<char, std::char_traits<char> >, std::ios_base&, char, long double)
; decoder-mode: thumb
008a9060  f0 b5                                            push {r4, r5, r6, r7, lr}
008a9062  5f 46                                            mov r7, fp
008a9064  56 46                                            mov r6, sl
008a9066  4d 46                                            mov r5, sb
008a9068  44 46                                            mov r4, r8
008a906a  f0 b4                                            push {r4, r5, r6, r7}
008a906c  3b 4c                                            ldr r4, [pc, #0xec]
008a906e  1e 1c                                            adds r6, r3, #0
008a9070  3b 4d                                            ldr r5, [pc, #0xec]
008a9072  a5 44                                            add sp, r4
008a9074  0a af                                            add r7, sp, #0x28
008a9076  7a 60                                            str r2, [r7, #4]
008a9078  0a 91                                            str r1, [sp, #0x28]
008a907a  a6 ab                                            add r3, sp, #0x298
008a907c  1b 78                                            ldrb r3, [r3]
008a907e  7d 44                                            add r5, pc
008a9080  0d ac                                            add r4, sp, #0x34
008a9082  08 93                                            str r3, [sp, #0x20]
008a9084  37 4b                                            ldr r3, [pc, #0xdc]
008a9086  82 46                                            mov sl, r0
008a9088  54 a9                                            add r1, sp, #0x150
008a908a  eb 58                                            ldr r3, [r5, r3]
008a908c  36 4a                                            ldr r2, [pc, #0xd8]
008a908e  12 a8                                            add r0, sp, #0x48
008a9090  98 46                                            mov r8, r3
008a9092  1b 68                                            ldr r3, [r3]
008a9094  9b 93                                            str r3, [sp, #0x26c]
008a9096  24 61                                            str r4, [r4, #0x10]
008a9098  65 f6 e6 e3                                      blx #0x30e868
008a909c  8c 23                                            movs r3, #0x8c
008a909e  5b 00                                            lsls r3, r3, #1
008a90a0  20 1c                                            adds r0, r4, #0
008a90a2  e4 50                                            str r4, [r4, r3]
008a90a4  fc f7 18 f9                                      bl #0x8a52d8
008a90a8  23 69                                            ldr r3, [r4, #0x10]
008a90aa  00 22                                            movs r2, #0
008a90ac  20 1c                                            adds r0, r4, #0
008a90ae  1a 70                                            strb r2, [r3]
008a90b0  b2 69                                            ldr r2, [r6, #0x18]
008a90b2  71 68                                            ldr r1, [r6, #4]
008a90b4  94 46                                            mov ip, r2
008a90b6  a8 9a                                            ldr r2, [sp, #0x2a0]
008a90b8  a9 9b                                            ldr r3, [sp, #0x2a4]
008a90ba  00 92                                            str r2, [sp]
008a90bc  01 93                                            str r3, [sp, #4]
008a90be  62 46                                            mov r2, ip
008a90c0  12 f0 3a f8                                      bl #0x8bb138
008a90c4  0c ab                                            add r3, sp, #0x30
008a90c6  31 1c                                            adds r1, r6, #0
008a90c8  07 90                                            str r0, [sp, #0x1c]
008a90ca  20 31                                            adds r1, #0x20
008a90cc  18 1c                                            adds r0, r3, #0
008a90ce  99 46                                            mov sb, r3
008a90d0  fa f7 46 fa                                      bl #0x8a3560
008a90d4  25 4b                                            ldr r3, [pc, #0x94]
008a90d6  48 46                                            mov r0, sb
008a90d8  e9 58                                            ldr r1, [r5, r3]
008a90da  fa f7 69 fa                                      bl #0x8a35b0
008a90de  05 1c                                            adds r5, r0, #0
008a90e0  48 46                                            mov r0, sb
008a90e2  fa f7 07 fa                                      bl #0x8a34f4
008a90e6  2b 68                                            ldr r3, [r5]
008a90e8  28 1c                                            adds r0, r5, #0
008a90ea  9b 68                                            ldr r3, [r3, #8]
008a90ec  98 47                                            blx r3
008a90ee  2b 68                                            ldr r3, [r5]
008a90f0  83 46                                            mov fp, r0
008a90f2  28 1c                                            adds r0, r5, #0
008a90f4  db 68                                            ldr r3, [r3, #0xc]
008a90f6  98 47                                            blx r3
008a90f8  09 90                                            str r0, [sp, #0x24]
008a90fa  2b 68                                            ldr r3, [r5]
008a90fc  95 21                                            movs r1, #0x95
008a90fe  89 00                                            lsls r1, r1, #2
008a9100  69 44                                            add r1, sp, r1
008a9102  89 46                                            mov sb, r1
008a9104  08 1c                                            adds r0, r1, #0
008a9106  1b 69                                            ldr r3, [r3, #0x10]
008a9108  29 1c                                            adds r1, r5, #0
008a910a  98 47                                            blx r3
008a910c  08 9a                                            ldr r2, [sp, #0x20]
008a910e  09 99                                            ldr r1, [sp, #0x24]
008a9110  5b 46                                            mov r3, fp
008a9112  01 92                                            str r2, [sp, #4]
008a9114  07 9a                                            ldr r2, [sp, #0x1c]
008a9116  02 93                                            str r3, [sp, #8]
008a9118  4b 46                                            mov r3, sb
008a911a  03 91                                            str r1, [sp, #0xc]
008a911c  04 92                                            str r2, [sp, #0x10]
008a911e  00 96                                            str r6, [sp]
008a9120  05 93                                            str r3, [sp, #0x14]
008a9122  21 1c                                            adds r1, r4, #0
008a9124  0a 9a                                            ldr r2, [sp, #0x28]
008a9126  7b 68                                            ldr r3, [r7, #4]
008a9128  50 46                                            mov r0, sl
008a912a  ff f7 9b fe                                      bl #0x8a8e64
008a912e  48 46                                            mov r0, sb
008a9130  6a f6 3c e4                                      blx #0x3139ac
008a9134  20 1c                                            adds r0, r4, #0
008a9136  fc f7 a5 fc                                      bl #0x8a5a84
008a913a  41 46                                            mov r1, r8
008a913c  9b 9a                                            ldr r2, [sp, #0x26c]
008a913e  0b 68                                            ldr r3, [r1]
008a9140  50 46                                            mov r0, sl
008a9142  9a 42                                            cmp r2, r3
008a9144  08 d1                                            bne #0x8a9158
008a9146  9d 23                                            movs r3, #0x9d
008a9148  9b 00                                            lsls r3, r3, #2
008a914a  9d 44                                            add sp, r3
008a914c  3c bc                                            pop {r2, r3, r4, r5}
008a914e  90 46                                            mov r8, r2
008a9150  99 46                                            mov sb, r3
008a9152  a2 46                                            mov sl, r4
008a9154  ab 46                                            mov fp, r5
008a9156  f0 bd                                            pop {r4, r5, r6, r7, pc}
008a9158  65 f6 da e0                                      blx #0x30e310
; mapping-symbol data/literal pool
008a915c  8c fd ff ff 16 ba 0e 00 ac 40 00 00 01 01 00 00  .byte 0x8c, 0xfd, 0xff, 0xff, 0x16, 0xba, 0x0e, 0x00, 0xac, 0x40, 0x00, 0x00, 0x01, 0x01, 0x00, 0x00
008a916c  e0 1f 00 00                                      .byte 0xe0, 0x1f, 0x00, 0x00

; FUNCTION 0x008a919c, declared_size=272, range_size=272, mode=thumb
; class-group: std::ostreambuf_iterator<char, std::char_traits<char> > std::priv
; alias: _ZNSt4priv14__do_put_floatIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEdEET0_S5_RSt8ios_baseT_T1_
; demangled: std::ostreambuf_iterator<char, std::char_traits<char> > std::priv::__do_put_float<char, std::ostreambuf_iterator<char, std::char_traits<char> >, double>(std::ostreambuf_iterator<char, std::char_traits<char> >, std::ios_base&, char, double)
; decoder-mode: thumb
008a919c  f0 b5                                            push {r4, r5, r6, r7, lr}
008a919e  5f 46                                            mov r7, fp
008a91a0  56 46                                            mov r6, sl
008a91a2  4d 46                                            mov r5, sb
008a91a4  44 46                                            mov r4, r8
008a91a6  f0 b4                                            push {r4, r5, r6, r7}
008a91a8  3b 4c                                            ldr r4, [pc, #0xec]
008a91aa  1e 1c                                            adds r6, r3, #0
008a91ac  3b 4d                                            ldr r5, [pc, #0xec]
008a91ae  a5 44                                            add sp, r4
008a91b0  0a af                                            add r7, sp, #0x28
008a91b2  7a 60                                            str r2, [r7, #4]
008a91b4  0a 91                                            str r1, [sp, #0x28]
008a91b6  a6 ab                                            add r3, sp, #0x298
008a91b8  1b 78                                            ldrb r3, [r3]
008a91ba  7d 44                                            add r5, pc
008a91bc  0d ac                                            add r4, sp, #0x34
008a91be  08 93                                            str r3, [sp, #0x20]
008a91c0  37 4b                                            ldr r3, [pc, #0xdc]
008a91c2  82 46                                            mov sl, r0
008a91c4  54 a9                                            add r1, sp, #0x150
008a91c6  eb 58                                            ldr r3, [r5, r3]
008a91c8  36 4a                                            ldr r2, [pc, #0xd8]
008a91ca  12 a8                                            add r0, sp, #0x48
008a91cc  98 46                                            mov r8, r3
008a91ce  1b 68                                            ldr r3, [r3]
008a91d0  9b 93                                            str r3, [sp, #0x26c]
008a91d2  24 61                                            str r4, [r4, #0x10]
008a91d4  65 f6 48 e3                                      blx #0x30e868
008a91d8  8c 23                                            movs r3, #0x8c
008a91da  5b 00                                            lsls r3, r3, #1
008a91dc  20 1c                                            adds r0, r4, #0
008a91de  e4 50                                            str r4, [r4, r3]
008a91e0  fc f7 7a f8                                      bl #0x8a52d8
008a91e4  23 69                                            ldr r3, [r4, #0x10]
008a91e6  00 22                                            movs r2, #0
008a91e8  20 1c                                            adds r0, r4, #0
008a91ea  1a 70                                            strb r2, [r3]
008a91ec  b2 69                                            ldr r2, [r6, #0x18]
008a91ee  71 68                                            ldr r1, [r6, #4]
008a91f0  94 46                                            mov ip, r2
008a91f2  a8 9a                                            ldr r2, [sp, #0x2a0]
008a91f4  a9 9b                                            ldr r3, [sp, #0x2a4]
008a91f6  00 92                                            str r2, [sp]
008a91f8  01 93                                            str r3, [sp, #4]
008a91fa  62 46                                            mov r2, ip
008a91fc  11 f0 5e ff                                      bl #0x8bb0bc
008a9200  0c ab                                            add r3, sp, #0x30
008a9202  31 1c                                            adds r1, r6, #0
008a9204  07 90                                            str r0, [sp, #0x1c]
008a9206  20 31                                            adds r1, #0x20
008a9208  18 1c                                            adds r0, r3, #0
008a920a  99 46                                            mov sb, r3
008a920c  fa f7 a8 f9                                      bl #0x8a3560
008a9210  25 4b                                            ldr r3, [pc, #0x94]
008a9212  48 46                                            mov r0, sb
008a9214  e9 58                                            ldr r1, [r5, r3]
008a9216  fa f7 cb f9                                      bl #0x8a35b0
008a921a  05 1c                                            adds r5, r0, #0
008a921c  48 46                                            mov r0, sb
008a921e  fa f7 69 f9                                      bl #0x8a34f4
008a9222  2b 68                                            ldr r3, [r5]
008a9224  28 1c                                            adds r0, r5, #0
008a9226  9b 68                                            ldr r3, [r3, #8]
008a9228  98 47                                            blx r3
008a922a  2b 68                                            ldr r3, [r5]
008a922c  83 46                                            mov fp, r0
008a922e  28 1c                                            adds r0, r5, #0
008a9230  db 68                                            ldr r3, [r3, #0xc]
008a9232  98 47                                            blx r3
008a9234  09 90                                            str r0, [sp, #0x24]
008a9236  2b 68                                            ldr r3, [r5]
008a9238  95 21                                            movs r1, #0x95
008a923a  89 00                                            lsls r1, r1, #2
008a923c  69 44                                            add r1, sp, r1
008a923e  89 46                                            mov sb, r1
008a9240  08 1c                                            adds r0, r1, #0
008a9242  1b 69                                            ldr r3, [r3, #0x10]
008a9244  29 1c                                            adds r1, r5, #0
008a9246  98 47                                            blx r3
008a9248  08 9a                                            ldr r2, [sp, #0x20]
008a924a  09 99                                            ldr r1, [sp, #0x24]
008a924c  5b 46                                            mov r3, fp
008a924e  01 92                                            str r2, [sp, #4]
008a9250  07 9a                                            ldr r2, [sp, #0x1c]
008a9252  02 93                                            str r3, [sp, #8]
008a9254  4b 46                                            mov r3, sb
008a9256  03 91                                            str r1, [sp, #0xc]
008a9258  04 92                                            str r2, [sp, #0x10]
008a925a  00 96                                            str r6, [sp]
008a925c  05 93                                            str r3, [sp, #0x14]
008a925e  21 1c                                            adds r1, r4, #0
008a9260  0a 9a                                            ldr r2, [sp, #0x28]
008a9262  7b 68                                            ldr r3, [r7, #4]
008a9264  50 46                                            mov r0, sl
008a9266  ff f7 fd fd                                      bl #0x8a8e64
008a926a  48 46                                            mov r0, sb
008a926c  6a f6 9e e3                                      blx #0x3139ac
008a9270  20 1c                                            adds r0, r4, #0
008a9272  fc f7 07 fc                                      bl #0x8a5a84
008a9276  41 46                                            mov r1, r8
008a9278  9b 9a                                            ldr r2, [sp, #0x26c]
008a927a  0b 68                                            ldr r3, [r1]
008a927c  50 46                                            mov r0, sl
008a927e  9a 42                                            cmp r2, r3
008a9280  08 d1                                            bne #0x8a9294
008a9282  9d 23                                            movs r3, #0x9d
008a9284  9b 00                                            lsls r3, r3, #2
008a9286  9d 44                                            add sp, r3
008a9288  3c bc                                            pop {r2, r3, r4, r5}
008a928a  90 46                                            mov r8, r2
008a928c  99 46                                            mov sb, r3
008a928e  a2 46                                            mov sl, r4
008a9290  ab 46                                            mov fp, r5
008a9292  f0 bd                                            pop {r4, r5, r6, r7, pc}
008a9294  65 f6 3c e0                                      blx #0x30e310
; mapping-symbol data/literal pool
008a9298  8c fd ff ff da b8 0e 00 ac 40 00 00 01 01 00 00  .byte 0x8c, 0xfd, 0xff, 0xff, 0xda, 0xb8, 0x0e, 0x00, 0xac, 0x40, 0x00, 0x00, 0x01, 0x01, 0x00, 0x00
008a92a8  e0 1f 00 00                                      .byte 0xe0, 0x1f, 0x00, 0x00

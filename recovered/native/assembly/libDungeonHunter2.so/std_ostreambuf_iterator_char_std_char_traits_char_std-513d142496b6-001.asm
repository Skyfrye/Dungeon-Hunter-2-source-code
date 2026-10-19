; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008a6e88, declared_size=108, range_size=108, mode=thumb
; class-group: std::ostreambuf_iterator<char, std::char_traits<char> > std
; alias: _ZSt4copyIPcSt19ostreambuf_iteratorIcSt11char_traitsIcEEET0_T_S6_S5_
; demangled: std::ostreambuf_iterator<char, std::char_traits<char> > std::copy<char*, std::ostreambuf_iterator<char, std::char_traits<char> > >(char*, char*, std::ostreambuf_iterator<char, std::char_traits<char> >)
; decoder-mode: thumb
008a6e88  82 b0                                            sub sp, #8
008a6e8a  f8 b5                                            push {r3, r4, r5, r6, r7, lr}
008a6e8c  4f 46                                            mov r7, sb
008a6e8e  46 46                                            mov r6, r8
008a6e90  c0 b4                                            push {r6, r7}
008a6e92  09 93                                            str r3, [sp, #0x24]
008a6e94  1d 1c                                            adds r5, r3, #0
008a6e96  09 ab                                            add r3, sp, #0x24
008a6e98  1b 79                                            ldrb r3, [r3, #4]
008a6e9a  52 1a                                            subs r2, r2, r1
008a6e9c  81 46                                            mov sb, r0
008a6e9e  0f 1c                                            adds r7, r1, #0
008a6ea0  90 46                                            mov r8, r2
008a6ea2  1e 1c                                            adds r6, r3, #0
008a6ea4  00 2a                                            cmp r2, #0
008a6ea6  1a dd                                            ble #0x8a6ede
008a6ea8  00 24                                            movs r4, #0
008a6eaa  05 e0                                            b #0x8a6eb8
008a6eac  19 70                                            strb r1, [r3]
008a6eae  01 33                                            adds r3, #1
008a6eb0  6b 61                                            str r3, [r5, #0x14]
008a6eb2  01 34                                            adds r4, #1
008a6eb4  44 45                                            cmp r4, r8
008a6eb6  12 d0                                            beq #0x8a6ede
008a6eb8  39 5d                                            ldrb r1, [r7, r4]
008a6eba  00 2e                                            cmp r6, #0
008a6ebc  f9 d0                                            beq #0x8a6eb2
008a6ebe  6b 69                                            ldr r3, [r5, #0x14]
008a6ec0  aa 69                                            ldr r2, [r5, #0x18]
008a6ec2  93 42                                            cmp r3, r2
008a6ec4  f2 d3                                            blo #0x8a6eac
008a6ec6  2b 68                                            ldr r3, [r5]
008a6ec8  28 1c                                            adds r0, r5, #0
008a6eca  01 34                                            adds r4, #1
008a6ecc  5b 6b                                            ldr r3, [r3, #0x34]
008a6ece  98 47                                            blx r3
008a6ed0  01 30                                            adds r0, #1
008a6ed2  43 1e                                            subs r3, r0, #1
008a6ed4  98 41                                            sbcs r0, r3
008a6ed6  40 42                                            rsbs r0, r0, #0
008a6ed8  06 40                                            ands r6, r0
008a6eda  44 45                                            cmp r4, r8
008a6edc  ec d1                                            bne #0x8a6eb8
008a6ede  4a 46                                            mov r2, sb
008a6ee0  48 46                                            mov r0, sb
008a6ee2  15 60                                            str r5, [r2]
008a6ee4  16 71                                            strb r6, [r2, #4]
008a6ee6  0c bc                                            pop {r2, r3}
008a6ee8  90 46                                            mov r8, r2
008a6eea  99 46                                            mov sb, r3
008a6eec  f8 bc                                            pop {r3, r4, r5, r6, r7}
008a6eee  08 bc                                            pop {r3}
008a6ef0  02 b0                                            add sp, #8
008a6ef2  18 47                                            bx r3

; FUNCTION 0x008a705c, declared_size=108, range_size=108, mode=thumb
; class-group: std::ostreambuf_iterator<char, std::char_traits<char> > std
; alias: _ZSt4copyIPKcSt19ostreambuf_iteratorIcSt11char_traitsIcEEET0_T_S7_S6_
; demangled: std::ostreambuf_iterator<char, std::char_traits<char> > std::copy<char const*, std::ostreambuf_iterator<char, std::char_traits<char> > >(char const*, char const*, std::ostreambuf_iterator<char, std::char_traits<char> >)
; decoder-mode: thumb
008a705c  82 b0                                            sub sp, #8
008a705e  f8 b5                                            push {r3, r4, r5, r6, r7, lr}
008a7060  4f 46                                            mov r7, sb
008a7062  46 46                                            mov r6, r8
008a7064  c0 b4                                            push {r6, r7}
008a7066  09 93                                            str r3, [sp, #0x24]
008a7068  1d 1c                                            adds r5, r3, #0
008a706a  09 ab                                            add r3, sp, #0x24
008a706c  1b 79                                            ldrb r3, [r3, #4]
008a706e  52 1a                                            subs r2, r2, r1
008a7070  81 46                                            mov sb, r0
008a7072  0f 1c                                            adds r7, r1, #0
008a7074  90 46                                            mov r8, r2
008a7076  1e 1c                                            adds r6, r3, #0
008a7078  00 2a                                            cmp r2, #0
008a707a  1a dd                                            ble #0x8a70b2
008a707c  00 24                                            movs r4, #0
008a707e  05 e0                                            b #0x8a708c
008a7080  19 70                                            strb r1, [r3]
008a7082  01 33                                            adds r3, #1
008a7084  6b 61                                            str r3, [r5, #0x14]
008a7086  01 34                                            adds r4, #1
008a7088  44 45                                            cmp r4, r8
008a708a  12 d0                                            beq #0x8a70b2
008a708c  39 5d                                            ldrb r1, [r7, r4]
008a708e  00 2e                                            cmp r6, #0
008a7090  f9 d0                                            beq #0x8a7086
008a7092  6b 69                                            ldr r3, [r5, #0x14]
008a7094  aa 69                                            ldr r2, [r5, #0x18]
008a7096  93 42                                            cmp r3, r2
008a7098  f2 d3                                            blo #0x8a7080
008a709a  2b 68                                            ldr r3, [r5]
008a709c  28 1c                                            adds r0, r5, #0
008a709e  01 34                                            adds r4, #1
008a70a0  5b 6b                                            ldr r3, [r3, #0x34]
008a70a2  98 47                                            blx r3
008a70a4  01 30                                            adds r0, #1
008a70a6  43 1e                                            subs r3, r0, #1
008a70a8  98 41                                            sbcs r0, r3
008a70aa  40 42                                            rsbs r0, r0, #0
008a70ac  06 40                                            ands r6, r0
008a70ae  44 45                                            cmp r4, r8
008a70b0  ec d1                                            bne #0x8a708c
008a70b2  4a 46                                            mov r2, sb
008a70b4  48 46                                            mov r0, sb
008a70b6  15 60                                            str r5, [r2]
008a70b8  16 71                                            strb r6, [r2, #4]
008a70ba  0c bc                                            pop {r2, r3}
008a70bc  90 46                                            mov r8, r2
008a70be  99 46                                            mov sb, r3
008a70c0  f8 bc                                            pop {r3, r4, r5, r6, r7}
008a70c2  08 bc                                            pop {r3}
008a70c4  02 b0                                            add sp, #8
008a70c6  18 47                                            bx r3

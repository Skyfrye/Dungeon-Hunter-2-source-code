; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008a6d64, declared_size=94, range_size=94, mode=thumb
; class-group: std::ostreambuf_iterator<wchar_t, std::char_traits<wchar_t> > std::priv
; alias: _ZNSt4priv8__fill_nISt19ostreambuf_iteratorIwSt11char_traitsIwEEiwEET_S5_T0_RKT1_
; demangled: std::ostreambuf_iterator<wchar_t, std::char_traits<wchar_t> > std::priv::__fill_n<std::ostreambuf_iterator<wchar_t, std::char_traits<wchar_t> >, int, wchar_t>(std::ostreambuf_iterator<wchar_t, std::char_traits<wchar_t> >, int, wchar_t const&)
; decoder-mode: thumb
008a6d64  f0 b5                                            push {r4, r5, r6, r7, lr}
008a6d66  47 46                                            mov r7, r8
008a6d68  80 b4                                            push {r7}
008a6d6a  82 b0                                            sub sp, #8
008a6d6c  80 46                                            mov r8, r0
008a6d6e  00 91                                            str r1, [sp]
008a6d70  68 46                                            mov r0, sp
008a6d72  01 92                                            str r2, [sp, #4]
008a6d74  0e 1c                                            adds r6, r1, #0
008a6d76  1c 1c                                            adds r4, r3, #0
008a6d78  08 9f                                            ldr r7, [sp, #0x20]
008a6d7a  05 79                                            ldrb r5, [r0, #4]
008a6d7c  00 2b                                            cmp r3, #0
008a6d7e  0c dc                                            bgt #0x8a6d9a
008a6d80  17 e0                                            b #0x8a6db2
008a6d82  1a 1c                                            adds r2, r3, #0
008a6d84  02 c2                                            stm r2!, {r1}
008a6d86  72 61                                            str r2, [r6, #0x14]
008a6d88  18 68                                            ldr r0, [r3]
008a6d8a  01 30                                            adds r0, #1
008a6d8c  43 1e                                            subs r3, r0, #1
008a6d8e  98 41                                            sbcs r0, r3
008a6d90  40 42                                            rsbs r0, r0, #0
008a6d92  05 40                                            ands r5, r0
008a6d94  01 3c                                            subs r4, #1
008a6d96  00 2c                                            cmp r4, #0
008a6d98  0b d0                                            beq #0x8a6db2
008a6d9a  39 68                                            ldr r1, [r7]
008a6d9c  00 2d                                            cmp r5, #0
008a6d9e  f9 d0                                            beq #0x8a6d94
008a6da0  73 69                                            ldr r3, [r6, #0x14]
008a6da2  b2 69                                            ldr r2, [r6, #0x18]
008a6da4  93 42                                            cmp r3, r2
008a6da6  ec d3                                            blo #0x8a6d82
008a6da8  33 68                                            ldr r3, [r6]
008a6daa  30 1c                                            adds r0, r6, #0
008a6dac  5b 6b                                            ldr r3, [r3, #0x34]
008a6dae  98 47                                            blx r3
008a6db0  eb e7                                            b #0x8a6d8a
008a6db2  43 46                                            mov r3, r8
008a6db4  02 b0                                            add sp, #8
008a6db6  40 46                                            mov r0, r8
008a6db8  1e 60                                            str r6, [r3]
008a6dba  1d 71                                            strb r5, [r3, #4]
008a6dbc  04 bc                                            pop {r2}
008a6dbe  90 46                                            mov r8, r2
008a6dc0  f0 bd                                            pop {r4, r5, r6, r7, pc}

; FUNCTION 0x008a6dc4, declared_size=100, range_size=100, mode=thumb
; class-group: std::ostreambuf_iterator<wchar_t, std::char_traits<wchar_t> > std::priv
; alias: _ZNSt4priv10__copy_auxIPKwSt19ostreambuf_iteratorIwSt11char_traitsIwEEEET0_T_S8_S7_RKSt12__false_type
; demangled: std::ostreambuf_iterator<wchar_t, std::char_traits<wchar_t> > std::priv::__copy_aux<wchar_t const*, std::ostreambuf_iterator<wchar_t, std::char_traits<wchar_t> > >(wchar_t const*, wchar_t const*, std::ostreambuf_iterator<wchar_t, std::char_traits<wchar_t> >, std::__false_type const&)
; decoder-mode: thumb
008a6dc4  82 b0                                            sub sp, #8
008a6dc6  f0 b5                                            push {r4, r5, r6, r7, lr}
008a6dc8  47 46                                            mov r7, r8
008a6dca  80 b4                                            push {r7}
008a6dcc  54 1a                                            subs r4, r2, r1
008a6dce  07 93                                            str r3, [sp, #0x1c]
008a6dd0  1e 1c                                            adds r6, r3, #0
008a6dd2  a4 10                                            asrs r4, r4, #2
008a6dd4  07 ab                                            add r3, sp, #0x1c
008a6dd6  80 46                                            mov r8, r0
008a6dd8  0d 1c                                            adds r5, r1, #0
008a6dda  1f 79                                            ldrb r7, [r3, #4]
008a6ddc  00 2c                                            cmp r4, #0
008a6dde  0d dc                                            bgt #0x8a6dfc
008a6de0  18 e0                                            b #0x8a6e14
008a6de2  1a 1c                                            adds r2, r3, #0
008a6de4  02 c2                                            stm r2!, {r1}
008a6de6  72 61                                            str r2, [r6, #0x14]
008a6de8  18 68                                            ldr r0, [r3]
008a6dea  01 30                                            adds r0, #1
008a6dec  43 1e                                            subs r3, r0, #1
008a6dee  98 41                                            sbcs r0, r3
008a6df0  40 42                                            rsbs r0, r0, #0
008a6df2  07 40                                            ands r7, r0
008a6df4  01 3c                                            subs r4, #1
008a6df6  00 2c                                            cmp r4, #0
008a6df8  0c d0                                            beq #0x8a6e14
008a6dfa  04 35                                            adds r5, #4
008a6dfc  29 68                                            ldr r1, [r5]
008a6dfe  00 2f                                            cmp r7, #0
008a6e00  f8 d0                                            beq #0x8a6df4
008a6e02  73 69                                            ldr r3, [r6, #0x14]
008a6e04  b2 69                                            ldr r2, [r6, #0x18]
008a6e06  93 42                                            cmp r3, r2
008a6e08  eb d3                                            blo #0x8a6de2
008a6e0a  33 68                                            ldr r3, [r6]
008a6e0c  30 1c                                            adds r0, r6, #0
008a6e0e  5b 6b                                            ldr r3, [r3, #0x34]
008a6e10  98 47                                            blx r3
008a6e12  ea e7                                            b #0x8a6dea
008a6e14  43 46                                            mov r3, r8
008a6e16  40 46                                            mov r0, r8
008a6e18  1e 60                                            str r6, [r3]
008a6e1a  1f 71                                            strb r7, [r3, #4]
008a6e1c  04 bc                                            pop {r2}
008a6e1e  90 46                                            mov r8, r2
008a6e20  f0 bc                                            pop {r4, r5, r6, r7}
008a6e22  08 bc                                            pop {r3}
008a6e24  02 b0                                            add sp, #8
008a6e26  18 47                                            bx r3

; FUNCTION 0x008a6ef4, declared_size=100, range_size=100, mode=thumb
; class-group: std::ostreambuf_iterator<wchar_t, std::char_traits<wchar_t> > std::priv
; alias: _ZNSt4priv10__copy_auxIPwSt19ostreambuf_iteratorIwSt11char_traitsIwEEEET0_T_S7_S6_RKSt12__false_type
; demangled: std::ostreambuf_iterator<wchar_t, std::char_traits<wchar_t> > std::priv::__copy_aux<wchar_t*, std::ostreambuf_iterator<wchar_t, std::char_traits<wchar_t> > >(wchar_t*, wchar_t*, std::ostreambuf_iterator<wchar_t, std::char_traits<wchar_t> >, std::__false_type const&)
; decoder-mode: thumb
008a6ef4  82 b0                                            sub sp, #8
008a6ef6  f0 b5                                            push {r4, r5, r6, r7, lr}
008a6ef8  47 46                                            mov r7, r8
008a6efa  80 b4                                            push {r7}
008a6efc  54 1a                                            subs r4, r2, r1
008a6efe  07 93                                            str r3, [sp, #0x1c]
008a6f00  1e 1c                                            adds r6, r3, #0
008a6f02  a4 10                                            asrs r4, r4, #2
008a6f04  07 ab                                            add r3, sp, #0x1c
008a6f06  80 46                                            mov r8, r0
008a6f08  0d 1c                                            adds r5, r1, #0
008a6f0a  1f 79                                            ldrb r7, [r3, #4]
008a6f0c  00 2c                                            cmp r4, #0
008a6f0e  0d dc                                            bgt #0x8a6f2c
008a6f10  18 e0                                            b #0x8a6f44
008a6f12  1a 1c                                            adds r2, r3, #0
008a6f14  02 c2                                            stm r2!, {r1}
008a6f16  72 61                                            str r2, [r6, #0x14]
008a6f18  18 68                                            ldr r0, [r3]
008a6f1a  01 30                                            adds r0, #1
008a6f1c  43 1e                                            subs r3, r0, #1
008a6f1e  98 41                                            sbcs r0, r3
008a6f20  40 42                                            rsbs r0, r0, #0
008a6f22  07 40                                            ands r7, r0
008a6f24  01 3c                                            subs r4, #1
008a6f26  00 2c                                            cmp r4, #0
008a6f28  0c d0                                            beq #0x8a6f44
008a6f2a  04 35                                            adds r5, #4
008a6f2c  29 68                                            ldr r1, [r5]
008a6f2e  00 2f                                            cmp r7, #0
008a6f30  f8 d0                                            beq #0x8a6f24
008a6f32  73 69                                            ldr r3, [r6, #0x14]
008a6f34  b2 69                                            ldr r2, [r6, #0x18]
008a6f36  93 42                                            cmp r3, r2
008a6f38  eb d3                                            blo #0x8a6f12
008a6f3a  33 68                                            ldr r3, [r6]
008a6f3c  30 1c                                            adds r0, r6, #0
008a6f3e  5b 6b                                            ldr r3, [r3, #0x34]
008a6f40  98 47                                            blx r3
008a6f42  ea e7                                            b #0x8a6f1a
008a6f44  43 46                                            mov r3, r8
008a6f46  40 46                                            mov r0, r8
008a6f48  1e 60                                            str r6, [r3]
008a6f4a  1f 71                                            strb r7, [r3, #4]
008a6f4c  04 bc                                            pop {r2}
008a6f4e  90 46                                            mov r8, r2
008a6f50  f0 bc                                            pop {r4, r5, r6, r7}
008a6f52  08 bc                                            pop {r3}
008a6f54  02 b0                                            add sp, #8
008a6f56  18 47                                            bx r3

; FUNCTION 0x008a70c8, declared_size=460, range_size=460, mode=thumb
; class-group: std::ostreambuf_iterator<wchar_t, std::char_traits<wchar_t> > std::priv
; alias: _ZNSt4priv23__copy_integer_and_fillIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEEET0_PKT_iS5_iiS6_S6_S6_
; demangled: std::ostreambuf_iterator<wchar_t, std::char_traits<wchar_t> > std::priv::__copy_integer_and_fill<wchar_t, std::ostreambuf_iterator<wchar_t, std::char_traits<wchar_t> > >(wchar_t const*, int, std::ostreambuf_iterator<wchar_t, std::char_traits<wchar_t> >, int, int, wchar_t, wchar_t, wchar_t)
; decoder-mode: thumb
008a70c8  82 b0                                            sub sp, #8
008a70ca  f0 b5                                            push {r4, r5, r6, r7, lr}
008a70cc  57 46                                            mov r7, sl
008a70ce  4e 46                                            mov r6, sb
008a70d0  45 46                                            mov r5, r8
008a70d2  e0 b4                                            push {r5, r6, r7}
008a70d4  92 b0                                            sub sp, #0x48
008a70d6  1e 9c                                            ldr r4, [sp, #0x78]
008a70d8  82 46                                            mov sl, r0
008a70da  17 1c                                            adds r7, r2, #0
008a70dc  1b a8                                            add r0, sp, #0x6c
008a70de  89 46                                            mov sb, r1
008a70e0  80 46                                            mov r8, r0
008a70e2  1b 93                                            str r3, [sp, #0x6c]
008a70e4  1d 9a                                            ldr r2, [sp, #0x74]
008a70e6  a7 42                                            cmp r7, r4
008a70e8  00 db                                            blt #0x8a70ec
008a70ea  81 e0                                            b #0x8a71f0
008a70ec  07 23                                            movs r3, #7
008a70ee  13 40                                            ands r3, r2
008a70f0  e4 1b                                            subs r4, r4, r7
008a70f2  01 2b                                            cmp r3, #1
008a70f4  00 d1                                            bne #0x8a70f8
008a70f6  ae e0                                            b #0x8a7256
008a70f8  04 3b                                            subs r3, #4
008a70fa  58 42                                            rsbs r0, r3, #0
008a70fc  58 41                                            adcs r0, r3
008a70fe  00 28                                            cmp r0, #0
008a7100  3e d1                                            bne #0x8a7180
008a7102  42 46                                            mov r2, r8
008a7104  1b 9e                                            ldr r6, [sp, #0x6c]
008a7106  15 79                                            ldrb r5, [r2, #4]
008a7108  00 2c                                            cmp r4, #0
008a710a  0c dc                                            bgt #0x8a7126
008a710c  17 e0                                            b #0x8a713e
008a710e  1a 1c                                            adds r2, r3, #0
008a7110  02 c2                                            stm r2!, {r1}
008a7112  72 61                                            str r2, [r6, #0x14]
008a7114  18 68                                            ldr r0, [r3]
008a7116  01 30                                            adds r0, #1
008a7118  43 1e                                            subs r3, r0, #1
008a711a  98 41                                            sbcs r0, r3
008a711c  40 42                                            rsbs r0, r0, #0
008a711e  05 40                                            ands r5, r0
008a7120  01 3c                                            subs r4, #1
008a7122  00 2c                                            cmp r4, #0
008a7124  0b d0                                            beq #0x8a713e
008a7126  1f 99                                            ldr r1, [sp, #0x7c]
008a7128  00 2d                                            cmp r5, #0
008a712a  f9 d0                                            beq #0x8a7120
008a712c  73 69                                            ldr r3, [r6, #0x14]
008a712e  b2 69                                            ldr r2, [r6, #0x18]
008a7130  93 42                                            cmp r3, r2
008a7132  ec d3                                            blo #0x8a710e
008a7134  33 68                                            ldr r3, [r6]
008a7136  30 1c                                            adds r0, r6, #0
008a7138  5b 6b                                            ldr r3, [r3, #0x34]
008a713a  98 47                                            blx r3
008a713c  eb e7                                            b #0x8a7116
008a713e  05 ab                                            add r3, sp, #0x14
008a7140  1d 71                                            strb r5, [r3, #4]
008a7142  1b 96                                            str r6, [sp, #0x6c]
008a7144  1b 79                                            ldrb r3, [r3, #4]
008a7146  40 46                                            mov r0, r8
008a7148  05 96                                            str r6, [sp, #0x14]
008a714a  03 71                                            strb r3, [r0, #4]
008a714c  03 96                                            str r6, [sp, #0xc]
008a714e  02 79                                            ldrb r2, [r0, #4]
008a7150  03 ab                                            add r3, sp, #0xc
008a7152  49 46                                            mov r1, sb
008a7154  bf 00                                            lsls r7, r7, #2
008a7156  1a 71                                            strb r2, [r3, #4]
008a7158  ca 19                                            adds r2, r1, r7
008a715a  0d a9                                            add r1, sp, #0x34
008a715c  01 91                                            str r1, [sp, #4]
008a715e  5b 68                                            ldr r3, [r3, #4]
008a7160  50 46                                            mov r0, sl
008a7162  49 46                                            mov r1, sb
008a7164  00 93                                            str r3, [sp]
008a7166  33 1c                                            adds r3, r6, #0
008a7168  ff f7 2c fe                                      bl #0x8a6dc4
008a716c  12 b0                                            add sp, #0x48
008a716e  50 46                                            mov r0, sl
008a7170  1c bc                                            pop {r2, r3, r4}
008a7172  90 46                                            mov r8, r2
008a7174  99 46                                            mov sb, r3
008a7176  a2 46                                            mov sl, r4
008a7178  f0 bc                                            pop {r4, r5, r6, r7}
008a717a  08 bc                                            pop {r3}
008a717c  02 b0                                            add sp, #8
008a717e  18 47                                            bx r3
008a7180  00 2f                                            cmp r7, #0
008a7182  06 d0                                            beq #0x8a7192
008a7184  09 68                                            ldr r1, [r1]
008a7186  20 9b                                            ldr r3, [sp, #0x80]
008a7188  99 42                                            cmp r1, r3
008a718a  41 d0                                            beq #0x8a7210
008a718c  21 9b                                            ldr r3, [sp, #0x84]
008a718e  99 42                                            cmp r1, r3
008a7190  3e d0                                            beq #0x8a7210
008a7192  00 28                                            cmp r0, #0
008a7194  b5 d0                                            beq #0x8a7102
008a7196  01 2f                                            cmp r7, #1
008a7198  b3 dd                                            ble #0x8a7102
008a719a  8e 23                                            movs r3, #0x8e
008a719c  9b 00                                            lsls r3, r3, #2
008a719e  1a 40                                            ands r2, r3
008a71a0  84 23                                            movs r3, #0x84
008a71a2  9b 00                                            lsls r3, r3, #2
008a71a4  9a 42                                            cmp r2, r3
008a71a6  ac d1                                            bne #0x8a7102
008a71a8  4a 46                                            mov r2, sb
008a71aa  11 68                                            ldr r1, [r2]
008a71ac  40 46                                            mov r0, r8
008a71ae  fd f7 63 fc                                      bl #0x8a4a78
008a71b2  4b 46                                            mov r3, sb
008a71b4  59 68                                            ldr r1, [r3, #4]
008a71b6  40 46                                            mov r0, r8
008a71b8  fd f7 5e fc                                      bl #0x8a4a78
008a71bc  1f ab                                            add r3, sp, #0x7c
008a71be  00 93                                            str r3, [sp]
008a71c0  07 ad                                            add r5, sp, #0x1c
008a71c2  43 46                                            mov r3, r8
008a71c4  5a 68                                            ldr r2, [r3, #4]
008a71c6  28 1c                                            adds r0, r5, #0
008a71c8  23 1c                                            adds r3, r4, #0
008a71ca  1b 99                                            ldr r1, [sp, #0x6c]
008a71cc  ff f7 ca fd                                      bl #0x8a6d64
008a71d0  07 9b                                            ldr r3, [sp, #0x1c]
008a71d2  40 46                                            mov r0, r8
008a71d4  41 46                                            mov r1, r8
008a71d6  1b 93                                            str r3, [sp, #0x6c]
008a71d8  2a 79                                            ldrb r2, [r5, #4]
008a71da  0e ac                                            add r4, sp, #0x38
008a71dc  02 71                                            strb r2, [r0, #4]
008a71de  03 93                                            str r3, [sp, #0xc]
008a71e0  0a 79                                            ldrb r2, [r1, #4]
008a71e2  03 a8                                            add r0, sp, #0xc
008a71e4  49 46                                            mov r1, sb
008a71e6  02 71                                            strb r2, [r0, #4]
008a71e8  ba 00                                            lsls r2, r7, #2
008a71ea  08 31                                            adds r1, #8
008a71ec  4a 44                                            add r2, sb
008a71ee  2b e0                                            b #0x8a7248
008a71f0  03 93                                            str r3, [sp, #0xc]
008a71f2  02 79                                            ldrb r2, [r0, #4]
008a71f4  03 a9                                            add r1, sp, #0xc
008a71f6  48 46                                            mov r0, sb
008a71f8  bf 00                                            lsls r7, r7, #2
008a71fa  0a 71                                            strb r2, [r1, #4]
008a71fc  c2 19                                            adds r2, r0, r7
008a71fe  11 a8                                            add r0, sp, #0x44
008a7200  01 90                                            str r0, [sp, #4]
008a7202  49 68                                            ldr r1, [r1, #4]
008a7204  50 46                                            mov r0, sl
008a7206  00 91                                            str r1, [sp]
008a7208  49 46                                            mov r1, sb
008a720a  ff f7 db fd                                      bl #0x8a6dc4
008a720e  ad e7                                            b #0x8a716c
008a7210  40 46                                            mov r0, r8
008a7212  fd f7 31 fc                                      bl #0x8a4a78
008a7216  1f ab                                            add r3, sp, #0x7c
008a7218  00 93                                            str r3, [sp]
008a721a  09 ad                                            add r5, sp, #0x24
008a721c  43 46                                            mov r3, r8
008a721e  5a 68                                            ldr r2, [r3, #4]
008a7220  28 1c                                            adds r0, r5, #0
008a7222  23 1c                                            adds r3, r4, #0
008a7224  1b 99                                            ldr r1, [sp, #0x6c]
008a7226  ff f7 9d fd                                      bl #0x8a6d64
008a722a  09 9b                                            ldr r3, [sp, #0x24]
008a722c  40 46                                            mov r0, r8
008a722e  41 46                                            mov r1, r8
008a7230  1b 93                                            str r3, [sp, #0x6c]
008a7232  2a 79                                            ldrb r2, [r5, #4]
008a7234  0f ac                                            add r4, sp, #0x3c
008a7236  02 71                                            strb r2, [r0, #4]
008a7238  03 93                                            str r3, [sp, #0xc]
008a723a  0a 79                                            ldrb r2, [r1, #4]
008a723c  03 a8                                            add r0, sp, #0xc
008a723e  49 46                                            mov r1, sb
008a7240  02 71                                            strb r2, [r0, #4]
008a7242  ba 00                                            lsls r2, r7, #2
008a7244  04 31                                            adds r1, #4
008a7246  4a 44                                            add r2, sb
008a7248  01 94                                            str r4, [sp, #4]
008a724a  40 68                                            ldr r0, [r0, #4]
008a724c  00 90                                            str r0, [sp]
008a724e  50 46                                            mov r0, sl
008a7250  ff f7 b8 fd                                      bl #0x8a6dc4
008a7254  8a e7                                            b #0x8a716c
008a7256  03 68                                            ldr r3, [r0]
008a7258  03 a9                                            add r1, sp, #0xc
008a725a  0b ad                                            add r5, sp, #0x2c
008a725c  03 93                                            str r3, [sp, #0xc]
008a725e  02 79                                            ldrb r2, [r0, #4]
008a7260  10 a8                                            add r0, sp, #0x40
008a7262  0a 71                                            strb r2, [r1, #4]
008a7264  01 90                                            str r0, [sp, #4]
008a7266  49 68                                            ldr r1, [r1, #4]
008a7268  ba 00                                            lsls r2, r7, #2
008a726a  4a 44                                            add r2, sb
008a726c  00 91                                            str r1, [sp]
008a726e  28 1c                                            adds r0, r5, #0
008a7270  49 46                                            mov r1, sb
008a7272  ff f7 a7 fd                                      bl #0x8a6dc4
008a7276  0b 99                                            ldr r1, [sp, #0x2c]
008a7278  43 46                                            mov r3, r8
008a727a  40 46                                            mov r0, r8
008a727c  19 60                                            str r1, [r3]
008a727e  2b 79                                            ldrb r3, [r5, #4]
008a7280  03 71                                            strb r3, [r0, #4]
008a7282  1f ab                                            add r3, sp, #0x7c
008a7284  00 93                                            str r3, [sp]
008a7286  43 46                                            mov r3, r8
008a7288  5a 68                                            ldr r2, [r3, #4]
008a728a  50 46                                            mov r0, sl
008a728c  23 1c                                            adds r3, r4, #0
008a728e  ff f7 69 fd                                      bl #0x8a6d64
008a7292  6b e7                                            b #0x8a716c

; FUNCTION 0x008a7294, declared_size=332, range_size=332, mode=thumb
; class-group: std::ostreambuf_iterator<wchar_t, std::char_traits<wchar_t> > std::priv
; alias: _ZNSt4priv13__put_integerISt19ostreambuf_iteratorIwSt11char_traitsIwEEEET_PcS6_S5_RSt8ios_baseiw
; demangled: std::ostreambuf_iterator<wchar_t, std::char_traits<wchar_t> > std::priv::__put_integer<std::ostreambuf_iterator<wchar_t, std::char_traits<wchar_t> > >(char*, char*, std::ostreambuf_iterator<wchar_t, std::char_traits<wchar_t> >, std::ios_base&, int, wchar_t)
; decoder-mode: thumb
008a7294  82 b0                                            sub sp, #8
008a7296  f0 b5                                            push {r4, r5, r6, r7, lr}
008a7298  5f 46                                            mov r7, fp
008a729a  56 46                                            mov r6, sl
008a729c  4d 46                                            mov r5, sb
008a729e  44 46                                            mov r4, r8
008a72a0  f0 b4                                            push {r4, r5, r6, r7}
008a72a2  4a 4c                                            ldr r4, [pc, #0x128]
008a72a4  92 46                                            mov sl, r2
008a72a6  4a 4a                                            ldr r2, [pc, #0x128]
008a72a8  d3 b0                                            sub sp, #0x14c
008a72aa  7c 44                                            add r4, pc
008a72ac  5d 93                                            str r3, [sp, #0x174]
008a72ae  a3 58                                            ldr r3, [r4, r2]
008a72b0  5f 9f                                            ldr r7, [sp, #0x17c]
008a72b2  8b 46                                            mov fp, r1
008a72b4  1b 68                                            ldr r3, [r3]
008a72b6  39 1c                                            adds r1, r7, #0
008a72b8  06 90                                            str r0, [sp, #0x18]
008a72ba  51 93                                            str r3, [sp, #0x144]
008a72bc  94 23                                            movs r3, #0x94
008a72be  5b 00                                            lsls r3, r3, #1
008a72c0  6b 44                                            add r3, sp, r3
008a72c2  20 31                                            adds r1, #0x20
008a72c4  18 1c                                            adds r0, r3, #0
008a72c6  07 92                                            str r2, [sp, #0x1c]
008a72c8  98 46                                            mov r8, r3
008a72ca  fc f7 49 f9                                      bl #0x8a3560
008a72ce  41 4b                                            ldr r3, [pc, #0x104]
008a72d0  40 46                                            mov r0, r8
008a72d2  e1 58                                            ldr r1, [r4, r3]
008a72d4  fc f7 6c f9                                      bl #0x8a35b0
008a72d8  03 68                                            ldr r3, [r0]
008a72da  2b 21                                            movs r1, #0x2b
008a72dc  05 1c                                            adds r5, r0, #0
008a72de  9b 6a                                            ldr r3, [r3, #0x28]
008a72e0  98 47                                            blx r3
008a72e2  09 90                                            str r0, [sp, #0x24]
008a72e4  2b 68                                            ldr r3, [r5]
008a72e6  28 1c                                            adds r0, r5, #0
008a72e8  2d 21                                            movs r1, #0x2d
008a72ea  9b 6a                                            ldr r3, [r3, #0x28]
008a72ec  98 47                                            blx r3
008a72ee  08 90                                            str r0, [sp, #0x20]
008a72f0  2b 68                                            ldr r3, [r5]
008a72f2  0a aa                                            add r2, sp, #0x28
008a72f4  91 46                                            mov sb, r2
008a72f6  de 6a                                            ldr r6, [r3, #0x2c]
008a72f8  52 46                                            mov r2, sl
008a72fa  28 1c                                            adds r0, r5, #0
008a72fc  59 46                                            mov r1, fp
008a72fe  4b 46                                            mov r3, sb
008a7300  b0 47                                            blx r6
008a7302  5a 46                                            mov r2, fp
008a7304  53 46                                            mov r3, sl
008a7306  9b 1a                                            subs r3, r3, r2
008a7308  9a 46                                            mov sl, r3
008a730a  33 4b                                            ldr r3, [pc, #0xcc]
008a730c  40 46                                            mov r0, r8
008a730e  4b ad                                            add r5, sp, #0x12c
008a7310  e1 58                                            ldr r1, [r4, r3]
008a7312  fc f7 4d f9                                      bl #0x8a35b0
008a7316  03 68                                            ldr r3, [r0]
008a7318  06 1c                                            adds r6, r0, #0
008a731a  31 1c                                            adds r1, r6, #0
008a731c  1b 69                                            ldr r3, [r3, #0x10]
008a731e  28 1c                                            adds r0, r5, #0
008a7320  98 47                                            blx r3
008a7322  6a 69                                            ldr r2, [r5, #0x14]
008a7324  2b 69                                            ldr r3, [r5, #0x10]
008a7326  9a 42                                            cmp r2, r3
008a7328  17 d0                                            beq #0x8a735a
008a732a  60 9b                                            ldr r3, [sp, #0x180]
008a732c  9b 05                                            lsls r3, r3, #0x16
008a732e  3f d4                                            bmi #0x8a73b0
008a7330  00 23                                            movs r3, #0
008a7332  9b 46                                            mov fp, r3
008a7334  33 68                                            ldr r3, [r6]
008a7336  30 1c                                            adds r0, r6, #0
008a7338  db 68                                            ldr r3, [r3, #0xc]
008a733a  98 47                                            blx r3
008a733c  52 46                                            mov r2, sl
008a733e  91 00                                            lsls r1, r2, #2
008a7340  09 9a                                            ldr r2, [sp, #0x24]
008a7342  03 1c                                            adds r3, r0, #0
008a7344  49 44                                            add r1, sb
008a7346  00 92                                            str r2, [sp]
008a7348  08 9a                                            ldr r2, [sp, #0x20]
008a734a  48 46                                            mov r0, sb
008a734c  01 92                                            str r2, [sp, #4]
008a734e  5a 46                                            mov r2, fp
008a7350  02 92                                            str r2, [sp, #8]
008a7352  2a 1c                                            adds r2, r5, #0
008a7354  12 f0 3a fb                                      bl #0x8b99cc
008a7358  82 46                                            mov sl, r0
008a735a  fb 69                                            ldr r3, [r7, #0x1c]
008a735c  00 22                                            movs r2, #0
008a735e  fa 61                                            str r2, [r7, #0x1c]
008a7360  02 93                                            str r3, [sp, #8]
008a7362  61 9b                                            ldr r3, [sp, #0x184]
008a7364  60 9a                                            ldr r2, [sp, #0x180]
008a7366  49 46                                            mov r1, sb
008a7368  03 93                                            str r3, [sp, #0xc]
008a736a  09 9b                                            ldr r3, [sp, #0x24]
008a736c  01 92                                            str r2, [sp, #4]
008a736e  08 9a                                            ldr r2, [sp, #0x20]
008a7370  04 93                                            str r3, [sp, #0x10]
008a7372  5e 9b                                            ldr r3, [sp, #0x178]
008a7374  05 92                                            str r2, [sp, #0x14]
008a7376  06 98                                            ldr r0, [sp, #0x18]
008a7378  52 46                                            mov r2, sl
008a737a  00 93                                            str r3, [sp]
008a737c  5d 9b                                            ldr r3, [sp, #0x174]
008a737e  ff f7 a3 fe                                      bl #0x8a70c8
008a7382  28 1c                                            adds r0, r5, #0
008a7384  6c f6 12 e3                                      blx #0x3139ac
008a7388  40 46                                            mov r0, r8
008a738a  fc f7 b3 f8                                      bl #0x8a34f4
008a738e  07 9a                                            ldr r2, [sp, #0x1c]
008a7390  06 98                                            ldr r0, [sp, #0x18]
008a7392  a3 58                                            ldr r3, [r4, r2]
008a7394  51 9a                                            ldr r2, [sp, #0x144]
008a7396  1b 68                                            ldr r3, [r3]
008a7398  9a 42                                            cmp r2, r3
008a739a  15 d1                                            bne #0x8a73c8
008a739c  53 b0                                            add sp, #0x14c
008a739e  3c bc                                            pop {r2, r3, r4, r5}
008a73a0  90 46                                            mov r8, r2
008a73a2  99 46                                            mov sb, r3
008a73a4  a2 46                                            mov sl, r4
008a73a6  ab 46                                            mov fp, r5
008a73a8  f0 bc                                            pop {r4, r5, r6, r7}
008a73aa  08 bc                                            pop {r3}
008a73ac  02 b0                                            add sp, #8
008a73ae  18 47                                            bx r3
008a73b0  60 9a                                            ldr r2, [sp, #0x180]
008a73b2  38 23                                            movs r3, #0x38
008a73b4  13 40                                            ands r3, r2
008a73b6  10 3b                                            subs r3, #0x10
008a73b8  10 2b                                            cmp r3, #0x10
008a73ba  b9 d8                                            bhi #0x8a7330
008a73bc  07 4a                                            ldr r2, [pc, #0x1c]
008a73be  9b 00                                            lsls r3, r3, #2
008a73c0  7a 44                                            add r2, pc
008a73c2  9b 58                                            ldr r3, [r3, r2]
008a73c4  9b 46                                            mov fp, r3
008a73c6  b5 e7                                            b #0x8a7334
008a73c8  66 f6 a2 e7                                      blx #0x30e310
; mapping-symbol data/literal pool
008a73cc  ea d7 0e 00 ac 40 00 00 44 1e 00 00 58 19 00 00  .byte 0xea, 0xd7, 0x0e, 0x00, 0xac, 0x40, 0x00, 0x00, 0x44, 0x1e, 0x00, 0x00, 0x58, 0x19, 0x00, 0x00
008a73dc  c4 e7 06 00                                      .byte 0xc4, 0xe7, 0x06, 0x00

; FUNCTION 0x008a73e0, declared_size=108, range_size=108, mode=thumb
; class-group: std::ostreambuf_iterator<wchar_t, std::char_traits<wchar_t> > std::priv
; alias: _ZNSt4priv16__do_put_integerIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEmEET0_S5_RSt8ios_baseT_T1_
; demangled: std::ostreambuf_iterator<wchar_t, std::char_traits<wchar_t> > std::priv::__do_put_integer<wchar_t, std::ostreambuf_iterator<wchar_t, std::char_traits<wchar_t> >, unsigned long>(std::ostreambuf_iterator<wchar_t, std::char_traits<wchar_t> >, std::ios_base&, wchar_t, unsigned long)
; decoder-mode: thumb
008a73e0  f0 b5                                            push {r4, r5, r6, r7, lr}
008a73e2  4f 46                                            mov r7, sb
008a73e4  46 46                                            mov r6, r8
008a73e6  c0 b4                                            push {r6, r7}
008a73e8  16 4c                                            ldr r4, [pc, #0x58]
008a73ea  1e 1c                                            adds r6, r3, #0
008a73ec  16 4b                                            ldr r3, [pc, #0x58]
008a73ee  7c 44                                            add r4, pc
008a73f0  8d b0                                            sub sp, #0x34
008a73f2  e4 58                                            ldr r4, [r4, r3]
008a73f4  77 68                                            ldr r7, [r6, #4]
008a73f6  04 ad                                            add r5, sp, #0x10
008a73f8  23 68                                            ldr r3, [r4]
008a73fa  6a 60                                            str r2, [r5, #4]
008a73fc  81 46                                            mov sb, r0
008a73fe  0b 93                                            str r3, [sp, #0x2c]
008a7400  2a 23                                            movs r3, #0x2a
008a7402  6b 44                                            add r3, sp, r3
008a7404  04 91                                            str r1, [sp, #0x10]
008a7406  18 1c                                            adds r0, r3, #0
008a7408  39 1c                                            adds r1, r7, #0
008a740a  15 9a                                            ldr r2, [sp, #0x54]
008a740c  98 46                                            mov r8, r3
008a740e  fd f7 b9 fd                                      bl #0x8a4f84
008a7412  14 9b                                            ldr r3, [sp, #0x50]
008a7414  01 96                                            str r6, [sp, #4]
008a7416  02 97                                            str r7, [sp, #8]
008a7418  03 93                                            str r3, [sp, #0xc]
008a741a  6b 68                                            ldr r3, [r5, #4]
008a741c  01 1c                                            adds r1, r0, #0
008a741e  42 46                                            mov r2, r8
008a7420  00 93                                            str r3, [sp]
008a7422  48 46                                            mov r0, sb
008a7424  04 9b                                            ldr r3, [sp, #0x10]
008a7426  ff f7 35 ff                                      bl #0x8a7294
008a742a  0b 9a                                            ldr r2, [sp, #0x2c]
008a742c  23 68                                            ldr r3, [r4]
008a742e  48 46                                            mov r0, sb
008a7430  9a 42                                            cmp r2, r3
008a7432  04 d1                                            bne #0x8a743e
008a7434  0d b0                                            add sp, #0x34
008a7436  0c bc                                            pop {r2, r3}
008a7438  90 46                                            mov r8, r2
008a743a  99 46                                            mov sb, r3
008a743c  f0 bd                                            pop {r4, r5, r6, r7, pc}
008a743e  66 f6 68 e7                                      blx #0x30e310
008a7442  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008a7444  a6 d6 0e 00 ac 40 00 00                          .byte 0xa6, 0xd6, 0x0e, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x008a7470, declared_size=108, range_size=108, mode=thumb
; class-group: std::ostreambuf_iterator<wchar_t, std::char_traits<wchar_t> > std::priv
; alias: _ZNSt4priv16__do_put_integerIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEyEET0_S5_RSt8ios_baseT_T1_
; demangled: std::ostreambuf_iterator<wchar_t, std::char_traits<wchar_t> > std::priv::__do_put_integer<wchar_t, std::ostreambuf_iterator<wchar_t, std::char_traits<wchar_t> >, unsigned long long>(std::ostreambuf_iterator<wchar_t, std::char_traits<wchar_t> >, std::ios_base&, wchar_t, unsigned long long)
; decoder-mode: thumb
008a7470  f0 b5                                            push {r4, r5, r6, r7, lr}
008a7472  4f 46                                            mov r7, sb
008a7474  46 46                                            mov r6, r8
008a7476  c0 b4                                            push {r6, r7}
008a7478  16 4c                                            ldr r4, [pc, #0x58]
008a747a  1e 1c                                            adds r6, r3, #0
008a747c  16 4b                                            ldr r3, [pc, #0x58]
008a747e  7c 44                                            add r4, pc
008a7480  8f b0                                            sub sp, #0x3c
008a7482  e4 58                                            ldr r4, [r4, r3]
008a7484  77 68                                            ldr r7, [r6, #4]
008a7486  04 ad                                            add r5, sp, #0x10
008a7488  23 68                                            ldr r3, [r4]
008a748a  6a 60                                            str r2, [r5, #4]
008a748c  81 46                                            mov sb, r0
008a748e  0d 93                                            str r3, [sp, #0x34]
008a7490  32 23                                            movs r3, #0x32
008a7492  6b 44                                            add r3, sp, r3
008a7494  04 91                                            str r1, [sp, #0x10]
008a7496  98 46                                            mov r8, r3
008a7498  18 1c                                            adds r0, r3, #0
008a749a  39 1c                                            adds r1, r7, #0
008a749c  18 9a                                            ldr r2, [sp, #0x60]
008a749e  19 9b                                            ldr r3, [sp, #0x64]
008a74a0  fd f7 d6 fd                                      bl #0x8a5050
008a74a4  16 9b                                            ldr r3, [sp, #0x58]
008a74a6  01 96                                            str r6, [sp, #4]
008a74a8  02 97                                            str r7, [sp, #8]
008a74aa  03 93                                            str r3, [sp, #0xc]
008a74ac  6b 68                                            ldr r3, [r5, #4]
008a74ae  01 1c                                            adds r1, r0, #0
008a74b0  42 46                                            mov r2, r8
008a74b2  00 93                                            str r3, [sp]
008a74b4  48 46                                            mov r0, sb
008a74b6  04 9b                                            ldr r3, [sp, #0x10]
008a74b8  ff f7 ec fe                                      bl #0x8a7294
008a74bc  0d 9a                                            ldr r2, [sp, #0x34]
008a74be  23 68                                            ldr r3, [r4]
008a74c0  48 46                                            mov r0, sb
008a74c2  9a 42                                            cmp r2, r3
008a74c4  04 d1                                            bne #0x8a74d0
008a74c6  0f b0                                            add sp, #0x3c
008a74c8  0c bc                                            pop {r2, r3}
008a74ca  90 46                                            mov r8, r2
008a74cc  99 46                                            mov sb, r3
008a74ce  f0 bd                                            pop {r4, r5, r6, r7, pc}
008a74d0  66 f6 1e e7                                      blx #0x30e310
; mapping-symbol data/literal pool
008a74d4  16 d6 0e 00 ac 40 00 00                          .byte 0x16, 0xd6, 0x0e, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x008a7504, declared_size=108, range_size=108, mode=thumb
; class-group: std::ostreambuf_iterator<wchar_t, std::char_traits<wchar_t> > std::priv
; alias: _ZNSt4priv16__do_put_integerIwSt19ostreambuf_iteratorIwSt11char_traitsIwEExEET0_S5_RSt8ios_baseT_T1_
; demangled: std::ostreambuf_iterator<wchar_t, std::char_traits<wchar_t> > std::priv::__do_put_integer<wchar_t, std::ostreambuf_iterator<wchar_t, std::char_traits<wchar_t> >, long long>(std::ostreambuf_iterator<wchar_t, std::char_traits<wchar_t> >, std::ios_base&, wchar_t, long long)
; decoder-mode: thumb
008a7504  f0 b5                                            push {r4, r5, r6, r7, lr}
008a7506  4f 46                                            mov r7, sb
008a7508  46 46                                            mov r6, r8
008a750a  c0 b4                                            push {r6, r7}
008a750c  16 4c                                            ldr r4, [pc, #0x58]
008a750e  1e 1c                                            adds r6, r3, #0
008a7510  16 4b                                            ldr r3, [pc, #0x58]
008a7512  7c 44                                            add r4, pc
008a7514  8f b0                                            sub sp, #0x3c
008a7516  e4 58                                            ldr r4, [r4, r3]
008a7518  77 68                                            ldr r7, [r6, #4]
008a751a  04 ad                                            add r5, sp, #0x10
008a751c  23 68                                            ldr r3, [r4]
008a751e  6a 60                                            str r2, [r5, #4]
008a7520  81 46                                            mov sb, r0
008a7522  0d 93                                            str r3, [sp, #0x34]
008a7524  32 23                                            movs r3, #0x32
008a7526  6b 44                                            add r3, sp, r3
008a7528  04 91                                            str r1, [sp, #0x10]
008a752a  98 46                                            mov r8, r3
008a752c  18 1c                                            adds r0, r3, #0
008a752e  39 1c                                            adds r1, r7, #0
008a7530  18 9a                                            ldr r2, [sp, #0x60]
008a7532  19 9b                                            ldr r3, [sp, #0x64]
008a7534  fd f7 fe fd                                      bl #0x8a5134
008a7538  16 9b                                            ldr r3, [sp, #0x58]
008a753a  01 96                                            str r6, [sp, #4]
008a753c  02 97                                            str r7, [sp, #8]
008a753e  03 93                                            str r3, [sp, #0xc]
008a7540  6b 68                                            ldr r3, [r5, #4]
008a7542  01 1c                                            adds r1, r0, #0
008a7544  42 46                                            mov r2, r8
008a7546  00 93                                            str r3, [sp]
008a7548  48 46                                            mov r0, sb
008a754a  04 9b                                            ldr r3, [sp, #0x10]
008a754c  ff f7 a2 fe                                      bl #0x8a7294
008a7550  0d 9a                                            ldr r2, [sp, #0x34]
008a7552  23 68                                            ldr r3, [r4]
008a7554  48 46                                            mov r0, sb
008a7556  9a 42                                            cmp r2, r3
008a7558  04 d1                                            bne #0x8a7564
008a755a  0f b0                                            add sp, #0x3c
008a755c  0c bc                                            pop {r2, r3}
008a755e  90 46                                            mov r8, r2
008a7560  99 46                                            mov sb, r3
008a7562  f0 bd                                            pop {r4, r5, r6, r7, pc}
008a7564  66 f6 d4 e6                                      blx #0x30e310
; mapping-symbol data/literal pool
008a7568  82 d5 0e 00 ac 40 00 00                          .byte 0x82, 0xd5, 0x0e, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x008a7598, declared_size=108, range_size=108, mode=thumb
; class-group: std::ostreambuf_iterator<wchar_t, std::char_traits<wchar_t> > std::priv
; alias: _ZNSt4priv16__do_put_integerIwSt19ostreambuf_iteratorIwSt11char_traitsIwEElEET0_S5_RSt8ios_baseT_T1_
; demangled: std::ostreambuf_iterator<wchar_t, std::char_traits<wchar_t> > std::priv::__do_put_integer<wchar_t, std::ostreambuf_iterator<wchar_t, std::char_traits<wchar_t> >, long>(std::ostreambuf_iterator<wchar_t, std::char_traits<wchar_t> >, std::ios_base&, wchar_t, long)
; decoder-mode: thumb
008a7598  f0 b5                                            push {r4, r5, r6, r7, lr}
008a759a  4f 46                                            mov r7, sb
008a759c  46 46                                            mov r6, r8
008a759e  c0 b4                                            push {r6, r7}
008a75a0  16 4c                                            ldr r4, [pc, #0x58]
008a75a2  1e 1c                                            adds r6, r3, #0
008a75a4  16 4b                                            ldr r3, [pc, #0x58]
008a75a6  7c 44                                            add r4, pc
008a75a8  8d b0                                            sub sp, #0x34
008a75aa  e4 58                                            ldr r4, [r4, r3]
008a75ac  77 68                                            ldr r7, [r6, #4]
008a75ae  04 ad                                            add r5, sp, #0x10
008a75b0  23 68                                            ldr r3, [r4]
008a75b2  6a 60                                            str r2, [r5, #4]
008a75b4  81 46                                            mov sb, r0
008a75b6  0b 93                                            str r3, [sp, #0x2c]
008a75b8  2a 23                                            movs r3, #0x2a
008a75ba  6b 44                                            add r3, sp, r3
008a75bc  04 91                                            str r1, [sp, #0x10]
008a75be  18 1c                                            adds r0, r3, #0
008a75c0  39 1c                                            adds r1, r7, #0
008a75c2  15 9a                                            ldr r2, [sp, #0x54]
008a75c4  98 46                                            mov r8, r3
008a75c6  fd f7 0f fe                                      bl #0x8a51e8
008a75ca  14 9b                                            ldr r3, [sp, #0x50]
008a75cc  01 96                                            str r6, [sp, #4]
008a75ce  02 97                                            str r7, [sp, #8]
008a75d0  03 93                                            str r3, [sp, #0xc]
008a75d2  6b 68                                            ldr r3, [r5, #4]
008a75d4  01 1c                                            adds r1, r0, #0
008a75d6  42 46                                            mov r2, r8
008a75d8  00 93                                            str r3, [sp]
008a75da  48 46                                            mov r0, sb
008a75dc  04 9b                                            ldr r3, [sp, #0x10]
008a75de  ff f7 59 fe                                      bl #0x8a7294
008a75e2  0b 9a                                            ldr r2, [sp, #0x2c]
008a75e4  23 68                                            ldr r3, [r4]
008a75e6  48 46                                            mov r0, sb
008a75e8  9a 42                                            cmp r2, r3
008a75ea  04 d1                                            bne #0x8a75f6
008a75ec  0d b0                                            add sp, #0x34
008a75ee  0c bc                                            pop {r2, r3}
008a75f0  90 46                                            mov r8, r2
008a75f2  99 46                                            mov sb, r3
008a75f4  f0 bd                                            pop {r4, r5, r6, r7, pc}
008a75f6  66 f6 8c e6                                      blx #0x30e310
008a75fa  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008a75fc  ee d4 0e 00 ac 40 00 00                          .byte 0xee, 0xd4, 0x0e, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x008a83cc, declared_size=392, range_size=392, mode=thumb
; class-group: std::ostreambuf_iterator<wchar_t, std::char_traits<wchar_t> > std::priv
; alias: _ZNSt4priv13__do_put_boolIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEEET0_S5_RSt8ios_baseT_b
; demangled: std::ostreambuf_iterator<wchar_t, std::char_traits<wchar_t> > std::priv::__do_put_bool<wchar_t, std::ostreambuf_iterator<wchar_t, std::char_traits<wchar_t> > >(std::ostreambuf_iterator<wchar_t, std::char_traits<wchar_t> >, std::ios_base&, wchar_t, bool)
; decoder-mode: thumb
008a83cc  f0 b5                                            push {r4, r5, r6, r7, lr}
008a83ce  57 46                                            mov r7, sl
008a83d0  4e 46                                            mov r6, sb
008a83d2  45 46                                            mov r5, r8
008a83d4  e0 b4                                            push {r5, r6, r7}
008a83d6  a0 b0                                            sub sp, #0x80
008a83d8  1d 1c                                            adds r5, r3, #0
008a83da  28 ab                                            add r3, sp, #0xa0
008a83dc  02 91                                            str r1, [sp, #8]
008a83de  02 cb                                            ldm r3!, {r1}
008a83e0  1c ae                                            add r6, sp, #0x70
008a83e2  82 46                                            mov sl, r0
008a83e4  89 46                                            mov sb, r1
008a83e6  02 a8                                            add r0, sp, #8
008a83e8  29 1c                                            adds r1, r5, #0
008a83ea  42 60                                            str r2, [r0, #4]
008a83ec  20 31                                            adds r1, #0x20
008a83ee  57 4c                                            ldr r4, [pc, #0x15c]
008a83f0  80 46                                            mov r8, r0
008a83f2  30 1c                                            adds r0, r6, #0
008a83f4  1f 78                                            ldrb r7, [r3]
008a83f6  fb f7 b3 f8                                      bl #0x8a3560
008a83fa  55 4b                                            ldr r3, [pc, #0x154]
008a83fc  7c 44                                            add r4, pc
008a83fe  30 1c                                            adds r0, r6, #0
008a8400  e1 58                                            ldr r1, [r4, r3]
008a8402  fb f7 d5 f8                                      bl #0x8a35b0
008a8406  04 1c                                            adds r4, r0, #0
008a8408  30 1c                                            adds r0, r6, #0
008a840a  fb f7 73 f8                                      bl #0x8a34f4
008a840e  00 2f                                            cmp r7, #0
008a8410  52 d0                                            beq #0x8a84b8
008a8412  23 68                                            ldr r3, [r4]
008a8414  04 af                                            add r7, sp, #0x10
008a8416  38 1c                                            adds r0, r7, #0
008a8418  5b 69                                            ldr r3, [r3, #0x14]
008a841a  21 1c                                            adds r1, r4, #0
008a841c  98 47                                            blx r3
008a841e  00 22                                            movs r2, #0
008a8420  eb 69                                            ldr r3, [r5, #0x1c]
008a8422  ea 61                                            str r2, [r5, #0x1c]
008a8424  3a 6c                                            ldr r2, [r7, #0x40]
008a8426  79 6c                                            ldr r1, [r7, #0x44]
008a8428  54 1a                                            subs r4, r2, r1
008a842a  a4 10                                            asrs r4, r4, #2
008a842c  a3 42                                            cmp r3, r4
008a842e  4a d9                                            bls #0x8a84c6
008a8430  1c 1b                                            subs r4, r3, r4
008a8432  6b 68                                            ldr r3, [r5, #4]
008a8434  07 20                                            movs r0, #7
008a8436  03 40                                            ands r3, r0
008a8438  01 2b                                            cmp r3, #1
008a843a  52 d0                                            beq #0x8a84e2
008a843c  43 46                                            mov r3, r8
008a843e  02 9e                                            ldr r6, [sp, #8]
008a8440  1d 79                                            ldrb r5, [r3, #4]
008a8442  00 2c                                            cmp r4, #0
008a8444  2c dc                                            bgt #0x8a84a0
008a8446  18 ab                                            add r3, sp, #0x60
008a8448  1d 71                                            strb r5, [r3, #4]
008a844a  02 96                                            str r6, [sp, #8]
008a844c  1b 79                                            ldrb r3, [r3, #4]
008a844e  41 46                                            mov r1, r8
008a8450  18 96                                            str r6, [sp, #0x60]
008a8452  44 46                                            mov r4, r8
008a8454  0b 71                                            strb r3, [r1, #4]
008a8456  20 79                                            ldrb r0, [r4, #4]
008a8458  16 ab                                            add r3, sp, #0x58
008a845a  79 6c                                            ldr r1, [r7, #0x44]
008a845c  18 71                                            strb r0, [r3, #4]
008a845e  1d a8                                            add r0, sp, #0x74
008a8460  3a 6c                                            ldr r2, [r7, #0x40]
008a8462  01 90                                            str r0, [sp, #4]
008a8464  5b 68                                            ldr r3, [r3, #4]
008a8466  50 46                                            mov r0, sl
008a8468  16 96                                            str r6, [sp, #0x58]
008a846a  00 93                                            str r3, [sp]
008a846c  33 1c                                            adds r3, r6, #0
008a846e  fe f7 41 fd                                      bl #0x8a6ef4
008a8472  38 1c                                            adds r0, r7, #0
008a8474  70 f6 9c e7                                      blx #0x3193b0
008a8478  20 b0                                            add sp, #0x80
008a847a  50 46                                            mov r0, sl
008a847c  1c bc                                            pop {r2, r3, r4}
008a847e  90 46                                            mov r8, r2
008a8480  99 46                                            mov sb, r3
008a8482  a2 46                                            mov sl, r4
008a8484  f0 bd                                            pop {r4, r5, r6, r7, pc}
008a8486  1a 1c                                            adds r2, r3, #0
008a8488  48 46                                            mov r0, sb
008a848a  01 c2                                            stm r2!, {r0}
008a848c  72 61                                            str r2, [r6, #0x14]
008a848e  18 68                                            ldr r0, [r3]
008a8490  01 30                                            adds r0, #1
008a8492  43 1e                                            subs r3, r0, #1
008a8494  98 41                                            sbcs r0, r3
008a8496  40 42                                            rsbs r0, r0, #0
008a8498  05 40                                            ands r5, r0
008a849a  01 3c                                            subs r4, #1
008a849c  00 2c                                            cmp r4, #0
008a849e  d2 d0                                            beq #0x8a8446
008a84a0  00 2d                                            cmp r5, #0
008a84a2  fa d0                                            beq #0x8a849a
008a84a4  73 69                                            ldr r3, [r6, #0x14]
008a84a6  b2 69                                            ldr r2, [r6, #0x18]
008a84a8  93 42                                            cmp r3, r2
008a84aa  ec d3                                            blo #0x8a8486
008a84ac  33 68                                            ldr r3, [r6]
008a84ae  30 1c                                            adds r0, r6, #0
008a84b0  49 46                                            mov r1, sb
008a84b2  5b 6b                                            ldr r3, [r3, #0x34]
008a84b4  98 47                                            blx r3
008a84b6  eb e7                                            b #0x8a8490
008a84b8  23 68                                            ldr r3, [r4]
008a84ba  04 af                                            add r7, sp, #0x10
008a84bc  38 1c                                            adds r0, r7, #0
008a84be  9b 69                                            ldr r3, [r3, #0x18]
008a84c0  21 1c                                            adds r1, r4, #0
008a84c2  98 47                                            blx r3
008a84c4  ab e7                                            b #0x8a841e
008a84c6  45 46                                            mov r5, r8
008a84c8  2c 79                                            ldrb r4, [r5, #4]
008a84ca  16 a8                                            add r0, sp, #0x58
008a84cc  02 9b                                            ldr r3, [sp, #8]
008a84ce  04 71                                            strb r4, [r0, #4]
008a84d0  1f ac                                            add r4, sp, #0x7c
008a84d2  01 94                                            str r4, [sp, #4]
008a84d4  40 68                                            ldr r0, [r0, #4]
008a84d6  16 93                                            str r3, [sp, #0x58]
008a84d8  00 90                                            str r0, [sp]
008a84da  50 46                                            mov r0, sl
008a84dc  fe f7 0a fd                                      bl #0x8a6ef4
008a84e0  c7 e7                                            b #0x8a8472
008a84e2  46 46                                            mov r6, r8
008a84e4  35 79                                            ldrb r5, [r6, #4]
008a84e6  16 a8                                            add r0, sp, #0x58
008a84e8  02 9b                                            ldr r3, [sp, #8]
008a84ea  05 71                                            strb r5, [r0, #4]
008a84ec  1e ad                                            add r5, sp, #0x78
008a84ee  01 95                                            str r5, [sp, #4]
008a84f0  40 68                                            ldr r0, [r0, #4]
008a84f2  1a ae                                            add r6, sp, #0x68
008a84f4  16 93                                            str r3, [sp, #0x58]
008a84f6  00 90                                            str r0, [sp]
008a84f8  30 1c                                            adds r0, r6, #0
008a84fa  fe f7 fb fc                                      bl #0x8a6ef4
008a84fe  1a 9d                                            ldr r5, [sp, #0x68]
008a8500  40 46                                            mov r0, r8
008a8502  02 95                                            str r5, [sp, #8]
008a8504  33 79                                            ldrb r3, [r6, #4]
008a8506  03 71                                            strb r3, [r0, #4]
008a8508  06 79                                            ldrb r6, [r0, #4]
008a850a  00 2c                                            cmp r4, #0
008a850c  0d dc                                            bgt #0x8a852a
008a850e  18 e0                                            b #0x8a8542
008a8510  1a 1c                                            adds r2, r3, #0
008a8512  49 46                                            mov r1, sb
008a8514  02 c2                                            stm r2!, {r1}
008a8516  6a 61                                            str r2, [r5, #0x14]
008a8518  18 68                                            ldr r0, [r3]
008a851a  43 1c                                            adds r3, r0, #1
008a851c  5a 1e                                            subs r2, r3, #1
008a851e  93 41                                            sbcs r3, r2
008a8520  5b 42                                            rsbs r3, r3, #0
008a8522  1e 40                                            ands r6, r3
008a8524  01 3c                                            subs r4, #1
008a8526  00 2c                                            cmp r4, #0
008a8528  0b d0                                            beq #0x8a8542
008a852a  00 2e                                            cmp r6, #0
008a852c  fa d0                                            beq #0x8a8524
008a852e  6b 69                                            ldr r3, [r5, #0x14]
008a8530  aa 69                                            ldr r2, [r5, #0x18]
008a8532  93 42                                            cmp r3, r2
008a8534  ec d3                                            blo #0x8a8510
008a8536  2b 68                                            ldr r3, [r5]
008a8538  28 1c                                            adds r0, r5, #0
008a853a  49 46                                            mov r1, sb
008a853c  5b 6b                                            ldr r3, [r3, #0x34]
008a853e  98 47                                            blx r3
008a8540  eb e7                                            b #0x8a851a
008a8542  52 46                                            mov r2, sl
008a8544  15 60                                            str r5, [r2]
008a8546  16 71                                            strb r6, [r2, #4]
008a8548  93 e7                                            b #0x8a8472
008a854a  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008a854c  98 c6 0e 00 58 19 00 00                          .byte 0x98, 0xc6, 0x0e, 0x00, 0x58, 0x19, 0x00, 0x00

; FUNCTION 0x008abeac, declared_size=414, range_size=414, mode=thumb
; class-group: std::ostreambuf_iterator<wchar_t, std::char_traits<wchar_t> > std::priv
; alias: _ZNSt4priv21__copy_float_and_fillIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEEET0_PKT_S8_S5_iiS6_S6_S6_
; demangled: std::ostreambuf_iterator<wchar_t, std::char_traits<wchar_t> > std::priv::__copy_float_and_fill<wchar_t, std::ostreambuf_iterator<wchar_t, std::char_traits<wchar_t> > >(wchar_t const*, wchar_t const*, std::ostreambuf_iterator<wchar_t, std::char_traits<wchar_t> >, int, int, wchar_t, wchar_t, wchar_t)
; decoder-mode: thumb
008abeac  82 b0                                            sub sp, #8
008abeae  f0 b5                                            push {r4, r5, r6, r7, lr}
008abeb0  57 46                                            mov r7, sl
008abeb2  4e 46                                            mov r6, sb
008abeb4  45 46                                            mov r5, r8
008abeb6  e0 b4                                            push {r5, r6, r7}
008abeb8  8e b0                                            sub sp, #0x38
008abeba  17 93                                            str r3, [sp, #0x5c]
008abebc  1a 9b                                            ldr r3, [sp, #0x68]
008abebe  54 1a                                            subs r4, r2, r1
008abec0  82 46                                            mov sl, r0
008abec2  a4 10                                            asrs r4, r4, #2
008abec4  17 a8                                            add r0, sp, #0x5c
008abec6  0f 1c                                            adds r7, r1, #0
008abec8  91 46                                            mov sb, r2
008abeca  80 46                                            mov r8, r0
008abecc  9c 42                                            cmp r4, r3
008abece  00 db                                            blt #0x8abed2
008abed0  7d e0                                            b #0x8abfce
008abed2  19 9a                                            ldr r2, [sp, #0x64]
008abed4  1c 1b                                            subs r4, r3, r4
008abed6  07 23                                            movs r3, #7
008abed8  13 40                                            ands r3, r2
008abeda  01 2b                                            cmp r3, #1
008abedc  00 d1                                            bne #0x8abee0
008abede  94 e0                                            b #0x8ac00a
008abee0  04 2b                                            cmp r3, #4
008abee2  3c d0                                            beq #0x8abf5e
008abee4  43 46                                            mov r3, r8
008abee6  17 9e                                            ldr r6, [sp, #0x5c]
008abee8  1d 79                                            ldrb r5, [r3, #4]
008abeea  00 2c                                            cmp r4, #0
008abeec  0c dc                                            bgt #0x8abf08
008abeee  17 e0                                            b #0x8abf20
008abef0  1a 1c                                            adds r2, r3, #0
008abef2  02 c2                                            stm r2!, {r1}
008abef4  72 61                                            str r2, [r6, #0x14]
008abef6  18 68                                            ldr r0, [r3]
008abef8  01 30                                            adds r0, #1
008abefa  43 1e                                            subs r3, r0, #1
008abefc  98 41                                            sbcs r0, r3
008abefe  40 42                                            rsbs r0, r0, #0
008abf00  05 40                                            ands r5, r0
008abf02  01 3c                                            subs r4, #1
008abf04  00 2c                                            cmp r4, #0
008abf06  0b d0                                            beq #0x8abf20
008abf08  1b 99                                            ldr r1, [sp, #0x6c]
008abf0a  00 2d                                            cmp r5, #0
008abf0c  f9 d0                                            beq #0x8abf02
008abf0e  73 69                                            ldr r3, [r6, #0x14]
008abf10  b2 69                                            ldr r2, [r6, #0x18]
008abf12  93 42                                            cmp r3, r2
008abf14  ec d3                                            blo #0x8abef0
008abf16  33 68                                            ldr r3, [r6]
008abf18  30 1c                                            adds r0, r6, #0
008abf1a  5b 6b                                            ldr r3, [r3, #0x34]
008abf1c  98 47                                            blx r3
008abf1e  eb e7                                            b #0x8abef8
008abf20  04 ab                                            add r3, sp, #0x10
008abf22  1d 71                                            strb r5, [r3, #4]
008abf24  17 96                                            str r6, [sp, #0x5c]
008abf26  1b 79                                            ldrb r3, [r3, #4]
008abf28  40 46                                            mov r0, r8
008abf2a  04 96                                            str r6, [sp, #0x10]
008abf2c  03 71                                            strb r3, [r0, #4]
008abf2e  02 96                                            str r6, [sp, #8]
008abf30  02 79                                            ldrb r2, [r0, #4]
008abf32  02 ab                                            add r3, sp, #8
008abf34  1a 71                                            strb r2, [r3, #4]
008abf36  0a aa                                            add r2, sp, #0x28
008abf38  01 92                                            str r2, [sp, #4]
008abf3a  5b 68                                            ldr r3, [r3, #4]
008abf3c  50 46                                            mov r0, sl
008abf3e  39 1c                                            adds r1, r7, #0
008abf40  00 93                                            str r3, [sp]
008abf42  4a 46                                            mov r2, sb
008abf44  33 1c                                            adds r3, r6, #0
008abf46  fa f7 3d ff                                      bl #0x8a6dc4
008abf4a  0e b0                                            add sp, #0x38
008abf4c  50 46                                            mov r0, sl
008abf4e  1c bc                                            pop {r2, r3, r4}
008abf50  90 46                                            mov r8, r2
008abf52  99 46                                            mov sb, r3
008abf54  a2 46                                            mov sl, r4
008abf56  f0 bc                                            pop {r4, r5, r6, r7}
008abf58  08 bc                                            pop {r3}
008abf5a  02 b0                                            add sp, #8
008abf5c  18 47                                            bx r3
008abf5e  49 45                                            cmp r1, sb
008abf60  c0 d0                                            beq #0x8abee4
008abf62  09 68                                            ldr r1, [r1]
008abf64  1c 9b                                            ldr r3, [sp, #0x70]
008abf66  99 42                                            cmp r1, r3
008abf68  02 d0                                            beq #0x8abf70
008abf6a  1d 9b                                            ldr r3, [sp, #0x74]
008abf6c  99 42                                            cmp r1, r3
008abf6e  b9 d1                                            bne #0x8abee4
008abf70  40 46                                            mov r0, r8
008abf72  03 79                                            ldrb r3, [r0, #4]
008abf74  04 37                                            adds r7, #4
008abf76  00 2b                                            cmp r3, #0
008abf78  38 d0                                            beq #0x8abfec
008abf7a  17 98                                            ldr r0, [sp, #0x5c]
008abf7c  43 69                                            ldr r3, [r0, #0x14]
008abf7e  82 69                                            ldr r2, [r0, #0x18]
008abf80  93 42                                            cmp r3, r2
008abf82  5e d2                                            bhs #0x8ac042
008abf84  1a 1c                                            adds r2, r3, #0
008abf86  02 c2                                            stm r2!, {r1}
008abf88  42 61                                            str r2, [r0, #0x14]
008abf8a  18 68                                            ldr r0, [r3]
008abf8c  01 25                                            movs r5, #1
008abf8e  01 30                                            adds r0, #1
008abf90  2c d0                                            beq #0x8abfec
008abf92  41 46                                            mov r1, r8
008abf94  0d 71                                            strb r5, [r1, #4]
008abf96  17 9e                                            ldr r6, [sp, #0x5c]
008abf98  00 2c                                            cmp r4, #0
008abf9a  0c dc                                            bgt #0x8abfb6
008abf9c  28 e0                                            b #0x8abff0
008abf9e  1a 1c                                            adds r2, r3, #0
008abfa0  02 c2                                            stm r2!, {r1}
008abfa2  72 61                                            str r2, [r6, #0x14]
008abfa4  18 68                                            ldr r0, [r3]
008abfa6  43 1c                                            adds r3, r0, #1
008abfa8  5a 1e                                            subs r2, r3, #1
008abfaa  93 41                                            sbcs r3, r2
008abfac  5b 42                                            rsbs r3, r3, #0
008abfae  1d 40                                            ands r5, r3
008abfb0  01 3c                                            subs r4, #1
008abfb2  00 2c                                            cmp r4, #0
008abfb4  1c d0                                            beq #0x8abff0
008abfb6  1b 99                                            ldr r1, [sp, #0x6c]
008abfb8  00 2d                                            cmp r5, #0
008abfba  f9 d0                                            beq #0x8abfb0
008abfbc  73 69                                            ldr r3, [r6, #0x14]
008abfbe  b2 69                                            ldr r2, [r6, #0x18]
008abfc0  93 42                                            cmp r3, r2
008abfc2  ec d3                                            blo #0x8abf9e
008abfc4  33 68                                            ldr r3, [r6]
008abfc6  30 1c                                            adds r0, r6, #0
008abfc8  5b 6b                                            ldr r3, [r3, #0x34]
008abfca  98 47                                            blx r3
008abfcc  eb e7                                            b #0x8abfa6
008abfce  17 9b                                            ldr r3, [sp, #0x5c]
008abfd0  02 aa                                            add r2, sp, #8
008abfd2  02 93                                            str r3, [sp, #8]
008abfd4  01 79                                            ldrb r1, [r0, #4]
008abfd6  50 46                                            mov r0, sl
008abfd8  11 71                                            strb r1, [r2, #4]
008abfda  0d a9                                            add r1, sp, #0x34
008abfdc  01 91                                            str r1, [sp, #4]
008abfde  52 68                                            ldr r2, [r2, #4]
008abfe0  39 1c                                            adds r1, r7, #0
008abfe2  00 92                                            str r2, [sp]
008abfe4  4a 46                                            mov r2, sb
008abfe6  fa f7 ed fe                                      bl #0x8a6dc4
008abfea  ae e7                                            b #0x8abf4a
008abfec  00 25                                            movs r5, #0
008abfee  d0 e7                                            b #0x8abf92
008abff0  06 ab                                            add r3, sp, #0x18
008abff2  1d 71                                            strb r5, [r3, #4]
008abff4  17 96                                            str r6, [sp, #0x5c]
008abff6  1b 79                                            ldrb r3, [r3, #4]
008abff8  42 46                                            mov r2, r8
008abffa  06 96                                            str r6, [sp, #0x18]
008abffc  13 71                                            strb r3, [r2, #4]
008abffe  02 96                                            str r6, [sp, #8]
008ac000  12 79                                            ldrb r2, [r2, #4]
008ac002  02 ab                                            add r3, sp, #8
008ac004  1a 71                                            strb r2, [r3, #4]
008ac006  0b aa                                            add r2, sp, #0x2c
008ac008  96 e7                                            b #0x8abf38
008ac00a  03 68                                            ldr r3, [r0]
008ac00c  02 aa                                            add r2, sp, #8
008ac00e  08 ad                                            add r5, sp, #0x20
008ac010  02 93                                            str r3, [sp, #8]
008ac012  01 79                                            ldrb r1, [r0, #4]
008ac014  28 1c                                            adds r0, r5, #0
008ac016  11 71                                            strb r1, [r2, #4]
008ac018  0c a9                                            add r1, sp, #0x30
008ac01a  01 91                                            str r1, [sp, #4]
008ac01c  52 68                                            ldr r2, [r2, #4]
008ac01e  39 1c                                            adds r1, r7, #0
008ac020  00 92                                            str r2, [sp]
008ac022  4a 46                                            mov r2, sb
008ac024  fa f7 ce fe                                      bl #0x8a6dc4
008ac028  08 99                                            ldr r1, [sp, #0x20]
008ac02a  42 46                                            mov r2, r8
008ac02c  50 46                                            mov r0, sl
008ac02e  11 60                                            str r1, [r2]
008ac030  2b 79                                            ldrb r3, [r5, #4]
008ac032  13 71                                            strb r3, [r2, #4]
008ac034  1b ab                                            add r3, sp, #0x6c
008ac036  00 93                                            str r3, [sp]
008ac038  52 68                                            ldr r2, [r2, #4]
008ac03a  23 1c                                            adds r3, r4, #0
008ac03c  fa f7 92 fe                                      bl #0x8a6d64
008ac040  83 e7                                            b #0x8abf4a
008ac042  03 68                                            ldr r3, [r0]
008ac044  5b 6b                                            ldr r3, [r3, #0x34]
008ac046  98 47                                            blx r3
008ac048  a0 e7                                            b #0x8abf8c

; FUNCTION 0x008ac04c, declared_size=372, range_size=372, mode=thumb
; class-group: std::ostreambuf_iterator<wchar_t, std::char_traits<wchar_t> > std::priv
; alias: _ZNSt4priv11__put_floatISt19ostreambuf_iteratorIwSt11char_traitsIwEEEET_RNS_16__basic_iostringIcEES5_RSt8ios_basewwwjRKSs
; demangled: std::ostreambuf_iterator<wchar_t, std::char_traits<wchar_t> > std::priv::__put_float<std::ostreambuf_iterator<wchar_t, std::char_traits<wchar_t> > >(std::priv::__basic_iostring<char>&, std::ostreambuf_iterator<wchar_t, std::char_traits<wchar_t> >, std::ios_base&, wchar_t, wchar_t, wchar_t, unsigned int, std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&)
; decoder-mode: thumb
008ac04c  f0 b5                                            push {r4, r5, r6, r7, lr}
008ac04e  5f 46                                            mov r7, fp
008ac050  56 46                                            mov r6, sl
008ac052  4d 46                                            mov r5, sb
008ac054  44 46                                            mov r4, r8
008ac056  f0 b4                                            push {r4, r5, r6, r7}
008ac058  4e 4c                                            ldr r4, [pc, #0x138]
008ac05a  4f 4f                                            ldr r7, [pc, #0x13c]
008ac05c  8b 46                                            mov fp, r1
008ac05e  a5 44                                            add sp, r4
008ac060  08 a9                                            add r1, sp, #0x20
008ac062  08 92                                            str r2, [sp, #0x20]
008ac064  4b 60                                            str r3, [r1, #4]
008ac066  6f 44                                            add r7, sp, r7
008ac068  4c 4b                                            ldr r3, [pc, #0x130]
008ac06a  88 46                                            mov r8, r1
008ac06c  4c 4a                                            ldr r2, [pc, #0x130]
008ac06e  39 68                                            ldr r1, [r7]
008ac070  6b 44                                            add r3, sp, r3
008ac072  6a 44                                            add r2, sp, r2
008ac074  20 31                                            adds r1, #0x20
008ac076  4b 4c                                            ldr r4, [pc, #0x12c]
008ac078  82 46                                            mov sl, r0
008ac07a  18 1c                                            adds r0, r3, #0
008ac07c  16 68                                            ldr r6, [r2]
008ac07e  99 46                                            mov sb, r3
008ac080  f7 f7 6e fa                                      bl #0x8a3560
008ac084  48 4b                                            ldr r3, [pc, #0x120]
008ac086  7c 44                                            add r4, pc
008ac088  48 46                                            mov r0, sb
008ac08a  e1 58                                            ldr r1, [r4, r3]
008ac08c  f7 f7 90 fa                                      bl #0x8a35b0
008ac090  05 1c                                            adds r5, r0, #0
008ac092  48 46                                            mov r0, sb
008ac094  f7 f7 2e fa                                      bl #0x8a34f4
008ac098  8f 21                                            movs r1, #0x8f
008ac09a  0b ac                                            add r4, sp, #0x2c
008ac09c  c9 00                                            lsls r1, r1, #3
008ac09e  69 44                                            add r1, sp, r1
008ac0a0  42 4a                                            ldr r2, [pc, #0x108]
008ac0a2  24 64                                            str r4, [r4, #0x40]
008ac0a4  1c a8                                            add r0, sp, #0x70
008ac0a6  62 f6 e0 e3                                      blx #0x30e868
008ac0aa  89 23                                            movs r3, #0x89
008ac0ac  db 00                                            lsls r3, r3, #3
008ac0ae  e4 50                                            str r4, [r4, r3]
008ac0b0  20 1c                                            adds r0, r4, #0
008ac0b2  f9 f7 79 fe                                      bl #0x8a5da8
008ac0b6  23 6c                                            ldr r3, [r4, #0x40]
008ac0b8  00 21                                            movs r1, #0
008ac0ba  8b 27                                            movs r7, #0x8b
008ac0bc  19 60                                            str r1, [r3]
008ac0be  3f 01                                            lsls r7, r7, #4
008ac0c0  01 23                                            movs r3, #1
008ac0c2  00 93                                            str r3, [sp]
008ac0c4  6f 44                                            add r7, sp, r7
008ac0c6  2a 1c                                            adds r2, r5, #0
008ac0c8  3b 68                                            ldr r3, [r7]
008ac0ca  89 46                                            mov sb, r1
008ac0cc  58 46                                            mov r0, fp
008ac0ce  21 1c                                            adds r1, r4, #0
008ac0d0  0e f0 ce fe                                      bl #0x8bae70
008ac0d4  72 69                                            ldr r2, [r6, #0x14]
008ac0d6  33 69                                            ldr r3, [r6, #0x10]
008ac0d8  9a 42                                            cmp r2, r3
008ac0da  19 d0                                            beq #0x8ac110
008ac0dc  2b 68                                            ldr r3, [r5]
008ac0de  2b 21                                            movs r1, #0x2b
008ac0e0  28 1c                                            adds r0, r5, #0
008ac0e2  9b 6a                                            ldr r3, [r3, #0x28]
008ac0e4  98 47                                            blx r3
008ac0e6  2b 68                                            ldr r3, [r5]
008ac0e8  83 46                                            mov fp, r0
008ac0ea  2d 21                                            movs r1, #0x2d
008ac0ec  9b 6a                                            ldr r3, [r3, #0x28]
008ac0ee  28 1c                                            adds r0, r5, #0
008ac0f0  98 47                                            blx r3
008ac0f2  4a 46                                            mov r2, sb
008ac0f4  02 92                                            str r2, [sp, #8]
008ac0f6  2e 4b                                            ldr r3, [pc, #0xb8]
008ac0f8  32 1c                                            adds r2, r6, #0
008ac0fa  2e 4e                                            ldr r6, [pc, #0xb8]
008ac0fc  59 46                                            mov r1, fp
008ac0fe  01 90                                            str r0, [sp, #4]
008ac100  00 91                                            str r1, [sp]
008ac102  6b 44                                            add r3, sp, r3
008ac104  6e 44                                            add r6, sp, r6
008ac106  19 68                                            ldr r1, [r3]
008ac108  20 1c                                            adds r0, r4, #0
008ac10a  33 68                                            ldr r3, [r6]
008ac10c  0d f0 b0 fe                                      bl #0x8b9e70
008ac110  21 49                                            ldr r1, [pc, #0x84]
008ac112  89 23                                            movs r3, #0x89
008ac114  db 00                                            lsls r3, r3, #3
008ac116  69 44                                            add r1, sp, r1
008ac118  09 68                                            ldr r1, [r1]
008ac11a  e6 58                                            ldr r6, [r4, r3]
008ac11c  1e 4a                                            ldr r2, [pc, #0x78]
008ac11e  49 68                                            ldr r1, [r1, #4]
008ac120  23 6c                                            ldr r3, [r4, #0x40]
008ac122  6a 44                                            add r2, sp, r2
008ac124  89 46                                            mov sb, r1
008ac126  1c 49                                            ldr r1, [pc, #0x70]
008ac128  9b 1b                                            subs r3, r3, r6
008ac12a  12 68                                            ldr r2, [r2]
008ac12c  69 44                                            add r1, sp, r1
008ac12e  09 68                                            ldr r1, [r1]
008ac130  9b 10                                            asrs r3, r3, #2
008ac132  9b 00                                            lsls r3, r3, #2
008ac134  f7 18                                            adds r7, r6, r3
008ac136  00 23                                            movs r3, #0
008ac138  d2 69                                            ldr r2, [r2, #0x1c]
008ac13a  cb 61                                            str r3, [r1, #0x1c]
008ac13c  2b 68                                            ldr r3, [r5]
008ac13e  28 1c                                            adds r0, r5, #0
008ac140  2b 21                                            movs r1, #0x2b
008ac142  9b 6a                                            ldr r3, [r3, #0x28]
008ac144  93 46                                            mov fp, r2
008ac146  98 47                                            blx r3
008ac148  2b 68                                            ldr r3, [r5]
008ac14a  04 1c                                            adds r4, r0, #0
008ac14c  2d 21                                            movs r1, #0x2d
008ac14e  28 1c                                            adds r0, r5, #0
008ac150  9b 6a                                            ldr r3, [r3, #0x28]
008ac152  98 47                                            blx r3
008ac154  18 49                                            ldr r1, [pc, #0x60]
008ac156  4a 46                                            mov r2, sb
008ac158  5b 46                                            mov r3, fp
008ac15a  01 92                                            str r2, [sp, #4]
008ac15c  02 93                                            str r3, [sp, #8]
008ac15e  69 44                                            add r1, sp, r1
008ac160  0b 68                                            ldr r3, [r1]
008ac162  42 46                                            mov r2, r8
008ac164  04 94                                            str r4, [sp, #0x10]
008ac166  05 90                                            str r0, [sp, #0x14]
008ac168  03 93                                            str r3, [sp, #0xc]
008ac16a  53 68                                            ldr r3, [r2, #4]
008ac16c  50 46                                            mov r0, sl
008ac16e  31 1c                                            adds r1, r6, #0
008ac170  3a 1c                                            adds r2, r7, #0
008ac172  00 93                                            str r3, [sp]
008ac174  08 9b                                            ldr r3, [sp, #0x20]
008ac176  ff f7 99 fe                                      bl #0x8abeac
008ac17a  0b a8                                            add r0, sp, #0x2c
008ac17c  f9 f7 68 fc                                      bl #0x8a5a50
008ac180  0e 4b                                            ldr r3, [pc, #0x38]
008ac182  50 46                                            mov r0, sl
008ac184  9d 44                                            add sp, r3
008ac186  3c bc                                            pop {r2, r3, r4, r5}
008ac188  90 46                                            mov r8, r2
008ac18a  99 46                                            mov sb, r3
008ac18c  a2 46                                            mov sl, r4
008ac18e  ab 46                                            mov fp, r5
008ac190  f0 bd                                            pop {r4, r5, r6, r7, pc}
008ac192  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008ac194  7c f7 ff ff a8 08 00 00 7c 08 00 00 bc 08 00 00  .byte 0x7c, 0xf7, 0xff, 0xff, 0xa8, 0x08, 0x00, 0x00, 0x7c, 0x08, 0x00, 0x00, 0xbc, 0x08, 0x00, 0x00
008ac1a4  0e 8a 0e 00 44 1e 00 00 04 04 00 00 b8 08 00 00  .byte 0x0e, 0x8a, 0x0e, 0x00, 0x44, 0x1e, 0x00, 0x00, 0x04, 0x04, 0x00, 0x00, 0xb8, 0x08, 0x00, 0x00
008ac1b4  b4 08 00 00 ac 08 00 00 84 08 00 00              .byte 0xb4, 0x08, 0x00, 0x00, 0xac, 0x08, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00

; FUNCTION 0x008ac1c0, declared_size=268, range_size=268, mode=thumb
; class-group: std::ostreambuf_iterator<wchar_t, std::char_traits<wchar_t> > std::priv
; alias: _ZNSt4priv14__do_put_floatIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEeEET0_S5_RSt8ios_baseT_T1_
; demangled: std::ostreambuf_iterator<wchar_t, std::char_traits<wchar_t> > std::priv::__do_put_float<wchar_t, std::ostreambuf_iterator<wchar_t, std::char_traits<wchar_t> >, long double>(std::ostreambuf_iterator<wchar_t, std::char_traits<wchar_t> >, std::ios_base&, wchar_t, long double)
; decoder-mode: thumb
008ac1c0  f0 b5                                            push {r4, r5, r6, r7, lr}
008ac1c2  5f 46                                            mov r7, fp
008ac1c4  56 46                                            mov r6, sl
008ac1c6  4d 46                                            mov r5, sb
008ac1c8  44 46                                            mov r4, r8
008ac1ca  f0 b4                                            push {r4, r5, r6, r7}
008ac1cc  3a 4d                                            ldr r5, [pc, #0xe8]
008ac1ce  1e 1c                                            adds r6, r3, #0
008ac1d0  3a 4b                                            ldr r3, [pc, #0xe8]
008ac1d2  7d 44                                            add r5, pc
008ac1d4  3a 4c                                            ldr r4, [pc, #0xe8]
008ac1d6  eb 58                                            ldr r3, [r5, r3]
008ac1d8  82 46                                            mov sl, r0
008ac1da  a5 44                                            add sp, r4
008ac1dc  98 46                                            mov r8, r3
008ac1de  1b 68                                            ldr r3, [r3]
008ac1e0  08 af                                            add r7, sp, #0x20
008ac1e2  0b ac                                            add r4, sp, #0x2c
008ac1e4  7a 60                                            str r2, [r7, #4]
008ac1e6  08 91                                            str r1, [sp, #0x20]
008ac1e8  36 4a                                            ldr r2, [pc, #0xd8]
008ac1ea  52 a9                                            add r1, sp, #0x148
008ac1ec  10 a8                                            add r0, sp, #0x40
008ac1ee  99 93                                            str r3, [sp, #0x264]
008ac1f0  24 61                                            str r4, [r4, #0x10]
008ac1f2  62 f6 3a e3                                      blx #0x30e868
008ac1f6  8c 23                                            movs r3, #0x8c
008ac1f8  5b 00                                            lsls r3, r3, #1
008ac1fa  20 1c                                            adds r0, r4, #0
008ac1fc  e4 50                                            str r4, [r4, r3]
008ac1fe  f9 f7 6b f8                                      bl #0x8a52d8
008ac202  23 69                                            ldr r3, [r4, #0x10]
008ac204  00 22                                            movs r2, #0
008ac206  20 1c                                            adds r0, r4, #0
008ac208  1a 70                                            strb r2, [r3]
008ac20a  b2 69                                            ldr r2, [r6, #0x18]
008ac20c  71 68                                            ldr r1, [r6, #4]
008ac20e  94 46                                            mov ip, r2
008ac210  a6 9a                                            ldr r2, [sp, #0x298]
008ac212  a7 9b                                            ldr r3, [sp, #0x29c]
008ac214  00 92                                            str r2, [sp]
008ac216  01 93                                            str r3, [sp, #4]
008ac218  62 46                                            mov r2, ip
008ac21a  0e f0 8d ff                                      bl #0x8bb138
008ac21e  0a ab                                            add r3, sp, #0x28
008ac220  31 1c                                            adds r1, r6, #0
008ac222  07 90                                            str r0, [sp, #0x1c]
008ac224  20 31                                            adds r1, #0x20
008ac226  18 1c                                            adds r0, r3, #0
008ac228  99 46                                            mov sb, r3
008ac22a  f7 f7 99 f9                                      bl #0x8a3560
008ac22e  26 4b                                            ldr r3, [pc, #0x98]
008ac230  48 46                                            mov r0, sb
008ac232  e9 58                                            ldr r1, [r5, r3]
008ac234  f7 f7 bc f9                                      bl #0x8a35b0
008ac238  05 1c                                            adds r5, r0, #0
008ac23a  48 46                                            mov r0, sb
008ac23c  f7 f7 5a f9                                      bl #0x8a34f4
008ac240  2b 68                                            ldr r3, [r5]
008ac242  28 1c                                            adds r0, r5, #0
008ac244  9b 68                                            ldr r3, [r3, #8]
008ac246  98 47                                            blx r3
008ac248  2b 68                                            ldr r3, [r5]
008ac24a  83 46                                            mov fp, r0
008ac24c  28 1c                                            adds r0, r5, #0
008ac24e  db 68                                            ldr r3, [r3, #0xc]
008ac250  98 47                                            blx r3
008ac252  06 90                                            str r0, [sp, #0x18]
008ac254  2b 68                                            ldr r3, [r5]
008ac256  93 21                                            movs r1, #0x93
008ac258  89 00                                            lsls r1, r1, #2
008ac25a  69 44                                            add r1, sp, r1
008ac25c  89 46                                            mov sb, r1
008ac25e  08 1c                                            adds r0, r1, #0
008ac260  1b 69                                            ldr r3, [r3, #0x10]
008ac262  29 1c                                            adds r1, r5, #0
008ac264  98 47                                            blx r3
008ac266  a4 9b                                            ldr r3, [sp, #0x290]
008ac268  07 99                                            ldr r1, [sp, #0x1c]
008ac26a  5a 46                                            mov r2, fp
008ac26c  01 93                                            str r3, [sp, #4]
008ac26e  06 9b                                            ldr r3, [sp, #0x18]
008ac270  02 92                                            str r2, [sp, #8]
008ac272  4a 46                                            mov r2, sb
008ac274  04 91                                            str r1, [sp, #0x10]
008ac276  05 92                                            str r2, [sp, #0x14]
008ac278  00 96                                            str r6, [sp]
008ac27a  03 93                                            str r3, [sp, #0xc]
008ac27c  21 1c                                            adds r1, r4, #0
008ac27e  08 9a                                            ldr r2, [sp, #0x20]
008ac280  7b 68                                            ldr r3, [r7, #4]
008ac282  50 46                                            mov r0, sl
008ac284  ff f7 e2 fe                                      bl #0x8ac04c
008ac288  48 46                                            mov r0, sb
008ac28a  67 f6 90 e3                                      blx #0x3139ac
008ac28e  20 1c                                            adds r0, r4, #0
008ac290  f9 f7 f8 fb                                      bl #0x8a5a84
008ac294  41 46                                            mov r1, r8
008ac296  99 9a                                            ldr r2, [sp, #0x264]
008ac298  0b 68                                            ldr r3, [r1]
008ac29a  50 46                                            mov r0, sl
008ac29c  9a 42                                            cmp r2, r3
008ac29e  08 d1                                            bne #0x8ac2b2
008ac2a0  9b 23                                            movs r3, #0x9b
008ac2a2  9b 00                                            lsls r3, r3, #2
008ac2a4  9d 44                                            add sp, r3
008ac2a6  3c bc                                            pop {r2, r3, r4, r5}
008ac2a8  90 46                                            mov r8, r2
008ac2aa  99 46                                            mov sb, r3
008ac2ac  a2 46                                            mov sl, r4
008ac2ae  ab 46                                            mov fp, r5
008ac2b0  f0 bd                                            pop {r4, r5, r6, r7, pc}
008ac2b2  62 f6 2e e0                                      blx #0x30e310
008ac2b6  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008ac2b8  c2 88 0e 00 ac 40 00 00 94 fd ff ff 01 01 00 00  .byte 0xc2, 0x88, 0x0e, 0x00, 0xac, 0x40, 0x00, 0x00, 0x94, 0xfd, 0xff, 0xff, 0x01, 0x01, 0x00, 0x00
008ac2c8  58 19 00 00                                      .byte 0x58, 0x19, 0x00, 0x00

; FUNCTION 0x008ac2f4, declared_size=268, range_size=268, mode=thumb
; class-group: std::ostreambuf_iterator<wchar_t, std::char_traits<wchar_t> > std::priv
; alias: _ZNSt4priv14__do_put_floatIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEdEET0_S5_RSt8ios_baseT_T1_
; demangled: std::ostreambuf_iterator<wchar_t, std::char_traits<wchar_t> > std::priv::__do_put_float<wchar_t, std::ostreambuf_iterator<wchar_t, std::char_traits<wchar_t> >, double>(std::ostreambuf_iterator<wchar_t, std::char_traits<wchar_t> >, std::ios_base&, wchar_t, double)
; decoder-mode: thumb
008ac2f4  f0 b5                                            push {r4, r5, r6, r7, lr}
008ac2f6  5f 46                                            mov r7, fp
008ac2f8  56 46                                            mov r6, sl
008ac2fa  4d 46                                            mov r5, sb
008ac2fc  44 46                                            mov r4, r8
008ac2fe  f0 b4                                            push {r4, r5, r6, r7}
008ac300  3a 4d                                            ldr r5, [pc, #0xe8]
008ac302  1e 1c                                            adds r6, r3, #0
008ac304  3a 4b                                            ldr r3, [pc, #0xe8]
008ac306  7d 44                                            add r5, pc
008ac308  3a 4c                                            ldr r4, [pc, #0xe8]
008ac30a  eb 58                                            ldr r3, [r5, r3]
008ac30c  82 46                                            mov sl, r0
008ac30e  a5 44                                            add sp, r4
008ac310  98 46                                            mov r8, r3
008ac312  1b 68                                            ldr r3, [r3]
008ac314  08 af                                            add r7, sp, #0x20
008ac316  0b ac                                            add r4, sp, #0x2c
008ac318  7a 60                                            str r2, [r7, #4]
008ac31a  08 91                                            str r1, [sp, #0x20]
008ac31c  36 4a                                            ldr r2, [pc, #0xd8]
008ac31e  52 a9                                            add r1, sp, #0x148
008ac320  10 a8                                            add r0, sp, #0x40
008ac322  99 93                                            str r3, [sp, #0x264]
008ac324  24 61                                            str r4, [r4, #0x10]
008ac326  62 f6 a0 e2                                      blx #0x30e868
008ac32a  8c 23                                            movs r3, #0x8c
008ac32c  5b 00                                            lsls r3, r3, #1
008ac32e  20 1c                                            adds r0, r4, #0
008ac330  e4 50                                            str r4, [r4, r3]
008ac332  f8 f7 d1 ff                                      bl #0x8a52d8
008ac336  23 69                                            ldr r3, [r4, #0x10]
008ac338  00 22                                            movs r2, #0
008ac33a  20 1c                                            adds r0, r4, #0
008ac33c  1a 70                                            strb r2, [r3]
008ac33e  b2 69                                            ldr r2, [r6, #0x18]
008ac340  71 68                                            ldr r1, [r6, #4]
008ac342  94 46                                            mov ip, r2
008ac344  a6 9a                                            ldr r2, [sp, #0x298]
008ac346  a7 9b                                            ldr r3, [sp, #0x29c]
008ac348  00 92                                            str r2, [sp]
008ac34a  01 93                                            str r3, [sp, #4]
008ac34c  62 46                                            mov r2, ip
008ac34e  0e f0 b5 fe                                      bl #0x8bb0bc
008ac352  0a ab                                            add r3, sp, #0x28
008ac354  31 1c                                            adds r1, r6, #0
008ac356  07 90                                            str r0, [sp, #0x1c]
008ac358  20 31                                            adds r1, #0x20
008ac35a  18 1c                                            adds r0, r3, #0
008ac35c  99 46                                            mov sb, r3
008ac35e  f7 f7 ff f8                                      bl #0x8a3560
008ac362  26 4b                                            ldr r3, [pc, #0x98]
008ac364  48 46                                            mov r0, sb
008ac366  e9 58                                            ldr r1, [r5, r3]
008ac368  f7 f7 22 f9                                      bl #0x8a35b0
008ac36c  05 1c                                            adds r5, r0, #0
008ac36e  48 46                                            mov r0, sb
008ac370  f7 f7 c0 f8                                      bl #0x8a34f4
008ac374  2b 68                                            ldr r3, [r5]
008ac376  28 1c                                            adds r0, r5, #0
008ac378  9b 68                                            ldr r3, [r3, #8]
008ac37a  98 47                                            blx r3
008ac37c  2b 68                                            ldr r3, [r5]
008ac37e  83 46                                            mov fp, r0
008ac380  28 1c                                            adds r0, r5, #0
008ac382  db 68                                            ldr r3, [r3, #0xc]
008ac384  98 47                                            blx r3
008ac386  06 90                                            str r0, [sp, #0x18]
008ac388  2b 68                                            ldr r3, [r5]
008ac38a  93 21                                            movs r1, #0x93
008ac38c  89 00                                            lsls r1, r1, #2
008ac38e  69 44                                            add r1, sp, r1
008ac390  89 46                                            mov sb, r1
008ac392  08 1c                                            adds r0, r1, #0
008ac394  1b 69                                            ldr r3, [r3, #0x10]
008ac396  29 1c                                            adds r1, r5, #0
008ac398  98 47                                            blx r3
008ac39a  a4 9b                                            ldr r3, [sp, #0x290]
008ac39c  07 99                                            ldr r1, [sp, #0x1c]
008ac39e  5a 46                                            mov r2, fp
008ac3a0  01 93                                            str r3, [sp, #4]
008ac3a2  06 9b                                            ldr r3, [sp, #0x18]
008ac3a4  02 92                                            str r2, [sp, #8]
008ac3a6  4a 46                                            mov r2, sb
008ac3a8  04 91                                            str r1, [sp, #0x10]
008ac3aa  05 92                                            str r2, [sp, #0x14]
008ac3ac  00 96                                            str r6, [sp]
008ac3ae  03 93                                            str r3, [sp, #0xc]
008ac3b0  21 1c                                            adds r1, r4, #0
008ac3b2  08 9a                                            ldr r2, [sp, #0x20]
008ac3b4  7b 68                                            ldr r3, [r7, #4]
008ac3b6  50 46                                            mov r0, sl
008ac3b8  ff f7 48 fe                                      bl #0x8ac04c
008ac3bc  48 46                                            mov r0, sb
008ac3be  67 f6 f6 e2                                      blx #0x3139ac
008ac3c2  20 1c                                            adds r0, r4, #0
008ac3c4  f9 f7 5e fb                                      bl #0x8a5a84
008ac3c8  41 46                                            mov r1, r8
008ac3ca  99 9a                                            ldr r2, [sp, #0x264]
008ac3cc  0b 68                                            ldr r3, [r1]
008ac3ce  50 46                                            mov r0, sl
008ac3d0  9a 42                                            cmp r2, r3
008ac3d2  08 d1                                            bne #0x8ac3e6
008ac3d4  9b 23                                            movs r3, #0x9b
008ac3d6  9b 00                                            lsls r3, r3, #2
008ac3d8  9d 44                                            add sp, r3
008ac3da  3c bc                                            pop {r2, r3, r4, r5}
008ac3dc  90 46                                            mov r8, r2
008ac3de  99 46                                            mov sb, r3
008ac3e0  a2 46                                            mov sl, r4
008ac3e2  ab 46                                            mov fp, r5
008ac3e4  f0 bd                                            pop {r4, r5, r6, r7, pc}
008ac3e6  61 f6 94 e7                                      blx #0x30e310
008ac3ea  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008ac3ec  8e 87 0e 00 ac 40 00 00 94 fd ff ff 01 01 00 00  .byte 0x8e, 0x87, 0x0e, 0x00, 0xac, 0x40, 0x00, 0x00, 0x94, 0xfd, 0xff, 0xff, 0x01, 0x01, 0x00, 0x00
008ac3fc  58 19 00 00                                      .byte 0x58, 0x19, 0x00, 0x00

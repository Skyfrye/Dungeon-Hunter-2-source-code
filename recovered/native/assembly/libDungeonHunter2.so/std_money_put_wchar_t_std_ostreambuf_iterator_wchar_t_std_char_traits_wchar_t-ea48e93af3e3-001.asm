; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008a4f24, declared_size=32, range_size=32, mode=thumb
; class-group: std::money_put<wchar_t, std::ostreambuf_iterator<wchar_t, std::char_traits<wchar_t> > >
; alias: _ZNSt9money_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEED1Ev
; demangled: std::money_put<wchar_t, std::ostreambuf_iterator<wchar_t, std::char_traits<wchar_t> > >::~money_put()
; decoder-mode: thumb
008a4f24  10 b5                                            push {r4, lr}
008a4f26  05 4b                                            ldr r3, [pc, #0x14]
008a4f28  05 4a                                            ldr r2, [pc, #0x14]
008a4f2a  04 1c                                            adds r4, r0, #0
008a4f2c  7b 44                                            add r3, pc
008a4f2e  9a 58                                            ldr r2, [r3, r2]
008a4f30  08 32                                            adds r2, #8
008a4f32  02 60                                            str r2, [r0]
008a4f34  fe f7 e2 fc                                      bl #0x8a38fc
008a4f38  20 1c                                            adds r0, r4, #0
008a4f3a  10 bd                                            pop {r4, pc}
; mapping-symbol data/literal pool
008a4f3c  68 fb 0e 00 68 3b 00 00                          .byte 0x68, 0xfb, 0x0e, 0x00, 0x68, 0x3b, 0x00, 0x00

; FUNCTION 0x008a52f0, declared_size=40, range_size=40, mode=thumb
; class-group: std::money_put<wchar_t, std::ostreambuf_iterator<wchar_t, std::char_traits<wchar_t> > >
; alias: _ZNSt9money_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEED0Ev
; demangled: std::money_put<wchar_t, std::ostreambuf_iterator<wchar_t, std::char_traits<wchar_t> > >::~money_put()
; decoder-mode: thumb
008a52f0  10 b5                                            push {r4, lr}
008a52f2  07 4b                                            ldr r3, [pc, #0x1c]
008a52f4  07 4a                                            ldr r2, [pc, #0x1c]
008a52f6  04 1c                                            adds r4, r0, #0
008a52f8  7b 44                                            add r3, pc
008a52fa  9a 58                                            ldr r2, [r3, r2]
008a52fc  08 32                                            adds r2, #8
008a52fe  02 60                                            str r2, [r0]
008a5300  fe f7 fc fa                                      bl #0x8a38fc
008a5304  20 1c                                            adds r0, r4, #0
008a5306  68 f6 d4 e7                                      blx #0x30e2b0
008a530a  20 1c                                            adds r0, r4, #0
008a530c  10 bd                                            pop {r4, pc}
008a530e  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008a5310  9c f7 0e 00 68 3b 00 00                          .byte 0x9c, 0xf7, 0x0e, 0x00, 0x68, 0x3b, 0x00, 0x00

; FUNCTION 0x008ac868, declared_size=2104, range_size=2104, mode=thumb
; class-group: std::money_put<wchar_t, std::ostreambuf_iterator<wchar_t, std::char_traits<wchar_t> > >
; alias: _ZNKSt9money_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE6do_putES3_bRSt8ios_basewe
; demangled: std::money_put<wchar_t, std::ostreambuf_iterator<wchar_t, std::char_traits<wchar_t> > >::do_put(std::ostreambuf_iterator<wchar_t, std::char_traits<wchar_t> >, bool, std::ios_base&, wchar_t, long double) const
; decoder-mode: thumb
008ac868  f0 b5                                            push {r4, r5, r6, r7, lr}
008ac86a  5f 46                                            mov r7, fp
008ac86c  56 46                                            mov r6, sl
008ac86e  4d 46                                            mov r5, sb
008ac870  44 46                                            mov r4, r8
008ac872  f0 b4                                            push {r4, r5, r6, r7}
008ac874  e7 4c                                            ldr r4, [pc, #0x39c]
008ac876  e8 49                                            ldr r1, [pc, #0x3a0]
008ac878  e8 4d                                            ldr r5, [pc, #0x3a0]
008ac87a  a5 44                                            add sp, r4
008ac87c  79 44                                            add r1, pc
008ac87e  06 91                                            str r1, [sp, #0x18]
008ac880  20 a9                                            add r1, sp, #0x80
008ac882  4b 60                                            str r3, [r1, #4]
008ac884  e6 4b                                            ldr r3, [pc, #0x398]
008ac886  20 92                                            str r2, [sp, #0x80]
008ac888  0f 90                                            str r0, [sp, #0x3c]
008ac88a  6b 44                                            add r3, sp, r3
008ac88c  1b 78                                            ldrb r3, [r3]
008ac88e  06 9c                                            ldr r4, [sp, #0x18]
008ac890  e4 4a                                            ldr r2, [pc, #0x390]
008ac892  07 93                                            str r3, [sp, #0x1c]
008ac894  e4 4b                                            ldr r3, [pc, #0x390]
008ac896  9b 20                                            movs r0, #0x9b
008ac898  6d 44                                            add r5, sp, r5
008ac89a  11 93                                            str r3, [sp, #0x44]
008ac89c  e3 58                                            ldr r3, [r4, r3]
008ac89e  c0 00                                            lsls r0, r0, #3
008ac8a0  68 44                                            add r0, sp, r0
008ac8a2  1b 68                                            ldr r3, [r3]
008ac8a4  6a 44                                            add r2, sp, r2
008ac8a6  81 46                                            mov sb, r0
008ac8a8  2b 60                                            str r3, [r5]
008ac8aa  0d 79                                            ldrb r5, [r1, #4]
008ac8ac  12 68                                            ldr r2, [r2]
008ac8ae  00 64                                            str r0, [r0, #0x40]
008ac8b0  de 49                                            ldr r1, [pc, #0x378]
008ac8b2  df 48                                            ldr r0, [pc, #0x37c]
008ac8b4  92 46                                            mov sl, r2
008ac8b6  69 44                                            add r1, sp, r1
008ac8b8  de 4a                                            ldr r2, [pc, #0x378]
008ac8ba  68 44                                            add r0, sp, r0
008ac8bc  20 9e                                            ldr r6, [sp, #0x80]
008ac8be  61 f6 d4 e7                                      blx #0x30e868
008ac8c2  89 23                                            movs r3, #0x89
008ac8c4  db 00                                            lsls r3, r3, #3
008ac8c6  49 46                                            mov r1, sb
008ac8c8  c9 50                                            str r1, [r1, r3]
008ac8ca  48 46                                            mov r0, sb
008ac8cc  f9 f7 6c fa                                      bl #0x8a5da8
008ac8d0  4a 46                                            mov r2, sb
008ac8d2  13 6c                                            ldr r3, [r2, #0x40]
008ac8d4  d8 4c                                            ldr r4, [pc, #0x360]
008ac8d6  00 22                                            movs r2, #0
008ac8d8  1a 60                                            str r2, [r3]
008ac8da  6c 44                                            add r4, sp, r4
008ac8dc  22 68                                            ldr r2, [r4]
008ac8de  63 68                                            ldr r3, [r4, #4]
008ac8e0  d6 4c                                            ldr r4, [pc, #0x358]
008ac8e2  48 46                                            mov r0, sb
008ac8e4  51 46                                            mov r1, sl
008ac8e6  6c 44                                            add r4, sp, r4
008ac8e8  f9 f7 66 f9                                      bl #0x8a5bb8
008ac8ec  25 71                                            strb r5, [r4, #4]
008ac8ee  d3 4c                                            ldr r4, [pc, #0x34c]
008ac8f0  95 25                                            movs r5, #0x95
008ac8f2  6d 01                                            lsls r5, r5, #5
008ac8f4  6c 44                                            add r4, sp, r4
008ac8f6  26 60                                            str r6, [r4]
008ac8f8  6d 44                                            add r5, sp, r5
008ac8fa  d1 4e                                            ldr r6, [pc, #0x344]
008ac8fc  2b 68                                            ldr r3, [r5]
008ac8fe  d1 48                                            ldr r0, [pc, #0x344]
008ac900  6e 44                                            add r6, sp, r6
008ac902  51 46                                            mov r1, sl
008ac904  33 60                                            str r3, [r6]
008ac906  68 44                                            add r0, sp, r0
008ac908  20 31                                            adds r1, #0x20
008ac90a  05 90                                            str r0, [sp, #0x14]
008ac90c  f6 f7 28 fe                                      bl #0x8a3560
008ac910  06 9a                                            ldr r2, [sp, #0x18]
008ac912  cd 4b                                            ldr r3, [pc, #0x334]
008ac914  05 98                                            ldr r0, [sp, #0x14]
008ac916  d1 58                                            ldr r1, [r2, r3]
008ac918  f6 f7 4a fe                                      bl #0x8a35b0
008ac91c  06 9e                                            ldr r6, [sp, #0x18]
008ac91e  cb 4b                                            ldr r3, [pc, #0x32c]
008ac920  05 1c                                            adds r5, r0, #0
008ac922  05 98                                            ldr r0, [sp, #0x14]
008ac924  f1 58                                            ldr r1, [r6, r3]
008ac926  f6 f7 43 fe                                      bl #0x8a35b0
008ac92a  c9 4b                                            ldr r3, [pc, #0x324]
008ac92c  80 46                                            mov r8, r0
008ac92e  05 98                                            ldr r0, [sp, #0x14]
008ac930  f1 58                                            ldr r1, [r6, r3]
008ac932  f6 f7 3d fe                                      bl #0x8a35b0
008ac936  2b 68                                            ldr r3, [r5]
008ac938  2d 21                                            movs r1, #0x2d
008ac93a  06 1c                                            adds r6, r0, #0
008ac93c  9b 6a                                            ldr r3, [r3, #0x28]
008ac93e  28 1c                                            adds r0, r5, #0
008ac940  98 47                                            blx r3
008ac942  0b 90                                            str r0, [sp, #0x2c]
008ac944  2b 68                                            ldr r3, [r5]
008ac946  2b 21                                            movs r1, #0x2b
008ac948  28 1c                                            adds r0, r5, #0
008ac94a  9b 6a                                            ldr r3, [r3, #0x28]
008ac94c  98 47                                            blx r3
008ac94e  10 90                                            str r0, [sp, #0x40]
008ac950  2b 68                                            ldr r3, [r5]
008ac952  20 21                                            movs r1, #0x20
008ac954  28 1c                                            adds r0, r5, #0
008ac956  9b 6a                                            ldr r3, [r3, #0x28]
008ac958  98 47                                            blx r3
008ac95a  16 90                                            str r0, [sp, #0x58]
008ac95c  2b 68                                            ldr r3, [r5]
008ac95e  28 1c                                            adds r0, r5, #0
008ac960  30 21                                            movs r1, #0x30
008ac962  9b 6a                                            ldr r3, [r3, #0x28]
008ac964  98 47                                            blx r3
008ac966  12 90                                            str r0, [sp, #0x48]
008ac968  07 98                                            ldr r0, [sp, #0x1c]
008ac96a  00 28                                            cmp r0, #0
008ac96c  00 d1                                            bne #0x8ac970
008ac96e  06 e1                                            b #0x8acb7e
008ac970  33 68                                            ldr r3, [r6]
008ac972  30 1c                                            adds r0, r6, #0
008ac974  9b 68                                            ldr r3, [r3, #8]
008ac976  98 47                                            blx r3
008ac978  14 90                                            str r0, [sp, #0x50]
008ac97a  33 68                                            ldr r3, [r6]
008ac97c  30 1c                                            adds r0, r6, #0
008ac97e  db 68                                            ldr r3, [r3, #0xc]
008ac980  98 47                                            blx r3
008ac982  b4 49                                            ldr r1, [pc, #0x2d0]
008ac984  0c 90                                            str r0, [sp, #0x30]
008ac986  33 68                                            ldr r3, [r6]
008ac988  69 44                                            add r1, sp, r1
008ac98a  08 1c                                            adds r0, r1, #0
008ac98c  1b 69                                            ldr r3, [r3, #0x10]
008ac98e  8b 46                                            mov fp, r1
008ac990  31 1c                                            adds r1, r6, #0
008ac992  98 47                                            blx r3
008ac994  33 68                                            ldr r3, [r6]
008ac996  30 1c                                            adds r0, r6, #0
008ac998  1b 6a                                            ldr r3, [r3, #0x20]
008ac99a  98 47                                            blx r3
008ac99c  ae 4a                                            ldr r2, [pc, #0x2b8]
008ac99e  0d 90                                            str r0, [sp, #0x34]
008ac9a0  31 1c                                            adds r1, r6, #0
008ac9a2  6a 44                                            add r2, sp, r2
008ac9a4  0e 92                                            str r2, [sp, #0x38]
008ac9a6  33 68                                            ldr r3, [r6]
008ac9a8  10 1c                                            adds r0, r2, #0
008ac9aa  5b 69                                            ldr r3, [r3, #0x14]
008ac9ac  98 47                                            blx r3
008ac9ae  89 23                                            movs r3, #0x89
008ac9b0  4a 46                                            mov r2, sb
008ac9b2  db 00                                            lsls r3, r3, #3
008ac9b4  d3 58                                            ldr r3, [r2, r3]
008ac9b6  08 93                                            str r3, [sp, #0x20]
008ac9b8  08 9d                                            ldr r5, [sp, #0x20]
008ac9ba  13 6c                                            ldr r3, [r2, #0x40]
008ac9bc  0a 93                                            str r3, [sp, #0x28]
008ac9be  9d 42                                            cmp r5, r3
008ac9c0  00 d1                                            bne #0x8ac9c4
008ac9c2  05 e3                                            b #0x8acfd0
008ac9c4  08 99                                            ldr r1, [sp, #0x20]
008ac9c6  0b 9a                                            ldr r2, [sp, #0x2c]
008ac9c8  0b 68                                            ldr r3, [r1]
008ac9ca  9b 1a                                            subs r3, r3, r2
008ac9cc  5d 42                                            rsbs r5, r3, #0
008ac9ce  5d 41                                            adcs r5, r3
008ac9d0  09 95                                            str r5, [sp, #0x24]
008ac9d2  00 2d                                            cmp r5, #0
008ac9d4  01 d0                                            beq #0x8ac9da
008ac9d6  04 31                                            adds r1, #4
008ac9d8  08 91                                            str r1, [sp, #0x20]
008ac9da  07 98                                            ldr r0, [sp, #0x1c]
008ac9dc  00 28                                            cmp r0, #0
008ac9de  00 d0                                            beq #0x8ac9e2
008ac9e0  ed e0                                            b #0x8acbbe
008ac9e2  09 9a                                            ldr r2, [sp, #0x24]
008ac9e4  00 2a                                            cmp r2, #0
008ac9e6  00 d1                                            bne #0x8ac9ea
008ac9e8  80 e2                                            b #0x8aceec
008ac9ea  9c 4f                                            ldr r7, [pc, #0x270]
008ac9ec  45 46                                            mov r5, r8
008ac9ee  2b 68                                            ldr r3, [r5]
008ac9f0  6f 44                                            add r7, sp, r7
008ac9f2  38 1c                                            adds r0, r7, #0
008ac9f4  db 69                                            ldr r3, [r3, #0x1c]
008ac9f6  41 46                                            mov r1, r8
008ac9f8  98 47                                            blx r3
008ac9fa  99 49                                            ldr r1, [pc, #0x264]
008ac9fc  23 ad                                            add r5, sp, #0x8c
008ac9fe  8d 4a                                            ldr r2, [pc, #0x234]
008aca00  69 44                                            add r1, sp, r1
008aca02  2d 64                                            str r5, [r5, #0x40]
008aca04  34 a8                                            add r0, sp, #0xd0
008aca06  61 f6 30 e7                                      blx #0x30e868
008aca0a  89 21                                            movs r1, #0x89
008aca0c  c9 00                                            lsls r1, r1, #3
008aca0e  6d 50                                            str r5, [r5, r1]
008aca10  28 1c                                            adds r0, r5, #0
008aca12  04 91                                            str r1, [sp, #0x10]
008aca14  f9 f7 c8 f9                                      bl #0x8a5da8
008aca18  2b 6c                                            ldr r3, [r5, #0x40]
008aca1a  00 22                                            movs r2, #0
008aca1c  1a 60                                            str r2, [r3]
008aca1e  5b 46                                            mov r3, fp
008aca20  5a 69                                            ldr r2, [r3, #0x14]
008aca22  1b 69                                            ldr r3, [r3, #0x10]
008aca24  9a 42                                            cmp r2, r3
008aca26  1d d0                                            beq #0x8aca64
008aca28  8e 4b                                            ldr r3, [pc, #0x238]
008aca2a  08 99                                            ldr r1, [sp, #0x20]
008aca2c  0a 9a                                            ldr r2, [sp, #0x28]
008aca2e  6b 44                                            add r3, sp, r3
008aca30  28 1c                                            adds r0, r5, #0
008aca32  f9 f7 9d f9                                      bl #0x8a5d70
008aca36  04 98                                            ldr r0, [sp, #0x10]
008aca38  2b 6c                                            ldr r3, [r5, #0x40]
008aca3a  0d 9a                                            ldr r2, [sp, #0x34]
008aca3c  29 58                                            ldr r1, [r5, r0]
008aca3e  0b 98                                            ldr r0, [sp, #0x2c]
008aca40  59 1a                                            subs r1, r3, r1
008aca42  10 9b                                            ldr r3, [sp, #0x40]
008aca44  89 10                                            asrs r1, r1, #2
008aca46  89 1a                                            subs r1, r1, r2
008aca48  00 22                                            movs r2, #0
008aca4a  00 93                                            str r3, [sp]
008aca4c  01 90                                            str r0, [sp, #4]
008aca4e  02 92                                            str r2, [sp, #8]
008aca50  28 1c                                            adds r0, r5, #0
008aca52  0c 9b                                            ldr r3, [sp, #0x30]
008aca54  5a 46                                            mov r2, fp
008aca56  0d f0 0b fa                                      bl #0x8b9e70
008aca5a  04 9b                                            ldr r3, [sp, #0x10]
008aca5c  28 6c                                            ldr r0, [r5, #0x40]
008aca5e  eb 58                                            ldr r3, [r5, r3]
008aca60  0a 90                                            str r0, [sp, #0x28]
008aca62  08 93                                            str r3, [sp, #0x20]
008aca64  0a 9a                                            ldr r2, [sp, #0x28]
008aca66  08 98                                            ldr r0, [sp, #0x20]
008aca68  51 46                                            mov r1, sl
008aca6a  c9 69                                            ldr r1, [r1, #0x1c]
008aca6c  13 1a                                            subs r3, r2, r0
008aca6e  9b 10                                            asrs r3, r3, #2
008aca70  0b 93                                            str r3, [sp, #0x2c]
008aca72  3a 6c                                            ldr r2, [r7, #0x40]
008aca74  7b 6c                                            ldr r3, [r7, #0x44]
008aca76  0c 91                                            str r1, [sp, #0x30]
008aca78  0b 99                                            ldr r1, [sp, #0x2c]
008aca7a  d3 1a                                            subs r3, r2, r3
008aca7c  9b 10                                            asrs r3, r3, #2
008aca7e  cb 18                                            adds r3, r1, r3
008aca80  04 93                                            str r3, [sp, #0x10]
008aca82  0d 9b                                            ldr r3, [sp, #0x34]
008aca84  50 46                                            mov r0, sl
008aca86  5a 1e                                            subs r2, r3, #1
008aca88  93 41                                            sbcs r3, r2
008aca8a  04 9a                                            ldr r2, [sp, #0x10]
008aca8c  d2 18                                            adds r2, r2, r3
008aca8e  04 92                                            str r2, [sp, #0x10]
008aca90  43 68                                            ldr r3, [r0, #4]
008aca92  9b 05                                            lsls r3, r3, #0x16
008aca94  db 0f                                            lsrs r3, r3, #0x1f
008aca96  10 93                                            str r3, [sp, #0x40]
008aca98  00 2b                                            cmp r3, #0
008aca9a  07 d0                                            beq #0x8acaac
008aca9c  0e 99                                            ldr r1, [sp, #0x38]
008aca9e  0a 6c                                            ldr r2, [r1, #0x40]
008acaa0  4b 6c                                            ldr r3, [r1, #0x44]
008acaa2  d3 1a                                            subs r3, r2, r3
008acaa4  04 9a                                            ldr r2, [sp, #0x10]
008acaa6  9b 10                                            asrs r3, r3, #2
008acaa8  d2 18                                            adds r2, r2, r3
008acaaa  04 92                                            str r2, [sp, #0x10]
008acaac  07 9b                                            ldr r3, [sp, #0x1c]
008acaae  00 2b                                            cmp r3, #0
008acab0  00 d1                                            bne #0x8acab4
008acab2  eb e1                                            b #0x8ace8c
008acab4  09 98                                            ldr r0, [sp, #0x24]
008acab6  00 28                                            cmp r0, #0
008acab8  00 d1                                            bne #0x8acabc
008acaba  31 e2                                            b #0x8acf20
008acabc  33 68                                            ldr r3, [r6]
008acabe  30 1c                                            adds r0, r6, #0
008acac0  9b 6a                                            ldr r3, [r3, #0x28]
008acac2  98 47                                            blx r3
008acac4  1e ab                                            add r3, sp, #0x78
008acac6  18 70                                            strb r0, [r3]
008acac8  02 0a                                            lsrs r2, r0, #8
008acaca  01 33                                            adds r3, #1
008acacc  1a 70                                            strb r2, [r3]
008acace  02 0c                                            lsrs r2, r0, #0x10
008acad0  01 33                                            adds r3, #1
008acad2  1a 70                                            strb r2, [r3]
008acad4  64 4a                                            ldr r2, [pc, #0x190]
008acad6  00 0e                                            lsrs r0, r0, #0x18
008acad8  01 33                                            adds r3, #1
008acada  18 70                                            strb r0, [r3]
008acadc  1e 9b                                            ldr r3, [sp, #0x78]
008acade  6a 44                                            add r2, sp, r2
008acae0  13 60                                            str r3, [r2]
008acae2  13 78                                            ldrb r3, [r2]
008acae4  90 78                                            ldrb r0, [r2, #2]
008acae6  51 78                                            ldrb r1, [r2, #1]
008acae8  98 46                                            mov r8, r3
008acaea  60 4b                                            ldr r3, [pc, #0x180]
008acaec  d2 78                                            ldrb r2, [r2, #3]
008acaee  46 46                                            mov r6, r8
008acaf0  6b 44                                            add r3, sp, r3
008acaf2  da 70                                            strb r2, [r3, #3]
008acaf4  98 70                                            strb r0, [r3, #2]
008acaf6  59 70                                            strb r1, [r3, #1]
008acaf8  1e 70                                            strb r6, [r3]
008acafa  01 29                                            cmp r1, #1
008acafc  00 d1                                            bne #0x8acb00
008acafe  db e1                                            b #0x8aceb8
008acb00  9b 78                                            ldrb r3, [r3, #2]
008acb02  01 2b                                            cmp r3, #1
008acb04  00 d1                                            bne #0x8acb08
008acb06  d7 e1                                            b #0x8aceb8
008acb08  0c 99                                            ldr r1, [sp, #0x30]
008acb0a  04 9a                                            ldr r2, [sp, #0x10]
008acb0c  91 42                                            cmp r1, r2
008acb0e  00 d8                                            bhi #0x8acb12
008acb10  b4 e1                                            b #0x8ace7c
008acb12  8b 1a                                            subs r3, r1, r2
008acb14  07 93                                            str r3, [sp, #0x1c]
008acb16  56 46                                            mov r6, sl
008acb18  73 68                                            ldr r3, [r6, #4]
008acb1a  07 98                                            ldr r0, [sp, #0x1c]
008acb1c  07 22                                            movs r2, #7
008acb1e  1a 40                                            ands r2, r3
008acb20  09 92                                            str r2, [sp, #0x24]
008acb22  00 28                                            cmp r0, #0
008acb24  03 d0                                            beq #0x8acb2e
008acb26  05 23                                            movs r3, #5
008acb28  1a 42                                            tst r2, r3
008acb2a  00 d1                                            bne #0x8acb2e
008acb2c  6e e2                                            b #0x8ad00c
008acb2e  0d 9a                                            ldr r2, [sp, #0x34]
008acb30  0a 9e                                            ldr r6, [sp, #0x28]
008acb32  4f 49                                            ldr r1, [pc, #0x13c]
008acb34  93 00                                            lsls r3, r2, #2
008acb36  f3 1a                                            subs r3, r6, r3
008acb38  4e 4a                                            ldr r2, [pc, #0x138]
008acb3a  4f 48                                            ldr r0, [pc, #0x13c]
008acb3c  17 93                                            str r3, [sp, #0x5c]
008acb3e  92 23                                            movs r3, #0x92
008acb40  5b 01                                            lsls r3, r3, #5
008acb42  69 44                                            add r1, sp, r1
008acb44  6a 44                                            add r2, sp, r2
008acb46  6b 44                                            add r3, sp, r3
008acb48  82 46                                            mov sl, r0
008acb4a  04 91                                            str r1, [sp, #0x10]
008acb4c  0c 92                                            str r2, [sp, #0x30]
008acb4e  19 93                                            str r3, [sp, #0x64]
008acb50  4a 48                                            ldr r0, [pc, #0x128]
008acb52  0b 9b                                            ldr r3, [sp, #0x2c]
008acb54  4a 49                                            ldr r1, [pc, #0x128]
008acb56  0d 9a                                            ldr r2, [sp, #0x34]
008acb58  4a 4e                                            ldr r6, [pc, #0x128]
008acb5a  fa 44                                            add sl, pc
008acb5c  d2 1a                                            subs r2, r2, r3
008acb5e  68 44                                            add r0, sp, r0
008acb60  69 44                                            add r1, sp, r1
008acb62  43 46                                            mov r3, r8
008acb64  6e 44                                            add r6, sp, r6
008acb66  d0 46                                            mov r8, sl
008acb68  13 90                                            str r0, [sp, #0x4c]
008acb6a  1a 91                                            str r1, [sp, #0x68]
008acb6c  18 92                                            str r2, [sp, #0x60]
008acb6e  aa 46                                            mov sl, r5
008acb70  04 2b                                            cmp r3, #4
008acb72  47 d8                                            bhi #0x8acc04
008acb74  9b 00                                            lsls r3, r3, #2
008acb76  45 46                                            mov r5, r8
008acb78  5b 59                                            ldr r3, [r3, r5]
008acb7a  43 44                                            add r3, r8
008acb7c  9f 46                                            mov pc, r3
008acb7e  45 46                                            mov r5, r8
008acb80  2b 68                                            ldr r3, [r5]
008acb82  40 46                                            mov r0, r8
008acb84  9b 68                                            ldr r3, [r3, #8]
008acb86  98 47                                            blx r3
008acb88  14 90                                            str r0, [sp, #0x50]
008acb8a  2b 68                                            ldr r3, [r5]
008acb8c  40 46                                            mov r0, r8
008acb8e  db 68                                            ldr r3, [r3, #0xc]
008acb90  98 47                                            blx r3
008acb92  0c 90                                            str r0, [sp, #0x30]
008acb94  2b 68                                            ldr r3, [r5]
008acb96  2f 48                                            ldr r0, [pc, #0xbc]
008acb98  41 46                                            mov r1, r8
008acb9a  1b 69                                            ldr r3, [r3, #0x10]
008acb9c  68 44                                            add r0, sp, r0
008acb9e  83 46                                            mov fp, r0
008acba0  98 47                                            blx r3
008acba2  2b 68                                            ldr r3, [r5]
008acba4  40 46                                            mov r0, r8
008acba6  1b 6a                                            ldr r3, [r3, #0x20]
008acba8  98 47                                            blx r3
008acbaa  2b 49                                            ldr r1, [pc, #0xac]
008acbac  0d 90                                            str r0, [sp, #0x34]
008acbae  69 44                                            add r1, sp, r1
008acbb0  0e 91                                            str r1, [sp, #0x38]
008acbb2  2b 68                                            ldr r3, [r5]
008acbb4  08 1c                                            adds r0, r1, #0
008acbb6  41 46                                            mov r1, r8
008acbb8  5b 69                                            ldr r3, [r3, #0x14]
008acbba  98 47                                            blx r3
008acbbc  f7 e6                                            b #0x8ac9ae
008acbbe  09 99                                            ldr r1, [sp, #0x24]
008acbc0  00 29                                            cmp r1, #0
008acbc2  00 d1                                            bne #0x8acbc6
008acbc4  bd e1                                            b #0x8acf42
008acbc6  25 4f                                            ldr r7, [pc, #0x94]
008acbc8  33 68                                            ldr r3, [r6]
008acbca  31 1c                                            adds r1, r6, #0
008acbcc  6f 44                                            add r7, sp, r7
008acbce  db 69                                            ldr r3, [r3, #0x1c]
008acbd0  38 1c                                            adds r0, r7, #0
008acbd2  98 47                                            blx r3
008acbd4  11 e7                                            b #0x8ac9fa
008acbd6  23 79                                            ldrb r3, [r4, #4]
008acbd8  00 2b                                            cmp r3, #0
008acbda  0d d0                                            beq #0x8acbf8
008acbdc  20 68                                            ldr r0, [r4]
008acbde  43 69                                            ldr r3, [r0, #0x14]
008acbe0  82 69                                            ldr r2, [r0, #0x18]
008acbe2  93 42                                            cmp r3, r2
008acbe4  00 d3                                            blo #0x8acbe8
008acbe6  27 e2                                            b #0x8ad038
008acbe8  16 99                                            ldr r1, [sp, #0x58]
008acbea  1a 1c                                            adds r2, r3, #0
008acbec  02 c2                                            stm r2!, {r1}
008acbee  42 61                                            str r2, [r0, #0x14]
008acbf0  18 68                                            ldr r0, [r3]
008acbf2  01 23                                            movs r3, #1
008acbf4  01 30                                            adds r0, #1
008acbf6  00 d1                                            bne #0x8acbfa
008acbf8  00 23                                            movs r3, #0
008acbfa  23 71                                            strb r3, [r4, #4]
008acbfc  09 9a                                            ldr r2, [sp, #0x24]
008acbfe  04 2a                                            cmp r2, #4
008acc00  00 d1                                            bne #0x8acc04
008acc02  5d e1                                            b #0x8acec0
008acc04  05 9a                                            ldr r2, [sp, #0x14]
008acc06  b2 42                                            cmp r2, r6
008acc08  00 d1                                            bne #0x8acc0c
008acc0a  95 e0                                            b #0x8acd38
008acc0c  33 78                                            ldrb r3, [r6]
008acc0e  01 36                                            adds r6, #1
008acc10  ae e7                                            b #0x8acb70
008acc12  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008acc14  8c ed ff ff 18 82 0e 00 6c 12 00 00 98 12 00 00  .byte 0x8c, 0xed, 0xff, 0xff, 0x18, 0x82, 0x0e, 0x00, 0x6c, 0x12, 0x00, 0x00, 0x98, 0x12, 0x00, 0x00
008acc24  9c 12 00 00 ac 40 00 00 28 0d 00 00 1c 05 00 00  .byte 0x9c, 0x12, 0x00, 0x00, 0xac, 0x40, 0x00, 0x00, 0x28, 0x0d, 0x00, 0x00, 0x1c, 0x05, 0x00, 0x00
008acc34  04 04 00 00 a8 12 00 00 14 12 00 00 34 12 00 00  .byte 0x04, 0x04, 0x00, 0x00, 0xa8, 0x12, 0x00, 0x00, 0x14, 0x12, 0x00, 0x00, 0x34, 0x12, 0x00, 0x00
008acc44  30 12 00 00 44 1e 00 00 d0 27 00 00 1c 2d 00 00  .byte 0x30, 0x12, 0x00, 0x00, 0x44, 0x1e, 0x00, 0x00, 0xd0, 0x27, 0x00, 0x00, 0x1c, 0x2d, 0x00, 0x00
008acc54  54 12 00 00 74 11 00 00 2c 11 00 00 24 09 00 00  .byte 0x54, 0x12, 0x00, 0x00, 0x74, 0x11, 0x00, 0x00, 0x2c, 0x11, 0x00, 0x00, 0x24, 0x09, 0x00, 0x00
008acc64  50 12 00 00 28 12 00 00 2c 12 00 00 0c 12 00 00  .byte 0x50, 0x12, 0x00, 0x00, 0x28, 0x12, 0x00, 0x00, 0x2c, 0x12, 0x00, 0x00, 0x0c, 0x12, 0x00, 0x00
008acc74  d4 11 00 00 b2 8f 06 00 cc 11 00 00 3c 12 00 00  .byte 0xd4, 0x11, 0x00, 0x00, 0xb2, 0x8f, 0x06, 0x00, 0xcc, 0x11, 0x00, 0x00, 0x3c, 0x12, 0x00, 0x00
008acc84  2d 12 00 00                                      .byte 0x2d, 0x12, 0x00, 0x00
; decoder-mode: thumb
008acc88  0d 9a                                            ldr r2, [sp, #0x34]
008acc8a  00 2a                                            cmp r2, #0
008acc8c  00 d1                                            bne #0x8acc90
008acc8e  8b e1                                            b #0x8acfa8
008acc90  0b 9a                                            ldr r2, [sp, #0x2c]
008acc92  0d 9b                                            ldr r3, [sp, #0x34]
008acc94  9a 42                                            cmp r2, r3
008acc96  00 dd                                            ble #0x8acc9a
008acc98  5b e1                                            b #0x8acf52
008acc9a  12 99                                            ldr r1, [sp, #0x48]
008acc9c  20 1c                                            adds r0, r4, #0
008acc9e  f7 f7 eb fe                                      bl #0x8a4a78
008acca2  14 99                                            ldr r1, [sp, #0x50]
008acca4  20 1c                                            adds r0, r4, #0
008acca6  f7 f7 e7 fe                                      bl #0x8a4a78
008accaa  18 9d                                            ldr r5, [sp, #0x60]
008accac  18 99                                            ldr r1, [sp, #0x60]
008accae  1b 95                                            str r5, [sp, #0x6c]
008accb0  20 79                                            ldrb r0, [r4, #4]
008accb2  25 68                                            ldr r5, [r4]
008accb4  15 90                                            str r0, [sp, #0x54]
008accb6  00 29                                            cmp r1, #0
008accb8  00 d1                                            bne #0x8accbc
008accba  bb e0                                            b #0x8ace34
008accbc  52 46                                            mov r2, sl
008accbe  1c 96                                            str r6, [sp, #0x70]
008accc0  a2 46                                            mov sl, r4
008accc2  06 1c                                            adds r6, r0, #0
008accc4  1d 92                                            str r2, [sp, #0x74]
008accc6  0c 1c                                            adds r4, r1, #0
008accc8  0d e0                                            b #0x8acce6
008accca  12 98                                            ldr r0, [sp, #0x48]
008acccc  1a 1c                                            adds r2, r3, #0
008accce  01 c2                                            stm r2!, {r0}
008accd0  6a 61                                            str r2, [r5, #0x14]
008accd2  18 68                                            ldr r0, [r3]
008accd4  01 30                                            adds r0, #1
008accd6  43 1e                                            subs r3, r0, #1
008accd8  98 41                                            sbcs r0, r3
008accda  40 42                                            rsbs r0, r0, #0
008accdc  06 40                                            ands r6, r0
008accde  01 3c                                            subs r4, #1
008acce0  00 2c                                            cmp r4, #0
008acce2  00 d1                                            bne #0x8acce6
008acce4  a1 e0                                            b #0x8ace2a
008acce6  00 2e                                            cmp r6, #0
008acce8  f9 d0                                            beq #0x8accde
008accea  6b 69                                            ldr r3, [r5, #0x14]
008accec  aa 69                                            ldr r2, [r5, #0x18]
008accee  93 42                                            cmp r3, r2
008accf0  eb d3                                            blo #0x8accca
008accf2  2b 68                                            ldr r3, [r5]
008accf4  28 1c                                            adds r0, r5, #0
008accf6  12 99                                            ldr r1, [sp, #0x48]
008accf8  5b 6b                                            ldr r3, [r3, #0x34]
008accfa  98 47                                            blx r3
008accfc  ea e7                                            b #0x8accd4
008accfe  7b 6c                                            ldr r3, [r7, #0x44]
008acd00  3a 6c                                            ldr r2, [r7, #0x40]
008acd02  93 42                                            cmp r3, r2
008acd04  00 d1                                            bne #0x8acd08
008acd06  7d e7                                            b #0x8acc04
008acd08  19 68                                            ldr r1, [r3]
008acd0a  23 79                                            ldrb r3, [r4, #4]
008acd0c  00 2b                                            cmp r3, #0
008acd0e  00 d1                                            bne #0x8acd12
008acd10  88 e0                                            b #0x8ace24
008acd12  20 68                                            ldr r0, [r4]
008acd14  43 69                                            ldr r3, [r0, #0x14]
008acd16  82 69                                            ldr r2, [r0, #0x18]
008acd18  93 42                                            cmp r3, r2
008acd1a  00 d3                                            blo #0x8acd1e
008acd1c  91 e1                                            b #0x8ad042
008acd1e  1a 1c                                            adds r2, r3, #0
008acd20  02 c2                                            stm r2!, {r1}
008acd22  42 61                                            str r2, [r0, #0x14]
008acd24  18 68                                            ldr r0, [r3]
008acd26  01 23                                            movs r3, #1
008acd28  01 30                                            adds r0, #1
008acd2a  00 d1                                            bne #0x8acd2e
008acd2c  7a e0                                            b #0x8ace24
008acd2e  23 71                                            strb r3, [r4, #4]
008acd30  05 9a                                            ldr r2, [sp, #0x14]
008acd32  b2 42                                            cmp r2, r6
008acd34  00 d0                                            beq #0x8acd38
008acd36  69 e7                                            b #0x8acc0c
008acd38  3a 6c                                            ldr r2, [r7, #0x40]
008acd3a  79 6c                                            ldr r1, [r7, #0x44]
008acd3c  55 46                                            mov r5, sl
008acd3e  53 1a                                            subs r3, r2, r1
008acd40  9b 10                                            asrs r3, r3, #2
008acd42  01 2b                                            cmp r3, #1
008acd44  1c d9                                            bls #0x8acd80
008acd46  c2 4e                                            ldr r6, [pc, #0x308]
008acd48  c2 48                                            ldr r0, [pc, #0x308]
008acd4a  04 31                                            adds r1, #4
008acd4c  6e 44                                            add r6, sp, r6
008acd4e  33 68                                            ldr r3, [r6]
008acd50  26 79                                            ldrb r6, [r4, #4]
008acd52  68 44                                            add r0, sp, r0
008acd54  03 60                                            str r3, [r0]
008acd56  06 71                                            strb r6, [r0, #4]
008acd58  bf 4e                                            ldr r6, [pc, #0x2fc]
008acd5a  6e 44                                            add r6, sp, r6
008acd5c  b0 46                                            mov r8, r6
008acd5e  bf 4e                                            ldr r6, [pc, #0x2fc]
008acd60  6e 44                                            add r6, sp, r6
008acd62  01 96                                            str r6, [sp, #4]
008acd64  40 68                                            ldr r0, [r0, #4]
008acd66  00 90                                            str r0, [sp]
008acd68  40 46                                            mov r0, r8
008acd6a  fa f7 c3 f8                                      bl #0x8a6ef4
008acd6e  ba 48                                            ldr r0, [pc, #0x2e8]
008acd70  b7 49                                            ldr r1, [pc, #0x2dc]
008acd72  42 46                                            mov r2, r8
008acd74  68 44                                            add r0, sp, r0
008acd76  03 68                                            ldr r3, [r0]
008acd78  69 44                                            add r1, sp, r1
008acd7a  0b 60                                            str r3, [r1]
008acd7c  13 79                                            ldrb r3, [r2, #4]
008acd7e  23 71                                            strb r3, [r4, #4]
008acd80  07 9b                                            ldr r3, [sp, #0x1c]
008acd82  00 2b                                            cmp r3, #0
008acd84  04 d0                                            beq #0x8acd90
008acd86  09 9e                                            ldr r6, [sp, #0x24]
008acd88  06 23                                            movs r3, #6
008acd8a  1e 42                                            tst r6, r3
008acd8c  00 d1                                            bne #0x8acd90
008acd8e  27 e1                                            b #0x8acfe0
008acd90  af 4a                                            ldr r2, [pc, #0x2bc]
008acd92  0f 9e                                            ldr r6, [sp, #0x3c]
008acd94  28 1c                                            adds r0, r5, #0
008acd96  6a 44                                            add r2, sp, r2
008acd98  13 68                                            ldr r3, [r2]
008acd9a  33 60                                            str r3, [r6]
008acd9c  23 79                                            ldrb r3, [r4, #4]
008acd9e  33 71                                            strb r3, [r6, #4]
008acda0  f8 f7 56 fe                                      bl #0x8a5a50
008acda4  38 1c                                            adds r0, r7, #0
008acda6  6c f6 04 e3                                      blx #0x3193b0
008acdaa  0e 98                                            ldr r0, [sp, #0x38]
008acdac  6c f6 00 e3                                      blx #0x3193b0
008acdb0  58 46                                            mov r0, fp
008acdb2  66 f6 fc e5                                      blx #0x3139ac
008acdb6  05 98                                            ldr r0, [sp, #0x14]
008acdb8  f6 f7 9c fb                                      bl #0x8a34f4
008acdbc  48 46                                            mov r0, sb
008acdbe  f8 f7 47 fe                                      bl #0x8a5a50
008acdc2  11 9a                                            ldr r2, [sp, #0x44]
008acdc4  06 99                                            ldr r1, [sp, #0x18]
008acdc6  a6 4c                                            ldr r4, [pc, #0x298]
008acdc8  0f 98                                            ldr r0, [sp, #0x3c]
008acdca  8b 58                                            ldr r3, [r1, r2]
008acdcc  6c 44                                            add r4, sp, r4
008acdce  22 68                                            ldr r2, [r4]
008acdd0  1b 68                                            ldr r3, [r3]
008acdd2  9a 42                                            cmp r2, r3
008acdd4  00 d0                                            beq #0x8acdd8
008acdd6  38 e1                                            b #0x8ad04a
008acdd8  a2 4b                                            ldr r3, [pc, #0x288]
008acdda  9d 44                                            add sp, r3
008acddc  3c bc                                            pop {r2, r3, r4, r5}
008acdde  90 46                                            mov r8, r2
008acde0  99 46                                            mov sb, r3
008acde2  a2 46                                            mov sl, r4
008acde4  ab 46                                            mov fp, r5
008acde6  f0 bd                                            pop {r4, r5, r6, r7, pc}
008acde8  10 99                                            ldr r1, [sp, #0x40]
008acdea  00 29                                            cmp r1, #0
008acdec  00 d1                                            bne #0x8acdf0
008acdee  09 e7                                            b #0x8acc04
008acdf0  20 79                                            ldrb r0, [r4, #4]
008acdf2  04 9d                                            ldr r5, [sp, #0x10]
008acdf4  23 68                                            ldr r3, [r4]
008acdf6  0e 9a                                            ldr r2, [sp, #0x38]
008acdf8  28 71                                            strb r0, [r5, #4]
008acdfa  9b 48                                            ldr r0, [pc, #0x26c]
008acdfc  51 6c                                            ldr r1, [r2, #0x44]
008acdfe  2b 60                                            str r3, [r5]
008ace00  68 44                                            add r0, sp, r0
008ace02  12 6c                                            ldr r2, [r2, #0x40]
008ace04  01 90                                            str r0, [sp, #4]
008ace06  04 98                                            ldr r0, [sp, #0x10]
008ace08  98 4d                                            ldr r5, [pc, #0x260]
008ace0a  40 68                                            ldr r0, [r0, #4]
008ace0c  6d 44                                            add r5, sp, r5
008ace0e  00 90                                            str r0, [sp]
008ace10  28 1c                                            adds r0, r5, #0
008ace12  fa f7 6f f8                                      bl #0x8a6ef4
008ace16  95 49                                            ldr r1, [pc, #0x254]
008ace18  69 44                                            add r1, sp, r1
008ace1a  0b 68                                            ldr r3, [r1]
008ace1c  23 60                                            str r3, [r4]
008ace1e  2b 79                                            ldrb r3, [r5, #4]
008ace20  23 71                                            strb r3, [r4, #4]
008ace22  ef e6                                            b #0x8acc04
008ace24  00 23                                            movs r3, #0
008ace26  23 71                                            strb r3, [r4, #4]
008ace28  82 e7                                            b #0x8acd30
008ace2a  1d 99                                            ldr r1, [sp, #0x74]
008ace2c  15 96                                            str r6, [sp, #0x54]
008ace2e  1c 9e                                            ldr r6, [sp, #0x70]
008ace30  54 46                                            mov r4, sl
008ace32  8a 46                                            mov sl, r1
008ace34  8e 4b                                            ldr r3, [pc, #0x238]
008ace36  15 aa                                            add r2, sp, #0x54
008ace38  8e 49                                            ldr r1, [pc, #0x238]
008ace3a  6b 44                                            add r3, sp, r3
008ace3c  1d 60                                            str r5, [r3]
008ace3e  12 78                                            ldrb r2, [r2]
008ace40  69 44                                            add r1, sp, r1
008ace42  1a 71                                            strb r2, [r3, #4]
008ace44  25 60                                            str r5, [r4]
008ace46  1b 79                                            ldrb r3, [r3, #4]
008ace48  04 98                                            ldr r0, [sp, #0x10]
008ace4a  15 91                                            str r1, [sp, #0x54]
008ace4c  23 71                                            strb r3, [r4, #4]
008ace4e  04 9b                                            ldr r3, [sp, #0x10]
008ace50  0a 9a                                            ldr r2, [sp, #0x28]
008ace52  1d 60                                            str r5, [r3]
008ace54  23 79                                            ldrb r3, [r4, #4]
008ace56  03 71                                            strb r3, [r0, #4]
008ace58  87 4b                                            ldr r3, [pc, #0x21c]
008ace5a  6b 44                                            add r3, sp, r3
008ace5c  01 93                                            str r3, [sp, #4]
008ace5e  43 68                                            ldr r3, [r0, #4]
008ace60  08 1c                                            adds r0, r1, #0
008ace62  08 99                                            ldr r1, [sp, #0x20]
008ace64  00 93                                            str r3, [sp]
008ace66  2b 1c                                            adds r3, r5, #0
008ace68  f9 f7 ac ff                                      bl #0x8a6dc4
008ace6c  81 4a                                            ldr r2, [pc, #0x204]
008ace6e  15 9d                                            ldr r5, [sp, #0x54]
008ace70  6a 44                                            add r2, sp, r2
008ace72  13 68                                            ldr r3, [r2]
008ace74  23 60                                            str r3, [r4]
008ace76  2b 79                                            ldrb r3, [r5, #4]
008ace78  23 71                                            strb r3, [r4, #4]
008ace7a  c3 e6                                            b #0x8acc04
008ace7c  56 46                                            mov r6, sl
008ace7e  73 68                                            ldr r3, [r6, #4]
008ace80  07 22                                            movs r2, #7
008ace82  00 20                                            movs r0, #0
008ace84  1a 40                                            ands r2, r3
008ace86  09 92                                            str r2, [sp, #0x24]
008ace88  07 90                                            str r0, [sp, #0x1c]
008ace8a  50 e6                                            b #0x8acb2e
008ace8c  09 98                                            ldr r0, [sp, #0x24]
008ace8e  00 28                                            cmp r0, #0
008ace90  35 d0                                            beq #0x8acefe
008ace92  41 46                                            mov r1, r8
008ace94  0b 68                                            ldr r3, [r1]
008ace96  40 46                                            mov r0, r8
008ace98  9b 6a                                            ldr r3, [r3, #0x28]
008ace9a  98 47                                            blx r3
008ace9c  1e ab                                            add r3, sp, #0x78
008ace9e  18 70                                            strb r0, [r3]
008acea0  02 0a                                            lsrs r2, r0, #8
008acea2  01 33                                            adds r3, #1
008acea4  1a 70                                            strb r2, [r3]
008acea6  02 0c                                            lsrs r2, r0, #0x10
008acea8  01 33                                            adds r3, #1
008aceaa  1a 70                                            strb r2, [r3]
008aceac  00 0e                                            lsrs r0, r0, #0x18
008aceae  01 33                                            adds r3, #1
008aceb0  91 22                                            movs r2, #0x91
008aceb2  18 70                                            strb r0, [r3]
008aceb4  52 01                                            lsls r2, r2, #5
008aceb6  11 e6                                            b #0x8acadc
008aceb8  04 98                                            ldr r0, [sp, #0x10]
008aceba  01 30                                            adds r0, #1
008acebc  04 90                                            str r0, [sp, #0x10]
008acebe  23 e6                                            b #0x8acb08
008acec0  07 9b                                            ldr r3, [sp, #0x1c]
008acec2  00 2b                                            cmp r3, #0
008acec4  00 d1                                            bne #0x8acec8
008acec6  9d e6                                            b #0x8acc04
008acec8  6c 4b                                            ldr r3, [pc, #0x1b0]
008aceca  6d 4d                                            ldr r5, [pc, #0x1b4]
008acecc  6b 44                                            add r3, sp, r3
008acece  00 93                                            str r3, [sp]
008aced0  6d 44                                            add r5, sp, r5
008aced2  28 1c                                            adds r0, r5, #0
008aced4  07 9b                                            ldr r3, [sp, #0x1c]
008aced6  21 68                                            ldr r1, [r4]
008aced8  62 68                                            ldr r2, [r4, #4]
008aceda  f9 f7 43 ff                                      bl #0x8a6d64
008acede  68 48                                            ldr r0, [pc, #0x1a0]
008acee0  68 44                                            add r0, sp, r0
008acee2  03 68                                            ldr r3, [r0]
008acee4  23 60                                            str r3, [r4]
008acee6  2b 79                                            ldrb r3, [r5, #4]
008acee8  23 71                                            strb r3, [r4, #4]
008aceea  8b e6                                            b #0x8acc04
008aceec  40 46                                            mov r0, r8
008aceee  65 4f                                            ldr r7, [pc, #0x194]
008acef0  03 68                                            ldr r3, [r0]
008acef2  41 46                                            mov r1, r8
008acef4  6f 44                                            add r7, sp, r7
008acef6  9b 69                                            ldr r3, [r3, #0x18]
008acef8  38 1c                                            adds r0, r7, #0
008acefa  98 47                                            blx r3
008acefc  7d e5                                            b #0x8ac9fa
008acefe  40 46                                            mov r0, r8
008acf00  03 68                                            ldr r3, [r0]
008acf02  5b 6a                                            ldr r3, [r3, #0x24]
008acf04  98 47                                            blx r3
008acf06  1e ab                                            add r3, sp, #0x78
008acf08  18 70                                            strb r0, [r3]
008acf0a  02 0a                                            lsrs r2, r0, #8
008acf0c  01 33                                            adds r3, #1
008acf0e  1a 70                                            strb r2, [r3]
008acf10  02 0c                                            lsrs r2, r0, #0x10
008acf12  01 33                                            adds r3, #1
008acf14  1a 70                                            strb r2, [r3]
008acf16  00 0e                                            lsrs r0, r0, #0x18
008acf18  01 33                                            adds r3, #1
008acf1a  18 70                                            strb r0, [r3]
008acf1c  5a 4a                                            ldr r2, [pc, #0x168]
008acf1e  dd e5                                            b #0x8acadc
008acf20  33 68                                            ldr r3, [r6]
008acf22  30 1c                                            adds r0, r6, #0
008acf24  5b 6a                                            ldr r3, [r3, #0x24]
008acf26  98 47                                            blx r3
008acf28  1e ab                                            add r3, sp, #0x78
008acf2a  18 70                                            strb r0, [r3]
008acf2c  02 0a                                            lsrs r2, r0, #8
008acf2e  01 33                                            adds r3, #1
008acf30  1a 70                                            strb r2, [r3]
008acf32  02 0c                                            lsrs r2, r0, #0x10
008acf34  01 33                                            adds r3, #1
008acf36  1a 70                                            strb r2, [r3]
008acf38  00 0e                                            lsrs r0, r0, #0x18
008acf3a  01 33                                            adds r3, #1
008acf3c  18 70                                            strb r0, [r3]
008acf3e  53 4a                                            ldr r2, [pc, #0x14c]
008acf40  cc e5                                            b #0x8acadc
008acf42  50 4f                                            ldr r7, [pc, #0x140]
008acf44  33 68                                            ldr r3, [r6]
008acf46  31 1c                                            adds r1, r6, #0
008acf48  6f 44                                            add r7, sp, r7
008acf4a  9b 69                                            ldr r3, [r3, #0x18]
008acf4c  38 1c                                            adds r0, r7, #0
008acf4e  98 47                                            blx r3
008acf50  53 e5                                            b #0x8ac9fa
008acf52  23 68                                            ldr r3, [r4]
008acf54  04 98                                            ldr r0, [sp, #0x10]
008acf56  22 79                                            ldrb r2, [r4, #4]
008acf58  19 99                                            ldr r1, [sp, #0x64]
008acf5a  03 60                                            str r3, [r0]
008acf5c  02 71                                            strb r2, [r0, #4]
008acf5e  01 91                                            str r1, [sp, #4]
008acf60  42 68                                            ldr r2, [r0, #4]
008acf62  08 99                                            ldr r1, [sp, #0x20]
008acf64  0c 98                                            ldr r0, [sp, #0x30]
008acf66  00 92                                            str r2, [sp]
008acf68  17 9a                                            ldr r2, [sp, #0x5c]
008acf6a  f9 f7 2b ff                                      bl #0x8a6dc4
008acf6e  0c 9a                                            ldr r2, [sp, #0x30]
008acf70  14 99                                            ldr r1, [sp, #0x50]
008acf72  20 1c                                            adds r0, r4, #0
008acf74  13 68                                            ldr r3, [r2]
008acf76  23 60                                            str r3, [r4]
008acf78  13 79                                            ldrb r3, [r2, #4]
008acf7a  23 71                                            strb r3, [r4, #4]
008acf7c  f7 f7 7c fd                                      bl #0x8a4a78
008acf80  23 68                                            ldr r3, [r4]
008acf82  22 79                                            ldrb r2, [r4, #4]
008acf84  04 9d                                            ldr r5, [sp, #0x10]
008acf86  1a 98                                            ldr r0, [sp, #0x68]
008acf88  17 99                                            ldr r1, [sp, #0x5c]
008acf8a  2b 60                                            str r3, [r5]
008acf8c  2a 71                                            strb r2, [r5, #4]
008acf8e  01 90                                            str r0, [sp, #4]
008acf90  6a 68                                            ldr r2, [r5, #4]
008acf92  13 98                                            ldr r0, [sp, #0x4c]
008acf94  00 92                                            str r2, [sp]
008acf96  0a 9a                                            ldr r2, [sp, #0x28]
008acf98  f9 f7 14 ff                                      bl #0x8a6dc4
008acf9c  13 99                                            ldr r1, [sp, #0x4c]
008acf9e  0b 68                                            ldr r3, [r1]
008acfa0  23 60                                            str r3, [r4]
008acfa2  0b 79                                            ldrb r3, [r1, #4]
008acfa4  23 71                                            strb r3, [r4, #4]
008acfa6  c3 e6                                            b #0x8acd30
008acfa8  22 79                                            ldrb r2, [r4, #4]
008acfaa  04 9d                                            ldr r5, [sp, #0x10]
008acfac  23 68                                            ldr r3, [r4]
008acfae  04 98                                            ldr r0, [sp, #0x10]
008acfb0  2a 71                                            strb r2, [r5, #4]
008acfb2  37 4a                                            ldr r2, [pc, #0xdc]
008acfb4  2b 60                                            str r3, [r5]
008acfb6  37 4d                                            ldr r5, [pc, #0xdc]
008acfb8  6a 44                                            add r2, sp, r2
008acfba  01 92                                            str r2, [sp, #4]
008acfbc  42 68                                            ldr r2, [r0, #4]
008acfbe  6d 44                                            add r5, sp, r5
008acfc0  08 99                                            ldr r1, [sp, #0x20]
008acfc2  00 92                                            str r2, [sp]
008acfc4  28 1c                                            adds r0, r5, #0
008acfc6  0a 9a                                            ldr r2, [sp, #0x28]
008acfc8  f9 f7 fc fe                                      bl #0x8a6dc4
008acfcc  31 49                                            ldr r1, [pc, #0xc4]
008acfce  23 e7                                            b #0x8ace18
008acfd0  1f 4e                                            ldr r6, [pc, #0x7c]
008acfd2  0f 98                                            ldr r0, [sp, #0x3c]
008acfd4  6e 44                                            add r6, sp, r6
008acfd6  33 68                                            ldr r3, [r6]
008acfd8  03 60                                            str r3, [r0]
008acfda  23 79                                            ldrb r3, [r4, #4]
008acfdc  03 71                                            strb r3, [r0, #4]
008acfde  e4 e6                                            b #0x8acdaa
008acfe0  26 4b                                            ldr r3, [pc, #0x98]
008acfe2  2d 4e                                            ldr r6, [pc, #0xb4]
008acfe4  1a 4a                                            ldr r2, [pc, #0x68]
008acfe6  6b 44                                            add r3, sp, r3
008acfe8  00 93                                            str r3, [sp]
008acfea  6e 44                                            add r6, sp, r6
008acfec  6a 44                                            add r2, sp, r2
008acfee  11 68                                            ldr r1, [r2]
008acff0  30 1c                                            adds r0, r6, #0
008acff2  07 9b                                            ldr r3, [sp, #0x1c]
008acff4  62 68                                            ldr r2, [r4, #4]
008acff6  f9 f7 b5 fe                                      bl #0x8a6d64
008acffa  27 48                                            ldr r0, [pc, #0x9c]
008acffc  14 49                                            ldr r1, [pc, #0x50]
008acffe  68 44                                            add r0, sp, r0
008ad000  03 68                                            ldr r3, [r0]
008ad002  69 44                                            add r1, sp, r1
008ad004  0b 60                                            str r3, [r1]
008ad006  33 79                                            ldrb r3, [r6, #4]
008ad008  23 71                                            strb r3, [r4, #4]
008ad00a  c1 e6                                            b #0x8acd90
008ad00c  1b 4b                                            ldr r3, [pc, #0x6c]
008ad00e  23 4e                                            ldr r6, [pc, #0x8c]
008ad010  0f 4a                                            ldr r2, [pc, #0x3c]
008ad012  6b 44                                            add r3, sp, r3
008ad014  00 93                                            str r3, [sp]
008ad016  6e 44                                            add r6, sp, r6
008ad018  6a 44                                            add r2, sp, r2
008ad01a  11 68                                            ldr r1, [r2]
008ad01c  30 1c                                            adds r0, r6, #0
008ad01e  07 9b                                            ldr r3, [sp, #0x1c]
008ad020  62 68                                            ldr r2, [r4, #4]
008ad022  f9 f7 9f fe                                      bl #0x8a6d64
008ad026  1d 48                                            ldr r0, [pc, #0x74]
008ad028  09 49                                            ldr r1, [pc, #0x24]
008ad02a  68 44                                            add r0, sp, r0
008ad02c  03 68                                            ldr r3, [r0]
008ad02e  69 44                                            add r1, sp, r1
008ad030  0b 60                                            str r3, [r1]
008ad032  33 79                                            ldrb r3, [r6, #4]
008ad034  23 71                                            strb r3, [r4, #4]
008ad036  7a e5                                            b #0x8acb2e
008ad038  03 68                                            ldr r3, [r0]
008ad03a  16 99                                            ldr r1, [sp, #0x58]
008ad03c  5b 6b                                            ldr r3, [r3, #0x34]
008ad03e  98 47                                            blx r3
008ad040  d7 e5                                            b #0x8acbf2
008ad042  03 68                                            ldr r3, [r0]
008ad044  5b 6b                                            ldr r3, [r3, #0x34]
008ad046  98 47                                            blx r3
008ad048  6d e6                                            b #0x8acd26
008ad04a  61 f6 62 e1                                      blx #0x30e310
008ad04e  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008ad050  14 12 00 00 0c 12 00 00 c4 11 00 00 38 12 00 00  .byte 0x14, 0x12, 0x00, 0x00, 0x0c, 0x12, 0x00, 0x00, 0xc4, 0x11, 0x00, 0x00, 0x38, 0x12, 0x00, 0x00
008ad060  6c 12 00 00 74 12 00 00 4c 12 00 00 f4 11 00 00  .byte 0x6c, 0x12, 0x00, 0x00, 0x74, 0x12, 0x00, 0x00, 0x4c, 0x12, 0x00, 0x00, 0xf4, 0x11, 0x00, 0x00
008ad070  e4 11 00 00 dc 11 00 00 44 12 00 00 34 12 00 00  .byte 0xe4, 0x11, 0x00, 0x00, 0xdc, 0x11, 0x00, 0x00, 0x44, 0x12, 0x00, 0x00, 0x34, 0x12, 0x00, 0x00
008ad080  fc 11 00 00 2c 11 00 00 1c 12 00 00 24 12 00 00  .byte 0xfc, 0x11, 0x00, 0x00, 0x2c, 0x11, 0x00, 0x00, 0x1c, 0x12, 0x00, 0x00, 0x24, 0x12, 0x00, 0x00
008ad090  48 12 00 00 ec 11 00 00 bc 11 00 00 04 12 00 00  .byte 0x48, 0x12, 0x00, 0x00, 0xec, 0x11, 0x00, 0x00, 0xbc, 0x11, 0x00, 0x00, 0x04, 0x12, 0x00, 0x00

; FUNCTION 0x008adeec, declared_size=2092, range_size=2092, mode=thumb
; class-group: std::money_put<wchar_t, std::ostreambuf_iterator<wchar_t, std::char_traits<wchar_t> > >
; alias: _ZNKSt9money_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE6do_putES3_bRSt8ios_basewRKSbIwS2_SaIwEE
; demangled: std::money_put<wchar_t, std::ostreambuf_iterator<wchar_t, std::char_traits<wchar_t> > >::do_put(std::ostreambuf_iterator<wchar_t, std::char_traits<wchar_t> >, bool, std::ios_base&, wchar_t, std::basic_string<wchar_t, std::char_traits<wchar_t>, std::allocator<wchar_t> > const&) const
; decoder-mode: thumb
008adeec  f0 b5                                            push {r4, r5, r6, r7, lr}
008adeee  5f 46                                            mov r7, fp
008adef0  56 46                                            mov r6, sl
008adef2  4d 46                                            mov r5, sb
008adef4  44 46                                            mov r4, r8
008adef6  f0 b4                                            push {r4, r5, r6, r7}
008adef8  cd 4c                                            ldr r4, [pc, #0x334]
008adefa  ce 49                                            ldr r1, [pc, #0x338]
008adefc  ce 4d                                            ldr r5, [pc, #0x338]
008adefe  a5 44                                            add sp, r4
008adf00  79 44                                            add r1, pc
008adf02  05 91                                            str r1, [sp, #0x14]
008adf04  1e 92                                            str r2, [sp, #0x78]
008adf06  1e a9                                            add r1, sp, #0x78
008adf08  cc 4a                                            ldr r2, [pc, #0x330]
008adf0a  4b 60                                            str r3, [r1, #4]
008adf0c  cc 4b                                            ldr r3, [pc, #0x330]
008adf0e  0e 90                                            str r0, [sp, #0x38]
008adf10  6a 44                                            add r2, sp, r2
008adf12  12 68                                            ldr r2, [r2]
008adf14  6b 44                                            add r3, sp, r3
008adf16  1c 68                                            ldr r4, [r3]
008adf18  a4 23                                            movs r3, #0xa4
008adf1a  1b 01                                            lsls r3, r3, #4
008adf1c  07 92                                            str r2, [sp, #0x1c]
008adf1e  6b 44                                            add r3, sp, r3
008adf20  1b 78                                            ldrb r3, [r3]
008adf22  05 9e                                            ldr r6, [sp, #0x14]
008adf24  c7 48                                            ldr r0, [pc, #0x31c]
008adf26  08 93                                            str r3, [sp, #0x20]
008adf28  73 59                                            ldr r3, [r6, r5]
008adf2a  68 44                                            add r0, sp, r0
008adf2c  11 95                                            str r5, [sp, #0x44]
008adf2e  1b 68                                            ldr r3, [r3]
008adf30  c5 4a                                            ldr r2, [pc, #0x314]
008adf32  c6 4d                                            ldr r5, [pc, #0x318]
008adf34  03 60                                            str r3, [r0]
008adf36  0b 79                                            ldrb r3, [r1, #4]
008adf38  6a 44                                            add r2, sp, r2
008adf3a  6d 44                                            add r5, sp, r5
008adf3c  13 71                                            strb r3, [r2, #4]
008adf3e  1e 9b                                            ldr r3, [sp, #0x78]
008adf40  c3 4e                                            ldr r6, [pc, #0x30c]
008adf42  07 99                                            ldr r1, [sp, #0x1c]
008adf44  13 60                                            str r3, [r2]
008adf46  c3 48                                            ldr r0, [pc, #0x30c]
008adf48  2b 68                                            ldr r3, [r5]
008adf4a  6e 44                                            add r6, sp, r6
008adf4c  68 44                                            add r0, sp, r0
008adf4e  33 60                                            str r3, [r6]
008adf50  20 31                                            adds r1, #0x20
008adf52  90 46                                            mov r8, r2
008adf54  06 90                                            str r0, [sp, #0x18]
008adf56  f5 f7 03 fb                                      bl #0x8a3560
008adf5a  05 9a                                            ldr r2, [sp, #0x14]
008adf5c  be 4b                                            ldr r3, [pc, #0x2f8]
008adf5e  06 98                                            ldr r0, [sp, #0x18]
008adf60  d1 58                                            ldr r1, [r2, r3]
008adf62  f5 f7 25 fb                                      bl #0x8a35b0
008adf66  bd 4b                                            ldr r3, [pc, #0x2f4]
008adf68  05 9e                                            ldr r6, [sp, #0x14]
008adf6a  05 1c                                            adds r5, r0, #0
008adf6c  06 98                                            ldr r0, [sp, #0x18]
008adf6e  f1 58                                            ldr r1, [r6, r3]
008adf70  f5 f7 1e fb                                      bl #0x8a35b0
008adf74  ba 4b                                            ldr r3, [pc, #0x2e8]
008adf76  06 1c                                            adds r6, r0, #0
008adf78  05 98                                            ldr r0, [sp, #0x14]
008adf7a  c1 58                                            ldr r1, [r0, r3]
008adf7c  06 98                                            ldr r0, [sp, #0x18]
008adf7e  f5 f7 17 fb                                      bl #0x8a35b0
008adf82  2b 68                                            ldr r3, [r5]
008adf84  2d 21                                            movs r1, #0x2d
008adf86  07 1c                                            adds r7, r0, #0
008adf88  9b 6a                                            ldr r3, [r3, #0x28]
008adf8a  28 1c                                            adds r0, r5, #0
008adf8c  98 47                                            blx r3
008adf8e  0b 90                                            str r0, [sp, #0x2c]
008adf90  2b 68                                            ldr r3, [r5]
008adf92  2b 21                                            movs r1, #0x2b
008adf94  28 1c                                            adds r0, r5, #0
008adf96  9b 6a                                            ldr r3, [r3, #0x28]
008adf98  98 47                                            blx r3
008adf9a  10 90                                            str r0, [sp, #0x40]
008adf9c  2b 68                                            ldr r3, [r5]
008adf9e  20 21                                            movs r1, #0x20
008adfa0  28 1c                                            adds r0, r5, #0
008adfa2  9b 6a                                            ldr r3, [r3, #0x28]
008adfa4  98 47                                            blx r3
008adfa6  14 90                                            str r0, [sp, #0x50]
008adfa8  2b 68                                            ldr r3, [r5]
008adfaa  30 21                                            movs r1, #0x30
008adfac  28 1c                                            adds r0, r5, #0
008adfae  9b 6a                                            ldr r3, [r3, #0x28]
008adfb0  98 47                                            blx r3
008adfb2  08 99                                            ldr r1, [sp, #0x20]
008adfb4  12 90                                            str r0, [sp, #0x48]
008adfb6  00 29                                            cmp r1, #0
008adfb8  00 d1                                            bne #0x8adfbc
008adfba  0b e1                                            b #0x8ae1d4
008adfbc  3b 68                                            ldr r3, [r7]
008adfbe  38 1c                                            adds r0, r7, #0
008adfc0  9b 68                                            ldr r3, [r3, #8]
008adfc2  98 47                                            blx r3
008adfc4  13 90                                            str r0, [sp, #0x4c]
008adfc6  3b 68                                            ldr r3, [r7]
008adfc8  38 1c                                            adds r0, r7, #0
008adfca  db 68                                            ldr r3, [r3, #0xc]
008adfcc  98 47                                            blx r3
008adfce  a5 4a                                            ldr r2, [pc, #0x294]
008adfd0  0c 90                                            str r0, [sp, #0x30]
008adfd2  39 1c                                            adds r1, r7, #0
008adfd4  6a 44                                            add r2, sp, r2
008adfd6  0a 92                                            str r2, [sp, #0x28]
008adfd8  3b 68                                            ldr r3, [r7]
008adfda  10 1c                                            adds r0, r2, #0
008adfdc  1b 69                                            ldr r3, [r3, #0x10]
008adfde  98 47                                            blx r3
008adfe0  3b 68                                            ldr r3, [r7]
008adfe2  38 1c                                            adds r0, r7, #0
008adfe4  1b 6a                                            ldr r3, [r3, #0x20]
008adfe6  98 47                                            blx r3
008adfe8  9f 4b                                            ldr r3, [pc, #0x27c]
008adfea  0d 90                                            str r0, [sp, #0x34]
008adfec  39 1c                                            adds r1, r7, #0
008adfee  6b 44                                            add r3, sp, r3
008adff0  0f 93                                            str r3, [sp, #0x3c]
008adff2  3b 68                                            ldr r3, [r7]
008adff4  0f 98                                            ldr r0, [sp, #0x3c]
008adff6  5b 69                                            ldr r3, [r3, #0x14]
008adff8  98 47                                            blx r3
008adffa  62 6c                                            ldr r2, [r4, #0x44]
008adffc  24 6c                                            ldr r4, [r4, #0x40]
008adffe  91 46                                            mov sb, r2
008ae000  a3 46                                            mov fp, r4
008ae002  a1 45                                            cmp sb, r4
008ae004  00 d1                                            bne #0x8ae008
008ae006  0a e1                                            b #0x8ae21e
008ae008  13 68                                            ldr r3, [r2]
008ae00a  0b 9a                                            ldr r2, [sp, #0x2c]
008ae00c  9b 1a                                            subs r3, r3, r2
008ae00e  58 42                                            rsbs r0, r3, #0
008ae010  58 41                                            adcs r0, r3
008ae012  09 90                                            str r0, [sp, #0x24]
008ae014  00 28                                            cmp r0, #0
008ae016  01 d0                                            beq #0x8ae01c
008ae018  04 21                                            movs r1, #4
008ae01a  89 44                                            add sb, r1
008ae01c  08 9a                                            ldr r2, [sp, #0x20]
008ae01e  00 2a                                            cmp r2, #0
008ae020  00 d0                                            beq #0x8ae024
008ae022  3b e1                                            b #0x8ae29c
008ae024  09 9a                                            ldr r2, [sp, #0x24]
008ae026  00 2a                                            cmp r2, #0
008ae028  00 d1                                            bne #0x8ae02c
008ae02a  85 e1                                            b #0x8ae338
008ae02c  8f 4b                                            ldr r3, [pc, #0x23c]
008ae02e  31 1c                                            adds r1, r6, #0
008ae030  6b 44                                            add r3, sp, r3
008ae032  9a 46                                            mov sl, r3
008ae034  33 68                                            ldr r3, [r6]
008ae036  50 46                                            mov r0, sl
008ae038  db 69                                            ldr r3, [r3, #0x1c]
008ae03a  98 47                                            blx r3
008ae03c  cb 45                                            cmp fp, sb
008ae03e  00 d1                                            bne #0x8ae042
008ae040  39 e1                                            b #0x8ae2b6
008ae042  4c 46                                            mov r4, sb
008ae044  2b 68                                            ldr r3, [r5]
008ae046  22 68                                            ldr r2, [r4]
008ae048  28 1c                                            adds r0, r5, #0
008ae04a  9b 68                                            ldr r3, [r3, #8]
008ae04c  40 21                                            movs r1, #0x40
008ae04e  98 47                                            blx r3
008ae050  00 28                                            cmp r0, #0
008ae052  00 d1                                            bne #0x8ae056
008ae054  56 e1                                            b #0x8ae304
008ae056  04 34                                            adds r4, #4
008ae058  a3 45                                            cmp fp, r4
008ae05a  f3 d1                                            bne #0x8ae044
008ae05c  9a 21                                            movs r1, #0x9a
008ae05e  21 ac                                            add r4, sp, #0x84
008ae060  c9 00                                            lsls r1, r1, #3
008ae062  89 25                                            movs r5, #0x89
008ae064  69 44                                            add r1, sp, r1
008ae066  82 4a                                            ldr r2, [pc, #0x208]
008ae068  24 64                                            str r4, [r4, #0x40]
008ae06a  32 a8                                            add r0, sp, #0xc8
008ae06c  ed 00                                            lsls r5, r5, #3
008ae06e  60 f6 fc e3                                      blx #0x30e868
008ae072  20 1c                                            adds r0, r4, #0
008ae074  64 51                                            str r4, [r4, r5]
008ae076  f7 f7 97 fe                                      bl #0x8a5da8
008ae07a  23 6c                                            ldr r3, [r4, #0x40]
008ae07c  00 20                                            movs r0, #0
008ae07e  18 60                                            str r0, [r3]
008ae080  0a 99                                            ldr r1, [sp, #0x28]
008ae082  4a 69                                            ldr r2, [r1, #0x14]
008ae084  0b 69                                            ldr r3, [r1, #0x10]
008ae086  9a 42                                            cmp r2, r3
008ae088  1b d0                                            beq #0x8ae0c2
008ae08a  7a 4b                                            ldr r3, [pc, #0x1e8]
008ae08c  49 46                                            mov r1, sb
008ae08e  5a 46                                            mov r2, fp
008ae090  6b 44                                            add r3, sp, r3
008ae092  20 1c                                            adds r0, r4, #0
008ae094  f7 f7 6c fe                                      bl #0x8a5d70
008ae098  23 6c                                            ldr r3, [r4, #0x40]
008ae09a  61 59                                            ldr r1, [r4, r5]
008ae09c  0d 9a                                            ldr r2, [sp, #0x34]
008ae09e  0b 98                                            ldr r0, [sp, #0x2c]
008ae0a0  59 1a                                            subs r1, r3, r1
008ae0a2  10 9b                                            ldr r3, [sp, #0x40]
008ae0a4  89 10                                            asrs r1, r1, #2
008ae0a6  89 1a                                            subs r1, r1, r2
008ae0a8  00 22                                            movs r2, #0
008ae0aa  00 93                                            str r3, [sp]
008ae0ac  01 90                                            str r0, [sp, #4]
008ae0ae  02 92                                            str r2, [sp, #8]
008ae0b0  0c 9b                                            ldr r3, [sp, #0x30]
008ae0b2  20 1c                                            adds r0, r4, #0
008ae0b4  0a 9a                                            ldr r2, [sp, #0x28]
008ae0b6  0b f0 db fe                                      bl #0x8b9e70
008ae0ba  65 59                                            ldr r5, [r4, r5]
008ae0bc  23 6c                                            ldr r3, [r4, #0x40]
008ae0be  a9 46                                            mov sb, r5
008ae0c0  9b 46                                            mov fp, r3
008ae0c2  07 9d                                            ldr r5, [sp, #0x1c]
008ae0c4  58 46                                            mov r0, fp
008ae0c6  49 46                                            mov r1, sb
008ae0c8  ed 69                                            ldr r5, [r5, #0x1c]
008ae0ca  43 1a                                            subs r3, r0, r1
008ae0cc  52 46                                            mov r2, sl
008ae0ce  9b 10                                            asrs r3, r3, #2
008ae0d0  0b 93                                            str r3, [sp, #0x2c]
008ae0d2  0c 95                                            str r5, [sp, #0x30]
008ae0d4  13 6c                                            ldr r3, [r2, #0x40]
008ae0d6  55 6c                                            ldr r5, [r2, #0x44]
008ae0d8  07 98                                            ldr r0, [sp, #0x1c]
008ae0da  5d 1b                                            subs r5, r3, r5
008ae0dc  0b 9b                                            ldr r3, [sp, #0x2c]
008ae0de  ad 10                                            asrs r5, r5, #2
008ae0e0  5d 19                                            adds r5, r3, r5
008ae0e2  0d 9b                                            ldr r3, [sp, #0x34]
008ae0e4  5a 1e                                            subs r2, r3, #1
008ae0e6  93 41                                            sbcs r3, r2
008ae0e8  ed 18                                            adds r5, r5, r3
008ae0ea  43 68                                            ldr r3, [r0, #4]
008ae0ec  9b 05                                            lsls r3, r3, #0x16
008ae0ee  db 0f                                            lsrs r3, r3, #0x1f
008ae0f0  10 93                                            str r3, [sp, #0x40]
008ae0f2  00 2b                                            cmp r3, #0
008ae0f4  05 d0                                            beq #0x8ae102
008ae0f6  0f 99                                            ldr r1, [sp, #0x3c]
008ae0f8  0a 6c                                            ldr r2, [r1, #0x40]
008ae0fa  4b 6c                                            ldr r3, [r1, #0x44]
008ae0fc  d3 1a                                            subs r3, r2, r3
008ae0fe  9b 10                                            asrs r3, r3, #2
008ae100  ed 18                                            adds r5, r5, r3
008ae102  08 9a                                            ldr r2, [sp, #0x20]
008ae104  00 2a                                            cmp r2, #0
008ae106  00 d1                                            bne #0x8ae10a
008ae108  01 e1                                            b #0x8ae30e
008ae10a  09 9b                                            ldr r3, [sp, #0x24]
008ae10c  00 2b                                            cmp r3, #0
008ae10e  00 d0                                            beq #0x8ae112
008ae110  ef e1                                            b #0x8ae4f2
008ae112  3b 68                                            ldr r3, [r7]
008ae114  38 1c                                            adds r0, r7, #0
008ae116  5b 6a                                            ldr r3, [r3, #0x24]
008ae118  98 47                                            blx r3
008ae11a  1c ab                                            add r3, sp, #0x70
008ae11c  18 70                                            strb r0, [r3]
008ae11e  02 0a                                            lsrs r2, r0, #8
008ae120  01 33                                            adds r3, #1
008ae122  1a 70                                            strb r2, [r3]
008ae124  02 0c                                            lsrs r2, r0, #0x10
008ae126  01 33                                            adds r3, #1
008ae128  1a 70                                            strb r2, [r3]
008ae12a  53 4a                                            ldr r2, [pc, #0x14c]
008ae12c  00 0e                                            lsrs r0, r0, #0x18
008ae12e  01 33                                            adds r3, #1
008ae130  18 70                                            strb r0, [r3]
008ae132  1c 9b                                            ldr r3, [sp, #0x70]
008ae134  6a 44                                            add r2, sp, r2
008ae136  13 60                                            str r3, [r2]
008ae138  50 4b                                            ldr r3, [pc, #0x140]
008ae13a  90 78                                            ldrb r0, [r2, #2]
008ae13c  51 78                                            ldrb r1, [r2, #1]
008ae13e  16 78                                            ldrb r6, [r2]
008ae140  d2 78                                            ldrb r2, [r2, #3]
008ae142  6b 44                                            add r3, sp, r3
008ae144  98 70                                            strb r0, [r3, #2]
008ae146  da 70                                            strb r2, [r3, #3]
008ae148  59 70                                            strb r1, [r3, #1]
008ae14a  1e 70                                            strb r6, [r3]
008ae14c  01 29                                            cmp r1, #1
008ae14e  00 d1                                            bne #0x8ae152
008ae150  fd e1                                            b #0x8ae54e
008ae152  9b 78                                            ldrb r3, [r3, #2]
008ae154  01 2b                                            cmp r3, #1
008ae156  00 d1                                            bne #0x8ae15a
008ae158  f9 e1                                            b #0x8ae54e
008ae15a  0c 99                                            ldr r1, [sp, #0x30]
008ae15c  a9 42                                            cmp r1, r5
008ae15e  00 d8                                            bhi #0x8ae162
008ae160  ed e1                                            b #0x8ae53e
008ae162  07 9a                                            ldr r2, [sp, #0x1c]
008ae164  4d 1b                                            subs r5, r1, r5
008ae166  08 95                                            str r5, [sp, #0x20]
008ae168  53 68                                            ldr r3, [r2, #4]
008ae16a  07 22                                            movs r2, #7
008ae16c  1a 40                                            ands r2, r3
008ae16e  09 92                                            str r2, [sp, #0x24]
008ae170  00 2d                                            cmp r5, #0
008ae172  03 d0                                            beq #0x8ae17c
008ae174  05 23                                            movs r3, #5
008ae176  1a 42                                            tst r2, r3
008ae178  00 d1                                            bne #0x8ae17c
008ae17a  9f e2                                            b #0x8ae6bc
008ae17c  0d 9d                                            ldr r5, [sp, #0x34]
008ae17e  58 46                                            mov r0, fp
008ae180  3f 49                                            ldr r1, [pc, #0xfc]
008ae182  ab 00                                            lsls r3, r5, #2
008ae184  c0 1a                                            subs r0, r0, r3
008ae186  3f 4a                                            ldr r2, [pc, #0xfc]
008ae188  3f 4b                                            ldr r3, [pc, #0xfc]
008ae18a  18 90                                            str r0, [sp, #0x60]
008ae18c  3f 48                                            ldr r0, [pc, #0xfc]
008ae18e  69 44                                            add r1, sp, r1
008ae190  6a 44                                            add r2, sp, r2
008ae192  6b 44                                            add r3, sp, r3
008ae194  3e 4f                                            ldr r7, [pc, #0xf8]
008ae196  07 91                                            str r1, [sp, #0x1c]
008ae198  0c 92                                            str r2, [sp, #0x30]
008ae19a  1a 93                                            str r3, [sp, #0x68]
008ae19c  3d 49                                            ldr r1, [pc, #0xf4]
008ae19e  0d 9a                                            ldr r2, [sp, #0x34]
008ae1a0  0b 9b                                            ldr r3, [sp, #0x2c]
008ae1a2  68 44                                            add r0, sp, r0
008ae1a4  3c 4d                                            ldr r5, [pc, #0xf0]
008ae1a6  15 90                                            str r0, [sp, #0x54]
008ae1a8  58 46                                            mov r0, fp
008ae1aa  7f 44                                            add r7, pc
008ae1ac  69 44                                            add r1, sp, r1
008ae1ae  d2 1a                                            subs r2, r2, r3
008ae1b0  16 90                                            str r0, [sp, #0x58]
008ae1b2  48 46                                            mov r0, sb
008ae1b4  6d 44                                            add r5, sp, r5
008ae1b6  a1 46                                            mov sb, r4
008ae1b8  1b 91                                            str r1, [sp, #0x6c]
008ae1ba  44 46                                            mov r4, r8
008ae1bc  19 92                                            str r2, [sp, #0x64]
008ae1be  b8 46                                            mov r8, r7
008ae1c0  17 90                                            str r0, [sp, #0x5c]
008ae1c2  57 46                                            mov r7, sl
008ae1c4  04 2e                                            cmp r6, #4
008ae1c6  00 d9                                            bls #0x8ae1ca
008ae1c8  de e0                                            b #0x8ae388
008ae1ca  b6 00                                            lsls r6, r6, #2
008ae1cc  40 46                                            mov r0, r8
008ae1ce  33 58                                            ldr r3, [r6, r0]
008ae1d0  43 44                                            add r3, r8
008ae1d2  9f 46                                            mov pc, r3
008ae1d4  33 68                                            ldr r3, [r6]
008ae1d6  30 1c                                            adds r0, r6, #0
008ae1d8  9b 68                                            ldr r3, [r3, #8]
008ae1da  98 47                                            blx r3
008ae1dc  13 90                                            str r0, [sp, #0x4c]
008ae1de  33 68                                            ldr r3, [r6]
008ae1e0  30 1c                                            adds r0, r6, #0
008ae1e2  db 68                                            ldr r3, [r3, #0xc]
008ae1e4  98 47                                            blx r3
008ae1e6  0c 90                                            str r0, [sp, #0x30]
008ae1e8  1e 48                                            ldr r0, [pc, #0x78]
008ae1ea  31 1c                                            adds r1, r6, #0
008ae1ec  68 44                                            add r0, sp, r0
008ae1ee  0a 90                                            str r0, [sp, #0x28]
008ae1f0  33 68                                            ldr r3, [r6]
008ae1f2  1b 69                                            ldr r3, [r3, #0x10]
008ae1f4  98 47                                            blx r3
008ae1f6  33 68                                            ldr r3, [r6]
008ae1f8  30 1c                                            adds r0, r6, #0
008ae1fa  1b 6a                                            ldr r3, [r3, #0x20]
008ae1fc  98 47                                            blx r3
008ae1fe  1a 49                                            ldr r1, [pc, #0x68]
008ae200  0d 90                                            str r0, [sp, #0x34]
008ae202  69 44                                            add r1, sp, r1
008ae204  0f 91                                            str r1, [sp, #0x3c]
008ae206  33 68                                            ldr r3, [r6]
008ae208  08 1c                                            adds r0, r1, #0
008ae20a  31 1c                                            adds r1, r6, #0
008ae20c  5b 69                                            ldr r3, [r3, #0x14]
008ae20e  98 47                                            blx r3
008ae210  62 6c                                            ldr r2, [r4, #0x44]
008ae212  24 6c                                            ldr r4, [r4, #0x40]
008ae214  91 46                                            mov sb, r2
008ae216  a3 46                                            mov fp, r4
008ae218  a1 45                                            cmp sb, r4
008ae21a  00 d0                                            beq #0x8ae21e
008ae21c  f4 e6                                            b #0x8ae008
008ae21e  0a 4d                                            ldr r5, [pc, #0x28]
008ae220  0e 9e                                            ldr r6, [sp, #0x38]
008ae222  40 46                                            mov r0, r8
008ae224  6d 44                                            add r5, sp, r5
008ae226  2b 68                                            ldr r3, [r5]
008ae228  33 60                                            str r3, [r6]
008ae22a  03 79                                            ldrb r3, [r0, #4]
008ae22c  33 71                                            strb r3, [r6, #4]
008ae22e  4d e0                                            b #0x8ae2cc
; mapping-symbol data/literal pool
008ae230  e4 f5 ff ff 94 6b 0e 00 ac 40 00 00 44 0a 00 00  .byte 0xe4, 0xf5, 0xff, 0xff, 0x94, 0x6b, 0x0e, 0x00, 0xac, 0x40, 0x00, 0x00, 0x44, 0x0a, 0x00, 0x00
008ae240  4c 0a 00 00 14 0a 00 00 bc 09 00 00 48 0a 00 00  .byte 0x4c, 0x0a, 0x00, 0x00, 0x14, 0x0a, 0x00, 0x00, 0xbc, 0x09, 0x00, 0x00, 0x48, 0x0a, 0x00, 0x00
008ae250  dc 09 00 00 d8 09 00 00 44 1e 00 00 d0 27 00 00  .byte 0xdc, 0x09, 0x00, 0x00, 0xd8, 0x09, 0x00, 0x00, 0x44, 0x1e, 0x00, 0x00, 0xd0, 0x27, 0x00, 0x00
008ae260  1c 2d 00 00 fc 09 00 00 1c 09 00 00 d4 08 00 00  .byte 0x1c, 0x2d, 0x00, 0x00, 0xfc, 0x09, 0x00, 0x00, 0x1c, 0x09, 0x00, 0x00, 0xd4, 0x08, 0x00, 0x00
008ae270  04 04 00 00 f8 09 00 00 cc 09 00 00 d4 09 00 00  .byte 0x04, 0x04, 0x00, 0x00, 0xf8, 0x09, 0x00, 0x00, 0xcc, 0x09, 0x00, 0x00, 0xd4, 0x09, 0x00, 0x00
008ae280  b4 09 00 00 7c 09 00 00 e8 09 00 00 74 09 00 00  .byte 0xb4, 0x09, 0x00, 0x00, 0x7c, 0x09, 0x00, 0x00, 0xe8, 0x09, 0x00, 0x00, 0x74, 0x09, 0x00, 0x00
008ae290  9e 79 06 00 e4 09 00 00 d5 09 00 00              .byte 0x9e, 0x79, 0x06, 0x00, 0xe4, 0x09, 0x00, 0x00, 0xd5, 0x09, 0x00, 0x00
; decoder-mode: thumb
008ae29c  09 9b                                            ldr r3, [sp, #0x24]
008ae29e  00 2b                                            cmp r3, #0
008ae2a0  52 d0                                            beq #0x8ae348
008ae2a2  cb 48                                            ldr r0, [pc, #0x32c]
008ae2a4  3b 68                                            ldr r3, [r7]
008ae2a6  39 1c                                            adds r1, r7, #0
008ae2a8  68 44                                            add r0, sp, r0
008ae2aa  db 69                                            ldr r3, [r3, #0x1c]
008ae2ac  82 46                                            mov sl, r0
008ae2ae  98 47                                            blx r3
008ae2b0  cb 45                                            cmp fp, sb
008ae2b2  00 d0                                            beq #0x8ae2b6
008ae2b4  c5 e6                                            b #0x8ae042
008ae2b6  c7 49                                            ldr r1, [pc, #0x31c]
008ae2b8  0e 9a                                            ldr r2, [sp, #0x38]
008ae2ba  45 46                                            mov r5, r8
008ae2bc  69 44                                            add r1, sp, r1
008ae2be  0b 68                                            ldr r3, [r1]
008ae2c0  13 60                                            str r3, [r2]
008ae2c2  2b 79                                            ldrb r3, [r5, #4]
008ae2c4  13 71                                            strb r3, [r2, #4]
008ae2c6  50 46                                            mov r0, sl
008ae2c8  6b f6 72 e0                                      blx #0x3193b0
008ae2cc  0f 98                                            ldr r0, [sp, #0x3c]
008ae2ce  6b f6 70 e0                                      blx #0x3193b0
008ae2d2  0a 98                                            ldr r0, [sp, #0x28]
008ae2d4  65 f6 6a e3                                      blx #0x3139ac
008ae2d8  06 98                                            ldr r0, [sp, #0x18]
008ae2da  f5 f7 0b f9                                      bl #0x8a34f4
008ae2de  11 9a                                            ldr r2, [sp, #0x44]
008ae2e0  05 99                                            ldr r1, [sp, #0x14]
008ae2e2  bd 4d                                            ldr r5, [pc, #0x2f4]
008ae2e4  0e 98                                            ldr r0, [sp, #0x38]
008ae2e6  8b 58                                            ldr r3, [r1, r2]
008ae2e8  6d 44                                            add r5, sp, r5
008ae2ea  2a 68                                            ldr r2, [r5]
008ae2ec  1b 68                                            ldr r3, [r3]
008ae2ee  9a 42                                            cmp r2, r3
008ae2f0  00 d0                                            beq #0x8ae2f4
008ae2f2  04 e2                                            b #0x8ae6fe
008ae2f4  b9 4b                                            ldr r3, [pc, #0x2e4]
008ae2f6  9d 44                                            add sp, r3
008ae2f8  3c bc                                            pop {r2, r3, r4, r5}
008ae2fa  90 46                                            mov r8, r2
008ae2fc  99 46                                            mov sb, r3
008ae2fe  a2 46                                            mov sl, r4
008ae300  ab 46                                            mov fp, r5
008ae302  f0 bd                                            pop {r4, r5, r6, r7, pc}
008ae304  a3 46                                            mov fp, r4
008ae306  4c 45                                            cmp r4, sb
008ae308  00 d0                                            beq #0x8ae30c
008ae30a  a7 e6                                            b #0x8ae05c
008ae30c  d3 e7                                            b #0x8ae2b6
008ae30e  09 98                                            ldr r0, [sp, #0x24]
008ae310  00 28                                            cmp r0, #0
008ae312  00 d1                                            bne #0x8ae316
008ae314  ff e0                                            b #0x8ae516
008ae316  33 68                                            ldr r3, [r6]
008ae318  30 1c                                            adds r0, r6, #0
008ae31a  9b 6a                                            ldr r3, [r3, #0x28]
008ae31c  98 47                                            blx r3
008ae31e  1c ab                                            add r3, sp, #0x70
008ae320  18 70                                            strb r0, [r3]
008ae322  02 0a                                            lsrs r2, r0, #8
008ae324  01 33                                            adds r3, #1
008ae326  1a 70                                            strb r2, [r3]
008ae328  02 0c                                            lsrs r2, r0, #0x10
008ae32a  01 33                                            adds r3, #1
008ae32c  1a 70                                            strb r2, [r3]
008ae32e  00 0e                                            lsrs r0, r0, #0x18
008ae330  01 33                                            adds r3, #1
008ae332  18 70                                            strb r0, [r3]
008ae334  aa 4a                                            ldr r2, [pc, #0x2a8]
008ae336  fc e6                                            b #0x8ae132
008ae338  33 68                                            ldr r3, [r6]
008ae33a  a5 48                                            ldr r0, [pc, #0x294]
008ae33c  31 1c                                            adds r1, r6, #0
008ae33e  9b 69                                            ldr r3, [r3, #0x18]
008ae340  68 44                                            add r0, sp, r0
008ae342  82 46                                            mov sl, r0
008ae344  98 47                                            blx r3
008ae346  79 e6                                            b #0x8ae03c
008ae348  a1 49                                            ldr r1, [pc, #0x284]
008ae34a  3b 68                                            ldr r3, [r7]
008ae34c  69 44                                            add r1, sp, r1
008ae34e  8a 46                                            mov sl, r1
008ae350  08 1c                                            adds r0, r1, #0
008ae352  9b 69                                            ldr r3, [r3, #0x18]
008ae354  39 1c                                            adds r1, r7, #0
008ae356  98 47                                            blx r3
008ae358  70 e6                                            b #0x8ae03c
008ae35a  23 79                                            ldrb r3, [r4, #4]
008ae35c  00 2b                                            cmp r3, #0
008ae35e  0d d0                                            beq #0x8ae37c
008ae360  20 68                                            ldr r0, [r4]
008ae362  43 69                                            ldr r3, [r0, #0x14]
008ae364  82 69                                            ldr r2, [r0, #0x18]
008ae366  93 42                                            cmp r3, r2
008ae368  00 d3                                            blo #0x8ae36c
008ae36a  bf e1                                            b #0x8ae6ec
008ae36c  14 99                                            ldr r1, [sp, #0x50]
008ae36e  1a 1c                                            adds r2, r3, #0
008ae370  02 c2                                            stm r2!, {r1}
008ae372  42 61                                            str r2, [r0, #0x14]
008ae374  18 68                                            ldr r0, [r3]
008ae376  01 23                                            movs r3, #1
008ae378  01 30                                            adds r0, #1
008ae37a  00 d1                                            bne #0x8ae37e
008ae37c  00 23                                            movs r3, #0
008ae37e  23 71                                            strb r3, [r4, #4]
008ae380  09 9a                                            ldr r2, [sp, #0x24]
008ae382  04 2a                                            cmp r2, #4
008ae384  00 d1                                            bne #0x8ae388
008ae386  e4 e0                                            b #0x8ae552
008ae388  06 9b                                            ldr r3, [sp, #0x18]
008ae38a  ab 42                                            cmp r3, r5
008ae38c  58 d0                                            beq #0x8ae440
008ae38e  2e 78                                            ldrb r6, [r5]
008ae390  01 35                                            adds r5, #1
008ae392  17 e7                                            b #0x8ae1c4
008ae394  0d 9a                                            ldr r2, [sp, #0x34]
008ae396  00 2a                                            cmp r2, #0
008ae398  00 d1                                            bne #0x8ae39c
008ae39a  62 e1                                            b #0x8ae662
008ae39c  0b 9a                                            ldr r2, [sp, #0x2c]
008ae39e  0d 9b                                            ldr r3, [sp, #0x34]
008ae3a0  9a 42                                            cmp r2, r3
008ae3a2  00 dd                                            ble #0x8ae3a6
008ae3a4  32 e1                                            b #0x8ae60c
008ae3a6  12 99                                            ldr r1, [sp, #0x48]
008ae3a8  20 1c                                            adds r0, r4, #0
008ae3aa  f6 f7 65 fb                                      bl #0x8a4a78
008ae3ae  13 99                                            ldr r1, [sp, #0x4c]
008ae3b0  20 1c                                            adds r0, r4, #0
008ae3b2  f6 f7 61 fb                                      bl #0x8a4a78
008ae3b6  19 9e                                            ldr r6, [sp, #0x64]
008ae3b8  20 79                                            ldrb r0, [r4, #4]
008ae3ba  b2 46                                            mov sl, r6
008ae3bc  51 46                                            mov r1, sl
008ae3be  26 68                                            ldr r6, [r4]
008ae3c0  83 46                                            mov fp, r0
008ae3c2  00 29                                            cmp r1, #0
008ae3c4  00 d1                                            bne #0x8ae3c8
008ae3c6  e0 e0                                            b #0x8ae58a
008ae3c8  22 1c                                            adds r2, r4, #0
008ae3ca  ab 46                                            mov fp, r5
008ae3cc  54 46                                            mov r4, sl
008ae3ce  05 1c                                            adds r5, r0, #0
008ae3d0  ca 46                                            mov sl, sb
008ae3d2  b9 46                                            mov sb, r7
008ae3d4  17 1c                                            adds r7, r2, #0
008ae3d6  0d e0                                            b #0x8ae3f4
008ae3d8  12 98                                            ldr r0, [sp, #0x48]
008ae3da  1a 1c                                            adds r2, r3, #0
008ae3dc  01 c2                                            stm r2!, {r0}
008ae3de  72 61                                            str r2, [r6, #0x14]
008ae3e0  18 68                                            ldr r0, [r3]
008ae3e2  43 1c                                            adds r3, r0, #1
008ae3e4  5a 1e                                            subs r2, r3, #1
008ae3e6  93 41                                            sbcs r3, r2
008ae3e8  5b 42                                            rsbs r3, r3, #0
008ae3ea  1d 40                                            ands r5, r3
008ae3ec  01 3c                                            subs r4, #1
008ae3ee  00 2c                                            cmp r4, #0
008ae3f0  00 d1                                            bne #0x8ae3f4
008ae3f2  c4 e0                                            b #0x8ae57e
008ae3f4  00 2d                                            cmp r5, #0
008ae3f6  f9 d0                                            beq #0x8ae3ec
008ae3f8  73 69                                            ldr r3, [r6, #0x14]
008ae3fa  b2 69                                            ldr r2, [r6, #0x18]
008ae3fc  93 42                                            cmp r3, r2
008ae3fe  eb d3                                            blo #0x8ae3d8
008ae400  33 68                                            ldr r3, [r6]
008ae402  30 1c                                            adds r0, r6, #0
008ae404  12 99                                            ldr r1, [sp, #0x48]
008ae406  5b 6b                                            ldr r3, [r3, #0x34]
008ae408  98 47                                            blx r3
008ae40a  ea e7                                            b #0x8ae3e2
008ae40c  7b 6c                                            ldr r3, [r7, #0x44]
008ae40e  3a 6c                                            ldr r2, [r7, #0x40]
008ae410  93 42                                            cmp r3, r2
008ae412  b9 d0                                            beq #0x8ae388
008ae414  19 68                                            ldr r1, [r3]
008ae416  23 79                                            ldrb r3, [r4, #4]
008ae418  00 2b                                            cmp r3, #0
008ae41a  00 d1                                            bne #0x8ae41e
008ae41c  8c e0                                            b #0x8ae538
008ae41e  20 68                                            ldr r0, [r4]
008ae420  43 69                                            ldr r3, [r0, #0x14]
008ae422  82 69                                            ldr r2, [r0, #0x18]
008ae424  93 42                                            cmp r3, r2
008ae426  00 d3                                            blo #0x8ae42a
008ae428  65 e1                                            b #0x8ae6f6
008ae42a  1a 1c                                            adds r2, r3, #0
008ae42c  02 c2                                            stm r2!, {r1}
008ae42e  42 61                                            str r2, [r0, #0x14]
008ae430  18 68                                            ldr r0, [r3]
008ae432  01 23                                            movs r3, #1
008ae434  01 30                                            adds r0, #1
008ae436  7f d0                                            beq #0x8ae538
008ae438  23 71                                            strb r3, [r4, #4]
008ae43a  06 9b                                            ldr r3, [sp, #0x18]
008ae43c  ab 42                                            cmp r3, r5
008ae43e  a6 d1                                            bne #0x8ae38e
008ae440  3a 6c                                            ldr r2, [r7, #0x40]
008ae442  79 6c                                            ldr r1, [r7, #0x44]
008ae444  a0 46                                            mov r8, r4
008ae446  ba 46                                            mov sl, r7
008ae448  53 1a                                            subs r3, r2, r1
008ae44a  9b 10                                            asrs r3, r3, #2
008ae44c  4c 46                                            mov r4, sb
008ae44e  01 2b                                            cmp r3, #1
008ae450  1d d9                                            bls #0x8ae48e
008ae452  60 4d                                            ldr r5, [pc, #0x180]
008ae454  46 46                                            mov r6, r8
008ae456  63 48                                            ldr r0, [pc, #0x18c]
008ae458  6d 44                                            add r5, sp, r5
008ae45a  2b 68                                            ldr r3, [r5]
008ae45c  35 79                                            ldrb r5, [r6, #4]
008ae45e  9e 26                                            movs r6, #0x9e
008ae460  36 01                                            lsls r6, r6, #4
008ae462  68 44                                            add r0, sp, r0
008ae464  6e 44                                            add r6, sp, r6
008ae466  03 60                                            str r3, [r0]
008ae468  05 71                                            strb r5, [r0, #4]
008ae46a  01 96                                            str r6, [sp, #4]
008ae46c  5e 4d                                            ldr r5, [pc, #0x178]
008ae46e  40 68                                            ldr r0, [r0, #4]
008ae470  04 31                                            adds r1, #4
008ae472  6d 44                                            add r5, sp, r5
008ae474  00 90                                            str r0, [sp]
008ae476  28 1c                                            adds r0, r5, #0
008ae478  f8 f7 3c fd                                      bl #0x8a6ef4
008ae47c  5a 48                                            ldr r0, [pc, #0x168]
008ae47e  55 49                                            ldr r1, [pc, #0x154]
008ae480  42 46                                            mov r2, r8
008ae482  68 44                                            add r0, sp, r0
008ae484  03 68                                            ldr r3, [r0]
008ae486  69 44                                            add r1, sp, r1
008ae488  0b 60                                            str r3, [r1]
008ae48a  2b 79                                            ldrb r3, [r5, #4]
008ae48c  13 71                                            strb r3, [r2, #4]
008ae48e  08 9b                                            ldr r3, [sp, #0x20]
008ae490  00 2b                                            cmp r3, #0
008ae492  04 d0                                            beq #0x8ae49e
008ae494  09 9d                                            ldr r5, [sp, #0x24]
008ae496  06 23                                            movs r3, #6
008ae498  1d 42                                            tst r5, r3
008ae49a  00 d1                                            bne #0x8ae49e
008ae49c  f6 e0                                            b #0x8ae68c
008ae49e  4d 4a                                            ldr r2, [pc, #0x134]
008ae4a0  0e 9d                                            ldr r5, [sp, #0x38]
008ae4a2  46 46                                            mov r6, r8
008ae4a4  6a 44                                            add r2, sp, r2
008ae4a6  13 68                                            ldr r3, [r2]
008ae4a8  20 1c                                            adds r0, r4, #0
008ae4aa  2b 60                                            str r3, [r5]
008ae4ac  33 79                                            ldrb r3, [r6, #4]
008ae4ae  2b 71                                            strb r3, [r5, #4]
008ae4b0  f7 f7 ce fa                                      bl #0x8a5a50
008ae4b4  07 e7                                            b #0x8ae2c6
008ae4b6  10 99                                            ldr r1, [sp, #0x40]
008ae4b8  00 29                                            cmp r1, #0
008ae4ba  00 d1                                            bne #0x8ae4be
008ae4bc  64 e7                                            b #0x8ae388
008ae4be  20 79                                            ldrb r0, [r4, #4]
008ae4c0  07 9e                                            ldr r6, [sp, #0x1c]
008ae4c2  23 68                                            ldr r3, [r4]
008ae4c4  0f 9a                                            ldr r2, [sp, #0x3c]
008ae4c6  30 71                                            strb r0, [r6, #4]
008ae4c8  48 48                                            ldr r0, [pc, #0x120]
008ae4ca  51 6c                                            ldr r1, [r2, #0x44]
008ae4cc  33 60                                            str r3, [r6]
008ae4ce  68 44                                            add r0, sp, r0
008ae4d0  12 6c                                            ldr r2, [r2, #0x40]
008ae4d2  01 90                                            str r0, [sp, #4]
008ae4d4  07 98                                            ldr r0, [sp, #0x1c]
008ae4d6  46 4e                                            ldr r6, [pc, #0x118]
008ae4d8  40 68                                            ldr r0, [r0, #4]
008ae4da  6e 44                                            add r6, sp, r6
008ae4dc  00 90                                            str r0, [sp]
008ae4de  30 1c                                            adds r0, r6, #0
008ae4e0  f8 f7 08 fd                                      bl #0x8a6ef4
008ae4e4  42 49                                            ldr r1, [pc, #0x108]
008ae4e6  69 44                                            add r1, sp, r1
008ae4e8  0b 68                                            ldr r3, [r1]
008ae4ea  23 60                                            str r3, [r4]
008ae4ec  33 79                                            ldrb r3, [r6, #4]
008ae4ee  23 71                                            strb r3, [r4, #4]
008ae4f0  4a e7                                            b #0x8ae388
008ae4f2  3b 68                                            ldr r3, [r7]
008ae4f4  38 1c                                            adds r0, r7, #0
008ae4f6  9b 6a                                            ldr r3, [r3, #0x28]
008ae4f8  98 47                                            blx r3
008ae4fa  1c ab                                            add r3, sp, #0x70
008ae4fc  18 70                                            strb r0, [r3]
008ae4fe  02 0a                                            lsrs r2, r0, #8
008ae500  01 33                                            adds r3, #1
008ae502  1a 70                                            strb r2, [r3]
008ae504  02 0c                                            lsrs r2, r0, #0x10
008ae506  01 33                                            adds r3, #1
008ae508  1a 70                                            strb r2, [r3]
008ae50a  00 0e                                            lsrs r0, r0, #0x18
008ae50c  01 33                                            adds r3, #1
008ae50e  9d 22                                            movs r2, #0x9d
008ae510  18 70                                            strb r0, [r3]
008ae512  12 01                                            lsls r2, r2, #4
008ae514  0d e6                                            b #0x8ae132
008ae516  33 68                                            ldr r3, [r6]
008ae518  30 1c                                            adds r0, r6, #0
008ae51a  5b 6a                                            ldr r3, [r3, #0x24]
008ae51c  98 47                                            blx r3
008ae51e  1c ab                                            add r3, sp, #0x70
008ae520  18 70                                            strb r0, [r3]
008ae522  02 0a                                            lsrs r2, r0, #8
008ae524  01 33                                            adds r3, #1
008ae526  1a 70                                            strb r2, [r3]
008ae528  02 0c                                            lsrs r2, r0, #0x10
008ae52a  01 33                                            adds r3, #1
008ae52c  1a 70                                            strb r2, [r3]
008ae52e  00 0e                                            lsrs r0, r0, #0x18
008ae530  01 33                                            adds r3, #1
008ae532  18 70                                            strb r0, [r3]
008ae534  2f 4a                                            ldr r2, [pc, #0xbc]
008ae536  fc e5                                            b #0x8ae132
008ae538  00 23                                            movs r3, #0
008ae53a  23 71                                            strb r3, [r4, #4]
008ae53c  7d e7                                            b #0x8ae43a
008ae53e  07 98                                            ldr r0, [sp, #0x1c]
008ae540  07 22                                            movs r2, #7
008ae542  00 21                                            movs r1, #0
008ae544  43 68                                            ldr r3, [r0, #4]
008ae546  08 91                                            str r1, [sp, #0x20]
008ae548  1a 40                                            ands r2, r3
008ae54a  09 92                                            str r2, [sp, #0x24]
008ae54c  16 e6                                            b #0x8ae17c
008ae54e  01 35                                            adds r5, #1
008ae550  03 e6                                            b #0x8ae15a
008ae552  08 9b                                            ldr r3, [sp, #0x20]
008ae554  00 2b                                            cmp r3, #0
008ae556  00 d1                                            bne #0x8ae55a
008ae558  16 e7                                            b #0x8ae388
008ae55a  27 4b                                            ldr r3, [pc, #0x9c]
008ae55c  27 4e                                            ldr r6, [pc, #0x9c]
008ae55e  6b 44                                            add r3, sp, r3
008ae560  00 93                                            str r3, [sp]
008ae562  6e 44                                            add r6, sp, r6
008ae564  30 1c                                            adds r0, r6, #0
008ae566  08 9b                                            ldr r3, [sp, #0x20]
008ae568  21 68                                            ldr r1, [r4]
008ae56a  62 68                                            ldr r2, [r4, #4]
008ae56c  f8 f7 fa fb                                      bl #0x8a6d64
008ae570  22 48                                            ldr r0, [pc, #0x88]
008ae572  68 44                                            add r0, sp, r0
008ae574  03 68                                            ldr r3, [r0]
008ae576  23 60                                            str r3, [r4]
008ae578  33 79                                            ldrb r3, [r6, #4]
008ae57a  23 71                                            strb r3, [r4, #4]
008ae57c  04 e7                                            b #0x8ae388
008ae57e  2b 1c                                            adds r3, r5, #0
008ae580  3c 1c                                            adds r4, r7, #0
008ae582  5d 46                                            mov r5, fp
008ae584  4f 46                                            mov r7, sb
008ae586  9b 46                                            mov fp, r3
008ae588  d1 46                                            mov sb, sl
008ae58a  1d 4b                                            ldr r3, [pc, #0x74]
008ae58c  59 46                                            mov r1, fp
008ae58e  6b 44                                            add r3, sp, r3
008ae590  1e 60                                            str r6, [r3]
008ae592  19 71                                            strb r1, [r3, #4]
008ae594  26 60                                            str r6, [r4]
008ae596  1b 79                                            ldrb r3, [r3, #4]
008ae598  07 9a                                            ldr r2, [sp, #0x1c]
008ae59a  17 99                                            ldr r1, [sp, #0x5c]
008ae59c  23 71                                            strb r3, [r4, #4]
008ae59e  23 79                                            ldrb r3, [r4, #4]
008ae5a0  16 60                                            str r6, [r2]
008ae5a2  13 71                                            strb r3, [r2, #4]
008ae5a4  17 4b                                            ldr r3, [pc, #0x5c]
008ae5a6  6b 44                                            add r3, sp, r3
008ae5a8  9a 46                                            mov sl, r3
008ae5aa  17 4b                                            ldr r3, [pc, #0x5c]
008ae5ac  50 46                                            mov r0, sl
008ae5ae  6b 44                                            add r3, sp, r3
008ae5b0  01 93                                            str r3, [sp, #4]
008ae5b2  53 68                                            ldr r3, [r2, #4]
008ae5b4  16 9a                                            ldr r2, [sp, #0x58]
008ae5b6  00 93                                            str r3, [sp]
008ae5b8  33 1c                                            adds r3, r6, #0
008ae5ba  12 4e                                            ldr r6, [pc, #0x48]
008ae5bc  f8 f7 02 fc                                      bl #0x8a6dc4
008ae5c0  6e 44                                            add r6, sp, r6
008ae5c2  33 68                                            ldr r3, [r6]
008ae5c4  50 46                                            mov r0, sl
008ae5c6  23 60                                            str r3, [r4]
008ae5c8  03 79                                            ldrb r3, [r0, #4]
008ae5ca  23 71                                            strb r3, [r4, #4]
008ae5cc  dc e6                                            b #0x8ae388
008ae5ce  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008ae5d0  d4 08 00 00 bc 09 00 00 14 0a 00 00 1c 0a 00 00  .byte 0xd4, 0x08, 0x00, 0x00, 0xbc, 0x09, 0x00, 0x00, 0x14, 0x0a, 0x00, 0x00, 0x1c, 0x0a, 0x00, 0x00
008ae5e0  c8 09 00 00 b4 09 00 00 6c 09 00 00 f4 09 00 00  .byte 0xc8, 0x09, 0x00, 0x00, 0xb4, 0x09, 0x00, 0x00, 0x6c, 0x09, 0x00, 0x00, 0xf4, 0x09, 0x00, 0x00
008ae5f0  9c 09 00 00 c4 09 00 00 dc 09 00 00 a4 09 00 00  .byte 0x9c, 0x09, 0x00, 0x00, 0xc4, 0x09, 0x00, 0x00, 0xdc, 0x09, 0x00, 0x00, 0xa4, 0x09, 0x00, 0x00
008ae600  8c 09 00 00 84 09 00 00 ec 09 00 00              .byte 0x8c, 0x09, 0x00, 0x00, 0x84, 0x09, 0x00, 0x00, 0xec, 0x09, 0x00, 0x00
; decoder-mode: thumb
008ae60c  07 99                                            ldr r1, [sp, #0x1c]
008ae60e  22 79                                            ldrb r2, [r4, #4]
008ae610  23 68                                            ldr r3, [r4]
008ae612  0c 98                                            ldr r0, [sp, #0x30]
008ae614  0a 71                                            strb r2, [r1, #4]
008ae616  1a 9a                                            ldr r2, [sp, #0x68]
008ae618  0b 60                                            str r3, [r1]
008ae61a  01 92                                            str r2, [sp, #4]
008ae61c  4a 68                                            ldr r2, [r1, #4]
008ae61e  17 99                                            ldr r1, [sp, #0x5c]
008ae620  00 92                                            str r2, [sp]
008ae622  18 9a                                            ldr r2, [sp, #0x60]
008ae624  f8 f7 ce fb                                      bl #0x8a6dc4
008ae628  0c 9e                                            ldr r6, [sp, #0x30]
008ae62a  13 99                                            ldr r1, [sp, #0x4c]
008ae62c  20 1c                                            adds r0, r4, #0
008ae62e  33 68                                            ldr r3, [r6]
008ae630  23 60                                            str r3, [r4]
008ae632  33 79                                            ldrb r3, [r6, #4]
008ae634  23 71                                            strb r3, [r4, #4]
008ae636  f6 f7 1f fa                                      bl #0x8a4a78
008ae63a  23 68                                            ldr r3, [r4]
008ae63c  07 98                                            ldr r0, [sp, #0x1c]
008ae63e  22 79                                            ldrb r2, [r4, #4]
008ae640  1b 99                                            ldr r1, [sp, #0x6c]
008ae642  03 60                                            str r3, [r0]
008ae644  02 71                                            strb r2, [r0, #4]
008ae646  01 91                                            str r1, [sp, #4]
008ae648  42 68                                            ldr r2, [r0, #4]
008ae64a  18 99                                            ldr r1, [sp, #0x60]
008ae64c  15 98                                            ldr r0, [sp, #0x54]
008ae64e  00 92                                            str r2, [sp]
008ae650  16 9a                                            ldr r2, [sp, #0x58]
008ae652  f8 f7 b7 fb                                      bl #0x8a6dc4
008ae656  15 9a                                            ldr r2, [sp, #0x54]
008ae658  13 68                                            ldr r3, [r2]
008ae65a  23 60                                            str r3, [r4]
008ae65c  13 79                                            ldrb r3, [r2, #4]
008ae65e  23 71                                            strb r3, [r4, #4]
008ae660  eb e6                                            b #0x8ae43a
008ae662  22 79                                            ldrb r2, [r4, #4]
008ae664  07 9e                                            ldr r6, [sp, #0x1c]
008ae666  23 68                                            ldr r3, [r4]
008ae668  07 98                                            ldr r0, [sp, #0x1c]
008ae66a  32 71                                            strb r2, [r6, #4]
008ae66c  9f 22                                            movs r2, #0x9f
008ae66e  12 01                                            lsls r2, r2, #4
008ae670  6a 44                                            add r2, sp, r2
008ae672  33 60                                            str r3, [r6]
008ae674  01 92                                            str r2, [sp, #4]
008ae676  23 4e                                            ldr r6, [pc, #0x8c]
008ae678  42 68                                            ldr r2, [r0, #4]
008ae67a  17 99                                            ldr r1, [sp, #0x5c]
008ae67c  6e 44                                            add r6, sp, r6
008ae67e  00 92                                            str r2, [sp]
008ae680  30 1c                                            adds r0, r6, #0
008ae682  16 9a                                            ldr r2, [sp, #0x58]
008ae684  f8 f7 9e fb                                      bl #0x8a6dc4
008ae688  1e 49                                            ldr r1, [pc, #0x78]
008ae68a  2c e7                                            b #0x8ae4e6
008ae68c  1e 4b                                            ldr r3, [pc, #0x78]
008ae68e  1f 4e                                            ldr r6, [pc, #0x7c]
008ae690  1f 4d                                            ldr r5, [pc, #0x7c]
008ae692  6b 44                                            add r3, sp, r3
008ae694  00 93                                            str r3, [sp]
008ae696  6e 44                                            add r6, sp, r6
008ae698  31 68                                            ldr r1, [r6]
008ae69a  1d 4e                                            ldr r6, [pc, #0x74]
008ae69c  6d 44                                            add r5, sp, r5
008ae69e  43 46                                            mov r3, r8
008ae6a0  28 1c                                            adds r0, r5, #0
008ae6a2  5a 68                                            ldr r2, [r3, #4]
008ae6a4  08 9b                                            ldr r3, [sp, #0x20]
008ae6a6  f8 f7 5d fb                                      bl #0x8a6d64
008ae6aa  6e 44                                            add r6, sp, r6
008ae6ac  17 48                                            ldr r0, [pc, #0x5c]
008ae6ae  33 68                                            ldr r3, [r6]
008ae6b0  41 46                                            mov r1, r8
008ae6b2  68 44                                            add r0, sp, r0
008ae6b4  03 60                                            str r3, [r0]
008ae6b6  2b 79                                            ldrb r3, [r5, #4]
008ae6b8  0b 71                                            strb r3, [r1, #4]
008ae6ba  f0 e6                                            b #0x8ae49e
008ae6bc  12 4b                                            ldr r3, [pc, #0x48]
008ae6be  15 4d                                            ldr r5, [pc, #0x54]
008ae6c0  6b 44                                            add r3, sp, r3
008ae6c2  00 93                                            str r3, [sp]
008ae6c4  11 4b                                            ldr r3, [pc, #0x44]
008ae6c6  6d 44                                            add r5, sp, r5
008ae6c8  28 1c                                            adds r0, r5, #0
008ae6ca  6b 44                                            add r3, sp, r3
008ae6cc  19 68                                            ldr r1, [r3]
008ae6ce  43 46                                            mov r3, r8
008ae6d0  5a 68                                            ldr r2, [r3, #4]
008ae6d2  08 9b                                            ldr r3, [sp, #0x20]
008ae6d4  f8 f7 46 fb                                      bl #0x8a6d64
008ae6d8  0e 48                                            ldr r0, [pc, #0x38]
008ae6da  0c 49                                            ldr r1, [pc, #0x30]
008ae6dc  42 46                                            mov r2, r8
008ae6de  68 44                                            add r0, sp, r0
008ae6e0  03 68                                            ldr r3, [r0]
008ae6e2  69 44                                            add r1, sp, r1
008ae6e4  0b 60                                            str r3, [r1]
008ae6e6  2b 79                                            ldrb r3, [r5, #4]
008ae6e8  13 71                                            strb r3, [r2, #4]
008ae6ea  47 e5                                            b #0x8ae17c
008ae6ec  03 68                                            ldr r3, [r0]
008ae6ee  14 99                                            ldr r1, [sp, #0x50]
008ae6f0  5b 6b                                            ldr r3, [r3, #0x34]
008ae6f2  98 47                                            blx r3
008ae6f4  3f e6                                            b #0x8ae376
008ae6f6  03 68                                            ldr r3, [r0]
008ae6f8  5b 6b                                            ldr r3, [r3, #0x34]
008ae6fa  98 47                                            blx r3
008ae6fc  99 e6                                            b #0x8ae432
008ae6fe  5f f6 08 e6                                      blx #0x30e310
008ae702  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008ae704  94 09 00 00 dc 09 00 00 bc 09 00 00 64 09 00 00  .byte 0x94, 0x09, 0x00, 0x00, 0xdc, 0x09, 0x00, 0x00, 0xbc, 0x09, 0x00, 0x00, 0x64, 0x09, 0x00, 0x00
008ae714  ac 09 00 00                                      .byte 0xac, 0x09, 0x00, 0x00

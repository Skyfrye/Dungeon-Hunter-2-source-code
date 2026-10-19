; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008a4f64, declared_size=32, range_size=32, mode=thumb
; class-group: std::num_put<wchar_t, std::ostreambuf_iterator<wchar_t, std::char_traits<wchar_t> > >
; alias: _ZNSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEED1Ev
; demangled: std::num_put<wchar_t, std::ostreambuf_iterator<wchar_t, std::char_traits<wchar_t> > >::~num_put()
; decoder-mode: thumb
008a4f64  10 b5                                            push {r4, lr}
008a4f66  05 4b                                            ldr r3, [pc, #0x14]
008a4f68  05 4a                                            ldr r2, [pc, #0x14]
008a4f6a  04 1c                                            adds r4, r0, #0
008a4f6c  7b 44                                            add r3, pc
008a4f6e  9a 58                                            ldr r2, [r3, r2]
008a4f70  08 32                                            adds r2, #8
008a4f72  02 60                                            str r2, [r0]
008a4f74  fe f7 c2 fc                                      bl #0x8a38fc
008a4f78  20 1c                                            adds r0, r4, #0
008a4f7a  10 bd                                            pop {r4, pc}
; mapping-symbol data/literal pool
008a4f7c  28 fb 0e 00 f0 41 00 00                          .byte 0x28, 0xfb, 0x0e, 0x00, 0xf0, 0x41, 0x00, 0x00

; FUNCTION 0x008a5390, declared_size=40, range_size=40, mode=thumb
; class-group: std::num_put<wchar_t, std::ostreambuf_iterator<wchar_t, std::char_traits<wchar_t> > >
; alias: _ZNSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEED0Ev
; demangled: std::num_put<wchar_t, std::ostreambuf_iterator<wchar_t, std::char_traits<wchar_t> > >::~num_put()
; decoder-mode: thumb
008a5390  10 b5                                            push {r4, lr}
008a5392  07 4b                                            ldr r3, [pc, #0x1c]
008a5394  07 4a                                            ldr r2, [pc, #0x1c]
008a5396  04 1c                                            adds r4, r0, #0
008a5398  7b 44                                            add r3, pc
008a539a  9a 58                                            ldr r2, [r3, r2]
008a539c  08 32                                            adds r2, #8
008a539e  02 60                                            str r2, [r0]
008a53a0  fe f7 ac fa                                      bl #0x8a38fc
008a53a4  20 1c                                            adds r0, r4, #0
008a53a6  68 f6 84 e7                                      blx #0x30e2b0
008a53aa  20 1c                                            adds r0, r4, #0
008a53ac  10 bd                                            pop {r4, pc}
008a53ae  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008a53b0  fc f6 0e 00 f0 41 00 00                          .byte 0xfc, 0xf6, 0x0e, 0x00, 0xf0, 0x41, 0x00, 0x00

; FUNCTION 0x008a744c, declared_size=34, range_size=34, mode=thumb
; class-group: std::num_put<wchar_t, std::ostreambuf_iterator<wchar_t, std::char_traits<wchar_t> > >
; alias: _ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE6do_putES3_RSt8ios_basewm
; demangled: std::num_put<wchar_t, std::ostreambuf_iterator<wchar_t, std::char_traits<wchar_t> > >::do_put(std::ostreambuf_iterator<wchar_t, std::char_traits<wchar_t> >, std::ios_base&, wchar_t, unsigned long) const
; decoder-mode: thumb
008a744c  10 b5                                            push {r4, lr}
008a744e  84 b0                                            sub sp, #0x10
008a7450  11 1c                                            adds r1, r2, #0
008a7452  02 92                                            str r2, [sp, #8]
008a7454  03 93                                            str r3, [sp, #0xc]
008a7456  1a 1c                                            adds r2, r3, #0
008a7458  07 9b                                            ldr r3, [sp, #0x1c]
008a745a  04 1c                                            adds r4, r0, #0
008a745c  00 93                                            str r3, [sp]
008a745e  08 9b                                            ldr r3, [sp, #0x20]
008a7460  01 93                                            str r3, [sp, #4]
008a7462  06 9b                                            ldr r3, [sp, #0x18]
008a7464  ff f7 bc ff                                      bl #0x8a73e0
008a7468  04 b0                                            add sp, #0x10
008a746a  20 1c                                            adds r0, r4, #0
008a746c  10 bd                                            pop {r4, pc}

; FUNCTION 0x008a74dc, declared_size=38, range_size=38, mode=thumb
; class-group: std::num_put<wchar_t, std::ostreambuf_iterator<wchar_t, std::char_traits<wchar_t> > >
; alias: _ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE6do_putES3_RSt8ios_basewy
; demangled: std::num_put<wchar_t, std::ostreambuf_iterator<wchar_t, std::char_traits<wchar_t> > >::do_put(std::ostreambuf_iterator<wchar_t, std::char_traits<wchar_t> >, std::ios_base&, wchar_t, unsigned long long) const
; decoder-mode: thumb
008a74dc  70 b5                                            push {r4, r5, r6, lr}
008a74de  86 b0                                            sub sp, #0x18
008a74e0  11 1c                                            adds r1, r2, #0
008a74e2  04 92                                            str r2, [sp, #0x10]
008a74e4  05 93                                            str r3, [sp, #0x14]
008a74e6  1a 1c                                            adds r2, r3, #0
008a74e8  0b 9b                                            ldr r3, [sp, #0x2c]
008a74ea  0c 9d                                            ldr r5, [sp, #0x30]
008a74ec  0d 9e                                            ldr r6, [sp, #0x34]
008a74ee  04 1c                                            adds r4, r0, #0
008a74f0  00 93                                            str r3, [sp]
008a74f2  0a 9b                                            ldr r3, [sp, #0x28]
008a74f4  02 95                                            str r5, [sp, #8]
008a74f6  03 96                                            str r6, [sp, #0xc]
008a74f8  ff f7 ba ff                                      bl #0x8a7470
008a74fc  06 b0                                            add sp, #0x18
008a74fe  20 1c                                            adds r0, r4, #0
008a7500  70 bd                                            pop {r4, r5, r6, pc}

; FUNCTION 0x008a7570, declared_size=38, range_size=38, mode=thumb
; class-group: std::num_put<wchar_t, std::ostreambuf_iterator<wchar_t, std::char_traits<wchar_t> > >
; alias: _ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE6do_putES3_RSt8ios_basewx
; demangled: std::num_put<wchar_t, std::ostreambuf_iterator<wchar_t, std::char_traits<wchar_t> > >::do_put(std::ostreambuf_iterator<wchar_t, std::char_traits<wchar_t> >, std::ios_base&, wchar_t, long long) const
; decoder-mode: thumb
008a7570  70 b5                                            push {r4, r5, r6, lr}
008a7572  86 b0                                            sub sp, #0x18
008a7574  11 1c                                            adds r1, r2, #0
008a7576  04 92                                            str r2, [sp, #0x10]
008a7578  05 93                                            str r3, [sp, #0x14]
008a757a  1a 1c                                            adds r2, r3, #0
008a757c  0b 9b                                            ldr r3, [sp, #0x2c]
008a757e  0c 9d                                            ldr r5, [sp, #0x30]
008a7580  0d 9e                                            ldr r6, [sp, #0x34]
008a7582  04 1c                                            adds r4, r0, #0
008a7584  00 93                                            str r3, [sp]
008a7586  0a 9b                                            ldr r3, [sp, #0x28]
008a7588  02 95                                            str r5, [sp, #8]
008a758a  03 96                                            str r6, [sp, #0xc]
008a758c  ff f7 ba ff                                      bl #0x8a7504
008a7590  06 b0                                            add sp, #0x18
008a7592  20 1c                                            adds r0, r4, #0
008a7594  70 bd                                            pop {r4, r5, r6, pc}

; FUNCTION 0x008a7604, declared_size=34, range_size=34, mode=thumb
; class-group: std::num_put<wchar_t, std::ostreambuf_iterator<wchar_t, std::char_traits<wchar_t> > >
; alias: _ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE6do_putES3_RSt8ios_basewl
; demangled: std::num_put<wchar_t, std::ostreambuf_iterator<wchar_t, std::char_traits<wchar_t> > >::do_put(std::ostreambuf_iterator<wchar_t, std::char_traits<wchar_t> >, std::ios_base&, wchar_t, long) const
; decoder-mode: thumb
008a7604  10 b5                                            push {r4, lr}
008a7606  84 b0                                            sub sp, #0x10
008a7608  11 1c                                            adds r1, r2, #0
008a760a  02 92                                            str r2, [sp, #8]
008a760c  03 93                                            str r3, [sp, #0xc]
008a760e  1a 1c                                            adds r2, r3, #0
008a7610  07 9b                                            ldr r3, [sp, #0x1c]
008a7612  04 1c                                            adds r4, r0, #0
008a7614  00 93                                            str r3, [sp]
008a7616  08 9b                                            ldr r3, [sp, #0x20]
008a7618  01 93                                            str r3, [sp, #4]
008a761a  06 9b                                            ldr r3, [sp, #0x18]
008a761c  ff f7 bc ff                                      bl #0x8a7598
008a7620  04 b0                                            add sp, #0x10
008a7622  20 1c                                            adds r0, r4, #0
008a7624  10 bd                                            pop {r4, pc}

; FUNCTION 0x008a8554, declared_size=66, range_size=66, mode=thumb
; class-group: std::num_put<wchar_t, std::ostreambuf_iterator<wchar_t, std::char_traits<wchar_t> > >
; alias: _ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE6do_putES3_RSt8ios_basewb
; demangled: std::num_put<wchar_t, std::ostreambuf_iterator<wchar_t, std::char_traits<wchar_t> > >::do_put(std::ostreambuf_iterator<wchar_t, std::char_traits<wchar_t> >, std::ios_base&, wchar_t, bool) const
; decoder-mode: thumb
008a8554  f0 b5                                            push {r4, r5, r6, r7, lr}
008a8556  87 b0                                            sub sp, #0x1c
008a8558  04 ad                                            add r5, sp, #0x10
008a855a  6b 60                                            str r3, [r5, #4]
008a855c  0c 9b                                            ldr r3, [sp, #0x30]
008a855e  04 92                                            str r2, [sp, #0x10]
008a8560  0e aa                                            add r2, sp, #0x38
008a8562  5e 68                                            ldr r6, [r3, #4]
008a8564  04 1c                                            adds r4, r0, #0
008a8566  12 78                                            ldrb r2, [r2]
008a8568  0d 98                                            ldr r0, [sp, #0x34]
008a856a  f7 05                                            lsls r7, r6, #0x17
008a856c  09 d5                                            bpl #0x8a8582
008a856e  00 90                                            str r0, [sp]
008a8570  01 92                                            str r2, [sp, #4]
008a8572  20 1c                                            adds r0, r4, #0
008a8574  04 99                                            ldr r1, [sp, #0x10]
008a8576  6a 68                                            ldr r2, [r5, #4]
008a8578  ff f7 28 ff                                      bl #0x8a83cc
008a857c  07 b0                                            add sp, #0x1c
008a857e  20 1c                                            adds r0, r4, #0
008a8580  f0 bd                                            pop {r4, r5, r6, r7, pc}
008a8582  0e 68                                            ldr r6, [r1]
008a8584  01 90                                            str r0, [sp, #4]
008a8586  02 92                                            str r2, [sp, #8]
008a8588  00 93                                            str r3, [sp]
008a858a  f6 68                                            ldr r6, [r6, #0xc]
008a858c  20 1c                                            adds r0, r4, #0
008a858e  04 9a                                            ldr r2, [sp, #0x10]
008a8590  6b 68                                            ldr r3, [r5, #4]
008a8592  b0 47                                            blx r6
008a8594  f2 e7                                            b #0x8a857c

; FUNCTION 0x008aba60, declared_size=316, range_size=316, mode=thumb
; class-group: std::num_put<wchar_t, std::ostreambuf_iterator<wchar_t, std::char_traits<wchar_t> > >
; alias: _ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE6do_putES3_RSt8ios_basewPKv
; demangled: std::num_put<wchar_t, std::ostreambuf_iterator<wchar_t, std::char_traits<wchar_t> > >::do_put(std::ostreambuf_iterator<wchar_t, std::char_traits<wchar_t> >, std::ios_base&, wchar_t, void const*) const
; decoder-mode: thumb
008aba60  f0 b5                                            push {r4, r5, r6, r7, lr}
008aba62  5f 46                                            mov r7, fp
008aba64  56 46                                            mov r6, sl
008aba66  4d 46                                            mov r5, sb
008aba68  44 46                                            mov r4, r8
008aba6a  f0 b4                                            push {r4, r5, r6, r7}
008aba6c  89 b0                                            sub sp, #0x24
008aba6e  04 ad                                            add r5, sp, #0x10
008aba70  04 92                                            str r2, [sp, #0x10]
008aba72  6b 60                                            str r3, [r5, #4]
008aba74  12 9c                                            ldr r4, [sp, #0x48]
008aba76  29 79                                            ldrb r1, [r5, #4]
008aba78  80 46                                            mov r8, r0
008aba7a  14 98                                            ldr r0, [sp, #0x50]
008aba7c  07 af                                            add r7, sp, #0x1c
008aba7e  89 46                                            mov sb, r1
008aba80  21 1c                                            adds r1, r4, #0
008aba82  83 46                                            mov fp, r0
008aba84  20 31                                            adds r1, #0x20
008aba86  38 1c                                            adds r0, r7, #0
008aba88  42 4e                                            ldr r6, [pc, #0x108]
008aba8a  92 46                                            mov sl, r2
008aba8c  f7 f7 68 fd                                      bl #0x8a3560
008aba90  41 4b                                            ldr r3, [pc, #0x104]
008aba92  7e 44                                            add r6, pc
008aba94  38 1c                                            adds r0, r7, #0
008aba96  f1 58                                            ldr r1, [r6, r3]
008aba98  f7 f7 8a fd                                      bl #0x8a35b0
008aba9c  06 1c                                            adds r6, r0, #0
008aba9e  38 1c                                            adds r0, r7, #0
008abaa0  f7 f7 28 fd                                      bl #0x8a34f4
008abaa4  67 68                                            ldr r7, [r4, #4]
008abaa6  38 22                                            movs r2, #0x38
008abaa8  58 46                                            mov r0, fp
008abaaa  3b 1c                                            adds r3, r7, #0
008abaac  93 43                                            bics r3, r2
008abaae  1a 1c                                            adds r2, r3, #0
008abab0  84 23                                            movs r3, #0x84
008abab2  9b 00                                            lsls r3, r3, #2
008abab4  13 43                                            orrs r3, r2
008abab6  07 22                                            movs r2, #7
008abab8  93 43                                            bics r3, r2
008ababa  04 22                                            movs r2, #4
008ababc  13 43                                            orrs r3, r2
008ababe  63 60                                            str r3, [r4, #4]
008abac0  0a 23                                            movs r3, #0xa
008abac2  e3 61                                            str r3, [r4, #0x1c]
008abac4  00 28                                            cmp r0, #0
008abac6  18 d0                                            beq #0x8abafa
008abac8  33 68                                            ldr r3, [r6]
008abaca  30 1c                                            adds r0, r6, #0
008abacc  30 21                                            movs r1, #0x30
008abace  9b 6a                                            ldr r3, [r3, #0x28]
008abad0  98 47                                            blx r3
008abad2  49 46                                            mov r1, sb
008abad4  5a 46                                            mov r2, fp
008abad6  29 71                                            strb r1, [r5, #4]
008abad8  00 90                                            str r0, [sp]
008abada  01 92                                            str r2, [sp, #4]
008abadc  40 46                                            mov r0, r8
008abade  04 99                                            ldr r1, [sp, #0x10]
008abae0  6a 68                                            ldr r2, [r5, #4]
008abae2  23 1c                                            adds r3, r4, #0
008abae4  fb f7 7c fc                                      bl #0x8a73e0
008abae8  09 b0                                            add sp, #0x24
008abaea  40 46                                            mov r0, r8
008abaec  67 60                                            str r7, [r4, #4]
008abaee  3c bc                                            pop {r2, r3, r4, r5}
008abaf0  90 46                                            mov r8, r2
008abaf2  99 46                                            mov sb, r3
008abaf4  a2 46                                            mov sl, r4
008abaf6  ab 46                                            mov fp, r5
008abaf8  f0 bd                                            pop {r4, r5, r6, r7, pc}
008abafa  79 04                                            lsls r1, r7, #0x11
008abafc  3a d5                                            bpl #0x8abb74
008abafe  0d f0 5f ff                                      bl #0x8b99c0
008abb02  03 90                                            str r0, [sp, #0xc]
008abb04  33 68                                            ldr r3, [r6]
008abb06  30 21                                            movs r1, #0x30
008abb08  30 1c                                            adds r0, r6, #0
008abb0a  9b 6a                                            ldr r3, [r3, #0x28]
008abb0c  98 47                                            blx r3
008abb0e  4a 46                                            mov r2, sb
008abb10  01 1c                                            adds r1, r0, #0
008abb12  00 2a                                            cmp r2, #0
008abb14  23 d0                                            beq #0x8abb5e
008abb16  50 46                                            mov r0, sl
008abb18  43 69                                            ldr r3, [r0, #0x14]
008abb1a  82 69                                            ldr r2, [r0, #0x18]
008abb1c  93 42                                            cmp r3, r2
008abb1e  2d d2                                            bhs #0x8abb7c
008abb20  1a 1c                                            adds r2, r3, #0
008abb22  02 c2                                            stm r2!, {r1}
008abb24  42 61                                            str r2, [r0, #0x14]
008abb26  18 68                                            ldr r0, [r3]
008abb28  01 30                                            adds r0, #1
008abb2a  18 d0                                            beq #0x8abb5e
008abb2c  03 98                                            ldr r0, [sp, #0xc]
008abb2e  33 68                                            ldr r3, [r6]
008abb30  01 7c                                            ldrb r1, [r0, #0x10]
008abb32  9b 6a                                            ldr r3, [r3, #0x28]
008abb34  30 1c                                            adds r0, r6, #0
008abb36  98 47                                            blx r3
008abb38  53 46                                            mov r3, sl
008abb3a  5a 69                                            ldr r2, [r3, #0x14]
008abb3c  9b 69                                            ldr r3, [r3, #0x18]
008abb3e  01 1c                                            adds r1, r0, #0
008abb40  9a 42                                            cmp r2, r3
008abb42  21 d2                                            bhs #0x8abb88
008abb44  13 1c                                            adds r3, r2, #0
008abb46  01 c3                                            stm r3!, {r0}
008abb48  50 46                                            mov r0, sl
008abb4a  43 61                                            str r3, [r0, #0x14]
008abb4c  10 68                                            ldr r0, [r2]
008abb4e  43 1c                                            adds r3, r0, #1
008abb50  5a 1e                                            subs r2, r3, #1
008abb52  93 41                                            sbcs r3, r2
008abb54  48 46                                            mov r0, sb
008abb56  5b 42                                            rsbs r3, r3, #0
008abb58  18 40                                            ands r0, r3
008abb5a  81 46                                            mov sb, r0
008abb5c  07 e0                                            b #0x8abb6e
008abb5e  03 98                                            ldr r0, [sp, #0xc]
008abb60  33 68                                            ldr r3, [r6]
008abb62  01 7c                                            ldrb r1, [r0, #0x10]
008abb64  9b 6a                                            ldr r3, [r3, #0x28]
008abb66  30 1c                                            adds r0, r6, #0
008abb68  98 47                                            blx r3
008abb6a  00 21                                            movs r1, #0
008abb6c  89 46                                            mov sb, r1
008abb6e  08 23                                            movs r3, #8
008abb70  e3 61                                            str r3, [r4, #0x1c]
008abb72  a9 e7                                            b #0x8abac8
008abb74  0d f0 1e ff                                      bl #0x8b99b4
008abb78  03 90                                            str r0, [sp, #0xc]
008abb7a  c3 e7                                            b #0x8abb04
008abb7c  52 46                                            mov r2, sl
008abb7e  13 68                                            ldr r3, [r2]
008abb80  50 46                                            mov r0, sl
008abb82  5b 6b                                            ldr r3, [r3, #0x34]
008abb84  98 47                                            blx r3
008abb86  cf e7                                            b #0x8abb28
008abb88  52 46                                            mov r2, sl
008abb8a  13 68                                            ldr r3, [r2]
008abb8c  50 46                                            mov r0, sl
008abb8e  5b 6b                                            ldr r3, [r3, #0x34]
008abb90  98 47                                            blx r3
008abb92  dc e7                                            b #0x8abb4e
; mapping-symbol data/literal pool
008abb94  02 90 0e 00 44 1e 00 00                          .byte 0x02, 0x90, 0x0e, 0x00, 0x44, 0x1e, 0x00, 0x00

; FUNCTION 0x008ac2cc, declared_size=38, range_size=38, mode=thumb
; class-group: std::num_put<wchar_t, std::ostreambuf_iterator<wchar_t, std::char_traits<wchar_t> > >
; alias: _ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE6do_putES3_RSt8ios_basewe
; demangled: std::num_put<wchar_t, std::ostreambuf_iterator<wchar_t, std::char_traits<wchar_t> > >::do_put(std::ostreambuf_iterator<wchar_t, std::char_traits<wchar_t> >, std::ios_base&, wchar_t, long double) const
; decoder-mode: thumb
008ac2cc  70 b5                                            push {r4, r5, r6, lr}
008ac2ce  86 b0                                            sub sp, #0x18
008ac2d0  11 1c                                            adds r1, r2, #0
008ac2d2  04 92                                            str r2, [sp, #0x10]
008ac2d4  05 93                                            str r3, [sp, #0x14]
008ac2d6  1a 1c                                            adds r2, r3, #0
008ac2d8  0b 9b                                            ldr r3, [sp, #0x2c]
008ac2da  0c 9d                                            ldr r5, [sp, #0x30]
008ac2dc  0d 9e                                            ldr r6, [sp, #0x34]
008ac2de  04 1c                                            adds r4, r0, #0
008ac2e0  00 93                                            str r3, [sp]
008ac2e2  0a 9b                                            ldr r3, [sp, #0x28]
008ac2e4  02 95                                            str r5, [sp, #8]
008ac2e6  03 96                                            str r6, [sp, #0xc]
008ac2e8  ff f7 6a ff                                      bl #0x8ac1c0
008ac2ec  06 b0                                            add sp, #0x18
008ac2ee  20 1c                                            adds r0, r4, #0
008ac2f0  70 bd                                            pop {r4, r5, r6, pc}

; FUNCTION 0x008ac400, declared_size=38, range_size=38, mode=thumb
; class-group: std::num_put<wchar_t, std::ostreambuf_iterator<wchar_t, std::char_traits<wchar_t> > >
; alias: _ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE6do_putES3_RSt8ios_basewd
; demangled: std::num_put<wchar_t, std::ostreambuf_iterator<wchar_t, std::char_traits<wchar_t> > >::do_put(std::ostreambuf_iterator<wchar_t, std::char_traits<wchar_t> >, std::ios_base&, wchar_t, double) const
; decoder-mode: thumb
008ac400  70 b5                                            push {r4, r5, r6, lr}
008ac402  86 b0                                            sub sp, #0x18
008ac404  11 1c                                            adds r1, r2, #0
008ac406  04 92                                            str r2, [sp, #0x10]
008ac408  05 93                                            str r3, [sp, #0x14]
008ac40a  1a 1c                                            adds r2, r3, #0
008ac40c  0b 9b                                            ldr r3, [sp, #0x2c]
008ac40e  0c 9d                                            ldr r5, [sp, #0x30]
008ac410  0d 9e                                            ldr r6, [sp, #0x34]
008ac412  04 1c                                            adds r4, r0, #0
008ac414  00 93                                            str r3, [sp]
008ac416  0a 9b                                            ldr r3, [sp, #0x28]
008ac418  02 95                                            str r5, [sp, #8]
008ac41a  03 96                                            str r6, [sp, #0xc]
008ac41c  ff f7 6a ff                                      bl #0x8ac2f4
008ac420  06 b0                                            add sp, #0x18
008ac422  20 1c                                            adds r0, r4, #0
008ac424  70 bd                                            pop {r4, r5, r6, pc}

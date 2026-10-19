; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008a4f44, declared_size=32, range_size=32, mode=thumb
; class-group: std::num_get<wchar_t, std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> > >
; alias: _ZNSt7num_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEED1Ev
; demangled: std::num_get<wchar_t, std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> > >::~num_get()
; decoder-mode: thumb
008a4f44  10 b5                                            push {r4, lr}
008a4f46  05 4b                                            ldr r3, [pc, #0x14]
008a4f48  05 4a                                            ldr r2, [pc, #0x14]
008a4f4a  04 1c                                            adds r4, r0, #0
008a4f4c  7b 44                                            add r3, pc
008a4f4e  9a 58                                            ldr r2, [r3, r2]
008a4f50  08 32                                            adds r2, #8
008a4f52  02 60                                            str r2, [r0]
008a4f54  fe f7 d2 fc                                      bl #0x8a38fc
008a4f58  20 1c                                            adds r0, r4, #0
008a4f5a  10 bd                                            pop {r4, pc}
; mapping-symbol data/literal pool
008a4f5c  48 fb 0e 00 28 09 00 00                          .byte 0x48, 0xfb, 0x0e, 0x00, 0x28, 0x09, 0x00, 0x00

; FUNCTION 0x008a53b8, declared_size=40, range_size=40, mode=thumb
; class-group: std::num_get<wchar_t, std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> > >
; alias: _ZNSt7num_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEED0Ev
; demangled: std::num_get<wchar_t, std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> > >::~num_get()
; decoder-mode: thumb
008a53b8  10 b5                                            push {r4, lr}
008a53ba  07 4b                                            ldr r3, [pc, #0x1c]
008a53bc  07 4a                                            ldr r2, [pc, #0x1c]
008a53be  04 1c                                            adds r4, r0, #0
008a53c0  7b 44                                            add r3, pc
008a53c2  9a 58                                            ldr r2, [r3, r2]
008a53c4  08 32                                            adds r2, #8
008a53c6  02 60                                            str r2, [r0]
008a53c8  fe f7 98 fa                                      bl #0x8a38fc
008a53cc  20 1c                                            adds r0, r4, #0
008a53ce  68 f6 70 e7                                      blx #0x30e2b0
008a53d2  20 1c                                            adds r0, r4, #0
008a53d4  10 bd                                            pop {r4, pc}
008a53d6  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008a53d8  d4 f6 0e 00 28 09 00 00                          .byte 0xd4, 0xf6, 0x0e, 0x00, 0x28, 0x09, 0x00, 0x00

; FUNCTION 0x008aecbc, declared_size=46, range_size=46, mode=thumb
; class-group: std::num_get<wchar_t, std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> > >
; alias: _ZNKSt7num_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE6do_getES3_S3_RSt8ios_baseRiRy
; demangled: std::num_get<wchar_t, std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> > >::do_get(std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >, std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >, std::ios_base&, int&, unsigned long long&) const
; decoder-mode: thumb
008aecbc  82 b0                                            sub sp, #8
008aecbe  10 b5                                            push {r4, lr}
008aecc0  84 b0                                            sub sp, #0x10
008aecc2  07 93                                            str r3, [sp, #0x1c]
008aecc4  0d 9b                                            ldr r3, [sp, #0x34]
008aecc6  06 92                                            str r2, [sp, #0x18]
008aecc8  06 a9                                            add r1, sp, #0x18
008aecca  00 93                                            str r3, [sp]
008aeccc  0e 9b                                            ldr r3, [sp, #0x38]
008aecce  09 aa                                            add r2, sp, #0x24
008aecd0  04 1c                                            adds r4, r0, #0
008aecd2  01 93                                            str r3, [sp, #4]
008aecd4  00 23                                            movs r3, #0
008aecd6  02 93                                            str r3, [sp, #8]
008aecd8  0c 9b                                            ldr r3, [sp, #0x30]
008aecda  ff f7 f9 fe                                      bl #0x8aead0
008aecde  04 b0                                            add sp, #0x10
008aece0  20 1c                                            adds r0, r4, #0
008aece2  10 bc                                            pop {r4}
008aece4  08 bc                                            pop {r3}
008aece6  02 b0                                            add sp, #8
008aece8  18 47                                            bx r3

; FUNCTION 0x008aecec, declared_size=58, range_size=58, mode=thumb
; class-group: std::num_get<wchar_t, std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> > >
; alias: _ZNKSt7num_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE6do_getES3_S3_RSt8ios_baseRiRPv
; demangled: std::num_get<wchar_t, std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> > >::do_get(std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >, std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >, std::ios_base&, int&, void*&) const
; decoder-mode: thumb
008aecec  82 b0                                            sub sp, #8
008aecee  30 b5                                            push {r4, r5, lr}
008aecf0  87 b0                                            sub sp, #0x1c
008aecf2  11 9d                                            ldr r5, [sp, #0x44]
008aecf4  0b 93                                            str r3, [sp, #0x2c]
008aecf6  04 ab                                            add r3, sp, #0x10
008aecf8  01 93                                            str r3, [sp, #4]
008aecfa  00 23                                            movs r3, #0
008aecfc  0a 92                                            str r2, [sp, #0x28]
008aecfe  02 93                                            str r3, [sp, #8]
008aed00  0a a9                                            add r1, sp, #0x28
008aed02  10 9b                                            ldr r3, [sp, #0x40]
008aed04  0d aa                                            add r2, sp, #0x34
008aed06  04 1c                                            adds r4, r0, #0
008aed08  00 95                                            str r5, [sp]
008aed0a  ff f7 e1 fe                                      bl #0x8aead0
008aed0e  2b 68                                            ldr r3, [r5]
008aed10  5a 07                                            lsls r2, r3, #0x1d
008aed12  02 d4                                            bmi #0x8aed1a
008aed14  04 9a                                            ldr r2, [sp, #0x10]
008aed16  12 9b                                            ldr r3, [sp, #0x48]
008aed18  1a 60                                            str r2, [r3]
008aed1a  07 b0                                            add sp, #0x1c
008aed1c  20 1c                                            adds r0, r4, #0
008aed1e  30 bc                                            pop {r4, r5}
008aed20  08 bc                                            pop {r3}
008aed22  02 b0                                            add sp, #8
008aed24  18 47                                            bx r3

; FUNCTION 0x008af2a4, declared_size=46, range_size=46, mode=thumb
; class-group: std::num_get<wchar_t, std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> > >
; alias: _ZNKSt7num_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE6do_getES3_S3_RSt8ios_baseRiRx
; demangled: std::num_get<wchar_t, std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> > >::do_get(std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >, std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >, std::ios_base&, int&, long long&) const
; decoder-mode: thumb
008af2a4  82 b0                                            sub sp, #8
008af2a6  10 b5                                            push {r4, lr}
008af2a8  84 b0                                            sub sp, #0x10
008af2aa  07 93                                            str r3, [sp, #0x1c]
008af2ac  0d 9b                                            ldr r3, [sp, #0x34]
008af2ae  06 92                                            str r2, [sp, #0x18]
008af2b0  06 a9                                            add r1, sp, #0x18
008af2b2  00 93                                            str r3, [sp]
008af2b4  0e 9b                                            ldr r3, [sp, #0x38]
008af2b6  09 aa                                            add r2, sp, #0x24
008af2b8  04 1c                                            adds r4, r0, #0
008af2ba  01 93                                            str r3, [sp, #4]
008af2bc  00 23                                            movs r3, #0
008af2be  02 93                                            str r3, [sp, #8]
008af2c0  0c 9b                                            ldr r3, [sp, #0x30]
008af2c2  ff f7 f9 fe                                      bl #0x8af0b8
008af2c6  04 b0                                            add sp, #0x10
008af2c8  20 1c                                            adds r0, r4, #0
008af2ca  10 bc                                            pop {r4}
008af2cc  08 bc                                            pop {r3}
008af2ce  02 b0                                            add sp, #8
008af2d0  18 47                                            bx r3

; FUNCTION 0x008af4b8, declared_size=46, range_size=46, mode=thumb
; class-group: std::num_get<wchar_t, std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> > >
; alias: _ZNKSt7num_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE6do_getES3_S3_RSt8ios_baseRiRl
; demangled: std::num_get<wchar_t, std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> > >::do_get(std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >, std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >, std::ios_base&, int&, long&) const
; decoder-mode: thumb
008af4b8  82 b0                                            sub sp, #8
008af4ba  10 b5                                            push {r4, lr}
008af4bc  84 b0                                            sub sp, #0x10
008af4be  07 93                                            str r3, [sp, #0x1c]
008af4c0  0d 9b                                            ldr r3, [sp, #0x34]
008af4c2  06 92                                            str r2, [sp, #0x18]
008af4c4  06 a9                                            add r1, sp, #0x18
008af4c6  00 93                                            str r3, [sp]
008af4c8  0e 9b                                            ldr r3, [sp, #0x38]
008af4ca  09 aa                                            add r2, sp, #0x24
008af4cc  04 1c                                            adds r4, r0, #0
008af4ce  01 93                                            str r3, [sp, #4]
008af4d0  00 23                                            movs r3, #0
008af4d2  02 93                                            str r3, [sp, #8]
008af4d4  0c 9b                                            ldr r3, [sp, #0x30]
008af4d6  ff f7 fd fe                                      bl #0x8af2d4
008af4da  04 b0                                            add sp, #0x10
008af4dc  20 1c                                            adds r0, r4, #0
008af4de  10 bc                                            pop {r4}
008af4e0  08 bc                                            pop {r3}
008af4e2  02 b0                                            add sp, #8
008af4e4  18 47                                            bx r3

; FUNCTION 0x008af858, declared_size=120, range_size=120, mode=thumb
; class-group: std::num_get<wchar_t, std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> > >
; alias: _ZNKSt7num_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE6do_getES3_S3_RSt8ios_baseRiRb
; demangled: std::num_get<wchar_t, std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> > >::do_get(std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >, std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >, std::ios_base&, int&, bool&) const
; decoder-mode: thumb
008af858  82 b0                                            sub sp, #8
008af85a  70 b5                                            push {r4, r5, r6, lr}
008af85c  88 b0                                            sub sp, #0x20
008af85e  0d 93                                            str r3, [sp, #0x34]
008af860  12 9b                                            ldr r3, [sp, #0x48]
008af862  0c 92                                            str r2, [sp, #0x30]
008af864  80 22                                            movs r2, #0x80
008af866  59 68                                            ldr r1, [r3, #4]
008af868  52 00                                            lsls r2, r2, #1
008af86a  04 1c                                            adds r4, r0, #0
008af86c  13 9d                                            ldr r5, [sp, #0x4c]
008af86e  14 9e                                            ldr r6, [sp, #0x50]
008af870  0a 40                                            ands r2, r1
008af872  22 d1                                            bne #0x8af8ba
008af874  07 a9                                            add r1, sp, #0x1c
008af876  01 91                                            str r1, [sp, #4]
008af878  02 92                                            str r2, [sp, #8]
008af87a  04 a8                                            add r0, sp, #0x10
008af87c  0f aa                                            add r2, sp, #0x3c
008af87e  0c a9                                            add r1, sp, #0x30
008af880  00 95                                            str r5, [sp]
008af882  ff f7 27 fd                                      bl #0x8af2d4
008af886  2a 68                                            ldr r2, [r5]
008af888  04 23                                            movs r3, #4
008af88a  1a 42                                            tst r2, r3
008af88c  0d d0                                            beq #0x8af8aa
008af88e  04 9a                                            ldr r2, [sp, #0x10]
008af890  23 1c                                            adds r3, r4, #0
008af892  04 c3                                            stm r3!, {r2}
008af894  05 9a                                            ldr r2, [sp, #0x14]
008af896  62 60                                            str r2, [r4, #4]
008af898  06 aa                                            add r2, sp, #0x18
008af89a  12 88                                            ldrh r2, [r2]
008af89c  9a 80                                            strh r2, [r3, #4]
008af89e  08 b0                                            add sp, #0x20
008af8a0  20 1c                                            adds r0, r4, #0
008af8a2  70 bc                                            pop {r4, r5, r6}
008af8a4  08 bc                                            pop {r3}
008af8a6  02 b0                                            add sp, #8
008af8a8  18 47                                            bx r3
008af8aa  07 99                                            ldr r1, [sp, #0x1c]
008af8ac  00 29                                            cmp r1, #0
008af8ae  0d d0                                            beq #0x8af8cc
008af8b0  01 29                                            cmp r1, #1
008af8b2  0b d0                                            beq #0x8af8cc
008af8b4  13 43                                            orrs r3, r2
008af8b6  2b 60                                            str r3, [r5]
008af8b8  e9 e7                                            b #0x8af88e
008af8ba  00 22                                            movs r2, #0
008af8bc  02 92                                            str r2, [sp, #8]
008af8be  0c a9                                            add r1, sp, #0x30
008af8c0  0f aa                                            add r2, sp, #0x3c
008af8c2  00 95                                            str r5, [sp]
008af8c4  01 96                                            str r6, [sp, #4]
008af8c6  ff f7 85 fe                                      bl #0x8af5d4
008af8ca  e8 e7                                            b #0x8af89e
008af8cc  31 70                                            strb r1, [r6]
008af8ce  de e7                                            b #0x8af88e

; FUNCTION 0x008b0548, declared_size=46, range_size=46, mode=thumb
; class-group: std::num_get<wchar_t, std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> > >
; alias: _ZNKSt7num_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE6do_getES3_S3_RSt8ios_baseRiRj
; demangled: std::num_get<wchar_t, std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> > >::do_get(std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >, std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >, std::ios_base&, int&, unsigned int&) const
; decoder-mode: thumb
008b0548  82 b0                                            sub sp, #8
008b054a  10 b5                                            push {r4, lr}
008b054c  84 b0                                            sub sp, #0x10
008b054e  07 93                                            str r3, [sp, #0x1c]
008b0550  0d 9b                                            ldr r3, [sp, #0x34]
008b0552  06 92                                            str r2, [sp, #0x18]
008b0554  06 a9                                            add r1, sp, #0x18
008b0556  00 93                                            str r3, [sp]
008b0558  0e 9b                                            ldr r3, [sp, #0x38]
008b055a  09 aa                                            add r2, sp, #0x24
008b055c  04 1c                                            adds r4, r0, #0
008b055e  01 93                                            str r3, [sp, #4]
008b0560  00 23                                            movs r3, #0
008b0562  02 93                                            str r3, [sp, #8]
008b0564  0c 9b                                            ldr r3, [sp, #0x30]
008b0566  ff f7 fd fe                                      bl #0x8b0364
008b056a  04 b0                                            add sp, #0x10
008b056c  20 1c                                            adds r0, r4, #0
008b056e  10 bc                                            pop {r4}
008b0570  08 bc                                            pop {r3}
008b0572  02 b0                                            add sp, #8
008b0574  18 47                                            bx r3

; FUNCTION 0x008b1240, declared_size=46, range_size=46, mode=thumb
; class-group: std::num_get<wchar_t, std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> > >
; alias: _ZNKSt7num_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE6do_getES3_S3_RSt8ios_baseRiRt
; demangled: std::num_get<wchar_t, std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> > >::do_get(std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >, std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >, std::ios_base&, int&, unsigned short&) const
; decoder-mode: thumb
008b1240  82 b0                                            sub sp, #8
008b1242  10 b5                                            push {r4, lr}
008b1244  84 b0                                            sub sp, #0x10
008b1246  07 93                                            str r3, [sp, #0x1c]
008b1248  0d 9b                                            ldr r3, [sp, #0x34]
008b124a  06 92                                            str r2, [sp, #0x18]
008b124c  06 a9                                            add r1, sp, #0x18
008b124e  00 93                                            str r3, [sp]
008b1250  0e 9b                                            ldr r3, [sp, #0x38]
008b1252  09 aa                                            add r2, sp, #0x24
008b1254  04 1c                                            adds r4, r0, #0
008b1256  01 93                                            str r3, [sp, #4]
008b1258  00 23                                            movs r3, #0
008b125a  02 93                                            str r3, [sp, #8]
008b125c  0c 9b                                            ldr r3, [sp, #0x30]
008b125e  ff f7 fd fe                                      bl #0x8b105c
008b1262  04 b0                                            add sp, #0x10
008b1264  20 1c                                            adds r0, r4, #0
008b1266  10 bc                                            pop {r4}
008b1268  08 bc                                            pop {r3}
008b126a  02 b0                                            add sp, #8
008b126c  18 47                                            bx r3

; FUNCTION 0x008b13cc, declared_size=46, range_size=46, mode=thumb
; class-group: std::num_get<wchar_t, std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> > >
; alias: _ZNKSt7num_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE6do_getES3_S3_RSt8ios_baseRiRd
; demangled: std::num_get<wchar_t, std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> > >::do_get(std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >, std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >, std::ios_base&, int&, double&) const
; decoder-mode: thumb
008b13cc  82 b0                                            sub sp, #8
008b13ce  10 b5                                            push {r4, lr}
008b13d0  84 b0                                            sub sp, #0x10
008b13d2  07 93                                            str r3, [sp, #0x1c]
008b13d4  0d 9b                                            ldr r3, [sp, #0x34]
008b13d6  06 92                                            str r2, [sp, #0x18]
008b13d8  06 a9                                            add r1, sp, #0x18
008b13da  00 93                                            str r3, [sp]
008b13dc  0e 9b                                            ldr r3, [sp, #0x38]
008b13de  09 aa                                            add r2, sp, #0x24
008b13e0  04 1c                                            adds r4, r0, #0
008b13e2  01 93                                            str r3, [sp, #4]
008b13e4  00 23                                            movs r3, #0
008b13e6  02 93                                            str r3, [sp, #8]
008b13e8  0c 9b                                            ldr r3, [sp, #0x30]
008b13ea  ff f7 41 ff                                      bl #0x8b1270
008b13ee  04 b0                                            add sp, #0x10
008b13f0  20 1c                                            adds r0, r4, #0
008b13f2  10 bc                                            pop {r4}
008b13f4  08 bc                                            pop {r3}
008b13f6  02 b0                                            add sp, #8
008b13f8  18 47                                            bx r3

; FUNCTION 0x008b19b4, declared_size=46, range_size=46, mode=thumb
; class-group: std::num_get<wchar_t, std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> > >
; alias: _ZNKSt7num_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE6do_getES3_S3_RSt8ios_baseRiRf
; demangled: std::num_get<wchar_t, std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> > >::do_get(std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >, std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >, std::ios_base&, int&, float&) const
; decoder-mode: thumb
008b19b4  82 b0                                            sub sp, #8
008b19b6  10 b5                                            push {r4, lr}
008b19b8  84 b0                                            sub sp, #0x10
008b19ba  07 93                                            str r3, [sp, #0x1c]
008b19bc  0d 9b                                            ldr r3, [sp, #0x34]
008b19be  06 92                                            str r2, [sp, #0x18]
008b19c0  06 a9                                            add r1, sp, #0x18
008b19c2  00 93                                            str r3, [sp]
008b19c4  0e 9b                                            ldr r3, [sp, #0x38]
008b19c6  09 aa                                            add r2, sp, #0x24
008b19c8  04 1c                                            adds r4, r0, #0
008b19ca  01 93                                            str r3, [sp, #4]
008b19cc  00 23                                            movs r3, #0
008b19ce  02 93                                            str r3, [sp, #8]
008b19d0  0c 9b                                            ldr r3, [sp, #0x30]
008b19d2  ff f7 41 ff                                      bl #0x8b1858
008b19d6  04 b0                                            add sp, #0x10
008b19d8  20 1c                                            adds r0, r4, #0
008b19da  10 bc                                            pop {r4}
008b19dc  08 bc                                            pop {r3}
008b19de  02 b0                                            add sp, #8
008b19e0  18 47                                            bx r3

; FUNCTION 0x008b2da0, declared_size=46, range_size=46, mode=thumb
; class-group: std::num_get<wchar_t, std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> > >
; alias: _ZNKSt7num_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE6do_getES3_S3_RSt8ios_baseRiRe
; demangled: std::num_get<wchar_t, std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> > >::do_get(std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >, std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >, std::ios_base&, int&, long double&) const
; decoder-mode: thumb
008b2da0  82 b0                                            sub sp, #8
008b2da2  10 b5                                            push {r4, lr}
008b2da4  84 b0                                            sub sp, #0x10
008b2da6  07 93                                            str r3, [sp, #0x1c]
008b2da8  0d 9b                                            ldr r3, [sp, #0x34]
008b2daa  06 92                                            str r2, [sp, #0x18]
008b2dac  06 a9                                            add r1, sp, #0x18
008b2dae  00 93                                            str r3, [sp]
008b2db0  0e 9b                                            ldr r3, [sp, #0x38]
008b2db2  09 aa                                            add r2, sp, #0x24
008b2db4  04 1c                                            adds r4, r0, #0
008b2db6  01 93                                            str r3, [sp, #4]
008b2db8  00 23                                            movs r3, #0
008b2dba  02 93                                            str r3, [sp, #8]
008b2dbc  0c 9b                                            ldr r3, [sp, #0x30]
008b2dbe  ff f7 41 ff                                      bl #0x8b2c44
008b2dc2  04 b0                                            add sp, #0x10
008b2dc4  20 1c                                            adds r0, r4, #0
008b2dc6  10 bc                                            pop {r4}
008b2dc8  08 bc                                            pop {r3}
008b2dca  02 b0                                            add sp, #8
008b2dcc  18 47                                            bx r3

; FUNCTION 0x008b31c0, declared_size=46, range_size=46, mode=thumb
; class-group: std::num_get<wchar_t, std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> > >
; alias: _ZNKSt7num_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE6do_getES3_S3_RSt8ios_baseRiRm
; demangled: std::num_get<wchar_t, std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> > >::do_get(std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >, std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >, std::ios_base&, int&, unsigned long&) const
; decoder-mode: thumb
008b31c0  82 b0                                            sub sp, #8
008b31c2  10 b5                                            push {r4, lr}
008b31c4  84 b0                                            sub sp, #0x10
008b31c6  07 93                                            str r3, [sp, #0x1c]
008b31c8  0d 9b                                            ldr r3, [sp, #0x34]
008b31ca  06 92                                            str r2, [sp, #0x18]
008b31cc  06 a9                                            add r1, sp, #0x18
008b31ce  00 93                                            str r3, [sp]
008b31d0  0e 9b                                            ldr r3, [sp, #0x38]
008b31d2  09 aa                                            add r2, sp, #0x24
008b31d4  04 1c                                            adds r4, r0, #0
008b31d6  01 93                                            str r3, [sp, #4]
008b31d8  00 23                                            movs r3, #0
008b31da  02 93                                            str r3, [sp, #8]
008b31dc  0c 9b                                            ldr r3, [sp, #0x30]
008b31de  ff f7 fd fe                                      bl #0x8b2fdc
008b31e2  04 b0                                            add sp, #0x10
008b31e4  20 1c                                            adds r0, r4, #0
008b31e6  10 bc                                            pop {r4}
008b31e8  08 bc                                            pop {r3}
008b31ea  02 b0                                            add sp, #8
008b31ec  18 47                                            bx r3

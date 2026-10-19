; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008a4ec4, declared_size=32, range_size=32, mode=thumb
; class-group: std::num_get<char, std::istreambuf_iterator<char, std::char_traits<char> > >
; alias: _ZNSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEED1Ev
; demangled: std::num_get<char, std::istreambuf_iterator<char, std::char_traits<char> > >::~num_get()
; decoder-mode: thumb
008a4ec4  10 b5                                            push {r4, lr}
008a4ec6  05 4b                                            ldr r3, [pc, #0x14]
008a4ec8  05 4a                                            ldr r2, [pc, #0x14]
008a4eca  04 1c                                            adds r4, r0, #0
008a4ecc  7b 44                                            add r3, pc
008a4ece  9a 58                                            ldr r2, [r3, r2]
008a4ed0  08 32                                            adds r2, #8
008a4ed2  02 60                                            str r2, [r0]
008a4ed4  fe f7 12 fd                                      bl #0x8a38fc
008a4ed8  20 1c                                            adds r0, r4, #0
008a4eda  10 bd                                            pop {r4, pc}
; mapping-symbol data/literal pool
008a4edc  c8 fb 0e 00 54 34 00 00                          .byte 0xc8, 0xfb, 0x0e, 0x00, 0x54, 0x34, 0x00, 0x00

; FUNCTION 0x008a53e0, declared_size=40, range_size=40, mode=thumb
; class-group: std::num_get<char, std::istreambuf_iterator<char, std::char_traits<char> > >
; alias: _ZNSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEED0Ev
; demangled: std::num_get<char, std::istreambuf_iterator<char, std::char_traits<char> > >::~num_get()
; decoder-mode: thumb
008a53e0  10 b5                                            push {r4, lr}
008a53e2  07 4b                                            ldr r3, [pc, #0x1c]
008a53e4  07 4a                                            ldr r2, [pc, #0x1c]
008a53e6  04 1c                                            adds r4, r0, #0
008a53e8  7b 44                                            add r3, pc
008a53ea  9a 58                                            ldr r2, [r3, r2]
008a53ec  08 32                                            adds r2, #8
008a53ee  02 60                                            str r2, [r0]
008a53f0  fe f7 84 fa                                      bl #0x8a38fc
008a53f4  20 1c                                            adds r0, r4, #0
008a53f6  68 f6 5c e7                                      blx #0x30e2b0
008a53fa  20 1c                                            adds r0, r4, #0
008a53fc  10 bd                                            pop {r4, pc}
008a53fe  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008a5400  ac f6 0e 00 54 34 00 00                          .byte 0xac, 0xf6, 0x0e, 0x00, 0x54, 0x34, 0x00, 0x00

; FUNCTION 0x008affd4, declared_size=38, range_size=38, mode=thumb
; class-group: std::num_get<char, std::istreambuf_iterator<char, std::char_traits<char> > >
; alias: _ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE6do_getES3_S3_RSt8ios_baseRiRe
; demangled: std::num_get<char, std::istreambuf_iterator<char, std::char_traits<char> > >::do_get(std::istreambuf_iterator<char, std::char_traits<char> >, std::istreambuf_iterator<char, std::char_traits<char> >, std::ios_base&, int&, long double&) const
; decoder-mode: thumb
008affd4  10 b5                                            push {r4, lr}
008affd6  86 b0                                            sub sp, #0x18
008affd8  04 a9                                            add r1, sp, #0x10
008affda  4b 60                                            str r3, [r1, #4]
008affdc  0b 9b                                            ldr r3, [sp, #0x2c]
008affde  04 92                                            str r2, [sp, #0x10]
008affe0  08 aa                                            add r2, sp, #0x20
008affe2  00 93                                            str r3, [sp]
008affe4  0c 9b                                            ldr r3, [sp, #0x30]
008affe6  04 1c                                            adds r4, r0, #0
008affe8  01 93                                            str r3, [sp, #4]
008affea  00 23                                            movs r3, #0
008affec  02 93                                            str r3, [sp, #8]
008affee  0a 9b                                            ldr r3, [sp, #0x28]
008afff0  ff f7 42 ff                                      bl #0x8afe78
008afff4  06 b0                                            add sp, #0x18
008afff6  20 1c                                            adds r0, r4, #0
008afff8  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b0158, declared_size=38, range_size=38, mode=thumb
; class-group: std::num_get<char, std::istreambuf_iterator<char, std::char_traits<char> > >
; alias: _ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE6do_getES3_S3_RSt8ios_baseRiRd
; demangled: std::num_get<char, std::istreambuf_iterator<char, std::char_traits<char> > >::do_get(std::istreambuf_iterator<char, std::char_traits<char> >, std::istreambuf_iterator<char, std::char_traits<char> >, std::ios_base&, int&, double&) const
; decoder-mode: thumb
008b0158  10 b5                                            push {r4, lr}
008b015a  86 b0                                            sub sp, #0x18
008b015c  04 a9                                            add r1, sp, #0x10
008b015e  4b 60                                            str r3, [r1, #4]
008b0160  0b 9b                                            ldr r3, [sp, #0x2c]
008b0162  04 92                                            str r2, [sp, #0x10]
008b0164  08 aa                                            add r2, sp, #0x20
008b0166  00 93                                            str r3, [sp]
008b0168  0c 9b                                            ldr r3, [sp, #0x30]
008b016a  04 1c                                            adds r4, r0, #0
008b016c  01 93                                            str r3, [sp, #4]
008b016e  00 23                                            movs r3, #0
008b0170  02 93                                            str r3, [sp, #8]
008b0172  0a 9b                                            ldr r3, [sp, #0x28]
008b0174  ff f7 42 ff                                      bl #0x8afffc
008b0178  06 b0                                            add sp, #0x18
008b017a  20 1c                                            adds r0, r4, #0
008b017c  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b075c, declared_size=38, range_size=38, mode=thumb
; class-group: std::num_get<char, std::istreambuf_iterator<char, std::char_traits<char> > >
; alias: _ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE6do_getES3_S3_RSt8ios_baseRiRj
; demangled: std::num_get<char, std::istreambuf_iterator<char, std::char_traits<char> > >::do_get(std::istreambuf_iterator<char, std::char_traits<char> >, std::istreambuf_iterator<char, std::char_traits<char> >, std::ios_base&, int&, unsigned int&) const
; decoder-mode: thumb
008b075c  10 b5                                            push {r4, lr}
008b075e  86 b0                                            sub sp, #0x18
008b0760  04 a9                                            add r1, sp, #0x10
008b0762  4b 60                                            str r3, [r1, #4]
008b0764  0b 9b                                            ldr r3, [sp, #0x2c]
008b0766  04 92                                            str r2, [sp, #0x10]
008b0768  08 aa                                            add r2, sp, #0x20
008b076a  00 93                                            str r3, [sp]
008b076c  0c 9b                                            ldr r3, [sp, #0x30]
008b076e  04 1c                                            adds r4, r0, #0
008b0770  01 93                                            str r3, [sp, #4]
008b0772  00 23                                            movs r3, #0
008b0774  02 93                                            str r3, [sp, #8]
008b0776  0a 9b                                            ldr r3, [sp, #0x28]
008b0778  ff f7 fe fe                                      bl #0x8b0578
008b077c  06 b0                                            add sp, #0x18
008b077e  20 1c                                            adds r0, r4, #0
008b0780  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b15e8, declared_size=38, range_size=38, mode=thumb
; class-group: std::num_get<char, std::istreambuf_iterator<char, std::char_traits<char> > >
; alias: _ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE6do_getES3_S3_RSt8ios_baseRiRy
; demangled: std::num_get<char, std::istreambuf_iterator<char, std::char_traits<char> > >::do_get(std::istreambuf_iterator<char, std::char_traits<char> >, std::istreambuf_iterator<char, std::char_traits<char> >, std::ios_base&, int&, unsigned long long&) const
; decoder-mode: thumb
008b15e8  10 b5                                            push {r4, lr}
008b15ea  86 b0                                            sub sp, #0x18
008b15ec  04 a9                                            add r1, sp, #0x10
008b15ee  4b 60                                            str r3, [r1, #4]
008b15f0  0b 9b                                            ldr r3, [sp, #0x2c]
008b15f2  04 92                                            str r2, [sp, #0x10]
008b15f4  08 aa                                            add r2, sp, #0x20
008b15f6  00 93                                            str r3, [sp]
008b15f8  0c 9b                                            ldr r3, [sp, #0x30]
008b15fa  04 1c                                            adds r4, r0, #0
008b15fc  01 93                                            str r3, [sp, #4]
008b15fe  00 23                                            movs r3, #0
008b1600  02 93                                            str r3, [sp, #8]
008b1602  0a 9b                                            ldr r3, [sp, #0x28]
008b1604  ff f7 fa fe                                      bl #0x8b13fc
008b1608  06 b0                                            add sp, #0x18
008b160a  20 1c                                            adds r0, r4, #0
008b160c  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b1610, declared_size=50, range_size=50, mode=thumb
; class-group: std::num_get<char, std::istreambuf_iterator<char, std::char_traits<char> > >
; alias: _ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE6do_getES3_S3_RSt8ios_baseRiRPv
; demangled: std::num_get<char, std::istreambuf_iterator<char, std::char_traits<char> > >::do_get(std::istreambuf_iterator<char, std::char_traits<char> >, std::istreambuf_iterator<char, std::char_traits<char> >, std::ios_base&, int&, void*&) const
; decoder-mode: thumb
008b1610  30 b5                                            push {r4, r5, lr}
008b1612  89 b0                                            sub sp, #0x24
008b1614  04 a9                                            add r1, sp, #0x10
008b1616  4b 60                                            str r3, [r1, #4]
008b1618  0f 9d                                            ldr r5, [sp, #0x3c]
008b161a  06 ab                                            add r3, sp, #0x18
008b161c  01 93                                            str r3, [sp, #4]
008b161e  00 23                                            movs r3, #0
008b1620  04 92                                            str r2, [sp, #0x10]
008b1622  02 93                                            str r3, [sp, #8]
008b1624  0c aa                                            add r2, sp, #0x30
008b1626  0e 9b                                            ldr r3, [sp, #0x38]
008b1628  04 1c                                            adds r4, r0, #0
008b162a  00 95                                            str r5, [sp]
008b162c  ff f7 e6 fe                                      bl #0x8b13fc
008b1630  2b 68                                            ldr r3, [r5]
008b1632  5a 07                                            lsls r2, r3, #0x1d
008b1634  02 d4                                            bmi #0x8b163c
008b1636  06 9a                                            ldr r2, [sp, #0x18]
008b1638  10 9b                                            ldr r3, [sp, #0x40]
008b163a  1a 60                                            str r2, [r3]
008b163c  09 b0                                            add sp, #0x24
008b163e  20 1c                                            adds r0, r4, #0
008b1640  30 bd                                            pop {r4, r5, pc}

; FUNCTION 0x008b1830, declared_size=38, range_size=38, mode=thumb
; class-group: std::num_get<char, std::istreambuf_iterator<char, std::char_traits<char> > >
; alias: _ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE6do_getES3_S3_RSt8ios_baseRiRx
; demangled: std::num_get<char, std::istreambuf_iterator<char, std::char_traits<char> > >::do_get(std::istreambuf_iterator<char, std::char_traits<char> >, std::istreambuf_iterator<char, std::char_traits<char> >, std::ios_base&, int&, long long&) const
; decoder-mode: thumb
008b1830  10 b5                                            push {r4, lr}
008b1832  86 b0                                            sub sp, #0x18
008b1834  04 a9                                            add r1, sp, #0x10
008b1836  4b 60                                            str r3, [r1, #4]
008b1838  0b 9b                                            ldr r3, [sp, #0x2c]
008b183a  04 92                                            str r2, [sp, #0x10]
008b183c  08 aa                                            add r2, sp, #0x20
008b183e  00 93                                            str r3, [sp]
008b1840  0c 9b                                            ldr r3, [sp, #0x30]
008b1842  04 1c                                            adds r4, r0, #0
008b1844  01 93                                            str r3, [sp, #4]
008b1846  00 23                                            movs r3, #0
008b1848  02 93                                            str r3, [sp, #8]
008b184a  0a 9b                                            ldr r3, [sp, #0x28]
008b184c  ff f7 fa fe                                      bl #0x8b1644
008b1850  06 b0                                            add sp, #0x18
008b1852  20 1c                                            adds r0, r4, #0
008b1854  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b1bc8, declared_size=38, range_size=38, mode=thumb
; class-group: std::num_get<char, std::istreambuf_iterator<char, std::char_traits<char> > >
; alias: _ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE6do_getES3_S3_RSt8ios_baseRiRt
; demangled: std::num_get<char, std::istreambuf_iterator<char, std::char_traits<char> > >::do_get(std::istreambuf_iterator<char, std::char_traits<char> >, std::istreambuf_iterator<char, std::char_traits<char> >, std::ios_base&, int&, unsigned short&) const
; decoder-mode: thumb
008b1bc8  10 b5                                            push {r4, lr}
008b1bca  86 b0                                            sub sp, #0x18
008b1bcc  04 a9                                            add r1, sp, #0x10
008b1bce  4b 60                                            str r3, [r1, #4]
008b1bd0  0b 9b                                            ldr r3, [sp, #0x2c]
008b1bd2  04 92                                            str r2, [sp, #0x10]
008b1bd4  08 aa                                            add r2, sp, #0x20
008b1bd6  00 93                                            str r3, [sp]
008b1bd8  0c 9b                                            ldr r3, [sp, #0x30]
008b1bda  04 1c                                            adds r4, r0, #0
008b1bdc  01 93                                            str r3, [sp, #4]
008b1bde  00 23                                            movs r3, #0
008b1be0  02 93                                            str r3, [sp, #8]
008b1be2  0a 9b                                            ldr r3, [sp, #0x28]
008b1be4  ff f7 fe fe                                      bl #0x8b19e4
008b1be8  06 b0                                            add sp, #0x18
008b1bea  20 1c                                            adds r0, r4, #0
008b1bec  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b1dd4, declared_size=38, range_size=38, mode=thumb
; class-group: std::num_get<char, std::istreambuf_iterator<char, std::char_traits<char> > >
; alias: _ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE6do_getES3_S3_RSt8ios_baseRiRl
; demangled: std::num_get<char, std::istreambuf_iterator<char, std::char_traits<char> > >::do_get(std::istreambuf_iterator<char, std::char_traits<char> >, std::istreambuf_iterator<char, std::char_traits<char> >, std::ios_base&, int&, long&) const
; decoder-mode: thumb
008b1dd4  10 b5                                            push {r4, lr}
008b1dd6  86 b0                                            sub sp, #0x18
008b1dd8  04 a9                                            add r1, sp, #0x10
008b1dda  4b 60                                            str r3, [r1, #4]
008b1ddc  0b 9b                                            ldr r3, [sp, #0x2c]
008b1dde  04 92                                            str r2, [sp, #0x10]
008b1de0  08 aa                                            add r2, sp, #0x20
008b1de2  00 93                                            str r3, [sp]
008b1de4  0c 9b                                            ldr r3, [sp, #0x30]
008b1de6  04 1c                                            adds r4, r0, #0
008b1de8  01 93                                            str r3, [sp, #4]
008b1dea  00 23                                            movs r3, #0
008b1dec  02 93                                            str r3, [sp, #8]
008b1dee  0a 9b                                            ldr r3, [sp, #0x28]
008b1df0  ff f7 fe fe                                      bl #0x8b1bf0
008b1df4  06 b0                                            add sp, #0x18
008b1df6  20 1c                                            adds r0, r4, #0
008b1df8  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b1dfc, declared_size=114, range_size=114, mode=thumb
; class-group: std::num_get<char, std::istreambuf_iterator<char, std::char_traits<char> > >
; alias: _ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE6do_getES3_S3_RSt8ios_baseRiRb
; demangled: std::num_get<char, std::istreambuf_iterator<char, std::char_traits<char> > >::do_get(std::istreambuf_iterator<char, std::char_traits<char> >, std::istreambuf_iterator<char, std::char_traits<char> >, std::ios_base&, int&, bool&) const
; decoder-mode: thumb
008b1dfc  70 b5                                            push {r4, r5, r6, lr}
008b1dfe  8a b0                                            sub sp, #0x28
008b1e00  04 a9                                            add r1, sp, #0x10
008b1e02  4b 60                                            str r3, [r1, #4]
008b1e04  10 9b                                            ldr r3, [sp, #0x40]
008b1e06  04 92                                            str r2, [sp, #0x10]
008b1e08  04 1c                                            adds r4, r0, #0
008b1e0a  58 68                                            ldr r0, [r3, #4]
008b1e0c  80 22                                            movs r2, #0x80
008b1e0e  52 00                                            lsls r2, r2, #1
008b1e10  11 9d                                            ldr r5, [sp, #0x44]
008b1e12  12 9e                                            ldr r6, [sp, #0x48]
008b1e14  02 40                                            ands r2, r0
008b1e16  1f d1                                            bne #0x8b1e58
008b1e18  09 a8                                            add r0, sp, #0x24
008b1e1a  01 90                                            str r0, [sp, #4]
008b1e1c  02 92                                            str r2, [sp, #8]
008b1e1e  07 a8                                            add r0, sp, #0x1c
008b1e20  0e aa                                            add r2, sp, #0x38
008b1e22  00 95                                            str r5, [sp]
008b1e24  ff f7 e4 fe                                      bl #0x8b1bf0
008b1e28  2a 68                                            ldr r2, [r5]
008b1e2a  04 23                                            movs r3, #4
008b1e2c  1a 42                                            tst r2, r3
008b1e2e  0b d0                                            beq #0x8b1e48
008b1e30  07 9b                                            ldr r3, [sp, #0x1c]
008b1e32  23 60                                            str r3, [r4]
008b1e34  08 ab                                            add r3, sp, #0x20
008b1e36  1b 88                                            ldrh r3, [r3]
008b1e38  a3 80                                            strh r3, [r4, #4]
008b1e3a  6b 46                                            mov r3, sp
008b1e3c  22 33                                            adds r3, #0x22
008b1e3e  1b 78                                            ldrb r3, [r3]
008b1e40  a3 71                                            strb r3, [r4, #6]
008b1e42  0a b0                                            add sp, #0x28
008b1e44  20 1c                                            adds r0, r4, #0
008b1e46  70 bd                                            pop {r4, r5, r6, pc}
008b1e48  09 99                                            ldr r1, [sp, #0x24]
008b1e4a  00 29                                            cmp r1, #0
008b1e4c  0d d0                                            beq #0x8b1e6a
008b1e4e  01 29                                            cmp r1, #1
008b1e50  0b d0                                            beq #0x8b1e6a
008b1e52  13 43                                            orrs r3, r2
008b1e54  2b 60                                            str r3, [r5]
008b1e56  eb e7                                            b #0x8b1e30
008b1e58  00 22                                            movs r2, #0
008b1e5a  02 92                                            str r2, [sp, #8]
008b1e5c  20 1c                                            adds r0, r4, #0
008b1e5e  0e aa                                            add r2, sp, #0x38
008b1e60  00 95                                            str r5, [sp]
008b1e62  01 96                                            str r6, [sp, #4]
008b1e64  fd f7 34 fd                                      bl #0x8af8d0
008b1e68  eb e7                                            b #0x8b1e42
008b1e6a  31 70                                            strb r1, [r6]
008b1e6c  e0 e7                                            b #0x8b1e30

; FUNCTION 0x008b1fcc, declared_size=38, range_size=38, mode=thumb
; class-group: std::num_get<char, std::istreambuf_iterator<char, std::char_traits<char> > >
; alias: _ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE6do_getES3_S3_RSt8ios_baseRiRf
; demangled: std::num_get<char, std::istreambuf_iterator<char, std::char_traits<char> > >::do_get(std::istreambuf_iterator<char, std::char_traits<char> >, std::istreambuf_iterator<char, std::char_traits<char> >, std::ios_base&, int&, float&) const
; decoder-mode: thumb
008b1fcc  10 b5                                            push {r4, lr}
008b1fce  86 b0                                            sub sp, #0x18
008b1fd0  04 a9                                            add r1, sp, #0x10
008b1fd2  4b 60                                            str r3, [r1, #4]
008b1fd4  0b 9b                                            ldr r3, [sp, #0x2c]
008b1fd6  04 92                                            str r2, [sp, #0x10]
008b1fd8  08 aa                                            add r2, sp, #0x20
008b1fda  00 93                                            str r3, [sp]
008b1fdc  0c 9b                                            ldr r3, [sp, #0x30]
008b1fde  04 1c                                            adds r4, r0, #0
008b1fe0  01 93                                            str r3, [sp, #4]
008b1fe2  00 23                                            movs r3, #0
008b1fe4  02 93                                            str r3, [sp, #8]
008b1fe6  0a 9b                                            ldr r3, [sp, #0x28]
008b1fe8  ff f7 42 ff                                      bl #0x8b1e70
008b1fec  06 b0                                            add sp, #0x18
008b1fee  20 1c                                            adds r0, r4, #0
008b1ff0  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b2fb4, declared_size=38, range_size=38, mode=thumb
; class-group: std::num_get<char, std::istreambuf_iterator<char, std::char_traits<char> > >
; alias: _ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE6do_getES3_S3_RSt8ios_baseRiRm
; demangled: std::num_get<char, std::istreambuf_iterator<char, std::char_traits<char> > >::do_get(std::istreambuf_iterator<char, std::char_traits<char> >, std::istreambuf_iterator<char, std::char_traits<char> >, std::ios_base&, int&, unsigned long&) const
; decoder-mode: thumb
008b2fb4  10 b5                                            push {r4, lr}
008b2fb6  86 b0                                            sub sp, #0x18
008b2fb8  04 a9                                            add r1, sp, #0x10
008b2fba  4b 60                                            str r3, [r1, #4]
008b2fbc  0b 9b                                            ldr r3, [sp, #0x2c]
008b2fbe  04 92                                            str r2, [sp, #0x10]
008b2fc0  08 aa                                            add r2, sp, #0x20
008b2fc2  00 93                                            str r3, [sp]
008b2fc4  0c 9b                                            ldr r3, [sp, #0x30]
008b2fc6  04 1c                                            adds r4, r0, #0
008b2fc8  01 93                                            str r3, [sp, #4]
008b2fca  00 23                                            movs r3, #0
008b2fcc  02 93                                            str r3, [sp, #8]
008b2fce  0a 9b                                            ldr r3, [sp, #0x28]
008b2fd0  ff f7 fe fe                                      bl #0x8b2dd0
008b2fd4  06 b0                                            add sp, #0x18
008b2fd6  20 1c                                            adds r0, r4, #0
008b2fd8  10 bd                                            pop {r4, pc}

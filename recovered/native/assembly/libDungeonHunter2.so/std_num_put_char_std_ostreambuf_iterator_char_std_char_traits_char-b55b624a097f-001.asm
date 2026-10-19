; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008a4ee4, declared_size=32, range_size=32, mode=thumb
; class-group: std::num_put<char, std::ostreambuf_iterator<char, std::char_traits<char> > >
; alias: _ZNSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEED1Ev
; demangled: std::num_put<char, std::ostreambuf_iterator<char, std::char_traits<char> > >::~num_put()
; decoder-mode: thumb
008a4ee4  10 b5                                            push {r4, lr}
008a4ee6  05 4b                                            ldr r3, [pc, #0x14]
008a4ee8  05 4a                                            ldr r2, [pc, #0x14]
008a4eea  04 1c                                            adds r4, r0, #0
008a4eec  7b 44                                            add r3, pc
008a4eee  9a 58                                            ldr r2, [r3, r2]
008a4ef0  08 32                                            adds r2, #8
008a4ef2  02 60                                            str r2, [r0]
008a4ef4  fe f7 02 fd                                      bl #0x8a38fc
008a4ef8  20 1c                                            adds r0, r4, #0
008a4efa  10 bd                                            pop {r4, pc}
; mapping-symbol data/literal pool
008a4efc  a8 fb 0e 00 c4 11 00 00                          .byte 0xa8, 0xfb, 0x0e, 0x00, 0xc4, 0x11, 0x00, 0x00

; FUNCTION 0x008a5408, declared_size=40, range_size=40, mode=thumb
; class-group: std::num_put<char, std::ostreambuf_iterator<char, std::char_traits<char> > >
; alias: _ZNSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEED0Ev
; demangled: std::num_put<char, std::ostreambuf_iterator<char, std::char_traits<char> > >::~num_put()
; decoder-mode: thumb
008a5408  10 b5                                            push {r4, lr}
008a540a  07 4b                                            ldr r3, [pc, #0x1c]
008a540c  07 4a                                            ldr r2, [pc, #0x1c]
008a540e  04 1c                                            adds r4, r0, #0
008a5410  7b 44                                            add r3, pc
008a5412  9a 58                                            ldr r2, [r3, r2]
008a5414  08 32                                            adds r2, #8
008a5416  02 60                                            str r2, [r0]
008a5418  fe f7 70 fa                                      bl #0x8a38fc
008a541c  20 1c                                            adds r0, r4, #0
008a541e  68 f6 48 e7                                      blx #0x30e2b0
008a5422  20 1c                                            adds r0, r4, #0
008a5424  10 bd                                            pop {r4, pc}
008a5426  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008a5428  84 f6 0e 00 c4 11 00 00                          .byte 0x84, 0xf6, 0x0e, 0x00, 0xc4, 0x11, 0x00, 0x00

; FUNCTION 0x008a88b8, declared_size=68, range_size=68, mode=thumb
; class-group: std::num_put<char, std::ostreambuf_iterator<char, std::char_traits<char> > >
; alias: _ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE6do_putES3_RSt8ios_basecb
; demangled: std::num_put<char, std::ostreambuf_iterator<char, std::char_traits<char> > >::do_put(std::ostreambuf_iterator<char, std::char_traits<char> >, std::ios_base&, char, bool) const
; decoder-mode: thumb
008a88b8  f0 b5                                            push {r4, r5, r6, r7, lr}
008a88ba  87 b0                                            sub sp, #0x1c
008a88bc  04 92                                            str r2, [sp, #0x10]
008a88be  04 ad                                            add r5, sp, #0x10
008a88c0  0c aa                                            add r2, sp, #0x30
008a88c2  6b 60                                            str r3, [r5, #4]
008a88c4  08 ca                                            ldm r2!, {r3}
008a88c6  04 1c                                            adds r4, r0, #0
008a88c8  5e 68                                            ldr r6, [r3, #4]
008a88ca  10 78                                            ldrb r0, [r2]
008a88cc  0e aa                                            add r2, sp, #0x38
008a88ce  12 78                                            ldrb r2, [r2]
008a88d0  f7 05                                            lsls r7, r6, #0x17
008a88d2  09 d5                                            bpl #0x8a88e8
008a88d4  00 90                                            str r0, [sp]
008a88d6  01 92                                            str r2, [sp, #4]
008a88d8  20 1c                                            adds r0, r4, #0
008a88da  04 99                                            ldr r1, [sp, #0x10]
008a88dc  6a 68                                            ldr r2, [r5, #4]
008a88de  ff f7 a9 fe                                      bl #0x8a8634
008a88e2  07 b0                                            add sp, #0x1c
008a88e4  20 1c                                            adds r0, r4, #0
008a88e6  f0 bd                                            pop {r4, r5, r6, r7, pc}
008a88e8  0e 68                                            ldr r6, [r1]
008a88ea  01 90                                            str r0, [sp, #4]
008a88ec  02 92                                            str r2, [sp, #8]
008a88ee  00 93                                            str r3, [sp]
008a88f0  f6 68                                            ldr r6, [r6, #0xc]
008a88f2  20 1c                                            adds r0, r4, #0
008a88f4  04 9a                                            ldr r2, [sp, #0x10]
008a88f6  6b 68                                            ldr r3, [r5, #4]
008a88f8  b0 47                                            blx r6
008a88fa  f2 e7                                            b #0x8a88e2

; FUNCTION 0x008a8c58, declared_size=38, range_size=38, mode=thumb
; class-group: std::num_put<char, std::ostreambuf_iterator<char, std::char_traits<char> > >
; alias: _ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE6do_putES3_RSt8ios_basecm
; demangled: std::num_put<char, std::ostreambuf_iterator<char, std::char_traits<char> > >::do_put(std::ostreambuf_iterator<char, std::char_traits<char> >, std::ios_base&, char, unsigned long) const
; decoder-mode: thumb
008a8c58  10 b5                                            push {r4, lr}
008a8c5a  84 b0                                            sub sp, #0x10
008a8c5c  04 1c                                            adds r4, r0, #0
008a8c5e  06 a8                                            add r0, sp, #0x18
008a8c60  11 1c                                            adds r1, r2, #0
008a8c62  02 92                                            str r2, [sp, #8]
008a8c64  03 93                                            str r3, [sp, #0xc]
008a8c66  1a 1c                                            adds r2, r3, #0
008a8c68  08 c8                                            ldm r0!, {r3}
008a8c6a  00 78                                            ldrb r0, [r0]
008a8c6c  00 90                                            str r0, [sp]
008a8c6e  08 98                                            ldr r0, [sp, #0x20]
008a8c70  01 90                                            str r0, [sp, #4]
008a8c72  20 1c                                            adds r0, r4, #0
008a8c74  ff f7 b6 ff                                      bl #0x8a8be4
008a8c78  04 b0                                            add sp, #0x10
008a8c7a  20 1c                                            adds r0, r4, #0
008a8c7c  10 bd                                            pop {r4, pc}

; FUNCTION 0x008a8cf8, declared_size=42, range_size=42, mode=thumb
; class-group: std::num_put<char, std::ostreambuf_iterator<char, std::char_traits<char> > >
; alias: _ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE6do_putES3_RSt8ios_basecy
; demangled: std::num_put<char, std::ostreambuf_iterator<char, std::char_traits<char> > >::do_put(std::ostreambuf_iterator<char, std::char_traits<char> >, std::ios_base&, char, unsigned long long) const
; decoder-mode: thumb
008a8cf8  70 b5                                            push {r4, r5, r6, lr}
008a8cfa  86 b0                                            sub sp, #0x18
008a8cfc  04 1c                                            adds r4, r0, #0
008a8cfe  0a a8                                            add r0, sp, #0x28
008a8d00  11 1c                                            adds r1, r2, #0
008a8d02  04 92                                            str r2, [sp, #0x10]
008a8d04  05 93                                            str r3, [sp, #0x14]
008a8d06  1a 1c                                            adds r2, r3, #0
008a8d08  08 c8                                            ldm r0!, {r3}
008a8d0a  0c 9d                                            ldr r5, [sp, #0x30]
008a8d0c  0d 9e                                            ldr r6, [sp, #0x34]
008a8d0e  00 78                                            ldrb r0, [r0]
008a8d10  02 95                                            str r5, [sp, #8]
008a8d12  03 96                                            str r6, [sp, #0xc]
008a8d14  00 90                                            str r0, [sp]
008a8d16  20 1c                                            adds r0, r4, #0
008a8d18  ff f7 b2 ff                                      bl #0x8a8c80
008a8d1c  06 b0                                            add sp, #0x18
008a8d1e  20 1c                                            adds r0, r4, #0
008a8d20  70 bd                                            pop {r4, r5, r6, pc}

; FUNCTION 0x008a8d9c, declared_size=42, range_size=42, mode=thumb
; class-group: std::num_put<char, std::ostreambuf_iterator<char, std::char_traits<char> > >
; alias: _ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE6do_putES3_RSt8ios_basecx
; demangled: std::num_put<char, std::ostreambuf_iterator<char, std::char_traits<char> > >::do_put(std::ostreambuf_iterator<char, std::char_traits<char> >, std::ios_base&, char, long long) const
; decoder-mode: thumb
008a8d9c  70 b5                                            push {r4, r5, r6, lr}
008a8d9e  86 b0                                            sub sp, #0x18
008a8da0  04 1c                                            adds r4, r0, #0
008a8da2  0a a8                                            add r0, sp, #0x28
008a8da4  11 1c                                            adds r1, r2, #0
008a8da6  04 92                                            str r2, [sp, #0x10]
008a8da8  05 93                                            str r3, [sp, #0x14]
008a8daa  1a 1c                                            adds r2, r3, #0
008a8dac  08 c8                                            ldm r0!, {r3}
008a8dae  0c 9d                                            ldr r5, [sp, #0x30]
008a8db0  0d 9e                                            ldr r6, [sp, #0x34]
008a8db2  00 78                                            ldrb r0, [r0]
008a8db4  02 95                                            str r5, [sp, #8]
008a8db6  03 96                                            str r6, [sp, #0xc]
008a8db8  00 90                                            str r0, [sp]
008a8dba  20 1c                                            adds r0, r4, #0
008a8dbc  ff f7 b2 ff                                      bl #0x8a8d24
008a8dc0  06 b0                                            add sp, #0x18
008a8dc2  20 1c                                            adds r0, r4, #0
008a8dc4  70 bd                                            pop {r4, r5, r6, pc}

; FUNCTION 0x008a8e3c, declared_size=38, range_size=38, mode=thumb
; class-group: std::num_put<char, std::ostreambuf_iterator<char, std::char_traits<char> > >
; alias: _ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE6do_putES3_RSt8ios_basecl
; demangled: std::num_put<char, std::ostreambuf_iterator<char, std::char_traits<char> > >::do_put(std::ostreambuf_iterator<char, std::char_traits<char> >, std::ios_base&, char, long) const
; decoder-mode: thumb
008a8e3c  10 b5                                            push {r4, lr}
008a8e3e  84 b0                                            sub sp, #0x10
008a8e40  04 1c                                            adds r4, r0, #0
008a8e42  06 a8                                            add r0, sp, #0x18
008a8e44  11 1c                                            adds r1, r2, #0
008a8e46  02 92                                            str r2, [sp, #8]
008a8e48  03 93                                            str r3, [sp, #0xc]
008a8e4a  1a 1c                                            adds r2, r3, #0
008a8e4c  08 c8                                            ldm r0!, {r3}
008a8e4e  00 78                                            ldrb r0, [r0]
008a8e50  00 90                                            str r0, [sp]
008a8e52  08 98                                            ldr r0, [sp, #0x20]
008a8e54  01 90                                            str r0, [sp, #4]
008a8e56  20 1c                                            adds r0, r4, #0
008a8e58  ff f7 b6 ff                                      bl #0x8a8dc8
008a8e5c  04 b0                                            add sp, #0x10
008a8e5e  20 1c                                            adds r0, r4, #0
008a8e60  10 bd                                            pop {r4, pc}

; FUNCTION 0x008a9170, declared_size=42, range_size=42, mode=thumb
; class-group: std::num_put<char, std::ostreambuf_iterator<char, std::char_traits<char> > >
; alias: _ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE6do_putES3_RSt8ios_basece
; demangled: std::num_put<char, std::ostreambuf_iterator<char, std::char_traits<char> > >::do_put(std::ostreambuf_iterator<char, std::char_traits<char> >, std::ios_base&, char, long double) const
; decoder-mode: thumb
008a9170  70 b5                                            push {r4, r5, r6, lr}
008a9172  86 b0                                            sub sp, #0x18
008a9174  04 1c                                            adds r4, r0, #0
008a9176  0a a8                                            add r0, sp, #0x28
008a9178  11 1c                                            adds r1, r2, #0
008a917a  04 92                                            str r2, [sp, #0x10]
008a917c  05 93                                            str r3, [sp, #0x14]
008a917e  1a 1c                                            adds r2, r3, #0
008a9180  08 c8                                            ldm r0!, {r3}
008a9182  0c 9d                                            ldr r5, [sp, #0x30]
008a9184  0d 9e                                            ldr r6, [sp, #0x34]
008a9186  00 78                                            ldrb r0, [r0]
008a9188  02 95                                            str r5, [sp, #8]
008a918a  03 96                                            str r6, [sp, #0xc]
008a918c  00 90                                            str r0, [sp]
008a918e  20 1c                                            adds r0, r4, #0
008a9190  ff f7 66 ff                                      bl #0x8a9060
008a9194  06 b0                                            add sp, #0x18
008a9196  20 1c                                            adds r0, r4, #0
008a9198  70 bd                                            pop {r4, r5, r6, pc}

; FUNCTION 0x008a92ac, declared_size=42, range_size=42, mode=thumb
; class-group: std::num_put<char, std::ostreambuf_iterator<char, std::char_traits<char> > >
; alias: _ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE6do_putES3_RSt8ios_basecd
; demangled: std::num_put<char, std::ostreambuf_iterator<char, std::char_traits<char> > >::do_put(std::ostreambuf_iterator<char, std::char_traits<char> >, std::ios_base&, char, double) const
; decoder-mode: thumb
008a92ac  70 b5                                            push {r4, r5, r6, lr}
008a92ae  86 b0                                            sub sp, #0x18
008a92b0  04 1c                                            adds r4, r0, #0
008a92b2  0a a8                                            add r0, sp, #0x28
008a92b4  11 1c                                            adds r1, r2, #0
008a92b6  04 92                                            str r2, [sp, #0x10]
008a92b8  05 93                                            str r3, [sp, #0x14]
008a92ba  1a 1c                                            adds r2, r3, #0
008a92bc  08 c8                                            ldm r0!, {r3}
008a92be  0c 9d                                            ldr r5, [sp, #0x30]
008a92c0  0d 9e                                            ldr r6, [sp, #0x34]
008a92c2  00 78                                            ldrb r0, [r0]
008a92c4  02 95                                            str r5, [sp, #8]
008a92c6  03 96                                            str r6, [sp, #0xc]
008a92c8  00 90                                            str r0, [sp]
008a92ca  20 1c                                            adds r0, r4, #0
008a92cc  ff f7 66 ff                                      bl #0x8a919c
008a92d0  06 b0                                            add sp, #0x18
008a92d2  20 1c                                            adds r0, r4, #0
008a92d4  70 bd                                            pop {r4, r5, r6, pc}

; FUNCTION 0x008abb9c, declared_size=312, range_size=312, mode=thumb
; class-group: std::num_put<char, std::ostreambuf_iterator<char, std::char_traits<char> > >
; alias: _ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE6do_putES3_RSt8ios_basecPKv
; demangled: std::num_put<char, std::ostreambuf_iterator<char, std::char_traits<char> > >::do_put(std::ostreambuf_iterator<char, std::char_traits<char> >, std::ios_base&, char, void const*) const
; decoder-mode: thumb
008abb9c  f0 b5                                            push {r4, r5, r6, r7, lr}
008abb9e  5f 46                                            mov r7, fp
008abba0  56 46                                            mov r6, sl
008abba2  4d 46                                            mov r5, sb
008abba4  44 46                                            mov r4, r8
008abba6  f0 b4                                            push {r4, r5, r6, r7}
008abba8  89 b0                                            sub sp, #0x24
008abbaa  12 9c                                            ldr r4, [sp, #0x48]
008abbac  04 ad                                            add r5, sp, #0x10
008abbae  6b 60                                            str r3, [r5, #4]
008abbb0  04 92                                            str r2, [sp, #0x10]
008abbb2  80 46                                            mov r8, r0
008abbb4  14 98                                            ldr r0, [sp, #0x50]
008abbb6  93 46                                            mov fp, r2
008abbb8  2a 79                                            ldrb r2, [r5, #4]
008abbba  07 af                                            add r7, sp, #0x1c
008abbbc  21 1c                                            adds r1, r4, #0
008abbbe  82 46                                            mov sl, r0
008abbc0  20 31                                            adds r1, #0x20
008abbc2  38 1c                                            adds r0, r7, #0
008abbc4  41 4e                                            ldr r6, [pc, #0x104]
008abbc6  91 46                                            mov sb, r2
008abbc8  f7 f7 ca fc                                      bl #0x8a3560
008abbcc  40 4b                                            ldr r3, [pc, #0x100]
008abbce  7e 44                                            add r6, pc
008abbd0  38 1c                                            adds r0, r7, #0
008abbd2  f1 58                                            ldr r1, [r6, r3]
008abbd4  f7 f7 ec fc                                      bl #0x8a35b0
008abbd8  06 1c                                            adds r6, r0, #0
008abbda  38 1c                                            adds r0, r7, #0
008abbdc  f7 f7 8a fc                                      bl #0x8a34f4
008abbe0  67 68                                            ldr r7, [r4, #4]
008abbe2  38 22                                            movs r2, #0x38
008abbe4  50 46                                            mov r0, sl
008abbe6  3b 1c                                            adds r3, r7, #0
008abbe8  93 43                                            bics r3, r2
008abbea  1a 1c                                            adds r2, r3, #0
008abbec  84 23                                            movs r3, #0x84
008abbee  9b 00                                            lsls r3, r3, #2
008abbf0  13 43                                            orrs r3, r2
008abbf2  07 22                                            movs r2, #7
008abbf4  93 43                                            bics r3, r2
008abbf6  04 22                                            movs r2, #4
008abbf8  13 43                                            orrs r3, r2
008abbfa  63 60                                            str r3, [r4, #4]
008abbfc  0a 23                                            movs r3, #0xa
008abbfe  e3 61                                            str r3, [r4, #0x1c]
008abc00  00 28                                            cmp r0, #0
008abc02  18 d0                                            beq #0x8abc36
008abc04  33 68                                            ldr r3, [r6]
008abc06  30 1c                                            adds r0, r6, #0
008abc08  30 21                                            movs r1, #0x30
008abc0a  9b 69                                            ldr r3, [r3, #0x18]
008abc0c  98 47                                            blx r3
008abc0e  4a 46                                            mov r2, sb
008abc10  53 46                                            mov r3, sl
008abc12  2a 71                                            strb r2, [r5, #4]
008abc14  00 90                                            str r0, [sp]
008abc16  01 93                                            str r3, [sp, #4]
008abc18  40 46                                            mov r0, r8
008abc1a  04 99                                            ldr r1, [sp, #0x10]
008abc1c  6a 68                                            ldr r2, [r5, #4]
008abc1e  23 1c                                            adds r3, r4, #0
008abc20  fc f7 e0 ff                                      bl #0x8a8be4
008abc24  09 b0                                            add sp, #0x24
008abc26  40 46                                            mov r0, r8
008abc28  67 60                                            str r7, [r4, #4]
008abc2a  3c bc                                            pop {r2, r3, r4, r5}
008abc2c  90 46                                            mov r8, r2
008abc2e  99 46                                            mov sb, r3
008abc30  a2 46                                            mov sl, r4
008abc32  ab 46                                            mov fp, r5
008abc34  f0 bd                                            pop {r4, r5, r6, r7, pc}
008abc36  7a 04                                            lsls r2, r7, #0x11
008abc38  36 d5                                            bpl #0x8abca8
008abc3a  0d f0 c1 fe                                      bl #0x8b99c0
008abc3e  03 90                                            str r0, [sp, #0xc]
008abc40  33 68                                            ldr r3, [r6]
008abc42  30 21                                            movs r1, #0x30
008abc44  30 1c                                            adds r0, r6, #0
008abc46  9b 69                                            ldr r3, [r3, #0x18]
008abc48  98 47                                            blx r3
008abc4a  4b 46                                            mov r3, sb
008abc4c  01 1c                                            adds r1, r0, #0
008abc4e  00 2b                                            cmp r3, #0
008abc50  1f d0                                            beq #0x8abc92
008abc52  58 46                                            mov r0, fp
008abc54  43 69                                            ldr r3, [r0, #0x14]
008abc56  82 69                                            ldr r2, [r0, #0x18]
008abc58  93 42                                            cmp r3, r2
008abc5a  13 d2                                            bhs #0x8abc84
008abc5c  19 70                                            strb r1, [r3]
008abc5e  01 33                                            adds r3, #1
008abc60  43 61                                            str r3, [r0, #0x14]
008abc62  03 98                                            ldr r0, [sp, #0xc]
008abc64  33 68                                            ldr r3, [r6]
008abc66  01 7c                                            ldrb r1, [r0, #0x10]
008abc68  9b 69                                            ldr r3, [r3, #0x18]
008abc6a  30 1c                                            adds r0, r6, #0
008abc6c  98 47                                            blx r3
008abc6e  5a 46                                            mov r2, fp
008abc70  53 69                                            ldr r3, [r2, #0x14]
008abc72  92 69                                            ldr r2, [r2, #0x18]
008abc74  01 1c                                            adds r1, r0, #0
008abc76  93 42                                            cmp r3, r2
008abc78  1a d2                                            bhs #0x8abcb0
008abc7a  18 70                                            strb r0, [r3]
008abc7c  01 33                                            adds r3, #1
008abc7e  58 46                                            mov r0, fp
008abc80  43 61                                            str r3, [r0, #0x14]
008abc82  0e e0                                            b #0x8abca2
008abc84  5a 46                                            mov r2, fp
008abc86  13 68                                            ldr r3, [r2]
008abc88  58 46                                            mov r0, fp
008abc8a  5b 6b                                            ldr r3, [r3, #0x34]
008abc8c  98 47                                            blx r3
008abc8e  01 30                                            adds r0, #1
008abc90  e7 d1                                            bne #0x8abc62
008abc92  03 98                                            ldr r0, [sp, #0xc]
008abc94  33 68                                            ldr r3, [r6]
008abc96  01 7c                                            ldrb r1, [r0, #0x10]
008abc98  9b 69                                            ldr r3, [r3, #0x18]
008abc9a  30 1c                                            adds r0, r6, #0
008abc9c  98 47                                            blx r3
008abc9e  00 22                                            movs r2, #0
008abca0  91 46                                            mov sb, r2
008abca2  08 23                                            movs r3, #8
008abca4  e3 61                                            str r3, [r4, #0x1c]
008abca6  ad e7                                            b #0x8abc04
008abca8  0d f0 84 fe                                      bl #0x8b99b4
008abcac  03 90                                            str r0, [sp, #0xc]
008abcae  c7 e7                                            b #0x8abc40
008abcb0  5a 46                                            mov r2, fp
008abcb2  13 68                                            ldr r3, [r2]
008abcb4  58 46                                            mov r0, fp
008abcb6  5b 6b                                            ldr r3, [r3, #0x34]
008abcb8  98 47                                            blx r3
008abcba  43 1c                                            adds r3, r0, #1
008abcbc  5a 1e                                            subs r2, r3, #1
008abcbe  93 41                                            sbcs r3, r2
008abcc0  48 46                                            mov r0, sb
008abcc2  5b 42                                            rsbs r3, r3, #0
008abcc4  18 40                                            ands r0, r3
008abcc6  81 46                                            mov sb, r0
008abcc8  eb e7                                            b #0x8abca2
008abcca  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008abccc  c6 8e 0e 00 e4 1c 00 00                          .byte 0xc6, 0x8e, 0x0e, 0x00, 0xe4, 0x1c, 0x00, 0x00

; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008a5818, declared_size=40, range_size=40, mode=thumb
; class-group: std::time_put<char, std::ostreambuf_iterator<char, std::char_traits<char> > >
; alias: _ZNSt8time_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEED1Ev
; demangled: std::time_put<char, std::ostreambuf_iterator<char, std::char_traits<char> > >::~time_put()
; decoder-mode: thumb
008a5818  10 b5                                            push {r4, lr}
008a581a  07 4b                                            ldr r3, [pc, #0x1c]
008a581c  07 4a                                            ldr r2, [pc, #0x1c]
008a581e  04 1c                                            adds r4, r0, #0
008a5820  7b 44                                            add r3, pc
008a5822  9a 58                                            ldr r2, [r3, r2]
008a5824  08 32                                            adds r2, #8
008a5826  02 60                                            str r2, [r0]
008a5828  0c 30                                            adds r0, #0xc
008a582a  ff f7 b1 ff                                      bl #0x8a5790
008a582e  20 1c                                            adds r0, r4, #0
008a5830  fe f7 64 f8                                      bl #0x8a38fc
008a5834  20 1c                                            adds r0, r4, #0
008a5836  10 bd                                            pop {r4, pc}
; mapping-symbol data/literal pool
008a5838  74 f2 0e 00 98 32 00 00                          .byte 0x74, 0xf2, 0x0e, 0x00, 0x98, 0x32, 0x00, 0x00

; FUNCTION 0x008a58c0, declared_size=48, range_size=48, mode=thumb
; class-group: std::time_put<char, std::ostreambuf_iterator<char, std::char_traits<char> > >
; alias: _ZNSt8time_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEED0Ev
; demangled: std::time_put<char, std::ostreambuf_iterator<char, std::char_traits<char> > >::~time_put()
; decoder-mode: thumb
008a58c0  10 b5                                            push {r4, lr}
008a58c2  09 4b                                            ldr r3, [pc, #0x24]
008a58c4  09 4a                                            ldr r2, [pc, #0x24]
008a58c6  04 1c                                            adds r4, r0, #0
008a58c8  7b 44                                            add r3, pc
008a58ca  9a 58                                            ldr r2, [r3, r2]
008a58cc  08 32                                            adds r2, #8
008a58ce  02 60                                            str r2, [r0]
008a58d0  0c 30                                            adds r0, #0xc
008a58d2  ff f7 5d ff                                      bl #0x8a5790
008a58d6  20 1c                                            adds r0, r4, #0
008a58d8  fe f7 10 f8                                      bl #0x8a38fc
008a58dc  20 1c                                            adds r0, r4, #0
008a58de  68 f6 e8 e4                                      blx #0x30e2b0
008a58e2  20 1c                                            adds r0, r4, #0
008a58e4  10 bd                                            pop {r4, pc}
008a58e6  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008a58e8  cc f1 0e 00 98 32 00 00                          .byte 0xcc, 0xf1, 0x0e, 0x00, 0x98, 0x32, 0x00, 0x00

; FUNCTION 0x008a82a0, declared_size=300, range_size=300, mode=thumb
; class-group: std::time_put<char, std::ostreambuf_iterator<char, std::char_traits<char> > >
; alias: _ZNKSt8time_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE6do_putES3_RSt8ios_basecPK2tmcc
; demangled: std::time_put<char, std::ostreambuf_iterator<char, std::char_traits<char> > >::do_put(std::ostreambuf_iterator<char, std::char_traits<char> >, std::ios_base&, char, tm const*, char, char) const
; decoder-mode: thumb
008a82a0  f0 b5                                            push {r4, r5, r6, r7, lr}
008a82a2  5f 46                                            mov r7, fp
008a82a4  56 46                                            mov r6, sl
008a82a6  4d 46                                            mov r5, sb
008a82a8  44 46                                            mov r4, r8
008a82aa  f0 b4                                            push {r4, r5, r6, r7}
008a82ac  42 4c                                            ldr r4, [pc, #0x108]
008a82ae  0f 1c                                            adds r7, r1, #0
008a82b0  83 46                                            mov fp, r0
008a82b2  a5 44                                            add sp, r4
008a82b4  06 a9                                            add r1, sp, #0x18
008a82b6  06 92                                            str r2, [sp, #0x18]
008a82b8  4b 60                                            str r3, [r1, #4]
008a82ba  9f ab                                            add r3, sp, #0x27c
008a82bc  1b 78                                            ldrb r3, [r3]
008a82be  3f 4c                                            ldr r4, [pc, #0xfc]
008a82c0  3f 4a                                            ldr r2, [pc, #0xfc]
008a82c2  04 93                                            str r3, [sp, #0x10]
008a82c4  a0 ab                                            add r3, sp, #0x280
008a82c6  1b 78                                            ldrb r3, [r3]
008a82c8  a2 46                                            mov sl, r4
008a82ca  fa 44                                            add sl, pc
008a82cc  54 46                                            mov r4, sl
008a82ce  05 93                                            str r3, [sp, #0x14]
008a82d0  a3 58                                            ldr r3, [r4, r2]
008a82d2  02 92                                            str r2, [sp, #8]
008a82d4  9e 98                                            ldr r0, [sp, #0x278]
008a82d6  1b 68                                            ldr r3, [r3]
008a82d8  08 ac                                            add r4, sp, #0x20
008a82da  80 46                                            mov r8, r0
008a82dc  91 93                                            str r3, [sp, #0x244]
008a82de  09 79                                            ldrb r1, [r1, #4]
008a82e0  20 1c                                            adds r0, r4, #0
008a82e2  06 9d                                            ldr r5, [sp, #0x18]
008a82e4  03 91                                            str r1, [sp, #0xc]
008a82e6  9c 99                                            ldr r1, [sp, #0x270]
008a82e8  09 ae                                            add r6, sp, #0x24
008a82ea  0c 37                                            adds r7, #0xc
008a82ec  20 31                                            adds r1, #0x20
008a82ee  fb f7 37 f9                                      bl #0x8a3560
008a82f2  34 4b                                            ldr r3, [pc, #0xd0]
008a82f4  50 46                                            mov r0, sl
008a82f6  c1 58                                            ldr r1, [r0, r3]
008a82f8  20 1c                                            adds r0, r4, #0
008a82fa  fb f7 59 f9                                      bl #0x8a35b0
008a82fe  81 46                                            mov sb, r0
008a8300  20 1c                                            adds r0, r4, #0
008a8302  8c 24                                            movs r4, #0x8c
008a8304  fb f7 f6 f8                                      bl #0x8a34f4
008a8308  64 00                                            lsls r4, r4, #1
008a830a  50 a9                                            add r1, sp, #0x140
008a830c  2e 4a                                            ldr r2, [pc, #0xb8]
008a830e  36 61                                            str r6, [r6, #0x10]
008a8310  0e a8                                            add r0, sp, #0x38
008a8312  66 f6 aa e2                                      blx #0x30e868
008a8316  36 51                                            str r6, [r6, r4]
008a8318  30 1c                                            adds r0, r6, #0
008a831a  fc f7 dd ff                                      bl #0x8a52d8
008a831e  32 69                                            ldr r2, [r6, #0x10]
008a8320  00 23                                            movs r3, #0
008a8322  41 46                                            mov r1, r8
008a8324  13 70                                            strb r3, [r2]
008a8326  04 9a                                            ldr r2, [sp, #0x10]
008a8328  01 91                                            str r1, [sp, #4]
008a832a  05 9b                                            ldr r3, [sp, #0x14]
008a832c  49 46                                            mov r1, sb
008a832e  30 1c                                            adds r0, r6, #0
008a8330  00 97                                            str r7, [sp]
008a8332  13 f0 ed ff                                      bl #0x8bc310
008a8336  34 59                                            ldr r4, [r6, r4]
008a8338  33 69                                            ldr r3, [r6, #0x10]
008a833a  03 9f                                            ldr r7, [sp, #0xc]
008a833c  a0 46                                            mov r8, r4
008a833e  1a 1b                                            subs r2, r3, r4
008a8340  91 46                                            mov sb, r2
008a8342  00 2a                                            cmp r2, #0
008a8344  1e dd                                            ble #0x8a8384
008a8346  33 1c                                            adds r3, r6, #0
008a8348  00 24                                            movs r4, #0
008a834a  46 46                                            mov r6, r8
008a834c  98 46                                            mov r8, r3
008a834e  05 e0                                            b #0x8a835c
008a8350  19 70                                            strb r1, [r3]
008a8352  01 33                                            adds r3, #1
008a8354  6b 61                                            str r3, [r5, #0x14]
008a8356  01 34                                            adds r4, #1
008a8358  4c 45                                            cmp r4, sb
008a835a  12 d0                                            beq #0x8a8382
008a835c  31 5d                                            ldrb r1, [r6, r4]
008a835e  00 2f                                            cmp r7, #0
008a8360  f9 d0                                            beq #0x8a8356
008a8362  6b 69                                            ldr r3, [r5, #0x14]
008a8364  aa 69                                            ldr r2, [r5, #0x18]
008a8366  93 42                                            cmp r3, r2
008a8368  f2 d3                                            blo #0x8a8350
008a836a  2b 68                                            ldr r3, [r5]
008a836c  28 1c                                            adds r0, r5, #0
008a836e  01 34                                            adds r4, #1
008a8370  5b 6b                                            ldr r3, [r3, #0x34]
008a8372  98 47                                            blx r3
008a8374  01 30                                            adds r0, #1
008a8376  43 1e                                            subs r3, r0, #1
008a8378  98 41                                            sbcs r0, r3
008a837a  40 42                                            rsbs r0, r0, #0
008a837c  07 40                                            ands r7, r0
008a837e  4c 45                                            cmp r4, sb
008a8380  ec d1                                            bne #0x8a835c
008a8382  46 46                                            mov r6, r8
008a8384  5b 46                                            mov r3, fp
008a8386  1d 60                                            str r5, [r3]
008a8388  1f 71                                            strb r7, [r3, #4]
008a838a  30 1c                                            adds r0, r6, #0
008a838c  fd f7 7a fb                                      bl #0x8a5a84
008a8390  02 99                                            ldr r1, [sp, #8]
008a8392  54 46                                            mov r4, sl
008a8394  91 9a                                            ldr r2, [sp, #0x244]
008a8396  63 58                                            ldr r3, [r4, r1]
008a8398  58 46                                            mov r0, fp
008a839a  1b 68                                            ldr r3, [r3]
008a839c  9a 42                                            cmp r2, r3
008a839e  08 d1                                            bne #0x8a83b2
008a83a0  93 23                                            movs r3, #0x93
008a83a2  9b 00                                            lsls r3, r3, #2
008a83a4  9d 44                                            add sp, r3
008a83a6  3c bc                                            pop {r2, r3, r4, r5}
008a83a8  90 46                                            mov r8, r2
008a83aa  99 46                                            mov sb, r3
008a83ac  a2 46                                            mov sl, r4
008a83ae  ab 46                                            mov fp, r5
008a83b0  f0 bd                                            pop {r4, r5, r6, r7, pc}
008a83b2  65 f6 ae e7                                      blx #0x30e310
008a83b6  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008a83b8  b4 fd ff ff ca c7 0e 00 ac 40 00 00 e4 1c 00 00  .byte 0xb4, 0xfd, 0xff, 0xff, 0xca, 0xc7, 0x0e, 0x00, 0xac, 0x40, 0x00, 0x00, 0xe4, 0x1c, 0x00, 0x00
008a83c8  01 01 00 00                                      .byte 0x01, 0x01, 0x00, 0x00

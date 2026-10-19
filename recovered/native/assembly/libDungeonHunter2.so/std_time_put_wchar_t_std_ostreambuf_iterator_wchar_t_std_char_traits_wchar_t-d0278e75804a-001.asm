; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008a5658, declared_size=40, range_size=40, mode=thumb
; class-group: std::time_put<wchar_t, std::ostreambuf_iterator<wchar_t, std::char_traits<wchar_t> > >
; alias: _ZNSt8time_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEED1Ev
; demangled: std::time_put<wchar_t, std::ostreambuf_iterator<wchar_t, std::char_traits<wchar_t> > >::~time_put()
; decoder-mode: thumb
008a5658  10 b5                                            push {r4, lr}
008a565a  07 4b                                            ldr r3, [pc, #0x1c]
008a565c  07 4a                                            ldr r2, [pc, #0x1c]
008a565e  04 1c                                            adds r4, r0, #0
008a5660  7b 44                                            add r3, pc
008a5662  9a 58                                            ldr r2, [r3, r2]
008a5664  08 32                                            adds r2, #8
008a5666  02 60                                            str r2, [r0]
008a5668  0c 30                                            adds r0, #0xc
008a566a  ff f7 b1 ff                                      bl #0x8a55d0
008a566e  20 1c                                            adds r0, r4, #0
008a5670  fe f7 44 f9                                      bl #0x8a38fc
008a5674  20 1c                                            adds r0, r4, #0
008a5676  10 bd                                            pop {r4, pc}
; mapping-symbol data/literal pool
008a5678  34 f4 0e 00 d0 31 00 00                          .byte 0x34, 0xf4, 0x0e, 0x00, 0xd0, 0x31, 0x00, 0x00

; FUNCTION 0x008a56d0, declared_size=48, range_size=48, mode=thumb
; class-group: std::time_put<wchar_t, std::ostreambuf_iterator<wchar_t, std::char_traits<wchar_t> > >
; alias: _ZNSt8time_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEED0Ev
; demangled: std::time_put<wchar_t, std::ostreambuf_iterator<wchar_t, std::char_traits<wchar_t> > >::~time_put()
; decoder-mode: thumb
008a56d0  10 b5                                            push {r4, lr}
008a56d2  09 4b                                            ldr r3, [pc, #0x24]
008a56d4  09 4a                                            ldr r2, [pc, #0x24]
008a56d6  04 1c                                            adds r4, r0, #0
008a56d8  7b 44                                            add r3, pc
008a56da  9a 58                                            ldr r2, [r3, r2]
008a56dc  08 32                                            adds r2, #8
008a56de  02 60                                            str r2, [r0]
008a56e0  0c 30                                            adds r0, #0xc
008a56e2  ff f7 75 ff                                      bl #0x8a55d0
008a56e6  20 1c                                            adds r0, r4, #0
008a56e8  fe f7 08 f9                                      bl #0x8a38fc
008a56ec  20 1c                                            adds r0, r4, #0
008a56ee  68 f6 e0 e5                                      blx #0x30e2b0
008a56f2  20 1c                                            adds r0, r4, #0
008a56f4  10 bd                                            pop {r4, pc}
008a56f6  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008a56f8  bc f3 0e 00 d0 31 00 00                          .byte 0xbc, 0xf3, 0x0e, 0x00, 0xd0, 0x31, 0x00, 0x00

; FUNCTION 0x008a6f58, declared_size=260, range_size=260, mode=thumb
; class-group: std::time_put<wchar_t, std::ostreambuf_iterator<wchar_t, std::char_traits<wchar_t> > >
; alias: _ZNKSt8time_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE6do_putES3_RSt8ios_basewPK2tmcc
; demangled: std::time_put<wchar_t, std::ostreambuf_iterator<wchar_t, std::char_traits<wchar_t> > >::do_put(std::ostreambuf_iterator<wchar_t, std::char_traits<wchar_t> >, std::ios_base&, wchar_t, tm const*, char, char) const
; decoder-mode: thumb
008a6f58  f0 b5                                            push {r4, r5, r6, r7, lr}
008a6f5a  5f 46                                            mov r7, fp
008a6f5c  56 46                                            mov r6, sl
008a6f5e  4d 46                                            mov r5, sb
008a6f60  44 46                                            mov r4, r8
008a6f62  f0 b4                                            push {r4, r5, r6, r7}
008a6f64  33 4c                                            ldr r4, [pc, #0xcc]
008a6f66  89 46                                            mov sb, r1
008a6f68  07 1c                                            adds r7, r0, #0
008a6f6a  a5 44                                            add sp, r4
008a6f6c  04 a9                                            add r1, sp, #0x10
008a6f6e  4b 60                                            str r3, [r1, #4]
008a6f70  31 4b                                            ldr r3, [pc, #0xc4]
008a6f72  04 92                                            str r2, [sp, #0x10]
008a6f74  09 79                                            ldrb r1, [r1, #4]
008a6f76  6b 44                                            add r3, sp, r3
008a6f78  1b 78                                            ldrb r3, [r3]
008a6f7a  8a 20                                            movs r0, #0x8a
008a6f7c  00 01                                            lsls r0, r0, #4
008a6f7e  9a 46                                            mov sl, r3
008a6f80  8b 23                                            movs r3, #0x8b
008a6f82  68 44                                            add r0, sp, r0
008a6f84  1b 01                                            lsls r3, r3, #4
008a6f86  03 91                                            str r1, [sp, #0xc]
008a6f88  6b 44                                            add r3, sp, r3
008a6f8a  01 68                                            ldr r1, [r0]
008a6f8c  87 25                                            movs r5, #0x87
008a6f8e  1b 78                                            ldrb r3, [r3]
008a6f90  2d 01                                            lsls r5, r5, #4
008a6f92  6d 44                                            add r5, sp, r5
008a6f94  20 31                                            adds r1, #0x20
008a6f96  28 1c                                            adds r0, r5, #0
008a6f98  28 4c                                            ldr r4, [pc, #0xa0]
008a6f9a  16 1c                                            adds r6, r2, #0
008a6f9c  9b 46                                            mov fp, r3
008a6f9e  fc f7 df fa                                      bl #0x8a3560
008a6fa2  27 4b                                            ldr r3, [pc, #0x9c]
008a6fa4  7c 44                                            add r4, pc
008a6fa6  28 1c                                            adds r0, r5, #0
008a6fa8  e1 58                                            ldr r1, [r4, r3]
008a6faa  fc f7 01 fb                                      bl #0x8a35b0
008a6fae  80 46                                            mov r8, r0
008a6fb0  28 1c                                            adds r0, r5, #0
008a6fb2  fc f7 9f fa                                      bl #0x8a34f4
008a6fb6  23 49                                            ldr r1, [pc, #0x8c]
008a6fb8  06 ac                                            add r4, sp, #0x18
008a6fba  89 25                                            movs r5, #0x89
008a6fbc  69 44                                            add r1, sp, r1
008a6fbe  22 4a                                            ldr r2, [pc, #0x88]
008a6fc0  ed 00                                            lsls r5, r5, #3
008a6fc2  24 64                                            str r4, [r4, #0x40]
008a6fc4  17 a8                                            add r0, sp, #0x5c
008a6fc6  67 f6 50 e4                                      blx #0x30e868
008a6fca  64 51                                            str r4, [r4, r5]
008a6fcc  20 1c                                            adds r0, r4, #0
008a6fce  fe f7 eb fe                                      bl #0x8a5da8
008a6fd2  23 6c                                            ldr r3, [r4, #0x40]
008a6fd4  00 22                                            movs r2, #0
008a6fd6  41 46                                            mov r1, r8
008a6fd8  1a 60                                            str r2, [r3]
008a6fda  1c 4a                                            ldr r2, [pc, #0x70]
008a6fdc  4b 46                                            mov r3, sb
008a6fde  0c 33                                            adds r3, #0xc
008a6fe0  00 93                                            str r3, [sp]
008a6fe2  6a 44                                            add r2, sp, r2
008a6fe4  13 68                                            ldr r3, [r2]
008a6fe6  20 1c                                            adds r0, r4, #0
008a6fe8  52 46                                            mov r2, sl
008a6fea  01 93                                            str r3, [sp, #4]
008a6fec  5b 46                                            mov r3, fp
008a6fee  14 f0 35 fd                                      bl #0x8bba5c
008a6ff2  61 59                                            ldr r1, [r4, r5]
008a6ff4  0c 20                                            movs r0, #0xc
008a6ff6  6d 46                                            mov r5, sp
008a6ff8  15 4b                                            ldr r3, [pc, #0x54]
008a6ffa  45 5d                                            ldrb r5, [r0, r5]
008a6ffc  15 48                                            ldr r0, [pc, #0x54]
008a6ffe  6b 44                                            add r3, sp, r3
008a7000  1d 71                                            strb r5, [r3, #4]
008a7002  13 4b                                            ldr r3, [pc, #0x4c]
008a7004  68 44                                            add r0, sp, r0
008a7006  22 6c                                            ldr r2, [r4, #0x40]
008a7008  6b 44                                            add r3, sp, r3
008a700a  1e 60                                            str r6, [r3]
008a700c  01 90                                            str r0, [sp, #4]
008a700e  5b 68                                            ldr r3, [r3, #4]
008a7010  38 1c                                            adds r0, r7, #0
008a7012  00 93                                            str r3, [sp]
008a7014  33 1c                                            adds r3, r6, #0
008a7016  ff f7 6d ff                                      bl #0x8a6ef4
008a701a  20 1c                                            adds r0, r4, #0
008a701c  fe f7 18 fd                                      bl #0x8a5a50
008a7020  0d 4b                                            ldr r3, [pc, #0x34]
008a7022  38 1c                                            adds r0, r7, #0
008a7024  9d 44                                            add sp, r3
008a7026  3c bc                                            pop {r2, r3, r4, r5}
008a7028  90 46                                            mov r8, r2
008a702a  99 46                                            mov sb, r3
008a702c  a2 46                                            mov sl, r4
008a702e  ab 46                                            mov fp, r5
008a7030  f0 bd                                            pop {r4, r5, r6, r7, pc}
008a7032  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008a7034  84 f7 ff ff ac 08 00 00 f0 da 0e 00 44 1e 00 00  .byte 0x84, 0xf7, 0xff, 0xff, 0xac, 0x08, 0x00, 0x00, 0xf0, 0xda, 0x0e, 0x00, 0x44, 0x1e, 0x00, 0x00
008a7044  64 04 00 00 04 04 00 00 a8 08 00 00 68 08 00 00  .byte 0x64, 0x04, 0x00, 0x00, 0x04, 0x04, 0x00, 0x00, 0xa8, 0x08, 0x00, 0x00, 0x68, 0x08, 0x00, 0x00
008a7054  74 08 00 00 7c 08 00 00                          .byte 0x74, 0x08, 0x00, 0x00, 0x7c, 0x08, 0x00, 0x00

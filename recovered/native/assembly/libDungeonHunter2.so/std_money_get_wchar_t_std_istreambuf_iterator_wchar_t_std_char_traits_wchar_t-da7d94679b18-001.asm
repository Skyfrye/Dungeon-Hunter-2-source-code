; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008a4f04, declared_size=32, range_size=32, mode=thumb
; class-group: std::money_get<wchar_t, std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> > >
; alias: _ZNSt9money_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEED1Ev
; demangled: std::money_get<wchar_t, std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> > >::~money_get()
; decoder-mode: thumb
008a4f04  10 b5                                            push {r4, lr}
008a4f06  05 4b                                            ldr r3, [pc, #0x14]
008a4f08  05 4a                                            ldr r2, [pc, #0x14]
008a4f0a  04 1c                                            adds r4, r0, #0
008a4f0c  7b 44                                            add r3, pc
008a4f0e  9a 58                                            ldr r2, [r3, r2]
008a4f10  08 32                                            adds r2, #8
008a4f12  02 60                                            str r2, [r0]
008a4f14  fe f7 f2 fc                                      bl #0x8a38fc
008a4f18  20 1c                                            adds r0, r4, #0
008a4f1a  10 bd                                            pop {r4, pc}
; mapping-symbol data/literal pool
008a4f1c  88 fb 0e 00 b0 0f 00 00                          .byte 0x88, 0xfb, 0x0e, 0x00, 0xb0, 0x0f, 0x00, 0x00

; FUNCTION 0x008a5318, declared_size=40, range_size=40, mode=thumb
; class-group: std::money_get<wchar_t, std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> > >
; alias: _ZNSt9money_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEED0Ev
; demangled: std::money_get<wchar_t, std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> > >::~money_get()
; decoder-mode: thumb
008a5318  10 b5                                            push {r4, lr}
008a531a  07 4b                                            ldr r3, [pc, #0x1c]
008a531c  07 4a                                            ldr r2, [pc, #0x1c]
008a531e  04 1c                                            adds r4, r0, #0
008a5320  7b 44                                            add r3, pc
008a5322  9a 58                                            ldr r2, [r3, r2]
008a5324  08 32                                            adds r2, #8
008a5326  02 60                                            str r2, [r0]
008a5328  fe f7 e8 fa                                      bl #0x8a38fc
008a532c  20 1c                                            adds r0, r4, #0
008a532e  68 f6 c0 e7                                      blx #0x30e2b0
008a5332  20 1c                                            adds r0, r4, #0
008a5334  10 bd                                            pop {r4, pc}
008a5336  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008a5338  74 f7 0e 00 b0 0f 00 00                          .byte 0x74, 0xf7, 0x0e, 0x00, 0xb0, 0x0f, 0x00, 0x00

; FUNCTION 0x008b0f2c, declared_size=82, range_size=82, mode=thumb
; class-group: std::money_get<wchar_t, std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> > >
; alias: _ZNKSt9money_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE6do_getES3_S3_bRSt8ios_baseRiRSbIwS2_SaIwEE
; demangled: std::money_get<wchar_t, std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> > >::do_get(std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >, std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >, bool, std::ios_base&, int&, std::basic_string<wchar_t, std::char_traits<wchar_t>, std::allocator<wchar_t> >&) const
; decoder-mode: thumb
008b0f2c  82 b0                                            sub sp, #8
008b0f2e  70 b5                                            push {r4, r5, r6, lr}
008b0f30  8c b0                                            sub sp, #0x30
008b0f32  10 92                                            str r2, [sp, #0x40]
008b0f34  11 93                                            str r3, [sp, #0x44]
008b0f36  04 1c                                            adds r4, r0, #0
008b0f38  11 1c                                            adds r1, r2, #0
008b0f3a  68 46                                            mov r0, sp
008b0f3c  1a 1c                                            adds r2, r3, #0
008b0f3e  16 ab                                            add r3, sp, #0x58
008b0f40  1d 78                                            ldrb r5, [r3]
008b0f42  2f 30                                            adds r0, #0x2f
008b0f44  01 23                                            movs r3, #1
008b0f46  03 70                                            strb r3, [r0]
008b0f48  13 9e                                            ldr r6, [sp, #0x4c]
008b0f4a  6b 46                                            mov r3, sp
008b0f4c  40 c3                                            stm r3!, {r6}
008b0f4e  14 9e                                            ldr r6, [sp, #0x50]
008b0f50  01 96                                            str r6, [sp, #4]
008b0f52  15 9e                                            ldr r6, [sp, #0x54]
008b0f54  5e 60                                            str r6, [r3, #4]
008b0f56  17 9b                                            ldr r3, [sp, #0x5c]
008b0f58  07 90                                            str r0, [sp, #0x1c]
008b0f5a  20 1c                                            adds r0, r4, #0
008b0f5c  04 93                                            str r3, [sp, #0x10]
008b0f5e  18 9b                                            ldr r3, [sp, #0x60]
008b0f60  03 95                                            str r5, [sp, #0xc]
008b0f62  05 93                                            str r3, [sp, #0x14]
008b0f64  19 9b                                            ldr r3, [sp, #0x64]
008b0f66  06 93                                            str r3, [sp, #0x18]
008b0f68  00 23                                            movs r3, #0
008b0f6a  08 93                                            str r3, [sp, #0x20]
008b0f6c  12 9b                                            ldr r3, [sp, #0x48]
008b0f6e  ff f7 09 fc                                      bl #0x8b0784
008b0f72  0c b0                                            add sp, #0x30
008b0f74  20 1c                                            adds r0, r4, #0
008b0f76  70 bc                                            pop {r4, r5, r6}
008b0f78  08 bc                                            pop {r3}
008b0f7a  02 b0                                            add sp, #8
008b0f7c  18 47                                            bx r3

; FUNCTION 0x008b0f80, declared_size=218, range_size=218, mode=thumb
; class-group: std::money_get<wchar_t, std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> > >
; alias: _ZNKSt9money_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE6do_getES3_S3_bRSt8ios_baseRiRe
; demangled: std::money_get<wchar_t, std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> > >::do_get(std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >, std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >, bool, std::ios_base&, int&, long double&) const
; decoder-mode: thumb
008b0f80  82 b0                                            sub sp, #8
008b0f82  f0 b5                                            push {r4, r5, r6, r7, lr}
008b0f84  4f 46                                            mov r7, sb
008b0f86  46 46                                            mov r6, r8
008b0f88  c0 b4                                            push {r6, r7}
008b0f8a  a3 b0                                            sub sp, #0x8c
008b0f8c  2b 93                                            str r3, [sp, #0xac]
008b0f8e  33 9b                                            ldr r3, [sp, #0xcc]
008b0f90  2a 92                                            str r2, [sp, #0xa8]
008b0f92  32 9a                                            ldr r2, [sp, #0xc8]
008b0f94  0a ac                                            add r4, sp, #0x28
008b0f96  10 21                                            movs r1, #0x10
008b0f98  06 1c                                            adds r6, r0, #0
008b0f9a  99 46                                            mov sb, r3
008b0f9c  20 1c                                            adds r0, r4, #0
008b0f9e  30 ab                                            add r3, sp, #0xc0
008b0fa0  90 46                                            mov r8, r2
008b0fa2  1d 78                                            ldrb r5, [r3]
008b0fa4  24 64                                            str r4, [r4, #0x40]
008b0fa6  64 64                                            str r4, [r4, #0x44]
008b0fa8  f5 f7 2c fe                                      bl #0x8a6c04
008b0fac  23 6c                                            ldr r3, [r4, #0x40]
008b0fae  00 22                                            movs r2, #0
008b0fb0  6f 46                                            mov r7, sp
008b0fb2  1a 60                                            str r2, [r3]
008b0fb4  87 37                                            adds r7, #0x87
008b0fb6  01 23                                            movs r3, #1
008b0fb8  3b 70                                            strb r3, [r7]
008b0fba  2d 99                                            ldr r1, [sp, #0xb4]
008b0fbc  6b 46                                            mov r3, sp
008b0fbe  1c a8                                            add r0, sp, #0x70
008b0fc0  02 c3                                            stm r3!, {r1}
008b0fc2  2e 99                                            ldr r1, [sp, #0xb8]
008b0fc4  01 91                                            str r1, [sp, #4]
008b0fc6  2f 99                                            ldr r1, [sp, #0xbc]
008b0fc8  59 60                                            str r1, [r3, #4]
008b0fca  31 9b                                            ldr r3, [sp, #0xc4]
008b0fcc  08 92                                            str r2, [sp, #0x20]
008b0fce  2a 99                                            ldr r1, [sp, #0xa8]
008b0fd0  04 93                                            str r3, [sp, #0x10]
008b0fd2  43 46                                            mov r3, r8
008b0fd4  05 93                                            str r3, [sp, #0x14]
008b0fd6  2b 9a                                            ldr r2, [sp, #0xac]
008b0fd8  2c 9b                                            ldr r3, [sp, #0xb0]
008b0fda  03 95                                            str r5, [sp, #0xc]
008b0fdc  06 94                                            str r4, [sp, #0x18]
008b0fde  07 97                                            str r7, [sp, #0x1c]
008b0fe0  ff f7 d0 fb                                      bl #0x8b0784
008b0fe4  1c 9b                                            ldr r3, [sp, #0x70]
008b0fe6  2a ad                                            add r5, sp, #0xa8
008b0fe8  42 46                                            mov r2, r8
008b0fea  08 c5                                            stm r5!, {r3}
008b0fec  1d 9b                                            ldr r3, [sp, #0x74]
008b0fee  2b 93                                            str r3, [sp, #0xac]
008b0ff0  1e ab                                            add r3, sp, #0x78
008b0ff2  1b 88                                            ldrh r3, [r3]
008b0ff4  ab 80                                            strh r3, [r5, #4]
008b0ff6  13 68                                            ldr r3, [r2]
008b0ff8  02 2b                                            cmp r3, #2
008b0ffa  14 d0                                            beq #0x8b1026
008b0ffc  00 2b                                            cmp r3, #0
008b0ffe  12 d0                                            beq #0x8b1026
008b1000  2a 9a                                            ldr r2, [sp, #0xa8]
008b1002  33 1c                                            adds r3, r6, #0
008b1004  20 1c                                            adds r0, r4, #0
008b1006  04 c3                                            stm r3!, {r2}
008b1008  2b 9a                                            ldr r2, [sp, #0xac]
008b100a  72 60                                            str r2, [r6, #4]
008b100c  aa 88                                            ldrh r2, [r5, #4]
008b100e  9a 80                                            strh r2, [r3, #4]
008b1010  68 f6 ce e1                                      blx #0x3193b0
008b1014  23 b0                                            add sp, #0x8c
008b1016  30 1c                                            adds r0, r6, #0
008b1018  0c bc                                            pop {r2, r3}
008b101a  90 46                                            mov r8, r2
008b101c  99 46                                            mov sb, r3
008b101e  f0 bc                                            pop {r4, r5, r6, r7}
008b1020  08 bc                                            pop {r3}
008b1022  02 b0                                            add sp, #8
008b1024  18 47                                            bx r3
008b1026  22 6c                                            ldr r2, [r4, #0x40]
008b1028  63 6c                                            ldr r3, [r4, #0x44]
008b102a  1f 92                                            str r2, [sp, #0x7c]
008b102c  3a 78                                            ldrb r2, [r7]
008b102e  20 93                                            str r3, [sp, #0x80]
008b1030  00 2a                                            cmp r2, #0
008b1032  01 d1                                            bne #0x8b1038
008b1034  04 33                                            adds r3, #4
008b1036  20 93                                            str r3, [sp, #0x80]
008b1038  00 23                                            movs r3, #0
008b103a  20 a8                                            add r0, sp, #0x80
008b103c  1f a9                                            add r1, sp, #0x7c
008b103e  4a 46                                            mov r2, sb
008b1040  f6 f7 16 ff                                      bl #0x8a7e70
008b1044  3b 78                                            ldrb r3, [r7]
008b1046  00 2b                                            cmp r3, #0
008b1048  da d1                                            bne #0x8b1000
008b104a  4a 46                                            mov r2, sb
008b104c  53 68                                            ldr r3, [r2, #4]
008b104e  80 22                                            movs r2, #0x80
008b1050  12 06                                            lsls r2, r2, #0x18
008b1052  9b 18                                            adds r3, r3, r2
008b1054  4a 46                                            mov r2, sb
008b1056  53 60                                            str r3, [r2, #4]
008b1058  d2 e7                                            b #0x8b1000

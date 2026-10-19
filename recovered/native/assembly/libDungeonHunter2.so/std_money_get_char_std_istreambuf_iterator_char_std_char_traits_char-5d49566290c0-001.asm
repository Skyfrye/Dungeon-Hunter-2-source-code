; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008a4e84, declared_size=32, range_size=32, mode=thumb
; class-group: std::money_get<char, std::istreambuf_iterator<char, std::char_traits<char> > >
; alias: _ZNSt9money_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEED1Ev
; demangled: std::money_get<char, std::istreambuf_iterator<char, std::char_traits<char> > >::~money_get()
; decoder-mode: thumb
008a4e84  10 b5                                            push {r4, lr}
008a4e86  05 4b                                            ldr r3, [pc, #0x14]
008a4e88  05 4a                                            ldr r2, [pc, #0x14]
008a4e8a  04 1c                                            adds r4, r0, #0
008a4e8c  7b 44                                            add r3, pc
008a4e8e  9a 58                                            ldr r2, [r3, r2]
008a4e90  08 32                                            adds r2, #8
008a4e92  02 60                                            str r2, [r0]
008a4e94  fe f7 32 fd                                      bl #0x8a38fc
008a4e98  20 1c                                            adds r0, r4, #0
008a4e9a  10 bd                                            pop {r4, pc}
; mapping-symbol data/literal pool
008a4e9c  08 fc 0e 00 54 1a 00 00                          .byte 0x08, 0xfc, 0x0e, 0x00, 0x54, 0x1a, 0x00, 0x00

; FUNCTION 0x008a5368, declared_size=40, range_size=40, mode=thumb
; class-group: std::money_get<char, std::istreambuf_iterator<char, std::char_traits<char> > >
; alias: _ZNSt9money_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEED0Ev
; demangled: std::money_get<char, std::istreambuf_iterator<char, std::char_traits<char> > >::~money_get()
; decoder-mode: thumb
008a5368  10 b5                                            push {r4, lr}
008a536a  07 4b                                            ldr r3, [pc, #0x1c]
008a536c  07 4a                                            ldr r2, [pc, #0x1c]
008a536e  04 1c                                            adds r4, r0, #0
008a5370  7b 44                                            add r3, pc
008a5372  9a 58                                            ldr r2, [r3, r2]
008a5374  08 32                                            adds r2, #8
008a5376  02 60                                            str r2, [r0]
008a5378  fe f7 c0 fa                                      bl #0x8a38fc
008a537c  20 1c                                            adds r0, r4, #0
008a537e  68 f6 98 e7                                      blx #0x30e2b0
008a5382  20 1c                                            adds r0, r4, #0
008a5384  10 bd                                            pop {r4, pc}
008a5386  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008a5388  24 f7 0e 00 54 1a 00 00                          .byte 0x24, 0xf7, 0x0e, 0x00, 0x54, 0x1a, 0x00, 0x00

; FUNCTION 0x008b2af0, declared_size=62, range_size=62, mode=thumb
; class-group: std::money_get<char, std::istreambuf_iterator<char, std::char_traits<char> > >
; alias: _ZNKSt9money_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE6do_getES3_S3_bRSt8ios_baseRiRSs
; demangled: std::money_get<char, std::istreambuf_iterator<char, std::char_traits<char> > >::do_get(std::istreambuf_iterator<char, std::char_traits<char> >, std::istreambuf_iterator<char, std::char_traits<char> >, bool, std::ios_base&, int&, std::basic_string<char, std::char_traits<char>, std::allocator<char> >&) const
; decoder-mode: thumb
008b2af0  30 b5                                            push {r4, r5, lr}
008b2af2  8d b0                                            sub sp, #0x34
008b2af4  11 1c                                            adds r1, r2, #0
008b2af6  08 92                                            str r2, [sp, #0x20]
008b2af8  09 93                                            str r3, [sp, #0x24]
008b2afa  1a 1c                                            adds r2, r3, #0
008b2afc  12 ab                                            add r3, sp, #0x48
008b2afe  04 1c                                            adds r4, r0, #0
008b2b00  18 78                                            ldrb r0, [r3]
008b2b02  01 25                                            movs r5, #1
008b2b04  19 3b                                            subs r3, #0x19
008b2b06  1d 70                                            strb r5, [r3]
008b2b08  01 90                                            str r0, [sp, #4]
008b2b0a  13 98                                            ldr r0, [sp, #0x4c]
008b2b0c  05 93                                            str r3, [sp, #0x14]
008b2b0e  00 23                                            movs r3, #0
008b2b10  02 90                                            str r0, [sp, #8]
008b2b12  14 98                                            ldr r0, [sp, #0x50]
008b2b14  06 93                                            str r3, [sp, #0x18]
008b2b16  11 9b                                            ldr r3, [sp, #0x44]
008b2b18  03 90                                            str r0, [sp, #0xc]
008b2b1a  15 98                                            ldr r0, [sp, #0x54]
008b2b1c  00 93                                            str r3, [sp]
008b2b1e  10 9b                                            ldr r3, [sp, #0x40]
008b2b20  04 90                                            str r0, [sp, #0x10]
008b2b22  20 1c                                            adds r0, r4, #0
008b2b24  ff f7 3a fc                                      bl #0x8b239c
008b2b28  0d b0                                            add sp, #0x34
008b2b2a  20 1c                                            adds r0, r4, #0
008b2b2c  30 bd                                            pop {r4, r5, pc}

; FUNCTION 0x008b2b30, declared_size=276, range_size=276, mode=thumb
; class-group: std::money_get<char, std::istreambuf_iterator<char, std::char_traits<char> > >
; alias: _ZNKSt9money_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE6do_getES3_S3_bRSt8ios_baseRiRe
; demangled: std::money_get<char, std::istreambuf_iterator<char, std::char_traits<char> > >::do_get(std::istreambuf_iterator<char, std::char_traits<char> >, std::istreambuf_iterator<char, std::char_traits<char> >, bool, std::ios_base&, int&, long double&) const
; decoder-mode: thumb
008b2b30  f0 b5                                            push {r4, r5, r6, r7, lr}
008b2b32  5f 46                                            mov r7, fp
008b2b34  56 46                                            mov r6, sl
008b2b36  4d 46                                            mov r5, sb
008b2b38  44 46                                            mov r4, r8
008b2b3a  f0 b4                                            push {r4, r5, r6, r7}
008b2b3c  99 b0                                            sub sp, #0x64
008b2b3e  0a af                                            add r7, sp, #0x28
008b2b40  7b 60                                            str r3, [r7, #4]
008b2b42  27 9b                                            ldr r3, [sp, #0x9c]
008b2b44  25 99                                            ldr r1, [sp, #0x94]
008b2b46  3d 4d                                            ldr r5, [pc, #0xf4]
008b2b48  9b 46                                            mov fp, r3
008b2b4a  24 ab                                            add r3, sp, #0x90
008b2b4c  1b 78                                            ldrb r3, [r3]
008b2b4e  09 91                                            str r1, [sp, #0x24]
008b2b50  3b 49                                            ldr r1, [pc, #0xec]
008b2b52  7d 44                                            add r5, pc
008b2b54  9a 46                                            mov sl, r3
008b2b56  6b 58                                            ldr r3, [r5, r1]
008b2b58  0a 92                                            str r2, [sp, #0x28]
008b2b5a  26 9a                                            ldr r2, [sp, #0x98]
008b2b5c  1b 68                                            ldr r3, [r3]
008b2b5e  11 ac                                            add r4, sp, #0x44
008b2b60  08 91                                            str r1, [sp, #0x20]
008b2b62  06 1c                                            adds r6, r0, #0
008b2b64  10 21                                            movs r1, #0x10
008b2b66  20 1c                                            adds r0, r4, #0
008b2b68  90 46                                            mov r8, r2
008b2b6a  17 93                                            str r3, [sp, #0x5c]
008b2b6c  24 61                                            str r4, [r4, #0x10]
008b2b6e  64 61                                            str r4, [r4, #0x14]
008b2b70  5e f6 84 e5                                      blx #0x31167c
008b2b74  22 69                                            ldr r2, [r4, #0x10]
008b2b76  00 23                                            movs r3, #0
008b2b78  0c a8                                            add r0, sp, #0x30
008b2b7a  13 70                                            strb r3, [r2]
008b2b7c  43 22                                            movs r2, #0x43
008b2b7e  6a 44                                            add r2, sp, r2
008b2b80  91 46                                            mov sb, r2
008b2b82  49 46                                            mov r1, sb
008b2b84  01 22                                            movs r2, #1
008b2b86  0a 70                                            strb r2, [r1]
008b2b88  09 99                                            ldr r1, [sp, #0x24]
008b2b8a  06 93                                            str r3, [sp, #0x18]
008b2b8c  23 9b                                            ldr r3, [sp, #0x8c]
008b2b8e  52 46                                            mov r2, sl
008b2b90  01 92                                            str r2, [sp, #4]
008b2b92  02 91                                            str r1, [sp, #8]
008b2b94  42 46                                            mov r2, r8
008b2b96  49 46                                            mov r1, sb
008b2b98  05 91                                            str r1, [sp, #0x14]
008b2b9a  00 93                                            str r3, [sp]
008b2b9c  03 92                                            str r2, [sp, #0xc]
008b2b9e  04 94                                            str r4, [sp, #0x10]
008b2ba0  7a 68                                            ldr r2, [r7, #4]
008b2ba2  22 9b                                            ldr r3, [sp, #0x88]
008b2ba4  0a 99                                            ldr r1, [sp, #0x28]
008b2ba6  ff f7 f9 fb                                      bl #0x8b239c
008b2baa  0c 9b                                            ldr r3, [sp, #0x30]
008b2bac  0b af                                            add r7, sp, #0x2c
008b2bae  2e 22                                            movs r2, #0x2e
008b2bb0  0a 93                                            str r3, [sp, #0x28]
008b2bb2  0d ab                                            add r3, sp, #0x34
008b2bb4  1b 88                                            ldrh r3, [r3]
008b2bb6  6a 44                                            add r2, sp, r2
008b2bb8  41 46                                            mov r1, r8
008b2bba  3b 80                                            strh r3, [r7]
008b2bbc  6b 46                                            mov r3, sp
008b2bbe  36 33                                            adds r3, #0x36
008b2bc0  1b 78                                            ldrb r3, [r3]
008b2bc2  92 46                                            mov sl, r2
008b2bc4  13 70                                            strb r3, [r2]
008b2bc6  0b 68                                            ldr r3, [r1]
008b2bc8  02 2b                                            cmp r3, #2
008b2bca  19 d0                                            beq #0x8b2c00
008b2bcc  00 2b                                            cmp r3, #0
008b2bce  17 d0                                            beq #0x8b2c00
008b2bd0  0a 9b                                            ldr r3, [sp, #0x28]
008b2bd2  51 46                                            mov r1, sl
008b2bd4  20 1c                                            adds r0, r4, #0
008b2bd6  33 60                                            str r3, [r6]
008b2bd8  3b 88                                            ldrh r3, [r7]
008b2bda  b3 80                                            strh r3, [r6, #4]
008b2bdc  0b 78                                            ldrb r3, [r1]
008b2bde  b3 71                                            strb r3, [r6, #6]
008b2be0  60 f6 e4 e6                                      blx #0x3139ac
008b2be4  08 9a                                            ldr r2, [sp, #0x20]
008b2be6  30 1c                                            adds r0, r6, #0
008b2be8  ab 58                                            ldr r3, [r5, r2]
008b2bea  17 9a                                            ldr r2, [sp, #0x5c]
008b2bec  1b 68                                            ldr r3, [r3]
008b2bee  9a 42                                            cmp r2, r3
008b2bf0  21 d1                                            bne #0x8b2c36
008b2bf2  19 b0                                            add sp, #0x64
008b2bf4  3c bc                                            pop {r2, r3, r4, r5}
008b2bf6  90 46                                            mov r8, r2
008b2bf8  99 46                                            mov sb, r3
008b2bfa  a2 46                                            mov sl, r4
008b2bfc  ab 46                                            mov fp, r5
008b2bfe  f0 bd                                            pop {r4, r5, r6, r7, pc}
008b2c00  22 69                                            ldr r2, [r4, #0x10]
008b2c02  49 46                                            mov r1, sb
008b2c04  63 69                                            ldr r3, [r4, #0x14]
008b2c06  0e 92                                            str r2, [sp, #0x38]
008b2c08  0a 78                                            ldrb r2, [r1]
008b2c0a  0f 93                                            str r3, [sp, #0x3c]
008b2c0c  00 2a                                            cmp r2, #0
008b2c0e  01 d1                                            bne #0x8b2c14
008b2c10  01 33                                            adds r3, #1
008b2c12  0f 93                                            str r3, [sp, #0x3c]
008b2c14  5a 46                                            mov r2, fp
008b2c16  00 23                                            movs r3, #0
008b2c18  0f a8                                            add r0, sp, #0x3c
008b2c1a  0e a9                                            add r1, sp, #0x38
008b2c1c  f5 f7 34 fa                                      bl #0x8a8088
008b2c20  4a 46                                            mov r2, sb
008b2c22  13 78                                            ldrb r3, [r2]
008b2c24  00 2b                                            cmp r3, #0
008b2c26  d3 d1                                            bne #0x8b2bd0
008b2c28  59 46                                            mov r1, fp
008b2c2a  4b 68                                            ldr r3, [r1, #4]
008b2c2c  80 22                                            movs r2, #0x80
008b2c2e  12 06                                            lsls r2, r2, #0x18
008b2c30  9b 18                                            adds r3, r3, r2
008b2c32  4b 60                                            str r3, [r1, #4]
008b2c34  cc e7                                            b #0x8b2bd0
008b2c36  5b f6 6c e3                                      blx #0x30e310
008b2c3a  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008b2c3c  42 1f 0e 00 ac 40 00 00                          .byte 0x42, 0x1f, 0x0e, 0x00, 0xac, 0x40, 0x00, 0x00

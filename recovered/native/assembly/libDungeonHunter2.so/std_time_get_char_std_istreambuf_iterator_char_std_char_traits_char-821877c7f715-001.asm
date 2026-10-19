; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008a4a6c, declared_size=12, range_size=12, mode=thumb
; class-group: std::time_get<char, std::istreambuf_iterator<char, std::char_traits<char> > >
; alias: _ZNKSt8time_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE13do_date_orderEv
; demangled: std::time_get<char, std::istreambuf_iterator<char, std::char_traits<char> > >::do_date_order() const
; decoder-mode: thumb
008a4a6c  01 4b                                            ldr r3, [pc, #4]
008a4a6e  c0 58                                            ldr r0, [r0, r3]
008a4a70  70 47                                            bx lr
008a4a72  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008a4a74  44 04 00 00                                      .byte 0x44, 0x04, 0x00, 0x00

; FUNCTION 0x008a57f0, declared_size=40, range_size=40, mode=thumb
; class-group: std::time_get<char, std::istreambuf_iterator<char, std::char_traits<char> > >
; alias: _ZNSt8time_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEED1Ev
; demangled: std::time_get<char, std::istreambuf_iterator<char, std::char_traits<char> > >::~time_get()
; decoder-mode: thumb
008a57f0  10 b5                                            push {r4, lr}
008a57f2  07 4b                                            ldr r3, [pc, #0x1c]
008a57f4  07 4a                                            ldr r2, [pc, #0x1c]
008a57f6  04 1c                                            adds r4, r0, #0
008a57f8  7b 44                                            add r3, pc
008a57fa  9a 58                                            ldr r2, [r3, r2]
008a57fc  08 32                                            adds r2, #8
008a57fe  02 60                                            str r2, [r0]
008a5800  0c 30                                            adds r0, #0xc
008a5802  ff f7 c5 ff                                      bl #0x8a5790
008a5806  20 1c                                            adds r0, r4, #0
008a5808  fe f7 78 f8                                      bl #0x8a38fc
008a580c  20 1c                                            adds r0, r4, #0
008a580e  10 bd                                            pop {r4, pc}
; mapping-symbol data/literal pool
008a5810  9c f2 0e 00 f0 3c 00 00                          .byte 0x9c, 0xf2, 0x0e, 0x00, 0xf0, 0x3c, 0x00, 0x00

; FUNCTION 0x008a5890, declared_size=48, range_size=48, mode=thumb
; class-group: std::time_get<char, std::istreambuf_iterator<char, std::char_traits<char> > >
; alias: _ZNSt8time_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEED0Ev
; demangled: std::time_get<char, std::istreambuf_iterator<char, std::char_traits<char> > >::~time_get()
; decoder-mode: thumb
008a5890  10 b5                                            push {r4, lr}
008a5892  09 4b                                            ldr r3, [pc, #0x24]
008a5894  09 4a                                            ldr r2, [pc, #0x24]
008a5896  04 1c                                            adds r4, r0, #0
008a5898  7b 44                                            add r3, pc
008a589a  9a 58                                            ldr r2, [r3, r2]
008a589c  08 32                                            adds r2, #8
008a589e  02 60                                            str r2, [r0]
008a58a0  0c 30                                            adds r0, #0xc
008a58a2  ff f7 75 ff                                      bl #0x8a5790
008a58a6  20 1c                                            adds r0, r4, #0
008a58a8  fe f7 28 f8                                      bl #0x8a38fc
008a58ac  20 1c                                            adds r0, r4, #0
008a58ae  68 f6 00 e5                                      blx #0x30e2b0
008a58b2  20 1c                                            adds r0, r4, #0
008a58b4  10 bd                                            pop {r4, pc}
008a58b6  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008a58b8  fc f1 0e 00 f0 3c 00 00                          .byte 0xfc, 0xf1, 0x0e, 0x00, 0xf0, 0x3c, 0x00, 0x00

; FUNCTION 0x008a9d00, declared_size=104, range_size=104, mode=thumb
; class-group: std::time_get<char, std::istreambuf_iterator<char, std::char_traits<char> > >
; alias: _ZNKSt8time_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE16do_get_monthnameES3_S3_RSt8ios_baseRiP2tm
; demangled: std::time_get<char, std::istreambuf_iterator<char, std::char_traits<char> > >::do_get_monthname(std::istreambuf_iterator<char, std::char_traits<char> >, std::istreambuf_iterator<char, std::char_traits<char> >, std::ios_base&, int&, tm*) const
; decoder-mode: thumb
008a9d00  70 b5                                            push {r4, r5, r6, lr}
008a9d02  04 1c                                            adds r4, r0, #0
008a9d04  ea 20                                            movs r0, #0xea
008a9d06  82 b0                                            sub sp, #8
008a9d08  40 00                                            lsls r0, r0, #1
008a9d0a  00 92                                            str r2, [sp]
008a9d0c  0a 18                                            adds r2, r1, r0
008a9d0e  15 48                                            ldr r0, [pc, #0x54]
008a9d10  01 93                                            str r3, [sp, #4]
008a9d12  09 9e                                            ldr r6, [sp, #0x24]
008a9d14  0b 18                                            adds r3, r1, r0
008a9d16  68 46                                            mov r0, sp
008a9d18  06 a9                                            add r1, sp, #0x18
008a9d1a  ff f7 33 ff                                      bl #0x8a9b84
008a9d1e  18 28                                            cmp r0, #0x18
008a9d20  12 d0                                            beq #0x8a9d48
008a9d22  0c 21                                            movs r1, #0xc
008a9d24  64 f6 02 e7                                      blx #0x30eb2c
008a9d28  0a 9b                                            ldr r3, [sp, #0x28]
008a9d2a  19 61                                            str r1, [r3, #0x10]
008a9d2c  00 23                                            movs r3, #0
008a9d2e  33 60                                            str r3, [r6]
008a9d30  00 9b                                            ldr r3, [sp]
008a9d32  20 1c                                            adds r0, r4, #0
008a9d34  23 60                                            str r3, [r4]
008a9d36  01 ab                                            add r3, sp, #4
008a9d38  1b 88                                            ldrh r3, [r3]
008a9d3a  a3 80                                            strh r3, [r4, #4]
008a9d3c  6b 46                                            mov r3, sp
008a9d3e  06 33                                            adds r3, #6
008a9d40  1b 78                                            ldrb r3, [r3]
008a9d42  02 b0                                            add sp, #8
008a9d44  a3 71                                            strb r3, [r4, #6]
008a9d46  70 bd                                            pop {r4, r5, r6, pc}
008a9d48  04 23                                            movs r3, #4
008a9d4a  33 60                                            str r3, [r6]
008a9d4c  68 46                                            mov r0, sp
008a9d4e  06 a9                                            add r1, sp, #0x18
008a9d50  ff f7 4a fc                                      bl #0x8a95e8
008a9d54  00 28                                            cmp r0, #0
008a9d56  eb d0                                            beq #0x8a9d30
008a9d58  32 68                                            ldr r2, [r6]
008a9d5a  02 23                                            movs r3, #2
008a9d5c  13 43                                            orrs r3, r2
008a9d5e  33 60                                            str r3, [r6]
008a9d60  e6 e7                                            b #0x8a9d30
008a9d62  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008a9d64  14 04 00 00                                      .byte 0x14, 0x04, 0x00, 0x00

; FUNCTION 0x008a9d68, declared_size=98, range_size=98, mode=thumb
; class-group: std::time_get<char, std::istreambuf_iterator<char, std::char_traits<char> > >
; alias: _ZNKSt8time_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE14do_get_weekdayES3_S3_RSt8ios_baseRiP2tm
; demangled: std::time_get<char, std::istreambuf_iterator<char, std::char_traits<char> > >::do_get_weekday(std::istreambuf_iterator<char, std::char_traits<char> >, std::istreambuf_iterator<char, std::char_traits<char> >, std::ios_base&, int&, tm*) const
; decoder-mode: thumb
008a9d68  70 b5                                            push {r4, r5, r6, lr}
008a9d6a  82 b0                                            sub sp, #8
008a9d6c  04 1c                                            adds r4, r0, #0
008a9d6e  ea 20                                            movs r0, #0xea
008a9d70  40 00                                            lsls r0, r0, #1
008a9d72  00 92                                            str r2, [sp]
008a9d74  0a 1c                                            adds r2, r1, #0
008a9d76  01 93                                            str r3, [sp, #4]
008a9d78  84 32                                            adds r2, #0x84
008a9d7a  0b 18                                            adds r3, r1, r0
008a9d7c  68 46                                            mov r0, sp
008a9d7e  06 a9                                            add r1, sp, #0x18
008a9d80  09 9e                                            ldr r6, [sp, #0x24]
008a9d82  ff f7 ff fe                                      bl #0x8a9b84
008a9d86  0e 28                                            cmp r0, #0xe
008a9d88  12 d0                                            beq #0x8a9db0
008a9d8a  07 21                                            movs r1, #7
008a9d8c  64 f6 ce e6                                      blx #0x30eb2c
008a9d90  0a 9b                                            ldr r3, [sp, #0x28]
008a9d92  99 61                                            str r1, [r3, #0x18]
008a9d94  00 23                                            movs r3, #0
008a9d96  33 60                                            str r3, [r6]
008a9d98  00 9b                                            ldr r3, [sp]
008a9d9a  20 1c                                            adds r0, r4, #0
008a9d9c  23 60                                            str r3, [r4]
008a9d9e  01 ab                                            add r3, sp, #4
008a9da0  1b 88                                            ldrh r3, [r3]
008a9da2  a3 80                                            strh r3, [r4, #4]
008a9da4  6b 46                                            mov r3, sp
008a9da6  06 33                                            adds r3, #6
008a9da8  1b 78                                            ldrb r3, [r3]
008a9daa  02 b0                                            add sp, #8
008a9dac  a3 71                                            strb r3, [r4, #6]
008a9dae  70 bd                                            pop {r4, r5, r6, pc}
008a9db0  04 23                                            movs r3, #4
008a9db2  33 60                                            str r3, [r6]
008a9db4  68 46                                            mov r0, sp
008a9db6  06 a9                                            add r1, sp, #0x18
008a9db8  ff f7 16 fc                                      bl #0x8a95e8
008a9dbc  00 28                                            cmp r0, #0
008a9dbe  eb d0                                            beq #0x8a9d98
008a9dc0  32 68                                            ldr r2, [r6]
008a9dc2  02 23                                            movs r3, #2
008a9dc4  13 43                                            orrs r3, r2
008a9dc6  33 60                                            str r3, [r6]
008a9dc8  e6 e7                                            b #0x8a9d98

; FUNCTION 0x008ae810, declared_size=208, range_size=208, mode=thumb
; class-group: std::time_get<char, std::istreambuf_iterator<char, std::char_traits<char> > >
; alias: _ZNKSt8time_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE11do_get_yearES3_S3_RSt8ios_baseRiP2tm
; demangled: std::time_get<char, std::istreambuf_iterator<char, std::char_traits<char> > >::do_get_year(std::istreambuf_iterator<char, std::char_traits<char> >, std::istreambuf_iterator<char, std::char_traits<char> >, std::ios_base&, int&, tm*) const
; decoder-mode: thumb
008ae810  f0 b5                                            push {r4, r5, r6, r7, lr}
008ae812  83 b0                                            sub sp, #0xc
008ae814  05 1c                                            adds r5, r0, #0
008ae816  10 1c                                            adds r0, r2, #0
008ae818  6c 46                                            mov r4, sp
008ae81a  00 92                                            str r2, [sp]
008ae81c  01 93                                            str r3, [sp, #4]
008ae81e  0b 9e                                            ldr r6, [sp, #0x2c]
008ae820  0c 9f                                            ldr r7, [sp, #0x30]
008ae822  00 28                                            cmp r0, #0
008ae824  0e d0                                            beq #0x8ae844
008ae826  a3 79                                            ldrb r3, [r4, #6]
008ae828  00 2b                                            cmp r3, #0
008ae82a  0b d1                                            bne #0x8ae844
008ae82c  83 68                                            ldr r3, [r0, #8]
008ae82e  c2 68                                            ldr r2, [r0, #0xc]
008ae830  93 42                                            cmp r3, r2
008ae832  4f d2                                            bhs #0x8ae8d4
008ae834  18 78                                            ldrb r0, [r3]
008ae836  20 71                                            strb r0, [r4, #4]
008ae838  01 30                                            adds r0, #1
008ae83a  43 42                                            rsbs r3, r0, #0
008ae83c  43 41                                            adcs r3, r0
008ae83e  63 71                                            strb r3, [r4, #5]
008ae840  01 23                                            movs r3, #1
008ae842  a3 71                                            strb r3, [r4, #6]
008ae844  08 98                                            ldr r0, [sp, #0x20]
008ae846  00 28                                            cmp r0, #0
008ae848  2d d0                                            beq #0x8ae8a6
008ae84a  08 ab                                            add r3, sp, #0x20
008ae84c  9b 79                                            ldrb r3, [r3, #6]
008ae84e  00 2b                                            cmp r3, #0
008ae850  29 d1                                            bne #0x8ae8a6
008ae852  83 68                                            ldr r3, [r0, #8]
008ae854  c2 68                                            ldr r2, [r0, #0xc]
008ae856  93 42                                            cmp r3, r2
008ae858  38 d2                                            bhs #0x8ae8cc
008ae85a  18 78                                            ldrb r0, [r3]
008ae85c  08 aa                                            add r2, sp, #0x20
008ae85e  10 71                                            strb r0, [r2, #4]
008ae860  01 30                                            adds r0, #1
008ae862  43 42                                            rsbs r3, r0, #0
008ae864  43 41                                            adcs r3, r0
008ae866  01 21                                            movs r1, #1
008ae868  53 71                                            strb r3, [r2, #5]
008ae86a  91 71                                            strb r1, [r2, #6]
008ae86c  62 79                                            ldrb r2, [r4, #5]
008ae86e  9a 42                                            cmp r2, r3
008ae870  1e d0                                            beq #0x8ae8b0
008ae872  3a 1c                                            adds r2, r7, #0
008ae874  14 32                                            adds r2, #0x14
008ae876  08 a9                                            add r1, sp, #0x20
008ae878  00 23                                            movs r3, #0
008ae87a  68 46                                            mov r0, sp
008ae87c  fb f7 ee fd                                      bl #0x8aa45c
008ae880  7b 69                                            ldr r3, [r7, #0x14]
008ae882  16 4a                                            ldr r2, [pc, #0x58]
008ae884  08 a9                                            add r1, sp, #0x20
008ae886  9b 18                                            adds r3, r3, r2
008ae888  7b 61                                            str r3, [r7, #0x14]
008ae88a  43 42                                            rsbs r3, r0, #0
008ae88c  43 41                                            adcs r3, r0
008ae88e  9b 00                                            lsls r3, r3, #2
008ae890  33 60                                            str r3, [r6]
008ae892  68 46                                            mov r0, sp
008ae894  fa f7 a8 fe                                      bl #0x8a95e8
008ae898  00 28                                            cmp r0, #0
008ae89a  0b d0                                            beq #0x8ae8b4
008ae89c  32 68                                            ldr r2, [r6]
008ae89e  02 23                                            movs r3, #2
008ae8a0  13 43                                            orrs r3, r2
008ae8a2  33 60                                            str r3, [r6]
008ae8a4  06 e0                                            b #0x8ae8b4
008ae8a6  08 ab                                            add r3, sp, #0x20
008ae8a8  5b 79                                            ldrb r3, [r3, #5]
008ae8aa  62 79                                            ldrb r2, [r4, #5]
008ae8ac  9a 42                                            cmp r2, r3
008ae8ae  e0 d1                                            bne #0x8ae872
008ae8b0  06 23                                            movs r3, #6
008ae8b2  33 60                                            str r3, [r6]
008ae8b4  00 9b                                            ldr r3, [sp]
008ae8b6  28 1c                                            adds r0, r5, #0
008ae8b8  2b 60                                            str r3, [r5]
008ae8ba  01 ab                                            add r3, sp, #4
008ae8bc  1b 88                                            ldrh r3, [r3]
008ae8be  ab 80                                            strh r3, [r5, #4]
008ae8c0  6b 46                                            mov r3, sp
008ae8c2  06 33                                            adds r3, #6
008ae8c4  1b 78                                            ldrb r3, [r3]
008ae8c6  03 b0                                            add sp, #0xc
008ae8c8  ab 71                                            strb r3, [r5, #6]
008ae8ca  f0 bd                                            pop {r4, r5, r6, r7, pc}
008ae8cc  03 68                                            ldr r3, [r0]
008ae8ce  1b 6a                                            ldr r3, [r3, #0x20]
008ae8d0  98 47                                            blx r3
008ae8d2  c3 e7                                            b #0x8ae85c
008ae8d4  03 68                                            ldr r3, [r0]
008ae8d6  1b 6a                                            ldr r3, [r3, #0x20]
008ae8d8  98 47                                            blx r3
008ae8da  ac e7                                            b #0x8ae836
; mapping-symbol data/literal pool
008ae8dc  94 f8 ff ff                                      .byte 0x94, 0xf8, 0xff, 0xff

; FUNCTION 0x008af4e8, declared_size=236, range_size=236, mode=thumb
; class-group: std::time_get<char, std::istreambuf_iterator<char, std::char_traits<char> > >
; alias: _ZNKSt8time_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE11do_get_timeES3_S3_RSt8ios_baseRiP2tm
; demangled: std::time_get<char, std::istreambuf_iterator<char, std::char_traits<char> > >::do_get_time(std::istreambuf_iterator<char, std::char_traits<char> >, std::istreambuf_iterator<char, std::char_traits<char> >, std::ios_base&, int&, tm*) const
; decoder-mode: thumb
008af4e8  f0 b5                                            push {r4, r5, r6, r7, lr}
008af4ea  5f 46                                            mov r7, fp
008af4ec  56 46                                            mov r6, sl
008af4ee  4d 46                                            mov r5, sb
008af4f0  44 46                                            mov r4, r8
008af4f2  f0 b4                                            push {r4, r5, r6, r7}
008af4f4  8d b0                                            sub sp, #0x34
008af4f6  04 1c                                            adds r4, r0, #0
008af4f8  08 1c                                            adds r0, r1, #0
008af4fa  0a a9                                            add r1, sp, #0x28
008af4fc  4b 60                                            str r3, [r1, #4]
008af4fe  0a 92                                            str r2, [sp, #0x28]
008af500  0b 79                                            ldrb r3, [r1, #4]
008af502  15 1c                                            adds r5, r2, #0
008af504  4a 79                                            ldrb r2, [r1, #5]
008af506  08 93                                            str r3, [sp, #0x20]
008af508  16 ab                                            add r3, sp, #0x58
008af50a  90 46                                            mov r8, r2
008af50c  8a 79                                            ldrb r2, [r1, #6]
008af50e  19 9e                                            ldr r6, [sp, #0x64]
008af510  16 9f                                            ldr r7, [sp, #0x58]
008af512  91 46                                            mov sb, r2
008af514  5a 79                                            ldrb r2, [r3, #5]
008af516  9b 79                                            ldrb r3, [r3, #6]
008af518  93 46                                            mov fp, r2
008af51a  09 93                                            str r3, [sp, #0x24]
008af51c  c3 69                                            ldr r3, [r0, #0x1c]
008af51e  9a 46                                            mov sl, r3
008af520  03 6a                                            ldr r3, [r0, #0x20]
008af522  52 46                                            mov r2, sl
008af524  0c 30                                            adds r0, #0xc
008af526  00 93                                            str r3, [sp]
008af528  00 23                                            movs r3, #0
008af52a  02 93                                            str r3, [sp, #8]
008af52c  18 9b                                            ldr r3, [sp, #0x60]
008af52e  01 92                                            str r2, [sp, #4]
008af530  03 90                                            str r0, [sp, #0xc]
008af532  04 93                                            str r3, [sp, #0x10]
008af534  1a 9b                                            ldr r3, [sp, #0x68]
008af536  05 96                                            str r6, [sp, #0x14]
008af538  28 1c                                            adds r0, r5, #0
008af53a  06 93                                            str r3, [sp, #0x18]
008af53c  49 68                                            ldr r1, [r1, #4]
008af53e  17 9b                                            ldr r3, [sp, #0x5c]
008af540  3a 1c                                            adds r2, r7, #0
008af542  fb f7 59 f8                                      bl #0x8aa5f8
008af546  53 46                                            mov r3, sl
008af548  c0 1a                                            subs r0, r0, r3
008af54a  43 1e                                            subs r3, r0, #1
008af54c  98 41                                            sbcs r0, r3
008af54e  80 00                                            lsls r0, r0, #2
008af550  30 60                                            str r0, [r6]
008af552  00 2d                                            cmp r5, #0
008af554  10 d0                                            beq #0x8af578
008af556  4a 46                                            mov r2, sb
008af558  00 2a                                            cmp r2, #0
008af55a  0d d1                                            bne #0x8af578
008af55c  ab 68                                            ldr r3, [r5, #8]
008af55e  ea 68                                            ldr r2, [r5, #0xc]
008af560  93 42                                            cmp r3, r2
008af562  32 d2                                            bhs #0x8af5ca
008af564  18 78                                            ldrb r0, [r3]
008af566  03 06                                            lsls r3, r0, #0x18
008af568  1b 0e                                            lsrs r3, r3, #0x18
008af56a  01 30                                            adds r0, #1
008af56c  08 93                                            str r3, [sp, #0x20]
008af56e  01 22                                            movs r2, #1
008af570  43 42                                            rsbs r3, r0, #0
008af572  43 41                                            adcs r3, r0
008af574  98 46                                            mov r8, r3
008af576  91 46                                            mov sb, r2
008af578  00 2f                                            cmp r7, #0
008af57a  0b d0                                            beq #0x8af594
008af57c  09 9b                                            ldr r3, [sp, #0x24]
008af57e  00 2b                                            cmp r3, #0
008af580  08 d1                                            bne #0x8af594
008af582  bb 68                                            ldr r3, [r7, #8]
008af584  fa 68                                            ldr r2, [r7, #0xc]
008af586  93 42                                            cmp r3, r2
008af588  1a d2                                            bhs #0x8af5c0
008af58a  18 78                                            ldrb r0, [r3]
008af58c  01 30                                            adds r0, #1
008af58e  42 42                                            rsbs r2, r0, #0
008af590  42 41                                            adcs r2, r0
008af592  93 46                                            mov fp, r2
008af594  c3 45                                            cmp fp, r8
008af596  03 d1                                            bne #0x8af5a0
008af598  32 68                                            ldr r2, [r6]
008af59a  02 23                                            movs r3, #2
008af59c  13 43                                            orrs r3, r2
008af59e  33 60                                            str r3, [r6]
008af5a0  43 46                                            mov r3, r8
008af5a2  63 71                                            strb r3, [r4, #5]
008af5a4  08 aa                                            add r2, sp, #0x20
008af5a6  12 78                                            ldrb r2, [r2]
008af5a8  4b 46                                            mov r3, sb
008af5aa  0d b0                                            add sp, #0x34
008af5ac  25 60                                            str r5, [r4]
008af5ae  20 1c                                            adds r0, r4, #0
008af5b0  22 71                                            strb r2, [r4, #4]
008af5b2  a3 71                                            strb r3, [r4, #6]
008af5b4  3c bc                                            pop {r2, r3, r4, r5}
008af5b6  90 46                                            mov r8, r2
008af5b8  99 46                                            mov sb, r3
008af5ba  a2 46                                            mov sl, r4
008af5bc  ab 46                                            mov fp, r5
008af5be  f0 bd                                            pop {r4, r5, r6, r7, pc}
008af5c0  3b 68                                            ldr r3, [r7]
008af5c2  38 1c                                            adds r0, r7, #0
008af5c4  1b 6a                                            ldr r3, [r3, #0x20]
008af5c6  98 47                                            blx r3
008af5c8  e0 e7                                            b #0x8af58c
008af5ca  2b 68                                            ldr r3, [r5]
008af5cc  28 1c                                            adds r0, r5, #0
008af5ce  1b 6a                                            ldr r3, [r3, #0x20]
008af5d0  98 47                                            blx r3
008af5d2  c8 e7                                            b #0x8af566

; FUNCTION 0x008b31f0, declared_size=238, range_size=238, mode=thumb
; class-group: std::time_get<char, std::istreambuf_iterator<char, std::char_traits<char> > >
; alias: _ZNKSt8time_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE11do_get_dateES3_S3_RSt8ios_baseRiP2tm
; demangled: std::time_get<char, std::istreambuf_iterator<char, std::char_traits<char> > >::do_get_date(std::istreambuf_iterator<char, std::char_traits<char> >, std::istreambuf_iterator<char, std::char_traits<char> >, std::ios_base&, int&, tm*) const
; decoder-mode: thumb
008b31f0  f0 b5                                            push {r4, r5, r6, r7, lr}
008b31f2  5f 46                                            mov r7, fp
008b31f4  56 46                                            mov r6, sl
008b31f6  4d 46                                            mov r5, sb
008b31f8  44 46                                            mov r4, r8
008b31fa  f0 b4                                            push {r4, r5, r6, r7}
008b31fc  8d b0                                            sub sp, #0x34
008b31fe  04 1c                                            adds r4, r0, #0
008b3200  08 1c                                            adds r0, r1, #0
008b3202  0a a9                                            add r1, sp, #0x28
008b3204  4b 60                                            str r3, [r1, #4]
008b3206  0a 92                                            str r2, [sp, #0x28]
008b3208  15 1c                                            adds r5, r2, #0
008b320a  4a 79                                            ldrb r2, [r1, #5]
008b320c  0b 79                                            ldrb r3, [r1, #4]
008b320e  19 9e                                            ldr r6, [sp, #0x64]
008b3210  90 46                                            mov r8, r2
008b3212  8a 79                                            ldrb r2, [r1, #6]
008b3214  9b 46                                            mov fp, r3
008b3216  16 ab                                            add r3, sp, #0x58
008b3218  92 46                                            mov sl, r2
008b321a  5a 79                                            ldrb r2, [r3, #5]
008b321c  16 9f                                            ldr r7, [sp, #0x58]
008b321e  08 92                                            str r2, [sp, #0x20]
008b3220  9b 79                                            ldrb r3, [r3, #6]
008b3222  09 93                                            str r3, [sp, #0x24]
008b3224  43 6b                                            ldr r3, [r0, #0x34]
008b3226  99 46                                            mov sb, r3
008b3228  83 6b                                            ldr r3, [r0, #0x38]
008b322a  4a 46                                            mov r2, sb
008b322c  0c 30                                            adds r0, #0xc
008b322e  00 93                                            str r3, [sp]
008b3230  00 23                                            movs r3, #0
008b3232  02 93                                            str r3, [sp, #8]
008b3234  18 9b                                            ldr r3, [sp, #0x60]
008b3236  01 92                                            str r2, [sp, #4]
008b3238  03 90                                            str r0, [sp, #0xc]
008b323a  04 93                                            str r3, [sp, #0x10]
008b323c  1a 9b                                            ldr r3, [sp, #0x68]
008b323e  05 96                                            str r6, [sp, #0x14]
008b3240  28 1c                                            adds r0, r5, #0
008b3242  06 93                                            str r3, [sp, #0x18]
008b3244  49 68                                            ldr r1, [r1, #4]
008b3246  3a 1c                                            adds r2, r7, #0
008b3248  17 9b                                            ldr r3, [sp, #0x5c]
008b324a  f7 f7 d5 f9                                      bl #0x8aa5f8
008b324e  48 45                                            cmp r0, sb
008b3250  38 d0                                            beq #0x8b32c4
008b3252  04 23                                            movs r3, #4
008b3254  33 60                                            str r3, [r6]
008b3256  00 2d                                            cmp r5, #0
008b3258  10 d0                                            beq #0x8b327c
008b325a  53 46                                            mov r3, sl
008b325c  00 2b                                            cmp r3, #0
008b325e  0d d1                                            bne #0x8b327c
008b3260  ab 68                                            ldr r3, [r5, #8]
008b3262  ea 68                                            ldr r2, [r5, #0xc]
008b3264  93 42                                            cmp r3, r2
008b3266  35 d2                                            bhs #0x8b32d4
008b3268  18 78                                            ldrb r0, [r3]
008b326a  03 06                                            lsls r3, r0, #0x18
008b326c  1b 0e                                            lsrs r3, r3, #0x18
008b326e  01 30                                            adds r0, #1
008b3270  9b 46                                            mov fp, r3
008b3272  42 42                                            rsbs r2, r0, #0
008b3274  42 41                                            adcs r2, r0
008b3276  01 23                                            movs r3, #1
008b3278  90 46                                            mov r8, r2
008b327a  9a 46                                            mov sl, r3
008b327c  00 2f                                            cmp r7, #0
008b327e  0b d0                                            beq #0x8b3298
008b3280  09 9a                                            ldr r2, [sp, #0x24]
008b3282  00 2a                                            cmp r2, #0
008b3284  08 d1                                            bne #0x8b3298
008b3286  bb 68                                            ldr r3, [r7, #8]
008b3288  fa 68                                            ldr r2, [r7, #0xc]
008b328a  93 42                                            cmp r3, r2
008b328c  1d d2                                            bhs #0x8b32ca
008b328e  18 78                                            ldrb r0, [r3]
008b3290  01 30                                            adds r0, #1
008b3292  43 42                                            rsbs r3, r0, #0
008b3294  43 41                                            adcs r3, r0
008b3296  08 93                                            str r3, [sp, #0x20]
008b3298  08 9a                                            ldr r2, [sp, #0x20]
008b329a  42 45                                            cmp r2, r8
008b329c  03 d1                                            bne #0x8b32a6
008b329e  32 68                                            ldr r2, [r6]
008b32a0  02 23                                            movs r3, #2
008b32a2  13 43                                            orrs r3, r2
008b32a4  33 60                                            str r3, [r6]
008b32a6  43 46                                            mov r3, r8
008b32a8  5a 46                                            mov r2, fp
008b32aa  63 71                                            strb r3, [r4, #5]
008b32ac  0d b0                                            add sp, #0x34
008b32ae  53 46                                            mov r3, sl
008b32b0  25 60                                            str r5, [r4]
008b32b2  20 1c                                            adds r0, r4, #0
008b32b4  22 71                                            strb r2, [r4, #4]
008b32b6  a3 71                                            strb r3, [r4, #6]
008b32b8  3c bc                                            pop {r2, r3, r4, r5}
008b32ba  90 46                                            mov r8, r2
008b32bc  99 46                                            mov sb, r3
008b32be  a2 46                                            mov sl, r4
008b32c0  ab 46                                            mov fp, r5
008b32c2  f0 bd                                            pop {r4, r5, r6, r7, pc}
008b32c4  00 22                                            movs r2, #0
008b32c6  32 60                                            str r2, [r6]
008b32c8  ed e7                                            b #0x8b32a6
008b32ca  3b 68                                            ldr r3, [r7]
008b32cc  38 1c                                            adds r0, r7, #0
008b32ce  1b 6a                                            ldr r3, [r3, #0x20]
008b32d0  98 47                                            blx r3
008b32d2  dd e7                                            b #0x8b3290
008b32d4  2b 68                                            ldr r3, [r5]
008b32d6  28 1c                                            adds r0, r5, #0
008b32d8  1b 6a                                            ldr r3, [r3, #0x20]
008b32da  98 47                                            blx r3
008b32dc  c5 e7                                            b #0x8b326a

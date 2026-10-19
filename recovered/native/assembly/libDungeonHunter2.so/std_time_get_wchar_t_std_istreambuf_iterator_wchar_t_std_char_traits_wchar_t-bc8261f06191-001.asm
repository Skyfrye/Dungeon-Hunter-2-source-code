; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008a4a60, declared_size=12, range_size=12, mode=thumb
; class-group: std::time_get<wchar_t, std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> > >
; alias: _ZNKSt8time_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE13do_date_orderEv
; demangled: std::time_get<wchar_t, std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> > >::do_date_order() const
; decoder-mode: thumb
008a4a60  01 4b                                            ldr r3, [pc, #4]
008a4a62  c0 58                                            ldr r0, [r0, r3]
008a4a64  70 47                                            bx lr
008a4a66  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008a4a68  c4 0b 00 00                                      .byte 0xc4, 0x0b, 0x00, 0x00

; FUNCTION 0x008a5630, declared_size=40, range_size=40, mode=thumb
; class-group: std::time_get<wchar_t, std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> > >
; alias: _ZNSt8time_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEED1Ev
; demangled: std::time_get<wchar_t, std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> > >::~time_get()
; decoder-mode: thumb
008a5630  10 b5                                            push {r4, lr}
008a5632  07 4b                                            ldr r3, [pc, #0x1c]
008a5634  07 4a                                            ldr r2, [pc, #0x1c]
008a5636  04 1c                                            adds r4, r0, #0
008a5638  7b 44                                            add r3, pc
008a563a  9a 58                                            ldr r2, [r3, r2]
008a563c  08 32                                            adds r2, #8
008a563e  02 60                                            str r2, [r0]
008a5640  0c 30                                            adds r0, #0xc
008a5642  ff f7 c5 ff                                      bl #0x8a55d0
008a5646  20 1c                                            adds r0, r4, #0
008a5648  fe f7 58 f9                                      bl #0x8a38fc
008a564c  20 1c                                            adds r0, r4, #0
008a564e  10 bd                                            pop {r4, pc}
; mapping-symbol data/literal pool
008a5650  5c f4 0e 00 b0 36 00 00                          .byte 0x5c, 0xf4, 0x0e, 0x00, 0xb0, 0x36, 0x00, 0x00

; FUNCTION 0x008a5700, declared_size=48, range_size=48, mode=thumb
; class-group: std::time_get<wchar_t, std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> > >
; alias: _ZNSt8time_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEED0Ev
; demangled: std::time_get<wchar_t, std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> > >::~time_get()
; decoder-mode: thumb
008a5700  10 b5                                            push {r4, lr}
008a5702  09 4b                                            ldr r3, [pc, #0x24]
008a5704  09 4a                                            ldr r2, [pc, #0x24]
008a5706  04 1c                                            adds r4, r0, #0
008a5708  7b 44                                            add r3, pc
008a570a  9a 58                                            ldr r2, [r3, r2]
008a570c  08 32                                            adds r2, #8
008a570e  02 60                                            str r2, [r0]
008a5710  0c 30                                            adds r0, #0xc
008a5712  ff f7 5d ff                                      bl #0x8a55d0
008a5716  20 1c                                            adds r0, r4, #0
008a5718  fe f7 f0 f8                                      bl #0x8a38fc
008a571c  20 1c                                            adds r0, r4, #0
008a571e  68 f6 c8 e5                                      blx #0x30e2b0
008a5722  20 1c                                            adds r0, r4, #0
008a5724  10 bd                                            pop {r4, pc}
008a5726  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008a5728  8c f3 0e 00 b0 36 00 00                          .byte 0x8c, 0xf3, 0x0e, 0x00, 0xb0, 0x36, 0x00, 0x00

; FUNCTION 0x008aaa98, declared_size=108, range_size=108, mode=thumb
; class-group: std::time_get<wchar_t, std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> > >
; alias: _ZNKSt8time_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE16do_get_monthnameES3_S3_RSt8ios_baseRiP2tm
; demangled: std::time_get<wchar_t, std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> > >::do_get_monthname(std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >, std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >, std::ios_base&, int&, tm*) const
; decoder-mode: thumb
008aaa98  82 b0                                            sub sp, #8
008aaa9a  70 b5                                            push {r4, r5, r6, lr}
008aaa9c  04 1c                                            adds r4, r0, #0
008aaa9e  17 48                                            ldr r0, [pc, #0x5c]
008aaaa0  04 92                                            str r2, [sp, #0x10]
008aaaa2  07 ae                                            add r6, sp, #0x1c
008aaaa4  0a 18                                            adds r2, r1, r0
008aaaa6  16 48                                            ldr r0, [pc, #0x58]
008aaaa8  05 93                                            str r3, [sp, #0x14]
008aaaaa  0b 9d                                            ldr r5, [sp, #0x2c]
008aaaac  0b 18                                            adds r3, r1, r0
008aaaae  04 a8                                            add r0, sp, #0x10
008aaab0  31 1c                                            adds r1, r6, #0
008aaab2  ff f7 2f ff                                      bl #0x8aa914
008aaab6  18 28                                            cmp r0, #0x18
008aaab8  13 d0                                            beq #0x8aaae2
008aaaba  0c 21                                            movs r1, #0xc
008aaabc  64 f6 36 e0                                      blx #0x30eb2c
008aaac0  0c 9b                                            ldr r3, [sp, #0x30]
008aaac2  19 61                                            str r1, [r3, #0x10]
008aaac4  00 23                                            movs r3, #0
008aaac6  2b 60                                            str r3, [r5]
008aaac8  04 aa                                            add r2, sp, #0x10
008aaaca  02 ca                                            ldm r2!, {r1}
008aaacc  23 1c                                            adds r3, r4, #0
008aaace  20 1c                                            adds r0, r4, #0
008aaad0  02 c3                                            stm r3!, {r1}
008aaad2  05 99                                            ldr r1, [sp, #0x14]
008aaad4  61 60                                            str r1, [r4, #4]
008aaad6  92 88                                            ldrh r2, [r2, #4]
008aaad8  9a 80                                            strh r2, [r3, #4]
008aaada  70 bc                                            pop {r4, r5, r6}
008aaadc  08 bc                                            pop {r3}
008aaade  02 b0                                            add sp, #8
008aaae0  18 47                                            bx r3
008aaae2  04 23                                            movs r3, #4
008aaae4  2b 60                                            str r3, [r5]
008aaae6  04 a8                                            add r0, sp, #0x10
008aaae8  31 1c                                            adds r1, r6, #0
008aaaea  ff f7 dd fe                                      bl #0x8aa8a8
008aaaee  00 28                                            cmp r0, #0
008aaaf0  ea d0                                            beq #0x8aaac8
008aaaf2  2a 68                                            ldr r2, [r5]
008aaaf4  02 23                                            movs r3, #2
008aaaf6  13 43                                            orrs r3, r2
008aaaf8  2b 60                                            str r3, [r5]
008aaafa  e5 e7                                            b #0x8aaac8
; mapping-symbol data/literal pool
008aaafc  74 04 00 00 34 0b 00 00                          .byte 0x74, 0x04, 0x00, 0x00, 0x34, 0x0b, 0x00, 0x00

; FUNCTION 0x008aab04, declared_size=104, range_size=104, mode=thumb
; class-group: std::time_get<wchar_t, std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> > >
; alias: _ZNKSt8time_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE14do_get_weekdayES3_S3_RSt8ios_baseRiP2tm
; demangled: std::time_get<wchar_t, std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> > >::do_get_weekday(std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >, std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >, std::ios_base&, int&, tm*) const
; decoder-mode: thumb
008aab04  82 b0                                            sub sp, #8
008aab06  70 b5                                            push {r4, r5, r6, lr}
008aab08  04 1c                                            adds r4, r0, #0
008aab0a  17 48                                            ldr r0, [pc, #0x5c]
008aab0c  04 92                                            str r2, [sp, #0x10]
008aab0e  07 ae                                            add r6, sp, #0x1c
008aab10  0a 1c                                            adds r2, r1, #0
008aab12  05 93                                            str r3, [sp, #0x14]
008aab14  84 32                                            adds r2, #0x84
008aab16  0b 18                                            adds r3, r1, r0
008aab18  04 a8                                            add r0, sp, #0x10
008aab1a  31 1c                                            adds r1, r6, #0
008aab1c  0b 9d                                            ldr r5, [sp, #0x2c]
008aab1e  ff f7 f9 fe                                      bl #0x8aa914
008aab22  0e 28                                            cmp r0, #0xe
008aab24  13 d0                                            beq #0x8aab4e
008aab26  07 21                                            movs r1, #7
008aab28  64 f6 00 e0                                      blx #0x30eb2c
008aab2c  0c 9b                                            ldr r3, [sp, #0x30]
008aab2e  99 61                                            str r1, [r3, #0x18]
008aab30  00 23                                            movs r3, #0
008aab32  2b 60                                            str r3, [r5]
008aab34  04 aa                                            add r2, sp, #0x10
008aab36  02 ca                                            ldm r2!, {r1}
008aab38  23 1c                                            adds r3, r4, #0
008aab3a  20 1c                                            adds r0, r4, #0
008aab3c  02 c3                                            stm r3!, {r1}
008aab3e  05 99                                            ldr r1, [sp, #0x14]
008aab40  61 60                                            str r1, [r4, #4]
008aab42  92 88                                            ldrh r2, [r2, #4]
008aab44  9a 80                                            strh r2, [r3, #4]
008aab46  70 bc                                            pop {r4, r5, r6}
008aab48  08 bc                                            pop {r3}
008aab4a  02 b0                                            add sp, #8
008aab4c  18 47                                            bx r3
008aab4e  04 23                                            movs r3, #4
008aab50  2b 60                                            str r3, [r5]
008aab52  04 a8                                            add r0, sp, #0x10
008aab54  31 1c                                            adds r1, r6, #0
008aab56  ff f7 a7 fe                                      bl #0x8aa8a8
008aab5a  00 28                                            cmp r0, #0
008aab5c  ea d0                                            beq #0x8aab34
008aab5e  2a 68                                            ldr r2, [r5]
008aab60  02 23                                            movs r3, #2
008aab62  13 43                                            orrs r3, r2
008aab64  2b 60                                            str r3, [r5]
008aab66  e5 e7                                            b #0x8aab34
; mapping-symbol data/literal pool
008aab68  74 04 00 00                                      .byte 0x74, 0x04, 0x00, 0x00

; FUNCTION 0x008abdd8, declared_size=212, range_size=212, mode=thumb
; class-group: std::time_get<wchar_t, std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> > >
; alias: _ZNKSt8time_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE11do_get_yearES3_S3_RSt8ios_baseRiP2tm
; demangled: std::time_get<wchar_t, std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> > >::do_get_year(std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >, std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >, std::ios_base&, int&, tm*) const
; decoder-mode: thumb
008abdd8  82 b0                                            sub sp, #8
008abdda  f8 b5                                            push {r3, r4, r5, r6, r7, lr}
008abddc  05 1c                                            adds r5, r0, #0
008abdde  10 1c                                            adds r0, r2, #0
008abde0  06 92                                            str r2, [sp, #0x18]
008abde2  07 93                                            str r3, [sp, #0x1c]
008abde4  0d 9e                                            ldr r6, [sp, #0x34]
008abde6  0e 9f                                            ldr r7, [sp, #0x38]
008abde8  00 28                                            cmp r0, #0
008abdea  10 d0                                            beq #0x8abe0e
008abdec  06 ab                                            add r3, sp, #0x18
008abdee  5b 7a                                            ldrb r3, [r3, #9]
008abdf0  00 2b                                            cmp r3, #0
008abdf2  0c d1                                            bne #0x8abe0e
008abdf4  83 68                                            ldr r3, [r0, #8]
008abdf6  c2 68                                            ldr r2, [r0, #0xc]
008abdf8  93 42                                            cmp r3, r2
008abdfa  51 d2                                            bhs #0x8abea0
008abdfc  18 68                                            ldr r0, [r3]
008abdfe  07 90                                            str r0, [sp, #0x1c]
008abe00  01 30                                            adds r0, #1
008abe02  06 ab                                            add r3, sp, #0x18
008abe04  42 42                                            rsbs r2, r0, #0
008abe06  42 41                                            adcs r2, r0
008abe08  1a 72                                            strb r2, [r3, #8]
008abe0a  01 22                                            movs r2, #1
008abe0c  5a 72                                            strb r2, [r3, #9]
008abe0e  09 98                                            ldr r0, [sp, #0x24]
008abe10  09 ac                                            add r4, sp, #0x24
008abe12  00 28                                            cmp r0, #0
008abe14  2c d0                                            beq #0x8abe70
008abe16  63 7a                                            ldrb r3, [r4, #9]
008abe18  00 2b                                            cmp r3, #0
008abe1a  29 d1                                            bne #0x8abe70
008abe1c  83 68                                            ldr r3, [r0, #8]
008abe1e  c2 68                                            ldr r2, [r0, #0xc]
008abe20  93 42                                            cmp r3, r2
008abe22  39 d2                                            bhs #0x8abe98
008abe24  18 68                                            ldr r0, [r3]
008abe26  60 60                                            str r0, [r4, #4]
008abe28  01 30                                            adds r0, #1
008abe2a  01 22                                            movs r2, #1
008abe2c  43 42                                            rsbs r3, r0, #0
008abe2e  43 41                                            adcs r3, r0
008abe30  62 72                                            strb r2, [r4, #9]
008abe32  23 72                                            strb r3, [r4, #8]
008abe34  06 aa                                            add r2, sp, #0x18
008abe36  12 7a                                            ldrb r2, [r2, #8]
008abe38  9a 42                                            cmp r2, r3
008abe3a  1e d0                                            beq #0x8abe7a
008abe3c  3a 1c                                            adds r2, r7, #0
008abe3e  14 32                                            adds r2, #0x14
008abe40  21 1c                                            adds r1, r4, #0
008abe42  00 23                                            movs r3, #0
008abe44  06 a8                                            add r0, sp, #0x18
008abe46  ff f7 6b f8                                      bl #0x8aaf20
008abe4a  7b 69                                            ldr r3, [r7, #0x14]
008abe4c  16 4a                                            ldr r2, [pc, #0x58]
008abe4e  21 1c                                            adds r1, r4, #0
008abe50  9b 18                                            adds r3, r3, r2
008abe52  7b 61                                            str r3, [r7, #0x14]
008abe54  43 42                                            rsbs r3, r0, #0
008abe56  43 41                                            adcs r3, r0
008abe58  9b 00                                            lsls r3, r3, #2
008abe5a  33 60                                            str r3, [r6]
008abe5c  06 a8                                            add r0, sp, #0x18
008abe5e  fe f7 23 fd                                      bl #0x8aa8a8
008abe62  00 28                                            cmp r0, #0
008abe64  0b d0                                            beq #0x8abe7e
008abe66  32 68                                            ldr r2, [r6]
008abe68  02 23                                            movs r3, #2
008abe6a  13 43                                            orrs r3, r2
008abe6c  33 60                                            str r3, [r6]
008abe6e  06 e0                                            b #0x8abe7e
008abe70  06 aa                                            add r2, sp, #0x18
008abe72  23 7a                                            ldrb r3, [r4, #8]
008abe74  12 7a                                            ldrb r2, [r2, #8]
008abe76  9a 42                                            cmp r2, r3
008abe78  e0 d1                                            bne #0x8abe3c
008abe7a  06 23                                            movs r3, #6
008abe7c  33 60                                            str r3, [r6]
008abe7e  06 aa                                            add r2, sp, #0x18
008abe80  02 ca                                            ldm r2!, {r1}
008abe82  2b 1c                                            adds r3, r5, #0
008abe84  28 1c                                            adds r0, r5, #0
008abe86  02 c3                                            stm r3!, {r1}
008abe88  07 99                                            ldr r1, [sp, #0x1c]
008abe8a  69 60                                            str r1, [r5, #4]
008abe8c  92 88                                            ldrh r2, [r2, #4]
008abe8e  9a 80                                            strh r2, [r3, #4]
008abe90  f8 bc                                            pop {r3, r4, r5, r6, r7}
008abe92  08 bc                                            pop {r3}
008abe94  02 b0                                            add sp, #8
008abe96  18 47                                            bx r3
008abe98  03 68                                            ldr r3, [r0]
008abe9a  1b 6a                                            ldr r3, [r3, #0x20]
008abe9c  98 47                                            blx r3
008abe9e  c2 e7                                            b #0x8abe26
008abea0  03 68                                            ldr r3, [r0]
008abea2  1b 6a                                            ldr r3, [r3, #0x20]
008abea4  98 47                                            blx r3
008abea6  aa e7                                            b #0x8abdfe
; mapping-symbol data/literal pool
008abea8  94 f8 ff ff                                      .byte 0x94, 0xf8, 0xff, 0xff

; FUNCTION 0x008ae718, declared_size=248, range_size=248, mode=thumb
; class-group: std::time_get<wchar_t, std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> > >
; alias: _ZNKSt8time_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE11do_get_timeES3_S3_RSt8ios_baseRiP2tm
; demangled: std::time_get<wchar_t, std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> > >::do_get_time(std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >, std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >, std::ios_base&, int&, tm*) const
; decoder-mode: thumb
008ae718  82 b0                                            sub sp, #8
008ae71a  f0 b5                                            push {r4, r5, r6, r7, lr}
008ae71c  5f 46                                            mov r7, fp
008ae71e  56 46                                            mov r6, sl
008ae720  4d 46                                            mov r5, sb
008ae722  44 46                                            mov r4, r8
008ae724  f0 b4                                            push {r4, r5, r6, r7}
008ae726  8d b0                                            sub sp, #0x34
008ae728  16 92                                            str r2, [sp, #0x58]
008ae72a  17 93                                            str r3, [sp, #0x5c]
008ae72c  15 1c                                            adds r5, r2, #0
008ae72e  1a 1c                                            adds r2, r3, #0
008ae730  16 ab                                            add r3, sp, #0x58
008ae732  04 1c                                            adds r4, r0, #0
008ae734  18 7a                                            ldrb r0, [r3, #8]
008ae736  5b 7a                                            ldrb r3, [r3, #9]
008ae738  90 46                                            mov r8, r2
008ae73a  81 46                                            mov sb, r0
008ae73c  9a 46                                            mov sl, r3
008ae73e  19 ab                                            add r3, sp, #0x64
008ae740  1a 7a                                            ldrb r2, [r3, #8]
008ae742  1d 9e                                            ldr r6, [sp, #0x74]
008ae744  19 9f                                            ldr r7, [sp, #0x64]
008ae746  0a 92                                            str r2, [sp, #0x28]
008ae748  58 7a                                            ldrb r0, [r3, #9]
008ae74a  0b 90                                            str r0, [sp, #0x2c]
008ae74c  ca 69                                            ldr r2, [r1, #0x1c]
008ae74e  93 46                                            mov fp, r2
008ae750  0a 6a                                            ldr r2, [r1, #0x20]
008ae752  58 46                                            mov r0, fp
008ae754  0c 31                                            adds r1, #0xc
008ae756  02 92                                            str r2, [sp, #8]
008ae758  00 22                                            movs r2, #0
008ae75a  04 92                                            str r2, [sp, #0x10]
008ae75c  1c 9a                                            ldr r2, [sp, #0x70]
008ae75e  03 90                                            str r0, [sp, #0xc]
008ae760  05 91                                            str r1, [sp, #0x14]
008ae762  06 92                                            str r2, [sp, #0x18]
008ae764  1e 9a                                            ldr r2, [sp, #0x78]
008ae766  07 96                                            str r6, [sp, #0x1c]
008ae768  28 1c                                            adds r0, r5, #0
008ae76a  08 92                                            str r2, [sp, #0x20]
008ae76c  5a 68                                            ldr r2, [r3, #4]
008ae76e  41 46                                            mov r1, r8
008ae770  00 92                                            str r2, [sp]
008ae772  9b 68                                            ldr r3, [r3, #8]
008ae774  18 9a                                            ldr r2, [sp, #0x60]
008ae776  01 93                                            str r3, [sp, #4]
008ae778  3b 1c                                            adds r3, r7, #0
008ae77a  fc f7 79 ff                                      bl #0x8ab670
008ae77e  5a 46                                            mov r2, fp
008ae780  80 1a                                            subs r0, r0, r2
008ae782  43 1e                                            subs r3, r0, #1
008ae784  98 41                                            sbcs r0, r3
008ae786  80 00                                            lsls r0, r0, #2
008ae788  30 60                                            str r0, [r6]
008ae78a  00 2d                                            cmp r5, #0
008ae78c  0f d0                                            beq #0x8ae7ae
008ae78e  53 46                                            mov r3, sl
008ae790  00 2b                                            cmp r3, #0
008ae792  0c d1                                            bne #0x8ae7ae
008ae794  ab 68                                            ldr r3, [r5, #8]
008ae796  ea 68                                            ldr r2, [r5, #0xc]
008ae798  93 42                                            cmp r3, r2
008ae79a  34 d2                                            bhs #0x8ae806
008ae79c  18 68                                            ldr r0, [r3]
008ae79e  03 1c                                            adds r3, r0, #0
008ae7a0  01 33                                            adds r3, #1
008ae7a2  80 46                                            mov r8, r0
008ae7a4  01 22                                            movs r2, #1
008ae7a6  58 42                                            rsbs r0, r3, #0
008ae7a8  58 41                                            adcs r0, r3
008ae7aa  81 46                                            mov sb, r0
008ae7ac  92 46                                            mov sl, r2
008ae7ae  00 2f                                            cmp r7, #0
008ae7b0  0b d0                                            beq #0x8ae7ca
008ae7b2  0b 9b                                            ldr r3, [sp, #0x2c]
008ae7b4  00 2b                                            cmp r3, #0
008ae7b6  08 d1                                            bne #0x8ae7ca
008ae7b8  bb 68                                            ldr r3, [r7, #8]
008ae7ba  fa 68                                            ldr r2, [r7, #0xc]
008ae7bc  93 42                                            cmp r3, r2
008ae7be  1d d2                                            bhs #0x8ae7fc
008ae7c0  18 68                                            ldr r0, [r3]
008ae7c2  01 30                                            adds r0, #1
008ae7c4  42 42                                            rsbs r2, r0, #0
008ae7c6  42 41                                            adcs r2, r0
008ae7c8  0a 92                                            str r2, [sp, #0x28]
008ae7ca  0a 9b                                            ldr r3, [sp, #0x28]
008ae7cc  4b 45                                            cmp r3, sb
008ae7ce  03 d1                                            bne #0x8ae7d8
008ae7d0  32 68                                            ldr r2, [r6]
008ae7d2  02 23                                            movs r3, #2
008ae7d4  13 43                                            orrs r3, r2
008ae7d6  33 60                                            str r3, [r6]
008ae7d8  48 46                                            mov r0, sb
008ae7da  42 46                                            mov r2, r8
008ae7dc  53 46                                            mov r3, sl
008ae7de  0d b0                                            add sp, #0x34
008ae7e0  20 72                                            strb r0, [r4, #8]
008ae7e2  25 60                                            str r5, [r4]
008ae7e4  20 1c                                            adds r0, r4, #0
008ae7e6  62 60                                            str r2, [r4, #4]
008ae7e8  63 72                                            strb r3, [r4, #9]
008ae7ea  3c bc                                            pop {r2, r3, r4, r5}
008ae7ec  90 46                                            mov r8, r2
008ae7ee  99 46                                            mov sb, r3
008ae7f0  a2 46                                            mov sl, r4
008ae7f2  ab 46                                            mov fp, r5
008ae7f4  f0 bc                                            pop {r4, r5, r6, r7}
008ae7f6  08 bc                                            pop {r3}
008ae7f8  02 b0                                            add sp, #8
008ae7fa  18 47                                            bx r3
008ae7fc  3b 68                                            ldr r3, [r7]
008ae7fe  38 1c                                            adds r0, r7, #0
008ae800  1b 6a                                            ldr r3, [r3, #0x20]
008ae802  98 47                                            blx r3
008ae804  dd e7                                            b #0x8ae7c2
008ae806  2b 68                                            ldr r3, [r5]
008ae808  28 1c                                            adds r0, r5, #0
008ae80a  1b 6a                                            ldr r3, [r3, #0x20]
008ae80c  98 47                                            blx r3
008ae80e  c6 e7                                            b #0x8ae79e

; FUNCTION 0x008b32e0, declared_size=250, range_size=250, mode=thumb
; class-group: std::time_get<wchar_t, std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> > >
; alias: _ZNKSt8time_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE11do_get_dateES3_S3_RSt8ios_baseRiP2tm
; demangled: std::time_get<wchar_t, std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> > >::do_get_date(std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >, std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >, std::ios_base&, int&, tm*) const
; decoder-mode: thumb
008b32e0  82 b0                                            sub sp, #8
008b32e2  f0 b5                                            push {r4, r5, r6, r7, lr}
008b32e4  5f 46                                            mov r7, fp
008b32e6  56 46                                            mov r6, sl
008b32e8  4d 46                                            mov r5, sb
008b32ea  44 46                                            mov r4, r8
008b32ec  f0 b4                                            push {r4, r5, r6, r7}
008b32ee  8d b0                                            sub sp, #0x34
008b32f0  16 92                                            str r2, [sp, #0x58]
008b32f2  17 93                                            str r3, [sp, #0x5c]
008b32f4  15 1c                                            adds r5, r2, #0
008b32f6  1a 1c                                            adds r2, r3, #0
008b32f8  16 ab                                            add r3, sp, #0x58
008b32fa  04 1c                                            adds r4, r0, #0
008b32fc  18 7a                                            ldrb r0, [r3, #8]
008b32fe  5b 7a                                            ldrb r3, [r3, #9]
008b3300  90 46                                            mov r8, r2
008b3302  81 46                                            mov sb, r0
008b3304  9b 46                                            mov fp, r3
008b3306  19 ab                                            add r3, sp, #0x64
008b3308  1a 7a                                            ldrb r2, [r3, #8]
008b330a  1d 9e                                            ldr r6, [sp, #0x74]
008b330c  19 9f                                            ldr r7, [sp, #0x64]
008b330e  0a 92                                            str r2, [sp, #0x28]
008b3310  58 7a                                            ldrb r0, [r3, #9]
008b3312  0b 90                                            str r0, [sp, #0x2c]
008b3314  4a 6b                                            ldr r2, [r1, #0x34]
008b3316  92 46                                            mov sl, r2
008b3318  8a 6b                                            ldr r2, [r1, #0x38]
008b331a  50 46                                            mov r0, sl
008b331c  0c 31                                            adds r1, #0xc
008b331e  02 92                                            str r2, [sp, #8]
008b3320  00 22                                            movs r2, #0
008b3322  04 92                                            str r2, [sp, #0x10]
008b3324  1c 9a                                            ldr r2, [sp, #0x70]
008b3326  03 90                                            str r0, [sp, #0xc]
008b3328  05 91                                            str r1, [sp, #0x14]
008b332a  06 92                                            str r2, [sp, #0x18]
008b332c  1e 9a                                            ldr r2, [sp, #0x78]
008b332e  07 96                                            str r6, [sp, #0x1c]
008b3330  28 1c                                            adds r0, r5, #0
008b3332  08 92                                            str r2, [sp, #0x20]
008b3334  5a 68                                            ldr r2, [r3, #4]
008b3336  41 46                                            mov r1, r8
008b3338  00 92                                            str r2, [sp]
008b333a  9b 68                                            ldr r3, [r3, #8]
008b333c  18 9a                                            ldr r2, [sp, #0x60]
008b333e  01 93                                            str r3, [sp, #4]
008b3340  3b 1c                                            adds r3, r7, #0
008b3342  f8 f7 95 f9                                      bl #0x8ab670
008b3346  50 45                                            cmp r0, sl
008b3348  3a d0                                            beq #0x8b33c0
008b334a  04 23                                            movs r3, #4
008b334c  33 60                                            str r3, [r6]
008b334e  00 2d                                            cmp r5, #0
008b3350  0f d0                                            beq #0x8b3372
008b3352  58 46                                            mov r0, fp
008b3354  00 28                                            cmp r0, #0
008b3356  0c d1                                            bne #0x8b3372
008b3358  ab 68                                            ldr r3, [r5, #8]
008b335a  ea 68                                            ldr r2, [r5, #0xc]
008b335c  93 42                                            cmp r3, r2
008b335e  37 d2                                            bhs #0x8b33d0
008b3360  18 68                                            ldr r0, [r3]
008b3362  03 1c                                            adds r3, r0, #0
008b3364  01 33                                            adds r3, #1
008b3366  5a 42                                            rsbs r2, r3, #0
008b3368  5a 41                                            adcs r2, r3
008b336a  01 23                                            movs r3, #1
008b336c  80 46                                            mov r8, r0
008b336e  91 46                                            mov sb, r2
008b3370  9b 46                                            mov fp, r3
008b3372  00 2f                                            cmp r7, #0
008b3374  0b d0                                            beq #0x8b338e
008b3376  0b 98                                            ldr r0, [sp, #0x2c]
008b3378  00 28                                            cmp r0, #0
008b337a  08 d1                                            bne #0x8b338e
008b337c  bb 68                                            ldr r3, [r7, #8]
008b337e  fa 68                                            ldr r2, [r7, #0xc]
008b3380  93 42                                            cmp r3, r2
008b3382  20 d2                                            bhs #0x8b33c6
008b3384  18 68                                            ldr r0, [r3]
008b3386  01 30                                            adds r0, #1
008b3388  42 42                                            rsbs r2, r0, #0
008b338a  42 41                                            adcs r2, r0
008b338c  0a 92                                            str r2, [sp, #0x28]
008b338e  0a 9b                                            ldr r3, [sp, #0x28]
008b3390  4b 45                                            cmp r3, sb
008b3392  03 d1                                            bne #0x8b339c
008b3394  32 68                                            ldr r2, [r6]
008b3396  02 23                                            movs r3, #2
008b3398  13 43                                            orrs r3, r2
008b339a  33 60                                            str r3, [r6]
008b339c  48 46                                            mov r0, sb
008b339e  42 46                                            mov r2, r8
008b33a0  5b 46                                            mov r3, fp
008b33a2  0d b0                                            add sp, #0x34
008b33a4  20 72                                            strb r0, [r4, #8]
008b33a6  25 60                                            str r5, [r4]
008b33a8  20 1c                                            adds r0, r4, #0
008b33aa  62 60                                            str r2, [r4, #4]
008b33ac  63 72                                            strb r3, [r4, #9]
008b33ae  3c bc                                            pop {r2, r3, r4, r5}
008b33b0  90 46                                            mov r8, r2
008b33b2  99 46                                            mov sb, r3
008b33b4  a2 46                                            mov sl, r4
008b33b6  ab 46                                            mov fp, r5
008b33b8  f0 bc                                            pop {r4, r5, r6, r7}
008b33ba  08 bc                                            pop {r3}
008b33bc  02 b0                                            add sp, #8
008b33be  18 47                                            bx r3
008b33c0  00 23                                            movs r3, #0
008b33c2  33 60                                            str r3, [r6]
008b33c4  ea e7                                            b #0x8b339c
008b33c6  3b 68                                            ldr r3, [r7]
008b33c8  38 1c                                            adds r0, r7, #0
008b33ca  1b 6a                                            ldr r3, [r3, #0x20]
008b33cc  98 47                                            blx r3
008b33ce  da e7                                            b #0x8b3386
008b33d0  2b 68                                            ldr r3, [r5]
008b33d2  28 1c                                            adds r0, r5, #0
008b33d4  1b 6a                                            ldr r3, [r3, #0x20]
008b33d6  98 47                                            blx r3
008b33d8  c3 e7                                            b #0x8b3362

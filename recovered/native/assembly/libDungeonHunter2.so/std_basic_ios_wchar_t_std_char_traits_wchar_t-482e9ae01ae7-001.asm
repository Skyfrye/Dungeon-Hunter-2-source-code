; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008b826c, declared_size=34, range_size=34, mode=thumb
; class-group: std::basic_ios<wchar_t, std::char_traits<wchar_t> >
; alias: _ZNSt9basic_iosIwSt11char_traitsIwEE5rdbufEPSt15basic_streambufIwS1_E
; demangled: std::basic_ios<wchar_t, std::char_traits<wchar_t> >::rdbuf(std::basic_streambuf<wchar_t, std::char_traits<wchar_t> >*)
; decoder-mode: thumb
008b826c  10 b5                                            push {r4, lr}
008b826e  84 6c                                            ldr r4, [r0, #0x48]
008b8270  81 64                                            str r1, [r0, #0x48]
008b8272  00 29                                            cmp r1, #0
008b8274  03 d0                                            beq #0x8b827e
008b8276  00 23                                            movs r3, #0
008b8278  83 60                                            str r3, [r0, #8]
008b827a  20 1c                                            adds r0, r4, #0
008b827c  10 bd                                            pop {r4, pc}
008b827e  42 69                                            ldr r2, [r0, #0x14]
008b8280  01 23                                            movs r3, #1
008b8282  83 60                                            str r3, [r0, #8]
008b8284  13 42                                            tst r3, r2
008b8286  f8 d0                                            beq #0x8b827a
008b8288  ea f7 64 fc                                      bl #0x8a2b54
008b828c  f5 e7                                            b #0x8b827a

; FUNCTION 0x008b8330, declared_size=32, range_size=32, mode=thumb
; class-group: std::basic_ios<wchar_t, std::char_traits<wchar_t> >
; alias: _ZNSt9basic_iosIwSt11char_traitsIwEED1Ev
; demangled: std::basic_ios<wchar_t, std::char_traits<wchar_t> >::~basic_ios()
; decoder-mode: thumb
008b8330  10 b5                                            push {r4, lr}
008b8332  05 4b                                            ldr r3, [pc, #0x14]
008b8334  05 4a                                            ldr r2, [pc, #0x14]
008b8336  04 1c                                            adds r4, r0, #0
008b8338  7b 44                                            add r3, pc
008b833a  9a 58                                            ldr r2, [r3, r2]
008b833c  08 32                                            adds r2, #8
008b833e  02 60                                            str r2, [r0]
008b8340  ea f7 1e fb                                      bl #0x8a2980
008b8344  20 1c                                            adds r0, r4, #0
008b8346  10 bd                                            pop {r4, pc}
; mapping-symbol data/literal pool
008b8348  5c c7 0d 00 b4 1a 00 00                          .byte 0x5c, 0xc7, 0x0d, 0x00, 0xb4, 0x1a, 0x00, 0x00

; FUNCTION 0x008b83fc, declared_size=76, range_size=76, mode=thumb
; class-group: std::basic_ios<wchar_t, std::char_traits<wchar_t> >
; alias: _ZNSt9basic_iosIwSt11char_traitsIwEE5imbueERKSt6locale
; demangled: std::basic_ios<wchar_t, std::char_traits<wchar_t> >::imbue(std::locale const&)
; decoder-mode: thumb
008b83fc  f0 b5                                            push {r4, r5, r6, r7, lr}
008b83fe  47 46                                            mov r7, r8
008b8400  80 b4                                            push {r7}
008b8402  0d 1c                                            adds r5, r1, #0
008b8404  82 b0                                            sub sp, #8
008b8406  0e 4c                                            ldr r4, [pc, #0x38]
008b8408  80 46                                            mov r8, r0
008b840a  17 1c                                            adds r7, r2, #0
008b840c  ea f7 26 fb                                      bl #0x8a2a5c
008b8410  a9 6c                                            ldr r1, [r5, #0x48]
008b8412  7c 44                                            add r4, pc
008b8414  00 29                                            cmp r1, #0
008b8416  07 d0                                            beq #0x8b8428
008b8418  01 ae                                            add r6, sp, #4
008b841a  30 1c                                            adds r0, r6, #0
008b841c  3a 1c                                            adds r2, r7, #0
008b841e  ff f7 d9 ff                                      bl #0x8b83d4
008b8422  30 1c                                            adds r0, r6, #0
008b8424  eb f7 66 f8                                      bl #0x8a34f4
008b8428  06 4b                                            ldr r3, [pc, #0x18]
008b842a  38 1c                                            adds r0, r7, #0
008b842c  e1 58                                            ldr r1, [r4, r3]
008b842e  eb f7 bf f8                                      bl #0x8a35b0
008b8432  02 b0                                            add sp, #8
008b8434  28 64                                            str r0, [r5, #0x40]
008b8436  40 46                                            mov r0, r8
008b8438  04 bc                                            pop {r2}
008b843a  90 46                                            mov r8, r2
008b843c  f0 bd                                            pop {r4, r5, r6, r7, pc}
008b843e  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008b8440  82 c6 0d 00 44 1e 00 00                          .byte 0x82, 0xc6, 0x0d, 0x00, 0x44, 0x1e, 0x00, 0x00

; FUNCTION 0x008b8448, declared_size=84, range_size=84, mode=thumb
; class-group: std::basic_ios<wchar_t, std::char_traits<wchar_t> >
; alias: _ZNSt9basic_iosIwSt11char_traitsIwEE4initEPSt15basic_streambufIwS1_E
; demangled: std::basic_ios<wchar_t, std::char_traits<wchar_t> >::init(std::basic_streambuf<wchar_t, std::char_traits<wchar_t> >*)
; decoder-mode: thumb
008b8448  f0 b5                                            push {r4, r5, r6, r7, lr}
008b844a  83 b0                                            sub sp, #0xc
008b844c  01 ad                                            add r5, sp, #4
008b844e  04 1c                                            adds r4, r0, #0
008b8450  0f 1c                                            adds r7, r1, #0
008b8452  ff f7 0b ff                                      bl #0x8b826c
008b8456  28 1c                                            adds r0, r5, #0
008b8458  eb f7 92 f8                                      bl #0x8a3580
008b845c  2a 1c                                            adds r2, r5, #0
008b845e  21 1c                                            adds r1, r4, #0
008b8460  68 46                                            mov r0, sp
008b8462  ff f7 cb ff                                      bl #0x8b83fc
008b8466  68 46                                            mov r0, sp
008b8468  eb f7 44 f8                                      bl #0x8a34f4
008b846c  28 1c                                            adds r0, r5, #0
008b846e  eb f7 41 f8                                      bl #0x8a34f4
008b8472  7a 42                                            rsbs r2, r7, #0
008b8474  7a 41                                            adcs r2, r7
008b8476  a2 60                                            str r2, [r4, #8]
008b8478  07 4a                                            ldr r2, [pc, #0x1c]
008b847a  00 23                                            movs r3, #0
008b847c  20 6c                                            ldr r0, [r4, #0x40]
008b847e  e3 64                                            str r3, [r4, #0x4c]
008b8480  63 61                                            str r3, [r4, #0x14]
008b8482  e3 61                                            str r3, [r4, #0x1c]
008b8484  06 23                                            movs r3, #6
008b8486  62 60                                            str r2, [r4, #4]
008b8488  a3 61                                            str r3, [r4, #0x18]
008b848a  03 68                                            ldr r3, [r0]
008b848c  20 21                                            movs r1, #0x20
008b848e  9b 6a                                            ldr r3, [r3, #0x28]
008b8490  98 47                                            blx r3
008b8492  03 b0                                            add sp, #0xc
008b8494  60 64                                            str r0, [r4, #0x44]
008b8496  f0 bd                                            pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
008b8498  08 10 00 00                                      .byte 0x08, 0x10, 0x00, 0x00

; FUNCTION 0x008b87a0, declared_size=40, range_size=40, mode=thumb
; class-group: std::basic_ios<wchar_t, std::char_traits<wchar_t> >
; alias: _ZNSt9basic_iosIwSt11char_traitsIwEED0Ev
; demangled: std::basic_ios<wchar_t, std::char_traits<wchar_t> >::~basic_ios()
; decoder-mode: thumb
008b87a0  10 b5                                            push {r4, lr}
008b87a2  07 4b                                            ldr r3, [pc, #0x1c]
008b87a4  07 4a                                            ldr r2, [pc, #0x1c]
008b87a6  04 1c                                            adds r4, r0, #0
008b87a8  7b 44                                            add r3, pc
008b87aa  9a 58                                            ldr r2, [r3, r2]
008b87ac  08 32                                            adds r2, #8
008b87ae  02 60                                            str r2, [r0]
008b87b0  ea f7 e6 f8                                      bl #0x8a2980
008b87b4  20 1c                                            adds r0, r4, #0
008b87b6  55 f6 7c e5                                      blx #0x30e2b0
008b87ba  20 1c                                            adds r0, r4, #0
008b87bc  10 bd                                            pop {r4, pc}
008b87be  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008b87c0  ec c2 0d 00 b4 1a 00 00                          .byte 0xec, 0xc2, 0x0d, 0x00, 0xb4, 0x1a, 0x00, 0x00

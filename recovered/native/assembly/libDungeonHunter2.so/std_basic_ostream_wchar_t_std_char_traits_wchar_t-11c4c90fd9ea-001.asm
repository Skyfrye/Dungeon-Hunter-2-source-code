; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008b82d0, declared_size=44, range_size=44, mode=thumb
; class-group: std::basic_ostream<wchar_t, std::char_traits<wchar_t> >
; alias: _ZNSt13basic_ostreamIwSt11char_traitsIwEED1Ev
; demangled: std::basic_ostream<wchar_t, std::char_traits<wchar_t> >::~basic_ostream()
; decoder-mode: thumb
008b82d0  10 b5                                            push {r4, lr}
008b82d2  07 4b                                            ldr r3, [pc, #0x1c]
008b82d4  07 4a                                            ldr r2, [pc, #0x1c]
008b82d6  04 1c                                            adds r4, r0, #0
008b82d8  7b 44                                            add r3, pc
008b82da  9a 58                                            ldr r2, [r3, r2]
008b82dc  0c 32                                            adds r2, #0xc
008b82de  04 c0                                            stm r0!, {r2}
008b82e0  05 4a                                            ldr r2, [pc, #0x14]
008b82e2  9a 58                                            ldr r2, [r3, r2]
008b82e4  08 32                                            adds r2, #8
008b82e6  62 60                                            str r2, [r4, #4]
008b82e8  ea f7 4a fb                                      bl #0x8a2980
008b82ec  20 1c                                            adds r0, r4, #0
008b82ee  10 bd                                            pop {r4, pc}
; mapping-symbol data/literal pool
008b82f0  bc c7 0d 00 20 43 00 00 b4 1a 00 00              .byte 0xbc, 0xc7, 0x0d, 0x00, 0x20, 0x43, 0x00, 0x00, 0xb4, 0x1a, 0x00, 0x00

; FUNCTION 0x008b82fc, declared_size=16, range_size=16, mode=thumb
; class-group: std::basic_ostream<wchar_t, std::char_traits<wchar_t> >
; alias: _ZTv0_n12_NSt13basic_ostreamIwSt11char_traitsIwEED1Ev
; demangled: virtual thunk to std::basic_ostream<wchar_t, std::char_traits<wchar_t> >::~basic_ostream()
; decoder-mode: thumb
008b82fc  10 b5                                            push {r4, lr}
008b82fe  03 68                                            ldr r3, [r0]
008b8300  0c 3b                                            subs r3, #0xc
008b8302  1b 68                                            ldr r3, [r3]
008b8304  c0 18                                            adds r0, r0, r3
008b8306  ff f7 e3 ff                                      bl #0x8b82d0
008b830a  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b830c, declared_size=18, range_size=18, mode=thumb
; class-group: std::basic_ostream<wchar_t, std::char_traits<wchar_t> >
; alias: _ZNSt13basic_ostreamIwSt11char_traitsIwEED0Ev
; demangled: std::basic_ostream<wchar_t, std::char_traits<wchar_t> >::~basic_ostream()
; decoder-mode: thumb
008b830c  10 b5                                            push {r4, lr}
008b830e  04 1c                                            adds r4, r0, #0
008b8310  ff f7 de ff                                      bl #0x8b82d0
008b8314  20 1c                                            adds r0, r4, #0
008b8316  55 f6 cc e7                                      blx #0x30e2b0
008b831a  20 1c                                            adds r0, r4, #0
008b831c  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b8320, declared_size=16, range_size=16, mode=thumb
; class-group: std::basic_ostream<wchar_t, std::char_traits<wchar_t> >
; alias: _ZTv0_n12_NSt13basic_ostreamIwSt11char_traitsIwEED0Ev
; demangled: virtual thunk to std::basic_ostream<wchar_t, std::char_traits<wchar_t> >::~basic_ostream()
; decoder-mode: thumb
008b8320  10 b5                                            push {r4, lr}
008b8322  03 68                                            ldr r3, [r0]
008b8324  0c 3b                                            subs r3, #0xc
008b8326  1b 68                                            ldr r3, [r3]
008b8328  c0 18                                            adds r0, r0, r3
008b832a  ff f7 ef ff                                      bl #0x8b830c
008b832e  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b84dc, declared_size=60, range_size=60, mode=thumb
; class-group: std::basic_ostream<wchar_t, std::char_traits<wchar_t> >
; alias: _ZNSt13basic_ostreamIwSt11char_traitsIwEEC1EPSt15basic_streambufIwS1_E
; demangled: std::basic_ostream<wchar_t, std::char_traits<wchar_t> >::basic_ostream(std::basic_streambuf<wchar_t, std::char_traits<wchar_t> >*)
; decoder-mode: thumb
008b84dc  f8 b5                                            push {r3, r4, r5, r6, r7, lr}
008b84de  04 1d                                            adds r4, r0, #4
008b84e0  05 1c                                            adds r5, r0, #0
008b84e2  20 1c                                            adds r0, r4, #0
008b84e4  0f 1c                                            adds r7, r1, #0
008b84e6  0a 4e                                            ldr r6, [pc, #0x28]
008b84e8  ea f7 88 fa                                      bl #0x8a29fc
008b84ec  00 23                                            movs r3, #0
008b84ee  63 64                                            str r3, [r4, #0x44]
008b84f0  a3 64                                            str r3, [r4, #0x48]
008b84f2  e3 64                                            str r3, [r4, #0x4c]
008b84f4  07 4b                                            ldr r3, [pc, #0x1c]
008b84f6  7e 44                                            add r6, pc
008b84f8  20 1c                                            adds r0, r4, #0
008b84fa  f3 58                                            ldr r3, [r6, r3]
008b84fc  39 1c                                            adds r1, r7, #0
008b84fe  1a 1c                                            adds r2, r3, #0
008b8500  0c 32                                            adds r2, #0xc
008b8502  20 33                                            adds r3, #0x20
008b8504  2a 60                                            str r2, [r5]
008b8506  6b 60                                            str r3, [r5, #4]
008b8508  ff f7 9e ff                                      bl #0x8b8448
008b850c  28 1c                                            adds r0, r5, #0
008b850e  f8 bd                                            pop {r3, r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
008b8510  9e c5 0d 00 20 43 00 00                          .byte 0x9e, 0xc5, 0x0d, 0x00, 0x20, 0x43, 0x00, 0x00

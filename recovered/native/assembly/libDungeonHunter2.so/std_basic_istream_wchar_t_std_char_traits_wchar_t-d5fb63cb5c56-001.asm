; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008b8290, declared_size=48, range_size=48, mode=thumb
; class-group: std::basic_istream<wchar_t, std::char_traits<wchar_t> >
; alias: _ZNSt13basic_istreamIwSt11char_traitsIwEED1Ev
; demangled: std::basic_istream<wchar_t, std::char_traits<wchar_t> >::~basic_istream()
; decoder-mode: thumb
008b8290  10 b5                                            push {r4, lr}
008b8292  08 4b                                            ldr r3, [pc, #0x20]
008b8294  08 4a                                            ldr r2, [pc, #0x20]
008b8296  04 1c                                            adds r4, r0, #0
008b8298  7b 44                                            add r3, pc
008b829a  9a 58                                            ldr r2, [r3, r2]
008b829c  0c 32                                            adds r2, #0xc
008b829e  02 60                                            str r2, [r0]
008b82a0  06 4a                                            ldr r2, [pc, #0x18]
008b82a2  08 30                                            adds r0, #8
008b82a4  9a 58                                            ldr r2, [r3, r2]
008b82a6  08 32                                            adds r2, #8
008b82a8  a2 60                                            str r2, [r4, #8]
008b82aa  ea f7 69 fb                                      bl #0x8a2980
008b82ae  20 1c                                            adds r0, r4, #0
008b82b0  10 bd                                            pop {r4, pc}
008b82b2  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008b82b4  fc c7 0d 00 88 48 00 00 b4 1a 00 00              .byte 0xfc, 0xc7, 0x0d, 0x00, 0x88, 0x48, 0x00, 0x00, 0xb4, 0x1a, 0x00, 0x00

; FUNCTION 0x008b82c0, declared_size=16, range_size=16, mode=thumb
; class-group: std::basic_istream<wchar_t, std::char_traits<wchar_t> >
; alias: _ZTv0_n12_NSt13basic_istreamIwSt11char_traitsIwEED1Ev
; demangled: virtual thunk to std::basic_istream<wchar_t, std::char_traits<wchar_t> >::~basic_istream()
; decoder-mode: thumb
008b82c0  10 b5                                            push {r4, lr}
008b82c2  03 68                                            ldr r3, [r0]
008b82c4  0c 3b                                            subs r3, #0xc
008b82c6  1b 68                                            ldr r3, [r3]
008b82c8  c0 18                                            adds r0, r0, r3
008b82ca  ff f7 e1 ff                                      bl #0x8b8290
008b82ce  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b849c, declared_size=64, range_size=64, mode=thumb
; class-group: std::basic_istream<wchar_t, std::char_traits<wchar_t> >
; alias: _ZNSt13basic_istreamIwSt11char_traitsIwEEC1EPSt15basic_streambufIwS1_E
; demangled: std::basic_istream<wchar_t, std::char_traits<wchar_t> >::basic_istream(std::basic_streambuf<wchar_t, std::char_traits<wchar_t> >*)
; decoder-mode: thumb
008b849c  f8 b5                                            push {r3, r4, r5, r6, r7, lr}
008b849e  05 1c                                            adds r5, r0, #0
008b84a0  08 35                                            adds r5, #8
008b84a2  04 1c                                            adds r4, r0, #0
008b84a4  0b 4e                                            ldr r6, [pc, #0x2c]
008b84a6  28 1c                                            adds r0, r5, #0
008b84a8  0f 1c                                            adds r7, r1, #0
008b84aa  ea f7 a7 fa                                      bl #0x8a29fc
008b84ae  0a 4a                                            ldr r2, [pc, #0x28]
008b84b0  7e 44                                            add r6, pc
008b84b2  00 23                                            movs r3, #0
008b84b4  b2 58                                            ldr r2, [r6, r2]
008b84b6  6b 64                                            str r3, [r5, #0x44]
008b84b8  ab 64                                            str r3, [r5, #0x48]
008b84ba  11 1c                                            adds r1, r2, #0
008b84bc  0c 31                                            adds r1, #0xc
008b84be  20 32                                            adds r2, #0x20
008b84c0  eb 64                                            str r3, [r5, #0x4c]
008b84c2  28 1c                                            adds r0, r5, #0
008b84c4  21 60                                            str r1, [r4]
008b84c6  a2 60                                            str r2, [r4, #8]
008b84c8  39 1c                                            adds r1, r7, #0
008b84ca  63 60                                            str r3, [r4, #4]
008b84cc  ff f7 bc ff                                      bl #0x8b8448
008b84d0  20 1c                                            adds r0, r4, #0
008b84d2  f8 bd                                            pop {r3, r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
008b84d4  e4 c5 0d 00 88 48 00 00                          .byte 0xe4, 0xc5, 0x0d, 0x00, 0x88, 0x48, 0x00, 0x00

; FUNCTION 0x008b87c8, declared_size=52, range_size=52, mode=thumb
; class-group: std::basic_istream<wchar_t, std::char_traits<wchar_t> >
; alias: _ZNSt13basic_istreamIwSt11char_traitsIwEED0Ev
; demangled: std::basic_istream<wchar_t, std::char_traits<wchar_t> >::~basic_istream()
; decoder-mode: thumb
008b87c8  10 b5                                            push {r4, lr}
008b87ca  09 4b                                            ldr r3, [pc, #0x24]
008b87cc  09 4a                                            ldr r2, [pc, #0x24]
008b87ce  04 1c                                            adds r4, r0, #0
008b87d0  7b 44                                            add r3, pc
008b87d2  9a 58                                            ldr r2, [r3, r2]
008b87d4  0c 32                                            adds r2, #0xc
008b87d6  02 60                                            str r2, [r0]
008b87d8  07 4a                                            ldr r2, [pc, #0x1c]
008b87da  08 30                                            adds r0, #8
008b87dc  9a 58                                            ldr r2, [r3, r2]
008b87de  08 32                                            adds r2, #8
008b87e0  a2 60                                            str r2, [r4, #8]
008b87e2  ea f7 cd f8                                      bl #0x8a2980
008b87e6  20 1c                                            adds r0, r4, #0
008b87e8  55 f6 62 e5                                      blx #0x30e2b0
008b87ec  20 1c                                            adds r0, r4, #0
008b87ee  10 bd                                            pop {r4, pc}
; mapping-symbol data/literal pool
008b87f0  c4 c2 0d 00 88 48 00 00 b4 1a 00 00              .byte 0xc4, 0xc2, 0x0d, 0x00, 0x88, 0x48, 0x00, 0x00, 0xb4, 0x1a, 0x00, 0x00

; FUNCTION 0x008b87fc, declared_size=16, range_size=16, mode=thumb
; class-group: std::basic_istream<wchar_t, std::char_traits<wchar_t> >
; alias: _ZTv0_n12_NSt13basic_istreamIwSt11char_traitsIwEED0Ev
; demangled: virtual thunk to std::basic_istream<wchar_t, std::char_traits<wchar_t> >::~basic_istream()
; decoder-mode: thumb
008b87fc  10 b5                                            push {r4, lr}
008b87fe  03 68                                            ldr r3, [r0]
008b8800  0c 3b                                            subs r3, #0xc
008b8802  1b 68                                            ldr r3, [r3]
008b8804  c0 18                                            adds r0, r0, r3
008b8806  ff f7 df ff                                      bl #0x8b87c8
008b880a  10 bd                                            pop {r4, pc}

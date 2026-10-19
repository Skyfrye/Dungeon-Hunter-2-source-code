; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008bcb50, declared_size=6, range_size=6, mode=thumb
; class-group: std::messages<wchar_t>
; alias: _ZNKSt8messagesIwE7do_openERKSsRKSt6locale
; demangled: std::messages<wchar_t>::do_open(std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, std::locale const&) const
; decoder-mode: thumb
008bcb50  01 20                                            movs r0, #1
008bcb52  40 42                                            rsbs r0, r0, #0
008bcb54  70 47                                            bx lr

; FUNCTION 0x008bcb58, declared_size=2, range_size=2, mode=thumb
; class-group: std::messages<wchar_t>
; alias: _ZNKSt8messagesIwE8do_closeEi
; demangled: std::messages<wchar_t>::do_close(int) const
; decoder-mode: thumb
008bcb58  70 47                                            bx lr

; FUNCTION 0x008bcb5c, declared_size=32, range_size=32, mode=thumb
; class-group: std::messages<wchar_t>
; alias: _ZNSt8messagesIwED1Ev
; demangled: std::messages<wchar_t>::~messages()
; decoder-mode: thumb
008bcb5c  10 b5                                            push {r4, lr}
008bcb5e  05 4b                                            ldr r3, [pc, #0x14]
008bcb60  05 4a                                            ldr r2, [pc, #0x14]
008bcb62  04 1c                                            adds r4, r0, #0
008bcb64  7b 44                                            add r3, pc
008bcb66  9a 58                                            ldr r2, [r3, r2]
008bcb68  08 32                                            adds r2, #8
008bcb6a  02 60                                            str r2, [r0]
008bcb6c  e6 f7 c6 fe                                      bl #0x8a38fc
008bcb70  20 1c                                            adds r0, r4, #0
008bcb72  10 bd                                            pop {r4, pc}
; mapping-symbol data/literal pool
008bcb74  30 7f 0d 00 7c 45 00 00                          .byte 0x30, 0x7f, 0x0d, 0x00, 0x7c, 0x45, 0x00, 0x00

; FUNCTION 0x008bcbdc, declared_size=44, range_size=44, mode=thumb
; class-group: std::messages<wchar_t>
; alias: _ZNSt8messagesIwEC1Ej
; demangled: std::messages<wchar_t>::messages(unsigned int)
; decoder-mode: thumb
008bcbdc  70 b5                                            push {r4, r5, r6, lr}
008bcbde  4b 1e                                            subs r3, r1, #1
008bcbe0  99 41                                            sbcs r1, r3
008bcbe2  04 1c                                            adds r4, r0, #0
008bcbe4  41 60                                            str r1, [r0, #4]
008bcbe6  06 4d                                            ldr r5, [pc, #0x18]
008bcbe8  00 21                                            movs r1, #0
008bcbea  08 30                                            adds r0, #8
008bcbec  51 f6 e0 e1                                      blx #0x30dfb0
008bcbf0  04 4b                                            ldr r3, [pc, #0x10]
008bcbf2  7d 44                                            add r5, pc
008bcbf4  20 1c                                            adds r0, r4, #0
008bcbf6  eb 58                                            ldr r3, [r5, r3]
008bcbf8  08 33                                            adds r3, #8
008bcbfa  23 60                                            str r3, [r4]
008bcbfc  70 bd                                            pop {r4, r5, r6, pc}
008bcbfe  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008bcc00  a2 7e 0d 00 7c 45 00 00                          .byte 0xa2, 0x7e, 0x0d, 0x00, 0x7c, 0x45, 0x00, 0x00

; FUNCTION 0x008bcc08, declared_size=44, range_size=44, mode=thumb
; class-group: std::messages<wchar_t>
; alias: _ZNSt8messagesIwEC2Ej
; demangled: std::messages<wchar_t>::messages(unsigned int)
; decoder-mode: thumb
008bcc08  70 b5                                            push {r4, r5, r6, lr}
008bcc0a  4b 1e                                            subs r3, r1, #1
008bcc0c  99 41                                            sbcs r1, r3
008bcc0e  04 1c                                            adds r4, r0, #0
008bcc10  41 60                                            str r1, [r0, #4]
008bcc12  06 4d                                            ldr r5, [pc, #0x18]
008bcc14  00 21                                            movs r1, #0
008bcc16  08 30                                            adds r0, #8
008bcc18  51 f6 ca e1                                      blx #0x30dfb0
008bcc1c  04 4b                                            ldr r3, [pc, #0x10]
008bcc1e  7d 44                                            add r5, pc
008bcc20  20 1c                                            adds r0, r4, #0
008bcc22  eb 58                                            ldr r3, [r5, r3]
008bcc24  08 33                                            adds r3, #8
008bcc26  23 60                                            str r3, [r4]
008bcc28  70 bd                                            pop {r4, r5, r6, pc}
008bcc2a  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008bcc2c  76 7e 0d 00 7c 45 00 00                          .byte 0x76, 0x7e, 0x0d, 0x00, 0x7c, 0x45, 0x00, 0x00

; FUNCTION 0x008bcfa0, declared_size=40, range_size=40, mode=thumb
; class-group: std::messages<wchar_t>
; alias: _ZNSt8messagesIwED0Ev
; demangled: std::messages<wchar_t>::~messages()
; decoder-mode: thumb
008bcfa0  10 b5                                            push {r4, lr}
008bcfa2  07 4b                                            ldr r3, [pc, #0x1c]
008bcfa4  07 4a                                            ldr r2, [pc, #0x1c]
008bcfa6  04 1c                                            adds r4, r0, #0
008bcfa8  7b 44                                            add r3, pc
008bcfaa  9a 58                                            ldr r2, [r3, r2]
008bcfac  08 32                                            adds r2, #8
008bcfae  02 60                                            str r2, [r0]
008bcfb0  e6 f7 a4 fc                                      bl #0x8a38fc
008bcfb4  20 1c                                            adds r0, r4, #0
008bcfb6  51 f6 7c e1                                      blx #0x30e2b0
008bcfba  20 1c                                            adds r0, r4, #0
008bcfbc  10 bd                                            pop {r4, pc}
008bcfbe  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008bcfc0  ec 7a 0d 00 7c 45 00 00                          .byte 0xec, 0x7a, 0x0d, 0x00, 0x7c, 0x45, 0x00, 0x00

; FUNCTION 0x008bd160, declared_size=22, range_size=22, mode=thumb
; class-group: std::messages<wchar_t>
; alias: _ZNKSt8messagesIwE6do_getEiiiRKSbIwSt11char_traitsIwESaIwEE
; demangled: std::messages<wchar_t>::do_get(int, int, int, std::basic_string<wchar_t, std::char_traits<wchar_t>, std::allocator<wchar_t> > const&) const
; decoder-mode: thumb
008bd160  10 b5                                            push {r4, lr}
008bd162  03 9b                                            ldr r3, [sp, #0xc]
008bd164  04 1c                                            adds r4, r0, #0
008bd166  20 64                                            str r0, [r4, #0x40]
008bd168  60 64                                            str r0, [r4, #0x44]
008bd16a  59 6c                                            ldr r1, [r3, #0x44]
008bd16c  1a 6c                                            ldr r2, [r3, #0x40]
008bd16e  f8 f7 0d ff                                      bl #0x8b5f8c
008bd172  20 1c                                            adds r0, r4, #0
008bd174  10 bd                                            pop {r4, pc}

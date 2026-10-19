; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008bcb44, declared_size=6, range_size=6, mode=thumb
; class-group: std::messages<char>
; alias: _ZNKSt8messagesIcE7do_openERKSsRKSt6locale
; demangled: std::messages<char>::do_open(std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, std::locale const&) const
; decoder-mode: thumb
008bcb44  01 20                                            movs r0, #1
008bcb46  40 42                                            rsbs r0, r0, #0
008bcb48  70 47                                            bx lr

; FUNCTION 0x008bcb4c, declared_size=2, range_size=2, mode=thumb
; class-group: std::messages<char>
; alias: _ZNKSt8messagesIcE8do_closeEi
; demangled: std::messages<char>::do_close(int) const
; decoder-mode: thumb
008bcb4c  70 47                                            bx lr

; FUNCTION 0x008bcb7c, declared_size=32, range_size=32, mode=thumb
; class-group: std::messages<char>
; alias: _ZNSt8messagesIcED1Ev
; demangled: std::messages<char>::~messages()
; decoder-mode: thumb
008bcb7c  10 b5                                            push {r4, lr}
008bcb7e  05 4b                                            ldr r3, [pc, #0x14]
008bcb80  05 4a                                            ldr r2, [pc, #0x14]
008bcb82  04 1c                                            adds r4, r0, #0
008bcb84  7b 44                                            add r3, pc
008bcb86  9a 58                                            ldr r2, [r3, r2]
008bcb88  08 32                                            adds r2, #8
008bcb8a  02 60                                            str r2, [r0]
008bcb8c  e6 f7 b6 fe                                      bl #0x8a38fc
008bcb90  20 1c                                            adds r0, r4, #0
008bcb92  10 bd                                            pop {r4, pc}
; mapping-symbol data/literal pool
008bcb94  10 7f 0d 00 60 30 00 00                          .byte 0x10, 0x7f, 0x0d, 0x00, 0x60, 0x30, 0x00, 0x00

; FUNCTION 0x008bcca4, declared_size=44, range_size=44, mode=thumb
; class-group: std::messages<char>
; alias: _ZNSt8messagesIcEC1Ej
; demangled: std::messages<char>::messages(unsigned int)
; decoder-mode: thumb
008bcca4  70 b5                                            push {r4, r5, r6, lr}
008bcca6  4b 1e                                            subs r3, r1, #1
008bcca8  99 41                                            sbcs r1, r3
008bccaa  04 1c                                            adds r4, r0, #0
008bccac  41 60                                            str r1, [r0, #4]
008bccae  06 4d                                            ldr r5, [pc, #0x18]
008bccb0  00 21                                            movs r1, #0
008bccb2  08 30                                            adds r0, #8
008bccb4  51 f6 7c e1                                      blx #0x30dfb0
008bccb8  04 4b                                            ldr r3, [pc, #0x10]
008bccba  7d 44                                            add r5, pc
008bccbc  20 1c                                            adds r0, r4, #0
008bccbe  eb 58                                            ldr r3, [r5, r3]
008bccc0  08 33                                            adds r3, #8
008bccc2  23 60                                            str r3, [r4]
008bccc4  70 bd                                            pop {r4, r5, r6, pc}
008bccc6  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008bccc8  da 7d 0d 00 60 30 00 00                          .byte 0xda, 0x7d, 0x0d, 0x00, 0x60, 0x30, 0x00, 0x00

; FUNCTION 0x008bccd0, declared_size=44, range_size=44, mode=thumb
; class-group: std::messages<char>
; alias: _ZNSt8messagesIcEC2Ej
; demangled: std::messages<char>::messages(unsigned int)
; decoder-mode: thumb
008bccd0  70 b5                                            push {r4, r5, r6, lr}
008bccd2  4b 1e                                            subs r3, r1, #1
008bccd4  99 41                                            sbcs r1, r3
008bccd6  04 1c                                            adds r4, r0, #0
008bccd8  41 60                                            str r1, [r0, #4]
008bccda  06 4d                                            ldr r5, [pc, #0x18]
008bccdc  00 21                                            movs r1, #0
008bccde  08 30                                            adds r0, #8
008bcce0  51 f6 66 e1                                      blx #0x30dfb0
008bcce4  04 4b                                            ldr r3, [pc, #0x10]
008bcce6  7d 44                                            add r5, pc
008bcce8  20 1c                                            adds r0, r4, #0
008bccea  eb 58                                            ldr r3, [r5, r3]
008bccec  08 33                                            adds r3, #8
008bccee  23 60                                            str r3, [r4]
008bccf0  70 bd                                            pop {r4, r5, r6, pc}
008bccf2  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008bccf4  ae 7d 0d 00 60 30 00 00                          .byte 0xae, 0x7d, 0x0d, 0x00, 0x60, 0x30, 0x00, 0x00

; FUNCTION 0x008bcfc8, declared_size=40, range_size=40, mode=thumb
; class-group: std::messages<char>
; alias: _ZNSt8messagesIcED0Ev
; demangled: std::messages<char>::~messages()
; decoder-mode: thumb
008bcfc8  10 b5                                            push {r4, lr}
008bcfca  07 4b                                            ldr r3, [pc, #0x1c]
008bcfcc  07 4a                                            ldr r2, [pc, #0x1c]
008bcfce  04 1c                                            adds r4, r0, #0
008bcfd0  7b 44                                            add r3, pc
008bcfd2  9a 58                                            ldr r2, [r3, r2]
008bcfd4  08 32                                            adds r2, #8
008bcfd6  02 60                                            str r2, [r0]
008bcfd8  e6 f7 90 fc                                      bl #0x8a38fc
008bcfdc  20 1c                                            adds r0, r4, #0
008bcfde  51 f6 68 e1                                      blx #0x30e2b0
008bcfe2  20 1c                                            adds r0, r4, #0
008bcfe4  10 bd                                            pop {r4, pc}
008bcfe6  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008bcfe8  c4 7a 0d 00 60 30 00 00                          .byte 0xc4, 0x7a, 0x0d, 0x00, 0x60, 0x30, 0x00, 0x00

; FUNCTION 0x008bd964, declared_size=22, range_size=22, mode=thumb
; class-group: std::messages<char>
; alias: _ZNKSt8messagesIcE6do_getEiiiRKSs
; demangled: std::messages<char>::do_get(int, int, int, std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&) const
; decoder-mode: thumb
008bd964  10 b5                                            push {r4, lr}
008bd966  03 9b                                            ldr r3, [sp, #0xc]
008bd968  04 1c                                            adds r4, r0, #0
008bd96a  20 61                                            str r0, [r4, #0x10]
008bd96c  60 61                                            str r0, [r4, #0x14]
008bd96e  59 69                                            ldr r1, [r3, #0x14]
008bd970  1a 69                                            ldr r2, [r3, #0x10]
008bd972  53 f6 ba e6                                      blx #0x3116e8
008bd976  20 1c                                            adds r0, r4, #0
008bd978  10 bd                                            pop {r4, pc}

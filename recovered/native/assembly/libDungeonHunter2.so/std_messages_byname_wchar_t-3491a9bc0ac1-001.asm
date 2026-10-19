; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008bcc34, declared_size=56, range_size=56, mode=thumb
; class-group: std::messages_byname<wchar_t>
; alias: _ZNSt15messages_bynameIwEC1EP16_Locale_messages
; demangled: std::messages_byname<wchar_t>::messages_byname(_Locale_messages*)
; decoder-mode: thumb
008bcc34  70 b5                                            push {r4, r5, r6, lr}
008bcc36  0e 1c                                            adds r6, r1, #0
008bcc38  0a 4d                                            ldr r5, [pc, #0x28]
008bcc3a  00 21                                            movs r1, #0
008bcc3c  04 1c                                            adds r4, r0, #0
008bcc3e  ff f7 e3 ff                                      bl #0x8bcc08
008bcc42  09 4b                                            ldr r3, [pc, #0x24]
008bcc44  7d 44                                            add r5, pc
008bcc46  0c 20                                            movs r0, #0xc
008bcc48  eb 58                                            ldr r3, [r5, r3]
008bcc4a  08 33                                            adds r3, #8
008bcc4c  23 60                                            str r3, [r4]
008bcc4e  51 f6 1e e6                                      blx #0x30e88c
008bcc52  32 1c                                            adds r2, r6, #0
008bcc54  05 1c                                            adds r5, r0, #0
008bcc56  01 21                                            movs r1, #1
008bcc58  ff f7 a0 ff                                      bl #0x8bcb9c
008bcc5c  e5 60                                            str r5, [r4, #0xc]
008bcc5e  20 1c                                            adds r0, r4, #0
008bcc60  70 bd                                            pop {r4, r5, r6, pc}
008bcc62  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008bcc64  50 7e 0d 00 98 2a 00 00                          .byte 0x50, 0x7e, 0x0d, 0x00, 0x98, 0x2a, 0x00, 0x00

; FUNCTION 0x008bcc6c, declared_size=56, range_size=56, mode=thumb
; class-group: std::messages_byname<wchar_t>
; alias: _ZNSt15messages_bynameIwEC2EP16_Locale_messages
; demangled: std::messages_byname<wchar_t>::messages_byname(_Locale_messages*)
; decoder-mode: thumb
008bcc6c  70 b5                                            push {r4, r5, r6, lr}
008bcc6e  0e 1c                                            adds r6, r1, #0
008bcc70  0a 4d                                            ldr r5, [pc, #0x28]
008bcc72  00 21                                            movs r1, #0
008bcc74  04 1c                                            adds r4, r0, #0
008bcc76  ff f7 c7 ff                                      bl #0x8bcc08
008bcc7a  09 4b                                            ldr r3, [pc, #0x24]
008bcc7c  7d 44                                            add r5, pc
008bcc7e  0c 20                                            movs r0, #0xc
008bcc80  eb 58                                            ldr r3, [r5, r3]
008bcc82  08 33                                            adds r3, #8
008bcc84  23 60                                            str r3, [r4]
008bcc86  51 f6 02 e6                                      blx #0x30e88c
008bcc8a  32 1c                                            adds r2, r6, #0
008bcc8c  05 1c                                            adds r5, r0, #0
008bcc8e  01 21                                            movs r1, #1
008bcc90  ff f7 84 ff                                      bl #0x8bcb9c
008bcc94  e5 60                                            str r5, [r4, #0xc]
008bcc96  20 1c                                            adds r0, r4, #0
008bcc98  70 bd                                            pop {r4, r5, r6, pc}
008bcc9a  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008bcc9c  18 7e 0d 00 98 2a 00 00                          .byte 0x18, 0x7e, 0x0d, 0x00, 0x98, 0x2a, 0x00, 0x00

; FUNCTION 0x008bcde4, declared_size=56, range_size=56, mode=thumb
; class-group: std::messages_byname<wchar_t>
; alias: _ZNSt15messages_bynameIwEC1EPKcj
; demangled: std::messages_byname<wchar_t>::messages_byname(char const*, unsigned int)
; decoder-mode: thumb
008bcde4  70 b5                                            push {r4, r5, r6, lr}
008bcde6  0e 1c                                            adds r6, r1, #0
008bcde8  0a 4d                                            ldr r5, [pc, #0x28]
008bcdea  11 1c                                            adds r1, r2, #0
008bcdec  04 1c                                            adds r4, r0, #0
008bcdee  ff f7 0b ff                                      bl #0x8bcc08
008bcdf2  09 4b                                            ldr r3, [pc, #0x24]
008bcdf4  7d 44                                            add r5, pc
008bcdf6  0c 20                                            movs r0, #0xc
008bcdf8  eb 58                                            ldr r3, [r5, r3]
008bcdfa  08 33                                            adds r3, #8
008bcdfc  23 60                                            str r3, [r4]
008bcdfe  51 f6 46 e5                                      blx #0x30e88c
008bce02  32 1c                                            adds r2, r6, #0
008bce04  05 1c                                            adds r5, r0, #0
008bce06  01 21                                            movs r1, #1
008bce08  ff f7 b0 ff                                      bl #0x8bcd6c
008bce0c  e5 60                                            str r5, [r4, #0xc]
008bce0e  20 1c                                            adds r0, r4, #0
008bce10  70 bd                                            pop {r4, r5, r6, pc}
008bce12  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008bce14  a0 7c 0d 00 98 2a 00 00                          .byte 0xa0, 0x7c, 0x0d, 0x00, 0x98, 0x2a, 0x00, 0x00

; FUNCTION 0x008bce1c, declared_size=56, range_size=56, mode=thumb
; class-group: std::messages_byname<wchar_t>
; alias: _ZNSt15messages_bynameIwEC2EPKcj
; demangled: std::messages_byname<wchar_t>::messages_byname(char const*, unsigned int)
; decoder-mode: thumb
008bce1c  70 b5                                            push {r4, r5, r6, lr}
008bce1e  0e 1c                                            adds r6, r1, #0
008bce20  0a 4d                                            ldr r5, [pc, #0x28]
008bce22  11 1c                                            adds r1, r2, #0
008bce24  04 1c                                            adds r4, r0, #0
008bce26  ff f7 ef fe                                      bl #0x8bcc08
008bce2a  09 4b                                            ldr r3, [pc, #0x24]
008bce2c  7d 44                                            add r5, pc
008bce2e  0c 20                                            movs r0, #0xc
008bce30  eb 58                                            ldr r3, [r5, r3]
008bce32  08 33                                            adds r3, #8
008bce34  23 60                                            str r3, [r4]
008bce36  51 f6 2a e5                                      blx #0x30e88c
008bce3a  32 1c                                            adds r2, r6, #0
008bce3c  05 1c                                            adds r5, r0, #0
008bce3e  01 21                                            movs r1, #1
008bce40  ff f7 94 ff                                      bl #0x8bcd6c
008bce44  e5 60                                            str r5, [r4, #0xc]
008bce46  20 1c                                            adds r0, r4, #0
008bce48  70 bd                                            pop {r4, r5, r6, pc}
008bce4a  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008bce4c  68 7c 0d 00 98 2a 00 00                          .byte 0x68, 0x7c, 0x0d, 0x00, 0x98, 0x2a, 0x00, 0x00

; FUNCTION 0x008bd280, declared_size=28, range_size=28, mode=thumb
; class-group: std::messages_byname<wchar_t>
; alias: _ZNKSt15messages_bynameIwE6do_getEiiiRKSbIwSt11char_traitsIwESaIwEE
; demangled: std::messages_byname<wchar_t>::do_get(int, int, int, std::basic_string<wchar_t, std::char_traits<wchar_t>, std::allocator<wchar_t> > const&) const
; decoder-mode: thumb
008bd280  10 b5                                            push {r4, lr}
008bd282  82 b0                                            sub sp, #8
008bd284  04 1c                                            adds r4, r0, #0
008bd286  04 98                                            ldr r0, [sp, #0x10]
008bd288  c9 68                                            ldr r1, [r1, #0xc]
008bd28a  00 90                                            str r0, [sp]
008bd28c  05 98                                            ldr r0, [sp, #0x14]
008bd28e  01 90                                            str r0, [sp, #4]
008bd290  20 1c                                            adds r0, r4, #0
008bd292  ff f7 71 ff                                      bl #0x8bd178
008bd296  02 b0                                            add sp, #8
008bd298  20 1c                                            adds r0, r4, #0
008bd29a  10 bd                                            pop {r4, pc}

; FUNCTION 0x008bd354, declared_size=64, range_size=64, mode=thumb
; class-group: std::messages_byname<wchar_t>
; alias: _ZNSt15messages_bynameIwED1Ev
; demangled: std::messages_byname<wchar_t>::~messages_byname()
; decoder-mode: thumb
008bd354  70 b5                                            push {r4, r5, r6, lr}
008bd356  0c 4d                                            ldr r5, [pc, #0x30]
008bd358  0c 4b                                            ldr r3, [pc, #0x30]
008bd35a  c6 68                                            ldr r6, [r0, #0xc]
008bd35c  7d 44                                            add r5, pc
008bd35e  eb 58                                            ldr r3, [r5, r3]
008bd360  04 1c                                            adds r4, r0, #0
008bd362  08 33                                            adds r3, #8
008bd364  03 60                                            str r3, [r0]
008bd366  00 2e                                            cmp r6, #0
008bd368  05 d0                                            beq #0x8bd376
008bd36a  30 1c                                            adds r0, r6, #0
008bd36c  ff f7 dc ff                                      bl #0x8bd328
008bd370  30 1c                                            adds r0, r6, #0
008bd372  50 f6 9e e7                                      blx #0x30e2b0
008bd376  06 4b                                            ldr r3, [pc, #0x18]
008bd378  20 1c                                            adds r0, r4, #0
008bd37a  eb 58                                            ldr r3, [r5, r3]
008bd37c  08 33                                            adds r3, #8
008bd37e  23 60                                            str r3, [r4]
008bd380  e6 f7 bc fa                                      bl #0x8a38fc
008bd384  20 1c                                            adds r0, r4, #0
008bd386  70 bd                                            pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
008bd388  38 77 0d 00 98 2a 00 00 7c 45 00 00              .byte 0x38, 0x77, 0x0d, 0x00, 0x98, 0x2a, 0x00, 0x00, 0x7c, 0x45, 0x00, 0x00

; FUNCTION 0x008bd394, declared_size=18, range_size=18, mode=thumb
; class-group: std::messages_byname<wchar_t>
; alias: _ZNSt15messages_bynameIwED0Ev
; demangled: std::messages_byname<wchar_t>::~messages_byname()
; decoder-mode: thumb
008bd394  10 b5                                            push {r4, lr}
008bd396  04 1c                                            adds r4, r0, #0
008bd398  ff f7 dc ff                                      bl #0x8bd354
008bd39c  20 1c                                            adds r0, r4, #0
008bd39e  50 f6 88 e7                                      blx #0x30e2b0
008bd3a2  20 1c                                            adds r0, r4, #0
008bd3a4  10 bd                                            pop {r4, pc}

; FUNCTION 0x008bd3a8, declared_size=64, range_size=64, mode=thumb
; class-group: std::messages_byname<wchar_t>
; alias: _ZNSt15messages_bynameIwED2Ev
; demangled: std::messages_byname<wchar_t>::~messages_byname()
; decoder-mode: thumb
008bd3a8  70 b5                                            push {r4, r5, r6, lr}
008bd3aa  0c 4d                                            ldr r5, [pc, #0x30]
008bd3ac  0c 4b                                            ldr r3, [pc, #0x30]
008bd3ae  c6 68                                            ldr r6, [r0, #0xc]
008bd3b0  7d 44                                            add r5, pc
008bd3b2  eb 58                                            ldr r3, [r5, r3]
008bd3b4  04 1c                                            adds r4, r0, #0
008bd3b6  08 33                                            adds r3, #8
008bd3b8  03 60                                            str r3, [r0]
008bd3ba  00 2e                                            cmp r6, #0
008bd3bc  05 d0                                            beq #0x8bd3ca
008bd3be  30 1c                                            adds r0, r6, #0
008bd3c0  ff f7 b2 ff                                      bl #0x8bd328
008bd3c4  30 1c                                            adds r0, r6, #0
008bd3c6  50 f6 74 e7                                      blx #0x30e2b0
008bd3ca  06 4b                                            ldr r3, [pc, #0x18]
008bd3cc  20 1c                                            adds r0, r4, #0
008bd3ce  eb 58                                            ldr r3, [r5, r3]
008bd3d0  08 33                                            adds r3, #8
008bd3d2  23 60                                            str r3, [r4]
008bd3d4  e6 f7 92 fa                                      bl #0x8a38fc
008bd3d8  20 1c                                            adds r0, r4, #0
008bd3da  70 bd                                            pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
008bd3dc  e4 76 0d 00 98 2a 00 00 7c 45 00 00              .byte 0xe4, 0x76, 0x0d, 0x00, 0x98, 0x2a, 0x00, 0x00, 0x7c, 0x45, 0x00, 0x00

; FUNCTION 0x008bd7f0, declared_size=10, range_size=10, mode=thumb
; class-group: std::messages_byname<wchar_t>
; alias: _ZNKSt15messages_bynameIwE8do_closeEi
; demangled: std::messages_byname<wchar_t>::do_close(int) const
; decoder-mode: thumb
008bd7f0  10 b5                                            push {r4, lr}
008bd7f2  c0 68                                            ldr r0, [r0, #0xc]
008bd7f4  ff f7 ec ff                                      bl #0x8bd7d0
008bd7f8  10 bd                                            pop {r4, pc}

; FUNCTION 0x008bd94c, declared_size=10, range_size=10, mode=thumb
; class-group: std::messages_byname<wchar_t>
; alias: _ZNKSt15messages_bynameIwE7do_openERKSsRKSt6locale
; demangled: std::messages_byname<wchar_t>::do_open(std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, std::locale const&) const
; decoder-mode: thumb
008bd94c  10 b5                                            push {r4, lr}
008bd94e  c0 68                                            ldr r0, [r0, #0xc]
008bd950  ff f7 e4 ff                                      bl #0x8bd91c
008bd954  10 bd                                            pop {r4, pc}

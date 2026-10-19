; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008bccfc, declared_size=56, range_size=56, mode=thumb
; class-group: std::messages_byname<char>
; alias: _ZNSt15messages_bynameIcEC1EP16_Locale_messages
; demangled: std::messages_byname<char>::messages_byname(_Locale_messages*)
; decoder-mode: thumb
008bccfc  70 b5                                            push {r4, r5, r6, lr}
008bccfe  0e 1c                                            adds r6, r1, #0
008bcd00  0a 4d                                            ldr r5, [pc, #0x28]
008bcd02  00 21                                            movs r1, #0
008bcd04  04 1c                                            adds r4, r0, #0
008bcd06  ff f7 e3 ff                                      bl #0x8bccd0
008bcd0a  09 4b                                            ldr r3, [pc, #0x24]
008bcd0c  7d 44                                            add r5, pc
008bcd0e  0c 20                                            movs r0, #0xc
008bcd10  eb 58                                            ldr r3, [r5, r3]
008bcd12  08 33                                            adds r3, #8
008bcd14  23 60                                            str r3, [r4]
008bcd16  51 f6 ba e5                                      blx #0x30e88c
008bcd1a  32 1c                                            adds r2, r6, #0
008bcd1c  05 1c                                            adds r5, r0, #0
008bcd1e  00 21                                            movs r1, #0
008bcd20  ff f7 3c ff                                      bl #0x8bcb9c
008bcd24  e5 60                                            str r5, [r4, #0xc]
008bcd26  20 1c                                            adds r0, r4, #0
008bcd28  70 bd                                            pop {r4, r5, r6, pc}
008bcd2a  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008bcd2c  88 7d 0d 00 d4 2f 00 00                          .byte 0x88, 0x7d, 0x0d, 0x00, 0xd4, 0x2f, 0x00, 0x00

; FUNCTION 0x008bcd34, declared_size=56, range_size=56, mode=thumb
; class-group: std::messages_byname<char>
; alias: _ZNSt15messages_bynameIcEC2EP16_Locale_messages
; demangled: std::messages_byname<char>::messages_byname(_Locale_messages*)
; decoder-mode: thumb
008bcd34  70 b5                                            push {r4, r5, r6, lr}
008bcd36  0e 1c                                            adds r6, r1, #0
008bcd38  0a 4d                                            ldr r5, [pc, #0x28]
008bcd3a  00 21                                            movs r1, #0
008bcd3c  04 1c                                            adds r4, r0, #0
008bcd3e  ff f7 c7 ff                                      bl #0x8bccd0
008bcd42  09 4b                                            ldr r3, [pc, #0x24]
008bcd44  7d 44                                            add r5, pc
008bcd46  0c 20                                            movs r0, #0xc
008bcd48  eb 58                                            ldr r3, [r5, r3]
008bcd4a  08 33                                            adds r3, #8
008bcd4c  23 60                                            str r3, [r4]
008bcd4e  51 f6 9e e5                                      blx #0x30e88c
008bcd52  32 1c                                            adds r2, r6, #0
008bcd54  05 1c                                            adds r5, r0, #0
008bcd56  00 21                                            movs r1, #0
008bcd58  ff f7 20 ff                                      bl #0x8bcb9c
008bcd5c  e5 60                                            str r5, [r4, #0xc]
008bcd5e  20 1c                                            adds r0, r4, #0
008bcd60  70 bd                                            pop {r4, r5, r6, pc}
008bcd62  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008bcd64  50 7d 0d 00 d4 2f 00 00                          .byte 0x50, 0x7d, 0x0d, 0x00, 0xd4, 0x2f, 0x00, 0x00

; FUNCTION 0x008bce54, declared_size=56, range_size=56, mode=thumb
; class-group: std::messages_byname<char>
; alias: _ZNSt15messages_bynameIcEC1EPKcj
; demangled: std::messages_byname<char>::messages_byname(char const*, unsigned int)
; decoder-mode: thumb
008bce54  70 b5                                            push {r4, r5, r6, lr}
008bce56  0e 1c                                            adds r6, r1, #0
008bce58  0a 4d                                            ldr r5, [pc, #0x28]
008bce5a  11 1c                                            adds r1, r2, #0
008bce5c  04 1c                                            adds r4, r0, #0
008bce5e  ff f7 37 ff                                      bl #0x8bccd0
008bce62  09 4b                                            ldr r3, [pc, #0x24]
008bce64  7d 44                                            add r5, pc
008bce66  0c 20                                            movs r0, #0xc
008bce68  eb 58                                            ldr r3, [r5, r3]
008bce6a  08 33                                            adds r3, #8
008bce6c  23 60                                            str r3, [r4]
008bce6e  51 f6 0e e5                                      blx #0x30e88c
008bce72  32 1c                                            adds r2, r6, #0
008bce74  05 1c                                            adds r5, r0, #0
008bce76  00 21                                            movs r1, #0
008bce78  ff f7 78 ff                                      bl #0x8bcd6c
008bce7c  e5 60                                            str r5, [r4, #0xc]
008bce7e  20 1c                                            adds r0, r4, #0
008bce80  70 bd                                            pop {r4, r5, r6, pc}
008bce82  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008bce84  30 7c 0d 00 d4 2f 00 00                          .byte 0x30, 0x7c, 0x0d, 0x00, 0xd4, 0x2f, 0x00, 0x00

; FUNCTION 0x008bce8c, declared_size=56, range_size=56, mode=thumb
; class-group: std::messages_byname<char>
; alias: _ZNSt15messages_bynameIcEC2EPKcj
; demangled: std::messages_byname<char>::messages_byname(char const*, unsigned int)
; decoder-mode: thumb
008bce8c  70 b5                                            push {r4, r5, r6, lr}
008bce8e  0e 1c                                            adds r6, r1, #0
008bce90  0a 4d                                            ldr r5, [pc, #0x28]
008bce92  11 1c                                            adds r1, r2, #0
008bce94  04 1c                                            adds r4, r0, #0
008bce96  ff f7 1b ff                                      bl #0x8bccd0
008bce9a  09 4b                                            ldr r3, [pc, #0x24]
008bce9c  7d 44                                            add r5, pc
008bce9e  0c 20                                            movs r0, #0xc
008bcea0  eb 58                                            ldr r3, [r5, r3]
008bcea2  08 33                                            adds r3, #8
008bcea4  23 60                                            str r3, [r4]
008bcea6  51 f6 f2 e4                                      blx #0x30e88c
008bceaa  32 1c                                            adds r2, r6, #0
008bceac  05 1c                                            adds r5, r0, #0
008bceae  00 21                                            movs r1, #0
008bceb0  ff f7 5c ff                                      bl #0x8bcd6c
008bceb4  e5 60                                            str r5, [r4, #0xc]
008bceb6  20 1c                                            adds r0, r4, #0
008bceb8  70 bd                                            pop {r4, r5, r6, pc}
008bceba  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008bcebc  f8 7b 0d 00 d4 2f 00 00                          .byte 0xf8, 0x7b, 0x0d, 0x00, 0xd4, 0x2f, 0x00, 0x00

; FUNCTION 0x008bd3e8, declared_size=64, range_size=64, mode=thumb
; class-group: std::messages_byname<char>
; alias: _ZNSt15messages_bynameIcED1Ev
; demangled: std::messages_byname<char>::~messages_byname()
; decoder-mode: thumb
008bd3e8  70 b5                                            push {r4, r5, r6, lr}
008bd3ea  0c 4d                                            ldr r5, [pc, #0x30]
008bd3ec  0c 4b                                            ldr r3, [pc, #0x30]
008bd3ee  c6 68                                            ldr r6, [r0, #0xc]
008bd3f0  7d 44                                            add r5, pc
008bd3f2  eb 58                                            ldr r3, [r5, r3]
008bd3f4  04 1c                                            adds r4, r0, #0
008bd3f6  08 33                                            adds r3, #8
008bd3f8  03 60                                            str r3, [r0]
008bd3fa  00 2e                                            cmp r6, #0
008bd3fc  05 d0                                            beq #0x8bd40a
008bd3fe  30 1c                                            adds r0, r6, #0
008bd400  ff f7 92 ff                                      bl #0x8bd328
008bd404  30 1c                                            adds r0, r6, #0
008bd406  50 f6 54 e7                                      blx #0x30e2b0
008bd40a  06 4b                                            ldr r3, [pc, #0x18]
008bd40c  20 1c                                            adds r0, r4, #0
008bd40e  eb 58                                            ldr r3, [r5, r3]
008bd410  08 33                                            adds r3, #8
008bd412  23 60                                            str r3, [r4]
008bd414  e6 f7 72 fa                                      bl #0x8a38fc
008bd418  20 1c                                            adds r0, r4, #0
008bd41a  70 bd                                            pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
008bd41c  a4 76 0d 00 d4 2f 00 00 60 30 00 00              .byte 0xa4, 0x76, 0x0d, 0x00, 0xd4, 0x2f, 0x00, 0x00, 0x60, 0x30, 0x00, 0x00

; FUNCTION 0x008bd428, declared_size=18, range_size=18, mode=thumb
; class-group: std::messages_byname<char>
; alias: _ZNSt15messages_bynameIcED0Ev
; demangled: std::messages_byname<char>::~messages_byname()
; decoder-mode: thumb
008bd428  10 b5                                            push {r4, lr}
008bd42a  04 1c                                            adds r4, r0, #0
008bd42c  ff f7 dc ff                                      bl #0x8bd3e8
008bd430  20 1c                                            adds r0, r4, #0
008bd432  50 f6 3e e7                                      blx #0x30e2b0
008bd436  20 1c                                            adds r0, r4, #0
008bd438  10 bd                                            pop {r4, pc}

; FUNCTION 0x008bd43c, declared_size=64, range_size=64, mode=thumb
; class-group: std::messages_byname<char>
; alias: _ZNSt15messages_bynameIcED2Ev
; demangled: std::messages_byname<char>::~messages_byname()
; decoder-mode: thumb
008bd43c  70 b5                                            push {r4, r5, r6, lr}
008bd43e  0c 4d                                            ldr r5, [pc, #0x30]
008bd440  0c 4b                                            ldr r3, [pc, #0x30]
008bd442  c6 68                                            ldr r6, [r0, #0xc]
008bd444  7d 44                                            add r5, pc
008bd446  eb 58                                            ldr r3, [r5, r3]
008bd448  04 1c                                            adds r4, r0, #0
008bd44a  08 33                                            adds r3, #8
008bd44c  03 60                                            str r3, [r0]
008bd44e  00 2e                                            cmp r6, #0
008bd450  05 d0                                            beq #0x8bd45e
008bd452  30 1c                                            adds r0, r6, #0
008bd454  ff f7 68 ff                                      bl #0x8bd328
008bd458  30 1c                                            adds r0, r6, #0
008bd45a  50 f6 2a e7                                      blx #0x30e2b0
008bd45e  06 4b                                            ldr r3, [pc, #0x18]
008bd460  20 1c                                            adds r0, r4, #0
008bd462  eb 58                                            ldr r3, [r5, r3]
008bd464  08 33                                            adds r3, #8
008bd466  23 60                                            str r3, [r4]
008bd468  e6 f7 48 fa                                      bl #0x8a38fc
008bd46c  20 1c                                            adds r0, r4, #0
008bd46e  70 bd                                            pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
008bd470  50 76 0d 00 d4 2f 00 00 60 30 00 00              .byte 0x50, 0x76, 0x0d, 0x00, 0xd4, 0x2f, 0x00, 0x00, 0x60, 0x30, 0x00, 0x00

; FUNCTION 0x008bd7fc, declared_size=10, range_size=10, mode=thumb
; class-group: std::messages_byname<char>
; alias: _ZNKSt15messages_bynameIcE8do_closeEi
; demangled: std::messages_byname<char>::do_close(int) const
; decoder-mode: thumb
008bd7fc  10 b5                                            push {r4, lr}
008bd7fe  c0 68                                            ldr r0, [r0, #0xc]
008bd800  ff f7 e6 ff                                      bl #0x8bd7d0
008bd804  10 bd                                            pop {r4, pc}

; FUNCTION 0x008bd958, declared_size=10, range_size=10, mode=thumb
; class-group: std::messages_byname<char>
; alias: _ZNKSt15messages_bynameIcE7do_openERKSsRKSt6locale
; demangled: std::messages_byname<char>::do_open(std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, std::locale const&) const
; decoder-mode: thumb
008bd958  10 b5                                            push {r4, lr}
008bd95a  c0 68                                            ldr r0, [r0, #0xc]
008bd95c  ff f7 de ff                                      bl #0x8bd91c
008bd960  10 bd                                            pop {r4, pc}

; FUNCTION 0x008bd9c8, declared_size=28, range_size=28, mode=thumb
; class-group: std::messages_byname<char>
; alias: _ZNKSt15messages_bynameIcE6do_getEiiiRKSs
; demangled: std::messages_byname<char>::do_get(int, int, int, std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&) const
; decoder-mode: thumb
008bd9c8  10 b5                                            push {r4, lr}
008bd9ca  82 b0                                            sub sp, #8
008bd9cc  04 1c                                            adds r4, r0, #0
008bd9ce  04 98                                            ldr r0, [sp, #0x10]
008bd9d0  c9 68                                            ldr r1, [r1, #0xc]
008bd9d2  00 90                                            str r0, [sp]
008bd9d4  05 98                                            ldr r0, [sp, #0x14]
008bd9d6  01 90                                            str r0, [sp, #4]
008bd9d8  20 1c                                            adds r0, r4, #0
008bd9da  ff f7 cf ff                                      bl #0x8bd97c
008bd9de  02 b0                                            add sp, #8
008bd9e0  20 1c                                            adds r0, r4, #0
008bd9e2  10 bd                                            pop {r4, pc}

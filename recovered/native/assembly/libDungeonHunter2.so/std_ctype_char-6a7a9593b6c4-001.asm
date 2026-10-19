; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008a2e40, declared_size=12, range_size=12, mode=thumb
; class-group: std::ctype<char>
; alias: _ZNSt5ctypeIcE13classic_tableEv
; demangled: std::ctype<char>::classic_table()
; decoder-mode: thumb
008a2e40  01 48                                            ldr r0, [pc, #4]
008a2e42  78 44                                            add r0, pc
008a2e44  70 47                                            bx lr
008a2e46  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008a2e48  7e 23 07 00                                      .byte 0x7e, 0x23, 0x07, 0x00

; FUNCTION 0x008a2e4c, declared_size=12, range_size=12, mode=thumb
; class-group: std::ctype<char>
; alias: _ZNKSt5ctypeIcE10do_toupperEc
; demangled: std::ctype<char>::do_toupper(char) const
; decoder-mode: thumb
008a2e4c  01 4b                                            ldr r3, [pc, #4]
008a2e4e  7b 44                                            add r3, pc
008a2e50  58 5c                                            ldrb r0, [r3, r1]
008a2e52  70 47                                            bx lr
; mapping-symbol data/literal pool
008a2e54  72 27 07 00                                      .byte 0x72, 0x27, 0x07, 0x00

; FUNCTION 0x008a2e58, declared_size=12, range_size=12, mode=thumb
; class-group: std::ctype<char>
; alias: _ZNKSt5ctypeIcE10do_tolowerEc
; demangled: std::ctype<char>::do_tolower(char) const
; decoder-mode: thumb
008a2e58  01 4b                                            ldr r3, [pc, #4]
008a2e5a  7b 44                                            add r3, pc
008a2e5c  58 5c                                            ldrb r0, [r3, r1]
008a2e5e  70 47                                            bx lr
; mapping-symbol data/literal pool
008a2e60  66 28 07 00                                      .byte 0x66, 0x28, 0x07, 0x00

; FUNCTION 0x008a2e64, declared_size=28, range_size=28, mode=thumb
; class-group: std::ctype<char>
; alias: _ZNKSt5ctypeIcE10do_toupperEPcPKc
; demangled: std::ctype<char>::do_toupper(char*, char const*) const
; decoder-mode: thumb
008a2e64  91 42                                            cmp r1, r2
008a2e66  07 d2                                            bhs #0x8a2e78
008a2e68  04 48                                            ldr r0, [pc, #0x10]
008a2e6a  78 44                                            add r0, pc
008a2e6c  0b 78                                            ldrb r3, [r1]
008a2e6e  c3 5c                                            ldrb r3, [r0, r3]
008a2e70  0b 70                                            strb r3, [r1]
008a2e72  01 31                                            adds r1, #1
008a2e74  91 42                                            cmp r1, r2
008a2e76  f9 d1                                            bne #0x8a2e6c
008a2e78  10 1c                                            adds r0, r2, #0
008a2e7a  70 47                                            bx lr
; mapping-symbol data/literal pool
008a2e7c  56 27 07 00                                      .byte 0x56, 0x27, 0x07, 0x00

; FUNCTION 0x008a2e80, declared_size=28, range_size=28, mode=thumb
; class-group: std::ctype<char>
; alias: _ZNKSt5ctypeIcE10do_tolowerEPcPKc
; demangled: std::ctype<char>::do_tolower(char*, char const*) const
; decoder-mode: thumb
008a2e80  91 42                                            cmp r1, r2
008a2e82  07 d2                                            bhs #0x8a2e94
008a2e84  04 48                                            ldr r0, [pc, #0x10]
008a2e86  78 44                                            add r0, pc
008a2e88  0b 78                                            ldrb r3, [r1]
008a2e8a  c3 5c                                            ldrb r3, [r0, r3]
008a2e8c  0b 70                                            strb r3, [r1]
008a2e8e  01 31                                            adds r1, #1
008a2e90  91 42                                            cmp r1, r2
008a2e92  f9 d1                                            bne #0x8a2e88
008a2e94  10 1c                                            adds r0, r2, #0
008a2e96  70 47                                            bx lr
; mapping-symbol data/literal pool
008a2e98  3a 28 07 00                                      .byte 0x3a, 0x28, 0x07, 0x00

; FUNCTION 0x008a2e9c, declared_size=4, range_size=4, mode=thumb
; class-group: std::ctype<char>
; alias: _ZNKSt5ctypeIcE8do_widenEc
; demangled: std::ctype<char>::do_widen(char) const
; decoder-mode: thumb
008a2e9c  08 1c                                            adds r0, r1, #0
008a2e9e  70 47                                            bx lr

; FUNCTION 0x008a2ea0, declared_size=4, range_size=4, mode=thumb
; class-group: std::ctype<char>
; alias: _ZNKSt5ctypeIcE9do_narrowEcc
; demangled: std::ctype<char>::do_narrow(char, char) const
; decoder-mode: thumb
008a2ea0  08 1c                                            adds r0, r1, #0
008a2ea2  70 47                                            bx lr

; FUNCTION 0x008a3068, declared_size=28, range_size=28, mode=thumb
; class-group: std::ctype<char>
; alias: _ZNKSt5ctypeIcE7scan_isENSt10ctype_base4maskEPKcS4_
; demangled: std::ctype<char>::scan_is(std::ctype_base::mask, char const*, char const*) const
; decoder-mode: thumb
008a3068  10 b5                                            push {r4, lr}
008a306a  c0 68                                            ldr r0, [r0, #0xc]
008a306c  84 b0                                            sub sp, #0x10
008a306e  14 1c                                            adds r4, r2, #0
008a3070  01 aa                                            add r2, sp, #4
008a3072  50 60                                            str r0, [r2, #4]
008a3074  01 91                                            str r1, [sp, #4]
008a3076  20 1c                                            adds r0, r4, #0
008a3078  19 1c                                            adds r1, r3, #0
008a307a  03 ab                                            add r3, sp, #0xc
008a307c  ff f7 98 ff                                      bl #0x8a2fb0
008a3080  04 b0                                            add sp, #0x10
008a3082  10 bd                                            pop {r4, pc}

; FUNCTION 0x008a313c, declared_size=28, range_size=28, mode=thumb
; class-group: std::ctype<char>
; alias: _ZNKSt5ctypeIcE8scan_notENSt10ctype_base4maskEPKcS4_
; demangled: std::ctype<char>::scan_not(std::ctype_base::mask, char const*, char const*) const
; decoder-mode: thumb
008a313c  10 b5                                            push {r4, lr}
008a313e  c0 68                                            ldr r0, [r0, #0xc]
008a3140  84 b0                                            sub sp, #0x10
008a3142  14 1c                                            adds r4, r2, #0
008a3144  01 aa                                            add r2, sp, #4
008a3146  50 60                                            str r0, [r2, #4]
008a3148  01 91                                            str r1, [sp, #4]
008a314a  20 1c                                            adds r0, r4, #0
008a314c  19 1c                                            adds r1, r3, #0
008a314e  03 ab                                            add r3, sp, #0xc
008a3150  ff f7 98 ff                                      bl #0x8a3084
008a3154  04 b0                                            add sp, #0x10
008a3156  10 bd                                            pop {r4, pc}

; FUNCTION 0x008a338c, declared_size=20, range_size=20, mode=thumb
; class-group: std::ctype<char>
; alias: _ZNKSt5ctypeIcE9do_narrowEPKcS2_cPc
; demangled: std::ctype<char>::do_narrow(char const*, char const*, char, char*) const
; decoder-mode: thumb
008a338c  10 b5                                            push {r4, lr}
008a338e  14 1c                                            adds r4, r2, #0
008a3390  52 1a                                            subs r2, r2, r1
008a3392  00 2a                                            cmp r2, #0
008a3394  02 d0                                            beq #0x8a339c
008a3396  02 98                                            ldr r0, [sp, #8]
008a3398  6a f6 ce e5                                      blx #0x30df38
008a339c  20 1c                                            adds r0, r4, #0
008a339e  10 bd                                            pop {r4, pc}

; FUNCTION 0x008a33a0, declared_size=20, range_size=20, mode=thumb
; class-group: std::ctype<char>
; alias: _ZNKSt5ctypeIcE8do_widenEPKcS2_Pc
; demangled: std::ctype<char>::do_widen(char const*, char const*, char*) const
; decoder-mode: thumb
008a33a0  10 b5                                            push {r4, lr}
008a33a2  14 1c                                            adds r4, r2, #0
008a33a4  52 1a                                            subs r2, r2, r1
008a33a6  00 2a                                            cmp r2, #0
008a33a8  02 d0                                            beq #0x8a33b0
008a33aa  18 1c                                            adds r0, r3, #0
008a33ac  6a f6 c4 e5                                      blx #0x30df38
008a33b0  20 1c                                            adds r0, r4, #0
008a33b2  10 bd                                            pop {r4, pc}

; FUNCTION 0x008a33b4, declared_size=52, range_size=52, mode=thumb
; class-group: std::ctype<char>
; alias: _ZNSt5ctypeIcED1Ev
; demangled: std::ctype<char>::~ctype()
; decoder-mode: thumb
008a33b4  10 b5                                            push {r4, lr}
008a33b6  0a 4b                                            ldr r3, [pc, #0x28]
008a33b8  0a 4a                                            ldr r2, [pc, #0x28]
008a33ba  04 1c                                            adds r4, r0, #0
008a33bc  7b 44                                            add r3, pc
008a33be  9a 58                                            ldr r2, [r3, r2]
008a33c0  03 7c                                            ldrb r3, [r0, #0x10]
008a33c2  08 32                                            adds r2, #8
008a33c4  02 60                                            str r2, [r0]
008a33c6  00 2b                                            cmp r3, #0
008a33c8  04 d0                                            beq #0x8a33d4
008a33ca  c0 68                                            ldr r0, [r0, #0xc]
008a33cc  00 28                                            cmp r0, #0
008a33ce  01 d0                                            beq #0x8a33d4
008a33d0  6a f6 72 e6                                      blx #0x30e0b8
008a33d4  20 1c                                            adds r0, r4, #0
008a33d6  00 f0 91 fa                                      bl #0x8a38fc
008a33da  20 1c                                            adds r0, r4, #0
008a33dc  10 bd                                            pop {r4, pc}
008a33de  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008a33e0  d8 16 0f 00 ec 1a 00 00                          .byte 0xd8, 0x16, 0x0f, 0x00, 0xec, 0x1a, 0x00, 0x00

; FUNCTION 0x008a33e8, declared_size=18, range_size=18, mode=thumb
; class-group: std::ctype<char>
; alias: _ZNSt5ctypeIcED0Ev
; demangled: std::ctype<char>::~ctype()
; decoder-mode: thumb
008a33e8  10 b5                                            push {r4, lr}
008a33ea  04 1c                                            adds r4, r0, #0
008a33ec  ff f7 e2 ff                                      bl #0x8a33b4
008a33f0  20 1c                                            adds r0, r4, #0
008a33f2  6a f6 5e e7                                      blx #0x30e2b0
008a33f6  20 1c                                            adds r0, r4, #0
008a33f8  10 bd                                            pop {r4, pc}

; FUNCTION 0x008a33fc, declared_size=52, range_size=52, mode=thumb
; class-group: std::ctype<char>
; alias: _ZNSt5ctypeIcED2Ev
; demangled: std::ctype<char>::~ctype()
; decoder-mode: thumb
008a33fc  10 b5                                            push {r4, lr}
008a33fe  0a 4b                                            ldr r3, [pc, #0x28]
008a3400  0a 4a                                            ldr r2, [pc, #0x28]
008a3402  04 1c                                            adds r4, r0, #0
008a3404  7b 44                                            add r3, pc
008a3406  9a 58                                            ldr r2, [r3, r2]
008a3408  03 7c                                            ldrb r3, [r0, #0x10]
008a340a  08 32                                            adds r2, #8
008a340c  02 60                                            str r2, [r0]
008a340e  00 2b                                            cmp r3, #0
008a3410  04 d0                                            beq #0x8a341c
008a3412  c0 68                                            ldr r0, [r0, #0xc]
008a3414  00 28                                            cmp r0, #0
008a3416  01 d0                                            beq #0x8a341c
008a3418  6a f6 4e e6                                      blx #0x30e0b8
008a341c  20 1c                                            adds r0, r4, #0
008a341e  00 f0 6d fa                                      bl #0x8a38fc
008a3422  20 1c                                            adds r0, r4, #0
008a3424  10 bd                                            pop {r4, pc}
008a3426  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008a3428  90 16 0f 00 ec 1a 00 00                          .byte 0x90, 0x16, 0x0f, 0x00, 0xec, 0x1a, 0x00, 0x00

; FUNCTION 0x008a3430, declared_size=72, range_size=72, mode=thumb
; class-group: std::ctype<char>
; alias: _ZNSt5ctypeIcEC1EPKNSt10ctype_base4maskEbj
; demangled: std::ctype<char>::ctype(std::ctype_base::mask const*, bool, unsigned int)
; decoder-mode: thumb
008a3430  f8 b5                                            push {r3, r4, r5, r6, r7, lr}
008a3432  17 1c                                            adds r7, r2, #0
008a3434  5a 1e                                            subs r2, r3, #1
008a3436  93 41                                            sbcs r3, r2
008a3438  43 60                                            str r3, [r0, #4]
008a343a  04 1c                                            adds r4, r0, #0
008a343c  0c 4d                                            ldr r5, [pc, #0x30]
008a343e  0e 1c                                            adds r6, r1, #0
008a3440  08 30                                            adds r0, #8
008a3442  00 21                                            movs r1, #0
008a3444  6a f6 b4 e5                                      blx #0x30dfb0
008a3448  0a 4b                                            ldr r3, [pc, #0x28]
008a344a  7d 44                                            add r5, pc
008a344c  eb 58                                            ldr r3, [r5, r3]
008a344e  08 33                                            adds r3, #8
008a3450  23 60                                            str r3, [r4]
008a3452  00 2e                                            cmp r6, #0
008a3454  07 d0                                            beq #0x8a3466
008a3456  e6 60                                            str r6, [r4, #0xc]
008a3458  01 23                                            movs r3, #1
008a345a  00 2f                                            cmp r7, #0
008a345c  00 d1                                            bne #0x8a3460
008a345e  00 23                                            movs r3, #0
008a3460  20 1c                                            adds r0, r4, #0
008a3462  23 74                                            strb r3, [r4, #0x10]
008a3464  f8 bd                                            pop {r3, r4, r5, r6, r7, pc}
008a3466  ff f7 eb fc                                      bl #0x8a2e40
008a346a  00 23                                            movs r3, #0
008a346c  e0 60                                            str r0, [r4, #0xc]
008a346e  f7 e7                                            b #0x8a3460
; mapping-symbol data/literal pool
008a3470  4a 16 0f 00 ec 1a 00 00                          .byte 0x4a, 0x16, 0x0f, 0x00, 0xec, 0x1a, 0x00, 0x00

; FUNCTION 0x008a3478, declared_size=72, range_size=72, mode=thumb
; class-group: std::ctype<char>
; alias: _ZNSt5ctypeIcEC2EPKNSt10ctype_base4maskEbj
; demangled: std::ctype<char>::ctype(std::ctype_base::mask const*, bool, unsigned int)
; decoder-mode: thumb
008a3478  f8 b5                                            push {r3, r4, r5, r6, r7, lr}
008a347a  17 1c                                            adds r7, r2, #0
008a347c  5a 1e                                            subs r2, r3, #1
008a347e  93 41                                            sbcs r3, r2
008a3480  43 60                                            str r3, [r0, #4]
008a3482  04 1c                                            adds r4, r0, #0
008a3484  0c 4d                                            ldr r5, [pc, #0x30]
008a3486  0e 1c                                            adds r6, r1, #0
008a3488  08 30                                            adds r0, #8
008a348a  00 21                                            movs r1, #0
008a348c  6a f6 90 e5                                      blx #0x30dfb0
008a3490  0a 4b                                            ldr r3, [pc, #0x28]
008a3492  7d 44                                            add r5, pc
008a3494  eb 58                                            ldr r3, [r5, r3]
008a3496  08 33                                            adds r3, #8
008a3498  23 60                                            str r3, [r4]
008a349a  00 2e                                            cmp r6, #0
008a349c  07 d0                                            beq #0x8a34ae
008a349e  e6 60                                            str r6, [r4, #0xc]
008a34a0  01 23                                            movs r3, #1
008a34a2  00 2f                                            cmp r7, #0
008a34a4  00 d1                                            bne #0x8a34a8
008a34a6  00 23                                            movs r3, #0
008a34a8  20 1c                                            adds r0, r4, #0
008a34aa  23 74                                            strb r3, [r4, #0x10]
008a34ac  f8 bd                                            pop {r3, r4, r5, r6, r7, pc}
008a34ae  ff f7 c7 fc                                      bl #0x8a2e40
008a34b2  00 23                                            movs r3, #0
008a34b4  e0 60                                            str r0, [r4, #0xc]
008a34b6  f7 e7                                            b #0x8a34a8
; mapping-symbol data/literal pool
008a34b8  02 16 0f 00 ec 1a 00 00                          .byte 0x02, 0x16, 0x0f, 0x00, 0xec, 0x1a, 0x00, 0x00

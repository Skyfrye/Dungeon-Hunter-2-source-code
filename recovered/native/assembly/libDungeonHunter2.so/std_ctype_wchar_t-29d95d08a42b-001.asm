; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008a2ea4, declared_size=32, range_size=32, mode=thumb
; class-group: std::ctype<wchar_t>
; alias: _ZNKSt5ctypeIwE5do_isENSt10ctype_base4maskEw
; demangled: std::ctype<wchar_t>::do_is(std::ctype_base::mask, wchar_t) const
; decoder-mode: thumb
008a2ea4  70 b5                                            push {r4, r5, r6, lr}
008a2ea6  0d 1c                                            adds r5, r1, #0
008a2ea8  14 1c                                            adds r4, r2, #0
008a2eaa  ff f7 c9 ff                                      bl #0x8a2e40
008a2eae  03 1c                                            adds r3, r0, #0
008a2eb0  00 20                                            movs r0, #0
008a2eb2  ff 2c                                            cmp r4, #0xff
008a2eb4  05 d8                                            bhi #0x8a2ec2
008a2eb6  a4 00                                            lsls r4, r4, #2
008a2eb8  e0 58                                            ldr r0, [r4, r3]
008a2eba  05 40                                            ands r5, r0
008a2ebc  28 1c                                            adds r0, r5, #0
008a2ebe  43 1e                                            subs r3, r0, #1
008a2ec0  98 41                                            sbcs r0, r3
008a2ec2  70 bd                                            pop {r4, r5, r6, pc}

; FUNCTION 0x008a2ec4, declared_size=44, range_size=44, mode=thumb
; class-group: std::ctype<wchar_t>
; alias: _ZNKSt5ctypeIwE5do_isEPKwS2_PNSt10ctype_base4maskE
; demangled: std::ctype<wchar_t>::do_is(wchar_t const*, wchar_t const*, std::ctype_base::mask*) const
; decoder-mode: thumb
008a2ec4  70 b5                                            push {r4, r5, r6, lr}
008a2ec6  0c 1c                                            adds r4, r1, #0
008a2ec8  16 1c                                            adds r6, r2, #0
008a2eca  1d 1c                                            adds r5, r3, #0
008a2ecc  ff f7 b8 ff                                      bl #0x8a2e40
008a2ed0  b4 42                                            cmp r4, r6
008a2ed2  01 d3                                            blo #0x8a2ed8
008a2ed4  0a e0                                            b #0x8a2eec
008a2ed6  04 35                                            adds r5, #4
008a2ed8  22 68                                            ldr r2, [r4]
008a2eda  00 23                                            movs r3, #0
008a2edc  ff 2a                                            cmp r2, #0xff
008a2ede  01 d8                                            bhi #0x8a2ee4
008a2ee0  92 00                                            lsls r2, r2, #2
008a2ee2  13 58                                            ldr r3, [r2, r0]
008a2ee4  04 34                                            adds r4, #4
008a2ee6  2b 60                                            str r3, [r5]
008a2ee8  a6 42                                            cmp r6, r4
008a2eea  f4 d8                                            bhi #0x8a2ed6
008a2eec  30 1c                                            adds r0, r6, #0
008a2eee  70 bd                                            pop {r4, r5, r6, pc}

; FUNCTION 0x008a2ef0, declared_size=20, range_size=20, mode=thumb
; class-group: std::ctype<wchar_t>
; alias: _ZNKSt5ctypeIwE10do_toupperEw
; demangled: std::ctype<wchar_t>::do_toupper(wchar_t) const
; decoder-mode: thumb
008a2ef0  ff 29                                            cmp r1, #0xff
008a2ef2  02 d8                                            bhi #0x8a2efa
008a2ef4  02 4b                                            ldr r3, [pc, #8]
008a2ef6  7b 44                                            add r3, pc
008a2ef8  59 5c                                            ldrb r1, [r3, r1]
008a2efa  08 1c                                            adds r0, r1, #0
008a2efc  70 47                                            bx lr
008a2efe  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008a2f00  ca 26 07 00                                      .byte 0xca, 0x26, 0x07, 0x00

; FUNCTION 0x008a2f04, declared_size=32, range_size=32, mode=thumb
; class-group: std::ctype<wchar_t>
; alias: _ZNKSt5ctypeIwE10do_toupperEPwPKw
; demangled: std::ctype<wchar_t>::do_toupper(wchar_t*, wchar_t const*) const
; decoder-mode: thumb
008a2f04  91 42                                            cmp r1, r2
008a2f06  08 d2                                            bhs #0x8a2f1a
008a2f08  05 48                                            ldr r0, [pc, #0x14]
008a2f0a  78 44                                            add r0, pc
008a2f0c  0b 68                                            ldr r3, [r1]
008a2f0e  ff 2b                                            cmp r3, #0xff
008a2f10  00 d8                                            bhi #0x8a2f14
008a2f12  c3 5c                                            ldrb r3, [r0, r3]
008a2f14  08 c1                                            stm r1!, {r3}
008a2f16  8a 42                                            cmp r2, r1
008a2f18  f8 d8                                            bhi #0x8a2f0c
008a2f1a  10 1c                                            adds r0, r2, #0
008a2f1c  70 47                                            bx lr
008a2f1e  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008a2f20  b6 26 07 00                                      .byte 0xb6, 0x26, 0x07, 0x00

; FUNCTION 0x008a2f24, declared_size=20, range_size=20, mode=thumb
; class-group: std::ctype<wchar_t>
; alias: _ZNKSt5ctypeIwE10do_tolowerEw
; demangled: std::ctype<wchar_t>::do_tolower(wchar_t) const
; decoder-mode: thumb
008a2f24  ff 29                                            cmp r1, #0xff
008a2f26  02 d8                                            bhi #0x8a2f2e
008a2f28  02 4b                                            ldr r3, [pc, #8]
008a2f2a  7b 44                                            add r3, pc
008a2f2c  59 5c                                            ldrb r1, [r3, r1]
008a2f2e  08 1c                                            adds r0, r1, #0
008a2f30  70 47                                            bx lr
008a2f32  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008a2f34  96 27 07 00                                      .byte 0x96, 0x27, 0x07, 0x00

; FUNCTION 0x008a2f38, declared_size=32, range_size=32, mode=thumb
; class-group: std::ctype<wchar_t>
; alias: _ZNKSt5ctypeIwE10do_tolowerEPwPKw
; demangled: std::ctype<wchar_t>::do_tolower(wchar_t*, wchar_t const*) const
; decoder-mode: thumb
008a2f38  91 42                                            cmp r1, r2
008a2f3a  08 d2                                            bhs #0x8a2f4e
008a2f3c  05 48                                            ldr r0, [pc, #0x14]
008a2f3e  78 44                                            add r0, pc
008a2f40  0b 68                                            ldr r3, [r1]
008a2f42  ff 2b                                            cmp r3, #0xff
008a2f44  00 d8                                            bhi #0x8a2f48
008a2f46  c3 5c                                            ldrb r3, [r0, r3]
008a2f48  08 c1                                            stm r1!, {r3}
008a2f4a  8a 42                                            cmp r2, r1
008a2f4c  f8 d8                                            bhi #0x8a2f40
008a2f4e  10 1c                                            adds r0, r2, #0
008a2f50  70 47                                            bx lr
008a2f52  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008a2f54  82 27 07 00                                      .byte 0x82, 0x27, 0x07, 0x00

; FUNCTION 0x008a2f58, declared_size=4, range_size=4, mode=thumb
; class-group: std::ctype<wchar_t>
; alias: _ZNKSt5ctypeIwE8do_widenEc
; demangled: std::ctype<wchar_t>::do_widen(char) const
; decoder-mode: thumb
008a2f58  08 1c                                            adds r0, r1, #0
008a2f5a  70 47                                            bx lr

; FUNCTION 0x008a2f5c, declared_size=24, range_size=24, mode=thumb
; class-group: std::ctype<wchar_t>
; alias: _ZNKSt5ctypeIwE8do_widenEPKcS2_Pw
; demangled: std::ctype<wchar_t>::do_widen(char const*, char const*, wchar_t*) const
; decoder-mode: thumb
008a2f5c  10 b5                                            push {r4, lr}
008a2f5e  0c 1c                                            adds r4, r1, #0
008a2f60  08 1c                                            adds r0, r1, #0
008a2f62  91 42                                            cmp r1, r2
008a2f64  05 d0                                            beq #0x8a2f72
008a2f66  21 78                                            ldrb r1, [r4]
008a2f68  01 34                                            adds r4, #1
008a2f6a  02 c3                                            stm r3!, {r1}
008a2f6c  94 42                                            cmp r4, r2
008a2f6e  fa d1                                            bne #0x8a2f66
008a2f70  20 1c                                            adds r0, r4, #0
008a2f72  10 bd                                            pop {r4, pc}

; FUNCTION 0x008a2f74, declared_size=12, range_size=12, mode=thumb
; class-group: std::ctype<wchar_t>
; alias: _ZNKSt5ctypeIwE9do_narrowEwc
; demangled: std::ctype<wchar_t>::do_narrow(wchar_t, char) const
; decoder-mode: thumb
008a2f74  08 06                                            lsls r0, r1, #0x18
008a2f76  00 0e                                            lsrs r0, r0, #0x18
008a2f78  88 42                                            cmp r0, r1
008a2f7a  00 d0                                            beq #0x8a2f7e
008a2f7c  10 1c                                            adds r0, r2, #0
008a2f7e  70 47                                            bx lr

; FUNCTION 0x008a2f80, declared_size=48, range_size=48, mode=thumb
; class-group: std::ctype<wchar_t>
; alias: _ZNKSt5ctypeIwE9do_narrowEPKwS2_cPc
; demangled: std::ctype<wchar_t>::do_narrow(wchar_t const*, wchar_t const*, char, char*) const
; decoder-mode: thumb
008a2f80  70 b5                                            push {r4, r5, r6, lr}
008a2f82  04 9e                                            ldr r6, [sp, #0x10]
008a2f84  0c 1c                                            adds r4, r1, #0
008a2f86  08 1c                                            adds r0, r1, #0
008a2f88  91 42                                            cmp r1, r2
008a2f8a  01 d1                                            bne #0x8a2f90
008a2f8c  0f e0                                            b #0x8a2fae
008a2f8e  01 36                                            adds r6, #1
008a2f90  20 cc                                            ldm r4!, {r5}
008a2f92  28 06                                            lsls r0, r5, #0x18
008a2f94  00 0e                                            lsrs r0, r0, #0x18
008a2f96  a8 42                                            cmp r0, r5
008a2f98  00 d0                                            beq #0x8a2f9c
008a2f9a  18 1c                                            adds r0, r3, #0
008a2f9c  30 70                                            strb r0, [r6]
008a2f9e  a2 42                                            cmp r2, r4
008a2fa0  f5 d1                                            bne #0x8a2f8e
008a2fa2  08 1d                                            adds r0, r1, #4
008a2fa4  10 1a                                            subs r0, r2, r0
008a2fa6  80 08                                            lsrs r0, r0, #2
008a2fa8  01 30                                            adds r0, #1
008a2faa  80 00                                            lsls r0, r0, #2
008a2fac  08 18                                            adds r0, r1, r0
008a2fae  70 bd                                            pop {r4, r5, r6, pc}

; FUNCTION 0x008a3218, declared_size=34, range_size=34, mode=thumb
; class-group: std::ctype<wchar_t>
; alias: _ZNKSt5ctypeIwE10do_scan_isENSt10ctype_base4maskEPKwS4_
; demangled: std::ctype<wchar_t>::do_scan_is(std::ctype_base::mask, wchar_t const*, wchar_t const*) const
; decoder-mode: thumb
008a3218  70 b5                                            push {r4, r5, r6, lr}
008a321a  84 b0                                            sub sp, #0x10
008a321c  0e 1c                                            adds r6, r1, #0
008a321e  15 1c                                            adds r5, r2, #0
008a3220  1c 1c                                            adds r4, r3, #0
008a3222  ff f7 0d fe                                      bl #0x8a2e40
008a3226  01 aa                                            add r2, sp, #4
008a3228  50 60                                            str r0, [r2, #4]
008a322a  03 ab                                            add r3, sp, #0xc
008a322c  28 1c                                            adds r0, r5, #0
008a322e  21 1c                                            adds r1, r4, #0
008a3230  01 96                                            str r6, [sp, #4]
008a3232  ff f7 91 ff                                      bl #0x8a3158
008a3236  04 b0                                            add sp, #0x10
008a3238  70 bd                                            pop {r4, r5, r6, pc}

; FUNCTION 0x008a3314, declared_size=34, range_size=34, mode=thumb
; class-group: std::ctype<wchar_t>
; alias: _ZNKSt5ctypeIwE11do_scan_notENSt10ctype_base4maskEPKwS4_
; demangled: std::ctype<wchar_t>::do_scan_not(std::ctype_base::mask, wchar_t const*, wchar_t const*) const
; decoder-mode: thumb
008a3314  70 b5                                            push {r4, r5, r6, lr}
008a3316  84 b0                                            sub sp, #0x10
008a3318  0e 1c                                            adds r6, r1, #0
008a331a  15 1c                                            adds r5, r2, #0
008a331c  1c 1c                                            adds r4, r3, #0
008a331e  ff f7 8f fd                                      bl #0x8a2e40
008a3322  6a 46                                            mov r2, sp
008a3324  02 90                                            str r0, [sp, #8]
008a3326  03 ab                                            add r3, sp, #0xc
008a3328  28 1c                                            adds r0, r5, #0
008a332a  21 1c                                            adds r1, r4, #0
008a332c  01 96                                            str r6, [sp, #4]
008a332e  ff f7 85 ff                                      bl #0x8a323c
008a3332  04 b0                                            add sp, #0x10
008a3334  70 bd                                            pop {r4, r5, r6, pc}

; FUNCTION 0x008a3338, declared_size=32, range_size=32, mode=thumb
; class-group: std::ctype<wchar_t>
; alias: _ZNSt5ctypeIwED1Ev
; demangled: std::ctype<wchar_t>::~ctype()
; decoder-mode: thumb
008a3338  10 b5                                            push {r4, lr}
008a333a  05 4b                                            ldr r3, [pc, #0x14]
008a333c  05 4a                                            ldr r2, [pc, #0x14]
008a333e  04 1c                                            adds r4, r0, #0
008a3340  7b 44                                            add r3, pc
008a3342  9a 58                                            ldr r2, [r3, r2]
008a3344  08 32                                            adds r2, #8
008a3346  02 60                                            str r2, [r0]
008a3348  00 f0 d8 fa                                      bl #0x8a38fc
008a334c  20 1c                                            adds r0, r4, #0
008a334e  10 bd                                            pop {r4, pc}
; mapping-symbol data/literal pool
008a3350  54 17 0f 00 f0 21 00 00                          .byte 0x54, 0x17, 0x0f, 0x00, 0xf0, 0x21, 0x00, 0x00

; FUNCTION 0x008a3358, declared_size=18, range_size=18, mode=thumb
; class-group: std::ctype<wchar_t>
; alias: _ZNSt5ctypeIwED0Ev
; demangled: std::ctype<wchar_t>::~ctype()
; decoder-mode: thumb
008a3358  10 b5                                            push {r4, lr}
008a335a  04 1c                                            adds r4, r0, #0
008a335c  ff f7 ec ff                                      bl #0x8a3338
008a3360  20 1c                                            adds r0, r4, #0
008a3362  6a f6 a6 e7                                      blx #0x30e2b0
008a3366  20 1c                                            adds r0, r4, #0
008a3368  10 bd                                            pop {r4, pc}

; FUNCTION 0x008a336c, declared_size=32, range_size=32, mode=thumb
; class-group: std::ctype<wchar_t>
; alias: _ZNSt5ctypeIwED2Ev
; demangled: std::ctype<wchar_t>::~ctype()
; decoder-mode: thumb
008a336c  10 b5                                            push {r4, lr}
008a336e  05 4b                                            ldr r3, [pc, #0x14]
008a3370  05 4a                                            ldr r2, [pc, #0x14]
008a3372  04 1c                                            adds r4, r0, #0
008a3374  7b 44                                            add r3, pc
008a3376  9a 58                                            ldr r2, [r3, r2]
008a3378  08 32                                            adds r2, #8
008a337a  02 60                                            str r2, [r0]
008a337c  00 f0 be fa                                      bl #0x8a38fc
008a3380  20 1c                                            adds r0, r4, #0
008a3382  10 bd                                            pop {r4, pc}
; mapping-symbol data/literal pool
008a3384  20 17 0f 00 f0 21 00 00                          .byte 0x20, 0x17, 0x0f, 0x00, 0xf0, 0x21, 0x00, 0x00

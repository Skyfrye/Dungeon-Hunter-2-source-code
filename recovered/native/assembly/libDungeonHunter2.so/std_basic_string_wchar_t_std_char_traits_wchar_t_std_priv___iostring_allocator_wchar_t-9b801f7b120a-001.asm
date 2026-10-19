; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008a4d48, declared_size=68, range_size=68, mode=thumb
; class-group: std::basic_string<wchar_t, std::char_traits<wchar_t>, std::priv::__iostring_allocator<wchar_t> >
; alias: _ZNSbIwSt11char_traitsIwENSt4priv20__iostring_allocatorIwEEE20_M_compute_next_sizeEj
; demangled: std::basic_string<wchar_t, std::char_traits<wchar_t>, std::priv::__iostring_allocator<wchar_t> >::_M_compute_next_size(unsigned int)
; decoder-mode: thumb
008a4d48  70 b5                                            push {r4, r5, r6, lr}
008a4d4a  89 23                                            movs r3, #0x89
008a4d4c  db 00                                            lsls r3, r3, #3
008a4d4e  c3 58                                            ldr r3, [r0, r3]
008a4d50  04 6c                                            ldr r4, [r0, #0x40]
008a4d52  0d 1c                                            adds r5, r1, #0
008a4d54  e4 1a                                            subs r4, r4, r3
008a4d56  0b 4b                                            ldr r3, [pc, #0x2c]
008a4d58  a4 10                                            asrs r4, r4, #2
008a4d5a  1b 1b                                            subs r3, r3, r4
008a4d5c  ab 42                                            cmp r3, r5
008a4d5e  0c d3                                            blo #0x8a4d7a
008a4d60  60 1c                                            adds r0, r4, #1
008a4d62  23 1c                                            adds r3, r4, #0
008a4d64  ac 42                                            cmp r4, r5
008a4d66  00 d2                                            bhs #0x8a4d6a
008a4d68  2b 1c                                            adds r3, r5, #0
008a4d6a  c0 18                                            adds r0, r0, r3
008a4d6c  05 4b                                            ldr r3, [pc, #0x14]
008a4d6e  98 42                                            cmp r0, r3
008a4d70  01 d8                                            bhi #0x8a4d76
008a4d72  a0 42                                            cmp r0, r4
008a4d74  00 d2                                            bhs #0x8a4d78
008a4d76  03 48                                            ldr r0, [pc, #0xc]
008a4d78  70 bd                                            pop {r4, r5, r6, pc}
008a4d7a  03 48                                            ldr r0, [pc, #0xc]
008a4d7c  78 44                                            add r0, pc
008a4d7e  fd f7 a9 fd                                      bl #0x8a28d4
008a4d82  ed e7                                            b #0x8a4d60
; mapping-symbol data/literal pool
008a4d84  fe ff ff 3f 68 0a 07 00                          .byte 0xfe, 0xff, 0xff, 0x3f, 0x68, 0x0a, 0x07, 0x00

; FUNCTION 0x008a529c, declared_size=44, range_size=44, mode=thumb
; class-group: std::basic_string<wchar_t, std::char_traits<wchar_t>, std::priv::__iostring_allocator<wchar_t> >
; alias: _ZNSbIwSt11char_traitsIwENSt4priv20__iostring_allocatorIwEEE5eraseEPwS5_
; demangled: std::basic_string<wchar_t, std::char_traits<wchar_t>, std::priv::__iostring_allocator<wchar_t> >::erase(wchar_t*, wchar_t*)
; decoder-mode: thumb
008a529c  70 b5                                            push {r4, r5, r6, lr}
008a529e  15 1c                                            adds r5, r2, #0
008a52a0  06 1c                                            adds r6, r0, #0
008a52a2  0c 1c                                            adds r4, r1, #0
008a52a4  a9 42                                            cmp r1, r5
008a52a6  0d d0                                            beq #0x8a52c4
008a52a8  02 6c                                            ldr r2, [r0, #0x40]
008a52aa  08 1c                                            adds r0, r1, #0
008a52ac  29 1c                                            adds r1, r5, #0
008a52ae  52 1b                                            subs r2, r2, r5
008a52b0  92 10                                            asrs r2, r2, #2
008a52b2  01 32                                            adds r2, #1
008a52b4  69 f6 12 e2                                      blx #0x30e6dc
008a52b8  2d 1b                                            subs r5, r5, r4
008a52ba  33 6c                                            ldr r3, [r6, #0x40]
008a52bc  ad 10                                            asrs r5, r5, #2
008a52be  ad 00                                            lsls r5, r5, #2
008a52c0  5d 1b                                            subs r5, r3, r5
008a52c2  35 64                                            str r5, [r6, #0x40]
008a52c4  20 1c                                            adds r0, r4, #0
008a52c6  70 bd                                            pop {r4, r5, r6, pc}

; FUNCTION 0x008b9b50, declared_size=44, range_size=44, mode=thumb
; class-group: std::basic_string<wchar_t, std::char_traits<wchar_t>, std::priv::__iostring_allocator<wchar_t> >
; alias: _ZNSbIwSt11char_traitsIwENSt4priv20__iostring_allocatorIwEEE20_M_compute_next_sizeEj.clone.0
; demangled: std::basic_string<wchar_t, std::char_traits<wchar_t>, std::priv::__iostring_allocator<wchar_t> >::_M_compute_next_size(unsigned int) [clone .clone.0]
; decoder-mode: thumb
008b9b50  89 22                                            movs r2, #0x89
008b9b52  d2 00                                            lsls r2, r2, #3
008b9b54  01 6c                                            ldr r1, [r0, #0x40]
008b9b56  83 58                                            ldr r3, [r0, r2]
008b9b58  cb 1a                                            subs r3, r1, r3
008b9b5a  9b 10                                            asrs r3, r3, #2
008b9b5c  58 1c                                            adds r0, r3, #1
008b9b5e  1a 1e                                            subs r2, r3, #0
008b9b60  07 d0                                            beq #0x8b9b72
008b9b62  80 18                                            adds r0, r0, r2
008b9b64  04 4a                                            ldr r2, [pc, #0x10]
008b9b66  90 42                                            cmp r0, r2
008b9b68  01 d8                                            bhi #0x8b9b6e
008b9b6a  83 42                                            cmp r3, r0
008b9b6c  00 d9                                            bls #0x8b9b70
008b9b6e  02 48                                            ldr r0, [pc, #8]
008b9b70  70 47                                            bx lr
008b9b72  01 22                                            movs r2, #1
008b9b74  f5 e7                                            b #0x8b9b62
008b9b76  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008b9b78  fe ff ff 3f                                      .byte 0xfe, 0xff, 0xff, 0x3f

; FUNCTION 0x008b9ca4, declared_size=104, range_size=104, mode=thumb
; class-group: std::basic_string<wchar_t, std::char_traits<wchar_t>, std::priv::__iostring_allocator<wchar_t> >
; alias: _ZNSbIwSt11char_traitsIwENSt4priv20__iostring_allocatorIwEEE10_M_reserveEj
; demangled: std::basic_string<wchar_t, std::char_traits<wchar_t>, std::priv::__iostring_allocator<wchar_t> >::_M_reserve(unsigned int)
; decoder-mode: thumb
008b9ca4  f8 b5                                            push {r3, r4, r5, r6, r7, lr}
008b9ca6  18 4b                                            ldr r3, [pc, #0x60]
008b9ca8  04 1c                                            adds r4, r0, #0
008b9caa  05 1c                                            adds r5, r0, #0
008b9cac  0f 1c                                            adds r7, r1, #0
008b9cae  44 34                                            adds r4, #0x44
008b9cb0  99 42                                            cmp r1, r3
008b9cb2  22 d8                                            bhi #0x8b9cfa
008b9cb4  89 23                                            movs r3, #0x89
008b9cb6  db 00                                            lsls r3, r3, #3
008b9cb8  e8 58                                            ldr r0, [r5, r3]
008b9cba  2e 6c                                            ldr r6, [r5, #0x40]
008b9cbc  36 1a                                            subs r6, r6, r0
008b9cbe  b6 10                                            asrs r6, r6, #2
008b9cc0  b4 46                                            mov ip, r6
008b9cc2  63 46                                            mov r3, ip
008b9cc4  26 1c                                            adds r6, r4, #0
008b9cc6  00 2b                                            cmp r3, #0
008b9cc8  0a dd                                            ble #0x8b9ce0
008b9cca  62 46                                            mov r2, ip
008b9ccc  00 23                                            movs r3, #0
008b9cce  c1 58                                            ldr r1, [r0, r3]
008b9cd0  01 3a                                            subs r2, #1
008b9cd2  e1 50                                            str r1, [r4, r3]
008b9cd4  04 33                                            adds r3, #4
008b9cd6  00 2a                                            cmp r2, #0
008b9cd8  f9 d1                                            bne #0x8b9cce
008b9cda  63 46                                            mov r3, ip
008b9cdc  9e 00                                            lsls r6, r3, #2
008b9cde  a6 19                                            adds r6, r4, r6
008b9ce0  00 23                                            movs r3, #0
008b9ce2  33 60                                            str r3, [r6]
008b9ce4  28 1c                                            adds r0, r5, #0
008b9ce6  eb f7 b3 fe                                      bl #0x8a5a50
008b9cea  bf 00                                            lsls r7, r7, #2
008b9cec  89 23                                            movs r3, #0x89
008b9cee  e7 19                                            adds r7, r4, r7
008b9cf0  db 00                                            lsls r3, r3, #3
008b9cf2  2f 60                                            str r7, [r5]
008b9cf4  2e 64                                            str r6, [r5, #0x40]
008b9cf6  ec 50                                            str r4, [r5, r3]
008b9cf8  f8 bd                                            pop {r3, r4, r5, r6, r7, pc}
008b9cfa  20 1c                                            adds r0, r4, #0
008b9cfc  00 22                                            movs r2, #0
008b9cfe  eb f7 b3 ff                                      bl #0x8a5c68
008b9d02  04 1c                                            adds r4, r0, #0
008b9d04  d6 e7                                            b #0x8b9cb4
008b9d06  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008b9d08  01 01 00 00                                      .byte 0x01, 0x01, 0x00, 0x00

; FUNCTION 0x008b9d0c, declared_size=74, range_size=74, mode=thumb
; class-group: std::basic_string<wchar_t, std::char_traits<wchar_t>, std::priv::__iostring_allocator<wchar_t> >
; alias: _ZNSbIwSt11char_traitsIwENSt4priv20__iostring_allocatorIwEEE9push_backEw
; demangled: std::basic_string<wchar_t, std::char_traits<wchar_t>, std::priv::__iostring_allocator<wchar_t> >::push_back(wchar_t)
; decoder-mode: thumb
008b9d0c  70 b5                                            push {r4, r5, r6, lr}
008b9d0e  89 23                                            movs r3, #0x89
008b9d10  db 00                                            lsls r3, r3, #3
008b9d12  c3 58                                            ldr r3, [r0, r3]
008b9d14  04 1c                                            adds r4, r0, #0
008b9d16  0d 1c                                            adds r5, r1, #0
008b9d18  a3 42                                            cmp r3, r4
008b9d1a  16 d0                                            beq #0x8b9d4a
008b9d1c  02 68                                            ldr r2, [r0]
008b9d1e  03 6c                                            ldr r3, [r0, #0x40]
008b9d20  d2 1a                                            subs r2, r2, r3
008b9d22  92 10                                            asrs r2, r2, #2
008b9d24  01 2a                                            cmp r2, #1
008b9d26  07 d0                                            beq #0x8b9d38
008b9d28  00 22                                            movs r2, #0
008b9d2a  5a 60                                            str r2, [r3, #4]
008b9d2c  23 6c                                            ldr r3, [r4, #0x40]
008b9d2e  1d 60                                            str r5, [r3]
008b9d30  23 6c                                            ldr r3, [r4, #0x40]
008b9d32  04 33                                            adds r3, #4
008b9d34  23 64                                            str r3, [r4, #0x40]
008b9d36  70 bd                                            pop {r4, r5, r6, pc}
008b9d38  20 1c                                            adds r0, r4, #0
008b9d3a  ff f7 09 ff                                      bl #0x8b9b50
008b9d3e  01 1c                                            adds r1, r0, #0
008b9d40  20 1c                                            adds r0, r4, #0
008b9d42  ff f7 af ff                                      bl #0x8b9ca4
008b9d46  23 6c                                            ldr r3, [r4, #0x40]
008b9d48  ee e7                                            b #0x8b9d28
008b9d4a  03 6c                                            ldr r3, [r0, #0x40]
008b9d4c  1a 1a                                            subs r2, r3, r0
008b9d4e  92 10                                            asrs r2, r2, #2
008b9d50  52 42                                            rsbs r2, r2, #0
008b9d52  10 32                                            adds r2, #0x10
008b9d54  e6 e7                                            b #0x8b9d24

; FUNCTION 0x008b9d58, declared_size=252, range_size=252, mode=thumb
; class-group: std::basic_string<wchar_t, std::char_traits<wchar_t>, std::priv::__iostring_allocator<wchar_t> >
; alias: _ZNSbIwSt11char_traitsIwENSt4priv20__iostring_allocatorIwEEE13_M_insert_auxEPww
; demangled: std::basic_string<wchar_t, std::char_traits<wchar_t>, std::priv::__iostring_allocator<wchar_t> >::_M_insert_aux(wchar_t*, wchar_t)
; decoder-mode: thumb
008b9d58  f0 b5                                            push {r4, r5, r6, r7, lr}
008b9d5a  57 46                                            mov r7, sl
008b9d5c  4e 46                                            mov r6, sb
008b9d5e  45 46                                            mov r5, r8
008b9d60  e0 b4                                            push {r5, r6, r7}
008b9d62  89 23                                            movs r3, #0x89
008b9d64  db 00                                            lsls r3, r3, #3
008b9d66  c3 58                                            ldr r3, [r0, r3]
008b9d68  04 1c                                            adds r4, r0, #0
008b9d6a  0d 1c                                            adds r5, r1, #0
008b9d6c  91 46                                            mov sb, r2
008b9d6e  a3 42                                            cmp r3, r4
008b9d70  60 d0                                            beq #0x8b9e34
008b9d72  02 68                                            ldr r2, [r0]
008b9d74  03 6c                                            ldr r3, [r0, #0x40]
008b9d76  d2 1a                                            subs r2, r2, r3
008b9d78  92 10                                            asrs r2, r2, #2
008b9d7a  01 2a                                            cmp r2, #1
008b9d7c  14 d9                                            bls #0x8b9da8
008b9d7e  00 22                                            movs r2, #0
008b9d80  5a 60                                            str r2, [r3, #4]
008b9d82  22 6c                                            ldr r2, [r4, #0x40]
008b9d84  28 1d                                            adds r0, r5, #4
008b9d86  29 1c                                            adds r1, r5, #0
008b9d88  52 1b                                            subs r2, r2, r5
008b9d8a  92 10                                            asrs r2, r2, #2
008b9d8c  54 f6 a6 e4                                      blx #0x30e6dc
008b9d90  4a 46                                            mov r2, sb
008b9d92  2a 60                                            str r2, [r5]
008b9d94  23 6c                                            ldr r3, [r4, #0x40]
008b9d96  2e 1c                                            adds r6, r5, #0
008b9d98  04 33                                            adds r3, #4
008b9d9a  23 64                                            str r3, [r4, #0x40]
008b9d9c  30 1c                                            adds r0, r6, #0
008b9d9e  1c bc                                            pop {r2, r3, r4}
008b9da0  90 46                                            mov r8, r2
008b9da2  99 46                                            mov sb, r3
008b9da4  a2 46                                            mov sl, r4
008b9da6  f0 bd                                            pop {r4, r5, r6, r7, pc}
008b9da8  20 1c                                            adds r0, r4, #0
008b9daa  ff f7 d1 fe                                      bl #0x8b9b50
008b9dae  28 4b                                            ldr r3, [pc, #0xa0]
008b9db0  27 1c                                            adds r7, r4, #0
008b9db2  82 46                                            mov sl, r0
008b9db4  44 37                                            adds r7, #0x44
008b9db6  9a 45                                            cmp sl, r3
008b9db8  42 d8                                            bhi #0x8b9e40
008b9dba  89 23                                            movs r3, #0x89
008b9dbc  db 00                                            lsls r3, r3, #3
008b9dbe  e0 58                                            ldr r0, [r4, r3]
008b9dc0  2e 1a                                            subs r6, r5, r0
008b9dc2  b6 10                                            asrs r6, r6, #2
008b9dc4  b4 46                                            mov ip, r6
008b9dc6  63 46                                            mov r3, ip
008b9dc8  3e 1c                                            adds r6, r7, #0
008b9dca  00 2b                                            cmp r3, #0
008b9dcc  0a dd                                            ble #0x8b9de4
008b9dce  62 46                                            mov r2, ip
008b9dd0  00 23                                            movs r3, #0
008b9dd2  c1 58                                            ldr r1, [r0, r3]
008b9dd4  01 3a                                            subs r2, #1
008b9dd6  f9 50                                            str r1, [r7, r3]
008b9dd8  04 33                                            adds r3, #4
008b9dda  00 2a                                            cmp r2, #0
008b9ddc  f9 d1                                            bne #0x8b9dd2
008b9dde  62 46                                            mov r2, ip
008b9de0  96 00                                            lsls r6, r2, #2
008b9de2  be 19                                            adds r6, r7, r6
008b9de4  32 1c                                            adds r2, r6, #0
008b9de6  04 32                                            adds r2, #4
008b9de8  4b 46                                            mov r3, sb
008b9dea  90 46                                            mov r8, r2
008b9dec  04 3a                                            subs r2, #4
008b9dee  08 c2                                            stm r2!, {r3}
008b9df0  23 6c                                            ldr r3, [r4, #0x40]
008b9df2  5b 1b                                            subs r3, r3, r5
008b9df4  9b 10                                            asrs r3, r3, #2
008b9df6  9c 46                                            mov ip, r3
008b9df8  00 2b                                            cmp r3, #0
008b9dfa  0b dd                                            ble #0x8b9e14
008b9dfc  1a 1c                                            adds r2, r3, #0
008b9dfe  00 23                                            movs r3, #0
008b9e00  e8 58                                            ldr r0, [r5, r3]
008b9e02  f1 18                                            adds r1, r6, r3
008b9e04  01 3a                                            subs r2, #1
008b9e06  48 60                                            str r0, [r1, #4]
008b9e08  04 33                                            adds r3, #4
008b9e0a  00 2a                                            cmp r2, #0
008b9e0c  f8 d1                                            bne #0x8b9e00
008b9e0e  62 46                                            mov r2, ip
008b9e10  93 00                                            lsls r3, r2, #2
008b9e12  98 44                                            add r8, r3
008b9e14  00 23                                            movs r3, #0
008b9e16  42 46                                            mov r2, r8
008b9e18  13 60                                            str r3, [r2]
008b9e1a  20 1c                                            adds r0, r4, #0
008b9e1c  eb f7 18 fe                                      bl #0x8a5a50
008b9e20  52 46                                            mov r2, sl
008b9e22  93 00                                            lsls r3, r2, #2
008b9e24  fb 18                                            adds r3, r7, r3
008b9e26  23 60                                            str r3, [r4]
008b9e28  43 46                                            mov r3, r8
008b9e2a  23 64                                            str r3, [r4, #0x40]
008b9e2c  89 23                                            movs r3, #0x89
008b9e2e  db 00                                            lsls r3, r3, #3
008b9e30  e7 50                                            str r7, [r4, r3]
008b9e32  b3 e7                                            b #0x8b9d9c
008b9e34  03 6c                                            ldr r3, [r0, #0x40]
008b9e36  1a 1a                                            subs r2, r3, r0
008b9e38  92 10                                            asrs r2, r2, #2
008b9e3a  52 42                                            rsbs r2, r2, #0
008b9e3c  10 32                                            adds r2, #0x10
008b9e3e  9c e7                                            b #0x8b9d7a
008b9e40  38 1c                                            adds r0, r7, #0
008b9e42  51 46                                            mov r1, sl
008b9e44  00 22                                            movs r2, #0
008b9e46  eb f7 0f ff                                      bl #0x8a5c68
008b9e4a  07 1c                                            adds r7, r0, #0
008b9e4c  b5 e7                                            b #0x8b9dba
008b9e4e  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008b9e50  01 01 00 00                                      .byte 0x01, 0x01, 0x00, 0x00

; FUNCTION 0x008b9e54, declared_size=28, range_size=28, mode=thumb
; class-group: std::basic_string<wchar_t, std::char_traits<wchar_t>, std::priv::__iostring_allocator<wchar_t> >
; alias: _ZNSbIwSt11char_traitsIwENSt4priv20__iostring_allocatorIwEEE6insertEPww
; demangled: std::basic_string<wchar_t, std::char_traits<wchar_t>, std::priv::__iostring_allocator<wchar_t> >::insert(wchar_t*, wchar_t)
; decoder-mode: thumb
008b9e54  10 b5                                            push {r4, lr}
008b9e56  03 6c                                            ldr r3, [r0, #0x40]
008b9e58  04 1c                                            adds r4, r0, #0
008b9e5a  99 42                                            cmp r1, r3
008b9e5c  02 d0                                            beq #0x8b9e64
008b9e5e  ff f7 7b ff                                      bl #0x8b9d58
008b9e62  10 bd                                            pop {r4, pc}
008b9e64  11 1c                                            adds r1, r2, #0
008b9e66  ff f7 51 ff                                      bl #0x8b9d0c
008b9e6a  20 6c                                            ldr r0, [r4, #0x40]
008b9e6c  04 38                                            subs r0, #4
008b9e6e  f8 e7                                            b #0x8b9e62

; FUNCTION 0x008bb3c8, declared_size=78, range_size=78, mode=thumb
; class-group: std::basic_string<wchar_t, std::char_traits<wchar_t>, std::priv::__iostring_allocator<wchar_t> >
; alias: _ZNSbIwSt11char_traitsIwENSt4priv20__iostring_allocatorIwEEE6appendEjw.clone.2
; demangled: std::basic_string<wchar_t, std::char_traits<wchar_t>, std::priv::__iostring_allocator<wchar_t> >::append(unsigned int, wchar_t) [clone .clone.2]
; decoder-mode: thumb
008bb3c8  70 b5                                            push {r4, r5, r6, lr}
008bb3ca  89 23                                            movs r3, #0x89
008bb3cc  db 00                                            lsls r3, r3, #3
008bb3ce  c3 58                                            ldr r3, [r0, r3]
008bb3d0  04 1c                                            adds r4, r0, #0
008bb3d2  0d 1c                                            adds r5, r1, #0
008bb3d4  a3 42                                            cmp r3, r4
008bb3d6  18 d0                                            beq #0x8bb40a
008bb3d8  02 68                                            ldr r2, [r0]
008bb3da  03 6c                                            ldr r3, [r0, #0x40]
008bb3dc  d2 1a                                            subs r2, r2, r3
008bb3de  92 10                                            asrs r2, r2, #2
008bb3e0  01 2a                                            cmp r2, #1
008bb3e2  08 d9                                            bls #0x8bb3f6
008bb3e4  00 22                                            movs r2, #0
008bb3e6  5a 60                                            str r2, [r3, #4]
008bb3e8  23 6c                                            ldr r3, [r4, #0x40]
008bb3ea  20 1c                                            adds r0, r4, #0
008bb3ec  1d 60                                            str r5, [r3]
008bb3ee  23 6c                                            ldr r3, [r4, #0x40]
008bb3f0  04 33                                            adds r3, #4
008bb3f2  23 64                                            str r3, [r4, #0x40]
008bb3f4  70 bd                                            pop {r4, r5, r6, pc}
008bb3f6  01 21                                            movs r1, #1
008bb3f8  20 1c                                            adds r0, r4, #0
008bb3fa  e9 f7 a5 fc                                      bl #0x8a4d48
008bb3fe  01 1c                                            adds r1, r0, #0
008bb400  20 1c                                            adds r0, r4, #0
008bb402  fe f7 4f fc                                      bl #0x8b9ca4
008bb406  23 6c                                            ldr r3, [r4, #0x40]
008bb408  ec e7                                            b #0x8bb3e4
008bb40a  03 6c                                            ldr r3, [r0, #0x40]
008bb40c  1a 1a                                            subs r2, r3, r0
008bb40e  92 10                                            asrs r2, r2, #2
008bb410  52 42                                            rsbs r2, r2, #0
008bb412  10 32                                            adds r2, #0x10
008bb414  e4 e7                                            b #0x8bb3e0

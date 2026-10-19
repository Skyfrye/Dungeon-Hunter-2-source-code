; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008a5ca8, declared_size=200, range_size=200, mode=thumb
; class-group: std::basic_string<wchar_t, std::char_traits<wchar_t>, std::priv::__iostring_allocator<wchar_t> >& std::basic_string<wchar_t, std::char_traits<wchar_t>, std::priv::__iostring_allocator<wchar_t> >
; alias: _ZNSbIwSt11char_traitsIwENSt4priv20__iostring_allocatorIwEEE10_M_appendTIPKwEERS4_T_S9_RKSt20forward_iterator_tag
; demangled: std::basic_string<wchar_t, std::char_traits<wchar_t>, std::priv::__iostring_allocator<wchar_t> >& std::basic_string<wchar_t, std::char_traits<wchar_t>, std::priv::__iostring_allocator<wchar_t> >::_M_appendT<wchar_t const*>(wchar_t const*, wchar_t const*, std::forward_iterator_tag const&)
; decoder-mode: thumb
008a5ca8  f8 b5                                            push {r3, r4, r5, r6, r7, lr}
008a5caa  4f 46                                            mov r7, sb
008a5cac  46 46                                            mov r6, r8
008a5cae  c0 b4                                            push {r6, r7}
008a5cb0  04 1c                                            adds r4, r0, #0
008a5cb2  0d 1c                                            adds r5, r1, #0
008a5cb4  91 42                                            cmp r1, r2
008a5cb6  35 d0                                            beq #0x8a5d24
008a5cb8  89 23                                            movs r3, #0x89
008a5cba  db 00                                            lsls r3, r3, #3
008a5cbc  c3 58                                            ldr r3, [r0, r3]
008a5cbe  56 1a                                            subs r6, r2, r1
008a5cc0  b7 10                                            asrs r7, r6, #2
008a5cc2  a3 42                                            cmp r3, r4
008a5cc4  45 d0                                            beq #0x8a5d52
008a5cc6  01 68                                            ldr r1, [r0]
008a5cc8  03 6c                                            ldr r3, [r0, #0x40]
008a5cca  c9 1a                                            subs r1, r1, r3
008a5ccc  89 10                                            asrs r1, r1, #2
008a5cce  8f 42                                            cmp r7, r1
008a5cd0  2d d3                                            blo #0x8a5d2e
008a5cd2  39 1c                                            adds r1, r7, #0
008a5cd4  20 1c                                            adds r0, r4, #0
008a5cd6  ff f7 37 f8                                      bl #0x8a4d48
008a5cda  24 4b                                            ldr r3, [pc, #0x90]
008a5cdc  27 1c                                            adds r7, r4, #0
008a5cde  80 46                                            mov r8, r0
008a5ce0  44 37                                            adds r7, #0x44
008a5ce2  98 45                                            cmp r8, r3
008a5ce4  3b d8                                            bhi #0x8a5d5e
008a5ce6  89 23                                            movs r3, #0x89
008a5ce8  db 00                                            lsls r3, r3, #3
008a5cea  e1 58                                            ldr r1, [r4, r3]
008a5cec  23 6c                                            ldr r3, [r4, #0x40]
008a5cee  38 1c                                            adds r0, r7, #0
008a5cf0  99 42                                            cmp r1, r3
008a5cf2  05 d0                                            beq #0x8a5d00
008a5cf4  5b 1a                                            subs r3, r3, r1
008a5cf6  1a 1c                                            adds r2, r3, #0
008a5cf8  99 46                                            mov sb, r3
008a5cfa  68 f6 b6 e5                                      blx #0x30e868
008a5cfe  48 44                                            add r0, sb
008a5d00  32 1c                                            adds r2, r6, #0
008a5d02  29 1c                                            adds r1, r5, #0
008a5d04  68 f6 b0 e5                                      blx #0x30e868
008a5d08  00 23                                            movs r3, #0
008a5d0a  86 19                                            adds r6, r0, r6
008a5d0c  33 60                                            str r3, [r6]
008a5d0e  20 1c                                            adds r0, r4, #0
008a5d10  ff f7 9e fe                                      bl #0x8a5a50
008a5d14  42 46                                            mov r2, r8
008a5d16  93 00                                            lsls r3, r2, #2
008a5d18  fb 18                                            adds r3, r7, r3
008a5d1a  23 60                                            str r3, [r4]
008a5d1c  89 23                                            movs r3, #0x89
008a5d1e  db 00                                            lsls r3, r3, #3
008a5d20  26 64                                            str r6, [r4, #0x40]
008a5d22  e7 50                                            str r7, [r4, r3]
008a5d24  20 1c                                            adds r0, r4, #0
008a5d26  0c bc                                            pop {r2, r3}
008a5d28  90 46                                            mov r8, r2
008a5d2a  99 46                                            mov sb, r3
008a5d2c  f8 bd                                            pop {r3, r4, r5, r6, r7, pc}
008a5d2e  28 68                                            ldr r0, [r5]
008a5d30  29 1d                                            adds r1, r5, #4
008a5d32  18 60                                            str r0, [r3]
008a5d34  20 6c                                            ldr r0, [r4, #0x40]
008a5d36  8a 42                                            cmp r2, r1
008a5d38  04 d0                                            beq #0x8a5d44
008a5d3a  04 30                                            adds r0, #4
008a5d3c  52 1a                                            subs r2, r2, r1
008a5d3e  68 f6 94 e5                                      blx #0x30e868
008a5d42  20 6c                                            ldr r0, [r4, #0x40]
008a5d44  bf 00                                            lsls r7, r7, #2
008a5d46  00 23                                            movs r3, #0
008a5d48  c3 51                                            str r3, [r0, r7]
008a5d4a  23 6c                                            ldr r3, [r4, #0x40]
008a5d4c  df 19                                            adds r7, r3, r7
008a5d4e  27 64                                            str r7, [r4, #0x40]
008a5d50  e8 e7                                            b #0x8a5d24
008a5d52  03 6c                                            ldr r3, [r0, #0x40]
008a5d54  19 1a                                            subs r1, r3, r0
008a5d56  89 10                                            asrs r1, r1, #2
008a5d58  49 42                                            rsbs r1, r1, #0
008a5d5a  10 31                                            adds r1, #0x10
008a5d5c  b7 e7                                            b #0x8a5cce
008a5d5e  38 1c                                            adds r0, r7, #0
008a5d60  41 46                                            mov r1, r8
008a5d62  00 22                                            movs r2, #0
008a5d64  ff f7 80 ff                                      bl #0x8a5c68
008a5d68  07 1c                                            adds r7, r0, #0
008a5d6a  bc e7                                            b #0x8a5ce6
; mapping-symbol data/literal pool
008a5d6c  01 01 00 00                                      .byte 0x01, 0x01, 0x00, 0x00

; FUNCTION 0x008a5d70, declared_size=56, range_size=56, mode=thumb
; class-group: std::basic_string<wchar_t, std::char_traits<wchar_t>, std::priv::__iostring_allocator<wchar_t> >& std::basic_string<wchar_t, std::char_traits<wchar_t>, std::priv::__iostring_allocator<wchar_t> >
; alias: _ZNSbIwSt11char_traitsIwENSt4priv20__iostring_allocatorIwEEE18_M_assign_dispatchIPKwEERS4_T_S9_RKSt12__false_type
; demangled: std::basic_string<wchar_t, std::char_traits<wchar_t>, std::priv::__iostring_allocator<wchar_t> >& std::basic_string<wchar_t, std::char_traits<wchar_t>, std::priv::__iostring_allocator<wchar_t> >::_M_assign_dispatch<wchar_t const*>(wchar_t const*, wchar_t const*, std::__false_type const&)
; decoder-mode: thumb
008a5d70  10 b5                                            push {r4, lr}
008a5d72  89 23                                            movs r3, #0x89
008a5d74  db 00                                            lsls r3, r3, #3
008a5d76  82 b0                                            sub sp, #8
008a5d78  04 1c                                            adds r4, r0, #0
008a5d7a  c3 58                                            ldr r3, [r0, r3]
008a5d7c  91 42                                            cmp r1, r2
008a5d7e  06 d0                                            beq #0x8a5d8e
008a5d80  20 6c                                            ldr r0, [r4, #0x40]
008a5d82  83 42                                            cmp r3, r0
008a5d84  0b d0                                            beq #0x8a5d9e
008a5d86  01 c9                                            ldm r1!, {r0}
008a5d88  01 c3                                            stm r3!, {r0}
008a5d8a  8a 42                                            cmp r2, r1
008a5d8c  f8 d1                                            bne #0x8a5d80
008a5d8e  22 6c                                            ldr r2, [r4, #0x40]
008a5d90  20 1c                                            adds r0, r4, #0
008a5d92  19 1c                                            adds r1, r3, #0
008a5d94  ff f7 82 fa                                      bl #0x8a529c
008a5d98  02 b0                                            add sp, #8
008a5d9a  20 1c                                            adds r0, r4, #0
008a5d9c  10 bd                                            pop {r4, pc}
008a5d9e  20 1c                                            adds r0, r4, #0
008a5da0  01 ab                                            add r3, sp, #4
008a5da2  ff f7 81 ff                                      bl #0x8a5ca8
008a5da6  f7 e7                                            b #0x8a5d98

; FUNCTION 0x008bb418, declared_size=200, range_size=200, mode=thumb
; class-group: std::basic_string<wchar_t, std::char_traits<wchar_t>, std::priv::__iostring_allocator<wchar_t> >& std::basic_string<wchar_t, std::char_traits<wchar_t>, std::priv::__iostring_allocator<wchar_t> >
; alias: _ZNSbIwSt11char_traitsIwENSt4priv20__iostring_allocatorIwEEE10_M_appendTIPwEERS4_T_S8_RKSt20forward_iterator_tag
; demangled: std::basic_string<wchar_t, std::char_traits<wchar_t>, std::priv::__iostring_allocator<wchar_t> >& std::basic_string<wchar_t, std::char_traits<wchar_t>, std::priv::__iostring_allocator<wchar_t> >::_M_appendT<wchar_t*>(wchar_t*, wchar_t*, std::forward_iterator_tag const&)
; decoder-mode: thumb
008bb418  f8 b5                                            push {r3, r4, r5, r6, r7, lr}
008bb41a  4f 46                                            mov r7, sb
008bb41c  46 46                                            mov r6, r8
008bb41e  c0 b4                                            push {r6, r7}
008bb420  04 1c                                            adds r4, r0, #0
008bb422  0d 1c                                            adds r5, r1, #0
008bb424  91 42                                            cmp r1, r2
008bb426  1d d0                                            beq #0x8bb464
008bb428  89 23                                            movs r3, #0x89
008bb42a  db 00                                            lsls r3, r3, #3
008bb42c  c3 58                                            ldr r3, [r0, r3]
008bb42e  57 1a                                            subs r7, r2, r1
008bb430  be 10                                            asrs r6, r7, #2
008bb432  a3 42                                            cmp r3, r4
008bb434  4c d0                                            beq #0x8bb4d0
008bb436  01 68                                            ldr r1, [r0]
008bb438  03 6c                                            ldr r3, [r0, #0x40]
008bb43a  c9 1a                                            subs r1, r1, r3
008bb43c  89 10                                            asrs r1, r1, #2
008bb43e  8e 42                                            cmp r6, r1
008bb440  15 d2                                            bhs #0x8bb46e
008bb442  28 68                                            ldr r0, [r5]
008bb444  29 1d                                            adds r1, r5, #4
008bb446  18 60                                            str r0, [r3]
008bb448  20 6c                                            ldr r0, [r4, #0x40]
008bb44a  8a 42                                            cmp r2, r1
008bb44c  04 d0                                            beq #0x8bb458
008bb44e  04 30                                            adds r0, #4
008bb450  52 1a                                            subs r2, r2, r1
008bb452  53 f6 0a e2                                      blx #0x30e868
008bb456  20 6c                                            ldr r0, [r4, #0x40]
008bb458  b6 00                                            lsls r6, r6, #2
008bb45a  00 23                                            movs r3, #0
008bb45c  83 51                                            str r3, [r0, r6]
008bb45e  23 6c                                            ldr r3, [r4, #0x40]
008bb460  9e 19                                            adds r6, r3, r6
008bb462  26 64                                            str r6, [r4, #0x40]
008bb464  20 1c                                            adds r0, r4, #0
008bb466  0c bc                                            pop {r2, r3}
008bb468  90 46                                            mov r8, r2
008bb46a  99 46                                            mov sb, r3
008bb46c  f8 bd                                            pop {r3, r4, r5, r6, r7, pc}
008bb46e  31 1c                                            adds r1, r6, #0
008bb470  20 1c                                            adds r0, r4, #0
008bb472  e9 f7 69 fc                                      bl #0x8a4d48
008bb476  19 4b                                            ldr r3, [pc, #0x64]
008bb478  26 1c                                            adds r6, r4, #0
008bb47a  80 46                                            mov r8, r0
008bb47c  44 36                                            adds r6, #0x44
008bb47e  98 45                                            cmp r8, r3
008bb480  1f d8                                            bhi #0x8bb4c2
008bb482  89 23                                            movs r3, #0x89
008bb484  db 00                                            lsls r3, r3, #3
008bb486  e1 58                                            ldr r1, [r4, r3]
008bb488  23 6c                                            ldr r3, [r4, #0x40]
008bb48a  30 1c                                            adds r0, r6, #0
008bb48c  99 42                                            cmp r1, r3
008bb48e  05 d0                                            beq #0x8bb49c
008bb490  5b 1a                                            subs r3, r3, r1
008bb492  1a 1c                                            adds r2, r3, #0
008bb494  99 46                                            mov sb, r3
008bb496  53 f6 e8 e1                                      blx #0x30e868
008bb49a  48 44                                            add r0, sb
008bb49c  3a 1c                                            adds r2, r7, #0
008bb49e  29 1c                                            adds r1, r5, #0
008bb4a0  53 f6 e2 e1                                      blx #0x30e868
008bb4a4  00 23                                            movs r3, #0
008bb4a6  c7 19                                            adds r7, r0, r7
008bb4a8  3b 60                                            str r3, [r7]
008bb4aa  20 1c                                            adds r0, r4, #0
008bb4ac  ea f7 d0 fa                                      bl #0x8a5a50
008bb4b0  42 46                                            mov r2, r8
008bb4b2  93 00                                            lsls r3, r2, #2
008bb4b4  f3 18                                            adds r3, r6, r3
008bb4b6  23 60                                            str r3, [r4]
008bb4b8  89 23                                            movs r3, #0x89
008bb4ba  db 00                                            lsls r3, r3, #3
008bb4bc  27 64                                            str r7, [r4, #0x40]
008bb4be  e6 50                                            str r6, [r4, r3]
008bb4c0  d0 e7                                            b #0x8bb464
008bb4c2  30 1c                                            adds r0, r6, #0
008bb4c4  41 46                                            mov r1, r8
008bb4c6  00 22                                            movs r2, #0
008bb4c8  ea f7 ce fb                                      bl #0x8a5c68
008bb4cc  06 1c                                            adds r6, r0, #0
008bb4ce  d8 e7                                            b #0x8bb482
008bb4d0  03 6c                                            ldr r3, [r0, #0x40]
008bb4d2  19 1a                                            subs r1, r3, r0
008bb4d4  89 10                                            asrs r1, r1, #2
008bb4d6  49 42                                            rsbs r1, r1, #0
008bb4d8  10 31                                            adds r1, #0x10
008bb4da  b0 e7                                            b #0x8bb43e
; mapping-symbol data/literal pool
008bb4dc  01 01 00 00                                      .byte 0x01, 0x01, 0x00, 0x00

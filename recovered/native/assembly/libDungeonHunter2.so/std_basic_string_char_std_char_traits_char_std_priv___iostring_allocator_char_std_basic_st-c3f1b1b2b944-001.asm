; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008a5ab4, declared_size=192, range_size=192, mode=thumb
; class-group: std::basic_string<char, std::char_traits<char>, std::priv::__iostring_allocator<char> >& std::basic_string<char, std::char_traits<char>, std::priv::__iostring_allocator<char> >
; alias: _ZNSbIcSt11char_traitsIcENSt4priv20__iostring_allocatorIcEEE10_M_appendTIPKcEERS4_T_S9_RKSt20forward_iterator_tag
; demangled: std::basic_string<char, std::char_traits<char>, std::priv::__iostring_allocator<char> >& std::basic_string<char, std::char_traits<char>, std::priv::__iostring_allocator<char> >::_M_appendT<char const*>(char const*, char const*, std::forward_iterator_tag const&)
; decoder-mode: thumb
008a5ab4  f0 b5                                            push {r4, r5, r6, r7, lr}
008a5ab6  4f 46                                            mov r7, sb
008a5ab8  46 46                                            mov r6, r8
008a5aba  c0 b4                                            push {r6, r7}
008a5abc  83 b0                                            sub sp, #0xc
008a5abe  04 1c                                            adds r4, r0, #0
008a5ac0  0d 1c                                            adds r5, r1, #0
008a5ac2  91 42                                            cmp r1, r2
008a5ac4  1a d0                                            beq #0x8a5afc
008a5ac6  8c 23                                            movs r3, #0x8c
008a5ac8  5b 00                                            lsls r3, r3, #1
008a5aca  c3 58                                            ldr r3, [r0, r3]
008a5acc  56 1a                                            subs r6, r2, r1
008a5ace  a3 42                                            cmp r3, r4
008a5ad0  48 d0                                            beq #0x8a5b64
008a5ad2  01 68                                            ldr r1, [r0]
008a5ad4  03 69                                            ldr r3, [r0, #0x10]
008a5ad6  c9 1a                                            subs r1, r1, r3
008a5ad8  8e 42                                            cmp r6, r1
008a5ada  15 d2                                            bhs #0x8a5b08
008a5adc  28 78                                            ldrb r0, [r5]
008a5ade  69 1c                                            adds r1, r5, #1
008a5ae0  18 70                                            strb r0, [r3]
008a5ae2  20 69                                            ldr r0, [r4, #0x10]
008a5ae4  8a 42                                            cmp r2, r1
008a5ae6  04 d0                                            beq #0x8a5af2
008a5ae8  01 30                                            adds r0, #1
008a5aea  52 1a                                            subs r2, r2, r1
008a5aec  68 f6 bc e6                                      blx #0x30e868
008a5af0  20 69                                            ldr r0, [r4, #0x10]
008a5af2  00 23                                            movs r3, #0
008a5af4  83 55                                            strb r3, [r0, r6]
008a5af6  23 69                                            ldr r3, [r4, #0x10]
008a5af8  9e 19                                            adds r6, r3, r6
008a5afa  26 61                                            str r6, [r4, #0x10]
008a5afc  03 b0                                            add sp, #0xc
008a5afe  20 1c                                            adds r0, r4, #0
008a5b00  0c bc                                            pop {r2, r3}
008a5b02  90 46                                            mov r8, r2
008a5b04  99 46                                            mov sb, r3
008a5b06  f0 bd                                            pop {r4, r5, r6, r7, pc}
008a5b08  20 1c                                            adds r0, r4, #0
008a5b0a  31 1c                                            adds r1, r6, #0
008a5b0c  ff f7 fc f8                                      bl #0x8a4d08
008a5b10  17 4b                                            ldr r3, [pc, #0x5c]
008a5b12  27 1c                                            adds r7, r4, #0
008a5b14  80 46                                            mov r8, r0
008a5b16  14 37                                            adds r7, #0x14
008a5b18  98 45                                            cmp r8, r3
008a5b1a  04 d9                                            bls #0x8a5b26
008a5b1c  01 90                                            str r0, [sp, #4]
008a5b1e  01 a8                                            add r0, sp, #4
008a5b20  6d f6 38 e7                                      blx #0x313994
008a5b24  07 1c                                            adds r7, r0, #0
008a5b26  8c 23                                            movs r3, #0x8c
008a5b28  5b 00                                            lsls r3, r3, #1
008a5b2a  e1 58                                            ldr r1, [r4, r3]
008a5b2c  23 69                                            ldr r3, [r4, #0x10]
008a5b2e  38 1c                                            adds r0, r7, #0
008a5b30  99 42                                            cmp r1, r3
008a5b32  05 d0                                            beq #0x8a5b40
008a5b34  5b 1a                                            subs r3, r3, r1
008a5b36  1a 1c                                            adds r2, r3, #0
008a5b38  99 46                                            mov sb, r3
008a5b3a  68 f6 96 e6                                      blx #0x30e868
008a5b3e  48 44                                            add r0, sb
008a5b40  32 1c                                            adds r2, r6, #0
008a5b42  29 1c                                            adds r1, r5, #0
008a5b44  68 f6 90 e6                                      blx #0x30e868
008a5b48  00 23                                            movs r3, #0
008a5b4a  86 19                                            adds r6, r0, r6
008a5b4c  33 70                                            strb r3, [r6]
008a5b4e  20 1c                                            adds r0, r4, #0
008a5b50  ff f7 98 ff                                      bl #0x8a5a84
008a5b54  42 46                                            mov r2, r8
008a5b56  bb 18                                            adds r3, r7, r2
008a5b58  23 60                                            str r3, [r4]
008a5b5a  8c 23                                            movs r3, #0x8c
008a5b5c  5b 00                                            lsls r3, r3, #1
008a5b5e  26 61                                            str r6, [r4, #0x10]
008a5b60  e7 50                                            str r7, [r4, r3]
008a5b62  cb e7                                            b #0x8a5afc
008a5b64  03 69                                            ldr r3, [r0, #0x10]
008a5b66  01 1c                                            adds r1, r0, #0
008a5b68  10 31                                            adds r1, #0x10
008a5b6a  c9 1a                                            subs r1, r1, r3
008a5b6c  b4 e7                                            b #0x8a5ad8
008a5b6e  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008a5b70  01 01 00 00                                      .byte 0x01, 0x01, 0x00, 0x00

; FUNCTION 0x008a5b74, declared_size=68, range_size=68, mode=thumb
; class-group: std::basic_string<char, std::char_traits<char>, std::priv::__iostring_allocator<char> >& std::basic_string<char, std::char_traits<char>, std::priv::__iostring_allocator<char> >
; alias: _ZNSbIcSt11char_traitsIcENSt4priv20__iostring_allocatorIcEEE18_M_assign_dispatchIPKcEERS4_T_S9_RKSt12__false_type
; demangled: std::basic_string<char, std::char_traits<char>, std::priv::__iostring_allocator<char> >& std::basic_string<char, std::char_traits<char>, std::priv::__iostring_allocator<char> >::_M_assign_dispatch<char const*>(char const*, char const*, std::__false_type const&)
; decoder-mode: thumb
008a5b74  10 b5                                            push {r4, lr}
008a5b76  8c 23                                            movs r3, #0x8c
008a5b78  5b 00                                            lsls r3, r3, #1
008a5b7a  82 b0                                            sub sp, #8
008a5b7c  04 1c                                            adds r4, r0, #0
008a5b7e  c3 58                                            ldr r3, [r0, r3]
008a5b80  91 42                                            cmp r1, r2
008a5b82  08 d0                                            beq #0x8a5b96
008a5b84  20 69                                            ldr r0, [r4, #0x10]
008a5b86  83 42                                            cmp r3, r0
008a5b88  11 d0                                            beq #0x8a5bae
008a5b8a  08 78                                            ldrb r0, [r1]
008a5b8c  01 31                                            adds r1, #1
008a5b8e  18 70                                            strb r0, [r3]
008a5b90  01 33                                            adds r3, #1
008a5b92  91 42                                            cmp r1, r2
008a5b94  f6 d1                                            bne #0x8a5b84
008a5b96  22 69                                            ldr r2, [r4, #0x10]
008a5b98  93 42                                            cmp r3, r2
008a5b9a  05 d0                                            beq #0x8a5ba8
008a5b9c  11 78                                            ldrb r1, [r2]
008a5b9e  19 70                                            strb r1, [r3]
008a5ba0  9b 1a                                            subs r3, r3, r2
008a5ba2  22 69                                            ldr r2, [r4, #0x10]
008a5ba4  d3 18                                            adds r3, r2, r3
008a5ba6  23 61                                            str r3, [r4, #0x10]
008a5ba8  02 b0                                            add sp, #8
008a5baa  20 1c                                            adds r0, r4, #0
008a5bac  10 bd                                            pop {r4, pc}
008a5bae  20 1c                                            adds r0, r4, #0
008a5bb0  01 ab                                            add r3, sp, #4
008a5bb2  ff f7 7f ff                                      bl #0x8a5ab4
008a5bb6  f7 e7                                            b #0x8a5ba8

; FUNCTION 0x008bad90, declared_size=224, range_size=224, mode=thumb
; class-group: std::basic_string<char, std::char_traits<char>, std::priv::__iostring_allocator<char> >& std::basic_string<char, std::char_traits<char>, std::priv::__iostring_allocator<char> >
; alias: _ZNSbIcSt11char_traitsIcENSt4priv20__iostring_allocatorIcEEE10_M_appendTIPcEERS4_T_S8_RKSt20forward_iterator_tag
; demangled: std::basic_string<char, std::char_traits<char>, std::priv::__iostring_allocator<char> >& std::basic_string<char, std::char_traits<char>, std::priv::__iostring_allocator<char> >::_M_appendT<char*>(char*, char*, std::forward_iterator_tag const&)
; decoder-mode: thumb
008bad90  f0 b5                                            push {r4, r5, r6, r7, lr}
008bad92  4f 46                                            mov r7, sb
008bad94  46 46                                            mov r6, r8
008bad96  c0 b4                                            push {r6, r7}
008bad98  83 b0                                            sub sp, #0xc
008bad9a  04 1c                                            adds r4, r0, #0
008bad9c  0d 1c                                            adds r5, r1, #0
008bad9e  91 42                                            cmp r1, r2
008bada0  1a d0                                            beq #0x8badd8
008bada2  8c 23                                            movs r3, #0x8c
008bada4  5b 00                                            lsls r3, r3, #1
008bada6  c3 58                                            ldr r3, [r0, r3]
008bada8  56 1a                                            subs r6, r2, r1
008badaa  a3 42                                            cmp r3, r4
008badac  56 d0                                            beq #0x8bae5c
008badae  01 68                                            ldr r1, [r0]
008badb0  03 69                                            ldr r3, [r0, #0x10]
008badb2  c9 1a                                            subs r1, r1, r3
008badb4  8e 42                                            cmp r6, r1
008badb6  15 d2                                            bhs #0x8bade4
008badb8  28 78                                            ldrb r0, [r5]
008badba  69 1c                                            adds r1, r5, #1
008badbc  18 70                                            strb r0, [r3]
008badbe  20 69                                            ldr r0, [r4, #0x10]
008badc0  8a 42                                            cmp r2, r1
008badc2  04 d0                                            beq #0x8badce
008badc4  01 30                                            adds r0, #1
008badc6  52 1a                                            subs r2, r2, r1
008badc8  53 f6 4e e5                                      blx #0x30e868
008badcc  20 69                                            ldr r0, [r4, #0x10]
008badce  00 23                                            movs r3, #0
008badd0  83 55                                            strb r3, [r0, r6]
008badd2  23 69                                            ldr r3, [r4, #0x10]
008badd4  9e 19                                            adds r6, r3, r6
008badd6  26 61                                            str r6, [r4, #0x10]
008badd8  03 b0                                            add sp, #0xc
008badda  20 1c                                            adds r0, r4, #0
008baddc  0c bc                                            pop {r2, r3}
008badde  90 46                                            mov r8, r2
008bade0  99 46                                            mov sb, r3
008bade2  f0 bd                                            pop {r4, r5, r6, r7, pc}
008bade4  20 1c                                            adds r0, r4, #0
008bade6  31 1c                                            adds r1, r6, #0
008bade8  e9 f7 8e ff                                      bl #0x8a4d08
008badec  1f 4b                                            ldr r3, [pc, #0x7c]
008badee  27 1c                                            adds r7, r4, #0
008badf0  80 46                                            mov r8, r0
008badf2  14 37                                            adds r7, #0x14
008badf4  98 45                                            cmp r8, r3
008badf6  04 d9                                            bls #0x8bae02
008badf8  01 90                                            str r0, [sp, #4]
008badfa  01 a8                                            add r0, sp, #4
008badfc  58 f6 ca e5                                      blx #0x313994
008bae00  07 1c                                            adds r7, r0, #0
008bae02  8c 23                                            movs r3, #0x8c
008bae04  5b 00                                            lsls r3, r3, #1
008bae06  e1 58                                            ldr r1, [r4, r3]
008bae08  23 69                                            ldr r3, [r4, #0x10]
008bae0a  38 1c                                            adds r0, r7, #0
008bae0c  99 42                                            cmp r1, r3
008bae0e  05 d0                                            beq #0x8bae1c
008bae10  5b 1a                                            subs r3, r3, r1
008bae12  1a 1c                                            adds r2, r3, #0
008bae14  99 46                                            mov sb, r3
008bae16  53 f6 28 e5                                      blx #0x30e868
008bae1a  48 44                                            add r0, sb
008bae1c  32 1c                                            adds r2, r6, #0
008bae1e  29 1c                                            adds r1, r5, #0
008bae20  53 f6 22 e5                                      blx #0x30e868
008bae24  00 23                                            movs r3, #0
008bae26  86 19                                            adds r6, r0, r6
008bae28  33 70                                            strb r3, [r6]
008bae2a  8c 23                                            movs r3, #0x8c
008bae2c  5b 00                                            lsls r3, r3, #1
008bae2e  e0 58                                            ldr r0, [r4, r3]
008bae30  84 42                                            cmp r4, r0
008bae32  0b d0                                            beq #0x8bae4c
008bae34  00 28                                            cmp r0, #0
008bae36  09 d0                                            beq #0x8bae4c
008bae38  23 1c                                            adds r3, r4, #0
008bae3a  14 33                                            adds r3, #0x14
008bae3c  21 68                                            ldr r1, [r4]
008bae3e  98 42                                            cmp r0, r3
008bae40  04 d0                                            beq #0x8bae4c
008bae42  09 1a                                            subs r1, r1, r0
008bae44  80 29                                            cmp r1, #0x80
008bae46  0e d8                                            bhi #0x8bae66
008bae48  fb f7 08 fa                                      bl #0x8b625c
008bae4c  42 46                                            mov r2, r8
008bae4e  bb 18                                            adds r3, r7, r2
008bae50  23 60                                            str r3, [r4]
008bae52  8c 23                                            movs r3, #0x8c
008bae54  5b 00                                            lsls r3, r3, #1
008bae56  26 61                                            str r6, [r4, #0x10]
008bae58  e7 50                                            str r7, [r4, r3]
008bae5a  bd e7                                            b #0x8badd8
008bae5c  03 69                                            ldr r3, [r0, #0x10]
008bae5e  01 1c                                            adds r1, r0, #0
008bae60  10 31                                            adds r1, #0x10
008bae62  c9 1a                                            subs r1, r1, r3
008bae64  a6 e7                                            b #0x8badb4
008bae66  53 f6 24 e2                                      blx #0x30e2b0
008bae6a  ef e7                                            b #0x8bae4c
; mapping-symbol data/literal pool
008bae6c  01 01 00 00                                      .byte 0x01, 0x01, 0x00, 0x00

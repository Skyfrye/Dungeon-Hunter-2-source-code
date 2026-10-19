; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0065ff34, declared_size=40, range_size=40, mode=arm
; class-group: std::priv
; alias: _ZNSt4priv14__copy_trivialEPKvS1_Pv
; demangled: std::priv::__copy_trivial(void const*, void const*, void*)
; decoder-mode: arm
0065ff34  10 40 2d e9                                      push {r4, lr}
0065ff38  00 40 51 e0                                      subs r4, r1, r0
0065ff3c  00 30 a0 e1                                      mov r3, r0
0065ff40  02 00 a0 e1                                      mov r0, r2
0065ff44  03 00 00 0a                                      beq #0x65ff58
0065ff48  03 10 a0 e1                                      mov r1, r3
0065ff4c  04 20 a0 e1                                      mov r2, r4
0065ff50  f8 b7 f2 eb                                      bl #0x30df38
0065ff54  04 00 80 e0                                      add r0, r0, r4
0065ff58  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x008a4958, declared_size=20, range_size=20, mode=thumb
; class-group: std::priv
; alias: _ZNSt4priv11_GetFacetIdEPKSt9money_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE
; demangled: std::priv::_GetFacetId(std::money_get<char, std::istreambuf_iterator<char, std::char_traits<char> > > const*)
; decoder-mode: thumb
008a4958  02 4b                                            ldr r3, [pc, #8]
008a495a  03 4a                                            ldr r2, [pc, #0xc]
008a495c  7b 44                                            add r3, pc
008a495e  98 58                                            ldr r0, [r3, r2]
008a4960  70 47                                            bx lr
008a4962  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008a4964  38 01 0f 00 e8 1d 00 00                          .byte 0x38, 0x01, 0x0f, 0x00, 0xe8, 0x1d, 0x00, 0x00

; FUNCTION 0x008a496c, declared_size=20, range_size=20, mode=thumb
; class-group: std::priv
; alias: _ZNSt4priv11_GetFacetIdEPKSt9money_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE
; demangled: std::priv::_GetFacetId(std::money_put<char, std::ostreambuf_iterator<char, std::char_traits<char> > > const*)
; decoder-mode: thumb
008a496c  02 4b                                            ldr r3, [pc, #8]
008a496e  03 4a                                            ldr r2, [pc, #0xc]
008a4970  7b 44                                            add r3, pc
008a4972  98 58                                            ldr r0, [r3, r2]
008a4974  70 47                                            bx lr
008a4976  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008a4978  24 01 0f 00 1c 35 00 00                          .byte 0x24, 0x01, 0x0f, 0x00, 0x1c, 0x35, 0x00, 0x00

; FUNCTION 0x008a4980, declared_size=20, range_size=20, mode=thumb
; class-group: std::priv
; alias: _ZNSt4priv11_GetFacetIdEPKSt9money_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE
; demangled: std::priv::_GetFacetId(std::money_get<wchar_t, std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> > > const*)
; decoder-mode: thumb
008a4980  02 4b                                            ldr r3, [pc, #8]
008a4982  03 4a                                            ldr r2, [pc, #0xc]
008a4984  7b 44                                            add r3, pc
008a4986  98 58                                            ldr r0, [r3, r2]
008a4988  70 47                                            bx lr
008a498a  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008a498c  10 01 0f 00 ec 1e 00 00                          .byte 0x10, 0x01, 0x0f, 0x00, 0xec, 0x1e, 0x00, 0x00

; FUNCTION 0x008a4994, declared_size=20, range_size=20, mode=thumb
; class-group: std::priv
; alias: _ZNSt4priv11_GetFacetIdEPKSt9money_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE
; demangled: std::priv::_GetFacetId(std::money_put<wchar_t, std::ostreambuf_iterator<wchar_t, std::char_traits<wchar_t> > > const*)
; decoder-mode: thumb
008a4994  02 4b                                            ldr r3, [pc, #8]
008a4996  03 4a                                            ldr r2, [pc, #0xc]
008a4998  7b 44                                            add r3, pc
008a499a  98 58                                            ldr r0, [r3, r2]
008a499c  70 47                                            bx lr
008a499e  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008a49a0  fc 00 0f 00 a0 39 00 00                          .byte 0xfc, 0x00, 0x0f, 0x00, 0xa0, 0x39, 0x00, 0x00

; FUNCTION 0x008a49a8, declared_size=20, range_size=20, mode=thumb
; class-group: std::priv
; alias: _ZNSt4priv11_GetFacetIdEPKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE
; demangled: std::priv::_GetFacetId(std::num_get<char, std::istreambuf_iterator<char, std::char_traits<char> > > const*)
; decoder-mode: thumb
008a49a8  02 4b                                            ldr r3, [pc, #8]
008a49aa  03 4a                                            ldr r2, [pc, #0xc]
008a49ac  7b 44                                            add r3, pc
008a49ae  98 58                                            ldr r0, [r3, r2]
008a49b0  70 47                                            bx lr
008a49b2  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008a49b4  e8 00 0f 00 70 36 00 00                          .byte 0xe8, 0x00, 0x0f, 0x00, 0x70, 0x36, 0x00, 0x00

; FUNCTION 0x008a49bc, declared_size=20, range_size=20, mode=thumb
; class-group: std::priv
; alias: _ZNSt4priv11_GetFacetIdEPKSt7num_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE
; demangled: std::priv::_GetFacetId(std::num_get<wchar_t, std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> > > const*)
; decoder-mode: thumb
008a49bc  02 4b                                            ldr r3, [pc, #8]
008a49be  03 4a                                            ldr r2, [pc, #0xc]
008a49c0  7b 44                                            add r3, pc
008a49c2  98 58                                            ldr r0, [r3, r2]
008a49c4  70 47                                            bx lr
008a49c6  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008a49c8  d4 00 0f 00 68 17 00 00                          .byte 0xd4, 0x00, 0x0f, 0x00, 0x68, 0x17, 0x00, 0x00

; FUNCTION 0x008a49d0, declared_size=20, range_size=20, mode=thumb
; class-group: std::priv
; alias: _ZNSt4priv11_GetFacetIdEPKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE
; demangled: std::priv::_GetFacetId(std::num_put<char, std::ostreambuf_iterator<char, std::char_traits<char> > > const*)
; decoder-mode: thumb
008a49d0  02 4b                                            ldr r3, [pc, #8]
008a49d2  03 4a                                            ldr r2, [pc, #0xc]
008a49d4  7b 44                                            add r3, pc
008a49d6  98 58                                            ldr r0, [r3, r2]
008a49d8  70 47                                            bx lr
008a49da  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008a49dc  c0 00 0f 00 f8 0c 00 00                          .byte 0xc0, 0x00, 0x0f, 0x00, 0xf8, 0x0c, 0x00, 0x00

; FUNCTION 0x008a49e4, declared_size=20, range_size=20, mode=thumb
; class-group: std::priv
; alias: _ZNSt4priv11_GetFacetIdEPKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE
; demangled: std::priv::_GetFacetId(std::num_put<wchar_t, std::ostreambuf_iterator<wchar_t, std::char_traits<wchar_t> > > const*)
; decoder-mode: thumb
008a49e4  02 4b                                            ldr r3, [pc, #8]
008a49e6  03 4a                                            ldr r2, [pc, #0xc]
008a49e8  7b 44                                            add r3, pc
008a49ea  98 58                                            ldr r0, [r3, r2]
008a49ec  70 47                                            bx lr
008a49ee  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008a49f0  ac 00 0f 00 d8 34 00 00                          .byte 0xac, 0x00, 0x0f, 0x00, 0xd8, 0x34, 0x00, 0x00

; FUNCTION 0x008a49f8, declared_size=20, range_size=20, mode=thumb
; class-group: std::priv
; alias: _ZNSt4priv11_GetFacetIdEPKSt8time_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE
; demangled: std::priv::_GetFacetId(std::time_get<char, std::istreambuf_iterator<char, std::char_traits<char> > > const*)
; decoder-mode: thumb
008a49f8  02 4b                                            ldr r3, [pc, #8]
008a49fa  03 4a                                            ldr r2, [pc, #0xc]
008a49fc  7b 44                                            add r3, pc
008a49fe  98 58                                            ldr r0, [r3, r2]
008a4a00  70 47                                            bx lr
008a4a02  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008a4a04  98 00 0f 00 40 3d 00 00                          .byte 0x98, 0x00, 0x0f, 0x00, 0x40, 0x3d, 0x00, 0x00

; FUNCTION 0x008a4a0c, declared_size=20, range_size=20, mode=thumb
; class-group: std::priv
; alias: _ZNSt4priv11_GetFacetIdEPKSt8time_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE
; demangled: std::priv::_GetFacetId(std::time_put<char, std::ostreambuf_iterator<char, std::char_traits<char> > > const*)
; decoder-mode: thumb
008a4a0c  02 4b                                            ldr r3, [pc, #8]
008a4a0e  03 4a                                            ldr r2, [pc, #0xc]
008a4a10  7b 44                                            add r3, pc
008a4a12  98 58                                            ldr r0, [r3, r2]
008a4a14  70 47                                            bx lr
008a4a16  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008a4a18  84 00 0f 00 58 11 00 00                          .byte 0x84, 0x00, 0x0f, 0x00, 0x58, 0x11, 0x00, 0x00

; FUNCTION 0x008a4a20, declared_size=20, range_size=20, mode=thumb
; class-group: std::priv
; alias: _ZNSt4priv11_GetFacetIdEPKSt8time_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE
; demangled: std::priv::_GetFacetId(std::time_get<wchar_t, std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> > > const*)
; decoder-mode: thumb
008a4a20  02 4b                                            ldr r3, [pc, #8]
008a4a22  03 4a                                            ldr r2, [pc, #0xc]
008a4a24  7b 44                                            add r3, pc
008a4a26  98 58                                            ldr r0, [r3, r2]
008a4a28  70 47                                            bx lr
008a4a2a  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008a4a2c  70 00 0f 00 74 2b 00 00                          .byte 0x70, 0x00, 0x0f, 0x00, 0x74, 0x2b, 0x00, 0x00

; FUNCTION 0x008a4a34, declared_size=20, range_size=20, mode=thumb
; class-group: std::priv
; alias: _ZNSt4priv11_GetFacetIdEPKSt8time_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE
; demangled: std::priv::_GetFacetId(std::time_put<wchar_t, std::ostreambuf_iterator<wchar_t, std::char_traits<wchar_t> > > const*)
; decoder-mode: thumb
008a4a34  02 4b                                            ldr r3, [pc, #8]
008a4a36  03 4a                                            ldr r2, [pc, #0xc]
008a4a38  7b 44                                            add r3, pc
008a4a3a  98 58                                            ldr r0, [r3, r2]
008a4a3c  70 47                                            bx lr
008a4a3e  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008a4a40  5c 00 0f 00 54 2b 00 00                          .byte 0x5c, 0x00, 0x0f, 0x00, 0x54, 0x2b, 0x00, 0x00

; FUNCTION 0x008a5bb8, declared_size=176, range_size=176, mode=thumb
; class-group: std::priv
; alias: _ZNSt4priv22__get_money_digits_auxERNS_16__basic_iostringIwEERSt8ios_basee
; demangled: std::priv::__get_money_digits_aux(std::priv::__basic_iostring<wchar_t>&, std::ios_base&, long double)
; decoder-mode: thumb
008a5bb8  f0 b5                                            push {r4, r5, r6, r7, lr}
008a5bba  57 46                                            mov r7, sl
008a5bbc  4e 46                                            mov r6, sb
008a5bbe  45 46                                            mov r5, r8
008a5bc0  e0 b4                                            push {r5, r6, r7}
008a5bc2  24 4c                                            ldr r4, [pc, #0x90]
008a5bc4  24 4d                                            ldr r5, [pc, #0x90]
008a5bc6  82 46                                            mov sl, r0
008a5bc8  a5 44                                            add sp, r4
008a5bca  02 92                                            str r2, [sp, #8]
008a5bcc  03 93                                            str r3, [sp, #0xc]
008a5bce  23 4b                                            ldr r3, [pc, #0x8c]
008a5bd0  7d 44                                            add r5, pc
008a5bd2  05 ac                                            add r4, sp, #0x14
008a5bd4  ee 58                                            ldr r6, [r5, r3]
008a5bd6  22 4a                                            ldr r2, [pc, #0x88]
008a5bd8  89 46                                            mov sb, r1
008a5bda  33 68                                            ldr r3, [r6]
008a5bdc  4c a9                                            add r1, sp, #0x130
008a5bde  0a a8                                            add r0, sp, #0x28
008a5be0  8d 93                                            str r3, [sp, #0x234]
008a5be2  24 61                                            str r4, [r4, #0x10]
008a5be4  68 f6 40 e6                                      blx #0x30e868
008a5be8  8c 23                                            movs r3, #0x8c
008a5bea  5b 00                                            lsls r3, r3, #1
008a5bec  20 1c                                            adds r0, r4, #0
008a5bee  e4 50                                            str r4, [r4, r3]
008a5bf0  ff f7 72 fb                                      bl #0x8a52d8
008a5bf4  23 69                                            ldr r3, [r4, #0x10]
008a5bf6  00 22                                            movs r2, #0
008a5bf8  90 46                                            mov r8, r2
008a5bfa  1a 70                                            strb r2, [r3]
008a5bfc  02 9a                                            ldr r2, [sp, #8]
008a5bfe  03 9b                                            ldr r3, [sp, #0xc]
008a5c00  20 1c                                            adds r0, r4, #0
008a5c02  15 f0 e7 f9                                      bl #0x8bafd4
008a5c06  04 af                                            add r7, sp, #0x10
008a5c08  49 46                                            mov r1, sb
008a5c0a  20 31                                            adds r1, #0x20
008a5c0c  38 1c                                            adds r0, r7, #0
008a5c0e  fd f7 a7 fc                                      bl #0x8a3560
008a5c12  14 4b                                            ldr r3, [pc, #0x50]
008a5c14  38 1c                                            adds r0, r7, #0
008a5c16  e9 58                                            ldr r1, [r5, r3]
008a5c18  fd f7 ca fc                                      bl #0x8a35b0
008a5c1c  05 1c                                            adds r5, r0, #0
008a5c1e  38 1c                                            adds r0, r7, #0
008a5c20  fd f7 68 fc                                      bl #0x8a34f4
008a5c24  43 46                                            mov r3, r8
008a5c26  2a 1c                                            adds r2, r5, #0
008a5c28  20 1c                                            adds r0, r4, #0
008a5c2a  51 46                                            mov r1, sl
008a5c2c  00 93                                            str r3, [sp]
008a5c2e  15 f0 1f f9                                      bl #0x8bae70
008a5c32  20 1c                                            adds r0, r4, #0
008a5c34  ff f7 26 ff                                      bl #0x8a5a84
008a5c38  8d 9a                                            ldr r2, [sp, #0x234]
008a5c3a  33 68                                            ldr r3, [r6]
008a5c3c  9a 42                                            cmp r2, r3
008a5c3e  07 d1                                            bne #0x8a5c50
008a5c40  8e 23                                            movs r3, #0x8e
008a5c42  9b 00                                            lsls r3, r3, #2
008a5c44  9d 44                                            add sp, r3
008a5c46  1c bc                                            pop {r2, r3, r4}
008a5c48  90 46                                            mov r8, r2
008a5c4a  99 46                                            mov sb, r3
008a5c4c  a2 46                                            mov sl, r4
008a5c4e  f0 bd                                            pop {r4, r5, r6, r7, pc}
008a5c50  68 f6 5e e3                                      blx #0x30e310
; mapping-symbol data/literal pool
008a5c54  c8 fd ff ff c4 ee 0e 00 ac 40 00 00 01 01 00 00  .byte 0xc8, 0xfd, 0xff, 0xff, 0xc4, 0xee, 0x0e, 0x00, 0xac, 0x40, 0x00, 0x00, 0x01, 0x01, 0x00, 0x00
008a5c64  44 1e 00 00                                      .byte 0x44, 0x1e, 0x00, 0x00

; FUNCTION 0x008b3454, declared_size=8, range_size=8, mode=thumb
; class-group: std::priv
; alias: _ZNSt4privL18_Loc_messages_nameEPvPc
; demangled: std::priv::_Loc_messages_name(void*, char*)
; decoder-mode: thumb
008b3454  10 b5                                            push {r4, lr}
008b3456  03 f0 45 fa                                      bl #0x8b68e4
008b345a  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b345c, declared_size=8, range_size=8, mode=thumb
; class-group: std::priv
; alias: _ZNSt4privL21_Loc_messages_destroyEPv
; demangled: std::priv::_Loc_messages_destroy(void*)
; decoder-mode: thumb
008b345c  10 b5                                            push {r4, lr}
008b345e  03 f0 53 fa                                      bl #0x8b6908
008b3462  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b3464, declared_size=8, range_size=8, mode=thumb
; class-group: std::priv
; alias: _ZNSt4privL18_Loc_monetary_nameEPvPc
; demangled: std::priv::_Loc_monetary_name(void*, char*)
; decoder-mode: thumb
008b3464  10 b5                                            push {r4, lr}
008b3466  03 f0 37 fa                                      bl #0x8b68d8
008b346a  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b346c, declared_size=8, range_size=8, mode=thumb
; class-group: std::priv
; alias: _ZNSt4privL21_Loc_monetary_destroyEPv
; demangled: std::priv::_Loc_monetary_destroy(void*)
; decoder-mode: thumb
008b346c  10 b5                                            push {r4, lr}
008b346e  03 f0 49 fa                                      bl #0x8b6904
008b3472  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b3474, declared_size=8, range_size=8, mode=thumb
; class-group: std::priv
; alias: _ZNSt4privL17_Loc_collate_nameEPvPc
; demangled: std::priv::_Loc_collate_name(void*, char*)
; decoder-mode: thumb
008b3474  10 b5                                            push {r4, lr}
008b3476  03 f0 29 fa                                      bl #0x8b68cc
008b347a  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b347c, declared_size=8, range_size=8, mode=thumb
; class-group: std::priv
; alias: _ZNSt4privL20_Loc_collate_destroyEPv
; demangled: std::priv::_Loc_collate_destroy(void*)
; decoder-mode: thumb
008b347c  10 b5                                            push {r4, lr}
008b347e  03 f0 3f fa                                      bl #0x8b6900
008b3482  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b3484, declared_size=8, range_size=8, mode=thumb
; class-group: std::priv
; alias: _ZNSt4privL14_Loc_time_nameEPvPc
; demangled: std::priv::_Loc_time_name(void*, char*)
; decoder-mode: thumb
008b3484  10 b5                                            push {r4, lr}
008b3486  03 f0 1b fa                                      bl #0x8b68c0
008b348a  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b348c, declared_size=8, range_size=8, mode=thumb
; class-group: std::priv
; alias: _ZNSt4privL17_Loc_time_destroyEPv
; demangled: std::priv::_Loc_time_destroy(void*)
; decoder-mode: thumb
008b348c  10 b5                                            push {r4, lr}
008b348e  03 f0 35 fa                                      bl #0x8b68fc
008b3492  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b3494, declared_size=8, range_size=8, mode=thumb
; class-group: std::priv
; alias: _ZNSt4privL17_Loc_numeric_nameEPvPc
; demangled: std::priv::_Loc_numeric_name(void*, char*)
; decoder-mode: thumb
008b3494  10 b5                                            push {r4, lr}
008b3496  03 f0 0d fa                                      bl #0x8b68b4
008b349a  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b349c, declared_size=8, range_size=8, mode=thumb
; class-group: std::priv
; alias: _ZNSt4privL20_Loc_numeric_destroyEPv
; demangled: std::priv::_Loc_numeric_destroy(void*)
; decoder-mode: thumb
008b349c  10 b5                                            push {r4, lr}
008b349e  03 f0 2b fa                                      bl #0x8b68f8
008b34a2  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b34a4, declared_size=8, range_size=8, mode=thumb
; class-group: std::priv
; alias: _ZNSt4privL17_Loc_codecvt_nameEPvPc
; demangled: std::priv::_Loc_codecvt_name(void*, char*)
; decoder-mode: thumb
008b34a4  10 b5                                            push {r4, lr}
008b34a6  03 f0 ff f9                                      bl #0x8b68a8
008b34aa  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b34ac, declared_size=8, range_size=8, mode=thumb
; class-group: std::priv
; alias: _ZNSt4privL20_Loc_codecvt_destroyEPv
; demangled: std::priv::_Loc_codecvt_destroy(void*)
; decoder-mode: thumb
008b34ac  10 b5                                            push {r4, lr}
008b34ae  03 f0 21 fa                                      bl #0x8b68f4
008b34b2  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b34b4, declared_size=8, range_size=8, mode=thumb
; class-group: std::priv
; alias: _ZNSt4privL15_Loc_ctype_nameEPvPc
; demangled: std::priv::_Loc_ctype_name(void*, char*)
; decoder-mode: thumb
008b34b4  10 b5                                            push {r4, lr}
008b34b6  03 f0 f1 f9                                      bl #0x8b689c
008b34ba  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b34bc, declared_size=8, range_size=8, mode=thumb
; class-group: std::priv
; alias: _ZNSt4privL18_Loc_ctype_destroyEPv
; demangled: std::priv::_Loc_ctype_destroy(void*)
; decoder-mode: thumb
008b34bc  10 b5                                            push {r4, lr}
008b34be  03 f0 17 fa                                      bl #0x8b68f0
008b34c2  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b34c4, declared_size=8, range_size=8, mode=thumb
; class-group: std::priv
; alias: _ZNSt4privL21_Loc_messages_defaultEPc
; demangled: std::priv::_Loc_messages_default(char*)
; decoder-mode: thumb
008b34c4  10 b5                                            push {r4, lr}
008b34c6  03 f0 e3 f9                                      bl #0x8b6890
008b34ca  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b34cc, declared_size=8, range_size=8, mode=thumb
; class-group: std::priv
; alias: _ZNSt4privL20_Loc_messages_createEPKcP17_Locale_name_hintPi
; demangled: std::priv::_Loc_messages_create(char const*, _Locale_name_hint*, int*)
; decoder-mode: thumb
008b34cc  10 b5                                            push {r4, lr}
008b34ce  03 f0 bb f9                                      bl #0x8b6848
008b34d2  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b34d4, declared_size=8, range_size=8, mode=thumb
; class-group: std::priv
; alias: _ZNSt4privL21_Loc_monetary_defaultEPc
; demangled: std::priv::_Loc_monetary_default(char*)
; decoder-mode: thumb
008b34d4  10 b5                                            push {r4, lr}
008b34d6  03 f0 d5 f9                                      bl #0x8b6884
008b34da  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b34dc, declared_size=8, range_size=8, mode=thumb
; class-group: std::priv
; alias: _ZNSt4privL20_Loc_monetary_createEPKcP17_Locale_name_hintPi
; demangled: std::priv::_Loc_monetary_create(char const*, _Locale_name_hint*, int*)
; decoder-mode: thumb
008b34dc  10 b5                                            push {r4, lr}
008b34de  03 f0 ad f9                                      bl #0x8b683c
008b34e2  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b34e4, declared_size=8, range_size=8, mode=thumb
; class-group: std::priv
; alias: _ZNSt4privL20_Loc_collate_defaultEPc
; demangled: std::priv::_Loc_collate_default(char*)
; decoder-mode: thumb
008b34e4  10 b5                                            push {r4, lr}
008b34e6  03 f0 c7 f9                                      bl #0x8b6878
008b34ea  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b34ec, declared_size=8, range_size=8, mode=thumb
; class-group: std::priv
; alias: _ZNSt4privL19_Loc_collate_createEPKcP17_Locale_name_hintPi
; demangled: std::priv::_Loc_collate_create(char const*, _Locale_name_hint*, int*)
; decoder-mode: thumb
008b34ec  10 b5                                            push {r4, lr}
008b34ee  03 f0 9f f9                                      bl #0x8b6830
008b34f2  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b34f4, declared_size=8, range_size=8, mode=thumb
; class-group: std::priv
; alias: _ZNSt4privL17_Loc_time_defaultEPc
; demangled: std::priv::_Loc_time_default(char*)
; decoder-mode: thumb
008b34f4  10 b5                                            push {r4, lr}
008b34f6  03 f0 b9 f9                                      bl #0x8b686c
008b34fa  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b34fc, declared_size=8, range_size=8, mode=thumb
; class-group: std::priv
; alias: _ZNSt4privL16_Loc_time_createEPKcP17_Locale_name_hintPi
; demangled: std::priv::_Loc_time_create(char const*, _Locale_name_hint*, int*)
; decoder-mode: thumb
008b34fc  10 b5                                            push {r4, lr}
008b34fe  03 f0 91 f9                                      bl #0x8b6824
008b3502  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b3504, declared_size=8, range_size=8, mode=thumb
; class-group: std::priv
; alias: _ZNSt4privL20_Loc_numeric_defaultEPc
; demangled: std::priv::_Loc_numeric_default(char*)
; decoder-mode: thumb
008b3504  10 b5                                            push {r4, lr}
008b3506  03 f0 ab f9                                      bl #0x8b6860
008b350a  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b350c, declared_size=8, range_size=8, mode=thumb
; class-group: std::priv
; alias: _ZNSt4privL19_Loc_numeric_createEPKcP17_Locale_name_hintPi
; demangled: std::priv::_Loc_numeric_create(char const*, _Locale_name_hint*, int*)
; decoder-mode: thumb
008b350c  10 b5                                            push {r4, lr}
008b350e  03 f0 83 f9                                      bl #0x8b6818
008b3512  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b3514, declared_size=8, range_size=8, mode=thumb
; class-group: std::priv
; alias: _ZNSt4privL18_Loc_ctype_defaultEPc
; demangled: std::priv::_Loc_ctype_default(char*)
; decoder-mode: thumb
008b3514  10 b5                                            push {r4, lr}
008b3516  03 f0 9d f9                                      bl #0x8b6854
008b351a  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b351c, declared_size=8, range_size=8, mode=thumb
; class-group: std::priv
; alias: _ZNSt4privL19_Loc_codecvt_createEPKcP17_Locale_name_hintPi
; demangled: std::priv::_Loc_codecvt_create(char const*, _Locale_name_hint*, int*)
; decoder-mode: thumb
008b351c  10 b5                                            push {r4, lr}
008b351e  03 f0 75 f9                                      bl #0x8b680c
008b3522  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b3524, declared_size=8, range_size=8, mode=thumb
; class-group: std::priv
; alias: _ZNSt4privL17_Loc_ctype_createEPKcP17_Locale_name_hintPi
; demangled: std::priv::_Loc_ctype_create(char const*, _Locale_name_hint*, int*)
; decoder-mode: thumb
008b3524  10 b5                                            push {r4, lr}
008b3526  03 f0 6b f9                                      bl #0x8b6800
008b352a  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b3c28, declared_size=140, range_size=140, mode=thumb
; class-group: std::priv
; alias: _ZNSt4privL18__release_categoryEPvPFvS0_EPFPKcS0_PcEPPSt8hash_mapISsSt4pairIS0_jESt4hashISsESt8equal_toISsESaIS9_IKSsSA_EEE
; demangled: std::priv::__release_category(void*, void (*)(void*), char const* (*)(void*, char*), std::hash_map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::pair<void*, unsigned int>, std::hash<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::equal_to<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::pair<void*, unsigned int> > > >**)
; decoder-mode: thumb
008b3c28  f0 b5                                            push {r4, r5, r6, r7, lr}
008b3c2a  47 46                                            mov r7, r8
008b3c2c  80 b4                                            push {r7}
008b3c2e  1d 4c                                            ldr r4, [pc, #0x74]
008b3c30  1d 4d                                            ldr r5, [pc, #0x74]
008b3c32  88 46                                            mov r8, r1
008b3c34  7c 44                                            add r4, pc
008b3c36  61 59                                            ldr r1, [r4, r5]
008b3c38  c6 b0                                            sub sp, #0x118
008b3c3a  09 68                                            ldr r1, [r1]
008b3c3c  45 91                                            str r1, [sp, #0x114]
008b3c3e  1f 68                                            ldr r7, [r3]
008b3c40  00 2f                                            cmp r7, #0
008b3c42  1b d0                                            beq #0x8b3c7c
008b3c44  00 28                                            cmp r0, #0
008b3c46  19 d0                                            beq #0x8b3c7c
008b3c48  04 a9                                            add r1, sp, #0x10
008b3c4a  90 47                                            blx r2
008b3c4c  00 28                                            cmp r0, #0
008b3c4e  15 d0                                            beq #0x8b3c7c
008b3c50  03 90                                            str r0, [sp, #0xc]
008b3c52  16 48                                            ldr r0, [pc, #0x58]
008b3c54  78 44                                            add r0, pc
008b3c56  5a f6 ac e4                                      blx #0x30e5b0
008b3c5a  02 a8                                            add r0, sp, #8
008b3c5c  39 1c                                            adds r1, r7, #0
008b3c5e  03 aa                                            add r2, sp, #0xc
008b3c60  ff f7 74 ff                                      bl #0x8b3b4c
008b3c64  02 9e                                            ldr r6, [sp, #8]
008b3c66  00 2e                                            cmp r6, #0
008b3c68  04 d0                                            beq #0x8b3c74
008b3c6a  33 6a                                            ldr r3, [r6, #0x20]
008b3c6c  01 3b                                            subs r3, #1
008b3c6e  33 62                                            str r3, [r6, #0x20]
008b3c70  00 2b                                            cmp r3, #0
008b3c72  0c d0                                            beq #0x8b3c8e
008b3c74  0e 48                                            ldr r0, [pc, #0x38]
008b3c76  78 44                                            add r0, pc
008b3c78  5a f6 8c e3                                      blx #0x30e394
008b3c7c  63 59                                            ldr r3, [r4, r5]
008b3c7e  45 9a                                            ldr r2, [sp, #0x114]
008b3c80  1b 68                                            ldr r3, [r3]
008b3c82  9a 42                                            cmp r2, r3
008b3c84  0b d1                                            bne #0x8b3c9e
008b3c86  46 b0                                            add sp, #0x118
008b3c88  04 bc                                            pop {r2}
008b3c8a  90 46                                            mov r8, r2
008b3c8c  f0 bd                                            pop {r4, r5, r6, r7, pc}
008b3c8e  f0 69                                            ldr r0, [r6, #0x1c]
008b3c90  c0 47                                            blx r8
008b3c92  38 1c                                            adds r0, r7, #0
008b3c94  01 a9                                            add r1, sp, #4
008b3c96  01 96                                            str r6, [sp, #4]
008b3c98  ff f7 9e fe                                      bl #0x8b39d8
008b3c9c  ea e7                                            b #0x8b3c74
008b3c9e  5a f6 38 e3                                      blx #0x30e310
008b3ca2  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008b3ca4  60 0e 0e 00 ac 40 00 00 d0 12 18 00 ae 12 18 00  .byte 0x60, 0x0e, 0x0e, 0x00, 0xac, 0x40, 0x00, 0x00, 0xd0, 0x12, 0x18, 0x00, 0xae, 0x12, 0x18, 0x00

; FUNCTION 0x008b3cb4, declared_size=36, range_size=36, mode=thumb
; class-group: std::priv
; alias: _ZNSt4priv18__release_messagesEP16_Locale_messages
; demangled: std::priv::__release_messages(_Locale_messages*)
; decoder-mode: thumb
008b3cb4  10 b5                                            push {r4, lr}
008b3cb6  05 4b                                            ldr r3, [pc, #0x14]
008b3cb8  05 49                                            ldr r1, [pc, #0x14]
008b3cba  06 4a                                            ldr r2, [pc, #0x18]
008b3cbc  7b 44                                            add r3, pc
008b3cbe  79 44                                            add r1, pc
008b3cc0  7a 44                                            add r2, pc
008b3cc2  04 33                                            adds r3, #4
008b3cc4  ff f7 b0 ff                                      bl #0x8b3c28
008b3cc8  10 bd                                            pop {r4, pc}
008b3cca  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008b3ccc  68 12 18 00 9b f7 ff ff 91 f7 ff ff              .byte 0x68, 0x12, 0x18, 0x00, 0x9b, 0xf7, 0xff, 0xff, 0x91, 0xf7, 0xff, 0xff

; FUNCTION 0x008b3cd8, declared_size=36, range_size=36, mode=thumb
; class-group: std::priv
; alias: _ZNSt4priv18__release_monetaryEP16_Locale_monetary
; demangled: std::priv::__release_monetary(_Locale_monetary*)
; decoder-mode: thumb
008b3cd8  10 b5                                            push {r4, lr}
008b3cda  05 4b                                            ldr r3, [pc, #0x14]
008b3cdc  05 49                                            ldr r1, [pc, #0x14]
008b3cde  06 4a                                            ldr r2, [pc, #0x18]
008b3ce0  7b 44                                            add r3, pc
008b3ce2  79 44                                            add r1, pc
008b3ce4  7a 44                                            add r2, pc
008b3ce6  08 33                                            adds r3, #8
008b3ce8  ff f7 9e ff                                      bl #0x8b3c28
008b3cec  10 bd                                            pop {r4, pc}
008b3cee  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008b3cf0  44 12 18 00 87 f7 ff ff 7d f7 ff ff              .byte 0x44, 0x12, 0x18, 0x00, 0x87, 0xf7, 0xff, 0xff, 0x7d, 0xf7, 0xff, 0xff

; FUNCTION 0x008b3cfc, declared_size=36, range_size=36, mode=thumb
; class-group: std::priv
; alias: _ZNSt4priv17__release_collateEP15_Locale_collate
; demangled: std::priv::__release_collate(_Locale_collate*)
; decoder-mode: thumb
008b3cfc  10 b5                                            push {r4, lr}
008b3cfe  05 4b                                            ldr r3, [pc, #0x14]
008b3d00  05 49                                            ldr r1, [pc, #0x14]
008b3d02  06 4a                                            ldr r2, [pc, #0x18]
008b3d04  7b 44                                            add r3, pc
008b3d06  79 44                                            add r1, pc
008b3d08  7a 44                                            add r2, pc
008b3d0a  0c 33                                            adds r3, #0xc
008b3d0c  ff f7 8c ff                                      bl #0x8b3c28
008b3d10  10 bd                                            pop {r4, pc}
008b3d12  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008b3d14  20 12 18 00 73 f7 ff ff 69 f7 ff ff              .byte 0x20, 0x12, 0x18, 0x00, 0x73, 0xf7, 0xff, 0xff, 0x69, 0xf7, 0xff, 0xff

; FUNCTION 0x008b3d20, declared_size=36, range_size=36, mode=thumb
; class-group: std::priv
; alias: _ZNSt4priv14__release_timeEP12_Locale_time
; demangled: std::priv::__release_time(_Locale_time*)
; decoder-mode: thumb
008b3d20  10 b5                                            push {r4, lr}
008b3d22  05 4b                                            ldr r3, [pc, #0x14]
008b3d24  05 49                                            ldr r1, [pc, #0x14]
008b3d26  06 4a                                            ldr r2, [pc, #0x18]
008b3d28  7b 44                                            add r3, pc
008b3d2a  79 44                                            add r1, pc
008b3d2c  7a 44                                            add r2, pc
008b3d2e  10 33                                            adds r3, #0x10
008b3d30  ff f7 7a ff                                      bl #0x8b3c28
008b3d34  10 bd                                            pop {r4, pc}
008b3d36  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008b3d38  fc 11 18 00 5f f7 ff ff 55 f7 ff ff              .byte 0xfc, 0x11, 0x18, 0x00, 0x5f, 0xf7, 0xff, 0xff, 0x55, 0xf7, 0xff, 0xff

; FUNCTION 0x008b3d44, declared_size=36, range_size=36, mode=thumb
; class-group: std::priv
; alias: _ZNSt4priv17__release_numericEP15_Locale_numeric
; demangled: std::priv::__release_numeric(_Locale_numeric*)
; decoder-mode: thumb
008b3d44  10 b5                                            push {r4, lr}
008b3d46  05 4b                                            ldr r3, [pc, #0x14]
008b3d48  05 49                                            ldr r1, [pc, #0x14]
008b3d4a  06 4a                                            ldr r2, [pc, #0x18]
008b3d4c  7b 44                                            add r3, pc
008b3d4e  79 44                                            add r1, pc
008b3d50  7a 44                                            add r2, pc
008b3d52  14 33                                            adds r3, #0x14
008b3d54  ff f7 68 ff                                      bl #0x8b3c28
008b3d58  10 bd                                            pop {r4, pc}
008b3d5a  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008b3d5c  d8 11 18 00 4b f7 ff ff 41 f7 ff ff              .byte 0xd8, 0x11, 0x18, 0x00, 0x4b, 0xf7, 0xff, 0xff, 0x41, 0xf7, 0xff, 0xff

; FUNCTION 0x008b3d68, declared_size=36, range_size=36, mode=thumb
; class-group: std::priv
; alias: _ZNSt4priv17__release_codecvtEP15_Locale_codecvt
; demangled: std::priv::__release_codecvt(_Locale_codecvt*)
; decoder-mode: thumb
008b3d68  10 b5                                            push {r4, lr}
008b3d6a  05 4b                                            ldr r3, [pc, #0x14]
008b3d6c  05 49                                            ldr r1, [pc, #0x14]
008b3d6e  06 4a                                            ldr r2, [pc, #0x18]
008b3d70  7b 44                                            add r3, pc
008b3d72  79 44                                            add r1, pc
008b3d74  7a 44                                            add r2, pc
008b3d76  18 33                                            adds r3, #0x18
008b3d78  ff f7 56 ff                                      bl #0x8b3c28
008b3d7c  10 bd                                            pop {r4, pc}
008b3d7e  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008b3d80  b4 11 18 00 37 f7 ff ff 2d f7 ff ff              .byte 0xb4, 0x11, 0x18, 0x00, 0x37, 0xf7, 0xff, 0xff, 0x2d, 0xf7, 0xff, 0xff

; FUNCTION 0x008b3d8c, declared_size=36, range_size=36, mode=thumb
; class-group: std::priv
; alias: _ZNSt4priv15__release_ctypeEP13_Locale_ctype
; demangled: std::priv::__release_ctype(_Locale_ctype*)
; decoder-mode: thumb
008b3d8c  10 b5                                            push {r4, lr}
008b3d8e  05 4b                                            ldr r3, [pc, #0x14]
008b3d90  05 49                                            ldr r1, [pc, #0x14]
008b3d92  06 4a                                            ldr r2, [pc, #0x18]
008b3d94  7b 44                                            add r3, pc
008b3d96  79 44                                            add r1, pc
008b3d98  7a 44                                            add r2, pc
008b3d9a  1c 33                                            adds r3, #0x1c
008b3d9c  ff f7 44 ff                                      bl #0x8b3c28
008b3da0  10 bd                                            pop {r4, pc}
008b3da2  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008b3da4  90 11 18 00 23 f7 ff ff 19 f7 ff ff              .byte 0x90, 0x11, 0x18, 0x00, 0x23, 0xf7, 0xff, 0xff, 0x19, 0xf7, 0xff, 0xff

; FUNCTION 0x008b3f38, declared_size=440, range_size=440, mode=thumb
; class-group: std::priv
; alias: _ZNSt4privL18__acquire_categoryERPKcPcP17_Locale_name_hintPFS1_S1_S3_S5_PiEPFPvS1_S5_S6_EPFS1_S3_EPPSt8hash_mapISsSt4pairIS9_jESt4hashISsESt8equal_toISsESaISF_IKSsSG_EEES6_
; demangled: std::priv::__acquire_category(char const*&, char*, _Locale_name_hint*, char const* (*)(char const*, char*, _Locale_name_hint*, int*), void* (*)(char const*, _Locale_name_hint*, int*), char const* (*)(char*), std::hash_map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::pair<void*, unsigned int>, std::hash<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::equal_to<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::pair<void*, unsigned int> > > >**, int*)
; decoder-mode: thumb
008b3f38  f0 b5                                            push {r4, r5, r6, r7, lr}
008b3f3a  5f 46                                            mov r7, fp
008b3f3c  56 46                                            mov r6, sl
008b3f3e  4d 46                                            mov r5, sb
008b3f40  44 46                                            mov r4, r8
008b3f42  f0 b4                                            push {r4, r5, r6, r7}
008b3f44  9d b0                                            sub sp, #0x74
008b3f46  03 92                                            str r2, [sp, #0xc]
008b3f48  28 9a                                            ldr r2, [sp, #0xa0]
008b3f4a  63 4e                                            ldr r6, [pc, #0x18c]
008b3f4c  07 1c                                            adds r7, r0, #0
008b3f4e  02 92                                            str r2, [sp, #8]
008b3f50  62 4a                                            ldr r2, [pc, #0x188]
008b3f52  7e 44                                            add r6, pc
008b3f54  26 98                                            ldr r0, [sp, #0x98]
008b3f56  01 92                                            str r2, [sp, #4]
008b3f58  b2 58                                            ldr r2, [r6, r2]
008b3f5a  04 90                                            str r0, [sp, #0x10]
008b3f5c  29 98                                            ldr r0, [sp, #0xa4]
008b3f5e  12 68                                            ldr r2, [r2]
008b3f60  1c 1c                                            adds r4, r3, #0
008b3f62  83 46                                            mov fp, r0
008b3f64  1b 92                                            str r2, [sp, #0x6c]
008b3f66  08 a8                                            add r0, sp, #0x20
008b3f68  00 22                                            movs r2, #0
008b3f6a  02 71                                            strb r2, [r0, #4]
008b3f6c  81 46                                            mov sb, r0
008b3f6e  58 46                                            mov r0, fp
008b3f70  08 92                                            str r2, [sp, #0x20]
008b3f72  27 9b                                            ldr r3, [sp, #0x9c]
008b3f74  02 60                                            str r2, [r0]
008b3f76  38 68                                            ldr r0, [r7]
008b3f78  02 78                                            ldrb r2, [r0]
008b3f7a  00 2a                                            cmp r2, #0
008b3f7c  00 d0                                            beq #0x8b3f80
008b3f7e  7b e0                                            b #0x8b4078
008b3f80  08 1c                                            adds r0, r1, #0
008b3f82  98 47                                            blx r3
008b3f84  01 1c                                            adds r1, r0, #0
008b3f86  38 60                                            str r0, [r7]
008b3f88  00 28                                            cmp r0, #0
008b3f8a  58 d0                                            beq #0x8b403e
008b3f8c  03 78                                            ldrb r3, [r0]
008b3f8e  00 2b                                            cmp r3, #0
008b3f90  55 d0                                            beq #0x8b403e
008b3f92  15 ad                                            add r5, sp, #0x54
008b3f94  0d ac                                            add r4, sp, #0x34
008b3f96  0c aa                                            add r2, sp, #0x30
008b3f98  28 1c                                            adds r0, r5, #0
008b3f9a  60 f6 a8 e0                                      blx #0x3140ec
008b3f9e  24 61                                            str r4, [r4, #0x10]
008b3fa0  64 61                                            str r4, [r4, #0x14]
008b3fa2  20 1c                                            adds r0, r4, #0
008b3fa4  69 69                                            ldr r1, [r5, #0x14]
008b3fa6  2a 69                                            ldr r2, [r5, #0x10]
008b3fa8  5d f6 9e e3                                      blx #0x3116e8
008b3fac  00 23                                            movs r3, #0
008b3fae  a3 61                                            str r3, [r4, #0x18]
008b3fb0  e3 61                                            str r3, [r4, #0x1c]
008b3fb2  68 69                                            ldr r0, [r5, #0x14]
008b3fb4  a8 42                                            cmp r0, r5
008b3fb6  07 d0                                            beq #0x8b3fc8
008b3fb8  00 28                                            cmp r0, #0
008b3fba  05 d0                                            beq #0x8b3fc8
008b3fbc  29 68                                            ldr r1, [r5]
008b3fbe  09 1a                                            subs r1, r1, r0
008b3fc0  80 29                                            cmp r1, #0x80
008b3fc2  56 d8                                            bhi #0x8b4072
008b3fc4  02 f0 4a f9                                      bl #0x8b625c
008b3fc8  45 48                                            ldr r0, [pc, #0x114]
008b3fca  78 44                                            add r0, pc
008b3fcc  5a f6 f0 e2                                      blx #0x30e5b0
008b3fd0  02 9a                                            ldr r2, [sp, #8]
008b3fd2  12 68                                            ldr r2, [r2]
008b3fd4  90 46                                            mov r8, r2
008b3fd6  00 2a                                            cmp r2, #0
008b3fd8  57 d0                                            beq #0x8b408a
008b3fda  06 a8                                            add r0, sp, #0x18
008b3fdc  22 1c                                            adds r2, r4, #0
008b3fde  41 46                                            mov r1, r8
008b3fe0  82 46                                            mov sl, r0
008b3fe2  ff f7 41 ff                                      bl #0x8b3e68
008b3fe6  06 9d                                            ldr r5, [sp, #0x18]
008b3fe8  52 46                                            mov r2, sl
008b3fea  48 46                                            mov r0, sb
008b3fec  08 95                                            str r5, [sp, #0x20]
008b3fee  13 79                                            ldrb r3, [r2, #4]
008b3ff0  03 71                                            strb r3, [r0, #4]
008b3ff2  02 79                                            ldrb r2, [r0, #4]
008b3ff4  2b 1c                                            adds r3, r5, #0
008b3ff6  00 2a                                            cmp r2, #0
008b3ff8  25 d1                                            bne #0x8b4046
008b3ffa  1a 6a                                            ldr r2, [r3, #0x20]
008b3ffc  01 32                                            adds r2, #1
008b3ffe  1a 62                                            str r2, [r3, #0x20]
008b4000  08 9b                                            ldr r3, [sp, #0x20]
008b4002  dd 69                                            ldr r5, [r3, #0x1c]
008b4004  37 48                                            ldr r0, [pc, #0xdc]
008b4006  78 44                                            add r0, pc
008b4008  5a f6 c4 e1                                      blx #0x30e394
008b400c  60 69                                            ldr r0, [r4, #0x14]
008b400e  a0 42                                            cmp r0, r4
008b4010  07 d0                                            beq #0x8b4022
008b4012  00 28                                            cmp r0, #0
008b4014  05 d0                                            beq #0x8b4022
008b4016  21 68                                            ldr r1, [r4]
008b4018  09 1a                                            subs r1, r1, r0
008b401a  80 29                                            cmp r1, #0x80
008b401c  26 d8                                            bhi #0x8b406c
008b401e  02 f0 1d f9                                      bl #0x8b625c
008b4022  01 9a                                            ldr r2, [sp, #4]
008b4024  28 1c                                            adds r0, r5, #0
008b4026  b3 58                                            ldr r3, [r6, r2]
008b4028  1b 9a                                            ldr r2, [sp, #0x6c]
008b402a  1b 68                                            ldr r3, [r3]
008b402c  9a 42                                            cmp r2, r3
008b402e  50 d1                                            bne #0x8b40d2
008b4030  1d b0                                            add sp, #0x74
008b4032  3c bc                                            pop {r2, r3, r4, r5}
008b4034  90 46                                            mov r8, r2
008b4036  99 46                                            mov sb, r3
008b4038  a2 46                                            mov sl, r4
008b403a  ab 46                                            mov fp, r5
008b403c  f0 bd                                            pop {r4, r5, r6, r7, pc}
008b403e  2a 49                                            ldr r1, [pc, #0xa8]
008b4040  79 44                                            add r1, pc
008b4042  39 60                                            str r1, [r7]
008b4044  a5 e7                                            b #0x8b3f92
008b4046  03 99                                            ldr r1, [sp, #0xc]
008b4048  5a 46                                            mov r2, fp
008b404a  04 9b                                            ldr r3, [sp, #0x10]
008b404c  38 68                                            ldr r0, [r7]
008b404e  98 47                                            blx r3
008b4050  e8 61                                            str r0, [r5, #0x1c]
008b4052  08 9a                                            ldr r2, [sp, #0x20]
008b4054  d1 69                                            ldr r1, [r2, #0x1c]
008b4056  13 1c                                            adds r3, r2, #0
008b4058  00 29                                            cmp r1, #0
008b405a  ce d1                                            bne #0x8b3ffa
008b405c  02 9b                                            ldr r3, [sp, #8]
008b405e  0b a9                                            add r1, sp, #0x2c
008b4060  00 25                                            movs r5, #0
008b4062  18 68                                            ldr r0, [r3]
008b4064  0b 92                                            str r2, [sp, #0x2c]
008b4066  ff f7 b7 fc                                      bl #0x8b39d8
008b406a  cb e7                                            b #0x8b4004
008b406c  5a f6 20 e1                                      blx #0x30e2b0
008b4070  d7 e7                                            b #0x8b4022
008b4072  5a f6 1e e1                                      blx #0x30e2b0
008b4076  a7 e7                                            b #0x8b3fc8
008b4078  03 9a                                            ldr r2, [sp, #0xc]
008b407a  5b 46                                            mov r3, fp
008b407c  a0 47                                            blx r4
008b407e  00 25                                            movs r5, #0
008b4080  01 1c                                            adds r1, r0, #0
008b4082  00 28                                            cmp r0, #0
008b4084  cd d0                                            beq #0x8b4022
008b4086  38 60                                            str r0, [r7]
008b4088  83 e7                                            b #0x8b3f92
008b408a  1c 20                                            movs r0, #0x1c
008b408c  5a f6 fe e3                                      blx #0x30e88c
008b4090  00 23                                            movs r3, #0
008b4092  43 60                                            str r3, [r0, #4]
008b4094  83 60                                            str r3, [r0, #8]
008b4096  c3 60                                            str r3, [r0, #0xc]
008b4098  03 61                                            str r3, [r0, #0x10]
008b409a  43 61                                            str r3, [r0, #0x14]
008b409c  9a 46                                            mov sl, r3
008b409e  fe 23                                            movs r3, #0xfe
008b40a0  9b 05                                            lsls r3, r3, #0x16
008b40a2  83 61                                            str r3, [r0, #0x18]
008b40a4  11 4b                                            ldr r3, [pc, #0x44]
008b40a6  05 1c                                            adds r5, r0, #0
008b40a8  08 35                                            adds r5, #8
008b40aa  f3 58                                            ldr r3, [r6, r3]
008b40ac  80 46                                            mov r8, r0
008b40ae  28 1c                                            adds r0, r5, #0
008b40b0  1b 68                                            ldr r3, [r3]
008b40b2  01 33                                            adds r3, #1
008b40b4  19 1c                                            adds r1, r3, #0
008b40b6  05 93                                            str r3, [sp, #0x14]
008b40b8  ff f7 30 fc                                      bl #0x8b391c
008b40bc  50 46                                            mov r0, sl
008b40be  0a 90                                            str r0, [sp, #0x28]
008b40c0  0a aa                                            add r2, sp, #0x28
008b40c2  28 1c                                            adds r0, r5, #0
008b40c4  05 99                                            ldr r1, [sp, #0x14]
008b40c6  ff f7 89 fa                                      bl #0x8b35dc
008b40ca  02 9b                                            ldr r3, [sp, #8]
008b40cc  42 46                                            mov r2, r8
008b40ce  1a 60                                            str r2, [r3]
008b40d0  83 e7                                            b #0x8b3fda
008b40d2  5a f6 1e e1                                      blx #0x30e310
008b40d6  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008b40d8  42 0b 0e 00 ac 40 00 00 5a 0f 18 00 1e 0f 18 00  .byte 0x42, 0x0b, 0x0e, 0x00, 0xac, 0x40, 0x00, 0x00, 0x5a, 0x0f, 0x18, 0x00, 0x1e, 0x0f, 0x18, 0x00
008b40e8  e8 1b 06 00 fc 1c 00 00                          .byte 0xe8, 0x1b, 0x06, 0x00, 0xfc, 0x1c, 0x00, 0x00

; FUNCTION 0x008b40f0, declared_size=64, range_size=64, mode=thumb
; class-group: std::priv
; alias: _ZNSt4priv18__acquire_messagesERPKcPcP17_Locale_name_hintPi
; demangled: std::priv::__acquire_messages(char const*&, char*, _Locale_name_hint*, int*)
; decoder-mode: thumb
008b40f0  30 b5                                            push {r4, r5, lr}
008b40f2  0a 4c                                            ldr r4, [pc, #0x28]
008b40f4  1d 1c                                            adds r5, r3, #0
008b40f6  0a 4b                                            ldr r3, [pc, #0x28]
008b40f8  7c 44                                            add r4, pc
008b40fa  85 b0                                            sub sp, #0x14
008b40fc  e3 58                                            ldr r3, [r4, r3]
008b40fe  09 4c                                            ldr r4, [pc, #0x24]
008b4100  03 95                                            str r5, [sp, #0xc]
008b4102  7c 44                                            add r4, pc
008b4104  00 94                                            str r4, [sp]
008b4106  08 4c                                            ldr r4, [pc, #0x20]
008b4108  7c 44                                            add r4, pc
008b410a  01 94                                            str r4, [sp, #4]
008b410c  07 4c                                            ldr r4, [pc, #0x1c]
008b410e  7c 44                                            add r4, pc
008b4110  04 34                                            adds r4, #4
008b4112  02 94                                            str r4, [sp, #8]
008b4114  ff f7 10 ff                                      bl #0x8b3f38
008b4118  05 b0                                            add sp, #0x14
008b411a  30 bd                                            pop {r4, r5, pc}
; mapping-symbol data/literal pool
008b411c  9c 09 0e 00 0c 44 00 00 c7 f3 ff ff b9 f3 ff ff  .byte 0x9c, 0x09, 0x0e, 0x00, 0x0c, 0x44, 0x00, 0x00, 0xc7, 0xf3, 0xff, 0xff, 0xb9, 0xf3, 0xff, 0xff
008b412c  16 0e 18 00                                      .byte 0x16, 0x0e, 0x18, 0x00

; FUNCTION 0x008b4130, declared_size=64, range_size=64, mode=thumb
; class-group: std::priv
; alias: _ZNSt4priv18__acquire_monetaryERPKcPcP17_Locale_name_hintPi
; demangled: std::priv::__acquire_monetary(char const*&, char*, _Locale_name_hint*, int*)
; decoder-mode: thumb
008b4130  30 b5                                            push {r4, r5, lr}
008b4132  0a 4c                                            ldr r4, [pc, #0x28]
008b4134  1d 1c                                            adds r5, r3, #0
008b4136  0a 4b                                            ldr r3, [pc, #0x28]
008b4138  7c 44                                            add r4, pc
008b413a  85 b0                                            sub sp, #0x14
008b413c  e3 58                                            ldr r3, [r4, r3]
008b413e  09 4c                                            ldr r4, [pc, #0x24]
008b4140  03 95                                            str r5, [sp, #0xc]
008b4142  7c 44                                            add r4, pc
008b4144  00 94                                            str r4, [sp]
008b4146  08 4c                                            ldr r4, [pc, #0x20]
008b4148  7c 44                                            add r4, pc
008b414a  01 94                                            str r4, [sp, #4]
008b414c  07 4c                                            ldr r4, [pc, #0x1c]
008b414e  7c 44                                            add r4, pc
008b4150  08 34                                            adds r4, #8
008b4152  02 94                                            str r4, [sp, #8]
008b4154  ff f7 f0 fe                                      bl #0x8b3f38
008b4158  05 b0                                            add sp, #0x14
008b415a  30 bd                                            pop {r4, r5, pc}
; mapping-symbol data/literal pool
008b415c  5c 09 0e 00 6c 4b 00 00 97 f3 ff ff 89 f3 ff ff  .byte 0x5c, 0x09, 0x0e, 0x00, 0x6c, 0x4b, 0x00, 0x00, 0x97, 0xf3, 0xff, 0xff, 0x89, 0xf3, 0xff, 0xff
008b416c  d6 0d 18 00                                      .byte 0xd6, 0x0d, 0x18, 0x00

; FUNCTION 0x008b4170, declared_size=64, range_size=64, mode=thumb
; class-group: std::priv
; alias: _ZNSt4priv17__acquire_collateERPKcPcP17_Locale_name_hintPi
; demangled: std::priv::__acquire_collate(char const*&, char*, _Locale_name_hint*, int*)
; decoder-mode: thumb
008b4170  30 b5                                            push {r4, r5, lr}
008b4172  0a 4c                                            ldr r4, [pc, #0x28]
008b4174  1d 1c                                            adds r5, r3, #0
008b4176  0a 4b                                            ldr r3, [pc, #0x28]
008b4178  7c 44                                            add r4, pc
008b417a  85 b0                                            sub sp, #0x14
008b417c  e3 58                                            ldr r3, [r4, r3]
008b417e  09 4c                                            ldr r4, [pc, #0x24]
008b4180  03 95                                            str r5, [sp, #0xc]
008b4182  7c 44                                            add r4, pc
008b4184  00 94                                            str r4, [sp]
008b4186  08 4c                                            ldr r4, [pc, #0x20]
008b4188  7c 44                                            add r4, pc
008b418a  01 94                                            str r4, [sp, #4]
008b418c  07 4c                                            ldr r4, [pc, #0x1c]
008b418e  7c 44                                            add r4, pc
008b4190  0c 34                                            adds r4, #0xc
008b4192  02 94                                            str r4, [sp, #8]
008b4194  ff f7 d0 fe                                      bl #0x8b3f38
008b4198  05 b0                                            add sp, #0x14
008b419a  30 bd                                            pop {r4, r5, pc}
; mapping-symbol data/literal pool
008b419c  1c 09 0e 00 38 0b 00 00 67 f3 ff ff 59 f3 ff ff  .byte 0x1c, 0x09, 0x0e, 0x00, 0x38, 0x0b, 0x00, 0x00, 0x67, 0xf3, 0xff, 0xff, 0x59, 0xf3, 0xff, 0xff
008b41ac  96 0d 18 00                                      .byte 0x96, 0x0d, 0x18, 0x00

; FUNCTION 0x008b41b0, declared_size=64, range_size=64, mode=thumb
; class-group: std::priv
; alias: _ZNSt4priv14__acquire_timeERPKcPcP17_Locale_name_hintPi
; demangled: std::priv::__acquire_time(char const*&, char*, _Locale_name_hint*, int*)
; decoder-mode: thumb
008b41b0  30 b5                                            push {r4, r5, lr}
008b41b2  0a 4c                                            ldr r4, [pc, #0x28]
008b41b4  1d 1c                                            adds r5, r3, #0
008b41b6  0a 4b                                            ldr r3, [pc, #0x28]
008b41b8  7c 44                                            add r4, pc
008b41ba  85 b0                                            sub sp, #0x14
008b41bc  e3 58                                            ldr r3, [r4, r3]
008b41be  09 4c                                            ldr r4, [pc, #0x24]
008b41c0  03 95                                            str r5, [sp, #0xc]
008b41c2  7c 44                                            add r4, pc
008b41c4  00 94                                            str r4, [sp]
008b41c6  08 4c                                            ldr r4, [pc, #0x20]
008b41c8  7c 44                                            add r4, pc
008b41ca  01 94                                            str r4, [sp, #4]
008b41cc  07 4c                                            ldr r4, [pc, #0x1c]
008b41ce  7c 44                                            add r4, pc
008b41d0  10 34                                            adds r4, #0x10
008b41d2  02 94                                            str r4, [sp, #8]
008b41d4  ff f7 b0 fe                                      bl #0x8b3f38
008b41d8  05 b0                                            add sp, #0x14
008b41da  30 bd                                            pop {r4, r5, pc}
; mapping-symbol data/literal pool
008b41dc  dc 08 0e 00 f4 0e 00 00 37 f3 ff ff 29 f3 ff ff  .byte 0xdc, 0x08, 0x0e, 0x00, 0xf4, 0x0e, 0x00, 0x00, 0x37, 0xf3, 0xff, 0xff, 0x29, 0xf3, 0xff, 0xff
008b41ec  56 0d 18 00                                      .byte 0x56, 0x0d, 0x18, 0x00

; FUNCTION 0x008b41f0, declared_size=64, range_size=64, mode=thumb
; class-group: std::priv
; alias: _ZNSt4priv17__acquire_numericERPKcPcP17_Locale_name_hintPi
; demangled: std::priv::__acquire_numeric(char const*&, char*, _Locale_name_hint*, int*)
; decoder-mode: thumb
008b41f0  30 b5                                            push {r4, r5, lr}
008b41f2  0a 4c                                            ldr r4, [pc, #0x28]
008b41f4  1d 1c                                            adds r5, r3, #0
008b41f6  0a 4b                                            ldr r3, [pc, #0x28]
008b41f8  7c 44                                            add r4, pc
008b41fa  85 b0                                            sub sp, #0x14
008b41fc  e3 58                                            ldr r3, [r4, r3]
008b41fe  09 4c                                            ldr r4, [pc, #0x24]
008b4200  03 95                                            str r5, [sp, #0xc]
008b4202  7c 44                                            add r4, pc
008b4204  00 94                                            str r4, [sp]
008b4206  08 4c                                            ldr r4, [pc, #0x20]
008b4208  7c 44                                            add r4, pc
008b420a  01 94                                            str r4, [sp, #4]
008b420c  07 4c                                            ldr r4, [pc, #0x1c]
008b420e  7c 44                                            add r4, pc
008b4210  14 34                                            adds r4, #0x14
008b4212  02 94                                            str r4, [sp, #8]
008b4214  ff f7 90 fe                                      bl #0x8b3f38
008b4218  05 b0                                            add sp, #0x14
008b421a  30 bd                                            pop {r4, r5, pc}
; mapping-symbol data/literal pool
008b421c  9c 08 0e 00 c4 15 00 00 07 f3 ff ff f9 f2 ff ff  .byte 0x9c, 0x08, 0x0e, 0x00, 0xc4, 0x15, 0x00, 0x00, 0x07, 0xf3, 0xff, 0xff, 0xf9, 0xf2, 0xff, 0xff
008b422c  16 0d 18 00                                      .byte 0x16, 0x0d, 0x18, 0x00

; FUNCTION 0x008b4230, declared_size=64, range_size=64, mode=thumb
; class-group: std::priv
; alias: _ZNSt4priv17__acquire_codecvtERPKcPcP17_Locale_name_hintPi
; demangled: std::priv::__acquire_codecvt(char const*&, char*, _Locale_name_hint*, int*)
; decoder-mode: thumb
008b4230  30 b5                                            push {r4, r5, lr}
008b4232  0a 4c                                            ldr r4, [pc, #0x28]
008b4234  1d 1c                                            adds r5, r3, #0
008b4236  0a 4b                                            ldr r3, [pc, #0x28]
008b4238  7c 44                                            add r4, pc
008b423a  85 b0                                            sub sp, #0x14
008b423c  e3 58                                            ldr r3, [r4, r3]
008b423e  09 4c                                            ldr r4, [pc, #0x24]
008b4240  03 95                                            str r5, [sp, #0xc]
008b4242  7c 44                                            add r4, pc
008b4244  00 94                                            str r4, [sp]
008b4246  08 4c                                            ldr r4, [pc, #0x20]
008b4248  7c 44                                            add r4, pc
008b424a  01 94                                            str r4, [sp, #4]
008b424c  07 4c                                            ldr r4, [pc, #0x1c]
008b424e  7c 44                                            add r4, pc
008b4250  18 34                                            adds r4, #0x18
008b4252  02 94                                            str r4, [sp, #8]
008b4254  ff f7 70 fe                                      bl #0x8b3f38
008b4258  05 b0                                            add sp, #0x14
008b425a  30 bd                                            pop {r4, r5, pc}
; mapping-symbol data/literal pool
008b425c  5c 08 0e 00 64 47 00 00 d7 f2 ff ff c9 f2 ff ff  .byte 0x5c, 0x08, 0x0e, 0x00, 0x64, 0x47, 0x00, 0x00, 0xd7, 0xf2, 0xff, 0xff, 0xc9, 0xf2, 0xff, 0xff
008b426c  d6 0c 18 00                                      .byte 0xd6, 0x0c, 0x18, 0x00

; FUNCTION 0x008b4270, declared_size=64, range_size=64, mode=thumb
; class-group: std::priv
; alias: _ZNSt4priv15__acquire_ctypeERPKcPcP17_Locale_name_hintPi
; demangled: std::priv::__acquire_ctype(char const*&, char*, _Locale_name_hint*, int*)
; decoder-mode: thumb
008b4270  30 b5                                            push {r4, r5, lr}
008b4272  0a 4c                                            ldr r4, [pc, #0x28]
008b4274  1d 1c                                            adds r5, r3, #0
008b4276  0a 4b                                            ldr r3, [pc, #0x28]
008b4278  7c 44                                            add r4, pc
008b427a  85 b0                                            sub sp, #0x14
008b427c  e3 58                                            ldr r3, [r4, r3]
008b427e  09 4c                                            ldr r4, [pc, #0x24]
008b4280  03 95                                            str r5, [sp, #0xc]
008b4282  7c 44                                            add r4, pc
008b4284  00 94                                            str r4, [sp]
008b4286  08 4c                                            ldr r4, [pc, #0x20]
008b4288  7c 44                                            add r4, pc
008b428a  01 94                                            str r4, [sp, #4]
008b428c  07 4c                                            ldr r4, [pc, #0x1c]
008b428e  7c 44                                            add r4, pc
008b4290  1c 34                                            adds r4, #0x1c
008b4292  02 94                                            str r4, [sp, #8]
008b4294  ff f7 50 fe                                      bl #0x8b3f38
008b4298  05 b0                                            add sp, #0x14
008b429a  30 bd                                            pop {r4, r5, pc}
; mapping-symbol data/literal pool
008b429c  1c 08 0e 00 64 47 00 00 9f f2 ff ff 89 f2 ff ff  .byte 0x1c, 0x08, 0x0e, 0x00, 0x64, 0x47, 0x00, 0x00, 0x9f, 0xf2, 0xff, 0xff, 0x89, 0xf2, 0xff, 0xff
008b42ac  96 0c 18 00                                      .byte 0x96, 0x0c, 0x18, 0x00

; FUNCTION 0x008b4400, declared_size=244, range_size=244, mode=thumb
; class-group: std::priv
; alias: _ZNSt4privL26_Init_monetary_formats_intERNSt10money_base7patternES2_P16_Locale_monetary
; demangled: std::priv::_Init_monetary_formats_int(std::money_base::pattern&, std::money_base::pattern&, _Locale_monetary*)
; decoder-mode: thumb
008b4400  70 b5                                            push {r4, r5, r6, lr}
008b4402  05 1c                                            adds r5, r0, #0
008b4404  10 1c                                            adds r0, r2, #0
008b4406  0c 1c                                            adds r4, r1, #0
008b4408  16 1c                                            adds r6, r2, #0
008b440a  02 f0 7f fb                                      bl #0x8b6b0c
008b440e  04 28                                            cmp r0, #4
008b4410  1b d9                                            bls #0x8b444a
008b4412  02 23                                            movs r3, #2
008b4414  2b 70                                            strb r3, [r5]
008b4416  03 23                                            movs r3, #3
008b4418  6b 70                                            strb r3, [r5, #1]
008b441a  00 23                                            movs r3, #0
008b441c  ab 70                                            strb r3, [r5, #2]
008b441e  04 23                                            movs r3, #4
008b4420  eb 70                                            strb r3, [r5, #3]
008b4422  30 1c                                            adds r0, r6, #0
008b4424  02 f0 78 fb                                      bl #0x8b6b18
008b4428  04 28                                            cmp r0, #4
008b442a  08 d9                                            bls #0x8b443e
008b442c  02 23                                            movs r3, #2
008b442e  23 70                                            strb r3, [r4]
008b4430  03 23                                            movs r3, #3
008b4432  63 70                                            strb r3, [r4, #1]
008b4434  00 23                                            movs r3, #0
008b4436  a3 70                                            strb r3, [r4, #2]
008b4438  04 23                                            movs r3, #4
008b443a  e3 70                                            strb r3, [r4, #3]
008b443c  70 bd                                            pop {r4, r5, r6, pc}
008b443e  2b 4b                                            ldr r3, [pc, #0xac]
008b4440  80 00                                            lsls r0, r0, #2
008b4442  7b 44                                            add r3, pc
008b4444  c2 58                                            ldr r2, [r0, r3]
008b4446  d3 18                                            adds r3, r2, r3
008b4448  9f 46                                            mov pc, r3
008b444a  29 4b                                            ldr r3, [pc, #0xa4]
008b444c  80 00                                            lsls r0, r0, #2
008b444e  7b 44                                            add r3, pc
008b4450  c2 58                                            ldr r2, [r0, r3]
008b4452  d3 18                                            adds r3, r2, r3
008b4454  9f 46                                            mov pc, r3
008b4456  02 23                                            movs r3, #2
008b4458  2b 70                                            strb r3, [r5]
008b445a  04 23                                            movs r3, #4
008b445c  6b 70                                            strb r3, [r5, #1]
008b445e  03 23                                            movs r3, #3
008b4460  ab 70                                            strb r3, [r5, #2]
008b4462  00 23                                            movs r3, #0
008b4464  eb 70                                            strb r3, [r5, #3]
008b4466  dc e7                                            b #0x8b4422
008b4468  02 23                                            movs r3, #2
008b446a  2b 70                                            strb r3, [r5]
008b446c  03 23                                            movs r3, #3
008b446e  6b 70                                            strb r3, [r5, #1]
008b4470  04 23                                            movs r3, #4
008b4472  ab 70                                            strb r3, [r5, #2]
008b4474  00 23                                            movs r3, #0
008b4476  eb 70                                            strb r3, [r5, #3]
008b4478  d3 e7                                            b #0x8b4422
008b447a  02 23                                            movs r3, #2
008b447c  2b 70                                            strb r3, [r5]
008b447e  30 1c                                            adds r0, r6, #0
008b4480  02 f0 40 fb                                      bl #0x8b6b04
008b4484  00 28                                            cmp r0, #0
008b4486  2b d1                                            bne #0x8b44e0
008b4488  04 23                                            movs r3, #4
008b448a  6b 70                                            strb r3, [r5, #1]
008b448c  03 23                                            movs r3, #3
008b448e  ab 70                                            strb r3, [r5, #2]
008b4490  00 23                                            movs r3, #0
008b4492  eb 70                                            strb r3, [r5, #3]
008b4494  c5 e7                                            b #0x8b4422
008b4496  02 23                                            movs r3, #2
008b4498  23 70                                            strb r3, [r4]
008b449a  04 23                                            movs r3, #4
008b449c  63 70                                            strb r3, [r4, #1]
008b449e  03 23                                            movs r3, #3
008b44a0  a3 70                                            strb r3, [r4, #2]
008b44a2  00 23                                            movs r3, #0
008b44a4  e3 70                                            strb r3, [r4, #3]
008b44a6  c9 e7                                            b #0x8b443c
008b44a8  02 23                                            movs r3, #2
008b44aa  23 70                                            strb r3, [r4]
008b44ac  03 23                                            movs r3, #3
008b44ae  63 70                                            strb r3, [r4, #1]
008b44b0  04 23                                            movs r3, #4
008b44b2  a3 70                                            strb r3, [r4, #2]
008b44b4  00 23                                            movs r3, #0
008b44b6  e3 70                                            strb r3, [r4, #3]
008b44b8  c0 e7                                            b #0x8b443c
008b44ba  02 23                                            movs r3, #2
008b44bc  23 70                                            strb r3, [r4]
008b44be  30 1c                                            adds r0, r6, #0
008b44c0  02 f0 26 fb                                      bl #0x8b6b10
008b44c4  00 28                                            cmp r0, #0
008b44c6  06 d1                                            bne #0x8b44d6
008b44c8  04 23                                            movs r3, #4
008b44ca  63 70                                            strb r3, [r4, #1]
008b44cc  03 23                                            movs r3, #3
008b44ce  a3 70                                            strb r3, [r4, #2]
008b44d0  00 23                                            movs r3, #0
008b44d2  e3 70                                            strb r3, [r4, #3]
008b44d4  b2 e7                                            b #0x8b443c
008b44d6  03 23                                            movs r3, #3
008b44d8  63 70                                            strb r3, [r4, #1]
008b44da  04 23                                            movs r3, #4
008b44dc  a3 70                                            strb r3, [r4, #2]
008b44de  f7 e7                                            b #0x8b44d0
008b44e0  03 23                                            movs r3, #3
008b44e2  6b 70                                            strb r3, [r5, #1]
008b44e4  04 23                                            movs r3, #4
008b44e6  ab 70                                            strb r3, [r5, #2]
008b44e8  d2 e7                                            b #0x8b4490
008b44ea  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008b44ec  62 18 06 00 6a 18 06 00                          .byte 0x62, 0x18, 0x06, 0x00, 0x6a, 0x18, 0x06, 0x00

; FUNCTION 0x008b44f4, declared_size=528, range_size=528, mode=thumb
; class-group: std::priv
; alias: _ZNSt4privL22_Init_monetary_formatsERNSt10money_base7patternES2_P16_Locale_monetary
; demangled: std::priv::_Init_monetary_formats(std::money_base::pattern&, std::money_base::pattern&, _Locale_monetary*)
; decoder-mode: thumb
008b44f4  70 b5                                            push {r4, r5, r6, lr}
008b44f6  06 1c                                            adds r6, r0, #0
008b44f8  10 1c                                            adds r0, r2, #0
008b44fa  0d 1c                                            adds r5, r1, #0
008b44fc  14 1c                                            adds r4, r2, #0
008b44fe  02 f0 05 fb                                      bl #0x8b6b0c
008b4502  04 28                                            cmp r0, #4
008b4504  1b d9                                            bls #0x8b453e
008b4506  02 23                                            movs r3, #2
008b4508  33 70                                            strb r3, [r6]
008b450a  03 23                                            movs r3, #3
008b450c  73 70                                            strb r3, [r6, #1]
008b450e  00 23                                            movs r3, #0
008b4510  b3 70                                            strb r3, [r6, #2]
008b4512  04 23                                            movs r3, #4
008b4514  f3 70                                            strb r3, [r6, #3]
008b4516  20 1c                                            adds r0, r4, #0
008b4518  02 f0 fe fa                                      bl #0x8b6b18
008b451c  04 28                                            cmp r0, #4
008b451e  08 d9                                            bls #0x8b4532
008b4520  02 23                                            movs r3, #2
008b4522  2b 70                                            strb r3, [r5]
008b4524  03 23                                            movs r3, #3
008b4526  6b 70                                            strb r3, [r5, #1]
008b4528  00 23                                            movs r3, #0
008b452a  ab 70                                            strb r3, [r5, #2]
008b452c  04 23                                            movs r3, #4
008b452e  eb 70                                            strb r3, [r5, #3]
008b4530  70 bd                                            pop {r4, r5, r6, pc}
008b4532  72 4b                                            ldr r3, [pc, #0x1c8]
008b4534  80 00                                            lsls r0, r0, #2
008b4536  7b 44                                            add r3, pc
008b4538  c2 58                                            ldr r2, [r0, r3]
008b453a  d3 18                                            adds r3, r2, r3
008b453c  9f 46                                            mov pc, r3
008b453e  70 4b                                            ldr r3, [pc, #0x1c0]
008b4540  80 00                                            lsls r0, r0, #2
008b4542  7b 44                                            add r3, pc
008b4544  c2 58                                            ldr r2, [r0, r3]
008b4546  d3 18                                            adds r3, r2, r3
008b4548  9f 46                                            mov pc, r3
008b454a  20 1c                                            adds r0, r4, #0
008b454c  02 f0 da fa                                      bl #0x8b6b04
008b4550  00 28                                            cmp r0, #0
008b4552  00 d0                                            beq #0x8b4556
008b4554  ae e0                                            b #0x8b46b4
008b4556  04 23                                            movs r3, #4
008b4558  33 70                                            strb r3, [r6]
008b455a  03 23                                            movs r3, #3
008b455c  73 70                                            strb r3, [r6, #1]
008b455e  02 23                                            movs r3, #2
008b4560  b3 70                                            strb r3, [r6, #2]
008b4562  f0 70                                            strb r0, [r6, #3]
008b4564  d7 e7                                            b #0x8b4516
008b4566  20 1c                                            adds r0, r4, #0
008b4568  02 f0 cc fa                                      bl #0x8b6b04
008b456c  00 28                                            cmp r0, #0
008b456e  77 d0                                            beq #0x8b4660
008b4570  02 23                                            movs r3, #2
008b4572  33 70                                            strb r3, [r6]
008b4574  20 1c                                            adds r0, r4, #0
008b4576  02 f0 c7 fa                                      bl #0x8b6b08
008b457a  00 28                                            cmp r0, #0
008b457c  00 d1                                            bne #0x8b4580
008b457e  b6 e0                                            b #0x8b46ee
008b4580  01 23                                            movs r3, #1
008b4582  73 70                                            strb r3, [r6, #1]
008b4584  04 23                                            movs r3, #4
008b4586  b3 70                                            strb r3, [r6, #2]
008b4588  03 23                                            movs r3, #3
008b458a  f3 70                                            strb r3, [r6, #3]
008b458c  c3 e7                                            b #0x8b4516
008b458e  03 23                                            movs r3, #3
008b4590  33 70                                            strb r3, [r6]
008b4592  20 1c                                            adds r0, r4, #0
008b4594  02 f0 b6 fa                                      bl #0x8b6b04
008b4598  00 28                                            cmp r0, #0
008b459a  7b d0                                            beq #0x8b4694
008b459c  02 23                                            movs r3, #2
008b459e  73 70                                            strb r3, [r6, #1]
008b45a0  20 1c                                            adds r0, r4, #0
008b45a2  02 f0 b1 fa                                      bl #0x8b6b08
008b45a6  00 28                                            cmp r0, #0
008b45a8  00 d1                                            bne #0x8b45ac
008b45aa  96 e0                                            b #0x8b46da
008b45ac  01 23                                            movs r3, #1
008b45ae  b3 70                                            strb r3, [r6, #2]
008b45b0  04 23                                            movs r3, #4
008b45b2  f3 70                                            strb r3, [r6, #3]
008b45b4  af e7                                            b #0x8b4516
008b45b6  20 1c                                            adds r0, r4, #0
008b45b8  02 f0 a4 fa                                      bl #0x8b6b04
008b45bc  00 28                                            cmp r0, #0
008b45be  4f d0                                            beq #0x8b4660
008b45c0  02 23                                            movs r3, #2
008b45c2  33 70                                            strb r3, [r6]
008b45c4  03 23                                            movs r3, #3
008b45c6  73 70                                            strb r3, [r6, #1]
008b45c8  04 23                                            movs r3, #4
008b45ca  b3 70                                            strb r3, [r6, #2]
008b45cc  00 23                                            movs r3, #0
008b45ce  f3 70                                            strb r3, [r6, #3]
008b45d0  a1 e7                                            b #0x8b4516
008b45d2  20 1c                                            adds r0, r4, #0
008b45d4  02 f0 9c fa                                      bl #0x8b6b10
008b45d8  00 28                                            cmp r0, #0
008b45da  68 d1                                            bne #0x8b46ae
008b45dc  04 23                                            movs r3, #4
008b45de  2b 70                                            strb r3, [r5]
008b45e0  03 23                                            movs r3, #3
008b45e2  6b 70                                            strb r3, [r5, #1]
008b45e4  02 23                                            movs r3, #2
008b45e6  ab 70                                            strb r3, [r5, #2]
008b45e8  e8 70                                            strb r0, [r5, #3]
008b45ea  a1 e7                                            b #0x8b4530
008b45ec  20 1c                                            adds r0, r4, #0
008b45ee  02 f0 8f fa                                      bl #0x8b6b10
008b45f2  00 28                                            cmp r0, #0
008b45f4  26 d0                                            beq #0x8b4644
008b45f6  02 23                                            movs r3, #2
008b45f8  2b 70                                            strb r3, [r5]
008b45fa  20 1c                                            adds r0, r4, #0
008b45fc  02 f0 8a fa                                      bl #0x8b6b14
008b4600  00 28                                            cmp r0, #0
008b4602  6e d0                                            beq #0x8b46e2
008b4604  01 23                                            movs r3, #1
008b4606  6b 70                                            strb r3, [r5, #1]
008b4608  04 23                                            movs r3, #4
008b460a  ab 70                                            strb r3, [r5, #2]
008b460c  03 23                                            movs r3, #3
008b460e  eb 70                                            strb r3, [r5, #3]
008b4610  8e e7                                            b #0x8b4530
008b4612  03 23                                            movs r3, #3
008b4614  2b 70                                            strb r3, [r5]
008b4616  20 1c                                            adds r0, r4, #0
008b4618  02 f0 7a fa                                      bl #0x8b6b10
008b461c  00 28                                            cmp r0, #0
008b461e  2d d0                                            beq #0x8b467c
008b4620  02 23                                            movs r3, #2
008b4622  6b 70                                            strb r3, [r5, #1]
008b4624  20 1c                                            adds r0, r4, #0
008b4626  02 f0 75 fa                                      bl #0x8b6b14
008b462a  00 28                                            cmp r0, #0
008b462c  4b d0                                            beq #0x8b46c6
008b462e  01 23                                            movs r3, #1
008b4630  ab 70                                            strb r3, [r5, #2]
008b4632  04 23                                            movs r3, #4
008b4634  eb 70                                            strb r3, [r5, #3]
008b4636  7b e7                                            b #0x8b4530
008b4638  20 1c                                            adds r0, r4, #0
008b463a  02 f0 69 fa                                      bl #0x8b6b10
008b463e  00 28                                            cmp r0, #0
008b4640  00 d0                                            beq #0x8b4644
008b4642  6d e7                                            b #0x8b4520
008b4644  04 23                                            movs r3, #4
008b4646  2b 70                                            strb r3, [r5]
008b4648  20 1c                                            adds r0, r4, #0
008b464a  02 f0 63 fa                                      bl #0x8b6b14
008b464e  00 28                                            cmp r0, #0
008b4650  33 d0                                            beq #0x8b46ba
008b4652  01 23                                            movs r3, #1
008b4654  6b 70                                            strb r3, [r5, #1]
008b4656  02 23                                            movs r3, #2
008b4658  ab 70                                            strb r3, [r5, #2]
008b465a  03 23                                            movs r3, #3
008b465c  eb 70                                            strb r3, [r5, #3]
008b465e  67 e7                                            b #0x8b4530
008b4660  04 23                                            movs r3, #4
008b4662  33 70                                            strb r3, [r6]
008b4664  20 1c                                            adds r0, r4, #0
008b4666  02 f0 4f fa                                      bl #0x8b6b08
008b466a  00 28                                            cmp r0, #0
008b466c  2f d0                                            beq #0x8b46ce
008b466e  01 23                                            movs r3, #1
008b4670  73 70                                            strb r3, [r6, #1]
008b4672  02 23                                            movs r3, #2
008b4674  b3 70                                            strb r3, [r6, #2]
008b4676  03 23                                            movs r3, #3
008b4678  f3 70                                            strb r3, [r6, #3]
008b467a  4c e7                                            b #0x8b4516
008b467c  04 23                                            movs r3, #4
008b467e  6b 70                                            strb r3, [r5, #1]
008b4680  20 1c                                            adds r0, r4, #0
008b4682  02 f0 47 fa                                      bl #0x8b6b14
008b4686  00 28                                            cmp r0, #0
008b4688  ac d0                                            beq #0x8b45e4
008b468a  01 23                                            movs r3, #1
008b468c  ab 70                                            strb r3, [r5, #2]
008b468e  02 23                                            movs r3, #2
008b4690  eb 70                                            strb r3, [r5, #3]
008b4692  4d e7                                            b #0x8b4530
008b4694  04 23                                            movs r3, #4
008b4696  73 70                                            strb r3, [r6, #1]
008b4698  20 1c                                            adds r0, r4, #0
008b469a  02 f0 35 fa                                      bl #0x8b6b08
008b469e  00 28                                            cmp r0, #0
008b46a0  00 d1                                            bne #0x8b46a4
008b46a2  5c e7                                            b #0x8b455e
008b46a4  01 23                                            movs r3, #1
008b46a6  b3 70                                            strb r3, [r6, #2]
008b46a8  02 23                                            movs r3, #2
008b46aa  f3 70                                            strb r3, [r6, #3]
008b46ac  33 e7                                            b #0x8b4516
008b46ae  03 23                                            movs r3, #3
008b46b0  2b 70                                            strb r3, [r5]
008b46b2  b5 e7                                            b #0x8b4620
008b46b4  03 23                                            movs r3, #3
008b46b6  33 70                                            strb r3, [r6]
008b46b8  70 e7                                            b #0x8b459c
008b46ba  02 23                                            movs r3, #2
008b46bc  6b 70                                            strb r3, [r5, #1]
008b46be  03 23                                            movs r3, #3
008b46c0  ab 70                                            strb r3, [r5, #2]
008b46c2  e8 70                                            strb r0, [r5, #3]
008b46c4  34 e7                                            b #0x8b4530
008b46c6  04 23                                            movs r3, #4
008b46c8  ab 70                                            strb r3, [r5, #2]
008b46ca  e8 70                                            strb r0, [r5, #3]
008b46cc  30 e7                                            b #0x8b4530
008b46ce  02 23                                            movs r3, #2
008b46d0  73 70                                            strb r3, [r6, #1]
008b46d2  03 23                                            movs r3, #3
008b46d4  b3 70                                            strb r3, [r6, #2]
008b46d6  f0 70                                            strb r0, [r6, #3]
008b46d8  1d e7                                            b #0x8b4516
008b46da  04 23                                            movs r3, #4
008b46dc  b3 70                                            strb r3, [r6, #2]
008b46de  f0 70                                            strb r0, [r6, #3]
008b46e0  19 e7                                            b #0x8b4516
008b46e2  04 23                                            movs r3, #4
008b46e4  6b 70                                            strb r3, [r5, #1]
008b46e6  03 23                                            movs r3, #3
008b46e8  ab 70                                            strb r3, [r5, #2]
008b46ea  e8 70                                            strb r0, [r5, #3]
008b46ec  20 e7                                            b #0x8b4530
008b46ee  04 23                                            movs r3, #4
008b46f0  73 70                                            strb r3, [r6, #1]
008b46f2  03 23                                            movs r3, #3
008b46f4  b3 70                                            strb r3, [r6, #2]
008b46f6  f0 70                                            strb r0, [r6, #3]
008b46f8  0d e7                                            b #0x8b4516
008b46fa  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008b46fc  96 17 06 00 9e 17 06 00                          .byte 0x96, 0x17, 0x06, 0x00, 0x9e, 0x17, 0x06, 0x00

; FUNCTION 0x008b9874, declared_size=70, range_size=70, mode=thumb
; class-group: std::priv
; alias: _ZNSt4priv16__valid_groupingEPKcS1_S1_S1_
; demangled: std::priv::__valid_grouping(char const*, char const*, char const*, char const*)
; decoder-mode: thumb
008b9874  30 b5                                            push {r4, r5, lr}
008b9876  9a 42                                            cmp r2, r3
008b9878  19 d0                                            beq #0x8b98ae
008b987a  88 42                                            cmp r0, r1
008b987c  17 d0                                            beq #0x8b98ae
008b987e  01 39                                            subs r1, #1
008b9880  01 3b                                            subs r3, #1
008b9882  88 42                                            cmp r0, r1
008b9884  17 d0                                            beq #0x8b98b6
008b9886  0d 78                                            ldrb r5, [r1]
008b9888  14 78                                            ldrb r4, [r2]
008b988a  a5 42                                            cmp r5, r4
008b988c  03 d0                                            beq #0x8b9896
008b988e  10 e0                                            b #0x8b98b2
008b9890  0d 78                                            ldrb r5, [r1]
008b9892  a5 42                                            cmp r5, r4
008b9894  0d d1                                            bne #0x8b98b2
008b9896  01 39                                            subs r1, #1
008b9898  9a 42                                            cmp r2, r3
008b989a  01 d0                                            beq #0x8b98a0
008b989c  01 32                                            adds r2, #1
008b989e  14 78                                            ldrb r4, [r2]
008b98a0  81 42                                            cmp r1, r0
008b98a2  f5 d1                                            bne #0x8b9890
008b98a4  03 78                                            ldrb r3, [r0]
008b98a6  00 20                                            movs r0, #0
008b98a8  9c 42                                            cmp r4, r3
008b98aa  40 41                                            adcs r0, r0
008b98ac  30 bd                                            pop {r4, r5, pc}
008b98ae  01 20                                            movs r0, #1
008b98b0  fc e7                                            b #0x8b98ac
008b98b2  00 20                                            movs r0, #0
008b98b4  fa e7                                            b #0x8b98ac
008b98b6  14 78                                            ldrb r4, [r2]
008b98b8  f4 e7                                            b #0x8b98a4

; FUNCTION 0x008b98bc, declared_size=12, range_size=12, mode=thumb
; class-group: std::priv
; alias: _ZNSt4priv17__digit_val_tableEj
; demangled: std::priv::__digit_val_table(unsigned int)
; decoder-mode: thumb
008b98bc  01 4b                                            ldr r3, [pc, #4]
008b98be  7b 44                                            add r3, pc
008b98c0  18 5c                                            ldrb r0, [r3, r0]
008b98c2  70 47                                            bx lr
; mapping-symbol data/literal pool
008b98c4  76 c5 05 00                                      .byte 0x76, 0xc5, 0x05, 0x00

; FUNCTION 0x008b98c8, declared_size=12, range_size=12, mode=thumb
; class-group: std::priv
; alias: _ZNSt4priv14__narrow_atomsEv
; demangled: std::priv::__narrow_atoms()
; decoder-mode: thumb
008b98c8  01 48                                            ldr r0, [pc, #4]
008b98ca  78 44                                            add r0, pc
008b98cc  70 47                                            bx lr
008b98ce  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008b98d0  ea c5 05 00                                      .byte 0xea, 0xc5, 0x05, 0x00

; FUNCTION 0x008b9968, declared_size=50, range_size=50, mode=thumb
; class-group: std::priv
; alias: _ZNSt4priv12__get_fdigitERwPKw
; demangled: std::priv::__get_fdigit(wchar_t&, wchar_t const*)
; decoder-mode: thumb
008b9968  70 b5                                            push {r4, r5, r6, lr}
008b996a  0d 1c                                            adds r5, r1, #0
008b996c  82 b0                                            sub sp, #8
008b996e  06 1c                                            adds r6, r0, #0
008b9970  28 35                                            adds r5, #0x28
008b9972  08 1c                                            adds r0, r1, #0
008b9974  01 ab                                            add r3, sp, #4
008b9976  0c 1c                                            adds r4, r1, #0
008b9978  32 1c                                            adds r2, r6, #0
008b997a  29 1c                                            adds r1, r5, #0
008b997c  ff f7 aa ff                                      bl #0x8b98d4
008b9980  00 23                                            movs r3, #0
008b9982  85 42                                            cmp r5, r0
008b9984  06 d0                                            beq #0x8b9994
008b9986  00 1b                                            subs r0, r0, r4
008b9988  80 10                                            asrs r0, r0, #2
008b998a  30 30                                            adds r0, #0x30
008b998c  00 06                                            lsls r0, r0, #0x18
008b998e  00 0e                                            lsrs r0, r0, #0x18
008b9990  30 60                                            str r0, [r6]
008b9992  01 23                                            movs r3, #1
008b9994  02 b0                                            add sp, #8
008b9996  18 1c                                            adds r0, r3, #0
008b9998  70 bd                                            pop {r4, r5, r6, pc}

; FUNCTION 0x008b999c, declared_size=24, range_size=24, mode=thumb
; class-group: std::priv
; alias: _ZNSt4priv19__get_fdigit_or_sepERwwPKw
; demangled: std::priv::__get_fdigit_or_sep(wchar_t&, wchar_t, wchar_t const*)
; decoder-mode: thumb
008b999c  10 b5                                            push {r4, lr}
008b999e  03 68                                            ldr r3, [r0]
008b99a0  8b 42                                            cmp r3, r1
008b99a2  03 d0                                            beq #0x8b99ac
008b99a4  11 1c                                            adds r1, r2, #0
008b99a6  ff f7 df ff                                      bl #0x8b9968
008b99aa  10 bd                                            pop {r4, pc}
008b99ac  2c 23                                            movs r3, #0x2c
008b99ae  03 60                                            str r3, [r0]
008b99b0  01 20                                            movs r0, #1
008b99b2  fa e7                                            b #0x8b99aa

; FUNCTION 0x008b99b4, declared_size=12, range_size=12, mode=thumb
; class-group: std::priv
; alias: _ZNSt4priv19__hex_char_table_loEv
; demangled: std::priv::__hex_char_table_lo()
; decoder-mode: thumb
008b99b4  01 48                                            ldr r0, [pc, #4]
008b99b6  78 44                                            add r0, pc
008b99b8  70 47                                            bx lr
008b99ba  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008b99bc  06 c5 05 00                                      .byte 0x06, 0xc5, 0x05, 0x00

; FUNCTION 0x008b99c0, declared_size=12, range_size=12, mode=thumb
; class-group: std::priv
; alias: _ZNSt4priv19__hex_char_table_hiEv
; demangled: std::priv::__hex_char_table_hi()
; decoder-mode: thumb
008b99c0  01 48                                            ldr r0, [pc, #4]
008b99c2  78 44                                            add r0, pc
008b99c4  70 47                                            bx lr
008b99c6  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008b99c8  0e c5 05 00                                      .byte 0x0e, 0xc5, 0x05, 0x00

; FUNCTION 0x008b99cc, declared_size=158, range_size=158, mode=thumb
; class-group: std::priv
; alias: _ZNSt4priv17__insert_groupingEPwS0_RKSswwwi
; demangled: std::priv::__insert_grouping(wchar_t*, wchar_t*, std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, wchar_t, wchar_t, wchar_t, int)
; decoder-mode: thumb
008b99cc  f8 b5                                            push {r3, r4, r5, r6, r7, lr}
008b99ce  5f 46                                            mov r7, fp
008b99d0  56 46                                            mov r6, sl
008b99d2  4d 46                                            mov r5, sb
008b99d4  44 46                                            mov r4, r8
008b99d6  f0 b4                                            push {r4, r5, r6, r7}
008b99d8  0c 1c                                            adds r4, r1, #0
008b99da  16 1c                                            adds r6, r2, #0
008b99dc  99 46                                            mov sb, r3
008b99de  00 27                                            movs r7, #0
008b99e0  a0 42                                            cmp r0, r4
008b99e2  28 d0                                            beq #0x8b9a36
008b99e4  03 68                                            ldr r3, [r0]
008b99e6  0a 9a                                            ldr r2, [sp, #0x28]
008b99e8  9a 42                                            cmp r2, r3
008b99ea  3a d0                                            beq #0x8b9a62
008b99ec  0b 9a                                            ldr r2, [sp, #0x2c]
008b99ee  00 21                                            movs r1, #0
008b99f0  8b 46                                            mov fp, r1
008b99f2  9a 42                                            cmp r2, r3
008b99f4  35 d0                                            beq #0x8b9a62
008b99f6  0c 9b                                            ldr r3, [sp, #0x30]
008b99f8  00 25                                            movs r5, #0
008b99fa  9f 00                                            lsls r7, r3, #2
008b99fc  c0 19                                            adds r0, r0, r7
008b99fe  82 46                                            mov sl, r0
008b9a00  27 1c                                            adds r7, r4, #0
008b9a02  00 23                                            movs r3, #0
008b9a04  72 69                                            ldr r2, [r6, #0x14]
008b9a06  31 69                                            ldr r1, [r6, #0x10]
008b9a08  98 46                                            mov r8, r3
008b9a0a  89 1a                                            subs r1, r1, r2
008b9a0c  99 42                                            cmp r1, r3
008b9a0e  02 d9                                            bls #0x8b9a16
008b9a10  d5 5c                                            ldrb r5, [r2, r3]
008b9a12  59 1c                                            adds r1, r3, #1
008b9a14  88 46                                            mov r8, r1
008b9a16  00 2d                                            cmp r5, #0
008b9a18  06 d0                                            beq #0x8b9a28
008b9a1a  ff 2d                                            cmp r5, #0xff
008b9a1c  04 d0                                            beq #0x8b9a28
008b9a1e  52 46                                            mov r2, sl
008b9a20  a3 1a                                            subs r3, r4, r2
008b9a22  9b 10                                            asrs r3, r3, #2
008b9a24  9d 42                                            cmp r5, r3
008b9a26  0d db                                            blt #0x8b9a44
008b9a28  0c 99                                            ldr r1, [sp, #0x30]
008b9a2a  52 46                                            mov r2, sl
008b9a2c  bf 1a                                            subs r7, r7, r2
008b9a2e  0b 1c                                            adds r3, r1, #0
008b9a30  5b 44                                            add r3, fp
008b9a32  bf 10                                            asrs r7, r7, #2
008b9a34  df 19                                            adds r7, r3, r7
008b9a36  38 1c                                            adds r0, r7, #0
008b9a38  3c bc                                            pop {r2, r3, r4, r5}
008b9a3a  90 46                                            mov r8, r2
008b9a3c  99 46                                            mov sb, r3
008b9a3e  a2 46                                            mov sl, r4
008b9a40  ab 46                                            mov fp, r5
008b9a42  f8 bd                                            pop {r3, r4, r5, r6, r7, pc}
008b9a44  ab 00                                            lsls r3, r5, #2
008b9a46  e4 1a                                            subs r4, r4, r3
008b9a48  04 37                                            adds r7, #4
008b9a4a  3a 1b                                            subs r2, r7, r4
008b9a4c  00 2a                                            cmp r2, #0
008b9a4e  04 dd                                            ble #0x8b9a5a
008b9a50  38 1d                                            adds r0, r7, #4
008b9a52  80 1a                                            subs r0, r0, r2
008b9a54  21 1c                                            adds r1, r4, #0
008b9a56  54 f6 70 e2                                      blx #0x30df38
008b9a5a  4b 46                                            mov r3, sb
008b9a5c  23 60                                            str r3, [r4]
008b9a5e  43 46                                            mov r3, r8
008b9a60  d0 e7                                            b #0x8b9a04
008b9a62  01 22                                            movs r2, #1
008b9a64  04 30                                            adds r0, #4
008b9a66  93 46                                            mov fp, r2
008b9a68  c5 e7                                            b #0x8b99f6

; FUNCTION 0x008b9a6c, declared_size=154, range_size=154, mode=thumb
; class-group: std::priv
; alias: _ZNSt4priv17__insert_groupingEPcS0_RKSsccci
; demangled: std::priv::__insert_grouping(char*, char*, std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, char, char, char, int)
; decoder-mode: thumb
008b9a6c  f8 b5                                            push {r3, r4, r5, r6, r7, lr}
008b9a6e  5f 46                                            mov r7, fp
008b9a70  56 46                                            mov r6, sl
008b9a72  4d 46                                            mov r5, sb
008b9a74  44 46                                            mov r4, r8
008b9a76  f0 b4                                            push {r4, r5, r6, r7}
008b9a78  99 46                                            mov sb, r3
008b9a7a  0a ab                                            add r3, sp, #0x28
008b9a7c  0c 1c                                            adds r4, r1, #0
008b9a7e  16 1c                                            adds r6, r2, #0
008b9a80  1a 78                                            ldrb r2, [r3]
008b9a82  0b ab                                            add r3, sp, #0x2c
008b9a84  19 78                                            ldrb r1, [r3]
008b9a86  00 27                                            movs r7, #0
008b9a88  a0 42                                            cmp r0, r4
008b9a8a  23 d0                                            beq #0x8b9ad4
008b9a8c  03 78                                            ldrb r3, [r0]
008b9a8e  9a 42                                            cmp r2, r3
008b9a90  35 d0                                            beq #0x8b9afe
008b9a92  00 22                                            movs r2, #0
008b9a94  93 46                                            mov fp, r2
008b9a96  99 42                                            cmp r1, r3
008b9a98  31 d0                                            beq #0x8b9afe
008b9a9a  0c 99                                            ldr r1, [sp, #0x30]
008b9a9c  27 1c                                            adds r7, r4, #0
008b9a9e  00 23                                            movs r3, #0
008b9aa0  09 18                                            adds r1, r1, r0
008b9aa2  8a 46                                            mov sl, r1
008b9aa4  00 25                                            movs r5, #0
008b9aa6  72 69                                            ldr r2, [r6, #0x14]
008b9aa8  31 69                                            ldr r1, [r6, #0x10]
008b9aaa  98 46                                            mov r8, r3
008b9aac  89 1a                                            subs r1, r1, r2
008b9aae  99 42                                            cmp r1, r3
008b9ab0  02 d9                                            bls #0x8b9ab8
008b9ab2  d5 5c                                            ldrb r5, [r2, r3]
008b9ab4  59 1c                                            adds r1, r3, #1
008b9ab6  88 46                                            mov r8, r1
008b9ab8  00 2d                                            cmp r5, #0
008b9aba  05 dd                                            ble #0x8b9ac8
008b9abc  ff 2d                                            cmp r5, #0xff
008b9abe  03 d0                                            beq #0x8b9ac8
008b9ac0  52 46                                            mov r2, sl
008b9ac2  a3 1a                                            subs r3, r4, r2
008b9ac4  9d 42                                            cmp r5, r3
008b9ac6  0c db                                            blt #0x8b9ae2
008b9ac8  0c 99                                            ldr r1, [sp, #0x30]
008b9aca  52 46                                            mov r2, sl
008b9acc  0b 1c                                            adds r3, r1, #0
008b9ace  5b 44                                            add r3, fp
008b9ad0  9b 1a                                            subs r3, r3, r2
008b9ad2  ff 18                                            adds r7, r7, r3
008b9ad4  38 1c                                            adds r0, r7, #0
008b9ad6  3c bc                                            pop {r2, r3, r4, r5}
008b9ad8  90 46                                            mov r8, r2
008b9ada  99 46                                            mov sb, r3
008b9adc  a2 46                                            mov sl, r4
008b9ade  ab 46                                            mov fp, r5
008b9ae0  f8 bd                                            pop {r3, r4, r5, r6, r7, pc}
008b9ae2  64 1b                                            subs r4, r4, r5
008b9ae4  01 37                                            adds r7, #1
008b9ae6  3a 1b                                            subs r2, r7, r4
008b9ae8  00 2a                                            cmp r2, #0
008b9aea  04 dd                                            ble #0x8b9af6
008b9aec  78 1c                                            adds r0, r7, #1
008b9aee  80 1a                                            subs r0, r0, r2
008b9af0  21 1c                                            adds r1, r4, #0
008b9af2  54 f6 22 e2                                      blx #0x30df38
008b9af6  4b 46                                            mov r3, sb
008b9af8  23 70                                            strb r3, [r4]
008b9afa  43 46                                            mov r3, r8
008b9afc  d3 e7                                            b #0x8b9aa6
008b9afe  01 23                                            movs r3, #1
008b9b00  01 30                                            adds r0, #1
008b9b02  9b 46                                            mov fp, r3
008b9b04  c9 e7                                            b #0x8b9a9a

; FUNCTION 0x008b9b08, declared_size=72, range_size=72, mode=thumb
; class-group: std::priv
; alias: _ZNSt4priv15__write_integerEPcil
; demangled: std::priv::__write_integer(char*, int, long)
; decoder-mode: thumb
008b9b08  f0 b5                                            push {r4, r5, r6, r7, lr}
008b9b0a  0f 4c                                            ldr r4, [pc, #0x3c]
008b9b0c  0f 4d                                            ldr r5, [pc, #0x3c]
008b9b0e  93 b0                                            sub sp, #0x4c
008b9b10  7c 44                                            add r4, pc
008b9b12  63 59                                            ldr r3, [r4, r5]
008b9b14  11 ae                                            add r6, sp, #0x44
008b9b16  07 1c                                            adds r7, r0, #0
008b9b18  1b 68                                            ldr r3, [r3]
008b9b1a  30 1c                                            adds r0, r6, #0
008b9b1c  11 93                                            str r3, [sp, #0x44]
008b9b1e  eb f7 63 fb                                      bl #0x8a51e8
008b9b22  36 1a                                            subs r6, r6, r0
008b9b24  01 1c                                            adds r1, r0, #0
008b9b26  38 1c                                            adds r0, r7, #0
008b9b28  00 2e                                            cmp r6, #0
008b9b2a  03 d0                                            beq #0x8b9b34
008b9b2c  32 1c                                            adds r2, r6, #0
008b9b2e  54 f6 04 e2                                      blx #0x30df38
008b9b32  80 19                                            adds r0, r0, r6
008b9b34  63 59                                            ldr r3, [r4, r5]
008b9b36  11 9a                                            ldr r2, [sp, #0x44]
008b9b38  1b 68                                            ldr r3, [r3]
008b9b3a  9a 42                                            cmp r2, r3
008b9b3c  01 d1                                            bne #0x8b9b42
008b9b3e  13 b0                                            add sp, #0x4c
008b9b40  f0 bd                                            pop {r4, r5, r6, r7, pc}
008b9b42  54 f6 e6 e3                                      blx #0x30e310
008b9b46  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008b9b48  84 af 0d 00 ac 40 00 00                          .byte 0x84, 0xaf, 0x0d, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x008b9e70, declared_size=134, range_size=134, mode=thumb
; class-group: std::priv
; alias: _ZNSt4priv17__insert_groupingERNS_16__basic_iostringIwEEjRKSswwwi
; demangled: std::priv::__insert_grouping(std::priv::__basic_iostring<wchar_t>&, unsigned int, std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, wchar_t, wchar_t, wchar_t, int)
; decoder-mode: thumb
008b9e70  f0 b5                                            push {r4, r5, r6, r7, lr}
008b9e72  57 46                                            mov r7, sl
008b9e74  4e 46                                            mov r6, sb
008b9e76  45 46                                            mov r5, r8
008b9e78  e0 b4                                            push {r5, r6, r7}
008b9e7a  15 1c                                            adds r5, r2, #0
008b9e7c  89 22                                            movs r2, #0x89
008b9e7e  d2 00                                            lsls r2, r2, #3
008b9e80  06 1c                                            adds r6, r0, #0
008b9e82  9a 46                                            mov sl, r3
008b9e84  83 58                                            ldr r3, [r0, r2]
008b9e86  00 6c                                            ldr r0, [r0, #0x40]
008b9e88  c0 1a                                            subs r0, r0, r3
008b9e8a  80 10                                            asrs r0, r0, #2
008b9e8c  81 42                                            cmp r1, r0
008b9e8e  23 d8                                            bhi #0x8b9ed8
008b9e90  18 68                                            ldr r0, [r3]
008b9e92  09 9c                                            ldr r4, [sp, #0x24]
008b9e94  89 00                                            lsls r1, r1, #2
008b9e96  90 46                                            mov r8, r2
008b9e98  24 1a                                            subs r4, r4, r0
008b9e9a  67 42                                            rsbs r7, r4, #0
008b9e9c  67 41                                            adcs r7, r4
008b9e9e  08 9c                                            ldr r4, [sp, #0x20]
008b9ea0  20 1a                                            subs r0, r4, r0
008b9ea2  44 42                                            rsbs r4, r0, #0
008b9ea4  44 41                                            adcs r4, r0
008b9ea6  0a 98                                            ldr r0, [sp, #0x28]
008b9ea8  3c 43                                            orrs r4, r7
008b9eaa  24 18                                            adds r4, r4, r0
008b9eac  a1 46                                            mov sb, r4
008b9eae  58 18                                            adds r0, r3, r1
008b9eb0  00 24                                            movs r4, #0
008b9eb2  00 23                                            movs r3, #0
008b9eb4  6a 69                                            ldr r2, [r5, #0x14]
008b9eb6  29 69                                            ldr r1, [r5, #0x10]
008b9eb8  1f 1c                                            adds r7, r3, #0
008b9eba  89 1a                                            subs r1, r1, r2
008b9ebc  99 42                                            cmp r1, r3
008b9ebe  01 d9                                            bls #0x8b9ec4
008b9ec0  d4 5c                                            ldrb r4, [r2, r3]
008b9ec2  5f 1c                                            adds r7, r3, #1
008b9ec4  00 2c                                            cmp r4, #0
008b9ec6  07 d0                                            beq #0x8b9ed8
008b9ec8  42 46                                            mov r2, r8
008b9eca  b3 58                                            ldr r3, [r6, r2]
008b9ecc  4a 46                                            mov r2, sb
008b9ece  c3 1a                                            subs r3, r0, r3
008b9ed0  9b 10                                            asrs r3, r3, #2
008b9ed2  9b 1a                                            subs r3, r3, r2
008b9ed4  9c 42                                            cmp r4, r3
008b9ed6  04 db                                            blt #0x8b9ee2
008b9ed8  1c bc                                            pop {r2, r3, r4}
008b9eda  90 46                                            mov r8, r2
008b9edc  99 46                                            mov sb, r3
008b9ede  a2 46                                            mov sl, r4
008b9ee0  f0 bd                                            pop {r4, r5, r6, r7, pc}
008b9ee2  ff 2c                                            cmp r4, #0xff
008b9ee4  f8 d0                                            beq #0x8b9ed8
008b9ee6  a1 00                                            lsls r1, r4, #2
008b9ee8  41 1a                                            subs r1, r0, r1
008b9eea  52 46                                            mov r2, sl
008b9eec  30 1c                                            adds r0, r6, #0
008b9eee  ff f7 b1 ff                                      bl #0x8b9e54
008b9ef2  3b 1c                                            adds r3, r7, #0
008b9ef4  de e7                                            b #0x8b9eb4

; FUNCTION 0x008b9f14, declared_size=134, range_size=134, mode=thumb
; class-group: std::priv
; alias: _ZNSt4priv17__insert_groupingERNS_16__basic_iostringIcEEjRKSsccci
; demangled: std::priv::__insert_grouping(std::priv::__basic_iostring<char>&, unsigned int, std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, char, char, char, int)
; decoder-mode: thumb
008b9f14  f0 b5                                            push {r4, r5, r6, r7, lr}
008b9f16  57 46                                            mov r7, sl
008b9f18  4e 46                                            mov r6, sb
008b9f1a  45 46                                            mov r5, r8
008b9f1c  e0 b4                                            push {r5, r6, r7}
008b9f1e  9a 46                                            mov sl, r3
008b9f20  08 ab                                            add r3, sp, #0x20
008b9f22  1b 78                                            ldrb r3, [r3]
008b9f24  15 1c                                            adds r5, r2, #0
008b9f26  8c 22                                            movs r2, #0x8c
008b9f28  06 1c                                            adds r6, r0, #0
008b9f2a  98 46                                            mov r8, r3
008b9f2c  52 00                                            lsls r2, r2, #1
008b9f2e  09 ab                                            add r3, sp, #0x24
008b9f30  1f 78                                            ldrb r7, [r3]
008b9f32  80 58                                            ldr r0, [r0, r2]
008b9f34  33 69                                            ldr r3, [r6, #0x10]
008b9f36  1b 1a                                            subs r3, r3, r0
008b9f38  99 42                                            cmp r1, r3
008b9f3a  20 d8                                            bhi #0x8b9f7e
008b9f3c  03 78                                            ldrb r3, [r0]
008b9f3e  40 18                                            adds r0, r0, r1
008b9f40  ff 1a                                            subs r7, r7, r3
008b9f42  7c 42                                            rsbs r4, r7, #0
008b9f44  7c 41                                            adcs r4, r7
008b9f46  47 46                                            mov r7, r8
008b9f48  fb 1a                                            subs r3, r7, r3
008b9f4a  5f 42                                            rsbs r7, r3, #0
008b9f4c  5f 41                                            adcs r7, r3
008b9f4e  0a 9b                                            ldr r3, [sp, #0x28]
008b9f50  3c 43                                            orrs r4, r7
008b9f52  90 46                                            mov r8, r2
008b9f54  e4 18                                            adds r4, r4, r3
008b9f56  a1 46                                            mov sb, r4
008b9f58  00 23                                            movs r3, #0
008b9f5a  00 24                                            movs r4, #0
008b9f5c  6a 69                                            ldr r2, [r5, #0x14]
008b9f5e  29 69                                            ldr r1, [r5, #0x10]
008b9f60  1f 1c                                            adds r7, r3, #0
008b9f62  89 1a                                            subs r1, r1, r2
008b9f64  99 42                                            cmp r1, r3
008b9f66  01 d9                                            bls #0x8b9f6c
008b9f68  d4 5c                                            ldrb r4, [r2, r3]
008b9f6a  5f 1c                                            adds r7, r3, #1
008b9f6c  00 2c                                            cmp r4, #0
008b9f6e  06 d0                                            beq #0x8b9f7e
008b9f70  42 46                                            mov r2, r8
008b9f72  b3 58                                            ldr r3, [r6, r2]
008b9f74  4a 46                                            mov r2, sb
008b9f76  c3 1a                                            subs r3, r0, r3
008b9f78  9b 1a                                            subs r3, r3, r2
008b9f7a  9c 42                                            cmp r4, r3
008b9f7c  04 db                                            blt #0x8b9f88
008b9f7e  1c bc                                            pop {r2, r3, r4}
008b9f80  90 46                                            mov r8, r2
008b9f82  99 46                                            mov sb, r3
008b9f84  a2 46                                            mov sl, r4
008b9f86  f0 bd                                            pop {r4, r5, r6, r7, pc}
008b9f88  ff 2c                                            cmp r4, #0xff
008b9f8a  f8 d0                                            beq #0x8b9f7e
008b9f8c  01 1b                                            subs r1, r0, r4
008b9f8e  52 46                                            mov r2, sl
008b9f90  30 1c                                            adds r0, r6, #0
008b9f92  ff f7 b1 ff                                      bl #0x8b9ef8
008b9f96  3b 1c                                            adds r3, r7, #0
008b9f98  e0 e7                                            b #0x8b9f5c

; FUNCTION 0x008b9fa0, declared_size=148, range_size=148, mode=thumb
; class-group: std::priv
; alias: _ZNSt4privL19_Stl_norm_and_roundERyRiyy
; demangled: std::priv::_Stl_norm_and_round(unsigned long long&, int&, unsigned long long, unsigned long long)
; decoder-mode: thumb
008b9fa0  f0 b5                                            push {r4, r5, r6, r7, lr}
008b9fa2  00 26                                            movs r6, #0
008b9fa4  05 9d                                            ldr r5, [sp, #0x14]
008b9fa6  06 9c                                            ldr r4, [sp, #0x18]
008b9fa8  0e 60                                            str r6, [r1]
008b9faa  00 2b                                            cmp r3, #0
008b9fac  2b db                                            blt #0x8ba006
008b9fae  56 1c                                            adds r6, r2, #1
008b9fb0  2c d0                                            beq #0x8ba00c
008b9fb2  d7 0f                                            lsrs r7, r2, #0x1f
008b9fb4  5b 00                                            lsls r3, r3, #1
008b9fb6  e6 0f                                            lsrs r6, r4, #0x1f
008b9fb8  3b 43                                            orrs r3, r7
008b9fba  52 00                                            lsls r2, r2, #1
008b9fbc  43 60                                            str r3, [r0, #4]
008b9fbe  32 43                                            orrs r2, r6
008b9fc0  01 23                                            movs r3, #1
008b9fc2  02 60                                            str r2, [r0]
008b9fc4  64 00                                            lsls r4, r4, #1
008b9fc6  0b 60                                            str r3, [r1]
008b9fc8  eb 0f                                            lsrs r3, r5, #0x1f
008b9fca  1c 43                                            orrs r4, r3
008b9fcc  6d 00                                            lsls r5, r5, #1
008b9fce  00 2c                                            cmp r4, #0
008b9fd0  00 db                                            blt #0x8b9fd4
008b9fd2  f0 bd                                            pop {r4, r5, r6, r7, pc}
008b9fd4  01 21                                            movs r1, #1
008b9fd6  02 68                                            ldr r2, [r0]
008b9fd8  43 68                                            ldr r3, [r0, #4]
008b9fda  11 42                                            tst r1, r2
008b9fdc  05 d1                                            bne #0x8b9fea
008b9fde  00 2d                                            cmp r5, #0
008b9fe0  03 d1                                            bne #0x8b9fea
008b9fe2  80 21                                            movs r1, #0x80
008b9fe4  09 06                                            lsls r1, r1, #0x18
008b9fe6  8c 42                                            cmp r4, r1
008b9fe8  f3 d0                                            beq #0x8b9fd2
008b9fea  1c 1c                                            adds r4, r3, #0
008b9fec  01 25                                            movs r5, #1
008b9fee  00 26                                            movs r6, #0
008b9ff0  13 1c                                            adds r3, r2, #0
008b9ff2  5b 19                                            adds r3, r3, r5
008b9ff4  74 41                                            adcs r4, r6
008b9ff6  1a 1c                                            adds r2, r3, #0
008b9ff8  03 60                                            str r3, [r0]
008b9ffa  44 60                                            str r4, [r0, #4]
008b9ffc  22 43                                            orrs r2, r4
008b9ffe  e8 d1                                            bne #0x8b9fd2
008ba000  05 60                                            str r5, [r0]
008ba002  46 60                                            str r6, [r0, #4]
008ba004  e5 e7                                            b #0x8b9fd2
008ba006  02 60                                            str r2, [r0]
008ba008  43 60                                            str r3, [r0, #4]
008ba00a  e0 e7                                            b #0x8b9fce
008ba00c  08 4e                                            ldr r6, [pc, #0x20]
008ba00e  b3 42                                            cmp r3, r6
008ba010  cf d1                                            bne #0x8b9fb2
008ba012  a6 0f                                            lsrs r6, r4, #0x1e
008ba014  03 2e                                            cmp r6, #3
008ba016  cc d1                                            bne #0x8b9fb2
008ba018  04 4c                                            ldr r4, [pc, #0x10]
008ba01a  03 4b                                            ldr r3, [pc, #0xc]
008ba01c  03 60                                            str r3, [r0]
008ba01e  44 60                                            str r4, [r0, #4]
008ba020  d7 e7                                            b #0x8b9fd2
008ba022  c0 46                                            mov r8, r8
008ba024  c0 46                                            mov r8, r8
008ba026  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008ba028  00 00 00 00 00 00 00 80 ff ff ff 7f              .byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0xff, 0xff, 0xff, 0x7f

; FUNCTION 0x008ba038, declared_size=592, range_size=592, mode=thumb
; class-group: std::priv
; alias: _ZNSt4privL13_Stl_tenscaleERyiRi
; demangled: std::priv::_Stl_tenscale(unsigned long long&, int, int&)
; decoder-mode: thumb
008ba038  f0 b5                                            push {r4, r5, r6, r7, lr}
008ba03a  5f 46                                            mov r7, fp
008ba03c  56 46                                            mov r6, sl
008ba03e  4d 46                                            mov r5, sb
008ba040  44 46                                            mov r4, r8
008ba042  f0 b4                                            push {r4, r5, r6, r7}
008ba044  00 23                                            movs r3, #0
008ba046  9d b0                                            sub sp, #0x74
008ba048  05 1c                                            adds r5, r0, #0
008ba04a  16 1c                                            adds r6, r2, #0
008ba04c  13 60                                            str r3, [r2]
008ba04e  00 29                                            cmp r1, #0
008ba050  00 d1                                            bne #0x8ba054
008ba052  ff e0                                            b #0x8ba254
008ba054  00 29                                            cmp r1, #0
008ba056  00 dc                                            bgt #0x8ba05a
008ba058  03 e1                                            b #0x8ba262
008ba05a  19 91                                            str r1, [sp, #0x64]
008ba05c  1b 29                                            cmp r1, #0x1b
008ba05e  00 dc                                            bgt #0x8ba062
008ba060  8b e0                                            b #0x8ba17a
008ba062  01 31                                            adds r1, #1
008ba064  19 91                                            str r1, [sp, #0x64]
008ba066  01 24                                            movs r4, #1
008ba068  0b 1c                                            adds r3, r1, #0
008ba06a  1c 3b                                            subs r3, #0x1c
008ba06c  01 34                                            adds r4, #1
008ba06e  1b 2b                                            cmp r3, #0x1b
008ba070  fb dc                                            bgt #0x8ba06a
008ba072  01 3c                                            subs r4, #1
008ba074  19 93                                            str r3, [sp, #0x64]
008ba076  00 2c                                            cmp r4, #0
008ba078  00 d1                                            bne #0x8ba07c
008ba07a  7e e0                                            b #0x8ba17a
008ba07c  0b 20                                            movs r0, #0xb
008ba07e  14 90                                            str r0, [sp, #0x50]
008ba080  1a 23                                            movs r3, #0x1a
008ba082  7d 4a                                            ldr r2, [pc, #0x1f4]
008ba084  7d 48                                            ldr r0, [pc, #0x1f4]
008ba086  01 3b                                            subs r3, #1
008ba088  17 93                                            str r3, [sp, #0x5c]
008ba08a  6b 46                                            mov r3, sp
008ba08c  6c 33                                            adds r3, #0x6c
008ba08e  7a 44                                            add r2, pc
008ba090  78 44                                            add r0, pc
008ba092  18 93                                            str r3, [sp, #0x60]
008ba094  15 92                                            str r2, [sp, #0x54]
008ba096  16 90                                            str r0, [sp, #0x58]
008ba098  14 99                                            ldr r1, [sp, #0x50]
008ba09a  23 1c                                            adds r3, r4, #0
008ba09c  8c 42                                            cmp r4, r1
008ba09e  00 dd                                            ble #0x8ba0a2
008ba0a0  0b 1c                                            adds r3, r1, #0
008ba0a2  17 9a                                            ldr r2, [sp, #0x5c]
008ba0a4  e4 1a                                            subs r4, r4, r3
008ba0a6  15 99                                            ldr r1, [sp, #0x54]
008ba0a8  d2 18                                            adds r2, r2, r3
008ba0aa  2b 68                                            ldr r3, [r5]
008ba0ac  68 68                                            ldr r0, [r5, #4]
008ba0ae  91 46                                            mov sb, r2
008ba0b0  9a 46                                            mov sl, r3
008ba0b2  d3 00                                            lsls r3, r2, #3
008ba0b4  cb 18                                            adds r3, r1, r3
008ba0b6  1f 68                                            ldr r7, [r3]
008ba0b8  5b 68                                            ldr r3, [r3, #4]
008ba0ba  83 46                                            mov fp, r0
008ba0bc  52 46                                            mov r2, sl
008ba0be  98 46                                            mov r8, r3
008ba0c0  38 1c                                            adds r0, r7, #0
008ba0c2  00 23                                            movs r3, #0
008ba0c4  00 21                                            movs r1, #0
008ba0c6  54 f6 48 e4                                      blx #0x30e958
008ba0ca  00 22                                            movs r2, #0
008ba0cc  13 90                                            str r0, [sp, #0x4c]
008ba0ce  04 91                                            str r1, [sp, #0x10]
008ba0d0  05 92                                            str r2, [sp, #0x14]
008ba0d2  00 23                                            movs r3, #0
008ba0d4  5a 46                                            mov r2, fp
008ba0d6  38 1c                                            adds r0, r7, #0
008ba0d8  00 21                                            movs r1, #0
008ba0da  54 f6 3e e4                                      blx #0x30e958
008ba0de  04 9a                                            ldr r2, [sp, #0x10]
008ba0e0  05 9b                                            ldr r3, [sp, #0x14]
008ba0e2  12 18                                            adds r2, r2, r0
008ba0e4  4b 41                                            adcs r3, r1
008ba0e6  02 92                                            str r2, [sp, #8]
008ba0e8  03 93                                            str r3, [sp, #0xc]
008ba0ea  08 92                                            str r2, [sp, #0x20]
008ba0ec  00 23                                            movs r3, #0
008ba0ee  52 46                                            mov r2, sl
008ba0f0  40 46                                            mov r0, r8
008ba0f2  00 21                                            movs r1, #0
008ba0f4  09 93                                            str r3, [sp, #0x24]
008ba0f6  54 f6 30 e4                                      blx #0x30e958
008ba0fa  08 9a                                            ldr r2, [sp, #0x20]
008ba0fc  09 9b                                            ldr r3, [sp, #0x24]
008ba0fe  12 18                                            adds r2, r2, r0
008ba100  4b 41                                            adcs r3, r1
008ba102  06 92                                            str r2, [sp, #0x18]
008ba104  07 93                                            str r3, [sp, #0x1c]
008ba106  03 9b                                            ldr r3, [sp, #0xc]
008ba108  00 20                                            movs r0, #0
008ba10a  0b 90                                            str r0, [sp, #0x2c]
008ba10c  0a 93                                            str r3, [sp, #0x28]
008ba10e  5a 46                                            mov r2, fp
008ba110  00 23                                            movs r3, #0
008ba112  40 46                                            mov r0, r8
008ba114  00 21                                            movs r1, #0
008ba116  54 f6 20 e4                                      blx #0x30e958
008ba11a  02 1c                                            adds r2, r0, #0
008ba11c  0b 1c                                            adds r3, r1, #0
008ba11e  0a 98                                            ldr r0, [sp, #0x28]
008ba120  0b 99                                            ldr r1, [sp, #0x2c]
008ba122  12 18                                            adds r2, r2, r0
008ba124  4b 41                                            adcs r3, r1
008ba126  07 99                                            ldr r1, [sp, #0x1c]
008ba128  00 20                                            movs r0, #0
008ba12a  0d 90                                            str r0, [sp, #0x34]
008ba12c  0c 91                                            str r1, [sp, #0x30]
008ba12e  0c 98                                            ldr r0, [sp, #0x30]
008ba130  0d 99                                            ldr r1, [sp, #0x34]
008ba132  80 18                                            adds r0, r0, r2
008ba134  59 41                                            adcs r1, r3
008ba136  02 90                                            str r0, [sp, #8]
008ba138  03 91                                            str r1, [sp, #0xc]
008ba13a  13 9b                                            ldr r3, [sp, #0x4c]
008ba13c  06 99                                            ldr r1, [sp, #0x18]
008ba13e  00 22                                            movs r2, #0
008ba140  0e 92                                            str r2, [sp, #0x38]
008ba142  0f 91                                            str r1, [sp, #0x3c]
008ba144  10 93                                            str r3, [sp, #0x40]
008ba146  11 92                                            str r2, [sp, #0x44]
008ba148  10 9a                                            ldr r2, [sp, #0x40]
008ba14a  11 9b                                            ldr r3, [sp, #0x44]
008ba14c  0e 98                                            ldr r0, [sp, #0x38]
008ba14e  0f 99                                            ldr r1, [sp, #0x3c]
008ba150  80 18                                            adds r0, r0, r2
008ba152  59 41                                            adcs r1, r3
008ba154  00 90                                            str r0, [sp]
008ba156  01 91                                            str r1, [sp, #4]
008ba158  02 9a                                            ldr r2, [sp, #8]
008ba15a  03 9b                                            ldr r3, [sp, #0xc]
008ba15c  28 1c                                            adds r0, r5, #0
008ba15e  18 99                                            ldr r1, [sp, #0x60]
008ba160  ff f7 1e ff                                      bl #0x8b9fa0
008ba164  32 68                                            ldr r2, [r6]
008ba166  1b 9b                                            ldr r3, [sp, #0x6c]
008ba168  16 99                                            ldr r1, [sp, #0x58]
008ba16a  48 46                                            mov r0, sb
008ba16c  d3 1a                                            subs r3, r2, r3
008ba16e  42 00                                            lsls r2, r0, #1
008ba170  52 5e                                            ldrsh r2, [r2, r1]
008ba172  9b 18                                            adds r3, r3, r2
008ba174  33 60                                            str r3, [r6]
008ba176  00 2c                                            cmp r4, #0
008ba178  8e d1                                            bne #0x8ba098
008ba17a  19 99                                            ldr r1, [sp, #0x64]
008ba17c  00 29                                            cmp r1, #0
008ba17e  69 d0                                            beq #0x8ba254
008ba180  2b 68                                            ldr r3, [r5]
008ba182  01 22                                            movs r2, #1
008ba184  88 46                                            mov r8, r1
008ba186  99 46                                            mov sb, r3
008ba188  52 42                                            rsbs r2, r2, #0
008ba18a  3d 4b                                            ldr r3, [pc, #0xf4]
008ba18c  90 44                                            add r8, r2
008ba18e  6c 68                                            ldr r4, [r5, #4]
008ba190  40 46                                            mov r0, r8
008ba192  c2 00                                            lsls r2, r0, #3
008ba194  7b 44                                            add r3, pc
008ba196  9b 18                                            adds r3, r3, r2
008ba198  a2 46                                            mov sl, r4
008ba19a  1c 68                                            ldr r4, [r3]
008ba19c  5f 68                                            ldr r7, [r3, #4]
008ba19e  4a 46                                            mov r2, sb
008ba1a0  20 1c                                            adds r0, r4, #0
008ba1a2  00 23                                            movs r3, #0
008ba1a4  00 21                                            movs r1, #0
008ba1a6  54 f6 d8 e3                                      blx #0x30e958
008ba1aa  00 23                                            movs r3, #0
008ba1ac  83 46                                            mov fp, r0
008ba1ae  02 91                                            str r1, [sp, #8]
008ba1b0  20 1c                                            adds r0, r4, #0
008ba1b2  52 46                                            mov r2, sl
008ba1b4  00 21                                            movs r1, #0
008ba1b6  03 93                                            str r3, [sp, #0xc]
008ba1b8  54 f6 ce e3                                      blx #0x30e958
008ba1bc  02 9a                                            ldr r2, [sp, #8]
008ba1be  03 9b                                            ldr r3, [sp, #0xc]
008ba1c0  12 18                                            adds r2, r2, r0
008ba1c2  4b 41                                            adcs r3, r1
008ba1c4  02 92                                            str r2, [sp, #8]
008ba1c6  03 93                                            str r3, [sp, #0xc]
008ba1c8  04 92                                            str r2, [sp, #0x10]
008ba1ca  00 24                                            movs r4, #0
008ba1cc  4a 46                                            mov r2, sb
008ba1ce  00 23                                            movs r3, #0
008ba1d0  38 1c                                            adds r0, r7, #0
008ba1d2  00 21                                            movs r1, #0
008ba1d4  05 94                                            str r4, [sp, #0x14]
008ba1d6  54 f6 c0 e3                                      blx #0x30e958
008ba1da  04 9a                                            ldr r2, [sp, #0x10]
008ba1dc  05 9b                                            ldr r3, [sp, #0x14]
008ba1de  03 9c                                            ldr r4, [sp, #0xc]
008ba1e0  12 18                                            adds r2, r2, r0
008ba1e2  4b 41                                            adcs r3, r1
008ba1e4  00 20                                            movs r0, #0
008ba1e6  04 92                                            str r2, [sp, #0x10]
008ba1e8  05 93                                            str r3, [sp, #0x14]
008ba1ea  07 90                                            str r0, [sp, #0x1c]
008ba1ec  52 46                                            mov r2, sl
008ba1ee  00 23                                            movs r3, #0
008ba1f0  38 1c                                            adds r0, r7, #0
008ba1f2  00 21                                            movs r1, #0
008ba1f4  06 94                                            str r4, [sp, #0x18]
008ba1f6  54 f6 b0 e3                                      blx #0x30e958
008ba1fa  06 9a                                            ldr r2, [sp, #0x18]
008ba1fc  07 9b                                            ldr r3, [sp, #0x1c]
008ba1fe  05 9c                                            ldr r4, [sp, #0x14]
008ba200  80 18                                            adds r0, r0, r2
008ba202  59 41                                            adcs r1, r3
008ba204  00 22                                            movs r2, #0
008ba206  03 92                                            str r2, [sp, #0xc]
008ba208  02 94                                            str r4, [sp, #8]
008ba20a  02 9b                                            ldr r3, [sp, #8]
008ba20c  03 9c                                            ldr r4, [sp, #0xc]
008ba20e  1b 18                                            adds r3, r3, r0
008ba210  4c 41                                            adcs r4, r1
008ba212  04 99                                            ldr r1, [sp, #0x10]
008ba214  06 93                                            str r3, [sp, #0x18]
008ba216  07 94                                            str r4, [sp, #0x1c]
008ba218  00 20                                            movs r0, #0
008ba21a  5c 46                                            mov r4, fp
008ba21c  03 91                                            str r1, [sp, #0xc]
008ba21e  02 92                                            str r2, [sp, #8]
008ba220  04 94                                            str r4, [sp, #0x10]
008ba222  05 90                                            str r0, [sp, #0x14]
008ba224  02 9b                                            ldr r3, [sp, #8]
008ba226  03 9c                                            ldr r4, [sp, #0xc]
008ba228  04 99                                            ldr r1, [sp, #0x10]
008ba22a  05 9a                                            ldr r2, [sp, #0x14]
008ba22c  c9 18                                            adds r1, r1, r3
008ba22e  62 41                                            adcs r2, r4
008ba230  00 91                                            str r1, [sp]
008ba232  01 92                                            str r2, [sp, #4]
008ba234  06 9a                                            ldr r2, [sp, #0x18]
008ba236  07 9b                                            ldr r3, [sp, #0x1c]
008ba238  28 1c                                            adds r0, r5, #0
008ba23a  1b a9                                            add r1, sp, #0x6c
008ba23c  ff f7 b0 fe                                      bl #0x8b9fa0
008ba240  31 68                                            ldr r1, [r6]
008ba242  1b 9b                                            ldr r3, [sp, #0x6c]
008ba244  44 46                                            mov r4, r8
008ba246  62 00                                            lsls r2, r4, #1
008ba248  c9 1a                                            subs r1, r1, r3
008ba24a  0e 4b                                            ldr r3, [pc, #0x38]
008ba24c  7b 44                                            add r3, pc
008ba24e  d2 5e                                            ldrsh r2, [r2, r3]
008ba250  8b 18                                            adds r3, r1, r2
008ba252  33 60                                            str r3, [r6]
008ba254  1d b0                                            add sp, #0x74
008ba256  3c bc                                            pop {r2, r3, r4, r5}
008ba258  90 46                                            mov r8, r2
008ba25a  99 46                                            mov sb, r3
008ba25c  a2 46                                            mov sl, r4
008ba25e  ab 46                                            mov fp, r5
008ba260  f0 bd                                            pop {r4, r5, r6, r7, pc}
008ba262  19 91                                            str r1, [sp, #0x64]
008ba264  00 24                                            movs r4, #0
008ba266  0b 1c                                            adds r3, r1, #0
008ba268  01 34                                            adds r4, #1
008ba26a  1c 33                                            adds r3, #0x1c
008ba26c  fc d4                                            bmi #0x8ba268
008ba26e  0d 21                                            movs r1, #0xd
008ba270  19 93                                            str r3, [sp, #0x64]
008ba272  14 91                                            str r1, [sp, #0x50]
008ba274  25 23                                            movs r3, #0x25
008ba276  04 e7                                            b #0x8ba082
; mapping-symbol data/literal pool
008ba278  56 be 05 00 d4 c0 05 00 50 bd 05 00 18 bf 05 00  .byte 0x56, 0xbe, 0x05, 0x00, 0xd4, 0xc0, 0x05, 0x00, 0x50, 0xbd, 0x05, 0x00, 0x18, 0xbf, 0x05, 0x00

; FUNCTION 0x008ba288, declared_size=1076, range_size=1076, mode=thumb
; class-group: std::priv
; alias: _ZNSt4privL21_Stl_string_to_doubleEPKc
; demangled: std::priv::_Stl_string_to_double(char const*)
; decoder-mode: thumb
008ba288  f0 b5                                            push {r4, r5, r6, r7, lr}
008ba28a  5f 46                                            mov r7, fp
008ba28c  56 46                                            mov r6, sl
008ba28e  4d 46                                            mov r5, sb
008ba290  44 46                                            mov r4, r8
008ba292  f0 b4                                            push {r4, r5, r6, r7}
008ba294  b8 4d                                            ldr r5, [pc, #0x2e0]
008ba296  b9 49                                            ldr r1, [pc, #0x2e4]
008ba298  97 b0                                            sub sp, #0x5c
008ba29a  7d 44                                            add r5, pc
008ba29c  6b 58                                            ldr r3, [r5, r1]
008ba29e  01 91                                            str r1, [sp, #4]
008ba2a0  42 1c                                            adds r2, r0, #1
008ba2a2  1b 68                                            ldr r3, [r3]
008ba2a4  15 93                                            str r3, [sp, #0x54]
008ba2a6  03 78                                            ldrb r3, [r0]
008ba2a8  2b 2b                                            cmp r3, #0x2b
008ba2aa  00 d1                                            bne #0x8ba2ae
008ba2ac  7d e0                                            b #0x8ba3aa
008ba2ae  00 27                                            movs r7, #0
008ba2b0  b8 46                                            mov r8, r7
008ba2b2  2d 2b                                            cmp r3, #0x2d
008ba2b4  00 d1                                            bne #0x8ba2b8
008ba2b6  81 e0                                            b #0x8ba3bc
008ba2b8  01 26                                            movs r6, #1
008ba2ba  10 a9                                            add r1, sp, #0x40
008ba2bc  b1 46                                            mov sb, r6
008ba2be  30 3b                                            subs r3, #0x30
008ba2c0  6e 46                                            mov r6, sp
008ba2c2  00 24                                            movs r4, #0
008ba2c4  8c 46                                            mov ip, r1
008ba2c6  00 20                                            movs r0, #0
008ba2c8  51 36                                            adds r6, #0x51
008ba2ca  09 2b                                            cmp r3, #9
008ba2cc  0d d8                                            bhi #0x8ba2ea
008ba2ce  b1 42                                            cmp r1, r6
008ba2d0  33 d0                                            beq #0x8ba33a
008ba2d2  00 2b                                            cmp r3, #0
008ba2d4  01 d1                                            bne #0x8ba2da
008ba2d6  61 45                                            cmp r1, ip
008ba2d8  01 d0                                            beq #0x8ba2de
008ba2da  0b 70                                            strb r3, [r1]
008ba2dc  01 31                                            adds r1, #1
008ba2de  24 1a                                            subs r4, r4, r0
008ba2e0  13 78                                            ldrb r3, [r2]
008ba2e2  01 32                                            adds r2, #1
008ba2e4  30 3b                                            subs r3, #0x30
008ba2e6  09 2b                                            cmp r3, #9
008ba2e8  f1 d9                                            bls #0x8ba2ce
008ba2ea  9f 1c                                            adds r7, r3, #2
008ba2ec  21 d0                                            beq #0x8ba332
008ba2ee  61 45                                            cmp r1, ip
008ba2f0  00 d1                                            bne #0x8ba2f4
008ba2f2  32 e1                                            b #0x8ba55a
008ba2f4  15 2b                                            cmp r3, #0x15
008ba2f6  36 d0                                            beq #0x8ba366
008ba2f8  35 2b                                            cmp r3, #0x35
008ba2fa  34 d0                                            beq #0x8ba366
008ba2fc  60 46                                            mov r0, ip
008ba2fe  a0 4a                                            ldr r2, [pc, #0x280]
008ba300  09 1a                                            subs r1, r1, r0
008ba302  63 18                                            adds r3, r4, r1
008ba304  93 42                                            cmp r3, r2
008ba306  20 da                                            bge #0x8ba34a
008ba308  00 22                                            movs r2, #0
008ba30a  00 23                                            movs r3, #0
008ba30c  41 46                                            mov r1, r8
008ba30e  00 29                                            cmp r1, #0
008ba310  17 d1                                            bne #0x8ba342
008ba312  01 9f                                            ldr r7, [sp, #4]
008ba314  19 1c                                            adds r1, r3, #0
008ba316  10 1c                                            adds r0, r2, #0
008ba318  eb 59                                            ldr r3, [r5, r7]
008ba31a  15 9a                                            ldr r2, [sp, #0x54]
008ba31c  1b 68                                            ldr r3, [r3]
008ba31e  9a 42                                            cmp r2, r3
008ba320  00 d0                                            beq #0x8ba324
008ba322  c3 e1                                            b #0x8ba6ac
008ba324  17 b0                                            add sp, #0x5c
008ba326  3c bc                                            pop {r2, r3, r4, r5}
008ba328  90 46                                            mov r8, r2
008ba32a  99 46                                            mov sb, r3
008ba32c  a2 46                                            mov sl, r4
008ba32e  ab 46                                            mov fp, r5
008ba330  f0 bd                                            pop {r4, r5, r6, r7, pc}
008ba332  00 28                                            cmp r0, #0
008ba334  db d1                                            bne #0x8ba2ee
008ba336  01 20                                            movs r0, #1
008ba338  d2 e7                                            b #0x8ba2e0
008ba33a  4b 46                                            mov r3, sb
008ba33c  43 40                                            eors r3, r0
008ba33e  e4 18                                            adds r4, r4, r3
008ba340  ce e7                                            b #0x8ba2e0
008ba342  80 26                                            movs r6, #0x80
008ba344  36 06                                            lsls r6, r6, #0x18
008ba346  9b 19                                            adds r3, r3, r6
008ba348  e3 e7                                            b #0x8ba312
008ba34a  8e 4a                                            ldr r2, [pc, #0x238]
008ba34c  93 42                                            cmp r3, r2
008ba34e  3e dd                                            ble #0x8ba3ce
008ba350  00 23                                            movs r3, #0
008ba352  09 93                                            str r3, [sp, #0x24]
008ba354  08 93                                            str r3, [sp, #0x20]
008ba356  0a 93                                            str r3, [sp, #0x28]
008ba358  0b 93                                            str r3, [sp, #0x2c]
008ba35a  8b 4b                                            ldr r3, [pc, #0x22c]
008ba35c  08 a9                                            add r1, sp, #0x20
008ba35e  00 22                                            movs r2, #0
008ba360  cb 80                                            strh r3, [r1, #6]
008ba362  4b 68                                            ldr r3, [r1, #4]
008ba364  d2 e7                                            b #0x8ba30c
008ba366  13 78                                            ldrb r3, [r2]
008ba368  01 32                                            adds r2, #1
008ba36a  20 2b                                            cmp r3, #0x20
008ba36c  22 d0                                            beq #0x8ba3b4
008ba36e  2b 2b                                            cmp r3, #0x2b
008ba370  20 d0                                            beq #0x8ba3b4
008ba372  00 26                                            movs r6, #0
008ba374  2d 2b                                            cmp r3, #0x2d
008ba376  26 d0                                            beq #0x8ba3c6
008ba378  30 3b                                            subs r3, #0x30
008ba37a  09 2b                                            cmp r3, #9
008ba37c  be d8                                            bhi #0x8ba2fc
008ba37e  00 20                                            movs r0, #0
008ba380  87 00                                            lsls r7, r0, #2
008ba382  b9 46                                            mov sb, r7
008ba384  48 44                                            add r0, sb
008ba386  40 00                                            lsls r0, r0, #1
008ba388  18 18                                            adds r0, r3, r0
008ba38a  13 78                                            ldrb r3, [r2]
008ba38c  01 32                                            adds r2, #1
008ba38e  30 3b                                            subs r3, #0x30
008ba390  09 2b                                            cmp r3, #9
008ba392  f5 d9                                            bls #0x8ba380
008ba394  00 2e                                            cmp r6, #0
008ba396  00 d0                                            beq #0x8ba39a
008ba398  40 42                                            rsbs r0, r0, #0
008ba39a  04 19                                            adds r4, r0, r4
008ba39c  78 4a                                            ldr r2, [pc, #0x1e0]
008ba39e  60 46                                            mov r0, ip
008ba3a0  09 1a                                            subs r1, r1, r0
008ba3a2  63 18                                            adds r3, r4, r1
008ba3a4  93 42                                            cmp r3, r2
008ba3a6  d0 da                                            bge #0x8ba34a
008ba3a8  ae e7                                            b #0x8ba308
008ba3aa  00 26                                            movs r6, #0
008ba3ac  43 78                                            ldrb r3, [r0, #1]
008ba3ae  01 32                                            adds r2, #1
008ba3b0  b0 46                                            mov r8, r6
008ba3b2  81 e7                                            b #0x8ba2b8
008ba3b4  13 78                                            ldrb r3, [r2]
008ba3b6  00 26                                            movs r6, #0
008ba3b8  01 32                                            adds r2, #1
008ba3ba  dd e7                                            b #0x8ba378
008ba3bc  43 78                                            ldrb r3, [r0, #1]
008ba3be  01 20                                            movs r0, #1
008ba3c0  01 32                                            adds r2, #1
008ba3c2  80 46                                            mov r8, r0
008ba3c4  78 e7                                            b #0x8ba2b8
008ba3c6  13 78                                            ldrb r3, [r2]
008ba3c8  01 26                                            movs r6, #1
008ba3ca  01 32                                            adds r2, #1
008ba3cc  d4 e7                                            b #0x8ba378
008ba3ce  89 46                                            mov sb, r1
008ba3d0  e1 44                                            add sb, ip
008ba3d2  e1 45                                            cmp sb, ip
008ba3d4  98 d9                                            bls #0x8ba308
008ba3d6  00 20                                            movs r0, #0
008ba3d8  00 21                                            movs r1, #0
008ba3da  66 46                                            mov r6, ip
008ba3dc  0a 22                                            movs r2, #0xa
008ba3de  00 23                                            movs r3, #0
008ba3e0  54 f6 ba e2                                      blx #0x30e958
008ba3e4  37 78                                            ldrb r7, [r6]
008ba3e6  02 1c                                            adds r2, r0, #0
008ba3e8  00 20                                            movs r0, #0
008ba3ea  0b 1c                                            adds r3, r1, #0
008ba3ec  02 97                                            str r7, [sp, #8]
008ba3ee  03 90                                            str r0, [sp, #0xc]
008ba3f0  01 36                                            adds r6, #1
008ba3f2  02 98                                            ldr r0, [sp, #8]
008ba3f4  03 99                                            ldr r1, [sp, #0xc]
008ba3f6  80 18                                            adds r0, r0, r2
008ba3f8  59 41                                            adcs r1, r3
008ba3fa  b1 45                                            cmp sb, r6
008ba3fc  ee d8                                            bhi #0x8ba3dc
008ba3fe  0b 1c                                            adds r3, r1, #0
008ba400  0c 90                                            str r0, [sp, #0x30]
008ba402  0d 91                                            str r1, [sp, #0x34]
008ba404  01 1c                                            adds r1, r0, #0
008ba406  02 1c                                            adds r2, r0, #0
008ba408  19 43                                            orrs r1, r3
008ba40a  00 d1                                            bne #0x8ba40e
008ba40c  7c e7                                            b #0x8ba308
008ba40e  00 2b                                            cmp r3, #0
008ba410  00 d0                                            beq #0x8ba414
008ba412  a5 e0                                            b #0x8ba560
008ba414  10 0c                                            lsrs r0, r2, #0x10
008ba416  10 21                                            movs r1, #0x10
008ba418  00 26                                            movs r6, #0
008ba41a  84 46                                            mov ip, r0
008ba41c  18 1c                                            adds r0, r3, #0
008ba41e  c8 40                                            lsrs r0, r1
008ba420  67 46                                            mov r7, ip
008ba422  07 43                                            orrs r7, r0
008ba424  00 d0                                            beq #0x8ba428
008ba426  0e 1c                                            adds r6, r1, #0
008ba428  18 27                                            movs r7, #0x18
008ba42a  31 1c                                            adds r1, r6, #0
008ba42c  7f 42                                            rsbs r7, r7, #0
008ba42e  08 31                                            adds r1, #8
008ba430  f0 19                                            adds r0, r6, r7
008ba432  00 d5                                            bpl #0x8ba436
008ba434  fc e0                                            b #0x8ba630
008ba436  1f 1c                                            adds r7, r3, #0
008ba438  c7 40                                            lsrs r7, r0
008ba43a  38 1c                                            adds r0, r7, #0
008ba43c  1f 1c                                            adds r7, r3, #0
008ba43e  cf 40                                            lsrs r7, r1
008ba440  07 43                                            orrs r7, r0
008ba442  00 d0                                            beq #0x8ba446
008ba444  0e 1c                                            adds r6, r1, #0
008ba446  1c 27                                            movs r7, #0x1c
008ba448  7f 42                                            rsbs r7, r7, #0
008ba44a  31 1d                                            adds r1, r6, #4
008ba44c  f0 19                                            adds r0, r6, r7
008ba44e  00 d5                                            bpl #0x8ba452
008ba450  e6 e0                                            b #0x8ba620
008ba452  1f 1c                                            adds r7, r3, #0
008ba454  c7 40                                            lsrs r7, r0
008ba456  38 1c                                            adds r0, r7, #0
008ba458  1f 1c                                            adds r7, r3, #0
008ba45a  cf 40                                            lsrs r7, r1
008ba45c  07 43                                            orrs r7, r0
008ba45e  00 d0                                            beq #0x8ba462
008ba460  0e 1c                                            adds r6, r1, #0
008ba462  1e 27                                            movs r7, #0x1e
008ba464  7f 42                                            rsbs r7, r7, #0
008ba466  b1 1c                                            adds r1, r6, #2
008ba468  f0 19                                            adds r0, r6, r7
008ba46a  00 d5                                            bpl #0x8ba46e
008ba46c  f0 e0                                            b #0x8ba650
008ba46e  1f 1c                                            adds r7, r3, #0
008ba470  c7 40                                            lsrs r7, r0
008ba472  38 1c                                            adds r0, r7, #0
008ba474  1f 1c                                            adds r7, r3, #0
008ba476  cf 40                                            lsrs r7, r1
008ba478  07 43                                            orrs r7, r0
008ba47a  00 d0                                            beq #0x8ba47e
008ba47c  0e 1c                                            adds r6, r1, #0
008ba47e  1f 27                                            movs r7, #0x1f
008ba480  7f 42                                            rsbs r7, r7, #0
008ba482  71 1c                                            adds r1, r6, #1
008ba484  f0 19                                            adds r0, r6, r7
008ba486  00 d5                                            bpl #0x8ba48a
008ba488  da e0                                            b #0x8ba640
008ba48a  1f 1c                                            adds r7, r3, #0
008ba48c  c7 40                                            lsrs r7, r0
008ba48e  38 1c                                            adds r0, r7, #0
008ba490  1f 1c                                            adds r7, r3, #0
008ba492  cf 40                                            lsrs r7, r1
008ba494  07 43                                            orrs r7, r0
008ba496  00 d1                                            bne #0x8ba49a
008ba498  b0 e0                                            b #0x8ba5fc
008ba49a  01 31                                            adds r1, #1
008ba49c  0e 1c                                            adds r6, r1, #0
008ba49e  40 21                                            movs r1, #0x40
008ba4a0  20 27                                            movs r7, #0x20
008ba4a2  89 1b                                            subs r1, r1, r6
008ba4a4  7f 42                                            rsbs r7, r7, #0
008ba4a6  c8 19                                            adds r0, r1, r7
008ba4a8  00 d5                                            bpl #0x8ba4ac
008ba4aa  d9 e0                                            b #0x8ba660
008ba4ac  13 1c                                            adds r3, r2, #0
008ba4ae  83 40                                            lsls r3, r0
008ba4b0  0d 93                                            str r3, [sp, #0x34]
008ba4b2  8a 40                                            lsls r2, r1
008ba4b4  0c 92                                            str r2, [sp, #0x30]
008ba4b6  0c a8                                            add r0, sp, #0x30
008ba4b8  21 1c                                            adds r1, r4, #0
008ba4ba  0f aa                                            add r2, sp, #0x3c
008ba4bc  ff f7 bc fd                                      bl #0x8ba038
008ba4c0  0f 9b                                            ldr r3, [sp, #0x3c]
008ba4c2  f6 18                                            adds r6, r6, r3
008ba4c4  31 4b                                            ldr r3, [pc, #0xc4]
008ba4c6  9e 42                                            cmp r6, r3
008ba4c8  64 da                                            bge #0x8ba594
008ba4ca  31 48                                            ldr r0, [pc, #0xc4]
008ba4cc  36 18                                            adds r6, r6, r0
008ba4ce  31 1c                                            adds r1, r6, #0
008ba4d0  35 31                                            adds r1, #0x35
008ba4d2  00 da                                            bge #0x8ba4d6
008ba4d4  9f e0                                            b #0x8ba616
008ba4d6  0c 24                                            movs r4, #0xc
008ba4d8  a4 1b                                            subs r4, r4, r6
008ba4da  41 2c                                            cmp r4, #0x41
008ba4dc  00 d1                                            bne #0x8ba4e0
008ba4de  9a e0                                            b #0x8ba616
008ba4e0  40 2c                                            cmp r4, #0x40
008ba4e2  00 d1                                            bne #0x8ba4e6
008ba4e4  d7 e0                                            b #0x8ba696
008ba4e6  0c 9a                                            ldr r2, [sp, #0x30]
008ba4e8  0d 9b                                            ldr r3, [sp, #0x34]
008ba4ea  01 20                                            movs r0, #1
008ba4ec  00 21                                            movs r1, #0
008ba4ee  92 46                                            mov sl, r2
008ba4f0  22 1c                                            adds r2, r4, #0
008ba4f2  9b 46                                            mov fp, r3
008ba4f4  03 f0 c6 ee                                      blx #0x8be284
008ba4f8  02 22                                            movs r2, #2
008ba4fa  52 42                                            rsbs r2, r2, #0
008ba4fc  d3 17                                            asrs r3, r2, #0x1f
008ba4fe  12 18                                            adds r2, r2, r0
008ba500  4b 41                                            adcs r3, r1
008ba502  56 46                                            mov r6, sl
008ba504  16 40                                            ands r6, r2
008ba506  5f 46                                            mov r7, fp
008ba508  22 1c                                            adds r2, r4, #0
008ba50a  50 46                                            mov r0, sl
008ba50c  59 46                                            mov r1, fp
008ba50e  1f 40                                            ands r7, r3
008ba510  03 f0 aa ee                                      blx #0x8be268
008ba514  01 23                                            movs r3, #1
008ba516  42 1e                                            subs r2, r0, #1
008ba518  b9 46                                            mov sb, r7
008ba51a  13 40                                            ands r3, r2
008ba51c  0c 90                                            str r0, [sp, #0x30]
008ba51e  0d 91                                            str r1, [sp, #0x34]
008ba520  00 2b                                            cmp r3, #0
008ba522  17 d0                                            beq #0x8ba554
008ba524  01 22                                            movs r2, #1
008ba526  0c 9b                                            ldr r3, [sp, #0x30]
008ba528  0d 9c                                            ldr r4, [sp, #0x34]
008ba52a  1a 42                                            tst r2, r3
008ba52c  02 d1                                            bne #0x8ba534
008ba52e  48 46                                            mov r0, sb
008ba530  30 43                                            orrs r0, r6
008ba532  0f d0                                            beq #0x8ba554
008ba534  01 21                                            movs r1, #1
008ba536  00 22                                            movs r2, #0
008ba538  c9 18                                            adds r1, r1, r3
008ba53a  62 41                                            adcs r2, r4
008ba53c  0c 91                                            str r1, [sp, #0x30]
008ba53e  0d 92                                            str r2, [sp, #0x34]
008ba540  00 29                                            cmp r1, #0
008ba542  07 d1                                            bne #0x8ba554
008ba544  80 23                                            movs r3, #0x80
008ba546  5b 03                                            lsls r3, r3, #0xd
008ba548  9a 42                                            cmp r2, r3
008ba54a  03 d1                                            bne #0x8ba554
008ba54c  09 4c                                            ldr r4, [pc, #0x24]
008ba54e  08 4b                                            ldr r3, [pc, #0x20]
008ba550  0c 93                                            str r3, [sp, #0x30]
008ba552  0d 94                                            str r4, [sp, #0x34]
008ba554  0c 9a                                            ldr r2, [sp, #0x30]
008ba556  0d 9b                                            ldr r3, [sp, #0x34]
008ba558  d8 e6                                            b #0x8ba30c
008ba55a  00 22                                            movs r2, #0
008ba55c  00 23                                            movs r3, #0
008ba55e  d8 e6                                            b #0x8ba312
008ba560  1f 0c                                            lsrs r7, r3, #0x10
008ba562  30 21                                            movs r1, #0x30
008ba564  20 26                                            movs r6, #0x20
008ba566  bc 46                                            mov ip, r7
008ba568  58 e7                                            b #0x8ba41c
008ba56a  c0 46                                            mov r8, r8
008ba56c  c0 46                                            mov r8, r8
008ba56e  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008ba570  00 00 00 00 00 00 10 00 fa a7 0d 00 ac 40 00 00  .byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0xfa, 0xa7, 0x0d, 0x00, 0xac, 0x40, 0x00, 0x00
008ba580  ce fe ff ff 35 01 00 00 f0 7f 00 00 03 fc ff ff  .byte 0xce, 0xfe, 0xff, 0xff, 0x35, 0x01, 0x00, 0x00, 0xf0, 0x7f, 0x00, 0x00, 0x03, 0xfc, 0xff, 0xff
008ba590  fe 03 00 00                                      .byte 0xfe, 0x03, 0x00, 0x00
; decoder-mode: thumb
008ba594  0d 99                                            ldr r1, [sp, #0x34]
008ba596  0c 98                                            ldr r0, [sp, #0x30]
008ba598  8b 05                                            lsls r3, r1, #0x16
008ba59a  82 0a                                            lsrs r2, r0, #0xa
008ba59c  1a 43                                            orrs r2, r3
008ba59e  8b 0a                                            lsrs r3, r1, #0xa
008ba5a0  db 07                                            lsls r3, r3, #0x1f
008ba5a2  9c 46                                            mov ip, r3
008ba5a4  67 46                                            mov r7, ip
008ba5a6  53 08                                            lsrs r3, r2, #1
008ba5a8  cc 0a                                            lsrs r4, r1, #0xb
008ba5aa  3b 43                                            orrs r3, r7
008ba5ac  01 21                                            movs r1, #1
008ba5ae  0c 93                                            str r3, [sp, #0x30]
008ba5b0  0d 94                                            str r4, [sp, #0x34]
008ba5b2  11 42                                            tst r1, r2
008ba5b4  14 d0                                            beq #0x8ba5e0
008ba5b6  19 42                                            tst r1, r3
008ba5b8  02 d1                                            bne #0x8ba5c0
008ba5ba  80 05                                            lsls r0, r0, #0x16
008ba5bc  00 28                                            cmp r0, #0
008ba5be  0f d0                                            beq #0x8ba5e0
008ba5c0  01 21                                            movs r1, #1
008ba5c2  00 22                                            movs r2, #0
008ba5c4  5b 18                                            adds r3, r3, r1
008ba5c6  54 41                                            adcs r4, r2
008ba5c8  62 0d                                            lsrs r2, r4, #0x15
008ba5ca  0c 93                                            str r3, [sp, #0x30]
008ba5cc  0d 94                                            str r4, [sp, #0x34]
008ba5ce  00 2a                                            cmp r2, #0
008ba5d0  06 d0                                            beq #0x8ba5e0
008ba5d2  59 08                                            lsrs r1, r3, #1
008ba5d4  e2 07                                            lsls r2, r4, #0x1f
008ba5d6  0a 43                                            orrs r2, r1
008ba5d8  63 08                                            lsrs r3, r4, #1
008ba5da  0c 92                                            str r2, [sp, #0x30]
008ba5dc  0d 93                                            str r3, [sp, #0x34]
008ba5de  01 36                                            adds r6, #1
008ba5e0  80 23                                            movs r3, #0x80
008ba5e2  db 00                                            lsls r3, r3, #3
008ba5e4  9e 42                                            cmp r6, r3
008ba5e6  43 dc                                            bgt #0x8ba670
008ba5e8  31 48                                            ldr r0, [pc, #0xc4]
008ba5ea  0d 99                                            ldr r1, [sp, #0x34]
008ba5ec  31 4b                                            ldr r3, [pc, #0xc4]
008ba5ee  32 18                                            adds r2, r6, r0
008ba5f0  52 05                                            lsls r2, r2, #0x15
008ba5f2  52 08                                            lsrs r2, r2, #1
008ba5f4  0b 40                                            ands r3, r1
008ba5f6  13 43                                            orrs r3, r2
008ba5f8  0d 93                                            str r3, [sp, #0x34]
008ba5fa  ab e7                                            b #0x8ba554
008ba5fc  20 27                                            movs r7, #0x20
008ba5fe  7f 42                                            rsbs r7, r7, #0
008ba600  f0 19                                            adds r0, r6, r7
008ba602  40 d4                                            bmi #0x8ba686
008ba604  1f 1c                                            adds r7, r3, #0
008ba606  c7 40                                            lsrs r7, r0
008ba608  38 1c                                            adds r0, r7, #0
008ba60a  1f 1c                                            adds r7, r3, #0
008ba60c  f7 40                                            lsrs r7, r6
008ba60e  07 43                                            orrs r7, r0
008ba610  00 d1                                            bne #0x8ba614
008ba612  44 e7                                            b #0x8ba49e
008ba614  42 e7                                            b #0x8ba49c
008ba616  00 23                                            movs r3, #0
008ba618  00 24                                            movs r4, #0
008ba61a  0c 93                                            str r3, [sp, #0x30]
008ba61c  0d 94                                            str r4, [sp, #0x34]
008ba61e  99 e7                                            b #0x8ba554
008ba620  20 20                                            movs r0, #0x20
008ba622  40 1a                                            subs r0, r0, r1
008ba624  1f 1c                                            adds r7, r3, #0
008ba626  87 40                                            lsls r7, r0
008ba628  10 1c                                            adds r0, r2, #0
008ba62a  c8 40                                            lsrs r0, r1
008ba62c  38 43                                            orrs r0, r7
008ba62e  13 e7                                            b #0x8ba458
008ba630  20 20                                            movs r0, #0x20
008ba632  40 1a                                            subs r0, r0, r1
008ba634  1f 1c                                            adds r7, r3, #0
008ba636  87 40                                            lsls r7, r0
008ba638  10 1c                                            adds r0, r2, #0
008ba63a  c8 40                                            lsrs r0, r1
008ba63c  38 43                                            orrs r0, r7
008ba63e  fd e6                                            b #0x8ba43c
008ba640  20 20                                            movs r0, #0x20
008ba642  40 1a                                            subs r0, r0, r1
008ba644  1f 1c                                            adds r7, r3, #0
008ba646  87 40                                            lsls r7, r0
008ba648  10 1c                                            adds r0, r2, #0
008ba64a  c8 40                                            lsrs r0, r1
008ba64c  38 43                                            orrs r0, r7
008ba64e  1f e7                                            b #0x8ba490
008ba650  20 20                                            movs r0, #0x20
008ba652  40 1a                                            subs r0, r0, r1
008ba654  1f 1c                                            adds r7, r3, #0
008ba656  87 40                                            lsls r7, r0
008ba658  10 1c                                            adds r0, r2, #0
008ba65a  c8 40                                            lsrs r0, r1
008ba65c  38 43                                            orrs r0, r7
008ba65e  09 e7                                            b #0x8ba474
008ba660  20 20                                            movs r0, #0x20
008ba662  40 1a                                            subs r0, r0, r1
008ba664  17 1c                                            adds r7, r2, #0
008ba666  c7 40                                            lsrs r7, r0
008ba668  8b 40                                            lsls r3, r1
008ba66a  3b 43                                            orrs r3, r7
008ba66c  0d 93                                            str r3, [sp, #0x34]
008ba66e  20 e7                                            b #0x8ba4b2
008ba670  04 ac                                            add r4, sp, #0x10
008ba672  10 22                                            movs r2, #0x10
008ba674  20 1c                                            adds r0, r4, #0
008ba676  00 21                                            movs r1, #0
008ba678  53 f6 f2 e6                                      blx #0x30e460
008ba67c  0e 4b                                            ldr r3, [pc, #0x38]
008ba67e  00 22                                            movs r2, #0
008ba680  e3 80                                            strh r3, [r4, #6]
008ba682  63 68                                            ldr r3, [r4, #4]
008ba684  42 e6                                            b #0x8ba30c
008ba686  20 20                                            movs r0, #0x20
008ba688  80 1b                                            subs r0, r0, r6
008ba68a  1f 1c                                            adds r7, r3, #0
008ba68c  87 40                                            lsls r7, r0
008ba68e  10 1c                                            adds r0, r2, #0
008ba690  f0 40                                            lsrs r0, r6
008ba692  38 43                                            orrs r0, r7
008ba694  b9 e7                                            b #0x8ba60a
008ba696  0d 9b                                            ldr r3, [sp, #0x34]
008ba698  0c 9e                                            ldr r6, [sp, #0x30]
008ba69a  5a 00                                            lsls r2, r3, #1
008ba69c  52 08                                            lsrs r2, r2, #1
008ba69e  91 46                                            mov sb, r2
008ba6a0  00 21                                            movs r1, #0
008ba6a2  00 22                                            movs r2, #0
008ba6a4  db 0f                                            lsrs r3, r3, #0x1f
008ba6a6  0c 91                                            str r1, [sp, #0x30]
008ba6a8  0d 92                                            str r2, [sp, #0x34]
008ba6aa  39 e7                                            b #0x8ba520
008ba6ac  53 f6 30 e6                                      blx #0x30e310
; mapping-symbol data/literal pool
008ba6b0  fe 03 00 00 ff ff 0f 80 f0 7f 00 00              .byte 0xfe, 0x03, 0x00, 0x00, 0xff, 0xff, 0x0f, 0x80, 0xf0, 0x7f, 0x00, 0x00

; FUNCTION 0x008ba6c0, declared_size=22, range_size=22, mode=thumb
; class-group: std::priv
; alias: _ZNSt4priv17__string_to_floatERKNS_16__basic_iostringIcEERf
; demangled: std::priv::__string_to_float(std::priv::__basic_iostring<char> const&, float&)
; decoder-mode: thumb
008ba6c0  10 b5                                            push {r4, lr}
008ba6c2  8c 23                                            movs r3, #0x8c
008ba6c4  5b 00                                            lsls r3, r3, #1
008ba6c6  c0 58                                            ldr r0, [r0, r3]
008ba6c8  0c 1c                                            adds r4, r1, #0
008ba6ca  ff f7 dd fd                                      bl #0x8ba288
008ba6ce  53 f6 e8 e7                                      blx #0x30e6a0
008ba6d2  20 60                                            str r0, [r4]
008ba6d4  10 bd                                            pop {r4, pc}

; FUNCTION 0x008ba6d8, declared_size=20, range_size=20, mode=thumb
; class-group: std::priv
; alias: _ZNSt4priv17__string_to_floatERKNS_16__basic_iostringIcEERd
; demangled: std::priv::__string_to_float(std::priv::__basic_iostring<char> const&, double&)
; decoder-mode: thumb
008ba6d8  10 b5                                            push {r4, lr}
008ba6da  8c 23                                            movs r3, #0x8c
008ba6dc  5b 00                                            lsls r3, r3, #1
008ba6de  c0 58                                            ldr r0, [r0, r3]
008ba6e0  0c 1c                                            adds r4, r1, #0
008ba6e2  ff f7 d1 fd                                      bl #0x8ba288
008ba6e6  20 60                                            str r0, [r4]
008ba6e8  61 60                                            str r1, [r4, #4]
008ba6ea  10 bd                                            pop {r4, pc}

; FUNCTION 0x008bab68, declared_size=20, range_size=20, mode=thumb
; class-group: std::priv
; alias: _ZNSt4priv17__string_to_floatERKNS_16__basic_iostringIcEERe
; demangled: std::priv::__string_to_float(std::priv::__basic_iostring<char> const&, long double&)
; decoder-mode: thumb
008bab68  10 b5                                            push {r4, lr}
008bab6a  8c 23                                            movs r3, #0x8c
008bab6c  5b 00                                            lsls r3, r3, #1
008bab6e  c0 58                                            ldr r0, [r0, r3]
008bab70  0c 1c                                            adds r4, r1, #0
008bab72  ff f7 45 ff                                      bl #0x8baa00
008bab76  20 60                                            str r0, [r4]
008bab78  61 60                                            str r1, [r4, #4]
008bab7a  10 bd                                            pop {r4, pc}

; FUNCTION 0x008bab7c, declared_size=168, range_size=168, mode=thumb
; class-group: std::priv
; alias: _ZNSt4priv21_Initialize_get_floatERKSt5ctypeIwERwS4_S4_S4_Pw
; demangled: std::priv::_Initialize_get_float(std::ctype<wchar_t> const&, wchar_t&, wchar_t&, wchar_t&, wchar_t&, wchar_t*)
; decoder-mode: thumb
008bab7c  f0 b5                                            push {r4, r5, r6, r7, lr}
008bab7e  5f 46                                            mov r7, fp
008bab80  56 46                                            mov r6, sl
008bab82  4d 46                                            mov r5, sb
008bab84  44 46                                            mov r4, r8
008bab86  f0 b4                                            push {r4, r5, r6, r7}
008bab88  23 4d                                            ldr r5, [pc, #0x8c]
008bab8a  98 46                                            mov r8, r3
008bab8c  23 4b                                            ldr r3, [pc, #0x8c]
008bab8e  7d 44                                            add r5, pc
008bab90  85 b0                                            sub sp, #0x14
008bab92  ed 58                                            ldr r5, [r5, r3]
008bab94  04 1c                                            adds r4, r0, #0
008bab96  0e 1c                                            adds r6, r1, #0
008bab98  2b 68                                            ldr r3, [r5]
008bab9a  0e 98                                            ldr r0, [sp, #0x38]
008bab9c  0f 99                                            ldr r1, [sp, #0x3c]
008bab9e  03 93                                            str r3, [sp, #0xc]
008baba0  1f 4b                                            ldr r3, [pc, #0x7c]
008baba2  17 1c                                            adds r7, r2, #0
008baba4  6a 46                                            mov r2, sp
008baba6  7b 44                                            add r3, pc
008baba8  82 46                                            mov sl, r0
008babaa  8b 46                                            mov fp, r1
008babac  03 cb                                            ldm r3!, {r0, r1}
008babae  03 c2                                            stm r2!, {r0, r1}
008babb0  19 88                                            ldrh r1, [r3]
008babb2  20 1c                                            adds r0, r4, #0
008babb4  11 80                                            strh r1, [r2]
008babb6  9b 78                                            ldrb r3, [r3, #2]
008babb8  2b 21                                            movs r1, #0x2b
008babba  93 70                                            strb r3, [r2, #2]
008babbc  23 68                                            ldr r3, [r4]
008babbe  9b 6a                                            ldr r3, [r3, #0x28]
008babc0  98 47                                            blx r3
008babc2  30 60                                            str r0, [r6]
008babc4  23 68                                            ldr r3, [r4]
008babc6  2d 21                                            movs r1, #0x2d
008babc8  20 1c                                            adds r0, r4, #0
008babca  9b 6a                                            ldr r3, [r3, #0x28]
008babcc  98 47                                            blx r3
008babce  38 60                                            str r0, [r7]
008babd0  23 68                                            ldr r3, [r4]
008babd2  65 21                                            movs r1, #0x65
008babd4  20 1c                                            adds r0, r4, #0
008babd6  9b 6a                                            ldr r3, [r3, #0x28]
008babd8  98 47                                            blx r3
008babda  43 46                                            mov r3, r8
008babdc  18 60                                            str r0, [r3]
008babde  23 68                                            ldr r3, [r4]
008babe0  45 21                                            movs r1, #0x45
008babe2  20 1c                                            adds r0, r4, #0
008babe4  9b 6a                                            ldr r3, [r3, #0x28]
008babe6  98 47                                            blx r3
008babe8  51 46                                            mov r1, sl
008babea  08 60                                            str r0, [r1]
008babec  23 68                                            ldr r3, [r4]
008babee  6a 46                                            mov r2, sp
008babf0  0a 32                                            adds r2, #0xa
008babf2  de 6a                                            ldr r6, [r3, #0x2c]
008babf4  20 1c                                            adds r0, r4, #0
008babf6  5b 46                                            mov r3, fp
008babf8  69 46                                            mov r1, sp
008babfa  b0 47                                            blx r6
008babfc  03 9a                                            ldr r2, [sp, #0xc]
008babfe  2b 68                                            ldr r3, [r5]
008bac00  9a 42                                            cmp r2, r3
008bac02  06 d1                                            bne #0x8bac12
008bac04  05 b0                                            add sp, #0x14
008bac06  3c bc                                            pop {r2, r3, r4, r5}
008bac08  90 46                                            mov r8, r2
008bac0a  99 46                                            mov sb, r3
008bac0c  a2 46                                            mov sl, r4
008bac0e  ab 46                                            mov fp, r5
008bac10  f0 bd                                            pop {r4, r5, r6, r7, pc}
008bac12  53 f6 7e e3                                      blx #0x30e310
008bac16  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008bac18  06 9f 0d 00 ac 40 00 00 5e b6 05 00              .byte 0x06, 0x9f, 0x0d, 0x00, 0xac, 0x40, 0x00, 0x00, 0x5e, 0xb6, 0x05, 0x00

; FUNCTION 0x008bac24, declared_size=126, range_size=126, mode=thumb
; class-group: std::priv
; alias: _ZNSt4privL13__fill_fmtbufEPcic
; demangled: std::priv::__fill_fmtbuf(char*, int, char)
; decoder-mode: thumb
008bac24  f0 b5                                            push {r4, r5, r6, r7, lr}
008bac26  25 23                                            movs r3, #0x25
008bac28  03 70                                            strb r3, [r0]
008bac2a  0b 05                                            lsls r3, r1, #0x14
008bac2c  23 d4                                            bmi #0x8bac76
008bac2e  02 26                                            movs r6, #2
008bac30  04 23                                            movs r3, #4
008bac32  03 24                                            movs r4, #3
008bac34  b4 46                                            mov ip, r6
008bac36  01 25                                            movs r5, #1
008bac38  4f 05                                            lsls r7, r1, #0x15
008bac3a  05 d5                                            bpl #0x8bac48
008bac3c  23 23                                            movs r3, #0x23
008bac3e  43 55                                            strb r3, [r0, r5]
008bac40  65 46                                            mov r5, ip
008bac42  6e 1c                                            adds r6, r5, #1
008bac44  74 1c                                            adds r4, r6, #1
008bac46  63 1c                                            adds r3, r4, #1
008bac48  2e 27                                            movs r7, #0x2e
008bac4a  47 55                                            strb r7, [r0, r5]
008bac4c  2a 25                                            movs r5, #0x2a
008bac4e  85 55                                            strb r5, [r0, r6]
008bac50  00 2a                                            cmp r2, #0
008bac52  02 d0                                            beq #0x8bac5a
008bac54  02 55                                            strb r2, [r0, r4]
008bac56  1c 1c                                            adds r4, r3, #0
008bac58  01 33                                            adds r3, #1
008bac5a  c0 22                                            movs r2, #0xc0
008bac5c  0a 40                                            ands r2, r1
008bac5e  40 2a                                            cmp r2, #0x40
008bac60  17 d0                                            beq #0x8bac92
008bac62  80 2a                                            cmp r2, #0x80
008bac64  0f d0                                            beq #0x8bac86
008bac66  04 19                                            adds r4, r0, r4
008bac68  47 22                                            movs r2, #0x47
008bac6a  4d 04                                            lsls r5, r1, #0x11
008bac6c  17 d5                                            bpl #0x8bac9e
008bac6e  22 70                                            strb r2, [r4]
008bac70  00 22                                            movs r2, #0
008bac72  c2 54                                            strb r2, [r0, r3]
008bac74  f0 bd                                            pop {r4, r5, r6, r7, pc}
008bac76  2b 23                                            movs r3, #0x2b
008bac78  03 26                                            movs r6, #3
008bac7a  43 70                                            strb r3, [r0, #1]
008bac7c  04 24                                            movs r4, #4
008bac7e  05 23                                            movs r3, #5
008bac80  b4 46                                            mov ip, r6
008bac82  02 25                                            movs r5, #2
008bac84  d8 e7                                            b #0x8bac38
008bac86  04 19                                            adds r4, r0, r4
008bac88  45 22                                            movs r2, #0x45
008bac8a  4d 04                                            lsls r5, r1, #0x11
008bac8c  ef d4                                            bmi #0x8bac6e
008bac8e  65 22                                            movs r2, #0x65
008bac90  ed e7                                            b #0x8bac6e
008bac92  04 19                                            adds r4, r0, r4
008bac94  46 22                                            movs r2, #0x46
008bac96  4f 04                                            lsls r7, r1, #0x11
008bac98  e9 d4                                            bmi #0x8bac6e
008bac9a  66 22                                            movs r2, #0x66
008bac9c  e7 e7                                            b #0x8bac6e
008bac9e  67 22                                            movs r2, #0x67
008baca0  e5 e7                                            b #0x8bac6e

; FUNCTION 0x008bad58, declared_size=56, range_size=56, mode=thumb
; class-group: std::priv
; alias: _ZNSt4priv21__adjust_float_bufferERNS_16__basic_iostringIcEEc
; demangled: std::priv::__adjust_float_buffer(std::priv::__basic_iostring<char>&, char)
; decoder-mode: thumb
008bad58  70 b5                                            push {r4, r5, r6, lr}
008bad5a  82 b0                                            sub sp, #8
008bad5c  04 1c                                            adds r4, r0, #0
008bad5e  0e 1c                                            adds r6, r1, #0
008bad60  2e 29                                            cmp r1, #0x2e
008bad62  13 d0                                            beq #0x8bad8c
008bad64  8c 25                                            movs r5, #0x8c
008bad66  6d 00                                            lsls r5, r5, #1
008bad68  01 69                                            ldr r1, [r0, #0x10]
008bad6a  40 59                                            ldr r0, [r0, r5]
008bad6c  81 42                                            cmp r1, r0
008bad6e  0d d0                                            beq #0x8bad8c
008bad70  6a 46                                            mov r2, sp
008bad72  2e 23                                            movs r3, #0x2e
008bad74  13 70                                            strb r3, [r2]
008bad76  01 ab                                            add r3, sp, #4
008bad78  93 f6 44 e7                                      blx #0x34ec04
008bad7c  23 69                                            ldr r3, [r4, #0x10]
008bad7e  98 42                                            cmp r0, r3
008bad80  04 d0                                            beq #0x8bad8c
008bad82  63 59                                            ldr r3, [r4, r5]
008bad84  c3 1a                                            subs r3, r0, r3
008bad86  01 33                                            adds r3, #1
008bad88  00 d0                                            beq #0x8bad8c
008bad8a  06 70                                            strb r6, [r0]
008bad8c  02 b0                                            add sp, #8
008bad8e  70 bd                                            pop {r4, r5, r6, pc}

; FUNCTION 0x008bae70, declared_size=100, range_size=100, mode=thumb
; class-group: std::priv
; alias: _ZNSt4priv22__convert_float_bufferERKNS_16__basic_iostringIcEERNS0_IwEERKSt5ctypeIwEwb
; demangled: std::priv::__convert_float_buffer(std::priv::__basic_iostring<char> const&, std::priv::__basic_iostring<wchar_t>&, std::ctype<wchar_t> const&, wchar_t, bool)
; decoder-mode: thumb
008bae70  f0 b5                                            push {r4, r5, r6, r7, lr}
008bae72  47 46                                            mov r7, r8
008bae74  80 b4                                            push {r7}
008bae76  98 46                                            mov r8, r3
008bae78  06 ab                                            add r3, sp, #0x18
008bae7a  15 1c                                            adds r5, r2, #0
008bae7c  1a 78                                            ldrb r2, [r3]
008bae7e  8c 23                                            movs r3, #0x8c
008bae80  5b 00                                            lsls r3, r3, #1
008bae82  0f 1c                                            adds r7, r1, #0
008bae84  c4 58                                            ldr r4, [r0, r3]
008bae86  06 69                                            ldr r6, [r0, #0x10]
008bae88  00 2a                                            cmp r2, #0
008bae8a  16 d0                                            beq #0x8baeba
008bae8c  0b e0                                            b #0x8baea6
008bae8e  21 78                                            ldrb r1, [r4]
008bae90  2e 29                                            cmp r1, #0x2e
008bae92  0d d0                                            beq #0x8baeb0
008bae94  2b 68                                            ldr r3, [r5]
008bae96  28 1c                                            adds r0, r5, #0
008bae98  01 34                                            adds r4, #1
008bae9a  9b 6a                                            ldr r3, [r3, #0x28]
008bae9c  98 47                                            blx r3
008bae9e  01 1c                                            adds r1, r0, #0
008baea0  38 1c                                            adds r0, r7, #0
008baea2  fe f7 33 ff                                      bl #0x8b9d0c
008baea6  b4 42                                            cmp r4, r6
008baea8  f1 d1                                            bne #0x8bae8e
008baeaa  04 bc                                            pop {r2}
008baeac  90 46                                            mov r8, r2
008baeae  f0 bd                                            pop {r4, r5, r6, r7, pc}
008baeb0  38 1c                                            adds r0, r7, #0
008baeb2  41 46                                            mov r1, r8
008baeb4  fe f7 2a ff                                      bl #0x8b9d0c
008baeb8  01 34                                            adds r4, #1
008baeba  b4 42                                            cmp r4, r6
008baebc  f5 d0                                            beq #0x8baeaa
008baebe  2b 68                                            ldr r3, [r5]
008baec0  21 78                                            ldrb r1, [r4]
008baec2  28 1c                                            adds r0, r5, #0
008baec4  9b 6a                                            ldr r3, [r3, #0x28]
008baec6  98 47                                            blx r3
008baec8  01 1c                                            adds r1, r0, #0
008baeca  38 1c                                            adds r0, r7, #0
008baecc  fe f7 1e ff                                      bl #0x8b9d0c
008baed0  01 34                                            adds r4, #1
008baed2  f2 e7                                            b #0x8baeba

; FUNCTION 0x008bafd4, declared_size=112, range_size=112, mode=thumb
; class-group: std::priv
; alias: _ZNSt4priv18__get_floor_digitsERNS_16__basic_iostringIcEEe
; demangled: std::priv::__get_floor_digits(std::priv::__basic_iostring<char>&, long double)
; decoder-mode: thumb
008bafd4  f0 b5                                            push {r4, r5, r6, r7, lr}
008bafd6  18 4c                                            ldr r4, [pc, #0x60]
008bafd8  18 4e                                            ldr r6, [pc, #0x60]
008bafda  19 1c                                            adds r1, r3, #0
008bafdc  7c 44                                            add r4, pc
008bafde  a3 59                                            ldr r3, [r4, r6]
008bafe0  07 1c                                            adds r7, r0, #0
008bafe2  10 1c                                            adds r0, r2, #0
008bafe4  16 4a                                            ldr r2, [pc, #0x58]
008bafe6  d5 b0                                            sub sp, #0x154
008bafe8  1b 68                                            ldr r3, [r3]
008bafea  04 ad                                            add r5, sp, #0x10
008bafec  00 90                                            str r0, [sp]
008bafee  01 91                                            str r1, [sp, #4]
008baff0  9d 21                                            movs r1, #0x9d
008baff2  7a 44                                            add r2, pc
008baff4  49 00                                            lsls r1, r1, #1
008baff6  28 1c                                            adds r0, r5, #0
008baff8  53 93                                            str r3, [sp, #0x14c]
008baffa  53 f6 24 e1                                      blx #0x30e244
008baffe  28 1c                                            adds r0, r5, #0
008bb000  2e 21                                            movs r1, #0x2e
008bb002  53 f6 12 e6                                      blx #0x30ec28
008bb006  02 1e                                            subs r2, r0, #0
008bb008  0b d0                                            beq #0x8bb022
008bb00a  38 1c                                            adds r0, r7, #0
008bb00c  29 1c                                            adds r1, r5, #0
008bb00e  03 ab                                            add r3, sp, #0xc
008bb010  ff f7 be fe                                      bl #0x8bad90
008bb014  a3 59                                            ldr r3, [r4, r6]
008bb016  53 9a                                            ldr r2, [sp, #0x14c]
008bb018  1b 68                                            ldr r3, [r3]
008bb01a  9a 42                                            cmp r2, r3
008bb01c  0a d1                                            bne #0x8bb034
008bb01e  55 b0                                            add sp, #0x154
008bb020  f0 bd                                            pop {r4, r5, r6, r7, pc}
008bb022  28 1c                                            adds r0, r5, #0
008bb024  52 f6 16 e7                                      blx #0x30de54
008bb028  29 1c                                            adds r1, r5, #0
008bb02a  2a 18                                            adds r2, r5, r0
008bb02c  38 1c                                            adds r0, r7, #0
008bb02e  ff f7 51 ff                                      bl #0x8baed4
008bb032  ef e7                                            b #0x8bb014
008bb034  53 f6 6c e1                                      blx #0x30e310
; mapping-symbol data/literal pool
008bb038  b8 9a 0d 00 ac 40 00 00 1e b2 05 00              .byte 0xb8, 0x9a, 0x0d, 0x00, 0xac, 0x40, 0x00, 0x00, 0x1e, 0xb2, 0x05, 0x00

; FUNCTION 0x008bb0bc, declared_size=124, range_size=124, mode=thumb
; class-group: std::priv
; alias: _ZNSt4priv13__write_floatERNS_16__basic_iostringIcEEiid
; demangled: std::priv::__write_float(std::priv::__basic_iostring<char>&, int, int, double)
; decoder-mode: thumb
008bb0bc  f0 b5                                            push {r4, r5, r6, r7, lr}
008bb0be  47 46                                            mov r7, r8
008bb0c0  80 b4                                            push {r7}
008bb0c2  1b 4b                                            ldr r3, [pc, #0x6c]
008bb0c4  90 46                                            mov r8, r2
008bb0c6  1b 4a                                            ldr r2, [pc, #0x6c]
008bb0c8  7b 44                                            add r3, pc
008bb0ca  dc b0                                            sub sp, #0x170
008bb0cc  9e 58                                            ldr r6, [r3, r2]
008bb0ce  53 af                                            add r7, sp, #0x14c
008bb0d0  04 1c                                            adds r4, r0, #0
008bb0d2  33 68                                            ldr r3, [r6]
008bb0d4  38 1c                                            adds r0, r7, #0
008bb0d6  00 22                                            movs r2, #0
008bb0d8  04 ad                                            add r5, sp, #0x10
008bb0da  5b 93                                            str r3, [sp, #0x16c]
008bb0dc  ff f7 a2 fd                                      bl #0x8bac24
008bb0e0  62 9a                                            ldr r2, [sp, #0x188]
008bb0e2  63 9b                                            ldr r3, [sp, #0x18c]
008bb0e4  9d 21                                            movs r1, #0x9d
008bb0e6  00 92                                            str r2, [sp]
008bb0e8  01 93                                            str r3, [sp, #4]
008bb0ea  49 00                                            lsls r1, r1, #1
008bb0ec  43 46                                            mov r3, r8
008bb0ee  3a 1c                                            adds r2, r7, #0
008bb0f0  28 1c                                            adds r0, r5, #0
008bb0f2  53 f6 a8 e0                                      blx #0x30e244
008bb0f6  28 1c                                            adds r0, r5, #0
008bb0f8  52 f6 ac e6                                      blx #0x30de54
008bb0fc  29 1c                                            adds r1, r5, #0
008bb0fe  2a 18                                            adds r2, r5, r0
008bb100  8c 25                                            movs r5, #0x8c
008bb102  6d 00                                            lsls r5, r5, #1
008bb104  20 1c                                            adds r0, r4, #0
008bb106  ff f7 9d ff                                      bl #0x8bb044
008bb10a  00 22                                            movs r2, #0
008bb10c  03 ab                                            add r3, sp, #0xc
008bb10e  60 59                                            ldr r0, [r4, r5]
008bb110  21 69                                            ldr r1, [r4, #0x10]
008bb112  ff f7 c7 fd                                      bl #0x8baca4
008bb116  63 59                                            ldr r3, [r4, r5]
008bb118  5b 9a                                            ldr r2, [sp, #0x16c]
008bb11a  c0 1a                                            subs r0, r0, r3
008bb11c  33 68                                            ldr r3, [r6]
008bb11e  9a 42                                            cmp r2, r3
008bb120  03 d1                                            bne #0x8bb12a
008bb122  5c b0                                            add sp, #0x170
008bb124  04 bc                                            pop {r2}
008bb126  90 46                                            mov r8, r2
008bb128  f0 bd                                            pop {r4, r5, r6, r7, pc}
008bb12a  53 f6 f2 e0                                      blx #0x30e310
008bb12e  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008bb130  cc 99 0d 00 ac 40 00 00                          .byte 0xcc, 0x99, 0x0d, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x008bb138, declared_size=124, range_size=124, mode=thumb
; class-group: std::priv
; alias: _ZNSt4priv13__write_floatERNS_16__basic_iostringIcEEiie
; demangled: std::priv::__write_float(std::priv::__basic_iostring<char>&, int, int, long double)
; decoder-mode: thumb
008bb138  f0 b5                                            push {r4, r5, r6, r7, lr}
008bb13a  47 46                                            mov r7, r8
008bb13c  80 b4                                            push {r7}
008bb13e  1b 4b                                            ldr r3, [pc, #0x6c]
008bb140  90 46                                            mov r8, r2
008bb142  1b 4a                                            ldr r2, [pc, #0x6c]
008bb144  7b 44                                            add r3, pc
008bb146  dc b0                                            sub sp, #0x170
008bb148  9e 58                                            ldr r6, [r3, r2]
008bb14a  53 af                                            add r7, sp, #0x14c
008bb14c  04 1c                                            adds r4, r0, #0
008bb14e  33 68                                            ldr r3, [r6]
008bb150  38 1c                                            adds r0, r7, #0
008bb152  4c 22                                            movs r2, #0x4c
008bb154  04 ad                                            add r5, sp, #0x10
008bb156  5b 93                                            str r3, [sp, #0x16c]
008bb158  ff f7 64 fd                                      bl #0x8bac24
008bb15c  62 9a                                            ldr r2, [sp, #0x188]
008bb15e  63 9b                                            ldr r3, [sp, #0x18c]
008bb160  9d 21                                            movs r1, #0x9d
008bb162  00 92                                            str r2, [sp]
008bb164  01 93                                            str r3, [sp, #4]
008bb166  49 00                                            lsls r1, r1, #1
008bb168  43 46                                            mov r3, r8
008bb16a  3a 1c                                            adds r2, r7, #0
008bb16c  28 1c                                            adds r0, r5, #0
008bb16e  53 f6 6a e0                                      blx #0x30e244
008bb172  28 1c                                            adds r0, r5, #0
008bb174  52 f6 6e e6                                      blx #0x30de54
008bb178  29 1c                                            adds r1, r5, #0
008bb17a  2a 18                                            adds r2, r5, r0
008bb17c  8c 25                                            movs r5, #0x8c
008bb17e  6d 00                                            lsls r5, r5, #1
008bb180  20 1c                                            adds r0, r4, #0
008bb182  ff f7 5f ff                                      bl #0x8bb044
008bb186  00 22                                            movs r2, #0
008bb188  03 ab                                            add r3, sp, #0xc
008bb18a  60 59                                            ldr r0, [r4, r5]
008bb18c  21 69                                            ldr r1, [r4, #0x10]
008bb18e  ff f7 89 fd                                      bl #0x8baca4
008bb192  63 59                                            ldr r3, [r4, r5]
008bb194  5b 9a                                            ldr r2, [sp, #0x16c]
008bb196  c0 1a                                            subs r0, r0, r3
008bb198  33 68                                            ldr r3, [r6]
008bb19a  9a 42                                            cmp r2, r3
008bb19c  03 d1                                            bne #0x8bb1a6
008bb19e  5c b0                                            add sp, #0x170
008bb1a0  04 bc                                            pop {r2}
008bb1a2  90 46                                            mov r8, r2
008bb1a4  f0 bd                                            pop {r4, r5, r6, r7, pc}
008bb1a6  53 f6 b4 e0                                      blx #0x30e310
008bb1aa  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008bb1ac  50 99 0d 00 ac 40 00 00                          .byte 0x50, 0x99, 0x0d, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x008bb30c, declared_size=162, range_size=162, mode=thumb
; class-group: std::priv
; alias: _ZNSt4privL16__get_date_orderEP12_Locale_time
; demangled: std::priv::__get_date_order(_Locale_time*)
; decoder-mode: thumb
008bb30c  10 b5                                            push {r4, lr}
008bb30e  fb f7 47 fc                                      bl #0x8b6ba0
008bb312  03 78                                            ldrb r3, [r0]
008bb314  25 2b                                            cmp r3, #0x25
008bb316  07 d0                                            beq #0x8bb328
008bb318  00 2b                                            cmp r3, #0
008bb31a  01 d1                                            bne #0x8bb320
008bb31c  00 20                                            movs r0, #0
008bb31e  10 bd                                            pop {r4, pc}
008bb320  01 30                                            adds r0, #1
008bb322  03 78                                            ldrb r3, [r0]
008bb324  25 2b                                            cmp r3, #0x25
008bb326  f7 d1                                            bne #0x8bb318
008bb328  00 2b                                            cmp r3, #0
008bb32a  f7 d0                                            beq #0x8bb31c
008bb32c  41 78                                            ldrb r1, [r0, #1]
008bb32e  43 1c                                            adds r3, r0, #1
008bb330  25 29                                            cmp r1, #0x25
008bb332  01 d0                                            beq #0x8bb338
008bb334  00 29                                            cmp r1, #0
008bb336  18 d1                                            bne #0x8bb36a
008bb338  0a 1c                                            adds r2, r1, #0
008bb33a  00 2a                                            cmp r2, #0
008bb33c  ee d0                                            beq #0x8bb31c
008bb33e  5c 78                                            ldrb r4, [r3, #1]
008bb340  5a 1c                                            adds r2, r3, #1
008bb342  00 2c                                            cmp r4, #0
008bb344  18 d1                                            bne #0x8bb378
008bb346  23 1c                                            adds r3, r4, #0
008bb348  00 2b                                            cmp r3, #0
008bb34a  e7 d0                                            beq #0x8bb31c
008bb34c  53 78                                            ldrb r3, [r2, #1]
008bb34e  6d 29                                            cmp r1, #0x6d
008bb350  1b d0                                            beq #0x8bb38a
008bb352  79 29                                            cmp r1, #0x79
008bb354  1f d0                                            beq #0x8bb396
008bb356  64 29                                            cmp r1, #0x64
008bb358  e0 d1                                            bne #0x8bb31c
008bb35a  79 3b                                            subs r3, #0x79
008bb35c  6d 3c                                            subs r4, #0x6d
008bb35e  58 42                                            rsbs r0, r3, #0
008bb360  58 41                                            adcs r0, r3
008bb362  63 42                                            rsbs r3, r4, #0
008bb364  63 41                                            adcs r3, r4
008bb366  18 40                                            ands r0, r3
008bb368  d9 e7                                            b #0x8bb31e
008bb36a  01 33                                            adds r3, #1
008bb36c  1a 78                                            ldrb r2, [r3]
008bb36e  25 2a                                            cmp r2, #0x25
008bb370  e3 d0                                            beq #0x8bb33a
008bb372  00 2a                                            cmp r2, #0
008bb374  f9 d1                                            bne #0x8bb36a
008bb376  d1 e7                                            b #0x8bb31c
008bb378  25 2c                                            cmp r4, #0x25
008bb37a  e4 d0                                            beq #0x8bb346
008bb37c  01 32                                            adds r2, #1
008bb37e  13 78                                            ldrb r3, [r2]
008bb380  25 2b                                            cmp r3, #0x25
008bb382  e1 d0                                            beq #0x8bb348
008bb384  00 2b                                            cmp r3, #0
008bb386  f9 d1                                            bne #0x8bb37c
008bb388  c8 e7                                            b #0x8bb31c
008bb38a  79 2b                                            cmp r3, #0x79
008bb38c  c6 d1                                            bne #0x8bb31c
008bb38e  02 20                                            movs r0, #2
008bb390  64 2c                                            cmp r4, #0x64
008bb392  c3 d1                                            bne #0x8bb31c
008bb394  c3 e7                                            b #0x8bb31e
008bb396  64 2c                                            cmp r4, #0x64
008bb398  05 d0                                            beq #0x8bb3a6
008bb39a  6d 2c                                            cmp r4, #0x6d
008bb39c  be d1                                            bne #0x8bb31c
008bb39e  03 20                                            movs r0, #3
008bb3a0  64 2b                                            cmp r3, #0x64
008bb3a2  bb d1                                            bne #0x8bb31c
008bb3a4  bb e7                                            b #0x8bb31e
008bb3a6  04 20                                            movs r0, #4
008bb3a8  6d 2b                                            cmp r3, #0x6d
008bb3aa  b7 d1                                            bne #0x8bb31c
008bb3ac  b7 e7                                            b #0x8bb31e

; FUNCTION 0x008bb3b0, declared_size=20, range_size=20, mode=thumb
; class-group: std::priv
; alias: _ZNSt4privL8__appendERNS_16__basic_iostringIcEERKSs
; demangled: std::priv::__append(std::priv::__basic_iostring<char>&, std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&)
; decoder-mode: thumb
008bb3b0  00 b5                                            push {lr}
008bb3b2  4b 69                                            ldr r3, [r1, #0x14]
008bb3b4  83 b0                                            sub sp, #0xc
008bb3b6  0a 69                                            ldr r2, [r1, #0x10]
008bb3b8  19 1c                                            adds r1, r3, #0
008bb3ba  01 ab                                            add r3, sp, #4
008bb3bc  ea f7 7a fb                                      bl #0x8a5ab4
008bb3c0  03 b0                                            add sp, #0xc
008bb3c2  00 bd                                            pop {pc}

; FUNCTION 0x008bb4e0, declared_size=46, range_size=46, mode=thumb
; class-group: std::priv
; alias: _ZNSt4privL8__appendERNS_16__basic_iostringIwEEPcS3_RKSt5ctypeIwE
; demangled: std::priv::__append(std::priv::__basic_iostring<wchar_t>&, char*, char*, std::ctype<wchar_t> const&)
; decoder-mode: thumb
008bb4e0  f0 b5                                            push {r4, r5, r6, r7, lr}
008bb4e2  16 1c                                            adds r6, r2, #0
008bb4e4  1a 68                                            ldr r2, [r3]
008bb4e6  c3 b0                                            sub sp, #0x10c
008bb4e8  01 ac                                            add r4, sp, #4
008bb4ea  d2 6a                                            ldr r2, [r2, #0x2c]
008bb4ec  0d 1c                                            adds r5, r1, #0
008bb4ee  07 1c                                            adds r7, r0, #0
008bb4f0  94 46                                            mov ip, r2
008bb4f2  18 1c                                            adds r0, r3, #0
008bb4f4  32 1c                                            adds r2, r6, #0
008bb4f6  23 1c                                            adds r3, r4, #0
008bb4f8  e0 47                                            blx ip
008bb4fa  72 1b                                            subs r2, r6, r5
008bb4fc  92 00                                            lsls r2, r2, #2
008bb4fe  38 1c                                            adds r0, r7, #0
008bb500  41 ab                                            add r3, sp, #0x104
008bb502  a2 18                                            adds r2, r4, r2
008bb504  21 1c                                            adds r1, r4, #0
008bb506  ff f7 87 ff                                      bl #0x8bb418
008bb50a  43 b0                                            add sp, #0x10c
008bb50c  f0 bd                                            pop {r4, r5, r6, r7, pc}

; FUNCTION 0x008bb510, declared_size=28, range_size=28, mode=thumb
; class-group: std::priv
; alias: _ZNSt4privL8__appendERNS_16__basic_iostringIwEERKSbIwSt11char_traitsIwESaIwEE
; demangled: std::priv::__append(std::priv::__basic_iostring<wchar_t>&, std::basic_string<wchar_t, std::char_traits<wchar_t>, std::allocator<wchar_t> > const&)
; decoder-mode: thumb
008bb510  00 b5                                            push {lr}
008bb512  4b 6c                                            ldr r3, [r1, #0x44]
008bb514  0a 6c                                            ldr r2, [r1, #0x40]
008bb516  83 b0                                            sub sp, #0xc
008bb518  19 1c                                            adds r1, r3, #0
008bb51a  d2 1a                                            subs r2, r2, r3
008bb51c  92 10                                            asrs r2, r2, #2
008bb51e  92 00                                            lsls r2, r2, #2
008bb520  9a 18                                            adds r2, r3, r2
008bb522  01 ab                                            add r3, sp, #4
008bb524  ea f7 c0 fb                                      bl #0x8a5ca8
008bb528  03 b0                                            add sp, #0xc
008bb52a  00 bd                                            pop {pc}

; FUNCTION 0x008bba5c, declared_size=20, range_size=20, mode=thumb
; class-group: std::priv
; alias: _ZNSt4priv22__write_formatted_timeERNS_16__basic_iostringIwEERKSt5ctypeIwEccRKNS_11_WTime_InfoEPK2tm
; demangled: std::priv::__write_formatted_time(std::priv::__basic_iostring<wchar_t>&, std::ctype<wchar_t> const&, char, char, std::priv::_WTime_Info const&, tm const*)
; decoder-mode: thumb
008bba5c  10 b5                                            push {r4, lr}
008bba5e  82 b0                                            sub sp, #8
008bba60  04 9c                                            ldr r4, [sp, #0x10]
008bba62  00 94                                            str r4, [sp]
008bba64  05 9c                                            ldr r4, [sp, #0x14]
008bba66  01 94                                            str r4, [sp, #4]
008bba68  ff f7 60 fd                                      bl #0x8bb52c
008bba6c  02 b0                                            add sp, #8
008bba6e  10 bd                                            pop {r4, pc}

; FUNCTION 0x008bc310, declared_size=20, range_size=20, mode=thumb
; class-group: std::priv
; alias: _ZNSt4priv22__write_formatted_timeERNS_16__basic_iostringIcEERKSt5ctypeIcEccRKNS_10_Time_InfoEPK2tm
; demangled: std::priv::__write_formatted_time(std::priv::__basic_iostring<char>&, std::ctype<char> const&, char, char, std::priv::_Time_Info const&, tm const*)
; decoder-mode: thumb
008bc310  10 b5                                            push {r4, lr}
008bc312  82 b0                                            sub sp, #8
008bc314  04 9c                                            ldr r4, [sp, #0x10]
008bc316  00 94                                            str r4, [sp]
008bc318  05 9c                                            ldr r4, [sp, #0x14]
008bc31a  01 94                                            str r4, [sp, #4]
008bc31c  ff f7 d2 fc                                      bl #0x8bbcc4
008bc320  02 b0                                            add sp, #8
008bc322  10 bd                                            pop {r4, pc}

; FUNCTION 0x008bc384, declared_size=60, range_size=60, mode=thumb
; class-group: std::priv
; alias: _ZNSt4privL19_Init_timeinfo_baseERNS_15_Time_Info_BaseE
; demangled: std::priv::_Init_timeinfo_base(std::priv::_Time_Info_Base&)
; decoder-mode: thumb
008bc384  70 b5                                            push {r4, r5, r6, lr}
008bc386  0c 49                                            ldr r1, [pc, #0x30]
008bc388  0c 4c                                            ldr r4, [pc, #0x30]
008bc38a  05 1c                                            adds r5, r0, #0
008bc38c  79 44                                            add r1, pc
008bc38e  7c 44                                            add r4, pc
008bc390  0a 1c                                            adds r2, r1, #0
008bc392  08 32                                            adds r2, #8
008bc394  26 1c                                            adds r6, r4, #0
008bc396  54 f6 24 e3                                      blx #0x3109e0
008bc39a  08 36                                            adds r6, #8
008bc39c  28 1c                                            adds r0, r5, #0
008bc39e  32 1c                                            adds r2, r6, #0
008bc3a0  21 1c                                            adds r1, r4, #0
008bc3a2  18 30                                            adds r0, #0x18
008bc3a4  54 f6 1c e3                                      blx #0x3109e0
008bc3a8  28 1c                                            adds r0, r5, #0
008bc3aa  32 1c                                            adds r2, r6, #0
008bc3ac  21 1c                                            adds r1, r4, #0
008bc3ae  30 30                                            adds r0, #0x30
008bc3b0  54 f6 16 e3                                      blx #0x3109e0
008bc3b4  70 bd                                            pop {r4, r5, r6, pc}
008bc3b6  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008bc3b8  98 99 05 00 8a 99 05 00                          .byte 0x98, 0x99, 0x05, 0x00, 0x8a, 0x99, 0x05, 0x00

; FUNCTION 0x008bc3c0, declared_size=196, range_size=196, mode=thumb
; class-group: std::priv
; alias: _ZNSt4privL14_Init_timeinfoERNS_11_WTime_InfoE
; demangled: std::priv::_Init_timeinfo(std::priv::_WTime_Info&)
; decoder-mode: thumb
008bc3c0  f0 b5                                            push {r4, r5, r6, r7, lr}
008bc3c2  47 46                                            mov r7, r8
008bc3c4  80 b4                                            push {r7}
008bc3c6  2a 4a                                            ldr r2, [pc, #0xa8]
008bc3c8  06 1c                                            adds r6, r0, #0
008bc3ca  00 24                                            movs r4, #0
008bc3cc  90 46                                            mov r8, r2
008bc3ce  f8 44                                            add r8, pc
008bc3d0  e7 00                                            lsls r7, r4, #3
008bc3d2  3d 1b                                            subs r5, r7, r4
008bc3d4  ed 00                                            lsls r5, r5, #3
008bc3d6  45 44                                            add r5, r8
008bc3d8  28 1c                                            adds r0, r5, #0
008bc3da  52 f6 56 e4                                      blx #0x30ec88
008bc3de  3f 19                                            adds r7, r7, r4
008bc3e0  ff 00                                            lsls r7, r7, #3
008bc3e2  78 37                                            adds r7, #0x78
008bc3e4  82 00                                            lsls r2, r0, #2
008bc3e6  f7 19                                            adds r7, r6, r7
008bc3e8  aa 18                                            adds r2, r5, r2
008bc3ea  38 1c                                            adds r0, r7, #0
008bc3ec  29 1c                                            adds r1, r5, #0
008bc3ee  01 34                                            adds r4, #1
008bc3f0  5f f6 a8 e6                                      blx #0x31c144
008bc3f4  0e 2c                                            cmp r4, #0xe
008bc3f6  eb d1                                            bne #0x8bc3d0
008bc3f8  1e 4f                                            ldr r7, [pc, #0x78]
008bc3fa  00 24                                            movs r4, #0
008bc3fc  7f 44                                            add r7, pc
008bc3fe  10 37                                            adds r7, #0x10
008bc400  65 00                                            lsls r5, r4, #1
008bc402  2d 19                                            adds r5, r5, r4
008bc404  6d 01                                            lsls r5, r5, #5
008bc406  7d 19                                            adds r5, r7, r5
008bc408  28 1c                                            adds r0, r5, #0
008bc40a  52 f6 3e e4                                      blx #0x30ec88
008bc40e  e3 00                                            lsls r3, r4, #3
008bc410  1b 19                                            adds r3, r3, r4
008bc412  8d 22                                            movs r2, #0x8d
008bc414  d2 00                                            lsls r2, r2, #3
008bc416  db 00                                            lsls r3, r3, #3
008bc418  9b 18                                            adds r3, r3, r2
008bc41a  f3 18                                            adds r3, r6, r3
008bc41c  82 00                                            lsls r2, r0, #2
008bc41e  aa 18                                            adds r2, r5, r2
008bc420  18 1c                                            adds r0, r3, #0
008bc422  29 1c                                            adds r1, r5, #0
008bc424  01 34                                            adds r4, #1
008bc426  5f f6 8e e6                                      blx #0x31c144
008bc42a  18 2c                                            cmp r4, #0x18
008bc42c  e8 d1                                            bne #0x8bc400
008bc42e  12 4c                                            ldr r4, [pc, #0x48]
008bc430  7c 44                                            add r4, pc
008bc432  20 1c                                            adds r0, r4, #0
008bc434  52 f6 28 e4                                      blx #0x30ec88
008bc438  10 4a                                            ldr r2, [pc, #0x40]
008bc43a  21 1c                                            adds r1, r4, #0
008bc43c  b3 18                                            adds r3, r6, r2
008bc43e  82 00                                            lsls r2, r0, #2
008bc440  12 19                                            adds r2, r2, r4
008bc442  0f 4c                                            ldr r4, [pc, #0x3c]
008bc444  18 1c                                            adds r0, r3, #0
008bc446  5f f6 7e e6                                      blx #0x31c144
008bc44a  7c 44                                            add r4, pc
008bc44c  20 1c                                            adds r0, r4, #0
008bc44e  52 f6 1c e4                                      blx #0x30ec88
008bc452  b7 22                                            movs r2, #0xb7
008bc454  12 01                                            lsls r2, r2, #4
008bc456  b3 18                                            adds r3, r6, r2
008bc458  82 00                                            lsls r2, r0, #2
008bc45a  12 19                                            adds r2, r2, r4
008bc45c  18 1c                                            adds r0, r3, #0
008bc45e  21 1c                                            adds r1, r4, #0
008bc460  5f f6 70 e6                                      blx #0x31c144
008bc464  30 1c                                            adds r0, r6, #0
008bc466  ff f7 8d ff                                      bl #0x8bc384
008bc46a  04 bc                                            pop {r2}
008bc46c  90 46                                            mov r8, r2
008bc46e  f0 bd                                            pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
008bc470  1a a1 05 00 ec a3 05 00 08 b0 05 00 28 0b 00 00  .byte 0x1a, 0xa1, 0x05, 0x00, 0xec, 0xa3, 0x05, 0x00, 0x08, 0xb0, 0x05, 0x00, 0x28, 0x0b, 0x00, 0x00
008bc480  fa af 05 00                                      .byte 0xfa, 0xaf, 0x05, 0x00

; FUNCTION 0x008bc4bc, declared_size=164, range_size=164, mode=thumb
; class-group: std::priv
; alias: _ZNSt4privL14_Init_timeinfoERNS_10_Time_InfoE
; demangled: std::priv::_Init_timeinfo(std::priv::_Time_Info&)
; decoder-mode: thumb
008bc4bc  f0 b5                                            push {r4, r5, r6, r7, lr}
008bc4be  47 46                                            mov r7, r8
008bc4c0  80 b4                                            push {r7}
008bc4c2  23 4e                                            ldr r6, [pc, #0x8c]
008bc4c4  07 1c                                            adds r7, r0, #0
008bc4c6  00 24                                            movs r4, #0
008bc4c8  7e 44                                            add r6, pc
008bc4ca  10 36                                            adds r6, #0x10
008bc4cc  e5 00                                            lsls r5, r4, #3
008bc4ce  2d 1b                                            subs r5, r5, r4
008bc4d0  6d 00                                            lsls r5, r5, #1
008bc4d2  75 19                                            adds r5, r6, r5
008bc4d4  28 1c                                            adds r0, r5, #0
008bc4d6  51 f6 be e4                                      blx #0x30de54
008bc4da  02 1c                                            adds r2, r0, #0
008bc4dc  60 00                                            lsls r0, r4, #1
008bc4de  00 19                                            adds r0, r0, r4
008bc4e0  c0 00                                            lsls r0, r0, #3
008bc4e2  78 30                                            adds r0, #0x78
008bc4e4  38 18                                            adds r0, r7, r0
008bc4e6  aa 18                                            adds r2, r5, r2
008bc4e8  29 1c                                            adds r1, r5, #0
008bc4ea  01 34                                            adds r4, #1
008bc4ec  54 f6 78 e2                                      blx #0x3109e0
008bc4f0  0e 2c                                            cmp r4, #0xe
008bc4f2  eb d1                                            bne #0x8bc4cc
008bc4f4  17 4b                                            ldr r3, [pc, #0x5c]
008bc4f6  00 24                                            movs r4, #0
008bc4f8  7b 44                                            add r3, pc
008bc4fa  54 33                                            adds r3, #0x54
008bc4fc  98 46                                            mov r8, r3
008bc4fe  66 00                                            lsls r6, r4, #1
008bc500  36 19                                            adds r6, r6, r4
008bc502  43 46                                            mov r3, r8
008bc504  f6 00                                            lsls r6, r6, #3
008bc506  9d 19                                            adds r5, r3, r6
008bc508  28 1c                                            adds r0, r5, #0
008bc50a  51 f6 a4 e4                                      blx #0x30de54
008bc50e  c9 36                                            adds r6, #0xc9
008bc510  ff 36                                            adds r6, #0xff
008bc512  be 19                                            adds r6, r7, r6
008bc514  2a 18                                            adds r2, r5, r0
008bc516  29 1c                                            adds r1, r5, #0
008bc518  30 1c                                            adds r0, r6, #0
008bc51a  01 34                                            adds r4, #1
008bc51c  54 f6 60 e2                                      blx #0x3109e0
008bc520  18 2c                                            cmp r4, #0x18
008bc522  ec d1                                            bne #0x8bc4fe
008bc524  0c 49                                            ldr r1, [pc, #0x30]
008bc526  81 23                                            movs r3, #0x81
008bc528  db 00                                            lsls r3, r3, #3
008bc52a  79 44                                            add r1, pc
008bc52c  f8 18                                            adds r0, r7, r3
008bc52e  8a 1c                                            adds r2, r1, #2
008bc530  54 f6 56 e2                                      blx #0x3109e0
008bc534  09 49                                            ldr r1, [pc, #0x24]
008bc536  84 23                                            movs r3, #0x84
008bc538  db 00                                            lsls r3, r3, #3
008bc53a  79 44                                            add r1, pc
008bc53c  f8 18                                            adds r0, r7, r3
008bc53e  8a 1c                                            adds r2, r1, #2
008bc540  54 f6 4e e2                                      blx #0x3109e0
008bc544  38 1c                                            adds r0, r7, #0
008bc546  ff f7 1d ff                                      bl #0x8bc384
008bc54a  04 bc                                            pop {r2}
008bc54c  90 46                                            mov r8, r2
008bc54e  f0 bd                                            pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
008bc550  20 ac 05 00 70 ac 05 00 06 98 05 00 fa 97 05 00  .byte 0x20, 0xac, 0x05, 0x00, 0x70, 0xac, 0x05, 0x00, 0x06, 0x98, 0x05, 0x00, 0xfa, 0x97, 0x05, 0x00

; FUNCTION 0x008bc598, declared_size=244, range_size=244, mode=thumb
; class-group: std::priv
; alias: _ZNSt4privL19_Init_timeinfo_baseERNS_15_Time_Info_BaseEP12_Locale_time
; demangled: std::priv::_Init_timeinfo_base(std::priv::_Time_Info_Base&, _Locale_time*)
; decoder-mode: thumb
008bc598  70 b5                                            push {r4, r5, r6, lr}
008bc59a  04 1c                                            adds r4, r0, #0
008bc59c  08 1c                                            adds r0, r1, #0
008bc59e  0d 1c                                            adds r5, r1, #0
008bc5a0  fa f7 04 fb                                      bl #0x8b6bac
008bc5a4  06 1c                                            adds r6, r0, #0
008bc5a6  51 f6 56 e4                                      blx #0x30de54
008bc5aa  31 1c                                            adds r1, r6, #0
008bc5ac  32 18                                            adds r2, r6, r0
008bc5ae  20 1c                                            adds r0, r4, #0
008bc5b0  54 f6 16 e2                                      blx #0x3109e0
008bc5b4  2f 49                                            ldr r1, [pc, #0xbc]
008bc5b6  20 1c                                            adds r0, r4, #0
008bc5b8  79 44                                            add r1, pc
008bc5ba  57 f6 46 e3                                      blx #0x313c48
008bc5be  00 28                                            cmp r0, #0
008bc5c0  4f d1                                            bne #0x8bc662
008bc5c2  2d 49                                            ldr r1, [pc, #0xb4]
008bc5c4  20 1c                                            adds r0, r4, #0
008bc5c6  79 44                                            add r1, pc
008bc5c8  57 f6 3e e3                                      blx #0x313c48
008bc5cc  00 28                                            cmp r0, #0
008bc5ce  40 d1                                            bne #0x8bc652
008bc5d0  2a 49                                            ldr r1, [pc, #0xa8]
008bc5d2  20 1c                                            adds r0, r4, #0
008bc5d4  79 44                                            add r1, pc
008bc5d6  57 f6 38 e3                                      blx #0x313c48
008bc5da  00 28                                            cmp r0, #0
008bc5dc  05 d0                                            beq #0x8bc5ea
008bc5de  28 49                                            ldr r1, [pc, #0xa0]
008bc5e0  20 1c                                            adds r0, r4, #0
008bc5e2  79 44                                            add r1, pc
008bc5e4  4a 1d                                            adds r2, r1, #5
008bc5e6  54 f6 fc e1                                      blx #0x3109e0
008bc5ea  28 1c                                            adds r0, r5, #0
008bc5ec  fa f7 d8 fa                                      bl #0x8b6ba0
008bc5f0  06 1c                                            adds r6, r0, #0
008bc5f2  51 f6 30 e4                                      blx #0x30de54
008bc5f6  23 1c                                            adds r3, r4, #0
008bc5f8  18 33                                            adds r3, #0x18
008bc5fa  32 18                                            adds r2, r6, r0
008bc5fc  31 1c                                            adds r1, r6, #0
008bc5fe  18 1c                                            adds r0, r3, #0
008bc600  54 f6 ee e1                                      blx #0x3109e0
008bc604  28 1c                                            adds r0, r5, #0
008bc606  fa f7 c5 fa                                      bl #0x8b6b94
008bc60a  06 1c                                            adds r6, r0, #0
008bc60c  51 f6 22 e4                                      blx #0x30de54
008bc610  23 1c                                            adds r3, r4, #0
008bc612  30 33                                            adds r3, #0x30
008bc614  32 18                                            adds r2, r6, r0
008bc616  31 1c                                            adds r1, r6, #0
008bc618  18 1c                                            adds r0, r3, #0
008bc61a  54 f6 e2 e1                                      blx #0x3109e0
008bc61e  28 1c                                            adds r0, r5, #0
008bc620  fa f7 d0 fa                                      bl #0x8b6bc4
008bc624  06 1c                                            adds r6, r0, #0
008bc626  51 f6 16 e4                                      blx #0x30de54
008bc62a  23 1c                                            adds r3, r4, #0
008bc62c  48 33                                            adds r3, #0x48
008bc62e  32 18                                            adds r2, r6, r0
008bc630  31 1c                                            adds r1, r6, #0
008bc632  18 1c                                            adds r0, r3, #0
008bc634  54 f6 d4 e1                                      blx #0x3109e0
008bc638  28 1c                                            adds r0, r5, #0
008bc63a  fa f7 bd fa                                      bl #0x8b6bb8
008bc63e  05 1c                                            adds r5, r0, #0
008bc640  51 f6 08 e4                                      blx #0x30de54
008bc644  60 34                                            adds r4, #0x60
008bc646  2a 18                                            adds r2, r5, r0
008bc648  29 1c                                            adds r1, r5, #0
008bc64a  20 1c                                            adds r0, r4, #0
008bc64c  54 f6 c8 e1                                      blx #0x3109e0
008bc650  70 bd                                            pop {r4, r5, r6, pc}
008bc652  0c 49                                            ldr r1, [pc, #0x30]
008bc654  20 1c                                            adds r0, r4, #0
008bc656  79 44                                            add r1, pc
008bc658  0a 1c                                            adds r2, r1, #0
008bc65a  0b 32                                            adds r2, #0xb
008bc65c  54 f6 c0 e1                                      blx #0x3109e0
008bc660  c3 e7                                            b #0x8bc5ea
008bc662  09 49                                            ldr r1, [pc, #0x24]
008bc664  20 1c                                            adds r0, r4, #0
008bc666  79 44                                            add r1, pc
008bc668  0a 1c                                            adds r2, r1, #0
008bc66a  08 32                                            adds r2, #8
008bc66c  54 f6 b8 e1                                      blx #0x3109e0
008bc670  bb e7                                            b #0x8bc5ea
008bc672  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008bc674  6c ae 05 00 62 ae 05 00 58 ae 05 00 2e ae 05 00  .byte 0x6c, 0xae, 0x05, 0x00, 0x62, 0xae, 0x05, 0x00, 0x58, 0xae, 0x05, 0x00, 0x2e, 0xae, 0x05, 0x00
008bc684  c2 ad 05 00 be 96 05 00                          .byte 0xc2, 0xad, 0x05, 0x00, 0xbe, 0x96, 0x05, 0x00

; FUNCTION 0x008bc68c, declared_size=312, range_size=312, mode=thumb
; class-group: std::priv
; alias: _ZNSt4privL14_Init_timeinfoERNS_11_WTime_InfoEP12_Locale_time
; demangled: std::priv::_Init_timeinfo(std::priv::_WTime_Info&, _Locale_time*)
; decoder-mode: thumb
008bc68c  f0 b5                                            push {r4, r5, r6, r7, lr}
008bc68e  47 46                                            mov r7, r8
008bc690  80 b4                                            push {r7}
008bc692  4a 4c                                            ldr r4, [pc, #0x128]
008bc694  05 1c                                            adds r5, r0, #0
008bc696  0f 1c                                            adds r7, r1, #0
008bc698  a5 44                                            add sp, r4
008bc69a  00 24                                            movs r4, #0
008bc69c  21 1c                                            adds r1, r4, #0
008bc69e  6a 46                                            mov r2, sp
008bc6a0  80 23                                            movs r3, #0x80
008bc6a2  38 1c                                            adds r0, r7, #0
008bc6a4  fa f7 b8 fa                                      bl #0x8b6c18
008bc6a8  06 1c                                            adds r6, r0, #0
008bc6aa  52 f6 ee e2                                      blx #0x30ec88
008bc6ae  e3 00                                            lsls r3, r4, #3
008bc6b0  1b 19                                            adds r3, r3, r4
008bc6b2  db 00                                            lsls r3, r3, #3
008bc6b4  78 33                                            adds r3, #0x78
008bc6b6  eb 18                                            adds r3, r5, r3
008bc6b8  82 00                                            lsls r2, r0, #2
008bc6ba  b2 18                                            adds r2, r6, r2
008bc6bc  18 1c                                            adds r0, r3, #0
008bc6be  31 1c                                            adds r1, r6, #0
008bc6c0  01 34                                            adds r4, #1
008bc6c2  5f f6 40 e5                                      blx #0x31c144
008bc6c6  07 2c                                            cmp r4, #7
008bc6c8  e8 d1                                            bne #0x8bc69c
008bc6ca  00 24                                            movs r4, #0
008bc6cc  21 1c                                            adds r1, r4, #0
008bc6ce  6a 46                                            mov r2, sp
008bc6d0  80 23                                            movs r3, #0x80
008bc6d2  38 1c                                            adds r0, r7, #0
008bc6d4  fa f7 98 fa                                      bl #0x8b6c08
008bc6d8  06 1c                                            adds r6, r0, #0
008bc6da  52 f6 d6 e2                                      blx #0x30ec88
008bc6de  e3 00                                            lsls r3, r4, #3
008bc6e0  1b 19                                            adds r3, r3, r4
008bc6e2  9c 22                                            movs r2, #0x9c
008bc6e4  92 00                                            lsls r2, r2, #2
008bc6e6  db 00                                            lsls r3, r3, #3
008bc6e8  9b 18                                            adds r3, r3, r2
008bc6ea  eb 18                                            adds r3, r5, r3
008bc6ec  82 00                                            lsls r2, r0, #2
008bc6ee  b2 18                                            adds r2, r6, r2
008bc6f0  18 1c                                            adds r0, r3, #0
008bc6f2  31 1c                                            adds r1, r6, #0
008bc6f4  01 34                                            adds r4, #1
008bc6f6  5f f6 26 e5                                      blx #0x31c144
008bc6fa  07 2c                                            cmp r4, #7
008bc6fc  e6 d1                                            bne #0x8bc6cc
008bc6fe  00 24                                            movs r4, #0
008bc700  21 1c                                            adds r1, r4, #0
008bc702  6a 46                                            mov r2, sp
008bc704  80 23                                            movs r3, #0x80
008bc706  38 1c                                            adds r0, r7, #0
008bc708  fa f7 76 fa                                      bl #0x8b6bf8
008bc70c  06 1c                                            adds r6, r0, #0
008bc70e  52 f6 bc e2                                      blx #0x30ec88
008bc712  e3 00                                            lsls r3, r4, #3
008bc714  1b 19                                            adds r3, r3, r4
008bc716  8d 22                                            movs r2, #0x8d
008bc718  d2 00                                            lsls r2, r2, #3
008bc71a  db 00                                            lsls r3, r3, #3
008bc71c  9b 18                                            adds r3, r3, r2
008bc71e  eb 18                                            adds r3, r5, r3
008bc720  82 00                                            lsls r2, r0, #2
008bc722  b2 18                                            adds r2, r6, r2
008bc724  18 1c                                            adds r0, r3, #0
008bc726  31 1c                                            adds r1, r6, #0
008bc728  01 34                                            adds r4, #1
008bc72a  5f f6 0c e5                                      blx #0x31c144
008bc72e  0c 2c                                            cmp r4, #0xc
008bc730  e6 d1                                            bne #0x8bc700
008bc732  00 24                                            movs r4, #0
008bc734  21 1c                                            adds r1, r4, #0
008bc736  6a 46                                            mov r2, sp
008bc738  80 23                                            movs r3, #0x80
008bc73a  38 1c                                            adds r0, r7, #0
008bc73c  fa f7 54 fa                                      bl #0x8b6be8
008bc740  06 1c                                            adds r6, r0, #0
008bc742  52 f6 a2 e2                                      blx #0x30ec88
008bc746  e3 00                                            lsls r3, r4, #3
008bc748  1b 19                                            adds r3, r3, r4
008bc74a  f9 22                                            movs r2, #0xf9
008bc74c  d2 00                                            lsls r2, r2, #3
008bc74e  db 00                                            lsls r3, r3, #3
008bc750  9b 18                                            adds r3, r3, r2
008bc752  eb 18                                            adds r3, r5, r3
008bc754  82 00                                            lsls r2, r0, #2
008bc756  b2 18                                            adds r2, r6, r2
008bc758  18 1c                                            adds r0, r3, #0
008bc75a  31 1c                                            adds r1, r6, #0
008bc75c  01 34                                            adds r4, #1
008bc75e  5f f6 f2 e4                                      blx #0x31c144
008bc762  0c 2c                                            cmp r4, #0xc
008bc764  e6 d1                                            bne #0x8bc734
008bc766  69 46                                            mov r1, sp
008bc768  38 1c                                            adds r0, r7, #0
008bc76a  80 22                                            movs r2, #0x80
008bc76c  fa f7 5c fa                                      bl #0x8b6c28
008bc770  04 1c                                            adds r4, r0, #0
008bc772  52 f6 8a e2                                      blx #0x30ec88
008bc776  12 4a                                            ldr r2, [pc, #0x48]
008bc778  21 1c                                            adds r1, r4, #0
008bc77a  ab 18                                            adds r3, r5, r2
008bc77c  82 00                                            lsls r2, r0, #2
008bc77e  a2 18                                            adds r2, r4, r2
008bc780  18 1c                                            adds r0, r3, #0
008bc782  5f f6 e0 e4                                      blx #0x31c144
008bc786  69 46                                            mov r1, sp
008bc788  38 1c                                            adds r0, r7, #0
008bc78a  80 22                                            movs r2, #0x80
008bc78c  fa f7 52 fa                                      bl #0x8b6c34
008bc790  04 1c                                            adds r4, r0, #0
008bc792  52 f6 7a e2                                      blx #0x30ec88
008bc796  b7 22                                            movs r2, #0xb7
008bc798  12 01                                            lsls r2, r2, #4
008bc79a  ab 18                                            adds r3, r5, r2
008bc79c  82 00                                            lsls r2, r0, #2
008bc79e  a2 18                                            adds r2, r4, r2
008bc7a0  18 1c                                            adds r0, r3, #0
008bc7a2  21 1c                                            adds r1, r4, #0
008bc7a4  5f f6 ce e4                                      blx #0x31c144
008bc7a8  28 1c                                            adds r0, r5, #0
008bc7aa  39 1c                                            adds r1, r7, #0
008bc7ac  ff f7 f4 fe                                      bl #0x8bc598
008bc7b0  80 23                                            movs r3, #0x80
008bc7b2  9b 00                                            lsls r3, r3, #2
008bc7b4  9d 44                                            add sp, r3
008bc7b6  04 bc                                            pop {r2}
008bc7b8  90 46                                            mov r8, r2
008bc7ba  f0 bd                                            pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
008bc7bc  00 fe ff ff 28 0b 00 00                          .byte 0x00, 0xfe, 0xff, 0xff, 0x28, 0x0b, 0x00, 0x00

; FUNCTION 0x008bc90c, declared_size=248, range_size=248, mode=thumb
; class-group: std::priv
; alias: _ZNSt4privL14_Init_timeinfoERNS_10_Time_InfoEP12_Locale_time
; demangled: std::priv::_Init_timeinfo(std::priv::_Time_Info&, _Locale_time*)
; decoder-mode: thumb
008bc90c  f8 b5                                            push {r3, r4, r5, r6, r7, lr}
008bc90e  05 1c                                            adds r5, r0, #0
008bc910  0f 1c                                            adds r7, r1, #0
008bc912  00 24                                            movs r4, #0
008bc914  21 1c                                            adds r1, r4, #0
008bc916  38 1c                                            adds r0, r7, #0
008bc918  fa f7 34 f9                                      bl #0x8b6b84
008bc91c  06 1c                                            adds r6, r0, #0
008bc91e  51 f6 9a e2                                      blx #0x30de54
008bc922  02 1c                                            adds r2, r0, #0
008bc924  60 00                                            lsls r0, r4, #1
008bc926  00 19                                            adds r0, r0, r4
008bc928  c0 00                                            lsls r0, r0, #3
008bc92a  78 30                                            adds r0, #0x78
008bc92c  28 18                                            adds r0, r5, r0
008bc92e  b2 18                                            adds r2, r6, r2
008bc930  31 1c                                            adds r1, r6, #0
008bc932  01 34                                            adds r4, #1
008bc934  54 f6 54 e0                                      blx #0x3109e0
008bc938  07 2c                                            cmp r4, #7
008bc93a  eb d1                                            bne #0x8bc914
008bc93c  00 24                                            movs r4, #0
008bc93e  21 1c                                            adds r1, r4, #0
008bc940  38 1c                                            adds r0, r7, #0
008bc942  fa f7 17 f9                                      bl #0x8b6b74
008bc946  06 1c                                            adds r6, r0, #0
008bc948  51 f6 84 e2                                      blx #0x30de54
008bc94c  02 1c                                            adds r2, r0, #0
008bc94e  60 00                                            lsls r0, r4, #1
008bc950  00 19                                            adds r0, r0, r4
008bc952  c0 00                                            lsls r0, r0, #3
008bc954  21 30                                            adds r0, #0x21
008bc956  ff 30                                            adds r0, #0xff
008bc958  28 18                                            adds r0, r5, r0
008bc95a  b2 18                                            adds r2, r6, r2
008bc95c  31 1c                                            adds r1, r6, #0
008bc95e  01 34                                            adds r4, #1
008bc960  54 f6 3e e0                                      blx #0x3109e0
008bc964  07 2c                                            cmp r4, #7
008bc966  ea d1                                            bne #0x8bc93e
008bc968  00 24                                            movs r4, #0
008bc96a  21 1c                                            adds r1, r4, #0
008bc96c  38 1c                                            adds r0, r7, #0
008bc96e  fa f7 f9 f8                                      bl #0x8b6b64
008bc972  06 1c                                            adds r6, r0, #0
008bc974  51 f6 6e e2                                      blx #0x30de54
008bc978  02 1c                                            adds r2, r0, #0
008bc97a  60 00                                            lsls r0, r4, #1
008bc97c  00 19                                            adds r0, r0, r4
008bc97e  c0 00                                            lsls r0, r0, #3
008bc980  c9 30                                            adds r0, #0xc9
008bc982  ff 30                                            adds r0, #0xff
008bc984  28 18                                            adds r0, r5, r0
008bc986  b2 18                                            adds r2, r6, r2
008bc988  31 1c                                            adds r1, r6, #0
008bc98a  01 34                                            adds r4, #1
008bc98c  54 f6 28 e0                                      blx #0x3109e0
008bc990  0c 2c                                            cmp r4, #0xc
008bc992  ea d1                                            bne #0x8bc96a
008bc994  00 24                                            movs r4, #0
008bc996  21 1c                                            adds r1, r4, #0
008bc998  38 1c                                            adds r0, r7, #0
008bc99a  fa f7 db f8                                      bl #0x8b6b54
008bc99e  06 1c                                            adds r6, r0, #0
008bc9a0  51 f6 58 e2                                      blx #0x30de54
008bc9a4  02 1c                                            adds r2, r0, #0
008bc9a6  60 00                                            lsls r0, r4, #1
008bc9a8  00 19                                            adds r0, r0, r4
008bc9aa  ba 23                                            movs r3, #0xba
008bc9ac  9b 00                                            lsls r3, r3, #2
008bc9ae  c0 00                                            lsls r0, r0, #3
008bc9b0  c0 18                                            adds r0, r0, r3
008bc9b2  28 18                                            adds r0, r5, r0
008bc9b4  b2 18                                            adds r2, r6, r2
008bc9b6  31 1c                                            adds r1, r6, #0
008bc9b8  01 34                                            adds r4, #1
008bc9ba  54 f6 12 e0                                      blx #0x3109e0
008bc9be  0c 2c                                            cmp r4, #0xc
008bc9c0  e9 d1                                            bne #0x8bc996
008bc9c2  38 1c                                            adds r0, r7, #0
008bc9c4  fa f7 04 f9                                      bl #0x8b6bd0
008bc9c8  04 1c                                            adds r4, r0, #0
008bc9ca  51 f6 44 e2                                      blx #0x30de54
008bc9ce  81 22                                            movs r2, #0x81
008bc9d0  d2 00                                            lsls r2, r2, #3
008bc9d2  ab 18                                            adds r3, r5, r2
008bc9d4  21 1c                                            adds r1, r4, #0
008bc9d6  22 18                                            adds r2, r4, r0
008bc9d8  18 1c                                            adds r0, r3, #0
008bc9da  54 f6 02 e0                                      blx #0x3109e0
008bc9de  38 1c                                            adds r0, r7, #0
008bc9e0  fa f7 fc f8                                      bl #0x8b6bdc
008bc9e4  04 1c                                            adds r4, r0, #0
008bc9e6  51 f6 36 e2                                      blx #0x30de54
008bc9ea  84 22                                            movs r2, #0x84
008bc9ec  d2 00                                            lsls r2, r2, #3
008bc9ee  ab 18                                            adds r3, r5, r2
008bc9f0  21 1c                                            adds r1, r4, #0
008bc9f2  22 18                                            adds r2, r4, r0
008bc9f4  18 1c                                            adds r0, r3, #0
008bc9f6  53 f6 f4 e7                                      blx #0x3109e0
008bc9fa  28 1c                                            adds r0, r5, #0
008bc9fc  39 1c                                            adds r1, r7, #0
008bc9fe  ff f7 cb fd                                      bl #0x8bc598
008bca02  f8 bd                                            pop {r3, r4, r5, r6, r7, pc}

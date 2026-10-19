; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008a9b84, declared_size=380, range_size=380, mode=thumb
; class-group: unsigned int std::priv
; alias: _ZNSt4priv7__matchISt19istreambuf_iteratorIcSt11char_traitsIcEEPKSsEEjRT_S8_T0_S9_
; demangled: unsigned int std::priv::__match<std::istreambuf_iterator<char, std::char_traits<char> >, std::basic_string<char, std::char_traits<char>, std::allocator<char> > const*>(std::istreambuf_iterator<char, std::char_traits<char> >&, std::istreambuf_iterator<char, std::char_traits<char> >&, std::basic_string<char, std::char_traits<char>, std::allocator<char> > const*, std::basic_string<char, std::char_traits<char>, std::allocator<char> > const*)
; decoder-mode: thumb
008a9b84  f0 b5                                            push {r4, r5, r6, r7, lr}
008a9b86  5f 46                                            mov r7, fp
008a9b88  56 46                                            mov r6, sl
008a9b8a  4d 46                                            mov r5, sb
008a9b8c  44 46                                            mov r4, r8
008a9b8e  f0 b4                                            push {r4, r5, r6, r7}
008a9b90  8d b0                                            sub sp, #0x34
008a9b92  9b 1a                                            subs r3, r3, r2
008a9b94  03 92                                            str r2, [sp, #0xc]
008a9b96  59 4a                                            ldr r2, [pc, #0x164]
008a9b98  db 10                                            asrs r3, r3, #3
008a9b9a  81 46                                            mov sb, r0
008a9b9c  10 1c                                            adds r0, r2, #0
008a9b9e  58 43                                            muls r0, r3, r0
008a9ba0  04 91                                            str r1, [sp, #0x10]
008a9ba2  83 46                                            mov fp, r0
008a9ba4  05 1c                                            adds r5, r0, #0
008a9ba6  00 90                                            str r0, [sp]
008a9ba8  68 46                                            mov r0, sp
008a9baa  18 30                                            adds r0, #0x18
008a9bac  00 23                                            movs r3, #0
008a9bae  05 90                                            str r0, [sp, #0x14]
008a9bb0  04 99                                            ldr r1, [sp, #0x10]
008a9bb2  48 46                                            mov r0, sb
008a9bb4  06 93                                            str r3, [sp, #0x18]
008a9bb6  07 93                                            str r3, [sp, #0x1c]
008a9bb8  08 93                                            str r3, [sp, #0x20]
008a9bba  09 93                                            str r3, [sp, #0x24]
008a9bbc  0a 93                                            str r3, [sp, #0x28]
008a9bbe  0b 93                                            str r3, [sp, #0x2c]
008a9bc0  01 93                                            str r3, [sp, #4]
008a9bc2  9a 46                                            mov sl, r3
008a9bc4  ff f7 10 fd                                      bl #0x8a95e8
008a9bc8  00 28                                            cmp r0, #0
008a9bca  5f d1                                            bne #0x8a9c8c
008a9bcc  5a 46                                            mov r2, fp
008a9bce  02 92                                            str r2, [sp, #8]
008a9bd0  d3 45                                            cmp fp, sl
008a9bd2  45 dd                                            ble #0x8a9c60
008a9bd4  51 46                                            mov r1, sl
008a9bd6  05 98                                            ldr r0, [sp, #0x14]
008a9bd8  4f 00                                            lsls r7, r1, #1
008a9bda  03 9a                                            ldr r2, [sp, #0xc]
008a9bdc  57 44                                            add r7, sl
008a9bde  ff 00                                            lsls r7, r7, #3
008a9be0  06 1c                                            adds r6, r0, #0
008a9be2  54 46                                            mov r4, sl
008a9be4  d7 19                                            adds r7, r2, r7
008a9be6  56 44                                            add r6, sl
008a9be8  01 34                                            adds r4, #1
008a9bea  10 37                                            adds r7, #0x10
008a9bec  a8 46                                            mov r8, r5
008a9bee  09 e0                                            b #0x8a9c04
008a9bf0  aa 45                                            cmp sl, r5
008a9bf2  53 d0                                            beq #0x8a9c9c
008a9bf4  23 1c                                            adds r3, r4, #0
008a9bf6  45 46                                            mov r5, r8
008a9bf8  01 36                                            adds r6, #1
008a9bfa  01 34                                            adds r4, #1
008a9bfc  18 37                                            adds r7, #0x18
008a9bfe  9b 45                                            cmp fp, r3
008a9c00  2e dd                                            ble #0x8a9c60
008a9c02  a8 46                                            mov r8, r5
008a9c04  33 78                                            ldrb r3, [r6]
008a9c06  65 1e                                            subs r5, r4, #1
008a9c08  00 2b                                            cmp r3, #0
008a9c0a  f1 d1                                            bne #0x8a9bf0
008a9c0c  49 46                                            mov r1, sb
008a9c0e  8b 79                                            ldrb r3, [r1, #6]
008a9c10  00 2b                                            cmp r3, #0
008a9c12  45 d1                                            bne #0x8a9ca0
008a9c14  4a 46                                            mov r2, sb
008a9c16  10 68                                            ldr r0, [r2]
008a9c18  83 68                                            ldr r3, [r0, #8]
008a9c1a  c2 68                                            ldr r2, [r0, #0xc]
008a9c1c  93 42                                            cmp r3, r2
008a9c1e  56 d2                                            bhs #0x8a9cce
008a9c20  18 78                                            ldrb r0, [r3]
008a9c22  03 06                                            lsls r3, r0, #0x18
008a9c24  01 30                                            adds r0, #1
008a9c26  49 46                                            mov r1, sb
008a9c28  42 42                                            rsbs r2, r0, #0
008a9c2a  42 41                                            adcs r2, r0
008a9c2c  4a 71                                            strb r2, [r1, #5]
008a9c2e  1b 0e                                            lsrs r3, r3, #0x18
008a9c30  01 22                                            movs r2, #1
008a9c32  0b 71                                            strb r3, [r1, #4]
008a9c34  8a 71                                            strb r2, [r1, #6]
008a9c36  7a 68                                            ldr r2, [r7, #4]
008a9c38  01 98                                            ldr r0, [sp, #4]
008a9c3a  11 5c                                            ldrb r1, [r2, r0]
008a9c3c  99 42                                            cmp r1, r3
008a9c3e  35 d0                                            beq #0x8a9cac
008a9c40  aa 45                                            cmp sl, r5
008a9c42  3c d0                                            beq #0x8a9cbe
008a9c44  00 9b                                            ldr r3, [sp]
008a9c46  01 3b                                            subs r3, #1
008a9c48  00 93                                            str r3, [sp]
008a9c4a  00 2b                                            cmp r3, #0
008a9c4c  3d d0                                            beq #0x8a9cca
008a9c4e  01 20                                            movs r0, #1
008a9c50  23 1c                                            adds r3, r4, #0
008a9c52  30 70                                            strb r0, [r6]
008a9c54  45 46                                            mov r5, r8
008a9c56  01 36                                            adds r6, #1
008a9c58  01 34                                            adds r4, #1
008a9c5a  18 37                                            adds r7, #0x18
008a9c5c  9b 45                                            cmp fp, r3
008a9c5e  d0 dc                                            bgt #0x8a9c02
008a9c60  49 46                                            mov r1, sb
008a9c62  08 68                                            ldr r0, [r1]
008a9c64  83 68                                            ldr r3, [r0, #8]
008a9c66  c2 68                                            ldr r2, [r0, #0xc]
008a9c68  93 42                                            cmp r3, r2
008a9c6a  41 d2                                            bhs #0x8a9cf0
008a9c6c  01 33                                            adds r3, #1
008a9c6e  83 60                                            str r3, [r0, #8]
008a9c70  00 23                                            movs r3, #0
008a9c72  4a 46                                            mov r2, sb
008a9c74  93 71                                            strb r3, [r2, #6]
008a9c76  01 98                                            ldr r0, [sp, #4]
008a9c78  02 99                                            ldr r1, [sp, #8]
008a9c7a  01 30                                            adds r0, #1
008a9c7c  01 90                                            str r0, [sp, #4]
008a9c7e  8b 46                                            mov fp, r1
008a9c80  48 46                                            mov r0, sb
008a9c82  04 99                                            ldr r1, [sp, #0x10]
008a9c84  ff f7 b0 fc                                      bl #0x8a95e8
008a9c88  00 28                                            cmp r0, #0
008a9c8a  9f d0                                            beq #0x8a9bcc
008a9c8c  0d b0                                            add sp, #0x34
008a9c8e  28 1c                                            adds r0, r5, #0
008a9c90  3c bc                                            pop {r2, r3, r4, r5}
008a9c92  90 46                                            mov r8, r2
008a9c94  99 46                                            mov sb, r3
008a9c96  a2 46                                            mov sl, r4
008a9c98  ab 46                                            mov fp, r5
008a9c9a  f0 bd                                            pop {r4, r5, r6, r7, pc}
008a9c9c  a2 46                                            mov sl, r4
008a9c9e  a9 e7                                            b #0x8a9bf4
008a9ca0  7a 68                                            ldr r2, [r7, #4]
008a9ca2  01 98                                            ldr r0, [sp, #4]
008a9ca4  0b 79                                            ldrb r3, [r1, #4]
008a9ca6  11 5c                                            ldrb r1, [r2, r0]
008a9ca8  99 42                                            cmp r1, r3
008a9caa  c9 d1                                            bne #0x8a9c40
008a9cac  3b 68                                            ldr r3, [r7]
008a9cae  9b 1a                                            subs r3, r3, r2
008a9cb0  01 3b                                            subs r3, #1
008a9cb2  98 42                                            cmp r0, r3
008a9cb4  0f d0                                            beq #0x8a9cd6
008a9cb6  45 46                                            mov r5, r8
008a9cb8  02 94                                            str r4, [sp, #8]
008a9cba  23 1c                                            adds r3, r4, #0
008a9cbc  9c e7                                            b #0x8a9bf8
008a9cbe  00 9b                                            ldr r3, [sp]
008a9cc0  a2 46                                            mov sl, r4
008a9cc2  01 3b                                            subs r3, #1
008a9cc4  00 93                                            str r3, [sp]
008a9cc6  00 2b                                            cmp r3, #0
008a9cc8  c1 d1                                            bne #0x8a9c4e
008a9cca  45 46                                            mov r5, r8
008a9ccc  de e7                                            b #0x8a9c8c
008a9cce  03 68                                            ldr r3, [r0]
008a9cd0  1b 6a                                            ldr r3, [r3, #0x20]
008a9cd2  98 47                                            blx r3
008a9cd4  a5 e7                                            b #0x8a9c22
008a9cd6  01 21                                            movs r1, #1
008a9cd8  31 70                                            strb r1, [r6]
008a9cda  aa 45                                            cmp sl, r5
008a9cdc  0c d0                                            beq #0x8a9cf8
008a9cde  00 9a                                            ldr r2, [sp]
008a9ce0  01 3a                                            subs r2, #1
008a9ce2  00 92                                            str r2, [sp]
008a9ce4  00 2a                                            cmp r2, #0
008a9ce6  e7 d1                                            bne #0x8a9cb8
008a9ce8  48 46                                            mov r0, sb
008a9cea  fa f7 0b ff                                      bl #0x8a4b04
008a9cee  cd e7                                            b #0x8a9c8c
008a9cf0  03 68                                            ldr r3, [r0]
008a9cf2  5b 6a                                            ldr r3, [r3, #0x24]
008a9cf4  98 47                                            blx r3
008a9cf6  bb e7                                            b #0x8a9c70
008a9cf8  a2 46                                            mov sl, r4
008a9cfa  f0 e7                                            b #0x8a9cde
; mapping-symbol data/literal pool
008a9cfc  ab aa aa aa                                      .byte 0xab, 0xaa, 0xaa, 0xaa

; FUNCTION 0x008aa914, declared_size=388, range_size=388, mode=thumb
; class-group: unsigned int std::priv
; alias: _ZNSt4priv7__matchISt19istreambuf_iteratorIwSt11char_traitsIwEEPKSbIwS3_SaIwEEEEjRT_SA_T0_SB_
; demangled: unsigned int std::priv::__match<std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >, std::basic_string<wchar_t, std::char_traits<wchar_t>, std::allocator<wchar_t> > const*>(std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >&, std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >&, std::basic_string<wchar_t, std::char_traits<wchar_t>, std::allocator<wchar_t> > const*, std::basic_string<wchar_t, std::char_traits<wchar_t>, std::allocator<wchar_t> > const*)
; decoder-mode: thumb
008aa914  f0 b5                                            push {r4, r5, r6, r7, lr}
008aa916  5f 46                                            mov r7, fp
008aa918  56 46                                            mov r6, sl
008aa91a  4d 46                                            mov r5, sb
008aa91c  44 46                                            mov r4, r8
008aa91e  f0 b4                                            push {r4, r5, r6, r7}
008aa920  8f b0                                            sub sp, #0x3c
008aa922  9b 1a                                            subs r3, r3, r2
008aa924  05 92                                            str r2, [sp, #0x14]
008aa926  5b 4a                                            ldr r2, [pc, #0x16c]
008aa928  db 10                                            asrs r3, r3, #3
008aa92a  06 91                                            str r1, [sp, #0x18]
008aa92c  11 1c                                            adds r1, r2, #0
008aa92e  59 43                                            muls r1, r3, r1
008aa930  81 46                                            mov sb, r0
008aa932  8b 46                                            mov fp, r1
008aa934  0d 1c                                            adds r5, r1, #0
008aa936  01 91                                            str r1, [sp, #4]
008aa938  69 46                                            mov r1, sp
008aa93a  20 31                                            adds r1, #0x20
008aa93c  00 23                                            movs r3, #0
008aa93e  07 91                                            str r1, [sp, #0x1c]
008aa940  48 46                                            mov r0, sb
008aa942  06 99                                            ldr r1, [sp, #0x18]
008aa944  08 93                                            str r3, [sp, #0x20]
008aa946  09 93                                            str r3, [sp, #0x24]
008aa948  0a 93                                            str r3, [sp, #0x28]
008aa94a  0b 93                                            str r3, [sp, #0x2c]
008aa94c  0c 93                                            str r3, [sp, #0x30]
008aa94e  0d 93                                            str r3, [sp, #0x34]
008aa950  03 93                                            str r3, [sp, #0xc]
008aa952  9a 46                                            mov sl, r3
008aa954  ff f7 a8 ff                                      bl #0x8aa8a8
008aa958  00 28                                            cmp r0, #0
008aa95a  60 d1                                            bne #0x8aaa1e
008aa95c  5b 46                                            mov r3, fp
008aa95e  04 93                                            str r3, [sp, #0x10]
008aa960  d3 45                                            cmp fp, sl
008aa962  46 dd                                            ble #0x8aa9f2
008aa964  03 99                                            ldr r1, [sp, #0xc]
008aa966  53 46                                            mov r3, sl
008aa968  07 9a                                            ldr r2, [sp, #0x1c]
008aa96a  89 00                                            lsls r1, r1, #2
008aa96c  02 91                                            str r1, [sp, #8]
008aa96e  df 00                                            lsls r7, r3, #3
008aa970  05 99                                            ldr r1, [sp, #0x14]
008aa972  57 44                                            add r7, sl
008aa974  ff 00                                            lsls r7, r7, #3
008aa976  16 1c                                            adds r6, r2, #0
008aa978  54 46                                            mov r4, sl
008aa97a  cf 19                                            adds r7, r1, r7
008aa97c  56 44                                            add r6, sl
008aa97e  01 34                                            adds r4, #1
008aa980  40 37                                            adds r7, #0x40
008aa982  a8 46                                            mov r8, r5
008aa984  09 e0                                            b #0x8aa99a
008aa986  aa 45                                            cmp sl, r5
008aa988  51 d0                                            beq #0x8aaa2e
008aa98a  23 1c                                            adds r3, r4, #0
008aa98c  45 46                                            mov r5, r8
008aa98e  01 36                                            adds r6, #1
008aa990  01 34                                            adds r4, #1
008aa992  48 37                                            adds r7, #0x48
008aa994  9b 45                                            cmp fp, r3
008aa996  2c dd                                            ble #0x8aa9f2
008aa998  a8 46                                            mov r8, r5
008aa99a  33 78                                            ldrb r3, [r6]
008aa99c  65 1e                                            subs r5, r4, #1
008aa99e  00 2b                                            cmp r3, #0
008aa9a0  f1 d1                                            bne #0x8aa986
008aa9a2  4a 46                                            mov r2, sb
008aa9a4  53 7a                                            ldrb r3, [r2, #9]
008aa9a6  00 2b                                            cmp r3, #0
008aa9a8  43 d1                                            bne #0x8aaa32
008aa9aa  4b 46                                            mov r3, sb
008aa9ac  18 68                                            ldr r0, [r3]
008aa9ae  83 68                                            ldr r3, [r0, #8]
008aa9b0  c2 68                                            ldr r2, [r0, #0xc]
008aa9b2  93 42                                            cmp r3, r2
008aa9b4  56 d2                                            bhs #0x8aaa64
008aa9b6  18 68                                            ldr r0, [r3]
008aa9b8  42 1c                                            adds r2, r0, #1
008aa9ba  49 46                                            mov r1, sb
008aa9bc  53 42                                            rsbs r3, r2, #0
008aa9be  53 41                                            adcs r3, r2
008aa9c0  01 22                                            movs r2, #1
008aa9c2  48 60                                            str r0, [r1, #4]
008aa9c4  0b 72                                            strb r3, [r1, #8]
008aa9c6  4a 72                                            strb r2, [r1, #9]
008aa9c8  7b 68                                            ldr r3, [r7, #4]
008aa9ca  02 99                                            ldr r1, [sp, #8]
008aa9cc  5a 58                                            ldr r2, [r3, r1]
008aa9ce  82 42                                            cmp r2, r0
008aa9d0  35 d0                                            beq #0x8aaa3e
008aa9d2  aa 45                                            cmp sl, r5
008aa9d4  3e d0                                            beq #0x8aaa54
008aa9d6  01 9a                                            ldr r2, [sp, #4]
008aa9d8  01 3a                                            subs r2, #1
008aa9da  01 92                                            str r2, [sp, #4]
008aa9dc  00 2a                                            cmp r2, #0
008aa9de  3f d0                                            beq #0x8aaa60
008aa9e0  01 23                                            movs r3, #1
008aa9e2  33 70                                            strb r3, [r6]
008aa9e4  23 1c                                            adds r3, r4, #0
008aa9e6  45 46                                            mov r5, r8
008aa9e8  01 36                                            adds r6, #1
008aa9ea  01 34                                            adds r4, #1
008aa9ec  48 37                                            adds r7, #0x48
008aa9ee  9b 45                                            cmp fp, r3
008aa9f0  d2 dc                                            bgt #0x8aa998
008aa9f2  49 46                                            mov r1, sb
008aa9f4  08 68                                            ldr r0, [r1]
008aa9f6  83 68                                            ldr r3, [r0, #8]
008aa9f8  c2 68                                            ldr r2, [r0, #0xc]
008aa9fa  93 42                                            cmp r3, r2
008aa9fc  43 d2                                            bhs #0x8aaa86
008aa9fe  04 33                                            adds r3, #4
008aaa00  83 60                                            str r3, [r0, #8]
008aaa02  4a 46                                            mov r2, sb
008aaa04  00 23                                            movs r3, #0
008aaa06  53 72                                            strb r3, [r2, #9]
008aaa08  03 99                                            ldr r1, [sp, #0xc]
008aaa0a  04 9a                                            ldr r2, [sp, #0x10]
008aaa0c  48 46                                            mov r0, sb
008aaa0e  01 31                                            adds r1, #1
008aaa10  03 91                                            str r1, [sp, #0xc]
008aaa12  06 99                                            ldr r1, [sp, #0x18]
008aaa14  93 46                                            mov fp, r2
008aaa16  ff f7 47 ff                                      bl #0x8aa8a8
008aaa1a  00 28                                            cmp r0, #0
008aaa1c  9e d0                                            beq #0x8aa95c
008aaa1e  0f b0                                            add sp, #0x3c
008aaa20  28 1c                                            adds r0, r5, #0
008aaa22  3c bc                                            pop {r2, r3, r4, r5}
008aaa24  90 46                                            mov r8, r2
008aaa26  99 46                                            mov sb, r3
008aaa28  a2 46                                            mov sl, r4
008aaa2a  ab 46                                            mov fp, r5
008aaa2c  f0 bd                                            pop {r4, r5, r6, r7, pc}
008aaa2e  a2 46                                            mov sl, r4
008aaa30  ab e7                                            b #0x8aa98a
008aaa32  7b 68                                            ldr r3, [r7, #4]
008aaa34  02 99                                            ldr r1, [sp, #8]
008aaa36  50 68                                            ldr r0, [r2, #4]
008aaa38  5a 58                                            ldr r2, [r3, r1]
008aaa3a  82 42                                            cmp r2, r0
008aaa3c  c9 d1                                            bne #0x8aa9d2
008aaa3e  3a 68                                            ldr r2, [r7]
008aaa40  d3 1a                                            subs r3, r2, r3
008aaa42  03 9a                                            ldr r2, [sp, #0xc]
008aaa44  9b 10                                            asrs r3, r3, #2
008aaa46  01 3b                                            subs r3, #1
008aaa48  9a 42                                            cmp r2, r3
008aaa4a  0f d0                                            beq #0x8aaa6c
008aaa4c  45 46                                            mov r5, r8
008aaa4e  04 94                                            str r4, [sp, #0x10]
008aaa50  23 1c                                            adds r3, r4, #0
008aaa52  9c e7                                            b #0x8aa98e
008aaa54  01 9a                                            ldr r2, [sp, #4]
008aaa56  a2 46                                            mov sl, r4
008aaa58  01 3a                                            subs r2, #1
008aaa5a  01 92                                            str r2, [sp, #4]
008aaa5c  00 2a                                            cmp r2, #0
008aaa5e  bf d1                                            bne #0x8aa9e0
008aaa60  45 46                                            mov r5, r8
008aaa62  dc e7                                            b #0x8aaa1e
008aaa64  03 68                                            ldr r3, [r0]
008aaa66  1b 6a                                            ldr r3, [r3, #0x20]
008aaa68  98 47                                            blx r3
008aaa6a  a5 e7                                            b #0x8aa9b8
008aaa6c  01 23                                            movs r3, #1
008aaa6e  33 70                                            strb r3, [r6]
008aaa70  aa 45                                            cmp sl, r5
008aaa72  0c d0                                            beq #0x8aaa8e
008aaa74  01 99                                            ldr r1, [sp, #4]
008aaa76  01 39                                            subs r1, #1
008aaa78  01 91                                            str r1, [sp, #4]
008aaa7a  00 29                                            cmp r1, #0
008aaa7c  e7 d1                                            bne #0x8aaa4e
008aaa7e  48 46                                            mov r0, sb
008aaa80  fa f7 2e f8                                      bl #0x8a4ae0
008aaa84  cb e7                                            b #0x8aaa1e
008aaa86  03 68                                            ldr r3, [r0]
008aaa88  5b 6a                                            ldr r3, [r3, #0x24]
008aaa8a  98 47                                            blx r3
008aaa8c  b9 e7                                            b #0x8aaa02
008aaa8e  a2 46                                            mov sl, r4
008aaa90  f0 e7                                            b #0x8aaa74
008aaa92  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008aaa94  39 8e e3 38                                      .byte 0x39, 0x8e, 0xe3, 0x38

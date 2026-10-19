; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0031bb88, declared_size=104, range_size=104, mode=arm
; class-group: std::basic_string<wchar_t, std::char_traits<wchar_t>, std::allocator<wchar_t> >
; alias: _ZNSbIwSt11char_traitsIwESaIwEE20_M_compute_next_sizeEj
; demangled: std::basic_string<wchar_t, std::char_traits<wchar_t>, std::allocator<wchar_t> >::_M_compute_next_size(unsigned int)
; decoder-mode: arm
0031bb88  70 40 2d e9                                      push {r4, r5, r6, lr}
0031bb8c  44 20 90 e5                                      ldr r2, [r0, #0x44]
0031bb90  40 40 90 e5                                      ldr r4, [r0, #0x40]
0031bb94  fe 3f 0f e3                                      movw r3, #0xfffe
0031bb98  ff 3f 43 e3                                      movt r3, #0x3fff
0031bb9c  04 40 62 e0                                      rsb r4, r2, r4
0031bba0  44 41 a0 e1                                      asr r4, r4, #2
0031bba4  03 30 64 e0                                      rsb r3, r4, r3
0031bba8  01 00 53 e1                                      cmp r3, r1
0031bbac  01 50 a0 e1                                      mov r5, r1
0031bbb0  09 00 00 3a                                      blo #0x31bbdc
0031bbb4  01 00 84 e2                                      add r0, r4, #1
0031bbb8  05 00 54 e1                                      cmp r4, r5
0031bbbc  04 00 80 20                                      addhs r0, r0, r4
0031bbc0  05 00 80 30                                      addlo r0, r0, r5
0031bbc4  0b 01 70 e3                                      cmn r0, #0xc0000002
0031bbc8  01 00 00 8a                                      bhi #0x31bbd4
0031bbcc  04 00 50 e1                                      cmp r0, r4
0031bbd0  00 00 00 2a                                      bhs #0x31bbd8
0031bbd4  07 01 e0 e3                                      mvn r0, #0xc0000001
0031bbd8  70 80 bd e8                                      pop {r4, r5, r6, pc}
0031bbdc  08 00 9f e5                                      ldr r0, [pc, #8]
0031bbe0  00 00 8f e0                                      add r0, pc, r0
0031bbe4  95 b4 0f eb                                      bl #0x708e40
0031bbe8  f1 ff ff ea                                      b #0x31bbb4
; mapping-symbol data/literal pool
0031bbec  78 28 5a 00                                      .byte 0x78, 0x28, 0x5a, 0x00

; FUNCTION 0x0031bd2c, declared_size=80, range_size=80, mode=arm
; class-group: std::basic_string<wchar_t, std::char_traits<wchar_t>, std::allocator<wchar_t> >
; alias: _ZNSbIwSt11char_traitsIwESaIwEE5eraseEPwS3_
; demangled: std::basic_string<wchar_t, std::char_traits<wchar_t>, std::allocator<wchar_t> >::erase(wchar_t*, wchar_t*)
; decoder-mode: arm
0031bd2c  02 00 51 e1                                      cmp r1, r2
0031bd30  70 40 2d e9                                      push {r4, r5, r6, lr}
0031bd34  01 40 a0 e1                                      mov r4, r1
0031bd38  02 50 a0 e1                                      mov r5, r2
0031bd3c  00 60 a0 e1                                      mov r6, r0
0031bd40  0b 00 00 0a                                      beq #0x31bd74
0031bd44  40 20 90 e5                                      ldr r2, [r0, #0x40]
0031bd48  01 00 a0 e1                                      mov r0, r1
0031bd4c  05 10 a0 e1                                      mov r1, r5
0031bd50  02 20 65 e0                                      rsb r2, r5, r2
0031bd54  42 21 a0 e1                                      asr r2, r2, #2
0031bd58  01 20 82 e2                                      add r2, r2, #1
0031bd5c  5e ca ff eb                                      bl #0x30e6dc
0031bd60  40 30 96 e5                                      ldr r3, [r6, #0x40]
0031bd64  05 50 64 e0                                      rsb r5, r4, r5
0031bd68  03 50 c5 e3                                      bic r5, r5, #3
0031bd6c  03 50 65 e0                                      rsb r5, r5, r3
0031bd70  40 50 86 e5                                      str r5, [r6, #0x40]
0031bd74  04 00 a0 e1                                      mov r0, r4
0031bd78  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0031bfec, declared_size=344, range_size=344, mode=arm
; class-group: std::basic_string<wchar_t, std::char_traits<wchar_t>, std::allocator<wchar_t> >
; alias: _ZNSbIwSt11char_traitsIwESaIwEE9_M_appendEPKwS4_
; demangled: std::basic_string<wchar_t, std::char_traits<wchar_t>, std::allocator<wchar_t> >::_M_append(wchar_t const*, wchar_t const*)
; decoder-mode: arm
0031bfec  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0031bff0  02 00 51 e1                                      cmp r1, r2
0031bff4  0c d0 4d e2                                      sub sp, sp, #0xc
0031bff8  01 60 a0 e1                                      mov r6, r1
0031bffc  00 50 a0 e1                                      mov r5, r0
0031c000  22 00 00 0a                                      beq #0x31c090
0031c004  44 30 90 e5                                      ldr r3, [r0, #0x44]
0031c008  02 40 61 e0                                      rsb r4, r1, r2
0031c00c  44 41 a0 e1                                      asr r4, r4, #2
0031c010  00 00 53 e1                                      cmp r3, r0
0031c014  40 10 90 05                                      ldreq r1, [r0, #0x40]
0031c018  00 30 90 15                                      ldrne r3, [r0]
0031c01c  40 10 90 15                                      ldrne r1, [r0, #0x40]
0031c020  01 30 60 00                                      rsbeq r3, r0, r1
0031c024  43 31 a0 01                                      asreq r3, r3, #2
0031c028  03 30 61 10                                      rsbne r3, r1, r3
0031c02c  10 30 63 02                                      rsbeq r3, r3, #0x10
0031c030  43 31 a0 11                                      asrne r3, r3, #2
0031c034  03 00 54 e1                                      cmp r4, r3
0031c038  04 70 a0 e1                                      mov r7, r4
0031c03c  16 00 00 2a                                      bhs #0x31c09c
0031c040  04 30 86 e2                                      add r3, r6, #4
0031c044  02 20 63 e0                                      rsb r2, r3, r2
0031c048  42 21 a0 e1                                      asr r2, r2, #2
0031c04c  00 00 52 e3                                      cmp r2, #0
0031c050  01 30 a0 e1                                      mov r3, r1
0031c054  05 00 00 da                                      ble #0x31c070
0031c058  06 30 a0 e1                                      mov r3, r6
0031c05c  04 00 b3 e5                                      ldr r0, [r3, #4]!
0031c060  01 20 52 e2                                      subs r2, r2, #1
0031c064  04 00 a1 e5                                      str r0, [r1, #4]!
0031c068  fb ff ff 1a                                      bne #0x31c05c
0031c06c  40 30 95 e5                                      ldr r3, [r5, #0x40]
0031c070  00 20 a0 e3                                      mov r2, #0
0031c074  04 21 83 e7                                      str r2, [r3, r4, lsl #2]
0031c078  40 30 95 e5                                      ldr r3, [r5, #0x40]
0031c07c  00 20 96 e5                                      ldr r2, [r6]
0031c080  00 20 83 e5                                      str r2, [r3]
0031c084  40 30 95 e5                                      ldr r3, [r5, #0x40]
0031c088  04 41 83 e0                                      add r4, r3, r4, lsl #2
0031c08c  40 40 85 e5                                      str r4, [r5, #0x40]
0031c090  05 00 a0 e1                                      mov r0, r5
0031c094  0c d0 8d e2                                      add sp, sp, #0xc
0031c098  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0031c09c  04 10 a0 e1                                      mov r1, r4
0031c0a0  b8 fe ff eb                                      bl #0x31bb88
0031c0a4  08 20 8d e2                                      add r2, sp, #8
0031c0a8  00 10 a0 e1                                      mov r1, r0
0031c0ac  04 00 22 e5                                      str r0, [r2, #-4]!
0031c0b0  44 00 85 e2                                      add r0, r5, #0x44
0031c0b4  ed f4 ff eb                                      bl #0x319470
0031c0b8  40 80 95 e5                                      ldr r8, [r5, #0x40]
0031c0bc  00 a0 a0 e1                                      mov sl, r0
0031c0c0  44 00 95 e5                                      ldr r0, [r5, #0x44]
0031c0c4  08 80 60 e0                                      rsb r8, r0, r8
0031c0c8  48 81 a0 e1                                      asr r8, r8, #2
0031c0cc  00 00 58 e3                                      cmp r8, #0
0031c0d0  0a 80 a0 d1                                      movle r8, sl
0031c0d4  07 00 00 da                                      ble #0x31c0f8
0031c0d8  08 20 a0 e1                                      mov r2, r8
0031c0dc  00 30 a0 e3                                      mov r3, #0
0031c0e0  03 10 90 e7                                      ldr r1, [r0, r3]
0031c0e4  01 20 52 e2                                      subs r2, r2, #1
0031c0e8  03 10 8a e7                                      str r1, [sl, r3]
0031c0ec  04 30 83 e2                                      add r3, r3, #4
0031c0f0  fa ff ff 1a                                      bne #0x31c0e0
0031c0f4  08 81 8a e0                                      add r8, sl, r8, lsl #2
0031c0f8  00 00 54 e3                                      cmp r4, #0
0031c0fc  06 00 00 da                                      ble #0x31c11c
0031c100  00 30 a0 e3                                      mov r3, #0
0031c104  03 20 96 e7                                      ldr r2, [r6, r3]
0031c108  01 40 54 e2                                      subs r4, r4, #1
0031c10c  03 20 88 e7                                      str r2, [r8, r3]
0031c110  04 30 83 e2                                      add r3, r3, #4
0031c114  fa ff ff 1a                                      bne #0x31c104
0031c118  07 81 88 e0                                      add r8, r8, r7, lsl #2
0031c11c  00 30 a0 e3                                      mov r3, #0
0031c120  00 30 88 e5                                      str r3, [r8]
0031c124  05 00 a0 e1                                      mov r0, r5
0031c128  a0 f4 ff eb                                      bl #0x3193b0
0031c12c  04 30 9d e5                                      ldr r3, [sp, #4]
0031c130  44 a0 85 e5                                      str sl, [r5, #0x44]
0031c134  40 80 85 e5                                      str r8, [r5, #0x40]
0031c138  03 a1 8a e0                                      add sl, sl, r3, lsl #2
0031c13c  00 a0 85 e5                                      str sl, [r5]
0031c140  d2 ff ff ea                                      b #0x31c090

; FUNCTION 0x0031c144, declared_size=128, range_size=128, mode=arm
; class-group: std::basic_string<wchar_t, std::char_traits<wchar_t>, std::allocator<wchar_t> >
; alias: _ZNSbIwSt11char_traitsIwESaIwEE9_M_assignEPKwS4_
; demangled: std::basic_string<wchar_t, std::char_traits<wchar_t>, std::allocator<wchar_t> >::_M_assign(wchar_t const*, wchar_t const*)
; decoder-mode: arm
0031c144  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0031c148  00 40 a0 e1                                      mov r4, r0
0031c14c  40 30 94 e5                                      ldr r3, [r4, #0x40]
0031c150  44 00 90 e5                                      ldr r0, [r0, #0x44]
0031c154  02 50 61 e0                                      rsb r5, r1, r2
0031c158  02 70 a0 e1                                      mov r7, r2
0031c15c  03 30 60 e0                                      rsb r3, r0, r3
0031c160  45 51 a0 e1                                      asr r5, r5, #2
0031c164  43 21 a0 e1                                      asr r2, r3, #2
0031c168  02 00 55 e1                                      cmp r5, r2
0031c16c  01 60 a0 e1                                      mov r6, r1
0031c170  0a 00 00 9a                                      bls #0x31c1a0
0031c174  9f c7 ff eb                                      bl #0x30dff8
0031c178  40 10 94 e5                                      ldr r1, [r4, #0x40]
0031c17c  44 30 94 e5                                      ldr r3, [r4, #0x44]
0031c180  07 20 a0 e1                                      mov r2, r7
0031c184  04 00 a0 e1                                      mov r0, r4
0031c188  01 10 63 e0                                      rsb r1, r3, r1
0031c18c  03 10 c1 e3                                      bic r1, r1, #3
0031c190  01 10 86 e0                                      add r1, r6, r1
0031c194  94 ff ff eb                                      bl #0x31bfec
0031c198  04 00 a0 e1                                      mov r0, r4
0031c19c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0031c1a0  05 20 a0 e1                                      mov r2, r5
0031c1a4  93 c7 ff eb                                      bl #0x30dff8
0031c1a8  44 10 94 e5                                      ldr r1, [r4, #0x44]
0031c1ac  04 00 a0 e1                                      mov r0, r4
0031c1b0  40 20 94 e5                                      ldr r2, [r4, #0x40]
0031c1b4  05 11 81 e0                                      add r1, r1, r5, lsl #2
0031c1b8  db fe ff eb                                      bl #0x31bd2c
0031c1bc  04 00 a0 e1                                      mov r0, r4
0031c1c0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x008a6c44, declared_size=78, range_size=78, mode=thumb
; class-group: std::basic_string<wchar_t, std::char_traits<wchar_t>, std::allocator<wchar_t> >
; alias: _ZNSbIwSt11char_traitsIwESaIwEE10_M_reserveEj
; demangled: std::basic_string<wchar_t, std::char_traits<wchar_t>, std::allocator<wchar_t> >::_M_reserve(unsigned int)
; decoder-mode: thumb
008a6c44  f0 b5                                            push {r4, r5, r6, r7, lr}
008a6c46  83 b0                                            sub sp, #0xc
008a6c48  05 1c                                            adds r5, r0, #0
008a6c4a  01 aa                                            add r2, sp, #4
008a6c4c  44 30                                            adds r0, #0x44
008a6c4e  01 91                                            str r1, [sp, #4]
008a6c50  72 f6 0e e4                                      blx #0x319470
008a6c54  2f 6c                                            ldr r7, [r5, #0x40]
008a6c56  04 1c                                            adds r4, r0, #0
008a6c58  68 6c                                            ldr r0, [r5, #0x44]
008a6c5a  26 1c                                            adds r6, r4, #0
008a6c5c  3f 1a                                            subs r7, r7, r0
008a6c5e  bf 10                                            asrs r7, r7, #2
008a6c60  00 2f                                            cmp r7, #0
008a6c62  09 dd                                            ble #0x8a6c78
008a6c64  3a 1c                                            adds r2, r7, #0
008a6c66  00 23                                            movs r3, #0
008a6c68  c1 58                                            ldr r1, [r0, r3]
008a6c6a  01 3a                                            subs r2, #1
008a6c6c  e1 50                                            str r1, [r4, r3]
008a6c6e  04 33                                            adds r3, #4
008a6c70  00 2a                                            cmp r2, #0
008a6c72  f9 d1                                            bne #0x8a6c68
008a6c74  be 00                                            lsls r6, r7, #2
008a6c76  a6 19                                            adds r6, r4, r6
008a6c78  00 23                                            movs r3, #0
008a6c7a  33 60                                            str r3, [r6]
008a6c7c  28 1c                                            adds r0, r5, #0
008a6c7e  72 f6 98 e3                                      blx #0x3193b0
008a6c82  01 9b                                            ldr r3, [sp, #4]
008a6c84  03 b0                                            add sp, #0xc
008a6c86  2e 64                                            str r6, [r5, #0x40]
008a6c88  9b 00                                            lsls r3, r3, #2
008a6c8a  e3 18                                            adds r3, r4, r3
008a6c8c  2b 60                                            str r3, [r5]
008a6c8e  6c 64                                            str r4, [r5, #0x44]
008a6c90  f0 bd                                            pop {r4, r5, r6, r7, pc}

; FUNCTION 0x008a6c94, declared_size=72, range_size=72, mode=thumb
; class-group: std::basic_string<wchar_t, std::char_traits<wchar_t>, std::allocator<wchar_t> >
; alias: _ZNSbIwSt11char_traitsIwESaIwEE9push_backEw
; demangled: std::basic_string<wchar_t, std::char_traits<wchar_t>, std::allocator<wchar_t> >::push_back(wchar_t)
; decoder-mode: thumb
008a6c94  70 b5                                            push {r4, r5, r6, lr}
008a6c96  43 6c                                            ldr r3, [r0, #0x44]
008a6c98  04 1c                                            adds r4, r0, #0
008a6c9a  0d 1c                                            adds r5, r1, #0
008a6c9c  a3 42                                            cmp r3, r4
008a6c9e  17 d0                                            beq #0x8a6cd0
008a6ca0  02 68                                            ldr r2, [r0]
008a6ca2  03 6c                                            ldr r3, [r0, #0x40]
008a6ca4  d2 1a                                            subs r2, r2, r3
008a6ca6  92 10                                            asrs r2, r2, #2
008a6ca8  01 2a                                            cmp r2, #1
008a6caa  07 d0                                            beq #0x8a6cbc
008a6cac  00 22                                            movs r2, #0
008a6cae  5a 60                                            str r2, [r3, #4]
008a6cb0  23 6c                                            ldr r3, [r4, #0x40]
008a6cb2  1d 60                                            str r5, [r3]
008a6cb4  23 6c                                            ldr r3, [r4, #0x40]
008a6cb6  04 33                                            adds r3, #4
008a6cb8  23 64                                            str r3, [r4, #0x40]
008a6cba  70 bd                                            pop {r4, r5, r6, pc}
008a6cbc  01 21                                            movs r1, #1
008a6cbe  20 1c                                            adds r0, r4, #0
008a6cc0  74 f6 62 e7                                      blx #0x31bb88
008a6cc4  01 1c                                            adds r1, r0, #0
008a6cc6  20 1c                                            adds r0, r4, #0
008a6cc8  ff f7 bc ff                                      bl #0x8a6c44
008a6ccc  23 6c                                            ldr r3, [r4, #0x40]
008a6cce  ed e7                                            b #0x8a6cac
008a6cd0  03 6c                                            ldr r3, [r0, #0x40]
008a6cd2  1a 1a                                            subs r2, r3, r0
008a6cd4  92 10                                            asrs r2, r2, #2
008a6cd6  52 42                                            rsbs r2, r2, #0
008a6cd8  10 32                                            adds r2, #0x10
008a6cda  e5 e7                                            b #0x8a6ca8

; FUNCTION 0x008a6cdc, declared_size=136, range_size=136, mode=thumb
; class-group: std::basic_string<wchar_t, std::char_traits<wchar_t>, std::allocator<wchar_t> >
; alias: _ZNSbIwSt11char_traitsIwESaIwEE6appendEjw
; demangled: std::basic_string<wchar_t, std::char_traits<wchar_t>, std::allocator<wchar_t> >::append(unsigned int, wchar_t)
; decoder-mode: thumb
008a6cdc  70 b5                                            push {r4, r5, r6, lr}
008a6cde  05 1c                                            adds r5, r0, #0
008a6ce0  0e 1c                                            adds r6, r1, #0
008a6ce2  14 1c                                            adds r4, r2, #0
008a6ce4  00 29                                            cmp r1, #0
008a6ce6  21 d0                                            beq #0x8a6d2c
008a6ce8  01 6c                                            ldr r1, [r0, #0x40]
008a6cea  43 6c                                            ldr r3, [r0, #0x44]
008a6cec  1b 48                                            ldr r0, [pc, #0x6c]
008a6cee  ca 1a                                            subs r2, r1, r3
008a6cf0  92 10                                            asrs r2, r2, #2
008a6cf2  82 1a                                            subs r2, r0, r2
008a6cf4  96 42                                            cmp r6, r2
008a6cf6  25 d8                                            bhi #0x8a6d44
008a6cf8  9d 42                                            cmp r5, r3
008a6cfa  2a d0                                            beq #0x8a6d52
008a6cfc  2b 68                                            ldr r3, [r5]
008a6cfe  5b 1a                                            subs r3, r3, r1
008a6d00  9b 10                                            asrs r3, r3, #2
008a6d02  9e 42                                            cmp r6, r3
008a6d04  14 d2                                            bhs #0x8a6d30
008a6d06  73 1e                                            subs r3, r6, #1
008a6d08  9b 00                                            lsls r3, r3, #2
008a6d0a  9b 10                                            asrs r3, r3, #2
008a6d0c  0a 1d                                            adds r2, r1, #4
008a6d0e  00 2b                                            cmp r3, #0
008a6d10  04 dd                                            ble #0x8a6d1c
008a6d12  01 3b                                            subs r3, #1
008a6d14  10 c2                                            stm r2!, {r4}
008a6d16  00 2b                                            cmp r3, #0
008a6d18  fb d1                                            bne #0x8a6d12
008a6d1a  29 6c                                            ldr r1, [r5, #0x40]
008a6d1c  b6 00                                            lsls r6, r6, #2
008a6d1e  00 23                                            movs r3, #0
008a6d20  8b 51                                            str r3, [r1, r6]
008a6d22  2b 6c                                            ldr r3, [r5, #0x40]
008a6d24  1c 60                                            str r4, [r3]
008a6d26  2b 6c                                            ldr r3, [r5, #0x40]
008a6d28  9e 19                                            adds r6, r3, r6
008a6d2a  2e 64                                            str r6, [r5, #0x40]
008a6d2c  28 1c                                            adds r0, r5, #0
008a6d2e  70 bd                                            pop {r4, r5, r6, pc}
008a6d30  31 1c                                            adds r1, r6, #0
008a6d32  28 1c                                            adds r0, r5, #0
008a6d34  74 f6 28 e7                                      blx #0x31bb88
008a6d38  01 1c                                            adds r1, r0, #0
008a6d3a  28 1c                                            adds r0, r5, #0
008a6d3c  ff f7 82 ff                                      bl #0x8a6c44
008a6d40  29 6c                                            ldr r1, [r5, #0x40]
008a6d42  e0 e7                                            b #0x8a6d06
008a6d44  06 48                                            ldr r0, [pc, #0x18]
008a6d46  78 44                                            add r0, pc
008a6d48  fb f7 c4 fd                                      bl #0x8a28d4
008a6d4c  6b 6c                                            ldr r3, [r5, #0x44]
008a6d4e  29 6c                                            ldr r1, [r5, #0x40]
008a6d50  d2 e7                                            b #0x8a6cf8
008a6d52  4b 1b                                            subs r3, r1, r5
008a6d54  9b 10                                            asrs r3, r3, #2
008a6d56  5b 42                                            rsbs r3, r3, #0
008a6d58  10 33                                            adds r3, #0x10
008a6d5a  d2 e7                                            b #0x8a6d02
; mapping-symbol data/literal pool
008a6d5c  fe ff ff 3f 9e ea 06 00                          .byte 0xfe, 0xff, 0xff, 0x3f, 0x9e, 0xea, 0x06, 0x00

; FUNCTION 0x008b5f8c, declared_size=44, range_size=44, mode=thumb
; class-group: std::basic_string<wchar_t, std::char_traits<wchar_t>, std::allocator<wchar_t> >
; alias: _ZNSbIwSt11char_traitsIwESaIwEE19_M_range_initializeEPKwS4_
; demangled: std::basic_string<wchar_t, std::char_traits<wchar_t>, std::allocator<wchar_t> >::_M_range_initialize(wchar_t const*, wchar_t const*)
; decoder-mode: thumb
008b5f8c  f8 b5                                            push {r3, r4, r5, r6, r7, lr}
008b5f8e  56 1a                                            subs r6, r2, r1
008b5f90  0d 1c                                            adds r5, r1, #0
008b5f92  b1 10                                            asrs r1, r6, #2
008b5f94  04 1c                                            adds r4, r0, #0
008b5f96  01 31                                            adds r1, #1
008b5f98  17 1c                                            adds r7, r2, #0
008b5f9a  f0 f7 33 fe                                      bl #0x8a6c04
008b5f9e  60 6c                                            ldr r0, [r4, #0x44]
008b5fa0  03 1c                                            adds r3, r0, #0
008b5fa2  af 42                                            cmp r7, r5
008b5fa4  04 d0                                            beq #0x8b5fb0
008b5fa6  29 1c                                            adds r1, r5, #0
008b5fa8  32 1c                                            adds r2, r6, #0
008b5faa  58 f6 5e e4                                      blx #0x30e868
008b5fae  83 19                                            adds r3, r0, r6
008b5fb0  00 22                                            movs r2, #0
008b5fb2  23 64                                            str r3, [r4, #0x40]
008b5fb4  1a 60                                            str r2, [r3]
008b5fb6  f8 bd                                            pop {r3, r4, r5, r6, r7, pc}

; FUNCTION 0x008b5fb8, declared_size=32, range_size=32, mode=thumb
; class-group: std::basic_string<wchar_t, std::char_traits<wchar_t>, std::allocator<wchar_t> >
; alias: _ZNSbIwSt11char_traitsIwESaIwEEC1EPKwRKS1_
; demangled: std::basic_string<wchar_t, std::char_traits<wchar_t>, std::allocator<wchar_t> >::basic_string(wchar_t const*, std::allocator<wchar_t> const&)
; decoder-mode: thumb
008b5fb8  70 b5                                            push {r4, r5, r6, lr}
008b5fba  04 1c                                            adds r4, r0, #0
008b5fbc  20 64                                            str r0, [r4, #0x40]
008b5fbe  60 64                                            str r0, [r4, #0x44]
008b5fc0  08 1c                                            adds r0, r1, #0
008b5fc2  0d 1c                                            adds r5, r1, #0
008b5fc4  58 f6 60 e6                                      blx #0x30ec88
008b5fc8  82 00                                            lsls r2, r0, #2
008b5fca  aa 18                                            adds r2, r5, r2
008b5fcc  20 1c                                            adds r0, r4, #0
008b5fce  29 1c                                            adds r1, r5, #0
008b5fd0  ff f7 dc ff                                      bl #0x8b5f8c
008b5fd4  20 1c                                            adds r0, r4, #0
008b5fd6  70 bd                                            pop {r4, r5, r6, pc}

; FUNCTION 0x008b9798, declared_size=12, range_size=12, mode=thumb
; class-group: std::basic_string<wchar_t, std::char_traits<wchar_t>, std::allocator<wchar_t> >
; alias: _ZNSbIwSt11char_traitsIwESaIwEED1Ev
; demangled: std::basic_string<wchar_t, std::char_traits<wchar_t>, std::allocator<wchar_t> >::~basic_string()
; decoder-mode: thumb
008b9798  10 b5                                            push {r4, lr}
008b979a  04 1c                                            adds r4, r0, #0
008b979c  5f f6 08 e6                                      blx #0x3193b0
008b97a0  20 1c                                            adds r0, r4, #0
008b97a2  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b97a4, declared_size=28, range_size=28, mode=thumb
; class-group: std::basic_string<wchar_t, std::char_traits<wchar_t>, std::allocator<wchar_t> >
; alias: _ZNSbIwSt11char_traitsIwESaIwEEC1ERKS2_.clone.2
; demangled: std::basic_string<wchar_t, std::char_traits<wchar_t>, std::allocator<wchar_t> >::basic_string(std::basic_string<wchar_t, std::char_traits<wchar_t>, std::allocator<wchar_t> > const&) [clone .clone.2]
; decoder-mode: thumb
008b97a4  10 b5                                            push {r4, lr}
008b97a6  05 4b                                            ldr r3, [pc, #0x14]
008b97a8  04 1c                                            adds r4, r0, #0
008b97aa  20 64                                            str r0, [r4, #0x40]
008b97ac  60 64                                            str r0, [r4, #0x44]
008b97ae  7b 44                                            add r3, pc
008b97b0  d9 6d                                            ldr r1, [r3, #0x5c]
008b97b2  9a 6d                                            ldr r2, [r3, #0x58]
008b97b4  fc f7 ea fb                                      bl #0x8b5f8c
008b97b8  20 1c                                            adds r0, r4, #0
008b97ba  10 bd                                            pop {r4, pc}
; mapping-symbol data/literal pool
008b97bc  d6 bc 17 00                                      .byte 0xd6, 0xbc, 0x17, 0x00

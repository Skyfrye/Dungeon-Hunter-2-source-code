; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008a4d08, declared_size=64, range_size=64, mode=thumb
; class-group: std::basic_string<char, std::char_traits<char>, std::priv::__iostring_allocator<char> >
; alias: _ZNSbIcSt11char_traitsIcENSt4priv20__iostring_allocatorIcEEE20_M_compute_next_sizeEj
; demangled: std::basic_string<char, std::char_traits<char>, std::priv::__iostring_allocator<char> >::_M_compute_next_size(unsigned int)
; decoder-mode: thumb
008a4d08  70 b5                                            push {r4, r5, r6, lr}
008a4d0a  8c 23                                            movs r3, #0x8c
008a4d0c  5b 00                                            lsls r3, r3, #1
008a4d0e  c3 58                                            ldr r3, [r0, r3]
008a4d10  04 69                                            ldr r4, [r0, #0x10]
008a4d12  0d 1c                                            adds r5, r1, #0
008a4d14  e4 1a                                            subs r4, r4, r3
008a4d16  02 23                                            movs r3, #2
008a4d18  5b 42                                            rsbs r3, r3, #0
008a4d1a  1b 1b                                            subs r3, r3, r4
008a4d1c  ab 42                                            cmp r3, r5
008a4d1e  0b d3                                            blo #0x8a4d38
008a4d20  60 1c                                            adds r0, r4, #1
008a4d22  a5 42                                            cmp r5, r4
008a4d24  00 d2                                            bhs #0x8a4d28
008a4d26  25 1c                                            adds r5, r4, #0
008a4d28  40 19                                            adds r0, r0, r5
008a4d2a  43 1c                                            adds r3, r0, #1
008a4d2c  01 d0                                            beq #0x8a4d32
008a4d2e  a0 42                                            cmp r0, r4
008a4d30  01 d2                                            bhs #0x8a4d36
008a4d32  02 20                                            movs r0, #2
008a4d34  40 42                                            rsbs r0, r0, #0
008a4d36  70 bd                                            pop {r4, r5, r6, pc}
008a4d38  02 48                                            ldr r0, [pc, #8]
008a4d3a  78 44                                            add r0, pc
008a4d3c  fd f7 ca fd                                      bl #0x8a28d4
008a4d40  ee e7                                            b #0x8a4d20
008a4d42  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008a4d44  aa 0a 07 00                                      .byte 0xaa, 0x0a, 0x07, 0x00

; FUNCTION 0x008a8598, declared_size=84, range_size=84, mode=thumb
; class-group: std::basic_string<char, std::char_traits<char>, std::priv::__iostring_allocator<char> >
; alias: _ZNSbIcSt11char_traitsIcENSt4priv20__iostring_allocatorIcEEE10_M_reserveEj
; demangled: std::basic_string<char, std::char_traits<char>, std::priv::__iostring_allocator<char> >::_M_reserve(unsigned int)
; decoder-mode: thumb
008a8598  f8 b5                                            push {r3, r4, r5, r6, r7, lr}
008a859a  13 4b                                            ldr r3, [pc, #0x4c]
008a859c  04 1c                                            adds r4, r0, #0
008a859e  05 1c                                            adds r5, r0, #0
008a85a0  0f 1c                                            adds r7, r1, #0
008a85a2  14 34                                            adds r4, #0x14
008a85a4  99 42                                            cmp r1, r3
008a85a6  03 d9                                            bls #0x8a85b0
008a85a8  08 1c                                            adds r0, r1, #0
008a85aa  66 f6 70 e1                                      blx #0x30e88c
008a85ae  04 1c                                            adds r4, r0, #0
008a85b0  8c 23                                            movs r3, #0x8c
008a85b2  5b 00                                            lsls r3, r3, #1
008a85b4  e8 58                                            ldr r0, [r5, r3]
008a85b6  29 69                                            ldr r1, [r5, #0x10]
008a85b8  00 23                                            movs r3, #0
008a85ba  26 1c                                            adds r6, r4, #0
008a85bc  09 1a                                            subs r1, r1, r0
008a85be  00 29                                            cmp r1, #0
008a85c0  05 dd                                            ble #0x8a85ce
008a85c2  c2 5c                                            ldrb r2, [r0, r3]
008a85c4  e2 54                                            strb r2, [r4, r3]
008a85c6  01 33                                            adds r3, #1
008a85c8  8b 42                                            cmp r3, r1
008a85ca  fa d1                                            bne #0x8a85c2
008a85cc  e6 18                                            adds r6, r4, r3
008a85ce  00 23                                            movs r3, #0
008a85d0  33 70                                            strb r3, [r6]
008a85d2  28 1c                                            adds r0, r5, #0
008a85d4  fd f7 56 fa                                      bl #0x8a5a84
008a85d8  8c 23                                            movs r3, #0x8c
008a85da  e7 19                                            adds r7, r4, r7
008a85dc  5b 00                                            lsls r3, r3, #1
008a85de  2f 60                                            str r7, [r5]
008a85e0  2e 61                                            str r6, [r5, #0x10]
008a85e2  ec 50                                            str r4, [r5, r3]
008a85e4  f8 bd                                            pop {r3, r4, r5, r6, r7, pc}
008a85e6  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008a85e8  01 01 00 00                                      .byte 0x01, 0x01, 0x00, 0x00

; FUNCTION 0x008a85ec, declared_size=72, range_size=72, mode=thumb
; class-group: std::basic_string<char, std::char_traits<char>, std::priv::__iostring_allocator<char> >
; alias: _ZNSbIcSt11char_traitsIcENSt4priv20__iostring_allocatorIcEEE9push_backEc
; demangled: std::basic_string<char, std::char_traits<char>, std::priv::__iostring_allocator<char> >::push_back(char)
; decoder-mode: thumb
008a85ec  70 b5                                            push {r4, r5, r6, lr}
008a85ee  8c 23                                            movs r3, #0x8c
008a85f0  5b 00                                            lsls r3, r3, #1
008a85f2  c3 58                                            ldr r3, [r0, r3]
008a85f4  04 1c                                            adds r4, r0, #0
008a85f6  0d 1c                                            adds r5, r1, #0
008a85f8  a3 42                                            cmp r3, r4
008a85fa  16 d0                                            beq #0x8a862a
008a85fc  02 68                                            ldr r2, [r0]
008a85fe  03 69                                            ldr r3, [r0, #0x10]
008a8600  d2 1a                                            subs r2, r2, r3
008a8602  01 2a                                            cmp r2, #1
008a8604  07 d0                                            beq #0x8a8616
008a8606  00 22                                            movs r2, #0
008a8608  5a 70                                            strb r2, [r3, #1]
008a860a  23 69                                            ldr r3, [r4, #0x10]
008a860c  1d 70                                            strb r5, [r3]
008a860e  23 69                                            ldr r3, [r4, #0x10]
008a8610  01 33                                            adds r3, #1
008a8612  23 61                                            str r3, [r4, #0x10]
008a8614  70 bd                                            pop {r4, r5, r6, pc}
008a8616  01 21                                            movs r1, #1
008a8618  20 1c                                            adds r0, r4, #0
008a861a  fc f7 75 fb                                      bl #0x8a4d08
008a861e  01 1c                                            adds r1, r0, #0
008a8620  20 1c                                            adds r0, r4, #0
008a8622  ff f7 b9 ff                                      bl #0x8a8598
008a8626  23 69                                            ldr r3, [r4, #0x10]
008a8628  ed e7                                            b #0x8a8606
008a862a  03 69                                            ldr r3, [r0, #0x10]
008a862c  02 1c                                            adds r2, r0, #0
008a862e  10 32                                            adds r2, #0x10
008a8630  d2 1a                                            subs r2, r2, r3
008a8632  e6 e7                                            b #0x8a8602

; FUNCTION 0x008b9b7c, declared_size=60, range_size=60, mode=thumb
; class-group: std::basic_string<char, std::char_traits<char>, std::priv::__iostring_allocator<char> >
; alias: _ZNSbIcSt11char_traitsIcENSt4priv20__iostring_allocatorIcEEE20_M_compute_next_sizeEj.clone.1
; demangled: std::basic_string<char, std::char_traits<char>, std::priv::__iostring_allocator<char> >::_M_compute_next_size(unsigned int) [clone .clone.1]
; decoder-mode: thumb
008b9b7c  10 b5                                            push {r4, lr}
008b9b7e  8c 23                                            movs r3, #0x8c
008b9b80  5b 00                                            lsls r3, r3, #1
008b9b82  04 69                                            ldr r4, [r0, #0x10]
008b9b84  c3 58                                            ldr r3, [r0, r3]
008b9b86  e4 1a                                            subs r4, r4, r3
008b9b88  a3 1c                                            adds r3, r4, #2
008b9b8a  0a d0                                            beq #0x8b9ba2
008b9b8c  60 1c                                            adds r0, r4, #1
008b9b8e  23 1e                                            subs r3, r4, #0
008b9b90  05 d0                                            beq #0x8b9b9e
008b9b92  c0 18                                            adds r0, r0, r3
008b9b94  43 1c                                            adds r3, r0, #1
008b9b96  09 d1                                            bne #0x8b9bac
008b9b98  02 20                                            movs r0, #2
008b9b9a  40 42                                            rsbs r0, r0, #0
008b9b9c  10 bd                                            pop {r4, pc}
008b9b9e  01 23                                            movs r3, #1
008b9ba0  f7 e7                                            b #0x8b9b92
008b9ba2  04 48                                            ldr r0, [pc, #0x10]
008b9ba4  78 44                                            add r0, pc
008b9ba6  e8 f7 95 fe                                      bl #0x8a28d4
008b9baa  60 1e                                            subs r0, r4, #1
008b9bac  84 42                                            cmp r4, r0
008b9bae  f5 d9                                            bls #0x8b9b9c
008b9bb0  f2 e7                                            b #0x8b9b98
008b9bb2  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008b9bb4  40 bc 05 00                                      .byte 0x40, 0xbc, 0x05, 0x00

; FUNCTION 0x008b9bb8, declared_size=236, range_size=236, mode=thumb
; class-group: std::basic_string<char, std::char_traits<char>, std::priv::__iostring_allocator<char> >
; alias: _ZNSbIcSt11char_traitsIcENSt4priv20__iostring_allocatorIcEEE13_M_insert_auxEPcc
; demangled: std::basic_string<char, std::char_traits<char>, std::priv::__iostring_allocator<char> >::_M_insert_aux(char*, char)
; decoder-mode: thumb
008b9bb8  f8 b5                                            push {r3, r4, r5, r6, r7, lr}
008b9bba  4f 46                                            mov r7, sb
008b9bbc  46 46                                            mov r6, r8
008b9bbe  c0 b4                                            push {r6, r7}
008b9bc0  8c 23                                            movs r3, #0x8c
008b9bc2  5b 00                                            lsls r3, r3, #1
008b9bc4  c3 58                                            ldr r3, [r0, r3]
008b9bc6  04 1c                                            adds r4, r0, #0
008b9bc8  0d 1c                                            adds r5, r1, #0
008b9bca  17 1c                                            adds r7, r2, #0
008b9bcc  a3 42                                            cmp r3, r4
008b9bce  18 d0                                            beq #0x8b9c02
008b9bd0  02 68                                            ldr r2, [r0]
008b9bd2  03 69                                            ldr r3, [r0, #0x10]
008b9bd4  d2 1a                                            subs r2, r2, r3
008b9bd6  01 2a                                            cmp r2, #1
008b9bd8  19 d9                                            bls #0x8b9c0e
008b9bda  00 22                                            movs r2, #0
008b9bdc  5a 70                                            strb r2, [r3, #1]
008b9bde  22 69                                            ldr r2, [r4, #0x10]
008b9be0  52 1b                                            subs r2, r2, r5
008b9be2  00 2a                                            cmp r2, #0
008b9be4  03 d0                                            beq #0x8b9bee
008b9be6  68 1c                                            adds r0, r5, #1
008b9be8  29 1c                                            adds r1, r5, #0
008b9bea  54 f6 a6 e1                                      blx #0x30df38
008b9bee  2f 70                                            strb r7, [r5]
008b9bf0  23 69                                            ldr r3, [r4, #0x10]
008b9bf2  2e 1c                                            adds r6, r5, #0
008b9bf4  01 33                                            adds r3, #1
008b9bf6  23 61                                            str r3, [r4, #0x10]
008b9bf8  30 1c                                            adds r0, r6, #0
008b9bfa  0c bc                                            pop {r2, r3}
008b9bfc  90 46                                            mov r8, r2
008b9bfe  99 46                                            mov sb, r3
008b9c00  f8 bd                                            pop {r3, r4, r5, r6, r7, pc}
008b9c02  03 69                                            ldr r3, [r0, #0x10]
008b9c04  02 1c                                            adds r2, r0, #0
008b9c06  10 32                                            adds r2, #0x10
008b9c08  d2 1a                                            subs r2, r2, r3
008b9c0a  01 2a                                            cmp r2, #1
008b9c0c  e5 d8                                            bhi #0x8b9bda
008b9c0e  20 1c                                            adds r0, r4, #0
008b9c10  ff f7 b4 ff                                      bl #0x8b9b7c
008b9c14  22 4b                                            ldr r3, [pc, #0x88]
008b9c16  14 22                                            movs r2, #0x14
008b9c18  12 19                                            adds r2, r2, r4
008b9c1a  81 46                                            mov sb, r0
008b9c1c  90 46                                            mov r8, r2
008b9c1e  99 45                                            cmp sb, r3
008b9c20  02 d9                                            bls #0x8b9c28
008b9c22  54 f6 34 e6                                      blx #0x30e88c
008b9c26  80 46                                            mov r8, r0
008b9c28  8c 23                                            movs r3, #0x8c
008b9c2a  5b 00                                            lsls r3, r3, #1
008b9c2c  e0 58                                            ldr r0, [r4, r3]
008b9c2e  46 46                                            mov r6, r8
008b9c30  00 23                                            movs r3, #0
008b9c32  29 1a                                            subs r1, r5, r0
008b9c34  00 29                                            cmp r1, #0
008b9c36  06 dd                                            ble #0x8b9c46
008b9c38  c2 5c                                            ldrb r2, [r0, r3]
008b9c3a  46 46                                            mov r6, r8
008b9c3c  f2 54                                            strb r2, [r6, r3]
008b9c3e  01 33                                            adds r3, #1
008b9c40  8b 42                                            cmp r3, r1
008b9c42  f9 d1                                            bne #0x8b9c38
008b9c44  f6 18                                            adds r6, r6, r3
008b9c46  37 70                                            strb r7, [r6]
008b9c48  20 69                                            ldr r0, [r4, #0x10]
008b9c4a  77 1c                                            adds r7, r6, #1
008b9c4c  40 1b                                            subs r0, r0, r5
008b9c4e  00 28                                            cmp r0, #0
008b9c50  07 dd                                            ble #0x8b9c62
008b9c52  00 23                                            movs r3, #0
008b9c54  e9 5c                                            ldrb r1, [r5, r3]
008b9c56  f2 18                                            adds r2, r6, r3
008b9c58  01 33                                            adds r3, #1
008b9c5a  51 70                                            strb r1, [r2, #1]
008b9c5c  83 42                                            cmp r3, r0
008b9c5e  f9 d1                                            bne #0x8b9c54
008b9c60  ff 18                                            adds r7, r7, r3
008b9c62  00 23                                            movs r3, #0
008b9c64  3b 70                                            strb r3, [r7]
008b9c66  8c 23                                            movs r3, #0x8c
008b9c68  5b 00                                            lsls r3, r3, #1
008b9c6a  e0 58                                            ldr r0, [r4, r3]
008b9c6c  84 42                                            cmp r4, r0
008b9c6e  0b d0                                            beq #0x8b9c88
008b9c70  00 28                                            cmp r0, #0
008b9c72  09 d0                                            beq #0x8b9c88
008b9c74  23 1c                                            adds r3, r4, #0
008b9c76  14 33                                            adds r3, #0x14
008b9c78  21 68                                            ldr r1, [r4]
008b9c7a  98 42                                            cmp r0, r3
008b9c7c  04 d0                                            beq #0x8b9c88
008b9c7e  09 1a                                            subs r1, r1, r0
008b9c80  80 29                                            cmp r1, #0x80
008b9c82  0a d8                                            bhi #0x8b9c9a
008b9c84  fc f7 ea fa                                      bl #0x8b625c
008b9c88  43 46                                            mov r3, r8
008b9c8a  4b 44                                            add r3, sb
008b9c8c  23 60                                            str r3, [r4]
008b9c8e  8c 23                                            movs r3, #0x8c
008b9c90  42 46                                            mov r2, r8
008b9c92  5b 00                                            lsls r3, r3, #1
008b9c94  27 61                                            str r7, [r4, #0x10]
008b9c96  e2 50                                            str r2, [r4, r3]
008b9c98  ae e7                                            b #0x8b9bf8
008b9c9a  54 f6 0a e3                                      blx #0x30e2b0
008b9c9e  f3 e7                                            b #0x8b9c88
; mapping-symbol data/literal pool
008b9ca0  01 01 00 00                                      .byte 0x01, 0x01, 0x00, 0x00

; FUNCTION 0x008b9ef8, declared_size=28, range_size=28, mode=thumb
; class-group: std::basic_string<char, std::char_traits<char>, std::priv::__iostring_allocator<char> >
; alias: _ZNSbIcSt11char_traitsIcENSt4priv20__iostring_allocatorIcEEE6insertEPcc
; demangled: std::basic_string<char, std::char_traits<char>, std::priv::__iostring_allocator<char> >::insert(char*, char)
; decoder-mode: thumb
008b9ef8  10 b5                                            push {r4, lr}
008b9efa  03 69                                            ldr r3, [r0, #0x10]
008b9efc  04 1c                                            adds r4, r0, #0
008b9efe  99 42                                            cmp r1, r3
008b9f00  02 d0                                            beq #0x8b9f08
008b9f02  ff f7 59 fe                                      bl #0x8b9bb8
008b9f06  10 bd                                            pop {r4, pc}
008b9f08  11 1c                                            adds r1, r2, #0
008b9f0a  ee f7 6f fb                                      bl #0x8a85ec
008b9f0e  20 69                                            ldr r0, [r4, #0x10]
008b9f10  01 38                                            subs r0, #1
008b9f12  f8 e7                                            b #0x8b9f06

; FUNCTION 0x008baed4, declared_size=256, range_size=256, mode=thumb
; class-group: std::basic_string<char, std::char_traits<char>, std::priv::__iostring_allocator<char> >
; alias: _ZNSbIcSt11char_traitsIcENSt4priv20__iostring_allocatorIcEEE9_M_appendEPKcS6_
; demangled: std::basic_string<char, std::char_traits<char>, std::priv::__iostring_allocator<char> >::_M_append(char const*, char const*)
; decoder-mode: thumb
008baed4  f0 b5                                            push {r4, r5, r6, r7, lr}
008baed6  4f 46                                            mov r7, sb
008baed8  46 46                                            mov r6, r8
008baeda  c0 b4                                            push {r6, r7}
008baedc  83 b0                                            sub sp, #0xc
008baede  05 1c                                            adds r5, r0, #0
008baee0  0c 1c                                            adds r4, r1, #0
008baee2  91 42                                            cmp r1, r2
008baee4  20 d0                                            beq #0x8baf28
008baee6  8c 23                                            movs r3, #0x8c
008baee8  5b 00                                            lsls r3, r3, #1
008baeea  c3 58                                            ldr r3, [r0, r3]
008baeec  56 1a                                            subs r6, r2, r1
008baeee  ab 42                                            cmp r3, r5
008baef0  60 d0                                            beq #0x8bafb4
008baef2  03 68                                            ldr r3, [r0]
008baef4  07 69                                            ldr r7, [r0, #0x10]
008baef6  db 1b                                            subs r3, r3, r7
008baef8  9e 42                                            cmp r6, r3
008baefa  1b d2                                            bhs #0x8baf34
008baefc  61 1c                                            adds r1, r4, #1
008baefe  52 1a                                            subs r2, r2, r1
008baf00  3b 1c                                            adds r3, r7, #0
008baf02  00 2a                                            cmp r2, #0
008baf04  08 dd                                            ble #0x8baf18
008baf06  00 23                                            movs r3, #0
008baf08  e0 18                                            adds r0, r4, r3
008baf0a  40 78                                            ldrb r0, [r0, #1]
008baf0c  f9 18                                            adds r1, r7, r3
008baf0e  01 33                                            adds r3, #1
008baf10  48 70                                            strb r0, [r1, #1]
008baf12  93 42                                            cmp r3, r2
008baf14  f8 d1                                            bne #0x8baf08
008baf16  2b 69                                            ldr r3, [r5, #0x10]
008baf18  00 22                                            movs r2, #0
008baf1a  9a 55                                            strb r2, [r3, r6]
008baf1c  2b 69                                            ldr r3, [r5, #0x10]
008baf1e  22 78                                            ldrb r2, [r4]
008baf20  1a 70                                            strb r2, [r3]
008baf22  2b 69                                            ldr r3, [r5, #0x10]
008baf24  9e 19                                            adds r6, r3, r6
008baf26  2e 61                                            str r6, [r5, #0x10]
008baf28  03 b0                                            add sp, #0xc
008baf2a  28 1c                                            adds r0, r5, #0
008baf2c  0c bc                                            pop {r2, r3}
008baf2e  90 46                                            mov r8, r2
008baf30  99 46                                            mov sb, r3
008baf32  f0 bd                                            pop {r4, r5, r6, r7, pc}
008baf34  28 1c                                            adds r0, r5, #0
008baf36  31 1c                                            adds r1, r6, #0
008baf38  e9 f7 e6 fe                                      bl #0x8a4d08
008baf3c  24 4b                                            ldr r3, [pc, #0x90]
008baf3e  14 22                                            movs r2, #0x14
008baf40  52 19                                            adds r2, r2, r5
008baf42  81 46                                            mov sb, r0
008baf44  90 46                                            mov r8, r2
008baf46  99 45                                            cmp sb, r3
008baf48  39 d8                                            bhi #0x8bafbe
008baf4a  8c 23                                            movs r3, #0x8c
008baf4c  5b 00                                            lsls r3, r3, #1
008baf4e  e8 58                                            ldr r0, [r5, r3]
008baf50  29 69                                            ldr r1, [r5, #0x10]
008baf52  00 23                                            movs r3, #0
008baf54  47 46                                            mov r7, r8
008baf56  09 1a                                            subs r1, r1, r0
008baf58  00 29                                            cmp r1, #0
008baf5a  06 dd                                            ble #0x8baf6a
008baf5c  c2 5c                                            ldrb r2, [r0, r3]
008baf5e  47 46                                            mov r7, r8
008baf60  fa 54                                            strb r2, [r7, r3]
008baf62  01 33                                            adds r3, #1
008baf64  8b 42                                            cmp r3, r1
008baf66  f9 d1                                            bne #0x8baf5c
008baf68  ff 18                                            adds r7, r7, r3
008baf6a  00 2e                                            cmp r6, #0
008baf6c  06 dd                                            ble #0x8baf7c
008baf6e  00 23                                            movs r3, #0
008baf70  e2 5c                                            ldrb r2, [r4, r3]
008baf72  fa 54                                            strb r2, [r7, r3]
008baf74  01 33                                            adds r3, #1
008baf76  9e 42                                            cmp r6, r3
008baf78  fa d1                                            bne #0x8baf70
008baf7a  bf 19                                            adds r7, r7, r6
008baf7c  00 23                                            movs r3, #0
008baf7e  3b 70                                            strb r3, [r7]
008baf80  8c 23                                            movs r3, #0x8c
008baf82  5b 00                                            lsls r3, r3, #1
008baf84  e8 58                                            ldr r0, [r5, r3]
008baf86  85 42                                            cmp r5, r0
008baf88  0b d0                                            beq #0x8bafa2
008baf8a  00 28                                            cmp r0, #0
008baf8c  09 d0                                            beq #0x8bafa2
008baf8e  2b 1c                                            adds r3, r5, #0
008baf90  14 33                                            adds r3, #0x14
008baf92  29 68                                            ldr r1, [r5]
008baf94  98 42                                            cmp r0, r3
008baf96  04 d0                                            beq #0x8bafa2
008baf98  09 1a                                            subs r1, r1, r0
008baf9a  80 29                                            cmp r1, #0x80
008baf9c  15 d8                                            bhi #0x8bafca
008baf9e  fb f7 5d f9                                      bl #0x8b625c
008bafa2  43 46                                            mov r3, r8
008bafa4  4b 44                                            add r3, sb
008bafa6  2b 60                                            str r3, [r5]
008bafa8  8c 23                                            movs r3, #0x8c
008bafaa  42 46                                            mov r2, r8
008bafac  5b 00                                            lsls r3, r3, #1
008bafae  2f 61                                            str r7, [r5, #0x10]
008bafb0  ea 50                                            str r2, [r5, r3]
008bafb2  b9 e7                                            b #0x8baf28
008bafb4  07 69                                            ldr r7, [r0, #0x10]
008bafb6  03 1c                                            adds r3, r0, #0
008bafb8  10 33                                            adds r3, #0x10
008bafba  db 1b                                            subs r3, r3, r7
008bafbc  9c e7                                            b #0x8baef8
008bafbe  01 90                                            str r0, [sp, #4]
008bafc0  01 a8                                            add r0, sp, #4
008bafc2  58 f6 e8 e4                                      blx #0x313994
008bafc6  80 46                                            mov r8, r0
008bafc8  bf e7                                            b #0x8baf4a
008bafca  53 f6 72 e1                                      blx #0x30e2b0
008bafce  e8 e7                                            b #0x8bafa2
; mapping-symbol data/literal pool
008bafd0  01 01 00 00                                      .byte 0x01, 0x01, 0x00, 0x00

; FUNCTION 0x008bb044, declared_size=120, range_size=120, mode=thumb
; class-group: std::basic_string<char, std::char_traits<char>, std::priv::__iostring_allocator<char> >
; alias: _ZNSbIcSt11char_traitsIcENSt4priv20__iostring_allocatorIcEEE9_M_assignEPKcS6_
; demangled: std::basic_string<char, std::char_traits<char>, std::priv::__iostring_allocator<char> >::_M_assign(char const*, char const*)
; decoder-mode: thumb
008bb044  f0 b5                                            push {r4, r5, r6, r7, lr}
008bb046  47 46                                            mov r7, r8
008bb048  80 b4                                            push {r7}
008bb04a  8c 25                                            movs r5, #0x8c
008bb04c  6d 00                                            lsls r5, r5, #1
008bb04e  03 69                                            ldr r3, [r0, #0x10]
008bb050  04 1c                                            adds r4, r0, #0
008bb052  40 59                                            ldr r0, [r0, r5]
008bb054  17 1c                                            adds r7, r2, #0
008bb056  52 1a                                            subs r2, r2, r1
008bb058  90 46                                            mov r8, r2
008bb05a  1a 1a                                            subs r2, r3, r0
008bb05c  0e 1c                                            adds r6, r1, #0
008bb05e  90 45                                            cmp r8, r2
008bb060  0f d8                                            bhi #0x8bb082
008bb062  42 46                                            mov r2, r8
008bb064  00 2a                                            cmp r2, #0
008bb066  15 d1                                            bne #0x8bb094
008bb068  40 44                                            add r0, r8
008bb06a  98 42                                            cmp r0, r3
008bb06c  05 d0                                            beq #0x8bb07a
008bb06e  1a 78                                            ldrb r2, [r3]
008bb070  02 70                                            strb r2, [r0]
008bb072  c0 1a                                            subs r0, r0, r3
008bb074  23 69                                            ldr r3, [r4, #0x10]
008bb076  18 18                                            adds r0, r3, r0
008bb078  20 61                                            str r0, [r4, #0x10]
008bb07a  20 1c                                            adds r0, r4, #0
008bb07c  04 bc                                            pop {r2}
008bb07e  90 46                                            mov r8, r2
008bb080  f0 bd                                            pop {r4, r5, r6, r7, pc}
008bb082  00 21                                            movs r1, #0
008bb084  00 2a                                            cmp r2, #0
008bb086  0d d1                                            bne #0x8bb0a4
008bb088  71 18                                            adds r1, r6, r1
008bb08a  20 1c                                            adds r0, r4, #0
008bb08c  3a 1c                                            adds r2, r7, #0
008bb08e  ff f7 21 ff                                      bl #0x8baed4
008bb092  f2 e7                                            b #0x8bb07a
008bb094  53 f6 e8 e3                                      blx #0x30e868
008bb098  60 59                                            ldr r0, [r4, r5]
008bb09a  23 69                                            ldr r3, [r4, #0x10]
008bb09c  40 44                                            add r0, r8
008bb09e  98 42                                            cmp r0, r3
008bb0a0  e5 d1                                            bne #0x8bb06e
008bb0a2  ea e7                                            b #0x8bb07a
008bb0a4  31 1c                                            adds r1, r6, #0
008bb0a6  53 f6 e0 e3                                      blx #0x30e868
008bb0aa  63 59                                            ldr r3, [r4, r5]
008bb0ac  21 69                                            ldr r1, [r4, #0x10]
008bb0ae  20 1c                                            adds r0, r4, #0
008bb0b0  3a 1c                                            adds r2, r7, #0
008bb0b2  c9 1a                                            subs r1, r1, r3
008bb0b4  71 18                                            adds r1, r6, r1
008bb0b6  ff f7 0d ff                                      bl #0x8baed4
008bb0ba  de e7                                            b #0x8bb07a

; FUNCTION 0x008bbc64, declared_size=96, range_size=96, mode=thumb
; class-group: std::basic_string<char, std::char_traits<char>, std::priv::__iostring_allocator<char> >
; alias: _ZNSbIcSt11char_traitsIcENSt4priv20__iostring_allocatorIcEEE6appendEjc.clone.1
; demangled: std::basic_string<char, std::char_traits<char>, std::priv::__iostring_allocator<char> >::append(unsigned int, char) [clone .clone.1]
; decoder-mode: thumb
008bbc64  70 b5                                            push {r4, r5, r6, lr}
008bbc66  8c 25                                            movs r5, #0x8c
008bbc68  6d 00                                            lsls r5, r5, #1
008bbc6a  03 69                                            ldr r3, [r0, #0x10]
008bbc6c  42 59                                            ldr r2, [r0, r5]
008bbc6e  0e 1c                                            adds r6, r1, #0
008bbc70  04 1c                                            adds r4, r0, #0
008bbc72  99 1a                                            subs r1, r3, r2
008bbc74  02 31                                            adds r1, #2
008bbc76  18 d0                                            beq #0x8bbcaa
008bbc78  94 42                                            cmp r4, r2
008bbc7a  1d d0                                            beq #0x8bbcb8
008bbc7c  22 68                                            ldr r2, [r4]
008bbc7e  d2 1a                                            subs r2, r2, r3
008bbc80  01 2a                                            cmp r2, #1
008bbc82  08 d9                                            bls #0x8bbc96
008bbc84  00 22                                            movs r2, #0
008bbc86  5a 70                                            strb r2, [r3, #1]
008bbc88  23 69                                            ldr r3, [r4, #0x10]
008bbc8a  20 1c                                            adds r0, r4, #0
008bbc8c  1e 70                                            strb r6, [r3]
008bbc8e  23 69                                            ldr r3, [r4, #0x10]
008bbc90  01 33                                            adds r3, #1
008bbc92  23 61                                            str r3, [r4, #0x10]
008bbc94  70 bd                                            pop {r4, r5, r6, pc}
008bbc96  01 21                                            movs r1, #1
008bbc98  20 1c                                            adds r0, r4, #0
008bbc9a  e9 f7 35 f8                                      bl #0x8a4d08
008bbc9e  01 1c                                            adds r1, r0, #0
008bbca0  20 1c                                            adds r0, r4, #0
008bbca2  ec f7 79 fc                                      bl #0x8a8598
008bbca6  23 69                                            ldr r3, [r4, #0x10]
008bbca8  ec e7                                            b #0x8bbc84
008bbcaa  05 48                                            ldr r0, [pc, #0x14]
008bbcac  78 44                                            add r0, pc
008bbcae  e6 f7 11 fe                                      bl #0x8a28d4
008bbcb2  62 59                                            ldr r2, [r4, r5]
008bbcb4  23 69                                            ldr r3, [r4, #0x10]
008bbcb6  df e7                                            b #0x8bbc78
008bbcb8  22 1c                                            adds r2, r4, #0
008bbcba  10 32                                            adds r2, #0x10
008bbcbc  d2 1a                                            subs r2, r2, r3
008bbcbe  df e7                                            b #0x8bbc80
; mapping-symbol data/literal pool
008bbcc0  38 9b 05 00                                      .byte 0x38, 0x9b, 0x05, 0x00

; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0033254c, declared_size=128, range_size=128, mode=arm
; class-group: std::basic_string<char, std::char_traits<char>, std::allocator<char> > std
; alias: _ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EPKS3_RKS6_
; demangled: std::basic_string<char, std::char_traits<char>, std::allocator<char> > std::operator+<char, std::char_traits<char>, std::allocator<char> >(char const*, std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&)
; decoder-mode: arm
0033254c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00332550  00 40 a0 e1                                      mov r4, r0
00332554  0c d0 4d e2                                      sub sp, sp, #0xc
00332558  01 00 a0 e1                                      mov r0, r1
0033255c  02 50 a0 e1                                      mov r5, r2
00332560  01 60 a0 e1                                      mov r6, r1
00332564  3a 6e ff eb                                      bl #0x30de54
00332568  14 30 95 e5                                      ldr r3, [r5, #0x14]
0033256c  10 10 95 e5                                      ldr r1, [r5, #0x10]
00332570  00 70 a0 e1                                      mov r7, r0
00332574  10 40 84 e5                                      str r4, [r4, #0x10]
00332578  01 10 63 e0                                      rsb r1, r3, r1
0033257c  01 10 81 e2                                      add r1, r1, #1
00332580  00 10 81 e0                                      add r1, r1, r0
00332584  14 40 84 e5                                      str r4, [r4, #0x14]
00332588  04 00 a0 e1                                      mov r0, r4
0033258c  3a 7c ff eb                                      bl #0x31167c
00332590  10 30 94 e5                                      ldr r3, [r4, #0x10]
00332594  00 20 a0 e3                                      mov r2, #0
00332598  06 10 a0 e1                                      mov r1, r6
0033259c  00 20 c3 e5                                      strb r2, [r3]
003325a0  04 00 a0 e1                                      mov r0, r4
003325a4  07 20 86 e0                                      add r2, r6, r7
003325a8  04 30 8d e2                                      add r3, sp, #4
003325ac  76 e0 ff eb                                      bl #0x32a78c
003325b0  04 00 a0 e1                                      mov r0, r4
003325b4  10 20 95 e5                                      ldr r2, [r5, #0x10]
003325b8  14 10 95 e5                                      ldr r1, [r5, #0x14]
003325bc  90 78 ff eb                                      bl #0x310804
003325c0  04 00 a0 e1                                      mov r0, r4
003325c4  0c d0 8d e2                                      add sp, sp, #0xc
003325c8  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x003338cc, declared_size=128, range_size=128, mode=arm
; class-group: std::basic_string<char, std::char_traits<char>, std::allocator<char> > std
; alias: _ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_PKS3_
; demangled: std::basic_string<char, std::char_traits<char>, std::allocator<char> > std::operator+<char, std::char_traits<char>, std::allocator<char> >(std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, char const*)
; decoder-mode: arm
003338cc  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
003338d0  00 40 a0 e1                                      mov r4, r0
003338d4  0c d0 4d e2                                      sub sp, sp, #0xc
003338d8  02 00 a0 e1                                      mov r0, r2
003338dc  02 70 a0 e1                                      mov r7, r2
003338e0  01 50 a0 e1                                      mov r5, r1
003338e4  5a 69 ff eb                                      bl #0x30de54
003338e8  14 30 95 e5                                      ldr r3, [r5, #0x14]
003338ec  10 10 95 e5                                      ldr r1, [r5, #0x10]
003338f0  00 60 a0 e1                                      mov r6, r0
003338f4  10 40 84 e5                                      str r4, [r4, #0x10]
003338f8  01 10 63 e0                                      rsb r1, r3, r1
003338fc  01 10 81 e2                                      add r1, r1, #1
00333900  00 10 81 e0                                      add r1, r1, r0
00333904  14 40 84 e5                                      str r4, [r4, #0x14]
00333908  04 00 a0 e1                                      mov r0, r4
0033390c  5a 77 ff eb                                      bl #0x31167c
00333910  10 30 94 e5                                      ldr r3, [r4, #0x10]
00333914  00 20 a0 e3                                      mov r2, #0
00333918  04 00 a0 e1                                      mov r0, r4
0033391c  00 20 c3 e5                                      strb r2, [r3]
00333920  10 20 95 e5                                      ldr r2, [r5, #0x10]
00333924  14 10 95 e5                                      ldr r1, [r5, #0x14]
00333928  b5 73 ff eb                                      bl #0x310804
0033392c  04 00 a0 e1                                      mov r0, r4
00333930  07 10 a0 e1                                      mov r1, r7
00333934  06 20 87 e0                                      add r2, r7, r6
00333938  04 30 8d e2                                      add r3, sp, #4
0033393c  92 db ff eb                                      bl #0x32a78c
00333940  04 00 a0 e1                                      mov r0, r4
00333944  0c d0 8d e2                                      add sp, sp, #0xc
00333948  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x003ecf68, declared_size=112, range_size=112, mode=arm
; class-group: std::basic_string<char, std::char_traits<char>, std::allocator<char> > std
; alias: _ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_S8_
; demangled: std::basic_string<char, std::char_traits<char>, std::allocator<char> > std::operator+<char, std::char_traits<char>, std::allocator<char> >(std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&)
; decoder-mode: arm
003ecf68  70 40 2d e9                                      push {r4, r5, r6, lr}
003ecf6c  02 50 a0 e1                                      mov r5, r2
003ecf70  10 c0 91 e5                                      ldr ip, [r1, #0x10]
003ecf74  10 20 92 e5                                      ldr r2, [r2, #0x10]
003ecf78  14 30 95 e5                                      ldr r3, [r5, #0x14]
003ecf7c  01 60 a0 e1                                      mov r6, r1
003ecf80  14 10 91 e5                                      ldr r1, [r1, #0x14]
003ecf84  02 30 63 e0                                      rsb r3, r3, r2
003ecf88  00 40 a0 e1                                      mov r4, r0
003ecf8c  0c 10 61 e0                                      rsb r1, r1, ip
003ecf90  03 10 81 e0                                      add r1, r1, r3
003ecf94  10 00 84 e5                                      str r0, [r4, #0x10]
003ecf98  14 00 84 e5                                      str r0, [r4, #0x14]
003ecf9c  01 10 81 e2                                      add r1, r1, #1
003ecfa0  b5 91 fc eb                                      bl #0x31167c
003ecfa4  10 30 94 e5                                      ldr r3, [r4, #0x10]
003ecfa8  00 20 a0 e3                                      mov r2, #0
003ecfac  04 00 a0 e1                                      mov r0, r4
003ecfb0  00 20 c3 e5                                      strb r2, [r3]
003ecfb4  10 20 96 e5                                      ldr r2, [r6, #0x10]
003ecfb8  14 10 96 e5                                      ldr r1, [r6, #0x14]
003ecfbc  10 8e fc eb                                      bl #0x310804
003ecfc0  04 00 a0 e1                                      mov r0, r4
003ecfc4  10 20 95 e5                                      ldr r2, [r5, #0x10]
003ecfc8  14 10 95 e5                                      ldr r1, [r5, #0x14]
003ecfcc  0c 8e fc eb                                      bl #0x310804
003ecfd0  04 00 a0 e1                                      mov r0, r4
003ecfd4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00461b64, declared_size=324, range_size=324, mode=arm
; class-group: std::basic_string<char, std::char_traits<char>, std::allocator<char> > std
; alias: _ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_PKS3_.clone.1
; demangled: std::basic_string<char, std::char_traits<char>, std::allocator<char> > std::operator+<char, std::char_traits<char>, std::allocator<char> >(std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, char const*) [clone .clone.1]
; decoder-mode: arm
00461b64  70 40 2d e9                                      push {r4, r5, r6, lr}
00461b68  01 50 a0 e1                                      mov r5, r1
00461b6c  14 30 95 e5                                      ldr r3, [r5, #0x14]
00461b70  10 10 91 e5                                      ldr r1, [r1, #0x10]
00461b74  00 40 a0 e1                                      mov r4, r0
00461b78  08 d0 4d e2                                      sub sp, sp, #8
00461b7c  01 10 63 e0                                      rsb r1, r3, r1
00461b80  10 00 84 e5                                      str r0, [r4, #0x10]
00461b84  05 10 81 e2                                      add r1, r1, #5
00461b88  14 00 84 e5                                      str r0, [r4, #0x14]
00461b8c  ba be fa eb                                      bl #0x31167c
00461b90  10 30 94 e5                                      ldr r3, [r4, #0x10]
00461b94  00 20 a0 e3                                      mov r2, #0
00461b98  04 00 a0 e1                                      mov r0, r4
00461b9c  00 20 c3 e5                                      strb r2, [r3]
00461ba0  10 20 95 e5                                      ldr r2, [r5, #0x10]
00461ba4  14 10 95 e5                                      ldr r1, [r5, #0x14]
00461ba8  15 bb fa eb                                      bl #0x310804
00461bac  14 30 94 e5                                      ldr r3, [r4, #0x14]
00461bb0  03 00 54 e1                                      cmp r4, r3
00461bb4  10 30 94 05                                      ldreq r3, [r4, #0x10]
00461bb8  00 20 94 15                                      ldrne r2, [r4]
00461bbc  10 30 94 15                                      ldrne r3, [r4, #0x10]
00461bc0  10 20 84 02                                      addeq r2, r4, #0x10
00461bc4  02 20 63 e0                                      rsb r2, r3, r2
00461bc8  04 00 52 e3                                      cmp r2, #4
00461bcc  12 00 00 9a                                      bls #0x461c1c
00461bd0  2e 20 a0 e3                                      mov r2, #0x2e
00461bd4  00 20 c3 e5                                      strb r2, [r3]
00461bd8  10 20 94 e5                                      ldr r2, [r4, #0x10]
00461bdc  62 10 a0 e3                                      mov r1, #0x62
00461be0  01 10 c2 e5                                      strb r1, [r2, #1]
00461be4  01 30 82 e2                                      add r3, r2, #1
00461be8  6b 20 a0 e3                                      mov r2, #0x6b
00461bec  02 20 c3 e5                                      strb r2, [r3, #2]
00461bf0  61 20 a0 e3                                      mov r2, #0x61
00461bf4  01 20 c3 e5                                      strb r2, [r3, #1]
00461bf8  10 30 94 e5                                      ldr r3, [r4, #0x10]
00461bfc  00 20 a0 e3                                      mov r2, #0
00461c00  04 20 c3 e5                                      strb r2, [r3, #4]
00461c04  10 30 94 e5                                      ldr r3, [r4, #0x10]
00461c08  04 30 83 e2                                      add r3, r3, #4
00461c0c  10 30 84 e5                                      str r3, [r4, #0x10]
00461c10  04 00 a0 e1                                      mov r0, r4
00461c14  08 d0 8d e2                                      add sp, sp, #8
00461c18  70 80 bd e8                                      pop {r4, r5, r6, pc}
00461c1c  04 10 a0 e3                                      mov r1, #4
00461c20  04 00 a0 e1                                      mov r0, r4
00461c24  dd ba fa eb                                      bl #0x3107a0
00461c28  08 20 8d e2                                      add r2, sp, #8
00461c2c  00 10 a0 e1                                      mov r1, r0
00461c30  04 00 22 e5                                      str r0, [r2, #-4]!
00461c34  14 00 84 e2                                      add r0, r4, #0x14
00461c38  83 e2 fa eb                                      bl #0x31a64c
00461c3c  14 10 94 e5                                      ldr r1, [r4, #0x14]
00461c40  10 60 94 e5                                      ldr r6, [r4, #0x10]
00461c44  00 50 a0 e1                                      mov r5, r0
00461c48  06 00 51 e1                                      cmp r1, r6
00461c4c  00 00 a0 01                                      moveq r0, r0
00461c50  03 00 00 0a                                      beq #0x461c64
00461c54  06 60 61 e0                                      rsb r6, r1, r6
00461c58  06 20 a0 e1                                      mov r2, r6
00461c5c  01 b3 fa eb                                      bl #0x30e868
00461c60  06 00 80 e0                                      add r0, r0, r6
00461c64  38 10 9f e5                                      ldr r1, [pc, #0x38]
00461c68  04 20 a0 e3                                      mov r2, #4
00461c6c  01 10 8f e0                                      add r1, pc, r1
00461c70  fc b2 fa eb                                      bl #0x30e868
00461c74  00 30 a0 e3                                      mov r3, #0
00461c78  04 30 c0 e5                                      strb r3, [r0, #4]
00461c7c  00 60 a0 e1                                      mov r6, r0
00461c80  04 00 a0 e1                                      mov r0, r4
00461c84  48 c7 fa eb                                      bl #0x3139ac
00461c88  04 30 9d e5                                      ldr r3, [sp, #4]
00461c8c  04 60 86 e2                                      add r6, r6, #4
00461c90  14 50 84 e5                                      str r5, [r4, #0x14]
00461c94  03 50 85 e0                                      add r5, r5, r3
00461c98  10 60 84 e5                                      str r6, [r4, #0x10]
00461c9c  00 50 84 e5                                      str r5, [r4]
00461ca0  da ff ff ea                                      b #0x461c10
; mapping-symbol data/literal pool
00461ca4  f4 c8 45 00                                      .byte 0xf4, 0xc8, 0x45, 0x00

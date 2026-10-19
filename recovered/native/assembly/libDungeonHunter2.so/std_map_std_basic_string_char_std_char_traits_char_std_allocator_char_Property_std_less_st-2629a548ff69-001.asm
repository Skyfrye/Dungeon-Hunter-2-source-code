; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00513318, declared_size=424, range_size=424, mode=arm
; class-group: std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > >& std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > > >
; alias: _ZNSt3mapISsS_ISsP8PropertySt4lessISsESaISt4pairIKSsS1_EEES3_SaIS4_IS5_S8_EEEixISsEERS8_RKT_
; demangled: std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > >& std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > > >::operator[]<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >(std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&)
; decoder-mode: arm
00513318  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0051331c  94 91 9f e5                                      ldr sb, [pc, #0x194]
00513320  94 21 9f e5                                      ldr r2, [pc, #0x194]
00513324  64 d0 4d e2                                      sub sp, sp, #0x64
00513328  09 90 8f e0                                      add sb, pc, sb
0051332c  02 30 99 e7                                      ldr r3, [sb, r2]
00513330  04 20 8d e5                                      str r2, [sp, #4]
00513334  04 40 90 e5                                      ldr r4, [r0, #4]
00513338  00 30 93 e5                                      ldr r3, [r3]
0051333c  00 b0 a0 e1                                      mov fp, r0
00513340  00 00 54 e3                                      cmp r4, #0
00513344  01 a0 a0 e1                                      mov sl, r1
00513348  5c 30 8d e5                                      str r3, [sp, #0x5c]
0051334c  00 40 a0 01                                      moveq r4, r0
00513350  1b 00 00 0a                                      beq #0x5133c4
00513354  14 80 91 e5                                      ldr r8, [r1, #0x14]
00513358  10 60 91 e5                                      ldr r6, [r1, #0x10]
0051335c  00 70 a0 e1                                      mov r7, r0
00513360  06 60 68 e0                                      rsb r6, r8, r6
00513364  24 30 94 e5                                      ldr r3, [r4, #0x24]
00513368  20 50 94 e5                                      ldr r5, [r4, #0x20]
0051336c  08 10 a0 e1                                      mov r1, r8
00513370  03 00 a0 e1                                      mov r0, r3
00513374  05 50 63 e0                                      rsb r5, r3, r5
00513378  05 00 56 e1                                      cmp r6, r5
0051337c  06 20 a0 b1                                      movlt r2, r6
00513380  05 20 a0 a1                                      movge r2, r5
00513384  95 ec f7 eb                                      bl #0x30e5e0
00513388  00 00 50 e3                                      cmp r0, #0
0051338c  07 00 00 1a                                      bne #0x5133b0
00513390  06 00 55 e1                                      cmp r5, r6
00513394  06 00 00 ba                                      blt #0x5133b4
00513398  08 30 94 e5                                      ldr r3, [r4, #8]
0051339c  00 00 53 e3                                      cmp r3, #0
005133a0  07 00 00 0a                                      beq #0x5133c4
005133a4  04 70 a0 e1                                      mov r7, r4
005133a8  03 40 a0 e1                                      mov r4, r3
005133ac  ec ff ff ea                                      b #0x513364
005133b0  f8 ff ff aa                                      bge #0x513398
005133b4  0c 30 94 e5                                      ldr r3, [r4, #0xc]
005133b8  07 40 a0 e1                                      mov r4, r7
005133bc  00 00 53 e3                                      cmp r3, #0
005133c0  f7 ff ff 1a                                      bne #0x5133a4
005133c4  04 00 5b e1                                      cmp fp, r4
005133c8  0f 00 00 0a                                      beq #0x51340c
005133cc  14 30 9a e5                                      ldr r3, [sl, #0x14]
005133d0  24 10 94 e5                                      ldr r1, [r4, #0x24]
005133d4  10 50 9a e5                                      ldr r5, [sl, #0x10]
005133d8  20 60 94 e5                                      ldr r6, [r4, #0x20]
005133dc  03 00 a0 e1                                      mov r0, r3
005133e0  05 50 63 e0                                      rsb r5, r3, r5
005133e4  06 60 61 e0                                      rsb r6, r1, r6
005133e8  05 00 56 e1                                      cmp r6, r5
005133ec  06 20 a0 b1                                      movlt r2, r6
005133f0  05 20 a0 a1                                      movge r2, r5
005133f4  79 ec f7 eb                                      bl #0x30e5e0
005133f8  00 00 50 e3                                      cmp r0, #0
005133fc  04 00 a0 e1                                      mov r0, r4
00513400  25 00 00 1a                                      bne #0x51349c
00513404  06 00 55 e1                                      cmp r5, r6
00513408  1a 00 00 aa                                      bge #0x513478
0051340c  00 30 a0 e3                                      mov r3, #0
00513410  60 50 8d e2                                      add r5, sp, #0x60
00513414  2c 60 8d e2                                      add r6, sp, #0x2c
00513418  54 30 65 e5                                      strb r3, [r5, #-0x54]!
0051341c  0a 10 a0 e1                                      mov r1, sl
00513420  06 00 a0 e1                                      mov r0, r6
00513424  1c 30 8d e5                                      str r3, [sp, #0x1c]
00513428  10 30 8d e5                                      str r3, [sp, #0x10]
0051342c  14 50 8d e5                                      str r5, [sp, #0x14]
00513430  18 50 8d e5                                      str r5, [sp, #0x18]
00513434  37 61 f8 eb                                      bl #0x32b918
00513438  05 10 a0 e1                                      mov r1, r5
0051343c  18 00 86 e2                                      add r0, r6, #0x18
00513440  3a f7 ff eb                                      bl #0x511130
00513444  06 30 a0 e1                                      mov r3, r6
00513448  0b 10 a0 e1                                      mov r1, fp
0051344c  28 00 8d e2                                      add r0, sp, #0x28
00513450  24 20 8d e2                                      add r2, sp, #0x24
00513454  24 40 8d e5                                      str r4, [sp, #0x24]
00513458  6d fe ff eb                                      bl #0x512e14
0051345c  06 00 a0 e1                                      mov r0, r6
00513460  28 40 9d e5                                      ldr r4, [sp, #0x28]
00513464  0b f6 ff eb                                      bl #0x510c98
00513468  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
0051346c  00 00 53 e3                                      cmp r3, #0
00513470  0b 00 00 1a                                      bne #0x5134a4
00513474  04 00 a0 e1                                      mov r0, r4
00513478  04 20 9d e5                                      ldr r2, [sp, #4]
0051347c  28 00 80 e2                                      add r0, r0, #0x28
00513480  02 30 99 e7                                      ldr r3, [sb, r2]
00513484  5c 20 9d e5                                      ldr r2, [sp, #0x5c]
00513488  00 30 93 e5                                      ldr r3, [r3]
0051348c  03 00 52 e1                                      cmp r2, r3
00513490  07 00 00 1a                                      bne #0x5134b4
00513494  64 d0 8d e2                                      add sp, sp, #0x64
00513498  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0051349c  da ff ff ba                                      blt #0x51340c
005134a0  f4 ff ff ea                                      b #0x513478
005134a4  05 00 a0 e1                                      mov r0, r5
005134a8  10 10 9d e5                                      ldr r1, [sp, #0x10]
005134ac  e9 f5 ff eb                                      bl #0x510c58
005134b0  ef ff ff ea                                      b #0x513474
005134b4  95 eb f7 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
005134b8  68 17 48 00 ac 40 00 00                          .byte 0x68, 0x17, 0x48, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x00513aa8, declared_size=572, range_size=572, mode=arm
; class-group: std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > >& std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > > >
; alias: _ZNSt3mapISsS_ISsP8PropertySt4lessISsESaISt4pairIKSsS1_EEES3_SaIS4_IS5_S8_EEEixIA1_cEERS8_RKT_.clone.3
; demangled: std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > >& std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > > >::operator[]<char [1]>(char const (&) [1]) [clone .clone.3]
; decoder-mode: arm
00513aa8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00513aac  1c 52 9f e5                                      ldr r5, [pc, #0x21c]
00513ab0  1c 22 9f e5                                      ldr r2, [pc, #0x21c]
00513ab4  bc d0 4d e2                                      sub sp, sp, #0xbc
00513ab8  05 50 8f e0                                      add r5, pc, r5
00513abc  02 30 95 e7                                      ldr r3, [r5, r2]
00513ac0  08 20 8d e5                                      str r2, [sp, #8]
00513ac4  04 60 90 e5                                      ldr r6, [r0, #4]
00513ac8  00 30 93 e5                                      ldr r3, [r3]
00513acc  00 a0 a0 e1                                      mov sl, r0
00513ad0  00 00 56 e3                                      cmp r6, #0
00513ad4  b4 30 8d e5                                      str r3, [sp, #0xb4]
00513ad8  00 40 a0 01                                      moveq r4, r0
00513adc  25 00 00 0a                                      beq #0x513b78
00513ae0  f0 b1 9f e5                                      ldr fp, [pc, #0x1f0]
00513ae4  30 30 8d e2                                      add r3, sp, #0x30
00513ae8  00 40 a0 e1                                      mov r4, r0
00513aec  6c 70 8d e2                                      add r7, sp, #0x6c
00513af0  0b b0 8f e0                                      add fp, pc, fp
00513af4  0c 30 8d e5                                      str r3, [sp, #0xc]
00513af8  0b 10 a0 e1                                      mov r1, fp
00513afc  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00513b00  07 00 a0 e1                                      mov r0, r7
00513b04  78 01 f8 eb                                      bl #0x3140ec
00513b08  24 30 96 e5                                      ldr r3, [r6, #0x24]
00513b0c  80 10 9d e5                                      ldr r1, [sp, #0x80]
00513b10  20 80 96 e5                                      ldr r8, [r6, #0x20]
00513b14  7c 90 9d e5                                      ldr sb, [sp, #0x7c]
00513b18  03 00 a0 e1                                      mov r0, r3
00513b1c  08 80 63 e0                                      rsb r8, r3, r8
00513b20  09 90 61 e0                                      rsb sb, r1, sb
00513b24  08 00 59 e1                                      cmp sb, r8
00513b28  09 20 a0 b1                                      movlt r2, sb
00513b2c  08 20 a0 a1                                      movge r2, r8
00513b30  aa ea f7 eb                                      bl #0x30e5e0
00513b34  00 30 50 e2                                      subs r3, r0, #0
00513b38  04 00 00 1a                                      bne #0x513b50
00513b3c  09 00 58 e1                                      cmp r8, sb
00513b40  00 30 e0 b3                                      mvnlt r3, #0
00513b44  01 00 00 ba                                      blt #0x513b50
00513b48  00 30 a0 d3                                      movle r3, #0
00513b4c  01 30 a0 c3                                      movgt r3, #1
00513b50  07 00 a0 e1                                      mov r0, r7
00513b54  04 30 8d e5                                      str r3, [sp, #4]
00513b58  bd 11 f8 eb                                      bl #0x318254
00513b5c  04 30 9d e5                                      ldr r3, [sp, #4]
00513b60  00 00 53 e3                                      cmp r3, #0
00513b64  06 40 a0 a1                                      movge r4, r6
00513b68  0c 60 96 b5                                      ldrlt r6, [r6, #0xc]
00513b6c  08 60 96 a5                                      ldrge r6, [r6, #8]
00513b70  00 00 56 e3                                      cmp r6, #0
00513b74  df ff ff 1a                                      bne #0x513af8
00513b78  04 00 5a e1                                      cmp sl, r4
00513b7c  24 00 00 0a                                      beq #0x513c14
00513b80  54 11 9f e5                                      ldr r1, [pc, #0x154]
00513b84  84 60 8d e2                                      add r6, sp, #0x84
00513b88  34 20 8d e2                                      add r2, sp, #0x34
00513b8c  01 10 8f e0                                      add r1, pc, r1
00513b90  06 00 a0 e1                                      mov r0, r6
00513b94  54 01 f8 eb                                      bl #0x3140ec
00513b98  98 30 9d e5                                      ldr r3, [sp, #0x98]
00513b9c  24 10 94 e5                                      ldr r1, [r4, #0x24]
00513ba0  20 70 94 e5                                      ldr r7, [r4, #0x20]
00513ba4  94 80 9d e5                                      ldr r8, [sp, #0x94]
00513ba8  03 00 a0 e1                                      mov r0, r3
00513bac  07 70 61 e0                                      rsb r7, r1, r7
00513bb0  08 80 63 e0                                      rsb r8, r3, r8
00513bb4  08 00 57 e1                                      cmp r7, r8
00513bb8  07 20 a0 b1                                      movlt r2, r7
00513bbc  08 20 a0 a1                                      movge r2, r8
00513bc0  86 ea f7 eb                                      bl #0x30e5e0
00513bc4  00 00 50 e3                                      cmp r0, #0
00513bc8  04 90 a0 e1                                      mov sb, r4
00513bcc  0d 00 00 1a                                      bne #0x513c08
00513bd0  07 00 58 e1                                      cmp r8, r7
00513bd4  0c 00 00 ba                                      blt #0x513c0c
00513bd8  06 00 a0 e1                                      mov r0, r6
00513bdc  9c 11 f8 eb                                      bl #0x318254
00513be0  08 20 9d e5                                      ldr r2, [sp, #8]
00513be4  28 00 89 e2                                      add r0, sb, #0x28
00513be8  02 30 95 e7                                      ldr r3, [r5, r2]
00513bec  b4 20 9d e5                                      ldr r2, [sp, #0xb4]
00513bf0  00 30 93 e5                                      ldr r3, [r3]
00513bf4  03 00 52 e1                                      cmp r2, r3
00513bf8  01 00 00 1a                                      bne #0x513c04
00513bfc  bc d0 8d e2                                      add sp, sp, #0xbc
00513c00  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00513c04  c1 e9 f7 eb                                      bl #0x30e310
00513c08  f2 ff ff aa                                      bge #0x513bd8
00513c0c  06 00 a0 e1                                      mov r0, r6
00513c10  8f 11 f8 eb                                      bl #0x318254
00513c14  c4 10 9f e5                                      ldr r1, [pc, #0xc4]
00513c18  9c 90 8d e2                                      add sb, sp, #0x9c
00513c1c  38 20 8d e2                                      add r2, sp, #0x38
00513c20  b8 60 8d e2                                      add r6, sp, #0xb8
00513c24  3c 70 8d e2                                      add r7, sp, #0x3c
00513c28  00 80 a0 e3                                      mov r8, #0
00513c2c  01 10 8f e0                                      add r1, pc, r1
00513c30  09 00 a0 e1                                      mov r0, sb
00513c34  2c 01 f8 eb                                      bl #0x3140ec
00513c38  a8 80 66 e5                                      strb r8, [r6, #-0xa8]!
00513c3c  09 10 a0 e1                                      mov r1, sb
00513c40  07 00 a0 e1                                      mov r0, r7
00513c44  14 80 8d e5                                      str r8, [sp, #0x14]
00513c48  18 60 8d e5                                      str r6, [sp, #0x18]
00513c4c  1c 60 8d e5                                      str r6, [sp, #0x1c]
00513c50  20 80 8d e5                                      str r8, [sp, #0x20]
00513c54  2f 5f f8 eb                                      bl #0x32b918
00513c58  06 10 a0 e1                                      mov r1, r6
00513c5c  18 00 87 e2                                      add r0, r7, #0x18
00513c60  32 f5 ff eb                                      bl #0x511130
00513c64  07 30 a0 e1                                      mov r3, r7
00513c68  0a 10 a0 e1                                      mov r1, sl
00513c6c  28 00 8d e2                                      add r0, sp, #0x28
00513c70  2c 20 8d e2                                      add r2, sp, #0x2c
00513c74  2c 40 8d e5                                      str r4, [sp, #0x2c]
00513c78  65 fc ff eb                                      bl #0x512e14
00513c7c  07 00 a0 e1                                      mov r0, r7
00513c80  28 40 9d e5                                      ldr r4, [sp, #0x28]
00513c84  03 f4 ff eb                                      bl #0x510c98
00513c88  20 30 9d e5                                      ldr r3, [sp, #0x20]
00513c8c  08 00 53 e1                                      cmp r3, r8
00513c90  03 00 00 1a                                      bne #0x513ca4
00513c94  09 00 a0 e1                                      mov r0, sb
00513c98  6d 11 f8 eb                                      bl #0x318254
00513c9c  04 90 a0 e1                                      mov sb, r4
00513ca0  ce ff ff ea                                      b #0x513be0
00513ca4  06 00 a0 e1                                      mov r0, r6
00513ca8  14 10 9d e5                                      ldr r1, [sp, #0x14]
00513cac  e9 f3 ff eb                                      bl #0x510c58
00513cb0  09 00 a0 e1                                      mov r0, sb
00513cb4  1c 60 8d e5                                      str r6, [sp, #0x1c]
00513cb8  20 80 8d e5                                      str r8, [sp, #0x20]
00513cbc  18 60 8d e5                                      str r6, [sp, #0x18]
00513cc0  14 80 8d e5                                      str r8, [sp, #0x14]
00513cc4  04 90 a0 e1                                      mov sb, r4
00513cc8  61 11 f8 eb                                      bl #0x318254
00513ccc  c3 ff ff ea                                      b #0x513be0
; mapping-symbol data/literal pool
00513cd0  d8 0f 48 00 ac 40 00 00 18 7d 3b 00 7c 7c 3b 00  .byte 0xd8, 0x0f, 0x48, 0x00, 0xac, 0x40, 0x00, 0x00, 0x18, 0x7d, 0x3b, 0x00, 0x7c, 0x7c, 0x3b, 0x00
00513ce0  dc 7b 3b 00                                      .byte 0xdc, 0x7b, 0x3b, 0x00

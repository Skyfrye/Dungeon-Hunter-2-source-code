; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00483b40, declared_size=380, range_size=380, mode=arm
; class-group: std::reverse_iterator<char const*> std::priv
; alias: _ZNSt4priv9__find_ifISt16reverse_iteratorIPKcENS_14_Eq_char_boundISt11char_traitsIcEEEEET_S9_S9_T0_RKSt26random_access_iterator_tag
; demangled: std::reverse_iterator<char const*> std::priv::__find_if<std::reverse_iterator<char const*>, std::priv::_Eq_char_bound<std::char_traits<char> > >(std::reverse_iterator<char const*>, std::reverse_iterator<char const*>, std::priv::_Eq_char_bound<std::char_traits<char> >, std::random_access_iterator_tag const&)
; decoder-mode: arm
00483b40  f0 05 2d e9                                      push {r4, r5, r6, r7, r8, sl}
00483b44  00 40 92 e5                                      ldr r4, [r2]
00483b48  00 c0 91 e5                                      ldr ip, [r1]
00483b4c  0c 60 64 e0                                      rsb r6, r4, ip
00483b50  46 51 a0 e1                                      asr r5, r6, #2
00483b54  00 00 55 e3                                      cmp r5, #0
00483b58  33 00 00 da                                      ble #0x483c2c
00483b5c  d1 70 5c e1                                      ldrsb r7, [ip, #-1]
00483b60  d0 40 d3 e1                                      ldrsb r4, [r3]
00483b64  01 60 4c e2                                      sub r6, ip, #1
00483b68  04 00 57 e1                                      cmp r7, r4
00483b6c  42 00 00 0a                                      beq #0x483c7c
00483b70  00 60 81 e5                                      str r6, [r1]
00483b74  d1 80 56 e1                                      ldrsb r8, [r6, #-1]
00483b78  d0 40 d3 e1                                      ldrsb r4, [r3]
00483b7c  01 70 46 e2                                      sub r7, r6, #1
00483b80  04 00 58 e1                                      cmp r8, r4
00483b84  3f 00 00 0a                                      beq #0x483c88
00483b88  00 70 81 e5                                      str r7, [r1]
00483b8c  d1 60 57 e1                                      ldrsb r6, [r7, #-1]
00483b90  d0 40 d3 e1                                      ldrsb r4, [r3]
00483b94  01 80 47 e2                                      sub r8, r7, #1
00483b98  04 00 56 e1                                      cmp r6, r4
00483b9c  3b 00 00 0a                                      beq #0x483c90
00483ba0  00 80 81 e5                                      str r8, [r1]
00483ba4  d0 40 d3 e1                                      ldrsb r4, [r3]
00483ba8  d1 60 58 e1                                      ldrsb r6, [r8, #-1]
00483bac  04 00 56 e1                                      cmp r6, r4
00483bb0  04 40 4c 12                                      subne r4, ip, #4
00483bb4  16 00 00 1a                                      bne #0x483c14
00483bb8  36 00 00 ea                                      b #0x483c98
00483bbc  d1 a0 54 e1                                      ldrsb sl, [r4, #-1]
00483bc0  d0 80 d3 e1                                      ldrsb r8, [r3]
00483bc4  01 60 44 e2                                      sub r6, r4, #1
00483bc8  02 70 44 e2                                      sub r7, r4, #2
00483bcc  08 00 5a e1                                      cmp sl, r8
00483bd0  29 00 00 0a                                      beq #0x483c7c
00483bd4  00 60 81 e5                                      str r6, [r1]
00483bd8  d2 a0 54 e1                                      ldrsb sl, [r4, #-2]
00483bdc  d0 c0 d3 e1                                      ldrsb ip, [r3]
00483be0  03 80 44 e2                                      sub r8, r4, #3
00483be4  0c 00 5a e1                                      cmp sl, ip
00483be8  26 00 00 0a                                      beq #0x483c88
00483bec  00 70 81 e5                                      str r7, [r1]
00483bf0  d3 60 54 e1                                      ldrsb r6, [r4, #-3]
00483bf4  d0 c0 d3 e1                                      ldrsb ip, [r3]
00483bf8  0c 00 56 e1                                      cmp r6, ip
00483bfc  23 00 00 0a                                      beq #0x483c90
00483c00  00 80 81 e5                                      str r8, [r1]
00483c04  d0 60 d3 e1                                      ldrsb r6, [r3]
00483c08  d4 c0 74 e1                                      ldrsb ip, [r4, #-4]!
00483c0c  0c 00 56 e1                                      cmp r6, ip
00483c10  20 00 00 0a                                      beq #0x483c98
00483c14  01 50 55 e2                                      subs r5, r5, #1
00483c18  04 c0 a0 e1                                      mov ip, r4
00483c1c  00 40 81 e5                                      str r4, [r1]
00483c20  e5 ff ff 1a                                      bne #0x483bbc
00483c24  00 40 92 e5                                      ldr r4, [r2]
00483c28  0c 60 64 e0                                      rsb r6, r4, ip
00483c2c  02 00 56 e3                                      cmp r6, #2
00483c30  05 00 00 0a                                      beq #0x483c4c
00483c34  03 00 56 e3                                      cmp r6, #3
00483c38  18 00 00 0a                                      beq #0x483ca0
00483c3c  01 00 56 e3                                      cmp r6, #1
00483c40  08 00 00 0a                                      beq #0x483c68
00483c44  00 40 80 e5                                      str r4, [r0]
00483c48  0c 00 00 ea                                      b #0x483c80
00483c4c  0c 40 a0 e1                                      mov r4, ip
00483c50  d1 60 54 e1                                      ldrsb r6, [r4, #-1]
00483c54  d0 50 d3 e1                                      ldrsb r5, [r3]
00483c58  01 c0 44 e2                                      sub ip, r4, #1
00483c5c  05 00 56 e1                                      cmp r6, r5
00483c60  00 c0 81 15                                      strne ip, [r1]
00483c64  f6 ff ff 0a                                      beq #0x483c44
00483c68  d0 30 d3 e1                                      ldrsb r3, [r3]
00483c6c  d1 10 5c e1                                      ldrsb r1, [ip, #-1]
00483c70  03 00 51 e1                                      cmp r1, r3
00483c74  00 40 92 15                                      ldrne r4, [r2]
00483c78  f1 ff ff 1a                                      bne #0x483c44
00483c7c  00 c0 80 e5                                      str ip, [r0]
00483c80  f0 05 bd e8                                      pop {r4, r5, r6, r7, r8, sl}
00483c84  1e ff 2f e1                                      bx lr
00483c88  00 60 80 e5                                      str r6, [r0]
00483c8c  fb ff ff ea                                      b #0x483c80
00483c90  00 70 80 e5                                      str r7, [r0]
00483c94  f9 ff ff ea                                      b #0x483c80
00483c98  00 80 80 e5                                      str r8, [r0]
00483c9c  f7 ff ff ea                                      b #0x483c80
00483ca0  d1 60 5c e1                                      ldrsb r6, [ip, #-1]
00483ca4  d0 50 d3 e1                                      ldrsb r5, [r3]
00483ca8  01 40 4c e2                                      sub r4, ip, #1
00483cac  05 00 56 e1                                      cmp r6, r5
00483cb0  00 40 81 15                                      strne r4, [r1]
00483cb4  e5 ff ff 1a                                      bne #0x483c50
00483cb8  ef ff ff ea                                      b #0x483c7c

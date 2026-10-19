; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003ef284, declared_size=272, range_size=272, mode=arm
; class-group: std::reverse_iterator<char const*> std
; alias: _ZSt6searchISt16reverse_iteratorIPKcES3_NSt4priv10_Eq_traitsISt11char_traitsIcEEEET_S9_S9_T0_SA_T1_
; demangled: std::reverse_iterator<char const*> std::search<std::reverse_iterator<char const*>, std::reverse_iterator<char const*>, std::priv::_Eq_traits<std::char_traits<char> > >(std::reverse_iterator<char const*>, std::reverse_iterator<char const*>, std::reverse_iterator<char const*>, std::reverse_iterator<char const*>, std::priv::_Eq_traits<std::char_traits<char> >)
; decoder-mode: arm
003ef284  f0 0f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp}
003ef288  00 c0 91 e5                                      ldr ip, [r1]
003ef28c  00 40 92 e5                                      ldr r4, [r2]
003ef290  20 a0 9d e5                                      ldr sl, [sp, #0x20]
003ef294  04 00 5c e1                                      cmp ip, r4
003ef298  37 00 00 0a                                      beq #0x3ef37c
003ef29c  00 50 93 e5                                      ldr r5, [r3]
003ef2a0  00 60 9a e5                                      ldr r6, [sl]
003ef2a4  06 00 55 e1                                      cmp r5, r6
003ef2a8  33 00 00 0a                                      beq #0x3ef37c
003ef2ac  01 70 45 e2                                      sub r7, r5, #1
003ef2b0  07 00 56 e1                                      cmp r6, r7
003ef2b4  02 b0 45 12                                      subne fp, r5, #2
003ef2b8  21 00 00 0a                                      beq #0x3ef344
003ef2bc  d1 50 55 e1                                      ldrsb r5, [r5, #-1]
003ef2c0  d1 60 5c e1                                      ldrsb r6, [ip, #-1]
003ef2c4  01 90 4c e2                                      sub sb, ip, #1
003ef2c8  05 00 56 e1                                      cmp r6, r5
003ef2cc  0a 00 00 0a                                      beq #0x3ef2fc
003ef2d0  00 90 81 e5                                      str sb, [r1]
003ef2d4  00 40 92 e5                                      ldr r4, [r2]
003ef2d8  09 00 54 e1                                      cmp r4, sb
003ef2dc  28 00 00 0a                                      beq #0x3ef384
003ef2e0  00 50 93 e5                                      ldr r5, [r3]
003ef2e4  09 c0 a0 e1                                      mov ip, sb
003ef2e8  d1 60 5c e1                                      ldrsb r6, [ip, #-1]
003ef2ec  d1 50 55 e1                                      ldrsb r5, [r5, #-1]
003ef2f0  01 90 4c e2                                      sub sb, ip, #1
003ef2f4  05 00 56 e1                                      cmp r6, r5
003ef2f8  f4 ff ff 1a                                      bne #0x3ef2d0
003ef2fc  04 00 59 e1                                      cmp sb, r4
003ef300  21 00 00 0a                                      beq #0x3ef38c
003ef304  0b 60 a0 e1                                      mov r6, fp
003ef308  09 50 a0 e1                                      mov r5, sb
003ef30c  d1 80 55 e1                                      ldrsb r8, [r5, #-1]
003ef310  d0 70 d6 e1                                      ldrsb r7, [r6]
003ef314  01 50 45 e2                                      sub r5, r5, #1
003ef318  07 00 58 e1                                      cmp r8, r7
003ef31c  eb ff ff 1a                                      bne #0x3ef2d0
003ef320  00 70 9a e5                                      ldr r7, [sl]
003ef324  06 00 57 e1                                      cmp r7, r6
003ef328  13 00 00 0a                                      beq #0x3ef37c
003ef32c  04 00 55 e1                                      cmp r5, r4
003ef330  01 60 46 e2                                      sub r6, r6, #1
003ef334  f4 ff ff 1a                                      bne #0x3ef30c
003ef338  00 50 80 e5                                      str r5, [r0]
003ef33c  f0 0f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp}
003ef340  1e ff 2f e1                                      bx lr
003ef344  d0 40 d6 e1                                      ldrsb r4, [r6]
003ef348  d1 50 5c e1                                      ldrsb r5, [ip, #-1]
003ef34c  04 00 55 e1                                      cmp r5, r4
003ef350  09 00 00 0a                                      beq #0x3ef37c
003ef354  01 c0 4c e2                                      sub ip, ip, #1
003ef358  00 c0 81 e5                                      str ip, [r1]
003ef35c  00 40 92 e5                                      ldr r4, [r2]
003ef360  04 00 5c e1                                      cmp ip, r4
003ef364  04 00 00 0a                                      beq #0x3ef37c
003ef368  00 40 93 e5                                      ldr r4, [r3]
003ef36c  d1 50 5c e1                                      ldrsb r5, [ip, #-1]
003ef370  d1 40 54 e1                                      ldrsb r4, [r4, #-1]
003ef374  04 00 55 e1                                      cmp r5, r4
003ef378  f5 ff ff 1a                                      bne #0x3ef354
003ef37c  00 c0 80 e5                                      str ip, [r0]
003ef380  ed ff ff ea                                      b #0x3ef33c
003ef384  00 90 80 e5                                      str sb, [r0]
003ef388  eb ff ff ea                                      b #0x3ef33c
003ef38c  00 40 80 e5                                      str r4, [r0]
003ef390  e9 ff ff ea                                      b #0x3ef33c

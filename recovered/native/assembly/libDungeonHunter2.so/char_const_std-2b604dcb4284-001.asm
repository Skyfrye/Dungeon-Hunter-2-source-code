; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0034ed2c, declared_size=196, range_size=196, mode=arm
; class-group: char const* std
; alias: _ZSt6searchIPKcS1_NSt4priv10_Eq_traitsISt11char_traitsIcEEEET_S7_S7_T0_S8_T1_
; demangled: char const* std::search<char const*, char const*, std::priv::_Eq_traits<std::char_traits<char> > >(char const*, char const*, char const*, char const*, std::priv::_Eq_traits<std::char_traits<char> >)
; decoder-mode: arm
0034ed2c  01 00 50 e1                                      cmp r0, r1
0034ed30  03 00 52 11                                      cmpne r2, r3
0034ed34  f0 01 2d e9                                      push {r4, r5, r6, r7, r8}
0034ed38  0f 00 00 0a                                      beq #0x34ed7c
0034ed3c  01 c0 82 e2                                      add ip, r2, #1
0034ed40  0c 00 53 e1                                      cmp r3, ip
0034ed44  01 70 80 12                                      addne r7, r0, #1
0034ed48  02 80 82 12                                      addne r8, r2, #2
0034ed4c  1c 00 00 0a                                      beq #0x34edc4
0034ed50  00 00 51 e1                                      cmp r1, r0
0034ed54  07 00 00 0a                                      beq #0x34ed78
0034ed58  d1 40 57 e1                                      ldrsb r4, [r7, #-1]
0034ed5c  d0 c0 d2 e1                                      ldrsb ip, [r2]
0034ed60  0c 00 54 e1                                      cmp r4, ip
0034ed64  06 00 00 0a                                      beq #0x34ed84
0034ed68  01 00 80 e2                                      add r0, r0, #1
0034ed6c  00 00 51 e1                                      cmp r1, r0
0034ed70  01 70 87 e2                                      add r7, r7, #1
0034ed74  f7 ff ff 1a                                      bne #0x34ed58
0034ed78  01 00 a0 e1                                      mov r0, r1
0034ed7c  f0 01 bd e8                                      pop {r4, r5, r6, r7, r8}
0034ed80  1e ff 2f e1                                      bx lr
0034ed84  07 00 51 e1                                      cmp r1, r7
0034ed88  07 c0 a0 e1                                      mov ip, r7
0034ed8c  f9 ff ff 0a                                      beq #0x34ed78
0034ed90  08 40 a0 e1                                      mov r4, r8
0034ed94  d0 60 dc e1                                      ldrsb r6, [ip]
0034ed98  d1 50 54 e1                                      ldrsb r5, [r4, #-1]
0034ed9c  01 c0 8c e2                                      add ip, ip, #1
0034eda0  05 00 56 e1                                      cmp r6, r5
0034eda4  ef ff ff 1a                                      bne #0x34ed68
0034eda8  03 00 54 e1                                      cmp r4, r3
0034edac  f2 ff ff 0a                                      beq #0x34ed7c
0034edb0  01 00 5c e1                                      cmp ip, r1
0034edb4  01 40 84 e2                                      add r4, r4, #1
0034edb8  f5 ff ff 1a                                      bne #0x34ed94
0034edbc  01 00 a0 e1                                      mov r0, r1
0034edc0  ed ff ff ea                                      b #0x34ed7c
0034edc4  d0 20 d2 e1                                      ldrsb r2, [r2]
0034edc8  d0 30 d0 e1                                      ldrsb r3, [r0]
0034edcc  02 00 53 e1                                      cmp r3, r2
0034edd0  e9 ff ff 0a                                      beq #0x34ed7c
0034edd4  01 00 80 e2                                      add r0, r0, #1
0034edd8  01 00 50 e1                                      cmp r0, r1
0034eddc  e5 ff ff 0a                                      beq #0x34ed78
0034ede0  d0 30 d0 e1                                      ldrsb r3, [r0]
0034ede4  02 00 53 e1                                      cmp r3, r2
0034ede8  f9 ff ff 1a                                      bne #0x34edd4
0034edec  e2 ff ff ea                                      b #0x34ed7c

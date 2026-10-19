; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0040c2fc, declared_size=104, range_size=104, mode=arm
; class-group: std::priv::_Bit_iter<std::priv::_Bit_reference, std::priv::_Bit_reference*> std
; alias: _ZSt4copyINSt4priv9_Bit_iterINS0_14_Bit_referenceEPS2_EES4_ET0_T_S6_S5_
; demangled: std::priv::_Bit_iter<std::priv::_Bit_reference, std::priv::_Bit_reference*> std::copy<std::priv::_Bit_iter<std::priv::_Bit_reference, std::priv::_Bit_reference*>, std::priv::_Bit_iter<std::priv::_Bit_reference, std::priv::_Bit_reference*> >(std::priv::_Bit_iter<std::priv::_Bit_reference, std::priv::_Bit_reference*>, std::priv::_Bit_iter<std::priv::_Bit_reference, std::priv::_Bit_reference*>, std::priv::_Bit_iter<std::priv::_Bit_reference, std::priv::_Bit_reference*>)
; decoder-mode: arm
0040c2fc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0040c300  00 c0 93 e5                                      ldr ip, [r3]
0040c304  28 d0 4d e2                                      sub sp, sp, #0x28
0040c308  00 60 91 e5                                      ldr r6, [r1]
0040c30c  00 e0 92 e5                                      ldr lr, [r2]
0040c310  04 70 91 e5                                      ldr r7, [r1, #4]
0040c314  04 50 92 e5                                      ldr r5, [r2, #4]
0040c318  04 80 93 e5                                      ldr r8, [r3, #4]
0040c31c  1c c0 8d e5                                      str ip, [sp, #0x1c]
0040c320  24 c0 8d e2                                      add ip, sp, #0x24
0040c324  00 40 a0 e1                                      mov r4, r0
0040c328  00 c0 8d e5                                      str ip, [sp]
0040c32c  0c 10 8d e2                                      add r1, sp, #0xc
0040c330  00 c0 a0 e3                                      mov ip, #0
0040c334  14 20 8d e2                                      add r2, sp, #0x14
0040c338  1c 30 8d e2                                      add r3, sp, #0x1c
0040c33c  10 70 8d e5                                      str r7, [sp, #0x10]
0040c340  0c 60 8d e5                                      str r6, [sp, #0xc]
0040c344  18 50 8d e5                                      str r5, [sp, #0x18]
0040c348  14 e0 8d e5                                      str lr, [sp, #0x14]
0040c34c  20 80 8d e5                                      str r8, [sp, #0x20]
0040c350  04 c0 8d e5                                      str ip, [sp, #4]
0040c354  ba ff ff eb                                      bl #0x40c244
0040c358  04 00 a0 e1                                      mov r0, r4
0040c35c  28 d0 8d e2                                      add sp, sp, #0x28
0040c360  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

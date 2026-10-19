; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008b33dc, declared_size=120, range_size=120, mode=thumb
; class-group: std::priv::_Stl_prime<bool>
; alias: _ZNSt4priv10_Stl_primeIbE13_S_prev_sizesEjRPKjS4_
; demangled: std::priv::_Stl_prime<bool>::_S_prev_sizes(unsigned int, unsigned int const*&, unsigned int const*&)
; decoder-mode: thumb
008b33dc  f0 b5                                            push {r4, r5, r6, r7, lr}
008b33de  47 46                                            mov r7, r8
008b33e0  80 b4                                            push {r7}
008b33e2  1a 4b                                            ldr r3, [pc, #0x68]
008b33e4  90 46                                            mov r8, r2
008b33e6  1a 4a                                            ldr r2, [pc, #0x68]
008b33e8  7b 44                                            add r3, pc
008b33ea  1e 27                                            movs r7, #0x1e
008b33ec  94 46                                            mov ip, r2
008b33ee  9a 58                                            ldr r2, [r3, r2]
008b33f0  0a 60                                            str r2, [r1]
008b33f2  7c 10                                            asrs r4, r7, #1
008b33f4  a5 00                                            lsls r5, r4, #2
008b33f6  55 19                                            adds r5, r2, r5
008b33f8  2e 68                                            ldr r6, [r5]
008b33fa  b0 42                                            cmp r0, r6
008b33fc  07 d8                                            bhi #0x8b340e
008b33fe  27 1e                                            subs r7, r4, #0
008b3400  0a dd                                            ble #0x8b3418
008b3402  64 10                                            asrs r4, r4, #1
008b3404  a5 00                                            lsls r5, r4, #2
008b3406  55 19                                            adds r5, r2, r5
008b3408  2e 68                                            ldr r6, [r5]
008b340a  86 42                                            cmp r6, r0
008b340c  f7 d2                                            bhs #0x8b33fe
008b340e  01 3f                                            subs r7, #1
008b3410  3f 1b                                            subs r7, r7, r4
008b3412  2a 1d                                            adds r2, r5, #4
008b3414  00 2f                                            cmp r7, #0
008b3416  ec dc                                            bgt #0x8b33f2
008b3418  44 46                                            mov r4, r8
008b341a  22 60                                            str r2, [r4]
008b341c  64 46                                            mov r4, ip
008b341e  1b 59                                            ldr r3, [r3, r4]
008b3420  1c 1c                                            adds r4, r3, #0
008b3422  78 34                                            adds r4, #0x78
008b3424  a2 42                                            cmp r2, r4
008b3426  0c d0                                            beq #0x8b3442
008b3428  13 68                                            ldr r3, [r2]
008b342a  83 42                                            cmp r3, r0
008b342c  02 d0                                            beq #0x8b3434
008b342e  04 bc                                            pop {r2}
008b3430  90 46                                            mov r8, r2
008b3432  f0 bd                                            pop {r4, r5, r6, r7, pc}
008b3434  0b 68                                            ldr r3, [r1]
008b3436  93 42                                            cmp r3, r2
008b3438  f9 d0                                            beq #0x8b342e
008b343a  04 3a                                            subs r2, #4
008b343c  43 46                                            mov r3, r8
008b343e  1a 60                                            str r2, [r3]
008b3440  f5 e7                                            b #0x8b342e
008b3442  74 33                                            adds r3, #0x74
008b3444  42 46                                            mov r2, r8
008b3446  13 60                                            str r3, [r2]
008b3448  f1 e7                                            b #0x8b342e
008b344a  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008b344c  ac 16 0e 00 fc 1c 00 00                          .byte 0xac, 0x16, 0x0e, 0x00, 0xfc, 0x1c, 0x00, 0x00

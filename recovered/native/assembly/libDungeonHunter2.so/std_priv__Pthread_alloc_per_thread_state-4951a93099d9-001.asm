; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008b666c, declared_size=74, range_size=74, mode=thumb
; class-group: std::priv::_Pthread_alloc_per_thread_state
; alias: _ZNSt4priv31_Pthread_alloc_per_thread_state9_M_refillEj
; demangled: std::priv::_Pthread_alloc_per_thread_state::_M_refill(unsigned int)
; decoder-mode: thumb
008b666c  30 b5                                            push {r4, r5, lr}
008b666e  83 b0                                            sub sp, #0xc
008b6670  05 1c                                            adds r5, r0, #0
008b6672  80 23                                            movs r3, #0x80
008b6674  08 1c                                            adds r0, r1, #0
008b6676  0c 1c                                            adds r4, r1, #0
008b6678  2a 1c                                            adds r2, r5, #0
008b667a  01 a9                                            add r1, sp, #4
008b667c  01 93                                            str r3, [sp, #4]
008b667e  ff f7 7d ff                                      bl #0x8b657c
008b6682  01 9b                                            ldr r3, [sp, #4]
008b6684  01 2b                                            cmp r3, #1
008b6686  14 d0                                            beq #0x8b66b2
008b6688  e2 1d                                            adds r2, r4, #7
008b668a  d2 08                                            lsrs r2, r2, #3
008b668c  01 3a                                            subs r2, #1
008b668e  92 00                                            lsls r2, r2, #2
008b6690  ad 18                                            adds r5, r5, r2
008b6692  01 19                                            adds r1, r0, r4
008b6694  29 60                                            str r1, [r5]
008b6696  02 2b                                            cmp r3, #2
008b6698  09 d0                                            beq #0x8b66ae
008b669a  0b 19                                            adds r3, r1, r4
008b669c  01 22                                            movs r2, #1
008b669e  0b 60                                            str r3, [r1]
008b66a0  01 9d                                            ldr r5, [sp, #4]
008b66a2  01 32                                            adds r2, #1
008b66a4  19 1c                                            adds r1, r3, #0
008b66a6  01 3d                                            subs r5, #1
008b66a8  1b 19                                            adds r3, r3, r4
008b66aa  95 42                                            cmp r5, r2
008b66ac  f7 d1                                            bne #0x8b669e
008b66ae  00 23                                            movs r3, #0
008b66b0  0b 60                                            str r3, [r1]
008b66b2  03 b0                                            add sp, #0xc
008b66b4  30 bd                                            pop {r4, r5, pc}

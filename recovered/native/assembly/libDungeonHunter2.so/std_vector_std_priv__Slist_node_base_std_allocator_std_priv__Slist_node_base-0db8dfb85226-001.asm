; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008b352c, declared_size=36, range_size=36, mode=thumb
; class-group: std::vector<std::priv::_Slist_node_base*, std::allocator<std::priv::_Slist_node_base*> >
; alias: _ZNSt6vectorIPNSt4priv16_Slist_node_baseESaIS2_EED1Ev
; demangled: std::vector<std::priv::_Slist_node_base*, std::allocator<std::priv::_Slist_node_base*> >::~vector()
; decoder-mode: thumb
008b352c  10 b5                                            push {r4, lr}
008b352e  04 1c                                            adds r4, r0, #0
008b3530  00 68                                            ldr r0, [r0]
008b3532  00 28                                            cmp r0, #0
008b3534  07 d0                                            beq #0x8b3546
008b3536  a1 68                                            ldr r1, [r4, #8]
008b3538  09 1a                                            subs r1, r1, r0
008b353a  89 10                                            asrs r1, r1, #2
008b353c  89 00                                            lsls r1, r1, #2
008b353e  80 29                                            cmp r1, #0x80
008b3540  03 d8                                            bhi #0x8b354a
008b3542  02 f0 8b fe                                      bl #0x8b625c
008b3546  20 1c                                            adds r0, r4, #0
008b3548  10 bd                                            pop {r4, pc}
008b354a  5a f6 b2 e6                                      blx #0x30e2b0
008b354e  fa e7                                            b #0x8b3546

; FUNCTION 0x008b3598, declared_size=68, range_size=68, mode=thumb
; class-group: std::vector<std::priv::_Slist_node_base*, std::allocator<std::priv::_Slist_node_base*> >
; alias: _ZNSt6vectorIPNSt4priv16_Slist_node_baseESaIS2_EEC1EjRKS2_RKS3_
; demangled: std::vector<std::priv::_Slist_node_base*, std::allocator<std::priv::_Slist_node_base*> >::vector(unsigned int, std::priv::_Slist_node_base* const&, std::allocator<std::priv::_Slist_node_base*> const&)
; decoder-mode: thumb
008b3598  70 b5                                            push {r4, r5, r6, lr}
008b359a  00 23                                            movs r3, #0
008b359c  82 b0                                            sub sp, #8
008b359e  05 1c                                            adds r5, r0, #0
008b35a0  01 91                                            str r1, [sp, #4]
008b35a2  14 1c                                            adds r4, r2, #0
008b35a4  03 60                                            str r3, [r0]
008b35a6  43 60                                            str r3, [r0, #4]
008b35a8  83 60                                            str r3, [r0, #8]
008b35aa  01 aa                                            add r2, sp, #4
008b35ac  08 30                                            adds r0, #8
008b35ae  0e 1c                                            adds r6, r1, #0
008b35b0  ff f7 ce ff                                      bl #0x8b3550
008b35b4  01 9b                                            ldr r3, [sp, #4]
008b35b6  b6 00                                            lsls r6, r6, #2
008b35b8  82 19                                            adds r2, r0, r6
008b35ba  9b 00                                            lsls r3, r3, #2
008b35bc  c3 18                                            adds r3, r0, r3
008b35be  b6 10                                            asrs r6, r6, #2
008b35c0  28 60                                            str r0, [r5]
008b35c2  68 60                                            str r0, [r5, #4]
008b35c4  ab 60                                            str r3, [r5, #8]
008b35c6  00 2e                                            cmp r6, #0
008b35c8  04 dd                                            ble #0x8b35d4
008b35ca  23 68                                            ldr r3, [r4]
008b35cc  01 3e                                            subs r6, #1
008b35ce  08 c0                                            stm r0!, {r3}
008b35d0  00 2e                                            cmp r6, #0
008b35d2  fa d1                                            bne #0x8b35ca
008b35d4  02 b0                                            add sp, #8
008b35d6  28 1c                                            adds r0, r5, #0
008b35d8  6a 60                                            str r2, [r5, #4]
008b35da  70 bd                                            pop {r4, r5, r6, pc}

; FUNCTION 0x008b35dc, declared_size=150, range_size=150, mode=thumb
; class-group: std::vector<std::priv::_Slist_node_base*, std::allocator<std::priv::_Slist_node_base*> >
; alias: _ZNSt6vectorIPNSt4priv16_Slist_node_baseESaIS2_EE14_M_fill_assignEjRKS2_
; demangled: std::vector<std::priv::_Slist_node_base*, std::allocator<std::priv::_Slist_node_base*> >::_M_fill_assign(unsigned int, std::priv::_Slist_node_base* const&)
; decoder-mode: thumb
008b35dc  70 b5                                            push {r4, r5, r6, lr}
008b35de  04 1c                                            adds r4, r0, #0
008b35e0  a3 68                                            ldr r3, [r4, #8]
008b35e2  00 68                                            ldr r0, [r0]
008b35e4  84 b0                                            sub sp, #0x10
008b35e6  1b 1a                                            subs r3, r3, r0
008b35e8  9b 10                                            asrs r3, r3, #2
008b35ea  99 42                                            cmp r1, r3
008b35ec  2d d8                                            bhi #0x8b364a
008b35ee  65 68                                            ldr r5, [r4, #4]
008b35f0  2b 1a                                            subs r3, r5, r0
008b35f2  9b 10                                            asrs r3, r3, #2
008b35f4  1e 1c                                            adds r6, r3, #0
008b35f6  99 42                                            cmp r1, r3
008b35f8  10 d8                                            bhi #0x8b361c
008b35fa  00 29                                            cmp r1, #0
008b35fc  09 d0                                            beq #0x8b3612
008b35fe  0b 1c                                            adds r3, r1, #0
008b3600  05 1c                                            adds r5, r0, #0
008b3602  16 68                                            ldr r6, [r2]
008b3604  01 3b                                            subs r3, #1
008b3606  40 c5                                            stm r5!, {r6}
008b3608  00 2b                                            cmp r3, #0
008b360a  fa d1                                            bne #0x8b3602
008b360c  65 68                                            ldr r5, [r4, #4]
008b360e  89 00                                            lsls r1, r1, #2
008b3610  40 18                                            adds r0, r0, r1
008b3612  a8 42                                            cmp r0, r5
008b3614  00 d0                                            beq #0x8b3618
008b3616  60 60                                            str r0, [r4, #4]
008b3618  04 b0                                            add sp, #0x10
008b361a  70 bd                                            pop {r4, r5, r6, pc}
008b361c  00 2b                                            cmp r3, #0
008b361e  08 dd                                            ble #0x8b3632
008b3620  15 68                                            ldr r5, [r2]
008b3622  01 3b                                            subs r3, #1
008b3624  20 c0                                            stm r0!, {r5}
008b3626  00 2b                                            cmp r3, #0
008b3628  fa d1                                            bne #0x8b3620
008b362a  65 68                                            ldr r5, [r4, #4]
008b362c  26 68                                            ldr r6, [r4]
008b362e  ae 1b                                            subs r6, r5, r6
008b3630  b6 10                                            asrs r6, r6, #2
008b3632  89 1b                                            subs r1, r1, r6
008b3634  89 00                                            lsls r1, r1, #2
008b3636  68 18                                            adds r0, r5, r1
008b3638  89 10                                            asrs r1, r1, #2
008b363a  00 29                                            cmp r1, #0
008b363c  eb dd                                            ble #0x8b3616
008b363e  13 68                                            ldr r3, [r2]
008b3640  01 39                                            subs r1, #1
008b3642  08 c5                                            stm r5!, {r3}
008b3644  00 29                                            cmp r1, #0
008b3646  fa d1                                            bne #0x8b363e
008b3648  e5 e7                                            b #0x8b3616
008b364a  03 ab                                            add r3, sp, #0xc
008b364c  68 46                                            mov r0, sp
008b364e  ff f7 a3 ff                                      bl #0x8b3598
008b3652  00 9b                                            ldr r3, [sp]
008b3654  22 68                                            ldr r2, [r4]
008b3656  68 46                                            mov r0, sp
008b3658  23 60                                            str r3, [r4]
008b365a  01 9b                                            ldr r3, [sp, #4]
008b365c  00 92                                            str r2, [sp]
008b365e  62 68                                            ldr r2, [r4, #4]
008b3660  63 60                                            str r3, [r4, #4]
008b3662  02 9b                                            ldr r3, [sp, #8]
008b3664  01 92                                            str r2, [sp, #4]
008b3666  a2 68                                            ldr r2, [r4, #8]
008b3668  a3 60                                            str r3, [r4, #8]
008b366a  02 92                                            str r2, [sp, #8]
008b366c  ff f7 5e ff                                      bl #0x8b352c
008b3670  d2 e7                                            b #0x8b3618

; FUNCTION 0x008b391c, declared_size=132, range_size=132, mode=thumb
; class-group: std::vector<std::priv::_Slist_node_base*, std::allocator<std::priv::_Slist_node_base*> >
; alias: _ZNSt6vectorIPNSt4priv16_Slist_node_baseESaIS2_EE7reserveEj
; demangled: std::vector<std::priv::_Slist_node_base*, std::allocator<std::priv::_Slist_node_base*> >::reserve(unsigned int)
; decoder-mode: thumb
008b391c  70 b5                                            push {r4, r5, r6, lr}
008b391e  82 b0                                            sub sp, #8
008b3920  01 91                                            str r1, [sp, #4]
008b3922  0b 1c                                            adds r3, r1, #0
008b3924  02 68                                            ldr r2, [r0]
008b3926  81 68                                            ldr r1, [r0, #8]
008b3928  04 1c                                            adds r4, r0, #0
008b392a  89 1a                                            subs r1, r1, r2
008b392c  89 10                                            asrs r1, r1, #2
008b392e  8b 42                                            cmp r3, r1
008b3930  1f d9                                            bls #0x8b3972
008b3932  19 49                                            ldr r1, [pc, #0x64]
008b3934  8b 42                                            cmp r3, r1
008b3936  1e d8                                            bhi #0x8b3976
008b3938  63 68                                            ldr r3, [r4, #4]
008b393a  9e 1a                                            subs r6, r3, r2
008b393c  b6 10                                            asrs r6, r6, #2
008b393e  00 2a                                            cmp r2, #0
008b3940  22 d0                                            beq #0x8b3988
008b3942  01 a9                                            add r1, sp, #4
008b3944  20 1c                                            adds r0, r4, #0
008b3946  ff f7 95 fe                                      bl #0x8b3674
008b394a  05 1c                                            adds r5, r0, #0
008b394c  20 68                                            ldr r0, [r4]
008b394e  a1 68                                            ldr r1, [r4, #8]
008b3950  00 28                                            cmp r0, #0
008b3952  06 d0                                            beq #0x8b3962
008b3954  09 1a                                            subs r1, r1, r0
008b3956  89 10                                            asrs r1, r1, #2
008b3958  89 00                                            lsls r1, r1, #2
008b395a  80 29                                            cmp r1, #0x80
008b395c  11 d8                                            bhi #0x8b3982
008b395e  02 f0 7d fc                                      bl #0x8b625c
008b3962  01 9b                                            ldr r3, [sp, #4]
008b3964  b6 00                                            lsls r6, r6, #2
008b3966  25 60                                            str r5, [r4]
008b3968  9b 00                                            lsls r3, r3, #2
008b396a  eb 18                                            adds r3, r5, r3
008b396c  ad 19                                            adds r5, r5, r6
008b396e  65 60                                            str r5, [r4, #4]
008b3970  a3 60                                            str r3, [r4, #8]
008b3972  02 b0                                            add sp, #8
008b3974  70 bd                                            pop {r4, r5, r6, pc}
008b3976  09 48                                            ldr r0, [pc, #0x24]
008b3978  78 44                                            add r0, pc
008b397a  ee f7 ab ff                                      bl #0x8a28d4
008b397e  22 68                                            ldr r2, [r4]
008b3980  da e7                                            b #0x8b3938
008b3982  5a f6 96 e4                                      blx #0x30e2b0
008b3986  ec e7                                            b #0x8b3962
008b3988  20 1c                                            adds r0, r4, #0
008b398a  08 30                                            adds r0, #8
008b398c  01 99                                            ldr r1, [sp, #4]
008b398e  01 aa                                            add r2, sp, #4
008b3990  ff f7 de fd                                      bl #0x8b3550
008b3994  05 1c                                            adds r5, r0, #0
008b3996  e4 e7                                            b #0x8b3962
; mapping-symbol data/literal pool
008b3998  ff ff ff 3f 94 22 06 00                          .byte 0xff, 0xff, 0xff, 0x3f, 0x94, 0x22, 0x06, 0x00

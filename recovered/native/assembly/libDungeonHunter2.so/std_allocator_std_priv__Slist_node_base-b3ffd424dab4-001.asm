; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008b3550, declared_size=72, range_size=72, mode=thumb
; class-group: std::allocator<std::priv::_Slist_node_base*>
; alias: _ZNSaIPNSt4priv16_Slist_node_baseEE11_M_allocateEjRj
; demangled: std::allocator<std::priv::_Slist_node_base*>::_M_allocate(unsigned int, unsigned int&)
; decoder-mode: thumb
008b3550  10 b5                                            push {r4, lr}
008b3552  0f 4b                                            ldr r3, [pc, #0x3c]
008b3554  82 b0                                            sub sp, #8
008b3556  14 1c                                            adds r4, r2, #0
008b3558  99 42                                            cmp r1, r3
008b355a  12 d8                                            bhi #0x8b3582
008b355c  00 20                                            movs r0, #0
008b355e  00 29                                            cmp r1, #0
008b3560  01 d1                                            bne #0x8b3566
008b3562  02 b0                                            add sp, #8
008b3564  10 bd                                            pop {r4, pc}
008b3566  88 00                                            lsls r0, r1, #2
008b3568  01 90                                            str r0, [sp, #4]
008b356a  80 28                                            cmp r0, #0x80
008b356c  06 d8                                            bhi #0x8b357c
008b356e  01 a8                                            add r0, sp, #4
008b3570  02 f0 40 ff                                      bl #0x8b63f4
008b3574  01 9b                                            ldr r3, [sp, #4]
008b3576  9b 08                                            lsrs r3, r3, #2
008b3578  23 60                                            str r3, [r4]
008b357a  f2 e7                                            b #0x8b3562
008b357c  5b f6 86 e1                                      blx #0x30e88c
008b3580  f8 e7                                            b #0x8b3574
008b3582  04 48                                            ldr r0, [pc, #0x10]
008b3584  78 44                                            add r0, pc
008b3586  5a f6 9e e5                                      blx #0x30e0c4
008b358a  01 20                                            movs r0, #1
008b358c  5a f6 5c e4                                      blx #0x30de48
; mapping-symbol data/literal pool
008b3590  ff ff ff 3f b0 23 06 00                          .byte 0xff, 0xff, 0xff, 0x3f, 0xb0, 0x23, 0x06, 0x00

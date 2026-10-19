; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008b3674, declared_size=36, range_size=36, mode=thumb
; class-group: std::priv::_Slist_node_base** std::vector<std::priv::_Slist_node_base*, std::allocator<std::priv::_Slist_node_base*> >
; alias: _ZNSt6vectorIPNSt4priv16_Slist_node_baseESaIS2_EE20_M_allocate_and_copyIPS2_EES6_RjT_S8_
; demangled: std::priv::_Slist_node_base** std::vector<std::priv::_Slist_node_base*, std::allocator<std::priv::_Slist_node_base*> >::_M_allocate_and_copy<std::priv::_Slist_node_base**>(unsigned int&, std::priv::_Slist_node_base**, std::priv::_Slist_node_base**)
; decoder-mode: thumb
008b3674  70 b5                                            push {r4, r5, r6, lr}
008b3676  0d 1c                                            adds r5, r1, #0
008b3678  14 1c                                            adds r4, r2, #0
008b367a  08 30                                            adds r0, #8
008b367c  2a 1c                                            adds r2, r5, #0
008b367e  09 68                                            ldr r1, [r1]
008b3680  1e 1c                                            adds r6, r3, #0
008b3682  ff f7 65 ff                                      bl #0x8b3550
008b3686  05 1c                                            adds r5, r0, #0
008b3688  b4 42                                            cmp r4, r6
008b368a  03 d0                                            beq #0x8b3694
008b368c  32 1b                                            subs r2, r6, r4
008b368e  21 1c                                            adds r1, r4, #0
008b3690  5b f6 ea e0                                      blx #0x30e868
008b3694  28 1c                                            adds r0, r5, #0
008b3696  70 bd                                            pop {r4, r5, r6, pc}

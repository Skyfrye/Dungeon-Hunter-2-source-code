; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008bd134, declared_size=42, range_size=42, mode=thumb
; class-group: std::priv::_Slist_base<std::pair<int const, std::locale>, std::allocator<std::pair<int const, std::locale> > >
; alias: _ZNSt4priv11_Slist_baseISt4pairIKiSt6localeESaIS4_EE14_M_erase_afterEPNS_16_Slist_node_baseES8_.clone.3
; demangled: std::priv::_Slist_base<std::pair<int const, std::locale>, std::allocator<std::pair<int const, std::locale> > >::_M_erase_after(std::priv::_Slist_node_base*, std::priv::_Slist_node_base*) [clone .clone.3]
; decoder-mode: thumb
008bd134  70 b5                                            push {r4, r5, r6, lr}
008bd136  0c 68                                            ldr r4, [r1]
008bd138  0e 1c                                            adds r6, r1, #0
008bd13a  00 2c                                            cmp r4, #0
008bd13c  0b d0                                            beq #0x8bd156
008bd13e  25 1c                                            adds r5, r4, #0
008bd140  28 1c                                            adds r0, r5, #0
008bd142  24 68                                            ldr r4, [r4]
008bd144  08 30                                            adds r0, #8
008bd146  e6 f7 d5 f9                                      bl #0x8a34f4
008bd14a  28 1c                                            adds r0, r5, #0
008bd14c  0c 21                                            movs r1, #0xc
008bd14e  f9 f7 85 f8                                      bl #0x8b625c
008bd152  00 2c                                            cmp r4, #0
008bd154  f3 d1                                            bne #0x8bd13e
008bd156  00 23                                            movs r3, #0
008bd158  33 60                                            str r3, [r6]
008bd15a  00 20                                            movs r0, #0
008bd15c  70 bd                                            pop {r4, r5, r6, pc}

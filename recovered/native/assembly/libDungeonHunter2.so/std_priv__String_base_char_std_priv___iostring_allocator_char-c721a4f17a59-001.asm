; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008a52d8, declared_size=24, range_size=24, mode=thumb
; class-group: std::priv::_String_base<char, std::priv::__iostring_allocator<char> >
; alias: _ZNSt4priv12_String_baseIcNS_20__iostring_allocatorIcEEE17_M_allocate_blockEj.clone.1
; demangled: std::priv::_String_base<char, std::priv::__iostring_allocator<char> >::_M_allocate_block(unsigned int) [clone .clone.1]
; decoder-mode: thumb
008a52d8  02 1c                                            adds r2, r0, #0
008a52da  8c 23                                            movs r3, #0x8c
008a52dc  14 32                                            adds r2, #0x14
008a52de  5b 00                                            lsls r3, r3, #1
008a52e0  c2 50                                            str r2, [r0, r3]
008a52e2  02 61                                            str r2, [r0, #0x10]
008a52e4  01 4a                                            ldr r2, [pc, #4]
008a52e6  83 18                                            adds r3, r0, r2
008a52e8  03 60                                            str r3, [r0]
008a52ea  70 47                                            bx lr
; mapping-symbol data/literal pool
008a52ec  15 01 00 00                                      .byte 0x15, 0x01, 0x00, 0x00

; FUNCTION 0x008a5a84, declared_size=46, range_size=46, mode=thumb
; class-group: std::priv::_String_base<char, std::priv::__iostring_allocator<char> >
; alias: _ZNSt4priv12_String_baseIcNS_20__iostring_allocatorIcEEE19_M_deallocate_blockEv
; demangled: std::priv::_String_base<char, std::priv::__iostring_allocator<char> >::_M_deallocate_block()
; decoder-mode: thumb
008a5a84  10 b5                                            push {r4, lr}
008a5a86  8c 23                                            movs r3, #0x8c
008a5a88  5b 00                                            lsls r3, r3, #1
008a5a8a  c3 58                                            ldr r3, [r0, r3]
008a5a8c  83 42                                            cmp r3, r0
008a5a8e  0b d0                                            beq #0x8a5aa8
008a5a90  00 2b                                            cmp r3, #0
008a5a92  09 d0                                            beq #0x8a5aa8
008a5a94  01 68                                            ldr r1, [r0]
008a5a96  14 30                                            adds r0, #0x14
008a5a98  83 42                                            cmp r3, r0
008a5a9a  05 d0                                            beq #0x8a5aa8
008a5a9c  c9 1a                                            subs r1, r1, r3
008a5a9e  80 29                                            cmp r1, #0x80
008a5aa0  03 d8                                            bhi #0x8a5aaa
008a5aa2  18 1c                                            adds r0, r3, #0
008a5aa4  10 f0 da fb                                      bl #0x8b625c
008a5aa8  10 bd                                            pop {r4, pc}
008a5aaa  18 1c                                            adds r0, r3, #0
008a5aac  68 f6 00 e4                                      blx #0x30e2b0
008a5ab0  fa e7                                            b #0x8a5aa8

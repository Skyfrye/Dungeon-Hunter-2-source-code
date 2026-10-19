; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008a4a78, declared_size=50, range_size=50, mode=thumb
; class-group: std::ostreambuf_iterator<wchar_t, std::char_traits<wchar_t> >
; alias: _ZNSt19ostreambuf_iteratorIwSt11char_traitsIwEEaSEw
; demangled: std::ostreambuf_iterator<wchar_t, std::char_traits<wchar_t> >::operator=(wchar_t)
; decoder-mode: thumb
008a4a78  10 b5                                            push {r4, lr}
008a4a7a  03 79                                            ldrb r3, [r0, #4]
008a4a7c  04 1c                                            adds r4, r0, #0
008a4a7e  00 2b                                            cmp r3, #0
008a4a80  0b d0                                            beq #0x8a4a9a
008a4a82  00 68                                            ldr r0, [r0]
008a4a84  43 69                                            ldr r3, [r0, #0x14]
008a4a86  82 69                                            ldr r2, [r0, #0x18]
008a4a88  93 42                                            cmp r3, r2
008a4a8a  0a d2                                            bhs #0x8a4aa2
008a4a8c  1a 1c                                            adds r2, r3, #0
008a4a8e  02 c2                                            stm r2!, {r1}
008a4a90  42 61                                            str r2, [r0, #0x14]
008a4a92  18 68                                            ldr r0, [r3]
008a4a94  01 23                                            movs r3, #1
008a4a96  01 30                                            adds r0, #1
008a4a98  00 d1                                            bne #0x8a4a9c
008a4a9a  00 23                                            movs r3, #0
008a4a9c  20 1c                                            adds r0, r4, #0
008a4a9e  23 71                                            strb r3, [r4, #4]
008a4aa0  10 bd                                            pop {r4, pc}
008a4aa2  03 68                                            ldr r3, [r0]
008a4aa4  5b 6b                                            ldr r3, [r3, #0x34]
008a4aa6  98 47                                            blx r3
008a4aa8  f4 e7                                            b #0x8a4a94

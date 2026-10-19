; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008b9100, declared_size=42, range_size=42, mode=thumb
; class-group: void std::basic_string<char, std::char_traits<char>, std::allocator<char> >
; alias: _ZNSs19_M_range_initializeIPKcEEvT_S2_RKSt20forward_iterator_tag
; demangled: void std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_range_initialize<char const*>(char const*, char const*, std::forward_iterator_tag const&)
; decoder-mode: thumb
008b9100  f8 b5                                            push {r3, r4, r5, r6, r7, lr}
008b9102  56 1a                                            subs r6, r2, r1
008b9104  04 1c                                            adds r4, r0, #0
008b9106  0d 1c                                            adds r5, r1, #0
008b9108  71 1c                                            adds r1, r6, #1
008b910a  17 1c                                            adds r7, r2, #0
008b910c  58 f6 b6 e2                                      blx #0x31167c
008b9110  60 69                                            ldr r0, [r4, #0x14]
008b9112  03 1c                                            adds r3, r0, #0
008b9114  bd 42                                            cmp r5, r7
008b9116  04 d0                                            beq #0x8b9122
008b9118  29 1c                                            adds r1, r5, #0
008b911a  32 1c                                            adds r2, r6, #0
008b911c  55 f6 a4 e3                                      blx #0x30e868
008b9120  83 19                                            adds r3, r0, r6
008b9122  00 22                                            movs r2, #0
008b9124  23 61                                            str r3, [r4, #0x10]
008b9126  1a 70                                            strb r2, [r3]
008b9128  f8 bd                                            pop {r3, r4, r5, r6, r7, pc}

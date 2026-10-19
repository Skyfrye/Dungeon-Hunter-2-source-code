; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008b921c, declared_size=44, range_size=44, mode=thumb
; class-group: void std::basic_string<wchar_t, std::char_traits<wchar_t>, std::allocator<wchar_t> >
; alias: _ZNSbIwSt11char_traitsIwESaIwEE19_M_range_initializeIPKwEEvT_S6_RKSt20forward_iterator_tag
; demangled: void std::basic_string<wchar_t, std::char_traits<wchar_t>, std::allocator<wchar_t> >::_M_range_initialize<wchar_t const*>(wchar_t const*, wchar_t const*, std::forward_iterator_tag const&)
; decoder-mode: thumb
008b921c  f8 b5                                            push {r3, r4, r5, r6, r7, lr}
008b921e  56 1a                                            subs r6, r2, r1
008b9220  0d 1c                                            adds r5, r1, #0
008b9222  b1 10                                            asrs r1, r6, #2
008b9224  04 1c                                            adds r4, r0, #0
008b9226  01 31                                            adds r1, #1
008b9228  17 1c                                            adds r7, r2, #0
008b922a  ed f7 eb fc                                      bl #0x8a6c04
008b922e  60 6c                                            ldr r0, [r4, #0x44]
008b9230  03 1c                                            adds r3, r0, #0
008b9232  bd 42                                            cmp r5, r7
008b9234  04 d0                                            beq #0x8b9240
008b9236  29 1c                                            adds r1, r5, #0
008b9238  32 1c                                            adds r2, r6, #0
008b923a  55 f6 16 e3                                      blx #0x30e868
008b923e  83 19                                            adds r3, r0, r6
008b9240  00 22                                            movs r2, #0
008b9242  23 64                                            str r3, [r4, #0x40]
008b9244  1a 60                                            str r2, [r3]
008b9246  f8 bd                                            pop {r3, r4, r5, r6, r7, pc}

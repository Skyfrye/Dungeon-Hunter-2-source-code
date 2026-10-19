; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008a4aac, declared_size=50, range_size=50, mode=thumb
; class-group: std::ostreambuf_iterator<char, std::char_traits<char> >
; alias: _ZNSt19ostreambuf_iteratorIcSt11char_traitsIcEEaSEc
; demangled: std::ostreambuf_iterator<char, std::char_traits<char> >::operator=(char)
; decoder-mode: thumb
008a4aac  10 b5                                            push {r4, lr}
008a4aae  03 79                                            ldrb r3, [r0, #4]
008a4ab0  04 1c                                            adds r4, r0, #0
008a4ab2  00 2b                                            cmp r3, #0
008a4ab4  0f d0                                            beq #0x8a4ad6
008a4ab6  00 68                                            ldr r0, [r0]
008a4ab8  43 69                                            ldr r3, [r0, #0x14]
008a4aba  82 69                                            ldr r2, [r0, #0x18]
008a4abc  93 42                                            cmp r3, r2
008a4abe  04 d2                                            bhs #0x8a4aca
008a4ac0  19 70                                            strb r1, [r3]
008a4ac2  01 33                                            adds r3, #1
008a4ac4  43 61                                            str r3, [r0, #0x14]
008a4ac6  01 23                                            movs r3, #1
008a4ac8  06 e0                                            b #0x8a4ad8
008a4aca  03 68                                            ldr r3, [r0]
008a4acc  5b 6b                                            ldr r3, [r3, #0x34]
008a4ace  98 47                                            blx r3
008a4ad0  01 23                                            movs r3, #1
008a4ad2  01 30                                            adds r0, #1
008a4ad4  00 d1                                            bne #0x8a4ad8
008a4ad6  00 23                                            movs r3, #0
008a4ad8  20 1c                                            adds r0, r4, #0
008a4ada  23 71                                            strb r3, [r4, #4]
008a4adc  10 bd                                            pop {r4, pc}

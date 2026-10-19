; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008a5868, declared_size=40, range_size=40, mode=thumb
; class-group: std::time_put_byname<char, std::ostreambuf_iterator<char, std::char_traits<char> > >
; alias: _ZNSt15time_put_bynameIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEED1Ev
; demangled: std::time_put_byname<char, std::ostreambuf_iterator<char, std::char_traits<char> > >::~time_put_byname()
; decoder-mode: thumb
008a5868  10 b5                                            push {r4, lr}
008a586a  07 4b                                            ldr r3, [pc, #0x1c]
008a586c  07 4a                                            ldr r2, [pc, #0x1c]
008a586e  04 1c                                            adds r4, r0, #0
008a5870  7b 44                                            add r3, pc
008a5872  9a 58                                            ldr r2, [r3, r2]
008a5874  08 32                                            adds r2, #8
008a5876  02 60                                            str r2, [r0]
008a5878  0c 30                                            adds r0, #0xc
008a587a  ff f7 89 ff                                      bl #0x8a5790
008a587e  20 1c                                            adds r0, r4, #0
008a5880  fe f7 3c f8                                      bl #0x8a38fc
008a5884  20 1c                                            adds r0, r4, #0
008a5886  10 bd                                            pop {r4, pc}
; mapping-symbol data/literal pool
008a5888  24 f2 0e 00 98 32 00 00                          .byte 0x24, 0xf2, 0x0e, 0x00, 0x98, 0x32, 0x00, 0x00

; FUNCTION 0x008a5920, declared_size=48, range_size=48, mode=thumb
; class-group: std::time_put_byname<char, std::ostreambuf_iterator<char, std::char_traits<char> > >
; alias: _ZNSt15time_put_bynameIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEED0Ev
; demangled: std::time_put_byname<char, std::ostreambuf_iterator<char, std::char_traits<char> > >::~time_put_byname()
; decoder-mode: thumb
008a5920  10 b5                                            push {r4, lr}
008a5922  09 4b                                            ldr r3, [pc, #0x24]
008a5924  09 4a                                            ldr r2, [pc, #0x24]
008a5926  04 1c                                            adds r4, r0, #0
008a5928  7b 44                                            add r3, pc
008a592a  9a 58                                            ldr r2, [r3, r2]
008a592c  08 32                                            adds r2, #8
008a592e  02 60                                            str r2, [r0]
008a5930  0c 30                                            adds r0, #0xc
008a5932  ff f7 2d ff                                      bl #0x8a5790
008a5936  20 1c                                            adds r0, r4, #0
008a5938  fd f7 e0 ff                                      bl #0x8a38fc
008a593c  20 1c                                            adds r0, r4, #0
008a593e  68 f6 b8 e4                                      blx #0x30e2b0
008a5942  20 1c                                            adds r0, r4, #0
008a5944  10 bd                                            pop {r4, pc}
008a5946  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008a5948  6c f1 0e 00 98 32 00 00                          .byte 0x6c, 0xf1, 0x0e, 0x00, 0x98, 0x32, 0x00, 0x00

; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008a56a8, declared_size=40, range_size=40, mode=thumb
; class-group: std::time_put_byname<wchar_t, std::ostreambuf_iterator<wchar_t, std::char_traits<wchar_t> > >
; alias: _ZNSt15time_put_bynameIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEED1Ev
; demangled: std::time_put_byname<wchar_t, std::ostreambuf_iterator<wchar_t, std::char_traits<wchar_t> > >::~time_put_byname()
; decoder-mode: thumb
008a56a8  10 b5                                            push {r4, lr}
008a56aa  07 4b                                            ldr r3, [pc, #0x1c]
008a56ac  07 4a                                            ldr r2, [pc, #0x1c]
008a56ae  04 1c                                            adds r4, r0, #0
008a56b0  7b 44                                            add r3, pc
008a56b2  9a 58                                            ldr r2, [r3, r2]
008a56b4  08 32                                            adds r2, #8
008a56b6  02 60                                            str r2, [r0]
008a56b8  0c 30                                            adds r0, #0xc
008a56ba  ff f7 89 ff                                      bl #0x8a55d0
008a56be  20 1c                                            adds r0, r4, #0
008a56c0  fe f7 1c f9                                      bl #0x8a38fc
008a56c4  20 1c                                            adds r0, r4, #0
008a56c6  10 bd                                            pop {r4, pc}
; mapping-symbol data/literal pool
008a56c8  e4 f3 0e 00 d0 31 00 00                          .byte 0xe4, 0xf3, 0x0e, 0x00, 0xd0, 0x31, 0x00, 0x00

; FUNCTION 0x008a5730, declared_size=48, range_size=48, mode=thumb
; class-group: std::time_put_byname<wchar_t, std::ostreambuf_iterator<wchar_t, std::char_traits<wchar_t> > >
; alias: _ZNSt15time_put_bynameIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEED0Ev
; demangled: std::time_put_byname<wchar_t, std::ostreambuf_iterator<wchar_t, std::char_traits<wchar_t> > >::~time_put_byname()
; decoder-mode: thumb
008a5730  10 b5                                            push {r4, lr}
008a5732  09 4b                                            ldr r3, [pc, #0x24]
008a5734  09 4a                                            ldr r2, [pc, #0x24]
008a5736  04 1c                                            adds r4, r0, #0
008a5738  7b 44                                            add r3, pc
008a573a  9a 58                                            ldr r2, [r3, r2]
008a573c  08 32                                            adds r2, #8
008a573e  02 60                                            str r2, [r0]
008a5740  0c 30                                            adds r0, #0xc
008a5742  ff f7 45 ff                                      bl #0x8a55d0
008a5746  20 1c                                            adds r0, r4, #0
008a5748  fe f7 d8 f8                                      bl #0x8a38fc
008a574c  20 1c                                            adds r0, r4, #0
008a574e  68 f6 b0 e5                                      blx #0x30e2b0
008a5752  20 1c                                            adds r0, r4, #0
008a5754  10 bd                                            pop {r4, pc}
008a5756  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008a5758  5c f3 0e 00 d0 31 00 00                          .byte 0x5c, 0xf3, 0x0e, 0x00, 0xd0, 0x31, 0x00, 0x00

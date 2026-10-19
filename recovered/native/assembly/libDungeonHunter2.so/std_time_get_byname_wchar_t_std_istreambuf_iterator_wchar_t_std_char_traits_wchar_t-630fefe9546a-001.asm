; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008a4a48, declared_size=12, range_size=12, mode=thumb
; class-group: std::time_get_byname<wchar_t, std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> > >
; alias: _ZNKSt15time_get_bynameIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE13do_date_orderEv
; demangled: std::time_get_byname<wchar_t, std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> > >::do_date_order() const
; decoder-mode: thumb
008a4a48  01 4b                                            ldr r3, [pc, #4]
008a4a4a  c0 58                                            ldr r0, [r0, r3]
008a4a4c  70 47                                            bx lr
008a4a4e  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008a4a50  c4 0b 00 00                                      .byte 0xc4, 0x0b, 0x00, 0x00

; FUNCTION 0x008a5680, declared_size=40, range_size=40, mode=thumb
; class-group: std::time_get_byname<wchar_t, std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> > >
; alias: _ZNSt15time_get_bynameIwSt19istreambuf_iteratorIwSt11char_traitsIwEEED1Ev
; demangled: std::time_get_byname<wchar_t, std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> > >::~time_get_byname()
; decoder-mode: thumb
008a5680  10 b5                                            push {r4, lr}
008a5682  07 4b                                            ldr r3, [pc, #0x1c]
008a5684  07 4a                                            ldr r2, [pc, #0x1c]
008a5686  04 1c                                            adds r4, r0, #0
008a5688  7b 44                                            add r3, pc
008a568a  9a 58                                            ldr r2, [r3, r2]
008a568c  08 32                                            adds r2, #8
008a568e  02 60                                            str r2, [r0]
008a5690  0c 30                                            adds r0, #0xc
008a5692  ff f7 9d ff                                      bl #0x8a55d0
008a5696  20 1c                                            adds r0, r4, #0
008a5698  fe f7 30 f9                                      bl #0x8a38fc
008a569c  20 1c                                            adds r0, r4, #0
008a569e  10 bd                                            pop {r4, pc}
; mapping-symbol data/literal pool
008a56a0  0c f4 0e 00 b0 36 00 00                          .byte 0x0c, 0xf4, 0x0e, 0x00, 0xb0, 0x36, 0x00, 0x00

; FUNCTION 0x008a5760, declared_size=48, range_size=48, mode=thumb
; class-group: std::time_get_byname<wchar_t, std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> > >
; alias: _ZNSt15time_get_bynameIwSt19istreambuf_iteratorIwSt11char_traitsIwEEED0Ev
; demangled: std::time_get_byname<wchar_t, std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> > >::~time_get_byname()
; decoder-mode: thumb
008a5760  10 b5                                            push {r4, lr}
008a5762  09 4b                                            ldr r3, [pc, #0x24]
008a5764  09 4a                                            ldr r2, [pc, #0x24]
008a5766  04 1c                                            adds r4, r0, #0
008a5768  7b 44                                            add r3, pc
008a576a  9a 58                                            ldr r2, [r3, r2]
008a576c  08 32                                            adds r2, #8
008a576e  02 60                                            str r2, [r0]
008a5770  0c 30                                            adds r0, #0xc
008a5772  ff f7 2d ff                                      bl #0x8a55d0
008a5776  20 1c                                            adds r0, r4, #0
008a5778  fe f7 c0 f8                                      bl #0x8a38fc
008a577c  20 1c                                            adds r0, r4, #0
008a577e  68 f6 98 e5                                      blx #0x30e2b0
008a5782  20 1c                                            adds r0, r4, #0
008a5784  10 bd                                            pop {r4, pc}
008a5786  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008a5788  2c f3 0e 00 b0 36 00 00                          .byte 0x2c, 0xf3, 0x0e, 0x00, 0xb0, 0x36, 0x00, 0x00

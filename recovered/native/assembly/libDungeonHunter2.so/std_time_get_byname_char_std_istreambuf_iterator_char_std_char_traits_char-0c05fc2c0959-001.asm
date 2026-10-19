; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008a4a54, declared_size=12, range_size=12, mode=thumb
; class-group: std::time_get_byname<char, std::istreambuf_iterator<char, std::char_traits<char> > >
; alias: _ZNKSt15time_get_bynameIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE13do_date_orderEv
; demangled: std::time_get_byname<char, std::istreambuf_iterator<char, std::char_traits<char> > >::do_date_order() const
; decoder-mode: thumb
008a4a54  01 4b                                            ldr r3, [pc, #4]
008a4a56  c0 58                                            ldr r0, [r0, r3]
008a4a58  70 47                                            bx lr
008a4a5a  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008a4a5c  44 04 00 00                                      .byte 0x44, 0x04, 0x00, 0x00

; FUNCTION 0x008a5840, declared_size=40, range_size=40, mode=thumb
; class-group: std::time_get_byname<char, std::istreambuf_iterator<char, std::char_traits<char> > >
; alias: _ZNSt15time_get_bynameIcSt19istreambuf_iteratorIcSt11char_traitsIcEEED1Ev
; demangled: std::time_get_byname<char, std::istreambuf_iterator<char, std::char_traits<char> > >::~time_get_byname()
; decoder-mode: thumb
008a5840  10 b5                                            push {r4, lr}
008a5842  07 4b                                            ldr r3, [pc, #0x1c]
008a5844  07 4a                                            ldr r2, [pc, #0x1c]
008a5846  04 1c                                            adds r4, r0, #0
008a5848  7b 44                                            add r3, pc
008a584a  9a 58                                            ldr r2, [r3, r2]
008a584c  08 32                                            adds r2, #8
008a584e  02 60                                            str r2, [r0]
008a5850  0c 30                                            adds r0, #0xc
008a5852  ff f7 9d ff                                      bl #0x8a5790
008a5856  20 1c                                            adds r0, r4, #0
008a5858  fe f7 50 f8                                      bl #0x8a38fc
008a585c  20 1c                                            adds r0, r4, #0
008a585e  10 bd                                            pop {r4, pc}
; mapping-symbol data/literal pool
008a5860  4c f2 0e 00 f0 3c 00 00                          .byte 0x4c, 0xf2, 0x0e, 0x00, 0xf0, 0x3c, 0x00, 0x00

; FUNCTION 0x008a58f0, declared_size=48, range_size=48, mode=thumb
; class-group: std::time_get_byname<char, std::istreambuf_iterator<char, std::char_traits<char> > >
; alias: _ZNSt15time_get_bynameIcSt19istreambuf_iteratorIcSt11char_traitsIcEEED0Ev
; demangled: std::time_get_byname<char, std::istreambuf_iterator<char, std::char_traits<char> > >::~time_get_byname()
; decoder-mode: thumb
008a58f0  10 b5                                            push {r4, lr}
008a58f2  09 4b                                            ldr r3, [pc, #0x24]
008a58f4  09 4a                                            ldr r2, [pc, #0x24]
008a58f6  04 1c                                            adds r4, r0, #0
008a58f8  7b 44                                            add r3, pc
008a58fa  9a 58                                            ldr r2, [r3, r2]
008a58fc  08 32                                            adds r2, #8
008a58fe  02 60                                            str r2, [r0]
008a5900  0c 30                                            adds r0, #0xc
008a5902  ff f7 45 ff                                      bl #0x8a5790
008a5906  20 1c                                            adds r0, r4, #0
008a5908  fd f7 f8 ff                                      bl #0x8a38fc
008a590c  20 1c                                            adds r0, r4, #0
008a590e  68 f6 d0 e4                                      blx #0x30e2b0
008a5912  20 1c                                            adds r0, r4, #0
008a5914  10 bd                                            pop {r4, pc}
008a5916  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008a5918  9c f1 0e 00 f0 3c 00 00                          .byte 0x9c, 0xf1, 0x0e, 0x00, 0xf0, 0x3c, 0x00, 0x00

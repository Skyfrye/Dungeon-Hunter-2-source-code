; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008b8754, declared_size=66, range_size=66, mode=thumb
; class-group: std::_Underflow<wchar_t, std::char_traits<wchar_t> >
; alias: _ZNSt10_UnderflowIwSt11char_traitsIwEE7_M_doitEPSt13basic_filebufIwS1_E
; demangled: std::_Underflow<wchar_t, std::char_traits<wchar_t> >::_M_doit(std::basic_filebuf<wchar_t, std::char_traits<wchar_t> >*)
; decoder-mode: thumb
008b8754  10 b5                                            push {r4, lr}
008b8756  2f 23                                            movs r3, #0x2f
008b8758  c3 5c                                            ldrb r3, [r0, r3]
008b875a  04 1c                                            adds r4, r0, #0
008b875c  00 2b                                            cmp r3, #0
008b875e  13 d0                                            beq #0x8b8788
008b8760  32 23                                            movs r3, #0x32
008b8762  c2 5c                                            ldrb r2, [r0, r3]
008b8764  00 2a                                            cmp r2, #0
008b8766  0b d0                                            beq #0x8b8780
008b8768  02 6e                                            ldr r2, [r0, #0x60]
008b876a  41 6e                                            ldr r1, [r0, #0x64]
008b876c  c0 6d                                            ldr r0, [r0, #0x5c]
008b876e  a2 60                                            str r2, [r4, #8]
008b8770  e1 60                                            str r1, [r4, #0xc]
008b8772  60 60                                            str r0, [r4, #4]
008b8774  00 20                                            movs r0, #0
008b8776  e0 54                                            strb r0, [r4, r3]
008b8778  8a 42                                            cmp r2, r1
008b877a  01 d0                                            beq #0x8b8780
008b877c  10 68                                            ldr r0, [r2]
008b877e  02 e0                                            b #0x8b8786
008b8780  20 1c                                            adds r0, r4, #0
008b8782  ff f7 57 ff                                      bl #0x8b8634
008b8786  10 bd                                            pop {r4, pc}
008b8788  fe f7 58 fe                                      bl #0x8b743c
008b878c  00 28                                            cmp r0, #0
008b878e  f7 d1                                            bne #0x8b8780
008b8790  01 20                                            movs r0, #1
008b8792  40 42                                            rsbs r0, r0, #0
008b8794  f7 e7                                            b #0x8b8786

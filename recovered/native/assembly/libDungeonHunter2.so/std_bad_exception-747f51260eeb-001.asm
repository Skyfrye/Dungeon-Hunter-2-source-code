; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008a222c, declared_size=32, range_size=32, mode=thumb
; class-group: std::bad_exception
; alias: _ZNSt13bad_exceptionC2Ev
; demangled: std::bad_exception::bad_exception()
; decoder-mode: thumb
008a222c  70 b5                                            push {r4, r5, r6, lr}
008a222e  05 4c                                            ldr r4, [pc, #0x14]
008a2230  05 1c                                            adds r5, r0, #0
008a2232  ff f7 df ff                                      bl #0x8a21f4
008a2236  04 4b                                            ldr r3, [pc, #0x10]
008a2238  7c 44                                            add r4, pc
008a223a  28 1c                                            adds r0, r5, #0
008a223c  e3 58                                            ldr r3, [r4, r3]
008a223e  08 33                                            adds r3, #8
008a2240  2b 60                                            str r3, [r5]
008a2242  70 bd                                            pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
008a2244  5c 28 0f 00 20 26 00 00                          .byte 0x5c, 0x28, 0x0f, 0x00, 0x20, 0x26, 0x00, 0x00

; FUNCTION 0x008a224c, declared_size=32, range_size=32, mode=thumb
; class-group: std::bad_exception
; alias: _ZNSt13bad_exceptionC1Ev
; demangled: std::bad_exception::bad_exception()
; decoder-mode: thumb
008a224c  70 b5                                            push {r4, r5, r6, lr}
008a224e  05 4c                                            ldr r4, [pc, #0x14]
008a2250  05 1c                                            adds r5, r0, #0
008a2252  ff f7 cf ff                                      bl #0x8a21f4
008a2256  04 4b                                            ldr r3, [pc, #0x10]
008a2258  7c 44                                            add r4, pc
008a225a  28 1c                                            adds r0, r5, #0
008a225c  e3 58                                            ldr r3, [r4, r3]
008a225e  08 33                                            adds r3, #8
008a2260  2b 60                                            str r3, [r5]
008a2262  70 bd                                            pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
008a2264  3c 28 0f 00 20 26 00 00                          .byte 0x3c, 0x28, 0x0f, 0x00, 0x20, 0x26, 0x00, 0x00

; FUNCTION 0x008a226c, declared_size=32, range_size=32, mode=thumb
; class-group: std::bad_exception
; alias: _ZNSt13bad_exceptionD2Ev
; demangled: std::bad_exception::~bad_exception()
; decoder-mode: thumb
008a226c  10 b5                                            push {r4, lr}
008a226e  05 4b                                            ldr r3, [pc, #0x14]
008a2270  05 4a                                            ldr r2, [pc, #0x14]
008a2272  04 1c                                            adds r4, r0, #0
008a2274  7b 44                                            add r3, pc
008a2276  9a 58                                            ldr r2, [r3, r2]
008a2278  08 32                                            adds r2, #8
008a227a  02 60                                            str r2, [r0]
008a227c  ff f7 d2 ff                                      bl #0x8a2224
008a2280  20 1c                                            adds r0, r4, #0
008a2282  10 bd                                            pop {r4, pc}
; mapping-symbol data/literal pool
008a2284  20 28 0f 00 20 26 00 00                          .byte 0x20, 0x28, 0x0f, 0x00, 0x20, 0x26, 0x00, 0x00

; FUNCTION 0x008a228c, declared_size=32, range_size=32, mode=thumb
; class-group: std::bad_exception
; alias: _ZNSt13bad_exceptionD1Ev
; demangled: std::bad_exception::~bad_exception()
; decoder-mode: thumb
008a228c  10 b5                                            push {r4, lr}
008a228e  05 4b                                            ldr r3, [pc, #0x14]
008a2290  05 4a                                            ldr r2, [pc, #0x14]
008a2292  04 1c                                            adds r4, r0, #0
008a2294  7b 44                                            add r3, pc
008a2296  9a 58                                            ldr r2, [r3, r2]
008a2298  08 32                                            adds r2, #8
008a229a  02 60                                            str r2, [r0]
008a229c  ff f7 c2 ff                                      bl #0x8a2224
008a22a0  20 1c                                            adds r0, r4, #0
008a22a2  10 bd                                            pop {r4, pc}
; mapping-symbol data/literal pool
008a22a4  00 28 0f 00 20 26 00 00                          .byte 0x00, 0x28, 0x0f, 0x00, 0x20, 0x26, 0x00, 0x00

; FUNCTION 0x008a22b8, declared_size=12, range_size=12, mode=thumb
; class-group: std::bad_exception
; alias: _ZNKSt13bad_exception4whatEv
; demangled: std::bad_exception::what() const
; decoder-mode: thumb
008a22b8  01 48                                            ldr r0, [pc, #4]
008a22ba  78 44                                            add r0, pc
008a22bc  70 47                                            bx lr
008a22be  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008a22c0  6a 2e 07 00                                      .byte 0x6a, 0x2e, 0x07, 0x00

; FUNCTION 0x008a22e0, declared_size=18, range_size=18, mode=thumb
; class-group: std::bad_exception
; alias: _ZNSt13bad_exceptionD0Ev
; demangled: std::bad_exception::~bad_exception()
; decoder-mode: thumb
008a22e0  10 b5                                            push {r4, lr}
008a22e2  04 1c                                            adds r4, r0, #0
008a22e4  ff f7 d2 ff                                      bl #0x8a228c
008a22e8  20 1c                                            adds r0, r4, #0
008a22ea  6b f6 e2 e7                                      blx #0x30e2b0
008a22ee  20 1c                                            adds r0, r4, #0
008a22f0  10 bd                                            pop {r4, pc}

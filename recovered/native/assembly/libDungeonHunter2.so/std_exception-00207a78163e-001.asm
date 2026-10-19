; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008a21f4, declared_size=24, range_size=24, mode=thumb
; class-group: std::exception
; alias: _ZNSt9exceptionC2Ev
; demangled: std::exception::exception()
; decoder-mode: thumb
008a21f4  03 4b                                            ldr r3, [pc, #0xc]
008a21f6  04 4a                                            ldr r2, [pc, #0x10]
008a21f8  7b 44                                            add r3, pc
008a21fa  9a 58                                            ldr r2, [r3, r2]
008a21fc  08 32                                            adds r2, #8
008a21fe  02 60                                            str r2, [r0]
008a2200  70 47                                            bx lr
008a2202  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008a2204  9c 28 0f 00 74 0d 00 00                          .byte 0x9c, 0x28, 0x0f, 0x00, 0x74, 0x0d, 0x00, 0x00

; FUNCTION 0x008a220c, declared_size=24, range_size=24, mode=thumb
; class-group: std::exception
; alias: _ZNSt9exceptionC1Ev
; demangled: std::exception::exception()
; decoder-mode: thumb
008a220c  03 4b                                            ldr r3, [pc, #0xc]
008a220e  04 4a                                            ldr r2, [pc, #0x10]
008a2210  7b 44                                            add r3, pc
008a2212  9a 58                                            ldr r2, [r3, r2]
008a2214  08 32                                            adds r2, #8
008a2216  02 60                                            str r2, [r0]
008a2218  70 47                                            bx lr
008a221a  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008a221c  84 28 0f 00 74 0d 00 00                          .byte 0x84, 0x28, 0x0f, 0x00, 0x74, 0x0d, 0x00, 0x00

; FUNCTION 0x008a2224, declared_size=2, range_size=2, mode=thumb
; class-group: std::exception
; alias: _ZNSt9exceptionD2Ev
; demangled: std::exception::~exception()
; decoder-mode: thumb
008a2224  70 47                                            bx lr

; FUNCTION 0x008a2228, declared_size=2, range_size=2, mode=thumb
; class-group: std::exception
; alias: _ZNSt9exceptionD1Ev
; demangled: std::exception::~exception()
; decoder-mode: thumb
008a2228  70 47                                            bx lr

; FUNCTION 0x008a22ac, declared_size=12, range_size=12, mode=thumb
; class-group: std::exception
; alias: _ZNKSt9exception4whatEv
; demangled: std::exception::what() const
; decoder-mode: thumb
008a22ac  01 48                                            ldr r0, [pc, #4]
008a22ae  78 44                                            add r0, pc
008a22b0  70 47                                            bx lr
008a22b2  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008a22b4  66 2e 07 00                                      .byte 0x66, 0x2e, 0x07, 0x00

; FUNCTION 0x008a22cc, declared_size=18, range_size=18, mode=thumb
; class-group: std::exception
; alias: _ZNSt9exceptionD0Ev
; demangled: std::exception::~exception()
; decoder-mode: thumb
008a22cc  10 b5                                            push {r4, lr}
008a22ce  04 1c                                            adds r4, r0, #0
008a22d0  ff f7 aa ff                                      bl #0x8a2228
008a22d4  20 1c                                            adds r0, r4, #0
008a22d6  6b f6 ec e7                                      blx #0x30e2b0
008a22da  20 1c                                            adds r0, r4, #0
008a22dc  10 bd                                            pop {r4, pc}

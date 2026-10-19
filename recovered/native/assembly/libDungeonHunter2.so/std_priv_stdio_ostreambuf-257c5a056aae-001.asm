; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008bdf7c, declared_size=6, range_size=6, mode=thumb
; class-group: std::priv::stdio_ostreambuf
; alias: _ZNSt4priv16stdio_ostreambuf9showmanycEv
; demangled: std::priv::stdio_ostreambuf::showmanyc()
; decoder-mode: thumb
008bdf7c  01 20                                            movs r0, #1
008bdf7e  40 42                                            rsbs r0, r0, #0
008bdf80  70 47                                            bx lr

; FUNCTION 0x008bdf94, declared_size=56, range_size=56, mode=thumb
; class-group: std::priv::stdio_ostreambuf
; alias: _ZNSt4priv16stdio_ostreambuf8overflowEi
; demangled: std::priv::stdio_ostreambuf::overflow(int)
; decoder-mode: thumb
008bdf94  70 b5                                            push {r4, r5, r6, lr}
008bdf96  05 1c                                            adds r5, r0, #0
008bdf98  0c 1c                                            adds r4, r1, #0
008bdf9a  4b 1c                                            adds r3, r1, #1
008bdf9c  04 d0                                            beq #0x8bdfa8
008bdf9e  01 6a                                            ldr r1, [r0, #0x20]
008bdfa0  20 1c                                            adds r0, r4, #0
008bdfa2  50 f6 b4 e0                                      blx #0x30e10c
008bdfa6  70 bd                                            pop {r4, r5, r6, pc}
008bdfa8  46 69                                            ldr r6, [r0, #0x14]
008bdfaa  03 69                                            ldr r3, [r0, #0x10]
008bdfac  f6 1a                                            subs r6, r6, r3
008bdfae  00 2e                                            cmp r6, #0
008bdfb0  01 d1                                            bne #0x8bdfb6
008bdfb2  00 20                                            movs r0, #0
008bdfb4  f7 e7                                            b #0x8bdfa6
008bdfb6  00 6a                                            ldr r0, [r0, #0x20]
008bdfb8  50 f6 8e e2                                      blx #0x30e4d8
008bdfbc  6a 69                                            ldr r2, [r5, #0x14]
008bdfbe  2b 69                                            ldr r3, [r5, #0x10]
008bdfc0  20 1c                                            adds r0, r4, #0
008bdfc2  d3 1a                                            subs r3, r2, r3
008bdfc4  9e 42                                            cmp r6, r3
008bdfc6  ee dd                                            ble #0x8bdfa6
008bdfc8  00 20                                            movs r0, #0
008bdfca  ec e7                                            b #0x8bdfa6

; FUNCTION 0x008be140, declared_size=32, range_size=32, mode=thumb
; class-group: std::priv::stdio_ostreambuf
; alias: _ZNSt4priv16stdio_ostreambufD1Ev
; demangled: std::priv::stdio_ostreambuf::~stdio_ostreambuf()
; decoder-mode: thumb
008be140  10 b5                                            push {r4, lr}
008be142  05 4b                                            ldr r3, [pc, #0x14]
008be144  05 4a                                            ldr r2, [pc, #0x14]
008be146  04 1c                                            adds r4, r0, #0
008be148  7b 44                                            add r3, pc
008be14a  9a 58                                            ldr r2, [r3, r2]
008be14c  08 32                                            adds r2, #8
008be14e  02 60                                            str r2, [r0]
008be150  ff f7 da ff                                      bl #0x8be108
008be154  20 1c                                            adds r0, r4, #0
008be156  10 bd                                            pop {r4, pc}
; mapping-symbol data/literal pool
008be158  4c 69 0d 00 f0 44 00 00                          .byte 0x4c, 0x69, 0x0d, 0x00, 0xf0, 0x44, 0x00, 0x00

; FUNCTION 0x008be160, declared_size=18, range_size=18, mode=thumb
; class-group: std::priv::stdio_ostreambuf
; alias: _ZNSt4priv16stdio_ostreambufD0Ev
; demangled: std::priv::stdio_ostreambuf::~stdio_ostreambuf()
; decoder-mode: thumb
008be160  10 b5                                            push {r4, lr}
008be162  04 1c                                            adds r4, r0, #0
008be164  ff f7 ec ff                                      bl #0x8be140
008be168  20 1c                                            adds r0, r4, #0
008be16a  50 f6 a2 e0                                      blx #0x30e2b0
008be16e  20 1c                                            adds r0, r4, #0
008be170  10 bd                                            pop {r4, pc}

; FUNCTION 0x008be174, declared_size=32, range_size=32, mode=thumb
; class-group: std::priv::stdio_ostreambuf
; alias: _ZNSt4priv16stdio_ostreambufD2Ev
; demangled: std::priv::stdio_ostreambuf::~stdio_ostreambuf()
; decoder-mode: thumb
008be174  10 b5                                            push {r4, lr}
008be176  05 4b                                            ldr r3, [pc, #0x14]
008be178  05 4a                                            ldr r2, [pc, #0x14]
008be17a  04 1c                                            adds r4, r0, #0
008be17c  7b 44                                            add r3, pc
008be17e  9a 58                                            ldr r2, [r3, r2]
008be180  08 32                                            adds r2, #8
008be182  02 60                                            str r2, [r0]
008be184  ff f7 c0 ff                                      bl #0x8be108
008be188  20 1c                                            adds r0, r4, #0
008be18a  10 bd                                            pop {r4, pc}
; mapping-symbol data/literal pool
008be18c  18 69 0d 00 f0 44 00 00                          .byte 0x18, 0x69, 0x0d, 0x00, 0xf0, 0x44, 0x00, 0x00

; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008bdf78, declared_size=4, range_size=4, mode=thumb
; class-group: std::priv::stdio_istreambuf
; alias: _ZNSt4priv16stdio_istreambuf9showmanycEv
; demangled: std::priv::stdio_istreambuf::showmanyc()
; decoder-mode: thumb
008bdf78  00 20                                            movs r0, #0
008bdf7a  70 47                                            bx lr

; FUNCTION 0x008bdfcc, declared_size=38, range_size=38, mode=thumb
; class-group: std::priv::stdio_istreambuf
; alias: _ZNSt4priv16stdio_istreambuf9pbackfailEi
; demangled: std::priv::stdio_istreambuf::pbackfail(int)
; decoder-mode: thumb
008bdfcc  10 b5                                            push {r4, lr}
008bdfce  03 1c                                            adds r3, r0, #0
008bdfd0  4a 1c                                            adds r2, r1, #1
008bdfd2  05 d0                                            beq #0x8bdfe0
008bdfd4  03 6a                                            ldr r3, [r0, #0x20]
008bdfd6  08 1c                                            adds r0, r1, #0
008bdfd8  19 1c                                            adds r1, r3, #0
008bdfda  50 f6 f8 e6                                      blx #0x30edcc
008bdfde  10 bd                                            pop {r4, pc}
008bdfe0  82 68                                            ldr r2, [r0, #8]
008bdfe2  44 68                                            ldr r4, [r0, #4]
008bdfe4  08 1c                                            adds r0, r1, #0
008bdfe6  94 42                                            cmp r4, r2
008bdfe8  f9 d2                                            bhs #0x8bdfde
008bdfea  01 3a                                            subs r2, #1
008bdfec  9a 60                                            str r2, [r3, #8]
008bdfee  00 20                                            movs r0, #0
008bdff0  f5 e7                                            b #0x8bdfde

; FUNCTION 0x008bdff4, declared_size=10, range_size=10, mode=thumb
; class-group: std::priv::stdio_istreambuf
; alias: _ZNSt4priv16stdio_istreambuf5uflowEv
; demangled: std::priv::stdio_istreambuf::uflow()
; decoder-mode: thumb
008bdff4  10 b5                                            push {r4, lr}
008bdff6  00 6a                                            ldr r0, [r0, #0x20]
008bdff8  50 f6 70 e0                                      blx #0x30e0dc
008bdffc  10 bd                                            pop {r4, pc}

; FUNCTION 0x008be000, declared_size=26, range_size=26, mode=thumb
; class-group: std::priv::stdio_istreambuf
; alias: _ZNSt4priv16stdio_istreambuf9underflowEv
; demangled: std::priv::stdio_istreambuf::underflow()
; decoder-mode: thumb
008be000  70 b5                                            push {r4, r5, r6, lr}
008be002  05 1c                                            adds r5, r0, #0
008be004  00 6a                                            ldr r0, [r0, #0x20]
008be006  50 f6 6a e0                                      blx #0x30e0dc
008be00a  04 1c                                            adds r4, r0, #0
008be00c  43 1c                                            adds r3, r0, #1
008be00e  02 d0                                            beq #0x8be016
008be010  29 6a                                            ldr r1, [r5, #0x20]
008be012  50 f6 dc e6                                      blx #0x30edcc
008be016  20 1c                                            adds r0, r4, #0
008be018  70 bd                                            pop {r4, r5, r6, pc}

; FUNCTION 0x008be194, declared_size=32, range_size=32, mode=thumb
; class-group: std::priv::stdio_istreambuf
; alias: _ZNSt4priv16stdio_istreambufD1Ev
; demangled: std::priv::stdio_istreambuf::~stdio_istreambuf()
; decoder-mode: thumb
008be194  10 b5                                            push {r4, lr}
008be196  05 4b                                            ldr r3, [pc, #0x14]
008be198  05 4a                                            ldr r2, [pc, #0x14]
008be19a  04 1c                                            adds r4, r0, #0
008be19c  7b 44                                            add r3, pc
008be19e  9a 58                                            ldr r2, [r3, r2]
008be1a0  08 32                                            adds r2, #8
008be1a2  02 60                                            str r2, [r0]
008be1a4  ff f7 b0 ff                                      bl #0x8be108
008be1a8  20 1c                                            adds r0, r4, #0
008be1aa  10 bd                                            pop {r4, pc}
; mapping-symbol data/literal pool
008be1ac  f8 68 0d 00 e0 4b 00 00                          .byte 0xf8, 0x68, 0x0d, 0x00, 0xe0, 0x4b, 0x00, 0x00

; FUNCTION 0x008be1b4, declared_size=18, range_size=18, mode=thumb
; class-group: std::priv::stdio_istreambuf
; alias: _ZNSt4priv16stdio_istreambufD0Ev
; demangled: std::priv::stdio_istreambuf::~stdio_istreambuf()
; decoder-mode: thumb
008be1b4  10 b5                                            push {r4, lr}
008be1b6  04 1c                                            adds r4, r0, #0
008be1b8  ff f7 ec ff                                      bl #0x8be194
008be1bc  20 1c                                            adds r0, r4, #0
008be1be  50 f6 78 e0                                      blx #0x30e2b0
008be1c2  20 1c                                            adds r0, r4, #0
008be1c4  10 bd                                            pop {r4, pc}

; FUNCTION 0x008be1c8, declared_size=32, range_size=32, mode=thumb
; class-group: std::priv::stdio_istreambuf
; alias: _ZNSt4priv16stdio_istreambufD2Ev
; demangled: std::priv::stdio_istreambuf::~stdio_istreambuf()
; decoder-mode: thumb
008be1c8  10 b5                                            push {r4, lr}
008be1ca  05 4b                                            ldr r3, [pc, #0x14]
008be1cc  05 4a                                            ldr r2, [pc, #0x14]
008be1ce  04 1c                                            adds r4, r0, #0
008be1d0  7b 44                                            add r3, pc
008be1d2  9a 58                                            ldr r2, [r3, r2]
008be1d4  08 32                                            adds r2, #8
008be1d6  02 60                                            str r2, [r0]
008be1d8  ff f7 96 ff                                      bl #0x8be108
008be1dc  20 1c                                            adds r0, r4, #0
008be1de  10 bd                                            pop {r4, pc}
; mapping-symbol data/literal pool
008be1e0  c4 68 0d 00 e0 4b 00 00                          .byte 0xc4, 0x68, 0x0d, 0x00, 0xe0, 0x4b, 0x00, 0x00

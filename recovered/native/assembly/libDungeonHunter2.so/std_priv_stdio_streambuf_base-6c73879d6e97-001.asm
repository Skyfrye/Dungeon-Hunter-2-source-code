; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008bdf84, declared_size=16, range_size=16, mode=thumb
; class-group: std::priv::stdio_streambuf_base
; alias: _ZNSt4priv20stdio_streambuf_base4syncEv
; demangled: std::priv::stdio_streambuf_base::sync()
; decoder-mode: thumb
008bdf84  10 b5                                            push {r4, lr}
008bdf86  00 6a                                            ldr r0, [r0, #0x20]
008bdf88  50 f6 a6 e2                                      blx #0x30e4d8
008bdf8c  43 42                                            rsbs r3, r0, #0
008bdf8e  43 41                                            adcs r3, r0
008bdf90  58 1e                                            subs r0, r3, #1
008bdf92  10 bd                                            pop {r4, pc}

; FUNCTION 0x008be01c, declared_size=50, range_size=50, mode=thumb
; class-group: std::priv::stdio_streambuf_base
; alias: _ZNSt4priv20stdio_streambuf_base7seekposESt4fposI9mbstate_tEi
; demangled: std::priv::stdio_streambuf_base::seekpos(std::fpos<mbstate_t>, int)
; decoder-mode: thumb
008be01c  70 b5                                            push {r4, r5, r6, lr}
008be01e  84 b0                                            sub sp, #0x10
008be020  00 92                                            str r2, [sp]
008be022  01 93                                            str r3, [sp, #4]
008be024  03 92                                            str r2, [sp, #0xc]
008be026  04 1c                                            adds r4, r0, #0
008be028  08 6a                                            ldr r0, [r1, #0x20]
008be02a  03 a9                                            add r1, sp, #0xc
008be02c  15 1c                                            adds r5, r2, #0
008be02e  1e 1c                                            adds r6, r3, #0
008be030  50 f6 58 e2                                      blx #0x30e4e4
008be034  00 28                                            cmp r0, #0
008be036  07 d0                                            beq #0x8be048
008be038  01 23                                            movs r3, #1
008be03a  5b 42                                            rsbs r3, r3, #0
008be03c  23 60                                            str r3, [r4]
008be03e  00 23                                            movs r3, #0
008be040  63 60                                            str r3, [r4, #4]
008be042  04 b0                                            add sp, #0x10
008be044  20 1c                                            adds r0, r4, #0
008be046  70 bd                                            pop {r4, r5, r6, pc}
008be048  66 60                                            str r6, [r4, #4]
008be04a  25 60                                            str r5, [r4]
008be04c  f9 e7                                            b #0x8be042

; FUNCTION 0x008be050, declared_size=74, range_size=74, mode=thumb
; class-group: std::priv::stdio_streambuf_base
; alias: _ZNSt4priv20stdio_streambuf_base7seekoffElii
; demangled: std::priv::stdio_streambuf_base::seekoff(long, int, int)
; decoder-mode: thumb
008be050  70 b5                                            push {r4, r5, r6, lr}
008be052  0d 1c                                            adds r5, r1, #0
008be054  82 b0                                            sub sp, #8
008be056  04 1c                                            adds r4, r0, #0
008be058  11 1c                                            adds r1, r2, #0
008be05a  02 2b                                            cmp r3, #2
008be05c  1b d0                                            beq #0x8be096
008be05e  04 2b                                            cmp r3, #4
008be060  17 d0                                            beq #0x8be092
008be062  01 2b                                            cmp r3, #1
008be064  07 d0                                            beq #0x8be076
008be066  01 23                                            movs r3, #1
008be068  5b 42                                            rsbs r3, r3, #0
008be06a  23 60                                            str r3, [r4]
008be06c  00 23                                            movs r3, #0
008be06e  63 60                                            str r3, [r4, #4]
008be070  02 b0                                            add sp, #8
008be072  20 1c                                            adds r0, r4, #0
008be074  70 bd                                            pop {r4, r5, r6, pc}
008be076  00 22                                            movs r2, #0
008be078  28 6a                                            ldr r0, [r5, #0x20]
008be07a  50 f6 b8 e2                                      blx #0x30e5ec
008be07e  06 1e                                            subs r6, r0, #0
008be080  f1 d1                                            bne #0x8be066
008be082  28 6a                                            ldr r0, [r5, #0x20]
008be084  01 a9                                            add r1, sp, #4
008be086  4f f6 b0 e6                                      blx #0x30dde8
008be08a  01 9b                                            ldr r3, [sp, #4]
008be08c  66 60                                            str r6, [r4, #4]
008be08e  23 60                                            str r3, [r4]
008be090  ee e7                                            b #0x8be070
008be092  02 22                                            movs r2, #2
008be094  f0 e7                                            b #0x8be078
008be096  01 22                                            movs r2, #1
008be098  ee e7                                            b #0x8be078

; FUNCTION 0x008be09c, declared_size=30, range_size=30, mode=thumb
; class-group: std::priv::stdio_streambuf_base
; alias: _ZNSt4priv20stdio_streambuf_base6setbufEPci
; demangled: std::priv::stdio_streambuf_base::setbuf(char*, int)
; decoder-mode: thumb
008be09c  10 b5                                            push {r4, lr}
008be09e  04 1c                                            adds r4, r0, #0
008be0a0  13 1c                                            adds r3, r2, #0
008be0a2  00 6a                                            ldr r0, [r0, #0x20]
008be0a4  00 29                                            cmp r1, #0
008be0a6  04 d0                                            beq #0x8be0b2
008be0a8  00 22                                            movs r2, #0
008be0aa  4f f6 e2 e7                                      blx #0x30e070
008be0ae  20 1c                                            adds r0, r4, #0
008be0b0  10 bd                                            pop {r4, pc}
008be0b2  02 22                                            movs r2, #2
008be0b4  00 2b                                            cmp r3, #0
008be0b6  f7 d1                                            bne #0x8be0a8
008be0b8  f7 e7                                            b #0x8be0aa

; FUNCTION 0x008be0bc, declared_size=56, range_size=56, mode=thumb
; class-group: std::priv::stdio_streambuf_base
; alias: _ZNSt4priv20stdio_streambuf_baseD1Ev
; demangled: std::priv::stdio_streambuf_base::~stdio_streambuf_base()
; decoder-mode: thumb
008be0bc  70 b5                                            push {r4, r5, r6, lr}
008be0be  0a 4d                                            ldr r5, [pc, #0x28]
008be0c0  0a 4b                                            ldr r3, [pc, #0x28]
008be0c2  04 1c                                            adds r4, r0, #0
008be0c4  7d 44                                            add r5, pc
008be0c6  eb 58                                            ldr r3, [r5, r3]
008be0c8  08 33                                            adds r3, #8
008be0ca  03 60                                            str r3, [r0]
008be0cc  00 6a                                            ldr r0, [r0, #0x20]
008be0ce  50 f6 04 e2                                      blx #0x30e4d8
008be0d2  07 4b                                            ldr r3, [pc, #0x1c]
008be0d4  20 1c                                            adds r0, r4, #0
008be0d6  1c 30                                            adds r0, #0x1c
008be0d8  eb 58                                            ldr r3, [r5, r3]
008be0da  08 33                                            adds r3, #8
008be0dc  23 60                                            str r3, [r4]
008be0de  e5 f7 09 fa                                      bl #0x8a34f4
008be0e2  20 1c                                            adds r0, r4, #0
008be0e4  70 bd                                            pop {r4, r5, r6, pc}
008be0e6  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008be0e8  d0 69 0d 00 e4 35 00 00 b4 07 00 00              .byte 0xd0, 0x69, 0x0d, 0x00, 0xe4, 0x35, 0x00, 0x00, 0xb4, 0x07, 0x00, 0x00

; FUNCTION 0x008be0f4, declared_size=18, range_size=18, mode=thumb
; class-group: std::priv::stdio_streambuf_base
; alias: _ZNSt4priv20stdio_streambuf_baseD0Ev
; demangled: std::priv::stdio_streambuf_base::~stdio_streambuf_base()
; decoder-mode: thumb
008be0f4  10 b5                                            push {r4, lr}
008be0f6  04 1c                                            adds r4, r0, #0
008be0f8  ff f7 e0 ff                                      bl #0x8be0bc
008be0fc  20 1c                                            adds r0, r4, #0
008be0fe  50 f6 d8 e0                                      blx #0x30e2b0
008be102  20 1c                                            adds r0, r4, #0
008be104  10 bd                                            pop {r4, pc}

; FUNCTION 0x008be108, declared_size=56, range_size=56, mode=thumb
; class-group: std::priv::stdio_streambuf_base
; alias: _ZNSt4priv20stdio_streambuf_baseD2Ev
; demangled: std::priv::stdio_streambuf_base::~stdio_streambuf_base()
; decoder-mode: thumb
008be108  70 b5                                            push {r4, r5, r6, lr}
008be10a  0a 4d                                            ldr r5, [pc, #0x28]
008be10c  0a 4b                                            ldr r3, [pc, #0x28]
008be10e  04 1c                                            adds r4, r0, #0
008be110  7d 44                                            add r5, pc
008be112  eb 58                                            ldr r3, [r5, r3]
008be114  08 33                                            adds r3, #8
008be116  03 60                                            str r3, [r0]
008be118  00 6a                                            ldr r0, [r0, #0x20]
008be11a  50 f6 de e1                                      blx #0x30e4d8
008be11e  07 4b                                            ldr r3, [pc, #0x1c]
008be120  20 1c                                            adds r0, r4, #0
008be122  1c 30                                            adds r0, #0x1c
008be124  eb 58                                            ldr r3, [r5, r3]
008be126  08 33                                            adds r3, #8
008be128  23 60                                            str r3, [r4]
008be12a  e5 f7 e3 f9                                      bl #0x8a34f4
008be12e  20 1c                                            adds r0, r4, #0
008be130  70 bd                                            pop {r4, r5, r6, pc}
008be132  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008be134  84 69 0d 00 e4 35 00 00 b4 07 00 00              .byte 0x84, 0x69, 0x0d, 0x00, 0xe4, 0x35, 0x00, 0x00, 0xb4, 0x07, 0x00, 0x00

; FUNCTION 0x008be1e8, declared_size=64, range_size=64, mode=thumb
; class-group: std::priv::stdio_streambuf_base
; alias: _ZNSt4priv20stdio_streambuf_baseC1EP7__sFILE
; demangled: std::priv::stdio_streambuf_base::stdio_streambuf_base(__sFILE*)
; decoder-mode: thumb
008be1e8  70 b5                                            push {r4, r5, r6, lr}
008be1ea  0c 4d                                            ldr r5, [pc, #0x30]
008be1ec  0c 4b                                            ldr r3, [pc, #0x30]
008be1ee  04 1c                                            adds r4, r0, #0
008be1f0  7d 44                                            add r5, pc
008be1f2  eb 58                                            ldr r3, [r5, r3]
008be1f4  0e 1c                                            adds r6, r1, #0
008be1f6  08 33                                            adds r3, #8
008be1f8  03 60                                            str r3, [r0]
008be1fa  00 23                                            movs r3, #0
008be1fc  43 60                                            str r3, [r0, #4]
008be1fe  83 60                                            str r3, [r0, #8]
008be200  c3 60                                            str r3, [r0, #0xc]
008be202  03 61                                            str r3, [r0, #0x10]
008be204  43 61                                            str r3, [r0, #0x14]
008be206  83 61                                            str r3, [r0, #0x18]
008be208  1c 30                                            adds r0, #0x1c
008be20a  e5 f7 b9 f9                                      bl #0x8a3580
008be20e  05 4b                                            ldr r3, [pc, #0x14]
008be210  26 62                                            str r6, [r4, #0x20]
008be212  20 1c                                            adds r0, r4, #0
008be214  eb 58                                            ldr r3, [r5, r3]
008be216  08 33                                            adds r3, #8
008be218  23 60                                            str r3, [r4]
008be21a  70 bd                                            pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
008be21c  a4 68 0d 00 b4 07 00 00 e4 35 00 00              .byte 0xa4, 0x68, 0x0d, 0x00, 0xb4, 0x07, 0x00, 0x00, 0xe4, 0x35, 0x00, 0x00

; FUNCTION 0x008be228, declared_size=64, range_size=64, mode=thumb
; class-group: std::priv::stdio_streambuf_base
; alias: _ZNSt4priv20stdio_streambuf_baseC2EP7__sFILE
; demangled: std::priv::stdio_streambuf_base::stdio_streambuf_base(__sFILE*)
; decoder-mode: thumb
008be228  70 b5                                            push {r4, r5, r6, lr}
008be22a  0c 4d                                            ldr r5, [pc, #0x30]
008be22c  0c 4b                                            ldr r3, [pc, #0x30]
008be22e  04 1c                                            adds r4, r0, #0
008be230  7d 44                                            add r5, pc
008be232  eb 58                                            ldr r3, [r5, r3]
008be234  0e 1c                                            adds r6, r1, #0
008be236  08 33                                            adds r3, #8
008be238  03 60                                            str r3, [r0]
008be23a  00 23                                            movs r3, #0
008be23c  43 60                                            str r3, [r0, #4]
008be23e  83 60                                            str r3, [r0, #8]
008be240  c3 60                                            str r3, [r0, #0xc]
008be242  03 61                                            str r3, [r0, #0x10]
008be244  43 61                                            str r3, [r0, #0x14]
008be246  83 61                                            str r3, [r0, #0x18]
008be248  1c 30                                            adds r0, #0x1c
008be24a  e5 f7 99 f9                                      bl #0x8a3580
008be24e  05 4b                                            ldr r3, [pc, #0x14]
008be250  26 62                                            str r6, [r4, #0x20]
008be252  20 1c                                            adds r0, r4, #0
008be254  eb 58                                            ldr r3, [r5, r3]
008be256  08 33                                            adds r3, #8
008be258  23 60                                            str r3, [r4]
008be25a  70 bd                                            pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
008be25c  64 68 0d 00 b4 07 00 00 e4 35 00 00              .byte 0x64, 0x68, 0x0d, 0x00, 0xb4, 0x07, 0x00, 0x00, 0xe4, 0x35, 0x00, 0x00

; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008a4e28, declared_size=92, range_size=92, mode=thumb
; class-group: std::_Locale_impl::Init
; alias: _ZNKSt12_Locale_impl4Init8_M_countEv
; demangled: std::_Locale_impl::Init::_M_count() const
; decoder-mode: thumb
008a4e28  70 b5                                            push {r4, r5, r6, lr}
008a4e2a  11 4c                                            ldr r4, [pc, #0x44]
008a4e2c  11 4d                                            ldr r5, [pc, #0x44]
008a4e2e  01 26                                            movs r6, #1
008a4e30  7c 44                                            add r4, pc
008a4e32  23 68                                            ldr r3, [r4]
008a4e34  7d 44                                            add r5, pc
008a4e36  1e 40                                            ands r6, r3
008a4e38  03 d0                                            beq #0x8a4e42
008a4e3a  0f 48                                            ldr r0, [pc, #0x3c]
008a4e3c  78 44                                            add r0, pc
008a4e3e  04 30                                            adds r0, #4
008a4e40  70 bd                                            pop {r4, r5, r6, pc}
008a4e42  20 1c                                            adds r0, r4, #0
008a4e44  69 f6 92 e4                                      blx #0x30e76c
008a4e48  00 28                                            cmp r0, #0
008a4e4a  f6 d0                                            beq #0x8a4e3a
008a4e4c  66 60                                            str r6, [r4, #4]
008a4e4e  26 1d                                            adds r6, r4, #4
008a4e50  00 21                                            movs r1, #0
008a4e52  30 1d                                            adds r0, r6, #4
008a4e54  69 f6 ac e0                                      blx #0x30dfb0
008a4e58  20 1c                                            adds r0, r4, #0
008a4e5a  69 f6 f0 e5                                      blx #0x30ea3c
008a4e5e  07 4b                                            ldr r3, [pc, #0x1c]
008a4e60  30 1c                                            adds r0, r6, #0
008a4e62  e9 58                                            ldr r1, [r5, r3]
008a4e64  06 4b                                            ldr r3, [pc, #0x18]
008a4e66  ea 58                                            ldr r2, [r5, r3]
008a4e68  69 f6 4c e2                                      blx #0x30e304
008a4e6c  e5 e7                                            b #0x8a4e3a
008a4e6e  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008a4e70  5c 00 19 00 60 fc 0e 00 50 00 19 00 8c 43 00 00  .byte 0x5c, 0x00, 0x19, 0x00, 0x60, 0xfc, 0x0e, 0x00, 0x50, 0x00, 0x19, 0x00, 0x8c, 0x43, 0x00, 0x00
008a4e80  90 18 00 00                                      .byte 0x90, 0x18, 0x00, 0x00

; FUNCTION 0x008a5450, declared_size=44, range_size=44, mode=thumb
; class-group: std::_Locale_impl::Init
; alias: _ZNSt12_Locale_impl4InitD1Ev
; demangled: std::_Locale_impl::Init::~Init()
; decoder-mode: thumb
008a5450  70 b5                                            push {r4, r5, r6, lr}
008a5452  05 1c                                            adds r5, r0, #0
008a5454  ff f7 e8 fc                                      bl #0x8a4e28
008a5458  06 1d                                            adds r6, r0, #4
008a545a  04 1c                                            adds r4, r0, #0
008a545c  30 1c                                            adds r0, r6, #0
008a545e  69 f6 a8 e0                                      blx #0x30e5b0
008a5462  23 68                                            ldr r3, [r4]
008a5464  30 1c                                            adds r0, r6, #0
008a5466  01 3b                                            subs r3, #1
008a5468  23 60                                            str r3, [r4]
008a546a  24 68                                            ldr r4, [r4]
008a546c  68 f6 92 e7                                      blx #0x30e394
008a5470  00 2c                                            cmp r4, #0
008a5472  01 d1                                            bne #0x8a5478
008a5474  ff f7 6c fa                                      bl #0x8a4950
008a5478  28 1c                                            adds r0, r5, #0
008a547a  70 bd                                            pop {r4, r5, r6, pc}

; FUNCTION 0x008a547c, declared_size=44, range_size=44, mode=thumb
; class-group: std::_Locale_impl::Init
; alias: _ZNSt12_Locale_impl4InitD2Ev
; demangled: std::_Locale_impl::Init::~Init()
; decoder-mode: thumb
008a547c  70 b5                                            push {r4, r5, r6, lr}
008a547e  05 1c                                            adds r5, r0, #0
008a5480  ff f7 d2 fc                                      bl #0x8a4e28
008a5484  06 1d                                            adds r6, r0, #4
008a5486  04 1c                                            adds r4, r0, #0
008a5488  30 1c                                            adds r0, r6, #0
008a548a  69 f6 92 e0                                      blx #0x30e5b0
008a548e  23 68                                            ldr r3, [r4]
008a5490  30 1c                                            adds r0, r6, #0
008a5492  01 3b                                            subs r3, #1
008a5494  23 60                                            str r3, [r4]
008a5496  24 68                                            ldr r4, [r4]
008a5498  68 f6 7c e7                                      blx #0x30e394
008a549c  00 2c                                            cmp r4, #0
008a549e  01 d1                                            bne #0x8a54a4
008a54a0  ff f7 56 fa                                      bl #0x8a4950
008a54a4  28 1c                                            adds r0, r5, #0
008a54a6  70 bd                                            pop {r4, r5, r6, pc}

; FUNCTION 0x008a7b34, declared_size=46, range_size=46, mode=thumb
; class-group: std::_Locale_impl::Init
; alias: _ZNSt12_Locale_impl4InitC1Ev
; demangled: std::_Locale_impl::Init::Init()
; decoder-mode: thumb
008a7b34  70 b5                                            push {r4, r5, r6, lr}
008a7b36  05 1c                                            adds r5, r0, #0
008a7b38  fd f7 76 f9                                      bl #0x8a4e28
008a7b3c  06 1d                                            adds r6, r0, #4
008a7b3e  04 1c                                            adds r4, r0, #0
008a7b40  30 1c                                            adds r0, r6, #0
008a7b42  66 f6 36 e5                                      blx #0x30e5b0
008a7b46  23 68                                            ldr r3, [r4]
008a7b48  30 1c                                            adds r0, r6, #0
008a7b4a  01 33                                            adds r3, #1
008a7b4c  23 60                                            str r3, [r4]
008a7b4e  24 68                                            ldr r4, [r4]
008a7b50  66 f6 20 e4                                      blx #0x30e394
008a7b54  01 2c                                            cmp r4, #1
008a7b56  01 d0                                            beq #0x8a7b5c
008a7b58  28 1c                                            adds r0, r5, #0
008a7b5a  70 bd                                            pop {r4, r5, r6, pc}
008a7b5c  ff f7 9a ff                                      bl #0x8a7a94
008a7b60  fa e7                                            b #0x8a7b58

; FUNCTION 0x008a7c9c, declared_size=46, range_size=46, mode=thumb
; class-group: std::_Locale_impl::Init
; alias: _ZNSt12_Locale_impl4InitC2Ev
; demangled: std::_Locale_impl::Init::Init()
; decoder-mode: thumb
008a7c9c  70 b5                                            push {r4, r5, r6, lr}
008a7c9e  05 1c                                            adds r5, r0, #0
008a7ca0  fd f7 c2 f8                                      bl #0x8a4e28
008a7ca4  06 1d                                            adds r6, r0, #4
008a7ca6  04 1c                                            adds r4, r0, #0
008a7ca8  30 1c                                            adds r0, r6, #0
008a7caa  66 f6 82 e4                                      blx #0x30e5b0
008a7cae  23 68                                            ldr r3, [r4]
008a7cb0  30 1c                                            adds r0, r6, #0
008a7cb2  01 33                                            adds r3, #1
008a7cb4  23 60                                            str r3, [r4]
008a7cb6  24 68                                            ldr r4, [r4]
008a7cb8  66 f6 6c e3                                      blx #0x30e394
008a7cbc  01 2c                                            cmp r4, #1
008a7cbe  01 d0                                            beq #0x8a7cc4
008a7cc0  28 1c                                            adds r0, r5, #0
008a7cc2  70 bd                                            pop {r4, r5, r6, pc}
008a7cc4  ff f7 e6 fe                                      bl #0x8a7a94
008a7cc8  fa e7                                            b #0x8a7cc0

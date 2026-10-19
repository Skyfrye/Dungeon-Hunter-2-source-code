; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008b8f5c, declared_size=56, range_size=56, mode=thumb
; class-group: std::codecvt<wchar_t, char, mbstate_t>
; alias: _ZNKSt7codecvtIwc9mbstate_tE6do_outERS0_PKwS4_RS4_PcS6_RS6_
; demangled: std::codecvt<wchar_t, char, mbstate_t>::do_out(mbstate_t&, wchar_t const*, wchar_t const*, wchar_t const*&, char*, char*, char*&) const
; decoder-mode: thumb
008b8f5c  70 b5                                            push {r4, r5, r6, lr}
008b8f5e  05 9c                                            ldr r4, [sp, #0x14]
008b8f60  06 9d                                            ldr r5, [sp, #0x18]
008b8f62  9b 1a                                            subs r3, r3, r2
008b8f64  9b 10                                            asrs r3, r3, #2
008b8f66  2d 1b                                            subs r5, r5, r4
008b8f68  9d 42                                            cmp r5, r3
008b8f6a  00 dd                                            ble #0x8b8f6e
008b8f6c  1d 1c                                            adds r5, r3, #0
008b8f6e  a8 00                                            lsls r0, r5, #2
008b8f70  16 18                                            adds r6, r2, r0
008b8f72  80 10                                            asrs r0, r0, #2
008b8f74  00 28                                            cmp r0, #0
008b8f76  06 dd                                            ble #0x8b8f86
008b8f78  20 18                                            adds r0, r4, r0
008b8f7a  23 1c                                            adds r3, r4, #0
008b8f7c  02 ca                                            ldm r2!, {r1}
008b8f7e  19 70                                            strb r1, [r3]
008b8f80  01 33                                            adds r3, #1
008b8f82  83 42                                            cmp r3, r0
008b8f84  fa d1                                            bne #0x8b8f7c
008b8f86  04 9b                                            ldr r3, [sp, #0x10]
008b8f88  64 19                                            adds r4, r4, r5
008b8f8a  00 20                                            movs r0, #0
008b8f8c  1e 60                                            str r6, [r3]
008b8f8e  07 9b                                            ldr r3, [sp, #0x1c]
008b8f90  1c 60                                            str r4, [r3]
008b8f92  70 bd                                            pop {r4, r5, r6, pc}

; FUNCTION 0x008b8f94, declared_size=56, range_size=56, mode=thumb
; class-group: std::codecvt<wchar_t, char, mbstate_t>
; alias: _ZNKSt7codecvtIwc9mbstate_tE5do_inERS0_PKcS4_RS4_PwS6_RS6_
; demangled: std::codecvt<wchar_t, char, mbstate_t>::do_in(mbstate_t&, char const*, char const*, char const*&, wchar_t*, wchar_t*, wchar_t*&) const
; decoder-mode: thumb
008b8f94  70 b5                                            push {r4, r5, r6, lr}
008b8f96  05 9d                                            ldr r5, [sp, #0x14]
008b8f98  06 9c                                            ldr r4, [sp, #0x18]
008b8f9a  9b 1a                                            subs r3, r3, r2
008b8f9c  64 1b                                            subs r4, r4, r5
008b8f9e  a4 10                                            asrs r4, r4, #2
008b8fa0  9c 42                                            cmp r4, r3
008b8fa2  00 dd                                            ble #0x8b8fa6
008b8fa4  1c 1c                                            adds r4, r3, #0
008b8fa6  16 19                                            adds r6, r2, r4
008b8fa8  b0 1a                                            subs r0, r6, r2
008b8faa  00 28                                            cmp r0, #0
008b8fac  06 dd                                            ble #0x8b8fbc
008b8fae  10 18                                            adds r0, r2, r0
008b8fb0  2b 1c                                            adds r3, r5, #0
008b8fb2  11 78                                            ldrb r1, [r2]
008b8fb4  01 32                                            adds r2, #1
008b8fb6  02 c3                                            stm r3!, {r1}
008b8fb8  82 42                                            cmp r2, r0
008b8fba  fa d1                                            bne #0x8b8fb2
008b8fbc  04 9b                                            ldr r3, [sp, #0x10]
008b8fbe  a4 00                                            lsls r4, r4, #2
008b8fc0  2d 19                                            adds r5, r5, r4
008b8fc2  1e 60                                            str r6, [r3]
008b8fc4  07 9b                                            ldr r3, [sp, #0x1c]
008b8fc6  00 20                                            movs r0, #0
008b8fc8  1d 60                                            str r5, [r3]
008b8fca  70 bd                                            pop {r4, r5, r6, pc}

; FUNCTION 0x008b8fcc, declared_size=8, range_size=8, mode=thumb
; class-group: std::codecvt<wchar_t, char, mbstate_t>
; alias: _ZNKSt7codecvtIwc9mbstate_tE10do_unshiftERS0_PcS3_RS3_
; demangled: std::codecvt<wchar_t, char, mbstate_t>::do_unshift(mbstate_t&, char*, char*, char*&) const
; decoder-mode: thumb
008b8fcc  00 9b                                            ldr r3, [sp]
008b8fce  03 20                                            movs r0, #3
008b8fd0  1a 60                                            str r2, [r3]
008b8fd2  70 47                                            bx lr

; FUNCTION 0x008b8fd4, declared_size=4, range_size=4, mode=thumb
; class-group: std::codecvt<wchar_t, char, mbstate_t>
; alias: _ZNKSt7codecvtIwc9mbstate_tE11do_encodingEv
; demangled: std::codecvt<wchar_t, char, mbstate_t>::do_encoding() const
; decoder-mode: thumb
008b8fd4  01 20                                            movs r0, #1
008b8fd6  70 47                                            bx lr

; FUNCTION 0x008b8fd8, declared_size=4, range_size=4, mode=thumb
; class-group: std::codecvt<wchar_t, char, mbstate_t>
; alias: _ZNKSt7codecvtIwc9mbstate_tE16do_always_noconvEv
; demangled: std::codecvt<wchar_t, char, mbstate_t>::do_always_noconv() const
; decoder-mode: thumb
008b8fd8  01 20                                            movs r0, #1
008b8fda  70 47                                            bx lr

; FUNCTION 0x008b8fdc, declared_size=12, range_size=12, mode=thumb
; class-group: std::codecvt<wchar_t, char, mbstate_t>
; alias: _ZNKSt7codecvtIwc9mbstate_tE9do_lengthERS0_PKcS4_j
; demangled: std::codecvt<wchar_t, char, mbstate_t>::do_length(mbstate_t&, char const*, char const*, unsigned int) const
; decoder-mode: thumb
008b8fdc  00 99                                            ldr r1, [sp]
008b8fde  98 1a                                            subs r0, r3, r2
008b8fe0  88 42                                            cmp r0, r1
008b8fe2  00 d9                                            bls #0x8b8fe6
008b8fe4  08 1c                                            adds r0, r1, #0
008b8fe6  70 47                                            bx lr

; FUNCTION 0x008b8fe8, declared_size=4, range_size=4, mode=thumb
; class-group: std::codecvt<wchar_t, char, mbstate_t>
; alias: _ZNKSt7codecvtIwc9mbstate_tE13do_max_lengthEv
; demangled: std::codecvt<wchar_t, char, mbstate_t>::do_max_length() const
; decoder-mode: thumb
008b8fe8  01 20                                            movs r0, #1
008b8fea  70 47                                            bx lr

; FUNCTION 0x008b8fec, declared_size=32, range_size=32, mode=thumb
; class-group: std::codecvt<wchar_t, char, mbstate_t>
; alias: _ZNSt7codecvtIwc9mbstate_tED1Ev
; demangled: std::codecvt<wchar_t, char, mbstate_t>::~codecvt()
; decoder-mode: thumb
008b8fec  10 b5                                            push {r4, lr}
008b8fee  05 4b                                            ldr r3, [pc, #0x14]
008b8ff0  05 4a                                            ldr r2, [pc, #0x14]
008b8ff2  04 1c                                            adds r4, r0, #0
008b8ff4  7b 44                                            add r3, pc
008b8ff6  9a 58                                            ldr r2, [r3, r2]
008b8ff8  08 32                                            adds r2, #8
008b8ffa  02 60                                            str r2, [r0]
008b8ffc  ea f7 7e fc                                      bl #0x8a38fc
008b9000  20 1c                                            adds r0, r4, #0
008b9002  10 bd                                            pop {r4, pc}
; mapping-symbol data/literal pool
008b9004  a0 ba 0d 00 e4 20 00 00                          .byte 0xa0, 0xba, 0x0d, 0x00, 0xe4, 0x20, 0x00, 0x00

; FUNCTION 0x008b900c, declared_size=18, range_size=18, mode=thumb
; class-group: std::codecvt<wchar_t, char, mbstate_t>
; alias: _ZNSt7codecvtIwc9mbstate_tED0Ev
; demangled: std::codecvt<wchar_t, char, mbstate_t>::~codecvt()
; decoder-mode: thumb
008b900c  10 b5                                            push {r4, lr}
008b900e  04 1c                                            adds r4, r0, #0
008b9010  ff f7 ec ff                                      bl #0x8b8fec
008b9014  20 1c                                            adds r0, r4, #0
008b9016  55 f6 4c e1                                      blx #0x30e2b0
008b901a  20 1c                                            adds r0, r4, #0
008b901c  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b9020, declared_size=32, range_size=32, mode=thumb
; class-group: std::codecvt<wchar_t, char, mbstate_t>
; alias: _ZNSt7codecvtIwc9mbstate_tED2Ev
; demangled: std::codecvt<wchar_t, char, mbstate_t>::~codecvt()
; decoder-mode: thumb
008b9020  10 b5                                            push {r4, lr}
008b9022  05 4b                                            ldr r3, [pc, #0x14]
008b9024  05 4a                                            ldr r2, [pc, #0x14]
008b9026  04 1c                                            adds r4, r0, #0
008b9028  7b 44                                            add r3, pc
008b902a  9a 58                                            ldr r2, [r3, r2]
008b902c  08 32                                            adds r2, #8
008b902e  02 60                                            str r2, [r0]
008b9030  ea f7 64 fc                                      bl #0x8a38fc
008b9034  20 1c                                            adds r0, r4, #0
008b9036  10 bd                                            pop {r4, pc}
; mapping-symbol data/literal pool
008b9038  6c ba 0d 00 e4 20 00 00                          .byte 0x6c, 0xba, 0x0d, 0x00, 0xe4, 0x20, 0x00, 0x00

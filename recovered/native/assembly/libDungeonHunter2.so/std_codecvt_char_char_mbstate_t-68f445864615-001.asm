; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008b8f1c, declared_size=12, range_size=12, mode=thumb
; class-group: std::codecvt<char, char, mbstate_t>
; alias: _ZNKSt7codecvtIcc9mbstate_tE9do_lengthERS0_PKcS4_j
; demangled: std::codecvt<char, char, mbstate_t>::do_length(mbstate_t&, char const*, char const*, unsigned int) const
; decoder-mode: thumb
008b8f1c  00 99                                            ldr r1, [sp]
008b8f1e  98 1a                                            subs r0, r3, r2
008b8f20  88 42                                            cmp r0, r1
008b8f22  00 d9                                            bls #0x8b8f26
008b8f24  08 1c                                            adds r0, r1, #0
008b8f26  70 47                                            bx lr

; FUNCTION 0x008b8f28, declared_size=4, range_size=4, mode=thumb
; class-group: std::codecvt<char, char, mbstate_t>
; alias: _ZNKSt7codecvtIcc9mbstate_tE13do_max_lengthEv
; demangled: std::codecvt<char, char, mbstate_t>::do_max_length() const
; decoder-mode: thumb
008b8f28  01 20                                            movs r0, #1
008b8f2a  70 47                                            bx lr

; FUNCTION 0x008b8f2c, declared_size=4, range_size=4, mode=thumb
; class-group: std::codecvt<char, char, mbstate_t>
; alias: _ZNKSt7codecvtIcc9mbstate_tE16do_always_noconvEv
; demangled: std::codecvt<char, char, mbstate_t>::do_always_noconv() const
; decoder-mode: thumb
008b8f2c  01 20                                            movs r0, #1
008b8f2e  70 47                                            bx lr

; FUNCTION 0x008b8f30, declared_size=4, range_size=4, mode=thumb
; class-group: std::codecvt<char, char, mbstate_t>
; alias: _ZNKSt7codecvtIcc9mbstate_tE11do_encodingEv
; demangled: std::codecvt<char, char, mbstate_t>::do_encoding() const
; decoder-mode: thumb
008b8f30  01 20                                            movs r0, #1
008b8f32  70 47                                            bx lr

; FUNCTION 0x008b8f34, declared_size=8, range_size=8, mode=thumb
; class-group: std::codecvt<char, char, mbstate_t>
; alias: _ZNKSt7codecvtIcc9mbstate_tE10do_unshiftERS0_PcS3_RS3_
; demangled: std::codecvt<char, char, mbstate_t>::do_unshift(mbstate_t&, char*, char*, char*&) const
; decoder-mode: thumb
008b8f34  00 9b                                            ldr r3, [sp]
008b8f36  03 20                                            movs r0, #3
008b8f38  1a 60                                            str r2, [r3]
008b8f3a  70 47                                            bx lr

; FUNCTION 0x008b8f3c, declared_size=14, range_size=14, mode=thumb
; class-group: std::codecvt<char, char, mbstate_t>
; alias: _ZNKSt7codecvtIcc9mbstate_tE5do_inERS0_PKcS4_RS4_PcS6_RS6_
; demangled: std::codecvt<char, char, mbstate_t>::do_in(mbstate_t&, char const*, char const*, char const*&, char*, char*, char*&) const
; decoder-mode: thumb
008b8f3c  00 9b                                            ldr r3, [sp]
008b8f3e  03 20                                            movs r0, #3
008b8f40  1a 60                                            str r2, [r3]
008b8f42  03 9b                                            ldr r3, [sp, #0xc]
008b8f44  01 9a                                            ldr r2, [sp, #4]
008b8f46  1a 60                                            str r2, [r3]
008b8f48  70 47                                            bx lr

; FUNCTION 0x008b8f4c, declared_size=14, range_size=14, mode=thumb
; class-group: std::codecvt<char, char, mbstate_t>
; alias: _ZNKSt7codecvtIcc9mbstate_tE6do_outERS0_PKcS4_RS4_PcS6_RS6_
; demangled: std::codecvt<char, char, mbstate_t>::do_out(mbstate_t&, char const*, char const*, char const*&, char*, char*, char*&) const
; decoder-mode: thumb
008b8f4c  00 9b                                            ldr r3, [sp]
008b8f4e  03 20                                            movs r0, #3
008b8f50  1a 60                                            str r2, [r3]
008b8f52  03 9b                                            ldr r3, [sp, #0xc]
008b8f54  01 9a                                            ldr r2, [sp, #4]
008b8f56  1a 60                                            str r2, [r3]
008b8f58  70 47                                            bx lr

; FUNCTION 0x008b9040, declared_size=32, range_size=32, mode=thumb
; class-group: std::codecvt<char, char, mbstate_t>
; alias: _ZNSt7codecvtIcc9mbstate_tED1Ev
; demangled: std::codecvt<char, char, mbstate_t>::~codecvt()
; decoder-mode: thumb
008b9040  10 b5                                            push {r4, lr}
008b9042  05 4b                                            ldr r3, [pc, #0x14]
008b9044  05 4a                                            ldr r2, [pc, #0x14]
008b9046  04 1c                                            adds r4, r0, #0
008b9048  7b 44                                            add r3, pc
008b904a  9a 58                                            ldr r2, [r3, r2]
008b904c  08 32                                            adds r2, #8
008b904e  02 60                                            str r2, [r0]
008b9050  ea f7 54 fc                                      bl #0x8a38fc
008b9054  20 1c                                            adds r0, r4, #0
008b9056  10 bd                                            pop {r4, pc}
; mapping-symbol data/literal pool
008b9058  4c ba 0d 00 d8 12 00 00                          .byte 0x4c, 0xba, 0x0d, 0x00, 0xd8, 0x12, 0x00, 0x00

; FUNCTION 0x008b9060, declared_size=18, range_size=18, mode=thumb
; class-group: std::codecvt<char, char, mbstate_t>
; alias: _ZNSt7codecvtIcc9mbstate_tED0Ev
; demangled: std::codecvt<char, char, mbstate_t>::~codecvt()
; decoder-mode: thumb
008b9060  10 b5                                            push {r4, lr}
008b9062  04 1c                                            adds r4, r0, #0
008b9064  ff f7 ec ff                                      bl #0x8b9040
008b9068  20 1c                                            adds r0, r4, #0
008b906a  55 f6 22 e1                                      blx #0x30e2b0
008b906e  20 1c                                            adds r0, r4, #0
008b9070  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b9074, declared_size=32, range_size=32, mode=thumb
; class-group: std::codecvt<char, char, mbstate_t>
; alias: _ZNSt7codecvtIcc9mbstate_tED2Ev
; demangled: std::codecvt<char, char, mbstate_t>::~codecvt()
; decoder-mode: thumb
008b9074  10 b5                                            push {r4, lr}
008b9076  05 4b                                            ldr r3, [pc, #0x14]
008b9078  05 4a                                            ldr r2, [pc, #0x14]
008b907a  04 1c                                            adds r4, r0, #0
008b907c  7b 44                                            add r3, pc
008b907e  9a 58                                            ldr r2, [r3, r2]
008b9080  08 32                                            adds r2, #8
008b9082  02 60                                            str r2, [r0]
008b9084  ea f7 3a fc                                      bl #0x8a38fc
008b9088  20 1c                                            adds r0, r4, #0
008b908a  10 bd                                            pop {r4, pc}
; mapping-symbol data/literal pool
008b908c  18 ba 0d 00 d8 12 00 00                          .byte 0x18, 0xba, 0x0d, 0x00, 0xd8, 0x12, 0x00, 0x00

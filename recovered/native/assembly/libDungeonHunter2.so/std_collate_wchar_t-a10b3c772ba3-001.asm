; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008b90b0, declared_size=54, range_size=54, mode=thumb
; class-group: std::collate<wchar_t>
; alias: _ZNKSt7collateIwE10do_compareEPKwS2_S2_S2_
; demangled: std::collate<wchar_t>::do_compare(wchar_t const*, wchar_t const*, wchar_t const*, wchar_t const*) const
; decoder-mode: thumb
008b90b0  30 b5                                            push {r4, r5, lr}
008b90b2  03 9d                                            ldr r5, [sp, #0xc]
008b90b4  ab 42                                            cmp r3, r5
008b90b6  0f d0                                            beq #0x8b90d8
008b90b8  91 42                                            cmp r1, r2
008b90ba  0d d0                                            beq #0x8b90d8
008b90bc  0c 68                                            ldr r4, [r1]
008b90be  18 68                                            ldr r0, [r3]
008b90c0  84 42                                            cmp r4, r0
008b90c2  0b d3                                            blo #0x8b90dc
008b90c4  84 42                                            cmp r4, r0
008b90c6  0c d8                                            bhi #0x8b90e2
008b90c8  04 33                                            adds r3, #4
008b90ca  04 31                                            adds r1, #4
008b90cc  9d 42                                            cmp r5, r3
008b90ce  f3 d1                                            bne #0x8b90b8
008b90d0  50 1a                                            subs r0, r2, r1
008b90d2  43 1e                                            subs r3, r0, #1
008b90d4  98 41                                            sbcs r0, r3
008b90d6  03 e0                                            b #0x8b90e0
008b90d8  9d 42                                            cmp r5, r3
008b90da  f9 d0                                            beq #0x8b90d0
008b90dc  01 20                                            movs r0, #1
008b90de  40 42                                            rsbs r0, r0, #0
008b90e0  30 bd                                            pop {r4, r5, pc}
008b90e2  01 20                                            movs r0, #1
008b90e4  fc e7                                            b #0x8b90e0

; FUNCTION 0x008b90e8, declared_size=24, range_size=24, mode=thumb
; class-group: std::collate<wchar_t>
; alias: _ZNKSt7collateIwE7do_hashEPKwS2_
; demangled: std::collate<wchar_t>::do_hash(wchar_t const*, wchar_t const*) const
; decoder-mode: thumb
008b90e8  00 23                                            movs r3, #0
008b90ea  00 20                                            movs r0, #0
008b90ec  91 42                                            cmp r1, r2
008b90ee  06 d2                                            bhs #0x8b90fe
008b90f0  98 00                                            lsls r0, r3, #2
008b90f2  c3 18                                            adds r3, r0, r3
008b90f4  01 c9                                            ldm r1!, {r0}
008b90f6  1b 18                                            adds r3, r3, r0
008b90f8  8a 42                                            cmp r2, r1
008b90fa  f9 d8                                            bhi #0x8b90f0
008b90fc  18 1c                                            adds r0, r3, #0
008b90fe  70 47                                            bx lr

; FUNCTION 0x008b9148, declared_size=32, range_size=32, mode=thumb
; class-group: std::collate<wchar_t>
; alias: _ZNSt7collateIwED1Ev
; demangled: std::collate<wchar_t>::~collate()
; decoder-mode: thumb
008b9148  10 b5                                            push {r4, lr}
008b914a  05 4b                                            ldr r3, [pc, #0x14]
008b914c  05 4a                                            ldr r2, [pc, #0x14]
008b914e  04 1c                                            adds r4, r0, #0
008b9150  7b 44                                            add r3, pc
008b9152  9a 58                                            ldr r2, [r3, r2]
008b9154  08 32                                            adds r2, #8
008b9156  02 60                                            str r2, [r0]
008b9158  ea f7 d0 fb                                      bl #0x8a38fc
008b915c  20 1c                                            adds r0, r4, #0
008b915e  10 bd                                            pop {r4, pc}
; mapping-symbol data/literal pool
008b9160  44 b9 0d 00 ac 17 00 00                          .byte 0x44, 0xb9, 0x0d, 0x00, 0xac, 0x17, 0x00, 0x00

; FUNCTION 0x008b9168, declared_size=18, range_size=18, mode=thumb
; class-group: std::collate<wchar_t>
; alias: _ZNSt7collateIwED0Ev
; demangled: std::collate<wchar_t>::~collate()
; decoder-mode: thumb
008b9168  10 b5                                            push {r4, lr}
008b916a  04 1c                                            adds r4, r0, #0
008b916c  ff f7 ec ff                                      bl #0x8b9148
008b9170  20 1c                                            adds r0, r4, #0
008b9172  55 f6 9e e0                                      blx #0x30e2b0
008b9176  20 1c                                            adds r0, r4, #0
008b9178  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b917c, declared_size=32, range_size=32, mode=thumb
; class-group: std::collate<wchar_t>
; alias: _ZNSt7collateIwED2Ev
; demangled: std::collate<wchar_t>::~collate()
; decoder-mode: thumb
008b917c  10 b5                                            push {r4, lr}
008b917e  05 4b                                            ldr r3, [pc, #0x14]
008b9180  05 4a                                            ldr r2, [pc, #0x14]
008b9182  04 1c                                            adds r4, r0, #0
008b9184  7b 44                                            add r3, pc
008b9186  9a 58                                            ldr r2, [r3, r2]
008b9188  08 32                                            adds r2, #8
008b918a  02 60                                            str r2, [r0]
008b918c  ea f7 b6 fb                                      bl #0x8a38fc
008b9190  20 1c                                            adds r0, r4, #0
008b9192  10 bd                                            pop {r4, pc}
; mapping-symbol data/literal pool
008b9194  10 b9 0d 00 ac 17 00 00                          .byte 0x10, 0xb9, 0x0d, 0x00, 0xac, 0x17, 0x00, 0x00

; FUNCTION 0x008b9248, declared_size=26, range_size=26, mode=thumb
; class-group: std::collate<wchar_t>
; alias: _ZNKSt7collateIwE12do_transformEPKwS2_
; demangled: std::collate<wchar_t>::do_transform(wchar_t const*, wchar_t const*) const
; decoder-mode: thumb
008b9248  10 b5                                            push {r4, lr}
008b924a  04 1c                                            adds r4, r0, #0
008b924c  82 b0                                            sub sp, #8
008b924e  20 64                                            str r0, [r4, #0x40]
008b9250  60 64                                            str r0, [r4, #0x44]
008b9252  11 1c                                            adds r1, r2, #0
008b9254  1a 1c                                            adds r2, r3, #0
008b9256  01 ab                                            add r3, sp, #4
008b9258  ff f7 e0 ff                                      bl #0x8b921c
008b925c  02 b0                                            add sp, #8
008b925e  20 1c                                            adds r0, r4, #0
008b9260  10 bd                                            pop {r4, pc}

; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008b9094, declared_size=26, range_size=26, mode=thumb
; class-group: std::collate<char>
; alias: _ZNKSt7collateIcE7do_hashEPKcS2_
; demangled: std::collate<char>::do_hash(char const*, char const*) const
; decoder-mode: thumb
008b9094  00 23                                            movs r3, #0
008b9096  00 20                                            movs r0, #0
008b9098  91 42                                            cmp r1, r2
008b909a  07 d2                                            bhs #0x8b90ac
008b909c  98 00                                            lsls r0, r3, #2
008b909e  c3 18                                            adds r3, r0, r3
008b90a0  08 78                                            ldrb r0, [r1]
008b90a2  01 31                                            adds r1, #1
008b90a4  1b 18                                            adds r3, r3, r0
008b90a6  91 42                                            cmp r1, r2
008b90a8  f8 d1                                            bne #0x8b909c
008b90aa  18 1c                                            adds r0, r3, #0
008b90ac  70 47                                            bx lr

; FUNCTION 0x008b912c, declared_size=26, range_size=26, mode=thumb
; class-group: std::collate<char>
; alias: _ZNKSt7collateIcE12do_transformEPKcS2_
; demangled: std::collate<char>::do_transform(char const*, char const*) const
; decoder-mode: thumb
008b912c  10 b5                                            push {r4, lr}
008b912e  04 1c                                            adds r4, r0, #0
008b9130  82 b0                                            sub sp, #8
008b9132  20 61                                            str r0, [r4, #0x10]
008b9134  60 61                                            str r0, [r4, #0x14]
008b9136  11 1c                                            adds r1, r2, #0
008b9138  1a 1c                                            adds r2, r3, #0
008b913a  01 ab                                            add r3, sp, #4
008b913c  ff f7 e0 ff                                      bl #0x8b9100
008b9140  02 b0                                            add sp, #8
008b9142  20 1c                                            adds r0, r4, #0
008b9144  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b919c, declared_size=32, range_size=32, mode=thumb
; class-group: std::collate<char>
; alias: _ZNSt7collateIcED1Ev
; demangled: std::collate<char>::~collate()
; decoder-mode: thumb
008b919c  10 b5                                            push {r4, lr}
008b919e  05 4b                                            ldr r3, [pc, #0x14]
008b91a0  05 4a                                            ldr r2, [pc, #0x14]
008b91a2  04 1c                                            adds r4, r0, #0
008b91a4  7b 44                                            add r3, pc
008b91a6  9a 58                                            ldr r2, [r3, r2]
008b91a8  08 32                                            adds r2, #8
008b91aa  02 60                                            str r2, [r0]
008b91ac  ea f7 a6 fb                                      bl #0x8a38fc
008b91b0  20 1c                                            adds r0, r4, #0
008b91b2  10 bd                                            pop {r4, pc}
; mapping-symbol data/literal pool
008b91b4  f0 b8 0d 00 58 32 00 00                          .byte 0xf0, 0xb8, 0x0d, 0x00, 0x58, 0x32, 0x00, 0x00

; FUNCTION 0x008b91bc, declared_size=18, range_size=18, mode=thumb
; class-group: std::collate<char>
; alias: _ZNSt7collateIcED0Ev
; demangled: std::collate<char>::~collate()
; decoder-mode: thumb
008b91bc  10 b5                                            push {r4, lr}
008b91be  04 1c                                            adds r4, r0, #0
008b91c0  ff f7 ec ff                                      bl #0x8b919c
008b91c4  20 1c                                            adds r0, r4, #0
008b91c6  55 f6 74 e0                                      blx #0x30e2b0
008b91ca  20 1c                                            adds r0, r4, #0
008b91cc  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b91d0, declared_size=32, range_size=32, mode=thumb
; class-group: std::collate<char>
; alias: _ZNSt7collateIcED2Ev
; demangled: std::collate<char>::~collate()
; decoder-mode: thumb
008b91d0  10 b5                                            push {r4, lr}
008b91d2  05 4b                                            ldr r3, [pc, #0x14]
008b91d4  05 4a                                            ldr r2, [pc, #0x14]
008b91d6  04 1c                                            adds r4, r0, #0
008b91d8  7b 44                                            add r3, pc
008b91da  9a 58                                            ldr r2, [r3, r2]
008b91dc  08 32                                            adds r2, #8
008b91de  02 60                                            str r2, [r0]
008b91e0  ea f7 8c fb                                      bl #0x8a38fc
008b91e4  20 1c                                            adds r0, r4, #0
008b91e6  10 bd                                            pop {r4, pc}
; mapping-symbol data/literal pool
008b91e8  bc b8 0d 00 58 32 00 00                          .byte 0xbc, 0xb8, 0x0d, 0x00, 0x58, 0x32, 0x00, 0x00

; FUNCTION 0x008b91f0, declared_size=44, range_size=44, mode=thumb
; class-group: std::collate<char>
; alias: _ZNKSt7collateIcE10do_compareEPKcS2_S2_S2_
; demangled: std::collate<char>::do_compare(char const*, char const*, char const*, char const*) const
; decoder-mode: thumb
008b91f0  70 b5                                            push {r4, r5, r6, lr}
008b91f2  04 9c                                            ldr r4, [sp, #0x10]
008b91f4  55 1a                                            subs r5, r2, r1
008b91f6  08 1c                                            adds r0, r1, #0
008b91f8  e4 1a                                            subs r4, r4, r3
008b91fa  22 1c                                            adds r2, r4, #0
008b91fc  ac 42                                            cmp r4, r5
008b91fe  00 dd                                            ble #0x8b9202
008b9200  2a 1c                                            adds r2, r5, #0
008b9202  19 1c                                            adds r1, r3, #0
008b9204  55 f6 ec e1                                      blx #0x30e5e0
008b9208  00 28                                            cmp r0, #0
008b920a  01 d1                                            bne #0x8b9210
008b920c  a5 42                                            cmp r5, r4
008b920e  00 d1                                            bne #0x8b9212
008b9210  70 bd                                            pop {r4, r5, r6, pc}
008b9212  01 20                                            movs r0, #1
008b9214  a5 42                                            cmp r5, r4
008b9216  fb da                                            bge #0x8b9210
008b9218  40 42                                            rsbs r0, r0, #0
008b921a  f9 e7                                            b #0x8b9210

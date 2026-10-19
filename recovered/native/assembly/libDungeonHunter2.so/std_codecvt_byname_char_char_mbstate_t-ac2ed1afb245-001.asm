; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008b526c, declared_size=32, range_size=32, mode=thumb
; class-group: std::codecvt_byname<char, char, mbstate_t>
; alias: _ZNSt14codecvt_bynameIcc9mbstate_tED1Ev
; demangled: std::codecvt_byname<char, char, mbstate_t>::~codecvt_byname()
; decoder-mode: thumb
008b526c  10 b5                                            push {r4, lr}
008b526e  05 4b                                            ldr r3, [pc, #0x14]
008b5270  05 4a                                            ldr r2, [pc, #0x14]
008b5272  04 1c                                            adds r4, r0, #0
008b5274  7b 44                                            add r3, pc
008b5276  9a 58                                            ldr r2, [r3, r2]
008b5278  08 32                                            adds r2, #8
008b527a  02 60                                            str r2, [r0]
008b527c  03 f0 fa fe                                      bl #0x8b9074
008b5280  20 1c                                            adds r0, r4, #0
008b5282  10 bd                                            pop {r4, pc}
; mapping-symbol data/literal pool
008b5284  20 f8 0d 00 04 23 00 00                          .byte 0x20, 0xf8, 0x0d, 0x00, 0x04, 0x23, 0x00, 0x00

; FUNCTION 0x008b528c, declared_size=18, range_size=18, mode=thumb
; class-group: std::codecvt_byname<char, char, mbstate_t>
; alias: _ZNSt14codecvt_bynameIcc9mbstate_tED0Ev
; demangled: std::codecvt_byname<char, char, mbstate_t>::~codecvt_byname()
; decoder-mode: thumb
008b528c  10 b5                                            push {r4, lr}
008b528e  04 1c                                            adds r4, r0, #0
008b5290  ff f7 ec ff                                      bl #0x8b526c
008b5294  20 1c                                            adds r0, r4, #0
008b5296  59 f6 0c e0                                      blx #0x30e2b0
008b529a  20 1c                                            adds r0, r4, #0
008b529c  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b52a0, declared_size=32, range_size=32, mode=thumb
; class-group: std::codecvt_byname<char, char, mbstate_t>
; alias: _ZNSt14codecvt_bynameIcc9mbstate_tED2Ev
; demangled: std::codecvt_byname<char, char, mbstate_t>::~codecvt_byname()
; decoder-mode: thumb
008b52a0  10 b5                                            push {r4, lr}
008b52a2  05 4b                                            ldr r3, [pc, #0x14]
008b52a4  05 4a                                            ldr r2, [pc, #0x14]
008b52a6  04 1c                                            adds r4, r0, #0
008b52a8  7b 44                                            add r3, pc
008b52aa  9a 58                                            ldr r2, [r3, r2]
008b52ac  08 32                                            adds r2, #8
008b52ae  02 60                                            str r2, [r0]
008b52b0  03 f0 e0 fe                                      bl #0x8b9074
008b52b4  20 1c                                            adds r0, r4, #0
008b52b6  10 bd                                            pop {r4, pc}
; mapping-symbol data/literal pool
008b52b8  ec f7 0d 00 04 23 00 00                          .byte 0xec, 0xf7, 0x0d, 0x00, 0x04, 0x23, 0x00, 0x00

; FUNCTION 0x008b5c34, declared_size=56, range_size=56, mode=thumb
; class-group: std::codecvt_byname<char, char, mbstate_t>
; alias: _ZNSt14codecvt_bynameIcc9mbstate_tEC1EPKcj
; demangled: std::codecvt_byname<char, char, mbstate_t>::codecvt_byname(char const*, unsigned int)
; decoder-mode: thumb
008b5c34  70 b5                                            push {r4, r5, r6, lr}
008b5c36  53 1e                                            subs r3, r2, #1
008b5c38  9a 41                                            sbcs r2, r3
008b5c3a  04 1c                                            adds r4, r0, #0
008b5c3c  42 60                                            str r2, [r0, #4]
008b5c3e  09 4d                                            ldr r5, [pc, #0x24]
008b5c40  0e 1c                                            adds r6, r1, #0
008b5c42  08 30                                            adds r0, #8
008b5c44  00 21                                            movs r1, #0
008b5c46  58 f6 b4 e1                                      blx #0x30dfb0
008b5c4a  07 4b                                            ldr r3, [pc, #0x1c]
008b5c4c  7d 44                                            add r5, pc
008b5c4e  eb 58                                            ldr r3, [r5, r3]
008b5c50  08 33                                            adds r3, #8
008b5c52  23 60                                            str r3, [r4]
008b5c54  00 2e                                            cmp r6, #0
008b5c56  01 d0                                            beq #0x8b5c5c
008b5c58  20 1c                                            adds r0, r4, #0
008b5c5a  70 bd                                            pop {r4, r5, r6, pc}
008b5c5c  ed f7 30 fc                                      bl #0x8a34c0
008b5c60  fa e7                                            b #0x8b5c58
008b5c62  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008b5c64  48 ee 0d 00 04 23 00 00                          .byte 0x48, 0xee, 0x0d, 0x00, 0x04, 0x23, 0x00, 0x00

; FUNCTION 0x008b5c6c, declared_size=56, range_size=56, mode=thumb
; class-group: std::codecvt_byname<char, char, mbstate_t>
; alias: _ZNSt14codecvt_bynameIcc9mbstate_tEC2EPKcj
; demangled: std::codecvt_byname<char, char, mbstate_t>::codecvt_byname(char const*, unsigned int)
; decoder-mode: thumb
008b5c6c  70 b5                                            push {r4, r5, r6, lr}
008b5c6e  53 1e                                            subs r3, r2, #1
008b5c70  9a 41                                            sbcs r2, r3
008b5c72  04 1c                                            adds r4, r0, #0
008b5c74  42 60                                            str r2, [r0, #4]
008b5c76  09 4d                                            ldr r5, [pc, #0x24]
008b5c78  0e 1c                                            adds r6, r1, #0
008b5c7a  08 30                                            adds r0, #8
008b5c7c  00 21                                            movs r1, #0
008b5c7e  58 f6 98 e1                                      blx #0x30dfb0
008b5c82  07 4b                                            ldr r3, [pc, #0x1c]
008b5c84  7d 44                                            add r5, pc
008b5c86  eb 58                                            ldr r3, [r5, r3]
008b5c88  08 33                                            adds r3, #8
008b5c8a  23 60                                            str r3, [r4]
008b5c8c  00 2e                                            cmp r6, #0
008b5c8e  01 d0                                            beq #0x8b5c94
008b5c90  20 1c                                            adds r0, r4, #0
008b5c92  70 bd                                            pop {r4, r5, r6, pc}
008b5c94  ed f7 14 fc                                      bl #0x8a34c0
008b5c98  fa e7                                            b #0x8b5c90
008b5c9a  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008b5c9c  10 ee 0d 00 04 23 00 00                          .byte 0x10, 0xee, 0x0d, 0x00, 0x04, 0x23, 0x00, 0x00

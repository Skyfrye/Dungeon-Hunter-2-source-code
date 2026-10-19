; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008bc484, declared_size=28, range_size=28, mode=thumb
; class-group: std::priv::time_init<wchar_t>
; alias: _ZNSt4priv9time_initIwEC1Ev
; demangled: std::priv::time_init<wchar_t>::time_init()
; decoder-mode: thumb
008bc484  10 b5                                            push {r4, lr}
008bc486  04 1c                                            adds r4, r0, #0
008bc488  ff f7 a2 fb                                      bl #0x8bbbd0
008bc48c  03 4b                                            ldr r3, [pc, #0xc]
008bc48e  00 22                                            movs r2, #0
008bc490  20 1c                                            adds r0, r4, #0
008bc492  e2 50                                            str r2, [r4, r3]
008bc494  ff f7 94 ff                                      bl #0x8bc3c0
008bc498  20 1c                                            adds r0, r4, #0
008bc49a  10 bd                                            pop {r4, pc}
; mapping-symbol data/literal pool
008bc49c  b8 0b 00 00                                      .byte 0xb8, 0x0b, 0x00, 0x00

; FUNCTION 0x008bc4a0, declared_size=28, range_size=28, mode=thumb
; class-group: std::priv::time_init<wchar_t>
; alias: _ZNSt4priv9time_initIwEC2Ev
; demangled: std::priv::time_init<wchar_t>::time_init()
; decoder-mode: thumb
008bc4a0  10 b5                                            push {r4, lr}
008bc4a2  04 1c                                            adds r4, r0, #0
008bc4a4  ff f7 94 fb                                      bl #0x8bbbd0
008bc4a8  03 4b                                            ldr r3, [pc, #0xc]
008bc4aa  00 22                                            movs r2, #0
008bc4ac  20 1c                                            adds r0, r4, #0
008bc4ae  e2 50                                            str r2, [r4, r3]
008bc4b0  ff f7 86 ff                                      bl #0x8bc3c0
008bc4b4  20 1c                                            adds r0, r4, #0
008bc4b6  10 bd                                            pop {r4, pc}
; mapping-symbol data/literal pool
008bc4b8  b8 0b 00 00                                      .byte 0xb8, 0x0b, 0x00, 0x00

; FUNCTION 0x008bc7c4, declared_size=36, range_size=36, mode=thumb
; class-group: std::priv::time_init<wchar_t>
; alias: _ZNSt4priv9time_initIwEC1EP12_Locale_time
; demangled: std::priv::time_init<wchar_t>::time_init(_Locale_time*)
; decoder-mode: thumb
008bc7c4  70 b5                                            push {r4, r5, r6, lr}
008bc7c6  04 1c                                            adds r4, r0, #0
008bc7c8  0d 1c                                            adds r5, r1, #0
008bc7ca  ff f7 01 fa                                      bl #0x8bbbd0
008bc7ce  29 1c                                            adds r1, r5, #0
008bc7d0  20 1c                                            adds r0, r4, #0
008bc7d2  ff f7 5b ff                                      bl #0x8bc68c
008bc7d6  28 1c                                            adds r0, r5, #0
008bc7d8  fe f7 98 fd                                      bl #0x8bb30c
008bc7dc  01 4b                                            ldr r3, [pc, #4]
008bc7de  e0 50                                            str r0, [r4, r3]
008bc7e0  20 1c                                            adds r0, r4, #0
008bc7e2  70 bd                                            pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
008bc7e4  b8 0b 00 00                                      .byte 0xb8, 0x0b, 0x00, 0x00

; FUNCTION 0x008bc7e8, declared_size=36, range_size=36, mode=thumb
; class-group: std::priv::time_init<wchar_t>
; alias: _ZNSt4priv9time_initIwEC2EP12_Locale_time
; demangled: std::priv::time_init<wchar_t>::time_init(_Locale_time*)
; decoder-mode: thumb
008bc7e8  70 b5                                            push {r4, r5, r6, lr}
008bc7ea  04 1c                                            adds r4, r0, #0
008bc7ec  0d 1c                                            adds r5, r1, #0
008bc7ee  ff f7 ef f9                                      bl #0x8bbbd0
008bc7f2  29 1c                                            adds r1, r5, #0
008bc7f4  20 1c                                            adds r0, r4, #0
008bc7f6  ff f7 49 ff                                      bl #0x8bc68c
008bc7fa  28 1c                                            adds r0, r5, #0
008bc7fc  fe f7 86 fd                                      bl #0x8bb30c
008bc800  01 4b                                            ldr r3, [pc, #4]
008bc802  e0 50                                            str r0, [r4, r3]
008bc804  20 1c                                            adds r0, r4, #0
008bc806  70 bd                                            pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
008bc808  b8 0b 00 00                                      .byte 0xb8, 0x0b, 0x00, 0x00

; FUNCTION 0x008bc80c, declared_size=128, range_size=128, mode=thumb
; class-group: std::priv::time_init<wchar_t>
; alias: _ZNSt4priv9time_initIwEC1EPKc
; demangled: std::priv::time_init<wchar_t>::time_init(char const*)
; decoder-mode: thumb
008bc80c  f0 b5                                            push {r4, r5, r6, r7, lr}
008bc80e  1b 4c                                            ldr r4, [pc, #0x6c]
008bc810  1b 4f                                            ldr r7, [pc, #0x6c]
008bc812  c5 b0                                            sub sp, #0x114
008bc814  7c 44                                            add r4, pc
008bc816  e3 59                                            ldr r3, [r4, r7]
008bc818  05 1c                                            adds r5, r0, #0
008bc81a  01 91                                            str r1, [sp, #4]
008bc81c  1b 68                                            ldr r3, [r3]
008bc81e  43 93                                            str r3, [sp, #0x10c]
008bc820  ff f7 d6 f9                                      bl #0x8bbbd0
008bc824  01 9b                                            ldr r3, [sp, #4]
008bc826  00 2b                                            cmp r3, #0
008bc828  1b d0                                            beq #0x8bc862
008bc82a  01 a8                                            add r0, sp, #4
008bc82c  03 a9                                            add r1, sp, #0xc
008bc82e  00 22                                            movs r2, #0
008bc830  02 ab                                            add r3, sp, #8
008bc832  f7 f7 bd fc                                      bl #0x8b41b0
008bc836  06 1e                                            subs r6, r0, #0
008bc838  16 d0                                            beq #0x8bc868
008bc83a  31 1c                                            adds r1, r6, #0
008bc83c  28 1c                                            adds r0, r5, #0
008bc83e  ff f7 25 ff                                      bl #0x8bc68c
008bc842  30 1c                                            adds r0, r6, #0
008bc844  fe f7 62 fd                                      bl #0x8bb30c
008bc848  0e 4b                                            ldr r3, [pc, #0x38]
008bc84a  e8 50                                            str r0, [r5, r3]
008bc84c  30 1c                                            adds r0, r6, #0
008bc84e  f7 f7 67 fa                                      bl #0x8b3d20
008bc852  e3 59                                            ldr r3, [r4, r7]
008bc854  43 9a                                            ldr r2, [sp, #0x10c]
008bc856  28 1c                                            adds r0, r5, #0
008bc858  1b 68                                            ldr r3, [r3]
008bc85a  9a 42                                            cmp r2, r3
008bc85c  0b d1                                            bne #0x8bc876
008bc85e  45 b0                                            add sp, #0x114
008bc860  f0 bd                                            pop {r4, r5, r6, r7, pc}
008bc862  e6 f7 2d fe                                      bl #0x8a34c0
008bc866  e0 e7                                            b #0x8bc82a
008bc868  07 4a                                            ldr r2, [pc, #0x1c]
008bc86a  02 98                                            ldr r0, [sp, #8]
008bc86c  01 99                                            ldr r1, [sp, #4]
008bc86e  7a 44                                            add r2, pc
008bc870  e7 f7 ae ff                                      bl #0x8a47d0
008bc874  e1 e7                                            b #0x8bc83a
008bc876  51 f6 4c e5                                      blx #0x30e310
008bc87a  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008bc87c  80 82 0d 00 ac 40 00 00 b8 0b 00 00 c2 ab 05 00  .byte 0x80, 0x82, 0x0d, 0x00, 0xac, 0x40, 0x00, 0x00, 0xb8, 0x0b, 0x00, 0x00, 0xc2, 0xab, 0x05, 0x00

; FUNCTION 0x008bc88c, declared_size=128, range_size=128, mode=thumb
; class-group: std::priv::time_init<wchar_t>
; alias: _ZNSt4priv9time_initIwEC2EPKc
; demangled: std::priv::time_init<wchar_t>::time_init(char const*)
; decoder-mode: thumb
008bc88c  f0 b5                                            push {r4, r5, r6, r7, lr}
008bc88e  1b 4c                                            ldr r4, [pc, #0x6c]
008bc890  1b 4f                                            ldr r7, [pc, #0x6c]
008bc892  c5 b0                                            sub sp, #0x114
008bc894  7c 44                                            add r4, pc
008bc896  e3 59                                            ldr r3, [r4, r7]
008bc898  05 1c                                            adds r5, r0, #0
008bc89a  01 91                                            str r1, [sp, #4]
008bc89c  1b 68                                            ldr r3, [r3]
008bc89e  43 93                                            str r3, [sp, #0x10c]
008bc8a0  ff f7 96 f9                                      bl #0x8bbbd0
008bc8a4  01 9b                                            ldr r3, [sp, #4]
008bc8a6  00 2b                                            cmp r3, #0
008bc8a8  1b d0                                            beq #0x8bc8e2
008bc8aa  01 a8                                            add r0, sp, #4
008bc8ac  03 a9                                            add r1, sp, #0xc
008bc8ae  00 22                                            movs r2, #0
008bc8b0  02 ab                                            add r3, sp, #8
008bc8b2  f7 f7 7d fc                                      bl #0x8b41b0
008bc8b6  06 1e                                            subs r6, r0, #0
008bc8b8  16 d0                                            beq #0x8bc8e8
008bc8ba  31 1c                                            adds r1, r6, #0
008bc8bc  28 1c                                            adds r0, r5, #0
008bc8be  ff f7 e5 fe                                      bl #0x8bc68c
008bc8c2  30 1c                                            adds r0, r6, #0
008bc8c4  fe f7 22 fd                                      bl #0x8bb30c
008bc8c8  0e 4b                                            ldr r3, [pc, #0x38]
008bc8ca  e8 50                                            str r0, [r5, r3]
008bc8cc  30 1c                                            adds r0, r6, #0
008bc8ce  f7 f7 27 fa                                      bl #0x8b3d20
008bc8d2  e3 59                                            ldr r3, [r4, r7]
008bc8d4  43 9a                                            ldr r2, [sp, #0x10c]
008bc8d6  28 1c                                            adds r0, r5, #0
008bc8d8  1b 68                                            ldr r3, [r3]
008bc8da  9a 42                                            cmp r2, r3
008bc8dc  0b d1                                            bne #0x8bc8f6
008bc8de  45 b0                                            add sp, #0x114
008bc8e0  f0 bd                                            pop {r4, r5, r6, r7, pc}
008bc8e2  e6 f7 ed fd                                      bl #0x8a34c0
008bc8e6  e0 e7                                            b #0x8bc8aa
008bc8e8  07 4a                                            ldr r2, [pc, #0x1c]
008bc8ea  02 98                                            ldr r0, [sp, #8]
008bc8ec  01 99                                            ldr r1, [sp, #4]
008bc8ee  7a 44                                            add r2, pc
008bc8f0  e7 f7 6e ff                                      bl #0x8a47d0
008bc8f4  e1 e7                                            b #0x8bc8ba
008bc8f6  51 f6 0c e5                                      blx #0x30e310
008bc8fa  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008bc8fc  00 82 0d 00 ac 40 00 00 b8 0b 00 00 42 ab 05 00  .byte 0x00, 0x82, 0x0d, 0x00, 0xac, 0x40, 0x00, 0x00, 0xb8, 0x0b, 0x00, 0x00, 0x42, 0xab, 0x05, 0x00

; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008bcf3c, declared_size=80, range_size=80, mode=thumb
; class-group: std::priv::_Catalog_locale_map
; alias: _ZNKSt4priv19_Catalog_locale_map6lookupEi
; demangled: std::priv::_Catalog_locale_map::lookup(int) const
; decoder-mode: thumb
008bcf3c  70 b5                                            push {r4, r5, r6, lr}
008bcf3e  0b 68                                            ldr r3, [r1]
008bcf40  06 1c                                            adds r6, r0, #0
008bcf42  14 1c                                            adds r4, r2, #0
008bcf44  00 2b                                            cmp r3, #0
008bcf46  14 d0                                            beq #0x8bcf72
008bcf48  9d 68                                            ldr r5, [r3, #8]
008bcf4a  d9 68                                            ldr r1, [r3, #0xc]
008bcf4c  10 1c                                            adds r0, r2, #0
008bcf4e  49 1b                                            subs r1, r1, r5
008bcf50  89 10                                            asrs r1, r1, #2
008bcf52  01 39                                            subs r1, #1
008bcf54  51 f6 ea e5                                      blx #0x30eb2c
008bcf58  8b 00                                            lsls r3, r1, #2
008bcf5a  01 31                                            adds r1, #1
008bcf5c  89 00                                            lsls r1, r1, #2
008bcf5e  5b 59                                            ldr r3, [r3, r5]
008bcf60  49 59                                            ldr r1, [r1, r5]
008bcf62  99 42                                            cmp r1, r3
008bcf64  05 d0                                            beq #0x8bcf72
008bcf66  5a 68                                            ldr r2, [r3, #4]
008bcf68  a2 42                                            cmp r2, r4
008bcf6a  06 d0                                            beq #0x8bcf7a
008bcf6c  1b 68                                            ldr r3, [r3]
008bcf6e  99 42                                            cmp r1, r3
008bcf70  f9 d1                                            bne #0x8bcf66
008bcf72  e6 f7 19 fb                                      bl #0x8a35a8
008bcf76  01 1c                                            adds r1, r0, #0
008bcf78  03 e0                                            b #0x8bcf82
008bcf7a  19 1c                                            adds r1, r3, #0
008bcf7c  08 31                                            adds r1, #8
008bcf7e  00 2b                                            cmp r3, #0
008bcf80  f7 d0                                            beq #0x8bcf72
008bcf82  30 1c                                            adds r0, r6, #0
008bcf84  e6 f7 ec fa                                      bl #0x8a3560
008bcf88  30 1c                                            adds r0, r6, #0
008bcf8a  70 bd                                            pop {r4, r5, r6, pc}

; FUNCTION 0x008bd7b8, declared_size=22, range_size=22, mode=thumb
; class-group: std::priv::_Catalog_locale_map
; alias: _ZNSt4priv19_Catalog_locale_map5eraseEi
; demangled: std::priv::_Catalog_locale_map::erase(int)
; decoder-mode: thumb
008bd7b8  00 b5                                            push {lr}
008bd7ba  83 b0                                            sub sp, #0xc
008bd7bc  01 91                                            str r1, [sp, #4]
008bd7be  00 68                                            ldr r0, [r0]
008bd7c0  00 28                                            cmp r0, #0
008bd7c2  02 d0                                            beq #0x8bd7ca
008bd7c4  01 a9                                            add r1, sp, #4
008bd7c6  ff f7 57 ff                                      bl #0x8bd678
008bd7ca  03 b0                                            add sp, #0xc
008bd7cc  00 bd                                            pop {pc}

; FUNCTION 0x008bd880, declared_size=156, range_size=156, mode=thumb
; class-group: std::priv::_Catalog_locale_map
; alias: _ZNSt4priv19_Catalog_locale_map6insertEiRKSt6locale
; demangled: std::priv::_Catalog_locale_map::insert(int, std::locale const&)
; decoder-mode: thumb
008bd880  f0 b5                                            push {r4, r5, r6, r7, lr}
008bd882  57 46                                            mov r7, sl
008bd884  4e 46                                            mov r6, sb
008bd886  45 46                                            mov r5, r8
008bd888  e0 b4                                            push {r5, r6, r7}
008bd88a  22 4d                                            ldr r5, [pc, #0x88]
008bd88c  04 68                                            ldr r4, [r0]
008bd88e  86 b0                                            sub sp, #0x18
008bd890  7d 44                                            add r5, pc
008bd892  06 1c                                            adds r6, r0, #0
008bd894  0f 1c                                            adds r7, r1, #0
008bd896  90 46                                            mov r8, r2
008bd898  00 2c                                            cmp r4, #0
008bd89a  18 d0                                            beq #0x8bd8ce
008bd89c  04 ad                                            add r5, sp, #0x10
008bd89e  41 46                                            mov r1, r8
008bd8a0  28 1c                                            adds r0, r5, #0
008bd8a2  03 97                                            str r7, [sp, #0xc]
008bd8a4  e5 f7 5c fe                                      bl #0x8a3560
008bd8a8  61 69                                            ldr r1, [r4, #0x14]
008bd8aa  20 1c                                            adds r0, r4, #0
008bd8ac  01 31                                            adds r1, #1
008bd8ae  ff f7 ab ff                                      bl #0x8bd808
008bd8b2  03 aa                                            add r2, sp, #0xc
008bd8b4  01 a8                                            add r0, sp, #4
008bd8b6  21 1c                                            adds r1, r4, #0
008bd8b8  ff f7 f0 fb                                      bl #0x8bd09c
008bd8bc  28 1c                                            adds r0, r5, #0
008bd8be  e5 f7 19 fe                                      bl #0x8a34f4
008bd8c2  06 b0                                            add sp, #0x18
008bd8c4  1c bc                                            pop {r2, r3, r4}
008bd8c6  90 46                                            mov r8, r2
008bd8c8  99 46                                            mov sb, r3
008bd8ca  a2 46                                            mov sl, r4
008bd8cc  f0 bd                                            pop {r4, r5, r6, r7, pc}
008bd8ce  1c 20                                            movs r0, #0x1c
008bd8d0  50 f6 dc e7                                      blx #0x30e88c
008bd8d4  00 23                                            movs r3, #0
008bd8d6  43 60                                            str r3, [r0, #4]
008bd8d8  83 60                                            str r3, [r0, #8]
008bd8da  c3 60                                            str r3, [r0, #0xc]
008bd8dc  03 61                                            str r3, [r0, #0x10]
008bd8de  43 61                                            str r3, [r0, #0x14]
008bd8e0  99 46                                            mov sb, r3
008bd8e2  fe 23                                            movs r3, #0xfe
008bd8e4  9b 05                                            lsls r3, r3, #0x16
008bd8e6  83 61                                            str r3, [r0, #0x18]
008bd8e8  0b 4b                                            ldr r3, [pc, #0x2c]
008bd8ea  04 1c                                            adds r4, r0, #0
008bd8ec  eb 58                                            ldr r3, [r5, r3]
008bd8ee  05 1c                                            adds r5, r0, #0
008bd8f0  08 35                                            adds r5, #8
008bd8f2  1b 68                                            ldr r3, [r3]
008bd8f4  28 1c                                            adds r0, r5, #0
008bd8f6  01 33                                            adds r3, #1
008bd8f8  9a 46                                            mov sl, r3
008bd8fa  19 1c                                            adds r1, r3, #0
008bd8fc  f6 f7 0e f8                                      bl #0x8b391c
008bd900  4b 46                                            mov r3, sb
008bd902  28 1c                                            adds r0, r5, #0
008bd904  51 46                                            mov r1, sl
008bd906  05 aa                                            add r2, sp, #0x14
008bd908  05 93                                            str r3, [sp, #0x14]
008bd90a  f5 f7 67 fe                                      bl #0x8b35dc
008bd90e  34 60                                            str r4, [r6]
008bd910  c4 e7                                            b #0x8bd89c
008bd912  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008bd914  04 72 0d 00 fc 1c 00 00                          .byte 0x04, 0x72, 0x0d, 0x00, 0xfc, 0x1c, 0x00, 0x00

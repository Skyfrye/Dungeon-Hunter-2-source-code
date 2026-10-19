; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008bc560, declared_size=26, range_size=26, mode=thumb
; class-group: std::priv::time_init<char>
; alias: _ZNSt4priv9time_initIcEC1Ev
; demangled: std::priv::time_init<char>::time_init()
; decoder-mode: thumb
008bc560  10 b5                                            push {r4, lr}
008bc562  04 1c                                            adds r4, r0, #0
008bc564  ff f7 e4 fa                                      bl #0x8bbb30
008bc568  87 23                                            movs r3, #0x87
008bc56a  db 00                                            lsls r3, r3, #3
008bc56c  00 22                                            movs r2, #0
008bc56e  20 1c                                            adds r0, r4, #0
008bc570  e2 50                                            str r2, [r4, r3]
008bc572  ff f7 a3 ff                                      bl #0x8bc4bc
008bc576  20 1c                                            adds r0, r4, #0
008bc578  10 bd                                            pop {r4, pc}

; FUNCTION 0x008bc57c, declared_size=26, range_size=26, mode=thumb
; class-group: std::priv::time_init<char>
; alias: _ZNSt4priv9time_initIcEC2Ev
; demangled: std::priv::time_init<char>::time_init()
; decoder-mode: thumb
008bc57c  10 b5                                            push {r4, lr}
008bc57e  04 1c                                            adds r4, r0, #0
008bc580  ff f7 d6 fa                                      bl #0x8bbb30
008bc584  87 23                                            movs r3, #0x87
008bc586  db 00                                            lsls r3, r3, #3
008bc588  00 22                                            movs r2, #0
008bc58a  20 1c                                            adds r0, r4, #0
008bc58c  e2 50                                            str r2, [r4, r3]
008bc58e  ff f7 95 ff                                      bl #0x8bc4bc
008bc592  20 1c                                            adds r0, r4, #0
008bc594  10 bd                                            pop {r4, pc}

; FUNCTION 0x008bca04, declared_size=34, range_size=34, mode=thumb
; class-group: std::priv::time_init<char>
; alias: _ZNSt4priv9time_initIcEC1EP12_Locale_time
; demangled: std::priv::time_init<char>::time_init(_Locale_time*)
; decoder-mode: thumb
008bca04  70 b5                                            push {r4, r5, r6, lr}
008bca06  04 1c                                            adds r4, r0, #0
008bca08  0d 1c                                            adds r5, r1, #0
008bca0a  ff f7 91 f8                                      bl #0x8bbb30
008bca0e  29 1c                                            adds r1, r5, #0
008bca10  20 1c                                            adds r0, r4, #0
008bca12  ff f7 7b ff                                      bl #0x8bc90c
008bca16  28 1c                                            adds r0, r5, #0
008bca18  fe f7 78 fc                                      bl #0x8bb30c
008bca1c  87 23                                            movs r3, #0x87
008bca1e  db 00                                            lsls r3, r3, #3
008bca20  e0 50                                            str r0, [r4, r3]
008bca22  20 1c                                            adds r0, r4, #0
008bca24  70 bd                                            pop {r4, r5, r6, pc}

; FUNCTION 0x008bca28, declared_size=34, range_size=34, mode=thumb
; class-group: std::priv::time_init<char>
; alias: _ZNSt4priv9time_initIcEC2EP12_Locale_time
; demangled: std::priv::time_init<char>::time_init(_Locale_time*)
; decoder-mode: thumb
008bca28  70 b5                                            push {r4, r5, r6, lr}
008bca2a  04 1c                                            adds r4, r0, #0
008bca2c  0d 1c                                            adds r5, r1, #0
008bca2e  ff f7 7f f8                                      bl #0x8bbb30
008bca32  29 1c                                            adds r1, r5, #0
008bca34  20 1c                                            adds r0, r4, #0
008bca36  ff f7 69 ff                                      bl #0x8bc90c
008bca3a  28 1c                                            adds r0, r5, #0
008bca3c  fe f7 66 fc                                      bl #0x8bb30c
008bca40  87 23                                            movs r3, #0x87
008bca42  db 00                                            lsls r3, r3, #3
008bca44  e0 50                                            str r0, [r4, r3]
008bca46  20 1c                                            adds r0, r4, #0
008bca48  70 bd                                            pop {r4, r5, r6, pc}

; FUNCTION 0x008bca4c, declared_size=124, range_size=124, mode=thumb
; class-group: std::priv::time_init<char>
; alias: _ZNSt4priv9time_initIcEC1EPKc
; demangled: std::priv::time_init<char>::time_init(char const*)
; decoder-mode: thumb
008bca4c  f0 b5                                            push {r4, r5, r6, r7, lr}
008bca4e  1b 4c                                            ldr r4, [pc, #0x6c]
008bca50  1b 4f                                            ldr r7, [pc, #0x6c]
008bca52  c5 b0                                            sub sp, #0x114
008bca54  7c 44                                            add r4, pc
008bca56  e3 59                                            ldr r3, [r4, r7]
008bca58  05 1c                                            adds r5, r0, #0
008bca5a  01 91                                            str r1, [sp, #4]
008bca5c  1b 68                                            ldr r3, [r3]
008bca5e  43 93                                            str r3, [sp, #0x10c]
008bca60  ff f7 66 f8                                      bl #0x8bbb30
008bca64  01 9b                                            ldr r3, [sp, #4]
008bca66  00 2b                                            cmp r3, #0
008bca68  1c d0                                            beq #0x8bcaa4
008bca6a  01 a8                                            add r0, sp, #4
008bca6c  03 a9                                            add r1, sp, #0xc
008bca6e  00 22                                            movs r2, #0
008bca70  02 ab                                            add r3, sp, #8
008bca72  f7 f7 9d fb                                      bl #0x8b41b0
008bca76  06 1e                                            subs r6, r0, #0
008bca78  17 d0                                            beq #0x8bcaaa
008bca7a  31 1c                                            adds r1, r6, #0
008bca7c  28 1c                                            adds r0, r5, #0
008bca7e  ff f7 45 ff                                      bl #0x8bc90c
008bca82  30 1c                                            adds r0, r6, #0
008bca84  fe f7 42 fc                                      bl #0x8bb30c
008bca88  87 23                                            movs r3, #0x87
008bca8a  db 00                                            lsls r3, r3, #3
008bca8c  e8 50                                            str r0, [r5, r3]
008bca8e  30 1c                                            adds r0, r6, #0
008bca90  f7 f7 46 f9                                      bl #0x8b3d20
008bca94  e3 59                                            ldr r3, [r4, r7]
008bca96  43 9a                                            ldr r2, [sp, #0x10c]
008bca98  28 1c                                            adds r0, r5, #0
008bca9a  1b 68                                            ldr r3, [r3]
008bca9c  9a 42                                            cmp r2, r3
008bca9e  0b d1                                            bne #0x8bcab8
008bcaa0  45 b0                                            add sp, #0x114
008bcaa2  f0 bd                                            pop {r4, r5, r6, r7, pc}
008bcaa4  e6 f7 0c fd                                      bl #0x8a34c0
008bcaa8  df e7                                            b #0x8bca6a
008bcaaa  06 4a                                            ldr r2, [pc, #0x18]
008bcaac  02 98                                            ldr r0, [sp, #8]
008bcaae  01 99                                            ldr r1, [sp, #4]
008bcab0  7a 44                                            add r2, pc
008bcab2  e7 f7 8d fe                                      bl #0x8a47d0
008bcab6  e0 e7                                            b #0x8bca7a
008bcab8  51 f6 2a e4                                      blx #0x30e310
; mapping-symbol data/literal pool
008bcabc  40 80 0d 00 ac 40 00 00 80 a9 05 00              .byte 0x40, 0x80, 0x0d, 0x00, 0xac, 0x40, 0x00, 0x00, 0x80, 0xa9, 0x05, 0x00

; FUNCTION 0x008bcac8, declared_size=124, range_size=124, mode=thumb
; class-group: std::priv::time_init<char>
; alias: _ZNSt4priv9time_initIcEC2EPKc
; demangled: std::priv::time_init<char>::time_init(char const*)
; decoder-mode: thumb
008bcac8  f0 b5                                            push {r4, r5, r6, r7, lr}
008bcaca  1b 4c                                            ldr r4, [pc, #0x6c]
008bcacc  1b 4f                                            ldr r7, [pc, #0x6c]
008bcace  c5 b0                                            sub sp, #0x114
008bcad0  7c 44                                            add r4, pc
008bcad2  e3 59                                            ldr r3, [r4, r7]
008bcad4  05 1c                                            adds r5, r0, #0
008bcad6  01 91                                            str r1, [sp, #4]
008bcad8  1b 68                                            ldr r3, [r3]
008bcada  43 93                                            str r3, [sp, #0x10c]
008bcadc  ff f7 28 f8                                      bl #0x8bbb30
008bcae0  01 9b                                            ldr r3, [sp, #4]
008bcae2  00 2b                                            cmp r3, #0
008bcae4  1c d0                                            beq #0x8bcb20
008bcae6  01 a8                                            add r0, sp, #4
008bcae8  03 a9                                            add r1, sp, #0xc
008bcaea  00 22                                            movs r2, #0
008bcaec  02 ab                                            add r3, sp, #8
008bcaee  f7 f7 5f fb                                      bl #0x8b41b0
008bcaf2  06 1e                                            subs r6, r0, #0
008bcaf4  17 d0                                            beq #0x8bcb26
008bcaf6  31 1c                                            adds r1, r6, #0
008bcaf8  28 1c                                            adds r0, r5, #0
008bcafa  ff f7 07 ff                                      bl #0x8bc90c
008bcafe  30 1c                                            adds r0, r6, #0
008bcb00  fe f7 04 fc                                      bl #0x8bb30c
008bcb04  87 23                                            movs r3, #0x87
008bcb06  db 00                                            lsls r3, r3, #3
008bcb08  e8 50                                            str r0, [r5, r3]
008bcb0a  30 1c                                            adds r0, r6, #0
008bcb0c  f7 f7 08 f9                                      bl #0x8b3d20
008bcb10  e3 59                                            ldr r3, [r4, r7]
008bcb12  43 9a                                            ldr r2, [sp, #0x10c]
008bcb14  28 1c                                            adds r0, r5, #0
008bcb16  1b 68                                            ldr r3, [r3]
008bcb18  9a 42                                            cmp r2, r3
008bcb1a  0b d1                                            bne #0x8bcb34
008bcb1c  45 b0                                            add sp, #0x114
008bcb1e  f0 bd                                            pop {r4, r5, r6, r7, pc}
008bcb20  e6 f7 ce fc                                      bl #0x8a34c0
008bcb24  df e7                                            b #0x8bcae6
008bcb26  06 4a                                            ldr r2, [pc, #0x18]
008bcb28  02 98                                            ldr r0, [sp, #8]
008bcb2a  01 99                                            ldr r1, [sp, #4]
008bcb2c  7a 44                                            add r2, pc
008bcb2e  e7 f7 4f fe                                      bl #0x8a47d0
008bcb32  e0 e7                                            b #0x8bcaf6
008bcb34  51 f6 ec e3                                      blx #0x30e310
; mapping-symbol data/literal pool
008bcb38  c4 7f 0d 00 ac 40 00 00 04 a9 05 00              .byte 0xc4, 0x7f, 0x0d, 0x00, 0xac, 0x40, 0x00, 0x00, 0x04, 0xa9, 0x05, 0x00

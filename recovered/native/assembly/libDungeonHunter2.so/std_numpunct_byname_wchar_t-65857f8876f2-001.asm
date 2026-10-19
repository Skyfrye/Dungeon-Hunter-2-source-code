; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008b4eb0, declared_size=48, range_size=48, mode=thumb
; class-group: std::numpunct_byname<wchar_t>
; alias: _ZNKSt15numpunct_bynameIwE11do_groupingEv
; demangled: std::numpunct_byname<wchar_t>::do_grouping() const
; decoder-mode: thumb
008b4eb0  10 b5                                            push {r4, lr}
008b4eb2  04 1c                                            adds r4, r0, #0
008b4eb4  82 b0                                            sub sp, #8
008b4eb6  c8 68                                            ldr r0, [r1, #0xc]
008b4eb8  01 f0 dc fd                                      bl #0x8b6a74
008b4ebc  01 1e                                            subs r1, r0, #0
008b4ebe  02 d0                                            beq #0x8b4ec6
008b4ec0  0b 78                                            ldrb r3, [r1]
008b4ec2  ff 2b                                            cmp r3, #0xff
008b4ec4  06 d0                                            beq #0x8b4ed4
008b4ec6  01 aa                                            add r2, sp, #4
008b4ec8  20 1c                                            adds r0, r4, #0
008b4eca  5f f6 10 e1                                      blx #0x3140ec
008b4ece  02 b0                                            add sp, #8
008b4ed0  20 1c                                            adds r0, r4, #0
008b4ed2  10 bd                                            pop {r4, pc}
008b4ed4  01 49                                            ldr r1, [pc, #4]
008b4ed6  79 44                                            add r1, pc
008b4ed8  f5 e7                                            b #0x8b4ec6
008b4eda  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008b4edc  3e 09 06 00                                      .byte 0x3e, 0x09, 0x06, 0x00

; FUNCTION 0x008b4f10, declared_size=10, range_size=10, mode=thumb
; class-group: std::numpunct_byname<wchar_t>
; alias: _ZNKSt15numpunct_bynameIwE16do_thousands_sepEv
; demangled: std::numpunct_byname<wchar_t>::do_thousands_sep() const
; decoder-mode: thumb
008b4f10  10 b5                                            push {r4, lr}
008b4f12  c0 68                                            ldr r0, [r0, #0xc]
008b4f14  01 f0 c2 fd                                      bl #0x8b6a9c
008b4f18  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b4f1c, declared_size=10, range_size=10, mode=thumb
; class-group: std::numpunct_byname<wchar_t>
; alias: _ZNKSt15numpunct_bynameIwE16do_decimal_pointEv
; demangled: std::numpunct_byname<wchar_t>::do_decimal_point() const
; decoder-mode: thumb
008b4f1c  10 b5                                            push {r4, lr}
008b4f1e  c0 68                                            ldr r0, [r0, #0xc]
008b4f20  01 f0 ba fd                                      bl #0x8b6a98
008b4f24  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b4f28, declared_size=40, range_size=40, mode=thumb
; class-group: std::numpunct_byname<wchar_t>
; alias: _ZNSt15numpunct_bynameIwED1Ev
; demangled: std::numpunct_byname<wchar_t>::~numpunct_byname()
; decoder-mode: thumb
008b4f28  10 b5                                            push {r4, lr}
008b4f2a  07 4b                                            ldr r3, [pc, #0x1c]
008b4f2c  07 4a                                            ldr r2, [pc, #0x1c]
008b4f2e  04 1c                                            adds r4, r0, #0
008b4f30  7b 44                                            add r3, pc
008b4f32  9a 58                                            ldr r2, [r3, r2]
008b4f34  08 32                                            adds r2, #8
008b4f36  02 60                                            str r2, [r0]
008b4f38  c0 68                                            ldr r0, [r0, #0xc]
008b4f3a  fe f7 03 ff                                      bl #0x8b3d44
008b4f3e  20 1c                                            adds r0, r4, #0
008b4f40  06 f0 5a f9                                      bl #0x8bb1f8
008b4f44  20 1c                                            adds r0, r4, #0
008b4f46  10 bd                                            pop {r4, pc}
; mapping-symbol data/literal pool
008b4f48  64 fb 0d 00 cc 0a 00 00                          .byte 0x64, 0xfb, 0x0d, 0x00, 0xcc, 0x0a, 0x00, 0x00

; FUNCTION 0x008b4f50, declared_size=18, range_size=18, mode=thumb
; class-group: std::numpunct_byname<wchar_t>
; alias: _ZNSt15numpunct_bynameIwED0Ev
; demangled: std::numpunct_byname<wchar_t>::~numpunct_byname()
; decoder-mode: thumb
008b4f50  10 b5                                            push {r4, lr}
008b4f52  04 1c                                            adds r4, r0, #0
008b4f54  ff f7 e8 ff                                      bl #0x8b4f28
008b4f58  20 1c                                            adds r0, r4, #0
008b4f5a  59 f6 aa e1                                      blx #0x30e2b0
008b4f5e  20 1c                                            adds r0, r4, #0
008b4f60  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b4f64, declared_size=40, range_size=40, mode=thumb
; class-group: std::numpunct_byname<wchar_t>
; alias: _ZNSt15numpunct_bynameIwED2Ev
; demangled: std::numpunct_byname<wchar_t>::~numpunct_byname()
; decoder-mode: thumb
008b4f64  10 b5                                            push {r4, lr}
008b4f66  07 4b                                            ldr r3, [pc, #0x1c]
008b4f68  07 4a                                            ldr r2, [pc, #0x1c]
008b4f6a  04 1c                                            adds r4, r0, #0
008b4f6c  7b 44                                            add r3, pc
008b4f6e  9a 58                                            ldr r2, [r3, r2]
008b4f70  08 32                                            adds r2, #8
008b4f72  02 60                                            str r2, [r0]
008b4f74  c0 68                                            ldr r0, [r0, #0xc]
008b4f76  fe f7 e5 fe                                      bl #0x8b3d44
008b4f7a  20 1c                                            adds r0, r4, #0
008b4f7c  06 f0 3c f9                                      bl #0x8bb1f8
008b4f80  20 1c                                            adds r0, r4, #0
008b4f82  10 bd                                            pop {r4, pc}
; mapping-symbol data/literal pool
008b4f84  28 fb 0d 00 cc 0a 00 00                          .byte 0x28, 0xfb, 0x0d, 0x00, 0xcc, 0x0a, 0x00, 0x00

; FUNCTION 0x008b5a44, declared_size=124, range_size=124, mode=thumb
; class-group: std::numpunct_byname<wchar_t>
; alias: _ZNSt15numpunct_bynameIwEC1EPKcj
; demangled: std::numpunct_byname<wchar_t>::numpunct_byname(char const*, unsigned int)
; decoder-mode: thumb
008b5a44  70 b5                                            push {r4, r5, r6, lr}
008b5a46  1a 4c                                            ldr r4, [pc, #0x68]
008b5a48  1a 4e                                            ldr r6, [pc, #0x68]
008b5a4a  c4 b0                                            sub sp, #0x110
008b5a4c  7c 44                                            add r4, pc
008b5a4e  a3 59                                            ldr r3, [r4, r6]
008b5a50  01 91                                            str r1, [sp, #4]
008b5a52  05 1c                                            adds r5, r0, #0
008b5a54  1b 68                                            ldr r3, [r3]
008b5a56  00 21                                            movs r1, #0
008b5a58  43 93                                            str r3, [sp, #0x10c]
008b5a5a  53 1e                                            subs r3, r2, #1
008b5a5c  9a 41                                            sbcs r2, r3
008b5a5e  42 60                                            str r2, [r0, #4]
008b5a60  08 30                                            adds r0, #8
008b5a62  58 f6 a6 e2                                      blx #0x30dfb0
008b5a66  14 4b                                            ldr r3, [pc, #0x50]
008b5a68  e3 58                                            ldr r3, [r4, r3]
008b5a6a  08 33                                            adds r3, #8
008b5a6c  2b 60                                            str r3, [r5]
008b5a6e  01 9b                                            ldr r3, [sp, #4]
008b5a70  00 2b                                            cmp r3, #0
008b5a72  17 d0                                            beq #0x8b5aa4
008b5a74  01 a8                                            add r0, sp, #4
008b5a76  03 a9                                            add r1, sp, #0xc
008b5a78  00 22                                            movs r2, #0
008b5a7a  02 ab                                            add r3, sp, #8
008b5a7c  fe f7 b8 fb                                      bl #0x8b41f0
008b5a80  e8 60                                            str r0, [r5, #0xc]
008b5a82  00 28                                            cmp r0, #0
008b5a84  07 d0                                            beq #0x8b5a96
008b5a86  a3 59                                            ldr r3, [r4, r6]
008b5a88  43 9a                                            ldr r2, [sp, #0x10c]
008b5a8a  28 1c                                            adds r0, r5, #0
008b5a8c  1b 68                                            ldr r3, [r3]
008b5a8e  9a 42                                            cmp r2, r3
008b5a90  0b d1                                            bne #0x8b5aaa
008b5a92  44 b0                                            add sp, #0x110
008b5a94  70 bd                                            pop {r4, r5, r6, pc}
008b5a96  09 4a                                            ldr r2, [pc, #0x24]
008b5a98  02 98                                            ldr r0, [sp, #8]
008b5a9a  01 99                                            ldr r1, [sp, #4]
008b5a9c  7a 44                                            add r2, pc
008b5a9e  ee f7 97 fe                                      bl #0x8a47d0
008b5aa2  f0 e7                                            b #0x8b5a86
008b5aa4  ed f7 0c fd                                      bl #0x8a34c0
008b5aa8  e4 e7                                            b #0x8b5a74
008b5aaa  58 f6 32 e4                                      blx #0x30e310
008b5aae  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008b5ab0  48 f0 0d 00 ac 40 00 00 cc 0a 00 00 78 01 06 00  .byte 0x48, 0xf0, 0x0d, 0x00, 0xac, 0x40, 0x00, 0x00, 0xcc, 0x0a, 0x00, 0x00, 0x78, 0x01, 0x06, 0x00

; FUNCTION 0x008b5ac0, declared_size=124, range_size=124, mode=thumb
; class-group: std::numpunct_byname<wchar_t>
; alias: _ZNSt15numpunct_bynameIwEC2EPKcj
; demangled: std::numpunct_byname<wchar_t>::numpunct_byname(char const*, unsigned int)
; decoder-mode: thumb
008b5ac0  70 b5                                            push {r4, r5, r6, lr}
008b5ac2  1a 4c                                            ldr r4, [pc, #0x68]
008b5ac4  1a 4e                                            ldr r6, [pc, #0x68]
008b5ac6  c4 b0                                            sub sp, #0x110
008b5ac8  7c 44                                            add r4, pc
008b5aca  a3 59                                            ldr r3, [r4, r6]
008b5acc  01 91                                            str r1, [sp, #4]
008b5ace  05 1c                                            adds r5, r0, #0
008b5ad0  1b 68                                            ldr r3, [r3]
008b5ad2  00 21                                            movs r1, #0
008b5ad4  43 93                                            str r3, [sp, #0x10c]
008b5ad6  53 1e                                            subs r3, r2, #1
008b5ad8  9a 41                                            sbcs r2, r3
008b5ada  42 60                                            str r2, [r0, #4]
008b5adc  08 30                                            adds r0, #8
008b5ade  58 f6 68 e2                                      blx #0x30dfb0
008b5ae2  14 4b                                            ldr r3, [pc, #0x50]
008b5ae4  e3 58                                            ldr r3, [r4, r3]
008b5ae6  08 33                                            adds r3, #8
008b5ae8  2b 60                                            str r3, [r5]
008b5aea  01 9b                                            ldr r3, [sp, #4]
008b5aec  00 2b                                            cmp r3, #0
008b5aee  17 d0                                            beq #0x8b5b20
008b5af0  01 a8                                            add r0, sp, #4
008b5af2  03 a9                                            add r1, sp, #0xc
008b5af4  00 22                                            movs r2, #0
008b5af6  02 ab                                            add r3, sp, #8
008b5af8  fe f7 7a fb                                      bl #0x8b41f0
008b5afc  e8 60                                            str r0, [r5, #0xc]
008b5afe  00 28                                            cmp r0, #0
008b5b00  07 d0                                            beq #0x8b5b12
008b5b02  a3 59                                            ldr r3, [r4, r6]
008b5b04  43 9a                                            ldr r2, [sp, #0x10c]
008b5b06  28 1c                                            adds r0, r5, #0
008b5b08  1b 68                                            ldr r3, [r3]
008b5b0a  9a 42                                            cmp r2, r3
008b5b0c  0b d1                                            bne #0x8b5b26
008b5b0e  44 b0                                            add sp, #0x110
008b5b10  70 bd                                            pop {r4, r5, r6, pc}
008b5b12  09 4a                                            ldr r2, [pc, #0x24]
008b5b14  02 98                                            ldr r0, [sp, #8]
008b5b16  01 99                                            ldr r1, [sp, #4]
008b5b18  7a 44                                            add r2, pc
008b5b1a  ee f7 59 fe                                      bl #0x8a47d0
008b5b1e  f0 e7                                            b #0x8b5b02
008b5b20  ed f7 ce fc                                      bl #0x8a34c0
008b5b24  e4 e7                                            b #0x8b5af0
008b5b26  58 f6 f4 e3                                      blx #0x30e310
008b5b2a  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008b5b2c  cc ef 0d 00 ac 40 00 00 cc 0a 00 00 fc 00 06 00  .byte 0xcc, 0xef, 0x0d, 0x00, 0xac, 0x40, 0x00, 0x00, 0xcc, 0x0a, 0x00, 0x00, 0xfc, 0x00, 0x06, 0x00

; FUNCTION 0x008b6098, declared_size=32, range_size=32, mode=thumb
; class-group: std::numpunct_byname<wchar_t>
; alias: _ZNKSt15numpunct_bynameIwE12do_falsenameEv
; demangled: std::numpunct_byname<wchar_t>::do_falsename() const
; decoder-mode: thumb
008b6098  10 b5                                            push {r4, lr}
008b609a  92 b0                                            sub sp, #0x48
008b609c  04 1c                                            adds r4, r0, #0
008b609e  10 22                                            movs r2, #0x10
008b60a0  c8 68                                            ldr r0, [r1, #0xc]
008b60a2  01 a9                                            add r1, sp, #4
008b60a4  00 f0 02 fd                                      bl #0x8b6aac
008b60a8  11 aa                                            add r2, sp, #0x44
008b60aa  01 1c                                            adds r1, r0, #0
008b60ac  20 1c                                            adds r0, r4, #0
008b60ae  ff f7 83 ff                                      bl #0x8b5fb8
008b60b2  12 b0                                            add sp, #0x48
008b60b4  20 1c                                            adds r0, r4, #0
008b60b6  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b60b8, declared_size=32, range_size=32, mode=thumb
; class-group: std::numpunct_byname<wchar_t>
; alias: _ZNKSt15numpunct_bynameIwE11do_truenameEv
; demangled: std::numpunct_byname<wchar_t>::do_truename() const
; decoder-mode: thumb
008b60b8  10 b5                                            push {r4, lr}
008b60ba  92 b0                                            sub sp, #0x48
008b60bc  04 1c                                            adds r4, r0, #0
008b60be  10 22                                            movs r2, #0x10
008b60c0  c8 68                                            ldr r0, [r1, #0xc]
008b60c2  01 a9                                            add r1, sp, #4
008b60c4  00 f0 ec fc                                      bl #0x8b6aa0
008b60c8  11 aa                                            add r2, sp, #0x44
008b60ca  01 1c                                            adds r1, r0, #0
008b60cc  20 1c                                            adds r0, r4, #0
008b60ce  ff f7 73 ff                                      bl #0x8b5fb8
008b60d2  12 b0                                            add sp, #0x48
008b60d4  20 1c                                            adds r0, r4, #0
008b60d6  10 bd                                            pop {r4, pc}

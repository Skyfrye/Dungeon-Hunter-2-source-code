; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008a2904, declared_size=42, range_size=42, mode=thumb
; class-group: std::ios_base
; alias: _ZNSt8ios_base19_M_invoke_callbacksENS_5eventE
; demangled: std::ios_base::_M_invoke_callbacks(std::ios_base::event)
; decoder-mode: thumb
008a2904  f8 b5                                            push {r3, r4, r5, r6, r7, lr}
008a2906  c5 6a                                            ldr r5, [r0, #0x2c]
008a2908  06 1c                                            adds r6, r0, #0
008a290a  0f 1c                                            adds r7, r1, #0
008a290c  00 2d                                            cmp r5, #0
008a290e  0d d0                                            beq #0x8a292c
008a2910  01 3d                                            subs r5, #1
008a2912  ec 00                                            lsls r4, r5, #3
008a2914  00 e0                                            b #0x8a2918
008a2916  01 3d                                            subs r5, #1
008a2918  73 6a                                            ldr r3, [r6, #0x24]
008a291a  38 1c                                            adds r0, r7, #0
008a291c  31 1c                                            adds r1, r6, #0
008a291e  1b 19                                            adds r3, r3, r4
008a2920  5a 68                                            ldr r2, [r3, #4]
008a2922  1b 68                                            ldr r3, [r3]
008a2924  98 47                                            blx r3
008a2926  08 3c                                            subs r4, #8
008a2928  00 2d                                            cmp r5, #0
008a292a  f4 d1                                            bne #0x8a2916
008a292c  f8 bd                                            pop {r3, r4, r5, r6, r7, pc}

; FUNCTION 0x008a2930, declared_size=60, range_size=60, mode=thumb
; class-group: std::ios_base
; alias: _ZNSt8ios_baseD1Ev
; demangled: std::ios_base::~ios_base()
; decoder-mode: thumb
008a2930  10 b5                                            push {r4, lr}
008a2932  0c 4b                                            ldr r3, [pc, #0x30]
008a2934  0c 4a                                            ldr r2, [pc, #0x30]
008a2936  04 1c                                            adds r4, r0, #0
008a2938  7b 44                                            add r3, pc
008a293a  9a 58                                            ldr r2, [r3, r2]
008a293c  00 21                                            movs r1, #0
008a293e  08 32                                            adds r2, #8
008a2940  02 60                                            str r2, [r0]
008a2942  ff f7 df ff                                      bl #0x8a2904
008a2946  60 6a                                            ldr r0, [r4, #0x24]
008a2948  6b f6 d2 e2                                      blx #0x30def0
008a294c  20 6b                                            ldr r0, [r4, #0x30]
008a294e  6b f6 d0 e2                                      blx #0x30def0
008a2952  a0 6b                                            ldr r0, [r4, #0x38]
008a2954  6b f6 cc e2                                      blx #0x30def0
008a2958  20 1c                                            adds r0, r4, #0
008a295a  20 30                                            adds r0, #0x20
008a295c  00 f0 ca fd                                      bl #0x8a34f4
008a2960  20 1c                                            adds r0, r4, #0
008a2962  10 bd                                            pop {r4, pc}
; mapping-symbol data/literal pool
008a2964  5c 21 0f 00 dc 2a 00 00                          .byte 0x5c, 0x21, 0x0f, 0x00, 0xdc, 0x2a, 0x00, 0x00

; FUNCTION 0x008a296c, declared_size=18, range_size=18, mode=thumb
; class-group: std::ios_base
; alias: _ZNSt8ios_baseD0Ev
; demangled: std::ios_base::~ios_base()
; decoder-mode: thumb
008a296c  10 b5                                            push {r4, lr}
008a296e  04 1c                                            adds r4, r0, #0
008a2970  ff f7 de ff                                      bl #0x8a2930
008a2974  20 1c                                            adds r0, r4, #0
008a2976  6b f6 9c e4                                      blx #0x30e2b0
008a297a  20 1c                                            adds r0, r4, #0
008a297c  10 bd                                            pop {r4, pc}

; FUNCTION 0x008a2980, declared_size=60, range_size=60, mode=thumb
; class-group: std::ios_base
; alias: _ZNSt8ios_baseD2Ev
; demangled: std::ios_base::~ios_base()
; decoder-mode: thumb
008a2980  10 b5                                            push {r4, lr}
008a2982  0c 4b                                            ldr r3, [pc, #0x30]
008a2984  0c 4a                                            ldr r2, [pc, #0x30]
008a2986  04 1c                                            adds r4, r0, #0
008a2988  7b 44                                            add r3, pc
008a298a  9a 58                                            ldr r2, [r3, r2]
008a298c  00 21                                            movs r1, #0
008a298e  08 32                                            adds r2, #8
008a2990  02 60                                            str r2, [r0]
008a2992  ff f7 b7 ff                                      bl #0x8a2904
008a2996  60 6a                                            ldr r0, [r4, #0x24]
008a2998  6b f6 aa e2                                      blx #0x30def0
008a299c  20 6b                                            ldr r0, [r4, #0x30]
008a299e  6b f6 a8 e2                                      blx #0x30def0
008a29a2  a0 6b                                            ldr r0, [r4, #0x38]
008a29a4  6b f6 a4 e2                                      blx #0x30def0
008a29a8  20 1c                                            adds r0, r4, #0
008a29aa  20 30                                            adds r0, #0x20
008a29ac  00 f0 a2 fd                                      bl #0x8a34f4
008a29b0  20 1c                                            adds r0, r4, #0
008a29b2  10 bd                                            pop {r4, pc}
; mapping-symbol data/literal pool
008a29b4  0c 21 0f 00 dc 2a 00 00                          .byte 0x0c, 0x21, 0x0f, 0x00, 0xdc, 0x2a, 0x00, 0x00

; FUNCTION 0x008a29bc, declared_size=64, range_size=64, mode=thumb
; class-group: std::ios_base
; alias: _ZNSt8ios_baseC1Ev
; demangled: std::ios_base::ios_base()
; decoder-mode: thumb
008a29bc  70 b5                                            push {r4, r5, r6, lr}
008a29be  0d 4b                                            ldr r3, [pc, #0x34]
008a29c0  0d 4a                                            ldr r2, [pc, #0x34]
008a29c2  00 25                                            movs r5, #0
008a29c4  7b 44                                            add r3, pc
008a29c6  9a 58                                            ldr r2, [r3, r2]
008a29c8  04 1c                                            adds r4, r0, #0
008a29ca  45 60                                            str r5, [r0, #4]
008a29cc  08 32                                            adds r2, #8
008a29ce  85 60                                            str r5, [r0, #8]
008a29d0  c5 60                                            str r5, [r0, #0xc]
008a29d2  05 61                                            str r5, [r0, #0x10]
008a29d4  45 61                                            str r5, [r0, #0x14]
008a29d6  85 61                                            str r5, [r0, #0x18]
008a29d8  c5 61                                            str r5, [r0, #0x1c]
008a29da  02 60                                            str r2, [r0]
008a29dc  20 30                                            adds r0, #0x20
008a29de  00 f0 cf fd                                      bl #0x8a3580
008a29e2  65 62                                            str r5, [r4, #0x24]
008a29e4  a5 62                                            str r5, [r4, #0x28]
008a29e6  e5 62                                            str r5, [r4, #0x2c]
008a29e8  25 63                                            str r5, [r4, #0x30]
008a29ea  65 63                                            str r5, [r4, #0x34]
008a29ec  a5 63                                            str r5, [r4, #0x38]
008a29ee  e5 63                                            str r5, [r4, #0x3c]
008a29f0  20 1c                                            adds r0, r4, #0
008a29f2  70 bd                                            pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
008a29f4  d0 20 0f 00 dc 2a 00 00                          .byte 0xd0, 0x20, 0x0f, 0x00, 0xdc, 0x2a, 0x00, 0x00

; FUNCTION 0x008a29fc, declared_size=64, range_size=64, mode=thumb
; class-group: std::ios_base
; alias: _ZNSt8ios_baseC2Ev
; demangled: std::ios_base::ios_base()
; decoder-mode: thumb
008a29fc  70 b5                                            push {r4, r5, r6, lr}
008a29fe  0d 4b                                            ldr r3, [pc, #0x34]
008a2a00  0d 4a                                            ldr r2, [pc, #0x34]
008a2a02  00 25                                            movs r5, #0
008a2a04  7b 44                                            add r3, pc
008a2a06  9a 58                                            ldr r2, [r3, r2]
008a2a08  04 1c                                            adds r4, r0, #0
008a2a0a  45 60                                            str r5, [r0, #4]
008a2a0c  08 32                                            adds r2, #8
008a2a0e  85 60                                            str r5, [r0, #8]
008a2a10  c5 60                                            str r5, [r0, #0xc]
008a2a12  05 61                                            str r5, [r0, #0x10]
008a2a14  45 61                                            str r5, [r0, #0x14]
008a2a16  85 61                                            str r5, [r0, #0x18]
008a2a18  c5 61                                            str r5, [r0, #0x1c]
008a2a1a  02 60                                            str r2, [r0]
008a2a1c  20 30                                            adds r0, #0x20
008a2a1e  00 f0 af fd                                      bl #0x8a3580
008a2a22  65 62                                            str r5, [r4, #0x24]
008a2a24  a5 62                                            str r5, [r4, #0x28]
008a2a26  e5 62                                            str r5, [r4, #0x2c]
008a2a28  25 63                                            str r5, [r4, #0x30]
008a2a2a  65 63                                            str r5, [r4, #0x34]
008a2a2c  a5 63                                            str r5, [r4, #0x38]
008a2a2e  e5 63                                            str r5, [r4, #0x3c]
008a2a30  20 1c                                            adds r0, r4, #0
008a2a32  70 bd                                            pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
008a2a34  90 20 0f 00 dc 2a 00 00                          .byte 0x90, 0x20, 0x0f, 0x00, 0xdc, 0x2a, 0x00, 0x00

; FUNCTION 0x008a2a3c, declared_size=32, range_size=32, mode=thumb
; class-group: std::ios_base
; alias: _ZNSt8ios_base6xallocEv
; demangled: std::ios_base::xalloc()
; decoder-mode: thumb
008a2a3c  70 b5                                            push {r4, r5, r6, lr}
008a2a3e  06 4c                                            ldr r4, [pc, #0x18]
008a2a40  7c 44                                            add r4, pc
008a2a42  20 1c                                            adds r0, r4, #0
008a2a44  6b f6 b4 e5                                      blx #0x30e5b0
008a2a48  65 68                                            ldr r5, [r4, #4]
008a2a4a  20 1c                                            adds r0, r4, #0
008a2a4c  6b 1c                                            adds r3, r5, #1
008a2a4e  63 60                                            str r3, [r4, #4]
008a2a50  6b f6 a0 e4                                      blx #0x30e394
008a2a54  28 1c                                            adds r0, r5, #0
008a2a56  70 bd                                            pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
008a2a58  ec 23 19 00                                      .byte 0xec, 0x23, 0x19, 0x00

; FUNCTION 0x008a2a5c, declared_size=98, range_size=98, mode=thumb
; class-group: std::ios_base
; alias: _ZNSt8ios_base5imbueERKSt6locale
; demangled: std::ios_base::imbue(std::locale const&)
; decoder-mode: thumb
008a2a5c  f0 b5                                            push {r4, r5, r6, r7, lr}
008a2a5e  47 46                                            mov r7, r8
008a2a60  80 b4                                            push {r7}
008a2a62  0c 1c                                            adds r4, r1, #0
008a2a64  20 34                                            adds r4, #0x20
008a2a66  07 1c                                            adds r7, r0, #0
008a2a68  0d 1c                                            adds r5, r1, #0
008a2a6a  82 b0                                            sub sp, #8
008a2a6c  10 1c                                            adds r0, r2, #0
008a2a6e  21 1c                                            adds r1, r4, #0
008a2a70  90 46                                            mov r8, r2
008a2a72  00 f0 ed ff                                      bl #0x8a3a50
008a2a76  00 28                                            cmp r0, #0
008a2a78  0c d1                                            bne #0x8a2a94
008a2a7a  28 1c                                            adds r0, r5, #0
008a2a7c  01 21                                            movs r1, #1
008a2a7e  ff f7 41 ff                                      bl #0x8a2904
008a2a82  38 1c                                            adds r0, r7, #0
008a2a84  21 1c                                            adds r1, r4, #0
008a2a86  00 f0 6b fd                                      bl #0x8a3560
008a2a8a  02 b0                                            add sp, #8
008a2a8c  38 1c                                            adds r0, r7, #0
008a2a8e  04 bc                                            pop {r2}
008a2a90  90 46                                            mov r8, r2
008a2a92  f0 bd                                            pop {r4, r5, r6, r7, pc}
008a2a94  01 ae                                            add r6, sp, #4
008a2a96  21 1c                                            adds r1, r4, #0
008a2a98  30 1c                                            adds r0, r6, #0
008a2a9a  00 f0 61 fd                                      bl #0x8a3560
008a2a9e  41 46                                            mov r1, r8
008a2aa0  20 1c                                            adds r0, r4, #0
008a2aa2  00 f0 3b fd                                      bl #0x8a351c
008a2aa6  28 1c                                            adds r0, r5, #0
008a2aa8  01 21                                            movs r1, #1
008a2aaa  ff f7 2b ff                                      bl #0x8a2904
008a2aae  38 1c                                            adds r0, r7, #0
008a2ab0  31 1c                                            adds r1, r6, #0
008a2ab2  00 f0 55 fd                                      bl #0x8a3560
008a2ab6  30 1c                                            adds r0, r6, #0
008a2ab8  00 f0 1c fd                                      bl #0x8a34f4
008a2abc  e5 e7                                            b #0x8a2a8a

; FUNCTION 0x008a2b54, declared_size=40, range_size=40, mode=thumb
; class-group: std::ios_base
; alias: _ZNSt8ios_base16_M_throw_failureEv
; demangled: std::ios_base::_M_throw_failure()
; decoder-mode: thumb
008a2b54  10 b5                                            push {r4, lr}
008a2b56  06 4a                                            ldr r2, [pc, #0x18]
008a2b58  06 4b                                            ldr r3, [pc, #0x18]
008a2b5a  07 48                                            ldr r0, [pc, #0x1c]
008a2b5c  7a 44                                            add r2, pc
008a2b5e  d3 58                                            ldr r3, [r2, r3]
008a2b60  78 44                                            add r0, pc
008a2b62  01 21                                            movs r1, #1
008a2b64  a8 33                                            adds r3, #0xa8
008a2b66  0b 22                                            movs r2, #0xb
008a2b68  6b f6 16 e5                                      blx #0x30e598
008a2b6c  10 bd                                            pop {r4, pc}
008a2b6e  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008a2b70  38 1f 0f 00 c0 19 00 00 54 26 07 00              .byte 0x38, 0x1f, 0x0f, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x54, 0x26, 0x07, 0x00

; FUNCTION 0x008a2b7c, declared_size=148, range_size=148, mode=thumb
; class-group: std::ios_base
; alias: _ZNSt8ios_base17register_callbackEPFvNS_5eventERS_iEi
; demangled: std::ios_base::register_callback(void (*)(std::ios_base::event, std::ios_base&, int), int)
; decoder-mode: thumb
008a2b7c  f8 b5                                            push {r3, r4, r5, r6, r7, lr}
008a2b7e  4f 46                                            mov r7, sb
008a2b80  46 46                                            mov r6, r8
008a2b82  c0 b4                                            push {r6, r7}
008a2b84  04 1c                                            adds r4, r0, #0
008a2b86  a5 6a                                            ldr r5, [r4, #0x28]
008a2b88  e3 6a                                            ldr r3, [r4, #0x2c]
008a2b8a  88 46                                            mov r8, r1
008a2b8c  17 1c                                            adds r7, r2, #0
008a2b8e  40 6a                                            ldr r0, [r0, #0x24]
008a2b90  ab 42                                            cmp r3, r5
008a2b92  1a db                                            blt #0x8a2bca
008a2b94  6a 00                                            lsls r2, r5, #1
008a2b96  5e 1c                                            adds r6, r3, #1
008a2b98  96 42                                            cmp r6, r2
008a2b9a  26 d3                                            blo #0x8a2bea
008a2b9c  f2 00                                            lsls r2, r6, #3
008a2b9e  11 1c                                            adds r1, r2, #0
008a2ba0  91 46                                            mov sb, r2
008a2ba2  6c f6 30 e0                                      blx #0x30ec04
008a2ba6  00 28                                            cmp r0, #0
008a2ba8  27 d0                                            beq #0x8a2bfa
008a2baa  ed 00                                            lsls r5, r5, #3
008a2bac  4a 46                                            mov r2, sb
008a2bae  43 19                                            adds r3, r0, r5
008a2bb0  55 1b                                            subs r5, r2, r5
008a2bb2  ed 10                                            asrs r5, r5, #3
008a2bb4  00 22                                            movs r2, #0
008a2bb6  00 2d                                            cmp r5, #0
008a2bb8  05 dd                                            ble #0x8a2bc6
008a2bba  01 3d                                            subs r5, #1
008a2bbc  5a 60                                            str r2, [r3, #4]
008a2bbe  1a 60                                            str r2, [r3]
008a2bc0  08 33                                            adds r3, #8
008a2bc2  00 2d                                            cmp r5, #0
008a2bc4  f9 d1                                            bne #0x8a2bba
008a2bc6  e3 6a                                            ldr r3, [r4, #0x2c]
008a2bc8  02 e0                                            b #0x8a2bd0
008a2bca  00 28                                            cmp r0, #0
008a2bcc  15 d0                                            beq #0x8a2bfa
008a2bce  2e 1c                                            adds r6, r5, #0
008a2bd0  da 00                                            lsls r2, r3, #3
008a2bd2  60 62                                            str r0, [r4, #0x24]
008a2bd4  01 33                                            adds r3, #1
008a2bd6  80 18                                            adds r0, r0, r2
008a2bd8  42 46                                            mov r2, r8
008a2bda  a6 62                                            str r6, [r4, #0x28]
008a2bdc  47 60                                            str r7, [r0, #4]
008a2bde  02 60                                            str r2, [r0]
008a2be0  e3 62                                            str r3, [r4, #0x2c]
008a2be2  0c bc                                            pop {r2, r3}
008a2be4  90 46                                            mov r8, r2
008a2be6  99 46                                            mov sb, r3
008a2be8  f8 bd                                            pop {r3, r4, r5, r6, r7, pc}
008a2bea  16 1c                                            adds r6, r2, #0
008a2bec  f2 00                                            lsls r2, r6, #3
008a2bee  11 1c                                            adds r1, r2, #0
008a2bf0  91 46                                            mov sb, r2
008a2bf2  6c f6 08 e0                                      blx #0x30ec04
008a2bf6  00 28                                            cmp r0, #0
008a2bf8  d7 d1                                            bne #0x8a2baa
008a2bfa  a3 68                                            ldr r3, [r4, #8]
008a2bfc  01 22                                            movs r2, #1
008a2bfe  13 43                                            orrs r3, r2
008a2c00  62 69                                            ldr r2, [r4, #0x14]
008a2c02  a3 60                                            str r3, [r4, #8]
008a2c04  13 42                                            tst r3, r2
008a2c06  ec d0                                            beq #0x8a2be2
008a2c08  20 1c                                            adds r0, r4, #0
008a2c0a  ff f7 a3 ff                                      bl #0x8a2b54
008a2c0e  e8 e7                                            b #0x8a2be2

; FUNCTION 0x008a2c10, declared_size=148, range_size=148, mode=thumb
; class-group: std::ios_base
; alias: _ZNSt8ios_base5pwordEi
; demangled: std::ios_base::pword(int)
; decoder-mode: thumb
008a2c10  f0 b5                                            push {r4, r5, r6, r7, lr}
008a2c12  47 46                                            mov r7, r8
008a2c14  80 b4                                            push {r7}
008a2c16  04 1c                                            adds r4, r0, #0
008a2c18  e6 6b                                            ldr r6, [r4, #0x3c]
008a2c1a  0d 1c                                            adds r5, r1, #0
008a2c1c  80 6b                                            ldr r0, [r0, #0x38]
008a2c1e  b1 42                                            cmp r1, r6
008a2c20  17 db                                            blt #0x8a2c52
008a2c22  73 00                                            lsls r3, r6, #1
008a2c24  4f 1c                                            adds r7, r1, #1
008a2c26  9f 42                                            cmp r7, r3
008a2c28  1d d3                                            blo #0x8a2c66
008a2c2a  ba 00                                            lsls r2, r7, #2
008a2c2c  11 1c                                            adds r1, r2, #0
008a2c2e  90 46                                            mov r8, r2
008a2c30  6b f6 e8 e7                                      blx #0x30ec04
008a2c34  00 28                                            cmp r0, #0
008a2c36  1e d0                                            beq #0x8a2c76
008a2c38  b6 00                                            lsls r6, r6, #2
008a2c3a  42 46                                            mov r2, r8
008a2c3c  83 19                                            adds r3, r0, r6
008a2c3e  96 1b                                            subs r6, r2, r6
008a2c40  b6 10                                            asrs r6, r6, #2
008a2c42  00 2e                                            cmp r6, #0
008a2c44  08 dd                                            ble #0x8a2c58
008a2c46  00 22                                            movs r2, #0
008a2c48  01 3e                                            subs r6, #1
008a2c4a  04 c3                                            stm r3!, {r2}
008a2c4c  00 2e                                            cmp r6, #0
008a2c4e  fb d1                                            bne #0x8a2c48
008a2c50  02 e0                                            b #0x8a2c58
008a2c52  00 28                                            cmp r0, #0
008a2c54  0f d0                                            beq #0x8a2c76
008a2c56  37 1c                                            adds r7, r6, #0
008a2c58  ad 00                                            lsls r5, r5, #2
008a2c5a  a0 63                                            str r0, [r4, #0x38]
008a2c5c  e7 63                                            str r7, [r4, #0x3c]
008a2c5e  40 19                                            adds r0, r0, r5
008a2c60  04 bc                                            pop {r2}
008a2c62  90 46                                            mov r8, r2
008a2c64  f0 bd                                            pop {r4, r5, r6, r7, pc}
008a2c66  1f 1c                                            adds r7, r3, #0
008a2c68  ba 00                                            lsls r2, r7, #2
008a2c6a  11 1c                                            adds r1, r2, #0
008a2c6c  90 46                                            mov r8, r2
008a2c6e  6b f6 ca e7                                      blx #0x30ec04
008a2c72  00 28                                            cmp r0, #0
008a2c74  e0 d1                                            bne #0x8a2c38
008a2c76  a3 68                                            ldr r3, [r4, #8]
008a2c78  01 22                                            movs r2, #1
008a2c7a  13 43                                            orrs r3, r2
008a2c7c  62 69                                            ldr r2, [r4, #0x14]
008a2c7e  a3 60                                            str r3, [r4, #8]
008a2c80  13 42                                            tst r3, r2
008a2c82  03 d1                                            bne #0x8a2c8c
008a2c84  05 48                                            ldr r0, [pc, #0x14]
008a2c86  78 44                                            add r0, pc
008a2c88  08 30                                            adds r0, #8
008a2c8a  e9 e7                                            b #0x8a2c60
008a2c8c  20 1c                                            adds r0, r4, #0
008a2c8e  ff f7 61 ff                                      bl #0x8a2b54
008a2c92  03 48                                            ldr r0, [pc, #0xc]
008a2c94  78 44                                            add r0, pc
008a2c96  08 30                                            adds r0, #8
008a2c98  e2 e7                                            b #0x8a2c60
008a2c9a  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008a2c9c  a6 21 19 00 98 21 19 00                          .byte 0xa6, 0x21, 0x19, 0x00, 0x98, 0x21, 0x19, 0x00

; FUNCTION 0x008a2ca4, declared_size=148, range_size=148, mode=thumb
; class-group: std::ios_base
; alias: _ZNSt8ios_base5iwordEi
; demangled: std::ios_base::iword(int)
; decoder-mode: thumb
008a2ca4  f0 b5                                            push {r4, r5, r6, r7, lr}
008a2ca6  47 46                                            mov r7, r8
008a2ca8  80 b4                                            push {r7}
008a2caa  04 1c                                            adds r4, r0, #0
008a2cac  66 6b                                            ldr r6, [r4, #0x34]
008a2cae  0d 1c                                            adds r5, r1, #0
008a2cb0  00 6b                                            ldr r0, [r0, #0x30]
008a2cb2  b1 42                                            cmp r1, r6
008a2cb4  17 db                                            blt #0x8a2ce6
008a2cb6  73 00                                            lsls r3, r6, #1
008a2cb8  4f 1c                                            adds r7, r1, #1
008a2cba  9f 42                                            cmp r7, r3
008a2cbc  1d d3                                            blo #0x8a2cfa
008a2cbe  ba 00                                            lsls r2, r7, #2
008a2cc0  11 1c                                            adds r1, r2, #0
008a2cc2  90 46                                            mov r8, r2
008a2cc4  6b f6 9e e7                                      blx #0x30ec04
008a2cc8  00 28                                            cmp r0, #0
008a2cca  1e d0                                            beq #0x8a2d0a
008a2ccc  b6 00                                            lsls r6, r6, #2
008a2cce  42 46                                            mov r2, r8
008a2cd0  83 19                                            adds r3, r0, r6
008a2cd2  96 1b                                            subs r6, r2, r6
008a2cd4  b6 10                                            asrs r6, r6, #2
008a2cd6  00 2e                                            cmp r6, #0
008a2cd8  08 dd                                            ble #0x8a2cec
008a2cda  00 22                                            movs r2, #0
008a2cdc  01 3e                                            subs r6, #1
008a2cde  04 c3                                            stm r3!, {r2}
008a2ce0  00 2e                                            cmp r6, #0
008a2ce2  fb d1                                            bne #0x8a2cdc
008a2ce4  02 e0                                            b #0x8a2cec
008a2ce6  00 28                                            cmp r0, #0
008a2ce8  0f d0                                            beq #0x8a2d0a
008a2cea  37 1c                                            adds r7, r6, #0
008a2cec  ad 00                                            lsls r5, r5, #2
008a2cee  20 63                                            str r0, [r4, #0x30]
008a2cf0  67 63                                            str r7, [r4, #0x34]
008a2cf2  40 19                                            adds r0, r0, r5
008a2cf4  04 bc                                            pop {r2}
008a2cf6  90 46                                            mov r8, r2
008a2cf8  f0 bd                                            pop {r4, r5, r6, r7, pc}
008a2cfa  1f 1c                                            adds r7, r3, #0
008a2cfc  ba 00                                            lsls r2, r7, #2
008a2cfe  11 1c                                            adds r1, r2, #0
008a2d00  90 46                                            mov r8, r2
008a2d02  6b f6 80 e7                                      blx #0x30ec04
008a2d06  00 28                                            cmp r0, #0
008a2d08  e0 d1                                            bne #0x8a2ccc
008a2d0a  a3 68                                            ldr r3, [r4, #8]
008a2d0c  01 22                                            movs r2, #1
008a2d0e  13 43                                            orrs r3, r2
008a2d10  62 69                                            ldr r2, [r4, #0x14]
008a2d12  a3 60                                            str r3, [r4, #8]
008a2d14  13 42                                            tst r3, r2
008a2d16  03 d1                                            bne #0x8a2d20
008a2d18  05 48                                            ldr r0, [pc, #0x14]
008a2d1a  78 44                                            add r0, pc
008a2d1c  0c 30                                            adds r0, #0xc
008a2d1e  e9 e7                                            b #0x8a2cf4
008a2d20  20 1c                                            adds r0, r4, #0
008a2d22  ff f7 17 ff                                      bl #0x8a2b54
008a2d26  03 48                                            ldr r0, [pc, #0xc]
008a2d28  78 44                                            add r0, pc
008a2d2a  0c 30                                            adds r0, #0xc
008a2d2c  e2 e7                                            b #0x8a2cf4
008a2d2e  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008a2d30  12 21 19 00 04 21 19 00                          .byte 0x12, 0x21, 0x19, 0x00, 0x04, 0x21, 0x19, 0x00

; FUNCTION 0x008a2d38, declared_size=262, range_size=262, mode=thumb
; class-group: std::ios_base
; alias: _ZNSt8ios_base13_M_copy_stateERKS_
; demangled: std::ios_base::_M_copy_state(std::ios_base const&)
; decoder-mode: thumb
008a2d38  f0 b5                                            push {r4, r5, r6, r7, lr}
008a2d3a  47 46                                            mov r7, r8
008a2d3c  80 b4                                            push {r7}
008a2d3e  4b 68                                            ldr r3, [r1, #4]
008a2d40  0d 1c                                            adds r5, r1, #0
008a2d42  04 1c                                            adds r4, r0, #0
008a2d44  43 60                                            str r3, [r0, #4]
008a2d46  cb 68                                            ldr r3, [r1, #0xc]
008a2d48  c3 60                                            str r3, [r0, #0xc]
008a2d4a  0b 69                                            ldr r3, [r1, #0x10]
008a2d4c  03 61                                            str r3, [r0, #0x10]
008a2d4e  8b 69                                            ldr r3, [r1, #0x18]
008a2d50  83 61                                            str r3, [r0, #0x18]
008a2d52  cb 69                                            ldr r3, [r1, #0x1c]
008a2d54  20 31                                            adds r1, #0x20
008a2d56  c3 61                                            str r3, [r0, #0x1c]
008a2d58  20 30                                            adds r0, #0x20
008a2d5a  00 f0 df fb                                      bl #0x8a351c
008a2d5e  6f 6a                                            ldr r7, [r5, #0x24]
008a2d60  00 2f                                            cmp r7, #0
008a2d62  11 d0                                            beq #0x8a2d88
008a2d64  eb 6a                                            ldr r3, [r5, #0x2c]
008a2d66  db 00                                            lsls r3, r3, #3
008a2d68  18 1c                                            adds r0, r3, #0
008a2d6a  98 46                                            mov r8, r3
008a2d6c  6b f6 c2 e4                                      blx #0x30e6f4
008a2d70  06 1e                                            subs r6, r0, #0
008a2d72  59 d0                                            beq #0x8a2e28
008a2d74  42 46                                            mov r2, r8
008a2d76  00 2a                                            cmp r2, #0
008a2d78  3b d1                                            bne #0x8a2df2
008a2d7a  60 6a                                            ldr r0, [r4, #0x24]
008a2d7c  6b f6 b8 e0                                      blx #0x30def0
008a2d80  66 62                                            str r6, [r4, #0x24]
008a2d82  eb 6a                                            ldr r3, [r5, #0x2c]
008a2d84  e3 62                                            str r3, [r4, #0x2c]
008a2d86  a3 62                                            str r3, [r4, #0x28]
008a2d88  2f 6b                                            ldr r7, [r5, #0x30]
008a2d8a  00 2f                                            cmp r7, #0
008a2d8c  10 d0                                            beq #0x8a2db0
008a2d8e  6b 6b                                            ldr r3, [r5, #0x34]
008a2d90  9b 00                                            lsls r3, r3, #2
008a2d92  18 1c                                            adds r0, r3, #0
008a2d94  98 46                                            mov r8, r3
008a2d96  6b f6 ae e4                                      blx #0x30e6f4
008a2d9a  06 1e                                            subs r6, r0, #0
008a2d9c  39 d0                                            beq #0x8a2e12
008a2d9e  42 46                                            mov r2, r8
008a2da0  00 2a                                            cmp r2, #0
008a2da2  21 d1                                            bne #0x8a2de8
008a2da4  20 6b                                            ldr r0, [r4, #0x30]
008a2da6  6b f6 a4 e0                                      blx #0x30def0
008a2daa  26 63                                            str r6, [r4, #0x30]
008a2dac  6b 6b                                            ldr r3, [r5, #0x34]
008a2dae  63 63                                            str r3, [r4, #0x34]
008a2db0  af 6b                                            ldr r7, [r5, #0x38]
008a2db2  00 2f                                            cmp r7, #0
008a2db4  10 d0                                            beq #0x8a2dd8
008a2db6  eb 6b                                            ldr r3, [r5, #0x3c]
008a2db8  9b 00                                            lsls r3, r3, #2
008a2dba  18 1c                                            adds r0, r3, #0
008a2dbc  98 46                                            mov r8, r3
008a2dbe  6b f6 9a e4                                      blx #0x30e6f4
008a2dc2  06 1e                                            subs r6, r0, #0
008a2dc4  1a d0                                            beq #0x8a2dfc
008a2dc6  42 46                                            mov r2, r8
008a2dc8  00 2a                                            cmp r2, #0
008a2dca  08 d1                                            bne #0x8a2dde
008a2dcc  a0 6b                                            ldr r0, [r4, #0x38]
008a2dce  6b f6 90 e0                                      blx #0x30def0
008a2dd2  a6 63                                            str r6, [r4, #0x38]
008a2dd4  eb 6b                                            ldr r3, [r5, #0x3c]
008a2dd6  e3 63                                            str r3, [r4, #0x3c]
008a2dd8  04 bc                                            pop {r2}
008a2dda  90 46                                            mov r8, r2
008a2ddc  f0 bd                                            pop {r4, r5, r6, r7, pc}
008a2dde  30 1c                                            adds r0, r6, #0
008a2de0  39 1c                                            adds r1, r7, #0
008a2de2  6b f6 aa e0                                      blx #0x30df38
008a2de6  f1 e7                                            b #0x8a2dcc
008a2de8  30 1c                                            adds r0, r6, #0
008a2dea  39 1c                                            adds r1, r7, #0
008a2dec  6b f6 a4 e0                                      blx #0x30df38
008a2df0  d8 e7                                            b #0x8a2da4
008a2df2  30 1c                                            adds r0, r6, #0
008a2df4  39 1c                                            adds r1, r7, #0
008a2df6  6b f6 a0 e0                                      blx #0x30df38
008a2dfa  be e7                                            b #0x8a2d7a
008a2dfc  a3 68                                            ldr r3, [r4, #8]
008a2dfe  01 22                                            movs r2, #1
008a2e00  13 43                                            orrs r3, r2
008a2e02  62 69                                            ldr r2, [r4, #0x14]
008a2e04  a3 60                                            str r3, [r4, #8]
008a2e06  13 42                                            tst r3, r2
008a2e08  e6 d0                                            beq #0x8a2dd8
008a2e0a  20 1c                                            adds r0, r4, #0
008a2e0c  ff f7 a2 fe                                      bl #0x8a2b54
008a2e10  e2 e7                                            b #0x8a2dd8
008a2e12  a3 68                                            ldr r3, [r4, #8]
008a2e14  01 22                                            movs r2, #1
008a2e16  13 43                                            orrs r3, r2
008a2e18  62 69                                            ldr r2, [r4, #0x14]
008a2e1a  a3 60                                            str r3, [r4, #8]
008a2e1c  13 42                                            tst r3, r2
008a2e1e  c7 d0                                            beq #0x8a2db0
008a2e20  20 1c                                            adds r0, r4, #0
008a2e22  ff f7 97 fe                                      bl #0x8a2b54
008a2e26  c3 e7                                            b #0x8a2db0
008a2e28  a3 68                                            ldr r3, [r4, #8]
008a2e2a  01 22                                            movs r2, #1
008a2e2c  13 43                                            orrs r3, r2
008a2e2e  62 69                                            ldr r2, [r4, #0x14]
008a2e30  a3 60                                            str r3, [r4, #8]
008a2e32  13 42                                            tst r3, r2
008a2e34  a8 d0                                            beq #0x8a2d88
008a2e36  20 1c                                            adds r0, r4, #0
008a2e38  ff f7 8c fe                                      bl #0x8a2b54
008a2e3c  a4 e7                                            b #0x8a2d88

; FUNCTION 0x008b880c, declared_size=608, range_size=608, mode=thumb
; class-group: std::ios_base
; alias: _ZNSt8ios_base15_S_uninitializeEv
; demangled: std::ios_base::_S_uninitialize()
; decoder-mode: thumb
008b880c  f8 b5                                            push {r3, r4, r5, r6, r7, lr}
008b880e  4f 46                                            mov r7, sb
008b8810  46 46                                            mov r6, r8
008b8812  c0 b4                                            push {r6, r7}
008b8814  8c 4f                                            ldr r7, [pc, #0x230]
008b8816  8d 4a                                            ldr r2, [pc, #0x234]
008b8818  7f 44                                            add r7, pc
008b881a  bb 58                                            ldr r3, [r7, r2]
008b881c  91 46                                            mov sb, r2
008b881e  98 46                                            mov r8, r3
008b8820  8b 4b                                            ldr r3, [pc, #0x22c]
008b8822  42 46                                            mov r2, r8
008b8824  fe 58                                            ldr r6, [r7, r3]
008b8826  8b 4b                                            ldr r3, [pc, #0x22c]
008b8828  fd 58                                            ldr r5, [r7, r3]
008b882a  8b 4b                                            ldr r3, [pc, #0x22c]
008b882c  fc 58                                            ldr r4, [r7, r3]
008b882e  13 68                                            ldr r3, [r2]
008b8830  00 22                                            movs r2, #0
008b8832  0c 3b                                            subs r3, #0xc
008b8834  1b 68                                            ldr r3, [r3]
008b8836  43 44                                            add r3, r8
008b8838  99 6c                                            ldr r1, [r3, #0x48]
008b883a  5a 61                                            str r2, [r3, #0x14]
008b883c  9a 68                                            ldr r2, [r3, #8]
008b883e  00 29                                            cmp r1, #0
008b8840  00 d1                                            bne #0x8b8844
008b8842  e8 e0                                            b #0x8b8a16
008b8844  9a 60                                            str r2, [r3, #8]
008b8846  33 68                                            ldr r3, [r6]
008b8848  00 22                                            movs r2, #0
008b884a  0c 3b                                            subs r3, #0xc
008b884c  1b 68                                            ldr r3, [r3]
008b884e  f3 18                                            adds r3, r6, r3
008b8850  99 6c                                            ldr r1, [r3, #0x48]
008b8852  5a 61                                            str r2, [r3, #0x14]
008b8854  9a 68                                            ldr r2, [r3, #8]
008b8856  00 29                                            cmp r1, #0
008b8858  00 d1                                            bne #0x8b885c
008b885a  df e0                                            b #0x8b8a1c
008b885c  9a 60                                            str r2, [r3, #8]
008b885e  2b 68                                            ldr r3, [r5]
008b8860  00 22                                            movs r2, #0
008b8862  0c 3b                                            subs r3, #0xc
008b8864  1b 68                                            ldr r3, [r3]
008b8866  eb 18                                            adds r3, r5, r3
008b8868  99 6c                                            ldr r1, [r3, #0x48]
008b886a  5a 61                                            str r2, [r3, #0x14]
008b886c  9a 68                                            ldr r2, [r3, #8]
008b886e  00 29                                            cmp r1, #0
008b8870  00 d1                                            bne #0x8b8874
008b8872  d6 e0                                            b #0x8b8a22
008b8874  9a 60                                            str r2, [r3, #8]
008b8876  23 68                                            ldr r3, [r4]
008b8878  00 22                                            movs r2, #0
008b887a  0c 3b                                            subs r3, #0xc
008b887c  1b 68                                            ldr r3, [r3]
008b887e  e3 18                                            adds r3, r4, r3
008b8880  99 6c                                            ldr r1, [r3, #0x48]
008b8882  5a 61                                            str r2, [r3, #0x14]
008b8884  9a 68                                            ldr r2, [r3, #8]
008b8886  00 29                                            cmp r1, #0
008b8888  00 d1                                            bne #0x8b888c
008b888a  cd e0                                            b #0x8b8a28
008b888c  9a 60                                            str r2, [r3, #8]
008b888e  4a 46                                            mov r2, sb
008b8890  bb 58                                            ldr r3, [r7, r2]
008b8892  00 21                                            movs r1, #0
008b8894  1b 68                                            ldr r3, [r3]
008b8896  0c 3b                                            subs r3, #0xc
008b8898  18 68                                            ldr r0, [r3]
008b889a  40 44                                            add r0, r8
008b889c  ff f7 d4 fc                                      bl #0x8b8248
008b88a0  00 28                                            cmp r0, #0
008b88a2  02 d0                                            beq #0x8b88aa
008b88a4  03 68                                            ldr r3, [r0]
008b88a6  5b 68                                            ldr r3, [r3, #4]
008b88a8  98 47                                            blx r3
008b88aa  33 68                                            ldr r3, [r6]
008b88ac  00 21                                            movs r1, #0
008b88ae  0c 3b                                            subs r3, #0xc
008b88b0  18 68                                            ldr r0, [r3]
008b88b2  30 18                                            adds r0, r6, r0
008b88b4  ff f7 c8 fc                                      bl #0x8b8248
008b88b8  00 28                                            cmp r0, #0
008b88ba  02 d0                                            beq #0x8b88c2
008b88bc  03 68                                            ldr r3, [r0]
008b88be  5b 68                                            ldr r3, [r3, #4]
008b88c0  98 47                                            blx r3
008b88c2  2b 68                                            ldr r3, [r5]
008b88c4  00 21                                            movs r1, #0
008b88c6  0c 3b                                            subs r3, #0xc
008b88c8  18 68                                            ldr r0, [r3]
008b88ca  28 18                                            adds r0, r5, r0
008b88cc  ff f7 bc fc                                      bl #0x8b8248
008b88d0  00 28                                            cmp r0, #0
008b88d2  02 d0                                            beq #0x8b88da
008b88d4  03 68                                            ldr r3, [r0]
008b88d6  5b 68                                            ldr r3, [r3, #4]
008b88d8  98 47                                            blx r3
008b88da  23 68                                            ldr r3, [r4]
008b88dc  00 21                                            movs r1, #0
008b88de  0c 3b                                            subs r3, #0xc
008b88e0  18 68                                            ldr r0, [r3]
008b88e2  20 18                                            adds r0, r4, r0
008b88e4  ff f7 b0 fc                                      bl #0x8b8248
008b88e8  00 28                                            cmp r0, #0
008b88ea  02 d0                                            beq #0x8b88f2
008b88ec  03 68                                            ldr r3, [r0]
008b88ee  5b 68                                            ldr r3, [r3, #4]
008b88f0  98 47                                            blx r3
008b88f2  4a 46                                            mov r2, sb
008b88f4  bb 58                                            ldr r3, [r7, r2]
008b88f6  40 46                                            mov r0, r8
008b88f8  1b 68                                            ldr r3, [r3]
008b88fa  1b 68                                            ldr r3, [r3]
008b88fc  98 47                                            blx r3
008b88fe  33 68                                            ldr r3, [r6]
008b8900  30 1c                                            adds r0, r6, #0
008b8902  1b 68                                            ldr r3, [r3]
008b8904  98 47                                            blx r3
008b8906  2b 68                                            ldr r3, [r5]
008b8908  28 1c                                            adds r0, r5, #0
008b890a  1b 68                                            ldr r3, [r3]
008b890c  98 47                                            blx r3
008b890e  23 68                                            ldr r3, [r4]
008b8910  20 1c                                            adds r0, r4, #0
008b8912  1b 68                                            ldr r3, [r3]
008b8914  98 47                                            blx r3
008b8916  51 4b                                            ldr r3, [pc, #0x144]
008b8918  fa 58                                            ldr r2, [r7, r3]
008b891a  99 46                                            mov sb, r3
008b891c  50 4b                                            ldr r3, [pc, #0x140]
008b891e  90 46                                            mov r8, r2
008b8920  fe 58                                            ldr r6, [r7, r3]
008b8922  50 4b                                            ldr r3, [pc, #0x140]
008b8924  fd 58                                            ldr r5, [r7, r3]
008b8926  50 4b                                            ldr r3, [pc, #0x140]
008b8928  fc 58                                            ldr r4, [r7, r3]
008b892a  13 68                                            ldr r3, [r2]
008b892c  00 22                                            movs r2, #0
008b892e  0c 3b                                            subs r3, #0xc
008b8930  1b 68                                            ldr r3, [r3]
008b8932  43 44                                            add r3, r8
008b8934  99 6c                                            ldr r1, [r3, #0x48]
008b8936  5a 61                                            str r2, [r3, #0x14]
008b8938  9a 68                                            ldr r2, [r3, #8]
008b893a  00 29                                            cmp r1, #0
008b893c  00 d1                                            bne #0x8b8940
008b893e  76 e0                                            b #0x8b8a2e
008b8940  9a 60                                            str r2, [r3, #8]
008b8942  33 68                                            ldr r3, [r6]
008b8944  00 22                                            movs r2, #0
008b8946  0c 3b                                            subs r3, #0xc
008b8948  1b 68                                            ldr r3, [r3]
008b894a  f3 18                                            adds r3, r6, r3
008b894c  99 6c                                            ldr r1, [r3, #0x48]
008b894e  5a 61                                            str r2, [r3, #0x14]
008b8950  9a 68                                            ldr r2, [r3, #8]
008b8952  00 29                                            cmp r1, #0
008b8954  00 d1                                            bne #0x8b8958
008b8956  6d e0                                            b #0x8b8a34
008b8958  9a 60                                            str r2, [r3, #8]
008b895a  2b 68                                            ldr r3, [r5]
008b895c  00 22                                            movs r2, #0
008b895e  0c 3b                                            subs r3, #0xc
008b8960  1b 68                                            ldr r3, [r3]
008b8962  eb 18                                            adds r3, r5, r3
008b8964  99 6c                                            ldr r1, [r3, #0x48]
008b8966  5a 61                                            str r2, [r3, #0x14]
008b8968  9a 68                                            ldr r2, [r3, #8]
008b896a  00 29                                            cmp r1, #0
008b896c  65 d0                                            beq #0x8b8a3a
008b896e  9a 60                                            str r2, [r3, #8]
008b8970  23 68                                            ldr r3, [r4]
008b8972  00 22                                            movs r2, #0
008b8974  0c 3b                                            subs r3, #0xc
008b8976  1b 68                                            ldr r3, [r3]
008b8978  e3 18                                            adds r3, r4, r3
008b897a  99 6c                                            ldr r1, [r3, #0x48]
008b897c  5a 61                                            str r2, [r3, #0x14]
008b897e  9a 68                                            ldr r2, [r3, #8]
008b8980  00 29                                            cmp r1, #0
008b8982  5d d0                                            beq #0x8b8a40
008b8984  9a 60                                            str r2, [r3, #8]
008b8986  4a 46                                            mov r2, sb
008b8988  bb 58                                            ldr r3, [r7, r2]
008b898a  00 21                                            movs r1, #0
008b898c  1b 68                                            ldr r3, [r3]
008b898e  0c 3b                                            subs r3, #0xc
008b8990  18 68                                            ldr r0, [r3]
008b8992  40 44                                            add r0, r8
008b8994  ff f7 6a fc                                      bl #0x8b826c
008b8998  00 28                                            cmp r0, #0
008b899a  02 d0                                            beq #0x8b89a2
008b899c  03 68                                            ldr r3, [r0]
008b899e  5b 68                                            ldr r3, [r3, #4]
008b89a0  98 47                                            blx r3
008b89a2  33 68                                            ldr r3, [r6]
008b89a4  00 21                                            movs r1, #0
008b89a6  0c 3b                                            subs r3, #0xc
008b89a8  18 68                                            ldr r0, [r3]
008b89aa  30 18                                            adds r0, r6, r0
008b89ac  ff f7 5e fc                                      bl #0x8b826c
008b89b0  00 28                                            cmp r0, #0
008b89b2  02 d0                                            beq #0x8b89ba
008b89b4  03 68                                            ldr r3, [r0]
008b89b6  5b 68                                            ldr r3, [r3, #4]
008b89b8  98 47                                            blx r3
008b89ba  2b 68                                            ldr r3, [r5]
008b89bc  00 21                                            movs r1, #0
008b89be  0c 3b                                            subs r3, #0xc
008b89c0  18 68                                            ldr r0, [r3]
008b89c2  28 18                                            adds r0, r5, r0
008b89c4  ff f7 52 fc                                      bl #0x8b826c
008b89c8  00 28                                            cmp r0, #0
008b89ca  02 d0                                            beq #0x8b89d2
008b89cc  03 68                                            ldr r3, [r0]
008b89ce  5b 68                                            ldr r3, [r3, #4]
008b89d0  98 47                                            blx r3
008b89d2  23 68                                            ldr r3, [r4]
008b89d4  00 21                                            movs r1, #0
008b89d6  0c 3b                                            subs r3, #0xc
008b89d8  18 68                                            ldr r0, [r3]
008b89da  20 18                                            adds r0, r4, r0
008b89dc  ff f7 46 fc                                      bl #0x8b826c
008b89e0  00 28                                            cmp r0, #0
008b89e2  02 d0                                            beq #0x8b89ea
008b89e4  03 68                                            ldr r3, [r0]
008b89e6  5b 68                                            ldr r3, [r3, #4]
008b89e8  98 47                                            blx r3
008b89ea  4a 46                                            mov r2, sb
008b89ec  bb 58                                            ldr r3, [r7, r2]
008b89ee  40 46                                            mov r0, r8
008b89f0  1b 68                                            ldr r3, [r3]
008b89f2  1b 68                                            ldr r3, [r3]
008b89f4  98 47                                            blx r3
008b89f6  33 68                                            ldr r3, [r6]
008b89f8  30 1c                                            adds r0, r6, #0
008b89fa  1b 68                                            ldr r3, [r3]
008b89fc  98 47                                            blx r3
008b89fe  2b 68                                            ldr r3, [r5]
008b8a00  28 1c                                            adds r0, r5, #0
008b8a02  1b 68                                            ldr r3, [r3]
008b8a04  98 47                                            blx r3
008b8a06  23 68                                            ldr r3, [r4]
008b8a08  20 1c                                            adds r0, r4, #0
008b8a0a  1b 68                                            ldr r3, [r3]
008b8a0c  98 47                                            blx r3
008b8a0e  0c bc                                            pop {r2, r3}
008b8a10  90 46                                            mov r8, r2
008b8a12  99 46                                            mov sb, r3
008b8a14  f8 bd                                            pop {r3, r4, r5, r6, r7, pc}
008b8a16  01 21                                            movs r1, #1
008b8a18  0a 43                                            orrs r2, r1
008b8a1a  13 e7                                            b #0x8b8844
008b8a1c  01 21                                            movs r1, #1
008b8a1e  0a 43                                            orrs r2, r1
008b8a20  1c e7                                            b #0x8b885c
008b8a22  01 21                                            movs r1, #1
008b8a24  0a 43                                            orrs r2, r1
008b8a26  25 e7                                            b #0x8b8874
008b8a28  01 21                                            movs r1, #1
008b8a2a  0a 43                                            orrs r2, r1
008b8a2c  2e e7                                            b #0x8b888c
008b8a2e  01 21                                            movs r1, #1
008b8a30  0a 43                                            orrs r2, r1
008b8a32  85 e7                                            b #0x8b8940
008b8a34  01 21                                            movs r1, #1
008b8a36  0a 43                                            orrs r2, r1
008b8a38  8e e7                                            b #0x8b8958
008b8a3a  01 21                                            movs r1, #1
008b8a3c  0a 43                                            orrs r2, r1
008b8a3e  96 e7                                            b #0x8b896e
008b8a40  01 21                                            movs r1, #1
008b8a42  0a 43                                            orrs r2, r1
008b8a44  9e e7                                            b #0x8b8984
008b8a46  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008b8a48  7c c2 0d 00 1c 18 00 00 34 34 00 00 1c 13 00 00  .byte 0x7c, 0xc2, 0x0d, 0x00, 0x1c, 0x18, 0x00, 0x00, 0x34, 0x34, 0x00, 0x00, 0x1c, 0x13, 0x00, 0x00
008b8a58  58 15 00 00 2c 2c 00 00 c0 38 00 00 60 07 00 00  .byte 0x58, 0x15, 0x00, 0x00, 0x2c, 0x2c, 0x00, 0x00, 0xc0, 0x38, 0x00, 0x00, 0x60, 0x07, 0x00, 0x00
008b8a68  b8 25 00 00                                      .byte 0xb8, 0x25, 0x00, 0x00

; FUNCTION 0x008b8afc, declared_size=472, range_size=472, mode=thumb
; class-group: std::ios_base
; alias: _ZNSt8ios_base13_S_initializeEv
; demangled: std::ios_base::_S_initialize()
; decoder-mode: thumb
008b8afc  f8 b5                                            push {r3, r4, r5, r6, r7, lr}
008b8afe  5f 46                                            mov r7, fp
008b8b00  56 46                                            mov r6, sl
008b8b02  4d 46                                            mov r5, sb
008b8b04  44 46                                            mov r4, r8
008b8b06  f0 b4                                            push {r4, r5, r6, r7}
008b8b08  65 4c                                            ldr r4, [pc, #0x194]
008b8b0a  66 4d                                            ldr r5, [pc, #0x198]
008b8b0c  7c 44                                            add r4, pc
008b8b0e  63 59                                            ldr r3, [r4, r5]
008b8b10  1b 78                                            ldrb r3, [r3]
008b8b12  00 2b                                            cmp r3, #0
008b8b14  00 d1                                            bne #0x8b8b18
008b8b16  a0 e0                                            b #0x8b8c5a
008b8b18  24 20                                            movs r0, #0x24
008b8b1a  55 f6 b8 e6                                      blx #0x30e88c
008b8b1e  62 4b                                            ldr r3, [pc, #0x188]
008b8b20  06 1c                                            adds r6, r0, #0
008b8b22  b3 46                                            mov fp, r6
008b8b24  e1 58                                            ldr r1, [r4, r3]
008b8b26  98 46                                            mov r8, r3
008b8b28  05 f0 7e fb                                      bl #0x8be228
008b8b2c  5f 4b                                            ldr r3, [pc, #0x17c]
008b8b2e  e3 58                                            ldr r3, [r4, r3]
008b8b30  08 33                                            adds r3, #8
008b8b32  33 60                                            str r3, [r6]
008b8b34  63 59                                            ldr r3, [r4, r5]
008b8b36  1b 78                                            ldrb r3, [r3]
008b8b38  00 2b                                            cmp r3, #0
008b8b3a  00 d1                                            bne #0x8b8b3e
008b8b3c  99 e0                                            b #0x8b8c72
008b8b3e  24 20                                            movs r0, #0x24
008b8b40  55 f6 a4 e6                                      blx #0x30e88c
008b8b44  43 46                                            mov r3, r8
008b8b46  e6 58                                            ldr r6, [r4, r3]
008b8b48  07 1c                                            adds r7, r0, #0
008b8b4a  31 1c                                            adds r1, r6, #0
008b8b4c  54 31                                            adds r1, #0x54
008b8b4e  05 f0 6b fb                                      bl #0x8be228
008b8b52  57 4b                                            ldr r3, [pc, #0x15c]
008b8b54  24 20                                            movs r0, #0x24
008b8b56  a8 36                                            adds r6, #0xa8
008b8b58  e3 58                                            ldr r3, [r4, r3]
008b8b5a  b2 46                                            mov sl, r6
008b8b5c  08 33                                            adds r3, #8
008b8b5e  3b 60                                            str r3, [r7]
008b8b60  99 46                                            mov sb, r3
008b8b62  55 f6 94 e6                                      blx #0x30e88c
008b8b66  31 1c                                            adds r1, r6, #0
008b8b68  05 1c                                            adds r5, r0, #0
008b8b6a  05 f0 5d fb                                      bl #0x8be228
008b8b6e  4b 46                                            mov r3, sb
008b8b70  2b 60                                            str r3, [r5]
008b8b72  24 20                                            movs r0, #0x24
008b8b74  55 f6 8a e6                                      blx #0x30e88c
008b8b78  51 46                                            mov r1, sl
008b8b7a  06 1c                                            adds r6, r0, #0
008b8b7c  05 f0 54 fb                                      bl #0x8be228
008b8b80  4b 46                                            mov r3, sb
008b8b82  33 60                                            str r3, [r6]
008b8b84  a9 46                                            mov sb, r5
008b8b86  b2 46                                            mov sl, r6
008b8b88  3d 1c                                            adds r5, r7, #0
008b8b8a  4a 4b                                            ldr r3, [pc, #0x128]
008b8b8c  59 46                                            mov r1, fp
008b8b8e  e6 58                                            ldr r6, [r4, r3]
008b8b90  30 1c                                            adds r0, r6, #0
008b8b92  ff f7 dd fb                                      bl #0x8b8350
008b8b96  48 4b                                            ldr r3, [pc, #0x120]
008b8b98  29 1c                                            adds r1, r5, #0
008b8b9a  e7 58                                            ldr r7, [r4, r3]
008b8b9c  38 1c                                            adds r0, r7, #0
008b8b9e  ff f7 f9 fb                                      bl #0x8b8394
008b8ba2  46 4b                                            ldr r3, [pc, #0x118]
008b8ba4  49 46                                            mov r1, sb
008b8ba6  e5 58                                            ldr r5, [r4, r3]
008b8ba8  28 1c                                            adds r0, r5, #0
008b8baa  ff f7 f3 fb                                      bl #0x8b8394
008b8bae  44 4b                                            ldr r3, [pc, #0x110]
008b8bb0  51 46                                            mov r1, sl
008b8bb2  e0 58                                            ldr r0, [r4, r3]
008b8bb4  ff f7 ee fb                                      bl #0x8b8394
008b8bb8  33 68                                            ldr r3, [r6]
008b8bba  08 21                                            movs r1, #8
008b8bbc  0c 3b                                            subs r3, #0xc
008b8bbe  1b 68                                            ldr r3, [r3]
008b8bc0  9e 19                                            adds r6, r3, r6
008b8bc2  f7 64                                            str r7, [r6, #0x4c]
008b8bc4  2b 68                                            ldr r3, [r5]
008b8bc6  80 27                                            movs r7, #0x80
008b8bc8  bf 01                                            lsls r7, r7, #6
008b8bca  0c 3b                                            subs r3, #0xc
008b8bcc  1b 68                                            ldr r3, [r3]
008b8bce  ed 18                                            adds r5, r5, r3
008b8bd0  6b 68                                            ldr r3, [r5, #4]
008b8bd2  3b 43                                            orrs r3, r7
008b8bd4  6b 60                                            str r3, [r5, #4]
008b8bd6  43 46                                            mov r3, r8
008b8bd8  e5 58                                            ldr r5, [r4, r3]
008b8bda  28 1c                                            adds r0, r5, #0
008b8bdc  ff f7 72 ff                                      bl #0x8b8ac4
008b8be0  80 46                                            mov r8, r0
008b8be2  28 1c                                            adds r0, r5, #0
008b8be4  10 21                                            movs r1, #0x10
008b8be6  54 30                                            adds r0, #0x54
008b8be8  ff f7 6c ff                                      bl #0x8b8ac4
008b8bec  a8 35                                            adds r5, #0xa8
008b8bee  82 46                                            mov sl, r0
008b8bf0  10 21                                            movs r1, #0x10
008b8bf2  28 1c                                            adds r0, r5, #0
008b8bf4  ff f7 66 ff                                      bl #0x8b8ac4
008b8bf8  10 21                                            movs r1, #0x10
008b8bfa  83 46                                            mov fp, r0
008b8bfc  28 1c                                            adds r0, r5, #0
008b8bfe  ff f7 61 ff                                      bl #0x8b8ac4
008b8c02  30 4b                                            ldr r3, [pc, #0xc0]
008b8c04  81 46                                            mov sb, r0
008b8c06  41 46                                            mov r1, r8
008b8c08  e6 58                                            ldr r6, [r4, r3]
008b8c0a  30 1c                                            adds r0, r6, #0
008b8c0c  ff f7 46 fc                                      bl #0x8b849c
008b8c10  2d 4b                                            ldr r3, [pc, #0xb4]
008b8c12  51 46                                            mov r1, sl
008b8c14  e3 58                                            ldr r3, [r4, r3]
008b8c16  18 1c                                            adds r0, r3, #0
008b8c18  98 46                                            mov r8, r3
008b8c1a  ff f7 5f fc                                      bl #0x8b84dc
008b8c1e  2b 4b                                            ldr r3, [pc, #0xac]
008b8c20  59 46                                            mov r1, fp
008b8c22  e5 58                                            ldr r5, [r4, r3]
008b8c24  28 1c                                            adds r0, r5, #0
008b8c26  ff f7 59 fc                                      bl #0x8b84dc
008b8c2a  29 4b                                            ldr r3, [pc, #0xa4]
008b8c2c  49 46                                            mov r1, sb
008b8c2e  e0 58                                            ldr r0, [r4, r3]
008b8c30  ff f7 54 fc                                      bl #0x8b84dc
008b8c34  33 68                                            ldr r3, [r6]
008b8c36  0c 3b                                            subs r3, #0xc
008b8c38  1b 68                                            ldr r3, [r3]
008b8c3a  9e 19                                            adds r6, r3, r6
008b8c3c  43 46                                            mov r3, r8
008b8c3e  f3 64                                            str r3, [r6, #0x4c]
008b8c40  2b 68                                            ldr r3, [r5]
008b8c42  0c 3b                                            subs r3, #0xc
008b8c44  1b 68                                            ldr r3, [r3]
008b8c46  ed 18                                            adds r5, r5, r3
008b8c48  6b 68                                            ldr r3, [r5, #4]
008b8c4a  1f 43                                            orrs r7, r3
008b8c4c  6f 60                                            str r7, [r5, #4]
008b8c4e  3c bc                                            pop {r2, r3, r4, r5}
008b8c50  90 46                                            mov r8, r2
008b8c52  99 46                                            mov sb, r3
008b8c54  a2 46                                            mov sl, r4
008b8c56  ab 46                                            mov fp, r5
008b8c58  f8 bd                                            pop {r3, r4, r5, r6, r7, pc}
008b8c5a  13 4b                                            ldr r3, [pc, #0x4c]
008b8c5c  08 21                                            movs r1, #8
008b8c5e  e0 58                                            ldr r0, [r4, r3]
008b8c60  98 46                                            mov r8, r3
008b8c62  ff f7 d5 fa                                      bl #0x8b8210
008b8c66  63 59                                            ldr r3, [r4, r5]
008b8c68  83 46                                            mov fp, r0
008b8c6a  1b 78                                            ldrb r3, [r3]
008b8c6c  00 2b                                            cmp r3, #0
008b8c6e  00 d0                                            beq #0x8b8c72
008b8c70  65 e7                                            b #0x8b8b3e
008b8c72  43 46                                            mov r3, r8
008b8c74  e5 58                                            ldr r5, [r4, r3]
008b8c76  10 21                                            movs r1, #0x10
008b8c78  28 1c                                            adds r0, r5, #0
008b8c7a  54 30                                            adds r0, #0x54
008b8c7c  ff f7 c8 fa                                      bl #0x8b8210
008b8c80  a8 35                                            adds r5, #0xa8
008b8c82  07 1c                                            adds r7, r0, #0
008b8c84  10 21                                            movs r1, #0x10
008b8c86  28 1c                                            adds r0, r5, #0
008b8c88  ff f7 c2 fa                                      bl #0x8b8210
008b8c8c  10 21                                            movs r1, #0x10
008b8c8e  06 1c                                            adds r6, r0, #0
008b8c90  28 1c                                            adds r0, r5, #0
008b8c92  ff f7 bd fa                                      bl #0x8b8210
008b8c96  b1 46                                            mov sb, r6
008b8c98  82 46                                            mov sl, r0
008b8c9a  3d 1c                                            adds r5, r7, #0
008b8c9c  75 e7                                            b #0x8b8b8a
008b8c9e  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008b8ca0  88 bf 0d 00 40 08 00 00 c0 19 00 00 e0 4b 00 00  .byte 0x88, 0xbf, 0x0d, 0x00, 0x40, 0x08, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0xe0, 0x4b, 0x00, 0x00
008b8cb0  f0 44 00 00 1c 18 00 00 34 34 00 00 1c 13 00 00  .byte 0xf0, 0x44, 0x00, 0x00, 0x1c, 0x18, 0x00, 0x00, 0x34, 0x34, 0x00, 0x00, 0x1c, 0x13, 0x00, 0x00
008b8cc0  58 15 00 00 2c 2c 00 00 c0 38 00 00 60 07 00 00  .byte 0x58, 0x15, 0x00, 0x00, 0x2c, 0x2c, 0x00, 0x00, 0xc0, 0x38, 0x00, 0x00, 0x60, 0x07, 0x00, 0x00
008b8cd0  b8 25 00 00                                      .byte 0xb8, 0x25, 0x00, 0x00

; FUNCTION 0x008b8d34, declared_size=488, range_size=488, mode=thumb
; class-group: std::ios_base
; alias: _ZNSt8ios_base15sync_with_stdioEb
; demangled: std::ios_base::sync_with_stdio(bool)
; decoder-mode: thumb
008b8d34  f0 b5                                            push {r4, r5, r6, r7, lr}
008b8d36  5f 46                                            mov r7, fp
008b8d38  56 46                                            mov r6, sl
008b8d3a  4d 46                                            mov r5, sb
008b8d3c  44 46                                            mov r4, r8
008b8d3e  f0 b4                                            push {r4, r5, r6, r7}
008b8d40  6c 4c                                            ldr r4, [pc, #0x1b0]
008b8d42  6d 4a                                            ldr r2, [pc, #0x1b4]
008b8d44  05 1c                                            adds r5, r0, #0
008b8d46  7c 44                                            add r4, pc
008b8d48  a3 58                                            ldr r3, [r4, r2]
008b8d4a  92 46                                            mov sl, r2
008b8d4c  83 b0                                            sub sp, #0xc
008b8d4e  1a 78                                            ldrb r2, [r3]
008b8d50  aa 42                                            cmp r2, r5
008b8d52  00 d1                                            bne #0x8b8d56
008b8d54  84 e0                                            b #0x8b8e60
008b8d56  69 4a                                            ldr r2, [pc, #0x1a4]
008b8d58  a2 58                                            ldr r2, [r4, r2]
008b8d5a  12 68                                            ldr r2, [r2]
008b8d5c  00 2a                                            cmp r2, #0
008b8d5e  00 d1                                            bne #0x8b8d62
008b8d60  7d e0                                            b #0x8b8e5e
008b8d62  00 28                                            cmp r0, #0
008b8d64  00 d1                                            bne #0x8b8d68
008b8d66  a4 e0                                            b #0x8b8eb2
008b8d68  24 20                                            movs r0, #0x24
008b8d6a  55 f6 90 e5                                      blx #0x30e88c
008b8d6e  64 4b                                            ldr r3, [pc, #0x190]
008b8d70  81 46                                            mov sb, r0
008b8d72  e7 58                                            ldr r7, [r4, r3]
008b8d74  39 1c                                            adds r1, r7, #0
008b8d76  05 f0 57 fa                                      bl #0x8be228
008b8d7a  62 4b                                            ldr r3, [pc, #0x188]
008b8d7c  4a 46                                            mov r2, sb
008b8d7e  24 20                                            movs r0, #0x24
008b8d80  e3 58                                            ldr r3, [r4, r3]
008b8d82  08 33                                            adds r3, #8
008b8d84  13 60                                            str r3, [r2]
008b8d86  55 f6 82 e5                                      blx #0x30e88c
008b8d8a  39 1c                                            adds r1, r7, #0
008b8d8c  54 31                                            adds r1, #0x54
008b8d8e  80 46                                            mov r8, r0
008b8d90  05 f0 4a fa                                      bl #0x8be228
008b8d94  5c 4b                                            ldr r3, [pc, #0x170]
008b8d96  42 46                                            mov r2, r8
008b8d98  24 20                                            movs r0, #0x24
008b8d9a  e3 58                                            ldr r3, [r4, r3]
008b8d9c  a8 37                                            adds r7, #0xa8
008b8d9e  08 33                                            adds r3, #8
008b8da0  13 60                                            str r3, [r2]
008b8da2  9b 46                                            mov fp, r3
008b8da4  55 f6 72 e5                                      blx #0x30e88c
008b8da8  39 1c                                            adds r1, r7, #0
008b8daa  06 1c                                            adds r6, r0, #0
008b8dac  01 97                                            str r7, [sp, #4]
008b8dae  05 f0 3b fa                                      bl #0x8be228
008b8db2  5b 46                                            mov r3, fp
008b8db4  33 60                                            str r3, [r6]
008b8db6  24 20                                            movs r0, #0x24
008b8db8  55 f6 68 e5                                      blx #0x30e88c
008b8dbc  01 99                                            ldr r1, [sp, #4]
008b8dbe  07 1c                                            adds r7, r0, #0
008b8dc0  05 f0 32 fa                                      bl #0x8be228
008b8dc4  5a 46                                            mov r2, fp
008b8dc6  43 46                                            mov r3, r8
008b8dc8  3a 60                                            str r2, [r7]
008b8dca  b3 46                                            mov fp, r6
008b8dcc  01 93                                            str r3, [sp, #4]
008b8dce  4e 46                                            mov r6, sb
008b8dd0  00 2e                                            cmp r6, #0
008b8dd2  4d d0                                            beq #0x8b8e70
008b8dd4  01 9a                                            ldr r2, [sp, #4]
008b8dd6  00 2a                                            cmp r2, #0
008b8dd8  90 46                                            mov r8, r2
008b8dda  4b d0                                            beq #0x8b8e74
008b8ddc  5b 46                                            mov r3, fp
008b8dde  d9 46                                            mov sb, fp
008b8de0  00 2b                                            cmp r3, #0
008b8de2  48 d0                                            beq #0x8b8e76
008b8de4  00 2f                                            cmp r7, #0
008b8de6  00 d1                                            bne #0x8b8dea
008b8de8  7f e0                                            b #0x8b8eea
008b8dea  48 4b                                            ldr r3, [pc, #0x120]
008b8dec  31 1c                                            adds r1, r6, #0
008b8dee  e3 58                                            ldr r3, [r4, r3]
008b8df0  1a 68                                            ldr r2, [r3]
008b8df2  0c 3a                                            subs r2, #0xc
008b8df4  10 68                                            ldr r0, [r2]
008b8df6  c0 18                                            adds r0, r0, r3
008b8df8  ff f7 26 fa                                      bl #0x8b8248
008b8dfc  00 28                                            cmp r0, #0
008b8dfe  02 d0                                            beq #0x8b8e06
008b8e00  03 68                                            ldr r3, [r0]
008b8e02  5b 68                                            ldr r3, [r3, #4]
008b8e04  98 47                                            blx r3
008b8e06  42 4b                                            ldr r3, [pc, #0x108]
008b8e08  01 99                                            ldr r1, [sp, #4]
008b8e0a  e3 58                                            ldr r3, [r4, r3]
008b8e0c  1a 68                                            ldr r2, [r3]
008b8e0e  0c 3a                                            subs r2, #0xc
008b8e10  10 68                                            ldr r0, [r2]
008b8e12  18 18                                            adds r0, r3, r0
008b8e14  ff f7 18 fa                                      bl #0x8b8248
008b8e18  00 28                                            cmp r0, #0
008b8e1a  02 d0                                            beq #0x8b8e22
008b8e1c  03 68                                            ldr r3, [r0]
008b8e1e  5b 68                                            ldr r3, [r3, #4]
008b8e20  98 47                                            blx r3
008b8e22  3c 4b                                            ldr r3, [pc, #0xf0]
008b8e24  59 46                                            mov r1, fp
008b8e26  e3 58                                            ldr r3, [r4, r3]
008b8e28  1a 68                                            ldr r2, [r3]
008b8e2a  0c 3a                                            subs r2, #0xc
008b8e2c  10 68                                            ldr r0, [r2]
008b8e2e  18 18                                            adds r0, r3, r0
008b8e30  ff f7 0a fa                                      bl #0x8b8248
008b8e34  00 28                                            cmp r0, #0
008b8e36  02 d0                                            beq #0x8b8e3e
008b8e38  03 68                                            ldr r3, [r0]
008b8e3a  5b 68                                            ldr r3, [r3, #4]
008b8e3c  98 47                                            blx r3
008b8e3e  36 4b                                            ldr r3, [pc, #0xd8]
008b8e40  39 1c                                            adds r1, r7, #0
008b8e42  e3 58                                            ldr r3, [r4, r3]
008b8e44  1a 68                                            ldr r2, [r3]
008b8e46  0c 3a                                            subs r2, #0xc
008b8e48  10 68                                            ldr r0, [r2]
008b8e4a  18 18                                            adds r0, r3, r0
008b8e4c  ff f7 fc f9                                      bl #0x8b8248
008b8e50  00 28                                            cmp r0, #0
008b8e52  02 d0                                            beq #0x8b8e5a
008b8e54  03 68                                            ldr r3, [r0]
008b8e56  5b 68                                            ldr r3, [r3, #4]
008b8e58  98 47                                            blx r3
008b8e5a  52 46                                            mov r2, sl
008b8e5c  a3 58                                            ldr r3, [r4, r2]
008b8e5e  1d 70                                            strb r5, [r3]
008b8e60  03 b0                                            add sp, #0xc
008b8e62  28 1c                                            adds r0, r5, #0
008b8e64  3c bc                                            pop {r2, r3, r4, r5}
008b8e66  90 46                                            mov r8, r2
008b8e68  99 46                                            mov sb, r3
008b8e6a  a2 46                                            mov sl, r4
008b8e6c  ab 46                                            mov fp, r5
008b8e6e  f0 bd                                            pop {r4, r5, r6, r7, pc}
008b8e70  01 9b                                            ldr r3, [sp, #4]
008b8e72  98 46                                            mov r8, r3
008b8e74  d9 46                                            mov sb, fp
008b8e76  52 46                                            mov r2, sl
008b8e78  a3 58                                            ldr r3, [r4, r2]
008b8e7a  1d 78                                            ldrb r5, [r3]
008b8e7c  00 2f                                            cmp r7, #0
008b8e7e  03 d0                                            beq #0x8b8e88
008b8e80  3b 68                                            ldr r3, [r7]
008b8e82  38 1c                                            adds r0, r7, #0
008b8e84  5b 68                                            ldr r3, [r3, #4]
008b8e86  98 47                                            blx r3
008b8e88  4b 46                                            mov r3, sb
008b8e8a  00 2b                                            cmp r3, #0
008b8e8c  03 d0                                            beq #0x8b8e96
008b8e8e  1b 68                                            ldr r3, [r3]
008b8e90  48 46                                            mov r0, sb
008b8e92  5b 68                                            ldr r3, [r3, #4]
008b8e94  98 47                                            blx r3
008b8e96  42 46                                            mov r2, r8
008b8e98  00 2a                                            cmp r2, #0
008b8e9a  03 d0                                            beq #0x8b8ea4
008b8e9c  13 68                                            ldr r3, [r2]
008b8e9e  40 46                                            mov r0, r8
008b8ea0  5b 68                                            ldr r3, [r3, #4]
008b8ea2  98 47                                            blx r3
008b8ea4  00 2e                                            cmp r6, #0
008b8ea6  db d0                                            beq #0x8b8e60
008b8ea8  33 68                                            ldr r3, [r6]
008b8eaa  30 1c                                            adds r0, r6, #0
008b8eac  5b 68                                            ldr r3, [r3, #4]
008b8eae  98 47                                            blx r3
008b8eb0  d6 e7                                            b #0x8b8e60
008b8eb2  13 4b                                            ldr r3, [pc, #0x4c]
008b8eb4  08 21                                            movs r1, #8
008b8eb6  e6 58                                            ldr r6, [r4, r3]
008b8eb8  30 1c                                            adds r0, r6, #0
008b8eba  ff f7 a9 f9                                      bl #0x8b8210
008b8ebe  81 46                                            mov sb, r0
008b8ec0  30 1c                                            adds r0, r6, #0
008b8ec2  10 21                                            movs r1, #0x10
008b8ec4  54 30                                            adds r0, #0x54
008b8ec6  ff f7 a3 f9                                      bl #0x8b8210
008b8eca  a8 36                                            adds r6, #0xa8
008b8ecc  80 46                                            mov r8, r0
008b8ece  10 21                                            movs r1, #0x10
008b8ed0  30 1c                                            adds r0, r6, #0
008b8ed2  ff f7 9d f9                                      bl #0x8b8210
008b8ed6  10 21                                            movs r1, #0x10
008b8ed8  83 46                                            mov fp, r0
008b8eda  30 1c                                            adds r0, r6, #0
008b8edc  ff f7 98 f9                                      bl #0x8b8210
008b8ee0  42 46                                            mov r2, r8
008b8ee2  07 1c                                            adds r7, r0, #0
008b8ee4  01 92                                            str r2, [sp, #4]
008b8ee6  4e 46                                            mov r6, sb
008b8ee8  72 e7                                            b #0x8b8dd0
008b8eea  52 46                                            mov r2, sl
008b8eec  a3 58                                            ldr r3, [r4, r2]
008b8eee  1d 78                                            ldrb r5, [r3]
008b8ef0  ca e7                                            b #0x8b8e88
008b8ef2  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008b8ef4  4e bd 0d 00 40 08 00 00 20 0f 00 00 c0 19 00 00  .byte 0x4e, 0xbd, 0x0d, 0x00, 0x40, 0x08, 0x00, 0x00, 0x20, 0x0f, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00
008b8f04  e0 4b 00 00 f0 44 00 00 1c 18 00 00 34 34 00 00  .byte 0xe0, 0x4b, 0x00, 0x00, 0xf0, 0x44, 0x00, 0x00, 0x1c, 0x18, 0x00, 0x00, 0x34, 0x34, 0x00, 0x00
008b8f14  1c 13 00 00 58 15 00 00                          .byte 0x1c, 0x13, 0x00, 0x00, 0x58, 0x15, 0x00, 0x00

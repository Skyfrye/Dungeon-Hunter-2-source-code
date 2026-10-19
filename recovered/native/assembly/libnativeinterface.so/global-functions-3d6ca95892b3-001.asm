; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00000920, declared_size=4, range_size=4, mode=thumb
; class-group: global-functions
; alias: Java_com_samsung_zirconia_NativeInterface_checkLicenseFile2
; demangled: Java_com_samsung_zirconia_NativeInterface_checkLicenseFile2
; decoder-mode: thumb
00000920  01 20                                            movs r0, #1
00000922  70 47                                            bx lr

; FUNCTION 0x000009d0, declared_size=296, range_size=296, mode=thumb
; class-group: global-functions
; alias: Java_com_samsung_zirconia_NativeInterface_storeLicenseKey
; demangled: Java_com_samsung_zirconia_NativeInterface_storeLicenseKey
; decoder-mode: thumb
000009d0  f0 b5                                            push {r4, r5, r6, r7, lr}
000009d2  5f 46                                            mov r7, fp
000009d4  56 46                                            mov r6, sl
000009d6  4d 46                                            mov r5, sb
000009d8  44 46                                            mov r4, r8
000009da  f0 b4                                            push {r4, r5, r6, r7}
000009dc  43 4d                                            ldr r5, [pc, #0x10c]
000009de  99 46                                            mov sb, r3
000009e0  43 4b                                            ldr r3, [pc, #0x10c]
000009e2  8b b0                                            sub sp, #0x2c
000009e4  7d 44                                            add r5, pc
000009e6  00 93                                            str r3, [sp]
000009e8  eb 58                                            ldr r3, [r5, r3]
000009ea  03 92                                            str r2, [sp, #0xc]
000009ec  14 9a                                            ldr r2, [sp, #0x50]
000009ee  1b 68                                            ldr r3, [r3]
000009f0  a9 26                                            movs r6, #0xa9
000009f2  01 92                                            str r2, [sp, #4]
000009f4  09 93                                            str r3, [sp, #0x24]
000009f6  03 68                                            ldr r3, [r0]
000009f8  b6 00                                            lsls r6, r6, #2
000009fa  03 99                                            ldr r1, [sp, #0xc]
000009fc  9b 59                                            ldr r3, [r3, r6]
000009fe  00 22                                            movs r2, #0
00000a00  04 1c                                            adds r4, r0, #0
00000a02  98 47                                            blx r3
00000a04  22 68                                            ldr r2, [r4]
00000a06  ab 23                                            movs r3, #0xab
00000a08  9b 00                                            lsls r3, r3, #2
00000a0a  d3 58                                            ldr r3, [r2, r3]
00000a0c  80 46                                            mov r8, r0
00000a0e  49 46                                            mov r1, sb
00000a10  20 1c                                            adds r0, r4, #0
00000a12  98 47                                            blx r3
00000a14  22 68                                            ldr r2, [r4]
00000a16  b8 23                                            movs r3, #0xb8
00000a18  9b 00                                            lsls r3, r3, #2
00000a1a  d3 58                                            ldr r3, [r2, r3]
00000a1c  49 46                                            mov r1, sb
00000a1e  00 22                                            movs r2, #0
00000a20  20 1c                                            adds r0, r4, #0
00000a22  98 47                                            blx r3
00000a24  23 68                                            ldr r3, [r4]
00000a26  01 99                                            ldr r1, [sp, #4]
00000a28  00 22                                            movs r2, #0
00000a2a  9b 59                                            ldr r3, [r3, r6]
00000a2c  82 46                                            mov sl, r0
00000a2e  20 1c                                            adds r0, r4, #0
00000a30  98 47                                            blx r3
00000a32  00 23                                            movs r3, #0
00000a34  04 aa                                            add r2, sp, #0x10
00000a36  04 93                                            str r3, [sp, #0x10]
00000a38  05 93                                            str r3, [sp, #0x14]
00000a3a  06 93                                            str r3, [sp, #0x18]
00000a3c  07 93                                            str r3, [sp, #0x1c]
00000a3e  08 93                                            str r3, [sp, #0x20]
00000a40  93 46                                            mov fp, r2
00000a42  06 1c                                            adds r6, r0, #0
00000a44  ff f7 ee ee                                      blx #0x824
00000a48  59 46                                            mov r1, fp
00000a4a  02 1c                                            adds r2, r0, #0
00000a4c  30 1c                                            adds r0, r6, #0
00000a4e  ff f7 69 ff                                      bl #0x924
00000a52  28 49                                            ldr r1, [pc, #0xa0]
00000a54  40 46                                            mov r0, r8
00000a56  79 44                                            add r1, pc
00000a58  ff f7 14 ef                                      blx #0x884
00000a5c  00 23                                            movs r3, #0
00000a5e  07 1c                                            adds r7, r0, #0
00000a60  02 93                                            str r3, [sp, #8]
00000a62  00 28                                            cmp r0, #0
00000a64  10 d0                                            beq #0xa88
00000a66  01 21                                            movs r1, #1
00000a68  14 22                                            movs r2, #0x14
00000a6a  3b 1c                                            adds r3, r7, #0
00000a6c  50 46                                            mov r0, sl
00000a6e  ff f7 28 ef                                      blx #0x8c0
00000a72  14 22                                            movs r2, #0x14
00000a74  01 21                                            movs r1, #1
00000a76  3b 1c                                            adds r3, r7, #0
00000a78  58 46                                            mov r0, fp
00000a7a  ff f7 22 ef                                      blx #0x8c0
00000a7e  38 1c                                            adds r0, r7, #0
00000a80  ff f7 0c ef                                      blx #0x89c
00000a84  01 22                                            movs r2, #1
00000a86  02 92                                            str r2, [sp, #8]
00000a88  43 46                                            mov r3, r8
00000a8a  00 2b                                            cmp r3, #0
00000a8c  07 d0                                            beq #0xa9e
00000a8e  22 68                                            ldr r2, [r4]
00000a90  aa 23                                            movs r3, #0xaa
00000a92  9b 00                                            lsls r3, r3, #2
00000a94  d3 58                                            ldr r3, [r2, r3]
00000a96  20 1c                                            adds r0, r4, #0
00000a98  03 99                                            ldr r1, [sp, #0xc]
00000a9a  42 46                                            mov r2, r8
00000a9c  98 47                                            blx r3
00000a9e  52 46                                            mov r2, sl
00000aa0  00 2a                                            cmp r2, #0
00000aa2  08 d0                                            beq #0xab6
00000aa4  22 68                                            ldr r2, [r4]
00000aa6  c0 23                                            movs r3, #0xc0
00000aa8  9b 00                                            lsls r3, r3, #2
00000aaa  d7 58                                            ldr r7, [r2, r3]
00000aac  20 1c                                            adds r0, r4, #0
00000aae  49 46                                            mov r1, sb
00000ab0  52 46                                            mov r2, sl
00000ab2  02 23                                            movs r3, #2
00000ab4  b8 47                                            blx r7
00000ab6  00 2e                                            cmp r6, #0
00000ab8  07 d0                                            beq #0xaca
00000aba  22 68                                            ldr r2, [r4]
00000abc  aa 23                                            movs r3, #0xaa
00000abe  9b 00                                            lsls r3, r3, #2
00000ac0  d3 58                                            ldr r3, [r2, r3]
00000ac2  20 1c                                            adds r0, r4, #0
00000ac4  01 99                                            ldr r1, [sp, #4]
00000ac6  32 1c                                            adds r2, r6, #0
00000ac8  98 47                                            blx r3
00000aca  00 9a                                            ldr r2, [sp]
00000acc  02 98                                            ldr r0, [sp, #8]
00000ace  ab 58                                            ldr r3, [r5, r2]
00000ad0  09 9a                                            ldr r2, [sp, #0x24]
00000ad2  1b 68                                            ldr r3, [r3]
00000ad4  9a 42                                            cmp r2, r3
00000ad6  06 d1                                            bne #0xae6
00000ad8  0b b0                                            add sp, #0x2c
00000ada  3c bc                                            pop {r2, r3, r4, r5}
00000adc  90 46                                            mov r8, r2
00000ade  99 46                                            mov sb, r3
00000ae0  a2 46                                            mov sl, r4
00000ae2  ab 46                                            mov fp, r5
00000ae4  f0 bd                                            pop {r4, r5, r6, r7, pc}
00000ae6  ff f7 b0 ee                                      blx #0x848
00000aea  c0 46                                            mov r8, r8
00000aec  50 2e                                            cmp r6, #0x50
00000aee  00 00                                            movs r0, r0
00000af0  4c 00                                            lsls r4, r1, #1
00000af2  00 00                                            movs r0, r0
00000af4  0a 08                                            lsrs r2, r1, #0x20
00000af6  00 00                                            movs r0, r0

; FUNCTION 0x00000c60, declared_size=190, range_size=190, mode=thumb
; class-group: global-functions
; alias: Java_com_samsung_zirconia_NativeInterface_doPassphraseTest
; demangled: Java_com_samsung_zirconia_NativeInterface_doPassphraseTest
; decoder-mode: thumb
00000c60  f0 b5                                            push {r4, r5, r6, r7, lr}
00000c62  5f 46                                            mov r7, fp
00000c64  56 46                                            mov r6, sl
00000c66  4d 46                                            mov r5, sb
00000c68  44 46                                            mov r4, r8
00000c6a  f0 b4                                            push {r4, r5, r6, r7}
00000c6c  9a 46                                            mov sl, r3
00000c6e  03 68                                            ldr r3, [r0]
00000c70  a9 25                                            movs r5, #0xa9
00000c72  ad 00                                            lsls r5, r5, #2
00000c74  83 b0                                            sub sp, #0xc
00000c76  5b 59                                            ldr r3, [r3, r5]
00000c78  11 1c                                            adds r1, r2, #0
00000c7a  93 46                                            mov fp, r2
00000c7c  00 22                                            movs r2, #0
00000c7e  04 1c                                            adds r4, r0, #0
00000c80  98 47                                            blx r3
00000c82  23 68                                            ldr r3, [r4]
00000c84  80 46                                            mov r8, r0
00000c86  51 46                                            mov r1, sl
00000c88  5b 59                                            ldr r3, [r3, r5]
00000c8a  00 22                                            movs r2, #0
00000c8c  20 1c                                            adds r0, r4, #0
00000c8e  98 47                                            blx r3
00000c90  06 1c                                            adds r6, r0, #0
00000c92  00 23                                            movs r3, #0
00000c94  31 1c                                            adds r1, r6, #0
00000c96  01 aa                                            add r2, sp, #4
00000c98  40 46                                            mov r0, r8
00000c9a  01 93                                            str r3, [sp, #4]
00000c9c  ff f7 54 ff                                      bl #0xb48
00000ca0  07 1c                                            adds r7, r0, #0
00000ca2  01 37                                            adds r7, #1
00000ca4  81 46                                            mov sb, r0
00000ca6  38 1c                                            adds r0, r7, #0
00000ca8  ff f7 c8 ed                                      blx #0x83c
00000cac  00 21                                            movs r1, #0
00000cae  05 1c                                            adds r5, r0, #0
00000cb0  3a 1c                                            adds r2, r7, #0
00000cb2  ff f7 ee ed                                      blx #0x890
00000cb6  4a 46                                            mov r2, sb
00000cb8  01 99                                            ldr r1, [sp, #4]
00000cba  28 1c                                            adds r0, r5, #0
00000cbc  ff f7 d0 ed                                      blx #0x860
00000cc0  22 68                                            ldr r2, [r4]
00000cc2  a7 23                                            movs r3, #0xa7
00000cc4  9b 00                                            lsls r3, r3, #2
00000cc6  d3 58                                            ldr r3, [r2, r3]
00000cc8  20 1c                                            adds r0, r4, #0
00000cca  29 1c                                            adds r1, r5, #0
00000ccc  98 47                                            blx r3
00000cce  81 46                                            mov sb, r0
00000cd0  00 2d                                            cmp r5, #0
00000cd2  07 d0                                            beq #0xce4
00000cd4  28 1c                                            adds r0, r5, #0
00000cd6  00 21                                            movs r1, #0
00000cd8  3a 1c                                            adds r2, r7, #0
00000cda  ff f7 da ed                                      blx #0x890
00000cde  28 1c                                            adds r0, r5, #0
00000ce0  ff f7 fa ed                                      blx #0x8d8
00000ce4  43 46                                            mov r3, r8
00000ce6  00 2b                                            cmp r3, #0
00000ce8  07 d0                                            beq #0xcfa
00000cea  22 68                                            ldr r2, [r4]
00000cec  aa 23                                            movs r3, #0xaa
00000cee  9b 00                                            lsls r3, r3, #2
00000cf0  d3 58                                            ldr r3, [r2, r3]
00000cf2  20 1c                                            adds r0, r4, #0
00000cf4  59 46                                            mov r1, fp
00000cf6  42 46                                            mov r2, r8
00000cf8  98 47                                            blx r3
00000cfa  00 2e                                            cmp r6, #0
00000cfc  07 d0                                            beq #0xd0e
00000cfe  22 68                                            ldr r2, [r4]
00000d00  aa 23                                            movs r3, #0xaa
00000d02  9b 00                                            lsls r3, r3, #2
00000d04  d3 58                                            ldr r3, [r2, r3]
00000d06  20 1c                                            adds r0, r4, #0
00000d08  51 46                                            mov r1, sl
00000d0a  32 1c                                            adds r2, r6, #0
00000d0c  98 47                                            blx r3
00000d0e  03 b0                                            add sp, #0xc
00000d10  48 46                                            mov r0, sb
00000d12  3c bc                                            pop {r2, r3, r4, r5}
00000d14  90 46                                            mov r8, r2
00000d16  99 46                                            mov sb, r3
00000d18  a2 46                                            mov sl, r4
00000d1a  ab 46                                            mov fp, r5
00000d1c  f0 bd                                            pop {r4, r5, r6, r7, pc}

; FUNCTION 0x00000d20, declared_size=268, range_size=268, mode=thumb
; class-group: global-functions
; alias: CheckLicenseFile
; demangled: CheckLicenseFile
; decoder-mode: thumb
00000d20  f0 b5                                            push {r4, r5, r6, r7, lr}
00000d22  5f 46                                            mov r7, fp
00000d24  56 46                                            mov r6, sl
00000d26  4d 46                                            mov r5, sb
00000d28  44 46                                            mov r4, r8
00000d2a  f0 b4                                            push {r4, r5, r6, r7}
00000d2c  3b 4f                                            ldr r7, [pc, #0xec]
00000d2e  3c 4a                                            ldr r2, [pc, #0xf0]
00000d30  3c 4d                                            ldr r5, [pc, #0xf0]
00000d32  7f 44                                            add r7, pc
00000d34  bb 58                                            ldr r3, [r7, r2]
00000d36  3c 49                                            ldr r1, [pc, #0xf0]
00000d38  8f b0                                            sub sp, #0x3c
00000d3a  1b 68                                            ldr r3, [r3]
00000d3c  7d 44                                            add r5, pc
00000d3e  00 24                                            movs r4, #0
00000d40  0d 93                                            str r3, [sp, #0x34]
00000d42  28 68                                            ldr r0, [r5]
00000d44  08 ab                                            add r3, sp, #0x20
00000d46  79 44                                            add r1, pc
00000d48  91 46                                            mov sb, r2
00000d4a  9a 46                                            mov sl, r3
00000d4c  08 94                                            str r4, [sp, #0x20]
00000d4e  09 94                                            str r4, [sp, #0x24]
00000d50  0a 94                                            str r4, [sp, #0x28]
00000d52  0b 94                                            str r4, [sp, #0x2c]
00000d54  0c 94                                            str r4, [sp, #0x30]
00000d56  ff f7 96 ed                                      blx #0x884
00000d5a  80 46                                            mov r8, r0
00000d5c  00 28                                            cmp r0, #0
00000d5e  4c d0                                            beq #0xdfa
00000d60  50 46                                            mov r0, sl
00000d62  01 21                                            movs r1, #1
00000d64  14 22                                            movs r2, #0x14
00000d66  43 46                                            mov r3, r8
00000d68  ff f7 86 ed                                      blx #0x878
00000d6c  06 1c                                            adds r6, r0, #0
00000d6e  40 46                                            mov r0, r8
00000d70  ff f7 94 ed                                      blx #0x89c
00000d74  14 2e                                            cmp r6, #0x14
00000d76  40 d1                                            bne #0xdfa
00000d78  a9 68                                            ldr r1, [r5, #8]
00000d7a  02 aa                                            add r2, sp, #8
00000d7c  68 68                                            ldr r0, [r5, #4]
00000d7e  02 94                                            str r4, [sp, #8]
00000d80  ff f7 e2 fe                                      bl #0xb48
00000d84  80 46                                            mov r8, r0
00000d86  68 68                                            ldr r0, [r5, #4]
00000d88  ff f7 a0 ed                                      blx #0x8cc
00000d8c  06 1c                                            adds r6, r0, #0
00000d8e  a8 68                                            ldr r0, [r5, #8]
00000d90  ff f7 9c ed                                      blx #0x8cc
00000d94  46 44                                            add r6, r8
00000d96  36 18                                            adds r6, r6, r0
00000d98  32 1c                                            adds r2, r6, #0
00000d9a  01 32                                            adds r2, #1
00000d9c  10 1c                                            adds r0, r2, #0
00000d9e  01 92                                            str r2, [sp, #4]
00000da0  ff f7 4c ed                                      blx #0x83c
00000da4  42 46                                            mov r2, r8
00000da6  02 99                                            ldr r1, [sp, #8]
00000da8  b3 46                                            mov fp, r6
00000daa  06 1c                                            adds r6, r0, #0
00000dac  ff f7 58 ed                                      blx #0x860
00000db0  43 46                                            mov r3, r8
00000db2  f4 54                                            strb r4, [r6, r3]
00000db4  69 68                                            ldr r1, [r5, #4]
00000db6  30 1c                                            adds r0, r6, #0
00000db8  ff f7 4c ed                                      blx #0x854
00000dbc  a9 68                                            ldr r1, [r5, #8]
00000dbe  30 1c                                            adds r0, r6, #0
00000dc0  03 ad                                            add r5, sp, #0xc
00000dc2  ff f7 48 ed                                      blx #0x854
00000dc6  30 1c                                            adds r0, r6, #0
00000dc8  29 1c                                            adds r1, r5, #0
00000dca  5a 46                                            mov r2, fp
00000dcc  03 94                                            str r4, [sp, #0xc]
00000dce  04 94                                            str r4, [sp, #0x10]
00000dd0  05 94                                            str r4, [sp, #0x14]
00000dd2  06 94                                            str r4, [sp, #0x18]
00000dd4  07 94                                            str r4, [sp, #0x1c]
00000dd6  ff f7 a5 fd                                      bl #0x924
00000dda  29 1c                                            adds r1, r5, #0
00000ddc  50 46                                            mov r0, sl
00000dde  14 22                                            movs r2, #0x14
00000de0  ff f7 44 ed                                      blx #0x86c
00000de4  00 21                                            movs r1, #0
00000de6  44 42                                            rsbs r4, r0, #0
00000de8  44 41                                            adcs r4, r0
00000dea  01 9a                                            ldr r2, [sp, #4]
00000dec  30 1c                                            adds r0, r6, #0
00000dee  ff f7 50 ed                                      blx #0x890
00000df2  30 1c                                            adds r0, r6, #0
00000df4  ff f7 70 ed                                      blx #0x8d8
00000df8  00 e0                                            b #0xdfc
00000dfa  00 24                                            movs r4, #0
00000dfc  4a 46                                            mov r2, sb
00000dfe  bb 58                                            ldr r3, [r7, r2]
00000e00  0d 9a                                            ldr r2, [sp, #0x34]
00000e02  20 1c                                            adds r0, r4, #0
00000e04  1b 68                                            ldr r3, [r3]
00000e06  9a 42                                            cmp r2, r3
00000e08  06 d1                                            bne #0xe18
00000e0a  0f b0                                            add sp, #0x3c
00000e0c  3c bc                                            pop {r2, r3, r4, r5}
00000e0e  90 46                                            mov r8, r2
00000e10  99 46                                            mov sb, r3
00000e12  a2 46                                            mov sl, r4
00000e14  ab 46                                            mov fp, r5
00000e16  f0 bd                                            pop {r4, r5, r6, r7, pc}
00000e18  ff f7 16 ed                                      blx #0x848
00000e1c  02 2b                                            cmp r3, #2
00000e1e  00 00                                            movs r0, r0
00000e20  4c 00                                            lsls r4, r1, #1
00000e22  00 00                                            movs r0, r0
00000e24  48 2b                                            cmp r3, #0x48
00000e26  00 00                                            movs r0, r0
00000e28  26 05                                            lsls r6, r4, #0x14
00000e2a  00 00                                            movs r0, r0

; FUNCTION 0x00000e2c, declared_size=176, range_size=176, mode=thumb
; class-group: global-functions
; alias: Java_com_samsung_zirconia_NativeInterface_checkLicenseFile
; demangled: Java_com_samsung_zirconia_NativeInterface_checkLicenseFile
; decoder-mode: thumb
00000e2c  f8 b5                                            push {r3, r4, r5, r6, r7, lr}
00000e2e  4f 46                                            mov r7, sb
00000e30  46 46                                            mov r6, r8
00000e32  c0 b4                                            push {r6, r7}
00000e34  98 46                                            mov r8, r3
00000e36  08 9b                                            ldr r3, [sp, #0x20]
00000e38  a9 26                                            movs r6, #0xa9
00000e3a  b6 00                                            lsls r6, r6, #2
00000e3c  99 46                                            mov sb, r3
00000e3e  03 68                                            ldr r3, [r0]
00000e40  11 1c                                            adds r1, r2, #0
00000e42  17 1c                                            adds r7, r2, #0
00000e44  9b 59                                            ldr r3, [r3, r6]
00000e46  00 22                                            movs r2, #0
00000e48  04 1c                                            adds r4, r0, #0
00000e4a  98 47                                            blx r3
00000e4c  20 4d                                            ldr r5, [pc, #0x80]
00000e4e  41 46                                            mov r1, r8
00000e50  00 22                                            movs r2, #0
00000e52  7d 44                                            add r5, pc
00000e54  28 60                                            str r0, [r5]
00000e56  23 68                                            ldr r3, [r4]
00000e58  20 1c                                            adds r0, r4, #0
00000e5a  9b 59                                            ldr r3, [r3, r6]
00000e5c  98 47                                            blx r3
00000e5e  68 60                                            str r0, [r5, #4]
00000e60  23 68                                            ldr r3, [r4]
00000e62  00 22                                            movs r2, #0
00000e64  49 46                                            mov r1, sb
00000e66  9b 59                                            ldr r3, [r3, r6]
00000e68  20 1c                                            adds r0, r4, #0
00000e6a  98 47                                            blx r3
00000e6c  a8 60                                            str r0, [r5, #8]
00000e6e  ff f7 57 ff                                      bl #0xd20
00000e72  2a 68                                            ldr r2, [r5]
00000e74  06 06                                            lsls r6, r0, #0x18
00000e76  36 0e                                            lsrs r6, r6, #0x18
00000e78  00 2a                                            cmp r2, #0
00000e7a  08 d0                                            beq #0xe8e
00000e7c  21 68                                            ldr r1, [r4]
00000e7e  aa 23                                            movs r3, #0xaa
00000e80  9b 00                                            lsls r3, r3, #2
00000e82  cb 58                                            ldr r3, [r1, r3]
00000e84  20 1c                                            adds r0, r4, #0
00000e86  39 1c                                            adds r1, r7, #0
00000e88  98 47                                            blx r3
00000e8a  00 23                                            movs r3, #0
00000e8c  2b 60                                            str r3, [r5]
00000e8e  11 4d                                            ldr r5, [pc, #0x44]
00000e90  7d 44                                            add r5, pc
00000e92  6a 68                                            ldr r2, [r5, #4]
00000e94  00 2a                                            cmp r2, #0
00000e96  08 d0                                            beq #0xeaa
00000e98  21 68                                            ldr r1, [r4]
00000e9a  aa 23                                            movs r3, #0xaa
00000e9c  9b 00                                            lsls r3, r3, #2
00000e9e  cb 58                                            ldr r3, [r1, r3]
00000ea0  20 1c                                            adds r0, r4, #0
00000ea2  41 46                                            mov r1, r8
00000ea4  98 47                                            blx r3
00000ea6  00 23                                            movs r3, #0
00000ea8  6b 60                                            str r3, [r5, #4]
00000eaa  0b 4d                                            ldr r5, [pc, #0x2c]
00000eac  7d 44                                            add r5, pc
00000eae  aa 68                                            ldr r2, [r5, #8]
00000eb0  00 2a                                            cmp r2, #0
00000eb2  08 d0                                            beq #0xec6
00000eb4  21 68                                            ldr r1, [r4]
00000eb6  aa 23                                            movs r3, #0xaa
00000eb8  9b 00                                            lsls r3, r3, #2
00000eba  cb 58                                            ldr r3, [r1, r3]
00000ebc  20 1c                                            adds r0, r4, #0
00000ebe  49 46                                            mov r1, sb
00000ec0  98 47                                            blx r3
00000ec2  00 23                                            movs r3, #0
00000ec4  ab 60                                            str r3, [r5, #8]
00000ec6  30 1c                                            adds r0, r6, #0
00000ec8  0c bc                                            pop {r2, r3}
00000eca  90 46                                            mov r8, r2
00000ecc  99 46                                            mov sb, r3
00000ece  f8 bd                                            pop {r3, r4, r5, r6, r7, pc}
00000ed0  32 2a                                            cmp r2, #0x32
00000ed2  00 00                                            movs r0, r0
00000ed4  f4 29                                            cmp r1, #0xf4
00000ed6  00 00                                            movs r0, r0
00000ed8  d8 29                                            cmp r1, #0xd8
00000eda  00 00                                            movs r0, r0

; FUNCTION 0x00000edc, declared_size=56, range_size=56, mode=thumb
; class-group: global-functions
; alias: SHA1Reset
; demangled: SHA1Reset
; decoder-mode: thumb
00000edc  08 4a                                            ldr r2, [pc, #0x20]
00000ede  00 23                                            movs r3, #0
00000ee0  43 61                                            str r3, [r0, #0x14]
00000ee2  02 60                                            str r2, [r0]
00000ee4  07 4a                                            ldr r2, [pc, #0x1c]
00000ee6  83 61                                            str r3, [r0, #0x18]
00000ee8  c3 65                                            str r3, [r0, #0x5c]
00000eea  42 60                                            str r2, [r0, #4]
00000eec  06 4a                                            ldr r2, [pc, #0x18]
00000eee  03 66                                            str r3, [r0, #0x60]
00000ef0  43 66                                            str r3, [r0, #0x64]
00000ef2  82 60                                            str r2, [r0, #8]
00000ef4  05 4a                                            ldr r2, [pc, #0x14]
00000ef6  c2 60                                            str r2, [r0, #0xc]
00000ef8  05 4a                                            ldr r2, [pc, #0x14]
00000efa  02 61                                            str r2, [r0, #0x10]
00000efc  70 47                                            bx lr
00000efe  c0 46                                            mov r8, r8
00000f00  01 23                                            movs r3, #1
00000f02  45 67                                            str r5, [r0, #0x74]
00000f04  89 ab                                            add r3, sp, #0x224
00000f06  cd ef                                            .byte 0xcd, 0xef
00000f08  fe dc                                            bgt #0xf08
00000f0a  ba 98                                            ldr r0, [sp, #0x2e8]
00000f0c  76 54                                            strb r6, [r6, r1]
00000f0e  32 10                                            asrs r2, r6, #0x20
00000f10  f0 e1                                            b #0x12f4
00000f12  d2 c3                                            stm r3!, {r1, r4, r6, r7}

; FUNCTION 0x00000f14, declared_size=532, range_size=532, mode=thumb
; class-group: global-functions
; alias: SHA1ProcessMessageBlock
; demangled: SHA1ProcessMessageBlock
; decoder-mode: thumb
00000f14  f0 b5                                            push {r4, r5, r6, r7, lr}
00000f16  5f 46                                            mov r7, fp
00000f18  56 46                                            mov r6, sl
00000f1a  4d 46                                            mov r5, sb
00000f1c  44 46                                            mov r4, r8
00000f1e  f0 b4                                            push {r4, r5, r6, r7}
00000f20  db b0                                            sub sp, #0x16c
00000f22  0a a9                                            add r1, sp, #0x28
00000f24  03 1c                                            adds r3, r0, #0
00000f26  1c 33                                            adds r3, #0x1c
00000f28  0f 1c                                            adds r7, r1, #0
00000f2a  1a ae                                            add r6, sp, #0x68
00000f2c  0a 1c                                            adds r2, r1, #0
00000f2e  1d 78                                            ldrb r5, [r3]
00000f30  5c 78                                            ldrb r4, [r3, #1]
00000f32  2d 06                                            lsls r5, r5, #0x18
00000f34  24 04                                            lsls r4, r4, #0x10
00000f36  2c 43                                            orrs r4, r5
00000f38  dd 78                                            ldrb r5, [r3, #3]
00000f3a  2c 43                                            orrs r4, r5
00000f3c  9d 78                                            ldrb r5, [r3, #2]
00000f3e  04 33                                            adds r3, #4
00000f40  2d 02                                            lsls r5, r5, #8
00000f42  2c 43                                            orrs r4, r5
00000f44  10 c2                                            stm r2!, {r4}
00000f46  b2 42                                            cmp r2, r6
00000f48  f1 d1                                            bne #0xf2e
00000f4a  4e 1c                                            adds r6, r1, #1
00000f4c  ff 36                                            adds r6, #0xff
00000f4e  0b 1c                                            adds r3, r1, #0
00000f50  1f 25                                            movs r5, #0x1f
00000f52  1c 6a                                            ldr r4, [r3, #0x20]
00000f54  5a 6b                                            ldr r2, [r3, #0x34]
00000f56  62 40                                            eors r2, r4
00000f58  9c 68                                            ldr r4, [r3, #8]
00000f5a  62 40                                            eors r2, r4
00000f5c  1c 68                                            ldr r4, [r3]
00000f5e  62 40                                            eors r2, r4
00000f60  ea 41                                            rors r2, r5
00000f62  1a 64                                            str r2, [r3, #0x40]
00000f64  04 33                                            adds r3, #4
00000f66  b3 42                                            cmp r3, r6
00000f68  f3 d1                                            bne #0xf52
00000f6a  02 68                                            ldr r2, [r0]
00000f6c  05 92                                            str r2, [sp, #0x14]
00000f6e  43 68                                            ldr r3, [r0, #4]
00000f70  06 93                                            str r3, [sp, #0x18]
00000f72  84 68                                            ldr r4, [r0, #8]
00000f74  07 94                                            str r4, [sp, #0x1c]
00000f76  c5 68                                            ldr r5, [r0, #0xc]
00000f78  a2 46                                            mov sl, r4
00000f7a  50 24                                            movs r4, #0x50
00000f7c  08 95                                            str r5, [sp, #0x20]
00000f7e  02 69                                            ldr r2, [r0, #0x10]
00000f80  64 18                                            adds r4, r4, r1
00000f82  2e 1c                                            adds r6, r5, #0
00000f84  09 92                                            str r2, [sp, #0x24]
00000f86  15 1c                                            adds r5, r2, #0
00000f88  1b 22                                            movs r2, #0x1b
00000f8a  a3 46                                            mov fp, r4
00000f8c  91 46                                            mov sb, r2
00000f8e  02 22                                            movs r2, #2
00000f90  94 46                                            mov ip, r2
00000f92  52 46                                            mov r2, sl
00000f94  ba 46                                            mov sl, r7
00000f96  5f 46                                            mov r7, fp
00000f98  05 9c                                            ldr r4, [sp, #0x14]
00000f9a  03 97                                            str r7, [sp, #0xc]
00000f9c  83 46                                            mov fp, r0
00000f9e  02 e0                                            b #0xfa6
00000fa0  16 1c                                            adds r6, r2, #0
00000fa2  44 46                                            mov r4, r8
00000fa4  02 1c                                            adds r2, r0, #0
00000fa6  5c 4f                                            ldr r7, [pc, #0x170]
00000fa8  01 c9                                            ldm r1!, {r0}
00000faa  c0 19                                            adds r0, r0, r7
00000fac  45 19                                            adds r5, r0, r5
00000fae  4f 46                                            mov r7, sb
00000fb0  20 1c                                            adds r0, r4, #0
00000fb2  f8 41                                            rors r0, r7
00000fb4  2d 18                                            adds r5, r5, r0
00000fb6  30 1c                                            adds r0, r6, #0
00000fb8  98 43                                            bics r0, r3
00000fba  80 46                                            mov r8, r0
00000fbc  10 1c                                            adds r0, r2, #0
00000fbe  47 46                                            mov r7, r8
00000fc0  18 40                                            ands r0, r3
00000fc2  38 43                                            orrs r0, r7
00000fc4  03 9f                                            ldr r7, [sp, #0xc]
00000fc6  2d 18                                            adds r5, r5, r0
00000fc8  a8 46                                            mov r8, r5
00000fca  18 1c                                            adds r0, r3, #0
00000fcc  65 46                                            mov r5, ip
00000fce  e8 41                                            rors r0, r5
00000fd0  23 1c                                            adds r3, r4, #0
00000fd2  35 1c                                            adds r5, r6, #0
00000fd4  b9 42                                            cmp r1, r7
00000fd6  e3 d1                                            bne #0xfa0
00000fd8  57 46                                            mov r7, sl
00000fda  1b 23                                            movs r3, #0x1b
00000fdc  a0 21                                            movs r1, #0xa0
00000fde  92 46                                            mov sl, r2
00000fe0  b4 46                                            mov ip, r6
00000fe2  c9 19                                            adds r1, r1, r7
00000fe4  02 1c                                            adds r2, r0, #0
00000fe6  58 46                                            mov r0, fp
00000fe8  9b 46                                            mov fp, r3
00000fea  02 23                                            movs r3, #2
00000fec  89 46                                            mov sb, r1
00000fee  56 46                                            mov r6, sl
00000ff0  21 1c                                            adds r1, r4, #0
00000ff2  9a 46                                            mov sl, r3
00000ff4  44 46                                            mov r4, r8
00000ff6  63 46                                            mov r3, ip
00000ff8  1e ad                                            add r5, sp, #0x78
00000ffa  bc 46                                            mov ip, r7
00000ffc  80 46                                            mov r8, r0
00000ffe  02 e0                                            b #0x1006
00001000  16 1c                                            adds r6, r2, #0
00001002  3c 1c                                            adds r4, r7, #0
00001004  02 1c                                            adds r2, r0, #0
00001006  45 48                                            ldr r0, [pc, #0x114]
00001008  80 cd                                            ldm r5!, {r7}
0000100a  3f 18                                            adds r7, r7, r0
0000100c  fb 18                                            adds r3, r7, r3
0000100e  20 1c                                            adds r0, r4, #0
00001010  5f 46                                            mov r7, fp
00001012  f8 41                                            rors r0, r7
00001014  17 1c                                            adds r7, r2, #0
00001016  4f 40                                            eors r7, r1
00001018  1b 18                                            adds r3, r3, r0
0000101a  77 40                                            eors r7, r6
0000101c  08 1c                                            adds r0, r1, #0
0000101e  df 19                                            adds r7, r3, r7
00001020  53 46                                            mov r3, sl
00001022  d8 41                                            rors r0, r3
00001024  21 1c                                            adds r1, r4, #0
00001026  33 1c                                            adds r3, r6, #0
00001028  4d 45                                            cmp r5, sb
0000102a  e9 d1                                            bne #0x1000
0000102c  03 1c                                            adds r3, r0, #0
0000102e  f0 21                                            movs r1, #0xf0
00001030  40 46                                            mov r0, r8
00001032  b8 46                                            mov r8, r7
00001034  67 46                                            mov r7, ip
00001036  c9 19                                            adds r1, r1, r7
00001038  8c 46                                            mov ip, r1
0000103a  11 1c                                            adds r1, r2, #0
0000103c  1b 22                                            movs r2, #0x1b
0000103e  b1 46                                            mov sb, r6
00001040  92 46                                            mov sl, r2
00001042  01 97                                            str r7, [sp, #4]
00001044  02 22                                            movs r2, #2
00001046  67 46                                            mov r7, ip
00001048  46 46                                            mov r6, r8
0000104a  32 ad                                            add r5, sp, #0xc8
0000104c  90 46                                            mov r8, r2
0000104e  03 97                                            str r7, [sp, #0xc]
00001050  4a 46                                            mov r2, sb
00001052  81 46                                            mov sb, r0
00001054  02 e0                                            b #0x105c
00001056  19 1c                                            adds r1, r3, #0
00001058  5e 46                                            mov r6, fp
0000105a  03 1c                                            adds r3, r0, #0
0000105c  30 4f                                            ldr r7, [pc, #0xc0]
0000105e  01 cd                                            ldm r5!, {r0}
00001060  c0 19                                            adds r0, r0, r7
00001062  82 18                                            adds r2, r0, r2
00001064  57 46                                            mov r7, sl
00001066  30 1c                                            adds r0, r6, #0
00001068  f8 41                                            rors r0, r7
0000106a  12 18                                            adds r2, r2, r0
0000106c  08 1c                                            adds r0, r1, #0
0000106e  18 43                                            orrs r0, r3
00001070  20 40                                            ands r0, r4
00001072  83 46                                            mov fp, r0
00001074  08 1c                                            adds r0, r1, #0
00001076  5f 46                                            mov r7, fp
00001078  18 40                                            ands r0, r3
0000107a  38 43                                            orrs r0, r7
0000107c  03 9f                                            ldr r7, [sp, #0xc]
0000107e  12 18                                            adds r2, r2, r0
00001080  93 46                                            mov fp, r2
00001082  20 1c                                            adds r0, r4, #0
00001084  42 46                                            mov r2, r8
00001086  d0 41                                            rors r0, r2
00001088  34 1c                                            adds r4, r6, #0
0000108a  0a 1c                                            adds r2, r1, #0
0000108c  bd 42                                            cmp r5, r7
0000108e  e2 d1                                            bne #0x1056
00001090  01 9f                                            ldr r7, [sp, #4]
00001092  8c 46                                            mov ip, r1
00001094  1b 21                                            movs r1, #0x1b
00001096  41 37                                            adds r7, #0x41
00001098  02 1c                                            adds r2, r0, #0
0000109a  ff 37                                            adds r7, #0xff
0000109c  48 46                                            mov r0, sb
0000109e  8a 46                                            mov sl, r1
000010a0  02 21                                            movs r1, #2
000010a2  89 46                                            mov sb, r1
000010a4  46 ac                                            add r4, sp, #0x118
000010a6  61 46                                            mov r1, ip
000010a8  5d 46                                            mov r5, fp
000010aa  bc 46                                            mov ip, r7
000010ac  80 46                                            mov r8, r0
000010ae  02 e0                                            b #0x10b6
000010b0  13 1c                                            adds r3, r2, #0
000010b2  3d 1c                                            adds r5, r7, #0
000010b4  02 1c                                            adds r2, r0, #0
000010b6  1b 48                                            ldr r0, [pc, #0x6c]
000010b8  80 cc                                            ldm r4!, {r7}
000010ba  3f 18                                            adds r7, r7, r0
000010bc  79 18                                            adds r1, r7, r1
000010be  28 1c                                            adds r0, r5, #0
000010c0  57 46                                            mov r7, sl
000010c2  f8 41                                            rors r0, r7
000010c4  17 1c                                            adds r7, r2, #0
000010c6  77 40                                            eors r7, r6
000010c8  09 18                                            adds r1, r1, r0
000010ca  5f 40                                            eors r7, r3
000010cc  30 1c                                            adds r0, r6, #0
000010ce  cf 19                                            adds r7, r1, r7
000010d0  49 46                                            mov r1, sb
000010d2  c8 41                                            rors r0, r1
000010d4  2e 1c                                            adds r6, r5, #0
000010d6  19 1c                                            adds r1, r3, #0
000010d8  64 45                                            cmp r4, ip
000010da  e9 d1                                            bne #0x10b0
000010dc  05 9c                                            ldr r4, [sp, #0x14]
000010de  84 46                                            mov ip, r0
000010e0  40 46                                            mov r0, r8
000010e2  21 1c                                            adds r1, r4, #0
000010e4  b8 46                                            mov r8, r7
000010e6  41 44                                            add r1, r8
000010e8  01 60                                            str r1, [r0]
000010ea  06 9f                                            ldr r7, [sp, #0x18]
000010ec  7d 19                                            adds r5, r7, r5
000010ee  45 60                                            str r5, [r0, #4]
000010f0  07 9c                                            ldr r4, [sp, #0x1c]
000010f2  21 1c                                            adds r1, r4, #0
000010f4  61 44                                            add r1, ip
000010f6  81 60                                            str r1, [r0, #8]
000010f8  08 9d                                            ldr r5, [sp, #0x20]
000010fa  aa 18                                            adds r2, r5, r2
000010fc  c2 60                                            str r2, [r0, #0xc]
000010fe  09 9f                                            ldr r7, [sp, #0x24]
00001100  5b b0                                            add sp, #0x16c
00001102  fb 18                                            adds r3, r7, r3
00001104  03 61                                            str r3, [r0, #0x10]
00001106  00 23                                            movs r3, #0
00001108  c3 65                                            str r3, [r0, #0x5c]
0000110a  3c bc                                            pop {r2, r3, r4, r5}
0000110c  90 46                                            mov r8, r2
0000110e  99 46                                            mov sb, r3
00001110  a2 46                                            mov sl, r4
00001112  ab 46                                            mov fp, r5
00001114  f0 bd                                            pop {r4, r5, r6, r7, pc}
00001116  c0 46                                            mov r8, r8
00001118  99 79                                            ldrb r1, [r3, #6]
0000111a  82 5a                                            ldrh r2, [r0, r2]
0000111c  a1 eb d9 6e                                      sub.w lr, r1, sb, lsr #27
00001120  dc bc                                            pop {r2, r3, r4, r6, r7}
00001122  1b 8f                                            ldrh r3, [r3, #0x38]
00001124  d6 c1                                            stm r1!, {r1, r2, r4, r6, r7}
00001126  62 ca                                            ldm r2!, {r1, r5, r6}

; FUNCTION 0x00001128, declared_size=98, range_size=98, mode=thumb
; class-group: global-functions
; alias: SHA1Input
; demangled: SHA1Input
; decoder-mode: thumb
00001128  f8 b5                                            push {r3, r4, r5, r6, r7, lr}
0000112a  04 1c                                            adds r4, r0, #0
0000112c  0d 1c                                            adds r5, r1, #0
0000112e  00 2a                                            cmp r2, #0
00001130  27 d0                                            beq #0x1182
00001132  03 6e                                            ldr r3, [r0, #0x60]
00001134  00 2b                                            cmp r3, #0
00001136  25 d1                                            bne #0x1184
00001138  43 6e                                            ldr r3, [r0, #0x64]
0000113a  00 2b                                            cmp r3, #0
0000113c  22 d1                                            bne #0x1184
0000113e  56 1e                                            subs r6, r2, #1
00001140  01 27                                            movs r7, #1
00001142  06 e0                                            b #0x1152
00001144  00 2e                                            cmp r6, #0
00001146  1c d0                                            beq #0x1182
00001148  63 6e                                            ldr r3, [r4, #0x64]
0000114a  00 2b                                            cmp r3, #0
0000114c  19 d1                                            bne #0x1182
0000114e  01 35                                            adds r5, #1
00001150  01 3e                                            subs r6, #1
00001152  e3 6d                                            ldr r3, [r4, #0x5c]
00001154  29 78                                            ldrb r1, [r5]
00001156  e2 18                                            adds r2, r4, r3
00001158  11 77                                            strb r1, [r2, #0x1c]
0000115a  62 69                                            ldr r2, [r4, #0x14]
0000115c  01 33                                            adds r3, #1
0000115e  e3 65                                            str r3, [r4, #0x5c]
00001160  08 32                                            adds r2, #8
00001162  62 61                                            str r2, [r4, #0x14]
00001164  00 2a                                            cmp r2, #0
00001166  05 d1                                            bne #0x1174
00001168  a2 69                                            ldr r2, [r4, #0x18]
0000116a  01 32                                            adds r2, #1
0000116c  a2 61                                            str r2, [r4, #0x18]
0000116e  00 2a                                            cmp r2, #0
00001170  00 d1                                            bne #0x1174
00001172  67 66                                            str r7, [r4, #0x64]
00001174  40 2b                                            cmp r3, #0x40
00001176  e5 d1                                            bne #0x1144
00001178  20 1c                                            adds r0, r4, #0
0000117a  ff f7 cb fe                                      bl #0xf14
0000117e  00 2e                                            cmp r6, #0
00001180  e2 d1                                            bne #0x1148
00001182  f8 bd                                            pop {r3, r4, r5, r6, r7, pc}
00001184  01 23                                            movs r3, #1
00001186  63 66                                            str r3, [r4, #0x64]
00001188  fb e7                                            b #0x1182

; FUNCTION 0x0000118c, declared_size=176, range_size=176, mode=thumb
; class-group: global-functions
; alias: SHA1PadMessage
; demangled: SHA1PadMessage
; decoder-mode: thumb
0000118c  70 b5                                            push {r4, r5, r6, lr}
0000118e  04 1c                                            adds r4, r0, #0
00001190  c0 6d                                            ldr r0, [r0, #0x5c]
00001192  37 28                                            cmp r0, #0x37
00001194  3f dd                                            ble #0x1216
00001196  80 23                                            movs r3, #0x80
00001198  22 18                                            adds r2, r4, r0
0000119a  5b 42                                            rsbs r3, r3, #0
0000119c  45 1c                                            adds r5, r0, #1
0000119e  13 77                                            strb r3, [r2, #0x1c]
000011a0  e5 65                                            str r5, [r4, #0x5c]
000011a2  3f 2d                                            cmp r5, #0x3f
000011a4  09 dc                                            bgt #0x11ba
000011a6  2b 1c                                            adds r3, r5, #0
000011a8  00 21                                            movs r1, #0
000011aa  e2 18                                            adds r2, r4, r3
000011ac  01 33                                            adds r3, #1
000011ae  11 77                                            strb r1, [r2, #0x1c]
000011b0  40 2b                                            cmp r3, #0x40
000011b2  fa d1                                            bne #0x11aa
000011b4  28 1a                                            subs r0, r5, r0
000011b6  3f 30                                            adds r0, #0x3f
000011b8  e0 65                                            str r0, [r4, #0x5c]
000011ba  20 1c                                            adds r0, r4, #0
000011bc  ff f7 aa fe                                      bl #0xf14
000011c0  e0 6d                                            ldr r0, [r4, #0x5c]
000011c2  37 28                                            cmp r0, #0x37
000011c4  0b dc                                            bgt #0x11de
000011c6  38 25                                            movs r5, #0x38
000011c8  2d 1a                                            subs r5, r5, r0
000011ca  00 23                                            movs r3, #0
000011cc  20 18                                            adds r0, r4, r0
000011ce  00 21                                            movs r1, #0
000011d0  c2 18                                            adds r2, r0, r3
000011d2  01 33                                            adds r3, #1
000011d4  11 77                                            strb r1, [r2, #0x1c]
000011d6  ab 42                                            cmp r3, r5
000011d8  fa d1                                            bne #0x11d0
000011da  38 23                                            movs r3, #0x38
000011dc  e3 65                                            str r3, [r4, #0x5c]
000011de  a3 69                                            ldr r3, [r4, #0x18]
000011e0  54 22                                            movs r2, #0x54
000011e2  20 1c                                            adds r0, r4, #0
000011e4  19 0e                                            lsrs r1, r3, #0x18
000011e6  a1 54                                            strb r1, [r4, r2]
000011e8  19 0c                                            lsrs r1, r3, #0x10
000011ea  55 22                                            movs r2, #0x55
000011ec  a1 54                                            strb r1, [r4, r2]
000011ee  19 0a                                            lsrs r1, r3, #8
000011f0  56 22                                            movs r2, #0x56
000011f2  a1 54                                            strb r1, [r4, r2]
000011f4  57 22                                            movs r2, #0x57
000011f6  a3 54                                            strb r3, [r4, r2]
000011f8  63 69                                            ldr r3, [r4, #0x14]
000011fa  58 22                                            movs r2, #0x58
000011fc  19 0e                                            lsrs r1, r3, #0x18
000011fe  a1 54                                            strb r1, [r4, r2]
00001200  19 0c                                            lsrs r1, r3, #0x10
00001202  59 22                                            movs r2, #0x59
00001204  a1 54                                            strb r1, [r4, r2]
00001206  19 0a                                            lsrs r1, r3, #8
00001208  5a 22                                            movs r2, #0x5a
0000120a  a1 54                                            strb r1, [r4, r2]
0000120c  5b 22                                            movs r2, #0x5b
0000120e  a3 54                                            strb r3, [r4, r2]
00001210  ff f7 80 fe                                      bl #0xf14
00001214  70 bd                                            pop {r4, r5, r6, pc}
00001216  80 23                                            movs r3, #0x80
00001218  22 18                                            adds r2, r4, r0
0000121a  5b 42                                            rsbs r3, r3, #0
0000121c  45 1c                                            adds r5, r0, #1
0000121e  13 77                                            strb r3, [r2, #0x1c]
00001220  e5 65                                            str r5, [r4, #0x5c]
00001222  38 2d                                            cmp r5, #0x38
00001224  db d0                                            beq #0x11de
00001226  2b 1c                                            adds r3, r5, #0
00001228  00 21                                            movs r1, #0
0000122a  e2 18                                            adds r2, r4, r3
0000122c  01 33                                            adds r3, #1
0000122e  11 77                                            strb r1, [r2, #0x1c]
00001230  38 2b                                            cmp r3, #0x38
00001232  fa d1                                            bne #0x122a
00001234  28 1a                                            subs r0, r5, r0
00001236  37 30                                            adds r0, #0x37
00001238  e0 65                                            str r0, [r4, #0x5c]
0000123a  d0 e7                                            b #0x11de

; FUNCTION 0x0000123c, declared_size=36, range_size=36, mode=thumb
; class-group: global-functions
; alias: SHA1Result
; demangled: SHA1Result
; decoder-mode: thumb
0000123c  10 b5                                            push {r4, lr}
0000123e  43 6e                                            ldr r3, [r0, #0x64]
00001240  04 1c                                            adds r4, r0, #0
00001242  00 20                                            movs r0, #0
00001244  00 2b                                            cmp r3, #0
00001246  03 d1                                            bne #0x1250
00001248  23 6e                                            ldr r3, [r4, #0x60]
0000124a  01 20                                            movs r0, #1
0000124c  00 2b                                            cmp r3, #0
0000124e  00 d0                                            beq #0x1252
00001250  10 bd                                            pop {r4, pc}
00001252  20 1c                                            adds r0, r4, #0
00001254  ff f7 9a ff                                      bl #0x118c
00001258  01 23                                            movs r3, #1
0000125a  23 66                                            str r3, [r4, #0x60]
0000125c  01 20                                            movs r0, #1
0000125e  f7 e7                                            b #0x1250

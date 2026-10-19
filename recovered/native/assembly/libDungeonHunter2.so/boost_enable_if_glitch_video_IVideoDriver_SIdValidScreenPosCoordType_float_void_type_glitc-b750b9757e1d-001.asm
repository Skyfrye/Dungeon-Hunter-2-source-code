; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005a9ac4, declared_size=272, range_size=272, mode=arm
; class-group: boost::enable_if<glitch::video::IVideoDriver::SIdValidScreenPosCoordType<float>, void>::type glitch::video::IVideoDriver
; alias: _ZNK6glitch5video12IVideoDriver16screen2DevicePosIfEEN5boost9enable_ifINS1_26SIdValidScreenPosCoordTypeIT_EEvE4typeERS6_SA_
; demangled: boost::enable_if<glitch::video::IVideoDriver::SIdValidScreenPosCoordType<float>, void>::type glitch::video::IVideoDriver::screen2DevicePos<float>(float&, float&) const
; decoder-mode: arm
005a9ac4  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005a9ac8  00 40 a0 e1                                      mov r4, r0
005a9acc  3c 01 90 e5                                      ldr r0, [r0, #0x13c]
005a9ad0  c8 30 94 e5                                      ldr r3, [r4, #0xc8]
005a9ad4  01 50 a0 e1                                      mov r5, r1
005a9ad8  00 00 50 e3                                      cmp r0, #0
005a9adc  02 70 a0 e1                                      mov r7, r2
005a9ae0  00 60 93 e5                                      ldr r6, [r3]
005a9ae4  1f 00 00 0a                                      beq #0x5a9b68
005a9ae8  2c 30 96 e5                                      ldr r3, [r6, #0x2c]
005a9aec  30 20 96 e5                                      ldr r2, [r6, #0x30]
005a9af0  0c a0 96 e5                                      ldr sl, [r6, #0xc]
005a9af4  10 80 96 e5                                      ldr r8, [r6, #0x10]
005a9af8  24 00 96 e5                                      ldr r0, [r6, #0x24]
005a9afc  0a a0 83 e0                                      add sl, r3, sl
005a9b00  08 80 82 e0                                      add r8, r2, r8
005a9b04  96 93 f5 eb                                      bl #0x30e964
005a9b08  00 10 a0 e1                                      mov r1, r0
005a9b0c  00 00 95 e5                                      ldr r0, [r5]
005a9b10  23 94 f5 eb                                      bl #0x30eba4
005a9b14  00 00 85 e5                                      str r0, [r5]
005a9b18  28 00 96 e5                                      ldr r0, [r6, #0x28]
005a9b1c  90 93 f5 eb                                      bl #0x30e964
005a9b20  00 10 97 e5                                      ldr r1, [r7]
005a9b24  1e 94 f5 eb                                      bl #0x30eba4
005a9b28  00 00 87 e5                                      str r0, [r7]
005a9b2c  3c 31 94 e5                                      ldr r3, [r4, #0x13c]
005a9b30  00 60 a0 e1                                      mov r6, r0
005a9b34  02 00 53 e3                                      cmp r3, #2
005a9b38  12 00 00 0a                                      beq #0x5a9b88
005a9b3c  03 00 53 e3                                      cmp r3, #3
005a9b40  1b 00 00 0a                                      beq #0x5a9bb4
005a9b44  01 00 53 e3                                      cmp r3, #1
005a9b48  0d 00 00 1a                                      bne #0x5a9b84
005a9b4c  0a 00 a0 e1                                      mov r0, sl
005a9b50  83 93 f5 eb                                      bl #0x30e964
005a9b54  00 10 95 e5                                      ldr r1, [r5]
005a9b58  13 92 f5 eb                                      bl #0x30e3ac
005a9b5c  00 00 87 e5                                      str r0, [r7]
005a9b60  00 60 85 e5                                      str r6, [r5]
005a9b64  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005a9b68  2c 30 96 e5                                      ldr r3, [r6, #0x2c]
005a9b6c  00 00 53 e3                                      cmp r3, #0
005a9b70  30 20 96 15                                      ldrne r2, [r6, #0x30]
005a9b74  dd ff ff 1a                                      bne #0x5a9af0
005a9b78  30 20 96 e5                                      ldr r2, [r6, #0x30]
005a9b7c  00 00 52 e3                                      cmp r2, #0
005a9b80  da ff ff 1a                                      bne #0x5a9af0
005a9b84  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005a9b88  08 00 a0 e1                                      mov r0, r8
005a9b8c  74 93 f5 eb                                      bl #0x30e964
005a9b90  06 10 a0 e1                                      mov r1, r6
005a9b94  04 92 f5 eb                                      bl #0x30e3ac
005a9b98  00 00 87 e5                                      str r0, [r7]
005a9b9c  0a 00 a0 e1                                      mov r0, sl
005a9ba0  6f 93 f5 eb                                      bl #0x30e964
005a9ba4  00 10 95 e5                                      ldr r1, [r5]
005a9ba8  ff 91 f5 eb                                      bl #0x30e3ac
005a9bac  00 00 85 e5                                      str r0, [r5]
005a9bb0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005a9bb4  00 30 95 e5                                      ldr r3, [r5]
005a9bb8  08 00 a0 e1                                      mov r0, r8
005a9bbc  00 30 87 e5                                      str r3, [r7]
005a9bc0  67 93 f5 eb                                      bl #0x30e964
005a9bc4  06 10 a0 e1                                      mov r1, r6
005a9bc8  f7 91 f5 eb                                      bl #0x30e3ac
005a9bcc  00 00 85 e5                                      str r0, [r5]
005a9bd0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x005a9bd4, declared_size=276, range_size=276, mode=arm
; class-group: boost::enable_if<glitch::video::IVideoDriver::SIdValidScreenPosCoordType<float>, void>::type glitch::video::IVideoDriver
; alias: _ZNK6glitch5video12IVideoDriver16device2ScreenPosIfEEN5boost9enable_ifINS1_26SIdValidScreenPosCoordTypeIT_EEvE4typeERS6_SA_
; demangled: boost::enable_if<glitch::video::IVideoDriver::SIdValidScreenPosCoordType<float>, void>::type glitch::video::IVideoDriver::device2ScreenPos<float>(float&, float&) const
; decoder-mode: arm
005a9bd4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005a9bd8  3c 31 90 e5                                      ldr r3, [r0, #0x13c]
005a9bdc  c8 00 90 e5                                      ldr r0, [r0, #0xc8]
005a9be0  01 40 a0 e1                                      mov r4, r1
005a9be4  00 00 53 e3                                      cmp r3, #0
005a9be8  02 60 a0 e1                                      mov r6, r2
005a9bec  00 50 90 e5                                      ldr r5, [r0]
005a9bf0  10 00 00 1a                                      bne #0x5a9c38
005a9bf4  2c 30 95 e5                                      ldr r3, [r5, #0x2c]
005a9bf8  00 00 53 e3                                      cmp r3, #0
005a9bfc  22 00 00 0a                                      beq #0x5a9c8c
005a9c00  00 70 94 e5                                      ldr r7, [r4]
005a9c04  24 00 95 e5                                      ldr r0, [r5, #0x24]
005a9c08  55 93 f5 eb                                      bl #0x30e964
005a9c0c  00 10 a0 e1                                      mov r1, r0
005a9c10  07 00 a0 e1                                      mov r0, r7
005a9c14  e4 91 f5 eb                                      bl #0x30e3ac
005a9c18  00 00 84 e5                                      str r0, [r4]
005a9c1c  28 00 95 e5                                      ldr r0, [r5, #0x28]
005a9c20  4f 93 f5 eb                                      bl #0x30e964
005a9c24  00 10 a0 e1                                      mov r1, r0
005a9c28  00 00 96 e5                                      ldr r0, [r6]
005a9c2c  de 91 f5 eb                                      bl #0x30e3ac
005a9c30  00 00 86 e5                                      str r0, [r6]
005a9c34  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005a9c38  0c 70 95 e5                                      ldr r7, [r5, #0xc]
005a9c3c  2c 10 95 e5                                      ldr r1, [r5, #0x2c]
005a9c40  30 00 95 e5                                      ldr r0, [r5, #0x30]
005a9c44  10 20 95 e5                                      ldr r2, [r5, #0x10]
005a9c48  02 00 53 e3                                      cmp r3, #2
005a9c4c  01 70 87 e0                                      add r7, r7, r1
005a9c50  02 00 80 e0                                      add r0, r0, r2
005a9c54  10 00 00 0a                                      beq #0x5a9c9c
005a9c58  03 00 53 e3                                      cmp r3, #3
005a9c5c  19 00 00 0a                                      beq #0x5a9cc8
005a9c60  01 00 53 e3                                      cmp r3, #1
005a9c64  e5 ff ff 1a                                      bne #0x5a9c00
005a9c68  07 00 a0 e1                                      mov r0, r7
005a9c6c  3c 93 f5 eb                                      bl #0x30e964
005a9c70  00 10 96 e5                                      ldr r1, [r6]
005a9c74  cc 91 f5 eb                                      bl #0x30e3ac
005a9c78  00 30 94 e5                                      ldr r3, [r4]
005a9c7c  00 00 84 e5                                      str r0, [r4]
005a9c80  00 30 86 e5                                      str r3, [r6]
005a9c84  00 70 94 e5                                      ldr r7, [r4]
005a9c88  dd ff ff ea                                      b #0x5a9c04
005a9c8c  30 30 95 e5                                      ldr r3, [r5, #0x30]
005a9c90  00 00 53 e3                                      cmp r3, #0
005a9c94  d9 ff ff 1a                                      bne #0x5a9c00
005a9c98  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005a9c9c  30 93 f5 eb                                      bl #0x30e964
005a9ca0  00 10 96 e5                                      ldr r1, [r6]
005a9ca4  c0 91 f5 eb                                      bl #0x30e3ac
005a9ca8  00 00 86 e5                                      str r0, [r6]
005a9cac  07 00 a0 e1                                      mov r0, r7
005a9cb0  2b 93 f5 eb                                      bl #0x30e964
005a9cb4  00 10 94 e5                                      ldr r1, [r4]
005a9cb8  bb 91 f5 eb                                      bl #0x30e3ac
005a9cbc  00 70 a0 e1                                      mov r7, r0
005a9cc0  00 00 84 e5                                      str r0, [r4]
005a9cc4  ce ff ff ea                                      b #0x5a9c04
005a9cc8  00 30 96 e5                                      ldr r3, [r6]
005a9ccc  00 70 94 e5                                      ldr r7, [r4]
005a9cd0  00 30 84 e5                                      str r3, [r4]
005a9cd4  22 93 f5 eb                                      bl #0x30e964
005a9cd8  07 10 a0 e1                                      mov r1, r7
005a9cdc  b2 91 f5 eb                                      bl #0x30e3ac
005a9ce0  00 00 86 e5                                      str r0, [r6]
005a9ce4  c5 ff ff ea                                      b #0x5a9c00

; FUNCTION 0x005a9ddc, declared_size=260, range_size=260, mode=arm
; class-group: boost::enable_if<glitch::video::IVideoDriver::SIdValidScreenPosCoordType<float>, void>::type glitch::video::IVideoDriver
; alias: _ZNK6glitch5video12IVideoDriver13screen2DeviceIfEEN5boost9enable_ifINS1_26SIdValidScreenPosCoordTypeIT_EEvE4typeERNS_4core4rectIS6_EE
; demangled: boost::enable_if<glitch::video::IVideoDriver::SIdValidScreenPosCoordType<float>, void>::type glitch::video::IVideoDriver::screen2Device<float>(glitch::core::rect<float>&) const
; decoder-mode: arm
005a9ddc  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
005a9de0  3c 31 90 e5                                      ldr r3, [r0, #0x13c]
005a9de4  0c d0 4d e2                                      sub sp, sp, #0xc
005a9de8  00 50 a0 e1                                      mov r5, r0
005a9dec  00 00 53 e3                                      cmp r3, #0
005a9df0  01 40 a0 e1                                      mov r4, r1
005a9df4  25 00 00 0a                                      beq #0x5a9e90
005a9df8  00 c0 94 e5                                      ldr ip, [r4]
005a9dfc  04 30 94 e5                                      ldr r3, [r4, #4]
005a9e00  04 70 8d e2                                      add r7, sp, #4
005a9e04  05 00 a0 e1                                      mov r0, r5
005a9e08  0d 10 a0 e1                                      mov r1, sp
005a9e0c  07 20 a0 e1                                      mov r2, r7
005a9e10  00 c0 8d e5                                      str ip, [sp]
005a9e14  04 30 8d e5                                      str r3, [sp, #4]
005a9e18  29 ff ff eb                                      bl #0x5a9ac4
005a9e1c  04 20 9d e5                                      ldr r2, [sp, #4]
005a9e20  00 10 9d e5                                      ldr r1, [sp]
005a9e24  0c 30 94 e5                                      ldr r3, [r4, #0xc]
005a9e28  08 c0 94 e5                                      ldr ip, [r4, #8]
005a9e2c  00 10 84 e5                                      str r1, [r4]
005a9e30  04 20 84 e5                                      str r2, [r4, #4]
005a9e34  07 10 a0 e1                                      mov r1, r7
005a9e38  0d 20 a0 e1                                      mov r2, sp
005a9e3c  05 00 a0 e1                                      mov r0, r5
005a9e40  00 30 8d e5                                      str r3, [sp]
005a9e44  04 c0 8d e5                                      str ip, [sp, #4]
005a9e48  1d ff ff eb                                      bl #0x5a9ac4
005a9e4c  04 20 9d e5                                      ldr r2, [sp, #4]
005a9e50  00 10 9d e5                                      ldr r1, [sp]
005a9e54  0d 60 a0 e1                                      mov r6, sp
005a9e58  08 20 84 e5                                      str r2, [r4, #8]
005a9e5c  0c 10 84 e5                                      str r1, [r4, #0xc]
005a9e60  3c 31 95 e5                                      ldr r3, [r5, #0x13c]
005a9e64  02 00 53 e3                                      cmp r3, #2
005a9e68  11 00 00 0a                                      beq #0x5a9eb4
005a9e6c  03 00 53 e3                                      cmp r3, #3
005a9e70  16 00 00 0a                                      beq #0x5a9ed0
005a9e74  01 00 53 e3                                      cmp r3, #1
005a9e78  02 00 00 1a                                      bne #0x5a9e88
005a9e7c  04 30 94 e5                                      ldr r3, [r4, #4]
005a9e80  04 10 84 e5                                      str r1, [r4, #4]
005a9e84  0c 30 84 e5                                      str r3, [r4, #0xc]
005a9e88  0c d0 8d e2                                      add sp, sp, #0xc
005a9e8c  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
005a9e90  c8 30 90 e5                                      ldr r3, [r0, #0xc8]
005a9e94  00 30 93 e5                                      ldr r3, [r3]
005a9e98  2c 20 93 e5                                      ldr r2, [r3, #0x2c]
005a9e9c  00 00 52 e3                                      cmp r2, #0
005a9ea0  d4 ff ff 1a                                      bne #0x5a9df8
005a9ea4  30 30 93 e5                                      ldr r3, [r3, #0x30]
005a9ea8  00 00 53 e3                                      cmp r3, #0
005a9eac  f5 ff ff 0a                                      beq #0x5a9e88
005a9eb0  d0 ff ff ea                                      b #0x5a9df8
005a9eb4  00 30 94 e5                                      ldr r3, [r4]
005a9eb8  04 00 94 e5                                      ldr r0, [r4, #4]
005a9ebc  00 20 84 e5                                      str r2, [r4]
005a9ec0  04 10 84 e5                                      str r1, [r4, #4]
005a9ec4  0c 00 84 e5                                      str r0, [r4, #0xc]
005a9ec8  08 30 84 e5                                      str r3, [r4, #8]
005a9ecc  ed ff ff ea                                      b #0x5a9e88
005a9ed0  00 30 94 e5                                      ldr r3, [r4]
005a9ed4  00 20 84 e5                                      str r2, [r4]
005a9ed8  08 30 84 e5                                      str r3, [r4, #8]
005a9edc  e9 ff ff ea                                      b #0x5a9e88

; FUNCTION 0x005aa114, declared_size=260, range_size=260, mode=arm
; class-group: boost::enable_if<glitch::video::IVideoDriver::SIdValidScreenPosCoordType<float>, void>::type glitch::video::IVideoDriver
; alias: _ZNK6glitch5video12IVideoDriver13device2ScreenIfEEN5boost9enable_ifINS1_26SIdValidScreenPosCoordTypeIT_EEvE4typeERNS_4core4rectIS6_EE
; demangled: boost::enable_if<glitch::video::IVideoDriver::SIdValidScreenPosCoordType<float>, void>::type glitch::video::IVideoDriver::device2Screen<float>(glitch::core::rect<float>&) const
; decoder-mode: arm
005aa114  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
005aa118  3c 31 90 e5                                      ldr r3, [r0, #0x13c]
005aa11c  0c d0 4d e2                                      sub sp, sp, #0xc
005aa120  00 50 a0 e1                                      mov r5, r0
005aa124  00 00 53 e3                                      cmp r3, #0
005aa128  01 40 a0 e1                                      mov r4, r1
005aa12c  25 00 00 0a                                      beq #0x5aa1c8
005aa130  00 c0 94 e5                                      ldr ip, [r4]
005aa134  04 30 94 e5                                      ldr r3, [r4, #4]
005aa138  04 70 8d e2                                      add r7, sp, #4
005aa13c  05 00 a0 e1                                      mov r0, r5
005aa140  0d 10 a0 e1                                      mov r1, sp
005aa144  07 20 a0 e1                                      mov r2, r7
005aa148  00 c0 8d e5                                      str ip, [sp]
005aa14c  04 30 8d e5                                      str r3, [sp, #4]
005aa150  9f fe ff eb                                      bl #0x5a9bd4
005aa154  04 20 9d e5                                      ldr r2, [sp, #4]
005aa158  00 10 9d e5                                      ldr r1, [sp]
005aa15c  0c 30 94 e5                                      ldr r3, [r4, #0xc]
005aa160  08 c0 94 e5                                      ldr ip, [r4, #8]
005aa164  00 10 84 e5                                      str r1, [r4]
005aa168  04 20 84 e5                                      str r2, [r4, #4]
005aa16c  07 10 a0 e1                                      mov r1, r7
005aa170  0d 20 a0 e1                                      mov r2, sp
005aa174  05 00 a0 e1                                      mov r0, r5
005aa178  00 30 8d e5                                      str r3, [sp]
005aa17c  04 c0 8d e5                                      str ip, [sp, #4]
005aa180  93 fe ff eb                                      bl #0x5a9bd4
005aa184  04 10 9d e5                                      ldr r1, [sp, #4]
005aa188  00 20 9d e5                                      ldr r2, [sp]
005aa18c  0d 60 a0 e1                                      mov r6, sp
005aa190  08 10 84 e5                                      str r1, [r4, #8]
005aa194  0c 20 84 e5                                      str r2, [r4, #0xc]
005aa198  3c 31 95 e5                                      ldr r3, [r5, #0x13c]
005aa19c  02 00 53 e3                                      cmp r3, #2
005aa1a0  11 00 00 0a                                      beq #0x5aa1ec
005aa1a4  03 00 53 e3                                      cmp r3, #3
005aa1a8  16 00 00 0a                                      beq #0x5aa208
005aa1ac  01 00 53 e3                                      cmp r3, #1
005aa1b0  02 00 00 1a                                      bne #0x5aa1c0
005aa1b4  00 30 94 e5                                      ldr r3, [r4]
005aa1b8  00 10 84 e5                                      str r1, [r4]
005aa1bc  08 30 84 e5                                      str r3, [r4, #8]
005aa1c0  0c d0 8d e2                                      add sp, sp, #0xc
005aa1c4  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
005aa1c8  c8 30 90 e5                                      ldr r3, [r0, #0xc8]
005aa1cc  00 30 93 e5                                      ldr r3, [r3]
005aa1d0  2c 20 93 e5                                      ldr r2, [r3, #0x2c]
005aa1d4  00 00 52 e3                                      cmp r2, #0
005aa1d8  d4 ff ff 1a                                      bne #0x5aa130
005aa1dc  30 30 93 e5                                      ldr r3, [r3, #0x30]
005aa1e0  00 00 53 e3                                      cmp r3, #0
005aa1e4  f5 ff ff 0a                                      beq #0x5aa1c0
005aa1e8  d0 ff ff ea                                      b #0x5aa130
005aa1ec  00 30 94 e5                                      ldr r3, [r4]
005aa1f0  04 00 94 e5                                      ldr r0, [r4, #4]
005aa1f4  00 10 84 e5                                      str r1, [r4]
005aa1f8  04 20 84 e5                                      str r2, [r4, #4]
005aa1fc  0c 00 84 e5                                      str r0, [r4, #0xc]
005aa200  08 30 84 e5                                      str r3, [r4, #8]
005aa204  ed ff ff ea                                      b #0x5aa1c0
005aa208  04 30 94 e5                                      ldr r3, [r4, #4]
005aa20c  04 20 84 e5                                      str r2, [r4, #4]
005aa210  0c 30 84 e5                                      str r3, [r4, #0xc]
005aa214  e9 ff ff ea                                      b #0x5aa1c0

; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005b2684, declared_size=80, range_size=80, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CRenderTarget
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE13CRenderTargetD1Ev
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CRenderTarget::~CRenderTarget()
; decoder-mode: arm
005b2684  10 40 2d e9                                      push {r4, lr}
005b2688  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
005b268c  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
005b2690  24 10 90 e5                                      ldr r1, [r0, #0x24]
005b2694  03 30 8f e0                                      add r3, pc, r3
005b2698  02 20 93 e7                                      ldr r2, [r3, r2]
005b269c  00 00 51 e3                                      cmp r1, #0
005b26a0  00 40 a0 e1                                      mov r4, r0
005b26a4  08 20 82 e2                                      add r2, r2, #8
005b26a8  00 20 80 e5                                      str r2, [r0]
005b26ac  02 00 00 0a                                      beq #0x5b26bc
005b26b0  01 00 a0 e3                                      mov r0, #1
005b26b4  24 10 84 e2                                      add r1, r4, #0x24
005b26b8  24 6e f5 eb                                      bl #0x30df50
005b26bc  04 00 a0 e1                                      mov r0, r4
005b26c0  d9 ff ff eb                                      bl #0x5b262c
005b26c4  04 00 a0 e1                                      mov r0, r4
005b26c8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
005b26cc  fc 23 3e 00 78 4a 00 00                          .byte 0xfc, 0x23, 0x3e, 0x00, 0x78, 0x4a, 0x00, 0x00

; FUNCTION 0x005b26d4, declared_size=28, range_size=28, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CRenderTarget
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE13CRenderTargetD0Ev
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CRenderTarget::~CRenderTarget()
; decoder-mode: arm
005b26d4  10 40 2d e9                                      push {r4, lr}
005b26d8  00 40 a0 e1                                      mov r4, r0
005b26dc  e8 ff ff eb                                      bl #0x5b2684
005b26e0  04 00 a0 e1                                      mov r0, r4
005b26e4  f1 6e f5 eb                                      bl #0x30e2b0
005b26e8  04 00 a0 e1                                      mov r0, r4
005b26ec  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005b2ac0, declared_size=232, range_size=232, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CRenderTarget
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE13CRenderTarget6unbindEv
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CRenderTarget::unbind()
; decoder-mode: arm
005b2ac0  70 40 2d e9                                      push {r4, r5, r6, lr}
005b2ac4  00 40 a0 e1                                      mov r4, r0
005b2ac8  08 00 90 e5                                      ldr r0, [r0, #8]
005b2acc  10 d0 4d e2                                      sub sp, sp, #0x10
005b2ad0  9c 30 90 e5                                      ldr r3, [r0, #0x9c]
005b2ad4  02 0b 13 e3                                      tst r3, #0x800
005b2ad8  10 00 00 1a                                      bne #0x5b2b20
005b2adc  59 c0 d4 e5                                      ldrb ip, [r4, #0x59]
005b2ae0  00 00 5c e3                                      cmp ip, #0
005b2ae4  0d 00 00 0a                                      beq #0x5b2b20
005b2ae8  b8 32 d4 e1                                      ldrh r3, [r4, #0x28]
005b2aec  00 00 53 e3                                      cmp r3, #0
005b2af0  04 20 a0 11                                      movne r2, r4
005b2af4  01 30 a0 13                                      movne r3, #1
005b2af8  05 00 00 1a                                      bne #0x5b2b14
005b2afc  0a 00 00 ea                                      b #0x5b2b2c
005b2b00  b0 13 d2 e1                                      ldrh r1, [r2, #0x30]
005b2b04  01 30 83 e2                                      add r3, r3, #1
005b2b08  08 20 82 e2                                      add r2, r2, #8
005b2b0c  00 00 51 e3                                      cmp r1, #0
005b2b10  04 00 00 0a                                      beq #0x5b2b28
005b2b14  73 10 ef e6                                      uxtb r1, r3
005b2b18  01 00 5c e1                                      cmp ip, r1
005b2b1c  f7 ff ff 8a                                      bhi #0x5b2b00
005b2b20  10 d0 8d e2                                      add sp, sp, #0x10
005b2b24  70 80 bd e8                                      pop {r4, r5, r6, pc}
005b2b28  01 30 43 e2                                      sub r3, r3, #1
005b2b2c  83 31 84 e0                                      add r3, r4, r3, lsl #3
005b2b30  2c 50 93 e5                                      ldr r5, [r3, #0x2c]
005b2b34  00 00 55 e3                                      cmp r5, #0
005b2b38  f8 ff ff 0a                                      beq #0x5b2b20
005b2b3c  4c 60 90 e5                                      ldr r6, [r0, #0x4c]
005b2b40  38 30 95 e5                                      ldr r3, [r5, #0x38]
005b2b44  05 20 a0 e1                                      mov r2, r5
005b2b48  01 60 46 e2                                      sub r6, r6, #1
005b2b4c  03 30 03 e2                                      and r3, r3, #3
005b2b50  06 10 a0 e1                                      mov r1, r6
005b2b54  e5 fe ff eb                                      bl #0x5b26f0
005b2b58  08 40 94 e5                                      ldr r4, [r4, #8]
005b2b5c  68 32 94 e5                                      ldr r3, [r4, #0x268]
005b2b60  03 00 56 e1                                      cmp r6, r3
005b2b64  03 00 00 0a                                      beq #0x5b2b78
005b2b68  21 0b 86 e2                                      add r0, r6, #0x8400
005b2b6c  c0 00 80 e2                                      add r0, r0, #0xc0
005b2b70  9b 6d f5 eb                                      bl #0x30e1e4
005b2b74  68 62 84 e5                                      str r6, [r4, #0x268]
005b2b78  00 10 a0 e3                                      mov r1, #0
005b2b7c  00 10 8d e5                                      str r1, [sp]
005b2b80  04 10 8d e5                                      str r1, [sp, #4]
005b2b84  20 30 95 e5                                      ldr r3, [r5, #0x20]
005b2b88  e1 0d 00 e3                                      movw r0, #0xde1
005b2b8c  01 20 a0 e1                                      mov r2, r1
005b2b90  08 30 8d e5                                      str r3, [sp, #8]
005b2b94  24 c0 95 e5                                      ldr ip, [r5, #0x24]
005b2b98  01 30 a0 e1                                      mov r3, r1
005b2b9c  0c c0 8d e5                                      str ip, [sp, #0xc]
005b2ba0  a8 6f f5 eb                                      bl #0x30ea48
005b2ba4  dd ff ff ea                                      b #0x5b2b20

; FUNCTION 0x005b2ba8, declared_size=228, range_size=228, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CRenderTarget
; alias: _ZNK6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE13CRenderTarget17compileAttachmentEiRKNS0_19CCommonGLDriverBase17CRenderTargetBase11SAttachmentE
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CRenderTarget::compileAttachment(int, glitch::video::CCommonGLDriverBase::CRenderTargetBase::SAttachment const&) const
; decoder-mode: arm
005b2ba8  30 40 2d e9                                      push {r4, r5, lr}
005b2bac  b0 30 d2 e1                                      ldrh r3, [r2]
005b2bb0  0c d0 4d e2                                      sub sp, sp, #0xc
005b2bb4  02 40 a0 e1                                      mov r4, r2
005b2bb8  00 00 53 e3                                      cmp r3, #0
005b2bbc  01 50 a0 e1                                      mov r5, r1
005b2bc0  16 00 00 1a                                      bne #0x5b2c20
005b2bc4  04 10 92 e5                                      ldr r1, [r2, #4]
005b2bc8  b0 34 d1 e1                                      ldrh r3, [r1, #0x40]
005b2bcc  02 30 c3 e3                                      bic r3, r3, #2
005b2bd0  83 39 a0 e1                                      lsl r3, r3, #0x13
005b2bd4  a3 39 a0 e1                                      lsr r3, r3, #0x13
005b2bd8  00 00 53 e3                                      cmp r3, #0
005b2bdc  19 00 00 1a                                      bne #0x5b2c48
005b2be0  38 20 91 e5                                      ldr r2, [r1, #0x38]
005b2be4  03 20 02 e2                                      and r2, r2, #3
005b2be8  02 00 52 e3                                      cmp r2, #2
005b2bec  21 00 00 0a                                      beq #0x5b2c78
005b2bf0  90 30 9f e5                                      ldr r3, [pc, #0x90]
005b2bf4  03 30 8f e0                                      add r3, pc, r3
005b2bf8  a4 30 83 e2                                      add r3, r3, #0xa4
005b2bfc  02 21 93 e7                                      ldr r2, [r3, r2, lsl #2]
005b2c00  03 c0 d4 e5                                      ldrb ip, [r4, #3]
005b2c04  54 30 91 e5                                      ldr r3, [r1, #0x54]
005b2c08  40 0d 08 e3                                      movw r0, #0x8d40
005b2c0c  05 10 a0 e1                                      mov r1, r5
005b2c10  00 c0 8d e5                                      str ip, [sp]
005b2c14  85 6c f5 eb                                      bl #0x30de30
005b2c18  0c d0 8d e2                                      add sp, sp, #0xc
005b2c1c  30 80 bd e8                                      pop {r4, r5, pc}
005b2c20  04 00 92 e5                                      ldr r0, [r2, #4]
005b2c24  70 f9 ff eb                                      bl #0x5b11ec
005b2c28  04 30 94 e5                                      ldr r3, [r4, #4]
005b2c2c  05 10 a0 e1                                      mov r1, r5
005b2c30  40 0d 08 e3                                      movw r0, #0x8d40
005b2c34  18 30 93 e5                                      ldr r3, [r3, #0x18]
005b2c38  41 2d 08 e3                                      movw r2, #0x8d41
005b2c3c  0c d0 8d e2                                      add sp, sp, #0xc
005b2c40  30 40 bd e8                                      pop {r4, r5, lr}
005b2c44  06 6d f5 ea                                      b #0x30e064
005b2c48  08 00 90 e5                                      ldr r0, [r0, #8]
005b2c4c  38 30 91 e5                                      ldr r3, [r1, #0x38]
005b2c50  01 20 a0 e1                                      mov r2, r1
005b2c54  4c 10 90 e5                                      ldr r1, [r0, #0x4c]
005b2c58  03 30 03 e2                                      and r3, r3, #3
005b2c5c  01 10 41 e2                                      sub r1, r1, #1
005b2c60  a2 fe ff eb                                      bl #0x5b26f0
005b2c64  04 10 94 e5                                      ldr r1, [r4, #4]
005b2c68  38 20 91 e5                                      ldr r2, [r1, #0x38]
005b2c6c  03 20 02 e2                                      and r2, r2, #3
005b2c70  02 00 52 e3                                      cmp r2, #2
005b2c74  dd ff ff 1a                                      bne #0x5b2bf0
005b2c78  02 20 d4 e5                                      ldrb r2, [r4, #2]
005b2c7c  85 2c 82 e2                                      add r2, r2, #0x8500
005b2c80  15 20 82 e2                                      add r2, r2, #0x15
005b2c84  dd ff ff ea                                      b #0x5b2c00
; mapping-symbol data/literal pool
005b2c88  40 d4 32 00                                      .byte 0x40, 0xd4, 0x32, 0x00

; FUNCTION 0x005b2c8c, declared_size=800, range_size=800, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CRenderTarget
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE13CRenderTarget4bindEv
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CRenderTarget::bind()
; decoder-mode: arm
005b2c8c  70 40 2d e9                                      push {r4, r5, r6, lr}
005b2c90  08 30 90 e5                                      ldr r3, [r0, #8]
005b2c94  00 40 a0 e1                                      mov r4, r0
005b2c98  14 10 80 e2                                      add r1, r0, #0x14
005b2c9c  03 00 a0 e1                                      mov r0, r3
005b2ca0  00 30 93 e5                                      ldr r3, [r3]
005b2ca4  0f e0 a0 e1                                      mov lr, pc
005b2ca8  e8 f1 93 e5                                      ldr pc, [r3, #0x1e8]
005b2cac  08 30 94 e5                                      ldr r3, [r4, #8]
005b2cb0  9c 20 93 e5                                      ldr r2, [r3, #0x9c]
005b2cb4  02 0b 12 e3                                      tst r2, #0x800
005b2cb8  77 00 00 0a                                      beq #0x5b2e9c
005b2cbc  59 c0 d4 e5                                      ldrb ip, [r4, #0x59]
005b2cc0  00 00 5c e3                                      cmp ip, #0
005b2cc4  0c e0 a0 01                                      moveq lr, ip
005b2cc8  1d 00 00 0a                                      beq #0x5b2d44
005b2ccc  00 20 a0 e3                                      mov r2, #0
005b2cd0  04 30 a0 e1                                      mov r3, r4
005b2cd4  02 e0 a0 e1                                      mov lr, r2
005b2cd8  08 00 00 ea                                      b #0x5b2d00
005b2cdc  3f 10 d1 e5                                      ldrb r1, [r1, #0x3f]
005b2ce0  d1 11 e0 e7                                      ubfx r1, r1, #3, #1
005b2ce4  00 00 51 e3                                      cmp r1, #0
005b2ce8  0f 00 00 0a                                      beq #0x5b2d2c
005b2cec  01 20 82 e2                                      add r2, r2, #1
005b2cf0  72 20 ef e6                                      uxtb r2, r2
005b2cf4  0c 00 52 e1                                      cmp r2, ip
005b2cf8  08 30 83 e2                                      add r3, r3, #8
005b2cfc  10 00 00 0a                                      beq #0x5b2d44
005b2d00  2c 10 93 e5                                      ldr r1, [r3, #0x2c]
005b2d04  00 00 51 e3                                      cmp r1, #0
005b2d08  07 00 00 0a                                      beq #0x5b2d2c
005b2d0c  b8 02 d3 e1                                      ldrh r0, [r3, #0x28]
005b2d10  00 00 50 e3                                      cmp r0, #0
005b2d14  f0 ff ff 0a                                      beq #0x5b2cdc
005b2d18  18 10 91 e5                                      ldr r1, [r1, #0x18]
005b2d1c  00 10 51 e2                                      subs r1, r1, #0
005b2d20  01 10 a0 13                                      movne r1, #1
005b2d24  00 00 51 e3                                      cmp r1, #0
005b2d28  ef ff ff 1a                                      bne #0x5b2cec
005b2d2c  01 20 82 e2                                      add r2, r2, #1
005b2d30  72 20 ef e6                                      uxtb r2, r2
005b2d34  0c 00 52 e1                                      cmp r2, ip
005b2d38  01 e0 a0 e3                                      mov lr, #1
005b2d3c  08 30 83 e2                                      add r3, r3, #8
005b2d40  ee ff ff 1a                                      bne #0x5b2d00
005b2d44  4c 30 94 e5                                      ldr r3, [r4, #0x4c]
005b2d48  00 00 53 e3                                      cmp r3, #0
005b2d4c  07 00 00 0a                                      beq #0x5b2d70
005b2d50  b8 24 d4 e1                                      ldrh r2, [r4, #0x48]
005b2d54  00 00 52 e3                                      cmp r2, #0
005b2d58  6b 00 00 0a                                      beq #0x5b2f0c
005b2d5c  18 30 93 e5                                      ldr r3, [r3, #0x18]
005b2d60  00 30 53 e2                                      subs r3, r3, #0
005b2d64  01 30 a0 13                                      movne r3, #1
005b2d68  00 00 53 e3                                      cmp r3, #0
005b2d6c  6a 00 00 0a                                      beq #0x5b2f1c
005b2d70  54 30 94 e5                                      ldr r3, [r4, #0x54]
005b2d74  00 00 53 e3                                      cmp r3, #0
005b2d78  07 00 00 0a                                      beq #0x5b2d9c
005b2d7c  b0 25 d4 e1                                      ldrh r2, [r4, #0x50]
005b2d80  00 00 52 e3                                      cmp r2, #0
005b2d84  66 00 00 0a                                      beq #0x5b2f24
005b2d88  18 30 93 e5                                      ldr r3, [r3, #0x18]
005b2d8c  00 30 53 e2                                      subs r3, r3, #0
005b2d90  01 30 a0 13                                      movne r3, #1
005b2d94  00 00 53 e3                                      cmp r3, #0
005b2d98  5f 00 00 0a                                      beq #0x5b2f1c
005b2d9c  5a 30 d4 e5                                      ldrb r3, [r4, #0x5a]
005b2da0  00 00 53 e3                                      cmp r3, #0
005b2da4  01 00 00 1a                                      bne #0x5b2db0
005b2da8  00 00 5e e3                                      cmp lr, #0
005b2dac  36 00 00 0a                                      beq #0x5b2e8c
005b2db0  24 10 94 e5                                      ldr r1, [r4, #0x24]
005b2db4  00 00 51 e3                                      cmp r1, #0
005b2db8  5c 00 00 0a                                      beq #0x5b2f30
005b2dbc  40 0d 08 e3                                      movw r0, #0x8d40
005b2dc0  e3 6c f5 eb                                      bl #0x30e154
005b2dc4  59 30 d4 e5                                      ldrb r3, [r4, #0x59]
005b2dc8  00 00 53 e3                                      cmp r3, #0
005b2dcc  0b 00 00 0a                                      beq #0x5b2e00
005b2dd0  00 50 a0 e3                                      mov r5, #0
005b2dd4  05 20 85 e2                                      add r2, r5, #5
005b2dd8  23 1b 85 e2                                      add r1, r5, #0x8c00
005b2ddc  e0 10 81 e2                                      add r1, r1, #0xe0
005b2de0  82 21 84 e0                                      add r2, r4, r2, lsl #3
005b2de4  04 00 a0 e1                                      mov r0, r4
005b2de8  6e ff ff eb                                      bl #0x5b2ba8
005b2dec  59 30 d4 e5                                      ldrb r3, [r4, #0x59]
005b2df0  01 50 85 e2                                      add r5, r5, #1
005b2df4  75 50 ef e6                                      uxtb r5, r5
005b2df8  05 00 53 e1                                      cmp r3, r5
005b2dfc  f4 ff ff 8a                                      bhi #0x5b2dd4
005b2e00  4c 30 94 e5                                      ldr r3, [r4, #0x4c]
005b2e04  00 00 53 e3                                      cmp r3, #0
005b2e08  03 00 00 0a                                      beq #0x5b2e1c
005b2e0c  04 00 a0 e1                                      mov r0, r4
005b2e10  8d 1c a0 e3                                      mov r1, #0x8d00
005b2e14  48 20 84 e2                                      add r2, r4, #0x48
005b2e18  62 ff ff eb                                      bl #0x5b2ba8
005b2e1c  54 30 94 e5                                      ldr r3, [r4, #0x54]
005b2e20  00 00 53 e3                                      cmp r3, #0
005b2e24  03 00 00 0a                                      beq #0x5b2e38
005b2e28  04 00 a0 e1                                      mov r0, r4
005b2e2c  20 1d 08 e3                                      movw r1, #0x8d20
005b2e30  50 20 84 e2                                      add r2, r4, #0x50
005b2e34  5b ff ff eb                                      bl #0x5b2ba8
005b2e38  40 0d 08 e3                                      movw r0, #0x8d40
005b2e3c  dc 6c f5 eb                                      bl #0x30e1b4
005b2e40  23 3b 40 e2                                      sub r3, r0, #0x8c00
005b2e44  d6 30 43 e2                                      sub r3, r3, #0xd6
005b2e48  07 00 53 e3                                      cmp r3, #7
005b2e4c  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
005b2e50  0b 00 00 ea                                      b #0x5b2e84
005b2e54  46 00 00 ea                                      b #0x5b2f74
005b2e58  39 00 00 ea                                      b #0x5b2f44
005b2e5c  08 00 00 ea                                      b #0x5b2e84
005b2e60  3a 00 00 ea                                      b #0x5b2f50
005b2e64  3c 00 00 ea                                      b #0x5b2f5c
005b2e68  3e 00 00 ea                                      b #0x5b2f68
005b2e6c  43 00 00 ea                                      b #0x5b2f80
005b2e70  ff ff ff ea                                      b #0x5b2e74
005b2e74  10 01 9f e5                                      ldr r0, [pc, #0x110]
005b2e78  00 00 8f e0                                      add r0, pc, r0
005b2e7c  03 10 a0 e3                                      mov r1, #3
005b2e80  86 5f 01 eb                                      bl #0x60aca0
005b2e84  00 30 a0 e3                                      mov r3, #0
005b2e88  5a 30 c4 e5                                      strb r3, [r4, #0x5a]
005b2e8c  40 0d 08 e3                                      movw r0, #0x8d40
005b2e90  24 10 94 e5                                      ldr r1, [r4, #0x24]
005b2e94  ae 6c f5 eb                                      bl #0x30e154
005b2e98  08 30 94 e5                                      ldr r3, [r4, #8]
005b2e9c  a0 24 d3 e5                                      ldrb r2, [r3, #0x4a0]
005b2ea0  00 00 52 e3                                      cmp r2, #0
005b2ea4  00 00 00 0a                                      beq #0x5b2eac
005b2ea8  70 80 bd e8                                      pop {r4, r5, r6, pc}
005b2eac  01 20 a0 e3                                      mov r2, #1
005b2eb0  a0 24 c3 e5                                      strb r2, [r3, #0x4a0]
005b2eb4  08 20 94 e5                                      ldr r2, [r4, #8]
005b2eb8  d0 30 9f e5                                      ldr r3, [pc, #0xd0]
005b2ebc  dc 21 92 e5                                      ldr r2, [r2, #0x1dc]
005b2ec0  03 30 8f e0                                      add r3, pc, r3
005b2ec4  01 20 62 e2                                      rsb r2, r2, #1
005b2ec8  02 31 83 e0                                      add r3, r3, r2, lsl #2
005b2ecc  9c 00 93 e5                                      ldr r0, [r3, #0x9c]
005b2ed0  e8 6b f5 eb                                      bl #0x30de78
005b2ed4  08 30 94 e5                                      ldr r3, [r4, #8]
005b2ed8  02 10 a0 e3                                      mov r1, #2
005b2edc  03 00 a0 e1                                      mov r0, r3
005b2ee0  00 30 93 e5                                      ldr r3, [r3]
005b2ee4  0f e0 a0 e1                                      mov lr, pc
005b2ee8  70 f0 93 e5                                      ldr pc, [r3, #0x70]
005b2eec  08 30 94 e5                                      ldr r3, [r4, #8]
005b2ef0  00 20 a0 e1                                      mov r2, r0
005b2ef4  02 10 a0 e3                                      mov r1, #2
005b2ef8  03 00 a0 e1                                      mov r0, r3
005b2efc  00 30 93 e5                                      ldr r3, [r3]
005b2f00  0f e0 a0 e1                                      mov lr, pc
005b2f04  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
005b2f08  70 80 bd e8                                      pop {r4, r5, r6, pc}
005b2f0c  3f 30 d3 e5                                      ldrb r3, [r3, #0x3f]
005b2f10  d3 31 e0 e7                                      ubfx r3, r3, #3, #1
005b2f14  00 00 53 e3                                      cmp r3, #0
005b2f18  94 ff ff 1a                                      bne #0x5b2d70
005b2f1c  01 e0 a0 e3                                      mov lr, #1
005b2f20  9d ff ff ea                                      b #0x5b2d9c
005b2f24  3f 30 d3 e5                                      ldrb r3, [r3, #0x3f]
005b2f28  d3 31 e0 e7                                      ubfx r3, r3, #3, #1
005b2f2c  98 ff ff ea                                      b #0x5b2d94
005b2f30  24 10 84 e2                                      add r1, r4, #0x24
005b2f34  01 00 a0 e3                                      mov r0, #1
005b2f38  a9 6f f5 eb                                      bl #0x30ede4
005b2f3c  24 10 94 e5                                      ldr r1, [r4, #0x24]
005b2f40  9d ff ff ea                                      b #0x5b2dbc
005b2f44  48 00 9f e5                                      ldr r0, [pc, #0x48]
005b2f48  00 00 8f e0                                      add r0, pc, r0
005b2f4c  ca ff ff ea                                      b #0x5b2e7c
005b2f50  40 00 9f e5                                      ldr r0, [pc, #0x40]
005b2f54  00 00 8f e0                                      add r0, pc, r0
005b2f58  c7 ff ff ea                                      b #0x5b2e7c
005b2f5c  38 00 9f e5                                      ldr r0, [pc, #0x38]
005b2f60  00 00 8f e0                                      add r0, pc, r0
005b2f64  c4 ff ff ea                                      b #0x5b2e7c
005b2f68  30 00 9f e5                                      ldr r0, [pc, #0x30]
005b2f6c  00 00 8f e0                                      add r0, pc, r0
005b2f70  c1 ff ff ea                                      b #0x5b2e7c
005b2f74  28 00 9f e5                                      ldr r0, [pc, #0x28]
005b2f78  00 00 8f e0                                      add r0, pc, r0
005b2f7c  be ff ff ea                                      b #0x5b2e7c
005b2f80  20 00 9f e5                                      ldr r0, [pc, #0x20]
005b2f84  00 00 8f e0                                      add r0, pc, r0
005b2f88  bb ff ff ea                                      b #0x5b2e7c
; mapping-symbol data/literal pool
005b2f8c  d8 d6 32 00 74 d1 32 00 70 d5 32 00 84 d5 32 00  .byte 0xd8, 0xd6, 0x32, 0x00, 0x74, 0xd1, 0x32, 0x00, 0x70, 0xd5, 0x32, 0x00, 0x84, 0xd5, 0x32, 0x00
005b2f9c  98 d5 32 00 b4 d5 32 00 00 d6 32 00 b4 d5 32 00  .byte 0x98, 0xd5, 0x32, 0x00, 0xb4, 0xd5, 0x32, 0x00, 0x00, 0xd6, 0x32, 0x00, 0xb4, 0xd5, 0x32, 0x00

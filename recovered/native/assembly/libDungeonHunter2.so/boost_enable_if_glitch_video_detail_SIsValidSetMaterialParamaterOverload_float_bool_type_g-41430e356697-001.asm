; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005bf288, declared_size=216, range_size=216, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<float>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE15getParameterCvtIfEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRSB_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<float>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt<float>(unsigned short, unsigned int, float&) const
; decoder-mode: arm
005bf288  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005bf28c  18 40 90 e5                                      ldr r4, [r0, #0x18]
005bf290  1c 50 90 e5                                      ldr r5, [r0, #0x1c]
005bf294  b8 c0 9f e5                                      ldr ip, [pc, #0xb8]
005bf298  03 70 a0 e1                                      mov r7, r3
005bf29c  05 50 64 e0                                      rsb r5, r4, r5
005bf2a0  45 51 a0 e1                                      asr r5, r5, #2
005bf2a4  0c c0 8f e0                                      add ip, pc, ip
005bf2a8  85 60 85 e0                                      add r6, r5, r5, lsl #1
005bf2ac  06 62 86 e0                                      add r6, r6, r6, lsl #4
005bf2b0  06 64 86 e0                                      add r6, r6, r6, lsl #8
005bf2b4  06 68 86 e0                                      add r6, r6, r6, lsl #16
005bf2b8  06 51 85 e0                                      add r5, r5, r6, lsl #2
005bf2bc  05 00 51 e1                                      cmp r1, r5
005bf2c0  1c 00 00 2a                                      bhs #0x5bf338
005bf2c4  14 30 a0 e3                                      mov r3, #0x14
005bf2c8  93 41 24 e0                                      mla r4, r3, r1, r4
005bf2cc  00 30 94 e5                                      ldr r3, [r4]
005bf2d0  00 00 53 e3                                      cmp r3, #0
005bf2d4  10 00 00 0a                                      beq #0x5bf31c
005bf2d8  78 30 9f e5                                      ldr r3, [pc, #0x78]
005bf2dc  06 50 d4 e5                                      ldrb r5, [r4, #6]
005bf2e0  03 30 9c e7                                      ldr r3, [ip, r3]
005bf2e4  05 31 93 e7                                      ldr r3, [r3, r5, lsl #2]
005bf2e8  20 00 13 e3                                      tst r3, #0x20
005bf2ec  0a 00 00 0a                                      beq #0x5bf31c
005bf2f0  08 30 94 e5                                      ldr r3, [r4, #8]
005bf2f4  03 00 52 e1                                      cmp r2, r3
005bf2f8  07 00 00 2a                                      bhs #0x5bf31c
005bf2fc  01 00 55 e3                                      cmp r5, #1
005bf300  2c 20 90 e5                                      ldr r2, [r0, #0x2c]
005bf304  0c 30 94 e5                                      ldr r3, [r4, #0xc]
005bf308  05 00 00 0a                                      beq #0x5bf324
005bf30c  05 00 55 e3                                      cmp r5, #5
005bf310  0b 00 00 0a                                      beq #0x5bf344
005bf314  01 00 a0 e3                                      mov r0, #1
005bf318  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005bf31c  00 00 a0 e3                                      mov r0, #0
005bf320  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005bf324  03 00 92 e7                                      ldr r0, [r2, r3]
005bf328  8d 3d f5 eb                                      bl #0x30e964
005bf32c  00 00 87 e5                                      str r0, [r7]
005bf330  05 00 a0 e1                                      mov r0, r5
005bf334  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005bf338  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
005bf33c  03 40 9c e7                                      ldr r4, [ip, r3]
005bf340  e1 ff ff ea                                      b #0x5bf2cc
005bf344  03 30 92 e7                                      ldr r3, [r2, r3]
005bf348  01 00 a0 e3                                      mov r0, #1
005bf34c  00 30 87 e5                                      str r3, [r7]
005bf350  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
005bf354  ec 57 3d 00 a4 2c 00 00 14 28 00 00              .byte 0xec, 0x57, 0x3d, 0x00, 0xa4, 0x2c, 0x00, 0x00, 0x14, 0x28, 0x00, 0x00

; FUNCTION 0x005bfabc, declared_size=160, range_size=160, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<float>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE12getParameterIfEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRSB_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<float>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter<float>(unsigned short, unsigned int, float&) const
; decoder-mode: arm
005bfabc  70 00 2d e9                                      push {r4, r5, r6}
005bfac0  18 40 90 e5                                      ldr r4, [r0, #0x18]
005bfac4  1c 50 90 e5                                      ldr r5, [r0, #0x1c]
005bfac8  84 c0 9f e5                                      ldr ip, [pc, #0x84]
005bfacc  05 50 64 e0                                      rsb r5, r4, r5
005bfad0  45 51 a0 e1                                      asr r5, r5, #2
005bfad4  0c c0 8f e0                                      add ip, pc, ip
005bfad8  85 60 85 e0                                      add r6, r5, r5, lsl #1
005bfadc  06 62 86 e0                                      add r6, r6, r6, lsl #4
005bfae0  06 64 86 e0                                      add r6, r6, r6, lsl #8
005bfae4  06 68 86 e0                                      add r6, r6, r6, lsl #16
005bfae8  06 51 85 e0                                      add r5, r5, r6, lsl #2
005bfaec  05 00 51 e1                                      cmp r1, r5
005bfaf0  14 00 00 2a                                      bhs #0x5bfb48
005bfaf4  14 c0 a0 e3                                      mov ip, #0x14
005bfaf8  9c 41 24 e0                                      mla r4, ip, r1, r4
005bfafc  00 10 94 e5                                      ldr r1, [r4]
005bfb00  00 00 51 e3                                      cmp r1, #0
005bfb04  02 00 00 0a                                      beq #0x5bfb14
005bfb08  06 10 d4 e5                                      ldrb r1, [r4, #6]
005bfb0c  05 00 51 e3                                      cmp r1, #5
005bfb10  02 00 00 0a                                      beq #0x5bfb20
005bfb14  00 00 a0 e3                                      mov r0, #0
005bfb18  70 00 bd e8                                      pop {r4, r5, r6}
005bfb1c  1e ff 2f e1                                      bx lr
005bfb20  08 10 94 e5                                      ldr r1, [r4, #8]
005bfb24  01 00 52 e1                                      cmp r2, r1
005bfb28  f9 ff ff 2a                                      bhs #0x5bfb14
005bfb2c  0c c0 94 e5                                      ldr ip, [r4, #0xc]
005bfb30  2c 10 90 e5                                      ldr r1, [r0, #0x2c]
005bfb34  01 00 a0 e3                                      mov r0, #1
005bfb38  02 21 8c e0                                      add r2, ip, r2, lsl #2
005bfb3c  02 20 91 e7                                      ldr r2, [r1, r2]
005bfb40  00 20 83 e5                                      str r2, [r3]
005bfb44  f3 ff ff ea                                      b #0x5bfb18
005bfb48  08 10 9f e5                                      ldr r1, [pc, #8]
005bfb4c  01 40 9c e7                                      ldr r4, [ip, r1]
005bfb50  e9 ff ff ea                                      b #0x5bfafc
; mapping-symbol data/literal pool
005bfb54  bc 4f 3d 00 14 28 00 00                          .byte 0xbc, 0x4f, 0x3d, 0x00, 0x14, 0x28, 0x00, 0x00

; FUNCTION 0x005c0480, declared_size=224, range_size=224, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<float>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE12setParameterIfEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPKSB_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<float>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<float>(unsigned short, float const*, int)
; decoder-mode: arm
005c0480  70 40 2d e9                                      push {r4, r5, r6, lr}
005c0484  18 40 90 e5                                      ldr r4, [r0, #0x18]
005c0488  1c 50 90 e5                                      ldr r5, [r0, #0x1c]
005c048c  c4 c0 9f e5                                      ldr ip, [pc, #0xc4]
005c0490  05 50 64 e0                                      rsb r5, r4, r5
005c0494  45 51 a0 e1                                      asr r5, r5, #2
005c0498  0c c0 8f e0                                      add ip, pc, ip
005c049c  85 60 85 e0                                      add r6, r5, r5, lsl #1
005c04a0  06 62 86 e0                                      add r6, r6, r6, lsl #4
005c04a4  06 64 86 e0                                      add r6, r6, r6, lsl #8
005c04a8  06 68 86 e0                                      add r6, r6, r6, lsl #16
005c04ac  06 51 85 e0                                      add r5, r5, r6, lsl #2
005c04b0  05 00 51 e1                                      cmp r1, r5
005c04b4  09 00 00 2a                                      bhs #0x5c04e0
005c04b8  14 c0 a0 e3                                      mov ip, #0x14
005c04bc  9c 41 24 e0                                      mla r4, ip, r1, r4
005c04c0  00 10 94 e5                                      ldr r1, [r4]
005c04c4  00 00 51 e3                                      cmp r1, #0
005c04c8  02 00 00 0a                                      beq #0x5c04d8
005c04cc  06 10 d4 e5                                      ldrb r1, [r4, #6]
005c04d0  05 00 51 e3                                      cmp r1, #5
005c04d4  04 00 00 0a                                      beq #0x5c04ec
005c04d8  00 00 a0 e3                                      mov r0, #0
005c04dc  70 80 bd e8                                      pop {r4, r5, r6, pc}
005c04e0  74 10 9f e5                                      ldr r1, [pc, #0x74]
005c04e4  01 40 9c e7                                      ldr r4, [ip, r1]
005c04e8  f4 ff ff ea                                      b #0x5c04c0
005c04ec  00 00 53 e3                                      cmp r3, #0
005c04f0  04 00 53 13                                      cmpne r3, #4
005c04f4  00 10 a0 13                                      movne r1, #0
005c04f8  01 10 a0 03                                      moveq r1, #1
005c04fc  0c 00 00 0a                                      beq #0x5c0534
005c0500  08 c0 94 e5                                      ldr ip, [r4, #8]
005c0504  2c 50 90 e5                                      ldr r5, [r0, #0x2c]
005c0508  0c 00 94 e5                                      ldr r0, [r4, #0xc]
005c050c  00 00 5c e3                                      cmp ip, #0
005c0510  05 00 00 0a                                      beq #0x5c052c
005c0514  00 40 85 e0                                      add r4, r5, r0
005c0518  03 00 92 e6                                      ldr r0, [r2], r3
005c051c  01 01 84 e7                                      str r0, [r4, r1, lsl #2]
005c0520  01 10 81 e2                                      add r1, r1, #1
005c0524  01 00 5c e1                                      cmp ip, r1
005c0528  fa ff ff 1a                                      bne #0x5c0518
005c052c  01 00 a0 e3                                      mov r0, #1
005c0530  70 80 bd e8                                      pop {r4, r5, r6, pc}
005c0534  2c 00 90 e5                                      ldr r0, [r0, #0x2c]
005c0538  08 c0 94 e5                                      ldr ip, [r4, #8]
005c053c  0c 30 94 e5                                      ldr r3, [r4, #0xc]
005c0540  02 10 a0 e1                                      mov r1, r2
005c0544  0c 21 a0 e1                                      lsl r2, ip, #2
005c0548  03 00 80 e0                                      add r0, r0, r3
005c054c  c5 38 f5 eb                                      bl #0x30e868
005c0550  01 00 a0 e3                                      mov r0, #1
005c0554  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005c0558  f8 45 3d 00 14 28 00 00                          .byte 0xf8, 0x45, 0x3d, 0x00, 0x14, 0x28, 0x00, 0x00

; FUNCTION 0x005c1bbc, declared_size=332, range_size=332, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<float>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE15getParameterCvtIfEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPSB_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<float>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt<float>(unsigned short, float*, int) const
; decoder-mode: arm
005c1bbc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005c1bc0  18 40 90 e5                                      ldr r4, [r0, #0x18]
005c1bc4  1c 50 90 e5                                      ldr r5, [r0, #0x1c]
005c1bc8  2c c1 9f e5                                      ldr ip, [pc, #0x12c]
005c1bcc  02 60 a0 e1                                      mov r6, r2
005c1bd0  05 50 64 e0                                      rsb r5, r4, r5
005c1bd4  45 51 a0 e1                                      asr r5, r5, #2
005c1bd8  0c c0 8f e0                                      add ip, pc, ip
005c1bdc  85 70 85 e0                                      add r7, r5, r5, lsl #1
005c1be0  03 80 a0 e1                                      mov r8, r3
005c1be4  07 72 87 e0                                      add r7, r7, r7, lsl #4
005c1be8  07 74 87 e0                                      add r7, r7, r7, lsl #8
005c1bec  07 78 87 e0                                      add r7, r7, r7, lsl #16
005c1bf0  07 51 85 e0                                      add r5, r5, r7, lsl #2
005c1bf4  05 00 51 e1                                      cmp r1, r5
005c1bf8  17 00 00 2a                                      bhs #0x5c1c5c
005c1bfc  14 30 a0 e3                                      mov r3, #0x14
005c1c00  93 41 24 e0                                      mla r4, r3, r1, r4
005c1c04  00 30 94 e5                                      ldr r3, [r4]
005c1c08  00 00 53 e3                                      cmp r3, #0
005c1c0c  10 00 00 0a                                      beq #0x5c1c54
005c1c10  e8 20 9f e5                                      ldr r2, [pc, #0xe8]
005c1c14  06 30 d4 e5                                      ldrb r3, [r4, #6]
005c1c18  02 20 9c e7                                      ldr r2, [ip, r2]
005c1c1c  03 21 92 e7                                      ldr r2, [r2, r3, lsl #2]
005c1c20  20 00 12 e3                                      tst r2, #0x20
005c1c24  0a 00 00 0a                                      beq #0x5c1c54
005c1c28  01 20 78 e2                                      rsbs r2, r8, #1
005c1c2c  00 20 a0 33                                      movlo r2, #0
005c1c30  00 00 58 e3                                      cmp r8, #0
005c1c34  04 00 58 13                                      cmpne r8, #4
005c1c38  0a 00 00 1a                                      bne #0x5c1c68
005c1c3c  05 00 53 e3                                      cmp r3, #5
005c1c40  24 00 00 0a                                      beq #0x5c1cd8
005c1c44  00 00 52 e3                                      cmp r2, #0
005c1c48  06 00 00 0a                                      beq #0x5c1c68
005c1c4c  01 00 a0 e3                                      mov r0, #1
005c1c50  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005c1c54  00 00 a0 e3                                      mov r0, #0
005c1c58  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005c1c5c  a0 30 9f e5                                      ldr r3, [pc, #0xa0]
005c1c60  03 40 9c e7                                      ldr r4, [ip, r3]
005c1c64  e6 ff ff ea                                      b #0x5c1c04
005c1c68  2c 50 90 e5                                      ldr r5, [r0, #0x2c]
005c1c6c  0c 20 94 e5                                      ldr r2, [r4, #0xc]
005c1c70  01 00 53 e3                                      cmp r3, #1
005c1c74  02 50 85 e0                                      add r5, r5, r2
005c1c78  0b 00 00 0a                                      beq #0x5c1cac
005c1c7c  05 00 53 e3                                      cmp r3, #5
005c1c80  f1 ff ff 1a                                      bne #0x5c1c4c
005c1c84  08 10 94 e5                                      ldr r1, [r4, #8]
005c1c88  00 00 51 e3                                      cmp r1, #0
005c1c8c  ee ff ff 0a                                      beq #0x5c1c4c
005c1c90  00 30 a0 e3                                      mov r3, #0
005c1c94  03 21 95 e7                                      ldr r2, [r5, r3, lsl #2]
005c1c98  01 30 83 e2                                      add r3, r3, #1
005c1c9c  03 00 51 e1                                      cmp r1, r3
005c1ca0  08 20 86 e6                                      str r2, [r6], r8
005c1ca4  fa ff ff 1a                                      bne #0x5c1c94
005c1ca8  e7 ff ff ea                                      b #0x5c1c4c
005c1cac  08 70 94 e5                                      ldr r7, [r4, #8]
005c1cb0  00 00 57 e3                                      cmp r7, #0
005c1cb4  e4 ff ff 0a                                      beq #0x5c1c4c
005c1cb8  00 40 a0 e3                                      mov r4, #0
005c1cbc  04 01 95 e7                                      ldr r0, [r5, r4, lsl #2]
005c1cc0  27 33 f5 eb                                      bl #0x30e964
005c1cc4  01 40 84 e2                                      add r4, r4, #1
005c1cc8  07 00 54 e1                                      cmp r4, r7
005c1ccc  08 00 86 e6                                      str r0, [r6], r8
005c1cd0  f9 ff ff 1a                                      bne #0x5c1cbc
005c1cd4  dc ff ff ea                                      b #0x5c1c4c
005c1cd8  2c 10 90 e5                                      ldr r1, [r0, #0x2c]
005c1cdc  0c 30 94 e5                                      ldr r3, [r4, #0xc]
005c1ce0  08 20 94 e5                                      ldr r2, [r4, #8]
005c1ce4  06 00 a0 e1                                      mov r0, r6
005c1ce8  03 10 81 e0                                      add r1, r1, r3
005c1cec  02 21 a0 e1                                      lsl r2, r2, #2
005c1cf0  dc 32 f5 eb                                      bl #0x30e868
005c1cf4  01 00 a0 e3                                      mov r0, #1
005c1cf8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
005c1cfc  b8 2e 3d 00 a4 2c 00 00 14 28 00 00              .byte 0xb8, 0x2e, 0x3d, 0x00, 0xa4, 0x2c, 0x00, 0x00, 0x14, 0x28, 0x00, 0x00

; FUNCTION 0x005c28c4, declared_size=224, range_size=224, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<float>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE12getParameterIfEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPSB_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<float>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter<float>(unsigned short, float*, int) const
; decoder-mode: arm
005c28c4  70 40 2d e9                                      push {r4, r5, r6, lr}
005c28c8  18 40 90 e5                                      ldr r4, [r0, #0x18]
005c28cc  1c 50 90 e5                                      ldr r5, [r0, #0x1c]
005c28d0  c4 c0 9f e5                                      ldr ip, [pc, #0xc4]
005c28d4  05 50 64 e0                                      rsb r5, r4, r5
005c28d8  45 51 a0 e1                                      asr r5, r5, #2
005c28dc  0c c0 8f e0                                      add ip, pc, ip
005c28e0  85 60 85 e0                                      add r6, r5, r5, lsl #1
005c28e4  06 62 86 e0                                      add r6, r6, r6, lsl #4
005c28e8  06 64 86 e0                                      add r6, r6, r6, lsl #8
005c28ec  06 68 86 e0                                      add r6, r6, r6, lsl #16
005c28f0  06 51 85 e0                                      add r5, r5, r6, lsl #2
005c28f4  05 00 51 e1                                      cmp r1, r5
005c28f8  09 00 00 2a                                      bhs #0x5c2924
005c28fc  14 c0 a0 e3                                      mov ip, #0x14
005c2900  9c 41 24 e0                                      mla r4, ip, r1, r4
005c2904  00 10 94 e5                                      ldr r1, [r4]
005c2908  00 00 51 e3                                      cmp r1, #0
005c290c  02 00 00 0a                                      beq #0x5c291c
005c2910  06 10 d4 e5                                      ldrb r1, [r4, #6]
005c2914  05 00 51 e3                                      cmp r1, #5
005c2918  04 00 00 0a                                      beq #0x5c2930
005c291c  00 00 a0 e3                                      mov r0, #0
005c2920  70 80 bd e8                                      pop {r4, r5, r6, pc}
005c2924  74 10 9f e5                                      ldr r1, [pc, #0x74]
005c2928  01 40 9c e7                                      ldr r4, [ip, r1]
005c292c  f4 ff ff ea                                      b #0x5c2904
005c2930  00 00 53 e3                                      cmp r3, #0
005c2934  04 00 53 13                                      cmpne r3, #4
005c2938  00 10 a0 13                                      movne r1, #0
005c293c  01 10 a0 03                                      moveq r1, #1
005c2940  0c 00 00 0a                                      beq #0x5c2978
005c2944  08 c0 94 e5                                      ldr ip, [r4, #8]
005c2948  2c 50 90 e5                                      ldr r5, [r0, #0x2c]
005c294c  0c 00 94 e5                                      ldr r0, [r4, #0xc]
005c2950  00 00 5c e3                                      cmp ip, #0
005c2954  05 00 00 0a                                      beq #0x5c2970
005c2958  00 40 85 e0                                      add r4, r5, r0
005c295c  01 01 94 e7                                      ldr r0, [r4, r1, lsl #2]
005c2960  01 10 81 e2                                      add r1, r1, #1
005c2964  01 00 5c e1                                      cmp ip, r1
005c2968  03 00 82 e6                                      str r0, [r2], r3
005c296c  fa ff ff 1a                                      bne #0x5c295c
005c2970  01 00 a0 e3                                      mov r0, #1
005c2974  70 80 bd e8                                      pop {r4, r5, r6, pc}
005c2978  2c c0 90 e5                                      ldr ip, [r0, #0x2c]
005c297c  0c 10 94 e5                                      ldr r1, [r4, #0xc]
005c2980  08 30 94 e5                                      ldr r3, [r4, #8]
005c2984  02 00 a0 e1                                      mov r0, r2
005c2988  01 10 8c e0                                      add r1, ip, r1
005c298c  03 21 a0 e1                                      lsl r2, r3, #2
005c2990  b4 2f f5 eb                                      bl #0x30e868
005c2994  01 00 a0 e3                                      mov r0, #1
005c2998  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005c299c  b4 21 3d 00 14 28 00 00                          .byte 0xb4, 0x21, 0x3d, 0x00, 0x14, 0x28, 0x00, 0x00

; FUNCTION 0x005c3764, declared_size=332, range_size=332, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<float>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE15setParameterCvtIfEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPKSB_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<float>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt<float>(unsigned short, float const*, int)
; decoder-mode: arm
005c3764  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005c3768  18 40 90 e5                                      ldr r4, [r0, #0x18]
005c376c  1c 50 90 e5                                      ldr r5, [r0, #0x1c]
005c3770  2c c1 9f e5                                      ldr ip, [pc, #0x12c]
005c3774  02 60 a0 e1                                      mov r6, r2
005c3778  05 50 64 e0                                      rsb r5, r4, r5
005c377c  45 51 a0 e1                                      asr r5, r5, #2
005c3780  0c c0 8f e0                                      add ip, pc, ip
005c3784  85 70 85 e0                                      add r7, r5, r5, lsl #1
005c3788  03 80 a0 e1                                      mov r8, r3
005c378c  07 72 87 e0                                      add r7, r7, r7, lsl #4
005c3790  07 74 87 e0                                      add r7, r7, r7, lsl #8
005c3794  07 78 87 e0                                      add r7, r7, r7, lsl #16
005c3798  07 51 85 e0                                      add r5, r5, r7, lsl #2
005c379c  05 00 51 e1                                      cmp r1, r5
005c37a0  17 00 00 2a                                      bhs #0x5c3804
005c37a4  14 30 a0 e3                                      mov r3, #0x14
005c37a8  93 41 24 e0                                      mla r4, r3, r1, r4
005c37ac  00 30 94 e5                                      ldr r3, [r4]
005c37b0  00 00 53 e3                                      cmp r3, #0
005c37b4  10 00 00 0a                                      beq #0x5c37fc
005c37b8  e8 20 9f e5                                      ldr r2, [pc, #0xe8]
005c37bc  06 30 d4 e5                                      ldrb r3, [r4, #6]
005c37c0  02 20 9c e7                                      ldr r2, [ip, r2]
005c37c4  03 21 92 e7                                      ldr r2, [r2, r3, lsl #2]
005c37c8  20 00 12 e3                                      tst r2, #0x20
005c37cc  0a 00 00 0a                                      beq #0x5c37fc
005c37d0  01 20 78 e2                                      rsbs r2, r8, #1
005c37d4  00 20 a0 33                                      movlo r2, #0
005c37d8  00 00 58 e3                                      cmp r8, #0
005c37dc  04 00 58 13                                      cmpne r8, #4
005c37e0  0a 00 00 1a                                      bne #0x5c3810
005c37e4  05 00 53 e3                                      cmp r3, #5
005c37e8  24 00 00 0a                                      beq #0x5c3880
005c37ec  00 00 52 e3                                      cmp r2, #0
005c37f0  06 00 00 0a                                      beq #0x5c3810
005c37f4  01 00 a0 e3                                      mov r0, #1
005c37f8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005c37fc  00 00 a0 e3                                      mov r0, #0
005c3800  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005c3804  a0 30 9f e5                                      ldr r3, [pc, #0xa0]
005c3808  03 40 9c e7                                      ldr r4, [ip, r3]
005c380c  e6 ff ff ea                                      b #0x5c37ac
005c3810  2c 50 90 e5                                      ldr r5, [r0, #0x2c]
005c3814  0c 20 94 e5                                      ldr r2, [r4, #0xc]
005c3818  01 00 53 e3                                      cmp r3, #1
005c381c  02 50 85 e0                                      add r5, r5, r2
005c3820  0b 00 00 0a                                      beq #0x5c3854
005c3824  05 00 53 e3                                      cmp r3, #5
005c3828  f1 ff ff 1a                                      bne #0x5c37f4
005c382c  08 10 94 e5                                      ldr r1, [r4, #8]
005c3830  00 00 51 e3                                      cmp r1, #0
005c3834  ee ff ff 0a                                      beq #0x5c37f4
005c3838  00 30 a0 e3                                      mov r3, #0
005c383c  08 20 96 e6                                      ldr r2, [r6], r8
005c3840  03 21 85 e7                                      str r2, [r5, r3, lsl #2]
005c3844  01 30 83 e2                                      add r3, r3, #1
005c3848  03 00 51 e1                                      cmp r1, r3
005c384c  fa ff ff 1a                                      bne #0x5c383c
005c3850  e7 ff ff ea                                      b #0x5c37f4
005c3854  08 70 94 e5                                      ldr r7, [r4, #8]
005c3858  00 00 57 e3                                      cmp r7, #0
005c385c  e4 ff ff 0a                                      beq #0x5c37f4
005c3860  00 40 a0 e3                                      mov r4, #0
005c3864  08 00 96 e6                                      ldr r0, [r6], r8
005c3868  17 2b f5 eb                                      bl #0x30e4cc
005c386c  04 01 85 e7                                      str r0, [r5, r4, lsl #2]
005c3870  01 40 84 e2                                      add r4, r4, #1
005c3874  07 00 54 e1                                      cmp r4, r7
005c3878  f9 ff ff 1a                                      bne #0x5c3864
005c387c  dc ff ff ea                                      b #0x5c37f4
005c3880  2c 00 90 e5                                      ldr r0, [r0, #0x2c]
005c3884  08 20 94 e5                                      ldr r2, [r4, #8]
005c3888  0c 30 94 e5                                      ldr r3, [r4, #0xc]
005c388c  06 10 a0 e1                                      mov r1, r6
005c3890  02 21 a0 e1                                      lsl r2, r2, #2
005c3894  03 00 80 e0                                      add r0, r0, r3
005c3898  f2 2b f5 eb                                      bl #0x30e868
005c389c  01 00 a0 e3                                      mov r0, #1
005c38a0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
005c38a4  10 13 3d 00 a4 2c 00 00 14 28 00 00              .byte 0x10, 0x13, 0x3d, 0x00, 0xa4, 0x2c, 0x00, 0x00, 0x14, 0x28, 0x00, 0x00

; FUNCTION 0x005c4358, declared_size=212, range_size=212, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<float>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE15setParameterCvtIfEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSB_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<float>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt<float>(unsigned short, unsigned int, float const&)
; decoder-mode: arm
005c4358  70 40 2d e9                                      push {r4, r5, r6, lr}
005c435c  18 40 90 e5                                      ldr r4, [r0, #0x18]
005c4360  1c 50 90 e5                                      ldr r5, [r0, #0x1c]
005c4364  b4 c0 9f e5                                      ldr ip, [pc, #0xb4]
005c4368  05 50 64 e0                                      rsb r5, r4, r5
005c436c  45 51 a0 e1                                      asr r5, r5, #2
005c4370  0c c0 8f e0                                      add ip, pc, ip
005c4374  85 60 85 e0                                      add r6, r5, r5, lsl #1
005c4378  06 62 86 e0                                      add r6, r6, r6, lsl #4
005c437c  06 64 86 e0                                      add r6, r6, r6, lsl #8
005c4380  06 68 86 e0                                      add r6, r6, r6, lsl #16
005c4384  06 51 85 e0                                      add r5, r5, r6, lsl #2
005c4388  05 00 51 e1                                      cmp r1, r5
005c438c  1c 00 00 2a                                      bhs #0x5c4404
005c4390  14 50 a0 e3                                      mov r5, #0x14
005c4394  95 41 24 e0                                      mla r4, r5, r1, r4
005c4398  00 10 94 e5                                      ldr r1, [r4]
005c439c  00 00 51 e3                                      cmp r1, #0
005c43a0  10 00 00 0a                                      beq #0x5c43e8
005c43a4  78 10 9f e5                                      ldr r1, [pc, #0x78]
005c43a8  06 50 d4 e5                                      ldrb r5, [r4, #6]
005c43ac  01 10 9c e7                                      ldr r1, [ip, r1]
005c43b0  05 11 91 e7                                      ldr r1, [r1, r5, lsl #2]
005c43b4  20 00 11 e3                                      tst r1, #0x20
005c43b8  0a 00 00 0a                                      beq #0x5c43e8
005c43bc  08 10 94 e5                                      ldr r1, [r4, #8]
005c43c0  01 00 52 e1                                      cmp r2, r1
005c43c4  07 00 00 2a                                      bhs #0x5c43e8
005c43c8  01 00 55 e3                                      cmp r5, #1
005c43cc  2c 60 90 e5                                      ldr r6, [r0, #0x2c]
005c43d0  0c 40 94 e5                                      ldr r4, [r4, #0xc]
005c43d4  05 00 00 0a                                      beq #0x5c43f0
005c43d8  05 00 55 e3                                      cmp r5, #5
005c43dc  0b 00 00 0a                                      beq #0x5c4410
005c43e0  01 00 a0 e3                                      mov r0, #1
005c43e4  70 80 bd e8                                      pop {r4, r5, r6, pc}
005c43e8  00 00 a0 e3                                      mov r0, #0
005c43ec  70 80 bd e8                                      pop {r4, r5, r6, pc}
005c43f0  00 00 93 e5                                      ldr r0, [r3]
005c43f4  34 28 f5 eb                                      bl #0x30e4cc
005c43f8  04 00 86 e7                                      str r0, [r6, r4]
005c43fc  05 00 a0 e1                                      mov r0, r5
005c4400  70 80 bd e8                                      pop {r4, r5, r6, pc}
005c4404  1c 10 9f e5                                      ldr r1, [pc, #0x1c]
005c4408  01 40 9c e7                                      ldr r4, [ip, r1]
005c440c  e1 ff ff ea                                      b #0x5c4398
005c4410  00 30 93 e5                                      ldr r3, [r3]
005c4414  01 00 a0 e3                                      mov r0, #1
005c4418  04 30 86 e7                                      str r3, [r6, r4]
005c441c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005c4420  20 07 3d 00 a4 2c 00 00 14 28 00 00              .byte 0x20, 0x07, 0x3d, 0x00, 0xa4, 0x2c, 0x00, 0x00, 0x14, 0x28, 0x00, 0x00

; FUNCTION 0x005c4bb0, declared_size=160, range_size=160, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<float>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE12setParameterIfEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSB_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<float>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<float>(unsigned short, unsigned int, float const&)
; decoder-mode: arm
005c4bb0  70 00 2d e9                                      push {r4, r5, r6}
005c4bb4  18 40 90 e5                                      ldr r4, [r0, #0x18]
005c4bb8  1c 50 90 e5                                      ldr r5, [r0, #0x1c]
005c4bbc  84 c0 9f e5                                      ldr ip, [pc, #0x84]
005c4bc0  05 50 64 e0                                      rsb r5, r4, r5
005c4bc4  45 51 a0 e1                                      asr r5, r5, #2
005c4bc8  0c c0 8f e0                                      add ip, pc, ip
005c4bcc  85 60 85 e0                                      add r6, r5, r5, lsl #1
005c4bd0  06 62 86 e0                                      add r6, r6, r6, lsl #4
005c4bd4  06 64 86 e0                                      add r6, r6, r6, lsl #8
005c4bd8  06 68 86 e0                                      add r6, r6, r6, lsl #16
005c4bdc  06 51 85 e0                                      add r5, r5, r6, lsl #2
005c4be0  05 00 51 e1                                      cmp r1, r5
005c4be4  14 00 00 2a                                      bhs #0x5c4c3c
005c4be8  14 c0 a0 e3                                      mov ip, #0x14
005c4bec  9c 41 24 e0                                      mla r4, ip, r1, r4
005c4bf0  00 10 94 e5                                      ldr r1, [r4]
005c4bf4  00 00 51 e3                                      cmp r1, #0
005c4bf8  02 00 00 0a                                      beq #0x5c4c08
005c4bfc  06 10 d4 e5                                      ldrb r1, [r4, #6]
005c4c00  05 00 51 e3                                      cmp r1, #5
005c4c04  02 00 00 0a                                      beq #0x5c4c14
005c4c08  00 00 a0 e3                                      mov r0, #0
005c4c0c  70 00 bd e8                                      pop {r4, r5, r6}
005c4c10  1e ff 2f e1                                      bx lr
005c4c14  08 10 94 e5                                      ldr r1, [r4, #8]
005c4c18  01 00 52 e1                                      cmp r2, r1
005c4c1c  f9 ff ff 2a                                      bhs #0x5c4c08
005c4c20  0c c0 94 e5                                      ldr ip, [r4, #0xc]
005c4c24  2c 10 90 e5                                      ldr r1, [r0, #0x2c]
005c4c28  00 30 93 e5                                      ldr r3, [r3]
005c4c2c  02 21 8c e0                                      add r2, ip, r2, lsl #2
005c4c30  01 00 a0 e3                                      mov r0, #1
005c4c34  02 30 81 e7                                      str r3, [r1, r2]
005c4c38  f3 ff ff ea                                      b #0x5c4c0c
005c4c3c  08 10 9f e5                                      ldr r1, [pc, #8]
005c4c40  01 40 9c e7                                      ldr r4, [ip, r1]
005c4c44  e9 ff ff ea                                      b #0x5c4bf0
; mapping-symbol data/literal pool
005c4c48  c8 fe 3c 00 14 28 00 00                          .byte 0xc8, 0xfe, 0x3c, 0x00, 0x14, 0x28, 0x00, 0x00

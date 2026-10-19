; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005cf324, declared_size=112, range_size=112, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector4d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE12setParameterINS_4core8vector4dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector4d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::setParameter<glitch::core::vector4d<float> >(unsigned short, unsigned int, glitch::core::vector4d<float> const&)
; decoder-mode: arm
005cf324  be c0 d0 e1                                      ldrh ip, [r0, #0xe]
005cf328  01 00 5c e1                                      cmp ip, r1
005cf32c  05 00 00 9a                                      bls #0x5cf348
005cf330  20 c0 90 e5                                      ldr ip, [r0, #0x20]
005cf334  01 12 9c e0                                      adds r1, ip, r1, lsl #4
005cf338  02 00 00 0a                                      beq #0x5cf348
005cf33c  06 c0 d1 e5                                      ldrb ip, [r1, #6]
005cf340  08 00 5c e3                                      cmp ip, #8
005cf344  01 00 00 0a                                      beq #0x5cf350
005cf348  00 00 a0 e3                                      mov r0, #0
005cf34c  1e ff 2f e1                                      bx lr
005cf350  08 c0 91 e5                                      ldr ip, [r1, #8]
005cf354  0c 00 52 e1                                      cmp r2, ip
005cf358  fa ff ff 2a                                      bhs #0x5cf348
005cf35c  0c 10 91 e5                                      ldr r1, [r1, #0xc]
005cf360  24 00 90 e5                                      ldr r0, [r0, #0x24]
005cf364  00 c0 93 e5                                      ldr ip, [r3]
005cf368  02 22 81 e0                                      add r2, r1, r2, lsl #4
005cf36c  02 10 80 e0                                      add r1, r0, r2
005cf370  02 c0 80 e7                                      str ip, [r0, r2]
005cf374  04 20 93 e5                                      ldr r2, [r3, #4]
005cf378  01 00 a0 e3                                      mov r0, #1
005cf37c  04 20 81 e5                                      str r2, [r1, #4]
005cf380  08 20 93 e5                                      ldr r2, [r3, #8]
005cf384  08 20 81 e5                                      str r2, [r1, #8]
005cf388  0c 30 93 e5                                      ldr r3, [r3, #0xc]
005cf38c  0c 30 81 e5                                      str r3, [r1, #0xc]
005cf390  1e ff 2f e1                                      bx lr

; FUNCTION 0x005cf854, declared_size=324, range_size=324, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector4d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS_4core8vector4dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector4d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::setParameterCvt<glitch::core::vector4d<float> >(unsigned short, unsigned int, glitch::core::vector4d<float> const&)
; decoder-mode: arm
005cf854  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005cf858  be 40 d0 e1                                      ldrh r4, [r0, #0xe]
005cf85c  2c c1 9f e5                                      ldr ip, [pc, #0x12c]
005cf860  03 50 a0 e1                                      mov r5, r3
005cf864  01 00 54 e1                                      cmp r4, r1
005cf868  0c c0 8f e0                                      add ip, pc, ip
005cf86c  17 00 00 9a                                      bls #0x5cf8d0
005cf870  20 30 90 e5                                      ldr r3, [r0, #0x20]
005cf874  01 12 93 e0                                      adds r1, r3, r1, lsl #4
005cf878  14 00 00 0a                                      beq #0x5cf8d0
005cf87c  10 41 9f e5                                      ldr r4, [pc, #0x110]
005cf880  06 30 d1 e5                                      ldrb r3, [r1, #6]
005cf884  04 c0 9c e7                                      ldr ip, [ip, r4]
005cf888  03 c1 9c e7                                      ldr ip, [ip, r3, lsl #2]
005cf88c  01 0c 1c e3                                      tst ip, #0x100
005cf890  0e 00 00 0a                                      beq #0x5cf8d0
005cf894  08 c0 91 e5                                      ldr ip, [r1, #8]
005cf898  0c 00 52 e1                                      cmp r2, ip
005cf89c  0b 00 00 2a                                      bhs #0x5cf8d0
005cf8a0  24 70 90 e5                                      ldr r7, [r0, #0x24]
005cf8a4  0c 60 91 e5                                      ldr r6, [r1, #0xc]
005cf8a8  10 00 53 e3                                      cmp r3, #0x10
005cf8ac  06 40 87 e0                                      add r4, r7, r6
005cf8b0  09 00 00 0a                                      beq #0x5cf8dc
005cf8b4  11 00 53 e3                                      cmp r3, #0x11
005cf8b8  2f 00 00 0a                                      beq #0x5cf97c
005cf8bc  08 00 53 e3                                      cmp r3, #8
005cf8c0  22 00 00 0a                                      beq #0x5cf950
005cf8c4  01 c0 a0 e3                                      mov ip, #1
005cf8c8  0c 00 a0 e1                                      mov r0, ip
005cf8cc  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005cf8d0  00 c0 a0 e3                                      mov ip, #0
005cf8d4  0c 00 a0 e1                                      mov r0, ip
005cf8d8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005cf8dc  43 14 a0 e3                                      mov r1, #0x43000000
005cf8e0  0c 00 95 e5                                      ldr r0, [r5, #0xc]
005cf8e4  7f 18 81 e2                                      add r1, r1, #0x7f0000
005cf8e8  1f fd f4 eb                                      bl #0x30ed6c
005cf8ec  6b ba 0b eb                                      bl #0x8be2a0
005cf8f0  43 14 a0 e3                                      mov r1, #0x43000000
005cf8f4  7f 18 81 e2                                      add r1, r1, #0x7f0000
005cf8f8  70 a0 ef e6                                      uxtb sl, r0
005cf8fc  00 00 95 e5                                      ldr r0, [r5]
005cf900  19 fd f4 eb                                      bl #0x30ed6c
005cf904  65 ba 0b eb                                      bl #0x8be2a0
005cf908  43 14 a0 e3                                      mov r1, #0x43000000
005cf90c  7f 18 81 e2                                      add r1, r1, #0x7f0000
005cf910  70 80 ef e6                                      uxtb r8, r0
005cf914  04 00 95 e5                                      ldr r0, [r5, #4]
005cf918  13 fd f4 eb                                      bl #0x30ed6c
005cf91c  5f ba 0b eb                                      bl #0x8be2a0
005cf920  43 14 a0 e3                                      mov r1, #0x43000000
005cf924  70 90 ef e6                                      uxtb sb, r0
005cf928  7f 18 81 e2                                      add r1, r1, #0x7f0000
005cf92c  08 00 95 e5                                      ldr r0, [r5, #8]
005cf930  0d fd f4 eb                                      bl #0x30ed6c
005cf934  59 ba 0b eb                                      bl #0x8be2a0
005cf938  01 90 c4 e5                                      strb sb, [r4, #1]
005cf93c  03 a0 c4 e5                                      strb sl, [r4, #3]
005cf940  02 00 c4 e5                                      strb r0, [r4, #2]
005cf944  01 c0 a0 e3                                      mov ip, #1
005cf948  06 80 c7 e7                                      strb r8, [r7, r6]
005cf94c  dd ff ff ea                                      b #0x5cf8c8
005cf950  00 30 95 e5                                      ldr r3, [r5]
005cf954  01 c0 a0 e3                                      mov ip, #1
005cf958  0c 00 a0 e1                                      mov r0, ip
005cf95c  06 30 87 e7                                      str r3, [r7, r6]
005cf960  04 30 95 e5                                      ldr r3, [r5, #4]
005cf964  04 30 84 e5                                      str r3, [r4, #4]
005cf968  08 30 95 e5                                      ldr r3, [r5, #8]
005cf96c  08 30 84 e5                                      str r3, [r4, #8]
005cf970  0c 30 95 e5                                      ldr r3, [r5, #0xc]
005cf974  0c 30 84 e5                                      str r3, [r4, #0xc]
005cf978  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005cf97c  01 c0 a0 e3                                      mov ip, #1
005cf980  0f 00 95 e8                                      ldm r5, {r0, r1, r2, r3}
005cf984  0f 00 84 e8                                      stm r4, {r0, r1, r2, r3}
005cf988  0c 00 a0 e1                                      mov r0, ip
005cf98c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
005cf990  28 52 3c 00 a4 2c 00 00                          .byte 0x28, 0x52, 0x3c, 0x00, 0xa4, 0x2c, 0x00, 0x00

; FUNCTION 0x005cff40, declared_size=112, range_size=112, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector4d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE12getParameterINS_4core8vector4dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRSE_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector4d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::getParameter<glitch::core::vector4d<float> >(unsigned short, unsigned int, glitch::core::vector4d<float>&) const
; decoder-mode: arm
005cff40  be c0 d0 e1                                      ldrh ip, [r0, #0xe]
005cff44  01 00 5c e1                                      cmp ip, r1
005cff48  05 00 00 9a                                      bls #0x5cff64
005cff4c  20 c0 90 e5                                      ldr ip, [r0, #0x20]
005cff50  01 12 9c e0                                      adds r1, ip, r1, lsl #4
005cff54  02 00 00 0a                                      beq #0x5cff64
005cff58  06 c0 d1 e5                                      ldrb ip, [r1, #6]
005cff5c  08 00 5c e3                                      cmp ip, #8
005cff60  01 00 00 0a                                      beq #0x5cff6c
005cff64  00 00 a0 e3                                      mov r0, #0
005cff68  1e ff 2f e1                                      bx lr
005cff6c  08 c0 91 e5                                      ldr ip, [r1, #8]
005cff70  0c 00 52 e1                                      cmp r2, ip
005cff74  fa ff ff 2a                                      bhs #0x5cff64
005cff78  0c c0 91 e5                                      ldr ip, [r1, #0xc]
005cff7c  24 10 90 e5                                      ldr r1, [r0, #0x24]
005cff80  01 00 a0 e3                                      mov r0, #1
005cff84  02 22 8c e0                                      add r2, ip, r2, lsl #4
005cff88  02 c0 91 e7                                      ldr ip, [r1, r2]
005cff8c  02 20 81 e0                                      add r2, r1, r2
005cff90  00 c0 83 e5                                      str ip, [r3]
005cff94  04 10 92 e5                                      ldr r1, [r2, #4]
005cff98  04 10 83 e5                                      str r1, [r3, #4]
005cff9c  08 10 92 e5                                      ldr r1, [r2, #8]
005cffa0  08 10 83 e5                                      str r1, [r3, #8]
005cffa4  0c 20 92 e5                                      ldr r2, [r2, #0xc]
005cffa8  0c 20 83 e5                                      str r2, [r3, #0xc]
005cffac  1e ff 2f e1                                      bx lr

; FUNCTION 0x005d047c, declared_size=304, range_size=304, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector4d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE15getParameterCvtINS_4core8vector4dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRSE_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector4d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::getParameterCvt<glitch::core::vector4d<float> >(unsigned short, unsigned int, glitch::core::vector4d<float>&) const
; decoder-mode: arm
005d047c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
005d0480  be 40 d0 e1                                      ldrh r4, [r0, #0xe]
005d0484  18 c1 9f e5                                      ldr ip, [pc, #0x118]
005d0488  0c d0 4d e2                                      sub sp, sp, #0xc
005d048c  01 00 54 e1                                      cmp r4, r1
005d0490  0c c0 8f e0                                      add ip, pc, ip
005d0494  16 00 00 9a                                      bls #0x5d04f4
005d0498  20 40 90 e5                                      ldr r4, [r0, #0x20]
005d049c  01 12 94 e0                                      adds r1, r4, r1, lsl #4
005d04a0  13 00 00 0a                                      beq #0x5d04f4
005d04a4  fc 40 9f e5                                      ldr r4, [pc, #0xfc]
005d04a8  06 50 d1 e5                                      ldrb r5, [r1, #6]
005d04ac  04 c0 9c e7                                      ldr ip, [ip, r4]
005d04b0  05 c1 9c e7                                      ldr ip, [ip, r5, lsl #2]
005d04b4  01 0c 1c e3                                      tst ip, #0x100
005d04b8  0d 00 00 0a                                      beq #0x5d04f4
005d04bc  08 c0 91 e5                                      ldr ip, [r1, #8]
005d04c0  0c 00 52 e1                                      cmp r2, ip
005d04c4  0a 00 00 2a                                      bhs #0x5d04f4
005d04c8  24 00 90 e5                                      ldr r0, [r0, #0x24]
005d04cc  0c 20 91 e5                                      ldr r2, [r1, #0xc]
005d04d0  10 00 55 e3                                      cmp r5, #0x10
005d04d4  02 40 80 e0                                      add r4, r0, r2
005d04d8  08 00 00 0a                                      beq #0x5d0500
005d04dc  11 00 55 e3                                      cmp r5, #0x11
005d04e0  25 00 00 0a                                      beq #0x5d057c
005d04e4  08 00 55 e3                                      cmp r5, #8
005d04e8  23 00 00 0a                                      beq #0x5d057c
005d04ec  01 00 a0 e3                                      mov r0, #1
005d04f0  00 00 00 ea                                      b #0x5d04f8
005d04f4  00 00 a0 e3                                      mov r0, #0
005d04f8  0c d0 8d e2                                      add sp, sp, #0xc
005d04fc  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
005d0500  02 00 d0 e7                                      ldrb r0, [r0, r2]
005d0504  04 30 8d e5                                      str r3, [sp, #4]
005d0508  15 f9 f4 eb                                      bl #0x30e964
005d050c  81 10 08 e3                                      movw r1, #0x8081
005d0510  80 1b 43 e3                                      movt r1, #0x3b80
005d0514  14 fa f4 eb                                      bl #0x30ed6c
005d0518  00 70 a0 e1                                      mov r7, r0
005d051c  01 00 d4 e5                                      ldrb r0, [r4, #1]
005d0520  0f f9 f4 eb                                      bl #0x30e964
005d0524  81 10 08 e3                                      movw r1, #0x8081
005d0528  80 1b 43 e3                                      movt r1, #0x3b80
005d052c  0e fa f4 eb                                      bl #0x30ed6c
005d0530  00 50 a0 e1                                      mov r5, r0
005d0534  02 00 d4 e5                                      ldrb r0, [r4, #2]
005d0538  09 f9 f4 eb                                      bl #0x30e964
005d053c  81 10 08 e3                                      movw r1, #0x8081
005d0540  80 1b 43 e3                                      movt r1, #0x3b80
005d0544  08 fa f4 eb                                      bl #0x30ed6c
005d0548  00 60 a0 e1                                      mov r6, r0
005d054c  03 00 d4 e5                                      ldrb r0, [r4, #3]
005d0550  03 f9 f4 eb                                      bl #0x30e964
005d0554  81 10 08 e3                                      movw r1, #0x8081
005d0558  80 1b 43 e3                                      movt r1, #0x3b80
005d055c  02 fa f4 eb                                      bl #0x30ed6c
005d0560  04 30 9d e5                                      ldr r3, [sp, #4]
005d0564  0c 00 83 e5                                      str r0, [r3, #0xc]
005d0568  00 70 83 e5                                      str r7, [r3]
005d056c  08 60 83 e5                                      str r6, [r3, #8]
005d0570  04 50 83 e5                                      str r5, [r3, #4]
005d0574  01 00 a0 e3                                      mov r0, #1
005d0578  de ff ff ea                                      b #0x5d04f8
005d057c  02 20 90 e7                                      ldr r2, [r0, r2]
005d0580  01 00 a0 e3                                      mov r0, #1
005d0584  00 20 83 e5                                      str r2, [r3]
005d0588  04 20 94 e5                                      ldr r2, [r4, #4]
005d058c  04 20 83 e5                                      str r2, [r3, #4]
005d0590  08 20 94 e5                                      ldr r2, [r4, #8]
005d0594  08 20 83 e5                                      str r2, [r3, #8]
005d0598  0c 20 94 e5                                      ldr r2, [r4, #0xc]
005d059c  0c 20 83 e5                                      str r2, [r3, #0xc]
005d05a0  d4 ff ff ea                                      b #0x5d04f8
; mapping-symbol data/literal pool
005d05a4  00 46 3c 00 a4 2c 00 00                          .byte 0x00, 0x46, 0x3c, 0x00, 0xa4, 0x2c, 0x00, 0x00

; FUNCTION 0x005d0c64, declared_size=528, range_size=528, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector4d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE15getParameterCvtINS_4core8vector4dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPSE_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector4d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::getParameterCvt<glitch::core::vector4d<float> >(unsigned short, glitch::core::vector4d<float>*, int) const
; decoder-mode: arm
005d0c64  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005d0c68  be 40 d0 e1                                      ldrh r4, [r0, #0xe]
005d0c6c  f8 c1 9f e5                                      ldr ip, [pc, #0x1f8]
005d0c70  14 d0 4d e2                                      sub sp, sp, #0x14
005d0c74  01 00 54 e1                                      cmp r4, r1
005d0c78  0c c0 8f e0                                      add ip, pc, ip
005d0c7c  02 40 a0 e1                                      mov r4, r2
005d0c80  03 60 a0 e1                                      mov r6, r3
005d0c84  13 00 00 9a                                      bls #0x5d0cd8
005d0c88  20 30 90 e5                                      ldr r3, [r0, #0x20]
005d0c8c  01 12 93 e0                                      adds r1, r3, r1, lsl #4
005d0c90  10 00 00 0a                                      beq #0x5d0cd8
005d0c94  d4 21 9f e5                                      ldr r2, [pc, #0x1d4]
005d0c98  06 30 d1 e5                                      ldrb r3, [r1, #6]
005d0c9c  02 20 9c e7                                      ldr r2, [ip, r2]
005d0ca0  03 21 92 e7                                      ldr r2, [r2, r3, lsl #2]
005d0ca4  01 0c 12 e3                                      tst r2, #0x100
005d0ca8  0a 00 00 0a                                      beq #0x5d0cd8
005d0cac  01 20 76 e2                                      rsbs r2, r6, #1
005d0cb0  00 20 a0 33                                      movlo r2, #0
005d0cb4  00 00 56 e3                                      cmp r6, #0
005d0cb8  10 00 56 13                                      cmpne r6, #0x10
005d0cbc  08 00 00 1a                                      bne #0x5d0ce4
005d0cc0  08 00 53 e3                                      cmp r3, #8
005d0cc4  30 00 00 0a                                      beq #0x5d0d8c
005d0cc8  00 00 52 e3                                      cmp r2, #0
005d0ccc  04 00 00 0a                                      beq #0x5d0ce4
005d0cd0  01 00 a0 e3                                      mov r0, #1
005d0cd4  00 00 00 ea                                      b #0x5d0cdc
005d0cd8  00 00 a0 e3                                      mov r0, #0
005d0cdc  14 d0 8d e2                                      add sp, sp, #0x14
005d0ce0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005d0ce4  24 50 90 e5                                      ldr r5, [r0, #0x24]
005d0ce8  0c 20 91 e5                                      ldr r2, [r1, #0xc]
005d0cec  10 00 53 e3                                      cmp r3, #0x10
005d0cf0  02 50 85 e0                                      add r5, r5, r2
005d0cf4  2d 00 00 0a                                      beq #0x5d0db0
005d0cf8  11 00 53 e3                                      cmp r3, #0x11
005d0cfc  11 00 00 0a                                      beq #0x5d0d48
005d0d00  08 00 53 e3                                      cmp r3, #8
005d0d04  f1 ff ff 1a                                      bne #0x5d0cd0
005d0d08  08 30 91 e5                                      ldr r3, [r1, #8]
005d0d0c  00 00 53 e3                                      cmp r3, #0
005d0d10  ee ff ff 0a                                      beq #0x5d0cd0
005d0d14  00 20 95 e5                                      ldr r2, [r5]
005d0d18  01 30 53 e2                                      subs r3, r3, #1
005d0d1c  00 20 84 e5                                      str r2, [r4]
005d0d20  04 20 95 e5                                      ldr r2, [r5, #4]
005d0d24  04 20 84 e5                                      str r2, [r4, #4]
005d0d28  08 20 95 e5                                      ldr r2, [r5, #8]
005d0d2c  08 20 84 e5                                      str r2, [r4, #8]
005d0d30  0c 20 95 e5                                      ldr r2, [r5, #0xc]
005d0d34  10 50 85 e2                                      add r5, r5, #0x10
005d0d38  0c 20 84 e5                                      str r2, [r4, #0xc]
005d0d3c  06 40 84 e0                                      add r4, r4, r6
005d0d40  f3 ff ff 1a                                      bne #0x5d0d14
005d0d44  e1 ff ff ea                                      b #0x5d0cd0
005d0d48  08 20 91 e5                                      ldr r2, [r1, #8]
005d0d4c  02 22 85 e0                                      add r2, r5, r2, lsl #4
005d0d50  02 00 55 e1                                      cmp r5, r2
005d0d54  dd ff ff 0a                                      beq #0x5d0cd0
005d0d58  00 30 95 e5                                      ldr r3, [r5]
005d0d5c  00 30 84 e5                                      str r3, [r4]
005d0d60  04 30 95 e5                                      ldr r3, [r5, #4]
005d0d64  04 30 84 e5                                      str r3, [r4, #4]
005d0d68  08 30 95 e5                                      ldr r3, [r5, #8]
005d0d6c  08 30 84 e5                                      str r3, [r4, #8]
005d0d70  0c 30 95 e5                                      ldr r3, [r5, #0xc]
005d0d74  10 50 85 e2                                      add r5, r5, #0x10
005d0d78  05 00 52 e1                                      cmp r2, r5
005d0d7c  0c 30 84 e5                                      str r3, [r4, #0xc]
005d0d80  06 40 84 e0                                      add r4, r4, r6
005d0d84  f3 ff ff 1a                                      bne #0x5d0d58
005d0d88  d0 ff ff ea                                      b #0x5d0cd0
005d0d8c  24 c0 90 e5                                      ldr ip, [r0, #0x24]
005d0d90  08 20 91 e5                                      ldr r2, [r1, #8]
005d0d94  0c 30 91 e5                                      ldr r3, [r1, #0xc]
005d0d98  04 00 a0 e1                                      mov r0, r4
005d0d9c  02 22 a0 e1                                      lsl r2, r2, #4
005d0da0  03 10 8c e0                                      add r1, ip, r3
005d0da4  af f6 f4 eb                                      bl #0x30e868
005d0da8  01 00 a0 e3                                      mov r0, #1
005d0dac  ca ff ff ea                                      b #0x5d0cdc
005d0db0  08 b0 91 e5                                      ldr fp, [r1, #8]
005d0db4  0b b1 85 e0                                      add fp, r5, fp, lsl #2
005d0db8  0b 00 55 e1                                      cmp r5, fp
005d0dbc  c3 ff ff 0a                                      beq #0x5d0cd0
005d0dc0  04 50 85 e2                                      add r5, r5, #4
005d0dc4  0d 70 a0 e1                                      mov r7, sp
005d0dc8  00 00 00 ea                                      b #0x5d0dd0
005d0dcc  06 40 84 e0                                      add r4, r4, r6
005d0dd0  04 00 55 e5                                      ldrb r0, [r5, #-4]
005d0dd4  e2 f6 f4 eb                                      bl #0x30e964
005d0dd8  81 10 08 e3                                      movw r1, #0x8081
005d0ddc  80 1b 43 e3                                      movt r1, #0x3b80
005d0de0  e1 f7 f4 eb                                      bl #0x30ed6c
005d0de4  03 a0 55 e5                                      ldrb sl, [r5, #-3]
005d0de8  00 80 a0 e1                                      mov r8, r0
005d0dec  02 90 55 e5                                      ldrb sb, [r5, #-2]
005d0df0  0a 00 a0 e1                                      mov r0, sl
005d0df4  01 a0 55 e5                                      ldrb sl, [r5, #-1]
005d0df8  00 80 8d e5                                      str r8, [sp]
005d0dfc  d8 f6 f4 eb                                      bl #0x30e964
005d0e00  81 10 08 e3                                      movw r1, #0x8081
005d0e04  80 1b 43 e3                                      movt r1, #0x3b80
005d0e08  d7 f7 f4 eb                                      bl #0x30ed6c
005d0e0c  04 00 8d e5                                      str r0, [sp, #4]
005d0e10  09 00 a0 e1                                      mov r0, sb
005d0e14  d2 f6 f4 eb                                      bl #0x30e964
005d0e18  81 10 08 e3                                      movw r1, #0x8081
005d0e1c  80 1b 43 e3                                      movt r1, #0x3b80
005d0e20  d1 f7 f4 eb                                      bl #0x30ed6c
005d0e24  08 00 8d e5                                      str r0, [sp, #8]
005d0e28  0a 00 a0 e1                                      mov r0, sl
005d0e2c  cc f6 f4 eb                                      bl #0x30e964
005d0e30  81 10 08 e3                                      movw r1, #0x8081
005d0e34  80 1b 43 e3                                      movt r1, #0x3b80
005d0e38  cb f7 f4 eb                                      bl #0x30ed6c
005d0e3c  0c 00 8d e5                                      str r0, [sp, #0xc]
005d0e40  00 80 84 e5                                      str r8, [r4]
005d0e44  04 30 97 e5                                      ldr r3, [r7, #4]
005d0e48  05 00 5b e1                                      cmp fp, r5
005d0e4c  04 50 85 e2                                      add r5, r5, #4
005d0e50  04 30 84 e5                                      str r3, [r4, #4]
005d0e54  08 30 97 e5                                      ldr r3, [r7, #8]
005d0e58  08 30 84 e5                                      str r3, [r4, #8]
005d0e5c  0c 30 97 e5                                      ldr r3, [r7, #0xc]
005d0e60  0c 30 84 e5                                      str r3, [r4, #0xc]
005d0e64  d8 ff ff 1a                                      bne #0x5d0dcc
005d0e68  98 ff ff ea                                      b #0x5d0cd0
; mapping-symbol data/literal pool
005d0e6c  18 3e 3c 00 a4 2c 00 00                          .byte 0x18, 0x3e, 0x3c, 0x00, 0xa4, 0x2c, 0x00, 0x00

; FUNCTION 0x005d1668, declared_size=176, range_size=176, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector4d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE12getParameterINS_4core8vector4dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPSE_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector4d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::getParameter<glitch::core::vector4d<float> >(unsigned short, glitch::core::vector4d<float>*, int) const
; decoder-mode: arm
005d1668  10 40 2d e9                                      push {r4, lr}
005d166c  be c0 d0 e1                                      ldrh ip, [r0, #0xe]
005d1670  01 00 5c e1                                      cmp ip, r1
005d1674  05 00 00 9a                                      bls #0x5d1690
005d1678  20 40 90 e5                                      ldr r4, [r0, #0x20]
005d167c  01 42 94 e0                                      adds r4, r4, r1, lsl #4
005d1680  02 00 00 0a                                      beq #0x5d1690
005d1684  06 10 d4 e5                                      ldrb r1, [r4, #6]
005d1688  08 00 51 e3                                      cmp r1, #8
005d168c  01 00 00 0a                                      beq #0x5d1698
005d1690  00 00 a0 e3                                      mov r0, #0
005d1694  10 80 bd e8                                      pop {r4, pc}
005d1698  00 00 53 e3                                      cmp r3, #0
005d169c  10 00 53 13                                      cmpne r3, #0x10
005d16a0  13 00 00 0a                                      beq #0x5d16f4
005d16a4  08 c0 94 e5                                      ldr ip, [r4, #8]
005d16a8  24 00 90 e5                                      ldr r0, [r0, #0x24]
005d16ac  0c 10 94 e5                                      ldr r1, [r4, #0xc]
005d16b0  00 00 5c e3                                      cmp ip, #0
005d16b4  0c 00 00 0a                                      beq #0x5d16ec
005d16b8  01 10 80 e0                                      add r1, r0, r1
005d16bc  00 00 91 e5                                      ldr r0, [r1]
005d16c0  01 c0 5c e2                                      subs ip, ip, #1
005d16c4  00 00 82 e5                                      str r0, [r2]
005d16c8  04 00 91 e5                                      ldr r0, [r1, #4]
005d16cc  04 00 82 e5                                      str r0, [r2, #4]
005d16d0  08 00 91 e5                                      ldr r0, [r1, #8]
005d16d4  08 00 82 e5                                      str r0, [r2, #8]
005d16d8  0c 00 91 e5                                      ldr r0, [r1, #0xc]
005d16dc  10 10 81 e2                                      add r1, r1, #0x10
005d16e0  0c 00 82 e5                                      str r0, [r2, #0xc]
005d16e4  03 20 82 e0                                      add r2, r2, r3
005d16e8  f3 ff ff 1a                                      bne #0x5d16bc
005d16ec  01 00 a0 e3                                      mov r0, #1
005d16f0  10 80 bd e8                                      pop {r4, pc}
005d16f4  24 c0 90 e5                                      ldr ip, [r0, #0x24]
005d16f8  0c 10 94 e5                                      ldr r1, [r4, #0xc]
005d16fc  08 30 94 e5                                      ldr r3, [r4, #8]
005d1700  02 00 a0 e1                                      mov r0, r2
005d1704  01 10 8c e0                                      add r1, ip, r1
005d1708  03 22 a0 e1                                      lsl r2, r3, #4
005d170c  55 f4 f4 eb                                      bl #0x30e868
005d1710  01 00 a0 e3                                      mov r0, #1
005d1714  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005d1fbc, declared_size=468, range_size=468, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector4d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS_4core8vector4dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPKSE_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector4d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::setParameterCvt<glitch::core::vector4d<float> >(unsigned short, glitch::core::vector4d<float> const*, int)
; decoder-mode: arm
005d1fbc  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005d1fc0  be 40 d0 e1                                      ldrh r4, [r0, #0xe]
005d1fc4  bc c1 9f e5                                      ldr ip, [pc, #0x1bc]
005d1fc8  03 50 a0 e1                                      mov r5, r3
005d1fcc  01 00 54 e1                                      cmp r4, r1
005d1fd0  0c c0 8f e0                                      add ip, pc, ip
005d1fd4  02 40 a0 e1                                      mov r4, r2
005d1fd8  13 00 00 9a                                      bls #0x5d202c
005d1fdc  20 30 90 e5                                      ldr r3, [r0, #0x20]
005d1fe0  01 12 93 e0                                      adds r1, r3, r1, lsl #4
005d1fe4  10 00 00 0a                                      beq #0x5d202c
005d1fe8  9c 21 9f e5                                      ldr r2, [pc, #0x19c]
005d1fec  06 30 d1 e5                                      ldrb r3, [r1, #6]
005d1ff0  02 20 9c e7                                      ldr r2, [ip, r2]
005d1ff4  03 21 92 e7                                      ldr r2, [r2, r3, lsl #2]
005d1ff8  01 0c 12 e3                                      tst r2, #0x100
005d1ffc  0a 00 00 0a                                      beq #0x5d202c
005d2000  01 20 75 e2                                      rsbs r2, r5, #1
005d2004  00 20 a0 33                                      movlo r2, #0
005d2008  00 00 55 e3                                      cmp r5, #0
005d200c  10 00 55 13                                      cmpne r5, #0x10
005d2010  07 00 00 1a                                      bne #0x5d2034
005d2014  08 00 53 e3                                      cmp r3, #8
005d2018  2b 00 00 0a                                      beq #0x5d20cc
005d201c  00 00 52 e3                                      cmp r2, #0
005d2020  03 00 00 0a                                      beq #0x5d2034
005d2024  01 00 a0 e3                                      mov r0, #1
005d2028  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005d202c  00 00 a0 e3                                      mov r0, #0
005d2030  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005d2034  24 c0 90 e5                                      ldr ip, [r0, #0x24]
005d2038  0c 20 91 e5                                      ldr r2, [r1, #0xc]
005d203c  10 00 53 e3                                      cmp r3, #0x10
005d2040  02 c0 8c e0                                      add ip, ip, r2
005d2044  29 00 00 0a                                      beq #0x5d20f0
005d2048  11 00 53 e3                                      cmp r3, #0x11
005d204c  11 00 00 0a                                      beq #0x5d2098
005d2050  08 00 53 e3                                      cmp r3, #8
005d2054  f2 ff ff 1a                                      bne #0x5d2024
005d2058  08 30 91 e5                                      ldr r3, [r1, #8]
005d205c  00 00 53 e3                                      cmp r3, #0
005d2060  ef ff ff 0a                                      beq #0x5d2024
005d2064  00 20 94 e5                                      ldr r2, [r4]
005d2068  01 30 53 e2                                      subs r3, r3, #1
005d206c  00 20 8c e5                                      str r2, [ip]
005d2070  04 20 94 e5                                      ldr r2, [r4, #4]
005d2074  04 20 8c e5                                      str r2, [ip, #4]
005d2078  08 20 94 e5                                      ldr r2, [r4, #8]
005d207c  08 20 8c e5                                      str r2, [ip, #8]
005d2080  0c 20 94 e5                                      ldr r2, [r4, #0xc]
005d2084  05 40 84 e0                                      add r4, r4, r5
005d2088  0c 20 8c e5                                      str r2, [ip, #0xc]
005d208c  10 c0 8c e2                                      add ip, ip, #0x10
005d2090  f3 ff ff 1a                                      bne #0x5d2064
005d2094  e2 ff ff ea                                      b #0x5d2024
005d2098  08 70 91 e5                                      ldr r7, [r1, #8]
005d209c  07 72 8c e0                                      add r7, ip, r7, lsl #4
005d20a0  07 00 5c e1                                      cmp ip, r7
005d20a4  de ff ff 0a                                      beq #0x5d2024
005d20a8  00 60 a0 e3                                      mov r6, #0
005d20ac  06 30 84 e0                                      add r3, r4, r6
005d20b0  0f 00 93 e8                                      ldm r3, {r0, r1, r2, r3}
005d20b4  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
005d20b8  10 c0 8c e2                                      add ip, ip, #0x10
005d20bc  0c 00 57 e1                                      cmp r7, ip
005d20c0  05 60 86 e0                                      add r6, r6, r5
005d20c4  f8 ff ff 1a                                      bne #0x5d20ac
005d20c8  d5 ff ff ea                                      b #0x5d2024
005d20cc  08 20 91 e5                                      ldr r2, [r1, #8]
005d20d0  0c 30 91 e5                                      ldr r3, [r1, #0xc]
005d20d4  24 00 90 e5                                      ldr r0, [r0, #0x24]
005d20d8  04 10 a0 e1                                      mov r1, r4
005d20dc  02 22 a0 e1                                      lsl r2, r2, #4
005d20e0  03 00 80 e0                                      add r0, r0, r3
005d20e4  df f1 f4 eb                                      bl #0x30e868
005d20e8  01 00 a0 e3                                      mov r0, #1
005d20ec  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005d20f0  08 90 91 e5                                      ldr sb, [r1, #8]
005d20f4  09 91 8c e0                                      add sb, ip, sb, lsl #2
005d20f8  09 00 5c e1                                      cmp ip, sb
005d20fc  c8 ff ff 0a                                      beq #0x5d2024
005d2100  04 60 8c e2                                      add r6, ip, #4
005d2104  01 00 00 ea                                      b #0x5d2110
005d2108  05 40 84 e0                                      add r4, r4, r5
005d210c  04 60 86 e2                                      add r6, r6, #4
005d2110  43 14 a0 e3                                      mov r1, #0x43000000
005d2114  0c 00 94 e5                                      ldr r0, [r4, #0xc]
005d2118  7f 18 81 e2                                      add r1, r1, #0x7f0000
005d211c  12 f3 f4 eb                                      bl #0x30ed6c
005d2120  5e b0 0b eb                                      bl #0x8be2a0
005d2124  43 14 a0 e3                                      mov r1, #0x43000000
005d2128  7f 18 81 e2                                      add r1, r1, #0x7f0000
005d212c  70 a0 ef e6                                      uxtb sl, r0
005d2130  00 00 94 e5                                      ldr r0, [r4]
005d2134  0c f3 f4 eb                                      bl #0x30ed6c
005d2138  58 b0 0b eb                                      bl #0x8be2a0
005d213c  43 14 a0 e3                                      mov r1, #0x43000000
005d2140  7f 18 81 e2                                      add r1, r1, #0x7f0000
005d2144  70 70 ef e6                                      uxtb r7, r0
005d2148  04 00 94 e5                                      ldr r0, [r4, #4]
005d214c  06 f3 f4 eb                                      bl #0x30ed6c
005d2150  52 b0 0b eb                                      bl #0x8be2a0
005d2154  43 14 a0 e3                                      mov r1, #0x43000000
005d2158  70 80 ef e6                                      uxtb r8, r0
005d215c  7f 18 81 e2                                      add r1, r1, #0x7f0000
005d2160  08 00 94 e5                                      ldr r0, [r4, #8]
005d2164  00 f3 f4 eb                                      bl #0x30ed6c
005d2168  4c b0 0b eb                                      bl #0x8be2a0
005d216c  06 00 59 e1                                      cmp sb, r6
005d2170  01 a0 46 e5                                      strb sl, [r6, #-1]
005d2174  02 00 46 e5                                      strb r0, [r6, #-2]
005d2178  03 80 46 e5                                      strb r8, [r6, #-3]
005d217c  04 70 46 e5                                      strb r7, [r6, #-4]
005d2180  e0 ff ff 1a                                      bne #0x5d2108
005d2184  a6 ff ff ea                                      b #0x5d2024
; mapping-symbol data/literal pool
005d2188  c0 2a 3c 00 a4 2c 00 00                          .byte 0xc0, 0x2a, 0x3c, 0x00, 0xa4, 0x2c, 0x00, 0x00

; FUNCTION 0x005d29c0, declared_size=176, range_size=176, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector4d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE12setParameterINS_4core8vector4dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPKSE_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector4d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::setParameter<glitch::core::vector4d<float> >(unsigned short, glitch::core::vector4d<float> const*, int)
; decoder-mode: arm
005d29c0  10 40 2d e9                                      push {r4, lr}
005d29c4  be c0 d0 e1                                      ldrh ip, [r0, #0xe]
005d29c8  01 00 5c e1                                      cmp ip, r1
005d29cc  05 00 00 9a                                      bls #0x5d29e8
005d29d0  20 c0 90 e5                                      ldr ip, [r0, #0x20]
005d29d4  01 12 9c e0                                      adds r1, ip, r1, lsl #4
005d29d8  02 00 00 0a                                      beq #0x5d29e8
005d29dc  06 c0 d1 e5                                      ldrb ip, [r1, #6]
005d29e0  08 00 5c e3                                      cmp ip, #8
005d29e4  01 00 00 0a                                      beq #0x5d29f0
005d29e8  00 00 a0 e3                                      mov r0, #0
005d29ec  10 80 bd e8                                      pop {r4, pc}
005d29f0  00 00 53 e3                                      cmp r3, #0
005d29f4  10 00 53 13                                      cmpne r3, #0x10
005d29f8  13 00 00 0a                                      beq #0x5d2a4c
005d29fc  08 c0 91 e5                                      ldr ip, [r1, #8]
005d2a00  24 00 90 e5                                      ldr r0, [r0, #0x24]
005d2a04  0c 10 91 e5                                      ldr r1, [r1, #0xc]
005d2a08  00 00 5c e3                                      cmp ip, #0
005d2a0c  0c 00 00 0a                                      beq #0x5d2a44
005d2a10  01 10 80 e0                                      add r1, r0, r1
005d2a14  00 00 92 e5                                      ldr r0, [r2]
005d2a18  01 c0 5c e2                                      subs ip, ip, #1
005d2a1c  00 00 81 e5                                      str r0, [r1]
005d2a20  04 00 92 e5                                      ldr r0, [r2, #4]
005d2a24  04 00 81 e5                                      str r0, [r1, #4]
005d2a28  08 00 92 e5                                      ldr r0, [r2, #8]
005d2a2c  08 00 81 e5                                      str r0, [r1, #8]
005d2a30  0c 00 92 e5                                      ldr r0, [r2, #0xc]
005d2a34  03 20 82 e0                                      add r2, r2, r3
005d2a38  0c 00 81 e5                                      str r0, [r1, #0xc]
005d2a3c  10 10 81 e2                                      add r1, r1, #0x10
005d2a40  f3 ff ff 1a                                      bne #0x5d2a14
005d2a44  01 00 a0 e3                                      mov r0, #1
005d2a48  10 80 bd e8                                      pop {r4, pc}
005d2a4c  08 c0 91 e5                                      ldr ip, [r1, #8]
005d2a50  0c 30 91 e5                                      ldr r3, [r1, #0xc]
005d2a54  24 00 90 e5                                      ldr r0, [r0, #0x24]
005d2a58  02 10 a0 e1                                      mov r1, r2
005d2a5c  0c 22 a0 e1                                      lsl r2, ip, #4
005d2a60  03 00 80 e0                                      add r0, r0, r3
005d2a64  7f ef f4 eb                                      bl #0x30e868
005d2a68  01 00 a0 e3                                      mov r0, #1
005d2a6c  10 80 bd e8                                      pop {r4, pc}

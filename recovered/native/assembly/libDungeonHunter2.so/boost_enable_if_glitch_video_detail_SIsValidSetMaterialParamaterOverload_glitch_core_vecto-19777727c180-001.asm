; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005cf2b0, declared_size=116, range_size=116, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector3d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE12setParameterINS_4core8vector3dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector3d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::setParameter<glitch::core::vector3d<float> >(unsigned short, unsigned int, glitch::core::vector3d<float> const&)
; decoder-mode: arm
005cf2b0  04 40 2d e5                                      str r4, [sp, #-4]!
005cf2b4  be c0 d0 e1                                      ldrh ip, [r0, #0xe]
005cf2b8  01 00 5c e1                                      cmp ip, r1
005cf2bc  05 00 00 9a                                      bls #0x5cf2d8
005cf2c0  20 c0 90 e5                                      ldr ip, [r0, #0x20]
005cf2c4  01 12 9c e0                                      adds r1, ip, r1, lsl #4
005cf2c8  02 00 00 0a                                      beq #0x5cf2d8
005cf2cc  06 c0 d1 e5                                      ldrb ip, [r1, #6]
005cf2d0  07 00 5c e3                                      cmp ip, #7
005cf2d4  02 00 00 0a                                      beq #0x5cf2e4
005cf2d8  00 00 a0 e3                                      mov r0, #0
005cf2dc  10 00 bd e8                                      ldm sp!, {r4}
005cf2e0  1e ff 2f e1                                      bx lr
005cf2e4  08 c0 91 e5                                      ldr ip, [r1, #8]
005cf2e8  0c 00 52 e1                                      cmp r2, ip
005cf2ec  f9 ff ff 2a                                      bhs #0x5cf2d8
005cf2f0  0c 10 91 e5                                      ldr r1, [r1, #0xc]
005cf2f4  24 c0 90 e5                                      ldr ip, [r0, #0x24]
005cf2f8  0c 00 a0 e3                                      mov r0, #0xc
005cf2fc  90 12 22 e0                                      mla r2, r0, r2, r1
005cf300  00 40 93 e5                                      ldr r4, [r3]
005cf304  02 10 8c e0                                      add r1, ip, r2
005cf308  01 00 a0 e3                                      mov r0, #1
005cf30c  02 40 8c e7                                      str r4, [ip, r2]
005cf310  04 20 93 e5                                      ldr r2, [r3, #4]
005cf314  04 20 81 e5                                      str r2, [r1, #4]
005cf318  08 30 93 e5                                      ldr r3, [r3, #8]
005cf31c  08 30 81 e5                                      str r3, [r1, #8]
005cf320  ed ff ff ea                                      b #0x5cf2dc

; FUNCTION 0x005cf7c4, declared_size=144, range_size=144, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector3d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS_4core8vector3dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector3d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::setParameterCvt<glitch::core::vector3d<float> >(unsigned short, unsigned int, glitch::core::vector3d<float> const&)
; decoder-mode: arm
005cf7c4  30 00 2d e9                                      push {r4, r5}
005cf7c8  be 40 d0 e1                                      ldrh r4, [r0, #0xe]
005cf7cc  78 c0 9f e5                                      ldr ip, [pc, #0x78]
005cf7d0  01 00 54 e1                                      cmp r4, r1
005cf7d4  0c c0 8f e0                                      add ip, pc, ip
005cf7d8  18 00 00 9a                                      bls #0x5cf840
005cf7dc  20 40 90 e5                                      ldr r4, [r0, #0x20]
005cf7e0  01 12 94 e0                                      adds r1, r4, r1, lsl #4
005cf7e4  15 00 00 0a                                      beq #0x5cf840
005cf7e8  60 50 9f e5                                      ldr r5, [pc, #0x60]
005cf7ec  06 40 d1 e5                                      ldrb r4, [r1, #6]
005cf7f0  05 c0 9c e7                                      ldr ip, [ip, r5]
005cf7f4  04 c1 9c e7                                      ldr ip, [ip, r4, lsl #2]
005cf7f8  80 00 1c e3                                      tst ip, #0x80
005cf7fc  0f 00 00 0a                                      beq #0x5cf840
005cf800  08 c0 91 e5                                      ldr ip, [r1, #8]
005cf804  0c 00 52 e1                                      cmp r2, ip
005cf808  0c 00 00 2a                                      bhs #0x5cf840
005cf80c  07 00 54 e3                                      cmp r4, #7
005cf810  24 c0 90 e5                                      ldr ip, [r0, #0x24]
005cf814  0c 10 91 e5                                      ldr r1, [r1, #0xc]
005cf818  00 40 93 05                                      ldreq r4, [r3]
005cf81c  01 00 a0 13                                      movne r0, #1
005cf820  01 20 8c 00                                      addeq r2, ip, r1
005cf824  01 40 8c 07                                      streq r4, [ip, r1]
005cf828  04 10 93 05                                      ldreq r1, [r3, #4]
005cf82c  01 00 a0 03                                      moveq r0, #1
005cf830  04 10 82 05                                      streq r1, [r2, #4]
005cf834  08 30 93 05                                      ldreq r3, [r3, #8]
005cf838  08 30 82 05                                      streq r3, [r2, #8]
005cf83c  00 00 00 ea                                      b #0x5cf844
005cf840  00 00 a0 e3                                      mov r0, #0
005cf844  30 00 bd e8                                      pop {r4, r5}
005cf848  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
005cf84c  bc 52 3c 00 a4 2c 00 00                          .byte 0xbc, 0x52, 0x3c, 0x00, 0xa4, 0x2c, 0x00, 0x00

; FUNCTION 0x005cfed4, declared_size=108, range_size=108, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector3d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE12getParameterINS_4core8vector3dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRSE_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector3d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::getParameter<glitch::core::vector3d<float> >(unsigned short, unsigned int, glitch::core::vector3d<float>&) const
; decoder-mode: arm
005cfed4  be c0 d0 e1                                      ldrh ip, [r0, #0xe]
005cfed8  01 00 5c e1                                      cmp ip, r1
005cfedc  05 00 00 9a                                      bls #0x5cfef8
005cfee0  20 c0 90 e5                                      ldr ip, [r0, #0x20]
005cfee4  01 12 9c e0                                      adds r1, ip, r1, lsl #4
005cfee8  02 00 00 0a                                      beq #0x5cfef8
005cfeec  06 c0 d1 e5                                      ldrb ip, [r1, #6]
005cfef0  07 00 5c e3                                      cmp ip, #7
005cfef4  01 00 00 0a                                      beq #0x5cff00
005cfef8  00 00 a0 e3                                      mov r0, #0
005cfefc  1e ff 2f e1                                      bx lr
005cff00  08 c0 91 e5                                      ldr ip, [r1, #8]
005cff04  0c 00 52 e1                                      cmp r2, ip
005cff08  fa ff ff 2a                                      bhs #0x5cfef8
005cff0c  0c c0 91 e5                                      ldr ip, [r1, #0xc]
005cff10  24 10 90 e5                                      ldr r1, [r0, #0x24]
005cff14  0c 00 a0 e3                                      mov r0, #0xc
005cff18  90 c2 22 e0                                      mla r2, r0, r2, ip
005cff1c  01 00 a0 e3                                      mov r0, #1
005cff20  02 c0 91 e7                                      ldr ip, [r1, r2]
005cff24  02 20 81 e0                                      add r2, r1, r2
005cff28  00 c0 83 e5                                      str ip, [r3]
005cff2c  04 10 92 e5                                      ldr r1, [r2, #4]
005cff30  04 10 83 e5                                      str r1, [r3, #4]
005cff34  08 20 92 e5                                      ldr r2, [r2, #8]
005cff38  08 20 83 e5                                      str r2, [r3, #8]
005cff3c  1e ff 2f e1                                      bx lr

; FUNCTION 0x005d03ec, declared_size=144, range_size=144, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector3d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE15getParameterCvtINS_4core8vector3dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRSE_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector3d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::getParameterCvt<glitch::core::vector3d<float> >(unsigned short, unsigned int, glitch::core::vector3d<float>&) const
; decoder-mode: arm
005d03ec  30 00 2d e9                                      push {r4, r5}
005d03f0  be 40 d0 e1                                      ldrh r4, [r0, #0xe]
005d03f4  78 c0 9f e5                                      ldr ip, [pc, #0x78]
005d03f8  01 00 54 e1                                      cmp r4, r1
005d03fc  0c c0 8f e0                                      add ip, pc, ip
005d0400  18 00 00 9a                                      bls #0x5d0468
005d0404  20 40 90 e5                                      ldr r4, [r0, #0x20]
005d0408  01 12 94 e0                                      adds r1, r4, r1, lsl #4
005d040c  15 00 00 0a                                      beq #0x5d0468
005d0410  60 50 9f e5                                      ldr r5, [pc, #0x60]
005d0414  06 40 d1 e5                                      ldrb r4, [r1, #6]
005d0418  05 c0 9c e7                                      ldr ip, [ip, r5]
005d041c  04 c1 9c e7                                      ldr ip, [ip, r4, lsl #2]
005d0420  80 00 1c e3                                      tst ip, #0x80
005d0424  0f 00 00 0a                                      beq #0x5d0468
005d0428  08 c0 91 e5                                      ldr ip, [r1, #8]
005d042c  0c 00 52 e1                                      cmp r2, ip
005d0430  0c 00 00 2a                                      bhs #0x5d0468
005d0434  24 00 90 e5                                      ldr r0, [r0, #0x24]
005d0438  0c 20 91 e5                                      ldr r2, [r1, #0xc]
005d043c  07 00 54 e3                                      cmp r4, #7
005d0440  01 00 a0 13                                      movne r0, #1
005d0444  02 10 90 07                                      ldreq r1, [r0, r2]
005d0448  02 20 80 00                                      addeq r2, r0, r2
005d044c  01 00 a0 03                                      moveq r0, #1
005d0450  00 10 83 05                                      streq r1, [r3]
005d0454  04 10 92 05                                      ldreq r1, [r2, #4]
005d0458  04 10 83 05                                      streq r1, [r3, #4]
005d045c  08 20 92 05                                      ldreq r2, [r2, #8]
005d0460  08 20 83 05                                      streq r2, [r3, #8]
005d0464  00 00 00 ea                                      b #0x5d046c
005d0468  00 00 a0 e3                                      mov r0, #0
005d046c  30 00 bd e8                                      pop {r4, r5}
005d0470  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
005d0474  94 46 3c 00 a4 2c 00 00                          .byte 0x94, 0x46, 0x3c, 0x00, 0xa4, 0x2c, 0x00, 0x00

; FUNCTION 0x005d0e74, declared_size=240, range_size=240, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector3d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE15getParameterCvtINS_4core8vector3dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPSE_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector3d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::getParameterCvt<glitch::core::vector3d<float> >(unsigned short, glitch::core::vector3d<float>*, int) const
; decoder-mode: arm
005d0e74  70 40 2d e9                                      push {r4, r5, r6, lr}
005d0e78  be c0 d0 e1                                      ldrh ip, [r0, #0xe]
005d0e7c  d8 40 9f e5                                      ldr r4, [pc, #0xd8]
005d0e80  01 00 5c e1                                      cmp ip, r1
005d0e84  04 40 8f e0                                      add r4, pc, r4
005d0e88  02 c0 a0 e1                                      mov ip, r2
005d0e8c  13 00 00 9a                                      bls #0x5d0ee0
005d0e90  20 20 90 e5                                      ldr r2, [r0, #0x20]
005d0e94  01 12 92 e0                                      adds r1, r2, r1, lsl #4
005d0e98  10 00 00 0a                                      beq #0x5d0ee0
005d0e9c  bc 50 9f e5                                      ldr r5, [pc, #0xbc]
005d0ea0  06 20 d1 e5                                      ldrb r2, [r1, #6]
005d0ea4  05 40 94 e7                                      ldr r4, [r4, r5]
005d0ea8  02 41 94 e7                                      ldr r4, [r4, r2, lsl #2]
005d0eac  80 00 14 e3                                      tst r4, #0x80
005d0eb0  0a 00 00 0a                                      beq #0x5d0ee0
005d0eb4  01 40 73 e2                                      rsbs r4, r3, #1
005d0eb8  00 40 a0 33                                      movlo r4, #0
005d0ebc  00 00 53 e3                                      cmp r3, #0
005d0ec0  0c 00 53 13                                      cmpne r3, #0xc
005d0ec4  07 00 00 1a                                      bne #0x5d0ee8
005d0ec8  07 00 52 e3                                      cmp r2, #7
005d0ecc  18 00 00 0a                                      beq #0x5d0f34
005d0ed0  00 00 54 e3                                      cmp r4, #0
005d0ed4  03 00 00 0a                                      beq #0x5d0ee8
005d0ed8  01 00 a0 e3                                      mov r0, #1
005d0edc  70 80 bd e8                                      pop {r4, r5, r6, pc}
005d0ee0  00 00 a0 e3                                      mov r0, #0
005d0ee4  70 80 bd e8                                      pop {r4, r5, r6, pc}
005d0ee8  07 00 52 e3                                      cmp r2, #7
005d0eec  24 00 90 e5                                      ldr r0, [r0, #0x24]
005d0ef0  0c 20 91 e5                                      ldr r2, [r1, #0xc]
005d0ef4  f7 ff ff 1a                                      bne #0x5d0ed8
005d0ef8  08 10 91 e5                                      ldr r1, [r1, #8]
005d0efc  00 00 51 e3                                      cmp r1, #0
005d0f00  f4 ff ff 0a                                      beq #0x5d0ed8
005d0f04  02 20 80 e0                                      add r2, r0, r2
005d0f08  00 00 92 e5                                      ldr r0, [r2]
005d0f0c  01 10 51 e2                                      subs r1, r1, #1
005d0f10  00 00 8c e5                                      str r0, [ip]
005d0f14  04 00 92 e5                                      ldr r0, [r2, #4]
005d0f18  04 00 8c e5                                      str r0, [ip, #4]
005d0f1c  08 00 92 e5                                      ldr r0, [r2, #8]
005d0f20  0c 20 82 e2                                      add r2, r2, #0xc
005d0f24  08 00 8c e5                                      str r0, [ip, #8]
005d0f28  03 c0 8c e0                                      add ip, ip, r3
005d0f2c  f5 ff ff 1a                                      bne #0x5d0f08
005d0f30  e8 ff ff ea                                      b #0x5d0ed8
005d0f34  24 00 90 e5                                      ldr r0, [r0, #0x24]
005d0f38  0c 20 91 e5                                      ldr r2, [r1, #0xc]
005d0f3c  08 30 91 e5                                      ldr r3, [r1, #8]
005d0f40  02 10 80 e0                                      add r1, r0, r2
005d0f44  0c 20 a0 e3                                      mov r2, #0xc
005d0f48  92 03 02 e0                                      mul r2, r2, r3
005d0f4c  0c 00 a0 e1                                      mov r0, ip
005d0f50  44 f6 f4 eb                                      bl #0x30e868
005d0f54  01 00 a0 e3                                      mov r0, #1
005d0f58  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005d0f5c  0c 3c 3c 00 a4 2c 00 00                          .byte 0x0c, 0x3c, 0x3c, 0x00, 0xa4, 0x2c, 0x00, 0x00

; FUNCTION 0x005d1718, declared_size=176, range_size=176, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector3d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE12getParameterINS_4core8vector3dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPSE_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector3d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::getParameter<glitch::core::vector3d<float> >(unsigned short, glitch::core::vector3d<float>*, int) const
; decoder-mode: arm
005d1718  10 40 2d e9                                      push {r4, lr}
005d171c  be 40 d0 e1                                      ldrh r4, [r0, #0xe]
005d1720  02 c0 a0 e1                                      mov ip, r2
005d1724  01 00 54 e1                                      cmp r4, r1
005d1728  05 00 00 9a                                      bls #0x5d1744
005d172c  20 20 90 e5                                      ldr r2, [r0, #0x20]
005d1730  01 12 92 e0                                      adds r1, r2, r1, lsl #4
005d1734  02 00 00 0a                                      beq #0x5d1744
005d1738  06 20 d1 e5                                      ldrb r2, [r1, #6]
005d173c  07 00 52 e3                                      cmp r2, #7
005d1740  01 00 00 0a                                      beq #0x5d174c
005d1744  00 00 a0 e3                                      mov r0, #0
005d1748  10 80 bd e8                                      pop {r4, pc}
005d174c  00 00 53 e3                                      cmp r3, #0
005d1750  0c 00 53 13                                      cmpne r3, #0xc
005d1754  11 00 00 0a                                      beq #0x5d17a0
005d1758  08 40 91 e5                                      ldr r4, [r1, #8]
005d175c  24 00 90 e5                                      ldr r0, [r0, #0x24]
005d1760  0c 20 91 e5                                      ldr r2, [r1, #0xc]
005d1764  00 00 54 e3                                      cmp r4, #0
005d1768  0a 00 00 0a                                      beq #0x5d1798
005d176c  02 20 80 e0                                      add r2, r0, r2
005d1770  00 10 92 e5                                      ldr r1, [r2]
005d1774  01 40 54 e2                                      subs r4, r4, #1
005d1778  00 10 8c e5                                      str r1, [ip]
005d177c  04 10 92 e5                                      ldr r1, [r2, #4]
005d1780  04 10 8c e5                                      str r1, [ip, #4]
005d1784  08 10 92 e5                                      ldr r1, [r2, #8]
005d1788  0c 20 82 e2                                      add r2, r2, #0xc
005d178c  08 10 8c e5                                      str r1, [ip, #8]
005d1790  03 c0 8c e0                                      add ip, ip, r3
005d1794  f5 ff ff 1a                                      bne #0x5d1770
005d1798  01 00 a0 e3                                      mov r0, #1
005d179c  10 80 bd e8                                      pop {r4, pc}
005d17a0  24 00 90 e5                                      ldr r0, [r0, #0x24]
005d17a4  0c 20 91 e5                                      ldr r2, [r1, #0xc]
005d17a8  08 30 91 e5                                      ldr r3, [r1, #8]
005d17ac  02 10 80 e0                                      add r1, r0, r2
005d17b0  0c 20 a0 e3                                      mov r2, #0xc
005d17b4  92 03 02 e0                                      mul r2, r2, r3
005d17b8  0c 00 a0 e1                                      mov r0, ip
005d17bc  29 f4 f4 eb                                      bl #0x30e868
005d17c0  01 00 a0 e3                                      mov r0, #1
005d17c4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005d2190, declared_size=240, range_size=240, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector3d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS_4core8vector3dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPKSE_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector3d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::setParameterCvt<glitch::core::vector3d<float> >(unsigned short, glitch::core::vector3d<float> const*, int)
; decoder-mode: arm
005d2190  70 40 2d e9                                      push {r4, r5, r6, lr}
005d2194  be c0 d0 e1                                      ldrh ip, [r0, #0xe]
005d2198  d8 40 9f e5                                      ldr r4, [pc, #0xd8]
005d219c  01 00 5c e1                                      cmp ip, r1
005d21a0  04 40 8f e0                                      add r4, pc, r4
005d21a4  02 c0 a0 e1                                      mov ip, r2
005d21a8  13 00 00 9a                                      bls #0x5d21fc
005d21ac  20 20 90 e5                                      ldr r2, [r0, #0x20]
005d21b0  01 12 92 e0                                      adds r1, r2, r1, lsl #4
005d21b4  10 00 00 0a                                      beq #0x5d21fc
005d21b8  bc 50 9f e5                                      ldr r5, [pc, #0xbc]
005d21bc  06 20 d1 e5                                      ldrb r2, [r1, #6]
005d21c0  05 40 94 e7                                      ldr r4, [r4, r5]
005d21c4  02 41 94 e7                                      ldr r4, [r4, r2, lsl #2]
005d21c8  80 00 14 e3                                      tst r4, #0x80
005d21cc  0a 00 00 0a                                      beq #0x5d21fc
005d21d0  01 40 73 e2                                      rsbs r4, r3, #1
005d21d4  00 40 a0 33                                      movlo r4, #0
005d21d8  00 00 53 e3                                      cmp r3, #0
005d21dc  0c 00 53 13                                      cmpne r3, #0xc
005d21e0  07 00 00 1a                                      bne #0x5d2204
005d21e4  07 00 52 e3                                      cmp r2, #7
005d21e8  18 00 00 0a                                      beq #0x5d2250
005d21ec  00 00 54 e3                                      cmp r4, #0
005d21f0  03 00 00 0a                                      beq #0x5d2204
005d21f4  01 00 a0 e3                                      mov r0, #1
005d21f8  70 80 bd e8                                      pop {r4, r5, r6, pc}
005d21fc  00 00 a0 e3                                      mov r0, #0
005d2200  70 80 bd e8                                      pop {r4, r5, r6, pc}
005d2204  07 00 52 e3                                      cmp r2, #7
005d2208  24 00 90 e5                                      ldr r0, [r0, #0x24]
005d220c  0c 20 91 e5                                      ldr r2, [r1, #0xc]
005d2210  f7 ff ff 1a                                      bne #0x5d21f4
005d2214  08 10 91 e5                                      ldr r1, [r1, #8]
005d2218  00 00 51 e3                                      cmp r1, #0
005d221c  f4 ff ff 0a                                      beq #0x5d21f4
005d2220  02 20 80 e0                                      add r2, r0, r2
005d2224  00 00 9c e5                                      ldr r0, [ip]
005d2228  01 10 51 e2                                      subs r1, r1, #1
005d222c  00 00 82 e5                                      str r0, [r2]
005d2230  04 00 9c e5                                      ldr r0, [ip, #4]
005d2234  04 00 82 e5                                      str r0, [r2, #4]
005d2238  08 00 9c e5                                      ldr r0, [ip, #8]
005d223c  03 c0 8c e0                                      add ip, ip, r3
005d2240  08 00 82 e5                                      str r0, [r2, #8]
005d2244  0c 20 82 e2                                      add r2, r2, #0xc
005d2248  f5 ff ff 1a                                      bne #0x5d2224
005d224c  e8 ff ff ea                                      b #0x5d21f4
005d2250  08 20 91 e5                                      ldr r2, [r1, #8]
005d2254  0c 30 91 e5                                      ldr r3, [r1, #0xc]
005d2258  24 00 90 e5                                      ldr r0, [r0, #0x24]
005d225c  0c 10 a0 e3                                      mov r1, #0xc
005d2260  91 02 02 e0                                      mul r2, r1, r2
005d2264  03 00 80 e0                                      add r0, r0, r3
005d2268  0c 10 a0 e1                                      mov r1, ip
005d226c  7d f1 f4 eb                                      bl #0x30e868
005d2270  01 00 a0 e3                                      mov r0, #1
005d2274  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005d2278  f0 28 3c 00 a4 2c 00 00                          .byte 0xf0, 0x28, 0x3c, 0x00, 0xa4, 0x2c, 0x00, 0x00

; FUNCTION 0x005d2a70, declared_size=176, range_size=176, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector3d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE12setParameterINS_4core8vector3dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPKSE_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector3d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::setParameter<glitch::core::vector3d<float> >(unsigned short, glitch::core::vector3d<float> const*, int)
; decoder-mode: arm
005d2a70  10 40 2d e9                                      push {r4, lr}
005d2a74  be 40 d0 e1                                      ldrh r4, [r0, #0xe]
005d2a78  02 c0 a0 e1                                      mov ip, r2
005d2a7c  01 00 54 e1                                      cmp r4, r1
005d2a80  05 00 00 9a                                      bls #0x5d2a9c
005d2a84  20 20 90 e5                                      ldr r2, [r0, #0x20]
005d2a88  01 12 92 e0                                      adds r1, r2, r1, lsl #4
005d2a8c  02 00 00 0a                                      beq #0x5d2a9c
005d2a90  06 20 d1 e5                                      ldrb r2, [r1, #6]
005d2a94  07 00 52 e3                                      cmp r2, #7
005d2a98  01 00 00 0a                                      beq #0x5d2aa4
005d2a9c  00 00 a0 e3                                      mov r0, #0
005d2aa0  10 80 bd e8                                      pop {r4, pc}
005d2aa4  00 00 53 e3                                      cmp r3, #0
005d2aa8  0c 00 53 13                                      cmpne r3, #0xc
005d2aac  11 00 00 0a                                      beq #0x5d2af8
005d2ab0  08 40 91 e5                                      ldr r4, [r1, #8]
005d2ab4  24 00 90 e5                                      ldr r0, [r0, #0x24]
005d2ab8  0c 20 91 e5                                      ldr r2, [r1, #0xc]
005d2abc  00 00 54 e3                                      cmp r4, #0
005d2ac0  0a 00 00 0a                                      beq #0x5d2af0
005d2ac4  02 20 80 e0                                      add r2, r0, r2
005d2ac8  00 10 9c e5                                      ldr r1, [ip]
005d2acc  01 40 54 e2                                      subs r4, r4, #1
005d2ad0  00 10 82 e5                                      str r1, [r2]
005d2ad4  04 10 9c e5                                      ldr r1, [ip, #4]
005d2ad8  04 10 82 e5                                      str r1, [r2, #4]
005d2adc  08 10 9c e5                                      ldr r1, [ip, #8]
005d2ae0  03 c0 8c e0                                      add ip, ip, r3
005d2ae4  08 10 82 e5                                      str r1, [r2, #8]
005d2ae8  0c 20 82 e2                                      add r2, r2, #0xc
005d2aec  f5 ff ff 1a                                      bne #0x5d2ac8
005d2af0  01 00 a0 e3                                      mov r0, #1
005d2af4  10 80 bd e8                                      pop {r4, pc}
005d2af8  08 20 91 e5                                      ldr r2, [r1, #8]
005d2afc  0c 30 91 e5                                      ldr r3, [r1, #0xc]
005d2b00  24 00 90 e5                                      ldr r0, [r0, #0x24]
005d2b04  0c 10 a0 e3                                      mov r1, #0xc
005d2b08  91 02 02 e0                                      mul r2, r1, r2
005d2b0c  03 00 80 e0                                      add r0, r0, r3
005d2b10  0c 10 a0 e1                                      mov r1, ip
005d2b14  53 ef f4 eb                                      bl #0x30e868
005d2b18  01 00 a0 e3                                      mov r0, #1
005d2b1c  10 80 bd e8                                      pop {r4, pc}

; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005c6408, declared_size=204, range_size=204, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector4d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE12setParameterINS_4core8vector4dIiEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector4d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::setParameter<glitch::core::vector4d<int> >(unsigned short, unsigned int, glitch::core::vector4d<int> const&)
; decoder-mode: arm
005c6408  70 00 2d e9                                      push {r4, r5, r6}
005c640c  04 c0 90 e5                                      ldr ip, [r0, #4]
005c6410  be 40 dc e1                                      ldrh r4, [ip, #0xe]
005c6414  01 00 54 e1                                      cmp r4, r1
005c6418  05 00 00 9a                                      bls #0x5c6434
005c641c  20 c0 9c e5                                      ldr ip, [ip, #0x20]
005c6420  01 12 9c e0                                      adds r1, ip, r1, lsl #4
005c6424  02 00 00 0a                                      beq #0x5c6434
005c6428  06 c0 d1 e5                                      ldrb ip, [r1, #6]
005c642c  04 00 5c e3                                      cmp ip, #4
005c6430  02 00 00 0a                                      beq #0x5c6440
005c6434  00 00 a0 e3                                      mov r0, #0
005c6438  70 00 bd e8                                      pop {r4, r5, r6}
005c643c  1e ff 2f e1                                      bx lr
005c6440  08 c0 91 e5                                      ldr ip, [r1, #8]
005c6444  0c 00 52 e1                                      cmp r2, ip
005c6448  f9 ff ff 2a                                      bhs #0x5c6434
005c644c  0c 10 91 e5                                      ldr r1, [r1, #0xc]
005c6450  20 40 80 e2                                      add r4, r0, #0x20
005c6454  00 50 93 e5                                      ldr r5, [r3]
005c6458  02 22 81 e0                                      add r2, r1, r2, lsl #4
005c645c  02 c0 94 e7                                      ldr ip, [r4, r2]
005c6460  02 10 84 e0                                      add r1, r4, r2
005c6464  05 00 5c e1                                      cmp ip, r5
005c6468  0c 00 00 0a                                      beq #0x5c64a0
005c646c  00 c0 e0 e3                                      mvn ip, #0
005c6470  0c c0 80 e5                                      str ip, [r0, #0xc]
005c6474  10 c0 80 e5                                      str ip, [r0, #0x10]
005c6478  00 c0 93 e5                                      ldr ip, [r3]
005c647c  02 c0 84 e7                                      str ip, [r4, r2]
005c6480  04 20 93 e5                                      ldr r2, [r3, #4]
005c6484  01 00 a0 e3                                      mov r0, #1
005c6488  04 20 81 e5                                      str r2, [r1, #4]
005c648c  08 20 93 e5                                      ldr r2, [r3, #8]
005c6490  08 20 81 e5                                      str r2, [r1, #8]
005c6494  0c 30 93 e5                                      ldr r3, [r3, #0xc]
005c6498  0c 30 81 e5                                      str r3, [r1, #0xc]
005c649c  e5 ff ff ea                                      b #0x5c6438
005c64a0  04 60 91 e5                                      ldr r6, [r1, #4]
005c64a4  04 50 93 e5                                      ldr r5, [r3, #4]
005c64a8  05 00 56 e1                                      cmp r6, r5
005c64ac  ee ff ff 1a                                      bne #0x5c646c
005c64b0  08 60 91 e5                                      ldr r6, [r1, #8]
005c64b4  08 50 93 e5                                      ldr r5, [r3, #8]
005c64b8  05 00 56 e1                                      cmp r6, r5
005c64bc  ea ff ff 1a                                      bne #0x5c646c
005c64c0  0c 60 91 e5                                      ldr r6, [r1, #0xc]
005c64c4  0c 50 93 e5                                      ldr r5, [r3, #0xc]
005c64c8  05 00 56 e1                                      cmp r6, r5
005c64cc  e6 ff ff 1a                                      bne #0x5c646c
005c64d0  e9 ff ff ea                                      b #0x5c647c

; FUNCTION 0x005c6a9c, declared_size=240, range_size=240, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector4d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS_4core8vector4dIiEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector4d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::setParameterCvt<glitch::core::vector4d<int> >(unsigned short, unsigned int, glitch::core::vector4d<int> const&)
; decoder-mode: arm
005c6a9c  70 00 2d e9                                      push {r4, r5, r6}
005c6aa0  04 40 90 e5                                      ldr r4, [r0, #4]
005c6aa4  d8 c0 9f e5                                      ldr ip, [pc, #0xd8]
005c6aa8  be 50 d4 e1                                      ldrh r5, [r4, #0xe]
005c6aac  0c c0 8f e0                                      add ip, pc, ip
005c6ab0  01 00 55 e1                                      cmp r5, r1
005c6ab4  22 00 00 9a                                      bls #0x5c6b44
005c6ab8  20 40 94 e5                                      ldr r4, [r4, #0x20]
005c6abc  01 12 94 e0                                      adds r1, r4, r1, lsl #4
005c6ac0  1f 00 00 0a                                      beq #0x5c6b44
005c6ac4  bc 50 9f e5                                      ldr r5, [pc, #0xbc]
005c6ac8  06 40 d1 e5                                      ldrb r4, [r1, #6]
005c6acc  05 c0 9c e7                                      ldr ip, [ip, r5]
005c6ad0  04 c1 9c e7                                      ldr ip, [ip, r4, lsl #2]
005c6ad4  10 00 1c e3                                      tst ip, #0x10
005c6ad8  19 00 00 0a                                      beq #0x5c6b44
005c6adc  08 c0 91 e5                                      ldr ip, [r1, #8]
005c6ae0  0c 00 52 e1                                      cmp r2, ip
005c6ae4  16 00 00 2a                                      bhs #0x5c6b44
005c6ae8  04 00 54 e3                                      cmp r4, #4
005c6aec  01 00 a0 13                                      movne r0, #1
005c6af0  0c 40 91 e5                                      ldr r4, [r1, #0xc]
005c6af4  13 00 00 1a                                      bne #0x5c6b48
005c6af8  20 10 80 e2                                      add r1, r0, #0x20
005c6afc  04 c0 91 e7                                      ldr ip, [r1, r4]
005c6b00  00 50 93 e5                                      ldr r5, [r3]
005c6b04  04 20 81 e0                                      add r2, r1, r4
005c6b08  05 00 5c e1                                      cmp ip, r5
005c6b0c  0f 00 00 0a                                      beq #0x5c6b50
005c6b10  00 c0 e0 e3                                      mvn ip, #0
005c6b14  0c c0 80 e5                                      str ip, [r0, #0xc]
005c6b18  10 c0 80 e5                                      str ip, [r0, #0x10]
005c6b1c  00 c0 93 e5                                      ldr ip, [r3]
005c6b20  04 c0 81 e7                                      str ip, [r1, r4]
005c6b24  04 10 93 e5                                      ldr r1, [r3, #4]
005c6b28  01 00 a0 e3                                      mov r0, #1
005c6b2c  04 10 82 e5                                      str r1, [r2, #4]
005c6b30  08 10 93 e5                                      ldr r1, [r3, #8]
005c6b34  08 10 82 e5                                      str r1, [r2, #8]
005c6b38  0c 30 93 e5                                      ldr r3, [r3, #0xc]
005c6b3c  0c 30 82 e5                                      str r3, [r2, #0xc]
005c6b40  00 00 00 ea                                      b #0x5c6b48
005c6b44  00 00 a0 e3                                      mov r0, #0
005c6b48  70 00 bd e8                                      pop {r4, r5, r6}
005c6b4c  1e ff 2f e1                                      bx lr
005c6b50  04 60 92 e5                                      ldr r6, [r2, #4]
005c6b54  04 50 93 e5                                      ldr r5, [r3, #4]
005c6b58  05 00 56 e1                                      cmp r6, r5
005c6b5c  eb ff ff 1a                                      bne #0x5c6b10
005c6b60  08 60 92 e5                                      ldr r6, [r2, #8]
005c6b64  08 50 93 e5                                      ldr r5, [r3, #8]
005c6b68  05 00 56 e1                                      cmp r6, r5
005c6b6c  e7 ff ff 1a                                      bne #0x5c6b10
005c6b70  0c 60 92 e5                                      ldr r6, [r2, #0xc]
005c6b74  0c 50 93 e5                                      ldr r5, [r3, #0xc]
005c6b78  05 00 56 e1                                      cmp r6, r5
005c6b7c  e3 ff ff 1a                                      bne #0x5c6b10
005c6b80  e6 ff ff ea                                      b #0x5c6b20
; mapping-symbol data/literal pool
005c6b84  e4 df 3c 00 a4 2c 00 00                          .byte 0xe4, 0xdf, 0x3c, 0x00, 0xa4, 0x2c, 0x00, 0x00

; FUNCTION 0x005c6f68, declared_size=124, range_size=124, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector4d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE12getParameterINS_4core8vector4dIiEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRSE_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector4d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::getParameter<glitch::core::vector4d<int> >(unsigned short, unsigned int, glitch::core::vector4d<int>&) const
; decoder-mode: arm
005c6f68  04 40 2d e5                                      str r4, [sp, #-4]!
005c6f6c  04 c0 90 e5                                      ldr ip, [r0, #4]
005c6f70  be 40 dc e1                                      ldrh r4, [ip, #0xe]
005c6f74  01 00 54 e1                                      cmp r4, r1
005c6f78  05 00 00 9a                                      bls #0x5c6f94
005c6f7c  20 c0 9c e5                                      ldr ip, [ip, #0x20]
005c6f80  01 12 9c e0                                      adds r1, ip, r1, lsl #4
005c6f84  02 00 00 0a                                      beq #0x5c6f94
005c6f88  06 c0 d1 e5                                      ldrb ip, [r1, #6]
005c6f8c  04 00 5c e3                                      cmp ip, #4
005c6f90  02 00 00 0a                                      beq #0x5c6fa0
005c6f94  00 00 a0 e3                                      mov r0, #0
005c6f98  10 00 bd e8                                      ldm sp!, {r4}
005c6f9c  1e ff 2f e1                                      bx lr
005c6fa0  08 c0 91 e5                                      ldr ip, [r1, #8]
005c6fa4  0c 00 52 e1                                      cmp r2, ip
005c6fa8  f9 ff ff 2a                                      bhs #0x5c6f94
005c6fac  0c c0 91 e5                                      ldr ip, [r1, #0xc]
005c6fb0  20 10 80 e2                                      add r1, r0, #0x20
005c6fb4  01 00 a0 e3                                      mov r0, #1
005c6fb8  02 22 8c e0                                      add r2, ip, r2, lsl #4
005c6fbc  02 c0 91 e7                                      ldr ip, [r1, r2]
005c6fc0  02 20 81 e0                                      add r2, r1, r2
005c6fc4  00 c0 83 e5                                      str ip, [r3]
005c6fc8  04 10 92 e5                                      ldr r1, [r2, #4]
005c6fcc  04 10 83 e5                                      str r1, [r3, #4]
005c6fd0  08 10 92 e5                                      ldr r1, [r2, #8]
005c6fd4  08 10 83 e5                                      str r1, [r3, #8]
005c6fd8  0c 20 92 e5                                      ldr r2, [r2, #0xc]
005c6fdc  0c 20 83 e5                                      str r2, [r3, #0xc]
005c6fe0  ec ff ff ea                                      b #0x5c6f98

; FUNCTION 0x005c7430, declared_size=160, range_size=160, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector4d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15getParameterCvtINS_4core8vector4dIiEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRSE_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector4d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::getParameterCvt<glitch::core::vector4d<int> >(unsigned short, unsigned int, glitch::core::vector4d<int>&) const
; decoder-mode: arm
005c7430  30 00 2d e9                                      push {r4, r5}
005c7434  04 40 90 e5                                      ldr r4, [r0, #4]
005c7438  88 c0 9f e5                                      ldr ip, [pc, #0x88]
005c743c  be 50 d4 e1                                      ldrh r5, [r4, #0xe]
005c7440  0c c0 8f e0                                      add ip, pc, ip
005c7444  01 00 55 e1                                      cmp r5, r1
005c7448  1b 00 00 9a                                      bls #0x5c74bc
005c744c  20 40 94 e5                                      ldr r4, [r4, #0x20]
005c7450  01 12 94 e0                                      adds r1, r4, r1, lsl #4
005c7454  18 00 00 0a                                      beq #0x5c74bc
005c7458  6c 50 9f e5                                      ldr r5, [pc, #0x6c]
005c745c  06 40 d1 e5                                      ldrb r4, [r1, #6]
005c7460  05 c0 9c e7                                      ldr ip, [ip, r5]
005c7464  04 c1 9c e7                                      ldr ip, [ip, r4, lsl #2]
005c7468  10 00 1c e3                                      tst ip, #0x10
005c746c  12 00 00 0a                                      beq #0x5c74bc
005c7470  08 c0 91 e5                                      ldr ip, [r1, #8]
005c7474  0c 00 52 e1                                      cmp r2, ip
005c7478  0f 00 00 2a                                      bhs #0x5c74bc
005c747c  04 00 54 e3                                      cmp r4, #4
005c7480  0c 20 91 e5                                      ldr r2, [r1, #0xc]
005c7484  01 00 a0 13                                      movne r0, #1
005c7488  0c 00 00 1a                                      bne #0x5c74c0
005c748c  20 00 80 e2                                      add r0, r0, #0x20
005c7490  02 10 90 e7                                      ldr r1, [r0, r2]
005c7494  02 20 80 e0                                      add r2, r0, r2
005c7498  01 00 a0 e3                                      mov r0, #1
005c749c  00 10 83 e5                                      str r1, [r3]
005c74a0  04 10 92 e5                                      ldr r1, [r2, #4]
005c74a4  04 10 83 e5                                      str r1, [r3, #4]
005c74a8  08 10 92 e5                                      ldr r1, [r2, #8]
005c74ac  08 10 83 e5                                      str r1, [r3, #8]
005c74b0  0c 20 92 e5                                      ldr r2, [r2, #0xc]
005c74b4  0c 20 83 e5                                      str r2, [r3, #0xc]
005c74b8  00 00 00 ea                                      b #0x5c74c0
005c74bc  00 00 a0 e3                                      mov r0, #0
005c74c0  30 00 bd e8                                      pop {r4, r5}
005c74c4  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
005c74c8  50 d6 3c 00 a4 2c 00 00                          .byte 0x50, 0xd6, 0x3c, 0x00, 0xa4, 0x2c, 0x00, 0x00

; FUNCTION 0x005c839c, declared_size=244, range_size=244, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector4d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15getParameterCvtINS_4core8vector4dIiEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPSE_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector4d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::getParameterCvt<glitch::core::vector4d<int> >(unsigned short, glitch::core::vector4d<int>*, int) const
; decoder-mode: arm
005c839c  70 40 2d e9                                      push {r4, r5, r6, lr}
005c83a0  04 40 90 e5                                      ldr r4, [r0, #4]
005c83a4  dc c0 9f e5                                      ldr ip, [pc, #0xdc]
005c83a8  be 50 d4 e1                                      ldrh r5, [r4, #0xe]
005c83ac  0c c0 8f e0                                      add ip, pc, ip
005c83b0  01 00 55 e1                                      cmp r5, r1
005c83b4  13 00 00 9a                                      bls #0x5c8408
005c83b8  20 40 94 e5                                      ldr r4, [r4, #0x20]
005c83bc  01 12 94 e0                                      adds r1, r4, r1, lsl #4
005c83c0  10 00 00 0a                                      beq #0x5c8408
005c83c4  c0 50 9f e5                                      ldr r5, [pc, #0xc0]
005c83c8  06 40 d1 e5                                      ldrb r4, [r1, #6]
005c83cc  05 c0 9c e7                                      ldr ip, [ip, r5]
005c83d0  04 c1 9c e7                                      ldr ip, [ip, r4, lsl #2]
005c83d4  10 00 1c e3                                      tst ip, #0x10
005c83d8  0a 00 00 0a                                      beq #0x5c8408
005c83dc  01 c0 73 e2                                      rsbs ip, r3, #1
005c83e0  00 c0 a0 33                                      movlo ip, #0
005c83e4  00 00 53 e3                                      cmp r3, #0
005c83e8  10 00 53 13                                      cmpne r3, #0x10
005c83ec  07 00 00 1a                                      bne #0x5c8410
005c83f0  04 00 54 e3                                      cmp r4, #4
005c83f4  1a 00 00 0a                                      beq #0x5c8464
005c83f8  00 00 5c e3                                      cmp ip, #0
005c83fc  03 00 00 0a                                      beq #0x5c8410
005c8400  01 00 a0 e3                                      mov r0, #1
005c8404  70 80 bd e8                                      pop {r4, r5, r6, pc}
005c8408  00 00 a0 e3                                      mov r0, #0
005c840c  70 80 bd e8                                      pop {r4, r5, r6, pc}
005c8410  04 00 54 e3                                      cmp r4, #4
005c8414  0c c0 91 e5                                      ldr ip, [r1, #0xc]
005c8418  f8 ff ff 1a                                      bne #0x5c8400
005c841c  08 10 91 e5                                      ldr r1, [r1, #8]
005c8420  00 00 51 e3                                      cmp r1, #0
005c8424  f5 ff ff 0a                                      beq #0x5c8400
005c8428  20 00 80 e2                                      add r0, r0, #0x20
005c842c  0c 00 80 e0                                      add r0, r0, ip
005c8430  00 c0 90 e5                                      ldr ip, [r0]
005c8434  01 10 51 e2                                      subs r1, r1, #1
005c8438  00 c0 82 e5                                      str ip, [r2]
005c843c  04 c0 90 e5                                      ldr ip, [r0, #4]
005c8440  04 c0 82 e5                                      str ip, [r2, #4]
005c8444  08 c0 90 e5                                      ldr ip, [r0, #8]
005c8448  08 c0 82 e5                                      str ip, [r2, #8]
005c844c  0c c0 90 e5                                      ldr ip, [r0, #0xc]
005c8450  10 00 80 e2                                      add r0, r0, #0x10
005c8454  0c c0 82 e5                                      str ip, [r2, #0xc]
005c8458  03 20 82 e0                                      add r2, r2, r3
005c845c  f3 ff ff 1a                                      bne #0x5c8430
005c8460  e6 ff ff ea                                      b #0x5c8400
005c8464  0c c0 91 e5                                      ldr ip, [r1, #0xc]
005c8468  08 30 91 e5                                      ldr r3, [r1, #8]
005c846c  20 10 80 e2                                      add r1, r0, #0x20
005c8470  0c 10 81 e0                                      add r1, r1, ip
005c8474  02 00 a0 e1                                      mov r0, r2
005c8478  03 22 a0 e1                                      lsl r2, r3, #4
005c847c  f9 18 f5 eb                                      bl #0x30e868
005c8480  01 00 a0 e3                                      mov r0, #1
005c8484  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005c8488  e4 c6 3c 00 a4 2c 00 00                          .byte 0xe4, 0xc6, 0x3c, 0x00, 0xa4, 0x2c, 0x00, 0x00

; FUNCTION 0x005c8b74, declared_size=180, range_size=180, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector4d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE12getParameterINS_4core8vector4dIiEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPSE_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector4d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::getParameter<glitch::core::vector4d<int> >(unsigned short, glitch::core::vector4d<int>*, int) const
; decoder-mode: arm
005c8b74  10 40 2d e9                                      push {r4, lr}
005c8b78  04 c0 90 e5                                      ldr ip, [r0, #4]
005c8b7c  be 40 dc e1                                      ldrh r4, [ip, #0xe]
005c8b80  01 00 54 e1                                      cmp r4, r1
005c8b84  05 00 00 9a                                      bls #0x5c8ba0
005c8b88  20 c0 9c e5                                      ldr ip, [ip, #0x20]
005c8b8c  01 12 9c e0                                      adds r1, ip, r1, lsl #4
005c8b90  02 00 00 0a                                      beq #0x5c8ba0
005c8b94  06 c0 d1 e5                                      ldrb ip, [r1, #6]
005c8b98  04 00 5c e3                                      cmp ip, #4
005c8b9c  01 00 00 0a                                      beq #0x5c8ba8
005c8ba0  00 00 a0 e3                                      mov r0, #0
005c8ba4  10 80 bd e8                                      pop {r4, pc}
005c8ba8  00 00 53 e3                                      cmp r3, #0
005c8bac  10 00 53 13                                      cmpne r3, #0x10
005c8bb0  13 00 00 0a                                      beq #0x5c8c04
005c8bb4  08 c0 91 e5                                      ldr ip, [r1, #8]
005c8bb8  0c 10 91 e5                                      ldr r1, [r1, #0xc]
005c8bbc  00 00 5c e3                                      cmp ip, #0
005c8bc0  0d 00 00 0a                                      beq #0x5c8bfc
005c8bc4  20 00 80 e2                                      add r0, r0, #0x20
005c8bc8  01 00 80 e0                                      add r0, r0, r1
005c8bcc  00 10 90 e5                                      ldr r1, [r0]
005c8bd0  01 c0 5c e2                                      subs ip, ip, #1
005c8bd4  00 10 82 e5                                      str r1, [r2]
005c8bd8  04 10 90 e5                                      ldr r1, [r0, #4]
005c8bdc  04 10 82 e5                                      str r1, [r2, #4]
005c8be0  08 10 90 e5                                      ldr r1, [r0, #8]
005c8be4  08 10 82 e5                                      str r1, [r2, #8]
005c8be8  0c 10 90 e5                                      ldr r1, [r0, #0xc]
005c8bec  10 00 80 e2                                      add r0, r0, #0x10
005c8bf0  0c 10 82 e5                                      str r1, [r2, #0xc]
005c8bf4  03 20 82 e0                                      add r2, r2, r3
005c8bf8  f3 ff ff 1a                                      bne #0x5c8bcc
005c8bfc  01 00 a0 e3                                      mov r0, #1
005c8c00  10 80 bd e8                                      pop {r4, pc}
005c8c04  0c c0 91 e5                                      ldr ip, [r1, #0xc]
005c8c08  08 30 91 e5                                      ldr r3, [r1, #8]
005c8c0c  20 10 80 e2                                      add r1, r0, #0x20
005c8c10  0c 10 81 e0                                      add r1, r1, ip
005c8c14  02 00 a0 e1                                      mov r0, r2
005c8c18  03 22 a0 e1                                      lsl r2, r3, #4
005c8c1c  11 17 f5 eb                                      bl #0x30e868
005c8c20  01 00 a0 e3                                      mov r0, #1
005c8c24  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005c9778, declared_size=264, range_size=264, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector4d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS_4core8vector4dIiEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPKSE_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector4d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::setParameterCvt<glitch::core::vector4d<int> >(unsigned short, glitch::core::vector4d<int> const*, int)
; decoder-mode: arm
005c9778  70 40 2d e9                                      push {r4, r5, r6, lr}
005c977c  04 40 90 e5                                      ldr r4, [r0, #4]
005c9780  f0 c0 9f e5                                      ldr ip, [pc, #0xf0]
005c9784  be 50 d4 e1                                      ldrh r5, [r4, #0xe]
005c9788  0c c0 8f e0                                      add ip, pc, ip
005c978c  01 00 55 e1                                      cmp r5, r1
005c9790  18 00 00 9a                                      bls #0x5c97f8
005c9794  20 40 94 e5                                      ldr r4, [r4, #0x20]
005c9798  01 12 94 e0                                      adds r1, r4, r1, lsl #4
005c979c  15 00 00 0a                                      beq #0x5c97f8
005c97a0  d4 50 9f e5                                      ldr r5, [pc, #0xd4]
005c97a4  06 40 d1 e5                                      ldrb r4, [r1, #6]
005c97a8  05 c0 9c e7                                      ldr ip, [ip, r5]
005c97ac  04 c1 9c e7                                      ldr ip, [ip, r4, lsl #2]
005c97b0  10 00 1c e3                                      tst ip, #0x10
005c97b4  0f 00 00 0a                                      beq #0x5c97f8
005c97b8  00 c0 e0 e3                                      mvn ip, #0
005c97bc  01 40 73 e2                                      rsbs r4, r3, #1
005c97c0  00 40 a0 33                                      movlo r4, #0
005c97c4  0c c0 80 e5                                      str ip, [r0, #0xc]
005c97c8  00 00 53 e3                                      cmp r3, #0
005c97cc  10 00 53 13                                      cmpne r3, #0x10
005c97d0  10 c0 80 e5                                      str ip, [r0, #0x10]
005c97d4  06 c0 d1 15                                      ldrbne ip, [r1, #6]
005c97d8  08 00 00 1a                                      bne #0x5c9800
005c97dc  06 c0 d1 e5                                      ldrb ip, [r1, #6]
005c97e0  04 00 5c e3                                      cmp ip, #4
005c97e4  1a 00 00 0a                                      beq #0x5c9854
005c97e8  00 00 54 e3                                      cmp r4, #0
005c97ec  03 00 00 0a                                      beq #0x5c9800
005c97f0  01 00 a0 e3                                      mov r0, #1
005c97f4  70 80 bd e8                                      pop {r4, r5, r6, pc}
005c97f8  00 00 a0 e3                                      mov r0, #0
005c97fc  70 80 bd e8                                      pop {r4, r5, r6, pc}
005c9800  04 00 5c e3                                      cmp ip, #4
005c9804  0c c0 91 e5                                      ldr ip, [r1, #0xc]
005c9808  f8 ff ff 1a                                      bne #0x5c97f0
005c980c  08 10 91 e5                                      ldr r1, [r1, #8]
005c9810  00 00 51 e3                                      cmp r1, #0
005c9814  f5 ff ff 0a                                      beq #0x5c97f0
005c9818  20 00 80 e2                                      add r0, r0, #0x20
005c981c  0c 00 80 e0                                      add r0, r0, ip
005c9820  00 c0 92 e5                                      ldr ip, [r2]
005c9824  01 10 51 e2                                      subs r1, r1, #1
005c9828  00 c0 80 e5                                      str ip, [r0]
005c982c  04 c0 92 e5                                      ldr ip, [r2, #4]
005c9830  04 c0 80 e5                                      str ip, [r0, #4]
005c9834  08 c0 92 e5                                      ldr ip, [r2, #8]
005c9838  08 c0 80 e5                                      str ip, [r0, #8]
005c983c  0c c0 92 e5                                      ldr ip, [r2, #0xc]
005c9840  03 20 82 e0                                      add r2, r2, r3
005c9844  0c c0 80 e5                                      str ip, [r0, #0xc]
005c9848  10 00 80 e2                                      add r0, r0, #0x10
005c984c  f3 ff ff 1a                                      bne #0x5c9820
005c9850  e6 ff ff ea                                      b #0x5c97f0
005c9854  08 30 91 e5                                      ldr r3, [r1, #8]
005c9858  0c c0 91 e5                                      ldr ip, [r1, #0xc]
005c985c  20 00 80 e2                                      add r0, r0, #0x20
005c9860  02 10 a0 e1                                      mov r1, r2
005c9864  0c 00 80 e0                                      add r0, r0, ip
005c9868  03 22 a0 e1                                      lsl r2, r3, #4
005c986c  fd 13 f5 eb                                      bl #0x30e868
005c9870  01 00 a0 e3                                      mov r0, #1
005c9874  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005c9878  08 b3 3c 00 a4 2c 00 00                          .byte 0x08, 0xb3, 0x3c, 0x00, 0xa4, 0x2c, 0x00, 0x00

; FUNCTION 0x005ca024, declared_size=192, range_size=192, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector4d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE12setParameterINS_4core8vector4dIiEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPKSE_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector4d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::setParameter<glitch::core::vector4d<int> >(unsigned short, glitch::core::vector4d<int> const*, int)
; decoder-mode: arm
005ca024  10 40 2d e9                                      push {r4, lr}
005ca028  04 c0 90 e5                                      ldr ip, [r0, #4]
005ca02c  be 40 dc e1                                      ldrh r4, [ip, #0xe]
005ca030  01 00 54 e1                                      cmp r4, r1
005ca034  05 00 00 9a                                      bls #0x5ca050
005ca038  20 c0 9c e5                                      ldr ip, [ip, #0x20]
005ca03c  01 12 9c e0                                      adds r1, ip, r1, lsl #4
005ca040  02 00 00 0a                                      beq #0x5ca050
005ca044  06 c0 d1 e5                                      ldrb ip, [r1, #6]
005ca048  04 00 5c e3                                      cmp ip, #4
005ca04c  01 00 00 0a                                      beq #0x5ca058
005ca050  00 00 a0 e3                                      mov r0, #0
005ca054  10 80 bd e8                                      pop {r4, pc}
005ca058  00 c0 e0 e3                                      mvn ip, #0
005ca05c  00 00 53 e3                                      cmp r3, #0
005ca060  10 00 53 13                                      cmpne r3, #0x10
005ca064  0c c0 80 e5                                      str ip, [r0, #0xc]
005ca068  10 c0 80 e5                                      str ip, [r0, #0x10]
005ca06c  13 00 00 0a                                      beq #0x5ca0c0
005ca070  08 c0 91 e5                                      ldr ip, [r1, #8]
005ca074  0c 10 91 e5                                      ldr r1, [r1, #0xc]
005ca078  00 00 5c e3                                      cmp ip, #0
005ca07c  0d 00 00 0a                                      beq #0x5ca0b8
005ca080  20 00 80 e2                                      add r0, r0, #0x20
005ca084  01 00 80 e0                                      add r0, r0, r1
005ca088  00 10 92 e5                                      ldr r1, [r2]
005ca08c  01 c0 5c e2                                      subs ip, ip, #1
005ca090  00 10 80 e5                                      str r1, [r0]
005ca094  04 10 92 e5                                      ldr r1, [r2, #4]
005ca098  04 10 80 e5                                      str r1, [r0, #4]
005ca09c  08 10 92 e5                                      ldr r1, [r2, #8]
005ca0a0  08 10 80 e5                                      str r1, [r0, #8]
005ca0a4  0c 10 92 e5                                      ldr r1, [r2, #0xc]
005ca0a8  03 20 82 e0                                      add r2, r2, r3
005ca0ac  0c 10 80 e5                                      str r1, [r0, #0xc]
005ca0b0  10 00 80 e2                                      add r0, r0, #0x10
005ca0b4  f3 ff ff 1a                                      bne #0x5ca088
005ca0b8  01 00 a0 e3                                      mov r0, #1
005ca0bc  10 80 bd e8                                      pop {r4, pc}
005ca0c0  08 30 91 e5                                      ldr r3, [r1, #8]
005ca0c4  0c c0 91 e5                                      ldr ip, [r1, #0xc]
005ca0c8  20 00 80 e2                                      add r0, r0, #0x20
005ca0cc  02 10 a0 e1                                      mov r1, r2
005ca0d0  0c 00 80 e0                                      add r0, r0, ip
005ca0d4  03 22 a0 e1                                      lsl r2, r3, #4
005ca0d8  e2 11 f5 eb                                      bl #0x30e868
005ca0dc  01 00 a0 e3                                      mov r0, #1
005ca0e0  10 80 bd e8                                      pop {r4, pc}

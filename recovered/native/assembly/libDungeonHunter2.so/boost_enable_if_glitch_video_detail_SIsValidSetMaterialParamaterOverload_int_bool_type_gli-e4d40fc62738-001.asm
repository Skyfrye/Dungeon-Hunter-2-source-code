; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005cf05c, declared_size=92, range_size=92, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<int>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE12setParameterIiEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSB_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<int>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::setParameter<int>(unsigned short, unsigned int, int const&)
; decoder-mode: arm
005cf05c  04 40 2d e5                                      str r4, [sp, #-4]!
005cf060  be c0 d0 e1                                      ldrh ip, [r0, #0xe]
005cf064  01 00 5c e1                                      cmp ip, r1
005cf068  05 00 00 9a                                      bls #0x5cf084
005cf06c  20 c0 90 e5                                      ldr ip, [r0, #0x20]
005cf070  01 12 9c e0                                      adds r1, ip, r1, lsl #4
005cf074  02 00 00 0a                                      beq #0x5cf084
005cf078  06 c0 d1 e5                                      ldrb ip, [r1, #6]
005cf07c  01 00 5c e3                                      cmp ip, #1
005cf080  02 00 00 0a                                      beq #0x5cf090
005cf084  00 00 a0 e3                                      mov r0, #0
005cf088  10 00 bd e8                                      ldm sp!, {r4}
005cf08c  1e ff 2f e1                                      bx lr
005cf090  08 40 91 e5                                      ldr r4, [r1, #8]
005cf094  04 00 52 e1                                      cmp r2, r4
005cf098  f9 ff ff 2a                                      bhs #0x5cf084
005cf09c  0c 40 91 e5                                      ldr r4, [r1, #0xc]
005cf0a0  00 30 93 e5                                      ldr r3, [r3]
005cf0a4  24 10 90 e5                                      ldr r1, [r0, #0x24]
005cf0a8  02 21 84 e0                                      add r2, r4, r2, lsl #2
005cf0ac  0c 00 a0 e1                                      mov r0, ip
005cf0b0  02 30 81 e7                                      str r3, [r1, r2]
005cf0b4  f3 ff ff ea                                      b #0x5cf088

; FUNCTION 0x005cf458, declared_size=148, range_size=148, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<int>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtIiEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSB_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<int>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::setParameterCvt<int>(unsigned short, unsigned int, int const&)
; decoder-mode: arm
005cf458  70 40 2d e9                                      push {r4, r5, r6, lr}
005cf45c  be 40 d0 e1                                      ldrh r4, [r0, #0xe]
005cf460  7c c0 9f e5                                      ldr ip, [pc, #0x7c]
005cf464  01 00 54 e1                                      cmp r4, r1
005cf468  0c c0 8f e0                                      add ip, pc, ip
005cf46c  16 00 00 9a                                      bls #0x5cf4cc
005cf470  20 40 90 e5                                      ldr r4, [r0, #0x20]
005cf474  01 12 94 e0                                      adds r1, r4, r1, lsl #4
005cf478  13 00 00 0a                                      beq #0x5cf4cc
005cf47c  64 40 9f e5                                      ldr r4, [pc, #0x64]
005cf480  06 60 d1 e5                                      ldrb r6, [r1, #6]
005cf484  04 c0 9c e7                                      ldr ip, [ip, r4]
005cf488  06 c1 9c e7                                      ldr ip, [ip, r6, lsl #2]
005cf48c  02 00 1c e3                                      tst ip, #2
005cf490  0d 00 00 0a                                      beq #0x5cf4cc
005cf494  08 c0 91 e5                                      ldr ip, [r1, #8]
005cf498  0c 00 52 e1                                      cmp r2, ip
005cf49c  0a 00 00 2a                                      bhs #0x5cf4cc
005cf4a0  01 00 56 e3                                      cmp r6, #1
005cf4a4  24 50 90 e5                                      ldr r5, [r0, #0x24]
005cf4a8  0c 40 91 e5                                      ldr r4, [r1, #0xc]
005cf4ac  08 00 00 0a                                      beq #0x5cf4d4
005cf4b0  05 00 56 e3                                      cmp r6, #5
005cf4b4  02 00 00 1a                                      bne #0x5cf4c4
005cf4b8  00 00 93 e5                                      ldr r0, [r3]
005cf4bc  28 fd f4 eb                                      bl #0x30e964
005cf4c0  04 00 85 e7                                      str r0, [r5, r4]
005cf4c4  01 00 a0 e3                                      mov r0, #1
005cf4c8  70 80 bd e8                                      pop {r4, r5, r6, pc}
005cf4cc  00 00 a0 e3                                      mov r0, #0
005cf4d0  70 80 bd e8                                      pop {r4, r5, r6, pc}
005cf4d4  00 30 93 e5                                      ldr r3, [r3]
005cf4d8  06 00 a0 e1                                      mov r0, r6
005cf4dc  04 30 85 e7                                      str r3, [r5, r4]
005cf4e0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005cf4e4  28 56 3c 00 a4 2c 00 00                          .byte 0x28, 0x56, 0x3c, 0x00, 0xa4, 0x2c, 0x00, 0x00

; FUNCTION 0x005cfc88, declared_size=92, range_size=92, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<int>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE12getParameterIiEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRSB_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<int>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::getParameter<int>(unsigned short, unsigned int, int&) const
; decoder-mode: arm
005cfc88  04 40 2d e5                                      str r4, [sp, #-4]!
005cfc8c  be c0 d0 e1                                      ldrh ip, [r0, #0xe]
005cfc90  01 00 5c e1                                      cmp ip, r1
005cfc94  05 00 00 9a                                      bls #0x5cfcb0
005cfc98  20 c0 90 e5                                      ldr ip, [r0, #0x20]
005cfc9c  01 12 9c e0                                      adds r1, ip, r1, lsl #4
005cfca0  02 00 00 0a                                      beq #0x5cfcb0
005cfca4  06 c0 d1 e5                                      ldrb ip, [r1, #6]
005cfca8  01 00 5c e3                                      cmp ip, #1
005cfcac  02 00 00 0a                                      beq #0x5cfcbc
005cfcb0  00 00 a0 e3                                      mov r0, #0
005cfcb4  10 00 bd e8                                      ldm sp!, {r4}
005cfcb8  1e ff 2f e1                                      bx lr
005cfcbc  08 40 91 e5                                      ldr r4, [r1, #8]
005cfcc0  04 00 52 e1                                      cmp r2, r4
005cfcc4  f9 ff ff 2a                                      bhs #0x5cfcb0
005cfcc8  0c 40 91 e5                                      ldr r4, [r1, #0xc]
005cfccc  24 10 90 e5                                      ldr r1, [r0, #0x24]
005cfcd0  0c 00 a0 e1                                      mov r0, ip
005cfcd4  02 21 84 e0                                      add r2, r4, r2, lsl #2
005cfcd8  02 20 91 e7                                      ldr r2, [r1, r2]
005cfcdc  00 20 83 e5                                      str r2, [r3]
005cfce0  f3 ff ff ea                                      b #0x5cfcb4

; FUNCTION 0x005d0078, declared_size=152, range_size=152, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<int>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE15getParameterCvtIiEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRSB_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<int>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::getParameterCvt<int>(unsigned short, unsigned int, int&) const
; decoder-mode: arm
005d0078  70 40 2d e9                                      push {r4, r5, r6, lr}
005d007c  be 40 d0 e1                                      ldrh r4, [r0, #0xe]
005d0080  80 c0 9f e5                                      ldr ip, [pc, #0x80]
005d0084  01 00 54 e1                                      cmp r4, r1
005d0088  0c c0 8f e0                                      add ip, pc, ip
005d008c  03 40 a0 e1                                      mov r4, r3
005d0090  16 00 00 9a                                      bls #0x5d00f0
005d0094  20 30 90 e5                                      ldr r3, [r0, #0x20]
005d0098  01 12 93 e0                                      adds r1, r3, r1, lsl #4
005d009c  13 00 00 0a                                      beq #0x5d00f0
005d00a0  64 50 9f e5                                      ldr r5, [pc, #0x64]
005d00a4  06 30 d1 e5                                      ldrb r3, [r1, #6]
005d00a8  05 c0 9c e7                                      ldr ip, [ip, r5]
005d00ac  03 c1 9c e7                                      ldr ip, [ip, r3, lsl #2]
005d00b0  02 00 1c e3                                      tst ip, #2
005d00b4  0d 00 00 0a                                      beq #0x5d00f0
005d00b8  08 c0 91 e5                                      ldr ip, [r1, #8]
005d00bc  0c 00 52 e1                                      cmp r2, ip
005d00c0  0a 00 00 2a                                      bhs #0x5d00f0
005d00c4  01 00 53 e3                                      cmp r3, #1
005d00c8  24 00 90 e5                                      ldr r0, [r0, #0x24]
005d00cc  0c 20 91 e5                                      ldr r2, [r1, #0xc]
005d00d0  08 00 00 0a                                      beq #0x5d00f8
005d00d4  05 00 53 e3                                      cmp r3, #5
005d00d8  02 00 00 1a                                      bne #0x5d00e8
005d00dc  02 00 90 e7                                      ldr r0, [r0, r2]
005d00e0  f9 f8 f4 eb                                      bl #0x30e4cc
005d00e4  00 00 84 e5                                      str r0, [r4]
005d00e8  01 00 a0 e3                                      mov r0, #1
005d00ec  70 80 bd e8                                      pop {r4, r5, r6, pc}
005d00f0  00 00 a0 e3                                      mov r0, #0
005d00f4  70 80 bd e8                                      pop {r4, r5, r6, pc}
005d00f8  02 20 90 e7                                      ldr r2, [r0, r2]
005d00fc  03 00 a0 e1                                      mov r0, r3
005d0100  00 20 84 e5                                      str r2, [r4]
005d0104  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005d0108  08 4a 3c 00 a4 2c 00 00                          .byte 0x08, 0x4a, 0x3c, 0x00, 0xa4, 0x2c, 0x00, 0x00

; FUNCTION 0x005d1428, declared_size=216, range_size=216, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<int>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE15getParameterCvtIiEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPSB_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<int>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::getParameterCvt<int>(unsigned short, int*, int) const
; decoder-mode: arm
005d1428  70 40 2d e9                                      push {r4, r5, r6, lr}
005d142c  be 40 d0 e1                                      ldrh r4, [r0, #0xe]
005d1430  c0 c0 9f e5                                      ldr ip, [pc, #0xc0]
005d1434  01 00 54 e1                                      cmp r4, r1
005d1438  0c c0 8f e0                                      add ip, pc, ip
005d143c  13 00 00 9a                                      bls #0x5d1490
005d1440  20 40 90 e5                                      ldr r4, [r0, #0x20]
005d1444  01 12 94 e0                                      adds r1, r4, r1, lsl #4
005d1448  10 00 00 0a                                      beq #0x5d1490
005d144c  a8 50 9f e5                                      ldr r5, [pc, #0xa8]
005d1450  06 40 d1 e5                                      ldrb r4, [r1, #6]
005d1454  05 c0 9c e7                                      ldr ip, [ip, r5]
005d1458  04 c1 9c e7                                      ldr ip, [ip, r4, lsl #2]
005d145c  02 00 1c e3                                      tst ip, #2
005d1460  0a 00 00 0a                                      beq #0x5d1490
005d1464  01 c0 73 e2                                      rsbs ip, r3, #1
005d1468  00 c0 a0 33                                      movlo ip, #0
005d146c  00 00 53 e3                                      cmp r3, #0
005d1470  04 00 53 13                                      cmpne r3, #4
005d1474  07 00 00 1a                                      bne #0x5d1498
005d1478  01 00 54 e3                                      cmp r4, #1
005d147c  14 00 00 0a                                      beq #0x5d14d4
005d1480  00 00 5c e3                                      cmp ip, #0
005d1484  03 00 00 0a                                      beq #0x5d1498
005d1488  01 00 a0 e3                                      mov r0, #1
005d148c  70 80 bd e8                                      pop {r4, r5, r6, pc}
005d1490  00 00 a0 e3                                      mov r0, #0
005d1494  70 80 bd e8                                      pop {r4, r5, r6, pc}
005d1498  01 00 54 e3                                      cmp r4, #1
005d149c  24 40 90 e5                                      ldr r4, [r0, #0x24]
005d14a0  0c 00 91 e5                                      ldr r0, [r1, #0xc]
005d14a4  f7 ff ff 1a                                      bne #0x5d1488
005d14a8  08 c0 91 e5                                      ldr ip, [r1, #8]
005d14ac  00 00 5c e3                                      cmp ip, #0
005d14b0  f4 ff ff 0a                                      beq #0x5d1488
005d14b4  00 40 84 e0                                      add r4, r4, r0
005d14b8  00 10 a0 e3                                      mov r1, #0
005d14bc  01 01 94 e7                                      ldr r0, [r4, r1, lsl #2]
005d14c0  01 10 81 e2                                      add r1, r1, #1
005d14c4  0c 00 51 e1                                      cmp r1, ip
005d14c8  03 00 82 e6                                      str r0, [r2], r3
005d14cc  fa ff ff 1a                                      bne #0x5d14bc
005d14d0  ec ff ff ea                                      b #0x5d1488
005d14d4  24 e0 90 e5                                      ldr lr, [r0, #0x24]
005d14d8  08 30 91 e5                                      ldr r3, [r1, #8]
005d14dc  0c c0 91 e5                                      ldr ip, [r1, #0xc]
005d14e0  02 00 a0 e1                                      mov r0, r2
005d14e4  03 21 a0 e1                                      lsl r2, r3, #2
005d14e8  0c 10 8e e0                                      add r1, lr, ip
005d14ec  dd f4 f4 eb                                      bl #0x30e868
005d14f0  04 00 a0 e1                                      mov r0, r4
005d14f4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005d14f8  58 36 3c 00 a4 2c 00 00                          .byte 0x58, 0x36, 0x3c, 0x00, 0xa4, 0x2c, 0x00, 0x00

; FUNCTION 0x005d1b24, declared_size=156, range_size=156, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<int>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE12getParameterIiEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPSB_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<int>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::getParameter<int>(unsigned short, int*, int) const
; decoder-mode: arm
005d1b24  70 40 2d e9                                      push {r4, r5, r6, lr}
005d1b28  be c0 d0 e1                                      ldrh ip, [r0, #0xe]
005d1b2c  01 00 5c e1                                      cmp ip, r1
005d1b30  05 00 00 9a                                      bls #0x5d1b4c
005d1b34  20 50 90 e5                                      ldr r5, [r0, #0x20]
005d1b38  01 52 95 e0                                      adds r5, r5, r1, lsl #4
005d1b3c  02 00 00 0a                                      beq #0x5d1b4c
005d1b40  06 40 d5 e5                                      ldrb r4, [r5, #6]
005d1b44  01 00 54 e3                                      cmp r4, #1
005d1b48  01 00 00 0a                                      beq #0x5d1b54
005d1b4c  00 00 a0 e3                                      mov r0, #0
005d1b50  70 80 bd e8                                      pop {r4, r5, r6, pc}
005d1b54  00 00 53 e3                                      cmp r3, #0
005d1b58  04 00 53 13                                      cmpne r3, #4
005d1b5c  00 10 a0 13                                      movne r1, #0
005d1b60  01 10 a0 03                                      moveq r1, #1
005d1b64  0c 00 00 0a                                      beq #0x5d1b9c
005d1b68  08 c0 95 e5                                      ldr ip, [r5, #8]
005d1b6c  24 40 90 e5                                      ldr r4, [r0, #0x24]
005d1b70  0c 00 95 e5                                      ldr r0, [r5, #0xc]
005d1b74  00 00 5c e3                                      cmp ip, #0
005d1b78  05 00 00 0a                                      beq #0x5d1b94
005d1b7c  00 40 84 e0                                      add r4, r4, r0
005d1b80  01 01 94 e7                                      ldr r0, [r4, r1, lsl #2]
005d1b84  01 10 81 e2                                      add r1, r1, #1
005d1b88  01 00 5c e1                                      cmp ip, r1
005d1b8c  03 00 82 e6                                      str r0, [r2], r3
005d1b90  fa ff ff 1a                                      bne #0x5d1b80
005d1b94  01 00 a0 e3                                      mov r0, #1
005d1b98  70 80 bd e8                                      pop {r4, r5, r6, pc}
005d1b9c  24 c0 90 e5                                      ldr ip, [r0, #0x24]
005d1ba0  0c 10 95 e5                                      ldr r1, [r5, #0xc]
005d1ba4  08 30 95 e5                                      ldr r3, [r5, #8]
005d1ba8  02 00 a0 e1                                      mov r0, r2
005d1bac  01 10 8c e0                                      add r1, ip, r1
005d1bb0  03 21 a0 e1                                      lsl r2, r3, #2
005d1bb4  2b f3 f4 eb                                      bl #0x30e868
005d1bb8  04 00 a0 e1                                      mov r0, r4
005d1bbc  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x005d2744, declared_size=276, range_size=276, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<int>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtIiEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPKSB_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<int>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::setParameterCvt<int>(unsigned short, int const*, int)
; decoder-mode: arm
005d2744  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005d2748  be 40 d0 e1                                      ldrh r4, [r0, #0xe]
005d274c  fc c0 9f e5                                      ldr ip, [pc, #0xfc]
005d2750  02 50 a0 e1                                      mov r5, r2
005d2754  01 00 54 e1                                      cmp r4, r1
005d2758  0c c0 8f e0                                      add ip, pc, ip
005d275c  03 70 a0 e1                                      mov r7, r3
005d2760  13 00 00 9a                                      bls #0x5d27b4
005d2764  20 30 90 e5                                      ldr r3, [r0, #0x20]
005d2768  01 12 93 e0                                      adds r1, r3, r1, lsl #4
005d276c  10 00 00 0a                                      beq #0x5d27b4
005d2770  dc 30 9f e5                                      ldr r3, [pc, #0xdc]
005d2774  06 40 d1 e5                                      ldrb r4, [r1, #6]
005d2778  03 30 9c e7                                      ldr r3, [ip, r3]
005d277c  04 31 93 e7                                      ldr r3, [r3, r4, lsl #2]
005d2780  02 00 13 e3                                      tst r3, #2
005d2784  0a 00 00 0a                                      beq #0x5d27b4
005d2788  01 30 77 e2                                      rsbs r3, r7, #1
005d278c  00 30 a0 33                                      movlo r3, #0
005d2790  00 00 57 e3                                      cmp r7, #0
005d2794  04 00 57 13                                      cmpne r7, #4
005d2798  07 00 00 1a                                      bne #0x5d27bc
005d279c  01 00 54 e3                                      cmp r4, #1
005d27a0  21 00 00 0a                                      beq #0x5d282c
005d27a4  00 00 53 e3                                      cmp r3, #0
005d27a8  03 00 00 0a                                      beq #0x5d27bc
005d27ac  01 00 a0 e3                                      mov r0, #1
005d27b0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005d27b4  00 00 a0 e3                                      mov r0, #0
005d27b8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005d27bc  24 60 90 e5                                      ldr r6, [r0, #0x24]
005d27c0  0c 30 91 e5                                      ldr r3, [r1, #0xc]
005d27c4  01 00 54 e3                                      cmp r4, #1
005d27c8  03 60 86 e0                                      add r6, r6, r3
005d27cc  0c 00 00 0a                                      beq #0x5d2804
005d27d0  05 00 54 e3                                      cmp r4, #5
005d27d4  f4 ff ff 1a                                      bne #0x5d27ac
005d27d8  08 80 91 e5                                      ldr r8, [r1, #8]
005d27dc  00 00 58 e3                                      cmp r8, #0
005d27e0  f1 ff ff 0a                                      beq #0x5d27ac
005d27e4  00 40 a0 e3                                      mov r4, #0
005d27e8  07 00 95 e6                                      ldr r0, [r5], r7
005d27ec  5c f0 f4 eb                                      bl #0x30e964
005d27f0  04 01 86 e7                                      str r0, [r6, r4, lsl #2]
005d27f4  01 40 84 e2                                      add r4, r4, #1
005d27f8  08 00 54 e1                                      cmp r4, r8
005d27fc  f9 ff ff 1a                                      bne #0x5d27e8
005d2800  e9 ff ff ea                                      b #0x5d27ac
005d2804  08 10 91 e5                                      ldr r1, [r1, #8]
005d2808  00 00 51 e3                                      cmp r1, #0
005d280c  e6 ff ff 0a                                      beq #0x5d27ac
005d2810  00 30 a0 e3                                      mov r3, #0
005d2814  07 20 95 e6                                      ldr r2, [r5], r7
005d2818  03 21 86 e7                                      str r2, [r6, r3, lsl #2]
005d281c  01 30 83 e2                                      add r3, r3, #1
005d2820  01 00 53 e1                                      cmp r3, r1
005d2824  fa ff ff 1a                                      bne #0x5d2814
005d2828  df ff ff ea                                      b #0x5d27ac
005d282c  08 20 91 e5                                      ldr r2, [r1, #8]
005d2830  0c 30 91 e5                                      ldr r3, [r1, #0xc]
005d2834  24 00 90 e5                                      ldr r0, [r0, #0x24]
005d2838  05 10 a0 e1                                      mov r1, r5
005d283c  02 21 a0 e1                                      lsl r2, r2, #2
005d2840  03 00 80 e0                                      add r0, r0, r3
005d2844  07 f0 f4 eb                                      bl #0x30e868
005d2848  04 00 a0 e1                                      mov r0, r4
005d284c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
005d2850  38 23 3c 00 a4 2c 00 00                          .byte 0x38, 0x23, 0x3c, 0x00, 0xa4, 0x2c, 0x00, 0x00

; FUNCTION 0x005d2e7c, declared_size=156, range_size=156, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<int>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE12setParameterIiEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPKSB_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<int>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::setParameter<int>(unsigned short, int const*, int)
; decoder-mode: arm
005d2e7c  70 40 2d e9                                      push {r4, r5, r6, lr}
005d2e80  be c0 d0 e1                                      ldrh ip, [r0, #0xe]
005d2e84  01 00 5c e1                                      cmp ip, r1
005d2e88  05 00 00 9a                                      bls #0x5d2ea4
005d2e8c  20 50 90 e5                                      ldr r5, [r0, #0x20]
005d2e90  01 52 95 e0                                      adds r5, r5, r1, lsl #4
005d2e94  02 00 00 0a                                      beq #0x5d2ea4
005d2e98  06 40 d5 e5                                      ldrb r4, [r5, #6]
005d2e9c  01 00 54 e3                                      cmp r4, #1
005d2ea0  01 00 00 0a                                      beq #0x5d2eac
005d2ea4  00 00 a0 e3                                      mov r0, #0
005d2ea8  70 80 bd e8                                      pop {r4, r5, r6, pc}
005d2eac  00 00 53 e3                                      cmp r3, #0
005d2eb0  04 00 53 13                                      cmpne r3, #4
005d2eb4  00 10 a0 13                                      movne r1, #0
005d2eb8  01 10 a0 03                                      moveq r1, #1
005d2ebc  0c 00 00 0a                                      beq #0x5d2ef4
005d2ec0  08 c0 95 e5                                      ldr ip, [r5, #8]
005d2ec4  24 40 90 e5                                      ldr r4, [r0, #0x24]
005d2ec8  0c 00 95 e5                                      ldr r0, [r5, #0xc]
005d2ecc  00 00 5c e3                                      cmp ip, #0
005d2ed0  05 00 00 0a                                      beq #0x5d2eec
005d2ed4  00 40 84 e0                                      add r4, r4, r0
005d2ed8  03 00 92 e6                                      ldr r0, [r2], r3
005d2edc  01 01 84 e7                                      str r0, [r4, r1, lsl #2]
005d2ee0  01 10 81 e2                                      add r1, r1, #1
005d2ee4  0c 00 51 e1                                      cmp r1, ip
005d2ee8  fa ff ff 1a                                      bne #0x5d2ed8
005d2eec  01 00 a0 e3                                      mov r0, #1
005d2ef0  70 80 bd e8                                      pop {r4, r5, r6, pc}
005d2ef4  24 00 90 e5                                      ldr r0, [r0, #0x24]
005d2ef8  08 c0 95 e5                                      ldr ip, [r5, #8]
005d2efc  0c 30 95 e5                                      ldr r3, [r5, #0xc]
005d2f00  02 10 a0 e1                                      mov r1, r2
005d2f04  0c 21 a0 e1                                      lsl r2, ip, #2
005d2f08  03 00 80 e0                                      add r0, r0, r3
005d2f0c  55 ee f4 eb                                      bl #0x30e868
005d2f10  04 00 a0 e1                                      mov r0, r4
005d2f14  70 80 bd e8                                      pop {r4, r5, r6, pc}

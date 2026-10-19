; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005cf0b8, declared_size=96, range_size=96, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector2d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE12setParameterINS_4core8vector2dIiEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector2d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::setParameter<glitch::core::vector2d<int> >(unsigned short, unsigned int, glitch::core::vector2d<int> const&)
; decoder-mode: arm
005cf0b8  be c0 d0 e1                                      ldrh ip, [r0, #0xe]
005cf0bc  01 00 5c e1                                      cmp ip, r1
005cf0c0  05 00 00 9a                                      bls #0x5cf0dc
005cf0c4  20 c0 90 e5                                      ldr ip, [r0, #0x20]
005cf0c8  01 12 9c e0                                      adds r1, ip, r1, lsl #4
005cf0cc  02 00 00 0a                                      beq #0x5cf0dc
005cf0d0  06 c0 d1 e5                                      ldrb ip, [r1, #6]
005cf0d4  02 00 5c e3                                      cmp ip, #2
005cf0d8  01 00 00 0a                                      beq #0x5cf0e4
005cf0dc  00 00 a0 e3                                      mov r0, #0
005cf0e0  1e ff 2f e1                                      bx lr
005cf0e4  08 c0 91 e5                                      ldr ip, [r1, #8]
005cf0e8  0c 00 52 e1                                      cmp r2, ip
005cf0ec  fa ff ff 2a                                      bhs #0x5cf0dc
005cf0f0  0c c0 91 e5                                      ldr ip, [r1, #0xc]
005cf0f4  24 10 90 e5                                      ldr r1, [r0, #0x24]
005cf0f8  00 00 93 e5                                      ldr r0, [r3]
005cf0fc  82 21 8c e0                                      add r2, ip, r2, lsl #3
005cf100  02 c0 81 e0                                      add ip, r1, r2
005cf104  02 00 81 e7                                      str r0, [r1, r2]
005cf108  04 30 93 e5                                      ldr r3, [r3, #4]
005cf10c  01 00 a0 e3                                      mov r0, #1
005cf110  04 30 8c e5                                      str r3, [ip, #4]
005cf114  1e ff 2f e1                                      bx lr

; FUNCTION 0x005cf4ec, declared_size=136, range_size=136, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector2d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS_4core8vector2dIiEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector2d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::setParameterCvt<glitch::core::vector2d<int> >(unsigned short, unsigned int, glitch::core::vector2d<int> const&)
; decoder-mode: arm
005cf4ec  30 00 2d e9                                      push {r4, r5}
005cf4f0  be 40 d0 e1                                      ldrh r4, [r0, #0xe]
005cf4f4  70 c0 9f e5                                      ldr ip, [pc, #0x70]
005cf4f8  01 00 54 e1                                      cmp r4, r1
005cf4fc  0c c0 8f e0                                      add ip, pc, ip
005cf500  16 00 00 9a                                      bls #0x5cf560
005cf504  20 40 90 e5                                      ldr r4, [r0, #0x20]
005cf508  01 12 94 e0                                      adds r1, r4, r1, lsl #4
005cf50c  13 00 00 0a                                      beq #0x5cf560
005cf510  58 50 9f e5                                      ldr r5, [pc, #0x58]
005cf514  06 40 d1 e5                                      ldrb r4, [r1, #6]
005cf518  05 c0 9c e7                                      ldr ip, [ip, r5]
005cf51c  04 c1 9c e7                                      ldr ip, [ip, r4, lsl #2]
005cf520  04 00 1c e3                                      tst ip, #4
005cf524  0d 00 00 0a                                      beq #0x5cf560
005cf528  08 c0 91 e5                                      ldr ip, [r1, #8]
005cf52c  0c 00 52 e1                                      cmp r2, ip
005cf530  0a 00 00 2a                                      bhs #0x5cf560
005cf534  02 00 54 e3                                      cmp r4, #2
005cf538  24 c0 90 e5                                      ldr ip, [r0, #0x24]
005cf53c  00 40 93 05                                      ldreq r4, [r3]
005cf540  0c 20 91 e5                                      ldr r2, [r1, #0xc]
005cf544  01 00 a0 13                                      movne r0, #1
005cf548  01 00 a0 03                                      moveq r0, #1
005cf54c  02 40 8c 07                                      streq r4, [ip, r2]
005cf550  04 30 93 05                                      ldreq r3, [r3, #4]
005cf554  02 10 8c 00                                      addeq r1, ip, r2
005cf558  04 30 81 05                                      streq r3, [r1, #4]
005cf55c  00 00 00 ea                                      b #0x5cf564
005cf560  00 00 a0 e3                                      mov r0, #0
005cf564  30 00 bd e8                                      pop {r4, r5}
005cf568  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
005cf56c  94 55 3c 00 a4 2c 00 00                          .byte 0x94, 0x55, 0x3c, 0x00, 0xa4, 0x2c, 0x00, 0x00

; FUNCTION 0x005cfce4, declared_size=96, range_size=96, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector2d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE12getParameterINS_4core8vector2dIiEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRSE_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector2d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::getParameter<glitch::core::vector2d<int> >(unsigned short, unsigned int, glitch::core::vector2d<int>&) const
; decoder-mode: arm
005cfce4  be c0 d0 e1                                      ldrh ip, [r0, #0xe]
005cfce8  01 00 5c e1                                      cmp ip, r1
005cfcec  05 00 00 9a                                      bls #0x5cfd08
005cfcf0  20 c0 90 e5                                      ldr ip, [r0, #0x20]
005cfcf4  01 12 9c e0                                      adds r1, ip, r1, lsl #4
005cfcf8  02 00 00 0a                                      beq #0x5cfd08
005cfcfc  06 c0 d1 e5                                      ldrb ip, [r1, #6]
005cfd00  02 00 5c e3                                      cmp ip, #2
005cfd04  01 00 00 0a                                      beq #0x5cfd10
005cfd08  00 00 a0 e3                                      mov r0, #0
005cfd0c  1e ff 2f e1                                      bx lr
005cfd10  08 c0 91 e5                                      ldr ip, [r1, #8]
005cfd14  0c 00 52 e1                                      cmp r2, ip
005cfd18  fa ff ff 2a                                      bhs #0x5cfd08
005cfd1c  0c c0 91 e5                                      ldr ip, [r1, #0xc]
005cfd20  24 10 90 e5                                      ldr r1, [r0, #0x24]
005cfd24  01 00 a0 e3                                      mov r0, #1
005cfd28  82 21 8c e0                                      add r2, ip, r2, lsl #3
005cfd2c  02 c0 91 e7                                      ldr ip, [r1, r2]
005cfd30  02 20 81 e0                                      add r2, r1, r2
005cfd34  00 c0 83 e5                                      str ip, [r3]
005cfd38  04 20 92 e5                                      ldr r2, [r2, #4]
005cfd3c  04 20 83 e5                                      str r2, [r3, #4]
005cfd40  1e ff 2f e1                                      bx lr

; FUNCTION 0x005d0110, declared_size=136, range_size=136, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector2d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE15getParameterCvtINS_4core8vector2dIiEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRSE_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector2d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::getParameterCvt<glitch::core::vector2d<int> >(unsigned short, unsigned int, glitch::core::vector2d<int>&) const
; decoder-mode: arm
005d0110  30 00 2d e9                                      push {r4, r5}
005d0114  be 40 d0 e1                                      ldrh r4, [r0, #0xe]
005d0118  70 c0 9f e5                                      ldr ip, [pc, #0x70]
005d011c  01 00 54 e1                                      cmp r4, r1
005d0120  0c c0 8f e0                                      add ip, pc, ip
005d0124  16 00 00 9a                                      bls #0x5d0184
005d0128  20 40 90 e5                                      ldr r4, [r0, #0x20]
005d012c  01 12 94 e0                                      adds r1, r4, r1, lsl #4
005d0130  13 00 00 0a                                      beq #0x5d0184
005d0134  58 50 9f e5                                      ldr r5, [pc, #0x58]
005d0138  06 40 d1 e5                                      ldrb r4, [r1, #6]
005d013c  05 c0 9c e7                                      ldr ip, [ip, r5]
005d0140  04 c1 9c e7                                      ldr ip, [ip, r4, lsl #2]
005d0144  04 00 1c e3                                      tst ip, #4
005d0148  0d 00 00 0a                                      beq #0x5d0184
005d014c  08 c0 91 e5                                      ldr ip, [r1, #8]
005d0150  0c 00 52 e1                                      cmp r2, ip
005d0154  0a 00 00 2a                                      bhs #0x5d0184
005d0158  24 00 90 e5                                      ldr r0, [r0, #0x24]
005d015c  0c 20 91 e5                                      ldr r2, [r1, #0xc]
005d0160  02 00 54 e3                                      cmp r4, #2
005d0164  01 00 a0 13                                      movne r0, #1
005d0168  02 10 90 07                                      ldreq r1, [r0, r2]
005d016c  02 20 80 00                                      addeq r2, r0, r2
005d0170  01 00 a0 03                                      moveq r0, #1
005d0174  00 10 83 05                                      streq r1, [r3]
005d0178  04 20 92 05                                      ldreq r2, [r2, #4]
005d017c  04 20 83 05                                      streq r2, [r3, #4]
005d0180  00 00 00 ea                                      b #0x5d0188
005d0184  00 00 a0 e3                                      mov r0, #0
005d0188  30 00 bd e8                                      pop {r4, r5}
005d018c  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
005d0190  70 49 3c 00 a4 2c 00 00                          .byte 0x70, 0x49, 0x3c, 0x00, 0xa4, 0x2c, 0x00, 0x00

; FUNCTION 0x005d1340, declared_size=232, range_size=232, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector2d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE15getParameterCvtINS_4core8vector2dIiEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPSE_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector2d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::getParameterCvt<glitch::core::vector2d<int> >(unsigned short, glitch::core::vector2d<int>*, int) const
; decoder-mode: arm
005d1340  70 40 2d e9                                      push {r4, r5, r6, lr}
005d1344  be 40 d0 e1                                      ldrh r4, [r0, #0xe]
005d1348  d0 c0 9f e5                                      ldr ip, [pc, #0xd0]
005d134c  01 00 54 e1                                      cmp r4, r1
005d1350  0c c0 8f e0                                      add ip, pc, ip
005d1354  13 00 00 9a                                      bls #0x5d13a8
005d1358  20 40 90 e5                                      ldr r4, [r0, #0x20]
005d135c  01 12 94 e0                                      adds r1, r4, r1, lsl #4
005d1360  10 00 00 0a                                      beq #0x5d13a8
005d1364  b8 50 9f e5                                      ldr r5, [pc, #0xb8]
005d1368  06 40 d1 e5                                      ldrb r4, [r1, #6]
005d136c  05 c0 9c e7                                      ldr ip, [ip, r5]
005d1370  04 c1 9c e7                                      ldr ip, [ip, r4, lsl #2]
005d1374  04 00 1c e3                                      tst ip, #4
005d1378  0a 00 00 0a                                      beq #0x5d13a8
005d137c  01 c0 73 e2                                      rsbs ip, r3, #1
005d1380  00 c0 a0 33                                      movlo ip, #0
005d1384  00 00 53 e3                                      cmp r3, #0
005d1388  08 00 53 13                                      cmpne r3, #8
005d138c  07 00 00 1a                                      bne #0x5d13b0
005d1390  02 00 54 e3                                      cmp r4, #2
005d1394  18 00 00 0a                                      beq #0x5d13fc
005d1398  00 00 5c e3                                      cmp ip, #0
005d139c  03 00 00 0a                                      beq #0x5d13b0
005d13a0  01 00 a0 e3                                      mov r0, #1
005d13a4  70 80 bd e8                                      pop {r4, r5, r6, pc}
005d13a8  00 00 a0 e3                                      mov r0, #0
005d13ac  70 80 bd e8                                      pop {r4, r5, r6, pc}
005d13b0  02 00 54 e3                                      cmp r4, #2
005d13b4  24 50 90 e5                                      ldr r5, [r0, #0x24]
005d13b8  0c c0 91 e5                                      ldr ip, [r1, #0xc]
005d13bc  f7 ff ff 1a                                      bne #0x5d13a0
005d13c0  08 00 91 e5                                      ldr r0, [r1, #8]
005d13c4  00 00 50 e3                                      cmp r0, #0
005d13c8  f4 ff ff 0a                                      beq #0x5d13a0
005d13cc  0c 50 85 e0                                      add r5, r5, ip
005d13d0  00 c0 a0 e3                                      mov ip, #0
005d13d4  05 10 a0 e1                                      mov r1, r5
005d13d8  0c 40 b1 e7                                      ldr r4, [r1, ip]!
005d13dc  01 00 50 e2                                      subs r0, r0, #1
005d13e0  08 c0 8c e2                                      add ip, ip, #8
005d13e4  00 40 82 e5                                      str r4, [r2]
005d13e8  04 10 91 e5                                      ldr r1, [r1, #4]
005d13ec  04 10 82 e5                                      str r1, [r2, #4]
005d13f0  03 20 82 e0                                      add r2, r2, r3
005d13f4  f6 ff ff 1a                                      bne #0x5d13d4
005d13f8  e8 ff ff ea                                      b #0x5d13a0
005d13fc  24 e0 90 e5                                      ldr lr, [r0, #0x24]
005d1400  08 30 91 e5                                      ldr r3, [r1, #8]
005d1404  0c c0 91 e5                                      ldr ip, [r1, #0xc]
005d1408  02 00 a0 e1                                      mov r0, r2
005d140c  83 21 a0 e1                                      lsl r2, r3, #3
005d1410  0c 10 8e e0                                      add r1, lr, ip
005d1414  13 f5 f4 eb                                      bl #0x30e868
005d1418  01 00 a0 e3                                      mov r0, #1
005d141c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005d1420  40 37 3c 00 a4 2c 00 00                          .byte 0x40, 0x37, 0x3c, 0x00, 0xa4, 0x2c, 0x00, 0x00

; FUNCTION 0x005d1a74, declared_size=176, range_size=176, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector2d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE12getParameterINS_4core8vector2dIiEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPSE_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector2d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::getParameter<glitch::core::vector2d<int> >(unsigned short, glitch::core::vector2d<int>*, int) const
; decoder-mode: arm
005d1a74  70 40 2d e9                                      push {r4, r5, r6, lr}
005d1a78  be c0 d0 e1                                      ldrh ip, [r0, #0xe]
005d1a7c  01 00 5c e1                                      cmp ip, r1
005d1a80  05 00 00 9a                                      bls #0x5d1a9c
005d1a84  20 c0 90 e5                                      ldr ip, [r0, #0x20]
005d1a88  01 12 9c e0                                      adds r1, ip, r1, lsl #4
005d1a8c  02 00 00 0a                                      beq #0x5d1a9c
005d1a90  06 c0 d1 e5                                      ldrb ip, [r1, #6]
005d1a94  02 00 5c e3                                      cmp ip, #2
005d1a98  01 00 00 0a                                      beq #0x5d1aa4
005d1a9c  00 00 a0 e3                                      mov r0, #0
005d1aa0  70 80 bd e8                                      pop {r4, r5, r6, pc}
005d1aa4  00 00 53 e3                                      cmp r3, #0
005d1aa8  08 00 53 13                                      cmpne r3, #8
005d1aac  00 40 a0 13                                      movne r4, #0
005d1ab0  01 40 a0 03                                      moveq r4, #1
005d1ab4  11 00 00 0a                                      beq #0x5d1b00
005d1ab8  08 c0 91 e5                                      ldr ip, [r1, #8]
005d1abc  24 50 90 e5                                      ldr r5, [r0, #0x24]
005d1ac0  0c 10 91 e5                                      ldr r1, [r1, #0xc]
005d1ac4  00 00 5c e3                                      cmp ip, #0
005d1ac8  0a 00 00 0a                                      beq #0x5d1af8
005d1acc  01 50 85 e0                                      add r5, r5, r1
005d1ad0  04 00 a0 e1                                      mov r0, r4
005d1ad4  05 10 a0 e1                                      mov r1, r5
005d1ad8  00 40 b1 e7                                      ldr r4, [r1, r0]!
005d1adc  01 c0 5c e2                                      subs ip, ip, #1
005d1ae0  08 00 80 e2                                      add r0, r0, #8
005d1ae4  00 40 82 e5                                      str r4, [r2]
005d1ae8  04 10 91 e5                                      ldr r1, [r1, #4]
005d1aec  04 10 82 e5                                      str r1, [r2, #4]
005d1af0  03 20 82 e0                                      add r2, r2, r3
005d1af4  f6 ff ff 1a                                      bne #0x5d1ad4
005d1af8  01 00 a0 e3                                      mov r0, #1
005d1afc  70 80 bd e8                                      pop {r4, r5, r6, pc}
005d1b00  24 e0 90 e5                                      ldr lr, [r0, #0x24]
005d1b04  08 30 91 e5                                      ldr r3, [r1, #8]
005d1b08  0c c0 91 e5                                      ldr ip, [r1, #0xc]
005d1b0c  02 00 a0 e1                                      mov r0, r2
005d1b10  83 21 a0 e1                                      lsl r2, r3, #3
005d1b14  0c 10 8e e0                                      add r1, lr, ip
005d1b18  52 f3 f4 eb                                      bl #0x30e868
005d1b1c  01 00 a0 e3                                      mov r0, #1
005d1b20  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x005d265c, declared_size=232, range_size=232, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector2d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS_4core8vector2dIiEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPKSE_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector2d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::setParameterCvt<glitch::core::vector2d<int> >(unsigned short, glitch::core::vector2d<int> const*, int)
; decoder-mode: arm
005d265c  70 40 2d e9                                      push {r4, r5, r6, lr}
005d2660  be 40 d0 e1                                      ldrh r4, [r0, #0xe]
005d2664  d0 c0 9f e5                                      ldr ip, [pc, #0xd0]
005d2668  01 00 54 e1                                      cmp r4, r1
005d266c  0c c0 8f e0                                      add ip, pc, ip
005d2670  13 00 00 9a                                      bls #0x5d26c4
005d2674  20 40 90 e5                                      ldr r4, [r0, #0x20]
005d2678  01 12 94 e0                                      adds r1, r4, r1, lsl #4
005d267c  10 00 00 0a                                      beq #0x5d26c4
005d2680  b8 50 9f e5                                      ldr r5, [pc, #0xb8]
005d2684  06 40 d1 e5                                      ldrb r4, [r1, #6]
005d2688  05 c0 9c e7                                      ldr ip, [ip, r5]
005d268c  04 c1 9c e7                                      ldr ip, [ip, r4, lsl #2]
005d2690  04 00 1c e3                                      tst ip, #4
005d2694  0a 00 00 0a                                      beq #0x5d26c4
005d2698  01 c0 73 e2                                      rsbs ip, r3, #1
005d269c  00 c0 a0 33                                      movlo ip, #0
005d26a0  00 00 53 e3                                      cmp r3, #0
005d26a4  08 00 53 13                                      cmpne r3, #8
005d26a8  07 00 00 1a                                      bne #0x5d26cc
005d26ac  02 00 54 e3                                      cmp r4, #2
005d26b0  18 00 00 0a                                      beq #0x5d2718
005d26b4  00 00 5c e3                                      cmp ip, #0
005d26b8  03 00 00 0a                                      beq #0x5d26cc
005d26bc  01 00 a0 e3                                      mov r0, #1
005d26c0  70 80 bd e8                                      pop {r4, r5, r6, pc}
005d26c4  00 00 a0 e3                                      mov r0, #0
005d26c8  70 80 bd e8                                      pop {r4, r5, r6, pc}
005d26cc  02 00 54 e3                                      cmp r4, #2
005d26d0  24 50 90 e5                                      ldr r5, [r0, #0x24]
005d26d4  0c c0 91 e5                                      ldr ip, [r1, #0xc]
005d26d8  f7 ff ff 1a                                      bne #0x5d26bc
005d26dc  08 00 91 e5                                      ldr r0, [r1, #8]
005d26e0  00 00 50 e3                                      cmp r0, #0
005d26e4  f4 ff ff 0a                                      beq #0x5d26bc
005d26e8  0c 50 85 e0                                      add r5, r5, ip
005d26ec  00 c0 a0 e3                                      mov ip, #0
005d26f0  00 40 92 e5                                      ldr r4, [r2]
005d26f4  05 10 a0 e1                                      mov r1, r5
005d26f8  01 00 50 e2                                      subs r0, r0, #1
005d26fc  0c 40 a1 e7                                      str r4, [r1, ip]!
005d2700  04 40 92 e5                                      ldr r4, [r2, #4]
005d2704  08 c0 8c e2                                      add ip, ip, #8
005d2708  03 20 82 e0                                      add r2, r2, r3
005d270c  04 40 81 e5                                      str r4, [r1, #4]
005d2710  f6 ff ff 1a                                      bne #0x5d26f0
005d2714  e8 ff ff ea                                      b #0x5d26bc
005d2718  08 c0 91 e5                                      ldr ip, [r1, #8]
005d271c  0c 30 91 e5                                      ldr r3, [r1, #0xc]
005d2720  24 00 90 e5                                      ldr r0, [r0, #0x24]
005d2724  02 10 a0 e1                                      mov r1, r2
005d2728  8c 21 a0 e1                                      lsl r2, ip, #3
005d272c  03 00 80 e0                                      add r0, r0, r3
005d2730  4c f0 f4 eb                                      bl #0x30e868
005d2734  01 00 a0 e3                                      mov r0, #1
005d2738  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005d273c  24 24 3c 00 a4 2c 00 00                          .byte 0x24, 0x24, 0x3c, 0x00, 0xa4, 0x2c, 0x00, 0x00

; FUNCTION 0x005d2dcc, declared_size=176, range_size=176, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector2d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE12setParameterINS_4core8vector2dIiEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPKSE_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector2d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::setParameter<glitch::core::vector2d<int> >(unsigned short, glitch::core::vector2d<int> const*, int)
; decoder-mode: arm
005d2dcc  70 40 2d e9                                      push {r4, r5, r6, lr}
005d2dd0  be c0 d0 e1                                      ldrh ip, [r0, #0xe]
005d2dd4  01 00 5c e1                                      cmp ip, r1
005d2dd8  05 00 00 9a                                      bls #0x5d2df4
005d2ddc  20 c0 90 e5                                      ldr ip, [r0, #0x20]
005d2de0  01 12 9c e0                                      adds r1, ip, r1, lsl #4
005d2de4  02 00 00 0a                                      beq #0x5d2df4
005d2de8  06 c0 d1 e5                                      ldrb ip, [r1, #6]
005d2dec  02 00 5c e3                                      cmp ip, #2
005d2df0  01 00 00 0a                                      beq #0x5d2dfc
005d2df4  00 00 a0 e3                                      mov r0, #0
005d2df8  70 80 bd e8                                      pop {r4, r5, r6, pc}
005d2dfc  00 00 53 e3                                      cmp r3, #0
005d2e00  08 00 53 13                                      cmpne r3, #8
005d2e04  00 40 a0 13                                      movne r4, #0
005d2e08  01 40 a0 03                                      moveq r4, #1
005d2e0c  11 00 00 0a                                      beq #0x5d2e58
005d2e10  08 c0 91 e5                                      ldr ip, [r1, #8]
005d2e14  24 50 90 e5                                      ldr r5, [r0, #0x24]
005d2e18  0c 10 91 e5                                      ldr r1, [r1, #0xc]
005d2e1c  00 00 5c e3                                      cmp ip, #0
005d2e20  0a 00 00 0a                                      beq #0x5d2e50
005d2e24  01 50 85 e0                                      add r5, r5, r1
005d2e28  04 00 a0 e1                                      mov r0, r4
005d2e2c  00 40 92 e5                                      ldr r4, [r2]
005d2e30  05 10 a0 e1                                      mov r1, r5
005d2e34  01 c0 5c e2                                      subs ip, ip, #1
005d2e38  00 40 a1 e7                                      str r4, [r1, r0]!
005d2e3c  04 40 92 e5                                      ldr r4, [r2, #4]
005d2e40  08 00 80 e2                                      add r0, r0, #8
005d2e44  03 20 82 e0                                      add r2, r2, r3
005d2e48  04 40 81 e5                                      str r4, [r1, #4]
005d2e4c  f6 ff ff 1a                                      bne #0x5d2e2c
005d2e50  01 00 a0 e3                                      mov r0, #1
005d2e54  70 80 bd e8                                      pop {r4, r5, r6, pc}
005d2e58  08 c0 91 e5                                      ldr ip, [r1, #8]
005d2e5c  0c 30 91 e5                                      ldr r3, [r1, #0xc]
005d2e60  24 00 90 e5                                      ldr r0, [r0, #0x24]
005d2e64  02 10 a0 e1                                      mov r1, r2
005d2e68  8c 21 a0 e1                                      lsl r2, ip, #3
005d2e6c  03 00 80 e0                                      add r0, r0, r3
005d2e70  7c ee f4 eb                                      bl #0x30e868
005d2e74  01 00 a0 e3                                      mov r0, #1
005d2e78  70 80 bd e8                                      pop {r4, r5, r6, pc}

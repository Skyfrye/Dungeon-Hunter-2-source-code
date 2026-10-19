; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005cf250, declared_size=96, range_size=96, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector2d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE12setParameterINS_4core8vector2dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector2d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::setParameter<glitch::core::vector2d<float> >(unsigned short, unsigned int, glitch::core::vector2d<float> const&)
; decoder-mode: arm
005cf250  be c0 d0 e1                                      ldrh ip, [r0, #0xe]
005cf254  01 00 5c e1                                      cmp ip, r1
005cf258  05 00 00 9a                                      bls #0x5cf274
005cf25c  20 c0 90 e5                                      ldr ip, [r0, #0x20]
005cf260  01 12 9c e0                                      adds r1, ip, r1, lsl #4
005cf264  02 00 00 0a                                      beq #0x5cf274
005cf268  06 c0 d1 e5                                      ldrb ip, [r1, #6]
005cf26c  06 00 5c e3                                      cmp ip, #6
005cf270  01 00 00 0a                                      beq #0x5cf27c
005cf274  00 00 a0 e3                                      mov r0, #0
005cf278  1e ff 2f e1                                      bx lr
005cf27c  08 c0 91 e5                                      ldr ip, [r1, #8]
005cf280  0c 00 52 e1                                      cmp r2, ip
005cf284  fa ff ff 2a                                      bhs #0x5cf274
005cf288  0c c0 91 e5                                      ldr ip, [r1, #0xc]
005cf28c  24 10 90 e5                                      ldr r1, [r0, #0x24]
005cf290  00 00 93 e5                                      ldr r0, [r3]
005cf294  82 21 8c e0                                      add r2, ip, r2, lsl #3
005cf298  02 c0 81 e0                                      add ip, r1, r2
005cf29c  02 00 81 e7                                      str r0, [r1, r2]
005cf2a0  04 30 93 e5                                      ldr r3, [r3, #4]
005cf2a4  01 00 a0 e3                                      mov r0, #1
005cf2a8  04 30 8c e5                                      str r3, [ip, #4]
005cf2ac  1e ff 2f e1                                      bx lr

; FUNCTION 0x005cf73c, declared_size=136, range_size=136, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector2d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS_4core8vector2dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector2d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::setParameterCvt<glitch::core::vector2d<float> >(unsigned short, unsigned int, glitch::core::vector2d<float> const&)
; decoder-mode: arm
005cf73c  30 00 2d e9                                      push {r4, r5}
005cf740  be 40 d0 e1                                      ldrh r4, [r0, #0xe]
005cf744  70 c0 9f e5                                      ldr ip, [pc, #0x70]
005cf748  01 00 54 e1                                      cmp r4, r1
005cf74c  0c c0 8f e0                                      add ip, pc, ip
005cf750  16 00 00 9a                                      bls #0x5cf7b0
005cf754  20 40 90 e5                                      ldr r4, [r0, #0x20]
005cf758  01 12 94 e0                                      adds r1, r4, r1, lsl #4
005cf75c  13 00 00 0a                                      beq #0x5cf7b0
005cf760  58 50 9f e5                                      ldr r5, [pc, #0x58]
005cf764  06 40 d1 e5                                      ldrb r4, [r1, #6]
005cf768  05 c0 9c e7                                      ldr ip, [ip, r5]
005cf76c  04 c1 9c e7                                      ldr ip, [ip, r4, lsl #2]
005cf770  40 00 1c e3                                      tst ip, #0x40
005cf774  0d 00 00 0a                                      beq #0x5cf7b0
005cf778  08 c0 91 e5                                      ldr ip, [r1, #8]
005cf77c  0c 00 52 e1                                      cmp r2, ip
005cf780  0a 00 00 2a                                      bhs #0x5cf7b0
005cf784  06 00 54 e3                                      cmp r4, #6
005cf788  24 c0 90 e5                                      ldr ip, [r0, #0x24]
005cf78c  00 40 93 05                                      ldreq r4, [r3]
005cf790  0c 20 91 e5                                      ldr r2, [r1, #0xc]
005cf794  01 00 a0 13                                      movne r0, #1
005cf798  01 00 a0 03                                      moveq r0, #1
005cf79c  02 40 8c 07                                      streq r4, [ip, r2]
005cf7a0  04 30 93 05                                      ldreq r3, [r3, #4]
005cf7a4  02 10 8c 00                                      addeq r1, ip, r2
005cf7a8  04 30 81 05                                      streq r3, [r1, #4]
005cf7ac  00 00 00 ea                                      b #0x5cf7b4
005cf7b0  00 00 a0 e3                                      mov r0, #0
005cf7b4  30 00 bd e8                                      pop {r4, r5}
005cf7b8  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
005cf7bc  44 53 3c 00 a4 2c 00 00                          .byte 0x44, 0x53, 0x3c, 0x00, 0xa4, 0x2c, 0x00, 0x00

; FUNCTION 0x005cfe74, declared_size=96, range_size=96, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector2d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE12getParameterINS_4core8vector2dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRSE_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector2d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::getParameter<glitch::core::vector2d<float> >(unsigned short, unsigned int, glitch::core::vector2d<float>&) const
; decoder-mode: arm
005cfe74  be c0 d0 e1                                      ldrh ip, [r0, #0xe]
005cfe78  01 00 5c e1                                      cmp ip, r1
005cfe7c  05 00 00 9a                                      bls #0x5cfe98
005cfe80  20 c0 90 e5                                      ldr ip, [r0, #0x20]
005cfe84  01 12 9c e0                                      adds r1, ip, r1, lsl #4
005cfe88  02 00 00 0a                                      beq #0x5cfe98
005cfe8c  06 c0 d1 e5                                      ldrb ip, [r1, #6]
005cfe90  06 00 5c e3                                      cmp ip, #6
005cfe94  01 00 00 0a                                      beq #0x5cfea0
005cfe98  00 00 a0 e3                                      mov r0, #0
005cfe9c  1e ff 2f e1                                      bx lr
005cfea0  08 c0 91 e5                                      ldr ip, [r1, #8]
005cfea4  0c 00 52 e1                                      cmp r2, ip
005cfea8  fa ff ff 2a                                      bhs #0x5cfe98
005cfeac  0c c0 91 e5                                      ldr ip, [r1, #0xc]
005cfeb0  24 10 90 e5                                      ldr r1, [r0, #0x24]
005cfeb4  01 00 a0 e3                                      mov r0, #1
005cfeb8  82 21 8c e0                                      add r2, ip, r2, lsl #3
005cfebc  02 c0 91 e7                                      ldr ip, [r1, r2]
005cfec0  02 20 81 e0                                      add r2, r1, r2
005cfec4  00 c0 83 e5                                      str ip, [r3]
005cfec8  04 20 92 e5                                      ldr r2, [r2, #4]
005cfecc  04 20 83 e5                                      str r2, [r3, #4]
005cfed0  1e ff 2f e1                                      bx lr

; FUNCTION 0x005d0364, declared_size=136, range_size=136, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector2d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE15getParameterCvtINS_4core8vector2dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRSE_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector2d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::getParameterCvt<glitch::core::vector2d<float> >(unsigned short, unsigned int, glitch::core::vector2d<float>&) const
; decoder-mode: arm
005d0364  30 00 2d e9                                      push {r4, r5}
005d0368  be 40 d0 e1                                      ldrh r4, [r0, #0xe]
005d036c  70 c0 9f e5                                      ldr ip, [pc, #0x70]
005d0370  01 00 54 e1                                      cmp r4, r1
005d0374  0c c0 8f e0                                      add ip, pc, ip
005d0378  16 00 00 9a                                      bls #0x5d03d8
005d037c  20 40 90 e5                                      ldr r4, [r0, #0x20]
005d0380  01 12 94 e0                                      adds r1, r4, r1, lsl #4
005d0384  13 00 00 0a                                      beq #0x5d03d8
005d0388  58 50 9f e5                                      ldr r5, [pc, #0x58]
005d038c  06 40 d1 e5                                      ldrb r4, [r1, #6]
005d0390  05 c0 9c e7                                      ldr ip, [ip, r5]
005d0394  04 c1 9c e7                                      ldr ip, [ip, r4, lsl #2]
005d0398  40 00 1c e3                                      tst ip, #0x40
005d039c  0d 00 00 0a                                      beq #0x5d03d8
005d03a0  08 c0 91 e5                                      ldr ip, [r1, #8]
005d03a4  0c 00 52 e1                                      cmp r2, ip
005d03a8  0a 00 00 2a                                      bhs #0x5d03d8
005d03ac  24 00 90 e5                                      ldr r0, [r0, #0x24]
005d03b0  0c 20 91 e5                                      ldr r2, [r1, #0xc]
005d03b4  06 00 54 e3                                      cmp r4, #6
005d03b8  01 00 a0 13                                      movne r0, #1
005d03bc  02 10 90 07                                      ldreq r1, [r0, r2]
005d03c0  02 20 80 00                                      addeq r2, r0, r2
005d03c4  01 00 a0 03                                      moveq r0, #1
005d03c8  00 10 83 05                                      streq r1, [r3]
005d03cc  04 20 92 05                                      ldreq r2, [r2, #4]
005d03d0  04 20 83 05                                      streq r2, [r3, #4]
005d03d4  00 00 00 ea                                      b #0x5d03dc
005d03d8  00 00 a0 e3                                      mov r0, #0
005d03dc  30 00 bd e8                                      pop {r4, r5}
005d03e0  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
005d03e4  1c 47 3c 00 a4 2c 00 00                          .byte 0x1c, 0x47, 0x3c, 0x00, 0xa4, 0x2c, 0x00, 0x00

; FUNCTION 0x005d0f64, declared_size=232, range_size=232, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector2d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE15getParameterCvtINS_4core8vector2dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPSE_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector2d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::getParameterCvt<glitch::core::vector2d<float> >(unsigned short, glitch::core::vector2d<float>*, int) const
; decoder-mode: arm
005d0f64  70 40 2d e9                                      push {r4, r5, r6, lr}
005d0f68  be 40 d0 e1                                      ldrh r4, [r0, #0xe]
005d0f6c  d0 c0 9f e5                                      ldr ip, [pc, #0xd0]
005d0f70  01 00 54 e1                                      cmp r4, r1
005d0f74  0c c0 8f e0                                      add ip, pc, ip
005d0f78  13 00 00 9a                                      bls #0x5d0fcc
005d0f7c  20 40 90 e5                                      ldr r4, [r0, #0x20]
005d0f80  01 12 94 e0                                      adds r1, r4, r1, lsl #4
005d0f84  10 00 00 0a                                      beq #0x5d0fcc
005d0f88  b8 50 9f e5                                      ldr r5, [pc, #0xb8]
005d0f8c  06 40 d1 e5                                      ldrb r4, [r1, #6]
005d0f90  05 c0 9c e7                                      ldr ip, [ip, r5]
005d0f94  04 c1 9c e7                                      ldr ip, [ip, r4, lsl #2]
005d0f98  40 00 1c e3                                      tst ip, #0x40
005d0f9c  0a 00 00 0a                                      beq #0x5d0fcc
005d0fa0  01 c0 73 e2                                      rsbs ip, r3, #1
005d0fa4  00 c0 a0 33                                      movlo ip, #0
005d0fa8  00 00 53 e3                                      cmp r3, #0
005d0fac  08 00 53 13                                      cmpne r3, #8
005d0fb0  07 00 00 1a                                      bne #0x5d0fd4
005d0fb4  06 00 54 e3                                      cmp r4, #6
005d0fb8  18 00 00 0a                                      beq #0x5d1020
005d0fbc  00 00 5c e3                                      cmp ip, #0
005d0fc0  03 00 00 0a                                      beq #0x5d0fd4
005d0fc4  01 00 a0 e3                                      mov r0, #1
005d0fc8  70 80 bd e8                                      pop {r4, r5, r6, pc}
005d0fcc  00 00 a0 e3                                      mov r0, #0
005d0fd0  70 80 bd e8                                      pop {r4, r5, r6, pc}
005d0fd4  06 00 54 e3                                      cmp r4, #6
005d0fd8  24 50 90 e5                                      ldr r5, [r0, #0x24]
005d0fdc  0c c0 91 e5                                      ldr ip, [r1, #0xc]
005d0fe0  f7 ff ff 1a                                      bne #0x5d0fc4
005d0fe4  08 00 91 e5                                      ldr r0, [r1, #8]
005d0fe8  00 00 50 e3                                      cmp r0, #0
005d0fec  f4 ff ff 0a                                      beq #0x5d0fc4
005d0ff0  0c 50 85 e0                                      add r5, r5, ip
005d0ff4  00 c0 a0 e3                                      mov ip, #0
005d0ff8  05 10 a0 e1                                      mov r1, r5
005d0ffc  0c 40 b1 e7                                      ldr r4, [r1, ip]!
005d1000  01 00 50 e2                                      subs r0, r0, #1
005d1004  08 c0 8c e2                                      add ip, ip, #8
005d1008  00 40 82 e5                                      str r4, [r2]
005d100c  04 10 91 e5                                      ldr r1, [r1, #4]
005d1010  04 10 82 e5                                      str r1, [r2, #4]
005d1014  03 20 82 e0                                      add r2, r2, r3
005d1018  f6 ff ff 1a                                      bne #0x5d0ff8
005d101c  e8 ff ff ea                                      b #0x5d0fc4
005d1020  24 e0 90 e5                                      ldr lr, [r0, #0x24]
005d1024  08 30 91 e5                                      ldr r3, [r1, #8]
005d1028  0c c0 91 e5                                      ldr ip, [r1, #0xc]
005d102c  02 00 a0 e1                                      mov r0, r2
005d1030  83 21 a0 e1                                      lsl r2, r3, #3
005d1034  0c 10 8e e0                                      add r1, lr, ip
005d1038  0a f6 f4 eb                                      bl #0x30e868
005d103c  01 00 a0 e3                                      mov r0, #1
005d1040  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005d1044  1c 3b 3c 00 a4 2c 00 00                          .byte 0x1c, 0x3b, 0x3c, 0x00, 0xa4, 0x2c, 0x00, 0x00

; FUNCTION 0x005d17c8, declared_size=176, range_size=176, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector2d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE12getParameterINS_4core8vector2dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPSE_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector2d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::getParameter<glitch::core::vector2d<float> >(unsigned short, glitch::core::vector2d<float>*, int) const
; decoder-mode: arm
005d17c8  70 40 2d e9                                      push {r4, r5, r6, lr}
005d17cc  be c0 d0 e1                                      ldrh ip, [r0, #0xe]
005d17d0  01 00 5c e1                                      cmp ip, r1
005d17d4  05 00 00 9a                                      bls #0x5d17f0
005d17d8  20 c0 90 e5                                      ldr ip, [r0, #0x20]
005d17dc  01 12 9c e0                                      adds r1, ip, r1, lsl #4
005d17e0  02 00 00 0a                                      beq #0x5d17f0
005d17e4  06 c0 d1 e5                                      ldrb ip, [r1, #6]
005d17e8  06 00 5c e3                                      cmp ip, #6
005d17ec  01 00 00 0a                                      beq #0x5d17f8
005d17f0  00 00 a0 e3                                      mov r0, #0
005d17f4  70 80 bd e8                                      pop {r4, r5, r6, pc}
005d17f8  00 00 53 e3                                      cmp r3, #0
005d17fc  08 00 53 13                                      cmpne r3, #8
005d1800  00 40 a0 13                                      movne r4, #0
005d1804  01 40 a0 03                                      moveq r4, #1
005d1808  11 00 00 0a                                      beq #0x5d1854
005d180c  08 c0 91 e5                                      ldr ip, [r1, #8]
005d1810  24 50 90 e5                                      ldr r5, [r0, #0x24]
005d1814  0c 10 91 e5                                      ldr r1, [r1, #0xc]
005d1818  00 00 5c e3                                      cmp ip, #0
005d181c  0a 00 00 0a                                      beq #0x5d184c
005d1820  01 50 85 e0                                      add r5, r5, r1
005d1824  04 00 a0 e1                                      mov r0, r4
005d1828  05 10 a0 e1                                      mov r1, r5
005d182c  00 40 b1 e7                                      ldr r4, [r1, r0]!
005d1830  01 c0 5c e2                                      subs ip, ip, #1
005d1834  08 00 80 e2                                      add r0, r0, #8
005d1838  00 40 82 e5                                      str r4, [r2]
005d183c  04 10 91 e5                                      ldr r1, [r1, #4]
005d1840  04 10 82 e5                                      str r1, [r2, #4]
005d1844  03 20 82 e0                                      add r2, r2, r3
005d1848  f6 ff ff 1a                                      bne #0x5d1828
005d184c  01 00 a0 e3                                      mov r0, #1
005d1850  70 80 bd e8                                      pop {r4, r5, r6, pc}
005d1854  24 e0 90 e5                                      ldr lr, [r0, #0x24]
005d1858  08 30 91 e5                                      ldr r3, [r1, #8]
005d185c  0c c0 91 e5                                      ldr ip, [r1, #0xc]
005d1860  02 00 a0 e1                                      mov r0, r2
005d1864  83 21 a0 e1                                      lsl r2, r3, #3
005d1868  0c 10 8e e0                                      add r1, lr, ip
005d186c  fd f3 f4 eb                                      bl #0x30e868
005d1870  01 00 a0 e3                                      mov r0, #1
005d1874  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x005d2280, declared_size=232, range_size=232, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector2d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS_4core8vector2dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPKSE_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector2d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::setParameterCvt<glitch::core::vector2d<float> >(unsigned short, glitch::core::vector2d<float> const*, int)
; decoder-mode: arm
005d2280  70 40 2d e9                                      push {r4, r5, r6, lr}
005d2284  be 40 d0 e1                                      ldrh r4, [r0, #0xe]
005d2288  d0 c0 9f e5                                      ldr ip, [pc, #0xd0]
005d228c  01 00 54 e1                                      cmp r4, r1
005d2290  0c c0 8f e0                                      add ip, pc, ip
005d2294  13 00 00 9a                                      bls #0x5d22e8
005d2298  20 40 90 e5                                      ldr r4, [r0, #0x20]
005d229c  01 12 94 e0                                      adds r1, r4, r1, lsl #4
005d22a0  10 00 00 0a                                      beq #0x5d22e8
005d22a4  b8 50 9f e5                                      ldr r5, [pc, #0xb8]
005d22a8  06 40 d1 e5                                      ldrb r4, [r1, #6]
005d22ac  05 c0 9c e7                                      ldr ip, [ip, r5]
005d22b0  04 c1 9c e7                                      ldr ip, [ip, r4, lsl #2]
005d22b4  40 00 1c e3                                      tst ip, #0x40
005d22b8  0a 00 00 0a                                      beq #0x5d22e8
005d22bc  01 c0 73 e2                                      rsbs ip, r3, #1
005d22c0  00 c0 a0 33                                      movlo ip, #0
005d22c4  00 00 53 e3                                      cmp r3, #0
005d22c8  08 00 53 13                                      cmpne r3, #8
005d22cc  07 00 00 1a                                      bne #0x5d22f0
005d22d0  06 00 54 e3                                      cmp r4, #6
005d22d4  18 00 00 0a                                      beq #0x5d233c
005d22d8  00 00 5c e3                                      cmp ip, #0
005d22dc  03 00 00 0a                                      beq #0x5d22f0
005d22e0  01 00 a0 e3                                      mov r0, #1
005d22e4  70 80 bd e8                                      pop {r4, r5, r6, pc}
005d22e8  00 00 a0 e3                                      mov r0, #0
005d22ec  70 80 bd e8                                      pop {r4, r5, r6, pc}
005d22f0  06 00 54 e3                                      cmp r4, #6
005d22f4  24 50 90 e5                                      ldr r5, [r0, #0x24]
005d22f8  0c c0 91 e5                                      ldr ip, [r1, #0xc]
005d22fc  f7 ff ff 1a                                      bne #0x5d22e0
005d2300  08 00 91 e5                                      ldr r0, [r1, #8]
005d2304  00 00 50 e3                                      cmp r0, #0
005d2308  f4 ff ff 0a                                      beq #0x5d22e0
005d230c  0c 50 85 e0                                      add r5, r5, ip
005d2310  00 c0 a0 e3                                      mov ip, #0
005d2314  00 40 92 e5                                      ldr r4, [r2]
005d2318  05 10 a0 e1                                      mov r1, r5
005d231c  01 00 50 e2                                      subs r0, r0, #1
005d2320  0c 40 a1 e7                                      str r4, [r1, ip]!
005d2324  04 40 92 e5                                      ldr r4, [r2, #4]
005d2328  08 c0 8c e2                                      add ip, ip, #8
005d232c  03 20 82 e0                                      add r2, r2, r3
005d2330  04 40 81 e5                                      str r4, [r1, #4]
005d2334  f6 ff ff 1a                                      bne #0x5d2314
005d2338  e8 ff ff ea                                      b #0x5d22e0
005d233c  08 c0 91 e5                                      ldr ip, [r1, #8]
005d2340  0c 30 91 e5                                      ldr r3, [r1, #0xc]
005d2344  24 00 90 e5                                      ldr r0, [r0, #0x24]
005d2348  02 10 a0 e1                                      mov r1, r2
005d234c  8c 21 a0 e1                                      lsl r2, ip, #3
005d2350  03 00 80 e0                                      add r0, r0, r3
005d2354  43 f1 f4 eb                                      bl #0x30e868
005d2358  01 00 a0 e3                                      mov r0, #1
005d235c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005d2360  00 28 3c 00 a4 2c 00 00                          .byte 0x00, 0x28, 0x3c, 0x00, 0xa4, 0x2c, 0x00, 0x00

; FUNCTION 0x005d2b20, declared_size=176, range_size=176, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector2d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE12setParameterINS_4core8vector2dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPKSE_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector2d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::setParameter<glitch::core::vector2d<float> >(unsigned short, glitch::core::vector2d<float> const*, int)
; decoder-mode: arm
005d2b20  70 40 2d e9                                      push {r4, r5, r6, lr}
005d2b24  be c0 d0 e1                                      ldrh ip, [r0, #0xe]
005d2b28  01 00 5c e1                                      cmp ip, r1
005d2b2c  05 00 00 9a                                      bls #0x5d2b48
005d2b30  20 c0 90 e5                                      ldr ip, [r0, #0x20]
005d2b34  01 12 9c e0                                      adds r1, ip, r1, lsl #4
005d2b38  02 00 00 0a                                      beq #0x5d2b48
005d2b3c  06 c0 d1 e5                                      ldrb ip, [r1, #6]
005d2b40  06 00 5c e3                                      cmp ip, #6
005d2b44  01 00 00 0a                                      beq #0x5d2b50
005d2b48  00 00 a0 e3                                      mov r0, #0
005d2b4c  70 80 bd e8                                      pop {r4, r5, r6, pc}
005d2b50  00 00 53 e3                                      cmp r3, #0
005d2b54  08 00 53 13                                      cmpne r3, #8
005d2b58  00 40 a0 13                                      movne r4, #0
005d2b5c  01 40 a0 03                                      moveq r4, #1
005d2b60  11 00 00 0a                                      beq #0x5d2bac
005d2b64  08 c0 91 e5                                      ldr ip, [r1, #8]
005d2b68  24 50 90 e5                                      ldr r5, [r0, #0x24]
005d2b6c  0c 10 91 e5                                      ldr r1, [r1, #0xc]
005d2b70  00 00 5c e3                                      cmp ip, #0
005d2b74  0a 00 00 0a                                      beq #0x5d2ba4
005d2b78  01 50 85 e0                                      add r5, r5, r1
005d2b7c  04 00 a0 e1                                      mov r0, r4
005d2b80  00 40 92 e5                                      ldr r4, [r2]
005d2b84  05 10 a0 e1                                      mov r1, r5
005d2b88  01 c0 5c e2                                      subs ip, ip, #1
005d2b8c  00 40 a1 e7                                      str r4, [r1, r0]!
005d2b90  04 40 92 e5                                      ldr r4, [r2, #4]
005d2b94  08 00 80 e2                                      add r0, r0, #8
005d2b98  03 20 82 e0                                      add r2, r2, r3
005d2b9c  04 40 81 e5                                      str r4, [r1, #4]
005d2ba0  f6 ff ff 1a                                      bne #0x5d2b80
005d2ba4  01 00 a0 e3                                      mov r0, #1
005d2ba8  70 80 bd e8                                      pop {r4, r5, r6, pc}
005d2bac  08 c0 91 e5                                      ldr ip, [r1, #8]
005d2bb0  0c 30 91 e5                                      ldr r3, [r1, #0xc]
005d2bb4  24 00 90 e5                                      ldr r0, [r0, #0x24]
005d2bb8  02 10 a0 e1                                      mov r1, r2
005d2bbc  8c 21 a0 e1                                      lsl r2, ip, #3
005d2bc0  03 00 80 e0                                      add r0, r0, r3
005d2bc4  27 ef f4 eb                                      bl #0x30e868
005d2bc8  01 00 a0 e3                                      mov r0, #1
005d2bcc  70 80 bd e8                                      pop {r4, r5, r6, pc}

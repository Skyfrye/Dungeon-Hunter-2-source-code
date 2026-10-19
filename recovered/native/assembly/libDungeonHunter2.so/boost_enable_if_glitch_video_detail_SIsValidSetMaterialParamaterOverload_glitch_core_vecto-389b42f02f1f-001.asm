; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005c6564, declared_size=168, range_size=168, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector2d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE12setParameterINS_4core8vector2dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector2d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::setParameter<glitch::core::vector2d<float> >(unsigned short, unsigned int, glitch::core::vector2d<float> const&)
; decoder-mode: arm
005c6564  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005c6568  00 40 a0 e1                                      mov r4, r0
005c656c  04 00 90 e5                                      ldr r0, [r0, #4]
005c6570  03 50 a0 e1                                      mov r5, r3
005c6574  be c0 d0 e1                                      ldrh ip, [r0, #0xe]
005c6578  01 00 5c e1                                      cmp ip, r1
005c657c  01 00 00 8a                                      bhi #0x5c6588
005c6580  00 00 a0 e3                                      mov r0, #0
005c6584  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005c6588  20 30 90 e5                                      ldr r3, [r0, #0x20]
005c658c  01 12 93 e0                                      adds r1, r3, r1, lsl #4
005c6590  fa ff ff 0a                                      beq #0x5c6580
005c6594  06 30 d1 e5                                      ldrb r3, [r1, #6]
005c6598  06 00 53 e3                                      cmp r3, #6
005c659c  f7 ff ff 1a                                      bne #0x5c6580
005c65a0  08 30 91 e5                                      ldr r3, [r1, #8]
005c65a4  03 00 52 e1                                      cmp r2, r3
005c65a8  f4 ff ff 2a                                      bhs #0x5c6580
005c65ac  0c 80 91 e5                                      ldr r8, [r1, #0xc]
005c65b0  00 60 95 e5                                      ldr r6, [r5]
005c65b4  20 a0 84 e2                                      add sl, r4, #0x20
005c65b8  82 81 88 e0                                      add r8, r8, r2, lsl #3
005c65bc  06 00 a0 e1                                      mov r0, r6
005c65c0  08 10 9a e7                                      ldr r1, [sl, r8]
005c65c4  70 1e f5 eb                                      bl #0x30df8c
005c65c8  00 00 50 e3                                      cmp r0, #0
005c65cc  08 70 8a e0                                      add r7, sl, r8
005c65d0  04 00 00 0a                                      beq #0x5c65e8
005c65d4  04 00 95 e5                                      ldr r0, [r5, #4]
005c65d8  04 10 97 e5                                      ldr r1, [r7, #4]
005c65dc  6a 1e f5 eb                                      bl #0x30df8c
005c65e0  00 00 50 e3                                      cmp r0, #0
005c65e4  03 00 00 1a                                      bne #0x5c65f8
005c65e8  00 30 e0 e3                                      mvn r3, #0
005c65ec  0c 30 84 e5                                      str r3, [r4, #0xc]
005c65f0  10 30 84 e5                                      str r3, [r4, #0x10]
005c65f4  00 60 95 e5                                      ldr r6, [r5]
005c65f8  08 60 8a e7                                      str r6, [sl, r8]
005c65fc  04 30 95 e5                                      ldr r3, [r5, #4]
005c6600  01 00 a0 e3                                      mov r0, #1
005c6604  04 30 87 e5                                      str r3, [r7, #4]
005c6608  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x005c6c60, declared_size=212, range_size=212, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector2d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS_4core8vector2dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector2d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::setParameterCvt<glitch::core::vector2d<float> >(unsigned short, unsigned int, glitch::core::vector2d<float> const&)
; decoder-mode: arm
005c6c60  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005c6c64  04 c0 90 e5                                      ldr ip, [r0, #4]
005c6c68  00 40 a0 e1                                      mov r4, r0
005c6c6c  b8 00 9f e5                                      ldr r0, [pc, #0xb8]
005c6c70  be 50 dc e1                                      ldrh r5, [ip, #0xe]
005c6c74  00 00 8f e0                                      add r0, pc, r0
005c6c78  01 00 55 e1                                      cmp r5, r1
005c6c7c  03 50 a0 e1                                      mov r5, r3
005c6c80  10 00 00 9a                                      bls #0x5c6cc8
005c6c84  20 30 9c e5                                      ldr r3, [ip, #0x20]
005c6c88  01 12 93 e0                                      adds r1, r3, r1, lsl #4
005c6c8c  0d 00 00 0a                                      beq #0x5c6cc8
005c6c90  98 c0 9f e5                                      ldr ip, [pc, #0x98]
005c6c94  06 30 d1 e5                                      ldrb r3, [r1, #6]
005c6c98  0c 00 90 e7                                      ldr r0, [r0, ip]
005c6c9c  03 01 90 e7                                      ldr r0, [r0, r3, lsl #2]
005c6ca0  40 00 10 e3                                      tst r0, #0x40
005c6ca4  07 00 00 0a                                      beq #0x5c6cc8
005c6ca8  08 00 91 e5                                      ldr r0, [r1, #8]
005c6cac  00 00 52 e1                                      cmp r2, r0
005c6cb0  04 00 00 2a                                      bhs #0x5c6cc8
005c6cb4  06 00 53 e3                                      cmp r3, #6
005c6cb8  0c 70 91 e5                                      ldr r7, [r1, #0xc]
005c6cbc  03 00 00 0a                                      beq #0x5c6cd0
005c6cc0  01 00 a0 e3                                      mov r0, #1
005c6cc4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005c6cc8  00 00 a0 e3                                      mov r0, #0
005c6ccc  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005c6cd0  00 80 95 e5                                      ldr r8, [r5]
005c6cd4  20 60 84 e2                                      add r6, r4, #0x20
005c6cd8  07 10 96 e7                                      ldr r1, [r6, r7]
005c6cdc  08 00 a0 e1                                      mov r0, r8
005c6ce0  a9 1c f5 eb                                      bl #0x30df8c
005c6ce4  00 00 50 e3                                      cmp r0, #0
005c6ce8  07 a0 86 e0                                      add sl, r6, r7
005c6cec  08 00 00 1a                                      bne #0x5c6d14
005c6cf0  00 30 e0 e3                                      mvn r3, #0
005c6cf4  0c 30 84 e5                                      str r3, [r4, #0xc]
005c6cf8  10 30 84 e5                                      str r3, [r4, #0x10]
005c6cfc  00 80 95 e5                                      ldr r8, [r5]
005c6d00  07 80 86 e7                                      str r8, [r6, r7]
005c6d04  04 30 95 e5                                      ldr r3, [r5, #4]
005c6d08  01 00 a0 e3                                      mov r0, #1
005c6d0c  04 30 8a e5                                      str r3, [sl, #4]
005c6d10  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005c6d14  04 00 95 e5                                      ldr r0, [r5, #4]
005c6d18  04 10 9a e5                                      ldr r1, [sl, #4]
005c6d1c  9a 1c f5 eb                                      bl #0x30df8c
005c6d20  00 00 50 e3                                      cmp r0, #0
005c6d24  f5 ff ff 1a                                      bne #0x5c6d00
005c6d28  f0 ff ff ea                                      b #0x5c6cf0
; mapping-symbol data/literal pool
005c6d2c  1c de 3c 00 a4 2c 00 00                          .byte 0x1c, 0xde, 0x3c, 0x00, 0xa4, 0x2c, 0x00, 0x00

; FUNCTION 0x005c7044, declared_size=108, range_size=108, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector2d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE12getParameterINS_4core8vector2dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRSE_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector2d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::getParameter<glitch::core::vector2d<float> >(unsigned short, unsigned int, glitch::core::vector2d<float>&) const
; decoder-mode: arm
005c7044  04 40 2d e5                                      str r4, [sp, #-4]!
005c7048  04 c0 90 e5                                      ldr ip, [r0, #4]
005c704c  be 40 dc e1                                      ldrh r4, [ip, #0xe]
005c7050  01 00 54 e1                                      cmp r4, r1
005c7054  05 00 00 9a                                      bls #0x5c7070
005c7058  20 c0 9c e5                                      ldr ip, [ip, #0x20]
005c705c  01 12 9c e0                                      adds r1, ip, r1, lsl #4
005c7060  02 00 00 0a                                      beq #0x5c7070
005c7064  06 c0 d1 e5                                      ldrb ip, [r1, #6]
005c7068  06 00 5c e3                                      cmp ip, #6
005c706c  02 00 00 0a                                      beq #0x5c707c
005c7070  00 00 a0 e3                                      mov r0, #0
005c7074  10 00 bd e8                                      ldm sp!, {r4}
005c7078  1e ff 2f e1                                      bx lr
005c707c  08 c0 91 e5                                      ldr ip, [r1, #8]
005c7080  0c 00 52 e1                                      cmp r2, ip
005c7084  f9 ff ff 2a                                      bhs #0x5c7070
005c7088  0c c0 91 e5                                      ldr ip, [r1, #0xc]
005c708c  20 10 80 e2                                      add r1, r0, #0x20
005c7090  01 00 a0 e3                                      mov r0, #1
005c7094  82 21 8c e0                                      add r2, ip, r2, lsl #3
005c7098  02 c0 91 e7                                      ldr ip, [r1, r2]
005c709c  02 20 81 e0                                      add r2, r1, r2
005c70a0  00 c0 83 e5                                      str ip, [r3]
005c70a4  04 20 92 e5                                      ldr r2, [r2, #4]
005c70a8  04 20 83 e5                                      str r2, [r3, #4]
005c70ac  f0 ff ff ea                                      b #0x5c7074

; FUNCTION 0x005c7574, declared_size=140, range_size=140, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector2d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15getParameterCvtINS_4core8vector2dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRSE_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector2d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::getParameterCvt<glitch::core::vector2d<float> >(unsigned short, unsigned int, glitch::core::vector2d<float>&) const
; decoder-mode: arm
005c7574  30 00 2d e9                                      push {r4, r5}
005c7578  04 40 90 e5                                      ldr r4, [r0, #4]
005c757c  74 c0 9f e5                                      ldr ip, [pc, #0x74]
005c7580  be 50 d4 e1                                      ldrh r5, [r4, #0xe]
005c7584  0c c0 8f e0                                      add ip, pc, ip
005c7588  01 00 55 e1                                      cmp r5, r1
005c758c  16 00 00 9a                                      bls #0x5c75ec
005c7590  20 40 94 e5                                      ldr r4, [r4, #0x20]
005c7594  01 12 94 e0                                      adds r1, r4, r1, lsl #4
005c7598  13 00 00 0a                                      beq #0x5c75ec
005c759c  58 50 9f e5                                      ldr r5, [pc, #0x58]
005c75a0  06 40 d1 e5                                      ldrb r4, [r1, #6]
005c75a4  05 c0 9c e7                                      ldr ip, [ip, r5]
005c75a8  04 c1 9c e7                                      ldr ip, [ip, r4, lsl #2]
005c75ac  40 00 1c e3                                      tst ip, #0x40
005c75b0  0d 00 00 0a                                      beq #0x5c75ec
005c75b4  08 c0 91 e5                                      ldr ip, [r1, #8]
005c75b8  0c 00 52 e1                                      cmp r2, ip
005c75bc  0a 00 00 2a                                      bhs #0x5c75ec
005c75c0  0c 20 91 e5                                      ldr r2, [r1, #0xc]
005c75c4  06 00 54 e3                                      cmp r4, #6
005c75c8  20 00 80 02                                      addeq r0, r0, #0x20
005c75cc  02 10 90 07                                      ldreq r1, [r0, r2]
005c75d0  02 20 80 00                                      addeq r2, r0, r2
005c75d4  01 00 a0 13                                      movne r0, #1
005c75d8  00 10 83 05                                      streq r1, [r3]
005c75dc  04 20 92 05                                      ldreq r2, [r2, #4]
005c75e0  01 00 a0 03                                      moveq r0, #1
005c75e4  04 20 83 05                                      streq r2, [r3, #4]
005c75e8  00 00 00 ea                                      b #0x5c75f0
005c75ec  00 00 a0 e3                                      mov r0, #0
005c75f0  30 00 bd e8                                      pop {r4, r5}
005c75f4  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
005c75f8  0c d5 3c 00 a4 2c 00 00                          .byte 0x0c, 0xd5, 0x3c, 0x00, 0xa4, 0x2c, 0x00, 0x00

; FUNCTION 0x005c8198, declared_size=236, range_size=236, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector2d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15getParameterCvtINS_4core8vector2dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPSE_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector2d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::getParameterCvt<glitch::core::vector2d<float> >(unsigned short, glitch::core::vector2d<float>*, int) const
; decoder-mode: arm
005c8198  70 40 2d e9                                      push {r4, r5, r6, lr}
005c819c  04 40 90 e5                                      ldr r4, [r0, #4]
005c81a0  d4 c0 9f e5                                      ldr ip, [pc, #0xd4]
005c81a4  be 50 d4 e1                                      ldrh r5, [r4, #0xe]
005c81a8  0c c0 8f e0                                      add ip, pc, ip
005c81ac  01 00 55 e1                                      cmp r5, r1
005c81b0  13 00 00 9a                                      bls #0x5c8204
005c81b4  20 40 94 e5                                      ldr r4, [r4, #0x20]
005c81b8  01 12 94 e0                                      adds r1, r4, r1, lsl #4
005c81bc  10 00 00 0a                                      beq #0x5c8204
005c81c0  b8 50 9f e5                                      ldr r5, [pc, #0xb8]
005c81c4  06 40 d1 e5                                      ldrb r4, [r1, #6]
005c81c8  05 c0 9c e7                                      ldr ip, [ip, r5]
005c81cc  04 c1 9c e7                                      ldr ip, [ip, r4, lsl #2]
005c81d0  40 00 1c e3                                      tst ip, #0x40
005c81d4  0a 00 00 0a                                      beq #0x5c8204
005c81d8  01 c0 73 e2                                      rsbs ip, r3, #1
005c81dc  00 c0 a0 33                                      movlo ip, #0
005c81e0  00 00 53 e3                                      cmp r3, #0
005c81e4  08 00 53 13                                      cmpne r3, #8
005c81e8  07 00 00 1a                                      bne #0x5c820c
005c81ec  06 00 54 e3                                      cmp r4, #6
005c81f0  18 00 00 0a                                      beq #0x5c8258
005c81f4  00 00 5c e3                                      cmp ip, #0
005c81f8  03 00 00 0a                                      beq #0x5c820c
005c81fc  01 00 a0 e3                                      mov r0, #1
005c8200  70 80 bd e8                                      pop {r4, r5, r6, pc}
005c8204  00 00 a0 e3                                      mov r0, #0
005c8208  70 80 bd e8                                      pop {r4, r5, r6, pc}
005c820c  06 00 54 e3                                      cmp r4, #6
005c8210  0c 40 91 e5                                      ldr r4, [r1, #0xc]
005c8214  f8 ff ff 1a                                      bne #0x5c81fc
005c8218  08 c0 91 e5                                      ldr ip, [r1, #8]
005c821c  00 00 5c e3                                      cmp ip, #0
005c8220  f5 ff ff 0a                                      beq #0x5c81fc
005c8224  20 00 80 e2                                      add r0, r0, #0x20
005c8228  04 00 80 e0                                      add r0, r0, r4
005c822c  00 40 a0 e3                                      mov r4, #0
005c8230  00 10 a0 e1                                      mov r1, r0
005c8234  04 50 b1 e7                                      ldr r5, [r1, r4]!
005c8238  01 c0 5c e2                                      subs ip, ip, #1
005c823c  08 40 84 e2                                      add r4, r4, #8
005c8240  00 50 82 e5                                      str r5, [r2]
005c8244  04 10 91 e5                                      ldr r1, [r1, #4]
005c8248  04 10 82 e5                                      str r1, [r2, #4]
005c824c  03 20 82 e0                                      add r2, r2, r3
005c8250  f6 ff ff 1a                                      bne #0x5c8230
005c8254  e8 ff ff ea                                      b #0x5c81fc
005c8258  0c c0 91 e5                                      ldr ip, [r1, #0xc]
005c825c  08 30 91 e5                                      ldr r3, [r1, #8]
005c8260  20 10 80 e2                                      add r1, r0, #0x20
005c8264  0c 10 81 e0                                      add r1, r1, ip
005c8268  02 00 a0 e1                                      mov r0, r2
005c826c  83 21 a0 e1                                      lsl r2, r3, #3
005c8270  7c 19 f5 eb                                      bl #0x30e868
005c8274  01 00 a0 e3                                      mov r0, #1
005c8278  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005c827c  e8 c8 3c 00 a4 2c 00 00                          .byte 0xe8, 0xc8, 0x3c, 0x00, 0xa4, 0x2c, 0x00, 0x00

; FUNCTION 0x005c8a24, declared_size=176, range_size=176, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector2d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE12getParameterINS_4core8vector2dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPSE_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector2d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::getParameter<glitch::core::vector2d<float> >(unsigned short, glitch::core::vector2d<float>*, int) const
; decoder-mode: arm
005c8a24  70 40 2d e9                                      push {r4, r5, r6, lr}
005c8a28  04 c0 90 e5                                      ldr ip, [r0, #4]
005c8a2c  be 40 dc e1                                      ldrh r4, [ip, #0xe]
005c8a30  01 00 54 e1                                      cmp r4, r1
005c8a34  05 00 00 9a                                      bls #0x5c8a50
005c8a38  20 c0 9c e5                                      ldr ip, [ip, #0x20]
005c8a3c  01 12 9c e0                                      adds r1, ip, r1, lsl #4
005c8a40  02 00 00 0a                                      beq #0x5c8a50
005c8a44  06 c0 d1 e5                                      ldrb ip, [r1, #6]
005c8a48  06 00 5c e3                                      cmp ip, #6
005c8a4c  01 00 00 0a                                      beq #0x5c8a58
005c8a50  00 00 a0 e3                                      mov r0, #0
005c8a54  70 80 bd e8                                      pop {r4, r5, r6, pc}
005c8a58  00 00 53 e3                                      cmp r3, #0
005c8a5c  08 00 53 13                                      cmpne r3, #8
005c8a60  00 40 a0 13                                      movne r4, #0
005c8a64  01 40 a0 03                                      moveq r4, #1
005c8a68  10 00 00 0a                                      beq #0x5c8ab0
005c8a6c  08 c0 91 e5                                      ldr ip, [r1, #8]
005c8a70  0c 10 91 e5                                      ldr r1, [r1, #0xc]
005c8a74  00 00 5c e3                                      cmp ip, #0
005c8a78  0a 00 00 0a                                      beq #0x5c8aa8
005c8a7c  20 00 80 e2                                      add r0, r0, #0x20
005c8a80  01 00 80 e0                                      add r0, r0, r1
005c8a84  00 10 a0 e1                                      mov r1, r0
005c8a88  04 50 b1 e7                                      ldr r5, [r1, r4]!
005c8a8c  01 c0 5c e2                                      subs ip, ip, #1
005c8a90  08 40 84 e2                                      add r4, r4, #8
005c8a94  00 50 82 e5                                      str r5, [r2]
005c8a98  04 10 91 e5                                      ldr r1, [r1, #4]
005c8a9c  04 10 82 e5                                      str r1, [r2, #4]
005c8aa0  03 20 82 e0                                      add r2, r2, r3
005c8aa4  f6 ff ff 1a                                      bne #0x5c8a84
005c8aa8  01 00 a0 e3                                      mov r0, #1
005c8aac  70 80 bd e8                                      pop {r4, r5, r6, pc}
005c8ab0  0c c0 91 e5                                      ldr ip, [r1, #0xc]
005c8ab4  08 30 91 e5                                      ldr r3, [r1, #8]
005c8ab8  20 10 80 e2                                      add r1, r0, #0x20
005c8abc  0c 10 81 e0                                      add r1, r1, ip
005c8ac0  02 00 a0 e1                                      mov r0, r2
005c8ac4  83 21 a0 e1                                      lsl r2, r3, #3
005c8ac8  66 17 f5 eb                                      bl #0x30e868
005c8acc  01 00 a0 e3                                      mov r0, #1
005c8ad0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x005c954c, declared_size=256, range_size=256, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector2d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS_4core8vector2dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPKSE_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector2d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::setParameterCvt<glitch::core::vector2d<float> >(unsigned short, glitch::core::vector2d<float> const*, int)
; decoder-mode: arm
005c954c  70 40 2d e9                                      push {r4, r5, r6, lr}
005c9550  04 40 90 e5                                      ldr r4, [r0, #4]
005c9554  e8 c0 9f e5                                      ldr ip, [pc, #0xe8]
005c9558  be 50 d4 e1                                      ldrh r5, [r4, #0xe]
005c955c  0c c0 8f e0                                      add ip, pc, ip
005c9560  01 00 55 e1                                      cmp r5, r1
005c9564  18 00 00 9a                                      bls #0x5c95cc
005c9568  20 40 94 e5                                      ldr r4, [r4, #0x20]
005c956c  01 12 94 e0                                      adds r1, r4, r1, lsl #4
005c9570  15 00 00 0a                                      beq #0x5c95cc
005c9574  cc 50 9f e5                                      ldr r5, [pc, #0xcc]
005c9578  06 40 d1 e5                                      ldrb r4, [r1, #6]
005c957c  05 c0 9c e7                                      ldr ip, [ip, r5]
005c9580  04 c1 9c e7                                      ldr ip, [ip, r4, lsl #2]
005c9584  40 00 1c e3                                      tst ip, #0x40
005c9588  0f 00 00 0a                                      beq #0x5c95cc
005c958c  00 c0 e0 e3                                      mvn ip, #0
005c9590  01 40 73 e2                                      rsbs r4, r3, #1
005c9594  00 40 a0 33                                      movlo r4, #0
005c9598  0c c0 80 e5                                      str ip, [r0, #0xc]
005c959c  00 00 53 e3                                      cmp r3, #0
005c95a0  08 00 53 13                                      cmpne r3, #8
005c95a4  10 c0 80 e5                                      str ip, [r0, #0x10]
005c95a8  06 c0 d1 15                                      ldrbne ip, [r1, #6]
005c95ac  08 00 00 1a                                      bne #0x5c95d4
005c95b0  06 c0 d1 e5                                      ldrb ip, [r1, #6]
005c95b4  06 00 5c e3                                      cmp ip, #6
005c95b8  18 00 00 0a                                      beq #0x5c9620
005c95bc  00 00 54 e3                                      cmp r4, #0
005c95c0  03 00 00 0a                                      beq #0x5c95d4
005c95c4  01 00 a0 e3                                      mov r0, #1
005c95c8  70 80 bd e8                                      pop {r4, r5, r6, pc}
005c95cc  00 00 a0 e3                                      mov r0, #0
005c95d0  70 80 bd e8                                      pop {r4, r5, r6, pc}
005c95d4  06 00 5c e3                                      cmp ip, #6
005c95d8  0c 40 91 e5                                      ldr r4, [r1, #0xc]
005c95dc  f8 ff ff 1a                                      bne #0x5c95c4
005c95e0  08 c0 91 e5                                      ldr ip, [r1, #8]
005c95e4  00 00 5c e3                                      cmp ip, #0
005c95e8  f5 ff ff 0a                                      beq #0x5c95c4
005c95ec  20 00 80 e2                                      add r0, r0, #0x20
005c95f0  04 00 80 e0                                      add r0, r0, r4
005c95f4  00 40 a0 e3                                      mov r4, #0
005c95f8  00 50 92 e5                                      ldr r5, [r2]
005c95fc  00 10 a0 e1                                      mov r1, r0
005c9600  01 c0 5c e2                                      subs ip, ip, #1
005c9604  04 50 a1 e7                                      str r5, [r1, r4]!
005c9608  04 50 92 e5                                      ldr r5, [r2, #4]
005c960c  08 40 84 e2                                      add r4, r4, #8
005c9610  03 20 82 e0                                      add r2, r2, r3
005c9614  04 50 81 e5                                      str r5, [r1, #4]
005c9618  f6 ff ff 1a                                      bne #0x5c95f8
005c961c  e8 ff ff ea                                      b #0x5c95c4
005c9620  08 30 91 e5                                      ldr r3, [r1, #8]
005c9624  0c c0 91 e5                                      ldr ip, [r1, #0xc]
005c9628  20 00 80 e2                                      add r0, r0, #0x20
005c962c  02 10 a0 e1                                      mov r1, r2
005c9630  0c 00 80 e0                                      add r0, r0, ip
005c9634  83 21 a0 e1                                      lsl r2, r3, #3
005c9638  8a 14 f5 eb                                      bl #0x30e868
005c963c  01 00 a0 e3                                      mov r0, #1
005c9640  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005c9644  34 b5 3c 00 a4 2c 00 00                          .byte 0x34, 0xb5, 0x3c, 0x00, 0xa4, 0x2c, 0x00, 0x00

; FUNCTION 0x005c9ebc, declared_size=188, range_size=188, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector2d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE12setParameterINS_4core8vector2dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPKSE_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector2d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::setParameter<glitch::core::vector2d<float> >(unsigned short, glitch::core::vector2d<float> const*, int)
; decoder-mode: arm
005c9ebc  70 40 2d e9                                      push {r4, r5, r6, lr}
005c9ec0  04 c0 90 e5                                      ldr ip, [r0, #4]
005c9ec4  be 40 dc e1                                      ldrh r4, [ip, #0xe]
005c9ec8  01 00 54 e1                                      cmp r4, r1
005c9ecc  05 00 00 9a                                      bls #0x5c9ee8
005c9ed0  20 c0 9c e5                                      ldr ip, [ip, #0x20]
005c9ed4  01 12 9c e0                                      adds r1, ip, r1, lsl #4
005c9ed8  02 00 00 0a                                      beq #0x5c9ee8
005c9edc  06 c0 d1 e5                                      ldrb ip, [r1, #6]
005c9ee0  06 00 5c e3                                      cmp ip, #6
005c9ee4  01 00 00 0a                                      beq #0x5c9ef0
005c9ee8  00 00 a0 e3                                      mov r0, #0
005c9eec  70 80 bd e8                                      pop {r4, r5, r6, pc}
005c9ef0  00 c0 e0 e3                                      mvn ip, #0
005c9ef4  00 00 53 e3                                      cmp r3, #0
005c9ef8  08 00 53 13                                      cmpne r3, #8
005c9efc  00 40 a0 13                                      movne r4, #0
005c9f00  01 40 a0 03                                      moveq r4, #1
005c9f04  0c c0 80 e5                                      str ip, [r0, #0xc]
005c9f08  10 c0 80 e5                                      str ip, [r0, #0x10]
005c9f0c  10 00 00 0a                                      beq #0x5c9f54
005c9f10  08 c0 91 e5                                      ldr ip, [r1, #8]
005c9f14  0c 10 91 e5                                      ldr r1, [r1, #0xc]
005c9f18  00 00 5c e3                                      cmp ip, #0
005c9f1c  0a 00 00 0a                                      beq #0x5c9f4c
005c9f20  20 00 80 e2                                      add r0, r0, #0x20
005c9f24  01 00 80 e0                                      add r0, r0, r1
005c9f28  00 50 92 e5                                      ldr r5, [r2]
005c9f2c  00 10 a0 e1                                      mov r1, r0
005c9f30  01 c0 5c e2                                      subs ip, ip, #1
005c9f34  04 50 a1 e7                                      str r5, [r1, r4]!
005c9f38  04 50 92 e5                                      ldr r5, [r2, #4]
005c9f3c  08 40 84 e2                                      add r4, r4, #8
005c9f40  03 20 82 e0                                      add r2, r2, r3
005c9f44  04 50 81 e5                                      str r5, [r1, #4]
005c9f48  f6 ff ff 1a                                      bne #0x5c9f28
005c9f4c  01 00 a0 e3                                      mov r0, #1
005c9f50  70 80 bd e8                                      pop {r4, r5, r6, pc}
005c9f54  08 30 91 e5                                      ldr r3, [r1, #8]
005c9f58  0c c0 91 e5                                      ldr ip, [r1, #0xc]
005c9f5c  20 00 80 e2                                      add r0, r0, #0x20
005c9f60  02 10 a0 e1                                      mov r1, r2
005c9f64  0c 00 80 e0                                      add r0, r0, ip
005c9f68  83 21 a0 e1                                      lsl r2, r3, #3
005c9f6c  3d 12 f5 eb                                      bl #0x30e868
005c9f70  01 00 a0 e3                                      mov r0, #1
005c9f74  70 80 bd e8                                      pop {r4, r5, r6, pc}

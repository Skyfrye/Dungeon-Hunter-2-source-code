; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005cc1b8, declared_size=256, range_size=256, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<boost::intrusive_ptr<glitch::video::CLight> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtIN5boost13intrusive_ptrINS0_6CLightEEEEENS8_9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<boost::intrusive_ptr<glitch::video::CLight> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::setParameterCvt<boost::intrusive_ptr<glitch::video::CLight> >(unsigned short, unsigned int, boost::intrusive_ptr<glitch::video::CLight> const&)
; decoder-mode: arm
005cc1b8  70 40 2d e9                                      push {r4, r5, r6, lr}
005cc1bc  04 40 90 e5                                      ldr r4, [r0, #4]
005cc1c0  e4 c0 9f e5                                      ldr ip, [pc, #0xe4]
005cc1c4  be 50 d4 e1                                      ldrh r5, [r4, #0xe]
005cc1c8  0c c0 8f e0                                      add ip, pc, ip
005cc1cc  01 00 55 e1                                      cmp r5, r1
005cc1d0  10 00 00 9a                                      bls #0x5cc218
005cc1d4  20 40 94 e5                                      ldr r4, [r4, #0x20]
005cc1d8  01 12 94 e0                                      adds r1, r4, r1, lsl #4
005cc1dc  0d 00 00 0a                                      beq #0x5cc218
005cc1e0  c8 50 9f e5                                      ldr r5, [pc, #0xc8]
005cc1e4  06 40 d1 e5                                      ldrb r4, [r1, #6]
005cc1e8  05 50 9c e7                                      ldr r5, [ip, r5]
005cc1ec  04 51 95 e7                                      ldr r5, [r5, r4, lsl #2]
005cc1f0  01 07 15 e3                                      tst r5, #0x40000
005cc1f4  07 00 00 0a                                      beq #0x5cc218
005cc1f8  08 50 91 e5                                      ldr r5, [r1, #8]
005cc1fc  05 00 52 e1                                      cmp r2, r5
005cc200  04 00 00 2a                                      bhs #0x5cc218
005cc204  12 00 54 e3                                      cmp r4, #0x12
005cc208  0c 40 91 e5                                      ldr r4, [r1, #0xc]
005cc20c  03 00 00 0a                                      beq #0x5cc220
005cc210  01 00 a0 e3                                      mov r0, #1
005cc214  70 80 bd e8                                      pop {r4, r5, r6, pc}
005cc218  00 00 a0 e3                                      mov r0, #0
005cc21c  70 80 bd e8                                      pop {r4, r5, r6, pc}
005cc220  20 10 80 e2                                      add r1, r0, #0x20
005cc224  04 20 91 e7                                      ldr r2, [r1, r4]
005cc228  00 50 93 e5                                      ldr r5, [r3]
005cc22c  05 00 52 e1                                      cmp r2, r5
005cc230  00 20 e0 13                                      mvnne r2, #0
005cc234  0c 20 80 15                                      strne r2, [r0, #0xc]
005cc238  10 20 80 15                                      strne r2, [r0, #0x10]
005cc23c  00 20 93 15                                      ldrne r2, [r3]
005cc240  00 00 52 e3                                      cmp r2, #0
005cc244  00 30 92 15                                      ldrne r3, [r2]
005cc248  01 30 83 12                                      addne r3, r3, #1
005cc24c  00 30 82 15                                      strne r3, [r2]
005cc250  04 00 91 e7                                      ldr r0, [r1, r4]
005cc254  04 20 81 e7                                      str r2, [r1, r4]
005cc258  00 00 50 e3                                      cmp r0, #0
005cc25c  eb ff ff 0a                                      beq #0x5cc210
005cc260  00 30 90 e5                                      ldr r3, [r0]
005cc264  01 30 43 e2                                      sub r3, r3, #1
005cc268  00 00 53 e3                                      cmp r3, #0
005cc26c  00 30 80 e5                                      str r3, [r0]
005cc270  e6 ff ff 1a                                      bne #0x5cc210
005cc274  54 30 d0 e5                                      ldrb r3, [r0, #0x54]
005cc278  00 00 53 e3                                      cmp r3, #0
005cc27c  05 00 00 1a                                      bne #0x5cc298
005cc280  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
005cc284  50 20 90 e5                                      ldr r2, [r0, #0x50]
005cc288  03 30 9c e7                                      ldr r3, [ip, r3]
005cc28c  00 10 93 e5                                      ldr r1, [r3]
005cc290  00 10 82 e5                                      str r1, [r2]
005cc294  00 20 83 e5                                      str r2, [r3]
005cc298  00 30 a0 e3                                      mov r3, #0
005cc29c  50 30 80 e5                                      str r3, [r0, #0x50]
005cc2a0  02 08 f5 eb                                      bl #0x30e2b0
005cc2a4  01 00 a0 e3                                      mov r0, #1
005cc2a8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005cc2ac  c8 88 3c 00 a4 2c 00 00 c0 3c 00 00              .byte 0xc8, 0x88, 0x3c, 0x00, 0xa4, 0x2c, 0x00, 0x00, 0xc0, 0x3c, 0x00, 0x00

; FUNCTION 0x005cc2b8, declared_size=252, range_size=252, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<boost::intrusive_ptr<glitch::video::CLight> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE12setParameterIN5boost13intrusive_ptrINS0_6CLightEEEEENS8_9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPKSE_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<boost::intrusive_ptr<glitch::video::CLight> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::setParameter<boost::intrusive_ptr<glitch::video::CLight> >(unsigned short, boost::intrusive_ptr<glitch::video::CLight> const*, int)
; decoder-mode: arm
005cc2b8  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
005cc2bc  04 c0 90 e5                                      ldr ip, [r0, #4]
005cc2c0  e4 40 9f e5                                      ldr r4, [pc, #0xe4]
005cc2c4  02 50 a0 e1                                      mov r5, r2
005cc2c8  be 60 dc e1                                      ldrh r6, [ip, #0xe]
005cc2cc  04 40 8f e0                                      add r4, pc, r4
005cc2d0  01 00 56 e1                                      cmp r6, r1
005cc2d4  05 00 00 9a                                      bls #0x5cc2f0
005cc2d8  20 20 9c e5                                      ldr r2, [ip, #0x20]
005cc2dc  01 12 92 e0                                      adds r1, r2, r1, lsl #4
005cc2e0  02 00 00 0a                                      beq #0x5cc2f0
005cc2e4  06 20 d1 e5                                      ldrb r2, [r1, #6]
005cc2e8  12 00 52 e3                                      cmp r2, #0x12
005cc2ec  01 00 00 0a                                      beq #0x5cc2f8
005cc2f0  00 00 a0 e3                                      mov r0, #0
005cc2f4  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
005cc2f8  00 20 e0 e3                                      mvn r2, #0
005cc2fc  0c 20 80 e5                                      str r2, [r0, #0xc]
005cc300  10 20 80 e5                                      str r2, [r0, #0x10]
005cc304  08 70 91 e5                                      ldr r7, [r1, #8]
005cc308  00 00 53 e3                                      cmp r3, #0
005cc30c  03 a0 a0 11                                      movne sl, r3
005cc310  04 a0 a0 03                                      moveq sl, #4
005cc314  00 00 57 e3                                      cmp r7, #0
005cc318  0c 80 91 e5                                      ldr r8, [r1, #0xc]
005cc31c  20 00 00 0a                                      beq #0x5cc3a4
005cc320  88 90 9f e5                                      ldr sb, [pc, #0x88]
005cc324  20 00 80 e2                                      add r0, r0, #0x20
005cc328  00 60 a0 e3                                      mov r6, #0
005cc32c  08 80 80 e0                                      add r8, r0, r8
005cc330  06 b0 a0 e1                                      mov fp, r6
005cc334  00 30 95 e5                                      ldr r3, [r5]
005cc338  0a 50 85 e0                                      add r5, r5, sl
005cc33c  00 00 53 e3                                      cmp r3, #0
005cc340  00 20 93 15                                      ldrne r2, [r3]
005cc344  01 20 82 12                                      addne r2, r2, #1
005cc348  00 20 83 15                                      strne r2, [r3]
005cc34c  06 20 98 e7                                      ldr r2, [r8, r6]
005cc350  06 30 88 e7                                      str r3, [r8, r6]
005cc354  04 60 86 e2                                      add r6, r6, #4
005cc358  00 00 52 e3                                      cmp r2, #0
005cc35c  02 00 a0 e1                                      mov r0, r2
005cc360  0d 00 00 0a                                      beq #0x5cc39c
005cc364  00 10 92 e5                                      ldr r1, [r2]
005cc368  01 10 41 e2                                      sub r1, r1, #1
005cc36c  00 00 51 e3                                      cmp r1, #0
005cc370  00 10 82 e5                                      str r1, [r2]
005cc374  08 00 00 1a                                      bne #0x5cc39c
005cc378  54 30 d2 e5                                      ldrb r3, [r2, #0x54]
005cc37c  00 00 53 e3                                      cmp r3, #0
005cc380  09 30 94 07                                      ldreq r3, [r4, sb]
005cc384  50 10 92 05                                      ldreq r1, [r2, #0x50]
005cc388  00 c0 93 05                                      ldreq ip, [r3]
005cc38c  00 c0 81 05                                      streq ip, [r1]
005cc390  00 10 83 05                                      streq r1, [r3]
005cc394  50 b0 82 e5                                      str fp, [r2, #0x50]
005cc398  c4 07 f5 eb                                      bl #0x30e2b0
005cc39c  01 70 57 e2                                      subs r7, r7, #1
005cc3a0  e3 ff ff 1a                                      bne #0x5cc334
005cc3a4  01 00 a0 e3                                      mov r0, #1
005cc3a8  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
005cc3ac  c4 87 3c 00 c0 3c 00 00                          .byte 0xc4, 0x87, 0x3c, 0x00, 0xc0, 0x3c, 0x00, 0x00

; FUNCTION 0x005cc3b4, declared_size=136, range_size=136, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<boost::intrusive_ptr<glitch::video::CLight> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15getParameterCvtIN5boost13intrusive_ptrINS0_6CLightEEEEENS8_9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRSE_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<boost::intrusive_ptr<glitch::video::CLight> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::getParameterCvt<boost::intrusive_ptr<glitch::video::CLight> >(unsigned short, unsigned int, boost::intrusive_ptr<glitch::video::CLight>&) const
; decoder-mode: arm
005cc3b4  70 40 2d e9                                      push {r4, r5, r6, lr}
005cc3b8  04 40 90 e5                                      ldr r4, [r0, #4]
005cc3bc  70 c0 9f e5                                      ldr ip, [pc, #0x70]
005cc3c0  be 50 d4 e1                                      ldrh r5, [r4, #0xe]
005cc3c4  0c c0 8f e0                                      add ip, pc, ip
005cc3c8  01 00 55 e1                                      cmp r5, r1
005cc3cc  10 00 00 9a                                      bls #0x5cc414
005cc3d0  20 40 94 e5                                      ldr r4, [r4, #0x20]
005cc3d4  01 12 94 e0                                      adds r1, r4, r1, lsl #4
005cc3d8  0d 00 00 0a                                      beq #0x5cc414
005cc3dc  54 50 9f e5                                      ldr r5, [pc, #0x54]
005cc3e0  06 40 d1 e5                                      ldrb r4, [r1, #6]
005cc3e4  05 c0 9c e7                                      ldr ip, [ip, r5]
005cc3e8  04 c1 9c e7                                      ldr ip, [ip, r4, lsl #2]
005cc3ec  01 07 1c e3                                      tst ip, #0x40000
005cc3f0  07 00 00 0a                                      beq #0x5cc414
005cc3f4  08 c0 91 e5                                      ldr ip, [r1, #8]
005cc3f8  0c 00 52 e1                                      cmp r2, ip
005cc3fc  04 00 00 2a                                      bhs #0x5cc414
005cc400  12 00 54 e3                                      cmp r4, #0x12
005cc404  0c 20 91 e5                                      ldr r2, [r1, #0xc]
005cc408  03 00 00 0a                                      beq #0x5cc41c
005cc40c  01 00 a0 e3                                      mov r0, #1
005cc410  70 80 bd e8                                      pop {r4, r5, r6, pc}
005cc414  00 00 a0 e3                                      mov r0, #0
005cc418  70 80 bd e8                                      pop {r4, r5, r6, pc}
005cc41c  20 10 80 e2                                      add r1, r0, #0x20
005cc420  02 10 81 e0                                      add r1, r1, r2
005cc424  03 00 a0 e1                                      mov r0, r3
005cc428  88 bc ff eb                                      bl #0x5bb650
005cc42c  01 00 a0 e3                                      mov r0, #1
005cc430  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005cc434  cc 86 3c 00 a4 2c 00 00                          .byte 0xcc, 0x86, 0x3c, 0x00, 0xa4, 0x2c, 0x00, 0x00

; FUNCTION 0x005cc50c, declared_size=284, range_size=284, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<boost::intrusive_ptr<glitch::video::CLight> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE12getParameterIN5boost13intrusive_ptrINS0_6CLightEEEEENS8_9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPSE_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<boost::intrusive_ptr<glitch::video::CLight> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::getParameter<boost::intrusive_ptr<glitch::video::CLight> >(unsigned short, boost::intrusive_ptr<glitch::video::CLight>*, int) const
; decoder-mode: arm
005cc50c  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
005cc510  04 c0 90 e5                                      ldr ip, [r0, #4]
005cc514  04 41 9f e5                                      ldr r4, [pc, #0x104]
005cc518  02 50 a0 e1                                      mov r5, r2
005cc51c  be 60 dc e1                                      ldrh r6, [ip, #0xe]
005cc520  04 40 8f e0                                      add r4, pc, r4
005cc524  03 80 a0 e1                                      mov r8, r3
005cc528  01 00 56 e1                                      cmp r6, r1
005cc52c  05 00 00 9a                                      bls #0x5cc548
005cc530  20 30 9c e5                                      ldr r3, [ip, #0x20]
005cc534  01 12 93 e0                                      adds r1, r3, r1, lsl #4
005cc538  02 00 00 0a                                      beq #0x5cc548
005cc53c  06 30 d1 e5                                      ldrb r3, [r1, #6]
005cc540  12 00 53 e3                                      cmp r3, #0x12
005cc544  01 00 00 0a                                      beq #0x5cc550
005cc548  00 00 a0 e3                                      mov r0, #0
005cc54c  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
005cc550  00 00 58 e3                                      cmp r8, #0
005cc554  04 00 58 13                                      cmpne r8, #4
005cc558  00 70 a0 13                                      movne r7, #0
005cc55c  01 70 a0 03                                      moveq r7, #1
005cc560  25 00 00 0a                                      beq #0x5cc5fc
005cc564  08 60 91 e5                                      ldr r6, [r1, #8]
005cc568  0c 30 91 e5                                      ldr r3, [r1, #0xc]
005cc56c  00 00 56 e3                                      cmp r6, #0
005cc570  1f 00 00 0a                                      beq #0x5cc5f4
005cc574  a8 90 9f e5                                      ldr sb, [pc, #0xa8]
005cc578  20 00 80 e2                                      add r0, r0, #0x20
005cc57c  03 a0 80 e0                                      add sl, r0, r3
005cc580  07 b0 a0 e1                                      mov fp, r7
005cc584  07 30 9a e7                                      ldr r3, [sl, r7]
005cc588  04 70 87 e2                                      add r7, r7, #4
005cc58c  00 00 53 e3                                      cmp r3, #0
005cc590  00 20 93 15                                      ldrne r2, [r3]
005cc594  01 20 82 12                                      addne r2, r2, #1
005cc598  00 20 83 15                                      strne r2, [r3]
005cc59c  00 20 95 e5                                      ldr r2, [r5]
005cc5a0  00 30 85 e5                                      str r3, [r5]
005cc5a4  08 50 85 e0                                      add r5, r5, r8
005cc5a8  00 00 52 e3                                      cmp r2, #0
005cc5ac  02 00 a0 e1                                      mov r0, r2
005cc5b0  0d 00 00 0a                                      beq #0x5cc5ec
005cc5b4  00 10 92 e5                                      ldr r1, [r2]
005cc5b8  01 10 41 e2                                      sub r1, r1, #1
005cc5bc  00 00 51 e3                                      cmp r1, #0
005cc5c0  00 10 82 e5                                      str r1, [r2]
005cc5c4  08 00 00 1a                                      bne #0x5cc5ec
005cc5c8  54 30 d2 e5                                      ldrb r3, [r2, #0x54]
005cc5cc  00 00 53 e3                                      cmp r3, #0
005cc5d0  09 30 94 07                                      ldreq r3, [r4, sb]
005cc5d4  50 10 92 05                                      ldreq r1, [r2, #0x50]
005cc5d8  00 c0 93 05                                      ldreq ip, [r3]
005cc5dc  00 c0 81 05                                      streq ip, [r1]
005cc5e0  00 10 83 05                                      streq r1, [r3]
005cc5e4  50 b0 82 e5                                      str fp, [r2, #0x50]
005cc5e8  30 07 f5 eb                                      bl #0x30e2b0
005cc5ec  01 60 56 e2                                      subs r6, r6, #1
005cc5f0  e3 ff ff 1a                                      bne #0x5cc584
005cc5f4  01 00 a0 e3                                      mov r0, #1
005cc5f8  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
005cc5fc  0c 30 91 e5                                      ldr r3, [r1, #0xc]
005cc600  08 20 91 e5                                      ldr r2, [r1, #8]
005cc604  20 10 80 e2                                      add r1, r0, #0x20
005cc608  03 10 81 e0                                      add r1, r1, r3
005cc60c  05 00 a0 e1                                      mov r0, r5
005cc610  02 21 a0 e1                                      lsl r2, r2, #2
005cc614  93 08 f5 eb                                      bl #0x30e868
005cc618  01 00 a0 e3                                      mov r0, #1
005cc61c  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
005cc620  70 85 3c 00 c0 3c 00 00                          .byte 0x70, 0x85, 0x3c, 0x00, 0xc0, 0x3c, 0x00, 0x00

; FUNCTION 0x005cce20, declared_size=288, range_size=288, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<boost::intrusive_ptr<glitch::video::CLight> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtIN5boost13intrusive_ptrINS0_6CLightEEEEENS8_9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPKSE_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<boost::intrusive_ptr<glitch::video::CLight> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::setParameterCvt<boost::intrusive_ptr<glitch::video::CLight> >(unsigned short, boost::intrusive_ptr<glitch::video::CLight> const*, int)
; decoder-mode: arm
005cce20  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
005cce24  04 c0 90 e5                                      ldr ip, [r0, #4]
005cce28  04 41 9f e5                                      ldr r4, [pc, #0x104]
005cce2c  02 50 a0 e1                                      mov r5, r2
005cce30  be 60 dc e1                                      ldrh r6, [ip, #0xe]
005cce34  04 40 8f e0                                      add r4, pc, r4
005cce38  03 80 a0 e1                                      mov r8, r3
005cce3c  01 00 56 e1                                      cmp r6, r1
005cce40  13 00 00 9a                                      bls #0x5cce94
005cce44  20 30 9c e5                                      ldr r3, [ip, #0x20]
005cce48  01 12 93 e0                                      adds r1, r3, r1, lsl #4
005cce4c  10 00 00 0a                                      beq #0x5cce94
005cce50  e0 30 9f e5                                      ldr r3, [pc, #0xe0]
005cce54  06 20 d1 e5                                      ldrb r2, [r1, #6]
005cce58  03 30 94 e7                                      ldr r3, [r4, r3]
005cce5c  02 31 93 e7                                      ldr r3, [r3, r2, lsl #2]
005cce60  01 07 13 e3                                      tst r3, #0x40000
005cce64  0a 00 00 0a                                      beq #0x5cce94
005cce68  00 30 e0 e3                                      mvn r3, #0
005cce6c  00 00 58 e3                                      cmp r8, #0
005cce70  0c 30 80 e5                                      str r3, [r0, #0xc]
005cce74  10 30 80 e5                                      str r3, [r0, #0x10]
005cce78  03 00 00 0a                                      beq #0x5cce8c
005cce7c  06 30 d1 e5                                      ldrb r3, [r1, #6]
005cce80  0c 20 91 e5                                      ldr r2, [r1, #0xc]
005cce84  12 00 53 e3                                      cmp r3, #0x12
005cce88  03 00 00 0a                                      beq #0x5cce9c
005cce8c  01 00 a0 e3                                      mov r0, #1
005cce90  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
005cce94  00 00 a0 e3                                      mov r0, #0
005cce98  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
005cce9c  08 70 91 e5                                      ldr r7, [r1, #8]
005ccea0  00 00 57 e3                                      cmp r7, #0
005ccea4  f8 ff ff 0a                                      beq #0x5cce8c
005ccea8  8c 90 9f e5                                      ldr sb, [pc, #0x8c]
005cceac  20 00 80 e2                                      add r0, r0, #0x20
005cceb0  00 60 a0 e3                                      mov r6, #0
005cceb4  02 a0 80 e0                                      add sl, r0, r2
005cceb8  06 b0 a0 e1                                      mov fp, r6
005ccebc  00 30 95 e5                                      ldr r3, [r5]
005ccec0  08 50 85 e0                                      add r5, r5, r8
005ccec4  00 00 53 e3                                      cmp r3, #0
005ccec8  00 20 93 15                                      ldrne r2, [r3]
005ccecc  01 20 82 12                                      addne r2, r2, #1
005cced0  00 20 83 15                                      strne r2, [r3]
005cced4  06 20 9a e7                                      ldr r2, [sl, r6]
005cced8  06 30 8a e7                                      str r3, [sl, r6]
005ccedc  04 60 86 e2                                      add r6, r6, #4
005ccee0  00 00 52 e3                                      cmp r2, #0
005ccee4  02 00 a0 e1                                      mov r0, r2
005ccee8  0d 00 00 0a                                      beq #0x5ccf24
005cceec  00 10 92 e5                                      ldr r1, [r2]
005ccef0  01 10 41 e2                                      sub r1, r1, #1
005ccef4  00 00 51 e3                                      cmp r1, #0
005ccef8  00 10 82 e5                                      str r1, [r2]
005ccefc  08 00 00 1a                                      bne #0x5ccf24
005ccf00  54 30 d2 e5                                      ldrb r3, [r2, #0x54]
005ccf04  00 00 53 e3                                      cmp r3, #0
005ccf08  09 30 94 07                                      ldreq r3, [r4, sb]
005ccf0c  50 10 92 05                                      ldreq r1, [r2, #0x50]
005ccf10  00 c0 93 05                                      ldreq ip, [r3]
005ccf14  00 c0 81 05                                      streq ip, [r1]
005ccf18  00 10 83 05                                      streq r1, [r3]
005ccf1c  50 b0 82 e5                                      str fp, [r2, #0x50]
005ccf20  e2 04 f5 eb                                      bl #0x30e2b0
005ccf24  01 70 57 e2                                      subs r7, r7, #1
005ccf28  e3 ff ff 1a                                      bne #0x5ccebc
005ccf2c  01 00 a0 e3                                      mov r0, #1
005ccf30  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
005ccf34  5c 7c 3c 00 a4 2c 00 00 c0 3c 00 00              .byte 0x5c, 0x7c, 0x3c, 0x00, 0xa4, 0x2c, 0x00, 0x00, 0xc0, 0x3c, 0x00, 0x00

; FUNCTION 0x005cd0d8, declared_size=272, range_size=272, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<boost::intrusive_ptr<glitch::video::CLight> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15getParameterCvtIN5boost13intrusive_ptrINS0_6CLightEEEEENS8_9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPSE_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<boost::intrusive_ptr<glitch::video::CLight> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::getParameterCvt<boost::intrusive_ptr<glitch::video::CLight> >(unsigned short, boost::intrusive_ptr<glitch::video::CLight>*, int) const
; decoder-mode: arm
005cd0d8  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
005cd0dc  04 c0 90 e5                                      ldr ip, [r0, #4]
005cd0e0  f4 40 9f e5                                      ldr r4, [pc, #0xf4]
005cd0e4  02 50 a0 e1                                      mov r5, r2
005cd0e8  be 60 dc e1                                      ldrh r6, [ip, #0xe]
005cd0ec  04 40 8f e0                                      add r4, pc, r4
005cd0f0  03 80 a0 e1                                      mov r8, r3
005cd0f4  01 00 56 e1                                      cmp r6, r1
005cd0f8  0f 00 00 9a                                      bls #0x5cd13c
005cd0fc  20 30 9c e5                                      ldr r3, [ip, #0x20]
005cd100  01 12 93 e0                                      adds r1, r3, r1, lsl #4
005cd104  0c 00 00 0a                                      beq #0x5cd13c
005cd108  d0 20 9f e5                                      ldr r2, [pc, #0xd0]
005cd10c  06 30 d1 e5                                      ldrb r3, [r1, #6]
005cd110  02 20 94 e7                                      ldr r2, [r4, r2]
005cd114  03 21 92 e7                                      ldr r2, [r2, r3, lsl #2]
005cd118  01 07 12 e3                                      tst r2, #0x40000
005cd11c  06 00 00 0a                                      beq #0x5cd13c
005cd120  00 00 58 e3                                      cmp r8, #0
005cd124  02 00 00 0a                                      beq #0x5cd134
005cd128  12 00 53 e3                                      cmp r3, #0x12
005cd12c  0c 30 91 e5                                      ldr r3, [r1, #0xc]
005cd130  03 00 00 0a                                      beq #0x5cd144
005cd134  01 00 a0 e3                                      mov r0, #1
005cd138  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
005cd13c  00 00 a0 e3                                      mov r0, #0
005cd140  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
005cd144  08 60 91 e5                                      ldr r6, [r1, #8]
005cd148  00 00 56 e3                                      cmp r6, #0
005cd14c  f8 ff ff 0a                                      beq #0x5cd134
005cd150  8c 90 9f e5                                      ldr sb, [pc, #0x8c]
005cd154  20 00 80 e2                                      add r0, r0, #0x20
005cd158  00 70 a0 e3                                      mov r7, #0
005cd15c  03 a0 80 e0                                      add sl, r0, r3
005cd160  07 b0 a0 e1                                      mov fp, r7
005cd164  07 30 9a e7                                      ldr r3, [sl, r7]
005cd168  04 70 87 e2                                      add r7, r7, #4
005cd16c  00 00 53 e3                                      cmp r3, #0
005cd170  00 20 93 15                                      ldrne r2, [r3]
005cd174  01 20 82 12                                      addne r2, r2, #1
005cd178  00 20 83 15                                      strne r2, [r3]
005cd17c  00 20 95 e5                                      ldr r2, [r5]
005cd180  00 30 85 e5                                      str r3, [r5]
005cd184  08 50 85 e0                                      add r5, r5, r8
005cd188  00 00 52 e3                                      cmp r2, #0
005cd18c  02 00 a0 e1                                      mov r0, r2
005cd190  0d 00 00 0a                                      beq #0x5cd1cc
005cd194  00 10 92 e5                                      ldr r1, [r2]
005cd198  01 10 41 e2                                      sub r1, r1, #1
005cd19c  00 00 51 e3                                      cmp r1, #0
005cd1a0  00 10 82 e5                                      str r1, [r2]
005cd1a4  08 00 00 1a                                      bne #0x5cd1cc
005cd1a8  54 30 d2 e5                                      ldrb r3, [r2, #0x54]
005cd1ac  00 00 53 e3                                      cmp r3, #0
005cd1b0  09 30 94 07                                      ldreq r3, [r4, sb]
005cd1b4  50 10 92 05                                      ldreq r1, [r2, #0x50]
005cd1b8  00 c0 93 05                                      ldreq ip, [r3]
005cd1bc  00 c0 81 05                                      streq ip, [r1]
005cd1c0  00 10 83 05                                      streq r1, [r3]
005cd1c4  50 b0 82 e5                                      str fp, [r2, #0x50]
005cd1c8  38 04 f5 eb                                      bl #0x30e2b0
005cd1cc  01 60 56 e2                                      subs r6, r6, #1
005cd1d0  e3 ff ff 1a                                      bne #0x5cd164
005cd1d4  01 00 a0 e3                                      mov r0, #1
005cd1d8  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
005cd1dc  a4 79 3c 00 a4 2c 00 00 c0 3c 00 00              .byte 0xa4, 0x79, 0x3c, 0x00, 0xa4, 0x2c, 0x00, 0x00, 0xc0, 0x3c, 0x00, 0x00

; FUNCTION 0x005ce95c, declared_size=236, range_size=236, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<boost::intrusive_ptr<glitch::video::CLight> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE12setParameterIN5boost13intrusive_ptrINS0_6CLightEEEEENS8_9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<boost::intrusive_ptr<glitch::video::CLight> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::setParameter<boost::intrusive_ptr<glitch::video::CLight> >(unsigned short, unsigned int, boost::intrusive_ptr<glitch::video::CLight> const&)
; decoder-mode: arm
005ce95c  70 40 2d e9                                      push {r4, r5, r6, lr}
005ce960  04 40 90 e5                                      ldr r4, [r0, #4]
005ce964  d4 c0 9f e5                                      ldr ip, [pc, #0xd4]
005ce968  be 50 d4 e1                                      ldrh r5, [r4, #0xe]
005ce96c  0c c0 8f e0                                      add ip, pc, ip
005ce970  01 00 55 e1                                      cmp r5, r1
005ce974  05 00 00 9a                                      bls #0x5ce990
005ce978  20 40 94 e5                                      ldr r4, [r4, #0x20]
005ce97c  01 12 94 e0                                      adds r1, r4, r1, lsl #4
005ce980  02 00 00 0a                                      beq #0x5ce990
005ce984  06 40 d1 e5                                      ldrb r4, [r1, #6]
005ce988  12 00 54 e3                                      cmp r4, #0x12
005ce98c  01 00 00 0a                                      beq #0x5ce998
005ce990  00 00 a0 e3                                      mov r0, #0
005ce994  70 80 bd e8                                      pop {r4, r5, r6, pc}
005ce998  08 40 91 e5                                      ldr r4, [r1, #8]
005ce99c  04 00 52 e1                                      cmp r2, r4
005ce9a0  fa ff ff 2a                                      bhs #0x5ce990
005ce9a4  0c 10 91 e5                                      ldr r1, [r1, #0xc]
005ce9a8  20 40 80 e2                                      add r4, r0, #0x20
005ce9ac  00 50 93 e5                                      ldr r5, [r3]
005ce9b0  02 21 81 e0                                      add r2, r1, r2, lsl #2
005ce9b4  02 10 94 e7                                      ldr r1, [r4, r2]
005ce9b8  05 00 51 e1                                      cmp r1, r5
005ce9bc  00 10 e0 13                                      mvnne r1, #0
005ce9c0  0c 10 80 15                                      strne r1, [r0, #0xc]
005ce9c4  10 10 80 15                                      strne r1, [r0, #0x10]
005ce9c8  00 10 93 15                                      ldrne r1, [r3]
005ce9cc  00 00 51 e3                                      cmp r1, #0
005ce9d0  00 30 91 15                                      ldrne r3, [r1]
005ce9d4  01 30 83 12                                      addne r3, r3, #1
005ce9d8  00 30 81 15                                      strne r3, [r1]
005ce9dc  02 00 94 e7                                      ldr r0, [r4, r2]
005ce9e0  02 10 84 e7                                      str r1, [r4, r2]
005ce9e4  00 00 50 e3                                      cmp r0, #0
005ce9e8  12 00 00 0a                                      beq #0x5cea38
005ce9ec  00 30 90 e5                                      ldr r3, [r0]
005ce9f0  01 30 43 e2                                      sub r3, r3, #1
005ce9f4  00 00 53 e3                                      cmp r3, #0
005ce9f8  00 30 80 e5                                      str r3, [r0]
005ce9fc  0d 00 00 1a                                      bne #0x5cea38
005cea00  54 30 d0 e5                                      ldrb r3, [r0, #0x54]
005cea04  00 00 53 e3                                      cmp r3, #0
005cea08  05 00 00 1a                                      bne #0x5cea24
005cea0c  30 30 9f e5                                      ldr r3, [pc, #0x30]
005cea10  50 20 90 e5                                      ldr r2, [r0, #0x50]
005cea14  03 30 9c e7                                      ldr r3, [ip, r3]
005cea18  00 10 93 e5                                      ldr r1, [r3]
005cea1c  00 10 82 e5                                      str r1, [r2]
005cea20  00 20 83 e5                                      str r2, [r3]
005cea24  00 30 a0 e3                                      mov r3, #0
005cea28  50 30 80 e5                                      str r3, [r0, #0x50]
005cea2c  1f fe f4 eb                                      bl #0x30e2b0
005cea30  01 00 a0 e3                                      mov r0, #1
005cea34  70 80 bd e8                                      pop {r4, r5, r6, pc}
005cea38  01 00 a0 e3                                      mov r0, #1
005cea3c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005cea40  24 61 3c 00 c0 3c 00 00                          .byte 0x24, 0x61, 0x3c, 0x00, 0xc0, 0x3c, 0x00, 0x00

; FUNCTION 0x005ceae0, declared_size=212, range_size=212, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<boost::intrusive_ptr<glitch::video::CLight> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE12getParameterIN5boost13intrusive_ptrINS0_6CLightEEEEENS8_9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRSE_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<boost::intrusive_ptr<glitch::video::CLight> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::getParameter<boost::intrusive_ptr<glitch::video::CLight> >(unsigned short, unsigned int, boost::intrusive_ptr<glitch::video::CLight>&) const
; decoder-mode: arm
005ceae0  70 40 2d e9                                      push {r4, r5, r6, lr}
005ceae4  04 40 90 e5                                      ldr r4, [r0, #4]
005ceae8  bc c0 9f e5                                      ldr ip, [pc, #0xbc]
005ceaec  be 50 d4 e1                                      ldrh r5, [r4, #0xe]
005ceaf0  0c c0 8f e0                                      add ip, pc, ip
005ceaf4  01 00 55 e1                                      cmp r5, r1
005ceaf8  05 00 00 9a                                      bls #0x5ceb14
005ceafc  20 40 94 e5                                      ldr r4, [r4, #0x20]
005ceb00  01 12 94 e0                                      adds r1, r4, r1, lsl #4
005ceb04  02 00 00 0a                                      beq #0x5ceb14
005ceb08  06 40 d1 e5                                      ldrb r4, [r1, #6]
005ceb0c  12 00 54 e3                                      cmp r4, #0x12
005ceb10  01 00 00 0a                                      beq #0x5ceb1c
005ceb14  00 00 a0 e3                                      mov r0, #0
005ceb18  70 80 bd e8                                      pop {r4, r5, r6, pc}
005ceb1c  08 40 91 e5                                      ldr r4, [r1, #8]
005ceb20  04 00 52 e1                                      cmp r2, r4
005ceb24  fa ff ff 2a                                      bhs #0x5ceb14
005ceb28  0c 10 91 e5                                      ldr r1, [r1, #0xc]
005ceb2c  02 21 80 e0                                      add r2, r0, r2, lsl #2
005ceb30  01 20 82 e0                                      add r2, r2, r1
005ceb34  20 20 92 e5                                      ldr r2, [r2, #0x20]
005ceb38  00 00 52 e3                                      cmp r2, #0
005ceb3c  00 10 92 15                                      ldrne r1, [r2]
005ceb40  01 10 81 12                                      addne r1, r1, #1
005ceb44  00 10 82 15                                      strne r1, [r2]
005ceb48  00 00 93 e5                                      ldr r0, [r3]
005ceb4c  00 20 83 e5                                      str r2, [r3]
005ceb50  00 00 50 e3                                      cmp r0, #0
005ceb54  12 00 00 0a                                      beq #0x5ceba4
005ceb58  00 30 90 e5                                      ldr r3, [r0]
005ceb5c  01 30 43 e2                                      sub r3, r3, #1
005ceb60  00 00 53 e3                                      cmp r3, #0
005ceb64  00 30 80 e5                                      str r3, [r0]
005ceb68  0d 00 00 1a                                      bne #0x5ceba4
005ceb6c  54 30 d0 e5                                      ldrb r3, [r0, #0x54]
005ceb70  00 00 53 e3                                      cmp r3, #0
005ceb74  05 00 00 1a                                      bne #0x5ceb90
005ceb78  30 30 9f e5                                      ldr r3, [pc, #0x30]
005ceb7c  50 20 90 e5                                      ldr r2, [r0, #0x50]
005ceb80  03 30 9c e7                                      ldr r3, [ip, r3]
005ceb84  00 10 93 e5                                      ldr r1, [r3]
005ceb88  00 10 82 e5                                      str r1, [r2]
005ceb8c  00 20 83 e5                                      str r2, [r3]
005ceb90  00 30 a0 e3                                      mov r3, #0
005ceb94  50 30 80 e5                                      str r3, [r0, #0x50]
005ceb98  c4 fd f4 eb                                      bl #0x30e2b0
005ceb9c  01 00 a0 e3                                      mov r0, #1
005ceba0  70 80 bd e8                                      pop {r4, r5, r6, pc}
005ceba4  01 00 a0 e3                                      mov r0, #1
005ceba8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005cebac  a0 5f 3c 00 c0 3c 00 00                          .byte 0xa0, 0x5f, 0x3c, 0x00, 0xc0, 0x3c, 0x00, 0x00

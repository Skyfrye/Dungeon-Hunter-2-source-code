; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005d4f34, declared_size=208, range_size=208, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<boost::intrusive_ptr<glitch::video::CLight> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE12setParameterIN5boost13intrusive_ptrINS0_6CLightEEEEENS8_9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<boost::intrusive_ptr<glitch::video::CLight> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::setParameter<boost::intrusive_ptr<glitch::video::CLight> >(unsigned short, unsigned int, boost::intrusive_ptr<glitch::video::CLight> const&)
; decoder-mode: arm
005d4f34  10 40 2d e9                                      push {r4, lr}
005d4f38  be 40 d0 e1                                      ldrh r4, [r0, #0xe]
005d4f3c  b8 c0 9f e5                                      ldr ip, [pc, #0xb8]
005d4f40  01 00 54 e1                                      cmp r4, r1
005d4f44  0c c0 8f e0                                      add ip, pc, ip
005d4f48  05 00 00 9a                                      bls #0x5d4f64
005d4f4c  20 40 90 e5                                      ldr r4, [r0, #0x20]
005d4f50  01 12 94 e0                                      adds r1, r4, r1, lsl #4
005d4f54  02 00 00 0a                                      beq #0x5d4f64
005d4f58  06 40 d1 e5                                      ldrb r4, [r1, #6]
005d4f5c  12 00 54 e3                                      cmp r4, #0x12
005d4f60  01 00 00 0a                                      beq #0x5d4f6c
005d4f64  00 00 a0 e3                                      mov r0, #0
005d4f68  10 80 bd e8                                      pop {r4, pc}
005d4f6c  08 40 91 e5                                      ldr r4, [r1, #8]
005d4f70  04 00 52 e1                                      cmp r2, r4
005d4f74  fa ff ff 2a                                      bhs #0x5d4f64
005d4f78  00 30 93 e5                                      ldr r3, [r3]
005d4f7c  0c 40 91 e5                                      ldr r4, [r1, #0xc]
005d4f80  24 10 90 e5                                      ldr r1, [r0, #0x24]
005d4f84  00 00 53 e3                                      cmp r3, #0
005d4f88  00 00 93 15                                      ldrne r0, [r3]
005d4f8c  02 21 84 e0                                      add r2, r4, r2, lsl #2
005d4f90  01 00 80 12                                      addne r0, r0, #1
005d4f94  00 00 83 15                                      strne r0, [r3]
005d4f98  02 00 91 e7                                      ldr r0, [r1, r2]
005d4f9c  02 30 81 e7                                      str r3, [r1, r2]
005d4fa0  00 00 50 e3                                      cmp r0, #0
005d4fa4  12 00 00 0a                                      beq #0x5d4ff4
005d4fa8  00 30 90 e5                                      ldr r3, [r0]
005d4fac  01 30 43 e2                                      sub r3, r3, #1
005d4fb0  00 00 53 e3                                      cmp r3, #0
005d4fb4  00 30 80 e5                                      str r3, [r0]
005d4fb8  0d 00 00 1a                                      bne #0x5d4ff4
005d4fbc  54 30 d0 e5                                      ldrb r3, [r0, #0x54]
005d4fc0  00 00 53 e3                                      cmp r3, #0
005d4fc4  05 00 00 1a                                      bne #0x5d4fe0
005d4fc8  30 30 9f e5                                      ldr r3, [pc, #0x30]
005d4fcc  50 20 90 e5                                      ldr r2, [r0, #0x50]
005d4fd0  03 30 9c e7                                      ldr r3, [ip, r3]
005d4fd4  00 10 93 e5                                      ldr r1, [r3]
005d4fd8  00 10 82 e5                                      str r1, [r2]
005d4fdc  00 20 83 e5                                      str r2, [r3]
005d4fe0  00 30 a0 e3                                      mov r3, #0
005d4fe4  50 30 80 e5                                      str r3, [r0, #0x50]
005d4fe8  b0 e4 f4 eb                                      bl #0x30e2b0
005d4fec  01 00 a0 e3                                      mov r0, #1
005d4ff0  10 80 bd e8                                      pop {r4, pc}
005d4ff4  01 00 a0 e3                                      mov r0, #1
005d4ff8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
005d4ffc  4c fb 3b 00 c0 3c 00 00                          .byte 0x4c, 0xfb, 0x3b, 0x00, 0xc0, 0x3c, 0x00, 0x00

; FUNCTION 0x005d5004, declared_size=236, range_size=236, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<boost::intrusive_ptr<glitch::video::CLight> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE12setParameterIN5boost13intrusive_ptrINS0_6CLightEEEEENS8_9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPKSE_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<boost::intrusive_ptr<glitch::video::CLight> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::setParameter<boost::intrusive_ptr<glitch::video::CLight> >(unsigned short, boost::intrusive_ptr<glitch::video::CLight> const*, int)
; decoder-mode: arm
005d5004  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
005d5008  be c0 d0 e1                                      ldrh ip, [r0, #0xe]
005d500c  d4 40 9f e5                                      ldr r4, [pc, #0xd4]
005d5010  02 50 a0 e1                                      mov r5, r2
005d5014  01 00 5c e1                                      cmp ip, r1
005d5018  04 40 8f e0                                      add r4, pc, r4
005d501c  05 00 00 9a                                      bls #0x5d5038
005d5020  20 20 90 e5                                      ldr r2, [r0, #0x20]
005d5024  01 12 92 e0                                      adds r1, r2, r1, lsl #4
005d5028  02 00 00 0a                                      beq #0x5d5038
005d502c  06 20 d1 e5                                      ldrb r2, [r1, #6]
005d5030  12 00 52 e3                                      cmp r2, #0x12
005d5034  01 00 00 0a                                      beq #0x5d5040
005d5038  00 00 a0 e3                                      mov r0, #0
005d503c  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
005d5040  08 70 91 e5                                      ldr r7, [r1, #8]
005d5044  00 00 53 e3                                      cmp r3, #0
005d5048  03 a0 a0 11                                      movne sl, r3
005d504c  04 a0 a0 03                                      moveq sl, #4
005d5050  00 00 57 e3                                      cmp r7, #0
005d5054  24 80 90 e5                                      ldr r8, [r0, #0x24]
005d5058  0c 30 91 e5                                      ldr r3, [r1, #0xc]
005d505c  1f 00 00 0a                                      beq #0x5d50e0
005d5060  84 b0 9f e5                                      ldr fp, [pc, #0x84]
005d5064  00 60 a0 e3                                      mov r6, #0
005d5068  03 80 88 e0                                      add r8, r8, r3
005d506c  06 90 a0 e1                                      mov sb, r6
005d5070  00 30 95 e5                                      ldr r3, [r5]
005d5074  0a 50 85 e0                                      add r5, r5, sl
005d5078  00 00 53 e3                                      cmp r3, #0
005d507c  00 20 93 15                                      ldrne r2, [r3]
005d5080  01 20 82 12                                      addne r2, r2, #1
005d5084  00 20 83 15                                      strne r2, [r3]
005d5088  06 20 98 e7                                      ldr r2, [r8, r6]
005d508c  06 30 88 e7                                      str r3, [r8, r6]
005d5090  04 60 86 e2                                      add r6, r6, #4
005d5094  00 00 52 e3                                      cmp r2, #0
005d5098  02 00 a0 e1                                      mov r0, r2
005d509c  0d 00 00 0a                                      beq #0x5d50d8
005d50a0  00 10 92 e5                                      ldr r1, [r2]
005d50a4  01 10 41 e2                                      sub r1, r1, #1
005d50a8  00 00 51 e3                                      cmp r1, #0
005d50ac  00 10 82 e5                                      str r1, [r2]
005d50b0  08 00 00 1a                                      bne #0x5d50d8
005d50b4  54 30 d2 e5                                      ldrb r3, [r2, #0x54]
005d50b8  00 00 53 e3                                      cmp r3, #0
005d50bc  0b 30 94 07                                      ldreq r3, [r4, fp]
005d50c0  50 10 92 05                                      ldreq r1, [r2, #0x50]
005d50c4  00 c0 93 05                                      ldreq ip, [r3]
005d50c8  00 c0 81 05                                      streq ip, [r1]
005d50cc  00 10 83 05                                      streq r1, [r3]
005d50d0  50 90 82 e5                                      str sb, [r2, #0x50]
005d50d4  75 e4 f4 eb                                      bl #0x30e2b0
005d50d8  01 70 57 e2                                      subs r7, r7, #1
005d50dc  e3 ff ff 1a                                      bne #0x5d5070
005d50e0  01 00 a0 e3                                      mov r0, #1
005d50e4  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
005d50e8  78 fa 3b 00 c0 3c 00 00                          .byte 0x78, 0xfa, 0x3b, 0x00, 0xc0, 0x3c, 0x00, 0x00

; FUNCTION 0x005d50f0, declared_size=132, range_size=132, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<boost::intrusive_ptr<glitch::video::CLight> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE15getParameterCvtIN5boost13intrusive_ptrINS0_6CLightEEEEENS8_9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRSE_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<boost::intrusive_ptr<glitch::video::CLight> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::getParameterCvt<boost::intrusive_ptr<glitch::video::CLight> >(unsigned short, unsigned int, boost::intrusive_ptr<glitch::video::CLight>&) const
; decoder-mode: arm
005d50f0  70 40 2d e9                                      push {r4, r5, r6, lr}
005d50f4  be 40 d0 e1                                      ldrh r4, [r0, #0xe]
005d50f8  6c c0 9f e5                                      ldr ip, [pc, #0x6c]
005d50fc  01 00 54 e1                                      cmp r4, r1
005d5100  0c c0 8f e0                                      add ip, pc, ip
005d5104  11 00 00 9a                                      bls #0x5d5150
005d5108  20 40 90 e5                                      ldr r4, [r0, #0x20]
005d510c  01 12 94 e0                                      adds r1, r4, r1, lsl #4
005d5110  0e 00 00 0a                                      beq #0x5d5150
005d5114  54 50 9f e5                                      ldr r5, [pc, #0x54]
005d5118  06 40 d1 e5                                      ldrb r4, [r1, #6]
005d511c  05 c0 9c e7                                      ldr ip, [ip, r5]
005d5120  04 c1 9c e7                                      ldr ip, [ip, r4, lsl #2]
005d5124  01 07 1c e3                                      tst ip, #0x40000
005d5128  08 00 00 0a                                      beq #0x5d5150
005d512c  08 c0 91 e5                                      ldr ip, [r1, #8]
005d5130  0c 00 52 e1                                      cmp r2, ip
005d5134  05 00 00 2a                                      bhs #0x5d5150
005d5138  12 00 54 e3                                      cmp r4, #0x12
005d513c  24 00 90 e5                                      ldr r0, [r0, #0x24]
005d5140  0c 20 91 e5                                      ldr r2, [r1, #0xc]
005d5144  03 00 00 0a                                      beq #0x5d5158
005d5148  01 00 a0 e3                                      mov r0, #1
005d514c  70 80 bd e8                                      pop {r4, r5, r6, pc}
005d5150  00 00 a0 e3                                      mov r0, #0
005d5154  70 80 bd e8                                      pop {r4, r5, r6, pc}
005d5158  02 10 80 e0                                      add r1, r0, r2
005d515c  03 00 a0 e1                                      mov r0, r3
005d5160  3a 99 ff eb                                      bl #0x5bb650
005d5164  01 00 a0 e3                                      mov r0, #1
005d5168  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005d516c  90 f9 3b 00 a4 2c 00 00                          .byte 0x90, 0xf9, 0x3b, 0x00, 0xa4, 0x2c, 0x00, 0x00

; FUNCTION 0x005d5174, declared_size=132, range_size=132, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<boost::intrusive_ptr<glitch::video::CLight> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtIN5boost13intrusive_ptrINS0_6CLightEEEEENS8_9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<boost::intrusive_ptr<glitch::video::CLight> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::setParameterCvt<boost::intrusive_ptr<glitch::video::CLight> >(unsigned short, unsigned int, boost::intrusive_ptr<glitch::video::CLight> const&)
; decoder-mode: arm
005d5174  70 40 2d e9                                      push {r4, r5, r6, lr}
005d5178  be 40 d0 e1                                      ldrh r4, [r0, #0xe]
005d517c  6c c0 9f e5                                      ldr ip, [pc, #0x6c]
005d5180  01 00 54 e1                                      cmp r4, r1
005d5184  0c c0 8f e0                                      add ip, pc, ip
005d5188  11 00 00 9a                                      bls #0x5d51d4
005d518c  20 40 90 e5                                      ldr r4, [r0, #0x20]
005d5190  01 12 94 e0                                      adds r1, r4, r1, lsl #4
005d5194  0e 00 00 0a                                      beq #0x5d51d4
005d5198  54 50 9f e5                                      ldr r5, [pc, #0x54]
005d519c  06 40 d1 e5                                      ldrb r4, [r1, #6]
005d51a0  05 c0 9c e7                                      ldr ip, [ip, r5]
005d51a4  04 c1 9c e7                                      ldr ip, [ip, r4, lsl #2]
005d51a8  01 07 1c e3                                      tst ip, #0x40000
005d51ac  08 00 00 0a                                      beq #0x5d51d4
005d51b0  08 c0 91 e5                                      ldr ip, [r1, #8]
005d51b4  0c 00 52 e1                                      cmp r2, ip
005d51b8  05 00 00 2a                                      bhs #0x5d51d4
005d51bc  12 00 54 e3                                      cmp r4, #0x12
005d51c0  24 00 90 e5                                      ldr r0, [r0, #0x24]
005d51c4  0c 20 91 e5                                      ldr r2, [r1, #0xc]
005d51c8  03 00 00 0a                                      beq #0x5d51dc
005d51cc  01 00 a0 e3                                      mov r0, #1
005d51d0  70 80 bd e8                                      pop {r4, r5, r6, pc}
005d51d4  00 00 a0 e3                                      mov r0, #0
005d51d8  70 80 bd e8                                      pop {r4, r5, r6, pc}
005d51dc  02 00 80 e0                                      add r0, r0, r2
005d51e0  03 10 a0 e1                                      mov r1, r3
005d51e4  19 99 ff eb                                      bl #0x5bb650
005d51e8  01 00 a0 e3                                      mov r0, #1
005d51ec  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005d51f0  0c f9 3b 00 a4 2c 00 00                          .byte 0x0c, 0xf9, 0x3b, 0x00, 0xa4, 0x2c, 0x00, 0x00

; FUNCTION 0x005d5378, declared_size=280, range_size=280, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<boost::intrusive_ptr<glitch::video::CLight> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE12getParameterIN5boost13intrusive_ptrINS0_6CLightEEEEENS8_9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPSE_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<boost::intrusive_ptr<glitch::video::CLight> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::getParameter<boost::intrusive_ptr<glitch::video::CLight> >(unsigned short, boost::intrusive_ptr<glitch::video::CLight>*, int) const
; decoder-mode: arm
005d5378  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
005d537c  be c0 d0 e1                                      ldrh ip, [r0, #0xe]
005d5380  00 41 9f e5                                      ldr r4, [pc, #0x100]
005d5384  02 50 a0 e1                                      mov r5, r2
005d5388  01 00 5c e1                                      cmp ip, r1
005d538c  04 40 8f e0                                      add r4, pc, r4
005d5390  03 80 a0 e1                                      mov r8, r3
005d5394  05 00 00 9a                                      bls #0x5d53b0
005d5398  20 30 90 e5                                      ldr r3, [r0, #0x20]
005d539c  01 12 93 e0                                      adds r1, r3, r1, lsl #4
005d53a0  02 00 00 0a                                      beq #0x5d53b0
005d53a4  06 30 d1 e5                                      ldrb r3, [r1, #6]
005d53a8  12 00 53 e3                                      cmp r3, #0x12
005d53ac  01 00 00 0a                                      beq #0x5d53b8
005d53b0  00 00 a0 e3                                      mov r0, #0
005d53b4  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
005d53b8  00 00 58 e3                                      cmp r8, #0
005d53bc  04 00 58 13                                      cmpne r8, #4
005d53c0  00 70 a0 13                                      movne r7, #0
005d53c4  01 70 a0 03                                      moveq r7, #1
005d53c8  25 00 00 0a                                      beq #0x5d5464
005d53cc  08 60 91 e5                                      ldr r6, [r1, #8]
005d53d0  24 a0 90 e5                                      ldr sl, [r0, #0x24]
005d53d4  0c 30 91 e5                                      ldr r3, [r1, #0xc]
005d53d8  00 00 56 e3                                      cmp r6, #0
005d53dc  1e 00 00 0a                                      beq #0x5d545c
005d53e0  a4 b0 9f e5                                      ldr fp, [pc, #0xa4]
005d53e4  03 a0 8a e0                                      add sl, sl, r3
005d53e8  07 90 a0 e1                                      mov sb, r7
005d53ec  07 30 9a e7                                      ldr r3, [sl, r7]
005d53f0  04 70 87 e2                                      add r7, r7, #4
005d53f4  00 00 53 e3                                      cmp r3, #0
005d53f8  00 20 93 15                                      ldrne r2, [r3]
005d53fc  01 20 82 12                                      addne r2, r2, #1
005d5400  00 20 83 15                                      strne r2, [r3]
005d5404  00 20 95 e5                                      ldr r2, [r5]
005d5408  00 30 85 e5                                      str r3, [r5]
005d540c  08 50 85 e0                                      add r5, r5, r8
005d5410  00 00 52 e3                                      cmp r2, #0
005d5414  02 00 a0 e1                                      mov r0, r2
005d5418  0d 00 00 0a                                      beq #0x5d5454
005d541c  00 10 92 e5                                      ldr r1, [r2]
005d5420  01 10 41 e2                                      sub r1, r1, #1
005d5424  00 00 51 e3                                      cmp r1, #0
005d5428  00 10 82 e5                                      str r1, [r2]
005d542c  08 00 00 1a                                      bne #0x5d5454
005d5430  54 30 d2 e5                                      ldrb r3, [r2, #0x54]
005d5434  00 00 53 e3                                      cmp r3, #0
005d5438  0b 30 94 07                                      ldreq r3, [r4, fp]
005d543c  50 10 92 05                                      ldreq r1, [r2, #0x50]
005d5440  00 c0 93 05                                      ldreq ip, [r3]
005d5444  00 c0 81 05                                      streq ip, [r1]
005d5448  00 10 83 05                                      streq r1, [r3]
005d544c  50 90 82 e5                                      str sb, [r2, #0x50]
005d5450  96 e3 f4 eb                                      bl #0x30e2b0
005d5454  01 60 56 e2                                      subs r6, r6, #1
005d5458  e3 ff ff 1a                                      bne #0x5d53ec
005d545c  01 00 a0 e3                                      mov r0, #1
005d5460  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
005d5464  24 c0 90 e5                                      ldr ip, [r0, #0x24]
005d5468  08 20 91 e5                                      ldr r2, [r1, #8]
005d546c  0c 30 91 e5                                      ldr r3, [r1, #0xc]
005d5470  05 00 a0 e1                                      mov r0, r5
005d5474  02 21 a0 e1                                      lsl r2, r2, #2
005d5478  03 10 8c e0                                      add r1, ip, r3
005d547c  f9 e4 f4 eb                                      bl #0x30e868
005d5480  01 00 a0 e3                                      mov r0, #1
005d5484  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
005d5488  04 f7 3b 00 c0 3c 00 00                          .byte 0x04, 0xf7, 0x3b, 0x00, 0xc0, 0x3c, 0x00, 0x00

; FUNCTION 0x005d55cc, declared_size=268, range_size=268, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<boost::intrusive_ptr<glitch::video::CLight> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE15getParameterCvtIN5boost13intrusive_ptrINS0_6CLightEEEEENS8_9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPSE_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<boost::intrusive_ptr<glitch::video::CLight> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::getParameterCvt<boost::intrusive_ptr<glitch::video::CLight> >(unsigned short, boost::intrusive_ptr<glitch::video::CLight>*, int) const
; decoder-mode: arm
005d55cc  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
005d55d0  be c0 d0 e1                                      ldrh ip, [r0, #0xe]
005d55d4  f0 40 9f e5                                      ldr r4, [pc, #0xf0]
005d55d8  02 50 a0 e1                                      mov r5, r2
005d55dc  01 00 5c e1                                      cmp ip, r1
005d55e0  04 40 8f e0                                      add r4, pc, r4
005d55e4  03 80 a0 e1                                      mov r8, r3
005d55e8  10 00 00 9a                                      bls #0x5d5630
005d55ec  20 30 90 e5                                      ldr r3, [r0, #0x20]
005d55f0  01 12 93 e0                                      adds r1, r3, r1, lsl #4
005d55f4  0d 00 00 0a                                      beq #0x5d5630
005d55f8  d0 20 9f e5                                      ldr r2, [pc, #0xd0]
005d55fc  06 30 d1 e5                                      ldrb r3, [r1, #6]
005d5600  02 20 94 e7                                      ldr r2, [r4, r2]
005d5604  03 21 92 e7                                      ldr r2, [r2, r3, lsl #2]
005d5608  01 07 12 e3                                      tst r2, #0x40000
005d560c  07 00 00 0a                                      beq #0x5d5630
005d5610  00 00 58 e3                                      cmp r8, #0
005d5614  03 00 00 0a                                      beq #0x5d5628
005d5618  12 00 53 e3                                      cmp r3, #0x12
005d561c  24 a0 90 e5                                      ldr sl, [r0, #0x24]
005d5620  0c 30 91 e5                                      ldr r3, [r1, #0xc]
005d5624  03 00 00 0a                                      beq #0x5d5638
005d5628  01 00 a0 e3                                      mov r0, #1
005d562c  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
005d5630  00 00 a0 e3                                      mov r0, #0
005d5634  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
005d5638  08 60 91 e5                                      ldr r6, [r1, #8]
005d563c  00 00 56 e3                                      cmp r6, #0
005d5640  f8 ff ff 0a                                      beq #0x5d5628
005d5644  88 b0 9f e5                                      ldr fp, [pc, #0x88]
005d5648  00 70 a0 e3                                      mov r7, #0
005d564c  03 a0 8a e0                                      add sl, sl, r3
005d5650  07 90 a0 e1                                      mov sb, r7
005d5654  07 30 9a e7                                      ldr r3, [sl, r7]
005d5658  04 70 87 e2                                      add r7, r7, #4
005d565c  00 00 53 e3                                      cmp r3, #0
005d5660  00 20 93 15                                      ldrne r2, [r3]
005d5664  01 20 82 12                                      addne r2, r2, #1
005d5668  00 20 83 15                                      strne r2, [r3]
005d566c  00 20 95 e5                                      ldr r2, [r5]
005d5670  00 30 85 e5                                      str r3, [r5]
005d5674  08 50 85 e0                                      add r5, r5, r8
005d5678  00 00 52 e3                                      cmp r2, #0
005d567c  02 00 a0 e1                                      mov r0, r2
005d5680  0d 00 00 0a                                      beq #0x5d56bc
005d5684  00 10 92 e5                                      ldr r1, [r2]
005d5688  01 10 41 e2                                      sub r1, r1, #1
005d568c  00 00 51 e3                                      cmp r1, #0
005d5690  00 10 82 e5                                      str r1, [r2]
005d5694  08 00 00 1a                                      bne #0x5d56bc
005d5698  54 30 d2 e5                                      ldrb r3, [r2, #0x54]
005d569c  00 00 53 e3                                      cmp r3, #0
005d56a0  0b 30 94 07                                      ldreq r3, [r4, fp]
005d56a4  50 10 92 05                                      ldreq r1, [r2, #0x50]
005d56a8  00 c0 93 05                                      ldreq ip, [r3]
005d56ac  00 c0 81 05                                      streq ip, [r1]
005d56b0  00 10 83 05                                      streq r1, [r3]
005d56b4  50 90 82 e5                                      str sb, [r2, #0x50]
005d56b8  fc e2 f4 eb                                      bl #0x30e2b0
005d56bc  01 60 56 e2                                      subs r6, r6, #1
005d56c0  e3 ff ff 1a                                      bne #0x5d5654
005d56c4  01 00 a0 e3                                      mov r0, #1
005d56c8  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
005d56cc  b0 f4 3b 00 a4 2c 00 00 c0 3c 00 00              .byte 0xb0, 0xf4, 0x3b, 0x00, 0xa4, 0x2c, 0x00, 0x00, 0xc0, 0x3c, 0x00, 0x00

; FUNCTION 0x005d56d8, declared_size=268, range_size=268, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<boost::intrusive_ptr<glitch::video::CLight> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtIN5boost13intrusive_ptrINS0_6CLightEEEEENS8_9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPKSE_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<boost::intrusive_ptr<glitch::video::CLight> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::setParameterCvt<boost::intrusive_ptr<glitch::video::CLight> >(unsigned short, boost::intrusive_ptr<glitch::video::CLight> const*, int)
; decoder-mode: arm
005d56d8  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
005d56dc  be c0 d0 e1                                      ldrh ip, [r0, #0xe]
005d56e0  f0 40 9f e5                                      ldr r4, [pc, #0xf0]
005d56e4  02 50 a0 e1                                      mov r5, r2
005d56e8  01 00 5c e1                                      cmp ip, r1
005d56ec  04 40 8f e0                                      add r4, pc, r4
005d56f0  03 a0 a0 e1                                      mov sl, r3
005d56f4  10 00 00 9a                                      bls #0x5d573c
005d56f8  20 30 90 e5                                      ldr r3, [r0, #0x20]
005d56fc  01 12 93 e0                                      adds r1, r3, r1, lsl #4
005d5700  0d 00 00 0a                                      beq #0x5d573c
005d5704  d0 20 9f e5                                      ldr r2, [pc, #0xd0]
005d5708  06 30 d1 e5                                      ldrb r3, [r1, #6]
005d570c  02 20 94 e7                                      ldr r2, [r4, r2]
005d5710  03 21 92 e7                                      ldr r2, [r2, r3, lsl #2]
005d5714  01 07 12 e3                                      tst r2, #0x40000
005d5718  07 00 00 0a                                      beq #0x5d573c
005d571c  00 00 5a e3                                      cmp sl, #0
005d5720  03 00 00 0a                                      beq #0x5d5734
005d5724  12 00 53 e3                                      cmp r3, #0x12
005d5728  24 80 90 e5                                      ldr r8, [r0, #0x24]
005d572c  0c 30 91 e5                                      ldr r3, [r1, #0xc]
005d5730  03 00 00 0a                                      beq #0x5d5744
005d5734  01 00 a0 e3                                      mov r0, #1
005d5738  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
005d573c  00 00 a0 e3                                      mov r0, #0
005d5740  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
005d5744  08 70 91 e5                                      ldr r7, [r1, #8]
005d5748  00 00 57 e3                                      cmp r7, #0
005d574c  f8 ff ff 0a                                      beq #0x5d5734
005d5750  88 b0 9f e5                                      ldr fp, [pc, #0x88]
005d5754  00 60 a0 e3                                      mov r6, #0
005d5758  03 80 88 e0                                      add r8, r8, r3
005d575c  06 90 a0 e1                                      mov sb, r6
005d5760  00 30 95 e5                                      ldr r3, [r5]
005d5764  0a 50 85 e0                                      add r5, r5, sl
005d5768  00 00 53 e3                                      cmp r3, #0
005d576c  00 20 93 15                                      ldrne r2, [r3]
005d5770  01 20 82 12                                      addne r2, r2, #1
005d5774  00 20 83 15                                      strne r2, [r3]
005d5778  06 20 98 e7                                      ldr r2, [r8, r6]
005d577c  06 30 88 e7                                      str r3, [r8, r6]
005d5780  04 60 86 e2                                      add r6, r6, #4
005d5784  00 00 52 e3                                      cmp r2, #0
005d5788  02 00 a0 e1                                      mov r0, r2
005d578c  0d 00 00 0a                                      beq #0x5d57c8
005d5790  00 10 92 e5                                      ldr r1, [r2]
005d5794  01 10 41 e2                                      sub r1, r1, #1
005d5798  00 00 51 e3                                      cmp r1, #0
005d579c  00 10 82 e5                                      str r1, [r2]
005d57a0  08 00 00 1a                                      bne #0x5d57c8
005d57a4  54 30 d2 e5                                      ldrb r3, [r2, #0x54]
005d57a8  00 00 53 e3                                      cmp r3, #0
005d57ac  0b 30 94 07                                      ldreq r3, [r4, fp]
005d57b0  50 10 92 05                                      ldreq r1, [r2, #0x50]
005d57b4  00 c0 93 05                                      ldreq ip, [r3]
005d57b8  00 c0 81 05                                      streq ip, [r1]
005d57bc  00 10 83 05                                      streq r1, [r3]
005d57c0  50 90 82 e5                                      str sb, [r2, #0x50]
005d57c4  b9 e2 f4 eb                                      bl #0x30e2b0
005d57c8  01 70 57 e2                                      subs r7, r7, #1
005d57cc  e3 ff ff 1a                                      bne #0x5d5760
005d57d0  01 00 a0 e3                                      mov r0, #1
005d57d4  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
005d57d8  a4 f3 3b 00 a4 2c 00 00 c0 3c 00 00              .byte 0xa4, 0xf3, 0x3b, 0x00, 0xa4, 0x2c, 0x00, 0x00, 0xc0, 0x3c, 0x00, 0x00

; FUNCTION 0x005d7578, declared_size=208, range_size=208, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<boost::intrusive_ptr<glitch::video::CLight> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE12getParameterIN5boost13intrusive_ptrINS0_6CLightEEEEENS8_9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRSE_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<boost::intrusive_ptr<glitch::video::CLight> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::getParameter<boost::intrusive_ptr<glitch::video::CLight> >(unsigned short, unsigned int, boost::intrusive_ptr<glitch::video::CLight>&) const
; decoder-mode: arm
005d7578  10 40 2d e9                                      push {r4, lr}
005d757c  be 40 d0 e1                                      ldrh r4, [r0, #0xe]
005d7580  b8 c0 9f e5                                      ldr ip, [pc, #0xb8]
005d7584  01 00 54 e1                                      cmp r4, r1
005d7588  0c c0 8f e0                                      add ip, pc, ip
005d758c  05 00 00 9a                                      bls #0x5d75a8
005d7590  20 40 90 e5                                      ldr r4, [r0, #0x20]
005d7594  01 12 94 e0                                      adds r1, r4, r1, lsl #4
005d7598  02 00 00 0a                                      beq #0x5d75a8
005d759c  06 40 d1 e5                                      ldrb r4, [r1, #6]
005d75a0  12 00 54 e3                                      cmp r4, #0x12
005d75a4  01 00 00 0a                                      beq #0x5d75b0
005d75a8  00 00 a0 e3                                      mov r0, #0
005d75ac  10 80 bd e8                                      pop {r4, pc}
005d75b0  08 40 91 e5                                      ldr r4, [r1, #8]
005d75b4  04 00 52 e1                                      cmp r2, r4
005d75b8  fa ff ff 2a                                      bhs #0x5d75a8
005d75bc  0c 40 91 e5                                      ldr r4, [r1, #0xc]
005d75c0  24 10 90 e5                                      ldr r1, [r0, #0x24]
005d75c4  02 21 84 e0                                      add r2, r4, r2, lsl #2
005d75c8  02 20 91 e7                                      ldr r2, [r1, r2]
005d75cc  00 00 52 e3                                      cmp r2, #0
005d75d0  00 10 92 15                                      ldrne r1, [r2]
005d75d4  01 10 81 12                                      addne r1, r1, #1
005d75d8  00 10 82 15                                      strne r1, [r2]
005d75dc  00 00 93 e5                                      ldr r0, [r3]
005d75e0  00 20 83 e5                                      str r2, [r3]
005d75e4  00 00 50 e3                                      cmp r0, #0
005d75e8  12 00 00 0a                                      beq #0x5d7638
005d75ec  00 30 90 e5                                      ldr r3, [r0]
005d75f0  01 30 43 e2                                      sub r3, r3, #1
005d75f4  00 00 53 e3                                      cmp r3, #0
005d75f8  00 30 80 e5                                      str r3, [r0]
005d75fc  0d 00 00 1a                                      bne #0x5d7638
005d7600  54 30 d0 e5                                      ldrb r3, [r0, #0x54]
005d7604  00 00 53 e3                                      cmp r3, #0
005d7608  05 00 00 1a                                      bne #0x5d7624
005d760c  30 30 9f e5                                      ldr r3, [pc, #0x30]
005d7610  50 20 90 e5                                      ldr r2, [r0, #0x50]
005d7614  03 30 9c e7                                      ldr r3, [ip, r3]
005d7618  00 10 93 e5                                      ldr r1, [r3]
005d761c  00 10 82 e5                                      str r1, [r2]
005d7620  00 20 83 e5                                      str r2, [r3]
005d7624  00 30 a0 e3                                      mov r3, #0
005d7628  50 30 80 e5                                      str r3, [r0, #0x50]
005d762c  1f db f4 eb                                      bl #0x30e2b0
005d7630  01 00 a0 e3                                      mov r0, #1
005d7634  10 80 bd e8                                      pop {r4, pc}
005d7638  01 00 a0 e3                                      mov r0, #1
005d763c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
005d7640  08 d5 3b 00 c0 3c 00 00                          .byte 0x08, 0xd5, 0x3b, 0x00, 0xc0, 0x3c, 0x00, 0x00

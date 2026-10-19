; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005d52ac, declared_size=204, range_size=204, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<boost::intrusive_ptr<glitch::video::ITexture> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE12getParameterIN5boost13intrusive_ptrINS0_8ITextureEEEEENS8_9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPSE_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<boost::intrusive_ptr<glitch::video::ITexture> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::getParameter<boost::intrusive_ptr<glitch::video::ITexture> >(unsigned short, boost::intrusive_ptr<glitch::video::ITexture>*, int) const
; decoder-mode: arm
005d52ac  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005d52b0  be c0 d0 e1                                      ldrh ip, [r0, #0xe]
005d52b4  02 40 a0 e1                                      mov r4, r2
005d52b8  03 70 a0 e1                                      mov r7, r3
005d52bc  01 00 5c e1                                      cmp ip, r1
005d52c0  21 00 00 9a                                      bls #0x5d534c
005d52c4  20 30 90 e5                                      ldr r3, [r0, #0x20]
005d52c8  01 12 93 e0                                      adds r1, r3, r1, lsl #4
005d52cc  1e 00 00 0a                                      beq #0x5d534c
005d52d0  06 30 d1 e5                                      ldrb r3, [r1, #6]
005d52d4  0c 30 43 e2                                      sub r3, r3, #0xc
005d52d8  03 00 53 e3                                      cmp r3, #3
005d52dc  1a 00 00 8a                                      bhi #0x5d534c
005d52e0  00 00 57 e3                                      cmp r7, #0
005d52e4  04 00 57 13                                      cmpne r7, #4
005d52e8  00 60 a0 13                                      movne r6, #0
005d52ec  01 60 a0 03                                      moveq r6, #1
005d52f0  17 00 00 0a                                      beq #0x5d5354
005d52f4  08 50 91 e5                                      ldr r5, [r1, #8]
005d52f8  24 80 90 e5                                      ldr r8, [r0, #0x24]
005d52fc  0c 30 91 e5                                      ldr r3, [r1, #0xc]
005d5300  00 00 55 e3                                      cmp r5, #0
005d5304  0e 00 00 0a                                      beq #0x5d5344
005d5308  03 80 88 e0                                      add r8, r8, r3
005d530c  06 30 98 e7                                      ldr r3, [r8, r6]
005d5310  04 60 86 e2                                      add r6, r6, #4
005d5314  00 00 53 e3                                      cmp r3, #0
005d5318  04 20 93 15                                      ldrne r2, [r3, #4]
005d531c  01 20 82 12                                      addne r2, r2, #1
005d5320  04 20 83 15                                      strne r2, [r3, #4]
005d5324  00 00 94 e5                                      ldr r0, [r4]
005d5328  00 30 84 e5                                      str r3, [r4]
005d532c  07 40 84 e0                                      add r4, r4, r7
005d5330  00 00 50 e3                                      cmp r0, #0
005d5334  00 00 00 0a                                      beq #0x5d533c
005d5338  91 20 f5 eb                                      bl #0x31d584
005d533c  01 50 55 e2                                      subs r5, r5, #1
005d5340  f1 ff ff 1a                                      bne #0x5d530c
005d5344  01 00 a0 e3                                      mov r0, #1
005d5348  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005d534c  00 00 a0 e3                                      mov r0, #0
005d5350  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005d5354  24 c0 90 e5                                      ldr ip, [r0, #0x24]
005d5358  08 20 91 e5                                      ldr r2, [r1, #8]
005d535c  0c 30 91 e5                                      ldr r3, [r1, #0xc]
005d5360  04 00 a0 e1                                      mov r0, r4
005d5364  02 21 a0 e1                                      lsl r2, r2, #2
005d5368  03 10 8c e0                                      add r1, ip, r3
005d536c  3d e5 f4 eb                                      bl #0x30e868
005d5370  01 00 a0 e3                                      mov r0, #1
005d5374  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x005d57e4, declared_size=124, range_size=124, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<boost::intrusive_ptr<glitch::video::ITexture> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtIN5boost13intrusive_ptrINS0_8ITextureEEEEENS8_9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPKSE_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<boost::intrusive_ptr<glitch::video::ITexture> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::setParameterCvt<boost::intrusive_ptr<glitch::video::ITexture> >(unsigned short, boost::intrusive_ptr<glitch::video::ITexture> const*, int)
; decoder-mode: arm
005d57e4  10 40 2d e9                                      push {r4, lr}
005d57e8  be c0 d0 e1                                      ldrh ip, [r0, #0xe]
005d57ec  01 00 5c e1                                      cmp ip, r1
005d57f0  12 00 00 9a                                      bls #0x5d5840
005d57f4  20 40 90 e5                                      ldr r4, [r0, #0x20]
005d57f8  01 42 94 e0                                      adds r4, r4, r1, lsl #4
005d57fc  0f 00 00 0a                                      beq #0x5d5840
005d5800  06 c0 d4 e5                                      ldrb ip, [r4, #6]
005d5804  0c c0 4c e2                                      sub ip, ip, #0xc
005d5808  03 00 5c e3                                      cmp ip, #3
005d580c  0b 00 00 8a                                      bhi #0x5d5840
005d5810  00 00 53 e3                                      cmp r3, #0
005d5814  0f 00 00 0a                                      beq #0x5d5858
005d5818  24 00 90 e5                                      ldr r0, [r0, #0x24]
005d581c  0c 10 94 e5                                      ldr r1, [r4, #0xc]
005d5820  01 10 80 e0                                      add r1, r0, r1
005d5824  03 00 5c e3                                      cmp ip, #3
005d5828  0c f1 8f 90                                      addls pc, pc, ip, lsl #2
005d582c  09 00 00 ea                                      b #0x5d5858
005d5830  04 00 00 ea                                      b #0x5d5848
005d5834  03 00 00 ea                                      b #0x5d5848
005d5838  02 00 00 ea                                      b #0x5d5848
005d583c  01 00 00 ea                                      b #0x5d5848
005d5840  00 00 a0 e3                                      mov r0, #0
005d5844  10 80 bd e8                                      pop {r4, pc}
005d5848  04 00 a0 e1                                      mov r0, r4
005d584c  e6 97 ff eb                                      bl #0x5bb7ec
005d5850  01 00 a0 e3                                      mov r0, #1
005d5854  10 80 bd e8                                      pop {r4, pc}
005d5858  01 00 a0 e3                                      mov r0, #1
005d585c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005d599c, declared_size=88, range_size=88, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<boost::intrusive_ptr<glitch::video::ITexture> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE12setParameterIN5boost13intrusive_ptrINS0_8ITextureEEEEENS8_9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPKSE_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<boost::intrusive_ptr<glitch::video::ITexture> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::setParameter<boost::intrusive_ptr<glitch::video::ITexture> >(unsigned short, boost::intrusive_ptr<glitch::video::ITexture> const*, int)
; decoder-mode: arm
005d599c  10 40 2d e9                                      push {r4, lr}
005d59a0  be c0 d0 e1                                      ldrh ip, [r0, #0xe]
005d59a4  01 00 5c e1                                      cmp ip, r1
005d59a8  01 00 00 8a                                      bhi #0x5d59b4
005d59ac  00 00 a0 e3                                      mov r0, #0
005d59b0  10 80 bd e8                                      pop {r4, pc}
005d59b4  20 c0 90 e5                                      ldr ip, [r0, #0x20]
005d59b8  01 c2 9c e0                                      adds ip, ip, r1, lsl #4
005d59bc  fa ff ff 0a                                      beq #0x5d59ac
005d59c0  06 10 dc e5                                      ldrb r1, [ip, #6]
005d59c4  0c 10 41 e2                                      sub r1, r1, #0xc
005d59c8  03 00 51 e3                                      cmp r1, #3
005d59cc  f6 ff ff 8a                                      bhi #0x5d59ac
005d59d0  24 e0 90 e5                                      ldr lr, [r0, #0x24]
005d59d4  0c 10 9c e5                                      ldr r1, [ip, #0xc]
005d59d8  00 00 53 e3                                      cmp r3, #0
005d59dc  0c 00 a0 e1                                      mov r0, ip
005d59e0  04 30 a0 03                                      moveq r3, #4
005d59e4  01 10 8e e0                                      add r1, lr, r1
005d59e8  7f 97 ff eb                                      bl #0x5bb7ec
005d59ec  01 00 a0 e3                                      mov r0, #1
005d59f0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005d5da4, declared_size=416, range_size=416, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<boost::intrusive_ptr<glitch::video::ITexture> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE15getParameterCvtIN5boost13intrusive_ptrINS0_8ITextureEEEEENS8_9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPSE_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<boost::intrusive_ptr<glitch::video::ITexture> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::getParameterCvt<boost::intrusive_ptr<glitch::video::ITexture> >(unsigned short, boost::intrusive_ptr<glitch::video::ITexture>*, int) const
; decoder-mode: arm
005d5da4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005d5da8  be c0 d0 e1                                      ldrh ip, [r0, #0xe]
005d5dac  02 40 a0 e1                                      mov r4, r2
005d5db0  03 50 a0 e1                                      mov r5, r3
005d5db4  01 00 5c e1                                      cmp ip, r1
005d5db8  12 00 00 9a                                      bls #0x5d5e08
005d5dbc  20 30 90 e5                                      ldr r3, [r0, #0x20]
005d5dc0  01 12 93 e0                                      adds r1, r3, r1, lsl #4
005d5dc4  0f 00 00 0a                                      beq #0x5d5e08
005d5dc8  06 30 d1 e5                                      ldrb r3, [r1, #6]
005d5dcc  0c 30 43 e2                                      sub r3, r3, #0xc
005d5dd0  03 00 53 e3                                      cmp r3, #3
005d5dd4  0b 00 00 8a                                      bhi #0x5d5e08
005d5dd8  00 00 55 e3                                      cmp r5, #0
005d5ddc  1d 00 00 0a                                      beq #0x5d5e58
005d5de0  24 60 90 e5                                      ldr r6, [r0, #0x24]
005d5de4  0c 20 91 e5                                      ldr r2, [r1, #0xc]
005d5de8  02 60 86 e0                                      add r6, r6, r2
005d5dec  03 00 53 e3                                      cmp r3, #3
005d5df0  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
005d5df4  17 00 00 ea                                      b #0x5d5e58
005d5df8  2b 00 00 ea                                      b #0x5d5eac
005d5dfc  3d 00 00 ea                                      b #0x5d5ef8
005d5e00  02 00 00 ea                                      b #0x5d5e10
005d5e04  15 00 00 ea                                      b #0x5d5e60
005d5e08  00 00 a0 e3                                      mov r0, #0
005d5e0c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005d5e10  08 70 91 e5                                      ldr r7, [r1, #8]
005d5e14  00 00 57 e3                                      cmp r7, #0
005d5e18  0e 00 00 0a                                      beq #0x5d5e58
005d5e1c  00 80 a0 e3                                      mov r8, #0
005d5e20  08 30 96 e7                                      ldr r3, [r6, r8]
005d5e24  04 80 88 e2                                      add r8, r8, #4
005d5e28  00 00 53 e3                                      cmp r3, #0
005d5e2c  04 20 93 15                                      ldrne r2, [r3, #4]
005d5e30  01 20 82 12                                      addne r2, r2, #1
005d5e34  04 20 83 15                                      strne r2, [r3, #4]
005d5e38  00 00 94 e5                                      ldr r0, [r4]
005d5e3c  00 30 84 e5                                      str r3, [r4]
005d5e40  05 40 84 e0                                      add r4, r4, r5
005d5e44  00 00 50 e3                                      cmp r0, #0
005d5e48  00 00 00 0a                                      beq #0x5d5e50
005d5e4c  cc 1d f5 eb                                      bl #0x31d584
005d5e50  01 70 57 e2                                      subs r7, r7, #1
005d5e54  f1 ff ff 1a                                      bne #0x5d5e20
005d5e58  01 00 a0 e3                                      mov r0, #1
005d5e5c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005d5e60  08 70 91 e5                                      ldr r7, [r1, #8]
005d5e64  00 00 57 e3                                      cmp r7, #0
005d5e68  fa ff ff 0a                                      beq #0x5d5e58
005d5e6c  00 80 a0 e3                                      mov r8, #0
005d5e70  08 30 96 e7                                      ldr r3, [r6, r8]
005d5e74  04 80 88 e2                                      add r8, r8, #4
005d5e78  00 00 53 e3                                      cmp r3, #0
005d5e7c  04 20 93 15                                      ldrne r2, [r3, #4]
005d5e80  01 20 82 12                                      addne r2, r2, #1
005d5e84  04 20 83 15                                      strne r2, [r3, #4]
005d5e88  00 00 94 e5                                      ldr r0, [r4]
005d5e8c  00 30 84 e5                                      str r3, [r4]
005d5e90  05 40 84 e0                                      add r4, r4, r5
005d5e94  00 00 50 e3                                      cmp r0, #0
005d5e98  00 00 00 0a                                      beq #0x5d5ea0
005d5e9c  b8 1d f5 eb                                      bl #0x31d584
005d5ea0  01 70 57 e2                                      subs r7, r7, #1
005d5ea4  f1 ff ff 1a                                      bne #0x5d5e70
005d5ea8  ea ff ff ea                                      b #0x5d5e58
005d5eac  08 70 91 e5                                      ldr r7, [r1, #8]
005d5eb0  00 00 57 e3                                      cmp r7, #0
005d5eb4  e7 ff ff 0a                                      beq #0x5d5e58
005d5eb8  00 80 a0 e3                                      mov r8, #0
005d5ebc  08 30 96 e7                                      ldr r3, [r6, r8]
005d5ec0  04 80 88 e2                                      add r8, r8, #4
005d5ec4  00 00 53 e3                                      cmp r3, #0
005d5ec8  04 20 93 15                                      ldrne r2, [r3, #4]
005d5ecc  01 20 82 12                                      addne r2, r2, #1
005d5ed0  04 20 83 15                                      strne r2, [r3, #4]
005d5ed4  00 00 94 e5                                      ldr r0, [r4]
005d5ed8  00 30 84 e5                                      str r3, [r4]
005d5edc  05 40 84 e0                                      add r4, r4, r5
005d5ee0  00 00 50 e3                                      cmp r0, #0
005d5ee4  00 00 00 0a                                      beq #0x5d5eec
005d5ee8  a5 1d f5 eb                                      bl #0x31d584
005d5eec  01 70 57 e2                                      subs r7, r7, #1
005d5ef0  f1 ff ff 1a                                      bne #0x5d5ebc
005d5ef4  d7 ff ff ea                                      b #0x5d5e58
005d5ef8  08 70 91 e5                                      ldr r7, [r1, #8]
005d5efc  00 00 57 e3                                      cmp r7, #0
005d5f00  d4 ff ff 0a                                      beq #0x5d5e58
005d5f04  00 80 a0 e3                                      mov r8, #0
005d5f08  08 30 96 e7                                      ldr r3, [r6, r8]
005d5f0c  04 80 88 e2                                      add r8, r8, #4
005d5f10  00 00 53 e3                                      cmp r3, #0
005d5f14  04 20 93 15                                      ldrne r2, [r3, #4]
005d5f18  01 20 82 12                                      addne r2, r2, #1
005d5f1c  04 20 83 15                                      strne r2, [r3, #4]
005d5f20  00 00 94 e5                                      ldr r0, [r4]
005d5f24  00 30 84 e5                                      str r3, [r4]
005d5f28  05 40 84 e0                                      add r4, r4, r5
005d5f2c  00 00 50 e3                                      cmp r0, #0
005d5f30  00 00 00 0a                                      beq #0x5d5f38
005d5f34  92 1d f5 eb                                      bl #0x31d584
005d5f38  01 70 57 e2                                      subs r7, r7, #1
005d5f3c  f1 ff ff 1a                                      bne #0x5d5f08
005d5f40  c4 ff ff ea                                      b #0x5d5e58

; FUNCTION 0x005d68a0, declared_size=124, range_size=124, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<boost::intrusive_ptr<glitch::video::ITexture> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE12getParameterIN5boost13intrusive_ptrINS0_8ITextureEEEEENS8_9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRSE_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<boost::intrusive_ptr<glitch::video::ITexture> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::getParameter<boost::intrusive_ptr<glitch::video::ITexture> >(unsigned short, unsigned int, boost::intrusive_ptr<glitch::video::ITexture>&) const
; decoder-mode: arm
005d68a0  10 40 2d e9                                      push {r4, lr}
005d68a4  be c0 d0 e1                                      ldrh ip, [r0, #0xe]
005d68a8  01 00 5c e1                                      cmp ip, r1
005d68ac  18 00 00 9a                                      bls #0x5d6914
005d68b0  20 c0 90 e5                                      ldr ip, [r0, #0x20]
005d68b4  01 12 9c e0                                      adds r1, ip, r1, lsl #4
005d68b8  15 00 00 0a                                      beq #0x5d6914
005d68bc  06 c0 d1 e5                                      ldrb ip, [r1, #6]
005d68c0  0c c0 4c e2                                      sub ip, ip, #0xc
005d68c4  03 00 5c e3                                      cmp ip, #3
005d68c8  11 00 00 8a                                      bhi #0x5d6914
005d68cc  08 c0 91 e5                                      ldr ip, [r1, #8]
005d68d0  0c 00 52 e1                                      cmp r2, ip
005d68d4  0e 00 00 2a                                      bhs #0x5d6914
005d68d8  0c c0 91 e5                                      ldr ip, [r1, #0xc]
005d68dc  24 10 90 e5                                      ldr r1, [r0, #0x24]
005d68e0  02 21 8c e0                                      add r2, ip, r2, lsl #2
005d68e4  02 20 91 e7                                      ldr r2, [r1, r2]
005d68e8  00 00 52 e3                                      cmp r2, #0
005d68ec  04 10 92 15                                      ldrne r1, [r2, #4]
005d68f0  01 10 81 12                                      addne r1, r1, #1
005d68f4  04 10 82 15                                      strne r1, [r2, #4]
005d68f8  00 00 93 e5                                      ldr r0, [r3]
005d68fc  00 20 83 e5                                      str r2, [r3]
005d6900  00 00 50 e3                                      cmp r0, #0
005d6904  00 00 00 0a                                      beq #0x5d690c
005d6908  1d 1b f5 eb                                      bl #0x31d584
005d690c  01 00 a0 e3                                      mov r0, #1
005d6910  10 80 bd e8                                      pop {r4, pc}
005d6914  00 00 a0 e3                                      mov r0, #0
005d6918  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005d691c, declared_size=172, range_size=172, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<boost::intrusive_ptr<glitch::video::ITexture> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE12setParameterIN5boost13intrusive_ptrINS0_8ITextureEEEEENS8_9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<boost::intrusive_ptr<glitch::video::ITexture> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::setParameter<boost::intrusive_ptr<glitch::video::ITexture> >(unsigned short, unsigned int, boost::intrusive_ptr<glitch::video::ITexture> const&)
; decoder-mode: arm
005d691c  10 40 2d e9                                      push {r4, lr}
005d6920  be c0 d0 e1                                      ldrh ip, [r0, #0xe]
005d6924  01 00 5c e1                                      cmp ip, r1
005d6928  1f 00 00 9a                                      bls #0x5d69ac
005d692c  20 c0 90 e5                                      ldr ip, [r0, #0x20]
005d6930  01 12 9c e0                                      adds r1, ip, r1, lsl #4
005d6934  1c 00 00 0a                                      beq #0x5d69ac
005d6938  00 30 93 e5                                      ldr r3, [r3]
005d693c  06 40 d1 e5                                      ldrb r4, [r1, #6]
005d6940  00 00 53 e3                                      cmp r3, #0
005d6944  1a 00 00 0a                                      beq #0x5d69b4
005d6948  38 c0 93 e5                                      ldr ip, [r3, #0x38]
005d694c  03 c0 0c e2                                      and ip, ip, #3
005d6950  0c c0 8c e2                                      add ip, ip, #0xc
005d6954  0c 00 54 e1                                      cmp r4, ip
005d6958  00 c0 a0 13                                      movne ip, #0
005d695c  01 c0 a0 03                                      moveq ip, #1
005d6960  00 00 5c e3                                      cmp ip, #0
005d6964  10 00 00 0a                                      beq #0x5d69ac
005d6968  08 c0 91 e5                                      ldr ip, [r1, #8]
005d696c  0c 00 52 e1                                      cmp r2, ip
005d6970  0d 00 00 2a                                      bhs #0x5d69ac
005d6974  00 00 53 e3                                      cmp r3, #0
005d6978  0c c0 91 e5                                      ldr ip, [r1, #0xc]
005d697c  24 10 90 e5                                      ldr r1, [r0, #0x24]
005d6980  04 00 93 15                                      ldrne r0, [r3, #4]
005d6984  02 21 8c e0                                      add r2, ip, r2, lsl #2
005d6988  01 00 80 12                                      addne r0, r0, #1
005d698c  04 00 83 15                                      strne r0, [r3, #4]
005d6990  02 00 91 e7                                      ldr r0, [r1, r2]
005d6994  02 30 81 e7                                      str r3, [r1, r2]
005d6998  00 00 50 e3                                      cmp r0, #0
005d699c  00 00 00 0a                                      beq #0x5d69a4
005d69a0  f7 1a f5 eb                                      bl #0x31d584
005d69a4  01 00 a0 e3                                      mov r0, #1
005d69a8  10 80 bd e8                                      pop {r4, pc}
005d69ac  00 00 a0 e3                                      mov r0, #0
005d69b0  10 80 bd e8                                      pop {r4, pc}
005d69b4  0c c0 44 e2                                      sub ip, r4, #0xc
005d69b8  03 00 5c e3                                      cmp ip, #3
005d69bc  00 c0 a0 83                                      movhi ip, #0
005d69c0  01 c0 a0 93                                      movls ip, #1
005d69c4  e5 ff ff ea                                      b #0x5d6960

; FUNCTION 0x005d76e0, declared_size=208, range_size=208, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<boost::intrusive_ptr<glitch::video::ITexture> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtIN5boost13intrusive_ptrINS0_8ITextureEEEEENS8_9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<boost::intrusive_ptr<glitch::video::ITexture> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::setParameterCvt<boost::intrusive_ptr<glitch::video::ITexture> >(unsigned short, unsigned int, boost::intrusive_ptr<glitch::video::ITexture> const&)
; decoder-mode: arm
005d76e0  10 40 2d e9                                      push {r4, lr}
005d76e4  be c0 d0 e1                                      ldrh ip, [r0, #0xe]
005d76e8  01 00 5c e1                                      cmp ip, r1
005d76ec  1b 00 00 9a                                      bls #0x5d7760
005d76f0  20 c0 90 e5                                      ldr ip, [r0, #0x20]
005d76f4  01 12 9c e0                                      adds r1, ip, r1, lsl #4
005d76f8  18 00 00 0a                                      beq #0x5d7760
005d76fc  00 30 93 e5                                      ldr r3, [r3]
005d7700  06 c0 d1 e5                                      ldrb ip, [r1, #6]
005d7704  00 00 53 e3                                      cmp r3, #0
005d7708  23 00 00 0a                                      beq #0x5d779c
005d770c  38 40 93 e5                                      ldr r4, [r3, #0x38]
005d7710  03 40 04 e2                                      and r4, r4, #3
005d7714  0c 40 84 e2                                      add r4, r4, #0xc
005d7718  04 00 5c e1                                      cmp ip, r4
005d771c  00 40 a0 13                                      movne r4, #0
005d7720  01 40 a0 03                                      moveq r4, #1
005d7724  00 00 54 e3                                      cmp r4, #0
005d7728  0c 00 00 0a                                      beq #0x5d7760
005d772c  08 40 91 e5                                      ldr r4, [r1, #8]
005d7730  04 00 52 e1                                      cmp r2, r4
005d7734  09 00 00 2a                                      bhs #0x5d7760
005d7738  0c c0 4c e2                                      sub ip, ip, #0xc
005d773c  24 40 90 e5                                      ldr r4, [r0, #0x24]
005d7740  0c 20 91 e5                                      ldr r2, [r1, #0xc]
005d7744  03 00 5c e3                                      cmp ip, #3
005d7748  0c f1 8f 90                                      addls pc, pc, ip, lsl #2
005d774c  10 00 00 ea                                      b #0x5d7794
005d7750  04 00 00 ea                                      b #0x5d7768
005d7754  03 00 00 ea                                      b #0x5d7768
005d7758  02 00 00 ea                                      b #0x5d7768
005d775c  01 00 00 ea                                      b #0x5d7768
005d7760  00 00 a0 e3                                      mov r0, #0
005d7764  10 80 bd e8                                      pop {r4, pc}
005d7768  00 00 53 e3                                      cmp r3, #0
005d776c  04 10 93 15                                      ldrne r1, [r3, #4]
005d7770  01 10 81 12                                      addne r1, r1, #1
005d7774  04 10 83 15                                      strne r1, [r3, #4]
005d7778  02 00 94 e7                                      ldr r0, [r4, r2]
005d777c  02 30 84 e7                                      str r3, [r4, r2]
005d7780  00 00 50 e3                                      cmp r0, #0
005d7784  02 00 00 0a                                      beq #0x5d7794
005d7788  7d 17 f5 eb                                      bl #0x31d584
005d778c  01 00 a0 e3                                      mov r0, #1
005d7790  10 80 bd e8                                      pop {r4, pc}
005d7794  01 00 a0 e3                                      mov r0, #1
005d7798  10 80 bd e8                                      pop {r4, pc}
005d779c  0c 40 4c e2                                      sub r4, ip, #0xc
005d77a0  03 00 54 e3                                      cmp r4, #3
005d77a4  00 40 a0 83                                      movhi r4, #0
005d77a8  01 40 a0 93                                      movls r4, #1
005d77ac  dc ff ff ea                                      b #0x5d7724

; FUNCTION 0x005d7848, declared_size=156, range_size=156, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<boost::intrusive_ptr<glitch::video::ITexture> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE15getParameterCvtIN5boost13intrusive_ptrINS0_8ITextureEEEEENS8_9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRSE_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<boost::intrusive_ptr<glitch::video::ITexture> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::getParameterCvt<boost::intrusive_ptr<glitch::video::ITexture> >(unsigned short, unsigned int, boost::intrusive_ptr<glitch::video::ITexture>&) const
; decoder-mode: arm
005d7848  10 40 2d e9                                      push {r4, lr}
005d784c  be c0 d0 e1                                      ldrh ip, [r0, #0xe]
005d7850  01 00 5c e1                                      cmp ip, r1
005d7854  12 00 00 9a                                      bls #0x5d78a4
005d7858  20 c0 90 e5                                      ldr ip, [r0, #0x20]
005d785c  01 12 9c e0                                      adds r1, ip, r1, lsl #4
005d7860  0f 00 00 0a                                      beq #0x5d78a4
005d7864  06 c0 d1 e5                                      ldrb ip, [r1, #6]
005d7868  0c c0 4c e2                                      sub ip, ip, #0xc
005d786c  03 00 5c e3                                      cmp ip, #3
005d7870  0b 00 00 8a                                      bhi #0x5d78a4
005d7874  08 40 91 e5                                      ldr r4, [r1, #8]
005d7878  04 00 52 e1                                      cmp r2, r4
005d787c  08 00 00 2a                                      bhs #0x5d78a4
005d7880  24 00 90 e5                                      ldr r0, [r0, #0x24]
005d7884  0c 20 91 e5                                      ldr r2, [r1, #0xc]
005d7888  03 00 5c e3                                      cmp ip, #3
005d788c  0c f1 8f 90                                      addls pc, pc, ip, lsl #2
005d7890  11 00 00 ea                                      b #0x5d78dc
005d7894  04 00 00 ea                                      b #0x5d78ac
005d7898  03 00 00 ea                                      b #0x5d78ac
005d789c  02 00 00 ea                                      b #0x5d78ac
005d78a0  01 00 00 ea                                      b #0x5d78ac
005d78a4  00 00 a0 e3                                      mov r0, #0
005d78a8  10 80 bd e8                                      pop {r4, pc}
005d78ac  02 20 90 e7                                      ldr r2, [r0, r2]
005d78b0  00 00 52 e3                                      cmp r2, #0
005d78b4  04 10 92 15                                      ldrne r1, [r2, #4]
005d78b8  01 10 81 12                                      addne r1, r1, #1
005d78bc  04 10 82 15                                      strne r1, [r2, #4]
005d78c0  00 00 93 e5                                      ldr r0, [r3]
005d78c4  00 20 83 e5                                      str r2, [r3]
005d78c8  00 00 50 e3                                      cmp r0, #0
005d78cc  02 00 00 0a                                      beq #0x5d78dc
005d78d0  2b 17 f5 eb                                      bl #0x31d584
005d78d4  01 00 a0 e3                                      mov r0, #1
005d78d8  10 80 bd e8                                      pop {r4, pc}
005d78dc  01 00 a0 e3                                      mov r0, #1
005d78e0  10 80 bd e8                                      pop {r4, pc}

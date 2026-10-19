; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005c660c, declared_size=200, range_size=200, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector3d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE12setParameterINS_4core8vector3dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector3d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::setParameter<glitch::core::vector3d<float> >(unsigned short, unsigned int, glitch::core::vector3d<float> const&)
; decoder-mode: arm
005c660c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005c6610  00 40 a0 e1                                      mov r4, r0
005c6614  04 00 90 e5                                      ldr r0, [r0, #4]
005c6618  03 50 a0 e1                                      mov r5, r3
005c661c  be c0 d0 e1                                      ldrh ip, [r0, #0xe]
005c6620  01 00 5c e1                                      cmp ip, r1
005c6624  01 00 00 8a                                      bhi #0x5c6630
005c6628  00 00 a0 e3                                      mov r0, #0
005c662c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005c6630  20 30 90 e5                                      ldr r3, [r0, #0x20]
005c6634  01 12 93 e0                                      adds r1, r3, r1, lsl #4
005c6638  fa ff ff 0a                                      beq #0x5c6628
005c663c  06 30 d1 e5                                      ldrb r3, [r1, #6]
005c6640  07 00 53 e3                                      cmp r3, #7
005c6644  f7 ff ff 1a                                      bne #0x5c6628
005c6648  08 30 91 e5                                      ldr r3, [r1, #8]
005c664c  03 00 52 e1                                      cmp r2, r3
005c6650  f4 ff ff 2a                                      bhs #0x5c6628
005c6654  0c 30 91 e5                                      ldr r3, [r1, #0xc]
005c6658  0c 80 a0 e3                                      mov r8, #0xc
005c665c  00 70 95 e5                                      ldr r7, [r5]
005c6660  98 32 28 e0                                      mla r8, r8, r2, r3
005c6664  20 a0 84 e2                                      add sl, r4, #0x20
005c6668  08 00 9a e7                                      ldr r0, [sl, r8]
005c666c  07 10 a0 e1                                      mov r1, r7
005c6670  45 1e f5 eb                                      bl #0x30df8c
005c6674  00 00 50 e3                                      cmp r0, #0
005c6678  08 60 8a e0                                      add r6, sl, r8
005c667c  09 00 00 0a                                      beq #0x5c66a8
005c6680  04 00 96 e5                                      ldr r0, [r6, #4]
005c6684  04 10 95 e5                                      ldr r1, [r5, #4]
005c6688  3f 1e f5 eb                                      bl #0x30df8c
005c668c  00 00 50 e3                                      cmp r0, #0
005c6690  04 00 00 0a                                      beq #0x5c66a8
005c6694  08 00 96 e5                                      ldr r0, [r6, #8]
005c6698  08 10 95 e5                                      ldr r1, [r5, #8]
005c669c  3a 1e f5 eb                                      bl #0x30df8c
005c66a0  00 00 50 e3                                      cmp r0, #0
005c66a4  03 00 00 1a                                      bne #0x5c66b8
005c66a8  00 30 e0 e3                                      mvn r3, #0
005c66ac  0c 30 84 e5                                      str r3, [r4, #0xc]
005c66b0  10 30 84 e5                                      str r3, [r4, #0x10]
005c66b4  00 70 95 e5                                      ldr r7, [r5]
005c66b8  08 70 8a e7                                      str r7, [sl, r8]
005c66bc  04 30 95 e5                                      ldr r3, [r5, #4]
005c66c0  01 00 a0 e3                                      mov r0, #1
005c66c4  04 30 86 e5                                      str r3, [r6, #4]
005c66c8  08 30 95 e5                                      ldr r3, [r5, #8]
005c66cc  08 30 86 e5                                      str r3, [r6, #8]
005c66d0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x005c6d34, declared_size=240, range_size=240, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector3d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS_4core8vector3dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector3d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::setParameterCvt<glitch::core::vector3d<float> >(unsigned short, unsigned int, glitch::core::vector3d<float> const&)
; decoder-mode: arm
005c6d34  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005c6d38  04 c0 90 e5                                      ldr ip, [r0, #4]
005c6d3c  00 40 a0 e1                                      mov r4, r0
005c6d40  d4 00 9f e5                                      ldr r0, [pc, #0xd4]
005c6d44  be 50 dc e1                                      ldrh r5, [ip, #0xe]
005c6d48  00 00 8f e0                                      add r0, pc, r0
005c6d4c  01 00 55 e1                                      cmp r5, r1
005c6d50  03 50 a0 e1                                      mov r5, r3
005c6d54  10 00 00 9a                                      bls #0x5c6d9c
005c6d58  20 30 9c e5                                      ldr r3, [ip, #0x20]
005c6d5c  01 12 93 e0                                      adds r1, r3, r1, lsl #4
005c6d60  0d 00 00 0a                                      beq #0x5c6d9c
005c6d64  b4 c0 9f e5                                      ldr ip, [pc, #0xb4]
005c6d68  06 30 d1 e5                                      ldrb r3, [r1, #6]
005c6d6c  0c 00 90 e7                                      ldr r0, [r0, ip]
005c6d70  03 01 90 e7                                      ldr r0, [r0, r3, lsl #2]
005c6d74  80 00 10 e3                                      tst r0, #0x80
005c6d78  07 00 00 0a                                      beq #0x5c6d9c
005c6d7c  08 00 91 e5                                      ldr r0, [r1, #8]
005c6d80  00 00 52 e1                                      cmp r2, r0
005c6d84  04 00 00 2a                                      bhs #0x5c6d9c
005c6d88  07 00 53 e3                                      cmp r3, #7
005c6d8c  0c 80 91 e5                                      ldr r8, [r1, #0xc]
005c6d90  03 00 00 0a                                      beq #0x5c6da4
005c6d94  01 00 a0 e3                                      mov r0, #1
005c6d98  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005c6d9c  00 00 a0 e3                                      mov r0, #0
005c6da0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005c6da4  00 a0 95 e5                                      ldr sl, [r5]
005c6da8  20 60 84 e2                                      add r6, r4, #0x20
005c6dac  08 00 96 e7                                      ldr r0, [r6, r8]
005c6db0  0a 10 a0 e1                                      mov r1, sl
005c6db4  74 1c f5 eb                                      bl #0x30df8c
005c6db8  00 00 50 e3                                      cmp r0, #0
005c6dbc  08 70 86 e0                                      add r7, r6, r8
005c6dc0  0a 00 00 1a                                      bne #0x5c6df0
005c6dc4  00 30 e0 e3                                      mvn r3, #0
005c6dc8  0c 30 84 e5                                      str r3, [r4, #0xc]
005c6dcc  10 30 84 e5                                      str r3, [r4, #0x10]
005c6dd0  00 a0 95 e5                                      ldr sl, [r5]
005c6dd4  08 a0 86 e7                                      str sl, [r6, r8]
005c6dd8  04 30 95 e5                                      ldr r3, [r5, #4]
005c6ddc  01 00 a0 e3                                      mov r0, #1
005c6de0  04 30 87 e5                                      str r3, [r7, #4]
005c6de4  08 30 95 e5                                      ldr r3, [r5, #8]
005c6de8  08 30 87 e5                                      str r3, [r7, #8]
005c6dec  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005c6df0  04 00 97 e5                                      ldr r0, [r7, #4]
005c6df4  04 10 95 e5                                      ldr r1, [r5, #4]
005c6df8  63 1c f5 eb                                      bl #0x30df8c
005c6dfc  00 00 50 e3                                      cmp r0, #0
005c6e00  ef ff ff 0a                                      beq #0x5c6dc4
005c6e04  08 00 97 e5                                      ldr r0, [r7, #8]
005c6e08  08 10 95 e5                                      ldr r1, [r5, #8]
005c6e0c  5e 1c f5 eb                                      bl #0x30df8c
005c6e10  00 00 50 e3                                      cmp r0, #0
005c6e14  ee ff ff 1a                                      bne #0x5c6dd4
005c6e18  e9 ff ff ea                                      b #0x5c6dc4
; mapping-symbol data/literal pool
005c6e1c  48 dd 3c 00 a4 2c 00 00                          .byte 0x48, 0xdd, 0x3c, 0x00, 0xa4, 0x2c, 0x00, 0x00

; FUNCTION 0x005c70b0, declared_size=120, range_size=120, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector3d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE12getParameterINS_4core8vector3dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRSE_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector3d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::getParameter<glitch::core::vector3d<float> >(unsigned short, unsigned int, glitch::core::vector3d<float>&) const
; decoder-mode: arm
005c70b0  04 40 2d e5                                      str r4, [sp, #-4]!
005c70b4  04 c0 90 e5                                      ldr ip, [r0, #4]
005c70b8  be 40 dc e1                                      ldrh r4, [ip, #0xe]
005c70bc  01 00 54 e1                                      cmp r4, r1
005c70c0  05 00 00 9a                                      bls #0x5c70dc
005c70c4  20 c0 9c e5                                      ldr ip, [ip, #0x20]
005c70c8  01 12 9c e0                                      adds r1, ip, r1, lsl #4
005c70cc  02 00 00 0a                                      beq #0x5c70dc
005c70d0  06 c0 d1 e5                                      ldrb ip, [r1, #6]
005c70d4  07 00 5c e3                                      cmp ip, #7
005c70d8  02 00 00 0a                                      beq #0x5c70e8
005c70dc  00 00 a0 e3                                      mov r0, #0
005c70e0  10 00 bd e8                                      ldm sp!, {r4}
005c70e4  1e ff 2f e1                                      bx lr
005c70e8  08 c0 91 e5                                      ldr ip, [r1, #8]
005c70ec  0c 00 52 e1                                      cmp r2, ip
005c70f0  f9 ff ff 2a                                      bhs #0x5c70dc
005c70f4  0c c0 91 e5                                      ldr ip, [r1, #0xc]
005c70f8  20 10 80 e2                                      add r1, r0, #0x20
005c70fc  0c 00 a0 e3                                      mov r0, #0xc
005c7100  90 c2 22 e0                                      mla r2, r0, r2, ip
005c7104  01 00 a0 e3                                      mov r0, #1
005c7108  02 c0 91 e7                                      ldr ip, [r1, r2]
005c710c  02 20 81 e0                                      add r2, r1, r2
005c7110  00 c0 83 e5                                      str ip, [r3]
005c7114  04 10 92 e5                                      ldr r1, [r2, #4]
005c7118  04 10 83 e5                                      str r1, [r3, #4]
005c711c  08 20 92 e5                                      ldr r2, [r2, #8]
005c7120  08 20 83 e5                                      str r2, [r3, #8]
005c7124  ed ff ff ea                                      b #0x5c70e0

; FUNCTION 0x005c7600, declared_size=148, range_size=148, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector3d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15getParameterCvtINS_4core8vector3dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRSE_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector3d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::getParameterCvt<glitch::core::vector3d<float> >(unsigned short, unsigned int, glitch::core::vector3d<float>&) const
; decoder-mode: arm
005c7600  30 00 2d e9                                      push {r4, r5}
005c7604  04 40 90 e5                                      ldr r4, [r0, #4]
005c7608  7c c0 9f e5                                      ldr ip, [pc, #0x7c]
005c760c  be 50 d4 e1                                      ldrh r5, [r4, #0xe]
005c7610  0c c0 8f e0                                      add ip, pc, ip
005c7614  01 00 55 e1                                      cmp r5, r1
005c7618  18 00 00 9a                                      bls #0x5c7680
005c761c  20 40 94 e5                                      ldr r4, [r4, #0x20]
005c7620  01 12 94 e0                                      adds r1, r4, r1, lsl #4
005c7624  15 00 00 0a                                      beq #0x5c7680
005c7628  60 50 9f e5                                      ldr r5, [pc, #0x60]
005c762c  06 40 d1 e5                                      ldrb r4, [r1, #6]
005c7630  05 c0 9c e7                                      ldr ip, [ip, r5]
005c7634  04 c1 9c e7                                      ldr ip, [ip, r4, lsl #2]
005c7638  80 00 1c e3                                      tst ip, #0x80
005c763c  0f 00 00 0a                                      beq #0x5c7680
005c7640  08 c0 91 e5                                      ldr ip, [r1, #8]
005c7644  0c 00 52 e1                                      cmp r2, ip
005c7648  0c 00 00 2a                                      bhs #0x5c7680
005c764c  0c 20 91 e5                                      ldr r2, [r1, #0xc]
005c7650  07 00 54 e3                                      cmp r4, #7
005c7654  20 00 80 02                                      addeq r0, r0, #0x20
005c7658  02 10 90 07                                      ldreq r1, [r0, r2]
005c765c  02 20 80 00                                      addeq r2, r0, r2
005c7660  01 00 a0 13                                      movne r0, #1
005c7664  00 10 83 05                                      streq r1, [r3]
005c7668  04 10 92 05                                      ldreq r1, [r2, #4]
005c766c  01 00 a0 03                                      moveq r0, #1
005c7670  04 10 83 05                                      streq r1, [r3, #4]
005c7674  08 20 92 05                                      ldreq r2, [r2, #8]
005c7678  08 20 83 05                                      streq r2, [r3, #8]
005c767c  00 00 00 ea                                      b #0x5c7684
005c7680  00 00 a0 e3                                      mov r0, #0
005c7684  30 00 bd e8                                      pop {r4, r5}
005c7688  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
005c768c  80 d4 3c 00 a4 2c 00 00                          .byte 0x80, 0xd4, 0x3c, 0x00, 0xa4, 0x2c, 0x00, 0x00

; FUNCTION 0x005c80a4, declared_size=244, range_size=244, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector3d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15getParameterCvtINS_4core8vector3dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPSE_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector3d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::getParameterCvt<glitch::core::vector3d<float> >(unsigned short, glitch::core::vector3d<float>*, int) const
; decoder-mode: arm
005c80a4  70 40 2d e9                                      push {r4, r5, r6, lr}
005c80a8  04 50 90 e5                                      ldr r5, [r0, #4]
005c80ac  dc 40 9f e5                                      ldr r4, [pc, #0xdc]
005c80b0  02 c0 a0 e1                                      mov ip, r2
005c80b4  be 60 d5 e1                                      ldrh r6, [r5, #0xe]
005c80b8  04 40 8f e0                                      add r4, pc, r4
005c80bc  01 00 56 e1                                      cmp r6, r1
005c80c0  13 00 00 9a                                      bls #0x5c8114
005c80c4  20 20 95 e5                                      ldr r2, [r5, #0x20]
005c80c8  01 12 92 e0                                      adds r1, r2, r1, lsl #4
005c80cc  10 00 00 0a                                      beq #0x5c8114
005c80d0  bc 50 9f e5                                      ldr r5, [pc, #0xbc]
005c80d4  06 20 d1 e5                                      ldrb r2, [r1, #6]
005c80d8  05 40 94 e7                                      ldr r4, [r4, r5]
005c80dc  02 41 94 e7                                      ldr r4, [r4, r2, lsl #2]
005c80e0  80 00 14 e3                                      tst r4, #0x80
005c80e4  0a 00 00 0a                                      beq #0x5c8114
005c80e8  01 40 73 e2                                      rsbs r4, r3, #1
005c80ec  00 40 a0 33                                      movlo r4, #0
005c80f0  00 00 53 e3                                      cmp r3, #0
005c80f4  0c 00 53 13                                      cmpne r3, #0xc
005c80f8  07 00 00 1a                                      bne #0x5c811c
005c80fc  07 00 52 e3                                      cmp r2, #7
005c8100  18 00 00 0a                                      beq #0x5c8168
005c8104  00 00 54 e3                                      cmp r4, #0
005c8108  03 00 00 0a                                      beq #0x5c811c
005c810c  01 00 a0 e3                                      mov r0, #1
005c8110  70 80 bd e8                                      pop {r4, r5, r6, pc}
005c8114  00 00 a0 e3                                      mov r0, #0
005c8118  70 80 bd e8                                      pop {r4, r5, r6, pc}
005c811c  07 00 52 e3                                      cmp r2, #7
005c8120  0c 40 91 e5                                      ldr r4, [r1, #0xc]
005c8124  f8 ff ff 1a                                      bne #0x5c810c
005c8128  08 20 91 e5                                      ldr r2, [r1, #8]
005c812c  00 00 52 e3                                      cmp r2, #0
005c8130  f5 ff ff 0a                                      beq #0x5c810c
005c8134  20 00 80 e2                                      add r0, r0, #0x20
005c8138  04 00 80 e0                                      add r0, r0, r4
005c813c  00 10 90 e5                                      ldr r1, [r0]
005c8140  01 20 52 e2                                      subs r2, r2, #1
005c8144  00 10 8c e5                                      str r1, [ip]
005c8148  04 10 90 e5                                      ldr r1, [r0, #4]
005c814c  04 10 8c e5                                      str r1, [ip, #4]
005c8150  08 10 90 e5                                      ldr r1, [r0, #8]
005c8154  0c 00 80 e2                                      add r0, r0, #0xc
005c8158  08 10 8c e5                                      str r1, [ip, #8]
005c815c  03 c0 8c e0                                      add ip, ip, r3
005c8160  f5 ff ff 1a                                      bne #0x5c813c
005c8164  e8 ff ff ea                                      b #0x5c810c
005c8168  0c 20 91 e5                                      ldr r2, [r1, #0xc]
005c816c  08 30 91 e5                                      ldr r3, [r1, #8]
005c8170  20 10 80 e2                                      add r1, r0, #0x20
005c8174  02 10 81 e0                                      add r1, r1, r2
005c8178  0c 20 a0 e3                                      mov r2, #0xc
005c817c  92 03 02 e0                                      mul r2, r2, r3
005c8180  0c 00 a0 e1                                      mov r0, ip
005c8184  b7 19 f5 eb                                      bl #0x30e868
005c8188  01 00 a0 e3                                      mov r0, #1
005c818c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005c8190  d8 c9 3c 00 a4 2c 00 00                          .byte 0xd8, 0xc9, 0x3c, 0x00, 0xa4, 0x2c, 0x00, 0x00

; FUNCTION 0x005c8970, declared_size=180, range_size=180, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector3d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE12getParameterINS_4core8vector3dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPSE_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector3d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::getParameter<glitch::core::vector3d<float> >(unsigned short, glitch::core::vector3d<float>*, int) const
; decoder-mode: arm
005c8970  10 40 2d e9                                      push {r4, lr}
005c8974  04 40 90 e5                                      ldr r4, [r0, #4]
005c8978  02 c0 a0 e1                                      mov ip, r2
005c897c  be 20 d4 e1                                      ldrh r2, [r4, #0xe]
005c8980  01 00 52 e1                                      cmp r2, r1
005c8984  05 00 00 9a                                      bls #0x5c89a0
005c8988  20 20 94 e5                                      ldr r2, [r4, #0x20]
005c898c  01 12 92 e0                                      adds r1, r2, r1, lsl #4
005c8990  02 00 00 0a                                      beq #0x5c89a0
005c8994  06 20 d1 e5                                      ldrb r2, [r1, #6]
005c8998  07 00 52 e3                                      cmp r2, #7
005c899c  01 00 00 0a                                      beq #0x5c89a8
005c89a0  00 00 a0 e3                                      mov r0, #0
005c89a4  10 80 bd e8                                      pop {r4, pc}
005c89a8  00 00 53 e3                                      cmp r3, #0
005c89ac  0c 00 53 13                                      cmpne r3, #0xc
005c89b0  11 00 00 0a                                      beq #0x5c89fc
005c89b4  08 20 91 e5                                      ldr r2, [r1, #8]
005c89b8  0c 10 91 e5                                      ldr r1, [r1, #0xc]
005c89bc  00 00 52 e3                                      cmp r2, #0
005c89c0  0b 00 00 0a                                      beq #0x5c89f4
005c89c4  20 00 80 e2                                      add r0, r0, #0x20
005c89c8  01 00 80 e0                                      add r0, r0, r1
005c89cc  00 10 90 e5                                      ldr r1, [r0]
005c89d0  01 20 52 e2                                      subs r2, r2, #1
005c89d4  00 10 8c e5                                      str r1, [ip]
005c89d8  04 10 90 e5                                      ldr r1, [r0, #4]
005c89dc  04 10 8c e5                                      str r1, [ip, #4]
005c89e0  08 10 90 e5                                      ldr r1, [r0, #8]
005c89e4  0c 00 80 e2                                      add r0, r0, #0xc
005c89e8  08 10 8c e5                                      str r1, [ip, #8]
005c89ec  03 c0 8c e0                                      add ip, ip, r3
005c89f0  f5 ff ff 1a                                      bne #0x5c89cc
005c89f4  01 00 a0 e3                                      mov r0, #1
005c89f8  10 80 bd e8                                      pop {r4, pc}
005c89fc  0c 20 91 e5                                      ldr r2, [r1, #0xc]
005c8a00  08 30 91 e5                                      ldr r3, [r1, #8]
005c8a04  20 10 80 e2                                      add r1, r0, #0x20
005c8a08  02 10 81 e0                                      add r1, r1, r2
005c8a0c  0c 20 a0 e3                                      mov r2, #0xc
005c8a10  92 03 02 e0                                      mul r2, r2, r3
005c8a14  0c 00 a0 e1                                      mov r0, ip
005c8a18  92 17 f5 eb                                      bl #0x30e868
005c8a1c  01 00 a0 e3                                      mov r0, #1
005c8a20  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005c9444, declared_size=264, range_size=264, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector3d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS_4core8vector3dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPKSE_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector3d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::setParameterCvt<glitch::core::vector3d<float> >(unsigned short, glitch::core::vector3d<float> const*, int)
; decoder-mode: arm
005c9444  70 40 2d e9                                      push {r4, r5, r6, lr}
005c9448  04 50 90 e5                                      ldr r5, [r0, #4]
005c944c  f0 40 9f e5                                      ldr r4, [pc, #0xf0]
005c9450  02 c0 a0 e1                                      mov ip, r2
005c9454  be 60 d5 e1                                      ldrh r6, [r5, #0xe]
005c9458  04 40 8f e0                                      add r4, pc, r4
005c945c  01 00 56 e1                                      cmp r6, r1
005c9460  18 00 00 9a                                      bls #0x5c94c8
005c9464  20 20 95 e5                                      ldr r2, [r5, #0x20]
005c9468  01 12 92 e0                                      adds r1, r2, r1, lsl #4
005c946c  15 00 00 0a                                      beq #0x5c94c8
005c9470  d0 20 9f e5                                      ldr r2, [pc, #0xd0]
005c9474  06 50 d1 e5                                      ldrb r5, [r1, #6]
005c9478  02 20 94 e7                                      ldr r2, [r4, r2]
005c947c  05 21 92 e7                                      ldr r2, [r2, r5, lsl #2]
005c9480  80 00 12 e3                                      tst r2, #0x80
005c9484  0f 00 00 0a                                      beq #0x5c94c8
005c9488  00 20 e0 e3                                      mvn r2, #0
005c948c  01 40 73 e2                                      rsbs r4, r3, #1
005c9490  00 40 a0 33                                      movlo r4, #0
005c9494  0c 20 80 e5                                      str r2, [r0, #0xc]
005c9498  00 00 53 e3                                      cmp r3, #0
005c949c  0c 00 53 13                                      cmpne r3, #0xc
005c94a0  10 20 80 e5                                      str r2, [r0, #0x10]
005c94a4  06 20 d1 15                                      ldrbne r2, [r1, #6]
005c94a8  08 00 00 1a                                      bne #0x5c94d0
005c94ac  06 20 d1 e5                                      ldrb r2, [r1, #6]
005c94b0  07 00 52 e3                                      cmp r2, #7
005c94b4  18 00 00 0a                                      beq #0x5c951c
005c94b8  00 00 54 e3                                      cmp r4, #0
005c94bc  03 00 00 0a                                      beq #0x5c94d0
005c94c0  01 00 a0 e3                                      mov r0, #1
005c94c4  70 80 bd e8                                      pop {r4, r5, r6, pc}
005c94c8  00 00 a0 e3                                      mov r0, #0
005c94cc  70 80 bd e8                                      pop {r4, r5, r6, pc}
005c94d0  07 00 52 e3                                      cmp r2, #7
005c94d4  0c 40 91 e5                                      ldr r4, [r1, #0xc]
005c94d8  f8 ff ff 1a                                      bne #0x5c94c0
005c94dc  08 20 91 e5                                      ldr r2, [r1, #8]
005c94e0  00 00 52 e3                                      cmp r2, #0
005c94e4  f5 ff ff 0a                                      beq #0x5c94c0
005c94e8  20 00 80 e2                                      add r0, r0, #0x20
005c94ec  04 00 80 e0                                      add r0, r0, r4
005c94f0  00 10 9c e5                                      ldr r1, [ip]
005c94f4  01 20 52 e2                                      subs r2, r2, #1
005c94f8  00 10 80 e5                                      str r1, [r0]
005c94fc  04 10 9c e5                                      ldr r1, [ip, #4]
005c9500  04 10 80 e5                                      str r1, [r0, #4]
005c9504  08 10 9c e5                                      ldr r1, [ip, #8]
005c9508  03 c0 8c e0                                      add ip, ip, r3
005c950c  08 10 80 e5                                      str r1, [r0, #8]
005c9510  0c 00 80 e2                                      add r0, r0, #0xc
005c9514  f5 ff ff 1a                                      bne #0x5c94f0
005c9518  e8 ff ff ea                                      b #0x5c94c0
005c951c  0c 20 91 e5                                      ldr r2, [r1, #0xc]
005c9520  08 30 91 e5                                      ldr r3, [r1, #8]
005c9524  20 00 80 e2                                      add r0, r0, #0x20
005c9528  02 00 80 e0                                      add r0, r0, r2
005c952c  0c 20 a0 e3                                      mov r2, #0xc
005c9530  92 03 02 e0                                      mul r2, r2, r3
005c9534  0c 10 a0 e1                                      mov r1, ip
005c9538  ca 14 f5 eb                                      bl #0x30e868
005c953c  01 00 a0 e3                                      mov r0, #1
005c9540  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005c9544  38 b6 3c 00 a4 2c 00 00                          .byte 0x38, 0xb6, 0x3c, 0x00, 0xa4, 0x2c, 0x00, 0x00

; FUNCTION 0x005c9dfc, declared_size=192, range_size=192, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector3d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE12setParameterINS_4core8vector3dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPKSE_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector3d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::setParameter<glitch::core::vector3d<float> >(unsigned short, glitch::core::vector3d<float> const*, int)
; decoder-mode: arm
005c9dfc  10 40 2d e9                                      push {r4, lr}
005c9e00  04 40 90 e5                                      ldr r4, [r0, #4]
005c9e04  02 c0 a0 e1                                      mov ip, r2
005c9e08  be 20 d4 e1                                      ldrh r2, [r4, #0xe]
005c9e0c  01 00 52 e1                                      cmp r2, r1
005c9e10  05 00 00 9a                                      bls #0x5c9e2c
005c9e14  20 20 94 e5                                      ldr r2, [r4, #0x20]
005c9e18  01 12 92 e0                                      adds r1, r2, r1, lsl #4
005c9e1c  02 00 00 0a                                      beq #0x5c9e2c
005c9e20  06 20 d1 e5                                      ldrb r2, [r1, #6]
005c9e24  07 00 52 e3                                      cmp r2, #7
005c9e28  01 00 00 0a                                      beq #0x5c9e34
005c9e2c  00 00 a0 e3                                      mov r0, #0
005c9e30  10 80 bd e8                                      pop {r4, pc}
005c9e34  00 20 e0 e3                                      mvn r2, #0
005c9e38  00 00 53 e3                                      cmp r3, #0
005c9e3c  0c 00 53 13                                      cmpne r3, #0xc
005c9e40  0c 20 80 e5                                      str r2, [r0, #0xc]
005c9e44  10 20 80 e5                                      str r2, [r0, #0x10]
005c9e48  11 00 00 0a                                      beq #0x5c9e94
005c9e4c  08 20 91 e5                                      ldr r2, [r1, #8]
005c9e50  0c 10 91 e5                                      ldr r1, [r1, #0xc]
005c9e54  00 00 52 e3                                      cmp r2, #0
005c9e58  0b 00 00 0a                                      beq #0x5c9e8c
005c9e5c  20 00 80 e2                                      add r0, r0, #0x20
005c9e60  01 00 80 e0                                      add r0, r0, r1
005c9e64  00 10 9c e5                                      ldr r1, [ip]
005c9e68  01 20 52 e2                                      subs r2, r2, #1
005c9e6c  00 10 80 e5                                      str r1, [r0]
005c9e70  04 10 9c e5                                      ldr r1, [ip, #4]
005c9e74  04 10 80 e5                                      str r1, [r0, #4]
005c9e78  08 10 9c e5                                      ldr r1, [ip, #8]
005c9e7c  03 c0 8c e0                                      add ip, ip, r3
005c9e80  08 10 80 e5                                      str r1, [r0, #8]
005c9e84  0c 00 80 e2                                      add r0, r0, #0xc
005c9e88  f5 ff ff 1a                                      bne #0x5c9e64
005c9e8c  01 00 a0 e3                                      mov r0, #1
005c9e90  10 80 bd e8                                      pop {r4, pc}
005c9e94  0c 20 91 e5                                      ldr r2, [r1, #0xc]
005c9e98  08 30 91 e5                                      ldr r3, [r1, #8]
005c9e9c  20 00 80 e2                                      add r0, r0, #0x20
005c9ea0  02 00 80 e0                                      add r0, r0, r2
005c9ea4  0c 20 a0 e3                                      mov r2, #0xc
005c9ea8  92 03 02 e0                                      mul r2, r2, r3
005c9eac  0c 10 a0 e1                                      mov r1, ip
005c9eb0  6c 12 f5 eb                                      bl #0x30e868
005c9eb4  01 00 a0 e3                                      mov r0, #1
005c9eb8  10 80 bd e8                                      pop {r4, pc}

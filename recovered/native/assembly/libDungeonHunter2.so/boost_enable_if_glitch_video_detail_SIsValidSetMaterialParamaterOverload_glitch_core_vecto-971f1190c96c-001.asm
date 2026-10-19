; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005c6350, declared_size=184, range_size=184, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector3d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE12setParameterINS_4core8vector3dIiEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector3d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::setParameter<glitch::core::vector3d<int> >(unsigned short, unsigned int, glitch::core::vector3d<int> const&)
; decoder-mode: arm
005c6350  70 00 2d e9                                      push {r4, r5, r6}
005c6354  04 c0 90 e5                                      ldr ip, [r0, #4]
005c6358  be 40 dc e1                                      ldrh r4, [ip, #0xe]
005c635c  01 00 54 e1                                      cmp r4, r1
005c6360  05 00 00 9a                                      bls #0x5c637c
005c6364  20 c0 9c e5                                      ldr ip, [ip, #0x20]
005c6368  01 12 9c e0                                      adds r1, ip, r1, lsl #4
005c636c  02 00 00 0a                                      beq #0x5c637c
005c6370  06 c0 d1 e5                                      ldrb ip, [r1, #6]
005c6374  03 00 5c e3                                      cmp ip, #3
005c6378  02 00 00 0a                                      beq #0x5c6388
005c637c  00 00 a0 e3                                      mov r0, #0
005c6380  70 00 bd e8                                      pop {r4, r5, r6}
005c6384  1e ff 2f e1                                      bx lr
005c6388  08 c0 91 e5                                      ldr ip, [r1, #8]
005c638c  0c 00 52 e1                                      cmp r2, ip
005c6390  f9 ff ff 2a                                      bhs #0x5c637c
005c6394  0c 10 91 e5                                      ldr r1, [r1, #0xc]
005c6398  0c c0 a0 e3                                      mov ip, #0xc
005c639c  20 40 80 e2                                      add r4, r0, #0x20
005c63a0  9c 12 22 e0                                      mla r2, ip, r2, r1
005c63a4  00 50 93 e5                                      ldr r5, [r3]
005c63a8  02 c0 94 e7                                      ldr ip, [r4, r2]
005c63ac  02 10 84 e0                                      add r1, r4, r2
005c63b0  05 00 5c e1                                      cmp ip, r5
005c63b4  0a 00 00 0a                                      beq #0x5c63e4
005c63b8  00 c0 e0 e3                                      mvn ip, #0
005c63bc  0c c0 80 e5                                      str ip, [r0, #0xc]
005c63c0  10 c0 80 e5                                      str ip, [r0, #0x10]
005c63c4  00 c0 93 e5                                      ldr ip, [r3]
005c63c8  02 c0 84 e7                                      str ip, [r4, r2]
005c63cc  04 20 93 e5                                      ldr r2, [r3, #4]
005c63d0  01 00 a0 e3                                      mov r0, #1
005c63d4  04 20 81 e5                                      str r2, [r1, #4]
005c63d8  08 30 93 e5                                      ldr r3, [r3, #8]
005c63dc  08 30 81 e5                                      str r3, [r1, #8]
005c63e0  e6 ff ff ea                                      b #0x5c6380
005c63e4  04 60 91 e5                                      ldr r6, [r1, #4]
005c63e8  04 50 93 e5                                      ldr r5, [r3, #4]
005c63ec  05 00 56 e1                                      cmp r6, r5
005c63f0  f0 ff ff 1a                                      bne #0x5c63b8
005c63f4  08 60 91 e5                                      ldr r6, [r1, #8]
005c63f8  08 50 93 e5                                      ldr r5, [r3, #8]
005c63fc  05 00 56 e1                                      cmp r6, r5
005c6400  ec ff ff 1a                                      bne #0x5c63b8
005c6404  ef ff ff ea                                      b #0x5c63c8

; FUNCTION 0x005c69c4, declared_size=216, range_size=216, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector3d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS_4core8vector3dIiEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector3d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::setParameterCvt<glitch::core::vector3d<int> >(unsigned short, unsigned int, glitch::core::vector3d<int> const&)
; decoder-mode: arm
005c69c4  70 00 2d e9                                      push {r4, r5, r6}
005c69c8  04 40 90 e5                                      ldr r4, [r0, #4]
005c69cc  c0 c0 9f e5                                      ldr ip, [pc, #0xc0]
005c69d0  be 50 d4 e1                                      ldrh r5, [r4, #0xe]
005c69d4  0c c0 8f e0                                      add ip, pc, ip
005c69d8  01 00 55 e1                                      cmp r5, r1
005c69dc  20 00 00 9a                                      bls #0x5c6a64
005c69e0  20 40 94 e5                                      ldr r4, [r4, #0x20]
005c69e4  01 12 94 e0                                      adds r1, r4, r1, lsl #4
005c69e8  1d 00 00 0a                                      beq #0x5c6a64
005c69ec  a4 50 9f e5                                      ldr r5, [pc, #0xa4]
005c69f0  06 40 d1 e5                                      ldrb r4, [r1, #6]
005c69f4  05 c0 9c e7                                      ldr ip, [ip, r5]
005c69f8  04 c1 9c e7                                      ldr ip, [ip, r4, lsl #2]
005c69fc  08 00 1c e3                                      tst ip, #8
005c6a00  17 00 00 0a                                      beq #0x5c6a64
005c6a04  08 c0 91 e5                                      ldr ip, [r1, #8]
005c6a08  0c 00 52 e1                                      cmp r2, ip
005c6a0c  14 00 00 2a                                      bhs #0x5c6a64
005c6a10  03 00 54 e3                                      cmp r4, #3
005c6a14  0c c0 91 e5                                      ldr ip, [r1, #0xc]
005c6a18  01 00 a0 13                                      movne r0, #1
005c6a1c  11 00 00 1a                                      bne #0x5c6a68
005c6a20  20 20 80 e2                                      add r2, r0, #0x20
005c6a24  0c 10 92 e7                                      ldr r1, [r2, ip]
005c6a28  00 50 93 e5                                      ldr r5, [r3]
005c6a2c  0c 40 82 e0                                      add r4, r2, ip
005c6a30  05 00 51 e1                                      cmp r1, r5
005c6a34  0d 00 00 0a                                      beq #0x5c6a70
005c6a38  00 10 e0 e3                                      mvn r1, #0
005c6a3c  0c 10 80 e5                                      str r1, [r0, #0xc]
005c6a40  10 10 80 e5                                      str r1, [r0, #0x10]
005c6a44  00 10 93 e5                                      ldr r1, [r3]
005c6a48  0c 10 82 e7                                      str r1, [r2, ip]
005c6a4c  04 20 93 e5                                      ldr r2, [r3, #4]
005c6a50  01 00 a0 e3                                      mov r0, #1
005c6a54  04 20 84 e5                                      str r2, [r4, #4]
005c6a58  08 30 93 e5                                      ldr r3, [r3, #8]
005c6a5c  08 30 84 e5                                      str r3, [r4, #8]
005c6a60  00 00 00 ea                                      b #0x5c6a68
005c6a64  00 00 a0 e3                                      mov r0, #0
005c6a68  70 00 bd e8                                      pop {r4, r5, r6}
005c6a6c  1e ff 2f e1                                      bx lr
005c6a70  04 60 94 e5                                      ldr r6, [r4, #4]
005c6a74  04 50 93 e5                                      ldr r5, [r3, #4]
005c6a78  05 00 56 e1                                      cmp r6, r5
005c6a7c  ed ff ff 1a                                      bne #0x5c6a38
005c6a80  08 60 94 e5                                      ldr r6, [r4, #8]
005c6a84  08 50 93 e5                                      ldr r5, [r3, #8]
005c6a88  05 00 56 e1                                      cmp r6, r5
005c6a8c  e9 ff ff 1a                                      bne #0x5c6a38
005c6a90  ec ff ff ea                                      b #0x5c6a48
; mapping-symbol data/literal pool
005c6a94  bc e0 3c 00 a4 2c 00 00                          .byte 0xbc, 0xe0, 0x3c, 0x00, 0xa4, 0x2c, 0x00, 0x00

; FUNCTION 0x005c6ef0, declared_size=120, range_size=120, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector3d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE12getParameterINS_4core8vector3dIiEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRSE_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector3d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::getParameter<glitch::core::vector3d<int> >(unsigned short, unsigned int, glitch::core::vector3d<int>&) const
; decoder-mode: arm
005c6ef0  04 40 2d e5                                      str r4, [sp, #-4]!
005c6ef4  04 c0 90 e5                                      ldr ip, [r0, #4]
005c6ef8  be 40 dc e1                                      ldrh r4, [ip, #0xe]
005c6efc  01 00 54 e1                                      cmp r4, r1
005c6f00  05 00 00 9a                                      bls #0x5c6f1c
005c6f04  20 c0 9c e5                                      ldr ip, [ip, #0x20]
005c6f08  01 12 9c e0                                      adds r1, ip, r1, lsl #4
005c6f0c  02 00 00 0a                                      beq #0x5c6f1c
005c6f10  06 c0 d1 e5                                      ldrb ip, [r1, #6]
005c6f14  03 00 5c e3                                      cmp ip, #3
005c6f18  02 00 00 0a                                      beq #0x5c6f28
005c6f1c  00 00 a0 e3                                      mov r0, #0
005c6f20  10 00 bd e8                                      ldm sp!, {r4}
005c6f24  1e ff 2f e1                                      bx lr
005c6f28  08 c0 91 e5                                      ldr ip, [r1, #8]
005c6f2c  0c 00 52 e1                                      cmp r2, ip
005c6f30  f9 ff ff 2a                                      bhs #0x5c6f1c
005c6f34  0c c0 91 e5                                      ldr ip, [r1, #0xc]
005c6f38  20 10 80 e2                                      add r1, r0, #0x20
005c6f3c  0c 00 a0 e3                                      mov r0, #0xc
005c6f40  90 c2 22 e0                                      mla r2, r0, r2, ip
005c6f44  01 00 a0 e3                                      mov r0, #1
005c6f48  02 c0 91 e7                                      ldr ip, [r1, r2]
005c6f4c  02 20 81 e0                                      add r2, r1, r2
005c6f50  00 c0 83 e5                                      str ip, [r3]
005c6f54  04 10 92 e5                                      ldr r1, [r2, #4]
005c6f58  04 10 83 e5                                      str r1, [r3, #4]
005c6f5c  08 20 92 e5                                      ldr r2, [r2, #8]
005c6f60  08 20 83 e5                                      str r2, [r3, #8]
005c6f64  ed ff ff ea                                      b #0x5c6f20

; FUNCTION 0x005c739c, declared_size=148, range_size=148, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector3d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15getParameterCvtINS_4core8vector3dIiEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRSE_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector3d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::getParameterCvt<glitch::core::vector3d<int> >(unsigned short, unsigned int, glitch::core::vector3d<int>&) const
; decoder-mode: arm
005c739c  30 00 2d e9                                      push {r4, r5}
005c73a0  04 40 90 e5                                      ldr r4, [r0, #4]
005c73a4  7c c0 9f e5                                      ldr ip, [pc, #0x7c]
005c73a8  be 50 d4 e1                                      ldrh r5, [r4, #0xe]
005c73ac  0c c0 8f e0                                      add ip, pc, ip
005c73b0  01 00 55 e1                                      cmp r5, r1
005c73b4  18 00 00 9a                                      bls #0x5c741c
005c73b8  20 40 94 e5                                      ldr r4, [r4, #0x20]
005c73bc  01 12 94 e0                                      adds r1, r4, r1, lsl #4
005c73c0  15 00 00 0a                                      beq #0x5c741c
005c73c4  60 50 9f e5                                      ldr r5, [pc, #0x60]
005c73c8  06 40 d1 e5                                      ldrb r4, [r1, #6]
005c73cc  05 c0 9c e7                                      ldr ip, [ip, r5]
005c73d0  04 c1 9c e7                                      ldr ip, [ip, r4, lsl #2]
005c73d4  08 00 1c e3                                      tst ip, #8
005c73d8  0f 00 00 0a                                      beq #0x5c741c
005c73dc  08 c0 91 e5                                      ldr ip, [r1, #8]
005c73e0  0c 00 52 e1                                      cmp r2, ip
005c73e4  0c 00 00 2a                                      bhs #0x5c741c
005c73e8  0c 20 91 e5                                      ldr r2, [r1, #0xc]
005c73ec  03 00 54 e3                                      cmp r4, #3
005c73f0  20 00 80 02                                      addeq r0, r0, #0x20
005c73f4  02 10 90 07                                      ldreq r1, [r0, r2]
005c73f8  02 20 80 00                                      addeq r2, r0, r2
005c73fc  01 00 a0 13                                      movne r0, #1
005c7400  00 10 83 05                                      streq r1, [r3]
005c7404  04 10 92 05                                      ldreq r1, [r2, #4]
005c7408  01 00 a0 03                                      moveq r0, #1
005c740c  04 10 83 05                                      streq r1, [r3, #4]
005c7410  08 20 92 05                                      ldreq r2, [r2, #8]
005c7414  08 20 83 05                                      streq r2, [r3, #8]
005c7418  00 00 00 ea                                      b #0x5c7420
005c741c  00 00 a0 e3                                      mov r0, #0
005c7420  30 00 bd e8                                      pop {r4, r5}
005c7424  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
005c7428  e4 d6 3c 00 a4 2c 00 00                          .byte 0xe4, 0xd6, 0x3c, 0x00, 0xa4, 0x2c, 0x00, 0x00

; FUNCTION 0x005c8490, declared_size=244, range_size=244, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector3d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15getParameterCvtINS_4core8vector3dIiEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPSE_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector3d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::getParameterCvt<glitch::core::vector3d<int> >(unsigned short, glitch::core::vector3d<int>*, int) const
; decoder-mode: arm
005c8490  70 40 2d e9                                      push {r4, r5, r6, lr}
005c8494  04 50 90 e5                                      ldr r5, [r0, #4]
005c8498  dc 40 9f e5                                      ldr r4, [pc, #0xdc]
005c849c  02 c0 a0 e1                                      mov ip, r2
005c84a0  be 60 d5 e1                                      ldrh r6, [r5, #0xe]
005c84a4  04 40 8f e0                                      add r4, pc, r4
005c84a8  01 00 56 e1                                      cmp r6, r1
005c84ac  13 00 00 9a                                      bls #0x5c8500
005c84b0  20 20 95 e5                                      ldr r2, [r5, #0x20]
005c84b4  01 12 92 e0                                      adds r1, r2, r1, lsl #4
005c84b8  10 00 00 0a                                      beq #0x5c8500
005c84bc  bc 50 9f e5                                      ldr r5, [pc, #0xbc]
005c84c0  06 20 d1 e5                                      ldrb r2, [r1, #6]
005c84c4  05 40 94 e7                                      ldr r4, [r4, r5]
005c84c8  02 41 94 e7                                      ldr r4, [r4, r2, lsl #2]
005c84cc  08 00 14 e3                                      tst r4, #8
005c84d0  0a 00 00 0a                                      beq #0x5c8500
005c84d4  01 40 73 e2                                      rsbs r4, r3, #1
005c84d8  00 40 a0 33                                      movlo r4, #0
005c84dc  00 00 53 e3                                      cmp r3, #0
005c84e0  0c 00 53 13                                      cmpne r3, #0xc
005c84e4  07 00 00 1a                                      bne #0x5c8508
005c84e8  03 00 52 e3                                      cmp r2, #3
005c84ec  18 00 00 0a                                      beq #0x5c8554
005c84f0  00 00 54 e3                                      cmp r4, #0
005c84f4  03 00 00 0a                                      beq #0x5c8508
005c84f8  01 00 a0 e3                                      mov r0, #1
005c84fc  70 80 bd e8                                      pop {r4, r5, r6, pc}
005c8500  00 00 a0 e3                                      mov r0, #0
005c8504  70 80 bd e8                                      pop {r4, r5, r6, pc}
005c8508  03 00 52 e3                                      cmp r2, #3
005c850c  0c 40 91 e5                                      ldr r4, [r1, #0xc]
005c8510  f8 ff ff 1a                                      bne #0x5c84f8
005c8514  08 20 91 e5                                      ldr r2, [r1, #8]
005c8518  00 00 52 e3                                      cmp r2, #0
005c851c  f5 ff ff 0a                                      beq #0x5c84f8
005c8520  20 00 80 e2                                      add r0, r0, #0x20
005c8524  04 00 80 e0                                      add r0, r0, r4
005c8528  00 10 90 e5                                      ldr r1, [r0]
005c852c  01 20 52 e2                                      subs r2, r2, #1
005c8530  00 10 8c e5                                      str r1, [ip]
005c8534  04 10 90 e5                                      ldr r1, [r0, #4]
005c8538  04 10 8c e5                                      str r1, [ip, #4]
005c853c  08 10 90 e5                                      ldr r1, [r0, #8]
005c8540  0c 00 80 e2                                      add r0, r0, #0xc
005c8544  08 10 8c e5                                      str r1, [ip, #8]
005c8548  03 c0 8c e0                                      add ip, ip, r3
005c854c  f5 ff ff 1a                                      bne #0x5c8528
005c8550  e8 ff ff ea                                      b #0x5c84f8
005c8554  0c 20 91 e5                                      ldr r2, [r1, #0xc]
005c8558  08 30 91 e5                                      ldr r3, [r1, #8]
005c855c  20 10 80 e2                                      add r1, r0, #0x20
005c8560  02 10 81 e0                                      add r1, r1, r2
005c8564  0c 20 a0 e3                                      mov r2, #0xc
005c8568  92 03 02 e0                                      mul r2, r2, r3
005c856c  0c 00 a0 e1                                      mov r0, ip
005c8570  bc 18 f5 eb                                      bl #0x30e868
005c8574  01 00 a0 e3                                      mov r0, #1
005c8578  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005c857c  ec c5 3c 00 a4 2c 00 00                          .byte 0xec, 0xc5, 0x3c, 0x00, 0xa4, 0x2c, 0x00, 0x00

; FUNCTION 0x005c8c28, declared_size=180, range_size=180, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector3d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE12getParameterINS_4core8vector3dIiEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPSE_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector3d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::getParameter<glitch::core::vector3d<int> >(unsigned short, glitch::core::vector3d<int>*, int) const
; decoder-mode: arm
005c8c28  10 40 2d e9                                      push {r4, lr}
005c8c2c  04 40 90 e5                                      ldr r4, [r0, #4]
005c8c30  02 c0 a0 e1                                      mov ip, r2
005c8c34  be 20 d4 e1                                      ldrh r2, [r4, #0xe]
005c8c38  01 00 52 e1                                      cmp r2, r1
005c8c3c  05 00 00 9a                                      bls #0x5c8c58
005c8c40  20 20 94 e5                                      ldr r2, [r4, #0x20]
005c8c44  01 12 92 e0                                      adds r1, r2, r1, lsl #4
005c8c48  02 00 00 0a                                      beq #0x5c8c58
005c8c4c  06 20 d1 e5                                      ldrb r2, [r1, #6]
005c8c50  03 00 52 e3                                      cmp r2, #3
005c8c54  01 00 00 0a                                      beq #0x5c8c60
005c8c58  00 00 a0 e3                                      mov r0, #0
005c8c5c  10 80 bd e8                                      pop {r4, pc}
005c8c60  00 00 53 e3                                      cmp r3, #0
005c8c64  0c 00 53 13                                      cmpne r3, #0xc
005c8c68  11 00 00 0a                                      beq #0x5c8cb4
005c8c6c  08 20 91 e5                                      ldr r2, [r1, #8]
005c8c70  0c 10 91 e5                                      ldr r1, [r1, #0xc]
005c8c74  00 00 52 e3                                      cmp r2, #0
005c8c78  0b 00 00 0a                                      beq #0x5c8cac
005c8c7c  20 00 80 e2                                      add r0, r0, #0x20
005c8c80  01 00 80 e0                                      add r0, r0, r1
005c8c84  00 10 90 e5                                      ldr r1, [r0]
005c8c88  01 20 52 e2                                      subs r2, r2, #1
005c8c8c  00 10 8c e5                                      str r1, [ip]
005c8c90  04 10 90 e5                                      ldr r1, [r0, #4]
005c8c94  04 10 8c e5                                      str r1, [ip, #4]
005c8c98  08 10 90 e5                                      ldr r1, [r0, #8]
005c8c9c  0c 00 80 e2                                      add r0, r0, #0xc
005c8ca0  08 10 8c e5                                      str r1, [ip, #8]
005c8ca4  03 c0 8c e0                                      add ip, ip, r3
005c8ca8  f5 ff ff 1a                                      bne #0x5c8c84
005c8cac  01 00 a0 e3                                      mov r0, #1
005c8cb0  10 80 bd e8                                      pop {r4, pc}
005c8cb4  0c 20 91 e5                                      ldr r2, [r1, #0xc]
005c8cb8  08 30 91 e5                                      ldr r3, [r1, #8]
005c8cbc  20 10 80 e2                                      add r1, r0, #0x20
005c8cc0  02 10 81 e0                                      add r1, r1, r2
005c8cc4  0c 20 a0 e3                                      mov r2, #0xc
005c8cc8  92 03 02 e0                                      mul r2, r2, r3
005c8ccc  0c 00 a0 e1                                      mov r0, ip
005c8cd0  e4 16 f5 eb                                      bl #0x30e868
005c8cd4  01 00 a0 e3                                      mov r0, #1
005c8cd8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005c9880, declared_size=264, range_size=264, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector3d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS_4core8vector3dIiEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPKSE_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector3d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::setParameterCvt<glitch::core::vector3d<int> >(unsigned short, glitch::core::vector3d<int> const*, int)
; decoder-mode: arm
005c9880  70 40 2d e9                                      push {r4, r5, r6, lr}
005c9884  04 50 90 e5                                      ldr r5, [r0, #4]
005c9888  f0 40 9f e5                                      ldr r4, [pc, #0xf0]
005c988c  02 c0 a0 e1                                      mov ip, r2
005c9890  be 60 d5 e1                                      ldrh r6, [r5, #0xe]
005c9894  04 40 8f e0                                      add r4, pc, r4
005c9898  01 00 56 e1                                      cmp r6, r1
005c989c  18 00 00 9a                                      bls #0x5c9904
005c98a0  20 20 95 e5                                      ldr r2, [r5, #0x20]
005c98a4  01 12 92 e0                                      adds r1, r2, r1, lsl #4
005c98a8  15 00 00 0a                                      beq #0x5c9904
005c98ac  d0 20 9f e5                                      ldr r2, [pc, #0xd0]
005c98b0  06 50 d1 e5                                      ldrb r5, [r1, #6]
005c98b4  02 20 94 e7                                      ldr r2, [r4, r2]
005c98b8  05 21 92 e7                                      ldr r2, [r2, r5, lsl #2]
005c98bc  08 00 12 e3                                      tst r2, #8
005c98c0  0f 00 00 0a                                      beq #0x5c9904
005c98c4  00 20 e0 e3                                      mvn r2, #0
005c98c8  01 40 73 e2                                      rsbs r4, r3, #1
005c98cc  00 40 a0 33                                      movlo r4, #0
005c98d0  0c 20 80 e5                                      str r2, [r0, #0xc]
005c98d4  00 00 53 e3                                      cmp r3, #0
005c98d8  0c 00 53 13                                      cmpne r3, #0xc
005c98dc  10 20 80 e5                                      str r2, [r0, #0x10]
005c98e0  06 20 d1 15                                      ldrbne r2, [r1, #6]
005c98e4  08 00 00 1a                                      bne #0x5c990c
005c98e8  06 20 d1 e5                                      ldrb r2, [r1, #6]
005c98ec  03 00 52 e3                                      cmp r2, #3
005c98f0  18 00 00 0a                                      beq #0x5c9958
005c98f4  00 00 54 e3                                      cmp r4, #0
005c98f8  03 00 00 0a                                      beq #0x5c990c
005c98fc  01 00 a0 e3                                      mov r0, #1
005c9900  70 80 bd e8                                      pop {r4, r5, r6, pc}
005c9904  00 00 a0 e3                                      mov r0, #0
005c9908  70 80 bd e8                                      pop {r4, r5, r6, pc}
005c990c  03 00 52 e3                                      cmp r2, #3
005c9910  0c 40 91 e5                                      ldr r4, [r1, #0xc]
005c9914  f8 ff ff 1a                                      bne #0x5c98fc
005c9918  08 20 91 e5                                      ldr r2, [r1, #8]
005c991c  00 00 52 e3                                      cmp r2, #0
005c9920  f5 ff ff 0a                                      beq #0x5c98fc
005c9924  20 00 80 e2                                      add r0, r0, #0x20
005c9928  04 00 80 e0                                      add r0, r0, r4
005c992c  00 10 9c e5                                      ldr r1, [ip]
005c9930  01 20 52 e2                                      subs r2, r2, #1
005c9934  00 10 80 e5                                      str r1, [r0]
005c9938  04 10 9c e5                                      ldr r1, [ip, #4]
005c993c  04 10 80 e5                                      str r1, [r0, #4]
005c9940  08 10 9c e5                                      ldr r1, [ip, #8]
005c9944  03 c0 8c e0                                      add ip, ip, r3
005c9948  08 10 80 e5                                      str r1, [r0, #8]
005c994c  0c 00 80 e2                                      add r0, r0, #0xc
005c9950  f5 ff ff 1a                                      bne #0x5c992c
005c9954  e8 ff ff ea                                      b #0x5c98fc
005c9958  0c 20 91 e5                                      ldr r2, [r1, #0xc]
005c995c  08 30 91 e5                                      ldr r3, [r1, #8]
005c9960  20 00 80 e2                                      add r0, r0, #0x20
005c9964  02 00 80 e0                                      add r0, r0, r2
005c9968  0c 20 a0 e3                                      mov r2, #0xc
005c996c  92 03 02 e0                                      mul r2, r2, r3
005c9970  0c 10 a0 e1                                      mov r1, ip
005c9974  bb 13 f5 eb                                      bl #0x30e868
005c9978  01 00 a0 e3                                      mov r0, #1
005c997c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005c9980  fc b1 3c 00 a4 2c 00 00                          .byte 0xfc, 0xb1, 0x3c, 0x00, 0xa4, 0x2c, 0x00, 0x00

; FUNCTION 0x005ca0e4, declared_size=192, range_size=192, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector3d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE12setParameterINS_4core8vector3dIiEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPKSE_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector3d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::setParameter<glitch::core::vector3d<int> >(unsigned short, glitch::core::vector3d<int> const*, int)
; decoder-mode: arm
005ca0e4  10 40 2d e9                                      push {r4, lr}
005ca0e8  04 40 90 e5                                      ldr r4, [r0, #4]
005ca0ec  02 c0 a0 e1                                      mov ip, r2
005ca0f0  be 20 d4 e1                                      ldrh r2, [r4, #0xe]
005ca0f4  01 00 52 e1                                      cmp r2, r1
005ca0f8  05 00 00 9a                                      bls #0x5ca114
005ca0fc  20 20 94 e5                                      ldr r2, [r4, #0x20]
005ca100  01 12 92 e0                                      adds r1, r2, r1, lsl #4
005ca104  02 00 00 0a                                      beq #0x5ca114
005ca108  06 20 d1 e5                                      ldrb r2, [r1, #6]
005ca10c  03 00 52 e3                                      cmp r2, #3
005ca110  01 00 00 0a                                      beq #0x5ca11c
005ca114  00 00 a0 e3                                      mov r0, #0
005ca118  10 80 bd e8                                      pop {r4, pc}
005ca11c  00 20 e0 e3                                      mvn r2, #0
005ca120  00 00 53 e3                                      cmp r3, #0
005ca124  0c 00 53 13                                      cmpne r3, #0xc
005ca128  0c 20 80 e5                                      str r2, [r0, #0xc]
005ca12c  10 20 80 e5                                      str r2, [r0, #0x10]
005ca130  11 00 00 0a                                      beq #0x5ca17c
005ca134  08 20 91 e5                                      ldr r2, [r1, #8]
005ca138  0c 10 91 e5                                      ldr r1, [r1, #0xc]
005ca13c  00 00 52 e3                                      cmp r2, #0
005ca140  0b 00 00 0a                                      beq #0x5ca174
005ca144  20 00 80 e2                                      add r0, r0, #0x20
005ca148  01 00 80 e0                                      add r0, r0, r1
005ca14c  00 10 9c e5                                      ldr r1, [ip]
005ca150  01 20 52 e2                                      subs r2, r2, #1
005ca154  00 10 80 e5                                      str r1, [r0]
005ca158  04 10 9c e5                                      ldr r1, [ip, #4]
005ca15c  04 10 80 e5                                      str r1, [r0, #4]
005ca160  08 10 9c e5                                      ldr r1, [ip, #8]
005ca164  03 c0 8c e0                                      add ip, ip, r3
005ca168  08 10 80 e5                                      str r1, [r0, #8]
005ca16c  0c 00 80 e2                                      add r0, r0, #0xc
005ca170  f5 ff ff 1a                                      bne #0x5ca14c
005ca174  01 00 a0 e3                                      mov r0, #1
005ca178  10 80 bd e8                                      pop {r4, pc}
005ca17c  0c 20 91 e5                                      ldr r2, [r1, #0xc]
005ca180  08 30 91 e5                                      ldr r3, [r1, #8]
005ca184  20 00 80 e2                                      add r0, r0, #0x20
005ca188  02 00 80 e0                                      add r0, r0, r2
005ca18c  0c 20 a0 e3                                      mov r2, #0xc
005ca190  92 03 02 e0                                      mul r2, r2, r3
005ca194  0c 10 a0 e1                                      mov r1, ip
005ca198  b2 11 f5 eb                                      bl #0x30e868
005ca19c  01 00 a0 e3                                      mov r0, #1
005ca1a0  10 80 bd e8                                      pop {r4, pc}

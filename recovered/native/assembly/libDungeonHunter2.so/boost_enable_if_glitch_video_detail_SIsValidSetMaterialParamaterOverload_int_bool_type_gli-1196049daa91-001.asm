; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005c623c, declared_size=120, range_size=120, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<int>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE12setParameterIiEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSB_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<int>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::setParameter<int>(unsigned short, unsigned int, int const&)
; decoder-mode: arm
005c623c  04 40 2d e5                                      str r4, [sp, #-4]!
005c6240  04 c0 90 e5                                      ldr ip, [r0, #4]
005c6244  be 40 dc e1                                      ldrh r4, [ip, #0xe]
005c6248  01 00 54 e1                                      cmp r4, r1
005c624c  05 00 00 9a                                      bls #0x5c6268
005c6250  20 c0 9c e5                                      ldr ip, [ip, #0x20]
005c6254  01 12 9c e0                                      adds r1, ip, r1, lsl #4
005c6258  02 00 00 0a                                      beq #0x5c6268
005c625c  06 c0 d1 e5                                      ldrb ip, [r1, #6]
005c6260  01 00 5c e3                                      cmp ip, #1
005c6264  02 00 00 0a                                      beq #0x5c6274
005c6268  00 00 a0 e3                                      mov r0, #0
005c626c  10 00 bd e8                                      ldm sp!, {r4}
005c6270  1e ff 2f e1                                      bx lr
005c6274  08 c0 91 e5                                      ldr ip, [r1, #8]
005c6278  0c 00 52 e1                                      cmp r2, ip
005c627c  f9 ff ff 2a                                      bhs #0x5c6268
005c6280  0c 10 91 e5                                      ldr r1, [r1, #0xc]
005c6284  20 c0 80 e2                                      add ip, r0, #0x20
005c6288  00 40 93 e5                                      ldr r4, [r3]
005c628c  02 21 81 e0                                      add r2, r1, r2, lsl #2
005c6290  02 10 9c e7                                      ldr r1, [ip, r2]
005c6294  04 00 51 e1                                      cmp r1, r4
005c6298  00 10 e0 13                                      mvnne r1, #0
005c629c  0c 10 80 15                                      strne r1, [r0, #0xc]
005c62a0  10 10 80 15                                      strne r1, [r0, #0x10]
005c62a4  00 10 93 15                                      ldrne r1, [r3]
005c62a8  01 00 a0 e3                                      mov r0, #1
005c62ac  02 10 8c e7                                      str r1, [ip, r2]
005c62b0  ed ff ff ea                                      b #0x5c626c

; FUNCTION 0x005c6834, declared_size=208, range_size=208, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<int>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtIiEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSB_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<int>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::setParameterCvt<int>(unsigned short, unsigned int, int const&)
; decoder-mode: arm
005c6834  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005c6838  04 c0 90 e5                                      ldr ip, [r0, #4]
005c683c  00 40 a0 e1                                      mov r4, r0
005c6840  b4 00 9f e5                                      ldr r0, [pc, #0xb4]
005c6844  be 50 dc e1                                      ldrh r5, [ip, #0xe]
005c6848  00 00 8f e0                                      add r0, pc, r0
005c684c  01 00 55 e1                                      cmp r5, r1
005c6850  1d 00 00 9a                                      bls #0x5c68cc
005c6854  20 c0 9c e5                                      ldr ip, [ip, #0x20]
005c6858  01 12 9c e0                                      adds r1, ip, r1, lsl #4
005c685c  1a 00 00 0a                                      beq #0x5c68cc
005c6860  98 50 9f e5                                      ldr r5, [pc, #0x98]
005c6864  06 c0 d1 e5                                      ldrb ip, [r1, #6]
005c6868  05 00 90 e7                                      ldr r0, [r0, r5]
005c686c  0c 01 90 e7                                      ldr r0, [r0, ip, lsl #2]
005c6870  02 00 10 e3                                      tst r0, #2
005c6874  14 00 00 0a                                      beq #0x5c68cc
005c6878  08 00 91 e5                                      ldr r0, [r1, #8]
005c687c  00 00 52 e1                                      cmp r2, r0
005c6880  11 00 00 2a                                      bhs #0x5c68cc
005c6884  01 00 5c e3                                      cmp ip, #1
005c6888  0c 50 91 e5                                      ldr r5, [r1, #0xc]
005c688c  20 60 84 e2                                      add r6, r4, #0x20
005c6890  0f 00 00 0a                                      beq #0x5c68d4
005c6894  05 00 5c e3                                      cmp ip, #5
005c6898  09 00 00 1a                                      bne #0x5c68c4
005c689c  00 00 93 e5                                      ldr r0, [r3]
005c68a0  2f 20 f5 eb                                      bl #0x30e964
005c68a4  05 10 96 e7                                      ldr r1, [r6, r5]
005c68a8  00 70 a0 e1                                      mov r7, r0
005c68ac  b6 1d f5 eb                                      bl #0x30df8c
005c68b0  00 00 50 e3                                      cmp r0, #0
005c68b4  00 30 e0 03                                      mvneq r3, #0
005c68b8  0c 30 84 05                                      streq r3, [r4, #0xc]
005c68bc  10 30 84 05                                      streq r3, [r4, #0x10]
005c68c0  05 70 86 e7                                      str r7, [r6, r5]
005c68c4  01 00 a0 e3                                      mov r0, #1
005c68c8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005c68cc  00 00 a0 e3                                      mov r0, #0
005c68d0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005c68d4  05 20 96 e7                                      ldr r2, [r6, r5]
005c68d8  00 10 93 e5                                      ldr r1, [r3]
005c68dc  01 00 a0 e3                                      mov r0, #1
005c68e0  01 00 52 e1                                      cmp r2, r1
005c68e4  00 20 e0 13                                      mvnne r2, #0
005c68e8  0c 20 84 15                                      strne r2, [r4, #0xc]
005c68ec  10 20 84 15                                      strne r2, [r4, #0x10]
005c68f0  00 20 93 15                                      ldrne r2, [r3]
005c68f4  05 20 86 e7                                      str r2, [r6, r5]
005c68f8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
005c68fc  48 e2 3c 00 a4 2c 00 00                          .byte 0x48, 0xe2, 0x3c, 0x00, 0xa4, 0x2c, 0x00, 0x00

; FUNCTION 0x005c6e24, declared_size=96, range_size=96, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<int>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE12getParameterIiEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRSB_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<int>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::getParameter<int>(unsigned short, unsigned int, int&) const
; decoder-mode: arm
005c6e24  04 40 2d e5                                      str r4, [sp, #-4]!
005c6e28  04 c0 90 e5                                      ldr ip, [r0, #4]
005c6e2c  be 40 dc e1                                      ldrh r4, [ip, #0xe]
005c6e30  01 00 54 e1                                      cmp r4, r1
005c6e34  05 00 00 9a                                      bls #0x5c6e50
005c6e38  20 c0 9c e5                                      ldr ip, [ip, #0x20]
005c6e3c  01 12 9c e0                                      adds r1, ip, r1, lsl #4
005c6e40  02 00 00 0a                                      beq #0x5c6e50
005c6e44  06 c0 d1 e5                                      ldrb ip, [r1, #6]
005c6e48  01 00 5c e3                                      cmp ip, #1
005c6e4c  02 00 00 0a                                      beq #0x5c6e5c
005c6e50  00 00 a0 e3                                      mov r0, #0
005c6e54  10 00 bd e8                                      ldm sp!, {r4}
005c6e58  1e ff 2f e1                                      bx lr
005c6e5c  08 40 91 e5                                      ldr r4, [r1, #8]
005c6e60  04 00 52 e1                                      cmp r2, r4
005c6e64  f9 ff ff 2a                                      bhs #0x5c6e50
005c6e68  0c 10 91 e5                                      ldr r1, [r1, #0xc]
005c6e6c  02 21 80 e0                                      add r2, r0, r2, lsl #2
005c6e70  0c 00 a0 e1                                      mov r0, ip
005c6e74  01 20 82 e0                                      add r2, r2, r1
005c6e78  20 20 92 e5                                      ldr r2, [r2, #0x20]
005c6e7c  00 20 83 e5                                      str r2, [r3]
005c6e80  f3 ff ff ea                                      b #0x5c6e54

; FUNCTION 0x005c7274, declared_size=156, range_size=156, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<int>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15getParameterCvtIiEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRSB_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<int>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::getParameterCvt<int>(unsigned short, unsigned int, int&) const
; decoder-mode: arm
005c7274  70 40 2d e9                                      push {r4, r5, r6, lr}
005c7278  04 40 90 e5                                      ldr r4, [r0, #4]
005c727c  84 c0 9f e5                                      ldr ip, [pc, #0x84]
005c7280  be 50 d4 e1                                      ldrh r5, [r4, #0xe]
005c7284  0c c0 8f e0                                      add ip, pc, ip
005c7288  01 00 55 e1                                      cmp r5, r1
005c728c  03 50 a0 e1                                      mov r5, r3
005c7290  16 00 00 9a                                      bls #0x5c72f0
005c7294  20 30 94 e5                                      ldr r3, [r4, #0x20]
005c7298  01 12 93 e0                                      adds r1, r3, r1, lsl #4
005c729c  13 00 00 0a                                      beq #0x5c72f0
005c72a0  64 40 9f e5                                      ldr r4, [pc, #0x64]
005c72a4  06 30 d1 e5                                      ldrb r3, [r1, #6]
005c72a8  04 c0 9c e7                                      ldr ip, [ip, r4]
005c72ac  03 c1 9c e7                                      ldr ip, [ip, r3, lsl #2]
005c72b0  02 00 1c e3                                      tst ip, #2
005c72b4  0d 00 00 0a                                      beq #0x5c72f0
005c72b8  08 c0 91 e5                                      ldr ip, [r1, #8]
005c72bc  0c 00 52 e1                                      cmp r2, ip
005c72c0  0a 00 00 2a                                      bhs #0x5c72f0
005c72c4  01 00 53 e3                                      cmp r3, #1
005c72c8  20 00 80 e2                                      add r0, r0, #0x20
005c72cc  0c 20 91 e5                                      ldr r2, [r1, #0xc]
005c72d0  08 00 00 0a                                      beq #0x5c72f8
005c72d4  05 00 53 e3                                      cmp r3, #5
005c72d8  02 00 00 1a                                      bne #0x5c72e8
005c72dc  02 00 90 e7                                      ldr r0, [r0, r2]
005c72e0  79 1c f5 eb                                      bl #0x30e4cc
005c72e4  00 00 85 e5                                      str r0, [r5]
005c72e8  01 00 a0 e3                                      mov r0, #1
005c72ec  70 80 bd e8                                      pop {r4, r5, r6, pc}
005c72f0  00 00 a0 e3                                      mov r0, #0
005c72f4  70 80 bd e8                                      pop {r4, r5, r6, pc}
005c72f8  02 20 90 e7                                      ldr r2, [r0, r2]
005c72fc  03 00 a0 e1                                      mov r0, r3
005c7300  00 20 85 e5                                      str r2, [r5]
005c7304  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005c7308  0c d8 3c 00 a4 2c 00 00                          .byte 0x0c, 0xd8, 0x3c, 0x00, 0xa4, 0x2c, 0x00, 0x00

; FUNCTION 0x005c8670, declared_size=220, range_size=220, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<int>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15getParameterCvtIiEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPSB_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<int>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::getParameterCvt<int>(unsigned short, int*, int) const
; decoder-mode: arm
005c8670  70 40 2d e9                                      push {r4, r5, r6, lr}
005c8674  04 40 90 e5                                      ldr r4, [r0, #4]
005c8678  c4 c0 9f e5                                      ldr ip, [pc, #0xc4]
005c867c  be 50 d4 e1                                      ldrh r5, [r4, #0xe]
005c8680  0c c0 8f e0                                      add ip, pc, ip
005c8684  01 00 55 e1                                      cmp r5, r1
005c8688  13 00 00 9a                                      bls #0x5c86dc
005c868c  20 40 94 e5                                      ldr r4, [r4, #0x20]
005c8690  01 12 94 e0                                      adds r1, r4, r1, lsl #4
005c8694  10 00 00 0a                                      beq #0x5c86dc
005c8698  a8 50 9f e5                                      ldr r5, [pc, #0xa8]
005c869c  06 40 d1 e5                                      ldrb r4, [r1, #6]
005c86a0  05 c0 9c e7                                      ldr ip, [ip, r5]
005c86a4  04 c1 9c e7                                      ldr ip, [ip, r4, lsl #2]
005c86a8  02 00 1c e3                                      tst ip, #2
005c86ac  0a 00 00 0a                                      beq #0x5c86dc
005c86b0  01 c0 73 e2                                      rsbs ip, r3, #1
005c86b4  00 c0 a0 33                                      movlo ip, #0
005c86b8  00 00 53 e3                                      cmp r3, #0
005c86bc  04 00 53 13                                      cmpne r3, #4
005c86c0  07 00 00 1a                                      bne #0x5c86e4
005c86c4  01 00 54 e3                                      cmp r4, #1
005c86c8  14 00 00 0a                                      beq #0x5c8720
005c86cc  00 00 5c e3                                      cmp ip, #0
005c86d0  03 00 00 0a                                      beq #0x5c86e4
005c86d4  01 00 a0 e3                                      mov r0, #1
005c86d8  70 80 bd e8                                      pop {r4, r5, r6, pc}
005c86dc  00 00 a0 e3                                      mov r0, #0
005c86e0  70 80 bd e8                                      pop {r4, r5, r6, pc}
005c86e4  01 00 54 e3                                      cmp r4, #1
005c86e8  0c c0 91 e5                                      ldr ip, [r1, #0xc]
005c86ec  f8 ff ff 1a                                      bne #0x5c86d4
005c86f0  08 40 91 e5                                      ldr r4, [r1, #8]
005c86f4  00 00 54 e3                                      cmp r4, #0
005c86f8  f5 ff ff 0a                                      beq #0x5c86d4
005c86fc  20 00 80 e2                                      add r0, r0, #0x20
005c8700  0c 00 80 e0                                      add r0, r0, ip
005c8704  00 10 a0 e3                                      mov r1, #0
005c8708  01 c1 90 e7                                      ldr ip, [r0, r1, lsl #2]
005c870c  01 10 81 e2                                      add r1, r1, #1
005c8710  04 00 51 e1                                      cmp r1, r4
005c8714  03 c0 82 e6                                      str ip, [r2], r3
005c8718  fa ff ff 1a                                      bne #0x5c8708
005c871c  ec ff ff ea                                      b #0x5c86d4
005c8720  0c c0 91 e5                                      ldr ip, [r1, #0xc]
005c8724  08 30 91 e5                                      ldr r3, [r1, #8]
005c8728  20 10 80 e2                                      add r1, r0, #0x20
005c872c  0c 10 81 e0                                      add r1, r1, ip
005c8730  02 00 a0 e1                                      mov r0, r2
005c8734  03 21 a0 e1                                      lsl r2, r3, #2
005c8738  4a 18 f5 eb                                      bl #0x30e868
005c873c  04 00 a0 e1                                      mov r0, r4
005c8740  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005c8744  10 c4 3c 00 a4 2c 00 00                          .byte 0x10, 0xc4, 0x3c, 0x00, 0xa4, 0x2c, 0x00, 0x00

; FUNCTION 0x005c8d8c, declared_size=160, range_size=160, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<int>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE12getParameterIiEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPSB_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<int>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::getParameter<int>(unsigned short, int*, int) const
; decoder-mode: arm
005c8d8c  10 40 2d e9                                      push {r4, lr}
005c8d90  04 c0 90 e5                                      ldr ip, [r0, #4]
005c8d94  be 40 dc e1                                      ldrh r4, [ip, #0xe]
005c8d98  01 00 54 e1                                      cmp r4, r1
005c8d9c  05 00 00 9a                                      bls #0x5c8db8
005c8da0  20 c0 9c e5                                      ldr ip, [ip, #0x20]
005c8da4  01 c2 9c e0                                      adds ip, ip, r1, lsl #4
005c8da8  02 00 00 0a                                      beq #0x5c8db8
005c8dac  06 40 dc e5                                      ldrb r4, [ip, #6]
005c8db0  01 00 54 e3                                      cmp r4, #1
005c8db4  01 00 00 0a                                      beq #0x5c8dc0
005c8db8  00 00 a0 e3                                      mov r0, #0
005c8dbc  10 80 bd e8                                      pop {r4, pc}
005c8dc0  00 00 53 e3                                      cmp r3, #0
005c8dc4  04 00 53 13                                      cmpne r3, #4
005c8dc8  00 10 a0 13                                      movne r1, #0
005c8dcc  01 10 a0 03                                      moveq r1, #1
005c8dd0  0c 00 00 0a                                      beq #0x5c8e08
005c8dd4  08 40 9c e5                                      ldr r4, [ip, #8]
005c8dd8  0c c0 9c e5                                      ldr ip, [ip, #0xc]
005c8ddc  00 00 54 e3                                      cmp r4, #0
005c8de0  06 00 00 0a                                      beq #0x5c8e00
005c8de4  20 00 80 e2                                      add r0, r0, #0x20
005c8de8  0c 00 80 e0                                      add r0, r0, ip
005c8dec  01 c1 90 e7                                      ldr ip, [r0, r1, lsl #2]
005c8df0  01 10 81 e2                                      add r1, r1, #1
005c8df4  01 00 54 e1                                      cmp r4, r1
005c8df8  03 c0 82 e6                                      str ip, [r2], r3
005c8dfc  fa ff ff 1a                                      bne #0x5c8dec
005c8e00  01 00 a0 e3                                      mov r0, #1
005c8e04  10 80 bd e8                                      pop {r4, pc}
005c8e08  0c 10 9c e5                                      ldr r1, [ip, #0xc]
005c8e0c  08 30 9c e5                                      ldr r3, [ip, #8]
005c8e10  20 00 80 e2                                      add r0, r0, #0x20
005c8e14  01 10 80 e0                                      add r1, r0, r1
005c8e18  02 00 a0 e1                                      mov r0, r2
005c8e1c  03 21 a0 e1                                      lsl r2, r3, #2
005c8e20  90 16 f5 eb                                      bl #0x30e868
005c8e24  04 00 a0 e1                                      mov r0, r4
005c8e28  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005c9a88, declared_size=300, range_size=300, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<int>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtIiEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPKSB_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<int>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::setParameterCvt<int>(unsigned short, int const*, int)
; decoder-mode: arm
005c9a88  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005c9a8c  04 40 90 e5                                      ldr r4, [r0, #4]
005c9a90  14 c1 9f e5                                      ldr ip, [pc, #0x114]
005c9a94  02 50 a0 e1                                      mov r5, r2
005c9a98  be 60 d4 e1                                      ldrh r6, [r4, #0xe]
005c9a9c  0c c0 8f e0                                      add ip, pc, ip
005c9aa0  03 70 a0 e1                                      mov r7, r3
005c9aa4  01 00 56 e1                                      cmp r6, r1
005c9aa8  18 00 00 9a                                      bls #0x5c9b10
005c9aac  20 30 94 e5                                      ldr r3, [r4, #0x20]
005c9ab0  01 12 93 e0                                      adds r1, r3, r1, lsl #4
005c9ab4  15 00 00 0a                                      beq #0x5c9b10
005c9ab8  f0 30 9f e5                                      ldr r3, [pc, #0xf0]
005c9abc  06 20 d1 e5                                      ldrb r2, [r1, #6]
005c9ac0  03 30 9c e7                                      ldr r3, [ip, r3]
005c9ac4  02 31 93 e7                                      ldr r3, [r3, r2, lsl #2]
005c9ac8  02 00 13 e3                                      tst r3, #2
005c9acc  0f 00 00 0a                                      beq #0x5c9b10
005c9ad0  00 30 e0 e3                                      mvn r3, #0
005c9ad4  01 20 77 e2                                      rsbs r2, r7, #1
005c9ad8  00 20 a0 33                                      movlo r2, #0
005c9adc  0c 30 80 e5                                      str r3, [r0, #0xc]
005c9ae0  00 00 57 e3                                      cmp r7, #0
005c9ae4  04 00 57 13                                      cmpne r7, #4
005c9ae8  10 30 80 e5                                      str r3, [r0, #0x10]
005c9aec  06 40 d1 15                                      ldrbne r4, [r1, #6]
005c9af0  08 00 00 1a                                      bne #0x5c9b18
005c9af4  06 40 d1 e5                                      ldrb r4, [r1, #6]
005c9af8  01 00 54 e3                                      cmp r4, #1
005c9afc  21 00 00 0a                                      beq #0x5c9b88
005c9b00  00 00 52 e3                                      cmp r2, #0
005c9b04  03 00 00 0a                                      beq #0x5c9b18
005c9b08  01 00 a0 e3                                      mov r0, #1
005c9b0c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005c9b10  00 00 a0 e3                                      mov r0, #0
005c9b14  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005c9b18  0c 30 91 e5                                      ldr r3, [r1, #0xc]
005c9b1c  20 00 80 e2                                      add r0, r0, #0x20
005c9b20  01 00 54 e3                                      cmp r4, #1
005c9b24  03 60 80 e0                                      add r6, r0, r3
005c9b28  0c 00 00 0a                                      beq #0x5c9b60
005c9b2c  05 00 54 e3                                      cmp r4, #5
005c9b30  f4 ff ff 1a                                      bne #0x5c9b08
005c9b34  08 80 91 e5                                      ldr r8, [r1, #8]
005c9b38  00 00 58 e3                                      cmp r8, #0
005c9b3c  f1 ff ff 0a                                      beq #0x5c9b08
005c9b40  00 40 a0 e3                                      mov r4, #0
005c9b44  07 00 95 e6                                      ldr r0, [r5], r7
005c9b48  85 13 f5 eb                                      bl #0x30e964
005c9b4c  04 01 86 e7                                      str r0, [r6, r4, lsl #2]
005c9b50  01 40 84 e2                                      add r4, r4, #1
005c9b54  04 00 58 e1                                      cmp r8, r4
005c9b58  f9 ff ff 1a                                      bne #0x5c9b44
005c9b5c  e9 ff ff ea                                      b #0x5c9b08
005c9b60  08 10 91 e5                                      ldr r1, [r1, #8]
005c9b64  00 00 51 e3                                      cmp r1, #0
005c9b68  e6 ff ff 0a                                      beq #0x5c9b08
005c9b6c  00 30 a0 e3                                      mov r3, #0
005c9b70  07 20 95 e6                                      ldr r2, [r5], r7
005c9b74  03 21 86 e7                                      str r2, [r6, r3, lsl #2]
005c9b78  01 30 83 e2                                      add r3, r3, #1
005c9b7c  03 00 51 e1                                      cmp r1, r3
005c9b80  fa ff ff 1a                                      bne #0x5c9b70
005c9b84  df ff ff ea                                      b #0x5c9b08
005c9b88  08 20 91 e5                                      ldr r2, [r1, #8]
005c9b8c  0c 30 91 e5                                      ldr r3, [r1, #0xc]
005c9b90  20 00 80 e2                                      add r0, r0, #0x20
005c9b94  05 10 a0 e1                                      mov r1, r5
005c9b98  03 00 80 e0                                      add r0, r0, r3
005c9b9c  02 21 a0 e1                                      lsl r2, r2, #2
005c9ba0  30 13 f5 eb                                      bl #0x30e868
005c9ba4  04 00 a0 e1                                      mov r0, r4
005c9ba8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
005c9bac  f4 af 3c 00 a4 2c 00 00                          .byte 0xf4, 0xaf, 0x3c, 0x00, 0xa4, 0x2c, 0x00, 0x00

; FUNCTION 0x005ca260, declared_size=172, range_size=172, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<int>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE12setParameterIiEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPKSB_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<int>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::setParameter<int>(unsigned short, int const*, int)
; decoder-mode: arm
005ca260  70 40 2d e9                                      push {r4, r5, r6, lr}
005ca264  04 c0 90 e5                                      ldr ip, [r0, #4]
005ca268  be 40 dc e1                                      ldrh r4, [ip, #0xe]
005ca26c  01 00 54 e1                                      cmp r4, r1
005ca270  05 00 00 9a                                      bls #0x5ca28c
005ca274  20 c0 9c e5                                      ldr ip, [ip, #0x20]
005ca278  01 c2 9c e0                                      adds ip, ip, r1, lsl #4
005ca27c  02 00 00 0a                                      beq #0x5ca28c
005ca280  06 40 dc e5                                      ldrb r4, [ip, #6]
005ca284  01 00 54 e3                                      cmp r4, #1
005ca288  01 00 00 0a                                      beq #0x5ca294
005ca28c  00 00 a0 e3                                      mov r0, #0
005ca290  70 80 bd e8                                      pop {r4, r5, r6, pc}
005ca294  00 50 e0 e3                                      mvn r5, #0
005ca298  00 00 53 e3                                      cmp r3, #0
005ca29c  04 00 53 13                                      cmpne r3, #4
005ca2a0  00 10 a0 13                                      movne r1, #0
005ca2a4  01 10 a0 03                                      moveq r1, #1
005ca2a8  0c 50 80 e5                                      str r5, [r0, #0xc]
005ca2ac  10 50 80 e5                                      str r5, [r0, #0x10]
005ca2b0  0c 00 00 0a                                      beq #0x5ca2e8
005ca2b4  08 40 9c e5                                      ldr r4, [ip, #8]
005ca2b8  0c c0 9c e5                                      ldr ip, [ip, #0xc]
005ca2bc  00 00 54 e3                                      cmp r4, #0
005ca2c0  06 00 00 0a                                      beq #0x5ca2e0
005ca2c4  20 00 80 e2                                      add r0, r0, #0x20
005ca2c8  0c 00 80 e0                                      add r0, r0, ip
005ca2cc  03 c0 92 e6                                      ldr ip, [r2], r3
005ca2d0  01 c1 80 e7                                      str ip, [r0, r1, lsl #2]
005ca2d4  01 10 81 e2                                      add r1, r1, #1
005ca2d8  04 00 51 e1                                      cmp r1, r4
005ca2dc  fa ff ff 1a                                      bne #0x5ca2cc
005ca2e0  01 00 a0 e3                                      mov r0, #1
005ca2e4  70 80 bd e8                                      pop {r4, r5, r6, pc}
005ca2e8  08 30 9c e5                                      ldr r3, [ip, #8]
005ca2ec  0c c0 9c e5                                      ldr ip, [ip, #0xc]
005ca2f0  20 00 80 e2                                      add r0, r0, #0x20
005ca2f4  02 10 a0 e1                                      mov r1, r2
005ca2f8  0c 00 80 e0                                      add r0, r0, ip
005ca2fc  03 21 a0 e1                                      lsl r2, r3, #2
005ca300  58 11 f5 eb                                      bl #0x30e868
005ca304  04 00 a0 e1                                      mov r0, r4
005ca308  70 80 bd e8                                      pop {r4, r5, r6, pc}

; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005c64d4, declared_size=144, range_size=144, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<float>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE12setParameterIfEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSB_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<float>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::setParameter<float>(unsigned short, unsigned int, float const&)
; decoder-mode: arm
005c64d4  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
005c64d8  00 40 a0 e1                                      mov r4, r0
005c64dc  04 00 90 e5                                      ldr r0, [r0, #4]
005c64e0  0c d0 4d e2                                      sub sp, sp, #0xc
005c64e4  be c0 d0 e1                                      ldrh ip, [r0, #0xe]
005c64e8  01 00 5c e1                                      cmp ip, r1
005c64ec  05 00 00 9a                                      bls #0x5c6508
005c64f0  20 00 90 e5                                      ldr r0, [r0, #0x20]
005c64f4  01 12 90 e0                                      adds r1, r0, r1, lsl #4
005c64f8  02 00 00 0a                                      beq #0x5c6508
005c64fc  06 00 d1 e5                                      ldrb r0, [r1, #6]
005c6500  05 00 50 e3                                      cmp r0, #5
005c6504  02 00 00 0a                                      beq #0x5c6514
005c6508  00 00 a0 e3                                      mov r0, #0
005c650c  0c d0 8d e2                                      add sp, sp, #0xc
005c6510  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
005c6514  08 00 91 e5                                      ldr r0, [r1, #8]
005c6518  00 00 52 e1                                      cmp r2, r0
005c651c  f9 ff ff 2a                                      bhs #0x5c6508
005c6520  0c 60 91 e5                                      ldr r6, [r1, #0xc]
005c6524  00 50 93 e5                                      ldr r5, [r3]
005c6528  20 70 84 e2                                      add r7, r4, #0x20
005c652c  02 61 86 e0                                      add r6, r6, r2, lsl #2
005c6530  06 00 97 e7                                      ldr r0, [r7, r6]
005c6534  05 10 a0 e1                                      mov r1, r5
005c6538  04 30 8d e5                                      str r3, [sp, #4]
005c653c  92 1e f5 eb                                      bl #0x30df8c
005c6540  04 30 9d e5                                      ldr r3, [sp, #4]
005c6544  00 00 50 e3                                      cmp r0, #0
005c6548  00 20 e0 03                                      mvneq r2, #0
005c654c  0c 20 84 05                                      streq r2, [r4, #0xc]
005c6550  10 20 84 05                                      streq r2, [r4, #0x10]
005c6554  00 50 93 05                                      ldreq r5, [r3]
005c6558  01 00 a0 e3                                      mov r0, #1
005c655c  06 50 87 e7                                      str r5, [r7, r6]
005c6560  e9 ff ff ea                                      b #0x5c650c

; FUNCTION 0x005c6b8c, declared_size=212, range_size=212, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<float>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtIfEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSB_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<float>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::setParameterCvt<float>(unsigned short, unsigned int, float const&)
; decoder-mode: arm
005c6b8c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005c6b90  04 c0 90 e5                                      ldr ip, [r0, #4]
005c6b94  00 40 a0 e1                                      mov r4, r0
005c6b98  b8 00 9f e5                                      ldr r0, [pc, #0xb8]
005c6b9c  be 50 dc e1                                      ldrh r5, [ip, #0xe]
005c6ba0  00 00 8f e0                                      add r0, pc, r0
005c6ba4  01 00 55 e1                                      cmp r5, r1
005c6ba8  03 50 a0 e1                                      mov r5, r3
005c6bac  1d 00 00 9a                                      bls #0x5c6c28
005c6bb0  20 30 9c e5                                      ldr r3, [ip, #0x20]
005c6bb4  01 12 93 e0                                      adds r1, r3, r1, lsl #4
005c6bb8  1a 00 00 0a                                      beq #0x5c6c28
005c6bbc  98 c0 9f e5                                      ldr ip, [pc, #0x98]
005c6bc0  06 30 d1 e5                                      ldrb r3, [r1, #6]
005c6bc4  0c 00 90 e7                                      ldr r0, [r0, ip]
005c6bc8  03 01 90 e7                                      ldr r0, [r0, r3, lsl #2]
005c6bcc  20 00 10 e3                                      tst r0, #0x20
005c6bd0  14 00 00 0a                                      beq #0x5c6c28
005c6bd4  08 00 91 e5                                      ldr r0, [r1, #8]
005c6bd8  00 00 52 e1                                      cmp r2, r0
005c6bdc  11 00 00 2a                                      bhs #0x5c6c28
005c6be0  01 00 53 e3                                      cmp r3, #1
005c6be4  0c 60 91 e5                                      ldr r6, [r1, #0xc]
005c6be8  20 70 84 e2                                      add r7, r4, #0x20
005c6bec  0f 00 00 0a                                      beq #0x5c6c30
005c6bf0  05 00 53 e3                                      cmp r3, #5
005c6bf4  09 00 00 1a                                      bne #0x5c6c20
005c6bf8  00 80 95 e5                                      ldr r8, [r5]
005c6bfc  06 00 97 e7                                      ldr r0, [r7, r6]
005c6c00  08 10 a0 e1                                      mov r1, r8
005c6c04  e0 1c f5 eb                                      bl #0x30df8c
005c6c08  00 00 50 e3                                      cmp r0, #0
005c6c0c  00 30 e0 03                                      mvneq r3, #0
005c6c10  0c 30 84 05                                      streq r3, [r4, #0xc]
005c6c14  10 30 84 05                                      streq r3, [r4, #0x10]
005c6c18  00 80 95 05                                      ldreq r8, [r5]
005c6c1c  06 80 87 e7                                      str r8, [r7, r6]
005c6c20  01 00 a0 e3                                      mov r0, #1
005c6c24  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005c6c28  00 00 a0 e3                                      mov r0, #0
005c6c2c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005c6c30  00 00 95 e5                                      ldr r0, [r5]
005c6c34  24 1e f5 eb                                      bl #0x30e4cc
005c6c38  06 30 97 e7                                      ldr r3, [r7, r6]
005c6c3c  03 00 50 e1                                      cmp r0, r3
005c6c40  00 30 e0 13                                      mvnne r3, #0
005c6c44  0c 30 84 15                                      strne r3, [r4, #0xc]
005c6c48  10 30 84 15                                      strne r3, [r4, #0x10]
005c6c4c  06 00 87 e7                                      str r0, [r7, r6]
005c6c50  01 00 a0 e3                                      mov r0, #1
005c6c54  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
005c6c58  f0 de 3c 00 a4 2c 00 00                          .byte 0xf0, 0xde, 0x3c, 0x00, 0xa4, 0x2c, 0x00, 0x00

; FUNCTION 0x005c6fe4, declared_size=96, range_size=96, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<float>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE12getParameterIfEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRSB_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<float>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::getParameter<float>(unsigned short, unsigned int, float&) const
; decoder-mode: arm
005c6fe4  04 40 2d e5                                      str r4, [sp, #-4]!
005c6fe8  04 c0 90 e5                                      ldr ip, [r0, #4]
005c6fec  be 40 dc e1                                      ldrh r4, [ip, #0xe]
005c6ff0  01 00 54 e1                                      cmp r4, r1
005c6ff4  05 00 00 9a                                      bls #0x5c7010
005c6ff8  20 c0 9c e5                                      ldr ip, [ip, #0x20]
005c6ffc  01 12 9c e0                                      adds r1, ip, r1, lsl #4
005c7000  02 00 00 0a                                      beq #0x5c7010
005c7004  06 c0 d1 e5                                      ldrb ip, [r1, #6]
005c7008  05 00 5c e3                                      cmp ip, #5
005c700c  02 00 00 0a                                      beq #0x5c701c
005c7010  00 00 a0 e3                                      mov r0, #0
005c7014  10 00 bd e8                                      ldm sp!, {r4}
005c7018  1e ff 2f e1                                      bx lr
005c701c  08 c0 91 e5                                      ldr ip, [r1, #8]
005c7020  0c 00 52 e1                                      cmp r2, ip
005c7024  f9 ff ff 2a                                      bhs #0x5c7010
005c7028  0c 10 91 e5                                      ldr r1, [r1, #0xc]
005c702c  02 21 80 e0                                      add r2, r0, r2, lsl #2
005c7030  01 00 a0 e3                                      mov r0, #1
005c7034  01 20 82 e0                                      add r2, r2, r1
005c7038  20 20 92 e5                                      ldr r2, [r2, #0x20]
005c703c  00 20 83 e5                                      str r2, [r3]
005c7040  f3 ff ff ea                                      b #0x5c7014

; FUNCTION 0x005c74d0, declared_size=164, range_size=164, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<float>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15getParameterCvtIfEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRSB_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<float>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::getParameterCvt<float>(unsigned short, unsigned int, float&) const
; decoder-mode: arm
005c74d0  70 40 2d e9                                      push {r4, r5, r6, lr}
005c74d4  04 40 90 e5                                      ldr r4, [r0, #4]
005c74d8  8c c0 9f e5                                      ldr ip, [pc, #0x8c]
005c74dc  be 50 d4 e1                                      ldrh r5, [r4, #0xe]
005c74e0  0c c0 8f e0                                      add ip, pc, ip
005c74e4  01 00 55 e1                                      cmp r5, r1
005c74e8  03 50 a0 e1                                      mov r5, r3
005c74ec  13 00 00 9a                                      bls #0x5c7540
005c74f0  20 30 94 e5                                      ldr r3, [r4, #0x20]
005c74f4  01 12 93 e0                                      adds r1, r3, r1, lsl #4
005c74f8  10 00 00 0a                                      beq #0x5c7540
005c74fc  6c 30 9f e5                                      ldr r3, [pc, #0x6c]
005c7500  06 40 d1 e5                                      ldrb r4, [r1, #6]
005c7504  03 30 9c e7                                      ldr r3, [ip, r3]
005c7508  04 31 93 e7                                      ldr r3, [r3, r4, lsl #2]
005c750c  20 00 13 e3                                      tst r3, #0x20
005c7510  0a 00 00 0a                                      beq #0x5c7540
005c7514  08 30 91 e5                                      ldr r3, [r1, #8]
005c7518  03 00 52 e1                                      cmp r2, r3
005c751c  07 00 00 2a                                      bhs #0x5c7540
005c7520  01 00 54 e3                                      cmp r4, #1
005c7524  20 00 80 e2                                      add r0, r0, #0x20
005c7528  0c 30 91 e5                                      ldr r3, [r1, #0xc]
005c752c  05 00 00 0a                                      beq #0x5c7548
005c7530  05 00 54 e3                                      cmp r4, #5
005c7534  08 00 00 0a                                      beq #0x5c755c
005c7538  01 00 a0 e3                                      mov r0, #1
005c753c  70 80 bd e8                                      pop {r4, r5, r6, pc}
005c7540  00 00 a0 e3                                      mov r0, #0
005c7544  70 80 bd e8                                      pop {r4, r5, r6, pc}
005c7548  03 00 90 e7                                      ldr r0, [r0, r3]
005c754c  04 1d f5 eb                                      bl #0x30e964
005c7550  00 00 85 e5                                      str r0, [r5]
005c7554  04 00 a0 e1                                      mov r0, r4
005c7558  70 80 bd e8                                      pop {r4, r5, r6, pc}
005c755c  03 30 90 e7                                      ldr r3, [r0, r3]
005c7560  01 00 a0 e3                                      mov r0, #1
005c7564  00 30 85 e5                                      str r3, [r5]
005c7568  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005c756c  b0 d5 3c 00 a4 2c 00 00                          .byte 0xb0, 0xd5, 0x3c, 0x00, 0xa4, 0x2c, 0x00, 0x00

; FUNCTION 0x005c8284, declared_size=280, range_size=280, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<float>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15getParameterCvtIfEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPSB_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<float>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::getParameterCvt<float>(unsigned short, float*, int) const
; decoder-mode: arm
005c8284  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005c8288  04 50 90 e5                                      ldr r5, [r0, #4]
005c828c  00 c1 9f e5                                      ldr ip, [pc, #0x100]
005c8290  02 40 a0 e1                                      mov r4, r2
005c8294  be 60 d5 e1                                      ldrh r6, [r5, #0xe]
005c8298  0c c0 8f e0                                      add ip, pc, ip
005c829c  03 70 a0 e1                                      mov r7, r3
005c82a0  01 00 56 e1                                      cmp r6, r1
005c82a4  13 00 00 9a                                      bls #0x5c82f8
005c82a8  20 30 95 e5                                      ldr r3, [r5, #0x20]
005c82ac  01 12 93 e0                                      adds r1, r3, r1, lsl #4
005c82b0  10 00 00 0a                                      beq #0x5c82f8
005c82b4  dc 20 9f e5                                      ldr r2, [pc, #0xdc]
005c82b8  06 30 d1 e5                                      ldrb r3, [r1, #6]
005c82bc  02 20 9c e7                                      ldr r2, [ip, r2]
005c82c0  03 21 92 e7                                      ldr r2, [r2, r3, lsl #2]
005c82c4  20 00 12 e3                                      tst r2, #0x20
005c82c8  0a 00 00 0a                                      beq #0x5c82f8
005c82cc  01 20 77 e2                                      rsbs r2, r7, #1
005c82d0  00 20 a0 33                                      movlo r2, #0
005c82d4  00 00 57 e3                                      cmp r7, #0
005c82d8  04 00 57 13                                      cmpne r7, #4
005c82dc  07 00 00 1a                                      bne #0x5c8300
005c82e0  05 00 53 e3                                      cmp r3, #5
005c82e4  21 00 00 0a                                      beq #0x5c8370
005c82e8  00 00 52 e3                                      cmp r2, #0
005c82ec  03 00 00 0a                                      beq #0x5c8300
005c82f0  01 00 a0 e3                                      mov r0, #1
005c82f4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005c82f8  00 00 a0 e3                                      mov r0, #0
005c82fc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005c8300  0c 20 91 e5                                      ldr r2, [r1, #0xc]
005c8304  20 00 80 e2                                      add r0, r0, #0x20
005c8308  01 00 53 e3                                      cmp r3, #1
005c830c  02 60 80 e0                                      add r6, r0, r2
005c8310  0b 00 00 0a                                      beq #0x5c8344
005c8314  05 00 53 e3                                      cmp r3, #5
005c8318  f4 ff ff 1a                                      bne #0x5c82f0
005c831c  08 10 91 e5                                      ldr r1, [r1, #8]
005c8320  00 00 51 e3                                      cmp r1, #0
005c8324  f1 ff ff 0a                                      beq #0x5c82f0
005c8328  00 30 a0 e3                                      mov r3, #0
005c832c  03 21 96 e7                                      ldr r2, [r6, r3, lsl #2]
005c8330  01 30 83 e2                                      add r3, r3, #1
005c8334  03 00 51 e1                                      cmp r1, r3
005c8338  07 20 84 e6                                      str r2, [r4], r7
005c833c  fa ff ff 1a                                      bne #0x5c832c
005c8340  ea ff ff ea                                      b #0x5c82f0
005c8344  08 80 91 e5                                      ldr r8, [r1, #8]
005c8348  00 00 58 e3                                      cmp r8, #0
005c834c  e7 ff ff 0a                                      beq #0x5c82f0
005c8350  00 50 a0 e3                                      mov r5, #0
005c8354  05 01 96 e7                                      ldr r0, [r6, r5, lsl #2]
005c8358  81 19 f5 eb                                      bl #0x30e964
005c835c  01 50 85 e2                                      add r5, r5, #1
005c8360  08 00 55 e1                                      cmp r5, r8
005c8364  07 00 84 e6                                      str r0, [r4], r7
005c8368  f9 ff ff 1a                                      bne #0x5c8354
005c836c  df ff ff ea                                      b #0x5c82f0
005c8370  0c 30 91 e5                                      ldr r3, [r1, #0xc]
005c8374  08 20 91 e5                                      ldr r2, [r1, #8]
005c8378  20 10 80 e2                                      add r1, r0, #0x20
005c837c  03 10 81 e0                                      add r1, r1, r3
005c8380  04 00 a0 e1                                      mov r0, r4
005c8384  02 21 a0 e1                                      lsl r2, r2, #2
005c8388  36 19 f5 eb                                      bl #0x30e868
005c838c  01 00 a0 e3                                      mov r0, #1
005c8390  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
005c8394  f8 c7 3c 00 a4 2c 00 00                          .byte 0xf8, 0xc7, 0x3c, 0x00, 0xa4, 0x2c, 0x00, 0x00

; FUNCTION 0x005c8ad4, declared_size=160, range_size=160, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<float>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE12getParameterIfEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPSB_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<float>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::getParameter<float>(unsigned short, float*, int) const
; decoder-mode: arm
005c8ad4  10 40 2d e9                                      push {r4, lr}
005c8ad8  04 c0 90 e5                                      ldr ip, [r0, #4]
005c8adc  be 40 dc e1                                      ldrh r4, [ip, #0xe]
005c8ae0  01 00 54 e1                                      cmp r4, r1
005c8ae4  05 00 00 9a                                      bls #0x5c8b00
005c8ae8  20 c0 9c e5                                      ldr ip, [ip, #0x20]
005c8aec  01 c2 9c e0                                      adds ip, ip, r1, lsl #4
005c8af0  02 00 00 0a                                      beq #0x5c8b00
005c8af4  06 10 dc e5                                      ldrb r1, [ip, #6]
005c8af8  05 00 51 e3                                      cmp r1, #5
005c8afc  01 00 00 0a                                      beq #0x5c8b08
005c8b00  00 00 a0 e3                                      mov r0, #0
005c8b04  10 80 bd e8                                      pop {r4, pc}
005c8b08  00 00 53 e3                                      cmp r3, #0
005c8b0c  04 00 53 13                                      cmpne r3, #4
005c8b10  00 10 a0 13                                      movne r1, #0
005c8b14  01 10 a0 03                                      moveq r1, #1
005c8b18  0c 00 00 0a                                      beq #0x5c8b50
005c8b1c  08 40 9c e5                                      ldr r4, [ip, #8]
005c8b20  0c c0 9c e5                                      ldr ip, [ip, #0xc]
005c8b24  00 00 54 e3                                      cmp r4, #0
005c8b28  06 00 00 0a                                      beq #0x5c8b48
005c8b2c  20 00 80 e2                                      add r0, r0, #0x20
005c8b30  0c 00 80 e0                                      add r0, r0, ip
005c8b34  01 c1 90 e7                                      ldr ip, [r0, r1, lsl #2]
005c8b38  01 10 81 e2                                      add r1, r1, #1
005c8b3c  01 00 54 e1                                      cmp r4, r1
005c8b40  03 c0 82 e6                                      str ip, [r2], r3
005c8b44  fa ff ff 1a                                      bne #0x5c8b34
005c8b48  01 00 a0 e3                                      mov r0, #1
005c8b4c  10 80 bd e8                                      pop {r4, pc}
005c8b50  0c 10 9c e5                                      ldr r1, [ip, #0xc]
005c8b54  08 30 9c e5                                      ldr r3, [ip, #8]
005c8b58  20 00 80 e2                                      add r0, r0, #0x20
005c8b5c  01 10 80 e0                                      add r1, r0, r1
005c8b60  02 00 a0 e1                                      mov r0, r2
005c8b64  03 21 a0 e1                                      lsl r2, r3, #2
005c8b68  3e 17 f5 eb                                      bl #0x30e868
005c8b6c  01 00 a0 e3                                      mov r0, #1
005c8b70  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005c964c, declared_size=300, range_size=300, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<float>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtIfEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPKSB_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<float>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::setParameterCvt<float>(unsigned short, float const*, int)
; decoder-mode: arm
005c964c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005c9650  04 40 90 e5                                      ldr r4, [r0, #4]
005c9654  14 c1 9f e5                                      ldr ip, [pc, #0x114]
005c9658  02 50 a0 e1                                      mov r5, r2
005c965c  be 60 d4 e1                                      ldrh r6, [r4, #0xe]
005c9660  0c c0 8f e0                                      add ip, pc, ip
005c9664  03 70 a0 e1                                      mov r7, r3
005c9668  01 00 56 e1                                      cmp r6, r1
005c966c  18 00 00 9a                                      bls #0x5c96d4
005c9670  20 30 94 e5                                      ldr r3, [r4, #0x20]
005c9674  01 12 93 e0                                      adds r1, r3, r1, lsl #4
005c9678  15 00 00 0a                                      beq #0x5c96d4
005c967c  f0 30 9f e5                                      ldr r3, [pc, #0xf0]
005c9680  06 20 d1 e5                                      ldrb r2, [r1, #6]
005c9684  03 30 9c e7                                      ldr r3, [ip, r3]
005c9688  02 31 93 e7                                      ldr r3, [r3, r2, lsl #2]
005c968c  20 00 13 e3                                      tst r3, #0x20
005c9690  0f 00 00 0a                                      beq #0x5c96d4
005c9694  00 30 e0 e3                                      mvn r3, #0
005c9698  01 20 77 e2                                      rsbs r2, r7, #1
005c969c  00 20 a0 33                                      movlo r2, #0
005c96a0  0c 30 80 e5                                      str r3, [r0, #0xc]
005c96a4  00 00 57 e3                                      cmp r7, #0
005c96a8  04 00 57 13                                      cmpne r7, #4
005c96ac  10 30 80 e5                                      str r3, [r0, #0x10]
005c96b0  06 30 d1 15                                      ldrbne r3, [r1, #6]
005c96b4  08 00 00 1a                                      bne #0x5c96dc
005c96b8  06 30 d1 e5                                      ldrb r3, [r1, #6]
005c96bc  05 00 53 e3                                      cmp r3, #5
005c96c0  21 00 00 0a                                      beq #0x5c974c
005c96c4  00 00 52 e3                                      cmp r2, #0
005c96c8  03 00 00 0a                                      beq #0x5c96dc
005c96cc  01 00 a0 e3                                      mov r0, #1
005c96d0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005c96d4  00 00 a0 e3                                      mov r0, #0
005c96d8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005c96dc  0c 20 91 e5                                      ldr r2, [r1, #0xc]
005c96e0  20 00 80 e2                                      add r0, r0, #0x20
005c96e4  01 00 53 e3                                      cmp r3, #1
005c96e8  02 60 80 e0                                      add r6, r0, r2
005c96ec  0b 00 00 0a                                      beq #0x5c9720
005c96f0  05 00 53 e3                                      cmp r3, #5
005c96f4  f4 ff ff 1a                                      bne #0x5c96cc
005c96f8  08 10 91 e5                                      ldr r1, [r1, #8]
005c96fc  00 00 51 e3                                      cmp r1, #0
005c9700  f1 ff ff 0a                                      beq #0x5c96cc
005c9704  00 30 a0 e3                                      mov r3, #0
005c9708  07 20 95 e6                                      ldr r2, [r5], r7
005c970c  03 21 86 e7                                      str r2, [r6, r3, lsl #2]
005c9710  01 30 83 e2                                      add r3, r3, #1
005c9714  03 00 51 e1                                      cmp r1, r3
005c9718  fa ff ff 1a                                      bne #0x5c9708
005c971c  ea ff ff ea                                      b #0x5c96cc
005c9720  08 80 91 e5                                      ldr r8, [r1, #8]
005c9724  00 00 58 e3                                      cmp r8, #0
005c9728  e7 ff ff 0a                                      beq #0x5c96cc
005c972c  00 40 a0 e3                                      mov r4, #0
005c9730  07 00 95 e6                                      ldr r0, [r5], r7
005c9734  64 13 f5 eb                                      bl #0x30e4cc
005c9738  04 01 86 e7                                      str r0, [r6, r4, lsl #2]
005c973c  01 40 84 e2                                      add r4, r4, #1
005c9740  04 00 58 e1                                      cmp r8, r4
005c9744  f9 ff ff 1a                                      bne #0x5c9730
005c9748  df ff ff ea                                      b #0x5c96cc
005c974c  08 20 91 e5                                      ldr r2, [r1, #8]
005c9750  0c 30 91 e5                                      ldr r3, [r1, #0xc]
005c9754  20 00 80 e2                                      add r0, r0, #0x20
005c9758  05 10 a0 e1                                      mov r1, r5
005c975c  03 00 80 e0                                      add r0, r0, r3
005c9760  02 21 a0 e1                                      lsl r2, r2, #2
005c9764  3f 14 f5 eb                                      bl #0x30e868
005c9768  01 00 a0 e3                                      mov r0, #1
005c976c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
005c9770  30 b4 3c 00 a4 2c 00 00                          .byte 0x30, 0xb4, 0x3c, 0x00, 0xa4, 0x2c, 0x00, 0x00

; FUNCTION 0x005c9f78, declared_size=172, range_size=172, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<float>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE12setParameterIfEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPKSB_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<float>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::setParameter<float>(unsigned short, float const*, int)
; decoder-mode: arm
005c9f78  10 40 2d e9                                      push {r4, lr}
005c9f7c  04 c0 90 e5                                      ldr ip, [r0, #4]
005c9f80  be 40 dc e1                                      ldrh r4, [ip, #0xe]
005c9f84  01 00 54 e1                                      cmp r4, r1
005c9f88  05 00 00 9a                                      bls #0x5c9fa4
005c9f8c  20 c0 9c e5                                      ldr ip, [ip, #0x20]
005c9f90  01 c2 9c e0                                      adds ip, ip, r1, lsl #4
005c9f94  02 00 00 0a                                      beq #0x5c9fa4
005c9f98  06 10 dc e5                                      ldrb r1, [ip, #6]
005c9f9c  05 00 51 e3                                      cmp r1, #5
005c9fa0  01 00 00 0a                                      beq #0x5c9fac
005c9fa4  00 00 a0 e3                                      mov r0, #0
005c9fa8  10 80 bd e8                                      pop {r4, pc}
005c9fac  00 40 e0 e3                                      mvn r4, #0
005c9fb0  00 00 53 e3                                      cmp r3, #0
005c9fb4  04 00 53 13                                      cmpne r3, #4
005c9fb8  00 10 a0 13                                      movne r1, #0
005c9fbc  01 10 a0 03                                      moveq r1, #1
005c9fc0  0c 40 80 e5                                      str r4, [r0, #0xc]
005c9fc4  10 40 80 e5                                      str r4, [r0, #0x10]
005c9fc8  0c 00 00 0a                                      beq #0x5ca000
005c9fcc  08 40 9c e5                                      ldr r4, [ip, #8]
005c9fd0  0c c0 9c e5                                      ldr ip, [ip, #0xc]
005c9fd4  00 00 54 e3                                      cmp r4, #0
005c9fd8  06 00 00 0a                                      beq #0x5c9ff8
005c9fdc  20 00 80 e2                                      add r0, r0, #0x20
005c9fe0  0c 00 80 e0                                      add r0, r0, ip
005c9fe4  03 c0 92 e6                                      ldr ip, [r2], r3
005c9fe8  01 c1 80 e7                                      str ip, [r0, r1, lsl #2]
005c9fec  01 10 81 e2                                      add r1, r1, #1
005c9ff0  04 00 51 e1                                      cmp r1, r4
005c9ff4  fa ff ff 1a                                      bne #0x5c9fe4
005c9ff8  01 00 a0 e3                                      mov r0, #1
005c9ffc  10 80 bd e8                                      pop {r4, pc}
005ca000  08 30 9c e5                                      ldr r3, [ip, #8]
005ca004  0c c0 9c e5                                      ldr ip, [ip, #0xc]
005ca008  20 00 80 e2                                      add r0, r0, #0x20
005ca00c  02 10 a0 e1                                      mov r1, r2
005ca010  0c 00 80 e0                                      add r0, r0, ip
005ca014  03 21 a0 e1                                      lsl r2, r3, #2
005ca018  12 12 f5 eb                                      bl #0x30e868
005ca01c  01 00 a0 e3                                      mov r0, #1
005ca020  10 80 bd e8                                      pop {r4, pc}

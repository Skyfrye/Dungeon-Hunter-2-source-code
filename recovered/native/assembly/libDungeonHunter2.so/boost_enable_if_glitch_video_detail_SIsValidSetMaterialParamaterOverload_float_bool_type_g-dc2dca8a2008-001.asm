; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005cf1fc, declared_size=84, range_size=84, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<float>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE12setParameterIfEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSB_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<float>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::setParameter<float>(unsigned short, unsigned int, float const&)
; decoder-mode: arm
005cf1fc  be c0 d0 e1                                      ldrh ip, [r0, #0xe]
005cf200  01 00 5c e1                                      cmp ip, r1
005cf204  05 00 00 9a                                      bls #0x5cf220
005cf208  20 c0 90 e5                                      ldr ip, [r0, #0x20]
005cf20c  01 12 9c e0                                      adds r1, ip, r1, lsl #4
005cf210  02 00 00 0a                                      beq #0x5cf220
005cf214  06 c0 d1 e5                                      ldrb ip, [r1, #6]
005cf218  05 00 5c e3                                      cmp ip, #5
005cf21c  01 00 00 0a                                      beq #0x5cf228
005cf220  00 00 a0 e3                                      mov r0, #0
005cf224  1e ff 2f e1                                      bx lr
005cf228  08 c0 91 e5                                      ldr ip, [r1, #8]
005cf22c  0c 00 52 e1                                      cmp r2, ip
005cf230  fa ff ff 2a                                      bhs #0x5cf220
005cf234  0c c0 91 e5                                      ldr ip, [r1, #0xc]
005cf238  00 30 93 e5                                      ldr r3, [r3]
005cf23c  24 10 90 e5                                      ldr r1, [r0, #0x24]
005cf240  02 21 8c e0                                      add r2, ip, r2, lsl #2
005cf244  01 00 a0 e3                                      mov r0, #1
005cf248  02 30 81 e7                                      str r3, [r1, r2]
005cf24c  1e ff 2f e1                                      bx lr

; FUNCTION 0x005cf6a0, declared_size=156, range_size=156, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<float>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtIfEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSB_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<float>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::setParameterCvt<float>(unsigned short, unsigned int, float const&)
; decoder-mode: arm
005cf6a0  70 40 2d e9                                      push {r4, r5, r6, lr}
005cf6a4  be 40 d0 e1                                      ldrh r4, [r0, #0xe]
005cf6a8  84 c0 9f e5                                      ldr ip, [pc, #0x84]
005cf6ac  01 00 54 e1                                      cmp r4, r1
005cf6b0  0c c0 8f e0                                      add ip, pc, ip
005cf6b4  13 00 00 9a                                      bls #0x5cf708
005cf6b8  20 40 90 e5                                      ldr r4, [r0, #0x20]
005cf6bc  01 12 94 e0                                      adds r1, r4, r1, lsl #4
005cf6c0  10 00 00 0a                                      beq #0x5cf708
005cf6c4  6c 50 9f e5                                      ldr r5, [pc, #0x6c]
005cf6c8  06 40 d1 e5                                      ldrb r4, [r1, #6]
005cf6cc  05 c0 9c e7                                      ldr ip, [ip, r5]
005cf6d0  04 c1 9c e7                                      ldr ip, [ip, r4, lsl #2]
005cf6d4  20 00 1c e3                                      tst ip, #0x20
005cf6d8  0a 00 00 0a                                      beq #0x5cf708
005cf6dc  08 c0 91 e5                                      ldr ip, [r1, #8]
005cf6e0  0c 00 52 e1                                      cmp r2, ip
005cf6e4  07 00 00 2a                                      bhs #0x5cf708
005cf6e8  01 00 54 e3                                      cmp r4, #1
005cf6ec  24 60 90 e5                                      ldr r6, [r0, #0x24]
005cf6f0  0c 50 91 e5                                      ldr r5, [r1, #0xc]
005cf6f4  05 00 00 0a                                      beq #0x5cf710
005cf6f8  05 00 54 e3                                      cmp r4, #5
005cf6fc  08 00 00 0a                                      beq #0x5cf724
005cf700  01 00 a0 e3                                      mov r0, #1
005cf704  70 80 bd e8                                      pop {r4, r5, r6, pc}
005cf708  00 00 a0 e3                                      mov r0, #0
005cf70c  70 80 bd e8                                      pop {r4, r5, r6, pc}
005cf710  00 00 93 e5                                      ldr r0, [r3]
005cf714  6c fb f4 eb                                      bl #0x30e4cc
005cf718  05 00 86 e7                                      str r0, [r6, r5]
005cf71c  04 00 a0 e1                                      mov r0, r4
005cf720  70 80 bd e8                                      pop {r4, r5, r6, pc}
005cf724  00 30 93 e5                                      ldr r3, [r3]
005cf728  01 00 a0 e3                                      mov r0, #1
005cf72c  05 30 86 e7                                      str r3, [r6, r5]
005cf730  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005cf734  e0 53 3c 00 a4 2c 00 00                          .byte 0xe0, 0x53, 0x3c, 0x00, 0xa4, 0x2c, 0x00, 0x00

; FUNCTION 0x005cfe20, declared_size=84, range_size=84, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<float>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE12getParameterIfEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRSB_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<float>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::getParameter<float>(unsigned short, unsigned int, float&) const
; decoder-mode: arm
005cfe20  be c0 d0 e1                                      ldrh ip, [r0, #0xe]
005cfe24  01 00 5c e1                                      cmp ip, r1
005cfe28  05 00 00 9a                                      bls #0x5cfe44
005cfe2c  20 c0 90 e5                                      ldr ip, [r0, #0x20]
005cfe30  01 12 9c e0                                      adds r1, ip, r1, lsl #4
005cfe34  02 00 00 0a                                      beq #0x5cfe44
005cfe38  06 c0 d1 e5                                      ldrb ip, [r1, #6]
005cfe3c  05 00 5c e3                                      cmp ip, #5
005cfe40  01 00 00 0a                                      beq #0x5cfe4c
005cfe44  00 00 a0 e3                                      mov r0, #0
005cfe48  1e ff 2f e1                                      bx lr
005cfe4c  08 c0 91 e5                                      ldr ip, [r1, #8]
005cfe50  0c 00 52 e1                                      cmp r2, ip
005cfe54  fa ff ff 2a                                      bhs #0x5cfe44
005cfe58  0c c0 91 e5                                      ldr ip, [r1, #0xc]
005cfe5c  24 10 90 e5                                      ldr r1, [r0, #0x24]
005cfe60  01 00 a0 e3                                      mov r0, #1
005cfe64  02 21 8c e0                                      add r2, ip, r2, lsl #2
005cfe68  02 20 91 e7                                      ldr r2, [r1, r2]
005cfe6c  00 20 83 e5                                      str r2, [r3]
005cfe70  1e ff 2f e1                                      bx lr

; FUNCTION 0x005d02c4, declared_size=160, range_size=160, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<float>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE15getParameterCvtIfEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRSB_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<float>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::getParameterCvt<float>(unsigned short, unsigned int, float&) const
; decoder-mode: arm
005d02c4  70 40 2d e9                                      push {r4, r5, r6, lr}
005d02c8  be 40 d0 e1                                      ldrh r4, [r0, #0xe]
005d02cc  88 c0 9f e5                                      ldr ip, [pc, #0x88]
005d02d0  03 50 a0 e1                                      mov r5, r3
005d02d4  01 00 54 e1                                      cmp r4, r1
005d02d8  0c c0 8f e0                                      add ip, pc, ip
005d02dc  13 00 00 9a                                      bls #0x5d0330
005d02e0  20 30 90 e5                                      ldr r3, [r0, #0x20]
005d02e4  01 12 93 e0                                      adds r1, r3, r1, lsl #4
005d02e8  10 00 00 0a                                      beq #0x5d0330
005d02ec  6c 30 9f e5                                      ldr r3, [pc, #0x6c]
005d02f0  06 40 d1 e5                                      ldrb r4, [r1, #6]
005d02f4  03 30 9c e7                                      ldr r3, [ip, r3]
005d02f8  04 31 93 e7                                      ldr r3, [r3, r4, lsl #2]
005d02fc  20 00 13 e3                                      tst r3, #0x20
005d0300  0a 00 00 0a                                      beq #0x5d0330
005d0304  08 30 91 e5                                      ldr r3, [r1, #8]
005d0308  03 00 52 e1                                      cmp r2, r3
005d030c  07 00 00 2a                                      bhs #0x5d0330
005d0310  01 00 54 e3                                      cmp r4, #1
005d0314  24 20 90 e5                                      ldr r2, [r0, #0x24]
005d0318  0c 30 91 e5                                      ldr r3, [r1, #0xc]
005d031c  05 00 00 0a                                      beq #0x5d0338
005d0320  05 00 54 e3                                      cmp r4, #5
005d0324  08 00 00 0a                                      beq #0x5d034c
005d0328  01 00 a0 e3                                      mov r0, #1
005d032c  70 80 bd e8                                      pop {r4, r5, r6, pc}
005d0330  00 00 a0 e3                                      mov r0, #0
005d0334  70 80 bd e8                                      pop {r4, r5, r6, pc}
005d0338  03 00 92 e7                                      ldr r0, [r2, r3]
005d033c  88 f9 f4 eb                                      bl #0x30e964
005d0340  00 00 85 e5                                      str r0, [r5]
005d0344  04 00 a0 e1                                      mov r0, r4
005d0348  70 80 bd e8                                      pop {r4, r5, r6, pc}
005d034c  03 30 92 e7                                      ldr r3, [r2, r3]
005d0350  01 00 a0 e3                                      mov r0, #1
005d0354  00 30 85 e5                                      str r3, [r5]
005d0358  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005d035c  b8 47 3c 00 a4 2c 00 00                          .byte 0xb8, 0x47, 0x3c, 0x00, 0xa4, 0x2c, 0x00, 0x00

; FUNCTION 0x005d104c, declared_size=276, range_size=276, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<float>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE15getParameterCvtIfEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPSB_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<float>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::getParameterCvt<float>(unsigned short, float*, int) const
; decoder-mode: arm
005d104c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005d1050  be 40 d0 e1                                      ldrh r4, [r0, #0xe]
005d1054  fc c0 9f e5                                      ldr ip, [pc, #0xfc]
005d1058  03 70 a0 e1                                      mov r7, r3
005d105c  01 00 54 e1                                      cmp r4, r1
005d1060  0c c0 8f e0                                      add ip, pc, ip
005d1064  02 40 a0 e1                                      mov r4, r2
005d1068  13 00 00 9a                                      bls #0x5d10bc
005d106c  20 30 90 e5                                      ldr r3, [r0, #0x20]
005d1070  01 12 93 e0                                      adds r1, r3, r1, lsl #4
005d1074  10 00 00 0a                                      beq #0x5d10bc
005d1078  dc 20 9f e5                                      ldr r2, [pc, #0xdc]
005d107c  06 30 d1 e5                                      ldrb r3, [r1, #6]
005d1080  02 20 9c e7                                      ldr r2, [ip, r2]
005d1084  03 21 92 e7                                      ldr r2, [r2, r3, lsl #2]
005d1088  20 00 12 e3                                      tst r2, #0x20
005d108c  0a 00 00 0a                                      beq #0x5d10bc
005d1090  01 20 77 e2                                      rsbs r2, r7, #1
005d1094  00 20 a0 33                                      movlo r2, #0
005d1098  00 00 57 e3                                      cmp r7, #0
005d109c  04 00 57 13                                      cmpne r7, #4
005d10a0  07 00 00 1a                                      bne #0x5d10c4
005d10a4  05 00 53 e3                                      cmp r3, #5
005d10a8  21 00 00 0a                                      beq #0x5d1134
005d10ac  00 00 52 e3                                      cmp r2, #0
005d10b0  03 00 00 0a                                      beq #0x5d10c4
005d10b4  01 00 a0 e3                                      mov r0, #1
005d10b8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005d10bc  00 00 a0 e3                                      mov r0, #0
005d10c0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005d10c4  24 60 90 e5                                      ldr r6, [r0, #0x24]
005d10c8  0c 20 91 e5                                      ldr r2, [r1, #0xc]
005d10cc  01 00 53 e3                                      cmp r3, #1
005d10d0  02 60 86 e0                                      add r6, r6, r2
005d10d4  0b 00 00 0a                                      beq #0x5d1108
005d10d8  05 00 53 e3                                      cmp r3, #5
005d10dc  f4 ff ff 1a                                      bne #0x5d10b4
005d10e0  08 10 91 e5                                      ldr r1, [r1, #8]
005d10e4  00 00 51 e3                                      cmp r1, #0
005d10e8  f1 ff ff 0a                                      beq #0x5d10b4
005d10ec  00 30 a0 e3                                      mov r3, #0
005d10f0  03 21 96 e7                                      ldr r2, [r6, r3, lsl #2]
005d10f4  01 30 83 e2                                      add r3, r3, #1
005d10f8  01 00 53 e1                                      cmp r3, r1
005d10fc  07 20 84 e6                                      str r2, [r4], r7
005d1100  fa ff ff 1a                                      bne #0x5d10f0
005d1104  ea ff ff ea                                      b #0x5d10b4
005d1108  08 80 91 e5                                      ldr r8, [r1, #8]
005d110c  00 00 58 e3                                      cmp r8, #0
005d1110  e7 ff ff 0a                                      beq #0x5d10b4
005d1114  00 50 a0 e3                                      mov r5, #0
005d1118  05 01 96 e7                                      ldr r0, [r6, r5, lsl #2]
005d111c  10 f6 f4 eb                                      bl #0x30e964
005d1120  01 50 85 e2                                      add r5, r5, #1
005d1124  08 00 55 e1                                      cmp r5, r8
005d1128  07 00 84 e6                                      str r0, [r4], r7
005d112c  f9 ff ff 1a                                      bne #0x5d1118
005d1130  df ff ff ea                                      b #0x5d10b4
005d1134  24 c0 90 e5                                      ldr ip, [r0, #0x24]
005d1138  08 20 91 e5                                      ldr r2, [r1, #8]
005d113c  0c 30 91 e5                                      ldr r3, [r1, #0xc]
005d1140  04 00 a0 e1                                      mov r0, r4
005d1144  02 21 a0 e1                                      lsl r2, r2, #2
005d1148  03 10 8c e0                                      add r1, ip, r3
005d114c  c5 f5 f4 eb                                      bl #0x30e868
005d1150  01 00 a0 e3                                      mov r0, #1
005d1154  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
005d1158  30 3a 3c 00 a4 2c 00 00                          .byte 0x30, 0x3a, 0x3c, 0x00, 0xa4, 0x2c, 0x00, 0x00

; FUNCTION 0x005d1878, declared_size=156, range_size=156, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<float>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE12getParameterIfEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPSB_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<float>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::getParameter<float>(unsigned short, float*, int) const
; decoder-mode: arm
005d1878  70 40 2d e9                                      push {r4, r5, r6, lr}
005d187c  be c0 d0 e1                                      ldrh ip, [r0, #0xe]
005d1880  01 00 5c e1                                      cmp ip, r1
005d1884  05 00 00 9a                                      bls #0x5d18a0
005d1888  20 50 90 e5                                      ldr r5, [r0, #0x20]
005d188c  01 52 95 e0                                      adds r5, r5, r1, lsl #4
005d1890  02 00 00 0a                                      beq #0x5d18a0
005d1894  06 10 d5 e5                                      ldrb r1, [r5, #6]
005d1898  05 00 51 e3                                      cmp r1, #5
005d189c  01 00 00 0a                                      beq #0x5d18a8
005d18a0  00 00 a0 e3                                      mov r0, #0
005d18a4  70 80 bd e8                                      pop {r4, r5, r6, pc}
005d18a8  00 00 53 e3                                      cmp r3, #0
005d18ac  04 00 53 13                                      cmpne r3, #4
005d18b0  00 10 a0 13                                      movne r1, #0
005d18b4  01 10 a0 03                                      moveq r1, #1
005d18b8  0c 00 00 0a                                      beq #0x5d18f0
005d18bc  08 c0 95 e5                                      ldr ip, [r5, #8]
005d18c0  24 40 90 e5                                      ldr r4, [r0, #0x24]
005d18c4  0c 00 95 e5                                      ldr r0, [r5, #0xc]
005d18c8  00 00 5c e3                                      cmp ip, #0
005d18cc  05 00 00 0a                                      beq #0x5d18e8
005d18d0  00 40 84 e0                                      add r4, r4, r0
005d18d4  01 01 94 e7                                      ldr r0, [r4, r1, lsl #2]
005d18d8  01 10 81 e2                                      add r1, r1, #1
005d18dc  01 00 5c e1                                      cmp ip, r1
005d18e0  03 00 82 e6                                      str r0, [r2], r3
005d18e4  fa ff ff 1a                                      bne #0x5d18d4
005d18e8  01 00 a0 e3                                      mov r0, #1
005d18ec  70 80 bd e8                                      pop {r4, r5, r6, pc}
005d18f0  24 c0 90 e5                                      ldr ip, [r0, #0x24]
005d18f4  0c 10 95 e5                                      ldr r1, [r5, #0xc]
005d18f8  08 30 95 e5                                      ldr r3, [r5, #8]
005d18fc  02 00 a0 e1                                      mov r0, r2
005d1900  01 10 8c e0                                      add r1, ip, r1
005d1904  03 21 a0 e1                                      lsl r2, r3, #2
005d1908  d6 f3 f4 eb                                      bl #0x30e868
005d190c  01 00 a0 e3                                      mov r0, #1
005d1910  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x005d2368, declared_size=276, range_size=276, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<float>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtIfEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPKSB_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<float>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::setParameterCvt<float>(unsigned short, float const*, int)
; decoder-mode: arm
005d2368  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005d236c  be 40 d0 e1                                      ldrh r4, [r0, #0xe]
005d2370  fc c0 9f e5                                      ldr ip, [pc, #0xfc]
005d2374  03 70 a0 e1                                      mov r7, r3
005d2378  01 00 54 e1                                      cmp r4, r1
005d237c  0c c0 8f e0                                      add ip, pc, ip
005d2380  02 40 a0 e1                                      mov r4, r2
005d2384  13 00 00 9a                                      bls #0x5d23d8
005d2388  20 30 90 e5                                      ldr r3, [r0, #0x20]
005d238c  01 12 93 e0                                      adds r1, r3, r1, lsl #4
005d2390  10 00 00 0a                                      beq #0x5d23d8
005d2394  dc 20 9f e5                                      ldr r2, [pc, #0xdc]
005d2398  06 30 d1 e5                                      ldrb r3, [r1, #6]
005d239c  02 20 9c e7                                      ldr r2, [ip, r2]
005d23a0  03 21 92 e7                                      ldr r2, [r2, r3, lsl #2]
005d23a4  20 00 12 e3                                      tst r2, #0x20
005d23a8  0a 00 00 0a                                      beq #0x5d23d8
005d23ac  01 20 77 e2                                      rsbs r2, r7, #1
005d23b0  00 20 a0 33                                      movlo r2, #0
005d23b4  00 00 57 e3                                      cmp r7, #0
005d23b8  04 00 57 13                                      cmpne r7, #4
005d23bc  07 00 00 1a                                      bne #0x5d23e0
005d23c0  05 00 53 e3                                      cmp r3, #5
005d23c4  21 00 00 0a                                      beq #0x5d2450
005d23c8  00 00 52 e3                                      cmp r2, #0
005d23cc  03 00 00 0a                                      beq #0x5d23e0
005d23d0  01 00 a0 e3                                      mov r0, #1
005d23d4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005d23d8  00 00 a0 e3                                      mov r0, #0
005d23dc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005d23e0  24 60 90 e5                                      ldr r6, [r0, #0x24]
005d23e4  0c 20 91 e5                                      ldr r2, [r1, #0xc]
005d23e8  01 00 53 e3                                      cmp r3, #1
005d23ec  02 60 86 e0                                      add r6, r6, r2
005d23f0  0b 00 00 0a                                      beq #0x5d2424
005d23f4  05 00 53 e3                                      cmp r3, #5
005d23f8  f4 ff ff 1a                                      bne #0x5d23d0
005d23fc  08 10 91 e5                                      ldr r1, [r1, #8]
005d2400  00 00 51 e3                                      cmp r1, #0
005d2404  f1 ff ff 0a                                      beq #0x5d23d0
005d2408  00 30 a0 e3                                      mov r3, #0
005d240c  07 20 94 e6                                      ldr r2, [r4], r7
005d2410  03 21 86 e7                                      str r2, [r6, r3, lsl #2]
005d2414  01 30 83 e2                                      add r3, r3, #1
005d2418  01 00 53 e1                                      cmp r3, r1
005d241c  fa ff ff 1a                                      bne #0x5d240c
005d2420  ea ff ff ea                                      b #0x5d23d0
005d2424  08 80 91 e5                                      ldr r8, [r1, #8]
005d2428  00 00 58 e3                                      cmp r8, #0
005d242c  e7 ff ff 0a                                      beq #0x5d23d0
005d2430  00 50 a0 e3                                      mov r5, #0
005d2434  07 00 94 e6                                      ldr r0, [r4], r7
005d2438  23 f0 f4 eb                                      bl #0x30e4cc
005d243c  05 01 86 e7                                      str r0, [r6, r5, lsl #2]
005d2440  01 50 85 e2                                      add r5, r5, #1
005d2444  08 00 55 e1                                      cmp r5, r8
005d2448  f9 ff ff 1a                                      bne #0x5d2434
005d244c  df ff ff ea                                      b #0x5d23d0
005d2450  08 20 91 e5                                      ldr r2, [r1, #8]
005d2454  0c 30 91 e5                                      ldr r3, [r1, #0xc]
005d2458  24 00 90 e5                                      ldr r0, [r0, #0x24]
005d245c  04 10 a0 e1                                      mov r1, r4
005d2460  02 21 a0 e1                                      lsl r2, r2, #2
005d2464  03 00 80 e0                                      add r0, r0, r3
005d2468  fe f0 f4 eb                                      bl #0x30e868
005d246c  01 00 a0 e3                                      mov r0, #1
005d2470  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
005d2474  14 27 3c 00 a4 2c 00 00                          .byte 0x14, 0x27, 0x3c, 0x00, 0xa4, 0x2c, 0x00, 0x00

; FUNCTION 0x005d2bd0, declared_size=156, range_size=156, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<float>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE12setParameterIfEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPKSB_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<float>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::setParameter<float>(unsigned short, float const*, int)
; decoder-mode: arm
005d2bd0  70 40 2d e9                                      push {r4, r5, r6, lr}
005d2bd4  be c0 d0 e1                                      ldrh ip, [r0, #0xe]
005d2bd8  01 00 5c e1                                      cmp ip, r1
005d2bdc  05 00 00 9a                                      bls #0x5d2bf8
005d2be0  20 50 90 e5                                      ldr r5, [r0, #0x20]
005d2be4  01 52 95 e0                                      adds r5, r5, r1, lsl #4
005d2be8  02 00 00 0a                                      beq #0x5d2bf8
005d2bec  06 10 d5 e5                                      ldrb r1, [r5, #6]
005d2bf0  05 00 51 e3                                      cmp r1, #5
005d2bf4  01 00 00 0a                                      beq #0x5d2c00
005d2bf8  00 00 a0 e3                                      mov r0, #0
005d2bfc  70 80 bd e8                                      pop {r4, r5, r6, pc}
005d2c00  00 00 53 e3                                      cmp r3, #0
005d2c04  04 00 53 13                                      cmpne r3, #4
005d2c08  00 10 a0 13                                      movne r1, #0
005d2c0c  01 10 a0 03                                      moveq r1, #1
005d2c10  0c 00 00 0a                                      beq #0x5d2c48
005d2c14  08 c0 95 e5                                      ldr ip, [r5, #8]
005d2c18  24 40 90 e5                                      ldr r4, [r0, #0x24]
005d2c1c  0c 00 95 e5                                      ldr r0, [r5, #0xc]
005d2c20  00 00 5c e3                                      cmp ip, #0
005d2c24  05 00 00 0a                                      beq #0x5d2c40
005d2c28  00 40 84 e0                                      add r4, r4, r0
005d2c2c  03 00 92 e6                                      ldr r0, [r2], r3
005d2c30  01 01 84 e7                                      str r0, [r4, r1, lsl #2]
005d2c34  01 10 81 e2                                      add r1, r1, #1
005d2c38  0c 00 51 e1                                      cmp r1, ip
005d2c3c  fa ff ff 1a                                      bne #0x5d2c2c
005d2c40  01 00 a0 e3                                      mov r0, #1
005d2c44  70 80 bd e8                                      pop {r4, r5, r6, pc}
005d2c48  24 00 90 e5                                      ldr r0, [r0, #0x24]
005d2c4c  08 c0 95 e5                                      ldr ip, [r5, #8]
005d2c50  0c 30 95 e5                                      ldr r3, [r5, #0xc]
005d2c54  02 10 a0 e1                                      mov r1, r2
005d2c58  0c 21 a0 e1                                      lsl r2, ip, #2
005d2c5c  03 00 80 e0                                      add r0, r0, r3
005d2c60  00 ef f4 eb                                      bl #0x30e868
005d2c64  01 00 a0 e3                                      mov r0, #1
005d2c68  70 80 bd e8                                      pop {r4, r5, r6, pc}

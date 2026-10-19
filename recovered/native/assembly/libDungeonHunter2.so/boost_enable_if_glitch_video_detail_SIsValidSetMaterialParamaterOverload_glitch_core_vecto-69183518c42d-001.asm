; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005cf18c, declared_size=112, range_size=112, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector4d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE12setParameterINS_4core8vector4dIiEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector4d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::setParameter<glitch::core::vector4d<int> >(unsigned short, unsigned int, glitch::core::vector4d<int> const&)
; decoder-mode: arm
005cf18c  be c0 d0 e1                                      ldrh ip, [r0, #0xe]
005cf190  01 00 5c e1                                      cmp ip, r1
005cf194  05 00 00 9a                                      bls #0x5cf1b0
005cf198  20 c0 90 e5                                      ldr ip, [r0, #0x20]
005cf19c  01 12 9c e0                                      adds r1, ip, r1, lsl #4
005cf1a0  02 00 00 0a                                      beq #0x5cf1b0
005cf1a4  06 c0 d1 e5                                      ldrb ip, [r1, #6]
005cf1a8  04 00 5c e3                                      cmp ip, #4
005cf1ac  01 00 00 0a                                      beq #0x5cf1b8
005cf1b0  00 00 a0 e3                                      mov r0, #0
005cf1b4  1e ff 2f e1                                      bx lr
005cf1b8  08 c0 91 e5                                      ldr ip, [r1, #8]
005cf1bc  0c 00 52 e1                                      cmp r2, ip
005cf1c0  fa ff ff 2a                                      bhs #0x5cf1b0
005cf1c4  0c 10 91 e5                                      ldr r1, [r1, #0xc]
005cf1c8  24 00 90 e5                                      ldr r0, [r0, #0x24]
005cf1cc  00 c0 93 e5                                      ldr ip, [r3]
005cf1d0  02 22 81 e0                                      add r2, r1, r2, lsl #4
005cf1d4  02 10 80 e0                                      add r1, r0, r2
005cf1d8  02 c0 80 e7                                      str ip, [r0, r2]
005cf1dc  04 20 93 e5                                      ldr r2, [r3, #4]
005cf1e0  01 00 a0 e3                                      mov r0, #1
005cf1e4  04 20 81 e5                                      str r2, [r1, #4]
005cf1e8  08 20 93 e5                                      ldr r2, [r3, #8]
005cf1ec  08 20 81 e5                                      str r2, [r1, #8]
005cf1f0  0c 30 93 e5                                      ldr r3, [r3, #0xc]
005cf1f4  0c 30 81 e5                                      str r3, [r1, #0xc]
005cf1f8  1e ff 2f e1                                      bx lr

; FUNCTION 0x005cf604, declared_size=156, range_size=156, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector4d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS_4core8vector4dIiEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector4d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::setParameterCvt<glitch::core::vector4d<int> >(unsigned short, unsigned int, glitch::core::vector4d<int> const&)
; decoder-mode: arm
005cf604  30 00 2d e9                                      push {r4, r5}
005cf608  be 40 d0 e1                                      ldrh r4, [r0, #0xe]
005cf60c  84 c0 9f e5                                      ldr ip, [pc, #0x84]
005cf610  01 00 54 e1                                      cmp r4, r1
005cf614  0c c0 8f e0                                      add ip, pc, ip
005cf618  1b 00 00 9a                                      bls #0x5cf68c
005cf61c  20 40 90 e5                                      ldr r4, [r0, #0x20]
005cf620  01 12 94 e0                                      adds r1, r4, r1, lsl #4
005cf624  18 00 00 0a                                      beq #0x5cf68c
005cf628  6c 50 9f e5                                      ldr r5, [pc, #0x6c]
005cf62c  06 40 d1 e5                                      ldrb r4, [r1, #6]
005cf630  05 c0 9c e7                                      ldr ip, [ip, r5]
005cf634  04 c1 9c e7                                      ldr ip, [ip, r4, lsl #2]
005cf638  10 00 1c e3                                      tst ip, #0x10
005cf63c  12 00 00 0a                                      beq #0x5cf68c
005cf640  08 c0 91 e5                                      ldr ip, [r1, #8]
005cf644  0c 00 52 e1                                      cmp r2, ip
005cf648  0f 00 00 2a                                      bhs #0x5cf68c
005cf64c  04 00 54 e3                                      cmp r4, #4
005cf650  24 c0 90 e5                                      ldr ip, [r0, #0x24]
005cf654  0c 10 91 e5                                      ldr r1, [r1, #0xc]
005cf658  01 00 a0 13                                      movne r0, #1
005cf65c  0b 00 00 1a                                      bne #0x5cf690
005cf660  00 40 93 e5                                      ldr r4, [r3]
005cf664  01 20 8c e0                                      add r2, ip, r1
005cf668  01 00 a0 e3                                      mov r0, #1
005cf66c  01 40 8c e7                                      str r4, [ip, r1]
005cf670  04 10 93 e5                                      ldr r1, [r3, #4]
005cf674  04 10 82 e5                                      str r1, [r2, #4]
005cf678  08 10 93 e5                                      ldr r1, [r3, #8]
005cf67c  08 10 82 e5                                      str r1, [r2, #8]
005cf680  0c 30 93 e5                                      ldr r3, [r3, #0xc]
005cf684  0c 30 82 e5                                      str r3, [r2, #0xc]
005cf688  00 00 00 ea                                      b #0x5cf690
005cf68c  00 00 a0 e3                                      mov r0, #0
005cf690  30 00 bd e8                                      pop {r4, r5}
005cf694  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
005cf698  7c 54 3c 00 a4 2c 00 00                          .byte 0x7c, 0x54, 0x3c, 0x00, 0xa4, 0x2c, 0x00, 0x00

; FUNCTION 0x005cfdb0, declared_size=112, range_size=112, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector4d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE12getParameterINS_4core8vector4dIiEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRSE_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector4d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::getParameter<glitch::core::vector4d<int> >(unsigned short, unsigned int, glitch::core::vector4d<int>&) const
; decoder-mode: arm
005cfdb0  be c0 d0 e1                                      ldrh ip, [r0, #0xe]
005cfdb4  01 00 5c e1                                      cmp ip, r1
005cfdb8  05 00 00 9a                                      bls #0x5cfdd4
005cfdbc  20 c0 90 e5                                      ldr ip, [r0, #0x20]
005cfdc0  01 12 9c e0                                      adds r1, ip, r1, lsl #4
005cfdc4  02 00 00 0a                                      beq #0x5cfdd4
005cfdc8  06 c0 d1 e5                                      ldrb ip, [r1, #6]
005cfdcc  04 00 5c e3                                      cmp ip, #4
005cfdd0  01 00 00 0a                                      beq #0x5cfddc
005cfdd4  00 00 a0 e3                                      mov r0, #0
005cfdd8  1e ff 2f e1                                      bx lr
005cfddc  08 c0 91 e5                                      ldr ip, [r1, #8]
005cfde0  0c 00 52 e1                                      cmp r2, ip
005cfde4  fa ff ff 2a                                      bhs #0x5cfdd4
005cfde8  0c c0 91 e5                                      ldr ip, [r1, #0xc]
005cfdec  24 10 90 e5                                      ldr r1, [r0, #0x24]
005cfdf0  01 00 a0 e3                                      mov r0, #1
005cfdf4  02 22 8c e0                                      add r2, ip, r2, lsl #4
005cfdf8  02 c0 91 e7                                      ldr ip, [r1, r2]
005cfdfc  02 20 81 e0                                      add r2, r1, r2
005cfe00  00 c0 83 e5                                      str ip, [r3]
005cfe04  04 10 92 e5                                      ldr r1, [r2, #4]
005cfe08  04 10 83 e5                                      str r1, [r3, #4]
005cfe0c  08 10 92 e5                                      ldr r1, [r2, #8]
005cfe10  08 10 83 e5                                      str r1, [r3, #8]
005cfe14  0c 20 92 e5                                      ldr r2, [r2, #0xc]
005cfe18  0c 20 83 e5                                      str r2, [r3, #0xc]
005cfe1c  1e ff 2f e1                                      bx lr

; FUNCTION 0x005d0228, declared_size=156, range_size=156, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector4d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE15getParameterCvtINS_4core8vector4dIiEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRSE_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector4d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::getParameterCvt<glitch::core::vector4d<int> >(unsigned short, unsigned int, glitch::core::vector4d<int>&) const
; decoder-mode: arm
005d0228  30 00 2d e9                                      push {r4, r5}
005d022c  be 40 d0 e1                                      ldrh r4, [r0, #0xe]
005d0230  84 c0 9f e5                                      ldr ip, [pc, #0x84]
005d0234  01 00 54 e1                                      cmp r4, r1
005d0238  0c c0 8f e0                                      add ip, pc, ip
005d023c  1b 00 00 9a                                      bls #0x5d02b0
005d0240  20 40 90 e5                                      ldr r4, [r0, #0x20]
005d0244  01 12 94 e0                                      adds r1, r4, r1, lsl #4
005d0248  18 00 00 0a                                      beq #0x5d02b0
005d024c  6c 50 9f e5                                      ldr r5, [pc, #0x6c]
005d0250  06 40 d1 e5                                      ldrb r4, [r1, #6]
005d0254  05 c0 9c e7                                      ldr ip, [ip, r5]
005d0258  04 c1 9c e7                                      ldr ip, [ip, r4, lsl #2]
005d025c  10 00 1c e3                                      tst ip, #0x10
005d0260  12 00 00 0a                                      beq #0x5d02b0
005d0264  08 c0 91 e5                                      ldr ip, [r1, #8]
005d0268  0c 00 52 e1                                      cmp r2, ip
005d026c  0f 00 00 2a                                      bhs #0x5d02b0
005d0270  04 00 54 e3                                      cmp r4, #4
005d0274  24 00 90 e5                                      ldr r0, [r0, #0x24]
005d0278  0c 20 91 e5                                      ldr r2, [r1, #0xc]
005d027c  01 00 a0 13                                      movne r0, #1
005d0280  0b 00 00 1a                                      bne #0x5d02b4
005d0284  02 10 90 e7                                      ldr r1, [r0, r2]
005d0288  02 20 80 e0                                      add r2, r0, r2
005d028c  01 00 a0 e3                                      mov r0, #1
005d0290  00 10 83 e5                                      str r1, [r3]
005d0294  04 10 92 e5                                      ldr r1, [r2, #4]
005d0298  04 10 83 e5                                      str r1, [r3, #4]
005d029c  08 10 92 e5                                      ldr r1, [r2, #8]
005d02a0  08 10 83 e5                                      str r1, [r3, #8]
005d02a4  0c 20 92 e5                                      ldr r2, [r2, #0xc]
005d02a8  0c 20 83 e5                                      str r2, [r3, #0xc]
005d02ac  00 00 00 ea                                      b #0x5d02b4
005d02b0  00 00 a0 e3                                      mov r0, #0
005d02b4  30 00 bd e8                                      pop {r4, r5}
005d02b8  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
005d02bc  58 48 3c 00 a4 2c 00 00                          .byte 0x58, 0x48, 0x3c, 0x00, 0xa4, 0x2c, 0x00, 0x00

; FUNCTION 0x005d1160, declared_size=240, range_size=240, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector4d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE15getParameterCvtINS_4core8vector4dIiEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPSE_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector4d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::getParameterCvt<glitch::core::vector4d<int> >(unsigned short, glitch::core::vector4d<int>*, int) const
; decoder-mode: arm
005d1160  70 40 2d e9                                      push {r4, r5, r6, lr}
005d1164  be 40 d0 e1                                      ldrh r4, [r0, #0xe]
005d1168  d8 c0 9f e5                                      ldr ip, [pc, #0xd8]
005d116c  01 00 54 e1                                      cmp r4, r1
005d1170  0c c0 8f e0                                      add ip, pc, ip
005d1174  13 00 00 9a                                      bls #0x5d11c8
005d1178  20 40 90 e5                                      ldr r4, [r0, #0x20]
005d117c  01 12 94 e0                                      adds r1, r4, r1, lsl #4
005d1180  10 00 00 0a                                      beq #0x5d11c8
005d1184  c0 50 9f e5                                      ldr r5, [pc, #0xc0]
005d1188  06 40 d1 e5                                      ldrb r4, [r1, #6]
005d118c  05 c0 9c e7                                      ldr ip, [ip, r5]
005d1190  04 c1 9c e7                                      ldr ip, [ip, r4, lsl #2]
005d1194  10 00 1c e3                                      tst ip, #0x10
005d1198  0a 00 00 0a                                      beq #0x5d11c8
005d119c  01 c0 73 e2                                      rsbs ip, r3, #1
005d11a0  00 c0 a0 33                                      movlo ip, #0
005d11a4  00 00 53 e3                                      cmp r3, #0
005d11a8  10 00 53 13                                      cmpne r3, #0x10
005d11ac  07 00 00 1a                                      bne #0x5d11d0
005d11b0  04 00 54 e3                                      cmp r4, #4
005d11b4  1a 00 00 0a                                      beq #0x5d1224
005d11b8  00 00 5c e3                                      cmp ip, #0
005d11bc  03 00 00 0a                                      beq #0x5d11d0
005d11c0  01 00 a0 e3                                      mov r0, #1
005d11c4  70 80 bd e8                                      pop {r4, r5, r6, pc}
005d11c8  00 00 a0 e3                                      mov r0, #0
005d11cc  70 80 bd e8                                      pop {r4, r5, r6, pc}
005d11d0  04 00 54 e3                                      cmp r4, #4
005d11d4  0c c0 91 e5                                      ldr ip, [r1, #0xc]
005d11d8  24 40 90 e5                                      ldr r4, [r0, #0x24]
005d11dc  f7 ff ff 1a                                      bne #0x5d11c0
005d11e0  08 00 91 e5                                      ldr r0, [r1, #8]
005d11e4  00 00 50 e3                                      cmp r0, #0
005d11e8  f4 ff ff 0a                                      beq #0x5d11c0
005d11ec  0c 10 84 e0                                      add r1, r4, ip
005d11f0  00 c0 91 e5                                      ldr ip, [r1]
005d11f4  01 00 50 e2                                      subs r0, r0, #1
005d11f8  00 c0 82 e5                                      str ip, [r2]
005d11fc  04 c0 91 e5                                      ldr ip, [r1, #4]
005d1200  04 c0 82 e5                                      str ip, [r2, #4]
005d1204  08 c0 91 e5                                      ldr ip, [r1, #8]
005d1208  08 c0 82 e5                                      str ip, [r2, #8]
005d120c  0c c0 91 e5                                      ldr ip, [r1, #0xc]
005d1210  10 10 81 e2                                      add r1, r1, #0x10
005d1214  0c c0 82 e5                                      str ip, [r2, #0xc]
005d1218  03 20 82 e0                                      add r2, r2, r3
005d121c  f3 ff ff 1a                                      bne #0x5d11f0
005d1220  e6 ff ff ea                                      b #0x5d11c0
005d1224  24 e0 90 e5                                      ldr lr, [r0, #0x24]
005d1228  08 30 91 e5                                      ldr r3, [r1, #8]
005d122c  0c c0 91 e5                                      ldr ip, [r1, #0xc]
005d1230  02 00 a0 e1                                      mov r0, r2
005d1234  03 22 a0 e1                                      lsl r2, r3, #4
005d1238  0c 10 8e e0                                      add r1, lr, ip
005d123c  89 f5 f4 eb                                      bl #0x30e868
005d1240  01 00 a0 e3                                      mov r0, #1
005d1244  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005d1248  20 39 3c 00 a4 2c 00 00                          .byte 0x20, 0x39, 0x3c, 0x00, 0xa4, 0x2c, 0x00, 0x00

; FUNCTION 0x005d1914, declared_size=176, range_size=176, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector4d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE12getParameterINS_4core8vector4dIiEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPSE_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector4d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::getParameter<glitch::core::vector4d<int> >(unsigned short, glitch::core::vector4d<int>*, int) const
; decoder-mode: arm
005d1914  10 40 2d e9                                      push {r4, lr}
005d1918  be c0 d0 e1                                      ldrh ip, [r0, #0xe]
005d191c  01 00 5c e1                                      cmp ip, r1
005d1920  05 00 00 9a                                      bls #0x5d193c
005d1924  20 40 90 e5                                      ldr r4, [r0, #0x20]
005d1928  01 42 94 e0                                      adds r4, r4, r1, lsl #4
005d192c  02 00 00 0a                                      beq #0x5d193c
005d1930  06 10 d4 e5                                      ldrb r1, [r4, #6]
005d1934  04 00 51 e3                                      cmp r1, #4
005d1938  01 00 00 0a                                      beq #0x5d1944
005d193c  00 00 a0 e3                                      mov r0, #0
005d1940  10 80 bd e8                                      pop {r4, pc}
005d1944  00 00 53 e3                                      cmp r3, #0
005d1948  10 00 53 13                                      cmpne r3, #0x10
005d194c  13 00 00 0a                                      beq #0x5d19a0
005d1950  08 c0 94 e5                                      ldr ip, [r4, #8]
005d1954  24 00 90 e5                                      ldr r0, [r0, #0x24]
005d1958  0c 10 94 e5                                      ldr r1, [r4, #0xc]
005d195c  00 00 5c e3                                      cmp ip, #0
005d1960  0c 00 00 0a                                      beq #0x5d1998
005d1964  01 10 80 e0                                      add r1, r0, r1
005d1968  00 00 91 e5                                      ldr r0, [r1]
005d196c  01 c0 5c e2                                      subs ip, ip, #1
005d1970  00 00 82 e5                                      str r0, [r2]
005d1974  04 00 91 e5                                      ldr r0, [r1, #4]
005d1978  04 00 82 e5                                      str r0, [r2, #4]
005d197c  08 00 91 e5                                      ldr r0, [r1, #8]
005d1980  08 00 82 e5                                      str r0, [r2, #8]
005d1984  0c 00 91 e5                                      ldr r0, [r1, #0xc]
005d1988  10 10 81 e2                                      add r1, r1, #0x10
005d198c  0c 00 82 e5                                      str r0, [r2, #0xc]
005d1990  03 20 82 e0                                      add r2, r2, r3
005d1994  f3 ff ff 1a                                      bne #0x5d1968
005d1998  01 00 a0 e3                                      mov r0, #1
005d199c  10 80 bd e8                                      pop {r4, pc}
005d19a0  24 c0 90 e5                                      ldr ip, [r0, #0x24]
005d19a4  0c 10 94 e5                                      ldr r1, [r4, #0xc]
005d19a8  08 30 94 e5                                      ldr r3, [r4, #8]
005d19ac  02 00 a0 e1                                      mov r0, r2
005d19b0  01 10 8c e0                                      add r1, ip, r1
005d19b4  03 22 a0 e1                                      lsl r2, r3, #4
005d19b8  aa f3 f4 eb                                      bl #0x30e868
005d19bc  01 00 a0 e3                                      mov r0, #1
005d19c0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005d247c, declared_size=240, range_size=240, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector4d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS_4core8vector4dIiEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPKSE_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector4d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::setParameterCvt<glitch::core::vector4d<int> >(unsigned short, glitch::core::vector4d<int> const*, int)
; decoder-mode: arm
005d247c  70 40 2d e9                                      push {r4, r5, r6, lr}
005d2480  be 40 d0 e1                                      ldrh r4, [r0, #0xe]
005d2484  d8 c0 9f e5                                      ldr ip, [pc, #0xd8]
005d2488  01 00 54 e1                                      cmp r4, r1
005d248c  0c c0 8f e0                                      add ip, pc, ip
005d2490  13 00 00 9a                                      bls #0x5d24e4
005d2494  20 40 90 e5                                      ldr r4, [r0, #0x20]
005d2498  01 12 94 e0                                      adds r1, r4, r1, lsl #4
005d249c  10 00 00 0a                                      beq #0x5d24e4
005d24a0  c0 50 9f e5                                      ldr r5, [pc, #0xc0]
005d24a4  06 40 d1 e5                                      ldrb r4, [r1, #6]
005d24a8  05 c0 9c e7                                      ldr ip, [ip, r5]
005d24ac  04 c1 9c e7                                      ldr ip, [ip, r4, lsl #2]
005d24b0  10 00 1c e3                                      tst ip, #0x10
005d24b4  0a 00 00 0a                                      beq #0x5d24e4
005d24b8  01 c0 73 e2                                      rsbs ip, r3, #1
005d24bc  00 c0 a0 33                                      movlo ip, #0
005d24c0  00 00 53 e3                                      cmp r3, #0
005d24c4  10 00 53 13                                      cmpne r3, #0x10
005d24c8  07 00 00 1a                                      bne #0x5d24ec
005d24cc  04 00 54 e3                                      cmp r4, #4
005d24d0  1a 00 00 0a                                      beq #0x5d2540
005d24d4  00 00 5c e3                                      cmp ip, #0
005d24d8  03 00 00 0a                                      beq #0x5d24ec
005d24dc  01 00 a0 e3                                      mov r0, #1
005d24e0  70 80 bd e8                                      pop {r4, r5, r6, pc}
005d24e4  00 00 a0 e3                                      mov r0, #0
005d24e8  70 80 bd e8                                      pop {r4, r5, r6, pc}
005d24ec  04 00 54 e3                                      cmp r4, #4
005d24f0  0c c0 91 e5                                      ldr ip, [r1, #0xc]
005d24f4  24 40 90 e5                                      ldr r4, [r0, #0x24]
005d24f8  f7 ff ff 1a                                      bne #0x5d24dc
005d24fc  08 00 91 e5                                      ldr r0, [r1, #8]
005d2500  00 00 50 e3                                      cmp r0, #0
005d2504  f4 ff ff 0a                                      beq #0x5d24dc
005d2508  0c 10 84 e0                                      add r1, r4, ip
005d250c  00 c0 92 e5                                      ldr ip, [r2]
005d2510  01 00 50 e2                                      subs r0, r0, #1
005d2514  00 c0 81 e5                                      str ip, [r1]
005d2518  04 c0 92 e5                                      ldr ip, [r2, #4]
005d251c  04 c0 81 e5                                      str ip, [r1, #4]
005d2520  08 c0 92 e5                                      ldr ip, [r2, #8]
005d2524  08 c0 81 e5                                      str ip, [r1, #8]
005d2528  0c c0 92 e5                                      ldr ip, [r2, #0xc]
005d252c  03 20 82 e0                                      add r2, r2, r3
005d2530  0c c0 81 e5                                      str ip, [r1, #0xc]
005d2534  10 10 81 e2                                      add r1, r1, #0x10
005d2538  f3 ff ff 1a                                      bne #0x5d250c
005d253c  e6 ff ff ea                                      b #0x5d24dc
005d2540  08 c0 91 e5                                      ldr ip, [r1, #8]
005d2544  0c 30 91 e5                                      ldr r3, [r1, #0xc]
005d2548  24 00 90 e5                                      ldr r0, [r0, #0x24]
005d254c  02 10 a0 e1                                      mov r1, r2
005d2550  0c 22 a0 e1                                      lsl r2, ip, #4
005d2554  03 00 80 e0                                      add r0, r0, r3
005d2558  c2 f0 f4 eb                                      bl #0x30e868
005d255c  01 00 a0 e3                                      mov r0, #1
005d2560  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005d2564  04 26 3c 00 a4 2c 00 00                          .byte 0x04, 0x26, 0x3c, 0x00, 0xa4, 0x2c, 0x00, 0x00

; FUNCTION 0x005d2c6c, declared_size=176, range_size=176, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector4d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE12setParameterINS_4core8vector4dIiEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPKSE_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector4d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::setParameter<glitch::core::vector4d<int> >(unsigned short, glitch::core::vector4d<int> const*, int)
; decoder-mode: arm
005d2c6c  10 40 2d e9                                      push {r4, lr}
005d2c70  be c0 d0 e1                                      ldrh ip, [r0, #0xe]
005d2c74  01 00 5c e1                                      cmp ip, r1
005d2c78  05 00 00 9a                                      bls #0x5d2c94
005d2c7c  20 c0 90 e5                                      ldr ip, [r0, #0x20]
005d2c80  01 12 9c e0                                      adds r1, ip, r1, lsl #4
005d2c84  02 00 00 0a                                      beq #0x5d2c94
005d2c88  06 c0 d1 e5                                      ldrb ip, [r1, #6]
005d2c8c  04 00 5c e3                                      cmp ip, #4
005d2c90  01 00 00 0a                                      beq #0x5d2c9c
005d2c94  00 00 a0 e3                                      mov r0, #0
005d2c98  10 80 bd e8                                      pop {r4, pc}
005d2c9c  00 00 53 e3                                      cmp r3, #0
005d2ca0  10 00 53 13                                      cmpne r3, #0x10
005d2ca4  13 00 00 0a                                      beq #0x5d2cf8
005d2ca8  08 c0 91 e5                                      ldr ip, [r1, #8]
005d2cac  24 00 90 e5                                      ldr r0, [r0, #0x24]
005d2cb0  0c 10 91 e5                                      ldr r1, [r1, #0xc]
005d2cb4  00 00 5c e3                                      cmp ip, #0
005d2cb8  0c 00 00 0a                                      beq #0x5d2cf0
005d2cbc  01 10 80 e0                                      add r1, r0, r1
005d2cc0  00 00 92 e5                                      ldr r0, [r2]
005d2cc4  01 c0 5c e2                                      subs ip, ip, #1
005d2cc8  00 00 81 e5                                      str r0, [r1]
005d2ccc  04 00 92 e5                                      ldr r0, [r2, #4]
005d2cd0  04 00 81 e5                                      str r0, [r1, #4]
005d2cd4  08 00 92 e5                                      ldr r0, [r2, #8]
005d2cd8  08 00 81 e5                                      str r0, [r1, #8]
005d2cdc  0c 00 92 e5                                      ldr r0, [r2, #0xc]
005d2ce0  03 20 82 e0                                      add r2, r2, r3
005d2ce4  0c 00 81 e5                                      str r0, [r1, #0xc]
005d2ce8  10 10 81 e2                                      add r1, r1, #0x10
005d2cec  f3 ff ff 1a                                      bne #0x5d2cc0
005d2cf0  01 00 a0 e3                                      mov r0, #1
005d2cf4  10 80 bd e8                                      pop {r4, pc}
005d2cf8  08 c0 91 e5                                      ldr ip, [r1, #8]
005d2cfc  0c 30 91 e5                                      ldr r3, [r1, #0xc]
005d2d00  24 00 90 e5                                      ldr r0, [r0, #0x24]
005d2d04  02 10 a0 e1                                      mov r1, r2
005d2d08  0c 22 a0 e1                                      lsl r2, ip, #4
005d2d0c  03 00 80 e0                                      add r0, r0, r3
005d2d10  d4 ee f4 eb                                      bl #0x30e868
005d2d14  01 00 a0 e3                                      mov r0, #1
005d2d18  10 80 bd e8                                      pop {r4, pc}

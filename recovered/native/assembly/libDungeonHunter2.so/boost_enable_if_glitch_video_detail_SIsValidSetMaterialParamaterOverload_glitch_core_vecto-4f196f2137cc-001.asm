; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005c62b4, declared_size=156, range_size=156, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector2d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE12setParameterINS_4core8vector2dIiEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector2d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::setParameter<glitch::core::vector2d<int> >(unsigned short, unsigned int, glitch::core::vector2d<int> const&)
; decoder-mode: arm
005c62b4  70 00 2d e9                                      push {r4, r5, r6}
005c62b8  04 c0 90 e5                                      ldr ip, [r0, #4]
005c62bc  be 40 dc e1                                      ldrh r4, [ip, #0xe]
005c62c0  01 00 54 e1                                      cmp r4, r1
005c62c4  05 00 00 9a                                      bls #0x5c62e0
005c62c8  20 c0 9c e5                                      ldr ip, [ip, #0x20]
005c62cc  01 12 9c e0                                      adds r1, ip, r1, lsl #4
005c62d0  02 00 00 0a                                      beq #0x5c62e0
005c62d4  06 c0 d1 e5                                      ldrb ip, [r1, #6]
005c62d8  02 00 5c e3                                      cmp ip, #2
005c62dc  02 00 00 0a                                      beq #0x5c62ec
005c62e0  00 00 a0 e3                                      mov r0, #0
005c62e4  70 00 bd e8                                      pop {r4, r5, r6}
005c62e8  1e ff 2f e1                                      bx lr
005c62ec  08 c0 91 e5                                      ldr ip, [r1, #8]
005c62f0  0c 00 52 e1                                      cmp r2, ip
005c62f4  f9 ff ff 2a                                      bhs #0x5c62e0
005c62f8  0c 40 91 e5                                      ldr r4, [r1, #0xc]
005c62fc  20 c0 80 e2                                      add ip, r0, #0x20
005c6300  00 10 93 e5                                      ldr r1, [r3]
005c6304  82 21 84 e0                                      add r2, r4, r2, lsl #3
005c6308  02 50 9c e7                                      ldr r5, [ip, r2]
005c630c  02 40 8c e0                                      add r4, ip, r2
005c6310  05 00 51 e1                                      cmp r1, r5
005c6314  08 00 00 0a                                      beq #0x5c633c
005c6318  00 10 e0 e3                                      mvn r1, #0
005c631c  0c 10 80 e5                                      str r1, [r0, #0xc]
005c6320  10 10 80 e5                                      str r1, [r0, #0x10]
005c6324  00 10 93 e5                                      ldr r1, [r3]
005c6328  02 10 8c e7                                      str r1, [ip, r2]
005c632c  04 30 93 e5                                      ldr r3, [r3, #4]
005c6330  01 00 a0 e3                                      mov r0, #1
005c6334  04 30 84 e5                                      str r3, [r4, #4]
005c6338  e9 ff ff ea                                      b #0x5c62e4
005c633c  04 60 93 e5                                      ldr r6, [r3, #4]
005c6340  04 50 94 e5                                      ldr r5, [r4, #4]
005c6344  05 00 56 e1                                      cmp r6, r5
005c6348  f2 ff ff 1a                                      bne #0x5c6318
005c634c  f5 ff ff ea                                      b #0x5c6328

; FUNCTION 0x005c6904, declared_size=192, range_size=192, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector2d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS_4core8vector2dIiEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector2d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::setParameterCvt<glitch::core::vector2d<int> >(unsigned short, unsigned int, glitch::core::vector2d<int> const&)
; decoder-mode: arm
005c6904  70 00 2d e9                                      push {r4, r5, r6}
005c6908  04 40 90 e5                                      ldr r4, [r0, #4]
005c690c  a8 c0 9f e5                                      ldr ip, [pc, #0xa8]
005c6910  be 50 d4 e1                                      ldrh r5, [r4, #0xe]
005c6914  0c c0 8f e0                                      add ip, pc, ip
005c6918  01 00 55 e1                                      cmp r5, r1
005c691c  1e 00 00 9a                                      bls #0x5c699c
005c6920  20 40 94 e5                                      ldr r4, [r4, #0x20]
005c6924  01 12 94 e0                                      adds r1, r4, r1, lsl #4
005c6928  1b 00 00 0a                                      beq #0x5c699c
005c692c  8c 50 9f e5                                      ldr r5, [pc, #0x8c]
005c6930  06 40 d1 e5                                      ldrb r4, [r1, #6]
005c6934  05 c0 9c e7                                      ldr ip, [ip, r5]
005c6938  04 c1 9c e7                                      ldr ip, [ip, r4, lsl #2]
005c693c  04 00 1c e3                                      tst ip, #4
005c6940  15 00 00 0a                                      beq #0x5c699c
005c6944  08 c0 91 e5                                      ldr ip, [r1, #8]
005c6948  0c 00 52 e1                                      cmp r2, ip
005c694c  12 00 00 2a                                      bhs #0x5c699c
005c6950  02 00 54 e3                                      cmp r4, #2
005c6954  0c c0 91 e5                                      ldr ip, [r1, #0xc]
005c6958  01 00 a0 13                                      movne r0, #1
005c695c  0f 00 00 1a                                      bne #0x5c69a0
005c6960  20 20 80 e2                                      add r2, r0, #0x20
005c6964  00 10 93 e5                                      ldr r1, [r3]
005c6968  0c 50 92 e7                                      ldr r5, [r2, ip]
005c696c  0c 40 82 e0                                      add r4, r2, ip
005c6970  05 00 51 e1                                      cmp r1, r5
005c6974  0b 00 00 0a                                      beq #0x5c69a8
005c6978  00 10 e0 e3                                      mvn r1, #0
005c697c  0c 10 80 e5                                      str r1, [r0, #0xc]
005c6980  10 10 80 e5                                      str r1, [r0, #0x10]
005c6984  00 10 93 e5                                      ldr r1, [r3]
005c6988  0c 10 82 e7                                      str r1, [r2, ip]
005c698c  04 30 93 e5                                      ldr r3, [r3, #4]
005c6990  01 00 a0 e3                                      mov r0, #1
005c6994  04 30 84 e5                                      str r3, [r4, #4]
005c6998  00 00 00 ea                                      b #0x5c69a0
005c699c  00 00 a0 e3                                      mov r0, #0
005c69a0  70 00 bd e8                                      pop {r4, r5, r6}
005c69a4  1e ff 2f e1                                      bx lr
005c69a8  04 60 93 e5                                      ldr r6, [r3, #4]
005c69ac  04 50 94 e5                                      ldr r5, [r4, #4]
005c69b0  05 00 56 e1                                      cmp r6, r5
005c69b4  ef ff ff 1a                                      bne #0x5c6978
005c69b8  f2 ff ff ea                                      b #0x5c6988
; mapping-symbol data/literal pool
005c69bc  7c e1 3c 00 a4 2c 00 00                          .byte 0x7c, 0xe1, 0x3c, 0x00, 0xa4, 0x2c, 0x00, 0x00

; FUNCTION 0x005c6e84, declared_size=108, range_size=108, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector2d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE12getParameterINS_4core8vector2dIiEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRSE_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector2d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::getParameter<glitch::core::vector2d<int> >(unsigned short, unsigned int, glitch::core::vector2d<int>&) const
; decoder-mode: arm
005c6e84  04 40 2d e5                                      str r4, [sp, #-4]!
005c6e88  04 c0 90 e5                                      ldr ip, [r0, #4]
005c6e8c  be 40 dc e1                                      ldrh r4, [ip, #0xe]
005c6e90  01 00 54 e1                                      cmp r4, r1
005c6e94  05 00 00 9a                                      bls #0x5c6eb0
005c6e98  20 c0 9c e5                                      ldr ip, [ip, #0x20]
005c6e9c  01 12 9c e0                                      adds r1, ip, r1, lsl #4
005c6ea0  02 00 00 0a                                      beq #0x5c6eb0
005c6ea4  06 c0 d1 e5                                      ldrb ip, [r1, #6]
005c6ea8  02 00 5c e3                                      cmp ip, #2
005c6eac  02 00 00 0a                                      beq #0x5c6ebc
005c6eb0  00 00 a0 e3                                      mov r0, #0
005c6eb4  10 00 bd e8                                      ldm sp!, {r4}
005c6eb8  1e ff 2f e1                                      bx lr
005c6ebc  08 c0 91 e5                                      ldr ip, [r1, #8]
005c6ec0  0c 00 52 e1                                      cmp r2, ip
005c6ec4  f9 ff ff 2a                                      bhs #0x5c6eb0
005c6ec8  0c c0 91 e5                                      ldr ip, [r1, #0xc]
005c6ecc  20 10 80 e2                                      add r1, r0, #0x20
005c6ed0  01 00 a0 e3                                      mov r0, #1
005c6ed4  82 21 8c e0                                      add r2, ip, r2, lsl #3
005c6ed8  02 c0 91 e7                                      ldr ip, [r1, r2]
005c6edc  02 20 81 e0                                      add r2, r1, r2
005c6ee0  00 c0 83 e5                                      str ip, [r3]
005c6ee4  04 20 92 e5                                      ldr r2, [r2, #4]
005c6ee8  04 20 83 e5                                      str r2, [r3, #4]
005c6eec  f0 ff ff ea                                      b #0x5c6eb4

; FUNCTION 0x005c7310, declared_size=140, range_size=140, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector2d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15getParameterCvtINS_4core8vector2dIiEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRSE_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector2d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::getParameterCvt<glitch::core::vector2d<int> >(unsigned short, unsigned int, glitch::core::vector2d<int>&) const
; decoder-mode: arm
005c7310  30 00 2d e9                                      push {r4, r5}
005c7314  04 40 90 e5                                      ldr r4, [r0, #4]
005c7318  74 c0 9f e5                                      ldr ip, [pc, #0x74]
005c731c  be 50 d4 e1                                      ldrh r5, [r4, #0xe]
005c7320  0c c0 8f e0                                      add ip, pc, ip
005c7324  01 00 55 e1                                      cmp r5, r1
005c7328  16 00 00 9a                                      bls #0x5c7388
005c732c  20 40 94 e5                                      ldr r4, [r4, #0x20]
005c7330  01 12 94 e0                                      adds r1, r4, r1, lsl #4
005c7334  13 00 00 0a                                      beq #0x5c7388
005c7338  58 50 9f e5                                      ldr r5, [pc, #0x58]
005c733c  06 40 d1 e5                                      ldrb r4, [r1, #6]
005c7340  05 c0 9c e7                                      ldr ip, [ip, r5]
005c7344  04 c1 9c e7                                      ldr ip, [ip, r4, lsl #2]
005c7348  04 00 1c e3                                      tst ip, #4
005c734c  0d 00 00 0a                                      beq #0x5c7388
005c7350  08 c0 91 e5                                      ldr ip, [r1, #8]
005c7354  0c 00 52 e1                                      cmp r2, ip
005c7358  0a 00 00 2a                                      bhs #0x5c7388
005c735c  0c 20 91 e5                                      ldr r2, [r1, #0xc]
005c7360  02 00 54 e3                                      cmp r4, #2
005c7364  20 00 80 02                                      addeq r0, r0, #0x20
005c7368  02 10 90 07                                      ldreq r1, [r0, r2]
005c736c  02 20 80 00                                      addeq r2, r0, r2
005c7370  01 00 a0 13                                      movne r0, #1
005c7374  00 10 83 05                                      streq r1, [r3]
005c7378  04 20 92 05                                      ldreq r2, [r2, #4]
005c737c  01 00 a0 03                                      moveq r0, #1
005c7380  04 20 83 05                                      streq r2, [r3, #4]
005c7384  00 00 00 ea                                      b #0x5c738c
005c7388  00 00 a0 e3                                      mov r0, #0
005c738c  30 00 bd e8                                      pop {r4, r5}
005c7390  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
005c7394  70 d7 3c 00 a4 2c 00 00                          .byte 0x70, 0xd7, 0x3c, 0x00, 0xa4, 0x2c, 0x00, 0x00

; FUNCTION 0x005c8584, declared_size=236, range_size=236, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector2d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15getParameterCvtINS_4core8vector2dIiEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPSE_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector2d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::getParameterCvt<glitch::core::vector2d<int> >(unsigned short, glitch::core::vector2d<int>*, int) const
; decoder-mode: arm
005c8584  70 40 2d e9                                      push {r4, r5, r6, lr}
005c8588  04 40 90 e5                                      ldr r4, [r0, #4]
005c858c  d4 c0 9f e5                                      ldr ip, [pc, #0xd4]
005c8590  be 50 d4 e1                                      ldrh r5, [r4, #0xe]
005c8594  0c c0 8f e0                                      add ip, pc, ip
005c8598  01 00 55 e1                                      cmp r5, r1
005c859c  13 00 00 9a                                      bls #0x5c85f0
005c85a0  20 40 94 e5                                      ldr r4, [r4, #0x20]
005c85a4  01 12 94 e0                                      adds r1, r4, r1, lsl #4
005c85a8  10 00 00 0a                                      beq #0x5c85f0
005c85ac  b8 50 9f e5                                      ldr r5, [pc, #0xb8]
005c85b0  06 40 d1 e5                                      ldrb r4, [r1, #6]
005c85b4  05 c0 9c e7                                      ldr ip, [ip, r5]
005c85b8  04 c1 9c e7                                      ldr ip, [ip, r4, lsl #2]
005c85bc  04 00 1c e3                                      tst ip, #4
005c85c0  0a 00 00 0a                                      beq #0x5c85f0
005c85c4  01 c0 73 e2                                      rsbs ip, r3, #1
005c85c8  00 c0 a0 33                                      movlo ip, #0
005c85cc  00 00 53 e3                                      cmp r3, #0
005c85d0  08 00 53 13                                      cmpne r3, #8
005c85d4  07 00 00 1a                                      bne #0x5c85f8
005c85d8  02 00 54 e3                                      cmp r4, #2
005c85dc  18 00 00 0a                                      beq #0x5c8644
005c85e0  00 00 5c e3                                      cmp ip, #0
005c85e4  03 00 00 0a                                      beq #0x5c85f8
005c85e8  01 00 a0 e3                                      mov r0, #1
005c85ec  70 80 bd e8                                      pop {r4, r5, r6, pc}
005c85f0  00 00 a0 e3                                      mov r0, #0
005c85f4  70 80 bd e8                                      pop {r4, r5, r6, pc}
005c85f8  02 00 54 e3                                      cmp r4, #2
005c85fc  0c 40 91 e5                                      ldr r4, [r1, #0xc]
005c8600  f8 ff ff 1a                                      bne #0x5c85e8
005c8604  08 c0 91 e5                                      ldr ip, [r1, #8]
005c8608  00 00 5c e3                                      cmp ip, #0
005c860c  f5 ff ff 0a                                      beq #0x5c85e8
005c8610  20 00 80 e2                                      add r0, r0, #0x20
005c8614  04 00 80 e0                                      add r0, r0, r4
005c8618  00 40 a0 e3                                      mov r4, #0
005c861c  00 10 a0 e1                                      mov r1, r0
005c8620  04 50 b1 e7                                      ldr r5, [r1, r4]!
005c8624  01 c0 5c e2                                      subs ip, ip, #1
005c8628  08 40 84 e2                                      add r4, r4, #8
005c862c  00 50 82 e5                                      str r5, [r2]
005c8630  04 10 91 e5                                      ldr r1, [r1, #4]
005c8634  04 10 82 e5                                      str r1, [r2, #4]
005c8638  03 20 82 e0                                      add r2, r2, r3
005c863c  f6 ff ff 1a                                      bne #0x5c861c
005c8640  e8 ff ff ea                                      b #0x5c85e8
005c8644  0c c0 91 e5                                      ldr ip, [r1, #0xc]
005c8648  08 30 91 e5                                      ldr r3, [r1, #8]
005c864c  20 10 80 e2                                      add r1, r0, #0x20
005c8650  0c 10 81 e0                                      add r1, r1, ip
005c8654  02 00 a0 e1                                      mov r0, r2
005c8658  83 21 a0 e1                                      lsl r2, r3, #3
005c865c  81 18 f5 eb                                      bl #0x30e868
005c8660  01 00 a0 e3                                      mov r0, #1
005c8664  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005c8668  fc c4 3c 00 a4 2c 00 00                          .byte 0xfc, 0xc4, 0x3c, 0x00, 0xa4, 0x2c, 0x00, 0x00

; FUNCTION 0x005c8cdc, declared_size=176, range_size=176, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector2d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE12getParameterINS_4core8vector2dIiEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPSE_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector2d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::getParameter<glitch::core::vector2d<int> >(unsigned short, glitch::core::vector2d<int>*, int) const
; decoder-mode: arm
005c8cdc  70 40 2d e9                                      push {r4, r5, r6, lr}
005c8ce0  04 c0 90 e5                                      ldr ip, [r0, #4]
005c8ce4  be 40 dc e1                                      ldrh r4, [ip, #0xe]
005c8ce8  01 00 54 e1                                      cmp r4, r1
005c8cec  05 00 00 9a                                      bls #0x5c8d08
005c8cf0  20 c0 9c e5                                      ldr ip, [ip, #0x20]
005c8cf4  01 12 9c e0                                      adds r1, ip, r1, lsl #4
005c8cf8  02 00 00 0a                                      beq #0x5c8d08
005c8cfc  06 c0 d1 e5                                      ldrb ip, [r1, #6]
005c8d00  02 00 5c e3                                      cmp ip, #2
005c8d04  01 00 00 0a                                      beq #0x5c8d10
005c8d08  00 00 a0 e3                                      mov r0, #0
005c8d0c  70 80 bd e8                                      pop {r4, r5, r6, pc}
005c8d10  00 00 53 e3                                      cmp r3, #0
005c8d14  08 00 53 13                                      cmpne r3, #8
005c8d18  00 40 a0 13                                      movne r4, #0
005c8d1c  01 40 a0 03                                      moveq r4, #1
005c8d20  10 00 00 0a                                      beq #0x5c8d68
005c8d24  08 c0 91 e5                                      ldr ip, [r1, #8]
005c8d28  0c 10 91 e5                                      ldr r1, [r1, #0xc]
005c8d2c  00 00 5c e3                                      cmp ip, #0
005c8d30  0a 00 00 0a                                      beq #0x5c8d60
005c8d34  20 00 80 e2                                      add r0, r0, #0x20
005c8d38  01 00 80 e0                                      add r0, r0, r1
005c8d3c  00 10 a0 e1                                      mov r1, r0
005c8d40  04 50 b1 e7                                      ldr r5, [r1, r4]!
005c8d44  01 c0 5c e2                                      subs ip, ip, #1
005c8d48  08 40 84 e2                                      add r4, r4, #8
005c8d4c  00 50 82 e5                                      str r5, [r2]
005c8d50  04 10 91 e5                                      ldr r1, [r1, #4]
005c8d54  04 10 82 e5                                      str r1, [r2, #4]
005c8d58  03 20 82 e0                                      add r2, r2, r3
005c8d5c  f6 ff ff 1a                                      bne #0x5c8d3c
005c8d60  01 00 a0 e3                                      mov r0, #1
005c8d64  70 80 bd e8                                      pop {r4, r5, r6, pc}
005c8d68  0c c0 91 e5                                      ldr ip, [r1, #0xc]
005c8d6c  08 30 91 e5                                      ldr r3, [r1, #8]
005c8d70  20 10 80 e2                                      add r1, r0, #0x20
005c8d74  0c 10 81 e0                                      add r1, r1, ip
005c8d78  02 00 a0 e1                                      mov r0, r2
005c8d7c  83 21 a0 e1                                      lsl r2, r3, #3
005c8d80  b8 16 f5 eb                                      bl #0x30e868
005c8d84  01 00 a0 e3                                      mov r0, #1
005c8d88  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x005c9988, declared_size=256, range_size=256, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector2d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS_4core8vector2dIiEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPKSE_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector2d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::setParameterCvt<glitch::core::vector2d<int> >(unsigned short, glitch::core::vector2d<int> const*, int)
; decoder-mode: arm
005c9988  70 40 2d e9                                      push {r4, r5, r6, lr}
005c998c  04 40 90 e5                                      ldr r4, [r0, #4]
005c9990  e8 c0 9f e5                                      ldr ip, [pc, #0xe8]
005c9994  be 50 d4 e1                                      ldrh r5, [r4, #0xe]
005c9998  0c c0 8f e0                                      add ip, pc, ip
005c999c  01 00 55 e1                                      cmp r5, r1
005c99a0  18 00 00 9a                                      bls #0x5c9a08
005c99a4  20 40 94 e5                                      ldr r4, [r4, #0x20]
005c99a8  01 12 94 e0                                      adds r1, r4, r1, lsl #4
005c99ac  15 00 00 0a                                      beq #0x5c9a08
005c99b0  cc 50 9f e5                                      ldr r5, [pc, #0xcc]
005c99b4  06 40 d1 e5                                      ldrb r4, [r1, #6]
005c99b8  05 c0 9c e7                                      ldr ip, [ip, r5]
005c99bc  04 c1 9c e7                                      ldr ip, [ip, r4, lsl #2]
005c99c0  04 00 1c e3                                      tst ip, #4
005c99c4  0f 00 00 0a                                      beq #0x5c9a08
005c99c8  00 c0 e0 e3                                      mvn ip, #0
005c99cc  01 40 73 e2                                      rsbs r4, r3, #1
005c99d0  00 40 a0 33                                      movlo r4, #0
005c99d4  0c c0 80 e5                                      str ip, [r0, #0xc]
005c99d8  00 00 53 e3                                      cmp r3, #0
005c99dc  08 00 53 13                                      cmpne r3, #8
005c99e0  10 c0 80 e5                                      str ip, [r0, #0x10]
005c99e4  06 c0 d1 15                                      ldrbne ip, [r1, #6]
005c99e8  08 00 00 1a                                      bne #0x5c9a10
005c99ec  06 c0 d1 e5                                      ldrb ip, [r1, #6]
005c99f0  02 00 5c e3                                      cmp ip, #2
005c99f4  18 00 00 0a                                      beq #0x5c9a5c
005c99f8  00 00 54 e3                                      cmp r4, #0
005c99fc  03 00 00 0a                                      beq #0x5c9a10
005c9a00  01 00 a0 e3                                      mov r0, #1
005c9a04  70 80 bd e8                                      pop {r4, r5, r6, pc}
005c9a08  00 00 a0 e3                                      mov r0, #0
005c9a0c  70 80 bd e8                                      pop {r4, r5, r6, pc}
005c9a10  02 00 5c e3                                      cmp ip, #2
005c9a14  0c 40 91 e5                                      ldr r4, [r1, #0xc]
005c9a18  f8 ff ff 1a                                      bne #0x5c9a00
005c9a1c  08 c0 91 e5                                      ldr ip, [r1, #8]
005c9a20  00 00 5c e3                                      cmp ip, #0
005c9a24  f5 ff ff 0a                                      beq #0x5c9a00
005c9a28  20 00 80 e2                                      add r0, r0, #0x20
005c9a2c  04 00 80 e0                                      add r0, r0, r4
005c9a30  00 40 a0 e3                                      mov r4, #0
005c9a34  00 50 92 e5                                      ldr r5, [r2]
005c9a38  00 10 a0 e1                                      mov r1, r0
005c9a3c  01 c0 5c e2                                      subs ip, ip, #1
005c9a40  04 50 a1 e7                                      str r5, [r1, r4]!
005c9a44  04 50 92 e5                                      ldr r5, [r2, #4]
005c9a48  08 40 84 e2                                      add r4, r4, #8
005c9a4c  03 20 82 e0                                      add r2, r2, r3
005c9a50  04 50 81 e5                                      str r5, [r1, #4]
005c9a54  f6 ff ff 1a                                      bne #0x5c9a34
005c9a58  e8 ff ff ea                                      b #0x5c9a00
005c9a5c  08 30 91 e5                                      ldr r3, [r1, #8]
005c9a60  0c c0 91 e5                                      ldr ip, [r1, #0xc]
005c9a64  20 00 80 e2                                      add r0, r0, #0x20
005c9a68  02 10 a0 e1                                      mov r1, r2
005c9a6c  0c 00 80 e0                                      add r0, r0, ip
005c9a70  83 21 a0 e1                                      lsl r2, r3, #3
005c9a74  7b 13 f5 eb                                      bl #0x30e868
005c9a78  01 00 a0 e3                                      mov r0, #1
005c9a7c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005c9a80  f8 b0 3c 00 a4 2c 00 00                          .byte 0xf8, 0xb0, 0x3c, 0x00, 0xa4, 0x2c, 0x00, 0x00

; FUNCTION 0x005ca1a4, declared_size=188, range_size=188, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector2d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE12setParameterINS_4core8vector2dIiEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPKSE_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector2d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::setParameter<glitch::core::vector2d<int> >(unsigned short, glitch::core::vector2d<int> const*, int)
; decoder-mode: arm
005ca1a4  70 40 2d e9                                      push {r4, r5, r6, lr}
005ca1a8  04 c0 90 e5                                      ldr ip, [r0, #4]
005ca1ac  be 40 dc e1                                      ldrh r4, [ip, #0xe]
005ca1b0  01 00 54 e1                                      cmp r4, r1
005ca1b4  05 00 00 9a                                      bls #0x5ca1d0
005ca1b8  20 c0 9c e5                                      ldr ip, [ip, #0x20]
005ca1bc  01 12 9c e0                                      adds r1, ip, r1, lsl #4
005ca1c0  02 00 00 0a                                      beq #0x5ca1d0
005ca1c4  06 c0 d1 e5                                      ldrb ip, [r1, #6]
005ca1c8  02 00 5c e3                                      cmp ip, #2
005ca1cc  01 00 00 0a                                      beq #0x5ca1d8
005ca1d0  00 00 a0 e3                                      mov r0, #0
005ca1d4  70 80 bd e8                                      pop {r4, r5, r6, pc}
005ca1d8  00 c0 e0 e3                                      mvn ip, #0
005ca1dc  00 00 53 e3                                      cmp r3, #0
005ca1e0  08 00 53 13                                      cmpne r3, #8
005ca1e4  00 40 a0 13                                      movne r4, #0
005ca1e8  01 40 a0 03                                      moveq r4, #1
005ca1ec  0c c0 80 e5                                      str ip, [r0, #0xc]
005ca1f0  10 c0 80 e5                                      str ip, [r0, #0x10]
005ca1f4  10 00 00 0a                                      beq #0x5ca23c
005ca1f8  08 c0 91 e5                                      ldr ip, [r1, #8]
005ca1fc  0c 10 91 e5                                      ldr r1, [r1, #0xc]
005ca200  00 00 5c e3                                      cmp ip, #0
005ca204  0a 00 00 0a                                      beq #0x5ca234
005ca208  20 00 80 e2                                      add r0, r0, #0x20
005ca20c  01 00 80 e0                                      add r0, r0, r1
005ca210  00 50 92 e5                                      ldr r5, [r2]
005ca214  00 10 a0 e1                                      mov r1, r0
005ca218  01 c0 5c e2                                      subs ip, ip, #1
005ca21c  04 50 a1 e7                                      str r5, [r1, r4]!
005ca220  04 50 92 e5                                      ldr r5, [r2, #4]
005ca224  08 40 84 e2                                      add r4, r4, #8
005ca228  03 20 82 e0                                      add r2, r2, r3
005ca22c  04 50 81 e5                                      str r5, [r1, #4]
005ca230  f6 ff ff 1a                                      bne #0x5ca210
005ca234  01 00 a0 e3                                      mov r0, #1
005ca238  70 80 bd e8                                      pop {r4, r5, r6, pc}
005ca23c  08 30 91 e5                                      ldr r3, [r1, #8]
005ca240  0c c0 91 e5                                      ldr ip, [r1, #0xc]
005ca244  20 00 80 e2                                      add r0, r0, #0x20
005ca248  02 10 a0 e1                                      mov r1, r2
005ca24c  0c 00 80 e0                                      add r0, r0, ip
005ca250  83 21 a0 e1                                      lsl r2, r3, #3
005ca254  83 11 f5 eb                                      bl #0x30e868
005ca258  01 00 a0 e3                                      mov r0, #1
005ca25c  70 80 bd e8                                      pop {r4, r5, r6, pc}

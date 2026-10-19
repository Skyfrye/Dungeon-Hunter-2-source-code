; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005c67b4, declared_size=128, range_size=128, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::video::SColor>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE12setParameterINS0_6SColorEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSC_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::video::SColor>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::setParameter<glitch::video::SColor>(unsigned short, unsigned int, glitch::video::SColor const&)
; decoder-mode: arm
005c67b4  10 40 2d e9                                      push {r4, lr}
005c67b8  04 c0 90 e5                                      ldr ip, [r0, #4]
005c67bc  be 40 dc e1                                      ldrh r4, [ip, #0xe]
005c67c0  01 00 54 e1                                      cmp r4, r1
005c67c4  01 00 00 8a                                      bhi #0x5c67d0
005c67c8  00 00 a0 e3                                      mov r0, #0
005c67cc  10 80 bd e8                                      pop {r4, pc}
005c67d0  20 c0 9c e5                                      ldr ip, [ip, #0x20]
005c67d4  01 12 9c e0                                      adds r1, ip, r1, lsl #4
005c67d8  fa ff ff 0a                                      beq #0x5c67c8
005c67dc  06 c0 d1 e5                                      ldrb ip, [r1, #6]
005c67e0  10 00 5c e3                                      cmp ip, #0x10
005c67e4  f7 ff ff 1a                                      bne #0x5c67c8
005c67e8  08 c0 91 e5                                      ldr ip, [r1, #8]
005c67ec  0c 00 52 e1                                      cmp r2, ip
005c67f0  f4 ff ff 2a                                      bhs #0x5c67c8
005c67f4  0c e0 91 e5                                      ldr lr, [r1, #0xc]
005c67f8  20 10 80 e2                                      add r1, r0, #0x20
005c67fc  00 c0 93 e5                                      ldr ip, [r3]
005c6800  02 21 8e e0                                      add r2, lr, r2, lsl #2
005c6804  02 e0 91 e7                                      ldr lr, [r1, r2]
005c6808  02 20 81 e0                                      add r2, r1, r2
005c680c  0c 00 5e e1                                      cmp lr, ip
005c6810  00 10 e0 13                                      mvnne r1, #0
005c6814  0c 10 80 15                                      strne r1, [r0, #0xc]
005c6818  10 10 80 15                                      strne r1, [r0, #0x10]
005c681c  02 00 a0 e1                                      mov r0, r2
005c6820  03 10 a0 e1                                      mov r1, r3
005c6824  04 20 a0 e3                                      mov r2, #4
005c6828  0e 20 f5 eb                                      bl #0x30e868
005c682c  01 00 a0 e3                                      mov r0, #1
005c6830  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005c71a4, declared_size=100, range_size=100, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::video::SColor>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE12getParameterINS0_6SColorEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRSC_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::video::SColor>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::getParameter<glitch::video::SColor>(unsigned short, unsigned int, glitch::video::SColor&) const
; decoder-mode: arm
005c71a4  10 40 2d e9                                      push {r4, lr}
005c71a8  04 c0 90 e5                                      ldr ip, [r0, #4]
005c71ac  be 40 dc e1                                      ldrh r4, [ip, #0xe]
005c71b0  01 00 54 e1                                      cmp r4, r1
005c71b4  05 00 00 9a                                      bls #0x5c71d0
005c71b8  20 c0 9c e5                                      ldr ip, [ip, #0x20]
005c71bc  01 12 9c e0                                      adds r1, ip, r1, lsl #4
005c71c0  02 00 00 0a                                      beq #0x5c71d0
005c71c4  06 c0 d1 e5                                      ldrb ip, [r1, #6]
005c71c8  10 00 5c e3                                      cmp ip, #0x10
005c71cc  01 00 00 0a                                      beq #0x5c71d8
005c71d0  00 00 a0 e3                                      mov r0, #0
005c71d4  10 80 bd e8                                      pop {r4, pc}
005c71d8  08 c0 91 e5                                      ldr ip, [r1, #8]
005c71dc  0c 00 52 e1                                      cmp r2, ip
005c71e0  fa ff ff 2a                                      bhs #0x5c71d0
005c71e4  0c 10 91 e5                                      ldr r1, [r1, #0xc]
005c71e8  02 21 80 e0                                      add r2, r0, r2, lsl #2
005c71ec  03 00 a0 e1                                      mov r0, r3
005c71f0  01 10 82 e0                                      add r1, r2, r1
005c71f4  20 10 81 e2                                      add r1, r1, #0x20
005c71f8  04 20 a0 e3                                      mov r2, #4
005c71fc  99 1d f5 eb                                      bl #0x30e868
005c7200  01 00 a0 e3                                      mov r0, #1
005c7204  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005c77c8, declared_size=396, range_size=396, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::video::SColor>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15getParameterCvtINS0_6SColorEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRSC_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::video::SColor>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::getParameterCvt<glitch::video::SColor>(unsigned short, unsigned int, glitch::video::SColor&) const
; decoder-mode: arm
005c77c8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005c77cc  04 40 90 e5                                      ldr r4, [r0, #4]
005c77d0  74 c1 9f e5                                      ldr ip, [pc, #0x174]
005c77d4  be 50 d4 e1                                      ldrh r5, [r4, #0xe]
005c77d8  0c c0 8f e0                                      add ip, pc, ip
005c77dc  01 00 55 e1                                      cmp r5, r1
005c77e0  03 50 a0 e1                                      mov r5, r3
005c77e4  16 00 00 9a                                      bls #0x5c7844
005c77e8  20 30 94 e5                                      ldr r3, [r4, #0x20]
005c77ec  01 12 93 e0                                      adds r1, r3, r1, lsl #4
005c77f0  13 00 00 0a                                      beq #0x5c7844
005c77f4  54 41 9f e5                                      ldr r4, [pc, #0x154]
005c77f8  06 30 d1 e5                                      ldrb r3, [r1, #6]
005c77fc  04 c0 9c e7                                      ldr ip, [ip, r4]
005c7800  03 c1 9c e7                                      ldr ip, [ip, r3, lsl #2]
005c7804  01 08 1c e3                                      tst ip, #0x10000
005c7808  0d 00 00 0a                                      beq #0x5c7844
005c780c  08 c0 91 e5                                      ldr ip, [r1, #8]
005c7810  0c 00 52 e1                                      cmp r2, ip
005c7814  0a 00 00 2a                                      bhs #0x5c7844
005c7818  0c 60 91 e5                                      ldr r6, [r1, #0xc]
005c781c  20 70 80 e2                                      add r7, r0, #0x20
005c7820  10 00 53 e3                                      cmp r3, #0x10
005c7824  06 40 87 e0                                      add r4, r7, r6
005c7828  07 00 00 0a                                      beq #0x5c784c
005c782c  11 00 53 e3                                      cmp r3, #0x11
005c7830  28 00 00 0a                                      beq #0x5c78d8
005c7834  08 00 53 e3                                      cmp r3, #8
005c7838  09 00 00 0a                                      beq #0x5c7864
005c783c  01 00 a0 e3                                      mov r0, #1
005c7840  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005c7844  00 00 a0 e3                                      mov r0, #0
005c7848  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005c784c  05 00 a0 e1                                      mov r0, r5
005c7850  04 10 a0 e1                                      mov r1, r4
005c7854  04 20 a0 e3                                      mov r2, #4
005c7858  02 1c f5 eb                                      bl #0x30e868
005c785c  01 00 a0 e3                                      mov r0, #1
005c7860  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005c7864  43 14 a0 e3                                      mov r1, #0x43000000
005c7868  0c 00 94 e5                                      ldr r0, [r4, #0xc]
005c786c  7f 18 81 e2                                      add r1, r1, #0x7f0000
005c7870  3d 1d f5 eb                                      bl #0x30ed6c
005c7874  89 da 0b eb                                      bl #0x8be2a0
005c7878  43 14 a0 e3                                      mov r1, #0x43000000
005c787c  7f 18 81 e2                                      add r1, r1, #0x7f0000
005c7880  70 80 ef e6                                      uxtb r8, r0
005c7884  06 00 97 e7                                      ldr r0, [r7, r6]
005c7888  37 1d f5 eb                                      bl #0x30ed6c
005c788c  83 da 0b eb                                      bl #0x8be2a0
005c7890  43 14 a0 e3                                      mov r1, #0x43000000
005c7894  7f 18 81 e2                                      add r1, r1, #0x7f0000
005c7898  70 70 ef e6                                      uxtb r7, r0
005c789c  04 00 94 e5                                      ldr r0, [r4, #4]
005c78a0  31 1d f5 eb                                      bl #0x30ed6c
005c78a4  7d da 0b eb                                      bl #0x8be2a0
005c78a8  43 14 a0 e3                                      mov r1, #0x43000000
005c78ac  70 60 ef e6                                      uxtb r6, r0
005c78b0  7f 18 81 e2                                      add r1, r1, #0x7f0000
005c78b4  08 00 94 e5                                      ldr r0, [r4, #8]
005c78b8  2b 1d f5 eb                                      bl #0x30ed6c
005c78bc  77 da 0b eb                                      bl #0x8be2a0
005c78c0  00 70 c5 e5                                      strb r7, [r5]
005c78c4  02 00 c5 e5                                      strb r0, [r5, #2]
005c78c8  03 80 c5 e5                                      strb r8, [r5, #3]
005c78cc  01 60 c5 e5                                      strb r6, [r5, #1]
005c78d0  01 00 a0 e3                                      mov r0, #1
005c78d4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005c78d8  43 14 a0 e3                                      mov r1, #0x43000000
005c78dc  0c 00 94 e5                                      ldr r0, [r4, #0xc]
005c78e0  7f 18 81 e2                                      add r1, r1, #0x7f0000
005c78e4  20 1d f5 eb                                      bl #0x30ed6c
005c78e8  6c da 0b eb                                      bl #0x8be2a0
005c78ec  43 14 a0 e3                                      mov r1, #0x43000000
005c78f0  7f 18 81 e2                                      add r1, r1, #0x7f0000
005c78f4  70 80 ef e6                                      uxtb r8, r0
005c78f8  06 00 97 e7                                      ldr r0, [r7, r6]
005c78fc  1a 1d f5 eb                                      bl #0x30ed6c
005c7900  66 da 0b eb                                      bl #0x8be2a0
005c7904  43 14 a0 e3                                      mov r1, #0x43000000
005c7908  7f 18 81 e2                                      add r1, r1, #0x7f0000
005c790c  70 70 ef e6                                      uxtb r7, r0
005c7910  04 00 94 e5                                      ldr r0, [r4, #4]
005c7914  14 1d f5 eb                                      bl #0x30ed6c
005c7918  60 da 0b eb                                      bl #0x8be2a0
005c791c  43 14 a0 e3                                      mov r1, #0x43000000
005c7920  70 60 ef e6                                      uxtb r6, r0
005c7924  7f 18 81 e2                                      add r1, r1, #0x7f0000
005c7928  08 00 94 e5                                      ldr r0, [r4, #8]
005c792c  0e 1d f5 eb                                      bl #0x30ed6c
005c7930  5a da 0b eb                                      bl #0x8be2a0
005c7934  00 70 c5 e5                                      strb r7, [r5]
005c7938  02 00 c5 e5                                      strb r0, [r5, #2]
005c793c  03 80 c5 e5                                      strb r8, [r5, #3]
005c7940  01 60 c5 e5                                      strb r6, [r5, #1]
005c7944  01 00 a0 e3                                      mov r0, #1
005c7948  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
005c794c  b8 d2 3c 00 a4 2c 00 00                          .byte 0xb8, 0xd2, 0x3c, 0x00, 0xa4, 0x2c, 0x00, 0x00

; FUNCTION 0x005c7c64, declared_size=556, range_size=556, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::video::SColor>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15getParameterCvtINS0_6SColorEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPSC_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::video::SColor>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::getParameterCvt<glitch::video::SColor>(unsigned short, glitch::video::SColor*, int) const
; decoder-mode: arm
005c7c64  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005c7c68  04 60 90 e5                                      ldr r6, [r0, #4]
005c7c6c  14 c2 9f e5                                      ldr ip, [pc, #0x214]
005c7c70  02 40 a0 e1                                      mov r4, r2
005c7c74  be 50 d6 e1                                      ldrh r5, [r6, #0xe]
005c7c78  0c c0 8f e0                                      add ip, pc, ip
005c7c7c  01 00 55 e1                                      cmp r5, r1
005c7c80  03 50 a0 e1                                      mov r5, r3
005c7c84  13 00 00 9a                                      bls #0x5c7cd8
005c7c88  20 30 96 e5                                      ldr r3, [r6, #0x20]
005c7c8c  01 12 93 e0                                      adds r1, r3, r1, lsl #4
005c7c90  10 00 00 0a                                      beq #0x5c7cd8
005c7c94  f0 21 9f e5                                      ldr r2, [pc, #0x1f0]
005c7c98  06 30 d1 e5                                      ldrb r3, [r1, #6]
005c7c9c  02 20 9c e7                                      ldr r2, [ip, r2]
005c7ca0  03 21 92 e7                                      ldr r2, [r2, r3, lsl #2]
005c7ca4  01 08 12 e3                                      tst r2, #0x10000
005c7ca8  0a 00 00 0a                                      beq #0x5c7cd8
005c7cac  01 20 75 e2                                      rsbs r2, r5, #1
005c7cb0  00 20 a0 33                                      movlo r2, #0
005c7cb4  00 00 55 e3                                      cmp r5, #0
005c7cb8  04 00 55 13                                      cmpne r5, #4
005c7cbc  07 00 00 1a                                      bne #0x5c7ce0
005c7cc0  10 00 53 e3                                      cmp r3, #0x10
005c7cc4  58 00 00 0a                                      beq #0x5c7e2c
005c7cc8  00 00 52 e3                                      cmp r2, #0
005c7ccc  03 00 00 0a                                      beq #0x5c7ce0
005c7cd0  01 00 a0 e3                                      mov r0, #1
005c7cd4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005c7cd8  00 00 a0 e3                                      mov r0, #0
005c7cdc  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005c7ce0  0c 20 91 e5                                      ldr r2, [r1, #0xc]
005c7ce4  20 00 80 e2                                      add r0, r0, #0x20
005c7ce8  10 00 53 e3                                      cmp r3, #0x10
005c7cec  02 80 80 e0                                      add r8, r0, r2
005c7cf0  56 00 00 0a                                      beq #0x5c7e50
005c7cf4  11 00 53 e3                                      cmp r3, #0x11
005c7cf8  26 00 00 0a                                      beq #0x5c7d98
005c7cfc  08 00 53 e3                                      cmp r3, #8
005c7d00  f2 ff ff 1a                                      bne #0x5c7cd0
005c7d04  08 90 91 e5                                      ldr sb, [r1, #8]
005c7d08  09 92 88 e0                                      add sb, r8, sb, lsl #4
005c7d0c  09 00 58 e1                                      cmp r8, sb
005c7d10  01 00 00 1a                                      bne #0x5c7d1c
005c7d14  ed ff ff ea                                      b #0x5c7cd0
005c7d18  05 40 84 e0                                      add r4, r4, r5
005c7d1c  43 14 a0 e3                                      mov r1, #0x43000000
005c7d20  0c 00 98 e5                                      ldr r0, [r8, #0xc]
005c7d24  7f 18 81 e2                                      add r1, r1, #0x7f0000
005c7d28  0f 1c f5 eb                                      bl #0x30ed6c
005c7d2c  5b d9 0b eb                                      bl #0x8be2a0
005c7d30  43 14 a0 e3                                      mov r1, #0x43000000
005c7d34  7f 18 81 e2                                      add r1, r1, #0x7f0000
005c7d38  70 a0 ef e6                                      uxtb sl, r0
005c7d3c  00 00 98 e5                                      ldr r0, [r8]
005c7d40  09 1c f5 eb                                      bl #0x30ed6c
005c7d44  55 d9 0b eb                                      bl #0x8be2a0
005c7d48  43 14 a0 e3                                      mov r1, #0x43000000
005c7d4c  7f 18 81 e2                                      add r1, r1, #0x7f0000
005c7d50  70 60 ef e6                                      uxtb r6, r0
005c7d54  04 00 98 e5                                      ldr r0, [r8, #4]
005c7d58  03 1c f5 eb                                      bl #0x30ed6c
005c7d5c  4f d9 0b eb                                      bl #0x8be2a0
005c7d60  43 14 a0 e3                                      mov r1, #0x43000000
005c7d64  70 70 ef e6                                      uxtb r7, r0
005c7d68  7f 18 81 e2                                      add r1, r1, #0x7f0000
005c7d6c  08 00 98 e5                                      ldr r0, [r8, #8]
005c7d70  fd 1b f5 eb                                      bl #0x30ed6c
005c7d74  49 d9 0b eb                                      bl #0x8be2a0
005c7d78  10 80 88 e2                                      add r8, r8, #0x10
005c7d7c  08 00 59 e1                                      cmp sb, r8
005c7d80  03 a0 c4 e5                                      strb sl, [r4, #3]
005c7d84  02 00 c4 e5                                      strb r0, [r4, #2]
005c7d88  01 70 c4 e5                                      strb r7, [r4, #1]
005c7d8c  00 60 c4 e5                                      strb r6, [r4]
005c7d90  e0 ff ff 1a                                      bne #0x5c7d18
005c7d94  cd ff ff ea                                      b #0x5c7cd0
005c7d98  08 90 91 e5                                      ldr sb, [r1, #8]
005c7d9c  09 92 88 e0                                      add sb, r8, sb, lsl #4
005c7da0  09 00 58 e1                                      cmp r8, sb
005c7da4  01 00 00 1a                                      bne #0x5c7db0
005c7da8  c8 ff ff ea                                      b #0x5c7cd0
005c7dac  05 40 84 e0                                      add r4, r4, r5
005c7db0  43 14 a0 e3                                      mov r1, #0x43000000
005c7db4  0c 00 98 e5                                      ldr r0, [r8, #0xc]
005c7db8  7f 18 81 e2                                      add r1, r1, #0x7f0000
005c7dbc  ea 1b f5 eb                                      bl #0x30ed6c
005c7dc0  36 d9 0b eb                                      bl #0x8be2a0
005c7dc4  43 14 a0 e3                                      mov r1, #0x43000000
005c7dc8  7f 18 81 e2                                      add r1, r1, #0x7f0000
005c7dcc  70 a0 ef e6                                      uxtb sl, r0
005c7dd0  00 00 98 e5                                      ldr r0, [r8]
005c7dd4  e4 1b f5 eb                                      bl #0x30ed6c
005c7dd8  30 d9 0b eb                                      bl #0x8be2a0
005c7ddc  43 14 a0 e3                                      mov r1, #0x43000000
005c7de0  7f 18 81 e2                                      add r1, r1, #0x7f0000
005c7de4  70 60 ef e6                                      uxtb r6, r0
005c7de8  04 00 98 e5                                      ldr r0, [r8, #4]
005c7dec  de 1b f5 eb                                      bl #0x30ed6c
005c7df0  2a d9 0b eb                                      bl #0x8be2a0
005c7df4  43 14 a0 e3                                      mov r1, #0x43000000
005c7df8  70 70 ef e6                                      uxtb r7, r0
005c7dfc  7f 18 81 e2                                      add r1, r1, #0x7f0000
005c7e00  08 00 98 e5                                      ldr r0, [r8, #8]
005c7e04  d8 1b f5 eb                                      bl #0x30ed6c
005c7e08  24 d9 0b eb                                      bl #0x8be2a0
005c7e0c  10 80 88 e2                                      add r8, r8, #0x10
005c7e10  08 00 59 e1                                      cmp sb, r8
005c7e14  03 a0 c4 e5                                      strb sl, [r4, #3]
005c7e18  02 00 c4 e5                                      strb r0, [r4, #2]
005c7e1c  01 70 c4 e5                                      strb r7, [r4, #1]
005c7e20  00 60 c4 e5                                      strb r6, [r4]
005c7e24  e0 ff ff 1a                                      bne #0x5c7dac
005c7e28  a8 ff ff ea                                      b #0x5c7cd0
005c7e2c  0c 30 91 e5                                      ldr r3, [r1, #0xc]
005c7e30  08 20 91 e5                                      ldr r2, [r1, #8]
005c7e34  20 10 80 e2                                      add r1, r0, #0x20
005c7e38  03 10 81 e0                                      add r1, r1, r3
005c7e3c  04 00 a0 e1                                      mov r0, r4
005c7e40  02 21 a0 e1                                      lsl r2, r2, #2
005c7e44  87 1a f5 eb                                      bl #0x30e868
005c7e48  01 00 a0 e3                                      mov r0, #1
005c7e4c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005c7e50  08 a0 91 e5                                      ldr sl, [r1, #8]
005c7e54  00 00 5a e3                                      cmp sl, #0
005c7e58  9c ff ff 0a                                      beq #0x5c7cd0
005c7e5c  00 70 a0 e3                                      mov r7, #0
005c7e60  07 60 a0 e1                                      mov r6, r7
005c7e64  07 00 84 e0                                      add r0, r4, r7
005c7e68  06 11 88 e0                                      add r1, r8, r6, lsl #2
005c7e6c  04 20 a0 e3                                      mov r2, #4
005c7e70  01 60 86 e2                                      add r6, r6, #1
005c7e74  7b 1a f5 eb                                      bl #0x30e868
005c7e78  06 00 5a e1                                      cmp sl, r6
005c7e7c  05 70 87 e0                                      add r7, r7, r5
005c7e80  f7 ff ff 1a                                      bne #0x5c7e64
005c7e84  91 ff ff ea                                      b #0x5c7cd0
; mapping-symbol data/literal pool
005c7e88  18 ce 3c 00 a4 2c 00 00                          .byte 0x18, 0xce, 0x3c, 0x00, 0xa4, 0x2c, 0x00, 0x00

; FUNCTION 0x005c8804, declared_size=184, range_size=184, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::video::SColor>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE12getParameterINS0_6SColorEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPSC_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::video::SColor>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::getParameter<glitch::video::SColor>(unsigned short, glitch::video::SColor*, int) const
; decoder-mode: arm
005c8804  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005c8808  04 c0 90 e5                                      ldr ip, [r0, #4]
005c880c  02 40 a0 e1                                      mov r4, r2
005c8810  03 70 a0 e1                                      mov r7, r3
005c8814  be 20 dc e1                                      ldrh r2, [ip, #0xe]
005c8818  01 00 52 e1                                      cmp r2, r1
005c881c  05 00 00 9a                                      bls #0x5c8838
005c8820  20 30 9c e5                                      ldr r3, [ip, #0x20]
005c8824  01 12 93 e0                                      adds r1, r3, r1, lsl #4
005c8828  02 00 00 0a                                      beq #0x5c8838
005c882c  06 30 d1 e5                                      ldrb r3, [r1, #6]
005c8830  10 00 53 e3                                      cmp r3, #0x10
005c8834  01 00 00 0a                                      beq #0x5c8840
005c8838  00 00 a0 e3                                      mov r0, #0
005c883c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005c8840  00 00 57 e3                                      cmp r7, #0
005c8844  04 00 57 13                                      cmpne r7, #4
005c8848  00 60 a0 13                                      movne r6, #0
005c884c  01 60 a0 03                                      moveq r6, #1
005c8850  10 00 00 0a                                      beq #0x5c8898
005c8854  08 80 91 e5                                      ldr r8, [r1, #8]
005c8858  0c 30 91 e5                                      ldr r3, [r1, #0xc]
005c885c  00 00 58 e3                                      cmp r8, #0
005c8860  0a 00 00 0a                                      beq #0x5c8890
005c8864  20 a0 80 e2                                      add sl, r0, #0x20
005c8868  03 a0 8a e0                                      add sl, sl, r3
005c886c  06 50 a0 e1                                      mov r5, r6
005c8870  06 00 84 e0                                      add r0, r4, r6
005c8874  05 11 8a e0                                      add r1, sl, r5, lsl #2
005c8878  04 20 a0 e3                                      mov r2, #4
005c887c  01 50 85 e2                                      add r5, r5, #1
005c8880  f8 17 f5 eb                                      bl #0x30e868
005c8884  05 00 58 e1                                      cmp r8, r5
005c8888  07 60 86 e0                                      add r6, r6, r7
005c888c  f7 ff ff 1a                                      bne #0x5c8870
005c8890  01 00 a0 e3                                      mov r0, #1
005c8894  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005c8898  0c 30 91 e5                                      ldr r3, [r1, #0xc]
005c889c  08 20 91 e5                                      ldr r2, [r1, #8]
005c88a0  20 10 80 e2                                      add r1, r0, #0x20
005c88a4  03 10 81 e0                                      add r1, r1, r3
005c88a8  04 00 a0 e1                                      mov r0, r4
005c88ac  02 21 a0 e1                                      lsl r2, r2, #2
005c88b0  ec 17 f5 eb                                      bl #0x30e868
005c88b4  01 00 a0 e3                                      mov r0, #1
005c88b8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x005c9020, declared_size=568, range_size=568, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::video::SColor>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS0_6SColorEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPKSC_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::video::SColor>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::setParameterCvt<glitch::video::SColor>(unsigned short, glitch::video::SColor const*, int)
; decoder-mode: arm
005c9020  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005c9024  04 60 90 e5                                      ldr r6, [r0, #4]
005c9028  20 c2 9f e5                                      ldr ip, [pc, #0x220]
005c902c  02 40 a0 e1                                      mov r4, r2
005c9030  be 50 d6 e1                                      ldrh r5, [r6, #0xe]
005c9034  0c c0 8f e0                                      add ip, pc, ip
005c9038  01 00 55 e1                                      cmp r5, r1
005c903c  03 50 a0 e1                                      mov r5, r3
005c9040  18 00 00 9a                                      bls #0x5c90a8
005c9044  20 30 96 e5                                      ldr r3, [r6, #0x20]
005c9048  01 12 93 e0                                      adds r1, r3, r1, lsl #4
005c904c  15 00 00 0a                                      beq #0x5c90a8
005c9050  fc 31 9f e5                                      ldr r3, [pc, #0x1fc]
005c9054  06 20 d1 e5                                      ldrb r2, [r1, #6]
005c9058  03 30 9c e7                                      ldr r3, [ip, r3]
005c905c  02 31 93 e7                                      ldr r3, [r3, r2, lsl #2]
005c9060  01 08 13 e3                                      tst r3, #0x10000
005c9064  0f 00 00 0a                                      beq #0x5c90a8
005c9068  00 30 e0 e3                                      mvn r3, #0
005c906c  01 20 75 e2                                      rsbs r2, r5, #1
005c9070  00 20 a0 33                                      movlo r2, #0
005c9074  0c 30 80 e5                                      str r3, [r0, #0xc]
005c9078  00 00 55 e3                                      cmp r5, #0
005c907c  04 00 55 13                                      cmpne r5, #4
005c9080  10 30 80 e5                                      str r3, [r0, #0x10]
005c9084  06 30 d1 15                                      ldrbne r3, [r1, #6]
005c9088  08 00 00 1a                                      bne #0x5c90b0
005c908c  06 30 d1 e5                                      ldrb r3, [r1, #6]
005c9090  10 00 53 e3                                      cmp r3, #0x10
005c9094  56 00 00 0a                                      beq #0x5c91f4
005c9098  00 00 52 e3                                      cmp r2, #0
005c909c  03 00 00 0a                                      beq #0x5c90b0
005c90a0  01 00 a0 e3                                      mov r0, #1
005c90a4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005c90a8  00 00 a0 e3                                      mov r0, #0
005c90ac  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005c90b0  0c 20 91 e5                                      ldr r2, [r1, #0xc]
005c90b4  20 00 80 e2                                      add r0, r0, #0x20
005c90b8  10 00 53 e3                                      cmp r3, #0x10
005c90bc  02 80 80 e0                                      add r8, r0, r2
005c90c0  54 00 00 0a                                      beq #0x5c9218
005c90c4  11 00 53 e3                                      cmp r3, #0x11
005c90c8  25 00 00 0a                                      beq #0x5c9164
005c90cc  08 00 53 e3                                      cmp r3, #8
005c90d0  f2 ff ff 1a                                      bne #0x5c90a0
005c90d4  08 90 91 e5                                      ldr sb, [r1, #8]
005c90d8  09 92 88 e0                                      add sb, r8, sb, lsl #4
005c90dc  09 00 58 e1                                      cmp r8, sb
005c90e0  01 00 00 1a                                      bne #0x5c90ec
005c90e4  ed ff ff ea                                      b #0x5c90a0
005c90e8  05 40 84 e0                                      add r4, r4, r5
005c90ec  00 00 d4 e5                                      ldrb r0, [r4]
005c90f0  1b 16 f5 eb                                      bl #0x30e964
005c90f4  81 10 08 e3                                      movw r1, #0x8081
005c90f8  80 1b 43 e3                                      movt r1, #0x3b80
005c90fc  1a 17 f5 eb                                      bl #0x30ed6c
005c9100  00 60 a0 e1                                      mov r6, r0
005c9104  01 00 d4 e5                                      ldrb r0, [r4, #1]
005c9108  15 16 f5 eb                                      bl #0x30e964
005c910c  81 10 08 e3                                      movw r1, #0x8081
005c9110  80 1b 43 e3                                      movt r1, #0x3b80
005c9114  14 17 f5 eb                                      bl #0x30ed6c
005c9118  00 70 a0 e1                                      mov r7, r0
005c911c  02 00 d4 e5                                      ldrb r0, [r4, #2]
005c9120  0f 16 f5 eb                                      bl #0x30e964
005c9124  81 10 08 e3                                      movw r1, #0x8081
005c9128  80 1b 43 e3                                      movt r1, #0x3b80
005c912c  0e 17 f5 eb                                      bl #0x30ed6c
005c9130  00 a0 a0 e1                                      mov sl, r0
005c9134  03 00 d4 e5                                      ldrb r0, [r4, #3]
005c9138  09 16 f5 eb                                      bl #0x30e964
005c913c  81 10 08 e3                                      movw r1, #0x8081
005c9140  80 1b 43 e3                                      movt r1, #0x3b80
005c9144  08 17 f5 eb                                      bl #0x30ed6c
005c9148  08 a0 88 e5                                      str sl, [r8, #8]
005c914c  0c 00 88 e5                                      str r0, [r8, #0xc]
005c9150  04 70 88 e5                                      str r7, [r8, #4]
005c9154  10 60 88 e4                                      str r6, [r8], #0x10
005c9158  08 00 59 e1                                      cmp sb, r8
005c915c  e1 ff ff 1a                                      bne #0x5c90e8
005c9160  ce ff ff ea                                      b #0x5c90a0
005c9164  08 90 91 e5                                      ldr sb, [r1, #8]
005c9168  09 92 88 e0                                      add sb, r8, sb, lsl #4
005c916c  09 00 58 e1                                      cmp r8, sb
005c9170  01 00 00 1a                                      bne #0x5c917c
005c9174  c9 ff ff ea                                      b #0x5c90a0
005c9178  05 40 84 e0                                      add r4, r4, r5
005c917c  00 00 d4 e5                                      ldrb r0, [r4]
005c9180  f7 15 f5 eb                                      bl #0x30e964
005c9184  81 10 08 e3                                      movw r1, #0x8081
005c9188  80 1b 43 e3                                      movt r1, #0x3b80
005c918c  f6 16 f5 eb                                      bl #0x30ed6c
005c9190  00 60 a0 e1                                      mov r6, r0
005c9194  01 00 d4 e5                                      ldrb r0, [r4, #1]
005c9198  f1 15 f5 eb                                      bl #0x30e964
005c919c  81 10 08 e3                                      movw r1, #0x8081
005c91a0  80 1b 43 e3                                      movt r1, #0x3b80
005c91a4  f0 16 f5 eb                                      bl #0x30ed6c
005c91a8  00 70 a0 e1                                      mov r7, r0
005c91ac  02 00 d4 e5                                      ldrb r0, [r4, #2]
005c91b0  eb 15 f5 eb                                      bl #0x30e964
005c91b4  81 10 08 e3                                      movw r1, #0x8081
005c91b8  80 1b 43 e3                                      movt r1, #0x3b80
005c91bc  ea 16 f5 eb                                      bl #0x30ed6c
005c91c0  00 a0 a0 e1                                      mov sl, r0
005c91c4  03 00 d4 e5                                      ldrb r0, [r4, #3]
005c91c8  e5 15 f5 eb                                      bl #0x30e964
005c91cc  81 10 08 e3                                      movw r1, #0x8081
005c91d0  80 1b 43 e3                                      movt r1, #0x3b80
005c91d4  e4 16 f5 eb                                      bl #0x30ed6c
005c91d8  08 a0 88 e5                                      str sl, [r8, #8]
005c91dc  0c 00 88 e5                                      str r0, [r8, #0xc]
005c91e0  04 70 88 e5                                      str r7, [r8, #4]
005c91e4  10 60 88 e4                                      str r6, [r8], #0x10
005c91e8  08 00 59 e1                                      cmp sb, r8
005c91ec  e1 ff ff 1a                                      bne #0x5c9178
005c91f0  aa ff ff ea                                      b #0x5c90a0
005c91f4  08 20 91 e5                                      ldr r2, [r1, #8]
005c91f8  0c 30 91 e5                                      ldr r3, [r1, #0xc]
005c91fc  20 00 80 e2                                      add r0, r0, #0x20
005c9200  04 10 a0 e1                                      mov r1, r4
005c9204  03 00 80 e0                                      add r0, r0, r3
005c9208  02 21 a0 e1                                      lsl r2, r2, #2
005c920c  95 15 f5 eb                                      bl #0x30e868
005c9210  01 00 a0 e3                                      mov r0, #1
005c9214  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005c9218  08 a0 91 e5                                      ldr sl, [r1, #8]
005c921c  00 00 5a e3                                      cmp sl, #0
005c9220  9e ff ff 0a                                      beq #0x5c90a0
005c9224  00 70 a0 e3                                      mov r7, #0
005c9228  07 60 a0 e1                                      mov r6, r7
005c922c  06 01 88 e0                                      add r0, r8, r6, lsl #2
005c9230  07 10 84 e0                                      add r1, r4, r7
005c9234  01 60 86 e2                                      add r6, r6, #1
005c9238  04 20 a0 e3                                      mov r2, #4
005c923c  89 15 f5 eb                                      bl #0x30e868
005c9240  06 00 5a e1                                      cmp sl, r6
005c9244  05 70 87 e0                                      add r7, r7, r5
005c9248  f7 ff ff 1a                                      bne #0x5c922c
005c924c  93 ff ff ea                                      b #0x5c90a0
; mapping-symbol data/literal pool
005c9250  5c ba 3c 00 a4 2c 00 00                          .byte 0x5c, 0xba, 0x3c, 0x00, 0xa4, 0x2c, 0x00, 0x00

; FUNCTION 0x005c9c78, declared_size=196, range_size=196, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::video::SColor>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE12setParameterINS0_6SColorEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPKSC_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::video::SColor>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::setParameter<glitch::video::SColor>(unsigned short, glitch::video::SColor const*, int)
; decoder-mode: arm
005c9c78  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005c9c7c  04 c0 90 e5                                      ldr ip, [r0, #4]
005c9c80  02 40 a0 e1                                      mov r4, r2
005c9c84  03 70 a0 e1                                      mov r7, r3
005c9c88  be 20 dc e1                                      ldrh r2, [ip, #0xe]
005c9c8c  01 00 52 e1                                      cmp r2, r1
005c9c90  05 00 00 9a                                      bls #0x5c9cac
005c9c94  20 30 9c e5                                      ldr r3, [ip, #0x20]
005c9c98  01 12 93 e0                                      adds r1, r3, r1, lsl #4
005c9c9c  02 00 00 0a                                      beq #0x5c9cac
005c9ca0  06 30 d1 e5                                      ldrb r3, [r1, #6]
005c9ca4  10 00 53 e3                                      cmp r3, #0x10
005c9ca8  01 00 00 0a                                      beq #0x5c9cb4
005c9cac  00 00 a0 e3                                      mov r0, #0
005c9cb0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005c9cb4  00 30 e0 e3                                      mvn r3, #0
005c9cb8  00 00 57 e3                                      cmp r7, #0
005c9cbc  04 00 57 13                                      cmpne r7, #4
005c9cc0  00 60 a0 13                                      movne r6, #0
005c9cc4  01 60 a0 03                                      moveq r6, #1
005c9cc8  0c 30 80 e5                                      str r3, [r0, #0xc]
005c9ccc  10 30 80 e5                                      str r3, [r0, #0x10]
005c9cd0  10 00 00 0a                                      beq #0x5c9d18
005c9cd4  08 80 91 e5                                      ldr r8, [r1, #8]
005c9cd8  0c 30 91 e5                                      ldr r3, [r1, #0xc]
005c9cdc  00 00 58 e3                                      cmp r8, #0
005c9ce0  0a 00 00 0a                                      beq #0x5c9d10
005c9ce4  20 a0 80 e2                                      add sl, r0, #0x20
005c9ce8  03 a0 8a e0                                      add sl, sl, r3
005c9cec  06 50 a0 e1                                      mov r5, r6
005c9cf0  05 01 8a e0                                      add r0, sl, r5, lsl #2
005c9cf4  06 10 84 e0                                      add r1, r4, r6
005c9cf8  01 50 85 e2                                      add r5, r5, #1
005c9cfc  04 20 a0 e3                                      mov r2, #4
005c9d00  d8 12 f5 eb                                      bl #0x30e868
005c9d04  08 00 55 e1                                      cmp r5, r8
005c9d08  07 60 86 e0                                      add r6, r6, r7
005c9d0c  f7 ff ff 1a                                      bne #0x5c9cf0
005c9d10  01 00 a0 e3                                      mov r0, #1
005c9d14  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005c9d18  08 20 91 e5                                      ldr r2, [r1, #8]
005c9d1c  0c 30 91 e5                                      ldr r3, [r1, #0xc]
005c9d20  20 00 80 e2                                      add r0, r0, #0x20
005c9d24  04 10 a0 e1                                      mov r1, r4
005c9d28  03 00 80 e0                                      add r0, r0, r3
005c9d2c  02 21 a0 e1                                      lsl r2, r2, #2
005c9d30  cc 12 f5 eb                                      bl #0x30e868
005c9d34  01 00 a0 e3                                      mov r0, #1
005c9d38  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x005cad38, declared_size=472, range_size=472, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::video::SColor>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS0_6SColorEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSC_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::video::SColor>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::setParameterCvt<glitch::video::SColor>(unsigned short, unsigned int, glitch::video::SColor const&)
; decoder-mode: arm
005cad38  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005cad3c  04 50 90 e5                                      ldr r5, [r0, #4]
005cad40  c0 c1 9f e5                                      ldr ip, [pc, #0x1c0]
005cad44  14 d0 4d e2                                      sub sp, sp, #0x14
005cad48  be 60 d5 e1                                      ldrh r6, [r5, #0xe]
005cad4c  00 40 a0 e1                                      mov r4, r0
005cad50  0c c0 8f e0                                      add ip, pc, ip
005cad54  01 00 56 e1                                      cmp r6, r1
005cad58  16 00 00 9a                                      bls #0x5cadb8
005cad5c  20 50 95 e5                                      ldr r5, [r5, #0x20]
005cad60  01 12 95 e0                                      adds r1, r5, r1, lsl #4
005cad64  13 00 00 0a                                      beq #0x5cadb8
005cad68  9c 51 9f e5                                      ldr r5, [pc, #0x19c]
005cad6c  06 80 d1 e5                                      ldrb r8, [r1, #6]
005cad70  05 c0 9c e7                                      ldr ip, [ip, r5]
005cad74  08 c1 9c e7                                      ldr ip, [ip, r8, lsl #2]
005cad78  01 08 1c e3                                      tst ip, #0x10000
005cad7c  0d 00 00 0a                                      beq #0x5cadb8
005cad80  08 c0 91 e5                                      ldr ip, [r1, #8]
005cad84  0c 00 52 e1                                      cmp r2, ip
005cad88  0a 00 00 2a                                      bhs #0x5cadb8
005cad8c  0c 60 91 e5                                      ldr r6, [r1, #0xc]
005cad90  20 70 80 e2                                      add r7, r0, #0x20
005cad94  10 00 58 e3                                      cmp r8, #0x10
005cad98  06 50 87 e0                                      add r5, r7, r6
005cad9c  08 00 00 0a                                      beq #0x5cadc4
005cada0  11 00 58 e3                                      cmp r8, #0x11
005cada4  47 00 00 0a                                      beq #0x5caec8
005cada8  08 00 58 e3                                      cmp r8, #8
005cadac  10 00 00 0a                                      beq #0x5cadf4
005cadb0  01 00 a0 e3                                      mov r0, #1
005cadb4  00 00 00 ea                                      b #0x5cadbc
005cadb8  00 00 a0 e3                                      mov r0, #0
005cadbc  14 d0 8d e2                                      add sp, sp, #0x14
005cadc0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005cadc4  00 20 93 e5                                      ldr r2, [r3]
005cadc8  06 10 97 e7                                      ldr r1, [r7, r6]
005cadcc  02 00 51 e1                                      cmp r1, r2
005cadd0  00 20 e0 13                                      mvnne r2, #0
005cadd4  0c 20 80 15                                      strne r2, [r0, #0xc]
005cadd8  10 20 80 15                                      strne r2, [r0, #0x10]
005caddc  03 10 a0 e1                                      mov r1, r3
005cade0  05 00 a0 e1                                      mov r0, r5
005cade4  04 20 a0 e3                                      mov r2, #4
005cade8  9e 0e f5 eb                                      bl #0x30e868
005cadec  01 00 a0 e3                                      mov r0, #1
005cadf0  f1 ff ff ea                                      b #0x5cadbc
005cadf4  00 00 d3 e5                                      ldrb r0, [r3]
005cadf8  01 90 d3 e5                                      ldrb sb, [r3, #1]
005cadfc  02 a0 d3 e5                                      ldrb sl, [r3, #2]
005cae00  03 b0 d3 e5                                      ldrb fp, [r3, #3]
005cae04  d6 0e f5 eb                                      bl #0x30e964
005cae08  81 10 08 e3                                      movw r1, #0x8081
005cae0c  80 1b 43 e3                                      movt r1, #0x3b80
005cae10  d5 0f f5 eb                                      bl #0x30ed6c
005cae14  00 80 a0 e1                                      mov r8, r0
005cae18  09 00 a0 e1                                      mov r0, sb
005cae1c  00 80 8d e5                                      str r8, [sp]
005cae20  cf 0e f5 eb                                      bl #0x30e964
005cae24  81 10 08 e3                                      movw r1, #0x8081
005cae28  80 1b 43 e3                                      movt r1, #0x3b80
005cae2c  ce 0f f5 eb                                      bl #0x30ed6c
005cae30  00 90 a0 e1                                      mov sb, r0
005cae34  0a 00 a0 e1                                      mov r0, sl
005cae38  04 90 8d e5                                      str sb, [sp, #4]
005cae3c  c8 0e f5 eb                                      bl #0x30e964
005cae40  81 10 08 e3                                      movw r1, #0x8081
005cae44  80 1b 43 e3                                      movt r1, #0x3b80
005cae48  c7 0f f5 eb                                      bl #0x30ed6c
005cae4c  08 00 8d e5                                      str r0, [sp, #8]
005cae50  0b 00 a0 e1                                      mov r0, fp
005cae54  c2 0e f5 eb                                      bl #0x30e964
005cae58  81 10 08 e3                                      movw r1, #0x8081
005cae5c  80 1b 43 e3                                      movt r1, #0x3b80
005cae60  c1 0f f5 eb                                      bl #0x30ed6c
005cae64  0c 00 8d e5                                      str r0, [sp, #0xc]
005cae68  08 10 a0 e1                                      mov r1, r8
005cae6c  06 00 97 e7                                      ldr r0, [r7, r6]
005cae70  45 0c f5 eb                                      bl #0x30df8c
005cae74  00 00 50 e3                                      cmp r0, #0
005cae78  0d a0 a0 e1                                      mov sl, sp
005cae7c  04 00 00 0a                                      beq #0x5cae94
005cae80  09 10 a0 e1                                      mov r1, sb
005cae84  04 00 95 e5                                      ldr r0, [r5, #4]
005cae88  3f 0c f5 eb                                      bl #0x30df8c
005cae8c  00 00 50 e3                                      cmp r0, #0
005cae90  11 00 00 1a                                      bne #0x5caedc
005cae94  00 30 e0 e3                                      mvn r3, #0
005cae98  00 80 9a e5                                      ldr r8, [sl]
005cae9c  0c 30 84 e5                                      str r3, [r4, #0xc]
005caea0  10 30 84 e5                                      str r3, [r4, #0x10]
005caea4  0c 10 9a e5                                      ldr r1, [sl, #0xc]
005caea8  04 20 9a e5                                      ldr r2, [sl, #4]
005caeac  08 30 9a e5                                      ldr r3, [sl, #8]
005caeb0  01 00 a0 e3                                      mov r0, #1
005caeb4  06 80 87 e7                                      str r8, [r7, r6]
005caeb8  0c 10 85 e5                                      str r1, [r5, #0xc]
005caebc  04 20 85 e5                                      str r2, [r5, #4]
005caec0  08 30 85 e5                                      str r3, [r5, #8]
005caec4  bc ff ff ea                                      b #0x5cadbc
005caec8  05 10 a0 e1                                      mov r1, r5
005caecc  03 20 a0 e1                                      mov r2, r3
005caed0  6d ff ff eb                                      bl #0x5cac8c
005caed4  01 00 a0 e3                                      mov r0, #1
005caed8  b7 ff ff ea                                      b #0x5cadbc
005caedc  08 00 95 e5                                      ldr r0, [r5, #8]
005caee0  08 10 9d e5                                      ldr r1, [sp, #8]
005caee4  28 0c f5 eb                                      bl #0x30df8c
005caee8  00 00 50 e3                                      cmp r0, #0
005caeec  e8 ff ff 0a                                      beq #0x5cae94
005caef0  0c 00 95 e5                                      ldr r0, [r5, #0xc]
005caef4  0c 10 9d e5                                      ldr r1, [sp, #0xc]
005caef8  23 0c f5 eb                                      bl #0x30df8c
005caefc  00 00 50 e3                                      cmp r0, #0
005caf00  e7 ff ff 1a                                      bne #0x5caea4
005caf04  e2 ff ff ea                                      b #0x5cae94
; mapping-symbol data/literal pool
005caf08  40 9d 3c 00 a4 2c 00 00                          .byte 0x40, 0x9d, 0x3c, 0x00, 0xa4, 0x2c, 0x00, 0x00

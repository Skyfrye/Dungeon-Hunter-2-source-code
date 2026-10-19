; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005c7208, declared_size=108, range_size=108, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::video::SColorf>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE12getParameterINS0_7SColorfEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRSC_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::video::SColorf>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::getParameter<glitch::video::SColorf>(unsigned short, unsigned int, glitch::video::SColorf&) const
; decoder-mode: arm
005c7208  30 00 2d e9                                      push {r4, r5}
005c720c  04 c0 90 e5                                      ldr ip, [r0, #4]
005c7210  03 40 a0 e1                                      mov r4, r3
005c7214  be 50 dc e1                                      ldrh r5, [ip, #0xe]
005c7218  01 00 55 e1                                      cmp r5, r1
005c721c  05 00 00 9a                                      bls #0x5c7238
005c7220  20 30 9c e5                                      ldr r3, [ip, #0x20]
005c7224  01 12 93 e0                                      adds r1, r3, r1, lsl #4
005c7228  02 00 00 0a                                      beq #0x5c7238
005c722c  06 30 d1 e5                                      ldrb r3, [r1, #6]
005c7230  11 00 53 e3                                      cmp r3, #0x11
005c7234  03 00 00 0a                                      beq #0x5c7248
005c7238  00 c0 a0 e3                                      mov ip, #0
005c723c  0c 00 a0 e1                                      mov r0, ip
005c7240  30 00 bd e8                                      pop {r4, r5}
005c7244  1e ff 2f e1                                      bx lr
005c7248  08 30 91 e5                                      ldr r3, [r1, #8]
005c724c  03 00 52 e1                                      cmp r2, r3
005c7250  f8 ff ff 2a                                      bhs #0x5c7238
005c7254  0c 30 91 e5                                      ldr r3, [r1, #0xc]
005c7258  02 22 80 e0                                      add r2, r0, r2, lsl #4
005c725c  01 c0 a0 e3                                      mov ip, #1
005c7260  03 20 82 e0                                      add r2, r2, r3
005c7264  20 20 82 e2                                      add r2, r2, #0x20
005c7268  0f 00 92 e8                                      ldm r2, {r0, r1, r2, r3}
005c726c  0f 00 84 e8                                      stm r4, {r0, r1, r2, r3}
005c7270  f1 ff ff ea                                      b #0x5c723c

; FUNCTION 0x005c7954, declared_size=284, range_size=284, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::video::SColorf>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15getParameterCvtINS0_7SColorfEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRSC_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::video::SColorf>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::getParameterCvt<glitch::video::SColorf>(unsigned short, unsigned int, glitch::video::SColorf&) const
; decoder-mode: arm
005c7954  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005c7958  04 50 90 e5                                      ldr r5, [r0, #4]
005c795c  04 c1 9f e5                                      ldr ip, [pc, #0x104]
005c7960  be 40 d5 e1                                      ldrh r4, [r5, #0xe]
005c7964  0c c0 8f e0                                      add ip, pc, ip
005c7968  01 00 54 e1                                      cmp r4, r1
005c796c  03 40 a0 e1                                      mov r4, r3
005c7970  17 00 00 9a                                      bls #0x5c79d4
005c7974  20 30 95 e5                                      ldr r3, [r5, #0x20]
005c7978  01 12 93 e0                                      adds r1, r3, r1, lsl #4
005c797c  14 00 00 0a                                      beq #0x5c79d4
005c7980  e4 50 9f e5                                      ldr r5, [pc, #0xe4]
005c7984  06 30 d1 e5                                      ldrb r3, [r1, #6]
005c7988  05 c0 9c e7                                      ldr ip, [ip, r5]
005c798c  03 c1 9c e7                                      ldr ip, [ip, r3, lsl #2]
005c7990  02 08 1c e3                                      tst ip, #0x20000
005c7994  0e 00 00 0a                                      beq #0x5c79d4
005c7998  08 c0 91 e5                                      ldr ip, [r1, #8]
005c799c  0c 00 52 e1                                      cmp r2, ip
005c79a0  0b 00 00 2a                                      bhs #0x5c79d4
005c79a4  0c 20 91 e5                                      ldr r2, [r1, #0xc]
005c79a8  20 00 80 e2                                      add r0, r0, #0x20
005c79ac  10 00 53 e3                                      cmp r3, #0x10
005c79b0  02 50 80 e0                                      add r5, r0, r2
005c79b4  09 00 00 0a                                      beq #0x5c79e0
005c79b8  11 00 53 e3                                      cmp r3, #0x11
005c79bc  24 00 00 0a                                      beq #0x5c7a54
005c79c0  08 00 53 e3                                      cmp r3, #8
005c79c4  22 00 00 0a                                      beq #0x5c7a54
005c79c8  01 c0 a0 e3                                      mov ip, #1
005c79cc  0c 00 a0 e1                                      mov r0, ip
005c79d0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005c79d4  00 c0 a0 e3                                      mov ip, #0
005c79d8  0c 00 a0 e1                                      mov r0, ip
005c79dc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005c79e0  02 00 d0 e7                                      ldrb r0, [r0, r2]
005c79e4  de 1b f5 eb                                      bl #0x30e964
005c79e8  81 10 08 e3                                      movw r1, #0x8081
005c79ec  80 1b 43 e3                                      movt r1, #0x3b80
005c79f0  dd 1c f5 eb                                      bl #0x30ed6c
005c79f4  00 80 a0 e1                                      mov r8, r0
005c79f8  01 00 d5 e5                                      ldrb r0, [r5, #1]
005c79fc  d8 1b f5 eb                                      bl #0x30e964
005c7a00  81 10 08 e3                                      movw r1, #0x8081
005c7a04  80 1b 43 e3                                      movt r1, #0x3b80
005c7a08  d7 1c f5 eb                                      bl #0x30ed6c
005c7a0c  00 60 a0 e1                                      mov r6, r0
005c7a10  02 00 d5 e5                                      ldrb r0, [r5, #2]
005c7a14  d2 1b f5 eb                                      bl #0x30e964
005c7a18  81 10 08 e3                                      movw r1, #0x8081
005c7a1c  80 1b 43 e3                                      movt r1, #0x3b80
005c7a20  d1 1c f5 eb                                      bl #0x30ed6c
005c7a24  00 70 a0 e1                                      mov r7, r0
005c7a28  03 00 d5 e5                                      ldrb r0, [r5, #3]
005c7a2c  cc 1b f5 eb                                      bl #0x30e964
005c7a30  81 10 08 e3                                      movw r1, #0x8081
005c7a34  80 1b 43 e3                                      movt r1, #0x3b80
005c7a38  cb 1c f5 eb                                      bl #0x30ed6c
005c7a3c  00 80 84 e5                                      str r8, [r4]
005c7a40  0c 00 84 e5                                      str r0, [r4, #0xc]
005c7a44  08 70 84 e5                                      str r7, [r4, #8]
005c7a48  04 60 84 e5                                      str r6, [r4, #4]
005c7a4c  01 c0 a0 e3                                      mov ip, #1
005c7a50  dd ff ff ea                                      b #0x5c79cc
005c7a54  01 c0 a0 e3                                      mov ip, #1
005c7a58  0f 00 95 e8                                      ldm r5, {r0, r1, r2, r3}
005c7a5c  0f 00 84 e8                                      stm r4, {r0, r1, r2, r3}
005c7a60  0c 00 a0 e1                                      mov r0, ip
005c7a64  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
005c7a68  2c d1 3c 00 a4 2c 00 00                          .byte 0x2c, 0xd1, 0x3c, 0x00, 0xa4, 0x2c, 0x00, 0x00

; FUNCTION 0x005c7a90, declared_size=468, range_size=468, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::video::SColorf>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15getParameterCvtINS0_7SColorfEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPSC_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::video::SColorf>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::getParameterCvt<glitch::video::SColorf>(unsigned short, glitch::video::SColorf*, int) const
; decoder-mode: arm
005c7a90  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005c7a94  04 70 90 e5                                      ldr r7, [r0, #4]
005c7a98  bc 61 9f e5                                      ldr r6, [pc, #0x1bc]
005c7a9c  02 40 a0 e1                                      mov r4, r2
005c7aa0  be c0 d7 e1                                      ldrh ip, [r7, #0xe]
005c7aa4  06 60 8f e0                                      add r6, pc, r6
005c7aa8  03 50 a0 e1                                      mov r5, r3
005c7aac  01 00 5c e1                                      cmp ip, r1
005c7ab0  13 00 00 9a                                      bls #0x5c7b04
005c7ab4  20 30 97 e5                                      ldr r3, [r7, #0x20]
005c7ab8  01 12 93 e0                                      adds r1, r3, r1, lsl #4
005c7abc  10 00 00 0a                                      beq #0x5c7b04
005c7ac0  98 21 9f e5                                      ldr r2, [pc, #0x198]
005c7ac4  06 30 d1 e5                                      ldrb r3, [r1, #6]
005c7ac8  02 20 96 e7                                      ldr r2, [r6, r2]
005c7acc  03 21 92 e7                                      ldr r2, [r2, r3, lsl #2]
005c7ad0  02 08 12 e3                                      tst r2, #0x20000
005c7ad4  0a 00 00 0a                                      beq #0x5c7b04
005c7ad8  01 20 75 e2                                      rsbs r2, r5, #1
005c7adc  00 20 a0 33                                      movlo r2, #0
005c7ae0  00 00 55 e3                                      cmp r5, #0
005c7ae4  10 00 55 13                                      cmpne r5, #0x10
005c7ae8  07 00 00 1a                                      bne #0x5c7b0c
005c7aec  11 00 53 e3                                      cmp r3, #0x11
005c7af0  2a 00 00 0a                                      beq #0x5c7ba0
005c7af4  00 00 52 e3                                      cmp r2, #0
005c7af8  03 00 00 0a                                      beq #0x5c7b0c
005c7afc  01 00 a0 e3                                      mov r0, #1
005c7b00  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005c7b04  00 00 a0 e3                                      mov r0, #0
005c7b08  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005c7b0c  0c 20 91 e5                                      ldr r2, [r1, #0xc]
005c7b10  20 80 80 e2                                      add r8, r0, #0x20
005c7b14  10 00 53 e3                                      cmp r3, #0x10
005c7b18  02 80 88 e0                                      add r8, r8, r2
005c7b1c  28 00 00 0a                                      beq #0x5c7bc4
005c7b20  11 00 53 e3                                      cmp r3, #0x11
005c7b24  0f 00 00 0a                                      beq #0x5c7b68
005c7b28  08 00 53 e3                                      cmp r3, #8
005c7b2c  f2 ff ff 1a                                      bne #0x5c7afc
005c7b30  08 30 91 e5                                      ldr r3, [r1, #8]
005c7b34  08 c0 a0 e1                                      mov ip, r8
005c7b38  03 82 88 e0                                      add r8, r8, r3, lsl #4
005c7b3c  08 00 5c e1                                      cmp ip, r8
005c7b40  ed ff ff 0a                                      beq #0x5c7afc
005c7b44  00 70 a0 e3                                      mov r7, #0
005c7b48  0f 00 9c e8                                      ldm ip, {r0, r1, r2, r3}
005c7b4c  10 c0 8c e2                                      add ip, ip, #0x10
005c7b50  07 60 84 e0                                      add r6, r4, r7
005c7b54  0c 00 58 e1                                      cmp r8, ip
005c7b58  0f 00 86 e8                                      stm r6, {r0, r1, r2, r3}
005c7b5c  05 70 87 e0                                      add r7, r7, r5
005c7b60  f8 ff ff 1a                                      bne #0x5c7b48
005c7b64  e4 ff ff ea                                      b #0x5c7afc
005c7b68  08 a0 91 e5                                      ldr sl, [r1, #8]
005c7b6c  00 00 5a e3                                      cmp sl, #0
005c7b70  e1 ff ff 0a                                      beq #0x5c7afc
005c7b74  00 70 a0 e3                                      mov r7, #0
005c7b78  07 60 a0 e1                                      mov r6, r7
005c7b7c  06 32 88 e0                                      add r3, r8, r6, lsl #4
005c7b80  01 60 86 e2                                      add r6, r6, #1
005c7b84  07 c0 84 e0                                      add ip, r4, r7
005c7b88  0a 00 56 e1                                      cmp r6, sl
005c7b8c  0f 00 93 e8                                      ldm r3, {r0, r1, r2, r3}
005c7b90  05 70 87 e0                                      add r7, r7, r5
005c7b94  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
005c7b98  f7 ff ff 1a                                      bne #0x5c7b7c
005c7b9c  d6 ff ff ea                                      b #0x5c7afc
005c7ba0  0c 30 91 e5                                      ldr r3, [r1, #0xc]
005c7ba4  08 20 91 e5                                      ldr r2, [r1, #8]
005c7ba8  20 10 80 e2                                      add r1, r0, #0x20
005c7bac  03 10 81 e0                                      add r1, r1, r3
005c7bb0  04 00 a0 e1                                      mov r0, r4
005c7bb4  02 22 a0 e1                                      lsl r2, r2, #4
005c7bb8  2a 1b f5 eb                                      bl #0x30e868
005c7bbc  01 00 a0 e3                                      mov r0, #1
005c7bc0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005c7bc4  08 90 91 e5                                      ldr sb, [r1, #8]
005c7bc8  09 91 88 e0                                      add sb, r8, sb, lsl #2
005c7bcc  09 00 58 e1                                      cmp r8, sb
005c7bd0  c9 ff ff 0a                                      beq #0x5c7afc
005c7bd4  04 80 88 e2                                      add r8, r8, #4
005c7bd8  01 00 00 ea                                      b #0x5c7be4
005c7bdc  05 40 84 e0                                      add r4, r4, r5
005c7be0  04 80 88 e2                                      add r8, r8, #4
005c7be4  04 00 58 e5                                      ldrb r0, [r8, #-4]
005c7be8  5d 1b f5 eb                                      bl #0x30e964
005c7bec  81 10 08 e3                                      movw r1, #0x8081
005c7bf0  80 1b 43 e3                                      movt r1, #0x3b80
005c7bf4  5c 1c f5 eb                                      bl #0x30ed6c
005c7bf8  00 60 a0 e1                                      mov r6, r0
005c7bfc  03 00 58 e5                                      ldrb r0, [r8, #-3]
005c7c00  57 1b f5 eb                                      bl #0x30e964
005c7c04  81 10 08 e3                                      movw r1, #0x8081
005c7c08  80 1b 43 e3                                      movt r1, #0x3b80
005c7c0c  56 1c f5 eb                                      bl #0x30ed6c
005c7c10  00 70 a0 e1                                      mov r7, r0
005c7c14  02 00 58 e5                                      ldrb r0, [r8, #-2]
005c7c18  51 1b f5 eb                                      bl #0x30e964
005c7c1c  81 10 08 e3                                      movw r1, #0x8081
005c7c20  80 1b 43 e3                                      movt r1, #0x3b80
005c7c24  50 1c f5 eb                                      bl #0x30ed6c
005c7c28  00 a0 a0 e1                                      mov sl, r0
005c7c2c  01 00 58 e5                                      ldrb r0, [r8, #-1]
005c7c30  4b 1b f5 eb                                      bl #0x30e964
005c7c34  81 10 08 e3                                      movw r1, #0x8081
005c7c38  80 1b 43 e3                                      movt r1, #0x3b80
005c7c3c  4a 1c f5 eb                                      bl #0x30ed6c
005c7c40  08 00 59 e1                                      cmp sb, r8
005c7c44  0c 00 84 e5                                      str r0, [r4, #0xc]
005c7c48  08 a0 84 e5                                      str sl, [r4, #8]
005c7c4c  04 70 84 e5                                      str r7, [r4, #4]
005c7c50  00 60 84 e5                                      str r6, [r4]
005c7c54  e0 ff ff 1a                                      bne #0x5c7bdc
005c7c58  a7 ff ff ea                                      b #0x5c7afc
; mapping-symbol data/literal pool
005c7c5c  ec cf 3c 00 a4 2c 00 00                          .byte 0xec, 0xcf, 0x3c, 0x00, 0xa4, 0x2c, 0x00, 0x00

; FUNCTION 0x005c874c, declared_size=184, range_size=184, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::video::SColorf>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE12getParameterINS0_7SColorfEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPSC_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::video::SColorf>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::getParameter<glitch::video::SColorf>(unsigned short, glitch::video::SColorf*, int) const
; decoder-mode: arm
005c874c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005c8750  04 c0 90 e5                                      ldr ip, [r0, #4]
005c8754  02 70 a0 e1                                      mov r7, r2
005c8758  03 60 a0 e1                                      mov r6, r3
005c875c  be 20 dc e1                                      ldrh r2, [ip, #0xe]
005c8760  01 00 52 e1                                      cmp r2, r1
005c8764  05 00 00 9a                                      bls #0x5c8780
005c8768  20 30 9c e5                                      ldr r3, [ip, #0x20]
005c876c  01 12 93 e0                                      adds r1, r3, r1, lsl #4
005c8770  02 00 00 0a                                      beq #0x5c8780
005c8774  06 30 d1 e5                                      ldrb r3, [r1, #6]
005c8778  11 00 53 e3                                      cmp r3, #0x11
005c877c  01 00 00 0a                                      beq #0x5c8788
005c8780  00 00 a0 e3                                      mov r0, #0
005c8784  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005c8788  00 00 56 e3                                      cmp r6, #0
005c878c  10 00 56 13                                      cmpne r6, #0x10
005c8790  00 50 a0 13                                      movne r5, #0
005c8794  01 50 a0 03                                      moveq r5, #1
005c8798  10 00 00 0a                                      beq #0x5c87e0
005c879c  08 80 91 e5                                      ldr r8, [r1, #8]
005c87a0  0c 30 91 e5                                      ldr r3, [r1, #0xc]
005c87a4  00 00 58 e3                                      cmp r8, #0
005c87a8  0a 00 00 0a                                      beq #0x5c87d8
005c87ac  20 a0 80 e2                                      add sl, r0, #0x20
005c87b0  03 a0 8a e0                                      add sl, sl, r3
005c87b4  05 40 a0 e1                                      mov r4, r5
005c87b8  04 32 8a e0                                      add r3, sl, r4, lsl #4
005c87bc  01 40 84 e2                                      add r4, r4, #1
005c87c0  05 c0 87 e0                                      add ip, r7, r5
005c87c4  04 00 58 e1                                      cmp r8, r4
005c87c8  0f 00 93 e8                                      ldm r3, {r0, r1, r2, r3}
005c87cc  06 50 85 e0                                      add r5, r5, r6
005c87d0  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
005c87d4  f7 ff ff 1a                                      bne #0x5c87b8
005c87d8  01 00 a0 e3                                      mov r0, #1
005c87dc  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005c87e0  0c 30 91 e5                                      ldr r3, [r1, #0xc]
005c87e4  08 20 91 e5                                      ldr r2, [r1, #8]
005c87e8  20 10 80 e2                                      add r1, r0, #0x20
005c87ec  03 10 81 e0                                      add r1, r1, r3
005c87f0  07 00 a0 e1                                      mov r0, r7
005c87f4  02 22 a0 e1                                      lsl r2, r2, #4
005c87f8  1a 18 f5 eb                                      bl #0x30e868
005c87fc  01 00 a0 e3                                      mov r0, #1
005c8800  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x005c8e2c, declared_size=500, range_size=500, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::video::SColorf>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS0_7SColorfEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPKSC_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::video::SColorf>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::setParameterCvt<glitch::video::SColorf>(unsigned short, glitch::video::SColorf const*, int)
; decoder-mode: arm
005c8e2c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005c8e30  04 60 90 e5                                      ldr r6, [r0, #4]
005c8e34  dc c1 9f e5                                      ldr ip, [pc, #0x1dc]
005c8e38  02 40 a0 e1                                      mov r4, r2
005c8e3c  be 50 d6 e1                                      ldrh r5, [r6, #0xe]
005c8e40  0c c0 8f e0                                      add ip, pc, ip
005c8e44  01 00 55 e1                                      cmp r5, r1
005c8e48  03 50 a0 e1                                      mov r5, r3
005c8e4c  18 00 00 9a                                      bls #0x5c8eb4
005c8e50  20 30 96 e5                                      ldr r3, [r6, #0x20]
005c8e54  01 12 93 e0                                      adds r1, r3, r1, lsl #4
005c8e58  15 00 00 0a                                      beq #0x5c8eb4
005c8e5c  b8 31 9f e5                                      ldr r3, [pc, #0x1b8]
005c8e60  06 20 d1 e5                                      ldrb r2, [r1, #6]
005c8e64  03 30 9c e7                                      ldr r3, [ip, r3]
005c8e68  02 31 93 e7                                      ldr r3, [r3, r2, lsl #2]
005c8e6c  02 08 13 e3                                      tst r3, #0x20000
005c8e70  0f 00 00 0a                                      beq #0x5c8eb4
005c8e74  00 30 e0 e3                                      mvn r3, #0
005c8e78  01 20 75 e2                                      rsbs r2, r5, #1
005c8e7c  00 20 a0 33                                      movlo r2, #0
005c8e80  0c 30 80 e5                                      str r3, [r0, #0xc]
005c8e84  00 00 55 e3                                      cmp r5, #0
005c8e88  10 00 55 13                                      cmpne r5, #0x10
005c8e8c  10 30 80 e5                                      str r3, [r0, #0x10]
005c8e90  06 30 d1 15                                      ldrbne r3, [r1, #6]
005c8e94  08 00 00 1a                                      bne #0x5c8ebc
005c8e98  06 30 d1 e5                                      ldrb r3, [r1, #6]
005c8e9c  11 00 53 e3                                      cmp r3, #0x11
005c8ea0  2d 00 00 0a                                      beq #0x5c8f5c
005c8ea4  00 00 52 e3                                      cmp r2, #0
005c8ea8  03 00 00 0a                                      beq #0x5c8ebc
005c8eac  01 00 a0 e3                                      mov r0, #1
005c8eb0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005c8eb4  00 00 a0 e3                                      mov r0, #0
005c8eb8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005c8ebc  0c 20 91 e5                                      ldr r2, [r1, #0xc]
005c8ec0  20 80 80 e2                                      add r8, r0, #0x20
005c8ec4  10 00 53 e3                                      cmp r3, #0x10
005c8ec8  02 80 88 e0                                      add r8, r8, r2
005c8ecc  2b 00 00 0a                                      beq #0x5c8f80
005c8ed0  11 00 53 e3                                      cmp r3, #0x11
005c8ed4  12 00 00 0a                                      beq #0x5c8f24
005c8ed8  08 00 53 e3                                      cmp r3, #8
005c8edc  f2 ff ff 1a                                      bne #0x5c8eac
005c8ee0  08 20 91 e5                                      ldr r2, [r1, #8]
005c8ee4  02 22 88 e0                                      add r2, r8, r2, lsl #4
005c8ee8  02 00 58 e1                                      cmp r8, r2
005c8eec  ee ff ff 0a                                      beq #0x5c8eac
005c8ef0  00 30 94 e5                                      ldr r3, [r4]
005c8ef4  00 30 88 e5                                      str r3, [r8]
005c8ef8  04 30 94 e5                                      ldr r3, [r4, #4]
005c8efc  04 30 88 e5                                      str r3, [r8, #4]
005c8f00  08 30 94 e5                                      ldr r3, [r4, #8]
005c8f04  08 30 88 e5                                      str r3, [r8, #8]
005c8f08  0c 30 94 e5                                      ldr r3, [r4, #0xc]
005c8f0c  05 40 84 e0                                      add r4, r4, r5
005c8f10  0c 30 88 e5                                      str r3, [r8, #0xc]
005c8f14  10 80 88 e2                                      add r8, r8, #0x10
005c8f18  08 00 52 e1                                      cmp r2, r8
005c8f1c  f3 ff ff 1a                                      bne #0x5c8ef0
005c8f20  e1 ff ff ea                                      b #0x5c8eac
005c8f24  08 a0 91 e5                                      ldr sl, [r1, #8]
005c8f28  00 00 5a e3                                      cmp sl, #0
005c8f2c  de ff ff 0a                                      beq #0x5c8eac
005c8f30  00 60 a0 e3                                      mov r6, #0
005c8f34  06 c0 a0 e1                                      mov ip, r6
005c8f38  0c 72 88 e0                                      add r7, r8, ip, lsl #4
005c8f3c  01 c0 8c e2                                      add ip, ip, #1
005c8f40  06 30 84 e0                                      add r3, r4, r6
005c8f44  0c 00 5a e1                                      cmp sl, ip
005c8f48  0f 00 93 e8                                      ldm r3, {r0, r1, r2, r3}
005c8f4c  05 60 86 e0                                      add r6, r6, r5
005c8f50  0f 00 87 e8                                      stm r7, {r0, r1, r2, r3}
005c8f54  f7 ff ff 1a                                      bne #0x5c8f38
005c8f58  d3 ff ff ea                                      b #0x5c8eac
005c8f5c  08 20 91 e5                                      ldr r2, [r1, #8]
005c8f60  0c 30 91 e5                                      ldr r3, [r1, #0xc]
005c8f64  20 00 80 e2                                      add r0, r0, #0x20
005c8f68  04 10 a0 e1                                      mov r1, r4
005c8f6c  03 00 80 e0                                      add r0, r0, r3
005c8f70  02 22 a0 e1                                      lsl r2, r2, #4
005c8f74  3b 16 f5 eb                                      bl #0x30e868
005c8f78  01 00 a0 e3                                      mov r0, #1
005c8f7c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005c8f80  08 90 91 e5                                      ldr sb, [r1, #8]
005c8f84  09 91 88 e0                                      add sb, r8, sb, lsl #2
005c8f88  09 00 58 e1                                      cmp r8, sb
005c8f8c  c6 ff ff 0a                                      beq #0x5c8eac
005c8f90  04 80 88 e2                                      add r8, r8, #4
005c8f94  01 00 00 ea                                      b #0x5c8fa0
005c8f98  05 40 84 e0                                      add r4, r4, r5
005c8f9c  04 80 88 e2                                      add r8, r8, #4
005c8fa0  43 14 a0 e3                                      mov r1, #0x43000000
005c8fa4  0c 00 94 e5                                      ldr r0, [r4, #0xc]
005c8fa8  7f 18 81 e2                                      add r1, r1, #0x7f0000
005c8fac  6e 17 f5 eb                                      bl #0x30ed6c
005c8fb0  ba d4 0b eb                                      bl #0x8be2a0
005c8fb4  43 14 a0 e3                                      mov r1, #0x43000000
005c8fb8  7f 18 81 e2                                      add r1, r1, #0x7f0000
005c8fbc  70 a0 ef e6                                      uxtb sl, r0
005c8fc0  00 00 94 e5                                      ldr r0, [r4]
005c8fc4  68 17 f5 eb                                      bl #0x30ed6c
005c8fc8  b4 d4 0b eb                                      bl #0x8be2a0
005c8fcc  43 14 a0 e3                                      mov r1, #0x43000000
005c8fd0  7f 18 81 e2                                      add r1, r1, #0x7f0000
005c8fd4  70 60 ef e6                                      uxtb r6, r0
005c8fd8  04 00 94 e5                                      ldr r0, [r4, #4]
005c8fdc  62 17 f5 eb                                      bl #0x30ed6c
005c8fe0  ae d4 0b eb                                      bl #0x8be2a0
005c8fe4  43 14 a0 e3                                      mov r1, #0x43000000
005c8fe8  70 70 ef e6                                      uxtb r7, r0
005c8fec  7f 18 81 e2                                      add r1, r1, #0x7f0000
005c8ff0  08 00 94 e5                                      ldr r0, [r4, #8]
005c8ff4  5c 17 f5 eb                                      bl #0x30ed6c
005c8ff8  a8 d4 0b eb                                      bl #0x8be2a0
005c8ffc  08 00 59 e1                                      cmp sb, r8
005c9000  01 a0 48 e5                                      strb sl, [r8, #-1]
005c9004  02 00 48 e5                                      strb r0, [r8, #-2]
005c9008  03 70 48 e5                                      strb r7, [r8, #-3]
005c900c  04 60 48 e5                                      strb r6, [r8, #-4]
005c9010  e0 ff ff 1a                                      bne #0x5c8f98
005c9014  a4 ff ff ea                                      b #0x5c8eac
; mapping-symbol data/literal pool
005c9018  50 bc 3c 00 a4 2c 00 00                          .byte 0x50, 0xbc, 0x3c, 0x00, 0xa4, 0x2c, 0x00, 0x00

; FUNCTION 0x005c9bb4, declared_size=196, range_size=196, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::video::SColorf>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE12setParameterINS0_7SColorfEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPKSC_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::video::SColorf>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::setParameter<glitch::video::SColorf>(unsigned short, glitch::video::SColorf const*, int)
; decoder-mode: arm
005c9bb4  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005c9bb8  04 c0 90 e5                                      ldr ip, [r0, #4]
005c9bbc  02 70 a0 e1                                      mov r7, r2
005c9bc0  03 60 a0 e1                                      mov r6, r3
005c9bc4  be 20 dc e1                                      ldrh r2, [ip, #0xe]
005c9bc8  01 00 52 e1                                      cmp r2, r1
005c9bcc  05 00 00 9a                                      bls #0x5c9be8
005c9bd0  20 30 9c e5                                      ldr r3, [ip, #0x20]
005c9bd4  01 12 93 e0                                      adds r1, r3, r1, lsl #4
005c9bd8  02 00 00 0a                                      beq #0x5c9be8
005c9bdc  06 30 d1 e5                                      ldrb r3, [r1, #6]
005c9be0  11 00 53 e3                                      cmp r3, #0x11
005c9be4  01 00 00 0a                                      beq #0x5c9bf0
005c9be8  00 00 a0 e3                                      mov r0, #0
005c9bec  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005c9bf0  00 30 e0 e3                                      mvn r3, #0
005c9bf4  00 00 56 e3                                      cmp r6, #0
005c9bf8  10 00 56 13                                      cmpne r6, #0x10
005c9bfc  00 50 a0 13                                      movne r5, #0
005c9c00  01 50 a0 03                                      moveq r5, #1
005c9c04  0c 30 80 e5                                      str r3, [r0, #0xc]
005c9c08  10 30 80 e5                                      str r3, [r0, #0x10]
005c9c0c  10 00 00 0a                                      beq #0x5c9c54
005c9c10  08 80 91 e5                                      ldr r8, [r1, #8]
005c9c14  0c 30 91 e5                                      ldr r3, [r1, #0xc]
005c9c18  00 00 58 e3                                      cmp r8, #0
005c9c1c  0a 00 00 0a                                      beq #0x5c9c4c
005c9c20  20 a0 80 e2                                      add sl, r0, #0x20
005c9c24  03 a0 8a e0                                      add sl, sl, r3
005c9c28  05 40 a0 e1                                      mov r4, r5
005c9c2c  04 c2 8a e0                                      add ip, sl, r4, lsl #4
005c9c30  01 40 84 e2                                      add r4, r4, #1
005c9c34  05 30 87 e0                                      add r3, r7, r5
005c9c38  08 00 54 e1                                      cmp r4, r8
005c9c3c  0f 00 93 e8                                      ldm r3, {r0, r1, r2, r3}
005c9c40  06 50 85 e0                                      add r5, r5, r6
005c9c44  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
005c9c48  f7 ff ff 1a                                      bne #0x5c9c2c
005c9c4c  01 00 a0 e3                                      mov r0, #1
005c9c50  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005c9c54  08 20 91 e5                                      ldr r2, [r1, #8]
005c9c58  0c 30 91 e5                                      ldr r3, [r1, #0xc]
005c9c5c  20 00 80 e2                                      add r0, r0, #0x20
005c9c60  07 10 a0 e1                                      mov r1, r7
005c9c64  03 00 80 e0                                      add r0, r0, r3
005c9c68  02 22 a0 e1                                      lsl r2, r2, #4
005c9c6c  fd 12 f5 eb                                      bl #0x30e868
005c9c70  01 00 a0 e3                                      mov r0, #1
005c9c74  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x005cabf8, declared_size=148, range_size=148, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::video::SColorf>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE12setParameterINS0_7SColorfEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSC_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::video::SColorf>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::setParameter<glitch::video::SColorf>(unsigned short, unsigned int, glitch::video::SColorf const&)
; decoder-mode: arm
005cabf8  30 40 2d e9                                      push {r4, r5, lr}
005cabfc  00 40 a0 e1                                      mov r4, r0
005cac00  04 00 90 e5                                      ldr r0, [r0, #4]
005cac04  0c d0 4d e2                                      sub sp, sp, #0xc
005cac08  be c0 d0 e1                                      ldrh ip, [r0, #0xe]
005cac0c  01 00 5c e1                                      cmp ip, r1
005cac10  05 00 00 9a                                      bls #0x5cac2c
005cac14  20 00 90 e5                                      ldr r0, [r0, #0x20]
005cac18  01 12 90 e0                                      adds r1, r0, r1, lsl #4
005cac1c  02 00 00 0a                                      beq #0x5cac2c
005cac20  06 00 d1 e5                                      ldrb r0, [r1, #6]
005cac24  11 00 50 e3                                      cmp r0, #0x11
005cac28  03 00 00 0a                                      beq #0x5cac3c
005cac2c  00 c0 a0 e3                                      mov ip, #0
005cac30  0c 00 a0 e1                                      mov r0, ip
005cac34  0c d0 8d e2                                      add sp, sp, #0xc
005cac38  30 80 bd e8                                      pop {r4, r5, pc}
005cac3c  08 00 91 e5                                      ldr r0, [r1, #8]
005cac40  00 00 52 e1                                      cmp r2, r0
005cac44  f8 ff ff 2a                                      bhs #0x5cac2c
005cac48  0c 00 91 e5                                      ldr r0, [r1, #0xc]
005cac4c  20 50 84 e2                                      add r5, r4, #0x20
005cac50  03 10 a0 e1                                      mov r1, r3
005cac54  02 22 80 e0                                      add r2, r0, r2, lsl #4
005cac58  02 50 85 e0                                      add r5, r5, r2
005cac5c  05 00 a0 e1                                      mov r0, r5
005cac60  04 30 8d e5                                      str r3, [sp, #4]
005cac64  8b ff ff eb                                      bl #0x5caa98
005cac68  04 30 9d e5                                      ldr r3, [sp, #4]
005cac6c  00 00 50 e3                                      cmp r0, #0
005cac70  00 20 e0 03                                      mvneq r2, #0
005cac74  0c 20 84 05                                      streq r2, [r4, #0xc]
005cac78  10 20 84 05                                      streq r2, [r4, #0x10]
005cac7c  0f 00 93 e8                                      ldm r3, {r0, r1, r2, r3}
005cac80  01 c0 a0 e3                                      mov ip, #1
005cac84  0f 00 85 e8                                      stm r5, {r0, r1, r2, r3}
005cac88  e8 ff ff ea                                      b #0x5cac30

; FUNCTION 0x005cb6e8, declared_size=500, range_size=500, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::video::SColorf>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS0_7SColorfEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSC_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::video::SColorf>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::setParameterCvt<glitch::video::SColorf>(unsigned short, unsigned int, glitch::video::SColorf const&)
; decoder-mode: arm
005cb6e8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005cb6ec  04 c0 90 e5                                      ldr ip, [r0, #4]
005cb6f0  00 40 a0 e1                                      mov r4, r0
005cb6f4  d8 01 9f e5                                      ldr r0, [pc, #0x1d8]
005cb6f8  be 50 dc e1                                      ldrh r5, [ip, #0xe]
005cb6fc  0c d0 4d e2                                      sub sp, sp, #0xc
005cb700  00 00 8f e0                                      add r0, pc, r0
005cb704  01 00 55 e1                                      cmp r5, r1
005cb708  03 60 a0 e1                                      mov r6, r3
005cb70c  16 00 00 9a                                      bls #0x5cb76c
005cb710  20 30 9c e5                                      ldr r3, [ip, #0x20]
005cb714  01 12 93 e0                                      adds r1, r3, r1, lsl #4
005cb718  13 00 00 0a                                      beq #0x5cb76c
005cb71c  b4 c1 9f e5                                      ldr ip, [pc, #0x1b4]
005cb720  06 30 d1 e5                                      ldrb r3, [r1, #6]
005cb724  0c 00 90 e7                                      ldr r0, [r0, ip]
005cb728  03 01 90 e7                                      ldr r0, [r0, r3, lsl #2]
005cb72c  02 08 10 e3                                      tst r0, #0x20000
005cb730  0d 00 00 0a                                      beq #0x5cb76c
005cb734  08 00 91 e5                                      ldr r0, [r1, #8]
005cb738  00 00 52 e1                                      cmp r2, r0
005cb73c  0a 00 00 2a                                      bhs #0x5cb76c
005cb740  0c 70 91 e5                                      ldr r7, [r1, #0xc]
005cb744  20 80 84 e2                                      add r8, r4, #0x20
005cb748  10 00 53 e3                                      cmp r3, #0x10
005cb74c  07 50 88 e0                                      add r5, r8, r7
005cb750  09 00 00 0a                                      beq #0x5cb77c
005cb754  11 00 53 e3                                      cmp r3, #0x11
005cb758  47 00 00 0a                                      beq #0x5cb87c
005cb75c  08 00 53 e3                                      cmp r3, #8
005cb760  2d 00 00 0a                                      beq #0x5cb81c
005cb764  01 c0 a0 e3                                      mov ip, #1
005cb768  00 00 00 ea                                      b #0x5cb770
005cb76c  00 c0 a0 e3                                      mov ip, #0
005cb770  0c 00 a0 e1                                      mov r0, ip
005cb774  0c d0 8d e2                                      add sp, sp, #0xc
005cb778  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005cb77c  43 14 a0 e3                                      mov r1, #0x43000000
005cb780  0c 00 96 e5                                      ldr r0, [r6, #0xc]
005cb784  7f 18 81 e2                                      add r1, r1, #0x7f0000
005cb788  77 0d f5 eb                                      bl #0x30ed6c
005cb78c  c3 ca 0b eb                                      bl #0x8be2a0
005cb790  43 14 a0 e3                                      mov r1, #0x43000000
005cb794  70 90 ef e6                                      uxtb sb, r0
005cb798  7f 18 81 e2                                      add r1, r1, #0x7f0000
005cb79c  00 00 96 e5                                      ldr r0, [r6]
005cb7a0  71 0d f5 eb                                      bl #0x30ed6c
005cb7a4  bd ca 0b eb                                      bl #0x8be2a0
005cb7a8  43 14 a0 e3                                      mov r1, #0x43000000
005cb7ac  70 a0 ef e6                                      uxtb sl, r0
005cb7b0  7f 18 81 e2                                      add r1, r1, #0x7f0000
005cb7b4  04 00 96 e5                                      ldr r0, [r6, #4]
005cb7b8  6b 0d f5 eb                                      bl #0x30ed6c
005cb7bc  b7 ca 0b eb                                      bl #0x8be2a0
005cb7c0  43 14 a0 e3                                      mov r1, #0x43000000
005cb7c4  70 b0 ef e6                                      uxtb fp, r0
005cb7c8  7f 18 81 e2                                      add r1, r1, #0x7f0000
005cb7cc  08 00 96 e5                                      ldr r0, [r6, #8]
005cb7d0  65 0d f5 eb                                      bl #0x30ed6c
005cb7d4  b1 ca 0b eb                                      bl #0x8be2a0
005cb7d8  70 00 ef e6                                      uxtb r0, r0
005cb7dc  07 90 cd e5                                      strb sb, [sp, #7]
005cb7e0  06 00 cd e5                                      strb r0, [sp, #6]
005cb7e4  05 b0 cd e5                                      strb fp, [sp, #5]
005cb7e8  04 a0 cd e5                                      strb sl, [sp, #4]
005cb7ec  04 30 9d e5                                      ldr r3, [sp, #4]
005cb7f0  07 20 98 e7                                      ldr r2, [r8, r7]
005cb7f4  01 c0 a0 e3                                      mov ip, #1
005cb7f8  03 00 52 e1                                      cmp r2, r3
005cb7fc  00 30 e0 13                                      mvnne r3, #0
005cb800  0c 30 84 15                                      strne r3, [r4, #0xc]
005cb804  10 30 84 15                                      strne r3, [r4, #0x10]
005cb808  01 b0 c5 e5                                      strb fp, [r5, #1]
005cb80c  03 90 c5 e5                                      strb sb, [r5, #3]
005cb810  02 00 c5 e5                                      strb r0, [r5, #2]
005cb814  07 a0 c8 e7                                      strb sl, [r8, r7]
005cb818  d4 ff ff ea                                      b #0x5cb770
005cb81c  00 a0 96 e5                                      ldr sl, [r6]
005cb820  07 00 98 e7                                      ldr r0, [r8, r7]
005cb824  0a 10 a0 e1                                      mov r1, sl
005cb828  d7 09 f5 eb                                      bl #0x30df8c
005cb82c  00 00 50 e3                                      cmp r0, #0
005cb830  04 00 00 0a                                      beq #0x5cb848
005cb834  04 00 95 e5                                      ldr r0, [r5, #4]
005cb838  04 10 96 e5                                      ldr r1, [r6, #4]
005cb83c  d2 09 f5 eb                                      bl #0x30df8c
005cb840  00 00 50 e3                                      cmp r0, #0
005cb844  17 00 00 1a                                      bne #0x5cb8a8
005cb848  00 30 e0 e3                                      mvn r3, #0
005cb84c  0c 30 84 e5                                      str r3, [r4, #0xc]
005cb850  10 30 84 e5                                      str r3, [r4, #0x10]
005cb854  00 a0 96 e5                                      ldr sl, [r6]
005cb858  07 a0 88 e7                                      str sl, [r8, r7]
005cb85c  04 30 96 e5                                      ldr r3, [r6, #4]
005cb860  01 c0 a0 e3                                      mov ip, #1
005cb864  04 30 85 e5                                      str r3, [r5, #4]
005cb868  08 30 96 e5                                      ldr r3, [r6, #8]
005cb86c  08 30 85 e5                                      str r3, [r5, #8]
005cb870  0c 30 96 e5                                      ldr r3, [r6, #0xc]
005cb874  0c 30 85 e5                                      str r3, [r5, #0xc]
005cb878  bc ff ff ea                                      b #0x5cb770
005cb87c  06 10 a0 e1                                      mov r1, r6
005cb880  05 00 a0 e1                                      mov r0, r5
005cb884  83 fc ff eb                                      bl #0x5caa98
005cb888  00 00 50 e3                                      cmp r0, #0
005cb88c  00 30 e0 03                                      mvneq r3, #0
005cb890  0c 30 84 05                                      streq r3, [r4, #0xc]
005cb894  10 30 84 05                                      streq r3, [r4, #0x10]
005cb898  0f 00 96 e8                                      ldm r6, {r0, r1, r2, r3}
005cb89c  01 c0 a0 e3                                      mov ip, #1
005cb8a0  0f 00 85 e8                                      stm r5, {r0, r1, r2, r3}
005cb8a4  b1 ff ff ea                                      b #0x5cb770
005cb8a8  08 00 95 e5                                      ldr r0, [r5, #8]
005cb8ac  08 10 96 e5                                      ldr r1, [r6, #8]
005cb8b0  b5 09 f5 eb                                      bl #0x30df8c
005cb8b4  00 00 50 e3                                      cmp r0, #0
005cb8b8  e2 ff ff 0a                                      beq #0x5cb848
005cb8bc  0c 00 95 e5                                      ldr r0, [r5, #0xc]
005cb8c0  0c 10 96 e5                                      ldr r1, [r6, #0xc]
005cb8c4  b0 09 f5 eb                                      bl #0x30df8c
005cb8c8  00 00 50 e3                                      cmp r0, #0
005cb8cc  e1 ff ff 1a                                      bne #0x5cb858
005cb8d0  dc ff ff ea                                      b #0x5cb848
; mapping-symbol data/literal pool
005cb8d4  90 93 3c 00 a4 2c 00 00                          .byte 0x90, 0x93, 0x3c, 0x00, 0xa4, 0x2c, 0x00, 0x00

; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005cf3f4, declared_size=100, range_size=100, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::video::SColorf>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE12setParameterINS0_7SColorfEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSC_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::video::SColorf>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::setParameter<glitch::video::SColorf>(unsigned short, unsigned int, glitch::video::SColorf const&)
; decoder-mode: arm
005cf3f4  04 40 2d e5                                      str r4, [sp, #-4]!
005cf3f8  be c0 d0 e1                                      ldrh ip, [r0, #0xe]
005cf3fc  01 00 5c e1                                      cmp ip, r1
005cf400  05 00 00 9a                                      bls #0x5cf41c
005cf404  20 c0 90 e5                                      ldr ip, [r0, #0x20]
005cf408  01 12 9c e0                                      adds r1, ip, r1, lsl #4
005cf40c  02 00 00 0a                                      beq #0x5cf41c
005cf410  06 c0 d1 e5                                      ldrb ip, [r1, #6]
005cf414  11 00 5c e3                                      cmp ip, #0x11
005cf418  03 00 00 0a                                      beq #0x5cf42c
005cf41c  00 c0 a0 e3                                      mov ip, #0
005cf420  0c 00 a0 e1                                      mov r0, ip
005cf424  10 00 bd e8                                      ldm sp!, {r4}
005cf428  1e ff 2f e1                                      bx lr
005cf42c  08 c0 91 e5                                      ldr ip, [r1, #8]
005cf430  0c 00 52 e1                                      cmp r2, ip
005cf434  f8 ff ff 2a                                      bhs #0x5cf41c
005cf438  0c 10 91 e5                                      ldr r1, [r1, #0xc]
005cf43c  24 40 90 e5                                      ldr r4, [r0, #0x24]
005cf440  01 c0 a0 e3                                      mov ip, #1
005cf444  02 22 81 e0                                      add r2, r1, r2, lsl #4
005cf448  02 40 84 e0                                      add r4, r4, r2
005cf44c  0f 00 93 e8                                      ldm r3, {r0, r1, r2, r3}
005cf450  0f 00 84 e8                                      stm r4, {r0, r1, r2, r3}
005cf454  f1 ff ff ea                                      b #0x5cf420

; FUNCTION 0x005cfb44, declared_size=324, range_size=324, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::video::SColorf>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS0_7SColorfEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSC_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::video::SColorf>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::setParameterCvt<glitch::video::SColorf>(unsigned short, unsigned int, glitch::video::SColorf const&)
; decoder-mode: arm
005cfb44  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005cfb48  be 40 d0 e1                                      ldrh r4, [r0, #0xe]
005cfb4c  2c c1 9f e5                                      ldr ip, [pc, #0x12c]
005cfb50  03 50 a0 e1                                      mov r5, r3
005cfb54  01 00 54 e1                                      cmp r4, r1
005cfb58  0c c0 8f e0                                      add ip, pc, ip
005cfb5c  17 00 00 9a                                      bls #0x5cfbc0
005cfb60  20 30 90 e5                                      ldr r3, [r0, #0x20]
005cfb64  01 12 93 e0                                      adds r1, r3, r1, lsl #4
005cfb68  14 00 00 0a                                      beq #0x5cfbc0
005cfb6c  10 41 9f e5                                      ldr r4, [pc, #0x110]
005cfb70  06 30 d1 e5                                      ldrb r3, [r1, #6]
005cfb74  04 c0 9c e7                                      ldr ip, [ip, r4]
005cfb78  03 c1 9c e7                                      ldr ip, [ip, r3, lsl #2]
005cfb7c  02 08 1c e3                                      tst ip, #0x20000
005cfb80  0e 00 00 0a                                      beq #0x5cfbc0
005cfb84  08 c0 91 e5                                      ldr ip, [r1, #8]
005cfb88  0c 00 52 e1                                      cmp r2, ip
005cfb8c  0b 00 00 2a                                      bhs #0x5cfbc0
005cfb90  24 70 90 e5                                      ldr r7, [r0, #0x24]
005cfb94  0c 60 91 e5                                      ldr r6, [r1, #0xc]
005cfb98  10 00 53 e3                                      cmp r3, #0x10
005cfb9c  06 40 87 e0                                      add r4, r7, r6
005cfba0  09 00 00 0a                                      beq #0x5cfbcc
005cfba4  11 00 53 e3                                      cmp r3, #0x11
005cfba8  2f 00 00 0a                                      beq #0x5cfc6c
005cfbac  08 00 53 e3                                      cmp r3, #8
005cfbb0  22 00 00 0a                                      beq #0x5cfc40
005cfbb4  01 c0 a0 e3                                      mov ip, #1
005cfbb8  0c 00 a0 e1                                      mov r0, ip
005cfbbc  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005cfbc0  00 c0 a0 e3                                      mov ip, #0
005cfbc4  0c 00 a0 e1                                      mov r0, ip
005cfbc8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005cfbcc  43 14 a0 e3                                      mov r1, #0x43000000
005cfbd0  0c 00 95 e5                                      ldr r0, [r5, #0xc]
005cfbd4  7f 18 81 e2                                      add r1, r1, #0x7f0000
005cfbd8  63 fc f4 eb                                      bl #0x30ed6c
005cfbdc  af b9 0b eb                                      bl #0x8be2a0
005cfbe0  43 14 a0 e3                                      mov r1, #0x43000000
005cfbe4  7f 18 81 e2                                      add r1, r1, #0x7f0000
005cfbe8  70 a0 ef e6                                      uxtb sl, r0
005cfbec  00 00 95 e5                                      ldr r0, [r5]
005cfbf0  5d fc f4 eb                                      bl #0x30ed6c
005cfbf4  a9 b9 0b eb                                      bl #0x8be2a0
005cfbf8  43 14 a0 e3                                      mov r1, #0x43000000
005cfbfc  7f 18 81 e2                                      add r1, r1, #0x7f0000
005cfc00  70 80 ef e6                                      uxtb r8, r0
005cfc04  04 00 95 e5                                      ldr r0, [r5, #4]
005cfc08  57 fc f4 eb                                      bl #0x30ed6c
005cfc0c  a3 b9 0b eb                                      bl #0x8be2a0
005cfc10  43 14 a0 e3                                      mov r1, #0x43000000
005cfc14  70 90 ef e6                                      uxtb sb, r0
005cfc18  7f 18 81 e2                                      add r1, r1, #0x7f0000
005cfc1c  08 00 95 e5                                      ldr r0, [r5, #8]
005cfc20  51 fc f4 eb                                      bl #0x30ed6c
005cfc24  9d b9 0b eb                                      bl #0x8be2a0
005cfc28  01 90 c4 e5                                      strb sb, [r4, #1]
005cfc2c  03 a0 c4 e5                                      strb sl, [r4, #3]
005cfc30  02 00 c4 e5                                      strb r0, [r4, #2]
005cfc34  01 c0 a0 e3                                      mov ip, #1
005cfc38  06 80 c7 e7                                      strb r8, [r7, r6]
005cfc3c  dd ff ff ea                                      b #0x5cfbb8
005cfc40  00 30 95 e5                                      ldr r3, [r5]
005cfc44  01 c0 a0 e3                                      mov ip, #1
005cfc48  0c 00 a0 e1                                      mov r0, ip
005cfc4c  06 30 87 e7                                      str r3, [r7, r6]
005cfc50  04 30 95 e5                                      ldr r3, [r5, #4]
005cfc54  04 30 84 e5                                      str r3, [r4, #4]
005cfc58  08 30 95 e5                                      ldr r3, [r5, #8]
005cfc5c  08 30 84 e5                                      str r3, [r4, #8]
005cfc60  0c 30 95 e5                                      ldr r3, [r5, #0xc]
005cfc64  0c 30 84 e5                                      str r3, [r4, #0xc]
005cfc68  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005cfc6c  01 c0 a0 e3                                      mov ip, #1
005cfc70  0f 00 95 e8                                      ldm r5, {r0, r1, r2, r3}
005cfc74  0f 00 84 e8                                      stm r4, {r0, r1, r2, r3}
005cfc78  0c 00 a0 e1                                      mov r0, ip
005cfc7c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
005cfc80  38 4f 3c 00 a4 2c 00 00                          .byte 0x38, 0x4f, 0x3c, 0x00, 0xa4, 0x2c, 0x00, 0x00

; FUNCTION 0x005d0010, declared_size=104, range_size=104, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::video::SColorf>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE12getParameterINS0_7SColorfEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRSC_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::video::SColorf>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::getParameter<glitch::video::SColorf>(unsigned short, unsigned int, glitch::video::SColorf&) const
; decoder-mode: arm
005d0010  04 40 2d e5                                      str r4, [sp, #-4]!
005d0014  be c0 d0 e1                                      ldrh ip, [r0, #0xe]
005d0018  03 40 a0 e1                                      mov r4, r3
005d001c  01 00 5c e1                                      cmp ip, r1
005d0020  05 00 00 9a                                      bls #0x5d003c
005d0024  20 30 90 e5                                      ldr r3, [r0, #0x20]
005d0028  01 12 93 e0                                      adds r1, r3, r1, lsl #4
005d002c  02 00 00 0a                                      beq #0x5d003c
005d0030  06 30 d1 e5                                      ldrb r3, [r1, #6]
005d0034  11 00 53 e3                                      cmp r3, #0x11
005d0038  03 00 00 0a                                      beq #0x5d004c
005d003c  00 c0 a0 e3                                      mov ip, #0
005d0040  0c 00 a0 e1                                      mov r0, ip
005d0044  10 00 bd e8                                      ldm sp!, {r4}
005d0048  1e ff 2f e1                                      bx lr
005d004c  08 30 91 e5                                      ldr r3, [r1, #8]
005d0050  03 00 52 e1                                      cmp r2, r3
005d0054  f8 ff ff 2a                                      bhs #0x5d003c
005d0058  0c 10 91 e5                                      ldr r1, [r1, #0xc]
005d005c  24 30 90 e5                                      ldr r3, [r0, #0x24]
005d0060  01 c0 a0 e3                                      mov ip, #1
005d0064  02 22 81 e0                                      add r2, r1, r2, lsl #4
005d0068  02 20 83 e0                                      add r2, r3, r2
005d006c  0f 00 92 e8                                      ldm r2, {r0, r1, r2, r3}
005d0070  0f 00 84 e8                                      stm r4, {r0, r1, r2, r3}
005d0074  f1 ff ff ea                                      b #0x5d0040

; FUNCTION 0x005d0734, declared_size=280, range_size=280, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::video::SColorf>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE15getParameterCvtINS0_7SColorfEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRSC_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::video::SColorf>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::getParameterCvt<glitch::video::SColorf>(unsigned short, unsigned int, glitch::video::SColorf&) const
; decoder-mode: arm
005d0734  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005d0738  be 40 d0 e1                                      ldrh r4, [r0, #0xe]
005d073c  00 c1 9f e5                                      ldr ip, [pc, #0x100]
005d0740  01 00 54 e1                                      cmp r4, r1
005d0744  0c c0 8f e0                                      add ip, pc, ip
005d0748  03 40 a0 e1                                      mov r4, r3
005d074c  17 00 00 9a                                      bls #0x5d07b0
005d0750  20 30 90 e5                                      ldr r3, [r0, #0x20]
005d0754  01 12 93 e0                                      adds r1, r3, r1, lsl #4
005d0758  14 00 00 0a                                      beq #0x5d07b0
005d075c  e4 50 9f e5                                      ldr r5, [pc, #0xe4]
005d0760  06 30 d1 e5                                      ldrb r3, [r1, #6]
005d0764  05 c0 9c e7                                      ldr ip, [ip, r5]
005d0768  03 c1 9c e7                                      ldr ip, [ip, r3, lsl #2]
005d076c  02 08 1c e3                                      tst ip, #0x20000
005d0770  0e 00 00 0a                                      beq #0x5d07b0
005d0774  08 c0 91 e5                                      ldr ip, [r1, #8]
005d0778  0c 00 52 e1                                      cmp r2, ip
005d077c  0b 00 00 2a                                      bhs #0x5d07b0
005d0780  24 00 90 e5                                      ldr r0, [r0, #0x24]
005d0784  0c 20 91 e5                                      ldr r2, [r1, #0xc]
005d0788  10 00 53 e3                                      cmp r3, #0x10
005d078c  02 50 80 e0                                      add r5, r0, r2
005d0790  09 00 00 0a                                      beq #0x5d07bc
005d0794  11 00 53 e3                                      cmp r3, #0x11
005d0798  24 00 00 0a                                      beq #0x5d0830
005d079c  08 00 53 e3                                      cmp r3, #8
005d07a0  22 00 00 0a                                      beq #0x5d0830
005d07a4  01 c0 a0 e3                                      mov ip, #1
005d07a8  0c 00 a0 e1                                      mov r0, ip
005d07ac  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005d07b0  00 c0 a0 e3                                      mov ip, #0
005d07b4  0c 00 a0 e1                                      mov r0, ip
005d07b8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005d07bc  02 00 d0 e7                                      ldrb r0, [r0, r2]
005d07c0  67 f8 f4 eb                                      bl #0x30e964
005d07c4  81 10 08 e3                                      movw r1, #0x8081
005d07c8  80 1b 43 e3                                      movt r1, #0x3b80
005d07cc  66 f9 f4 eb                                      bl #0x30ed6c
005d07d0  00 80 a0 e1                                      mov r8, r0
005d07d4  01 00 d5 e5                                      ldrb r0, [r5, #1]
005d07d8  61 f8 f4 eb                                      bl #0x30e964
005d07dc  81 10 08 e3                                      movw r1, #0x8081
005d07e0  80 1b 43 e3                                      movt r1, #0x3b80
005d07e4  60 f9 f4 eb                                      bl #0x30ed6c
005d07e8  00 60 a0 e1                                      mov r6, r0
005d07ec  02 00 d5 e5                                      ldrb r0, [r5, #2]
005d07f0  5b f8 f4 eb                                      bl #0x30e964
005d07f4  81 10 08 e3                                      movw r1, #0x8081
005d07f8  80 1b 43 e3                                      movt r1, #0x3b80
005d07fc  5a f9 f4 eb                                      bl #0x30ed6c
005d0800  00 70 a0 e1                                      mov r7, r0
005d0804  03 00 d5 e5                                      ldrb r0, [r5, #3]
005d0808  55 f8 f4 eb                                      bl #0x30e964
005d080c  81 10 08 e3                                      movw r1, #0x8081
005d0810  80 1b 43 e3                                      movt r1, #0x3b80
005d0814  54 f9 f4 eb                                      bl #0x30ed6c
005d0818  00 80 84 e5                                      str r8, [r4]
005d081c  0c 00 84 e5                                      str r0, [r4, #0xc]
005d0820  08 70 84 e5                                      str r7, [r4, #8]
005d0824  04 60 84 e5                                      str r6, [r4, #4]
005d0828  01 c0 a0 e3                                      mov ip, #1
005d082c  dd ff ff ea                                      b #0x5d07a8
005d0830  01 c0 a0 e3                                      mov ip, #1
005d0834  0f 00 95 e8                                      ldm r5, {r0, r1, r2, r3}
005d0838  0f 00 84 e8                                      stm r4, {r0, r1, r2, r3}
005d083c  0c 00 a0 e1                                      mov r0, ip
005d0840  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
005d0844  4c 43 3c 00 a4 2c 00 00                          .byte 0x4c, 0x43, 0x3c, 0x00, 0xa4, 0x2c, 0x00, 0x00

; FUNCTION 0x005d086c, declared_size=464, range_size=464, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::video::SColorf>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE15getParameterCvtINS0_7SColorfEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPSC_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::video::SColorf>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::getParameterCvt<glitch::video::SColorf>(unsigned short, glitch::video::SColorf*, int) const
; decoder-mode: arm
005d086c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005d0870  be 40 d0 e1                                      ldrh r4, [r0, #0xe]
005d0874  b8 c1 9f e5                                      ldr ip, [pc, #0x1b8]
005d0878  03 50 a0 e1                                      mov r5, r3
005d087c  01 00 54 e1                                      cmp r4, r1
005d0880  0c c0 8f e0                                      add ip, pc, ip
005d0884  02 40 a0 e1                                      mov r4, r2
005d0888  13 00 00 9a                                      bls #0x5d08dc
005d088c  20 30 90 e5                                      ldr r3, [r0, #0x20]
005d0890  01 12 93 e0                                      adds r1, r3, r1, lsl #4
005d0894  10 00 00 0a                                      beq #0x5d08dc
005d0898  98 21 9f e5                                      ldr r2, [pc, #0x198]
005d089c  06 30 d1 e5                                      ldrb r3, [r1, #6]
005d08a0  02 20 9c e7                                      ldr r2, [ip, r2]
005d08a4  03 21 92 e7                                      ldr r2, [r2, r3, lsl #2]
005d08a8  02 08 12 e3                                      tst r2, #0x20000
005d08ac  0a 00 00 0a                                      beq #0x5d08dc
005d08b0  01 20 75 e2                                      rsbs r2, r5, #1
005d08b4  00 20 a0 33                                      movlo r2, #0
005d08b8  00 00 55 e3                                      cmp r5, #0
005d08bc  10 00 55 13                                      cmpne r5, #0x10
005d08c0  07 00 00 1a                                      bne #0x5d08e4
005d08c4  11 00 53 e3                                      cmp r3, #0x11
005d08c8  2a 00 00 0a                                      beq #0x5d0978
005d08cc  00 00 52 e3                                      cmp r2, #0
005d08d0  03 00 00 0a                                      beq #0x5d08e4
005d08d4  01 00 a0 e3                                      mov r0, #1
005d08d8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005d08dc  00 00 a0 e3                                      mov r0, #0
005d08e0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005d08e4  24 80 90 e5                                      ldr r8, [r0, #0x24]
005d08e8  0c 20 91 e5                                      ldr r2, [r1, #0xc]
005d08ec  10 00 53 e3                                      cmp r3, #0x10
005d08f0  02 80 88 e0                                      add r8, r8, r2
005d08f4  28 00 00 0a                                      beq #0x5d099c
005d08f8  11 00 53 e3                                      cmp r3, #0x11
005d08fc  0f 00 00 0a                                      beq #0x5d0940
005d0900  08 00 53 e3                                      cmp r3, #8
005d0904  f2 ff ff 1a                                      bne #0x5d08d4
005d0908  08 30 91 e5                                      ldr r3, [r1, #8]
005d090c  08 c0 a0 e1                                      mov ip, r8
005d0910  03 82 88 e0                                      add r8, r8, r3, lsl #4
005d0914  08 00 5c e1                                      cmp ip, r8
005d0918  ed ff ff 0a                                      beq #0x5d08d4
005d091c  00 70 a0 e3                                      mov r7, #0
005d0920  0f 00 9c e8                                      ldm ip, {r0, r1, r2, r3}
005d0924  10 c0 8c e2                                      add ip, ip, #0x10
005d0928  07 60 84 e0                                      add r6, r4, r7
005d092c  0c 00 58 e1                                      cmp r8, ip
005d0930  0f 00 86 e8                                      stm r6, {r0, r1, r2, r3}
005d0934  05 70 87 e0                                      add r7, r7, r5
005d0938  f8 ff ff 1a                                      bne #0x5d0920
005d093c  e4 ff ff ea                                      b #0x5d08d4
005d0940  08 a0 91 e5                                      ldr sl, [r1, #8]
005d0944  00 00 5a e3                                      cmp sl, #0
005d0948  e1 ff ff 0a                                      beq #0x5d08d4
005d094c  00 70 a0 e3                                      mov r7, #0
005d0950  07 60 a0 e1                                      mov r6, r7
005d0954  06 32 88 e0                                      add r3, r8, r6, lsl #4
005d0958  01 60 86 e2                                      add r6, r6, #1
005d095c  07 c0 84 e0                                      add ip, r4, r7
005d0960  0a 00 56 e1                                      cmp r6, sl
005d0964  0f 00 93 e8                                      ldm r3, {r0, r1, r2, r3}
005d0968  05 70 87 e0                                      add r7, r7, r5
005d096c  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
005d0970  f7 ff ff 1a                                      bne #0x5d0954
005d0974  d6 ff ff ea                                      b #0x5d08d4
005d0978  24 c0 90 e5                                      ldr ip, [r0, #0x24]
005d097c  08 20 91 e5                                      ldr r2, [r1, #8]
005d0980  0c 30 91 e5                                      ldr r3, [r1, #0xc]
005d0984  04 00 a0 e1                                      mov r0, r4
005d0988  02 22 a0 e1                                      lsl r2, r2, #4
005d098c  03 10 8c e0                                      add r1, ip, r3
005d0990  b4 f7 f4 eb                                      bl #0x30e868
005d0994  01 00 a0 e3                                      mov r0, #1
005d0998  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005d099c  08 90 91 e5                                      ldr sb, [r1, #8]
005d09a0  09 91 88 e0                                      add sb, r8, sb, lsl #2
005d09a4  09 00 58 e1                                      cmp r8, sb
005d09a8  c9 ff ff 0a                                      beq #0x5d08d4
005d09ac  04 80 88 e2                                      add r8, r8, #4
005d09b0  01 00 00 ea                                      b #0x5d09bc
005d09b4  05 40 84 e0                                      add r4, r4, r5
005d09b8  04 80 88 e2                                      add r8, r8, #4
005d09bc  04 00 58 e5                                      ldrb r0, [r8, #-4]
005d09c0  e7 f7 f4 eb                                      bl #0x30e964
005d09c4  81 10 08 e3                                      movw r1, #0x8081
005d09c8  80 1b 43 e3                                      movt r1, #0x3b80
005d09cc  e6 f8 f4 eb                                      bl #0x30ed6c
005d09d0  00 60 a0 e1                                      mov r6, r0
005d09d4  03 00 58 e5                                      ldrb r0, [r8, #-3]
005d09d8  e1 f7 f4 eb                                      bl #0x30e964
005d09dc  81 10 08 e3                                      movw r1, #0x8081
005d09e0  80 1b 43 e3                                      movt r1, #0x3b80
005d09e4  e0 f8 f4 eb                                      bl #0x30ed6c
005d09e8  00 70 a0 e1                                      mov r7, r0
005d09ec  02 00 58 e5                                      ldrb r0, [r8, #-2]
005d09f0  db f7 f4 eb                                      bl #0x30e964
005d09f4  81 10 08 e3                                      movw r1, #0x8081
005d09f8  80 1b 43 e3                                      movt r1, #0x3b80
005d09fc  da f8 f4 eb                                      bl #0x30ed6c
005d0a00  00 a0 a0 e1                                      mov sl, r0
005d0a04  01 00 58 e5                                      ldrb r0, [r8, #-1]
005d0a08  d5 f7 f4 eb                                      bl #0x30e964
005d0a0c  81 10 08 e3                                      movw r1, #0x8081
005d0a10  80 1b 43 e3                                      movt r1, #0x3b80
005d0a14  d4 f8 f4 eb                                      bl #0x30ed6c
005d0a18  08 00 59 e1                                      cmp sb, r8
005d0a1c  0c 00 84 e5                                      str r0, [r4, #0xc]
005d0a20  08 a0 84 e5                                      str sl, [r4, #8]
005d0a24  04 70 84 e5                                      str r7, [r4, #4]
005d0a28  00 60 84 e5                                      str r6, [r4]
005d0a2c  e0 ff ff 1a                                      bne #0x5d09b4
005d0a30  a7 ff ff ea                                      b #0x5d08d4
; mapping-symbol data/literal pool
005d0a34  10 42 3c 00 a4 2c 00 00                          .byte 0x10, 0x42, 0x3c, 0x00, 0xa4, 0x2c, 0x00, 0x00

; FUNCTION 0x005d1500, declared_size=180, range_size=180, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::video::SColorf>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE12getParameterINS0_7SColorfEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPSC_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::video::SColorf>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::getParameter<glitch::video::SColorf>(unsigned short, glitch::video::SColorf*, int) const
; decoder-mode: arm
005d1500  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005d1504  be c0 d0 e1                                      ldrh ip, [r0, #0xe]
005d1508  02 70 a0 e1                                      mov r7, r2
005d150c  03 60 a0 e1                                      mov r6, r3
005d1510  01 00 5c e1                                      cmp ip, r1
005d1514  05 00 00 9a                                      bls #0x5d1530
005d1518  20 30 90 e5                                      ldr r3, [r0, #0x20]
005d151c  01 12 93 e0                                      adds r1, r3, r1, lsl #4
005d1520  02 00 00 0a                                      beq #0x5d1530
005d1524  06 30 d1 e5                                      ldrb r3, [r1, #6]
005d1528  11 00 53 e3                                      cmp r3, #0x11
005d152c  01 00 00 0a                                      beq #0x5d1538
005d1530  00 00 a0 e3                                      mov r0, #0
005d1534  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005d1538  00 00 56 e3                                      cmp r6, #0
005d153c  10 00 56 13                                      cmpne r6, #0x10
005d1540  00 50 a0 13                                      movne r5, #0
005d1544  01 50 a0 03                                      moveq r5, #1
005d1548  10 00 00 0a                                      beq #0x5d1590
005d154c  08 80 91 e5                                      ldr r8, [r1, #8]
005d1550  24 a0 90 e5                                      ldr sl, [r0, #0x24]
005d1554  0c 30 91 e5                                      ldr r3, [r1, #0xc]
005d1558  00 00 58 e3                                      cmp r8, #0
005d155c  09 00 00 0a                                      beq #0x5d1588
005d1560  03 a0 8a e0                                      add sl, sl, r3
005d1564  05 40 a0 e1                                      mov r4, r5
005d1568  04 32 8a e0                                      add r3, sl, r4, lsl #4
005d156c  01 40 84 e2                                      add r4, r4, #1
005d1570  05 c0 87 e0                                      add ip, r7, r5
005d1574  04 00 58 e1                                      cmp r8, r4
005d1578  0f 00 93 e8                                      ldm r3, {r0, r1, r2, r3}
005d157c  06 50 85 e0                                      add r5, r5, r6
005d1580  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
005d1584  f7 ff ff 1a                                      bne #0x5d1568
005d1588  01 00 a0 e3                                      mov r0, #1
005d158c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005d1590  24 c0 90 e5                                      ldr ip, [r0, #0x24]
005d1594  08 20 91 e5                                      ldr r2, [r1, #8]
005d1598  0c 30 91 e5                                      ldr r3, [r1, #0xc]
005d159c  07 00 a0 e1                                      mov r0, r7
005d15a0  02 22 a0 e1                                      lsl r2, r2, #4
005d15a4  03 10 8c e0                                      add r1, ip, r3
005d15a8  ae f4 f4 eb                                      bl #0x30e868
005d15ac  01 00 a0 e3                                      mov r0, #1
005d15b0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x005d1bc0, declared_size=476, range_size=476, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::video::SColorf>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS0_7SColorfEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPKSC_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::video::SColorf>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::setParameterCvt<glitch::video::SColorf>(unsigned short, glitch::video::SColorf const*, int)
; decoder-mode: arm
005d1bc0  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005d1bc4  be 40 d0 e1                                      ldrh r4, [r0, #0xe]
005d1bc8  c4 c1 9f e5                                      ldr ip, [pc, #0x1c4]
005d1bcc  03 50 a0 e1                                      mov r5, r3
005d1bd0  01 00 54 e1                                      cmp r4, r1
005d1bd4  0c c0 8f e0                                      add ip, pc, ip
005d1bd8  02 40 a0 e1                                      mov r4, r2
005d1bdc  13 00 00 9a                                      bls #0x5d1c30
005d1be0  20 30 90 e5                                      ldr r3, [r0, #0x20]
005d1be4  01 12 93 e0                                      adds r1, r3, r1, lsl #4
005d1be8  10 00 00 0a                                      beq #0x5d1c30
005d1bec  a4 21 9f e5                                      ldr r2, [pc, #0x1a4]
005d1bf0  06 30 d1 e5                                      ldrb r3, [r1, #6]
005d1bf4  02 20 9c e7                                      ldr r2, [ip, r2]
005d1bf8  03 21 92 e7                                      ldr r2, [r2, r3, lsl #2]
005d1bfc  02 08 12 e3                                      tst r2, #0x20000
005d1c00  0a 00 00 0a                                      beq #0x5d1c30
005d1c04  01 20 75 e2                                      rsbs r2, r5, #1
005d1c08  00 20 a0 33                                      movlo r2, #0
005d1c0c  00 00 55 e3                                      cmp r5, #0
005d1c10  10 00 55 13                                      cmpne r5, #0x10
005d1c14  07 00 00 1a                                      bne #0x5d1c38
005d1c18  11 00 53 e3                                      cmp r3, #0x11
005d1c1c  2d 00 00 0a                                      beq #0x5d1cd8
005d1c20  00 00 52 e3                                      cmp r2, #0
005d1c24  03 00 00 0a                                      beq #0x5d1c38
005d1c28  01 00 a0 e3                                      mov r0, #1
005d1c2c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005d1c30  00 00 a0 e3                                      mov r0, #0
005d1c34  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005d1c38  24 80 90 e5                                      ldr r8, [r0, #0x24]
005d1c3c  0c 20 91 e5                                      ldr r2, [r1, #0xc]
005d1c40  10 00 53 e3                                      cmp r3, #0x10
005d1c44  02 80 88 e0                                      add r8, r8, r2
005d1c48  2b 00 00 0a                                      beq #0x5d1cfc
005d1c4c  11 00 53 e3                                      cmp r3, #0x11
005d1c50  12 00 00 0a                                      beq #0x5d1ca0
005d1c54  08 00 53 e3                                      cmp r3, #8
005d1c58  f2 ff ff 1a                                      bne #0x5d1c28
005d1c5c  08 20 91 e5                                      ldr r2, [r1, #8]
005d1c60  02 22 88 e0                                      add r2, r8, r2, lsl #4
005d1c64  02 00 58 e1                                      cmp r8, r2
005d1c68  ee ff ff 0a                                      beq #0x5d1c28
005d1c6c  00 30 94 e5                                      ldr r3, [r4]
005d1c70  00 30 88 e5                                      str r3, [r8]
005d1c74  04 30 94 e5                                      ldr r3, [r4, #4]
005d1c78  04 30 88 e5                                      str r3, [r8, #4]
005d1c7c  08 30 94 e5                                      ldr r3, [r4, #8]
005d1c80  08 30 88 e5                                      str r3, [r8, #8]
005d1c84  0c 30 94 e5                                      ldr r3, [r4, #0xc]
005d1c88  05 40 84 e0                                      add r4, r4, r5
005d1c8c  0c 30 88 e5                                      str r3, [r8, #0xc]
005d1c90  10 80 88 e2                                      add r8, r8, #0x10
005d1c94  08 00 52 e1                                      cmp r2, r8
005d1c98  f3 ff ff 1a                                      bne #0x5d1c6c
005d1c9c  e1 ff ff ea                                      b #0x5d1c28
005d1ca0  08 a0 91 e5                                      ldr sl, [r1, #8]
005d1ca4  00 00 5a e3                                      cmp sl, #0
005d1ca8  de ff ff 0a                                      beq #0x5d1c28
005d1cac  00 60 a0 e3                                      mov r6, #0
005d1cb0  06 c0 a0 e1                                      mov ip, r6
005d1cb4  0c 72 88 e0                                      add r7, r8, ip, lsl #4
005d1cb8  01 c0 8c e2                                      add ip, ip, #1
005d1cbc  06 30 84 e0                                      add r3, r4, r6
005d1cc0  0c 00 5a e1                                      cmp sl, ip
005d1cc4  0f 00 93 e8                                      ldm r3, {r0, r1, r2, r3}
005d1cc8  05 60 86 e0                                      add r6, r6, r5
005d1ccc  0f 00 87 e8                                      stm r7, {r0, r1, r2, r3}
005d1cd0  f7 ff ff 1a                                      bne #0x5d1cb4
005d1cd4  d3 ff ff ea                                      b #0x5d1c28
005d1cd8  08 20 91 e5                                      ldr r2, [r1, #8]
005d1cdc  0c 30 91 e5                                      ldr r3, [r1, #0xc]
005d1ce0  24 00 90 e5                                      ldr r0, [r0, #0x24]
005d1ce4  04 10 a0 e1                                      mov r1, r4
005d1ce8  02 22 a0 e1                                      lsl r2, r2, #4
005d1cec  03 00 80 e0                                      add r0, r0, r3
005d1cf0  dc f2 f4 eb                                      bl #0x30e868
005d1cf4  01 00 a0 e3                                      mov r0, #1
005d1cf8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005d1cfc  08 90 91 e5                                      ldr sb, [r1, #8]
005d1d00  09 91 88 e0                                      add sb, r8, sb, lsl #2
005d1d04  09 00 58 e1                                      cmp r8, sb
005d1d08  c6 ff ff 0a                                      beq #0x5d1c28
005d1d0c  04 80 88 e2                                      add r8, r8, #4
005d1d10  01 00 00 ea                                      b #0x5d1d1c
005d1d14  05 40 84 e0                                      add r4, r4, r5
005d1d18  04 80 88 e2                                      add r8, r8, #4
005d1d1c  43 14 a0 e3                                      mov r1, #0x43000000
005d1d20  0c 00 94 e5                                      ldr r0, [r4, #0xc]
005d1d24  7f 18 81 e2                                      add r1, r1, #0x7f0000
005d1d28  0f f4 f4 eb                                      bl #0x30ed6c
005d1d2c  5b b1 0b eb                                      bl #0x8be2a0
005d1d30  43 14 a0 e3                                      mov r1, #0x43000000
005d1d34  7f 18 81 e2                                      add r1, r1, #0x7f0000
005d1d38  70 a0 ef e6                                      uxtb sl, r0
005d1d3c  00 00 94 e5                                      ldr r0, [r4]
005d1d40  09 f4 f4 eb                                      bl #0x30ed6c
005d1d44  55 b1 0b eb                                      bl #0x8be2a0
005d1d48  43 14 a0 e3                                      mov r1, #0x43000000
005d1d4c  7f 18 81 e2                                      add r1, r1, #0x7f0000
005d1d50  70 60 ef e6                                      uxtb r6, r0
005d1d54  04 00 94 e5                                      ldr r0, [r4, #4]
005d1d58  03 f4 f4 eb                                      bl #0x30ed6c
005d1d5c  4f b1 0b eb                                      bl #0x8be2a0
005d1d60  43 14 a0 e3                                      mov r1, #0x43000000
005d1d64  70 70 ef e6                                      uxtb r7, r0
005d1d68  7f 18 81 e2                                      add r1, r1, #0x7f0000
005d1d6c  08 00 94 e5                                      ldr r0, [r4, #8]
005d1d70  fd f3 f4 eb                                      bl #0x30ed6c
005d1d74  49 b1 0b eb                                      bl #0x8be2a0
005d1d78  08 00 59 e1                                      cmp sb, r8
005d1d7c  01 a0 48 e5                                      strb sl, [r8, #-1]
005d1d80  02 00 48 e5                                      strb r0, [r8, #-2]
005d1d84  03 70 48 e5                                      strb r7, [r8, #-3]
005d1d88  04 60 48 e5                                      strb r6, [r8, #-4]
005d1d8c  e0 ff ff 1a                                      bne #0x5d1d14
005d1d90  a4 ff ff ea                                      b #0x5d1c28
; mapping-symbol data/literal pool
005d1d94  bc 2e 3c 00 a4 2c 00 00                          .byte 0xbc, 0x2e, 0x3c, 0x00, 0xa4, 0x2c, 0x00, 0x00

; FUNCTION 0x005d2858, declared_size=180, range_size=180, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::video::SColorf>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE12setParameterINS0_7SColorfEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPKSC_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::video::SColorf>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::setParameter<glitch::video::SColorf>(unsigned short, glitch::video::SColorf const*, int)
; decoder-mode: arm
005d2858  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005d285c  be c0 d0 e1                                      ldrh ip, [r0, #0xe]
005d2860  02 70 a0 e1                                      mov r7, r2
005d2864  03 60 a0 e1                                      mov r6, r3
005d2868  01 00 5c e1                                      cmp ip, r1
005d286c  05 00 00 9a                                      bls #0x5d2888
005d2870  20 30 90 e5                                      ldr r3, [r0, #0x20]
005d2874  01 12 93 e0                                      adds r1, r3, r1, lsl #4
005d2878  02 00 00 0a                                      beq #0x5d2888
005d287c  06 30 d1 e5                                      ldrb r3, [r1, #6]
005d2880  11 00 53 e3                                      cmp r3, #0x11
005d2884  01 00 00 0a                                      beq #0x5d2890
005d2888  00 00 a0 e3                                      mov r0, #0
005d288c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005d2890  00 00 56 e3                                      cmp r6, #0
005d2894  10 00 56 13                                      cmpne r6, #0x10
005d2898  00 50 a0 13                                      movne r5, #0
005d289c  01 50 a0 03                                      moveq r5, #1
005d28a0  10 00 00 0a                                      beq #0x5d28e8
005d28a4  08 80 91 e5                                      ldr r8, [r1, #8]
005d28a8  24 a0 90 e5                                      ldr sl, [r0, #0x24]
005d28ac  0c 30 91 e5                                      ldr r3, [r1, #0xc]
005d28b0  00 00 58 e3                                      cmp r8, #0
005d28b4  09 00 00 0a                                      beq #0x5d28e0
005d28b8  03 a0 8a e0                                      add sl, sl, r3
005d28bc  05 40 a0 e1                                      mov r4, r5
005d28c0  04 c2 8a e0                                      add ip, sl, r4, lsl #4
005d28c4  01 40 84 e2                                      add r4, r4, #1
005d28c8  05 30 87 e0                                      add r3, r7, r5
005d28cc  08 00 54 e1                                      cmp r4, r8
005d28d0  0f 00 93 e8                                      ldm r3, {r0, r1, r2, r3}
005d28d4  06 50 85 e0                                      add r5, r5, r6
005d28d8  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
005d28dc  f7 ff ff 1a                                      bne #0x5d28c0
005d28e0  01 00 a0 e3                                      mov r0, #1
005d28e4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005d28e8  08 20 91 e5                                      ldr r2, [r1, #8]
005d28ec  0c 30 91 e5                                      ldr r3, [r1, #0xc]
005d28f0  24 00 90 e5                                      ldr r0, [r0, #0x24]
005d28f4  07 10 a0 e1                                      mov r1, r7
005d28f8  02 22 a0 e1                                      lsl r2, r2, #4
005d28fc  03 00 80 e0                                      add r0, r0, r3
005d2900  d8 ef f4 eb                                      bl #0x30e868
005d2904  01 00 a0 e3                                      mov r0, #1
005d2908  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

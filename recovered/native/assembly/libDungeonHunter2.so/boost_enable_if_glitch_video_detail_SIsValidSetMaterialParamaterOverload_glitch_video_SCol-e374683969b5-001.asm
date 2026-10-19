; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005cf394, declared_size=96, range_size=96, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::video::SColor>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE12setParameterINS0_6SColorEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSC_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::video::SColor>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::setParameter<glitch::video::SColor>(unsigned short, unsigned int, glitch::video::SColor const&)
; decoder-mode: arm
005cf394  10 40 2d e9                                      push {r4, lr}
005cf398  be c0 d0 e1                                      ldrh ip, [r0, #0xe]
005cf39c  01 00 5c e1                                      cmp ip, r1
005cf3a0  05 00 00 9a                                      bls #0x5cf3bc
005cf3a4  20 c0 90 e5                                      ldr ip, [r0, #0x20]
005cf3a8  01 c2 9c e0                                      adds ip, ip, r1, lsl #4
005cf3ac  02 00 00 0a                                      beq #0x5cf3bc
005cf3b0  06 40 dc e5                                      ldrb r4, [ip, #6]
005cf3b4  10 00 54 e3                                      cmp r4, #0x10
005cf3b8  01 00 00 0a                                      beq #0x5cf3c4
005cf3bc  00 00 a0 e3                                      mov r0, #0
005cf3c0  10 80 bd e8                                      pop {r4, pc}
005cf3c4  08 10 9c e5                                      ldr r1, [ip, #8]
005cf3c8  01 00 52 e1                                      cmp r2, r1
005cf3cc  fa ff ff 2a                                      bhs #0x5cf3bc
005cf3d0  0c c0 9c e5                                      ldr ip, [ip, #0xc]
005cf3d4  24 00 90 e5                                      ldr r0, [r0, #0x24]
005cf3d8  03 10 a0 e1                                      mov r1, r3
005cf3dc  02 21 8c e0                                      add r2, ip, r2, lsl #2
005cf3e0  02 00 80 e0                                      add r0, r0, r2
005cf3e4  04 20 a0 e3                                      mov r2, #4
005cf3e8  1e fd f4 eb                                      bl #0x30e868
005cf3ec  01 00 a0 e3                                      mov r0, #1
005cf3f0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005cf998, declared_size=428, range_size=428, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::video::SColor>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS0_6SColorEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSC_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::video::SColor>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::setParameterCvt<glitch::video::SColor>(unsigned short, unsigned int, glitch::video::SColor const&)
; decoder-mode: arm
005cf998  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005cf99c  be 40 d0 e1                                      ldrh r4, [r0, #0xe]
005cf9a0  94 c1 9f e5                                      ldr ip, [pc, #0x194]
005cf9a4  10 d0 4d e2                                      sub sp, sp, #0x10
005cf9a8  01 00 54 e1                                      cmp r4, r1
005cf9ac  0c c0 8f e0                                      add ip, pc, ip
005cf9b0  03 40 a0 e1                                      mov r4, r3
005cf9b4  16 00 00 9a                                      bls #0x5cfa14
005cf9b8  20 30 90 e5                                      ldr r3, [r0, #0x20]
005cf9bc  01 12 93 e0                                      adds r1, r3, r1, lsl #4
005cf9c0  13 00 00 0a                                      beq #0x5cfa14
005cf9c4  74 51 9f e5                                      ldr r5, [pc, #0x174]
005cf9c8  06 30 d1 e5                                      ldrb r3, [r1, #6]
005cf9cc  05 c0 9c e7                                      ldr ip, [ip, r5]
005cf9d0  03 c1 9c e7                                      ldr ip, [ip, r3, lsl #2]
005cf9d4  01 08 1c e3                                      tst ip, #0x10000
005cf9d8  0d 00 00 0a                                      beq #0x5cfa14
005cf9dc  08 c0 91 e5                                      ldr ip, [r1, #8]
005cf9e0  0c 00 52 e1                                      cmp r2, ip
005cf9e4  0a 00 00 2a                                      bhs #0x5cfa14
005cf9e8  24 70 90 e5                                      ldr r7, [r0, #0x24]
005cf9ec  0c 60 91 e5                                      ldr r6, [r1, #0xc]
005cf9f0  10 00 53 e3                                      cmp r3, #0x10
005cf9f4  06 50 87 e0                                      add r5, r7, r6
005cf9f8  08 00 00 0a                                      beq #0x5cfa20
005cf9fc  11 00 53 e3                                      cmp r3, #0x11
005cfa00  30 00 00 0a                                      beq #0x5cfac8
005cfa04  08 00 53 e3                                      cmp r3, #8
005cfa08  0a 00 00 0a                                      beq #0x5cfa38
005cfa0c  01 00 a0 e3                                      mov r0, #1
005cfa10  00 00 00 ea                                      b #0x5cfa18
005cfa14  00 00 a0 e3                                      mov r0, #0
005cfa18  10 d0 8d e2                                      add sp, sp, #0x10
005cfa1c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005cfa20  05 00 a0 e1                                      mov r0, r5
005cfa24  04 10 a0 e1                                      mov r1, r4
005cfa28  04 20 a0 e3                                      mov r2, #4
005cfa2c  8d fb f4 eb                                      bl #0x30e868
005cfa30  01 00 a0 e3                                      mov r0, #1
005cfa34  f7 ff ff ea                                      b #0x5cfa18
005cfa38  00 00 d4 e5                                      ldrb r0, [r4]
005cfa3c  c8 fb f4 eb                                      bl #0x30e964
005cfa40  81 10 08 e3                                      movw r1, #0x8081
005cfa44  80 1b 43 e3                                      movt r1, #0x3b80
005cfa48  c7 fc f4 eb                                      bl #0x30ed6c
005cfa4c  01 a0 d4 e5                                      ldrb sl, [r4, #1]
005cfa50  00 80 a0 e1                                      mov r8, r0
005cfa54  0a 00 a0 e1                                      mov r0, sl
005cfa58  c1 fb f4 eb                                      bl #0x30e964
005cfa5c  81 10 08 e3                                      movw r1, #0x8081
005cfa60  80 1b 43 e3                                      movt r1, #0x3b80
005cfa64  c0 fc f4 eb                                      bl #0x30ed6c
005cfa68  02 30 d4 e5                                      ldrb r3, [r4, #2]
005cfa6c  04 00 8d e5                                      str r0, [sp, #4]
005cfa70  03 40 d4 e5                                      ldrb r4, [r4, #3]
005cfa74  03 00 a0 e1                                      mov r0, r3
005cfa78  b9 fb f4 eb                                      bl #0x30e964
005cfa7c  81 10 08 e3                                      movw r1, #0x8081
005cfa80  80 1b 43 e3                                      movt r1, #0x3b80
005cfa84  b8 fc f4 eb                                      bl #0x30ed6c
005cfa88  08 00 8d e5                                      str r0, [sp, #8]
005cfa8c  04 00 a0 e1                                      mov r0, r4
005cfa90  b3 fb f4 eb                                      bl #0x30e964
005cfa94  81 10 08 e3                                      movw r1, #0x8081
005cfa98  80 1b 43 e3                                      movt r1, #0x3b80
005cfa9c  b2 fc f4 eb                                      bl #0x30ed6c
005cfaa0  0c 00 8d e5                                      str r0, [sp, #0xc]
005cfaa4  06 80 87 e7                                      str r8, [r7, r6]
005cfaa8  04 30 9d e5                                      ldr r3, [sp, #4]
005cfaac  01 00 a0 e3                                      mov r0, #1
005cfab0  04 30 85 e5                                      str r3, [r5, #4]
005cfab4  08 30 9d e5                                      ldr r3, [sp, #8]
005cfab8  08 30 85 e5                                      str r3, [r5, #8]
005cfabc  0c 30 9d e5                                      ldr r3, [sp, #0xc]
005cfac0  0c 30 85 e5                                      str r3, [r5, #0xc]
005cfac4  d3 ff ff ea                                      b #0x5cfa18
005cfac8  00 00 d4 e5                                      ldrb r0, [r4]
005cfacc  a4 fb f4 eb                                      bl #0x30e964
005cfad0  81 10 08 e3                                      movw r1, #0x8081
005cfad4  80 1b 43 e3                                      movt r1, #0x3b80
005cfad8  a3 fc f4 eb                                      bl #0x30ed6c
005cfadc  00 80 a0 e1                                      mov r8, r0
005cfae0  01 00 d4 e5                                      ldrb r0, [r4, #1]
005cfae4  9e fb f4 eb                                      bl #0x30e964
005cfae8  81 10 08 e3                                      movw r1, #0x8081
005cfaec  80 1b 43 e3                                      movt r1, #0x3b80
005cfaf0  9d fc f4 eb                                      bl #0x30ed6c
005cfaf4  00 90 a0 e1                                      mov sb, r0
005cfaf8  02 00 d4 e5                                      ldrb r0, [r4, #2]
005cfafc  98 fb f4 eb                                      bl #0x30e964
005cfb00  81 10 08 e3                                      movw r1, #0x8081
005cfb04  80 1b 43 e3                                      movt r1, #0x3b80
005cfb08  97 fc f4 eb                                      bl #0x30ed6c
005cfb0c  00 a0 a0 e1                                      mov sl, r0
005cfb10  03 00 d4 e5                                      ldrb r0, [r4, #3]
005cfb14  92 fb f4 eb                                      bl #0x30e964
005cfb18  81 10 08 e3                                      movw r1, #0x8081
005cfb1c  80 1b 43 e3                                      movt r1, #0x3b80
005cfb20  91 fc f4 eb                                      bl #0x30ed6c
005cfb24  04 90 85 e5                                      str sb, [r5, #4]
005cfb28  0c 00 85 e5                                      str r0, [r5, #0xc]
005cfb2c  08 a0 85 e5                                      str sl, [r5, #8]
005cfb30  01 00 a0 e3                                      mov r0, #1
005cfb34  06 80 87 e7                                      str r8, [r7, r6]
005cfb38  b6 ff ff ea                                      b #0x5cfa18
; mapping-symbol data/literal pool
005cfb3c  e4 50 3c 00 a4 2c 00 00                          .byte 0xe4, 0x50, 0x3c, 0x00, 0xa4, 0x2c, 0x00, 0x00

; FUNCTION 0x005cffb0, declared_size=96, range_size=96, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::video::SColor>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE12getParameterINS0_6SColorEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRSC_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::video::SColor>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::getParameter<glitch::video::SColor>(unsigned short, unsigned int, glitch::video::SColor&) const
; decoder-mode: arm
005cffb0  10 40 2d e9                                      push {r4, lr}
005cffb4  be c0 d0 e1                                      ldrh ip, [r0, #0xe]
005cffb8  01 00 5c e1                                      cmp ip, r1
005cffbc  05 00 00 9a                                      bls #0x5cffd8
005cffc0  20 c0 90 e5                                      ldr ip, [r0, #0x20]
005cffc4  01 12 9c e0                                      adds r1, ip, r1, lsl #4
005cffc8  02 00 00 0a                                      beq #0x5cffd8
005cffcc  06 c0 d1 e5                                      ldrb ip, [r1, #6]
005cffd0  10 00 5c e3                                      cmp ip, #0x10
005cffd4  01 00 00 0a                                      beq #0x5cffe0
005cffd8  00 00 a0 e3                                      mov r0, #0
005cffdc  10 80 bd e8                                      pop {r4, pc}
005cffe0  08 c0 91 e5                                      ldr ip, [r1, #8]
005cffe4  0c 00 52 e1                                      cmp r2, ip
005cffe8  fa ff ff 2a                                      bhs #0x5cffd8
005cffec  0c c0 91 e5                                      ldr ip, [r1, #0xc]
005cfff0  24 10 90 e5                                      ldr r1, [r0, #0x24]
005cfff4  03 00 a0 e1                                      mov r0, r3
005cfff8  02 21 8c e0                                      add r2, ip, r2, lsl #2
005cfffc  02 10 81 e0                                      add r1, r1, r2
005d0000  04 20 a0 e3                                      mov r2, #4
005d0004  17 fa f4 eb                                      bl #0x30e868
005d0008  01 00 a0 e3                                      mov r0, #1
005d000c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005d05ac, declared_size=392, range_size=392, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::video::SColor>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE15getParameterCvtINS0_6SColorEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRSC_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::video::SColor>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::getParameterCvt<glitch::video::SColor>(unsigned short, unsigned int, glitch::video::SColor&) const
; decoder-mode: arm
005d05ac  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005d05b0  be 40 d0 e1                                      ldrh r4, [r0, #0xe]
005d05b4  70 c1 9f e5                                      ldr ip, [pc, #0x170]
005d05b8  01 00 54 e1                                      cmp r4, r1
005d05bc  0c c0 8f e0                                      add ip, pc, ip
005d05c0  03 40 a0 e1                                      mov r4, r3
005d05c4  16 00 00 9a                                      bls #0x5d0624
005d05c8  20 30 90 e5                                      ldr r3, [r0, #0x20]
005d05cc  01 12 93 e0                                      adds r1, r3, r1, lsl #4
005d05d0  13 00 00 0a                                      beq #0x5d0624
005d05d4  54 51 9f e5                                      ldr r5, [pc, #0x154]
005d05d8  06 30 d1 e5                                      ldrb r3, [r1, #6]
005d05dc  05 c0 9c e7                                      ldr ip, [ip, r5]
005d05e0  03 c1 9c e7                                      ldr ip, [ip, r3, lsl #2]
005d05e4  01 08 1c e3                                      tst ip, #0x10000
005d05e8  0d 00 00 0a                                      beq #0x5d0624
005d05ec  08 c0 91 e5                                      ldr ip, [r1, #8]
005d05f0  0c 00 52 e1                                      cmp r2, ip
005d05f4  0a 00 00 2a                                      bhs #0x5d0624
005d05f8  24 70 90 e5                                      ldr r7, [r0, #0x24]
005d05fc  0c 60 91 e5                                      ldr r6, [r1, #0xc]
005d0600  10 00 53 e3                                      cmp r3, #0x10
005d0604  06 50 87 e0                                      add r5, r7, r6
005d0608  07 00 00 0a                                      beq #0x5d062c
005d060c  11 00 53 e3                                      cmp r3, #0x11
005d0610  28 00 00 0a                                      beq #0x5d06b8
005d0614  08 00 53 e3                                      cmp r3, #8
005d0618  09 00 00 0a                                      beq #0x5d0644
005d061c  01 00 a0 e3                                      mov r0, #1
005d0620  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005d0624  00 00 a0 e3                                      mov r0, #0
005d0628  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005d062c  04 00 a0 e1                                      mov r0, r4
005d0630  05 10 a0 e1                                      mov r1, r5
005d0634  04 20 a0 e3                                      mov r2, #4
005d0638  8a f8 f4 eb                                      bl #0x30e868
005d063c  01 00 a0 e3                                      mov r0, #1
005d0640  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005d0644  43 14 a0 e3                                      mov r1, #0x43000000
005d0648  0c 00 95 e5                                      ldr r0, [r5, #0xc]
005d064c  7f 18 81 e2                                      add r1, r1, #0x7f0000
005d0650  c5 f9 f4 eb                                      bl #0x30ed6c
005d0654  11 b7 0b eb                                      bl #0x8be2a0
005d0658  43 14 a0 e3                                      mov r1, #0x43000000
005d065c  7f 18 81 e2                                      add r1, r1, #0x7f0000
005d0660  70 80 ef e6                                      uxtb r8, r0
005d0664  06 00 97 e7                                      ldr r0, [r7, r6]
005d0668  bf f9 f4 eb                                      bl #0x30ed6c
005d066c  0b b7 0b eb                                      bl #0x8be2a0
005d0670  43 14 a0 e3                                      mov r1, #0x43000000
005d0674  7f 18 81 e2                                      add r1, r1, #0x7f0000
005d0678  70 70 ef e6                                      uxtb r7, r0
005d067c  04 00 95 e5                                      ldr r0, [r5, #4]
005d0680  b9 f9 f4 eb                                      bl #0x30ed6c
005d0684  05 b7 0b eb                                      bl #0x8be2a0
005d0688  43 14 a0 e3                                      mov r1, #0x43000000
005d068c  70 60 ef e6                                      uxtb r6, r0
005d0690  7f 18 81 e2                                      add r1, r1, #0x7f0000
005d0694  08 00 95 e5                                      ldr r0, [r5, #8]
005d0698  b3 f9 f4 eb                                      bl #0x30ed6c
005d069c  ff b6 0b eb                                      bl #0x8be2a0
005d06a0  00 70 c4 e5                                      strb r7, [r4]
005d06a4  02 00 c4 e5                                      strb r0, [r4, #2]
005d06a8  03 80 c4 e5                                      strb r8, [r4, #3]
005d06ac  01 60 c4 e5                                      strb r6, [r4, #1]
005d06b0  01 00 a0 e3                                      mov r0, #1
005d06b4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005d06b8  43 14 a0 e3                                      mov r1, #0x43000000
005d06bc  0c 00 95 e5                                      ldr r0, [r5, #0xc]
005d06c0  7f 18 81 e2                                      add r1, r1, #0x7f0000
005d06c4  a8 f9 f4 eb                                      bl #0x30ed6c
005d06c8  f4 b6 0b eb                                      bl #0x8be2a0
005d06cc  43 14 a0 e3                                      mov r1, #0x43000000
005d06d0  7f 18 81 e2                                      add r1, r1, #0x7f0000
005d06d4  70 80 ef e6                                      uxtb r8, r0
005d06d8  06 00 97 e7                                      ldr r0, [r7, r6]
005d06dc  a2 f9 f4 eb                                      bl #0x30ed6c
005d06e0  ee b6 0b eb                                      bl #0x8be2a0
005d06e4  43 14 a0 e3                                      mov r1, #0x43000000
005d06e8  7f 18 81 e2                                      add r1, r1, #0x7f0000
005d06ec  70 70 ef e6                                      uxtb r7, r0
005d06f0  04 00 95 e5                                      ldr r0, [r5, #4]
005d06f4  9c f9 f4 eb                                      bl #0x30ed6c
005d06f8  e8 b6 0b eb                                      bl #0x8be2a0
005d06fc  43 14 a0 e3                                      mov r1, #0x43000000
005d0700  70 60 ef e6                                      uxtb r6, r0
005d0704  7f 18 81 e2                                      add r1, r1, #0x7f0000
005d0708  08 00 95 e5                                      ldr r0, [r5, #8]
005d070c  96 f9 f4 eb                                      bl #0x30ed6c
005d0710  e2 b6 0b eb                                      bl #0x8be2a0
005d0714  00 70 c4 e5                                      strb r7, [r4]
005d0718  02 00 c4 e5                                      strb r0, [r4, #2]
005d071c  03 80 c4 e5                                      strb r8, [r4, #3]
005d0720  01 60 c4 e5                                      strb r6, [r4, #1]
005d0724  01 00 a0 e3                                      mov r0, #1
005d0728  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
005d072c  d4 44 3c 00 a4 2c 00 00                          .byte 0xd4, 0x44, 0x3c, 0x00, 0xa4, 0x2c, 0x00, 0x00

; FUNCTION 0x005d0a3c, declared_size=552, range_size=552, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::video::SColor>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE15getParameterCvtINS0_6SColorEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPSC_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::video::SColor>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::getParameterCvt<glitch::video::SColor>(unsigned short, glitch::video::SColor*, int) const
; decoder-mode: arm
005d0a3c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005d0a40  be 40 d0 e1                                      ldrh r4, [r0, #0xe]
005d0a44  10 c2 9f e5                                      ldr ip, [pc, #0x210]
005d0a48  03 50 a0 e1                                      mov r5, r3
005d0a4c  01 00 54 e1                                      cmp r4, r1
005d0a50  0c c0 8f e0                                      add ip, pc, ip
005d0a54  02 40 a0 e1                                      mov r4, r2
005d0a58  13 00 00 9a                                      bls #0x5d0aac
005d0a5c  20 30 90 e5                                      ldr r3, [r0, #0x20]
005d0a60  01 12 93 e0                                      adds r1, r3, r1, lsl #4
005d0a64  10 00 00 0a                                      beq #0x5d0aac
005d0a68  f0 21 9f e5                                      ldr r2, [pc, #0x1f0]
005d0a6c  06 30 d1 e5                                      ldrb r3, [r1, #6]
005d0a70  02 20 9c e7                                      ldr r2, [ip, r2]
005d0a74  03 21 92 e7                                      ldr r2, [r2, r3, lsl #2]
005d0a78  01 08 12 e3                                      tst r2, #0x10000
005d0a7c  0a 00 00 0a                                      beq #0x5d0aac
005d0a80  01 20 75 e2                                      rsbs r2, r5, #1
005d0a84  00 20 a0 33                                      movlo r2, #0
005d0a88  00 00 55 e3                                      cmp r5, #0
005d0a8c  04 00 55 13                                      cmpne r5, #4
005d0a90  07 00 00 1a                                      bne #0x5d0ab4
005d0a94  10 00 53 e3                                      cmp r3, #0x10
005d0a98  58 00 00 0a                                      beq #0x5d0c00
005d0a9c  00 00 52 e3                                      cmp r2, #0
005d0aa0  03 00 00 0a                                      beq #0x5d0ab4
005d0aa4  01 00 a0 e3                                      mov r0, #1
005d0aa8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005d0aac  00 00 a0 e3                                      mov r0, #0
005d0ab0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005d0ab4  24 80 90 e5                                      ldr r8, [r0, #0x24]
005d0ab8  0c 20 91 e5                                      ldr r2, [r1, #0xc]
005d0abc  10 00 53 e3                                      cmp r3, #0x10
005d0ac0  02 80 88 e0                                      add r8, r8, r2
005d0ac4  56 00 00 0a                                      beq #0x5d0c24
005d0ac8  11 00 53 e3                                      cmp r3, #0x11
005d0acc  26 00 00 0a                                      beq #0x5d0b6c
005d0ad0  08 00 53 e3                                      cmp r3, #8
005d0ad4  f2 ff ff 1a                                      bne #0x5d0aa4
005d0ad8  08 90 91 e5                                      ldr sb, [r1, #8]
005d0adc  09 92 88 e0                                      add sb, r8, sb, lsl #4
005d0ae0  09 00 58 e1                                      cmp r8, sb
005d0ae4  01 00 00 1a                                      bne #0x5d0af0
005d0ae8  ed ff ff ea                                      b #0x5d0aa4
005d0aec  05 40 84 e0                                      add r4, r4, r5
005d0af0  43 14 a0 e3                                      mov r1, #0x43000000
005d0af4  0c 00 98 e5                                      ldr r0, [r8, #0xc]
005d0af8  7f 18 81 e2                                      add r1, r1, #0x7f0000
005d0afc  9a f8 f4 eb                                      bl #0x30ed6c
005d0b00  e6 b5 0b eb                                      bl #0x8be2a0
005d0b04  43 14 a0 e3                                      mov r1, #0x43000000
005d0b08  7f 18 81 e2                                      add r1, r1, #0x7f0000
005d0b0c  70 a0 ef e6                                      uxtb sl, r0
005d0b10  00 00 98 e5                                      ldr r0, [r8]
005d0b14  94 f8 f4 eb                                      bl #0x30ed6c
005d0b18  e0 b5 0b eb                                      bl #0x8be2a0
005d0b1c  43 14 a0 e3                                      mov r1, #0x43000000
005d0b20  7f 18 81 e2                                      add r1, r1, #0x7f0000
005d0b24  70 60 ef e6                                      uxtb r6, r0
005d0b28  04 00 98 e5                                      ldr r0, [r8, #4]
005d0b2c  8e f8 f4 eb                                      bl #0x30ed6c
005d0b30  da b5 0b eb                                      bl #0x8be2a0
005d0b34  43 14 a0 e3                                      mov r1, #0x43000000
005d0b38  70 70 ef e6                                      uxtb r7, r0
005d0b3c  7f 18 81 e2                                      add r1, r1, #0x7f0000
005d0b40  08 00 98 e5                                      ldr r0, [r8, #8]
005d0b44  88 f8 f4 eb                                      bl #0x30ed6c
005d0b48  d4 b5 0b eb                                      bl #0x8be2a0
005d0b4c  10 80 88 e2                                      add r8, r8, #0x10
005d0b50  08 00 59 e1                                      cmp sb, r8
005d0b54  03 a0 c4 e5                                      strb sl, [r4, #3]
005d0b58  02 00 c4 e5                                      strb r0, [r4, #2]
005d0b5c  01 70 c4 e5                                      strb r7, [r4, #1]
005d0b60  00 60 c4 e5                                      strb r6, [r4]
005d0b64  e0 ff ff 1a                                      bne #0x5d0aec
005d0b68  cd ff ff ea                                      b #0x5d0aa4
005d0b6c  08 90 91 e5                                      ldr sb, [r1, #8]
005d0b70  09 92 88 e0                                      add sb, r8, sb, lsl #4
005d0b74  09 00 58 e1                                      cmp r8, sb
005d0b78  01 00 00 1a                                      bne #0x5d0b84
005d0b7c  c8 ff ff ea                                      b #0x5d0aa4
005d0b80  05 40 84 e0                                      add r4, r4, r5
005d0b84  43 14 a0 e3                                      mov r1, #0x43000000
005d0b88  0c 00 98 e5                                      ldr r0, [r8, #0xc]
005d0b8c  7f 18 81 e2                                      add r1, r1, #0x7f0000
005d0b90  75 f8 f4 eb                                      bl #0x30ed6c
005d0b94  c1 b5 0b eb                                      bl #0x8be2a0
005d0b98  43 14 a0 e3                                      mov r1, #0x43000000
005d0b9c  7f 18 81 e2                                      add r1, r1, #0x7f0000
005d0ba0  70 a0 ef e6                                      uxtb sl, r0
005d0ba4  00 00 98 e5                                      ldr r0, [r8]
005d0ba8  6f f8 f4 eb                                      bl #0x30ed6c
005d0bac  bb b5 0b eb                                      bl #0x8be2a0
005d0bb0  43 14 a0 e3                                      mov r1, #0x43000000
005d0bb4  7f 18 81 e2                                      add r1, r1, #0x7f0000
005d0bb8  70 60 ef e6                                      uxtb r6, r0
005d0bbc  04 00 98 e5                                      ldr r0, [r8, #4]
005d0bc0  69 f8 f4 eb                                      bl #0x30ed6c
005d0bc4  b5 b5 0b eb                                      bl #0x8be2a0
005d0bc8  43 14 a0 e3                                      mov r1, #0x43000000
005d0bcc  70 70 ef e6                                      uxtb r7, r0
005d0bd0  7f 18 81 e2                                      add r1, r1, #0x7f0000
005d0bd4  08 00 98 e5                                      ldr r0, [r8, #8]
005d0bd8  63 f8 f4 eb                                      bl #0x30ed6c
005d0bdc  af b5 0b eb                                      bl #0x8be2a0
005d0be0  10 80 88 e2                                      add r8, r8, #0x10
005d0be4  08 00 59 e1                                      cmp sb, r8
005d0be8  03 a0 c4 e5                                      strb sl, [r4, #3]
005d0bec  02 00 c4 e5                                      strb r0, [r4, #2]
005d0bf0  01 70 c4 e5                                      strb r7, [r4, #1]
005d0bf4  00 60 c4 e5                                      strb r6, [r4]
005d0bf8  e0 ff ff 1a                                      bne #0x5d0b80
005d0bfc  a8 ff ff ea                                      b #0x5d0aa4
005d0c00  24 c0 90 e5                                      ldr ip, [r0, #0x24]
005d0c04  08 20 91 e5                                      ldr r2, [r1, #8]
005d0c08  0c 30 91 e5                                      ldr r3, [r1, #0xc]
005d0c0c  04 00 a0 e1                                      mov r0, r4
005d0c10  02 21 a0 e1                                      lsl r2, r2, #2
005d0c14  03 10 8c e0                                      add r1, ip, r3
005d0c18  12 f7 f4 eb                                      bl #0x30e868
005d0c1c  01 00 a0 e3                                      mov r0, #1
005d0c20  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005d0c24  08 a0 91 e5                                      ldr sl, [r1, #8]
005d0c28  00 00 5a e3                                      cmp sl, #0
005d0c2c  9c ff ff 0a                                      beq #0x5d0aa4
005d0c30  00 70 a0 e3                                      mov r7, #0
005d0c34  07 60 a0 e1                                      mov r6, r7
005d0c38  07 00 84 e0                                      add r0, r4, r7
005d0c3c  06 11 88 e0                                      add r1, r8, r6, lsl #2
005d0c40  04 20 a0 e3                                      mov r2, #4
005d0c44  01 60 86 e2                                      add r6, r6, #1
005d0c48  06 f7 f4 eb                                      bl #0x30e868
005d0c4c  06 00 5a e1                                      cmp sl, r6
005d0c50  05 70 87 e0                                      add r7, r7, r5
005d0c54  f7 ff ff 1a                                      bne #0x5d0c38
005d0c58  91 ff ff ea                                      b #0x5d0aa4
; mapping-symbol data/literal pool
005d0c5c  40 40 3c 00 a4 2c 00 00                          .byte 0x40, 0x40, 0x3c, 0x00, 0xa4, 0x2c, 0x00, 0x00

; FUNCTION 0x005d15b4, declared_size=180, range_size=180, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::video::SColor>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE12getParameterINS0_6SColorEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPSC_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::video::SColor>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::getParameter<glitch::video::SColor>(unsigned short, glitch::video::SColor*, int) const
; decoder-mode: arm
005d15b4  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005d15b8  be c0 d0 e1                                      ldrh ip, [r0, #0xe]
005d15bc  02 40 a0 e1                                      mov r4, r2
005d15c0  03 70 a0 e1                                      mov r7, r3
005d15c4  01 00 5c e1                                      cmp ip, r1
005d15c8  05 00 00 9a                                      bls #0x5d15e4
005d15cc  20 30 90 e5                                      ldr r3, [r0, #0x20]
005d15d0  01 12 93 e0                                      adds r1, r3, r1, lsl #4
005d15d4  02 00 00 0a                                      beq #0x5d15e4
005d15d8  06 30 d1 e5                                      ldrb r3, [r1, #6]
005d15dc  10 00 53 e3                                      cmp r3, #0x10
005d15e0  01 00 00 0a                                      beq #0x5d15ec
005d15e4  00 00 a0 e3                                      mov r0, #0
005d15e8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005d15ec  00 00 57 e3                                      cmp r7, #0
005d15f0  04 00 57 13                                      cmpne r7, #4
005d15f4  00 60 a0 13                                      movne r6, #0
005d15f8  01 60 a0 03                                      moveq r6, #1
005d15fc  10 00 00 0a                                      beq #0x5d1644
005d1600  08 80 91 e5                                      ldr r8, [r1, #8]
005d1604  24 a0 90 e5                                      ldr sl, [r0, #0x24]
005d1608  0c 30 91 e5                                      ldr r3, [r1, #0xc]
005d160c  00 00 58 e3                                      cmp r8, #0
005d1610  09 00 00 0a                                      beq #0x5d163c
005d1614  03 a0 8a e0                                      add sl, sl, r3
005d1618  06 50 a0 e1                                      mov r5, r6
005d161c  06 00 84 e0                                      add r0, r4, r6
005d1620  05 11 8a e0                                      add r1, sl, r5, lsl #2
005d1624  04 20 a0 e3                                      mov r2, #4
005d1628  01 50 85 e2                                      add r5, r5, #1
005d162c  8d f4 f4 eb                                      bl #0x30e868
005d1630  05 00 58 e1                                      cmp r8, r5
005d1634  07 60 86 e0                                      add r6, r6, r7
005d1638  f7 ff ff 1a                                      bne #0x5d161c
005d163c  01 00 a0 e3                                      mov r0, #1
005d1640  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005d1644  24 c0 90 e5                                      ldr ip, [r0, #0x24]
005d1648  08 20 91 e5                                      ldr r2, [r1, #8]
005d164c  0c 30 91 e5                                      ldr r3, [r1, #0xc]
005d1650  04 00 a0 e1                                      mov r0, r4
005d1654  02 21 a0 e1                                      lsl r2, r2, #2
005d1658  03 10 8c e0                                      add r1, ip, r3
005d165c  81 f4 f4 eb                                      bl #0x30e868
005d1660  01 00 a0 e3                                      mov r0, #1
005d1664  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x005d1d9c, declared_size=544, range_size=544, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::video::SColor>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS0_6SColorEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPKSC_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::video::SColor>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::setParameterCvt<glitch::video::SColor>(unsigned short, glitch::video::SColor const*, int)
; decoder-mode: arm
005d1d9c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005d1da0  be 40 d0 e1                                      ldrh r4, [r0, #0xe]
005d1da4  08 c2 9f e5                                      ldr ip, [pc, #0x208]
005d1da8  03 50 a0 e1                                      mov r5, r3
005d1dac  01 00 54 e1                                      cmp r4, r1
005d1db0  0c c0 8f e0                                      add ip, pc, ip
005d1db4  02 40 a0 e1                                      mov r4, r2
005d1db8  13 00 00 9a                                      bls #0x5d1e0c
005d1dbc  20 30 90 e5                                      ldr r3, [r0, #0x20]
005d1dc0  01 12 93 e0                                      adds r1, r3, r1, lsl #4
005d1dc4  10 00 00 0a                                      beq #0x5d1e0c
005d1dc8  e8 21 9f e5                                      ldr r2, [pc, #0x1e8]
005d1dcc  06 30 d1 e5                                      ldrb r3, [r1, #6]
005d1dd0  02 20 9c e7                                      ldr r2, [ip, r2]
005d1dd4  03 21 92 e7                                      ldr r2, [r2, r3, lsl #2]
005d1dd8  01 08 12 e3                                      tst r2, #0x10000
005d1ddc  0a 00 00 0a                                      beq #0x5d1e0c
005d1de0  01 20 75 e2                                      rsbs r2, r5, #1
005d1de4  00 20 a0 33                                      movlo r2, #0
005d1de8  00 00 55 e3                                      cmp r5, #0
005d1dec  04 00 55 13                                      cmpne r5, #4
005d1df0  07 00 00 1a                                      bne #0x5d1e14
005d1df4  10 00 53 e3                                      cmp r3, #0x10
005d1df8  56 00 00 0a                                      beq #0x5d1f58
005d1dfc  00 00 52 e3                                      cmp r2, #0
005d1e00  03 00 00 0a                                      beq #0x5d1e14
005d1e04  01 00 a0 e3                                      mov r0, #1
005d1e08  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005d1e0c  00 00 a0 e3                                      mov r0, #0
005d1e10  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005d1e14  24 80 90 e5                                      ldr r8, [r0, #0x24]
005d1e18  0c 20 91 e5                                      ldr r2, [r1, #0xc]
005d1e1c  10 00 53 e3                                      cmp r3, #0x10
005d1e20  02 80 88 e0                                      add r8, r8, r2
005d1e24  54 00 00 0a                                      beq #0x5d1f7c
005d1e28  11 00 53 e3                                      cmp r3, #0x11
005d1e2c  25 00 00 0a                                      beq #0x5d1ec8
005d1e30  08 00 53 e3                                      cmp r3, #8
005d1e34  f2 ff ff 1a                                      bne #0x5d1e04
005d1e38  08 90 91 e5                                      ldr sb, [r1, #8]
005d1e3c  09 92 88 e0                                      add sb, r8, sb, lsl #4
005d1e40  09 00 58 e1                                      cmp r8, sb
005d1e44  01 00 00 1a                                      bne #0x5d1e50
005d1e48  ed ff ff ea                                      b #0x5d1e04
005d1e4c  05 40 84 e0                                      add r4, r4, r5
005d1e50  00 00 d4 e5                                      ldrb r0, [r4]
005d1e54  c2 f2 f4 eb                                      bl #0x30e964
005d1e58  81 10 08 e3                                      movw r1, #0x8081
005d1e5c  80 1b 43 e3                                      movt r1, #0x3b80
005d1e60  c1 f3 f4 eb                                      bl #0x30ed6c
005d1e64  00 60 a0 e1                                      mov r6, r0
005d1e68  01 00 d4 e5                                      ldrb r0, [r4, #1]
005d1e6c  bc f2 f4 eb                                      bl #0x30e964
005d1e70  81 10 08 e3                                      movw r1, #0x8081
005d1e74  80 1b 43 e3                                      movt r1, #0x3b80
005d1e78  bb f3 f4 eb                                      bl #0x30ed6c
005d1e7c  00 70 a0 e1                                      mov r7, r0
005d1e80  02 00 d4 e5                                      ldrb r0, [r4, #2]
005d1e84  b6 f2 f4 eb                                      bl #0x30e964
005d1e88  81 10 08 e3                                      movw r1, #0x8081
005d1e8c  80 1b 43 e3                                      movt r1, #0x3b80
005d1e90  b5 f3 f4 eb                                      bl #0x30ed6c
005d1e94  00 a0 a0 e1                                      mov sl, r0
005d1e98  03 00 d4 e5                                      ldrb r0, [r4, #3]
005d1e9c  b0 f2 f4 eb                                      bl #0x30e964
005d1ea0  81 10 08 e3                                      movw r1, #0x8081
005d1ea4  80 1b 43 e3                                      movt r1, #0x3b80
005d1ea8  af f3 f4 eb                                      bl #0x30ed6c
005d1eac  08 a0 88 e5                                      str sl, [r8, #8]
005d1eb0  0c 00 88 e5                                      str r0, [r8, #0xc]
005d1eb4  04 70 88 e5                                      str r7, [r8, #4]
005d1eb8  10 60 88 e4                                      str r6, [r8], #0x10
005d1ebc  08 00 59 e1                                      cmp sb, r8
005d1ec0  e1 ff ff 1a                                      bne #0x5d1e4c
005d1ec4  ce ff ff ea                                      b #0x5d1e04
005d1ec8  08 90 91 e5                                      ldr sb, [r1, #8]
005d1ecc  09 92 88 e0                                      add sb, r8, sb, lsl #4
005d1ed0  09 00 58 e1                                      cmp r8, sb
005d1ed4  01 00 00 1a                                      bne #0x5d1ee0
005d1ed8  c9 ff ff ea                                      b #0x5d1e04
005d1edc  05 40 84 e0                                      add r4, r4, r5
005d1ee0  00 00 d4 e5                                      ldrb r0, [r4]
005d1ee4  9e f2 f4 eb                                      bl #0x30e964
005d1ee8  81 10 08 e3                                      movw r1, #0x8081
005d1eec  80 1b 43 e3                                      movt r1, #0x3b80
005d1ef0  9d f3 f4 eb                                      bl #0x30ed6c
005d1ef4  00 60 a0 e1                                      mov r6, r0
005d1ef8  01 00 d4 e5                                      ldrb r0, [r4, #1]
005d1efc  98 f2 f4 eb                                      bl #0x30e964
005d1f00  81 10 08 e3                                      movw r1, #0x8081
005d1f04  80 1b 43 e3                                      movt r1, #0x3b80
005d1f08  97 f3 f4 eb                                      bl #0x30ed6c
005d1f0c  00 70 a0 e1                                      mov r7, r0
005d1f10  02 00 d4 e5                                      ldrb r0, [r4, #2]
005d1f14  92 f2 f4 eb                                      bl #0x30e964
005d1f18  81 10 08 e3                                      movw r1, #0x8081
005d1f1c  80 1b 43 e3                                      movt r1, #0x3b80
005d1f20  91 f3 f4 eb                                      bl #0x30ed6c
005d1f24  00 a0 a0 e1                                      mov sl, r0
005d1f28  03 00 d4 e5                                      ldrb r0, [r4, #3]
005d1f2c  8c f2 f4 eb                                      bl #0x30e964
005d1f30  81 10 08 e3                                      movw r1, #0x8081
005d1f34  80 1b 43 e3                                      movt r1, #0x3b80
005d1f38  8b f3 f4 eb                                      bl #0x30ed6c
005d1f3c  08 a0 88 e5                                      str sl, [r8, #8]
005d1f40  0c 00 88 e5                                      str r0, [r8, #0xc]
005d1f44  04 70 88 e5                                      str r7, [r8, #4]
005d1f48  10 60 88 e4                                      str r6, [r8], #0x10
005d1f4c  08 00 59 e1                                      cmp sb, r8
005d1f50  e1 ff ff 1a                                      bne #0x5d1edc
005d1f54  aa ff ff ea                                      b #0x5d1e04
005d1f58  08 20 91 e5                                      ldr r2, [r1, #8]
005d1f5c  0c 30 91 e5                                      ldr r3, [r1, #0xc]
005d1f60  24 00 90 e5                                      ldr r0, [r0, #0x24]
005d1f64  04 10 a0 e1                                      mov r1, r4
005d1f68  02 21 a0 e1                                      lsl r2, r2, #2
005d1f6c  03 00 80 e0                                      add r0, r0, r3
005d1f70  3c f2 f4 eb                                      bl #0x30e868
005d1f74  01 00 a0 e3                                      mov r0, #1
005d1f78  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005d1f7c  08 a0 91 e5                                      ldr sl, [r1, #8]
005d1f80  00 00 5a e3                                      cmp sl, #0
005d1f84  9e ff ff 0a                                      beq #0x5d1e04
005d1f88  00 70 a0 e3                                      mov r7, #0
005d1f8c  07 60 a0 e1                                      mov r6, r7
005d1f90  06 01 88 e0                                      add r0, r8, r6, lsl #2
005d1f94  07 10 84 e0                                      add r1, r4, r7
005d1f98  01 60 86 e2                                      add r6, r6, #1
005d1f9c  04 20 a0 e3                                      mov r2, #4
005d1fa0  30 f2 f4 eb                                      bl #0x30e868
005d1fa4  06 00 5a e1                                      cmp sl, r6
005d1fa8  05 70 87 e0                                      add r7, r7, r5
005d1fac  f7 ff ff 1a                                      bne #0x5d1f90
005d1fb0  93 ff ff ea                                      b #0x5d1e04
; mapping-symbol data/literal pool
005d1fb4  e0 2c 3c 00 a4 2c 00 00                          .byte 0xe0, 0x2c, 0x3c, 0x00, 0xa4, 0x2c, 0x00, 0x00

; FUNCTION 0x005d290c, declared_size=180, range_size=180, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::video::SColor>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE12setParameterINS0_6SColorEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPKSC_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::video::SColor>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::setParameter<glitch::video::SColor>(unsigned short, glitch::video::SColor const*, int)
; decoder-mode: arm
005d290c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005d2910  be c0 d0 e1                                      ldrh ip, [r0, #0xe]
005d2914  02 40 a0 e1                                      mov r4, r2
005d2918  03 70 a0 e1                                      mov r7, r3
005d291c  01 00 5c e1                                      cmp ip, r1
005d2920  05 00 00 9a                                      bls #0x5d293c
005d2924  20 30 90 e5                                      ldr r3, [r0, #0x20]
005d2928  01 12 93 e0                                      adds r1, r3, r1, lsl #4
005d292c  02 00 00 0a                                      beq #0x5d293c
005d2930  06 30 d1 e5                                      ldrb r3, [r1, #6]
005d2934  10 00 53 e3                                      cmp r3, #0x10
005d2938  01 00 00 0a                                      beq #0x5d2944
005d293c  00 00 a0 e3                                      mov r0, #0
005d2940  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005d2944  00 00 57 e3                                      cmp r7, #0
005d2948  04 00 57 13                                      cmpne r7, #4
005d294c  00 60 a0 13                                      movne r6, #0
005d2950  01 60 a0 03                                      moveq r6, #1
005d2954  10 00 00 0a                                      beq #0x5d299c
005d2958  08 80 91 e5                                      ldr r8, [r1, #8]
005d295c  24 a0 90 e5                                      ldr sl, [r0, #0x24]
005d2960  0c 30 91 e5                                      ldr r3, [r1, #0xc]
005d2964  00 00 58 e3                                      cmp r8, #0
005d2968  09 00 00 0a                                      beq #0x5d2994
005d296c  03 a0 8a e0                                      add sl, sl, r3
005d2970  06 50 a0 e1                                      mov r5, r6
005d2974  05 01 8a e0                                      add r0, sl, r5, lsl #2
005d2978  06 10 84 e0                                      add r1, r4, r6
005d297c  01 50 85 e2                                      add r5, r5, #1
005d2980  04 20 a0 e3                                      mov r2, #4
005d2984  b7 ef f4 eb                                      bl #0x30e868
005d2988  08 00 55 e1                                      cmp r5, r8
005d298c  07 60 86 e0                                      add r6, r6, r7
005d2990  f7 ff ff 1a                                      bne #0x5d2974
005d2994  01 00 a0 e3                                      mov r0, #1
005d2998  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005d299c  08 20 91 e5                                      ldr r2, [r1, #8]
005d29a0  0c 30 91 e5                                      ldr r3, [r1, #0xc]
005d29a4  24 00 90 e5                                      ldr r0, [r0, #0x24]
005d29a8  04 10 a0 e1                                      mov r1, r4
005d29ac  02 21 a0 e1                                      lsl r2, r2, #2
005d29b0  03 00 80 e0                                      add r0, r0, r3
005d29b4  ab ef f4 eb                                      bl #0x30e868
005d29b8  01 00 a0 e3                                      mov r0, #1
005d29bc  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

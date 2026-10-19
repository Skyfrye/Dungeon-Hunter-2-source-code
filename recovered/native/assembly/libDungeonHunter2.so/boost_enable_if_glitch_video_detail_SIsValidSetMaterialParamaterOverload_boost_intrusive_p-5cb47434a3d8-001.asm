; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005cc43c, declared_size=208, range_size=208, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<boost::intrusive_ptr<glitch::video::ITexture> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE12getParameterIN5boost13intrusive_ptrINS0_8ITextureEEEEENS8_9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPSE_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<boost::intrusive_ptr<glitch::video::ITexture> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::getParameter<boost::intrusive_ptr<glitch::video::ITexture> >(unsigned short, boost::intrusive_ptr<glitch::video::ITexture>*, int) const
; decoder-mode: arm
005cc43c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005cc440  04 c0 90 e5                                      ldr ip, [r0, #4]
005cc444  02 40 a0 e1                                      mov r4, r2
005cc448  03 70 a0 e1                                      mov r7, r3
005cc44c  be 20 dc e1                                      ldrh r2, [ip, #0xe]
005cc450  01 00 52 e1                                      cmp r2, r1
005cc454  21 00 00 9a                                      bls #0x5cc4e0
005cc458  20 30 9c e5                                      ldr r3, [ip, #0x20]
005cc45c  01 12 93 e0                                      adds r1, r3, r1, lsl #4
005cc460  1e 00 00 0a                                      beq #0x5cc4e0
005cc464  06 30 d1 e5                                      ldrb r3, [r1, #6]
005cc468  0c 30 43 e2                                      sub r3, r3, #0xc
005cc46c  03 00 53 e3                                      cmp r3, #3
005cc470  1a 00 00 8a                                      bhi #0x5cc4e0
005cc474  00 00 57 e3                                      cmp r7, #0
005cc478  04 00 57 13                                      cmpne r7, #4
005cc47c  00 60 a0 13                                      movne r6, #0
005cc480  01 60 a0 03                                      moveq r6, #1
005cc484  17 00 00 0a                                      beq #0x5cc4e8
005cc488  08 50 91 e5                                      ldr r5, [r1, #8]
005cc48c  0c 30 91 e5                                      ldr r3, [r1, #0xc]
005cc490  00 00 55 e3                                      cmp r5, #0
005cc494  0f 00 00 0a                                      beq #0x5cc4d8
005cc498  20 00 80 e2                                      add r0, r0, #0x20
005cc49c  03 80 80 e0                                      add r8, r0, r3
005cc4a0  06 30 98 e7                                      ldr r3, [r8, r6]
005cc4a4  04 60 86 e2                                      add r6, r6, #4
005cc4a8  00 00 53 e3                                      cmp r3, #0
005cc4ac  04 20 93 15                                      ldrne r2, [r3, #4]
005cc4b0  01 20 82 12                                      addne r2, r2, #1
005cc4b4  04 20 83 15                                      strne r2, [r3, #4]
005cc4b8  00 00 94 e5                                      ldr r0, [r4]
005cc4bc  00 30 84 e5                                      str r3, [r4]
005cc4c0  07 40 84 e0                                      add r4, r4, r7
005cc4c4  00 00 50 e3                                      cmp r0, #0
005cc4c8  00 00 00 0a                                      beq #0x5cc4d0
005cc4cc  2c 44 f5 eb                                      bl #0x31d584
005cc4d0  01 50 55 e2                                      subs r5, r5, #1
005cc4d4  f1 ff ff 1a                                      bne #0x5cc4a0
005cc4d8  01 00 a0 e3                                      mov r0, #1
005cc4dc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005cc4e0  00 00 a0 e3                                      mov r0, #0
005cc4e4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005cc4e8  0c 30 91 e5                                      ldr r3, [r1, #0xc]
005cc4ec  08 20 91 e5                                      ldr r2, [r1, #8]
005cc4f0  20 10 80 e2                                      add r1, r0, #0x20
005cc4f4  03 10 81 e0                                      add r1, r1, r3
005cc4f8  04 00 a0 e1                                      mov r0, r4
005cc4fc  02 21 a0 e1                                      lsl r2, r2, #2
005cc500  d8 08 f5 eb                                      bl #0x30e868
005cc504  01 00 a0 e3                                      mov r0, #1
005cc508  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x005cc820, declared_size=148, range_size=148, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<boost::intrusive_ptr<glitch::video::ITexture> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtIN5boost13intrusive_ptrINS0_8ITextureEEEEENS8_9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPKSE_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<boost::intrusive_ptr<glitch::video::ITexture> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::setParameterCvt<boost::intrusive_ptr<glitch::video::ITexture> >(unsigned short, boost::intrusive_ptr<glitch::video::ITexture> const*, int)
; decoder-mode: arm
005cc820  10 40 2d e9                                      push {r4, lr}
005cc824  04 c0 90 e5                                      ldr ip, [r0, #4]
005cc828  be 40 dc e1                                      ldrh r4, [ip, #0xe]
005cc82c  01 00 54 e1                                      cmp r4, r1
005cc830  17 00 00 9a                                      bls #0x5cc894
005cc834  20 c0 9c e5                                      ldr ip, [ip, #0x20]
005cc838  01 c2 9c e0                                      adds ip, ip, r1, lsl #4
005cc83c  14 00 00 0a                                      beq #0x5cc894
005cc840  06 10 dc e5                                      ldrb r1, [ip, #6]
005cc844  0c 10 41 e2                                      sub r1, r1, #0xc
005cc848  03 00 51 e3                                      cmp r1, #3
005cc84c  10 00 00 8a                                      bhi #0x5cc894
005cc850  00 10 e0 e3                                      mvn r1, #0
005cc854  00 00 53 e3                                      cmp r3, #0
005cc858  0c 10 80 e5                                      str r1, [r0, #0xc]
005cc85c  10 10 80 e5                                      str r1, [r0, #0x10]
005cc860  11 00 00 0a                                      beq #0x5cc8ac
005cc864  06 40 dc e5                                      ldrb r4, [ip, #6]
005cc868  0c 10 9c e5                                      ldr r1, [ip, #0xc]
005cc86c  20 00 80 e2                                      add r0, r0, #0x20
005cc870  0c 40 44 e2                                      sub r4, r4, #0xc
005cc874  01 10 80 e0                                      add r1, r0, r1
005cc878  03 00 54 e3                                      cmp r4, #3
005cc87c  04 f1 8f 90                                      addls pc, pc, r4, lsl #2
005cc880  09 00 00 ea                                      b #0x5cc8ac
005cc884  04 00 00 ea                                      b #0x5cc89c
005cc888  03 00 00 ea                                      b #0x5cc89c
005cc88c  02 00 00 ea                                      b #0x5cc89c
005cc890  01 00 00 ea                                      b #0x5cc89c
005cc894  00 00 a0 e3                                      mov r0, #0
005cc898  10 80 bd e8                                      pop {r4, pc}
005cc89c  0c 00 a0 e1                                      mov r0, ip
005cc8a0  d1 bb ff eb                                      bl #0x5bb7ec
005cc8a4  01 00 a0 e3                                      mov r0, #1
005cc8a8  10 80 bd e8                                      pop {r4, pc}
005cc8ac  01 00 a0 e3                                      mov r0, #1
005cc8b0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005cc8b4, declared_size=104, range_size=104, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<boost::intrusive_ptr<glitch::video::ITexture> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE12setParameterIN5boost13intrusive_ptrINS0_8ITextureEEEEENS8_9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPKSE_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<boost::intrusive_ptr<glitch::video::ITexture> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::setParameter<boost::intrusive_ptr<glitch::video::ITexture> >(unsigned short, boost::intrusive_ptr<glitch::video::ITexture> const*, int)
; decoder-mode: arm
005cc8b4  10 40 2d e9                                      push {r4, lr}
005cc8b8  04 c0 90 e5                                      ldr ip, [r0, #4]
005cc8bc  be 40 dc e1                                      ldrh r4, [ip, #0xe]
005cc8c0  01 00 54 e1                                      cmp r4, r1
005cc8c4  01 00 00 8a                                      bhi #0x5cc8d0
005cc8c8  00 00 a0 e3                                      mov r0, #0
005cc8cc  10 80 bd e8                                      pop {r4, pc}
005cc8d0  20 c0 9c e5                                      ldr ip, [ip, #0x20]
005cc8d4  01 c2 9c e0                                      adds ip, ip, r1, lsl #4
005cc8d8  fa ff ff 0a                                      beq #0x5cc8c8
005cc8dc  06 10 dc e5                                      ldrb r1, [ip, #6]
005cc8e0  0c 10 41 e2                                      sub r1, r1, #0xc
005cc8e4  03 00 51 e3                                      cmp r1, #3
005cc8e8  f6 ff ff 8a                                      bhi #0x5cc8c8
005cc8ec  00 10 e0 e3                                      mvn r1, #0
005cc8f0  0c 10 80 e5                                      str r1, [r0, #0xc]
005cc8f4  10 10 80 e5                                      str r1, [r0, #0x10]
005cc8f8  0c 10 9c e5                                      ldr r1, [ip, #0xc]
005cc8fc  20 00 80 e2                                      add r0, r0, #0x20
005cc900  00 00 53 e3                                      cmp r3, #0
005cc904  01 10 80 e0                                      add r1, r0, r1
005cc908  04 30 a0 03                                      moveq r3, #4
005cc90c  0c 00 a0 e1                                      mov r0, ip
005cc910  b5 bb ff eb                                      bl #0x5bb7ec
005cc914  01 00 a0 e3                                      mov r0, #1
005cc918  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005ccc7c, declared_size=420, range_size=420, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<boost::intrusive_ptr<glitch::video::ITexture> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15getParameterCvtIN5boost13intrusive_ptrINS0_8ITextureEEEEENS8_9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPSE_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<boost::intrusive_ptr<glitch::video::ITexture> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::getParameterCvt<boost::intrusive_ptr<glitch::video::ITexture> >(unsigned short, boost::intrusive_ptr<glitch::video::ITexture>*, int) const
; decoder-mode: arm
005ccc7c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005ccc80  04 c0 90 e5                                      ldr ip, [r0, #4]
005ccc84  02 40 a0 e1                                      mov r4, r2
005ccc88  03 50 a0 e1                                      mov r5, r3
005ccc8c  be 20 dc e1                                      ldrh r2, [ip, #0xe]
005ccc90  01 00 52 e1                                      cmp r2, r1
005ccc94  12 00 00 9a                                      bls #0x5ccce4
005ccc98  20 30 9c e5                                      ldr r3, [ip, #0x20]
005ccc9c  01 12 93 e0                                      adds r1, r3, r1, lsl #4
005ccca0  0f 00 00 0a                                      beq #0x5ccce4
005ccca4  06 30 d1 e5                                      ldrb r3, [r1, #6]
005ccca8  0c 30 43 e2                                      sub r3, r3, #0xc
005cccac  03 00 53 e3                                      cmp r3, #3
005cccb0  0b 00 00 8a                                      bhi #0x5ccce4
005cccb4  00 00 55 e3                                      cmp r5, #0
005cccb8  1d 00 00 0a                                      beq #0x5ccd34
005cccbc  0c 20 91 e5                                      ldr r2, [r1, #0xc]
005cccc0  20 00 80 e2                                      add r0, r0, #0x20
005cccc4  02 60 80 e0                                      add r6, r0, r2
005cccc8  03 00 53 e3                                      cmp r3, #3
005ccccc  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
005cccd0  17 00 00 ea                                      b #0x5ccd34
005cccd4  2b 00 00 ea                                      b #0x5ccd88
005cccd8  3d 00 00 ea                                      b #0x5ccdd4
005cccdc  02 00 00 ea                                      b #0x5cccec
005ccce0  15 00 00 ea                                      b #0x5ccd3c
005ccce4  00 00 a0 e3                                      mov r0, #0
005ccce8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005cccec  08 70 91 e5                                      ldr r7, [r1, #8]
005cccf0  00 00 57 e3                                      cmp r7, #0
005cccf4  0e 00 00 0a                                      beq #0x5ccd34
005cccf8  00 80 a0 e3                                      mov r8, #0
005cccfc  08 30 96 e7                                      ldr r3, [r6, r8]
005ccd00  04 80 88 e2                                      add r8, r8, #4
005ccd04  00 00 53 e3                                      cmp r3, #0
005ccd08  04 20 93 15                                      ldrne r2, [r3, #4]
005ccd0c  01 20 82 12                                      addne r2, r2, #1
005ccd10  04 20 83 15                                      strne r2, [r3, #4]
005ccd14  00 00 94 e5                                      ldr r0, [r4]
005ccd18  00 30 84 e5                                      str r3, [r4]
005ccd1c  05 40 84 e0                                      add r4, r4, r5
005ccd20  00 00 50 e3                                      cmp r0, #0
005ccd24  00 00 00 0a                                      beq #0x5ccd2c
005ccd28  15 42 f5 eb                                      bl #0x31d584
005ccd2c  01 70 57 e2                                      subs r7, r7, #1
005ccd30  f1 ff ff 1a                                      bne #0x5cccfc
005ccd34  01 00 a0 e3                                      mov r0, #1
005ccd38  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005ccd3c  08 70 91 e5                                      ldr r7, [r1, #8]
005ccd40  00 00 57 e3                                      cmp r7, #0
005ccd44  fa ff ff 0a                                      beq #0x5ccd34
005ccd48  00 80 a0 e3                                      mov r8, #0
005ccd4c  08 30 96 e7                                      ldr r3, [r6, r8]
005ccd50  04 80 88 e2                                      add r8, r8, #4
005ccd54  00 00 53 e3                                      cmp r3, #0
005ccd58  04 20 93 15                                      ldrne r2, [r3, #4]
005ccd5c  01 20 82 12                                      addne r2, r2, #1
005ccd60  04 20 83 15                                      strne r2, [r3, #4]
005ccd64  00 00 94 e5                                      ldr r0, [r4]
005ccd68  00 30 84 e5                                      str r3, [r4]
005ccd6c  05 40 84 e0                                      add r4, r4, r5
005ccd70  00 00 50 e3                                      cmp r0, #0
005ccd74  00 00 00 0a                                      beq #0x5ccd7c
005ccd78  01 42 f5 eb                                      bl #0x31d584
005ccd7c  01 70 57 e2                                      subs r7, r7, #1
005ccd80  f1 ff ff 1a                                      bne #0x5ccd4c
005ccd84  ea ff ff ea                                      b #0x5ccd34
005ccd88  08 70 91 e5                                      ldr r7, [r1, #8]
005ccd8c  00 00 57 e3                                      cmp r7, #0
005ccd90  e7 ff ff 0a                                      beq #0x5ccd34
005ccd94  00 80 a0 e3                                      mov r8, #0
005ccd98  08 30 96 e7                                      ldr r3, [r6, r8]
005ccd9c  04 80 88 e2                                      add r8, r8, #4
005ccda0  00 00 53 e3                                      cmp r3, #0
005ccda4  04 20 93 15                                      ldrne r2, [r3, #4]
005ccda8  01 20 82 12                                      addne r2, r2, #1
005ccdac  04 20 83 15                                      strne r2, [r3, #4]
005ccdb0  00 00 94 e5                                      ldr r0, [r4]
005ccdb4  00 30 84 e5                                      str r3, [r4]
005ccdb8  05 40 84 e0                                      add r4, r4, r5
005ccdbc  00 00 50 e3                                      cmp r0, #0
005ccdc0  00 00 00 0a                                      beq #0x5ccdc8
005ccdc4  ee 41 f5 eb                                      bl #0x31d584
005ccdc8  01 70 57 e2                                      subs r7, r7, #1
005ccdcc  f1 ff ff 1a                                      bne #0x5ccd98
005ccdd0  d7 ff ff ea                                      b #0x5ccd34
005ccdd4  08 70 91 e5                                      ldr r7, [r1, #8]
005ccdd8  00 00 57 e3                                      cmp r7, #0
005ccddc  d4 ff ff 0a                                      beq #0x5ccd34
005ccde0  00 80 a0 e3                                      mov r8, #0
005ccde4  08 30 96 e7                                      ldr r3, [r6, r8]
005ccde8  04 80 88 e2                                      add r8, r8, #4
005ccdec  00 00 53 e3                                      cmp r3, #0
005ccdf0  04 20 93 15                                      ldrne r2, [r3, #4]
005ccdf4  01 20 82 12                                      addne r2, r2, #1
005ccdf8  04 20 83 15                                      strne r2, [r3, #4]
005ccdfc  00 00 94 e5                                      ldr r0, [r4]
005cce00  00 30 84 e5                                      str r3, [r4]
005cce04  05 40 84 e0                                      add r4, r4, r5
005cce08  00 00 50 e3                                      cmp r0, #0
005cce0c  00 00 00 0a                                      beq #0x5cce14
005cce10  db 41 f5 eb                                      bl #0x31d584
005cce14  01 70 57 e2                                      subs r7, r7, #1
005cce18  f1 ff ff 1a                                      bne #0x5ccde4
005cce1c  c4 ff ff ea                                      b #0x5ccd34

; FUNCTION 0x005cd324, declared_size=200, range_size=200, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<boost::intrusive_ptr<glitch::video::ITexture> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE12setParameterIN5boost13intrusive_ptrINS0_8ITextureEEEEENS8_9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<boost::intrusive_ptr<glitch::video::ITexture> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::setParameter<boost::intrusive_ptr<glitch::video::ITexture> >(unsigned short, unsigned int, boost::intrusive_ptr<glitch::video::ITexture> const&)
; decoder-mode: arm
005cd324  70 40 2d e9                                      push {r4, r5, r6, lr}
005cd328  04 c0 90 e5                                      ldr ip, [r0, #4]
005cd32c  be 40 dc e1                                      ldrh r4, [ip, #0xe]
005cd330  01 00 54 e1                                      cmp r4, r1
005cd334  01 00 00 8a                                      bhi #0x5cd340
005cd338  00 00 a0 e3                                      mov r0, #0
005cd33c  70 80 bd e8                                      pop {r4, r5, r6, pc}
005cd340  20 c0 9c e5                                      ldr ip, [ip, #0x20]
005cd344  01 12 9c e0                                      adds r1, ip, r1, lsl #4
005cd348  fa ff ff 0a                                      beq #0x5cd338
005cd34c  00 c0 93 e5                                      ldr ip, [r3]
005cd350  06 50 d1 e5                                      ldrb r5, [r1, #6]
005cd354  00 00 5c e3                                      cmp ip, #0
005cd358  1e 00 00 0a                                      beq #0x5cd3d8
005cd35c  38 40 9c e5                                      ldr r4, [ip, #0x38]
005cd360  03 40 04 e2                                      and r4, r4, #3
005cd364  0c 40 84 e2                                      add r4, r4, #0xc
005cd368  04 00 55 e1                                      cmp r5, r4
005cd36c  00 40 a0 13                                      movne r4, #0
005cd370  01 40 a0 03                                      moveq r4, #1
005cd374  00 00 54 e3                                      cmp r4, #0
005cd378  ee ff ff 0a                                      beq #0x5cd338
005cd37c  08 40 91 e5                                      ldr r4, [r1, #8]
005cd380  04 00 52 e1                                      cmp r2, r4
005cd384  eb ff ff 2a                                      bhs #0x5cd338
005cd388  0c 10 91 e5                                      ldr r1, [r1, #0xc]
005cd38c  20 40 80 e2                                      add r4, r0, #0x20
005cd390  02 21 81 e0                                      add r2, r1, r2, lsl #2
005cd394  02 10 94 e7                                      ldr r1, [r4, r2]
005cd398  01 00 5c e1                                      cmp ip, r1
005cd39c  00 10 e0 13                                      mvnne r1, #0
005cd3a0  0c 10 80 15                                      strne r1, [r0, #0xc]
005cd3a4  10 10 80 15                                      strne r1, [r0, #0x10]
005cd3a8  00 10 93 15                                      ldrne r1, [r3]
005cd3ac  00 00 51 e3                                      cmp r1, #0
005cd3b0  04 30 91 15                                      ldrne r3, [r1, #4]
005cd3b4  01 30 83 12                                      addne r3, r3, #1
005cd3b8  04 30 81 15                                      strne r3, [r1, #4]
005cd3bc  02 00 94 e7                                      ldr r0, [r4, r2]
005cd3c0  02 10 84 e7                                      str r1, [r4, r2]
005cd3c4  00 00 50 e3                                      cmp r0, #0
005cd3c8  00 00 00 0a                                      beq #0x5cd3d0
005cd3cc  6c 40 f5 eb                                      bl #0x31d584
005cd3d0  01 00 a0 e3                                      mov r0, #1
005cd3d4  70 80 bd e8                                      pop {r4, r5, r6, pc}
005cd3d8  0c 40 45 e2                                      sub r4, r5, #0xc
005cd3dc  03 00 54 e3                                      cmp r4, #3
005cd3e0  00 40 a0 83                                      movhi r4, #0
005cd3e4  01 40 a0 93                                      movls r4, #1
005cd3e8  e1 ff ff ea                                      b #0x5cd374

; FUNCTION 0x005cdabc, declared_size=128, range_size=128, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<boost::intrusive_ptr<glitch::video::ITexture> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE12getParameterIN5boost13intrusive_ptrINS0_8ITextureEEEEENS8_9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRSE_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<boost::intrusive_ptr<glitch::video::ITexture> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::getParameter<boost::intrusive_ptr<glitch::video::ITexture> >(unsigned short, unsigned int, boost::intrusive_ptr<glitch::video::ITexture>&) const
; decoder-mode: arm
005cdabc  10 40 2d e9                                      push {r4, lr}
005cdac0  04 c0 90 e5                                      ldr ip, [r0, #4]
005cdac4  be 40 dc e1                                      ldrh r4, [ip, #0xe]
005cdac8  01 00 54 e1                                      cmp r4, r1
005cdacc  18 00 00 9a                                      bls #0x5cdb34
005cdad0  20 c0 9c e5                                      ldr ip, [ip, #0x20]
005cdad4  01 12 9c e0                                      adds r1, ip, r1, lsl #4
005cdad8  15 00 00 0a                                      beq #0x5cdb34
005cdadc  06 c0 d1 e5                                      ldrb ip, [r1, #6]
005cdae0  0c c0 4c e2                                      sub ip, ip, #0xc
005cdae4  03 00 5c e3                                      cmp ip, #3
005cdae8  11 00 00 8a                                      bhi #0x5cdb34
005cdaec  08 c0 91 e5                                      ldr ip, [r1, #8]
005cdaf0  0c 00 52 e1                                      cmp r2, ip
005cdaf4  0e 00 00 2a                                      bhs #0x5cdb34
005cdaf8  0c 10 91 e5                                      ldr r1, [r1, #0xc]
005cdafc  02 21 80 e0                                      add r2, r0, r2, lsl #2
005cdb00  01 20 82 e0                                      add r2, r2, r1
005cdb04  20 20 92 e5                                      ldr r2, [r2, #0x20]
005cdb08  00 00 52 e3                                      cmp r2, #0
005cdb0c  04 10 92 15                                      ldrne r1, [r2, #4]
005cdb10  01 10 81 12                                      addne r1, r1, #1
005cdb14  04 10 82 15                                      strne r1, [r2, #4]
005cdb18  00 00 93 e5                                      ldr r0, [r3]
005cdb1c  00 20 83 e5                                      str r2, [r3]
005cdb20  00 00 50 e3                                      cmp r0, #0
005cdb24  00 00 00 0a                                      beq #0x5cdb2c
005cdb28  95 3e f5 eb                                      bl #0x31d584
005cdb2c  01 00 a0 e3                                      mov r0, #1
005cdb30  10 80 bd e8                                      pop {r4, pc}
005cdb34  00 00 a0 e3                                      mov r0, #0
005cdb38  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005cec4c, declared_size=236, range_size=236, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<boost::intrusive_ptr<glitch::video::ITexture> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtIN5boost13intrusive_ptrINS0_8ITextureEEEEENS8_9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<boost::intrusive_ptr<glitch::video::ITexture> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::setParameterCvt<boost::intrusive_ptr<glitch::video::ITexture> >(unsigned short, unsigned int, boost::intrusive_ptr<glitch::video::ITexture> const&)
; decoder-mode: arm
005cec4c  70 40 2d e9                                      push {r4, r5, r6, lr}
005cec50  04 c0 90 e5                                      ldr ip, [r0, #4]
005cec54  be 40 dc e1                                      ldrh r4, [ip, #0xe]
005cec58  01 00 54 e1                                      cmp r4, r1
005cec5c  1b 00 00 9a                                      bls #0x5cecd0
005cec60  20 c0 9c e5                                      ldr ip, [ip, #0x20]
005cec64  01 12 9c e0                                      adds r1, ip, r1, lsl #4
005cec68  18 00 00 0a                                      beq #0x5cecd0
005cec6c  00 c0 93 e5                                      ldr ip, [r3]
005cec70  06 40 d1 e5                                      ldrb r4, [r1, #6]
005cec74  00 00 5c e3                                      cmp ip, #0
005cec78  29 00 00 0a                                      beq #0x5ced24
005cec7c  38 50 9c e5                                      ldr r5, [ip, #0x38]
005cec80  03 50 05 e2                                      and r5, r5, #3
005cec84  0c 50 85 e2                                      add r5, r5, #0xc
005cec88  05 00 54 e1                                      cmp r4, r5
005cec8c  00 50 a0 13                                      movne r5, #0
005cec90  01 50 a0 03                                      moveq r5, #1
005cec94  00 00 55 e3                                      cmp r5, #0
005cec98  0c 00 00 0a                                      beq #0x5cecd0
005cec9c  08 50 91 e5                                      ldr r5, [r1, #8]
005ceca0  05 00 52 e1                                      cmp r2, r5
005ceca4  09 00 00 2a                                      bhs #0x5cecd0
005ceca8  0c 40 44 e2                                      sub r4, r4, #0xc
005cecac  0c 20 91 e5                                      ldr r2, [r1, #0xc]
005cecb0  20 10 80 e2                                      add r1, r0, #0x20
005cecb4  03 00 54 e3                                      cmp r4, #3
005cecb8  04 f1 8f 90                                      addls pc, pc, r4, lsl #2
005cecbc  16 00 00 ea                                      b #0x5ced1c
005cecc0  04 00 00 ea                                      b #0x5cecd8
005cecc4  03 00 00 ea                                      b #0x5cecd8
005cecc8  02 00 00 ea                                      b #0x5cecd8
005ceccc  01 00 00 ea                                      b #0x5cecd8
005cecd0  00 00 a0 e3                                      mov r0, #0
005cecd4  70 80 bd e8                                      pop {r4, r5, r6, pc}
005cecd8  02 40 91 e7                                      ldr r4, [r1, r2]
005cecdc  04 00 5c e1                                      cmp ip, r4
005cece0  00 c0 e0 13                                      mvnne ip, #0
005cece4  0c c0 80 15                                      strne ip, [r0, #0xc]
005cece8  10 c0 80 15                                      strne ip, [r0, #0x10]
005cecec  00 40 93 15                                      ldrne r4, [r3]
005cecf0  00 00 54 e3                                      cmp r4, #0
005cecf4  04 30 94 15                                      ldrne r3, [r4, #4]
005cecf8  01 30 83 12                                      addne r3, r3, #1
005cecfc  04 30 84 15                                      strne r3, [r4, #4]
005ced00  02 00 91 e7                                      ldr r0, [r1, r2]
005ced04  02 40 81 e7                                      str r4, [r1, r2]
005ced08  00 00 50 e3                                      cmp r0, #0
005ced0c  02 00 00 0a                                      beq #0x5ced1c
005ced10  1b 3a f5 eb                                      bl #0x31d584
005ced14  01 00 a0 e3                                      mov r0, #1
005ced18  70 80 bd e8                                      pop {r4, r5, r6, pc}
005ced1c  01 00 a0 e3                                      mov r0, #1
005ced20  70 80 bd e8                                      pop {r4, r5, r6, pc}
005ced24  0c 50 44 e2                                      sub r5, r4, #0xc
005ced28  03 00 55 e3                                      cmp r5, #3
005ced2c  00 50 a0 83                                      movhi r5, #0
005ced30  01 50 a0 93                                      movls r5, #1
005ced34  d6 ff ff ea                                      b #0x5cec94

; FUNCTION 0x005cedd0, declared_size=160, range_size=160, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<boost::intrusive_ptr<glitch::video::ITexture> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15getParameterCvtIN5boost13intrusive_ptrINS0_8ITextureEEEEENS8_9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRSE_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<boost::intrusive_ptr<glitch::video::ITexture> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::getParameterCvt<boost::intrusive_ptr<glitch::video::ITexture> >(unsigned short, unsigned int, boost::intrusive_ptr<glitch::video::ITexture>&) const
; decoder-mode: arm
005cedd0  10 40 2d e9                                      push {r4, lr}
005cedd4  04 c0 90 e5                                      ldr ip, [r0, #4]
005cedd8  be 40 dc e1                                      ldrh r4, [ip, #0xe]
005ceddc  01 00 54 e1                                      cmp r4, r1
005cede0  12 00 00 9a                                      bls #0x5cee30
005cede4  20 c0 9c e5                                      ldr ip, [ip, #0x20]
005cede8  01 12 9c e0                                      adds r1, ip, r1, lsl #4
005cedec  0f 00 00 0a                                      beq #0x5cee30
005cedf0  06 c0 d1 e5                                      ldrb ip, [r1, #6]
005cedf4  0c c0 4c e2                                      sub ip, ip, #0xc
005cedf8  03 00 5c e3                                      cmp ip, #3
005cedfc  0b 00 00 8a                                      bhi #0x5cee30
005cee00  08 40 91 e5                                      ldr r4, [r1, #8]
005cee04  04 00 52 e1                                      cmp r2, r4
005cee08  08 00 00 2a                                      bhs #0x5cee30
005cee0c  20 00 80 e2                                      add r0, r0, #0x20
005cee10  0c 20 91 e5                                      ldr r2, [r1, #0xc]
005cee14  03 00 5c e3                                      cmp ip, #3
005cee18  0c f1 8f 90                                      addls pc, pc, ip, lsl #2
005cee1c  11 00 00 ea                                      b #0x5cee68
005cee20  04 00 00 ea                                      b #0x5cee38
005cee24  03 00 00 ea                                      b #0x5cee38
005cee28  02 00 00 ea                                      b #0x5cee38
005cee2c  01 00 00 ea                                      b #0x5cee38
005cee30  00 00 a0 e3                                      mov r0, #0
005cee34  10 80 bd e8                                      pop {r4, pc}
005cee38  02 20 90 e7                                      ldr r2, [r0, r2]
005cee3c  00 00 52 e3                                      cmp r2, #0
005cee40  04 10 92 15                                      ldrne r1, [r2, #4]
005cee44  01 10 81 12                                      addne r1, r1, #1
005cee48  04 10 82 15                                      strne r1, [r2, #4]
005cee4c  00 00 93 e5                                      ldr r0, [r3]
005cee50  00 20 83 e5                                      str r2, [r3]
005cee54  00 00 50 e3                                      cmp r0, #0
005cee58  02 00 00 0a                                      beq #0x5cee68
005cee5c  c8 39 f5 eb                                      bl #0x31d584
005cee60  01 00 a0 e3                                      mov r0, #1
005cee64  10 80 bd e8                                      pop {r4, pc}
005cee68  01 00 a0 e3                                      mov r0, #1
005cee6c  10 80 bd e8                                      pop {r4, pc}

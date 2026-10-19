; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005c6094, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE7getThisEv
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::getThis()
; decoder-mode: arm
005c6094  1e ff 2f e1                                      bx lr

; FUNCTION 0x005c6098, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE7getThisEv
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::getThis() const
; decoder-mode: arm
005c6098  1e ff 2f e1                                      bx lr

; FUNCTION 0x005c609c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE17getParameterBlockEv
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::getParameterBlock()
; decoder-mode: arm
005c609c  20 00 80 e2                                      add r0, r0, #0x20
005c60a0  1e ff 2f e1                                      bx lr

; FUNCTION 0x005c60a4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE17getParameterBlockEv
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::getParameterBlock() const
; decoder-mode: arm
005c60a4  20 00 80 e2                                      add r0, r0, #0x20
005c60a8  1e ff 2f e1                                      bx lr

; FUNCTION 0x005c60ac, declared_size=28, range_size=28, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15getParameterDefEt
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::getParameterDef(unsigned short) const
; decoder-mode: arm
005c60ac  04 30 90 e5                                      ldr r3, [r0, #4]
005c60b0  be 20 d3 e1                                      ldrh r2, [r3, #0xe]
005c60b4  01 00 52 e1                                      cmp r2, r1
005c60b8  20 00 93 85                                      ldrhi r0, [r3, #0x20]
005c60bc  00 00 a0 93                                      movls r0, #0
005c60c0  01 02 80 80                                      addhi r0, r0, r1, lsl #4
005c60c4  1e ff 2f e1                                      bx lr

; FUNCTION 0x005c60c8, declared_size=16, range_size=16, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE8setDirtyEv
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::setDirty()
; decoder-mode: arm
005c60c8  00 30 e0 e3                                      mvn r3, #0
005c60cc  0c 30 80 e5                                      str r3, [r0, #0xc]
005c60d0  10 30 80 e5                                      str r3, [r0, #0x10]
005c60d4  1e ff 2f e1                                      bx lr

; FUNCTION 0x005c60d8, declared_size=48, range_size=48, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE14setParameterAtEPif
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::setParameterAt(int*, float)
; decoder-mode: arm
005c60d8  70 40 2d e9                                      push {r4, r5, r6, lr}
005c60dc  00 50 a0 e1                                      mov r5, r0
005c60e0  02 00 a0 e1                                      mov r0, r2
005c60e4  01 40 a0 e1                                      mov r4, r1
005c60e8  f7 20 f5 eb                                      bl #0x30e4cc
005c60ec  00 30 94 e5                                      ldr r3, [r4]
005c60f0  03 00 50 e1                                      cmp r0, r3
005c60f4  00 30 e0 13                                      mvnne r3, #0
005c60f8  0c 30 85 15                                      strne r3, [r5, #0xc]
005c60fc  10 30 85 15                                      strne r3, [r5, #0x10]
005c6100  00 00 84 e5                                      str r0, [r4]
005c6104  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x005c6108, declared_size=56, range_size=56, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE14setParameterAtEPfi
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::setParameterAt(float*, int)
; decoder-mode: arm
005c6108  70 40 2d e9                                      push {r4, r5, r6, lr}
005c610c  00 50 a0 e1                                      mov r5, r0
005c6110  02 00 a0 e1                                      mov r0, r2
005c6114  01 40 a0 e1                                      mov r4, r1
005c6118  11 22 f5 eb                                      bl #0x30e964
005c611c  00 10 94 e5                                      ldr r1, [r4]
005c6120  00 60 a0 e1                                      mov r6, r0
005c6124  98 1f f5 eb                                      bl #0x30df8c
005c6128  00 00 50 e3                                      cmp r0, #0
005c612c  00 30 e0 03                                      mvneq r3, #0
005c6130  0c 30 85 05                                      streq r3, [r5, #0xc]
005c6134  10 30 85 05                                      streq r3, [r5, #0x10]
005c6138  00 60 84 e5                                      str r6, [r4]
005c613c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x005c6140, declared_size=152, range_size=152, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE14setParameterAtEPNS_4core8vector4dIfEERKNS0_7SColorfE
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::setParameterAt(glitch::core::vector4d<float>*, glitch::video::SColorf const&)
; decoder-mode: arm
005c6140  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005c6144  00 60 92 e5                                      ldr r6, [r2]
005c6148  01 40 a0 e1                                      mov r4, r1
005c614c  00 70 a0 e1                                      mov r7, r0
005c6150  06 10 a0 e1                                      mov r1, r6
005c6154  00 00 94 e5                                      ldr r0, [r4]
005c6158  02 50 a0 e1                                      mov r5, r2
005c615c  8a 1f f5 eb                                      bl #0x30df8c
005c6160  00 00 50 e3                                      cmp r0, #0
005c6164  04 00 00 0a                                      beq #0x5c617c
005c6168  04 00 94 e5                                      ldr r0, [r4, #4]
005c616c  04 10 95 e5                                      ldr r1, [r5, #4]
005c6170  85 1f f5 eb                                      bl #0x30df8c
005c6174  00 00 50 e3                                      cmp r0, #0
005c6178  0b 00 00 1a                                      bne #0x5c61ac
005c617c  00 30 e0 e3                                      mvn r3, #0
005c6180  0c 30 87 e5                                      str r3, [r7, #0xc]
005c6184  10 30 87 e5                                      str r3, [r7, #0x10]
005c6188  00 60 95 e5                                      ldr r6, [r5]
005c618c  00 60 84 e5                                      str r6, [r4]
005c6190  04 30 95 e5                                      ldr r3, [r5, #4]
005c6194  04 30 84 e5                                      str r3, [r4, #4]
005c6198  08 30 95 e5                                      ldr r3, [r5, #8]
005c619c  08 30 84 e5                                      str r3, [r4, #8]
005c61a0  0c 30 95 e5                                      ldr r3, [r5, #0xc]
005c61a4  0c 30 84 e5                                      str r3, [r4, #0xc]
005c61a8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005c61ac  08 00 94 e5                                      ldr r0, [r4, #8]
005c61b0  08 10 95 e5                                      ldr r1, [r5, #8]
005c61b4  74 1f f5 eb                                      bl #0x30df8c
005c61b8  00 00 50 e3                                      cmp r0, #0
005c61bc  ee ff ff 0a                                      beq #0x5c617c
005c61c0  0c 00 94 e5                                      ldr r0, [r4, #0xc]
005c61c4  0c 10 95 e5                                      ldr r1, [r5, #0xc]
005c61c8  6f 1f f5 eb                                      bl #0x30df8c
005c61cc  00 00 50 e3                                      cmp r0, #0
005c61d0  ed ff ff 1a                                      bne #0x5c618c
005c61d4  e8 ff ff ea                                      b #0x5c617c

; FUNCTION 0x005c61d8, declared_size=24, range_size=24, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE14getParameterAtEPKiRf
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::getParameterAt(int const*, float&) const
; decoder-mode: arm
005c61d8  10 40 2d e9                                      push {r4, lr}
005c61dc  00 00 91 e5                                      ldr r0, [r1]
005c61e0  02 40 a0 e1                                      mov r4, r2
005c61e4  de 21 f5 eb                                      bl #0x30e964
005c61e8  00 00 84 e5                                      str r0, [r4]
005c61ec  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005c61f0, declared_size=24, range_size=24, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE14getParameterAtEPKfRi
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::getParameterAt(float const*, int&) const
; decoder-mode: arm
005c61f0  10 40 2d e9                                      push {r4, lr}
005c61f4  00 00 91 e5                                      ldr r0, [r1]
005c61f8  02 40 a0 e1                                      mov r4, r2
005c61fc  b2 20 f5 eb                                      bl #0x30e4cc
005c6200  00 00 84 e5                                      str r0, [r4]
005c6204  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005c6208, declared_size=36, range_size=36, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE14getParameterAtEPKNS0_7SColorfERNS_4core8vector4dIfEE
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::getParameterAt(glitch::video::SColorf const*, glitch::core::vector4d<float>&) const
; decoder-mode: arm
005c6208  00 30 91 e5                                      ldr r3, [r1]
005c620c  00 30 82 e5                                      str r3, [r2]
005c6210  04 30 91 e5                                      ldr r3, [r1, #4]
005c6214  04 30 82 e5                                      str r3, [r2, #4]
005c6218  08 30 91 e5                                      ldr r3, [r1, #8]
005c621c  08 30 82 e5                                      str r3, [r2, #8]
005c6220  0c 30 91 e5                                      ldr r3, [r1, #0xc]
005c6224  0c 30 82 e5                                      str r3, [r2, #0xc]
005c6228  1e ff 2f e1                                      bx lr

; FUNCTION 0x005c622c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE14getParameterAtEPKNS_4core8vector4dIfEERNS0_7SColorfE
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::getParameterAt(glitch::core::vector4d<float> const*, glitch::video::SColorf&) const
; decoder-mode: arm
005c622c  02 c0 a0 e1                                      mov ip, r2
005c6230  0f 00 91 e8                                      ldm r1, {r0, r1, r2, r3}
005c6234  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
005c6238  1e ff 2f e1                                      bx lr

; FUNCTION 0x005ca30c, declared_size=140, range_size=140, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE12getParameterEtPNS_4core8CMatrix4IfEEi
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::getParameter(unsigned short, glitch::core::CMatrix4<float>*, int) const
; decoder-mode: arm
005ca30c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005ca310  04 c0 90 e5                                      ldr ip, [r0, #4]
005ca314  02 40 a0 e1                                      mov r4, r2
005ca318  be 20 dc e1                                      ldrh r2, [ip, #0xe]
005ca31c  01 00 52 e1                                      cmp r2, r1
005ca320  05 00 00 9a                                      bls #0x5ca33c
005ca324  20 20 9c e5                                      ldr r2, [ip, #0x20]
005ca328  01 12 92 e0                                      adds r1, r2, r1, lsl #4
005ca32c  02 00 00 0a                                      beq #0x5ca33c
005ca330  06 20 d1 e5                                      ldrb r2, [r1, #6]
005ca334  0b 00 52 e3                                      cmp r2, #0xb
005ca338  01 00 00 0a                                      beq #0x5ca344
005ca33c  00 00 a0 e3                                      mov r0, #0
005ca340  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005ca344  08 80 91 e5                                      ldr r8, [r1, #8]
005ca348  00 00 53 e3                                      cmp r3, #0
005ca34c  03 70 a0 11                                      movne r7, r3
005ca350  44 70 a0 03                                      moveq r7, #0x44
005ca354  98 47 28 e0                                      mla r8, r8, r7, r4
005ca358  0c 30 91 e5                                      ldr r3, [r1, #0xc]
005ca35c  08 00 54 e1                                      cmp r4, r8
005ca360  0a 00 00 0a                                      beq #0x5ca390
005ca364  20 00 80 e2                                      add r0, r0, #0x20
005ca368  03 60 80 e0                                      add r6, r0, r3
005ca36c  00 50 a0 e3                                      mov r5, #0
005ca370  04 10 a0 e1                                      mov r1, r4
005ca374  06 00 a0 e1                                      mov r0, r6
005ca378  07 50 85 e0                                      add r5, r5, r7
005ca37c  aa c0 ff eb                                      bl #0x5ba62c
005ca380  05 10 84 e0                                      add r1, r4, r5
005ca384  01 00 58 e1                                      cmp r8, r1
005ca388  04 60 86 e2                                      add r6, r6, #4
005ca38c  f8 ff ff 1a                                      bne #0x5ca374
005ca390  01 00 a0 e3                                      mov r0, #1
005ca394  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x005ca398, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15getParameterCvtEtPNS_4core8CMatrix4IfEEi
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::getParameterCvt(unsigned short, glitch::core::CMatrix4<float>*, int) const
; decoder-mode: arm
005ca398  db ff ff ea                                      b #0x5ca30c

; FUNCTION 0x005ca39c, declared_size=96, range_size=96, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE12getParameterEtjRNS_4core8CMatrix4IfEE
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::getParameter(unsigned short, unsigned int, glitch::core::CMatrix4<float>&) const
; decoder-mode: arm
005ca39c  10 40 2d e9                                      push {r4, lr}
005ca3a0  04 c0 90 e5                                      ldr ip, [r0, #4]
005ca3a4  be 40 dc e1                                      ldrh r4, [ip, #0xe]
005ca3a8  01 00 54 e1                                      cmp r4, r1
005ca3ac  05 00 00 9a                                      bls #0x5ca3c8
005ca3b0  20 c0 9c e5                                      ldr ip, [ip, #0x20]
005ca3b4  01 c2 9c e0                                      adds ip, ip, r1, lsl #4
005ca3b8  02 00 00 0a                                      beq #0x5ca3c8
005ca3bc  06 40 dc e5                                      ldrb r4, [ip, #6]
005ca3c0  0b 00 54 e3                                      cmp r4, #0xb
005ca3c4  01 00 00 0a                                      beq #0x5ca3d0
005ca3c8  00 00 a0 e3                                      mov r0, #0
005ca3cc  10 80 bd e8                                      pop {r4, pc}
005ca3d0  08 10 9c e5                                      ldr r1, [ip, #8]
005ca3d4  01 00 52 e1                                      cmp r2, r1
005ca3d8  fa ff ff 2a                                      bhs #0x5ca3c8
005ca3dc  0c c0 9c e5                                      ldr ip, [ip, #0xc]
005ca3e0  20 00 80 e2                                      add r0, r0, #0x20
005ca3e4  03 10 a0 e1                                      mov r1, r3
005ca3e8  02 21 8c e0                                      add r2, ip, r2, lsl #2
005ca3ec  02 00 80 e0                                      add r0, r0, r2
005ca3f0  8d c0 ff eb                                      bl #0x5ba62c
005ca3f4  01 00 a0 e3                                      mov r0, #1
005ca3f8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005caf10, declared_size=56, range_size=56, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE14setParameterAtEPNS0_7SColorfERKNS_4core8vector4dIfEE
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::setParameterAt(glitch::video::SColorf*, glitch::core::vector4d<float> const&)
; decoder-mode: arm
005caf10  70 40 2d e9                                      push {r4, r5, r6, lr}
005caf14  01 40 a0 e1                                      mov r4, r1
005caf18  00 60 a0 e1                                      mov r6, r0
005caf1c  02 10 a0 e1                                      mov r1, r2
005caf20  04 00 a0 e1                                      mov r0, r4
005caf24  02 50 a0 e1                                      mov r5, r2
005caf28  da fe ff eb                                      bl #0x5caa98
005caf2c  00 00 50 e3                                      cmp r0, #0
005caf30  00 30 e0 03                                      mvneq r3, #0
005caf34  0c 30 86 05                                      streq r3, [r6, #0xc]
005caf38  10 30 86 05                                      streq r3, [r6, #0x10]
005caf3c  0f 00 95 e8                                      ldm r5, {r0, r1, r2, r3}
005caf40  0f 00 84 e8                                      stm r4, {r0, r1, r2, r3}
005caf44  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x005cb43c, declared_size=156, range_size=156, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE12setParameterEtPKNS_4core8CMatrix4IfEEi
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::setParameter(unsigned short, glitch::core::CMatrix4<float> const*, int)
; decoder-mode: arm
005cb43c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005cb440  04 c0 90 e5                                      ldr ip, [r0, #4]
005cb444  02 40 a0 e1                                      mov r4, r2
005cb448  be 20 dc e1                                      ldrh r2, [ip, #0xe]
005cb44c  01 00 52 e1                                      cmp r2, r1
005cb450  05 00 00 9a                                      bls #0x5cb46c
005cb454  20 20 9c e5                                      ldr r2, [ip, #0x20]
005cb458  01 12 92 e0                                      adds r1, r2, r1, lsl #4
005cb45c  02 00 00 0a                                      beq #0x5cb46c
005cb460  06 20 d1 e5                                      ldrb r2, [r1, #6]
005cb464  0b 00 52 e3                                      cmp r2, #0xb
005cb468  01 00 00 0a                                      beq #0x5cb474
005cb46c  00 00 a0 e3                                      mov r0, #0
005cb470  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005cb474  00 20 e0 e3                                      mvn r2, #0
005cb478  0c 20 80 e5                                      str r2, [r0, #0xc]
005cb47c  10 20 80 e5                                      str r2, [r0, #0x10]
005cb480  08 80 91 e5                                      ldr r8, [r1, #8]
005cb484  00 00 53 e3                                      cmp r3, #0
005cb488  03 70 a0 11                                      movne r7, r3
005cb48c  44 70 a0 03                                      moveq r7, #0x44
005cb490  98 47 28 e0                                      mla r8, r8, r7, r4
005cb494  0c 30 91 e5                                      ldr r3, [r1, #0xc]
005cb498  08 00 54 e1                                      cmp r4, r8
005cb49c  0b 00 00 0a                                      beq #0x5cb4d0
005cb4a0  20 60 80 e2                                      add r6, r0, #0x20
005cb4a4  03 60 86 e0                                      add r6, r6, r3
005cb4a8  00 50 a0 e3                                      mov r5, #0
005cb4ac  04 10 a0 e1                                      mov r1, r4
005cb4b0  06 00 a0 e1                                      mov r0, r6
005cb4b4  07 50 85 e0                                      add r5, r5, r7
005cb4b8  00 20 a0 e3                                      mov r2, #0
005cb4bc  3d be ff eb                                      bl #0x5badb8
005cb4c0  05 10 84 e0                                      add r1, r4, r5
005cb4c4  01 00 58 e1                                      cmp r8, r1
005cb4c8  04 60 86 e2                                      add r6, r6, #4
005cb4cc  f7 ff ff 1a                                      bne #0x5cb4b0
005cb4d0  01 00 a0 e3                                      mov r0, #1
005cb4d4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x005cb4d8, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtEtPKNS_4core8CMatrix4IfEEi
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::setParameterCvt(unsigned short, glitch::core::CMatrix4<float> const*, int)
; decoder-mode: arm
005cb4d8  d7 ff ff ea                                      b #0x5cb43c

; FUNCTION 0x005cb4dc, declared_size=112, range_size=112, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE12setParameterEtjRKNS_4core8CMatrix4IfEE
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::setParameter(unsigned short, unsigned int, glitch::core::CMatrix4<float> const&)
; decoder-mode: arm
005cb4dc  10 40 2d e9                                      push {r4, lr}
005cb4e0  04 c0 90 e5                                      ldr ip, [r0, #4]
005cb4e4  be 40 dc e1                                      ldrh r4, [ip, #0xe]
005cb4e8  01 00 54 e1                                      cmp r4, r1
005cb4ec  05 00 00 9a                                      bls #0x5cb508
005cb4f0  20 c0 9c e5                                      ldr ip, [ip, #0x20]
005cb4f4  01 c2 9c e0                                      adds ip, ip, r1, lsl #4
005cb4f8  02 00 00 0a                                      beq #0x5cb508
005cb4fc  06 40 dc e5                                      ldrb r4, [ip, #6]
005cb500  0b 00 54 e3                                      cmp r4, #0xb
005cb504  01 00 00 0a                                      beq #0x5cb510
005cb508  00 00 a0 e3                                      mov r0, #0
005cb50c  10 80 bd e8                                      pop {r4, pc}
005cb510  08 10 9c e5                                      ldr r1, [ip, #8]
005cb514  01 00 52 e1                                      cmp r2, r1
005cb518  fa ff ff 2a                                      bhs #0x5cb508
005cb51c  00 10 e0 e3                                      mvn r1, #0
005cb520  0c 10 80 e5                                      str r1, [r0, #0xc]
005cb524  10 10 80 e5                                      str r1, [r0, #0x10]
005cb528  0c c0 9c e5                                      ldr ip, [ip, #0xc]
005cb52c  20 00 80 e2                                      add r0, r0, #0x20
005cb530  03 10 a0 e1                                      mov r1, r3
005cb534  02 21 8c e0                                      add r2, ip, r2, lsl #2
005cb538  02 00 80 e0                                      add r0, r0, r2
005cb53c  00 20 a0 e3                                      mov r2, #0
005cb540  1c be ff eb                                      bl #0x5badb8
005cb544  01 00 a0 e3                                      mov r0, #1
005cb548  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005cb54c, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtEtjRKNS_4core8CMatrix4IfEE
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::setParameterCvt(unsigned short, unsigned int, glitch::core::CMatrix4<float> const&)
; decoder-mode: arm
005cb54c  e2 ff ff ea                                      b #0x5cb4dc

; FUNCTION 0x005cb550, declared_size=12, range_size=12, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE12setParameterEtRKNS_4core8CMatrix4IfEE
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::setParameter(unsigned short, glitch::core::CMatrix4<float> const&)
; decoder-mode: arm
005cb550  02 30 a0 e1                                      mov r3, r2
005cb554  00 20 a0 e3                                      mov r2, #0
005cb558  df ff ff ea                                      b #0x5cb4dc

; FUNCTION 0x005cb6dc, declared_size=12, range_size=12, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtEtRKNS_4core8CMatrix4IfEE
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::setParameterCvt(unsigned short, glitch::core::CMatrix4<float> const&)
; decoder-mode: arm
005cb6dc  02 30 a0 e1                                      mov r3, r2
005cb6e0  00 20 a0 e3                                      mov r2, #0
005cb6e4  7c ff ff ea                                      b #0x5cb4dc

; FUNCTION 0x005cb8dc, declared_size=340, range_size=340, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE14grabParametersEv
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::grabParameters()
; decoder-mode: arm
005cb8dc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005cb8e0  04 20 90 e5                                      ldr r2, [r0, #4]
005cb8e4  3c 81 9f e5                                      ldr r8, [pc, #0x13c]
005cb8e8  0c d0 4d e2                                      sub sp, sp, #0xc
005cb8ec  be 90 d2 e1                                      ldrh sb, [r2, #0xe]
005cb8f0  08 80 8f e0                                      add r8, pc, r8
005cb8f4  00 b0 a0 e1                                      mov fp, r0
005cb8f8  00 00 59 e3                                      cmp sb, #0
005cb8fc  2b 00 00 0a                                      beq #0x5cb9b0
005cb900  24 a1 9f e5                                      ldr sl, [pc, #0x124]
005cb904  00 60 a0 e3                                      mov r6, #0
005cb908  20 00 80 e2                                      add r0, r0, #0x20
005cb90c  09 10 a0 e1                                      mov r1, sb
005cb910  06 30 a0 e1                                      mov r3, r6
005cb914  04 00 8d e5                                      str r0, [sp, #4]
005cb918  01 00 53 e1                                      cmp r3, r1
005cb91c  20 20 92 35                                      ldrlo r2, [r2, #0x20]
005cb920  00 30 a0 23                                      movhs r3, #0
005cb924  03 32 82 30                                      addlo r3, r2, r3, lsl #4
005cb928  06 20 d3 e5                                      ldrb r2, [r3, #6]
005cb92c  0b 20 42 e2                                      sub r2, r2, #0xb
005cb930  07 00 52 e3                                      cmp r2, #7
005cb934  02 f1 8f 90                                      addls pc, pc, r2, lsl #2
005cb938  0c 00 00 ea                                      b #0x5cb970
005cb93c  1d 00 00 ea                                      b #0x5cb9b8
005cb940  05 00 00 ea                                      b #0x5cb95c
005cb944  04 00 00 ea                                      b #0x5cb95c
005cb948  03 00 00 ea                                      b #0x5cb95c
005cb94c  02 00 00 ea                                      b #0x5cb95c
005cb950  06 00 00 ea                                      b #0x5cb970
005cb954  05 00 00 ea                                      b #0x5cb970
005cb958  0b 00 00 ea                                      b #0x5cb98c
005cb95c  0c 00 93 e5                                      ldr r0, [r3, #0xc]
005cb960  08 10 93 e5                                      ldr r1, [r3, #8]
005cb964  04 30 9d e5                                      ldr r3, [sp, #4]
005cb968  00 00 83 e0                                      add r0, r3, r0
005cb96c  43 be ff eb                                      bl #0x5bb280
005cb970  01 60 86 e2                                      add r6, r6, #1
005cb974  76 30 ff e6                                      uxth r3, r6
005cb978  03 00 59 e1                                      cmp sb, r3
005cb97c  0b 00 00 0a                                      beq #0x5cb9b0
005cb980  04 20 9b e5                                      ldr r2, [fp, #4]
005cb984  be 10 d2 e1                                      ldrh r1, [r2, #0xe]
005cb988  e2 ff ff ea                                      b #0x5cb918
005cb98c  0c 00 93 e5                                      ldr r0, [r3, #0xc]
005cb990  08 10 93 e5                                      ldr r1, [r3, #8]
005cb994  04 30 9d e5                                      ldr r3, [sp, #4]
005cb998  01 60 86 e2                                      add r6, r6, #1
005cb99c  00 00 83 e0                                      add r0, r3, r0
005cb9a0  02 bf ff eb                                      bl #0x5bb5b0
005cb9a4  76 30 ff e6                                      uxth r3, r6
005cb9a8  03 00 59 e1                                      cmp sb, r3
005cb9ac  f3 ff ff 1a                                      bne #0x5cb980
005cb9b0  0c d0 8d e2                                      add sp, sp, #0xc
005cb9b4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005cb9b8  0c 40 93 e5                                      ldr r4, [r3, #0xc]
005cb9bc  04 00 9d e5                                      ldr r0, [sp, #4]
005cb9c0  08 70 93 e5                                      ldr r7, [r3, #8]
005cb9c4  04 40 80 e0                                      add r4, r0, r4
005cb9c8  07 71 84 e0                                      add r7, r4, r7, lsl #2
005cb9cc  07 00 54 e1                                      cmp r4, r7
005cb9d0  e6 ff ff 0a                                      beq #0x5cb970
005cb9d4  00 10 94 e5                                      ldr r1, [r4]
005cb9d8  00 00 51 e3                                      cmp r1, #0
005cb9dc  08 00 00 0a                                      beq #0x5cba04
005cb9e0  0a 30 98 e7                                      ldr r3, [r8, sl]
005cb9e4  00 50 93 e5                                      ldr r5, [r3]
005cb9e8  00 00 55 e3                                      cmp r5, #0
005cb9ec  08 00 00 0a                                      beq #0x5cba14
005cb9f0  00 20 95 e5                                      ldr r2, [r5]
005cb9f4  00 20 83 e5                                      str r2, [r3]
005cb9f8  05 00 a0 e1                                      mov r0, r5
005cb9fc  51 fd ff eb                                      bl #0x5caf48
005cba00  00 50 84 e5                                      str r5, [r4]
005cba04  04 40 84 e2                                      add r4, r4, #4
005cba08  04 00 57 e1                                      cmp r7, r4
005cba0c  f0 ff ff 1a                                      bne #0x5cb9d4
005cba10  d6 ff ff ea                                      b #0x5cb970
005cba14  00 10 8d e5                                      str r1, [sp]
005cba18  39 fe ff eb                                      bl #0x5cb304
005cba1c  00 10 9d e5                                      ldr r1, [sp]
005cba20  00 50 a0 e1                                      mov r5, r0
005cba24  f3 ff ff ea                                      b #0x5cb9f8
; mapping-symbol data/literal pool
005cba28  a0 91 3c 00 c0 3c 00 00                          .byte 0xa0, 0x91, 0x3c, 0x00, 0xc0, 0x3c, 0x00, 0x00

; FUNCTION 0x005cba30, declared_size=372, range_size=372, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE13dropParameterEt
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::dropParameter(unsigned short)
; decoder-mode: arm
005cba30  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005cba34  04 30 90 e5                                      ldr r3, [r0, #4]
005cba38  5c 41 9f e5                                      ldr r4, [pc, #0x15c]
005cba3c  be 20 d3 e1                                      ldrh r2, [r3, #0xe]
005cba40  04 40 8f e0                                      add r4, pc, r4
005cba44  01 00 52 e1                                      cmp r2, r1
005cba48  20 30 93 85                                      ldrhi r3, [r3, #0x20]
005cba4c  00 10 a0 93                                      movls r1, #0
005cba50  01 12 83 80                                      addhi r1, r3, r1, lsl #4
005cba54  06 30 d1 e5                                      ldrb r3, [r1, #6]
005cba58  0b 30 43 e2                                      sub r3, r3, #0xb
005cba5c  07 00 53 e3                                      cmp r3, #7
005cba60  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
005cba64  26 00 00 ea                                      b #0x5cbb04
005cba68  37 00 00 ea                                      b #0x5cbb4c
005cba6c  25 00 00 ea                                      b #0x5cbb08
005cba70  24 00 00 ea                                      b #0x5cbb08
005cba74  23 00 00 ea                                      b #0x5cbb08
005cba78  22 00 00 ea                                      b #0x5cbb08
005cba7c  20 00 00 ea                                      b #0x5cbb04
005cba80  1f 00 00 ea                                      b #0x5cbb04
005cba84  ff ff ff ea                                      b #0x5cba88
005cba88  0c 30 91 e5                                      ldr r3, [r1, #0xc]
005cba8c  08 70 91 e5                                      ldr r7, [r1, #8]
005cba90  20 50 80 e2                                      add r5, r0, #0x20
005cba94  03 50 85 e0                                      add r5, r5, r3
005cba98  07 71 85 e0                                      add r7, r5, r7, lsl #2
005cba9c  07 00 55 e1                                      cmp r5, r7
005cbaa0  17 00 00 0a                                      beq #0x5cbb04
005cbaa4  f4 80 9f e5                                      ldr r8, [pc, #0xf4]
005cbaa8  00 60 a0 e3                                      mov r6, #0
005cbaac  00 30 95 e5                                      ldr r3, [r5]
005cbab0  00 60 85 e5                                      str r6, [r5]
005cbab4  04 50 85 e2                                      add r5, r5, #4
005cbab8  00 00 53 e3                                      cmp r3, #0
005cbabc  03 00 a0 e1                                      mov r0, r3
005cbac0  0d 00 00 0a                                      beq #0x5cbafc
005cbac4  00 20 93 e5                                      ldr r2, [r3]
005cbac8  01 20 42 e2                                      sub r2, r2, #1
005cbacc  00 00 52 e3                                      cmp r2, #0
005cbad0  00 20 83 e5                                      str r2, [r3]
005cbad4  08 00 00 1a                                      bne #0x5cbafc
005cbad8  54 20 d3 e5                                      ldrb r2, [r3, #0x54]
005cbadc  00 00 52 e3                                      cmp r2, #0
005cbae0  08 20 94 07                                      ldreq r2, [r4, r8]
005cbae4  50 10 93 05                                      ldreq r1, [r3, #0x50]
005cbae8  00 c0 92 05                                      ldreq ip, [r2]
005cbaec  00 c0 81 05                                      streq ip, [r1]
005cbaf0  00 10 82 05                                      streq r1, [r2]
005cbaf4  50 60 83 e5                                      str r6, [r3, #0x50]
005cbaf8  ec 09 f5 eb                                      bl #0x30e2b0
005cbafc  05 00 57 e1                                      cmp r7, r5
005cbb00  e9 ff ff 1a                                      bne #0x5cbaac
005cbb04  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005cbb08  0c 30 91 e5                                      ldr r3, [r1, #0xc]
005cbb0c  08 50 91 e5                                      ldr r5, [r1, #8]
005cbb10  20 40 80 e2                                      add r4, r0, #0x20
005cbb14  03 40 84 e0                                      add r4, r4, r3
005cbb18  05 51 84 e0                                      add r5, r4, r5, lsl #2
005cbb1c  05 00 54 e1                                      cmp r4, r5
005cbb20  f7 ff ff 0a                                      beq #0x5cbb04
005cbb24  00 60 a0 e3                                      mov r6, #0
005cbb28  00 00 94 e5                                      ldr r0, [r4]
005cbb2c  00 60 84 e5                                      str r6, [r4]
005cbb30  04 40 84 e2                                      add r4, r4, #4
005cbb34  00 00 50 e3                                      cmp r0, #0
005cbb38  00 00 00 0a                                      beq #0x5cbb40
005cbb3c  90 46 f5 eb                                      bl #0x31d584
005cbb40  04 00 55 e1                                      cmp r5, r4
005cbb44  f7 ff ff 1a                                      bne #0x5cbb28
005cbb48  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005cbb4c  0c 30 91 e5                                      ldr r3, [r1, #0xc]
005cbb50  08 c0 91 e5                                      ldr ip, [r1, #8]
005cbb54  20 00 80 e2                                      add r0, r0, #0x20
005cbb58  03 00 80 e0                                      add r0, r0, r3
005cbb5c  0c c1 80 e0                                      add ip, r0, ip, lsl #2
005cbb60  0c 00 50 e1                                      cmp r0, ip
005cbb64  e6 ff ff 0a                                      beq #0x5cbb04
005cbb68  30 60 9f e5                                      ldr r6, [pc, #0x30]
005cbb6c  00 50 a0 e3                                      mov r5, #0
005cbb70  00 30 90 e5                                      ldr r3, [r0]
005cbb74  00 00 53 e3                                      cmp r3, #0
005cbb78  06 20 94 17                                      ldrne r2, [r4, r6]
005cbb7c  00 10 92 15                                      ldrne r1, [r2]
005cbb80  00 10 83 15                                      strne r1, [r3]
005cbb84  00 30 82 15                                      strne r3, [r2]
005cbb88  00 50 80 15                                      strne r5, [r0]
005cbb8c  04 00 80 e2                                      add r0, r0, #4
005cbb90  00 00 5c e1                                      cmp ip, r0
005cbb94  f5 ff ff 1a                                      bne #0x5cbb70
005cbb98  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
005cbb9c  50 90 3c 00 c0 3c 00 00                          .byte 0x50, 0x90, 0x3c, 0x00, 0xc0, 0x3c, 0x00, 0x00

; FUNCTION 0x005cbba4, declared_size=60, range_size=60, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE14dropParametersEv
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::dropParameters()
; decoder-mode: arm
005cbba4  70 40 2d e9                                      push {r4, r5, r6, lr}
005cbba8  04 30 90 e5                                      ldr r3, [r0, #4]
005cbbac  00 60 a0 e1                                      mov r6, r0
005cbbb0  be 50 d3 e1                                      ldrh r5, [r3, #0xe]
005cbbb4  00 00 55 e3                                      cmp r5, #0
005cbbb8  07 00 00 0a                                      beq #0x5cbbdc
005cbbbc  00 40 a0 e3                                      mov r4, #0
005cbbc0  04 10 a0 e1                                      mov r1, r4
005cbbc4  01 40 84 e2                                      add r4, r4, #1
005cbbc8  06 00 a0 e1                                      mov r0, r6
005cbbcc  97 ff ff eb                                      bl #0x5cba30
005cbbd0  74 10 ff e6                                      uxth r1, r4
005cbbd4  01 00 55 e1                                      cmp r5, r1
005cbbd8  f9 ff ff 1a                                      bne #0x5cbbc4
005cbbdc  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x005cc628, declared_size=316, range_size=316, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE12getParameterEtNS0_29E_SHADER_PARAMETER_VALUE_TYPEEPvi
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::getParameter(unsigned short, glitch::video::E_SHADER_PARAMETER_VALUE_TYPE, void*, int) const
; decoder-mode: arm
005cc628  04 40 2d e5                                      str r4, [sp, #-4]!
005cc62c  01 c0 42 e2                                      sub ip, r2, #1
005cc630  04 40 9d e5                                      ldr r4, [sp, #4]
005cc634  11 00 5c e3                                      cmp ip, #0x11
005cc638  0c f1 8f 90                                      addls pc, pc, ip, lsl #2
005cc63c  19 00 00 ea                                      b #0x5cc6a8
005cc640  1b 00 00 ea                                      b #0x5cc6b4
005cc644  1e 00 00 ea                                      b #0x5cc6c4
005cc648  21 00 00 ea                                      b #0x5cc6d4
005cc64c  24 00 00 ea                                      b #0x5cc6e4
005cc650  27 00 00 ea                                      b #0x5cc6f4
005cc654  2a 00 00 ea                                      b #0x5cc704
005cc658  2d 00 00 ea                                      b #0x5cc714
005cc65c  30 00 00 ea                                      b #0x5cc724
005cc660  10 00 00 ea                                      b #0x5cc6a8
005cc664  0f 00 00 ea                                      b #0x5cc6a8
005cc668  31 00 00 ea                                      b #0x5cc734
005cc66c  05 00 00 ea                                      b #0x5cc688
005cc670  04 00 00 ea                                      b #0x5cc688
005cc674  03 00 00 ea                                      b #0x5cc688
005cc678  02 00 00 ea                                      b #0x5cc688
005cc67c  05 00 00 ea                                      b #0x5cc698
005cc680  33 00 00 ea                                      b #0x5cc754
005cc684  2e 00 00 ea                                      b #0x5cc744
005cc688  03 20 a0 e1                                      mov r2, r3
005cc68c  04 30 a0 e1                                      mov r3, r4
005cc690  10 00 bd e8                                      ldm sp!, {r4}
005cc694  68 ff ff ea                                      b #0x5cc43c
005cc698  03 20 a0 e1                                      mov r2, r3
005cc69c  04 30 a0 e1                                      mov r3, r4
005cc6a0  10 00 bd e8                                      ldm sp!, {r4}
005cc6a4  56 f0 ff ea                                      b #0x5c8804
005cc6a8  00 00 a0 e3                                      mov r0, #0
005cc6ac  10 00 bd e8                                      ldm sp!, {r4}
005cc6b0  1e ff 2f e1                                      bx lr
005cc6b4  03 20 a0 e1                                      mov r2, r3
005cc6b8  04 30 a0 e1                                      mov r3, r4
005cc6bc  10 00 bd e8                                      ldm sp!, {r4}
005cc6c0  b1 f1 ff ea                                      b #0x5c8d8c
005cc6c4  03 20 a0 e1                                      mov r2, r3
005cc6c8  04 30 a0 e1                                      mov r3, r4
005cc6cc  10 00 bd e8                                      ldm sp!, {r4}
005cc6d0  81 f1 ff ea                                      b #0x5c8cdc
005cc6d4  03 20 a0 e1                                      mov r2, r3
005cc6d8  04 30 a0 e1                                      mov r3, r4
005cc6dc  10 00 bd e8                                      ldm sp!, {r4}
005cc6e0  50 f1 ff ea                                      b #0x5c8c28
005cc6e4  03 20 a0 e1                                      mov r2, r3
005cc6e8  04 30 a0 e1                                      mov r3, r4
005cc6ec  10 00 bd e8                                      ldm sp!, {r4}
005cc6f0  1f f1 ff ea                                      b #0x5c8b74
005cc6f4  03 20 a0 e1                                      mov r2, r3
005cc6f8  04 30 a0 e1                                      mov r3, r4
005cc6fc  10 00 bd e8                                      ldm sp!, {r4}
005cc700  f3 f0 ff ea                                      b #0x5c8ad4
005cc704  03 20 a0 e1                                      mov r2, r3
005cc708  04 30 a0 e1                                      mov r3, r4
005cc70c  10 00 bd e8                                      ldm sp!, {r4}
005cc710  c3 f0 ff ea                                      b #0x5c8a24
005cc714  03 20 a0 e1                                      mov r2, r3
005cc718  04 30 a0 e1                                      mov r3, r4
005cc71c  10 00 bd e8                                      ldm sp!, {r4}
005cc720  92 f0 ff ea                                      b #0x5c8970
005cc724  03 20 a0 e1                                      mov r2, r3
005cc728  04 30 a0 e1                                      mov r3, r4
005cc72c  10 00 bd e8                                      ldm sp!, {r4}
005cc730  61 f0 ff ea                                      b #0x5c88bc
005cc734  03 20 a0 e1                                      mov r2, r3
005cc738  04 30 a0 e1                                      mov r3, r4
005cc73c  10 00 bd e8                                      ldm sp!, {r4}
005cc740  f1 f6 ff ea                                      b #0x5ca30c
005cc744  03 20 a0 e1                                      mov r2, r3
005cc748  04 30 a0 e1                                      mov r3, r4
005cc74c  10 00 bd e8                                      ldm sp!, {r4}
005cc750  6d ff ff ea                                      b #0x5cc50c
005cc754  03 20 a0 e1                                      mov r2, r3
005cc758  04 30 a0 e1                                      mov r3, r4
005cc75c  10 00 bd e8                                      ldm sp!, {r4}
005cc760  f9 ef ff ea                                      b #0x5c874c

; FUNCTION 0x005cc764, declared_size=92, range_size=92, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE12getParameterEtRNS_4core8CMatrix4IfEE
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::getParameter(unsigned short, glitch::core::CMatrix4<float>&) const
; decoder-mode: arm
005cc764  10 40 2d e9                                      push {r4, lr}
005cc768  04 30 90 e5                                      ldr r3, [r0, #4]
005cc76c  be c0 d3 e1                                      ldrh ip, [r3, #0xe]
005cc770  01 00 5c e1                                      cmp ip, r1
005cc774  05 00 00 9a                                      bls #0x5cc790
005cc778  20 30 93 e5                                      ldr r3, [r3, #0x20]
005cc77c  01 32 93 e0                                      adds r3, r3, r1, lsl #4
005cc780  02 00 00 0a                                      beq #0x5cc790
005cc784  06 c0 d3 e5                                      ldrb ip, [r3, #6]
005cc788  0b 00 5c e3                                      cmp ip, #0xb
005cc78c  01 00 00 0a                                      beq #0x5cc798
005cc790  00 00 a0 e3                                      mov r0, #0
005cc794  10 80 bd e8                                      pop {r4, pc}
005cc798  08 10 93 e5                                      ldr r1, [r3, #8]
005cc79c  00 00 51 e3                                      cmp r1, #0
005cc7a0  fa ff ff 0a                                      beq #0x5cc790
005cc7a4  0c 30 93 e5                                      ldr r3, [r3, #0xc]
005cc7a8  20 00 80 e2                                      add r0, r0, #0x20
005cc7ac  02 10 a0 e1                                      mov r1, r2
005cc7b0  03 00 80 e0                                      add r0, r0, r3
005cc7b4  9c b7 ff eb                                      bl #0x5ba62c
005cc7b8  01 00 a0 e3                                      mov r0, #1
005cc7bc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005cc7c0, declared_size=96, range_size=96, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15getParameterCvtEtjRNS_4core8CMatrix4IfEE
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::getParameterCvt(unsigned short, unsigned int, glitch::core::CMatrix4<float>&) const
; decoder-mode: arm
005cc7c0  10 40 2d e9                                      push {r4, lr}
005cc7c4  04 c0 90 e5                                      ldr ip, [r0, #4]
005cc7c8  be 40 dc e1                                      ldrh r4, [ip, #0xe]
005cc7cc  01 00 54 e1                                      cmp r4, r1
005cc7d0  05 00 00 9a                                      bls #0x5cc7ec
005cc7d4  20 c0 9c e5                                      ldr ip, [ip, #0x20]
005cc7d8  01 c2 9c e0                                      adds ip, ip, r1, lsl #4
005cc7dc  02 00 00 0a                                      beq #0x5cc7ec
005cc7e0  06 40 dc e5                                      ldrb r4, [ip, #6]
005cc7e4  0b 00 54 e3                                      cmp r4, #0xb
005cc7e8  01 00 00 0a                                      beq #0x5cc7f4
005cc7ec  00 00 a0 e3                                      mov r0, #0
005cc7f0  10 80 bd e8                                      pop {r4, pc}
005cc7f4  08 10 9c e5                                      ldr r1, [ip, #8]
005cc7f8  01 00 52 e1                                      cmp r2, r1
005cc7fc  fa ff ff 2a                                      bhs #0x5cc7ec
005cc800  0c c0 9c e5                                      ldr ip, [ip, #0xc]
005cc804  20 00 80 e2                                      add r0, r0, #0x20
005cc808  03 10 a0 e1                                      mov r1, r3
005cc80c  02 21 8c e0                                      add r2, ip, r2, lsl #2
005cc810  02 00 80 e0                                      add r0, r0, r2
005cc814  84 b7 ff eb                                      bl #0x5ba62c
005cc818  01 00 a0 e3                                      mov r0, #1
005cc81c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005cc91c, declared_size=316, range_size=316, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE12setParameterEtNS0_29E_SHADER_PARAMETER_VALUE_TYPEEPKvi
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::setParameter(unsigned short, glitch::video::E_SHADER_PARAMETER_VALUE_TYPE, void const*, int)
; decoder-mode: arm
005cc91c  04 40 2d e5                                      str r4, [sp, #-4]!
005cc920  01 c0 42 e2                                      sub ip, r2, #1
005cc924  04 40 9d e5                                      ldr r4, [sp, #4]
005cc928  11 00 5c e3                                      cmp ip, #0x11
005cc92c  0c f1 8f 90                                      addls pc, pc, ip, lsl #2
005cc930  19 00 00 ea                                      b #0x5cc99c
005cc934  1b 00 00 ea                                      b #0x5cc9a8
005cc938  1e 00 00 ea                                      b #0x5cc9b8
005cc93c  21 00 00 ea                                      b #0x5cc9c8
005cc940  24 00 00 ea                                      b #0x5cc9d8
005cc944  27 00 00 ea                                      b #0x5cc9e8
005cc948  2a 00 00 ea                                      b #0x5cc9f8
005cc94c  2d 00 00 ea                                      b #0x5cca08
005cc950  30 00 00 ea                                      b #0x5cca18
005cc954  10 00 00 ea                                      b #0x5cc99c
005cc958  0f 00 00 ea                                      b #0x5cc99c
005cc95c  31 00 00 ea                                      b #0x5cca28
005cc960  05 00 00 ea                                      b #0x5cc97c
005cc964  04 00 00 ea                                      b #0x5cc97c
005cc968  03 00 00 ea                                      b #0x5cc97c
005cc96c  02 00 00 ea                                      b #0x5cc97c
005cc970  05 00 00 ea                                      b #0x5cc98c
005cc974  33 00 00 ea                                      b #0x5cca48
005cc978  2e 00 00 ea                                      b #0x5cca38
005cc97c  03 20 a0 e1                                      mov r2, r3
005cc980  04 30 a0 e1                                      mov r3, r4
005cc984  10 00 bd e8                                      ldm sp!, {r4}
005cc988  c9 ff ff ea                                      b #0x5cc8b4
005cc98c  03 20 a0 e1                                      mov r2, r3
005cc990  04 30 a0 e1                                      mov r3, r4
005cc994  10 00 bd e8                                      ldm sp!, {r4}
005cc998  b6 f4 ff ea                                      b #0x5c9c78
005cc99c  00 00 a0 e3                                      mov r0, #0
005cc9a0  10 00 bd e8                                      ldm sp!, {r4}
005cc9a4  1e ff 2f e1                                      bx lr
005cc9a8  03 20 a0 e1                                      mov r2, r3
005cc9ac  04 30 a0 e1                                      mov r3, r4
005cc9b0  10 00 bd e8                                      ldm sp!, {r4}
005cc9b4  29 f6 ff ea                                      b #0x5ca260
005cc9b8  03 20 a0 e1                                      mov r2, r3
005cc9bc  04 30 a0 e1                                      mov r3, r4
005cc9c0  10 00 bd e8                                      ldm sp!, {r4}
005cc9c4  f6 f5 ff ea                                      b #0x5ca1a4
005cc9c8  03 20 a0 e1                                      mov r2, r3
005cc9cc  04 30 a0 e1                                      mov r3, r4
005cc9d0  10 00 bd e8                                      ldm sp!, {r4}
005cc9d4  c2 f5 ff ea                                      b #0x5ca0e4
005cc9d8  03 20 a0 e1                                      mov r2, r3
005cc9dc  04 30 a0 e1                                      mov r3, r4
005cc9e0  10 00 bd e8                                      ldm sp!, {r4}
005cc9e4  8e f5 ff ea                                      b #0x5ca024
005cc9e8  03 20 a0 e1                                      mov r2, r3
005cc9ec  04 30 a0 e1                                      mov r3, r4
005cc9f0  10 00 bd e8                                      ldm sp!, {r4}
005cc9f4  5f f5 ff ea                                      b #0x5c9f78
005cc9f8  03 20 a0 e1                                      mov r2, r3
005cc9fc  04 30 a0 e1                                      mov r3, r4
005cca00  10 00 bd e8                                      ldm sp!, {r4}
005cca04  2c f5 ff ea                                      b #0x5c9ebc
005cca08  03 20 a0 e1                                      mov r2, r3
005cca0c  04 30 a0 e1                                      mov r3, r4
005cca10  10 00 bd e8                                      ldm sp!, {r4}
005cca14  f8 f4 ff ea                                      b #0x5c9dfc
005cca18  03 20 a0 e1                                      mov r2, r3
005cca1c  04 30 a0 e1                                      mov r3, r4
005cca20  10 00 bd e8                                      ldm sp!, {r4}
005cca24  c4 f4 ff ea                                      b #0x5c9d3c
005cca28  03 20 a0 e1                                      mov r2, r3
005cca2c  04 30 a0 e1                                      mov r3, r4
005cca30  10 00 bd e8                                      ldm sp!, {r4}
005cca34  80 fa ff ea                                      b #0x5cb43c
005cca38  03 20 a0 e1                                      mov r2, r3
005cca3c  04 30 a0 e1                                      mov r3, r4
005cca40  10 00 bd e8                                      ldm sp!, {r4}
005cca44  1b fe ff ea                                      b #0x5cc2b8
005cca48  03 20 a0 e1                                      mov r2, r3
005cca4c  04 30 a0 e1                                      mov r3, r4
005cca50  10 00 bd e8                                      ldm sp!, {r4}
005cca54  56 f4 ff ea                                      b #0x5c9bb4

; FUNCTION 0x005cca58, declared_size=548, range_size=548, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE24initParametersToIdentityEv
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::initParametersToIdentity()
; decoder-mode: arm
005cca58  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005cca5c  04 10 90 e5                                      ldr r1, [r0, #4]
005cca60  0c b2 9f e5                                      ldr fp, [pc, #0x20c]
005cca64  0c d0 4d e2                                      sub sp, sp, #0xc
005cca68  be 60 d1 e1                                      ldrh r6, [r1, #0xe]
005cca6c  0b b0 8f e0                                      add fp, pc, fp
005cca70  00 70 a0 e1                                      mov r7, r0
005cca74  00 00 56 e3                                      cmp r6, #0
005cca78  3b 00 00 0a                                      beq #0x5ccb6c
005cca7c  f4 c1 9f e5                                      ldr ip, [pc, #0x1f4]
005cca80  00 40 a0 e3                                      mov r4, #0
005cca84  20 50 80 e2                                      add r5, r0, #0x20
005cca88  fe a5 a0 e3                                      mov sl, #0x3f800000
005cca8c  00 90 a0 e3                                      mov sb, #0
005cca90  06 00 a0 e1                                      mov r0, r6
005cca94  04 20 a0 e1                                      mov r2, r4
005cca98  04 80 a0 e1                                      mov r8, r4
005cca9c  00 30 e0 e3                                      mvn r3, #0
005ccaa0  00 00 52 e1                                      cmp r2, r0
005ccaa4  20 10 91 35                                      ldrlo r1, [r1, #0x20]
005ccaa8  00 20 a0 23                                      movhs r2, #0
005ccaac  02 22 81 30                                      addlo r2, r1, r2, lsl #4
005ccab0  06 10 d2 e5                                      ldrb r1, [r2, #6]
005ccab4  0c 20 92 e5                                      ldr r2, [r2, #0xc]
005ccab8  02 00 85 e0                                      add r0, r5, r2
005ccabc  12 00 51 e3                                      cmp r1, #0x12
005ccac0  01 f1 8f 90                                      addls pc, pc, r1, lsl #2
005ccac4  19 00 00 ea                                      b #0x5ccb30
005ccac8  67 00 00 ea                                      b #0x5ccc6c
005ccacc  64 00 00 ea                                      b #0x5ccc64
005ccad0  60 00 00 ea                                      b #0x5ccc58
005ccad4  5b 00 00 ea                                      b #0x5ccc48
005ccad8  55 00 00 ea                                      b #0x5ccc34
005ccadc  52 00 00 ea                                      b #0x5ccc2c
005ccae0  4e 00 00 ea                                      b #0x5ccc20
005ccae4  49 00 00 ea                                      b #0x5ccc10
005ccae8  43 00 00 ea                                      b #0x5ccbfc
005ccaec  0f 00 00 ea                                      b #0x5ccb30
005ccaf0  0e 00 00 ea                                      b #0x5ccb30
005ccaf4  06 00 00 ea                                      b #0x5ccb14
005ccaf8  1d 00 00 ea                                      b #0x5ccb74
005ccafc  1c 00 00 ea                                      b #0x5ccb74
005ccb00  1b 00 00 ea                                      b #0x5ccb74
005ccb04  1a 00 00 ea                                      b #0x5ccb74
005ccb08  0f 00 00 ea                                      b #0x5ccb4c
005ccb0c  20 00 00 ea                                      b #0x5ccb94
005ccb10  24 00 00 ea                                      b #0x5ccba8
005ccb14  02 20 95 e7                                      ldr r2, [r5, r2]
005ccb18  00 00 52 e3                                      cmp r2, #0
005ccb1c  03 00 00 0a                                      beq #0x5ccb30
005ccb20  0c 10 9b e7                                      ldr r1, [fp, ip]
005ccb24  00 00 91 e5                                      ldr r0, [r1]
005ccb28  00 00 82 e5                                      str r0, [r2]
005ccb2c  00 20 81 e5                                      str r2, [r1]
005ccb30  01 40 84 e2                                      add r4, r4, #1
005ccb34  74 20 ff e6                                      uxth r2, r4
005ccb38  02 00 56 e1                                      cmp r6, r2
005ccb3c  0a 00 00 0a                                      beq #0x5ccb6c
005ccb40  04 10 97 e5                                      ldr r1, [r7, #4]
005ccb44  be 00 d1 e1                                      ldrh r0, [r1, #0xe]
005ccb48  d4 ff ff ea                                      b #0x5ccaa0
005ccb4c  01 40 84 e2                                      add r4, r4, #1
005ccb50  01 30 c0 e5                                      strb r3, [r0, #1]
005ccb54  03 30 c0 e5                                      strb r3, [r0, #3]
005ccb58  02 30 c0 e5                                      strb r3, [r0, #2]
005ccb5c  02 30 c5 e7                                      strb r3, [r5, r2]
005ccb60  74 20 ff e6                                      uxth r2, r4
005ccb64  02 00 56 e1                                      cmp r6, r2
005ccb68  f4 ff ff 1a                                      bne #0x5ccb40
005ccb6c  0c d0 8d e2                                      add sp, sp, #0xc
005ccb70  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005ccb74  02 00 95 e7                                      ldr r0, [r5, r2]
005ccb78  02 80 85 e7                                      str r8, [r5, r2]
005ccb7c  00 00 50 e3                                      cmp r0, #0
005ccb80  ea ff ff 0a                                      beq #0x5ccb30
005ccb84  08 10 8d e8                                      stm sp, {r3, ip}
005ccb88  7d 42 f5 eb                                      bl #0x31d584
005ccb8c  08 10 9d e8                                      ldm sp, {r3, ip}
005ccb90  e6 ff ff ea                                      b #0x5ccb30
005ccb94  04 a0 80 e5                                      str sl, [r0, #4]
005ccb98  0c a0 80 e5                                      str sl, [r0, #0xc]
005ccb9c  08 a0 80 e5                                      str sl, [r0, #8]
005ccba0  02 a0 85 e7                                      str sl, [r5, r2]
005ccba4  e1 ff ff ea                                      b #0x5ccb30
005ccba8  02 00 95 e7                                      ldr r0, [r5, r2]
005ccbac  02 80 85 e7                                      str r8, [r5, r2]
005ccbb0  00 00 50 e3                                      cmp r0, #0
005ccbb4  dd ff ff 0a                                      beq #0x5ccb30
005ccbb8  00 20 90 e5                                      ldr r2, [r0]
005ccbbc  01 20 42 e2                                      sub r2, r2, #1
005ccbc0  00 00 52 e3                                      cmp r2, #0
005ccbc4  00 20 80 e5                                      str r2, [r0]
005ccbc8  d8 ff ff 1a                                      bne #0x5ccb30
005ccbcc  54 20 d0 e5                                      ldrb r2, [r0, #0x54]
005ccbd0  00 00 52 e3                                      cmp r2, #0
005ccbd4  0c 20 9b 07                                      ldreq r2, [fp, ip]
005ccbd8  50 10 90 05                                      ldreq r1, [r0, #0x50]
005ccbdc  00 e0 92 05                                      ldreq lr, [r2]
005ccbe0  00 e0 81 05                                      streq lr, [r1]
005ccbe4  00 10 82 05                                      streq r1, [r2]
005ccbe8  50 80 80 e5                                      str r8, [r0, #0x50]
005ccbec  08 10 8d e8                                      stm sp, {r3, ip}
005ccbf0  ae 05 f5 eb                                      bl #0x30e2b0
005ccbf4  08 10 9d e8                                      ldm sp, {r3, ip}
005ccbf8  cc ff ff ea                                      b #0x5ccb30
005ccbfc  02 a0 85 e7                                      str sl, [r5, r2]
005ccc00  0c a0 80 e5                                      str sl, [r0, #0xc]
005ccc04  04 a0 80 e5                                      str sl, [r0, #4]
005ccc08  08 a0 80 e5                                      str sl, [r0, #8]
005ccc0c  c7 ff ff ea                                      b #0x5ccb30
005ccc10  02 90 85 e7                                      str sb, [r5, r2]
005ccc14  08 90 80 e5                                      str sb, [r0, #8]
005ccc18  04 90 80 e5                                      str sb, [r0, #4]
005ccc1c  c3 ff ff ea                                      b #0x5ccb30
005ccc20  02 90 85 e7                                      str sb, [r5, r2]
005ccc24  04 90 80 e5                                      str sb, [r0, #4]
005ccc28  c0 ff ff ea                                      b #0x5ccb30
005ccc2c  02 90 85 e7                                      str sb, [r5, r2]
005ccc30  be ff ff ea                                      b #0x5ccb30
005ccc34  02 80 85 e7                                      str r8, [r5, r2]
005ccc38  0c 80 80 e5                                      str r8, [r0, #0xc]
005ccc3c  04 80 80 e5                                      str r8, [r0, #4]
005ccc40  08 80 80 e5                                      str r8, [r0, #8]
005ccc44  b9 ff ff ea                                      b #0x5ccb30
005ccc48  02 80 85 e7                                      str r8, [r5, r2]
005ccc4c  08 80 80 e5                                      str r8, [r0, #8]
005ccc50  04 80 80 e5                                      str r8, [r0, #4]
005ccc54  b5 ff ff ea                                      b #0x5ccb30
005ccc58  02 80 85 e7                                      str r8, [r5, r2]
005ccc5c  04 80 80 e5                                      str r8, [r0, #4]
005ccc60  b2 ff ff ea                                      b #0x5ccb30
005ccc64  02 80 85 e7                                      str r8, [r5, r2]
005ccc68  b0 ff ff ea                                      b #0x5ccb30
005ccc6c  02 80 c5 e7                                      strb r8, [r5, r2]
005ccc70  ae ff ff ea                                      b #0x5ccb30
; mapping-symbol data/literal pool
005ccc74  24 80 3c 00 c0 3c 00 00                          .byte 0x24, 0x80, 0x3c, 0x00, 0xc0, 0x3c, 0x00, 0x00

; FUNCTION 0x005ccf40, declared_size=316, range_size=316, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtEtNS0_29E_SHADER_PARAMETER_VALUE_TYPEEPKvi
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::setParameterCvt(unsigned short, glitch::video::E_SHADER_PARAMETER_VALUE_TYPE, void const*, int)
; decoder-mode: arm
005ccf40  04 40 2d e5                                      str r4, [sp, #-4]!
005ccf44  01 c0 42 e2                                      sub ip, r2, #1
005ccf48  04 40 9d e5                                      ldr r4, [sp, #4]
005ccf4c  11 00 5c e3                                      cmp ip, #0x11
005ccf50  0c f1 8f 90                                      addls pc, pc, ip, lsl #2
005ccf54  19 00 00 ea                                      b #0x5ccfc0
005ccf58  1b 00 00 ea                                      b #0x5ccfcc
005ccf5c  1e 00 00 ea                                      b #0x5ccfdc
005ccf60  21 00 00 ea                                      b #0x5ccfec
005ccf64  24 00 00 ea                                      b #0x5ccffc
005ccf68  27 00 00 ea                                      b #0x5cd00c
005ccf6c  2a 00 00 ea                                      b #0x5cd01c
005ccf70  2d 00 00 ea                                      b #0x5cd02c
005ccf74  30 00 00 ea                                      b #0x5cd03c
005ccf78  10 00 00 ea                                      b #0x5ccfc0
005ccf7c  0f 00 00 ea                                      b #0x5ccfc0
005ccf80  31 00 00 ea                                      b #0x5cd04c
005ccf84  05 00 00 ea                                      b #0x5ccfa0
005ccf88  04 00 00 ea                                      b #0x5ccfa0
005ccf8c  03 00 00 ea                                      b #0x5ccfa0
005ccf90  02 00 00 ea                                      b #0x5ccfa0
005ccf94  05 00 00 ea                                      b #0x5ccfb0
005ccf98  33 00 00 ea                                      b #0x5cd06c
005ccf9c  2e 00 00 ea                                      b #0x5cd05c
005ccfa0  03 20 a0 e1                                      mov r2, r3
005ccfa4  04 30 a0 e1                                      mov r3, r4
005ccfa8  10 00 bd e8                                      ldm sp!, {r4}
005ccfac  1b fe ff ea                                      b #0x5cc820
005ccfb0  03 20 a0 e1                                      mov r2, r3
005ccfb4  04 30 a0 e1                                      mov r3, r4
005ccfb8  10 00 bd e8                                      ldm sp!, {r4}
005ccfbc  17 f0 ff ea                                      b #0x5c9020
005ccfc0  00 00 a0 e3                                      mov r0, #0
005ccfc4  10 00 bd e8                                      ldm sp!, {r4}
005ccfc8  1e ff 2f e1                                      bx lr
005ccfcc  03 20 a0 e1                                      mov r2, r3
005ccfd0  04 30 a0 e1                                      mov r3, r4
005ccfd4  10 00 bd e8                                      ldm sp!, {r4}
005ccfd8  aa f2 ff ea                                      b #0x5c9a88
005ccfdc  03 20 a0 e1                                      mov r2, r3
005ccfe0  04 30 a0 e1                                      mov r3, r4
005ccfe4  10 00 bd e8                                      ldm sp!, {r4}
005ccfe8  66 f2 ff ea                                      b #0x5c9988
005ccfec  03 20 a0 e1                                      mov r2, r3
005ccff0  04 30 a0 e1                                      mov r3, r4
005ccff4  10 00 bd e8                                      ldm sp!, {r4}
005ccff8  20 f2 ff ea                                      b #0x5c9880
005ccffc  03 20 a0 e1                                      mov r2, r3
005cd000  04 30 a0 e1                                      mov r3, r4
005cd004  10 00 bd e8                                      ldm sp!, {r4}
005cd008  da f1 ff ea                                      b #0x5c9778
005cd00c  03 20 a0 e1                                      mov r2, r3
005cd010  04 30 a0 e1                                      mov r3, r4
005cd014  10 00 bd e8                                      ldm sp!, {r4}
005cd018  8b f1 ff ea                                      b #0x5c964c
005cd01c  03 20 a0 e1                                      mov r2, r3
005cd020  04 30 a0 e1                                      mov r3, r4
005cd024  10 00 bd e8                                      ldm sp!, {r4}
005cd028  47 f1 ff ea                                      b #0x5c954c
005cd02c  03 20 a0 e1                                      mov r2, r3
005cd030  04 30 a0 e1                                      mov r3, r4
005cd034  10 00 bd e8                                      ldm sp!, {r4}
005cd038  01 f1 ff ea                                      b #0x5c9444
005cd03c  03 20 a0 e1                                      mov r2, r3
005cd040  04 30 a0 e1                                      mov r3, r4
005cd044  10 00 bd e8                                      ldm sp!, {r4}
005cd048  82 f0 ff ea                                      b #0x5c9258
005cd04c  03 20 a0 e1                                      mov r2, r3
005cd050  04 30 a0 e1                                      mov r3, r4
005cd054  10 00 bd e8                                      ldm sp!, {r4}
005cd058  f7 f8 ff ea                                      b #0x5cb43c
005cd05c  03 20 a0 e1                                      mov r2, r3
005cd060  04 30 a0 e1                                      mov r3, r4
005cd064  10 00 bd e8                                      ldm sp!, {r4}
005cd068  6c ff ff ea                                      b #0x5cce20
005cd06c  03 20 a0 e1                                      mov r2, r3
005cd070  04 30 a0 e1                                      mov r3, r4
005cd074  10 00 bd e8                                      ldm sp!, {r4}
005cd078  6b ef ff ea                                      b #0x5c8e2c

; FUNCTION 0x005cd07c, declared_size=92, range_size=92, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15getParameterCvtEtRNS_4core8CMatrix4IfEE
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::getParameterCvt(unsigned short, glitch::core::CMatrix4<float>&) const
; decoder-mode: arm
005cd07c  10 40 2d e9                                      push {r4, lr}
005cd080  04 30 90 e5                                      ldr r3, [r0, #4]
005cd084  be c0 d3 e1                                      ldrh ip, [r3, #0xe]
005cd088  01 00 5c e1                                      cmp ip, r1
005cd08c  05 00 00 9a                                      bls #0x5cd0a8
005cd090  20 30 93 e5                                      ldr r3, [r3, #0x20]
005cd094  01 32 93 e0                                      adds r3, r3, r1, lsl #4
005cd098  02 00 00 0a                                      beq #0x5cd0a8
005cd09c  06 c0 d3 e5                                      ldrb ip, [r3, #6]
005cd0a0  0b 00 5c e3                                      cmp ip, #0xb
005cd0a4  01 00 00 0a                                      beq #0x5cd0b0
005cd0a8  00 00 a0 e3                                      mov r0, #0
005cd0ac  10 80 bd e8                                      pop {r4, pc}
005cd0b0  08 10 93 e5                                      ldr r1, [r3, #8]
005cd0b4  00 00 51 e3                                      cmp r1, #0
005cd0b8  fa ff ff 0a                                      beq #0x5cd0a8
005cd0bc  0c 30 93 e5                                      ldr r3, [r3, #0xc]
005cd0c0  20 00 80 e2                                      add r0, r0, #0x20
005cd0c4  02 10 a0 e1                                      mov r1, r2
005cd0c8  03 00 80 e0                                      add r0, r0, r3
005cd0cc  56 b5 ff eb                                      bl #0x5ba62c
005cd0d0  01 00 a0 e3                                      mov r0, #1
005cd0d4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005cd1e8, declared_size=316, range_size=316, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15getParameterCvtEtNS0_29E_SHADER_PARAMETER_VALUE_TYPEEPvi
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::getParameterCvt(unsigned short, glitch::video::E_SHADER_PARAMETER_VALUE_TYPE, void*, int) const
; decoder-mode: arm
005cd1e8  04 40 2d e5                                      str r4, [sp, #-4]!
005cd1ec  01 c0 42 e2                                      sub ip, r2, #1
005cd1f0  04 40 9d e5                                      ldr r4, [sp, #4]
005cd1f4  11 00 5c e3                                      cmp ip, #0x11
005cd1f8  0c f1 8f 90                                      addls pc, pc, ip, lsl #2
005cd1fc  19 00 00 ea                                      b #0x5cd268
005cd200  1b 00 00 ea                                      b #0x5cd274
005cd204  1e 00 00 ea                                      b #0x5cd284
005cd208  21 00 00 ea                                      b #0x5cd294
005cd20c  24 00 00 ea                                      b #0x5cd2a4
005cd210  27 00 00 ea                                      b #0x5cd2b4
005cd214  2a 00 00 ea                                      b #0x5cd2c4
005cd218  2d 00 00 ea                                      b #0x5cd2d4
005cd21c  30 00 00 ea                                      b #0x5cd2e4
005cd220  10 00 00 ea                                      b #0x5cd268
005cd224  0f 00 00 ea                                      b #0x5cd268
005cd228  31 00 00 ea                                      b #0x5cd2f4
005cd22c  05 00 00 ea                                      b #0x5cd248
005cd230  04 00 00 ea                                      b #0x5cd248
005cd234  03 00 00 ea                                      b #0x5cd248
005cd238  02 00 00 ea                                      b #0x5cd248
005cd23c  05 00 00 ea                                      b #0x5cd258
005cd240  33 00 00 ea                                      b #0x5cd314
005cd244  2e 00 00 ea                                      b #0x5cd304
005cd248  03 20 a0 e1                                      mov r2, r3
005cd24c  04 30 a0 e1                                      mov r3, r4
005cd250  10 00 bd e8                                      ldm sp!, {r4}
005cd254  88 fe ff ea                                      b #0x5ccc7c
005cd258  03 20 a0 e1                                      mov r2, r3
005cd25c  04 30 a0 e1                                      mov r3, r4
005cd260  10 00 bd e8                                      ldm sp!, {r4}
005cd264  7e ea ff ea                                      b #0x5c7c64
005cd268  00 00 a0 e3                                      mov r0, #0
005cd26c  10 00 bd e8                                      ldm sp!, {r4}
005cd270  1e ff 2f e1                                      bx lr
005cd274  03 20 a0 e1                                      mov r2, r3
005cd278  04 30 a0 e1                                      mov r3, r4
005cd27c  10 00 bd e8                                      ldm sp!, {r4}
005cd280  fa ec ff ea                                      b #0x5c8670
005cd284  03 20 a0 e1                                      mov r2, r3
005cd288  04 30 a0 e1                                      mov r3, r4
005cd28c  10 00 bd e8                                      ldm sp!, {r4}
005cd290  bb ec ff ea                                      b #0x5c8584
005cd294  03 20 a0 e1                                      mov r2, r3
005cd298  04 30 a0 e1                                      mov r3, r4
005cd29c  10 00 bd e8                                      ldm sp!, {r4}
005cd2a0  7a ec ff ea                                      b #0x5c8490
005cd2a4  03 20 a0 e1                                      mov r2, r3
005cd2a8  04 30 a0 e1                                      mov r3, r4
005cd2ac  10 00 bd e8                                      ldm sp!, {r4}
005cd2b0  39 ec ff ea                                      b #0x5c839c
005cd2b4  03 20 a0 e1                                      mov r2, r3
005cd2b8  04 30 a0 e1                                      mov r3, r4
005cd2bc  10 00 bd e8                                      ldm sp!, {r4}
005cd2c0  ef eb ff ea                                      b #0x5c8284
005cd2c4  03 20 a0 e1                                      mov r2, r3
005cd2c8  04 30 a0 e1                                      mov r3, r4
005cd2cc  10 00 bd e8                                      ldm sp!, {r4}
005cd2d0  b0 eb ff ea                                      b #0x5c8198
005cd2d4  03 20 a0 e1                                      mov r2, r3
005cd2d8  04 30 a0 e1                                      mov r3, r4
005cd2dc  10 00 bd e8                                      ldm sp!, {r4}
005cd2e0  6f eb ff ea                                      b #0x5c80a4
005cd2e4  03 20 a0 e1                                      mov r2, r3
005cd2e8  04 30 a0 e1                                      mov r3, r4
005cd2ec  10 00 bd e8                                      ldm sp!, {r4}
005cd2f0  e6 ea ff ea                                      b #0x5c7e90
005cd2f4  03 20 a0 e1                                      mov r2, r3
005cd2f8  04 30 a0 e1                                      mov r3, r4
005cd2fc  10 00 bd e8                                      ldm sp!, {r4}
005cd300  01 f4 ff ea                                      b #0x5ca30c
005cd304  03 20 a0 e1                                      mov r2, r3
005cd308  04 30 a0 e1                                      mov r3, r4
005cd30c  10 00 bd e8                                      ldm sp!, {r4}
005cd310  70 ff ff ea                                      b #0x5cd0d8
005cd314  03 20 a0 e1                                      mov r2, r3
005cd318  04 30 a0 e1                                      mov r3, r4
005cd31c  10 00 bd e8                                      ldm sp!, {r4}
005cd320  da e9 ff ea                                      b #0x5c7a90

; FUNCTION 0x005cd3ec, declared_size=1628, range_size=1628, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE21deserializeAttributesEPNS_2io11IAttributesE
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::deserializeAttributes(glitch::io::IAttributes*)
; decoder-mode: arm
005cd3ec  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005cd3f0  44 26 9f e5                                      ldr r2, [pc, #0x644]
005cd3f4  44 36 9f e5                                      ldr r3, [pc, #0x644]
005cd3f8  73 df 4d e2                                      sub sp, sp, #0x1cc
005cd3fc  02 20 8f e0                                      add r2, pc, r2
005cd400  1c 20 8d e5                                      str r2, [sp, #0x1c]
005cd404  03 20 92 e7                                      ldr r2, [r2, r3]
005cd408  34 30 8d e5                                      str r3, [sp, #0x34]
005cd40c  24 00 8d e5                                      str r0, [sp, #0x24]
005cd410  00 20 92 e5                                      ldr r2, [r2]
005cd414  04 30 90 e5                                      ldr r3, [r0, #4]
005cd418  01 80 a0 e1                                      mov r8, r1
005cd41c  c4 21 8d e5                                      str r2, [sp, #0x1c4]
005cd420  be c0 d3 e1                                      ldrh ip, [r3, #0xe]
005cd424  00 00 5c e3                                      cmp ip, #0
005cd428  20 c0 8d e5                                      str ip, [sp, #0x20]
005cd42c  75 01 00 0a                                      beq #0x5cda08
005cd430  24 10 9d e5                                      ldr r1, [sp, #0x24]
005cd434  08 06 9f e5                                      ldr r0, [pc, #0x608]
005cd438  00 90 a0 e3                                      mov sb, #0
005cd43c  20 10 81 e2                                      add r1, r1, #0x20
005cd440  28 10 8d e5                                      str r1, [sp, #0x28]
005cd444  0c 10 a0 e1                                      mov r1, ip
005cd448  4b cf 8d e2                                      add ip, sp, #0x12c
005cd44c  30 00 8d e5                                      str r0, [sp, #0x30]
005cd450  08 c0 8d e5                                      str ip, [sp, #8]
005cd454  49 0f 8d e2                                      add r0, sp, #0x124
005cd458  38 c0 8d e2                                      add ip, sp, #0x38
005cd45c  fe 55 a0 e3                                      mov r5, #0x3f800000
005cd460  09 20 a0 e1                                      mov r2, sb
005cd464  98 a0 8d e2                                      add sl, sp, #0x98
005cd468  2c 00 8d e5                                      str r0, [sp, #0x2c]
005cd46c  00 c0 8d e5                                      str ip, [sp]
005cd470  01 00 52 e1                                      cmp r2, r1
005cd474  20 70 93 35                                      ldrlo r7, [r3, #0x20]
005cd478  00 70 a0 23                                      movhs r7, #0
005cd47c  00 30 98 e5                                      ldr r3, [r8]
005cd480  02 72 87 30                                      addlo r7, r7, r2, lsl #4
005cd484  00 10 97 e5                                      ldr r1, [r7]
005cd488  30 30 93 e5                                      ldr r3, [r3, #0x30]
005cd48c  08 00 a0 e1                                      mov r0, r8
005cd490  00 00 51 e3                                      cmp r1, #0
005cd494  04 10 81 12                                      addne r1, r1, #4
005cd498  33 ff 2f e1                                      blx r3
005cd49c  08 00 9d e5                                      ldr r0, [sp, #8]
005cd4a0  0c 60 97 e5                                      ldr r6, [r7, #0xc]
005cd4a4  2c f8 ff eb                                      bl #0x5cb55c
005cd4a8  08 30 97 e5                                      ldr r3, [r7, #8]
005cd4ac  00 00 53 e3                                      cmp r3, #0
005cd4b0  69 00 00 0a                                      beq #0x5cd65c
005cd4b4  28 00 9d e5                                      ldr r0, [sp, #0x28]
005cd4b8  48 10 8d e2                                      add r1, sp, #0x48
005cd4bc  4a 2f 8d e2                                      add r2, sp, #0x128
005cd4c0  06 60 80 e0                                      add r6, r0, r6
005cd4c4  54 30 8d e2                                      add r3, sp, #0x54
005cd4c8  dc c0 8d e2                                      add ip, sp, #0xdc
005cd4cc  fc 00 8d e2                                      add r0, sp, #0xfc
005cd4d0  03 40 a0 e3                                      mov r4, #3
005cd4d4  0c 10 8d e5                                      str r1, [sp, #0xc]
005cd4d8  10 20 8d e5                                      str r2, [sp, #0x10]
005cd4dc  04 30 8d e5                                      str r3, [sp, #4]
005cd4e0  14 c0 8d e5                                      str ip, [sp, #0x14]
005cd4e4  18 00 8d e5                                      str r0, [sp, #0x18]
005cd4e8  0a 00 a0 e1                                      mov r0, sl
005cd4ec  00 10 a0 e3                                      mov r1, #0
005cd4f0  40 20 a0 e3                                      mov r2, #0x40
005cd4f4  d9 03 f5 eb                                      bl #0x30e460
005cd4f8  01 30 a0 e3                                      mov r3, #1
005cd4fc  d8 30 cd e5                                      strb r3, [sp, #0xd8]
005cd500  98 50 8d e5                                      str r5, [sp, #0x98]
005cd504  ac 50 8d e5                                      str r5, [sp, #0xac]
005cd508  c0 50 8d e5                                      str r5, [sp, #0xc0]
005cd50c  d4 50 8d e5                                      str r5, [sp, #0xd4]
005cd510  06 30 d7 e5                                      ldrb r3, [r7, #6]
005cd514  01 30 43 e2                                      sub r3, r3, #1
005cd518  11 00 53 e3                                      cmp r3, #0x11
005cd51c  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
005cd520  48 00 00 ea                                      b #0x5cd648
005cd524  2b 01 00 ea                                      b #0x5cd9d8
005cd528  1a 01 00 ea                                      b #0x5cd998
005cd52c  09 01 00 ea                                      b #0x5cd958
005cd530  f8 00 00 ea                                      b #0x5cd918
005cd534  eb 00 00 ea                                      b #0x5cd8e8
005cd538  d9 00 00 ea                                      b #0x5cd8a4
005cd53c  c5 00 00 ea                                      b #0x5cd858
005cd540  af 00 00 ea                                      b #0x5cd804
005cd544  3f 00 00 ea                                      b #0x5cd648
005cd548  3e 00 00 ea                                      b #0x5cd648
005cd54c  8e 00 00 ea                                      b #0x5cd78c
005cd550  77 00 00 ea                                      b #0x5cd734
005cd554  76 00 00 ea                                      b #0x5cd734
005cd558  75 00 00 ea                                      b #0x5cd734
005cd55c  74 00 00 ea                                      b #0x5cd734
005cd560  5c 00 00 ea                                      b #0x5cd6d8
005cd564  4b 00 00 ea                                      b #0x5cd698
005cd568  ff ff ff ea                                      b #0x5cd56c
005cd56c  04 20 a0 e1                                      mov r2, r4
005cd570  00 30 98 e5                                      ldr r3, [r8]
005cd574  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
005cd578  08 10 a0 e1                                      mov r1, r8
005cd57c  0f e0 a0 e1                                      mov lr, pc
005cd580  d8 f2 93 e5                                      ldr pc, [r3, #0x2d8]
005cd584  24 31 9d e5                                      ldr r3, [sp, #0x124]
005cd588  00 00 53 e3                                      cmp r3, #0
005cd58c  00 20 93 15                                      ldrne r2, [r3]
005cd590  01 20 82 12                                      addne r2, r2, #1
005cd594  00 20 83 15                                      strne r2, [r3]
005cd598  00 00 96 e5                                      ldr r0, [r6]
005cd59c  00 30 86 e5                                      str r3, [r6]
005cd5a0  00 00 50 e3                                      cmp r0, #0
005cd5a4  11 00 00 0a                                      beq #0x5cd5f0
005cd5a8  00 30 90 e5                                      ldr r3, [r0]
005cd5ac  01 30 43 e2                                      sub r3, r3, #1
005cd5b0  00 00 53 e3                                      cmp r3, #0
005cd5b4  00 30 80 e5                                      str r3, [r0]
005cd5b8  0c 00 00 1a                                      bne #0x5cd5f0
005cd5bc  54 30 d0 e5                                      ldrb r3, [r0, #0x54]
005cd5c0  00 00 53 e3                                      cmp r3, #0
005cd5c4  06 00 00 1a                                      bne #0x5cd5e4
005cd5c8  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
005cd5cc  30 10 9d e5                                      ldr r1, [sp, #0x30]
005cd5d0  01 30 92 e7                                      ldr r3, [r2, r1]
005cd5d4  50 20 90 e5                                      ldr r2, [r0, #0x50]
005cd5d8  00 10 93 e5                                      ldr r1, [r3]
005cd5dc  00 10 82 e5                                      str r1, [r2]
005cd5e0  00 20 83 e5                                      str r2, [r3]
005cd5e4  00 30 a0 e3                                      mov r3, #0
005cd5e8  50 30 80 e5                                      str r3, [r0, #0x50]
005cd5ec  2f 03 f5 eb                                      bl #0x30e2b0
005cd5f0  24 01 9d e5                                      ldr r0, [sp, #0x124]
005cd5f4  00 00 50 e3                                      cmp r0, #0
005cd5f8  11 00 00 0a                                      beq #0x5cd644
005cd5fc  00 30 90 e5                                      ldr r3, [r0]
005cd600  01 30 43 e2                                      sub r3, r3, #1
005cd604  00 00 53 e3                                      cmp r3, #0
005cd608  00 30 80 e5                                      str r3, [r0]
005cd60c  0c 00 00 1a                                      bne #0x5cd644
005cd610  54 30 d0 e5                                      ldrb r3, [r0, #0x54]
005cd614  00 00 53 e3                                      cmp r3, #0
005cd618  06 00 00 1a                                      bne #0x5cd638
005cd61c  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
005cd620  30 c0 9d e5                                      ldr ip, [sp, #0x30]
005cd624  50 20 90 e5                                      ldr r2, [r0, #0x50]
005cd628  0c 30 91 e7                                      ldr r3, [r1, ip]
005cd62c  00 10 93 e5                                      ldr r1, [r3]
005cd630  00 10 82 e5                                      str r1, [r2]
005cd634  00 20 83 e5                                      str r2, [r3]
005cd638  00 30 a0 e3                                      mov r3, #0
005cd63c  50 30 80 e5                                      str r3, [r0, #0x50]
005cd640  1a 03 f5 eb                                      bl #0x30e2b0
005cd644  04 60 86 e2                                      add r6, r6, #4
005cd648  08 20 97 e5                                      ldr r2, [r7, #8]
005cd64c  02 30 44 e2                                      sub r3, r4, #2
005cd650  01 40 84 e2                                      add r4, r4, #1
005cd654  03 00 52 e1                                      cmp r2, r3
005cd658  a2 ff ff 8a                                      bhi #0x5cd4e8
005cd65c  00 30 98 e5                                      ldr r3, [r8]
005cd660  08 00 a0 e1                                      mov r0, r8
005cd664  0f e0 a0 e1                                      mov lr, pc
005cd668  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
005cd66c  08 00 9d e5                                      ldr r0, [sp, #8]
005cd670  2d bc ff eb                                      bl #0x5bc72c
005cd674  20 30 9d e5                                      ldr r3, [sp, #0x20]
005cd678  01 90 89 e2                                      add sb, sb, #1
005cd67c  79 20 ff e6                                      uxth r2, sb
005cd680  02 00 53 e1                                      cmp r3, r2
005cd684  df 00 00 0a                                      beq #0x5cda08
005cd688  24 c0 9d e5                                      ldr ip, [sp, #0x24]
005cd68c  04 30 9c e5                                      ldr r3, [ip, #4]
005cd690  be 10 d3 e1                                      ldrh r1, [r3, #0xe]
005cd694  75 ff ff ea                                      b #0x5cd470
005cd698  04 20 a0 e1                                      mov r2, r4
005cd69c  00 00 9d e5                                      ldr r0, [sp]
005cd6a0  08 10 a0 e1                                      mov r1, r8
005cd6a4  00 30 98 e5                                      ldr r3, [r8]
005cd6a8  0f e0 a0 e1                                      mov lr, pc
005cd6ac  40 f1 93 e5                                      ldr pc, [r3, #0x140]
005cd6b0  00 c0 9d e5                                      ldr ip, [sp]
005cd6b4  0f 00 9c e8                                      ldm ip, {r0, r1, r2, r3}
005cd6b8  0f 00 86 e8                                      stm r6, {r0, r1, r2, r3}
005cd6bc  08 20 97 e5                                      ldr r2, [r7, #8]
005cd6c0  02 30 44 e2                                      sub r3, r4, #2
005cd6c4  10 60 86 e2                                      add r6, r6, #0x10
005cd6c8  03 00 52 e1                                      cmp r2, r3
005cd6cc  01 40 84 e2                                      add r4, r4, #1
005cd6d0  84 ff ff 8a                                      bhi #0x5cd4e8
005cd6d4  e0 ff ff ea                                      b #0x5cd65c
005cd6d8  04 10 a0 e1                                      mov r1, r4
005cd6dc  00 30 98 e5                                      ldr r3, [r8]
005cd6e0  08 00 a0 e1                                      mov r0, r8
005cd6e4  0f e0 a0 e1                                      mov lr, pc
005cd6e8  28 f1 93 e5                                      ldr pc, [r3, #0x128]
005cd6ec  04 20 a0 e3                                      mov r2, #4
005cd6f0  50 38 e7 e7                                      ubfx r3, r0, #0x10, #8
005cd6f4  50 ec e7 e7                                      ubfx lr, r0, #0x18, #8
005cd6f8  50 c4 e7 e7                                      ubfx ip, r0, #8, #8
005cd6fc  48 00 cd e5                                      strb r0, [sp, #0x48]
005cd700  0c 10 9d e5                                      ldr r1, [sp, #0xc]
005cd704  06 00 a0 e1                                      mov r0, r6
005cd708  4a 30 cd e5                                      strb r3, [sp, #0x4a]
005cd70c  49 c0 cd e5                                      strb ip, [sp, #0x49]
005cd710  4b e0 cd e5                                      strb lr, [sp, #0x4b]
005cd714  53 04 f5 eb                                      bl #0x30e868
005cd718  08 20 97 e5                                      ldr r2, [r7, #8]
005cd71c  02 30 44 e2                                      sub r3, r4, #2
005cd720  04 60 86 e2                                      add r6, r6, #4
005cd724  03 00 52 e1                                      cmp r2, r3
005cd728  01 40 84 e2                                      add r4, r4, #1
005cd72c  6d ff ff 8a                                      bhi #0x5cd4e8
005cd730  c9 ff ff ea                                      b #0x5cd65c
005cd734  04 20 a0 e1                                      mov r2, r4
005cd738  00 30 98 e5                                      ldr r3, [r8]
005cd73c  10 00 9d e5                                      ldr r0, [sp, #0x10]
005cd740  08 10 a0 e1                                      mov r1, r8
005cd744  0f e0 a0 e1                                      mov lr, pc
005cd748  c0 f2 93 e5                                      ldr pc, [r3, #0x2c0]
005cd74c  28 31 9d e5                                      ldr r3, [sp, #0x128]
005cd750  00 00 53 e3                                      cmp r3, #0
005cd754  04 20 93 15                                      ldrne r2, [r3, #4]
005cd758  01 20 82 12                                      addne r2, r2, #1
005cd75c  04 20 83 15                                      strne r2, [r3, #4]
005cd760  00 00 96 e5                                      ldr r0, [r6]
005cd764  00 30 86 e5                                      str r3, [r6]
005cd768  00 00 50 e3                                      cmp r0, #0
005cd76c  00 00 00 0a                                      beq #0x5cd774
005cd770  83 3f f5 eb                                      bl #0x31d584
005cd774  28 01 9d e5                                      ldr r0, [sp, #0x128]
005cd778  00 00 50 e3                                      cmp r0, #0
005cd77c  b0 ff ff 0a                                      beq #0x5cd644
005cd780  7f 3f f5 eb                                      bl #0x31d584
005cd784  04 60 86 e2                                      add r6, r6, #4
005cd788  ae ff ff ea                                      b #0x5cd648
005cd78c  00 30 98 e5                                      ldr r3, [r8]
005cd790  04 20 a0 e1                                      mov r2, r4
005cd794  04 00 9d e5                                      ldr r0, [sp, #4]
005cd798  08 10 a0 e1                                      mov r1, r8
005cd79c  0f e0 a0 e1                                      mov lr, pc
005cd7a0  18 f2 93 e5                                      ldr pc, [r3, #0x218]
005cd7a4  04 10 9d e5                                      ldr r1, [sp, #4]
005cd7a8  41 20 a0 e3                                      mov r2, #0x41
005cd7ac  0a 00 a0 e1                                      mov r0, sl
005cd7b0  2c 04 f5 eb                                      bl #0x30e868
005cd7b4  0a 00 a0 e1                                      mov r0, sl
005cd7b8  77 b2 ff eb                                      bl #0x5ba19c
005cd7bc  00 00 50 e3                                      cmp r0, #0
005cd7c0  00 30 a0 13                                      movne r3, #0
005cd7c4  00 30 86 15                                      strne r3, [r6]
005cd7c8  9d ff ff 1a                                      bne #0x5cd644
005cd7cc  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
005cd7d0  30 10 9d e5                                      ldr r1, [sp, #0x30]
005cd7d4  01 30 92 e7                                      ldr r3, [r2, r1]
005cd7d8  00 b0 93 e5                                      ldr fp, [r3]
005cd7dc  00 00 5b e3                                      cmp fp, #0
005cd7e0  91 00 00 0a                                      beq #0x5cda2c
005cd7e4  00 20 9b e5                                      ldr r2, [fp]
005cd7e8  00 20 83 e5                                      str r2, [r3]
005cd7ec  0b 00 a0 e1                                      mov r0, fp
005cd7f0  0a 10 a0 e1                                      mov r1, sl
005cd7f4  d3 f5 ff eb                                      bl #0x5caf48
005cd7f8  00 b0 86 e5                                      str fp, [r6]
005cd7fc  04 60 86 e2                                      add r6, r6, #4
005cd800  90 ff ff ea                                      b #0x5cd648
005cd804  04 20 a0 e1                                      mov r2, r4
005cd808  00 30 98 e5                                      ldr r3, [r8]
005cd80c  14 00 9d e5                                      ldr r0, [sp, #0x14]
005cd810  08 10 a0 e1                                      mov r1, r8
005cd814  0f e0 a0 e1                                      mov lr, pc
005cd818  d0 f1 93 e5                                      ldr pc, [r3, #0x1d0]
005cd81c  e4 20 9d e5                                      ldr r2, [sp, #0xe4]
005cd820  e8 30 9d e5                                      ldr r3, [sp, #0xe8]
005cd824  e0 10 9d e5                                      ldr r1, [sp, #0xe0]
005cd828  dc 00 9d e5                                      ldr r0, [sp, #0xdc]
005cd82c  0c 30 86 e5                                      str r3, [r6, #0xc]
005cd830  04 10 86 e5                                      str r1, [r6, #4]
005cd834  00 00 86 e5                                      str r0, [r6]
005cd838  08 20 86 e5                                      str r2, [r6, #8]
005cd83c  08 20 97 e5                                      ldr r2, [r7, #8]
005cd840  02 30 44 e2                                      sub r3, r4, #2
005cd844  10 60 86 e2                                      add r6, r6, #0x10
005cd848  03 00 52 e1                                      cmp r2, r3
005cd84c  01 40 84 e2                                      add r4, r4, #1
005cd850  24 ff ff 8a                                      bhi #0x5cd4e8
005cd854  80 ff ff ea                                      b #0x5cd65c
005cd858  04 20 a0 e1                                      mov r2, r4
005cd85c  00 30 98 e5                                      ldr r3, [r8]
005cd860  08 10 a0 e1                                      mov r1, r8
005cd864  18 00 9d e5                                      ldr r0, [sp, #0x18]
005cd868  0f e0 a0 e1                                      mov lr, pc
005cd86c  b8 f1 93 e5                                      ldr pc, [r3, #0x1b8]
005cd870  00 21 9d e5                                      ldr r2, [sp, #0x100]
005cd874  04 31 9d e5                                      ldr r3, [sp, #0x104]
005cd878  fc 10 9d e5                                      ldr r1, [sp, #0xfc]
005cd87c  04 20 86 e5                                      str r2, [r6, #4]
005cd880  08 30 86 e5                                      str r3, [r6, #8]
005cd884  00 10 86 e5                                      str r1, [r6]
005cd888  08 20 97 e5                                      ldr r2, [r7, #8]
005cd88c  02 30 44 e2                                      sub r3, r4, #2
005cd890  0c 60 86 e2                                      add r6, r6, #0xc
005cd894  03 00 52 e1                                      cmp r2, r3
005cd898  01 40 84 e2                                      add r4, r4, #1
005cd89c  11 ff ff 8a                                      bhi #0x5cd4e8
005cd8a0  6d ff ff ea                                      b #0x5cd65c
005cd8a4  04 20 a0 e1                                      mov r2, r4
005cd8a8  00 30 98 e5                                      ldr r3, [r8]
005cd8ac  45 0f 8d e2                                      add r0, sp, #0x114
005cd8b0  08 10 a0 e1                                      mov r1, r8
005cd8b4  0f e0 a0 e1                                      mov lr, pc
005cd8b8  a0 f1 93 e5                                      ldr pc, [r3, #0x1a0]
005cd8bc  18 31 9d e5                                      ldr r3, [sp, #0x118]
005cd8c0  14 21 9d e5                                      ldr r2, [sp, #0x114]
005cd8c4  04 30 86 e5                                      str r3, [r6, #4]
005cd8c8  00 20 86 e5                                      str r2, [r6]
005cd8cc  08 20 97 e5                                      ldr r2, [r7, #8]
005cd8d0  02 30 44 e2                                      sub r3, r4, #2
005cd8d4  08 60 86 e2                                      add r6, r6, #8
005cd8d8  03 00 52 e1                                      cmp r2, r3
005cd8dc  01 40 84 e2                                      add r4, r4, #1
005cd8e0  00 ff ff 8a                                      bhi #0x5cd4e8
005cd8e4  5c ff ff ea                                      b #0x5cd65c
005cd8e8  00 30 98 e5                                      ldr r3, [r8]
005cd8ec  04 10 a0 e1                                      mov r1, r4
005cd8f0  08 00 a0 e1                                      mov r0, r8
005cd8f4  0f e0 a0 e1                                      mov lr, pc
005cd8f8  74 f0 93 e5                                      ldr pc, [r3, #0x74]
005cd8fc  04 00 86 e4                                      str r0, [r6], #4
005cd900  08 20 97 e5                                      ldr r2, [r7, #8]
005cd904  02 30 44 e2                                      sub r3, r4, #2
005cd908  01 40 84 e2                                      add r4, r4, #1
005cd90c  03 00 52 e1                                      cmp r2, r3
005cd910  f4 fe ff 8a                                      bhi #0x5cd4e8
005cd914  50 ff ff ea                                      b #0x5cd65c
005cd918  04 20 a0 e1                                      mov r2, r4
005cd91c  00 30 98 e5                                      ldr r3, [r8]
005cd920  ec 00 8d e2                                      add r0, sp, #0xec
005cd924  08 10 a0 e1                                      mov r1, r8
005cd928  0f e0 a0 e1                                      mov lr, pc
005cd92c  88 f1 93 e5                                      ldr pc, [r3, #0x188]
005cd930  ec 00 8d e2                                      add r0, sp, #0xec
005cd934  0f 00 90 e8                                      ldm r0, {r0, r1, r2, r3}
005cd938  0f 00 86 e8                                      stm r6, {r0, r1, r2, r3}
005cd93c  08 20 97 e5                                      ldr r2, [r7, #8]
005cd940  02 30 44 e2                                      sub r3, r4, #2
005cd944  10 60 86 e2                                      add r6, r6, #0x10
005cd948  03 00 52 e1                                      cmp r2, r3
005cd94c  01 40 84 e2                                      add r4, r4, #1
005cd950  e4 fe ff 8a                                      bhi #0x5cd4e8
005cd954  40 ff ff ea                                      b #0x5cd65c
005cd958  04 20 a0 e1                                      mov r2, r4
005cd95c  00 30 98 e5                                      ldr r3, [r8]
005cd960  08 10 a0 e1                                      mov r1, r8
005cd964  42 0f 8d e2                                      add r0, sp, #0x108
005cd968  0f e0 a0 e1                                      mov lr, pc
005cd96c  70 f1 93 e5                                      ldr pc, [r3, #0x170]
005cd970  42 1f 8d e2                                      add r1, sp, #0x108
005cd974  0e 00 91 e8                                      ldm r1, {r1, r2, r3}
005cd978  0e 00 86 e8                                      stm r6, {r1, r2, r3}
005cd97c  08 20 97 e5                                      ldr r2, [r7, #8]
005cd980  02 30 44 e2                                      sub r3, r4, #2
005cd984  0c 60 86 e2                                      add r6, r6, #0xc
005cd988  03 00 52 e1                                      cmp r2, r3
005cd98c  01 40 84 e2                                      add r4, r4, #1
005cd990  d4 fe ff 8a                                      bhi #0x5cd4e8
005cd994  30 ff ff ea                                      b #0x5cd65c
005cd998  04 20 a0 e1                                      mov r2, r4
005cd99c  00 30 98 e5                                      ldr r3, [r8]
005cd9a0  47 0f 8d e2                                      add r0, sp, #0x11c
005cd9a4  08 10 a0 e1                                      mov r1, r8
005cd9a8  0f e0 a0 e1                                      mov lr, pc
005cd9ac  58 f1 93 e5                                      ldr pc, [r3, #0x158]
005cd9b0  20 31 9d e5                                      ldr r3, [sp, #0x120]
005cd9b4  1c 21 9d e5                                      ldr r2, [sp, #0x11c]
005cd9b8  0c 00 86 e8                                      stm r6, {r2, r3}
005cd9bc  08 20 97 e5                                      ldr r2, [r7, #8]
005cd9c0  02 30 44 e2                                      sub r3, r4, #2
005cd9c4  08 60 86 e2                                      add r6, r6, #8
005cd9c8  03 00 52 e1                                      cmp r2, r3
005cd9cc  01 40 84 e2                                      add r4, r4, #1
005cd9d0  c4 fe ff 8a                                      bhi #0x5cd4e8
005cd9d4  20 ff ff ea                                      b #0x5cd65c
005cd9d8  00 30 98 e5                                      ldr r3, [r8]
005cd9dc  04 10 a0 e1                                      mov r1, r4
005cd9e0  08 00 a0 e1                                      mov r0, r8
005cd9e4  0f e0 a0 e1                                      mov lr, pc
005cd9e8  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
005cd9ec  04 00 86 e4                                      str r0, [r6], #4
005cd9f0  08 20 97 e5                                      ldr r2, [r7, #8]
005cd9f4  02 30 44 e2                                      sub r3, r4, #2
005cd9f8  01 40 84 e2                                      add r4, r4, #1
005cd9fc  03 00 52 e1                                      cmp r2, r3
005cda00  b8 fe ff 8a                                      bhi #0x5cd4e8
005cda04  14 ff ff ea                                      b #0x5cd65c
005cda08  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
005cda0c  34 00 9d e5                                      ldr r0, [sp, #0x34]
005cda10  c4 21 9d e5                                      ldr r2, [sp, #0x1c4]
005cda14  00 30 91 e7                                      ldr r3, [r1, r0]
005cda18  00 30 93 e5                                      ldr r3, [r3]
005cda1c  03 00 52 e1                                      cmp r2, r3
005cda20  04 00 00 1a                                      bne #0x5cda38
005cda24  73 df 8d e2                                      add sp, sp, #0x1cc
005cda28  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005cda2c  34 f6 ff eb                                      bl #0x5cb304
005cda30  00 b0 a0 e1                                      mov fp, r0
005cda34  6c ff ff ea                                      b #0x5cd7ec
005cda38  34 02 f5 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
005cda3c  94 76 3c 00 ac 40 00 00 c0 3c 00 00              .byte 0x94, 0x76, 0x3c, 0x00, 0xac, 0x40, 0x00, 0x00, 0xc0, 0x3c, 0x00, 0x00

; FUNCTION 0x005cdb3c, declared_size=2340, range_size=2340, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE19serializeAttributesEPNS_2io11IAttributesE
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::serializeAttributes(glitch::io::IAttributes*) const
; decoder-mode: arm
005cdb3c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005cdb40  f0 28 9f e5                                      ldr r2, [pc, #0x8f0]
005cdb44  f0 38 9f e5                                      ldr r3, [pc, #0x8f0]
005cdb48  ab df 4d e2                                      sub sp, sp, #0x2ac
005cdb4c  02 20 8f e0                                      add r2, pc, r2
005cdb50  50 20 8d e5                                      str r2, [sp, #0x50]
005cdb54  03 20 92 e7                                      ldr r2, [r2, r3]
005cdb58  54 30 8d e5                                      str r3, [sp, #0x54]
005cdb5c  38 00 8d e5                                      str r0, [sp, #0x38]
005cdb60  00 20 92 e5                                      ldr r2, [r2]
005cdb64  04 30 90 e5                                      ldr r3, [r0, #4]
005cdb68  01 60 a0 e1                                      mov r6, r1
005cdb6c  a4 22 8d e5                                      str r2, [sp, #0x2a4]
005cdb70  be c0 d3 e1                                      ldrh ip, [r3, #0xe]
005cdb74  00 00 5c e3                                      cmp ip, #0
005cdb78  34 c0 8d e5                                      str ip, [sp, #0x34]
005cdb7c  23 02 00 0a                                      beq #0x5ce410
005cdb80  b8 28 9f e5                                      ldr r2, [pc, #0x8b8]
005cdb84  b8 08 9f e5                                      ldr r0, [pc, #0x8b8]
005cdb88  b8 18 9f e5                                      ldr r1, [pc, #0x8b8]
005cdb8c  44 20 8d e5                                      str r2, [sp, #0x44]
005cdb90  b4 28 9f e5                                      ldr r2, [pc, #0x8b4]
005cdb94  3c 00 8d e5                                      str r0, [sp, #0x3c]
005cdb98  38 00 9d e5                                      ldr r0, [sp, #0x38]
005cdb9c  02 20 8f e0                                      add r2, pc, r2
005cdba0  24 20 8d e5                                      str r2, [sp, #0x24]
005cdba4  a4 28 9f e5                                      ldr r2, [pc, #0x8a4]
005cdba8  00 c0 a0 e3                                      mov ip, #0
005cdbac  40 10 8d e5                                      str r1, [sp, #0x40]
005cdbb0  02 20 8f e0                                      add r2, pc, r2
005cdbb4  28 20 8d e5                                      str r2, [sp, #0x28]
005cdbb8  94 28 9f e5                                      ldr r2, [pc, #0x894]
005cdbbc  34 10 9d e5                                      ldr r1, [sp, #0x34]
005cdbc0  30 c0 8d e5                                      str ip, [sp, #0x30]
005cdbc4  02 20 8f e0                                      add r2, pc, r2
005cdbc8  2c 20 8d e5                                      str r2, [sp, #0x2c]
005cdbcc  20 00 80 e2                                      add r0, r0, #0x20
005cdbd0  0c 20 a0 e1                                      mov r2, ip
005cdbd4  a4 c0 8d e2                                      add ip, sp, #0xa4
005cdbd8  4c 00 8d e5                                      str r0, [sp, #0x4c]
005cdbdc  20 c0 8d e5                                      str ip, [sp, #0x20]
005cdbe0  01 00 52 e1                                      cmp r2, r1
005cdbe4  20 90 93 35                                      ldrlo sb, [r3, #0x20]
005cdbe8  00 90 a0 23                                      movhs sb, #0
005cdbec  00 30 96 e5                                      ldr r3, [r6]
005cdbf0  02 92 89 30                                      addlo sb, sb, r2, lsl #4
005cdbf4  00 10 99 e5                                      ldr r1, [sb]
005cdbf8  30 30 93 e5                                      ldr r3, [r3, #0x30]
005cdbfc  06 00 a0 e1                                      mov r0, r6
005cdc00  00 00 51 e3                                      cmp r1, #0
005cdc04  04 10 81 12                                      addne r1, r1, #4
005cdc08  33 ff 2f e1                                      blx r3
005cdc0c  00 00 a0 e3                                      mov r0, #0
005cdc10  b4 50 d9 e1                                      ldrh r5, [sb, #4]
005cdc14  22 69 00 eb                                      bl #0x5e80a4
005cdc18  00 30 a0 e1                                      mov r3, r0
005cdc1c  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
005cdc20  01 40 a0 e3                                      mov r4, #1
005cdc24  00 40 8d e5                                      str r4, [sp]
005cdc28  05 20 a0 e1                                      mov r2, r5
005cdc2c  00 10 8f e0                                      add r1, pc, r0
005cdc30  00 c0 96 e5                                      ldr ip, [r6]
005cdc34  06 00 a0 e1                                      mov r0, r6
005cdc38  0f e0 a0 e1                                      mov lr, pc
005cdc3c  f4 f0 9c e5                                      ldr pc, [ip, #0xf4]
005cdc40  00 00 a0 e3                                      mov r0, #0
005cdc44  06 50 d9 e5                                      ldrb r5, [sb, #6]
005cdc48  19 69 00 eb                                      bl #0x5e80b4
005cdc4c  40 c0 9d e5                                      ldr ip, [sp, #0x40]
005cdc50  00 40 8d e5                                      str r4, [sp]
005cdc54  00 30 a0 e1                                      mov r3, r0
005cdc58  0c 10 8f e0                                      add r1, pc, ip
005cdc5c  05 20 a0 e1                                      mov r2, r5
005cdc60  06 00 a0 e1                                      mov r0, r6
005cdc64  00 c0 96 e5                                      ldr ip, [r6]
005cdc68  0f e0 a0 e1                                      mov lr, pc
005cdc6c  f4 f0 9c e5                                      ldr pc, [ip, #0xf4]
005cdc70  44 20 9d e5                                      ldr r2, [sp, #0x44]
005cdc74  04 30 a0 e1                                      mov r3, r4
005cdc78  06 00 a0 e1                                      mov r0, r6
005cdc7c  02 10 8f e0                                      add r1, pc, r2
005cdc80  00 c0 96 e5                                      ldr ip, [r6]
005cdc84  08 20 99 e5                                      ldr r2, [sb, #8]
005cdc88  0f e0 a0 e1                                      mov lr, pc
005cdc8c  4c f0 9c e5                                      ldr pc, [ip, #0x4c]
005cdc90  20 00 9d e5                                      ldr r0, [sp, #0x20]
005cdc94  0c 80 99 e5                                      ldr r8, [sb, #0xc]
005cdc98  2f f6 ff eb                                      bl #0x5cb55c
005cdc9c  08 30 99 e5                                      ldr r3, [sb, #8]
005cdca0  04 00 53 e1                                      cmp r3, r4
005cdca4  1c 30 8d e5                                      str r3, [sp, #0x1c]
005cdca8  ba 01 00 0a                                      beq #0x5ce398
005cdcac  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
005cdcb0  00 00 51 e3                                      cmp r1, #0
005cdcb4  9f 00 00 0a                                      beq #0x5cdf38
005cdcb8  4c 30 9d e5                                      ldr r3, [sp, #0x4c]
005cdcbc  94 27 9f e5                                      ldr r2, [pc, #0x794]
005cdcc0  fe 45 a0 e3                                      mov r4, #0x3f800000
005cdcc4  08 80 83 e0                                      add r8, r3, r8
005cdcc8  48 20 8d e5                                      str r2, [sp, #0x48]
005cdccc  01 30 a0 e1                                      mov r3, r1
005cdcd0  00 50 a0 e3                                      mov r5, #0
005cdcd4  58 b0 8d e2                                      add fp, sp, #0x58
005cdcd8  a3 af 8d e2                                      add sl, sp, #0x28c
005cdcdc  06 70 a0 e1                                      mov r7, r6
005cdce0  01 00 53 e3                                      cmp r3, #1
005cdce4  19 00 00 9a                                      bls #0x5cdd50
005cdce8  24 10 9d e5                                      ldr r1, [sp, #0x24]
005cdcec  0a 00 a0 e1                                      mov r0, sl
005cdcf0  9c a2 8d e5                                      str sl, [sp, #0x29c]
005cdcf4  01 20 a0 e1                                      mov r2, r1
005cdcf8  a0 a2 8d e5                                      str sl, [sp, #0x2a0]
005cdcfc  bc 60 f5 eb                                      bl #0x325ff4
005cdd00  20 c0 9d e5                                      ldr ip, [sp, #0x20]
005cdd04  0a 10 a0 e1                                      mov r1, sl
005cdd08  0c 00 8c e2                                      add r0, ip, #0xc
005cdd0c  88 b2 ff eb                                      bl #0x5ba734
005cdd10  a0 02 9d e5                                      ldr r0, [sp, #0x2a0]
005cdd14  0a 00 50 e1                                      cmp r0, sl
005cdd18  02 00 00 0a                                      beq #0x5cdd28
005cdd1c  00 00 50 e3                                      cmp r0, #0
005cdd20  00 00 00 0a                                      beq #0x5cdd28
005cdd24  c9 09 f5 eb                                      bl #0x310450
005cdd28  20 00 9d e5                                      ldr r0, [sp, #0x20]
005cdd2c  28 10 9d e5                                      ldr r1, [sp, #0x28]
005cdd30  08 60 80 e2                                      add r6, r0, #8
005cdd34  06 00 a0 e1                                      mov r0, r6
005cdd38  16 15 f5 eb                                      bl #0x313198
005cdd3c  05 10 a0 e1                                      mov r1, r5
005cdd40  06 00 a0 e1                                      mov r0, r6
005cdd44  78 db fa eb                                      bl #0x484b2c
005cdd48  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
005cdd4c  11 15 f5 eb                                      bl #0x313198
005cdd50  00 60 a0 e3                                      mov r6, #0
005cdd54  40 20 a0 e3                                      mov r2, #0x40
005cdd58  06 10 a0 e1                                      mov r1, r6
005cdd5c  0b 00 a0 e1                                      mov r0, fp
005cdd60  be 01 f5 eb                                      bl #0x30e460
005cdd64  0b 00 a0 e1                                      mov r0, fp
005cdd68  06 10 a0 e1                                      mov r1, r6
005cdd6c  40 20 a0 e3                                      mov r2, #0x40
005cdd70  ba 01 f5 eb                                      bl #0x30e460
005cdd74  01 30 a0 e3                                      mov r3, #1
005cdd78  98 30 cd e5                                      strb r3, [sp, #0x98]
005cdd7c  58 40 8d e5                                      str r4, [sp, #0x58]
005cdd80  6c 40 8d e5                                      str r4, [sp, #0x6c]
005cdd84  80 40 8d e5                                      str r4, [sp, #0x80]
005cdd88  94 40 8d e5                                      str r4, [sp, #0x94]
005cdd8c  06 30 d9 e5                                      ldrb r3, [sb, #6]
005cdd90  01 30 43 e2                                      sub r3, r3, #1
005cdd94  11 00 53 e3                                      cmp r3, #0x11
005cdd98  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
005cdd9c  43 00 00 ea                                      b #0x5cdeb0
005cdda0  fa 00 00 ea                                      b #0x5ce190
005cdda4  e4 00 00 ea                                      b #0x5ce13c
005cdda8  ce 00 00 ea                                      b #0x5ce0e8
005cddac  b8 00 00 ea                                      b #0x5ce094
005cddb0  a2 00 00 ea                                      b #0x5ce040
005cddb4  89 00 00 ea                                      b #0x5cdfe0
005cddb8  70 00 00 ea                                      b #0x5cdf80
005cddbc  41 00 00 ea                                      b #0x5cdec8
005cddc0  3a 00 00 ea                                      b #0x5cdeb0
005cddc4  39 00 00 ea                                      b #0x5cdeb0
005cddc8  58 01 00 ea                                      b #0x5ce330
005cddcc  38 01 00 ea                                      b #0x5ce2b4
005cddd0  37 01 00 ea                                      b #0x5ce2b4
005cddd4  36 01 00 ea                                      b #0x5ce2b4
005cddd8  35 01 00 ea                                      b #0x5ce2b4
005cdddc  19 01 00 ea                                      b #0x5ce248
005cdde0  ff 00 00 ea                                      b #0x5ce1e4
005cdde4  ff ff ff ea                                      b #0x5cdde8
005cdde8  00 30 97 e5                                      ldr r3, [r7]
005cddec  4f 6f 8d e2                                      add r6, sp, #0x13c
005cddf0  e4 20 9d e5                                      ldr r2, [sp, #0xe4]
005cddf4  c8 c2 93 e5                                      ldr ip, [r3, #0x2c8]
005cddf8  06 00 a0 e1                                      mov r0, r6
005cddfc  e8 10 9d e5                                      ldr r1, [sp, #0xe8]
005cde00  14 c0 8d e5                                      str ip, [sp, #0x14]
005cde04  4c 61 8d e5                                      str r6, [sp, #0x14c]
005cde08  50 61 8d e5                                      str r6, [sp, #0x150]
005cde0c  78 60 f5 eb                                      bl #0x325ff4
005cde10  00 30 98 e5                                      ldr r3, [r8]
005cde14  50 11 9d e5                                      ldr r1, [sp, #0x150]
005cde18  14 c0 9d e5                                      ldr ip, [sp, #0x14]
005cde1c  00 00 53 e3                                      cmp r3, #0
005cde20  9c 30 8d e5                                      str r3, [sp, #0x9c]
005cde24  00 20 93 15                                      ldrne r2, [r3]
005cde28  07 00 a0 e1                                      mov r0, r7
005cde2c  01 20 82 12                                      addne r2, r2, #1
005cde30  00 20 83 15                                      strne r2, [r3]
005cde34  9c 20 8d e2                                      add r2, sp, #0x9c
005cde38  00 30 a0 e3                                      mov r3, #0
005cde3c  3c ff 2f e1                                      blx ip
005cde40  9c 00 9d e5                                      ldr r0, [sp, #0x9c]
005cde44  00 00 50 e3                                      cmp r0, #0
005cde48  11 00 00 0a                                      beq #0x5cde94
005cde4c  00 30 90 e5                                      ldr r3, [r0]
005cde50  01 30 43 e2                                      sub r3, r3, #1
005cde54  00 00 53 e3                                      cmp r3, #0
005cde58  00 30 80 e5                                      str r3, [r0]
005cde5c  0c 00 00 1a                                      bne #0x5cde94
005cde60  54 30 d0 e5                                      ldrb r3, [r0, #0x54]
005cde64  00 00 53 e3                                      cmp r3, #0
005cde68  06 00 00 1a                                      bne #0x5cde88
005cde6c  50 20 9d e5                                      ldr r2, [sp, #0x50]
005cde70  48 10 9d e5                                      ldr r1, [sp, #0x48]
005cde74  01 30 92 e7                                      ldr r3, [r2, r1]
005cde78  50 20 90 e5                                      ldr r2, [r0, #0x50]
005cde7c  00 10 93 e5                                      ldr r1, [r3]
005cde80  00 10 82 e5                                      str r1, [r2]
005cde84  00 20 83 e5                                      str r2, [r3]
005cde88  00 30 a0 e3                                      mov r3, #0
005cde8c  50 30 80 e5                                      str r3, [r0, #0x50]
005cde90  06 01 f5 eb                                      bl #0x30e2b0
005cde94  50 01 9d e5                                      ldr r0, [sp, #0x150]
005cde98  06 00 50 e1                                      cmp r0, r6
005cde9c  02 00 00 0a                                      beq #0x5cdeac
005cdea0  00 00 50 e3                                      cmp r0, #0
005cdea4  00 00 00 0a                                      beq #0x5cdeac
005cdea8  68 09 f5 eb                                      bl #0x310450
005cdeac  04 80 88 e2                                      add r8, r8, #4
005cdeb0  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
005cdeb4  01 50 85 e2                                      add r5, r5, #1
005cdeb8  03 00 55 e1                                      cmp r5, r3
005cdebc  1c 00 00 0a                                      beq #0x5cdf34
005cdec0  08 30 99 e5                                      ldr r3, [sb, #8]
005cdec4  85 ff ff ea                                      b #0x5cdce0
005cdec8  00 30 97 e5                                      ldr r3, [r7]
005cdecc  73 cf 8d e2                                      add ip, sp, #0x1cc
005cded0  0c 00 a0 e1                                      mov r0, ip
005cded4  e8 10 9d e5                                      ldr r1, [sp, #0xe8]
005cded8  e4 20 9d e5                                      ldr r2, [sp, #0xe4]
005cdedc  c0 61 93 e5                                      ldr r6, [r3, #0x1c0]
005cdee0  dc c1 8d e5                                      str ip, [sp, #0x1dc]
005cdee4  e0 c1 8d e5                                      str ip, [sp, #0x1e0]
005cdee8  14 c0 8d e5                                      str ip, [sp, #0x14]
005cdeec  40 60 f5 eb                                      bl #0x325ff4
005cdef0  07 00 a0 e1                                      mov r0, r7
005cdef4  e0 11 9d e5                                      ldr r1, [sp, #0x1e0]
005cdef8  08 20 a0 e1                                      mov r2, r8
005cdefc  00 30 a0 e3                                      mov r3, #0
005cdf00  36 ff 2f e1                                      blx r6
005cdf04  e0 01 9d e5                                      ldr r0, [sp, #0x1e0]
005cdf08  14 c0 9d e5                                      ldr ip, [sp, #0x14]
005cdf0c  0c 00 50 e1                                      cmp r0, ip
005cdf10  02 00 00 0a                                      beq #0x5cdf20
005cdf14  00 00 50 e3                                      cmp r0, #0
005cdf18  00 00 00 0a                                      beq #0x5cdf20
005cdf1c  4b 09 f5 eb                                      bl #0x310450
005cdf20  10 80 88 e2                                      add r8, r8, #0x10
005cdf24  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
005cdf28  01 50 85 e2                                      add r5, r5, #1
005cdf2c  03 00 55 e1                                      cmp r5, r3
005cdf30  e2 ff ff 1a                                      bne #0x5cdec0
005cdf34  07 60 a0 e1                                      mov r6, r7
005cdf38  00 30 96 e5                                      ldr r3, [r6]
005cdf3c  06 00 a0 e1                                      mov r0, r6
005cdf40  0f e0 a0 e1                                      mov lr, pc
005cdf44  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
005cdf48  30 c0 9d e5                                      ldr ip, [sp, #0x30]
005cdf4c  20 00 9d e5                                      ldr r0, [sp, #0x20]
005cdf50  01 c0 8c e2                                      add ip, ip, #1
005cdf54  30 c0 8d e5                                      str ip, [sp, #0x30]
005cdf58  f3 b9 ff eb                                      bl #0x5bc72c
005cdf5c  30 00 9d e5                                      ldr r0, [sp, #0x30]
005cdf60  34 10 9d e5                                      ldr r1, [sp, #0x34]
005cdf64  70 20 ff e6                                      uxth r2, r0
005cdf68  02 00 51 e1                                      cmp r1, r2
005cdf6c  27 01 00 0a                                      beq #0x5ce410
005cdf70  38 c0 9d e5                                      ldr ip, [sp, #0x38]
005cdf74  04 30 9c e5                                      ldr r3, [ip, #4]
005cdf78  be 10 d3 e1                                      ldrh r1, [r3, #0xe]
005cdf7c  17 ff ff ea                                      b #0x5cdbe0
005cdf80  00 30 97 e5                                      ldr r3, [r7]
005cdf84  79 cf 8d e2                                      add ip, sp, #0x1e4
005cdf88  0c 00 a0 e1                                      mov r0, ip
005cdf8c  e8 10 9d e5                                      ldr r1, [sp, #0xe8]
005cdf90  e4 20 9d e5                                      ldr r2, [sp, #0xe4]
005cdf94  a8 61 93 e5                                      ldr r6, [r3, #0x1a8]
005cdf98  f4 c1 8d e5                                      str ip, [sp, #0x1f4]
005cdf9c  f8 c1 8d e5                                      str ip, [sp, #0x1f8]
005cdfa0  14 c0 8d e5                                      str ip, [sp, #0x14]
005cdfa4  12 60 f5 eb                                      bl #0x325ff4
005cdfa8  07 00 a0 e1                                      mov r0, r7
005cdfac  f8 11 9d e5                                      ldr r1, [sp, #0x1f8]
005cdfb0  08 20 a0 e1                                      mov r2, r8
005cdfb4  00 30 a0 e3                                      mov r3, #0
005cdfb8  36 ff 2f e1                                      blx r6
005cdfbc  f8 01 9d e5                                      ldr r0, [sp, #0x1f8]
005cdfc0  14 c0 9d e5                                      ldr ip, [sp, #0x14]
005cdfc4  0c 00 50 e1                                      cmp r0, ip
005cdfc8  02 00 00 0a                                      beq #0x5cdfd8
005cdfcc  00 00 50 e3                                      cmp r0, #0
005cdfd0  00 00 00 0a                                      beq #0x5cdfd8
005cdfd4  1d 09 f5 eb                                      bl #0x310450
005cdfd8  0c 80 88 e2                                      add r8, r8, #0xc
005cdfdc  b3 ff ff ea                                      b #0x5cdeb0
005cdfe0  00 30 97 e5                                      ldr r3, [r7]
005cdfe4  7f cf 8d e2                                      add ip, sp, #0x1fc
005cdfe8  0c 00 a0 e1                                      mov r0, ip
005cdfec  e8 10 9d e5                                      ldr r1, [sp, #0xe8]
005cdff0  e4 20 9d e5                                      ldr r2, [sp, #0xe4]
005cdff4  90 61 93 e5                                      ldr r6, [r3, #0x190]
005cdff8  0c c2 8d e5                                      str ip, [sp, #0x20c]
005cdffc  10 c2 8d e5                                      str ip, [sp, #0x210]
005ce000  14 c0 8d e5                                      str ip, [sp, #0x14]
005ce004  fa 5f f5 eb                                      bl #0x325ff4
005ce008  07 00 a0 e1                                      mov r0, r7
005ce00c  10 12 9d e5                                      ldr r1, [sp, #0x210]
005ce010  08 20 a0 e1                                      mov r2, r8
005ce014  00 30 a0 e3                                      mov r3, #0
005ce018  36 ff 2f e1                                      blx r6
005ce01c  10 02 9d e5                                      ldr r0, [sp, #0x210]
005ce020  14 c0 9d e5                                      ldr ip, [sp, #0x14]
005ce024  0c 00 50 e1                                      cmp r0, ip
005ce028  02 00 00 0a                                      beq #0x5ce038
005ce02c  00 00 50 e3                                      cmp r0, #0
005ce030  00 00 00 0a                                      beq #0x5ce038
005ce034  05 09 f5 eb                                      bl #0x310450
005ce038  08 80 88 e2                                      add r8, r8, #8
005ce03c  9b ff ff ea                                      b #0x5cdeb0
005ce040  00 30 97 e5                                      ldr r3, [r7]
005ce044  85 cf 8d e2                                      add ip, sp, #0x214
005ce048  0c 00 a0 e1                                      mov r0, ip
005ce04c  e8 10 9d e5                                      ldr r1, [sp, #0xe8]
005ce050  e4 20 9d e5                                      ldr r2, [sp, #0xe4]
005ce054  64 60 93 e5                                      ldr r6, [r3, #0x64]
005ce058  24 c2 8d e5                                      str ip, [sp, #0x224]
005ce05c  28 c2 8d e5                                      str ip, [sp, #0x228]
005ce060  14 c0 8d e5                                      str ip, [sp, #0x14]
005ce064  e2 5f f5 eb                                      bl #0x325ff4
005ce068  07 00 a0 e1                                      mov r0, r7
005ce06c  28 12 9d e5                                      ldr r1, [sp, #0x228]
005ce070  00 20 98 e5                                      ldr r2, [r8]
005ce074  00 30 a0 e3                                      mov r3, #0
005ce078  36 ff 2f e1                                      blx r6
005ce07c  28 02 9d e5                                      ldr r0, [sp, #0x228]
005ce080  14 c0 9d e5                                      ldr ip, [sp, #0x14]
005ce084  0c 00 50 e1                                      cmp r0, ip
005ce088  84 ff ff 1a                                      bne #0x5cdea0
005ce08c  04 80 88 e2                                      add r8, r8, #4
005ce090  86 ff ff ea                                      b #0x5cdeb0
005ce094  00 30 97 e5                                      ldr r3, [r7]
005ce098  8b cf 8d e2                                      add ip, sp, #0x22c
005ce09c  0c 00 a0 e1                                      mov r0, ip
005ce0a0  e8 10 9d e5                                      ldr r1, [sp, #0xe8]
005ce0a4  e4 20 9d e5                                      ldr r2, [sp, #0xe4]
005ce0a8  78 61 93 e5                                      ldr r6, [r3, #0x178]
005ce0ac  3c c2 8d e5                                      str ip, [sp, #0x23c]
005ce0b0  40 c2 8d e5                                      str ip, [sp, #0x240]
005ce0b4  14 c0 8d e5                                      str ip, [sp, #0x14]
005ce0b8  cd 5f f5 eb                                      bl #0x325ff4
005ce0bc  07 00 a0 e1                                      mov r0, r7
005ce0c0  40 12 9d e5                                      ldr r1, [sp, #0x240]
005ce0c4  08 20 a0 e1                                      mov r2, r8
005ce0c8  00 30 a0 e3                                      mov r3, #0
005ce0cc  36 ff 2f e1                                      blx r6
005ce0d0  40 02 9d e5                                      ldr r0, [sp, #0x240]
005ce0d4  14 c0 9d e5                                      ldr ip, [sp, #0x14]
005ce0d8  0c 00 50 e1                                      cmp r0, ip
005ce0dc  8c ff ff 1a                                      bne #0x5cdf14
005ce0e0  10 80 88 e2                                      add r8, r8, #0x10
005ce0e4  8e ff ff ea                                      b #0x5cdf24
005ce0e8  00 30 97 e5                                      ldr r3, [r7]
005ce0ec  91 cf 8d e2                                      add ip, sp, #0x244
005ce0f0  0c 00 a0 e1                                      mov r0, ip
005ce0f4  e8 10 9d e5                                      ldr r1, [sp, #0xe8]
005ce0f8  e4 20 9d e5                                      ldr r2, [sp, #0xe4]
005ce0fc  60 61 93 e5                                      ldr r6, [r3, #0x160]
005ce100  54 c2 8d e5                                      str ip, [sp, #0x254]
005ce104  58 c2 8d e5                                      str ip, [sp, #0x258]
005ce108  14 c0 8d e5                                      str ip, [sp, #0x14]
005ce10c  b8 5f f5 eb                                      bl #0x325ff4
005ce110  07 00 a0 e1                                      mov r0, r7
005ce114  58 12 9d e5                                      ldr r1, [sp, #0x258]
005ce118  08 20 a0 e1                                      mov r2, r8
005ce11c  00 30 a0 e3                                      mov r3, #0
005ce120  36 ff 2f e1                                      blx r6
005ce124  58 02 9d e5                                      ldr r0, [sp, #0x258]
005ce128  14 c0 9d e5                                      ldr ip, [sp, #0x14]
005ce12c  0c 00 50 e1                                      cmp r0, ip
005ce130  a5 ff ff 1a                                      bne #0x5cdfcc
005ce134  0c 80 88 e2                                      add r8, r8, #0xc
005ce138  5c ff ff ea                                      b #0x5cdeb0
005ce13c  00 30 97 e5                                      ldr r3, [r7]
005ce140  97 cf 8d e2                                      add ip, sp, #0x25c
005ce144  0c 00 a0 e1                                      mov r0, ip
005ce148  e8 10 9d e5                                      ldr r1, [sp, #0xe8]
005ce14c  e4 20 9d e5                                      ldr r2, [sp, #0xe4]
005ce150  48 61 93 e5                                      ldr r6, [r3, #0x148]
005ce154  6c c2 8d e5                                      str ip, [sp, #0x26c]
005ce158  70 c2 8d e5                                      str ip, [sp, #0x270]
005ce15c  14 c0 8d e5                                      str ip, [sp, #0x14]
005ce160  a3 5f f5 eb                                      bl #0x325ff4
005ce164  07 00 a0 e1                                      mov r0, r7
005ce168  70 12 9d e5                                      ldr r1, [sp, #0x270]
005ce16c  08 20 a0 e1                                      mov r2, r8
005ce170  00 30 a0 e3                                      mov r3, #0
005ce174  36 ff 2f e1                                      blx r6
005ce178  70 02 9d e5                                      ldr r0, [sp, #0x270]
005ce17c  14 c0 9d e5                                      ldr ip, [sp, #0x14]
005ce180  0c 00 50 e1                                      cmp r0, ip
005ce184  a8 ff ff 1a                                      bne #0x5ce02c
005ce188  08 80 88 e2                                      add r8, r8, #8
005ce18c  47 ff ff ea                                      b #0x5cdeb0
005ce190  00 30 97 e5                                      ldr r3, [r7]
005ce194  9d cf 8d e2                                      add ip, sp, #0x274
005ce198  0c 00 a0 e1                                      mov r0, ip
005ce19c  e8 10 9d e5                                      ldr r1, [sp, #0xe8]
005ce1a0  e4 20 9d e5                                      ldr r2, [sp, #0xe4]
005ce1a4  4c 60 93 e5                                      ldr r6, [r3, #0x4c]
005ce1a8  84 c2 8d e5                                      str ip, [sp, #0x284]
005ce1ac  88 c2 8d e5                                      str ip, [sp, #0x288]
005ce1b0  14 c0 8d e5                                      str ip, [sp, #0x14]
005ce1b4  8e 5f f5 eb                                      bl #0x325ff4
005ce1b8  07 00 a0 e1                                      mov r0, r7
005ce1bc  88 12 9d e5                                      ldr r1, [sp, #0x288]
005ce1c0  00 20 98 e5                                      ldr r2, [r8]
005ce1c4  00 30 a0 e3                                      mov r3, #0
005ce1c8  36 ff 2f e1                                      blx r6
005ce1cc  88 02 9d e5                                      ldr r0, [sp, #0x288]
005ce1d0  14 c0 9d e5                                      ldr ip, [sp, #0x14]
005ce1d4  0c 00 50 e1                                      cmp r0, ip
005ce1d8  30 ff ff 1a                                      bne #0x5cdea0
005ce1dc  04 80 88 e2                                      add r8, r8, #4
005ce1e0  32 ff ff ea                                      b #0x5cdeb0
005ce1e4  00 30 97 e5                                      ldr r3, [r7]
005ce1e8  55 6f 8d e2                                      add r6, sp, #0x154
005ce1ec  06 00 a0 e1                                      mov r0, r6
005ce1f0  30 c1 93 e5                                      ldr ip, [r3, #0x130]
005ce1f4  e8 10 9d e5                                      ldr r1, [sp, #0xe8]
005ce1f8  e4 20 9d e5                                      ldr r2, [sp, #0xe4]
005ce1fc  14 c0 8d e5                                      str ip, [sp, #0x14]
005ce200  64 61 8d e5                                      str r6, [sp, #0x164]
005ce204  68 61 8d e5                                      str r6, [sp, #0x168]
005ce208  79 5f f5 eb                                      bl #0x325ff4
005ce20c  08 30 98 e5                                      ldr r3, [r8, #8]
005ce210  0c 10 98 e5                                      ldr r1, [r8, #0xc]
005ce214  00 20 a0 e3                                      mov r2, #0
005ce218  06 00 8d e9                                      stmib sp, {r1, r2}
005ce21c  00 30 8d e5                                      str r3, [sp]
005ce220  07 00 a0 e1                                      mov r0, r7
005ce224  68 11 9d e5                                      ldr r1, [sp, #0x168]
005ce228  0c 00 98 e8                                      ldm r8, {r2, r3}
005ce22c  14 c0 9d e5                                      ldr ip, [sp, #0x14]
005ce230  3c ff 2f e1                                      blx ip
005ce234  68 01 9d e5                                      ldr r0, [sp, #0x168]
005ce238  06 00 50 e1                                      cmp r0, r6
005ce23c  34 ff ff 1a                                      bne #0x5cdf14
005ce240  10 80 88 e2                                      add r8, r8, #0x10
005ce244  36 ff ff ea                                      b #0x5cdf24
005ce248  00 30 97 e5                                      ldr r3, [r7]
005ce24c  5b 6f 8d e2                                      add r6, sp, #0x16c
005ce250  06 00 a0 e1                                      mov r0, r6
005ce254  18 c1 93 e5                                      ldr ip, [r3, #0x118]
005ce258  e8 10 9d e5                                      ldr r1, [sp, #0xe8]
005ce25c  e4 20 9d e5                                      ldr r2, [sp, #0xe4]
005ce260  14 c0 8d e5                                      str ip, [sp, #0x14]
005ce264  7c 61 8d e5                                      str r6, [sp, #0x17c]
005ce268  80 61 8d e5                                      str r6, [sp, #0x180]
005ce26c  60 5f f5 eb                                      bl #0x325ff4
005ce270  01 10 d8 e5                                      ldrb r1, [r8, #1]
005ce274  00 20 d8 e5                                      ldrb r2, [r8]
005ce278  02 00 d8 e5                                      ldrb r0, [r8, #2]
005ce27c  03 30 d8 e5                                      ldrb r3, [r8, #3]
005ce280  01 24 82 e1                                      orr r2, r2, r1, lsl #8
005ce284  00 28 82 e1                                      orr r2, r2, r0, lsl #16
005ce288  03 2c 82 e1                                      orr r2, r2, r3, lsl #24
005ce28c  07 00 a0 e1                                      mov r0, r7
005ce290  80 11 9d e5                                      ldr r1, [sp, #0x180]
005ce294  00 30 a0 e3                                      mov r3, #0
005ce298  14 c0 9d e5                                      ldr ip, [sp, #0x14]
005ce29c  3c ff 2f e1                                      blx ip
005ce2a0  80 01 9d e5                                      ldr r0, [sp, #0x180]
005ce2a4  06 00 50 e1                                      cmp r0, r6
005ce2a8  fc fe ff 1a                                      bne #0x5cdea0
005ce2ac  04 80 88 e2                                      add r8, r8, #4
005ce2b0  fe fe ff ea                                      b #0x5cdeb0
005ce2b4  00 30 97 e5                                      ldr r3, [r7]
005ce2b8  61 6f 8d e2                                      add r6, sp, #0x184
005ce2bc  e4 20 9d e5                                      ldr r2, [sp, #0xe4]
005ce2c0  b0 c2 93 e5                                      ldr ip, [r3, #0x2b0]
005ce2c4  06 00 a0 e1                                      mov r0, r6
005ce2c8  e8 10 9d e5                                      ldr r1, [sp, #0xe8]
005ce2cc  14 c0 8d e5                                      str ip, [sp, #0x14]
005ce2d0  94 61 8d e5                                      str r6, [sp, #0x194]
005ce2d4  98 61 8d e5                                      str r6, [sp, #0x198]
005ce2d8  45 5f f5 eb                                      bl #0x325ff4
005ce2dc  00 30 98 e5                                      ldr r3, [r8]
005ce2e0  98 11 9d e5                                      ldr r1, [sp, #0x198]
005ce2e4  14 c0 9d e5                                      ldr ip, [sp, #0x14]
005ce2e8  00 00 53 e3                                      cmp r3, #0
005ce2ec  a0 30 8d e5                                      str r3, [sp, #0xa0]
005ce2f0  04 20 93 15                                      ldrne r2, [r3, #4]
005ce2f4  07 00 a0 e1                                      mov r0, r7
005ce2f8  01 20 82 12                                      addne r2, r2, #1
005ce2fc  04 20 83 15                                      strne r2, [r3, #4]
005ce300  a0 20 8d e2                                      add r2, sp, #0xa0
005ce304  00 30 a0 e3                                      mov r3, #0
005ce308  3c ff 2f e1                                      blx ip
005ce30c  a0 00 9d e5                                      ldr r0, [sp, #0xa0]
005ce310  00 00 50 e3                                      cmp r0, #0
005ce314  00 00 00 0a                                      beq #0x5ce31c
005ce318  99 3c f5 eb                                      bl #0x31d584
005ce31c  98 01 9d e5                                      ldr r0, [sp, #0x198]
005ce320  06 00 50 e1                                      cmp r0, r6
005ce324  dd fe ff 1a                                      bne #0x5cdea0
005ce328  04 80 88 e2                                      add r8, r8, #4
005ce32c  df fe ff ea                                      b #0x5cdeb0
005ce330  00 30 98 e5                                      ldr r3, [r8]
005ce334  00 00 53 e3                                      cmp r3, #0
005ce338  1e 00 00 0a                                      beq #0x5ce3b8
005ce33c  00 e0 97 e5                                      ldr lr, [r7]
005ce340  6d cf 8d e2                                      add ip, sp, #0x1b4
005ce344  0c 00 a0 e1                                      mov r0, ip
005ce348  e8 10 9d e5                                      ldr r1, [sp, #0xe8]
005ce34c  e4 20 9d e5                                      ldr r2, [sp, #0xe4]
005ce350  08 62 9e e5                                      ldr r6, [lr, #0x208]
005ce354  c4 c1 8d e5                                      str ip, [sp, #0x1c4]
005ce358  c8 c1 8d e5                                      str ip, [sp, #0x1c8]
005ce35c  14 c0 8d e5                                      str ip, [sp, #0x14]
005ce360  18 30 8d e5                                      str r3, [sp, #0x18]
005ce364  22 5f f5 eb                                      bl #0x325ff4
005ce368  18 30 9d e5                                      ldr r3, [sp, #0x18]
005ce36c  07 00 a0 e1                                      mov r0, r7
005ce370  c8 11 9d e5                                      ldr r1, [sp, #0x1c8]
005ce374  03 20 a0 e1                                      mov r2, r3
005ce378  00 30 a0 e3                                      mov r3, #0
005ce37c  36 ff 2f e1                                      blx r6
005ce380  c8 01 9d e5                                      ldr r0, [sp, #0x1c8]
005ce384  14 c0 9d e5                                      ldr ip, [sp, #0x14]
005ce388  0c 00 50 e1                                      cmp r0, ip
005ce38c  c3 fe ff 1a                                      bne #0x5cdea0
005ce390  04 80 88 e2                                      add r8, r8, #4
005ce394  c5 fe ff ea                                      b #0x5cdeb0
005ce398  20 c0 9d e5                                      ldr ip, [sp, #0x20]
005ce39c  b8 10 9f e5                                      ldr r1, [pc, #0xb8]
005ce3a0  08 00 8c e2                                      add r0, ip, #8
005ce3a4  01 10 8f e0                                      add r1, pc, r1
005ce3a8  7a 13 f5 eb                                      bl #0x313198
005ce3ac  08 00 99 e5                                      ldr r0, [sb, #8]
005ce3b0  1c 00 8d e5                                      str r0, [sp, #0x1c]
005ce3b4  3c fe ff ea                                      b #0x5cdcac
005ce3b8  00 e0 97 e5                                      ldr lr, [r7]
005ce3bc  67 cf 8d e2                                      add ip, sp, #0x19c
005ce3c0  0c 00 a0 e1                                      mov r0, ip
005ce3c4  e8 10 9d e5                                      ldr r1, [sp, #0xe8]
005ce3c8  e4 20 9d e5                                      ldr r2, [sp, #0xe4]
005ce3cc  08 62 9e e5                                      ldr r6, [lr, #0x208]
005ce3d0  ac c1 8d e5                                      str ip, [sp, #0x1ac]
005ce3d4  b0 c1 8d e5                                      str ip, [sp, #0x1b0]
005ce3d8  14 c0 8d e5                                      str ip, [sp, #0x14]
005ce3dc  18 30 8d e5                                      str r3, [sp, #0x18]
005ce3e0  03 5f f5 eb                                      bl #0x325ff4
005ce3e4  07 00 a0 e1                                      mov r0, r7
005ce3e8  18 30 9d e5                                      ldr r3, [sp, #0x18]
005ce3ec  b0 11 9d e5                                      ldr r1, [sp, #0x1b0]
005ce3f0  0b 20 a0 e1                                      mov r2, fp
005ce3f4  36 ff 2f e1                                      blx r6
005ce3f8  b0 01 9d e5                                      ldr r0, [sp, #0x1b0]
005ce3fc  14 c0 9d e5                                      ldr ip, [sp, #0x14]
005ce400  0c 00 50 e1                                      cmp r0, ip
005ce404  a5 fe ff 1a                                      bne #0x5cdea0
005ce408  04 80 88 e2                                      add r8, r8, #4
005ce40c  a7 fe ff ea                                      b #0x5cdeb0
005ce410  50 10 9d e5                                      ldr r1, [sp, #0x50]
005ce414  54 00 9d e5                                      ldr r0, [sp, #0x54]
005ce418  a4 22 9d e5                                      ldr r2, [sp, #0x2a4]
005ce41c  00 30 91 e7                                      ldr r3, [r1, r0]
005ce420  00 30 93 e5                                      ldr r3, [r3]
005ce424  03 00 52 e1                                      cmp r2, r3
005ce428  01 00 00 1a                                      bne #0x5ce434
005ce42c  ab df 8d e2                                      add sp, sp, #0x2ac
005ce430  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005ce434  b5 ff f4 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
005ce438  44 6f 3c 00 ac 40 00 00 94 2d 31 00 4c 4d 2f 00  .byte 0x44, 0x6f, 0x3c, 0x00, 0xac, 0x40, 0x00, 0x00, 0x94, 0x2d, 0x31, 0x00, 0x4c, 0x4d, 0x2f, 0x00
005ce448  a8 2d 31 00 6c dc 2f 00 08 e6 30 00 8c 18 2f 00  .byte 0xa8, 0x2d, 0x31, 0x00, 0x6c, 0xdc, 0x2f, 0x00, 0x08, 0xe6, 0x30, 0x00, 0x8c, 0x18, 0x2f, 0x00
005ce458  c0 3c 00 00 2c 25 34 00                          .byte 0xc0, 0x3c, 0x00, 0x00, 0x2c, 0x25, 0x34, 0x00

; FUNCTION 0x005cea48, declared_size=152, range_size=152, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE12setParameterEtjNS0_29E_SHADER_PARAMETER_VALUE_TYPEEPKv
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::setParameter(unsigned short, unsigned int, glitch::video::E_SHADER_PARAMETER_VALUE_TYPE, void const*)
; decoder-mode: arm
005cea48  01 c0 43 e2                                      sub ip, r3, #1
005cea4c  00 30 9d e5                                      ldr r3, [sp]
005cea50  11 00 5c e3                                      cmp ip, #0x11
005cea54  0c f1 8f 90                                      addls pc, pc, ip, lsl #2
005cea58  13 00 00 ea                                      b #0x5ceaac
005cea5c  14 00 00 ea                                      b #0x5ceab4
005cea60  14 00 00 ea                                      b #0x5ceab8
005cea64  14 00 00 ea                                      b #0x5ceabc
005cea68  14 00 00 ea                                      b #0x5ceac0
005cea6c  14 00 00 ea                                      b #0x5ceac4
005cea70  14 00 00 ea                                      b #0x5ceac8
005cea74  14 00 00 ea                                      b #0x5ceacc
005cea78  14 00 00 ea                                      b #0x5cead0
005cea7c  0a 00 00 ea                                      b #0x5ceaac
005cea80  09 00 00 ea                                      b #0x5ceaac
005cea84  12 00 00 ea                                      b #0x5cead4
005cea88  05 00 00 ea                                      b #0x5ceaa4
005cea8c  04 00 00 ea                                      b #0x5ceaa4
005cea90  03 00 00 ea                                      b #0x5ceaa4
005cea94  02 00 00 ea                                      b #0x5ceaa4
005cea98  02 00 00 ea                                      b #0x5ceaa8
005cea9c  0e 00 00 ea                                      b #0x5ceadc
005ceaa0  0c 00 00 ea                                      b #0x5cead8
005ceaa4  1e fa ff ea                                      b #0x5cd324
005ceaa8  41 df ff ea                                      b #0x5c67b4
005ceaac  00 00 a0 e3                                      mov r0, #0
005ceab0  1e ff 2f e1                                      bx lr
005ceab4  e0 dd ff ea                                      b #0x5c623c
005ceab8  fd dd ff ea                                      b #0x5c62b4
005ceabc  23 de ff ea                                      b #0x5c6350
005ceac0  50 de ff ea                                      b #0x5c6408
005ceac4  82 de ff ea                                      b #0x5c64d4
005ceac8  a5 de ff ea                                      b #0x5c6564
005ceacc  ce de ff ea                                      b #0x5c660c
005cead0  ff de ff ea                                      b #0x5c66d4
005cead4  80 f2 ff ea                                      b #0x5cb4dc
005cead8  9f ff ff ea                                      b #0x5ce95c
005ceadc  45 f0 ff ea                                      b #0x5cabf8

; FUNCTION 0x005cebb4, declared_size=152, range_size=152, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE12getParameterEtjNS0_29E_SHADER_PARAMETER_VALUE_TYPEEPv
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::getParameter(unsigned short, unsigned int, glitch::video::E_SHADER_PARAMETER_VALUE_TYPE, void*) const
; decoder-mode: arm
005cebb4  01 c0 43 e2                                      sub ip, r3, #1
005cebb8  00 30 9d e5                                      ldr r3, [sp]
005cebbc  11 00 5c e3                                      cmp ip, #0x11
005cebc0  0c f1 8f 90                                      addls pc, pc, ip, lsl #2
005cebc4  13 00 00 ea                                      b #0x5cec18
005cebc8  14 00 00 ea                                      b #0x5cec20
005cebcc  14 00 00 ea                                      b #0x5cec24
005cebd0  14 00 00 ea                                      b #0x5cec28
005cebd4  14 00 00 ea                                      b #0x5cec2c
005cebd8  14 00 00 ea                                      b #0x5cec30
005cebdc  14 00 00 ea                                      b #0x5cec34
005cebe0  14 00 00 ea                                      b #0x5cec38
005cebe4  14 00 00 ea                                      b #0x5cec3c
005cebe8  0a 00 00 ea                                      b #0x5cec18
005cebec  09 00 00 ea                                      b #0x5cec18
005cebf0  12 00 00 ea                                      b #0x5cec40
005cebf4  05 00 00 ea                                      b #0x5cec10
005cebf8  04 00 00 ea                                      b #0x5cec10
005cebfc  03 00 00 ea                                      b #0x5cec10
005cec00  02 00 00 ea                                      b #0x5cec10
005cec04  02 00 00 ea                                      b #0x5cec14
005cec08  0e 00 00 ea                                      b #0x5cec48
005cec0c  0c 00 00 ea                                      b #0x5cec44
005cec10  a9 fb ff ea                                      b #0x5cdabc
005cec14  62 e1 ff ea                                      b #0x5c71a4
005cec18  00 00 a0 e3                                      mov r0, #0
005cec1c  1e ff 2f e1                                      bx lr
005cec20  7f e0 ff ea                                      b #0x5c6e24
005cec24  96 e0 ff ea                                      b #0x5c6e84
005cec28  b0 e0 ff ea                                      b #0x5c6ef0
005cec2c  cd e0 ff ea                                      b #0x5c6f68
005cec30  eb e0 ff ea                                      b #0x5c6fe4
005cec34  02 e1 ff ea                                      b #0x5c7044
005cec38  1c e1 ff ea                                      b #0x5c70b0
005cec3c  39 e1 ff ea                                      b #0x5c7128
005cec40  d5 ed ff ea                                      b #0x5ca39c
005cec44  a5 ff ff ea                                      b #0x5ceae0
005cec48  6e e1 ff ea                                      b #0x5c7208

; FUNCTION 0x005ced38, declared_size=152, range_size=152, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtEtjNS0_29E_SHADER_PARAMETER_VALUE_TYPEEPKv
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::setParameterCvt(unsigned short, unsigned int, glitch::video::E_SHADER_PARAMETER_VALUE_TYPE, void const*)
; decoder-mode: arm
005ced38  01 c0 43 e2                                      sub ip, r3, #1
005ced3c  00 30 9d e5                                      ldr r3, [sp]
005ced40  11 00 5c e3                                      cmp ip, #0x11
005ced44  0c f1 8f 90                                      addls pc, pc, ip, lsl #2
005ced48  13 00 00 ea                                      b #0x5ced9c
005ced4c  14 00 00 ea                                      b #0x5ceda4
005ced50  14 00 00 ea                                      b #0x5ceda8
005ced54  14 00 00 ea                                      b #0x5cedac
005ced58  14 00 00 ea                                      b #0x5cedb0
005ced5c  14 00 00 ea                                      b #0x5cedb4
005ced60  14 00 00 ea                                      b #0x5cedb8
005ced64  14 00 00 ea                                      b #0x5cedbc
005ced68  14 00 00 ea                                      b #0x5cedc0
005ced6c  0a 00 00 ea                                      b #0x5ced9c
005ced70  09 00 00 ea                                      b #0x5ced9c
005ced74  12 00 00 ea                                      b #0x5cedc4
005ced78  05 00 00 ea                                      b #0x5ced94
005ced7c  04 00 00 ea                                      b #0x5ced94
005ced80  03 00 00 ea                                      b #0x5ced94
005ced84  02 00 00 ea                                      b #0x5ced94
005ced88  02 00 00 ea                                      b #0x5ced98
005ced8c  0e 00 00 ea                                      b #0x5cedcc
005ced90  0c 00 00 ea                                      b #0x5cedc8
005ced94  ac ff ff ea                                      b #0x5cec4c
005ced98  e6 ef ff ea                                      b #0x5cad38
005ced9c  00 00 a0 e3                                      mov r0, #0
005ceda0  1e ff 2f e1                                      bx lr
005ceda4  a2 de ff ea                                      b #0x5c6834
005ceda8  d5 de ff ea                                      b #0x5c6904
005cedac  04 df ff ea                                      b #0x5c69c4
005cedb0  39 df ff ea                                      b #0x5c6a9c
005cedb4  74 df ff ea                                      b #0x5c6b8c
005cedb8  a8 df ff ea                                      b #0x5c6c60
005cedbc  dc df ff ea                                      b #0x5c6d34
005cedc0  68 fe ff ea                                      b #0x5ce768
005cedc4  c4 f1 ff ea                                      b #0x5cb4dc
005cedc8  fa f4 ff ea                                      b #0x5cc1b8
005cedcc  45 f2 ff ea                                      b #0x5cb6e8

; FUNCTION 0x005cee70, declared_size=152, range_size=152, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15getParameterCvtEtjNS0_29E_SHADER_PARAMETER_VALUE_TYPEEPv
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::getParameterCvt(unsigned short, unsigned int, glitch::video::E_SHADER_PARAMETER_VALUE_TYPE, void*) const
; decoder-mode: arm
005cee70  01 c0 43 e2                                      sub ip, r3, #1
005cee74  00 30 9d e5                                      ldr r3, [sp]
005cee78  11 00 5c e3                                      cmp ip, #0x11
005cee7c  0c f1 8f 90                                      addls pc, pc, ip, lsl #2
005cee80  13 00 00 ea                                      b #0x5ceed4
005cee84  14 00 00 ea                                      b #0x5ceedc
005cee88  14 00 00 ea                                      b #0x5ceee0
005cee8c  14 00 00 ea                                      b #0x5ceee4
005cee90  14 00 00 ea                                      b #0x5ceee8
005cee94  14 00 00 ea                                      b #0x5ceeec
005cee98  14 00 00 ea                                      b #0x5ceef0
005cee9c  14 00 00 ea                                      b #0x5ceef4
005ceea0  14 00 00 ea                                      b #0x5ceef8
005ceea4  0a 00 00 ea                                      b #0x5ceed4
005ceea8  09 00 00 ea                                      b #0x5ceed4
005ceeac  12 00 00 ea                                      b #0x5ceefc
005ceeb0  05 00 00 ea                                      b #0x5ceecc
005ceeb4  04 00 00 ea                                      b #0x5ceecc
005ceeb8  03 00 00 ea                                      b #0x5ceecc
005ceebc  02 00 00 ea                                      b #0x5ceecc
005ceec0  02 00 00 ea                                      b #0x5ceed0
005ceec4  0e 00 00 ea                                      b #0x5cef04
005ceec8  0c 00 00 ea                                      b #0x5cef00
005ceecc  bf ff ff ea                                      b #0x5cedd0
005ceed0  3c e2 ff ea                                      b #0x5c77c8
005ceed4  00 00 a0 e3                                      mov r0, #0
005ceed8  1e ff 2f e1                                      bx lr
005ceedc  e4 e0 ff ea                                      b #0x5c7274
005ceee0  0a e1 ff ea                                      b #0x5c7310
005ceee4  2c e1 ff ea                                      b #0x5c739c
005ceee8  50 e1 ff ea                                      b #0x5c7430
005ceeec  77 e1 ff ea                                      b #0x5c74d0
005ceef0  9f e1 ff ea                                      b #0x5c7574
005ceef4  c1 e1 ff ea                                      b #0x5c7600
005ceef8  e5 e1 ff ea                                      b #0x5c7694
005ceefc  26 ed ff ea                                      b #0x5ca39c
005cef00  2b f5 ff ea                                      b #0x5cc3b4
005cef04  92 e2 ff ea                                      b #0x5c7954

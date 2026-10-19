; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005cef60, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE7getThisEv
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::getThis()
; decoder-mode: arm
005cef60  1e ff 2f e1                                      bx lr

; FUNCTION 0x005cef64, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE7getThisEv
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::getThis() const
; decoder-mode: arm
005cef64  1e ff 2f e1                                      bx lr

; FUNCTION 0x005cef68, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE17getParameterBlockEv
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::getParameterBlock()
; decoder-mode: arm
005cef68  24 00 90 e5                                      ldr r0, [r0, #0x24]
005cef6c  1e ff 2f e1                                      bx lr

; FUNCTION 0x005cef70, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE17getParameterBlockEv
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::getParameterBlock() const
; decoder-mode: arm
005cef70  24 00 90 e5                                      ldr r0, [r0, #0x24]
005cef74  1e ff 2f e1                                      bx lr

; FUNCTION 0x005cef78, declared_size=24, range_size=24, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE15getParameterDefEt
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::getParameterDef(unsigned short) const
; decoder-mode: arm
005cef78  be 30 d0 e1                                      ldrh r3, [r0, #0xe]
005cef7c  01 00 53 e1                                      cmp r3, r1
005cef80  20 00 90 85                                      ldrhi r0, [r0, #0x20]
005cef84  00 00 a0 93                                      movls r0, #0
005cef88  01 02 80 80                                      addhi r0, r0, r1, lsl #4
005cef8c  1e ff 2f e1                                      bx lr

; FUNCTION 0x005cef90, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE8setDirtyEv
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::setDirty()
; decoder-mode: arm
005cef90  1e ff 2f e1                                      bx lr

; FUNCTION 0x005cef94, declared_size=24, range_size=24, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE14setParameterAtEPif
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::setParameterAt(int*, float)
; decoder-mode: arm
005cef94  10 40 2d e9                                      push {r4, lr}
005cef98  02 00 a0 e1                                      mov r0, r2
005cef9c  01 40 a0 e1                                      mov r4, r1
005cefa0  49 fd f4 eb                                      bl #0x30e4cc
005cefa4  00 00 84 e5                                      str r0, [r4]
005cefa8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005cefac, declared_size=24, range_size=24, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE14setParameterAtEPfi
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::setParameterAt(float*, int)
; decoder-mode: arm
005cefac  10 40 2d e9                                      push {r4, lr}
005cefb0  02 00 a0 e1                                      mov r0, r2
005cefb4  01 40 a0 e1                                      mov r4, r1
005cefb8  69 fe f4 eb                                      bl #0x30e964
005cefbc  00 00 84 e5                                      str r0, [r4]
005cefc0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005cefc4, declared_size=16, range_size=16, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE14setParameterAtEPNS0_7SColorfERKNS_4core8vector4dIfEE
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::setParameterAt(glitch::video::SColorf*, glitch::core::vector4d<float> const&)
; decoder-mode: arm
005cefc4  01 c0 a0 e1                                      mov ip, r1
005cefc8  0f 00 92 e8                                      ldm r2, {r0, r1, r2, r3}
005cefcc  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
005cefd0  1e ff 2f e1                                      bx lr

; FUNCTION 0x005cefd4, declared_size=36, range_size=36, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE14setParameterAtEPNS_4core8vector4dIfEERKNS0_7SColorfE
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::setParameterAt(glitch::core::vector4d<float>*, glitch::video::SColorf const&)
; decoder-mode: arm
005cefd4  00 30 92 e5                                      ldr r3, [r2]
005cefd8  00 30 81 e5                                      str r3, [r1]
005cefdc  04 30 92 e5                                      ldr r3, [r2, #4]
005cefe0  04 30 81 e5                                      str r3, [r1, #4]
005cefe4  08 30 92 e5                                      ldr r3, [r2, #8]
005cefe8  08 30 81 e5                                      str r3, [r1, #8]
005cefec  0c 30 92 e5                                      ldr r3, [r2, #0xc]
005ceff0  0c 30 81 e5                                      str r3, [r1, #0xc]
005ceff4  1e ff 2f e1                                      bx lr

; FUNCTION 0x005ceff8, declared_size=24, range_size=24, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE14getParameterAtEPKiRf
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::getParameterAt(int const*, float&) const
; decoder-mode: arm
005ceff8  10 40 2d e9                                      push {r4, lr}
005ceffc  00 00 91 e5                                      ldr r0, [r1]
005cf000  02 40 a0 e1                                      mov r4, r2
005cf004  56 fe f4 eb                                      bl #0x30e964
005cf008  00 00 84 e5                                      str r0, [r4]
005cf00c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005cf010, declared_size=24, range_size=24, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE14getParameterAtEPKfRi
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::getParameterAt(float const*, int&) const
; decoder-mode: arm
005cf010  10 40 2d e9                                      push {r4, lr}
005cf014  00 00 91 e5                                      ldr r0, [r1]
005cf018  02 40 a0 e1                                      mov r4, r2
005cf01c  2a fd f4 eb                                      bl #0x30e4cc
005cf020  00 00 84 e5                                      str r0, [r4]
005cf024  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005cf028, declared_size=36, range_size=36, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE14getParameterAtEPKNS0_7SColorfERNS_4core8vector4dIfEE
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::getParameterAt(glitch::video::SColorf const*, glitch::core::vector4d<float>&) const
; decoder-mode: arm
005cf028  00 30 91 e5                                      ldr r3, [r1]
005cf02c  00 30 82 e5                                      str r3, [r2]
005cf030  04 30 91 e5                                      ldr r3, [r1, #4]
005cf034  04 30 82 e5                                      str r3, [r2, #4]
005cf038  08 30 91 e5                                      ldr r3, [r1, #8]
005cf03c  08 30 82 e5                                      str r3, [r2, #8]
005cf040  0c 30 91 e5                                      ldr r3, [r1, #0xc]
005cf044  0c 30 82 e5                                      str r3, [r2, #0xc]
005cf048  1e ff 2f e1                                      bx lr

; FUNCTION 0x005cf04c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE14getParameterAtEPKNS_4core8vector4dIfEERNS0_7SColorfE
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::getParameterAt(glitch::core::vector4d<float> const*, glitch::video::SColorf&) const
; decoder-mode: arm
005cf04c  02 c0 a0 e1                                      mov ip, r2
005cf050  0f 00 91 e8                                      ldm r1, {r0, r1, r2, r3}
005cf054  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
005cf058  1e ff 2f e1                                      bx lr

; FUNCTION 0x005d2f18, declared_size=136, range_size=136, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE12getParameterEtPNS_4core8CMatrix4IfEEi
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::getParameter(unsigned short, glitch::core::CMatrix4<float>*, int) const
; decoder-mode: arm
005d2f18  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005d2f1c  be c0 d0 e1                                      ldrh ip, [r0, #0xe]
005d2f20  02 40 a0 e1                                      mov r4, r2
005d2f24  01 00 5c e1                                      cmp ip, r1
005d2f28  05 00 00 9a                                      bls #0x5d2f44
005d2f2c  20 20 90 e5                                      ldr r2, [r0, #0x20]
005d2f30  01 12 92 e0                                      adds r1, r2, r1, lsl #4
005d2f34  02 00 00 0a                                      beq #0x5d2f44
005d2f38  06 20 d1 e5                                      ldrb r2, [r1, #6]
005d2f3c  0b 00 52 e3                                      cmp r2, #0xb
005d2f40  01 00 00 0a                                      beq #0x5d2f4c
005d2f44  00 00 a0 e3                                      mov r0, #0
005d2f48  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005d2f4c  08 80 91 e5                                      ldr r8, [r1, #8]
005d2f50  00 00 53 e3                                      cmp r3, #0
005d2f54  03 70 a0 11                                      movne r7, r3
005d2f58  44 70 a0 03                                      moveq r7, #0x44
005d2f5c  98 47 28 e0                                      mla r8, r8, r7, r4
005d2f60  24 60 90 e5                                      ldr r6, [r0, #0x24]
005d2f64  08 00 54 e1                                      cmp r4, r8
005d2f68  0c 30 91 e5                                      ldr r3, [r1, #0xc]
005d2f6c  09 00 00 0a                                      beq #0x5d2f98
005d2f70  03 60 86 e0                                      add r6, r6, r3
005d2f74  00 50 a0 e3                                      mov r5, #0
005d2f78  04 10 a0 e1                                      mov r1, r4
005d2f7c  06 00 a0 e1                                      mov r0, r6
005d2f80  07 50 85 e0                                      add r5, r5, r7
005d2f84  a8 9d ff eb                                      bl #0x5ba62c
005d2f88  04 10 85 e0                                      add r1, r5, r4
005d2f8c  01 00 58 e1                                      cmp r8, r1
005d2f90  04 60 86 e2                                      add r6, r6, #4
005d2f94  f8 ff ff 1a                                      bne #0x5d2f7c
005d2f98  01 00 a0 e3                                      mov r0, #1
005d2f9c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x005d2fa0, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE15getParameterCvtEtPNS_4core8CMatrix4IfEEi
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::getParameterCvt(unsigned short, glitch::core::CMatrix4<float>*, int) const
; decoder-mode: arm
005d2fa0  dc ff ff ea                                      b #0x5d2f18

; FUNCTION 0x005d2fa4, declared_size=92, range_size=92, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE12getParameterEtjRNS_4core8CMatrix4IfEE
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::getParameter(unsigned short, unsigned int, glitch::core::CMatrix4<float>&) const
; decoder-mode: arm
005d2fa4  10 40 2d e9                                      push {r4, lr}
005d2fa8  be c0 d0 e1                                      ldrh ip, [r0, #0xe]
005d2fac  01 00 5c e1                                      cmp ip, r1
005d2fb0  05 00 00 9a                                      bls #0x5d2fcc
005d2fb4  20 c0 90 e5                                      ldr ip, [r0, #0x20]
005d2fb8  01 c2 9c e0                                      adds ip, ip, r1, lsl #4
005d2fbc  02 00 00 0a                                      beq #0x5d2fcc
005d2fc0  06 40 dc e5                                      ldrb r4, [ip, #6]
005d2fc4  0b 00 54 e3                                      cmp r4, #0xb
005d2fc8  01 00 00 0a                                      beq #0x5d2fd4
005d2fcc  00 00 a0 e3                                      mov r0, #0
005d2fd0  10 80 bd e8                                      pop {r4, pc}
005d2fd4  08 10 9c e5                                      ldr r1, [ip, #8]
005d2fd8  01 00 52 e1                                      cmp r2, r1
005d2fdc  fa ff ff 2a                                      bhs #0x5d2fcc
005d2fe0  0c c0 9c e5                                      ldr ip, [ip, #0xc]
005d2fe4  24 00 90 e5                                      ldr r0, [r0, #0x24]
005d2fe8  03 10 a0 e1                                      mov r1, r3
005d2fec  02 21 8c e0                                      add r2, ip, r2, lsl #2
005d2ff0  02 00 80 e0                                      add r0, r0, r2
005d2ff4  8c 9d ff eb                                      bl #0x5ba62c
005d2ff8  01 00 a0 e3                                      mov r0, #1
005d2ffc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005d4488, declared_size=140, range_size=140, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE12setParameterEtPKNS_4core8CMatrix4IfEEi
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::setParameter(unsigned short, glitch::core::CMatrix4<float> const*, int)
; decoder-mode: arm
005d4488  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005d448c  be c0 d0 e1                                      ldrh ip, [r0, #0xe]
005d4490  02 40 a0 e1                                      mov r4, r2
005d4494  01 00 5c e1                                      cmp ip, r1
005d4498  05 00 00 9a                                      bls #0x5d44b4
005d449c  20 20 90 e5                                      ldr r2, [r0, #0x20]
005d44a0  01 12 92 e0                                      adds r1, r2, r1, lsl #4
005d44a4  02 00 00 0a                                      beq #0x5d44b4
005d44a8  06 20 d1 e5                                      ldrb r2, [r1, #6]
005d44ac  0b 00 52 e3                                      cmp r2, #0xb
005d44b0  01 00 00 0a                                      beq #0x5d44bc
005d44b4  00 00 a0 e3                                      mov r0, #0
005d44b8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005d44bc  08 80 91 e5                                      ldr r8, [r1, #8]
005d44c0  00 00 53 e3                                      cmp r3, #0
005d44c4  03 70 a0 11                                      movne r7, r3
005d44c8  44 70 a0 03                                      moveq r7, #0x44
005d44cc  98 47 28 e0                                      mla r8, r8, r7, r4
005d44d0  24 60 90 e5                                      ldr r6, [r0, #0x24]
005d44d4  08 00 54 e1                                      cmp r4, r8
005d44d8  0c 30 91 e5                                      ldr r3, [r1, #0xc]
005d44dc  0a 00 00 0a                                      beq #0x5d450c
005d44e0  03 60 86 e0                                      add r6, r6, r3
005d44e4  00 50 a0 e3                                      mov r5, #0
005d44e8  04 10 a0 e1                                      mov r1, r4
005d44ec  06 00 a0 e1                                      mov r0, r6
005d44f0  07 50 85 e0                                      add r5, r5, r7
005d44f4  00 20 a0 e3                                      mov r2, #0
005d44f8  2e 9a ff eb                                      bl #0x5badb8
005d44fc  05 10 84 e0                                      add r1, r4, r5
005d4500  01 00 58 e1                                      cmp r8, r1
005d4504  04 60 86 e2                                      add r6, r6, #4
005d4508  f7 ff ff 1a                                      bne #0x5d44ec
005d450c  01 00 a0 e3                                      mov r0, #1
005d4510  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x005d4514, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtEtPKNS_4core8CMatrix4IfEEi
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::setParameterCvt(unsigned short, glitch::core::CMatrix4<float> const*, int)
; decoder-mode: arm
005d4514  db ff ff ea                                      b #0x5d4488

; FUNCTION 0x005d4518, declared_size=96, range_size=96, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE12setParameterEtjRKNS_4core8CMatrix4IfEE
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::setParameter(unsigned short, unsigned int, glitch::core::CMatrix4<float> const&)
; decoder-mode: arm
005d4518  10 40 2d e9                                      push {r4, lr}
005d451c  be c0 d0 e1                                      ldrh ip, [r0, #0xe]
005d4520  01 00 5c e1                                      cmp ip, r1
005d4524  05 00 00 9a                                      bls #0x5d4540
005d4528  20 c0 90 e5                                      ldr ip, [r0, #0x20]
005d452c  01 c2 9c e0                                      adds ip, ip, r1, lsl #4
005d4530  02 00 00 0a                                      beq #0x5d4540
005d4534  06 40 dc e5                                      ldrb r4, [ip, #6]
005d4538  0b 00 54 e3                                      cmp r4, #0xb
005d453c  01 00 00 0a                                      beq #0x5d4548
005d4540  00 00 a0 e3                                      mov r0, #0
005d4544  10 80 bd e8                                      pop {r4, pc}
005d4548  08 10 9c e5                                      ldr r1, [ip, #8]
005d454c  01 00 52 e1                                      cmp r2, r1
005d4550  fa ff ff 2a                                      bhs #0x5d4540
005d4554  0c c0 9c e5                                      ldr ip, [ip, #0xc]
005d4558  24 00 90 e5                                      ldr r0, [r0, #0x24]
005d455c  03 10 a0 e1                                      mov r1, r3
005d4560  02 21 8c e0                                      add r2, ip, r2, lsl #2
005d4564  02 00 80 e0                                      add r0, r0, r2
005d4568  00 20 a0 e3                                      mov r2, #0
005d456c  11 9a ff eb                                      bl #0x5badb8
005d4570  01 00 a0 e3                                      mov r0, #1
005d4574  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005d4578, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtEtjRKNS_4core8CMatrix4IfEE
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::setParameterCvt(unsigned short, unsigned int, glitch::core::CMatrix4<float> const&)
; decoder-mode: arm
005d4578  e6 ff ff ea                                      b #0x5d4518

; FUNCTION 0x005d457c, declared_size=12, range_size=12, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE12setParameterEtRKNS_4core8CMatrix4IfEE
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::setParameter(unsigned short, glitch::core::CMatrix4<float> const&)
; decoder-mode: arm
005d457c  02 30 a0 e1                                      mov r3, r2
005d4580  00 20 a0 e3                                      mov r2, #0
005d4584  e3 ff ff ea                                      b #0x5d4518

; FUNCTION 0x005d4708, declared_size=12, range_size=12, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtEtRKNS_4core8CMatrix4IfEE
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::setParameterCvt(unsigned short, glitch::core::CMatrix4<float> const&)
; decoder-mode: arm
005d4708  02 30 a0 e1                                      mov r3, r2
005d470c  00 20 a0 e3                                      mov r2, #0
005d4710  80 ff ff ea                                      b #0x5d4518

; FUNCTION 0x005d47b4, declared_size=324, range_size=324, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE14grabParametersEv
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::grabParameters()
; decoder-mode: arm
005d47b4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005d47b8  be b0 d0 e1                                      ldrh fp, [r0, #0xe]
005d47bc  2c 81 9f e5                                      ldr r8, [pc, #0x12c]
005d47c0  0c d0 4d e2                                      sub sp, sp, #0xc
005d47c4  00 00 5b e3                                      cmp fp, #0
005d47c8  00 a0 a0 e1                                      mov sl, r0
005d47cc  08 80 8f e0                                      add r8, pc, r8
005d47d0  28 00 00 0a                                      beq #0x5d4878
005d47d4  18 91 9f e5                                      ldr sb, [pc, #0x118]
005d47d8  00 60 a0 e3                                      mov r6, #0
005d47dc  0b 20 a0 e1                                      mov r2, fp
005d47e0  06 30 a0 e1                                      mov r3, r6
005d47e4  03 00 52 e1                                      cmp r2, r3
005d47e8  20 20 9a 85                                      ldrhi r2, [sl, #0x20]
005d47ec  00 30 a0 93                                      movls r3, #0
005d47f0  03 32 82 80                                      addhi r3, r2, r3, lsl #4
005d47f4  06 20 d3 e5                                      ldrb r2, [r3, #6]
005d47f8  0b 20 42 e2                                      sub r2, r2, #0xb
005d47fc  07 00 52 e3                                      cmp r2, #7
005d4800  02 f1 8f 90                                      addls pc, pc, r2, lsl #2
005d4804  0c 00 00 ea                                      b #0x5d483c
005d4808  1c 00 00 ea                                      b #0x5d4880
005d480c  05 00 00 ea                                      b #0x5d4828
005d4810  04 00 00 ea                                      b #0x5d4828
005d4814  03 00 00 ea                                      b #0x5d4828
005d4818  02 00 00 ea                                      b #0x5d4828
005d481c  06 00 00 ea                                      b #0x5d483c
005d4820  05 00 00 ea                                      b #0x5d483c
005d4824  0a 00 00 ea                                      b #0x5d4854
005d4828  24 00 9a e5                                      ldr r0, [sl, #0x24]
005d482c  0c 20 93 e5                                      ldr r2, [r3, #0xc]
005d4830  08 10 93 e5                                      ldr r1, [r3, #8]
005d4834  02 00 80 e0                                      add r0, r0, r2
005d4838  90 9a ff eb                                      bl #0x5bb280
005d483c  01 60 86 e2                                      add r6, r6, #1
005d4840  76 30 ff e6                                      uxth r3, r6
005d4844  03 00 5b e1                                      cmp fp, r3
005d4848  0a 00 00 0a                                      beq #0x5d4878
005d484c  be 20 da e1                                      ldrh r2, [sl, #0xe]
005d4850  e3 ff ff ea                                      b #0x5d47e4
005d4854  0c 20 93 e5                                      ldr r2, [r3, #0xc]
005d4858  24 00 9a e5                                      ldr r0, [sl, #0x24]
005d485c  08 10 93 e5                                      ldr r1, [r3, #8]
005d4860  01 60 86 e2                                      add r6, r6, #1
005d4864  02 00 80 e0                                      add r0, r0, r2
005d4868  50 9b ff eb                                      bl #0x5bb5b0
005d486c  76 30 ff e6                                      uxth r3, r6
005d4870  03 00 5b e1                                      cmp fp, r3
005d4874  f4 ff ff 1a                                      bne #0x5d484c
005d4878  0c d0 8d e2                                      add sp, sp, #0xc
005d487c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005d4880  24 40 9a e5                                      ldr r4, [sl, #0x24]
005d4884  0c 20 93 e5                                      ldr r2, [r3, #0xc]
005d4888  08 70 93 e5                                      ldr r7, [r3, #8]
005d488c  02 40 84 e0                                      add r4, r4, r2
005d4890  07 71 84 e0                                      add r7, r4, r7, lsl #2
005d4894  07 00 54 e1                                      cmp r4, r7
005d4898  e7 ff ff 0a                                      beq #0x5d483c
005d489c  00 10 94 e5                                      ldr r1, [r4]
005d48a0  00 00 51 e3                                      cmp r1, #0
005d48a4  08 00 00 0a                                      beq #0x5d48cc
005d48a8  09 30 98 e7                                      ldr r3, [r8, sb]
005d48ac  00 50 93 e5                                      ldr r5, [r3]
005d48b0  00 00 55 e3                                      cmp r5, #0
005d48b4  08 00 00 0a                                      beq #0x5d48dc
005d48b8  00 20 95 e5                                      ldr r2, [r5]
005d48bc  00 20 83 e5                                      str r2, [r3]
005d48c0  05 00 a0 e1                                      mov r0, r5
005d48c4  d8 fd ff eb                                      bl #0x5d402c
005d48c8  00 50 84 e5                                      str r5, [r4]
005d48cc  04 40 84 e2                                      add r4, r4, #4
005d48d0  04 00 57 e1                                      cmp r7, r4
005d48d4  f0 ff ff 1a                                      bne #0x5d489c
005d48d8  d7 ff ff ea                                      b #0x5d483c
005d48dc  04 10 8d e5                                      str r1, [sp, #4]
005d48e0  9a fe ff eb                                      bl #0x5d4350
005d48e4  04 10 9d e5                                      ldr r1, [sp, #4]
005d48e8  00 50 a0 e1                                      mov r5, r0
005d48ec  f3 ff ff ea                                      b #0x5d48c0
; mapping-symbol data/literal pool
005d48f0  c4 02 3c 00 c0 3c 00 00                          .byte 0xc4, 0x02, 0x3c, 0x00, 0xc0, 0x3c, 0x00, 0x00

; FUNCTION 0x005d48f8, declared_size=368, range_size=368, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE13dropParameterEt
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::dropParameter(unsigned short)
; decoder-mode: arm
005d48f8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005d48fc  be 30 d0 e1                                      ldrh r3, [r0, #0xe]
005d4900  58 41 9f e5                                      ldr r4, [pc, #0x158]
005d4904  01 00 53 e1                                      cmp r3, r1
005d4908  20 30 90 85                                      ldrhi r3, [r0, #0x20]
005d490c  00 10 a0 93                                      movls r1, #0
005d4910  04 40 8f e0                                      add r4, pc, r4
005d4914  01 12 83 80                                      addhi r1, r3, r1, lsl #4
005d4918  06 30 d1 e5                                      ldrb r3, [r1, #6]
005d491c  0b 30 43 e2                                      sub r3, r3, #0xb
005d4920  07 00 53 e3                                      cmp r3, #7
005d4924  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
005d4928  26 00 00 ea                                      b #0x5d49c8
005d492c  37 00 00 ea                                      b #0x5d4a10
005d4930  25 00 00 ea                                      b #0x5d49cc
005d4934  24 00 00 ea                                      b #0x5d49cc
005d4938  23 00 00 ea                                      b #0x5d49cc
005d493c  22 00 00 ea                                      b #0x5d49cc
005d4940  20 00 00 ea                                      b #0x5d49c8
005d4944  1f 00 00 ea                                      b #0x5d49c8
005d4948  ff ff ff ea                                      b #0x5d494c
005d494c  24 50 90 e5                                      ldr r5, [r0, #0x24]
005d4950  0c 30 91 e5                                      ldr r3, [r1, #0xc]
005d4954  08 70 91 e5                                      ldr r7, [r1, #8]
005d4958  03 50 85 e0                                      add r5, r5, r3
005d495c  07 71 85 e0                                      add r7, r5, r7, lsl #2
005d4960  07 00 55 e1                                      cmp r5, r7
005d4964  17 00 00 0a                                      beq #0x5d49c8
005d4968  f4 80 9f e5                                      ldr r8, [pc, #0xf4]
005d496c  00 60 a0 e3                                      mov r6, #0
005d4970  00 30 95 e5                                      ldr r3, [r5]
005d4974  00 60 85 e5                                      str r6, [r5]
005d4978  04 50 85 e2                                      add r5, r5, #4
005d497c  00 00 53 e3                                      cmp r3, #0
005d4980  03 00 a0 e1                                      mov r0, r3
005d4984  0d 00 00 0a                                      beq #0x5d49c0
005d4988  00 20 93 e5                                      ldr r2, [r3]
005d498c  01 20 42 e2                                      sub r2, r2, #1
005d4990  00 00 52 e3                                      cmp r2, #0
005d4994  00 20 83 e5                                      str r2, [r3]
005d4998  08 00 00 1a                                      bne #0x5d49c0
005d499c  54 20 d3 e5                                      ldrb r2, [r3, #0x54]
005d49a0  00 00 52 e3                                      cmp r2, #0
005d49a4  08 20 94 07                                      ldreq r2, [r4, r8]
005d49a8  50 10 93 05                                      ldreq r1, [r3, #0x50]
005d49ac  00 c0 92 05                                      ldreq ip, [r2]
005d49b0  00 c0 81 05                                      streq ip, [r1]
005d49b4  00 10 82 05                                      streq r1, [r2]
005d49b8  50 60 83 e5                                      str r6, [r3, #0x50]
005d49bc  3b e6 f4 eb                                      bl #0x30e2b0
005d49c0  05 00 57 e1                                      cmp r7, r5
005d49c4  e9 ff ff 1a                                      bne #0x5d4970
005d49c8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005d49cc  24 40 90 e5                                      ldr r4, [r0, #0x24]
005d49d0  0c 30 91 e5                                      ldr r3, [r1, #0xc]
005d49d4  08 50 91 e5                                      ldr r5, [r1, #8]
005d49d8  03 40 84 e0                                      add r4, r4, r3
005d49dc  05 51 84 e0                                      add r5, r4, r5, lsl #2
005d49e0  05 00 54 e1                                      cmp r4, r5
005d49e4  f7 ff ff 0a                                      beq #0x5d49c8
005d49e8  00 60 a0 e3                                      mov r6, #0
005d49ec  00 00 94 e5                                      ldr r0, [r4]
005d49f0  00 60 84 e5                                      str r6, [r4]
005d49f4  04 40 84 e2                                      add r4, r4, #4
005d49f8  00 00 50 e3                                      cmp r0, #0
005d49fc  00 00 00 0a                                      beq #0x5d4a04
005d4a00  df 22 f5 eb                                      bl #0x31d584
005d4a04  04 00 55 e1                                      cmp r5, r4
005d4a08  f7 ff ff 1a                                      bne #0x5d49ec
005d4a0c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005d4a10  24 20 90 e5                                      ldr r2, [r0, #0x24]
005d4a14  0c 30 91 e5                                      ldr r3, [r1, #0xc]
005d4a18  08 c0 91 e5                                      ldr ip, [r1, #8]
005d4a1c  03 30 82 e0                                      add r3, r2, r3
005d4a20  0c c1 83 e0                                      add ip, r3, ip, lsl #2
005d4a24  0c 00 53 e1                                      cmp r3, ip
005d4a28  e6 ff ff 0a                                      beq #0x5d49c8
005d4a2c  30 60 9f e5                                      ldr r6, [pc, #0x30]
005d4a30  00 50 a0 e3                                      mov r5, #0
005d4a34  00 20 93 e5                                      ldr r2, [r3]
005d4a38  00 00 52 e3                                      cmp r2, #0
005d4a3c  06 10 94 17                                      ldrne r1, [r4, r6]
005d4a40  00 00 91 15                                      ldrne r0, [r1]
005d4a44  00 00 82 15                                      strne r0, [r2]
005d4a48  00 20 81 15                                      strne r2, [r1]
005d4a4c  00 50 83 15                                      strne r5, [r3]
005d4a50  04 30 83 e2                                      add r3, r3, #4
005d4a54  03 00 5c e1                                      cmp ip, r3
005d4a58  f5 ff ff 1a                                      bne #0x5d4a34
005d4a5c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
005d4a60  80 01 3c 00 c0 3c 00 00                          .byte 0x80, 0x01, 0x3c, 0x00, 0xc0, 0x3c, 0x00, 0x00

; FUNCTION 0x005d4a68, declared_size=56, range_size=56, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE14dropParametersEv
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::dropParameters()
; decoder-mode: arm
005d4a68  70 40 2d e9                                      push {r4, r5, r6, lr}
005d4a6c  be 50 d0 e1                                      ldrh r5, [r0, #0xe]
005d4a70  00 60 a0 e1                                      mov r6, r0
005d4a74  00 00 55 e3                                      cmp r5, #0
005d4a78  07 00 00 0a                                      beq #0x5d4a9c
005d4a7c  00 40 a0 e3                                      mov r4, #0
005d4a80  04 10 a0 e1                                      mov r1, r4
005d4a84  01 40 84 e2                                      add r4, r4, #1
005d4a88  06 00 a0 e1                                      mov r0, r6
005d4a8c  99 ff ff eb                                      bl #0x5d48f8
005d4a90  74 10 ff e6                                      uxth r1, r4
005d4a94  01 00 55 e1                                      cmp r5, r1
005d4a98  f9 ff ff 1a                                      bne #0x5d4a84
005d4a9c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x005d51f8, declared_size=88, range_size=88, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE12getParameterEtRNS_4core8CMatrix4IfEE
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::getParameter(unsigned short, glitch::core::CMatrix4<float>&) const
; decoder-mode: arm
005d51f8  10 40 2d e9                                      push {r4, lr}
005d51fc  be 30 d0 e1                                      ldrh r3, [r0, #0xe]
005d5200  01 00 53 e1                                      cmp r3, r1
005d5204  05 00 00 9a                                      bls #0x5d5220
005d5208  20 30 90 e5                                      ldr r3, [r0, #0x20]
005d520c  01 32 93 e0                                      adds r3, r3, r1, lsl #4
005d5210  02 00 00 0a                                      beq #0x5d5220
005d5214  06 c0 d3 e5                                      ldrb ip, [r3, #6]
005d5218  0b 00 5c e3                                      cmp ip, #0xb
005d521c  01 00 00 0a                                      beq #0x5d5228
005d5220  00 00 a0 e3                                      mov r0, #0
005d5224  10 80 bd e8                                      pop {r4, pc}
005d5228  08 10 93 e5                                      ldr r1, [r3, #8]
005d522c  00 00 51 e3                                      cmp r1, #0
005d5230  fa ff ff 0a                                      beq #0x5d5220
005d5234  24 00 90 e5                                      ldr r0, [r0, #0x24]
005d5238  0c 30 93 e5                                      ldr r3, [r3, #0xc]
005d523c  02 10 a0 e1                                      mov r1, r2
005d5240  03 00 80 e0                                      add r0, r0, r3
005d5244  f8 94 ff eb                                      bl #0x5ba62c
005d5248  01 00 a0 e3                                      mov r0, #1
005d524c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005d5250, declared_size=92, range_size=92, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE15getParameterCvtEtjRNS_4core8CMatrix4IfEE
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::getParameterCvt(unsigned short, unsigned int, glitch::core::CMatrix4<float>&) const
; decoder-mode: arm
005d5250  10 40 2d e9                                      push {r4, lr}
005d5254  be c0 d0 e1                                      ldrh ip, [r0, #0xe]
005d5258  01 00 5c e1                                      cmp ip, r1
005d525c  05 00 00 9a                                      bls #0x5d5278
005d5260  20 c0 90 e5                                      ldr ip, [r0, #0x20]
005d5264  01 c2 9c e0                                      adds ip, ip, r1, lsl #4
005d5268  02 00 00 0a                                      beq #0x5d5278
005d526c  06 40 dc e5                                      ldrb r4, [ip, #6]
005d5270  0b 00 54 e3                                      cmp r4, #0xb
005d5274  01 00 00 0a                                      beq #0x5d5280
005d5278  00 00 a0 e3                                      mov r0, #0
005d527c  10 80 bd e8                                      pop {r4, pc}
005d5280  08 10 9c e5                                      ldr r1, [ip, #8]
005d5284  01 00 52 e1                                      cmp r2, r1
005d5288  fa ff ff 2a                                      bhs #0x5d5278
005d528c  0c c0 9c e5                                      ldr ip, [ip, #0xc]
005d5290  24 00 90 e5                                      ldr r0, [r0, #0x24]
005d5294  03 10 a0 e1                                      mov r1, r3
005d5298  02 21 8c e0                                      add r2, ip, r2, lsl #2
005d529c  02 00 80 e0                                      add r0, r0, r2
005d52a0  e1 94 ff eb                                      bl #0x5ba62c
005d52a4  01 00 a0 e3                                      mov r0, #1
005d52a8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005d5490, declared_size=316, range_size=316, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE12getParameterEtNS0_29E_SHADER_PARAMETER_VALUE_TYPEEPvi
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::getParameter(unsigned short, glitch::video::E_SHADER_PARAMETER_VALUE_TYPE, void*, int) const
; decoder-mode: arm
005d5490  04 40 2d e5                                      str r4, [sp, #-4]!
005d5494  01 c0 42 e2                                      sub ip, r2, #1
005d5498  04 40 9d e5                                      ldr r4, [sp, #4]
005d549c  11 00 5c e3                                      cmp ip, #0x11
005d54a0  0c f1 8f 90                                      addls pc, pc, ip, lsl #2
005d54a4  19 00 00 ea                                      b #0x5d5510
005d54a8  1b 00 00 ea                                      b #0x5d551c
005d54ac  1e 00 00 ea                                      b #0x5d552c
005d54b0  21 00 00 ea                                      b #0x5d553c
005d54b4  24 00 00 ea                                      b #0x5d554c
005d54b8  27 00 00 ea                                      b #0x5d555c
005d54bc  2a 00 00 ea                                      b #0x5d556c
005d54c0  2d 00 00 ea                                      b #0x5d557c
005d54c4  30 00 00 ea                                      b #0x5d558c
005d54c8  10 00 00 ea                                      b #0x5d5510
005d54cc  0f 00 00 ea                                      b #0x5d5510
005d54d0  31 00 00 ea                                      b #0x5d559c
005d54d4  05 00 00 ea                                      b #0x5d54f0
005d54d8  04 00 00 ea                                      b #0x5d54f0
005d54dc  03 00 00 ea                                      b #0x5d54f0
005d54e0  02 00 00 ea                                      b #0x5d54f0
005d54e4  05 00 00 ea                                      b #0x5d5500
005d54e8  33 00 00 ea                                      b #0x5d55bc
005d54ec  2e 00 00 ea                                      b #0x5d55ac
005d54f0  03 20 a0 e1                                      mov r2, r3
005d54f4  04 30 a0 e1                                      mov r3, r4
005d54f8  10 00 bd e8                                      ldm sp!, {r4}
005d54fc  6a ff ff ea                                      b #0x5d52ac
005d5500  03 20 a0 e1                                      mov r2, r3
005d5504  04 30 a0 e1                                      mov r3, r4
005d5508  10 00 bd e8                                      ldm sp!, {r4}
005d550c  28 f0 ff ea                                      b #0x5d15b4
005d5510  00 00 a0 e3                                      mov r0, #0
005d5514  10 00 bd e8                                      ldm sp!, {r4}
005d5518  1e ff 2f e1                                      bx lr
005d551c  03 20 a0 e1                                      mov r2, r3
005d5520  04 30 a0 e1                                      mov r3, r4
005d5524  10 00 bd e8                                      ldm sp!, {r4}
005d5528  7d f1 ff ea                                      b #0x5d1b24
005d552c  03 20 a0 e1                                      mov r2, r3
005d5530  04 30 a0 e1                                      mov r3, r4
005d5534  10 00 bd e8                                      ldm sp!, {r4}
005d5538  4d f1 ff ea                                      b #0x5d1a74
005d553c  03 20 a0 e1                                      mov r2, r3
005d5540  04 30 a0 e1                                      mov r3, r4
005d5544  10 00 bd e8                                      ldm sp!, {r4}
005d5548  1d f1 ff ea                                      b #0x5d19c4
005d554c  03 20 a0 e1                                      mov r2, r3
005d5550  04 30 a0 e1                                      mov r3, r4
005d5554  10 00 bd e8                                      ldm sp!, {r4}
005d5558  ed f0 ff ea                                      b #0x5d1914
005d555c  03 20 a0 e1                                      mov r2, r3
005d5560  04 30 a0 e1                                      mov r3, r4
005d5564  10 00 bd e8                                      ldm sp!, {r4}
005d5568  c2 f0 ff ea                                      b #0x5d1878
005d556c  03 20 a0 e1                                      mov r2, r3
005d5570  04 30 a0 e1                                      mov r3, r4
005d5574  10 00 bd e8                                      ldm sp!, {r4}
005d5578  92 f0 ff ea                                      b #0x5d17c8
005d557c  03 20 a0 e1                                      mov r2, r3
005d5580  04 30 a0 e1                                      mov r3, r4
005d5584  10 00 bd e8                                      ldm sp!, {r4}
005d5588  62 f0 ff ea                                      b #0x5d1718
005d558c  03 20 a0 e1                                      mov r2, r3
005d5590  04 30 a0 e1                                      mov r3, r4
005d5594  10 00 bd e8                                      ldm sp!, {r4}
005d5598  32 f0 ff ea                                      b #0x5d1668
005d559c  03 20 a0 e1                                      mov r2, r3
005d55a0  04 30 a0 e1                                      mov r3, r4
005d55a4  10 00 bd e8                                      ldm sp!, {r4}
005d55a8  5a f6 ff ea                                      b #0x5d2f18
005d55ac  03 20 a0 e1                                      mov r2, r3
005d55b0  04 30 a0 e1                                      mov r3, r4
005d55b4  10 00 bd e8                                      ldm sp!, {r4}
005d55b8  6e ff ff ea                                      b #0x5d5378
005d55bc  03 20 a0 e1                                      mov r2, r3
005d55c0  04 30 a0 e1                                      mov r3, r4
005d55c4  10 00 bd e8                                      ldm sp!, {r4}
005d55c8  cc ef ff ea                                      b #0x5d1500

; FUNCTION 0x005d5860, declared_size=316, range_size=316, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtEtNS0_29E_SHADER_PARAMETER_VALUE_TYPEEPKvi
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::setParameterCvt(unsigned short, glitch::video::E_SHADER_PARAMETER_VALUE_TYPE, void const*, int)
; decoder-mode: arm
005d5860  04 40 2d e5                                      str r4, [sp, #-4]!
005d5864  01 c0 42 e2                                      sub ip, r2, #1
005d5868  04 40 9d e5                                      ldr r4, [sp, #4]
005d586c  11 00 5c e3                                      cmp ip, #0x11
005d5870  0c f1 8f 90                                      addls pc, pc, ip, lsl #2
005d5874  19 00 00 ea                                      b #0x5d58e0
005d5878  1b 00 00 ea                                      b #0x5d58ec
005d587c  1e 00 00 ea                                      b #0x5d58fc
005d5880  21 00 00 ea                                      b #0x5d590c
005d5884  24 00 00 ea                                      b #0x5d591c
005d5888  27 00 00 ea                                      b #0x5d592c
005d588c  2a 00 00 ea                                      b #0x5d593c
005d5890  2d 00 00 ea                                      b #0x5d594c
005d5894  30 00 00 ea                                      b #0x5d595c
005d5898  10 00 00 ea                                      b #0x5d58e0
005d589c  0f 00 00 ea                                      b #0x5d58e0
005d58a0  31 00 00 ea                                      b #0x5d596c
005d58a4  05 00 00 ea                                      b #0x5d58c0
005d58a8  04 00 00 ea                                      b #0x5d58c0
005d58ac  03 00 00 ea                                      b #0x5d58c0
005d58b0  02 00 00 ea                                      b #0x5d58c0
005d58b4  05 00 00 ea                                      b #0x5d58d0
005d58b8  33 00 00 ea                                      b #0x5d598c
005d58bc  2e 00 00 ea                                      b #0x5d597c
005d58c0  03 20 a0 e1                                      mov r2, r3
005d58c4  04 30 a0 e1                                      mov r3, r4
005d58c8  10 00 bd e8                                      ldm sp!, {r4}
005d58cc  c4 ff ff ea                                      b #0x5d57e4
005d58d0  03 20 a0 e1                                      mov r2, r3
005d58d4  04 30 a0 e1                                      mov r3, r4
005d58d8  10 00 bd e8                                      ldm sp!, {r4}
005d58dc  2e f1 ff ea                                      b #0x5d1d9c
005d58e0  00 00 a0 e3                                      mov r0, #0
005d58e4  10 00 bd e8                                      ldm sp!, {r4}
005d58e8  1e ff 2f e1                                      bx lr
005d58ec  03 20 a0 e1                                      mov r2, r3
005d58f0  04 30 a0 e1                                      mov r3, r4
005d58f4  10 00 bd e8                                      ldm sp!, {r4}
005d58f8  91 f3 ff ea                                      b #0x5d2744
005d58fc  03 20 a0 e1                                      mov r2, r3
005d5900  04 30 a0 e1                                      mov r3, r4
005d5904  10 00 bd e8                                      ldm sp!, {r4}
005d5908  53 f3 ff ea                                      b #0x5d265c
005d590c  03 20 a0 e1                                      mov r2, r3
005d5910  04 30 a0 e1                                      mov r3, r4
005d5914  10 00 bd e8                                      ldm sp!, {r4}
005d5918  13 f3 ff ea                                      b #0x5d256c
005d591c  03 20 a0 e1                                      mov r2, r3
005d5920  04 30 a0 e1                                      mov r3, r4
005d5924  10 00 bd e8                                      ldm sp!, {r4}
005d5928  d3 f2 ff ea                                      b #0x5d247c
005d592c  03 20 a0 e1                                      mov r2, r3
005d5930  04 30 a0 e1                                      mov r3, r4
005d5934  10 00 bd e8                                      ldm sp!, {r4}
005d5938  8a f2 ff ea                                      b #0x5d2368
005d593c  03 20 a0 e1                                      mov r2, r3
005d5940  04 30 a0 e1                                      mov r3, r4
005d5944  10 00 bd e8                                      ldm sp!, {r4}
005d5948  4c f2 ff ea                                      b #0x5d2280
005d594c  03 20 a0 e1                                      mov r2, r3
005d5950  04 30 a0 e1                                      mov r3, r4
005d5954  10 00 bd e8                                      ldm sp!, {r4}
005d5958  0c f2 ff ea                                      b #0x5d2190
005d595c  03 20 a0 e1                                      mov r2, r3
005d5960  04 30 a0 e1                                      mov r3, r4
005d5964  10 00 bd e8                                      ldm sp!, {r4}
005d5968  93 f1 ff ea                                      b #0x5d1fbc
005d596c  03 20 a0 e1                                      mov r2, r3
005d5970  04 30 a0 e1                                      mov r3, r4
005d5974  10 00 bd e8                                      ldm sp!, {r4}
005d5978  c2 fa ff ea                                      b #0x5d4488
005d597c  03 20 a0 e1                                      mov r2, r3
005d5980  04 30 a0 e1                                      mov r3, r4
005d5984  10 00 bd e8                                      ldm sp!, {r4}
005d5988  52 ff ff ea                                      b #0x5d56d8
005d598c  03 20 a0 e1                                      mov r2, r3
005d5990  04 30 a0 e1                                      mov r3, r4
005d5994  10 00 bd e8                                      ldm sp!, {r4}
005d5998  88 f0 ff ea                                      b #0x5d1bc0

; FUNCTION 0x005d59f4, declared_size=316, range_size=316, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE12setParameterEtNS0_29E_SHADER_PARAMETER_VALUE_TYPEEPKvi
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::setParameter(unsigned short, glitch::video::E_SHADER_PARAMETER_VALUE_TYPE, void const*, int)
; decoder-mode: arm
005d59f4  04 40 2d e5                                      str r4, [sp, #-4]!
005d59f8  01 c0 42 e2                                      sub ip, r2, #1
005d59fc  04 40 9d e5                                      ldr r4, [sp, #4]
005d5a00  11 00 5c e3                                      cmp ip, #0x11
005d5a04  0c f1 8f 90                                      addls pc, pc, ip, lsl #2
005d5a08  19 00 00 ea                                      b #0x5d5a74
005d5a0c  1b 00 00 ea                                      b #0x5d5a80
005d5a10  1e 00 00 ea                                      b #0x5d5a90
005d5a14  21 00 00 ea                                      b #0x5d5aa0
005d5a18  24 00 00 ea                                      b #0x5d5ab0
005d5a1c  27 00 00 ea                                      b #0x5d5ac0
005d5a20  2a 00 00 ea                                      b #0x5d5ad0
005d5a24  2d 00 00 ea                                      b #0x5d5ae0
005d5a28  30 00 00 ea                                      b #0x5d5af0
005d5a2c  10 00 00 ea                                      b #0x5d5a74
005d5a30  0f 00 00 ea                                      b #0x5d5a74
005d5a34  31 00 00 ea                                      b #0x5d5b00
005d5a38  05 00 00 ea                                      b #0x5d5a54
005d5a3c  04 00 00 ea                                      b #0x5d5a54
005d5a40  03 00 00 ea                                      b #0x5d5a54
005d5a44  02 00 00 ea                                      b #0x5d5a54
005d5a48  05 00 00 ea                                      b #0x5d5a64
005d5a4c  33 00 00 ea                                      b #0x5d5b20
005d5a50  2e 00 00 ea                                      b #0x5d5b10
005d5a54  03 20 a0 e1                                      mov r2, r3
005d5a58  04 30 a0 e1                                      mov r3, r4
005d5a5c  10 00 bd e8                                      ldm sp!, {r4}
005d5a60  cd ff ff ea                                      b #0x5d599c
005d5a64  03 20 a0 e1                                      mov r2, r3
005d5a68  04 30 a0 e1                                      mov r3, r4
005d5a6c  10 00 bd e8                                      ldm sp!, {r4}
005d5a70  a5 f3 ff ea                                      b #0x5d290c
005d5a74  00 00 a0 e3                                      mov r0, #0
005d5a78  10 00 bd e8                                      ldm sp!, {r4}
005d5a7c  1e ff 2f e1                                      bx lr
005d5a80  03 20 a0 e1                                      mov r2, r3
005d5a84  04 30 a0 e1                                      mov r3, r4
005d5a88  10 00 bd e8                                      ldm sp!, {r4}
005d5a8c  fa f4 ff ea                                      b #0x5d2e7c
005d5a90  03 20 a0 e1                                      mov r2, r3
005d5a94  04 30 a0 e1                                      mov r3, r4
005d5a98  10 00 bd e8                                      ldm sp!, {r4}
005d5a9c  ca f4 ff ea                                      b #0x5d2dcc
005d5aa0  03 20 a0 e1                                      mov r2, r3
005d5aa4  04 30 a0 e1                                      mov r3, r4
005d5aa8  10 00 bd e8                                      ldm sp!, {r4}
005d5aac  9a f4 ff ea                                      b #0x5d2d1c
005d5ab0  03 20 a0 e1                                      mov r2, r3
005d5ab4  04 30 a0 e1                                      mov r3, r4
005d5ab8  10 00 bd e8                                      ldm sp!, {r4}
005d5abc  6a f4 ff ea                                      b #0x5d2c6c
005d5ac0  03 20 a0 e1                                      mov r2, r3
005d5ac4  04 30 a0 e1                                      mov r3, r4
005d5ac8  10 00 bd e8                                      ldm sp!, {r4}
005d5acc  3f f4 ff ea                                      b #0x5d2bd0
005d5ad0  03 20 a0 e1                                      mov r2, r3
005d5ad4  04 30 a0 e1                                      mov r3, r4
005d5ad8  10 00 bd e8                                      ldm sp!, {r4}
005d5adc  0f f4 ff ea                                      b #0x5d2b20
005d5ae0  03 20 a0 e1                                      mov r2, r3
005d5ae4  04 30 a0 e1                                      mov r3, r4
005d5ae8  10 00 bd e8                                      ldm sp!, {r4}
005d5aec  df f3 ff ea                                      b #0x5d2a70
005d5af0  03 20 a0 e1                                      mov r2, r3
005d5af4  04 30 a0 e1                                      mov r3, r4
005d5af8  10 00 bd e8                                      ldm sp!, {r4}
005d5afc  af f3 ff ea                                      b #0x5d29c0
005d5b00  03 20 a0 e1                                      mov r2, r3
005d5b04  04 30 a0 e1                                      mov r3, r4
005d5b08  10 00 bd e8                                      ldm sp!, {r4}
005d5b0c  5d fa ff ea                                      b #0x5d4488
005d5b10  03 20 a0 e1                                      mov r2, r3
005d5b14  04 30 a0 e1                                      mov r3, r4
005d5b18  10 00 bd e8                                      ldm sp!, {r4}
005d5b1c  38 fd ff ea                                      b #0x5d5004
005d5b20  03 20 a0 e1                                      mov r2, r3
005d5b24  04 30 a0 e1                                      mov r3, r4
005d5b28  10 00 bd e8                                      ldm sp!, {r4}
005d5b2c  49 f3 ff ea                                      b #0x5d2858

; FUNCTION 0x005d5b30, declared_size=88, range_size=88, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE15getParameterCvtEtRNS_4core8CMatrix4IfEE
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::getParameterCvt(unsigned short, glitch::core::CMatrix4<float>&) const
; decoder-mode: arm
005d5b30  10 40 2d e9                                      push {r4, lr}
005d5b34  be 30 d0 e1                                      ldrh r3, [r0, #0xe]
005d5b38  01 00 53 e1                                      cmp r3, r1
005d5b3c  05 00 00 9a                                      bls #0x5d5b58
005d5b40  20 30 90 e5                                      ldr r3, [r0, #0x20]
005d5b44  01 32 93 e0                                      adds r3, r3, r1, lsl #4
005d5b48  02 00 00 0a                                      beq #0x5d5b58
005d5b4c  06 c0 d3 e5                                      ldrb ip, [r3, #6]
005d5b50  0b 00 5c e3                                      cmp ip, #0xb
005d5b54  01 00 00 0a                                      beq #0x5d5b60
005d5b58  00 00 a0 e3                                      mov r0, #0
005d5b5c  10 80 bd e8                                      pop {r4, pc}
005d5b60  08 10 93 e5                                      ldr r1, [r3, #8]
005d5b64  00 00 51 e3                                      cmp r1, #0
005d5b68  fa ff ff 0a                                      beq #0x5d5b58
005d5b6c  24 00 90 e5                                      ldr r0, [r0, #0x24]
005d5b70  0c 30 93 e5                                      ldr r3, [r3, #0xc]
005d5b74  02 10 a0 e1                                      mov r1, r2
005d5b78  03 00 80 e0                                      add r0, r0, r3
005d5b7c  aa 92 ff eb                                      bl #0x5ba62c
005d5b80  01 00 a0 e3                                      mov r0, #1
005d5b84  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005d5b88, declared_size=540, range_size=540, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE24initParametersToIdentityEv
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::initParametersToIdentity()
; decoder-mode: arm
005d5b88  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005d5b8c  be 60 d0 e1                                      ldrh r6, [r0, #0xe]
005d5b90  04 92 9f e5                                      ldr sb, [pc, #0x204]
005d5b94  0c d0 4d e2                                      sub sp, sp, #0xc
005d5b98  00 00 56 e3                                      cmp r6, #0
005d5b9c  00 50 a0 e1                                      mov r5, r0
005d5ba0  09 90 8f e0                                      add sb, pc, sb
005d5ba4  3a 00 00 0a                                      beq #0x5d5c94
005d5ba8  f0 c1 9f e5                                      ldr ip, [pc, #0x1f0]
005d5bac  00 40 a0 e3                                      mov r4, #0
005d5bb0  fe 85 a0 e3                                      mov r8, #0x3f800000
005d5bb4  00 a0 a0 e3                                      mov sl, #0
005d5bb8  06 20 a0 e1                                      mov r2, r6
005d5bbc  04 30 a0 e1                                      mov r3, r4
005d5bc0  04 70 a0 e1                                      mov r7, r4
005d5bc4  00 b0 e0 e3                                      mvn fp, #0
005d5bc8  03 00 52 e1                                      cmp r2, r3
005d5bcc  20 20 95 85                                      ldrhi r2, [r5, #0x20]
005d5bd0  00 30 a0 93                                      movls r3, #0
005d5bd4  03 32 82 80                                      addhi r3, r2, r3, lsl #4
005d5bd8  06 10 d3 e5                                      ldrb r1, [r3, #6]
005d5bdc  24 20 95 e5                                      ldr r2, [r5, #0x24]
005d5be0  0c 30 93 e5                                      ldr r3, [r3, #0xc]
005d5be4  03 00 82 e0                                      add r0, r2, r3
005d5be8  12 00 51 e3                                      cmp r1, #0x12
005d5bec  01 f1 8f 90                                      addls pc, pc, r1, lsl #2
005d5bf0  19 00 00 ea                                      b #0x5d5c5c
005d5bf4  66 00 00 ea                                      b #0x5d5d94
005d5bf8  63 00 00 ea                                      b #0x5d5d8c
005d5bfc  5f 00 00 ea                                      b #0x5d5d80
005d5c00  5a 00 00 ea                                      b #0x5d5d70
005d5c04  54 00 00 ea                                      b #0x5d5d5c
005d5c08  51 00 00 ea                                      b #0x5d5d54
005d5c0c  4d 00 00 ea                                      b #0x5d5d48
005d5c10  48 00 00 ea                                      b #0x5d5d38
005d5c14  42 00 00 ea                                      b #0x5d5d24
005d5c18  0f 00 00 ea                                      b #0x5d5c5c
005d5c1c  0e 00 00 ea                                      b #0x5d5c5c
005d5c20  06 00 00 ea                                      b #0x5d5c40
005d5c24  1c 00 00 ea                                      b #0x5d5c9c
005d5c28  1b 00 00 ea                                      b #0x5d5c9c
005d5c2c  1a 00 00 ea                                      b #0x5d5c9c
005d5c30  19 00 00 ea                                      b #0x5d5c9c
005d5c34  0e 00 00 ea                                      b #0x5d5c74
005d5c38  1f 00 00 ea                                      b #0x5d5cbc
005d5c3c  23 00 00 ea                                      b #0x5d5cd0
005d5c40  03 30 92 e7                                      ldr r3, [r2, r3]
005d5c44  00 00 53 e3                                      cmp r3, #0
005d5c48  03 00 00 0a                                      beq #0x5d5c5c
005d5c4c  0c 20 99 e7                                      ldr r2, [sb, ip]
005d5c50  00 10 92 e5                                      ldr r1, [r2]
005d5c54  00 10 83 e5                                      str r1, [r3]
005d5c58  00 30 82 e5                                      str r3, [r2]
005d5c5c  01 40 84 e2                                      add r4, r4, #1
005d5c60  74 30 ff e6                                      uxth r3, r4
005d5c64  03 00 56 e1                                      cmp r6, r3
005d5c68  09 00 00 0a                                      beq #0x5d5c94
005d5c6c  be 20 d5 e1                                      ldrh r2, [r5, #0xe]
005d5c70  d4 ff ff ea                                      b #0x5d5bc8
005d5c74  01 40 84 e2                                      add r4, r4, #1
005d5c78  01 b0 c0 e5                                      strb fp, [r0, #1]
005d5c7c  03 b0 c0 e5                                      strb fp, [r0, #3]
005d5c80  02 b0 c0 e5                                      strb fp, [r0, #2]
005d5c84  03 b0 c2 e7                                      strb fp, [r2, r3]
005d5c88  74 30 ff e6                                      uxth r3, r4
005d5c8c  03 00 56 e1                                      cmp r6, r3
005d5c90  f5 ff ff 1a                                      bne #0x5d5c6c
005d5c94  0c d0 8d e2                                      add sp, sp, #0xc
005d5c98  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005d5c9c  03 00 92 e7                                      ldr r0, [r2, r3]
005d5ca0  03 70 82 e7                                      str r7, [r2, r3]
005d5ca4  00 00 50 e3                                      cmp r0, #0
005d5ca8  eb ff ff 0a                                      beq #0x5d5c5c
005d5cac  04 c0 8d e5                                      str ip, [sp, #4]
005d5cb0  33 1e f5 eb                                      bl #0x31d584
005d5cb4  04 c0 9d e5                                      ldr ip, [sp, #4]
005d5cb8  e7 ff ff ea                                      b #0x5d5c5c
005d5cbc  04 80 80 e5                                      str r8, [r0, #4]
005d5cc0  0c 80 80 e5                                      str r8, [r0, #0xc]
005d5cc4  08 80 80 e5                                      str r8, [r0, #8]
005d5cc8  03 80 82 e7                                      str r8, [r2, r3]
005d5ccc  e2 ff ff ea                                      b #0x5d5c5c
005d5cd0  03 00 92 e7                                      ldr r0, [r2, r3]
005d5cd4  03 70 82 e7                                      str r7, [r2, r3]
005d5cd8  00 00 50 e3                                      cmp r0, #0
005d5cdc  de ff ff 0a                                      beq #0x5d5c5c
005d5ce0  00 30 90 e5                                      ldr r3, [r0]
005d5ce4  01 30 43 e2                                      sub r3, r3, #1
005d5ce8  00 00 53 e3                                      cmp r3, #0
005d5cec  00 30 80 e5                                      str r3, [r0]
005d5cf0  d9 ff ff 1a                                      bne #0x5d5c5c
005d5cf4  54 30 d0 e5                                      ldrb r3, [r0, #0x54]
005d5cf8  00 00 53 e3                                      cmp r3, #0
005d5cfc  0c 30 99 07                                      ldreq r3, [sb, ip]
005d5d00  50 20 90 05                                      ldreq r2, [r0, #0x50]
005d5d04  00 10 93 05                                      ldreq r1, [r3]
005d5d08  00 10 82 05                                      streq r1, [r2]
005d5d0c  00 20 83 05                                      streq r2, [r3]
005d5d10  50 70 80 e5                                      str r7, [r0, #0x50]
005d5d14  04 c0 8d e5                                      str ip, [sp, #4]
005d5d18  64 e1 f4 eb                                      bl #0x30e2b0
005d5d1c  04 c0 9d e5                                      ldr ip, [sp, #4]
005d5d20  cd ff ff ea                                      b #0x5d5c5c
005d5d24  03 80 82 e7                                      str r8, [r2, r3]
005d5d28  0c 80 80 e5                                      str r8, [r0, #0xc]
005d5d2c  04 80 80 e5                                      str r8, [r0, #4]
005d5d30  08 80 80 e5                                      str r8, [r0, #8]
005d5d34  c8 ff ff ea                                      b #0x5d5c5c
005d5d38  03 a0 82 e7                                      str sl, [r2, r3]
005d5d3c  08 a0 80 e5                                      str sl, [r0, #8]
005d5d40  04 a0 80 e5                                      str sl, [r0, #4]
005d5d44  c4 ff ff ea                                      b #0x5d5c5c
005d5d48  03 a0 82 e7                                      str sl, [r2, r3]
005d5d4c  04 a0 80 e5                                      str sl, [r0, #4]
005d5d50  c1 ff ff ea                                      b #0x5d5c5c
005d5d54  03 a0 82 e7                                      str sl, [r2, r3]
005d5d58  bf ff ff ea                                      b #0x5d5c5c
005d5d5c  03 70 82 e7                                      str r7, [r2, r3]
005d5d60  0c 70 80 e5                                      str r7, [r0, #0xc]
005d5d64  04 70 80 e5                                      str r7, [r0, #4]
005d5d68  08 70 80 e5                                      str r7, [r0, #8]
005d5d6c  ba ff ff ea                                      b #0x5d5c5c
005d5d70  03 70 82 e7                                      str r7, [r2, r3]
005d5d74  08 70 80 e5                                      str r7, [r0, #8]
005d5d78  04 70 80 e5                                      str r7, [r0, #4]
005d5d7c  b6 ff ff ea                                      b #0x5d5c5c
005d5d80  03 70 82 e7                                      str r7, [r2, r3]
005d5d84  04 70 80 e5                                      str r7, [r0, #4]
005d5d88  b3 ff ff ea                                      b #0x5d5c5c
005d5d8c  03 70 82 e7                                      str r7, [r2, r3]
005d5d90  b1 ff ff ea                                      b #0x5d5c5c
005d5d94  03 70 c2 e7                                      strb r7, [r2, r3]
005d5d98  af ff ff ea                                      b #0x5d5c5c
; mapping-symbol data/literal pool
005d5d9c  f0 ee 3b 00 c0 3c 00 00                          .byte 0xf0, 0xee, 0x3b, 0x00, 0xc0, 0x3c, 0x00, 0x00

; FUNCTION 0x005d5f44, declared_size=316, range_size=316, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE15getParameterCvtEtNS0_29E_SHADER_PARAMETER_VALUE_TYPEEPvi
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::getParameterCvt(unsigned short, glitch::video::E_SHADER_PARAMETER_VALUE_TYPE, void*, int) const
; decoder-mode: arm
005d5f44  04 40 2d e5                                      str r4, [sp, #-4]!
005d5f48  01 c0 42 e2                                      sub ip, r2, #1
005d5f4c  04 40 9d e5                                      ldr r4, [sp, #4]
005d5f50  11 00 5c e3                                      cmp ip, #0x11
005d5f54  0c f1 8f 90                                      addls pc, pc, ip, lsl #2
005d5f58  19 00 00 ea                                      b #0x5d5fc4
005d5f5c  1b 00 00 ea                                      b #0x5d5fd0
005d5f60  1e 00 00 ea                                      b #0x5d5fe0
005d5f64  21 00 00 ea                                      b #0x5d5ff0
005d5f68  24 00 00 ea                                      b #0x5d6000
005d5f6c  27 00 00 ea                                      b #0x5d6010
005d5f70  2a 00 00 ea                                      b #0x5d6020
005d5f74  2d 00 00 ea                                      b #0x5d6030
005d5f78  30 00 00 ea                                      b #0x5d6040
005d5f7c  10 00 00 ea                                      b #0x5d5fc4
005d5f80  0f 00 00 ea                                      b #0x5d5fc4
005d5f84  31 00 00 ea                                      b #0x5d6050
005d5f88  05 00 00 ea                                      b #0x5d5fa4
005d5f8c  04 00 00 ea                                      b #0x5d5fa4
005d5f90  03 00 00 ea                                      b #0x5d5fa4
005d5f94  02 00 00 ea                                      b #0x5d5fa4
005d5f98  05 00 00 ea                                      b #0x5d5fb4
005d5f9c  33 00 00 ea                                      b #0x5d6070
005d5fa0  2e 00 00 ea                                      b #0x5d6060
005d5fa4  03 20 a0 e1                                      mov r2, r3
005d5fa8  04 30 a0 e1                                      mov r3, r4
005d5fac  10 00 bd e8                                      ldm sp!, {r4}
005d5fb0  7b ff ff ea                                      b #0x5d5da4
005d5fb4  03 20 a0 e1                                      mov r2, r3
005d5fb8  04 30 a0 e1                                      mov r3, r4
005d5fbc  10 00 bd e8                                      ldm sp!, {r4}
005d5fc0  9d ea ff ea                                      b #0x5d0a3c
005d5fc4  00 00 a0 e3                                      mov r0, #0
005d5fc8  10 00 bd e8                                      ldm sp!, {r4}
005d5fcc  1e ff 2f e1                                      bx lr
005d5fd0  03 20 a0 e1                                      mov r2, r3
005d5fd4  04 30 a0 e1                                      mov r3, r4
005d5fd8  10 00 bd e8                                      ldm sp!, {r4}
005d5fdc  11 ed ff ea                                      b #0x5d1428
005d5fe0  03 20 a0 e1                                      mov r2, r3
005d5fe4  04 30 a0 e1                                      mov r3, r4
005d5fe8  10 00 bd e8                                      ldm sp!, {r4}
005d5fec  d3 ec ff ea                                      b #0x5d1340
005d5ff0  03 20 a0 e1                                      mov r2, r3
005d5ff4  04 30 a0 e1                                      mov r3, r4
005d5ff8  10 00 bd e8                                      ldm sp!, {r4}
005d5ffc  93 ec ff ea                                      b #0x5d1250
005d6000  03 20 a0 e1                                      mov r2, r3
005d6004  04 30 a0 e1                                      mov r3, r4
005d6008  10 00 bd e8                                      ldm sp!, {r4}
005d600c  53 ec ff ea                                      b #0x5d1160
005d6010  03 20 a0 e1                                      mov r2, r3
005d6014  04 30 a0 e1                                      mov r3, r4
005d6018  10 00 bd e8                                      ldm sp!, {r4}
005d601c  0a ec ff ea                                      b #0x5d104c
005d6020  03 20 a0 e1                                      mov r2, r3
005d6024  04 30 a0 e1                                      mov r3, r4
005d6028  10 00 bd e8                                      ldm sp!, {r4}
005d602c  cc eb ff ea                                      b #0x5d0f64
005d6030  03 20 a0 e1                                      mov r2, r3
005d6034  04 30 a0 e1                                      mov r3, r4
005d6038  10 00 bd e8                                      ldm sp!, {r4}
005d603c  8c eb ff ea                                      b #0x5d0e74
005d6040  03 20 a0 e1                                      mov r2, r3
005d6044  04 30 a0 e1                                      mov r3, r4
005d6048  10 00 bd e8                                      ldm sp!, {r4}
005d604c  04 eb ff ea                                      b #0x5d0c64
005d6050  03 20 a0 e1                                      mov r2, r3
005d6054  04 30 a0 e1                                      mov r3, r4
005d6058  10 00 bd e8                                      ldm sp!, {r4}
005d605c  ad f3 ff ea                                      b #0x5d2f18
005d6060  03 20 a0 e1                                      mov r2, r3
005d6064  04 30 a0 e1                                      mov r3, r4
005d6068  10 00 bd e8                                      ldm sp!, {r4}
005d606c  56 fd ff ea                                      b #0x5d55cc
005d6070  03 20 a0 e1                                      mov r2, r3
005d6074  04 30 a0 e1                                      mov r3, r4
005d6078  10 00 bd e8                                      ldm sp!, {r4}
005d607c  fa e9 ff ea                                      b #0x5d086c

; FUNCTION 0x005d6080, declared_size=1652, range_size=1652, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE21deserializeAttributesEPNS_2io11IAttributesE
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::deserializeAttributes(glitch::io::IAttributes*)
; decoder-mode: arm
005d6080  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005d6084  5c 26 9f e5                                      ldr r2, [pc, #0x65c]
005d6088  5c 36 9f e5                                      ldr r3, [pc, #0x65c]
005d608c  73 df 4d e2                                      sub sp, sp, #0x1cc
005d6090  02 20 8f e0                                      add r2, pc, r2
005d6094  34 30 8d e5                                      str r3, [sp, #0x34]
005d6098  03 30 92 e7                                      ldr r3, [r2, r3]
005d609c  24 20 8d e5                                      str r2, [sp, #0x24]
005d60a0  08 00 8d e5                                      str r0, [sp, #8]
005d60a4  be c0 d0 e1                                      ldrh ip, [r0, #0xe]
005d60a8  00 30 93 e5                                      ldr r3, [r3]
005d60ac  01 80 a0 e1                                      mov r8, r1
005d60b0  00 00 5c e3                                      cmp ip, #0
005d60b4  28 c0 8d e5                                      str ip, [sp, #0x28]
005d60b8  c4 31 8d e5                                      str r3, [sp, #0x1c4]
005d60bc  7c 01 00 0a                                      beq #0x5d66b4
005d60c0  28 06 9f e5                                      ldr r0, [pc, #0x628]
005d60c4  00 90 a0 e3                                      mov sb, #0
005d60c8  0c 20 a0 e1                                      mov r2, ip
005d60cc  30 00 8d e5                                      str r0, [sp, #0x30]
005d60d0  4b 1f 8d e2                                      add r1, sp, #0x12c
005d60d4  49 cf 8d e2                                      add ip, sp, #0x124
005d60d8  38 00 8d e2                                      add r0, sp, #0x38
005d60dc  fe 55 a0 e3                                      mov r5, #0x3f800000
005d60e0  09 30 a0 e1                                      mov r3, sb
005d60e4  10 10 8d e5                                      str r1, [sp, #0x10]
005d60e8  98 a0 8d e2                                      add sl, sp, #0x98
005d60ec  2c c0 8d e5                                      str ip, [sp, #0x2c]
005d60f0  04 00 8d e5                                      str r0, [sp, #4]
005d60f4  02 00 53 e1                                      cmp r3, r2
005d60f8  08 10 9d 35                                      ldrlo r1, [sp, #8]
005d60fc  00 70 a0 23                                      movhs r7, #0
005d6100  08 00 a0 e1                                      mov r0, r8
005d6104  20 70 91 35                                      ldrlo r7, [r1, #0x20]
005d6108  03 72 87 30                                      addlo r7, r7, r3, lsl #4
005d610c  00 10 97 e5                                      ldr r1, [r7]
005d6110  00 30 98 e5                                      ldr r3, [r8]
005d6114  00 00 51 e3                                      cmp r1, #0
005d6118  30 30 93 e5                                      ldr r3, [r3, #0x30]
005d611c  04 10 81 12                                      addne r1, r1, #4
005d6120  33 ff 2f e1                                      blx r3
005d6124  08 20 9d e5                                      ldr r2, [sp, #8]
005d6128  10 00 9d e5                                      ldr r0, [sp, #0x10]
005d612c  0c 40 97 e5                                      ldr r4, [r7, #0xc]
005d6130  24 60 92 e5                                      ldr r6, [r2, #0x24]
005d6134  13 f9 ff eb                                      bl #0x5d4588
005d6138  08 30 97 e5                                      ldr r3, [r7, #8]
005d613c  00 00 53 e3                                      cmp r3, #0
005d6140  68 00 00 0a                                      beq #0x5d62e8
005d6144  48 30 8d e2                                      add r3, sp, #0x48
005d6148  4a cf 8d e2                                      add ip, sp, #0x128
005d614c  54 00 8d e2                                      add r0, sp, #0x54
005d6150  dc 10 8d e2                                      add r1, sp, #0xdc
005d6154  fc 20 8d e2                                      add r2, sp, #0xfc
005d6158  04 60 86 e0                                      add r6, r6, r4
005d615c  14 30 8d e5                                      str r3, [sp, #0x14]
005d6160  03 40 a0 e3                                      mov r4, #3
005d6164  18 c0 8d e5                                      str ip, [sp, #0x18]
005d6168  0c 00 8d e5                                      str r0, [sp, #0xc]
005d616c  1c 10 8d e5                                      str r1, [sp, #0x1c]
005d6170  20 20 8d e5                                      str r2, [sp, #0x20]
005d6174  0a 00 a0 e1                                      mov r0, sl
005d6178  00 10 a0 e3                                      mov r1, #0
005d617c  40 20 a0 e3                                      mov r2, #0x40
005d6180  b6 e0 f4 eb                                      bl #0x30e460
005d6184  01 30 a0 e3                                      mov r3, #1
005d6188  d8 30 cd e5                                      strb r3, [sp, #0xd8]
005d618c  98 50 8d e5                                      str r5, [sp, #0x98]
005d6190  ac 50 8d e5                                      str r5, [sp, #0xac]
005d6194  c0 50 8d e5                                      str r5, [sp, #0xc0]
005d6198  d4 50 8d e5                                      str r5, [sp, #0xd4]
005d619c  06 30 d7 e5                                      ldrb r3, [r7, #6]
005d61a0  01 30 43 e2                                      sub r3, r3, #1
005d61a4  11 00 53 e3                                      cmp r3, #0x11
005d61a8  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
005d61ac  48 00 00 ea                                      b #0x5d62d4
005d61b0  33 01 00 ea                                      b #0x5d6684
005d61b4  21 01 00 ea                                      b #0x5d6640
005d61b8  0d 01 00 ea                                      b #0x5d65f4
005d61bc  f7 00 00 ea                                      b #0x5d65a0
005d61c0  ea 00 00 ea                                      b #0x5d6570
005d61c4  d8 00 00 ea                                      b #0x5d652c
005d61c8  c4 00 00 ea                                      b #0x5d64e0
005d61cc  ae 00 00 ea                                      b #0x5d648c
005d61d0  3f 00 00 ea                                      b #0x5d62d4
005d61d4  3e 00 00 ea                                      b #0x5d62d4
005d61d8  8d 00 00 ea                                      b #0x5d6414
005d61dc  76 00 00 ea                                      b #0x5d63bc
005d61e0  75 00 00 ea                                      b #0x5d63bc
005d61e4  74 00 00 ea                                      b #0x5d63bc
005d61e8  73 00 00 ea                                      b #0x5d63bc
005d61ec  5b 00 00 ea                                      b #0x5d6360
005d61f0  4a 00 00 ea                                      b #0x5d6320
005d61f4  ff ff ff ea                                      b #0x5d61f8
005d61f8  04 20 a0 e1                                      mov r2, r4
005d61fc  00 30 98 e5                                      ldr r3, [r8]
005d6200  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
005d6204  08 10 a0 e1                                      mov r1, r8
005d6208  0f e0 a0 e1                                      mov lr, pc
005d620c  d8 f2 93 e5                                      ldr pc, [r3, #0x2d8]
005d6210  24 31 9d e5                                      ldr r3, [sp, #0x124]
005d6214  00 00 53 e3                                      cmp r3, #0
005d6218  00 20 93 15                                      ldrne r2, [r3]
005d621c  01 20 82 12                                      addne r2, r2, #1
005d6220  00 20 83 15                                      strne r2, [r3]
005d6224  00 00 96 e5                                      ldr r0, [r6]
005d6228  00 30 86 e5                                      str r3, [r6]
005d622c  00 00 50 e3                                      cmp r0, #0
005d6230  11 00 00 0a                                      beq #0x5d627c
005d6234  00 30 90 e5                                      ldr r3, [r0]
005d6238  01 30 43 e2                                      sub r3, r3, #1
005d623c  00 00 53 e3                                      cmp r3, #0
005d6240  00 30 80 e5                                      str r3, [r0]
005d6244  0c 00 00 1a                                      bne #0x5d627c
005d6248  54 30 d0 e5                                      ldrb r3, [r0, #0x54]
005d624c  00 00 53 e3                                      cmp r3, #0
005d6250  06 00 00 1a                                      bne #0x5d6270
005d6254  24 20 9d e5                                      ldr r2, [sp, #0x24]
005d6258  30 10 9d e5                                      ldr r1, [sp, #0x30]
005d625c  01 30 92 e7                                      ldr r3, [r2, r1]
005d6260  50 20 90 e5                                      ldr r2, [r0, #0x50]
005d6264  00 10 93 e5                                      ldr r1, [r3]
005d6268  00 10 82 e5                                      str r1, [r2]
005d626c  00 20 83 e5                                      str r2, [r3]
005d6270  00 30 a0 e3                                      mov r3, #0
005d6274  50 30 80 e5                                      str r3, [r0, #0x50]
005d6278  0c e0 f4 eb                                      bl #0x30e2b0
005d627c  24 01 9d e5                                      ldr r0, [sp, #0x124]
005d6280  00 00 50 e3                                      cmp r0, #0
005d6284  11 00 00 0a                                      beq #0x5d62d0
005d6288  00 30 90 e5                                      ldr r3, [r0]
005d628c  01 30 43 e2                                      sub r3, r3, #1
005d6290  00 00 53 e3                                      cmp r3, #0
005d6294  00 30 80 e5                                      str r3, [r0]
005d6298  0c 00 00 1a                                      bne #0x5d62d0
005d629c  54 30 d0 e5                                      ldrb r3, [r0, #0x54]
005d62a0  00 00 53 e3                                      cmp r3, #0
005d62a4  06 00 00 1a                                      bne #0x5d62c4
005d62a8  24 10 9d e5                                      ldr r1, [sp, #0x24]
005d62ac  30 c0 9d e5                                      ldr ip, [sp, #0x30]
005d62b0  50 20 90 e5                                      ldr r2, [r0, #0x50]
005d62b4  0c 30 91 e7                                      ldr r3, [r1, ip]
005d62b8  00 10 93 e5                                      ldr r1, [r3]
005d62bc  00 10 82 e5                                      str r1, [r2]
005d62c0  00 20 83 e5                                      str r2, [r3]
005d62c4  00 30 a0 e3                                      mov r3, #0
005d62c8  50 30 80 e5                                      str r3, [r0, #0x50]
005d62cc  f7 df f4 eb                                      bl #0x30e2b0
005d62d0  04 60 86 e2                                      add r6, r6, #4
005d62d4  08 20 97 e5                                      ldr r2, [r7, #8]
005d62d8  02 30 44 e2                                      sub r3, r4, #2
005d62dc  01 40 84 e2                                      add r4, r4, #1
005d62e0  03 00 52 e1                                      cmp r2, r3
005d62e4  a2 ff ff 8a                                      bhi #0x5d6174
005d62e8  00 30 98 e5                                      ldr r3, [r8]
005d62ec  08 00 a0 e1                                      mov r0, r8
005d62f0  0f e0 a0 e1                                      mov lr, pc
005d62f4  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
005d62f8  10 00 9d e5                                      ldr r0, [sp, #0x10]
005d62fc  0a 99 ff eb                                      bl #0x5bc72c
005d6300  28 20 9d e5                                      ldr r2, [sp, #0x28]
005d6304  01 90 89 e2                                      add sb, sb, #1
005d6308  79 30 ff e6                                      uxth r3, sb
005d630c  03 00 52 e1                                      cmp r2, r3
005d6310  e7 00 00 0a                                      beq #0x5d66b4
005d6314  08 c0 9d e5                                      ldr ip, [sp, #8]
005d6318  be 20 dc e1                                      ldrh r2, [ip, #0xe]
005d631c  74 ff ff ea                                      b #0x5d60f4
005d6320  04 20 a0 e1                                      mov r2, r4
005d6324  04 00 9d e5                                      ldr r0, [sp, #4]
005d6328  08 10 a0 e1                                      mov r1, r8
005d632c  00 30 98 e5                                      ldr r3, [r8]
005d6330  0f e0 a0 e1                                      mov lr, pc
005d6334  40 f1 93 e5                                      ldr pc, [r3, #0x140]
005d6338  04 c0 9d e5                                      ldr ip, [sp, #4]
005d633c  0f 00 9c e8                                      ldm ip, {r0, r1, r2, r3}
005d6340  0f 00 86 e8                                      stm r6, {r0, r1, r2, r3}
005d6344  08 20 97 e5                                      ldr r2, [r7, #8]
005d6348  02 30 44 e2                                      sub r3, r4, #2
005d634c  10 60 86 e2                                      add r6, r6, #0x10
005d6350  03 00 52 e1                                      cmp r2, r3
005d6354  01 40 84 e2                                      add r4, r4, #1
005d6358  85 ff ff 8a                                      bhi #0x5d6174
005d635c  e1 ff ff ea                                      b #0x5d62e8
005d6360  04 10 a0 e1                                      mov r1, r4
005d6364  00 30 98 e5                                      ldr r3, [r8]
005d6368  08 00 a0 e1                                      mov r0, r8
005d636c  0f e0 a0 e1                                      mov lr, pc
005d6370  28 f1 93 e5                                      ldr pc, [r3, #0x128]
005d6374  04 20 a0 e3                                      mov r2, #4
005d6378  50 38 e7 e7                                      ubfx r3, r0, #0x10, #8
005d637c  50 ec e7 e7                                      ubfx lr, r0, #0x18, #8
005d6380  50 c4 e7 e7                                      ubfx ip, r0, #8, #8
005d6384  48 00 cd e5                                      strb r0, [sp, #0x48]
005d6388  14 10 9d e5                                      ldr r1, [sp, #0x14]
005d638c  06 00 a0 e1                                      mov r0, r6
005d6390  4a 30 cd e5                                      strb r3, [sp, #0x4a]
005d6394  49 c0 cd e5                                      strb ip, [sp, #0x49]
005d6398  4b e0 cd e5                                      strb lr, [sp, #0x4b]
005d639c  31 e1 f4 eb                                      bl #0x30e868
005d63a0  08 20 97 e5                                      ldr r2, [r7, #8]
005d63a4  02 30 44 e2                                      sub r3, r4, #2
005d63a8  04 60 86 e2                                      add r6, r6, #4
005d63ac  03 00 52 e1                                      cmp r2, r3
005d63b0  01 40 84 e2                                      add r4, r4, #1
005d63b4  6e ff ff 8a                                      bhi #0x5d6174
005d63b8  ca ff ff ea                                      b #0x5d62e8
005d63bc  04 20 a0 e1                                      mov r2, r4
005d63c0  00 30 98 e5                                      ldr r3, [r8]
005d63c4  18 00 9d e5                                      ldr r0, [sp, #0x18]
005d63c8  08 10 a0 e1                                      mov r1, r8
005d63cc  0f e0 a0 e1                                      mov lr, pc
005d63d0  c0 f2 93 e5                                      ldr pc, [r3, #0x2c0]
005d63d4  28 31 9d e5                                      ldr r3, [sp, #0x128]
005d63d8  00 00 53 e3                                      cmp r3, #0
005d63dc  04 20 93 15                                      ldrne r2, [r3, #4]
005d63e0  01 20 82 12                                      addne r2, r2, #1
005d63e4  04 20 83 15                                      strne r2, [r3, #4]
005d63e8  00 00 96 e5                                      ldr r0, [r6]
005d63ec  00 30 86 e5                                      str r3, [r6]
005d63f0  00 00 50 e3                                      cmp r0, #0
005d63f4  00 00 00 0a                                      beq #0x5d63fc
005d63f8  61 1c f5 eb                                      bl #0x31d584
005d63fc  28 01 9d e5                                      ldr r0, [sp, #0x128]
005d6400  00 00 50 e3                                      cmp r0, #0
005d6404  b1 ff ff 0a                                      beq #0x5d62d0
005d6408  5d 1c f5 eb                                      bl #0x31d584
005d640c  04 60 86 e2                                      add r6, r6, #4
005d6410  af ff ff ea                                      b #0x5d62d4
005d6414  00 30 98 e5                                      ldr r3, [r8]
005d6418  04 20 a0 e1                                      mov r2, r4
005d641c  0c 00 9d e5                                      ldr r0, [sp, #0xc]
005d6420  08 10 a0 e1                                      mov r1, r8
005d6424  0f e0 a0 e1                                      mov lr, pc
005d6428  18 f2 93 e5                                      ldr pc, [r3, #0x218]
005d642c  0c 10 9d e5                                      ldr r1, [sp, #0xc]
005d6430  41 20 a0 e3                                      mov r2, #0x41
005d6434  0a 00 a0 e1                                      mov r0, sl
005d6438  0a e1 f4 eb                                      bl #0x30e868
005d643c  0a 00 a0 e1                                      mov r0, sl
005d6440  55 8f ff eb                                      bl #0x5ba19c
005d6444  00 00 50 e3                                      cmp r0, #0
005d6448  00 30 a0 13                                      movne r3, #0
005d644c  00 30 86 15                                      strne r3, [r6]
005d6450  9e ff ff 1a                                      bne #0x5d62d0
005d6454  24 00 9d e5                                      ldr r0, [sp, #0x24]
005d6458  30 c0 9d e5                                      ldr ip, [sp, #0x30]
005d645c  0c 30 90 e7                                      ldr r3, [r0, ip]
005d6460  00 b0 93 e5                                      ldr fp, [r3]
005d6464  00 00 5b e3                                      cmp fp, #0
005d6468  9a 00 00 0a                                      beq #0x5d66d8
005d646c  00 20 9b e5                                      ldr r2, [fp]
005d6470  00 20 83 e5                                      str r2, [r3]
005d6474  0b 00 a0 e1                                      mov r0, fp
005d6478  0a 10 a0 e1                                      mov r1, sl
005d647c  ea f6 ff eb                                      bl #0x5d402c
005d6480  00 b0 86 e5                                      str fp, [r6]
005d6484  04 60 86 e2                                      add r6, r6, #4
005d6488  91 ff ff ea                                      b #0x5d62d4
005d648c  04 20 a0 e1                                      mov r2, r4
005d6490  00 30 98 e5                                      ldr r3, [r8]
005d6494  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
005d6498  08 10 a0 e1                                      mov r1, r8
005d649c  0f e0 a0 e1                                      mov lr, pc
005d64a0  d0 f1 93 e5                                      ldr pc, [r3, #0x1d0]
005d64a4  dc 30 9d e5                                      ldr r3, [sp, #0xdc]
005d64a8  00 30 86 e5                                      str r3, [r6]
005d64ac  e0 30 9d e5                                      ldr r3, [sp, #0xe0]
005d64b0  04 30 86 e5                                      str r3, [r6, #4]
005d64b4  e4 30 9d e5                                      ldr r3, [sp, #0xe4]
005d64b8  08 30 86 e5                                      str r3, [r6, #8]
005d64bc  e8 30 9d e5                                      ldr r3, [sp, #0xe8]
005d64c0  0c 30 86 e5                                      str r3, [r6, #0xc]
005d64c4  08 20 97 e5                                      ldr r2, [r7, #8]
005d64c8  02 30 44 e2                                      sub r3, r4, #2
005d64cc  10 60 86 e2                                      add r6, r6, #0x10
005d64d0  03 00 52 e1                                      cmp r2, r3
005d64d4  01 40 84 e2                                      add r4, r4, #1
005d64d8  25 ff ff 8a                                      bhi #0x5d6174
005d64dc  81 ff ff ea                                      b #0x5d62e8
005d64e0  04 20 a0 e1                                      mov r2, r4
005d64e4  00 30 98 e5                                      ldr r3, [r8]
005d64e8  20 00 9d e5                                      ldr r0, [sp, #0x20]
005d64ec  08 10 a0 e1                                      mov r1, r8
005d64f0  0f e0 a0 e1                                      mov lr, pc
005d64f4  b8 f1 93 e5                                      ldr pc, [r3, #0x1b8]
005d64f8  fc 30 9d e5                                      ldr r3, [sp, #0xfc]
005d64fc  00 30 86 e5                                      str r3, [r6]
005d6500  00 31 9d e5                                      ldr r3, [sp, #0x100]
005d6504  04 30 86 e5                                      str r3, [r6, #4]
005d6508  04 31 9d e5                                      ldr r3, [sp, #0x104]
005d650c  08 30 86 e5                                      str r3, [r6, #8]
005d6510  08 20 97 e5                                      ldr r2, [r7, #8]
005d6514  02 30 44 e2                                      sub r3, r4, #2
005d6518  0c 60 86 e2                                      add r6, r6, #0xc
005d651c  03 00 52 e1                                      cmp r2, r3
005d6520  01 40 84 e2                                      add r4, r4, #1
005d6524  12 ff ff 8a                                      bhi #0x5d6174
005d6528  6e ff ff ea                                      b #0x5d62e8
005d652c  04 20 a0 e1                                      mov r2, r4
005d6530  00 30 98 e5                                      ldr r3, [r8]
005d6534  45 0f 8d e2                                      add r0, sp, #0x114
005d6538  08 10 a0 e1                                      mov r1, r8
005d653c  0f e0 a0 e1                                      mov lr, pc
005d6540  a0 f1 93 e5                                      ldr pc, [r3, #0x1a0]
005d6544  14 31 9d e5                                      ldr r3, [sp, #0x114]
005d6548  00 30 86 e5                                      str r3, [r6]
005d654c  18 31 9d e5                                      ldr r3, [sp, #0x118]
005d6550  04 30 86 e5                                      str r3, [r6, #4]
005d6554  08 20 97 e5                                      ldr r2, [r7, #8]
005d6558  02 30 44 e2                                      sub r3, r4, #2
005d655c  08 60 86 e2                                      add r6, r6, #8
005d6560  03 00 52 e1                                      cmp r2, r3
005d6564  01 40 84 e2                                      add r4, r4, #1
005d6568  01 ff ff 8a                                      bhi #0x5d6174
005d656c  5d ff ff ea                                      b #0x5d62e8
005d6570  00 30 98 e5                                      ldr r3, [r8]
005d6574  04 10 a0 e1                                      mov r1, r4
005d6578  08 00 a0 e1                                      mov r0, r8
005d657c  0f e0 a0 e1                                      mov lr, pc
005d6580  74 f0 93 e5                                      ldr pc, [r3, #0x74]
005d6584  04 00 86 e4                                      str r0, [r6], #4
005d6588  08 20 97 e5                                      ldr r2, [r7, #8]
005d658c  02 30 44 e2                                      sub r3, r4, #2
005d6590  01 40 84 e2                                      add r4, r4, #1
005d6594  03 00 52 e1                                      cmp r2, r3
005d6598  f5 fe ff 8a                                      bhi #0x5d6174
005d659c  51 ff ff ea                                      b #0x5d62e8
005d65a0  04 20 a0 e1                                      mov r2, r4
005d65a4  00 30 98 e5                                      ldr r3, [r8]
005d65a8  ec 00 8d e2                                      add r0, sp, #0xec
005d65ac  08 10 a0 e1                                      mov r1, r8
005d65b0  0f e0 a0 e1                                      mov lr, pc
005d65b4  88 f1 93 e5                                      ldr pc, [r3, #0x188]
005d65b8  ec 30 9d e5                                      ldr r3, [sp, #0xec]
005d65bc  00 30 86 e5                                      str r3, [r6]
005d65c0  f0 30 9d e5                                      ldr r3, [sp, #0xf0]
005d65c4  04 30 86 e5                                      str r3, [r6, #4]
005d65c8  f4 30 9d e5                                      ldr r3, [sp, #0xf4]
005d65cc  08 30 86 e5                                      str r3, [r6, #8]
005d65d0  f8 30 9d e5                                      ldr r3, [sp, #0xf8]
005d65d4  0c 30 86 e5                                      str r3, [r6, #0xc]
005d65d8  08 20 97 e5                                      ldr r2, [r7, #8]
005d65dc  02 30 44 e2                                      sub r3, r4, #2
005d65e0  10 60 86 e2                                      add r6, r6, #0x10
005d65e4  03 00 52 e1                                      cmp r2, r3
005d65e8  01 40 84 e2                                      add r4, r4, #1
005d65ec  e0 fe ff 8a                                      bhi #0x5d6174
005d65f0  3c ff ff ea                                      b #0x5d62e8
005d65f4  04 20 a0 e1                                      mov r2, r4
005d65f8  00 30 98 e5                                      ldr r3, [r8]
005d65fc  42 0f 8d e2                                      add r0, sp, #0x108
005d6600  08 10 a0 e1                                      mov r1, r8
005d6604  0f e0 a0 e1                                      mov lr, pc
005d6608  70 f1 93 e5                                      ldr pc, [r3, #0x170]
005d660c  08 31 9d e5                                      ldr r3, [sp, #0x108]
005d6610  00 30 86 e5                                      str r3, [r6]
005d6614  0c 31 9d e5                                      ldr r3, [sp, #0x10c]
005d6618  04 30 86 e5                                      str r3, [r6, #4]
005d661c  10 31 9d e5                                      ldr r3, [sp, #0x110]
005d6620  08 30 86 e5                                      str r3, [r6, #8]
005d6624  08 20 97 e5                                      ldr r2, [r7, #8]
005d6628  02 30 44 e2                                      sub r3, r4, #2
005d662c  0c 60 86 e2                                      add r6, r6, #0xc
005d6630  03 00 52 e1                                      cmp r2, r3
005d6634  01 40 84 e2                                      add r4, r4, #1
005d6638  cd fe ff 8a                                      bhi #0x5d6174
005d663c  29 ff ff ea                                      b #0x5d62e8
005d6640  04 20 a0 e1                                      mov r2, r4
005d6644  00 30 98 e5                                      ldr r3, [r8]
005d6648  47 0f 8d e2                                      add r0, sp, #0x11c
005d664c  08 10 a0 e1                                      mov r1, r8
005d6650  0f e0 a0 e1                                      mov lr, pc
005d6654  58 f1 93 e5                                      ldr pc, [r3, #0x158]
005d6658  1c 31 9d e5                                      ldr r3, [sp, #0x11c]
005d665c  00 30 86 e5                                      str r3, [r6]
005d6660  20 31 9d e5                                      ldr r3, [sp, #0x120]
005d6664  04 30 86 e5                                      str r3, [r6, #4]
005d6668  08 20 97 e5                                      ldr r2, [r7, #8]
005d666c  02 30 44 e2                                      sub r3, r4, #2
005d6670  08 60 86 e2                                      add r6, r6, #8
005d6674  03 00 52 e1                                      cmp r2, r3
005d6678  01 40 84 e2                                      add r4, r4, #1
005d667c  bc fe ff 8a                                      bhi #0x5d6174
005d6680  18 ff ff ea                                      b #0x5d62e8
005d6684  00 30 98 e5                                      ldr r3, [r8]
005d6688  04 10 a0 e1                                      mov r1, r4
005d668c  08 00 a0 e1                                      mov r0, r8
005d6690  0f e0 a0 e1                                      mov lr, pc
005d6694  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
005d6698  04 00 86 e4                                      str r0, [r6], #4
005d669c  08 20 97 e5                                      ldr r2, [r7, #8]
005d66a0  02 30 44 e2                                      sub r3, r4, #2
005d66a4  01 40 84 e2                                      add r4, r4, #1
005d66a8  03 00 52 e1                                      cmp r2, r3
005d66ac  b0 fe ff 8a                                      bhi #0x5d6174
005d66b0  0c ff ff ea                                      b #0x5d62e8
005d66b4  24 10 9d e5                                      ldr r1, [sp, #0x24]
005d66b8  34 00 9d e5                                      ldr r0, [sp, #0x34]
005d66bc  c4 21 9d e5                                      ldr r2, [sp, #0x1c4]
005d66c0  00 30 91 e7                                      ldr r3, [r1, r0]
005d66c4  00 30 93 e5                                      ldr r3, [r3]
005d66c8  03 00 52 e1                                      cmp r2, r3
005d66cc  04 00 00 1a                                      bne #0x5d66e4
005d66d0  73 df 8d e2                                      add sp, sp, #0x1cc
005d66d4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005d66d8  1c f7 ff eb                                      bl #0x5d4350
005d66dc  00 b0 a0 e1                                      mov fp, r0
005d66e0  63 ff ff ea                                      b #0x5d6474
005d66e4  09 df f4 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
005d66e8  00 ea 3b 00 ac 40 00 00 c0 3c 00 00              .byte 0x00, 0xea, 0x3b, 0x00, 0xac, 0x40, 0x00, 0x00, 0xc0, 0x3c, 0x00, 0x00

; FUNCTION 0x005d69c8, declared_size=152, range_size=152, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE12setParameterEtjNS0_29E_SHADER_PARAMETER_VALUE_TYPEEPKv
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::setParameter(unsigned short, unsigned int, glitch::video::E_SHADER_PARAMETER_VALUE_TYPE, void const*)
; decoder-mode: arm
005d69c8  01 c0 43 e2                                      sub ip, r3, #1
005d69cc  00 30 9d e5                                      ldr r3, [sp]
005d69d0  11 00 5c e3                                      cmp ip, #0x11
005d69d4  0c f1 8f 90                                      addls pc, pc, ip, lsl #2
005d69d8  13 00 00 ea                                      b #0x5d6a2c
005d69dc  14 00 00 ea                                      b #0x5d6a34
005d69e0  14 00 00 ea                                      b #0x5d6a38
005d69e4  14 00 00 ea                                      b #0x5d6a3c
005d69e8  14 00 00 ea                                      b #0x5d6a40
005d69ec  14 00 00 ea                                      b #0x5d6a44
005d69f0  14 00 00 ea                                      b #0x5d6a48
005d69f4  14 00 00 ea                                      b #0x5d6a4c
005d69f8  14 00 00 ea                                      b #0x5d6a50
005d69fc  0a 00 00 ea                                      b #0x5d6a2c
005d6a00  09 00 00 ea                                      b #0x5d6a2c
005d6a04  12 00 00 ea                                      b #0x5d6a54
005d6a08  05 00 00 ea                                      b #0x5d6a24
005d6a0c  04 00 00 ea                                      b #0x5d6a24
005d6a10  03 00 00 ea                                      b #0x5d6a24
005d6a14  02 00 00 ea                                      b #0x5d6a24
005d6a18  02 00 00 ea                                      b #0x5d6a28
005d6a1c  0e 00 00 ea                                      b #0x5d6a5c
005d6a20  0c 00 00 ea                                      b #0x5d6a58
005d6a24  bc ff ff ea                                      b #0x5d691c
005d6a28  59 e2 ff ea                                      b #0x5cf394
005d6a2c  00 00 a0 e3                                      mov r0, #0
005d6a30  1e ff 2f e1                                      bx lr
005d6a34  88 e1 ff ea                                      b #0x5cf05c
005d6a38  9e e1 ff ea                                      b #0x5cf0b8
005d6a3c  b5 e1 ff ea                                      b #0x5cf118
005d6a40  d1 e1 ff ea                                      b #0x5cf18c
005d6a44  ec e1 ff ea                                      b #0x5cf1fc
005d6a48  00 e2 ff ea                                      b #0x5cf250
005d6a4c  17 e2 ff ea                                      b #0x5cf2b0
005d6a50  33 e2 ff ea                                      b #0x5cf324
005d6a54  af f6 ff ea                                      b #0x5d4518
005d6a58  35 f9 ff ea                                      b #0x5d4f34
005d6a5c  64 e2 ff ea                                      b #0x5cf3f4

; FUNCTION 0x005d6a60, declared_size=2328, range_size=2328, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE19serializeAttributesEPNS_2io11IAttributesE
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::serializeAttributes(glitch::io::IAttributes*) const
; decoder-mode: arm
005d6a60  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005d6a64  e4 28 9f e5                                      ldr r2, [pc, #0x8e4]
005d6a68  e4 38 9f e5                                      ldr r3, [pc, #0x8e4]
005d6a6c  a9 df 4d e2                                      sub sp, sp, #0x2a4
005d6a70  02 20 8f e0                                      add r2, pc, r2
005d6a74  4c 30 8d e5                                      str r3, [sp, #0x4c]
005d6a78  03 30 92 e7                                      ldr r3, [r2, r3]
005d6a7c  48 20 8d e5                                      str r2, [sp, #0x48]
005d6a80  30 00 8d e5                                      str r0, [sp, #0x30]
005d6a84  be c0 d0 e1                                      ldrh ip, [r0, #0xe]
005d6a88  00 30 93 e5                                      ldr r3, [r3]
005d6a8c  01 60 a0 e1                                      mov r6, r1
005d6a90  00 00 5c e3                                      cmp ip, #0
005d6a94  34 c0 8d e5                                      str ip, [sp, #0x34]
005d6a98  9c 32 8d e5                                      str r3, [sp, #0x29c]
005d6a9c  21 02 00 0a                                      beq #0x5d7328
005d6aa0  00 30 a0 e3                                      mov r3, #0
005d6aa4  2c 30 8d e5                                      str r3, [sp, #0x2c]
005d6aa8  a8 38 9f e5                                      ldr r3, [pc, #0x8a8]
005d6aac  a8 28 9f e5                                      ldr r2, [pc, #0x8a8]
005d6ab0  a8 08 9f e5                                      ldr r0, [pc, #0x8a8]
005d6ab4  03 30 8f e0                                      add r3, pc, r3
005d6ab8  1c 30 8d e5                                      str r3, [sp, #0x1c]
005d6abc  a0 38 9f e5                                      ldr r3, [pc, #0x8a0]
005d6ac0  a0 18 9f e5                                      ldr r1, [pc, #0x8a0]
005d6ac4  40 20 8d e5                                      str r2, [sp, #0x40]
005d6ac8  03 30 8f e0                                      add r3, pc, r3
005d6acc  24 30 8d e5                                      str r3, [sp, #0x24]
005d6ad0  94 38 9f e5                                      ldr r3, [pc, #0x894]
005d6ad4  0c 20 a0 e1                                      mov r2, ip
005d6ad8  9c c0 8d e2                                      add ip, sp, #0x9c
005d6adc  03 30 8f e0                                      add r3, pc, r3
005d6ae0  28 30 8d e5                                      str r3, [sp, #0x28]
005d6ae4  38 00 8d e5                                      str r0, [sp, #0x38]
005d6ae8  3c 10 8d e5                                      str r1, [sp, #0x3c]
005d6aec  00 30 a0 e3                                      mov r3, #0
005d6af0  18 c0 8d e5                                      str ip, [sp, #0x18]
005d6af4  03 00 52 e1                                      cmp r2, r3
005d6af8  30 00 9d 85                                      ldrhi r0, [sp, #0x30]
005d6afc  00 90 a0 93                                      movls sb, #0
005d6b00  01 40 a0 e3                                      mov r4, #1
005d6b04  20 90 90 85                                      ldrhi sb, [r0, #0x20]
005d6b08  06 00 a0 e1                                      mov r0, r6
005d6b0c  03 92 89 80                                      addhi sb, sb, r3, lsl #4
005d6b10  00 10 99 e5                                      ldr r1, [sb]
005d6b14  00 30 96 e5                                      ldr r3, [r6]
005d6b18  00 00 51 e3                                      cmp r1, #0
005d6b1c  04 10 81 12                                      addne r1, r1, #4
005d6b20  30 30 93 e5                                      ldr r3, [r3, #0x30]
005d6b24  33 ff 2f e1                                      blx r3
005d6b28  00 00 a0 e3                                      mov r0, #0
005d6b2c  b4 50 d9 e1                                      ldrh r5, [sb, #4]
005d6b30  5b 45 00 eb                                      bl #0x5e80a4
005d6b34  38 c0 9d e5                                      ldr ip, [sp, #0x38]
005d6b38  00 40 8d e5                                      str r4, [sp]
005d6b3c  00 30 a0 e1                                      mov r3, r0
005d6b40  05 20 a0 e1                                      mov r2, r5
005d6b44  0c 10 8f e0                                      add r1, pc, ip
005d6b48  06 00 a0 e1                                      mov r0, r6
005d6b4c  00 c0 96 e5                                      ldr ip, [r6]
005d6b50  0f e0 a0 e1                                      mov lr, pc
005d6b54  f4 f0 9c e5                                      ldr pc, [ip, #0xf4]
005d6b58  00 00 a0 e3                                      mov r0, #0
005d6b5c  06 50 d9 e5                                      ldrb r5, [sb, #6]
005d6b60  53 45 00 eb                                      bl #0x5e80b4
005d6b64  3c c0 9d e5                                      ldr ip, [sp, #0x3c]
005d6b68  00 40 8d e5                                      str r4, [sp]
005d6b6c  00 30 a0 e1                                      mov r3, r0
005d6b70  05 20 a0 e1                                      mov r2, r5
005d6b74  0c 10 8f e0                                      add r1, pc, ip
005d6b78  06 00 a0 e1                                      mov r0, r6
005d6b7c  00 c0 96 e5                                      ldr ip, [r6]
005d6b80  0f e0 a0 e1                                      mov lr, pc
005d6b84  f4 f0 9c e5                                      ldr pc, [ip, #0xf4]
005d6b88  40 20 9d e5                                      ldr r2, [sp, #0x40]
005d6b8c  00 c0 96 e5                                      ldr ip, [r6]
005d6b90  04 30 a0 e1                                      mov r3, r4
005d6b94  02 10 8f e0                                      add r1, pc, r2
005d6b98  06 00 a0 e1                                      mov r0, r6
005d6b9c  08 20 99 e5                                      ldr r2, [sb, #8]
005d6ba0  0f e0 a0 e1                                      mov lr, pc
005d6ba4  4c f0 9c e5                                      ldr pc, [ip, #0x4c]
005d6ba8  30 30 9d e5                                      ldr r3, [sp, #0x30]
005d6bac  18 00 9d e5                                      ldr r0, [sp, #0x18]
005d6bb0  0c 50 99 e5                                      ldr r5, [sb, #0xc]
005d6bb4  24 a0 93 e5                                      ldr sl, [r3, #0x24]
005d6bb8  72 f6 ff eb                                      bl #0x5d4588
005d6bbc  08 c0 99 e5                                      ldr ip, [sb, #8]
005d6bc0  04 00 5c e1                                      cmp ip, r4
005d6bc4  20 c0 8d e5                                      str ip, [sp, #0x20]
005d6bc8  b8 01 00 0a                                      beq #0x5d72b0
005d6bcc  20 30 9d e5                                      ldr r3, [sp, #0x20]
005d6bd0  00 00 53 e3                                      cmp r3, #0
005d6bd4  9d 00 00 0a                                      beq #0x5d6e50
005d6bd8  90 c7 9f e5                                      ldr ip, [pc, #0x790]
005d6bdc  05 a0 8a e0                                      add sl, sl, r5
005d6be0  fe 45 a0 e3                                      mov r4, #0x3f800000
005d6be4  44 c0 8d e5                                      str ip, [sp, #0x44]
005d6be8  00 50 a0 e3                                      mov r5, #0
005d6bec  50 b0 8d e2                                      add fp, sp, #0x50
005d6bf0  a1 8f 8d e2                                      add r8, sp, #0x284
005d6bf4  06 70 a0 e1                                      mov r7, r6
005d6bf8  01 00 53 e3                                      cmp r3, #1
005d6bfc  19 00 00 9a                                      bls #0x5d6c68
005d6c00  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
005d6c04  08 00 a0 e1                                      mov r0, r8
005d6c08  94 82 8d e5                                      str r8, [sp, #0x294]
005d6c0c  01 20 a0 e1                                      mov r2, r1
005d6c10  98 82 8d e5                                      str r8, [sp, #0x298]
005d6c14  f6 3c f5 eb                                      bl #0x325ff4
005d6c18  18 10 9d e5                                      ldr r1, [sp, #0x18]
005d6c1c  0c 00 81 e2                                      add r0, r1, #0xc
005d6c20  08 10 a0 e1                                      mov r1, r8
005d6c24  c2 8e ff eb                                      bl #0x5ba734
005d6c28  98 02 9d e5                                      ldr r0, [sp, #0x298]
005d6c2c  08 00 50 e1                                      cmp r0, r8
005d6c30  02 00 00 0a                                      beq #0x5d6c40
005d6c34  00 00 50 e3                                      cmp r0, #0
005d6c38  00 00 00 0a                                      beq #0x5d6c40
005d6c3c  03 e6 f4 eb                                      bl #0x310450
005d6c40  18 20 9d e5                                      ldr r2, [sp, #0x18]
005d6c44  24 10 9d e5                                      ldr r1, [sp, #0x24]
005d6c48  08 60 82 e2                                      add r6, r2, #8
005d6c4c  06 00 a0 e1                                      mov r0, r6
005d6c50  50 f1 f4 eb                                      bl #0x313198
005d6c54  05 10 a0 e1                                      mov r1, r5
005d6c58  06 00 a0 e1                                      mov r0, r6
005d6c5c  b2 b7 fa eb                                      bl #0x484b2c
005d6c60  28 10 9d e5                                      ldr r1, [sp, #0x28]
005d6c64  4b f1 f4 eb                                      bl #0x313198
005d6c68  00 60 a0 e3                                      mov r6, #0
005d6c6c  40 20 a0 e3                                      mov r2, #0x40
005d6c70  06 10 a0 e1                                      mov r1, r6
005d6c74  0b 00 a0 e1                                      mov r0, fp
005d6c78  f8 dd f4 eb                                      bl #0x30e460
005d6c7c  0b 00 a0 e1                                      mov r0, fp
005d6c80  06 10 a0 e1                                      mov r1, r6
005d6c84  40 20 a0 e3                                      mov r2, #0x40
005d6c88  f4 dd f4 eb                                      bl #0x30e460
005d6c8c  01 30 a0 e3                                      mov r3, #1
005d6c90  90 30 cd e5                                      strb r3, [sp, #0x90]
005d6c94  50 40 8d e5                                      str r4, [sp, #0x50]
005d6c98  64 40 8d e5                                      str r4, [sp, #0x64]
005d6c9c  78 40 8d e5                                      str r4, [sp, #0x78]
005d6ca0  8c 40 8d e5                                      str r4, [sp, #0x8c]
005d6ca4  06 30 d9 e5                                      ldrb r3, [sb, #6]
005d6ca8  01 30 43 e2                                      sub r3, r3, #1
005d6cac  11 00 53 e3                                      cmp r3, #0x11
005d6cb0  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
005d6cb4  43 00 00 ea                                      b #0x5d6dc8
005d6cb8  f9 00 00 ea                                      b #0x5d70a4
005d6cbc  e3 00 00 ea                                      b #0x5d7050
005d6cc0  cd 00 00 ea                                      b #0x5d6ffc
005d6cc4  b7 00 00 ea                                      b #0x5d6fa8
005d6cc8  a1 00 00 ea                                      b #0x5d6f54
005d6ccc  88 00 00 ea                                      b #0x5d6ef4
005d6cd0  6f 00 00 ea                                      b #0x5d6e94
005d6cd4  41 00 00 ea                                      b #0x5d6de0
005d6cd8  3a 00 00 ea                                      b #0x5d6dc8
005d6cdc  39 00 00 ea                                      b #0x5d6dc8
005d6ce0  58 01 00 ea                                      b #0x5d7248
005d6ce4  38 01 00 ea                                      b #0x5d71cc
005d6ce8  37 01 00 ea                                      b #0x5d71cc
005d6cec  36 01 00 ea                                      b #0x5d71cc
005d6cf0  35 01 00 ea                                      b #0x5d71cc
005d6cf4  19 01 00 ea                                      b #0x5d7160
005d6cf8  fe 00 00 ea                                      b #0x5d70f8
005d6cfc  ff ff ff ea                                      b #0x5d6d00
005d6d00  00 30 97 e5                                      ldr r3, [r7]
005d6d04  4d 6f 8d e2                                      add r6, sp, #0x134
005d6d08  dc 20 9d e5                                      ldr r2, [sp, #0xdc]
005d6d0c  c8 c2 93 e5                                      ldr ip, [r3, #0x2c8]
005d6d10  06 00 a0 e1                                      mov r0, r6
005d6d14  e0 10 9d e5                                      ldr r1, [sp, #0xe0]
005d6d18  10 c0 8d e5                                      str ip, [sp, #0x10]
005d6d1c  44 61 8d e5                                      str r6, [sp, #0x144]
005d6d20  48 61 8d e5                                      str r6, [sp, #0x148]
005d6d24  b2 3c f5 eb                                      bl #0x325ff4
005d6d28  00 30 9a e5                                      ldr r3, [sl]
005d6d2c  48 11 9d e5                                      ldr r1, [sp, #0x148]
005d6d30  10 c0 9d e5                                      ldr ip, [sp, #0x10]
005d6d34  00 00 53 e3                                      cmp r3, #0
005d6d38  94 30 8d e5                                      str r3, [sp, #0x94]
005d6d3c  00 20 93 15                                      ldrne r2, [r3]
005d6d40  07 00 a0 e1                                      mov r0, r7
005d6d44  01 20 82 12                                      addne r2, r2, #1
005d6d48  00 20 83 15                                      strne r2, [r3]
005d6d4c  94 20 8d e2                                      add r2, sp, #0x94
005d6d50  00 30 a0 e3                                      mov r3, #0
005d6d54  3c ff 2f e1                                      blx ip
005d6d58  94 00 9d e5                                      ldr r0, [sp, #0x94]
005d6d5c  00 00 50 e3                                      cmp r0, #0
005d6d60  11 00 00 0a                                      beq #0x5d6dac
005d6d64  00 30 90 e5                                      ldr r3, [r0]
005d6d68  01 30 43 e2                                      sub r3, r3, #1
005d6d6c  00 00 53 e3                                      cmp r3, #0
005d6d70  00 30 80 e5                                      str r3, [r0]
005d6d74  0c 00 00 1a                                      bne #0x5d6dac
005d6d78  54 30 d0 e5                                      ldrb r3, [r0, #0x54]
005d6d7c  00 00 53 e3                                      cmp r3, #0
005d6d80  06 00 00 1a                                      bne #0x5d6da0
005d6d84  48 10 9d e5                                      ldr r1, [sp, #0x48]
005d6d88  44 c0 9d e5                                      ldr ip, [sp, #0x44]
005d6d8c  50 20 90 e5                                      ldr r2, [r0, #0x50]
005d6d90  0c 30 91 e7                                      ldr r3, [r1, ip]
005d6d94  00 10 93 e5                                      ldr r1, [r3]
005d6d98  00 10 82 e5                                      str r1, [r2]
005d6d9c  00 20 83 e5                                      str r2, [r3]
005d6da0  00 30 a0 e3                                      mov r3, #0
005d6da4  50 30 80 e5                                      str r3, [r0, #0x50]
005d6da8  40 dd f4 eb                                      bl #0x30e2b0
005d6dac  48 01 9d e5                                      ldr r0, [sp, #0x148]
005d6db0  06 00 50 e1                                      cmp r0, r6
005d6db4  02 00 00 0a                                      beq #0x5d6dc4
005d6db8  00 00 50 e3                                      cmp r0, #0
005d6dbc  00 00 00 0a                                      beq #0x5d6dc4
005d6dc0  a2 e5 f4 eb                                      bl #0x310450
005d6dc4  04 a0 8a e2                                      add sl, sl, #4
005d6dc8  20 20 9d e5                                      ldr r2, [sp, #0x20]
005d6dcc  01 50 85 e2                                      add r5, r5, #1
005d6dd0  02 00 55 e1                                      cmp r5, r2
005d6dd4  1c 00 00 0a                                      beq #0x5d6e4c
005d6dd8  08 30 99 e5                                      ldr r3, [sb, #8]
005d6ddc  85 ff ff ea                                      b #0x5d6bf8
005d6de0  00 30 97 e5                                      ldr r3, [r7]
005d6de4  71 cf 8d e2                                      add ip, sp, #0x1c4
005d6de8  0c 00 a0 e1                                      mov r0, ip
005d6dec  e0 10 9d e5                                      ldr r1, [sp, #0xe0]
005d6df0  dc 20 9d e5                                      ldr r2, [sp, #0xdc]
005d6df4  c0 61 93 e5                                      ldr r6, [r3, #0x1c0]
005d6df8  d4 c1 8d e5                                      str ip, [sp, #0x1d4]
005d6dfc  d8 c1 8d e5                                      str ip, [sp, #0x1d8]
005d6e00  10 c0 8d e5                                      str ip, [sp, #0x10]
005d6e04  7a 3c f5 eb                                      bl #0x325ff4
005d6e08  07 00 a0 e1                                      mov r0, r7
005d6e0c  d8 11 9d e5                                      ldr r1, [sp, #0x1d8]
005d6e10  0a 20 a0 e1                                      mov r2, sl
005d6e14  00 30 a0 e3                                      mov r3, #0
005d6e18  36 ff 2f e1                                      blx r6
005d6e1c  d8 01 9d e5                                      ldr r0, [sp, #0x1d8]
005d6e20  10 c0 9d e5                                      ldr ip, [sp, #0x10]
005d6e24  0c 00 50 e1                                      cmp r0, ip
005d6e28  02 00 00 0a                                      beq #0x5d6e38
005d6e2c  00 00 50 e3                                      cmp r0, #0
005d6e30  00 00 00 0a                                      beq #0x5d6e38
005d6e34  85 e5 f4 eb                                      bl #0x310450
005d6e38  10 a0 8a e2                                      add sl, sl, #0x10
005d6e3c  20 20 9d e5                                      ldr r2, [sp, #0x20]
005d6e40  01 50 85 e2                                      add r5, r5, #1
005d6e44  02 00 55 e1                                      cmp r5, r2
005d6e48  e2 ff ff 1a                                      bne #0x5d6dd8
005d6e4c  07 60 a0 e1                                      mov r6, r7
005d6e50  00 30 96 e5                                      ldr r3, [r6]
005d6e54  06 00 a0 e1                                      mov r0, r6
005d6e58  0f e0 a0 e1                                      mov lr, pc
005d6e5c  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
005d6e60  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
005d6e64  18 00 9d e5                                      ldr r0, [sp, #0x18]
005d6e68  01 30 83 e2                                      add r3, r3, #1
005d6e6c  2c 30 8d e5                                      str r3, [sp, #0x2c]
005d6e70  2d 96 ff eb                                      bl #0x5bc72c
005d6e74  2c c0 9d e5                                      ldr ip, [sp, #0x2c]
005d6e78  34 00 9d e5                                      ldr r0, [sp, #0x34]
005d6e7c  7c 30 ff e6                                      uxth r3, ip
005d6e80  03 00 50 e1                                      cmp r0, r3
005d6e84  27 01 00 0a                                      beq #0x5d7328
005d6e88  30 10 9d e5                                      ldr r1, [sp, #0x30]
005d6e8c  be 20 d1 e1                                      ldrh r2, [r1, #0xe]
005d6e90  17 ff ff ea                                      b #0x5d6af4
005d6e94  00 30 97 e5                                      ldr r3, [r7]
005d6e98  77 cf 8d e2                                      add ip, sp, #0x1dc
005d6e9c  0c 00 a0 e1                                      mov r0, ip
005d6ea0  e0 10 9d e5                                      ldr r1, [sp, #0xe0]
005d6ea4  dc 20 9d e5                                      ldr r2, [sp, #0xdc]
005d6ea8  a8 61 93 e5                                      ldr r6, [r3, #0x1a8]
005d6eac  ec c1 8d e5                                      str ip, [sp, #0x1ec]
005d6eb0  f0 c1 8d e5                                      str ip, [sp, #0x1f0]
005d6eb4  10 c0 8d e5                                      str ip, [sp, #0x10]
005d6eb8  4d 3c f5 eb                                      bl #0x325ff4
005d6ebc  07 00 a0 e1                                      mov r0, r7
005d6ec0  f0 11 9d e5                                      ldr r1, [sp, #0x1f0]
005d6ec4  0a 20 a0 e1                                      mov r2, sl
005d6ec8  00 30 a0 e3                                      mov r3, #0
005d6ecc  36 ff 2f e1                                      blx r6
005d6ed0  f0 01 9d e5                                      ldr r0, [sp, #0x1f0]
005d6ed4  10 c0 9d e5                                      ldr ip, [sp, #0x10]
005d6ed8  0c 00 50 e1                                      cmp r0, ip
005d6edc  02 00 00 0a                                      beq #0x5d6eec
005d6ee0  00 00 50 e3                                      cmp r0, #0
005d6ee4  00 00 00 0a                                      beq #0x5d6eec
005d6ee8  58 e5 f4 eb                                      bl #0x310450
005d6eec  0c a0 8a e2                                      add sl, sl, #0xc
005d6ef0  b4 ff ff ea                                      b #0x5d6dc8
005d6ef4  00 30 97 e5                                      ldr r3, [r7]
005d6ef8  7d cf 8d e2                                      add ip, sp, #0x1f4
005d6efc  0c 00 a0 e1                                      mov r0, ip
005d6f00  e0 10 9d e5                                      ldr r1, [sp, #0xe0]
005d6f04  dc 20 9d e5                                      ldr r2, [sp, #0xdc]
005d6f08  90 61 93 e5                                      ldr r6, [r3, #0x190]
005d6f0c  04 c2 8d e5                                      str ip, [sp, #0x204]
005d6f10  08 c2 8d e5                                      str ip, [sp, #0x208]
005d6f14  10 c0 8d e5                                      str ip, [sp, #0x10]
005d6f18  35 3c f5 eb                                      bl #0x325ff4
005d6f1c  07 00 a0 e1                                      mov r0, r7
005d6f20  08 12 9d e5                                      ldr r1, [sp, #0x208]
005d6f24  0a 20 a0 e1                                      mov r2, sl
005d6f28  00 30 a0 e3                                      mov r3, #0
005d6f2c  36 ff 2f e1                                      blx r6
005d6f30  08 02 9d e5                                      ldr r0, [sp, #0x208]
005d6f34  10 c0 9d e5                                      ldr ip, [sp, #0x10]
005d6f38  0c 00 50 e1                                      cmp r0, ip
005d6f3c  02 00 00 0a                                      beq #0x5d6f4c
005d6f40  00 00 50 e3                                      cmp r0, #0
005d6f44  00 00 00 0a                                      beq #0x5d6f4c
005d6f48  40 e5 f4 eb                                      bl #0x310450
005d6f4c  08 a0 8a e2                                      add sl, sl, #8
005d6f50  9c ff ff ea                                      b #0x5d6dc8
005d6f54  00 30 97 e5                                      ldr r3, [r7]
005d6f58  83 cf 8d e2                                      add ip, sp, #0x20c
005d6f5c  0c 00 a0 e1                                      mov r0, ip
005d6f60  e0 10 9d e5                                      ldr r1, [sp, #0xe0]
005d6f64  dc 20 9d e5                                      ldr r2, [sp, #0xdc]
005d6f68  64 60 93 e5                                      ldr r6, [r3, #0x64]
005d6f6c  1c c2 8d e5                                      str ip, [sp, #0x21c]
005d6f70  20 c2 8d e5                                      str ip, [sp, #0x220]
005d6f74  10 c0 8d e5                                      str ip, [sp, #0x10]
005d6f78  1d 3c f5 eb                                      bl #0x325ff4
005d6f7c  07 00 a0 e1                                      mov r0, r7
005d6f80  20 12 9d e5                                      ldr r1, [sp, #0x220]
005d6f84  00 20 9a e5                                      ldr r2, [sl]
005d6f88  00 30 a0 e3                                      mov r3, #0
005d6f8c  36 ff 2f e1                                      blx r6
005d6f90  20 02 9d e5                                      ldr r0, [sp, #0x220]
005d6f94  10 c0 9d e5                                      ldr ip, [sp, #0x10]
005d6f98  0c 00 50 e1                                      cmp r0, ip
005d6f9c  85 ff ff 1a                                      bne #0x5d6db8
005d6fa0  04 a0 8a e2                                      add sl, sl, #4
005d6fa4  87 ff ff ea                                      b #0x5d6dc8
005d6fa8  00 30 97 e5                                      ldr r3, [r7]
005d6fac  89 cf 8d e2                                      add ip, sp, #0x224
005d6fb0  0c 00 a0 e1                                      mov r0, ip
005d6fb4  e0 10 9d e5                                      ldr r1, [sp, #0xe0]
005d6fb8  dc 20 9d e5                                      ldr r2, [sp, #0xdc]
005d6fbc  78 61 93 e5                                      ldr r6, [r3, #0x178]
005d6fc0  34 c2 8d e5                                      str ip, [sp, #0x234]
005d6fc4  38 c2 8d e5                                      str ip, [sp, #0x238]
005d6fc8  10 c0 8d e5                                      str ip, [sp, #0x10]
005d6fcc  08 3c f5 eb                                      bl #0x325ff4
005d6fd0  07 00 a0 e1                                      mov r0, r7
005d6fd4  38 12 9d e5                                      ldr r1, [sp, #0x238]
005d6fd8  0a 20 a0 e1                                      mov r2, sl
005d6fdc  00 30 a0 e3                                      mov r3, #0
005d6fe0  36 ff 2f e1                                      blx r6
005d6fe4  38 02 9d e5                                      ldr r0, [sp, #0x238]
005d6fe8  10 c0 9d e5                                      ldr ip, [sp, #0x10]
005d6fec  0c 00 50 e1                                      cmp r0, ip
005d6ff0  8d ff ff 1a                                      bne #0x5d6e2c
005d6ff4  10 a0 8a e2                                      add sl, sl, #0x10
005d6ff8  8f ff ff ea                                      b #0x5d6e3c
005d6ffc  00 30 97 e5                                      ldr r3, [r7]
005d7000  8f cf 8d e2                                      add ip, sp, #0x23c
005d7004  0c 00 a0 e1                                      mov r0, ip
005d7008  e0 10 9d e5                                      ldr r1, [sp, #0xe0]
005d700c  dc 20 9d e5                                      ldr r2, [sp, #0xdc]
005d7010  60 61 93 e5                                      ldr r6, [r3, #0x160]
005d7014  4c c2 8d e5                                      str ip, [sp, #0x24c]
005d7018  50 c2 8d e5                                      str ip, [sp, #0x250]
005d701c  10 c0 8d e5                                      str ip, [sp, #0x10]
005d7020  f3 3b f5 eb                                      bl #0x325ff4
005d7024  07 00 a0 e1                                      mov r0, r7
005d7028  50 12 9d e5                                      ldr r1, [sp, #0x250]
005d702c  0a 20 a0 e1                                      mov r2, sl
005d7030  00 30 a0 e3                                      mov r3, #0
005d7034  36 ff 2f e1                                      blx r6
005d7038  50 02 9d e5                                      ldr r0, [sp, #0x250]
005d703c  10 c0 9d e5                                      ldr ip, [sp, #0x10]
005d7040  0c 00 50 e1                                      cmp r0, ip
005d7044  a5 ff ff 1a                                      bne #0x5d6ee0
005d7048  0c a0 8a e2                                      add sl, sl, #0xc
005d704c  5d ff ff ea                                      b #0x5d6dc8
005d7050  00 30 97 e5                                      ldr r3, [r7]
005d7054  95 cf 8d e2                                      add ip, sp, #0x254
005d7058  0c 00 a0 e1                                      mov r0, ip
005d705c  e0 10 9d e5                                      ldr r1, [sp, #0xe0]
005d7060  dc 20 9d e5                                      ldr r2, [sp, #0xdc]
005d7064  48 61 93 e5                                      ldr r6, [r3, #0x148]
005d7068  64 c2 8d e5                                      str ip, [sp, #0x264]
005d706c  68 c2 8d e5                                      str ip, [sp, #0x268]
005d7070  10 c0 8d e5                                      str ip, [sp, #0x10]
005d7074  de 3b f5 eb                                      bl #0x325ff4
005d7078  07 00 a0 e1                                      mov r0, r7
005d707c  68 12 9d e5                                      ldr r1, [sp, #0x268]
005d7080  0a 20 a0 e1                                      mov r2, sl
005d7084  00 30 a0 e3                                      mov r3, #0
005d7088  36 ff 2f e1                                      blx r6
005d708c  68 02 9d e5                                      ldr r0, [sp, #0x268]
005d7090  10 c0 9d e5                                      ldr ip, [sp, #0x10]
005d7094  0c 00 50 e1                                      cmp r0, ip
005d7098  a8 ff ff 1a                                      bne #0x5d6f40
005d709c  08 a0 8a e2                                      add sl, sl, #8
005d70a0  48 ff ff ea                                      b #0x5d6dc8
005d70a4  00 30 97 e5                                      ldr r3, [r7]
005d70a8  9b cf 8d e2                                      add ip, sp, #0x26c
005d70ac  0c 00 a0 e1                                      mov r0, ip
005d70b0  e0 10 9d e5                                      ldr r1, [sp, #0xe0]
005d70b4  dc 20 9d e5                                      ldr r2, [sp, #0xdc]
005d70b8  4c 60 93 e5                                      ldr r6, [r3, #0x4c]
005d70bc  7c c2 8d e5                                      str ip, [sp, #0x27c]
005d70c0  80 c2 8d e5                                      str ip, [sp, #0x280]
005d70c4  10 c0 8d e5                                      str ip, [sp, #0x10]
005d70c8  c9 3b f5 eb                                      bl #0x325ff4
005d70cc  07 00 a0 e1                                      mov r0, r7
005d70d0  80 12 9d e5                                      ldr r1, [sp, #0x280]
005d70d4  00 20 9a e5                                      ldr r2, [sl]
005d70d8  00 30 a0 e3                                      mov r3, #0
005d70dc  36 ff 2f e1                                      blx r6
005d70e0  80 02 9d e5                                      ldr r0, [sp, #0x280]
005d70e4  10 c0 9d e5                                      ldr ip, [sp, #0x10]
005d70e8  0c 00 50 e1                                      cmp r0, ip
005d70ec  31 ff ff 1a                                      bne #0x5d6db8
005d70f0  04 a0 8a e2                                      add sl, sl, #4
005d70f4  33 ff ff ea                                      b #0x5d6dc8
005d70f8  00 30 97 e5                                      ldr r3, [r7]
005d70fc  53 6f 8d e2                                      add r6, sp, #0x14c
005d7100  06 00 a0 e1                                      mov r0, r6
005d7104  30 c1 93 e5                                      ldr ip, [r3, #0x130]
005d7108  e0 10 9d e5                                      ldr r1, [sp, #0xe0]
005d710c  dc 20 9d e5                                      ldr r2, [sp, #0xdc]
005d7110  10 c0 8d e5                                      str ip, [sp, #0x10]
005d7114  5c 61 8d e5                                      str r6, [sp, #0x15c]
005d7118  60 61 8d e5                                      str r6, [sp, #0x160]
005d711c  b4 3b f5 eb                                      bl #0x325ff4
005d7120  00 30 a0 e3                                      mov r3, #0
005d7124  08 30 8d e5                                      str r3, [sp, #8]
005d7128  08 30 9a e5                                      ldr r3, [sl, #8]
005d712c  07 00 a0 e1                                      mov r0, r7
005d7130  60 11 9d e5                                      ldr r1, [sp, #0x160]
005d7134  00 30 8d e5                                      str r3, [sp]
005d7138  0c 30 9a e5                                      ldr r3, [sl, #0xc]
005d713c  10 c0 9d e5                                      ldr ip, [sp, #0x10]
005d7140  04 30 8d e5                                      str r3, [sp, #4]
005d7144  0c 00 9a e8                                      ldm sl, {r2, r3}
005d7148  3c ff 2f e1                                      blx ip
005d714c  60 01 9d e5                                      ldr r0, [sp, #0x160]
005d7150  06 00 50 e1                                      cmp r0, r6
005d7154  34 ff ff 1a                                      bne #0x5d6e2c
005d7158  10 a0 8a e2                                      add sl, sl, #0x10
005d715c  36 ff ff ea                                      b #0x5d6e3c
005d7160  00 30 97 e5                                      ldr r3, [r7]
005d7164  59 6f 8d e2                                      add r6, sp, #0x164
005d7168  06 00 a0 e1                                      mov r0, r6
005d716c  18 c1 93 e5                                      ldr ip, [r3, #0x118]
005d7170  e0 10 9d e5                                      ldr r1, [sp, #0xe0]
005d7174  dc 20 9d e5                                      ldr r2, [sp, #0xdc]
005d7178  10 c0 8d e5                                      str ip, [sp, #0x10]
005d717c  74 61 8d e5                                      str r6, [sp, #0x174]
005d7180  78 61 8d e5                                      str r6, [sp, #0x178]
005d7184  9a 3b f5 eb                                      bl #0x325ff4
005d7188  01 10 da e5                                      ldrb r1, [sl, #1]
005d718c  00 20 da e5                                      ldrb r2, [sl]
005d7190  02 00 da e5                                      ldrb r0, [sl, #2]
005d7194  03 30 da e5                                      ldrb r3, [sl, #3]
005d7198  01 24 82 e1                                      orr r2, r2, r1, lsl #8
005d719c  00 28 82 e1                                      orr r2, r2, r0, lsl #16
005d71a0  03 2c 82 e1                                      orr r2, r2, r3, lsl #24
005d71a4  07 00 a0 e1                                      mov r0, r7
005d71a8  78 11 9d e5                                      ldr r1, [sp, #0x178]
005d71ac  00 30 a0 e3                                      mov r3, #0
005d71b0  10 c0 9d e5                                      ldr ip, [sp, #0x10]
005d71b4  3c ff 2f e1                                      blx ip
005d71b8  78 01 9d e5                                      ldr r0, [sp, #0x178]
005d71bc  06 00 50 e1                                      cmp r0, r6
005d71c0  fc fe ff 1a                                      bne #0x5d6db8
005d71c4  04 a0 8a e2                                      add sl, sl, #4
005d71c8  fe fe ff ea                                      b #0x5d6dc8
005d71cc  00 30 97 e5                                      ldr r3, [r7]
005d71d0  5f 6f 8d e2                                      add r6, sp, #0x17c
005d71d4  dc 20 9d e5                                      ldr r2, [sp, #0xdc]
005d71d8  b0 c2 93 e5                                      ldr ip, [r3, #0x2b0]
005d71dc  06 00 a0 e1                                      mov r0, r6
005d71e0  e0 10 9d e5                                      ldr r1, [sp, #0xe0]
005d71e4  10 c0 8d e5                                      str ip, [sp, #0x10]
005d71e8  8c 61 8d e5                                      str r6, [sp, #0x18c]
005d71ec  90 61 8d e5                                      str r6, [sp, #0x190]
005d71f0  7f 3b f5 eb                                      bl #0x325ff4
005d71f4  00 30 9a e5                                      ldr r3, [sl]
005d71f8  90 11 9d e5                                      ldr r1, [sp, #0x190]
005d71fc  10 c0 9d e5                                      ldr ip, [sp, #0x10]
005d7200  00 00 53 e3                                      cmp r3, #0
005d7204  98 30 8d e5                                      str r3, [sp, #0x98]
005d7208  04 20 93 15                                      ldrne r2, [r3, #4]
005d720c  07 00 a0 e1                                      mov r0, r7
005d7210  01 20 82 12                                      addne r2, r2, #1
005d7214  04 20 83 15                                      strne r2, [r3, #4]
005d7218  98 20 8d e2                                      add r2, sp, #0x98
005d721c  00 30 a0 e3                                      mov r3, #0
005d7220  3c ff 2f e1                                      blx ip
005d7224  98 00 9d e5                                      ldr r0, [sp, #0x98]
005d7228  00 00 50 e3                                      cmp r0, #0
005d722c  00 00 00 0a                                      beq #0x5d7234
005d7230  d3 18 f5 eb                                      bl #0x31d584
005d7234  90 01 9d e5                                      ldr r0, [sp, #0x190]
005d7238  06 00 50 e1                                      cmp r0, r6
005d723c  dd fe ff 1a                                      bne #0x5d6db8
005d7240  04 a0 8a e2                                      add sl, sl, #4
005d7244  df fe ff ea                                      b #0x5d6dc8
005d7248  00 30 9a e5                                      ldr r3, [sl]
005d724c  00 00 53 e3                                      cmp r3, #0
005d7250  1e 00 00 0a                                      beq #0x5d72d0
005d7254  00 e0 97 e5                                      ldr lr, [r7]
005d7258  6b cf 8d e2                                      add ip, sp, #0x1ac
005d725c  0c 00 a0 e1                                      mov r0, ip
005d7260  e0 10 9d e5                                      ldr r1, [sp, #0xe0]
005d7264  dc 20 9d e5                                      ldr r2, [sp, #0xdc]
005d7268  08 62 9e e5                                      ldr r6, [lr, #0x208]
005d726c  bc c1 8d e5                                      str ip, [sp, #0x1bc]
005d7270  c0 c1 8d e5                                      str ip, [sp, #0x1c0]
005d7274  10 c0 8d e5                                      str ip, [sp, #0x10]
005d7278  14 30 8d e5                                      str r3, [sp, #0x14]
005d727c  5c 3b f5 eb                                      bl #0x325ff4
005d7280  14 30 9d e5                                      ldr r3, [sp, #0x14]
005d7284  07 00 a0 e1                                      mov r0, r7
005d7288  c0 11 9d e5                                      ldr r1, [sp, #0x1c0]
005d728c  03 20 a0 e1                                      mov r2, r3
005d7290  00 30 a0 e3                                      mov r3, #0
005d7294  36 ff 2f e1                                      blx r6
005d7298  c0 01 9d e5                                      ldr r0, [sp, #0x1c0]
005d729c  10 c0 9d e5                                      ldr ip, [sp, #0x10]
005d72a0  0c 00 50 e1                                      cmp r0, ip
005d72a4  c3 fe ff 1a                                      bne #0x5d6db8
005d72a8  04 a0 8a e2                                      add sl, sl, #4
005d72ac  c5 fe ff ea                                      b #0x5d6dc8
005d72b0  18 10 9d e5                                      ldr r1, [sp, #0x18]
005d72b4  08 00 81 e2                                      add r0, r1, #8
005d72b8  b4 10 9f e5                                      ldr r1, [pc, #0xb4]
005d72bc  01 10 8f e0                                      add r1, pc, r1
005d72c0  b4 ef f4 eb                                      bl #0x313198
005d72c4  08 20 99 e5                                      ldr r2, [sb, #8]
005d72c8  20 20 8d e5                                      str r2, [sp, #0x20]
005d72cc  3e fe ff ea                                      b #0x5d6bcc
005d72d0  00 e0 97 e5                                      ldr lr, [r7]
005d72d4  65 cf 8d e2                                      add ip, sp, #0x194
005d72d8  0c 00 a0 e1                                      mov r0, ip
005d72dc  e0 10 9d e5                                      ldr r1, [sp, #0xe0]
005d72e0  dc 20 9d e5                                      ldr r2, [sp, #0xdc]
005d72e4  08 62 9e e5                                      ldr r6, [lr, #0x208]
005d72e8  a4 c1 8d e5                                      str ip, [sp, #0x1a4]
005d72ec  a8 c1 8d e5                                      str ip, [sp, #0x1a8]
005d72f0  10 c0 8d e5                                      str ip, [sp, #0x10]
005d72f4  14 30 8d e5                                      str r3, [sp, #0x14]
005d72f8  3d 3b f5 eb                                      bl #0x325ff4
005d72fc  07 00 a0 e1                                      mov r0, r7
005d7300  14 30 9d e5                                      ldr r3, [sp, #0x14]
005d7304  a8 11 9d e5                                      ldr r1, [sp, #0x1a8]
005d7308  0b 20 a0 e1                                      mov r2, fp
005d730c  36 ff 2f e1                                      blx r6
005d7310  a8 01 9d e5                                      ldr r0, [sp, #0x1a8]
005d7314  10 c0 9d e5                                      ldr ip, [sp, #0x10]
005d7318  0c 00 50 e1                                      cmp r0, ip
005d731c  a5 fe ff 1a                                      bne #0x5d6db8
005d7320  04 a0 8a e2                                      add sl, sl, #4
005d7324  a7 fe ff ea                                      b #0x5d6dc8
005d7328  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
005d732c  48 c0 9d e5                                      ldr ip, [sp, #0x48]
005d7330  02 30 9c e7                                      ldr r3, [ip, r2]
005d7334  9c 22 9d e5                                      ldr r2, [sp, #0x29c]
005d7338  00 30 93 e5                                      ldr r3, [r3]
005d733c  03 00 52 e1                                      cmp r2, r3
005d7340  01 00 00 1a                                      bne #0x5d734c
005d7344  a9 df 8d e2                                      add sp, sp, #0x2a4
005d7348  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005d734c  ef db f4 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
005d7350  20 e0 3b 00 ac 40 00 00 54 4d 2f 00 7c 9e 30 00  .byte 0x20, 0xe0, 0x3b, 0x00, 0xac, 0x40, 0x00, 0x00, 0x54, 0x4d, 0x2f, 0x00, 0x7c, 0x9e, 0x30, 0x00
005d7360  34 be 2e 00 f0 56 30 00 8c 9e 30 00 74 89 2e 00  .byte 0x34, 0xbe, 0x2e, 0x00, 0xf0, 0x56, 0x30, 0x00, 0x8c, 0x9e, 0x30, 0x00, 0x74, 0x89, 0x2e, 0x00
005d7370  c0 3c 00 00 14 96 33 00                          .byte 0xc0, 0x3c, 0x00, 0x00, 0x14, 0x96, 0x33, 0x00

; FUNCTION 0x005d7648, declared_size=152, range_size=152, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE12getParameterEtjNS0_29E_SHADER_PARAMETER_VALUE_TYPEEPv
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::getParameter(unsigned short, unsigned int, glitch::video::E_SHADER_PARAMETER_VALUE_TYPE, void*) const
; decoder-mode: arm
005d7648  01 c0 43 e2                                      sub ip, r3, #1
005d764c  00 30 9d e5                                      ldr r3, [sp]
005d7650  11 00 5c e3                                      cmp ip, #0x11
005d7654  0c f1 8f 90                                      addls pc, pc, ip, lsl #2
005d7658  13 00 00 ea                                      b #0x5d76ac
005d765c  14 00 00 ea                                      b #0x5d76b4
005d7660  14 00 00 ea                                      b #0x5d76b8
005d7664  14 00 00 ea                                      b #0x5d76bc
005d7668  14 00 00 ea                                      b #0x5d76c0
005d766c  14 00 00 ea                                      b #0x5d76c4
005d7670  14 00 00 ea                                      b #0x5d76c8
005d7674  14 00 00 ea                                      b #0x5d76cc
005d7678  14 00 00 ea                                      b #0x5d76d0
005d767c  0a 00 00 ea                                      b #0x5d76ac
005d7680  09 00 00 ea                                      b #0x5d76ac
005d7684  12 00 00 ea                                      b #0x5d76d4
005d7688  05 00 00 ea                                      b #0x5d76a4
005d768c  04 00 00 ea                                      b #0x5d76a4
005d7690  03 00 00 ea                                      b #0x5d76a4
005d7694  02 00 00 ea                                      b #0x5d76a4
005d7698  02 00 00 ea                                      b #0x5d76a8
005d769c  0e 00 00 ea                                      b #0x5d76dc
005d76a0  0c 00 00 ea                                      b #0x5d76d8
005d76a4  7d fc ff ea                                      b #0x5d68a0
005d76a8  40 e2 ff ea                                      b #0x5cffb0
005d76ac  00 00 a0 e3                                      mov r0, #0
005d76b0  1e ff 2f e1                                      bx lr
005d76b4  73 e1 ff ea                                      b #0x5cfc88
005d76b8  89 e1 ff ea                                      b #0x5cfce4
005d76bc  a0 e1 ff ea                                      b #0x5cfd44
005d76c0  ba e1 ff ea                                      b #0x5cfdb0
005d76c4  d5 e1 ff ea                                      b #0x5cfe20
005d76c8  e9 e1 ff ea                                      b #0x5cfe74
005d76cc  00 e2 ff ea                                      b #0x5cfed4
005d76d0  1a e2 ff ea                                      b #0x5cff40
005d76d4  32 ee ff ea                                      b #0x5d2fa4
005d76d8  a6 ff ff ea                                      b #0x5d7578
005d76dc  4b e2 ff ea                                      b #0x5d0010

; FUNCTION 0x005d77b0, declared_size=152, range_size=152, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtEtjNS0_29E_SHADER_PARAMETER_VALUE_TYPEEPKv
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::setParameterCvt(unsigned short, unsigned int, glitch::video::E_SHADER_PARAMETER_VALUE_TYPE, void const*)
; decoder-mode: arm
005d77b0  01 c0 43 e2                                      sub ip, r3, #1
005d77b4  00 30 9d e5                                      ldr r3, [sp]
005d77b8  11 00 5c e3                                      cmp ip, #0x11
005d77bc  0c f1 8f 90                                      addls pc, pc, ip, lsl #2
005d77c0  13 00 00 ea                                      b #0x5d7814
005d77c4  14 00 00 ea                                      b #0x5d781c
005d77c8  14 00 00 ea                                      b #0x5d7820
005d77cc  14 00 00 ea                                      b #0x5d7824
005d77d0  14 00 00 ea                                      b #0x5d7828
005d77d4  14 00 00 ea                                      b #0x5d782c
005d77d8  14 00 00 ea                                      b #0x5d7830
005d77dc  14 00 00 ea                                      b #0x5d7834
005d77e0  14 00 00 ea                                      b #0x5d7838
005d77e4  0a 00 00 ea                                      b #0x5d7814
005d77e8  09 00 00 ea                                      b #0x5d7814
005d77ec  12 00 00 ea                                      b #0x5d783c
005d77f0  05 00 00 ea                                      b #0x5d780c
005d77f4  04 00 00 ea                                      b #0x5d780c
005d77f8  03 00 00 ea                                      b #0x5d780c
005d77fc  02 00 00 ea                                      b #0x5d780c
005d7800  02 00 00 ea                                      b #0x5d7810
005d7804  0e 00 00 ea                                      b #0x5d7844
005d7808  0c 00 00 ea                                      b #0x5d7840
005d780c  b3 ff ff ea                                      b #0x5d76e0
005d7810  60 e0 ff ea                                      b #0x5cf998
005d7814  00 00 a0 e3                                      mov r0, #0
005d7818  1e ff 2f e1                                      bx lr
005d781c  0d df ff ea                                      b #0x5cf458
005d7820  31 df ff ea                                      b #0x5cf4ec
005d7824  52 df ff ea                                      b #0x5cf574
005d7828  75 df ff ea                                      b #0x5cf604
005d782c  9b df ff ea                                      b #0x5cf6a0
005d7830  c1 df ff ea                                      b #0x5cf73c
005d7834  e2 df ff ea                                      b #0x5cf7c4
005d7838  05 e0 ff ea                                      b #0x5cf854
005d783c  35 f3 ff ea                                      b #0x5d4518
005d7840  4b f6 ff ea                                      b #0x5d5174
005d7844  be e0 ff ea                                      b #0x5cfb44

; FUNCTION 0x005d78e4, declared_size=152, range_size=152, mode=arm
; class-group: glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE15getParameterCvtEtjNS0_29E_SHADER_PARAMETER_VALUE_TYPEEPv
; demangled: glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::getParameterCvt(unsigned short, unsigned int, glitch::video::E_SHADER_PARAMETER_VALUE_TYPE, void*) const
; decoder-mode: arm
005d78e4  01 c0 43 e2                                      sub ip, r3, #1
005d78e8  00 30 9d e5                                      ldr r3, [sp]
005d78ec  11 00 5c e3                                      cmp ip, #0x11
005d78f0  0c f1 8f 90                                      addls pc, pc, ip, lsl #2
005d78f4  13 00 00 ea                                      b #0x5d7948
005d78f8  14 00 00 ea                                      b #0x5d7950
005d78fc  14 00 00 ea                                      b #0x5d7954
005d7900  14 00 00 ea                                      b #0x5d7958
005d7904  14 00 00 ea                                      b #0x5d795c
005d7908  14 00 00 ea                                      b #0x5d7960
005d790c  14 00 00 ea                                      b #0x5d7964
005d7910  14 00 00 ea                                      b #0x5d7968
005d7914  14 00 00 ea                                      b #0x5d796c
005d7918  0a 00 00 ea                                      b #0x5d7948
005d791c  09 00 00 ea                                      b #0x5d7948
005d7920  12 00 00 ea                                      b #0x5d7970
005d7924  05 00 00 ea                                      b #0x5d7940
005d7928  04 00 00 ea                                      b #0x5d7940
005d792c  03 00 00 ea                                      b #0x5d7940
005d7930  02 00 00 ea                                      b #0x5d7940
005d7934  02 00 00 ea                                      b #0x5d7944
005d7938  0e 00 00 ea                                      b #0x5d7978
005d793c  0c 00 00 ea                                      b #0x5d7974
005d7940  c0 ff ff ea                                      b #0x5d7848
005d7944  18 e3 ff ea                                      b #0x5d05ac
005d7948  00 00 a0 e3                                      mov r0, #0
005d794c  1e ff 2f e1                                      bx lr
005d7950  c8 e1 ff ea                                      b #0x5d0078
005d7954  ed e1 ff ea                                      b #0x5d0110
005d7958  0e e2 ff ea                                      b #0x5d0198
005d795c  31 e2 ff ea                                      b #0x5d0228
005d7960  57 e2 ff ea                                      b #0x5d02c4
005d7964  7e e2 ff ea                                      b #0x5d0364
005d7968  9f e2 ff ea                                      b #0x5d03ec
005d796c  c2 e2 ff ea                                      b #0x5d047c
005d7970  8b ed ff ea                                      b #0x5d2fa4
005d7974  dd f5 ff ea                                      b #0x5d50f0
005d7978  6d e3 ff ea                                      b #0x5d0734

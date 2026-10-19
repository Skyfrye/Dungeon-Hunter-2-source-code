; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0066e6b8, declared_size=92, range_size=92, mode=arm
; class-group: glitch::collada::detail::CColladaHardwareTextureSkinTechnique
; alias: _ZN6glitch7collada6detail36CColladaHardwareTextureSkinTechniqueC2ERNS0_5SSkinERNS0_10SSkinCacheEb
; demangled: glitch::collada::detail::CColladaHardwareTextureSkinTechnique::CColladaHardwareTextureSkinTechnique(glitch::collada::SSkin&, glitch::collada::SSkinCache&, bool)
; decoder-mode: arm
0066e6b8  f0 00 2d e9                                      push {r4, r5, r6, r7}
0066e6bc  48 70 9f e5                                      ldr r7, [pc, #0x48]
0066e6c0  48 60 9f e5                                      ldr r6, [pc, #0x48]
0066e6c4  00 40 a0 e3                                      mov r4, #0
0066e6c8  07 70 8f e0                                      add r7, pc, r7
0066e6cc  06 60 97 e7                                      ldr r6, [r7, r6]
0066e6d0  00 50 a0 e1                                      mov r5, r0
0066e6d4  0c 10 80 e5                                      str r1, [r0, #0xc]
0066e6d8  08 60 86 e2                                      add r6, r6, #8
0066e6dc  00 60 80 e5                                      str r6, [r0]
0066e6e0  10 20 80 e5                                      str r2, [r0, #0x10]
0066e6e4  08 40 80 e5                                      str r4, [r0, #8]
0066e6e8  14 40 80 e5                                      str r4, [r0, #0x14]
0066e6ec  24 40 80 e5                                      str r4, [r0, #0x24]
0066e6f0  20 40 e5 e5                                      strb r4, [r5, #0x20]!
0066e6f4  2c 50 80 e5                                      str r5, [r0, #0x2c]
0066e6f8  04 30 c0 e5                                      strb r3, [r0, #4]
0066e6fc  30 40 80 e5                                      str r4, [r0, #0x30]
0066e700  28 50 80 e5                                      str r5, [r0, #0x28]
0066e704  f0 00 bd e8                                      pop {r4, r5, r6, r7}
0066e708  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0066e70c  c8 63 32 00 3c 3f 00 00                          .byte 0xc8, 0x63, 0x32, 0x00, 0x3c, 0x3f, 0x00, 0x00

; FUNCTION 0x0066e714, declared_size=92, range_size=92, mode=arm
; class-group: glitch::collada::detail::CColladaHardwareTextureSkinTechnique
; alias: _ZN6glitch7collada6detail36CColladaHardwareTextureSkinTechniqueC1ERNS0_5SSkinERNS0_10SSkinCacheEb
; demangled: glitch::collada::detail::CColladaHardwareTextureSkinTechnique::CColladaHardwareTextureSkinTechnique(glitch::collada::SSkin&, glitch::collada::SSkinCache&, bool)
; decoder-mode: arm
0066e714  f0 00 2d e9                                      push {r4, r5, r6, r7}
0066e718  48 70 9f e5                                      ldr r7, [pc, #0x48]
0066e71c  48 60 9f e5                                      ldr r6, [pc, #0x48]
0066e720  00 40 a0 e3                                      mov r4, #0
0066e724  07 70 8f e0                                      add r7, pc, r7
0066e728  06 60 97 e7                                      ldr r6, [r7, r6]
0066e72c  00 50 a0 e1                                      mov r5, r0
0066e730  0c 10 80 e5                                      str r1, [r0, #0xc]
0066e734  08 60 86 e2                                      add r6, r6, #8
0066e738  00 60 80 e5                                      str r6, [r0]
0066e73c  10 20 80 e5                                      str r2, [r0, #0x10]
0066e740  08 40 80 e5                                      str r4, [r0, #8]
0066e744  14 40 80 e5                                      str r4, [r0, #0x14]
0066e748  24 40 80 e5                                      str r4, [r0, #0x24]
0066e74c  20 40 e5 e5                                      strb r4, [r5, #0x20]!
0066e750  2c 50 80 e5                                      str r5, [r0, #0x2c]
0066e754  04 30 c0 e5                                      strb r3, [r0, #4]
0066e758  30 40 80 e5                                      str r4, [r0, #0x30]
0066e75c  28 50 80 e5                                      str r5, [r0, #0x28]
0066e760  f0 00 bd e8                                      pop {r4, r5, r6, r7}
0066e764  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0066e768  6c 63 32 00 3c 3f 00 00                          .byte 0x6c, 0x63, 0x32, 0x00, 0x3c, 0x3f, 0x00, 0x00

; FUNCTION 0x0066e770, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::detail::CColladaHardwareTextureSkinTechnique
; alias: _ZNK6glitch7collada6detail36CColladaHardwareTextureSkinTechnique16needOutputBufferEv
; demangled: glitch::collada::detail::CColladaHardwareTextureSkinTechnique::needOutputBuffer() const
; decoder-mode: arm
0066e770  00 00 a0 e3                                      mov r0, #0
0066e774  1e ff 2f e1                                      bx lr

; FUNCTION 0x0066e778, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::detail::CColladaHardwareTextureSkinTechnique
; alias: _ZN6glitch7collada6detail36CColladaHardwareTextureSkinTechnique6attachEPNS_5scene10ISceneNodeE
; demangled: glitch::collada::detail::CColladaHardwareTextureSkinTechnique::attach(glitch::scene::ISceneNode*)
; decoder-mode: arm
0066e778  14 10 80 e5                                      str r1, [r0, #0x14]
0066e77c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0066e780, declared_size=48, range_size=48, mode=arm
; class-group: glitch::collada::detail::CColladaHardwareTextureSkinTechnique
; alias: _ZN6glitch7collada6detail36CColladaHardwareTextureSkinTechnique27onPrepareBufferForRenderingENS0_21E_PREPARE_BUFFER_STEPEPNS_5video12IVideoDriverERNS0_11SSkinBufferEPNS_5scene11CMeshBufferE
; demangled: glitch::collada::detail::CColladaHardwareTextureSkinTechnique::onPrepareBufferForRendering(glitch::collada::E_PREPARE_BUFFER_STEP, glitch::video::IVideoDriver*, glitch::collada::SSkinBuffer&, glitch::scene::CMeshBuffer*)
; decoder-mode: arm
0066e780  01 00 51 e3                                      cmp r1, #1
0066e784  10 40 2d e9                                      push {r4, lr}
0066e788  01 00 00 0a                                      beq #0x66e794
0066e78c  10 00 a0 e3                                      mov r0, #0x10
0066e790  10 80 bd e8                                      pop {r4, pc}
0066e794  00 c0 90 e5                                      ldr ip, [r0]
0066e798  03 10 a0 e1                                      mov r1, r3
0066e79c  08 20 9d e5                                      ldr r2, [sp, #8]
0066e7a0  0f e0 a0 e1                                      mov lr, pc
0066e7a4  18 f0 9c e5                                      ldr pc, [ip, #0x18]
0066e7a8  10 00 a0 e3                                      mov r0, #0x10
0066e7ac  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0066e7d0, declared_size=172, range_size=172, mode=arm
; class-group: glitch::collada::detail::CColladaHardwareTextureSkinTechnique
; alias: _ZN6glitch7collada6detail36CColladaHardwareTextureSkinTechnique23checkAvailabilityStaticERKNS_5video10STechniqueE
; demangled: glitch::collada::detail::CColladaHardwareTextureSkinTechnique::checkAvailabilityStatic(glitch::video::STechnique const&)
; decoder-mode: arm
0066e7d0  70 40 2d e9                                      push {r4, r5, r6, lr}
0066e7d4  04 40 d0 e5                                      ldrb r4, [r0, #4]
0066e7d8  00 50 a0 e1                                      mov r5, r0
0066e7dc  00 00 54 e3                                      cmp r4, #0
0066e7e0  08 30 90 05                                      ldreq r3, [r0, #8]
0066e7e4  0d 00 00 0a                                      beq #0x66e820
0066e7e8  01 40 44 e2                                      sub r4, r4, #1
0066e7ec  08 30 95 e5                                      ldr r3, [r5, #8]
0066e7f0  74 40 ef e6                                      uxtb r4, r4
0066e7f4  34 00 a0 e3                                      mov r0, #0x34
0066e7f8  00 20 a0 e3                                      mov r2, #0
0066e7fc  94 00 20 e0                                      mla r0, r4, r0, r0
0066e800  02 40 a0 e1                                      mov r4, r2
0066e804  02 10 83 e0                                      add r1, r3, r2
0066e808  20 10 91 e5                                      ldr r1, [r1, #0x20]
0066e80c  34 20 82 e2                                      add r2, r2, #0x34
0066e810  00 00 52 e1                                      cmp r2, r0
0066e814  38 10 91 e5                                      ldr r1, [r1, #0x38]
0066e818  01 40 84 e1                                      orr r4, r4, r1
0066e81c  f8 ff ff 1a                                      bne #0x66e804
0066e820  00 20 a0 e3                                      mov r2, #0
0066e824  20 00 93 e5                                      ldr r0, [r3, #0x20]
0066e828  0c 10 a0 e3                                      mov r1, #0xc
0066e82c  02 30 a0 e1                                      mov r3, r2
0066e830  2b d8 fd eb                                      bl #0x5e48e4
0066e834  ff 6f 0f e3                                      movw r6, #0xffff
0066e838  06 00 50 e1                                      cmp r0, r6
0066e83c  0c 00 00 0a                                      beq #0x66e874
0066e840  08 30 95 e5                                      ldr r3, [r5, #8]
0066e844  00 20 a0 e3                                      mov r2, #0
0066e848  0d 10 a0 e3                                      mov r1, #0xd
0066e84c  20 00 93 e5                                      ldr r0, [r3, #0x20]
0066e850  02 30 a0 e1                                      mov r3, r2
0066e854  22 d8 fd eb                                      bl #0x5e48e4
0066e858  06 00 50 e1                                      cmp r0, r6
0066e85c  04 00 00 0a                                      beq #0x66e874
0066e860  03 02 04 e2                                      and r0, r4, #0x30000000
0066e864  03 02 50 e3                                      cmp r0, #0x30000000
0066e868  00 00 a0 13                                      movne r0, #0
0066e86c  01 00 a0 03                                      moveq r0, #1
0066e870  70 80 bd e8                                      pop {r4, r5, r6, pc}
0066e874  00 00 a0 e3                                      mov r0, #0
0066e878  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0066e89c, declared_size=120, range_size=120, mode=arm
; class-group: glitch::collada::detail::CColladaHardwareTextureSkinTechnique
; alias: _ZNK6glitch7collada6detail36CColladaHardwareTextureSkinTechnique17checkAvailabilityERKNS_5video10STechniqueE
; demangled: glitch::collada::detail::CColladaHardwareTextureSkinTechnique::checkAvailability(glitch::video::STechnique const&) const
; decoder-mode: arm
0066e89c  70 40 2d e9                                      push {r4, r5, r6, lr}
0066e8a0  00 40 a0 e1                                      mov r4, r0
0066e8a4  01 00 a0 e1                                      mov r0, r1
0066e8a8  c8 ff ff eb                                      bl #0x66e7d0
0066e8ac  00 50 50 e2                                      subs r5, r0, #0
0066e8b0  10 00 00 0a                                      beq #0x66e8f8
0066e8b4  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0066e8b8  94 40 93 e5                                      ldr r4, [r3, #0x94]
0066e8bc  00 00 54 e3                                      cmp r4, #0
0066e8c0  0c 00 00 0a                                      beq #0x66e8f8
0066e8c4  11 30 d4 e5                                      ldrb r3, [r4, #0x11]
0066e8c8  00 00 53 e3                                      cmp r3, #0
0066e8cc  09 00 00 0a                                      beq #0x66e8f8
0066e8d0  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
0066e8d4  08 00 13 e3                                      tst r3, #8
0066e8d8  08 00 00 1a                                      bne #0x66e900
0066e8dc  08 30 94 e5                                      ldr r3, [r4, #8]
0066e8e0  00 20 a0 e3                                      mov r2, #0
0066e8e4  11 20 c4 e5                                      strb r2, [r4, #0x11]
0066e8e8  02 00 53 e1                                      cmp r3, r2
0066e8ec  12 30 d4 15                                      ldrbne r3, [r4, #0x12]
0066e8f0  02 30 83 13                                      orrne r3, r3, #2
0066e8f4  12 30 c4 15                                      strbne r3, [r4, #0x12]
0066e8f8  05 00 a0 e1                                      mov r0, r5
0066e8fc  70 80 bd e8                                      pop {r4, r5, r6, pc}
0066e900  00 30 94 e5                                      ldr r3, [r4]
0066e904  04 00 a0 e1                                      mov r0, r4
0066e908  0f e0 a0 e1                                      mov lr, pc
0066e90c  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0066e910  f1 ff ff ea                                      b #0x66e8dc

; FUNCTION 0x0066ec14, declared_size=452, range_size=452, mode=arm
; class-group: glitch::collada::detail::CColladaHardwareTextureSkinTechnique
; alias: _ZN6glitch7collada6detail36CColladaHardwareTextureSkinTechnique4skinERNS0_11SSkinBufferEPNS_5scene11CMeshBufferE
; demangled: glitch::collada::detail::CColladaHardwareTextureSkinTechnique::skin(glitch::collada::SSkinBuffer&, glitch::scene::CMeshBuffer*)
; decoder-mode: arm
0066ec14  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0066ec18  00 60 a0 e1                                      mov r6, r0
0066ec1c  01 50 a0 e1                                      mov r5, r1
0066ec20  2c d0 4d e2                                      sub sp, sp, #0x2c
0066ec24  20 30 96 e4                                      ldr r3, [r6], #0x20
0066ec28  00 40 a0 e1                                      mov r4, r0
0066ec2c  0f e0 a0 e1                                      mov lr, pc
0066ec30  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0066ec34  04 00 95 e5                                      ldr r0, [r5, #4]
0066ec38  83 92 f3 eb                                      bl #0x35364c
0066ec3c  24 20 94 e5                                      ldr r2, [r4, #0x24]
0066ec40  00 00 52 e3                                      cmp r2, #0
0066ec44  41 00 00 0a                                      beq #0x66ed50
0066ec48  06 10 a0 e1                                      mov r1, r6
0066ec4c  00 00 00 ea                                      b #0x66ec54
0066ec50  03 20 a0 e1                                      mov r2, r3
0066ec54  10 30 92 e5                                      ldr r3, [r2, #0x10]
0066ec58  03 00 50 e1                                      cmp r0, r3
0066ec5c  0c 30 92 85                                      ldrhi r3, [r2, #0xc]
0066ec60  08 30 92 95                                      ldrls r3, [r2, #8]
0066ec64  01 20 a0 81                                      movhi r2, r1
0066ec68  02 10 a0 e1                                      mov r1, r2
0066ec6c  00 00 53 e3                                      cmp r3, #0
0066ec70  f6 ff ff 1a                                      bne #0x66ec50
0066ec74  02 00 56 e1                                      cmp r6, r2
0066ec78  36 00 00 0a                                      beq #0x66ed58
0066ec7c  10 30 92 e5                                      ldr r3, [r2, #0x10]
0066ec80  03 00 50 e1                                      cmp r0, r3
0066ec84  31 00 00 3a                                      blo #0x66ed50
0066ec88  02 00 56 e1                                      cmp r6, r2
0066ec8c  31 00 00 0a                                      beq #0x66ed58
0066ec90  10 30 94 e5                                      ldr r3, [r4, #0x10]
0066ec94  b6 71 d2 e1                                      ldrh r7, [r2, #0x16]
0066ec98  b4 11 d2 e1                                      ldrh r1, [r2, #0x14]
0066ec9c  b8 61 d2 e1                                      ldrh r6, [r2, #0x18]
0066eca0  28 30 83 e2                                      add r3, r3, #0x28
0066eca4  00 20 a0 e3                                      mov r2, #0
0066eca8  04 00 95 e5                                      ldr r0, [r5, #4]
0066ecac  9c 79 fd eb                                      bl #0x5cd324
0066ecb0  1c 30 84 e2                                      add r3, r4, #0x1c
0066ecb4  07 10 a0 e1                                      mov r1, r7
0066ecb8  04 00 95 e5                                      ldr r0, [r5, #4]
0066ecbc  00 20 a0 e3                                      mov r2, #0
0066ecc0  03 5e fd eb                                      bl #0x5c64d4
0066ecc4  ff 3f 0f e3                                      movw r3, #0xffff
0066ecc8  03 00 56 e1                                      cmp r6, r3
0066eccc  1d 00 00 0a                                      beq #0x66ed48
0066ecd0  0c 20 94 e5                                      ldr r2, [r4, #0xc]
0066ecd4  00 30 a0 e3                                      mov r3, #0
0066ecd8  04 30 8d e5                                      str r3, [sp, #4]
0066ecdc  08 30 8d e5                                      str r3, [sp, #8]
0066ece0  0c 30 8d e5                                      str r3, [sp, #0xc]
0066ece4  10 30 8d e5                                      str r3, [sp, #0x10]
0066ece8  98 10 d2 e5                                      ldrb r1, [r2, #0x98]
0066ecec  00 00 51 e3                                      cmp r1, #0
0066ecf0  fe 35 a0 13                                      movne r3, #0x3f800000
0066ecf4  04 30 8d e5                                      str r3, [sp, #4]
0066ecf8  98 30 d2 e5                                      ldrb r3, [r2, #0x98]
0066ecfc  06 10 a0 e1                                      mov r1, r6
0066ed00  01 00 53 e3                                      cmp r3, #1
0066ed04  00 30 a0 93                                      movls r3, #0
0066ed08  fe 35 a0 83                                      movhi r3, #0x3f800000
0066ed0c  08 30 8d e5                                      str r3, [sp, #8]
0066ed10  98 30 d2 e5                                      ldrb r3, [r2, #0x98]
0066ed14  02 00 53 e3                                      cmp r3, #2
0066ed18  00 30 a0 93                                      movls r3, #0
0066ed1c  fe 35 a0 83                                      movhi r3, #0x3f800000
0066ed20  0c 30 8d e5                                      str r3, [sp, #0xc]
0066ed24  98 30 d2 e5                                      ldrb r3, [r2, #0x98]
0066ed28  04 00 95 e5                                      ldr r0, [r5, #4]
0066ed2c  00 20 a0 e3                                      mov r2, #0
0066ed30  03 00 53 e3                                      cmp r3, #3
0066ed34  00 c0 a0 93                                      movls ip, #0
0066ed38  fe c5 a0 83                                      movhi ip, #0x3f800000
0066ed3c  04 30 8d e2                                      add r3, sp, #4
0066ed40  10 c0 8d e5                                      str ip, [sp, #0x10]
0066ed44  62 5e fd eb                                      bl #0x5c66d4
0066ed48  2c d0 8d e2                                      add sp, sp, #0x2c
0066ed4c  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0066ed50  06 20 a0 e1                                      mov r2, r6
0066ed54  cb ff ff ea                                      b #0x66ec88
0066ed58  04 30 95 e5                                      ldr r3, [r5, #4]
0066ed5c  0c 10 a0 e3                                      mov r1, #0xc
0066ed60  00 20 a0 e3                                      mov r2, #0
0066ed64  04 00 93 e5                                      ldr r0, [r3, #4]
0066ed68  66 80 fd eb                                      bl #0x5cef08
0066ed6c  04 30 95 e5                                      ldr r3, [r5, #4]
0066ed70  00 70 a0 e1                                      mov r7, r0
0066ed74  0d 10 a0 e3                                      mov r1, #0xd
0066ed78  00 20 a0 e3                                      mov r2, #0
0066ed7c  04 00 93 e5                                      ldr r0, [r3, #4]
0066ed80  60 80 fd eb                                      bl #0x5cef08
0066ed84  04 30 95 e5                                      ldr r3, [r5, #4]
0066ed88  0f 10 a0 e3                                      mov r1, #0xf
0066ed8c  00 20 a0 e3                                      mov r2, #0
0066ed90  00 80 a0 e1                                      mov r8, r0
0066ed94  04 00 93 e5                                      ldr r0, [r3, #4]
0066ed98  5a 80 fd eb                                      bl #0x5cef08
0066ed9c  00 a0 a0 e1                                      mov sl, r0
0066eda0  04 00 95 e5                                      ldr r0, [r5, #4]
0066eda4  28 92 f3 eb                                      bl #0x35364c
0066eda8  14 20 8d e2                                      add r2, sp, #0x14
0066edac  14 00 8d e5                                      str r0, [sp, #0x14]
0066edb0  00 30 e0 e3                                      mvn r3, #0
0066edb4  06 10 a0 e1                                      mov r1, r6
0066edb8  20 00 8d e2                                      add r0, sp, #0x20
0066edbc  1e 30 cd e5                                      strb r3, [sp, #0x1e]
0066edc0  bc a1 cd e1                                      strh sl, [sp, #0x1c]
0066edc4  ba 81 cd e1                                      strh r8, [sp, #0x1a]
0066edc8  b8 71 cd e1                                      strh r7, [sp, #0x18]
0066edcc  30 ff ff eb                                      bl #0x66ea94
0066edd0  20 20 9d e5                                      ldr r2, [sp, #0x20]
0066edd4  ad ff ff ea                                      b #0x66ec90

; FUNCTION 0x0066ee10, declared_size=104, range_size=104, mode=arm
; class-group: glitch::collada::detail::CColladaHardwareTextureSkinTechnique
; alias: _ZN6glitch7collada6detail36CColladaHardwareTextureSkinTechniqueD1Ev
; demangled: glitch::collada::detail::CColladaHardwareTextureSkinTechnique::~CColladaHardwareTextureSkinTechnique()
; decoder-mode: arm
0066ee10  70 40 2d e9                                      push {r4, r5, r6, lr}
0066ee14  54 30 9f e5                                      ldr r3, [pc, #0x54]
0066ee18  54 20 9f e5                                      ldr r2, [pc, #0x54]
0066ee1c  30 10 90 e5                                      ldr r1, [r0, #0x30]
0066ee20  03 30 8f e0                                      add r3, pc, r3
0066ee24  02 20 93 e7                                      ldr r2, [r3, r2]
0066ee28  00 00 51 e3                                      cmp r1, #0
0066ee2c  00 40 a0 e1                                      mov r4, r0
0066ee30  08 20 82 e2                                      add r2, r2, #8
0066ee34  00 20 80 e5                                      str r2, [r0]
0066ee38  08 00 00 0a                                      beq #0x66ee60
0066ee3c  20 50 80 e2                                      add r5, r0, #0x20
0066ee40  05 00 a0 e1                                      mov r0, r5
0066ee44  24 10 94 e5                                      ldr r1, [r4, #0x24]
0066ee48  e2 ff ff eb                                      bl #0x66edd8
0066ee4c  00 30 a0 e3                                      mov r3, #0
0066ee50  2c 50 84 e5                                      str r5, [r4, #0x2c]
0066ee54  30 30 84 e5                                      str r3, [r4, #0x30]
0066ee58  28 50 84 e5                                      str r5, [r4, #0x28]
0066ee5c  24 30 84 e5                                      str r3, [r4, #0x24]
0066ee60  04 00 a0 e1                                      mov r0, r4
0066ee64  fb 07 00 eb                                      bl #0x670e58
0066ee68  04 00 a0 e1                                      mov r0, r4
0066ee6c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0066ee70  70 5c 32 00 3c 3f 00 00                          .byte 0x70, 0x5c, 0x32, 0x00, 0x3c, 0x3f, 0x00, 0x00

; FUNCTION 0x0066ee78, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::detail::CColladaHardwareTextureSkinTechnique
; alias: _ZN6glitch7collada6detail36CColladaHardwareTextureSkinTechniqueD0Ev
; demangled: glitch::collada::detail::CColladaHardwareTextureSkinTechnique::~CColladaHardwareTextureSkinTechnique()
; decoder-mode: arm
0066ee78  10 40 2d e9                                      push {r4, lr}
0066ee7c  00 40 a0 e1                                      mov r4, r0
0066ee80  e2 ff ff eb                                      bl #0x66ee10
0066ee84  04 00 a0 e1                                      mov r0, r4
0066ee88  08 7d f2 eb                                      bl #0x30e2b0
0066ee8c  04 00 a0 e1                                      mov r0, r4
0066ee90  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0066ee94, declared_size=176, range_size=176, mode=arm
; class-group: glitch::collada::detail::CColladaHardwareTextureSkinTechnique
; alias: _ZN6glitch7collada6detail36CColladaHardwareTextureSkinTechnique15preparePtrCacheEv
; demangled: glitch::collada::detail::CColladaHardwareTextureSkinTechnique::preparePtrCache()
; decoder-mode: arm
0066ee94  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0066ee98  00 40 a0 e1                                      mov r4, r0
0066ee9c  10 00 90 e5                                      ldr r0, [r0, #0x10]
0066eea0  08 d0 4d e2                                      sub sp, sp, #8
0066eea4  00 30 90 e5                                      ldr r3, [r0]
0066eea8  01 08 13 e3                                      tst r3, #0x10000
0066eeac  01 00 00 1a                                      bne #0x66eeb8
0066eeb0  08 d0 8d e2                                      add sp, sp, #8
0066eeb4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0066eeb8  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0066eebc  08 20 8d e2                                      add r2, sp, #8
0066eec0  00 50 a0 e3                                      mov r5, #0
0066eec4  74 10 93 e5                                      ldr r1, [r3, #0x74]
0066eec8  10 00 80 e2                                      add r0, r0, #0x10
0066eecc  04 50 22 e5                                      str r5, [r2, #-4]!
0066eed0  8a f5 ff eb                                      bl #0x66c500
0066eed4  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0066eed8  74 70 93 e5                                      ldr r7, [r3, #0x74]
0066eedc  05 00 57 e1                                      cmp r7, r5
0066eee0  01 00 00 ca                                      bgt #0x66eeec
0066eee4  11 00 00 ea                                      b #0x66ef30
0066eee8  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0066eeec  78 30 93 e5                                      ldr r3, [r3, #0x78]
0066eef0  14 00 94 e5                                      ldr r0, [r4, #0x14]
0066eef4  05 61 a0 e1                                      lsl r6, r5, #2
0066eef8  05 11 93 e7                                      ldr r1, [r3, r5, lsl #2]
0066eefc  42 a5 fc eb                                      bl #0x59840c
0066ef00  10 30 94 e5                                      ldr r3, [r4, #0x10]
0066ef04  00 20 50 e2                                      subs r2, r0, #0
0066ef08  02 00 a0 01                                      moveq r0, r2
0066ef0c  10 80 93 e5                                      ldr r8, [r3, #0x10]
0066ef10  02 00 00 0a                                      beq #0x66ef20
0066ef14  00 30 92 e5                                      ldr r3, [r2]
0066ef18  0f e0 a0 e1                                      mov lr, pc
0066ef1c  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0066ef20  01 50 85 e2                                      add r5, r5, #1
0066ef24  07 00 55 e1                                      cmp r5, r7
0066ef28  06 00 88 e7                                      str r0, [r8, r6]
0066ef2c  ed ff ff 1a                                      bne #0x66eee8
0066ef30  10 30 94 e5                                      ldr r3, [r4, #0x10]
0066ef34  00 20 93 e5                                      ldr r2, [r3]
0066ef38  01 28 c2 e3                                      bic r2, r2, #0x10000
0066ef3c  00 20 83 e5                                      str r2, [r3]
0066ef40  da ff ff ea                                      b #0x66eeb0

; FUNCTION 0x0066ef44, declared_size=688, range_size=688, mode=arm
; class-group: glitch::collada::detail::CColladaHardwareTextureSkinTechnique
; alias: _ZN6glitch7collada6detail36CColladaHardwareTextureSkinTechnique18computeBoundingBoxEv
; demangled: glitch::collada::detail::CColladaHardwareTextureSkinTechnique::computeBoundingBox()
; decoder-mode: arm
0066ef44  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0066ef48  00 40 a0 e1                                      mov r4, r0
0066ef4c  01 a0 a0 e1                                      mov sl, r1
0066ef50  01 00 a0 e1                                      mov r0, r1
0066ef54  24 d0 4d e2                                      sub sp, sp, #0x24
0066ef58  cd ff ff eb                                      bl #0x66ee94
0066ef5c  10 20 9a e5                                      ldr r2, [sl, #0x10]
0066ef60  02 31 e0 e3                                      mvn r3, #0x80000000
0066ef64  02 35 43 e2                                      sub r3, r3, #0x800000
0066ef68  02 15 e0 e3                                      mvn r1, #0x800000
0066ef6c  10 00 92 e5                                      ldr r0, [r2, #0x10]
0066ef70  14 90 92 e5                                      ldr sb, [r2, #0x14]
0066ef74  08 30 84 e5                                      str r3, [r4, #8]
0066ef78  0c 10 84 e5                                      str r1, [r4, #0xc]
0066ef7c  10 10 84 e5                                      str r1, [r4, #0x10]
0066ef80  14 10 84 e5                                      str r1, [r4, #0x14]
0066ef84  00 30 84 e5                                      str r3, [r4]
0066ef88  04 30 84 e5                                      str r3, [r4, #4]
0066ef8c  0c 30 9a e5                                      ldr r3, [sl, #0xc]
0066ef90  09 90 60 e0                                      rsb sb, r0, sb
0066ef94  59 91 e7 e7                                      ubfx sb, sb, #2, #8
0066ef98  8c 60 93 e5                                      ldr r6, [r3, #0x8c]
0066ef9c  00 00 56 e3                                      cmp r6, #0
0066efa0  30 00 00 1a                                      bne #0x66f068
0066efa4  00 00 59 e3                                      cmp sb, #0
0066efa8  07 00 00 1a                                      bne #0x66efcc
0066efac  10 30 9a e5                                      ldr r3, [sl, #0x10]
0066efb0  04 00 a0 e1                                      mov r0, r4
0066efb4  00 20 93 e5                                      ldr r2, [r3]
0066efb8  08 20 c2 e3                                      bic r2, r2, #8
0066efbc  00 20 83 e5                                      str r2, [r3]
0066efc0  24 d0 8d e2                                      add sp, sp, #0x24
0066efc4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0066efc8  0c 10 94 e5                                      ldr r1, [r4, #0xc]
0066efcc  10 30 9a e5                                      ldr r3, [sl, #0x10]
0066efd0  10 30 93 e5                                      ldr r3, [r3, #0x10]
0066efd4  06 31 93 e7                                      ldr r3, [r3, r6, lsl #2]
0066efd8  01 60 86 e2                                      add r6, r6, #1
0066efdc  30 80 93 e5                                      ldr r8, [r3, #0x30]
0066efe0  38 50 93 e5                                      ldr r5, [r3, #0x38]
0066efe4  34 70 93 e5                                      ldr r7, [r3, #0x34]
0066efe8  08 00 a0 e1                                      mov r0, r8
0066efec  c1 7c f2 eb                                      bl #0x30e2f8
0066eff0  00 00 50 e3                                      cmp r0, #0
0066eff4  10 10 94 e5                                      ldr r1, [r4, #0x10]
0066eff8  0c 80 84 15                                      strne r8, [r4, #0xc]
0066effc  07 00 a0 e1                                      mov r0, r7
0066f000  bc 7c f2 eb                                      bl #0x30e2f8
0066f004  00 00 50 e3                                      cmp r0, #0
0066f008  14 10 94 e5                                      ldr r1, [r4, #0x14]
0066f00c  10 70 84 15                                      strne r7, [r4, #0x10]
0066f010  05 00 a0 e1                                      mov r0, r5
0066f014  b7 7c f2 eb                                      bl #0x30e2f8
0066f018  00 00 50 e3                                      cmp r0, #0
0066f01c  00 10 94 e5                                      ldr r1, [r4]
0066f020  14 50 84 15                                      strne r5, [r4, #0x14]
0066f024  08 00 a0 e1                                      mov r0, r8
0066f028  b7 7d f2 eb                                      bl #0x30e70c
0066f02c  00 00 50 e3                                      cmp r0, #0
0066f030  04 10 94 e5                                      ldr r1, [r4, #4]
0066f034  00 80 84 15                                      strne r8, [r4]
0066f038  07 00 a0 e1                                      mov r0, r7
0066f03c  b2 7d f2 eb                                      bl #0x30e70c
0066f040  00 00 50 e3                                      cmp r0, #0
0066f044  04 70 84 15                                      strne r7, [r4, #4]
0066f048  08 10 94 e5                                      ldr r1, [r4, #8]
0066f04c  05 00 a0 e1                                      mov r0, r5
0066f050  ad 7d f2 eb                                      bl #0x30e70c
0066f054  00 00 50 e3                                      cmp r0, #0
0066f058  08 50 84 15                                      strne r5, [r4, #8]
0066f05c  09 00 56 e1                                      cmp r6, sb
0066f060  d8 ff ff ba                                      blt #0x66efc8
0066f064  d0 ff ff ea                                      b #0x66efac
0066f068  00 00 59 e3                                      cmp sb, #0
0066f06c  ce ff ff 0a                                      beq #0x66efac
0066f070  00 50 a0 e3                                      mov r5, #0
0066f074  08 20 8d e2                                      add r2, sp, #8
0066f078  05 70 a0 e1                                      mov r7, r5
0066f07c  04 20 8d e5                                      str r2, [sp, #4]
0066f080  00 00 00 ea                                      b #0x66f088
0066f084  0c 30 9a e5                                      ldr r3, [sl, #0xc]
0066f088  90 30 93 e5                                      ldr r3, [r3, #0x90]
0066f08c  10 00 9a e5                                      ldr r0, [sl, #0x10]
0066f090  04 10 9d e5                                      ldr r1, [sp, #4]
0066f094  05 c0 93 e7                                      ldr ip, [r3, r5]
0066f098  05 30 83 e0                                      add r3, r3, r5
0066f09c  0c 20 83 e2                                      add r2, r3, #0xc
0066f0a0  08 c0 8d e5                                      str ip, [sp, #8]
0066f0a4  04 c0 93 e5                                      ldr ip, [r3, #4]
0066f0a8  18 50 85 e2                                      add r5, r5, #0x18
0066f0ac  0c c0 8d e5                                      str ip, [sp, #0xc]
0066f0b0  08 c0 93 e5                                      ldr ip, [r3, #8]
0066f0b4  10 c0 8d e5                                      str ip, [sp, #0x10]
0066f0b8  0c 30 93 e5                                      ldr r3, [r3, #0xc]
0066f0bc  14 30 8d e5                                      str r3, [sp, #0x14]
0066f0c0  04 30 92 e5                                      ldr r3, [r2, #4]
0066f0c4  18 30 8d e5                                      str r3, [sp, #0x18]
0066f0c8  08 30 92 e5                                      ldr r3, [r2, #8]
0066f0cc  1c 30 8d e5                                      str r3, [sp, #0x1c]
0066f0d0  10 30 90 e5                                      ldr r3, [r0, #0x10]
0066f0d4  07 01 93 e7                                      ldr r0, [r3, r7, lsl #2]
0066f0d8  ae 60 fc eb                                      bl #0x587398
0066f0dc  14 b0 9d e5                                      ldr fp, [sp, #0x14]
0066f0e0  0c 10 94 e5                                      ldr r1, [r4, #0xc]
0066f0e4  18 80 9d e5                                      ldr r8, [sp, #0x18]
0066f0e8  0b 00 a0 e1                                      mov r0, fp
0066f0ec  81 7c f2 eb                                      bl #0x30e2f8
0066f0f0  00 00 50 e3                                      cmp r0, #0
0066f0f4  1c 60 9d e5                                      ldr r6, [sp, #0x1c]
0066f0f8  10 10 94 e5                                      ldr r1, [r4, #0x10]
0066f0fc  0c b0 84 15                                      strne fp, [r4, #0xc]
0066f100  08 00 a0 e1                                      mov r0, r8
0066f104  7b 7c f2 eb                                      bl #0x30e2f8
0066f108  00 00 50 e3                                      cmp r0, #0
0066f10c  14 10 94 e5                                      ldr r1, [r4, #0x14]
0066f110  10 80 84 15                                      strne r8, [r4, #0x10]
0066f114  06 00 a0 e1                                      mov r0, r6
0066f118  76 7c f2 eb                                      bl #0x30e2f8
0066f11c  00 00 50 e3                                      cmp r0, #0
0066f120  00 10 94 e5                                      ldr r1, [r4]
0066f124  14 60 84 15                                      strne r6, [r4, #0x14]
0066f128  0b 00 a0 e1                                      mov r0, fp
0066f12c  76 7d f2 eb                                      bl #0x30e70c
0066f130  00 00 50 e3                                      cmp r0, #0
0066f134  04 10 94 e5                                      ldr r1, [r4, #4]
0066f138  00 b0 84 15                                      strne fp, [r4]
0066f13c  08 00 a0 e1                                      mov r0, r8
0066f140  71 7d f2 eb                                      bl #0x30e70c
0066f144  00 00 50 e3                                      cmp r0, #0
0066f148  08 10 94 e5                                      ldr r1, [r4, #8]
0066f14c  04 80 84 15                                      strne r8, [r4, #4]
0066f150  06 00 a0 e1                                      mov r0, r6
0066f154  6c 7d f2 eb                                      bl #0x30e70c
0066f158  00 00 50 e3                                      cmp r0, #0
0066f15c  08 60 84 15                                      strne r6, [r4, #8]
0066f160  08 b0 9d e5                                      ldr fp, [sp, #8]
0066f164  0c 10 94 e5                                      ldr r1, [r4, #0xc]
0066f168  0c 80 9d e5                                      ldr r8, [sp, #0xc]
0066f16c  0b 00 a0 e1                                      mov r0, fp
0066f170  60 7c f2 eb                                      bl #0x30e2f8
0066f174  00 00 50 e3                                      cmp r0, #0
0066f178  10 60 9d e5                                      ldr r6, [sp, #0x10]
0066f17c  10 10 94 e5                                      ldr r1, [r4, #0x10]
0066f180  0c b0 84 15                                      strne fp, [r4, #0xc]
0066f184  08 00 a0 e1                                      mov r0, r8
0066f188  5a 7c f2 eb                                      bl #0x30e2f8
0066f18c  00 00 50 e3                                      cmp r0, #0
0066f190  14 10 94 e5                                      ldr r1, [r4, #0x14]
0066f194  10 80 84 15                                      strne r8, [r4, #0x10]
0066f198  06 00 a0 e1                                      mov r0, r6
0066f19c  55 7c f2 eb                                      bl #0x30e2f8
0066f1a0  00 00 50 e3                                      cmp r0, #0
0066f1a4  00 10 94 e5                                      ldr r1, [r4]
0066f1a8  14 60 84 15                                      strne r6, [r4, #0x14]
0066f1ac  0b 00 a0 e1                                      mov r0, fp
0066f1b0  55 7d f2 eb                                      bl #0x30e70c
0066f1b4  00 00 50 e3                                      cmp r0, #0
0066f1b8  04 10 94 e5                                      ldr r1, [r4, #4]
0066f1bc  00 b0 84 15                                      strne fp, [r4]
0066f1c0  08 00 a0 e1                                      mov r0, r8
0066f1c4  50 7d f2 eb                                      bl #0x30e70c
0066f1c8  00 00 50 e3                                      cmp r0, #0
0066f1cc  04 80 84 15                                      strne r8, [r4, #4]
0066f1d0  08 10 94 e5                                      ldr r1, [r4, #8]
0066f1d4  06 00 a0 e1                                      mov r0, r6
0066f1d8  4b 7d f2 eb                                      bl #0x30e70c
0066f1dc  01 70 87 e2                                      add r7, r7, #1
0066f1e0  00 00 50 e3                                      cmp r0, #0
0066f1e4  08 60 84 15                                      strne r6, [r4, #8]
0066f1e8  09 00 57 e1                                      cmp r7, sb
0066f1ec  a4 ff ff ba                                      blt #0x66f084
0066f1f0  6d ff ff ea                                      b #0x66efac

; FUNCTION 0x0066f1f4, declared_size=140, range_size=140, mode=arm
; class-group: glitch::collada::detail::CColladaHardwareTextureSkinTechnique
; alias: _ZN6glitch7collada6detail36CColladaHardwareTextureSkinTechnique4initERNS0_11SSkinBufferEPNS_5scene11CMeshBufferEPNS_5video12IVideoDriverEb
; demangled: glitch::collada::detail::CColladaHardwareTextureSkinTechnique::init(glitch::collada::SSkinBuffer&, glitch::scene::CMeshBuffer*, glitch::video::IVideoDriver*, bool)
; decoder-mode: arm
0066f1f4  30 40 2d e9                                      push {r4, r5, lr}
0066f1f8  0c 50 90 e5                                      ldr r5, [r0, #0xc]
0066f1fc  00 40 a0 e1                                      mov r4, r0
0066f200  01 e0 a0 e1                                      mov lr, r1
0066f204  18 30 84 e5                                      str r3, [r4, #0x18]
0066f208  03 c0 a0 e1                                      mov ip, r3
0066f20c  0c d0 4d e2                                      sub sp, sp, #0xc
0066f210  02 10 a0 e1                                      mov r1, r2
0066f214  05 30 a0 e1                                      mov r3, r5
0066f218  0e 20 a0 e1                                      mov r2, lr
0066f21c  00 c0 8d e5                                      str ip, [sp]
0066f220  28 07 00 eb                                      bl #0x670ec8
0066f224  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0066f228  94 40 93 e5                                      ldr r4, [r3, #0x94]
0066f22c  11 30 d4 e5                                      ldrb r3, [r4, #0x11]
0066f230  00 00 53 e3                                      cmp r3, #0
0066f234  09 00 00 0a                                      beq #0x66f260
0066f238  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
0066f23c  08 00 13 e3                                      tst r3, #8
0066f240  09 00 00 1a                                      bne #0x66f26c
0066f244  08 30 94 e5                                      ldr r3, [r4, #8]
0066f248  00 20 a0 e3                                      mov r2, #0
0066f24c  11 20 c4 e5                                      strb r2, [r4, #0x11]
0066f250  02 00 53 e1                                      cmp r3, r2
0066f254  12 30 d4 15                                      ldrbne r3, [r4, #0x12]
0066f258  02 30 83 13                                      orrne r3, r3, #2
0066f25c  12 30 c4 15                                      strbne r3, [r4, #0x12]
0066f260  00 00 a0 e3                                      mov r0, #0
0066f264  0c d0 8d e2                                      add sp, sp, #0xc
0066f268  30 80 bd e8                                      pop {r4, r5, pc}
0066f26c  00 30 94 e5                                      ldr r3, [r4]
0066f270  04 00 a0 e1                                      mov r0, r4
0066f274  0f e0 a0 e1                                      mov lr, pc
0066f278  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0066f27c  f0 ff ff ea                                      b #0x66f244

; FUNCTION 0x0066f280, declared_size=888, range_size=888, mode=arm
; class-group: glitch::collada::detail::CColladaHardwareTextureSkinTechnique
; alias: _ZN6glitch7collada6detail36CColladaHardwareTextureSkinTechnique12prepareCacheEv
; demangled: glitch::collada::detail::CColladaHardwareTextureSkinTechnique::prepareCache()
; decoder-mode: arm
0066f280  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0066f284  10 30 90 e5                                      ldr r3, [r0, #0x10]
0066f288  4f df 4d e2                                      sub sp, sp, #0x13c
0066f28c  00 60 a0 e1                                      mov r6, r0
0066f290  00 30 93 e5                                      ldr r3, [r3]
0066f294  04 00 13 e3                                      tst r3, #4
0066f298  01 00 00 1a                                      bne #0x66f2a4
0066f29c  4f df 8d e2                                      add sp, sp, #0x13c
0066f2a0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0066f2a4  fa fe ff eb                                      bl #0x66ee94
0066f2a8  10 40 96 e5                                      ldr r4, [r6, #0x10]
0066f2ac  28 10 94 e5                                      ldr r1, [r4, #0x28]
0066f2b0  00 00 51 e3                                      cmp r1, #0
0066f2b4  10 10 8d e5                                      str r1, [sp, #0x10]
0066f2b8  08 00 00 0a                                      beq #0x66f2e0
0066f2bc  0c 20 96 e5                                      ldr r2, [r6, #0xc]
0066f2c0  20 30 91 e5                                      ldr r3, [r1, #0x20]
0066f2c4  74 20 92 e5                                      ldr r2, [r2, #0x74]
0066f2c8  02 01 53 e1                                      cmp r3, r2, lsl #2
0066f2cc  56 00 00 aa                                      bge #0x66f42c
0066f2d0  18 30 96 e5                                      ldr r3, [r6, #0x18]
0066f2d4  28 10 84 e2                                      add r1, r4, #0x28
0066f2d8  e0 00 93 e5                                      ldr r0, [r3, #0xe0]
0066f2dc  f4 56 f4 eb                                      bl #0x384eb4
0066f2e0  18 30 96 e5                                      ldr r3, [r6, #0x18]
0066f2e4  88 40 93 e5                                      ldr r4, [r3, #0x88]
0066f2e8  54 42 e0 e7                                      ubfx r4, r4, #4, #1
0066f2ec  00 00 54 e3                                      cmp r4, #0
0066f2f0  af 00 00 1a                                      bne #0x66f5b4
0066f2f4  0c 20 96 e5                                      ldr r2, [r6, #0xc]
0066f2f8  9c 10 93 e5                                      ldr r1, [r3, #0x9c]
0066f2fc  74 20 92 e5                                      ldr r2, [r2, #0x74]
0066f300  20 00 11 e3                                      tst r1, #0x20
0066f304  02 21 a0 e1                                      lsl r2, r2, #2
0066f308  02 c0 a0 11                                      movne ip, r2
0066f30c  06 00 00 1a                                      bne #0x66f32c
0066f310  01 00 52 e3                                      cmp r2, #1
0066f314  01 c0 a0 d3                                      movle ip, #1
0066f318  03 00 00 da                                      ble #0x66f32c
0066f31c  01 c0 a0 e3                                      mov ip, #1
0066f320  8c c0 a0 e1                                      lsl ip, ip, #1
0066f324  0c 00 52 e1                                      cmp r2, ip
0066f328  fc ff ff ca                                      bgt #0x66f320
0066f32c  e0 10 93 e5                                      ldr r1, [r3, #0xe0]
0066f330  2c c1 8d e5                                      str ip, [sp, #0x12c]
0066f334  b8 32 9f e5                                      ldr r3, [pc, #0x2b8]
0066f338  01 c0 a0 e3                                      mov ip, #1
0066f33c  30 c1 8d e5                                      str ip, [sp, #0x130]
0066f340  1f c0 a0 e3                                      mov ip, #0x1f
0066f344  00 c0 8d e5                                      str ip, [sp]
0066f348  00 c0 a0 e3                                      mov ip, #0
0066f34c  4b 2f 8d e2                                      add r2, sp, #0x12c
0066f350  03 30 8f e0                                      add r3, pc, r3
0066f354  4d 0f 8d e2                                      add r0, sp, #0x134
0066f358  04 c0 8d e5                                      str ip, [sp, #4]
0066f35c  10 50 96 e5                                      ldr r5, [r6, #0x10]
0066f360  64 ed fd eb                                      bl #0x5ea8f8
0066f364  34 31 9d e5                                      ldr r3, [sp, #0x134]
0066f368  00 00 53 e3                                      cmp r3, #0
0066f36c  04 20 93 15                                      ldrne r2, [r3, #4]
0066f370  01 20 82 12                                      addne r2, r2, #1
0066f374  04 20 83 15                                      strne r2, [r3, #4]
0066f378  28 00 95 e5                                      ldr r0, [r5, #0x28]
0066f37c  28 30 85 e5                                      str r3, [r5, #0x28]
0066f380  00 00 50 e3                                      cmp r0, #0
0066f384  00 00 00 0a                                      beq #0x66f38c
0066f388  7d b8 f2 eb                                      bl #0x31d584
0066f38c  34 01 9d e5                                      ldr r0, [sp, #0x134]
0066f390  00 00 50 e3                                      cmp r0, #0
0066f394  00 00 00 0a                                      beq #0x66f39c
0066f398  79 b8 f2 eb                                      bl #0x31d584
0066f39c  10 30 96 e5                                      ldr r3, [r6, #0x10]
0066f3a0  28 30 93 e5                                      ldr r3, [r3, #0x28]
0066f3a4  38 20 93 e5                                      ldr r2, [r3, #0x38]
0066f3a8  07 0a 12 e3                                      tst r2, #0x7000
0066f3ac  07 00 00 0a                                      beq #0x66f3d0
0066f3b0  b0 14 d3 e1                                      ldrh r1, [r3, #0x40]
0066f3b4  07 2a c2 e3                                      bic r2, r2, #0x7000
0066f3b8  38 20 83 e5                                      str r2, [r3, #0x38]
0066f3bc  04 20 81 e3                                      orr r2, r1, #4
0066f3c0  b0 24 c3 e1                                      strh r2, [r3, #0x40]
0066f3c4  10 30 96 e5                                      ldr r3, [r6, #0x10]
0066f3c8  28 30 93 e5                                      ldr r3, [r3, #0x28]
0066f3cc  38 20 93 e5                                      ldr r2, [r3, #0x38]
0066f3d0  0e 09 12 e3                                      tst r2, #0x38000
0066f3d4  b0 14 d3 11                                      ldrhne r1, [r3, #0x40]
0066f3d8  0e 29 c2 13                                      bicne r2, r2, #0x38000
0066f3dc  38 20 83 15                                      strne r2, [r3, #0x38]
0066f3e0  08 20 81 13                                      orrne r2, r1, #8
0066f3e4  b0 24 c3 11                                      strhne r2, [r3, #0x40]
0066f3e8  00 00 54 e3                                      cmp r4, #0
0066f3ec  78 00 00 1a                                      bne #0x66f5d4
0066f3f0  10 40 96 e5                                      ldr r4, [r6, #0x10]
0066f3f4  28 30 94 e5                                      ldr r3, [r4, #0x28]
0066f3f8  20 00 93 e5                                      ldr r0, [r3, #0x20]
0066f3fc  58 7d f2 eb                                      bl #0x30e964
0066f400  00 10 a0 e1                                      mov r1, r0
0066f404  fe 05 a0 e3                                      mov r0, #0x3f800000
0066f408  21 7e f2 eb                                      bl #0x30ec94
0066f40c  1c 00 86 e5                                      str r0, [r6, #0x1c]
0066f410  28 20 94 e5                                      ldr r2, [r4, #0x28]
0066f414  00 00 52 e3                                      cmp r2, #0
0066f418  10 20 8d e5                                      str r2, [sp, #0x10]
0066f41c  02 00 00 1a                                      bne #0x66f42c
0066f420  00 70 a0 e3                                      mov r7, #0
0066f424  14 70 8d e5                                      str r7, [sp, #0x14]
0066f428  0c 00 00 ea                                      b #0x66f460
0066f42c  10 c0 9d e5                                      ldr ip, [sp, #0x10]
0066f430  04 30 9c e5                                      ldr r3, [ip, #4]
0066f434  01 30 83 e2                                      add r3, r3, #1
0066f438  04 30 8c e5                                      str r3, [ip, #4]
0066f43c  28 00 94 e5                                      ldr r0, [r4, #0x28]
0066f440  00 00 50 e3                                      cmp r0, #0
0066f444  f5 ff ff 0a                                      beq #0x66f420
0066f448  00 20 a0 e3                                      mov r2, #0
0066f44c  04 10 a0 e3                                      mov r1, #4
0066f450  02 30 a0 e1                                      mov r3, r2
0066f454  1e 3b fe eb                                      bl #0x5fe0d4
0066f458  14 00 8d e5                                      str r0, [sp, #0x14]
0066f45c  00 70 a0 e1                                      mov r7, r0
0066f460  00 50 a0 e3                                      mov r5, #0
0066f464  e8 80 8d e2                                      add r8, sp, #0xe8
0066f468  05 10 a0 e1                                      mov r1, r5
0066f46c  40 20 a0 e3                                      mov r2, #0x40
0066f470  08 00 a0 e1                                      mov r0, r8
0066f474  a4 a0 8d e2                                      add sl, sp, #0xa4
0066f478  f8 7b f2 eb                                      bl #0x30e460
0066f47c  fe 45 a0 e3                                      mov r4, #0x3f800000
0066f480  01 90 a0 e3                                      mov sb, #1
0066f484  05 10 a0 e1                                      mov r1, r5
0066f488  40 20 a0 e3                                      mov r2, #0x40
0066f48c  0a 00 a0 e1                                      mov r0, sl
0066f490  e8 40 8d e5                                      str r4, [sp, #0xe8]
0066f494  fc 40 8d e5                                      str r4, [sp, #0xfc]
0066f498  10 41 8d e5                                      str r4, [sp, #0x110]
0066f49c  24 41 8d e5                                      str r4, [sp, #0x124]
0066f4a0  28 91 cd e5                                      strb sb, [sp, #0x128]
0066f4a4  ed 7b f2 eb                                      bl #0x30e460
0066f4a8  10 30 96 e5                                      ldr r3, [r6, #0x10]
0066f4ac  e0 40 8d e5                                      str r4, [sp, #0xe0]
0066f4b0  e4 90 cd e5                                      strb sb, [sp, #0xe4]
0066f4b4  a4 40 8d e5                                      str r4, [sp, #0xa4]
0066f4b8  b8 40 8d e5                                      str r4, [sp, #0xb8]
0066f4bc  cc 40 8d e5                                      str r4, [sp, #0xcc]
0066f4c0  10 20 93 e5                                      ldr r2, [r3, #0x10]
0066f4c4  14 10 93 e5                                      ldr r1, [r3, #0x14]
0066f4c8  01 10 62 e0                                      rsb r1, r2, r1
0066f4cc  41 11 b0 e1                                      asrs r1, r1, #2
0066f4d0  0c 10 8d e5                                      str r1, [sp, #0xc]
0066f4d4  28 00 00 0a                                      beq #0x66f57c
0066f4d8  60 90 8d e2                                      add sb, sp, #0x60
0066f4dc  1c b0 8d e2                                      add fp, sp, #0x1c
0066f4e0  01 00 00 ea                                      b #0x66f4ec
0066f4e4  10 30 96 e5                                      ldr r3, [r6, #0x10]
0066f4e8  10 20 93 e5                                      ldr r2, [r3, #0x10]
0066f4ec  0c 30 96 e5                                      ldr r3, [r6, #0xc]
0066f4f0  05 11 92 e7                                      ldr r1, [r2, r5, lsl #2]
0066f4f4  09 00 a0 e1                                      mov r0, sb
0066f4f8  04 20 93 e5                                      ldr r2, [r3, #4]
0066f4fc  0a 40 a0 e1                                      mov r4, sl
0066f500  05 23 82 e0                                      add r2, r2, r5, lsl #6
0066f504  25 d7 ff eb                                      bl #0x6651a0
0066f508  0c 20 96 e5                                      ldr r2, [r6, #0xc]
0066f50c  0b 00 a0 e1                                      mov r0, fp
0066f510  09 10 a0 e1                                      mov r1, sb
0066f514  10 20 82 e2                                      add r2, r2, #0x10
0066f518  20 d7 ff eb                                      bl #0x6651a0
0066f51c  41 20 a0 e3                                      mov r2, #0x41
0066f520  0b 10 a0 e1                                      mov r1, fp
0066f524  08 00 a0 e1                                      mov r0, r8
0066f528  ce 7c f2 eb                                      bl #0x30e868
0066f52c  08 00 a0 e1                                      mov r0, r8
0066f530  0a 10 a0 e1                                      mov r1, sl
0066f534  95 c0 f2 eb                                      bl #0x31f790
0066f538  0f 00 b4 e8                                      ldm r4!, {r0, r1, r2, r3}
0066f53c  00 c0 a0 e3                                      mov ip, #0
0066f540  e4 c0 cd e5                                      strb ip, [sp, #0xe4]
0066f544  07 c0 a0 e1                                      mov ip, r7
0066f548  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
0066f54c  0f 00 b4 e8                                      ldm r4!, {r0, r1, r2, r3}
0066f550  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
0066f554  0f 00 b4 e8                                      ldm r4!, {r0, r1, r2, r3}
0066f558  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
0066f55c  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0066f560  01 50 85 e2                                      add r5, r5, #1
0066f564  40 70 87 e2                                      add r7, r7, #0x40
0066f568  01 00 55 e1                                      cmp r5, r1
0066f56c  0f 00 94 e8                                      ldm r4, {r0, r1, r2, r3}
0066f570  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
0066f574  da ff ff 1a                                      bne #0x66f4e4
0066f578  10 30 96 e5                                      ldr r3, [r6, #0x10]
0066f57c  00 20 93 e5                                      ldr r2, [r3]
0066f580  14 c0 9d e5                                      ldr ip, [sp, #0x14]
0066f584  04 20 c2 e3                                      bic r2, r2, #4
0066f588  00 00 5c e3                                      cmp ip, #0
0066f58c  00 20 83 e5                                      str r2, [r3]
0066f590  01 00 00 0a                                      beq #0x66f59c
0066f594  10 00 9d e5                                      ldr r0, [sp, #0x10]
0066f598  9b 39 fe eb                                      bl #0x5fdc0c
0066f59c  10 10 9d e5                                      ldr r1, [sp, #0x10]
0066f5a0  00 00 51 e3                                      cmp r1, #0
0066f5a4  3c ff ff 0a                                      beq #0x66f29c
0066f5a8  01 00 a0 e1                                      mov r0, r1
0066f5ac  f4 b7 f2 eb                                      bl #0x31d584
0066f5b0  39 ff ff ea                                      b #0x66f29c
0066f5b4  03 00 a0 e1                                      mov r0, r3
0066f5b8  10 10 a0 e3                                      mov r1, #0x10
0066f5bc  00 30 93 e5                                      ldr r3, [r3]
0066f5c0  00 20 a0 e3                                      mov r2, #0
0066f5c4  0f e0 a0 e1                                      mov lr, pc
0066f5c8  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
0066f5cc  18 30 96 e5                                      ldr r3, [r6, #0x18]
0066f5d0  47 ff ff ea                                      b #0x66f2f4
0066f5d4  18 30 96 e5                                      ldr r3, [r6, #0x18]
0066f5d8  10 10 a0 e3                                      mov r1, #0x10
0066f5dc  01 20 a0 e3                                      mov r2, #1
0066f5e0  03 00 a0 e1                                      mov r0, r3
0066f5e4  00 30 93 e5                                      ldr r3, [r3]
0066f5e8  0f e0 a0 e1                                      mov lr, pc
0066f5ec  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
0066f5f0  7e ff ff ea                                      b #0x66f3f0
; mapping-symbol data/literal pool
0066f5f4  50 65 27 00                                      .byte 0x50, 0x65, 0x27, 0x00

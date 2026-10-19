; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0066b880, declared_size=92, range_size=92, mode=arm
; class-group: glitch::collada::detail::CColladaHardwareMatrixSkinTechnique
; alias: _ZN6glitch7collada6detail35CColladaHardwareMatrixSkinTechniqueC2ERNS0_5SSkinERNS0_10SSkinCacheEb
; demangled: glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::CColladaHardwareMatrixSkinTechnique(glitch::collada::SSkin&, glitch::collada::SSkinCache&, bool)
; decoder-mode: arm
0066b880  f0 00 2d e9                                      push {r4, r5, r6, r7}
0066b884  48 70 9f e5                                      ldr r7, [pc, #0x48]
0066b888  48 60 9f e5                                      ldr r6, [pc, #0x48]
0066b88c  00 40 a0 e3                                      mov r4, #0
0066b890  07 70 8f e0                                      add r7, pc, r7
0066b894  06 60 97 e7                                      ldr r6, [r7, r6]
0066b898  00 50 a0 e1                                      mov r5, r0
0066b89c  0c 10 80 e5                                      str r1, [r0, #0xc]
0066b8a0  08 60 86 e2                                      add r6, r6, #8
0066b8a4  00 60 80 e5                                      str r6, [r0]
0066b8a8  10 20 80 e5                                      str r2, [r0, #0x10]
0066b8ac  08 40 80 e5                                      str r4, [r0, #8]
0066b8b0  14 40 80 e5                                      str r4, [r0, #0x14]
0066b8b4  1c 40 80 e5                                      str r4, [r0, #0x1c]
0066b8b8  18 40 e5 e5                                      strb r4, [r5, #0x18]!
0066b8bc  24 50 80 e5                                      str r5, [r0, #0x24]
0066b8c0  04 30 c0 e5                                      strb r3, [r0, #4]
0066b8c4  28 40 80 e5                                      str r4, [r0, #0x28]
0066b8c8  20 50 80 e5                                      str r5, [r0, #0x20]
0066b8cc  f0 00 bd e8                                      pop {r4, r5, r6, r7}
0066b8d0  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0066b8d4  00 92 32 00 50 13 00 00                          .byte 0x00, 0x92, 0x32, 0x00, 0x50, 0x13, 0x00, 0x00

; FUNCTION 0x0066b8dc, declared_size=92, range_size=92, mode=arm
; class-group: glitch::collada::detail::CColladaHardwareMatrixSkinTechnique
; alias: _ZN6glitch7collada6detail35CColladaHardwareMatrixSkinTechniqueC1ERNS0_5SSkinERNS0_10SSkinCacheEb
; demangled: glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::CColladaHardwareMatrixSkinTechnique(glitch::collada::SSkin&, glitch::collada::SSkinCache&, bool)
; decoder-mode: arm
0066b8dc  f0 00 2d e9                                      push {r4, r5, r6, r7}
0066b8e0  48 70 9f e5                                      ldr r7, [pc, #0x48]
0066b8e4  48 60 9f e5                                      ldr r6, [pc, #0x48]
0066b8e8  00 40 a0 e3                                      mov r4, #0
0066b8ec  07 70 8f e0                                      add r7, pc, r7
0066b8f0  06 60 97 e7                                      ldr r6, [r7, r6]
0066b8f4  00 50 a0 e1                                      mov r5, r0
0066b8f8  0c 10 80 e5                                      str r1, [r0, #0xc]
0066b8fc  08 60 86 e2                                      add r6, r6, #8
0066b900  00 60 80 e5                                      str r6, [r0]
0066b904  10 20 80 e5                                      str r2, [r0, #0x10]
0066b908  08 40 80 e5                                      str r4, [r0, #8]
0066b90c  14 40 80 e5                                      str r4, [r0, #0x14]
0066b910  1c 40 80 e5                                      str r4, [r0, #0x1c]
0066b914  18 40 e5 e5                                      strb r4, [r5, #0x18]!
0066b918  24 50 80 e5                                      str r5, [r0, #0x24]
0066b91c  04 30 c0 e5                                      strb r3, [r0, #4]
0066b920  28 40 80 e5                                      str r4, [r0, #0x28]
0066b924  20 50 80 e5                                      str r5, [r0, #0x20]
0066b928  f0 00 bd e8                                      pop {r4, r5, r6, r7}
0066b92c  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0066b930  a4 91 32 00 50 13 00 00                          .byte 0xa4, 0x91, 0x32, 0x00, 0x50, 0x13, 0x00, 0x00

; FUNCTION 0x0066b938, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::detail::CColladaHardwareMatrixSkinTechnique
; alias: _ZNK6glitch7collada6detail35CColladaHardwareMatrixSkinTechnique16needOutputBufferEv
; demangled: glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::needOutputBuffer() const
; decoder-mode: arm
0066b938  00 00 a0 e3                                      mov r0, #0
0066b93c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0066b940, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::detail::CColladaHardwareMatrixSkinTechnique
; alias: _ZN6glitch7collada6detail35CColladaHardwareMatrixSkinTechnique6attachEPNS_5scene10ISceneNodeE
; demangled: glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::attach(glitch::scene::ISceneNode*)
; decoder-mode: arm
0066b940  14 10 80 e5                                      str r1, [r0, #0x14]
0066b944  1e ff 2f e1                                      bx lr

; FUNCTION 0x0066b948, declared_size=48, range_size=48, mode=arm
; class-group: glitch::collada::detail::CColladaHardwareMatrixSkinTechnique
; alias: _ZN6glitch7collada6detail35CColladaHardwareMatrixSkinTechnique27onPrepareBufferForRenderingENS0_21E_PREPARE_BUFFER_STEPEPNS_5video12IVideoDriverERNS0_11SSkinBufferEPNS_5scene11CMeshBufferE
; demangled: glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::onPrepareBufferForRendering(glitch::collada::E_PREPARE_BUFFER_STEP, glitch::video::IVideoDriver*, glitch::collada::SSkinBuffer&, glitch::scene::CMeshBuffer*)
; decoder-mode: arm
0066b948  01 00 51 e3                                      cmp r1, #1
0066b94c  10 40 2d e9                                      push {r4, lr}
0066b950  01 00 00 0a                                      beq #0x66b95c
0066b954  10 00 a0 e3                                      mov r0, #0x10
0066b958  10 80 bd e8                                      pop {r4, pc}
0066b95c  00 c0 90 e5                                      ldr ip, [r0]
0066b960  03 10 a0 e1                                      mov r1, r3
0066b964  08 20 9d e5                                      ldr r2, [sp, #8]
0066b968  0f e0 a0 e1                                      mov lr, pc
0066b96c  18 f0 9c e5                                      ldr pc, [ip, #0x18]
0066b970  10 00 a0 e3                                      mov r0, #0x10
0066b974  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0066b9cc, declared_size=104, range_size=104, mode=arm
; class-group: glitch::collada::detail::CColladaHardwareMatrixSkinTechnique
; alias: _ZN6glitch7collada6detail35CColladaHardwareMatrixSkinTechniqueD1Ev
; demangled: glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::~CColladaHardwareMatrixSkinTechnique()
; decoder-mode: arm
0066b9cc  70 40 2d e9                                      push {r4, r5, r6, lr}
0066b9d0  54 30 9f e5                                      ldr r3, [pc, #0x54]
0066b9d4  54 20 9f e5                                      ldr r2, [pc, #0x54]
0066b9d8  28 10 90 e5                                      ldr r1, [r0, #0x28]
0066b9dc  03 30 8f e0                                      add r3, pc, r3
0066b9e0  02 20 93 e7                                      ldr r2, [r3, r2]
0066b9e4  00 00 51 e3                                      cmp r1, #0
0066b9e8  00 40 a0 e1                                      mov r4, r0
0066b9ec  08 20 82 e2                                      add r2, r2, #8
0066b9f0  00 20 80 e5                                      str r2, [r0]
0066b9f4  08 00 00 0a                                      beq #0x66ba1c
0066b9f8  18 50 80 e2                                      add r5, r0, #0x18
0066b9fc  05 00 a0 e1                                      mov r0, r5
0066ba00  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
0066ba04  e3 ff ff eb                                      bl #0x66b998
0066ba08  00 30 a0 e3                                      mov r3, #0
0066ba0c  24 50 84 e5                                      str r5, [r4, #0x24]
0066ba10  28 30 84 e5                                      str r3, [r4, #0x28]
0066ba14  20 50 84 e5                                      str r5, [r4, #0x20]
0066ba18  1c 30 84 e5                                      str r3, [r4, #0x1c]
0066ba1c  04 00 a0 e1                                      mov r0, r4
0066ba20  0c 15 00 eb                                      bl #0x670e58
0066ba24  04 00 a0 e1                                      mov r0, r4
0066ba28  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0066ba2c  b4 90 32 00 50 13 00 00                          .byte 0xb4, 0x90, 0x32, 0x00, 0x50, 0x13, 0x00, 0x00

; FUNCTION 0x0066ba34, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::detail::CColladaHardwareMatrixSkinTechnique
; alias: _ZN6glitch7collada6detail35CColladaHardwareMatrixSkinTechniqueD0Ev
; demangled: glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::~CColladaHardwareMatrixSkinTechnique()
; decoder-mode: arm
0066ba34  10 40 2d e9                                      push {r4, lr}
0066ba38  00 40 a0 e1                                      mov r4, r0
0066ba3c  e2 ff ff eb                                      bl #0x66b9cc
0066ba40  04 00 a0 e1                                      mov r0, r4
0066ba44  19 8a f2 eb                                      bl #0x30e2b0
0066ba48  04 00 a0 e1                                      mov r0, r4
0066ba4c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0066ba50, declared_size=136, range_size=136, mode=arm
; class-group: glitch::collada::detail::CColladaHardwareMatrixSkinTechnique
; alias: _ZN6glitch7collada6detail35CColladaHardwareMatrixSkinTechnique23checkAvailabilityStaticERKNS_5video10STechniqueE
; demangled: glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::checkAvailabilityStatic(glitch::video::STechnique const&)
; decoder-mode: arm
0066ba50  10 40 2d e9                                      push {r4, lr}
0066ba54  04 40 d0 e5                                      ldrb r4, [r0, #4]
0066ba58  00 00 54 e3                                      cmp r4, #0
0066ba5c  08 30 90 05                                      ldreq r3, [r0, #8]
0066ba60  0d 00 00 0a                                      beq #0x66ba9c
0066ba64  01 40 44 e2                                      sub r4, r4, #1
0066ba68  08 30 90 e5                                      ldr r3, [r0, #8]
0066ba6c  74 40 ef e6                                      uxtb r4, r4
0066ba70  34 c0 a0 e3                                      mov ip, #0x34
0066ba74  00 20 a0 e3                                      mov r2, #0
0066ba78  94 cc 2c e0                                      mla ip, r4, ip, ip
0066ba7c  02 40 a0 e1                                      mov r4, r2
0066ba80  02 10 83 e0                                      add r1, r3, r2
0066ba84  20 10 91 e5                                      ldr r1, [r1, #0x20]
0066ba88  34 20 82 e2                                      add r2, r2, #0x34
0066ba8c  0c 00 52 e1                                      cmp r2, ip
0066ba90  38 10 91 e5                                      ldr r1, [r1, #0x38]
0066ba94  01 40 84 e1                                      orr r4, r4, r1
0066ba98  f8 ff ff 1a                                      bne #0x66ba80
0066ba9c  00 20 a0 e3                                      mov r2, #0
0066baa0  20 00 93 e5                                      ldr r0, [r3, #0x20]
0066baa4  0b 10 a0 e3                                      mov r1, #0xb
0066baa8  02 30 a0 e1                                      mov r3, r2
0066baac  8c e3 fd eb                                      bl #0x5e48e4
0066bab0  ff 3f 0f e3                                      movw r3, #0xffff
0066bab4  03 00 50 e1                                      cmp r0, r3
0066bab8  04 00 00 0a                                      beq #0x66bad0
0066babc  03 42 04 e2                                      and r4, r4, #0x30000000
0066bac0  03 02 54 e3                                      cmp r4, #0x30000000
0066bac4  00 00 a0 13                                      movne r0, #0
0066bac8  01 00 a0 03                                      moveq r0, #1
0066bacc  10 80 bd e8                                      pop {r4, pc}
0066bad0  00 00 a0 e3                                      mov r0, #0
0066bad4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0066beac, declared_size=120, range_size=120, mode=arm
; class-group: glitch::collada::detail::CColladaHardwareMatrixSkinTechnique
; alias: _ZNK6glitch7collada6detail35CColladaHardwareMatrixSkinTechnique17checkAvailabilityERKNS_5video10STechniqueE
; demangled: glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::checkAvailability(glitch::video::STechnique const&) const
; decoder-mode: arm
0066beac  70 40 2d e9                                      push {r4, r5, r6, lr}
0066beb0  00 40 a0 e1                                      mov r4, r0
0066beb4  01 00 a0 e1                                      mov r0, r1
0066beb8  e4 fe ff eb                                      bl #0x66ba50
0066bebc  00 50 50 e2                                      subs r5, r0, #0
0066bec0  10 00 00 0a                                      beq #0x66bf08
0066bec4  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0066bec8  94 40 93 e5                                      ldr r4, [r3, #0x94]
0066becc  00 00 54 e3                                      cmp r4, #0
0066bed0  0c 00 00 0a                                      beq #0x66bf08
0066bed4  11 30 d4 e5                                      ldrb r3, [r4, #0x11]
0066bed8  00 00 53 e3                                      cmp r3, #0
0066bedc  09 00 00 0a                                      beq #0x66bf08
0066bee0  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
0066bee4  08 00 13 e3                                      tst r3, #8
0066bee8  08 00 00 1a                                      bne #0x66bf10
0066beec  08 30 94 e5                                      ldr r3, [r4, #8]
0066bef0  00 20 a0 e3                                      mov r2, #0
0066bef4  11 20 c4 e5                                      strb r2, [r4, #0x11]
0066bef8  02 00 53 e1                                      cmp r3, r2
0066befc  12 30 d4 15                                      ldrbne r3, [r4, #0x12]
0066bf00  02 30 83 13                                      orrne r3, r3, #2
0066bf04  12 30 c4 15                                      strbne r3, [r4, #0x12]
0066bf08  05 00 a0 e1                                      mov r0, r5
0066bf0c  70 80 bd e8                                      pop {r4, r5, r6, pc}
0066bf10  00 30 94 e5                                      ldr r3, [r4]
0066bf14  04 00 a0 e1                                      mov r0, r4
0066bf18  0f e0 a0 e1                                      mov lr, pc
0066bf1c  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0066bf20  f1 ff ff ea                                      b #0x66beec

; FUNCTION 0x0066c278, declared_size=432, range_size=432, mode=arm
; class-group: glitch::collada::detail::CColladaHardwareMatrixSkinTechnique
; alias: _ZN6glitch7collada6detail35CColladaHardwareMatrixSkinTechnique4skinERNS0_11SSkinBufferEPNS_5scene11CMeshBufferE
; demangled: glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::skin(glitch::collada::SSkinBuffer&, glitch::scene::CMeshBuffer*)
; decoder-mode: arm
0066c278  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0066c27c  00 40 a0 e1                                      mov r4, r0
0066c280  24 d0 4d e2                                      sub sp, sp, #0x24
0066c284  01 70 a0 e1                                      mov r7, r1
0066c288  18 30 94 e4                                      ldr r3, [r4], #0x18
0066c28c  00 60 a0 e1                                      mov r6, r0
0066c290  0f e0 a0 e1                                      mov lr, pc
0066c294  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0066c298  04 30 97 e5                                      ldr r3, [r7, #4]
0066c29c  04 10 a0 e1                                      mov r1, r4
0066c2a0  10 00 8d e2                                      add r0, sp, #0x10
0066c2a4  04 30 93 e5                                      ldr r3, [r3, #4]
0066c2a8  18 20 8d e2                                      add r2, sp, #0x18
0066c2ac  bc 30 d3 e1                                      ldrh r3, [r3, #0xc]
0066c2b0  b8 31 cd e1                                      strh r3, [sp, #0x18]
0066c2b4  00 30 e0 e3                                      mvn r3, #0
0066c2b8  bc 31 cd e1                                      strh r3, [sp, #0x1c]
0066c2bc  ba 31 cd e1                                      strh r3, [sp, #0x1a]
0066c2c0  8c ff ff eb                                      bl #0x66c0f8
0066c2c4  14 30 dd e5                                      ldrb r3, [sp, #0x14]
0066c2c8  00 00 53 e3                                      cmp r3, #0
0066c2cc  46 00 00 1a                                      bne #0x66c3ec
0066c2d0  10 30 96 e5                                      ldr r3, [r6, #0x10]
0066c2d4  10 10 9d e5                                      ldr r1, [sp, #0x10]
0066c2d8  08 20 93 e5                                      ldr r2, [r3, #8]
0066c2dc  04 30 93 e5                                      ldr r3, [r3, #4]
0066c2e0  b4 a1 d1 e1                                      ldrh sl, [r1, #0x14]
0066c2e4  b2 81 d1 e1                                      ldrh r8, [r1, #0x12]
0066c2e8  02 20 63 e0                                      rsb r2, r3, r2
0066c2ec  42 21 a0 e1                                      asr r2, r2, #2
0066c2f0  02 12 a0 e1                                      lsl r1, r2, #4
0066c2f4  01 10 62 e0                                      rsb r1, r2, r1
0066c2f8  01 14 81 e0                                      add r1, r1, r1, lsl #8
0066c2fc  01 18 81 e0                                      add r1, r1, r1, lsl #16
0066c300  01 22 82 e0                                      add r2, r2, r1, lsl #4
0066c304  00 00 52 e3                                      cmp r2, #0
0066c308  14 00 00 0a                                      beq #0x66c360
0066c30c  00 50 a0 e3                                      mov r5, #0
0066c310  05 40 a0 e1                                      mov r4, r5
0066c314  05 30 83 e0                                      add r3, r3, r5
0066c318  04 20 a0 e1                                      mov r2, r4
0066c31c  08 10 a0 e1                                      mov r1, r8
0066c320  04 00 97 e5                                      ldr r0, [r7, #4]
0066c324  6c 7c fd eb                                      bl #0x5cb4dc
0066c328  10 30 96 e5                                      ldr r3, [r6, #0x10]
0066c32c  01 40 84 e2                                      add r4, r4, #1
0066c330  44 50 85 e2                                      add r5, r5, #0x44
0066c334  08 20 93 e5                                      ldr r2, [r3, #8]
0066c338  04 30 93 e5                                      ldr r3, [r3, #4]
0066c33c  02 20 63 e0                                      rsb r2, r3, r2
0066c340  42 21 a0 e1                                      asr r2, r2, #2
0066c344  02 12 a0 e1                                      lsl r1, r2, #4
0066c348  01 10 62 e0                                      rsb r1, r2, r1
0066c34c  01 14 81 e0                                      add r1, r1, r1, lsl #8
0066c350  01 18 81 e0                                      add r1, r1, r1, lsl #16
0066c354  01 22 82 e0                                      add r2, r2, r1, lsl #4
0066c358  02 00 54 e1                                      cmp r4, r2
0066c35c  ec ff ff 3a                                      blo #0x66c314
0066c360  ff 3f 0f e3                                      movw r3, #0xffff
0066c364  03 00 5a e1                                      cmp sl, r3
0066c368  1d 00 00 0a                                      beq #0x66c3e4
0066c36c  0c 20 96 e5                                      ldr r2, [r6, #0xc]
0066c370  00 30 a0 e3                                      mov r3, #0
0066c374  00 30 8d e5                                      str r3, [sp]
0066c378  04 30 8d e5                                      str r3, [sp, #4]
0066c37c  08 30 8d e5                                      str r3, [sp, #8]
0066c380  0c 30 8d e5                                      str r3, [sp, #0xc]
0066c384  98 10 d2 e5                                      ldrb r1, [r2, #0x98]
0066c388  00 00 51 e3                                      cmp r1, #0
0066c38c  fe 35 a0 13                                      movne r3, #0x3f800000
0066c390  00 30 8d e5                                      str r3, [sp]
0066c394  98 30 d2 e5                                      ldrb r3, [r2, #0x98]
0066c398  0a 10 a0 e1                                      mov r1, sl
0066c39c  01 00 53 e3                                      cmp r3, #1
0066c3a0  00 30 a0 93                                      movls r3, #0
0066c3a4  fe 35 a0 83                                      movhi r3, #0x3f800000
0066c3a8  04 30 8d e5                                      str r3, [sp, #4]
0066c3ac  98 30 d2 e5                                      ldrb r3, [r2, #0x98]
0066c3b0  02 00 53 e3                                      cmp r3, #2
0066c3b4  00 30 a0 93                                      movls r3, #0
0066c3b8  fe 35 a0 83                                      movhi r3, #0x3f800000
0066c3bc  08 30 8d e5                                      str r3, [sp, #8]
0066c3c0  98 30 d2 e5                                      ldrb r3, [r2, #0x98]
0066c3c4  04 00 97 e5                                      ldr r0, [r7, #4]
0066c3c8  00 20 a0 e3                                      mov r2, #0
0066c3cc  03 00 53 e3                                      cmp r3, #3
0066c3d0  00 c0 a0 93                                      movls ip, #0
0066c3d4  fe c5 a0 83                                      movhi ip, #0x3f800000
0066c3d8  0d 30 a0 e1                                      mov r3, sp
0066c3dc  0c c0 8d e5                                      str ip, [sp, #0xc]
0066c3e0  bb 68 fd eb                                      bl #0x5c66d4
0066c3e4  24 d0 8d e2                                      add sp, sp, #0x24
0066c3e8  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0066c3ec  04 30 97 e5                                      ldr r3, [r7, #4]
0066c3f0  0b 10 a0 e3                                      mov r1, #0xb
0066c3f4  00 20 a0 e3                                      mov r2, #0
0066c3f8  04 00 93 e5                                      ldr r0, [r3, #4]
0066c3fc  10 40 9d e5                                      ldr r4, [sp, #0x10]
0066c400  c0 8a fd eb                                      bl #0x5cef08
0066c404  b2 01 c4 e1                                      strh r0, [r4, #0x12]
0066c408  04 30 97 e5                                      ldr r3, [r7, #4]
0066c40c  0f 10 a0 e3                                      mov r1, #0xf
0066c410  00 20 a0 e3                                      mov r2, #0
0066c414  04 00 93 e5                                      ldr r0, [r3, #4]
0066c418  10 40 9d e5                                      ldr r4, [sp, #0x10]
0066c41c  b9 8a fd eb                                      bl #0x5cef08
0066c420  b4 01 c4 e1                                      strh r0, [r4, #0x14]
0066c424  a9 ff ff ea                                      b #0x66c2d0

; FUNCTION 0x0066c544, declared_size=176, range_size=176, mode=arm
; class-group: glitch::collada::detail::CColladaHardwareMatrixSkinTechnique
; alias: _ZN6glitch7collada6detail35CColladaHardwareMatrixSkinTechnique15preparePtrCacheEv
; demangled: glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::preparePtrCache()
; decoder-mode: arm
0066c544  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0066c548  00 40 a0 e1                                      mov r4, r0
0066c54c  10 00 90 e5                                      ldr r0, [r0, #0x10]
0066c550  08 d0 4d e2                                      sub sp, sp, #8
0066c554  00 30 90 e5                                      ldr r3, [r0]
0066c558  01 08 13 e3                                      tst r3, #0x10000
0066c55c  01 00 00 1a                                      bne #0x66c568
0066c560  08 d0 8d e2                                      add sp, sp, #8
0066c564  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0066c568  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0066c56c  08 20 8d e2                                      add r2, sp, #8
0066c570  00 50 a0 e3                                      mov r5, #0
0066c574  74 10 93 e5                                      ldr r1, [r3, #0x74]
0066c578  10 00 80 e2                                      add r0, r0, #0x10
0066c57c  04 50 22 e5                                      str r5, [r2, #-4]!
0066c580  de ff ff eb                                      bl #0x66c500
0066c584  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0066c588  74 70 93 e5                                      ldr r7, [r3, #0x74]
0066c58c  05 00 57 e1                                      cmp r7, r5
0066c590  01 00 00 ca                                      bgt #0x66c59c
0066c594  11 00 00 ea                                      b #0x66c5e0
0066c598  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0066c59c  78 30 93 e5                                      ldr r3, [r3, #0x78]
0066c5a0  14 00 94 e5                                      ldr r0, [r4, #0x14]
0066c5a4  05 61 a0 e1                                      lsl r6, r5, #2
0066c5a8  05 11 93 e7                                      ldr r1, [r3, r5, lsl #2]
0066c5ac  96 af fc eb                                      bl #0x59840c
0066c5b0  10 30 94 e5                                      ldr r3, [r4, #0x10]
0066c5b4  00 20 50 e2                                      subs r2, r0, #0
0066c5b8  02 00 a0 01                                      moveq r0, r2
0066c5bc  10 80 93 e5                                      ldr r8, [r3, #0x10]
0066c5c0  02 00 00 0a                                      beq #0x66c5d0
0066c5c4  00 30 92 e5                                      ldr r3, [r2]
0066c5c8  0f e0 a0 e1                                      mov lr, pc
0066c5cc  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0066c5d0  01 50 85 e2                                      add r5, r5, #1
0066c5d4  07 00 55 e1                                      cmp r5, r7
0066c5d8  06 00 88 e7                                      str r0, [r8, r6]
0066c5dc  ed ff ff 1a                                      bne #0x66c598
0066c5e0  10 30 94 e5                                      ldr r3, [r4, #0x10]
0066c5e4  00 20 93 e5                                      ldr r2, [r3]
0066c5e8  01 28 c2 e3                                      bic r2, r2, #0x10000
0066c5ec  00 20 83 e5                                      str r2, [r3]
0066c5f0  da ff ff ea                                      b #0x66c560

; FUNCTION 0x0066c5f4, declared_size=688, range_size=688, mode=arm
; class-group: glitch::collada::detail::CColladaHardwareMatrixSkinTechnique
; alias: _ZN6glitch7collada6detail35CColladaHardwareMatrixSkinTechnique18computeBoundingBoxEv
; demangled: glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::computeBoundingBox()
; decoder-mode: arm
0066c5f4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0066c5f8  00 40 a0 e1                                      mov r4, r0
0066c5fc  01 a0 a0 e1                                      mov sl, r1
0066c600  01 00 a0 e1                                      mov r0, r1
0066c604  24 d0 4d e2                                      sub sp, sp, #0x24
0066c608  cd ff ff eb                                      bl #0x66c544
0066c60c  10 20 9a e5                                      ldr r2, [sl, #0x10]
0066c610  02 31 e0 e3                                      mvn r3, #0x80000000
0066c614  02 35 43 e2                                      sub r3, r3, #0x800000
0066c618  02 15 e0 e3                                      mvn r1, #0x800000
0066c61c  10 00 92 e5                                      ldr r0, [r2, #0x10]
0066c620  14 90 92 e5                                      ldr sb, [r2, #0x14]
0066c624  08 30 84 e5                                      str r3, [r4, #8]
0066c628  0c 10 84 e5                                      str r1, [r4, #0xc]
0066c62c  10 10 84 e5                                      str r1, [r4, #0x10]
0066c630  14 10 84 e5                                      str r1, [r4, #0x14]
0066c634  00 30 84 e5                                      str r3, [r4]
0066c638  04 30 84 e5                                      str r3, [r4, #4]
0066c63c  0c 30 9a e5                                      ldr r3, [sl, #0xc]
0066c640  09 90 60 e0                                      rsb sb, r0, sb
0066c644  59 91 e7 e7                                      ubfx sb, sb, #2, #8
0066c648  8c 60 93 e5                                      ldr r6, [r3, #0x8c]
0066c64c  00 00 56 e3                                      cmp r6, #0
0066c650  30 00 00 1a                                      bne #0x66c718
0066c654  00 00 59 e3                                      cmp sb, #0
0066c658  07 00 00 1a                                      bne #0x66c67c
0066c65c  10 30 9a e5                                      ldr r3, [sl, #0x10]
0066c660  04 00 a0 e1                                      mov r0, r4
0066c664  00 20 93 e5                                      ldr r2, [r3]
0066c668  08 20 c2 e3                                      bic r2, r2, #8
0066c66c  00 20 83 e5                                      str r2, [r3]
0066c670  24 d0 8d e2                                      add sp, sp, #0x24
0066c674  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0066c678  0c 10 94 e5                                      ldr r1, [r4, #0xc]
0066c67c  10 30 9a e5                                      ldr r3, [sl, #0x10]
0066c680  10 30 93 e5                                      ldr r3, [r3, #0x10]
0066c684  06 31 93 e7                                      ldr r3, [r3, r6, lsl #2]
0066c688  01 60 86 e2                                      add r6, r6, #1
0066c68c  30 80 93 e5                                      ldr r8, [r3, #0x30]
0066c690  38 50 93 e5                                      ldr r5, [r3, #0x38]
0066c694  34 70 93 e5                                      ldr r7, [r3, #0x34]
0066c698  08 00 a0 e1                                      mov r0, r8
0066c69c  15 87 f2 eb                                      bl #0x30e2f8
0066c6a0  00 00 50 e3                                      cmp r0, #0
0066c6a4  10 10 94 e5                                      ldr r1, [r4, #0x10]
0066c6a8  0c 80 84 15                                      strne r8, [r4, #0xc]
0066c6ac  07 00 a0 e1                                      mov r0, r7
0066c6b0  10 87 f2 eb                                      bl #0x30e2f8
0066c6b4  00 00 50 e3                                      cmp r0, #0
0066c6b8  14 10 94 e5                                      ldr r1, [r4, #0x14]
0066c6bc  10 70 84 15                                      strne r7, [r4, #0x10]
0066c6c0  05 00 a0 e1                                      mov r0, r5
0066c6c4  0b 87 f2 eb                                      bl #0x30e2f8
0066c6c8  00 00 50 e3                                      cmp r0, #0
0066c6cc  00 10 94 e5                                      ldr r1, [r4]
0066c6d0  14 50 84 15                                      strne r5, [r4, #0x14]
0066c6d4  08 00 a0 e1                                      mov r0, r8
0066c6d8  0b 88 f2 eb                                      bl #0x30e70c
0066c6dc  00 00 50 e3                                      cmp r0, #0
0066c6e0  04 10 94 e5                                      ldr r1, [r4, #4]
0066c6e4  00 80 84 15                                      strne r8, [r4]
0066c6e8  07 00 a0 e1                                      mov r0, r7
0066c6ec  06 88 f2 eb                                      bl #0x30e70c
0066c6f0  00 00 50 e3                                      cmp r0, #0
0066c6f4  04 70 84 15                                      strne r7, [r4, #4]
0066c6f8  08 10 94 e5                                      ldr r1, [r4, #8]
0066c6fc  05 00 a0 e1                                      mov r0, r5
0066c700  01 88 f2 eb                                      bl #0x30e70c
0066c704  00 00 50 e3                                      cmp r0, #0
0066c708  08 50 84 15                                      strne r5, [r4, #8]
0066c70c  09 00 56 e1                                      cmp r6, sb
0066c710  d8 ff ff ba                                      blt #0x66c678
0066c714  d0 ff ff ea                                      b #0x66c65c
0066c718  00 00 59 e3                                      cmp sb, #0
0066c71c  ce ff ff 0a                                      beq #0x66c65c
0066c720  00 50 a0 e3                                      mov r5, #0
0066c724  08 20 8d e2                                      add r2, sp, #8
0066c728  05 70 a0 e1                                      mov r7, r5
0066c72c  04 20 8d e5                                      str r2, [sp, #4]
0066c730  00 00 00 ea                                      b #0x66c738
0066c734  0c 30 9a e5                                      ldr r3, [sl, #0xc]
0066c738  90 30 93 e5                                      ldr r3, [r3, #0x90]
0066c73c  10 00 9a e5                                      ldr r0, [sl, #0x10]
0066c740  04 10 9d e5                                      ldr r1, [sp, #4]
0066c744  05 c0 93 e7                                      ldr ip, [r3, r5]
0066c748  05 30 83 e0                                      add r3, r3, r5
0066c74c  0c 20 83 e2                                      add r2, r3, #0xc
0066c750  08 c0 8d e5                                      str ip, [sp, #8]
0066c754  04 c0 93 e5                                      ldr ip, [r3, #4]
0066c758  18 50 85 e2                                      add r5, r5, #0x18
0066c75c  0c c0 8d e5                                      str ip, [sp, #0xc]
0066c760  08 c0 93 e5                                      ldr ip, [r3, #8]
0066c764  10 c0 8d e5                                      str ip, [sp, #0x10]
0066c768  0c 30 93 e5                                      ldr r3, [r3, #0xc]
0066c76c  14 30 8d e5                                      str r3, [sp, #0x14]
0066c770  04 30 92 e5                                      ldr r3, [r2, #4]
0066c774  18 30 8d e5                                      str r3, [sp, #0x18]
0066c778  08 30 92 e5                                      ldr r3, [r2, #8]
0066c77c  1c 30 8d e5                                      str r3, [sp, #0x1c]
0066c780  10 30 90 e5                                      ldr r3, [r0, #0x10]
0066c784  07 01 93 e7                                      ldr r0, [r3, r7, lsl #2]
0066c788  02 6b fc eb                                      bl #0x587398
0066c78c  14 b0 9d e5                                      ldr fp, [sp, #0x14]
0066c790  0c 10 94 e5                                      ldr r1, [r4, #0xc]
0066c794  18 80 9d e5                                      ldr r8, [sp, #0x18]
0066c798  0b 00 a0 e1                                      mov r0, fp
0066c79c  d5 86 f2 eb                                      bl #0x30e2f8
0066c7a0  00 00 50 e3                                      cmp r0, #0
0066c7a4  1c 60 9d e5                                      ldr r6, [sp, #0x1c]
0066c7a8  10 10 94 e5                                      ldr r1, [r4, #0x10]
0066c7ac  0c b0 84 15                                      strne fp, [r4, #0xc]
0066c7b0  08 00 a0 e1                                      mov r0, r8
0066c7b4  cf 86 f2 eb                                      bl #0x30e2f8
0066c7b8  00 00 50 e3                                      cmp r0, #0
0066c7bc  14 10 94 e5                                      ldr r1, [r4, #0x14]
0066c7c0  10 80 84 15                                      strne r8, [r4, #0x10]
0066c7c4  06 00 a0 e1                                      mov r0, r6
0066c7c8  ca 86 f2 eb                                      bl #0x30e2f8
0066c7cc  00 00 50 e3                                      cmp r0, #0
0066c7d0  00 10 94 e5                                      ldr r1, [r4]
0066c7d4  14 60 84 15                                      strne r6, [r4, #0x14]
0066c7d8  0b 00 a0 e1                                      mov r0, fp
0066c7dc  ca 87 f2 eb                                      bl #0x30e70c
0066c7e0  00 00 50 e3                                      cmp r0, #0
0066c7e4  04 10 94 e5                                      ldr r1, [r4, #4]
0066c7e8  00 b0 84 15                                      strne fp, [r4]
0066c7ec  08 00 a0 e1                                      mov r0, r8
0066c7f0  c5 87 f2 eb                                      bl #0x30e70c
0066c7f4  00 00 50 e3                                      cmp r0, #0
0066c7f8  08 10 94 e5                                      ldr r1, [r4, #8]
0066c7fc  04 80 84 15                                      strne r8, [r4, #4]
0066c800  06 00 a0 e1                                      mov r0, r6
0066c804  c0 87 f2 eb                                      bl #0x30e70c
0066c808  00 00 50 e3                                      cmp r0, #0
0066c80c  08 60 84 15                                      strne r6, [r4, #8]
0066c810  08 b0 9d e5                                      ldr fp, [sp, #8]
0066c814  0c 10 94 e5                                      ldr r1, [r4, #0xc]
0066c818  0c 80 9d e5                                      ldr r8, [sp, #0xc]
0066c81c  0b 00 a0 e1                                      mov r0, fp
0066c820  b4 86 f2 eb                                      bl #0x30e2f8
0066c824  00 00 50 e3                                      cmp r0, #0
0066c828  10 60 9d e5                                      ldr r6, [sp, #0x10]
0066c82c  10 10 94 e5                                      ldr r1, [r4, #0x10]
0066c830  0c b0 84 15                                      strne fp, [r4, #0xc]
0066c834  08 00 a0 e1                                      mov r0, r8
0066c838  ae 86 f2 eb                                      bl #0x30e2f8
0066c83c  00 00 50 e3                                      cmp r0, #0
0066c840  14 10 94 e5                                      ldr r1, [r4, #0x14]
0066c844  10 80 84 15                                      strne r8, [r4, #0x10]
0066c848  06 00 a0 e1                                      mov r0, r6
0066c84c  a9 86 f2 eb                                      bl #0x30e2f8
0066c850  00 00 50 e3                                      cmp r0, #0
0066c854  00 10 94 e5                                      ldr r1, [r4]
0066c858  14 60 84 15                                      strne r6, [r4, #0x14]
0066c85c  0b 00 a0 e1                                      mov r0, fp
0066c860  a9 87 f2 eb                                      bl #0x30e70c
0066c864  00 00 50 e3                                      cmp r0, #0
0066c868  04 10 94 e5                                      ldr r1, [r4, #4]
0066c86c  00 b0 84 15                                      strne fp, [r4]
0066c870  08 00 a0 e1                                      mov r0, r8
0066c874  a4 87 f2 eb                                      bl #0x30e70c
0066c878  00 00 50 e3                                      cmp r0, #0
0066c87c  04 80 84 15                                      strne r8, [r4, #4]
0066c880  08 10 94 e5                                      ldr r1, [r4, #8]
0066c884  06 00 a0 e1                                      mov r0, r6
0066c888  9f 87 f2 eb                                      bl #0x30e70c
0066c88c  01 70 87 e2                                      add r7, r7, #1
0066c890  00 00 50 e3                                      cmp r0, #0
0066c894  08 60 84 15                                      strne r6, [r4, #8]
0066c898  09 00 57 e1                                      cmp r7, sb
0066c89c  a4 ff ff ba                                      blt #0x66c734
0066c8a0  6d ff ff ea                                      b #0x66c65c

; FUNCTION 0x0066c8a4, declared_size=132, range_size=132, mode=arm
; class-group: glitch::collada::detail::CColladaHardwareMatrixSkinTechnique
; alias: _ZN6glitch7collada6detail35CColladaHardwareMatrixSkinTechnique4initERNS0_11SSkinBufferEPNS_5scene11CMeshBufferEPNS_5video12IVideoDriverEb
; demangled: glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::init(glitch::collada::SSkinBuffer&, glitch::scene::CMeshBuffer*, glitch::video::IVideoDriver*, bool)
; decoder-mode: arm
0066c8a4  10 40 2d e9                                      push {r4, lr}
0066c8a8  0c e0 90 e5                                      ldr lr, [r0, #0xc]
0066c8ac  01 c0 a0 e1                                      mov ip, r1
0066c8b0  08 d0 4d e2                                      sub sp, sp, #8
0066c8b4  00 40 a0 e1                                      mov r4, r0
0066c8b8  00 30 8d e5                                      str r3, [sp]
0066c8bc  02 10 a0 e1                                      mov r1, r2
0066c8c0  0e 30 a0 e1                                      mov r3, lr
0066c8c4  0c 20 a0 e1                                      mov r2, ip
0066c8c8  7e 11 00 eb                                      bl #0x670ec8
0066c8cc  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0066c8d0  94 40 93 e5                                      ldr r4, [r3, #0x94]
0066c8d4  11 30 d4 e5                                      ldrb r3, [r4, #0x11]
0066c8d8  00 00 53 e3                                      cmp r3, #0
0066c8dc  09 00 00 0a                                      beq #0x66c908
0066c8e0  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
0066c8e4  08 00 13 e3                                      tst r3, #8
0066c8e8  09 00 00 1a                                      bne #0x66c914
0066c8ec  08 30 94 e5                                      ldr r3, [r4, #8]
0066c8f0  00 20 a0 e3                                      mov r2, #0
0066c8f4  11 20 c4 e5                                      strb r2, [r4, #0x11]
0066c8f8  02 00 53 e1                                      cmp r3, r2
0066c8fc  12 30 d4 15                                      ldrbne r3, [r4, #0x12]
0066c900  02 30 83 13                                      orrne r3, r3, #2
0066c904  12 30 c4 15                                      strbne r3, [r4, #0x12]
0066c908  00 00 a0 e3                                      mov r0, #0
0066c90c  08 d0 8d e2                                      add sp, sp, #8
0066c910  10 80 bd e8                                      pop {r4, pc}
0066c914  00 30 94 e5                                      ldr r3, [r4]
0066c918  04 00 a0 e1                                      mov r0, r4
0066c91c  0f e0 a0 e1                                      mov lr, pc
0066c920  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0066c924  f0 ff ff ea                                      b #0x66c8ec

; FUNCTION 0x0066cd18, declared_size=304, range_size=304, mode=arm
; class-group: glitch::collada::detail::CColladaHardwareMatrixSkinTechnique
; alias: _ZN6glitch7collada6detail35CColladaHardwareMatrixSkinTechnique12prepareCacheEv
; demangled: glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::prepareCache()
; decoder-mode: arm
0066cd18  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0066cd1c  10 30 90 e5                                      ldr r3, [r0, #0x10]
0066cd20  d0 d0 4d e2                                      sub sp, sp, #0xd0
0066cd24  00 50 a0 e1                                      mov r5, r0
0066cd28  00 30 93 e5                                      ldr r3, [r3]
0066cd2c  01 00 13 e3                                      tst r3, #1
0066cd30  01 00 00 1a                                      bne #0x66cd3c
0066cd34  d0 d0 8d e2                                      add sp, sp, #0xd0
0066cd38  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0066cd3c  00 fe ff eb                                      bl #0x66c544
0066cd40  0c 30 95 e5                                      ldr r3, [r5, #0xc]
0066cd44  10 80 95 e5                                      ldr r8, [r5, #0x10]
0066cd48  8c 40 8d e2                                      add r4, sp, #0x8c
0066cd4c  74 70 93 e5                                      ldr r7, [r3, #0x74]
0066cd50  00 60 a0 e3                                      mov r6, #0
0066cd54  06 10 a0 e1                                      mov r1, r6
0066cd58  40 20 a0 e3                                      mov r2, #0x40
0066cd5c  04 00 a0 e1                                      mov r0, r4
0066cd60  04 80 88 e2                                      add r8, r8, #4
0066cd64  bd 85 f2 eb                                      bl #0x30e460
0066cd68  fe 35 a0 e3                                      mov r3, #0x3f800000
0066cd6c  04 20 a0 e1                                      mov r2, r4
0066cd70  01 c0 a0 e3                                      mov ip, #1
0066cd74  08 00 a0 e1                                      mov r0, r8
0066cd78  07 10 a0 e1                                      mov r1, r7
0066cd7c  c8 30 8d e5                                      str r3, [sp, #0xc8]
0066cd80  8c 30 8d e5                                      str r3, [sp, #0x8c]
0066cd84  a0 30 8d e5                                      str r3, [sp, #0xa0]
0066cd88  b4 30 8d e5                                      str r3, [sp, #0xb4]
0066cd8c  cc c0 cd e5                                      strb ip, [sp, #0xcc]
0066cd90  c1 ff ff eb                                      bl #0x66cc9c
0066cd94  10 30 95 e5                                      ldr r3, [r5, #0x10]
0066cd98  10 20 93 e5                                      ldr r2, [r3, #0x10]
0066cd9c  14 90 93 e5                                      ldr sb, [r3, #0x14]
0066cda0  09 90 62 e0                                      rsb sb, r2, sb
0066cda4  49 91 b0 e1                                      asrs sb, sb, #2
0066cda8  22 00 00 0a                                      beq #0x66ce38
0066cdac  06 40 a0 e1                                      mov r4, r6
0066cdb0  48 a0 8d e2                                      add sl, sp, #0x48
0066cdb4  04 80 8d e2                                      add r8, sp, #4
0066cdb8  01 00 00 ea                                      b #0x66cdc4
0066cdbc  10 30 95 e5                                      ldr r3, [r5, #0x10]
0066cdc0  10 20 93 e5                                      ldr r2, [r3, #0x10]
0066cdc4  0c 00 95 e5                                      ldr r0, [r5, #0xc]
0066cdc8  04 70 93 e5                                      ldr r7, [r3, #4]
0066cdcc  04 11 92 e7                                      ldr r1, [r2, r4, lsl #2]
0066cdd0  04 20 90 e5                                      ldr r2, [r0, #4]
0066cdd4  06 70 87 e0                                      add r7, r7, r6
0066cdd8  0a 00 a0 e1                                      mov r0, sl
0066cddc  04 23 82 e0                                      add r2, r2, r4, lsl #6
0066cde0  ee e0 ff eb                                      bl #0x6651a0
0066cde4  07 00 a0 e1                                      mov r0, r7
0066cde8  0a 10 a0 e1                                      mov r1, sl
0066cdec  41 20 a0 e3                                      mov r2, #0x41
0066cdf0  9c 86 f2 eb                                      bl #0x30e868
0066cdf4  10 30 95 e5                                      ldr r3, [r5, #0x10]
0066cdf8  0c 20 95 e5                                      ldr r2, [r5, #0xc]
0066cdfc  08 00 a0 e1                                      mov r0, r8
0066ce00  04 70 93 e5                                      ldr r7, [r3, #4]
0066ce04  10 20 82 e2                                      add r2, r2, #0x10
0066ce08  01 40 84 e2                                      add r4, r4, #1
0066ce0c  06 70 87 e0                                      add r7, r7, r6
0066ce10  07 10 a0 e1                                      mov r1, r7
0066ce14  e1 e0 ff eb                                      bl #0x6651a0
0066ce18  07 00 a0 e1                                      mov r0, r7
0066ce1c  08 10 a0 e1                                      mov r1, r8
0066ce20  41 20 a0 e3                                      mov r2, #0x41
0066ce24  8f 86 f2 eb                                      bl #0x30e868
0066ce28  09 00 54 e1                                      cmp r4, sb
0066ce2c  44 60 86 e2                                      add r6, r6, #0x44
0066ce30  e1 ff ff 1a                                      bne #0x66cdbc
0066ce34  10 30 95 e5                                      ldr r3, [r5, #0x10]
0066ce38  00 20 93 e5                                      ldr r2, [r3]
0066ce3c  01 20 c2 e3                                      bic r2, r2, #1
0066ce40  00 20 83 e5                                      str r2, [r3]
0066ce44  ba ff ff ea                                      b #0x66cd34

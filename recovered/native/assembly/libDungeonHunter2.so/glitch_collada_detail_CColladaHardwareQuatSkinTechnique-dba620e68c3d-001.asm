; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0066cfc0, declared_size=92, range_size=92, mode=arm
; class-group: glitch::collada::detail::CColladaHardwareQuatSkinTechnique
; alias: _ZN6glitch7collada6detail33CColladaHardwareQuatSkinTechniqueC2ERNS0_5SSkinERNS0_10SSkinCacheEb
; demangled: glitch::collada::detail::CColladaHardwareQuatSkinTechnique::CColladaHardwareQuatSkinTechnique(glitch::collada::SSkin&, glitch::collada::SSkinCache&, bool)
; decoder-mode: arm
0066cfc0  f0 00 2d e9                                      push {r4, r5, r6, r7}
0066cfc4  48 70 9f e5                                      ldr r7, [pc, #0x48]
0066cfc8  48 60 9f e5                                      ldr r6, [pc, #0x48]
0066cfcc  00 40 a0 e3                                      mov r4, #0
0066cfd0  07 70 8f e0                                      add r7, pc, r7
0066cfd4  06 60 97 e7                                      ldr r6, [r7, r6]
0066cfd8  00 50 a0 e1                                      mov r5, r0
0066cfdc  0c 10 80 e5                                      str r1, [r0, #0xc]
0066cfe0  08 60 86 e2                                      add r6, r6, #8
0066cfe4  00 60 80 e5                                      str r6, [r0]
0066cfe8  10 20 80 e5                                      str r2, [r0, #0x10]
0066cfec  08 40 80 e5                                      str r4, [r0, #8]
0066cff0  14 40 80 e5                                      str r4, [r0, #0x14]
0066cff4  1c 40 80 e5                                      str r4, [r0, #0x1c]
0066cff8  18 40 e5 e5                                      strb r4, [r5, #0x18]!
0066cffc  24 50 80 e5                                      str r5, [r0, #0x24]
0066d000  04 30 c0 e5                                      strb r3, [r0, #4]
0066d004  28 40 80 e5                                      str r4, [r0, #0x28]
0066d008  20 50 80 e5                                      str r5, [r0, #0x20]
0066d00c  f0 00 bd e8                                      pop {r4, r5, r6, r7}
0066d010  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0066d014  c0 7a 32 00 78 24 00 00                          .byte 0xc0, 0x7a, 0x32, 0x00, 0x78, 0x24, 0x00, 0x00

; FUNCTION 0x0066d01c, declared_size=92, range_size=92, mode=arm
; class-group: glitch::collada::detail::CColladaHardwareQuatSkinTechnique
; alias: _ZN6glitch7collada6detail33CColladaHardwareQuatSkinTechniqueC1ERNS0_5SSkinERNS0_10SSkinCacheEb
; demangled: glitch::collada::detail::CColladaHardwareQuatSkinTechnique::CColladaHardwareQuatSkinTechnique(glitch::collada::SSkin&, glitch::collada::SSkinCache&, bool)
; decoder-mode: arm
0066d01c  f0 00 2d e9                                      push {r4, r5, r6, r7}
0066d020  48 70 9f e5                                      ldr r7, [pc, #0x48]
0066d024  48 60 9f e5                                      ldr r6, [pc, #0x48]
0066d028  00 40 a0 e3                                      mov r4, #0
0066d02c  07 70 8f e0                                      add r7, pc, r7
0066d030  06 60 97 e7                                      ldr r6, [r7, r6]
0066d034  00 50 a0 e1                                      mov r5, r0
0066d038  0c 10 80 e5                                      str r1, [r0, #0xc]
0066d03c  08 60 86 e2                                      add r6, r6, #8
0066d040  00 60 80 e5                                      str r6, [r0]
0066d044  10 20 80 e5                                      str r2, [r0, #0x10]
0066d048  08 40 80 e5                                      str r4, [r0, #8]
0066d04c  14 40 80 e5                                      str r4, [r0, #0x14]
0066d050  1c 40 80 e5                                      str r4, [r0, #0x1c]
0066d054  18 40 e5 e5                                      strb r4, [r5, #0x18]!
0066d058  24 50 80 e5                                      str r5, [r0, #0x24]
0066d05c  04 30 c0 e5                                      strb r3, [r0, #4]
0066d060  28 40 80 e5                                      str r4, [r0, #0x28]
0066d064  20 50 80 e5                                      str r5, [r0, #0x20]
0066d068  f0 00 bd e8                                      pop {r4, r5, r6, r7}
0066d06c  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0066d070  64 7a 32 00 78 24 00 00                          .byte 0x64, 0x7a, 0x32, 0x00, 0x78, 0x24, 0x00, 0x00

; FUNCTION 0x0066d078, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::detail::CColladaHardwareQuatSkinTechnique
; alias: _ZNK6glitch7collada6detail33CColladaHardwareQuatSkinTechnique16needOutputBufferEv
; demangled: glitch::collada::detail::CColladaHardwareQuatSkinTechnique::needOutputBuffer() const
; decoder-mode: arm
0066d078  00 00 a0 e3                                      mov r0, #0
0066d07c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0066d080, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::detail::CColladaHardwareQuatSkinTechnique
; alias: _ZN6glitch7collada6detail33CColladaHardwareQuatSkinTechnique6attachEPNS_5scene10ISceneNodeE
; demangled: glitch::collada::detail::CColladaHardwareQuatSkinTechnique::attach(glitch::scene::ISceneNode*)
; decoder-mode: arm
0066d080  14 10 80 e5                                      str r1, [r0, #0x14]
0066d084  1e ff 2f e1                                      bx lr

; FUNCTION 0x0066d088, declared_size=48, range_size=48, mode=arm
; class-group: glitch::collada::detail::CColladaHardwareQuatSkinTechnique
; alias: _ZN6glitch7collada6detail33CColladaHardwareQuatSkinTechnique27onPrepareBufferForRenderingENS0_21E_PREPARE_BUFFER_STEPEPNS_5video12IVideoDriverERNS0_11SSkinBufferEPNS_5scene11CMeshBufferE
; demangled: glitch::collada::detail::CColladaHardwareQuatSkinTechnique::onPrepareBufferForRendering(glitch::collada::E_PREPARE_BUFFER_STEP, glitch::video::IVideoDriver*, glitch::collada::SSkinBuffer&, glitch::scene::CMeshBuffer*)
; decoder-mode: arm
0066d088  01 00 51 e3                                      cmp r1, #1
0066d08c  10 40 2d e9                                      push {r4, lr}
0066d090  01 00 00 0a                                      beq #0x66d09c
0066d094  10 00 a0 e3                                      mov r0, #0x10
0066d098  10 80 bd e8                                      pop {r4, pc}
0066d09c  00 c0 90 e5                                      ldr ip, [r0]
0066d0a0  03 10 a0 e1                                      mov r1, r3
0066d0a4  08 20 9d e5                                      ldr r2, [sp, #8]
0066d0a8  0f e0 a0 e1                                      mov lr, pc
0066d0ac  18 f0 9c e5                                      ldr pc, [ip, #0x18]
0066d0b0  10 00 a0 e3                                      mov r0, #0x10
0066d0b4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0066d730, declared_size=204, range_size=204, mode=arm
; class-group: glitch::collada::detail::CColladaHardwareQuatSkinTechnique
; alias: _ZN6glitch7collada6detail33CColladaHardwareQuatSkinTechnique23checkAvailabilityStaticERKNS_5video10STechniqueE
; demangled: glitch::collada::detail::CColladaHardwareQuatSkinTechnique::checkAvailabilityStatic(glitch::video::STechnique const&)
; decoder-mode: arm
0066d730  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0066d734  04 40 d0 e5                                      ldrb r4, [r0, #4]
0066d738  00 00 54 e3                                      cmp r4, #0
0066d73c  08 10 90 05                                      ldreq r1, [r0, #8]
0066d740  0d 00 00 0a                                      beq #0x66d77c
0066d744  01 40 44 e2                                      sub r4, r4, #1
0066d748  08 10 90 e5                                      ldr r1, [r0, #8]
0066d74c  74 40 ef e6                                      uxtb r4, r4
0066d750  34 c0 a0 e3                                      mov ip, #0x34
0066d754  00 30 a0 e3                                      mov r3, #0
0066d758  94 cc 2c e0                                      mla ip, r4, ip, ip
0066d75c  03 40 a0 e1                                      mov r4, r3
0066d760  03 20 81 e0                                      add r2, r1, r3
0066d764  20 20 92 e5                                      ldr r2, [r2, #0x20]
0066d768  34 30 83 e2                                      add r3, r3, #0x34
0066d76c  0c 00 53 e1                                      cmp r3, ip
0066d770  38 20 92 e5                                      ldr r2, [r2, #0x38]
0066d774  02 40 84 e1                                      orr r4, r4, r2
0066d778  f8 ff ff 1a                                      bne #0x66d760
0066d77c  20 60 91 e5                                      ldr r6, [r1, #0x20]
0066d780  00 20 a0 e3                                      mov r2, #0
0066d784  0e 10 a0 e3                                      mov r1, #0xe
0066d788  06 00 a0 e1                                      mov r0, r6
0066d78c  02 30 a0 e1                                      mov r3, r2
0066d790  53 dc fd eb                                      bl #0x5e48e4
0066d794  ff 7f 0f e3                                      movw r7, #0xffff
0066d798  07 00 50 e1                                      cmp r0, r7
0066d79c  00 50 a0 e1                                      mov r5, r0
0066d7a0  13 00 00 0a                                      beq #0x66d7f4
0066d7a4  01 30 80 e2                                      add r3, r0, #1
0066d7a8  73 30 ff e6                                      uxth r3, r3
0066d7ac  06 00 a0 e1                                      mov r0, r6
0066d7b0  0e 10 a0 e3                                      mov r1, #0xe
0066d7b4  00 20 a0 e3                                      mov r2, #0
0066d7b8  49 dc fd eb                                      bl #0x5e48e4
0066d7bc  07 00 50 e1                                      cmp r0, r7
0066d7c0  0b 00 00 0a                                      beq #0x66d7f4
0066d7c4  28 30 96 e5                                      ldr r3, [r6, #0x28]
0066d7c8  00 02 83 e0                                      add r0, r3, r0, lsl #4
0066d7cc  05 32 83 e0                                      add r3, r3, r5, lsl #4
0066d7d0  07 20 d3 e5                                      ldrb r2, [r3, #7]
0066d7d4  07 30 d0 e5                                      ldrb r3, [r0, #7]
0066d7d8  03 00 52 e1                                      cmp r2, r3
0066d7dc  04 00 00 0a                                      beq #0x66d7f4
0066d7e0  03 02 04 e2                                      and r0, r4, #0x30000000
0066d7e4  03 02 50 e3                                      cmp r0, #0x30000000
0066d7e8  00 00 a0 13                                      movne r0, #0
0066d7ec  01 00 a0 03                                      moveq r0, #1
0066d7f0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0066d7f4  00 00 a0 e3                                      mov r0, #0
0066d7f8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0066d8c8, declared_size=120, range_size=120, mode=arm
; class-group: glitch::collada::detail::CColladaHardwareQuatSkinTechnique
; alias: _ZNK6glitch7collada6detail33CColladaHardwareQuatSkinTechnique17checkAvailabilityERKNS_5video10STechniqueE
; demangled: glitch::collada::detail::CColladaHardwareQuatSkinTechnique::checkAvailability(glitch::video::STechnique const&) const
; decoder-mode: arm
0066d8c8  70 40 2d e9                                      push {r4, r5, r6, lr}
0066d8cc  00 40 a0 e1                                      mov r4, r0
0066d8d0  01 00 a0 e1                                      mov r0, r1
0066d8d4  95 ff ff eb                                      bl #0x66d730
0066d8d8  00 50 50 e2                                      subs r5, r0, #0
0066d8dc  10 00 00 0a                                      beq #0x66d924
0066d8e0  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0066d8e4  94 40 93 e5                                      ldr r4, [r3, #0x94]
0066d8e8  00 00 54 e3                                      cmp r4, #0
0066d8ec  0c 00 00 0a                                      beq #0x66d924
0066d8f0  11 30 d4 e5                                      ldrb r3, [r4, #0x11]
0066d8f4  00 00 53 e3                                      cmp r3, #0
0066d8f8  09 00 00 0a                                      beq #0x66d924
0066d8fc  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
0066d900  08 00 13 e3                                      tst r3, #8
0066d904  08 00 00 1a                                      bne #0x66d92c
0066d908  08 30 94 e5                                      ldr r3, [r4, #8]
0066d90c  00 20 a0 e3                                      mov r2, #0
0066d910  11 20 c4 e5                                      strb r2, [r4, #0x11]
0066d914  02 00 53 e1                                      cmp r3, r2
0066d918  12 30 d4 15                                      ldrbne r3, [r4, #0x12]
0066d91c  02 30 83 13                                      orrne r3, r3, #2
0066d920  12 30 c4 15                                      strbne r3, [r4, #0x12]
0066d924  05 00 a0 e1                                      mov r0, r5
0066d928  70 80 bd e8                                      pop {r4, r5, r6, pc}
0066d92c  00 30 94 e5                                      ldr r3, [r4]
0066d930  04 00 a0 e1                                      mov r0, r4
0066d934  0f e0 a0 e1                                      mov lr, pc
0066d938  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0066d93c  f1 ff ff ea                                      b #0x66d908

; FUNCTION 0x0066dc40, declared_size=652, range_size=652, mode=arm
; class-group: glitch::collada::detail::CColladaHardwareQuatSkinTechnique
; alias: _ZN6glitch7collada6detail33CColladaHardwareQuatSkinTechnique4skinERNS0_11SSkinBufferEPNS_5scene11CMeshBufferE
; demangled: glitch::collada::detail::CColladaHardwareQuatSkinTechnique::skin(glitch::collada::SSkinBuffer&, glitch::scene::CMeshBuffer*)
; decoder-mode: arm
0066dc40  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0066dc44  00 40 a0 e1                                      mov r4, r0
0066dc48  01 70 a0 e1                                      mov r7, r1
0066dc4c  30 d0 4d e2                                      sub sp, sp, #0x30
0066dc50  18 30 94 e4                                      ldr r3, [r4], #0x18
0066dc54  00 60 a0 e1                                      mov r6, r0
0066dc58  0f e0 a0 e1                                      mov lr, pc
0066dc5c  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0066dc60  04 00 97 e5                                      ldr r0, [r7, #4]
0066dc64  78 96 f3 eb                                      bl #0x35364c
0066dc68  1c 20 96 e5                                      ldr r2, [r6, #0x1c]
0066dc6c  00 00 52 e3                                      cmp r2, #0
0066dc70  53 00 00 0a                                      beq #0x66ddc4
0066dc74  04 10 a0 e1                                      mov r1, r4
0066dc78  00 00 00 ea                                      b #0x66dc80
0066dc7c  03 20 a0 e1                                      mov r2, r3
0066dc80  10 30 92 e5                                      ldr r3, [r2, #0x10]
0066dc84  03 00 50 e1                                      cmp r0, r3
0066dc88  0c 30 92 85                                      ldrhi r3, [r2, #0xc]
0066dc8c  08 30 92 95                                      ldrls r3, [r2, #8]
0066dc90  01 20 a0 81                                      movhi r2, r1
0066dc94  02 10 a0 e1                                      mov r1, r2
0066dc98  00 00 53 e3                                      cmp r3, #0
0066dc9c  f6 ff ff 1a                                      bne #0x66dc7c
0066dca0  02 00 54 e1                                      cmp r4, r2
0066dca4  48 00 00 0a                                      beq #0x66ddcc
0066dca8  10 30 92 e5                                      ldr r3, [r2, #0x10]
0066dcac  03 00 50 e1                                      cmp r0, r3
0066dcb0  43 00 00 3a                                      blo #0x66ddc4
0066dcb4  02 00 54 e1                                      cmp r4, r2
0066dcb8  43 00 00 0a                                      beq #0x66ddcc
0066dcbc  10 30 96 e5                                      ldr r3, [r6, #0x10]
0066dcc0  b8 91 d2 e1                                      ldrh sb, [r2, #0x18]
0066dcc4  b4 81 d2 e1                                      ldrh r8, [r2, #0x14]
0066dcc8  20 10 93 e5                                      ldr r1, [r3, #0x20]
0066dccc  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
0066dcd0  b6 a1 d2 e1                                      ldrh sl, [r2, #0x16]
0066dcd4  01 20 63 e0                                      rsb r2, r3, r1
0066dcd8  a2 22 b0 e1                                      lsrs r2, r2, #5
0066dcdc  15 00 00 0a                                      beq #0x66dd38
0066dce0  00 40 a0 e3                                      mov r4, #0
0066dce4  84 52 a0 e1                                      lsl r5, r4, #5
0066dce8  05 30 83 e0                                      add r3, r3, r5
0066dcec  04 20 a0 e1                                      mov r2, r4
0066dcf0  08 10 a0 e1                                      mov r1, r8
0066dcf4  04 00 97 e5                                      ldr r0, [r7, #4]
0066dcf8  75 62 fd eb                                      bl #0x5c66d4
0066dcfc  10 30 96 e5                                      ldr r3, [r6, #0x10]
0066dd00  04 20 a0 e1                                      mov r2, r4
0066dd04  04 00 97 e5                                      ldr r0, [r7, #4]
0066dd08  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
0066dd0c  0a 10 a0 e1                                      mov r1, sl
0066dd10  01 40 84 e2                                      add r4, r4, #1
0066dd14  05 50 83 e0                                      add r5, r3, r5
0066dd18  10 30 85 e2                                      add r3, r5, #0x10
0066dd1c  6c 62 fd eb                                      bl #0x5c66d4
0066dd20  10 30 96 e5                                      ldr r3, [r6, #0x10]
0066dd24  20 20 93 e5                                      ldr r2, [r3, #0x20]
0066dd28  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
0066dd2c  02 20 63 e0                                      rsb r2, r3, r2
0066dd30  c2 02 54 e1                                      cmp r4, r2, asr #5
0066dd34  ea ff ff 3a                                      blo #0x66dce4
0066dd38  ff 3f 0f e3                                      movw r3, #0xffff
0066dd3c  03 00 59 e1                                      cmp sb, r3
0066dd40  1d 00 00 0a                                      beq #0x66ddbc
0066dd44  0c 20 96 e5                                      ldr r2, [r6, #0xc]
0066dd48  00 30 a0 e3                                      mov r3, #0
0066dd4c  00 30 8d e5                                      str r3, [sp]
0066dd50  04 30 8d e5                                      str r3, [sp, #4]
0066dd54  08 30 8d e5                                      str r3, [sp, #8]
0066dd58  0c 30 8d e5                                      str r3, [sp, #0xc]
0066dd5c  98 10 d2 e5                                      ldrb r1, [r2, #0x98]
0066dd60  00 00 51 e3                                      cmp r1, #0
0066dd64  fe 35 a0 13                                      movne r3, #0x3f800000
0066dd68  00 30 8d e5                                      str r3, [sp]
0066dd6c  98 30 d2 e5                                      ldrb r3, [r2, #0x98]
0066dd70  09 10 a0 e1                                      mov r1, sb
0066dd74  01 00 53 e3                                      cmp r3, #1
0066dd78  00 30 a0 93                                      movls r3, #0
0066dd7c  fe 35 a0 83                                      movhi r3, #0x3f800000
0066dd80  04 30 8d e5                                      str r3, [sp, #4]
0066dd84  98 30 d2 e5                                      ldrb r3, [r2, #0x98]
0066dd88  02 00 53 e3                                      cmp r3, #2
0066dd8c  00 30 a0 93                                      movls r3, #0
0066dd90  fe 35 a0 83                                      movhi r3, #0x3f800000
0066dd94  08 30 8d e5                                      str r3, [sp, #8]
0066dd98  98 30 d2 e5                                      ldrb r3, [r2, #0x98]
0066dd9c  04 00 97 e5                                      ldr r0, [r7, #4]
0066dda0  00 20 a0 e3                                      mov r2, #0
0066dda4  03 00 53 e3                                      cmp r3, #3
0066dda8  00 c0 a0 93                                      movls ip, #0
0066ddac  fe c5 a0 83                                      movhi ip, #0x3f800000
0066ddb0  0d 30 a0 e1                                      mov r3, sp
0066ddb4  0c c0 8d e5                                      str ip, [sp, #0xc]
0066ddb8  45 62 fd eb                                      bl #0x5c66d4
0066ddbc  30 d0 8d e2                                      add sp, sp, #0x30
0066ddc0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0066ddc4  04 20 a0 e1                                      mov r2, r4
0066ddc8  b9 ff ff ea                                      b #0x66dcb4
0066ddcc  04 30 97 e5                                      ldr r3, [r7, #4]
0066ddd0  00 10 e0 e3                                      mvn r1, #0
0066ddd4  b2 10 cd e1                                      strh r1, [sp, #2]
0066ddd8  b0 10 cd e1                                      strh r1, [sp]
0066dddc  04 00 93 e5                                      ldr r0, [r3, #4]
0066dde0  0e 10 a0 e3                                      mov r1, #0xe
0066dde4  00 20 a0 e3                                      mov r2, #0
0066dde8  46 84 fd eb                                      bl #0x5cef08
0066ddec  04 20 97 e5                                      ldr r2, [r7, #4]
0066ddf0  00 30 a0 e1                                      mov r3, r0
0066ddf4  30 10 8d e2                                      add r1, sp, #0x30
0066ddf8  04 00 92 e5                                      ldr r0, [r2, #4]
0066ddfc  be 20 d0 e1                                      ldrh r2, [r0, #0xe]
0066de00  03 00 52 e1                                      cmp r2, r3
0066de04  20 20 90 85                                      ldrhi r2, [r0, #0x20]
0066de08  00 20 a0 93                                      movls r2, #0
0066de0c  03 22 82 80                                      addhi r2, r2, r3, lsl #4
0066de10  07 c0 d2 e5                                      ldrb ip, [r2, #7]
0066de14  01 20 83 e2                                      add r2, r3, #1
0066de18  72 20 ff e6                                      uxth r2, r2
0066de1c  8c c0 81 e0                                      add ip, r1, ip, lsl #1
0066de20  b0 33 4c e1                                      strh r3, [ip, #-0x30]
0066de24  0e 10 a0 e3                                      mov r1, #0xe
0066de28  36 84 fd eb                                      bl #0x5cef08
0066de2c  04 20 97 e5                                      ldr r2, [r7, #4]
0066de30  00 30 a0 e1                                      mov r3, r0
0066de34  0f 10 a0 e3                                      mov r1, #0xf
0066de38  04 00 92 e5                                      ldr r0, [r2, #4]
0066de3c  be 20 d0 e1                                      ldrh r2, [r0, #0xe]
0066de40  03 00 52 e1                                      cmp r2, r3
0066de44  20 20 90 85                                      ldrhi r2, [r0, #0x20]
0066de48  00 20 a0 93                                      movls r2, #0
0066de4c  03 22 82 80                                      addhi r2, r2, r3, lsl #4
0066de50  07 c0 d2 e5                                      ldrb ip, [r2, #7]
0066de54  30 20 8d e2                                      add r2, sp, #0x30
0066de58  8c c0 82 e0                                      add ip, r2, ip, lsl #1
0066de5c  b0 33 4c e1                                      strh r3, [ip, #-0x30]
0066de60  00 20 a0 e3                                      mov r2, #0
0066de64  27 84 fd eb                                      bl #0x5cef08
0066de68  00 50 a0 e1                                      mov r5, r0
0066de6c  04 00 97 e5                                      ldr r0, [r7, #4]
0066de70  f5 95 f3 eb                                      bl #0x35364c
0066de74  24 20 8d e2                                      add r2, sp, #0x24
0066de78  00 30 e0 e3                                      mvn r3, #0
0066de7c  06 30 cd e5                                      strb r3, [sp, #6]
0066de80  b4 50 cd e1                                      strh r5, [sp, #4]
0066de84  00 30 9d e5                                      ldr r3, [sp]
0066de88  b2 50 c2 e0                                      strh r5, [r2], #2
0066de8c  06 e0 dd e5                                      ldrb lr, [sp, #6]
0066de90  04 10 a0 e1                                      mov r1, r4
0066de94  10 00 8d e5                                      str r0, [sp, #0x10]
0066de98  00 e0 c2 e5                                      strb lr, [r2]
0066de9c  26 40 dd e5                                      ldrb r4, [sp, #0x26]
0066dea0  23 e8 a0 e1                                      lsr lr, r3, #0x10
0066dea4  10 20 8d e2                                      add r2, sp, #0x10
0066dea8  28 00 8d e2                                      add r0, sp, #0x28
0066deac  1a 40 cd e5                                      strb r4, [sp, #0x1a]
0066deb0  b8 51 cd e1                                      strh r5, [sp, #0x18]
0066deb4  b6 e1 cd e1                                      strh lr, [sp, #0x16]
0066deb8  b4 31 cd e1                                      strh r3, [sp, #0x14]
0066debc  20 30 8d e5                                      str r3, [sp, #0x20]
0066dec0  fe fe ff eb                                      bl #0x66dac0
0066dec4  28 20 9d e5                                      ldr r2, [sp, #0x28]
0066dec8  7b ff ff ea                                      b #0x66dcbc

; FUNCTION 0x0066df04, declared_size=104, range_size=104, mode=arm
; class-group: glitch::collada::detail::CColladaHardwareQuatSkinTechnique
; alias: _ZN6glitch7collada6detail33CColladaHardwareQuatSkinTechniqueD1Ev
; demangled: glitch::collada::detail::CColladaHardwareQuatSkinTechnique::~CColladaHardwareQuatSkinTechnique()
; decoder-mode: arm
0066df04  70 40 2d e9                                      push {r4, r5, r6, lr}
0066df08  54 30 9f e5                                      ldr r3, [pc, #0x54]
0066df0c  54 20 9f e5                                      ldr r2, [pc, #0x54]
0066df10  28 10 90 e5                                      ldr r1, [r0, #0x28]
0066df14  03 30 8f e0                                      add r3, pc, r3
0066df18  02 20 93 e7                                      ldr r2, [r3, r2]
0066df1c  00 00 51 e3                                      cmp r1, #0
0066df20  00 40 a0 e1                                      mov r4, r0
0066df24  08 20 82 e2                                      add r2, r2, #8
0066df28  00 20 80 e5                                      str r2, [r0]
0066df2c  08 00 00 0a                                      beq #0x66df54
0066df30  18 50 80 e2                                      add r5, r0, #0x18
0066df34  05 00 a0 e1                                      mov r0, r5
0066df38  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
0066df3c  e2 ff ff eb                                      bl #0x66decc
0066df40  00 30 a0 e3                                      mov r3, #0
0066df44  24 50 84 e5                                      str r5, [r4, #0x24]
0066df48  28 30 84 e5                                      str r3, [r4, #0x28]
0066df4c  20 50 84 e5                                      str r5, [r4, #0x20]
0066df50  1c 30 84 e5                                      str r3, [r4, #0x1c]
0066df54  04 00 a0 e1                                      mov r0, r4
0066df58  be 0b 00 eb                                      bl #0x670e58
0066df5c  04 00 a0 e1                                      mov r0, r4
0066df60  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0066df64  7c 6b 32 00 78 24 00 00                          .byte 0x7c, 0x6b, 0x32, 0x00, 0x78, 0x24, 0x00, 0x00

; FUNCTION 0x0066df6c, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::detail::CColladaHardwareQuatSkinTechnique
; alias: _ZN6glitch7collada6detail33CColladaHardwareQuatSkinTechniqueD0Ev
; demangled: glitch::collada::detail::CColladaHardwareQuatSkinTechnique::~CColladaHardwareQuatSkinTechnique()
; decoder-mode: arm
0066df6c  10 40 2d e9                                      push {r4, lr}
0066df70  00 40 a0 e1                                      mov r4, r0
0066df74  e2 ff ff eb                                      bl #0x66df04
0066df78  04 00 a0 e1                                      mov r0, r4
0066df7c  cb 80 f2 eb                                      bl #0x30e2b0
0066df80  04 00 a0 e1                                      mov r0, r4
0066df84  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0066df88, declared_size=176, range_size=176, mode=arm
; class-group: glitch::collada::detail::CColladaHardwareQuatSkinTechnique
; alias: _ZN6glitch7collada6detail33CColladaHardwareQuatSkinTechnique15preparePtrCacheEv
; demangled: glitch::collada::detail::CColladaHardwareQuatSkinTechnique::preparePtrCache()
; decoder-mode: arm
0066df88  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0066df8c  00 40 a0 e1                                      mov r4, r0
0066df90  10 00 90 e5                                      ldr r0, [r0, #0x10]
0066df94  08 d0 4d e2                                      sub sp, sp, #8
0066df98  00 30 90 e5                                      ldr r3, [r0]
0066df9c  01 08 13 e3                                      tst r3, #0x10000
0066dfa0  01 00 00 1a                                      bne #0x66dfac
0066dfa4  08 d0 8d e2                                      add sp, sp, #8
0066dfa8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0066dfac  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0066dfb0  08 20 8d e2                                      add r2, sp, #8
0066dfb4  00 50 a0 e3                                      mov r5, #0
0066dfb8  74 10 93 e5                                      ldr r1, [r3, #0x74]
0066dfbc  10 00 80 e2                                      add r0, r0, #0x10
0066dfc0  04 50 22 e5                                      str r5, [r2, #-4]!
0066dfc4  4d f9 ff eb                                      bl #0x66c500
0066dfc8  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0066dfcc  74 70 93 e5                                      ldr r7, [r3, #0x74]
0066dfd0  05 00 57 e1                                      cmp r7, r5
0066dfd4  01 00 00 ca                                      bgt #0x66dfe0
0066dfd8  11 00 00 ea                                      b #0x66e024
0066dfdc  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0066dfe0  78 30 93 e5                                      ldr r3, [r3, #0x78]
0066dfe4  14 00 94 e5                                      ldr r0, [r4, #0x14]
0066dfe8  05 61 a0 e1                                      lsl r6, r5, #2
0066dfec  05 11 93 e7                                      ldr r1, [r3, r5, lsl #2]
0066dff0  05 a9 fc eb                                      bl #0x59840c
0066dff4  10 30 94 e5                                      ldr r3, [r4, #0x10]
0066dff8  00 20 50 e2                                      subs r2, r0, #0
0066dffc  02 00 a0 01                                      moveq r0, r2
0066e000  10 80 93 e5                                      ldr r8, [r3, #0x10]
0066e004  02 00 00 0a                                      beq #0x66e014
0066e008  00 30 92 e5                                      ldr r3, [r2]
0066e00c  0f e0 a0 e1                                      mov lr, pc
0066e010  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0066e014  01 50 85 e2                                      add r5, r5, #1
0066e018  07 00 55 e1                                      cmp r5, r7
0066e01c  06 00 88 e7                                      str r0, [r8, r6]
0066e020  ed ff ff 1a                                      bne #0x66dfdc
0066e024  10 30 94 e5                                      ldr r3, [r4, #0x10]
0066e028  00 20 93 e5                                      ldr r2, [r3]
0066e02c  01 28 c2 e3                                      bic r2, r2, #0x10000
0066e030  00 20 83 e5                                      str r2, [r3]
0066e034  da ff ff ea                                      b #0x66dfa4

; FUNCTION 0x0066e204, declared_size=384, range_size=384, mode=arm
; class-group: glitch::collada::detail::CColladaHardwareQuatSkinTechnique
; alias: _ZN6glitch7collada6detail33CColladaHardwareQuatSkinTechnique12prepareCacheEv
; demangled: glitch::collada::detail::CColladaHardwareQuatSkinTechnique::prepareCache()
; decoder-mode: arm
0066e204  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0066e208  10 30 90 e5                                      ldr r3, [r0, #0x10]
0066e20c  a8 d0 4d e2                                      sub sp, sp, #0xa8
0066e210  00 80 a0 e1                                      mov r8, r0
0066e214  00 30 93 e5                                      ldr r3, [r3]
0066e218  02 00 13 e3                                      tst r3, #2
0066e21c  01 00 00 1a                                      bne #0x66e228
0066e220  a8 d0 8d e2                                      add sp, sp, #0xa8
0066e224  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0066e228  56 ff ff eb                                      bl #0x66df88
0066e22c  0c 20 98 e5                                      ldr r2, [r8, #0xc]
0066e230  10 00 98 e5                                      ldr r0, [r8, #0x10]
0066e234  00 30 a0 e3                                      mov r3, #0
0066e238  74 10 92 e5                                      ldr r1, [r2, #0x74]
0066e23c  fe c5 a0 e3                                      mov ip, #0x3f800000
0066e240  88 20 8d e2                                      add r2, sp, #0x88
0066e244  1c 00 80 e2                                      add r0, r0, #0x1c
0066e248  a4 30 8d e5                                      str r3, [sp, #0xa4]
0066e24c  8c 30 8d e5                                      str r3, [sp, #0x8c]
0066e250  90 30 8d e5                                      str r3, [sp, #0x90]
0066e254  94 30 8d e5                                      str r3, [sp, #0x94]
0066e258  98 30 8d e5                                      str r3, [sp, #0x98]
0066e25c  9c 30 8d e5                                      str r3, [sp, #0x9c]
0066e260  a0 30 8d e5                                      str r3, [sp, #0xa0]
0066e264  88 c0 8d e5                                      str ip, [sp, #0x88]
0066e268  d4 ff ff eb                                      bl #0x66e1c0
0066e26c  10 30 98 e5                                      ldr r3, [r8, #0x10]
0066e270  10 10 93 e5                                      ldr r1, [r3, #0x10]
0066e274  14 90 93 e5                                      ldr sb, [r3, #0x14]
0066e278  03 20 a0 e1                                      mov r2, r3
0066e27c  09 90 61 e0                                      rsb sb, r1, sb
0066e280  49 91 b0 e1                                      asrs sb, sb, #2
0066e284  35 00 00 0a                                      beq #0x66e360
0066e288  00 70 a0 e3                                      mov r7, #0
0066e28c  44 60 8d e2                                      add r6, sp, #0x44
0066e290  0d 50 a0 e1                                      mov r5, sp
0066e294  07 40 a0 e1                                      mov r4, r7
0066e298  0c 00 98 e5                                      ldr r0, [r8, #0xc]
0066e29c  07 11 91 e7                                      ldr r1, [r1, r7, lsl #2]
0066e2a0  1c a0 93 e5                                      ldr sl, [r3, #0x1c]
0066e2a4  04 20 90 e5                                      ldr r2, [r0, #4]
0066e2a8  84 40 cd e5                                      strb r4, [sp, #0x84]
0066e2ac  40 30 d1 e5                                      ldrb r3, [r1, #0x40]
0066e2b0  87 a2 8a e0                                      add sl, sl, r7, lsl #5
0066e2b4  07 23 82 e0                                      add r2, r2, r7, lsl #6
0066e2b8  00 00 53 e3                                      cmp r3, #0
0066e2bc  2b 00 00 0a                                      beq #0x66e370
0066e2c0  00 30 a0 e3                                      mov r3, #0
0066e2c4  84 40 cd e5                                      strb r4, [sp, #0x84]
0066e2c8  03 10 92 e7                                      ldr r1, [r2, r3]
0066e2cc  03 10 86 e7                                      str r1, [r6, r3]
0066e2d0  04 30 83 e2                                      add r3, r3, #4
0066e2d4  40 00 53 e3                                      cmp r3, #0x40
0066e2d8  f9 ff ff 1a                                      bne #0x66e2c4
0066e2dc  00 30 a0 e3                                      mov r3, #0
0066e2e0  00 00 53 e3                                      cmp r3, #0
0066e2e4  40 40 cd e5                                      strb r4, [sp, #0x40]
0066e2e8  11 00 00 0a                                      beq #0x66e334
0066e2ec  00 20 a0 e1                                      mov r2, r0
0066e2f0  00 30 a0 e3                                      mov r3, #0
0066e2f4  40 40 cd e5                                      strb r4, [sp, #0x40]
0066e2f8  10 10 92 e5                                      ldr r1, [r2, #0x10]
0066e2fc  04 20 82 e2                                      add r2, r2, #4
0066e300  03 10 85 e7                                      str r1, [r5, r3]
0066e304  04 30 83 e2                                      add r3, r3, #4
0066e308  40 00 53 e3                                      cmp r3, #0x40
0066e30c  f8 ff ff 1a                                      bne #0x66e2f4
0066e310  0a 00 a0 e1                                      mov r0, sl
0066e314  01 70 87 e2                                      add r7, r7, #1
0066e318  0d 10 a0 e1                                      mov r1, sp
0066e31c  4e fd ff eb                                      bl #0x66d85c
0066e320  09 00 57 e1                                      cmp r7, sb
0066e324  0c 00 00 0a                                      beq #0x66e35c
0066e328  10 30 98 e5                                      ldr r3, [r8, #0x10]
0066e32c  10 10 93 e5                                      ldr r1, [r3, #0x10]
0066e330  d8 ff ff ea                                      b #0x66e298
0066e334  10 20 80 e2                                      add r2, r0, #0x10
0066e338  06 10 a0 e1                                      mov r1, r6
0066e33c  0d 00 a0 e1                                      mov r0, sp
0066e340  5c fb ff eb                                      bl #0x66d0b8
0066e344  01 70 87 e2                                      add r7, r7, #1
0066e348  0a 00 a0 e1                                      mov r0, sl
0066e34c  0d 10 a0 e1                                      mov r1, sp
0066e350  41 fd ff eb                                      bl #0x66d85c
0066e354  09 00 57 e1                                      cmp r7, sb
0066e358  f2 ff ff 1a                                      bne #0x66e328
0066e35c  10 20 98 e5                                      ldr r2, [r8, #0x10]
0066e360  00 30 92 e5                                      ldr r3, [r2]
0066e364  02 30 c3 e3                                      bic r3, r3, #2
0066e368  00 30 82 e5                                      str r3, [r2]
0066e36c  ab ff ff ea                                      b #0x66e220
0066e370  06 00 a0 e1                                      mov r0, r6
0066e374  4f fb ff eb                                      bl #0x66d0b8
0066e378  84 30 dd e5                                      ldrb r3, [sp, #0x84]
0066e37c  0c 00 98 e5                                      ldr r0, [r8, #0xc]
0066e380  d6 ff ff ea                                      b #0x66e2e0

; FUNCTION 0x0066e384, declared_size=688, range_size=688, mode=arm
; class-group: glitch::collada::detail::CColladaHardwareQuatSkinTechnique
; alias: _ZN6glitch7collada6detail33CColladaHardwareQuatSkinTechnique18computeBoundingBoxEv
; demangled: glitch::collada::detail::CColladaHardwareQuatSkinTechnique::computeBoundingBox()
; decoder-mode: arm
0066e384  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0066e388  00 40 a0 e1                                      mov r4, r0
0066e38c  01 a0 a0 e1                                      mov sl, r1
0066e390  01 00 a0 e1                                      mov r0, r1
0066e394  24 d0 4d e2                                      sub sp, sp, #0x24
0066e398  fa fe ff eb                                      bl #0x66df88
0066e39c  10 20 9a e5                                      ldr r2, [sl, #0x10]
0066e3a0  02 31 e0 e3                                      mvn r3, #0x80000000
0066e3a4  02 35 43 e2                                      sub r3, r3, #0x800000
0066e3a8  02 15 e0 e3                                      mvn r1, #0x800000
0066e3ac  10 00 92 e5                                      ldr r0, [r2, #0x10]
0066e3b0  14 90 92 e5                                      ldr sb, [r2, #0x14]
0066e3b4  08 30 84 e5                                      str r3, [r4, #8]
0066e3b8  0c 10 84 e5                                      str r1, [r4, #0xc]
0066e3bc  10 10 84 e5                                      str r1, [r4, #0x10]
0066e3c0  14 10 84 e5                                      str r1, [r4, #0x14]
0066e3c4  00 30 84 e5                                      str r3, [r4]
0066e3c8  04 30 84 e5                                      str r3, [r4, #4]
0066e3cc  0c 30 9a e5                                      ldr r3, [sl, #0xc]
0066e3d0  09 90 60 e0                                      rsb sb, r0, sb
0066e3d4  59 91 e7 e7                                      ubfx sb, sb, #2, #8
0066e3d8  8c 60 93 e5                                      ldr r6, [r3, #0x8c]
0066e3dc  00 00 56 e3                                      cmp r6, #0
0066e3e0  30 00 00 1a                                      bne #0x66e4a8
0066e3e4  00 00 59 e3                                      cmp sb, #0
0066e3e8  07 00 00 1a                                      bne #0x66e40c
0066e3ec  10 30 9a e5                                      ldr r3, [sl, #0x10]
0066e3f0  04 00 a0 e1                                      mov r0, r4
0066e3f4  00 20 93 e5                                      ldr r2, [r3]
0066e3f8  08 20 c2 e3                                      bic r2, r2, #8
0066e3fc  00 20 83 e5                                      str r2, [r3]
0066e400  24 d0 8d e2                                      add sp, sp, #0x24
0066e404  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0066e408  0c 10 94 e5                                      ldr r1, [r4, #0xc]
0066e40c  10 30 9a e5                                      ldr r3, [sl, #0x10]
0066e410  10 30 93 e5                                      ldr r3, [r3, #0x10]
0066e414  06 31 93 e7                                      ldr r3, [r3, r6, lsl #2]
0066e418  01 60 86 e2                                      add r6, r6, #1
0066e41c  30 80 93 e5                                      ldr r8, [r3, #0x30]
0066e420  38 50 93 e5                                      ldr r5, [r3, #0x38]
0066e424  34 70 93 e5                                      ldr r7, [r3, #0x34]
0066e428  08 00 a0 e1                                      mov r0, r8
0066e42c  b1 7f f2 eb                                      bl #0x30e2f8
0066e430  00 00 50 e3                                      cmp r0, #0
0066e434  10 10 94 e5                                      ldr r1, [r4, #0x10]
0066e438  0c 80 84 15                                      strne r8, [r4, #0xc]
0066e43c  07 00 a0 e1                                      mov r0, r7
0066e440  ac 7f f2 eb                                      bl #0x30e2f8
0066e444  00 00 50 e3                                      cmp r0, #0
0066e448  14 10 94 e5                                      ldr r1, [r4, #0x14]
0066e44c  10 70 84 15                                      strne r7, [r4, #0x10]
0066e450  05 00 a0 e1                                      mov r0, r5
0066e454  a7 7f f2 eb                                      bl #0x30e2f8
0066e458  00 00 50 e3                                      cmp r0, #0
0066e45c  00 10 94 e5                                      ldr r1, [r4]
0066e460  14 50 84 15                                      strne r5, [r4, #0x14]
0066e464  08 00 a0 e1                                      mov r0, r8
0066e468  a7 80 f2 eb                                      bl #0x30e70c
0066e46c  00 00 50 e3                                      cmp r0, #0
0066e470  04 10 94 e5                                      ldr r1, [r4, #4]
0066e474  00 80 84 15                                      strne r8, [r4]
0066e478  07 00 a0 e1                                      mov r0, r7
0066e47c  a2 80 f2 eb                                      bl #0x30e70c
0066e480  00 00 50 e3                                      cmp r0, #0
0066e484  04 70 84 15                                      strne r7, [r4, #4]
0066e488  08 10 94 e5                                      ldr r1, [r4, #8]
0066e48c  05 00 a0 e1                                      mov r0, r5
0066e490  9d 80 f2 eb                                      bl #0x30e70c
0066e494  00 00 50 e3                                      cmp r0, #0
0066e498  08 50 84 15                                      strne r5, [r4, #8]
0066e49c  09 00 56 e1                                      cmp r6, sb
0066e4a0  d8 ff ff ba                                      blt #0x66e408
0066e4a4  d0 ff ff ea                                      b #0x66e3ec
0066e4a8  00 00 59 e3                                      cmp sb, #0
0066e4ac  ce ff ff 0a                                      beq #0x66e3ec
0066e4b0  00 50 a0 e3                                      mov r5, #0
0066e4b4  08 20 8d e2                                      add r2, sp, #8
0066e4b8  05 70 a0 e1                                      mov r7, r5
0066e4bc  04 20 8d e5                                      str r2, [sp, #4]
0066e4c0  00 00 00 ea                                      b #0x66e4c8
0066e4c4  0c 30 9a e5                                      ldr r3, [sl, #0xc]
0066e4c8  90 30 93 e5                                      ldr r3, [r3, #0x90]
0066e4cc  10 00 9a e5                                      ldr r0, [sl, #0x10]
0066e4d0  04 10 9d e5                                      ldr r1, [sp, #4]
0066e4d4  05 c0 93 e7                                      ldr ip, [r3, r5]
0066e4d8  05 30 83 e0                                      add r3, r3, r5
0066e4dc  0c 20 83 e2                                      add r2, r3, #0xc
0066e4e0  08 c0 8d e5                                      str ip, [sp, #8]
0066e4e4  04 c0 93 e5                                      ldr ip, [r3, #4]
0066e4e8  18 50 85 e2                                      add r5, r5, #0x18
0066e4ec  0c c0 8d e5                                      str ip, [sp, #0xc]
0066e4f0  08 c0 93 e5                                      ldr ip, [r3, #8]
0066e4f4  10 c0 8d e5                                      str ip, [sp, #0x10]
0066e4f8  0c 30 93 e5                                      ldr r3, [r3, #0xc]
0066e4fc  14 30 8d e5                                      str r3, [sp, #0x14]
0066e500  04 30 92 e5                                      ldr r3, [r2, #4]
0066e504  18 30 8d e5                                      str r3, [sp, #0x18]
0066e508  08 30 92 e5                                      ldr r3, [r2, #8]
0066e50c  1c 30 8d e5                                      str r3, [sp, #0x1c]
0066e510  10 30 90 e5                                      ldr r3, [r0, #0x10]
0066e514  07 01 93 e7                                      ldr r0, [r3, r7, lsl #2]
0066e518  9e 63 fc eb                                      bl #0x587398
0066e51c  14 b0 9d e5                                      ldr fp, [sp, #0x14]
0066e520  0c 10 94 e5                                      ldr r1, [r4, #0xc]
0066e524  18 80 9d e5                                      ldr r8, [sp, #0x18]
0066e528  0b 00 a0 e1                                      mov r0, fp
0066e52c  71 7f f2 eb                                      bl #0x30e2f8
0066e530  00 00 50 e3                                      cmp r0, #0
0066e534  1c 60 9d e5                                      ldr r6, [sp, #0x1c]
0066e538  10 10 94 e5                                      ldr r1, [r4, #0x10]
0066e53c  0c b0 84 15                                      strne fp, [r4, #0xc]
0066e540  08 00 a0 e1                                      mov r0, r8
0066e544  6b 7f f2 eb                                      bl #0x30e2f8
0066e548  00 00 50 e3                                      cmp r0, #0
0066e54c  14 10 94 e5                                      ldr r1, [r4, #0x14]
0066e550  10 80 84 15                                      strne r8, [r4, #0x10]
0066e554  06 00 a0 e1                                      mov r0, r6
0066e558  66 7f f2 eb                                      bl #0x30e2f8
0066e55c  00 00 50 e3                                      cmp r0, #0
0066e560  00 10 94 e5                                      ldr r1, [r4]
0066e564  14 60 84 15                                      strne r6, [r4, #0x14]
0066e568  0b 00 a0 e1                                      mov r0, fp
0066e56c  66 80 f2 eb                                      bl #0x30e70c
0066e570  00 00 50 e3                                      cmp r0, #0
0066e574  04 10 94 e5                                      ldr r1, [r4, #4]
0066e578  00 b0 84 15                                      strne fp, [r4]
0066e57c  08 00 a0 e1                                      mov r0, r8
0066e580  61 80 f2 eb                                      bl #0x30e70c
0066e584  00 00 50 e3                                      cmp r0, #0
0066e588  08 10 94 e5                                      ldr r1, [r4, #8]
0066e58c  04 80 84 15                                      strne r8, [r4, #4]
0066e590  06 00 a0 e1                                      mov r0, r6
0066e594  5c 80 f2 eb                                      bl #0x30e70c
0066e598  00 00 50 e3                                      cmp r0, #0
0066e59c  08 60 84 15                                      strne r6, [r4, #8]
0066e5a0  08 b0 9d e5                                      ldr fp, [sp, #8]
0066e5a4  0c 10 94 e5                                      ldr r1, [r4, #0xc]
0066e5a8  0c 80 9d e5                                      ldr r8, [sp, #0xc]
0066e5ac  0b 00 a0 e1                                      mov r0, fp
0066e5b0  50 7f f2 eb                                      bl #0x30e2f8
0066e5b4  00 00 50 e3                                      cmp r0, #0
0066e5b8  10 60 9d e5                                      ldr r6, [sp, #0x10]
0066e5bc  10 10 94 e5                                      ldr r1, [r4, #0x10]
0066e5c0  0c b0 84 15                                      strne fp, [r4, #0xc]
0066e5c4  08 00 a0 e1                                      mov r0, r8
0066e5c8  4a 7f f2 eb                                      bl #0x30e2f8
0066e5cc  00 00 50 e3                                      cmp r0, #0
0066e5d0  14 10 94 e5                                      ldr r1, [r4, #0x14]
0066e5d4  10 80 84 15                                      strne r8, [r4, #0x10]
0066e5d8  06 00 a0 e1                                      mov r0, r6
0066e5dc  45 7f f2 eb                                      bl #0x30e2f8
0066e5e0  00 00 50 e3                                      cmp r0, #0
0066e5e4  00 10 94 e5                                      ldr r1, [r4]
0066e5e8  14 60 84 15                                      strne r6, [r4, #0x14]
0066e5ec  0b 00 a0 e1                                      mov r0, fp
0066e5f0  45 80 f2 eb                                      bl #0x30e70c
0066e5f4  00 00 50 e3                                      cmp r0, #0
0066e5f8  04 10 94 e5                                      ldr r1, [r4, #4]
0066e5fc  00 b0 84 15                                      strne fp, [r4]
0066e600  08 00 a0 e1                                      mov r0, r8
0066e604  40 80 f2 eb                                      bl #0x30e70c
0066e608  00 00 50 e3                                      cmp r0, #0
0066e60c  04 80 84 15                                      strne r8, [r4, #4]
0066e610  08 10 94 e5                                      ldr r1, [r4, #8]
0066e614  06 00 a0 e1                                      mov r0, r6
0066e618  3b 80 f2 eb                                      bl #0x30e70c
0066e61c  01 70 87 e2                                      add r7, r7, #1
0066e620  00 00 50 e3                                      cmp r0, #0
0066e624  08 60 84 15                                      strne r6, [r4, #8]
0066e628  09 00 57 e1                                      cmp r7, sb
0066e62c  a4 ff ff ba                                      blt #0x66e4c4
0066e630  6d ff ff ea                                      b #0x66e3ec

; FUNCTION 0x0066e634, declared_size=132, range_size=132, mode=arm
; class-group: glitch::collada::detail::CColladaHardwareQuatSkinTechnique
; alias: _ZN6glitch7collada6detail33CColladaHardwareQuatSkinTechnique4initERNS0_11SSkinBufferEPNS_5scene11CMeshBufferEPNS_5video12IVideoDriverEb
; demangled: glitch::collada::detail::CColladaHardwareQuatSkinTechnique::init(glitch::collada::SSkinBuffer&, glitch::scene::CMeshBuffer*, glitch::video::IVideoDriver*, bool)
; decoder-mode: arm
0066e634  10 40 2d e9                                      push {r4, lr}
0066e638  0c e0 90 e5                                      ldr lr, [r0, #0xc]
0066e63c  01 c0 a0 e1                                      mov ip, r1
0066e640  08 d0 4d e2                                      sub sp, sp, #8
0066e644  00 40 a0 e1                                      mov r4, r0
0066e648  00 30 8d e5                                      str r3, [sp]
0066e64c  02 10 a0 e1                                      mov r1, r2
0066e650  0e 30 a0 e1                                      mov r3, lr
0066e654  0c 20 a0 e1                                      mov r2, ip
0066e658  1a 0a 00 eb                                      bl #0x670ec8
0066e65c  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0066e660  94 40 93 e5                                      ldr r4, [r3, #0x94]
0066e664  11 30 d4 e5                                      ldrb r3, [r4, #0x11]
0066e668  00 00 53 e3                                      cmp r3, #0
0066e66c  09 00 00 0a                                      beq #0x66e698
0066e670  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
0066e674  08 00 13 e3                                      tst r3, #8
0066e678  09 00 00 1a                                      bne #0x66e6a4
0066e67c  08 30 94 e5                                      ldr r3, [r4, #8]
0066e680  00 20 a0 e3                                      mov r2, #0
0066e684  11 20 c4 e5                                      strb r2, [r4, #0x11]
0066e688  02 00 53 e1                                      cmp r3, r2
0066e68c  12 30 d4 15                                      ldrbne r3, [r4, #0x12]
0066e690  02 30 83 13                                      orrne r3, r3, #2
0066e694  12 30 c4 15                                      strbne r3, [r4, #0x12]
0066e698  00 00 a0 e3                                      mov r0, #0
0066e69c  08 d0 8d e2                                      add sp, sp, #8
0066e6a0  10 80 bd e8                                      pop {r4, pc}
0066e6a4  00 30 94 e5                                      ldr r3, [r4]
0066e6a8  04 00 a0 e1                                      mov r0, r4
0066e6ac  0f e0 a0 e1                                      mov lr, pc
0066e6b0  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0066e6b4  f0 ff ff ea                                      b #0x66e67c

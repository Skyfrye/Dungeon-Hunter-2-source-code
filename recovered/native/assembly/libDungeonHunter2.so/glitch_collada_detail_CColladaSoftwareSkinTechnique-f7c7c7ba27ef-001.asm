; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0066f5f8, declared_size=96, range_size=96, mode=arm
; class-group: glitch::collada::detail::CColladaSoftwareSkinTechnique
; alias: _ZN6glitch7collada6detail29CColladaSoftwareSkinTechniqueC2ERNS0_5SSkinERNS0_10SSkinCacheEb
; demangled: glitch::collada::detail::CColladaSoftwareSkinTechnique::CColladaSoftwareSkinTechnique(glitch::collada::SSkin&, glitch::collada::SSkinCache&, bool)
; decoder-mode: arm
0066f5f8  f0 00 2d e9                                      push {r4, r5, r6, r7}
0066f5fc  4c 70 9f e5                                      ldr r7, [pc, #0x4c]
0066f600  4c 60 9f e5                                      ldr r6, [pc, #0x4c]
0066f604  00 40 a0 e3                                      mov r4, #0
0066f608  07 70 8f e0                                      add r7, pc, r7
0066f60c  06 60 97 e7                                      ldr r6, [r7, r6]
0066f610  00 50 a0 e1                                      mov r5, r0
0066f614  0c 10 80 e5                                      str r1, [r0, #0xc]
0066f618  08 60 86 e2                                      add r6, r6, #8
0066f61c  00 60 80 e5                                      str r6, [r0]
0066f620  10 20 80 e5                                      str r2, [r0, #0x10]
0066f624  08 40 80 e5                                      str r4, [r0, #8]
0066f628  14 40 80 e5                                      str r4, [r0, #0x14]
0066f62c  18 40 c0 e5                                      strb r4, [r0, #0x18]
0066f630  20 40 80 e5                                      str r4, [r0, #0x20]
0066f634  1c 40 e5 e5                                      strb r4, [r5, #0x1c]!
0066f638  28 50 80 e5                                      str r5, [r0, #0x28]
0066f63c  04 30 c0 e5                                      strb r3, [r0, #4]
0066f640  2c 40 80 e5                                      str r4, [r0, #0x2c]
0066f644  24 50 80 e5                                      str r5, [r0, #0x24]
0066f648  f0 00 bd e8                                      pop {r4, r5, r6, r7}
0066f64c  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0066f650  88 54 32 00 a8 42 00 00                          .byte 0x88, 0x54, 0x32, 0x00, 0xa8, 0x42, 0x00, 0x00

; FUNCTION 0x0066f658, declared_size=96, range_size=96, mode=arm
; class-group: glitch::collada::detail::CColladaSoftwareSkinTechnique
; alias: _ZN6glitch7collada6detail29CColladaSoftwareSkinTechniqueC1ERNS0_5SSkinERNS0_10SSkinCacheEb
; demangled: glitch::collada::detail::CColladaSoftwareSkinTechnique::CColladaSoftwareSkinTechnique(glitch::collada::SSkin&, glitch::collada::SSkinCache&, bool)
; decoder-mode: arm
0066f658  f0 00 2d e9                                      push {r4, r5, r6, r7}
0066f65c  4c 70 9f e5                                      ldr r7, [pc, #0x4c]
0066f660  4c 60 9f e5                                      ldr r6, [pc, #0x4c]
0066f664  00 40 a0 e3                                      mov r4, #0
0066f668  07 70 8f e0                                      add r7, pc, r7
0066f66c  06 60 97 e7                                      ldr r6, [r7, r6]
0066f670  00 50 a0 e1                                      mov r5, r0
0066f674  0c 10 80 e5                                      str r1, [r0, #0xc]
0066f678  08 60 86 e2                                      add r6, r6, #8
0066f67c  00 60 80 e5                                      str r6, [r0]
0066f680  10 20 80 e5                                      str r2, [r0, #0x10]
0066f684  08 40 80 e5                                      str r4, [r0, #8]
0066f688  14 40 80 e5                                      str r4, [r0, #0x14]
0066f68c  18 40 c0 e5                                      strb r4, [r0, #0x18]
0066f690  20 40 80 e5                                      str r4, [r0, #0x20]
0066f694  1c 40 e5 e5                                      strb r4, [r5, #0x1c]!
0066f698  28 50 80 e5                                      str r5, [r0, #0x28]
0066f69c  04 30 c0 e5                                      strb r3, [r0, #4]
0066f6a0  2c 40 80 e5                                      str r4, [r0, #0x2c]
0066f6a4  24 50 80 e5                                      str r5, [r0, #0x24]
0066f6a8  f0 00 bd e8                                      pop {r4, r5, r6, r7}
0066f6ac  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0066f6b0  28 54 32 00 a8 42 00 00                          .byte 0x28, 0x54, 0x32, 0x00, 0xa8, 0x42, 0x00, 0x00

; FUNCTION 0x0066f6b8, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::detail::CColladaSoftwareSkinTechnique
; alias: _ZNK6glitch7collada6detail29CColladaSoftwareSkinTechnique16needOutputBufferEv
; demangled: glitch::collada::detail::CColladaSoftwareSkinTechnique::needOutputBuffer() const
; decoder-mode: arm
0066f6b8  01 00 a0 e3                                      mov r0, #1
0066f6bc  1e ff 2f e1                                      bx lr

; FUNCTION 0x0066f6c0, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::detail::CColladaSoftwareSkinTechnique
; alias: _ZNK6glitch7collada6detail29CColladaSoftwareSkinTechnique17checkAvailabilityERKNS_5video10STechniqueE
; demangled: glitch::collada::detail::CColladaSoftwareSkinTechnique::checkAvailability(glitch::video::STechnique const&) const
; decoder-mode: arm
0066f6c0  01 00 a0 e3                                      mov r0, #1
0066f6c4  1e ff 2f e1                                      bx lr

; FUNCTION 0x0066f6c8, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::detail::CColladaSoftwareSkinTechnique
; alias: _ZN6glitch7collada6detail29CColladaSoftwareSkinTechnique6attachEPNS_5scene10ISceneNodeE
; demangled: glitch::collada::detail::CColladaSoftwareSkinTechnique::attach(glitch::scene::ISceneNode*)
; decoder-mode: arm
0066f6c8  14 10 80 e5                                      str r1, [r0, #0x14]
0066f6cc  1e ff 2f e1                                      bx lr

; FUNCTION 0x0066f724, declared_size=104, range_size=104, mode=arm
; class-group: glitch::collada::detail::CColladaSoftwareSkinTechnique
; alias: _ZN6glitch7collada6detail29CColladaSoftwareSkinTechniqueD1Ev
; demangled: glitch::collada::detail::CColladaSoftwareSkinTechnique::~CColladaSoftwareSkinTechnique()
; decoder-mode: arm
0066f724  70 40 2d e9                                      push {r4, r5, r6, lr}
0066f728  54 30 9f e5                                      ldr r3, [pc, #0x54]
0066f72c  54 20 9f e5                                      ldr r2, [pc, #0x54]
0066f730  2c 10 90 e5                                      ldr r1, [r0, #0x2c]
0066f734  03 30 8f e0                                      add r3, pc, r3
0066f738  02 20 93 e7                                      ldr r2, [r3, r2]
0066f73c  00 00 51 e3                                      cmp r1, #0
0066f740  00 40 a0 e1                                      mov r4, r0
0066f744  08 20 82 e2                                      add r2, r2, #8
0066f748  00 20 80 e5                                      str r2, [r0]
0066f74c  08 00 00 0a                                      beq #0x66f774
0066f750  1c 50 80 e2                                      add r5, r0, #0x1c
0066f754  05 00 a0 e1                                      mov r0, r5
0066f758  20 10 94 e5                                      ldr r1, [r4, #0x20]
0066f75c  e3 ff ff eb                                      bl #0x66f6f0
0066f760  00 30 a0 e3                                      mov r3, #0
0066f764  28 50 84 e5                                      str r5, [r4, #0x28]
0066f768  2c 30 84 e5                                      str r3, [r4, #0x2c]
0066f76c  24 50 84 e5                                      str r5, [r4, #0x24]
0066f770  20 30 84 e5                                      str r3, [r4, #0x20]
0066f774  04 00 a0 e1                                      mov r0, r4
0066f778  b6 05 00 eb                                      bl #0x670e58
0066f77c  04 00 a0 e1                                      mov r0, r4
0066f780  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0066f784  5c 53 32 00 a8 42 00 00                          .byte 0x5c, 0x53, 0x32, 0x00, 0xa8, 0x42, 0x00, 0x00

; FUNCTION 0x0066f78c, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::detail::CColladaSoftwareSkinTechnique
; alias: _ZN6glitch7collada6detail29CColladaSoftwareSkinTechniqueD0Ev
; demangled: glitch::collada::detail::CColladaSoftwareSkinTechnique::~CColladaSoftwareSkinTechnique()
; decoder-mode: arm
0066f78c  10 40 2d e9                                      push {r4, lr}
0066f790  00 40 a0 e1                                      mov r4, r0
0066f794  e2 ff ff eb                                      bl #0x66f724
0066f798  04 00 a0 e1                                      mov r0, r4
0066f79c  c3 7a f2 eb                                      bl #0x30e2b0
0066f7a0  04 00 a0 e1                                      mov r0, r4
0066f7a4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0066f7a8, declared_size=220, range_size=220, mode=arm
; class-group: glitch::collada::detail::CColladaSoftwareSkinTechnique
; alias: _ZN6glitch7collada6detail29CColladaSoftwareSkinTechnique27onPrepareBufferForRenderingENS0_21E_PREPARE_BUFFER_STEPEPNS_5video12IVideoDriverERNS0_11SSkinBufferEPNS_5scene11CMeshBufferE
; demangled: glitch::collada::detail::CColladaSoftwareSkinTechnique::onPrepareBufferForRendering(glitch::collada::E_PREPARE_BUFFER_STEP, glitch::video::IVideoDriver*, glitch::collada::SSkinBuffer&, glitch::scene::CMeshBuffer*)
; decoder-mode: arm
0066f7a8  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0066f7ac  18 60 d0 e5                                      ldrb r6, [r0, #0x18]
0066f7b0  03 40 a0 e1                                      mov r4, r3
0066f7b4  00 30 93 e5                                      ldr r3, [r3]
0066f7b8  00 50 a0 e1                                      mov r5, r0
0066f7bc  06 c8 a0 e3                                      mov ip, #0x60000
0066f7c0  02 08 a0 e3                                      mov r0, #0x20000
0066f7c4  14 d0 4d e2                                      sub sp, sp, #0x14
0066f7c8  00 00 56 e3                                      cmp r6, #0
0066f7cc  01 c0 8c e2                                      add ip, ip, #1
0066f7d0  01 00 80 e2                                      add r0, r0, #1
0066f7d4  0c 60 a0 11                                      movne r6, ip
0066f7d8  0c 30 8d e5                                      str r3, [sp, #0xc]
0066f7dc  00 60 a0 01                                      moveq r6, r0
0066f7e0  00 00 53 e3                                      cmp r3, #0
0066f7e4  02 70 a0 e1                                      mov r7, r2
0066f7e8  04 20 93 15                                      ldrne r2, [r3, #4]
0066f7ec  01 80 a0 e1                                      mov r8, r1
0066f7f0  01 20 82 12                                      addne r2, r2, #1
0066f7f4  04 20 83 15                                      strne r2, [r3, #4]
0066f7f8  04 30 94 e5                                      ldr r3, [r4, #4]
0066f7fc  03 00 a0 e1                                      mov r0, r3
0066f800  04 a0 93 e5                                      ldr sl, [r3, #4]
0066f804  4a 59 fd eb                                      bl #0x5c5d34
0066f808  18 30 9a e5                                      ldr r3, [sl, #0x18]
0066f80c  0c 20 a0 e3                                      mov r2, #0xc
0066f810  01 10 78 e2                                      rsbs r1, r8, #1
0066f814  00 10 a0 33                                      movlo r1, #0
0066f818  92 30 23 e0                                      mla r3, r2, r0, r3
0066f81c  00 c0 a0 e3                                      mov ip, #0
0066f820  08 20 93 e5                                      ldr r2, [r3, #8]
0066f824  07 00 a0 e1                                      mov r0, r7
0066f828  0c 30 8d e2                                      add r3, sp, #0xc
0066f82c  20 20 92 e5                                      ldr r2, [r2, #0x20]
0066f830  38 20 92 e5                                      ldr r2, [r2, #0x38]
0066f834  00 c0 8d e5                                      str ip, [sp]
0066f838  02 20 06 e0                                      and r2, r6, r2
0066f83c  17 68 ff eb                                      bl #0x6498a0
0066f840  04 00 10 e3                                      tst r0, #4
0066f844  00 60 a0 e1                                      mov r6, r0
0066f848  06 00 00 1a                                      bne #0x66f868
0066f84c  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0066f850  00 00 50 e3                                      cmp r0, #0
0066f854  00 00 00 0a                                      beq #0x66f85c
0066f858  49 b7 f2 eb                                      bl #0x31d584
0066f85c  06 00 a0 e1                                      mov r0, r6
0066f860  14 d0 8d e2                                      add sp, sp, #0x14
0066f864  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0066f868  05 00 a0 e1                                      mov r0, r5
0066f86c  04 10 a0 e1                                      mov r1, r4
0066f870  30 20 9d e5                                      ldr r2, [sp, #0x30]
0066f874  00 30 95 e5                                      ldr r3, [r5]
0066f878  0f e0 a0 e1                                      mov lr, pc
0066f87c  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0066f880  f1 ff ff ea                                      b #0x66f84c

; FUNCTION 0x0066f8ec, declared_size=456, range_size=456, mode=arm
; class-group: glitch::collada::detail::CColladaSoftwareSkinTechnique
; alias: _ZN6glitch7collada6detail29CColladaSoftwareSkinTechnique4initERNS0_11SSkinBufferEPNS_5scene11CMeshBufferEPNS_5video12IVideoDriverEb
; demangled: glitch::collada::detail::CColladaSoftwareSkinTechnique::init(glitch::collada::SSkinBuffer&, glitch::scene::CMeshBuffer*, glitch::video::IVideoDriver*, bool)
; decoder-mode: arm
0066f8ec  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0066f8f0  0c c0 90 e5                                      ldr ip, [r0, #0xc]
0066f8f4  01 70 a0 e1                                      mov r7, r1
0066f8f8  40 d0 4d e2                                      sub sp, sp, #0x40
0066f8fc  02 10 a0 e1                                      mov r1, r2
0066f900  03 60 a0 e1                                      mov r6, r3
0066f904  07 20 a0 e1                                      mov r2, r7
0066f908  0c 30 a0 e1                                      mov r3, ip
0066f90c  00 50 a0 e1                                      mov r5, r0
0066f910  00 60 8d e5                                      str r6, [sp]
0066f914  60 90 dd e5                                      ldrb sb, [sp, #0x60]
0066f918  6a 05 00 eb                                      bl #0x670ec8
0066f91c  14 80 90 e5                                      ldr r8, [r0, #0x14]
0066f920  00 30 a0 e3                                      mov r3, #0
0066f924  06 c0 a0 e3                                      mov ip, #6
0066f928  14 a0 88 e2                                      add sl, r8, #0x14
0066f92c  ba 33 cd e1                                      strh r3, [sp, #0x3a]
0066f930  2c 30 8d e5                                      str r3, [sp, #0x2c]
0066f934  30 30 8d e5                                      str r3, [sp, #0x30]
0066f938  00 40 a0 e1                                      mov r4, r0
0066f93c  03 30 a0 e3                                      mov r3, #3
0066f940  08 00 a0 e1                                      mov r0, r8
0066f944  0a 10 a0 e1                                      mov r1, sl
0066f948  2c 20 8d e2                                      add r2, sp, #0x2c
0066f94c  34 c0 8d e5                                      str ip, [sp, #0x34]
0066f950  b8 33 cd e1                                      strh r3, [sp, #0x38]
0066f954  ca ff ff eb                                      bl #0x66f884
0066f958  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
0066f95c  00 00 50 e3                                      cmp r0, #0
0066f960  00 00 00 0a                                      beq #0x66f968
0066f964  06 b7 f2 eb                                      bl #0x31d584
0066f968  04 30 98 e5                                      ldr r3, [r8, #4]
0066f96c  02 08 13 e3                                      tst r3, #0x20000
0066f970  01 20 a0 03                                      moveq r2, #1
0066f974  12 00 00 0a                                      beq #0x66f9c4
0066f978  00 30 a0 e3                                      mov r3, #0
0066f97c  ba 32 cd e1                                      strh r3, [sp, #0x2a]
0066f980  1c 30 8d e5                                      str r3, [sp, #0x1c]
0066f984  20 30 8d e5                                      str r3, [sp, #0x20]
0066f988  06 20 a0 e3                                      mov r2, #6
0066f98c  03 30 a0 e3                                      mov r3, #3
0066f990  24 20 8d e5                                      str r2, [sp, #0x24]
0066f994  b8 32 cd e1                                      strh r3, [sp, #0x28]
0066f998  0c 10 d8 e5                                      ldrb r1, [r8, #0xc]
0066f99c  08 00 a0 e1                                      mov r0, r8
0066f9a0  1c 20 8d e2                                      add r2, sp, #0x1c
0066f9a4  01 10 81 e2                                      add r1, r1, #1
0066f9a8  01 12 8a e0                                      add r1, sl, r1, lsl #4
0066f9ac  b4 ff ff eb                                      bl #0x66f884
0066f9b0  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0066f9b4  00 00 50 e3                                      cmp r0, #0
0066f9b8  00 00 00 0a                                      beq #0x66f9c0
0066f9bc  f0 b6 f2 eb                                      bl #0x31d584
0066f9c0  02 20 a0 e3                                      mov r2, #2
0066f9c4  18 30 d5 e5                                      ldrb r3, [r5, #0x18]
0066f9c8  00 00 53 e3                                      cmp r3, #0
0066f9cc  11 00 00 0a                                      beq #0x66fa18
0066f9d0  0c 10 d8 e5                                      ldrb r1, [r8, #0xc]
0066f9d4  00 30 a0 e3                                      mov r3, #0
0066f9d8  08 00 a0 e1                                      mov r0, r8
0066f9dc  01 20 82 e0                                      add r2, r2, r1
0066f9e0  02 12 8a e0                                      add r1, sl, r2, lsl #4
0066f9e4  06 c0 a0 e3                                      mov ip, #6
0066f9e8  ba 31 cd e1                                      strh r3, [sp, #0x1a]
0066f9ec  0c 30 8d e5                                      str r3, [sp, #0xc]
0066f9f0  10 30 8d e5                                      str r3, [sp, #0x10]
0066f9f4  0c 20 8d e2                                      add r2, sp, #0xc
0066f9f8  04 30 a0 e3                                      mov r3, #4
0066f9fc  14 c0 8d e5                                      str ip, [sp, #0x14]
0066fa00  b8 31 cd e1                                      strh r3, [sp, #0x18]
0066fa04  9e ff ff eb                                      bl #0x66f884
0066fa08  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0066fa0c  00 00 50 e3                                      cmp r0, #0
0066fa10  00 00 00 0a                                      beq #0x66fa18
0066fa14  da b6 f2 eb                                      bl #0x31d584
0066fa18  00 00 59 e3                                      cmp sb, #0
0066fa1c  00 00 a0 13                                      movne r0, #0
0066fa20  21 00 00 1a                                      bne #0x66faac
0066fa24  04 10 97 e5                                      ldr r1, [r7, #4]
0066fa28  18 70 d5 e5                                      ldrb r7, [r5, #0x18]
0066fa2c  02 28 a0 e3                                      mov r2, #0x20000
0066fa30  06 38 a0 e3                                      mov r3, #0x60000
0066fa34  00 00 57 e3                                      cmp r7, #0
0066fa38  01 20 82 e2                                      add r2, r2, #1
0066fa3c  01 30 83 e2                                      add r3, r3, #1
0066fa40  01 00 a0 e1                                      mov r0, r1
0066fa44  02 70 a0 01                                      moveq r7, r2
0066fa48  03 70 a0 11                                      movne r7, r3
0066fa4c  04 50 91 e5                                      ldr r5, [r1, #4]
0066fa50  b7 58 fd eb                                      bl #0x5c5d34
0066fa54  18 20 95 e5                                      ldr r2, [r5, #0x18]
0066fa58  0c 10 a0 e3                                      mov r1, #0xc
0066fa5c  40 30 8d e2                                      add r3, sp, #0x40
0066fa60  91 20 22 e0                                      mla r2, r1, r0, r2
0066fa64  01 50 a0 e3                                      mov r5, #1
0066fa68  08 20 92 e5                                      ldr r2, [r2, #8]
0066fa6c  06 00 a0 e1                                      mov r0, r6
0066fa70  05 10 a0 e1                                      mov r1, r5
0066fa74  20 20 92 e5                                      ldr r2, [r2, #0x20]
0066fa78  38 20 92 e5                                      ldr r2, [r2, #0x38]
0066fa7c  04 40 23 e5                                      str r4, [r3, #-4]!
0066fa80  04 c0 94 e5                                      ldr ip, [r4, #4]
0066fa84  02 20 07 e0                                      and r2, r7, r2
0066fa88  05 c0 8c e0                                      add ip, ip, r5
0066fa8c  04 c0 84 e5                                      str ip, [r4, #4]
0066fa90  00 50 8d e5                                      str r5, [sp]
0066fa94  81 67 ff eb                                      bl #0x6498a0
0066fa98  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
0066fa9c  00 00 50 e3                                      cmp r0, #0
0066faa0  00 00 00 0a                                      beq #0x66faa8
0066faa4  b6 b6 f2 eb                                      bl #0x31d584
0066faa8  05 00 a0 e1                                      mov r0, r5
0066faac  40 d0 8d e2                                      add sp, sp, #0x40
0066fab0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x0066fab4, declared_size=176, range_size=176, mode=arm
; class-group: glitch::collada::detail::CColladaSoftwareSkinTechnique
; alias: _ZN6glitch7collada6detail29CColladaSoftwareSkinTechnique15preparePtrCacheEv
; demangled: glitch::collada::detail::CColladaSoftwareSkinTechnique::preparePtrCache()
; decoder-mode: arm
0066fab4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0066fab8  00 40 a0 e1                                      mov r4, r0
0066fabc  10 00 90 e5                                      ldr r0, [r0, #0x10]
0066fac0  08 d0 4d e2                                      sub sp, sp, #8
0066fac4  00 30 90 e5                                      ldr r3, [r0]
0066fac8  01 08 13 e3                                      tst r3, #0x10000
0066facc  01 00 00 1a                                      bne #0x66fad8
0066fad0  08 d0 8d e2                                      add sp, sp, #8
0066fad4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0066fad8  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0066fadc  08 20 8d e2                                      add r2, sp, #8
0066fae0  00 50 a0 e3                                      mov r5, #0
0066fae4  74 10 93 e5                                      ldr r1, [r3, #0x74]
0066fae8  10 00 80 e2                                      add r0, r0, #0x10
0066faec  04 50 22 e5                                      str r5, [r2, #-4]!
0066faf0  82 f2 ff eb                                      bl #0x66c500
0066faf4  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0066faf8  74 70 93 e5                                      ldr r7, [r3, #0x74]
0066fafc  05 00 57 e1                                      cmp r7, r5
0066fb00  01 00 00 ca                                      bgt #0x66fb0c
0066fb04  11 00 00 ea                                      b #0x66fb50
0066fb08  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0066fb0c  78 30 93 e5                                      ldr r3, [r3, #0x78]
0066fb10  14 00 94 e5                                      ldr r0, [r4, #0x14]
0066fb14  05 61 a0 e1                                      lsl r6, r5, #2
0066fb18  05 11 93 e7                                      ldr r1, [r3, r5, lsl #2]
0066fb1c  3a a2 fc eb                                      bl #0x59840c
0066fb20  10 30 94 e5                                      ldr r3, [r4, #0x10]
0066fb24  00 20 50 e2                                      subs r2, r0, #0
0066fb28  02 00 a0 01                                      moveq r0, r2
0066fb2c  10 80 93 e5                                      ldr r8, [r3, #0x10]
0066fb30  02 00 00 0a                                      beq #0x66fb40
0066fb34  00 30 92 e5                                      ldr r3, [r2]
0066fb38  0f e0 a0 e1                                      mov lr, pc
0066fb3c  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0066fb40  01 50 85 e2                                      add r5, r5, #1
0066fb44  07 00 55 e1                                      cmp r5, r7
0066fb48  06 00 88 e7                                      str r0, [r8, r6]
0066fb4c  ed ff ff 1a                                      bne #0x66fb08
0066fb50  10 30 94 e5                                      ldr r3, [r4, #0x10]
0066fb54  00 20 93 e5                                      ldr r2, [r3]
0066fb58  01 28 c2 e3                                      bic r2, r2, #0x10000
0066fb5c  00 20 83 e5                                      str r2, [r3]
0066fb60  da ff ff ea                                      b #0x66fad0

; FUNCTION 0x0066fb84, declared_size=688, range_size=688, mode=arm
; class-group: glitch::collada::detail::CColladaSoftwareSkinTechnique
; alias: _ZN6glitch7collada6detail29CColladaSoftwareSkinTechnique18computeBoundingBoxEv
; demangled: glitch::collada::detail::CColladaSoftwareSkinTechnique::computeBoundingBox()
; decoder-mode: arm
0066fb84  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0066fb88  00 40 a0 e1                                      mov r4, r0
0066fb8c  01 a0 a0 e1                                      mov sl, r1
0066fb90  01 00 a0 e1                                      mov r0, r1
0066fb94  24 d0 4d e2                                      sub sp, sp, #0x24
0066fb98  c5 ff ff eb                                      bl #0x66fab4
0066fb9c  10 20 9a e5                                      ldr r2, [sl, #0x10]
0066fba0  02 31 e0 e3                                      mvn r3, #0x80000000
0066fba4  02 35 43 e2                                      sub r3, r3, #0x800000
0066fba8  02 15 e0 e3                                      mvn r1, #0x800000
0066fbac  10 00 92 e5                                      ldr r0, [r2, #0x10]
0066fbb0  14 90 92 e5                                      ldr sb, [r2, #0x14]
0066fbb4  08 30 84 e5                                      str r3, [r4, #8]
0066fbb8  0c 10 84 e5                                      str r1, [r4, #0xc]
0066fbbc  10 10 84 e5                                      str r1, [r4, #0x10]
0066fbc0  14 10 84 e5                                      str r1, [r4, #0x14]
0066fbc4  00 30 84 e5                                      str r3, [r4]
0066fbc8  04 30 84 e5                                      str r3, [r4, #4]
0066fbcc  0c 30 9a e5                                      ldr r3, [sl, #0xc]
0066fbd0  09 90 60 e0                                      rsb sb, r0, sb
0066fbd4  59 91 e7 e7                                      ubfx sb, sb, #2, #8
0066fbd8  8c 60 93 e5                                      ldr r6, [r3, #0x8c]
0066fbdc  00 00 56 e3                                      cmp r6, #0
0066fbe0  30 00 00 1a                                      bne #0x66fca8
0066fbe4  00 00 59 e3                                      cmp sb, #0
0066fbe8  07 00 00 1a                                      bne #0x66fc0c
0066fbec  10 30 9a e5                                      ldr r3, [sl, #0x10]
0066fbf0  04 00 a0 e1                                      mov r0, r4
0066fbf4  00 20 93 e5                                      ldr r2, [r3]
0066fbf8  08 20 c2 e3                                      bic r2, r2, #8
0066fbfc  00 20 83 e5                                      str r2, [r3]
0066fc00  24 d0 8d e2                                      add sp, sp, #0x24
0066fc04  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0066fc08  0c 10 94 e5                                      ldr r1, [r4, #0xc]
0066fc0c  10 30 9a e5                                      ldr r3, [sl, #0x10]
0066fc10  10 30 93 e5                                      ldr r3, [r3, #0x10]
0066fc14  06 31 93 e7                                      ldr r3, [r3, r6, lsl #2]
0066fc18  01 60 86 e2                                      add r6, r6, #1
0066fc1c  30 80 93 e5                                      ldr r8, [r3, #0x30]
0066fc20  38 50 93 e5                                      ldr r5, [r3, #0x38]
0066fc24  34 70 93 e5                                      ldr r7, [r3, #0x34]
0066fc28  08 00 a0 e1                                      mov r0, r8
0066fc2c  b1 79 f2 eb                                      bl #0x30e2f8
0066fc30  00 00 50 e3                                      cmp r0, #0
0066fc34  10 10 94 e5                                      ldr r1, [r4, #0x10]
0066fc38  0c 80 84 15                                      strne r8, [r4, #0xc]
0066fc3c  07 00 a0 e1                                      mov r0, r7
0066fc40  ac 79 f2 eb                                      bl #0x30e2f8
0066fc44  00 00 50 e3                                      cmp r0, #0
0066fc48  14 10 94 e5                                      ldr r1, [r4, #0x14]
0066fc4c  10 70 84 15                                      strne r7, [r4, #0x10]
0066fc50  05 00 a0 e1                                      mov r0, r5
0066fc54  a7 79 f2 eb                                      bl #0x30e2f8
0066fc58  00 00 50 e3                                      cmp r0, #0
0066fc5c  00 10 94 e5                                      ldr r1, [r4]
0066fc60  14 50 84 15                                      strne r5, [r4, #0x14]
0066fc64  08 00 a0 e1                                      mov r0, r8
0066fc68  a7 7a f2 eb                                      bl #0x30e70c
0066fc6c  00 00 50 e3                                      cmp r0, #0
0066fc70  04 10 94 e5                                      ldr r1, [r4, #4]
0066fc74  00 80 84 15                                      strne r8, [r4]
0066fc78  07 00 a0 e1                                      mov r0, r7
0066fc7c  a2 7a f2 eb                                      bl #0x30e70c
0066fc80  00 00 50 e3                                      cmp r0, #0
0066fc84  04 70 84 15                                      strne r7, [r4, #4]
0066fc88  08 10 94 e5                                      ldr r1, [r4, #8]
0066fc8c  05 00 a0 e1                                      mov r0, r5
0066fc90  9d 7a f2 eb                                      bl #0x30e70c
0066fc94  00 00 50 e3                                      cmp r0, #0
0066fc98  08 50 84 15                                      strne r5, [r4, #8]
0066fc9c  09 00 56 e1                                      cmp r6, sb
0066fca0  d8 ff ff ba                                      blt #0x66fc08
0066fca4  d0 ff ff ea                                      b #0x66fbec
0066fca8  00 00 59 e3                                      cmp sb, #0
0066fcac  ce ff ff 0a                                      beq #0x66fbec
0066fcb0  00 50 a0 e3                                      mov r5, #0
0066fcb4  08 20 8d e2                                      add r2, sp, #8
0066fcb8  05 70 a0 e1                                      mov r7, r5
0066fcbc  04 20 8d e5                                      str r2, [sp, #4]
0066fcc0  00 00 00 ea                                      b #0x66fcc8
0066fcc4  0c 30 9a e5                                      ldr r3, [sl, #0xc]
0066fcc8  90 30 93 e5                                      ldr r3, [r3, #0x90]
0066fccc  10 00 9a e5                                      ldr r0, [sl, #0x10]
0066fcd0  04 10 9d e5                                      ldr r1, [sp, #4]
0066fcd4  05 c0 93 e7                                      ldr ip, [r3, r5]
0066fcd8  05 30 83 e0                                      add r3, r3, r5
0066fcdc  0c 20 83 e2                                      add r2, r3, #0xc
0066fce0  08 c0 8d e5                                      str ip, [sp, #8]
0066fce4  04 c0 93 e5                                      ldr ip, [r3, #4]
0066fce8  18 50 85 e2                                      add r5, r5, #0x18
0066fcec  0c c0 8d e5                                      str ip, [sp, #0xc]
0066fcf0  08 c0 93 e5                                      ldr ip, [r3, #8]
0066fcf4  10 c0 8d e5                                      str ip, [sp, #0x10]
0066fcf8  0c 30 93 e5                                      ldr r3, [r3, #0xc]
0066fcfc  14 30 8d e5                                      str r3, [sp, #0x14]
0066fd00  04 30 92 e5                                      ldr r3, [r2, #4]
0066fd04  18 30 8d e5                                      str r3, [sp, #0x18]
0066fd08  08 30 92 e5                                      ldr r3, [r2, #8]
0066fd0c  1c 30 8d e5                                      str r3, [sp, #0x1c]
0066fd10  10 30 90 e5                                      ldr r3, [r0, #0x10]
0066fd14  07 01 93 e7                                      ldr r0, [r3, r7, lsl #2]
0066fd18  9e 5d fc eb                                      bl #0x587398
0066fd1c  14 b0 9d e5                                      ldr fp, [sp, #0x14]
0066fd20  0c 10 94 e5                                      ldr r1, [r4, #0xc]
0066fd24  18 80 9d e5                                      ldr r8, [sp, #0x18]
0066fd28  0b 00 a0 e1                                      mov r0, fp
0066fd2c  71 79 f2 eb                                      bl #0x30e2f8
0066fd30  00 00 50 e3                                      cmp r0, #0
0066fd34  1c 60 9d e5                                      ldr r6, [sp, #0x1c]
0066fd38  10 10 94 e5                                      ldr r1, [r4, #0x10]
0066fd3c  0c b0 84 15                                      strne fp, [r4, #0xc]
0066fd40  08 00 a0 e1                                      mov r0, r8
0066fd44  6b 79 f2 eb                                      bl #0x30e2f8
0066fd48  00 00 50 e3                                      cmp r0, #0
0066fd4c  14 10 94 e5                                      ldr r1, [r4, #0x14]
0066fd50  10 80 84 15                                      strne r8, [r4, #0x10]
0066fd54  06 00 a0 e1                                      mov r0, r6
0066fd58  66 79 f2 eb                                      bl #0x30e2f8
0066fd5c  00 00 50 e3                                      cmp r0, #0
0066fd60  00 10 94 e5                                      ldr r1, [r4]
0066fd64  14 60 84 15                                      strne r6, [r4, #0x14]
0066fd68  0b 00 a0 e1                                      mov r0, fp
0066fd6c  66 7a f2 eb                                      bl #0x30e70c
0066fd70  00 00 50 e3                                      cmp r0, #0
0066fd74  04 10 94 e5                                      ldr r1, [r4, #4]
0066fd78  00 b0 84 15                                      strne fp, [r4]
0066fd7c  08 00 a0 e1                                      mov r0, r8
0066fd80  61 7a f2 eb                                      bl #0x30e70c
0066fd84  00 00 50 e3                                      cmp r0, #0
0066fd88  08 10 94 e5                                      ldr r1, [r4, #8]
0066fd8c  04 80 84 15                                      strne r8, [r4, #4]
0066fd90  06 00 a0 e1                                      mov r0, r6
0066fd94  5c 7a f2 eb                                      bl #0x30e70c
0066fd98  00 00 50 e3                                      cmp r0, #0
0066fd9c  08 60 84 15                                      strne r6, [r4, #8]
0066fda0  08 b0 9d e5                                      ldr fp, [sp, #8]
0066fda4  0c 10 94 e5                                      ldr r1, [r4, #0xc]
0066fda8  0c 80 9d e5                                      ldr r8, [sp, #0xc]
0066fdac  0b 00 a0 e1                                      mov r0, fp
0066fdb0  50 79 f2 eb                                      bl #0x30e2f8
0066fdb4  00 00 50 e3                                      cmp r0, #0
0066fdb8  10 60 9d e5                                      ldr r6, [sp, #0x10]
0066fdbc  10 10 94 e5                                      ldr r1, [r4, #0x10]
0066fdc0  0c b0 84 15                                      strne fp, [r4, #0xc]
0066fdc4  08 00 a0 e1                                      mov r0, r8
0066fdc8  4a 79 f2 eb                                      bl #0x30e2f8
0066fdcc  00 00 50 e3                                      cmp r0, #0
0066fdd0  14 10 94 e5                                      ldr r1, [r4, #0x14]
0066fdd4  10 80 84 15                                      strne r8, [r4, #0x10]
0066fdd8  06 00 a0 e1                                      mov r0, r6
0066fddc  45 79 f2 eb                                      bl #0x30e2f8
0066fde0  00 00 50 e3                                      cmp r0, #0
0066fde4  00 10 94 e5                                      ldr r1, [r4]
0066fde8  14 60 84 15                                      strne r6, [r4, #0x14]
0066fdec  0b 00 a0 e1                                      mov r0, fp
0066fdf0  45 7a f2 eb                                      bl #0x30e70c
0066fdf4  00 00 50 e3                                      cmp r0, #0
0066fdf8  04 10 94 e5                                      ldr r1, [r4, #4]
0066fdfc  00 b0 84 15                                      strne fp, [r4]
0066fe00  08 00 a0 e1                                      mov r0, r8
0066fe04  40 7a f2 eb                                      bl #0x30e70c
0066fe08  00 00 50 e3                                      cmp r0, #0
0066fe0c  04 80 84 15                                      strne r8, [r4, #4]
0066fe10  08 10 94 e5                                      ldr r1, [r4, #8]
0066fe14  06 00 a0 e1                                      mov r0, r6
0066fe18  3b 7a f2 eb                                      bl #0x30e70c
0066fe1c  01 70 87 e2                                      add r7, r7, #1
0066fe20  00 00 50 e3                                      cmp r0, #0
0066fe24  08 60 84 15                                      strne r6, [r4, #8]
0066fe28  09 00 57 e1                                      cmp r7, sb
0066fe2c  a4 ff ff ba                                      blt #0x66fcc4
0066fe30  6d ff ff ea                                      b #0x66fbec

; FUNCTION 0x0066fe34, declared_size=276, range_size=276, mode=arm
; class-group: glitch::collada::detail::CColladaSoftwareSkinTechnique
; alias: _ZN6glitch7collada6detail29CColladaSoftwareSkinTechnique12prepareCacheEv
; demangled: glitch::collada::detail::CColladaSoftwareSkinTechnique::prepareCache()
; decoder-mode: arm
0066fe34  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0066fe38  10 30 90 e5                                      ldr r3, [r0, #0x10]
0066fe3c  d0 d0 4d e2                                      sub sp, sp, #0xd0
0066fe40  00 50 a0 e1                                      mov r5, r0
0066fe44  00 30 93 e5                                      ldr r3, [r3]
0066fe48  01 00 13 e3                                      tst r3, #1
0066fe4c  01 00 00 1a                                      bne #0x66fe58
0066fe50  d0 d0 8d e2                                      add sp, sp, #0xd0
0066fe54  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0066fe58  15 ff ff eb                                      bl #0x66fab4
0066fe5c  0c 30 95 e5                                      ldr r3, [r5, #0xc]
0066fe60  10 80 95 e5                                      ldr r8, [r5, #0x10]
0066fe64  8c 40 8d e2                                      add r4, sp, #0x8c
0066fe68  74 70 93 e5                                      ldr r7, [r3, #0x74]
0066fe6c  00 60 a0 e3                                      mov r6, #0
0066fe70  06 10 a0 e1                                      mov r1, r6
0066fe74  40 20 a0 e3                                      mov r2, #0x40
0066fe78  04 00 a0 e1                                      mov r0, r4
0066fe7c  04 80 88 e2                                      add r8, r8, #4
0066fe80  76 79 f2 eb                                      bl #0x30e460
0066fe84  fe 35 a0 e3                                      mov r3, #0x3f800000
0066fe88  04 20 a0 e1                                      mov r2, r4
0066fe8c  01 c0 a0 e3                                      mov ip, #1
0066fe90  08 00 a0 e1                                      mov r0, r8
0066fe94  07 10 a0 e1                                      mov r1, r7
0066fe98  c8 30 8d e5                                      str r3, [sp, #0xc8]
0066fe9c  8c 30 8d e5                                      str r3, [sp, #0x8c]
0066fea0  a0 30 8d e5                                      str r3, [sp, #0xa0]
0066fea4  b4 30 8d e5                                      str r3, [sp, #0xb4]
0066fea8  cc c0 cd e5                                      strb ip, [sp, #0xcc]
0066feac  7a f3 ff eb                                      bl #0x66cc9c
0066feb0  10 30 95 e5                                      ldr r3, [r5, #0x10]
0066feb4  10 20 93 e5                                      ldr r2, [r3, #0x10]
0066feb8  14 90 93 e5                                      ldr sb, [r3, #0x14]
0066febc  09 90 62 e0                                      rsb sb, r2, sb
0066fec0  49 91 b0 e1                                      asrs sb, sb, #2
0066fec4  1b 00 00 0a                                      beq #0x66ff38
0066fec8  06 40 a0 e1                                      mov r4, r6
0066fecc  48 80 8d e2                                      add r8, sp, #0x48
0066fed0  04 70 8d e2                                      add r7, sp, #4
0066fed4  01 00 00 ea                                      b #0x66fee0
0066fed8  10 30 95 e5                                      ldr r3, [r5, #0x10]
0066fedc  10 20 93 e5                                      ldr r2, [r3, #0x10]
0066fee0  0c 00 95 e5                                      ldr r0, [r5, #0xc]
0066fee4  04 11 92 e7                                      ldr r1, [r2, r4, lsl #2]
0066fee8  04 a0 93 e5                                      ldr sl, [r3, #4]
0066feec  04 20 90 e5                                      ldr r2, [r0, #4]
0066fef0  08 00 a0 e1                                      mov r0, r8
0066fef4  06 a0 8a e0                                      add sl, sl, r6
0066fef8  04 23 82 e0                                      add r2, r2, r4, lsl #6
0066fefc  a7 d4 ff eb                                      bl #0x6651a0
0066ff00  0c 20 95 e5                                      ldr r2, [r5, #0xc]
0066ff04  07 00 a0 e1                                      mov r0, r7
0066ff08  08 10 a0 e1                                      mov r1, r8
0066ff0c  10 20 82 e2                                      add r2, r2, #0x10
0066ff10  a2 d4 ff eb                                      bl #0x6651a0
0066ff14  01 40 84 e2                                      add r4, r4, #1
0066ff18  0a 00 a0 e1                                      mov r0, sl
0066ff1c  07 10 a0 e1                                      mov r1, r7
0066ff20  41 20 a0 e3                                      mov r2, #0x41
0066ff24  4f 7a f2 eb                                      bl #0x30e868
0066ff28  09 00 54 e1                                      cmp r4, sb
0066ff2c  44 60 86 e2                                      add r6, r6, #0x44
0066ff30  e8 ff ff 1a                                      bne #0x66fed8
0066ff34  10 30 95 e5                                      ldr r3, [r5, #0x10]
0066ff38  00 20 93 e5                                      ldr r2, [r3]
0066ff3c  01 20 c2 e3                                      bic r2, r2, #1
0066ff40  00 20 83 e5                                      str r2, [r3]
0066ff44  c1 ff ff ea                                      b #0x66fe50

; FUNCTION 0x0066ff48, declared_size=2840, range_size=2840, mode=arm
; class-group: glitch::collada::detail::CColladaSoftwareSkinTechnique
; alias: _ZN6glitch7collada6detail29CColladaSoftwareSkinTechnique4skinERNS0_11SSkinBufferEPNS_5scene11CMeshBufferE
; demangled: glitch::collada::detail::CColladaSoftwareSkinTechnique::skin(glitch::collada::SSkinBuffer&, glitch::scene::CMeshBuffer*)
; decoder-mode: arm
0066ff48  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0066ff4c  bc d0 4d e2                                      sub sp, sp, #0xbc
0066ff50  64 00 8d e5                                      str r0, [sp, #0x64]
0066ff54  02 70 a0 e1                                      mov r7, r2
0066ff58  00 30 90 e5                                      ldr r3, [r0]
0066ff5c  01 50 a0 e1                                      mov r5, r1
0066ff60  0f e0 a0 e1                                      mov lr, pc
0066ff64  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0066ff68  14 00 97 e5                                      ldr r0, [r7, #0x14]
0066ff6c  01 10 a0 e3                                      mov r1, #1
0066ff70  8c 00 8d e5                                      str r0, [sp, #0x8c]
0066ff74  24 40 97 e5                                      ldr r4, [r7, #0x24]
0066ff78  28 70 97 e5                                      ldr r7, [r7, #0x28]
0066ff7c  14 60 80 e2                                      add r6, r0, #0x14
0066ff80  14 00 90 e5                                      ldr r0, [r0, #0x14]
0066ff84  70 70 8d e5                                      str r7, [sp, #0x70]
0066ff88  be 20 d6 e1                                      ldrh r2, [r6, #0xe]
0066ff8c  7c 20 8d e5                                      str r2, [sp, #0x7c]
0066ff90  d1 c6 fc eb                                      bl #0x5a1adc
0066ff94  8c 30 9d e5                                      ldr r3, [sp, #0x8c]
0066ff98  04 10 96 e5                                      ldr r1, [r6, #4]
0066ff9c  04 20 93 e5                                      ldr r2, [r3, #4]
0066ffa0  be 30 d6 e1                                      ldrh r3, [r6, #0xe]
0066ffa4  01 10 80 e0                                      add r1, r0, r1
0066ffa8  02 08 12 e3                                      tst r2, #0x20000
0066ffac  94 13 23 e0                                      mla r3, r4, r3, r1
0066ffb0  8c c0 9d 15                                      ldrne ip, [sp, #0x8c]
0066ffb4  58 30 8d e5                                      str r3, [sp, #0x58]
0066ffb8  a8 10 8d e5                                      str r1, [sp, #0xa8]
0066ffbc  8c 00 9d 05                                      ldreq r0, [sp, #0x8c]
0066ffc0  0c 30 dc 15                                      ldrbne r3, [ip, #0xc]
0066ffc4  04 10 a0 e3                                      mov r1, #4
0066ffc8  10 00 90 05                                      ldreq r0, [r0, #0x10]
0066ffcc  01 30 83 12                                      addne r3, r3, #1
0066ffd0  03 32 86 10                                      addne r3, r6, r3, lsl #4
0066ffd4  90 30 8d 15                                      strne r3, [sp, #0x90]
0066ffd8  90 00 8d 05                                      streq r0, [sp, #0x90]
0066ffdc  00 30 95 e5                                      ldr r3, [r5]
0066ffe0  14 30 93 e5                                      ldr r3, [r3, #0x14]
0066ffe4  84 30 8d e5                                      str r3, [sp, #0x84]
0066ffe8  14 00 93 e5                                      ldr r0, [r3, #0x14]
0066ffec  7f c6 fc eb                                      bl #0x5a19f0
0066fff0  64 10 9d e5                                      ldr r1, [sp, #0x64]
0066fff4  84 20 9d e5                                      ldr r2, [sp, #0x84]
0066fff8  84 c0 9d e5                                      ldr ip, [sp, #0x84]
0066fffc  0c 30 91 e5                                      ldr r3, [r1, #0xc]
00670000  14 20 82 e2                                      add r2, r2, #0x14
00670004  88 20 8d e5                                      str r2, [sp, #0x88]
00670008  04 10 92 e5                                      ldr r1, [r2, #4]
0067000c  98 20 d3 e5                                      ldrb r2, [r3, #0x98]
00670010  04 30 9c e5                                      ldr r3, [ip, #4]
00670014  88 c0 9d e5                                      ldr ip, [sp, #0x88]
00670018  01 10 80 e0                                      add r1, r0, r1
0067001c  01 20 82 e2                                      add r2, r2, #1
00670020  be c0 dc e1                                      ldrh ip, [ip, #0xe]
00670024  02 21 a0 e1                                      lsl r2, r2, #2
00670028  02 38 13 e2                                      ands r3, r3, #0x20000
0067002c  94 1c 20 e0                                      mla r0, r4, ip, r1
00670030  74 c0 8d e5                                      str ip, [sp, #0x74]
00670034  a4 10 8d e5                                      str r1, [sp, #0xa4]
00670038  78 20 8d e5                                      str r2, [sp, #0x78]
0067003c  50 00 8d e5                                      str r0, [sp, #0x50]
00670040  4b 02 00 1a                                      bne #0x670974
00670044  84 10 9d e5                                      ldr r1, [sp, #0x84]
00670048  0c 20 d1 e5                                      ldrb r2, [r1, #0xc]
0067004c  ac 30 8d e5                                      str r3, [sp, #0xac]
00670050  01 20 82 e2                                      add r2, r2, #1
00670054  84 c0 9d e5                                      ldr ip, [sp, #0x84]
00670058  88 00 9d e5                                      ldr r0, [sp, #0x88]
0067005c  12 10 a0 e3                                      mov r1, #0x12
00670060  10 30 9c e5                                      ldr r3, [ip, #0x10]
00670064  02 22 80 e0                                      add r2, r0, r2, lsl #4
00670068  0c 00 a0 e1                                      mov r0, ip
0067006c  9f c2 fc eb                                      bl #0x5a0af0
00670070  12 50 d5 e5                                      ldrb r5, [r5, #0x12]
00670074  88 20 9d e5                                      ldr r2, [sp, #0x88]
00670078  01 10 a0 e3                                      mov r1, #1
0067007c  94 50 8d e5                                      str r5, [sp, #0x94]
00670080  05 02 92 e7                                      ldr r0, [r2, r5, lsl #4]
00670084  94 c6 fc eb                                      bl #0x5a1adc
00670088  88 c0 9d e5                                      ldr ip, [sp, #0x88]
0067008c  94 50 9d e5                                      ldr r5, [sp, #0x94]
00670090  05 32 8c e0                                      add r3, ip, r5, lsl #4
00670094  04 20 93 e5                                      ldr r2, [r3, #4]
00670098  8c c0 9d e5                                      ldr ip, [sp, #0x8c]
0067009c  be 30 d3 e1                                      ldrh r3, [r3, #0xe]
006700a0  02 20 80 e0                                      add r2, r0, r2
006700a4  10 10 9c e5                                      ldr r1, [ip, #0x10]
006700a8  94 23 23 e0                                      mla r3, r4, r3, r2
006700ac  90 00 9d e5                                      ldr r0, [sp, #0x90]
006700b0  04 30 83 e2                                      add r3, r3, #4
006700b4  a0 20 8d e5                                      str r2, [sp, #0xa0]
006700b8  01 00 50 e1                                      cmp r0, r1
006700bc  54 30 8d e5                                      str r3, [sp, #0x54]
006700c0  3c 01 00 0a                                      beq #0x6705b8
006700c4  90 20 9d e5                                      ldr r2, [sp, #0x90]
006700c8  00 30 92 e5                                      ldr r3, [r2]
006700cc  00 00 53 e3                                      cmp r3, #0
006700d0  38 01 00 0a                                      beq #0x6705b8
006700d4  ac 30 9d e5                                      ldr r3, [sp, #0xac]
006700d8  00 00 93 e5                                      ldr r0, [r3]
006700dc  00 00 50 e3                                      cmp r0, #0
006700e0  34 01 00 0a                                      beq #0x6705b8
006700e4  04 10 a0 e3                                      mov r1, #4
006700e8  40 c6 fc eb                                      bl #0x5a19f0
006700ec  ac c0 9d e5                                      ldr ip, [sp, #0xac]
006700f0  01 10 a0 e3                                      mov r1, #1
006700f4  04 30 9c e5                                      ldr r3, [ip, #4]
006700f8  be 20 dc e1                                      ldrh r2, [ip, #0xe]
006700fc  03 30 80 e0                                      add r3, r0, r3
00670100  b4 30 8d e5                                      str r3, [sp, #0xb4]
00670104  90 30 9d e5                                      ldr r3, [sp, #0x90]
00670108  9c 20 8d e5                                      str r2, [sp, #0x9c]
0067010c  00 00 93 e5                                      ldr r0, [r3]
00670110  71 c6 fc eb                                      bl #0x5a1adc
00670114  90 c0 9d e5                                      ldr ip, [sp, #0x90]
00670118  70 10 9d e5                                      ldr r1, [sp, #0x70]
0067011c  04 30 9c e5                                      ldr r3, [ip, #4]
00670120  be 20 dc e1                                      ldrh r2, [ip, #0xe]
00670124  01 00 54 e1                                      cmp r4, r1
00670128  03 30 80 e0                                      add r3, r0, r3
0067012c  98 20 8d e5                                      str r2, [sp, #0x98]
00670130  b0 30 8d e5                                      str r3, [sp, #0xb0]
00670134  bc 01 00 2a                                      bhs #0x67082c
00670138  9c 30 9d e5                                      ldr r3, [sp, #0x9c]
0067013c  b4 c0 9d e5                                      ldr ip, [sp, #0xb4]
00670140  b0 00 9d e5                                      ldr r0, [sp, #0xb0]
00670144  80 40 8d e5                                      str r4, [sp, #0x80]
00670148  94 c3 23 e0                                      mla r3, r4, r3, ip
0067014c  94 02 24 e0                                      mla r4, r4, r2, r0
00670150  68 30 8d e5                                      str r3, [sp, #0x68]
00670154  6c 40 8d e5                                      str r4, [sp, #0x6c]
00670158  64 10 9d e5                                      ldr r1, [sp, #0x64]
0067015c  54 20 9d e5                                      ldr r2, [sp, #0x54]
00670160  0c 30 91 e5                                      ldr r3, [r1, #0xc]
00670164  04 c0 42 e2                                      sub ip, r2, #4
00670168  4c 20 8d e5                                      str r2, [sp, #0x4c]
0067016c  60 c0 8d e5                                      str ip, [sp, #0x60]
00670170  98 30 d3 e5                                      ldrb r3, [r3, #0x98]
00670174  00 00 53 e3                                      cmp r3, #0
00670178  5c 30 8d e5                                      str r3, [sp, #0x5c]
0067017c  16 02 00 0a                                      beq #0x6709dc
00670180  00 50 92 e5                                      ldr r5, [r2]
00670184  00 10 a0 e3                                      mov r1, #0
00670188  05 00 a0 e1                                      mov r0, r5
0067018c  7e 77 f2 eb                                      bl #0x30df8c
00670190  00 00 50 e3                                      cmp r0, #0
00670194  10 02 00 1a                                      bne #0x6709dc
00670198  6c 20 9d e5                                      ldr r2, [sp, #0x6c]
0067019c  00 00 a0 e3                                      mov r0, #0
006701a0  64 10 9d e5                                      ldr r1, [sp, #0x64]
006701a4  30 00 8d e5                                      str r0, [sp, #0x30]
006701a8  04 c0 92 e5                                      ldr ip, [r2, #4]
006701ac  10 30 91 e5                                      ldr r3, [r1, #0x10]
006701b0  00 70 92 e5                                      ldr r7, [r2]
006701b4  18 c0 8d e5                                      str ip, [sp, #0x18]
006701b8  04 30 93 e5                                      ldr r3, [r3, #4]
006701bc  58 10 9d e5                                      ldr r1, [sp, #0x58]
006701c0  30 c0 9d e5                                      ldr ip, [sp, #0x30]
006701c4  48 30 8d e5                                      str r3, [sp, #0x48]
006701c8  08 00 92 e5                                      ldr r0, [r2, #8]
006701cc  58 20 9d e5                                      ldr r2, [sp, #0x58]
006701d0  58 30 9d e5                                      ldr r3, [sp, #0x58]
006701d4  14 00 8d e5                                      str r0, [sp, #0x14]
006701d8  00 10 91 e5                                      ldr r1, [r1]
006701dc  01 60 a0 e3                                      mov r6, #1
006701e0  10 10 8d e5                                      str r1, [sp, #0x10]
006701e4  04 20 92 e5                                      ldr r2, [r2, #4]
006701e8  0c 20 8d e5                                      str r2, [sp, #0xc]
006701ec  08 30 93 e5                                      ldr r3, [r3, #8]
006701f0  40 c0 8d e5                                      str ip, [sp, #0x40]
006701f4  44 c0 8d e5                                      str ip, [sp, #0x44]
006701f8  08 30 8d e5                                      str r3, [sp, #8]
006701fc  34 c0 8d e5                                      str ip, [sp, #0x34]
00670200  00 30 a0 e3                                      mov r3, #0
00670204  38 c0 8d e5                                      str ip, [sp, #0x38]
00670208  3c c0 8d e5                                      str ip, [sp, #0x3c]
0067020c  0a 00 00 ea                                      b #0x67023c
00670210  4c 10 9d e5                                      ldr r1, [sp, #0x4c]
00670214  01 40 86 e2                                      add r4, r6, #1
00670218  04 50 b1 e5                                      ldr r5, [r1, #4]!
0067021c  4c 10 8d e5                                      str r1, [sp, #0x4c]
00670220  05 00 a0 e1                                      mov r0, r5
00670224  00 10 a0 e3                                      mov r1, #0
00670228  57 77 f2 eb                                      bl #0x30df8c
0067022c  00 00 50 e3                                      cmp r0, #0
00670230  b7 00 00 1a                                      bne #0x670514
00670234  06 30 a0 e1                                      mov r3, r6
00670238  04 60 a0 e1                                      mov r6, r4
0067023c  60 20 9d e5                                      ldr r2, [sp, #0x60]
00670240  48 c0 9d e5                                      ldr ip, [sp, #0x48]
00670244  10 10 9d e5                                      ldr r1, [sp, #0x10]
00670248  03 40 d2 e7                                      ldrb r4, [r2, r3]
0067024c  44 30 a0 e3                                      mov r3, #0x44
00670250  93 04 04 e0                                      mul r4, r3, r4
00670254  04 b0 9c e7                                      ldr fp, [ip, r4]
00670258  04 40 8c e0                                      add r4, ip, r4
0067025c  10 90 94 e5                                      ldr sb, [r4, #0x10]
00670260  0b 00 a0 e1                                      mov r0, fp
00670264  c0 7a f2 eb                                      bl #0x30ed6c
00670268  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0067026c  00 80 a0 e1                                      mov r8, r0
00670270  09 00 a0 e1                                      mov r0, sb
00670274  bc 7a f2 eb                                      bl #0x30ed6c
00670278  00 10 a0 e1                                      mov r1, r0
0067027c  08 00 a0 e1                                      mov r0, r8
00670280  47 7a f2 eb                                      bl #0x30eba4
00670284  20 a0 94 e5                                      ldr sl, [r4, #0x20]
00670288  00 80 a0 e1                                      mov r8, r0
0067028c  08 10 9d e5                                      ldr r1, [sp, #8]
00670290  0a 00 a0 e1                                      mov r0, sl
00670294  b4 7a f2 eb                                      bl #0x30ed6c
00670298  00 10 a0 e1                                      mov r1, r0
0067029c  08 00 a0 e1                                      mov r0, r8
006702a0  3f 7a f2 eb                                      bl #0x30eba4
006702a4  30 10 94 e5                                      ldr r1, [r4, #0x30]
006702a8  3d 7a f2 eb                                      bl #0x30eba4
006702ac  00 10 a0 e1                                      mov r1, r0
006702b0  05 00 a0 e1                                      mov r0, r5
006702b4  ac 7a f2 eb                                      bl #0x30ed6c
006702b8  00 10 a0 e1                                      mov r1, r0
006702bc  30 00 9d e5                                      ldr r0, [sp, #0x30]
006702c0  37 7a f2 eb                                      bl #0x30eba4
006702c4  04 80 94 e5                                      ldr r8, [r4, #4]
006702c8  30 00 8d e5                                      str r0, [sp, #0x30]
006702cc  14 20 94 e5                                      ldr r2, [r4, #0x14]
006702d0  10 10 9d e5                                      ldr r1, [sp, #0x10]
006702d4  08 00 a0 e1                                      mov r0, r8
006702d8  1c 20 8d e5                                      str r2, [sp, #0x1c]
006702dc  a2 7a f2 eb                                      bl #0x30ed6c
006702e0  0c 10 9d e5                                      ldr r1, [sp, #0xc]
006702e4  00 30 a0 e1                                      mov r3, r0
006702e8  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
006702ec  04 30 8d e5                                      str r3, [sp, #4]
006702f0  9d 7a f2 eb                                      bl #0x30ed6c
006702f4  04 30 9d e5                                      ldr r3, [sp, #4]
006702f8  00 10 a0 e1                                      mov r1, r0
006702fc  03 00 a0 e1                                      mov r0, r3
00670300  24 30 94 e5                                      ldr r3, [r4, #0x24]
00670304  20 30 8d e5                                      str r3, [sp, #0x20]
00670308  25 7a f2 eb                                      bl #0x30eba4
0067030c  08 10 9d e5                                      ldr r1, [sp, #8]
00670310  00 30 a0 e1                                      mov r3, r0
00670314  20 00 9d e5                                      ldr r0, [sp, #0x20]
00670318  04 30 8d e5                                      str r3, [sp, #4]
0067031c  92 7a f2 eb                                      bl #0x30ed6c
00670320  04 30 9d e5                                      ldr r3, [sp, #4]
00670324  00 10 a0 e1                                      mov r1, r0
00670328  03 00 a0 e1                                      mov r0, r3
0067032c  1c 7a f2 eb                                      bl #0x30eba4
00670330  34 10 94 e5                                      ldr r1, [r4, #0x34]
00670334  1a 7a f2 eb                                      bl #0x30eba4
00670338  00 10 a0 e1                                      mov r1, r0
0067033c  05 00 a0 e1                                      mov r0, r5
00670340  89 7a f2 eb                                      bl #0x30ed6c
00670344  08 c0 94 e5                                      ldr ip, [r4, #8]
00670348  00 10 a0 e1                                      mov r1, r0
0067034c  40 00 9d e5                                      ldr r0, [sp, #0x40]
00670350  24 c0 8d e5                                      str ip, [sp, #0x24]
00670354  12 7a f2 eb                                      bl #0x30eba4
00670358  40 00 8d e5                                      str r0, [sp, #0x40]
0067035c  18 20 94 e5                                      ldr r2, [r4, #0x18]
00670360  10 10 9d e5                                      ldr r1, [sp, #0x10]
00670364  24 00 9d e5                                      ldr r0, [sp, #0x24]
00670368  28 20 8d e5                                      str r2, [sp, #0x28]
0067036c  7e 7a f2 eb                                      bl #0x30ed6c
00670370  0c 10 9d e5                                      ldr r1, [sp, #0xc]
00670374  00 30 a0 e1                                      mov r3, r0
00670378  28 00 9d e5                                      ldr r0, [sp, #0x28]
0067037c  04 30 8d e5                                      str r3, [sp, #4]
00670380  79 7a f2 eb                                      bl #0x30ed6c
00670384  04 30 9d e5                                      ldr r3, [sp, #4]
00670388  00 10 a0 e1                                      mov r1, r0
0067038c  03 00 a0 e1                                      mov r0, r3
00670390  28 30 94 e5                                      ldr r3, [r4, #0x28]
00670394  2c 30 8d e5                                      str r3, [sp, #0x2c]
00670398  01 7a f2 eb                                      bl #0x30eba4
0067039c  08 10 9d e5                                      ldr r1, [sp, #8]
006703a0  00 30 a0 e1                                      mov r3, r0
006703a4  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
006703a8  04 30 8d e5                                      str r3, [sp, #4]
006703ac  6e 7a f2 eb                                      bl #0x30ed6c
006703b0  04 30 9d e5                                      ldr r3, [sp, #4]
006703b4  00 10 a0 e1                                      mov r1, r0
006703b8  03 00 a0 e1                                      mov r0, r3
006703bc  f8 79 f2 eb                                      bl #0x30eba4
006703c0  38 10 94 e5                                      ldr r1, [r4, #0x38]
006703c4  f6 79 f2 eb                                      bl #0x30eba4
006703c8  00 10 a0 e1                                      mov r1, r0
006703cc  05 00 a0 e1                                      mov r0, r5
006703d0  65 7a f2 eb                                      bl #0x30ed6c
006703d4  00 10 a0 e1                                      mov r1, r0
006703d8  44 00 9d e5                                      ldr r0, [sp, #0x44]
006703dc  f0 79 f2 eb                                      bl #0x30eba4
006703e0  07 10 a0 e1                                      mov r1, r7
006703e4  44 00 8d e5                                      str r0, [sp, #0x44]
006703e8  0b 00 a0 e1                                      mov r0, fp
006703ec  5e 7a f2 eb                                      bl #0x30ed6c
006703f0  18 10 9d e5                                      ldr r1, [sp, #0x18]
006703f4  00 40 a0 e1                                      mov r4, r0
006703f8  09 00 a0 e1                                      mov r0, sb
006703fc  5a 7a f2 eb                                      bl #0x30ed6c
00670400  00 10 a0 e1                                      mov r1, r0
00670404  04 00 a0 e1                                      mov r0, r4
00670408  e5 79 f2 eb                                      bl #0x30eba4
0067040c  14 10 9d e5                                      ldr r1, [sp, #0x14]
00670410  00 40 a0 e1                                      mov r4, r0
00670414  0a 00 a0 e1                                      mov r0, sl
00670418  53 7a f2 eb                                      bl #0x30ed6c
0067041c  00 10 a0 e1                                      mov r1, r0
00670420  04 00 a0 e1                                      mov r0, r4
00670424  de 79 f2 eb                                      bl #0x30eba4
00670428  00 10 a0 e1                                      mov r1, r0
0067042c  05 00 a0 e1                                      mov r0, r5
00670430  4d 7a f2 eb                                      bl #0x30ed6c
00670434  00 10 a0 e1                                      mov r1, r0
00670438  34 00 9d e5                                      ldr r0, [sp, #0x34]
0067043c  d8 79 f2 eb                                      bl #0x30eba4
00670440  07 10 a0 e1                                      mov r1, r7
00670444  34 00 8d e5                                      str r0, [sp, #0x34]
00670448  08 00 a0 e1                                      mov r0, r8
0067044c  46 7a f2 eb                                      bl #0x30ed6c
00670450  18 10 9d e5                                      ldr r1, [sp, #0x18]
00670454  00 40 a0 e1                                      mov r4, r0
00670458  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0067045c  42 7a f2 eb                                      bl #0x30ed6c
00670460  00 10 a0 e1                                      mov r1, r0
00670464  04 00 a0 e1                                      mov r0, r4
00670468  cd 79 f2 eb                                      bl #0x30eba4
0067046c  14 10 9d e5                                      ldr r1, [sp, #0x14]
00670470  00 40 a0 e1                                      mov r4, r0
00670474  20 00 9d e5                                      ldr r0, [sp, #0x20]
00670478  3b 7a f2 eb                                      bl #0x30ed6c
0067047c  00 10 a0 e1                                      mov r1, r0
00670480  04 00 a0 e1                                      mov r0, r4
00670484  c6 79 f2 eb                                      bl #0x30eba4
00670488  00 10 a0 e1                                      mov r1, r0
0067048c  05 00 a0 e1                                      mov r0, r5
00670490  35 7a f2 eb                                      bl #0x30ed6c
00670494  00 10 a0 e1                                      mov r1, r0
00670498  38 00 9d e5                                      ldr r0, [sp, #0x38]
0067049c  c0 79 f2 eb                                      bl #0x30eba4
006704a0  07 10 a0 e1                                      mov r1, r7
006704a4  38 00 8d e5                                      str r0, [sp, #0x38]
006704a8  24 00 9d e5                                      ldr r0, [sp, #0x24]
006704ac  2e 7a f2 eb                                      bl #0x30ed6c
006704b0  18 10 9d e5                                      ldr r1, [sp, #0x18]
006704b4  00 40 a0 e1                                      mov r4, r0
006704b8  28 00 9d e5                                      ldr r0, [sp, #0x28]
006704bc  2a 7a f2 eb                                      bl #0x30ed6c
006704c0  00 10 a0 e1                                      mov r1, r0
006704c4  04 00 a0 e1                                      mov r0, r4
006704c8  b5 79 f2 eb                                      bl #0x30eba4
006704cc  14 10 9d e5                                      ldr r1, [sp, #0x14]
006704d0  00 40 a0 e1                                      mov r4, r0
006704d4  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
006704d8  23 7a f2 eb                                      bl #0x30ed6c
006704dc  00 10 a0 e1                                      mov r1, r0
006704e0  04 00 a0 e1                                      mov r0, r4
006704e4  ae 79 f2 eb                                      bl #0x30eba4
006704e8  00 10 a0 e1                                      mov r1, r0
006704ec  05 00 a0 e1                                      mov r0, r5
006704f0  1d 7a f2 eb                                      bl #0x30ed6c
006704f4  00 10 a0 e1                                      mov r1, r0
006704f8  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
006704fc  a8 79 f2 eb                                      bl #0x30eba4
00670500  5c c0 9d e5                                      ldr ip, [sp, #0x5c]
00670504  76 30 ef e6                                      uxtb r3, r6
00670508  3c 00 8d e5                                      str r0, [sp, #0x3c]
0067050c  03 00 5c e1                                      cmp ip, r3
00670510  3e ff ff 8a                                      bhi #0x670210
00670514  80 10 9d e5                                      ldr r1, [sp, #0x80]
00670518  30 30 9d e5                                      ldr r3, [sp, #0x30]
0067051c  50 c0 9d e5                                      ldr ip, [sp, #0x50]
00670520  01 10 81 e2                                      add r1, r1, #1
00670524  70 20 9d e5                                      ldr r2, [sp, #0x70]
00670528  80 10 8d e5                                      str r1, [sp, #0x80]
0067052c  00 30 8c e5                                      str r3, [ip]
00670530  40 00 9d e5                                      ldr r0, [sp, #0x40]
00670534  02 00 51 e1                                      cmp r1, r2
00670538  04 00 8c e5                                      str r0, [ip, #4]
0067053c  44 10 9d e5                                      ldr r1, [sp, #0x44]
00670540  08 10 8c e5                                      str r1, [ip, #8]
00670544  34 20 9d e5                                      ldr r2, [sp, #0x34]
00670548  68 30 9d e5                                      ldr r3, [sp, #0x68]
0067054c  00 20 83 e5                                      str r2, [r3]
00670550  38 c0 9d e5                                      ldr ip, [sp, #0x38]
00670554  04 c0 83 e5                                      str ip, [r3, #4]
00670558  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
0067055c  08 00 83 e5                                      str r0, [r3, #8]
00670560  b1 00 00 2a                                      bhs #0x67082c
00670564  54 10 9d e5                                      ldr r1, [sp, #0x54]
00670568  78 20 9d e5                                      ldr r2, [sp, #0x78]
0067056c  50 30 9d e5                                      ldr r3, [sp, #0x50]
00670570  74 c0 9d e5                                      ldr ip, [sp, #0x74]
00670574  02 10 81 e0                                      add r1, r1, r2
00670578  68 00 9d e5                                      ldr r0, [sp, #0x68]
0067057c  54 10 8d e5                                      str r1, [sp, #0x54]
00670580  9c 10 9d e5                                      ldr r1, [sp, #0x9c]
00670584  0c 30 83 e0                                      add r3, r3, ip
00670588  58 20 9d e5                                      ldr r2, [sp, #0x58]
0067058c  01 00 80 e0                                      add r0, r0, r1
00670590  6c c0 9d e5                                      ldr ip, [sp, #0x6c]
00670594  50 30 8d e5                                      str r3, [sp, #0x50]
00670598  68 00 8d e5                                      str r0, [sp, #0x68]
0067059c  7c 30 9d e5                                      ldr r3, [sp, #0x7c]
006705a0  98 00 9d e5                                      ldr r0, [sp, #0x98]
006705a4  03 20 82 e0                                      add r2, r2, r3
006705a8  00 c0 8c e0                                      add ip, ip, r0
006705ac  58 20 8d e5                                      str r2, [sp, #0x58]
006705b0  6c c0 8d e5                                      str ip, [sp, #0x6c]
006705b4  e7 fe ff ea                                      b #0x670158
006705b8  70 10 9d e5                                      ldr r1, [sp, #0x70]
006705bc  01 00 54 e1                                      cmp r4, r1
006705c0  20 40 8d 35                                      strlo r4, [sp, #0x20]
006705c4  bc 00 00 2a                                      bhs #0x6708bc
006705c8  64 00 9d e5                                      ldr r0, [sp, #0x64]
006705cc  54 10 9d e5                                      ldr r1, [sp, #0x54]
006705d0  0c 30 90 e5                                      ldr r3, [r0, #0xc]
006705d4  04 20 41 e2                                      sub r2, r1, #4
006705d8  14 10 8d e5                                      str r1, [sp, #0x14]
006705dc  1c 20 8d e5                                      str r2, [sp, #0x1c]
006705e0  98 30 d3 e5                                      ldrb r3, [r3, #0x98]
006705e4  00 00 53 e3                                      cmp r3, #0
006705e8  18 30 8d e5                                      str r3, [sp, #0x18]
006705ec  dc 00 00 0a                                      beq #0x670964
006705f0  00 50 91 e5                                      ldr r5, [r1]
006705f4  00 10 a0 e3                                      mov r1, #0
006705f8  05 00 a0 e1                                      mov r0, r5
006705fc  62 76 f2 eb                                      bl #0x30df8c
00670600  00 00 50 e3                                      cmp r0, #0
00670604  d6 00 00 1a                                      bne #0x670964
00670608  64 c0 9d e5                                      ldr ip, [sp, #0x64]
0067060c  58 00 9d e5                                      ldr r0, [sp, #0x58]
00670610  00 90 a0 e3                                      mov sb, #0
00670614  10 30 9c e5                                      ldr r3, [ip, #0x10]
00670618  00 a0 90 e5                                      ldr sl, [r0]
0067061c  04 80 90 e5                                      ldr r8, [r0, #4]
00670620  04 30 93 e5                                      ldr r3, [r3, #4]
00670624  01 60 a0 e3                                      mov r6, #1
00670628  10 30 8d e5                                      str r3, [sp, #0x10]
0067062c  08 70 90 e5                                      ldr r7, [r0, #8]
00670630  00 30 a0 e3                                      mov r3, #0
00670634  08 90 8d e5                                      str sb, [sp, #8]
00670638  0c 90 8d e5                                      str sb, [sp, #0xc]
0067063c  0a 00 00 ea                                      b #0x67066c
00670640  14 c0 9d e5                                      ldr ip, [sp, #0x14]
00670644  00 10 a0 e3                                      mov r1, #0
00670648  01 40 86 e2                                      add r4, r6, #1
0067064c  04 50 bc e5                                      ldr r5, [ip, #4]!
00670650  05 00 a0 e1                                      mov r0, r5
00670654  14 c0 8d e5                                      str ip, [sp, #0x14]
00670658  4b 76 f2 eb                                      bl #0x30df8c
0067065c  00 00 50 e3                                      cmp r0, #0
00670660  59 00 00 1a                                      bne #0x6707cc
00670664  06 30 a0 e1                                      mov r3, r6
00670668  04 60 a0 e1                                      mov r6, r4
0067066c  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00670670  44 10 a0 e3                                      mov r1, #0x44
00670674  10 20 9d e5                                      ldr r2, [sp, #0x10]
00670678  03 40 d0 e7                                      ldrb r4, [r0, r3]
0067067c  0a 00 a0 e1                                      mov r0, sl
00670680  91 04 04 e0                                      mul r4, r1, r4
00670684  04 10 92 e7                                      ldr r1, [r2, r4]
00670688  04 40 82 e0                                      add r4, r2, r4
0067068c  b6 79 f2 eb                                      bl #0x30ed6c
00670690  10 10 94 e5                                      ldr r1, [r4, #0x10]
00670694  00 b0 a0 e1                                      mov fp, r0
00670698  08 00 a0 e1                                      mov r0, r8
0067069c  b2 79 f2 eb                                      bl #0x30ed6c
006706a0  00 10 a0 e1                                      mov r1, r0
006706a4  0b 00 a0 e1                                      mov r0, fp
006706a8  3d 79 f2 eb                                      bl #0x30eba4
006706ac  20 10 94 e5                                      ldr r1, [r4, #0x20]
006706b0  00 b0 a0 e1                                      mov fp, r0
006706b4  07 00 a0 e1                                      mov r0, r7
006706b8  ab 79 f2 eb                                      bl #0x30ed6c
006706bc  00 10 a0 e1                                      mov r1, r0
006706c0  0b 00 a0 e1                                      mov r0, fp
006706c4  36 79 f2 eb                                      bl #0x30eba4
006706c8  30 10 94 e5                                      ldr r1, [r4, #0x30]
006706cc  34 79 f2 eb                                      bl #0x30eba4
006706d0  00 10 a0 e1                                      mov r1, r0
006706d4  05 00 a0 e1                                      mov r0, r5
006706d8  a3 79 f2 eb                                      bl #0x30ed6c
006706dc  00 10 a0 e1                                      mov r1, r0
006706e0  08 00 9d e5                                      ldr r0, [sp, #8]
006706e4  2e 79 f2 eb                                      bl #0x30eba4
006706e8  08 00 8d e5                                      str r0, [sp, #8]
006706ec  04 10 94 e5                                      ldr r1, [r4, #4]
006706f0  0a 00 a0 e1                                      mov r0, sl
006706f4  9c 79 f2 eb                                      bl #0x30ed6c
006706f8  14 10 94 e5                                      ldr r1, [r4, #0x14]
006706fc  00 b0 a0 e1                                      mov fp, r0
00670700  08 00 a0 e1                                      mov r0, r8
00670704  98 79 f2 eb                                      bl #0x30ed6c
00670708  00 10 a0 e1                                      mov r1, r0
0067070c  0b 00 a0 e1                                      mov r0, fp
00670710  23 79 f2 eb                                      bl #0x30eba4
00670714  24 10 94 e5                                      ldr r1, [r4, #0x24]
00670718  00 b0 a0 e1                                      mov fp, r0
0067071c  07 00 a0 e1                                      mov r0, r7
00670720  91 79 f2 eb                                      bl #0x30ed6c
00670724  00 10 a0 e1                                      mov r1, r0
00670728  0b 00 a0 e1                                      mov r0, fp
0067072c  1c 79 f2 eb                                      bl #0x30eba4
00670730  34 10 94 e5                                      ldr r1, [r4, #0x34]
00670734  1a 79 f2 eb                                      bl #0x30eba4
00670738  00 10 a0 e1                                      mov r1, r0
0067073c  05 00 a0 e1                                      mov r0, r5
00670740  89 79 f2 eb                                      bl #0x30ed6c
00670744  00 10 a0 e1                                      mov r1, r0
00670748  09 00 a0 e1                                      mov r0, sb
0067074c  14 79 f2 eb                                      bl #0x30eba4
00670750  08 10 94 e5                                      ldr r1, [r4, #8]
00670754  00 90 a0 e1                                      mov sb, r0
00670758  0a 00 a0 e1                                      mov r0, sl
0067075c  82 79 f2 eb                                      bl #0x30ed6c
00670760  18 10 94 e5                                      ldr r1, [r4, #0x18]
00670764  00 b0 a0 e1                                      mov fp, r0
00670768  08 00 a0 e1                                      mov r0, r8
0067076c  7e 79 f2 eb                                      bl #0x30ed6c
00670770  00 10 a0 e1                                      mov r1, r0
00670774  0b 00 a0 e1                                      mov r0, fp
00670778  09 79 f2 eb                                      bl #0x30eba4
0067077c  28 10 94 e5                                      ldr r1, [r4, #0x28]
00670780  00 b0 a0 e1                                      mov fp, r0
00670784  07 00 a0 e1                                      mov r0, r7
00670788  77 79 f2 eb                                      bl #0x30ed6c
0067078c  00 10 a0 e1                                      mov r1, r0
00670790  0b 00 a0 e1                                      mov r0, fp
00670794  02 79 f2 eb                                      bl #0x30eba4
00670798  38 10 94 e5                                      ldr r1, [r4, #0x38]
0067079c  00 79 f2 eb                                      bl #0x30eba4
006707a0  00 10 a0 e1                                      mov r1, r0
006707a4  05 00 a0 e1                                      mov r0, r5
006707a8  6f 79 f2 eb                                      bl #0x30ed6c
006707ac  00 10 a0 e1                                      mov r1, r0
006707b0  0c 00 9d e5                                      ldr r0, [sp, #0xc]
006707b4  fa 78 f2 eb                                      bl #0x30eba4
006707b8  0c 00 8d e5                                      str r0, [sp, #0xc]
006707bc  18 c0 9d e5                                      ldr ip, [sp, #0x18]
006707c0  76 30 ef e6                                      uxtb r3, r6
006707c4  0c 00 53 e1                                      cmp r3, ip
006707c8  9c ff ff 3a                                      blo #0x670640
006707cc  20 00 9d e5                                      ldr r0, [sp, #0x20]
006707d0  08 20 9d e5                                      ldr r2, [sp, #8]
006707d4  50 30 9d e5                                      ldr r3, [sp, #0x50]
006707d8  01 00 80 e2                                      add r0, r0, #1
006707dc  70 10 9d e5                                      ldr r1, [sp, #0x70]
006707e0  20 00 8d e5                                      str r0, [sp, #0x20]
006707e4  00 20 83 e5                                      str r2, [r3]
006707e8  04 90 83 e5                                      str sb, [r3, #4]
006707ec  0c c0 9d e5                                      ldr ip, [sp, #0xc]
006707f0  01 00 50 e1                                      cmp r0, r1
006707f4  08 c0 83 e5                                      str ip, [r3, #8]
006707f8  2f 00 00 2a                                      bhs #0x6708bc
006707fc  74 20 9d e5                                      ldr r2, [sp, #0x74]
00670800  54 00 9d e5                                      ldr r0, [sp, #0x54]
00670804  78 10 9d e5                                      ldr r1, [sp, #0x78]
00670808  02 30 83 e0                                      add r3, r3, r2
0067080c  50 30 8d e5                                      str r3, [sp, #0x50]
00670810  7c c0 9d e5                                      ldr ip, [sp, #0x7c]
00670814  58 30 9d e5                                      ldr r3, [sp, #0x58]
00670818  01 00 80 e0                                      add r0, r0, r1
0067081c  54 00 8d e5                                      str r0, [sp, #0x54]
00670820  0c 30 83 e0                                      add r3, r3, ip
00670824  58 30 8d e5                                      str r3, [sp, #0x58]
00670828  66 ff ff ea                                      b #0x6705c8
0067082c  b0 00 9d e5                                      ldr r0, [sp, #0xb0]
00670830  00 00 50 e3                                      cmp r0, #0
00670834  0e 00 00 0a                                      beq #0x670874
00670838  90 10 9d e5                                      ldr r1, [sp, #0x90]
0067083c  00 40 91 e5                                      ldr r4, [r1]
00670840  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
00670844  1f 20 03 e2                                      and r2, r3, #0x1f
00670848  01 00 52 e3                                      cmp r2, #1
0067084c  6f 00 00 8a                                      bhi #0x670a10
00670850  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
00670854  20 00 13 e3                                      tst r3, #0x20
00670858  03 00 00 0a                                      beq #0x67086c
0067085c  00 30 94 e5                                      ldr r3, [r4]
00670860  04 00 a0 e1                                      mov r0, r4
00670864  0f e0 a0 e1                                      mov lr, pc
00670868  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0067086c  00 30 a0 e3                                      mov r3, #0
00670870  13 30 c4 e5                                      strb r3, [r4, #0x13]
00670874  b4 20 9d e5                                      ldr r2, [sp, #0xb4]
00670878  00 00 52 e3                                      cmp r2, #0
0067087c  0e 00 00 0a                                      beq #0x6708bc
00670880  ac 30 9d e5                                      ldr r3, [sp, #0xac]
00670884  00 40 93 e5                                      ldr r4, [r3]
00670888  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
0067088c  1f 20 03 e2                                      and r2, r3, #0x1f
00670890  01 00 52 e3                                      cmp r2, #1
00670894  58 00 00 8a                                      bhi #0x6709fc
00670898  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
0067089c  20 00 13 e3                                      tst r3, #0x20
006708a0  03 00 00 0a                                      beq #0x6708b4
006708a4  00 30 94 e5                                      ldr r3, [r4]
006708a8  04 00 a0 e1                                      mov r0, r4
006708ac  0f e0 a0 e1                                      mov lr, pc
006708b0  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006708b4  00 30 a0 e3                                      mov r3, #0
006708b8  13 30 c4 e5                                      strb r3, [r4, #0x13]
006708bc  a0 10 9d e5                                      ldr r1, [sp, #0xa0]
006708c0  00 00 51 e3                                      cmp r1, #0
006708c4  0a 00 00 0a                                      beq #0x6708f4
006708c8  94 20 9d e5                                      ldr r2, [sp, #0x94]
006708cc  88 30 9d e5                                      ldr r3, [sp, #0x88]
006708d0  02 42 93 e7                                      ldr r4, [r3, r2, lsl #4]
006708d4  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
006708d8  1f 20 03 e2                                      and r2, r3, #0x1f
006708dc  01 00 52 e3                                      cmp r2, #1
006708e0  31 00 00 9a                                      bls #0x6709ac
006708e4  01 20 42 e2                                      sub r2, r2, #1
006708e8  1f 30 c3 e3                                      bic r3, r3, #0x1f
006708ec  03 30 82 e1                                      orr r3, r2, r3
006708f0  13 30 c4 e5                                      strb r3, [r4, #0x13]
006708f4  a4 c0 9d e5                                      ldr ip, [sp, #0xa4]
006708f8  00 00 5c e3                                      cmp ip, #0
006708fc  09 00 00 0a                                      beq #0x670928
00670900  84 00 9d e5                                      ldr r0, [sp, #0x84]
00670904  14 40 90 e5                                      ldr r4, [r0, #0x14]
00670908  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
0067090c  1f 20 03 e2                                      and r2, r3, #0x1f
00670910  01 00 52 e3                                      cmp r2, #1
00670914  1e 00 00 9a                                      bls #0x670994
00670918  01 20 42 e2                                      sub r2, r2, #1
0067091c  1f 30 c3 e3                                      bic r3, r3, #0x1f
00670920  03 30 82 e1                                      orr r3, r2, r3
00670924  13 30 c4 e5                                      strb r3, [r4, #0x13]
00670928  a8 10 9d e5                                      ldr r1, [sp, #0xa8]
0067092c  00 00 51 e3                                      cmp r1, #0
00670930  09 00 00 0a                                      beq #0x67095c
00670934  8c 20 9d e5                                      ldr r2, [sp, #0x8c]
00670938  14 40 92 e5                                      ldr r4, [r2, #0x14]
0067093c  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
00670940  1f 20 03 e2                                      and r2, r3, #0x1f
00670944  01 00 52 e3                                      cmp r2, #1
00670948  1d 00 00 9a                                      bls #0x6709c4
0067094c  01 20 42 e2                                      sub r2, r2, #1
00670950  1f 30 c3 e3                                      bic r3, r3, #0x1f
00670954  03 30 82 e1                                      orr r3, r2, r3
00670958  13 30 c4 e5                                      strb r3, [r4, #0x13]
0067095c  bc d0 8d e2                                      add sp, sp, #0xbc
00670960  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00670964  00 90 a0 e3                                      mov sb, #0
00670968  08 90 8d e5                                      str sb, [sp, #8]
0067096c  0c 90 8d e5                                      str sb, [sp, #0xc]
00670970  95 ff ff ea                                      b #0x6707cc
00670974  84 30 9d e5                                      ldr r3, [sp, #0x84]
00670978  88 c0 9d e5                                      ldr ip, [sp, #0x88]
0067097c  0c 20 d3 e5                                      ldrb r2, [r3, #0xc]
00670980  01 20 82 e2                                      add r2, r2, #1
00670984  72 30 ef e6                                      uxtb r3, r2
00670988  03 32 8c e0                                      add r3, ip, r3, lsl #4
0067098c  ac 30 8d e5                                      str r3, [sp, #0xac]
00670990  af fd ff ea                                      b #0x670054
00670994  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
00670998  20 00 13 e3                                      tst r3, #0x20
0067099c  25 00 00 1a                                      bne #0x670a38
006709a0  00 30 a0 e3                                      mov r3, #0
006709a4  13 30 c4 e5                                      strb r3, [r4, #0x13]
006709a8  de ff ff ea                                      b #0x670928
006709ac  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
006709b0  20 00 13 e3                                      tst r3, #0x20
006709b4  1a 00 00 1a                                      bne #0x670a24
006709b8  00 30 a0 e3                                      mov r3, #0
006709bc  13 30 c4 e5                                      strb r3, [r4, #0x13]
006709c0  cb ff ff ea                                      b #0x6708f4
006709c4  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
006709c8  20 00 13 e3                                      tst r3, #0x20
006709cc  1e 00 00 1a                                      bne #0x670a4c
006709d0  00 30 a0 e3                                      mov r3, #0
006709d4  13 30 c4 e5                                      strb r3, [r4, #0x13]
006709d8  df ff ff ea                                      b #0x67095c
006709dc  00 00 a0 e3                                      mov r0, #0
006709e0  30 00 8d e5                                      str r0, [sp, #0x30]
006709e4  40 00 8d e5                                      str r0, [sp, #0x40]
006709e8  44 00 8d e5                                      str r0, [sp, #0x44]
006709ec  34 00 8d e5                                      str r0, [sp, #0x34]
006709f0  38 00 8d e5                                      str r0, [sp, #0x38]
006709f4  3c 00 8d e5                                      str r0, [sp, #0x3c]
006709f8  c5 fe ff ea                                      b #0x670514
006709fc  01 20 42 e2                                      sub r2, r2, #1
00670a00  1f 30 c3 e3                                      bic r3, r3, #0x1f
00670a04  03 30 82 e1                                      orr r3, r2, r3
00670a08  13 30 c4 e5                                      strb r3, [r4, #0x13]
00670a0c  aa ff ff ea                                      b #0x6708bc
00670a10  01 20 42 e2                                      sub r2, r2, #1
00670a14  1f 30 c3 e3                                      bic r3, r3, #0x1f
00670a18  03 30 82 e1                                      orr r3, r2, r3
00670a1c  13 30 c4 e5                                      strb r3, [r4, #0x13]
00670a20  93 ff ff ea                                      b #0x670874
00670a24  00 30 94 e5                                      ldr r3, [r4]
00670a28  04 00 a0 e1                                      mov r0, r4
00670a2c  0f e0 a0 e1                                      mov lr, pc
00670a30  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00670a34  df ff ff ea                                      b #0x6709b8
00670a38  00 30 94 e5                                      ldr r3, [r4]
00670a3c  04 00 a0 e1                                      mov r0, r4
00670a40  0f e0 a0 e1                                      mov lr, pc
00670a44  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00670a48  d4 ff ff ea                                      b #0x6709a0
00670a4c  00 30 94 e5                                      ldr r3, [r4]
00670a50  04 00 a0 e1                                      mov r0, r4
00670a54  0f e0 a0 e1                                      mov lr, pc
00670a58  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00670a5c  db ff ff ea                                      b #0x6709d0

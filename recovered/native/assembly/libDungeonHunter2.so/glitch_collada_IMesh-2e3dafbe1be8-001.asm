; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0064834c, declared_size=124, range_size=124, mode=arm
; class-group: glitch::collada::IMesh
; alias: _ZNK6glitch7collada5IMesh14getVertexCountEv
; demangled: glitch::collada::IMesh::getVertexCount() const
; decoder-mode: arm
0064834c  30 40 2d e9                                      push {r4, r5, lr}
00648350  0c d0 4d e2                                      sub sp, sp, #0xc
00648354  00 30 90 e5                                      ldr r3, [r0]
00648358  00 10 a0 e1                                      mov r1, r0
0064835c  00 20 a0 e3                                      mov r2, #0
00648360  04 00 8d e2                                      add r0, sp, #4
00648364  0f e0 a0 e1                                      mov lr, pc
00648368  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0064836c  04 30 9d e5                                      ldr r3, [sp, #4]
00648370  14 40 93 e5                                      ldr r4, [r3, #0x14]
00648374  00 00 54 e3                                      cmp r4, #0
00648378  00 30 94 15                                      ldrne r3, [r4]
0064837c  08 50 94 e5                                      ldr r5, [r4, #8]
00648380  01 30 83 12                                      addne r3, r3, #1
00648384  00 30 84 15                                      strne r3, [r4]
00648388  00 30 94 e5                                      ldr r3, [r4]
0064838c  01 30 43 e2                                      sub r3, r3, #1
00648390  00 00 53 e3                                      cmp r3, #0
00648394  00 30 84 e5                                      str r3, [r4]
00648398  03 00 00 1a                                      bne #0x6483ac
0064839c  04 00 a0 e1                                      mov r0, r4
006483a0  9d 61 fd eb                                      bl #0x5a0a1c
006483a4  04 00 a0 e1                                      mov r0, r4
006483a8  c0 17 f3 eb                                      bl #0x30e2b0
006483ac  04 00 9d e5                                      ldr r0, [sp, #4]
006483b0  00 00 50 e3                                      cmp r0, #0
006483b4  00 00 00 0a                                      beq #0x6483bc
006483b8  71 54 f3 eb                                      bl #0x31d584
006483bc  05 00 a0 e1                                      mov r0, r5
006483c0  0c d0 8d e2                                      add sp, sp, #0xc
006483c4  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x006676b4, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::IMesh
; alias: _ZN6glitch7collada5IMesh9onAnimateEj
; demangled: glitch::collada::IMesh::onAnimate(unsigned int)
; decoder-mode: arm
006676b4  1e ff 2f e1                                      bx lr

; FUNCTION 0x006676b8, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::IMesh
; alias: _ZN6glitch7collada5IMesh27onPrepareBufferForRenderingENS0_21E_PREPARE_BUFFER_STEPEPNS_5video12IVideoDriverEj
; demangled: glitch::collada::IMesh::onPrepareBufferForRendering(glitch::collada::E_PREPARE_BUFFER_STEP, glitch::video::IVideoDriver*, unsigned int)
; decoder-mode: arm
006676b8  10 00 a0 e3                                      mov r0, #0x10
006676bc  1e ff 2f e1                                      bx lr

; FUNCTION 0x006676c0, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::IMesh
; alias: _ZN6glitch7collada5IMesh20releaseProcessBufferEPNS_5video12IVideoDriverEj
; demangled: glitch::collada::IMesh::releaseProcessBuffer(glitch::video::IVideoDriver*, unsigned int)
; decoder-mode: arm
006676c0  1e ff 2f e1                                      bx lr

; FUNCTION 0x006676c4, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::IMesh
; alias: _ZN6glitch7collada5IMesh4initEPNS_5video12IVideoDriverEb
; demangled: glitch::collada::IMesh::init(glitch::video::IVideoDriver*, bool)
; decoder-mode: arm
006676c4  1e ff 2f e1                                      bx lr

; FUNCTION 0x006676c8, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::IMesh
; alias: _ZN6glitch7collada5IMesh12setTransformEPNS_5video12IVideoDriverERKNS_4core8CMatrix4IfEE
; demangled: glitch::collada::IMesh::setTransform(glitch::video::IVideoDriver*, glitch::core::CMatrix4<float> const&)
; decoder-mode: arm
006676c8  10 40 2d e9                                      push {r4, lr}
006676cc  01 00 a0 e1                                      mov r0, r1
006676d0  00 30 91 e5                                      ldr r3, [r1]
006676d4  01 10 a0 e3                                      mov r1, #1
006676d8  0f e0 a0 e1                                      mov lr, pc
006676dc  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
006676e0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00667704, declared_size=52, range_size=52, mode=arm
; class-group: glitch::collada::IMesh
; alias: _ZN6glitch7collada5IMeshD1Ev
; demangled: glitch::collada::IMesh::~IMesh()
; decoder-mode: arm
00667704  24 30 9f e5                                      ldr r3, [pc, #0x24]
00667708  24 20 9f e5                                      ldr r2, [pc, #0x24]
0066770c  10 40 2d e9                                      push {r4, lr}
00667710  03 30 8f e0                                      add r3, pc, r3
00667714  02 20 93 e7                                      ldr r2, [r3, r2]
00667718  00 40 a0 e1                                      mov r4, r0
0066771c  08 20 82 e2                                      add r2, r2, #8
00667720  0c 20 80 e4                                      str r2, [r0], #0xc
00667724  52 c7 fe eb                                      bl #0x619474
00667728  04 00 a0 e1                                      mov r0, r4
0066772c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00667730  80 d3 32 00 04 37 00 00                          .byte 0x80, 0xd3, 0x32, 0x00, 0x04, 0x37, 0x00, 0x00

; FUNCTION 0x00667738, declared_size=60, range_size=60, mode=arm
; class-group: glitch::collada::IMesh
; alias: _ZN6glitch7collada5IMeshD0Ev
; demangled: glitch::collada::IMesh::~IMesh()
; decoder-mode: arm
00667738  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
0066773c  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
00667740  10 40 2d e9                                      push {r4, lr}
00667744  03 30 8f e0                                      add r3, pc, r3
00667748  02 20 93 e7                                      ldr r2, [r3, r2]
0066774c  00 40 a0 e1                                      mov r4, r0
00667750  08 20 82 e2                                      add r2, r2, #8
00667754  0c 20 80 e4                                      str r2, [r0], #0xc
00667758  45 c7 fe eb                                      bl #0x619474
0066775c  04 00 a0 e1                                      mov r0, r4
00667760  d2 9a f2 eb                                      bl #0x30e2b0
00667764  04 00 a0 e1                                      mov r0, r4
00667768  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0066776c  4c d3 32 00 04 37 00 00                          .byte 0x4c, 0xd3, 0x32, 0x00, 0x04, 0x37, 0x00, 0x00

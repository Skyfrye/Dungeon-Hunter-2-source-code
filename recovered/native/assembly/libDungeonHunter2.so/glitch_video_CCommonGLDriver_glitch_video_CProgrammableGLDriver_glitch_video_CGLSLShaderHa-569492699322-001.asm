; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005af1dc, declared_size=32, range_size=32, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE19resetTexturesLoaderEv
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::resetTexturesLoader()
; decoder-mode: arm
005af1dc  e0 30 90 e5                                      ldr r3, [r0, #0xe0]
005af1e0  00 20 a0 e3                                      mov r2, #0
005af1e4  f0 27 80 e5                                      str r2, [r0, #0x7f0]
005af1e8  b6 22 d3 e1                                      ldrh r2, [r3, #0x26]
005af1ec  f4 27 80 e5                                      str r2, [r0, #0x7f4]
005af1f0  08 30 93 e5                                      ldr r3, [r3, #8]
005af1f4  f8 37 80 e5                                      str r3, [r0, #0x7f8]
005af1f8  1e ff 2f e1                                      bx lr

; FUNCTION 0x005af1fc, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>
; alias: _ZNK6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE24getMaximalPrimitiveCountEv
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::getMaximalPrimitiveCount() const
; decoder-mode: arm
005af1fc  ff 0f 0f e3                                      movw r0, #0xffff
005af200  1e ff 2f e1                                      bx lr

; FUNCTION 0x005af204, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE22captureFramebufferImplERKN5boost13intrusive_ptrINS0_8ITextureEEERKNS_4core10position2dIiEERKNSE_4rectIiEEhNS0_23E_TEXTURE_CUBE_MAP_FACEEb
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::captureFramebufferImpl(boost::intrusive_ptr<glitch::video::ITexture> const&, glitch::core::position2d<int> const&, glitch::core::rect<int> const&, unsigned char, glitch::video::E_TEXTURE_CUBE_MAP_FACE, bool)
; decoder-mode: arm
005af204  00 00 a0 e3                                      mov r0, #0
005af208  1e ff 2f e1                                      bx lr

; FUNCTION 0x005af20c, declared_size=20, range_size=20, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE11swapBuffersEi
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::swapBuffers(int)
; decoder-mode: arm
005af20c  10 40 2d e9                                      push {r4, lr}
005af210  00 30 90 e5                                      ldr r3, [r0]
005af214  0f e0 a0 e1                                      mov lr, pc
005af218  18 f2 93 e5                                      ldr pc, [r3, #0x218]
005af21c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005af220, declared_size=56, range_size=56, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE12setPointSizeEf
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::setPointSize(float)
; decoder-mode: arm
005af220  70 40 2d e9                                      push {r4, r5, r6, lr}
005af224  00 40 a0 e1                                      mov r4, r0
005af228  01 50 a0 e1                                      mov r5, r1
005af22c  01 00 a0 e1                                      mov r0, r1
005af230  1c 12 94 e5                                      ldr r1, [r4, #0x21c]
005af234  54 7b f5 eb                                      bl #0x30df8c
005af238  00 00 50 e3                                      cmp r0, #0
005af23c  04 00 00 1a                                      bne #0x5af254
005af240  00 30 94 e5                                      ldr r3, [r4]
005af244  04 00 a0 e1                                      mov r0, r4
005af248  0f e0 a0 e1                                      mov lr, pc
005af24c  fc f1 93 e5                                      ldr pc, [r3, #0x1fc]
005af250  1c 52 84 e5                                      str r5, [r4, #0x21c]
005af254  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x005af258, declared_size=44, range_size=44, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE19setPolygonModeFrontENS0_14E_POLYGON_MODEE
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::setPolygonModeFront(glitch::video::E_POLYGON_MODE)
; decoder-mode: arm
005af258  e4 31 90 e5                                      ldr r3, [r0, #0x1e4]
005af25c  70 40 2d e9                                      push {r4, r5, r6, lr}
005af260  03 00 51 e1                                      cmp r1, r3
005af264  00 40 a0 e1                                      mov r4, r0
005af268  01 50 a0 e1                                      mov r5, r1
005af26c  03 00 00 0a                                      beq #0x5af280
005af270  00 30 90 e5                                      ldr r3, [r0]
005af274  0f e0 a0 e1                                      mov lr, pc
005af278  fc f1 93 e5                                      ldr pc, [r3, #0x1fc]
005af27c  e4 51 84 e5                                      str r5, [r4, #0x1e4]
005af280  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x005af284, declared_size=44, range_size=44, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE18setPolygonModeBackENS0_14E_POLYGON_MODEE
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::setPolygonModeBack(glitch::video::E_POLYGON_MODE)
; decoder-mode: arm
005af284  e8 31 90 e5                                      ldr r3, [r0, #0x1e8]
005af288  70 40 2d e9                                      push {r4, r5, r6, lr}
005af28c  03 00 51 e1                                      cmp r1, r3
005af290  00 40 a0 e1                                      mov r4, r0
005af294  01 50 a0 e1                                      mov r5, r1
005af298  03 00 00 0a                                      beq #0x5af2ac
005af29c  00 30 90 e5                                      ldr r3, [r0]
005af2a0  0f e0 a0 e1                                      mov lr, pc
005af2a4  fc f1 93 e5                                      ldr pc, [r3, #0x1fc]
005af2a8  e8 51 84 e5                                      str r5, [r4, #0x1e8]
005af2ac  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x005af2b0, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE26setPolygonOffsetLineEnableEb
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::setPolygonOffsetLineEnable(bool)
; decoder-mode: arm
005af2b0  1e ff 2f e1                                      bx lr

; FUNCTION 0x005af2b4, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE27setPolygonOffsetPointEnableEb
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::setPolygonOffsetPointEnable(bool)
; decoder-mode: arm
005af2b4  1e ff 2f e1                                      bx lr

; FUNCTION 0x005af2d8, declared_size=132, range_size=132, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE10endScene2DEv
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::endScene2D()
; decoder-mode: arm
005af2d8  70 40 2d e9                                      push {r4, r5, r6, lr}
005af2dc  00 40 a0 e1                                      mov r4, r0
005af2e0  00 30 90 e5                                      ldr r3, [r0]
005af2e4  0f e0 a0 e1                                      mov lr, pc
005af2e8  fc f1 93 e5                                      ldr pc, [r3, #0x1fc]
005af2ec  60 21 d4 e5                                      ldrb r2, [r4, #0x160]
005af2f0  00 00 52 e3                                      cmp r2, #0
005af2f4  02 00 00 1a                                      bne #0x5af304
005af2f8  04 00 a0 e1                                      mov r0, r4
005af2fc  01 1c a0 e3                                      mov r1, #0x100
005af300  6a e7 ff eb                                      bl #0x5a90b0
005af304  02 50 a0 e3                                      mov r5, #2
005af308  04 20 a0 e1                                      mov r2, r4
005af30c  a0 50 84 e5                                      str r5, [r4, #0xa0]
005af310  98 33 92 e4                                      ldr r3, [r2], #0x398
005af314  04 00 a0 e1                                      mov r0, r4
005af318  01 10 a0 e3                                      mov r1, #1
005af31c  0f e0 a0 e1                                      mov lr, pc
005af320  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
005af324  04 20 a0 e1                                      mov r2, r4
005af328  dc 33 92 e4                                      ldr r3, [r2], #0x3dc
005af32c  04 00 a0 e1                                      mov r0, r4
005af330  00 10 a0 e3                                      mov r1, #0
005af334  0f e0 a0 e1                                      mov lr, pc
005af338  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
005af33c  04 20 a0 e1                                      mov r2, r4
005af340  04 00 a0 e1                                      mov r0, r4
005af344  54 33 92 e4                                      ldr r3, [r2], #0x354
005af348  05 10 a0 e1                                      mov r1, r5
005af34c  0f e0 a0 e1                                      mov lr, pc
005af350  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
005af354  01 00 a0 e3                                      mov r0, #1
005af358  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x005af35c, declared_size=88, range_size=88, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE12setBlendFuncENS0_14E_BLEND_FACTORES8_
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::setBlendFunc(glitch::video::E_BLEND_FACTOR, glitch::video::E_BLEND_FACTOR)
; decoder-mode: arm
005af35c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005af360  71 60 ef e6                                      uxtb r6, r1
005af364  00 40 a0 e3                                      mov r4, #0
005af368  72 70 ef e6                                      uxtb r7, r2
005af36c  16 40 c7 e7                                      bfi r4, r6, #0, #8
005af370  00 32 90 e5                                      ldr r3, [r0, #0x200]
005af374  17 44 cf e7                                      bfi r4, r7, #8, #8
005af378  1f 48 df e7                                      bfc r4, #0x10, #0x10
005af37c  03 00 54 e1                                      cmp r4, r3
005af380  00 50 a0 e1                                      mov r5, r0
005af384  08 00 00 0a                                      beq #0x5af3ac
005af388  00 30 90 e5                                      ldr r3, [r0]
005af38c  0f e0 a0 e1                                      mov lr, pc
005af390  fc f1 93 e5                                      ldr pc, [r3, #0x1fc]
005af394  14 30 9f e5                                      ldr r3, [pc, #0x14]
005af398  03 30 8f e0                                      add r3, pc, r3
005af39c  07 11 93 e7                                      ldr r1, [r3, r7, lsl #2]
005af3a0  06 01 93 e7                                      ldr r0, [r3, r6, lsl #2]
005af3a4  1b 7c f5 eb                                      bl #0x30e418
005af3a8  00 42 85 e5                                      str r4, [r5, #0x200]
005af3ac  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
005af3b0  9c 0c 33 00                                      .byte 0x9c, 0x0c, 0x33, 0x00

; FUNCTION 0x005af3b4, declared_size=68, range_size=68, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE16setBlendEquationENS0_16E_BLEND_EQUATIONE
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::setBlendEquation(glitch::video::E_BLEND_EQUATION)
; decoder-mode: arm
005af3b4  70 40 2d e9                                      push {r4, r5, r6, lr}
005af3b8  fc 31 90 e5                                      ldr r3, [r0, #0x1fc]
005af3bc  00 40 a0 e1                                      mov r4, r0
005af3c0  01 50 a0 e1                                      mov r5, r1
005af3c4  03 00 51 e1                                      cmp r1, r3
005af3c8  08 00 00 0a                                      beq #0x5af3f0
005af3cc  00 30 90 e5                                      ldr r3, [r0]
005af3d0  0f e0 a0 e1                                      mov lr, pc
005af3d4  fc f1 93 e5                                      ldr pc, [r3, #0x1fc]
005af3d8  14 30 9f e5                                      ldr r3, [pc, #0x14]
005af3dc  03 30 8f e0                                      add r3, pc, r3
005af3e0  3c 30 83 e2                                      add r3, r3, #0x3c
005af3e4  05 01 93 e7                                      ldr r0, [r3, r5, lsl #2]
005af3e8  c9 7a f5 eb                                      bl #0x30df14
005af3ec  fc 51 84 e5                                      str r5, [r4, #0x1fc]
005af3f0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005af3f4  58 0c 33 00                                      .byte 0x58, 0x0c, 0x33, 0x00

; FUNCTION 0x005af574, declared_size=224, range_size=224, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE13setBlendColorENS0_6SColorE
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::setBlendColor(glitch::video::SColor)
; decoder-mode: arm
005af574  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005af578  06 52 d0 e5                                      ldrb r5, [r0, #0x206]
005af57c  04 32 d0 e5                                      ldrb r3, [r0, #0x204]
005af580  05 c2 d0 e5                                      ldrb ip, [r0, #0x205]
005af584  07 22 d0 e5                                      ldrb r2, [r0, #0x207]
005af588  14 d0 4d e2                                      sub sp, sp, #0x14
005af58c  0e 50 cd e5                                      strb r5, [sp, #0xe]
005af590  0d c0 cd e5                                      strb ip, [sp, #0xd]
005af594  0f 20 cd e5                                      strb r2, [sp, #0xf]
005af598  0c 30 cd e5                                      strb r3, [sp, #0xc]
005af59c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
005af5a0  00 40 a0 e1                                      mov r4, r0
005af5a4  04 10 8d e5                                      str r1, [sp, #4]
005af5a8  03 00 51 e1                                      cmp r1, r3
005af5ac  71 70 ef e6                                      uxtb r7, r1
005af5b0  51 84 e7 e7                                      ubfx r8, r1, #8, #8
005af5b4  51 58 e7 e7                                      ubfx r5, r1, #0x10, #8
005af5b8  21 6c a0 e1                                      lsr r6, r1, #0x18
005af5bc  22 00 00 0a                                      beq #0x5af64c
005af5c0  00 30 90 e5                                      ldr r3, [r0]
005af5c4  0f e0 a0 e1                                      mov lr, pc
005af5c8  fc f1 93 e5                                      ldr pc, [r3, #0x1fc]
005af5cc  07 00 a0 e1                                      mov r0, r7
005af5d0  e3 7c f5 eb                                      bl #0x30e964
005af5d4  81 10 08 e3                                      movw r1, #0x8081
005af5d8  80 1b 43 e3                                      movt r1, #0x3b80
005af5dc  e2 7d f5 eb                                      bl #0x30ed6c
005af5e0  00 90 a0 e1                                      mov sb, r0
005af5e4  08 00 a0 e1                                      mov r0, r8
005af5e8  dd 7c f5 eb                                      bl #0x30e964
005af5ec  81 10 08 e3                                      movw r1, #0x8081
005af5f0  80 1b 43 e3                                      movt r1, #0x3b80
005af5f4  dc 7d f5 eb                                      bl #0x30ed6c
005af5f8  00 a0 a0 e1                                      mov sl, r0
005af5fc  05 00 a0 e1                                      mov r0, r5
005af600  d7 7c f5 eb                                      bl #0x30e964
005af604  81 10 08 e3                                      movw r1, #0x8081
005af608  80 1b 43 e3                                      movt r1, #0x3b80
005af60c  d6 7d f5 eb                                      bl #0x30ed6c
005af610  00 b0 a0 e1                                      mov fp, r0
005af614  06 00 a0 e1                                      mov r0, r6
005af618  d1 7c f5 eb                                      bl #0x30e964
005af61c  81 10 08 e3                                      movw r1, #0x8081
005af620  80 1b 43 e3                                      movt r1, #0x3b80
005af624  d0 7d f5 eb                                      bl #0x30ed6c
005af628  0a 10 a0 e1                                      mov r1, sl
005af62c  00 30 a0 e1                                      mov r3, r0
005af630  0b 20 a0 e1                                      mov r2, fp
005af634  09 00 a0 e1                                      mov r0, sb
005af638  49 7b f5 eb                                      bl #0x30e364
005af63c  04 72 c4 e5                                      strb r7, [r4, #0x204]
005af640  07 62 c4 e5                                      strb r6, [r4, #0x207]
005af644  06 52 c4 e5                                      strb r5, [r4, #0x206]
005af648  05 82 c4 e5                                      strb r8, [r4, #0x205]
005af64c  14 d0 8d e2                                      add sp, sp, #0x14
005af650  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x005af6b8, declared_size=68, range_size=68, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE11setCullFaceENS0_11E_FACE_SIDEE
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::setCullFace(glitch::video::E_FACE_SIDE)
; decoder-mode: arm
005af6b8  70 40 2d e9                                      push {r4, r5, r6, lr}
005af6bc  d8 31 90 e5                                      ldr r3, [r0, #0x1d8]
005af6c0  00 40 a0 e1                                      mov r4, r0
005af6c4  01 50 a0 e1                                      mov r5, r1
005af6c8  03 00 51 e1                                      cmp r1, r3
005af6cc  08 00 00 0a                                      beq #0x5af6f4
005af6d0  00 30 90 e5                                      ldr r3, [r0]
005af6d4  0f e0 a0 e1                                      mov lr, pc
005af6d8  fc f1 93 e5                                      ldr pc, [r3, #0x1fc]
005af6dc  14 30 9f e5                                      ldr r3, [pc, #0x14]
005af6e0  03 30 8f e0                                      add r3, pc, r3
005af6e4  50 30 83 e2                                      add r3, r3, #0x50
005af6e8  05 01 93 e7                                      ldr r0, [r3, r5, lsl #2]
005af6ec  6f 7c f5 eb                                      bl #0x30e8b0
005af6f0  d8 51 84 e5                                      str r5, [r4, #0x1d8]
005af6f4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005af6f8  54 09 33 00                                      .byte 0x54, 0x09, 0x33, 0x00

; FUNCTION 0x005af760, declared_size=68, range_size=68, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE12setDepthFuncENS0_14E_COMPARE_FUNCE
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::setDepthFunc(glitch::video::E_COMPARE_FUNC)
; decoder-mode: arm
005af760  70 40 2d e9                                      push {r4, r5, r6, lr}
005af764  e0 31 90 e5                                      ldr r3, [r0, #0x1e0]
005af768  00 40 a0 e1                                      mov r4, r0
005af76c  01 50 a0 e1                                      mov r5, r1
005af770  03 00 51 e1                                      cmp r1, r3
005af774  08 00 00 0a                                      beq #0x5af79c
005af778  00 30 90 e5                                      ldr r3, [r0]
005af77c  0f e0 a0 e1                                      mov lr, pc
005af780  fc f1 93 e5                                      ldr pc, [r3, #0x1fc]
005af784  14 30 9f e5                                      ldr r3, [pc, #0x14]
005af788  03 30 8f e0                                      add r3, pc, r3
005af78c  5c 30 83 e2                                      add r3, r3, #0x5c
005af790  05 01 93 e7                                      ldr r0, [r3, r5, lsl #2]
005af794  bf 7a f5 eb                                      bl #0x30e298
005af798  e0 51 84 e5                                      str r5, [r4, #0x1e0]
005af79c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005af7a0  ac 08 33 00                                      .byte 0xac, 0x08, 0x33, 0x00

; FUNCTION 0x005af828, declared_size=100, range_size=100, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE16setPolygonOffsetEff
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::setPolygonOffset(float, float)
; decoder-mode: arm
005af828  70 40 2d e9                                      push {r4, r5, r6, lr}
005af82c  00 40 a0 e1                                      mov r4, r0
005af830  01 50 a0 e1                                      mov r5, r1
005af834  01 00 a0 e1                                      mov r0, r1
005af838  20 12 94 e5                                      ldr r1, [r4, #0x220]
005af83c  02 60 a0 e1                                      mov r6, r2
005af840  d1 79 f5 eb                                      bl #0x30df8c
005af844  00 00 50 e3                                      cmp r0, #0
005af848  09 00 00 1a                                      bne #0x5af874
005af84c  00 30 94 e5                                      ldr r3, [r4]
005af850  04 00 a0 e1                                      mov r0, r4
005af854  0f e0 a0 e1                                      mov lr, pc
005af858  fc f1 93 e5                                      ldr pc, [r3, #0x1fc]
005af85c  05 00 a0 e1                                      mov r0, r5
005af860  06 10 a0 e1                                      mov r1, r6
005af864  a1 7c f5 eb                                      bl #0x30eaf0
005af868  24 62 84 e5                                      str r6, [r4, #0x224]
005af86c  20 52 84 e5                                      str r5, [r4, #0x220]
005af870  70 80 bd e8                                      pop {r4, r5, r6, pc}
005af874  06 00 a0 e1                                      mov r0, r6
005af878  24 12 94 e5                                      ldr r1, [r4, #0x224]
005af87c  c2 79 f5 eb                                      bl #0x30df8c
005af880  00 00 50 e3                                      cmp r0, #0
005af884  f0 ff ff 0a                                      beq #0x5af84c
005af888  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x005af8f8, declared_size=68, range_size=68, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE22setSampleCoverageValueEf
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::setSampleCoverageValue(float)
; decoder-mode: arm
005af8f8  70 40 2d e9                                      push {r4, r5, r6, lr}
005af8fc  00 40 a0 e1                                      mov r4, r0
005af900  01 50 a0 e1                                      mov r5, r1
005af904  01 00 a0 e1                                      mov r0, r1
005af908  28 12 94 e5                                      ldr r1, [r4, #0x228]
005af90c  9e 79 f5 eb                                      bl #0x30df8c
005af910  00 00 50 e3                                      cmp r0, #0
005af914  07 00 00 1a                                      bne #0x5af938
005af918  00 30 94 e5                                      ldr r3, [r4]
005af91c  04 00 a0 e1                                      mov r0, r4
005af920  0f e0 a0 e1                                      mov lr, pc
005af924  fc f1 93 e5                                      ldr pc, [r3, #0x1fc]
005af928  05 00 a0 e1                                      mov r0, r5
005af92c  d2 11 d4 e5                                      ldrb r1, [r4, #0x1d2]
005af930  29 79 f5 eb                                      bl #0x30dddc
005af934  28 52 84 e5                                      str r5, [r4, #0x228]
005af938  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x005af93c, declared_size=56, range_size=56, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE23setSampleCoverageInvertEb
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::setSampleCoverageInvert(bool)
; decoder-mode: arm
005af93c  70 40 2d e9                                      push {r4, r5, r6, lr}
005af940  d2 31 d0 e5                                      ldrb r3, [r0, #0x1d2]
005af944  00 40 a0 e1                                      mov r4, r0
005af948  01 50 a0 e1                                      mov r5, r1
005af94c  01 00 53 e1                                      cmp r3, r1
005af950  06 00 00 0a                                      beq #0x5af970
005af954  00 30 90 e5                                      ldr r3, [r0]
005af958  0f e0 a0 e1                                      mov lr, pc
005af95c  fc f1 93 e5                                      ldr pc, [r3, #0x1fc]
005af960  28 02 94 e5                                      ldr r0, [r4, #0x228]
005af964  05 10 a0 e1                                      mov r1, r5
005af968  1b 79 f5 eb                                      bl #0x30dddc
005af96c  d2 51 c4 e5                                      strb r5, [r4, #0x1d2]
005af970  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x005af974, declared_size=88, range_size=88, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE18setStencilFuncMaskEh
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::setStencilFuncMask(unsigned char)
; decoder-mode: arm
005af974  70 40 2d e9                                      push {r4, r5, r6, lr}
005af978  f0 41 90 e5                                      ldr r4, [r0, #0x1f0]
005af97c  00 50 a0 e1                                      mov r5, r0
005af980  01 60 a0 e1                                      mov r6, r1
005af984  04 30 a0 e1                                      mov r3, r4
005af988  11 48 d7 e7                                      bfi r4, r1, #0x10, #8
005af98c  03 00 54 e1                                      cmp r4, r3
005af990  0b 00 00 0a                                      beq #0x5af9c4
005af994  00 30 90 e5                                      ldr r3, [r0]
005af998  0f e0 a0 e1                                      mov lr, pc
005af99c  fc f1 93 e5                                      ldr pc, [r3, #0x1fc]
005af9a0  20 30 9f e5                                      ldr r3, [pc, #0x20]
005af9a4  74 10 ef e6                                      uxtb r1, r4
005af9a8  06 20 a0 e1                                      mov r2, r6
005af9ac  03 30 8f e0                                      add r3, pc, r3
005af9b0  01 31 83 e0                                      add r3, r3, r1, lsl #2
005af9b4  5c 00 93 e5                                      ldr r0, [r3, #0x5c]
005af9b8  54 14 e7 e7                                      ubfx r1, r4, #8, #8
005af9bc  13 7b f5 eb                                      bl #0x30e610
005af9c0  f0 41 85 e5                                      str r4, [r5, #0x1f0]
005af9c4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005af9c8  88 06 33 00                                      .byte 0x88, 0x06, 0x33, 0x00

; FUNCTION 0x005af9cc, declared_size=88, range_size=88, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE17setStencilFuncRefEh
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::setStencilFuncRef(unsigned char)
; decoder-mode: arm
005af9cc  70 40 2d e9                                      push {r4, r5, r6, lr}
005af9d0  f0 41 90 e5                                      ldr r4, [r0, #0x1f0]
005af9d4  00 50 a0 e1                                      mov r5, r0
005af9d8  01 60 a0 e1                                      mov r6, r1
005af9dc  04 30 a0 e1                                      mov r3, r4
005af9e0  11 44 cf e7                                      bfi r4, r1, #8, #8
005af9e4  03 00 54 e1                                      cmp r4, r3
005af9e8  0b 00 00 0a                                      beq #0x5afa1c
005af9ec  00 30 90 e5                                      ldr r3, [r0]
005af9f0  0f e0 a0 e1                                      mov lr, pc
005af9f4  fc f1 93 e5                                      ldr pc, [r3, #0x1fc]
005af9f8  20 30 9f e5                                      ldr r3, [pc, #0x20]
005af9fc  74 20 ef e6                                      uxtb r2, r4
005afa00  06 10 a0 e1                                      mov r1, r6
005afa04  03 30 8f e0                                      add r3, pc, r3
005afa08  02 31 83 e0                                      add r3, r3, r2, lsl #2
005afa0c  5c 00 93 e5                                      ldr r0, [r3, #0x5c]
005afa10  54 28 e7 e7                                      ubfx r2, r4, #0x10, #8
005afa14  fd 7a f5 eb                                      bl #0x30e610
005afa18  f0 41 85 e5                                      str r4, [r5, #0x1f0]
005afa1c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005afa20  30 06 33 00                                      .byte 0x30, 0x06, 0x33, 0x00

; FUNCTION 0x005afa24, declared_size=84, range_size=84, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE14setStencilFuncENS0_14E_COMPARE_FUNCE
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::setStencilFunc(glitch::video::E_COMPARE_FUNC)
; decoder-mode: arm
005afa24  70 40 2d e9                                      push {r4, r5, r6, lr}
005afa28  f0 41 90 e5                                      ldr r4, [r0, #0x1f0]
005afa2c  71 60 ef e6                                      uxtb r6, r1
005afa30  00 50 a0 e1                                      mov r5, r0
005afa34  04 30 a0 e1                                      mov r3, r4
005afa38  16 40 c7 e7                                      bfi r4, r6, #0, #8
005afa3c  03 00 54 e1                                      cmp r4, r3
005afa40  0a 00 00 0a                                      beq #0x5afa70
005afa44  00 30 90 e5                                      ldr r3, [r0]
005afa48  0f e0 a0 e1                                      mov lr, pc
005afa4c  fc f1 93 e5                                      ldr pc, [r3, #0x1fc]
005afa50  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
005afa54  54 14 e7 e7                                      ubfx r1, r4, #8, #8
005afa58  54 28 e7 e7                                      ubfx r2, r4, #0x10, #8
005afa5c  03 30 8f e0                                      add r3, pc, r3
005afa60  06 61 83 e0                                      add r6, r3, r6, lsl #2
005afa64  5c 00 96 e5                                      ldr r0, [r6, #0x5c]
005afa68  e8 7a f5 eb                                      bl #0x30e610
005afa6c  f0 41 85 e5                                      str r4, [r5, #0x1f0]
005afa70  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005afa74  d8 05 33 00                                      .byte 0xd8, 0x05, 0x33, 0x00

; FUNCTION 0x005afb4c, declared_size=100, range_size=100, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE17setStencilOpZPassENS0_12E_STENCIL_OPE
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::setStencilOpZPass(glitch::video::E_STENCIL_OP)
; decoder-mode: arm
005afb4c  70 40 2d e9                                      push {r4, r5, r6, lr}
005afb50  f4 41 90 e5                                      ldr r4, [r0, #0x1f4]
005afb54  71 60 ef e6                                      uxtb r6, r1
005afb58  00 50 a0 e1                                      mov r5, r0
005afb5c  04 30 a0 e1                                      mov r3, r4
005afb60  16 48 d7 e7                                      bfi r4, r6, #0x10, #8
005afb64  03 00 54 e1                                      cmp r4, r3
005afb68  0e 00 00 0a                                      beq #0x5afba8
005afb6c  00 30 90 e5                                      ldr r3, [r0]
005afb70  0f e0 a0 e1                                      mov lr, pc
005afb74  fc f1 93 e5                                      ldr pc, [r3, #0x1fc]
005afb78  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
005afb7c  74 20 ef e6                                      uxtb r2, r4
005afb80  54 14 e7 e7                                      ubfx r1, r4, #8, #8
005afb84  03 30 8f e0                                      add r3, pc, r3
005afb88  02 21 83 e0                                      add r2, r3, r2, lsl #2
005afb8c  06 61 83 e0                                      add r6, r3, r6, lsl #2
005afb90  01 31 83 e0                                      add r3, r3, r1, lsl #2
005afb94  7c 00 92 e5                                      ldr r0, [r2, #0x7c]
005afb98  7c 10 93 e5                                      ldr r1, [r3, #0x7c]
005afb9c  7c 20 96 e5                                      ldr r2, [r6, #0x7c]
005afba0  f7 7a f5 eb                                      bl #0x30e784
005afba4  f4 41 85 e5                                      str r4, [r5, #0x1f4]
005afba8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005afbac  b0 04 33 00                                      .byte 0xb0, 0x04, 0x33, 0x00

; FUNCTION 0x005afbb0, declared_size=100, range_size=100, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE17setStencilOpZFailENS0_12E_STENCIL_OPE
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::setStencilOpZFail(glitch::video::E_STENCIL_OP)
; decoder-mode: arm
005afbb0  70 40 2d e9                                      push {r4, r5, r6, lr}
005afbb4  f4 41 90 e5                                      ldr r4, [r0, #0x1f4]
005afbb8  71 60 ef e6                                      uxtb r6, r1
005afbbc  00 50 a0 e1                                      mov r5, r0
005afbc0  04 30 a0 e1                                      mov r3, r4
005afbc4  16 44 cf e7                                      bfi r4, r6, #8, #8
005afbc8  03 00 54 e1                                      cmp r4, r3
005afbcc  0e 00 00 0a                                      beq #0x5afc0c
005afbd0  00 30 90 e5                                      ldr r3, [r0]
005afbd4  0f e0 a0 e1                                      mov lr, pc
005afbd8  fc f1 93 e5                                      ldr pc, [r3, #0x1fc]
005afbdc  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
005afbe0  74 10 ef e6                                      uxtb r1, r4
005afbe4  54 38 e7 e7                                      ubfx r3, r4, #0x10, #8
005afbe8  02 20 8f e0                                      add r2, pc, r2
005afbec  01 11 82 e0                                      add r1, r2, r1, lsl #2
005afbf0  03 31 82 e0                                      add r3, r2, r3, lsl #2
005afbf4  06 61 82 e0                                      add r6, r2, r6, lsl #2
005afbf8  7c 00 91 e5                                      ldr r0, [r1, #0x7c]
005afbfc  7c 20 93 e5                                      ldr r2, [r3, #0x7c]
005afc00  7c 10 96 e5                                      ldr r1, [r6, #0x7c]
005afc04  de 7a f5 eb                                      bl #0x30e784
005afc08  f4 41 85 e5                                      str r4, [r5, #0x1f4]
005afc0c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005afc10  4c 04 33 00                                      .byte 0x4c, 0x04, 0x33, 0x00

; FUNCTION 0x005afc14, declared_size=100, range_size=100, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE16setStencilOpFailENS0_12E_STENCIL_OPE
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::setStencilOpFail(glitch::video::E_STENCIL_OP)
; decoder-mode: arm
005afc14  70 40 2d e9                                      push {r4, r5, r6, lr}
005afc18  f4 41 90 e5                                      ldr r4, [r0, #0x1f4]
005afc1c  71 60 ef e6                                      uxtb r6, r1
005afc20  00 50 a0 e1                                      mov r5, r0
005afc24  04 30 a0 e1                                      mov r3, r4
005afc28  16 40 c7 e7                                      bfi r4, r6, #0, #8
005afc2c  03 00 54 e1                                      cmp r4, r3
005afc30  0e 00 00 0a                                      beq #0x5afc70
005afc34  00 30 90 e5                                      ldr r3, [r0]
005afc38  0f e0 a0 e1                                      mov lr, pc
005afc3c  fc f1 93 e5                                      ldr pc, [r3, #0x1fc]
005afc40  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
005afc44  54 14 e7 e7                                      ubfx r1, r4, #8, #8
005afc48  54 38 e7 e7                                      ubfx r3, r4, #0x10, #8
005afc4c  02 20 8f e0                                      add r2, pc, r2
005afc50  03 31 82 e0                                      add r3, r2, r3, lsl #2
005afc54  06 61 82 e0                                      add r6, r2, r6, lsl #2
005afc58  01 21 82 e0                                      add r2, r2, r1, lsl #2
005afc5c  7c 10 92 e5                                      ldr r1, [r2, #0x7c]
005afc60  7c 00 96 e5                                      ldr r0, [r6, #0x7c]
005afc64  7c 20 93 e5                                      ldr r2, [r3, #0x7c]
005afc68  c5 7a f5 eb                                      bl #0x30e784
005afc6c  f4 41 85 e5                                      str r4, [r5, #0x1f4]
005afc70  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005afc74  e8 03 33 00                                      .byte 0xe8, 0x03, 0x33, 0x00

; FUNCTION 0x005afc78, declared_size=84, range_size=84, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE12setFrontFaceENS0_14E_FACE_WINDINGE
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::setFrontFace(glitch::video::E_FACE_WINDING)
; decoder-mode: arm
005afc78  70 40 2d e9                                      push {r4, r5, r6, lr}
005afc7c  dc 31 90 e5                                      ldr r3, [r0, #0x1dc]
005afc80  00 40 a0 e1                                      mov r4, r0
005afc84  01 50 a0 e1                                      mov r5, r1
005afc88  03 00 51 e1                                      cmp r1, r3
005afc8c  0c 00 00 0a                                      beq #0x5afcc4
005afc90  00 30 90 e5                                      ldr r3, [r0]
005afc94  0f e0 a0 e1                                      mov lr, pc
005afc98  fc f1 93 e5                                      ldr pc, [r3, #0x1fc]
005afc9c  a0 34 d4 e5                                      ldrb r3, [r4, #0x4a0]
005afca0  00 00 53 e3                                      cmp r3, #0
005afca4  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
005afca8  01 20 65 12                                      rsbne r2, r5, #1
005afcac  05 20 a0 01                                      moveq r2, r5
005afcb0  03 30 8f e0                                      add r3, pc, r3
005afcb4  02 31 83 e0                                      add r3, r3, r2, lsl #2
005afcb8  9c 00 93 e5                                      ldr r0, [r3, #0x9c]
005afcbc  6d 78 f5 eb                                      bl #0x30de78
005afcc0  dc 51 84 e5                                      str r5, [r4, #0x1dc]
005afcc4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005afcc8  84 03 33 00                                      .byte 0x84, 0x03, 0x33, 0x00

; FUNCTION 0x005afccc, declared_size=52, range_size=52, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE12setDepthMaskEb
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::setDepthMask(bool)
; decoder-mode: arm
005afccc  70 40 2d e9                                      push {r4, r5, r6, lr}
005afcd0  c7 31 d0 e5                                      ldrb r3, [r0, #0x1c7]
005afcd4  00 40 a0 e1                                      mov r4, r0
005afcd8  01 50 a0 e1                                      mov r5, r1
005afcdc  01 00 53 e1                                      cmp r3, r1
005afce0  05 00 00 0a                                      beq #0x5afcfc
005afce4  00 30 90 e5                                      ldr r3, [r0]
005afce8  0f e0 a0 e1                                      mov lr, pc
005afcec  fc f1 93 e5                                      ldr pc, [r3, #0x1fc]
005afcf0  05 00 a0 e1                                      mov r0, r5
005afcf4  4f 79 f5 eb                                      bl #0x30e238
005afcf8  c7 51 c4 e5                                      strb r5, [r4, #0x1c7]
005afcfc  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x005afd00, declared_size=64, range_size=64, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE12setLineWidthEf
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::setLineWidth(float)
; decoder-mode: arm
005afd00  70 40 2d e9                                      push {r4, r5, r6, lr}
005afd04  00 40 a0 e1                                      mov r4, r0
005afd08  01 50 a0 e1                                      mov r5, r1
005afd0c  01 00 a0 e1                                      mov r0, r1
005afd10  18 12 94 e5                                      ldr r1, [r4, #0x218]
005afd14  9c 78 f5 eb                                      bl #0x30df8c
005afd18  00 00 50 e3                                      cmp r0, #0
005afd1c  06 00 00 1a                                      bne #0x5afd3c
005afd20  00 30 94 e5                                      ldr r3, [r4]
005afd24  04 00 a0 e1                                      mov r0, r4
005afd28  0f e0 a0 e1                                      mov lr, pc
005afd2c  fc f1 93 e5                                      ldr pc, [r3, #0x1fc]
005afd30  05 00 a0 e1                                      mov r0, r5
005afd34  e8 7b f5 eb                                      bl #0x30ecdc
005afd38  18 52 84 e5                                      str r5, [r4, #0x218]
005afd3c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x005b0594, declared_size=164, range_size=164, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE15ReloadbufferMapEv
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::ReloadbufferMap()
; decoder-mode: arm
005b0594  70 40 2d e9                                      push {r4, r5, r6, lr}
005b0598  08 48 90 e5                                      ldr r4, [r0, #0x808]
005b059c  02 5b 80 e2                                      add r5, r0, #0x800
005b05a0  04 00 55 e1                                      cmp r5, r4
005b05a4  15 00 00 0a                                      beq #0x5b0600
005b05a8  18 00 94 e5                                      ldr r0, [r4, #0x18]
005b05ac  14 10 94 e5                                      ldr r1, [r4, #0x14]
005b05b0  0f 76 f5 eb                                      bl #0x30ddf4
005b05b4  24 20 94 e5                                      ldr r2, [r4, #0x24]
005b05b8  18 00 94 e5                                      ldr r0, [r4, #0x18]
005b05bc  20 10 94 e5                                      ldr r1, [r4, #0x20]
005b05c0  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
005b05c4  86 78 f5 eb                                      bl #0x30e7e4
005b05c8  18 00 94 e5                                      ldr r0, [r4, #0x18]
005b05cc  00 10 a0 e3                                      mov r1, #0
005b05d0  07 76 f5 eb                                      bl #0x30ddf4
005b05d4  0c 20 94 e5                                      ldr r2, [r4, #0xc]
005b05d8  00 00 52 e3                                      cmp r2, #0
005b05dc  01 00 00 1a                                      bne #0x5b05e8
005b05e0  07 00 00 ea                                      b #0x5b0604
005b05e4  03 20 a0 e1                                      mov r2, r3
005b05e8  08 30 92 e5                                      ldr r3, [r2, #8]
005b05ec  00 00 53 e3                                      cmp r3, #0
005b05f0  fb ff ff 1a                                      bne #0x5b05e4
005b05f4  02 40 a0 e1                                      mov r4, r2
005b05f8  04 00 55 e1                                      cmp r5, r4
005b05fc  e9 ff ff 1a                                      bne #0x5b05a8
005b0600  70 80 bd e8                                      pop {r4, r5, r6, pc}
005b0604  04 30 94 e5                                      ldr r3, [r4, #4]
005b0608  0c 10 93 e5                                      ldr r1, [r3, #0xc]
005b060c  04 00 51 e1                                      cmp r1, r4
005b0610  05 00 00 1a                                      bne #0x5b062c
005b0614  03 40 a0 e1                                      mov r4, r3
005b0618  04 30 93 e5                                      ldr r3, [r3, #4]
005b061c  0c 20 93 e5                                      ldr r2, [r3, #0xc]
005b0620  02 00 54 e1                                      cmp r4, r2
005b0624  fa ff ff 0a                                      beq #0x5b0614
005b0628  0c 20 94 e5                                      ldr r2, [r4, #0xc]
005b062c  02 00 53 e1                                      cmp r3, r2
005b0630  03 40 a0 11                                      movne r4, r3
005b0634  d9 ff ff ea                                      b #0x5b05a0

; FUNCTION 0x005b0a9c, declared_size=336, range_size=336, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE15setViewportImplERKNS_4core4rectIiEE
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::setViewportImpl(glitch::core::rect<int> const&)
; decoder-mode: arm
005b0a9c  70 40 2d e9                                      push {r4, r5, r6, lr}
005b0aa0  00 40 a0 e1                                      mov r4, r0
005b0aa4  00 30 90 e5                                      ldr r3, [r0]
005b0aa8  20 d0 4d e2                                      sub sp, sp, #0x20
005b0aac  01 60 a0 e1                                      mov r6, r1
005b0ab0  0f e0 a0 e1                                      mov lr, pc
005b0ab4  fc f1 93 e5                                      ldr pc, [r3, #0x1fc]
005b0ab8  cc 20 94 e5                                      ldr r2, [r4, #0xcc]
005b0abc  c8 30 94 e5                                      ldr r3, [r4, #0xc8]
005b0ac0  02 30 63 e0                                      rsb r3, r3, r2
005b0ac4  43 31 a0 e1                                      asr r3, r3, #2
005b0ac8  01 00 53 e3                                      cmp r3, #1
005b0acc  3c 51 94 95                                      ldrls r5, [r4, #0x13c]
005b0ad0  50 32 94 e5                                      ldr r3, [r4, #0x250]
005b0ad4  00 50 a0 83                                      movhi r5, #0
005b0ad8  03 00 55 e1                                      cmp r5, r3
005b0adc  0f 00 00 0a                                      beq #0x5b0b20
005b0ae0  14 e0 8d e2                                      add lr, sp, #0x14
005b0ae4  00 c0 a0 e3                                      mov ip, #0
005b0ae8  00 e0 8d e5                                      str lr, [sp]
005b0aec  04 00 a0 e1                                      mov r0, r4
005b0af0  10 e0 8d e2                                      add lr, sp, #0x10
005b0af4  06 10 a0 e1                                      mov r1, r6
005b0af8  1c 20 8d e2                                      add r2, sp, #0x1c
005b0afc  18 30 8d e2                                      add r3, sp, #0x18
005b0b00  04 e0 8d e5                                      str lr, [sp, #4]
005b0b04  0c c0 8d e5                                      str ip, [sp, #0xc]
005b0b08  08 c0 8d e5                                      str ip, [sp, #8]
005b0b0c  5c b3 04 eb                                      bl #0x6dd884
005b0b10  00 00 50 e3                                      cmp r0, #0
005b0b14  12 00 00 1a                                      bne #0x5b0b64
005b0b18  20 d0 8d e2                                      add sp, sp, #0x20
005b0b1c  70 80 bd e8                                      pop {r4, r5, r6, pc}
005b0b20  40 22 94 e5                                      ldr r2, [r4, #0x240]
005b0b24  00 30 96 e5                                      ldr r3, [r6]
005b0b28  03 00 52 e1                                      cmp r2, r3
005b0b2c  eb ff ff 1a                                      bne #0x5b0ae0
005b0b30  44 22 94 e5                                      ldr r2, [r4, #0x244]
005b0b34  04 30 96 e5                                      ldr r3, [r6, #4]
005b0b38  03 00 52 e1                                      cmp r2, r3
005b0b3c  e7 ff ff 1a                                      bne #0x5b0ae0
005b0b40  48 22 94 e5                                      ldr r2, [r4, #0x248]
005b0b44  08 30 96 e5                                      ldr r3, [r6, #8]
005b0b48  03 00 52 e1                                      cmp r2, r3
005b0b4c  e3 ff ff 1a                                      bne #0x5b0ae0
005b0b50  4c 22 94 e5                                      ldr r2, [r4, #0x24c]
005b0b54  0c 30 96 e5                                      ldr r3, [r6, #0xc]
005b0b58  03 00 52 e1                                      cmp r2, r3
005b0b5c  df ff ff 1a                                      bne #0x5b0ae0
005b0b60  ec ff ff ea                                      b #0x5b0b18
005b0b64  10 30 9d e5                                      ldr r3, [sp, #0x10]
005b0b68  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
005b0b6c  18 10 9d e5                                      ldr r1, [sp, #0x18]
005b0b70  14 20 9d e5                                      ldr r2, [sp, #0x14]
005b0b74  fe 74 f5 eb                                      bl #0x30df74
005b0b78  a0 30 94 e5                                      ldr r3, [r4, #0xa0]
005b0b7c  01 00 53 e3                                      cmp r3, #1
005b0b80  09 00 00 0a                                      beq #0x5b0bac
005b0b84  00 30 96 e5                                      ldr r3, [r6]
005b0b88  40 32 84 e5                                      str r3, [r4, #0x240]
005b0b8c  04 30 96 e5                                      ldr r3, [r6, #4]
005b0b90  44 32 84 e5                                      str r3, [r4, #0x244]
005b0b94  08 30 96 e5                                      ldr r3, [r6, #8]
005b0b98  48 32 84 e5                                      str r3, [r4, #0x248]
005b0b9c  0c 30 96 e5                                      ldr r3, [r6, #0xc]
005b0ba0  50 52 84 e5                                      str r5, [r4, #0x250]
005b0ba4  4c 32 84 e5                                      str r3, [r4, #0x24c]
005b0ba8  da ff ff ea                                      b #0x5b0b18
005b0bac  48 22 94 e5                                      ldr r2, [r4, #0x248]
005b0bb0  40 32 94 e5                                      ldr r3, [r4, #0x240]
005b0bb4  02 30 63 e0                                      rsb r3, r3, r2
005b0bb8  14 20 9d e5                                      ldr r2, [sp, #0x14]
005b0bbc  03 00 52 e1                                      cmp r2, r3
005b0bc0  02 00 00 0a                                      beq #0x5b0bd0
005b0bc4  04 00 a0 e1                                      mov r0, r4
005b0bc8  a4 b5 04 eb                                      bl #0x6de260
005b0bcc  ec ff ff ea                                      b #0x5b0b84
005b0bd0  4c 22 94 e5                                      ldr r2, [r4, #0x24c]
005b0bd4  44 32 94 e5                                      ldr r3, [r4, #0x244]
005b0bd8  02 30 63 e0                                      rsb r3, r3, r2
005b0bdc  10 20 9d e5                                      ldr r2, [sp, #0x10]
005b0be0  03 00 52 e1                                      cmp r2, r3
005b0be4  f6 ff ff 1a                                      bne #0x5b0bc4
005b0be8  e5 ff ff ea                                      b #0x5b0b84

; FUNCTION 0x005b0bec, declared_size=256, range_size=256, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE10setScissorERKNS_4core4rectIiEE
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::setScissor(glitch::core::rect<int> const&)
; decoder-mode: arm
005b0bec  70 40 2d e9                                      push {r4, r5, r6, lr}
005b0bf0  cc 20 90 e5                                      ldr r2, [r0, #0xcc]
005b0bf4  c8 30 90 e5                                      ldr r3, [r0, #0xc8]
005b0bf8  20 d0 4d e2                                      sub sp, sp, #0x20
005b0bfc  00 40 a0 e1                                      mov r4, r0
005b0c00  02 30 63 e0                                      rsb r3, r3, r2
005b0c04  43 31 a0 e1                                      asr r3, r3, #2
005b0c08  01 00 53 e3                                      cmp r3, #1
005b0c0c  3c 51 90 95                                      ldrls r5, [r0, #0x13c]
005b0c10  3c 32 90 e5                                      ldr r3, [r0, #0x23c]
005b0c14  00 50 a0 83                                      movhi r5, #0
005b0c18  01 60 a0 e1                                      mov r6, r1
005b0c1c  03 00 55 e1                                      cmp r5, r3
005b0c20  20 00 00 0a                                      beq #0x5b0ca8
005b0c24  04 00 a0 e1                                      mov r0, r4
005b0c28  00 30 94 e5                                      ldr r3, [r4]
005b0c2c  0f e0 a0 e1                                      mov lr, pc
005b0c30  fc f1 93 e5                                      ldr pc, [r3, #0x1fc]
005b0c34  14 c0 8d e2                                      add ip, sp, #0x14
005b0c38  00 c0 8d e5                                      str ip, [sp]
005b0c3c  10 c0 8d e2                                      add ip, sp, #0x10
005b0c40  04 c0 8d e5                                      str ip, [sp, #4]
005b0c44  01 c0 a0 e3                                      mov ip, #1
005b0c48  06 10 a0 e1                                      mov r1, r6
005b0c4c  1c 20 8d e2                                      add r2, sp, #0x1c
005b0c50  18 30 8d e2                                      add r3, sp, #0x18
005b0c54  08 c0 8d e5                                      str ip, [sp, #8]
005b0c58  04 00 a0 e1                                      mov r0, r4
005b0c5c  00 c0 a0 e3                                      mov ip, #0
005b0c60  0c c0 8d e5                                      str ip, [sp, #0xc]
005b0c64  06 b3 04 eb                                      bl #0x6dd884
005b0c68  10 30 9d e5                                      ldr r3, [sp, #0x10]
005b0c6c  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
005b0c70  18 10 9d e5                                      ldr r1, [sp, #0x18]
005b0c74  14 20 9d e5                                      ldr r2, [sp, #0x14]
005b0c78  1c 76 f5 eb                                      bl #0x30e4f0
005b0c7c  00 30 96 e5                                      ldr r3, [r6]
005b0c80  2c 32 84 e5                                      str r3, [r4, #0x22c]
005b0c84  04 30 96 e5                                      ldr r3, [r6, #4]
005b0c88  30 32 84 e5                                      str r3, [r4, #0x230]
005b0c8c  08 30 96 e5                                      ldr r3, [r6, #8]
005b0c90  34 32 84 e5                                      str r3, [r4, #0x234]
005b0c94  0c 30 96 e5                                      ldr r3, [r6, #0xc]
005b0c98  3c 52 84 e5                                      str r5, [r4, #0x23c]
005b0c9c  38 32 84 e5                                      str r3, [r4, #0x238]
005b0ca0  20 d0 8d e2                                      add sp, sp, #0x20
005b0ca4  70 80 bd e8                                      pop {r4, r5, r6, pc}
005b0ca8  00 20 91 e5                                      ldr r2, [r1]
005b0cac  2c 32 90 e5                                      ldr r3, [r0, #0x22c]
005b0cb0  03 00 52 e1                                      cmp r2, r3
005b0cb4  da ff ff 1a                                      bne #0x5b0c24
005b0cb8  04 20 91 e5                                      ldr r2, [r1, #4]
005b0cbc  30 32 90 e5                                      ldr r3, [r0, #0x230]
005b0cc0  03 00 52 e1                                      cmp r2, r3
005b0cc4  d6 ff ff 1a                                      bne #0x5b0c24
005b0cc8  08 20 91 e5                                      ldr r2, [r1, #8]
005b0ccc  34 32 90 e5                                      ldr r3, [r0, #0x234]
005b0cd0  03 00 52 e1                                      cmp r2, r3
005b0cd4  d2 ff ff 1a                                      bne #0x5b0c24
005b0cd8  0c 20 96 e5                                      ldr r2, [r6, #0xc]
005b0cdc  38 32 94 e5                                      ldr r3, [r4, #0x238]
005b0ce0  03 00 52 e1                                      cmp r2, r3
005b0ce4  ce ff ff 1a                                      bne #0x5b0c24
005b0ce8  ec ff ff ea                                      b #0x5b0ca0

; FUNCTION 0x005b0cec, declared_size=96, range_size=96, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE12setColorMaskEbbbb
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::setColorMask(bool, bool, bool, bool)
; decoder-mode: arm
005b0cec  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005b0cf0  00 40 a0 e3                                      mov r4, #0
005b0cf4  11 40 c7 e7                                      bfi r4, r1, #0, #8
005b0cf8  20 60 dd e5                                      ldrb r6, [sp, #0x20]
005b0cfc  03 80 a0 e1                                      mov r8, r3
005b0d00  12 44 cf e7                                      bfi r4, r2, #8, #8
005b0d04  ec 31 90 e5                                      ldr r3, [r0, #0x1ec]
005b0d08  18 48 d7 e7                                      bfi r4, r8, #0x10, #8
005b0d0c  16 4c df e7                                      bfi r4, r6, #0x18, #8
005b0d10  03 00 54 e1                                      cmp r4, r3
005b0d14  01 70 a0 e1                                      mov r7, r1
005b0d18  02 a0 a0 e1                                      mov sl, r2
005b0d1c  00 50 a0 e1                                      mov r5, r0
005b0d20  08 00 00 0a                                      beq #0x5b0d48
005b0d24  00 30 90 e5                                      ldr r3, [r0]
005b0d28  0f e0 a0 e1                                      mov lr, pc
005b0d2c  fc f1 93 e5                                      ldr pc, [r3, #0x1fc]
005b0d30  07 00 a0 e1                                      mov r0, r7
005b0d34  0a 10 a0 e1                                      mov r1, sl
005b0d38  08 20 a0 e1                                      mov r2, r8
005b0d3c  06 30 a0 e1                                      mov r3, r6
005b0d40  61 74 f5 eb                                      bl #0x30decc
005b0d44  ec 41 85 e5                                      str r4, [r5, #0x1ec]
005b0d48  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x005b0d4c, declared_size=224, range_size=224, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE13setClearColorENS0_6SColorE
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::setClearColor(glitch::video::SColor)
; decoder-mode: arm
005b0d4c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005b0d50  0a 52 d0 e5                                      ldrb r5, [r0, #0x20a]
005b0d54  08 32 d0 e5                                      ldrb r3, [r0, #0x208]
005b0d58  09 c2 d0 e5                                      ldrb ip, [r0, #0x209]
005b0d5c  0b 22 d0 e5                                      ldrb r2, [r0, #0x20b]
005b0d60  14 d0 4d e2                                      sub sp, sp, #0x14
005b0d64  0e 50 cd e5                                      strb r5, [sp, #0xe]
005b0d68  0d c0 cd e5                                      strb ip, [sp, #0xd]
005b0d6c  0f 20 cd e5                                      strb r2, [sp, #0xf]
005b0d70  0c 30 cd e5                                      strb r3, [sp, #0xc]
005b0d74  0c 30 9d e5                                      ldr r3, [sp, #0xc]
005b0d78  00 40 a0 e1                                      mov r4, r0
005b0d7c  04 10 8d e5                                      str r1, [sp, #4]
005b0d80  03 00 51 e1                                      cmp r1, r3
005b0d84  71 70 ef e6                                      uxtb r7, r1
005b0d88  51 84 e7 e7                                      ubfx r8, r1, #8, #8
005b0d8c  51 58 e7 e7                                      ubfx r5, r1, #0x10, #8
005b0d90  21 6c a0 e1                                      lsr r6, r1, #0x18
005b0d94  22 00 00 0a                                      beq #0x5b0e24
005b0d98  00 30 90 e5                                      ldr r3, [r0]
005b0d9c  0f e0 a0 e1                                      mov lr, pc
005b0da0  fc f1 93 e5                                      ldr pc, [r3, #0x1fc]
005b0da4  07 00 a0 e1                                      mov r0, r7
005b0da8  ed 76 f5 eb                                      bl #0x30e964
005b0dac  81 10 08 e3                                      movw r1, #0x8081
005b0db0  80 1b 43 e3                                      movt r1, #0x3b80
005b0db4  ec 77 f5 eb                                      bl #0x30ed6c
005b0db8  00 90 a0 e1                                      mov sb, r0
005b0dbc  08 00 a0 e1                                      mov r0, r8
005b0dc0  e7 76 f5 eb                                      bl #0x30e964
005b0dc4  81 10 08 e3                                      movw r1, #0x8081
005b0dc8  80 1b 43 e3                                      movt r1, #0x3b80
005b0dcc  e6 77 f5 eb                                      bl #0x30ed6c
005b0dd0  00 a0 a0 e1                                      mov sl, r0
005b0dd4  05 00 a0 e1                                      mov r0, r5
005b0dd8  e1 76 f5 eb                                      bl #0x30e964
005b0ddc  81 10 08 e3                                      movw r1, #0x8081
005b0de0  80 1b 43 e3                                      movt r1, #0x3b80
005b0de4  e0 77 f5 eb                                      bl #0x30ed6c
005b0de8  00 b0 a0 e1                                      mov fp, r0
005b0dec  06 00 a0 e1                                      mov r0, r6
005b0df0  db 76 f5 eb                                      bl #0x30e964
005b0df4  81 10 08 e3                                      movw r1, #0x8081
005b0df8  80 1b 43 e3                                      movt r1, #0x3b80
005b0dfc  da 77 f5 eb                                      bl #0x30ed6c
005b0e00  0a 10 a0 e1                                      mov r1, sl
005b0e04  00 30 a0 e1                                      mov r3, r0
005b0e08  0b 20 a0 e1                                      mov r2, fp
005b0e0c  09 00 a0 e1                                      mov r0, sb
005b0e10  fa 76 f5 eb                                      bl #0x30ea00
005b0e14  08 72 c4 e5                                      strb r7, [r4, #0x208]
005b0e18  0b 62 c4 e5                                      strb r6, [r4, #0x20b]
005b0e1c  0a 52 c4 e5                                      strb r5, [r4, #0x20a]
005b0e20  09 82 c4 e5                                      strb r8, [r4, #0x209]
005b0e24  14 d0 8d e2                                      add sp, sp, #0x14
005b0e28  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x005b0e2c, declared_size=52, range_size=52, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE14setStencilMaskEh
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::setStencilMask(unsigned char)
; decoder-mode: arm
005b0e2c  70 40 2d e9                                      push {r4, r5, r6, lr}
005b0e30  f8 31 d0 e5                                      ldrb r3, [r0, #0x1f8]
005b0e34  00 40 a0 e1                                      mov r4, r0
005b0e38  01 50 a0 e1                                      mov r5, r1
005b0e3c  01 00 53 e1                                      cmp r3, r1
005b0e40  05 00 00 0a                                      beq #0x5b0e5c
005b0e44  00 30 90 e5                                      ldr r3, [r0]
005b0e48  0f e0 a0 e1                                      mov lr, pc
005b0e4c  fc f1 93 e5                                      ldr pc, [r3, #0x1fc]
005b0e50  05 00 a0 e1                                      mov r0, r5
005b0e54  c0 75 f5 eb                                      bl #0x30e55c
005b0e58  f8 51 c4 e5                                      strb r5, [r4, #0x1f8]
005b0e5c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x005b0e60, declared_size=52, range_size=52, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE15setClearStencilEh
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::setClearStencil(unsigned char)
; decoder-mode: arm
005b0e60  70 40 2d e9                                      push {r4, r5, r6, lr}
005b0e64  f9 31 d0 e5                                      ldrb r3, [r0, #0x1f9]
005b0e68  00 40 a0 e1                                      mov r4, r0
005b0e6c  01 50 a0 e1                                      mov r5, r1
005b0e70  01 00 53 e1                                      cmp r3, r1
005b0e74  05 00 00 0a                                      beq #0x5b0e90
005b0e78  00 30 90 e5                                      ldr r3, [r0]
005b0e7c  0f e0 a0 e1                                      mov lr, pc
005b0e80  fc f1 93 e5                                      ldr pc, [r3, #0x1fc]
005b0e84  05 00 a0 e1                                      mov r0, r5
005b0e88  ae 77 f5 eb                                      bl #0x30ed48
005b0e8c  f9 51 c4 e5                                      strb r5, [r4, #0x1f9]
005b0e90  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x005b0e94, declared_size=64, range_size=64, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE13setClearDepthEf
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::setClearDepth(float)
; decoder-mode: arm
005b0e94  70 40 2d e9                                      push {r4, r5, r6, lr}
005b0e98  00 40 a0 e1                                      mov r4, r0
005b0e9c  01 50 a0 e1                                      mov r5, r1
005b0ea0  01 00 a0 e1                                      mov r0, r1
005b0ea4  0c 12 94 e5                                      ldr r1, [r4, #0x20c]
005b0ea8  37 74 f5 eb                                      bl #0x30df8c
005b0eac  00 00 50 e3                                      cmp r0, #0
005b0eb0  00 00 00 0a                                      beq #0x5b0eb8
005b0eb4  70 80 bd e8                                      pop {r4, r5, r6, pc}
005b0eb8  04 00 a0 e1                                      mov r0, r4
005b0ebc  00 30 94 e5                                      ldr r3, [r4]
005b0ec0  0f e0 a0 e1                                      mov lr, pc
005b0ec4  fc f1 93 e5                                      ldr pc, [r3, #0x1fc]
005b0ec8  05 00 a0 e1                                      mov r0, r5
005b0ecc  70 40 bd e8                                      pop {r4, r5, r6, lr}
005b0ed0  71 75 f5 ea                                      b #0x30e49c

; FUNCTION 0x005b0ed4, declared_size=100, range_size=100, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE13setDepthRangeEff
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::setDepthRange(float, float)
; decoder-mode: arm
005b0ed4  70 40 2d e9                                      push {r4, r5, r6, lr}
005b0ed8  00 40 a0 e1                                      mov r4, r0
005b0edc  01 50 a0 e1                                      mov r5, r1
005b0ee0  01 00 a0 e1                                      mov r0, r1
005b0ee4  10 12 94 e5                                      ldr r1, [r4, #0x210]
005b0ee8  02 60 a0 e1                                      mov r6, r2
005b0eec  26 74 f5 eb                                      bl #0x30df8c
005b0ef0  00 00 50 e3                                      cmp r0, #0
005b0ef4  09 00 00 1a                                      bne #0x5b0f20
005b0ef8  00 30 94 e5                                      ldr r3, [r4]
005b0efc  04 00 a0 e1                                      mov r0, r4
005b0f00  0f e0 a0 e1                                      mov lr, pc
005b0f04  fc f1 93 e5                                      ldr pc, [r3, #0x1fc]
005b0f08  05 00 a0 e1                                      mov r0, r5
005b0f0c  06 10 a0 e1                                      mov r1, r6
005b0f10  b4 76 f5 eb                                      bl #0x30e9e8
005b0f14  14 62 84 e5                                      str r6, [r4, #0x214]
005b0f18  10 52 84 e5                                      str r5, [r4, #0x210]
005b0f1c  70 80 bd e8                                      pop {r4, r5, r6, pc}
005b0f20  06 00 a0 e1                                      mov r0, r6
005b0f24  14 12 94 e5                                      ldr r1, [r4, #0x214]
005b0f28  17 74 f5 eb                                      bl #0x30df8c
005b0f2c  00 00 50 e3                                      cmp r0, #0
005b0f30  f0 ff ff 0a                                      beq #0x5b0ef8
005b0f34  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x005b0f38, declared_size=600, range_size=600, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE12clearBuffersEi
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::clearBuffers(int)
; decoder-mode: arm
005b0f38  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005b0f3c  01 60 a0 e1                                      mov r6, r1
005b0f40  0c d0 4d e2                                      sub sp, sp, #0xc
005b0f44  00 30 90 e5                                      ldr r3, [r0]
005b0f48  00 40 a0 e1                                      mov r4, r0
005b0f4c  0f e0 a0 e1                                      mov lr, pc
005b0f50  fc f1 93 e5                                      ldr pc, [r3, #0x1fc]
005b0f54  01 50 16 e2                                      ands r5, r6, #1
005b0f58  01 59 a0 13                                      movne r5, #0x4000
005b0f5c  02 00 16 e3                                      tst r6, #2
005b0f60  c7 81 d4 e5                                      ldrb r8, [r4, #0x1c7]
005b0f64  02 00 00 0a                                      beq #0x5b0f74
005b0f68  00 00 58 e3                                      cmp r8, #0
005b0f6c  67 00 00 0a                                      beq #0x5b1110
005b0f70  01 5c 85 e3                                      orr r5, r5, #0x100
005b0f74  04 00 16 e3                                      tst r6, #4
005b0f78  f8 71 d4 e5                                      ldrb r7, [r4, #0x1f8]
005b0f7c  04 00 00 0a                                      beq #0x5b0f94
005b0f80  ff 00 57 e3                                      cmp r7, #0xff
005b0f84  01 00 00 0a                                      beq #0x5b0f90
005b0f88  ff 00 a0 e3                                      mov r0, #0xff
005b0f8c  72 75 f5 eb                                      bl #0x30e55c
005b0f90  01 5b 85 e3                                      orr r5, r5, #0x400
005b0f94  38 31 94 e5                                      ldr r3, [r4, #0x138]
005b0f98  d3 61 d4 e5                                      ldrb r6, [r4, #0x1d3]
005b0f9c  01 00 13 e3                                      tst r3, #1
005b0fa0  06 a0 a0 01                                      moveq sl, r6
005b0fa4  32 00 00 0a                                      beq #0x5b1074
005b0fa8  00 00 56 e3                                      cmp r6, #0
005b0fac  5a 00 00 1a                                      bne #0x5b111c
005b0fb0  08 a2 d4 e5                                      ldrb sl, [r4, #0x208]
005b0fb4  0b c2 d4 e5                                      ldrb ip, [r4, #0x20b]
005b0fb8  0a b2 d4 e5                                      ldrb fp, [r4, #0x20a]
005b0fbc  00 00 5a e3                                      cmp sl, #0
005b0fc0  09 92 d4 e5                                      ldrb sb, [r4, #0x209]
005b0fc4  42 00 00 0a                                      beq #0x5b10d4
005b0fc8  00 00 a0 e3                                      mov r0, #0
005b0fcc  00 30 a0 e1                                      mov r3, r0
005b0fd0  00 20 a0 e1                                      mov r2, r0
005b0fd4  00 10 a0 e1                                      mov r1, r0
005b0fd8  00 c0 8d e5                                      str ip, [sp]
005b0fdc  87 76 f5 eb                                      bl #0x30ea00
005b0fe0  01 09 a0 e3                                      mov r0, #0x4000
005b0fe4  dc 73 f5 eb                                      bl #0x30df5c
005b0fe8  0a 00 a0 e1                                      mov r0, sl
005b0fec  5c 76 f5 eb                                      bl #0x30e964
005b0ff0  43 14 a0 e3                                      mov r1, #0x43000000
005b0ff4  7f 18 81 e2                                      add r1, r1, #0x7f0000
005b0ff8  25 77 f5 eb                                      bl #0x30ec94
005b0ffc  00 20 a0 e1                                      mov r2, r0
005b1000  09 00 a0 e1                                      mov r0, sb
005b1004  04 20 8d e5                                      str r2, [sp, #4]
005b1008  55 76 f5 eb                                      bl #0x30e964
005b100c  43 14 a0 e3                                      mov r1, #0x43000000
005b1010  7f 18 81 e2                                      add r1, r1, #0x7f0000
005b1014  1e 77 f5 eb                                      bl #0x30ec94
005b1018  00 a0 a0 e1                                      mov sl, r0
005b101c  0b 00 a0 e1                                      mov r0, fp
005b1020  4f 76 f5 eb                                      bl #0x30e964
005b1024  43 14 a0 e3                                      mov r1, #0x43000000
005b1028  7f 18 81 e2                                      add r1, r1, #0x7f0000
005b102c  18 77 f5 eb                                      bl #0x30ec94
005b1030  00 c0 9d e5                                      ldr ip, [sp]
005b1034  00 90 a0 e1                                      mov sb, r0
005b1038  0c 00 a0 e1                                      mov r0, ip
005b103c  48 76 f5 eb                                      bl #0x30e964
005b1040  43 14 a0 e3                                      mov r1, #0x43000000
005b1044  7f 18 81 e2                                      add r1, r1, #0x7f0000
005b1048  11 77 f5 eb                                      bl #0x30ec94
005b104c  04 20 9d e5                                      ldr r2, [sp, #4]
005b1050  00 30 a0 e1                                      mov r3, r0
005b1054  0a 10 a0 e1                                      mov r1, sl
005b1058  02 00 a0 e1                                      mov r0, r2
005b105c  09 20 a0 e1                                      mov r2, sb
005b1060  66 76 f5 eb                                      bl #0x30ea00
005b1064  38 31 94 e5                                      ldr r3, [r4, #0x138]
005b1068  00 a0 a0 e3                                      mov sl, #0
005b106c  01 30 c3 e3                                      bic r3, r3, #1
005b1070  38 31 84 e5                                      str r3, [r4, #0x138]
005b1074  00 00 55 e3                                      cmp r5, #0
005b1078  07 00 00 0a                                      beq #0x5b109c
005b107c  cc 30 94 e5                                      ldr r3, [r4, #0xcc]
005b1080  c8 20 94 e5                                      ldr r2, [r4, #0xc8]
005b1084  03 20 62 e0                                      rsb r2, r2, r3
005b1088  42 21 a0 e1                                      asr r2, r2, #2
005b108c  01 00 52 e3                                      cmp r2, #1
005b1090  2a 00 00 0a                                      beq #0x5b1140
005b1094  05 00 a0 e1                                      mov r0, r5
005b1098  af 73 f5 eb                                      bl #0x30df5c
005b109c  06 00 5a e1                                      cmp sl, r6
005b10a0  03 00 00 0a                                      beq #0x5b10b4
005b10a4  00 00 56 e3                                      cmp r6, #0
005b10a8  15 00 00 1a                                      bne #0x5b1104
005b10ac  11 0c 00 e3                                      movw r0, #0xc11
005b10b0  ac 73 f5 eb                                      bl #0x30df68
005b10b4  00 00 58 e3                                      cmp r8, #0
005b10b8  0e 00 00 0a                                      beq #0x5b10f8
005b10bc  ff 00 57 e3                                      cmp r7, #0xff
005b10c0  0a 00 00 0a                                      beq #0x5b10f0
005b10c4  07 00 a0 e1                                      mov r0, r7
005b10c8  0c d0 8d e2                                      add sp, sp, #0xc
005b10cc  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005b10d0  21 75 f5 ea                                      b #0x30e55c
005b10d4  00 00 59 e3                                      cmp sb, #0
005b10d8  ba ff ff 1a                                      bne #0x5b0fc8
005b10dc  00 00 5b e3                                      cmp fp, #0
005b10e0  b8 ff ff 1a                                      bne #0x5b0fc8
005b10e4  01 09 a0 e3                                      mov r0, #0x4000
005b10e8  9b 73 f5 eb                                      bl #0x30df5c
005b10ec  dc ff ff ea                                      b #0x5b1064
005b10f0  0c d0 8d e2                                      add sp, sp, #0xc
005b10f4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005b10f8  08 00 a0 e1                                      mov r0, r8
005b10fc  4d 74 f5 eb                                      bl #0x30e238
005b1100  ed ff ff ea                                      b #0x5b10bc
005b1104  11 0c 00 e3                                      movw r0, #0xc11
005b1108  0d 75 f5 eb                                      bl #0x30e544
005b110c  e8 ff ff ea                                      b #0x5b10b4
005b1110  01 00 a0 e3                                      mov r0, #1
005b1114  47 74 f5 eb                                      bl #0x30e238
005b1118  94 ff ff ea                                      b #0x5b0f70
005b111c  11 0c 00 e3                                      movw r0, #0xc11
005b1120  90 73 f5 eb                                      bl #0x30df68
005b1124  08 a2 d4 e5                                      ldrb sl, [r4, #0x208]
005b1128  0b c2 d4 e5                                      ldrb ip, [r4, #0x20b]
005b112c  0a b2 d4 e5                                      ldrb fp, [r4, #0x20a]
005b1130  00 00 5a e3                                      cmp sl, #0
005b1134  09 92 d4 e5                                      ldrb sb, [r4, #0x209]
005b1138  a2 ff ff 1a                                      bne #0x5b0fc8
005b113c  e4 ff ff ea                                      b #0x5b10d4
005b1140  04 10 13 e5                                      ldr r1, [r3, #-4]
005b1144  2c 30 91 e5                                      ldr r3, [r1, #0x2c]
005b1148  00 00 53 e3                                      cmp r3, #0
005b114c  02 00 00 1a                                      bne #0x5b115c
005b1150  30 30 91 e5                                      ldr r3, [r1, #0x30]
005b1154  00 00 53 e3                                      cmp r3, #0
005b1158  cd ff ff 0a                                      beq #0x5b1094
005b115c  00 00 5a e3                                      cmp sl, #0
005b1160  04 00 00 1a                                      bne #0x5b1178
005b1164  11 0c 00 e3                                      movw r0, #0xc11
005b1168  f5 74 f5 eb                                      bl #0x30e544
005b116c  cc 30 94 e5                                      ldr r3, [r4, #0xcc]
005b1170  01 a0 a0 e3                                      mov sl, #1
005b1174  04 10 13 e5                                      ldr r1, [r3, #-4]
005b1178  04 00 a0 e1                                      mov r0, r4
005b117c  14 10 81 e2                                      add r1, r1, #0x14
005b1180  00 30 94 e5                                      ldr r3, [r4]
005b1184  0f e0 a0 e1                                      mov lr, pc
005b1188  94 f1 93 e5                                      ldr pc, [r3, #0x194]
005b118c  c0 ff ff ea                                      b #0x5b1094

; FUNCTION 0x005b1190, declared_size=92, range_size=92, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE26createMultipleRenderTargetEv
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::createMultipleRenderTarget()
; decoder-mode: arm
005b1190  70 40 2d e9                                      push {r4, r5, r6, lr}
005b1194  00 60 a0 e1                                      mov r6, r0
005b1198  01 50 a0 e1                                      mov r5, r1
005b119c  5c 00 a0 e3                                      mov r0, #0x5c
005b11a0  00 10 a0 e3                                      mov r1, #0
005b11a4  00 0c fe eb                                      bl #0x5341ac
005b11a8  05 10 a0 e1                                      mov r1, r5
005b11ac  30 50 9f e5                                      ldr r5, [pc, #0x30]
005b11b0  00 40 a0 e1                                      mov r4, r0
005b11b4  8c b2 04 eb                                      bl #0x6ddbec
005b11b8  28 30 9f e5                                      ldr r3, [pc, #0x28]
005b11bc  05 50 8f e0                                      add r5, pc, r5
005b11c0  06 00 a0 e1                                      mov r0, r6
005b11c4  03 30 95 e7                                      ldr r3, [r5, r3]
005b11c8  08 30 83 e2                                      add r3, r3, #8
005b11cc  00 30 84 e5                                      str r3, [r4]
005b11d0  00 40 86 e5                                      str r4, [r6]
005b11d4  04 30 94 e5                                      ldr r3, [r4, #4]
005b11d8  01 30 83 e2                                      add r3, r3, #1
005b11dc  04 30 84 e5                                      str r3, [r4, #4]
005b11e0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005b11e4  d4 38 3e 00 78 4a 00 00                          .byte 0xd4, 0x38, 0x3e, 0x00, 0x78, 0x4a, 0x00, 0x00

; FUNCTION 0x005b13f4, declared_size=140, range_size=140, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE12createBufferENS0_13E_BUFFER_TYPEENS0_14E_BUFFER_USAGEEjPvb
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::createBuffer(glitch::video::E_BUFFER_TYPE, glitch::video::E_BUFFER_USAGE, unsigned int, void*, bool)
; decoder-mode: arm
005b13f4  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
005b13f8  00 60 a0 e1                                      mov r6, r0
005b13fc  14 d0 4d e2                                      sub sp, sp, #0x14
005b1400  01 50 a0 e1                                      mov r5, r1
005b1404  20 00 a0 e3                                      mov r0, #0x20
005b1408  00 10 a0 e3                                      mov r1, #0
005b140c  38 70 dd e5                                      ldrb r7, [sp, #0x38]
005b1410  02 a0 a0 e1                                      mov sl, r2
005b1414  03 80 a0 e1                                      mov r8, r3
005b1418  63 0b fe eb                                      bl #0x5341ac
005b141c  30 c0 9d e5                                      ldr ip, [sp, #0x30]
005b1420  05 10 a0 e1                                      mov r1, r5
005b1424  08 30 a0 e1                                      mov r3, r8
005b1428  00 c0 8d e5                                      str ip, [sp]
005b142c  34 c0 9d e5                                      ldr ip, [sp, #0x34]
005b1430  0a 20 a0 e1                                      mov r2, sl
005b1434  3c 50 9f e5                                      ldr r5, [pc, #0x3c]
005b1438  00 40 a0 e1                                      mov r4, r0
005b143c  04 c0 8d e5                                      str ip, [sp, #4]
005b1440  08 70 8d e5                                      str r7, [sp, #8]
005b1444  ce b2 04 eb                                      bl #0x6ddf84
005b1448  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
005b144c  05 50 8f e0                                      add r5, pc, r5
005b1450  06 00 a0 e1                                      mov r0, r6
005b1454  03 30 95 e7                                      ldr r3, [r5, r3]
005b1458  08 30 83 e2                                      add r3, r3, #8
005b145c  00 30 84 e5                                      str r3, [r4]
005b1460  00 40 86 e5                                      str r4, [r6]
005b1464  04 30 94 e5                                      ldr r3, [r4, #4]
005b1468  01 30 83 e2                                      add r3, r3, #1
005b146c  04 30 84 e5                                      str r3, [r4, #4]
005b1470  14 d0 8d e2                                      add sp, sp, #0x14
005b1474  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
005b1478  44 36 3e 00 14 14 00 00                          .byte 0x44, 0x36, 0x3e, 0x00, 0x14, 0x14, 0x00, 0x00

; FUNCTION 0x005b15f0, declared_size=324, range_size=324, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE13reloadShadersEv
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::reloadShaders()
; decoder-mode: arm
005b15f0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005b15f4  00 60 a0 e1                                      mov r6, r0
005b15f8  d8 30 90 e5                                      ldr r3, [r0, #0xd8]
005b15fc  24 01 9f e5                                      ldr r0, [pc, #0x124]
005b1600  7f 5e 86 e2                                      add r5, r6, #0x7f0
005b1604  ba 12 d3 e1                                      ldrh r1, [r3, #0x2a]
005b1608  00 00 8f e0                                      add r0, pc, r0
005b160c  1b 67 01 eb                                      bl #0x60b280
005b1610  d8 30 96 e5                                      ldr r3, [r6, #0xd8]
005b1614  0c 50 85 e2                                      add r5, r5, #0xc
005b1618  0c 71 9f e5                                      ldr r7, [pc, #0x10c]
005b161c  0c 20 93 e5                                      ldr r2, [r3, #0xc]
005b1620  04 10 83 e2                                      add r1, r3, #4
005b1624  07 70 8f e0                                      add r7, pc, r7
005b1628  fc 27 86 e5                                      str r2, [r6, #0x7fc]
005b162c  00 20 95 e5                                      ldr r2, [r5]
005b1630  00 00 a0 e3                                      mov r0, #0
005b1634  f4 80 9f e5                                      ldr r8, [pc, #0xf4]
005b1638  02 00 51 e1                                      cmp r1, r2
005b163c  27 00 00 0a                                      beq #0x5b16e0
005b1640  20 10 93 e5                                      ldr r1, [r3, #0x20]
005b1644  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
005b1648  bc 21 d2 e1                                      ldrh r2, [r2, #0x1c]
005b164c  01 10 63 e0                                      rsb r1, r3, r1
005b1650  c1 01 52 e1                                      cmp r2, r1, asr #3
005b1654  08 30 97 27                                      ldrhs r3, [r7, r8]
005b1658  82 31 83 30                                      addlo r3, r3, r2, lsl #3
005b165c  00 40 93 e5                                      ldr r4, [r3]
005b1660  00 00 54 e3                                      cmp r4, #0
005b1664  04 30 94 15                                      ldrne r3, [r4, #4]
005b1668  02 30 83 12                                      addne r3, r3, #2
005b166c  04 30 84 15                                      strne r3, [r4, #4]
005b1670  00 00 50 e3                                      cmp r0, #0
005b1674  00 00 00 0a                                      beq #0x5b167c
005b1678  c1 af f5 eb                                      bl #0x31d584
005b167c  00 00 54 e3                                      cmp r4, #0
005b1680  01 00 00 0a                                      beq #0x5b168c
005b1684  04 00 a0 e1                                      mov r0, r4
005b1688  bd af f5 eb                                      bl #0x31d584
005b168c  d8 30 96 e5                                      ldr r3, [r6, #0xd8]
005b1690  04 00 a0 e1                                      mov r0, r4
005b1694  2c 10 93 e5                                      ldr r1, [r3, #0x2c]
005b1698  bb b6 04 eb                                      bl #0x6df18c
005b169c  00 30 95 e5                                      ldr r3, [r5]
005b16a0  0c 20 93 e5                                      ldr r2, [r3, #0xc]
005b16a4  00 00 52 e3                                      cmp r2, #0
005b16a8  01 00 00 1a                                      bne #0x5b16b4
005b16ac  0f 00 00 ea                                      b #0x5b16f0
005b16b0  03 20 a0 e1                                      mov r2, r3
005b16b4  08 30 92 e5                                      ldr r3, [r2, #8]
005b16b8  00 00 53 e3                                      cmp r3, #0
005b16bc  fb ff ff 1a                                      bne #0x5b16b0
005b16c0  02 30 a0 e1                                      mov r3, r2
005b16c4  00 30 85 e5                                      str r3, [r5]
005b16c8  d8 30 96 e5                                      ldr r3, [r6, #0xd8]
005b16cc  00 20 95 e5                                      ldr r2, [r5]
005b16d0  04 00 a0 e1                                      mov r0, r4
005b16d4  04 10 83 e2                                      add r1, r3, #4
005b16d8  02 00 51 e1                                      cmp r1, r2
005b16dc  d7 ff ff 1a                                      bne #0x5b1640
005b16e0  00 00 50 e3                                      cmp r0, #0
005b16e4  0e 00 00 0a                                      beq #0x5b1724
005b16e8  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
005b16ec  a4 af f5 ea                                      b #0x31d584
005b16f0  04 10 93 e5                                      ldr r1, [r3, #4]
005b16f4  0c 00 91 e5                                      ldr r0, [r1, #0xc]
005b16f8  03 00 50 e1                                      cmp r0, r3
005b16fc  05 00 00 1a                                      bne #0x5b1718
005b1700  01 30 a0 e1                                      mov r3, r1
005b1704  04 10 91 e5                                      ldr r1, [r1, #4]
005b1708  0c 20 91 e5                                      ldr r2, [r1, #0xc]
005b170c  02 00 53 e1                                      cmp r3, r2
005b1710  fa ff ff 0a                                      beq #0x5b1700
005b1714  0c 20 93 e5                                      ldr r2, [r3, #0xc]
005b1718  02 00 51 e1                                      cmp r1, r2
005b171c  01 30 a0 11                                      movne r3, r1
005b1720  e7 ff ff ea                                      b #0x5b16c4
005b1724  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
005b1728  50 ee 32 00 6c 34 3e 00 fc 49 00 00              .byte 0x50, 0xee, 0x32, 0x00, 0x6c, 0x34, 0x3e, 0x00, 0xfc, 0x49, 0x00, 0x00

; FUNCTION 0x005b1734, declared_size=260, range_size=260, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE12beginScene2DEv
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::beginScene2D()
; decoder-mode: arm
005b1734  70 40 2d e9                                      push {r4, r5, r6, lr}
005b1738  00 40 a0 e1                                      mov r4, r0
005b173c  00 30 90 e5                                      ldr r3, [r0]
005b1740  0f e0 a0 e1                                      mov lr, pc
005b1744  fc f1 93 e5                                      ldr pc, [r3, #0x1fc]
005b1748  88 30 94 e5                                      ldr r3, [r4, #0x88]
005b174c  dc 50 9f e5                                      ldr r5, [pc, #0xdc]
005b1750  53 34 e0 e7                                      ubfx r3, r3, #8, #1
005b1754  00 00 53 e3                                      cmp r3, #0
005b1758  60 31 c4 e5                                      strb r3, [r4, #0x160]
005b175c  05 50 8f e0                                      add r5, pc, r5
005b1760  03 00 00 1a                                      bne #0x5b1774
005b1764  04 00 a0 e1                                      mov r0, r4
005b1768  01 1c a0 e3                                      mov r1, #0x100
005b176c  01 20 a0 e3                                      mov r2, #1
005b1770  4e de ff eb                                      bl #0x5a90b0
005b1774  00 30 94 e5                                      ldr r3, [r4]
005b1778  02 10 a0 e3                                      mov r1, #2
005b177c  04 00 a0 e1                                      mov r0, r4
005b1780  0f e0 a0 e1                                      mov lr, pc
005b1784  70 f0 93 e5                                      ldr pc, [r3, #0x70]
005b1788  41 20 a0 e3                                      mov r2, #0x41
005b178c  00 10 a0 e1                                      mov r1, r0
005b1790  d5 0f 84 e2                                      add r0, r4, #0x354
005b1794  33 74 f5 eb                                      bl #0x30e868
005b1798  00 30 94 e5                                      ldr r3, [r4]
005b179c  01 10 a0 e3                                      mov r1, #1
005b17a0  04 00 a0 e1                                      mov r0, r4
005b17a4  0f e0 a0 e1                                      mov lr, pc
005b17a8  70 f0 93 e5                                      ldr pc, [r3, #0x70]
005b17ac  41 20 a0 e3                                      mov r2, #0x41
005b17b0  00 10 a0 e1                                      mov r1, r0
005b17b4  e6 0f 84 e2                                      add r0, r4, #0x398
005b17b8  2a 74 f5 eb                                      bl #0x30e868
005b17bc  00 30 94 e5                                      ldr r3, [r4]
005b17c0  00 10 a0 e3                                      mov r1, #0
005b17c4  04 00 a0 e1                                      mov r0, r4
005b17c8  0f e0 a0 e1                                      mov lr, pc
005b17cc  70 f0 93 e5                                      ldr pc, [r3, #0x70]
005b17d0  41 20 a0 e3                                      mov r2, #0x41
005b17d4  00 10 a0 e1                                      mov r1, r0
005b17d8  f7 0f 84 e2                                      add r0, r4, #0x3dc
005b17dc  21 74 f5 eb                                      bl #0x30e868
005b17e0  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
005b17e4  04 00 a0 e1                                      mov r0, r4
005b17e8  00 10 a0 e3                                      mov r1, #0
005b17ec  03 60 95 e7                                      ldr r6, [r5, r3]
005b17f0  01 50 a0 e3                                      mov r5, #1
005b17f4  00 30 94 e5                                      ldr r3, [r4]
005b17f8  06 20 a0 e1                                      mov r2, r6
005b17fc  0f e0 a0 e1                                      mov lr, pc
005b1800  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
005b1804  06 20 a0 e1                                      mov r2, r6
005b1808  04 00 a0 e1                                      mov r0, r4
005b180c  05 10 a0 e1                                      mov r1, r5
005b1810  00 30 94 e5                                      ldr r3, [r4]
005b1814  0f e0 a0 e1                                      mov lr, pc
005b1818  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
005b181c  04 00 a0 e1                                      mov r0, r4
005b1820  a0 50 84 e5                                      str r5, [r4, #0xa0]
005b1824  8d b2 04 eb                                      bl #0x6de260
005b1828  05 00 a0 e1                                      mov r0, r5
005b182c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005b1830  34 33 3e 00 30 28 00 00                          .byte 0x34, 0x33, 0x3e, 0x00, 0x30, 0x28, 0x00, 0x00

; FUNCTION 0x005b1838, declared_size=40, range_size=40, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE8endSceneEv
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::endScene()
; decoder-mode: arm
005b1838  10 40 2d e9                                      push {r4, lr}
005b183c  00 40 a0 e1                                      mov r4, r0
005b1840  00 30 90 e5                                      ldr r3, [r0]
005b1844  0f e0 a0 e1                                      mov lr, pc
005b1848  fc f1 93 e5                                      ldr pc, [r3, #0x1fc]
005b184c  50 74 f5 eb                                      bl #0x30e994
005b1850  04 00 a0 e1                                      mov r0, r4
005b1854  b1 e4 ff eb                                      bl #0x5aab20
005b1858  01 00 a0 e3                                      mov r0, #1
005b185c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005b1860, declared_size=16, range_size=16, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE10beginSceneEv
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::beginScene()
; decoder-mode: arm
005b1860  10 40 2d e9                                      push {r4, lr}
005b1864  c2 dc ff eb                                      bl #0x5a8b74
005b1868  01 00 a0 e3                                      mov r0, #1
005b186c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005b1b10, declared_size=200, range_size=200, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE12ReinitDriverEv
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::ReinitDriver()
; decoder-mode: arm
005b1b10  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005b1b14  00 60 a0 e1                                      mov r6, r0
005b1b18  00 30 90 e5                                      ldr r3, [r0]
005b1b1c  d4 70 90 e5                                      ldr r7, [r0, #0xd4]
005b1b20  0f e0 a0 e1                                      mov lr, pc
005b1b24  40 f0 93 e5                                      ldr pc, [r3, #0x40]
005b1b28  c8 30 96 e5                                      ldr r3, [r6, #0xc8]
005b1b2c  00 40 a0 e3                                      mov r4, #0
005b1b30  06 50 a0 e1                                      mov r5, r6
005b1b34  00 30 93 e5                                      ldr r3, [r3]
005b1b38  03 00 a0 e1                                      mov r0, r3
005b1b3c  00 30 93 e5                                      ldr r3, [r3]
005b1b40  0f e0 a0 e1                                      mov lr, pc
005b1b44  10 f0 93 e5                                      ldr pc, [r3, #0x10]
005b1b48  60 20 97 e5                                      ldr r2, [r7, #0x60]
005b1b4c  64 30 97 e5                                      ldr r3, [r7, #0x64]
005b1b50  04 00 a0 e1                                      mov r0, r4
005b1b54  04 10 a0 e1                                      mov r1, r4
005b1b58  05 71 f5 eb                                      bl #0x30df74
005b1b5c  01 10 a0 e3                                      mov r1, #1
005b1b60  05 0d 00 e3                                      movw r0, #0xd05
005b1b64  80 71 f5 eb                                      bl #0x30e16c
005b1b68  60 10 87 e2                                      add r1, r7, #0x60
005b1b6c  06 00 a0 e1                                      mov r0, r6
005b1b70  cf ff ff eb                                      bl #0x5b1ab4
005b1b74  58 70 9f e5                                      ldr r7, [pc, #0x58]
005b1b78  07 70 8f e0                                      add r7, pc, r7
005b1b7c  11 7e 87 e2                                      add r7, r7, #0x110
005b1b80  04 00 97 e7                                      ldr r0, [r7, r4]
005b1b84  04 40 84 e2                                      add r4, r4, #4
005b1b88  00 00 50 e3                                      cmp r0, #0
005b1b8c  0d 00 00 1a                                      bne #0x5b1bc8
005b1b90  14 00 54 e3                                      cmp r4, #0x14
005b1b94  04 50 85 e2                                      add r5, r5, #4
005b1b98  f8 ff ff 1a                                      bne #0x5b1b80
005b1b9c  06 00 a0 e1                                      mov r0, r6
005b1ba0  00 30 96 e5                                      ldr r3, [r6]
005b1ba4  0f e0 a0 e1                                      mov lr, pc
005b1ba8  74 f0 93 e5                                      ldr pc, [r3, #0x74]
005b1bac  06 00 a0 e1                                      mov r0, r6
005b1bb0  00 30 96 e5                                      ldr r3, [r6]
005b1bb4  01 10 a0 e3                                      mov r1, #1
005b1bb8  0f e0 a0 e1                                      mov lr, pc
005b1bbc  a8 f0 93 e5                                      ldr pc, [r3, #0xa8]
005b1bc0  01 00 a0 e3                                      mov r0, #1
005b1bc4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005b1bc8  54 12 95 e5                                      ldr r1, [r5, #0x254]
005b1bcc  88 70 f5 eb                                      bl #0x30ddf4
005b1bd0  ee ff ff ea                                      b #0x5b1b90
; mapping-symbol data/literal pool
005b1bd4  bc e4 32 00                                      .byte 0xbc, 0xe4, 0x32, 0x00

; FUNCTION 0x005b1c48, declared_size=460, range_size=460, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE16createScreenShotEv
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::createScreenShot()
; decoder-mode: arm
005b1c48  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005b1c4c  34 d0 4d e2                                      sub sp, sp, #0x34
005b1c50  14 00 8d e5                                      str r0, [sp, #0x14]
005b1c54  01 50 a0 e1                                      mov r5, r1
005b1c58  00 30 91 e5                                      ldr r3, [r1]
005b1c5c  01 00 a0 e1                                      mov r0, r1
005b1c60  0f e0 a0 e1                                      mov lr, pc
005b1c64  fc f1 93 e5                                      ldr pc, [r3, #0x1fc]
005b1c68  cc 30 95 e5                                      ldr r3, [r5, #0xcc]
005b1c6c  c8 20 95 e5                                      ldr r2, [r5, #0xc8]
005b1c70  03 20 62 e0                                      rsb r2, r2, r3
005b1c74  42 21 a0 e1                                      asr r2, r2, #2
005b1c78  01 00 52 e3                                      cmp r2, #1
005b1c7c  5c 00 00 0a                                      beq #0x5b1df4
005b1c80  00 20 a0 e3                                      mov r2, #0
005b1c84  18 20 8d e5                                      str r2, [sp, #0x18]
005b1c88  ff 20 a0 e3                                      mov r2, #0xff
005b1c8c  1c 20 8d e5                                      str r2, [sp, #0x1c]
005b1c90  00 10 a0 e3                                      mov r1, #0
005b1c94  2c 00 a0 e3                                      mov r0, #0x2c
005b1c98  04 40 13 e5                                      ldr r4, [r3, #-4]
005b1c9c  42 09 fe eb                                      bl #0x5341ac
005b1ca0  0c 40 84 e2                                      add r4, r4, #0xc
005b1ca4  04 20 a0 e1                                      mov r2, r4
005b1ca8  0a 10 a0 e3                                      mov r1, #0xa
005b1cac  00 90 a0 e1                                      mov sb, r0
005b1cb0  16 41 01 eb                                      bl #0x602110
005b1cb4  00 00 59 e3                                      cmp sb, #0
005b1cb8  04 30 99 15                                      ldrne r3, [sb, #4]
005b1cbc  08 40 99 e5                                      ldr r4, [sb, #8]
005b1cc0  01 30 83 12                                      addne r3, r3, #1
005b1cc4  04 30 89 15                                      strne r3, [sb, #4]
005b1cc8  00 00 54 e3                                      cmp r4, #0
005b1ccc  45 00 00 0a                                      beq #0x5b1de8
005b1cd0  cc 30 95 e5                                      ldr r3, [r5, #0xcc]
005b1cd4  00 70 a0 e3                                      mov r7, #0
005b1cd8  05 00 a0 e1                                      mov r0, r5
005b1cdc  04 30 13 e5                                      ldr r3, [r3, #-4]
005b1ce0  20 70 8d e5                                      str r7, [sp, #0x20]
005b1ce4  24 70 8d e5                                      str r7, [sp, #0x24]
005b1ce8  0c 20 93 e5                                      ldr r2, [r3, #0xc]
005b1cec  10 30 93 e5                                      ldr r3, [r3, #0x10]
005b1cf0  20 10 8d e2                                      add r1, sp, #0x20
005b1cf4  28 20 8d e5                                      str r2, [sp, #0x28]
005b1cf8  2c 30 8d e5                                      str r3, [sp, #0x2c]
005b1cfc  f9 df ff eb                                      bl #0x5a9ce8
005b1d00  20 00 8d e2                                      add r0, sp, #0x20
005b1d04  0f 00 90 e8                                      ldm r0, {r0, r1, r2, r3}
005b1d08  07 c9 01 e3                                      movw ip, #0x1907
005b1d0c  02 20 60 e0                                      rsb r2, r0, r2
005b1d10  03 30 61 e0                                      rsb r3, r1, r3
005b1d14  00 c0 8d e5                                      str ip, [sp]
005b1d18  01 c4 01 e3                                      movw ip, #0x1401
005b1d1c  04 c0 8d e5                                      str ip, [sp, #4]
005b1d20  08 40 8d e5                                      str r4, [sp, #8]
005b1d24  f2 70 f5 eb                                      bl #0x30e0f4
005b1d28  18 50 99 e5                                      ldr r5, [sb, #0x18]
005b1d2c  14 60 99 e5                                      ldr r6, [sb, #0x14]
005b1d30  05 00 a0 e1                                      mov r0, r5
005b1d34  2e 0a fe eb                                      bl #0x5345f4
005b1d38  14 b0 99 e5                                      ldr fp, [sb, #0x14]
005b1d3c  00 80 a0 e1                                      mov r8, r0
005b1d40  07 00 5b e1                                      cmp fp, r7
005b1d44  13 00 00 da                                      ble #0x5b1d98
005b1d48  01 60 46 e2                                      sub r6, r6, #1
005b1d4c  95 46 26 e0                                      mla r6, r5, r6, r4
005b1d50  00 a0 65 e2                                      rsb sl, r5, #0
005b1d54  04 10 a0 e1                                      mov r1, r4
005b1d58  05 20 a0 e1                                      mov r2, r5
005b1d5c  08 00 a0 e1                                      mov r0, r8
005b1d60  c0 72 f5 eb                                      bl #0x30e868
005b1d64  06 10 a0 e1                                      mov r1, r6
005b1d68  04 00 a0 e1                                      mov r0, r4
005b1d6c  05 20 a0 e1                                      mov r2, r5
005b1d70  bc 72 f5 eb                                      bl #0x30e868
005b1d74  02 70 87 e2                                      add r7, r7, #2
005b1d78  06 00 a0 e1                                      mov r0, r6
005b1d7c  08 10 a0 e1                                      mov r1, r8
005b1d80  05 20 a0 e1                                      mov r2, r5
005b1d84  b7 72 f5 eb                                      bl #0x30e868
005b1d88  07 00 5b e1                                      cmp fp, r7
005b1d8c  05 40 84 e0                                      add r4, r4, r5
005b1d90  0a 60 86 e0                                      add r6, r6, sl
005b1d94  ee ff ff ca                                      bgt #0x5b1d54
005b1d98  14 30 9d e5                                      ldr r3, [sp, #0x14]
005b1d9c  00 00 58 e3                                      cmp r8, #0
005b1da0  00 90 83 e5                                      str sb, [r3]
005b1da4  04 30 99 e5                                      ldr r3, [sb, #4]
005b1da8  01 30 83 e2                                      add r3, r3, #1
005b1dac  04 30 89 e5                                      str r3, [sb, #4]
005b1db0  01 00 00 0a                                      beq #0x5b1dbc
005b1db4  08 00 a0 e1                                      mov r0, r8
005b1db8  32 0a fe eb                                      bl #0x534688
005b1dbc  09 00 a0 e1                                      mov r0, sb
005b1dc0  ef ad f5 eb                                      bl #0x31d584
005b1dc4  18 20 9d e5                                      ldr r2, [sp, #0x18]
005b1dc8  00 00 52 e3                                      cmp r2, #0
005b1dcc  02 00 00 0a                                      beq #0x5b1ddc
005b1dd0  02 00 a0 e1                                      mov r0, r2
005b1dd4  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
005b1dd8  7d e0 ff eb                                      bl #0x5a9fd4
005b1ddc  14 00 9d e5                                      ldr r0, [sp, #0x14]
005b1de0  34 d0 8d e2                                      add sp, sp, #0x34
005b1de4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005b1de8  14 20 9d e5                                      ldr r2, [sp, #0x14]
005b1dec  00 40 82 e5                                      str r4, [r2]
005b1df0  f1 ff ff ea                                      b #0x5b1dbc
005b1df4  3c 31 95 e5                                      ldr r3, [r5, #0x13c]
005b1df8  05 00 a0 e1                                      mov r0, r5
005b1dfc  00 10 a0 e3                                      mov r1, #0
005b1e00  1c 30 8d e5                                      str r3, [sp, #0x1c]
005b1e04  72 e0 ff eb                                      bl #0x5a9fd4
005b1e08  cc 30 95 e5                                      ldr r3, [r5, #0xcc]
005b1e0c  18 50 8d e5                                      str r5, [sp, #0x18]
005b1e10  9e ff ff ea                                      b #0x5b1c90

; FUNCTION 0x005b1f5c, declared_size=136, range_size=136, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE19unregisterBufferMapEj
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::unregisterBufferMap(unsigned int)
; decoder-mode: arm
005b1f5c  30 40 2d e9                                      push {r4, r5, lr}
005b1f60  04 48 90 e5                                      ldr r4, [r0, #0x804]
005b1f64  0c d0 4d e2                                      sub sp, sp, #0xc
005b1f68  02 5b 80 e2                                      add r5, r0, #0x800
005b1f6c  00 00 54 e3                                      cmp r4, #0
005b1f70  19 00 00 0a                                      beq #0x5b1fdc
005b1f74  05 20 a0 e1                                      mov r2, r5
005b1f78  00 00 00 ea                                      b #0x5b1f80
005b1f7c  03 40 a0 e1                                      mov r4, r3
005b1f80  10 30 94 e5                                      ldr r3, [r4, #0x10]
005b1f84  01 00 53 e1                                      cmp r3, r1
005b1f88  0c 30 94 35                                      ldrlo r3, [r4, #0xc]
005b1f8c  08 30 94 25                                      ldrhs r3, [r4, #8]
005b1f90  02 40 a0 31                                      movlo r4, r2
005b1f94  04 20 a0 e1                                      mov r2, r4
005b1f98  00 00 53 e3                                      cmp r3, #0
005b1f9c  f6 ff ff 1a                                      bne #0x5b1f7c
005b1fa0  04 00 55 e1                                      cmp r5, r4
005b1fa4  0a 00 00 0a                                      beq #0x5b1fd4
005b1fa8  10 30 94 e5                                      ldr r3, [r4, #0x10]
005b1fac  01 00 53 e1                                      cmp r3, r1
005b1fb0  09 00 00 8a                                      bhi #0x5b1fdc
005b1fb4  04 00 55 e1                                      cmp r5, r4
005b1fb8  05 00 00 0a                                      beq #0x5b1fd4
005b1fbc  24 00 94 e5                                      ldr r0, [r4, #0x24]
005b1fc0  ca 6f f5 eb                                      bl #0x30def0
005b1fc4  08 10 8d e2                                      add r1, sp, #8
005b1fc8  04 40 21 e5                                      str r4, [r1, #-4]!
005b1fcc  05 00 a0 e1                                      mov r0, r5
005b1fd0  d2 ff ff eb                                      bl #0x5b1f20
005b1fd4  0c d0 8d e2                                      add sp, sp, #0xc
005b1fd8  30 80 bd e8                                      pop {r4, r5, pc}
005b1fdc  05 40 a0 e1                                      mov r4, r5
005b1fe0  f3 ff ff ea                                      b #0x5b1fb4

; FUNCTION 0x005b1fe4, declared_size=608, range_size=608, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE18reloadTexturesDataEv
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::reloadTexturesData()
; decoder-mode: arm
005b1fe4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005b1fe8  e0 30 90 e5                                      ldr r3, [r0, #0xe0]
005b1fec  f8 27 90 e5                                      ldr r2, [r0, #0x7f8]
005b1ff0  34 62 9f e5                                      ldr r6, [pc, #0x234]
005b1ff4  1c 10 93 e5                                      ldr r1, [r3, #0x1c]
005b1ff8  18 30 93 e5                                      ldr r3, [r3, #0x18]
005b1ffc  b4 23 d2 e1                                      ldrh r2, [r2, #0x34]
005b2000  06 60 8f e0                                      add r6, pc, r6
005b2004  01 10 63 e0                                      rsb r1, r3, r1
005b2008  c1 01 52 e1                                      cmp r2, r1, asr #3
005b200c  00 50 a0 e1                                      mov r5, r0
005b2010  82 31 83 30                                      addlo r3, r3, r2, lsl #3
005b2014  14 32 9f 25                                      ldrhs r3, [pc, #0x214]
005b2018  03 30 96 27                                      ldrhs r3, [r6, r3]
005b201c  00 40 93 e5                                      ldr r4, [r3]
005b2020  00 00 54 e3                                      cmp r4, #0
005b2024  39 00 00 0a                                      beq #0x5b2110
005b2028  04 30 94 e5                                      ldr r3, [r4, #4]
005b202c  04 00 a0 e1                                      mov r0, r4
005b2030  02 30 83 e2                                      add r3, r3, #2
005b2034  04 30 84 e5                                      str r3, [r4, #4]
005b2038  51 ad f5 eb                                      bl #0x31d584
005b203c  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
005b2040  01 20 a0 e3                                      mov r2, #1
005b2044  58 20 c4 e5                                      strb r2, [r4, #0x58]
005b2048  00 00 53 e3                                      cmp r3, #0
005b204c  54 70 94 e5                                      ldr r7, [r4, #0x54]
005b2050  02 00 00 0a                                      beq #0x5b2060
005b2054  3f 30 d4 e5                                      ldrb r3, [r4, #0x3f]
005b2058  08 00 13 e3                                      tst r3, #8
005b205c  30 00 00 1a                                      bne #0x5b2124
005b2060  00 30 a0 e3                                      mov r3, #0
005b2064  58 30 c4 e5                                      strb r3, [r4, #0x58]
005b2068  e0 30 95 e5                                      ldr r3, [r5, #0xe0]
005b206c  bc 23 d4 e1                                      ldrh r2, [r4, #0x3c]
005b2070  1c 10 93 e5                                      ldr r1, [r3, #0x1c]
005b2074  18 30 93 e5                                      ldr r3, [r3, #0x18]
005b2078  01 10 63 e0                                      rsb r1, r3, r1
005b207c  c1 01 52 e1                                      cmp r2, r1, asr #3
005b2080  82 11 83 30                                      addlo r1, r3, r2, lsl #3
005b2084  23 00 00 2a                                      bhs #0x5b2118
005b2088  00 10 91 e5                                      ldr r1, [r1]
005b208c  00 00 51 e3                                      cmp r1, #0
005b2090  28 00 00 0a                                      beq #0x5b2138
005b2094  82 31 83 e0                                      add r3, r3, r2, lsl #3
005b2098  04 30 93 e5                                      ldr r3, [r3, #4]
005b209c  28 20 93 e5                                      ldr r2, [r3, #0x28]
005b20a0  2c 10 93 e5                                      ldr r1, [r3, #0x2c]
005b20a4  02 00 51 e1                                      cmp r1, r2
005b20a8  22 00 00 0a                                      beq #0x5b2138
005b20ac  80 01 9f e5                                      ldr r0, [pc, #0x180]
005b20b0  00 00 8f e0                                      add r0, pc, r0
005b20b4  71 64 01 eb                                      bl #0x60b280
005b20b8  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
005b20bc  00 00 53 e3                                      cmp r3, #0
005b20c0  2b 00 00 0a                                      beq #0x5b2174
005b20c4  f0 27 95 e5                                      ldr r2, [r5, #0x7f0]
005b20c8  f8 37 95 e5                                      ldr r3, [r5, #0x7f8]
005b20cc  01 20 82 e2                                      add r2, r2, #1
005b20d0  f0 27 85 e5                                      str r2, [r5, #0x7f0]
005b20d4  0c 20 93 e5                                      ldr r2, [r3, #0xc]
005b20d8  00 00 52 e3                                      cmp r2, #0
005b20dc  01 00 00 1a                                      bne #0x5b20e8
005b20e0  16 00 00 ea                                      b #0x5b2140
005b20e4  03 20 a0 e1                                      mov r2, r3
005b20e8  08 30 92 e5                                      ldr r3, [r2, #8]
005b20ec  00 00 53 e3                                      cmp r3, #0
005b20f0  fb ff ff 1a                                      bne #0x5b20e4
005b20f4  02 30 a0 e1                                      mov r3, r2
005b20f8  e0 20 95 e5                                      ldr r2, [r5, #0xe0]
005b20fc  04 00 a0 e1                                      mov r0, r4
005b2100  f8 37 85 e5                                      str r3, [r5, #0x7f8]
005b2104  03 40 52 e0                                      subs r4, r2, r3
005b2108  01 40 a0 13                                      movne r4, #1
005b210c  1c ad f5 eb                                      bl #0x31d584
005b2110  04 00 a0 e1                                      mov r0, r4
005b2114  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005b2118  10 11 9f e5                                      ldr r1, [pc, #0x110]
005b211c  01 10 96 e7                                      ldr r1, [r6, r1]
005b2120  d8 ff ff ea                                      b #0x5b2088
005b2124  00 30 94 e5                                      ldr r3, [r4]
005b2128  04 00 a0 e1                                      mov r0, r4
005b212c  0f e0 a0 e1                                      mov lr, pc
005b2130  10 f0 93 e5                                      ldr pc, [r3, #0x10]
005b2134  c9 ff ff ea                                      b #0x5b2060
005b2138  00 10 a0 e3                                      mov r1, #0
005b213c  da ff ff ea                                      b #0x5b20ac
005b2140  04 10 93 e5                                      ldr r1, [r3, #4]
005b2144  0c 00 91 e5                                      ldr r0, [r1, #0xc]
005b2148  00 00 53 e1                                      cmp r3, r0
005b214c  05 00 00 1a                                      bne #0x5b2168
005b2150  01 30 a0 e1                                      mov r3, r1
005b2154  04 10 91 e5                                      ldr r1, [r1, #4]
005b2158  0c 20 91 e5                                      ldr r2, [r1, #0xc]
005b215c  03 00 52 e1                                      cmp r2, r3
005b2160  fa ff ff 0a                                      beq #0x5b2150
005b2164  0c 20 93 e5                                      ldr r2, [r3, #0xc]
005b2168  02 00 51 e1                                      cmp r1, r2
005b216c  01 30 a0 11                                      movne r3, r1
005b2170  e0 ff ff ea                                      b #0x5b20f8
005b2174  bc 00 9f e5                                      ldr r0, [pc, #0xbc]
005b2178  07 20 a0 e1                                      mov r2, r7
005b217c  bc 13 d4 e1                                      ldrh r1, [r4, #0x3c]
005b2180  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
005b2184  00 00 8f e0                                      add r0, pc, r0
005b2188  3c 64 01 eb                                      bl #0x60b280
005b218c  a8 00 9f e5                                      ldr r0, [pc, #0xa8]
005b2190  00 00 8f e0                                      add r0, pc, r0
005b2194  39 64 01 eb                                      bl #0x60b280
005b2198  e0 00 95 e5                                      ldr r0, [r5, #0xe0]
005b219c  bc 23 d4 e1                                      ldrh r2, [r4, #0x3c]
005b21a0  18 30 90 e5                                      ldr r3, [r0, #0x18]
005b21a4  1c 10 90 e5                                      ldr r1, [r0, #0x1c]
005b21a8  01 10 63 e0                                      rsb r1, r3, r1
005b21ac  c1 01 52 e1                                      cmp r2, r1, asr #3
005b21b0  82 11 83 30                                      addlo r1, r3, r2, lsl #3
005b21b4  74 10 9f 25                                      ldrhs r1, [pc, #0x74]
005b21b8  01 10 96 27                                      ldrhs r1, [r6, r1]
005b21bc  00 10 91 e5                                      ldr r1, [r1]
005b21c0  00 00 51 e3                                      cmp r1, #0
005b21c4  14 00 00 0a                                      beq #0x5b221c
005b21c8  82 31 83 e0                                      add r3, r3, r2, lsl #3
005b21cc  04 30 93 e5                                      ldr r3, [r3, #4]
005b21d0  28 20 93 e5                                      ldr r2, [r3, #0x28]
005b21d4  2c 30 93 e5                                      ldr r3, [r3, #0x2c]
005b21d8  02 00 53 e1                                      cmp r3, r2
005b21dc  0e 00 00 0a                                      beq #0x5b221c
005b21e0  00 00 53 e3                                      cmp r3, #0
005b21e4  0c 00 00 0a                                      beq #0x5b221c
005b21e8  3f 30 d4 e5                                      ldrb r3, [r4, #0x3f]
005b21ec  08 00 13 e3                                      tst r3, #8
005b21f0  03 00 00 1a                                      bne #0x5b2204
005b21f4  f8 17 95 e5                                      ldr r1, [r5, #0x7f8]
005b21f8  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
005b21fc  5f ec 00 eb                                      bl #0x5ed380
005b2200  af ff ff ea                                      b #0x5b20c4
005b2204  04 00 a0 e1                                      mov r0, r4
005b2208  00 30 94 e5                                      ldr r3, [r4]
005b220c  0f e0 a0 e1                                      mov lr, pc
005b2210  10 f0 93 e5                                      ldr pc, [r3, #0x10]
005b2214  e0 00 95 e5                                      ldr r0, [r5, #0xe0]
005b2218  f5 ff ff ea                                      b #0x5b21f4
005b221c  1c 00 9f e5                                      ldr r0, [pc, #0x1c]
005b2220  00 00 8f e0                                      add r0, pc, r0
005b2224  15 64 01 eb                                      bl #0x60b280
005b2228  a5 ff ff ea                                      b #0x5b20c4
; mapping-symbol data/literal pool
005b222c  90 2a 3e 00 e8 10 00 00 c0 e3 32 00 04 e3 32 00  .byte 0x90, 0x2a, 0x3e, 0x00, 0xe8, 0x10, 0x00, 0x00, 0xc0, 0xe3, 0x32, 0x00, 0x04, 0xe3, 0x32, 0x00
005b223c  48 62 31 00 c8 61 31 00                          .byte 0x48, 0x62, 0x31, 0x00, 0xc8, 0x61, 0x31, 0x00

; FUNCTION 0x005b2244, declared_size=548, range_size=548, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE15draw2DRectangleERKNS_4core4rectIiEESC_PKNS0_6SColorEPSB_
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::draw2DRectangle(glitch::core::rect<int> const&, glitch::core::rect<int> const&, glitch::video::SColor const*, glitch::core::rect<int> const*)
; decoder-mode: arm
005b2244  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005b2248  ec 80 90 e5                                      ldr r8, [r0, #0xec]
005b224c  44 d0 4d e2                                      sub sp, sp, #0x44
005b2250  00 50 a0 e3                                      mov r5, #0
005b2254  40 70 8d e2                                      add r7, sp, #0x40
005b2258  04 50 27 e5                                      str r5, [r7, #-4]!
005b225c  00 a0 a0 e1                                      mov sl, r0
005b2260  01 40 a0 e1                                      mov r4, r1
005b2264  04 00 98 e5                                      ldr r0, [r8, #4]
005b2268  02 10 a0 e3                                      mov r1, #2
005b226c  02 60 a0 e1                                      mov r6, r2
005b2270  05 20 a0 e1                                      mov r2, r5
005b2274  04 30 8d e5                                      str r3, [sp, #4]
005b2278  22 73 00 eb                                      bl #0x5cef08
005b227c  05 20 a0 e1                                      mov r2, r5
005b2280  00 10 a0 e1                                      mov r1, r0
005b2284  07 30 a0 e1                                      mov r3, r7
005b2288  08 00 a0 e1                                      mov r0, r8
005b228c  0a 6e 00 eb                                      bl #0x5cdabc
005b2290  3c 80 9d e5                                      ldr r8, [sp, #0x3c]
005b2294  05 00 58 e1                                      cmp r8, r5
005b2298  43 00 00 0a                                      beq #0x5b23ac
005b229c  20 00 98 e5                                      ldr r0, [r8, #0x20]
005b22a0  af 71 f5 eb                                      bl #0x30e964
005b22a4  00 10 a0 e1                                      mov r1, r0
005b22a8  fe 05 a0 e3                                      mov r0, #0x3f800000
005b22ac  78 72 f5 eb                                      bl #0x30ec94
005b22b0  00 70 a0 e1                                      mov r7, r0
005b22b4  24 00 98 e5                                      ldr r0, [r8, #0x24]
005b22b8  a9 71 f5 eb                                      bl #0x30e964
005b22bc  00 10 a0 e1                                      mov r1, r0
005b22c0  fe 05 a0 e3                                      mov r0, #0x3f800000
005b22c4  72 72 f5 eb                                      bl #0x30ec94
005b22c8  00 80 a0 e1                                      mov r8, r0
005b22cc  04 00 96 e5                                      ldr r0, [r6, #4]
005b22d0  a3 71 f5 eb                                      bl #0x30e964
005b22d4  08 10 a0 e1                                      mov r1, r8
005b22d8  a3 72 f5 eb                                      bl #0x30ed6c
005b22dc  00 b0 a0 e1                                      mov fp, r0
005b22e0  08 00 96 e5                                      ldr r0, [r6, #8]
005b22e4  9e 71 f5 eb                                      bl #0x30e964
005b22e8  07 10 a0 e1                                      mov r1, r7
005b22ec  9e 72 f5 eb                                      bl #0x30ed6c
005b22f0  00 90 a0 e1                                      mov sb, r0
005b22f4  0c 00 96 e5                                      ldr r0, [r6, #0xc]
005b22f8  99 71 f5 eb                                      bl #0x30e964
005b22fc  08 10 a0 e1                                      mov r1, r8
005b2300  99 72 f5 eb                                      bl #0x30ed6c
005b2304  00 80 a0 e1                                      mov r8, r0
005b2308  00 00 96 e5                                      ldr r0, [r6]
005b230c  94 71 f5 eb                                      bl #0x30e964
005b2310  07 10 a0 e1                                      mov r1, r7
005b2314  94 72 f5 eb                                      bl #0x30ed6c
005b2318  68 e0 9d e5                                      ldr lr, [sp, #0x68]
005b231c  0c 30 94 e5                                      ldr r3, [r4, #0xc]
005b2320  00 c0 94 e5                                      ldr ip, [r4]
005b2324  06 00 94 e9                                      ldmib r4, {r1, r2}
005b2328  05 00 5e e1                                      cmp lr, r5
005b232c  2c 00 8d e5                                      str r0, [sp, #0x2c]
005b2330  30 b0 8d e5                                      str fp, [sp, #0x30]
005b2334  34 90 8d e5                                      str sb, [sp, #0x34]
005b2338  38 80 8d e5                                      str r8, [sp, #0x38]
005b233c  1c c0 8d e5                                      str ip, [sp, #0x1c]
005b2340  20 10 8d e5                                      str r1, [sp, #0x20]
005b2344  24 20 8d e5                                      str r2, [sp, #0x24]
005b2348  28 30 8d e5                                      str r3, [sp, #0x28]
005b234c  0e 00 00 0a                                      beq #0x5b238c
005b2350  1c 60 8d e2                                      add r6, sp, #0x1c
005b2354  2c 40 8d e2                                      add r4, sp, #0x2c
005b2358  68 20 9d e5                                      ldr r2, [sp, #0x68]
005b235c  05 30 a0 e1                                      mov r3, r5
005b2360  06 00 a0 e1                                      mov r0, r6
005b2364  04 10 a0 e1                                      mov r1, r4
005b2368  63 db ff eb                                      bl #0x5a90fc
005b236c  00 00 50 e3                                      cmp r0, #0
005b2370  07 00 00 1a                                      bne #0x5b2394
005b2374  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
005b2378  00 00 50 e3                                      cmp r0, #0
005b237c  00 00 00 0a                                      beq #0x5b2384
005b2380  7f ac f5 eb                                      bl #0x31d584
005b2384  44 d0 8d e2                                      add sp, sp, #0x44
005b2388  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005b238c  1c 60 8d e2                                      add r6, sp, #0x1c
005b2390  2c 40 8d e2                                      add r4, sp, #0x2c
005b2394  0a 00 a0 e1                                      mov r0, sl
005b2398  06 10 a0 e1                                      mov r1, r6
005b239c  04 20 a0 e1                                      mov r2, r4
005b23a0  04 30 9d e5                                      ldr r3, [sp, #4]
005b23a4  11 af 04 eb                                      bl #0x6ddff0
005b23a8  f1 ff ff ea                                      b #0x5b2374
005b23ac  68 e0 9d e5                                      ldr lr, [sp, #0x68]
005b23b0  0c 20 94 e5                                      ldr r2, [r4, #0xc]
005b23b4  09 00 94 e8                                      ldm r4, {r0, r3}
005b23b8  08 10 94 e5                                      ldr r1, [r4, #8]
005b23bc  00 00 5e e3                                      cmp lr, #0
005b23c0  1c 00 8d e5                                      str r0, [sp, #0x1c]
005b23c4  20 30 8d e5                                      str r3, [sp, #0x20]
005b23c8  24 10 8d e5                                      str r1, [sp, #0x24]
005b23cc  28 20 8d e5                                      str r2, [sp, #0x28]
005b23d0  19 00 00 0a                                      beq #0x5b243c
005b23d4  68 00 9d e5                                      ldr r0, [sp, #0x68]
005b23d8  68 c0 9d e5                                      ldr ip, [sp, #0x68]
005b23dc  08 30 90 e5                                      ldr r3, [r0, #8]
005b23e0  03 00 51 e1                                      cmp r1, r3
005b23e4  68 10 9d e5                                      ldr r1, [sp, #0x68]
005b23e8  24 30 8d c5                                      strgt r3, [sp, #0x24]
005b23ec  0c 30 91 e5                                      ldr r3, [r1, #0xc]
005b23f0  03 00 52 e1                                      cmp r2, r3
005b23f4  28 30 8d c5                                      strgt r3, [sp, #0x28]
005b23f8  68 30 9d e5                                      ldr r3, [sp, #0x68]
005b23fc  00 20 93 e5                                      ldr r2, [r3]
005b2400  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
005b2404  03 00 52 e1                                      cmp r2, r3
005b2408  1c 20 8d c5                                      strgt r2, [sp, #0x1c]
005b240c  04 10 9c e5                                      ldr r1, [ip, #4]
005b2410  02 30 a0 c1                                      movgt r3, r2
005b2414  20 20 9d e5                                      ldr r2, [sp, #0x20]
005b2418  02 00 51 e1                                      cmp r1, r2
005b241c  20 10 8d c5                                      strgt r1, [sp, #0x20]
005b2420  01 20 a0 c1                                      movgt r2, r1
005b2424  28 10 9d e5                                      ldr r1, [sp, #0x28]
005b2428  02 00 51 e1                                      cmp r1, r2
005b242c  24 20 9d e5                                      ldr r2, [sp, #0x24]
005b2430  20 10 8d b5                                      strlt r1, [sp, #0x20]
005b2434  02 00 53 e1                                      cmp r3, r2
005b2438  1c 20 8d c5                                      strgt r2, [sp, #0x1c]
005b243c  00 c0 a0 e3                                      mov ip, #0
005b2440  0a 00 a0 e1                                      mov r0, sl
005b2444  04 30 9d e5                                      ldr r3, [sp, #4]
005b2448  1c 10 8d e2                                      add r1, sp, #0x1c
005b244c  0c 20 8d e2                                      add r2, sp, #0xc
005b2450  18 c0 8d e5                                      str ip, [sp, #0x18]
005b2454  0c c0 8d e5                                      str ip, [sp, #0xc]
005b2458  10 c0 8d e5                                      str ip, [sp, #0x10]
005b245c  14 c0 8d e5                                      str ip, [sp, #0x14]
005b2460  e2 ae 04 eb                                      bl #0x6ddff0
005b2464  c2 ff ff ea                                      b #0x5b2374

; FUNCTION 0x005b26f0, declared_size=284, range_size=284, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE10setTextureEjPNS0_8ITextureENS0_14E_TEXTURE_TYPEE
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::setTexture(unsigned int, glitch::video::ITexture*, glitch::video::E_TEXTURE_TYPE)
; decoder-mode: arm
005b26f0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005b26f4  00 40 a0 e1                                      mov r4, r0
005b26f8  4c 00 90 e5                                      ldr r0, [r0, #0x4c]
005b26fc  01 50 a0 e1                                      mov r5, r1
005b2700  02 60 a0 e1                                      mov r6, r2
005b2704  00 00 51 e1                                      cmp r1, r0
005b2708  03 70 a0 e1                                      mov r7, r3
005b270c  1a 00 00 2a                                      bhs #0x5b277c
005b2710  21 30 83 e2                                      add r3, r3, #0x21
005b2714  83 32 84 e0                                      add r3, r4, r3, lsl #5
005b2718  01 81 93 e7                                      ldr r8, [r3, r1, lsl #2]
005b271c  02 00 58 e1                                      cmp r8, r2
005b2720  17 00 00 0a                                      beq #0x5b2784
005b2724  00 00 52 e3                                      cmp r2, #0
005b2728  05 21 83 e7                                      str r2, [r3, r5, lsl #2]
005b272c  1c 00 00 0a                                      beq #0x5b27a4
005b2730  84 30 94 e5                                      ldr r3, [r4, #0x84]
005b2734  68 22 94 e5                                      ldr r2, [r4, #0x268]
005b2738  01 30 83 e2                                      add r3, r3, #1
005b273c  02 00 51 e1                                      cmp r1, r2
005b2740  84 30 84 e5                                      str r3, [r4, #0x84]
005b2744  03 00 00 0a                                      beq #0x5b2758
005b2748  21 0b 81 e2                                      add r0, r1, #0x8400
005b274c  c0 00 80 e2                                      add r0, r0, #0xc0
005b2750  a3 6e f5 eb                                      bl #0x30e1e4
005b2754  68 52 84 e5                                      str r5, [r4, #0x268]
005b2758  3f 10 d6 e5                                      ldrb r1, [r6, #0x3f]
005b275c  08 10 01 e2                                      and r1, r1, #8
005b2760  71 10 ef e6                                      uxtb r1, r1
005b2764  00 00 51 e3                                      cmp r1, #0
005b2768  0f 00 00 1a                                      bne #0x5b27ac
005b276c  06 00 a0 e1                                      mov r0, r6
005b2770  c9 2d 01 eb                                      bl #0x5fde9c
005b2774  01 00 a0 e3                                      mov r0, #1
005b2778  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005b277c  00 00 a0 e3                                      mov r0, #0
005b2780  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005b2784  00 00 58 e3                                      cmp r8, #0
005b2788  05 00 00 0a                                      beq #0x5b27a4
005b278c  b0 34 d8 e1                                      ldrh r3, [r8, #0x40]
005b2790  02 30 c3 e3                                      bic r3, r3, #2
005b2794  83 39 a0 e1                                      lsl r3, r3, #0x13
005b2798  a3 39 a0 e1                                      lsr r3, r3, #0x13
005b279c  00 00 53 e3                                      cmp r3, #0
005b27a0  0c 00 00 1a                                      bne #0x5b27d8
005b27a4  01 00 a0 e3                                      mov r0, #1
005b27a8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005b27ac  54 30 9f e5                                      ldr r3, [pc, #0x54]
005b27b0  54 10 96 e5                                      ldr r1, [r6, #0x54]
005b27b4  03 30 8f e0                                      add r3, pc, r3
005b27b8  a4 30 83 e2                                      add r3, r3, #0xa4
005b27bc  07 01 93 e7                                      ldr r0, [r3, r7, lsl #2]
005b27c0  fe 6f f5 eb                                      bl #0x30e7c0
005b27c4  06 00 a0 e1                                      mov r0, r6
005b27c8  00 10 a0 e3                                      mov r1, #0
005b27cc  1e f7 ff eb                                      bl #0x5b044c
005b27d0  01 00 a0 e3                                      mov r0, #1
005b27d4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005b27d8  68 32 94 e5                                      ldr r3, [r4, #0x268]
005b27dc  03 00 51 e1                                      cmp r1, r3
005b27e0  03 00 00 0a                                      beq #0x5b27f4
005b27e4  21 0b 81 e2                                      add r0, r1, #0x8400
005b27e8  c0 00 80 e2                                      add r0, r0, #0xc0
005b27ec  7c 6e f5 eb                                      bl #0x30e1e4
005b27f0  68 52 84 e5                                      str r5, [r4, #0x268]
005b27f4  08 00 a0 e1                                      mov r0, r8
005b27f8  00 10 a0 e3                                      mov r1, #0
005b27fc  12 f7 ff eb                                      bl #0x5b044c
005b2800  01 00 a0 e3                                      mov r0, #1
005b2804  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
005b2808  80 d8 32 00                                      .byte 0x80, 0xd8, 0x32, 0x00

; FUNCTION 0x005b35d8, declared_size=176, range_size=176, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE14clearBufferMapEv
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::clearBufferMap()
; decoder-mode: arm
005b35d8  70 40 2d e9                                      push {r4, r5, r6, lr}
005b35dc  08 68 90 e5                                      ldr r6, [r0, #0x808]
005b35e0  00 50 a0 e1                                      mov r5, r0
005b35e4  02 4b 80 e2                                      add r4, r0, #0x800
005b35e8  06 00 54 e1                                      cmp r4, r6
005b35ec  0c 00 00 0a                                      beq #0x5b3624
005b35f0  24 00 96 e5                                      ldr r0, [r6, #0x24]
005b35f4  3d 6a f5 eb                                      bl #0x30def0
005b35f8  0c 20 96 e5                                      ldr r2, [r6, #0xc]
005b35fc  00 00 52 e3                                      cmp r2, #0
005b3600  01 00 00 1a                                      bne #0x5b360c
005b3604  12 00 00 ea                                      b #0x5b3654
005b3608  03 20 a0 e1                                      mov r2, r3
005b360c  08 30 92 e5                                      ldr r3, [r2, #8]
005b3610  00 00 53 e3                                      cmp r3, #0
005b3614  fb ff ff 1a                                      bne #0x5b3608
005b3618  02 60 a0 e1                                      mov r6, r2
005b361c  06 00 54 e1                                      cmp r4, r6
005b3620  f2 ff ff 1a                                      bne #0x5b35f0
005b3624  10 38 95 e5                                      ldr r3, [r5, #0x810]
005b3628  00 00 53 e3                                      cmp r3, #0
005b362c  07 00 00 0a                                      beq #0x5b3650
005b3630  04 00 a0 e1                                      mov r0, r4
005b3634  04 18 95 e5                                      ldr r1, [r5, #0x804]
005b3638  d8 ff ff eb                                      bl #0x5b35a0
005b363c  00 30 a0 e3                                      mov r3, #0
005b3640  10 38 85 e5                                      str r3, [r5, #0x810]
005b3644  0c 48 85 e5                                      str r4, [r5, #0x80c]
005b3648  08 48 85 e5                                      str r4, [r5, #0x808]
005b364c  04 38 85 e5                                      str r3, [r5, #0x804]
005b3650  70 80 bd e8                                      pop {r4, r5, r6, pc}
005b3654  04 30 96 e5                                      ldr r3, [r6, #4]
005b3658  0c 10 93 e5                                      ldr r1, [r3, #0xc]
005b365c  01 00 56 e1                                      cmp r6, r1
005b3660  05 00 00 1a                                      bne #0x5b367c
005b3664  03 60 a0 e1                                      mov r6, r3
005b3668  04 30 93 e5                                      ldr r3, [r3, #4]
005b366c  0c 20 93 e5                                      ldr r2, [r3, #0xc]
005b3670  06 00 52 e1                                      cmp r2, r6
005b3674  fa ff ff 0a                                      beq #0x5b3664
005b3678  0c 20 96 e5                                      ldr r2, [r6, #0xc]
005b367c  03 00 52 e1                                      cmp r2, r3
005b3680  03 60 a0 11                                      movne r6, r3
005b3684  d7 ff ff ea                                      b #0x5b35e8

; FUNCTION 0x005b3688, declared_size=104, range_size=104, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEED2Ev
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::~CCommonGLDriver()
; decoder-mode: arm
005b3688  70 40 2d e9                                      push {r4, r5, r6, lr}
005b368c  54 30 9f e5                                      ldr r3, [pc, #0x54]
005b3690  54 20 9f e5                                      ldr r2, [pc, #0x54]
005b3694  10 18 90 e5                                      ldr r1, [r0, #0x810]
005b3698  03 30 8f e0                                      add r3, pc, r3
005b369c  02 20 93 e7                                      ldr r2, [r3, r2]
005b36a0  00 00 51 e3                                      cmp r1, #0
005b36a4  00 40 a0 e1                                      mov r4, r0
005b36a8  08 20 82 e2                                      add r2, r2, #8
005b36ac  00 20 80 e5                                      str r2, [r0]
005b36b0  08 00 00 0a                                      beq #0x5b36d8
005b36b4  02 5b 80 e2                                      add r5, r0, #0x800
005b36b8  05 00 a0 e1                                      mov r0, r5
005b36bc  04 18 94 e5                                      ldr r1, [r4, #0x804]
005b36c0  b6 ff ff eb                                      bl #0x5b35a0
005b36c4  00 30 a0 e3                                      mov r3, #0
005b36c8  0c 58 84 e5                                      str r5, [r4, #0x80c]
005b36cc  10 38 84 e5                                      str r3, [r4, #0x810]
005b36d0  08 58 84 e5                                      str r5, [r4, #0x808]
005b36d4  04 38 84 e5                                      str r3, [r4, #0x804]
005b36d8  04 00 a0 e1                                      mov r0, r4
005b36dc  05 a9 04 eb                                      bl #0x6ddaf8
005b36e0  04 00 a0 e1                                      mov r0, r4
005b36e4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005b36e8  f8 13 3e 00 74 45 00 00                          .byte 0xf8, 0x13, 0x3e, 0x00, 0x74, 0x45, 0x00, 0x00

; FUNCTION 0x005b3808, declared_size=104, range_size=104, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEED1Ev
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::~CCommonGLDriver()
; decoder-mode: arm
005b3808  70 40 2d e9                                      push {r4, r5, r6, lr}
005b380c  54 30 9f e5                                      ldr r3, [pc, #0x54]
005b3810  54 20 9f e5                                      ldr r2, [pc, #0x54]
005b3814  10 18 90 e5                                      ldr r1, [r0, #0x810]
005b3818  03 30 8f e0                                      add r3, pc, r3
005b381c  02 20 93 e7                                      ldr r2, [r3, r2]
005b3820  00 00 51 e3                                      cmp r1, #0
005b3824  00 40 a0 e1                                      mov r4, r0
005b3828  08 20 82 e2                                      add r2, r2, #8
005b382c  00 20 80 e5                                      str r2, [r0]
005b3830  08 00 00 0a                                      beq #0x5b3858
005b3834  02 5b 80 e2                                      add r5, r0, #0x800
005b3838  05 00 a0 e1                                      mov r0, r5
005b383c  04 18 94 e5                                      ldr r1, [r4, #0x804]
005b3840  56 ff ff eb                                      bl #0x5b35a0
005b3844  00 30 a0 e3                                      mov r3, #0
005b3848  0c 58 84 e5                                      str r5, [r4, #0x80c]
005b384c  10 38 84 e5                                      str r3, [r4, #0x810]
005b3850  08 58 84 e5                                      str r5, [r4, #0x808]
005b3854  04 38 84 e5                                      str r3, [r4, #0x804]
005b3858  04 00 a0 e1                                      mov r0, r4
005b385c  a5 a8 04 eb                                      bl #0x6ddaf8
005b3860  04 00 a0 e1                                      mov r0, r4
005b3864  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005b3868  78 12 3e 00 74 45 00 00                          .byte 0x78, 0x12, 0x3e, 0x00, 0x74, 0x45, 0x00, 0x00

; FUNCTION 0x005b3870, declared_size=28, range_size=28, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEED0Ev
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::~CCommonGLDriver()
; decoder-mode: arm
005b3870  10 40 2d e9                                      push {r4, lr}
005b3874  00 40 a0 e1                                      mov r4, r0
005b3878  e2 ff ff eb                                      bl #0x5b3808
005b387c  04 00 a0 e1                                      mov r0, r4
005b3880  8a 6a f5 eb                                      bl #0x30e2b0
005b3884  04 00 a0 e1                                      mov r0, r4
005b3888  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005b388c, declared_size=400, range_size=400, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE18createRenderTargetERKN5boost13intrusive_ptrINS0_8ITextureEEEj
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::createRenderTarget(boost::intrusive_ptr<glitch::video::ITexture> const&, unsigned int)
; decoder-mode: arm
005b388c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005b3890  68 41 9f e5                                      ldr r4, [pc, #0x168]
005b3894  68 51 9f e5                                      ldr r5, [pc, #0x168]
005b3898  01 a0 a0 e1                                      mov sl, r1
005b389c  04 40 8f e0                                      add r4, pc, r4
005b38a0  05 c0 94 e7                                      ldr ip, [r4, r5]
005b38a4  02 80 a0 e1                                      mov r8, r2
005b38a8  00 20 92 e5                                      ldr r2, [r2]
005b38ac  00 10 9c e5                                      ldr r1, [ip]
005b38b0  9c d0 4d e2                                      sub sp, sp, #0x9c
005b38b4  14 60 a0 e3                                      mov r6, #0x14
005b38b8  94 10 8d e5                                      str r1, [sp, #0x94]
005b38bc  38 b0 92 e5                                      ldr fp, [r2, #0x38]
005b38c0  00 70 a0 e1                                      mov r7, r0
005b38c4  03 90 a0 e1                                      mov sb, r3
005b38c8  5b b2 e5 e7                                      ubfx fp, fp, #4, #6
005b38cc  96 ab 26 e0                                      mla r6, r6, fp, sl
005b38d0  4a 6e 86 e2                                      add r6, r6, #0x4a0
005b38d4  08 60 86 e2                                      add r6, r6, #8
005b38d8  b6 20 d6 e1                                      ldrh r2, [r6, #6]
005b38dc  02 00 5b e1                                      cmp fp, r2
005b38e0  2a 00 00 0a                                      beq #0x5b3990
005b38e4  27 00 5b e3                                      cmp fp, #0x27
005b38e8  21 00 00 0a                                      beq #0x5b3974
005b38ec  00 00 a0 e3                                      mov r0, #0
005b38f0  13 e8 00 eb                                      bl #0x5ed944
005b38f4  b6 20 d6 e1                                      ldrh r2, [r6, #6]
005b38f8  0b 81 90 e7                                      ldr r8, [r0, fp, lsl #2]
005b38fc  27 00 52 e3                                      cmp r2, #0x27
005b3900  1f 00 00 0a                                      beq #0x5b3984
005b3904  00 00 a0 e3                                      mov r0, #0
005b3908  0c 20 8d e5                                      str r2, [sp, #0xc]
005b390c  0c e8 00 eb                                      bl #0x5ed944
005b3910  0c 20 9d e5                                      ldr r2, [sp, #0xc]
005b3914  02 c1 90 e7                                      ldr ip, [r0, r2, lsl #2]
005b3918  e8 20 9f e5                                      ldr r2, [pc, #0xe8]
005b391c  14 60 8d e2                                      add r6, sp, #0x14
005b3920  08 30 a0 e1                                      mov r3, r8
005b3924  02 20 8f e0                                      add r2, pc, r2
005b3928  7f 10 a0 e3                                      mov r1, #0x7f
005b392c  06 00 a0 e1                                      mov r0, r6
005b3930  00 c0 8d e5                                      str ip, [sp]
005b3934  42 6a f5 eb                                      bl #0x30e244
005b3938  cc 00 9f e5                                      ldr r0, [pc, #0xcc]
005b393c  06 10 a0 e1                                      mov r1, r6
005b3940  03 20 a0 e3                                      mov r2, #3
005b3944  00 00 8f e0                                      add r0, pc, r0
005b3948  e6 5c 01 eb                                      bl #0x60ace8
005b394c  00 30 a0 e3                                      mov r3, #0
005b3950  00 30 87 e5                                      str r3, [r7]
005b3954  05 30 94 e7                                      ldr r3, [r4, r5]
005b3958  94 20 9d e5                                      ldr r2, [sp, #0x94]
005b395c  07 00 a0 e1                                      mov r0, r7
005b3960  00 30 93 e5                                      ldr r3, [r3]
005b3964  03 00 52 e1                                      cmp r2, r3
005b3968  23 00 00 1a                                      bne #0x5b39fc
005b396c  9c d0 8d e2                                      add sp, sp, #0x9c
005b3970  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005b3974  94 80 9f e5                                      ldr r8, [pc, #0x94]
005b3978  27 00 52 e3                                      cmp r2, #0x27
005b397c  08 80 8f e0                                      add r8, pc, r8
005b3980  df ff ff 1a                                      bne #0x5b3904
005b3984  88 c0 9f e5                                      ldr ip, [pc, #0x88]
005b3988  0c c0 8f e0                                      add ip, pc, ip
005b398c  e1 ff ff ea                                      b #0x5b3918
005b3990  00 10 a0 e3                                      mov r1, #0
005b3994  5c 00 a0 e3                                      mov r0, #0x5c
005b3998  03 02 fe eb                                      bl #0x5341ac
005b399c  0a 10 a0 e1                                      mov r1, sl
005b39a0  00 60 a0 e1                                      mov r6, r0
005b39a4  90 a8 04 eb                                      bl #0x6ddbec
005b39a8  68 c0 9f e5                                      ldr ip, [pc, #0x68]
005b39ac  04 30 96 e5                                      ldr r3, [r6, #4]
005b39b0  00 10 a0 e3                                      mov r1, #0
005b39b4  0c c0 94 e7                                      ldr ip, [r4, ip]
005b39b8  01 30 83 e2                                      add r3, r3, #1
005b39bc  04 30 86 e5                                      str r3, [r6, #4]
005b39c0  08 c0 8c e2                                      add ip, ip, #8
005b39c4  00 c0 86 e5                                      str ip, [r6]
005b39c8  01 30 a0 e1                                      mov r3, r1
005b39cc  00 90 8d e5                                      str sb, [sp]
005b39d0  08 20 a0 e1                                      mov r2, r8
005b39d4  06 00 a0 e1                                      mov r0, r6
005b39d8  0f e0 a0 e1                                      mov lr, pc
005b39dc  20 f0 9c e5                                      ldr pc, [ip, #0x20]
005b39e0  00 60 87 e5                                      str r6, [r7]
005b39e4  04 30 96 e5                                      ldr r3, [r6, #4]
005b39e8  06 00 a0 e1                                      mov r0, r6
005b39ec  01 30 83 e2                                      add r3, r3, #1
005b39f0  04 30 86 e5                                      str r3, [r6, #4]
005b39f4  e2 a6 f5 eb                                      bl #0x31d584
005b39f8  d5 ff ff ea                                      b #0x5b3954
005b39fc  43 6a f5 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
005b3a00  f4 11 3e 00 ac 40 00 00 74 cc 32 00 74 cc 32 00  .byte 0xf4, 0x11, 0x3e, 0x00, 0xac, 0x40, 0x00, 0x00, 0x74, 0xcc, 0x32, 0x00, 0x74, 0xcc, 0x32, 0x00
005b3a10  e4 2a 31 00 d8 2a 31 00 78 4a 00 00              .byte 0xe4, 0x2a, 0x31, 0x00, 0xd8, 0x2a, 0x31, 0x00, 0x78, 0x4a, 0x00, 0x00

; FUNCTION 0x005b3afc, declared_size=4772, range_size=4772, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE17genericDriverInitERKNS_4core11dimension2dIiEEb
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::genericDriverInit(glitch::core::dimension2d<int> const&, bool)
; decoder-mode: arm
005b3afc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005b3b00  b8 5f 9f e5                                      ldr r5, [pc, #0xfb8]
005b3b04  b8 2f 9f e5                                      ldr r2, [pc, #0xfb8]
005b3b08  44 d0 4d e2                                      sub sp, sp, #0x44
005b3b0c  05 50 8f e0                                      add r5, pc, r5
005b3b10  02 30 95 e7                                      ldr r3, [r5, r2]
005b3b14  00 40 a0 e1                                      mov r4, r0
005b3b18  02 0f 01 e3                                      movw r0, #0x1f02
005b3b1c  00 30 93 e5                                      ldr r3, [r3]
005b3b20  06 00 8d e9                                      stmib sp, {r1, r2}
005b3b24  3c 30 8d e5                                      str r3, [sp, #0x3c]
005b3b28  d4 69 f5 eb                                      bl #0x30e280
005b3b2c  94 3f 9f e5                                      ldr r3, [pc, #0xf94]
005b3b30  03 30 95 e7                                      ldr r3, [r5, r3]
005b3b34  00 20 93 e5                                      ldr r2, [r3]
005b3b38  d0 30 d0 e1                                      ldrsb r3, [r0]
005b3b3c  01 00 73 e3                                      cmn r3, #1
005b3b40  03 00 00 0a                                      beq #0x5b3b54
005b3b44  73 30 e2 e6                                      uxtab r3, r2, r3
005b3b48  01 30 d3 e5                                      ldrb r3, [r3, #1]
005b3b4c  04 00 13 e3                                      tst r3, #4
005b3b50  01 00 00 1a                                      bne #0x5b3b5c
005b3b54  01 00 80 e2                                      add r0, r0, #1
005b3b58  f6 ff ff ea                                      b #0x5b3b38
005b3b5c  68 1f 9f e5                                      ldr r1, [pc, #0xf68]
005b3b60  1c 30 8d e2                                      add r3, sp, #0x1c
005b3b64  20 20 8d e2                                      add r2, sp, #0x20
005b3b68  00 c0 a0 e3                                      mov ip, #0
005b3b6c  01 10 8f e0                                      add r1, pc, r1
005b3b70  1c c0 8d e5                                      str ip, [sp, #0x1c]
005b3b74  20 c0 8d e5                                      str ip, [sp, #0x20]
005b3b78  bd 69 f5 eb                                      bl #0x30e274
005b3b7c  00 00 50 e3                                      cmp r0, #0
005b3b80  20 30 9d c5                                      ldrgt r3, [sp, #0x20]
005b3b84  64 20 a0 c3                                      movgt r2, #0x64
005b3b88  20 30 9d d5                                      ldrle r3, [sp, #0x20]
005b3b8c  92 03 03 c0                                      mulgt r3, r2, r3
005b3b90  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
005b3b94  20 30 8d c5                                      strgt r3, [sp, #0x20]
005b3b98  02 30 83 e0                                      add r3, r3, r2
005b3b9c  64 00 53 e3                                      cmp r3, #0x64
005b3ba0  a4 34 84 e5                                      str r3, [r4, #0x4a4]
005b3ba4  ec 03 00 9a                                      bls #0x5b4b5c
005b3ba8  20 0f 9f e5                                      ldr r0, [pc, #0xf20]
005b3bac  01 10 a0 e3                                      mov r1, #1
005b3bb0  00 00 8f e0                                      add r0, pc, r0
005b3bb4  39 5c 01 eb                                      bl #0x60aca0
005b3bb8  03 0f 01 e3                                      movw r0, #0x1f03
005b3bbc  af 69 f5 eb                                      bl #0x30e280
005b3bc0  00 10 a0 e1                                      mov r1, r0
005b3bc4  04 00 a0 e1                                      mov r0, r4
005b3bc8  d9 a6 04 eb                                      bl #0x6dd734
005b3bcc  d0 37 94 e5                                      ldr r3, [r4, #0x7d0]
005b3bd0  20 00 13 e3                                      tst r3, #0x20
005b3bd4  ec 03 00 1a                                      bne #0x5b4b8c
005b3bd8  40 10 8d e2                                      add r1, sp, #0x40
005b3bdc  00 30 a0 e3                                      mov r3, #0
005b3be0  28 30 21 e5                                      str r3, [r1, #-0x28]!
005b3be4  72 08 08 e3                                      movw r0, #0x8872
005b3be8  5e 6a f5 eb                                      bl #0x30e568
005b3bec  18 30 9d e5                                      ldr r3, [sp, #0x18]
005b3bf0  9c 10 94 e5                                      ldr r1, [r4, #0x9c]
005b3bf4  57 0d 00 e3                                      movw r0, #0xd57
005b3bf8  08 00 53 e3                                      cmp r3, #8
005b3bfc  08 30 a0 23                                      movhs r3, #8
005b3c00  01 00 53 e3                                      cmp r3, #1
005b3c04  01 20 81 e3                                      orr r2, r1, #1
005b3c08  9c 20 84 e5                                      str r2, [r4, #0x9c]
005b3c0c  03 20 81 83                                      orrhi r2, r1, #3
005b3c10  9c 20 84 85                                      strhi r2, [r4, #0x9c]
005b3c14  02 2b 82 e3                                      orr r2, r2, #0x800
005b3c18  4c 30 84 e5                                      str r3, [r4, #0x4c]
005b3c1c  04 20 82 e3                                      orr r2, r2, #4
005b3c20  40 10 8d e2                                      add r1, sp, #0x40
005b3c24  00 30 a0 e3                                      mov r3, #0
005b3c28  2c 30 21 e5                                      str r3, [r1, #-0x2c]!
005b3c2c  9c 20 84 e5                                      str r2, [r4, #0x9c]
005b3c30  4c 6a f5 eb                                      bl #0x30e568
005b3c34  9c 20 94 e5                                      ldr r2, [r4, #0x9c]
005b3c38  b8 07 94 e5                                      ldr r0, [r4, #0x7b8]
005b3c3c  18 20 82 e3                                      orr r2, r2, #0x18
005b3c40  01 03 10 e3                                      tst r0, #0x4000000
005b3c44  9c 20 84 e5                                      str r2, [r4, #0x9c]
005b3c48  bb 03 00 0a                                      beq #0x5b4b3c
005b3c4c  e8 37 94 e5                                      ldr r3, [r4, #0x7e8]
005b3c50  ec 17 94 e5                                      ldr r1, [r4, #0x7ec]
005b3c54  20 20 82 e3                                      orr r2, r2, #0x20
005b3c58  9c 20 84 e5                                      str r2, [r4, #0x9c]
005b3c5c  c0 c7 94 e5                                      ldr ip, [r4, #0x7c0]
005b3c60  02 05 1c e3                                      tst ip, #0x800000
005b3c64  b0 03 00 0a                                      beq #0x5b4b2c
005b3c68  80 20 82 e3                                      orr r2, r2, #0x80
005b3c6c  9c 20 84 e5                                      str r2, [r4, #0x9c]
005b3c70  01 2c 82 e3                                      orr r2, r2, #0x100
005b3c74  01 01 10 e3                                      tst r0, #0x40000000
005b3c78  9c 20 84 e5                                      str r2, [r4, #0x9c]
005b3c7c  a6 03 00 0a                                      beq #0x5b4b1c
005b3c80  02 2c 82 e3                                      orr r2, r2, #0x200
005b3c84  9c 20 84 e5                                      str r2, [r4, #0x9c]
005b3c88  d0 e7 94 e5                                      ldr lr, [r4, #0x7d0]
005b3c8c  01 0a 82 e3                                      orr r0, r2, #0x1000
005b3c90  9c 00 84 e5                                      str r0, [r4, #0x9c]
005b3c94  20 00 1e e3                                      tst lr, #0x20
005b3c98  21 0a 82 13                                      orrne r0, r2, #0x21000
005b3c9c  9c 00 84 15                                      strne r0, [r4, #0x9c]
005b3ca0  01 20 a0 e3                                      mov r2, #1
005b3ca4  4b 07 80 e3                                      orr r0, r0, #0x12c0000
005b3ca8  01 0c 13 e3                                      tst r3, #0x100
005b3cac  9c 00 84 e5                                      str r0, [r4, #0x9c]
005b3cb0  a1 24 c4 e5                                      strb r2, [r4, #0x4a1]
005b3cb4  18 03 00 1a                                      bne #0x5b491c
005b3cb8  02 06 11 e3                                      tst r1, #0x200000
005b3cbc  05 60 a0 03                                      moveq r6, #5
005b3cc0  15 03 00 1a                                      bne #0x5b491c
005b3cc4  ae c4 00 e3                                      movw ip, #0x4ae
005b3cc8  bc 60 84 e1                                      strh r6, [r4, ip]
005b3ccc  00 00 a0 e3                                      mov r0, #0
005b3cd0  ac c4 00 e3                                      movw ip, #0x4ac
005b3cd4  bc 00 84 e1                                      strh r0, [r4, ip]
005b3cd8  09 29 01 e3                                      movw r2, #0x1909
005b3cdc  01 c4 01 e3                                      movw ip, #0x1401
005b3ce0  01 0c 13 e3                                      tst r3, #0x100
005b3ce4  b4 24 84 e5                                      str r2, [r4, #0x4b4]
005b3ce8  b8 c4 84 e5                                      str ip, [r4, #0x4b8]
005b3cec  bc 04 84 e5                                      str r0, [r4, #0x4bc]
005b3cf0  b0 24 84 e5                                      str r2, [r4, #0x4b0]
005b3cf4  06 03 00 1a                                      bne #0x5b4914
005b3cf8  02 06 11 e3                                      tst r1, #0x200000
005b3cfc  05 60 a0 03                                      moveq r6, #5
005b3d00  03 03 00 1a                                      bne #0x5b4914
005b3d04  c2 c4 00 e3                                      movw ip, #0x4c2
005b3d08  bc 60 84 e1                                      strh r6, [r4, ip]
005b3d0c  00 20 a0 e3                                      mov r2, #0
005b3d10  13 cd a0 e3                                      mov ip, #0x4c0
005b3d14  bc 20 84 e1                                      strh r2, [r4, ip]
005b3d18  02 60 a0 e3                                      mov r6, #2
005b3d1c  d4 c4 00 e3                                      movw ip, #0x4d4
005b3d20  bc 60 84 e1                                      strh r6, [r4, ip]
005b3d24  0e 70 a0 e3                                      mov r7, #0xe
005b3d28  d6 c4 00 e3                                      movw ip, #0x4d6
005b3d2c  bc 70 84 e1                                      strh r7, [r4, ip]
005b3d30  06 09 01 e3                                      movw r0, #0x1906
005b3d34  01 c4 01 e3                                      movw ip, #0x1401
005b3d38  01 0c 13 e3                                      tst r3, #0x100
005b3d3c  dc 04 84 e5                                      str r0, [r4, #0x4dc]
005b3d40  e0 c4 84 e5                                      str ip, [r4, #0x4e0]
005b3d44  e4 24 84 e5                                      str r2, [r4, #0x4e4]
005b3d48  c4 24 84 e5                                      str r2, [r4, #0x4c4]
005b3d4c  c8 24 84 e5                                      str r2, [r4, #0x4c8]
005b3d50  cc 24 84 e5                                      str r2, [r4, #0x4cc]
005b3d54  d0 24 84 e5                                      str r2, [r4, #0x4d0]
005b3d58  d8 04 84 e5                                      str r0, [r4, #0x4d8]
005b3d5c  ea 02 00 1a                                      bne #0x5b490c
005b3d60  02 06 11 e3                                      tst r1, #0x200000
005b3d64  07 c0 a0 03                                      moveq ip, #7
005b3d68  e7 02 00 1a                                      bne #0x5b490c
005b3d6c  ea 04 00 e3                                      movw r0, #0x4ea
005b3d70  b0 c0 84 e1                                      strh ip, [r4, r0]
005b3d74  04 80 a0 e3                                      mov r8, #4
005b3d78  e8 04 00 e3                                      movw r0, #0x4e8
005b3d7c  b0 80 84 e1                                      strh r8, [r4, r0]
005b3d80  00 20 e0 e3                                      mvn r2, #0
005b3d84  00 00 a0 e3                                      mov r0, #0
005b3d88  01 0c 13 e3                                      tst r3, #0x100
005b3d8c  f4 24 84 e5                                      str r2, [r4, #0x4f4]
005b3d90  f8 04 84 e5                                      str r0, [r4, #0x4f8]
005b3d94  ec 24 84 e5                                      str r2, [r4, #0x4ec]
005b3d98  f0 24 84 e5                                      str r2, [r4, #0x4f0]
005b3d9c  d8 02 00 1a                                      bne #0x5b4904
005b3da0  02 06 11 e3                                      tst r1, #0x200000
005b3da4  07 a0 a0 03                                      moveq sl, #7
005b3da8  d5 02 00 1a                                      bne #0x5b4904
005b3dac  fe 84 00 e3                                      movw r8, #0x4fe
005b3db0  b8 a0 84 e1                                      strh sl, [r4, r8]
005b3db4  fc 84 00 e3                                      movw r8, #0x4fc
005b3db8  04 a0 a0 e3                                      mov sl, #4
005b3dbc  b8 a0 84 e1                                      strh sl, [r4, r8]
005b3dc0  0a 79 01 e3                                      movw r7, #0x190a
005b3dc4  05 a0 a0 e3                                      mov sl, #5
005b3dc8  51 8e a0 e3                                      mov r8, #0x510
005b3dcc  04 75 84 e5                                      str r7, [r4, #0x504]
005b3dd0  b8 a0 84 e1                                      strh sl, [r4, r8]
005b3dd4  12 85 00 e3                                      movw r8, #0x512
005b3dd8  b8 a0 84 e1                                      strh sl, [r4, r8]
005b3ddc  63 83 08 e3                                      movw r8, #0x8363
005b3de0  1c 85 84 e5                                      str r8, [r4, #0x51c]
005b3de4  62 8d 08 e3                                      movw r8, #0x8d62
005b3de8  20 85 84 e5                                      str r8, [r4, #0x520]
005b3dec  07 a0 a0 e3                                      mov sl, #7
005b3df0  24 85 00 e3                                      movw r8, #0x524
005b3df4  b8 a0 84 e1                                      strh sl, [r4, r8]
005b3df8  26 85 00 e3                                      movw r8, #0x526
005b3dfc  b8 a0 84 e1                                      strh sl, [r4, r8]
005b3e00  38 85 00 e3                                      movw r8, #0x538
005b3e04  b8 a0 84 e1                                      strh sl, [r4, r8]
005b3e08  3a 85 00 e3                                      movw r8, #0x53a
005b3e0c  b8 a0 84 e1                                      strh sl, [r4, r8]
005b3e10  33 80 08 e3                                      movw r8, #0x8033
005b3e14  44 85 84 e5                                      str r8, [r4, #0x544]
005b3e18  56 80 08 e3                                      movw r8, #0x8056
005b3e1c  48 85 84 e5                                      str r8, [r4, #0x548]
005b3e20  09 a0 a0 e3                                      mov sl, #9
005b3e24  4c 85 00 e3                                      movw r8, #0x54c
005b3e28  b8 a0 84 e1                                      strh sl, [r4, r8]
005b3e2c  4e 85 00 e3                                      movw r8, #0x54e
005b3e30  b8 a0 84 e1                                      strh sl, [r4, r8]
005b3e34  00 20 a0 e3                                      mov r2, #0
005b3e38  56 8e a0 e3                                      mov r8, #0x560
005b3e3c  5c 25 84 e5                                      str r2, [r4, #0x55c]
005b3e40  b8 a0 84 e1                                      strh sl, [r4, r8]
005b3e44  62 85 00 e3                                      movw r8, #0x562
005b3e48  b8 a0 84 e1                                      strh sl, [r4, r8]
005b3e4c  08 c9 01 e3                                      movw ip, #0x1908
005b3e50  07 09 01 e3                                      movw r0, #0x1907
005b3e54  0c 25 84 e5                                      str r2, [r4, #0x50c]
005b3e58  28 25 84 e5                                      str r2, [r4, #0x528]
005b3e5c  2c 25 84 e5                                      str r2, [r4, #0x52c]
005b3e60  30 25 84 e5                                      str r2, [r4, #0x530]
005b3e64  34 25 84 e5                                      str r2, [r4, #0x534]
005b3e68  50 25 84 e5                                      str r2, [r4, #0x550]
005b3e6c  54 25 84 e5                                      str r2, [r4, #0x554]
005b3e70  58 25 84 e5                                      str r2, [r4, #0x558]
005b3e74  01 64 01 e3                                      movw r6, #0x1401
005b3e78  34 20 08 e3                                      movw r2, #0x8034
005b3e7c  00 75 84 e5                                      str r7, [r4, #0x500]
005b3e80  08 65 84 e5                                      str r6, [r4, #0x508]
005b3e84  14 05 84 e5                                      str r0, [r4, #0x514]
005b3e88  18 05 84 e5                                      str r0, [r4, #0x518]
005b3e8c  3c c5 84 e5                                      str ip, [r4, #0x53c]
005b3e90  40 c5 84 e5                                      str ip, [r4, #0x540]
005b3e94  64 c5 84 e5                                      str ip, [r4, #0x564]
005b3e98  01 9c 13 e2                                      ands sb, r3, #0x100
005b3e9c  68 c5 84 e5                                      str ip, [r4, #0x568]
005b3ea0  6c 25 84 e5                                      str r2, [r4, #0x56c]
005b3ea4  57 20 08 e3                                      movw r2, #0x8057
005b3ea8  70 25 84 e5                                      str r2, [r4, #0x570]
005b3eac  cc 02 00 1a                                      bne #0x5b49e4
005b3eb0  02 06 11 e3                                      tst r1, #0x200000
005b3eb4  0e c0 a0 13                                      movne ip, #0xe
005b3eb8  05 c0 a0 03                                      moveq ip, #5
005b3ebc  76 25 00 e3                                      movw r2, #0x576
005b3ec0  b2 c0 84 e1                                      strh ip, [r4, r2]
005b3ec4  74 25 00 e3                                      movw r2, #0x574
005b3ec8  0a c0 a0 e3                                      mov ip, #0xa
005b3ecc  b2 c0 84 e1                                      strh ip, [r4, r2]
005b3ed0  7c 05 84 e5                                      str r0, [r4, #0x57c]
005b3ed4  80 65 84 e5                                      str r6, [r4, #0x580]
005b3ed8  84 95 84 e5                                      str sb, [r4, #0x584]
005b3edc  78 05 84 e5                                      str r0, [r4, #0x578]
005b3ee0  01 0c 13 e3                                      tst r3, #0x100
005b3ee4  0a c0 a0 13                                      movne ip, #0xa
005b3ee8  02 00 00 1a                                      bne #0x5b3ef8
005b3eec  02 06 11 e3                                      tst r1, #0x200000
005b3ef0  0e c0 a0 13                                      movne ip, #0xe
005b3ef4  05 c0 a0 03                                      moveq ip, #5
005b3ef8  8a 05 00 e3                                      movw r0, #0x58a
005b3efc  b0 c0 84 e1                                      strh ip, [r4, r0]
005b3f00  0a 80 a0 e3                                      mov r8, #0xa
005b3f04  88 05 00 e3                                      movw r0, #0x588
005b3f08  b0 80 84 e1                                      strh r8, [r4, r0]
005b3f0c  0e a0 a0 e3                                      mov sl, #0xe
005b3f10  9c 05 00 e3                                      movw r0, #0x59c
005b3f14  b0 a0 84 e1                                      strh sl, [r4, r0]
005b3f18  00 20 a0 e3                                      mov r2, #0
005b3f1c  01 02 13 e3                                      tst r3, #0x10000000
005b3f20  9e 05 00 e3                                      movw r0, #0x59e
005b3f24  b0 a0 84 e1                                      strh sl, [r4, r0]
005b3f28  0d c0 a0 13                                      movne ip, #0xd
005b3f2c  ac 25 84 e5                                      str r2, [r4, #0x5ac]
005b3f30  8c 25 84 e5                                      str r2, [r4, #0x58c]
005b3f34  90 25 84 e5                                      str r2, [r4, #0x590]
005b3f38  94 25 84 e5                                      str r2, [r4, #0x594]
005b3f3c  98 25 84 e5                                      str r2, [r4, #0x598]
005b3f40  a0 25 84 e5                                      str r2, [r4, #0x5a0]
005b3f44  a4 25 84 e5                                      str r2, [r4, #0x5a4]
005b3f48  a8 25 84 e5                                      str r2, [r4, #0x5a8]
005b3f4c  01 20 a0 13                                      movne r2, #1
005b3f50  04 00 00 1a                                      bne #0x5b3f68
005b3f54  11 27 01 e2                                      and r2, r1, #0x440000
005b3f58  00 00 52 e3                                      cmp r2, #0
005b3f5c  01 20 a0 13                                      movne r2, #1
005b3f60  0d c0 a0 13                                      movne ip, #0xd
005b3f64  0e c0 a0 03                                      moveq ip, #0xe
005b3f68  01 0c 13 e3                                      tst r3, #0x100
005b3f6c  5c 02 00 1a                                      bne #0x5b48e4
005b3f70  02 06 11 e3                                      tst r1, #0x200000
005b3f74  06 70 a0 03                                      moveq r7, #6
005b3f78  59 02 00 1a                                      bne #0x5b48e4
005b3f7c  01 07 11 e3                                      tst r1, #0x40000
005b3f80  5a 02 00 1a                                      bne #0x5b48f0
005b3f84  00 00 52 e3                                      cmp r2, #0
005b3f88  e1 80 08 13                                      movwne r8, #0x80e1
005b3f8c  9f 02 00 0a                                      beq #0x5b4a10
005b3f90  e1 20 08 e3                                      movw r2, #0x80e1
005b3f94  01 04 01 e3                                      movw r0, #0x1401
005b3f98  5b 6e a0 e3                                      mov r6, #0x5b0
005b3f9c  b6 c0 84 e1                                      strh ip, [r4, r6]
005b3fa0  b2 c5 00 e3                                      movw ip, #0x5b2
005b3fa4  bc 70 84 e1                                      strh r7, [r4, ip]
005b3fa8  01 0c 13 e3                                      tst r3, #0x100
005b3fac  b8 25 84 e5                                      str r2, [r4, #0x5b8]
005b3fb0  00 20 a0 e3                                      mov r2, #0
005b3fb4  b4 85 84 e5                                      str r8, [r4, #0x5b4]
005b3fb8  bc 05 84 e5                                      str r0, [r4, #0x5bc]
005b3fbc  c0 25 84 e5                                      str r2, [r4, #0x5c0]
005b3fc0  96 02 00 0a                                      beq #0x5b4a20
005b3fc4  c4 05 00 e3                                      movw r0, #0x5c4
005b3fc8  0e c0 a0 e3                                      mov ip, #0xe
005b3fcc  b0 c0 84 e1                                      strh ip, [r4, r0]
005b3fd0  02 00 80 e2                                      add r0, r0, #2
005b3fd4  b0 c0 84 e1                                      strh ip, [r4, r0]
005b3fd8  01 04 01 e3                                      movw r0, #0x1401
005b3fdc  08 29 01 e3                                      movw r2, #0x1908
005b3fe0  d0 05 84 e5                                      str r0, [r4, #0x5d0]
005b3fe4  58 00 08 e3                                      movw r0, #0x8058
005b3fe8  cc 25 84 e5                                      str r2, [r4, #0x5cc]
005b3fec  d4 05 84 e5                                      str r0, [r4, #0x5d4]
005b3ff0  c8 25 84 e5                                      str r2, [r4, #0x5c8]
005b3ff4  01 0c 13 e3                                      tst r3, #0x100
005b3ff8  54 02 00 1a                                      bne #0x5b4950
005b3ffc  02 06 11 e3                                      tst r1, #0x200000
005b4000  07 70 a0 03                                      moveq r7, #7
005b4004  51 02 00 1a                                      bne #0x5b4950
005b4008  02 06 13 e2                                      ands r0, r3, #0x200000
005b400c  da c5 00 e3                                      movw ip, #0x5da
005b4010  bc 70 84 e1                                      strh r7, [r4, ip]
005b4014  00 20 a0 e3                                      mov r2, #0
005b4018  10 60 a0 13                                      movne r6, #0x10
005b401c  0e 60 a0 03                                      moveq r6, #0xe
005b4020  d8 c5 00 e3                                      movw ip, #0x5d8
005b4024  0e 70 a0 e3                                      mov r7, #0xe
005b4028  01 0c 13 e3                                      tst r3, #0x100
005b402c  bc 70 84 e1                                      strh r7, [r4, ip]
005b4030  e8 25 84 e5                                      str r2, [r4, #0x5e8]
005b4034  dc 25 84 e5                                      str r2, [r4, #0x5dc]
005b4038  e0 25 84 e5                                      str r2, [r4, #0x5e0]
005b403c  e4 25 84 e5                                      str r2, [r4, #0x5e4]
005b4040  3d 02 00 1a                                      bne #0x5b493c
005b4044  02 06 11 e3                                      tst r1, #0x200000
005b4048  09 70 a0 03                                      moveq r7, #9
005b404c  3a 02 00 1a                                      bne #0x5b493c
005b4050  00 00 50 e3                                      cmp r0, #0
005b4054  dc c7 94 e5                                      ldr ip, [r4, #0x7dc]
005b4058  ec 85 00 e3                                      movw r8, #0x5ec
005b405c  b8 60 84 e1                                      strh r6, [r4, r8]
005b4060  00 20 a0 01                                      moveq r2, r0
005b4064  08 29 01 13                                      movwne r2, #0x1908
005b4068  ee 65 00 e3                                      movw r6, #0x5ee
005b406c  b6 70 84 e1                                      strh r7, [r4, r6]
005b4070  02 00 a0 01                                      moveq r0, r2
005b4074  f0 25 84 e5                                      str r2, [r4, #0x5f0]
005b4078  08 29 01 e3                                      movw r2, #0x1908
005b407c  68 03 08 13                                      movwne r0, #0x8368
005b4080  f4 25 84 e5                                      str r2, [r4, #0x5f4]
005b4084  02 00 1c e3                                      tst ip, #2
005b4088  00 20 a0 e3                                      mov r2, #0
005b408c  f8 05 84 e5                                      str r0, [r4, #0x5f8]
005b4090  fc 25 84 e5                                      str r2, [r4, #0x5fc]
005b4094  25 02 00 1a                                      bne #0x5b4930
005b4098  01 68 1e e2                                      ands r6, lr, #0x10000
005b409c  05 70 a0 03                                      moveq r7, #5
005b40a0  22 02 00 1a                                      bne #0x5b4930
005b40a4  06 0c a0 e3                                      mov r0, #0x600
005b40a8  b0 70 84 e1                                      strh r7, [r4, r0]
005b40ac  00 20 a0 e3                                      mov r2, #0
005b40b0  02 06 00 e3                                      movw r0, #0x602
005b40b4  05 80 a0 e3                                      mov r8, #5
005b40b8  02 00 1c e3                                      tst ip, #2
005b40bc  b0 80 84 e1                                      strh r8, [r4, r0]
005b40c0  04 66 84 e5                                      str r6, [r4, #0x604]
005b40c4  10 26 84 e5                                      str r2, [r4, #0x610]
005b40c8  08 26 84 e5                                      str r2, [r4, #0x608]
005b40cc  0c 26 84 e5                                      str r2, [r4, #0x60c]
005b40d0  1b 02 00 1a                                      bne #0x5b4944
005b40d4  01 e8 1e e2                                      ands lr, lr, #0x10000
005b40d8  09 60 a0 03                                      moveq r6, #9
005b40dc  18 02 00 1a                                      bne #0x5b4944
005b40e0  14 06 00 e3                                      movw r0, #0x614
005b40e4  b0 60 84 e1                                      strh r6, [r4, r0]
005b40e8  00 20 a0 e3                                      mov r2, #0
005b40ec  16 06 00 e3                                      movw r0, #0x616
005b40f0  09 a0 a0 e3                                      mov sl, #9
005b40f4  01 0c 13 e3                                      tst r3, #0x100
005b40f8  b0 a0 84 e1                                      strh sl, [r4, r0]
005b40fc  18 e6 84 e5                                      str lr, [r4, #0x618]
005b4100  24 26 84 e5                                      str r2, [r4, #0x624]
005b4104  1c 26 84 e5                                      str r2, [r4, #0x61c]
005b4108  20 26 84 e5                                      str r2, [r4, #0x620]
005b410c  04 02 00 1a                                      bne #0x5b4924
005b4110  02 06 11 e3                                      tst r1, #0x200000
005b4114  07 e0 a0 03                                      moveq lr, #7
005b4118  0c e0 8d 05                                      streq lr, [sp, #0xc]
005b411c  00 02 00 1a                                      bne #0x5b4924
005b4120  01 26 03 e2                                      and r2, r3, #0x100000
005b4124  00 00 52 e3                                      cmp r2, #0
005b4128  ee e7 08 e3                                      movw lr, #0x87ee
005b412c  02 e0 a0 01                                      moveq lr, r2
005b4130  7c e6 84 e5                                      str lr, [r4, #0x67c]
005b4134  01 01 03 e2                                      and r0, r3, #0x40000000
005b4138  92 6c 08 e3                                      movw r6, #0x8c92
005b413c  93 ec 08 e3                                      movw lr, #0x8c93
005b4140  02 60 a0 01                                      moveq r6, r2
005b4144  02 e0 a0 01                                      moveq lr, r2
005b4148  15 90 a0 13                                      movne sb, #0x15
005b414c  0e 90 a0 03                                      moveq sb, #0xe
005b4150  16 a0 a0 13                                      movne sl, #0x16
005b4154  0e a0 a0 03                                      moveq sl, #0xe
005b4158  17 80 a0 13                                      movne r8, #0x17
005b415c  0e 80 a0 03                                      moveq r8, #0xe
005b4160  01 2c 08 e3                                      movw r2, #0x8c01
005b4164  00 00 50 e3                                      cmp r0, #0
005b4168  00 20 a0 01                                      moveq r2, r0
005b416c  90 26 84 e5                                      str r2, [r4, #0x690]
005b4170  68 e6 84 e5                                      str lr, [r4, #0x668]
005b4174  0c e0 9d e5                                      ldr lr, [sp, #0xc]
005b4178  2a b6 00 e3                                      movw fp, #0x62a
005b417c  18 70 a0 13                                      movne r7, #0x18
005b4180  0e 70 a0 03                                      moveq r7, #0xe
005b4184  bb e0 84 e1                                      strh lr, [r4, fp]
005b4188  65 be a0 e3                                      mov fp, #0x650
005b418c  bb 90 84 e1                                      strh sb, [r4, fp]
005b4190  64 96 00 e3                                      movw sb, #0x664
005b4194  b9 a0 84 e1                                      strh sl, [r4, sb]
005b4198  78 a6 00 e3                                      movw sl, #0x678
005b419c  ba 80 84 e1                                      strh r8, [r4, sl]
005b41a0  8c 86 00 e3                                      movw r8, #0x68c
005b41a4  b8 70 84 e1                                      strh r7, [r4, r8]
005b41a8  0e 80 a0 e3                                      mov r8, #0xe
005b41ac  28 76 00 e3                                      movw r7, #0x628
005b41b0  b7 80 84 e1                                      strh r8, [r4, r7]
005b41b4  14 a0 a0 e3                                      mov sl, #0x14
005b41b8  3c 76 00 e3                                      movw r7, #0x63c
005b41bc  b7 a0 84 e1                                      strh sl, [r4, r7]
005b41c0  0c e0 a0 e3                                      mov lr, #0xc
005b41c4  3e 76 00 e3                                      movw r7, #0x63e
005b41c8  b7 e0 84 e1                                      strh lr, [r4, r7]
005b41cc  f3 73 08 e3                                      movw r7, #0x83f3
005b41d0  40 76 84 e5                                      str r7, [r4, #0x640]
005b41d4  52 76 00 e3                                      movw r7, #0x652
005b41d8  b7 80 84 e1                                      strh r8, [r4, r7]
005b41dc  7a e6 00 e3                                      movw lr, #0x67a
005b41e0  54 66 84 e5                                      str r6, [r4, #0x654]
005b41e4  66 66 00 e3                                      movw r6, #0x666
005b41e8  00 20 a0 e3                                      mov r2, #0
005b41ec  b6 80 84 e1                                      strh r8, [r4, r6]
005b41f0  19 90 a0 13                                      movne sb, #0x19
005b41f4  0e 90 a0 03                                      moveq sb, #0xe
005b41f8  be 80 84 e1                                      strh r8, [r4, lr]
005b41fc  05 60 a0 e3                                      mov r6, #5
005b4200  8e e6 00 e3                                      movw lr, #0x68e
005b4204  6a be a0 e3                                      mov fp, #0x6a0
005b4208  be 60 84 e1                                      strh r6, [r4, lr]
005b420c  1a a0 a0 13                                      movne sl, #0x1a
005b4210  0e a0 a0 03                                      moveq sl, #0xe
005b4214  2c 26 84 e5                                      str r2, [r4, #0x62c]
005b4218  30 26 84 e5                                      str r2, [r4, #0x630]
005b421c  34 26 84 e5                                      str r2, [r4, #0x634]
005b4220  38 26 84 e5                                      str r2, [r4, #0x638]
005b4224  44 26 84 e5                                      str r2, [r4, #0x644]
005b4228  48 26 84 e5                                      str r2, [r4, #0x648]
005b422c  4c 26 84 e5                                      str r2, [r4, #0x64c]
005b4230  58 26 84 e5                                      str r2, [r4, #0x658]
005b4234  5c 26 84 e5                                      str r2, [r4, #0x65c]
005b4238  60 26 84 e5                                      str r2, [r4, #0x660]
005b423c  6c 26 84 e5                                      str r2, [r4, #0x66c]
005b4240  70 26 84 e5                                      str r2, [r4, #0x670]
005b4244  74 26 84 e5                                      str r2, [r4, #0x674]
005b4248  80 26 84 e5                                      str r2, [r4, #0x680]
005b424c  84 26 84 e5                                      str r2, [r4, #0x684]
005b4250  88 26 84 e5                                      str r2, [r4, #0x688]
005b4254  bc e7 94 e5                                      ldr lr, [r4, #0x7bc]
005b4258  94 26 84 e5                                      str r2, [r4, #0x694]
005b425c  bb 90 84 e1                                      strh sb, [r4, fp]
005b4260  b4 96 00 e3                                      movw sb, #0x6b4
005b4264  b9 a0 84 e1                                      strh sl, [r4, sb]
005b4268  1b 80 a0 13                                      movne r8, #0x1b
005b426c  0e 80 a0 03                                      moveq r8, #0xe
005b4270  c8 a6 00 e3                                      movw sl, #0x6c8
005b4274  03 7c 08 e3                                      movw r7, #0x8c03
005b4278  ba 80 84 e1                                      strh r8, [r4, sl]
005b427c  00 70 a0 01                                      moveq r7, r0
005b4280  a2 86 00 e3                                      movw r8, #0x6a2
005b4284  07 a0 a0 e3                                      mov sl, #7
005b4288  02 6c 08 e3                                      movw r6, #0x8c02
005b428c  b8 a0 84 e1                                      strh sl, [r4, r8]
005b4290  00 60 a0 01                                      moveq r6, r0
005b4294  a4 76 84 e5                                      str r7, [r4, #0x6a4]
005b4298  23 0b a0 13                                      movne r0, #0x8c00
005b429c  b6 76 00 e3                                      movw r7, #0x6b6
005b42a0  05 80 a0 e3                                      mov r8, #5
005b42a4  b7 80 84 e1                                      strh r8, [r4, r7]
005b42a8  02 00 1e e3                                      tst lr, #2
005b42ac  b8 06 84 e5                                      str r0, [r4, #0x6b8]
005b42b0  ca 06 00 e3                                      movw r0, #0x6ca
005b42b4  b0 a0 84 e1                                      strh sl, [r4, r0]
005b42b8  cc 66 84 e5                                      str r6, [r4, #0x6cc]
005b42bc  d8 26 84 e5                                      str r2, [r4, #0x6d8]
005b42c0  98 26 84 e5                                      str r2, [r4, #0x698]
005b42c4  9c 26 84 e5                                      str r2, [r4, #0x69c]
005b42c8  a8 26 84 e5                                      str r2, [r4, #0x6a8]
005b42cc  ac 26 84 e5                                      str r2, [r4, #0x6ac]
005b42d0  b0 26 84 e5                                      str r2, [r4, #0x6b0]
005b42d4  bc 26 84 e5                                      str r2, [r4, #0x6bc]
005b42d8  c0 26 84 e5                                      str r2, [r4, #0x6c0]
005b42dc  c4 26 84 e5                                      str r2, [r4, #0x6c4]
005b42e0  d0 26 84 e5                                      str r2, [r4, #0x6d0]
005b42e4  d4 26 84 e5                                      str r2, [r4, #0x6d4]
005b42e8  04 00 00 0a                                      beq #0x5b4300
005b42ec  01 00 1e e3                                      tst lr, #1
005b42f0  32 02 00 1a                                      bne #0x5b4bc0
005b42f4  d8 27 94 e5                                      ldr r2, [r4, #0x7d8]
005b42f8  02 09 12 e3                                      tst r2, #0x8000
005b42fc  2f 02 00 1a                                      bne #0x5b4bc0
005b4300  01 28 13 e2                                      ands r2, r3, #0x10000
005b4304  1c 70 a0 13                                      movne r7, #0x1c
005b4308  28 02 00 0a                                      beq #0x5b4bb0
005b430c  01 0c 13 e3                                      tst r3, #0x100
005b4310  0a 80 a0 13                                      movne r8, #0xa
005b4314  02 00 00 1a                                      bne #0x5b4324
005b4318  02 06 11 e3                                      tst r1, #0x200000
005b431c  0e 80 a0 13                                      movne r8, #0xe
005b4320  05 80 a0 03                                      moveq r8, #5
005b4324  00 00 52 e3                                      cmp r2, #0
005b4328  dc a6 00 e3                                      movw sl, #0x6dc
005b432c  ba 70 84 e1                                      strh r7, [r4, sl]
005b4330  07 29 01 13                                      movwne r2, #0x1907
005b4334  de 76 00 e3                                      movw r7, #0x6de
005b4338  b7 80 84 e1                                      strh r8, [r4, r7]
005b433c  02 60 a0 01                                      moveq r6, r2
005b4340  02 00 a0 01                                      moveq r0, r2
005b4344  1b 68 08 13                                      movwne r6, #0x881b
005b4348  61 0d 08 13                                      movwne r0, #0x8d61
005b434c  e4 26 84 e5                                      str r2, [r4, #0x6e4]
005b4350  02 00 1e e3                                      tst lr, #2
005b4354  00 20 a0 e3                                      mov r2, #0
005b4358  e0 66 84 e5                                      str r6, [r4, #0x6e0]
005b435c  e8 06 84 e5                                      str r0, [r4, #0x6e8]
005b4360  ec 26 84 e5                                      str r2, [r4, #0x6ec]
005b4364  04 00 00 0a                                      beq #0x5b437c
005b4368  01 00 1e e3                                      tst lr, #1
005b436c  16 02 00 1a                                      bne #0x5b4bcc
005b4370  d8 27 94 e5                                      ldr r2, [r4, #0x7d8]
005b4374  02 09 12 e3                                      tst r2, #0x8000
005b4378  13 02 00 1a                                      bne #0x5b4bcc
005b437c  01 28 13 e2                                      ands r2, r3, #0x10000
005b4380  1d 90 a0 13                                      movne sb, #0x1d
005b4384  05 02 00 0a                                      beq #0x5b4ba0
005b4388  01 0c 13 e3                                      tst r3, #0x100
005b438c  0a 80 a0 13                                      movne r8, #0xa
005b4390  02 00 00 1a                                      bne #0x5b43a0
005b4394  02 06 11 e3                                      tst r1, #0x200000
005b4398  0e 80 a0 13                                      movne r8, #0xe
005b439c  07 80 a0 03                                      moveq r8, #7
005b43a0  00 00 52 e3                                      cmp r2, #0
005b43a4  6f ae a0 e3                                      mov sl, #0x6f0
005b43a8  ba 90 84 e1                                      strh sb, [r4, sl]
005b43ac  08 29 01 13                                      movwne r2, #0x1908
005b43b0  f2 a6 00 e3                                      movw sl, #0x6f2
005b43b4  ba 80 84 e1                                      strh r8, [r4, sl]
005b43b8  02 70 a0 01                                      moveq r7, r2
005b43bc  02 60 a0 01                                      moveq r6, r2
005b43c0  1a 78 08 13                                      movwne r7, #0x881a
005b43c4  61 6d 08 13                                      movwne r6, #0x8d61
005b43c8  f8 26 84 e5                                      str r2, [r4, #0x6f8]
005b43cc  02 00 1e e2                                      ands r0, lr, #2
005b43d0  00 20 a0 e3                                      mov r2, #0
005b43d4  00 27 84 e5                                      str r2, [r4, #0x700]
005b43d8  f4 76 84 e5                                      str r7, [r4, #0x6f4]
005b43dc  fc 66 84 e5                                      str r6, [r4, #0x6fc]
005b43e0  1f 80 a0 13                                      movne r8, #0x1f
005b43e4  02 29 03 12                                      andne r2, r3, #0x8000
005b43e8  02 00 00 1a                                      bne #0x5b43f8
005b43ec  02 29 13 e2                                      ands r2, r3, #0x8000
005b43f0  1f 80 a0 13                                      movne r8, #0x1f
005b43f4  03 02 00 0a                                      beq #0x5b4c08
005b43f8  01 0c 13 e3                                      tst r3, #0x100
005b43fc  0a 70 a0 13                                      movne r7, #0xa
005b4400  02 00 00 1a                                      bne #0x5b4410
005b4404  02 06 11 e3                                      tst r1, #0x200000
005b4408  0e 70 a0 13                                      movne r7, #0xe
005b440c  05 70 a0 03                                      moveq r7, #5
005b4410  00 00 52 e3                                      cmp r2, #0
005b4414  15 68 08 e3                                      movw r6, #0x8815
005b4418  00 60 a0 03                                      moveq r6, #0
005b441c  00 00 50 e3                                      cmp r0, #0
005b4420  52 01 00 1a                                      bne #0x5b4970
005b4424  00 00 52 e3                                      cmp r2, #0
005b4428  02 00 a0 01                                      moveq r0, r2
005b442c  4f 01 00 1a                                      bne #0x5b4970
005b4430  04 a7 00 e3                                      movw sl, #0x704
005b4434  ba 80 84 e1                                      strh r8, [r4, sl]
005b4438  06 87 00 e3                                      movw r8, #0x706
005b443c  b8 70 84 e1                                      strh r7, [r4, r8]
005b4440  02 e0 1e e2                                      ands lr, lr, #2
005b4444  0c 27 84 e5                                      str r2, [r4, #0x70c]
005b4448  00 20 a0 e3                                      mov r2, #0
005b444c  08 67 84 e5                                      str r6, [r4, #0x708]
005b4450  10 07 84 e5                                      str r0, [r4, #0x710]
005b4454  14 27 84 e5                                      str r2, [r4, #0x714]
005b4458  01 00 00 1a                                      bne #0x5b4464
005b445c  02 09 13 e3                                      tst r3, #0x8000
005b4460  e4 01 00 0a                                      beq #0x5b4bf8
005b4464  1f 70 a0 e3                                      mov r7, #0x1f
005b4468  01 0c 13 e3                                      tst r3, #0x100
005b446c  3d 01 00 1a                                      bne #0x5b4968
005b4470  02 06 11 e3                                      tst r1, #0x200000
005b4474  07 60 a0 03                                      moveq r6, #7
005b4478  3a 01 00 1a                                      bne #0x5b4968
005b447c  00 00 5e e3                                      cmp lr, #0
005b4480  34 01 00 1a                                      bne #0x5b4958
005b4484  02 09 13 e3                                      tst r3, #0x8000
005b4488  0e 80 a0 01                                      moveq r8, lr
005b448c  0e 00 a0 01                                      moveq r0, lr
005b4490  30 01 00 1a                                      bne #0x5b4958
005b4494  18 17 00 e3                                      movw r1, #0x718
005b4498  b1 70 84 e1                                      strh r7, [r4, r1]
005b449c  01 25 13 e2                                      ands r2, r3, #0x400000
005b44a0  1a 17 00 e3                                      movw r1, #0x71a
005b44a4  b1 60 84 e1                                      strh r6, [r4, r1]
005b44a8  02 29 01 13                                      movwne r2, #0x1902
005b44ac  1c 87 84 e5                                      str r8, [r4, #0x71c]
005b44b0  00 10 a0 e3                                      mov r1, #0
005b44b4  27 80 a0 03                                      moveq r8, #0x27
005b44b8  20 80 a0 13                                      movne r8, #0x20
005b44bc  2c 77 00 e3                                      movw r7, #0x72c
005b44c0  20 e7 84 e5                                      str lr, [r4, #0x720]
005b44c4  24 07 84 e5                                      str r0, [r4, #0x724]
005b44c8  28 17 84 e5                                      str r1, [r4, #0x728]
005b44cc  02 60 a0 01                                      moveq r6, r2
005b44d0  b7 80 84 e1                                      strh r8, [r4, r7]
005b44d4  02 e0 a0 01                                      moveq lr, r2
005b44d8  02 60 a0 11                                      movne r6, r2
005b44dc  03 e4 01 13                                      movwne lr, #0x1403
005b44e0  2e 77 00 e3                                      movw r7, #0x72e
005b44e4  01 05 13 e3                                      tst r3, #0x400000
005b44e8  20 a0 a0 e3                                      mov sl, #0x20
005b44ec  b7 a0 84 e1                                      strh sl, [r4, r7]
005b44f0  20 00 a0 13                                      movne r0, #0x20
005b44f4  27 00 a0 03                                      moveq r0, #0x27
005b44f8  34 27 84 e5                                      str r2, [r4, #0x734]
005b44fc  04 10 13 e2                                      ands r1, r3, #4
005b4500  a5 21 08 e3                                      movw r2, #0x81a5
005b4504  30 67 84 e5                                      str r6, [r4, #0x730]
005b4508  38 e7 84 e5                                      str lr, [r4, #0x738]
005b450c  3c 27 84 e5                                      str r2, [r4, #0x73c]
005b4510  51 01 00 0a                                      beq #0x5b4a5c
005b4514  1d 1d a0 e3                                      mov r1, #0x740
005b4518  b1 00 84 e1                                      strh r0, [r4, r1]
005b451c  21 e0 a0 e3                                      mov lr, #0x21
005b4520  42 17 00 e3                                      movw r1, #0x742
005b4524  b1 e0 84 e1                                      strh lr, [r4, r1]
005b4528  00 20 a0 e3                                      mov r2, #0
005b452c  a6 11 08 e3                                      movw r1, #0x81a6
005b4530  4c 27 84 e5                                      str r2, [r4, #0x74c]
005b4534  50 17 84 e5                                      str r1, [r4, #0x750]
005b4538  44 27 84 e5                                      str r2, [r4, #0x744]
005b453c  48 27 84 e5                                      str r2, [r4, #0x748]
005b4540  01 25 13 e2                                      ands r2, r3, #0x400000
005b4544  22 70 a0 13                                      movne r7, #0x22
005b4548  27 70 a0 03                                      moveq r7, #0x27
005b454c  08 10 13 e2                                      ands r1, r3, #8
005b4550  22 60 a0 13                                      movne r6, #0x22
005b4554  02 00 00 1a                                      bne #0x5b4564
005b4558  04 00 13 e3                                      tst r3, #4
005b455c  21 60 a0 13                                      movne r6, #0x21
005b4560  20 60 a0 03                                      moveq r6, #0x20
005b4564  00 00 52 e3                                      cmp r2, #0
005b4568  02 29 01 13                                      movwne r2, #0x1902
005b456c  02 e0 a0 01                                      moveq lr, r2
005b4570  02 00 a0 01                                      moveq r0, r2
005b4574  02 e0 a0 11                                      movne lr, r2
005b4578  05 04 01 13                                      movwne r0, #0x1405
005b457c  00 00 51 e3                                      cmp r1, #0
005b4580  5c 01 00 0a                                      beq #0x5b4af8
005b4584  54 17 00 e3                                      movw r1, #0x754
005b4588  b1 70 84 e1                                      strh r7, [r4, r1]
005b458c  56 17 00 e3                                      movw r1, #0x756
005b4590  b1 60 84 e1                                      strh r6, [r4, r1]
005b4594  5c 27 84 e5                                      str r2, [r4, #0x75c]
005b4598  a7 21 08 e3                                      movw r2, #0x81a7
005b459c  58 e7 84 e5                                      str lr, [r4, #0x758]
005b45a0  60 07 84 e5                                      str r0, [r4, #0x760]
005b45a4  64 27 84 e5                                      str r2, [r4, #0x764]
005b45a8  10 00 1c e3                                      tst ip, #0x10
005b45ac  34 01 00 0a                                      beq #0x5b4a84
005b45b0  68 17 00 e3                                      movw r1, #0x768
005b45b4  27 00 a0 e3                                      mov r0, #0x27
005b45b8  b1 00 84 e1                                      strh r0, [r4, r1]
005b45bc  23 60 a0 e3                                      mov r6, #0x23
005b45c0  02 10 81 e2                                      add r1, r1, #2
005b45c4  b1 60 84 e1                                      strh r6, [r4, r1]
005b45c8  00 20 a0 e3                                      mov r2, #0
005b45cc  f0 18 08 e3                                      movw r1, #0x88f0
005b45d0  74 27 84 e5                                      str r2, [r4, #0x774]
005b45d4  78 17 84 e5                                      str r1, [r4, #0x778]
005b45d8  6c 27 84 e5                                      str r2, [r4, #0x76c]
005b45dc  70 27 84 e5                                      str r2, [r4, #0x770]
005b45e0  02 0c 13 e3                                      tst r3, #0x200
005b45e4  f1 00 00 1a                                      bne #0x5b49b0
005b45e8  01 0b 13 e3                                      tst r3, #0x400
005b45ec  25 00 a0 13                                      movne r0, #0x25
005b45f0  7c 01 00 0a                                      beq #0x5b4be8
005b45f4  7e 17 00 e3                                      movw r1, #0x77e
005b45f8  b1 00 84 e1                                      strh r0, [r4, r1]
005b45fc  00 20 a0 e3                                      mov r2, #0
005b4600  7c 17 00 e3                                      movw r1, #0x77c
005b4604  27 70 a0 e3                                      mov r7, #0x27
005b4608  b1 70 84 e1                                      strh r7, [r4, r1]
005b460c  8c 27 84 e5                                      str r2, [r4, #0x78c]
005b4610  80 27 84 e5                                      str r2, [r4, #0x780]
005b4614  84 27 84 e5                                      str r2, [r4, #0x784]
005b4618  88 27 84 e5                                      str r2, [r4, #0x788]
005b461c  01 0b 13 e3                                      tst r3, #0x400
005b4620  d5 00 00 1a                                      bne #0x5b497c
005b4624  02 0b 13 e3                                      tst r3, #0x800
005b4628  26 10 a0 13                                      movne r1, #0x26
005b462c  69 01 00 0a                                      beq #0x5b4bd8
005b4630  92 27 00 e3                                      movw r2, #0x792
005b4634  b2 10 84 e1                                      strh r1, [r4, r2]
005b4638  00 30 a0 e3                                      mov r3, #0
005b463c  79 2e a0 e3                                      mov r2, #0x790
005b4640  27 80 a0 e3                                      mov r8, #0x27
005b4644  b2 80 84 e1                                      strh r8, [r4, r2]
005b4648  a0 37 84 e5                                      str r3, [r4, #0x7a0]
005b464c  94 37 84 e5                                      str r3, [r4, #0x794]
005b4650  98 37 84 e5                                      str r3, [r4, #0x798]
005b4654  9c 37 84 e5                                      str r3, [r4, #0x79c]
005b4658  27 e0 a0 e3                                      mov lr, #0x27
005b465c  a4 27 00 e3                                      movw r2, #0x7a4
005b4660  b2 e0 84 e1                                      strh lr, [r4, r2]
005b4664  26 00 a0 e3                                      mov r0, #0x26
005b4668  a6 27 00 e3                                      movw r2, #0x7a6
005b466c  b2 00 84 e1                                      strh r0, [r4, r2]
005b4670  5c 04 9f e5                                      ldr r0, [pc, #0x45c]
005b4674  00 30 a0 e3                                      mov r3, #0
005b4678  48 2d 08 e3                                      movw r2, #0x8d48
005b467c  b0 37 84 e5                                      str r3, [r4, #0x7b0]
005b4680  a8 37 84 e5                                      str r3, [r4, #0x7a8]
005b4684  ac 37 84 e5                                      str r3, [r4, #0x7ac]
005b4688  b4 27 84 e5                                      str r2, [r4, #0x7b4]
005b468c  01 10 a0 e3                                      mov r1, #1
005b4690  00 00 8f e0                                      add r0, pc, r0
005b4694  81 59 01 eb                                      bl #0x60aca0
005b4698  02 0f 01 e3                                      movw r0, #0x1f02
005b469c  f7 66 f5 eb                                      bl #0x30e280
005b46a0  00 70 a0 e1                                      mov r7, r0
005b46a4  ea 65 f5 eb                                      bl #0x30de54
005b46a8  08 60 84 e2                                      add r6, r4, #8
005b46ac  00 20 87 e0                                      add r2, r7, r0
005b46b0  07 10 a0 e1                                      mov r1, r7
005b46b4  06 00 a0 e1                                      mov r0, r6
005b46b8  32 b1 f5 eb                                      bl #0x320b88
005b46bc  18 30 94 e5                                      ldr r3, [r4, #0x18]
005b46c0  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
005b46c4  01 20 53 e0                                      subs r2, r3, r1
005b46c8  52 01 00 1a                                      bne #0x5b4c18
005b46cc  24 70 8d e2                                      add r7, sp, #0x24
005b46d0  08 10 82 e2                                      add r1, r2, #8
005b46d4  07 00 a0 e1                                      mov r0, r7
005b46d8  34 70 8d e5                                      str r7, [sp, #0x34]
005b46dc  38 70 8d e5                                      str r7, [sp, #0x38]
005b46e0  b0 b0 f5 eb                                      bl #0x3209a8
005b46e4  34 30 9d e5                                      ldr r3, [sp, #0x34]
005b46e8  00 20 a0 e3                                      mov r2, #0
005b46ec  00 20 c3 e5                                      strb r2, [r3]
005b46f0  38 30 9d e5                                      ldr r3, [sp, #0x38]
005b46f4  07 00 53 e1                                      cmp r3, r7
005b46f8  24 20 9d 15                                      ldrne r2, [sp, #0x24]
005b46fc  34 30 9d e5                                      ldr r3, [sp, #0x34]
005b4700  10 20 87 02                                      addeq r2, r7, #0x10
005b4704  02 20 63 e0                                      rsb r2, r3, r2
005b4708  07 00 52 e3                                      cmp r2, #7
005b470c  6c 01 00 9a                                      bls #0x5b4cc4
005b4710  4f 20 a0 e3                                      mov r2, #0x4f
005b4714  00 20 c3 e5                                      strb r2, [r3]
005b4718  b8 13 9f e5                                      ldr r1, [pc, #0x3b8]
005b471c  34 00 9d e5                                      ldr r0, [sp, #0x34]
005b4720  06 20 a0 e3                                      mov r2, #6
005b4724  01 10 8f e0                                      add r1, pc, r1
005b4728  01 00 80 e2                                      add r0, r0, #1
005b472c  01 10 81 e2                                      add r1, r1, #1
005b4730  4c 68 f5 eb                                      bl #0x30e868
005b4734  34 30 9d e5                                      ldr r3, [sp, #0x34]
005b4738  00 20 a0 e3                                      mov r2, #0
005b473c  07 20 c3 e5                                      strb r2, [r3, #7]
005b4740  34 30 9d e5                                      ldr r3, [sp, #0x34]
005b4744  07 30 83 e2                                      add r3, r3, #7
005b4748  34 30 8d e5                                      str r3, [sp, #0x34]
005b474c  07 00 a0 e1                                      mov r0, r7
005b4750  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
005b4754  18 20 94 e5                                      ldr r2, [r4, #0x18]
005b4758  bb b0 f5 eb                                      bl #0x320a4c
005b475c  07 00 56 e1                                      cmp r6, r7
005b4760  03 00 00 0a                                      beq #0x5b4774
005b4764  06 00 a0 e1                                      mov r0, r6
005b4768  38 10 9d e5                                      ldr r1, [sp, #0x38]
005b476c  34 20 9d e5                                      ldr r2, [sp, #0x34]
005b4770  04 b1 f5 eb                                      bl #0x320b88
005b4774  38 00 9d e5                                      ldr r0, [sp, #0x38]
005b4778  07 00 50 e1                                      cmp r0, r7
005b477c  02 00 00 0a                                      beq #0x5b478c
005b4780  00 00 50 e3                                      cmp r0, #0
005b4784  00 00 00 0a                                      beq #0x5b478c
005b4788  30 6f f5 eb                                      bl #0x310450
005b478c  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
005b4790  44 03 9f e5                                      ldr r0, [pc, #0x344]
005b4794  01 20 a0 e3                                      mov r2, #1
005b4798  00 00 8f e0                                      add r0, pc, r0
005b479c  51 59 01 eb                                      bl #0x60ace8
005b47a0  01 0f 01 e3                                      movw r0, #0x1f01
005b47a4  b5 66 f5 eb                                      bl #0x30e280
005b47a8  00 70 a0 e1                                      mov r7, r0
005b47ac  1f 0c a0 e3                                      mov r0, #0x1f00
005b47b0  b2 66 f5 eb                                      bl #0x30e280
005b47b4  00 00 50 e3                                      cmp r0, #0
005b47b8  00 00 57 13                                      cmpne r7, #0
005b47bc  00 60 a0 e1                                      mov r6, r0
005b47c0  2e 01 00 1a                                      bne #0x5b4c80
005b47c4  04 00 a0 e1                                      mov r0, r4
005b47c8  19 ea ff eb                                      bl #0x5af034
005b47cc  70 10 ff e6                                      uxth r1, r0
005b47d0  07 00 51 e3                                      cmp r1, #7
005b47d4  14 30 dd e5                                      ldrb r3, [sp, #0x14]
005b47d8  01 20 a0 91                                      movls r2, r1
005b47dc  08 20 a0 83                                      movhi r2, #8
005b47e0  04 00 a0 e1                                      mov r0, r4
005b47e4  dd d8 ff eb                                      bl #0x5aab60
005b47e8  00 10 a0 e3                                      mov r1, #0
005b47ec  38 00 a0 e3                                      mov r0, #0x38
005b47f0  6d fe fd eb                                      bl #0x5341ac
005b47f4  04 20 9d e5                                      ldr r2, [sp, #4]
005b47f8  04 10 a0 e1                                      mov r1, r4
005b47fc  00 60 a0 e1                                      mov r6, r0
005b4800  f4 f4 ff eb                                      bl #0x5b1bd8
005b4804  00 00 56 e3                                      cmp r6, #0
005b4808  10 60 8d e5                                      str r6, [sp, #0x10]
005b480c  04 30 96 15                                      ldrne r3, [r6, #4]
005b4810  04 00 a0 e1                                      mov r0, r4
005b4814  10 10 8d e2                                      add r1, sp, #0x10
005b4818  01 30 83 12                                      addne r3, r3, #1
005b481c  04 30 86 15                                      strne r3, [r6, #4]
005b4820  00 30 94 e5                                      ldr r3, [r4]
005b4824  0f e0 a0 e1                                      mov lr, pc
005b4828  8c f0 93 e5                                      ldr pc, [r3, #0x8c]
005b482c  05 0d 00 e3                                      movw r0, #0xd05
005b4830  01 10 a0 e3                                      mov r1, #1
005b4834  4c 66 f5 eb                                      bl #0x30e16c
005b4838  04 00 a0 e1                                      mov r0, r4
005b483c  04 10 9d e5                                      ldr r1, [sp, #4]
005b4840  9b f4 ff eb                                      bl #0x5b1ab4
005b4844  00 00 50 e3                                      cmp r0, #0
005b4848  00 40 a0 01                                      moveq r4, r0
005b484c  17 00 00 0a                                      beq #0x5b48b0
005b4850  88 82 9f e5                                      ldr r8, [pc, #0x288]
005b4854  04 70 a0 e1                                      mov r7, r4
005b4858  00 60 a0 e3                                      mov r6, #0
005b485c  08 80 8f e0                                      add r8, pc, r8
005b4860  11 8e 88 e2                                      add r8, r8, #0x110
005b4864  06 00 98 e7                                      ldr r0, [r8, r6]
005b4868  00 00 50 e3                                      cmp r0, #0
005b486c  00 01 00 1a                                      bne #0x5b4c74
005b4870  04 60 86 e2                                      add r6, r6, #4
005b4874  14 00 56 e3                                      cmp r6, #0x14
005b4878  04 70 87 e2                                      add r7, r7, #4
005b487c  f8 ff ff 1a                                      bne #0x5b4864
005b4880  04 00 a0 e1                                      mov r0, r4
005b4884  00 30 94 e5                                      ldr r3, [r4]
005b4888  0f e0 a0 e1                                      mov lr, pc
005b488c  74 f0 93 e5                                      ldr pc, [r3, #0x74]
005b4890  00 30 94 e5                                      ldr r3, [r4]
005b4894  04 00 a0 e1                                      mov r0, r4
005b4898  01 10 a0 e3                                      mov r1, #1
005b489c  0f e0 a0 e1                                      mov lr, pc
005b48a0  a8 f0 93 e5                                      ldr pc, [r3, #0xa8]
005b48a4  04 00 a0 e1                                      mov r0, r4
005b48a8  50 e7 ff eb                                      bl #0x5ae5f0
005b48ac  01 40 a0 e3                                      mov r4, #1
005b48b0  10 00 9d e5                                      ldr r0, [sp, #0x10]
005b48b4  00 00 50 e3                                      cmp r0, #0
005b48b8  00 00 00 0a                                      beq #0x5b48c0
005b48bc  30 a3 f5 eb                                      bl #0x31d584
005b48c0  08 10 9d e5                                      ldr r1, [sp, #8]
005b48c4  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
005b48c8  04 00 a0 e1                                      mov r0, r4
005b48cc  01 30 95 e7                                      ldr r3, [r5, r1]
005b48d0  00 30 93 e5                                      ldr r3, [r3]
005b48d4  03 00 52 e1                                      cmp r2, r3
005b48d8  2f 01 00 1a                                      bne #0x5b4d9c
005b48dc  44 d0 8d e2                                      add sp, sp, #0x44
005b48e0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005b48e4  01 07 11 e3                                      tst r1, #0x40000
005b48e8  0e 70 a0 e3                                      mov r7, #0xe
005b48ec  a4 fd ff 0a                                      beq #0x5b3f84
005b48f0  00 00 52 e3                                      cmp r2, #0
005b48f4  08 89 01 03                                      movweq r8, #0x1908
005b48f8  45 00 00 0a                                      beq #0x5b4a14
005b48fc  08 89 01 e3                                      movw r8, #0x1908
005b4900  a2 fd ff ea                                      b #0x5b3f90
005b4904  0e a0 a0 e3                                      mov sl, #0xe
005b4908  27 fd ff ea                                      b #0x5b3dac
005b490c  0e c0 a0 e3                                      mov ip, #0xe
005b4910  15 fd ff ea                                      b #0x5b3d6c
005b4914  0e 60 a0 e3                                      mov r6, #0xe
005b4918  f9 fc ff ea                                      b #0x5b3d04
005b491c  0e 60 a0 e3                                      mov r6, #0xe
005b4920  e7 fc ff ea                                      b #0x5b3cc4
005b4924  0e 00 a0 e3                                      mov r0, #0xe
005b4928  0c 00 8d e5                                      str r0, [sp, #0xc]
005b492c  fb fd ff ea                                      b #0x5b4120
005b4930  11 70 a0 e3                                      mov r7, #0x11
005b4934  f0 63 08 e3                                      movw r6, #0x83f0
005b4938  d9 fd ff ea                                      b #0x5b40a4
005b493c  0e 70 a0 e3                                      mov r7, #0xe
005b4940  c2 fd ff ea                                      b #0x5b4050
005b4944  12 60 a0 e3                                      mov r6, #0x12
005b4948  f1 e3 08 e3                                      movw lr, #0x83f1
005b494c  e3 fd ff ea                                      b #0x5b40e0
005b4950  0e 70 a0 e3                                      mov r7, #0xe
005b4954  ab fd ff ea                                      b #0x5b4008
005b4958  08 e9 01 e3                                      movw lr, #0x1908
005b495c  14 88 08 e3                                      movw r8, #0x8814
005b4960  06 04 01 e3                                      movw r0, #0x1406
005b4964  ca fe ff ea                                      b #0x5b4494
005b4968  0e 60 a0 e3                                      mov r6, #0xe
005b496c  c2 fe ff ea                                      b #0x5b447c
005b4970  07 29 01 e3                                      movw r2, #0x1907
005b4974  06 04 01 e3                                      movw r0, #0x1406
005b4978  ac fe ff ea                                      b #0x5b4430
005b497c  79 2e a0 e3                                      mov r2, #0x790
005b4980  27 a0 a0 e3                                      mov sl, #0x27
005b4984  b2 a0 84 e1                                      strh sl, [r4, r2]
005b4988  25 c0 a0 e3                                      mov ip, #0x25
005b498c  92 27 00 e3                                      movw r2, #0x792
005b4990  b2 c0 84 e1                                      strh ip, [r4, r2]
005b4994  00 30 a0 e3                                      mov r3, #0
005b4998  47 2d 08 e3                                      movw r2, #0x8d47
005b499c  9c 37 84 e5                                      str r3, [r4, #0x79c]
005b49a0  a0 27 84 e5                                      str r2, [r4, #0x7a0]
005b49a4  94 37 84 e5                                      str r3, [r4, #0x794]
005b49a8  98 37 84 e5                                      str r3, [r4, #0x798]
005b49ac  29 ff ff ea                                      b #0x5b4658
005b49b0  7c 17 00 e3                                      movw r1, #0x77c
005b49b4  27 70 a0 e3                                      mov r7, #0x27
005b49b8  b1 70 84 e1                                      strh r7, [r4, r1]
005b49bc  24 80 a0 e3                                      mov r8, #0x24
005b49c0  7e 17 00 e3                                      movw r1, #0x77e
005b49c4  b1 80 84 e1                                      strh r8, [r4, r1]
005b49c8  00 20 a0 e3                                      mov r2, #0
005b49cc  46 1d 08 e3                                      movw r1, #0x8d46
005b49d0  88 27 84 e5                                      str r2, [r4, #0x788]
005b49d4  8c 17 84 e5                                      str r1, [r4, #0x78c]
005b49d8  80 27 84 e5                                      str r2, [r4, #0x780]
005b49dc  84 27 84 e5                                      str r2, [r4, #0x784]
005b49e0  0d ff ff ea                                      b #0x5b461c
005b49e4  74 25 00 e3                                      movw r2, #0x574
005b49e8  0a 70 a0 e3                                      mov r7, #0xa
005b49ec  b2 70 84 e1                                      strh r7, [r4, r2]
005b49f0  76 25 00 e3                                      movw r2, #0x576
005b49f4  b2 70 84 e1                                      strh r7, [r4, r2]
005b49f8  51 20 08 e3                                      movw r2, #0x8051
005b49fc  7c 05 84 e5                                      str r0, [r4, #0x57c]
005b4a00  80 65 84 e5                                      str r6, [r4, #0x580]
005b4a04  84 25 84 e5                                      str r2, [r4, #0x584]
005b4a08  78 05 84 e5                                      str r0, [r4, #0x578]
005b4a0c  33 fd ff ea                                      b #0x5b3ee0
005b4a10  02 80 a0 e1                                      mov r8, r2
005b4a14  00 20 a0 e3                                      mov r2, #0
005b4a18  02 00 a0 e1                                      mov r0, r2
005b4a1c  5d fd ff ea                                      b #0x5b3f98
005b4a20  02 26 11 e2                                      ands r2, r1, #0x200000
005b4a24  66 fd ff 1a                                      bne #0x5b3fc4
005b4a28  c4 c5 00 e3                                      movw ip, #0x5c4
005b4a2c  0e a0 a0 e3                                      mov sl, #0xe
005b4a30  bc a0 84 e1                                      strh sl, [r4, ip]
005b4a34  07 60 a0 e3                                      mov r6, #7
005b4a38  c6 c5 00 e3                                      movw ip, #0x5c6
005b4a3c  bc 60 84 e1                                      strh r6, [r4, ip]
005b4a40  08 09 01 e3                                      movw r0, #0x1908
005b4a44  01 c4 01 e3                                      movw ip, #0x1401
005b4a48  cc 05 84 e5                                      str r0, [r4, #0x5cc]
005b4a4c  d0 c5 84 e5                                      str ip, [r4, #0x5d0]
005b4a50  d4 25 84 e5                                      str r2, [r4, #0x5d4]
005b4a54  c8 05 84 e5                                      str r0, [r4, #0x5c8]
005b4a58  65 fd ff ea                                      b #0x5b3ff4
005b4a5c  1d 2d a0 e3                                      mov r2, #0x740
005b4a60  b2 00 84 e1                                      strh r0, [r4, r2]
005b4a64  20 60 a0 e3                                      mov r6, #0x20
005b4a68  42 27 00 e3                                      movw r2, #0x742
005b4a6c  b2 60 84 e1                                      strh r6, [r4, r2]
005b4a70  50 17 84 e5                                      str r1, [r4, #0x750]
005b4a74  44 17 84 e5                                      str r1, [r4, #0x744]
005b4a78  48 17 84 e5                                      str r1, [r4, #0x748]
005b4a7c  4c 17 84 e5                                      str r1, [r4, #0x74c]
005b4a80  ae fe ff ea                                      b #0x5b4540
005b4a84  d4 27 94 e5                                      ldr r2, [r4, #0x7d4]
005b4a88  10 00 12 e3                                      tst r2, #0x10
005b4a8c  c7 fe ff 1a                                      bne #0x5b45b0
005b4a90  02 25 13 e2                                      ands r2, r3, #0x800000
005b4a94  c5 fe ff 1a                                      bne #0x5b45b0
005b4a98  68 17 00 e3                                      movw r1, #0x768
005b4a9c  27 70 a0 e3                                      mov r7, #0x27
005b4aa0  b1 70 84 e1                                      strh r7, [r4, r1]
005b4aa4  6a 17 00 e3                                      movw r1, #0x76a
005b4aa8  b1 70 84 e1                                      strh r7, [r4, r1]
005b4aac  78 27 84 e5                                      str r2, [r4, #0x778]
005b4ab0  6c 27 84 e5                                      str r2, [r4, #0x76c]
005b4ab4  70 27 84 e5                                      str r2, [r4, #0x770]
005b4ab8  74 27 84 e5                                      str r2, [r4, #0x774]
005b4abc  c7 fe ff ea                                      b #0x5b45e0
; mapping-symbol data/literal pool
005b4ac0  84 0f 3e 00 ac 40 00 00 dc 1d 00 00 b4 da 35 00  .byte 0x84, 0x0f, 0x3e, 0x00, 0xac, 0x40, 0x00, 0x00, 0xdc, 0x1d, 0x00, 0x00, 0xb4, 0xda, 0x35, 0x00
005b4ad0  40 ca 32 00 d0 bf 32 00 54 bf 32 00 e8 be 32 00  .byte 0x40, 0xca, 0x32, 0x00, 0xd0, 0xbf, 0x32, 0x00, 0x54, 0xbf, 0x32, 0x00, 0xe8, 0xbe, 0x32, 0x00
005b4ae0  d8 b7 32 00 bc ba 32 00 44 ba 32 00 04 ba 32 00  .byte 0xd8, 0xb7, 0x32, 0x00, 0xbc, 0xba, 0x32, 0x00, 0x44, 0xba, 0x32, 0x00, 0x04, 0xba, 0x32, 0x00
005b4af0  00 ba 32 00 6c b9 32 00                          .byte 0x00, 0xba, 0x32, 0x00, 0x6c, 0xb9, 0x32, 0x00
; decoder-mode: arm
005b4af8  54 87 00 e3                                      movw r8, #0x754
005b4afc  b8 70 84 e1                                      strh r7, [r4, r8]
005b4b00  56 77 00 e3                                      movw r7, #0x756
005b4b04  b7 60 84 e1                                      strh r6, [r4, r7]
005b4b08  58 e7 84 e5                                      str lr, [r4, #0x758]
005b4b0c  5c 27 84 e5                                      str r2, [r4, #0x75c]
005b4b10  60 07 84 e5                                      str r0, [r4, #0x760]
005b4b14  64 17 84 e5                                      str r1, [r4, #0x764]
005b4b18  a2 fe ff ea                                      b #0x5b45a8
005b4b1c  d4 07 94 e5                                      ldr r0, [r4, #0x7d4]
005b4b20  80 00 10 e3                                      tst r0, #0x80
005b4b24  57 fc ff 0a                                      beq #0x5b3c88
005b4b28  54 fc ff ea                                      b #0x5b3c80
005b4b2c  01 0a 13 e3                                      tst r3, #0x1000
005b4b30  9c 20 94 05                                      ldreq r2, [r4, #0x9c]
005b4b34  4d fc ff 0a                                      beq #0x5b3c70
005b4b38  4a fc ff ea                                      b #0x5b3c68
005b4b3c  e8 37 94 e5                                      ldr r3, [r4, #0x7e8]
005b4b40  02 08 13 e3                                      tst r3, #0x20000
005b4b44  ec 17 94 15                                      ldrne r1, [r4, #0x7ec]
005b4b48  41 fc ff 1a                                      bne #0x5b3c54
005b4b4c  ec 17 94 e5                                      ldr r1, [r4, #0x7ec]
005b4b50  08 00 11 e3                                      tst r1, #8
005b4b54  40 fc ff 0a                                      beq #0x5b3c5c
005b4b58  3d fc ff ea                                      b #0x5b3c54
005b4b5c  80 00 1f e5                                      ldr r0, [pc, #-0x80]
005b4b60  02 10 a0 e3                                      mov r1, #2
005b4b64  00 00 8f e0                                      add r0, pc, r0
005b4b68  4c 58 01 eb                                      bl #0x60aca0
005b4b6c  03 0f 01 e3                                      movw r0, #0x1f03
005b4b70  c2 65 f5 eb                                      bl #0x30e280
005b4b74  00 10 a0 e1                                      mov r1, r0
005b4b78  04 00 a0 e1                                      mov r0, r4
005b4b7c  ec a2 04 eb                                      bl #0x6dd734
005b4b80  d0 37 94 e5                                      ldr r3, [r4, #0x7d0]
005b4b84  20 00 13 e3                                      tst r3, #0x20
005b4b88  12 fc ff 0a                                      beq #0x5b3bd8
005b4b8c  4a 1e 84 e2                                      add r1, r4, #0x4a0
005b4b90  08 10 81 e2                                      add r1, r1, #8
005b4b94  ff 04 08 e3                                      movw r0, #0x84ff
005b4b98  1c 68 f5 eb                                      bl #0x30ec10
005b4b9c  0d fc ff ea                                      b #0x5b3bd8
005b4ba0  02 09 13 e3                                      tst r3, #0x8000
005b4ba4  1f 90 a0 13                                      movne sb, #0x1f
005b4ba8  0e 90 a0 03                                      moveq sb, #0xe
005b4bac  f5 fd ff ea                                      b #0x5b4388
005b4bb0  02 09 13 e3                                      tst r3, #0x8000
005b4bb4  1e 70 a0 13                                      movne r7, #0x1e
005b4bb8  0e 70 a0 03                                      moveq r7, #0xe
005b4bbc  d2 fd ff ea                                      b #0x5b430c
005b4bc0  1c 70 a0 e3                                      mov r7, #0x1c
005b4bc4  01 28 03 e2                                      and r2, r3, #0x10000
005b4bc8  cf fd ff ea                                      b #0x5b430c
005b4bcc  1d 90 a0 e3                                      mov sb, #0x1d
005b4bd0  01 28 03 e2                                      and r2, r3, #0x10000
005b4bd4  eb fd ff ea                                      b #0x5b4388
005b4bd8  02 0c 13 e3                                      tst r3, #0x200
005b4bdc  24 10 a0 13                                      movne r1, #0x24
005b4be0  27 10 a0 03                                      moveq r1, #0x27
005b4be4  91 fe ff ea                                      b #0x5b4630
005b4be8  02 0b 13 e3                                      tst r3, #0x800
005b4bec  26 00 a0 13                                      movne r0, #0x26
005b4bf0  27 00 a0 03                                      moveq r0, #0x27
005b4bf4  7e fe ff ea                                      b #0x5b45f4
005b4bf8  01 08 13 e3                                      tst r3, #0x10000
005b4bfc  1d 70 a0 13                                      movne r7, #0x1d
005b4c00  0e 70 a0 03                                      moveq r7, #0xe
005b4c04  17 fe ff ea                                      b #0x5b4468
005b4c08  01 08 13 e3                                      tst r3, #0x10000
005b4c0c  1d 80 a0 13                                      movne r8, #0x1d
005b4c10  0e 80 a0 03                                      moveq r8, #0xe
005b4c14  f7 fd ff ea                                      b #0x5b43f8
005b4c18  06 00 52 e3                                      cmp r2, #6
005b4c1c  aa fe ff 9a                                      bls #0x5b46cc
005b4c20  01 00 53 e1                                      cmp r3, r1
005b4c24  03 00 a0 01                                      moveq r0, r3
005b4c28  0b 00 00 0a                                      beq #0x5b4c5c
005b4c2c  4c 91 1f e5                                      ldr sb, [pc, #-0x14c]
005b4c30  01 80 81 e2                                      add r8, r1, #1
005b4c34  09 90 8f e0                                      add sb, pc, sb
005b4c38  07 a0 89 e2                                      add sl, sb, #7
005b4c3c  02 90 89 e2                                      add sb, sb, #2
005b4c40  d1 00 58 e1                                      ldrsb r0, [r8, #-1]
005b4c44  4f 00 50 e3                                      cmp r0, #0x4f
005b4c48  40 00 00 0a                                      beq #0x5b4d50
005b4c4c  03 00 58 e1                                      cmp r8, r3
005b4c50  08 00 a0 e1                                      mov r0, r8
005b4c54  01 80 88 e2                                      add r8, r8, #1
005b4c58  f8 ff ff 1a                                      bne #0x5b4c40
005b4c5c  00 00 53 e1                                      cmp r3, r0
005b4c60  99 fe ff 0a                                      beq #0x5b46cc
005b4c64  00 00 61 e0                                      rsb r0, r1, r0
005b4c68  01 00 70 e3                                      cmn r0, #1
005b4c6c  c7 fe ff 1a                                      bne #0x5b4790
005b4c70  95 fe ff ea                                      b #0x5b46cc
005b4c74  54 12 97 e5                                      ldr r1, [r7, #0x254]
005b4c78  5d 64 f5 eb                                      bl #0x30ddf4
005b4c7c  fb fe ff ea                                      b #0x5b4870
005b4c80  9c 01 1f e5                                      ldr r0, [pc, #-0x19c]
005b4c84  07 10 a0 e1                                      mov r1, r7
005b4c88  01 20 a0 e3                                      mov r2, #1
005b4c8c  00 00 8f e0                                      add r0, pc, r0
005b4c90  14 58 01 eb                                      bl #0x60ace8
005b4c94  ac 01 1f e5                                      ldr r0, [pc, #-0x1ac]
005b4c98  06 10 a0 e1                                      mov r1, r6
005b4c9c  01 20 a0 e3                                      mov r2, #1
005b4ca0  00 00 8f e0                                      add r0, pc, r0
005b4ca4  0f 58 01 eb                                      bl #0x60ace8
005b4ca8  06 00 a0 e1                                      mov r0, r6
005b4cac  68 64 f5 eb                                      bl #0x30de54
005b4cb0  06 10 a0 e1                                      mov r1, r6
005b4cb4  00 20 86 e0                                      add r2, r6, r0
005b4cb8  20 00 84 e2                                      add r0, r4, #0x20
005b4cbc  b1 af f5 eb                                      bl #0x320b88
005b4cc0  bf fe ff ea                                      b #0x5b47c4
005b4cc4  07 10 a0 e3                                      mov r1, #7
005b4cc8  07 00 a0 e1                                      mov r0, r7
005b4ccc  a1 ad f5 eb                                      bl #0x320358
005b4cd0  00 10 a0 e3                                      mov r1, #0
005b4cd4  00 90 a0 e1                                      mov sb, r0
005b4cd8  22 6e f5 eb                                      bl #0x310568
005b4cdc  38 10 9d e5                                      ldr r1, [sp, #0x38]
005b4ce0  34 80 9d e5                                      ldr r8, [sp, #0x34]
005b4ce4  00 a0 a0 e1                                      mov sl, r0
005b4ce8  08 00 51 e1                                      cmp r1, r8
005b4cec  00 00 a0 01                                      moveq r0, r0
005b4cf0  03 00 00 0a                                      beq #0x5b4d04
005b4cf4  08 80 61 e0                                      rsb r8, r1, r8
005b4cf8  08 20 a0 e1                                      mov r2, r8
005b4cfc  d9 66 f5 eb                                      bl #0x30e868
005b4d00  08 00 80 e0                                      add r0, r0, r8
005b4d04  18 12 1f e5                                      ldr r1, [pc, #-0x218]
005b4d08  07 20 a0 e3                                      mov r2, #7
005b4d0c  01 10 8f e0                                      add r1, pc, r1
005b4d10  d4 66 f5 eb                                      bl #0x30e868
005b4d14  00 30 a0 e3                                      mov r3, #0
005b4d18  07 30 c0 e5                                      strb r3, [r0, #7]
005b4d1c  38 30 9d e5                                      ldr r3, [sp, #0x38]
005b4d20  07 80 80 e2                                      add r8, r0, #7
005b4d24  07 00 53 e1                                      cmp r3, r7
005b4d28  03 00 00 0a                                      beq #0x5b4d3c
005b4d2c  00 00 53 e3                                      cmp r3, #0
005b4d30  01 00 00 0a                                      beq #0x5b4d3c
005b4d34  03 00 a0 e1                                      mov r0, r3
005b4d38  c4 6d f5 eb                                      bl #0x310450
005b4d3c  09 90 8a e0                                      add sb, sl, sb
005b4d40  24 90 8d e5                                      str sb, [sp, #0x24]
005b4d44  34 80 8d e5                                      str r8, [sp, #0x34]
005b4d48  38 a0 8d e5                                      str sl, [sp, #0x38]
005b4d4c  7e fe ff ea                                      b #0x5b474c
005b4d50  03 00 58 e1                                      cmp r8, r3
005b4d54  08 00 a0 e1                                      mov r0, r8
005b4d58  bf ff ff 0a                                      beq #0x5b4c5c
005b4d5c  09 c0 a0 e1                                      mov ip, sb
005b4d60  d0 70 d0 e1                                      ldrsb r7, [r0]
005b4d64  d1 e0 5c e1                                      ldrsb lr, [ip, #-1]
005b4d68  0e 00 57 e1                                      cmp r7, lr
005b4d6c  06 00 00 1a                                      bne #0x5b4d8c
005b4d70  0a 00 5c e1                                      cmp ip, sl
005b4d74  06 00 00 0a                                      beq #0x5b4d94
005b4d78  01 00 80 e2                                      add r0, r0, #1
005b4d7c  03 00 50 e1                                      cmp r0, r3
005b4d80  01 c0 8c e2                                      add ip, ip, #1
005b4d84  f5 ff ff 1a                                      bne #0x5b4d60
005b4d88  b3 ff ff ea                                      b #0x5b4c5c
005b4d8c  01 80 88 e2                                      add r8, r8, #1
005b4d90  aa ff ff ea                                      b #0x5b4c40
005b4d94  01 00 48 e2                                      sub r0, r8, #1
005b4d98  af ff ff ea                                      b #0x5b4c5c
005b4d9c  5b 65 f5 eb                                      bl #0x30e310

; FUNCTION 0x005b5390, declared_size=640, range_size=640, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE18createRenderBufferERKNS_4core11dimension2dIiEENS0_14E_PIXEL_FORMATE
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::createRenderBuffer(glitch::core::dimension2d<int> const&, glitch::video::E_PIXEL_FORMAT)
; decoder-mode: arm
005b5390  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005b5394  50 52 9f e5                                      ldr r5, [pc, #0x250]
005b5398  50 72 9f e5                                      ldr r7, [pc, #0x250]
005b539c  00 60 a0 e1                                      mov r6, r0
005b53a0  05 50 8f e0                                      add r5, pc, r5
005b53a4  07 00 95 e7                                      ldr r0, [r5, r7]
005b53a8  00 90 a0 e3                                      mov sb, #0
005b53ac  01 40 a0 e1                                      mov r4, r1
005b53b0  00 10 90 e5                                      ldr r1, [r0]
005b53b4  00 90 86 e5                                      str sb, [r6]
005b53b8  9c 80 94 e5                                      ldr r8, [r4, #0x9c]
005b53bc  94 d0 4d e2                                      sub sp, sp, #0x94
005b53c0  02 a0 a0 e1                                      mov sl, r2
005b53c4  02 2b 18 e2                                      ands r2, r8, #0x800
005b53c8  8c 10 8d e5                                      str r1, [sp, #0x8c]
005b53cc  03 80 a0 e1                                      mov r8, r3
005b53d0  02 80 a0 01                                      moveq r8, r2
005b53d4  40 00 00 0a                                      beq #0x5b54dc
005b53d8  14 30 a0 e3                                      mov r3, #0x14
005b53dc  93 48 23 e0                                      mla r3, r3, r8, r4
005b53e0  4a 3e 83 e2                                      add r3, r3, #0x4a0
005b53e4  08 30 83 e2                                      add r3, r3, #8
005b53e8  b6 b0 d3 e1                                      ldrh fp, [r3, #6]
005b53ec  27 00 5b e3                                      cmp fp, #0x27
005b53f0  4c 00 00 0a                                      beq #0x5b5528
005b53f4  0b 00 58 e1                                      cmp r8, fp
005b53f8  1a 00 00 0a                                      beq #0x5b5468
005b53fc  09 00 a0 e1                                      mov r0, sb
005b5400  4f e1 00 eb                                      bl #0x5ed944
005b5404  78 30 ff e6                                      uxth r3, r8
005b5408  27 00 53 e3                                      cmp r3, #0x27
005b540c  0b b1 90 e7                                      ldr fp, [r0, fp, lsl #2]
005b5410  41 00 00 0a                                      beq #0x5b551c
005b5414  09 00 a0 e1                                      mov r0, sb
005b5418  49 e1 00 eb                                      bl #0x5ed944
005b541c  08 c1 90 e7                                      ldr ip, [r0, r8, lsl #2]
005b5420  cc 21 9f e5                                      ldr r2, [pc, #0x1cc]
005b5424  0c 90 8d e2                                      add sb, sp, #0xc
005b5428  0b 30 a0 e1                                      mov r3, fp
005b542c  02 20 8f e0                                      add r2, pc, r2
005b5430  7f 10 a0 e3                                      mov r1, #0x7f
005b5434  09 00 a0 e1                                      mov r0, sb
005b5438  00 c0 8d e5                                      str ip, [sp]
005b543c  80 63 f5 eb                                      bl #0x30e244
005b5440  b0 01 9f e5                                      ldr r0, [pc, #0x1b0]
005b5444  09 10 a0 e1                                      mov r1, sb
005b5448  03 20 a0 e3                                      mov r2, #3
005b544c  00 00 8f e0                                      add r0, pc, r0
005b5450  24 56 01 eb                                      bl #0x60ace8
005b5454  14 30 a0 e3                                      mov r3, #0x14
005b5458  93 48 28 e0                                      mla r8, r3, r8, r4
005b545c  4a 8e 88 e2                                      add r8, r8, #0x4a0
005b5460  08 80 88 e2                                      add r8, r8, #8
005b5464  b6 80 d8 e1                                      ldrh r8, [r8, #6]
005b5468  00 10 a0 e3                                      mov r1, #0
005b546c  1c 00 a0 e3                                      mov r0, #0x1c
005b5470  4d fb fd eb                                      bl #0x5341ac
005b5474  80 21 9f e5                                      ldr r2, [pc, #0x180]
005b5478  00 10 a0 e3                                      mov r1, #0
005b547c  08 80 80 e5                                      str r8, [r0, #8]
005b5480  02 20 95 e7                                      ldr r2, [r5, r2]
005b5484  04 10 80 e5                                      str r1, [r0, #4]
005b5488  70 31 9f e5                                      ldr r3, [pc, #0x170]
005b548c  08 20 82 e2                                      add r2, r2, #8
005b5490  00 20 80 e5                                      str r2, [r0]
005b5494  00 20 9a e5                                      ldr r2, [sl]
005b5498  03 30 95 e7                                      ldr r3, [r5, r3]
005b549c  00 80 a0 e1                                      mov r8, r0
005b54a0  0c 20 80 e5                                      str r2, [r0, #0xc]
005b54a4  04 20 9a e5                                      ldr r2, [sl, #4]
005b54a8  08 30 83 e2                                      add r3, r3, #8
005b54ac  00 30 80 e5                                      str r3, [r0]
005b54b0  01 30 a0 e3                                      mov r3, #1
005b54b4  10 20 80 e5                                      str r2, [r0, #0x10]
005b54b8  18 10 80 e5                                      str r1, [r0, #0x18]
005b54bc  14 40 80 e5                                      str r4, [r0, #0x14]
005b54c0  04 30 80 e5                                      str r3, [r0, #4]
005b54c4  00 00 96 e5                                      ldr r0, [r6]
005b54c8  00 80 86 e5                                      str r8, [r6]
005b54cc  01 00 50 e1                                      cmp r0, r1
005b54d0  01 00 00 0a                                      beq #0x5b54dc
005b54d4  2a a0 f5 eb                                      bl #0x31d584
005b54d8  00 80 96 e5                                      ldr r8, [r6]
005b54dc  58 a1 94 e5                                      ldr sl, [r4, #0x158]
005b54e0  5c 31 94 e5                                      ldr r3, [r4, #0x15c]
005b54e4  03 00 5a e1                                      cmp sl, r3
005b54e8  1a 00 00 0a                                      beq #0x5b5558
005b54ec  00 80 8a e5                                      str r8, [sl]
005b54f0  58 31 94 e5                                      ldr r3, [r4, #0x158]
005b54f4  04 30 83 e2                                      add r3, r3, #4
005b54f8  58 31 84 e5                                      str r3, [r4, #0x158]
005b54fc  07 30 95 e7                                      ldr r3, [r5, r7]
005b5500  8c 20 9d e5                                      ldr r2, [sp, #0x8c]
005b5504  06 00 a0 e1                                      mov r0, r6
005b5508  00 30 93 e5                                      ldr r3, [r3]
005b550c  03 00 52 e1                                      cmp r2, r3
005b5510  34 00 00 1a                                      bne #0x5b55e8
005b5514  94 d0 8d e2                                      add sp, sp, #0x94
005b5518  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005b551c  e0 c0 9f e5                                      ldr ip, [pc, #0xe0]
005b5520  0c c0 8f e0                                      add ip, pc, ip
005b5524  bd ff ff ea                                      b #0x5b5420
005b5528  78 30 ff e6                                      uxth r3, r8
005b552c  27 00 53 e3                                      cmp r3, #0x27
005b5530  25 00 00 0a                                      beq #0x5b55cc
005b5534  09 00 a0 e1                                      mov r0, sb
005b5538  01 e1 00 eb                                      bl #0x5ed944
005b553c  08 11 90 e7                                      ldr r1, [r0, r8, lsl #2]
005b5540  c0 00 9f e5                                      ldr r0, [pc, #0xc0]
005b5544  03 20 a0 e3                                      mov r2, #3
005b5548  00 00 8f e0                                      add r0, pc, r0
005b554c  e5 55 01 eb                                      bl #0x60ace8
005b5550  00 80 96 e5                                      ldr r8, [r6]
005b5554  e0 ff ff ea                                      b #0x5b54dc
005b5558  54 31 94 e5                                      ldr r3, [r4, #0x154]
005b555c  0a 30 63 e0                                      rsb r3, r3, sl
005b5560  43 31 a0 e1                                      asr r3, r3, #2
005b5564  01 00 53 e3                                      cmp r3, #1
005b5568  03 b0 83 20                                      addhs fp, r3, r3
005b556c  01 b0 83 32                                      addlo fp, r3, #1
005b5570  07 01 7b e3                                      cmn fp, #0xc0000001
005b5574  12 00 00 8a                                      bhi #0x5b55c4
005b5578  0b 00 53 e1                                      cmp r3, fp
005b557c  0b b1 a0 91                                      lslls fp, fp, #2
005b5580  0f 00 00 8a                                      bhi #0x5b55c4
005b5584  00 10 a0 e3                                      mov r1, #0
005b5588  0b 00 a0 e1                                      mov r0, fp
005b558c  f5 6b f5 eb                                      bl #0x310568
005b5590  54 11 94 e5                                      ldr r1, [r4, #0x154]
005b5594  00 90 a0 e1                                      mov sb, r0
005b5598  01 a0 5a e0                                      subs sl, sl, r1
005b559c  00 a0 a0 01                                      moveq sl, r0
005b55a0  0c 00 00 1a                                      bne #0x5b55d8
005b55a4  04 80 8a e4                                      str r8, [sl], #4
005b55a8  54 01 94 e5                                      ldr r0, [r4, #0x154]
005b55ac  0b b0 89 e0                                      add fp, sb, fp
005b55b0  a6 6b f5 eb                                      bl #0x310450
005b55b4  5c b1 84 e5                                      str fp, [r4, #0x15c]
005b55b8  58 a1 84 e5                                      str sl, [r4, #0x158]
005b55bc  54 91 84 e5                                      str sb, [r4, #0x154]
005b55c0  cd ff ff ea                                      b #0x5b54fc
005b55c4  03 b0 e0 e3                                      mvn fp, #3
005b55c8  ed ff ff ea                                      b #0x5b5584
005b55cc  38 10 9f e5                                      ldr r1, [pc, #0x38]
005b55d0  01 10 8f e0                                      add r1, pc, r1
005b55d4  d9 ff ff ea                                      b #0x5b5540
005b55d8  0a 20 a0 e1                                      mov r2, sl
005b55dc  55 62 f5 eb                                      bl #0x30df38
005b55e0  0a a0 80 e0                                      add sl, r0, sl
005b55e4  ee ff ff ea                                      b #0x5b55a4
005b55e8  48 63 f5 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
005b55ec  f0 f6 3d 00 ac 40 00 00 ac b2 32 00 64 b2 32 00  .byte 0xf0, 0xf6, 0x3d, 0x00, 0xac, 0x40, 0x00, 0x00, 0xac, 0xb2, 0x32, 0x00, 0x64, 0xb2, 0x32, 0x00
005b55fc  bc 41 00 00 08 2b 00 00 40 0f 31 00 68 b1 32 00  .byte 0xbc, 0x41, 0x00, 0x00, 0x08, 0x2b, 0x00, 0x00, 0x40, 0x0f, 0x31, 0x00, 0x68, 0xb1, 0x32, 0x00
005b560c  90 0e 31 00                                      .byte 0x90, 0x0e, 0x31, 0x00

; FUNCTION 0x005b5be4, declared_size=92, range_size=92, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE17registerBufferMapEjjjjPKv
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::registerBufferMap(unsigned int, unsigned int, unsigned int, unsigned int, void const*)
; decoder-mode: arm
005b5be4  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
005b5be8  24 d0 4d e2                                      sub sp, sp, #0x24
005b5bec  40 40 9d e5                                      ldr r4, [sp, #0x40]
005b5bf0  00 60 a0 e1                                      mov r6, r0
005b5bf4  01 50 a0 e1                                      mov r5, r1
005b5bf8  04 00 a0 e1                                      mov r0, r4
005b5bfc  03 80 a0 e1                                      mov r8, r3
005b5c00  02 70 a0 e1                                      mov r7, r2
005b5c04  ba 62 f5 eb                                      bl #0x30e6f4
005b5c08  44 10 9d e5                                      ldr r1, [sp, #0x44]
005b5c0c  04 20 a0 e1                                      mov r2, r4
005b5c10  00 a0 a0 e1                                      mov sl, r0
005b5c14  13 63 f5 eb                                      bl #0x30e868
005b5c18  02 1b 86 e2                                      add r1, r6, #0x800
005b5c1c  18 00 8d e2                                      add r0, sp, #0x18
005b5c20  0d 20 a0 e1                                      mov r2, sp
005b5c24  14 a0 8d e5                                      str sl, [sp, #0x14]
005b5c28  10 40 8d e5                                      str r4, [sp, #0x10]
005b5c2c  a0 01 8d e9                                      stmib sp, {r5, r7, r8}
005b5c30  00 50 8d e5                                      str r5, [sp]
005b5c34  8a ff ff eb                                      bl #0x5b5a64
005b5c38  24 d0 8d e2                                      add sp, sp, #0x24
005b5c3c  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}

; FUNCTION 0x005b5f6c, declared_size=1032, range_size=1032, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE17createTextureImplEPKcRKNS0_12STextureDescE
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::createTextureImpl(char const*, glitch::video::STextureDesc const&)
; decoder-mode: arm
005b5f6c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005b5f70  3c d0 4d e2                                      sub sp, sp, #0x3c
005b5f74  18 a0 8d e2                                      add sl, sp, #0x18
005b5f78  03 40 a0 e1                                      mov r4, r3
005b5f7c  0a c0 a0 e1                                      mov ip, sl
005b5f80  03 e0 a0 e1                                      mov lr, r3
005b5f84  00 50 a0 e1                                      mov r5, r0
005b5f88  01 60 a0 e1                                      mov r6, r1
005b5f8c  02 80 a0 e1                                      mov r8, r2
005b5f90  0f 00 b4 e8                                      ldm r4!, {r0, r1, r2, r3}
005b5f94  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
005b5f98  0f 00 94 e8                                      ldm r4, {r0, r1, r2, r3}
005b5f9c  07 00 ac e8                                      stm ip!, {r0, r1, r2}
005b5fa0  28 70 9d e5                                      ldr r7, [sp, #0x28]
005b5fa4  80 43 9f e5                                      ldr r4, [pc, #0x380]
005b5fa8  b2 30 cc e0                                      strh r3, [ip], #2
005b5fac  01 20 47 e2                                      sub r2, r7, #1
005b5fb0  07 00 12 e1                                      tst r2, r7
005b5fb4  23 38 a0 e1                                      lsr r3, r3, #0x10
005b5fb8  00 30 cc e5                                      strb r3, [ip]
005b5fbc  04 40 8f e0                                      add r4, pc, r4
005b5fc0  03 00 00 1a                                      bne #0x5b5fd4
005b5fc4  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
005b5fc8  01 20 43 e2                                      sub r2, r3, #1
005b5fcc  03 00 12 e1                                      tst r2, r3
005b5fd0  7b 00 00 0a                                      beq #0x5b61c4
005b5fd4  00 90 a0 e3                                      mov sb, #0
005b5fd8  ec 37 96 e5                                      ldr r3, [r6, #0x7ec]
005b5fdc  08 00 13 e3                                      tst r3, #8
005b5fe0  1a 00 00 0a                                      beq #0x5b6050
005b5fe4  18 b0 9d e5                                      ldr fp, [sp, #0x18]
005b5fe8  00 00 5b e3                                      cmp fp, #0
005b5fec  17 00 00 0a                                      beq #0x5b6050
005b5ff0  03 00 5b e3                                      cmp fp, #3
005b5ff4  15 00 00 0a                                      beq #0x5b6050
005b5ff8  00 00 59 e3                                      cmp sb, #0
005b5ffc  13 00 00 1a                                      bne #0x5b6050
005b6000  7b 30 ff e6                                      uxth r3, fp
005b6004  ff 00 53 e3                                      cmp r3, #0xff
005b6008  b2 00 00 0a                                      beq #0x5b62d8
005b600c  09 00 a0 e1                                      mov r0, sb
005b6010  94 1e 01 eb                                      bl #0x5fda68
005b6014  28 70 9d e5                                      ldr r7, [sp, #0x28]
005b6018  0b 31 90 e7                                      ldr r3, [r0, fp, lsl #2]
005b601c  2c c0 9d e5                                      ldr ip, [sp, #0x2c]
005b6020  08 13 9f e5                                      ldr r1, [pc, #0x308]
005b6024  08 20 a0 e1                                      mov r2, r8
005b6028  04 c0 8d e5                                      str ip, [sp, #4]
005b602c  30 c0 9d e5                                      ldr ip, [sp, #0x30]
005b6030  01 10 8f e0                                      add r1, pc, r1
005b6034  03 00 a0 e3                                      mov r0, #3
005b6038  00 70 8d e5                                      str r7, [sp]
005b603c  08 c0 8d e5                                      str ip, [sp, #8]
005b6040  fb 53 01 eb                                      bl #0x60b034
005b6044  00 30 a0 e3                                      mov r3, #0
005b6048  00 30 85 e5                                      str r3, [r5]
005b604c  46 00 00 ea                                      b #0x5b616c
005b6050  1c 70 9d e5                                      ldr r7, [sp, #0x1c]
005b6054  d8 22 9f e5                                      ldr r2, [pc, #0x2d8]
005b6058  28 30 a0 e3                                      mov r3, #0x28
005b605c  93 07 03 e0                                      mul r3, r3, r7
005b6060  02 20 94 e7                                      ldr r2, [r4, r2]
005b6064  03 30 92 e7                                      ldr r3, [r2, r3]
005b6068  30 00 13 e3                                      tst r3, #0x30
005b606c  41 00 00 1a                                      bne #0x5b6178
005b6070  35 20 dd e5                                      ldrb r2, [sp, #0x35]
005b6074  00 00 52 e3                                      cmp r2, #0
005b6078  6f 00 00 0a                                      beq #0x5b623c
005b607c  14 30 a0 e3                                      mov r3, #0x14
005b6080  93 67 27 e0                                      mla r7, r3, r7, r6
005b6084  4a 7e 87 e2                                      add r7, r7, #0x4a0
005b6088  08 70 87 e2                                      add r7, r7, #8
005b608c  b6 b0 d7 e1                                      ldrh fp, [r7, #6]
005b6090  04 70 9e e5                                      ldr r7, [lr, #4]
005b6094  1c b0 8d e5                                      str fp, [sp, #0x1c]
005b6098  07 00 5b e1                                      cmp fp, r7
005b609c  1b 00 00 0a                                      beq #0x5b6110
005b60a0  27 00 5b e3                                      cmp fp, #0x27
005b60a4  50 00 00 0a                                      beq #0x5b61ec
005b60a8  77 30 ff e6                                      uxth r3, r7
005b60ac  27 00 53 e3                                      cmp r3, #0x27
005b60b0  75 00 00 0a                                      beq #0x5b628c
005b60b4  00 00 a0 e3                                      mov r0, #0
005b60b8  21 de 00 eb                                      bl #0x5ed944
005b60bc  35 20 dd e5                                      ldrb r2, [sp, #0x35]
005b60c0  07 31 90 e7                                      ldr r3, [r0, r7, lsl #2]
005b60c4  1c b0 9d e5                                      ldr fp, [sp, #0x1c]
005b60c8  00 00 52 e3                                      cmp r2, #0
005b60cc  60 00 00 1a                                      bne #0x5b6254
005b60d0  60 72 9f e5                                      ldr r7, [pc, #0x260]
005b60d4  07 70 8f e0                                      add r7, pc, r7
005b60d8  7b 20 ff e6                                      uxth r2, fp
005b60dc  27 00 52 e3                                      cmp r2, #0x27
005b60e0  6c 00 00 0a                                      beq #0x5b6298
005b60e4  00 00 a0 e3                                      mov r0, #0
005b60e8  14 30 8d e5                                      str r3, [sp, #0x14]
005b60ec  14 de 00 eb                                      bl #0x5ed944
005b60f0  14 30 9d e5                                      ldr r3, [sp, #0x14]
005b60f4  0b c1 90 e7                                      ldr ip, [r0, fp, lsl #2]
005b60f8  3c 12 9f e5                                      ldr r1, [pc, #0x23c]
005b60fc  02 00 a0 e3                                      mov r0, #2
005b6100  08 20 a0 e1                                      mov r2, r8
005b6104  01 10 8f e0                                      add r1, pc, r1
005b6108  80 10 8d e8                                      stm sp, {r7, ip}
005b610c  c8 53 01 eb                                      bl #0x60b034
005b6110  20 70 9d e5                                      ldr r7, [sp, #0x20]
005b6114  02 00 57 e3                                      cmp r7, #2
005b6118  50 00 00 0a                                      beq #0x5b6260
005b611c  03 00 57 e3                                      cmp r7, #3
005b6120  3f 00 00 0a                                      beq #0x5b6224
005b6124  00 00 57 e3                                      cmp r7, #0
005b6128  5d 00 00 1a                                      bne #0x5b62a4
005b612c  00 10 a0 e3                                      mov r1, #0
005b6130  5c 00 a0 e3                                      mov r0, #0x5c
005b6134  1c f8 fd eb                                      bl #0x5341ac
005b6138  0a 30 a0 e1                                      mov r3, sl
005b613c  08 10 a0 e1                                      mov r1, r8
005b6140  06 20 a0 e1                                      mov r2, r6
005b6144  00 70 a0 e1                                      mov r7, r0
005b6148  62 9f 04 eb                                      bl #0x6dded8
005b614c  ec 31 9f e5                                      ldr r3, [pc, #0x1ec]
005b6150  03 30 94 e7                                      ldr r3, [r4, r3]
005b6154  08 30 83 e2                                      add r3, r3, #8
005b6158  00 30 87 e5                                      str r3, [r7]
005b615c  00 70 85 e5                                      str r7, [r5]
005b6160  04 30 97 e5                                      ldr r3, [r7, #4]
005b6164  01 30 83 e2                                      add r3, r3, #1
005b6168  04 30 87 e5                                      str r3, [r7, #4]
005b616c  05 00 a0 e1                                      mov r0, r5
005b6170  3c d0 8d e2                                      add sp, sp, #0x3c
005b6174  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005b6178  18 30 9d e5                                      ldr r3, [sp, #0x18]
005b617c  00 00 53 e3                                      cmp r3, #0
005b6180  ba ff ff 0a                                      beq #0x5b6070
005b6184  02 00 53 e3                                      cmp r3, #2
005b6188  b8 ff ff 0a                                      beq #0x5b6070
005b618c  77 30 ff e6                                      uxth r3, r7
005b6190  27 00 53 e3                                      cmp r3, #0x27
005b6194  61 00 00 0a                                      beq #0x5b6320
005b6198  00 00 a0 e3                                      mov r0, #0
005b619c  e8 dd 00 eb                                      bl #0x5ed944
005b61a0  07 31 90 e7                                      ldr r3, [r0, r7, lsl #2]
005b61a4  98 11 9f e5                                      ldr r1, [pc, #0x198]
005b61a8  08 20 a0 e1                                      mov r2, r8
005b61ac  03 00 a0 e3                                      mov r0, #3
005b61b0  01 10 8f e0                                      add r1, pc, r1
005b61b4  9e 53 01 eb                                      bl #0x60b034
005b61b8  00 30 a0 e3                                      mov r3, #0
005b61bc  00 30 85 e5                                      str r3, [r5]
005b61c0  e9 ff ff ea                                      b #0x5b616c
005b61c4  18 30 9d e5                                      ldr r3, [sp, #0x18]
005b61c8  01 00 53 e3                                      cmp r3, #1
005b61cc  01 90 a0 13                                      movne sb, #1
005b61d0  80 ff ff 1a                                      bne #0x5b5fd8
005b61d4  30 30 9d e5                                      ldr r3, [sp, #0x30]
005b61d8  01 20 43 e2                                      sub r2, r3, #1
005b61dc  03 00 12 e1                                      tst r2, r3
005b61e0  00 90 a0 13                                      movne sb, #0
005b61e4  01 90 a0 03                                      moveq sb, #1
005b61e8  7a ff ff ea                                      b #0x5b5fd8
005b61ec  77 30 ff e6                                      uxth r3, r7
005b61f0  27 00 53 e3                                      cmp r3, #0x27
005b61f4  3a 00 00 0a                                      beq #0x5b62e4
005b61f8  00 00 a0 e3                                      mov r0, #0
005b61fc  d0 dd 00 eb                                      bl #0x5ed944
005b6200  07 31 90 e7                                      ldr r3, [r0, r7, lsl #2]
005b6204  3c 11 9f e5                                      ldr r1, [pc, #0x13c]
005b6208  08 20 a0 e1                                      mov r2, r8
005b620c  03 00 a0 e3                                      mov r0, #3
005b6210  01 10 8f e0                                      add r1, pc, r1
005b6214  86 53 01 eb                                      bl #0x60b034
005b6218  00 30 a0 e3                                      mov r3, #0
005b621c  00 30 85 e5                                      str r3, [r5]
005b6220  d1 ff ff ea                                      b #0x5b616c
005b6224  00 00 59 e3                                      cmp sb, #0
005b6228  30 00 00 0a                                      beq #0x5b62f0
005b622c  00 00 a0 e3                                      mov r0, #0
005b6230  10 1e 01 eb                                      bl #0x5fda78
005b6234  07 31 90 e7                                      ldr r3, [r0, r7, lsl #2]
005b6238  1e 00 00 ea                                      b #0x5b62b8
005b623c  14 30 a0 e3                                      mov r3, #0x14
005b6240  93 67 27 e0                                      mla r7, r3, r7, r6
005b6244  4a 7e 87 e2                                      add r7, r7, #0x4a0
005b6248  08 70 87 e2                                      add r7, r7, #8
005b624c  b4 b0 d7 e1                                      ldrh fp, [r7, #4]
005b6250  8e ff ff ea                                      b #0x5b6090
005b6254  f0 70 9f e5                                      ldr r7, [pc, #0xf0]
005b6258  07 70 8f e0                                      add r7, pc, r7
005b625c  9d ff ff ea                                      b #0x5b60d8
005b6260  00 00 a0 e3                                      mov r0, #0
005b6264  03 1e 01 eb                                      bl #0x5fda78
005b6268  e0 10 9f e5                                      ldr r1, [pc, #0xe0]
005b626c  08 30 90 e5                                      ldr r3, [r0, #8]
005b6270  08 20 a0 e1                                      mov r2, r8
005b6274  01 10 8f e0                                      add r1, pc, r1
005b6278  03 00 a0 e3                                      mov r0, #3
005b627c  6c 53 01 eb                                      bl #0x60b034
005b6280  00 30 a0 e3                                      mov r3, #0
005b6284  00 30 85 e5                                      str r3, [r5]
005b6288  b7 ff ff ea                                      b #0x5b616c
005b628c  c0 30 9f e5                                      ldr r3, [pc, #0xc0]
005b6290  03 30 8f e0                                      add r3, pc, r3
005b6294  8b ff ff ea                                      b #0x5b60c8
005b6298  b8 c0 9f e5                                      ldr ip, [pc, #0xb8]
005b629c  0c c0 8f e0                                      add ip, pc, ip
005b62a0  94 ff ff ea                                      b #0x5b60f8
005b62a4  77 30 ff e6                                      uxth r3, r7
005b62a8  ff 00 53 e3                                      cmp r3, #0xff
005b62ac  de ff ff 1a                                      bne #0x5b622c
005b62b0  a4 30 9f e5                                      ldr r3, [pc, #0xa4]
005b62b4  03 30 8f e0                                      add r3, pc, r3
005b62b8  a0 10 9f e5                                      ldr r1, [pc, #0xa0]
005b62bc  02 00 a0 e3                                      mov r0, #2
005b62c0  08 20 a0 e1                                      mov r2, r8
005b62c4  01 10 8f e0                                      add r1, pc, r1
005b62c8  59 53 01 eb                                      bl #0x60b034
005b62cc  00 30 a0 e3                                      mov r3, #0
005b62d0  20 30 8d e5                                      str r3, [sp, #0x20]
005b62d4  94 ff ff ea                                      b #0x5b612c
005b62d8  84 30 9f e5                                      ldr r3, [pc, #0x84]
005b62dc  03 30 8f e0                                      add r3, pc, r3
005b62e0  4d ff ff ea                                      b #0x5b601c
005b62e4  7c 30 9f e5                                      ldr r3, [pc, #0x7c]
005b62e8  03 30 8f e0                                      add r3, pc, r3
005b62ec  c4 ff ff ea                                      b #0x5b6204
005b62f0  2c c0 9d e5                                      ldr ip, [sp, #0x2c]
005b62f4  70 10 9f e5                                      ldr r1, [pc, #0x70]
005b62f8  07 00 a0 e1                                      mov r0, r7
005b62fc  00 c0 8d e5                                      str ip, [sp]
005b6300  30 c0 9d e5                                      ldr ip, [sp, #0x30]
005b6304  01 10 8f e0                                      add r1, pc, r1
005b6308  08 20 a0 e1                                      mov r2, r8
005b630c  28 30 9d e5                                      ldr r3, [sp, #0x28]
005b6310  04 c0 8d e5                                      str ip, [sp, #4]
005b6314  46 53 01 eb                                      bl #0x60b034
005b6318  00 90 85 e5                                      str sb, [r5]
005b631c  92 ff ff ea                                      b #0x5b616c
005b6320  48 30 9f e5                                      ldr r3, [pc, #0x48]
005b6324  03 30 8f e0                                      add r3, pc, r3
005b6328  9d ff ff ea                                      b #0x5b61a4
; mapping-symbol data/literal pool
005b632c  d4 ea 3d 00 c0 a6 32 00 34 1f 00 00 44 6c 33 00  .byte 0xd4, 0xea, 0x3d, 0x00, 0xc0, 0xa6, 0x32, 0x00, 0x34, 0x1f, 0x00, 0x00, 0x44, 0x6c, 0x33, 0x00
005b633c  a4 a6 32 00 68 09 00 00 78 a5 32 00 58 a5 32 00  .byte 0xa4, 0xa6, 0x32, 0x00, 0x68, 0x09, 0x00, 0x00, 0x78, 0xa5, 0x32, 0x00, 0x58, 0xa5, 0x32, 0x00
005b634c  40 a5 32 00 7c a5 32 00 d0 01 31 00 c4 01 31 00  .byte 0x40, 0xa5, 0x32, 0x00, 0x7c, 0xa5, 0x32, 0x00, 0xd0, 0x01, 0x31, 0x00, 0xc4, 0x01, 0x31, 0x00
005b635c  ac 01 31 00 a4 a5 32 00 84 01 31 00 78 01 31 00  .byte 0xac, 0x01, 0x31, 0x00, 0xa4, 0xa5, 0x32, 0x00, 0x84, 0x01, 0x31, 0x00, 0x78, 0x01, 0x31, 0x00
005b636c  14 a5 32 00 3c 01 31 00                          .byte 0x14, 0xa5, 0x32, 0x00, 0x3c, 0x01, 0x31, 0x00

; FUNCTION 0x005b64c0, declared_size=84, range_size=84, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE13updateBindingEPNS0_7IBufferE
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::updateBinding(glitch::video::IBuffer*)
; decoder-mode: arm
005b64c0  10 40 2d e9                                      push {r4, lr}
005b64c4  00 40 51 e2                                      subs r4, r1, #0
005b64c8  0b 00 00 0a                                      beq #0x5b64fc
005b64cc  12 10 d4 e5                                      ldrb r1, [r4, #0x12]
005b64d0  02 00 11 e3                                      tst r1, #2
005b64d4  08 00 00 0a                                      beq #0x5b64fc
005b64d8  08 10 11 e2                                      ands r1, r1, #8
005b64dc  08 00 00 1a                                      bne #0x5b6504
005b64e0  11 30 d4 e5                                      ldrb r3, [r4, #0x11]
005b64e4  04 00 53 e3                                      cmp r3, #4
005b64e8  03 00 00 0a                                      beq #0x5b64fc
005b64ec  00 30 94 e5                                      ldr r3, [r4]
005b64f0  04 00 a0 e1                                      mov r0, r4
005b64f4  0f e0 a0 e1                                      mov lr, pc
005b64f8  0c f0 93 e5                                      ldr pc, [r3, #0xc]
005b64fc  04 00 a0 e1                                      mov r0, r4
005b6500  10 80 bd e8                                      pop {r4, pc}
005b6504  04 00 a0 e1                                      mov r0, r4
005b6508  99 ff ff eb                                      bl #0x5b6374
005b650c  04 00 a0 e1                                      mov r0, r4
005b6510  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005b6514, declared_size=112, range_size=112, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE9setBufferEPNS0_7IBufferE
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::setBuffer(glitch::video::IBuffer*)
; decoder-mode: arm
005b6514  70 40 2d e9                                      push {r4, r5, r6, lr}
005b6518  00 50 a0 e1                                      mov r5, r0
005b651c  e7 ff ff eb                                      bl #0x5b64c0
005b6520  00 00 50 e3                                      cmp r0, #0
005b6524  00 60 a0 01                                      moveq r6, r0
005b6528  12 00 00 0a                                      beq #0x5b6578
005b652c  11 30 d0 e5                                      ldrb r3, [r0, #0x11]
005b6530  04 00 53 e3                                      cmp r3, #4
005b6534  10 30 d0 e5                                      ldrb r3, [r0, #0x10]
005b6538  18 40 90 15                                      ldrne r4, [r0, #0x18]
005b653c  00 40 a0 03                                      moveq r4, #0
005b6540  94 20 83 e2                                      add r2, r3, #0x94
005b6544  02 51 85 e0                                      add r5, r5, r2, lsl #2
005b6548  04 20 95 e5                                      ldr r2, [r5, #4]
005b654c  00 60 a0 13                                      movne r6, #0
005b6550  08 60 90 05                                      ldreq r6, [r0, #8]
005b6554  02 00 54 e1                                      cmp r4, r2
005b6558  06 00 00 0a                                      beq #0x5b6578
005b655c  1c 20 9f e5                                      ldr r2, [pc, #0x1c]
005b6560  04 10 a0 e1                                      mov r1, r4
005b6564  02 20 8f e0                                      add r2, pc, r2
005b6568  11 2e 82 e2                                      add r2, r2, #0x110
005b656c  03 01 92 e7                                      ldr r0, [r2, r3, lsl #2]
005b6570  1f 5e f5 eb                                      bl #0x30ddf4
005b6574  04 40 85 e5                                      str r4, [r5, #4]
005b6578  06 00 a0 e1                                      mov r0, r6
005b657c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005b6580  d0 9a 32 00                                      .byte 0xd0, 0x9a, 0x32, 0x00

; FUNCTION 0x005b69c0, declared_size=780, range_size=780, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE18restoreRenderStateEv
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::restoreRenderState()
; decoder-mode: arm
005b69c0  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
005b69c4  c4 31 d0 e5                                      ldrb r3, [r0, #0x1c4]
005b69c8  24 d0 4d e2                                      sub sp, sp, #0x24
005b69cc  00 40 a0 e1                                      mov r4, r0
005b69d0  00 00 53 e3                                      cmp r3, #0
005b69d4  93 00 00 1a                                      bne #0x5b6c28
005b69d8  e2 0b 00 e3                                      movw r0, #0xbe2
005b69dc  61 5d f5 eb                                      bl #0x30df68
005b69e0  9c 30 94 e5                                      ldr r3, [r4, #0x9c]
005b69e4  01 07 13 e3                                      tst r3, #0x40000
005b69e8  93 00 00 1a                                      bne #0x5b6c3c
005b69ec  00 22 94 e5                                      ldr r2, [r4, #0x200]
005b69f0  c0 32 9f e5                                      ldr r3, [pc, #0x2c0]
005b69f4  52 14 e7 e7                                      ubfx r1, r2, #8, #8
005b69f8  03 30 8f e0                                      add r3, pc, r3
005b69fc  72 20 ef e6                                      uxtb r2, r2
005b6a00  02 01 93 e7                                      ldr r0, [r3, r2, lsl #2]
005b6a04  01 11 93 e7                                      ldr r1, [r3, r1, lsl #2]
005b6a08  82 5e f5 eb                                      bl #0x30e418
005b6a0c  ee 21 d4 e5                                      ldrb r2, [r4, #0x1ee]
005b6a10  ef 31 d4 e5                                      ldrb r3, [r4, #0x1ef]
005b6a14  ed 11 d4 e5                                      ldrb r1, [r4, #0x1ed]
005b6a18  ec 01 d4 e5                                      ldrb r0, [r4, #0x1ec]
005b6a1c  2a 5d f5 eb                                      bl #0x30decc
005b6a20  08 02 d4 e5                                      ldrb r0, [r4, #0x208]
005b6a24  ce 5f f5 eb                                      bl #0x30e964
005b6a28  81 10 08 e3                                      movw r1, #0x8081
005b6a2c  80 1b 43 e3                                      movt r1, #0x3b80
005b6a30  cd 60 f5 eb                                      bl #0x30ed6c
005b6a34  00 70 a0 e1                                      mov r7, r0
005b6a38  09 02 d4 e5                                      ldrb r0, [r4, #0x209]
005b6a3c  c8 5f f5 eb                                      bl #0x30e964
005b6a40  81 10 08 e3                                      movw r1, #0x8081
005b6a44  80 1b 43 e3                                      movt r1, #0x3b80
005b6a48  c7 60 f5 eb                                      bl #0x30ed6c
005b6a4c  00 60 a0 e1                                      mov r6, r0
005b6a50  0a 02 d4 e5                                      ldrb r0, [r4, #0x20a]
005b6a54  c2 5f f5 eb                                      bl #0x30e964
005b6a58  81 10 08 e3                                      movw r1, #0x8081
005b6a5c  80 1b 43 e3                                      movt r1, #0x3b80
005b6a60  c1 60 f5 eb                                      bl #0x30ed6c
005b6a64  00 50 a0 e1                                      mov r5, r0
005b6a68  0b 02 d4 e5                                      ldrb r0, [r4, #0x20b]
005b6a6c  bc 5f f5 eb                                      bl #0x30e964
005b6a70  81 10 08 e3                                      movw r1, #0x8081
005b6a74  80 1b 43 e3                                      movt r1, #0x3b80
005b6a78  bb 60 f5 eb                                      bl #0x30ed6c
005b6a7c  06 10 a0 e1                                      mov r1, r6
005b6a80  00 30 a0 e1                                      mov r3, r0
005b6a84  05 20 a0 e1                                      mov r2, r5
005b6a88  07 00 a0 e1                                      mov r0, r7
005b6a8c  db 5f f5 eb                                      bl #0x30ea00
005b6a90  c5 31 d4 e5                                      ldrb r3, [r4, #0x1c5]
005b6a94  00 00 53 e3                                      cmp r3, #0
005b6a98  83 00 00 1a                                      bne #0x5b6cac
005b6a9c  44 0b 00 e3                                      movw r0, #0xb44
005b6aa0  30 5d f5 eb                                      bl #0x30df68
005b6aa4  10 32 9f e5                                      ldr r3, [pc, #0x210]
005b6aa8  d8 21 94 e5                                      ldr r2, [r4, #0x1d8]
005b6aac  03 30 8f e0                                      add r3, pc, r3
005b6ab0  50 30 83 e2                                      add r3, r3, #0x50
005b6ab4  02 01 93 e7                                      ldr r0, [r3, r2, lsl #2]
005b6ab8  7c 5f f5 eb                                      bl #0x30e8b0
005b6abc  a0 34 d4 e5                                      ldrb r3, [r4, #0x4a0]
005b6ac0  dc 21 94 e5                                      ldr r2, [r4, #0x1dc]
005b6ac4  00 00 53 e3                                      cmp r3, #0
005b6ac8  f0 31 9f e5                                      ldr r3, [pc, #0x1f0]
005b6acc  01 20 62 12                                      rsbne r2, r2, #1
005b6ad0  03 30 8f e0                                      add r3, pc, r3
005b6ad4  02 31 83 e0                                      add r3, r3, r2, lsl #2
005b6ad8  9c 00 93 e5                                      ldr r0, [r3, #0x9c]
005b6adc  e5 5c f5 eb                                      bl #0x30de78
005b6ae0  c6 31 d4 e5                                      ldrb r3, [r4, #0x1c6]
005b6ae4  00 00 53 e3                                      cmp r3, #0
005b6ae8  6c 00 00 1a                                      bne #0x5b6ca0
005b6aec  71 0b 00 e3                                      movw r0, #0xb71
005b6af0  1c 5d f5 eb                                      bl #0x30df68
005b6af4  c8 31 9f e5                                      ldr r3, [pc, #0x1c8]
005b6af8  e0 21 94 e5                                      ldr r2, [r4, #0x1e0]
005b6afc  03 30 8f e0                                      add r3, pc, r3
005b6b00  5c 30 83 e2                                      add r3, r3, #0x5c
005b6b04  02 01 93 e7                                      ldr r0, [r3, r2, lsl #2]
005b6b08  e2 5d f5 eb                                      bl #0x30e298
005b6b0c  c7 01 d4 e5                                      ldrb r0, [r4, #0x1c7]
005b6b10  c8 5d f5 eb                                      bl #0x30e238
005b6b14  0c 02 94 e5                                      ldr r0, [r4, #0x20c]
005b6b18  5f 5e f5 eb                                      bl #0x30e49c
005b6b1c  10 02 94 e5                                      ldr r0, [r4, #0x210]
005b6b20  14 12 94 e5                                      ldr r1, [r4, #0x214]
005b6b24  af 5f f5 eb                                      bl #0x30e9e8
005b6b28  c8 31 d4 e5                                      ldrb r3, [r4, #0x1c8]
005b6b2c  00 00 53 e3                                      cmp r3, #0
005b6b30  57 00 00 1a                                      bne #0x5b6c94
005b6b34  bd 0e a0 e3                                      mov r0, #0xbd0
005b6b38  0a 5d f5 eb                                      bl #0x30df68
005b6b3c  18 02 94 e5                                      ldr r0, [r4, #0x218]
005b6b40  65 60 f5 eb                                      bl #0x30ecdc
005b6b44  cc 31 d4 e5                                      ldrb r3, [r4, #0x1cc]
005b6b48  00 00 53 e3                                      cmp r3, #0
005b6b4c  4d 00 00 1a                                      bne #0x5b6c88
005b6b50  37 00 08 e3                                      movw r0, #0x8037
005b6b54  03 5d f5 eb                                      bl #0x30df68
005b6b58  20 02 94 e5                                      ldr r0, [r4, #0x220]
005b6b5c  24 12 94 e5                                      ldr r1, [r4, #0x224]
005b6b60  e2 5f f5 eb                                      bl #0x30eaf0
005b6b64  d0 31 d4 e5                                      ldrb r3, [r4, #0x1d0]
005b6b68  00 00 53 e3                                      cmp r3, #0
005b6b6c  42 00 00 1a                                      bne #0x5b6c7c
005b6b70  9e 00 08 e3                                      movw r0, #0x809e
005b6b74  fb 5c f5 eb                                      bl #0x30df68
005b6b78  d1 31 d4 e5                                      ldrb r3, [r4, #0x1d1]
005b6b7c  00 00 53 e3                                      cmp r3, #0
005b6b80  3a 00 00 1a                                      bne #0x5b6c70
005b6b84  a0 00 08 e3                                      movw r0, #0x80a0
005b6b88  f6 5c f5 eb                                      bl #0x30df68
005b6b8c  28 02 94 e5                                      ldr r0, [r4, #0x228]
005b6b90  d2 11 d4 e5                                      ldrb r1, [r4, #0x1d2]
005b6b94  90 5c f5 eb                                      bl #0x30dddc
005b6b98  d3 31 d4 e5                                      ldrb r3, [r4, #0x1d3]
005b6b9c  00 00 53 e3                                      cmp r3, #0
005b6ba0  2f 00 00 1a                                      bne #0x5b6c64
005b6ba4  11 0c 00 e3                                      movw r0, #0xc11
005b6ba8  ee 5c f5 eb                                      bl #0x30df68
005b6bac  14 c0 8d e2                                      add ip, sp, #0x14
005b6bb0  00 c0 8d e5                                      str ip, [sp]
005b6bb4  10 c0 8d e2                                      add ip, sp, #0x10
005b6bb8  04 c0 8d e5                                      str ip, [sp, #4]
005b6bbc  01 c0 a0 e3                                      mov ip, #1
005b6bc0  8b 1f 84 e2                                      add r1, r4, #0x22c
005b6bc4  1c 20 8d e2                                      add r2, sp, #0x1c
005b6bc8  18 30 8d e2                                      add r3, sp, #0x18
005b6bcc  08 c0 8d e5                                      str ip, [sp, #8]
005b6bd0  04 00 a0 e1                                      mov r0, r4
005b6bd4  00 c0 a0 e3                                      mov ip, #0
005b6bd8  0c c0 8d e5                                      str ip, [sp, #0xc]
005b6bdc  28 9b 04 eb                                      bl #0x6dd884
005b6be0  10 30 9d e5                                      ldr r3, [sp, #0x10]
005b6be4  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
005b6be8  18 10 9d e5                                      ldr r1, [sp, #0x18]
005b6bec  14 20 9d e5                                      ldr r2, [sp, #0x14]
005b6bf0  3e 5e f5 eb                                      bl #0x30e4f0
005b6bf4  d4 31 d4 e5                                      ldrb r3, [r4, #0x1d4]
005b6bf8  00 00 53 e3                                      cmp r3, #0
005b6bfc  15 00 00 1a                                      bne #0x5b6c58
005b6c00  b9 0e a0 e3                                      mov r0, #0xb90
005b6c04  d7 5c f5 eb                                      bl #0x30df68
005b6c08  54 12 94 e5                                      ldr r1, [r4, #0x254]
005b6c0c  92 08 08 e3                                      movw r0, #0x8892
005b6c10  77 5c f5 eb                                      bl #0x30ddf4
005b6c14  58 12 94 e5                                      ldr r1, [r4, #0x258]
005b6c18  93 08 08 e3                                      movw r0, #0x8893
005b6c1c  74 5c f5 eb                                      bl #0x30ddf4
005b6c20  24 d0 8d e2                                      add sp, sp, #0x24
005b6c24  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
005b6c28  e2 0b 00 e3                                      movw r0, #0xbe2
005b6c2c  44 5e f5 eb                                      bl #0x30e544
005b6c30  9c 30 94 e5                                      ldr r3, [r4, #0x9c]
005b6c34  01 07 13 e3                                      tst r3, #0x40000
005b6c38  6b ff ff 0a                                      beq #0x5b69ec
005b6c3c  84 30 9f e5                                      ldr r3, [pc, #0x84]
005b6c40  fc 21 94 e5                                      ldr r2, [r4, #0x1fc]
005b6c44  03 30 8f e0                                      add r3, pc, r3
005b6c48  3c 30 83 e2                                      add r3, r3, #0x3c
005b6c4c  02 01 93 e7                                      ldr r0, [r3, r2, lsl #2]
005b6c50  af 5c f5 eb                                      bl #0x30df14
005b6c54  64 ff ff ea                                      b #0x5b69ec
005b6c58  b9 0e a0 e3                                      mov r0, #0xb90
005b6c5c  38 5e f5 eb                                      bl #0x30e544
005b6c60  e8 ff ff ea                                      b #0x5b6c08
005b6c64  11 0c 00 e3                                      movw r0, #0xc11
005b6c68  35 5e f5 eb                                      bl #0x30e544
005b6c6c  ce ff ff ea                                      b #0x5b6bac
005b6c70  a0 00 08 e3                                      movw r0, #0x80a0
005b6c74  32 5e f5 eb                                      bl #0x30e544
005b6c78  c3 ff ff ea                                      b #0x5b6b8c
005b6c7c  9e 00 08 e3                                      movw r0, #0x809e
005b6c80  2f 5e f5 eb                                      bl #0x30e544
005b6c84  bb ff ff ea                                      b #0x5b6b78
005b6c88  37 00 08 e3                                      movw r0, #0x8037
005b6c8c  2c 5e f5 eb                                      bl #0x30e544
005b6c90  b0 ff ff ea                                      b #0x5b6b58
005b6c94  bd 0e a0 e3                                      mov r0, #0xbd0
005b6c98  29 5e f5 eb                                      bl #0x30e544
005b6c9c  a6 ff ff ea                                      b #0x5b6b3c
005b6ca0  71 0b 00 e3                                      movw r0, #0xb71
005b6ca4  26 5e f5 eb                                      bl #0x30e544
005b6ca8  91 ff ff ea                                      b #0x5b6af4
005b6cac  44 0b 00 e3                                      movw r0, #0xb44
005b6cb0  23 5e f5 eb                                      bl #0x30e544
005b6cb4  7a ff ff ea                                      b #0x5b6aa4
; mapping-symbol data/literal pool
005b6cb8  3c 96 32 00 88 95 32 00 64 95 32 00 38 95 32 00  .byte 0x3c, 0x96, 0x32, 0x00, 0x88, 0x95, 0x32, 0x00, 0x64, 0x95, 0x32, 0x00, 0x38, 0x95, 0x32, 0x00
005b6cc8  f0 93 32 00                                      .byte 0xf0, 0x93, 0x32, 0x00

; FUNCTION 0x005b6e20, declared_size=76, range_size=76, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE20setStencilTestEnableEb
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::setStencilTestEnable(bool)
; decoder-mode: arm
005b6e20  70 40 2d e9                                      push {r4, r5, r6, lr}
005b6e24  d4 31 d0 e5                                      ldrb r3, [r0, #0x1d4]
005b6e28  00 40 a0 e1                                      mov r4, r0
005b6e2c  01 50 a0 e1                                      mov r5, r1
005b6e30  01 00 53 e1                                      cmp r3, r1
005b6e34  07 00 00 0a                                      beq #0x5b6e58
005b6e38  00 30 90 e5                                      ldr r3, [r0]
005b6e3c  0f e0 a0 e1                                      mov lr, pc
005b6e40  fc f1 93 e5                                      ldr pc, [r3, #0x1fc]
005b6e44  00 00 55 e3                                      cmp r5, #0
005b6e48  03 00 00 1a                                      bne #0x5b6e5c
005b6e4c  b9 0e a0 e3                                      mov r0, #0xb90
005b6e50  44 5c f5 eb                                      bl #0x30df68
005b6e54  d4 51 c4 e5                                      strb r5, [r4, #0x1d4]
005b6e58  70 80 bd e8                                      pop {r4, r5, r6, pc}
005b6e5c  b9 0e a0 e3                                      mov r0, #0xb90
005b6e60  b7 5d f5 eb                                      bl #0x30e544
005b6e64  d4 51 c4 e5                                      strb r5, [r4, #0x1d4]
005b6e68  fa ff ff ea                                      b #0x5b6e58

; FUNCTION 0x005b6e6c, declared_size=76, range_size=76, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE16setScissorEnableEb
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::setScissorEnable(bool)
; decoder-mode: arm
005b6e6c  70 40 2d e9                                      push {r4, r5, r6, lr}
005b6e70  d3 31 d0 e5                                      ldrb r3, [r0, #0x1d3]
005b6e74  00 40 a0 e1                                      mov r4, r0
005b6e78  01 50 a0 e1                                      mov r5, r1
005b6e7c  01 00 53 e1                                      cmp r3, r1
005b6e80  07 00 00 0a                                      beq #0x5b6ea4
005b6e84  00 30 90 e5                                      ldr r3, [r0]
005b6e88  0f e0 a0 e1                                      mov lr, pc
005b6e8c  fc f1 93 e5                                      ldr pc, [r3, #0x1fc]
005b6e90  00 00 55 e3                                      cmp r5, #0
005b6e94  03 00 00 1a                                      bne #0x5b6ea8
005b6e98  11 0c 00 e3                                      movw r0, #0xc11
005b6e9c  31 5c f5 eb                                      bl #0x30df68
005b6ea0  d3 51 c4 e5                                      strb r5, [r4, #0x1d3]
005b6ea4  70 80 bd e8                                      pop {r4, r5, r6, pc}
005b6ea8  11 0c 00 e3                                      movw r0, #0xc11
005b6eac  a4 5d f5 eb                                      bl #0x30e544
005b6eb0  d3 51 c4 e5                                      strb r5, [r4, #0x1d3]
005b6eb4  fa ff ff ea                                      b #0x5b6ea4

; FUNCTION 0x005b6eb8, declared_size=76, range_size=76, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE23setSampleCoverageEnableEb
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::setSampleCoverageEnable(bool)
; decoder-mode: arm
005b6eb8  70 40 2d e9                                      push {r4, r5, r6, lr}
005b6ebc  d1 31 d0 e5                                      ldrb r3, [r0, #0x1d1]
005b6ec0  00 40 a0 e1                                      mov r4, r0
005b6ec4  01 50 a0 e1                                      mov r5, r1
005b6ec8  01 00 53 e1                                      cmp r3, r1
005b6ecc  07 00 00 0a                                      beq #0x5b6ef0
005b6ed0  00 30 90 e5                                      ldr r3, [r0]
005b6ed4  0f e0 a0 e1                                      mov lr, pc
005b6ed8  fc f1 93 e5                                      ldr pc, [r3, #0x1fc]
005b6edc  00 00 55 e3                                      cmp r5, #0
005b6ee0  03 00 00 1a                                      bne #0x5b6ef4
005b6ee4  a0 00 08 e3                                      movw r0, #0x80a0
005b6ee8  1e 5c f5 eb                                      bl #0x30df68
005b6eec  d1 51 c4 e5                                      strb r5, [r4, #0x1d1]
005b6ef0  70 80 bd e8                                      pop {r4, r5, r6, pc}
005b6ef4  a0 00 08 e3                                      movw r0, #0x80a0
005b6ef8  91 5d f5 eb                                      bl #0x30e544
005b6efc  d1 51 c4 e5                                      strb r5, [r4, #0x1d1]
005b6f00  fa ff ff ea                                      b #0x5b6ef0

; FUNCTION 0x005b6f04, declared_size=76, range_size=76, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE30setSampleAlphaToCoverageEnableEb
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::setSampleAlphaToCoverageEnable(bool)
; decoder-mode: arm
005b6f04  70 40 2d e9                                      push {r4, r5, r6, lr}
005b6f08  d0 31 d0 e5                                      ldrb r3, [r0, #0x1d0]
005b6f0c  00 40 a0 e1                                      mov r4, r0
005b6f10  01 50 a0 e1                                      mov r5, r1
005b6f14  01 00 53 e1                                      cmp r3, r1
005b6f18  07 00 00 0a                                      beq #0x5b6f3c
005b6f1c  00 30 90 e5                                      ldr r3, [r0]
005b6f20  0f e0 a0 e1                                      mov lr, pc
005b6f24  fc f1 93 e5                                      ldr pc, [r3, #0x1fc]
005b6f28  00 00 55 e3                                      cmp r5, #0
005b6f2c  03 00 00 1a                                      bne #0x5b6f40
005b6f30  9e 00 08 e3                                      movw r0, #0x809e
005b6f34  0b 5c f5 eb                                      bl #0x30df68
005b6f38  d0 51 c4 e5                                      strb r5, [r4, #0x1d0]
005b6f3c  70 80 bd e8                                      pop {r4, r5, r6, pc}
005b6f40  9e 00 08 e3                                      movw r0, #0x809e
005b6f44  7e 5d f5 eb                                      bl #0x30e544
005b6f48  d0 51 c4 e5                                      strb r5, [r4, #0x1d0]
005b6f4c  fa ff ff ea                                      b #0x5b6f3c

; FUNCTION 0x005b6f50, declared_size=76, range_size=76, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE26setPolygonOffsetFillEnableEb
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::setPolygonOffsetFillEnable(bool)
; decoder-mode: arm
005b6f50  70 40 2d e9                                      push {r4, r5, r6, lr}
005b6f54  cc 31 d0 e5                                      ldrb r3, [r0, #0x1cc]
005b6f58  00 40 a0 e1                                      mov r4, r0
005b6f5c  01 50 a0 e1                                      mov r5, r1
005b6f60  01 00 53 e1                                      cmp r3, r1
005b6f64  07 00 00 0a                                      beq #0x5b6f88
005b6f68  00 30 90 e5                                      ldr r3, [r0]
005b6f6c  0f e0 a0 e1                                      mov lr, pc
005b6f70  fc f1 93 e5                                      ldr pc, [r3, #0x1fc]
005b6f74  00 00 55 e3                                      cmp r5, #0
005b6f78  03 00 00 1a                                      bne #0x5b6f8c
005b6f7c  37 00 08 e3                                      movw r0, #0x8037
005b6f80  f8 5b f5 eb                                      bl #0x30df68
005b6f84  cc 51 c4 e5                                      strb r5, [r4, #0x1cc]
005b6f88  70 80 bd e8                                      pop {r4, r5, r6, pc}
005b6f8c  37 00 08 e3                                      movw r0, #0x8037
005b6f90  6b 5d f5 eb                                      bl #0x30e544
005b6f94  cc 51 c4 e5                                      strb r5, [r4, #0x1cc]
005b6f98  fa ff ff ea                                      b #0x5b6f88

; FUNCTION 0x005b6f9c, declared_size=76, range_size=76, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE15setDitherEnableEb
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::setDitherEnable(bool)
; decoder-mode: arm
005b6f9c  70 40 2d e9                                      push {r4, r5, r6, lr}
005b6fa0  c8 31 d0 e5                                      ldrb r3, [r0, #0x1c8]
005b6fa4  00 40 a0 e1                                      mov r4, r0
005b6fa8  01 50 a0 e1                                      mov r5, r1
005b6fac  01 00 53 e1                                      cmp r3, r1
005b6fb0  07 00 00 0a                                      beq #0x5b6fd4
005b6fb4  00 30 90 e5                                      ldr r3, [r0]
005b6fb8  0f e0 a0 e1                                      mov lr, pc
005b6fbc  fc f1 93 e5                                      ldr pc, [r3, #0x1fc]
005b6fc0  00 00 55 e3                                      cmp r5, #0
005b6fc4  03 00 00 1a                                      bne #0x5b6fd8
005b6fc8  bd 0e a0 e3                                      mov r0, #0xbd0
005b6fcc  e5 5b f5 eb                                      bl #0x30df68
005b6fd0  c8 51 c4 e5                                      strb r5, [r4, #0x1c8]
005b6fd4  70 80 bd e8                                      pop {r4, r5, r6, pc}
005b6fd8  bd 0e a0 e3                                      mov r0, #0xbd0
005b6fdc  58 5d f5 eb                                      bl #0x30e544
005b6fe0  c8 51 c4 e5                                      strb r5, [r4, #0x1c8]
005b6fe4  fa ff ff ea                                      b #0x5b6fd4

; FUNCTION 0x005b6fe8, declared_size=76, range_size=76, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE18setDepthTestEnableEb
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::setDepthTestEnable(bool)
; decoder-mode: arm
005b6fe8  70 40 2d e9                                      push {r4, r5, r6, lr}
005b6fec  c6 31 d0 e5                                      ldrb r3, [r0, #0x1c6]
005b6ff0  00 40 a0 e1                                      mov r4, r0
005b6ff4  01 50 a0 e1                                      mov r5, r1
005b6ff8  01 00 53 e1                                      cmp r3, r1
005b6ffc  07 00 00 0a                                      beq #0x5b7020
005b7000  00 30 90 e5                                      ldr r3, [r0]
005b7004  0f e0 a0 e1                                      mov lr, pc
005b7008  fc f1 93 e5                                      ldr pc, [r3, #0x1fc]
005b700c  00 00 55 e3                                      cmp r5, #0
005b7010  03 00 00 1a                                      bne #0x5b7024
005b7014  71 0b 00 e3                                      movw r0, #0xb71
005b7018  d2 5b f5 eb                                      bl #0x30df68
005b701c  c6 51 c4 e5                                      strb r5, [r4, #0x1c6]
005b7020  70 80 bd e8                                      pop {r4, r5, r6, pc}
005b7024  71 0b 00 e3                                      movw r0, #0xb71
005b7028  45 5d f5 eb                                      bl #0x30e544
005b702c  c6 51 c4 e5                                      strb r5, [r4, #0x1c6]
005b7030  fa ff ff ea                                      b #0x5b7020

; FUNCTION 0x005b7034, declared_size=76, range_size=76, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE17setCullFaceEnableEb
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::setCullFaceEnable(bool)
; decoder-mode: arm
005b7034  70 40 2d e9                                      push {r4, r5, r6, lr}
005b7038  c5 31 d0 e5                                      ldrb r3, [r0, #0x1c5]
005b703c  00 40 a0 e1                                      mov r4, r0
005b7040  01 50 a0 e1                                      mov r5, r1
005b7044  01 00 53 e1                                      cmp r3, r1
005b7048  07 00 00 0a                                      beq #0x5b706c
005b704c  00 30 90 e5                                      ldr r3, [r0]
005b7050  0f e0 a0 e1                                      mov lr, pc
005b7054  fc f1 93 e5                                      ldr pc, [r3, #0x1fc]
005b7058  00 00 55 e3                                      cmp r5, #0
005b705c  03 00 00 1a                                      bne #0x5b7070
005b7060  44 0b 00 e3                                      movw r0, #0xb44
005b7064  bf 5b f5 eb                                      bl #0x30df68
005b7068  c5 51 c4 e5                                      strb r5, [r4, #0x1c5]
005b706c  70 80 bd e8                                      pop {r4, r5, r6, pc}
005b7070  44 0b 00 e3                                      movw r0, #0xb44
005b7074  32 5d f5 eb                                      bl #0x30e544
005b7078  c5 51 c4 e5                                      strb r5, [r4, #0x1c5]
005b707c  fa ff ff ea                                      b #0x5b706c

; FUNCTION 0x005b7080, declared_size=76, range_size=76, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE14setBlendEnableEb
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::setBlendEnable(bool)
; decoder-mode: arm
005b7080  70 40 2d e9                                      push {r4, r5, r6, lr}
005b7084  c4 31 d0 e5                                      ldrb r3, [r0, #0x1c4]
005b7088  00 40 a0 e1                                      mov r4, r0
005b708c  01 50 a0 e1                                      mov r5, r1
005b7090  01 00 53 e1                                      cmp r3, r1
005b7094  07 00 00 0a                                      beq #0x5b70b8
005b7098  00 30 90 e5                                      ldr r3, [r0]
005b709c  0f e0 a0 e1                                      mov lr, pc
005b70a0  fc f1 93 e5                                      ldr pc, [r3, #0x1fc]
005b70a4  00 00 55 e3                                      cmp r5, #0
005b70a8  03 00 00 1a                                      bne #0x5b70bc
005b70ac  e2 0b 00 e3                                      movw r0, #0xbe2
005b70b0  ac 5b f5 eb                                      bl #0x30df68
005b70b4  c4 51 c4 e5                                      strb r5, [r4, #0x1c4]
005b70b8  70 80 bd e8                                      pop {r4, r5, r6, pc}
005b70bc  e2 0b 00 e3                                      movw r0, #0xbe2
005b70c0  1f 5d f5 eb                                      bl #0x30e544
005b70c4  c4 51 c4 e5                                      strb r5, [r4, #0x1c4]
005b70c8  fa ff ff ea                                      b #0x5b70b8

; FUNCTION 0x005b739c, declared_size=68, range_size=68, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE22commitMaterialRendererEPNS0_17CMaterialRendererE
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::commitMaterialRenderer(glitch::video::CMaterialRenderer*)
; decoder-mode: arm
005b739c  70 40 2d e9                                      push {r4, r5, r6, lr}
005b73a0  f8 20 d0 e5                                      ldrb r2, [r0, #0xf8]
005b73a4  18 30 91 e5                                      ldr r3, [r1, #0x18]
005b73a8  0c 50 a0 e3                                      mov r5, #0xc
005b73ac  00 40 a0 e1                                      mov r4, r0
005b73b0  95 32 23 e0                                      mla r3, r5, r2, r3
005b73b4  01 60 a0 e1                                      mov r6, r1
005b73b8  00 10 a0 e1                                      mov r1, r0
005b73bc  08 00 93 e5                                      ldr r0, [r3, #8]
005b73c0  84 ff ff eb                                      bl #0x5b71d8
005b73c4  f8 20 d4 e5                                      ldrb r2, [r4, #0xf8]
005b73c8  18 30 96 e5                                      ldr r3, [r6, #0x18]
005b73cc  95 32 25 e0                                      mla r5, r5, r2, r3
005b73d0  00 20 a0 e3                                      mov r2, #0
005b73d4  08 30 95 e5                                      ldr r3, [r5, #8]
005b73d8  30 20 c3 e5                                      strb r2, [r3, #0x30]
005b73dc  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x005b74e8, declared_size=172, range_size=172, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE25commitCurrentMaterialImplEh
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::commitCurrentMaterialImpl(unsigned char)
; decoder-mode: arm
005b74e8  70 40 2d e9                                      push {r4, r5, r6, lr}
005b74ec  00 40 a0 e1                                      mov r4, r0
005b74f0  01 50 a0 e1                                      mov r5, r1
005b74f4  05 20 a0 e1                                      mov r2, r5
005b74f8  ec 00 90 e5                                      ldr r0, [r0, #0xec]
005b74fc  f8 10 d4 e5                                      ldrb r1, [r4, #0xf8]
005b7500  04 30 a0 e1                                      mov r3, r4
005b7504  08 d0 4d e2                                      sub sp, sp, #8
005b7508  b4 ff ff eb                                      bl #0x5b73e0
005b750c  ec 30 94 e5                                      ldr r3, [r4, #0xec]
005b7510  34 10 a0 e3                                      mov r1, #0x34
005b7514  91 05 05 e0                                      mul r5, r1, r5
005b7518  04 30 93 e5                                      ldr r3, [r3, #4]
005b751c  f8 20 d4 e5                                      ldrb r2, [r4, #0xf8]
005b7520  0c 00 a0 e3                                      mov r0, #0xc
005b7524  18 10 93 e5                                      ldr r1, [r3, #0x18]
005b7528  f4 30 94 e5                                      ldr r3, [r4, #0xf4]
005b752c  90 12 22 e0                                      mla r2, r0, r2, r1
005b7530  08 20 92 e5                                      ldr r2, [r2, #8]
005b7534  05 20 82 e0                                      add r2, r2, r5
005b7538  20 60 92 e5                                      ldr r6, [r2, #0x20]
005b753c  03 00 56 e1                                      cmp r6, r3
005b7540  02 00 00 0a                                      beq #0x5b7550
005b7544  4c 00 96 e5                                      ldr r0, [r6, #0x4c]
005b7548  db 5c f5 eb                                      bl #0x30e8bc
005b754c  f4 60 84 e5                                      str r6, [r4, #0xf4]
005b7550  ec 20 94 e5                                      ldr r2, [r4, #0xec]
005b7554  f8 30 d4 e5                                      ldrb r3, [r4, #0xf8]
005b7558  0c e0 a0 e3                                      mov lr, #0xc
005b755c  04 c0 92 e5                                      ldr ip, [r2, #4]
005b7560  f4 10 94 e5                                      ldr r1, [r4, #0xf4]
005b7564  04 00 a0 e1                                      mov r0, r4
005b7568  18 c0 9c e5                                      ldr ip, [ip, #0x18]
005b756c  9e c3 23 e0                                      mla r3, lr, r3, ip
005b7570  08 30 93 e5                                      ldr r3, [r3, #8]
005b7574  05 50 83 e0                                      add r5, r3, r5
005b7578  bc c2 d5 e1                                      ldrh ip, [r5, #0x2c]
005b757c  28 30 95 e5                                      ldr r3, [r5, #0x28]
005b7580  0c c1 83 e0                                      add ip, r3, ip, lsl #2
005b7584  00 c0 8d e5                                      str ip, [sp]
005b7588  04 f6 ff eb                                      bl #0x5b4da0
005b758c  08 d0 8d e2                                      add sp, sp, #8
005b7590  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x005b7594, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE21commitCurrentMaterialEv
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::commitCurrentMaterial()
; decoder-mode: arm
005b7594  00 10 a0 e3                                      mov r1, #0
005b7598  d2 ff ff ea                                      b #0x5b74e8

; FUNCTION 0x005b7898, declared_size=32, range_size=32, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE14setRenderStateERKNS5_6driver12SRenderStateE
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::setRenderState(glitch::video::detail::driver::SRenderState const&)
; decoder-mode: arm
005b7898  70 40 2d e9                                      push {r4, r5, r6, lr}
005b789c  00 50 a0 e1                                      mov r5, r0
005b78a0  01 40 a0 e1                                      mov r4, r1
005b78a4  3c ff ff eb                                      bl #0x5b759c
005b78a8  05 00 a0 e1                                      mov r0, r5
005b78ac  04 10 a0 e1                                      mov r1, r4
005b78b0  70 40 bd e8                                      pop {r4, r5, r6, lr}
005b78b4  82 ff ff ea                                      b #0x5b76c4

; FUNCTION 0x005b8b8c, declared_size=60, range_size=60, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE20commitPassParametersEhPKNS0_14CVertexStreamsEPKh
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::commitPassParameters(unsigned char, glitch::video::CVertexStreams const*, unsigned char const*)
; decoder-mode: arm
005b8b8c  30 40 2d e9                                      push {r4, r5, lr}
005b8b90  00 40 51 e2                                      subs r4, r1, #0
005b8b94  0c d0 4d e2                                      sub sp, sp, #0xc
005b8b98  00 50 a0 e1                                      mov r5, r0
005b8b9c  04 00 00 0a                                      beq #0x5b8bb4
005b8ba0  04 20 8d e5                                      str r2, [sp, #4]
005b8ba4  00 30 8d e5                                      str r3, [sp]
005b8ba8  4e fa ff eb                                      bl #0x5b74e8
005b8bac  00 30 9d e5                                      ldr r3, [sp]
005b8bb0  04 20 9d e5                                      ldr r2, [sp, #4]
005b8bb4  05 00 a0 e1                                      mov r0, r5
005b8bb8  04 10 a0 e1                                      mov r1, r4
005b8bbc  0c d0 8d e2                                      add sp, sp, #0xc
005b8bc0  30 40 bd e8                                      pop {r4, r5, lr}
005b8bc4  c0 ff ff ea                                      b #0x5b8acc

; FUNCTION 0x005b8bc8, declared_size=448, range_size=448, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE8drawImplERKN5boost13intrusive_ptrIKNS0_14CVertexStreamsEEERKNS0_16CPrimitiveStreamEPPNS0_14CDriverBindingE
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::drawImpl(boost::intrusive_ptr<glitch::video::CVertexStreams const> const&, glitch::video::CPrimitiveStream const&, glitch::video::CDriverBinding**)
; decoder-mode: arm
005b8bc8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005b8bcc  ac c1 9f e5                                      ldr ip, [pc, #0x1ac]
005b8bd0  38 31 90 e5                                      ldr r3, [r0, #0x138]
005b8bd4  00 40 a0 e1                                      mov r4, r0
005b8bd8  a0 00 90 e5                                      ldr r0, [r0, #0xa0]
005b8bdc  02 30 83 e3                                      orr r3, r3, #2
005b8be0  1c d0 4d e2                                      sub sp, sp, #0x1c
005b8be4  0c c0 8f e0                                      add ip, pc, ip
005b8be8  01 00 50 e3                                      cmp r0, #1
005b8bec  38 31 84 e5                                      str r3, [r4, #0x138]
005b8bf0  10 c0 8d e5                                      str ip, [sp, #0x10]
005b8bf4  08 10 8d e5                                      str r1, [sp, #8]
005b8bf8  80 30 94 05                                      ldreq r3, [r4, #0x80]
005b8bfc  7c 30 94 15                                      ldrne r3, [r4, #0x7c]
005b8c00  02 90 a0 e1                                      mov sb, r2
005b8c04  01 30 83 02                                      addeq r3, r3, #1
005b8c08  02 20 a0 13                                      movne r2, #2
005b8c0c  01 30 83 12                                      addne r3, r3, #1
005b8c10  09 00 a0 e1                                      mov r0, sb
005b8c14  80 30 84 05                                      streq r3, [r4, #0x80]
005b8c18  a0 20 84 15                                      strne r2, [r4, #0xa0]
005b8c1c  7c 30 84 15                                      strne r3, [r4, #0x7c]
005b8c20  78 50 94 e5                                      ldr r5, [r4, #0x78]
005b8c24  b5 9d ff eb                                      bl #0x5a0300
005b8c28  05 00 80 e0                                      add r0, r0, r5
005b8c2c  78 00 84 e5                                      str r0, [r4, #0x78]
005b8c30  00 10 99 e5                                      ldr r1, [sb]
005b8c34  04 00 a0 e1                                      mov r0, r4
005b8c38  35 f6 ff eb                                      bl #0x5b6514
005b8c3c  0c 00 8d e5                                      str r0, [sp, #0xc]
005b8c40  ec 20 94 e5                                      ldr r2, [r4, #0xec]
005b8c44  f8 30 d4 e5                                      ldrb r3, [r4, #0xf8]
005b8c48  0c 10 a0 e3                                      mov r1, #0xc
005b8c4c  04 20 92 e5                                      ldr r2, [r2, #4]
005b8c50  18 20 92 e5                                      ldr r2, [r2, #0x18]
005b8c54  91 23 23 e0                                      mla r3, r1, r3, r2
005b8c58  04 b0 d3 e5                                      ldrb fp, [r3, #4]
005b8c5c  00 00 5b e3                                      cmp fp, #0
005b8c60  01 80 a0 03                                      moveq r8, #1
005b8c64  1e 00 00 0a                                      beq #0x5b8ce4
005b8c68  14 11 9f e5                                      ldr r1, [pc, #0x114]
005b8c6c  00 50 a0 e3                                      mov r5, #0
005b8c70  01 80 a0 e3                                      mov r8, #1
005b8c74  14 10 8d e5                                      str r1, [sp, #0x14]
005b8c78  05 a0 a0 e1                                      mov sl, r5
005b8c7c  e8 70 94 e5                                      ldr r7, [r4, #0xe8]
005b8c80  08 20 9d e5                                      ldr r2, [sp, #8]
005b8c84  00 00 57 e3                                      cmp r7, #0
005b8c88  00 60 92 e5                                      ldr r6, [r2]
005b8c8c  1a 00 00 0a                                      beq #0x5b8cfc
005b8c90  05 71 97 e7                                      ldr r7, [r7, r5, lsl #2]
005b8c94  04 70 87 e2                                      add r7, r7, #4
005b8c98  0a 10 a0 e1                                      mov r1, sl
005b8c9c  06 20 a0 e1                                      mov r2, r6
005b8ca0  07 30 a0 e1                                      mov r3, r7
005b8ca4  04 00 a0 e1                                      mov r0, r4
005b8ca8  b7 ff ff eb                                      bl #0x5b8b8c
005b8cac  04 00 a0 e1                                      mov r0, r4
005b8cb0  06 20 a0 e1                                      mov r2, r6
005b8cb4  07 30 a0 e1                                      mov r3, r7
005b8cb8  f4 10 94 e5                                      ldr r1, [r4, #0xf4]
005b8cbc  30 f6 ff eb                                      bl #0x5b6584
005b8cc0  09 00 a0 e1                                      mov r0, sb
005b8cc4  e4 11 94 e5                                      ldr r1, [r4, #0x1e4]
005b8cc8  0c 20 9d e5                                      ldr r2, [sp, #0xc]
005b8ccc  3d df ff eb                                      bl #0x5b09c8
005b8cd0  01 50 85 e2                                      add r5, r5, #1
005b8cd4  75 a0 ef e6                                      uxtb sl, r5
005b8cd8  0a 00 5b e1                                      cmp fp, sl
005b8cdc  08 80 00 e0                                      and r8, r0, r8
005b8ce0  e5 ff ff 8a                                      bhi #0x5b8c7c
005b8ce4  38 31 94 e5                                      ldr r3, [r4, #0x138]
005b8ce8  08 00 a0 e1                                      mov r0, r8
005b8cec  02 30 c3 e3                                      bic r3, r3, #2
005b8cf0  38 31 84 e5                                      str r3, [r4, #0x138]
005b8cf4  1c d0 8d e2                                      add sp, sp, #0x1c
005b8cf8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005b8cfc  10 10 9d e5                                      ldr r1, [sp, #0x10]
005b8d00  14 c0 9d e5                                      ldr ip, [sp, #0x14]
005b8d04  1e 20 a0 e3                                      mov r2, #0x1e
005b8d08  0c 30 91 e7                                      ldr r3, [r1, ip]
005b8d0c  ff 10 a0 e3                                      mov r1, #0xff
005b8d10  03 00 a0 e1                                      mov r0, r3
005b8d14  04 30 8d e5                                      str r3, [sp, #4]
005b8d18  d0 55 f5 eb                                      bl #0x30e460
005b8d1c  10 20 96 e5                                      ldr r2, [r6, #0x10]
005b8d20  14 10 86 e2                                      add r1, r6, #0x14
005b8d24  04 30 9d e5                                      ldr r3, [sp, #4]
005b8d28  01 00 52 e1                                      cmp r2, r1
005b8d2c  0f 00 00 0a                                      beq #0x5b8d70
005b8d30  24 10 86 e2                                      add r1, r6, #0x24
005b8d34  02 00 61 e0                                      rsb r0, r1, r2
005b8d38  0f 00 c0 e3                                      bic r0, r0, #0xf
005b8d3c  07 20 a0 e1                                      mov r2, r7
005b8d40  10 00 80 e2                                      add r0, r0, #0x10
005b8d44  03 70 a0 e1                                      mov r7, r3
005b8d48  bc 31 d6 e1                                      ldrh r3, [r6, #0x1c]
005b8d4c  42 12 a0 e1                                      asr r1, r2, #4
005b8d50  10 20 82 e2                                      add r2, r2, #0x10
005b8d54  00 00 52 e1                                      cmp r2, r0
005b8d58  07 10 c3 e7                                      strb r1, [r3, r7]
005b8d5c  10 60 86 e2                                      add r6, r6, #0x10
005b8d60  f8 ff ff 1a                                      bne #0x5b8d48
005b8d64  08 30 9d e5                                      ldr r3, [sp, #8]
005b8d68  00 60 93 e5                                      ldr r6, [r3]
005b8d6c  c9 ff ff ea                                      b #0x5b8c98
005b8d70  08 20 9d e5                                      ldr r2, [sp, #8]
005b8d74  03 70 a0 e1                                      mov r7, r3
005b8d78  00 60 92 e5                                      ldr r6, [r2]
005b8d7c  c5 ff ff ea                                      b #0x5b8c98
; mapping-symbol data/literal pool
005b8d80  ac be 3d 00 b8 39 00 00                          .byte 0xac, 0xbe, 0x3d, 0x00, 0xb8, 0x39, 0x00, 0x00

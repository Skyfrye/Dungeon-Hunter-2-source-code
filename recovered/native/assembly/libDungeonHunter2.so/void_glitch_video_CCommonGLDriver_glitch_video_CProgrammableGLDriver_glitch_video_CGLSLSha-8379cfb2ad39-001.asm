; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005af3f8, declared_size=380, range_size=380, mode=arm
; class-group: void glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE21applyRenderStateBlendINS5_10renderpass12SRenderStateEEEvRKT_
; demangled: void glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::applyRenderStateBlend<glitch::video::detail::renderpass::SRenderState>(glitch::video::detail::renderpass::SRenderState const&)
; decoder-mode: arm
005af3f8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005af3fc  c4 31 d0 e5                                      ldrb r3, [r0, #0x1c4]
005af400  0c d0 4d e2                                      sub sp, sp, #0xc
005af404  00 40 a0 e1                                      mov r4, r0
005af408  00 00 53 e3                                      cmp r3, #0
005af40c  01 80 a0 e1                                      mov r8, r1
005af410  50 00 00 0a                                      beq #0x5af558
005af414  00 20 98 e5                                      ldr r2, [r8]
005af418  fc 31 94 e5                                      ldr r3, [r4, #0x1fc]
005af41c  52 5c e2 e7                                      ubfx r5, r2, #0x18, #3
005af420  03 00 55 e1                                      cmp r5, r3
005af424  06 00 00 0a                                      beq #0x5af444
005af428  3c 31 9f e5                                      ldr r3, [pc, #0x13c]
005af42c  03 30 8f e0                                      add r3, pc, r3
005af430  3c 30 83 e2                                      add r3, r3, #0x3c
005af434  05 01 93 e7                                      ldr r0, [r3, r5, lsl #2]
005af438  b5 7a f5 eb                                      bl #0x30df14
005af43c  fc 51 84 e5                                      str r5, [r4, #0x1fc]
005af440  00 20 98 e5                                      ldr r2, [r8]
005af444  0f 30 02 e2                                      and r3, r2, #0xf
005af448  00 50 a0 e3                                      mov r5, #0
005af44c  52 22 e3 e7                                      ubfx r2, r2, #4, #4
005af450  13 50 c7 e7                                      bfi r5, r3, #0, #8
005af454  00 12 94 e5                                      ldr r1, [r4, #0x200]
005af458  12 54 cf e7                                      bfi r5, r2, #8, #8
005af45c  1f 58 df e7                                      bfc r5, #0x10, #0x10
005af460  01 00 55 e1                                      cmp r5, r1
005af464  05 00 00 0a                                      beq #0x5af480
005af468  00 01 9f e5                                      ldr r0, [pc, #0x100]
005af46c  00 00 8f e0                                      add r0, pc, r0
005af470  02 11 90 e7                                      ldr r1, [r0, r2, lsl #2]
005af474  03 01 90 e7                                      ldr r0, [r0, r3, lsl #2]
005af478  e6 7b f5 eb                                      bl #0x30e418
005af47c  00 52 84 e5                                      str r5, [r4, #0x200]
005af480  08 70 d8 e5                                      ldrb r7, [r8, #8]
005af484  0b 60 d8 e5                                      ldrb r6, [r8, #0xb]
005af488  0a 50 d8 e5                                      ldrb r5, [r8, #0xa]
005af48c  04 32 d4 e5                                      ldrb r3, [r4, #0x204]
005af490  07 22 d4 e5                                      ldrb r2, [r4, #0x207]
005af494  09 80 d8 e5                                      ldrb r8, [r8, #9]
005af498  06 02 d4 e5                                      ldrb r0, [r4, #0x206]
005af49c  05 12 d4 e5                                      ldrb r1, [r4, #0x205]
005af4a0  03 20 cd e5                                      strb r2, [sp, #3]
005af4a4  02 00 cd e5                                      strb r0, [sp, #2]
005af4a8  01 10 cd e5                                      strb r1, [sp, #1]
005af4ac  00 30 cd e5                                      strb r3, [sp]
005af4b0  07 60 cd e5                                      strb r6, [sp, #7]
005af4b4  06 50 cd e5                                      strb r5, [sp, #6]
005af4b8  05 80 cd e5                                      strb r8, [sp, #5]
005af4bc  04 70 cd e5                                      strb r7, [sp, #4]
005af4c0  00 30 9d e5                                      ldr r3, [sp]
005af4c4  04 20 9d e5                                      ldr r2, [sp, #4]
005af4c8  03 00 52 e1                                      cmp r2, r3
005af4cc  1f 00 00 0a                                      beq #0x5af550
005af4d0  07 00 a0 e1                                      mov r0, r7
005af4d4  22 7d f5 eb                                      bl #0x30e964
005af4d8  81 10 08 e3                                      movw r1, #0x8081
005af4dc  80 1b 43 e3                                      movt r1, #0x3b80
005af4e0  21 7e f5 eb                                      bl #0x30ed6c
005af4e4  00 90 a0 e1                                      mov sb, r0
005af4e8  08 00 a0 e1                                      mov r0, r8
005af4ec  1c 7d f5 eb                                      bl #0x30e964
005af4f0  81 10 08 e3                                      movw r1, #0x8081
005af4f4  80 1b 43 e3                                      movt r1, #0x3b80
005af4f8  1b 7e f5 eb                                      bl #0x30ed6c
005af4fc  00 a0 a0 e1                                      mov sl, r0
005af500  05 00 a0 e1                                      mov r0, r5
005af504  16 7d f5 eb                                      bl #0x30e964
005af508  81 10 08 e3                                      movw r1, #0x8081
005af50c  80 1b 43 e3                                      movt r1, #0x3b80
005af510  15 7e f5 eb                                      bl #0x30ed6c
005af514  00 b0 a0 e1                                      mov fp, r0
005af518  06 00 a0 e1                                      mov r0, r6
005af51c  10 7d f5 eb                                      bl #0x30e964
005af520  81 10 08 e3                                      movw r1, #0x8081
005af524  80 1b 43 e3                                      movt r1, #0x3b80
005af528  0f 7e f5 eb                                      bl #0x30ed6c
005af52c  0a 10 a0 e1                                      mov r1, sl
005af530  00 30 a0 e1                                      mov r3, r0
005af534  0b 20 a0 e1                                      mov r2, fp
005af538  09 00 a0 e1                                      mov r0, sb
005af53c  88 7b f5 eb                                      bl #0x30e364
005af540  04 72 c4 e5                                      strb r7, [r4, #0x204]
005af544  07 62 c4 e5                                      strb r6, [r4, #0x207]
005af548  06 52 c4 e5                                      strb r5, [r4, #0x206]
005af54c  05 82 c4 e5                                      strb r8, [r4, #0x205]
005af550  0c d0 8d e2                                      add sp, sp, #0xc
005af554  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005af558  e2 0b 00 e3                                      movw r0, #0xbe2
005af55c  f8 7b f5 eb                                      bl #0x30e544
005af560  01 30 a0 e3                                      mov r3, #1
005af564  c4 31 c4 e5                                      strb r3, [r4, #0x1c4]
005af568  a9 ff ff ea                                      b #0x5af414
; mapping-symbol data/literal pool
005af56c  08 0c 33 00 c8 0b 33 00                          .byte 0x08, 0x0c, 0x33, 0x00, 0xc8, 0x0b, 0x33, 0x00

; FUNCTION 0x005af654, declared_size=100, range_size=100, mode=arm
; class-group: void glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE24applyRenderStateCullFaceINS5_10renderpass12SRenderStateEEEvRKT_
; demangled: void glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::applyRenderStateCullFace<glitch::video::detail::renderpass::SRenderState>(glitch::video::detail::renderpass::SRenderState const&)
; decoder-mode: arm
005af654  70 40 2d e9                                      push {r4, r5, r6, lr}
005af658  c5 31 d0 e5                                      ldrb r3, [r0, #0x1c5]
005af65c  00 40 a0 e1                                      mov r4, r0
005af660  01 50 a0 e1                                      mov r5, r1
005af664  00 00 53 e3                                      cmp r3, #0
005af668  0c 00 00 0a                                      beq #0x5af6a0
005af66c  00 30 95 e5                                      ldr r3, [r5]
005af670  d8 21 94 e5                                      ldr r2, [r4, #0x1d8]
005af674  23 3f a0 e1                                      lsr r3, r3, #0x1e
005af678  02 00 53 e1                                      cmp r3, r2
005af67c  06 00 00 0a                                      beq #0x5af69c
005af680  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
005af684  d8 31 84 e5                                      str r3, [r4, #0x1d8]
005af688  02 20 8f e0                                      add r2, pc, r2
005af68c  50 20 82 e2                                      add r2, r2, #0x50
005af690  03 01 92 e7                                      ldr r0, [r2, r3, lsl #2]
005af694  70 40 bd e8                                      pop {r4, r5, r6, lr}
005af698  84 7c f5 ea                                      b #0x30e8b0
005af69c  70 80 bd e8                                      pop {r4, r5, r6, pc}
005af6a0  44 0b 00 e3                                      movw r0, #0xb44
005af6a4  a6 7b f5 eb                                      bl #0x30e544
005af6a8  01 30 a0 e3                                      mov r3, #1
005af6ac  c5 31 c4 e5                                      strb r3, [r4, #0x1c5]
005af6b0  ed ff ff ea                                      b #0x5af66c
; mapping-symbol data/literal pool
005af6b4  ac 09 33 00                                      .byte 0xac, 0x09, 0x33, 0x00

; FUNCTION 0x005af6fc, declared_size=100, range_size=100, mode=arm
; class-group: void glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE25applyRenderStateDepthTestINS5_10renderpass12SRenderStateEEEvRKT_
; demangled: void glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::applyRenderStateDepthTest<glitch::video::detail::renderpass::SRenderState>(glitch::video::detail::renderpass::SRenderState const&)
; decoder-mode: arm
005af6fc  70 40 2d e9                                      push {r4, r5, r6, lr}
005af700  c6 31 d0 e5                                      ldrb r3, [r0, #0x1c6]
005af704  00 40 a0 e1                                      mov r4, r0
005af708  01 50 a0 e1                                      mov r5, r1
005af70c  00 00 53 e3                                      cmp r3, #0
005af710  0c 00 00 0a                                      beq #0x5af748
005af714  00 30 95 e5                                      ldr r3, [r5]
005af718  e0 21 94 e5                                      ldr r2, [r4, #0x1e0]
005af71c  d3 3d e2 e7                                      ubfx r3, r3, #0x1b, #3
005af720  02 00 53 e1                                      cmp r3, r2
005af724  06 00 00 0a                                      beq #0x5af744
005af728  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
005af72c  e0 31 84 e5                                      str r3, [r4, #0x1e0]
005af730  02 20 8f e0                                      add r2, pc, r2
005af734  5c 20 82 e2                                      add r2, r2, #0x5c
005af738  03 01 92 e7                                      ldr r0, [r2, r3, lsl #2]
005af73c  70 40 bd e8                                      pop {r4, r5, r6, lr}
005af740  d4 7a f5 ea                                      b #0x30e298
005af744  70 80 bd e8                                      pop {r4, r5, r6, pc}
005af748  71 0b 00 e3                                      movw r0, #0xb71
005af74c  7c 7b f5 eb                                      bl #0x30e544
005af750  01 30 a0 e3                                      mov r3, #1
005af754  c6 31 c4 e5                                      strb r3, [r4, #0x1c6]
005af758  ed ff ff ea                                      b #0x5af714
; mapping-symbol data/literal pool
005af75c  04 09 33 00                                      .byte 0x04, 0x09, 0x33, 0x00

; FUNCTION 0x005af7a4, declared_size=132, range_size=132, mode=arm
; class-group: void glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE29applyRenderStatePolygonOffsetINS5_10renderpass12SRenderStateEEEvRKT_
; demangled: void glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::applyRenderStatePolygonOffset<glitch::video::detail::renderpass::SRenderState>(glitch::video::detail::renderpass::SRenderState const&)
; decoder-mode: arm
005af7a4  70 40 2d e9                                      push {r4, r5, r6, lr}
005af7a8  cc 31 d0 e5                                      ldrb r3, [r0, #0x1cc]
005af7ac  00 40 a0 e1                                      mov r4, r0
005af7b0  01 50 a0 e1                                      mov r5, r1
005af7b4  00 00 53 e3                                      cmp r3, #0
005af7b8  02 00 00 1a                                      bne #0x5af7c8
005af7bc  04 30 91 e5                                      ldr r3, [r1, #4]
005af7c0  02 06 13 e3                                      tst r3, #0x200000
005af7c4  12 00 00 1a                                      bne #0x5af814
005af7c8  14 60 95 e5                                      ldr r6, [r5, #0x14]
005af7cc  20 12 94 e5                                      ldr r1, [r4, #0x220]
005af7d0  18 50 95 e5                                      ldr r5, [r5, #0x18]
005af7d4  06 00 a0 e1                                      mov r0, r6
005af7d8  eb 79 f5 eb                                      bl #0x30df8c
005af7dc  00 00 50 e3                                      cmp r0, #0
005af7e0  05 00 00 1a                                      bne #0x5af7fc
005af7e4  06 00 a0 e1                                      mov r0, r6
005af7e8  05 10 a0 e1                                      mov r1, r5
005af7ec  bf 7c f5 eb                                      bl #0x30eaf0
005af7f0  24 52 84 e5                                      str r5, [r4, #0x224]
005af7f4  20 62 84 e5                                      str r6, [r4, #0x220]
005af7f8  70 80 bd e8                                      pop {r4, r5, r6, pc}
005af7fc  05 00 a0 e1                                      mov r0, r5
005af800  24 12 94 e5                                      ldr r1, [r4, #0x224]
005af804  e0 79 f5 eb                                      bl #0x30df8c
005af808  00 00 50 e3                                      cmp r0, #0
005af80c  f4 ff ff 0a                                      beq #0x5af7e4
005af810  70 80 bd e8                                      pop {r4, r5, r6, pc}
005af814  37 00 08 e3                                      movw r0, #0x8037
005af818  49 7b f5 eb                                      bl #0x30e544
005af81c  01 30 a0 e3                                      mov r3, #1
005af820  cc 31 c4 e5                                      strb r3, [r4, #0x1cc]
005af824  e7 ff ff ea                                      b #0x5af7c8

; FUNCTION 0x005af88c, declared_size=108, range_size=108, mode=arm
; class-group: void glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE30applyRenderStateSampleCoverageINS5_10renderpass12SRenderStateEEEvRKT_
; demangled: void glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::applyRenderStateSampleCoverage<glitch::video::detail::renderpass::SRenderState>(glitch::video::detail::renderpass::SRenderState const&)
; decoder-mode: arm
005af88c  70 40 2d e9                                      push {r4, r5, r6, lr}
005af890  d1 31 d0 e5                                      ldrb r3, [r0, #0x1d1]
005af894  00 40 a0 e1                                      mov r4, r0
005af898  01 60 a0 e1                                      mov r6, r1
005af89c  00 00 53 e3                                      cmp r3, #0
005af8a0  11 00 00 0a                                      beq #0x5af8ec
005af8a4  1c 50 96 e5                                      ldr r5, [r6, #0x1c]
005af8a8  28 12 94 e5                                      ldr r1, [r4, #0x228]
005af8ac  04 60 96 e5                                      ldr r6, [r6, #4]
005af8b0  05 00 a0 e1                                      mov r0, r5
005af8b4  b4 79 f5 eb                                      bl #0x30df8c
005af8b8  00 00 50 e3                                      cmp r0, #0
005af8bc  56 6d e0 e7                                      ubfx r6, r6, #0x1a, #1
005af8c0  05 00 00 1a                                      bne #0x5af8dc
005af8c4  05 00 a0 e1                                      mov r0, r5
005af8c8  06 10 a0 e1                                      mov r1, r6
005af8cc  d2 61 c4 e5                                      strb r6, [r4, #0x1d2]
005af8d0  28 52 84 e5                                      str r5, [r4, #0x228]
005af8d4  70 40 bd e8                                      pop {r4, r5, r6, lr}
005af8d8  3f 79 f5 ea                                      b #0x30dddc
005af8dc  d2 31 d4 e5                                      ldrb r3, [r4, #0x1d2]
005af8e0  06 00 53 e1                                      cmp r3, r6
005af8e4  f6 ff ff 1a                                      bne #0x5af8c4
005af8e8  70 80 bd e8                                      pop {r4, r5, r6, pc}
005af8ec  a0 00 08 e3                                      movw r0, #0x80a0
005af8f0  13 7b f5 eb                                      bl #0x30e544
005af8f4  ea ff ff ea                                      b #0x5af8a4

; FUNCTION 0x005afa78, declared_size=212, range_size=212, mode=arm
; class-group: void glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE23applyRenderStateStencilINS5_10renderpass12SRenderStateEEEvRKT_
; demangled: void glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::applyRenderStateStencil<glitch::video::detail::renderpass::SRenderState>(glitch::video::detail::renderpass::SRenderState const&)
; decoder-mode: arm
005afa78  70 40 2d e9                                      push {r4, r5, r6, lr}
005afa7c  d4 31 d0 e5                                      ldrb r3, [r0, #0x1d4]
005afa80  00 50 a0 e1                                      mov r5, r0
005afa84  01 60 a0 e1                                      mov r6, r1
005afa88  00 00 53 e3                                      cmp r3, #0
005afa8c  27 00 00 0a                                      beq #0x5afb30
005afa90  04 00 96 e5                                      ldr r0, [r6, #4]
005afa94  f0 41 95 e5                                      ldr r4, [r5, #0x1f0]
005afa98  00 20 96 e5                                      ldr r2, [r6]
005afa9c  07 30 00 e2                                      and r3, r0, #7
005afaa0  04 c0 a0 e1                                      mov ip, r4
005afaa4  52 14 e7 e7                                      ubfx r1, r2, #8, #8
005afaa8  13 40 c7 e7                                      bfi r4, r3, #0, #8
005afaac  11 44 cf e7                                      bfi r4, r1, #8, #8
005afab0  52 28 e7 e7                                      ubfx r2, r2, #0x10, #8
005afab4  12 48 d7 e7                                      bfi r4, r2, #0x10, #8
005afab8  0c 00 54 e1                                      cmp r4, ip
005afabc  06 00 00 0a                                      beq #0x5afadc
005afac0  7c 00 9f e5                                      ldr r0, [pc, #0x7c]
005afac4  00 00 8f e0                                      add r0, pc, r0
005afac8  03 31 80 e0                                      add r3, r0, r3, lsl #2
005afacc  5c 00 93 e5                                      ldr r0, [r3, #0x5c]
005afad0  ce 7a f5 eb                                      bl #0x30e610
005afad4  f0 41 85 e5                                      str r4, [r5, #0x1f0]
005afad8  04 00 96 e5                                      ldr r0, [r6, #4]
005afadc  f4 41 95 e5                                      ldr r4, [r5, #0x1f4]
005afae0  d0 11 e2 e7                                      ubfx r1, r0, #3, #3
005afae4  50 23 e2 e7                                      ubfx r2, r0, #6, #3
005afae8  04 30 a0 e1                                      mov r3, r4
005afaec  11 40 c7 e7                                      bfi r4, r1, #0, #8
005afaf0  12 44 cf e7                                      bfi r4, r2, #8, #8
005afaf4  d0 04 e2 e7                                      ubfx r0, r0, #9, #3
005afaf8  10 48 d7 e7                                      bfi r4, r0, #0x10, #8
005afafc  03 00 54 e1                                      cmp r4, r3
005afb00  09 00 00 0a                                      beq #0x5afb2c
005afb04  3c c0 9f e5                                      ldr ip, [pc, #0x3c]
005afb08  0c c0 8f e0                                      add ip, pc, ip
005afb0c  00 31 8c e0                                      add r3, ip, r0, lsl #2
005afb10  01 11 8c e0                                      add r1, ip, r1, lsl #2
005afb14  02 21 8c e0                                      add r2, ip, r2, lsl #2
005afb18  7c 00 91 e5                                      ldr r0, [r1, #0x7c]
005afb1c  7c 10 92 e5                                      ldr r1, [r2, #0x7c]
005afb20  7c 20 93 e5                                      ldr r2, [r3, #0x7c]
005afb24  16 7b f5 eb                                      bl #0x30e784
005afb28  f0 41 85 e5                                      str r4, [r5, #0x1f0]
005afb2c  70 80 bd e8                                      pop {r4, r5, r6, pc}
005afb30  b9 0e a0 e3                                      mov r0, #0xb90
005afb34  82 7a f5 eb                                      bl #0x30e544
005afb38  01 30 a0 e3                                      mov r3, #1
005afb3c  d4 31 c5 e5                                      strb r3, [r5, #0x1d4]
005afb40  d2 ff ff ea                                      b #0x5afa90
; mapping-symbol data/literal pool
005afb44  70 05 33 00 2c 05 33 00                          .byte 0x70, 0x05, 0x33, 0x00, 0x2c, 0x05, 0x33, 0x00

; FUNCTION 0x005b70cc, declared_size=268, range_size=268, mode=arm
; class-group: void glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE26applyRenderStateNonGroupedINS5_10renderpass12SRenderStateEEEvRKT_
; demangled: void glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::applyRenderStateNonGrouped<glitch::video::detail::renderpass::SRenderState>(glitch::video::detail::renderpass::SRenderState const&)
; decoder-mode: arm
005b70cc  70 40 2d e9                                      push {r4, r5, r6, lr}
005b70d0  00 40 a0 e1                                      mov r4, r0
005b70d4  04 00 91 e5                                      ldr r0, [r1, #4]
005b70d8  dc 31 94 e5                                      ldr r3, [r4, #0x1dc]
005b70dc  01 50 a0 e1                                      mov r5, r1
005b70e0  50 69 e0 e7                                      ubfx r6, r0, #0x12, #1
005b70e4  03 00 56 e1                                      cmp r6, r3
005b70e8  0a 00 00 0a                                      beq #0x5b7118
005b70ec  a0 34 d4 e5                                      ldrb r3, [r4, #0x4a0]
005b70f0  00 00 53 e3                                      cmp r3, #0
005b70f4  d8 30 9f e5                                      ldr r3, [pc, #0xd8]
005b70f8  01 20 66 12                                      rsbne r2, r6, #1
005b70fc  06 20 a0 01                                      moveq r2, r6
005b7100  03 30 8f e0                                      add r3, pc, r3
005b7104  02 31 83 e0                                      add r3, r3, r2, lsl #2
005b7108  9c 00 93 e5                                      ldr r0, [r3, #0x9c]
005b710c  59 5b f5 eb                                      bl #0x30de78
005b7110  dc 61 84 e5                                      str r6, [r4, #0x1dc]
005b7114  04 00 95 e5                                      ldr r0, [r5, #4]
005b7118  c7 31 d4 e5                                      ldrb r3, [r4, #0x1c7]
005b711c  50 0a e0 e7                                      ubfx r0, r0, #0x14, #1
005b7120  00 00 53 e1                                      cmp r3, r0
005b7124  01 00 00 0a                                      beq #0x5b7130
005b7128  c7 01 c4 e5                                      strb r0, [r4, #0x1c7]
005b712c  41 5c f5 eb                                      bl #0x30e238
005b7130  0c 60 95 e5                                      ldr r6, [r5, #0xc]
005b7134  18 12 94 e5                                      ldr r1, [r4, #0x218]
005b7138  06 00 a0 e1                                      mov r0, r6
005b713c  92 5b f5 eb                                      bl #0x30df8c
005b7140  00 00 50 e3                                      cmp r0, #0
005b7144  1e 00 00 0a                                      beq #0x5b71c4
005b7148  10 60 95 e5                                      ldr r6, [r5, #0x10]
005b714c  1c 12 94 e5                                      ldr r1, [r4, #0x21c]
005b7150  06 00 a0 e1                                      mov r0, r6
005b7154  8c 5b f5 eb                                      bl #0x30df8c
005b7158  00 00 50 e3                                      cmp r0, #0
005b715c  1c 62 84 05                                      streq r6, [r4, #0x21c]
005b7160  04 30 95 e5                                      ldr r3, [r5, #4]
005b7164  e4 11 94 e5                                      ldr r1, [r4, #0x1e4]
005b7168  53 26 e1 e7                                      ubfx r2, r3, #0xc, #2
005b716c  01 00 52 e1                                      cmp r2, r1
005b7170  e4 21 84 15                                      strne r2, [r4, #0x1e4]
005b7174  04 30 95 15                                      ldrne r3, [r5, #4]
005b7178  e8 11 94 e5                                      ldr r1, [r4, #0x1e8]
005b717c  53 27 e1 e7                                      ubfx r2, r3, #0xe, #2
005b7180  01 00 52 e1                                      cmp r2, r1
005b7184  e8 21 84 15                                      strne r2, [r4, #0x1e8]
005b7188  04 30 95 15                                      ldrne r3, [r5, #4]
005b718c  d0 21 d4 e5                                      ldrb r2, [r4, #0x1d0]
005b7190  53 3c e0 e7                                      ubfx r3, r3, #0x18, #1
005b7194  03 00 52 e1                                      cmp r2, r3
005b7198  08 00 00 0a                                      beq #0x5b71c0
005b719c  00 00 53 e3                                      cmp r3, #0
005b71a0  d0 31 c4 e5                                      strb r3, [r4, #0x1d0]
005b71a4  02 00 00 1a                                      bne #0x5b71b4
005b71a8  9e 00 08 e3                                      movw r0, #0x809e
005b71ac  70 40 bd e8                                      pop {r4, r5, r6, lr}
005b71b0  6c 5b f5 ea                                      b #0x30df68
005b71b4  9e 00 08 e3                                      movw r0, #0x809e
005b71b8  70 40 bd e8                                      pop {r4, r5, r6, lr}
005b71bc  e0 5c f5 ea                                      b #0x30e544
005b71c0  70 80 bd e8                                      pop {r4, r5, r6, pc}
005b71c4  18 62 84 e5                                      str r6, [r4, #0x218]
005b71c8  06 00 a0 e1                                      mov r0, r6
005b71cc  c2 5e f5 eb                                      bl #0x30ecdc
005b71d0  dc ff ff ea                                      b #0x5b7148
; mapping-symbol data/literal pool
005b71d4  34 8f 32 00                                      .byte 0x34, 0x8f, 0x32, 0x00

; FUNCTION 0x005b759c, declared_size=296, range_size=296, mode=arm
; class-group: void glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE23applyRenderStateScissorINS5_6driver12SRenderStateEEEvRKT_
; demangled: void glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::applyRenderStateScissor<glitch::video::detail::driver::SRenderState>(glitch::video::detail::driver::SRenderState const&)
; decoder-mode: arm
005b759c  70 40 2d e9                                      push {r4, r5, r6, lr}
005b75a0  00 60 91 e5                                      ldr r6, [r1]
005b75a4  d3 31 d0 e5                                      ldrb r3, [r0, #0x1d3]
005b75a8  20 d0 4d e2                                      sub sp, sp, #0x20
005b75ac  d6 6a e0 e7                                      ubfx r6, r6, #0x15, #1
005b75b0  06 00 53 e1                                      cmp r3, r6
005b75b4  01 50 a0 e1                                      mov r5, r1
005b75b8  00 40 a0 e1                                      mov r4, r0
005b75bc  04 00 00 0a                                      beq #0x5b75d4
005b75c0  00 00 56 e3                                      cmp r6, #0
005b75c4  3a 00 00 1a                                      bne #0x5b76b4
005b75c8  11 0c 00 e3                                      movw r0, #0xc11
005b75cc  65 5a f5 eb                                      bl #0x30df68
005b75d0  d3 61 c4 e5                                      strb r6, [r4, #0x1d3]
005b75d4  cc 20 94 e5                                      ldr r2, [r4, #0xcc]
005b75d8  c8 30 94 e5                                      ldr r3, [r4, #0xc8]
005b75dc  02 30 63 e0                                      rsb r3, r3, r2
005b75e0  43 31 a0 e1                                      asr r3, r3, #2
005b75e4  01 00 53 e3                                      cmp r3, #1
005b75e8  3c 61 94 95                                      ldrls r6, [r4, #0x13c]
005b75ec  3c 32 94 e5                                      ldr r3, [r4, #0x23c]
005b75f0  00 60 a0 83                                      movhi r6, #0
005b75f4  03 00 56 e1                                      cmp r6, r3
005b75f8  1c 00 00 0a                                      beq #0x5b7670
005b75fc  14 c0 8d e2                                      add ip, sp, #0x14
005b7600  00 c0 8d e5                                      str ip, [sp]
005b7604  10 c0 8d e2                                      add ip, sp, #0x10
005b7608  04 c0 8d e5                                      str ip, [sp, #4]
005b760c  01 c0 a0 e3                                      mov ip, #1
005b7610  14 10 85 e2                                      add r1, r5, #0x14
005b7614  1c 20 8d e2                                      add r2, sp, #0x1c
005b7618  18 30 8d e2                                      add r3, sp, #0x18
005b761c  08 c0 8d e5                                      str ip, [sp, #8]
005b7620  04 00 a0 e1                                      mov r0, r4
005b7624  00 c0 a0 e3                                      mov ip, #0
005b7628  0c c0 8d e5                                      str ip, [sp, #0xc]
005b762c  94 98 04 eb                                      bl #0x6dd884
005b7630  10 30 9d e5                                      ldr r3, [sp, #0x10]
005b7634  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
005b7638  18 10 9d e5                                      ldr r1, [sp, #0x18]
005b763c  14 20 9d e5                                      ldr r2, [sp, #0x14]
005b7640  aa 5b f5 eb                                      bl #0x30e4f0
005b7644  14 30 95 e5                                      ldr r3, [r5, #0x14]
005b7648  2c 32 84 e5                                      str r3, [r4, #0x22c]
005b764c  18 30 95 e5                                      ldr r3, [r5, #0x18]
005b7650  30 32 84 e5                                      str r3, [r4, #0x230]
005b7654  1c 30 95 e5                                      ldr r3, [r5, #0x1c]
005b7658  34 32 84 e5                                      str r3, [r4, #0x234]
005b765c  20 30 95 e5                                      ldr r3, [r5, #0x20]
005b7660  3c 62 84 e5                                      str r6, [r4, #0x23c]
005b7664  38 32 84 e5                                      str r3, [r4, #0x238]
005b7668  20 d0 8d e2                                      add sp, sp, #0x20
005b766c  70 80 bd e8                                      pop {r4, r5, r6, pc}
005b7670  14 20 95 e5                                      ldr r2, [r5, #0x14]
005b7674  2c 32 94 e5                                      ldr r3, [r4, #0x22c]
005b7678  03 00 52 e1                                      cmp r2, r3
005b767c  de ff ff 1a                                      bne #0x5b75fc
005b7680  18 20 95 e5                                      ldr r2, [r5, #0x18]
005b7684  30 32 94 e5                                      ldr r3, [r4, #0x230]
005b7688  03 00 52 e1                                      cmp r2, r3
005b768c  da ff ff 1a                                      bne #0x5b75fc
005b7690  1c 20 95 e5                                      ldr r2, [r5, #0x1c]
005b7694  34 32 94 e5                                      ldr r3, [r4, #0x234]
005b7698  03 00 52 e1                                      cmp r2, r3
005b769c  d6 ff ff 1a                                      bne #0x5b75fc
005b76a0  20 20 95 e5                                      ldr r2, [r5, #0x20]
005b76a4  38 32 94 e5                                      ldr r3, [r4, #0x238]
005b76a8  03 00 52 e1                                      cmp r2, r3
005b76ac  d2 ff ff 1a                                      bne #0x5b75fc
005b76b0  ec ff ff ea                                      b #0x5b7668
005b76b4  11 0c 00 e3                                      movw r0, #0xc11
005b76b8  a1 5b f5 eb                                      bl #0x30e544
005b76bc  d3 61 c4 e5                                      strb r6, [r4, #0x1d3]
005b76c0  c3 ff ff ea                                      b #0x5b75d4

; FUNCTION 0x005b76c4, declared_size=468, range_size=468, mode=arm
; class-group: void glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE26applyRenderStateNonGroupedINS5_6driver12SRenderStateEEEvRKT_
; demangled: void glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::applyRenderStateNonGrouped<glitch::video::detail::driver::SRenderState>(glitch::video::detail::driver::SRenderState const&)
; decoder-mode: arm
005b76c4  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
005b76c8  00 30 91 e5                                      ldr r3, [r1]
005b76cc  00 40 a0 e1                                      mov r4, r0
005b76d0  00 c0 a0 e3                                      mov ip, #0
005b76d4  53 08 e0 e7                                      ubfx r0, r3, #0x10, #1
005b76d8  01 50 a0 e1                                      mov r5, r1
005b76dc  10 c0 c7 e7                                      bfi ip, r0, #0, #8
005b76e0  d3 18 e0 e7                                      ubfx r1, r3, #0x11, #1
005b76e4  53 29 e0 e7                                      ubfx r2, r3, #0x12, #1
005b76e8  11 c4 cf e7                                      bfi ip, r1, #8, #8
005b76ec  ec e1 94 e5                                      ldr lr, [r4, #0x1ec]
005b76f0  12 c8 d7 e7                                      bfi ip, r2, #0x10, #8
005b76f4  d3 39 e0 e7                                      ubfx r3, r3, #0x13, #1
005b76f8  13 cc df e7                                      bfi ip, r3, #0x18, #8
005b76fc  0c 00 5e e1                                      cmp lr, ip
005b7700  0c d0 4d e2                                      sub sp, sp, #0xc
005b7704  01 00 00 0a                                      beq #0x5b7710
005b7708  ec c1 84 e5                                      str ip, [r4, #0x1ec]
005b770c  ee 59 f5 eb                                      bl #0x30decc
005b7710  08 32 d4 e5                                      ldrb r3, [r4, #0x208]
005b7714  0b 22 d4 e5                                      ldrb r2, [r4, #0x20b]
005b7718  07 70 d5 e5                                      ldrb r7, [r5, #7]
005b771c  06 60 d5 e5                                      ldrb r6, [r5, #6]
005b7720  05 80 d5 e5                                      ldrb r8, [r5, #5]
005b7724  04 00 d5 e5                                      ldrb r0, [r5, #4]
005b7728  0a c2 d4 e5                                      ldrb ip, [r4, #0x20a]
005b772c  09 12 d4 e5                                      ldrb r1, [r4, #0x209]
005b7730  00 30 cd e5                                      strb r3, [sp]
005b7734  02 c0 cd e5                                      strb ip, [sp, #2]
005b7738  01 10 cd e5                                      strb r1, [sp, #1]
005b773c  03 20 cd e5                                      strb r2, [sp, #3]
005b7740  07 70 cd e5                                      strb r7, [sp, #7]
005b7744  06 60 cd e5                                      strb r6, [sp, #6]
005b7748  05 80 cd e5                                      strb r8, [sp, #5]
005b774c  04 00 cd e5                                      strb r0, [sp, #4]
005b7750  0c 00 9d e8                                      ldm sp, {r2, r3}
005b7754  03 00 52 e1                                      cmp r2, r3
005b7758  12 00 00 0a                                      beq #0x5b77a8
005b775c  0a 62 c4 e5                                      strb r6, [r4, #0x20a]
005b7760  09 82 c4 e5                                      strb r8, [r4, #0x209]
005b7764  0b 72 c4 e5                                      strb r7, [r4, #0x20b]
005b7768  08 02 c4 e5                                      strb r0, [r4, #0x208]
005b776c  db 5a f5 eb                                      bl #0x30e2e0
005b7770  00 a0 a0 e1                                      mov sl, r0
005b7774  08 00 a0 e1                                      mov r0, r8
005b7778  d8 5a f5 eb                                      bl #0x30e2e0
005b777c  00 80 a0 e1                                      mov r8, r0
005b7780  06 00 a0 e1                                      mov r0, r6
005b7784  d5 5a f5 eb                                      bl #0x30e2e0
005b7788  00 60 a0 e1                                      mov r6, r0
005b778c  07 00 a0 e1                                      mov r0, r7
005b7790  d2 5a f5 eb                                      bl #0x30e2e0
005b7794  08 10 a0 e1                                      mov r1, r8
005b7798  00 30 a0 e1                                      mov r3, r0
005b779c  06 20 a0 e1                                      mov r2, r6
005b77a0  0a 00 a0 e1                                      mov r0, sl
005b77a4  95 5c f5 eb                                      bl #0x30ea00
005b77a8  08 60 95 e5                                      ldr r6, [r5, #8]
005b77ac  0c 12 94 e5                                      ldr r1, [r4, #0x20c]
005b77b0  06 00 a0 e1                                      mov r0, r6
005b77b4  f4 59 f5 eb                                      bl #0x30df8c
005b77b8  00 00 50 e3                                      cmp r0, #0
005b77bc  2d 00 00 0a                                      beq #0x5b7878
005b77c0  0c 60 95 e5                                      ldr r6, [r5, #0xc]
005b77c4  10 12 94 e5                                      ldr r1, [r4, #0x210]
005b77c8  10 70 95 e5                                      ldr r7, [r5, #0x10]
005b77cc  06 00 a0 e1                                      mov r0, r6
005b77d0  ed 59 f5 eb                                      bl #0x30df8c
005b77d4  00 00 50 e3                                      cmp r0, #0
005b77d8  1e 00 00 1a                                      bne #0x5b7858
005b77dc  06 00 a0 e1                                      mov r0, r6
005b77e0  07 10 a0 e1                                      mov r1, r7
005b77e4  7f 5c f5 eb                                      bl #0x30e9e8
005b77e8  10 62 84 e5                                      str r6, [r4, #0x210]
005b77ec  14 72 84 e5                                      str r7, [r4, #0x214]
005b77f0  00 30 95 e5                                      ldr r3, [r5]
005b77f4  c8 11 d4 e5                                      ldrb r1, [r4, #0x1c8]
005b77f8  53 2a e0 e7                                      ubfx r2, r3, #0x14, #1
005b77fc  02 00 51 e1                                      cmp r1, r2
005b7800  05 00 00 0a                                      beq #0x5b781c
005b7804  00 00 52 e3                                      cmp r2, #0
005b7808  c8 21 c4 e5                                      strb r2, [r4, #0x1c8]
005b780c  1d 00 00 1a                                      bne #0x5b7888
005b7810  bd 0e a0 e3                                      mov r0, #0xbd0
005b7814  d3 59 f5 eb                                      bl #0x30df68
005b7818  00 30 95 e5                                      ldr r3, [r5]
005b781c  f8 21 d4 e5                                      ldrb r2, [r4, #0x1f8]
005b7820  73 00 ef e6                                      uxtb r0, r3
005b7824  00 00 52 e1                                      cmp r2, r0
005b7828  02 00 00 0a                                      beq #0x5b7838
005b782c  f8 01 c4 e5                                      strb r0, [r4, #0x1f8]
005b7830  49 5b f5 eb                                      bl #0x30e55c
005b7834  00 30 95 e5                                      ldr r3, [r5]
005b7838  f9 21 d4 e5                                      ldrb r2, [r4, #0x1f9]
005b783c  53 04 e7 e7                                      ubfx r0, r3, #8, #8
005b7840  00 00 52 e1                                      cmp r2, r0
005b7844  09 00 00 0a                                      beq #0x5b7870
005b7848  f9 01 c4 e5                                      strb r0, [r4, #0x1f9]
005b784c  0c d0 8d e2                                      add sp, sp, #0xc
005b7850  f0 45 bd e8                                      pop {r4, r5, r6, r7, r8, sl, lr}
005b7854  3b 5d f5 ea                                      b #0x30ed48
005b7858  07 00 a0 e1                                      mov r0, r7
005b785c  14 12 94 e5                                      ldr r1, [r4, #0x214]
005b7860  c9 59 f5 eb                                      bl #0x30df8c
005b7864  00 00 50 e3                                      cmp r0, #0
005b7868  e0 ff ff 1a                                      bne #0x5b77f0
005b786c  da ff ff ea                                      b #0x5b77dc
005b7870  0c d0 8d e2                                      add sp, sp, #0xc
005b7874  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
005b7878  0c 62 84 e5                                      str r6, [r4, #0x20c]
005b787c  06 00 a0 e1                                      mov r0, r6
005b7880  05 5b f5 eb                                      bl #0x30e49c
005b7884  cd ff ff ea                                      b #0x5b77c0
005b7888  bd 0e a0 e3                                      mov r0, #0xbd0
005b788c  2c 5b f5 eb                                      bl #0x30e544
005b7890  00 30 95 e5                                      ldr r3, [r5]
005b7894  e0 ff ff ea                                      b #0x5b781c

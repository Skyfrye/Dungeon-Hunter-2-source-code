; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005b11ec, declared_size=88, range_size=88, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CRenderBuffer
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE13CRenderBuffer4bindEv
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CRenderBuffer::bind()
; decoder-mode: arm
005b11ec  10 40 2d e9                                      push {r4, lr}
005b11f0  18 30 90 e5                                      ldr r3, [r0, #0x18]
005b11f4  00 40 a0 e1                                      mov r4, r0
005b11f8  00 00 53 e3                                      cmp r3, #0
005b11fc  00 00 00 0a                                      beq #0x5b1204
005b1200  10 80 bd e8                                      pop {r4, pc}
005b1204  18 10 84 e2                                      add r1, r4, #0x18
005b1208  01 00 a0 e3                                      mov r0, #1
005b120c  41 75 f5 eb                                      bl #0x30e718
005b1210  18 10 94 e5                                      ldr r1, [r4, #0x18]
005b1214  41 0d 08 e3                                      movw r0, #0x8d41
005b1218  b2 73 f5 eb                                      bl #0x30e0e8
005b121c  14 10 94 e5                                      ldr r1, [r4, #0x14]
005b1220  08 20 94 e5                                      ldr r2, [r4, #8]
005b1224  14 00 a0 e3                                      mov r0, #0x14
005b1228  10 30 94 e5                                      ldr r3, [r4, #0x10]
005b122c  90 12 22 e0                                      mla r2, r0, r2, r1
005b1230  41 0d 08 e3                                      movw r0, #0x8d41
005b1234  bc 14 92 e5                                      ldr r1, [r2, #0x4bc]
005b1238  0c 20 94 e5                                      ldr r2, [r4, #0xc]
005b123c  10 40 bd e8                                      pop {r4, lr}
005b1240  21 76 f5 ea                                      b #0x30eacc

; FUNCTION 0x005b130c, declared_size=44, range_size=44, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CRenderBuffer
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE13CRenderBuffer6unbindEv
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CRenderBuffer::unbind()
; decoder-mode: arm
005b130c  10 40 2d e9                                      push {r4, lr}
005b1310  18 30 90 e5                                      ldr r3, [r0, #0x18]
005b1314  00 40 a0 e1                                      mov r4, r0
005b1318  00 00 53 e3                                      cmp r3, #0
005b131c  04 00 00 0a                                      beq #0x5b1334
005b1320  01 00 a0 e3                                      mov r0, #1
005b1324  18 10 84 e2                                      add r1, r4, #0x18
005b1328  db 75 f5 eb                                      bl #0x30ea9c
005b132c  00 30 a0 e3                                      mov r3, #0
005b1330  18 30 84 e5                                      str r3, [r4, #0x18]
005b1334  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005b1398, declared_size=64, range_size=64, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CRenderBuffer
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE13CRenderBufferD1Ev
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CRenderBuffer::~CRenderBuffer()
; decoder-mode: arm
005b1398  30 30 9f e5                                      ldr r3, [pc, #0x30]
005b139c  30 20 9f e5                                      ldr r2, [pc, #0x30]
005b13a0  10 40 2d e9                                      push {r4, lr}
005b13a4  03 30 8f e0                                      add r3, pc, r3
005b13a8  02 20 93 e7                                      ldr r2, [r3, r2]
005b13ac  00 40 a0 e1                                      mov r4, r0
005b13b0  08 20 82 e2                                      add r2, r2, #8
005b13b4  00 20 80 e5                                      str r2, [r0]
005b13b8  d3 ff ff eb                                      bl #0x5b130c
005b13bc  14 00 94 e5                                      ldr r0, [r4, #0x14]
005b13c0  04 10 a0 e1                                      mov r1, r4
005b13c4  db ff ff eb                                      bl #0x5b1338
005b13c8  04 00 a0 e1                                      mov r0, r4
005b13cc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
005b13d0  ec 36 3e 00 08 2b 00 00                          .byte 0xec, 0x36, 0x3e, 0x00, 0x08, 0x2b, 0x00, 0x00

; FUNCTION 0x005b13d8, declared_size=28, range_size=28, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CRenderBuffer
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE13CRenderBufferD0Ev
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CRenderBuffer::~CRenderBuffer()
; decoder-mode: arm
005b13d8  10 40 2d e9                                      push {r4, lr}
005b13dc  00 40 a0 e1                                      mov r4, r0
005b13e0  ec ff ff eb                                      bl #0x5b1398
005b13e4  04 00 a0 e1                                      mov r0, r4
005b13e8  b0 73 f5 eb                                      bl #0x30e2b0
005b13ec  04 00 a0 e1                                      mov r0, r4
005b13f0  10 80 bd e8                                      pop {r4, pc}

; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005af1d0, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CFramebuffer
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE12CFramebufferD1Ev
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CFramebuffer::~CFramebuffer()
; decoder-mode: arm
005af1d0  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b04d4, declared_size=52, range_size=52, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CFramebuffer
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE12CFramebufferD0Ev
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CFramebuffer::~CFramebuffer()
; decoder-mode: arm
005b04d4  24 30 9f e5                                      ldr r3, [pc, #0x24]
005b04d8  24 20 9f e5                                      ldr r2, [pc, #0x24]
005b04dc  10 40 2d e9                                      push {r4, lr}
005b04e0  03 30 8f e0                                      add r3, pc, r3
005b04e4  02 20 93 e7                                      ldr r2, [r3, r2]
005b04e8  00 40 a0 e1                                      mov r4, r0
005b04ec  08 20 82 e2                                      add r2, r2, #8
005b04f0  00 20 80 e5                                      str r2, [r0]
005b04f4  6d 77 f5 eb                                      bl #0x30e2b0
005b04f8  04 00 a0 e1                                      mov r0, r4
005b04fc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
005b0500  b0 45 3e 00 60 10 00 00                          .byte 0xb0, 0x45, 0x3e, 0x00, 0x60, 0x10, 0x00, 0x00

; FUNCTION 0x005b1244, declared_size=200, range_size=200, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CFramebuffer
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE12CFramebuffer4bindEv
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CFramebuffer::bind()
; decoder-mode: arm
005b1244  70 40 2d e9                                      push {r4, r5, r6, lr}
005b1248  08 30 90 e5                                      ldr r3, [r0, #8]
005b124c  00 40 a0 e1                                      mov r4, r0
005b1250  9c 20 93 e5                                      ldr r2, [r3, #0x9c]
005b1254  02 0b 12 e3                                      tst r2, #0x800
005b1258  24 00 00 0a                                      beq #0x5b12f0
005b125c  40 0d 08 e3                                      movw r0, #0x8d40
005b1260  34 10 94 e5                                      ldr r1, [r4, #0x34]
005b1264  ba 73 f5 eb                                      bl #0x30e154
005b1268  08 30 94 e5                                      ldr r3, [r4, #8]
005b126c  14 10 84 e2                                      add r1, r4, #0x14
005b1270  03 00 a0 e1                                      mov r0, r3
005b1274  00 30 93 e5                                      ldr r3, [r3]
005b1278  0f e0 a0 e1                                      mov lr, pc
005b127c  e8 f1 93 e5                                      ldr pc, [r3, #0x1e8]
005b1280  08 30 94 e5                                      ldr r3, [r4, #8]
005b1284  a0 24 d3 e5                                      ldrb r2, [r3, #0x4a0]
005b1288  00 00 52 e3                                      cmp r2, #0
005b128c  16 00 00 0a                                      beq #0x5b12ec
005b1290  00 20 a0 e3                                      mov r2, #0
005b1294  a0 24 c3 e5                                      strb r2, [r3, #0x4a0]
005b1298  08 30 94 e5                                      ldr r3, [r4, #8]
005b129c  02 10 a0 e3                                      mov r1, #2
005b12a0  03 00 a0 e1                                      mov r0, r3
005b12a4  00 30 93 e5                                      ldr r3, [r3]
005b12a8  0f e0 a0 e1                                      mov lr, pc
005b12ac  70 f0 93 e5                                      ldr pc, [r3, #0x70]
005b12b0  08 20 94 e5                                      ldr r2, [r4, #8]
005b12b4  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
005b12b8  00 50 a0 e1                                      mov r5, r0
005b12bc  dc 21 92 e5                                      ldr r2, [r2, #0x1dc]
005b12c0  03 30 8f e0                                      add r3, pc, r3
005b12c4  9c 30 83 e2                                      add r3, r3, #0x9c
005b12c8  02 01 93 e7                                      ldr r0, [r3, r2, lsl #2]
005b12cc  e9 72 f5 eb                                      bl #0x30de78
005b12d0  08 30 94 e5                                      ldr r3, [r4, #8]
005b12d4  05 20 a0 e1                                      mov r2, r5
005b12d8  02 10 a0 e3                                      mov r1, #2
005b12dc  03 00 a0 e1                                      mov r0, r3
005b12e0  00 30 93 e5                                      ldr r3, [r3]
005b12e4  0f e0 a0 e1                                      mov lr, pc
005b12e8  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
005b12ec  70 80 bd e8                                      pop {r4, r5, r6, pc}
005b12f0  03 00 a0 e1                                      mov r0, r3
005b12f4  00 10 e0 e3                                      mvn r1, #0
005b12f8  00 30 93 e5                                      ldr r3, [r3]
005b12fc  0f e0 a0 e1                                      mov lr, pc
005b1300  a8 f0 93 e5                                      ldr pc, [r3, #0xa8]
005b1304  d7 ff ff ea                                      b #0x5b1268
; mapping-symbol data/literal pool
005b1308  74 ed 32 00                                      .byte 0x74, 0xed, 0x32, 0x00

; FUNCTION 0x005b1bd8, declared_size=80, range_size=80, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CFramebuffer
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE12CFramebufferC1EPS7_RKNS_4core11dimension2dIiEE
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CFramebuffer::CFramebuffer(glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>*, glitch::core::dimension2d<int> const&)
; decoder-mode: arm
005b1bd8  70 40 2d e9                                      push {r4, r5, r6, lr}
005b1bdc  3c 40 9f e5                                      ldr r4, [pc, #0x3c]
005b1be0  00 50 a0 e1                                      mov r5, r0
005b1be4  01 60 a0 e1                                      mov r6, r1
005b1be8  42 b0 04 eb                                      bl #0x6ddcf8
005b1bec  30 30 9f e5                                      ldr r3, [pc, #0x30]
005b1bf0  04 40 8f e0                                      add r4, pc, r4
005b1bf4  03 30 94 e7                                      ldr r3, [r4, r3]
005b1bf8  08 30 83 e2                                      add r3, r3, #8
005b1bfc  00 30 85 e5                                      str r3, [r5]
005b1c00  9c 30 96 e5                                      ldr r3, [r6, #0x9c]
005b1c04  02 0b 13 e3                                      tst r3, #0x800
005b1c08  02 00 00 0a                                      beq #0x5b1c18
005b1c0c  a6 0c 08 e3                                      movw r0, #0x8ca6
005b1c10  34 10 85 e2                                      add r1, r5, #0x34
005b1c14  53 72 f5 eb                                      bl #0x30e568
005b1c18  05 00 a0 e1                                      mov r0, r5
005b1c1c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005b1c20  a0 2e 3e 00 60 10 00 00                          .byte 0xa0, 0x2e, 0x3e, 0x00, 0x60, 0x10, 0x00, 0x00

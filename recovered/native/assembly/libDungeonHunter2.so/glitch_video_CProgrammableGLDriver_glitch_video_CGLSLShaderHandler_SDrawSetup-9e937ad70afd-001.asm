; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005af098, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::SDrawSetup
; alias: _ZN6glitch5video21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEE10SDrawSetupD2Ev
; demangled: glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::SDrawSetup::~SDrawSetup()
; decoder-mode: arm
005af098  1e ff 2f e1                                      bx lr

; FUNCTION 0x005af09c, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::SDrawSetup
; alias: _ZN6glitch5video21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEE10SDrawSetupD1Ev
; demangled: glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::SDrawSetup::~SDrawSetup()
; decoder-mode: arm
005af09c  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b6768, declared_size=36, range_size=36, mode=arm
; class-group: glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::SDrawSetup
; alias: _ZN6glitch5video21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEE10SDrawSetupC1EPS3_PKNS0_14CVertexStreamsERKNS0_16CPrimitiveStreamEPKhj
; demangled: glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::SDrawSetup::SDrawSetup(glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>*, glitch::video::CVertexStreams const*, glitch::video::CPrimitiveStream const&, unsigned char const*, unsigned int)
; decoder-mode: arm
005b6768  10 40 2d e9                                      push {r4, lr}
005b676c  00 10 80 e5                                      str r1, [r0]
005b6770  00 40 a0 e1                                      mov r4, r0
005b6774  08 30 9d e5                                      ldr r3, [sp, #8]
005b6778  01 00 a0 e1                                      mov r0, r1
005b677c  f4 10 91 e5                                      ldr r1, [r1, #0xf4]
005b6780  7f ff ff eb                                      bl #0x5b6584
005b6784  04 00 a0 e1                                      mov r0, r4
005b6788  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005b678c, declared_size=36, range_size=36, mode=arm
; class-group: glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::SDrawSetup
; alias: _ZN6glitch5video21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEE10SDrawSetupC2EPS3_PKNS0_14CVertexStreamsERKNS0_16CPrimitiveStreamEPKhj
; demangled: glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::SDrawSetup::SDrawSetup(glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>*, glitch::video::CVertexStreams const*, glitch::video::CPrimitiveStream const&, unsigned char const*, unsigned int)
; decoder-mode: arm
005b678c  10 40 2d e9                                      push {r4, lr}
005b6790  00 10 80 e5                                      str r1, [r0]
005b6794  00 40 a0 e1                                      mov r4, r0
005b6798  08 30 9d e5                                      ldr r3, [sp, #8]
005b679c  01 00 a0 e1                                      mov r0, r1
005b67a0  f4 10 91 e5                                      ldr r1, [r1, #0xf4]
005b67a4  76 ff ff eb                                      bl #0x5b6584
005b67a8  04 00 a0 e1                                      mov r0, r4
005b67ac  10 80 bd e8                                      pop {r4, pc}

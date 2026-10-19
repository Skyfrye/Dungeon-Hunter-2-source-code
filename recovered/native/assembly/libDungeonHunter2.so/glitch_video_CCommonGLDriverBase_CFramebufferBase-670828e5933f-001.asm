; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006dcbf8, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::CCommonGLDriverBase::CFramebufferBase
; alias: _ZN6glitch5video19CCommonGLDriverBase16CFramebufferBase6unbindEv
; demangled: glitch::video::CCommonGLDriverBase::CFramebufferBase::unbind()
; decoder-mode: arm
006dcbf8  1e ff 2f e1                                      bx lr

; FUNCTION 0x006dd10c, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::CCommonGLDriverBase::CFramebufferBase
; alias: _ZN6glitch5video19CCommonGLDriverBase16CFramebufferBaseD1Ev
; demangled: glitch::video::CCommonGLDriverBase::CFramebufferBase::~CFramebufferBase()
; decoder-mode: arm
006dd10c  1e ff 2f e1                                      bx lr

; FUNCTION 0x006dd130, declared_size=20, range_size=20, mode=arm
; class-group: glitch::video::CCommonGLDriverBase::CFramebufferBase
; alias: _ZN6glitch5video19CCommonGLDriverBase16CFramebufferBaseD0Ev
; demangled: glitch::video::CCommonGLDriverBase::CFramebufferBase::~CFramebufferBase()
; decoder-mode: arm
006dd130  10 40 2d e9                                      push {r4, lr}
006dd134  00 40 a0 e1                                      mov r4, r0
006dd138  5c c4 f0 eb                                      bl #0x30e2b0
006dd13c  04 00 a0 e1                                      mov r0, r4
006dd140  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006ddcac, declared_size=76, range_size=76, mode=arm
; class-group: glitch::video::CCommonGLDriverBase::CFramebufferBase
; alias: _ZN6glitch5video19CCommonGLDriverBase16CFramebufferBaseC1EPS1_RKNS_4core11dimension2dIiEE
; demangled: glitch::video::CCommonGLDriverBase::CFramebufferBase::CFramebufferBase(glitch::video::CCommonGLDriverBase*, glitch::core::dimension2d<int> const&)
; decoder-mode: arm
006ddcac  70 40 2d e9                                      push {r4, r5, r6, lr}
006ddcb0  38 50 9f e5                                      ldr r5, [pc, #0x38]
006ddcb4  00 40 a0 e1                                      mov r4, r0
006ddcb8  0a fa ff eb                                      bl #0x6dc4e8
006ddcbc  30 20 9f e5                                      ldr r2, [pc, #0x30]
006ddcc0  05 50 8f e0                                      add r5, pc, r5
006ddcc4  00 30 a0 e3                                      mov r3, #0
006ddcc8  02 20 95 e7                                      ldr r2, [r5, r2]
006ddccc  34 30 84 e5                                      str r3, [r4, #0x34]
006ddcd0  24 30 84 e5                                      str r3, [r4, #0x24]
006ddcd4  08 20 82 e2                                      add r2, r2, #8
006ddcd8  00 20 84 e5                                      str r2, [r4]
006ddcdc  28 30 84 e5                                      str r3, [r4, #0x28]
006ddce0  2c 30 84 e5                                      str r3, [r4, #0x2c]
006ddce4  30 30 84 e5                                      str r3, [r4, #0x30]
006ddce8  04 00 a0 e1                                      mov r0, r4
006ddcec  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
006ddcf0  d0 6d 2b 00 f8 37 00 00                          .byte 0xd0, 0x6d, 0x2b, 0x00, 0xf8, 0x37, 0x00, 0x00

; FUNCTION 0x006ddcf8, declared_size=76, range_size=76, mode=arm
; class-group: glitch::video::CCommonGLDriverBase::CFramebufferBase
; alias: _ZN6glitch5video19CCommonGLDriverBase16CFramebufferBaseC2EPS1_RKNS_4core11dimension2dIiEE
; demangled: glitch::video::CCommonGLDriverBase::CFramebufferBase::CFramebufferBase(glitch::video::CCommonGLDriverBase*, glitch::core::dimension2d<int> const&)
; decoder-mode: arm
006ddcf8  70 40 2d e9                                      push {r4, r5, r6, lr}
006ddcfc  38 50 9f e5                                      ldr r5, [pc, #0x38]
006ddd00  00 40 a0 e1                                      mov r4, r0
006ddd04  f7 f9 ff eb                                      bl #0x6dc4e8
006ddd08  30 20 9f e5                                      ldr r2, [pc, #0x30]
006ddd0c  05 50 8f e0                                      add r5, pc, r5
006ddd10  00 30 a0 e3                                      mov r3, #0
006ddd14  02 20 95 e7                                      ldr r2, [r5, r2]
006ddd18  34 30 84 e5                                      str r3, [r4, #0x34]
006ddd1c  24 30 84 e5                                      str r3, [r4, #0x24]
006ddd20  08 20 82 e2                                      add r2, r2, #8
006ddd24  00 20 84 e5                                      str r2, [r4]
006ddd28  28 30 84 e5                                      str r3, [r4, #0x28]
006ddd2c  2c 30 84 e5                                      str r3, [r4, #0x2c]
006ddd30  30 30 84 e5                                      str r3, [r4, #0x30]
006ddd34  04 00 a0 e1                                      mov r0, r4
006ddd38  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
006ddd3c  84 6d 2b 00 f8 37 00 00                          .byte 0x84, 0x6d, 0x2b, 0x00, 0xf8, 0x37, 0x00, 0x00

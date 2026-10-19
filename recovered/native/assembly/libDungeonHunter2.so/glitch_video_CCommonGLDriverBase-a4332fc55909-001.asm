; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006dcdcc, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CCommonGLDriverBase
; alias: _ZNK6glitch5video19CCommonGLDriverBase14getColorFormatEv
; demangled: glitch::video::CCommonGLDriverBase::getColorFormat() const
; decoder-mode: arm
006dcdcc  84 02 90 e5                                      ldr r0, [r0, #0x284]
006dcdd0  1e ff 2f e1                                      bx lr

; FUNCTION 0x006dcdd4, declared_size=20, range_size=20, mode=arm
; class-group: glitch::video::CCommonGLDriverBase
; alias: _ZNK6glitch5video19CCommonGLDriverBase12getTransformENS0_22E_TRANSFORMATION_STATEE
; demangled: glitch::video::CCommonGLDriverBase::getTransform(glitch::video::E_TRANSFORMATION_STATE) const
; decoder-mode: arm
006dcdd4  44 30 a0 e3                                      mov r3, #0x44
006dcdd8  93 01 03 e0                                      mul r3, r3, r1
006dcddc  a2 3f 83 e2                                      add r3, r3, #0x288
006dcde0  03 00 80 e0                                      add r0, r0, r3
006dcde4  1e ff 2f e1                                      bx lr

; FUNCTION 0x006dcde8, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CCommonGLDriverBase
; alias: _ZNK6glitch5video19CCommonGLDriverBase14getBlendEnableEv
; demangled: glitch::video::CCommonGLDriverBase::getBlendEnable() const
; decoder-mode: arm
006dcde8  c4 01 d0 e5                                      ldrb r0, [r0, #0x1c4]
006dcdec  1e ff 2f e1                                      bx lr

; FUNCTION 0x006dcdf0, declared_size=52, range_size=52, mode=arm
; class-group: glitch::video::CCommonGLDriverBase
; alias: _ZNK6glitch5video19CCommonGLDriverBase13getBlendColorEv
; demangled: glitch::video::CCommonGLDriverBase::getBlendColor() const
; decoder-mode: arm
006dcdf0  04 22 d0 e5                                      ldrb r2, [r0, #0x204]
006dcdf4  05 c2 d0 e5                                      ldrb ip, [r0, #0x205]
006dcdf8  06 12 d0 e5                                      ldrb r1, [r0, #0x206]
006dcdfc  00 30 a0 e3                                      mov r3, #0
006dce00  12 30 c7 e7                                      bfi r3, r2, #0, #8
006dce04  07 22 d0 e5                                      ldrb r2, [r0, #0x207]
006dce08  1c 34 cf e7                                      bfi r3, ip, #8, #8
006dce0c  11 38 d7 e7                                      bfi r3, r1, #0x10, #8
006dce10  12 3c df e7                                      bfi r3, r2, #0x18, #8
006dce14  08 d0 4d e2                                      sub sp, sp, #8
006dce18  03 00 a0 e1                                      mov r0, r3
006dce1c  08 d0 8d e2                                      add sp, sp, #8
006dce20  1e ff 2f e1                                      bx lr

; FUNCTION 0x006dce24, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CCommonGLDriverBase
; alias: _ZNK6glitch5video19CCommonGLDriverBase16getBlendEquationEv
; demangled: glitch::video::CCommonGLDriverBase::getBlendEquation() const
; decoder-mode: arm
006dce24  fc 01 90 e5                                      ldr r0, [r0, #0x1fc]
006dce28  1e ff 2f e1                                      bx lr

; FUNCTION 0x006dce2c, declared_size=20, range_size=20, mode=arm
; class-group: glitch::video::CCommonGLDriverBase
; alias: _ZNK6glitch5video19CCommonGLDriverBase12getBlendFuncERNS0_14E_BLEND_FACTORES3_
; demangled: glitch::video::CCommonGLDriverBase::getBlendFunc(glitch::video::E_BLEND_FACTOR&, glitch::video::E_BLEND_FACTOR&) const
; decoder-mode: arm
006dce2c  00 32 d0 e5                                      ldrb r3, [r0, #0x200]
006dce30  00 30 81 e5                                      str r3, [r1]
006dce34  01 32 d0 e5                                      ldrb r3, [r0, #0x201]
006dce38  00 30 82 e5                                      str r3, [r2]
006dce3c  1e ff 2f e1                                      bx lr

; FUNCTION 0x006dce40, declared_size=40, range_size=40, mode=arm
; class-group: glitch::video::CCommonGLDriverBase
; alias: _ZNK6glitch5video19CCommonGLDriverBase12getColorMaskERbS2_S2_S2_
; demangled: glitch::video::CCommonGLDriverBase::getColorMask(bool&, bool&, bool&, bool&) const
; decoder-mode: arm
006dce40  ec c1 d0 e5                                      ldrb ip, [r0, #0x1ec]
006dce44  00 c0 c1 e5                                      strb ip, [r1]
006dce48  ed 11 d0 e5                                      ldrb r1, [r0, #0x1ed]
006dce4c  00 10 c2 e5                                      strb r1, [r2]
006dce50  ee 21 d0 e5                                      ldrb r2, [r0, #0x1ee]
006dce54  00 20 c3 e5                                      strb r2, [r3]
006dce58  ef 21 d0 e5                                      ldrb r2, [r0, #0x1ef]
006dce5c  00 30 9d e5                                      ldr r3, [sp]
006dce60  00 20 c3 e5                                      strb r2, [r3]
006dce64  1e ff 2f e1                                      bx lr

; FUNCTION 0x006dce68, declared_size=52, range_size=52, mode=arm
; class-group: glitch::video::CCommonGLDriverBase
; alias: _ZNK6glitch5video19CCommonGLDriverBase13getClearColorEv
; demangled: glitch::video::CCommonGLDriverBase::getClearColor() const
; decoder-mode: arm
006dce68  08 22 d0 e5                                      ldrb r2, [r0, #0x208]
006dce6c  09 c2 d0 e5                                      ldrb ip, [r0, #0x209]
006dce70  0a 12 d0 e5                                      ldrb r1, [r0, #0x20a]
006dce74  00 30 a0 e3                                      mov r3, #0
006dce78  12 30 c7 e7                                      bfi r3, r2, #0, #8
006dce7c  0b 22 d0 e5                                      ldrb r2, [r0, #0x20b]
006dce80  1c 34 cf e7                                      bfi r3, ip, #8, #8
006dce84  11 38 d7 e7                                      bfi r3, r1, #0x10, #8
006dce88  12 3c df e7                                      bfi r3, r2, #0x18, #8
006dce8c  08 d0 4d e2                                      sub sp, sp, #8
006dce90  03 00 a0 e1                                      mov r0, r3
006dce94  08 d0 8d e2                                      add sp, sp, #8
006dce98  1e ff 2f e1                                      bx lr

; FUNCTION 0x006dce9c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CCommonGLDriverBase
; alias: _ZNK6glitch5video19CCommonGLDriverBase17getCullFaceEnableEv
; demangled: glitch::video::CCommonGLDriverBase::getCullFaceEnable() const
; decoder-mode: arm
006dce9c  c5 01 d0 e5                                      ldrb r0, [r0, #0x1c5]
006dcea0  1e ff 2f e1                                      bx lr

; FUNCTION 0x006dcea4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CCommonGLDriverBase
; alias: _ZNK6glitch5video19CCommonGLDriverBase11getCullFaceEv
; demangled: glitch::video::CCommonGLDriverBase::getCullFace() const
; decoder-mode: arm
006dcea4  d8 01 90 e5                                      ldr r0, [r0, #0x1d8]
006dcea8  1e ff 2f e1                                      bx lr

; FUNCTION 0x006dceac, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CCommonGLDriverBase
; alias: _ZNK6glitch5video19CCommonGLDriverBase12getFrontFaceEv
; demangled: glitch::video::CCommonGLDriverBase::getFrontFace() const
; decoder-mode: arm
006dceac  dc 01 90 e5                                      ldr r0, [r0, #0x1dc]
006dceb0  1e ff 2f e1                                      bx lr

; FUNCTION 0x006dceb4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CCommonGLDriverBase
; alias: _ZNK6glitch5video19CCommonGLDriverBase18getDepthTestEnableEv
; demangled: glitch::video::CCommonGLDriverBase::getDepthTestEnable() const
; decoder-mode: arm
006dceb4  c6 01 d0 e5                                      ldrb r0, [r0, #0x1c6]
006dceb8  1e ff 2f e1                                      bx lr

; FUNCTION 0x006dcebc, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CCommonGLDriverBase
; alias: _ZNK6glitch5video19CCommonGLDriverBase12getDepthFuncEv
; demangled: glitch::video::CCommonGLDriverBase::getDepthFunc() const
; decoder-mode: arm
006dcebc  e0 01 90 e5                                      ldr r0, [r0, #0x1e0]
006dcec0  1e ff 2f e1                                      bx lr

; FUNCTION 0x006dcec4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CCommonGLDriverBase
; alias: _ZNK6glitch5video19CCommonGLDriverBase12getDepthMaskEv
; demangled: glitch::video::CCommonGLDriverBase::getDepthMask() const
; decoder-mode: arm
006dcec4  c7 01 d0 e5                                      ldrb r0, [r0, #0x1c7]
006dcec8  1e ff 2f e1                                      bx lr

; FUNCTION 0x006dcecc, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CCommonGLDriverBase
; alias: _ZNK6glitch5video19CCommonGLDriverBase13getClearDepthEv
; demangled: glitch::video::CCommonGLDriverBase::getClearDepth() const
; decoder-mode: arm
006dcecc  0c 02 90 e5                                      ldr r0, [r0, #0x20c]
006dced0  1e ff 2f e1                                      bx lr

; FUNCTION 0x006dced4, declared_size=20, range_size=20, mode=arm
; class-group: glitch::video::CCommonGLDriverBase
; alias: _ZNK6glitch5video19CCommonGLDriverBase13getDepthRangeERfS2_
; demangled: glitch::video::CCommonGLDriverBase::getDepthRange(float&, float&) const
; decoder-mode: arm
006dced4  10 32 90 e5                                      ldr r3, [r0, #0x210]
006dced8  00 30 81 e5                                      str r3, [r1]
006dcedc  14 32 90 e5                                      ldr r3, [r0, #0x214]
006dcee0  00 30 82 e5                                      str r3, [r2]
006dcee4  1e ff 2f e1                                      bx lr

; FUNCTION 0x006dcee8, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CCommonGLDriverBase
; alias: _ZNK6glitch5video19CCommonGLDriverBase15getDitherEnableEv
; demangled: glitch::video::CCommonGLDriverBase::getDitherEnable() const
; decoder-mode: arm
006dcee8  c8 01 d0 e5                                      ldrb r0, [r0, #0x1c8]
006dceec  1e ff 2f e1                                      bx lr

; FUNCTION 0x006dcef0, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CCommonGLDriverBase
; alias: _ZNK6glitch5video19CCommonGLDriverBase12getLineWidthEv
; demangled: glitch::video::CCommonGLDriverBase::getLineWidth() const
; decoder-mode: arm
006dcef0  18 02 90 e5                                      ldr r0, [r0, #0x218]
006dcef4  1e ff 2f e1                                      bx lr

; FUNCTION 0x006dcef8, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CCommonGLDriverBase
; alias: _ZNK6glitch5video19CCommonGLDriverBase12getPointSizeEv
; demangled: glitch::video::CCommonGLDriverBase::getPointSize() const
; decoder-mode: arm
006dcef8  1c 02 90 e5                                      ldr r0, [r0, #0x21c]
006dcefc  1e ff 2f e1                                      bx lr

; FUNCTION 0x006dcf00, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CCommonGLDriverBase
; alias: _ZNK6glitch5video19CCommonGLDriverBase19getPolygonModeFrontEv
; demangled: glitch::video::CCommonGLDriverBase::getPolygonModeFront() const
; decoder-mode: arm
006dcf00  e4 01 90 e5                                      ldr r0, [r0, #0x1e4]
006dcf04  1e ff 2f e1                                      bx lr

; FUNCTION 0x006dcf08, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CCommonGLDriverBase
; alias: _ZNK6glitch5video19CCommonGLDriverBase18getPolygonModeBackEv
; demangled: glitch::video::CCommonGLDriverBase::getPolygonModeBack() const
; decoder-mode: arm
006dcf08  e8 01 90 e5                                      ldr r0, [r0, #0x1e8]
006dcf0c  1e ff 2f e1                                      bx lr

; FUNCTION 0x006dcf10, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CCommonGLDriverBase
; alias: _ZNK6glitch5video19CCommonGLDriverBase26getPolygonOffsetFillEnableEv
; demangled: glitch::video::CCommonGLDriverBase::getPolygonOffsetFillEnable() const
; decoder-mode: arm
006dcf10  cc 01 d0 e5                                      ldrb r0, [r0, #0x1cc]
006dcf14  1e ff 2f e1                                      bx lr

; FUNCTION 0x006dcf18, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CCommonGLDriverBase
; alias: _ZNK6glitch5video19CCommonGLDriverBase26getPolygonOffsetLineEnableEv
; demangled: glitch::video::CCommonGLDriverBase::getPolygonOffsetLineEnable() const
; decoder-mode: arm
006dcf18  cd 01 d0 e5                                      ldrb r0, [r0, #0x1cd]
006dcf1c  1e ff 2f e1                                      bx lr

; FUNCTION 0x006dcf20, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CCommonGLDriverBase
; alias: _ZNK6glitch5video19CCommonGLDriverBase27getPolygonOffsetPointEnableEv
; demangled: glitch::video::CCommonGLDriverBase::getPolygonOffsetPointEnable() const
; decoder-mode: arm
006dcf20  ce 01 d0 e5                                      ldrb r0, [r0, #0x1ce]
006dcf24  1e ff 2f e1                                      bx lr

; FUNCTION 0x006dcf28, declared_size=20, range_size=20, mode=arm
; class-group: glitch::video::CCommonGLDriverBase
; alias: _ZNK6glitch5video19CCommonGLDriverBase16getPolygonOffsetERfS2_
; demangled: glitch::video::CCommonGLDriverBase::getPolygonOffset(float&, float&) const
; decoder-mode: arm
006dcf28  20 32 90 e5                                      ldr r3, [r0, #0x220]
006dcf2c  00 30 81 e5                                      str r3, [r1]
006dcf30  24 32 90 e5                                      ldr r3, [r0, #0x224]
006dcf34  00 30 82 e5                                      str r3, [r2]
006dcf38  1e ff 2f e1                                      bx lr

; FUNCTION 0x006dcf3c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CCommonGLDriverBase
; alias: _ZNK6glitch5video19CCommonGLDriverBase30getSampleAlphaToCoverageEnableEv
; demangled: glitch::video::CCommonGLDriverBase::getSampleAlphaToCoverageEnable() const
; decoder-mode: arm
006dcf3c  d0 01 d0 e5                                      ldrb r0, [r0, #0x1d0]
006dcf40  1e ff 2f e1                                      bx lr

; FUNCTION 0x006dcf44, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CCommonGLDriverBase
; alias: _ZNK6glitch5video19CCommonGLDriverBase23getSampleCoverageEnableEv
; demangled: glitch::video::CCommonGLDriverBase::getSampleCoverageEnable() const
; decoder-mode: arm
006dcf44  d1 01 d0 e5                                      ldrb r0, [r0, #0x1d1]
006dcf48  1e ff 2f e1                                      bx lr

; FUNCTION 0x006dcf4c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CCommonGLDriverBase
; alias: _ZNK6glitch5video19CCommonGLDriverBase23getSampleCoverageInvertEv
; demangled: glitch::video::CCommonGLDriverBase::getSampleCoverageInvert() const
; decoder-mode: arm
006dcf4c  d2 01 d0 e5                                      ldrb r0, [r0, #0x1d2]
006dcf50  1e ff 2f e1                                      bx lr

; FUNCTION 0x006dcf54, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CCommonGLDriverBase
; alias: _ZNK6glitch5video19CCommonGLDriverBase22getSampleCoverageValueEv
; demangled: glitch::video::CCommonGLDriverBase::getSampleCoverageValue() const
; decoder-mode: arm
006dcf54  28 02 90 e5                                      ldr r0, [r0, #0x228]
006dcf58  1e ff 2f e1                                      bx lr

; FUNCTION 0x006dcf5c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CCommonGLDriverBase
; alias: _ZNK6glitch5video19CCommonGLDriverBase16getScissorEnableEv
; demangled: glitch::video::CCommonGLDriverBase::getScissorEnable() const
; decoder-mode: arm
006dcf5c  d3 01 d0 e5                                      ldrb r0, [r0, #0x1d3]
006dcf60  1e ff 2f e1                                      bx lr

; FUNCTION 0x006dcf64, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CCommonGLDriverBase
; alias: _ZNK6glitch5video19CCommonGLDriverBase10getScissorEv
; demangled: glitch::video::CCommonGLDriverBase::getScissor() const
; decoder-mode: arm
006dcf64  8b 0f 80 e2                                      add r0, r0, #0x22c
006dcf68  1e ff 2f e1                                      bx lr

; FUNCTION 0x006dcf6c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CCommonGLDriverBase
; alias: _ZNK6glitch5video19CCommonGLDriverBase20getStencilTestEnableEv
; demangled: glitch::video::CCommonGLDriverBase::getStencilTestEnable() const
; decoder-mode: arm
006dcf6c  d4 01 d0 e5                                      ldrb r0, [r0, #0x1d4]
006dcf70  1e ff 2f e1                                      bx lr

; FUNCTION 0x006dcf74, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CCommonGLDriverBase
; alias: _ZNK6glitch5video19CCommonGLDriverBase14getStencilFuncEv
; demangled: glitch::video::CCommonGLDriverBase::getStencilFunc() const
; decoder-mode: arm
006dcf74  f0 01 d0 e5                                      ldrb r0, [r0, #0x1f0]
006dcf78  1e ff 2f e1                                      bx lr

; FUNCTION 0x006dcf7c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CCommonGLDriverBase
; alias: _ZNK6glitch5video19CCommonGLDriverBase17getStencilFuncRefEPb
; demangled: glitch::video::CCommonGLDriverBase::getStencilFuncRef(bool*) const
; decoder-mode: arm
006dcf7c  f1 01 d0 e5                                      ldrb r0, [r0, #0x1f1]
006dcf80  1e ff 2f e1                                      bx lr

; FUNCTION 0x006dcf84, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CCommonGLDriverBase
; alias: _ZNK6glitch5video19CCommonGLDriverBase18getStencilFuncMaskEPb
; demangled: glitch::video::CCommonGLDriverBase::getStencilFuncMask(bool*) const
; decoder-mode: arm
006dcf84  f2 01 d0 e5                                      ldrb r0, [r0, #0x1f2]
006dcf88  1e ff 2f e1                                      bx lr

; FUNCTION 0x006dcf8c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CCommonGLDriverBase
; alias: _ZNK6glitch5video19CCommonGLDriverBase16getStencilOpFailEv
; demangled: glitch::video::CCommonGLDriverBase::getStencilOpFail() const
; decoder-mode: arm
006dcf8c  f4 01 d0 e5                                      ldrb r0, [r0, #0x1f4]
006dcf90  1e ff 2f e1                                      bx lr

; FUNCTION 0x006dcf94, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CCommonGLDriverBase
; alias: _ZNK6glitch5video19CCommonGLDriverBase17getStencilOpZFailEv
; demangled: glitch::video::CCommonGLDriverBase::getStencilOpZFail() const
; decoder-mode: arm
006dcf94  f5 01 d0 e5                                      ldrb r0, [r0, #0x1f5]
006dcf98  1e ff 2f e1                                      bx lr

; FUNCTION 0x006dcf9c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CCommonGLDriverBase
; alias: _ZNK6glitch5video19CCommonGLDriverBase17getStencilOpZPassEv
; demangled: glitch::video::CCommonGLDriverBase::getStencilOpZPass() const
; decoder-mode: arm
006dcf9c  f6 01 d0 e5                                      ldrb r0, [r0, #0x1f6]
006dcfa0  1e ff 2f e1                                      bx lr

; FUNCTION 0x006dcfa4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CCommonGLDriverBase
; alias: _ZNK6glitch5video19CCommonGLDriverBase14getStencilMaskEPb
; demangled: glitch::video::CCommonGLDriverBase::getStencilMask(bool*) const
; decoder-mode: arm
006dcfa4  f8 01 d0 e5                                      ldrb r0, [r0, #0x1f8]
006dcfa8  1e ff 2f e1                                      bx lr

; FUNCTION 0x006dcfac, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CCommonGLDriverBase
; alias: _ZNK6glitch5video19CCommonGLDriverBase15getClearStencilEv
; demangled: glitch::video::CCommonGLDriverBase::getClearStencil() const
; decoder-mode: arm
006dcfac  f9 01 d0 e5                                      ldrb r0, [r0, #0x1f9]
006dcfb0  1e ff 2f e1                                      bx lr

; FUNCTION 0x006dd0ac, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CCommonGLDriverBase
; alias: _ZNK6glitch5video19CCommonGLDriverBase14getRenderStateERNS0_6detail6driver12SRenderStateE
; demangled: glitch::video::CCommonGLDriverBase::getRenderState(glitch::video::detail::driver::SRenderState&) const
; decoder-mode: arm
006dd0ac  71 0f 80 e2                                      add r0, r0, #0x1c4
006dd0b0  bf ff ff ea                                      b #0x6dcfb4

; FUNCTION 0x006dd734, declared_size=336, range_size=336, mode=arm
; class-group: glitch::video::CCommonGLDriverBase
; alias: _ZN6glitch5video19CCommonGLDriverBase14initExtensionsEPKh
; demangled: glitch::video::CCommonGLDriverBase::initExtensions(unsigned char const*)
; decoder-mode: arm
006dd734  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006dd738  34 61 9f e5                                      ldr r6, [pc, #0x134]
006dd73c  34 81 9f e5                                      ldr r8, [pc, #0x134]
006dd740  41 de 4d e2                                      sub sp, sp, #0x410
006dd744  06 60 8f e0                                      add r6, pc, r6
006dd748  08 30 96 e7                                      ldr r3, [r6, r8]
006dd74c  04 d0 4d e2                                      sub sp, sp, #4
006dd750  00 50 51 e2                                      subs r5, r1, #0
006dd754  00 30 93 e5                                      ldr r3, [r3]
006dd758  00 a0 a0 e1                                      mov sl, r0
006dd75c  0c 34 8d e5                                      str r3, [sp, #0x40c]
006dd760  3a 00 00 0a                                      beq #0x6dd850
006dd764  05 00 a0 e1                                      mov r0, r5
006dd768  b9 c1 f0 eb                                      bl #0x30de54
006dd76c  01 00 80 e2                                      add r0, r0, #1
006dd770  9f 5b f9 eb                                      bl #0x5345f4
006dd774  00 70 a0 e1                                      mov r7, r0
006dd778  fc 00 9f e5                                      ldr r0, [pc, #0xfc]
006dd77c  01 10 a0 e3                                      mov r1, #1
006dd780  00 00 8f e0                                      add r0, pc, r0
006dd784  45 b5 fc eb                                      bl #0x60aca0
006dd788  00 30 d5 e5                                      ldrb r3, [r5]
006dd78c  00 00 53 e3                                      cmp r3, #0
006dd790  2a 00 00 0a                                      beq #0x6dd840
006dd794  e4 b0 9f e5                                      ldr fp, [pc, #0xe4]
006dd798  10 90 8d e2                                      add sb, sp, #0x10
006dd79c  04 90 49 e2                                      sub sb, sb, #4
006dd7a0  0b b0 8f e0                                      add fp, pc, fp
006dd7a4  01 40 87 e2                                      add r4, r7, #1
006dd7a8  07 20 a0 e1                                      mov r2, r7
006dd7ac  03 00 00 ea                                      b #0x6dd7c0
006dd7b0  01 30 f5 e5                                      ldrb r3, [r5, #1]!
006dd7b4  01 40 84 e2                                      add r4, r4, #1
006dd7b8  00 00 53 e3                                      cmp r3, #0
006dd7bc  1f 00 00 0a                                      beq #0x6dd840
006dd7c0  01 30 44 e5                                      strb r3, [r4, #-1]
006dd7c4  00 30 d5 e5                                      ldrb r3, [r5]
006dd7c8  20 00 53 e3                                      cmp r3, #0x20
006dd7cc  f7 ff ff 1a                                      bne #0x6dd7b0
006dd7d0  00 30 a0 e3                                      mov r3, #0
006dd7d4  01 30 44 e5                                      strb r3, [r4, #-1]
006dd7d8  02 00 a0 e1                                      mov r0, r2
006dd7dc  04 20 8d e5                                      str r2, [sp, #4]
006dd7e0  bd ff ff eb                                      bl #0x6dd6dc
006dd7e4  ff cf 0f e3                                      movw ip, #0xffff
006dd7e8  0c 00 50 e1                                      cmp r0, ip
006dd7ec  04 20 9d e5                                      ldr r2, [sp, #4]
006dd7f0  07 00 00 0a                                      beq #0x6dd814
006dd7f4  a0 32 a0 e1                                      lsr r3, r0, #5
006dd7f8  7b 3f 83 e2                                      add r3, r3, #0x1ec
006dd7fc  02 30 83 e2                                      add r3, r3, #2
006dd800  03 11 9a e7                                      ldr r1, [sl, r3, lsl #2]
006dd804  1f 00 00 e2                                      and r0, r0, #0x1f
006dd808  01 c0 a0 e3                                      mov ip, #1
006dd80c  1c 00 81 e1                                      orr r0, r1, ip, lsl r0
006dd810  03 01 8a e7                                      str r0, [sl, r3, lsl #2]
006dd814  0b 10 a0 e1                                      mov r1, fp
006dd818  09 00 a0 e1                                      mov r0, sb
006dd81c  b0 c4 f0 eb                                      bl #0x30eae4
006dd820  09 00 a0 e1                                      mov r0, sb
006dd824  01 10 a0 e3                                      mov r1, #1
006dd828  1c b5 fc eb                                      bl #0x60aca0
006dd82c  01 30 f5 e5                                      ldrb r3, [r5, #1]!
006dd830  04 20 a0 e1                                      mov r2, r4
006dd834  01 40 84 e2                                      add r4, r4, #1
006dd838  00 00 53 e3                                      cmp r3, #0
006dd83c  df ff ff 1a                                      bne #0x6dd7c0
006dd840  00 00 57 e3                                      cmp r7, #0
006dd844  01 00 00 0a                                      beq #0x6dd850
006dd848  07 00 a0 e1                                      mov r0, r7
006dd84c  8d 5b f9 eb                                      bl #0x534688
006dd850  08 30 96 e7                                      ldr r3, [r6, r8]
006dd854  0c 24 9d e5                                      ldr r2, [sp, #0x40c]
006dd858  00 30 93 e5                                      ldr r3, [r3]
006dd85c  03 00 52 e1                                      cmp r2, r3
006dd860  02 00 00 1a                                      bne #0x6dd870
006dd864  14 d0 8d e2                                      add sp, sp, #0x14
006dd868  01 db 8d e2                                      add sp, sp, #0x400
006dd86c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006dd870  a6 c2 f0 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
006dd874  4c 73 2b 00 ac 40 00 00 f8 e6 20 00 f8 e6 20 00  .byte 0x4c, 0x73, 0x2b, 0x00, 0xac, 0x40, 0x00, 0x00, 0xf8, 0xe6, 0x20, 0x00, 0xf8, 0xe6, 0x20, 0x00

; FUNCTION 0x006dd884, declared_size=332, range_size=332, mode=arm
; class-group: glitch::video::CCommonGLDriverBase
; alias: _ZNK6glitch5video19CCommonGLDriverBase15fixUpScreenAreaERKNS_4core4rectIiEERiS7_S7_S7_bb
; demangled: glitch::video::CCommonGLDriverBase::fixUpScreenArea(glitch::core::rect<int> const&, int&, int&, int&, int&, bool, bool) const
; decoder-mode: arm
006dd884  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006dd888  10 d0 4d e2                                      sub sp, sp, #0x10
006dd88c  08 40 91 e5                                      ldr r4, [r1, #8]
006dd890  00 c0 91 e5                                      ldr ip, [r1]
006dd894  28 50 9d e5                                      ldr r5, [sp, #0x28]
006dd898  30 70 dd e5                                      ldrb r7, [sp, #0x30]
006dd89c  04 c0 6c e0                                      rsb ip, ip, r4
006dd8a0  00 c0 85 e5                                      str ip, [r5]
006dd8a4  0c 40 91 e5                                      ldr r4, [r1, #0xc]
006dd8a8  04 c0 91 e5                                      ldr ip, [r1, #4]
006dd8ac  2c 60 9d e5                                      ldr r6, [sp, #0x2c]
006dd8b0  00 00 57 e3                                      cmp r7, #0
006dd8b4  04 c0 6c e0                                      rsb ip, ip, r4
006dd8b8  00 c0 86 e5                                      str ip, [r6]
006dd8bc  00 40 a0 e1                                      mov r4, r0
006dd8c0  02 70 a0 e1                                      mov r7, r2
006dd8c4  03 80 a0 e1                                      mov r8, r3
006dd8c8  34 00 dd e5                                      ldrb r0, [sp, #0x34]
006dd8cc  04 00 00 1a                                      bne #0x6dd8e4
006dd8d0  00 30 95 e5                                      ldr r3, [r5]
006dd8d4  00 00 53 e3                                      cmp r3, #0
006dd8d8  2e 00 00 da                                      ble #0x6dd998
006dd8dc  00 00 5c e3                                      cmp ip, #0
006dd8e0  2c 00 00 da                                      ble #0x6dd998
006dd8e4  cc 20 94 e5                                      ldr r2, [r4, #0xcc]
006dd8e8  c8 30 94 e5                                      ldr r3, [r4, #0xc8]
006dd8ec  02 30 63 e0                                      rsb r3, r3, r2
006dd8f0  43 31 a0 e1                                      asr r3, r3, #2
006dd8f4  01 00 53 e3                                      cmp r3, #1
006dd8f8  01 00 00 0a                                      beq #0x6dd904
006dd8fc  00 00 50 e3                                      cmp r0, #0
006dd900  1e 00 00 0a                                      beq #0x6dd980
006dd904  0c 30 91 e5                                      ldr r3, [r1, #0xc]
006dd908  08 20 91 e5                                      ldr r2, [r1, #8]
006dd90c  00 e0 91 e5                                      ldr lr, [r1]
006dd910  04 c0 91 e5                                      ldr ip, [r1, #4]
006dd914  04 00 a0 e1                                      mov r0, r4
006dd918  0d 10 a0 e1                                      mov r1, sp
006dd91c  08 20 8d e5                                      str r2, [sp, #8]
006dd920  0c 30 8d e5                                      str r3, [sp, #0xc]
006dd924  00 e0 8d e5                                      str lr, [sp]
006dd928  04 c0 8d e5                                      str ip, [sp, #4]
006dd92c  ed 30 fb eb                                      bl #0x5a9ce8
006dd930  c8 30 94 e5                                      ldr r3, [r4, #0xc8]
006dd934  cc 20 94 e5                                      ldr r2, [r4, #0xcc]
006dd938  02 20 63 e0                                      rsb r2, r3, r2
006dd93c  42 21 a0 e1                                      asr r2, r2, #2
006dd940  01 00 52 e3                                      cmp r2, #1
006dd944  15 00 00 9a                                      bls #0x6dd9a0
006dd948  00 20 93 e5                                      ldr r2, [r3]
006dd94c  10 30 92 e5                                      ldr r3, [r2, #0x10]
006dd950  30 20 92 e5                                      ldr r2, [r2, #0x30]
006dd954  03 30 82 e0                                      add r3, r2, r3
006dd958  00 20 9d e5                                      ldr r2, [sp]
006dd95c  04 10 9d e5                                      ldr r1, [sp, #4]
006dd960  01 00 a0 e3                                      mov r0, #1
006dd964  00 20 87 e5                                      str r2, [r7]
006dd968  00 20 96 e5                                      ldr r2, [r6]
006dd96c  03 30 61 e0                                      rsb r3, r1, r3
006dd970  03 30 62 e0                                      rsb r3, r2, r3
006dd974  00 30 88 e5                                      str r3, [r8]
006dd978  10 d0 8d e2                                      add sp, sp, #0x10
006dd97c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
006dd980  00 30 91 e5                                      ldr r3, [r1]
006dd984  01 00 a0 e3                                      mov r0, #1
006dd988  00 30 87 e5                                      str r3, [r7]
006dd98c  04 30 91 e5                                      ldr r3, [r1, #4]
006dd990  00 30 88 e5                                      str r3, [r8]
006dd994  f7 ff ff ea                                      b #0x6dd978
006dd998  00 00 a0 e3                                      mov r0, #0
006dd99c  f5 ff ff ea                                      b #0x6dd978
006dd9a0  3c 21 94 e5                                      ldr r2, [r4, #0x13c]
006dd9a4  01 00 12 e3                                      tst r2, #1
006dd9a8  e6 ff ff 0a                                      beq #0x6dd948
006dd9ac  00 20 93 e5                                      ldr r2, [r3]
006dd9b0  00 10 95 e5                                      ldr r1, [r5]
006dd9b4  00 00 96 e5                                      ldr r0, [r6]
006dd9b8  0c 30 92 e5                                      ldr r3, [r2, #0xc]
006dd9bc  2c 20 92 e5                                      ldr r2, [r2, #0x2c]
006dd9c0  00 00 85 e5                                      str r0, [r5]
006dd9c4  00 10 86 e5                                      str r1, [r6]
006dd9c8  03 30 82 e0                                      add r3, r2, r3
006dd9cc  e1 ff ff ea                                      b #0x6dd958

; FUNCTION 0x006dd9d0, declared_size=216, range_size=216, mode=arm
; class-group: glitch::video::CCommonGLDriverBase
; alias: _ZNK6glitch5video19CCommonGLDriverBase21fixUpProjectionMatrixERNS_4core8CMatrix4IfEE
; demangled: glitch::video::CCommonGLDriverBase::fixUpProjectionMatrix(glitch::core::CMatrix4<float>&) const
; decoder-mode: arm
006dd9d0  70 40 2d e9                                      push {r4, r5, r6, lr}
006dd9d4  00 30 a0 e3                                      mov r3, #0
006dd9d8  40 30 c1 e5                                      strb r3, [r1, #0x40]
006dd9dc  01 40 a0 e1                                      mov r4, r1
006dd9e0  00 50 a0 e1                                      mov r5, r0
006dd9e4  00 10 a0 e3                                      mov r1, #0
006dd9e8  2c 00 94 e5                                      ldr r0, [r4, #0x2c]
006dd9ec  66 c1 f0 eb                                      bl #0x30df8c
006dd9f0  00 00 50 e3                                      cmp r0, #0
006dd9f4  1f 00 00 1a                                      bne #0x6dda78
006dd9f8  28 00 94 e5                                      ldr r0, [r4, #0x28]
006dd9fc  00 10 a0 e1                                      mov r1, r0
006dda00  67 c4 f0 eb                                      bl #0x30eba4
006dda04  fe 15 a0 e3                                      mov r1, #0x3f800000
006dda08  67 c2 f0 eb                                      bl #0x30e3ac
006dda0c  38 30 94 e5                                      ldr r3, [r4, #0x38]
006dda10  28 00 84 e5                                      str r0, [r4, #0x28]
006dda14  03 10 a0 e1                                      mov r1, r3
006dda18  03 00 a0 e1                                      mov r0, r3
006dda1c  60 c4 f0 eb                                      bl #0x30eba4
006dda20  38 00 84 e5                                      str r0, [r4, #0x38]
006dda24  a0 34 d5 e5                                      ldrb r3, [r5, #0x4a0]
006dda28  00 00 53 e3                                      cmp r3, #0
006dda2c  0d 00 00 0a                                      beq #0x6dda68
006dda30  04 00 94 e5                                      ldr r0, [r4, #4]
006dda34  14 10 94 e5                                      ldr r1, [r4, #0x14]
006dda38  24 20 94 e5                                      ldr r2, [r4, #0x24]
006dda3c  34 30 94 e5                                      ldr r3, [r4, #0x34]
006dda40  02 01 80 e2                                      add r0, r0, #0x80000000
006dda44  02 11 81 e2                                      add r1, r1, #0x80000000
006dda48  02 21 82 e2                                      add r2, r2, #0x80000000
006dda4c  02 31 83 e2                                      add r3, r3, #0x80000000
006dda50  00 c0 a0 e3                                      mov ip, #0
006dda54  40 c0 c4 e5                                      strb ip, [r4, #0x40]
006dda58  04 00 84 e5                                      str r0, [r4, #4]
006dda5c  14 10 84 e5                                      str r1, [r4, #0x14]
006dda60  24 20 84 e5                                      str r2, [r4, #0x24]
006dda64  34 30 84 e5                                      str r3, [r4, #0x34]
006dda68  05 00 a0 e1                                      mov r0, r5
006dda6c  04 10 a0 e1                                      mov r1, r4
006dda70  70 40 bd e8                                      pop {r4, r5, r6, lr}
006dda74  43 2d fb ea                                      b #0x5a8f88
006dda78  38 00 94 e5                                      ldr r0, [r4, #0x38]
006dda7c  00 10 a0 e1                                      mov r1, r0
006dda80  47 c4 f0 eb                                      bl #0x30eba4
006dda84  fe 15 a0 e3                                      mov r1, #0x3f800000
006dda88  47 c2 f0 eb                                      bl #0x30e3ac
006dda8c  28 30 94 e5                                      ldr r3, [r4, #0x28]
006dda90  38 00 84 e5                                      str r0, [r4, #0x38]
006dda94  03 10 a0 e1                                      mov r1, r3
006dda98  03 00 a0 e1                                      mov r0, r3
006dda9c  40 c4 f0 eb                                      bl #0x30eba4
006ddaa0  28 00 84 e5                                      str r0, [r4, #0x28]
006ddaa4  de ff ff ea                                      b #0x6dda24

; FUNCTION 0x006ddaa8, declared_size=52, range_size=52, mode=arm
; class-group: glitch::video::CCommonGLDriverBase
; alias: _ZN6glitch5video19CCommonGLDriverBaseD1Ev
; demangled: glitch::video::CCommonGLDriverBase::~CCommonGLDriverBase()
; decoder-mode: arm
006ddaa8  24 30 9f e5                                      ldr r3, [pc, #0x24]
006ddaac  24 20 9f e5                                      ldr r2, [pc, #0x24]
006ddab0  10 40 2d e9                                      push {r4, lr}
006ddab4  03 30 8f e0                                      add r3, pc, r3
006ddab8  02 20 93 e7                                      ldr r2, [r3, r2]
006ddabc  00 40 a0 e1                                      mov r4, r0
006ddac0  08 20 82 e2                                      add r2, r2, #8
006ddac4  00 20 80 e5                                      str r2, [r0]
006ddac8  b9 3e fb eb                                      bl #0x5ad5b4
006ddacc  04 00 a0 e1                                      mov r0, r4
006ddad0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006ddad4  dc 6f 2b 00 6c 3d 00 00                          .byte 0xdc, 0x6f, 0x2b, 0x00, 0x6c, 0x3d, 0x00, 0x00

; FUNCTION 0x006ddadc, declared_size=28, range_size=28, mode=arm
; class-group: glitch::video::CCommonGLDriverBase
; alias: _ZN6glitch5video19CCommonGLDriverBaseD0Ev
; demangled: glitch::video::CCommonGLDriverBase::~CCommonGLDriverBase()
; decoder-mode: arm
006ddadc  10 40 2d e9                                      push {r4, lr}
006ddae0  00 40 a0 e1                                      mov r4, r0
006ddae4  ef ff ff eb                                      bl #0x6ddaa8
006ddae8  04 00 a0 e1                                      mov r0, r4
006ddaec  ef c1 f0 eb                                      bl #0x30e2b0
006ddaf0  04 00 a0 e1                                      mov r0, r4
006ddaf4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006ddaf8, declared_size=52, range_size=52, mode=arm
; class-group: glitch::video::CCommonGLDriverBase
; alias: _ZN6glitch5video19CCommonGLDriverBaseD2Ev
; demangled: glitch::video::CCommonGLDriverBase::~CCommonGLDriverBase()
; decoder-mode: arm
006ddaf8  24 30 9f e5                                      ldr r3, [pc, #0x24]
006ddafc  24 20 9f e5                                      ldr r2, [pc, #0x24]
006ddb00  10 40 2d e9                                      push {r4, lr}
006ddb04  03 30 8f e0                                      add r3, pc, r3
006ddb08  02 20 93 e7                                      ldr r2, [r3, r2]
006ddb0c  00 40 a0 e1                                      mov r4, r0
006ddb10  08 20 82 e2                                      add r2, r2, #8
006ddb14  00 20 80 e5                                      str r2, [r0]
006ddb18  a5 3e fb eb                                      bl #0x5ad5b4
006ddb1c  04 00 a0 e1                                      mov r0, r4
006ddb20  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006ddb24  8c 6f 2b 00 6c 3d 00 00                          .byte 0x8c, 0x6f, 0x2b, 0x00, 0x6c, 0x3d, 0x00, 0x00

; FUNCTION 0x006ddff0, declared_size=504, range_size=504, mode=arm
; class-group: glitch::video::CCommonGLDriverBase
; alias: _ZN6glitch5video19CCommonGLDriverBase9drawQuadsERKNS_4core4rectIiEERKNS3_IfEEPKNS0_6SColorE
; demangled: glitch::video::CCommonGLDriverBase::drawQuads(glitch::core::rect<int> const&, glitch::core::rect<float> const&, glitch::video::SColor const*)
; decoder-mode: arm
006ddff0  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
006ddff4  00 40 a0 e1                                      mov r4, r0
006ddff8  2c d0 4d e2                                      sub sp, sp, #0x2c
006ddffc  0c 00 91 e5                                      ldr r0, [r1, #0xc]
006de000  01 50 a0 e1                                      mov r5, r1
006de004  02 60 a0 e1                                      mov r6, r2
006de008  03 70 a0 e1                                      mov r7, r3
006de00c  54 c2 f0 eb                                      bl #0x30e964
006de010  00 a0 a0 e1                                      mov sl, r0
006de014  08 00 95 e5                                      ldr r0, [r5, #8]
006de018  51 c2 f0 eb                                      bl #0x30e964
006de01c  0c 30 96 e5                                      ldr r3, [r6, #0xc]
006de020  08 20 96 e5                                      ldr r2, [r6, #8]
006de024  00 80 a0 e3                                      mov r8, #0
006de028  68 31 84 e5                                      str r3, [r4, #0x168]
006de02c  08 10 87 e2                                      add r1, r7, #8
006de030  70 01 84 e5                                      str r0, [r4, #0x170]
006de034  74 a1 84 e5                                      str sl, [r4, #0x174]
006de038  64 21 84 e5                                      str r2, [r4, #0x164]
006de03c  78 81 84 e5                                      str r8, [r4, #0x178]
006de040  04 20 a0 e3                                      mov r2, #4
006de044  5b 0f 84 e2                                      add r0, r4, #0x16c
006de048  06 c2 f0 eb                                      bl #0x30e868
006de04c  04 00 95 e5                                      ldr r0, [r5, #4]
006de050  43 c2 f0 eb                                      bl #0x30e964
006de054  00 a0 a0 e1                                      mov sl, r0
006de058  08 00 95 e5                                      ldr r0, [r5, #8]
006de05c  40 c2 f0 eb                                      bl #0x30e964
006de060  04 30 96 e5                                      ldr r3, [r6, #4]
006de064  08 20 96 e5                                      ldr r2, [r6, #8]
006de068  0c 10 87 e2                                      add r1, r7, #0xc
006de06c  80 31 84 e5                                      str r3, [r4, #0x180]
006de070  88 01 84 e5                                      str r0, [r4, #0x188]
006de074  8c a1 84 e5                                      str sl, [r4, #0x18c]
006de078  7c 21 84 e5                                      str r2, [r4, #0x17c]
006de07c  90 81 84 e5                                      str r8, [r4, #0x190]
006de080  04 20 a0 e3                                      mov r2, #4
006de084  61 0f 84 e2                                      add r0, r4, #0x184
006de088  f6 c1 f0 eb                                      bl #0x30e868
006de08c  04 00 95 e5                                      ldr r0, [r5, #4]
006de090  33 c2 f0 eb                                      bl #0x30e964
006de094  00 a0 a0 e1                                      mov sl, r0
006de098  00 00 95 e5                                      ldr r0, [r5]
006de09c  30 c2 f0 eb                                      bl #0x30e964
006de0a0  04 30 96 e5                                      ldr r3, [r6, #4]
006de0a4  00 20 96 e5                                      ldr r2, [r6]
006de0a8  07 10 a0 e1                                      mov r1, r7
006de0ac  b0 31 84 e5                                      str r3, [r4, #0x1b0]
006de0b0  b8 01 84 e5                                      str r0, [r4, #0x1b8]
006de0b4  bc a1 84 e5                                      str sl, [r4, #0x1bc]
006de0b8  ac 21 84 e5                                      str r2, [r4, #0x1ac]
006de0bc  c0 81 84 e5                                      str r8, [r4, #0x1c0]
006de0c0  04 20 a0 e3                                      mov r2, #4
006de0c4  6d 0f 84 e2                                      add r0, r4, #0x1b4
006de0c8  e6 c1 f0 eb                                      bl #0x30e868
006de0cc  0c 00 95 e5                                      ldr r0, [r5, #0xc]
006de0d0  23 c2 f0 eb                                      bl #0x30e964
006de0d4  00 a0 a0 e1                                      mov sl, r0
006de0d8  00 00 95 e5                                      ldr r0, [r5]
006de0dc  20 c2 f0 eb                                      bl #0x30e964
006de0e0  0c 30 96 e5                                      ldr r3, [r6, #0xc]
006de0e4  00 20 96 e5                                      ldr r2, [r6]
006de0e8  04 10 87 e2                                      add r1, r7, #4
006de0ec  a0 01 84 e5                                      str r0, [r4, #0x1a0]
006de0f0  94 21 84 e5                                      str r2, [r4, #0x194]
006de0f4  98 31 84 e5                                      str r3, [r4, #0x198]
006de0f8  04 20 a0 e3                                      mov r2, #4
006de0fc  a4 a1 84 e5                                      str sl, [r4, #0x1a4]
006de100  a8 81 84 e5                                      str r8, [r4, #0x1a8]
006de104  67 0f 84 e2                                      add r0, r4, #0x19c
006de108  d6 c1 f0 eb                                      bl #0x30e868
006de10c  59 2f 84 e2                                      add r2, r4, #0x164
006de110  00 30 a0 e3                                      mov r3, #0
006de114  b0 00 94 e5                                      ldr r0, [r4, #0xb0]
006de118  60 10 a0 e3                                      mov r1, #0x60
006de11c  e4 0e fb eb                                      bl #0x5a1cb4
006de120  b0 30 94 e5                                      ldr r3, [r4, #0xb0]
006de124  11 20 d3 e5                                      ldrb r2, [r3, #0x11]
006de128  04 00 52 e3                                      cmp r2, #4
006de12c  04 00 00 0a                                      beq #0x6de144
006de130  08 20 93 e5                                      ldr r2, [r3, #8]
006de134  00 00 52 e3                                      cmp r2, #0
006de138  12 20 d3 15                                      ldrbne r2, [r3, #0x12]
006de13c  02 20 82 13                                      orrne r2, r2, #2
006de140  12 20 c3 15                                      strbne r2, [r3, #0x12]
006de144  ac 30 94 e5                                      ldr r3, [r4, #0xac]
006de148  04 20 a0 e3                                      mov r2, #4
006de14c  24 50 8d e2                                      add r5, sp, #0x24
006de150  08 20 83 e5                                      str r2, [r3, #8]
006de154  ac 30 94 e5                                      ldr r3, [r4, #0xac]
006de158  04 00 a0 e1                                      mov r0, r4
006de15c  00 00 53 e3                                      cmp r3, #0
006de160  24 30 8d e5                                      str r3, [sp, #0x24]
006de164  00 20 93 15                                      ldrne r2, [r3]
006de168  01 20 82 12                                      addne r2, r2, #1
006de16c  00 20 83 15                                      strne r2, [r3]
006de170  00 10 94 e5                                      ldr r1, [r4]
006de174  04 20 a0 e3                                      mov r2, #4
006de178  00 30 a0 e3                                      mov r3, #0
006de17c  be 21 cd e1                                      strh r2, [sp, #0x1e]
006de180  10 20 8d e5                                      str r2, [sp, #0x10]
006de184  18 20 8d e5                                      str r2, [sp, #0x18]
006de188  ff 20 a0 e3                                      mov r2, #0xff
006de18c  bc 21 cd e1                                      strh r2, [sp, #0x1c]
006de190  08 30 8d e5                                      str r3, [sp, #8]
006de194  0c 30 8d e5                                      str r3, [sp, #0xc]
006de198  14 30 8d e5                                      str r3, [sp, #0x14]
006de19c  20 20 8d e2                                      add r2, sp, #0x20
006de1a0  58 c0 91 e5                                      ldr ip, [r1, #0x58]
006de1a4  00 20 8d e5                                      str r2, [sp]
006de1a8  20 30 8d e5                                      str r3, [sp, #0x20]
006de1ac  05 10 a0 e1                                      mov r1, r5
006de1b0  08 20 8d e2                                      add r2, sp, #8
006de1b4  3c ff 2f e1                                      blx ip
006de1b8  20 00 9d e5                                      ldr r0, [sp, #0x20]
006de1bc  00 00 50 e3                                      cmp r0, #0
006de1c0  00 00 00 0a                                      beq #0x6de1c8
006de1c4  ee fc f0 eb                                      bl #0x31d584
006de1c8  08 00 9d e5                                      ldr r0, [sp, #8]
006de1cc  00 00 50 e3                                      cmp r0, #0
006de1d0  00 00 00 0a                                      beq #0x6de1d8
006de1d4  ea fc f0 eb                                      bl #0x31d584
006de1d8  05 00 a0 e1                                      mov r0, r5
006de1dc  6b 02 f2 eb                                      bl #0x35eb90
006de1e0  2c d0 8d e2                                      add sp, sp, #0x2c
006de1e4  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}

; FUNCTION 0x006de260, declared_size=328, range_size=328, mode=arm
; class-group: glitch::video::CCommonGLDriverBase
; alias: _ZN6glitch5video19CCommonGLDriverBase15set2DProjectionEv
; demangled: glitch::video::CCommonGLDriverBase::set2DProjection()
; decoder-mode: arm
006de260  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
006de264  cc 30 90 e5                                      ldr r3, [r0, #0xcc]
006de268  00 50 a0 e1                                      mov r5, r0
006de26c  48 d0 4d e2                                      sub sp, sp, #0x48
006de270  04 70 13 e5                                      ldr r7, [r3, #-4]
006de274  00 40 a0 e3                                      mov r4, #0
006de278  14 30 97 e5                                      ldr r3, [r7, #0x14]
006de27c  1c 00 97 e5                                      ldr r0, [r7, #0x1c]
006de280  00 00 63 e0                                      rsb r0, r3, r0
006de284  b6 c1 f0 eb                                      bl #0x30e964
006de288  18 30 97 e5                                      ldr r3, [r7, #0x18]
006de28c  00 60 a0 e1                                      mov r6, r0
006de290  20 00 97 e5                                      ldr r0, [r7, #0x20]
006de294  00 00 63 e0                                      rsb r0, r3, r0
006de298  b1 c1 f0 eb                                      bl #0x30e964
006de29c  00 80 a0 e1                                      mov r8, r0
006de2a0  00 10 a0 e1                                      mov r1, r0
006de2a4  04 00 a0 e1                                      mov r0, r4
006de2a8  3f c0 f0 eb                                      bl #0x30e3ac
006de2ac  00 30 a0 e3                                      mov r3, #0
006de2b0  00 70 a0 e1                                      mov r7, r0
006de2b4  06 10 a0 e1                                      mov r1, r6
006de2b8  01 01 a0 e3                                      mov r0, #0x40000000
006de2bc  44 30 cd e5                                      strb r3, [sp, #0x44]
006de2c0  73 c2 f0 eb                                      bl #0x30ec94
006de2c4  07 10 a0 e1                                      mov r1, r7
006de2c8  00 90 a0 e1                                      mov sb, r0
006de2cc  01 01 a0 e3                                      mov r0, #0x40000000
006de2d0  04 90 8d e5                                      str sb, [sp, #4]
006de2d4  08 40 8d e5                                      str r4, [sp, #8]
006de2d8  0c 40 8d e5                                      str r4, [sp, #0xc]
006de2dc  10 40 8d e5                                      str r4, [sp, #0x10]
006de2e0  14 40 8d e5                                      str r4, [sp, #0x14]
006de2e4  6a c2 f0 eb                                      bl #0x30ec94
006de2e8  3f 34 a0 e3                                      mov r3, #0x3f000000
006de2ec  fe 25 a0 e3                                      mov r2, #0x3f800000
006de2f0  00 a0 a0 e1                                      mov sl, r0
006de2f4  fb 15 a0 e3                                      mov r1, #0x3ec00000
006de2f8  09 00 a0 e1                                      mov r0, sb
006de2fc  3c 30 8d e5                                      str r3, [sp, #0x3c]
006de300  40 20 8d e5                                      str r2, [sp, #0x40]
006de304  2c 30 8d e5                                      str r3, [sp, #0x2c]
006de308  18 a0 8d e5                                      str sl, [sp, #0x18]
006de30c  1c 40 8d e5                                      str r4, [sp, #0x1c]
006de310  20 40 8d e5                                      str r4, [sp, #0x20]
006de314  24 40 8d e5                                      str r4, [sp, #0x24]
006de318  28 40 8d e5                                      str r4, [sp, #0x28]
006de31c  30 40 8d e5                                      str r4, [sp, #0x30]
006de320  91 c2 f0 eb                                      bl #0x30ed6c
006de324  04 10 a0 e1                                      mov r1, r4
006de328  00 90 a0 e1                                      mov sb, r0
006de32c  06 00 a0 e1                                      mov r0, r6
006de330  1b c2 f0 eb                                      bl #0x30eba4
006de334  06 10 a0 e1                                      mov r1, r6
006de338  02 01 80 e2                                      add r0, r0, #0x80000000
006de33c  54 c2 f0 eb                                      bl #0x30ec94
006de340  00 10 a0 e1                                      mov r1, r0
006de344  09 00 a0 e1                                      mov r0, sb
006de348  15 c2 f0 eb                                      bl #0x30eba4
006de34c  fb 15 a0 e3                                      mov r1, #0x3ec00000
006de350  34 00 8d e5                                      str r0, [sp, #0x34]
006de354  0a 00 a0 e1                                      mov r0, sl
006de358  83 c2 f0 eb                                      bl #0x30ed6c
006de35c  04 10 a0 e1                                      mov r1, r4
006de360  00 60 a0 e1                                      mov r6, r0
006de364  08 00 a0 e1                                      mov r0, r8
006de368  0d c2 f0 eb                                      bl #0x30eba4
006de36c  07 10 a0 e1                                      mov r1, r7
006de370  02 01 80 e2                                      add r0, r0, #0x80000000
006de374  46 c2 f0 eb                                      bl #0x30ec94
006de378  00 10 a0 e1                                      mov r1, r0
006de37c  06 00 a0 e1                                      mov r0, r6
006de380  07 c2 f0 eb                                      bl #0x30eba4
006de384  38 00 8d e5                                      str r0, [sp, #0x38]
006de388  00 30 95 e5                                      ldr r3, [r5]
006de38c  05 00 a0 e1                                      mov r0, r5
006de390  02 10 a0 e3                                      mov r1, #2
006de394  04 20 8d e2                                      add r2, sp, #4
006de398  0f e0 a0 e1                                      mov lr, pc
006de39c  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
006de3a0  48 d0 8d e2                                      add sp, sp, #0x48
006de3a4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x006de3a8, declared_size=592, range_size=592, mode=arm
; class-group: glitch::video::CCommonGLDriverBase
; alias: _ZN6glitch5video19CCommonGLDriverBaseC1EPNS_7IDeviceEPNS0_14IShaderManagerE
; demangled: glitch::video::CCommonGLDriverBase::CCommonGLDriverBase(glitch::IDevice*, glitch::video::IShaderManager*)
; decoder-mode: arm
006de3a8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006de3ac  1c d0 4d e2                                      sub sp, sp, #0x1c
006de3b0  00 c0 a0 e3                                      mov ip, #0
006de3b4  18 e0 8d e2                                      add lr, sp, #0x18
006de3b8  04 c0 2e e5                                      str ip, [lr, #-4]!
006de3bc  0c 30 a0 e1                                      mov r3, ip
006de3c0  08 e0 8d e5                                      str lr, [sp, #8]
006de3c4  00 c0 8d e5                                      str ip, [sp]
006de3c8  04 c0 8d e5                                      str ip, [sp, #4]
006de3cc  00 40 a0 e1                                      mov r4, r0
006de3d0  d1 32 fb eb                                      bl #0x5aaf1c
006de3d4  14 00 9d e5                                      ldr r0, [sp, #0x14]
006de3d8  0c 52 9f e5                                      ldr r5, [pc, #0x20c]
006de3dc  00 00 50 e3                                      cmp r0, #0
006de3e0  05 50 8f e0                                      add r5, pc, r5
006de3e4  04 00 00 0a                                      beq #0x6de3fc
006de3e8  00 30 90 e5                                      ldr r3, [r0]
006de3ec  01 30 43 e2                                      sub r3, r3, #1
006de3f0  00 00 53 e3                                      cmp r3, #0
006de3f4  00 30 80 e5                                      str r3, [r0]
006de3f8  6e 00 00 0a                                      beq #0x6de5b8
006de3fc  ec 21 9f e5                                      ldr r2, [pc, #0x1ec]
006de400  00 10 a0 e3                                      mov r1, #0
006de404  00 30 a0 e3                                      mov r3, #0
006de408  02 20 95 e7                                      ldr r2, [r5, r2]
006de40c  60 11 c4 e5                                      strb r1, [r4, #0x160]
006de410  59 0f 84 e2                                      add r0, r4, #0x164
006de414  08 20 82 e2                                      add r2, r2, #8
006de418  00 20 84 e5                                      str r2, [r4]
006de41c  71 2f 84 e2                                      add r2, r4, #0x1c4
006de420  00 30 80 e5                                      str r3, [r0]
006de424  04 30 80 e5                                      str r3, [r0, #4]
006de428  0c 30 80 e5                                      str r3, [r0, #0xc]
006de42c  10 30 80 e5                                      str r3, [r0, #0x10]
006de430  14 30 80 e5                                      str r3, [r0, #0x14]
006de434  18 00 80 e2                                      add r0, r0, #0x18
006de438  02 00 50 e1                                      cmp r0, r2
006de43c  f7 ff ff 1a                                      bne #0x6de420
006de440  9e f9 ff eb                                      bl #0x6dcac0
006de444  95 0f 84 e2                                      add r0, r4, #0x254
006de448  50 fa ff eb                                      bl #0x6dcd90
006de44c  0a 30 a0 e3                                      mov r3, #0xa
006de450  fe 65 a0 e3                                      mov r6, #0x3f800000
006de454  84 32 84 e5                                      str r3, [r4, #0x284]
006de458  a2 5f 84 e2                                      add r5, r4, #0x288
006de45c  d5 af 84 e2                                      add sl, r4, #0x354
006de460  00 90 a0 e3                                      mov sb, #0
006de464  01 b0 a0 e3                                      mov fp, #1
006de468  00 70 a0 e3                                      mov r7, #0
006de46c  40 90 c5 e5                                      strb sb, [r5, #0x40]
006de470  05 00 a0 e1                                      mov r0, r5
006de474  07 10 a0 e1                                      mov r1, r7
006de478  40 20 a0 e3                                      mov r2, #0x40
006de47c  f7 bf f0 eb                                      bl #0x30e460
006de480  00 60 85 e5                                      str r6, [r5]
006de484  14 60 85 e5                                      str r6, [r5, #0x14]
006de488  28 60 85 e5                                      str r6, [r5, #0x28]
006de48c  3c 60 85 e5                                      str r6, [r5, #0x3c]
006de490  40 b0 c5 e5                                      strb fp, [r5, #0x40]
006de494  44 50 85 e2                                      add r5, r5, #0x44
006de498  0a 00 55 e1                                      cmp r5, sl
006de49c  01 80 a0 e3                                      mov r8, #1
006de4a0  f0 ff ff 1a                                      bne #0x6de468
006de4a4  07 10 a0 e1                                      mov r1, r7
006de4a8  40 20 a0 e3                                      mov r2, #0x40
006de4ac  94 73 c4 e5                                      strb r7, [r4, #0x394]
006de4b0  05 00 a0 e1                                      mov r0, r5
006de4b4  e9 bf f0 eb                                      bl #0x30e460
006de4b8  07 10 a0 e1                                      mov r1, r7
006de4bc  40 20 a0 e3                                      mov r2, #0x40
006de4c0  54 63 84 e5                                      str r6, [r4, #0x354]
006de4c4  68 63 84 e5                                      str r6, [r4, #0x368]
006de4c8  7c 63 84 e5                                      str r6, [r4, #0x37c]
006de4cc  90 63 84 e5                                      str r6, [r4, #0x390]
006de4d0  94 83 c4 e5                                      strb r8, [r4, #0x394]
006de4d4  d8 73 c4 e5                                      strb r7, [r4, #0x3d8]
006de4d8  e6 0f 84 e2                                      add r0, r4, #0x398
006de4dc  df bf f0 eb                                      bl #0x30e460
006de4e0  07 10 a0 e1                                      mov r1, r7
006de4e4  40 20 a0 e3                                      mov r2, #0x40
006de4e8  98 63 84 e5                                      str r6, [r4, #0x398]
006de4ec  ac 63 84 e5                                      str r6, [r4, #0x3ac]
006de4f0  c0 63 84 e5                                      str r6, [r4, #0x3c0]
006de4f4  d4 63 84 e5                                      str r6, [r4, #0x3d4]
006de4f8  d8 83 c4 e5                                      strb r8, [r4, #0x3d8]
006de4fc  1c 74 c4 e5                                      strb r7, [r4, #0x41c]
006de500  f7 0f 84 e2                                      add r0, r4, #0x3dc
006de504  d5 bf f0 eb                                      bl #0x30e460
006de508  00 30 a0 e3                                      mov r3, #0
006de50c  1f 2d 84 e2                                      add r2, r4, #0x7c0
006de510  a8 34 84 e5                                      str r3, [r4, #0x4a8]
006de514  18 64 84 e5                                      str r6, [r4, #0x418]
006de518  1c 84 c4 e5                                      strb r8, [r4, #0x41c]
006de51c  dc 63 84 e5                                      str r6, [r4, #0x3dc]
006de520  f0 63 84 e5                                      str r6, [r4, #0x3f0]
006de524  04 64 84 e5                                      str r6, [r4, #0x404]
006de528  a0 74 c4 e5                                      strb r7, [r4, #0x4a0]
006de52c  a1 74 c4 e5                                      strb r7, [r4, #0x4a1]
006de530  a4 74 84 e5                                      str r7, [r4, #0x4a4]
006de534  0c 20 82 e2                                      add r2, r2, #0xc
006de538  07 10 a0 e1                                      mov r1, r7
006de53c  13 3d 84 e2                                      add r3, r4, #0x4c0
006de540  27 00 a0 e3                                      mov r0, #0x27
006de544  b4 01 43 e1                                      strh r0, [r3, #-0x14]
006de548  b2 01 43 e1                                      strh r0, [r3, #-0x12]
006de54c  10 10 03 e5                                      str r1, [r3, #-0x10]
006de550  0c 10 03 e5                                      str r1, [r3, #-0xc]
006de554  08 10 03 e5                                      str r1, [r3, #-8]
006de558  04 10 03 e5                                      str r1, [r3, #-4]
006de55c  14 30 83 e2                                      add r3, r3, #0x14
006de560  02 00 53 e1                                      cmp r3, r2
006de564  f5 ff ff 1a                                      bne #0x6de540
006de568  b8 17 84 e5                                      str r1, [r4, #0x7b8]
006de56c  bc 17 84 e5                                      str r1, [r4, #0x7bc]
006de570  c0 17 84 e5                                      str r1, [r4, #0x7c0]
006de574  c4 17 84 e5                                      str r1, [r4, #0x7c4]
006de578  c8 17 84 e5                                      str r1, [r4, #0x7c8]
006de57c  cc 17 84 e5                                      str r1, [r4, #0x7cc]
006de580  d0 17 84 e5                                      str r1, [r4, #0x7d0]
006de584  d4 17 84 e5                                      str r1, [r4, #0x7d4]
006de588  d8 17 84 e5                                      str r1, [r4, #0x7d8]
006de58c  dc 17 84 e5                                      str r1, [r4, #0x7dc]
006de590  e0 17 84 e5                                      str r1, [r4, #0x7e0]
006de594  e4 17 84 e5                                      str r1, [r4, #0x7e4]
006de598  e8 17 84 e5                                      str r1, [r4, #0x7e8]
006de59c  ec 17 84 e5                                      str r1, [r4, #0x7ec]
006de5a0  42 0e 84 e2                                      add r0, r4, #0x420
006de5a4  80 20 a0 e3                                      mov r2, #0x80
006de5a8  ac bf f0 eb                                      bl #0x30e460
006de5ac  04 00 a0 e1                                      mov r0, r4
006de5b0  1c d0 8d e2                                      add sp, sp, #0x1c
006de5b4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006de5b8  54 30 d0 e5                                      ldrb r3, [r0, #0x54]
006de5bc  00 00 53 e3                                      cmp r3, #0
006de5c0  05 00 00 1a                                      bne #0x6de5dc
006de5c4  28 30 9f e5                                      ldr r3, [pc, #0x28]
006de5c8  50 20 90 e5                                      ldr r2, [r0, #0x50]
006de5cc  03 30 95 e7                                      ldr r3, [r5, r3]
006de5d0  00 10 93 e5                                      ldr r1, [r3]
006de5d4  00 10 82 e5                                      str r1, [r2]
006de5d8  00 20 83 e5                                      str r2, [r3]
006de5dc  00 30 a0 e3                                      mov r3, #0
006de5e0  50 30 80 e5                                      str r3, [r0, #0x50]
006de5e4  31 bf f0 eb                                      bl #0x30e2b0
006de5e8  83 ff ff ea                                      b #0x6de3fc
; mapping-symbol data/literal pool
006de5ec  b0 66 2b 00 6c 3d 00 00 c0 3c 00 00              .byte 0xb0, 0x66, 0x2b, 0x00, 0x6c, 0x3d, 0x00, 0x00, 0xc0, 0x3c, 0x00, 0x00

; FUNCTION 0x006de5f8, declared_size=592, range_size=592, mode=arm
; class-group: glitch::video::CCommonGLDriverBase
; alias: _ZN6glitch5video19CCommonGLDriverBaseC2EPNS_7IDeviceEPNS0_14IShaderManagerE
; demangled: glitch::video::CCommonGLDriverBase::CCommonGLDriverBase(glitch::IDevice*, glitch::video::IShaderManager*)
; decoder-mode: arm
006de5f8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006de5fc  1c d0 4d e2                                      sub sp, sp, #0x1c
006de600  00 c0 a0 e3                                      mov ip, #0
006de604  18 e0 8d e2                                      add lr, sp, #0x18
006de608  04 c0 2e e5                                      str ip, [lr, #-4]!
006de60c  0c 30 a0 e1                                      mov r3, ip
006de610  08 e0 8d e5                                      str lr, [sp, #8]
006de614  00 c0 8d e5                                      str ip, [sp]
006de618  04 c0 8d e5                                      str ip, [sp, #4]
006de61c  00 40 a0 e1                                      mov r4, r0
006de620  3d 32 fb eb                                      bl #0x5aaf1c
006de624  14 00 9d e5                                      ldr r0, [sp, #0x14]
006de628  0c 52 9f e5                                      ldr r5, [pc, #0x20c]
006de62c  00 00 50 e3                                      cmp r0, #0
006de630  05 50 8f e0                                      add r5, pc, r5
006de634  04 00 00 0a                                      beq #0x6de64c
006de638  00 30 90 e5                                      ldr r3, [r0]
006de63c  01 30 43 e2                                      sub r3, r3, #1
006de640  00 00 53 e3                                      cmp r3, #0
006de644  00 30 80 e5                                      str r3, [r0]
006de648  6e 00 00 0a                                      beq #0x6de808
006de64c  ec 21 9f e5                                      ldr r2, [pc, #0x1ec]
006de650  00 10 a0 e3                                      mov r1, #0
006de654  00 30 a0 e3                                      mov r3, #0
006de658  02 20 95 e7                                      ldr r2, [r5, r2]
006de65c  60 11 c4 e5                                      strb r1, [r4, #0x160]
006de660  59 0f 84 e2                                      add r0, r4, #0x164
006de664  08 20 82 e2                                      add r2, r2, #8
006de668  00 20 84 e5                                      str r2, [r4]
006de66c  71 2f 84 e2                                      add r2, r4, #0x1c4
006de670  00 30 80 e5                                      str r3, [r0]
006de674  04 30 80 e5                                      str r3, [r0, #4]
006de678  0c 30 80 e5                                      str r3, [r0, #0xc]
006de67c  10 30 80 e5                                      str r3, [r0, #0x10]
006de680  14 30 80 e5                                      str r3, [r0, #0x14]
006de684  18 00 80 e2                                      add r0, r0, #0x18
006de688  02 00 50 e1                                      cmp r0, r2
006de68c  f7 ff ff 1a                                      bne #0x6de670
006de690  0a f9 ff eb                                      bl #0x6dcac0
006de694  95 0f 84 e2                                      add r0, r4, #0x254
006de698  bc f9 ff eb                                      bl #0x6dcd90
006de69c  0a 30 a0 e3                                      mov r3, #0xa
006de6a0  fe 65 a0 e3                                      mov r6, #0x3f800000
006de6a4  84 32 84 e5                                      str r3, [r4, #0x284]
006de6a8  a2 5f 84 e2                                      add r5, r4, #0x288
006de6ac  d5 af 84 e2                                      add sl, r4, #0x354
006de6b0  00 90 a0 e3                                      mov sb, #0
006de6b4  01 b0 a0 e3                                      mov fp, #1
006de6b8  00 70 a0 e3                                      mov r7, #0
006de6bc  40 90 c5 e5                                      strb sb, [r5, #0x40]
006de6c0  05 00 a0 e1                                      mov r0, r5
006de6c4  07 10 a0 e1                                      mov r1, r7
006de6c8  40 20 a0 e3                                      mov r2, #0x40
006de6cc  63 bf f0 eb                                      bl #0x30e460
006de6d0  00 60 85 e5                                      str r6, [r5]
006de6d4  14 60 85 e5                                      str r6, [r5, #0x14]
006de6d8  28 60 85 e5                                      str r6, [r5, #0x28]
006de6dc  3c 60 85 e5                                      str r6, [r5, #0x3c]
006de6e0  40 b0 c5 e5                                      strb fp, [r5, #0x40]
006de6e4  44 50 85 e2                                      add r5, r5, #0x44
006de6e8  0a 00 55 e1                                      cmp r5, sl
006de6ec  01 80 a0 e3                                      mov r8, #1
006de6f0  f0 ff ff 1a                                      bne #0x6de6b8
006de6f4  07 10 a0 e1                                      mov r1, r7
006de6f8  40 20 a0 e3                                      mov r2, #0x40
006de6fc  94 73 c4 e5                                      strb r7, [r4, #0x394]
006de700  05 00 a0 e1                                      mov r0, r5
006de704  55 bf f0 eb                                      bl #0x30e460
006de708  07 10 a0 e1                                      mov r1, r7
006de70c  40 20 a0 e3                                      mov r2, #0x40
006de710  54 63 84 e5                                      str r6, [r4, #0x354]
006de714  68 63 84 e5                                      str r6, [r4, #0x368]
006de718  7c 63 84 e5                                      str r6, [r4, #0x37c]
006de71c  90 63 84 e5                                      str r6, [r4, #0x390]
006de720  94 83 c4 e5                                      strb r8, [r4, #0x394]
006de724  d8 73 c4 e5                                      strb r7, [r4, #0x3d8]
006de728  e6 0f 84 e2                                      add r0, r4, #0x398
006de72c  4b bf f0 eb                                      bl #0x30e460
006de730  07 10 a0 e1                                      mov r1, r7
006de734  40 20 a0 e3                                      mov r2, #0x40
006de738  98 63 84 e5                                      str r6, [r4, #0x398]
006de73c  ac 63 84 e5                                      str r6, [r4, #0x3ac]
006de740  c0 63 84 e5                                      str r6, [r4, #0x3c0]
006de744  d4 63 84 e5                                      str r6, [r4, #0x3d4]
006de748  d8 83 c4 e5                                      strb r8, [r4, #0x3d8]
006de74c  1c 74 c4 e5                                      strb r7, [r4, #0x41c]
006de750  f7 0f 84 e2                                      add r0, r4, #0x3dc
006de754  41 bf f0 eb                                      bl #0x30e460
006de758  00 30 a0 e3                                      mov r3, #0
006de75c  1f 2d 84 e2                                      add r2, r4, #0x7c0
006de760  a8 34 84 e5                                      str r3, [r4, #0x4a8]
006de764  18 64 84 e5                                      str r6, [r4, #0x418]
006de768  1c 84 c4 e5                                      strb r8, [r4, #0x41c]
006de76c  dc 63 84 e5                                      str r6, [r4, #0x3dc]
006de770  f0 63 84 e5                                      str r6, [r4, #0x3f0]
006de774  04 64 84 e5                                      str r6, [r4, #0x404]
006de778  a0 74 c4 e5                                      strb r7, [r4, #0x4a0]
006de77c  a1 74 c4 e5                                      strb r7, [r4, #0x4a1]
006de780  a4 74 84 e5                                      str r7, [r4, #0x4a4]
006de784  0c 20 82 e2                                      add r2, r2, #0xc
006de788  07 10 a0 e1                                      mov r1, r7
006de78c  13 3d 84 e2                                      add r3, r4, #0x4c0
006de790  27 00 a0 e3                                      mov r0, #0x27
006de794  b4 01 43 e1                                      strh r0, [r3, #-0x14]
006de798  b2 01 43 e1                                      strh r0, [r3, #-0x12]
006de79c  10 10 03 e5                                      str r1, [r3, #-0x10]
006de7a0  0c 10 03 e5                                      str r1, [r3, #-0xc]
006de7a4  08 10 03 e5                                      str r1, [r3, #-8]
006de7a8  04 10 03 e5                                      str r1, [r3, #-4]
006de7ac  14 30 83 e2                                      add r3, r3, #0x14
006de7b0  02 00 53 e1                                      cmp r3, r2
006de7b4  f5 ff ff 1a                                      bne #0x6de790
006de7b8  b8 17 84 e5                                      str r1, [r4, #0x7b8]
006de7bc  bc 17 84 e5                                      str r1, [r4, #0x7bc]
006de7c0  c0 17 84 e5                                      str r1, [r4, #0x7c0]
006de7c4  c4 17 84 e5                                      str r1, [r4, #0x7c4]
006de7c8  c8 17 84 e5                                      str r1, [r4, #0x7c8]
006de7cc  cc 17 84 e5                                      str r1, [r4, #0x7cc]
006de7d0  d0 17 84 e5                                      str r1, [r4, #0x7d0]
006de7d4  d4 17 84 e5                                      str r1, [r4, #0x7d4]
006de7d8  d8 17 84 e5                                      str r1, [r4, #0x7d8]
006de7dc  dc 17 84 e5                                      str r1, [r4, #0x7dc]
006de7e0  e0 17 84 e5                                      str r1, [r4, #0x7e0]
006de7e4  e4 17 84 e5                                      str r1, [r4, #0x7e4]
006de7e8  e8 17 84 e5                                      str r1, [r4, #0x7e8]
006de7ec  ec 17 84 e5                                      str r1, [r4, #0x7ec]
006de7f0  42 0e 84 e2                                      add r0, r4, #0x420
006de7f4  80 20 a0 e3                                      mov r2, #0x80
006de7f8  18 bf f0 eb                                      bl #0x30e460
006de7fc  04 00 a0 e1                                      mov r0, r4
006de800  1c d0 8d e2                                      add sp, sp, #0x1c
006de804  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006de808  54 30 d0 e5                                      ldrb r3, [r0, #0x54]
006de80c  00 00 53 e3                                      cmp r3, #0
006de810  05 00 00 1a                                      bne #0x6de82c
006de814  28 30 9f e5                                      ldr r3, [pc, #0x28]
006de818  50 20 90 e5                                      ldr r2, [r0, #0x50]
006de81c  03 30 95 e7                                      ldr r3, [r5, r3]
006de820  00 10 93 e5                                      ldr r1, [r3]
006de824  00 10 82 e5                                      str r1, [r2]
006de828  00 20 83 e5                                      str r2, [r3]
006de82c  00 30 a0 e3                                      mov r3, #0
006de830  50 30 80 e5                                      str r3, [r0, #0x50]
006de834  9d be f0 eb                                      bl #0x30e2b0
006de838  83 ff ff ea                                      b #0x6de64c
; mapping-symbol data/literal pool
006de83c  60 64 2b 00 6c 3d 00 00 c0 3c 00 00              .byte 0x60, 0x64, 0x2b, 0x00, 0x6c, 0x3d, 0x00, 0x00, 0xc0, 0x3c, 0x00, 0x00

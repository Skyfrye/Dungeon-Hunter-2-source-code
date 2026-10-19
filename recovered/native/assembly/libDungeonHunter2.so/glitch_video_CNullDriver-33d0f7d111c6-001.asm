; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005a20b4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZN6glitch5video11CNullDriver16checkDriverResetEv
; demangled: glitch::video::CNullDriver::checkDriverReset()
; decoder-mode: arm
005a20b4  00 00 a0 e3                                      mov r0, #0
005a20b8  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b8de0, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZN6glitch5video11CNullDriver10beginSceneEv
; demangled: glitch::video::CNullDriver::beginScene()
; decoder-mode: arm
005b8de0  01 00 a0 e3                                      mov r0, #1
005b8de4  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b8de8, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZN6glitch5video11CNullDriver22captureFramebufferImplERKN5boost13intrusive_ptrINS0_8ITextureEEERKNS_4core10position2dIiEERKNS8_4rectIiEEhNS0_23E_TEXTURE_CUBE_MAP_FACEEb
; demangled: glitch::video::CNullDriver::captureFramebufferImpl(boost::intrusive_ptr<glitch::video::ITexture> const&, glitch::core::position2d<int> const&, glitch::core::rect<int> const&, unsigned char, glitch::video::E_TEXTURE_CUBE_MAP_FACE, bool)
; decoder-mode: arm
005b8de8  00 00 a0 e3                                      mov r0, #0
005b8dec  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b8df0, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZN6glitch5video11CNullDriver11swapBuffersEi
; demangled: glitch::video::CNullDriver::swapBuffers(int)
; decoder-mode: arm
005b8df0  01 00 a0 e3                                      mov r0, #1
005b8df4  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b8df8, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZN6glitch5video11CNullDriver12clearBuffersEi
; demangled: glitch::video::CNullDriver::clearBuffers(int)
; decoder-mode: arm
005b8df8  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b8dfc, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZN6glitch5video11CNullDriver12beginScene2DEv
; demangled: glitch::video::CNullDriver::beginScene2D()
; decoder-mode: arm
005b8dfc  01 00 a0 e3                                      mov r0, #1
005b8e00  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b8e04, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZN6glitch5video11CNullDriver10endScene2DEv
; demangled: glitch::video::CNullDriver::endScene2D()
; decoder-mode: arm
005b8e04  01 00 a0 e3                                      mov r0, #1
005b8e08  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b8e0c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZN6glitch5video11CNullDriver12ReinitDriverEv
; demangled: glitch::video::CNullDriver::ReinitDriver()
; decoder-mode: arm
005b8e0c  01 00 a0 e3                                      mov r0, #1
005b8e10  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b8e14, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZN6glitch5video11CNullDriver17registerBufferMapEjjjjPKv
; demangled: glitch::video::CNullDriver::registerBufferMap(unsigned int, unsigned int, unsigned int, unsigned int, void const*)
; decoder-mode: arm
005b8e14  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b8e18, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZN6glitch5video11CNullDriver15ReloadbufferMapEv
; demangled: glitch::video::CNullDriver::ReloadbufferMap()
; decoder-mode: arm
005b8e18  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b8e1c, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZN6glitch5video11CNullDriver19unregisterBufferMapEj
; demangled: glitch::video::CNullDriver::unregisterBufferMap(unsigned int)
; decoder-mode: arm
005b8e1c  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b8e20, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZN6glitch5video11CNullDriver14clearBufferMapEv
; demangled: glitch::video::CNullDriver::clearBufferMap()
; decoder-mode: arm
005b8e20  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b8e24, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZN6glitch5video11CNullDriver19resetTexturesLoaderEv
; demangled: glitch::video::CNullDriver::resetTexturesLoader()
; decoder-mode: arm
005b8e24  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b8e28, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZN6glitch5video11CNullDriver18reloadTexturesDataEv
; demangled: glitch::video::CNullDriver::reloadTexturesData()
; decoder-mode: arm
005b8e28  01 00 a0 e3                                      mov r0, #1
005b8e2c  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b8e30, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZN6glitch5video11CNullDriver13reloadShadersEv
; demangled: glitch::video::CNullDriver::reloadShaders()
; decoder-mode: arm
005b8e30  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b8e34, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZNK6glitch5video11CNullDriver14getBlendEnableEv
; demangled: glitch::video::CNullDriver::getBlendEnable() const
; decoder-mode: arm
005b8e34  00 00 a0 e3                                      mov r0, #0
005b8e38  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b8e3c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZNK6glitch5video11CNullDriver13getBlendColorEv
; demangled: glitch::video::CNullDriver::getBlendColor() const
; decoder-mode: arm
005b8e3c  08 d0 4d e2                                      sub sp, sp, #8
005b8e40  00 00 a0 e3                                      mov r0, #0
005b8e44  08 d0 8d e2                                      add sp, sp, #8
005b8e48  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b8e4c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZNK6glitch5video11CNullDriver16getBlendEquationEv
; demangled: glitch::video::CNullDriver::getBlendEquation() const
; decoder-mode: arm
005b8e4c  00 00 a0 e3                                      mov r0, #0
005b8e50  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b8e54, declared_size=20, range_size=20, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZNK6glitch5video11CNullDriver12getBlendFuncERNS0_14E_BLEND_FACTORES3_
; demangled: glitch::video::CNullDriver::getBlendFunc(glitch::video::E_BLEND_FACTOR&, glitch::video::E_BLEND_FACTOR&) const
; decoder-mode: arm
005b8e54  01 30 a0 e3                                      mov r3, #1
005b8e58  00 30 81 e5                                      str r3, [r1]
005b8e5c  00 30 a0 e3                                      mov r3, #0
005b8e60  00 30 82 e5                                      str r3, [r2]
005b8e64  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b8e68, declared_size=28, range_size=28, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZNK6glitch5video11CNullDriver12getColorMaskERbS2_S2_S2_
; demangled: glitch::video::CNullDriver::getColorMask(bool&, bool&, bool&, bool&) const
; decoder-mode: arm
005b8e68  00 c0 9d e5                                      ldr ip, [sp]
005b8e6c  01 00 a0 e3                                      mov r0, #1
005b8e70  00 00 cc e5                                      strb r0, [ip]
005b8e74  00 00 c3 e5                                      strb r0, [r3]
005b8e78  00 00 c2 e5                                      strb r0, [r2]
005b8e7c  00 00 c1 e5                                      strb r0, [r1]
005b8e80  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b8e84, declared_size=16, range_size=16, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZNK6glitch5video11CNullDriver13getClearColorEv
; demangled: glitch::video::CNullDriver::getClearColor() const
; decoder-mode: arm
005b8e84  08 d0 4d e2                                      sub sp, sp, #8
005b8e88  00 00 a0 e3                                      mov r0, #0
005b8e8c  08 d0 8d e2                                      add sp, sp, #8
005b8e90  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b8e94, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZNK6glitch5video11CNullDriver17getCullFaceEnableEv
; demangled: glitch::video::CNullDriver::getCullFaceEnable() const
; decoder-mode: arm
005b8e94  00 00 a0 e3                                      mov r0, #0
005b8e98  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b8e9c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZNK6glitch5video11CNullDriver11getCullFaceEv
; demangled: glitch::video::CNullDriver::getCullFace() const
; decoder-mode: arm
005b8e9c  00 00 a0 e3                                      mov r0, #0
005b8ea0  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b8ea4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZNK6glitch5video11CNullDriver12getFrontFaceEv
; demangled: glitch::video::CNullDriver::getFrontFace() const
; decoder-mode: arm
005b8ea4  00 00 a0 e3                                      mov r0, #0
005b8ea8  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b8eac, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZNK6glitch5video11CNullDriver18getDepthTestEnableEv
; demangled: glitch::video::CNullDriver::getDepthTestEnable() const
; decoder-mode: arm
005b8eac  00 00 a0 e3                                      mov r0, #0
005b8eb0  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b8eb4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZNK6glitch5video11CNullDriver12getDepthFuncEv
; demangled: glitch::video::CNullDriver::getDepthFunc() const
; decoder-mode: arm
005b8eb4  01 00 a0 e3                                      mov r0, #1
005b8eb8  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b8ebc, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZNK6glitch5video11CNullDriver12getDepthMaskEv
; demangled: glitch::video::CNullDriver::getDepthMask() const
; decoder-mode: arm
005b8ebc  01 00 a0 e3                                      mov r0, #1
005b8ec0  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b8ec4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZNK6glitch5video11CNullDriver13getClearDepthEv
; demangled: glitch::video::CNullDriver::getClearDepth() const
; decoder-mode: arm
005b8ec4  00 00 a0 e3                                      mov r0, #0
005b8ec8  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b8ecc, declared_size=20, range_size=20, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZNK6glitch5video11CNullDriver13getDepthRangeERfS2_
; demangled: glitch::video::CNullDriver::getDepthRange(float&, float&) const
; decoder-mode: arm
005b8ecc  00 30 a0 e3                                      mov r3, #0
005b8ed0  00 30 81 e5                                      str r3, [r1]
005b8ed4  fe 35 a0 e3                                      mov r3, #0x3f800000
005b8ed8  00 30 82 e5                                      str r3, [r2]
005b8edc  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b8ee0, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZNK6glitch5video11CNullDriver15getDitherEnableEv
; demangled: glitch::video::CNullDriver::getDitherEnable() const
; decoder-mode: arm
005b8ee0  00 00 a0 e3                                      mov r0, #0
005b8ee4  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b8ee8, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZNK6glitch5video11CNullDriver12getLineWidthEv
; demangled: glitch::video::CNullDriver::getLineWidth() const
; decoder-mode: arm
005b8ee8  fe 05 a0 e3                                      mov r0, #0x3f800000
005b8eec  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b8ef0, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZNK6glitch5video11CNullDriver12getPointSizeEv
; demangled: glitch::video::CNullDriver::getPointSize() const
; decoder-mode: arm
005b8ef0  fe 05 a0 e3                                      mov r0, #0x3f800000
005b8ef4  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b8ef8, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZNK6glitch5video11CNullDriver19getPolygonModeFrontEv
; demangled: glitch::video::CNullDriver::getPolygonModeFront() const
; decoder-mode: arm
005b8ef8  00 00 a0 e3                                      mov r0, #0
005b8efc  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b8f00, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZNK6glitch5video11CNullDriver18getPolygonModeBackEv
; demangled: glitch::video::CNullDriver::getPolygonModeBack() const
; decoder-mode: arm
005b8f00  00 00 a0 e3                                      mov r0, #0
005b8f04  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b8f08, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZNK6glitch5video11CNullDriver26getPolygonOffsetFillEnableEv
; demangled: glitch::video::CNullDriver::getPolygonOffsetFillEnable() const
; decoder-mode: arm
005b8f08  00 00 a0 e3                                      mov r0, #0
005b8f0c  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b8f10, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZNK6glitch5video11CNullDriver26getPolygonOffsetLineEnableEv
; demangled: glitch::video::CNullDriver::getPolygonOffsetLineEnable() const
; decoder-mode: arm
005b8f10  00 00 a0 e3                                      mov r0, #0
005b8f14  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b8f18, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZNK6glitch5video11CNullDriver27getPolygonOffsetPointEnableEv
; demangled: glitch::video::CNullDriver::getPolygonOffsetPointEnable() const
; decoder-mode: arm
005b8f18  00 00 a0 e3                                      mov r0, #0
005b8f1c  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b8f20, declared_size=20, range_size=20, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZNK6glitch5video11CNullDriver16getPolygonOffsetERfS2_
; demangled: glitch::video::CNullDriver::getPolygonOffset(float&, float&) const
; decoder-mode: arm
005b8f20  00 30 a0 e3                                      mov r3, #0
005b8f24  00 30 81 e5                                      str r3, [r1]
005b8f28  fe 35 a0 e3                                      mov r3, #0x3f800000
005b8f2c  00 30 82 e5                                      str r3, [r2]
005b8f30  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b8f34, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZNK6glitch5video11CNullDriver30getSampleAlphaToCoverageEnableEv
; demangled: glitch::video::CNullDriver::getSampleAlphaToCoverageEnable() const
; decoder-mode: arm
005b8f34  00 00 a0 e3                                      mov r0, #0
005b8f38  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b8f3c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZNK6glitch5video11CNullDriver23getSampleCoverageEnableEv
; demangled: glitch::video::CNullDriver::getSampleCoverageEnable() const
; decoder-mode: arm
005b8f3c  00 00 a0 e3                                      mov r0, #0
005b8f40  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b8f44, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZNK6glitch5video11CNullDriver23getSampleCoverageInvertEv
; demangled: glitch::video::CNullDriver::getSampleCoverageInvert() const
; decoder-mode: arm
005b8f44  00 00 a0 e3                                      mov r0, #0
005b8f48  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b8f4c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZNK6glitch5video11CNullDriver22getSampleCoverageValueEv
; demangled: glitch::video::CNullDriver::getSampleCoverageValue() const
; decoder-mode: arm
005b8f4c  00 00 a0 e3                                      mov r0, #0
005b8f50  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b8f54, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZNK6glitch5video11CNullDriver16getScissorEnableEv
; demangled: glitch::video::CNullDriver::getScissorEnable() const
; decoder-mode: arm
005b8f54  00 00 a0 e3                                      mov r0, #0
005b8f58  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b8f5c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZNK6glitch5video11CNullDriver10getScissorEv
; demangled: glitch::video::CNullDriver::getScissor() const
; decoder-mode: arm
005b8f5c  cc 30 90 e5                                      ldr r3, [r0, #0xcc]
005b8f60  04 00 13 e5                                      ldr r0, [r3, #-4]
005b8f64  14 00 80 e2                                      add r0, r0, #0x14
005b8f68  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b8f6c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZNK6glitch5video11CNullDriver20getStencilTestEnableEv
; demangled: glitch::video::CNullDriver::getStencilTestEnable() const
; decoder-mode: arm
005b8f6c  00 00 a0 e3                                      mov r0, #0
005b8f70  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b8f74, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZNK6glitch5video11CNullDriver14getStencilFuncEv
; demangled: glitch::video::CNullDriver::getStencilFunc() const
; decoder-mode: arm
005b8f74  07 00 a0 e3                                      mov r0, #7
005b8f78  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b8f7c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZNK6glitch5video11CNullDriver17getStencilFuncRefEPb
; demangled: glitch::video::CNullDriver::getStencilFuncRef(bool*) const
; decoder-mode: arm
005b8f7c  00 00 a0 e3                                      mov r0, #0
005b8f80  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b8f84, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZNK6glitch5video11CNullDriver18getStencilFuncMaskEPb
; demangled: glitch::video::CNullDriver::getStencilFuncMask(bool*) const
; decoder-mode: arm
005b8f84  ff 00 a0 e3                                      mov r0, #0xff
005b8f88  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b8f8c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZNK6glitch5video11CNullDriver16getStencilOpFailEv
; demangled: glitch::video::CNullDriver::getStencilOpFail() const
; decoder-mode: arm
005b8f8c  00 00 a0 e3                                      mov r0, #0
005b8f90  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b8f94, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZNK6glitch5video11CNullDriver17getStencilOpZFailEv
; demangled: glitch::video::CNullDriver::getStencilOpZFail() const
; decoder-mode: arm
005b8f94  00 00 a0 e3                                      mov r0, #0
005b8f98  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b8f9c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZNK6glitch5video11CNullDriver17getStencilOpZPassEv
; demangled: glitch::video::CNullDriver::getStencilOpZPass() const
; decoder-mode: arm
005b8f9c  00 00 a0 e3                                      mov r0, #0
005b8fa0  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b8fa4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZNK6glitch5video11CNullDriver14getStencilMaskEPb
; demangled: glitch::video::CNullDriver::getStencilMask(bool*) const
; decoder-mode: arm
005b8fa4  ff 00 a0 e3                                      mov r0, #0xff
005b8fa8  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b8fac, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZNK6glitch5video11CNullDriver15getClearStencilEv
; demangled: glitch::video::CNullDriver::getClearStencil() const
; decoder-mode: arm
005b8fac  00 00 a0 e3                                      mov r0, #0
005b8fb0  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b8fb4, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZN6glitch5video11CNullDriver14setBlendEnableEb
; demangled: glitch::video::CNullDriver::setBlendEnable(bool)
; decoder-mode: arm
005b8fb4  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b8fb8, declared_size=12, range_size=12, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZN6glitch5video11CNullDriver13setBlendColorENS0_6SColorE
; demangled: glitch::video::CNullDriver::setBlendColor(glitch::video::SColor)
; decoder-mode: arm
005b8fb8  08 d0 4d e2                                      sub sp, sp, #8
005b8fbc  08 d0 8d e2                                      add sp, sp, #8
005b8fc0  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b8fc4, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZN6glitch5video11CNullDriver16setBlendEquationENS0_16E_BLEND_EQUATIONE
; demangled: glitch::video::CNullDriver::setBlendEquation(glitch::video::E_BLEND_EQUATION)
; decoder-mode: arm
005b8fc4  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b8fc8, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZN6glitch5video11CNullDriver12setBlendFuncENS0_14E_BLEND_FACTORES2_
; demangled: glitch::video::CNullDriver::setBlendFunc(glitch::video::E_BLEND_FACTOR, glitch::video::E_BLEND_FACTOR)
; decoder-mode: arm
005b8fc8  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b8fcc, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZN6glitch5video11CNullDriver12setColorMaskEbbbb
; demangled: glitch::video::CNullDriver::setColorMask(bool, bool, bool, bool)
; decoder-mode: arm
005b8fcc  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b8fd0, declared_size=12, range_size=12, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZN6glitch5video11CNullDriver13setClearColorENS0_6SColorE
; demangled: glitch::video::CNullDriver::setClearColor(glitch::video::SColor)
; decoder-mode: arm
005b8fd0  08 d0 4d e2                                      sub sp, sp, #8
005b8fd4  08 d0 8d e2                                      add sp, sp, #8
005b8fd8  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b8fdc, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZN6glitch5video11CNullDriver17setCullFaceEnableEb
; demangled: glitch::video::CNullDriver::setCullFaceEnable(bool)
; decoder-mode: arm
005b8fdc  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b8fe0, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZN6glitch5video11CNullDriver11setCullFaceENS0_11E_FACE_SIDEE
; demangled: glitch::video::CNullDriver::setCullFace(glitch::video::E_FACE_SIDE)
; decoder-mode: arm
005b8fe0  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b8fe4, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZN6glitch5video11CNullDriver12setFrontFaceENS0_14E_FACE_WINDINGE
; demangled: glitch::video::CNullDriver::setFrontFace(glitch::video::E_FACE_WINDING)
; decoder-mode: arm
005b8fe4  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b8fe8, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZN6glitch5video11CNullDriver18setDepthTestEnableEb
; demangled: glitch::video::CNullDriver::setDepthTestEnable(bool)
; decoder-mode: arm
005b8fe8  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b8fec, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZN6glitch5video11CNullDriver12setDepthFuncENS0_14E_COMPARE_FUNCE
; demangled: glitch::video::CNullDriver::setDepthFunc(glitch::video::E_COMPARE_FUNC)
; decoder-mode: arm
005b8fec  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b8ff0, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZN6glitch5video11CNullDriver12setDepthMaskEb
; demangled: glitch::video::CNullDriver::setDepthMask(bool)
; decoder-mode: arm
005b8ff0  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b8ff4, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZN6glitch5video11CNullDriver13setClearDepthEf
; demangled: glitch::video::CNullDriver::setClearDepth(float)
; decoder-mode: arm
005b8ff4  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b8ff8, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZN6glitch5video11CNullDriver13setDepthRangeEff
; demangled: glitch::video::CNullDriver::setDepthRange(float, float)
; decoder-mode: arm
005b8ff8  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b8ffc, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZN6glitch5video11CNullDriver15setDitherEnableEb
; demangled: glitch::video::CNullDriver::setDitherEnable(bool)
; decoder-mode: arm
005b8ffc  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b9000, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZN6glitch5video11CNullDriver12setLineWidthEf
; demangled: glitch::video::CNullDriver::setLineWidth(float)
; decoder-mode: arm
005b9000  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b9004, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZN6glitch5video11CNullDriver12setPointSizeEf
; demangled: glitch::video::CNullDriver::setPointSize(float)
; decoder-mode: arm
005b9004  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b9008, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZN6glitch5video11CNullDriver19setPolygonModeFrontENS0_14E_POLYGON_MODEE
; demangled: glitch::video::CNullDriver::setPolygonModeFront(glitch::video::E_POLYGON_MODE)
; decoder-mode: arm
005b9008  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b900c, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZN6glitch5video11CNullDriver18setPolygonModeBackENS0_14E_POLYGON_MODEE
; demangled: glitch::video::CNullDriver::setPolygonModeBack(glitch::video::E_POLYGON_MODE)
; decoder-mode: arm
005b900c  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b9010, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZN6glitch5video11CNullDriver26setPolygonOffsetFillEnableEb
; demangled: glitch::video::CNullDriver::setPolygonOffsetFillEnable(bool)
; decoder-mode: arm
005b9010  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b9014, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZN6glitch5video11CNullDriver26setPolygonOffsetLineEnableEb
; demangled: glitch::video::CNullDriver::setPolygonOffsetLineEnable(bool)
; decoder-mode: arm
005b9014  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b9018, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZN6glitch5video11CNullDriver27setPolygonOffsetPointEnableEb
; demangled: glitch::video::CNullDriver::setPolygonOffsetPointEnable(bool)
; decoder-mode: arm
005b9018  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b901c, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZN6glitch5video11CNullDriver16setPolygonOffsetEff
; demangled: glitch::video::CNullDriver::setPolygonOffset(float, float)
; decoder-mode: arm
005b901c  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b9020, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZN6glitch5video11CNullDriver30setSampleAlphaToCoverageEnableEb
; demangled: glitch::video::CNullDriver::setSampleAlphaToCoverageEnable(bool)
; decoder-mode: arm
005b9020  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b9024, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZN6glitch5video11CNullDriver23setSampleCoverageEnableEb
; demangled: glitch::video::CNullDriver::setSampleCoverageEnable(bool)
; decoder-mode: arm
005b9024  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b9028, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZN6glitch5video11CNullDriver23setSampleCoverageInvertEb
; demangled: glitch::video::CNullDriver::setSampleCoverageInvert(bool)
; decoder-mode: arm
005b9028  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b902c, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZN6glitch5video11CNullDriver22setSampleCoverageValueEf
; demangled: glitch::video::CNullDriver::setSampleCoverageValue(float)
; decoder-mode: arm
005b902c  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b9030, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZN6glitch5video11CNullDriver16setScissorEnableEb
; demangled: glitch::video::CNullDriver::setScissorEnable(bool)
; decoder-mode: arm
005b9030  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b9034, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZN6glitch5video11CNullDriver10setScissorERKNS_4core4rectIiEE
; demangled: glitch::video::CNullDriver::setScissor(glitch::core::rect<int> const&)
; decoder-mode: arm
005b9034  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b9038, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZN6glitch5video11CNullDriver20setStencilTestEnableEb
; demangled: glitch::video::CNullDriver::setStencilTestEnable(bool)
; decoder-mode: arm
005b9038  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b903c, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZN6glitch5video11CNullDriver14setStencilFuncENS0_14E_COMPARE_FUNCE
; demangled: glitch::video::CNullDriver::setStencilFunc(glitch::video::E_COMPARE_FUNC)
; decoder-mode: arm
005b903c  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b9040, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZN6glitch5video11CNullDriver17setStencilFuncRefEh
; demangled: glitch::video::CNullDriver::setStencilFuncRef(unsigned char)
; decoder-mode: arm
005b9040  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b9044, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZN6glitch5video11CNullDriver18setStencilFuncMaskEh
; demangled: glitch::video::CNullDriver::setStencilFuncMask(unsigned char)
; decoder-mode: arm
005b9044  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b9048, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZN6glitch5video11CNullDriver16setStencilOpFailENS0_12E_STENCIL_OPE
; demangled: glitch::video::CNullDriver::setStencilOpFail(glitch::video::E_STENCIL_OP)
; decoder-mode: arm
005b9048  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b904c, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZN6glitch5video11CNullDriver17setStencilOpZFailENS0_12E_STENCIL_OPE
; demangled: glitch::video::CNullDriver::setStencilOpZFail(glitch::video::E_STENCIL_OP)
; decoder-mode: arm
005b904c  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b9050, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZN6glitch5video11CNullDriver17setStencilOpZPassENS0_12E_STENCIL_OPE
; demangled: glitch::video::CNullDriver::setStencilOpZPass(glitch::video::E_STENCIL_OP)
; decoder-mode: arm
005b9050  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b9054, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZN6glitch5video11CNullDriver14setStencilMaskEh
; demangled: glitch::video::CNullDriver::setStencilMask(unsigned char)
; decoder-mode: arm
005b9054  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b9058, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZN6glitch5video11CNullDriver15setClearStencilEh
; demangled: glitch::video::CNullDriver::setClearStencil(unsigned char)
; decoder-mode: arm
005b9058  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b905c, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZNK6glitch5video11CNullDriver14getRenderStateERNS0_6detail6driver12SRenderStateE
; demangled: glitch::video::CNullDriver::getRenderState(glitch::video::detail::driver::SRenderState&) const
; decoder-mode: arm
005b905c  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b9060, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZN6glitch5video11CNullDriver14setRenderStateERKNS0_6detail6driver12SRenderStateE
; demangled: glitch::video::CNullDriver::setRenderState(glitch::video::detail::driver::SRenderState const&)
; decoder-mode: arm
005b9060  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b9064, declared_size=20, range_size=20, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZNK6glitch5video11CNullDriver12getTransformENS0_22E_TRANSFORMATION_STATEE
; demangled: glitch::video::CNullDriver::getTransform(glitch::video::E_TRANSFORMATION_STATE) const
; decoder-mode: arm
005b9064  44 30 a0 e3                                      mov r3, #0x44
005b9068  93 01 03 e0                                      mul r3, r3, r1
005b906c  16 3e 83 e2                                      add r3, r3, #0x160
005b9070  03 00 80 e0                                      add r0, r0, r3
005b9074  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b9078, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZN6glitch5video11CNullDriver21commitCurrentMaterialEv
; demangled: glitch::video::CNullDriver::commitCurrentMaterial()
; decoder-mode: arm
005b9078  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b907c, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZN6glitch5video11CNullDriver22commitMaterialRendererEPNS0_17CMaterialRendererE
; demangled: glitch::video::CNullDriver::commitMaterialRenderer(glitch::video::CMaterialRenderer*)
; decoder-mode: arm
005b907c  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b9080, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZN6glitch5video11CNullDriver15setRenderTargetERKN5boost13intrusive_ptrINS0_8ITextureEEEi
; demangled: glitch::video::CNullDriver::setRenderTarget(boost::intrusive_ptr<glitch::video::ITexture> const&, int)
; decoder-mode: arm
005b9080  00 00 a0 e3                                      mov r0, #0
005b9084  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b9088, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZN6glitch5video11CNullDriver15setViewportImplERKNS_4core4rectIiEE
; demangled: glitch::video::CNullDriver::setViewportImpl(glitch::core::rect<int> const&)
; decoder-mode: arm
005b9088  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b908c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZNK6glitch5video11CNullDriver20getMaxUserClipPlanesEv
; demangled: glitch::video::CNullDriver::getMaxUserClipPlanes() const
; decoder-mode: arm
005b908c  00 00 a0 e3                                      mov r0, #0
005b9090  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b9094, declared_size=12, range_size=12, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZN6glitch5video11CNullDriver10draw2DLineERKNS_4core10position2dIiEES6_NS0_6SColorE
; demangled: glitch::video::CNullDriver::draw2DLine(glitch::core::position2d<int> const&, glitch::core::position2d<int> const&, glitch::video::SColor)
; decoder-mode: arm
005b9094  08 d0 4d e2                                      sub sp, sp, #8
005b9098  08 d0 8d e2                                      add sp, sp, #8
005b909c  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b90a0, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZN6glitch5video11CNullDriver15draw2DRectangleERKNS_4core4rectIiEES6_PKNS0_6SColorEPS5_
; demangled: glitch::video::CNullDriver::draw2DRectangle(glitch::core::rect<int> const&, glitch::core::rect<int> const&, glitch::video::SColor const*, glitch::core::rect<int> const*)
; decoder-mode: arm
005b90a0  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b90a4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZNK6glitch5video11CNullDriver14getColorFormatEv
; demangled: glitch::video::CNullDriver::getColorFormat() const
; decoder-mode: arm
005b90a4  05 00 a0 e3                                      mov r0, #5
005b90a8  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b90ac, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZNK6glitch5video11CNullDriver13getDriverTypeEv
; demangled: glitch::video::CNullDriver::getDriverType() const
; decoder-mode: arm
005b90ac  00 00 a0 e3                                      mov r0, #0
005b90b0  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b90b4, declared_size=12, range_size=12, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZN6glitch5video11CNullDriver16createScreenShotEv
; demangled: glitch::video::CNullDriver::createScreenShot()
; decoder-mode: arm
005b90b4  00 20 a0 e3                                      mov r2, #0
005b90b8  00 20 80 e5                                      str r2, [r0]
005b90bc  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b90c0, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZN6glitch5video11CNullDriver19onMaterialDestroyedEPNS0_9CMaterialE
; demangled: glitch::video::CNullDriver::onMaterialDestroyed(glitch::video::CMaterial*)
; decoder-mode: arm
005b90c0  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b90c4, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZN6glitch5video11CNullDriver12beginCompileEPNS0_12IVideoDriver12ICompileDataE
; demangled: glitch::video::CNullDriver::beginCompile(glitch::video::IVideoDriver::ICompileData*)
; decoder-mode: arm
005b90c4  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b90c8, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZN6glitch5video11CNullDriver10endCompileEv
; demangled: glitch::video::CNullDriver::endCompile()
; decoder-mode: arm
005b90c8  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b90cc, declared_size=12, range_size=12, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZN6glitch5video11CNullDriver18createRenderBufferERKNS_4core11dimension2dIiEENS0_14E_PIXEL_FORMATE
; demangled: glitch::video::CNullDriver::createRenderBuffer(glitch::core::dimension2d<int> const&, glitch::video::E_PIXEL_FORMAT)
; decoder-mode: arm
005b90cc  00 20 a0 e3                                      mov r2, #0
005b90d0  00 20 80 e5                                      str r2, [r0]
005b90d4  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b90d8, declared_size=12, range_size=12, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZN6glitch5video11CNullDriver18createRenderTargetERKN5boost13intrusive_ptrINS0_8ITextureEEEj
; demangled: glitch::video::CNullDriver::createRenderTarget(boost::intrusive_ptr<glitch::video::ITexture> const&, unsigned int)
; decoder-mode: arm
005b90d8  00 20 a0 e3                                      mov r2, #0
005b90dc  00 20 80 e5                                      str r2, [r0]
005b90e0  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b90e4, declared_size=12, range_size=12, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZN6glitch5video11CNullDriver26createMultipleRenderTargetEv
; demangled: glitch::video::CNullDriver::createMultipleRenderTarget()
; decoder-mode: arm
005b90e4  00 20 a0 e3                                      mov r2, #0
005b90e8  00 20 80 e5                                      str r2, [r0]
005b90ec  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b90f0, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZN6glitch5video11CNullDriver18restoreShadowStateEv
; demangled: glitch::video::CNullDriver::restoreShadowState()
; decoder-mode: arm
005b90f0  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b90f4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZN6glitch5video11CNullDriver8drawImplERKN5boost13intrusive_ptrIKNS0_14CVertexStreamsEEERKNS0_16CPrimitiveStreamEPPNS0_14CDriverBindingE
; demangled: glitch::video::CNullDriver::drawImpl(boost::intrusive_ptr<glitch::video::CVertexStreams const> const&, glitch::video::CPrimitiveStream const&, glitch::video::CDriverBinding**)
; decoder-mode: arm
005b90f4  00 00 a0 e3                                      mov r0, #0
005b90f8  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b90fc, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZN6glitch5video11CNullDriver21commitCurrentMaterialEb
; demangled: glitch::video::CNullDriver::commitCurrentMaterial(bool)
; decoder-mode: arm
005b90fc  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b9240, declared_size=140, range_size=140, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZN6glitch5video11CNullDriver12printVersionEv
; demangled: glitch::video::CNullDriver::printVersion()
; decoder-mode: arm
005b9240  70 40 2d e9                                      push {r4, r5, r6, lr}
005b9244  7c 10 9f e5                                      ldr r1, [pc, #0x7c]
005b9248  98 d0 4d e2                                      sub sp, sp, #0x98
005b924c  4c 40 8d e2                                      add r4, sp, #0x4c
005b9250  94 20 8d e2                                      add r2, sp, #0x94
005b9254  00 60 a0 e1                                      mov r6, r0
005b9258  01 10 8f e0                                      add r1, pc, r1
005b925c  04 50 8d e2                                      add r5, sp, #4
005b9260  04 00 a0 e1                                      mov r0, r4
005b9264  24 b3 f5 eb                                      bl #0x325efc
005b9268  1c 10 96 e5                                      ldr r1, [r6, #0x1c]
005b926c  05 00 a0 e1                                      mov r0, r5
005b9270  14 b4 f5 eb                                      bl #0x3262c8
005b9274  04 00 a0 e1                                      mov r0, r4
005b9278  48 10 9d e5                                      ldr r1, [sp, #0x48]
005b927c  44 20 9d e5                                      ldr r2, [sp, #0x44]
005b9280  70 9e f5 eb                                      bl #0x320c48
005b9284  48 00 9d e5                                      ldr r0, [sp, #0x48]
005b9288  05 00 50 e1                                      cmp r0, r5
005b928c  02 00 00 0a                                      beq #0x5b929c
005b9290  00 00 50 e3                                      cmp r0, #0
005b9294  00 00 00 0a                                      beq #0x5b929c
005b9298  6c 5c f5 eb                                      bl #0x310450
005b929c  90 00 9d e5                                      ldr r0, [sp, #0x90]
005b92a0  01 10 a0 e3                                      mov r1, #1
005b92a4  a3 46 01 eb                                      bl #0x60ad38
005b92a8  90 00 9d e5                                      ldr r0, [sp, #0x90]
005b92ac  04 00 50 e1                                      cmp r0, r4
005b92b0  02 00 00 0a                                      beq #0x5b92c0
005b92b4  00 00 50 e3                                      cmp r0, #0
005b92b8  00 00 00 0a                                      beq #0x5b92c0
005b92bc  63 5c f5 eb                                      bl #0x310450
005b92c0  98 d0 8d e2                                      add sp, sp, #0x98
005b92c4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005b92c8  50 76 32 00                                      .byte 0x50, 0x76, 0x32, 0x00

; FUNCTION 0x005b92cc, declared_size=128, range_size=128, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZN6glitch5video11CNullDriver12createBufferENS0_13E_BUFFER_TYPEENS0_14E_BUFFER_USAGEEjPvb
; demangled: glitch::video::CNullDriver::createBuffer(glitch::video::E_BUFFER_TYPE, glitch::video::E_BUFFER_USAGE, unsigned int, void*, bool)
; decoder-mode: arm
005b92cc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005b92d0  00 10 a0 e3                                      mov r1, #0
005b92d4  08 d0 4d e2                                      sub sp, sp, #8
005b92d8  00 60 a0 e1                                      mov r6, r0
005b92dc  14 00 a0 e3                                      mov r0, #0x14
005b92e0  02 50 a0 e1                                      mov r5, r2
005b92e4  03 80 a0 e1                                      mov r8, r3
005b92e8  28 70 dd e5                                      ldrb r7, [sp, #0x28]
005b92ec  ae eb fd eb                                      bl #0x5341ac
005b92f0  24 c0 9d e5                                      ldr ip, [sp, #0x24]
005b92f4  05 10 a0 e1                                      mov r1, r5
005b92f8  20 30 9d e5                                      ldr r3, [sp, #0x20]
005b92fc  08 20 a0 e1                                      mov r2, r8
005b9300  3c 50 9f e5                                      ldr r5, [pc, #0x3c]
005b9304  00 40 a0 e1                                      mov r4, r0
005b9308  00 c0 8d e5                                      str ip, [sp]
005b930c  04 70 8d e5                                      str r7, [sp, #4]
005b9310  7c a1 ff eb                                      bl #0x5a1908
005b9314  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
005b9318  05 50 8f e0                                      add r5, pc, r5
005b931c  06 00 a0 e1                                      mov r0, r6
005b9320  03 30 95 e7                                      ldr r3, [r5, r3]
005b9324  08 30 83 e2                                      add r3, r3, #8
005b9328  00 30 84 e5                                      str r3, [r4]
005b932c  00 40 86 e5                                      str r4, [r6]
005b9330  04 30 94 e5                                      ldr r3, [r4, #4]
005b9334  01 30 83 e2                                      add r3, r3, #1
005b9338  04 30 84 e5                                      str r3, [r4, #4]
005b933c  08 d0 8d e2                                      add sp, sp, #8
005b9340  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
005b9344  78 b7 3d 00 2c 2e 00 00                          .byte 0x78, 0xb7, 0x3d, 0x00, 0x2c, 0x2e, 0x00, 0x00

; FUNCTION 0x005b93d0, declared_size=28, range_size=28, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZN6glitch5video11CNullDriver12setTransformENS0_22E_TRANSFORMATION_STATEERKNS_4core8CMatrix4IfEE
; demangled: glitch::video::CNullDriver::setTransform(glitch::video::E_TRANSFORMATION_STATE, glitch::core::CMatrix4<float> const&)
; decoder-mode: arm
005b93d0  44 30 a0 e3                                      mov r3, #0x44
005b93d4  93 01 03 e0                                      mul r3, r3, r1
005b93d8  02 10 a0 e1                                      mov r1, r2
005b93dc  16 3e 83 e2                                      add r3, r3, #0x160
005b93e0  03 00 80 e0                                      add r0, r0, r3
005b93e4  41 20 a0 e3                                      mov r2, #0x41
005b93e8  1e 55 f5 ea                                      b #0x30e868

; FUNCTION 0x005b93ec, declared_size=64, range_size=64, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZN6glitch5video11CNullDriver8endSceneEv
; demangled: glitch::video::CNullDriver::endScene()
; decoder-mode: arm
005b93ec  10 40 2d e9                                      push {r4, lr}
005b93f0  08 d0 4d e2                                      sub sp, sp, #8
005b93f4  00 40 a0 e1                                      mov r4, r0
005b93f8  33 47 01 eb                                      bl #0x60b0cc
005b93fc  80 e0 94 e5                                      ldr lr, [r4, #0x80]
005b9400  84 c0 94 e5                                      ldr ip, [r4, #0x84]
005b9404  78 20 94 e5                                      ldr r2, [r4, #0x78]
005b9408  7c 30 94 e5                                      ldr r3, [r4, #0x7c]
005b940c  00 10 a0 e1                                      mov r1, r0
005b9410  50 00 84 e2                                      add r0, r4, #0x50
005b9414  00 e0 8d e5                                      str lr, [sp]
005b9418  04 c0 8d e5                                      str ip, [sp, #4]
005b941c  76 85 04 eb                                      bl #0x6da9fc
005b9420  01 00 a0 e3                                      mov r0, #1
005b9424  08 d0 8d e2                                      add sp, sp, #8
005b9428  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005b942c, declared_size=168, range_size=168, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZN6glitch5video11CNullDriver10initDriverEv
; demangled: glitch::video::CNullDriver::initDriver()
; decoder-mode: arm
005b942c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
005b9430  00 40 a0 e3                                      mov r4, #0
005b9434  0c d0 4d e2                                      sub sp, sp, #0xc
005b9438  00 60 a0 e1                                      mov r6, r0
005b943c  d4 70 90 e5                                      ldr r7, [r0, #0xd4]
005b9440  8c 40 80 e5                                      str r4, [r0, #0x8c]
005b9444  90 40 80 e5                                      str r4, [r0, #0x90]
005b9448  94 40 80 e5                                      str r4, [r0, #0x94]
005b944c  98 40 80 e5                                      str r4, [r0, #0x98]
005b9450  04 10 a0 e1                                      mov r1, r4
005b9454  34 00 a0 e3                                      mov r0, #0x34
005b9458  53 eb fd eb                                      bl #0x5341ac
005b945c  60 70 87 e2                                      add r7, r7, #0x60
005b9460  07 20 a0 e1                                      mov r2, r7
005b9464  06 10 a0 e1                                      mov r1, r6
005b9468  5c 70 9f e5                                      ldr r7, [pc, #0x5c]
005b946c  00 50 a0 e1                                      mov r5, r0
005b9470  1c 8c 04 eb                                      bl #0x6dc4e8
005b9474  54 30 9f e5                                      ldr r3, [pc, #0x54]
005b9478  07 70 8f e0                                      add r7, pc, r7
005b947c  08 10 8d e2                                      add r1, sp, #8
005b9480  03 30 97 e7                                      ldr r3, [r7, r3]
005b9484  30 40 85 e5                                      str r4, [r5, #0x30]
005b9488  24 40 85 e5                                      str r4, [r5, #0x24]
005b948c  08 30 83 e2                                      add r3, r3, #8
005b9490  00 30 85 e5                                      str r3, [r5]
005b9494  28 40 85 e5                                      str r4, [r5, #0x28]
005b9498  2c 40 85 e5                                      str r4, [r5, #0x2c]
005b949c  04 50 21 e5                                      str r5, [r1, #-4]!
005b94a0  04 30 95 e5                                      ldr r3, [r5, #4]
005b94a4  06 00 a0 e1                                      mov r0, r6
005b94a8  01 30 83 e2                                      add r3, r3, #1
005b94ac  04 30 85 e5                                      str r3, [r5, #4]
005b94b0  87 c8 ff eb                                      bl #0x5ab6d4
005b94b4  04 00 9d e5                                      ldr r0, [sp, #4]
005b94b8  04 00 50 e1                                      cmp r0, r4
005b94bc  00 00 00 0a                                      beq #0x5b94c4
005b94c0  2f 90 f5 eb                                      bl #0x31d584
005b94c4  0c d0 8d e2                                      add sp, sp, #0xc
005b94c8  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
005b94cc  18 b6 3d 00 30 31 00 00                          .byte 0x18, 0xb6, 0x3d, 0x00, 0x30, 0x31, 0x00, 0x00

; FUNCTION 0x005b94d4, declared_size=52, range_size=52, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZN6glitch5video11CNullDriverD1Ev
; demangled: glitch::video::CNullDriver::~CNullDriver()
; decoder-mode: arm
005b94d4  24 30 9f e5                                      ldr r3, [pc, #0x24]
005b94d8  24 20 9f e5                                      ldr r2, [pc, #0x24]
005b94dc  10 40 2d e9                                      push {r4, lr}
005b94e0  03 30 8f e0                                      add r3, pc, r3
005b94e4  02 20 93 e7                                      ldr r2, [r3, r2]
005b94e8  00 40 a0 e1                                      mov r4, r0
005b94ec  08 20 82 e2                                      add r2, r2, #8
005b94f0  00 20 80 e5                                      str r2, [r0]
005b94f4  2e d0 ff eb                                      bl #0x5ad5b4
005b94f8  04 00 a0 e1                                      mov r0, r4
005b94fc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
005b9500  b0 b5 3d 00 dc 2e 00 00                          .byte 0xb0, 0xb5, 0x3d, 0x00, 0xdc, 0x2e, 0x00, 0x00

; FUNCTION 0x005b9508, declared_size=28, range_size=28, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZN6glitch5video11CNullDriverD0Ev
; demangled: glitch::video::CNullDriver::~CNullDriver()
; decoder-mode: arm
005b9508  10 40 2d e9                                      push {r4, lr}
005b950c  00 40 a0 e1                                      mov r4, r0
005b9510  ef ff ff eb                                      bl #0x5b94d4
005b9514  04 00 a0 e1                                      mov r0, r4
005b9518  64 53 f5 eb                                      bl #0x30e2b0
005b951c  04 00 a0 e1                                      mov r0, r4
005b9520  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005b9524, declared_size=52, range_size=52, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZN6glitch5video11CNullDriverD2Ev
; demangled: glitch::video::CNullDriver::~CNullDriver()
; decoder-mode: arm
005b9524  24 30 9f e5                                      ldr r3, [pc, #0x24]
005b9528  24 20 9f e5                                      ldr r2, [pc, #0x24]
005b952c  10 40 2d e9                                      push {r4, lr}
005b9530  03 30 8f e0                                      add r3, pc, r3
005b9534  02 20 93 e7                                      ldr r2, [r3, r2]
005b9538  00 40 a0 e1                                      mov r4, r0
005b953c  08 20 82 e2                                      add r2, r2, #8
005b9540  00 20 80 e5                                      str r2, [r0]
005b9544  1a d0 ff eb                                      bl #0x5ad5b4
005b9548  04 00 a0 e1                                      mov r0, r4
005b954c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
005b9550  60 b5 3d 00 dc 2e 00 00                          .byte 0x60, 0xb5, 0x3d, 0x00, 0xdc, 0x2e, 0x00, 0x00

; FUNCTION 0x005b958c, declared_size=80, range_size=80, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZN6glitch5video11CNullDriver17createTextureImplEPKcRKNS0_12STextureDescE
; demangled: glitch::video::CNullDriver::createTextureImpl(char const*, glitch::video::STextureDesc const&)
; decoder-mode: arm
005b958c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005b9590  00 50 a0 e1                                      mov r5, r0
005b9594  01 60 a0 e1                                      mov r6, r1
005b9598  54 00 a0 e3                                      mov r0, #0x54
005b959c  00 10 a0 e3                                      mov r1, #0
005b95a0  02 80 a0 e1                                      mov r8, r2
005b95a4  03 70 a0 e1                                      mov r7, r3
005b95a8  ff ea fd eb                                      bl #0x5341ac
005b95ac  07 30 a0 e1                                      mov r3, r7
005b95b0  08 10 a0 e1                                      mov r1, r8
005b95b4  06 20 a0 e1                                      mov r2, r6
005b95b8  00 40 a0 e1                                      mov r4, r0
005b95bc  e5 ff ff eb                                      bl #0x5b9558
005b95c0  00 00 54 e3                                      cmp r4, #0
005b95c4  00 40 85 e5                                      str r4, [r5]
005b95c8  04 30 94 15                                      ldrne r3, [r4, #4]
005b95cc  05 00 a0 e1                                      mov r0, r5
005b95d0  01 30 83 12                                      addne r3, r3, #1
005b95d4  04 30 84 15                                      strne r3, [r4, #4]
005b95d8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x005b9610, declared_size=220, range_size=220, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZN6glitch5video11CNullDriverC1EPNS0_12IVideoDriverE
; demangled: glitch::video::CNullDriver::CNullDriver(glitch::video::IVideoDriver*)
; decoder-mode: arm
005b9610  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
005b9614  01 60 a0 e1                                      mov r6, r1
005b9618  14 d0 4d e2                                      sub sp, sp, #0x14
005b961c  00 40 a0 e1                                      mov r4, r0
005b9620  00 10 a0 e3                                      mov r1, #0
005b9624  54 00 a0 e3                                      mov r0, #0x54
005b9628  d4 80 96 e5                                      ldr r8, [r6, #0xd4]
005b962c  de ea fd eb                                      bl #0x5341ac
005b9630  a8 50 9f e5                                      ldr r5, [pc, #0xa8]
005b9634  00 70 a0 e1                                      mov r7, r0
005b9638  4c b0 00 eb                                      bl #0x5e5770
005b963c  a0 30 9f e5                                      ldr r3, [pc, #0xa0]
005b9640  05 50 8f e0                                      add r5, pc, r5
005b9644  07 20 a0 e1                                      mov r2, r7
005b9648  03 30 95 e7                                      ldr r3, [r5, r3]
005b964c  40 c0 86 e2                                      add ip, r6, #0x40
005b9650  08 10 a0 e1                                      mov r1, r8
005b9654  08 30 83 e2                                      add r3, r3, #8
005b9658  00 30 87 e5                                      str r3, [r7]
005b965c  dc 30 86 e2                                      add r3, r6, #0xdc
005b9660  88 40 93 e8                                      ldm r3, {r3, r7, lr}
005b9664  04 00 a0 e1                                      mov r0, r4
005b9668  80 40 8d e8                                      stm sp, {r7, lr}
005b966c  08 c0 8d e5                                      str ip, [sp, #8]
005b9670  29 c6 ff eb                                      bl #0x5aaf1c
005b9674  6c 30 9f e5                                      ldr r3, [pc, #0x6c]
005b9678  04 60 a0 e1                                      mov r6, r4
005b967c  fe 75 a0 e3                                      mov r7, #0x3f800000
005b9680  03 30 95 e7                                      ldr r3, [r5, r3]
005b9684  8b af 84 e2                                      add sl, r4, #0x22c
005b9688  00 80 a0 e3                                      mov r8, #0
005b968c  08 30 83 e2                                      add r3, r3, #8
005b9690  60 31 86 e4                                      str r3, [r6], #0x160
005b9694  01 50 a0 e3                                      mov r5, #1
005b9698  40 80 c6 e5                                      strb r8, [r6, #0x40]
005b969c  06 00 a0 e1                                      mov r0, r6
005b96a0  00 10 a0 e3                                      mov r1, #0
005b96a4  40 20 a0 e3                                      mov r2, #0x40
005b96a8  6c 53 f5 eb                                      bl #0x30e460
005b96ac  00 70 86 e5                                      str r7, [r6]
005b96b0  14 70 86 e5                                      str r7, [r6, #0x14]
005b96b4  28 70 86 e5                                      str r7, [r6, #0x28]
005b96b8  3c 70 86 e5                                      str r7, [r6, #0x3c]
005b96bc  40 50 c6 e5                                      strb r5, [r6, #0x40]
005b96c0  44 60 86 e2                                      add r6, r6, #0x44
005b96c4  0a 00 56 e1                                      cmp r6, sl
005b96c8  f2 ff ff 1a                                      bne #0x5b9698
005b96cc  04 00 a0 e1                                      mov r0, r4
005b96d0  55 ff ff eb                                      bl #0x5b942c
005b96d4  04 00 a0 e1                                      mov r0, r4
005b96d8  14 d0 8d e2                                      add sp, sp, #0x14
005b96dc  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
005b96e0  50 b4 3d 00 80 38 00 00 dc 2e 00 00              .byte 0x50, 0xb4, 0x3d, 0x00, 0x80, 0x38, 0x00, 0x00, 0xdc, 0x2e, 0x00, 0x00

; FUNCTION 0x005b9764, declared_size=220, range_size=220, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZN6glitch5video11CNullDriverC2EPNS0_12IVideoDriverE
; demangled: glitch::video::CNullDriver::CNullDriver(glitch::video::IVideoDriver*)
; decoder-mode: arm
005b9764  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
005b9768  01 60 a0 e1                                      mov r6, r1
005b976c  14 d0 4d e2                                      sub sp, sp, #0x14
005b9770  00 40 a0 e1                                      mov r4, r0
005b9774  00 10 a0 e3                                      mov r1, #0
005b9778  54 00 a0 e3                                      mov r0, #0x54
005b977c  d4 80 96 e5                                      ldr r8, [r6, #0xd4]
005b9780  89 ea fd eb                                      bl #0x5341ac
005b9784  a8 50 9f e5                                      ldr r5, [pc, #0xa8]
005b9788  00 70 a0 e1                                      mov r7, r0
005b978c  f7 af 00 eb                                      bl #0x5e5770
005b9790  a0 30 9f e5                                      ldr r3, [pc, #0xa0]
005b9794  05 50 8f e0                                      add r5, pc, r5
005b9798  07 20 a0 e1                                      mov r2, r7
005b979c  03 30 95 e7                                      ldr r3, [r5, r3]
005b97a0  40 c0 86 e2                                      add ip, r6, #0x40
005b97a4  08 10 a0 e1                                      mov r1, r8
005b97a8  08 30 83 e2                                      add r3, r3, #8
005b97ac  00 30 87 e5                                      str r3, [r7]
005b97b0  dc 30 86 e2                                      add r3, r6, #0xdc
005b97b4  88 40 93 e8                                      ldm r3, {r3, r7, lr}
005b97b8  04 00 a0 e1                                      mov r0, r4
005b97bc  80 40 8d e8                                      stm sp, {r7, lr}
005b97c0  08 c0 8d e5                                      str ip, [sp, #8]
005b97c4  d4 c5 ff eb                                      bl #0x5aaf1c
005b97c8  6c 30 9f e5                                      ldr r3, [pc, #0x6c]
005b97cc  04 60 a0 e1                                      mov r6, r4
005b97d0  fe 75 a0 e3                                      mov r7, #0x3f800000
005b97d4  03 30 95 e7                                      ldr r3, [r5, r3]
005b97d8  8b af 84 e2                                      add sl, r4, #0x22c
005b97dc  00 80 a0 e3                                      mov r8, #0
005b97e0  08 30 83 e2                                      add r3, r3, #8
005b97e4  60 31 86 e4                                      str r3, [r6], #0x160
005b97e8  01 50 a0 e3                                      mov r5, #1
005b97ec  40 80 c6 e5                                      strb r8, [r6, #0x40]
005b97f0  06 00 a0 e1                                      mov r0, r6
005b97f4  00 10 a0 e3                                      mov r1, #0
005b97f8  40 20 a0 e3                                      mov r2, #0x40
005b97fc  17 53 f5 eb                                      bl #0x30e460
005b9800  00 70 86 e5                                      str r7, [r6]
005b9804  14 70 86 e5                                      str r7, [r6, #0x14]
005b9808  28 70 86 e5                                      str r7, [r6, #0x28]
005b980c  3c 70 86 e5                                      str r7, [r6, #0x3c]
005b9810  40 50 c6 e5                                      strb r5, [r6, #0x40]
005b9814  44 60 86 e2                                      add r6, r6, #0x44
005b9818  0a 00 56 e1                                      cmp r6, sl
005b981c  f2 ff ff 1a                                      bne #0x5b97ec
005b9820  04 00 a0 e1                                      mov r0, r4
005b9824  00 ff ff eb                                      bl #0x5b942c
005b9828  04 00 a0 e1                                      mov r0, r4
005b982c  14 d0 8d e2                                      add sp, sp, #0x14
005b9830  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
005b9834  fc b2 3d 00 80 38 00 00 dc 2e 00 00              .byte 0xfc, 0xb2, 0x3d, 0x00, 0x80, 0x38, 0x00, 0x00, 0xdc, 0x2e, 0x00, 0x00

; FUNCTION 0x005b9840, declared_size=380, range_size=380, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZN6glitch5video11CNullDriverC2EPNS_7IDeviceE
; demangled: glitch::video::CNullDriver::CNullDriver(glitch::IDevice*)
; decoder-mode: arm
005b9840  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
005b9844  00 40 a0 e1                                      mov r4, r0
005b9848  1c d0 4d e2                                      sub sp, sp, #0x1c
005b984c  01 70 a0 e1                                      mov r7, r1
005b9850  54 00 a0 e3                                      mov r0, #0x54
005b9854  00 10 a0 e3                                      mov r1, #0
005b9858  53 ea fd eb                                      bl #0x5341ac
005b985c  40 51 9f e5                                      ldr r5, [pc, #0x140]
005b9860  00 60 a0 e1                                      mov r6, r0
005b9864  c1 af 00 eb                                      bl #0x5e5770
005b9868  38 31 9f e5                                      ldr r3, [pc, #0x138]
005b986c  05 50 8f e0                                      add r5, pc, r5
005b9870  00 c0 a0 e3                                      mov ip, #0
005b9874  03 30 95 e7                                      ldr r3, [r5, r3]
005b9878  18 e0 8d e2                                      add lr, sp, #0x18
005b987c  07 10 a0 e1                                      mov r1, r7
005b9880  08 30 83 e2                                      add r3, r3, #8
005b9884  00 30 86 e5                                      str r3, [r6]
005b9888  06 20 a0 e1                                      mov r2, r6
005b988c  04 c0 2e e5                                      str ip, [lr, #-4]!
005b9890  0c 30 a0 e1                                      mov r3, ip
005b9894  04 00 a0 e1                                      mov r0, r4
005b9898  08 e0 8d e5                                      str lr, [sp, #8]
005b989c  00 c0 8d e5                                      str ip, [sp]
005b98a0  04 c0 8d e5                                      str ip, [sp, #4]
005b98a4  9c c5 ff eb                                      bl #0x5aaf1c
005b98a8  14 00 9d e5                                      ldr r0, [sp, #0x14]
005b98ac  00 00 50 e3                                      cmp r0, #0
005b98b0  04 00 00 0a                                      beq #0x5b98c8
005b98b4  00 30 90 e5                                      ldr r3, [r0]
005b98b8  01 30 43 e2                                      sub r3, r3, #1
005b98bc  00 00 53 e3                                      cmp r3, #0
005b98c0  00 30 80 e5                                      str r3, [r0]
005b98c4  29 00 00 0a                                      beq #0x5b9970
005b98c8  dc 30 9f e5                                      ldr r3, [pc, #0xdc]
005b98cc  04 60 a0 e1                                      mov r6, r4
005b98d0  fe 75 a0 e3                                      mov r7, #0x3f800000
005b98d4  03 30 95 e7                                      ldr r3, [r5, r3]
005b98d8  8b af 84 e2                                      add sl, r4, #0x22c
005b98dc  00 80 a0 e3                                      mov r8, #0
005b98e0  08 30 83 e2                                      add r3, r3, #8
005b98e4  60 31 86 e4                                      str r3, [r6], #0x160
005b98e8  01 50 a0 e3                                      mov r5, #1
005b98ec  40 80 c6 e5                                      strb r8, [r6, #0x40]
005b98f0  06 00 a0 e1                                      mov r0, r6
005b98f4  00 10 a0 e3                                      mov r1, #0
005b98f8  40 20 a0 e3                                      mov r2, #0x40
005b98fc  d7 52 f5 eb                                      bl #0x30e460
005b9900  00 70 86 e5                                      str r7, [r6]
005b9904  14 70 86 e5                                      str r7, [r6, #0x14]
005b9908  28 70 86 e5                                      str r7, [r6, #0x28]
005b990c  3c 70 86 e5                                      str r7, [r6, #0x3c]
005b9910  40 50 c6 e5                                      strb r5, [r6, #0x40]
005b9914  44 60 86 e2                                      add r6, r6, #0x44
005b9918  0a 00 56 e1                                      cmp r6, sl
005b991c  f2 ff ff 1a                                      bne #0x5b98ec
005b9920  88 10 9f e5                                      ldr r1, [pc, #0x88]
005b9924  08 00 84 e2                                      add r0, r4, #8
005b9928  01 10 8f e0                                      add r1, pc, r1
005b992c  0a 20 81 e2                                      add r2, r1, #0xa
005b9930  94 9c f5 eb                                      bl #0x320b88
005b9934  78 10 9f e5                                      ldr r1, [pc, #0x78]
005b9938  20 00 84 e2                                      add r0, r4, #0x20
005b993c  01 10 8f e0                                      add r1, pc, r1
005b9940  1d 20 81 e2                                      add r2, r1, #0x1d
005b9944  8f 9c f5 eb                                      bl #0x320b88
005b9948  04 00 a0 e1                                      mov r0, r4
005b994c  b6 fe ff eb                                      bl #0x5b942c
005b9950  01 10 a0 e3                                      mov r1, #1
005b9954  04 00 a0 e1                                      mov r0, r4
005b9958  01 20 a0 e1                                      mov r2, r1
005b995c  00 30 a0 e3                                      mov r3, #0
005b9960  7e c4 ff eb                                      bl #0x5aab60
005b9964  04 00 a0 e1                                      mov r0, r4
005b9968  1c d0 8d e2                                      add sp, sp, #0x1c
005b996c  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
005b9970  54 30 d0 e5                                      ldrb r3, [r0, #0x54]
005b9974  00 00 53 e3                                      cmp r3, #0
005b9978  05 00 00 1a                                      bne #0x5b9994
005b997c  34 30 9f e5                                      ldr r3, [pc, #0x34]
005b9980  50 20 90 e5                                      ldr r2, [r0, #0x50]
005b9984  03 30 95 e7                                      ldr r3, [r5, r3]
005b9988  00 10 93 e5                                      ldr r1, [r3]
005b998c  00 10 82 e5                                      str r1, [r2]
005b9990  00 20 83 e5                                      str r2, [r3]
005b9994  00 30 a0 e3                                      mov r3, #0
005b9998  50 30 80 e5                                      str r3, [r0, #0x50]
005b999c  43 52 f5 eb                                      bl #0x30e2b0
005b99a0  c8 ff ff ea                                      b #0x5b98c8
; mapping-symbol data/literal pool
005b99a4  24 b2 3d 00 80 38 00 00 dc 2e 00 00 c8 6f 32 00  .byte 0x24, 0xb2, 0x3d, 0x00, 0x80, 0x38, 0x00, 0x00, 0xdc, 0x2e, 0x00, 0x00, 0xc8, 0x6f, 0x32, 0x00
005b99b4  c4 6f 32 00 c0 3c 00 00                          .byte 0xc4, 0x6f, 0x32, 0x00, 0xc0, 0x3c, 0x00, 0x00

; FUNCTION 0x005b99bc, declared_size=380, range_size=380, mode=arm
; class-group: glitch::video::CNullDriver
; alias: _ZN6glitch5video11CNullDriverC1EPNS_7IDeviceE
; demangled: glitch::video::CNullDriver::CNullDriver(glitch::IDevice*)
; decoder-mode: arm
005b99bc  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
005b99c0  00 40 a0 e1                                      mov r4, r0
005b99c4  1c d0 4d e2                                      sub sp, sp, #0x1c
005b99c8  01 70 a0 e1                                      mov r7, r1
005b99cc  54 00 a0 e3                                      mov r0, #0x54
005b99d0  00 10 a0 e3                                      mov r1, #0
005b99d4  f4 e9 fd eb                                      bl #0x5341ac
005b99d8  40 51 9f e5                                      ldr r5, [pc, #0x140]
005b99dc  00 60 a0 e1                                      mov r6, r0
005b99e0  62 af 00 eb                                      bl #0x5e5770
005b99e4  38 31 9f e5                                      ldr r3, [pc, #0x138]
005b99e8  05 50 8f e0                                      add r5, pc, r5
005b99ec  00 c0 a0 e3                                      mov ip, #0
005b99f0  03 30 95 e7                                      ldr r3, [r5, r3]
005b99f4  18 e0 8d e2                                      add lr, sp, #0x18
005b99f8  07 10 a0 e1                                      mov r1, r7
005b99fc  08 30 83 e2                                      add r3, r3, #8
005b9a00  00 30 86 e5                                      str r3, [r6]
005b9a04  06 20 a0 e1                                      mov r2, r6
005b9a08  04 c0 2e e5                                      str ip, [lr, #-4]!
005b9a0c  0c 30 a0 e1                                      mov r3, ip
005b9a10  04 00 a0 e1                                      mov r0, r4
005b9a14  08 e0 8d e5                                      str lr, [sp, #8]
005b9a18  00 c0 8d e5                                      str ip, [sp]
005b9a1c  04 c0 8d e5                                      str ip, [sp, #4]
005b9a20  3d c5 ff eb                                      bl #0x5aaf1c
005b9a24  14 00 9d e5                                      ldr r0, [sp, #0x14]
005b9a28  00 00 50 e3                                      cmp r0, #0
005b9a2c  04 00 00 0a                                      beq #0x5b9a44
005b9a30  00 30 90 e5                                      ldr r3, [r0]
005b9a34  01 30 43 e2                                      sub r3, r3, #1
005b9a38  00 00 53 e3                                      cmp r3, #0
005b9a3c  00 30 80 e5                                      str r3, [r0]
005b9a40  29 00 00 0a                                      beq #0x5b9aec
005b9a44  dc 30 9f e5                                      ldr r3, [pc, #0xdc]
005b9a48  04 60 a0 e1                                      mov r6, r4
005b9a4c  fe 75 a0 e3                                      mov r7, #0x3f800000
005b9a50  03 30 95 e7                                      ldr r3, [r5, r3]
005b9a54  8b af 84 e2                                      add sl, r4, #0x22c
005b9a58  00 80 a0 e3                                      mov r8, #0
005b9a5c  08 30 83 e2                                      add r3, r3, #8
005b9a60  60 31 86 e4                                      str r3, [r6], #0x160
005b9a64  01 50 a0 e3                                      mov r5, #1
005b9a68  40 80 c6 e5                                      strb r8, [r6, #0x40]
005b9a6c  06 00 a0 e1                                      mov r0, r6
005b9a70  00 10 a0 e3                                      mov r1, #0
005b9a74  40 20 a0 e3                                      mov r2, #0x40
005b9a78  78 52 f5 eb                                      bl #0x30e460
005b9a7c  00 70 86 e5                                      str r7, [r6]
005b9a80  14 70 86 e5                                      str r7, [r6, #0x14]
005b9a84  28 70 86 e5                                      str r7, [r6, #0x28]
005b9a88  3c 70 86 e5                                      str r7, [r6, #0x3c]
005b9a8c  40 50 c6 e5                                      strb r5, [r6, #0x40]
005b9a90  44 60 86 e2                                      add r6, r6, #0x44
005b9a94  0a 00 56 e1                                      cmp r6, sl
005b9a98  f2 ff ff 1a                                      bne #0x5b9a68
005b9a9c  88 10 9f e5                                      ldr r1, [pc, #0x88]
005b9aa0  08 00 84 e2                                      add r0, r4, #8
005b9aa4  01 10 8f e0                                      add r1, pc, r1
005b9aa8  0a 20 81 e2                                      add r2, r1, #0xa
005b9aac  35 9c f5 eb                                      bl #0x320b88
005b9ab0  78 10 9f e5                                      ldr r1, [pc, #0x78]
005b9ab4  20 00 84 e2                                      add r0, r4, #0x20
005b9ab8  01 10 8f e0                                      add r1, pc, r1
005b9abc  1d 20 81 e2                                      add r2, r1, #0x1d
005b9ac0  30 9c f5 eb                                      bl #0x320b88
005b9ac4  04 00 a0 e1                                      mov r0, r4
005b9ac8  57 fe ff eb                                      bl #0x5b942c
005b9acc  01 10 a0 e3                                      mov r1, #1
005b9ad0  04 00 a0 e1                                      mov r0, r4
005b9ad4  01 20 a0 e1                                      mov r2, r1
005b9ad8  00 30 a0 e3                                      mov r3, #0
005b9adc  1f c4 ff eb                                      bl #0x5aab60
005b9ae0  04 00 a0 e1                                      mov r0, r4
005b9ae4  1c d0 8d e2                                      add sp, sp, #0x1c
005b9ae8  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
005b9aec  54 30 d0 e5                                      ldrb r3, [r0, #0x54]
005b9af0  00 00 53 e3                                      cmp r3, #0
005b9af4  05 00 00 1a                                      bne #0x5b9b10
005b9af8  34 30 9f e5                                      ldr r3, [pc, #0x34]
005b9afc  50 20 90 e5                                      ldr r2, [r0, #0x50]
005b9b00  03 30 95 e7                                      ldr r3, [r5, r3]
005b9b04  00 10 93 e5                                      ldr r1, [r3]
005b9b08  00 10 82 e5                                      str r1, [r2]
005b9b0c  00 20 83 e5                                      str r2, [r3]
005b9b10  00 30 a0 e3                                      mov r3, #0
005b9b14  50 30 80 e5                                      str r3, [r0, #0x50]
005b9b18  e4 51 f5 eb                                      bl #0x30e2b0
005b9b1c  c8 ff ff ea                                      b #0x5b9a44
; mapping-symbol data/literal pool
005b9b20  a8 b0 3d 00 80 38 00 00 dc 2e 00 00 4c 6e 32 00  .byte 0xa8, 0xb0, 0x3d, 0x00, 0x80, 0x38, 0x00, 0x00, 0xdc, 0x2e, 0x00, 0x00, 0x4c, 0x6e, 0x32, 0x00
005b9b30  48 6e 32 00 c0 3c 00 00                          .byte 0x48, 0x6e, 0x32, 0x00, 0xc0, 0x3c, 0x00, 0x00

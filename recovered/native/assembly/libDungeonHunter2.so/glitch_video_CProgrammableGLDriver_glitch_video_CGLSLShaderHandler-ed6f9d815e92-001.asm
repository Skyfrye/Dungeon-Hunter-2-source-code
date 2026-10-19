; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005af030, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>
; alias: _ZN6glitch5video21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEE11onSet3DModeEv
; demangled: glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::onSet3DMode()
; decoder-mode: arm
005af030  1e ff 2f e1                                      bx lr

; FUNCTION 0x005af034, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>
; alias: _ZNK6glitch5video21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEE18queryMaxLightCountEv
; demangled: glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::queryMaxLightCount() const
; decoder-mode: arm
005af034  08 00 a0 e3                                      mov r0, #8
005af038  1e ff 2f e1                                      bx lr

; FUNCTION 0x005af03c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>
; alias: _ZNK6glitch5video21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEE20getMaxUserClipPlanesEv
; demangled: glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::getMaxUserClipPlanes() const
; decoder-mode: arm
005af03c  06 00 a0 e3                                      mov r0, #6
005af040  1e ff 2f e1                                      bx lr

; FUNCTION 0x005af044, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>
; alias: _ZNK6glitch5video21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEE16getShaderManagerEv
; demangled: glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::getShaderManager() const
; decoder-mode: arm
005af044  d8 00 90 e5                                      ldr r0, [r0, #0xd8]
005af048  1e ff 2f e1                                      bx lr

; FUNCTION 0x005af04c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>
; alias: _ZNK6glitch5video21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEE13getDriverTypeEv
; demangled: glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::getDriverType() const
; decoder-mode: arm
005af04c  78 00 a0 e3                                      mov r0, #0x78
005af050  1e ff 2f e1                                      bx lr

; FUNCTION 0x005af054, declared_size=24, range_size=24, mode=arm
; class-group: glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>
; alias: _ZNK6glitch5video21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEE21getTransformForShaderENS0_22E_TRANSFORMATION_STATEE
; demangled: glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::getTransformForShader(glitch::video::E_TRANSFORMATION_STATE) const
; decoder-mode: arm
005af054  44 30 a0 e3                                      mov r3, #0x44
005af058  93 01 03 e0                                      mul r3, r3, r1
005af05c  82 3e 83 e2                                      add r3, r3, #0x820
005af060  08 30 83 e2                                      add r3, r3, #8
005af064  03 00 80 e0                                      add r0, r0, r3
005af068  1e ff 2f e1                                      bx lr

; FUNCTION 0x005af06c, declared_size=32, range_size=32, mode=arm
; class-group: glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>
; alias: _ZN6glitch5video21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEE15swapBuffersImplEi
; demangled: glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::swapBuffersImpl(int)
; decoder-mode: arm
005af06c  00 00 51 e3                                      cmp r1, #0
005af070  10 40 2d e9                                      push {r4, lr}
005af074  02 00 00 0a                                      beq #0x5af084
005af078  00 30 90 e5                                      ldr r3, [r0]
005af07c  0f e0 a0 e1                                      mov lr, pc
005af080  a8 f0 93 e5                                      ldr pc, [r3, #0xa8]
005af084  01 00 a0 e3                                      mov r0, #1
005af088  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005af08c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>
; alias: _ZNK6glitch5video21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEE24getShaderLanguageVersionEv
; demangled: glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::getShaderLanguageVersion() const
; decoder-mode: arm
005af08c  20 08 90 e5                                      ldr r0, [r0, #0x820]
005af090  1e ff 2f e1                                      bx lr

; FUNCTION 0x005af094, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>
; alias: _ZN6glitch5video21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEE23setTextureLODBiasTexEnvEPKNS0_8ITextureE
; demangled: glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::setTextureLODBiasTexEnv(glitch::video::ITexture const*)
; decoder-mode: arm
005af094  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b1870, declared_size=12, range_size=12, mode=arm
; class-group: glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>
; alias: _ZN6glitch5video21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEE14doVersionCheckEv
; demangled: glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::doVersionCheck()
; decoder-mode: arm
005b1870  a4 14 90 e5                                      ldr r1, [r0, #0x4a4]
005b1874  82 0e 80 e2                                      add r0, r0, #0x820
005b1878  5e b8 04 ea                                      b #0x6df9f8

; FUNCTION 0x005b187c, declared_size=520, range_size=520, mode=arm
; class-group: glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>
; alias: _ZN6glitch5video21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEE20commitLightParameterEPKNS0_11CGLSLShaderEPKNS0_6CLightERKNS0_19SShaderParameterDefE
; demangled: glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::commitLightParameter(glitch::video::CGLSLShader const*, glitch::video::CLight const*, glitch::video::SShaderParameterDef const&)
; decoder-mode: arm
005b187c  04 e0 2d e5                                      str lr, [sp, #-4]!
005b1880  00 00 52 e3                                      cmp r2, #0
005b1884  14 d0 4d e2                                      sub sp, sp, #0x14
005b1888  0f 00 00 0a                                      beq #0x5b18cc
005b188c  b4 10 d3 e1                                      ldrh r1, [r3, #4]
005b1890  13 10 41 e2                                      sub r1, r1, #0x13
005b1894  07 00 51 e3                                      cmp r1, #7
005b1898  01 f1 8f 90                                      addls pc, pc, r1, lsl #2
005b189c  0a 00 00 ea                                      b #0x5b18cc
005b18a0  0b 00 00 ea                                      b #0x5b18d4
005b18a4  20 00 00 ea                                      b #0x5b192c
005b18a8  2f 00 00 ea                                      b #0x5b196c
005b18ac  33 00 00 ea                                      b #0x5b1980
005b18b0  3c 00 00 ea                                      b #0x5b19a8
005b18b4  45 00 00 ea                                      b #0x5b19d0
005b18b8  4e 00 00 ea                                      b #0x5b19f8
005b18bc  ff ff ff ea                                      b #0x5b18c0
005b18c0  0c 00 93 e5                                      ldr r0, [r3, #0xc]
005b18c4  48 10 92 e5                                      ldr r1, [r2, #0x48]
005b18c8  c2 73 f5 eb                                      bl #0x30e7d8
005b18cc  14 d0 8d e2                                      add sp, sp, #0x14
005b18d0  00 80 bd e8                                      ldm sp!, {pc}
005b18d4  b8 15 d2 e1                                      ldrh r1, [r2, #0x58]
005b18d8  02 00 51 e3                                      cmp r1, #2
005b18dc  5d 00 00 0a                                      beq #0x5b1a58
005b18e0  50 20 92 e5                                      ldr r2, [r2, #0x50]
005b18e4  30 00 92 e5                                      ldr r0, [r2, #0x30]
005b18e8  34 10 92 e5                                      ldr r1, [r2, #0x34]
005b18ec  38 20 92 e5                                      ldr r2, [r2, #0x38]
005b18f0  00 00 8d e5                                      str r0, [sp]
005b18f4  04 10 8d e5                                      str r1, [sp, #4]
005b18f8  08 20 8d e5                                      str r2, [sp, #8]
005b18fc  fe 25 a0 e3                                      mov r2, #0x3f800000
005b1900  0c 20 8d e5                                      str r2, [sp, #0xc]
005b1904  06 20 d3 e5                                      ldrb r2, [r3, #6]
005b1908  07 00 52 e3                                      cmp r2, #7
005b190c  3d 00 00 0a                                      beq #0x5b1a08
005b1910  08 00 52 e3                                      cmp r2, #8
005b1914  ec ff ff 1a                                      bne #0x5b18cc
005b1918  0c 00 93 e5                                      ldr r0, [r3, #0xc]
005b191c  01 10 a0 e3                                      mov r1, #1
005b1920  0d 20 a0 e1                                      mov r2, sp
005b1924  1d 74 f5 eb                                      bl #0x30e9a0
005b1928  e7 ff ff ea                                      b #0x5b18cc
005b192c  50 10 92 e5                                      ldr r1, [r2, #0x50]
005b1930  06 00 d3 e5                                      ldrb r0, [r3, #6]
005b1934  20 20 81 e2                                      add r2, r1, #0x20
005b1938  08 c0 92 e5                                      ldr ip, [r2, #8]
005b193c  04 20 92 e5                                      ldr r2, [r2, #4]
005b1940  20 10 91 e5                                      ldr r1, [r1, #0x20]
005b1944  07 00 50 e3                                      cmp r0, #7
005b1948  04 20 8d e5                                      str r2, [sp, #4]
005b194c  00 20 a0 e3                                      mov r2, #0
005b1950  00 10 8d e5                                      str r1, [sp]
005b1954  08 c0 8d e5                                      str ip, [sp, #8]
005b1958  0c 20 8d e5                                      str r2, [sp, #0xc]
005b195c  29 00 00 0a                                      beq #0x5b1a08
005b1960  08 00 50 e3                                      cmp r0, #8
005b1964  d8 ff ff 1a                                      bne #0x5b18cc
005b1968  ea ff ff ea                                      b #0x5b1918
005b196c  0c 00 93 e5                                      ldr r0, [r3, #0xc]
005b1970  34 20 82 e2                                      add r2, r2, #0x34
005b1974  01 10 a0 e3                                      mov r1, #1
005b1978  ff 73 f5 eb                                      bl #0x30e97c
005b197c  d2 ff ff ea                                      b #0x5b18cc
005b1980  06 10 d3 e5                                      ldrb r1, [r3, #6]
005b1984  07 00 51 e3                                      cmp r1, #7
005b1988  2d 00 00 0a                                      beq #0x5b1a44
005b198c  08 00 51 e3                                      cmp r1, #8
005b1990  cd ff ff 1a                                      bne #0x5b18cc
005b1994  0c 00 93 e5                                      ldr r0, [r3, #0xc]
005b1998  04 20 82 e2                                      add r2, r2, #4
005b199c  01 10 a0 e3                                      mov r1, #1
005b19a0  fe 73 f5 eb                                      bl #0x30e9a0
005b19a4  c8 ff ff ea                                      b #0x5b18cc
005b19a8  06 10 d3 e5                                      ldrb r1, [r3, #6]
005b19ac  07 00 51 e3                                      cmp r1, #7
005b19b0  19 00 00 0a                                      beq #0x5b1a1c
005b19b4  08 00 51 e3                                      cmp r1, #8
005b19b8  c3 ff ff 1a                                      bne #0x5b18cc
005b19bc  0c 00 93 e5                                      ldr r0, [r3, #0xc]
005b19c0  14 20 82 e2                                      add r2, r2, #0x14
005b19c4  01 10 a0 e3                                      mov r1, #1
005b19c8  f4 73 f5 eb                                      bl #0x30e9a0
005b19cc  be ff ff ea                                      b #0x5b18cc
005b19d0  06 10 d3 e5                                      ldrb r1, [r3, #6]
005b19d4  07 00 51 e3                                      cmp r1, #7
005b19d8  14 00 00 0a                                      beq #0x5b1a30
005b19dc  08 00 51 e3                                      cmp r1, #8
005b19e0  b9 ff ff 1a                                      bne #0x5b18cc
005b19e4  0c 00 93 e5                                      ldr r0, [r3, #0xc]
005b19e8  24 20 82 e2                                      add r2, r2, #0x24
005b19ec  01 10 a0 e3                                      mov r1, #1
005b19f0  ea 73 f5 eb                                      bl #0x30e9a0
005b19f4  b4 ff ff ea                                      b #0x5b18cc
005b19f8  0c 00 93 e5                                      ldr r0, [r3, #0xc]
005b19fc  4c 10 92 e5                                      ldr r1, [r2, #0x4c]
005b1a00  74 73 f5 eb                                      bl #0x30e7d8
005b1a04  b0 ff ff ea                                      b #0x5b18cc
005b1a08  0c 00 93 e5                                      ldr r0, [r3, #0xc]
005b1a0c  01 10 a0 e3                                      mov r1, #1
005b1a10  0d 20 a0 e1                                      mov r2, sp
005b1a14  d8 73 f5 eb                                      bl #0x30e97c
005b1a18  ab ff ff ea                                      b #0x5b18cc
005b1a1c  0c 00 93 e5                                      ldr r0, [r3, #0xc]
005b1a20  14 20 82 e2                                      add r2, r2, #0x14
005b1a24  01 10 a0 e3                                      mov r1, #1
005b1a28  d3 73 f5 eb                                      bl #0x30e97c
005b1a2c  a6 ff ff ea                                      b #0x5b18cc
005b1a30  0c 00 93 e5                                      ldr r0, [r3, #0xc]
005b1a34  24 20 82 e2                                      add r2, r2, #0x24
005b1a38  01 10 a0 e3                                      mov r1, #1
005b1a3c  ce 73 f5 eb                                      bl #0x30e97c
005b1a40  a1 ff ff ea                                      b #0x5b18cc
005b1a44  0c 00 93 e5                                      ldr r0, [r3, #0xc]
005b1a48  04 20 82 e2                                      add r2, r2, #4
005b1a4c  01 10 a0 e3                                      mov r1, #1
005b1a50  c9 73 f5 eb                                      bl #0x30e97c
005b1a54  9c ff ff ea                                      b #0x5b18cc
005b1a58  50 10 92 e5                                      ldr r1, [r2, #0x50]
005b1a5c  20 20 81 e2                                      add r2, r1, #0x20
005b1a60  08 00 92 e5                                      ldr r0, [r2, #8]
005b1a64  04 20 92 e5                                      ldr r2, [r2, #4]
005b1a68  20 10 91 e5                                      ldr r1, [r1, #0x20]
005b1a6c  08 00 8d e5                                      str r0, [sp, #8]
005b1a70  04 20 8d e5                                      str r2, [sp, #4]
005b1a74  00 20 a0 e3                                      mov r2, #0
005b1a78  00 10 8d e5                                      str r1, [sp]
005b1a7c  0c 20 8d e5                                      str r2, [sp, #0xc]
005b1a80  9f ff ff ea                                      b #0x5b1904

; FUNCTION 0x005b1a84, declared_size=28, range_size=28, mode=arm
; class-group: glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>
; alias: _ZN6glitch5video21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEE12commitShaderEPKNS0_7IShaderE
; demangled: glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::commitShader(glitch::video::IShader const*)
; decoder-mode: arm
005b1a84  70 40 2d e9                                      push {r4, r5, r6, lr}
005b1a88  01 40 a0 e1                                      mov r4, r1
005b1a8c  00 50 a0 e1                                      mov r5, r0
005b1a90  4c 00 91 e5                                      ldr r0, [r1, #0x4c]
005b1a94  88 73 f5 eb                                      bl #0x30e8bc
005b1a98  f4 40 85 e5                                      str r4, [r5, #0xf4]
005b1a9c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x005b1aa0, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>
; alias: _ZN6glitch5video21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEE19onMaterialDestroyedEPNS0_9CMaterialE
; demangled: glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::onMaterialDestroyed(glitch::video::CMaterial*)
; decoder-mode: arm
005b1aa0  3f dc ff ea                                      b #0x5a8ba4

; FUNCTION 0x005b1aa4, declared_size=16, range_size=16, mode=arm
; class-group: glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>
; alias: _ZN6glitch5video21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEE17onShaderDestroyedEPNS0_7IShaderE
; demangled: glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::onShaderDestroyed(glitch::video::IShader*)
; decoder-mode: arm
005b1aa4  f4 30 90 e5                                      ldr r3, [r0, #0xf4]
005b1aa8  01 00 53 e1                                      cmp r3, r1
005b1aac  1e ff 2f 11                                      bxne lr
005b1ab0  36 dc ff ea                                      b #0x5a8b90

; FUNCTION 0x005b1ab4, declared_size=92, range_size=92, mode=arm
; class-group: glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>
; alias: _ZN6glitch5video21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEE10driverInitERKNS_4core11dimension2dIiEE
; demangled: glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::driverInit(glitch::core::dimension2d<int> const&)
; decoder-mode: arm
005b1ab4  10 40 2d e9                                      push {r4, lr}
005b1ab8  00 40 a0 e1                                      mov r4, r0
005b1abc  08 d0 4d e2                                      sub sp, sp, #8
005b1ac0  d8 10 90 e5                                      ldr r1, [r0, #0xd8]
005b1ac4  82 0e 80 e2                                      add r0, r0, #0x820
005b1ac8  c0 b7 04 eb                                      bl #0x6df9d0
005b1acc  04 10 8d e2                                      add r1, sp, #4
005b1ad0  69 08 08 e3                                      movw r0, #0x8869
005b1ad4  a3 72 f5 eb                                      bl #0x30e568
005b1ad8  04 30 9d e5                                      ldr r3, [sp, #4]
005b1adc  02 20 a0 e3                                      mov r2, #2
005b1ae0  a0 20 84 e5                                      str r2, [r4, #0xa0]
005b1ae4  24 38 84 e5                                      str r3, [r4, #0x824]
005b1ae8  9d 00 08 e3                                      movw r0, #0x809d
005b1aec  94 72 f5 eb                                      bl #0x30e544
005b1af0  02 11 01 e3                                      movw r1, #0x1102
005b1af4  52 0c 00 e3                                      movw r0, #0xc52
005b1af8  a9 72 f5 eb                                      bl #0x30e5a4
005b1afc  b2 0e a0 e3                                      mov r0, #0xb20
005b1b00  8f 72 f5 eb                                      bl #0x30e544
005b1b04  01 00 a0 e3                                      mov r0, #1
005b1b08  08 d0 8d e2                                      add sp, sp, #8
005b1b0c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005b1e14, declared_size=268, range_size=268, mode=arm
; class-group: glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>
; alias: _ZN6glitch5video21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEE12setTransformENS0_22E_TRANSFORMATION_STATEERKNS_4core8CMatrix4IfEE
; demangled: glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::setTransform(glitch::video::E_TRANSFORMATION_STATE, glitch::core::CMatrix4<float> const&)
; decoder-mode: arm
005b1e14  70 40 2d e9                                      push {r4, r5, r6, lr}
005b1e18  44 30 a0 e3                                      mov r3, #0x44
005b1e1c  93 01 03 e0                                      mul r3, r3, r1
005b1e20  01 50 a0 e1                                      mov r5, r1
005b1e24  a2 3f 83 e2                                      add r3, r3, #0x288
005b1e28  02 10 a0 e1                                      mov r1, r2
005b1e2c  48 d0 4d e2                                      sub sp, sp, #0x48
005b1e30  02 60 a0 e1                                      mov r6, r2
005b1e34  00 40 a0 e1                                      mov r4, r0
005b1e38  41 20 a0 e3                                      mov r2, #0x41
005b1e3c  03 00 80 e0                                      add r0, r0, r3
005b1e40  88 72 f5 eb                                      bl #0x30e868
005b1e44  01 00 55 e3                                      cmp r5, #1
005b1e48  2a 00 00 0a                                      beq #0x5b1ef8
005b1e4c  02 00 55 e3                                      cmp r5, #2
005b1e50  10 00 00 0a                                      beq #0x5b1e98
005b1e54  00 00 55 e3                                      cmp r5, #0
005b1e58  0c 00 00 1a                                      bne #0x5b1e90
005b1e5c  00 30 94 e5                                      ldr r3, [r4]
005b1e60  04 00 a0 e1                                      mov r0, r4
005b1e64  0f e0 a0 e1                                      mov lr, pc
005b1e68  fc f1 93 e5                                      ldr pc, [r3, #0x1fc]
005b1e6c  82 0e 84 e2                                      add r0, r4, #0x820
005b1e70  08 00 80 e2                                      add r0, r0, #8
005b1e74  06 10 a0 e1                                      mov r1, r6
005b1e78  41 20 a0 e3                                      mov r2, #0x41
005b1e7c  79 72 f5 eb                                      bl #0x30e868
005b1e80  bc 3d 94 e5                                      ldr r3, [r4, #0xdbc]
005b1e84  ef 3c 83 e3                                      orr r3, r3, #0xef00
005b1e88  7b 30 83 e3                                      orr r3, r3, #0x7b
005b1e8c  bc 3d 84 e5                                      str r3, [r4, #0xdbc]
005b1e90  48 d0 8d e2                                      add sp, sp, #0x48
005b1e94  70 80 bd e8                                      pop {r4, r5, r6, pc}
005b1e98  04 50 8d e2                                      add r5, sp, #4
005b1e9c  04 00 a0 e1                                      mov r0, r4
005b1ea0  00 30 94 e5                                      ldr r3, [r4]
005b1ea4  0f e0 a0 e1                                      mov lr, pc
005b1ea8  fc f1 93 e5                                      ldr pc, [r3, #0x1fc]
005b1eac  00 30 a0 e3                                      mov r3, #0
005b1eb0  41 20 a0 e3                                      mov r2, #0x41
005b1eb4  06 10 a0 e1                                      mov r1, r6
005b1eb8  05 00 a0 e1                                      mov r0, r5
005b1ebc  44 30 cd e5                                      strb r3, [sp, #0x44]
005b1ec0  68 72 f5 eb                                      bl #0x30e868
005b1ec4  04 00 a0 e1                                      mov r0, r4
005b1ec8  05 10 a0 e1                                      mov r1, r5
005b1ecc  bf ae 04 eb                                      bl #0x6dd9d0
005b1ed0  05 10 a0 e1                                      mov r1, r5
005b1ed4  8b 0e 84 e2                                      add r0, r4, #0x8b0
005b1ed8  41 20 a0 e3                                      mov r2, #0x41
005b1edc  61 72 f5 eb                                      bl #0x30e868
005b1ee0  bc 3d 94 e5                                      ldr r3, [r4, #0xdbc]
005b1ee4  1e 39 83 e3                                      orr r3, r3, #0x78000
005b1ee8  a5 3e 83 e3                                      orr r3, r3, #0xa50
005b1eec  02 30 83 e3                                      orr r3, r3, #2
005b1ef0  bc 3d 84 e5                                      str r3, [r4, #0xdbc]
005b1ef4  e5 ff ff ea                                      b #0x5b1e90
005b1ef8  86 0e 84 e2                                      add r0, r4, #0x860
005b1efc  0c 00 80 e2                                      add r0, r0, #0xc
005b1f00  06 10 a0 e1                                      mov r1, r6
005b1f04  41 20 a0 e3                                      mov r2, #0x41
005b1f08  56 72 f5 eb                                      bl #0x30e868
005b1f0c  bc 3d 94 e5                                      ldr r3, [r4, #0xdbc]
005b1f10  37 3b 83 e3                                      orr r3, r3, #0xdc00
005b1f14  e7 30 83 e3                                      orr r3, r3, #0xe7
005b1f18  bc 3d 84 e5                                      str r3, [r4, #0xdbc]
005b1f1c  db ff ff ea                                      b #0x5b1e90

; FUNCTION 0x005b36f0, declared_size=52, range_size=52, mode=arm
; class-group: glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>
; alias: _ZN6glitch5video21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEED1Ev
; demangled: glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::~CProgrammableGLDriver()
; decoder-mode: arm
005b36f0  24 30 9f e5                                      ldr r3, [pc, #0x24]
005b36f4  24 20 9f e5                                      ldr r2, [pc, #0x24]
005b36f8  10 40 2d e9                                      push {r4, lr}
005b36fc  03 30 8f e0                                      add r3, pc, r3
005b3700  02 20 93 e7                                      ldr r2, [r3, r2]
005b3704  00 40 a0 e1                                      mov r4, r0
005b3708  08 20 82 e2                                      add r2, r2, #8
005b370c  00 20 80 e5                                      str r2, [r0]
005b3710  dc ff ff eb                                      bl #0x5b3688
005b3714  04 00 a0 e1                                      mov r0, r4
005b3718  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
005b371c  94 13 3e 00 18 14 00 00                          .byte 0x94, 0x13, 0x3e, 0x00, 0x18, 0x14, 0x00, 0x00

; FUNCTION 0x005b3724, declared_size=28, range_size=28, mode=arm
; class-group: glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>
; alias: _ZN6glitch5video21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEED0Ev
; demangled: glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::~CProgrammableGLDriver()
; decoder-mode: arm
005b3724  10 40 2d e9                                      push {r4, lr}
005b3728  00 40 a0 e1                                      mov r4, r0
005b372c  ef ff ff eb                                      bl #0x5b36f0
005b3730  04 00 a0 e1                                      mov r0, r4
005b3734  dd 6a f5 eb                                      bl #0x30e2b0
005b3738  04 00 a0 e1                                      mov r0, r4
005b373c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005b3740, declared_size=52, range_size=52, mode=arm
; class-group: glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>
; alias: _ZN6glitch5video21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEED2Ev
; demangled: glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::~CProgrammableGLDriver()
; decoder-mode: arm
005b3740  24 30 9f e5                                      ldr r3, [pc, #0x24]
005b3744  24 20 9f e5                                      ldr r2, [pc, #0x24]
005b3748  10 40 2d e9                                      push {r4, lr}
005b374c  03 30 8f e0                                      add r3, pc, r3
005b3750  02 20 93 e7                                      ldr r2, [r3, r2]
005b3754  00 40 a0 e1                                      mov r4, r0
005b3758  08 20 82 e2                                      add r2, r2, #8
005b375c  00 20 80 e5                                      str r2, [r0]
005b3760  c8 ff ff eb                                      bl #0x5b3688
005b3764  04 00 a0 e1                                      mov r0, r4
005b3768  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
005b376c  44 13 3e 00 18 14 00 00                          .byte 0x44, 0x13, 0x3e, 0x00, 0x18, 0x14, 0x00, 0x00

; FUNCTION 0x005b5340, declared_size=80, range_size=80, mode=arm
; class-group: glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>
; alias: _ZN6glitch5video21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEE37commitCurrentMaterialDirectParametersEh
; demangled: glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::commitCurrentMaterialDirectParameters(unsigned char)
; decoder-mode: arm
005b5340  10 40 2d e9                                      push {r4, lr}
005b5344  ec 20 90 e5                                      ldr r2, [r0, #0xec]
005b5348  f8 30 d0 e5                                      ldrb r3, [r0, #0xf8]
005b534c  0c 40 a0 e3                                      mov r4, #0xc
005b5350  04 e0 92 e5                                      ldr lr, [r2, #4]
005b5354  f4 c0 90 e5                                      ldr ip, [r0, #0xf4]
005b5358  08 d0 4d e2                                      sub sp, sp, #8
005b535c  18 e0 9e e5                                      ldr lr, [lr, #0x18]
005b5360  94 e3 23 e0                                      mla r3, r4, r3, lr
005b5364  34 e0 a0 e3                                      mov lr, #0x34
005b5368  08 30 93 e5                                      ldr r3, [r3, #8]
005b536c  9e 31 23 e0                                      mla r3, lr, r1, r3
005b5370  0c 10 a0 e1                                      mov r1, ip
005b5374  bc c2 d3 e1                                      ldrh ip, [r3, #0x2c]
005b5378  28 30 93 e5                                      ldr r3, [r3, #0x28]
005b537c  0c c1 83 e0                                      add ip, r3, ip, lsl #2
005b5380  00 c0 8d e5                                      str ip, [sp]
005b5384  85 fe ff eb                                      bl #0x5b4da0
005b5388  08 d0 8d e2                                      add sp, sp, #8
005b538c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005b5c40, declared_size=312, range_size=312, mode=arm
; class-group: glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>
; alias: _ZN6glitch5video21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEC2EPNS_7IDeviceE
; demangled: glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::CProgrammableGLDriver(glitch::IDevice*)
; decoder-mode: arm
005b5c40  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005b5c44  00 80 a0 e1                                      mov r8, r0
005b5c48  01 50 a0 e1                                      mov r5, r1
005b5c4c  84 00 a0 e3                                      mov r0, #0x84
005b5c50  00 10 a0 e3                                      mov r1, #0
005b5c54  54 f9 fd eb                                      bl #0x5341ac
005b5c58  00 40 a0 e1                                      mov r4, r0
005b5c5c  08 61 9f e5                                      ldr r6, [pc, #0x108]
005b5c60  21 aa 04 eb                                      bl #0x6e04ec
005b5c64  05 10 a0 e1                                      mov r1, r5
005b5c68  04 20 a0 e1                                      mov r2, r4
005b5c6c  08 00 a0 e1                                      mov r0, r8
005b5c70  60 a2 04 eb                                      bl #0x6de5f8
005b5c74  f4 20 9f e5                                      ldr r2, [pc, #0xf4]
005b5c78  06 60 8f e0                                      add r6, pc, r6
005b5c7c  00 70 a0 e3                                      mov r7, #0
005b5c80  02 20 96 e7                                      ldr r2, [r6, r2]
005b5c84  08 30 a0 e1                                      mov r3, r8
005b5c88  82 4e 88 e2                                      add r4, r8, #0x820
005b5c8c  08 20 82 e2                                      add r2, r2, #8
005b5c90  f8 77 88 e5                                      str r7, [r8, #0x7f8]
005b5c94  00 20 88 e5                                      str r2, [r8]
005b5c98  fc 77 88 e5                                      str r7, [r8, #0x7fc]
005b5c9c  04 78 88 e5                                      str r7, [r8, #0x804]
005b5ca0  00 78 e3 e5                                      strb r7, [r3, #0x800]!
005b5ca4  0c 38 88 e5                                      str r3, [r8, #0x80c]
005b5ca8  08 38 88 e5                                      str r3, [r8, #0x808]
005b5cac  04 00 a0 e1                                      mov r0, r4
005b5cb0  10 78 88 e5                                      str r7, [r8, #0x810]
005b5cb4  3f a7 04 eb                                      bl #0x6df9b8
005b5cb8  b4 30 9f e5                                      ldr r3, [pc, #0xb4]
005b5cbc  d4 a0 84 e2                                      add sl, r4, #0xd4
005b5cc0  fe 55 a0 e3                                      mov r5, #0x3f800000
005b5cc4  03 30 96 e7                                      ldr r3, [r6, r3]
005b5cc8  24 78 88 e5                                      str r7, [r8, #0x824]
005b5ccc  08 40 84 e2                                      add r4, r4, #8
005b5cd0  08 30 83 e2                                      add r3, r3, #8
005b5cd4  00 30 88 e5                                      str r3, [r8]
005b5cd8  01 60 a0 e3                                      mov r6, #1
005b5cdc  40 70 c4 e5                                      strb r7, [r4, #0x40]
005b5ce0  04 00 a0 e1                                      mov r0, r4
005b5ce4  00 10 a0 e3                                      mov r1, #0
005b5ce8  40 20 a0 e3                                      mov r2, #0x40
005b5cec  db 61 f5 eb                                      bl #0x30e460
005b5cf0  00 50 84 e5                                      str r5, [r4]
005b5cf4  14 50 84 e5                                      str r5, [r4, #0x14]
005b5cf8  28 50 84 e5                                      str r5, [r4, #0x28]
005b5cfc  3c 50 84 e5                                      str r5, [r4, #0x3c]
005b5d00  40 60 c4 e5                                      strb r6, [r4, #0x40]
005b5d04  44 40 84 e2                                      add r4, r4, #0x44
005b5d08  0a 00 54 e1                                      cmp r4, sl
005b5d0c  f2 ff ff 1a                                      bne #0x5b5cdc
005b5d10  8f 4e 88 e2                                      add r4, r8, #0x8f0
005b5d14  04 40 84 e2                                      add r4, r4, #4
005b5d18  13 6d 84 e2                                      add r6, r4, #0x4c0
005b5d1c  08 60 86 e2                                      add r6, r6, #8
005b5d20  00 a0 a0 e3                                      mov sl, #0
005b5d24  01 70 a0 e3                                      mov r7, #1
005b5d28  40 a0 c4 e5                                      strb sl, [r4, #0x40]
005b5d2c  04 00 a0 e1                                      mov r0, r4
005b5d30  00 10 a0 e3                                      mov r1, #0
005b5d34  40 20 a0 e3                                      mov r2, #0x40
005b5d38  c8 61 f5 eb                                      bl #0x30e460
005b5d3c  00 50 84 e5                                      str r5, [r4]
005b5d40  14 50 84 e5                                      str r5, [r4, #0x14]
005b5d44  28 50 84 e5                                      str r5, [r4, #0x28]
005b5d48  3c 50 84 e5                                      str r5, [r4, #0x3c]
005b5d4c  40 70 c4 e5                                      strb r7, [r4, #0x40]
005b5d50  44 40 84 e2                                      add r4, r4, #0x44
005b5d54  06 00 54 e1                                      cmp r4, r6
005b5d58  f2 ff ff 1a                                      bne #0x5b5d28
005b5d5c  00 30 e0 e3                                      mvn r3, #0
005b5d60  bc 3d 88 e5                                      str r3, [r8, #0xdbc]
005b5d64  08 00 a0 e1                                      mov r0, r8
005b5d68  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
005b5d6c  18 ee 3d 00 74 45 00 00 18 14 00 00              .byte 0x18, 0xee, 0x3d, 0x00, 0x74, 0x45, 0x00, 0x00, 0x18, 0x14, 0x00, 0x00

; FUNCTION 0x005b5e34, declared_size=312, range_size=312, mode=arm
; class-group: glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>
; alias: _ZN6glitch5video21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEC1EPNS_7IDeviceE
; demangled: glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::CProgrammableGLDriver(glitch::IDevice*)
; decoder-mode: arm
005b5e34  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005b5e38  00 80 a0 e1                                      mov r8, r0
005b5e3c  01 50 a0 e1                                      mov r5, r1
005b5e40  84 00 a0 e3                                      mov r0, #0x84
005b5e44  00 10 a0 e3                                      mov r1, #0
005b5e48  d7 f8 fd eb                                      bl #0x5341ac
005b5e4c  00 40 a0 e1                                      mov r4, r0
005b5e50  08 61 9f e5                                      ldr r6, [pc, #0x108]
005b5e54  a4 a9 04 eb                                      bl #0x6e04ec
005b5e58  05 10 a0 e1                                      mov r1, r5
005b5e5c  04 20 a0 e1                                      mov r2, r4
005b5e60  08 00 a0 e1                                      mov r0, r8
005b5e64  e3 a1 04 eb                                      bl #0x6de5f8
005b5e68  f4 20 9f e5                                      ldr r2, [pc, #0xf4]
005b5e6c  06 60 8f e0                                      add r6, pc, r6
005b5e70  00 70 a0 e3                                      mov r7, #0
005b5e74  02 20 96 e7                                      ldr r2, [r6, r2]
005b5e78  08 30 a0 e1                                      mov r3, r8
005b5e7c  82 4e 88 e2                                      add r4, r8, #0x820
005b5e80  08 20 82 e2                                      add r2, r2, #8
005b5e84  f8 77 88 e5                                      str r7, [r8, #0x7f8]
005b5e88  00 20 88 e5                                      str r2, [r8]
005b5e8c  fc 77 88 e5                                      str r7, [r8, #0x7fc]
005b5e90  04 78 88 e5                                      str r7, [r8, #0x804]
005b5e94  00 78 e3 e5                                      strb r7, [r3, #0x800]!
005b5e98  0c 38 88 e5                                      str r3, [r8, #0x80c]
005b5e9c  08 38 88 e5                                      str r3, [r8, #0x808]
005b5ea0  04 00 a0 e1                                      mov r0, r4
005b5ea4  10 78 88 e5                                      str r7, [r8, #0x810]
005b5ea8  c2 a6 04 eb                                      bl #0x6df9b8
005b5eac  b4 30 9f e5                                      ldr r3, [pc, #0xb4]
005b5eb0  d4 a0 84 e2                                      add sl, r4, #0xd4
005b5eb4  fe 55 a0 e3                                      mov r5, #0x3f800000
005b5eb8  03 30 96 e7                                      ldr r3, [r6, r3]
005b5ebc  24 78 88 e5                                      str r7, [r8, #0x824]
005b5ec0  08 40 84 e2                                      add r4, r4, #8
005b5ec4  08 30 83 e2                                      add r3, r3, #8
005b5ec8  00 30 88 e5                                      str r3, [r8]
005b5ecc  01 60 a0 e3                                      mov r6, #1
005b5ed0  40 70 c4 e5                                      strb r7, [r4, #0x40]
005b5ed4  04 00 a0 e1                                      mov r0, r4
005b5ed8  00 10 a0 e3                                      mov r1, #0
005b5edc  40 20 a0 e3                                      mov r2, #0x40
005b5ee0  5e 61 f5 eb                                      bl #0x30e460
005b5ee4  00 50 84 e5                                      str r5, [r4]
005b5ee8  14 50 84 e5                                      str r5, [r4, #0x14]
005b5eec  28 50 84 e5                                      str r5, [r4, #0x28]
005b5ef0  3c 50 84 e5                                      str r5, [r4, #0x3c]
005b5ef4  40 60 c4 e5                                      strb r6, [r4, #0x40]
005b5ef8  44 40 84 e2                                      add r4, r4, #0x44
005b5efc  0a 00 54 e1                                      cmp r4, sl
005b5f00  f2 ff ff 1a                                      bne #0x5b5ed0
005b5f04  8f 4e 88 e2                                      add r4, r8, #0x8f0
005b5f08  04 40 84 e2                                      add r4, r4, #4
005b5f0c  13 6d 84 e2                                      add r6, r4, #0x4c0
005b5f10  08 60 86 e2                                      add r6, r6, #8
005b5f14  00 a0 a0 e3                                      mov sl, #0
005b5f18  01 70 a0 e3                                      mov r7, #1
005b5f1c  40 a0 c4 e5                                      strb sl, [r4, #0x40]
005b5f20  04 00 a0 e1                                      mov r0, r4
005b5f24  00 10 a0 e3                                      mov r1, #0
005b5f28  40 20 a0 e3                                      mov r2, #0x40
005b5f2c  4b 61 f5 eb                                      bl #0x30e460
005b5f30  00 50 84 e5                                      str r5, [r4]
005b5f34  14 50 84 e5                                      str r5, [r4, #0x14]
005b5f38  28 50 84 e5                                      str r5, [r4, #0x28]
005b5f3c  3c 50 84 e5                                      str r5, [r4, #0x3c]
005b5f40  40 70 c4 e5                                      strb r7, [r4, #0x40]
005b5f44  44 40 84 e2                                      add r4, r4, #0x44
005b5f48  06 00 54 e1                                      cmp r4, r6
005b5f4c  f2 ff ff 1a                                      bne #0x5b5f1c
005b5f50  00 30 e0 e3                                      mvn r3, #0
005b5f54  bc 3d 88 e5                                      str r3, [r8, #0xdbc]
005b5f58  08 00 a0 e1                                      mov r0, r8
005b5f5c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
005b5f60  24 ec 3d 00 74 45 00 00 18 14 00 00              .byte 0x24, 0xec, 0x3d, 0x00, 0x74, 0x45, 0x00, 0x00, 0x18, 0x14, 0x00, 0x00

; FUNCTION 0x005b6584, declared_size=484, range_size=484, mode=arm
; class-group: glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>
; alias: _ZN6glitch5video21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEE11setupArraysEPKNS0_11CGLSLShaderEPKNS0_14CVertexStreamsEPKh
; demangled: glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::setupArrays(glitch::video::CGLSLShader const*, glitch::video::CVertexStreams const*, unsigned char const*)
; decoder-mode: arm
005b6584  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005b6588  24 40 91 e5                                      ldr r4, [r1, #0x24]
005b658c  3c 80 d1 e5                                      ldrb r8, [r1, #0x3c]
005b6590  2c d0 4d e2                                      sub sp, sp, #0x2c
005b6594  18 00 8d e5                                      str r0, [sp, #0x18]
005b6598  88 81 84 e0                                      add r8, r4, r8, lsl #3
005b659c  08 00 54 e1                                      cmp r4, r8
005b65a0  14 20 8d e5                                      str r2, [sp, #0x14]
005b65a4  10 30 8d e5                                      str r3, [sp, #0x10]
005b65a8  00 70 a0 03                                      moveq r7, #0
005b65ac  4e 00 00 0a                                      beq #0x5b66ec
005b65b0  a4 11 9f e5                                      ldr r1, [pc, #0x1a4]
005b65b4  a4 21 9f e5                                      ldr r2, [pc, #0x1a4]
005b65b8  a4 31 9f e5                                      ldr r3, [pc, #0x1a4]
005b65bc  01 10 8f e0                                      add r1, pc, r1
005b65c0  02 20 8f e0                                      add r2, pc, r2
005b65c4  03 30 8f e0                                      add r3, pc, r3
005b65c8  00 70 a0 e3                                      mov r7, #0
005b65cc  15 1e 81 e2                                      add r1, r1, #0x150
005b65d0  33 2e 82 e2                                      add r2, r2, #0x330
005b65d4  15 3e 83 e2                                      add r3, r3, #0x150
005b65d8  20 10 8d e5                                      str r1, [sp, #0x20]
005b65dc  1c 20 8d e5                                      str r2, [sp, #0x1c]
005b65e0  24 30 8d e5                                      str r3, [sp, #0x24]
005b65e4  07 a0 a0 e1                                      mov sl, r7
005b65e8  07 c0 a0 e1                                      mov ip, r7
005b65ec  1e 00 00 ea                                      b #0x5b666c
005b65f0  05 00 5c e1                                      cmp ip, r5
005b65f4  03 00 00 0a                                      beq #0x5b6608
005b65f8  18 00 9d e5                                      ldr r0, [sp, #0x18]
005b65fc  05 10 a0 e1                                      mov r1, r5
005b6600  c3 ff ff eb                                      bl #0x5b6514
005b6604  00 a0 a0 e1                                      mov sl, r0
005b6608  ba 30 d9 e1                                      ldrh r3, [sb, #0xa]
005b660c  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
005b6610  bc 10 d9 e1                                      ldrh r1, [sb, #0xc]
005b6614  06 00 53 e3                                      cmp r3, #6
005b6618  03 21 90 e7                                      ldr r2, [r0, r3, lsl #2]
005b661c  00 30 a0 03                                      moveq r3, #0
005b6620  04 00 00 0a                                      beq #0x5b6638
005b6624  01 30 a0 e3                                      mov r3, #1
005b6628  13 bb a0 e1                                      lsl fp, r3, fp
005b662c  12 32 db e3                                      bics r3, fp, #0x20000001
005b6630  00 30 a0 03                                      moveq r3, #0
005b6634  01 30 a0 13                                      movne r3, #1
005b6638  04 c0 99 e5                                      ldr ip, [sb, #4]
005b663c  be e0 d9 e1                                      ldrh lr, [sb, #0xe]
005b6640  06 00 a0 e1                                      mov r0, r6
005b6644  0c c0 8a e0                                      add ip, sl, ip
005b6648  08 40 84 e2                                      add r4, r4, #8
005b664c  04 c0 8d e5                                      str ip, [sp, #4]
005b6650  00 e0 8d e5                                      str lr, [sp]
005b6654  85 61 f5 eb                                      bl #0x30ec70
005b6658  01 30 a0 e3                                      mov r3, #1
005b665c  08 00 54 e1                                      cmp r4, r8
005b6660  13 76 87 e1                                      orr r7, r7, r3, lsl r6
005b6664  05 c0 a0 e1                                      mov ip, r5
005b6668  1f 00 00 0a                                      beq #0x5b66ec
005b666c  b4 b0 d4 e1                                      ldrh fp, [r4, #4]
005b6670  10 00 9d e5                                      ldr r0, [sp, #0x10]
005b6674  b6 60 d4 e1                                      ldrh r6, [r4, #6]
005b6678  0b 30 d0 e7                                      ldrb r3, [r0, fp]
005b667c  ff 00 53 e3                                      cmp r3, #0xff
005b6680  2b 00 00 0a                                      beq #0x5b6734
005b6684  14 00 9d e5                                      ldr r0, [sp, #0x14]
005b6688  14 90 80 e2                                      add sb, r0, #0x14
005b668c  03 52 99 e7                                      ldr r5, [sb, r3, lsl #4]
005b6690  03 92 89 e0                                      add sb, sb, r3, lsl #4
005b6694  00 00 55 e3                                      cmp r5, #0
005b6698  05 00 00 0a                                      beq #0x5b66b4
005b669c  11 30 d5 e5                                      ldrb r3, [r5, #0x11]
005b66a0  04 00 53 e3                                      cmp r3, #4
005b66a4  d1 ff ff 1a                                      bne #0x5b65f0
005b66a8  08 30 95 e5                                      ldr r3, [r5, #8]
005b66ac  00 00 53 e3                                      cmp r3, #0
005b66b0  ce ff ff 1a                                      bne #0x5b65f0
005b66b4  20 30 9d e5                                      ldr r3, [sp, #0x20]
005b66b8  0b 12 93 e7                                      ldr r1, [r3, fp, lsl #4]
005b66bc  0b 02 83 e0                                      add r0, r3, fp, lsl #4
005b66c0  0c e0 90 e5                                      ldr lr, [r0, #0xc]
005b66c4  04 20 90 e5                                      ldr r2, [r0, #4]
005b66c8  08 30 90 e5                                      ldr r3, [r0, #8]
005b66cc  08 40 84 e2                                      add r4, r4, #8
005b66d0  06 00 a0 e1                                      mov r0, r6
005b66d4  0c c0 8d e5                                      str ip, [sp, #0xc]
005b66d8  00 e0 8d e5                                      str lr, [sp]
005b66dc  a9 60 f5 eb                                      bl #0x30e988
005b66e0  08 00 54 e1                                      cmp r4, r8
005b66e4  0c c0 9d e5                                      ldr ip, [sp, #0xc]
005b66e8  df ff ff 1a                                      bne #0x5b666c
005b66ec  18 00 9d e5                                      ldr r0, [sp, #0x18]
005b66f0  70 52 90 e5                                      ldr r5, [r0, #0x270]
005b66f4  05 50 37 e0                                      eors r5, r7, r5
005b66f8  13 00 00 0a                                      beq #0x5b674c
005b66fc  00 40 a0 e3                                      mov r4, #0
005b6700  01 80 a0 e3                                      mov r8, #1
005b6704  18 64 a0 e1                                      lsl r6, r8, r4
005b6708  05 00 16 e1                                      tst r6, r5
005b670c  04 00 00 0a                                      beq #0x5b6724
005b6710  07 00 16 e1                                      tst r6, r7
005b6714  04 00 a0 e1                                      mov r0, r4
005b6718  09 00 00 0a                                      beq #0x5b6744
005b671c  ed 5d f5 eb                                      bl #0x30ded8
005b6720  06 50 c5 e1                                      bic r5, r5, r6
005b6724  00 00 55 e3                                      cmp r5, #0
005b6728  07 00 00 0a                                      beq #0x5b674c
005b672c  01 40 84 e2                                      add r4, r4, #1
005b6730  f3 ff ff ea                                      b #0x5b6704
005b6734  24 20 9d e5                                      ldr r2, [sp, #0x24]
005b6738  0b 02 82 e0                                      add r0, r2, fp, lsl #4
005b673c  0b 12 92 e7                                      ldr r1, [r2, fp, lsl #4]
005b6740  de ff ff ea                                      b #0x5b66c0
005b6744  6a 61 f5 eb                                      bl #0x30ecf4
005b6748  f4 ff ff ea                                      b #0x5b6720
005b674c  18 20 9d e5                                      ldr r2, [sp, #0x18]
005b6750  70 72 82 e5                                      str r7, [r2, #0x270]
005b6754  2c d0 8d e2                                      add sp, sp, #0x2c
005b6758  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
005b675c  78 9a 32 00 74 9a 32 00 70 9a 32 00              .byte 0x78, 0x9a, 0x32, 0x00, 0x74, 0x9a, 0x32, 0x00, 0x70, 0x9a, 0x32, 0x00

; FUNCTION 0x005b6ccc, declared_size=340, range_size=340, mode=arm
; class-group: glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>
; alias: _ZN6glitch5video21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEE18restoreShadowStateEv
; demangled: glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::restoreShadowState()
; decoder-mode: arm
005b6ccc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005b6cd0  00 50 a0 e1                                      mov r5, r0
005b6cd4  08 d0 4d e2                                      sub sp, sp, #8
005b6cd8  38 ff ff eb                                      bl #0x5b69c0
005b6cdc  f4 30 95 e5                                      ldr r3, [r5, #0xf4]
005b6ce0  00 00 53 e3                                      cmp r3, #0
005b6ce4  1a 00 00 0a                                      beq #0x5b6d54
005b6ce8  4c 00 93 e5                                      ldr r0, [r3, #0x4c]
005b6cec  f2 5e f5 eb                                      bl #0x30e8bc
005b6cf0  24 38 95 e5                                      ldr r3, [r5, #0x824]
005b6cf4  1f 00 53 e3                                      cmp r3, #0x1f
005b6cf8  39 00 00 da                                      ble #0x5b6de4
005b6cfc  20 80 a0 e3                                      mov r8, #0x20
005b6d00  08 60 a0 e1                                      mov r6, r8
005b6d04  00 40 a0 e3                                      mov r4, #0
005b6d08  01 70 a0 e3                                      mov r7, #1
005b6d0c  04 00 00 ea                                      b #0x5b6d24
005b6d10  01 40 84 e2                                      add r4, r4, #1
005b6d14  6f 5c f5 eb                                      bl #0x30ded8
005b6d18  74 30 ff e6                                      uxth r3, r4
005b6d1c  03 00 56 e1                                      cmp r6, r3
005b6d20  08 00 00 9a                                      bls #0x5b6d48
005b6d24  70 32 95 e5                                      ldr r3, [r5, #0x270]
005b6d28  04 00 a0 e1                                      mov r0, r4
005b6d2c  17 34 13 e0                                      ands r3, r3, r7, lsl r4
005b6d30  f6 ff ff 1a                                      bne #0x5b6d10
005b6d34  01 40 84 e2                                      add r4, r4, #1
005b6d38  ed 5f f5 eb                                      bl #0x30ecf4
005b6d3c  74 30 ff e6                                      uxth r3, r4
005b6d40  03 00 56 e1                                      cmp r6, r3
005b6d44  f6 ff ff 8a                                      bhi #0x5b6d24
005b6d48  24 38 95 e5                                      ldr r3, [r5, #0x824]
005b6d4c  03 00 58 e1                                      cmp r8, r3
005b6d50  29 00 00 ba                                      blt #0x5b6dfc
005b6d54  01 80 a0 e3                                      mov r8, #1
005b6d58  00 70 a0 e3                                      mov r7, #0
005b6d5c  4c 60 95 e5                                      ldr r6, [r5, #0x4c]
005b6d60  00 00 56 e3                                      cmp r6, #0
005b6d64  08 00 00 0a                                      beq #0x5b6d8c
005b6d68  00 40 a0 e3                                      mov r4, #0
005b6d6c  04 10 a0 e1                                      mov r1, r4
005b6d70  05 00 a0 e1                                      mov r0, r5
005b6d74  01 40 84 e2                                      add r4, r4, #1
005b6d78  00 20 a0 e3                                      mov r2, #0
005b6d7c  07 30 a0 e1                                      mov r3, r7
005b6d80  5a ee ff eb                                      bl #0x5b26f0
005b6d84  06 00 54 e1                                      cmp r4, r6
005b6d88  f7 ff ff 1a                                      bne #0x5b6d6c
005b6d8c  08 70 a0 e1                                      mov r7, r8
005b6d90  01 80 88 e2                                      add r8, r8, #1
005b6d94  05 00 58 e3                                      cmp r8, #5
005b6d98  ef ff ff 1a                                      bne #0x5b6d5c
005b6d9c  ec 20 95 e5                                      ldr r2, [r5, #0xec]
005b6da0  00 00 52 e3                                      cmp r2, #0
005b6da4  0c 00 00 0a                                      beq #0x5b6ddc
005b6da8  04 10 92 e5                                      ldr r1, [r2, #4]
005b6dac  f8 30 d5 e5                                      ldrb r3, [r5, #0xf8]
005b6db0  0c e0 a0 e3                                      mov lr, #0xc
005b6db4  18 c0 91 e5                                      ldr ip, [r1, #0x18]
005b6db8  05 00 a0 e1                                      mov r0, r5
005b6dbc  f4 10 95 e5                                      ldr r1, [r5, #0xf4]
005b6dc0  9e c3 23 e0                                      mla r3, lr, r3, ip
005b6dc4  08 30 93 e5                                      ldr r3, [r3, #8]
005b6dc8  bc c2 d3 e1                                      ldrh ip, [r3, #0x2c]
005b6dcc  28 30 93 e5                                      ldr r3, [r3, #0x28]
005b6dd0  0c c1 83 e0                                      add ip, r3, ip, lsl #2
005b6dd4  00 c0 8d e5                                      str ip, [sp]
005b6dd8  f0 f7 ff eb                                      bl #0x5b4da0
005b6ddc  08 d0 8d e2                                      add sp, sp, #8
005b6de0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005b6de4  73 60 ff e6                                      uxth r6, r3
005b6de8  00 00 56 e3                                      cmp r6, #0
005b6dec  06 80 a0 01                                      moveq r8, r6
005b6df0  06 80 a0 11                                      movne r8, r6
005b6df4  c2 ff ff 1a                                      bne #0x5b6d04
005b6df8  d3 ff ff ea                                      b #0x5b6d4c
005b6dfc  06 40 a0 e1                                      mov r4, r6
005b6e00  04 00 a0 e1                                      mov r0, r4
005b6e04  ba 5f f5 eb                                      bl #0x30ecf4
005b6e08  24 38 95 e5                                      ldr r3, [r5, #0x824]
005b6e0c  01 40 84 e2                                      add r4, r4, #1
005b6e10  74 40 ff e6                                      uxth r4, r4
005b6e14  03 00 54 e1                                      cmp r4, r3
005b6e18  f8 ff ff ba                                      blt #0x5b6e00
005b6e1c  cc ff ff ea                                      b #0x5b6d54

; FUNCTION 0x005b78b8, declared_size=4628, range_size=4628, mode=arm
; class-group: glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>
; alias: _ZN6glitch5video21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEE40commitCurrentMaterialAutomaticParametersEPKNS0_11CGLSLShaderEPKNS0_14CVertexStreamsEPKh
; demangled: glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::commitCurrentMaterialAutomaticParameters(glitch::video::CGLSLShader const*, glitch::video::CVertexStreams const*, unsigned char const*)
; decoder-mode: arm
005b78b8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005b78bc  00 30 d3 e5                                      ldrb r3, [r3]
005b78c0  02 40 a0 e1                                      mov r4, r2
005b78c4  0c 20 d2 e5                                      ldrb r2, [r2, #0xc]
005b78c8  03 32 84 e0                                      add r3, r4, r3, lsl #4
005b78cc  bc 31 d3 e1                                      ldrh r3, [r3, #0x1c]
005b78d0  13 dd 4d e2                                      sub sp, sp, #0x4c0
005b78d4  04 d0 4d e2                                      sub sp, sp, #4
005b78d8  02 00 53 e1                                      cmp r3, r2
005b78dc  00 50 a0 e1                                      mov r5, r0
005b78e0  01 60 a0 e1                                      mov r6, r1
005b78e4  a8 00 00 da                                      ble #0x5b7b8c
005b78e8  86 3e 85 e2                                      add r3, r5, #0x860
005b78ec  0c 30 83 e2                                      add r3, r3, #0xc
005b78f0  00 20 a0 e3                                      mov r2, #0
005b78f4  0c 30 8d e5                                      str r3, [sp, #0xc]
005b78f8  78 20 8d e5                                      str r2, [sp, #0x78]
005b78fc  9f 3e 85 e2                                      add r3, r5, #0x9f0
005b7900  14 30 8d e5                                      str r3, [sp, #0x14]
005b7904  93 3e 85 e2                                      add r3, r5, #0x930
005b7908  50 30 8d e5                                      str r3, [sp, #0x50]
005b790c  0a 3c 85 e2                                      add r3, r5, #0xa00
005b7910  48 30 8d e5                                      str r3, [sp, #0x48]
005b7914  2a 3d 85 e2                                      add r3, r5, #0xa80
005b7918  40 30 8d e5                                      str r3, [sp, #0x40]
005b791c  8f 2e 85 e2                                      add r2, r5, #0x8f0
005b7920  b5 3e 85 e2                                      add r3, r5, #0xb50
005b7924  54 20 8d e5                                      str r2, [sp, #0x54]
005b7928  38 30 8d e5                                      str r3, [sp, #0x38]
005b792c  97 2e 85 e2                                      add r2, r5, #0x970
005b7930  c2 3e 85 e2                                      add r3, r5, #0xc20
005b7934  4c 20 8d e5                                      str r2, [sp, #0x4c]
005b7938  30 30 8d e5                                      str r3, [sp, #0x30]
005b793c  29 2d 85 e2                                      add r2, r5, #0xa40
005b7940  ca 3e 85 e2                                      add r3, r5, #0xca0
005b7944  44 20 8d e5                                      str r2, [sp, #0x44]
005b7948  28 30 8d e5                                      str r3, [sp, #0x28]
005b794c  b1 2e 85 e2                                      add r2, r5, #0xb10
005b7950  d7 3e 85 e2                                      add r3, r5, #0xd70
005b7954  3c 20 8d e5                                      str r2, [sp, #0x3c]
005b7958  20 30 8d e5                                      str r3, [sp, #0x20]
005b795c  b9 2e 85 e2                                      add r2, r5, #0xb90
005b7960  54 30 9d e5                                      ldr r3, [sp, #0x54]
005b7964  34 20 8d e5                                      str r2, [sp, #0x34]
005b7968  c6 2e 85 e2                                      add r2, r5, #0xc60
005b796c  2c 20 8d e5                                      str r2, [sp, #0x2c]
005b7970  d3 2e 85 e2                                      add r2, r5, #0xd30
005b7974  24 20 8d e5                                      str r2, [sp, #0x24]
005b7978  04 30 83 e2                                      add r3, r3, #4
005b797c  db 2e 85 e2                                      add r2, r5, #0xdb0
005b7980  1c 20 8d e5                                      str r2, [sp, #0x1c]
005b7984  54 30 8d e5                                      str r3, [sp, #0x54]
005b7988  50 20 9d e5                                      ldr r2, [sp, #0x50]
005b798c  4c 30 9d e5                                      ldr r3, [sp, #0x4c]
005b7990  82 be 85 e2                                      add fp, r5, #0x820
005b7994  08 20 82 e2                                      add r2, r2, #8
005b7998  0c 30 83 e2                                      add r3, r3, #0xc
005b799c  50 20 8d e5                                      str r2, [sp, #0x50]
005b79a0  4c 30 8d e5                                      str r3, [sp, #0x4c]
005b79a4  48 20 9d e5                                      ldr r2, [sp, #0x48]
005b79a8  44 30 9d e5                                      ldr r3, [sp, #0x44]
005b79ac  08 b0 8b e2                                      add fp, fp, #8
005b79b0  04 20 82 e2                                      add r2, r2, #4
005b79b4  08 30 83 e2                                      add r3, r3, #8
005b79b8  48 20 8d e5                                      str r2, [sp, #0x48]
005b79bc  44 30 8d e5                                      str r3, [sp, #0x44]
005b79c0  40 20 9d e5                                      ldr r2, [sp, #0x40]
005b79c4  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
005b79c8  00 90 a0 e3                                      mov sb, #0
005b79cc  0c 20 82 e2                                      add r2, r2, #0xc
005b79d0  04 30 83 e2                                      add r3, r3, #4
005b79d4  40 20 8d e5                                      str r2, [sp, #0x40]
005b79d8  3c 30 8d e5                                      str r3, [sp, #0x3c]
005b79dc  38 20 9d e5                                      ldr r2, [sp, #0x38]
005b79e0  34 30 9d e5                                      ldr r3, [sp, #0x34]
005b79e4  08 20 82 e2                                      add r2, r2, #8
005b79e8  0c 30 83 e2                                      add r3, r3, #0xc
005b79ec  38 20 8d e5                                      str r2, [sp, #0x38]
005b79f0  34 30 8d e5                                      str r3, [sp, #0x34]
005b79f4  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
005b79f8  30 20 9d e5                                      ldr r2, [sp, #0x30]
005b79fc  08 30 83 e2                                      add r3, r3, #8
005b7a00  2c 30 8d e5                                      str r3, [sp, #0x2c]
005b7a04  24 30 9d e5                                      ldr r3, [sp, #0x24]
005b7a08  04 20 82 e2                                      add r2, r2, #4
005b7a0c  30 20 8d e5                                      str r2, [sp, #0x30]
005b7a10  04 30 83 e2                                      add r3, r3, #4
005b7a14  28 20 9d e5                                      ldr r2, [sp, #0x28]
005b7a18  24 30 8d e5                                      str r3, [sp, #0x24]
005b7a1c  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
005b7a20  0c 20 82 e2                                      add r2, r2, #0xc
005b7a24  28 20 8d e5                                      str r2, [sp, #0x28]
005b7a28  0c 30 83 e2                                      add r3, r3, #0xc
005b7a2c  20 20 9d e5                                      ldr r2, [sp, #0x20]
005b7a30  1c 30 8d e5                                      str r3, [sp, #0x1c]
005b7a34  a0 30 8d e2                                      add r3, sp, #0xa0
005b7a38  04 30 43 e2                                      sub r3, r3, #4
005b7a3c  08 20 82 e2                                      add r2, r2, #8
005b7a40  10 30 8d e5                                      str r3, [sp, #0x10]
005b7a44  27 3d 85 e2                                      add r3, r5, #0x9c0
005b7a48  20 20 8d e5                                      str r2, [sp, #0x20]
005b7a4c  68 30 8d e5                                      str r3, [sp, #0x68]
005b7a50  8b 2e 85 e2                                      add r2, r5, #0x8b0
005b7a54  be 3e 85 e2                                      add r3, r5, #0xbe0
005b7a58  18 20 8d e5                                      str r2, [sp, #0x18]
005b7a5c  70 30 8d e5                                      str r3, [sp, #0x70]
005b7a60  ad 2e 85 e2                                      add r2, r5, #0xad0
005b7a64  14 30 9d e5                                      ldr r3, [sp, #0x14]
005b7a68  74 20 8d e5                                      str r2, [sp, #0x74]
005b7a6c  cf 2e 85 e2                                      add r2, r5, #0xcf0
005b7a70  6c 20 8d e5                                      str r2, [sp, #0x6c]
005b7a74  14 20 9d e5                                      ldr r2, [sp, #0x14]
005b7a78  04 30 83 e2                                      add r3, r3, #4
005b7a7c  7c 30 8d e5                                      str r3, [sp, #0x7c]
005b7a80  14 30 9d e5                                      ldr r3, [sp, #0x14]
005b7a84  08 20 82 e2                                      add r2, r2, #8
005b7a88  80 20 8d e5                                      str r2, [sp, #0x80]
005b7a8c  4b 2e 8d e2                                      add r2, sp, #0x4b0
005b7a90  0c 30 83 e2                                      add r3, r3, #0xc
005b7a94  0c 20 82 e2                                      add r2, r2, #0xc
005b7a98  88 30 8d e5                                      str r3, [sp, #0x88]
005b7a9c  90 20 8d e5                                      str r2, [sp, #0x90]
005b7aa0  4a 3e 8d e2                                      add r3, sp, #0x4a0
005b7aa4  49 2e 8d e2                                      add r2, sp, #0x490
005b7aa8  08 30 83 e2                                      add r3, r3, #8
005b7aac  08 20 82 e2                                      add r2, r2, #8
005b7ab0  84 30 8d e5                                      str r3, [sp, #0x84]
005b7ab4  8c 20 8d e5                                      str r2, [sp, #0x8c]
005b7ab8  bc 32 d6 e1                                      ldrh r3, [r6, #0x2c]
005b7abc  00 00 53 e3                                      cmp r3, #0
005b7ac0  ab 00 00 0a                                      beq #0x5b7d74
005b7ac4  01 70 43 e2                                      sub r7, r3, #1
005b7ac8  4b 3e 8d e2                                      add r3, sp, #0x4b0
005b7acc  04 30 83 e2                                      add r3, r3, #4
005b7ad0  49 2f 8d e2                                      add r2, sp, #0x124
005b7ad4  77 70 ff e6                                      uxth r7, r7
005b7ad8  01 70 87 e2                                      add r7, r7, #1
005b7adc  64 30 8d e5                                      str r3, [sp, #0x64]
005b7ae0  58 20 8d e5                                      str r2, [sp, #0x58]
005b7ae4  e0 30 8d e2                                      add r3, sp, #0xe0
005b7ae8  5a 2f 8d e2                                      add r2, sp, #0x168
005b7aec  07 72 a0 e1                                      lsl r7, r7, #4
005b7af0  00 40 a0 e3                                      mov r4, #0
005b7af4  5c 30 8d e5                                      str r3, [sp, #0x5c]
005b7af8  60 20 8d e5                                      str r2, [sp, #0x60]
005b7afc  28 80 96 e5                                      ldr r8, [r6, #0x28]
005b7b00  04 80 88 e0                                      add r8, r8, r4
005b7b04  b4 30 d8 e1                                      ldrh r3, [r8, #4]
005b7b08  22 30 43 e2                                      sub r3, r3, #0x22
005b7b0c  1c 00 53 e3                                      cmp r3, #0x1c
005b7b10  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
005b7b14  93 00 00 ea                                      b #0x5b7d68
005b7b18  35 02 00 ea                                      b #0x5b83f4
005b7b1c  06 02 00 ea                                      b #0x5b833c
005b7b20  29 02 00 ea                                      b #0x5b83cc
005b7b24  9f 01 00 ea                                      b #0x5b81a8
005b7b28  1a 02 00 ea                                      b #0x5b8398
005b7b2c  f5 01 00 ea                                      b #0x5b8308
005b7b30  0b 02 00 ea                                      b #0x5b8364
005b7b34  81 01 00 ea                                      b #0x5b8140
005b7b38  e5 01 00 ea                                      b #0x5b82d4
005b7b3c  ca 01 00 ea                                      b #0x5b826c
005b7b40  d6 01 00 ea                                      b #0x5b82a0
005b7b44  8a 01 00 ea                                      b #0x5b8174
005b7b48  ad 01 00 ea                                      b #0x5b8204
005b7b4c  9f 01 00 ea                                      b #0x5b81d0
005b7b50  b8 01 00 ea                                      b #0x5b8238
005b7b54  6c 01 00 ea                                      b #0x5b810c
005b7b58  51 01 00 ea                                      b #0x5b80a4
005b7b5c  36 01 00 ea                                      b #0x5b803c
005b7b60  1b 01 00 ea                                      b #0x5b7fd4
005b7b64  0d 01 00 ea                                      b #0x5b7fa0
005b7b68  5a 01 00 ea                                      b #0x5b80d8
005b7b6c  25 01 00 ea                                      b #0x5b8008
005b7b70  3e 01 00 ea                                      b #0x5b8070
005b7b74  e3 00 00 ea                                      b #0x5b7f08
005b7b78  cb 00 00 ea                                      b #0x5b7eac
005b7b7c  b1 00 00 ea                                      b #0x5b7e48
005b7b80  99 00 00 ea                                      b #0x5b7dec
005b7b84  5c 00 00 ea                                      b #0x5b7cfc
005b7b88  8b 00 00 ea                                      b #0x5b7dbc
005b7b8c  be 20 d4 e1                                      ldrh r2, [r4, #0xe]
005b7b90  04 10 a0 e3                                      mov r1, #4
005b7b94  11 23 12 e0                                      ands r2, r2, r1, lsl r3
005b7b98  52 ff ff 0a                                      beq #0x5b78e8
005b7b9c  18 90 a0 e3                                      mov sb, #0x18
005b7ba0  99 03 09 e0                                      mul sb, sb, r3
005b7ba4  10 20 94 e5                                      ldr r2, [r4, #0x10]
005b7ba8  0c 30 89 e2                                      add r3, sb, #0xc
005b7bac  6c 18 90 e5                                      ldr r1, [r0, #0x86c]
005b7bb0  03 a0 92 e7                                      ldr sl, [r2, r3]
005b7bb4  03 30 82 e0                                      add r3, r2, r3
005b7bb8  04 80 93 e5                                      ldr r8, [r3, #4]
005b7bbc  0a 00 a0 e1                                      mov r0, sl
005b7bc0  08 70 93 e5                                      ldr r7, [r3, #8]
005b7bc4  68 5c f5 eb                                      bl #0x30ed6c
005b7bc8  7c 18 95 e5                                      ldr r1, [r5, #0x87c]
005b7bcc  00 b0 a0 e1                                      mov fp, r0
005b7bd0  08 00 a0 e1                                      mov r0, r8
005b7bd4  64 5c f5 eb                                      bl #0x30ed6c
005b7bd8  00 10 a0 e1                                      mov r1, r0
005b7bdc  0b 00 a0 e1                                      mov r0, fp
005b7be0  ef 5b f5 eb                                      bl #0x30eba4
005b7be4  8c 18 95 e5                                      ldr r1, [r5, #0x88c]
005b7be8  00 b0 a0 e1                                      mov fp, r0
005b7bec  07 00 a0 e1                                      mov r0, r7
005b7bf0  5d 5c f5 eb                                      bl #0x30ed6c
005b7bf4  00 10 a0 e1                                      mov r1, r0
005b7bf8  0b 00 a0 e1                                      mov r0, fp
005b7bfc  e8 5b f5 eb                                      bl #0x30eba4
005b7c00  9c 18 95 e5                                      ldr r1, [r5, #0x89c]
005b7c04  e6 5b f5 eb                                      bl #0x30eba4
005b7c08  70 18 95 e5                                      ldr r1, [r5, #0x870]
005b7c0c  00 30 a0 e1                                      mov r3, r0
005b7c10  0a 00 a0 e1                                      mov r0, sl
005b7c14  00 30 8d e5                                      str r3, [sp]
005b7c18  53 5c f5 eb                                      bl #0x30ed6c
005b7c1c  80 18 95 e5                                      ldr r1, [r5, #0x880]
005b7c20  00 b0 a0 e1                                      mov fp, r0
005b7c24  08 00 a0 e1                                      mov r0, r8
005b7c28  4f 5c f5 eb                                      bl #0x30ed6c
005b7c2c  00 10 a0 e1                                      mov r1, r0
005b7c30  0b 00 a0 e1                                      mov r0, fp
005b7c34  da 5b f5 eb                                      bl #0x30eba4
005b7c38  90 18 95 e5                                      ldr r1, [r5, #0x890]
005b7c3c  00 b0 a0 e1                                      mov fp, r0
005b7c40  07 00 a0 e1                                      mov r0, r7
005b7c44  48 5c f5 eb                                      bl #0x30ed6c
005b7c48  00 10 a0 e1                                      mov r1, r0
005b7c4c  0b 00 a0 e1                                      mov r0, fp
005b7c50  d3 5b f5 eb                                      bl #0x30eba4
005b7c54  a0 18 95 e5                                      ldr r1, [r5, #0x8a0]
005b7c58  d1 5b f5 eb                                      bl #0x30eba4
005b7c5c  74 18 95 e5                                      ldr r1, [r5, #0x874]
005b7c60  00 b0 a0 e1                                      mov fp, r0
005b7c64  0a 00 a0 e1                                      mov r0, sl
005b7c68  3f 5c f5 eb                                      bl #0x30ed6c
005b7c6c  84 18 95 e5                                      ldr r1, [r5, #0x884]
005b7c70  00 a0 a0 e1                                      mov sl, r0
005b7c74  08 00 a0 e1                                      mov r0, r8
005b7c78  3b 5c f5 eb                                      bl #0x30ed6c
005b7c7c  00 10 a0 e1                                      mov r1, r0
005b7c80  0a 00 a0 e1                                      mov r0, sl
005b7c84  c6 5b f5 eb                                      bl #0x30eba4
005b7c88  94 18 95 e5                                      ldr r1, [r5, #0x894]
005b7c8c  00 80 a0 e1                                      mov r8, r0
005b7c90  07 00 a0 e1                                      mov r0, r7
005b7c94  34 5c f5 eb                                      bl #0x30ed6c
005b7c98  00 10 a0 e1                                      mov r1, r0
005b7c9c  08 00 a0 e1                                      mov r0, r8
005b7ca0  bf 5b f5 eb                                      bl #0x30eba4
005b7ca4  a4 18 95 e5                                      ldr r1, [r5, #0x8a4]
005b7ca8  bd 5b f5 eb                                      bl #0x30eba4
005b7cac  00 20 a0 e3                                      mov r2, #0
005b7cb0  ac 28 c5 e5                                      strb r2, [r5, #0x8ac]
005b7cb4  a4 08 85 e5                                      str r0, [r5, #0x8a4]
005b7cb8  00 30 9d e5                                      ldr r3, [sp]
005b7cbc  a0 b8 85 e5                                      str fp, [r5, #0x8a0]
005b7cc0  86 2e 85 e2                                      add r2, r5, #0x860
005b7cc4  9c 38 85 e5                                      str r3, [r5, #0x89c]
005b7cc8  10 10 94 e5                                      ldr r1, [r4, #0x10]
005b7ccc  0c 20 82 e2                                      add r2, r2, #0xc
005b7cd0  02 00 a0 e1                                      mov r0, r2
005b7cd4  09 10 81 e0                                      add r1, r1, sb
005b7cd8  0c 20 8d e5                                      str r2, [sp, #0xc]
005b7cdc  a9 7e ff eb                                      bl #0x597788
005b7ce0  bc 3d 95 e5                                      ldr r3, [r5, #0xdbc]
005b7ce4  01 20 a0 e3                                      mov r2, #1
005b7ce8  78 20 8d e5                                      str r2, [sp, #0x78]
005b7cec  37 3b 83 e3                                      orr r3, r3, #0xdc00
005b7cf0  e7 30 83 e3                                      orr r3, r3, #0xe7
005b7cf4  bc 3d 85 e5                                      str r3, [r5, #0xdbc]
005b7cf8  ff fe ff ea                                      b #0x5b78fc
005b7cfc  cc 20 95 e5                                      ldr r2, [r5, #0xcc]
005b7d00  06 30 d8 e5                                      ldrb r3, [r8, #6]
005b7d04  04 20 12 e5                                      ldr r2, [r2, #-4]
005b7d08  06 00 53 e3                                      cmp r3, #6
005b7d0c  20 a0 92 e5                                      ldr sl, [r2, #0x20]
005b7d10  14 10 92 e5                                      ldr r1, [r2, #0x14]
005b7d14  18 30 92 e5                                      ldr r3, [r2, #0x18]
005b7d18  1c 00 92 e5                                      ldr r0, [r2, #0x1c]
005b7d1c  11 00 00 1a                                      bne #0x5b7d68
005b7d20  00 00 61 e0                                      rsb r0, r1, r0
005b7d24  00 30 8d e5                                      str r3, [sp]
005b7d28  0d 5b f5 eb                                      bl #0x30e964
005b7d2c  00 10 a0 e1                                      mov r1, r0
005b7d30  fe 05 a0 e3                                      mov r0, #0x3f800000
005b7d34  d6 5b f5 eb                                      bl #0x30ec94
005b7d38  00 30 9d e5                                      ldr r3, [sp]
005b7d3c  9c 00 8d e5                                      str r0, [sp, #0x9c]
005b7d40  0a 00 63 e0                                      rsb r0, r3, sl
005b7d44  06 5b f5 eb                                      bl #0x30e964
005b7d48  00 10 a0 e1                                      mov r1, r0
005b7d4c  fe 05 a0 e3                                      mov r0, #0x3f800000
005b7d50  cf 5b f5 eb                                      bl #0x30ec94
005b7d54  a0 00 8d e5                                      str r0, [sp, #0xa0]
005b7d58  0c 00 98 e5                                      ldr r0, [r8, #0xc]
005b7d5c  01 10 a0 e3                                      mov r1, #1
005b7d60  10 20 9d e5                                      ldr r2, [sp, #0x10]
005b7d64  b6 5a f5 eb                                      bl #0x30e844
005b7d68  10 40 84 e2                                      add r4, r4, #0x10
005b7d6c  07 00 54 e1                                      cmp r4, r7
005b7d70  61 ff ff 1a                                      bne #0x5b7afc
005b7d74  08 90 89 e2                                      add sb, sb, #8
005b7d78  10 00 59 e3                                      cmp sb, #0x10
005b7d7c  08 60 86 e2                                      add r6, r6, #8
005b7d80  4c ff ff 1a                                      bne #0x5b7ab8
005b7d84  78 30 9d e5                                      ldr r3, [sp, #0x78]
005b7d88  00 00 53 e3                                      cmp r3, #0
005b7d8c  07 00 00 0a                                      beq #0x5b7db0
005b7d90  0c 00 9d e5                                      ldr r0, [sp, #0xc]
005b7d94  b3 1f 85 e2                                      add r1, r5, #0x2cc
005b7d98  41 20 a0 e3                                      mov r2, #0x41
005b7d9c  b1 5a f5 eb                                      bl #0x30e868
005b7da0  bc 3d 95 e5                                      ldr r3, [r5, #0xdbc]
005b7da4  37 3b 83 e3                                      orr r3, r3, #0xdc00
005b7da8  e7 30 83 e3                                      orr r3, r3, #0xe7
005b7dac  bc 3d 85 e5                                      str r3, [r5, #0xdbc]
005b7db0  c4 d0 8d e2                                      add sp, sp, #0xc4
005b7db4  01 db 8d e2                                      add sp, sp, #0x400
005b7db8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005b7dbc  06 a0 d8 e5                                      ldrb sl, [r8, #6]
005b7dc0  05 00 5a e3                                      cmp sl, #5
005b7dc4  36 03 00 0a                                      beq #0x5b8aa4
005b7dc8  01 00 5a e3                                      cmp sl, #1
005b7dcc  e5 ff ff 1a                                      bne #0x5b7d68
005b7dd0  43 4c 01 eb                                      bl #0x60aee4
005b7dd4  bc 04 8d e5                                      str r0, [sp, #0x4bc]
005b7dd8  0c 00 98 e5                                      ldr r0, [r8, #0xc]
005b7ddc  0a 10 a0 e1                                      mov r1, sl
005b7de0  90 20 9d e5                                      ldr r2, [sp, #0x90]
005b7de4  bf 5b f5 eb                                      bl #0x30ece8
005b7de8  de ff ff ea                                      b #0x5b7d68
005b7dec  cc 30 95 e5                                      ldr r3, [r5, #0xcc]
005b7df0  06 10 d8 e5                                      ldrb r1, [r8, #6]
005b7df4  04 20 13 e5                                      ldr r2, [r3, #-4]
005b7df8  06 00 51 e3                                      cmp r1, #6
005b7dfc  20 30 92 e5                                      ldr r3, [r2, #0x20]
005b7e00  14 00 92 e5                                      ldr r0, [r2, #0x14]
005b7e04  18 a0 92 e5                                      ldr sl, [r2, #0x18]
005b7e08  1c 20 92 e5                                      ldr r2, [r2, #0x1c]
005b7e0c  fd 02 00 0a                                      beq #0x5b8a08
005b7e10  02 00 51 e3                                      cmp r1, #2
005b7e14  d3 ff ff 1a                                      bne #0x5b7d68
005b7e18  02 20 60 e0                                      rsb r2, r0, r2
005b7e1c  03 30 6a e0                                      rsb r3, sl, r3
005b7e20  9c 20 8d e5                                      str r2, [sp, #0x9c]
005b7e24  a0 30 8d e5                                      str r3, [sp, #0xa0]
005b7e28  0c 00 98 e5                                      ldr r0, [r8, #0xc]
005b7e2c  01 10 a0 e3                                      mov r1, #1
005b7e30  10 20 9d e5                                      ldr r2, [sp, #0x10]
005b7e34  10 40 84 e2                                      add r4, r4, #0x10
005b7e38  63 5a f5 eb                                      bl #0x30e7cc
005b7e3c  07 00 54 e1                                      cmp r4, r7
005b7e40  2d ff ff 1a                                      bne #0x5b7afc
005b7e44  ca ff ff ea                                      b #0x5b7d74
005b7e48  cc 30 95 e5                                      ldr r3, [r5, #0xcc]
005b7e4c  06 00 d8 e5                                      ldrb r0, [r8, #6]
005b7e50  04 20 13 e5                                      ldr r2, [r3, #-4]
005b7e54  08 00 50 e3                                      cmp r0, #8
005b7e58  20 10 92 e5                                      ldr r1, [r2, #0x20]
005b7e5c  14 30 92 e5                                      ldr r3, [r2, #0x14]
005b7e60  18 a0 92 e5                                      ldr sl, [r2, #0x18]
005b7e64  1c 20 92 e5                                      ldr r2, [r2, #0x1c]
005b7e68  ee 02 00 0a                                      beq #0x5b8a28
005b7e6c  04 00 50 e3                                      cmp r0, #4
005b7e70  bc ff ff 1a                                      bne #0x5b7d68
005b7e74  02 20 63 e0                                      rsb r2, r3, r2
005b7e78  01 10 6a e0                                      rsb r1, sl, r1
005b7e7c  a4 20 8d e5                                      str r2, [sp, #0xa4]
005b7e80  a8 10 8d e5                                      str r1, [sp, #0xa8]
005b7e84  9c 30 8d e5                                      str r3, [sp, #0x9c]
005b7e88  a0 a0 8d e5                                      str sl, [sp, #0xa0]
005b7e8c  0c 00 98 e5                                      ldr r0, [r8, #0xc]
005b7e90  01 10 a0 e3                                      mov r1, #1
005b7e94  10 20 9d e5                                      ldr r2, [sp, #0x10]
005b7e98  10 40 84 e2                                      add r4, r4, #0x10
005b7e9c  57 59 f5 eb                                      bl #0x30e400
005b7ea0  07 00 54 e1                                      cmp r4, r7
005b7ea4  14 ff ff 1a                                      bne #0x5b7afc
005b7ea8  b1 ff ff ea                                      b #0x5b7d74
005b7eac  bc 3d 95 e5                                      ldr r3, [r5, #0xdbc]
005b7eb0  08 00 13 e3                                      tst r3, #8
005b7eb4  6f 01 00 1a                                      bne #0x5b8478
005b7eb8  06 30 d8 e5                                      ldrb r3, [r8, #6]
005b7ebc  08 00 53 e3                                      cmp r3, #8
005b7ec0  bc 02 00 0a                                      beq #0x5b89b8
005b7ec4  7c 30 9d e5                                      ldr r3, [sp, #0x7c]
005b7ec8  80 20 9d e5                                      ldr r2, [sp, #0x80]
005b7ecc  0c 00 98 e5                                      ldr r0, [r8, #0xc]
005b7ed0  00 c0 93 e5                                      ldr ip, [r3]
005b7ed4  00 30 92 e5                                      ldr r3, [r2]
005b7ed8  14 20 9d e5                                      ldr r2, [sp, #0x14]
005b7edc  01 10 a0 e3                                      mov r1, #1
005b7ee0  10 40 84 e2                                      add r4, r4, #0x10
005b7ee4  00 e0 92 e5                                      ldr lr, [r2]
005b7ee8  84 20 9d e5                                      ldr r2, [sp, #0x84]
005b7eec  ac c4 8d e5                                      str ip, [sp, #0x4ac]
005b7ef0  a8 e4 8d e5                                      str lr, [sp, #0x4a8]
005b7ef4  b0 34 8d e5                                      str r3, [sp, #0x4b0]
005b7ef8  9f 5a f5 eb                                      bl #0x30e97c
005b7efc  07 00 54 e1                                      cmp r4, r7
005b7f00  fd fe ff 1a                                      bne #0x5b7afc
005b7f04  9a ff ff ea                                      b #0x5b7d74
005b7f08  48 a3 95 e5                                      ldr sl, [r5, #0x348]
005b7f0c  38 23 95 e5                                      ldr r2, [r5, #0x338]
005b7f10  00 30 a0 e3                                      mov r3, #0
005b7f14  02 a1 8a e2                                      add sl, sl, #0x80000000
005b7f18  50 33 c5 e5                                      strb r3, [r5, #0x350]
005b7f1c  02 10 a0 e1                                      mov r1, r2
005b7f20  0a 00 a0 e1                                      mov r0, sl
005b7f24  04 20 8d e5                                      str r2, [sp, #4]
005b7f28  59 5b f5 eb                                      bl #0x30ec94
005b7f2c  04 20 9d e5                                      ldr r2, [sp, #4]
005b7f30  00 30 a0 e1                                      mov r3, r0
005b7f34  fe 15 a0 e3                                      mov r1, #0x3f800000
005b7f38  02 00 a0 e1                                      mov r0, r2
005b7f3c  b4 34 8d e5                                      str r3, [sp, #0x4b4]
005b7f40  00 30 8d e5                                      str r3, [sp]
005b7f44  18 59 f5 eb                                      bl #0x30e3ac
005b7f48  00 10 a0 e1                                      mov r1, r0
005b7f4c  0a 00 a0 e1                                      mov r0, sl
005b7f50  4f 5b f5 eb                                      bl #0x30ec94
005b7f54  b8 04 8d e5                                      str r0, [sp, #0x4b8]
005b7f58  06 20 d8 e5                                      ldrb r2, [r8, #6]
005b7f5c  00 a0 a0 e1                                      mov sl, r0
005b7f60  00 30 9d e5                                      ldr r3, [sp]
005b7f64  06 00 52 e3                                      cmp r2, #6
005b7f68  c8 02 00 0a                                      beq #0x5b8a90
005b7f6c  02 00 52 e3                                      cmp r2, #2
005b7f70  7c ff ff 1a                                      bne #0x5b7d68
005b7f74  03 00 a0 e1                                      mov r0, r3
005b7f78  53 59 f5 eb                                      bl #0x30e4cc
005b7f7c  9c 00 8d e5                                      str r0, [sp, #0x9c]
005b7f80  0a 00 a0 e1                                      mov r0, sl
005b7f84  50 59 f5 eb                                      bl #0x30e4cc
005b7f88  a0 00 8d e5                                      str r0, [sp, #0xa0]
005b7f8c  0c 00 98 e5                                      ldr r0, [r8, #0xc]
005b7f90  01 10 a0 e3                                      mov r1, #1
005b7f94  10 20 9d e5                                      ldr r2, [sp, #0x10]
005b7f98  0b 5a f5 eb                                      bl #0x30e7cc
005b7f9c  71 ff ff ea                                      b #0x5b7d68
005b7fa0  bc 3d 95 e5                                      ldr r3, [r5, #0xdbc]
005b7fa4  02 09 13 e3                                      tst r3, #0x8000
005b7fa8  3c 01 00 1a                                      bne #0x5b84a0
005b7fac  00 20 a0 e3                                      mov r2, #0
005b7fb0  0c 00 98 e5                                      ldr r0, [r8, #0xc]
005b7fb4  30 2d c5 e5                                      strb r2, [r5, #0xd30]
005b7fb8  01 10 a0 e3                                      mov r1, #1
005b7fbc  6c 30 9d e5                                      ldr r3, [sp, #0x6c]
005b7fc0  85 5a f5 eb                                      bl #0x30e9dc
005b7fc4  10 40 84 e2                                      add r4, r4, #0x10
005b7fc8  07 00 54 e1                                      cmp r4, r7
005b7fcc  ca fe ff 1a                                      bne #0x5b7afc
005b7fd0  67 ff ff ea                                      b #0x5b7d74
005b7fd4  bc 3d 95 e5                                      ldr r3, [r5, #0xdbc]
005b7fd8  01 09 13 e3                                      tst r3, #0x4000
005b7fdc  44 01 00 1a                                      bne #0x5b84f4
005b7fe0  00 20 a0 e3                                      mov r2, #0
005b7fe4  0c 00 98 e5                                      ldr r0, [r8, #0xc]
005b7fe8  ec 2c c5 e5                                      strb r2, [r5, #0xcec]
005b7fec  01 10 a0 e3                                      mov r1, #1
005b7ff0  28 30 9d e5                                      ldr r3, [sp, #0x28]
005b7ff4  78 5a f5 eb                                      bl #0x30e9dc
005b7ff8  10 40 84 e2                                      add r4, r4, #0x10
005b7ffc  07 00 54 e1                                      cmp r4, r7
005b8000  bd fe ff 1a                                      bne #0x5b7afc
005b8004  5a ff ff ea                                      b #0x5b7d74
005b8008  bc 3d 95 e5                                      ldr r3, [r5, #0xdbc]
005b800c  02 08 13 e3                                      tst r3, #0x20000
005b8010  48 01 00 1a                                      bne #0x5b8538
005b8014  00 20 a0 e3                                      mov r2, #0
005b8018  0c 00 98 e5                                      ldr r0, [r8, #0xc]
005b801c  b8 2d c5 e5                                      strb r2, [r5, #0xdb8]
005b8020  01 10 a0 e3                                      mov r1, #1
005b8024  20 30 9d e5                                      ldr r3, [sp, #0x20]
005b8028  6b 5a f5 eb                                      bl #0x30e9dc
005b802c  10 40 84 e2                                      add r4, r4, #0x10
005b8030  07 00 54 e1                                      cmp r4, r7
005b8034  b0 fe ff 1a                                      bne #0x5b7afc
005b8038  4d ff ff ea                                      b #0x5b7d74
005b803c  bc 3d 95 e5                                      ldr r3, [r5, #0xdbc]
005b8040  02 0a 13 e3                                      tst r3, #0x2000
005b8044  48 01 00 1a                                      bne #0x5b856c
005b8048  00 20 a0 e3                                      mov r2, #0
005b804c  0c 00 98 e5                                      ldr r0, [r8, #0xc]
005b8050  a8 2c c5 e5                                      strb r2, [r5, #0xca8]
005b8054  01 10 a0 e3                                      mov r1, #1
005b8058  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
005b805c  5e 5a f5 eb                                      bl #0x30e9dc
005b8060  10 40 84 e2                                      add r4, r4, #0x10
005b8064  07 00 54 e1                                      cmp r4, r7
005b8068  a3 fe ff 1a                                      bne #0x5b7afc
005b806c  40 ff ff ea                                      b #0x5b7d74
005b8070  bc 3d 95 e5                                      ldr r3, [r5, #0xdbc]
005b8074  01 07 13 e3                                      tst r3, #0x40000
005b8078  48 01 00 1a                                      bne #0x5b85a0
005b807c  00 20 a0 e3                                      mov r2, #0
005b8080  0c 00 98 e5                                      ldr r0, [r8, #0xc]
005b8084  fc 2d c5 e5                                      strb r2, [r5, #0xdfc]
005b8088  01 10 a0 e3                                      mov r1, #1
005b808c  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
005b8090  51 5a f5 eb                                      bl #0x30e9dc
005b8094  10 40 84 e2                                      add r4, r4, #0x10
005b8098  07 00 54 e1                                      cmp r4, r7
005b809c  96 fe ff 1a                                      bne #0x5b7afc
005b80a0  33 ff ff ea                                      b #0x5b7d74
005b80a4  bc 3d 95 e5                                      ldr r3, [r5, #0xdbc]
005b80a8  01 0a 13 e3                                      tst r3, #0x1000
005b80ac  6e 01 00 1a                                      bne #0x5b866c
005b80b0  00 20 a0 e3                                      mov r2, #0
005b80b4  0c 00 98 e5                                      ldr r0, [r8, #0xc]
005b80b8  64 2c c5 e5                                      strb r2, [r5, #0xc64]
005b80bc  01 10 a0 e3                                      mov r1, #1
005b80c0  30 30 9d e5                                      ldr r3, [sp, #0x30]
005b80c4  44 5a f5 eb                                      bl #0x30e9dc
005b80c8  10 40 84 e2                                      add r4, r4, #0x10
005b80cc  07 00 54 e1                                      cmp r4, r7
005b80d0  89 fe ff 1a                                      bne #0x5b7afc
005b80d4  26 ff ff ea                                      b #0x5b7d74
005b80d8  bc 3d 95 e5                                      ldr r3, [r5, #0xdbc]
005b80dc  01 08 13 e3                                      tst r3, #0x10000
005b80e0  6e 01 00 1a                                      bne #0x5b86a0
005b80e4  00 20 a0 e3                                      mov r2, #0
005b80e8  0c 00 98 e5                                      ldr r0, [r8, #0xc]
005b80ec  74 2d c5 e5                                      strb r2, [r5, #0xd74]
005b80f0  01 10 a0 e3                                      mov r1, #1
005b80f4  24 30 9d e5                                      ldr r3, [sp, #0x24]
005b80f8  37 5a f5 eb                                      bl #0x30e9dc
005b80fc  10 40 84 e2                                      add r4, r4, #0x10
005b8100  07 00 54 e1                                      cmp r4, r7
005b8104  7c fe ff 1a                                      bne #0x5b7afc
005b8108  19 ff ff ea                                      b #0x5b7d74
005b810c  bc 3d 95 e5                                      ldr r3, [r5, #0xdbc]
005b8110  02 0b 13 e3                                      tst r3, #0x800
005b8114  6e 01 00 1a                                      bne #0x5b86d4
005b8118  00 20 a0 e3                                      mov r2, #0
005b811c  0c 00 98 e5                                      ldr r0, [r8, #0xc]
005b8120  20 2c c5 e5                                      strb r2, [r5, #0xc20]
005b8124  01 10 a0 e3                                      mov r1, #1
005b8128  70 30 9d e5                                      ldr r3, [sp, #0x70]
005b812c  2a 5a f5 eb                                      bl #0x30e9dc
005b8130  10 40 84 e2                                      add r4, r4, #0x10
005b8134  07 00 54 e1                                      cmp r4, r7
005b8138  6f fe ff 1a                                      bne #0x5b7afc
005b813c  0c ff ff ea                                      b #0x5b7d74
005b8140  bc 3d 95 e5                                      ldr r3, [r5, #0xdbc]
005b8144  08 00 13 e3                                      tst r3, #8
005b8148  7e 01 00 1a                                      bne #0x5b8748
005b814c  00 20 a0 e3                                      mov r2, #0
005b8150  0c 00 98 e5                                      ldr r0, [r8, #0xc]
005b8154  00 2a c5 e5                                      strb r2, [r5, #0xa00]
005b8158  01 10 a0 e3                                      mov r1, #1
005b815c  68 30 9d e5                                      ldr r3, [sp, #0x68]
005b8160  1d 5a f5 eb                                      bl #0x30e9dc
005b8164  10 40 84 e2                                      add r4, r4, #0x10
005b8168  07 00 54 e1                                      cmp r4, r7
005b816c  62 fe ff 1a                                      bne #0x5b7afc
005b8170  ff fe ff ea                                      b #0x5b7d74
005b8174  bc 3d 95 e5                                      ldr r3, [r5, #0xdbc]
005b8178  80 00 13 e3                                      tst r3, #0x80
005b817c  7e 01 00 1a                                      bne #0x5b877c
005b8180  00 20 a0 e3                                      mov r2, #0
005b8184  0c 00 98 e5                                      ldr r0, [r8, #0xc]
005b8188  10 2b c5 e5                                      strb r2, [r5, #0xb10]
005b818c  01 10 a0 e3                                      mov r1, #1
005b8190  74 30 9d e5                                      ldr r3, [sp, #0x74]
005b8194  10 5a f5 eb                                      bl #0x30e9dc
005b8198  10 40 84 e2                                      add r4, r4, #0x10
005b819c  07 00 54 e1                                      cmp r4, r7
005b81a0  55 fe ff 1a                                      bne #0x5b7afc
005b81a4  f2 fe ff ea                                      b #0x5b7d74
005b81a8  00 20 a0 e3                                      mov r2, #0
005b81ac  0c 00 98 e5                                      ldr r0, [r8, #0xc]
005b81b0  f0 28 c5 e5                                      strb r2, [r5, #0x8f0]
005b81b4  01 10 a0 e3                                      mov r1, #1
005b81b8  18 30 9d e5                                      ldr r3, [sp, #0x18]
005b81bc  10 40 84 e2                                      add r4, r4, #0x10
005b81c0  05 5a f5 eb                                      bl #0x30e9dc
005b81c4  07 00 54 e1                                      cmp r4, r7
005b81c8  4b fe ff 1a                                      bne #0x5b7afc
005b81cc  e8 fe ff ea                                      b #0x5b7d74
005b81d0  bc 3d 95 e5                                      ldr r3, [r5, #0xdbc]
005b81d4  02 0c 13 e3                                      tst r3, #0x200
005b81d8  79 01 00 1a                                      bne #0x5b87c4
005b81dc  00 20 a0 e3                                      mov r2, #0
005b81e0  0c 00 98 e5                                      ldr r0, [r8, #0xc]
005b81e4  98 2b c5 e5                                      strb r2, [r5, #0xb98]
005b81e8  01 10 a0 e3                                      mov r1, #1
005b81ec  38 30 9d e5                                      ldr r3, [sp, #0x38]
005b81f0  f9 59 f5 eb                                      bl #0x30e9dc
005b81f4  10 40 84 e2                                      add r4, r4, #0x10
005b81f8  07 00 54 e1                                      cmp r4, r7
005b81fc  3e fe ff 1a                                      bne #0x5b7afc
005b8200  db fe ff ea                                      b #0x5b7d74
005b8204  bc 3d 95 e5                                      ldr r3, [r5, #0xdbc]
005b8208  01 0c 13 e3                                      tst r3, #0x100
005b820c  83 01 00 1a                                      bne #0x5b8820
005b8210  00 20 a0 e3                                      mov r2, #0
005b8214  0c 00 98 e5                                      ldr r0, [r8, #0xc]
005b8218  54 2b c5 e5                                      strb r2, [r5, #0xb54]
005b821c  01 10 a0 e3                                      mov r1, #1
005b8220  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
005b8224  ec 59 f5 eb                                      bl #0x30e9dc
005b8228  10 40 84 e2                                      add r4, r4, #0x10
005b822c  07 00 54 e1                                      cmp r4, r7
005b8230  31 fe ff 1a                                      bne #0x5b7afc
005b8234  ce fe ff ea                                      b #0x5b7d74
005b8238  bc 3d 95 e5                                      ldr r3, [r5, #0xdbc]
005b823c  01 0b 13 e3                                      tst r3, #0x400
005b8240  88 01 00 1a                                      bne #0x5b8868
005b8244  00 20 a0 e3                                      mov r2, #0
005b8248  0c 00 98 e5                                      ldr r0, [r8, #0xc]
005b824c  dc 2b c5 e5                                      strb r2, [r5, #0xbdc]
005b8250  01 10 a0 e3                                      mov r1, #1
005b8254  34 30 9d e5                                      ldr r3, [sp, #0x34]
005b8258  df 59 f5 eb                                      bl #0x30e9dc
005b825c  10 40 84 e2                                      add r4, r4, #0x10
005b8260  07 00 54 e1                                      cmp r4, r7
005b8264  24 fe ff 1a                                      bne #0x5b7afc
005b8268  c1 fe ff ea                                      b #0x5b7d74
005b826c  bc 3d 95 e5                                      ldr r3, [r5, #0xdbc]
005b8270  20 00 13 e3                                      tst r3, #0x20
005b8274  92 01 00 1a                                      bne #0x5b88c4
005b8278  00 20 a0 e3                                      mov r2, #0
005b827c  0c 00 98 e5                                      ldr r0, [r8, #0xc]
005b8280  88 2a c5 e5                                      strb r2, [r5, #0xa88]
005b8284  01 10 a0 e3                                      mov r1, #1
005b8288  44 30 9d e5                                      ldr r3, [sp, #0x44]
005b828c  d2 59 f5 eb                                      bl #0x30e9dc
005b8290  10 40 84 e2                                      add r4, r4, #0x10
005b8294  07 00 54 e1                                      cmp r4, r7
005b8298  17 fe ff 1a                                      bne #0x5b7afc
005b829c  b4 fe ff ea                                      b #0x5b7d74
005b82a0  bc 3d 95 e5                                      ldr r3, [r5, #0xdbc]
005b82a4  40 00 13 e3                                      tst r3, #0x40
005b82a8  97 01 00 1a                                      bne #0x5b890c
005b82ac  00 20 a0 e3                                      mov r2, #0
005b82b0  0c 00 98 e5                                      ldr r0, [r8, #0xc]
005b82b4  cc 2a c5 e5                                      strb r2, [r5, #0xacc]
005b82b8  01 10 a0 e3                                      mov r1, #1
005b82bc  40 30 9d e5                                      ldr r3, [sp, #0x40]
005b82c0  c5 59 f5 eb                                      bl #0x30e9dc
005b82c4  10 40 84 e2                                      add r4, r4, #0x10
005b82c8  07 00 54 e1                                      cmp r4, r7
005b82cc  0a fe ff 1a                                      bne #0x5b7afc
005b82d0  a7 fe ff ea                                      b #0x5b7d74
005b82d4  bc 3d 95 e5                                      ldr r3, [r5, #0xdbc]
005b82d8  10 00 13 e3                                      tst r3, #0x10
005b82dc  a3 01 00 1a                                      bne #0x5b8970
005b82e0  00 20 a0 e3                                      mov r2, #0
005b82e4  0c 00 98 e5                                      ldr r0, [r8, #0xc]
005b82e8  44 2a c5 e5                                      strb r2, [r5, #0xa44]
005b82ec  01 10 a0 e3                                      mov r1, #1
005b82f0  48 30 9d e5                                      ldr r3, [sp, #0x48]
005b82f4  b8 59 f5 eb                                      bl #0x30e9dc
005b82f8  10 40 84 e2                                      add r4, r4, #0x10
005b82fc  07 00 54 e1                                      cmp r4, r7
005b8300  fd fd ff 1a                                      bne #0x5b7afc
005b8304  9a fe ff ea                                      b #0x5b7d74
005b8308  bc 3d 95 e5                                      ldr r3, [r5, #0xdbc]
005b830c  02 00 13 e3                                      tst r3, #2
005b8310  3e 00 00 1a                                      bne #0x5b8410
005b8314  00 20 a0 e3                                      mov r2, #0
005b8318  0c 00 98 e5                                      ldr r0, [r8, #0xc]
005b831c  78 29 c5 e5                                      strb r2, [r5, #0x978]
005b8320  01 10 a0 e3                                      mov r1, #1
005b8324  50 30 9d e5                                      ldr r3, [sp, #0x50]
005b8328  ab 59 f5 eb                                      bl #0x30e9dc
005b832c  10 40 84 e2                                      add r4, r4, #0x10
005b8330  07 00 54 e1                                      cmp r4, r7
005b8334  f0 fd ff 1a                                      bne #0x5b7afc
005b8338  8d fe ff ea                                      b #0x5b7d74
005b833c  00 20 a0 e3                                      mov r2, #0
005b8340  0c 00 98 e5                                      ldr r0, [r8, #0xc]
005b8344  ac 28 c5 e5                                      strb r2, [r5, #0x8ac]
005b8348  01 10 a0 e3                                      mov r1, #1
005b834c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
005b8350  10 40 84 e2                                      add r4, r4, #0x10
005b8354  a0 59 f5 eb                                      bl #0x30e9dc
005b8358  07 00 54 e1                                      cmp r4, r7
005b835c  e6 fd ff 1a                                      bne #0x5b7afc
005b8360  83 fe ff ea                                      b #0x5b7d74
005b8364  bc 3d 95 e5                                      ldr r3, [r5, #0xdbc]
005b8368  04 00 13 e3                                      tst r3, #4
005b836c  9d 00 00 1a                                      bne #0x5b85e8
005b8370  00 20 a0 e3                                      mov r2, #0
005b8374  0c 00 98 e5                                      ldr r0, [r8, #0xc]
005b8378  bc 29 c5 e5                                      strb r2, [r5, #0x9bc]
005b837c  01 10 a0 e3                                      mov r1, #1
005b8380  4c 30 9d e5                                      ldr r3, [sp, #0x4c]
005b8384  94 59 f5 eb                                      bl #0x30e9dc
005b8388  10 40 84 e2                                      add r4, r4, #0x10
005b838c  07 00 54 e1                                      cmp r4, r7
005b8390  d9 fd ff 1a                                      bne #0x5b7afc
005b8394  76 fe ff ea                                      b #0x5b7d74
005b8398  bc 3d 95 e5                                      ldr r3, [r5, #0xdbc]
005b839c  01 00 13 e3                                      tst r3, #1
005b83a0  9d 00 00 1a                                      bne #0x5b861c
005b83a4  00 20 a0 e3                                      mov r2, #0
005b83a8  0c 00 98 e5                                      ldr r0, [r8, #0xc]
005b83ac  34 29 c5 e5                                      strb r2, [r5, #0x934]
005b83b0  01 10 a0 e3                                      mov r1, #1
005b83b4  54 30 9d e5                                      ldr r3, [sp, #0x54]
005b83b8  87 59 f5 eb                                      bl #0x30e9dc
005b83bc  10 40 84 e2                                      add r4, r4, #0x10
005b83c0  07 00 54 e1                                      cmp r4, r7
005b83c4  cc fd ff 1a                                      bne #0x5b7afc
005b83c8  69 fe ff ea                                      b #0x5b7d74
005b83cc  00 20 a0 e3                                      mov r2, #0
005b83d0  0c 00 98 e5                                      ldr r0, [r8, #0xc]
005b83d4  01 10 a0 e3                                      mov r1, #1
005b83d8  68 28 c5 e5                                      strb r2, [r5, #0x868]
005b83dc  0b 30 a0 e1                                      mov r3, fp
005b83e0  10 40 84 e2                                      add r4, r4, #0x10
005b83e4  7c 59 f5 eb                                      bl #0x30e9dc
005b83e8  07 00 54 e1                                      cmp r4, r7
005b83ec  c2 fd ff 1a                                      bne #0x5b7afc
005b83f0  5f fe ff ea                                      b #0x5b7d74
005b83f4  0c 00 98 e5                                      ldr r0, [r8, #0xc]
005b83f8  1c 12 95 e5                                      ldr r1, [r5, #0x21c]
005b83fc  10 40 84 e2                                      add r4, r4, #0x10
005b8400  f4 58 f5 eb                                      bl #0x30e7d8
005b8404  07 00 54 e1                                      cmp r4, r7
005b8408  bb fd ff 1a                                      bne #0x5b7afc
005b840c  58 fe ff ea                                      b #0x5b7d74
005b8410  41 3e 8d e2                                      add r3, sp, #0x410
005b8414  03 00 a0 e1                                      mov r0, r3
005b8418  18 10 9d e5                                      ldr r1, [sp, #0x18]
005b841c  0b 20 a0 e1                                      mov r2, fp
005b8420  00 30 8d e5                                      str r3, [sp]
005b8424  5b 99 f6 eb                                      bl #0x35e998
005b8428  00 30 9d e5                                      ldr r3, [sp]
005b842c  f3 af 8d e2                                      add sl, sp, #0x3cc
005b8430  0c 20 9d e5                                      ldr r2, [sp, #0xc]
005b8434  03 10 a0 e1                                      mov r1, r3
005b8438  0a 00 a0 e1                                      mov r0, sl
005b843c  55 99 f6 eb                                      bl #0x35e998
005b8440  0a 10 a0 e1                                      mov r1, sl
005b8444  50 00 9d e5                                      ldr r0, [sp, #0x50]
005b8448  41 20 a0 e3                                      mov r2, #0x41
005b844c  05 59 f5 eb                                      bl #0x30e868
005b8450  bc 3d 95 e5                                      ldr r3, [r5, #0xdbc]
005b8454  00 20 a0 e3                                      mov r2, #0
005b8458  01 10 a0 e3                                      mov r1, #1
005b845c  02 30 c3 e3                                      bic r3, r3, #2
005b8460  bc 3d 85 e5                                      str r3, [r5, #0xdbc]
005b8464  0c 00 98 e5                                      ldr r0, [r8, #0xc]
005b8468  78 29 c5 e5                                      strb r2, [r5, #0x978]
005b846c  50 30 9d e5                                      ldr r3, [sp, #0x50]
005b8470  59 59 f5 eb                                      bl #0x30e9dc
005b8474  ac ff ff ea                                      b #0x5b832c
005b8478  0b 00 a0 e1                                      mov r0, fp
005b847c  68 10 9d e5                                      ldr r1, [sp, #0x68]
005b8480  8e ab f5 eb                                      bl #0x3232c0
005b8484  bc 3d 95 e5                                      ldr r3, [r5, #0xdbc]
005b8488  08 30 c3 e3                                      bic r3, r3, #8
005b848c  bc 3d 85 e5                                      str r3, [r5, #0xdbc]
005b8490  06 30 d8 e5                                      ldrb r3, [r8, #6]
005b8494  08 00 53 e3                                      cmp r3, #8
005b8498  89 fe ff 1a                                      bne #0x5b7ec4
005b849c  45 01 00 ea                                      b #0x5b89b8
005b84a0  58 00 9d e5                                      ldr r0, [sp, #0x58]
005b84a4  18 10 9d e5                                      ldr r1, [sp, #0x18]
005b84a8  0b 20 a0 e1                                      mov r2, fp
005b84ac  39 99 f6 eb                                      bl #0x35e998
005b84b0  0c 20 9d e5                                      ldr r2, [sp, #0xc]
005b84b4  5c 00 9d e5                                      ldr r0, [sp, #0x5c]
005b84b8  58 10 9d e5                                      ldr r1, [sp, #0x58]
005b84bc  35 99 f6 eb                                      bl #0x35e998
005b84c0  5c 00 9d e5                                      ldr r0, [sp, #0x5c]
005b84c4  6c 10 9d e5                                      ldr r1, [sp, #0x6c]
005b84c8  b0 9c f5 eb                                      bl #0x31f790
005b84cc  bc 3d 95 e5                                      ldr r3, [r5, #0xdbc]
005b84d0  00 20 a0 e3                                      mov r2, #0
005b84d4  01 10 a0 e3                                      mov r1, #1
005b84d8  02 39 c3 e3                                      bic r3, r3, #0x8000
005b84dc  bc 3d 85 e5                                      str r3, [r5, #0xdbc]
005b84e0  0c 00 98 e5                                      ldr r0, [r8, #0xc]
005b84e4  30 2d c5 e5                                      strb r2, [r5, #0xd30]
005b84e8  6c 30 9d e5                                      ldr r3, [sp, #0x6c]
005b84ec  3a 59 f5 eb                                      bl #0x30e9dc
005b84f0  b3 fe ff ea                                      b #0x5b7fc4
005b84f4  0c 20 9d e5                                      ldr r2, [sp, #0xc]
005b84f8  60 00 9d e5                                      ldr r0, [sp, #0x60]
005b84fc  0b 10 a0 e1                                      mov r1, fp
005b8500  24 99 f6 eb                                      bl #0x35e998
005b8504  60 00 9d e5                                      ldr r0, [sp, #0x60]
005b8508  28 10 9d e5                                      ldr r1, [sp, #0x28]
005b850c  9f 9c f5 eb                                      bl #0x31f790
005b8510  bc 3d 95 e5                                      ldr r3, [r5, #0xdbc]
005b8514  00 20 a0 e3                                      mov r2, #0
005b8518  01 10 a0 e3                                      mov r1, #1
005b851c  01 39 c3 e3                                      bic r3, r3, #0x4000
005b8520  bc 3d 85 e5                                      str r3, [r5, #0xdbc]
005b8524  0c 00 98 e5                                      ldr r0, [r8, #0xc]
005b8528  ec 2c c5 e5                                      strb r2, [r5, #0xcec]
005b852c  28 30 9d e5                                      ldr r3, [sp, #0x28]
005b8530  29 59 f5 eb                                      bl #0x30e9dc
005b8534  af fe ff ea                                      b #0x5b7ff8
005b8538  18 00 9d e5                                      ldr r0, [sp, #0x18]
005b853c  20 10 9d e5                                      ldr r1, [sp, #0x20]
005b8540  92 9c f5 eb                                      bl #0x31f790
005b8544  bc 3d 95 e5                                      ldr r3, [r5, #0xdbc]
005b8548  00 20 a0 e3                                      mov r2, #0
005b854c  01 10 a0 e3                                      mov r1, #1
005b8550  02 38 c3 e3                                      bic r3, r3, #0x20000
005b8554  bc 3d 85 e5                                      str r3, [r5, #0xdbc]
005b8558  0c 00 98 e5                                      ldr r0, [r8, #0xc]
005b855c  b8 2d c5 e5                                      strb r2, [r5, #0xdb8]
005b8560  20 30 9d e5                                      ldr r3, [sp, #0x20]
005b8564  1c 59 f5 eb                                      bl #0x30e9dc
005b8568  af fe ff ea                                      b #0x5b802c
005b856c  0b 00 a0 e1                                      mov r0, fp
005b8570  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
005b8574  85 9c f5 eb                                      bl #0x31f790
005b8578  bc 3d 95 e5                                      ldr r3, [r5, #0xdbc]
005b857c  00 20 a0 e3                                      mov r2, #0
005b8580  01 10 a0 e3                                      mov r1, #1
005b8584  02 3a c3 e3                                      bic r3, r3, #0x2000
005b8588  bc 3d 85 e5                                      str r3, [r5, #0xdbc]
005b858c  0c 00 98 e5                                      ldr r0, [r8, #0xc]
005b8590  a8 2c c5 e5                                      strb r2, [r5, #0xca8]
005b8594  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
005b8598  0f 59 f5 eb                                      bl #0x30e9dc
005b859c  af fe ff ea                                      b #0x5b8060
005b85a0  00 30 a0 e3                                      mov r3, #0
005b85a4  10 10 9d e5                                      ldr r1, [sp, #0x10]
005b85a8  18 00 9d e5                                      ldr r0, [sp, #0x18]
005b85ac  dc 30 cd e5                                      strb r3, [sp, #0xdc]
005b85b0  42 ab f5 eb                                      bl #0x3232c0
005b85b4  10 00 9d e5                                      ldr r0, [sp, #0x10]
005b85b8  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
005b85bc  73 9c f5 eb                                      bl #0x31f790
005b85c0  bc 3d 95 e5                                      ldr r3, [r5, #0xdbc]
005b85c4  00 20 a0 e3                                      mov r2, #0
005b85c8  01 10 a0 e3                                      mov r1, #1
005b85cc  01 37 c3 e3                                      bic r3, r3, #0x40000
005b85d0  bc 3d 85 e5                                      str r3, [r5, #0xdbc]
005b85d4  0c 00 98 e5                                      ldr r0, [r8, #0xc]
005b85d8  fc 2d c5 e5                                      strb r2, [r5, #0xdfc]
005b85dc  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
005b85e0  fd 58 f5 eb                                      bl #0x30e9dc
005b85e4  aa fe ff ea                                      b #0x5b8094
005b85e8  4c 10 9d e5                                      ldr r1, [sp, #0x4c]
005b85ec  0c 00 9d e5                                      ldr r0, [sp, #0xc]
005b85f0  32 ab f5 eb                                      bl #0x3232c0
005b85f4  bc 3d 95 e5                                      ldr r3, [r5, #0xdbc]
005b85f8  00 20 a0 e3                                      mov r2, #0
005b85fc  01 10 a0 e3                                      mov r1, #1
005b8600  04 30 c3 e3                                      bic r3, r3, #4
005b8604  bc 3d 85 e5                                      str r3, [r5, #0xdbc]
005b8608  0c 00 98 e5                                      ldr r0, [r8, #0xc]
005b860c  bc 29 c5 e5                                      strb r2, [r5, #0x9bc]
005b8610  4c 30 9d e5                                      ldr r3, [sp, #0x4c]
005b8614  f0 58 f5 eb                                      bl #0x30e9dc
005b8618  5a ff ff ea                                      b #0x5b8388
005b861c  45 ae 8d e2                                      add sl, sp, #0x450
005b8620  04 a0 8a e2                                      add sl, sl, #4
005b8624  0c 20 9d e5                                      ldr r2, [sp, #0xc]
005b8628  0a 00 a0 e1                                      mov r0, sl
005b862c  0b 10 a0 e1                                      mov r1, fp
005b8630  d8 98 f6 eb                                      bl #0x35e998
005b8634  0a 10 a0 e1                                      mov r1, sl
005b8638  54 00 9d e5                                      ldr r0, [sp, #0x54]
005b863c  41 20 a0 e3                                      mov r2, #0x41
005b8640  88 58 f5 eb                                      bl #0x30e868
005b8644  bc 3d 95 e5                                      ldr r3, [r5, #0xdbc]
005b8648  00 20 a0 e3                                      mov r2, #0
005b864c  01 10 a0 e3                                      mov r1, #1
005b8650  01 30 c3 e3                                      bic r3, r3, #1
005b8654  bc 3d 85 e5                                      str r3, [r5, #0xdbc]
005b8658  0c 00 98 e5                                      ldr r0, [r8, #0xc]
005b865c  34 29 c5 e5                                      strb r2, [r5, #0x934]
005b8660  54 30 9d e5                                      ldr r3, [sp, #0x54]
005b8664  dc 58 f5 eb                                      bl #0x30e9dc
005b8668  53 ff ff ea                                      b #0x5b83bc
005b866c  0c 00 9d e5                                      ldr r0, [sp, #0xc]
005b8670  30 10 9d e5                                      ldr r1, [sp, #0x30]
005b8674  45 9c f5 eb                                      bl #0x31f790
005b8678  bc 3d 95 e5                                      ldr r3, [r5, #0xdbc]
005b867c  00 20 a0 e3                                      mov r2, #0
005b8680  01 10 a0 e3                                      mov r1, #1
005b8684  01 3a c3 e3                                      bic r3, r3, #0x1000
005b8688  bc 3d 85 e5                                      str r3, [r5, #0xdbc]
005b868c  0c 00 98 e5                                      ldr r0, [r8, #0xc]
005b8690  64 2c c5 e5                                      strb r2, [r5, #0xc64]
005b8694  30 30 9d e5                                      ldr r3, [sp, #0x30]
005b8698  cf 58 f5 eb                                      bl #0x30e9dc
005b869c  89 fe ff ea                                      b #0x5b80c8
005b86a0  24 10 9d e5                                      ldr r1, [sp, #0x24]
005b86a4  18 00 9d e5                                      ldr r0, [sp, #0x18]
005b86a8  04 ab f5 eb                                      bl #0x3232c0
005b86ac  bc 3d 95 e5                                      ldr r3, [r5, #0xdbc]
005b86b0  00 20 a0 e3                                      mov r2, #0
005b86b4  01 10 a0 e3                                      mov r1, #1
005b86b8  01 38 c3 e3                                      bic r3, r3, #0x10000
005b86bc  bc 3d 85 e5                                      str r3, [r5, #0xdbc]
005b86c0  0c 00 98 e5                                      ldr r0, [r8, #0xc]
005b86c4  74 2d c5 e5                                      strb r2, [r5, #0xd74]
005b86c8  24 30 9d e5                                      ldr r3, [sp, #0x24]
005b86cc  c2 58 f5 eb                                      bl #0x30e9dc
005b86d0  89 fe ff ea                                      b #0x5b80fc
005b86d4  1f ae 8d e2                                      add sl, sp, #0x1f0
005b86d8  6b 3f 8d e2                                      add r3, sp, #0x1ac
005b86dc  0a 00 a0 e1                                      mov r0, sl
005b86e0  18 10 9d e5                                      ldr r1, [sp, #0x18]
005b86e4  0b 20 a0 e1                                      mov r2, fp
005b86e8  94 30 8d e5                                      str r3, [sp, #0x94]
005b86ec  00 30 a0 e3                                      mov r3, #0
005b86f0  dc 30 cd e5                                      strb r3, [sp, #0xdc]
005b86f4  a7 98 f6 eb                                      bl #0x35e998
005b86f8  0c 20 9d e5                                      ldr r2, [sp, #0xc]
005b86fc  0a 10 a0 e1                                      mov r1, sl
005b8700  94 00 9d e5                                      ldr r0, [sp, #0x94]
005b8704  a3 98 f6 eb                                      bl #0x35e998
005b8708  10 10 9d e5                                      ldr r1, [sp, #0x10]
005b870c  94 00 9d e5                                      ldr r0, [sp, #0x94]
005b8710  ea aa f5 eb                                      bl #0x3232c0
005b8714  10 00 9d e5                                      ldr r0, [sp, #0x10]
005b8718  70 10 9d e5                                      ldr r1, [sp, #0x70]
005b871c  1b 9c f5 eb                                      bl #0x31f790
005b8720  bc 3d 95 e5                                      ldr r3, [r5, #0xdbc]
005b8724  00 20 a0 e3                                      mov r2, #0
005b8728  01 10 a0 e3                                      mov r1, #1
005b872c  02 3b c3 e3                                      bic r3, r3, #0x800
005b8730  bc 3d 85 e5                                      str r3, [r5, #0xdbc]
005b8734  0c 00 98 e5                                      ldr r0, [r8, #0xc]
005b8738  20 2c c5 e5                                      strb r2, [r5, #0xc20]
005b873c  70 30 9d e5                                      ldr r3, [sp, #0x70]
005b8740  a5 58 f5 eb                                      bl #0x30e9dc
005b8744  79 fe ff ea                                      b #0x5b8130
005b8748  68 10 9d e5                                      ldr r1, [sp, #0x68]
005b874c  0b 00 a0 e1                                      mov r0, fp
005b8750  da aa f5 eb                                      bl #0x3232c0
005b8754  bc 3d 95 e5                                      ldr r3, [r5, #0xdbc]
005b8758  00 20 a0 e3                                      mov r2, #0
005b875c  01 10 a0 e3                                      mov r1, #1
005b8760  08 30 c3 e3                                      bic r3, r3, #8
005b8764  bc 3d 85 e5                                      str r3, [r5, #0xdbc]
005b8768  0c 00 98 e5                                      ldr r0, [r8, #0xc]
005b876c  00 2a c5 e5                                      strb r2, [r5, #0xa00]
005b8770  68 30 9d e5                                      ldr r3, [sp, #0x68]
005b8774  98 58 f5 eb                                      bl #0x30e9dc
005b8778  79 fe ff ea                                      b #0x5b8164
005b877c  00 30 a0 e3                                      mov r3, #0
005b8780  10 10 9d e5                                      ldr r1, [sp, #0x10]
005b8784  0c 00 9d e5                                      ldr r0, [sp, #0xc]
005b8788  dc 30 cd e5                                      strb r3, [sp, #0xdc]
005b878c  cb aa f5 eb                                      bl #0x3232c0
005b8790  10 00 9d e5                                      ldr r0, [sp, #0x10]
005b8794  74 10 9d e5                                      ldr r1, [sp, #0x74]
005b8798  fc 9b f5 eb                                      bl #0x31f790
005b879c  bc 3d 95 e5                                      ldr r3, [r5, #0xdbc]
005b87a0  00 20 a0 e3                                      mov r2, #0
005b87a4  01 10 a0 e3                                      mov r1, #1
005b87a8  80 30 c3 e3                                      bic r3, r3, #0x80
005b87ac  bc 3d 85 e5                                      str r3, [r5, #0xdbc]
005b87b0  0c 00 98 e5                                      ldr r0, [r8, #0xc]
005b87b4  10 2b c5 e5                                      strb r2, [r5, #0xb10]
005b87b8  74 30 9d e5                                      ldr r3, [sp, #0x74]
005b87bc  86 58 f5 eb                                      bl #0x30e9dc
005b87c0  74 fe ff ea                                      b #0x5b8198
005b87c4  9e af 8d e2                                      add sl, sp, #0x278
005b87c8  18 20 9d e5                                      ldr r2, [sp, #0x18]
005b87cc  00 30 a0 e3                                      mov r3, #0
005b87d0  0a 00 a0 e1                                      mov r0, sl
005b87d4  0b 10 a0 e1                                      mov r1, fp
005b87d8  dc 30 cd e5                                      strb r3, [sp, #0xdc]
005b87dc  6d 98 f6 eb                                      bl #0x35e998
005b87e0  10 10 9d e5                                      ldr r1, [sp, #0x10]
005b87e4  0a 00 a0 e1                                      mov r0, sl
005b87e8  b4 aa f5 eb                                      bl #0x3232c0
005b87ec  10 00 9d e5                                      ldr r0, [sp, #0x10]
005b87f0  38 10 9d e5                                      ldr r1, [sp, #0x38]
005b87f4  e5 9b f5 eb                                      bl #0x31f790
005b87f8  bc 3d 95 e5                                      ldr r3, [r5, #0xdbc]
005b87fc  00 20 a0 e3                                      mov r2, #0
005b8800  01 10 a0 e3                                      mov r1, #1
005b8804  02 3c c3 e3                                      bic r3, r3, #0x200
005b8808  bc 3d 85 e5                                      str r3, [r5, #0xdbc]
005b880c  0c 00 98 e5                                      ldr r0, [r8, #0xc]
005b8810  98 2b c5 e5                                      strb r2, [r5, #0xb98]
005b8814  38 30 9d e5                                      ldr r3, [sp, #0x38]
005b8818  6f 58 f5 eb                                      bl #0x30e9dc
005b881c  74 fe ff ea                                      b #0x5b81f4
005b8820  00 30 a0 e3                                      mov r3, #0
005b8824  10 10 9d e5                                      ldr r1, [sp, #0x10]
005b8828  0b 00 a0 e1                                      mov r0, fp
005b882c  dc 30 cd e5                                      strb r3, [sp, #0xdc]
005b8830  a2 aa f5 eb                                      bl #0x3232c0
005b8834  10 00 9d e5                                      ldr r0, [sp, #0x10]
005b8838  3c 10 9d e5                                      ldr r1, [sp, #0x3c]
005b883c  d3 9b f5 eb                                      bl #0x31f790
005b8840  bc 3d 95 e5                                      ldr r3, [r5, #0xdbc]
005b8844  00 20 a0 e3                                      mov r2, #0
005b8848  01 10 a0 e3                                      mov r1, #1
005b884c  01 3c c3 e3                                      bic r3, r3, #0x100
005b8850  bc 3d 85 e5                                      str r3, [r5, #0xdbc]
005b8854  0c 00 98 e5                                      ldr r0, [r8, #0xc]
005b8858  54 2b c5 e5                                      strb r2, [r5, #0xb54]
005b885c  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
005b8860  5d 58 f5 eb                                      bl #0x30e9dc
005b8864  6f fe ff ea                                      b #0x5b8228
005b8868  8d af 8d e2                                      add sl, sp, #0x234
005b886c  0c 20 9d e5                                      ldr r2, [sp, #0xc]
005b8870  00 30 a0 e3                                      mov r3, #0
005b8874  0a 00 a0 e1                                      mov r0, sl
005b8878  0b 10 a0 e1                                      mov r1, fp
005b887c  dc 30 cd e5                                      strb r3, [sp, #0xdc]
005b8880  44 98 f6 eb                                      bl #0x35e998
005b8884  10 10 9d e5                                      ldr r1, [sp, #0x10]
005b8888  0a 00 a0 e1                                      mov r0, sl
005b888c  8b aa f5 eb                                      bl #0x3232c0
005b8890  10 00 9d e5                                      ldr r0, [sp, #0x10]
005b8894  34 10 9d e5                                      ldr r1, [sp, #0x34]
005b8898  bc 9b f5 eb                                      bl #0x31f790
005b889c  bc 3d 95 e5                                      ldr r3, [r5, #0xdbc]
005b88a0  00 20 a0 e3                                      mov r2, #0
005b88a4  01 10 a0 e3                                      mov r1, #1
005b88a8  01 3b c3 e3                                      bic r3, r3, #0x400
005b88ac  bc 3d 85 e5                                      str r3, [r5, #0xdbc]
005b88b0  0c 00 98 e5                                      ldr r0, [r8, #0xc]
005b88b4  dc 2b c5 e5                                      strb r2, [r5, #0xbdc]
005b88b8  34 30 9d e5                                      ldr r3, [sp, #0x34]
005b88bc  46 58 f5 eb                                      bl #0x30e9dc
005b88c0  65 fe ff ea                                      b #0x5b825c
005b88c4  d1 af 8d e2                                      add sl, sp, #0x344
005b88c8  0c 20 9d e5                                      ldr r2, [sp, #0xc]
005b88cc  0a 00 a0 e1                                      mov r0, sl
005b88d0  0b 10 a0 e1                                      mov r1, fp
005b88d4  2f 98 f6 eb                                      bl #0x35e998
005b88d8  44 10 9d e5                                      ldr r1, [sp, #0x44]
005b88dc  0a 00 a0 e1                                      mov r0, sl
005b88e0  76 aa f5 eb                                      bl #0x3232c0
005b88e4  bc 3d 95 e5                                      ldr r3, [r5, #0xdbc]
005b88e8  00 20 a0 e3                                      mov r2, #0
005b88ec  01 10 a0 e3                                      mov r1, #1
005b88f0  20 30 c3 e3                                      bic r3, r3, #0x20
005b88f4  bc 3d 85 e5                                      str r3, [r5, #0xdbc]
005b88f8  0c 00 98 e5                                      ldr r0, [r8, #0xc]
005b88fc  88 2a c5 e5                                      strb r2, [r5, #0xa88]
005b8900  44 30 9d e5                                      ldr r3, [sp, #0x44]
005b8904  34 58 f5 eb                                      bl #0x30e9dc
005b8908  60 fe ff ea                                      b #0x5b8290
005b890c  03 3c 8d e2                                      add r3, sp, #0x300
005b8910  03 00 a0 e1                                      mov r0, r3
005b8914  0b 10 a0 e1                                      mov r1, fp
005b8918  0b 20 a0 e1                                      mov r2, fp
005b891c  00 30 8d e5                                      str r3, [sp]
005b8920  1c 98 f6 eb                                      bl #0x35e998
005b8924  00 30 9d e5                                      ldr r3, [sp]
005b8928  af af 8d e2                                      add sl, sp, #0x2bc
005b892c  0c 20 9d e5                                      ldr r2, [sp, #0xc]
005b8930  03 10 a0 e1                                      mov r1, r3
005b8934  0a 00 a0 e1                                      mov r0, sl
005b8938  16 98 f6 eb                                      bl #0x35e998
005b893c  40 10 9d e5                                      ldr r1, [sp, #0x40]
005b8940  0a 00 a0 e1                                      mov r0, sl
005b8944  5d aa f5 eb                                      bl #0x3232c0
005b8948  bc 3d 95 e5                                      ldr r3, [r5, #0xdbc]
005b894c  00 20 a0 e3                                      mov r2, #0
005b8950  01 10 a0 e3                                      mov r1, #1
005b8954  40 30 c3 e3                                      bic r3, r3, #0x40
005b8958  bc 3d 85 e5                                      str r3, [r5, #0xdbc]
005b895c  0c 00 98 e5                                      ldr r0, [r8, #0xc]
005b8960  cc 2a c5 e5                                      strb r2, [r5, #0xacc]
005b8964  40 30 9d e5                                      ldr r3, [sp, #0x40]
005b8968  1b 58 f5 eb                                      bl #0x30e9dc
005b896c  54 fe ff ea                                      b #0x5b82c4
005b8970  e2 af 8d e2                                      add sl, sp, #0x388
005b8974  18 20 9d e5                                      ldr r2, [sp, #0x18]
005b8978  0a 00 a0 e1                                      mov r0, sl
005b897c  0b 10 a0 e1                                      mov r1, fp
005b8980  04 98 f6 eb                                      bl #0x35e998
005b8984  48 10 9d e5                                      ldr r1, [sp, #0x48]
005b8988  0a 00 a0 e1                                      mov r0, sl
005b898c  4b aa f5 eb                                      bl #0x3232c0
005b8990  bc 3d 95 e5                                      ldr r3, [r5, #0xdbc]
005b8994  00 20 a0 e3                                      mov r2, #0
005b8998  01 10 a0 e3                                      mov r1, #1
005b899c  10 30 c3 e3                                      bic r3, r3, #0x10
005b89a0  bc 3d 85 e5                                      str r3, [r5, #0xdbc]
005b89a4  0c 00 98 e5                                      ldr r0, [r8, #0xc]
005b89a8  44 2a c5 e5                                      strb r2, [r5, #0xa44]
005b89ac  48 30 9d e5                                      ldr r3, [sp, #0x48]
005b89b0  09 58 f5 eb                                      bl #0x30e9dc
005b89b4  4f fe ff ea                                      b #0x5b82f8
005b89b8  7c 20 9d e5                                      ldr r2, [sp, #0x7c]
005b89bc  0c 00 98 e5                                      ldr r0, [r8, #0xc]
005b89c0  01 10 a0 e3                                      mov r1, #1
005b89c4  00 c0 92 e5                                      ldr ip, [r2]
005b89c8  80 20 9d e5                                      ldr r2, [sp, #0x80]
005b89cc  10 40 84 e2                                      add r4, r4, #0x10
005b89d0  00 30 92 e5                                      ldr r3, [r2]
005b89d4  88 20 9d e5                                      ldr r2, [sp, #0x88]
005b89d8  00 e0 92 e5                                      ldr lr, [r2]
005b89dc  14 20 9d e5                                      ldr r2, [sp, #0x14]
005b89e0  00 80 92 e5                                      ldr r8, [r2]
005b89e4  8c 20 9d e5                                      ldr r2, [sp, #0x8c]
005b89e8  9c c4 8d e5                                      str ip, [sp, #0x49c]
005b89ec  98 84 8d e5                                      str r8, [sp, #0x498]
005b89f0  a0 34 8d e5                                      str r3, [sp, #0x4a0]
005b89f4  a4 e4 8d e5                                      str lr, [sp, #0x4a4]
005b89f8  e8 57 f5 eb                                      bl #0x30e9a0
005b89fc  07 00 54 e1                                      cmp r4, r7
005b8a00  3d fc ff 1a                                      bne #0x5b7afc
005b8a04  da fc ff ea                                      b #0x5b7d74
005b8a08  02 00 60 e0                                      rsb r0, r0, r2
005b8a0c  00 30 8d e5                                      str r3, [sp]
005b8a10  d3 57 f5 eb                                      bl #0x30e964
005b8a14  00 30 9d e5                                      ldr r3, [sp]
005b8a18  9c 00 8d e5                                      str r0, [sp, #0x9c]
005b8a1c  03 00 6a e0                                      rsb r0, sl, r3
005b8a20  cf 57 f5 eb                                      bl #0x30e964
005b8a24  ca fc ff ea                                      b #0x5b7d54
005b8a28  03 00 a0 e1                                      mov r0, r3
005b8a2c  08 10 8d e5                                      str r1, [sp, #8]
005b8a30  04 20 8d e5                                      str r2, [sp, #4]
005b8a34  00 30 8d e5                                      str r3, [sp]
005b8a38  c9 57 f5 eb                                      bl #0x30e964
005b8a3c  9c 00 8d e5                                      str r0, [sp, #0x9c]
005b8a40  0a 00 a0 e1                                      mov r0, sl
005b8a44  c6 57 f5 eb                                      bl #0x30e964
005b8a48  04 20 9d e5                                      ldr r2, [sp, #4]
005b8a4c  00 30 9d e5                                      ldr r3, [sp]
005b8a50  a0 00 8d e5                                      str r0, [sp, #0xa0]
005b8a54  10 40 84 e2                                      add r4, r4, #0x10
005b8a58  02 00 63 e0                                      rsb r0, r3, r2
005b8a5c  c0 57 f5 eb                                      bl #0x30e964
005b8a60  08 10 9d e5                                      ldr r1, [sp, #8]
005b8a64  a4 00 8d e5                                      str r0, [sp, #0xa4]
005b8a68  01 00 6a e0                                      rsb r0, sl, r1
005b8a6c  bc 57 f5 eb                                      bl #0x30e964
005b8a70  a8 00 8d e5                                      str r0, [sp, #0xa8]
005b8a74  0c 00 98 e5                                      ldr r0, [r8, #0xc]
005b8a78  01 10 a0 e3                                      mov r1, #1
005b8a7c  10 20 9d e5                                      ldr r2, [sp, #0x10]
005b8a80  c6 57 f5 eb                                      bl #0x30e9a0
005b8a84  07 00 54 e1                                      cmp r4, r7
005b8a88  1b fc ff 1a                                      bne #0x5b7afc
005b8a8c  b8 fc ff ea                                      b #0x5b7d74
005b8a90  0c 00 98 e5                                      ldr r0, [r8, #0xc]
005b8a94  01 10 a0 e3                                      mov r1, #1
005b8a98  64 20 9d e5                                      ldr r2, [sp, #0x64]
005b8a9c  68 57 f5 eb                                      bl #0x30e844
005b8aa0  b0 fc ff ea                                      b #0x5b7d68
005b8aa4  0e 49 01 eb                                      bl #0x60aee4
005b8aa8  0c 56 f5 eb                                      bl #0x30e2e0
005b8aac  11 13 a0 e3                                      mov r1, #0x44000000
005b8ab0  7a 18 81 e2                                      add r1, r1, #0x7a0000
005b8ab4  76 58 f5 eb                                      bl #0x30ec94
005b8ab8  0c 80 98 e5                                      ldr r8, [r8, #0xc]
005b8abc  00 10 a0 e1                                      mov r1, r0
005b8ac0  08 00 a0 e1                                      mov r0, r8
005b8ac4  43 57 f5 eb                                      bl #0x30e7d8
005b8ac8  a6 fc ff ea                                      b #0x5b7d68

; FUNCTION 0x005b8acc, declared_size=192, range_size=192, mode=arm
; class-group: glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>
; alias: _ZN6glitch5video21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEE39commitCurrentMaterialIndirectParametersEhPKNS0_14CVertexStreamsEPKh
; demangled: glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>::commitCurrentMaterialIndirectParameters(unsigned char, glitch::video::CVertexStreams const*, unsigned char const*)
; decoder-mode: arm
005b8acc  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
005b8ad0  ec c0 90 e5                                      ldr ip, [r0, #0xec]
005b8ad4  f8 60 d0 e5                                      ldrb r6, [r0, #0xf8]
005b8ad8  03 a0 a0 e1                                      mov sl, r3
005b8adc  04 e0 9c e5                                      ldr lr, [ip, #4]
005b8ae0  0c 30 a0 e3                                      mov r3, #0xc
005b8ae4  02 80 a0 e1                                      mov r8, r2
005b8ae8  18 e0 9e e5                                      ldr lr, [lr, #0x18]
005b8aec  0c 20 a0 e1                                      mov r2, ip
005b8af0  34 c0 a0 e3                                      mov ip, #0x34
005b8af4  93 e6 2e e0                                      mla lr, r3, r6, lr
005b8af8  f4 40 90 e5                                      ldr r4, [r0, #0xf4]
005b8afc  08 30 9e e5                                      ldr r3, [lr, #8]
005b8b00  0c d0 4d e2                                      sub sp, sp, #0xc
005b8b04  00 50 a0 e1                                      mov r5, r0
005b8b08  9c 31 2c e0                                      mla ip, ip, r1, r3
005b8b0c  04 10 a0 e1                                      mov r1, r4
005b8b10  28 60 9c e5                                      ldr r6, [ip, #0x28]
005b8b14  bc 32 dc e1                                      ldrh r3, [ip, #0x2c]
005b8b18  be 72 dc e1                                      ldrh r7, [ip, #0x2e]
005b8b1c  03 31 86 e0                                      add r3, r6, r3, lsl #2
005b8b20  07 71 83 e0                                      add r7, r3, r7, lsl #2
005b8b24  00 70 8d e5                                      str r7, [sp]
005b8b28  9c f0 ff eb                                      bl #0x5b4da0
005b8b2c  b6 03 d4 e1                                      ldrh r0, [r4, #0x36]
005b8b30  be 12 d4 e1                                      ldrh r1, [r4, #0x2e]
005b8b34  b4 23 d4 e1                                      ldrh r2, [r4, #0x34]
005b8b38  bc 32 d4 e1                                      ldrh r3, [r4, #0x2c]
005b8b3c  01 10 80 e0                                      add r1, r0, r1
005b8b40  71 10 ff e6                                      uxth r1, r1
005b8b44  01 10 62 e0                                      rsb r1, r2, r1
005b8b48  01 10 63 e0                                      rsb r1, r3, r1
005b8b4c  71 10 ff e6                                      uxth r1, r1
005b8b50  e4 20 95 e5                                      ldr r2, [r5, #0xe4]
005b8b54  07 30 a0 e1                                      mov r3, r7
005b8b58  01 61 86 e0                                      add r6, r6, r1, lsl #2
005b8b5c  05 00 a0 e1                                      mov r0, r5
005b8b60  04 10 a0 e1                                      mov r1, r4
005b8b64  00 60 8d e5                                      str r6, [sp]
005b8b68  0f e9 ff eb                                      bl #0x5b2fac
005b8b6c  05 00 a0 e1                                      mov r0, r5
005b8b70  04 10 a0 e1                                      mov r1, r4
005b8b74  08 20 a0 e1                                      mov r2, r8
005b8b78  0a 30 a0 e1                                      mov r3, sl
005b8b7c  4d fb ff eb                                      bl #0x5b78b8
005b8b80  00 00 a0 e3                                      mov r0, #0
005b8b84  0c d0 8d e2                                      add sp, sp, #0xc
005b8b88  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}

; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005aefa4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::COpenGLES2Driver
; alias: _ZNK6glitch5video16COpenGLES2Driver13getDriverTypeEv
; demangled: glitch::video::COpenGLES2Driver::getDriverType() const
; decoder-mode: arm
005aefa4  08 00 a0 e3                                      mov r0, #8
005aefa8  1e ff 2f e1                                      bx lr

; FUNCTION 0x005aefac, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::COpenGLES2Driver
; alias: _ZN6glitch5video16COpenGLES2Driver15swapBuffersImplEi
; demangled: glitch::video::COpenGLES2Driver::swapBuffersImpl(int)
; decoder-mode: arm
005aefac  00 00 a0 e3                                      mov r0, #0
005aefb0  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b3774, declared_size=60, range_size=60, mode=arm
; class-group: glitch::video::COpenGLES2Driver
; alias: _ZN6glitch5video16COpenGLES2DriverD1Ev
; demangled: glitch::video::COpenGLES2Driver::~COpenGLES2Driver()
; decoder-mode: arm
005b3774  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
005b3778  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
005b377c  10 40 2d e9                                      push {r4, lr}
005b3780  03 30 8f e0                                      add r3, pc, r3
005b3784  02 20 93 e7                                      ldr r2, [r3, r2]
005b3788  00 40 a0 e1                                      mov r4, r0
005b378c  08 20 82 e2                                      add r2, r2, #8
005b3790  00 20 80 e5                                      str r2, [r0]
005b3794  11 ea ff eb                                      bl #0x5adfe0
005b3798  04 00 a0 e1                                      mov r0, r4
005b379c  e7 ff ff eb                                      bl #0x5b3740
005b37a0  04 00 a0 e1                                      mov r0, r4
005b37a4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
005b37a8  10 13 3e 00 6c 2e 00 00                          .byte 0x10, 0x13, 0x3e, 0x00, 0x6c, 0x2e, 0x00, 0x00

; FUNCTION 0x005b37b0, declared_size=28, range_size=28, mode=arm
; class-group: glitch::video::COpenGLES2Driver
; alias: _ZN6glitch5video16COpenGLES2DriverD0Ev
; demangled: glitch::video::COpenGLES2Driver::~COpenGLES2Driver()
; decoder-mode: arm
005b37b0  10 40 2d e9                                      push {r4, lr}
005b37b4  00 40 a0 e1                                      mov r4, r0
005b37b8  ed ff ff eb                                      bl #0x5b3774
005b37bc  04 00 a0 e1                                      mov r0, r4
005b37c0  ba 6a f5 eb                                      bl #0x30e2b0
005b37c4  04 00 a0 e1                                      mov r0, r4
005b37c8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005b37cc, declared_size=60, range_size=60, mode=arm
; class-group: glitch::video::COpenGLES2Driver
; alias: _ZN6glitch5video16COpenGLES2DriverD2Ev
; demangled: glitch::video::COpenGLES2Driver::~COpenGLES2Driver()
; decoder-mode: arm
005b37cc  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
005b37d0  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
005b37d4  10 40 2d e9                                      push {r4, lr}
005b37d8  03 30 8f e0                                      add r3, pc, r3
005b37dc  02 20 93 e7                                      ldr r2, [r3, r2]
005b37e0  00 40 a0 e1                                      mov r4, r0
005b37e4  08 20 82 e2                                      add r2, r2, #8
005b37e8  00 20 80 e5                                      str r2, [r0]
005b37ec  fb e9 ff eb                                      bl #0x5adfe0
005b37f0  04 00 a0 e1                                      mov r0, r4
005b37f4  d1 ff ff eb                                      bl #0x5b3740
005b37f8  04 00 a0 e1                                      mov r0, r4
005b37fc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
005b3800  b8 12 3e 00 6c 2e 00 00                          .byte 0xb8, 0x12, 0x3e, 0x00, 0x6c, 0x2e, 0x00, 0x00

; FUNCTION 0x005b5d78, declared_size=52, range_size=52, mode=arm
; class-group: glitch::video::COpenGLES2Driver
; alias: _ZN6glitch5video16COpenGLES2DriverC1EPNS_7IDeviceE
; demangled: glitch::video::COpenGLES2Driver::COpenGLES2Driver(glitch::IDevice*)
; decoder-mode: arm
005b5d78  70 40 2d e9                                      push {r4, r5, r6, lr}
005b5d7c  20 40 9f e5                                      ldr r4, [pc, #0x20]
005b5d80  00 50 a0 e1                                      mov r5, r0
005b5d84  ad ff ff eb                                      bl #0x5b5c40
005b5d88  18 30 9f e5                                      ldr r3, [pc, #0x18]
005b5d8c  04 40 8f e0                                      add r4, pc, r4
005b5d90  05 00 a0 e1                                      mov r0, r5
005b5d94  03 30 94 e7                                      ldr r3, [r4, r3]
005b5d98  08 30 83 e2                                      add r3, r3, #8
005b5d9c  00 30 85 e5                                      str r3, [r5]
005b5da0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005b5da4  04 ed 3d 00 6c 2e 00 00                          .byte 0x04, 0xed, 0x3d, 0x00, 0x6c, 0x2e, 0x00, 0x00

; FUNCTION 0x005b5e00, declared_size=52, range_size=52, mode=arm
; class-group: glitch::video::COpenGLES2Driver
; alias: _ZN6glitch5video16COpenGLES2DriverC2EPNS_7IDeviceE
; demangled: glitch::video::COpenGLES2Driver::COpenGLES2Driver(glitch::IDevice*)
; decoder-mode: arm
005b5e00  70 40 2d e9                                      push {r4, r5, r6, lr}
005b5e04  20 40 9f e5                                      ldr r4, [pc, #0x20]
005b5e08  00 50 a0 e1                                      mov r5, r0
005b5e0c  8b ff ff eb                                      bl #0x5b5c40
005b5e10  18 30 9f e5                                      ldr r3, [pc, #0x18]
005b5e14  04 40 8f e0                                      add r4, pc, r4
005b5e18  05 00 a0 e1                                      mov r0, r5
005b5e1c  03 30 94 e7                                      ldr r3, [r4, r3]
005b5e20  08 30 83 e2                                      add r3, r3, #8
005b5e24  00 30 85 e5                                      str r3, [r5]
005b5e28  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005b5e2c  7c ec 3d 00 6c 2e 00 00                          .byte 0x7c, 0xec, 0x3d, 0x00, 0x6c, 0x2e, 0x00, 0x00

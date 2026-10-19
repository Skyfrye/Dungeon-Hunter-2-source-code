; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005b8da4, declared_size=24, range_size=24, mode=arm
; class-group: glitch::video::CNullDriver::CTexture
; alias: _ZN6glitch5video11CNullDriver8CTexture8bindImplEb
; demangled: glitch::video::CNullDriver::CTexture::bindImpl(bool)
; decoder-mode: arm
005b8da4  b0 24 d0 e1                                      ldrh r2, [r0, #0x40]
005b8da8  00 30 a0 e1                                      mov r3, r0
005b8dac  00 00 a0 e3                                      mov r0, #0
005b8db0  03 20 c2 e3                                      bic r2, r2, #3
005b8db4  b0 24 c3 e1                                      strh r2, [r3, #0x40]
005b8db8  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b8dbc, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::CNullDriver::CTexture
; alias: _ZN6glitch5video11CNullDriver8CTexture10unbindImplEv
; demangled: glitch::video::CNullDriver::CTexture::unbindImpl()
; decoder-mode: arm
005b8dbc  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b8dc0, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CNullDriver::CTexture
; alias: _ZN6glitch5video11CNullDriver8CTexture7mapImplEhNS0_23E_TEXTURE_CUBE_MAP_FACEEh
; demangled: glitch::video::CNullDriver::CTexture::mapImpl(unsigned char, glitch::video::E_TEXTURE_CUBE_MAP_FACE, unsigned char)
; decoder-mode: arm
005b8dc0  00 00 a0 e3                                      mov r0, #0
005b8dc4  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b8dc8, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::CNullDriver::CTexture
; alias: _ZNK6glitch5video11CNullDriver8CTexture9unmapImplEv
; demangled: glitch::video::CNullDriver::CTexture::unmapImpl() const
; decoder-mode: arm
005b8dc8  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b8dcc, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CNullDriver::CTexture
; alias: _ZNK6glitch5video11CNullDriver8CTexture12getMappedPtrEv
; demangled: glitch::video::CNullDriver::CTexture::getMappedPtr() const
; decoder-mode: arm
005b8dcc  00 00 a0 e3                                      mov r0, #0
005b8dd0  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b8dd4, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::CNullDriver::CTexture
; alias: _ZN6glitch5video11CNullDriver8CTexture19generateMipmapsImplEv
; demangled: glitch::video::CNullDriver::CTexture::generateMipmapsImpl()
; decoder-mode: arm
005b8dd4  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b91bc, declared_size=52, range_size=52, mode=arm
; class-group: glitch::video::CNullDriver::CTexture
; alias: _ZN6glitch5video11CNullDriver8CTextureD1Ev
; demangled: glitch::video::CNullDriver::CTexture::~CTexture()
; decoder-mode: arm
005b91bc  24 30 9f e5                                      ldr r3, [pc, #0x24]
005b91c0  24 20 9f e5                                      ldr r2, [pc, #0x24]
005b91c4  10 40 2d e9                                      push {r4, lr}
005b91c8  03 30 8f e0                                      add r3, pc, r3
005b91cc  02 20 93 e7                                      ldr r2, [r3, r2]
005b91d0  00 40 a0 e1                                      mov r4, r0
005b91d4  08 20 82 e2                                      add r2, r2, #8
005b91d8  00 20 80 e5                                      str r2, [r0]
005b91dc  6d 14 01 eb                                      bl #0x5fe398
005b91e0  04 00 a0 e1                                      mov r0, r4
005b91e4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
005b91e8  c8 b8 3d 00 70 21 00 00                          .byte 0xc8, 0xb8, 0x3d, 0x00, 0x70, 0x21, 0x00, 0x00

; FUNCTION 0x005b9558, declared_size=52, range_size=52, mode=arm
; class-group: glitch::video::CNullDriver::CTexture
; alias: _ZN6glitch5video11CNullDriver8CTextureC1EPKcPS1_RKNS0_12STextureDescE
; demangled: glitch::video::CNullDriver::CTexture::CTexture(char const*, glitch::video::CNullDriver*, glitch::video::STextureDesc const&)
; decoder-mode: arm
005b9558  70 40 2d e9                                      push {r4, r5, r6, lr}
005b955c  20 40 9f e5                                      ldr r4, [pc, #0x20]
005b9560  00 50 a0 e1                                      mov r5, r0
005b9564  5d 14 01 eb                                      bl #0x5fe6e0
005b9568  18 30 9f e5                                      ldr r3, [pc, #0x18]
005b956c  04 40 8f e0                                      add r4, pc, r4
005b9570  05 00 a0 e1                                      mov r0, r5
005b9574  03 30 94 e7                                      ldr r3, [r4, r3]
005b9578  08 30 83 e2                                      add r3, r3, #8
005b957c  00 30 85 e5                                      str r3, [r5]
005b9580  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005b9584  24 b5 3d 00 70 21 00 00                          .byte 0x24, 0xb5, 0x3d, 0x00, 0x70, 0x21, 0x00, 0x00

; FUNCTION 0x005b95dc, declared_size=52, range_size=52, mode=arm
; class-group: glitch::video::CNullDriver::CTexture
; alias: _ZN6glitch5video11CNullDriver8CTextureC2EPKcPS1_RKNS0_12STextureDescE
; demangled: glitch::video::CNullDriver::CTexture::CTexture(char const*, glitch::video::CNullDriver*, glitch::video::STextureDesc const&)
; decoder-mode: arm
005b95dc  70 40 2d e9                                      push {r4, r5, r6, lr}
005b95e0  20 40 9f e5                                      ldr r4, [pc, #0x20]
005b95e4  00 50 a0 e1                                      mov r5, r0
005b95e8  3c 14 01 eb                                      bl #0x5fe6e0
005b95ec  18 30 9f e5                                      ldr r3, [pc, #0x18]
005b95f0  04 40 8f e0                                      add r4, pc, r4
005b95f4  05 00 a0 e1                                      mov r0, r5
005b95f8  03 30 94 e7                                      ldr r3, [r4, r3]
005b95fc  08 30 83 e2                                      add r3, r3, #8
005b9600  00 30 85 e5                                      str r3, [r5]
005b9604  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005b9608  a0 b4 3d 00 70 21 00 00                          .byte 0xa0, 0xb4, 0x3d, 0x00, 0x70, 0x21, 0x00, 0x00

; FUNCTION 0x005b9728, declared_size=60, range_size=60, mode=arm
; class-group: glitch::video::CNullDriver::CTexture
; alias: _ZN6glitch5video11CNullDriver8CTextureD0Ev
; demangled: glitch::video::CNullDriver::CTexture::~CTexture()
; decoder-mode: arm
005b9728  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
005b972c  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
005b9730  10 40 2d e9                                      push {r4, lr}
005b9734  03 30 8f e0                                      add r3, pc, r3
005b9738  02 20 93 e7                                      ldr r2, [r3, r2]
005b973c  00 40 a0 e1                                      mov r4, r0
005b9740  08 20 82 e2                                      add r2, r2, #8
005b9744  00 20 80 e5                                      str r2, [r0]
005b9748  12 13 01 eb                                      bl #0x5fe398
005b974c  04 00 a0 e1                                      mov r0, r4
005b9750  d6 52 f5 eb                                      bl #0x30e2b0
005b9754  04 00 a0 e1                                      mov r0, r4
005b9758  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
005b975c  5c b3 3d 00 70 21 00 00                          .byte 0x5c, 0xb3, 0x3d, 0x00, 0x70, 0x21, 0x00, 0x00

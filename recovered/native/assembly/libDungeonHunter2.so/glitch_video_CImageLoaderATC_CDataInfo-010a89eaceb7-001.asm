; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00602ca4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CImageLoaderATC::CDataInfo
; alias: _ZNK6glitch5video15CImageLoaderATC9CDataInfo15getFileDataSizeEv
; demangled: glitch::video::CImageLoaderATC::CDataInfo::getFileDataSize() const
; decoder-mode: arm
00602ca4  0c 00 90 e5                                      ldr r0, [r0, #0xc]
00602ca8  1e ff 2f e1                                      bx lr

; FUNCTION 0x00602cac, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CImageLoaderATC::CDataInfo
; alias: _ZNK6glitch5video15CImageLoaderATC9CDataInfo12getFilePitchEh
; demangled: glitch::video::CImageLoaderATC::CDataInfo::getFilePitch(unsigned char) const
; decoder-mode: arm
00602cac  00 00 a0 e3                                      mov r0, #0
00602cb0  1e ff 2f e1                                      bx lr

; FUNCTION 0x00602cb4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CImageLoaderATC::CDataInfo
; alias: _ZNK6glitch5video15CImageLoaderATC9CDataInfo14isLittleEndianEv
; demangled: glitch::video::CImageLoaderATC::CDataInfo::isLittleEndian() const
; decoder-mode: arm
00602cb4  01 00 a0 e3                                      mov r0, #1
00602cb8  1e ff 2f e1                                      bx lr

; FUNCTION 0x00602cbc, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CImageLoaderATC::CDataInfo
; alias: _ZNK6glitch5video15CImageLoaderATC9CDataInfo9needsFlipEv
; demangled: glitch::video::CImageLoaderATC::CDataInfo::needsFlip() const
; decoder-mode: arm
00602cbc  00 00 a0 e3                                      mov r0, #0
00602cc0  1e ff 2f e1                                      bx lr

; FUNCTION 0x00602e00, declared_size=52, range_size=52, mode=arm
; class-group: glitch::video::CImageLoaderATC::CDataInfo
; alias: _ZN6glitch5video15CImageLoaderATC9CDataInfoD1Ev
; demangled: glitch::video::CImageLoaderATC::CDataInfo::~CDataInfo()
; decoder-mode: arm
00602e00  24 30 9f e5                                      ldr r3, [pc, #0x24]
00602e04  24 20 9f e5                                      ldr r2, [pc, #0x24]
00602e08  10 40 2d e9                                      push {r4, lr}
00602e0c  03 30 8f e0                                      add r3, pc, r3
00602e10  02 20 93 e7                                      ldr r2, [r3, r2]
00602e14  00 40 a0 e1                                      mov r4, r0
00602e18  08 20 82 e2                                      add r2, r2, #8
00602e1c  00 20 80 e5                                      str r2, [r0]
00602e20  09 12 00 eb                                      bl #0x60764c
00602e24  04 00 a0 e1                                      mov r0, r4
00602e28  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00602e2c  84 1c 39 00 b4 35 00 00                          .byte 0x84, 0x1c, 0x39, 0x00, 0xb4, 0x35, 0x00, 0x00

; FUNCTION 0x006032a0, declared_size=60, range_size=60, mode=arm
; class-group: glitch::video::CImageLoaderATC::CDataInfo
; alias: _ZN6glitch5video15CImageLoaderATC9CDataInfoD0Ev
; demangled: glitch::video::CImageLoaderATC::CDataInfo::~CDataInfo()
; decoder-mode: arm
006032a0  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
006032a4  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
006032a8  10 40 2d e9                                      push {r4, lr}
006032ac  03 30 8f e0                                      add r3, pc, r3
006032b0  02 20 93 e7                                      ldr r2, [r3, r2]
006032b4  00 40 a0 e1                                      mov r4, r0
006032b8  08 20 82 e2                                      add r2, r2, #8
006032bc  00 20 80 e5                                      str r2, [r0]
006032c0  e1 10 00 eb                                      bl #0x60764c
006032c4  04 00 a0 e1                                      mov r0, r4
006032c8  f8 2b f4 eb                                      bl #0x30e2b0
006032cc  04 00 a0 e1                                      mov r0, r4
006032d0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006032d4  e4 17 39 00 b4 35 00 00                          .byte 0xe4, 0x17, 0x39, 0x00, 0xb4, 0x35, 0x00, 0x00

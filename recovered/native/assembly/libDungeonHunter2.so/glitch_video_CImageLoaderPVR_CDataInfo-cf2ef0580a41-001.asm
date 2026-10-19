; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00605720, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CImageLoaderPVR::CDataInfo
; alias: _ZNK6glitch5video15CImageLoaderPVR9CDataInfo15getFileDataSizeEv
; demangled: glitch::video::CImageLoaderPVR::CDataInfo::getFileDataSize() const
; decoder-mode: arm
00605720  0c 00 90 e5                                      ldr r0, [r0, #0xc]
00605724  1e ff 2f e1                                      bx lr

; FUNCTION 0x00605728, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CImageLoaderPVR::CDataInfo
; alias: _ZNK6glitch5video15CImageLoaderPVR9CDataInfo12getFilePitchEh
; demangled: glitch::video::CImageLoaderPVR::CDataInfo::getFilePitch(unsigned char) const
; decoder-mode: arm
00605728  00 00 a0 e3                                      mov r0, #0
0060572c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00605730, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CImageLoaderPVR::CDataInfo
; alias: _ZNK6glitch5video15CImageLoaderPVR9CDataInfo14isLittleEndianEv
; demangled: glitch::video::CImageLoaderPVR::CDataInfo::isLittleEndian() const
; decoder-mode: arm
00605730  01 00 a0 e3                                      mov r0, #1
00605734  1e ff 2f e1                                      bx lr

; FUNCTION 0x00605738, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CImageLoaderPVR::CDataInfo
; alias: _ZNK6glitch5video15CImageLoaderPVR9CDataInfo9needsFlipEv
; demangled: glitch::video::CImageLoaderPVR::CDataInfo::needsFlip() const
; decoder-mode: arm
00605738  00 00 a0 e3                                      mov r0, #0
0060573c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00605f4c, declared_size=52, range_size=52, mode=arm
; class-group: glitch::video::CImageLoaderPVR::CDataInfo
; alias: _ZN6glitch5video15CImageLoaderPVR9CDataInfoD1Ev
; demangled: glitch::video::CImageLoaderPVR::CDataInfo::~CDataInfo()
; decoder-mode: arm
00605f4c  24 30 9f e5                                      ldr r3, [pc, #0x24]
00605f50  24 20 9f e5                                      ldr r2, [pc, #0x24]
00605f54  10 40 2d e9                                      push {r4, lr}
00605f58  03 30 8f e0                                      add r3, pc, r3
00605f5c  02 20 93 e7                                      ldr r2, [r3, r2]
00605f60  00 40 a0 e1                                      mov r4, r0
00605f64  08 20 82 e2                                      add r2, r2, #8
00605f68  00 20 80 e5                                      str r2, [r0]
00605f6c  b6 05 00 eb                                      bl #0x60764c
00605f70  04 00 a0 e1                                      mov r0, r4
00605f74  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00605f78  38 eb 38 00 1c 2c 00 00                          .byte 0x38, 0xeb, 0x38, 0x00, 0x1c, 0x2c, 0x00, 0x00

; FUNCTION 0x00606200, declared_size=60, range_size=60, mode=arm
; class-group: glitch::video::CImageLoaderPVR::CDataInfo
; alias: _ZN6glitch5video15CImageLoaderPVR9CDataInfoD0Ev
; demangled: glitch::video::CImageLoaderPVR::CDataInfo::~CDataInfo()
; decoder-mode: arm
00606200  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
00606204  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
00606208  10 40 2d e9                                      push {r4, lr}
0060620c  03 30 8f e0                                      add r3, pc, r3
00606210  02 20 93 e7                                      ldr r2, [r3, r2]
00606214  00 40 a0 e1                                      mov r4, r0
00606218  08 20 82 e2                                      add r2, r2, #8
0060621c  00 20 80 e5                                      str r2, [r0]
00606220  09 05 00 eb                                      bl #0x60764c
00606224  04 00 a0 e1                                      mov r0, r4
00606228  20 20 f4 eb                                      bl #0x30e2b0
0060622c  04 00 a0 e1                                      mov r0, r4
00606230  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00606234  84 e8 38 00 1c 2c 00 00                          .byte 0x84, 0xe8, 0x38, 0x00, 0x1c, 0x2c, 0x00, 0x00

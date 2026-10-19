; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0060422c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CImageLoaderDDS::CDataInfo
; alias: _ZNK6glitch5video15CImageLoaderDDS9CDataInfo15getFileDataSizeEv
; demangled: glitch::video::CImageLoaderDDS::CDataInfo::getFileDataSize() const
; decoder-mode: arm
0060422c  0c 00 90 e5                                      ldr r0, [r0, #0xc]
00604230  1e ff 2f e1                                      bx lr

; FUNCTION 0x00604234, declared_size=36, range_size=36, mode=arm
; class-group: glitch::video::CImageLoaderDDS::CDataInfo
; alias: _ZNK6glitch5video15CImageLoaderDDS9CDataInfo12getFilePitchEh
; demangled: glitch::video::CImageLoaderDDS::CDataInfo::getFilePitch(unsigned char) const
; decoder-mode: arm
00604234  00 00 51 e3                                      cmp r1, #0
00604238  04 00 00 1a                                      bne #0x604250
0060423c  04 30 90 e5                                      ldr r3, [r0, #4]
00604240  04 20 93 e5                                      ldr r2, [r3, #4]
00604244  08 00 12 e3                                      tst r2, #8
00604248  10 00 93 15                                      ldrne r0, [r3, #0x10]
0060424c  1e ff 2f 11                                      bxne lr
00604250  00 00 a0 e3                                      mov r0, #0
00604254  1e ff 2f e1                                      bx lr

; FUNCTION 0x00604258, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CImageLoaderDDS::CDataInfo
; alias: _ZNK6glitch5video15CImageLoaderDDS9CDataInfo14isLittleEndianEv
; demangled: glitch::video::CImageLoaderDDS::CDataInfo::isLittleEndian() const
; decoder-mode: arm
00604258  01 00 a0 e3                                      mov r0, #1
0060425c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00604260, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CImageLoaderDDS::CDataInfo
; alias: _ZNK6glitch5video15CImageLoaderDDS9CDataInfo9needsFlipEv
; demangled: glitch::video::CImageLoaderDDS::CDataInfo::needsFlip() const
; decoder-mode: arm
00604260  00 00 a0 e3                                      mov r0, #0
00604264  1e ff 2f e1                                      bx lr

; FUNCTION 0x00604364, declared_size=52, range_size=52, mode=arm
; class-group: glitch::video::CImageLoaderDDS::CDataInfo
; alias: _ZN6glitch5video15CImageLoaderDDS9CDataInfoD1Ev
; demangled: glitch::video::CImageLoaderDDS::CDataInfo::~CDataInfo()
; decoder-mode: arm
00604364  24 30 9f e5                                      ldr r3, [pc, #0x24]
00604368  24 20 9f e5                                      ldr r2, [pc, #0x24]
0060436c  10 40 2d e9                                      push {r4, lr}
00604370  03 30 8f e0                                      add r3, pc, r3
00604374  02 20 93 e7                                      ldr r2, [r3, r2]
00604378  00 40 a0 e1                                      mov r4, r0
0060437c  08 20 82 e2                                      add r2, r2, #8
00604380  00 20 80 e5                                      str r2, [r0]
00604384  b0 0c 00 eb                                      bl #0x60764c
00604388  04 00 a0 e1                                      mov r0, r4
0060438c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00604390  20 07 39 00 c4 47 00 00                          .byte 0x20, 0x07, 0x39, 0x00, 0xc4, 0x47, 0x00, 0x00

; FUNCTION 0x00604930, declared_size=60, range_size=60, mode=arm
; class-group: glitch::video::CImageLoaderDDS::CDataInfo
; alias: _ZN6glitch5video15CImageLoaderDDS9CDataInfoD0Ev
; demangled: glitch::video::CImageLoaderDDS::CDataInfo::~CDataInfo()
; decoder-mode: arm
00604930  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
00604934  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
00604938  10 40 2d e9                                      push {r4, lr}
0060493c  03 30 8f e0                                      add r3, pc, r3
00604940  02 20 93 e7                                      ldr r2, [r3, r2]
00604944  00 40 a0 e1                                      mov r4, r0
00604948  08 20 82 e2                                      add r2, r2, #8
0060494c  00 20 80 e5                                      str r2, [r0]
00604950  3d 0b 00 eb                                      bl #0x60764c
00604954  04 00 a0 e1                                      mov r0, r4
00604958  54 26 f4 eb                                      bl #0x30e2b0
0060495c  04 00 a0 e1                                      mov r0, r4
00604960  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00604964  54 01 39 00 c4 47 00 00                          .byte 0x54, 0x01, 0x39, 0x00, 0xc4, 0x47, 0x00, 0x00

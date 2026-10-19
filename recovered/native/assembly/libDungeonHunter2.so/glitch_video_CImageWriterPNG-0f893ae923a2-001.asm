; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00606d30, declared_size=44, range_size=44, mode=arm
; class-group: glitch::video::CImageWriterPNG
; alias: _ZN6glitch5video15CImageWriterPNGC2Ev
; demangled: glitch::video::CImageWriterPNG::CImageWriterPNG()
; decoder-mode: arm
00606d30  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
00606d34  1c 20 9f e5                                      ldr r2, [pc, #0x1c]
00606d38  01 c0 a0 e3                                      mov ip, #1
00606d3c  03 30 8f e0                                      add r3, pc, r3
00606d40  02 20 93 e7                                      ldr r2, [r3, r2]
00606d44  04 c0 80 e5                                      str ip, [r0, #4]
00606d48  08 20 82 e2                                      add r2, r2, #8
00606d4c  00 20 80 e5                                      str r2, [r0]
00606d50  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00606d54  54 dd 38 00 c0 07 00 00                          .byte 0x54, 0xdd, 0x38, 0x00, 0xc0, 0x07, 0x00, 0x00

; FUNCTION 0x00606d5c, declared_size=44, range_size=44, mode=arm
; class-group: glitch::video::CImageWriterPNG
; alias: _ZN6glitch5video15CImageWriterPNGC1Ev
; demangled: glitch::video::CImageWriterPNG::CImageWriterPNG()
; decoder-mode: arm
00606d5c  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
00606d60  1c 20 9f e5                                      ldr r2, [pc, #0x1c]
00606d64  01 c0 a0 e3                                      mov ip, #1
00606d68  03 30 8f e0                                      add r3, pc, r3
00606d6c  02 20 93 e7                                      ldr r2, [r3, r2]
00606d70  04 c0 80 e5                                      str ip, [r0, #4]
00606d74  08 20 82 e2                                      add r2, r2, #8
00606d78  00 20 80 e5                                      str r2, [r0]
00606d7c  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00606d80  28 dd 38 00 c0 07 00 00                          .byte 0x28, 0xdd, 0x38, 0x00, 0xc0, 0x07, 0x00, 0x00

; FUNCTION 0x00606d88, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::CImageWriterPNG
; alias: _ZN6glitch5video15CImageWriterPNGD1Ev
; demangled: glitch::video::CImageWriterPNG::~CImageWriterPNG()
; decoder-mode: arm
00606d88  1e ff 2f e1                                      bx lr

; FUNCTION 0x00606dac, declared_size=20, range_size=20, mode=arm
; class-group: glitch::video::CImageWriterPNG
; alias: _ZN6glitch5video15CImageWriterPNGD0Ev
; demangled: glitch::video::CImageWriterPNG::~CImageWriterPNG()
; decoder-mode: arm
00606dac  10 40 2d e9                                      push {r4, lr}
00606db0  00 40 a0 e1                                      mov r4, r0
00606db4  3d 1d f4 eb                                      bl #0x30e2b0
00606db8  04 00 a0 e1                                      mov r0, r4
00606dbc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00606dc0, declared_size=1096, range_size=1096, mode=arm
; class-group: glitch::video::CImageWriterPNG
; alias: _ZNK6glitch5video15CImageWriterPNG10writeImageEPNS_2io10IWriteFileERKN5boost13intrusive_ptrINS0_6CImageEEEj
; demangled: glitch::video::CImageWriterPNG::writeImage(glitch::io::IWriteFile*, boost::intrusive_ptr<glitch::video::CImage> const&, unsigned int) const
; decoder-mode: arm
00606dc0  70 40 2d e9                                      push {r4, r5, r6, lr}
00606dc4  10 04 9f e5                                      ldr r0, [pc, #0x410]
00606dc8  40 d0 4d e2                                      sub sp, sp, #0x40
00606dcc  00 00 51 e3                                      cmp r1, #0
00606dd0  00 00 8f e0                                      add r0, pc, r0
00606dd4  2c 10 8d e5                                      str r1, [sp, #0x2c]
00606dd8  1c 20 8d e5                                      str r2, [sp, #0x1c]
00606ddc  18 00 8d e5                                      str r0, [sp, #0x18]
00606de0  a9 00 00 0a                                      beq #0x60708c
00606de4  00 30 92 e5                                      ldr r3, [r2]
00606de8  00 00 53 e3                                      cmp r3, #0
00606dec  a6 00 00 0a                                      beq #0x60708c
00606df0  20 30 93 e5                                      ldr r3, [r3, #0x20]
00606df4  18 c0 9d e5                                      ldr ip, [sp, #0x18]
00606df8  24 30 8d e5                                      str r3, [sp, #0x24]
00606dfc  24 20 9d e5                                      ldr r2, [sp, #0x24]
00606e00  28 30 a0 e3                                      mov r3, #0x28
00606e04  24 00 9d e5                                      ldr r0, [sp, #0x24]
00606e08  93 02 03 e0                                      mul r3, r3, r2
00606e0c  cc 23 9f e5                                      ldr r2, [pc, #0x3cc]
00606e10  30 00 8d e5                                      str r0, [sp, #0x30]
00606e14  02 20 9c e7                                      ldr r2, [ip, r2]
00606e18  03 30 92 e7                                      ldr r3, [r2, r3]
00606e1c  3a 10 13 e2                                      ands r1, r3, #0x3a
00606e20  20 30 8d e5                                      str r3, [sp, #0x20]
00606e24  90 00 00 1a                                      bne #0x60706c
00606e28  b4 03 9f e5                                      ldr r0, [pc, #0x3b4]
00606e2c  b4 23 9f e5                                      ldr r2, [pc, #0x3b4]
00606e30  01 30 a0 e1                                      mov r3, r1
00606e34  00 00 8f e0                                      add r0, pc, r0
00606e38  02 20 8f e0                                      add r2, pc, r2
00606e3c  cf 39 02 eb                                      bl #0x695580
00606e40  00 00 50 e3                                      cmp r0, #0
00606e44  00 40 a0 e1                                      mov r4, r0
00606e48  3c 00 8d e5                                      str r0, [sp, #0x3c]
00606e4c  ab 00 00 0a                                      beq #0x607100
00606e50  f3 f6 01 eb                                      bl #0x684a24
00606e54  00 00 50 e3                                      cmp r0, #0
00606e58  00 40 a0 e1                                      mov r4, r0
00606e5c  38 00 8d e5                                      str r0, [sp, #0x38]
00606e60  b0 00 00 0a                                      beq #0x607128
00606e64  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
00606e68  1a 1f f4 eb                                      bl #0x30ead8
00606e6c  00 60 50 e2                                      subs r6, r0, #0
00606e70  87 00 00 1a                                      bne #0x607094
00606e74  70 33 9f e5                                      ldr r3, [pc, #0x370]
00606e78  18 c0 9d e5                                      ldr ip, [sp, #0x18]
00606e7c  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
00606e80  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
00606e84  03 20 9c e7                                      ldr r2, [ip, r3]
00606e88  06 30 a0 e1                                      mov r3, r6
00606e8c  fa 34 02 eb                                      bl #0x69427c
00606e90  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00606e94  20 10 9d e5                                      ldr r1, [sp, #0x20]
00606e98  00 20 90 e5                                      ldr r2, [r0]
00606e9c  40 30 11 e2                                      ands r3, r1, #0x40
00606ea0  08 40 92 e5                                      ldr r4, [r2, #8]
00606ea4  18 50 92 e5                                      ldr r5, [r2, #0x18]
00606ea8  34 30 8d 05                                      streq r3, [sp, #0x34]
00606eac  33 00 00 0a                                      beq #0x606f80
00606eb0  20 30 9d e5                                      ldr r3, [sp, #0x20]
00606eb4  14 00 92 e5                                      ldr r0, [r2, #0x14]
00606eb8  01 10 13 e2                                      ands r1, r3, #1
00606ebc  10 30 92 e5                                      ldr r3, [r2, #0x10]
00606ec0  0e c0 a0 13                                      movne ip, #0xe
00606ec4  0a 20 a0 03                                      moveq r2, #0xa
00606ec8  90 03 00 10                                      mulne r0, r0, r3
00606ecc  90 03 00 00                                      muleq r0, r0, r3
00606ed0  06 10 a0 11                                      movne r1, r6
00606ed4  00 01 a0 11                                      lslne r0, r0, #2
00606ed8  80 00 80 00                                      addeq r0, r0, r0, lsl #1
00606edc  24 c0 8d 15                                      strne ip, [sp, #0x24]
00606ee0  24 20 8d 05                                      streq r2, [sp, #0x24]
00606ee4  af b4 fc eb                                      bl #0x5341a8
00606ee8  34 00 8d e5                                      str r0, [sp, #0x34]
00606eec  34 30 9d e5                                      ldr r3, [sp, #0x34]
00606ef0  00 00 53 e3                                      cmp r3, #0
00606ef4  9c 00 00 0a                                      beq #0x60716c
00606ef8  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
00606efc  24 00 9d e5                                      ldr r0, [sp, #0x24]
00606f00  00 30 9c e5                                      ldr r3, [ip]
00606f04  30 00 8d e5                                      str r0, [sp, #0x30]
00606f08  10 10 93 e5                                      ldr r1, [r3, #0x10]
00606f0c  f6 9a ff eb                                      bl #0x5edaec
00606f10  00 50 a0 e1                                      mov r5, r0
00606f14  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00606f18  34 c0 9d e5                                      ldr ip, [sp, #0x34]
00606f1c  04 10 a0 e1                                      mov r1, r4
00606f20  00 30 90 e5                                      ldr r3, [r0]
00606f24  18 20 93 e5                                      ldr r2, [r3, #0x18]
00606f28  20 00 93 e5                                      ldr r0, [r3, #0x20]
00606f2c  00 c0 8d e5                                      str ip, [sp]
00606f30  04 50 8d e5                                      str r5, [sp, #4]
00606f34  10 c0 93 e5                                      ldr ip, [r3, #0x10]
00606f38  08 c0 8d e5                                      str ip, [sp, #8]
00606f3c  14 e0 93 e5                                      ldr lr, [r3, #0x14]
00606f40  00 c0 a0 e3                                      mov ip, #0
00606f44  24 30 9d e5                                      ldr r3, [sp, #0x24]
00606f48  10 c0 8d e5                                      str ip, [sp, #0x10]
00606f4c  0c e0 8d e5                                      str lr, [sp, #0xc]
00606f50  95 c9 ff eb                                      bl #0x5f95ac
00606f54  24 00 9d e5                                      ldr r0, [sp, #0x24]
00606f58  80 22 9f e5                                      ldr r2, [pc, #0x280]
00606f5c  18 c0 9d e5                                      ldr ip, [sp, #0x18]
00606f60  28 30 a0 e3                                      mov r3, #0x28
00606f64  93 00 03 e0                                      mul r3, r3, r0
00606f68  02 10 9c e7                                      ldr r1, [ip, r2]
00606f6c  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00606f70  34 40 9d e5                                      ldr r4, [sp, #0x34]
00606f74  03 30 91 e7                                      ldr r3, [r1, r3]
00606f78  00 20 90 e5                                      ldr r2, [r0]
00606f7c  20 30 8d e5                                      str r3, [sp, #0x20]
00606f80  20 10 9d e5                                      ldr r1, [sp, #0x20]
00606f84  01 e0 11 e2                                      ands lr, r1, #1
00606f88  46 00 00 0a                                      beq #0x6070a8
00606f8c  04 00 11 e3                                      tst r1, #4
00606f90  04 e0 a0 13                                      movne lr, #4
00606f94  06 e0 a0 03                                      moveq lr, #6
00606f98  24 00 9d e5                                      ldr r0, [sp, #0x24]
00606f9c  14 30 92 e5                                      ldr r3, [r2, #0x14]
00606fa0  00 60 a0 e3                                      mov r6, #0
00606fa4  01 00 50 e3                                      cmp r0, #1
00606fa8  10 20 92 e5                                      ldr r2, [r2, #0x10]
00606fac  10 c0 a0 03                                      moveq ip, #0x10
00606fb0  08 c0 a0 13                                      movne ip, #8
00606fb4  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
00606fb8  38 10 9d e5                                      ldr r1, [sp, #0x38]
00606fbc  00 50 8d e8                                      stm sp, {ip, lr}
00606fc0  08 60 8d e5                                      str r6, [sp, #8]
00606fc4  0c 60 8d e5                                      str r6, [sp, #0xc]
00606fc8  10 60 8d e5                                      str r6, [sp, #0x10]
00606fcc  c9 31 02 eb                                      bl #0x6936f8
00606fd0  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
00606fd4  00 30 91 e5                                      ldr r3, [r1]
00606fd8  06 10 a0 e1                                      mov r1, r6
00606fdc  14 00 93 e5                                      ldr r0, [r3, #0x14]
00606fe0  00 01 a0 e1                                      lsl r0, r0, #2
00606fe4  6f b4 fc eb                                      bl #0x5341a8
00606fe8  00 00 50 e3                                      cmp r0, #0
00606fec  28 00 8d e5                                      str r0, [sp, #0x28]
00606ff0  6b 00 00 0a                                      beq #0x6071a4
00606ff4  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00606ff8  00 30 92 e5                                      ldr r3, [r2]
00606ffc  14 30 93 e5                                      ldr r3, [r3, #0x14]
00607000  06 00 53 e1                                      cmp r3, r6
00607004  08 00 00 da                                      ble #0x60702c
00607008  28 30 9d e5                                      ldr r3, [sp, #0x28]
0060700c  06 41 83 e7                                      str r4, [r3, r6, lsl #2]
00607010  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
00607014  01 60 86 e2                                      add r6, r6, #1
00607018  05 40 84 e0                                      add r4, r4, r5
0060701c  00 30 9c e5                                      ldr r3, [ip]
00607020  14 30 93 e5                                      ldr r3, [r3, #0x14]
00607024  06 00 53 e1                                      cmp r3, r6
00607028  f6 ff ff ca                                      bgt #0x607008
0060702c  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
00607030  a8 1e f4 eb                                      bl #0x30ead8
00607034  00 40 50 e2                                      subs r4, r0, #0
00607038  1e 00 00 0a                                      beq #0x6070b8
0060703c  3c 00 8d e2                                      add r0, sp, #0x3c
00607040  38 10 8d e2                                      add r1, sp, #0x38
00607044  d0 36 02 eb                                      bl #0x694b8c
00607048  00 40 a0 e3                                      mov r4, #0
0060704c  28 00 9d e5                                      ldr r0, [sp, #0x28]
00607050  18 1c f4 eb                                      bl #0x30e0b8
00607054  34 10 9d e5                                      ldr r1, [sp, #0x34]
00607058  00 00 51 e3                                      cmp r1, #0
0060705c  07 00 00 0a                                      beq #0x607080
00607060  01 00 a0 e1                                      mov r0, r1
00607064  13 1c f4 eb                                      bl #0x30e0b8
00607068  04 00 00 ea                                      b #0x607080
0060706c  7c 01 9f e5                                      ldr r0, [pc, #0x17c]
00607070  03 10 a0 e3                                      mov r1, #3
00607074  00 40 a0 e3                                      mov r4, #0
00607078  00 00 8f e0                                      add r0, pc, r0
0060707c  07 0f 00 eb                                      bl #0x60aca0
00607080  04 00 a0 e1                                      mov r0, r4
00607084  40 d0 8d e2                                      add sp, sp, #0x40
00607088  70 80 bd e8                                      pop {r4, r5, r6, pc}
0060708c  00 40 a0 e3                                      mov r4, #0
00607090  fa ff ff ea                                      b #0x607080
00607094  3c 00 8d e2                                      add r0, sp, #0x3c
00607098  38 10 8d e2                                      add r1, sp, #0x38
0060709c  ba 36 02 eb                                      bl #0x694b8c
006070a0  00 40 a0 e3                                      mov r4, #0
006070a4  f5 ff ff ea                                      b #0x607080
006070a8  20 30 9d e5                                      ldr r3, [sp, #0x20]
006070ac  04 00 13 e3                                      tst r3, #4
006070b0  02 e0 a0 03                                      moveq lr, #2
006070b4  b7 ff ff ea                                      b #0x606f98
006070b8  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
006070bc  28 20 9d e5                                      ldr r2, [sp, #0x28]
006070c0  38 10 9d e5                                      ldr r1, [sp, #0x38]
006070c4  f3 2b 02 eb                                      bl #0x692098
006070c8  30 00 9d e5                                      ldr r0, [sp, #0x30]
006070cc  0c 30 40 e2                                      sub r3, r0, #0xc
006070d0  01 00 53 e3                                      cmp r3, #1
006070d4  04 20 a0 81                                      movhi r2, r4
006070d8  1f 00 00 9a                                      bls #0x60715c
006070dc  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
006070e0  38 10 9d e5                                      ldr r1, [sp, #0x38]
006070e4  00 30 a0 e3                                      mov r3, #0
006070e8  44 3b 02 eb                                      bl #0x695e00
006070ec  3c 00 8d e2                                      add r0, sp, #0x3c
006070f0  38 10 8d e2                                      add r1, sp, #0x38
006070f4  a4 36 02 eb                                      bl #0x694b8c
006070f8  01 40 a0 e3                                      mov r4, #1
006070fc  d2 ff ff ea                                      b #0x60704c
00607100  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
00607104  00 30 90 e5                                      ldr r3, [r0]
00607108  0f e0 a0 e1                                      mov lr, pc
0060710c  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00607110  00 10 a0 e1                                      mov r1, r0
00607114  d8 00 9f e5                                      ldr r0, [pc, #0xd8]
00607118  03 20 a0 e3                                      mov r2, #3
0060711c  00 00 8f e0                                      add r0, pc, r0
00607120  f0 0e 00 eb                                      bl #0x60ace8
00607124  d5 ff ff ea                                      b #0x607080
00607128  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
0060712c  00 30 90 e5                                      ldr r3, [r0]
00607130  0f e0 a0 e1                                      mov lr, pc
00607134  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00607138  00 10 a0 e1                                      mov r1, r0
0060713c  b4 00 9f e5                                      ldr r0, [pc, #0xb4]
00607140  03 20 a0 e3                                      mov r2, #3
00607144  00 00 8f e0                                      add r0, pc, r0
00607148  e6 0e 00 eb                                      bl #0x60ace8
0060714c  3c 00 8d e2                                      add r0, sp, #0x3c
00607150  04 10 a0 e1                                      mov r1, r4
00607154  8c 36 02 eb                                      bl #0x694b8c
00607158  c8 ff ff ea                                      b #0x607080
0060715c  98 20 9f e5                                      ldr r2, [pc, #0x98]
00607160  02 20 8f e0                                      add r2, pc, r2
00607164  03 21 92 e7                                      ldr r2, [r2, r3, lsl #2]
00607168  db ff ff ea                                      b #0x6070dc
0060716c  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
00607170  00 30 90 e5                                      ldr r3, [r0]
00607174  0f e0 a0 e1                                      mov lr, pc
00607178  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0060717c  00 10 a0 e1                                      mov r1, r0
00607180  78 00 9f e5                                      ldr r0, [pc, #0x78]
00607184  03 20 a0 e3                                      mov r2, #3
00607188  00 00 8f e0                                      add r0, pc, r0
0060718c  d5 0e 00 eb                                      bl #0x60ace8
00607190  3c 00 8d e2                                      add r0, sp, #0x3c
00607194  38 10 8d e2                                      add r1, sp, #0x38
00607198  7b 36 02 eb                                      bl #0x694b8c
0060719c  34 40 9d e5                                      ldr r4, [sp, #0x34]
006071a0  b6 ff ff ea                                      b #0x607080
006071a4  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
006071a8  00 30 90 e5                                      ldr r3, [r0]
006071ac  0f e0 a0 e1                                      mov lr, pc
006071b0  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
006071b4  00 10 a0 e1                                      mov r1, r0
006071b8  44 00 9f e5                                      ldr r0, [pc, #0x44]
006071bc  03 20 a0 e3                                      mov r2, #3
006071c0  00 00 8f e0                                      add r0, pc, r0
006071c4  c7 0e 00 eb                                      bl #0x60ace8
006071c8  3c 00 8d e2                                      add r0, sp, #0x3c
006071cc  38 10 8d e2                                      add r1, sp, #0x38
006071d0  6d 36 02 eb                                      bl #0x694b8c
006071d4  28 40 9d e5                                      ldr r4, [sp, #0x28]
006071d8  9d ff ff ea                                      b #0x607054
; mapping-symbol data/literal pool
006071dc  c0 dc 38 00 34 1f 00 00 dc d9 2d 00 c8 03 00 00  .byte 0xc0, 0xdc, 0x38, 0x00, 0x34, 0x1f, 0x00, 0x00, 0xdc, 0xd9, 0x2d, 0x00, 0xc8, 0x03, 0x00, 0x00
006071ec  54 2e 00 00 50 da 2d 00 ec d9 2d 00 fc d9 2d 00  .byte 0x54, 0x2e, 0x00, 0x00, 0x50, 0xda, 0x2d, 0x00, 0xec, 0xd9, 0x2d, 0x00, 0xfc, 0xd9, 0x2d, 0x00
006071fc  60 d9 2d 00 f0 d9 2d 00 e8 d9 2d 00              .byte 0x60, 0xd9, 0x2d, 0x00, 0xf0, 0xd9, 0x2d, 0x00, 0xe8, 0xd9, 0x2d, 0x00

; FUNCTION 0x00607230, declared_size=76, range_size=76, mode=arm
; class-group: glitch::video::CImageWriterPNG
; alias: _ZNK6glitch5video15CImageWriterPNG25isAWriteableFileExtensionEPKc
; demangled: glitch::video::CImageWriterPNG::isAWriteableFileExtension(char const*) const
; decoder-mode: arm
00607230  10 40 2d e9                                      push {r4, lr}
00607234  01 00 a0 e1                                      mov r0, r1
00607238  01 40 a0 e1                                      mov r4, r1
0060723c  30 10 9f e5                                      ldr r1, [pc, #0x30]
00607240  01 10 8f e0                                      add r1, pc, r1
00607244  62 1e f4 eb                                      bl #0x30ebd4
00607248  00 00 50 e3                                      cmp r0, #0
0060724c  01 00 00 0a                                      beq #0x607258
00607250  01 00 a0 e3                                      mov r0, #1
00607254  10 80 bd e8                                      pop {r4, pc}
00607258  18 10 9f e5                                      ldr r1, [pc, #0x18]
0060725c  04 00 a0 e1                                      mov r0, r4
00607260  01 10 8f e0                                      add r1, pc, r1
00607264  5a 1e f4 eb                                      bl #0x30ebd4
00607268  00 00 50 e2                                      subs r0, r0, #0
0060726c  01 00 a0 13                                      movne r0, #1
00607270  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00607274  d0 d6 2d 00 a8 d6 2d 00                          .byte 0xd0, 0xd6, 0x2d, 0x00, 0xa8, 0xd6, 0x2d, 0x00

; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00602c9c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CImageLoaderATC
; alias: _ZN6glitch5video15CImageLoaderATC23hasTextureLoadInterfaceEv
; demangled: glitch::video::CImageLoaderATC::hasTextureLoadInterface()
; decoder-mode: arm
00602c9c  01 00 a0 e3                                      mov r0, #1
00602ca0  1e ff 2f e1                                      bx lr

; FUNCTION 0x00602cc4, declared_size=176, range_size=176, mode=arm
; class-group: glitch::video::CImageLoaderATC
; alias: _ZNK6glitch5video15CImageLoaderATC21isALoadableFileFormatEPNS_2io9IReadFileE
; demangled: glitch::video::CImageLoaderATC::isALoadableFileFormat(glitch::io::IReadFile*) const
; decoder-mode: arm
00602cc4  30 40 2d e9                                      push {r4, r5, lr}
00602cc8  00 40 51 e2                                      subs r4, r1, #0
00602ccc  0c d0 4d e2                                      sub sp, sp, #0xc
00602cd0  05 00 00 0a                                      beq #0x602cec
00602cd4  00 30 94 e5                                      ldr r3, [r4]
00602cd8  04 00 a0 e1                                      mov r0, r4
00602cdc  0f e0 a0 e1                                      mov lr, pc
00602ce0  20 f0 93 e5                                      ldr pc, [r3, #0x20]
00602ce4  07 00 50 e3                                      cmp r0, #7
00602ce8  02 00 00 8a                                      bhi #0x602cf8
00602cec  00 00 a0 e3                                      mov r0, #0
00602cf0  0c d0 8d e2                                      add sp, sp, #0xc
00602cf4  30 80 bd e8                                      pop {r4, r5, pc}
00602cf8  08 50 8d e2                                      add r5, sp, #8
00602cfc  00 30 a0 e3                                      mov r3, #0
00602d00  b2 30 65 e1                                      strh r3, [r5, #-2]!
00602d04  00 30 94 e5                                      ldr r3, [r4]
00602d08  04 10 a0 e3                                      mov r1, #4
00602d0c  00 20 a0 e3                                      mov r2, #0
00602d10  04 00 a0 e1                                      mov r0, r4
00602d14  0f e0 a0 e1                                      mov lr, pc
00602d18  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00602d1c  00 30 94 e5                                      ldr r3, [r4]
00602d20  05 10 a0 e1                                      mov r1, r5
00602d24  01 20 a0 e3                                      mov r2, #1
00602d28  04 00 a0 e1                                      mov r0, r4
00602d2c  0f e0 a0 e1                                      mov lr, pc
00602d30  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00602d34  04 00 a0 e1                                      mov r0, r4
00602d38  00 30 94 e5                                      ldr r3, [r4]
00602d3c  05 10 a0 e1                                      mov r1, r5
00602d40  01 20 a0 e3                                      mov r2, #1
00602d44  b6 40 dd e1                                      ldrh r4, [sp, #6]
00602d48  0f e0 a0 e1                                      mov lr, pc
00602d4c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00602d50  b6 00 dd e1                                      ldrh r0, [sp, #6]
00602d54  00 04 84 e1                                      orr r0, r4, r0, lsl #8
00602d58  73 0c 80 e2                                      add r0, r0, #0x7300
00602d5c  6e 00 80 e2                                      add r0, r0, #0x6e
00602d60  70 00 ff e6                                      uxth r0, r0
00602d64  01 00 50 e3                                      cmp r0, #1
00602d68  00 00 a0 83                                      movhi r0, #0
00602d6c  01 00 a0 93                                      movls r0, #1
00602d70  de ff ff ea                                      b #0x602cf0

; FUNCTION 0x00602d78, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::CImageLoaderATC
; alias: _ZN6glitch5video15CImageLoaderATCD1Ev
; demangled: glitch::video::CImageLoaderATC::~CImageLoaderATC()
; decoder-mode: arm
00602d78  1e ff 2f e1                                      bx lr

; FUNCTION 0x00602d9c, declared_size=20, range_size=20, mode=arm
; class-group: glitch::video::CImageLoaderATC
; alias: _ZN6glitch5video15CImageLoaderATCD0Ev
; demangled: glitch::video::CImageLoaderATC::~CImageLoaderATC()
; decoder-mode: arm
00602d9c  10 40 2d e9                                      push {r4, lr}
00602da0  00 40 a0 e1                                      mov r4, r0
00602da4  41 2d f4 eb                                      bl #0x30e2b0
00602da8  04 00 a0 e1                                      mov r0, r4
00602dac  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00602e34, declared_size=432, range_size=432, mode=arm
; class-group: glitch::video::CImageLoaderATC
; alias: _ZNK6glitch5video15CImageLoaderATC17loadTextureHeaderEPNS_2io9IReadFileERNS0_12STextureDescE
; demangled: glitch::video::CImageLoaderATC::loadTextureHeader(glitch::io::IReadFile*, glitch::video::STextureDesc&) const
; decoder-mode: arm
00602e34  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00602e38  01 40 a0 e1                                      mov r4, r1
00602e3c  14 d0 4d e2                                      sub sp, sp, #0x14
00602e40  00 10 a0 e3                                      mov r1, #0
00602e44  0c 60 8d e2                                      add r6, sp, #0xc
00602e48  00 30 94 e5                                      ldr r3, [r4]
00602e4c  02 50 a0 e1                                      mov r5, r2
00602e50  04 00 a0 e1                                      mov r0, r4
00602e54  01 20 a0 e1                                      mov r2, r1
00602e58  0f e0 a0 e1                                      mov lr, pc
00602e5c  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00602e60  06 10 a0 e1                                      mov r1, r6
00602e64  02 20 a0 e3                                      mov r2, #2
00602e68  00 30 94 e5                                      ldr r3, [r4]
00602e6c  04 00 a0 e1                                      mov r0, r4
00602e70  0f e0 a0 e1                                      mov lr, pc
00602e74  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00602e78  06 10 a0 e1                                      mov r1, r6
00602e7c  02 20 a0 e3                                      mov r2, #2
00602e80  00 30 94 e5                                      ldr r3, [r4]
00602e84  04 00 a0 e1                                      mov r0, r4
00602e88  0c b0 dd e5                                      ldrb fp, [sp, #0xc]
00602e8c  0d 90 dd e5                                      ldrb sb, [sp, #0xd]
00602e90  0f e0 a0 e1                                      mov lr, pc
00602e94  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00602e98  0c c0 dd e5                                      ldrb ip, [sp, #0xc]
00602e9c  00 30 94 e5                                      ldr r3, [r4]
00602ea0  06 10 a0 e1                                      mov r1, r6
00602ea4  04 c0 8d e5                                      str ip, [sp, #4]
00602ea8  0d c0 dd e5                                      ldrb ip, [sp, #0xd]
00602eac  02 20 a0 e3                                      mov r2, #2
00602eb0  04 00 a0 e1                                      mov r0, r4
00602eb4  00 c0 8d e5                                      str ip, [sp]
00602eb8  0f e0 a0 e1                                      mov lr, pc
00602ebc  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00602ec0  06 10 a0 e1                                      mov r1, r6
00602ec4  02 20 a0 e3                                      mov r2, #2
00602ec8  00 30 94 e5                                      ldr r3, [r4]
00602ecc  04 00 a0 e1                                      mov r0, r4
00602ed0  0c a0 dd e5                                      ldrb sl, [sp, #0xc]
00602ed4  0d 80 dd e5                                      ldrb r8, [sp, #0xd]
00602ed8  0f e0 a0 e1                                      mov lr, pc
00602edc  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00602ee0  06 10 a0 e1                                      mov r1, r6
00602ee4  04 20 a0 e3                                      mov r2, #4
00602ee8  00 30 94 e5                                      ldr r3, [r4]
00602eec  04 00 a0 e1                                      mov r0, r4
00602ef0  0f e0 a0 e1                                      mov lr, pc
00602ef4  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00602ef8  0e 60 dd e5                                      ldrb r6, [sp, #0xe]
00602efc  0d 10 dd e5                                      ldrb r1, [sp, #0xd]
00602f00  0c 20 dd e5                                      ldrb r2, [sp, #0xc]
00602f04  0f 30 dd e5                                      ldrb r3, [sp, #0xf]
00602f08  06 68 a0 e1                                      lsl r6, r6, #0x10
00602f0c  01 64 86 e1                                      orr r6, r6, r1, lsl #8
00602f10  02 60 86 e1                                      orr r6, r6, r2
00602f14  03 6c 86 e1                                      orr r6, r6, r3, lsl #24
00602f18  00 10 a0 e3                                      mov r1, #0
00602f1c  06 00 a0 e1                                      mov r0, r6
00602f20  a0 c4 fc eb                                      bl #0x5341a8
00602f24  00 70 a0 e1                                      mov r7, r0
00602f28  00 30 94 e5                                      ldr r3, [r4]
00602f2c  04 00 a0 e1                                      mov r0, r4
00602f30  07 10 a0 e1                                      mov r1, r7
00602f34  06 20 a0 e1                                      mov r2, r6
00602f38  0f e0 a0 e1                                      mov lr, pc
00602f3c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00602f40  00 00 56 e1                                      cmp r6, r0
00602f44  0e 00 00 0a                                      beq #0x602f84
00602f48  00 30 94 e5                                      ldr r3, [r4]
00602f4c  04 00 a0 e1                                      mov r0, r4
00602f50  0f e0 a0 e1                                      mov lr, pc
00602f54  28 f0 93 e5                                      ldr pc, [r3, #0x28]
00602f58  00 10 a0 e1                                      mov r1, r0
00602f5c  7c 00 9f e5                                      ldr r0, [pc, #0x7c]
00602f60  03 20 a0 e3                                      mov r2, #3
00602f64  00 40 a0 e3                                      mov r4, #0
00602f68  00 00 8f e0                                      add r0, pc, r0
00602f6c  5d 1f 00 eb                                      bl #0x60ace8
00602f70  07 00 a0 e1                                      mov r0, r7
00602f74  cd 2c f4 eb                                      bl #0x30e2b0
00602f78  04 00 a0 e1                                      mov r0, r4
00602f7c  14 d0 8d e2                                      add sp, sp, #0x14
00602f80  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00602f84  00 30 9d e5                                      ldr r3, [sp]
00602f88  04 10 9d e5                                      ldr r1, [sp, #4]
00602f8c  08 84 8a e1                                      orr r8, sl, r8, lsl #8
00602f90  01 40 a0 e3                                      mov r4, #1
00602f94  03 24 81 e1                                      orr r2, r1, r3, lsl #8
00602f98  92 3c 08 e3                                      movw r3, #0x8c92
00602f9c  03 00 58 e1                                      cmp r8, r3
00602fa0  00 30 a0 e3                                      mov r3, #0
00602fa4  09 94 8b e1                                      orr sb, fp, sb, lsl #8
00602fa8  08 30 85 e5                                      str r3, [r5, #8]
00602fac  00 30 85 e5                                      str r3, [r5]
00602fb0  15 30 a0 03                                      moveq r3, #0x15
00602fb4  10 90 85 e5                                      str sb, [r5, #0x10]
00602fb8  14 20 85 e5                                      str r2, [r5, #0x14]
00602fbc  18 40 85 e5                                      str r4, [r5, #0x18]
00602fc0  1c 40 c5 e5                                      strb r4, [r5, #0x1c]
00602fc4  04 30 85 05                                      streq r3, [r5, #4]
00602fc8  e8 ff ff 0a                                      beq #0x602f70
00602fcc  93 3c 08 e3                                      movw r3, #0x8c93
00602fd0  03 00 58 e1                                      cmp r8, r3
00602fd4  16 30 a0 03                                      moveq r3, #0x16
00602fd8  04 30 85 05                                      streq r3, [r5, #4]
00602fdc  e3 ff ff ea                                      b #0x602f70
; mapping-symbol data/literal pool
00602fe0  08 16 2e 00                                      .byte 0x08, 0x16, 0x2e, 0x00

; FUNCTION 0x00602fe4, declared_size=624, range_size=624, mode=arm
; class-group: glitch::video::CImageLoaderATC
; alias: _ZNK6glitch5video15CImageLoaderATC9loadImageEPNS_2io9IReadFileE
; demangled: glitch::video::CImageLoaderATC::loadImage(glitch::io::IReadFile*) const
; decoder-mode: arm
00602fe4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00602fe8  00 10 a0 e3                                      mov r1, #0
00602fec  2c d0 4d e2                                      sub sp, sp, #0x2c
00602ff0  02 60 a0 e1                                      mov r6, r2
00602ff4  24 40 8d e2                                      add r4, sp, #0x24
00602ff8  01 20 a0 e1                                      mov r2, r1
00602ffc  00 30 96 e5                                      ldr r3, [r6]
00603000  00 50 a0 e1                                      mov r5, r0
00603004  06 00 a0 e1                                      mov r0, r6
00603008  0f e0 a0 e1                                      mov lr, pc
0060300c  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00603010  04 10 a0 e1                                      mov r1, r4
00603014  02 20 a0 e3                                      mov r2, #2
00603018  00 30 96 e5                                      ldr r3, [r6]
0060301c  06 00 a0 e1                                      mov r0, r6
00603020  0f e0 a0 e1                                      mov lr, pc
00603024  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00603028  04 10 a0 e1                                      mov r1, r4
0060302c  02 20 a0 e3                                      mov r2, #2
00603030  00 30 96 e5                                      ldr r3, [r6]
00603034  06 00 a0 e1                                      mov r0, r6
00603038  24 b0 dd e5                                      ldrb fp, [sp, #0x24]
0060303c  25 90 dd e5                                      ldrb sb, [sp, #0x25]
00603040  0f e0 a0 e1                                      mov lr, pc
00603044  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00603048  24 c0 dd e5                                      ldrb ip, [sp, #0x24]
0060304c  00 30 96 e5                                      ldr r3, [r6]
00603050  04 10 a0 e1                                      mov r1, r4
00603054  14 c0 8d e5                                      str ip, [sp, #0x14]
00603058  25 c0 dd e5                                      ldrb ip, [sp, #0x25]
0060305c  02 20 a0 e3                                      mov r2, #2
00603060  06 00 a0 e1                                      mov r0, r6
00603064  10 c0 8d e5                                      str ip, [sp, #0x10]
00603068  0f e0 a0 e1                                      mov lr, pc
0060306c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00603070  04 10 a0 e1                                      mov r1, r4
00603074  02 20 a0 e3                                      mov r2, #2
00603078  00 30 96 e5                                      ldr r3, [r6]
0060307c  06 00 a0 e1                                      mov r0, r6
00603080  24 a0 dd e5                                      ldrb sl, [sp, #0x24]
00603084  25 80 dd e5                                      ldrb r8, [sp, #0x25]
00603088  0f e0 a0 e1                                      mov lr, pc
0060308c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00603090  04 10 a0 e1                                      mov r1, r4
00603094  04 20 a0 e3                                      mov r2, #4
00603098  00 30 96 e5                                      ldr r3, [r6]
0060309c  06 00 a0 e1                                      mov r0, r6
006030a0  0f e0 a0 e1                                      mov lr, pc
006030a4  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006030a8  26 40 dd e5                                      ldrb r4, [sp, #0x26]
006030ac  25 10 dd e5                                      ldrb r1, [sp, #0x25]
006030b0  24 20 dd e5                                      ldrb r2, [sp, #0x24]
006030b4  27 30 dd e5                                      ldrb r3, [sp, #0x27]
006030b8  04 48 a0 e1                                      lsl r4, r4, #0x10
006030bc  01 44 84 e1                                      orr r4, r4, r1, lsl #8
006030c0  02 40 84 e1                                      orr r4, r4, r2
006030c4  03 4c 84 e1                                      orr r4, r4, r3, lsl #24
006030c8  00 10 a0 e3                                      mov r1, #0
006030cc  04 00 a0 e1                                      mov r0, r4
006030d0  34 c4 fc eb                                      bl #0x5341a8
006030d4  00 70 a0 e1                                      mov r7, r0
006030d8  00 30 96 e5                                      ldr r3, [r6]
006030dc  06 00 a0 e1                                      mov r0, r6
006030e0  07 10 a0 e1                                      mov r1, r7
006030e4  04 20 a0 e1                                      mov r2, r4
006030e8  0f e0 a0 e1                                      mov lr, pc
006030ec  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006030f0  00 00 54 e1                                      cmp r4, r0
006030f4  0f 00 00 0a                                      beq #0x603138
006030f8  00 30 96 e5                                      ldr r3, [r6]
006030fc  06 00 a0 e1                                      mov r0, r6
00603100  0f e0 a0 e1                                      mov lr, pc
00603104  28 f0 93 e5                                      ldr pc, [r3, #0x28]
00603108  00 10 a0 e1                                      mov r1, r0
0060310c  38 01 9f e5                                      ldr r0, [pc, #0x138]
00603110  03 20 a0 e3                                      mov r2, #3
00603114  00 00 8f e0                                      add r0, pc, r0
00603118  f2 1e 00 eb                                      bl #0x60ace8
0060311c  00 30 a0 e3                                      mov r3, #0
00603120  00 30 85 e5                                      str r3, [r5]
00603124  07 00 a0 e1                                      mov r0, r7
00603128  60 2c f4 eb                                      bl #0x30e2b0
0060312c  05 00 a0 e1                                      mov r0, r5
00603130  2c d0 8d e2                                      add sp, sp, #0x2c
00603134  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00603138  08 84 8a e1                                      orr r8, sl, r8, lsl #8
0060313c  92 3c 08 e3                                      movw r3, #0x8c92
00603140  03 00 58 e1                                      cmp r8, r3
00603144  0e 00 00 0a                                      beq #0x603184
00603148  93 3c 08 e3                                      movw r3, #0x8c93
0060314c  03 00 58 e1                                      cmp r8, r3
00603150  3b 00 00 0a                                      beq #0x603244
00603154  00 30 96 e5                                      ldr r3, [r6]
00603158  06 00 a0 e1                                      mov r0, r6
0060315c  0f e0 a0 e1                                      mov lr, pc
00603160  28 f0 93 e5                                      ldr pc, [r3, #0x28]
00603164  00 10 a0 e1                                      mov r1, r0
00603168  e0 00 9f e5                                      ldr r0, [pc, #0xe0]
0060316c  03 20 a0 e3                                      mov r2, #3
00603170  00 00 8f e0                                      add r0, pc, r0
00603174  db 1e 00 eb                                      bl #0x60ace8
00603178  00 30 a0 e3                                      mov r3, #0
0060317c  00 30 85 e5                                      str r3, [r5]
00603180  e7 ff ff ea                                      b #0x603124
00603184  15 a0 a0 e3                                      mov sl, #0x15
00603188  14 10 9d e5                                      ldr r1, [sp, #0x14]
0060318c  10 20 9d e5                                      ldr r2, [sp, #0x10]
00603190  09 94 8b e1                                      orr sb, fp, sb, lsl #8
00603194  02 34 81 e1                                      orr r3, r1, r2, lsl #8
00603198  01 00 53 e3                                      cmp r3, #1
0060319c  01 00 59 d3                                      cmple sb, #1
006031a0  00 80 a0 d3                                      movle r8, #0
006031a4  01 80 a0 c3                                      movgt r8, #1
006031a8  08 00 00 da                                      ble #0x6031d0
006031ac  03 10 a0 e1                                      mov r1, r3
006031b0  09 20 a0 e1                                      mov r2, sb
006031b4  00 80 a0 e3                                      mov r8, #0
006031b8  c2 20 a0 e1                                      asr r2, r2, #1
006031bc  c1 10 a0 e1                                      asr r1, r1, #1
006031c0  01 00 52 e3                                      cmp r2, #1
006031c4  01 00 51 d3                                      cmple r1, #1
006031c8  01 80 88 e2                                      add r8, r8, #1
006031cc  f9 ff ff ca                                      bgt #0x6031b8
006031d0  00 10 a0 e3                                      mov r1, #0
006031d4  2c 00 a0 e3                                      mov r0, #0x2c
006031d8  20 30 8d e5                                      str r3, [sp, #0x20]
006031dc  1c 90 8d e5                                      str sb, [sp, #0x1c]
006031e0  f1 c3 fc eb                                      bl #0x5341ac
006031e4  01 c0 a0 e3                                      mov ip, #1
006031e8  00 60 a0 e1                                      mov r6, r0
006031ec  07 30 a0 e1                                      mov r3, r7
006031f0  0a 10 a0 e1                                      mov r1, sl
006031f4  1c 20 8d e2                                      add r2, sp, #0x1c
006031f8  10 01 8d e8                                      stm sp, {r4, r8}
006031fc  0c c0 8d e5                                      str ip, [sp, #0xc]
00603200  08 c0 8d e5                                      str ip, [sp, #8]
00603204  77 fd ff eb                                      bl #0x6027e8
00603208  00 00 56 e3                                      cmp r6, #0
0060320c  00 60 85 05                                      streq r6, [r5]
00603210  06 70 a0 01                                      moveq r7, r6
00603214  c2 ff ff 0a                                      beq #0x603124
00603218  04 30 96 e5                                      ldr r3, [r6, #4]
0060321c  06 00 a0 e1                                      mov r0, r6
00603220  00 70 a0 e3                                      mov r7, #0
00603224  01 30 83 e2                                      add r3, r3, #1
00603228  04 30 86 e5                                      str r3, [r6, #4]
0060322c  00 60 85 e5                                      str r6, [r5]
00603230  04 30 96 e5                                      ldr r3, [r6, #4]
00603234  01 30 83 e2                                      add r3, r3, #1
00603238  04 30 86 e5                                      str r3, [r6, #4]
0060323c  d0 68 f4 eb                                      bl #0x31d584
00603240  b7 ff ff ea                                      b #0x603124
00603244  16 a0 a0 e3                                      mov sl, #0x16
00603248  ce ff ff ea                                      b #0x603188
; mapping-symbol data/literal pool
0060324c  5c 14 2e 00 18 14 2e 00                          .byte 0x5c, 0x14, 0x2e, 0x00, 0x18, 0x14, 0x2e, 0x00

; FUNCTION 0x00603254, declared_size=76, range_size=76, mode=arm
; class-group: glitch::video::CImageLoaderATC
; alias: _ZNK6glitch5video15CImageLoaderATC24isALoadableFileExtensionEPKc
; demangled: glitch::video::CImageLoaderATC::isALoadableFileExtension(char const*) const
; decoder-mode: arm
00603254  10 40 2d e9                                      push {r4, lr}
00603258  01 00 a0 e1                                      mov r0, r1
0060325c  01 40 a0 e1                                      mov r4, r1
00603260  30 10 9f e5                                      ldr r1, [pc, #0x30]
00603264  01 10 8f e0                                      add r1, pc, r1
00603268  59 2e f4 eb                                      bl #0x30ebd4
0060326c  00 00 50 e3                                      cmp r0, #0
00603270  01 00 00 0a                                      beq #0x60327c
00603274  01 00 a0 e3                                      mov r0, #1
00603278  10 80 bd e8                                      pop {r4, pc}
0060327c  18 10 9f e5                                      ldr r1, [pc, #0x18]
00603280  04 00 a0 e1                                      mov r0, r4
00603284  01 10 8f e0                                      add r1, pc, r1
00603288  51 2e f4 eb                                      bl #0x30ebd4
0060328c  00 00 50 e2                                      subs r0, r0, #0
00603290  01 00 a0 13                                      movne r0, #1
00603294  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00603298  3c 13 2e 00 24 13 2e 00                          .byte 0x3c, 0x13, 0x2e, 0x00, 0x24, 0x13, 0x2e, 0x00

; FUNCTION 0x006032dc, declared_size=164, range_size=164, mode=arm
; class-group: glitch::video::CImageLoaderATC
; alias: _ZNK6glitch5video15CImageLoaderATC15loadTextureDataEPNS_2io9IReadFileERKN5boost13intrusive_ptrINS0_8ITextureEEERKNS0_12STextureDescE
; demangled: glitch::video::CImageLoaderATC::loadTextureData(glitch::io::IReadFile*, boost::intrusive_ptr<glitch::video::ITexture> const&, glitch::video::STextureDesc const&) const
; decoder-mode: arm
006032dc  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
006032e0  01 40 a0 e1                                      mov r4, r1
006032e4  24 d0 4d e2                                      sub sp, sp, #0x24
006032e8  00 10 91 e5                                      ldr r1, [r1]
006032ec  04 00 a0 e1                                      mov r0, r4
006032f0  03 80 a0 e1                                      mov r8, r3
006032f4  02 a0 a0 e1                                      mov sl, r2
006032f8  0f e0 a0 e1                                      mov lr, pc
006032fc  20 f0 91 e5                                      ldr pc, [r1, #0x20]
00603300  70 70 9f e5                                      ldr r7, [pc, #0x70]
00603304  70 50 9f e5                                      ldr r5, [pc, #0x70]
00603308  14 30 8d e2                                      add r3, sp, #0x14
0060330c  07 70 8f e0                                      add r7, pc, r7
00603310  05 50 97 e7                                      ldr r5, [r7, r5]
00603314  0c 00 40 e2                                      sub r0, r0, #0xc
00603318  10 00 8d e5                                      str r0, [sp, #0x10]
0060331c  08 50 85 e2                                      add r5, r5, #8
00603320  08 30 8d e5                                      str r3, [sp, #8]
00603324  04 50 8d e5                                      str r5, [sp, #4]
00603328  0c 80 8d e5                                      str r8, [sp, #0xc]
0060332c  04 60 8d e2                                      add r6, sp, #4
00603330  00 30 94 e5                                      ldr r3, [r4]
00603334  0c 10 a0 e3                                      mov r1, #0xc
00603338  00 20 a0 e3                                      mov r2, #0
0060333c  04 00 a0 e1                                      mov r0, r4
00603340  0f e0 a0 e1                                      mov lr, pc
00603344  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00603348  08 20 a0 e1                                      mov r2, r8
0060334c  0a 30 a0 e1                                      mov r3, sl
00603350  06 10 a0 e1                                      mov r1, r6
00603354  04 00 a0 e1                                      mov r0, r4
00603358  1c 14 00 eb                                      bl #0x6083d0
0060335c  00 40 a0 e1                                      mov r4, r0
00603360  06 00 a0 e1                                      mov r0, r6
00603364  04 50 8d e5                                      str r5, [sp, #4]
00603368  b7 10 00 eb                                      bl #0x60764c
0060336c  04 00 a0 e1                                      mov r0, r4
00603370  24 d0 8d e2                                      add sp, sp, #0x24
00603374  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
00603378  84 17 39 00 b4 35 00 00                          .byte 0x84, 0x17, 0x39, 0x00, 0xb4, 0x35, 0x00, 0x00

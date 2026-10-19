; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00603380, declared_size=44, range_size=44, mode=arm
; class-group: glitch::video::CImageLoaderBMP
; alias: _ZN6glitch5video15CImageLoaderBMPC2Ev
; demangled: glitch::video::CImageLoaderBMP::CImageLoaderBMP()
; decoder-mode: arm
00603380  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
00603384  1c 20 9f e5                                      ldr r2, [pc, #0x1c]
00603388  01 c0 a0 e3                                      mov ip, #1
0060338c  03 30 8f e0                                      add r3, pc, r3
00603390  02 20 93 e7                                      ldr r2, [r3, r2]
00603394  04 c0 80 e5                                      str ip, [r0, #4]
00603398  08 20 82 e2                                      add r2, r2, #8
0060339c  00 20 80 e5                                      str r2, [r0]
006033a0  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
006033a4  04 17 39 00 3c 1b 00 00                          .byte 0x04, 0x17, 0x39, 0x00, 0x3c, 0x1b, 0x00, 0x00

; FUNCTION 0x006033ac, declared_size=44, range_size=44, mode=arm
; class-group: glitch::video::CImageLoaderBMP
; alias: _ZN6glitch5video15CImageLoaderBMPC1Ev
; demangled: glitch::video::CImageLoaderBMP::CImageLoaderBMP()
; decoder-mode: arm
006033ac  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
006033b0  1c 20 9f e5                                      ldr r2, [pc, #0x1c]
006033b4  01 c0 a0 e3                                      mov ip, #1
006033b8  03 30 8f e0                                      add r3, pc, r3
006033bc  02 20 93 e7                                      ldr r2, [r3, r2]
006033c0  04 c0 80 e5                                      str ip, [r0, #4]
006033c4  08 20 82 e2                                      add r2, r2, #8
006033c8  00 20 80 e5                                      str r2, [r0]
006033cc  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
006033d0  d8 16 39 00 3c 1b 00 00                          .byte 0xd8, 0x16, 0x39, 0x00, 0x3c, 0x1b, 0x00, 0x00

; FUNCTION 0x006033d8, declared_size=60, range_size=60, mode=arm
; class-group: glitch::video::CImageLoaderBMP
; alias: _ZNK6glitch5video15CImageLoaderBMP21isALoadableFileFormatEPNS_2io9IReadFileE
; demangled: glitch::video::CImageLoaderBMP::isALoadableFileFormat(glitch::io::IReadFile*) const
; decoder-mode: arm
006033d8  04 e0 2d e5                                      str lr, [sp, #-4]!
006033dc  0c d0 4d e2                                      sub sp, sp, #0xc
006033e0  00 30 91 e5                                      ldr r3, [r1]
006033e4  01 00 a0 e1                                      mov r0, r1
006033e8  02 20 a0 e3                                      mov r2, #2
006033ec  06 10 8d e2                                      add r1, sp, #6
006033f0  0f e0 a0 e1                                      mov lr, pc
006033f4  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006033f8  b6 00 dd e1                                      ldrh r0, [sp, #6]
006033fc  42 3d 04 e3                                      movw r3, #0x4d42
00603400  03 00 50 e1                                      cmp r0, r3
00603404  00 00 a0 13                                      movne r0, #0
00603408  01 00 a0 03                                      moveq r0, #1
0060340c  0c d0 8d e2                                      add sp, sp, #0xc
00603410  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x00603448, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::CImageLoaderBMP
; alias: _ZN6glitch5video15CImageLoaderBMPD1Ev
; demangled: glitch::video::CImageLoaderBMP::~CImageLoaderBMP()
; decoder-mode: arm
00603448  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060346c, declared_size=20, range_size=20, mode=arm
; class-group: glitch::video::CImageLoaderBMP
; alias: _ZN6glitch5video15CImageLoaderBMPD0Ev
; demangled: glitch::video::CImageLoaderBMP::~CImageLoaderBMP()
; decoder-mode: arm
0060346c  10 40 2d e9                                      push {r4, lr}
00603470  00 40 a0 e1                                      mov r4, r0
00603474  8d 2b f4 eb                                      bl #0x30e2b0
00603478  04 00 a0 e1                                      mov r0, r4
0060347c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006034a0, declared_size=76, range_size=76, mode=arm
; class-group: glitch::video::CImageLoaderBMP
; alias: _ZNK6glitch5video15CImageLoaderBMP24isALoadableFileExtensionEPKc
; demangled: glitch::video::CImageLoaderBMP::isALoadableFileExtension(char const*) const
; decoder-mode: arm
006034a0  10 40 2d e9                                      push {r4, lr}
006034a4  01 00 a0 e1                                      mov r0, r1
006034a8  01 40 a0 e1                                      mov r4, r1
006034ac  30 10 9f e5                                      ldr r1, [pc, #0x30]
006034b0  01 10 8f e0                                      add r1, pc, r1
006034b4  c6 2d f4 eb                                      bl #0x30ebd4
006034b8  00 00 50 e3                                      cmp r0, #0
006034bc  01 00 00 0a                                      beq #0x6034c8
006034c0  01 00 a0 e3                                      mov r0, #1
006034c4  10 80 bd e8                                      pop {r4, pc}
006034c8  18 10 9f e5                                      ldr r1, [pc, #0x18]
006034cc  04 00 a0 e1                                      mov r0, r4
006034d0  01 10 8f e0                                      add r1, pc, r1
006034d4  be 2d f4 eb                                      bl #0x30ebd4
006034d8  00 00 50 e2                                      subs r0, r0, #0
006034dc  01 00 a0 13                                      movne r0, #1
006034e0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006034e4  00 11 2e 00 e8 10 2e 00                          .byte 0x00, 0x11, 0x2e, 0x00, 0xe8, 0x10, 0x2e, 0x00

; FUNCTION 0x006034ec, declared_size=3288, range_size=3288, mode=arm
; class-group: glitch::video::CImageLoaderBMP
; alias: _ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE
; demangled: glitch::video::CImageLoaderBMP::loadImage(glitch::io::IReadFile*) const
; decoder-mode: arm
006034ec  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006034f0  a4 d0 4d e2                                      sub sp, sp, #0xa4
006034f4  00 30 92 e5                                      ldr r3, [r2]
006034f8  02 70 a0 e1                                      mov r7, r2
006034fc  00 40 a0 e1                                      mov r4, r0
00603500  44 10 8d e2                                      add r1, sp, #0x44
00603504  02 00 a0 e1                                      mov r0, r2
00603508  36 20 a0 e3                                      mov r2, #0x36
0060350c  0f e0 a0 e1                                      mov lr, pc
00603510  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00603514  b4 24 dd e1                                      ldrh r2, [sp, #0x44]
00603518  90 6c 9f e5                                      ldr r6, [pc, #0xc90]
0060351c  42 3d 04 e3                                      movw r3, #0x4d42
00603520  03 00 52 e1                                      cmp r2, r3
00603524  06 60 8f e0                                      add r6, pc, r6
00603528  04 00 00 0a                                      beq #0x603540
0060352c  00 30 a0 e3                                      mov r3, #0
00603530  00 30 84 e5                                      str r3, [r4]
00603534  04 00 a0 e1                                      mov r0, r4
00603538  a4 d0 8d e2                                      add sp, sp, #0xa4
0060353c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00603540  b2 36 dd e1                                      ldrh r3, [sp, #0x62]
00603544  b4 26 dd e1                                      ldrh r2, [sp, #0x64]
00603548  02 38 83 e1                                      orr r3, r3, r2, lsl #16
0060354c  03 00 53 e3                                      cmp r3, #3
00603550  96 00 00 8a                                      bhi #0x6037b0
00603554  b6 26 dd e1                                      ldrh r2, [sp, #0x66]
00603558  b8 16 dd e1                                      ldrh r1, [sp, #0x68]
0060355c  00 30 97 e5                                      ldr r3, [r7]
00603560  07 00 a0 e1                                      mov r0, r7
00603564  01 18 82 e1                                      orr r1, r2, r1, lsl #16
00603568  00 20 61 e2                                      rsb r2, r1, #0
0060356c  03 20 02 e2                                      and r2, r2, #3
00603570  01 20 82 e0                                      add r2, r2, r1
00603574  22 18 a0 e1                                      lsr r1, r2, #0x10
00603578  b8 16 cd e1                                      strh r1, [sp, #0x68]
0060357c  b6 26 cd e1                                      strh r2, [sp, #0x66]
00603580  0f e0 a0 e1                                      mov lr, pc
00603584  24 f0 93 e5                                      ldr pc, [r3, #0x24]
00603588  b0 25 dd e1                                      ldrh r2, [sp, #0x50]
0060358c  be 34 dd e1                                      ldrh r3, [sp, #0x4e]
00603590  02 38 83 e1                                      orr r3, r3, r2, lsl #16
00603594  03 30 60 e0                                      rsb r3, r0, r3
00603598  23 31 a0 e1                                      lsr r3, r3, #2
0060359c  1c 30 8d e5                                      str r3, [sp, #0x1c]
006035a0  2b c3 fc eb                                      bl #0x534254
006035a4  2c 00 8d e5                                      str r0, [sp, #0x2c]
006035a8  01 00 a0 e3                                      mov r0, #1
006035ac  2d c3 fc eb                                      bl #0x534268
006035b0  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
006035b4  00 00 50 e3                                      cmp r0, #0
006035b8  20 00 8d 05                                      streq r0, [sp, #0x20]
006035bc  0b 00 00 0a                                      beq #0x6035f0
006035c0  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
006035c4  01 81 a0 e1                                      lsl r8, r1, #2
006035c8  08 00 a0 e1                                      mov r0, r8
006035cc  08 c4 fc eb                                      bl #0x5345f4
006035d0  00 50 a0 e1                                      mov r5, r0
006035d4  08 20 a0 e1                                      mov r2, r8
006035d8  00 30 97 e5                                      ldr r3, [r7]
006035dc  07 00 a0 e1                                      mov r0, r7
006035e0  05 10 a0 e1                                      mov r1, r5
006035e4  0f e0 a0 e1                                      mov lr, pc
006035e8  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006035ec  20 50 8d e5                                      str r5, [sp, #0x20]
006035f0  b6 36 dd e1                                      ldrh r3, [sp, #0x66]
006035f4  b8 26 dd e1                                      ldrh r2, [sp, #0x68]
006035f8  02 28 93 e1                                      orrs r2, r3, r2, lsl #16
006035fc  4a 02 00 0a                                      beq #0x603f2c
00603600  be 34 dd e1                                      ldrh r3, [sp, #0x4e]
00603604  b0 15 dd e1                                      ldrh r1, [sp, #0x50]
00603608  00 20 a0 e3                                      mov r2, #0
0060360c  01 18 83 e1                                      orr r1, r3, r1, lsl #16
00603610  07 00 a0 e1                                      mov r0, r7
00603614  00 30 97 e5                                      ldr r3, [r7]
00603618  0f e0 a0 e1                                      mov lr, pc
0060361c  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00603620  b6 35 dd e1                                      ldrh r3, [sp, #0x56]
00603624  b8 05 dd e1                                      ldrh r0, [sp, #0x58]
00603628  00 08 83 e1                                      orr r0, r3, r0, lsl #16
0060362c  2b 2b f4 eb                                      bl #0x30e2e0
00603630  00 50 a0 e1                                      mov r5, r0
00603634  b0 06 dd e1                                      ldrh r0, [sp, #0x60]
00603638  c9 2c f4 eb                                      bl #0x30e964
0060363c  3e 14 a0 e3                                      mov r1, #0x3e000000
00603640  c9 2d f4 eb                                      bl #0x30ed6c
00603644  00 10 a0 e1                                      mov r1, r0
00603648  05 00 a0 e1                                      mov r0, r5
0060364c  c6 2d f4 eb                                      bl #0x30ed6c
00603650  00 50 a0 e1                                      mov r5, r0
00603654  9c 2b f4 eb                                      bl #0x30e4cc
00603658  00 80 a0 e1                                      mov r8, r0
0060365c  c0 2c f4 eb                                      bl #0x30e964
00603660  00 10 a0 e1                                      mov r1, r0
00603664  05 00 a0 e1                                      mov r0, r5
00603668  4f 2b f4 eb                                      bl #0x30e3ac
0060366c  00 10 a0 e3                                      mov r1, #0
00603670  45 2a f4 eb                                      bl #0x30df8c
00603674  00 00 50 e3                                      cmp r0, #0
00603678  01 80 88 02                                      addeq r8, r8, #1
0060367c  c8 3f a0 e1                                      asr r3, r8, #0x1f
00603680  b8 c6 dd e1                                      ldrh ip, [sp, #0x68]
00603684  23 3f a0 e1                                      lsr r3, r3, #0x1e
00603688  03 10 88 e0                                      add r1, r8, r3
0060368c  03 10 01 e2                                      and r1, r1, #3
00603690  01 10 63 e0                                      rsb r1, r3, r1
00603694  04 10 61 e2                                      rsb r1, r1, #4
00603698  c1 2f a0 e1                                      asr r2, r1, #0x1f
0060369c  b6 06 dd e1                                      ldrh r0, [sp, #0x66]
006036a0  22 2f a0 e1                                      lsr r2, r2, #0x1e
006036a4  02 30 81 e0                                      add r3, r1, r2
006036a8  0c 08 80 e1                                      orr r0, r0, ip, lsl #16
006036ac  03 30 03 e2                                      and r3, r3, #3
006036b0  03 30 62 e0                                      rsb r3, r2, r3
006036b4  03 00 80 e2                                      add r0, r0, #3
006036b8  08 30 83 e0                                      add r3, r3, r8
006036bc  00 10 a0 e3                                      mov r1, #0
006036c0  03 00 c0 e3                                      bic r0, r0, #3
006036c4  28 30 8d e5                                      str r3, [sp, #0x28]
006036c8  b6 c2 fc eb                                      bl #0x5341a8
006036cc  b8 16 dd e1                                      ldrh r1, [sp, #0x68]
006036d0  b6 26 dd e1                                      ldrh r2, [sp, #0x66]
006036d4  00 50 a0 e1                                      mov r5, r0
006036d8  00 30 97 e5                                      ldr r3, [r7]
006036dc  01 28 82 e1                                      orr r2, r2, r1, lsl #16
006036e0  07 00 a0 e1                                      mov r0, r7
006036e4  05 10 a0 e1                                      mov r1, r5
006036e8  0f e0 a0 e1                                      mov lr, pc
006036ec  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006036f0  b2 36 dd e1                                      ldrh r3, [sp, #0x62]
006036f4  b4 26 dd e1                                      ldrh r2, [sp, #0x64]
006036f8  28 c0 9d e5                                      ldr ip, [sp, #0x28]
006036fc  02 38 83 e1                                      orr r3, r3, r2, lsl #16
00603700  01 00 53 e3                                      cmp r3, #1
00603704  0c 80 68 e0                                      rsb r8, r8, ip
00603708  3a 01 00 0a                                      beq #0x603bf8
0060370c  02 00 53 e3                                      cmp r3, #2
00603710  86 01 00 0a                                      beq #0x603d30
00603714  b0 36 dd e1                                      ldrh r3, [sp, #0x60]
00603718  00 20 a0 e3                                      mov r2, #0
0060371c  9c 20 8d e5                                      str r2, [sp, #0x9c]
00603720  01 30 43 e2                                      sub r3, r3, #1
00603724  1f 00 53 e3                                      cmp r3, #0x1f
00603728  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
0060372c  2f 01 00 ea                                      b #0x603bf0
00603730  d7 00 00 ea                                      b #0x603a94
00603734  2d 01 00 ea                                      b #0x603bf0
00603738  2c 01 00 ea                                      b #0x603bf0
0060373c  d4 00 00 ea                                      b #0x603a94
00603740  2a 01 00 ea                                      b #0x603bf0
00603744  29 01 00 ea                                      b #0x603bf0
00603748  28 01 00 ea                                      b #0x603bf0
0060374c  d0 00 00 ea                                      b #0x603a94
00603750  26 01 00 ea                                      b #0x603bf0
00603754  25 01 00 ea                                      b #0x603bf0
00603758  24 01 00 ea                                      b #0x603bf0
0060375c  23 01 00 ea                                      b #0x603bf0
00603760  22 01 00 ea                                      b #0x603bf0
00603764  21 01 00 ea                                      b #0x603bf0
00603768  20 01 00 ea                                      b #0x603bf0
0060376c  80 00 00 ea                                      b #0x603974
00603770  1e 01 00 ea                                      b #0x603bf0
00603774  1d 01 00 ea                                      b #0x603bf0
00603778  1c 01 00 ea                                      b #0x603bf0
0060377c  1b 01 00 ea                                      b #0x603bf0
00603780  1a 01 00 ea                                      b #0x603bf0
00603784  19 01 00 ea                                      b #0x603bf0
00603788  18 01 00 ea                                      b #0x603bf0
0060378c  3b 00 00 ea                                      b #0x603880
00603790  16 01 00 ea                                      b #0x603bf0
00603794  15 01 00 ea                                      b #0x603bf0
00603798  14 01 00 ea                                      b #0x603bf0
0060379c  13 01 00 ea                                      b #0x603bf0
006037a0  12 01 00 ea                                      b #0x603bf0
006037a4  11 01 00 ea                                      b #0x603bf0
006037a8  10 01 00 ea                                      b #0x603bf0
006037ac  04 00 00 ea                                      b #0x6037c4
006037b0  fc 09 9f e5                                      ldr r0, [pc, #0x9fc]
006037b4  03 10 a0 e3                                      mov r1, #3
006037b8  00 00 8f e0                                      add r0, pc, r0
006037bc  37 1d 00 eb                                      bl #0x60aca0
006037c0  59 ff ff ea                                      b #0x60352c
006037c4  b2 36 dd e1                                      ldrh r3, [sp, #0x62]
006037c8  b4 26 dd e1                                      ldrh r2, [sp, #0x64]
006037cc  02 38 83 e1                                      orr r3, r3, r2, lsl #16
006037d0  03 00 53 e3                                      cmp r3, #3
006037d4  14 02 00 0a                                      beq #0x60402c
006037d8  b8 15 dd e1                                      ldrh r1, [sp, #0x58]
006037dc  b6 35 dd e1                                      ldrh r3, [sp, #0x56]
006037e0  ba 25 dd e1                                      ldrh r2, [sp, #0x5a]
006037e4  0d 70 a0 e3                                      mov r7, #0xd
006037e8  01 38 83 e1                                      orr r3, r3, r1, lsl #16
006037ec  bc 15 dd e1                                      ldrh r1, [sp, #0x5c]
006037f0  01 28 82 e1                                      orr r2, r2, r1, lsl #16
006037f4  2c 00 a0 e3                                      mov r0, #0x2c
006037f8  00 10 a0 e3                                      mov r1, #0
006037fc  7c 30 8d e5                                      str r3, [sp, #0x7c]
00603800  80 20 8d e5                                      str r2, [sp, #0x80]
00603804  68 c2 fc eb                                      bl #0x5341ac
00603808  07 10 a0 e1                                      mov r1, r7
0060380c  00 60 a0 e1                                      mov r6, r0
00603810  7c 20 8d e2                                      add r2, sp, #0x7c
00603814  3d fa ff eb                                      bl #0x602110
00603818  06 10 a0 e1                                      mov r1, r6
0060381c  9c 00 8d e2                                      add r0, sp, #0x9c
00603820  fb fe ff eb                                      bl #0x603414
00603824  9c 00 9d e5                                      ldr r0, [sp, #0x9c]
00603828  00 00 50 e3                                      cmp r0, #0
0060382c  e0 01 00 0a                                      beq #0x603fb4
00603830  08 20 90 e5                                      ldr r2, [r0, #8]
00603834  20 30 90 e5                                      ldr r3, [r0, #0x20]
00603838  bc c5 dd e1                                      ldrh ip, [sp, #0x5c]
0060383c  00 20 8d e5                                      str r2, [sp]
00603840  ba 25 dd e1                                      ldrh r2, [sp, #0x5a]
00603844  b6 15 dd e1                                      ldrh r1, [sp, #0x56]
00603848  b8 e5 dd e1                                      ldrh lr, [sp, #0x58]
0060384c  18 60 90 e5                                      ldr r6, [r0, #0x18]
00603850  0c c8 82 e1                                      orr ip, r2, ip, lsl #16
00603854  0e e8 81 e1                                      orr lr, r1, lr, lsl #16
00603858  0c c0 8d e5                                      str ip, [sp, #0xc]
0060385c  07 00 a0 e1                                      mov r0, r7
00603860  01 c0 a0 e3                                      mov ip, #1
00603864  28 20 9d e5                                      ldr r2, [sp, #0x28]
00603868  05 10 a0 e1                                      mov r1, r5
0060386c  40 40 8d e9                                      stmib sp, {r6, lr}
00603870  10 c0 8d e5                                      str ip, [sp, #0x10]
00603874  4c d7 ff eb                                      bl #0x5f95ac
00603878  9c 30 9d e5                                      ldr r3, [sp, #0x9c]
0060387c  27 00 00 ea                                      b #0x603920
00603880  bc 15 dd e1                                      ldrh r1, [sp, #0x5c]
00603884  b8 05 dd e1                                      ldrh r0, [sp, #0x58]
00603888  ba 35 dd e1                                      ldrh r3, [sp, #0x5a]
0060388c  b6 25 dd e1                                      ldrh r2, [sp, #0x56]
00603890  01 38 83 e1                                      orr r3, r3, r1, lsl #16
00603894  00 28 82 e1                                      orr r2, r2, r0, lsl #16
00603898  00 10 a0 e3                                      mov r1, #0
0060389c  2c 00 a0 e3                                      mov r0, #0x2c
006038a0  88 30 8d e5                                      str r3, [sp, #0x88]
006038a4  84 20 8d e5                                      str r2, [sp, #0x84]
006038a8  3f c2 fc eb                                      bl #0x5341ac
006038ac  0a 10 a0 e3                                      mov r1, #0xa
006038b0  00 60 a0 e1                                      mov r6, r0
006038b4  84 20 8d e2                                      add r2, sp, #0x84
006038b8  14 fa ff eb                                      bl #0x602110
006038bc  06 10 a0 e1                                      mov r1, r6
006038c0  9c 00 8d e2                                      add r0, sp, #0x9c
006038c4  d2 fe ff eb                                      bl #0x603414
006038c8  9c 00 9d e5                                      ldr r0, [sp, #0x9c]
006038cc  00 00 50 e3                                      cmp r0, #0
006038d0  b7 01 00 0a                                      beq #0x603fb4
006038d4  08 20 90 e5                                      ldr r2, [r0, #8]
006038d8  20 30 90 e5                                      ldr r3, [r0, #0x20]
006038dc  bc c5 dd e1                                      ldrh ip, [sp, #0x5c]
006038e0  00 20 8d e5                                      str r2, [sp]
006038e4  ba 25 dd e1                                      ldrh r2, [sp, #0x5a]
006038e8  b6 15 dd e1                                      ldrh r1, [sp, #0x56]
006038ec  b8 e5 dd e1                                      ldrh lr, [sp, #0x58]
006038f0  0c c8 82 e1                                      orr ip, r2, ip, lsl #16
006038f4  28 20 9d e5                                      ldr r2, [sp, #0x28]
006038f8  18 60 90 e5                                      ldr r6, [r0, #0x18]
006038fc  0e e8 81 e1                                      orr lr, r1, lr, lsl #16
00603900  0b 00 a0 e3                                      mov r0, #0xb
00603904  0c c0 8d e5                                      str ip, [sp, #0xc]
00603908  05 10 a0 e1                                      mov r1, r5
0060390c  01 c0 a0 e3                                      mov ip, #1
00603910  40 40 8d e9                                      stmib sp, {r6, lr}
00603914  10 c0 8d e5                                      str ip, [sp, #0x10]
00603918  23 d7 ff eb                                      bl #0x5f95ac
0060391c  9c 30 9d e5                                      ldr r3, [sp, #0x9c]
00603920  00 00 53 e3                                      cmp r3, #0
00603924  00 30 84 e5                                      str r3, [r4]
00603928  04 20 93 15                                      ldrne r2, [r3, #4]
0060392c  01 20 82 12                                      addne r2, r2, #1
00603930  04 20 83 15                                      strne r2, [r3, #4]
00603934  9c 00 9d e5                                      ldr r0, [sp, #0x9c]
00603938  00 00 50 e3                                      cmp r0, #0
0060393c  00 00 00 0a                                      beq #0x603944
00603940  0f 67 f4 eb                                      bl #0x31d584
00603944  00 00 55 e3                                      cmp r5, #0
00603948  01 00 00 0a                                      beq #0x603954
0060394c  05 00 a0 e1                                      mov r0, r5
00603950  d8 29 f4 eb                                      bl #0x30e0b8
00603954  20 10 9d e5                                      ldr r1, [sp, #0x20]
00603958  00 00 51 e3                                      cmp r1, #0
0060395c  01 00 00 0a                                      beq #0x603968
00603960  01 00 a0 e1                                      mov r0, r1
00603964  47 c3 fc eb                                      bl #0x534688
00603968  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
0060396c  3d c2 fc eb                                      bl #0x534268
00603970  ef fe ff ea                                      b #0x603534
00603974  b2 36 dd e1                                      ldrh r3, [sp, #0x62]
00603978  b4 26 dd e1                                      ldrh r2, [sp, #0x64]
0060397c  02 38 83 e1                                      orr r3, r3, r2, lsl #16
00603980  03 00 53 e3                                      cmp r3, #3
00603984  02 69 a0 13                                      movne r6, #0x8000
00603988  09 80 a0 13                                      movne r8, #9
0060398c  08 70 a0 13                                      movne r7, #8
00603990  8a 01 00 0a                                      beq #0x603fc0
00603994  ba 25 dd e1                                      ldrh r2, [sp, #0x5a]
00603998  bc 15 dd e1                                      ldrh r1, [sp, #0x5c]
0060399c  28 30 9d e5                                      ldr r3, [sp, #0x28]
006039a0  01 08 82 e1                                      orr r0, r2, r1, lsl #16
006039a4  90 53 20 e0                                      mla r0, r0, r3, r5
006039a8  00 00 55 e1                                      cmp r5, r0
006039ac  b6 35 dd 01                                      ldrheq r3, [sp, #0x56]
006039b0  b8 05 dd 01                                      ldrheq r0, [sp, #0x58]
006039b4  00 38 83 01                                      orreq r3, r3, r0, lsl #16
006039b8  18 00 00 0a                                      beq #0x603a20
006039bc  b6 35 dd e1                                      ldrh r3, [sp, #0x56]
006039c0  b8 25 dd e1                                      ldrh r2, [sp, #0x58]
006039c4  28 a0 9d e5                                      ldr sl, [sp, #0x28]
006039c8  76 60 ff e6                                      uxth r6, r6
006039cc  00 e0 a0 e3                                      mov lr, #0
006039d0  02 38 83 e1                                      orr r3, r3, r2, lsl #16
006039d4  05 10 a0 e1                                      mov r1, r5
006039d8  00 00 53 e3                                      cmp r3, #0
006039dc  09 00 00 0a                                      beq #0x603a08
006039e0  00 20 a0 e3                                      mov r2, #0
006039e4  b2 c0 91 e1                                      ldrh ip, [r1, r2]
006039e8  01 30 53 e2                                      subs r3, r3, #1
006039ec  0c c0 86 e1                                      orr ip, r6, ip
006039f0  b2 c0 81 e1                                      strh ip, [r1, r2]
006039f4  02 20 82 e2                                      add r2, r2, #2
006039f8  f9 ff ff 1a                                      bne #0x6039e4
006039fc  b6 35 dd e1                                      ldrh r3, [sp, #0x56]
00603a00  b8 25 dd e1                                      ldrh r2, [sp, #0x58]
00603a04  02 38 83 e1                                      orr r3, r3, r2, lsl #16
00603a08  0a e0 8e e0                                      add lr, lr, sl
00603a0c  0e 10 85 e0                                      add r1, r5, lr
00603a10  01 00 50 e1                                      cmp r0, r1
00603a14  ef ff ff 1a                                      bne #0x6039d8
00603a18  ba 25 dd e1                                      ldrh r2, [sp, #0x5a]
00603a1c  bc 15 dd e1                                      ldrh r1, [sp, #0x5c]
00603a20  01 28 82 e1                                      orr r2, r2, r1, lsl #16
00603a24  2c 00 a0 e3                                      mov r0, #0x2c
00603a28  00 10 a0 e3                                      mov r1, #0
00603a2c  8c 30 8d e5                                      str r3, [sp, #0x8c]
00603a30  90 20 8d e5                                      str r2, [sp, #0x90]
00603a34  dc c1 fc eb                                      bl #0x5341ac
00603a38  08 10 a0 e1                                      mov r1, r8
00603a3c  00 60 a0 e1                                      mov r6, r0
00603a40  8c 20 8d e2                                      add r2, sp, #0x8c
00603a44  b1 f9 ff eb                                      bl #0x602110
00603a48  06 10 a0 e1                                      mov r1, r6
00603a4c  9c 00 8d e2                                      add r0, sp, #0x9c
00603a50  6f fe ff eb                                      bl #0x603414
00603a54  9c 00 9d e5                                      ldr r0, [sp, #0x9c]
00603a58  00 00 50 e3                                      cmp r0, #0
00603a5c  54 01 00 0a                                      beq #0x603fb4
00603a60  08 20 90 e5                                      ldr r2, [r0, #8]
00603a64  20 30 90 e5                                      ldr r3, [r0, #0x20]
00603a68  b6 15 dd e1                                      ldrh r1, [sp, #0x56]
00603a6c  00 20 8d e5                                      str r2, [sp]
00603a70  b8 e5 dd e1                                      ldrh lr, [sp, #0x58]
00603a74  ba 25 dd e1                                      ldrh r2, [sp, #0x5a]
00603a78  bc c5 dd e1                                      ldrh ip, [sp, #0x5c]
00603a7c  18 60 90 e5                                      ldr r6, [r0, #0x18]
00603a80  0e e8 81 e1                                      orr lr, r1, lr, lsl #16
00603a84  0c c8 82 e1                                      orr ip, r2, ip, lsl #16
00603a88  07 00 a0 e1                                      mov r0, r7
00603a8c  28 20 9d e5                                      ldr r2, [sp, #0x28]
00603a90  9b ff ff ea                                      b #0x603904
00603a94  bc 15 dd e1                                      ldrh r1, [sp, #0x5c]
00603a98  b8 05 dd e1                                      ldrh r0, [sp, #0x58]
00603a9c  ba 35 dd e1                                      ldrh r3, [sp, #0x5a]
00603aa0  b6 25 dd e1                                      ldrh r2, [sp, #0x56]
00603aa4  01 38 83 e1                                      orr r3, r3, r1, lsl #16
00603aa8  00 28 82 e1                                      orr r2, r2, r0, lsl #16
00603aac  00 10 a0 e3                                      mov r1, #0
00603ab0  2c 00 a0 e3                                      mov r0, #0x2c
00603ab4  98 30 8d e5                                      str r3, [sp, #0x98]
00603ab8  94 20 8d e5                                      str r2, [sp, #0x94]
00603abc  ba c1 fc eb                                      bl #0x5341ac
00603ac0  09 10 a0 e3                                      mov r1, #9
00603ac4  00 70 a0 e1                                      mov r7, r0
00603ac8  94 20 8d e2                                      add r2, sp, #0x94
00603acc  8f f9 ff eb                                      bl #0x602110
00603ad0  07 10 a0 e1                                      mov r1, r7
00603ad4  9c 00 8d e2                                      add r0, sp, #0x9c
00603ad8  4d fe ff eb                                      bl #0x603414
00603adc  9c 00 9d e5                                      ldr r0, [sp, #0x9c]
00603ae0  00 00 50 e3                                      cmp r0, #0
00603ae4  32 01 00 0a                                      beq #0x603fb4
00603ae8  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00603aec  82 80 a0 e1                                      lsl r8, r2, #1
00603af0  08 00 a0 e1                                      mov r0, r8
00603af4  be c2 fc eb                                      bl #0x5345f4
00603af8  b0 36 dd e1                                      ldrh r3, [sp, #0x60]
00603afc  00 70 a0 e1                                      mov r7, r0
00603b00  01 00 53 e3                                      cmp r3, #1
00603b04  62 01 00 0a                                      beq #0x604094
00603b08  a8 36 9f e5                                      ldr r3, [pc, #0x6a8]
00603b0c  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
00603b10  03 30 96 e7                                      ldr r3, [r6, r3]
00603b14  00 00 5c e3                                      cmp ip, #0
00603b18  18 12 93 e5                                      ldr r1, [r3, #0x218]
00603b1c  07 00 00 0a                                      beq #0x603b40
00603b20  20 20 9d e5                                      ldr r2, [sp, #0x20]
00603b24  00 30 a0 e3                                      mov r3, #0
00603b28  03 01 92 e7                                      ldr r0, [r2, r3, lsl #2]
00603b2c  01 00 80 e1                                      orr r0, r0, r1
00603b30  03 01 82 e7                                      str r0, [r2, r3, lsl #2]
00603b34  01 30 83 e2                                      add r3, r3, #1
00603b38  03 00 5c e1                                      cmp ip, r3
00603b3c  f9 ff ff 1a                                      bne #0x603b28
00603b40  01 c0 a0 e3                                      mov ip, #1
00603b44  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00603b48  0c c0 8d e5                                      str ip, [sp, #0xc]
00603b4c  00 c0 a0 e3                                      mov ip, #0
00603b50  10 c0 8d e5                                      str ip, [sp, #0x10]
00603b54  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
00603b58  00 21 a0 e1                                      lsl r2, r0, #2
00603b5c  20 10 9d e5                                      ldr r1, [sp, #0x20]
00603b60  0d 00 a0 e3                                      mov r0, #0xd
00603b64  09 30 a0 e3                                      mov r3, #9
00603b68  80 11 8d e8                                      stm sp, {r7, r8, ip}
00603b6c  8e d6 ff eb                                      bl #0x5f95ac
00603b70  ba 35 dd e1                                      ldrh r3, [sp, #0x5a]
00603b74  bc 95 dd e1                                      ldrh sb, [sp, #0x5c]
00603b78  b6 25 dd e1                                      ldrh r2, [sp, #0x56]
00603b7c  b8 65 dd e1                                      ldrh r6, [sp, #0x58]
00603b80  09 98 83 e1                                      orr sb, r3, sb, lsl #16
00603b84  9c 30 9d e5                                      ldr r3, [sp, #0x9c]
00603b88  06 68 82 e1                                      orr r6, r2, r6, lsl #16
00603b8c  06 10 a0 e1                                      mov r1, r6
00603b90  09 00 a0 e3                                      mov r0, #9
00603b94  08 80 93 e5                                      ldr r8, [r3, #8]
00603b98  60 a0 dd e5                                      ldrb sl, [sp, #0x60]
00603b9c  d2 a7 ff eb                                      bl #0x5edaec
00603ba0  96 0a 03 e0                                      mul r3, r6, sl
00603ba4  08 00 8d e5                                      str r0, [sp, #8]
00603ba8  07 30 83 e2                                      add r3, r3, #7
00603bac  a3 11 a0 e1                                      lsr r1, r3, #3
00603bb0  01 c0 a0 e3                                      mov ip, #1
00603bb4  0a 20 a0 e1                                      mov r2, sl
00603bb8  05 00 a0 e1                                      mov r0, r5
00603bbc  09 30 a0 e3                                      mov r3, #9
00603bc0  04 80 8d e5                                      str r8, [sp, #4]
00603bc4  0c 60 8d e5                                      str r6, [sp, #0xc]
00603bc8  10 90 8d e5                                      str sb, [sp, #0x10]
00603bcc  14 c0 8d e5                                      str ip, [sp, #0x14]
00603bd0  00 70 8d e5                                      str r7, [sp]
00603bd4  4a a9 ff eb                                      bl #0x5ee104
00603bd8  00 00 57 e3                                      cmp r7, #0
00603bdc  25 ff ff 0a                                      beq #0x603878
00603be0  07 00 a0 e1                                      mov r0, r7
00603be4  a7 c2 fc eb                                      bl #0x534688
00603be8  9c 30 9d e5                                      ldr r3, [sp, #0x9c]
00603bec  4b ff ff ea                                      b #0x603920
00603bf0  00 30 a0 e3                                      mov r3, #0
00603bf4  49 ff ff ea                                      b #0x603920
00603bf8  b6 15 dd e1                                      ldrh r1, [sp, #0x56]
00603bfc  b8 b5 dd e1                                      ldrh fp, [sp, #0x58]
00603c00  ba 35 dd e1                                      ldrh r3, [sp, #0x5a]
00603c04  bc 25 dd e1                                      ldrh r2, [sp, #0x5c]
00603c08  0b b8 81 e1                                      orr fp, r1, fp, lsl #16
00603c0c  0b b0 88 e0                                      add fp, r8, fp
00603c10  02 88 83 e1                                      orr r8, r3, r2, lsl #16
00603c14  98 0b 08 e0                                      mul r8, r8, fp
00603c18  b6 36 dd e1                                      ldrh r3, [sp, #0x66]
00603c1c  03 00 98 e2                                      adds r0, r8, #3
00603c20  b8 76 dd e1                                      ldrh r7, [sp, #0x68]
00603c24  06 00 88 42                                      addmi r0, r8, #6
00603c28  00 10 a0 e3                                      mov r1, #0
00603c2c  03 00 c0 e3                                      bic r0, r0, #3
00603c30  07 78 83 e1                                      orr r7, r3, r7, lsl #16
00603c34  5b c1 fc eb                                      bl #0x5341a8
00603c38  05 10 a0 e1                                      mov r1, r5
00603c3c  05 20 61 e0                                      rsb r2, r1, r5
00603c40  02 00 57 e1                                      cmp r7, r2
00603c44  00 a0 a0 e1                                      mov sl, r0
00603c48  08 80 80 e0                                      add r8, r0, r8
00603c4c  00 30 a0 e1                                      mov r3, r0
00603c50  00 90 a0 e3                                      mov sb, #0
00603c54  10 00 00 da                                      ble #0x603c9c
00603c58  03 00 58 e1                                      cmp r8, r3
00603c5c  0e 00 00 9a                                      bls #0x603c9c
00603c60  00 20 d1 e5                                      ldrb r2, [r1]
00603c64  00 00 52 e3                                      cmp r2, #0
00603c68  11 00 00 1a                                      bne #0x603cb4
00603c6c  01 00 d1 e5                                      ldrb r0, [r1, #1]
00603c70  01 e0 81 e2                                      add lr, r1, #1
00603c74  01 00 50 e3                                      cmp r0, #1
00603c78  07 00 00 0a                                      beq #0x603c9c
00603c7c  17 00 00 2a                                      bhs #0x603ce0
00603c80  01 90 89 e2                                      add sb, sb, #1
00603c84  9b a9 23 e0                                      mla r3, fp, sb, sl
00603c88  01 e0 8e e2                                      add lr, lr, #1
00603c8c  0e 10 a0 e1                                      mov r1, lr
00603c90  05 20 61 e0                                      rsb r2, r1, r5
00603c94  02 00 57 e1                                      cmp r7, r2
00603c98  ee ff ff ca                                      bgt #0x603c58
00603c9c  00 00 55 e3                                      cmp r5, #0
00603ca0  3d 01 00 0a                                      beq #0x60419c
00603ca4  05 00 a0 e1                                      mov r0, r5
00603ca8  02 29 f4 eb                                      bl #0x30e0b8
00603cac  0a 50 a0 e1                                      mov r5, sl
00603cb0  97 fe ff ea                                      b #0x603714
00603cb4  02 e0 81 e2                                      add lr, r1, #2
00603cb8  01 00 d1 e5                                      ldrb r0, [r1, #1]
00603cbc  f2 ff ff da                                      ble #0x603c8c
00603cc0  00 10 a0 e3                                      mov r1, #0
00603cc4  01 00 c3 e7                                      strb r0, [r3, r1]
00603cc8  01 10 81 e2                                      add r1, r1, #1
00603ccc  01 00 52 e1                                      cmp r2, r1
00603cd0  fb ff ff ca                                      bgt #0x603cc4
00603cd4  02 30 83 e0                                      add r3, r3, r2
00603cd8  0e 10 a0 e1                                      mov r1, lr
00603cdc  eb ff ff ea                                      b #0x603c90
00603ce0  02 00 50 e3                                      cmp r0, #2
00603ce4  a8 00 00 0a                                      beq #0x603f8c
00603ce8  01 c0 00 e2                                      and ip, r0, #1
00603cec  00 00 50 e3                                      cmp r0, #0
00603cf0  01 e0 8e e2                                      add lr, lr, #1
00603cf4  24 c0 8d e5                                      str ip, [sp, #0x24]
00603cf8  07 00 00 0a                                      beq #0x603d1c
00603cfc  02 c0 d1 e5                                      ldrb ip, [r1, #2]
00603d00  01 10 81 e2                                      add r1, r1, #1
00603d04  02 c0 c3 e7                                      strb ip, [r3, r2]
00603d08  01 20 82 e2                                      add r2, r2, #1
00603d0c  02 00 50 e1                                      cmp r0, r2
00603d10  f9 ff ff ca                                      bgt #0x603cfc
00603d14  00 30 83 e0                                      add r3, r3, r0
00603d18  00 e0 8e e0                                      add lr, lr, r0
00603d1c  24 00 9d e5                                      ldr r0, [sp, #0x24]
00603d20  00 00 50 e3                                      cmp r0, #0
00603d24  00 e0 8e c0                                      addgt lr, lr, r0
00603d28  0e 10 a0 e1                                      mov r1, lr
00603d2c  d7 ff ff ea                                      b #0x603c90
00603d30  b8 15 dd e1                                      ldrh r1, [sp, #0x58]
00603d34  b6 35 dd e1                                      ldrh r3, [sp, #0x56]
00603d38  ba 25 dd e1                                      ldrh r2, [sp, #0x5a]
00603d3c  bc 75 dd e1                                      ldrh r7, [sp, #0x5c]
00603d40  01 38 83 e1                                      orr r3, r3, r1, lsl #16
00603d44  01 30 83 e2                                      add r3, r3, #1
00603d48  a3 3f 83 e0                                      add r3, r3, r3, lsr #31
00603d4c  07 78 82 e1                                      orr r7, r2, r7, lsl #16
00603d50  c3 30 88 e0                                      add r3, r8, r3, asr #1
00603d54  97 03 07 e0                                      mul r7, r7, r3
00603d58  38 30 8d e5                                      str r3, [sp, #0x38]
00603d5c  b8 26 dd e1                                      ldrh r2, [sp, #0x68]
00603d60  b6 36 dd e1                                      ldrh r3, [sp, #0x66]
00603d64  03 00 97 e2                                      adds r0, r7, #3
00603d68  06 00 87 42                                      addmi r0, r7, #6
00603d6c  02 28 83 e1                                      orr r2, r3, r2, lsl #16
00603d70  00 10 a0 e3                                      mov r1, #0
00603d74  03 00 c0 e3                                      bic r0, r0, #3
00603d78  24 20 8d e5                                      str r2, [sp, #0x24]
00603d7c  09 c1 fc eb                                      bl #0x5341a8
00603d80  00 10 a0 e3                                      mov r1, #0
00603d84  07 70 80 e0                                      add r7, r0, r7
00603d88  30 00 8d e5                                      str r0, [sp, #0x30]
00603d8c  34 70 8d e5                                      str r7, [sp, #0x34]
00603d90  00 20 a0 e1                                      mov r2, r0
00603d94  05 e0 a0 e1                                      mov lr, r5
00603d98  04 30 a0 e3                                      mov r3, #4
00603d9c  3c 10 8d e5                                      str r1, [sp, #0x3c]
00603da0  0f c0 a0 e3                                      mov ip, #0xf
00603da4  24 00 9d e5                                      ldr r0, [sp, #0x24]
00603da8  05 10 6e e0                                      rsb r1, lr, r5
00603dac  01 00 50 e1                                      cmp r0, r1
00603db0  16 00 00 da                                      ble #0x603e10
00603db4  34 10 9d e5                                      ldr r1, [sp, #0x34]
00603db8  02 00 51 e1                                      cmp r1, r2
00603dbc  13 00 00 9a                                      bls #0x603e10
00603dc0  00 70 de e5                                      ldrb r7, [lr]
00603dc4  00 00 57 e3                                      cmp r7, #0
00603dc8  16 00 00 1a                                      bne #0x603e28
00603dcc  01 80 de e5                                      ldrb r8, [lr, #1]
00603dd0  01 10 8e e2                                      add r1, lr, #1
00603dd4  01 00 58 e3                                      cmp r8, #1
00603dd8  0c 00 00 0a                                      beq #0x603e10
00603ddc  2f 00 00 2a                                      bhs #0x603ea0
00603de0  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
00603de4  38 30 9d e5                                      ldr r3, [sp, #0x38]
00603de8  30 00 9d e5                                      ldr r0, [sp, #0x30]
00603dec  01 20 82 e2                                      add r2, r2, #1
00603df0  3c 20 8d e5                                      str r2, [sp, #0x3c]
00603df4  93 02 22 e0                                      mla r2, r3, r2, r0
00603df8  24 00 9d e5                                      ldr r0, [sp, #0x24]
00603dfc  01 e0 81 e2                                      add lr, r1, #1
00603e00  05 10 6e e0                                      rsb r1, lr, r5
00603e04  01 00 50 e1                                      cmp r0, r1
00603e08  04 30 a0 e3                                      mov r3, #4
00603e0c  e8 ff ff ca                                      bgt #0x603db4
00603e10  00 00 55 e3                                      cmp r5, #0
00603e14  64 00 00 0a                                      beq #0x603fac
00603e18  05 00 a0 e1                                      mov r0, r5
00603e1c  a5 28 f4 eb                                      bl #0x30e0b8
00603e20  30 50 9d e5                                      ldr r5, [sp, #0x30]
00603e24  3a fe ff ea                                      b #0x603714
00603e28  01 b0 de e5                                      ldrb fp, [lr, #1]
00603e2c  02 e0 8e e2                                      add lr, lr, #2
00603e30  2b 92 a0 e1                                      lsr sb, fp, #4
00603e34  0f b0 0b e2                                      and fp, fp, #0xf
00603e38  d9 ff ff da                                      ble #0x603da4
00603e3c  00 10 a0 e3                                      mov r1, #0
00603e40  0a 00 00 ea                                      b #0x603e70
00603e44  19 83 00 e0                                      and r8, r0, sb, lsl r3
00603e48  00 a0 d2 e5                                      ldrb sl, [r2]
00603e4c  04 00 53 e3                                      cmp r3, #4
00603e50  00 30 a0 e3                                      mov r3, #0
00603e54  00 00 ca e1                                      bic r0, sl, r0
00603e58  08 00 80 e1                                      orr r0, r0, r8
00603e5c  00 00 c2 e5                                      strb r0, [r2]
00603e60  0b 00 00 1a                                      bne #0x603e94
00603e64  01 10 81 e2                                      add r1, r1, #1
00603e68  01 00 57 e1                                      cmp r7, r1
00603e6c  cc ff ff da                                      ble #0x603da4
00603e70  1c 03 a0 e1                                      lsl r0, ip, r3
00603e74  00 00 53 e3                                      cmp r3, #0
00603e78  70 00 ef e6                                      uxtb r0, r0
00603e7c  f0 ff ff 1a                                      bne #0x603e44
00603e80  00 80 d2 e5                                      ldrb r8, [r2]
00603e84  0b 30 00 e0                                      and r3, r0, fp
00603e88  00 00 c8 e1                                      bic r0, r8, r0
00603e8c  03 00 80 e1                                      orr r0, r0, r3
00603e90  00 00 c2 e5                                      strb r0, [r2]
00603e94  01 20 82 e2                                      add r2, r2, #1
00603e98  04 30 a0 e3                                      mov r3, #4
00603e9c  f0 ff ff ea                                      b #0x603e64
00603ea0  02 00 58 e3                                      cmp r8, #2
00603ea4  2c 00 00 0a                                      beq #0x603f5c
00603ea8  00 00 58 e3                                      cmp r8, #0
00603eac  01 e0 81 e2                                      add lr, r1, #1
00603eb0  01 90 08 e2                                      and sb, r8, #1
00603eb4  19 00 00 0a                                      beq #0x603f20
00603eb8  01 a0 d1 e5                                      ldrb sl, [r1, #1]
00603ebc  07 00 a0 e1                                      mov r0, r7
00603ec0  2a a2 a0 e1                                      lsr sl, sl, #4
00603ec4  07 00 00 ea                                      b #0x603ee8
00603ec8  00 10 de e5                                      ldrb r1, [lr]
00603ecc  04 00 50 e3                                      cmp r0, #4
00603ed0  51 a0 a0 e1                                      asr sl, r1, r0
00603ed4  01 10 81 12                                      addne r1, r1, #1
00603ed8  0f a0 0a e2                                      and sl, sl, #0xf
00603edc  00 00 a0 03                                      moveq r0, #0
00603ee0  00 10 ce 15                                      strbne r1, [lr]
00603ee4  04 00 a0 13                                      movne r0, #4
00603ee8  1c 13 a0 e1                                      lsl r1, ip, r3
00603eec  71 10 ef e6                                      uxtb r1, r1
00603ef0  1a a3 01 e0                                      and sl, r1, sl, lsl r3
00603ef4  00 b0 d2 e5                                      ldrb fp, [r2]
00603ef8  04 00 53 e3                                      cmp r3, #4
00603efc  01 70 87 e2                                      add r7, r7, #1
00603f00  01 10 cb e1                                      bic r1, fp, r1
00603f04  0a 10 81 e1                                      orr r1, r1, sl
00603f08  00 30 a0 e3                                      mov r3, #0
00603f0c  00 10 c2 e5                                      strb r1, [r2]
00603f10  04 30 a0 13                                      movne r3, #4
00603f14  01 20 82 12                                      addne r2, r2, #1
00603f18  07 00 58 e1                                      cmp r8, r7
00603f1c  e9 ff ff ca                                      bgt #0x603ec8
00603f20  00 00 59 e3                                      cmp sb, #0
00603f24  09 e0 8e c0                                      addgt lr, lr, sb
00603f28  9d ff ff ea                                      b #0x603da4
00603f2c  00 30 97 e5                                      ldr r3, [r7]
00603f30  07 00 a0 e1                                      mov r0, r7
00603f34  0f e0 a0 e1                                      mov lr, pc
00603f38  20 f0 93 e5                                      ldr pc, [r3, #0x20]
00603f3c  be 34 dd e1                                      ldrh r3, [sp, #0x4e]
00603f40  b0 15 dd e1                                      ldrh r1, [sp, #0x50]
00603f44  01 28 83 e1                                      orr r2, r3, r1, lsl #16
00603f48  00 20 62 e0                                      rsb r2, r2, r0
00603f4c  22 08 a0 e1                                      lsr r0, r2, #0x10
00603f50  b8 06 cd e1                                      strh r0, [sp, #0x68]
00603f54  b6 26 cd e1                                      strh r2, [sp, #0x66]
00603f58  aa fd ff ea                                      b #0x603608
00603f5c  01 30 d1 e5                                      ldrb r3, [r1, #1]
00603f60  01 10 81 e2                                      add r1, r1, #1
00603f64  01 e0 d1 e5                                      ldrb lr, [r1, #1]
00603f68  c3 00 a0 e1                                      asr r0, r3, #1
00603f6c  01 00 13 e3                                      tst r3, #1
00603f70  38 30 9d e5                                      ldr r3, [sp, #0x38]
00603f74  93 0e 20 e0                                      mla r0, r3, lr, r0
00603f78  00 30 a0 13                                      movne r3, #0
00603f7c  04 30 a0 03                                      moveq r3, #4
00603f80  00 20 82 e0                                      add r2, r2, r0
00603f84  02 e0 81 e2                                      add lr, r1, #2
00603f88  85 ff ff ea                                      b #0x603da4
00603f8c  01 10 de e5                                      ldrb r1, [lr, #1]
00603f90  01 e0 8e e2                                      add lr, lr, #1
00603f94  01 20 de e5                                      ldrb r2, [lr, #1]
00603f98  01 30 83 e0                                      add r3, r3, r1
00603f9c  02 e0 8e e2                                      add lr, lr, #2
00603fa0  9b 32 23 e0                                      mla r3, fp, r2, r3
00603fa4  0e 10 a0 e1                                      mov r1, lr
00603fa8  38 ff ff ea                                      b #0x603c90
00603fac  30 50 9d e5                                      ldr r5, [sp, #0x30]
00603fb0  d7 fd ff ea                                      b #0x603714
00603fb4  00 30 a0 e3                                      mov r3, #0
00603fb8  00 30 84 e5                                      str r3, [r4]
00603fbc  5d fe ff ea                                      b #0x603938
00603fc0  20 00 9d e5                                      ldr r0, [sp, #0x20]
00603fc4  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
00603fc8  07 00 90 e8                                      ldm r0, {r0, r1, r2}
00603fcc  03 00 53 e3                                      cmp r3, #3
00603fd0  02 60 81 e1                                      orr r6, r1, r2
00603fd4  00 60 86 e1                                      orr r6, r6, r0
00603fd8  06 60 e0 e1                                      mvn r6, r6
00603fdc  76 60 ff e6                                      uxth r6, r6
00603fe0  01 a0 a0 d3                                      movle sl, #1
00603fe4  03 00 00 da                                      ble #0x603ff8
00603fe8  20 c0 9d e5                                      ldr ip, [sp, #0x20]
00603fec  0c a0 9c e5                                      ldr sl, [ip, #0xc]
00603ff0  06 a0 5a e0                                      subs sl, sl, r6
00603ff4  01 a0 a0 13                                      movne sl, #1
00603ff8  06 30 a0 e1                                      mov r3, r6
00603ffc  9b a6 ff eb                                      bl #0x5eda70
00604000  27 00 50 e3                                      cmp r0, #0x27
00604004  00 70 a0 e1                                      mov r7, r0
00604008  28 00 00 1a                                      bne #0x6040b0
0060400c  a8 01 9f e5                                      ldr r0, [pc, #0x1a8]
00604010  03 10 a0 e3                                      mov r1, #3
00604014  00 00 8f e0                                      add r0, pc, r0
00604018  20 1b 00 eb                                      bl #0x60aca0
0060401c  00 30 a0 e3                                      mov r3, #0
00604020  00 30 84 e5                                      str r3, [r4]
00604024  9c 00 9d e5                                      ldr r0, [sp, #0x9c]
00604028  42 fe ff ea                                      b #0x603938
0060402c  20 c0 9d e5                                      ldr ip, [sp, #0x20]
00604030  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
00604034  07 00 9c e8                                      ldm ip, {r0, r1, r2}
00604038  03 00 53 e3                                      cmp r3, #3
0060403c  02 60 81 e1                                      orr r6, r1, r2
00604040  00 60 86 e1                                      orr r6, r6, r0
00604044  06 60 e0 e1                                      mvn r6, r6
00604048  00 80 a0 d3                                      movle r8, #0
0060404c  03 00 00 da                                      ble #0x604060
00604050  20 c0 9d e5                                      ldr ip, [sp, #0x20]
00604054  0c 80 9c e5                                      ldr r8, [ip, #0xc]
00604058  06 80 58 e0                                      subs r8, r8, r6
0060405c  01 80 a0 13                                      movne r8, #1
00604060  06 30 a0 e1                                      mov r3, r6
00604064  81 a6 ff eb                                      bl #0x5eda70
00604068  27 00 50 e3                                      cmp r0, #0x27
0060406c  00 70 a0 e1                                      mov r7, r0
00604070  1c 00 00 1a                                      bne #0x6040e8
00604074  44 01 9f e5                                      ldr r0, [pc, #0x144]
00604078  03 10 a0 e3                                      mov r1, #3
0060407c  00 00 8f e0                                      add r0, pc, r0
00604080  06 1b 00 eb                                      bl #0x60aca0
00604084  00 30 a0 e3                                      mov r3, #0
00604088  00 30 84 e5                                      str r3, [r4]
0060408c  9c 00 9d e5                                      ldr r0, [sp, #0x9c]
00604090  28 fe ff ea                                      b #0x603938
00604094  00 30 e0 e3                                      mvn r3, #0
00604098  b2 30 c0 e1                                      strh r3, [r0, #2]
0060409c  14 31 9f e5                                      ldr r3, [pc, #0x114]
006040a0  03 30 96 e7                                      ldr r3, [r6, r3]
006040a4  78 31 93 e5                                      ldr r3, [r3, #0x178]
006040a8  b0 30 c0 e1                                      strh r3, [r0]
006040ac  af fe ff ea                                      b #0x603b70
006040b0  08 00 50 e3                                      cmp r0, #8
006040b4  09 80 a0 03                                      moveq r8, #9
006040b8  02 00 00 0a                                      beq #0x6040c8
006040bc  06 00 50 e3                                      cmp r0, #6
006040c0  00 80 a0 11                                      movne r8, r0
006040c4  07 80 a0 03                                      moveq r8, #7
006040c8  00 00 5a e3                                      cmp sl, #0
006040cc  34 00 00 1a                                      bne #0x6041a4
006040d0  b6 35 dd e1                                      ldrh r3, [sp, #0x56]
006040d4  b8 05 dd e1                                      ldrh r0, [sp, #0x58]
006040d8  ba 25 dd e1                                      ldrh r2, [sp, #0x5a]
006040dc  bc 15 dd e1                                      ldrh r1, [sp, #0x5c]
006040e0  00 38 83 e1                                      orr r3, r3, r0, lsl #16
006040e4  4d fe ff ea                                      b #0x603a20
006040e8  00 00 58 e3                                      cmp r8, #0
006040ec  01 00 00 0a                                      beq #0x6040f8
006040f0  00 00 56 e3                                      cmp r6, #0
006040f4  05 00 00 1a                                      bne #0x604110
006040f8  b6 35 dd e1                                      ldrh r3, [sp, #0x56]
006040fc  b8 05 dd e1                                      ldrh r0, [sp, #0x58]
00604100  ba 25 dd e1                                      ldrh r2, [sp, #0x5a]
00604104  bc 15 dd e1                                      ldrh r1, [sp, #0x5c]
00604108  00 38 83 e1                                      orr r3, r3, r0, lsl #16
0060410c  b7 fd ff ea                                      b #0x6037f0
00604110  ba 25 dd e1                                      ldrh r2, [sp, #0x5a]
00604114  bc 15 dd e1                                      ldrh r1, [sp, #0x5c]
00604118  28 00 9d e5                                      ldr r0, [sp, #0x28]
0060411c  01 c8 82 e1                                      orr ip, r2, r1, lsl #16
00604120  9c 50 2c e0                                      mla ip, ip, r0, r5
00604124  0c 00 55 e1                                      cmp r5, ip
00604128  b6 35 dd 01                                      ldrheq r3, [sp, #0x56]
0060412c  b8 05 dd 01                                      ldrheq r0, [sp, #0x58]
00604130  00 38 83 01                                      orreq r3, r3, r0, lsl #16
00604134  ad fd ff 0a                                      beq #0x6037f0
00604138  b6 35 dd e1                                      ldrh r3, [sp, #0x56]
0060413c  b8 25 dd e1                                      ldrh r2, [sp, #0x58]
00604140  28 80 9d e5                                      ldr r8, [sp, #0x28]
00604144  00 e0 a0 e3                                      mov lr, #0
00604148  05 10 a0 e1                                      mov r1, r5
0060414c  02 38 83 e1                                      orr r3, r3, r2, lsl #16
00604150  00 00 53 e3                                      cmp r3, #0
00604154  09 00 00 0a                                      beq #0x604180
00604158  00 20 a0 e3                                      mov r2, #0
0060415c  02 00 91 e7                                      ldr r0, [r1, r2]
00604160  01 30 53 e2                                      subs r3, r3, #1
00604164  06 00 80 e1                                      orr r0, r0, r6
00604168  02 00 81 e7                                      str r0, [r1, r2]
0060416c  04 20 82 e2                                      add r2, r2, #4
00604170  f9 ff ff 1a                                      bne #0x60415c
00604174  b6 35 dd e1                                      ldrh r3, [sp, #0x56]
00604178  b8 25 dd e1                                      ldrh r2, [sp, #0x58]
0060417c  02 38 83 e1                                      orr r3, r3, r2, lsl #16
00604180  08 e0 8e e0                                      add lr, lr, r8
00604184  0e 10 85 e0                                      add r1, r5, lr
00604188  01 00 5c e1                                      cmp ip, r1
0060418c  ef ff ff 1a                                      bne #0x604150
00604190  ba 25 dd e1                                      ldrh r2, [sp, #0x5a]
00604194  bc 15 dd e1                                      ldrh r1, [sp, #0x5c]
00604198  94 fd ff ea                                      b #0x6037f0
0060419c  0a 50 a0 e1                                      mov r5, sl
006041a0  5b fd ff ea                                      b #0x603714
006041a4  00 00 56 e3                                      cmp r6, #0
006041a8  c8 ff ff 0a                                      beq #0x6040d0
006041ac  f8 fd ff ea                                      b #0x603994
; mapping-symbol data/literal pool
006041b0  6c 15 39 00 08 0e 2e 00 34 1f 00 00 cc 05 2e 00  .byte 0x6c, 0x15, 0x39, 0x00, 0x08, 0x0e, 0x2e, 0x00, 0x34, 0x1f, 0x00, 0x00, 0xcc, 0x05, 0x2e, 0x00
006041c0  64 05 2e 00                                      .byte 0x64, 0x05, 0x2e, 0x00

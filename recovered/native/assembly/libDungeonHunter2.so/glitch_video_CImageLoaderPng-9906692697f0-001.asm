; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00604fd4, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::CImageLoaderPng
; alias: _ZN6glitch5video15CImageLoaderPngD1Ev
; demangled: glitch::video::CImageLoaderPng::~CImageLoaderPng()
; decoder-mode: arm
00604fd4  1e ff 2f e1                                      bx lr

; FUNCTION 0x00604ff8, declared_size=20, range_size=20, mode=arm
; class-group: glitch::video::CImageLoaderPng
; alias: _ZN6glitch5video15CImageLoaderPngD0Ev
; demangled: glitch::video::CImageLoaderPng::~CImageLoaderPng()
; decoder-mode: arm
00604ff8  10 40 2d e9                                      push {r4, lr}
00604ffc  00 40 a0 e1                                      mov r4, r0
00605000  aa 24 f4 eb                                      bl #0x30e2b0
00605004  04 00 a0 e1                                      mov r0, r4
00605008  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00605048, declared_size=148, range_size=148, mode=arm
; class-group: glitch::video::CImageLoaderPng
; alias: _ZNK6glitch5video15CImageLoaderPng21isALoadableFileFormatEPNS_2io9IReadFileE
; demangled: glitch::video::CImageLoaderPng::isALoadableFileFormat(glitch::io::IReadFile*) const
; decoder-mode: arm
00605048  70 40 2d e9                                      push {r4, r5, r6, lr}
0060504c  80 40 9f e5                                      ldr r4, [pc, #0x80]
00605050  80 50 9f e5                                      ldr r5, [pc, #0x80]
00605054  10 d0 4d e2                                      sub sp, sp, #0x10
00605058  04 40 8f e0                                      add r4, pc, r4
0060505c  05 30 94 e7                                      ldr r3, [r4, r5]
00605060  00 00 51 e3                                      cmp r1, #0
00605064  00 30 93 e5                                      ldr r3, [r3]
00605068  0c 30 8d e5                                      str r3, [sp, #0xc]
0060506c  09 00 00 0a                                      beq #0x605098
00605070  04 60 8d e2                                      add r6, sp, #4
00605074  01 00 a0 e1                                      mov r0, r1
00605078  00 30 91 e5                                      ldr r3, [r1]
0060507c  08 20 a0 e3                                      mov r2, #8
00605080  06 10 a0 e1                                      mov r1, r6
00605084  0f e0 a0 e1                                      mov lr, pc
00605088  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0060508c  08 00 50 e3                                      cmp r0, #8
00605090  00 20 a0 e1                                      mov r2, r0
00605094  07 00 00 0a                                      beq #0x6050b8
00605098  00 00 a0 e3                                      mov r0, #0
0060509c  05 30 94 e7                                      ldr r3, [r4, r5]
006050a0  0c 20 9d e5                                      ldr r2, [sp, #0xc]
006050a4  00 30 93 e5                                      ldr r3, [r3]
006050a8  03 00 52 e1                                      cmp r2, r3
006050ac  07 00 00 1a                                      bne #0x6050d0
006050b0  10 d0 8d e2                                      add sp, sp, #0x10
006050b4  70 80 bd e8                                      pop {r4, r5, r6, pc}
006050b8  06 00 a0 e1                                      mov r0, r6
006050bc  00 10 a0 e3                                      mov r1, #0
006050c0  43 fc 01 eb                                      bl #0x6841d4
006050c4  01 00 70 e2                                      rsbs r0, r0, #1
006050c8  00 00 a0 33                                      movlo r0, #0
006050cc  f2 ff ff ea                                      b #0x60509c
006050d0  8e 24 f4 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
006050d4  38 fa 38 00 ac 40 00 00                          .byte 0x38, 0xfa, 0x38, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x006050dc, declared_size=1392, range_size=1392, mode=arm
; class-group: glitch::video::CImageLoaderPng
; alias: _ZNK6glitch5video15CImageLoaderPng9loadImageEPNS_2io9IReadFileE
; demangled: glitch::video::CImageLoaderPng::loadImage(glitch::io::IReadFile*) const
; decoder-mode: arm
006050dc  3c 15 9f e5                                      ldr r1, [pc, #0x53c]
006050e0  3c 35 9f e5                                      ldr r3, [pc, #0x53c]
006050e4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006050e8  01 10 8f e0                                      add r1, pc, r1
006050ec  03 30 91 e7                                      ldr r3, [r1, r3]
006050f0  68 d0 4d e2                                      sub sp, sp, #0x68
006050f4  00 00 52 e3                                      cmp r2, #0
006050f8  00 30 93 e5                                      ldr r3, [r3]
006050fc  18 10 8d e5                                      str r1, [sp, #0x18]
00605100  1c 20 8d e5                                      str r2, [sp, #0x1c]
00605104  64 30 8d e5                                      str r3, [sp, #0x64]
00605108  00 30 a0 01                                      moveq r3, r0
0060510c  20 00 8d e5                                      str r0, [sp, #0x20]
00605110  00 20 83 05                                      streq r2, [r3]
00605114  1c 00 00 0a                                      beq #0x60518c
00605118  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
0060511c  5c 40 8d e2                                      add r4, sp, #0x5c
00605120  08 20 a0 e3                                      mov r2, #8
00605124  00 30 9c e5                                      ldr r3, [ip]
00605128  0c 00 a0 e1                                      mov r0, ip
0060512c  04 10 a0 e1                                      mov r1, r4
00605130  0f e0 a0 e1                                      mov lr, pc
00605134  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00605138  08 00 50 e3                                      cmp r0, #8
0060513c  00 20 a0 e1                                      mov r2, r0
00605140  1b 00 00 0a                                      beq #0x6051b4
00605144  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00605148  00 30 90 e5                                      ldr r3, [r0]
0060514c  0f e0 a0 e1                                      mov lr, pc
00605150  28 f0 93 e5                                      ldr pc, [r3, #0x28]
00605154  00 10 a0 e1                                      mov r1, r0
00605158  c8 04 9f e5                                      ldr r0, [pc, #0x4c8]
0060515c  03 20 a0 e3                                      mov r2, #3
00605160  00 00 8f e0                                      add r0, pc, r0
00605164  df 16 00 eb                                      bl #0x60ace8
00605168  20 10 9d e5                                      ldr r1, [sp, #0x20]
0060516c  00 30 a0 e3                                      mov r3, #0
00605170  00 30 81 e5                                      str r3, [r1]
00605174  24 30 8d e5                                      str r3, [sp, #0x24]
00605178  24 10 9d e5                                      ldr r1, [sp, #0x24]
0060517c  00 00 51 e3                                      cmp r1, #0
00605180  01 00 00 0a                                      beq #0x60518c
00605184  24 00 9d e5                                      ldr r0, [sp, #0x24]
00605188  fd 60 f4 eb                                      bl #0x31d584
0060518c  90 34 9f e5                                      ldr r3, [pc, #0x490]
00605190  18 c0 9d e5                                      ldr ip, [sp, #0x18]
00605194  64 20 9d e5                                      ldr r2, [sp, #0x64]
00605198  20 00 9d e5                                      ldr r0, [sp, #0x20]
0060519c  03 30 9c e7                                      ldr r3, [ip, r3]
006051a0  00 30 93 e5                                      ldr r3, [r3]
006051a4  03 00 52 e1                                      cmp r2, r3
006051a8  1b 01 00 1a                                      bne #0x60561c
006051ac  68 d0 8d e2                                      add sp, sp, #0x68
006051b0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
006051b4  00 10 a0 e3                                      mov r1, #0
006051b8  04 00 a0 e1                                      mov r0, r4
006051bc  04 fc 01 eb                                      bl #0x6841d4
006051c0  00 10 50 e2                                      subs r1, r0, #0
006051c4  9b 00 00 1a                                      bne #0x605438
006051c8  5c 04 9f e5                                      ldr r0, [pc, #0x45c]
006051cc  5c 24 9f e5                                      ldr r2, [pc, #0x45c]
006051d0  01 30 a0 e1                                      mov r3, r1
006051d4  00 00 8f e0                                      add r0, pc, r0
006051d8  02 20 8f e0                                      add r2, pc, r2
006051dc  1a 0b 02 eb                                      bl #0x687e4c
006051e0  00 00 50 e3                                      cmp r0, #0
006051e4  00 40 a0 e1                                      mov r4, r0
006051e8  58 00 8d e5                                      str r0, [sp, #0x58]
006051ec  a8 00 00 0a                                      beq #0x605494
006051f0  0b fe 01 eb                                      bl #0x684a24
006051f4  00 00 50 e3                                      cmp r0, #0
006051f8  00 40 a0 e1                                      mov r4, r0
006051fc  54 00 8d e5                                      str r0, [sp, #0x54]
00605200  c3 00 00 0a                                      beq #0x605514
00605204  58 00 9d e5                                      ldr r0, [sp, #0x58]
00605208  32 26 f4 eb                                      bl #0x30ead8
0060520c  00 40 50 e2                                      subs r4, r0, #0
00605210  96 00 00 1a                                      bne #0x605470
00605214  18 34 9f e5                                      ldr r3, [pc, #0x418]
00605218  18 c0 9d e5                                      ldr ip, [sp, #0x18]
0060521c  58 00 9d e5                                      ldr r0, [sp, #0x58]
00605220  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
00605224  03 20 9c e7                                      ldr r2, [ip, r3]
00605228  10 0b 02 eb                                      bl #0x687e70
0060522c  58 00 9d e5                                      ldr r0, [sp, #0x58]
00605230  08 10 a0 e3                                      mov r1, #8
00605234  26 fe 01 eb                                      bl #0x684ad4
00605238  58 00 9d e5                                      ldr r0, [sp, #0x58]
0060523c  54 10 9d e5                                      ldr r1, [sp, #0x54]
00605240  08 07 02 eb                                      bl #0x686e68
00605244  48 c0 8d e2                                      add ip, sp, #0x48
00605248  3c 30 8d e2                                      add r3, sp, #0x3c
0060524c  00 c0 8d e5                                      str ip, [sp]
00605250  58 00 9d e5                                      ldr r0, [sp, #0x58]
00605254  44 c0 8d e2                                      add ip, sp, #0x44
00605258  54 10 9d e5                                      ldr r1, [sp, #0x54]
0060525c  40 20 8d e2                                      add r2, sp, #0x40
00605260  04 c0 8d e5                                      str ip, [sp, #4]
00605264  10 40 8d e5                                      str r4, [sp, #0x10]
00605268  08 40 8d e5                                      str r4, [sp, #8]
0060526c  0c 40 8d e5                                      str r4, [sp, #0xc]
00605270  10 02 02 eb                                      bl #0x685ab8
00605274  44 30 9d e5                                      ldr r3, [sp, #0x44]
00605278  03 00 53 e3                                      cmp r3, #3
0060527c  40 30 9d e5                                      ldr r3, [sp, #0x40]
00605280  50 30 8d e5                                      str r3, [sp, #0x50]
00605284  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
00605288  4c 30 8d e5                                      str r3, [sp, #0x4c]
0060528c  cb 00 00 0a                                      beq #0x6055c0
00605290  48 30 9d e5                                      ldr r3, [sp, #0x48]
00605294  07 00 53 e3                                      cmp r3, #7
00605298  05 00 00 ca                                      bgt #0x6052b4
0060529c  44 30 9d e5                                      ldr r3, [sp, #0x44]
006052a0  00 00 53 e3                                      cmp r3, #0
006052a4  04 00 53 13                                      cmpne r3, #4
006052a8  b0 00 00 1a                                      bne #0x605570
006052ac  58 00 9d e5                                      ldr r0, [sp, #0x58]
006052b0  7d 0b 02 eb                                      bl #0x6880ac
006052b4  58 00 9d e5                                      ldr r0, [sp, #0x58]
006052b8  54 10 9d e5                                      ldr r1, [sp, #0x54]
006052bc  10 20 a0 e3                                      mov r2, #0x10
006052c0  63 ff 01 eb                                      bl #0x685054
006052c4  00 00 50 e3                                      cmp r0, #0
006052c8  a5 00 00 1a                                      bne #0x605564
006052cc  48 30 9d e5                                      ldr r3, [sp, #0x48]
006052d0  10 00 53 e3                                      cmp r3, #0x10
006052d4  bc 00 00 0a                                      beq #0x6055cc
006052d8  44 30 9d e5                                      ldr r3, [sp, #0x44]
006052dc  00 00 53 e3                                      cmp r3, #0
006052e0  04 00 53 13                                      cmpne r3, #4
006052e4  9b 00 00 0a                                      beq #0x605558
006052e8  50 50 8d e2                                      add r5, sp, #0x50
006052ec  58 00 9d e5                                      ldr r0, [sp, #0x58]
006052f0  54 10 9d e5                                      ldr r1, [sp, #0x54]
006052f4  4c 60 8d e2                                      add r6, sp, #0x4c
006052f8  c8 06 02 eb                                      bl #0x686e20
006052fc  00 40 a0 e3                                      mov r4, #0
00605300  05 20 a0 e1                                      mov r2, r5
00605304  54 10 9d e5                                      ldr r1, [sp, #0x54]
00605308  48 70 8d e2                                      add r7, sp, #0x48
0060530c  44 80 8d e2                                      add r8, sp, #0x44
00605310  06 30 a0 e1                                      mov r3, r6
00605314  58 00 9d e5                                      ldr r0, [sp, #0x58]
00605318  80 01 8d e8                                      stm sp, {r7, r8}
0060531c  08 40 8d e5                                      str r4, [sp, #8]
00605320  0c 40 8d e5                                      str r4, [sp, #0xc]
00605324  10 40 8d e5                                      str r4, [sp, #0x10]
00605328  e2 01 02 eb                                      bl #0x685ab8
0060532c  44 c0 9d e5                                      ldr ip, [sp, #0x44]
00605330  05 20 a0 e1                                      mov r2, r5
00605334  06 30 a0 e1                                      mov r3, r6
00605338  06 00 5c e3                                      cmp ip, #6
0060533c  54 10 9d e5                                      ldr r1, [sp, #0x54]
00605340  58 00 9d e5                                      ldr r0, [sp, #0x58]
00605344  0e 50 a0 03                                      moveq r5, #0xe
00605348  0a 50 a0 13                                      movne r5, #0xa
0060534c  80 01 8d e8                                      stm sp, {r7, r8}
00605350  08 40 8d e5                                      str r4, [sp, #8]
00605354  0c 40 8d e5                                      str r4, [sp, #0xc]
00605358  10 40 8d e5                                      str r4, [sp, #0x10]
0060535c  d5 01 02 eb                                      bl #0x685ab8
00605360  50 30 9d e5                                      ldr r3, [sp, #0x50]
00605364  04 10 a0 e1                                      mov r1, r4
00605368  2c 00 a0 e3                                      mov r0, #0x2c
0060536c  34 30 8d e5                                      str r3, [sp, #0x34]
00605370  4c 30 9d e5                                      ldr r3, [sp, #0x4c]
00605374  38 30 8d e5                                      str r3, [sp, #0x38]
00605378  8b bb fc eb                                      bl #0x5341ac
0060537c  05 10 a0 e1                                      mov r1, r5
00605380  34 20 8d e2                                      add r2, sp, #0x34
00605384  24 00 8d e5                                      str r0, [sp, #0x24]
00605388  60 f3 ff eb                                      bl #0x602110
0060538c  24 10 9d e5                                      ldr r1, [sp, #0x24]
00605390  04 00 51 e1                                      cmp r1, r4
00605394  78 00 00 0a                                      beq #0x60557c
00605398  04 30 91 e5                                      ldr r3, [r1, #4]
0060539c  24 20 9d e5                                      ldr r2, [sp, #0x24]
006053a0  04 10 a0 e1                                      mov r1, r4
006053a4  01 30 83 e2                                      add r3, r3, #1
006053a8  2c 20 8d e5                                      str r2, [sp, #0x2c]
006053ac  04 30 82 e5                                      str r3, [r2, #4]
006053b0  4c 00 9d e5                                      ldr r0, [sp, #0x4c]
006053b4  00 01 a0 e1                                      lsl r0, r0, #2
006053b8  7a bb fc eb                                      bl #0x5341a8
006053bc  00 00 50 e3                                      cmp r0, #0
006053c0  28 00 8d e5                                      str r0, [sp, #0x28]
006053c4  83 00 00 0a                                      beq #0x6055d8
006053c8  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
006053cc  24 10 9d e5                                      ldr r1, [sp, #0x24]
006053d0  00 00 52 e3                                      cmp r2, #0
006053d4  08 30 91 e5                                      ldr r3, [r1, #8]
006053d8  08 00 00 0a                                      beq #0x605400
006053dc  28 20 9d e5                                      ldr r2, [sp, #0x28]
006053e0  04 31 82 e7                                      str r3, [r2, r4, lsl #2]
006053e4  24 c0 9d e5                                      ldr ip, [sp, #0x24]
006053e8  4c 10 9d e5                                      ldr r1, [sp, #0x4c]
006053ec  01 40 84 e2                                      add r4, r4, #1
006053f0  18 20 9c e5                                      ldr r2, [ip, #0x18]
006053f4  04 00 51 e1                                      cmp r1, r4
006053f8  02 30 83 e0                                      add r3, r3, r2
006053fc  f6 ff ff 8a                                      bhi #0x6053dc
00605400  58 00 9d e5                                      ldr r0, [sp, #0x58]
00605404  b3 25 f4 eb                                      bl #0x30ead8
00605408  00 40 50 e2                                      subs r4, r0, #0
0060540c  2d 00 00 0a                                      beq #0x6054c8
00605410  54 10 8d e2                                      add r1, sp, #0x54
00605414  58 00 8d e2                                      add r0, sp, #0x58
00605418  00 20 a0 e3                                      mov r2, #0
0060541c  37 03 02 eb                                      bl #0x686100
00605420  20 10 9d e5                                      ldr r1, [sp, #0x20]
00605424  00 30 a0 e3                                      mov r3, #0
00605428  00 30 81 e5                                      str r3, [r1]
0060542c  28 00 9d e5                                      ldr r0, [sp, #0x28]
00605430  20 23 f4 eb                                      bl #0x30e0b8
00605434  52 ff ff ea                                      b #0x605184
00605438  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0060543c  00 30 90 e5                                      ldr r3, [r0]
00605440  0f e0 a0 e1                                      mov lr, pc
00605444  28 f0 93 e5                                      ldr pc, [r3, #0x28]
00605448  00 10 a0 e1                                      mov r1, r0
0060544c  e4 01 9f e5                                      ldr r0, [pc, #0x1e4]
00605450  03 20 a0 e3                                      mov r2, #3
00605454  00 00 8f e0                                      add r0, pc, r0
00605458  22 16 00 eb                                      bl #0x60ace8
0060545c  20 20 9d e5                                      ldr r2, [sp, #0x20]
00605460  00 30 a0 e3                                      mov r3, #0
00605464  00 30 82 e5                                      str r3, [r2]
00605468  24 30 8d e5                                      str r3, [sp, #0x24]
0060546c  41 ff ff ea                                      b #0x605178
00605470  54 10 8d e2                                      add r1, sp, #0x54
00605474  58 00 8d e2                                      add r0, sp, #0x58
00605478  00 20 a0 e3                                      mov r2, #0
0060547c  1f 03 02 eb                                      bl #0x686100
00605480  20 10 9d e5                                      ldr r1, [sp, #0x20]
00605484  00 30 a0 e3                                      mov r3, #0
00605488  00 30 81 e5                                      str r3, [r1]
0060548c  24 30 8d e5                                      str r3, [sp, #0x24]
00605490  38 ff ff ea                                      b #0x605178
00605494  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00605498  00 30 90 e5                                      ldr r3, [r0]
0060549c  0f e0 a0 e1                                      mov lr, pc
006054a0  28 f0 93 e5                                      ldr pc, [r3, #0x28]
006054a4  00 10 a0 e1                                      mov r1, r0
006054a8  8c 01 9f e5                                      ldr r0, [pc, #0x18c]
006054ac  03 20 a0 e3                                      mov r2, #3
006054b0  00 00 8f e0                                      add r0, pc, r0
006054b4  0b 16 00 eb                                      bl #0x60ace8
006054b8  20 30 9d e5                                      ldr r3, [sp, #0x20]
006054bc  24 40 8d e5                                      str r4, [sp, #0x24]
006054c0  00 40 83 e5                                      str r4, [r3]
006054c4  2b ff ff ea                                      b #0x605178
006054c8  58 00 9d e5                                      ldr r0, [sp, #0x58]
006054cc  28 10 9d e5                                      ldr r1, [sp, #0x28]
006054d0  68 50 8d e2                                      add r5, sp, #0x68
006054d4  06 06 02 eb                                      bl #0x686cf4
006054d8  10 00 35 e5                                      ldr r0, [r5, #-0x10]!
006054dc  04 10 a0 e1                                      mov r1, r4
006054e0  3b 03 02 eb                                      bl #0x6861d4
006054e4  04 20 a0 e1                                      mov r2, r4
006054e8  05 00 a0 e1                                      mov r0, r5
006054ec  54 10 8d e2                                      add r1, sp, #0x54
006054f0  02 03 02 eb                                      bl #0x686100
006054f4  20 30 9d e5                                      ldr r3, [sp, #0x20]
006054f8  24 20 9d e5                                      ldr r2, [sp, #0x24]
006054fc  00 20 83 e5                                      str r2, [r3]
00605500  2c c0 9d e5                                      ldr ip, [sp, #0x2c]
00605504  04 30 9c e5                                      ldr r3, [ip, #4]
00605508  01 30 83 e2                                      add r3, r3, #1
0060550c  04 30 8c e5                                      str r3, [ip, #4]
00605510  c5 ff ff ea                                      b #0x60542c
00605514  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00605518  00 30 90 e5                                      ldr r3, [r0]
0060551c  0f e0 a0 e1                                      mov lr, pc
00605520  28 f0 93 e5                                      ldr pc, [r3, #0x28]
00605524  00 10 a0 e1                                      mov r1, r0
00605528  10 01 9f e5                                      ldr r0, [pc, #0x110]
0060552c  03 20 a0 e3                                      mov r2, #3
00605530  00 00 8f e0                                      add r0, pc, r0
00605534  eb 15 00 eb                                      bl #0x60ace8
00605538  58 00 8d e2                                      add r0, sp, #0x58
0060553c  04 10 a0 e1                                      mov r1, r4
00605540  04 20 a0 e1                                      mov r2, r4
00605544  ed 02 02 eb                                      bl #0x686100
00605548  20 c0 9d e5                                      ldr ip, [sp, #0x20]
0060554c  24 40 8d e5                                      str r4, [sp, #0x24]
00605550  00 40 8c e5                                      str r4, [ip]
00605554  07 ff ff ea                                      b #0x605178
00605558  58 00 9d e5                                      ldr r0, [sp, #0x58]
0060555c  e0 0a 02 eb                                      bl #0x6880e4
00605560  60 ff ff ea                                      b #0x6052e8
00605564  58 00 9d e5                                      ldr r0, [sp, #0x58]
00605568  d5 0a 02 eb                                      bl #0x6880c4
0060556c  56 ff ff ea                                      b #0x6052cc
00605570  58 00 9d e5                                      ldr r0, [sp, #0x58]
00605574  67 39 02 eb                                      bl #0x693b18
00605578  4d ff ff ea                                      b #0x6052b4
0060557c  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00605580  00 30 90 e5                                      ldr r3, [r0]
00605584  0f e0 a0 e1                                      mov lr, pc
00605588  28 f0 93 e5                                      ldr pc, [r3, #0x28]
0060558c  00 10 a0 e1                                      mov r1, r0
00605590  ac 00 9f e5                                      ldr r0, [pc, #0xac]
00605594  03 20 a0 e3                                      mov r2, #3
00605598  00 00 8f e0                                      add r0, pc, r0
0060559c  d1 15 00 eb                                      bl #0x60ace8
006055a0  24 10 9d e5                                      ldr r1, [sp, #0x24]
006055a4  58 00 8d e2                                      add r0, sp, #0x58
006055a8  01 20 a0 e1                                      mov r2, r1
006055ac  d3 02 02 eb                                      bl #0x686100
006055b0  24 20 9d e5                                      ldr r2, [sp, #0x24]
006055b4  20 30 9d e5                                      ldr r3, [sp, #0x20]
006055b8  00 20 83 e5                                      str r2, [r3]
006055bc  ed fe ff ea                                      b #0x605178
006055c0  58 00 9d e5                                      ldr r0, [sp, #0x58]
006055c4  a5 0a 02 eb                                      bl #0x688060
006055c8  30 ff ff ea                                      b #0x605290
006055cc  58 00 9d e5                                      ldr r0, [sp, #0x58]
006055d0  63 0a 02 eb                                      bl #0x687f64
006055d4  3f ff ff ea                                      b #0x6052d8
006055d8  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
006055dc  00 30 90 e5                                      ldr r3, [r0]
006055e0  0f e0 a0 e1                                      mov lr, pc
006055e4  28 f0 93 e5                                      ldr pc, [r3, #0x28]
006055e8  00 10 a0 e1                                      mov r1, r0
006055ec  54 00 9f e5                                      ldr r0, [pc, #0x54]
006055f0  03 20 a0 e3                                      mov r2, #3
006055f4  00 00 8f e0                                      add r0, pc, r0
006055f8  ba 15 00 eb                                      bl #0x60ace8
006055fc  28 10 9d e5                                      ldr r1, [sp, #0x28]
00605600  58 00 8d e2                                      add r0, sp, #0x58
00605604  01 20 a0 e1                                      mov r2, r1
00605608  bc 02 02 eb                                      bl #0x686100
0060560c  28 30 9d e5                                      ldr r3, [sp, #0x28]
00605610  20 c0 9d e5                                      ldr ip, [sp, #0x20]
00605614  00 30 8c e5                                      str r3, [ip]
00605618  d6 fe ff ea                                      b #0x605178
0060561c  3b 23 f4 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00605620  a8 f9 38 00 ac 40 00 00 70 f6 2d 00 3c f6 2d 00  .byte 0xa8, 0xf9, 0x38, 0x00, 0xac, 0x40, 0x00, 0x00, 0x70, 0xf6, 0x2d, 0x00, 0x3c, 0xf6, 0x2d, 0x00
00605630  6c 04 00 00 d8 2d 00 00 9c f3 2d 00 68 f3 2d 00  .byte 0x6c, 0x04, 0x00, 0x00, 0xd8, 0x2d, 0x00, 0x00, 0x9c, 0xf3, 0x2d, 0x00, 0x68, 0xf3, 0x2d, 0x00
00605640  20 f3 2d 00 28 f3 2d 00 94 f2 2d 00              .byte 0x20, 0xf3, 0x2d, 0x00, 0x28, 0xf3, 0x2d, 0x00, 0x94, 0xf2, 0x2d, 0x00

; FUNCTION 0x00605674, declared_size=96, range_size=96, mode=arm
; class-group: glitch::video::CImageLoaderPng
; alias: _ZNK6glitch5video15CImageLoaderPng24isALoadableFileExtensionEPKc
; demangled: glitch::video::CImageLoaderPng::isALoadableFileExtension(char const*) const
; decoder-mode: arm
00605674  10 40 2d e9                                      push {r4, lr}
00605678  01 00 a0 e1                                      mov r0, r1
0060567c  2e 10 a0 e3                                      mov r1, #0x2e
00605680  67 23 f4 eb                                      bl #0x30e424
00605684  00 40 50 e2                                      subs r4, r0, #0
00605688  0d 00 00 0a                                      beq #0x6056c4
0060568c  38 10 9f e5                                      ldr r1, [pc, #0x38]
00605690  01 10 8f e0                                      add r1, pc, r1
00605694  20 23 f4 eb                                      bl #0x30e31c
00605698  00 00 50 e3                                      cmp r0, #0
0060569c  01 00 00 1a                                      bne #0x6056a8
006056a0  01 00 a0 e3                                      mov r0, #1
006056a4  10 80 bd e8                                      pop {r4, pc}
006056a8  20 10 9f e5                                      ldr r1, [pc, #0x20]
006056ac  04 00 a0 e1                                      mov r0, r4
006056b0  01 10 8f e0                                      add r1, pc, r1
006056b4  18 23 f4 eb                                      bl #0x30e31c
006056b8  01 00 70 e2                                      rsbs r0, r0, #1
006056bc  00 00 a0 33                                      movlo r0, #0
006056c0  10 80 bd e8                                      pop {r4, pc}
006056c4  04 00 a0 e1                                      mov r0, r4
006056c8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006056cc  78 f2 2d 00 60 f2 2d 00                          .byte 0x78, 0xf2, 0x2d, 0x00, 0x60, 0xf2, 0x2d, 0x00

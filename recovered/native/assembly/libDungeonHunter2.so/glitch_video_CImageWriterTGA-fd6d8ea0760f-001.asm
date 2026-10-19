; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006072e0, declared_size=44, range_size=44, mode=arm
; class-group: glitch::video::CImageWriterTGA
; alias: _ZN6glitch5video15CImageWriterTGAC2Ev
; demangled: glitch::video::CImageWriterTGA::CImageWriterTGA()
; decoder-mode: arm
006072e0  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
006072e4  1c 20 9f e5                                      ldr r2, [pc, #0x1c]
006072e8  01 c0 a0 e3                                      mov ip, #1
006072ec  03 30 8f e0                                      add r3, pc, r3
006072f0  02 20 93 e7                                      ldr r2, [r3, r2]
006072f4  04 c0 80 e5                                      str ip, [r0, #4]
006072f8  08 20 82 e2                                      add r2, r2, #8
006072fc  00 20 80 e5                                      str r2, [r0]
00607300  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00607304  a4 d7 38 00 e4 17 00 00                          .byte 0xa4, 0xd7, 0x38, 0x00, 0xe4, 0x17, 0x00, 0x00

; FUNCTION 0x0060730c, declared_size=44, range_size=44, mode=arm
; class-group: glitch::video::CImageWriterTGA
; alias: _ZN6glitch5video15CImageWriterTGAC1Ev
; demangled: glitch::video::CImageWriterTGA::CImageWriterTGA()
; decoder-mode: arm
0060730c  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
00607310  1c 20 9f e5                                      ldr r2, [pc, #0x1c]
00607314  01 c0 a0 e3                                      mov ip, #1
00607318  03 30 8f e0                                      add r3, pc, r3
0060731c  02 20 93 e7                                      ldr r2, [r3, r2]
00607320  04 c0 80 e5                                      str ip, [r0, #4]
00607324  08 20 82 e2                                      add r2, r2, #8
00607328  00 20 80 e5                                      str r2, [r0]
0060732c  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00607330  78 d7 38 00 e4 17 00 00                          .byte 0x78, 0xd7, 0x38, 0x00, 0xe4, 0x17, 0x00, 0x00

; FUNCTION 0x00607338, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::CImageWriterTGA
; alias: _ZN6glitch5video15CImageWriterTGAD1Ev
; demangled: glitch::video::CImageWriterTGA::~CImageWriterTGA()
; decoder-mode: arm
00607338  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060735c, declared_size=20, range_size=20, mode=arm
; class-group: glitch::video::CImageWriterTGA
; alias: _ZN6glitch5video15CImageWriterTGAD0Ev
; demangled: glitch::video::CImageWriterTGA::~CImageWriterTGA()
; decoder-mode: arm
0060735c  10 40 2d e9                                      push {r4, lr}
00607360  00 40 a0 e1                                      mov r4, r0
00607364  d1 1b f4 eb                                      bl #0x30e2b0
00607368  04 00 a0 e1                                      mov r0, r4
0060736c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00607370, declared_size=624, range_size=624, mode=arm
; class-group: glitch::video::CImageWriterTGA
; alias: _ZNK6glitch5video15CImageWriterTGA10writeImageEPNS_2io10IWriteFileERKN5boost13intrusive_ptrINS0_6CImageEEEj
; demangled: glitch::video::CImageWriterTGA::writeImage(glitch::io::IWriteFile*, boost::intrusive_ptr<glitch::video::CImage> const&, unsigned int) const
; decoder-mode: arm
00607370  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00607374  54 92 9f e5                                      ldr sb, [pc, #0x254]
00607378  54 02 9f e5                                      ldr r0, [pc, #0x254]
0060737c  64 d0 4d e2                                      sub sp, sp, #0x64
00607380  00 30 a0 e3                                      mov r3, #0
00607384  09 90 8f e0                                      add sb, pc, sb
00607388  30 30 cd e5                                      strb r3, [sp, #0x30]
0060738c  00 c0 99 e7                                      ldr ip, [sb, r0]
00607390  18 00 8d e5                                      str r0, [sp, #0x18]
00607394  30 00 9d e5                                      ldr r0, [sp, #0x30]
00607398  00 c0 9c e5                                      ldr ip, [ip]
0060739c  02 40 a0 e1                                      mov r4, r2
006073a0  13 04 d7 e7                                      bfi r0, r3, #8, #0x10
006073a4  00 20 92 e5                                      ldr r2, [r2]
006073a8  30 00 8d e5                                      str r0, [sp, #0x30]
006073ac  02 00 a0 e3                                      mov r0, #2
006073b0  5c c0 8d e5                                      str ip, [sp, #0x5c]
006073b4  2e 00 cd e5                                      strb r0, [sp, #0x2e]
006073b8  37 30 cd e5                                      strb r3, [sp, #0x37]
006073bc  2c 30 cd e5                                      strb r3, [sp, #0x2c]
006073c0  2d 30 cd e5                                      strb r3, [sp, #0x2d]
006073c4  2f 30 cd e5                                      strb r3, [sp, #0x2f]
006073c8  33 30 cd e5                                      strb r3, [sp, #0x33]
006073cc  34 30 cd e5                                      strb r3, [sp, #0x34]
006073d0  35 30 cd e5                                      strb r3, [sp, #0x35]
006073d4  36 30 cd e5                                      strb r3, [sp, #0x36]
006073d8  b0 31 d2 e1                                      ldrh r3, [r2, #0x10]
006073dc  01 50 a0 e1                                      mov r5, r1
006073e0  b8 33 cd e1                                      strh r3, [sp, #0x38]
006073e4  b4 c1 d2 e1                                      ldrh ip, [r2, #0x14]
006073e8  20 30 a0 e3                                      mov r3, #0x20
006073ec  3d 30 cd e5                                      strb r3, [sp, #0x3d]
006073f0  e0 31 9f e5                                      ldr r3, [pc, #0x1e0]
006073f4  ba c3 cd e1                                      strh ip, [sp, #0x3a]
006073f8  20 b0 92 e5                                      ldr fp, [r2, #0x20]
006073fc  03 30 99 e7                                      ldr r3, [sb, r3]
00607400  28 20 a0 e3                                      mov r2, #0x28
00607404  92 3b 23 e0                                      mla r3, r2, fp, r3
00607408  16 30 d3 e5                                      ldrb r3, [r3, #0x16]
0060740c  10 00 53 e3                                      cmp r3, #0x10
00607410  62 00 00 0a                                      beq #0x6075a0
00607414  18 00 53 e3                                      cmp r3, #0x18
00607418  0c 20 a0 13                                      movne r2, #0xc
0060741c  3c 30 cd 05                                      strbeq r3, [sp, #0x3c]
00607420  0b 30 a0 03                                      moveq r3, #0xb
00607424  1c 20 8d 15                                      strne r2, [sp, #0x1c]
00607428  1c 30 8d 05                                      streq r3, [sp, #0x1c]
0060742c  00 30 95 e5                                      ldr r3, [r5]
00607430  05 00 a0 e1                                      mov r0, r5
00607434  2c 10 8d e2                                      add r1, sp, #0x2c
00607438  12 20 a0 e3                                      mov r2, #0x12
0060743c  0f e0 a0 e1                                      mov lr, pc
00607440  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00607444  12 00 50 e3                                      cmp r0, #0x12
00607448  09 00 00 0a                                      beq #0x607474
0060744c  00 40 a0 e3                                      mov r4, #0
00607450  18 00 9d e5                                      ldr r0, [sp, #0x18]
00607454  5c 20 9d e5                                      ldr r2, [sp, #0x5c]
00607458  00 30 99 e7                                      ldr r3, [sb, r0]
0060745c  04 00 a0 e1                                      mov r0, r4
00607460  00 30 93 e5                                      ldr r3, [r3]
00607464  03 00 52 e1                                      cmp r2, r3
00607468  57 00 00 1a                                      bne #0x6075cc
0060746c  64 d0 8d e2                                      add sp, sp, #0x64
00607470  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00607474  00 30 94 e5                                      ldr r3, [r4]
00607478  08 70 93 e5                                      ldr r7, [r3, #8]
0060747c  00 00 57 e3                                      cmp r7, #0
00607480  f1 ff ff 0a                                      beq #0x60744c
00607484  b8 13 dd e1                                      ldrh r1, [sp, #0x38]
00607488  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0060748c  18 a0 93 e5                                      ldr sl, [r3, #0x18]
00607490  95 99 ff eb                                      bl #0x5edaec
00607494  00 40 a0 e1                                      mov r4, r0
00607498  6d b3 fc eb                                      bl #0x534254
0060749c  20 00 8d e5                                      str r0, [sp, #0x20]
006074a0  01 00 a0 e3                                      mov r0, #1
006074a4  6f b3 fc eb                                      bl #0x534268
006074a8  04 00 a0 e1                                      mov r0, r4
006074ac  50 b4 fc eb                                      bl #0x5345f4
006074b0  ba 63 dd e1                                      ldrh r6, [sp, #0x3a]
006074b4  00 80 a0 e1                                      mov r8, r0
006074b8  00 00 56 e3                                      cmp r6, #0
006074bc  1e 00 00 0a                                      beq #0x60753c
006074c0  24 90 8d e5                                      str sb, [sp, #0x24]
006074c4  00 60 a0 e3                                      mov r6, #0
006074c8  1c 90 9d e5                                      ldr sb, [sp, #0x1c]
006074cc  04 00 00 ea                                      b #0x6074e4
006074d0  ba 33 dd e1                                      ldrh r3, [sp, #0x3a]
006074d4  01 60 86 e2                                      add r6, r6, #1
006074d8  0a 70 87 e0                                      add r7, r7, sl
006074dc  06 00 53 e1                                      cmp r3, r6
006074e0  14 00 00 9a                                      bls #0x607538
006074e4  b8 c3 dd e1                                      ldrh ip, [sp, #0x38]
006074e8  07 10 a0 e1                                      mov r1, r7
006074ec  0a 20 a0 e1                                      mov r2, sl
006074f0  08 c0 8d e5                                      str ip, [sp, #8]
006074f4  01 c0 a0 e3                                      mov ip, #1
006074f8  09 30 a0 e1                                      mov r3, sb
006074fc  0c c0 8d e5                                      str ip, [sp, #0xc]
00607500  0b 00 a0 e1                                      mov r0, fp
00607504  00 c0 a0 e3                                      mov ip, #0
00607508  10 c0 8d e5                                      str ip, [sp, #0x10]
0060750c  00 80 8d e5                                      str r8, [sp]
00607510  04 40 8d e5                                      str r4, [sp, #4]
00607514  24 c8 ff eb                                      bl #0x5f95ac
00607518  00 30 95 e5                                      ldr r3, [r5]
0060751c  05 00 a0 e1                                      mov r0, r5
00607520  08 10 a0 e1                                      mov r1, r8
00607524  04 20 a0 e1                                      mov r2, r4
00607528  0f e0 a0 e1                                      mov lr, pc
0060752c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00607530  00 00 54 e1                                      cmp r4, r0
00607534  e5 ff ff 0a                                      beq #0x6074d0
00607538  24 90 9d e5                                      ldr sb, [sp, #0x24]
0060753c  98 c0 9f e5                                      ldr ip, [pc, #0x98]
00607540  00 40 a0 e3                                      mov r4, #0
00607544  40 40 8d e5                                      str r4, [sp, #0x40]
00607548  44 40 8d e5                                      str r4, [sp, #0x44]
0060754c  0c c0 8f e0                                      add ip, pc, ip
00607550  48 e0 8d e2                                      add lr, sp, #0x48
00607554  0f 00 bc e8                                      ldm ip!, {r0, r1, r2, r3}
00607558  0f 00 ae e8                                      stm lr!, {r0, r1, r2, r3}
0060755c  b0 c0 dc e1                                      ldrh ip, [ip]
00607560  05 00 a0 e1                                      mov r0, r5
00607564  40 10 8d e2                                      add r1, sp, #0x40
00607568  b0 c0 ce e1                                      strh ip, [lr]
0060756c  00 30 95 e5                                      ldr r3, [r5]
00607570  1a 20 a0 e3                                      mov r2, #0x1a
00607574  0f e0 a0 e1                                      mov lr, pc
00607578  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0060757c  19 00 50 e3                                      cmp r0, #0x19
00607580  0c 00 00 ca                                      bgt #0x6075b8
00607584  00 00 58 e3                                      cmp r8, #0
00607588  01 00 00 0a                                      beq #0x607594
0060758c  08 00 a0 e1                                      mov r0, r8
00607590  3c b4 fc eb                                      bl #0x534688
00607594  20 00 9d e5                                      ldr r0, [sp, #0x20]
00607598  32 b3 fc eb                                      bl #0x534268
0060759c  ab ff ff ea                                      b #0x607450
006075a0  3c 30 cd e5                                      strb r3, [sp, #0x3c]
006075a4  08 00 a0 e3                                      mov r0, #8
006075a8  21 30 a0 e3                                      mov r3, #0x21
006075ac  3d 30 cd e5                                      strb r3, [sp, #0x3d]
006075b0  1c 00 8d e5                                      str r0, [sp, #0x1c]
006075b4  9c ff ff ea                                      b #0x60742c
006075b8  ba 43 dd e1                                      ldrh r4, [sp, #0x3a]
006075bc  06 00 54 e1                                      cmp r4, r6
006075c0  00 40 a0 23                                      movhs r4, #0
006075c4  01 40 a0 33                                      movlo r4, #1
006075c8  ed ff ff ea                                      b #0x607584
006075cc  4f 1b f4 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
006075d0  0c d7 38 00 ac 40 00 00 34 1f 00 00 44 d5 2d 00  .byte 0x0c, 0xd7, 0x38, 0x00, 0xac, 0x40, 0x00, 0x00, 0x34, 0x1f, 0x00, 0x00, 0x44, 0xd5, 0x2d, 0x00

; FUNCTION 0x006075e0, declared_size=76, range_size=76, mode=arm
; class-group: glitch::video::CImageWriterTGA
; alias: _ZNK6glitch5video15CImageWriterTGA25isAWriteableFileExtensionEPKc
; demangled: glitch::video::CImageWriterTGA::isAWriteableFileExtension(char const*) const
; decoder-mode: arm
006075e0  10 40 2d e9                                      push {r4, lr}
006075e4  01 00 a0 e1                                      mov r0, r1
006075e8  01 40 a0 e1                                      mov r4, r1
006075ec  30 10 9f e5                                      ldr r1, [pc, #0x30]
006075f0  01 10 8f e0                                      add r1, pc, r1
006075f4  76 1d f4 eb                                      bl #0x30ebd4
006075f8  00 00 50 e3                                      cmp r0, #0
006075fc  01 00 00 0a                                      beq #0x607608
00607600  01 00 a0 e3                                      mov r0, #1
00607604  10 80 bd e8                                      pop {r4, pc}
00607608  18 10 9f e5                                      ldr r1, [pc, #0x18]
0060760c  04 00 a0 e1                                      mov r0, r4
00607610  01 10 8f e0                                      add r1, pc, r1
00607614  6e 1d f4 eb                                      bl #0x30ebd4
00607618  00 00 50 e2                                      subs r0, r0, #0
0060761c  01 00 a0 13                                      movne r0, #1
00607620  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00607624  48 0b 2c 00 98 d4 2d 00                          .byte 0x48, 0x0b, 0x2c, 0x00, 0x98, 0xd4, 0x2d, 0x00

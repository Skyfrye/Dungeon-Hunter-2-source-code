; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006b3e78, declared_size=44, range_size=44, mode=arm
; class-group: glitch::io::CFileList
; alias: _ZNK6glitch2io9CFileList12getFileCountEv
; demangled: glitch::io::CFileList::getFileCount() const
; decoder-mode: arm
006b3e78  24 20 90 e5                                      ldr r2, [r0, #0x24]
006b3e7c  20 30 90 e5                                      ldr r3, [r0, #0x20]
006b3e80  02 30 63 e0                                      rsb r3, r3, r2
006b3e84  c3 31 a0 e1                                      asr r3, r3, #3
006b3e88  83 21 83 e0                                      add r2, r3, r3, lsl #3
006b3e8c  02 23 82 e0                                      add r2, r2, r2, lsl #6
006b3e90  82 21 83 e0                                      add r2, r3, r2, lsl #3
006b3e94  82 27 82 e0                                      add r2, r2, r2, lsl #15
006b3e98  82 31 83 e0                                      add r3, r3, r2, lsl #3
006b3e9c  00 00 63 e2                                      rsb r0, r3, #0
006b3ea0  1e ff 2f e1                                      bx lr

; FUNCTION 0x006b3ea4, declared_size=64, range_size=64, mode=arm
; class-group: glitch::io::CFileList
; alias: _ZNK6glitch2io9CFileList11getFileNameEj
; demangled: glitch::io::CFileList::getFileName(unsigned int) const
; decoder-mode: arm
006b3ea4  20 30 90 e5                                      ldr r3, [r0, #0x20]
006b3ea8  24 20 90 e5                                      ldr r2, [r0, #0x24]
006b3eac  02 20 63 e0                                      rsb r2, r3, r2
006b3eb0  c2 21 a0 e1                                      asr r2, r2, #3
006b3eb4  82 01 82 e0                                      add r0, r2, r2, lsl #3
006b3eb8  00 03 80 e0                                      add r0, r0, r0, lsl #6
006b3ebc  80 01 82 e0                                      add r0, r2, r0, lsl #3
006b3ec0  80 07 80 e0                                      add r0, r0, r0, lsl #15
006b3ec4  80 21 82 e0                                      add r2, r2, r0, lsl #3
006b3ec8  00 20 62 e2                                      rsb r2, r2, #0
006b3ecc  02 00 51 e1                                      cmp r1, r2
006b3ed0  38 20 a0 33                                      movlo r2, #0x38
006b3ed4  92 31 23 30                                      mlalo r3, r2, r1, r3
006b3ed8  00 00 a0 23                                      movhs r0, #0
006b3edc  14 00 93 35                                      ldrlo r0, [r3, #0x14]
006b3ee0  1e ff 2f e1                                      bx lr

; FUNCTION 0x006b3ee4, declared_size=64, range_size=64, mode=arm
; class-group: glitch::io::CFileList
; alias: _ZNK6glitch2io9CFileList11isDirectoryEj
; demangled: glitch::io::CFileList::isDirectory(unsigned int) const
; decoder-mode: arm
006b3ee4  20 30 90 e5                                      ldr r3, [r0, #0x20]
006b3ee8  24 20 90 e5                                      ldr r2, [r0, #0x24]
006b3eec  02 20 63 e0                                      rsb r2, r3, r2
006b3ef0  c2 21 a0 e1                                      asr r2, r2, #3
006b3ef4  82 01 82 e0                                      add r0, r2, r2, lsl #3
006b3ef8  00 03 80 e0                                      add r0, r0, r0, lsl #6
006b3efc  80 01 82 e0                                      add r0, r2, r0, lsl #3
006b3f00  80 07 80 e0                                      add r0, r0, r0, lsl #15
006b3f04  80 21 82 e0                                      add r2, r2, r0, lsl #3
006b3f08  00 20 62 e2                                      rsb r2, r2, #0
006b3f0c  02 00 51 e1                                      cmp r1, r2
006b3f10  38 20 a0 33                                      movlo r2, #0x38
006b3f14  92 31 23 30                                      mlalo r3, r2, r1, r3
006b3f18  00 00 a0 23                                      movhs r0, #0
006b3f1c  34 00 d3 35                                      ldrblo r0, [r3, #0x34]
006b3f20  1e ff 2f e1                                      bx lr

; FUNCTION 0x006b3fe0, declared_size=80, range_size=80, mode=arm
; class-group: glitch::io::CFileList
; alias: _ZN6glitch2io9CFileListD1Ev
; demangled: glitch::io::CFileList::~CFileList()
; decoder-mode: arm
006b3fe0  40 30 9f e5                                      ldr r3, [pc, #0x40]
006b3fe4  40 20 9f e5                                      ldr r2, [pc, #0x40]
006b3fe8  10 40 2d e9                                      push {r4, lr}
006b3fec  03 30 8f e0                                      add r3, pc, r3
006b3ff0  02 20 93 e7                                      ldr r2, [r3, r2]
006b3ff4  00 40 a0 e1                                      mov r4, r0
006b3ff8  08 20 82 e2                                      add r2, r2, #8
006b3ffc  20 20 80 e4                                      str r2, [r0], #0x20
006b4000  e5 ff ff eb                                      bl #0x6b3f9c
006b4004  08 30 84 e2                                      add r3, r4, #8
006b4008  14 00 93 e5                                      ldr r0, [r3, #0x14]
006b400c  03 00 50 e1                                      cmp r0, r3
006b4010  02 00 00 0a                                      beq #0x6b4020
006b4014  00 00 50 e3                                      cmp r0, #0
006b4018  00 00 00 0a                                      beq #0x6b4020
006b401c  0b 71 f1 eb                                      bl #0x310450
006b4020  04 00 a0 e1                                      mov r0, r4
006b4024  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006b4028  a4 0a 2e 00 64 4b 00 00                          .byte 0xa4, 0x0a, 0x2e, 0x00, 0x64, 0x4b, 0x00, 0x00

; FUNCTION 0x006b4030, declared_size=28, range_size=28, mode=arm
; class-group: glitch::io::CFileList
; alias: _ZN6glitch2io9CFileListD0Ev
; demangled: glitch::io::CFileList::~CFileList()
; decoder-mode: arm
006b4030  10 40 2d e9                                      push {r4, lr}
006b4034  00 40 a0 e1                                      mov r4, r0
006b4038  e8 ff ff eb                                      bl #0x6b3fe0
006b403c  04 00 a0 e1                                      mov r0, r4
006b4040  9a 68 f1 eb                                      bl #0x30e2b0
006b4044  04 00 a0 e1                                      mov r0, r4
006b4048  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006b40a0, declared_size=232, range_size=232, mode=arm
; class-group: glitch::io::CFileList
; alias: _ZN6glitch2io9CFileList15getFullFileNameEj
; demangled: glitch::io::CFileList::getFullFileName(unsigned int)
; decoder-mode: arm
006b40a0  70 40 2d e9                                      push {r4, r5, r6, lr}
006b40a4  20 30 90 e5                                      ldr r3, [r0, #0x20]
006b40a8  24 20 90 e5                                      ldr r2, [r0, #0x24]
006b40ac  00 40 a0 e1                                      mov r4, r0
006b40b0  02 20 63 e0                                      rsb r2, r3, r2
006b40b4  c2 21 a0 e1                                      asr r2, r2, #3
006b40b8  82 01 82 e0                                      add r0, r2, r2, lsl #3
006b40bc  00 03 80 e0                                      add r0, r0, r0, lsl #6
006b40c0  80 01 82 e0                                      add r0, r2, r0, lsl #3
006b40c4  80 07 80 e0                                      add r0, r0, r0, lsl #15
006b40c8  80 21 82 e0                                      add r2, r2, r0, lsl #3
006b40cc  00 20 62 e2                                      rsb r2, r2, #0
006b40d0  02 00 51 e1                                      cmp r1, r2
006b40d4  20 00 00 2a                                      bhs #0x6b415c
006b40d8  38 50 a0 e3                                      mov r5, #0x38
006b40dc  95 01 05 e0                                      mul r5, r5, r1
006b40e0  05 30 83 e0                                      add r3, r3, r5
006b40e4  2c 00 93 e5                                      ldr r0, [r3, #0x2c]
006b40e8  28 10 93 e5                                      ldr r1, [r3, #0x28]
006b40ec  10 c0 93 e5                                      ldr ip, [r3, #0x10]
006b40f0  14 20 93 e5                                      ldr r2, [r3, #0x14]
006b40f4  01 10 60 e0                                      rsb r1, r0, r1
006b40f8  0c 20 62 e0                                      rsb r2, r2, ip
006b40fc  02 00 51 e1                                      cmp r1, r2
006b4100  14 00 00 2a                                      bhs #0x6b4158
006b4104  18 00 83 e2                                      add r0, r3, #0x18
006b4108  08 20 84 e2                                      add r2, r4, #8
006b410c  02 00 50 e1                                      cmp r0, r2
006b4110  05 00 00 0a                                      beq #0x6b412c
006b4114  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
006b4118  18 20 94 e5                                      ldr r2, [r4, #0x18]
006b411c  99 b2 f1 eb                                      bl #0x320b88
006b4120  20 30 94 e5                                      ldr r3, [r4, #0x20]
006b4124  05 30 83 e0                                      add r3, r3, r5
006b4128  18 00 83 e2                                      add r0, r3, #0x18
006b412c  18 10 94 e5                                      ldr r1, [r4, #0x18]
006b4130  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
006b4134  01 20 62 e0                                      rsb r2, r2, r1
006b4138  03 00 52 e3                                      cmp r2, #3
006b413c  08 00 00 8a                                      bhi #0x6b4164
006b4140  10 20 93 e5                                      ldr r2, [r3, #0x10]
006b4144  14 10 93 e5                                      ldr r1, [r3, #0x14]
006b4148  3f b2 f1 eb                                      bl #0x320a4c
006b414c  20 30 94 e5                                      ldr r3, [r4, #0x20]
006b4150  05 50 83 e0                                      add r5, r3, r5
006b4154  2c 00 95 e5                                      ldr r0, [r5, #0x2c]
006b4158  70 80 bd e8                                      pop {r4, r5, r6, pc}
006b415c  00 00 a0 e3                                      mov r0, #0
006b4160  70 80 bd e8                                      pop {r4, r5, r6, pc}
006b4164  18 10 9f e5                                      ldr r1, [pc, #0x18]
006b4168  01 10 8f e0                                      add r1, pc, r1
006b416c  01 20 81 e2                                      add r2, r1, #1
006b4170  35 b2 f1 eb                                      bl #0x320a4c
006b4174  20 30 94 e5                                      ldr r3, [r4, #0x20]
006b4178  05 30 83 e0                                      add r3, r3, r5
006b417c  18 00 83 e2                                      add r0, r3, #0x18
006b4180  ee ff ff ea                                      b #0x6b4140
; mapping-symbol data/literal pool
006b4184  f0 ca 20 00                                      .byte 0xf0, 0xca, 0x20, 0x00

; FUNCTION 0x006b4418, declared_size=104, range_size=104, mode=arm
; class-group: glitch::io::CFileList
; alias: _ZN6glitch2io9CFileListC1Ev
; demangled: glitch::io::CFileList::CFileList()
; decoder-mode: arm
006b4418  58 30 9f e5                                      ldr r3, [pc, #0x58]
006b441c  58 10 9f e5                                      ldr r1, [pc, #0x58]
006b4420  10 40 2d e9                                      push {r4, lr}
006b4424  03 30 8f e0                                      add r3, pc, r3
006b4428  01 10 93 e7                                      ldr r1, [r3, r1]
006b442c  00 40 a0 e1                                      mov r4, r0
006b4430  00 20 a0 e1                                      mov r2, r0
006b4434  08 10 81 e2                                      add r1, r1, #8
006b4438  01 00 a0 e3                                      mov r0, #1
006b443c  04 00 84 e5                                      str r0, [r4, #4]
006b4440  08 10 82 e4                                      str r1, [r2], #8
006b4444  02 00 a0 e1                                      mov r0, r2
006b4448  18 20 84 e5                                      str r2, [r4, #0x18]
006b444c  1c 20 84 e5                                      str r2, [r4, #0x1c]
006b4450  10 10 a0 e3                                      mov r1, #0x10
006b4454  53 b1 f1 eb                                      bl #0x3209a8
006b4458  18 20 94 e5                                      ldr r2, [r4, #0x18]
006b445c  00 30 a0 e3                                      mov r3, #0
006b4460  04 00 a0 e1                                      mov r0, r4
006b4464  00 30 c2 e5                                      strb r3, [r2]
006b4468  28 30 84 e5                                      str r3, [r4, #0x28]
006b446c  20 30 84 e5                                      str r3, [r4, #0x20]
006b4470  24 30 84 e5                                      str r3, [r4, #0x24]
006b4474  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006b4478  6c 06 2e 00 64 4b 00 00                          .byte 0x6c, 0x06, 0x2e, 0x00, 0x64, 0x4b, 0x00, 0x00

; FUNCTION 0x006b4480, declared_size=104, range_size=104, mode=arm
; class-group: glitch::io::CFileList
; alias: _ZN6glitch2io9CFileListC2Ev
; demangled: glitch::io::CFileList::CFileList()
; decoder-mode: arm
006b4480  58 30 9f e5                                      ldr r3, [pc, #0x58]
006b4484  58 10 9f e5                                      ldr r1, [pc, #0x58]
006b4488  10 40 2d e9                                      push {r4, lr}
006b448c  03 30 8f e0                                      add r3, pc, r3
006b4490  01 10 93 e7                                      ldr r1, [r3, r1]
006b4494  00 40 a0 e1                                      mov r4, r0
006b4498  00 20 a0 e1                                      mov r2, r0
006b449c  08 10 81 e2                                      add r1, r1, #8
006b44a0  01 00 a0 e3                                      mov r0, #1
006b44a4  04 00 84 e5                                      str r0, [r4, #4]
006b44a8  08 10 82 e4                                      str r1, [r2], #8
006b44ac  02 00 a0 e1                                      mov r0, r2
006b44b0  18 20 84 e5                                      str r2, [r4, #0x18]
006b44b4  1c 20 84 e5                                      str r2, [r4, #0x1c]
006b44b8  10 10 a0 e3                                      mov r1, #0x10
006b44bc  39 b1 f1 eb                                      bl #0x3209a8
006b44c0  18 20 94 e5                                      ldr r2, [r4, #0x18]
006b44c4  00 30 a0 e3                                      mov r3, #0
006b44c8  04 00 a0 e1                                      mov r0, r4
006b44cc  00 30 c2 e5                                      strb r3, [r2]
006b44d0  28 30 84 e5                                      str r3, [r4, #0x28]
006b44d4  20 30 84 e5                                      str r3, [r4, #0x20]
006b44d8  24 30 84 e5                                      str r3, [r4, #0x24]
006b44dc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006b44e0  04 06 2e 00 64 4b 00 00                          .byte 0x04, 0x06, 0x2e, 0x00, 0x64, 0x4b, 0x00, 0x00

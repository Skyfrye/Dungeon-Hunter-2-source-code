; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0056eb6c, declared_size=20, range_size=20, mode=arm
; class-group: glitch::io::CMemoryReadFile
; alias: _ZN6glitch2io15CMemoryReadFile9getBufferEPl
; demangled: glitch::io::CMemoryReadFile::getBuffer(long*)
; decoder-mode: arm
0056eb6c  00 00 51 e3                                      cmp r1, #0
0056eb70  1c 30 90 15                                      ldrne r3, [r0, #0x1c]
0056eb74  00 30 81 15                                      strne r3, [r1]
0056eb78  0c 00 90 e5                                      ldr r0, [r0, #0xc]
0056eb7c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0056eb80, declared_size=8, range_size=8, mode=arm
; class-group: glitch::io::CMemoryReadFile
; alias: _ZNK6glitch2io15CMemoryReadFile13isAllInMemoryEv
; demangled: glitch::io::CMemoryReadFile::isAllInMemory() const
; decoder-mode: arm
0056eb80  01 00 a0 e3                                      mov r0, #1
0056eb84  1e ff 2f e1                                      bx lr

; FUNCTION 0x0056eb8c, declared_size=32, range_size=32, mode=arm
; class-group: glitch::io::CMemoryReadFile
; alias: _ZNK6glitch2io15CMemoryReadFile7isValidEv
; demangled: glitch::io::CMemoryReadFile::isValid() const
; decoder-mode: arm
0056eb8c  0c 30 90 e5                                      ldr r3, [r0, #0xc]
0056eb90  00 00 53 e3                                      cmp r3, #0
0056eb94  03 00 a0 01                                      moveq r0, r3
0056eb98  1e ff 2f 01                                      bxeq lr
0056eb9c  18 00 90 e5                                      ldr r0, [r0, #0x18]
0056eba0  00 00 e0 e1                                      mvn r0, r0
0056eba4  a0 0f a0 e1                                      lsr r0, r0, #0x1f
0056eba8  1e ff 2f e1                                      bx lr

; FUNCTION 0x0056ebac, declared_size=52, range_size=52, mode=arm
; class-group: glitch::io::CMemoryReadFile
; alias: _ZN6glitch2io15CMemoryReadFile9readAsyncEPvjPFviiPNS0_9IReadFileES2_ES2_
; demangled: glitch::io::CMemoryReadFile::readAsync(void*, unsigned int, void (*)(int, int, glitch::io::IReadFile*, void*), void*)
; decoder-mode: arm
0056ebac  70 40 2d e9                                      push {r4, r5, r6, lr}
0056ebb0  00 c0 90 e5                                      ldr ip, [r0]
0056ebb4  03 50 a0 e1                                      mov r5, r3
0056ebb8  00 40 a0 e1                                      mov r4, r0
0056ebbc  0f e0 a0 e1                                      mov lr, pc
0056ebc0  0c f0 9c e5                                      ldr pc, [ip, #0xc]
0056ebc4  04 20 a0 e1                                      mov r2, r4
0056ebc8  01 10 70 e2                                      rsbs r1, r0, #1
0056ebcc  00 10 a0 33                                      movlo r1, #0
0056ebd0  10 30 9d e5                                      ldr r3, [sp, #0x10]
0056ebd4  35 ff 2f e1                                      blx r5
0056ebd8  01 00 a0 e3                                      mov r0, #1
0056ebdc  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0056ebe0, declared_size=92, range_size=92, mode=arm
; class-group: glitch::io::CMemoryReadFile
; alias: _ZN6glitch2io15CMemoryReadFile9readAsyncEPvjlPFviiPNS0_9IReadFileES2_ES2_
; demangled: glitch::io::CMemoryReadFile::readAsync(void*, unsigned int, long, void (*)(int, int, glitch::io::IReadFile*, void*), void*)
; decoder-mode: arm
0056ebe0  70 40 2d e9                                      push {r4, r5, r6, lr}
0056ebe4  00 40 a0 e1                                      mov r4, r0
0056ebe8  01 60 a0 e1                                      mov r6, r1
0056ebec  02 50 a0 e1                                      mov r5, r2
0056ebf0  03 10 a0 e1                                      mov r1, r3
0056ebf4  00 20 a0 e3                                      mov r2, #0
0056ebf8  00 30 90 e5                                      ldr r3, [r0]
0056ebfc  0f e0 a0 e1                                      mov lr, pc
0056ec00  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0056ec04  06 10 a0 e1                                      mov r1, r6
0056ec08  05 20 a0 e1                                      mov r2, r5
0056ec0c  00 30 94 e5                                      ldr r3, [r4]
0056ec10  04 00 a0 e1                                      mov r0, r4
0056ec14  0f e0 a0 e1                                      mov lr, pc
0056ec18  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0056ec1c  04 20 a0 e1                                      mov r2, r4
0056ec20  01 10 70 e2                                      rsbs r1, r0, #1
0056ec24  00 10 a0 33                                      movlo r1, #0
0056ec28  14 30 9d e5                                      ldr r3, [sp, #0x14]
0056ec2c  0f e0 a0 e1                                      mov lr, pc
0056ec30  10 f0 9d e5                                      ldr pc, [sp, #0x10]
0056ec34  01 00 a0 e3                                      mov r0, #1
0056ec38  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0056ec3c, declared_size=60, range_size=60, mode=arm
; class-group: glitch::io::CMemoryReadFile
; alias: _ZN6glitch2io15CMemoryReadFile4seekElb
; demangled: glitch::io::CMemoryReadFile::seek(long, bool)
; decoder-mode: arm
0056ec3c  00 00 52 e3                                      cmp r2, #0
0056ec40  06 00 00 0a                                      beq #0x56ec60
0056ec44  1c 20 90 e5                                      ldr r2, [r0, #0x1c]
0056ec48  18 30 90 e5                                      ldr r3, [r0, #0x18]
0056ec4c  02 10 81 e0                                      add r1, r1, r2
0056ec50  03 00 51 e1                                      cmp r1, r3
0056ec54  04 00 00 da                                      ble #0x56ec6c
0056ec58  00 00 a0 e3                                      mov r0, #0
0056ec5c  1e ff 2f e1                                      bx lr
0056ec60  18 30 90 e5                                      ldr r3, [r0, #0x18]
0056ec64  03 00 51 e1                                      cmp r1, r3
0056ec68  fa ff ff ca                                      bgt #0x56ec58
0056ec6c  1c 10 80 e5                                      str r1, [r0, #0x1c]
0056ec70  01 00 a0 e3                                      mov r0, #1
0056ec74  1e ff 2f e1                                      bx lr

; FUNCTION 0x0056ec78, declared_size=8, range_size=8, mode=arm
; class-group: glitch::io::CMemoryReadFile
; alias: _ZNK6glitch2io15CMemoryReadFile7getSizeEv
; demangled: glitch::io::CMemoryReadFile::getSize() const
; decoder-mode: arm
0056ec78  18 00 90 e5                                      ldr r0, [r0, #0x18]
0056ec7c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0056ec80, declared_size=8, range_size=8, mode=arm
; class-group: glitch::io::CMemoryReadFile
; alias: _ZNK6glitch2io15CMemoryReadFile6getPosEv
; demangled: glitch::io::CMemoryReadFile::getPos() const
; decoder-mode: arm
0056ec80  1c 00 90 e5                                      ldr r0, [r0, #0x1c]
0056ec84  1e ff 2f e1                                      bx lr

; FUNCTION 0x0056ec88, declared_size=8, range_size=8, mode=arm
; class-group: glitch::io::CMemoryReadFile
; alias: _ZNK6glitch2io15CMemoryReadFile11getFileNameEv
; demangled: glitch::io::CMemoryReadFile::getFileName() const
; decoder-mode: arm
0056ec88  34 00 90 e5                                      ldr r0, [r0, #0x34]
0056ec8c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0056ec90, declared_size=8, range_size=8, mode=arm
; class-group: glitch::io::CMemoryReadFile
; alias: _ZNK6glitch2io15CMemoryReadFile11getFullPathEv
; demangled: glitch::io::CMemoryReadFile::getFullPath() const
; decoder-mode: arm
0056ec90  34 00 90 e5                                      ldr r0, [r0, #0x34]
0056ec94  1e ff 2f e1                                      bx lr

; FUNCTION 0x0056ecc4, declared_size=88, range_size=88, mode=arm
; class-group: glitch::io::CMemoryReadFile
; alias: _ZN6glitch2io15CMemoryReadFile4readEPvj
; demangled: glitch::io::CMemoryReadFile::read(void*, unsigned int)
; decoder-mode: arm
0056ecc4  70 40 2d e9                                      push {r4, r5, r6, lr}
0056ecc8  1c 30 90 e5                                      ldr r3, [r0, #0x1c]
0056eccc  18 c0 90 e5                                      ldr ip, [r0, #0x18]
0056ecd0  02 40 a0 e1                                      mov r4, r2
0056ecd4  03 20 82 e0                                      add r2, r2, r3
0056ecd8  0c 00 52 e1                                      cmp r2, ip
0056ecdc  0c 40 84 c0                                      addgt r4, r4, ip
0056ece0  04 40 62 c0                                      rsbgt r4, r2, r4
0056ece4  00 00 54 e3                                      cmp r4, #0
0056ece8  00 50 a0 e1                                      mov r5, r0
0056ecec  00 40 a0 d3                                      movle r4, #0
0056ecf0  07 00 00 da                                      ble #0x56ed14
0056ecf4  0c c0 90 e5                                      ldr ip, [r0, #0xc]
0056ecf8  04 20 a0 e1                                      mov r2, r4
0056ecfc  01 00 a0 e1                                      mov r0, r1
0056ed00  03 10 8c e0                                      add r1, ip, r3
0056ed04  d7 7e f6 eb                                      bl #0x30e868
0056ed08  1c 30 95 e5                                      ldr r3, [r5, #0x1c]
0056ed0c  04 30 83 e0                                      add r3, r3, r4
0056ed10  1c 30 85 e5                                      str r3, [r5, #0x1c]
0056ed14  04 00 a0 e1                                      mov r0, r4
0056ed18  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0056ed1c, declared_size=112, range_size=112, mode=arm
; class-group: glitch::io::CMemoryReadFile
; alias: _ZN6glitch2io15CMemoryReadFileC1Ev
; demangled: glitch::io::CMemoryReadFile::CMemoryReadFile()
; decoder-mode: arm
0056ed1c  5c 30 9f e5                                      ldr r3, [pc, #0x5c]
0056ed20  5c 20 9f e5                                      ldr r2, [pc, #0x5c]
0056ed24  10 40 2d e9                                      push {r4, lr}
0056ed28  03 30 8f e0                                      add r3, pc, r3
0056ed2c  00 40 a0 e1                                      mov r4, r0
0056ed30  00 10 a0 e3                                      mov r1, #0
0056ed34  02 20 93 e7                                      ldr r2, [r3, r2]
0056ed38  1c 10 84 e5                                      str r1, [r4, #0x1c]
0056ed3c  0c 10 84 e5                                      str r1, [r4, #0xc]
0056ed40  10 10 84 e5                                      str r1, [r4, #0x10]
0056ed44  14 10 84 e5                                      str r1, [r4, #0x14]
0056ed48  18 10 84 e5                                      str r1, [r4, #0x18]
0056ed4c  34 10 9f e5                                      ldr r1, [pc, #0x34]
0056ed50  08 d0 4d e2                                      sub sp, sp, #8
0056ed54  08 20 82 e2                                      add r2, r2, #8
0056ed58  01 00 a0 e3                                      mov r0, #1
0056ed5c  04 00 84 e5                                      str r0, [r4, #4]
0056ed60  00 20 84 e5                                      str r2, [r4]
0056ed64  01 10 8f e0                                      add r1, pc, r1
0056ed68  20 00 84 e2                                      add r0, r4, #0x20
0056ed6c  04 20 8d e2                                      add r2, sp, #4
0056ed70  b1 dc f6 eb                                      bl #0x32603c
0056ed74  04 00 a0 e1                                      mov r0, r4
0056ed78  08 d0 8d e2                                      add sp, sp, #8
0056ed7c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0056ed80  68 5d 42 00 84 30 00 00 a4 ca 35 00              .byte 0x68, 0x5d, 0x42, 0x00, 0x84, 0x30, 0x00, 0x00, 0xa4, 0xca, 0x35, 0x00

; FUNCTION 0x0056ed8c, declared_size=112, range_size=112, mode=arm
; class-group: glitch::io::CMemoryReadFile
; alias: _ZN6glitch2io15CMemoryReadFileC2Ev
; demangled: glitch::io::CMemoryReadFile::CMemoryReadFile()
; decoder-mode: arm
0056ed8c  5c 30 9f e5                                      ldr r3, [pc, #0x5c]
0056ed90  5c 20 9f e5                                      ldr r2, [pc, #0x5c]
0056ed94  10 40 2d e9                                      push {r4, lr}
0056ed98  03 30 8f e0                                      add r3, pc, r3
0056ed9c  00 40 a0 e1                                      mov r4, r0
0056eda0  00 10 a0 e3                                      mov r1, #0
0056eda4  02 20 93 e7                                      ldr r2, [r3, r2]
0056eda8  1c 10 84 e5                                      str r1, [r4, #0x1c]
0056edac  0c 10 84 e5                                      str r1, [r4, #0xc]
0056edb0  10 10 84 e5                                      str r1, [r4, #0x10]
0056edb4  14 10 84 e5                                      str r1, [r4, #0x14]
0056edb8  18 10 84 e5                                      str r1, [r4, #0x18]
0056edbc  34 10 9f e5                                      ldr r1, [pc, #0x34]
0056edc0  08 d0 4d e2                                      sub sp, sp, #8
0056edc4  08 20 82 e2                                      add r2, r2, #8
0056edc8  01 00 a0 e3                                      mov r0, #1
0056edcc  04 00 84 e5                                      str r0, [r4, #4]
0056edd0  00 20 84 e5                                      str r2, [r4]
0056edd4  01 10 8f e0                                      add r1, pc, r1
0056edd8  20 00 84 e2                                      add r0, r4, #0x20
0056eddc  04 20 8d e2                                      add r2, sp, #4
0056ede0  95 dc f6 eb                                      bl #0x32603c
0056ede4  04 00 a0 e1                                      mov r0, r4
0056ede8  08 d0 8d e2                                      add sp, sp, #8
0056edec  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0056edf0  f8 5c 42 00 84 30 00 00 34 ca 35 00              .byte 0xf8, 0x5c, 0x42, 0x00, 0x84, 0x30, 0x00, 0x00, 0x34, 0xca, 0x35, 0x00

; FUNCTION 0x0056edfc, declared_size=56, range_size=56, mode=arm
; class-group: glitch::io::CMemoryReadFile
; alias: _ZN6glitch2io15CMemoryReadFile3setEPvlPKc
; demangled: glitch::io::CMemoryReadFile::set(void*, long, char const*)
; decoder-mode: arm
0056edfc  70 40 2d e9                                      push {r4, r5, r6, lr}
0056ee00  03 50 a0 e1                                      mov r5, r3
0056ee04  00 30 a0 e3                                      mov r3, #0
0056ee08  00 40 a0 e1                                      mov r4, r0
0056ee0c  0c 10 80 e5                                      str r1, [r0, #0xc]
0056ee10  18 20 80 e5                                      str r2, [r0, #0x18]
0056ee14  1c 30 80 e5                                      str r3, [r0, #0x1c]
0056ee18  05 00 a0 e1                                      mov r0, r5
0056ee1c  0c 7c f6 eb                                      bl #0x30de54
0056ee20  05 10 a0 e1                                      mov r1, r5
0056ee24  00 20 85 e0                                      add r2, r5, r0
0056ee28  20 00 84 e2                                      add r0, r4, #0x20
0056ee2c  70 40 bd e8                                      pop {r4, r5, r6, lr}
0056ee30  54 c7 f6 ea                                      b #0x320b88

; FUNCTION 0x0056f150, declared_size=100, range_size=100, mode=arm
; class-group: glitch::io::CMemoryReadFile
; alias: _ZNK6glitch2io15CMemoryReadFile5cloneEv
; demangled: glitch::io::CMemoryReadFile::clone() const
; decoder-mode: arm
0056f150  70 40 2d e9                                      push {r4, r5, r6, lr}
0056f154  00 10 a0 e3                                      mov r1, #0
0056f158  00 40 a0 e1                                      mov r4, r0
0056f15c  38 00 a0 e3                                      mov r0, #0x38
0056f160  11 14 ff eb                                      bl #0x5341ac
0056f164  00 50 a0 e1                                      mov r5, r0
0056f168  eb fe ff eb                                      bl #0x56ed1c
0056f16c  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0056f170  10 00 85 e2                                      add r0, r5, #0x10
0056f174  10 10 84 e2                                      add r1, r4, #0x10
0056f178  0c 30 85 e5                                      str r3, [r5, #0xc]
0056f17c  dd ff ff eb                                      bl #0x56f0f8
0056f180  18 30 94 e5                                      ldr r3, [r4, #0x18]
0056f184  20 00 85 e2                                      add r0, r5, #0x20
0056f188  20 20 84 e2                                      add r2, r4, #0x20
0056f18c  18 30 85 e5                                      str r3, [r5, #0x18]
0056f190  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
0056f194  02 00 50 e1                                      cmp r0, r2
0056f198  1c 30 85 e5                                      str r3, [r5, #0x1c]
0056f19c  02 00 00 0a                                      beq #0x56f1ac
0056f1a0  30 20 94 e5                                      ldr r2, [r4, #0x30]
0056f1a4  34 10 94 e5                                      ldr r1, [r4, #0x34]
0056f1a8  76 c6 f6 eb                                      bl #0x320b88
0056f1ac  05 00 a0 e1                                      mov r0, r5
0056f1b0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0056f1b4, declared_size=92, range_size=92, mode=arm
; class-group: glitch::io::CMemoryReadFile
; alias: _ZN6glitch2io15CMemoryReadFileD1Ev
; demangled: glitch::io::CMemoryReadFile::~CMemoryReadFile()
; decoder-mode: arm
0056f1b4  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
0056f1b8  4c 20 9f e5                                      ldr r2, [pc, #0x4c]
0056f1bc  10 40 2d e9                                      push {r4, lr}
0056f1c0  03 30 8f e0                                      add r3, pc, r3
0056f1c4  02 20 93 e7                                      ldr r2, [r3, r2]
0056f1c8  00 10 a0 e1                                      mov r1, r0
0056f1cc  00 40 a0 e1                                      mov r4, r0
0056f1d0  08 20 82 e2                                      add r2, r2, #8
0056f1d4  20 20 81 e4                                      str r2, [r1], #0x20
0056f1d8  14 00 91 e5                                      ldr r0, [r1, #0x14]
0056f1dc  01 00 50 e1                                      cmp r0, r1
0056f1e0  02 00 00 0a                                      beq #0x56f1f0
0056f1e4  00 00 50 e3                                      cmp r0, #0
0056f1e8  00 00 00 0a                                      beq #0x56f1f0
0056f1ec  97 84 f6 eb                                      bl #0x310450
0056f1f0  14 00 94 e5                                      ldr r0, [r4, #0x14]
0056f1f4  00 00 50 e3                                      cmp r0, #0
0056f1f8  00 00 00 0a                                      beq #0x56f200
0056f1fc  93 ff ff eb                                      bl #0x56f050
0056f200  04 00 a0 e1                                      mov r0, r4
0056f204  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0056f208  d0 58 42 00 84 30 00 00                          .byte 0xd0, 0x58, 0x42, 0x00, 0x84, 0x30, 0x00, 0x00

; FUNCTION 0x0056f210, declared_size=28, range_size=28, mode=arm
; class-group: glitch::io::CMemoryReadFile
; alias: _ZN6glitch2io15CMemoryReadFileD0Ev
; demangled: glitch::io::CMemoryReadFile::~CMemoryReadFile()
; decoder-mode: arm
0056f210  10 40 2d e9                                      push {r4, lr}
0056f214  00 40 a0 e1                                      mov r4, r0
0056f218  e5 ff ff eb                                      bl #0x56f1b4
0056f21c  04 00 a0 e1                                      mov r0, r4
0056f220  22 7c f6 eb                                      bl #0x30e2b0
0056f224  04 00 a0 e1                                      mov r0, r4
0056f228  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0056f22c, declared_size=92, range_size=92, mode=arm
; class-group: glitch::io::CMemoryReadFile
; alias: _ZN6glitch2io15CMemoryReadFileD2Ev
; demangled: glitch::io::CMemoryReadFile::~CMemoryReadFile()
; decoder-mode: arm
0056f22c  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
0056f230  4c 20 9f e5                                      ldr r2, [pc, #0x4c]
0056f234  10 40 2d e9                                      push {r4, lr}
0056f238  03 30 8f e0                                      add r3, pc, r3
0056f23c  02 20 93 e7                                      ldr r2, [r3, r2]
0056f240  00 10 a0 e1                                      mov r1, r0
0056f244  00 40 a0 e1                                      mov r4, r0
0056f248  08 20 82 e2                                      add r2, r2, #8
0056f24c  20 20 81 e4                                      str r2, [r1], #0x20
0056f250  14 00 91 e5                                      ldr r0, [r1, #0x14]
0056f254  01 00 50 e1                                      cmp r0, r1
0056f258  02 00 00 0a                                      beq #0x56f268
0056f25c  00 00 50 e3                                      cmp r0, #0
0056f260  00 00 00 0a                                      beq #0x56f268
0056f264  79 84 f6 eb                                      bl #0x310450
0056f268  14 00 94 e5                                      ldr r0, [r4, #0x14]
0056f26c  00 00 50 e3                                      cmp r0, #0
0056f270  00 00 00 0a                                      beq #0x56f278
0056f274  75 ff ff eb                                      bl #0x56f050
0056f278  04 00 a0 e1                                      mov r0, r4
0056f27c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0056f280  58 58 42 00 84 30 00 00                          .byte 0x58, 0x58, 0x42, 0x00, 0x84, 0x30, 0x00, 0x00

; FUNCTION 0x0056f2ec, declared_size=132, range_size=132, mode=arm
; class-group: glitch::io::CMemoryReadFile
; alias: _ZN6glitch2io15CMemoryReadFileC1EPvlPKcb
; demangled: glitch::io::CMemoryReadFile::CMemoryReadFile(void*, long, char const*, bool)
; decoder-mode: arm
0056f2ec  70 40 2d e9                                      push {r4, r5, r6, lr}
0056f2f0  70 c0 9f e5                                      ldr ip, [pc, #0x70]
0056f2f4  70 e0 9f e5                                      ldr lr, [pc, #0x70]
0056f2f8  08 d0 4d e2                                      sub sp, sp, #8
0056f2fc  0c c0 8f e0                                      add ip, pc, ip
0056f300  0e e0 9c e7                                      ldr lr, [ip, lr]
0056f304  18 60 dd e5                                      ldrb r6, [sp, #0x18]
0056f308  01 50 a0 e1                                      mov r5, r1
0056f30c  18 20 80 e5                                      str r2, [r0, #0x18]
0056f310  00 10 a0 e3                                      mov r1, #0
0056f314  08 e0 8e e2                                      add lr, lr, #8
0056f318  01 20 a0 e3                                      mov r2, #1
0056f31c  04 20 80 e5                                      str r2, [r0, #4]
0056f320  1c 10 80 e5                                      str r1, [r0, #0x1c]
0056f324  10 10 80 e5                                      str r1, [r0, #0x10]
0056f328  14 10 80 e5                                      str r1, [r0, #0x14]
0056f32c  00 e0 80 e5                                      str lr, [r0]
0056f330  0c 50 80 e5                                      str r5, [r0, #0xc]
0056f334  00 40 a0 e1                                      mov r4, r0
0056f338  03 10 a0 e1                                      mov r1, r3
0056f33c  20 00 80 e2                                      add r0, r0, #0x20
0056f340  04 20 8d e2                                      add r2, sp, #4
0056f344  3c db f6 eb                                      bl #0x32603c
0056f348  00 00 56 e3                                      cmp r6, #0
0056f34c  02 00 00 0a                                      beq #0x56f35c
0056f350  05 10 a0 e1                                      mov r1, r5
0056f354  10 00 84 e2                                      add r0, r4, #0x10
0056f358  ca ff ff eb                                      bl #0x56f288
0056f35c  04 00 a0 e1                                      mov r0, r4
0056f360  08 d0 8d e2                                      add sp, sp, #8
0056f364  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0056f368  94 57 42 00 84 30 00 00                          .byte 0x94, 0x57, 0x42, 0x00, 0x84, 0x30, 0x00, 0x00

; FUNCTION 0x0056f3b8, declared_size=132, range_size=132, mode=arm
; class-group: glitch::io::CMemoryReadFile
; alias: _ZN6glitch2io15CMemoryReadFileC2EPvlPKcb
; demangled: glitch::io::CMemoryReadFile::CMemoryReadFile(void*, long, char const*, bool)
; decoder-mode: arm
0056f3b8  70 40 2d e9                                      push {r4, r5, r6, lr}
0056f3bc  70 c0 9f e5                                      ldr ip, [pc, #0x70]
0056f3c0  70 e0 9f e5                                      ldr lr, [pc, #0x70]
0056f3c4  08 d0 4d e2                                      sub sp, sp, #8
0056f3c8  0c c0 8f e0                                      add ip, pc, ip
0056f3cc  0e e0 9c e7                                      ldr lr, [ip, lr]
0056f3d0  18 60 dd e5                                      ldrb r6, [sp, #0x18]
0056f3d4  01 50 a0 e1                                      mov r5, r1
0056f3d8  18 20 80 e5                                      str r2, [r0, #0x18]
0056f3dc  00 10 a0 e3                                      mov r1, #0
0056f3e0  08 e0 8e e2                                      add lr, lr, #8
0056f3e4  01 20 a0 e3                                      mov r2, #1
0056f3e8  04 20 80 e5                                      str r2, [r0, #4]
0056f3ec  1c 10 80 e5                                      str r1, [r0, #0x1c]
0056f3f0  10 10 80 e5                                      str r1, [r0, #0x10]
0056f3f4  14 10 80 e5                                      str r1, [r0, #0x14]
0056f3f8  00 e0 80 e5                                      str lr, [r0]
0056f3fc  0c 50 80 e5                                      str r5, [r0, #0xc]
0056f400  00 40 a0 e1                                      mov r4, r0
0056f404  03 10 a0 e1                                      mov r1, r3
0056f408  20 00 80 e2                                      add r0, r0, #0x20
0056f40c  04 20 8d e2                                      add r2, sp, #4
0056f410  09 db f6 eb                                      bl #0x32603c
0056f414  00 00 56 e3                                      cmp r6, #0
0056f418  02 00 00 0a                                      beq #0x56f428
0056f41c  05 10 a0 e1                                      mov r1, r5
0056f420  10 00 84 e2                                      add r0, r4, #0x10
0056f424  97 ff ff eb                                      bl #0x56f288
0056f428  04 00 a0 e1                                      mov r0, r4
0056f42c  08 d0 8d e2                                      add sp, sp, #8
0056f430  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0056f434  c8 56 42 00 84 30 00 00                          .byte 0xc8, 0x56, 0x42, 0x00, 0x84, 0x30, 0x00, 0x00

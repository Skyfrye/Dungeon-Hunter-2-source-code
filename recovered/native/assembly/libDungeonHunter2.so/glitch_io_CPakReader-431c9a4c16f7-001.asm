; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0056f43c, declared_size=40, range_size=40, mode=arm
; class-group: glitch::io::CPakReader
; alias: _ZN6glitch2io10CPakReader12getFileCountEv
; demangled: glitch::io::CPakReader::getFileCount()
; decoder-mode: arm
0056f43c  18 30 90 e5                                      ldr r3, [r0, #0x18]
0056f440  1c 20 90 e5                                      ldr r2, [r0, #0x1c]
0056f444  02 30 63 e0                                      rsb r3, r3, r2
0056f448  43 32 a0 e1                                      asr r3, r3, #4
0056f44c  83 00 83 e0                                      add r0, r3, r3, lsl #1
0056f450  00 02 80 e0                                      add r0, r0, r0, lsl #4
0056f454  00 04 80 e0                                      add r0, r0, r0, lsl #8
0056f458  00 08 80 e0                                      add r0, r0, r0, lsl #16
0056f45c  00 01 83 e0                                      add r0, r3, r0, lsl #2
0056f460  1e ff 2f e1                                      bx lr

; FUNCTION 0x0056f464, declared_size=16, range_size=16, mode=arm
; class-group: glitch::io::CPakReader
; alias: _ZNK6glitch2io10CPakReader11getFileInfoEi
; demangled: glitch::io::CPakReader::getFileInfo(int) const
; decoder-mode: arm
0056f464  18 30 90 e5                                      ldr r3, [r0, #0x18]
0056f468  50 00 a0 e3                                      mov r0, #0x50
0056f46c  90 31 20 e0                                      mla r0, r0, r1, r3
0056f470  1e ff 2f e1                                      bx lr

; FUNCTION 0x0056f568, declared_size=120, range_size=120, mode=arm
; class-group: glitch::io::CPakReader
; alias: _ZN6glitch2io10CPakReader22deletePathFromFilenameERSbIcSt11char_traitsIcENS_4core10SAllocatorIcLNS_6memory13E_MEMORY_HINTE0EEEE
; demangled: glitch::io::CPakReader::deletePathFromFilename(std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >&)
; decoder-mode: arm
0056f568  70 40 2d e9                                      push {r4, r5, r6, lr}
0056f56c  14 20 91 e5                                      ldr r2, [r1, #0x14]
0056f570  10 50 91 e5                                      ldr r5, [r1, #0x10]
0056f574  01 40 a0 e1                                      mov r4, r1
0056f578  05 50 62 e0                                      rsb r5, r2, r5
0056f57c  d5 30 92 e1                                      ldrsb r3, [r2, r5]
0056f580  05 50 82 e0                                      add r5, r2, r5
0056f584  2f 00 53 e3                                      cmp r3, #0x2f
0056f588  5c 00 53 13                                      cmpne r3, #0x5c
0056f58c  09 00 00 1a                                      bne #0x56f5b8
0056f590  02 00 55 e1                                      cmp r5, r2
0056f594  0f 00 00 0a                                      beq #0x56f5d8
0056f598  01 50 85 e2                                      add r5, r5, #1
0056f59c  05 00 a0 e1                                      mov r0, r5
0056f5a0  2b 7a f6 eb                                      bl #0x30de54
0056f5a4  05 10 a0 e1                                      mov r1, r5
0056f5a8  00 20 85 e0                                      add r2, r5, r0
0056f5ac  04 00 a0 e1                                      mov r0, r4
0056f5b0  70 40 bd e8                                      pop {r4, r5, r6, lr}
0056f5b4  73 c5 f6 ea                                      b #0x320b88
0056f5b8  02 00 55 e1                                      cmp r5, r2
0056f5bc  06 00 00 0a                                      beq #0x56f5dc
0056f5c0  d1 30 75 e1                                      ldrsb r3, [r5, #-1]!
0056f5c4  5c 00 53 e3                                      cmp r3, #0x5c
0056f5c8  2f 00 53 13                                      cmpne r3, #0x2f
0056f5cc  ef ff ff 0a                                      beq #0x56f590
0056f5d0  02 00 55 e1                                      cmp r5, r2
0056f5d4  f9 ff ff 1a                                      bne #0x56f5c0
0056f5d8  70 80 bd e8                                      pop {r4, r5, r6, pc}
0056f5dc  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0056f6f4, declared_size=72, range_size=72, mode=arm
; class-group: glitch::io::CPakReader
; alias: _ZN6glitch2io10CPakReaderD1Ev
; demangled: glitch::io::CPakReader::~CPakReader()
; decoder-mode: arm
0056f6f4  10 40 2d e9                                      push {r4, lr}
0056f6f8  34 30 9f e5                                      ldr r3, [pc, #0x34]
0056f6fc  34 20 9f e5                                      ldr r2, [pc, #0x34]
0056f700  00 40 a0 e1                                      mov r4, r0
0056f704  03 30 8f e0                                      add r3, pc, r3
0056f708  08 00 90 e5                                      ldr r0, [r0, #8]
0056f70c  02 20 93 e7                                      ldr r2, [r3, r2]
0056f710  00 00 50 e3                                      cmp r0, #0
0056f714  08 20 82 e2                                      add r2, r2, #8
0056f718  00 20 84 e5                                      str r2, [r4]
0056f71c  00 00 00 0a                                      beq #0x56f724
0056f720  97 b7 f6 eb                                      bl #0x31d584
0056f724  18 00 84 e2                                      add r0, r4, #0x18
0056f728  e0 ff ff eb                                      bl #0x56f6b0
0056f72c  04 00 a0 e1                                      mov r0, r4
0056f730  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0056f734  8c 53 42 00 d8 1b 00 00                          .byte 0x8c, 0x53, 0x42, 0x00, 0xd8, 0x1b, 0x00, 0x00

; FUNCTION 0x0056f73c, declared_size=72, range_size=72, mode=arm
; class-group: glitch::io::CPakReader
; alias: _ZN6glitch2io10CPakReaderD2Ev
; demangled: glitch::io::CPakReader::~CPakReader()
; decoder-mode: arm
0056f73c  10 40 2d e9                                      push {r4, lr}
0056f740  34 30 9f e5                                      ldr r3, [pc, #0x34]
0056f744  34 20 9f e5                                      ldr r2, [pc, #0x34]
0056f748  00 40 a0 e1                                      mov r4, r0
0056f74c  03 30 8f e0                                      add r3, pc, r3
0056f750  08 00 90 e5                                      ldr r0, [r0, #8]
0056f754  02 20 93 e7                                      ldr r2, [r3, r2]
0056f758  00 00 50 e3                                      cmp r0, #0
0056f75c  08 20 82 e2                                      add r2, r2, #8
0056f760  00 20 84 e5                                      str r2, [r4]
0056f764  00 00 00 0a                                      beq #0x56f76c
0056f768  85 b7 f6 eb                                      bl #0x31d584
0056f76c  18 00 84 e2                                      add r0, r4, #0x18
0056f770  ce ff ff eb                                      bl #0x56f6b0
0056f774  04 00 a0 e1                                      mov r0, r4
0056f778  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0056f77c  44 53 42 00 d8 1b 00 00                          .byte 0x44, 0x53, 0x42, 0x00, 0xd8, 0x1b, 0x00, 0x00

; FUNCTION 0x0056f784, declared_size=80, range_size=80, mode=arm
; class-group: glitch::io::CPakReader
; alias: _ZN6glitch2io10CPakReader8openFileEi
; demangled: glitch::io::CPakReader::openFile(int)
; decoder-mode: arm
0056f784  70 40 2d e9                                      push {r4, r5, r6, lr}
0056f788  50 50 a0 e3                                      mov r5, #0x50
0056f78c  95 01 05 e0                                      mul r5, r5, r1
0056f790  18 10 90 e5                                      ldr r1, [r0, #0x18]
0056f794  08 30 90 e5                                      ldr r3, [r0, #8]
0056f798  00 40 a0 e1                                      mov r4, r0
0056f79c  05 10 81 e0                                      add r1, r1, r5
0056f7a0  00 20 a0 e3                                      mov r2, #0
0056f7a4  48 10 91 e5                                      ldr r1, [r1, #0x48]
0056f7a8  03 00 a0 e1                                      mov r0, r3
0056f7ac  00 30 93 e5                                      ldr r3, [r3]
0056f7b0  0f e0 a0 e1                                      mov lr, pc
0056f7b4  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0056f7b8  18 30 94 e5                                      ldr r3, [r4, #0x18]
0056f7bc  08 10 94 e5                                      ldr r1, [r4, #8]
0056f7c0  05 50 83 e0                                      add r5, r3, r5
0056f7c4  4c 20 95 e5                                      ldr r2, [r5, #0x4c]
0056f7c8  2c 00 95 e5                                      ldr r0, [r5, #0x2c]
0056f7cc  70 40 bd e8                                      pop {r4, r5, r6, lr}
0056f7d0  a6 14 05 ea                                      b #0x6b4a70

; FUNCTION 0x0056f7d4, declared_size=28, range_size=28, mode=arm
; class-group: glitch::io::CPakReader
; alias: _ZN6glitch2io10CPakReaderD0Ev
; demangled: glitch::io::CPakReader::~CPakReader()
; decoder-mode: arm
0056f7d4  10 40 2d e9                                      push {r4, lr}
0056f7d8  00 40 a0 e1                                      mov r4, r0
0056f7dc  c4 ff ff eb                                      bl #0x56f6f4
0056f7e0  04 00 a0 e1                                      mov r0, r4
0056f7e4  b1 7a f6 eb                                      bl #0x30e2b0
0056f7e8  04 00 a0 e1                                      mov r0, r4
0056f7ec  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0056fcec, declared_size=344, range_size=344, mode=arm
; class-group: glitch::io::CPakReader
; alias: _ZN6glitch2io10CPakReader15extractFilenameEPNS0_13SPakFileEntryE
; demangled: glitch::io::CPakReader::extractFilename(glitch::io::SPakFileEntry*)
; decoder-mode: arm
0056fcec  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0056fcf0  24 30 d0 e5                                      ldrb r3, [r0, #0x24]
0056fcf4  00 50 a0 e1                                      mov r5, r0
0056fcf8  01 40 a0 e1                                      mov r4, r1
0056fcfc  00 00 53 e3                                      cmp r3, #0
0056fd00  14 30 91 05                                      ldreq r3, [r1, #0x14]
0056fd04  13 00 00 0a                                      beq #0x56fd58
0056fd08  14 30 91 e5                                      ldr r3, [r1, #0x14]
0056fd0c  10 20 91 e5                                      ldr r2, [r1, #0x10]
0056fd10  02 00 53 e1                                      cmp r3, r2
0056fd14  0f 00 00 0a                                      beq #0x56fd58
0056fd18  00 20 a0 e3                                      mov r2, #0
0056fd1c  02 10 d3 e7                                      ldrb r1, [r3, r2]
0056fd20  02 30 83 e0                                      add r3, r3, r2
0056fd24  01 20 82 e2                                      add r2, r2, #1
0056fd28  71 00 ef e6                                      uxtb r0, r1
0056fd2c  41 c0 40 e2                                      sub ip, r0, #0x41
0056fd30  7c c0 ef e6                                      uxtb ip, ip
0056fd34  19 00 5c e3                                      cmp ip, #0x19
0056fd38  20 10 80 92                                      addls r1, r0, #0x20
0056fd3c  71 10 ef 96                                      uxtbls r1, r1
0056fd40  00 10 c3 e5                                      strb r1, [r3]
0056fd44  14 30 94 e5                                      ldr r3, [r4, #0x14]
0056fd48  10 10 94 e5                                      ldr r1, [r4, #0x10]
0056fd4c  01 10 63 e0                                      rsb r1, r3, r1
0056fd50  01 00 52 e1                                      cmp r2, r1
0056fd54  f0 ff ff 3a                                      blo #0x56fd1c
0056fd58  d8 23 d3 e1                                      ldrsb r2, [r3, #0x38]
0056fd5c  38 60 83 e2                                      add r6, r3, #0x38
0056fd60  2f 00 52 e3                                      cmp r2, #0x2f
0056fd64  37 60 a0 13                                      movne r6, #0x37
0056fd68  02 00 00 1a                                      bne #0x56fd78
0056fd6c  05 00 00 ea                                      b #0x56fd88
0056fd70  01 60 56 e2                                      subs r6, r6, #1
0056fd74  1f 00 00 3a                                      blo #0x56fdf8
0056fd78  d6 20 93 e1                                      ldrsb r2, [r3, r6]
0056fd7c  2f 00 52 e3                                      cmp r2, #0x2f
0056fd80  fa ff ff 1a                                      bne #0x56fd70
0056fd84  06 60 83 e0                                      add r6, r3, r6
0056fd88  03 00 56 e1                                      cmp r6, r3
0056fd8c  1a 00 00 0a                                      beq #0x56fdfc
0056fd90  01 60 86 e2                                      add r6, r6, #1
0056fd94  06 00 a0 e1                                      mov r0, r6
0056fd98  2d 78 f6 eb                                      bl #0x30de54
0056fd9c  18 70 84 e2                                      add r7, r4, #0x18
0056fda0  00 20 86 e0                                      add r2, r6, r0
0056fda4  06 10 a0 e1                                      mov r1, r6
0056fda8  07 00 a0 e1                                      mov r0, r7
0056fdac  75 c3 f6 eb                                      bl #0x320b88
0056fdb0  84 10 9f e5                                      ldr r1, [pc, #0x84]
0056fdb4  30 80 84 e2                                      add r8, r4, #0x30
0056fdb8  08 00 a0 e1                                      mov r0, r8
0056fdbc  01 10 8f e0                                      add r1, pc, r1
0056fdc0  01 20 a0 e1                                      mov r2, r1
0056fdc4  6f c3 f6 eb                                      bl #0x320b88
0056fdc8  08 00 a0 e1                                      mov r0, r8
0056fdcc  06 20 a0 e1                                      mov r2, r6
0056fdd0  14 10 94 e5                                      ldr r1, [r4, #0x14]
0056fdd4  1c c3 f6 eb                                      bl #0x320a4c
0056fdd8  25 30 d5 e5                                      ldrb r3, [r5, #0x25]
0056fddc  00 00 53 e3                                      cmp r3, #0
0056fde0  14 00 00 1a                                      bne #0x56fe38
0056fde4  10 20 94 e5                                      ldr r2, [r4, #0x10]
0056fde8  14 10 94 e5                                      ldr r1, [r4, #0x14]
0056fdec  07 00 a0 e1                                      mov r0, r7
0056fdf0  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
0056fdf4  63 c3 f6 ea                                      b #0x320b88
0056fdf8  03 60 a0 e1                                      mov r6, r3
0056fdfc  06 00 a0 e1                                      mov r0, r6
0056fe00  13 78 f6 eb                                      bl #0x30de54
0056fe04  18 70 84 e2                                      add r7, r4, #0x18
0056fe08  00 20 86 e0                                      add r2, r6, r0
0056fe0c  06 10 a0 e1                                      mov r1, r6
0056fe10  07 00 a0 e1                                      mov r0, r7
0056fe14  5b c3 f6 eb                                      bl #0x320b88
0056fe18  20 10 9f e5                                      ldr r1, [pc, #0x20]
0056fe1c  30 00 84 e2                                      add r0, r4, #0x30
0056fe20  01 10 8f e0                                      add r1, pc, r1
0056fe24  01 20 a0 e1                                      mov r2, r1
0056fe28  56 c3 f6 eb                                      bl #0x320b88
0056fe2c  25 30 d5 e5                                      ldrb r3, [r5, #0x25]
0056fe30  00 00 53 e3                                      cmp r3, #0
0056fe34  ea ff ff 0a                                      beq #0x56fde4
0056fe38  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0056fe3c  4c ba 35 00 e8 b9 35 00                          .byte 0x4c, 0xba, 0x35, 0x00, 0xe8, 0xb9, 0x35, 0x00

; FUNCTION 0x0056fe44, declared_size=488, range_size=488, mode=arm
; class-group: glitch::io::CPakReader
; alias: _ZN6glitch2io10CPakReader15scanLocalHeaderEv
; demangled: glitch::io::CPakReader::scanLocalHeader()
; decoder-mode: arm
0056fe44  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0056fe48  d4 11 9f e5                                      ldr r1, [pc, #0x1d4]
0056fe4c  d4 21 9f e5                                      ldr r2, [pc, #0x1d4]
0056fe50  46 de 4d e2                                      sub sp, sp, #0x460
0056fe54  01 10 8f e0                                      add r1, pc, r1
0056fe58  02 30 91 e7                                      ldr r3, [r1, r2]
0056fe5c  0c d0 4d e2                                      sub sp, sp, #0xc
0056fe60  41 5e 8d e2                                      add r5, sp, #0x410
0056fe64  00 30 93 e5                                      ldr r3, [r3]
0056fe68  04 50 85 e2                                      add r5, r5, #4
0056fe6c  00 40 a0 e1                                      mov r4, r0
0056fe70  05 00 a0 e1                                      mov r0, r5
0056fe74  04 10 8d e5                                      str r1, [sp, #4]
0056fe78  0c 20 8d e5                                      str r2, [sp, #0xc]
0056fe7c  64 34 8d e5                                      str r3, [sp, #0x464]
0056fe80  83 fd ff eb                                      bl #0x56f494
0056fe84  08 30 94 e5                                      ldr r3, [r4, #8]
0056fe88  00 60 a0 e3                                      mov r6, #0
0056fe8c  5c 64 8d e5                                      str r6, [sp, #0x45c]
0056fe90  0c 60 84 e5                                      str r6, [r4, #0xc]
0056fe94  10 60 84 e5                                      str r6, [r4, #0x10]
0056fe98  14 60 84 e5                                      str r6, [r4, #0x14]
0056fe9c  03 00 a0 e1                                      mov r0, r3
0056fea0  0c 10 84 e2                                      add r1, r4, #0xc
0056fea4  00 30 93 e5                                      ldr r3, [r3]
0056fea8  0c 20 a0 e3                                      mov r2, #0xc
0056feac  0f e0 a0 e1                                      mov lr, pc
0056feb0  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0056feb4  dc 30 d4 e1                                      ldrsb r3, [r4, #0xc]
0056feb8  50 00 53 e3                                      cmp r3, #0x50
0056febc  0f 00 00 0a                                      beq #0x56ff00
0056fec0  dd 30 d4 e1                                      ldrsb r3, [r4, #0xd]
0056fec4  41 00 53 e3                                      cmp r3, #0x41
0056fec8  0c 00 00 0a                                      beq #0x56ff00
0056fecc  05 00 a0 e1                                      mov r0, r5
0056fed0  de fd ff eb                                      bl #0x56f650
0056fed4  04 20 9d e5                                      ldr r2, [sp, #4]
0056fed8  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0056fedc  06 00 a0 e1                                      mov r0, r6
0056fee0  01 30 92 e7                                      ldr r3, [r2, r1]
0056fee4  64 24 9d e5                                      ldr r2, [sp, #0x464]
0056fee8  00 30 93 e5                                      ldr r3, [r3]
0056feec  03 00 52 e1                                      cmp r2, r3
0056fef0  4a 00 00 1a                                      bne #0x570020
0056fef4  6c d0 8d e2                                      add sp, sp, #0x6c
0056fef8  01 db 8d e2                                      add sp, sp, #0x400
0056fefc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0056ff00  08 30 94 e5                                      ldr r3, [r4, #8]
0056ff04  10 10 94 e5                                      ldr r1, [r4, #0x10]
0056ff08  00 20 a0 e3                                      mov r2, #0
0056ff0c  03 00 a0 e1                                      mov r0, r3
0056ff10  00 30 93 e5                                      ldr r3, [r3]
0056ff14  0f e0 a0 e1                                      mov lr, pc
0056ff18  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0056ff1c  14 80 94 e5                                      ldr r8, [r4, #0x14]
0056ff20  28 83 a0 e1                                      lsr r8, r8, #6
0056ff24  00 00 58 e3                                      cmp r8, #0
0056ff28  3a 00 00 da                                      ble #0x570018
0056ff2c  00 70 a0 e3                                      mov r7, #0
0056ff30  18 60 8d e2                                      add r6, sp, #0x18
0056ff34  4c 30 85 e2                                      add r3, r5, #0x4c
0056ff38  04 60 46 e2                                      sub r6, r6, #4
0056ff3c  18 a0 84 e2                                      add sl, r4, #0x18
0056ff40  07 90 a0 e1                                      mov sb, r7
0056ff44  48 b0 85 e2                                      add fp, r5, #0x48
0056ff48  08 30 8d e5                                      str r3, [sp, #8]
0056ff4c  28 34 9d e5                                      ldr r3, [sp, #0x428]
0056ff50  24 14 9d e5                                      ldr r1, [sp, #0x424]
0056ff54  01 10 63 e0                                      rsb r1, r3, r1
0056ff58  3a 00 51 e3                                      cmp r1, #0x3a
0056ff5c  3a 10 a0 33                                      movlo r1, #0x3a
0056ff60  05 00 53 e1                                      cmp r3, r5
0056ff64  14 24 9d 15                                      ldrne r2, [sp, #0x414]
0056ff68  01 10 81 e2                                      add r1, r1, #1
0056ff6c  10 30 a0 03                                      moveq r3, #0x10
0056ff70  02 30 63 10                                      rsbne r3, r3, r2
0056ff74  03 00 51 e1                                      cmp r1, r3
0056ff78  01 00 00 3a                                      blo #0x56ff84
0056ff7c  05 00 a0 e1                                      mov r0, r5
0056ff80  e7 17 fb eb                                      bl #0x435f24
0056ff84  08 30 94 e5                                      ldr r3, [r4, #8]
0056ff88  06 10 a0 e1                                      mov r1, r6
0056ff8c  38 20 a0 e3                                      mov r2, #0x38
0056ff90  03 00 a0 e1                                      mov r0, r3
0056ff94  00 30 93 e5                                      ldr r3, [r3]
0056ff98  0f e0 a0 e1                                      mov lr, pc
0056ff9c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0056ffa0  06 00 a0 e1                                      mov r0, r6
0056ffa4  4c 90 cd e5                                      strb sb, [sp, #0x4c]
0056ffa8  a9 77 f6 eb                                      bl #0x30de54
0056ffac  06 10 a0 e1                                      mov r1, r6
0056ffb0  00 20 86 e0                                      add r2, r6, r0
0056ffb4  05 00 a0 e1                                      mov r0, r5
0056ffb8  f2 c2 f6 eb                                      bl #0x320b88
0056ffbc  04 00 a0 e1                                      mov r0, r4
0056ffc0  05 10 a0 e1                                      mov r1, r5
0056ffc4  48 ff ff eb                                      bl #0x56fcec
0056ffc8  08 30 94 e5                                      ldr r3, [r4, #8]
0056ffcc  0b 10 a0 e1                                      mov r1, fp
0056ffd0  04 20 a0 e3                                      mov r2, #4
0056ffd4  03 00 a0 e1                                      mov r0, r3
0056ffd8  00 30 93 e5                                      ldr r3, [r3]
0056ffdc  0f e0 a0 e1                                      mov lr, pc
0056ffe0  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0056ffe4  08 30 94 e5                                      ldr r3, [r4, #8]
0056ffe8  04 20 a0 e3                                      mov r2, #4
0056ffec  08 10 9d e5                                      ldr r1, [sp, #8]
0056fff0  03 00 a0 e1                                      mov r0, r3
0056fff4  00 30 93 e5                                      ldr r3, [r3]
0056fff8  0f e0 a0 e1                                      mov lr, pc
0056fffc  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00570000  01 70 87 e2                                      add r7, r7, #1
00570004  0a 00 a0 e1                                      mov r0, sl
00570008  05 10 a0 e1                                      mov r1, r5
0057000c  f7 fd ff eb                                      bl #0x56f7f0
00570010  07 00 58 e1                                      cmp r8, r7
00570014  cc ff ff 1a                                      bne #0x56ff4c
00570018  01 60 a0 e3                                      mov r6, #1
0057001c  aa ff ff ea                                      b #0x56fecc
00570020  ba 78 f6 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00570024  3c 4c 42 00 ac 40 00 00                          .byte 0x3c, 0x4c, 0x42, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x0057002c, declared_size=152, range_size=152, mode=arm
; class-group: glitch::io::CPakReader
; alias: _ZN6glitch2io10CPakReaderC1EPNS0_9IReadFileEbb
; demangled: glitch::io::CPakReader::CPakReader(glitch::io::IReadFile*, bool, bool)
; decoder-mode: arm
0057002c  88 c0 9f e5                                      ldr ip, [pc, #0x88]
00570030  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00570034  84 50 9f e5                                      ldr r5, [pc, #0x84]
00570038  0c c0 8f e0                                      add ip, pc, ip
0057003c  00 60 a0 e3                                      mov r6, #0
00570040  05 50 9c e7                                      ldr r5, [ip, r5]
00570044  01 70 a0 e3                                      mov r7, #1
00570048  00 00 51 e3                                      cmp r1, #0
0057004c  08 50 85 e2                                      add r5, r5, #8
00570050  00 40 a0 e1                                      mov r4, r0
00570054  a0 00 80 e8                                      stm r0, {r5, r7}
00570058  20 60 80 e5                                      str r6, [r0, #0x20]
0057005c  24 20 c0 e5                                      strb r2, [r0, #0x24]
00570060  25 30 c0 e5                                      strb r3, [r0, #0x25]
00570064  08 10 80 e5                                      str r1, [r0, #8]
00570068  18 60 80 e5                                      str r6, [r0, #0x18]
0057006c  1c 60 80 e5                                      str r6, [r0, #0x1c]
00570070  0f 00 00 0a                                      beq #0x5700b4
00570074  04 30 91 e5                                      ldr r3, [r1, #4]
00570078  07 30 83 e0                                      add r3, r3, r7
0057007c  04 30 81 e5                                      str r3, [r1, #4]
00570080  6f ff ff eb                                      bl #0x56fe44
00570084  18 00 94 e5                                      ldr r0, [r4, #0x18]
00570088  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
0057008c  03 30 60 e0                                      rsb r3, r0, r3
00570090  43 32 a0 e1                                      asr r3, r3, #4
00570094  83 10 83 e0                                      add r1, r3, r3, lsl #1
00570098  01 12 81 e0                                      add r1, r1, r1, lsl #4
0057009c  01 14 81 e0                                      add r1, r1, r1, lsl #8
005700a0  01 18 81 e0                                      add r1, r1, r1, lsl #16
005700a4  01 11 83 e0                                      add r1, r3, r1, lsl #2
005700a8  07 00 51 e1                                      cmp r1, r7
005700ac  00 00 00 9a                                      bls #0x5700b4
005700b0  d5 fe ff eb                                      bl #0x56fc0c
005700b4  04 00 a0 e1                                      mov r0, r4
005700b8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
005700bc  58 4a 42 00 d8 1b 00 00                          .byte 0x58, 0x4a, 0x42, 0x00, 0xd8, 0x1b, 0x00, 0x00

; FUNCTION 0x005700c4, declared_size=152, range_size=152, mode=arm
; class-group: glitch::io::CPakReader
; alias: _ZN6glitch2io10CPakReaderC2EPNS0_9IReadFileEbb
; demangled: glitch::io::CPakReader::CPakReader(glitch::io::IReadFile*, bool, bool)
; decoder-mode: arm
005700c4  88 c0 9f e5                                      ldr ip, [pc, #0x88]
005700c8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005700cc  84 50 9f e5                                      ldr r5, [pc, #0x84]
005700d0  0c c0 8f e0                                      add ip, pc, ip
005700d4  00 60 a0 e3                                      mov r6, #0
005700d8  05 50 9c e7                                      ldr r5, [ip, r5]
005700dc  01 70 a0 e3                                      mov r7, #1
005700e0  00 00 51 e3                                      cmp r1, #0
005700e4  08 50 85 e2                                      add r5, r5, #8
005700e8  00 40 a0 e1                                      mov r4, r0
005700ec  a0 00 80 e8                                      stm r0, {r5, r7}
005700f0  20 60 80 e5                                      str r6, [r0, #0x20]
005700f4  24 20 c0 e5                                      strb r2, [r0, #0x24]
005700f8  25 30 c0 e5                                      strb r3, [r0, #0x25]
005700fc  08 10 80 e5                                      str r1, [r0, #8]
00570100  18 60 80 e5                                      str r6, [r0, #0x18]
00570104  1c 60 80 e5                                      str r6, [r0, #0x1c]
00570108  0f 00 00 0a                                      beq #0x57014c
0057010c  04 30 91 e5                                      ldr r3, [r1, #4]
00570110  07 30 83 e0                                      add r3, r3, r7
00570114  04 30 81 e5                                      str r3, [r1, #4]
00570118  49 ff ff eb                                      bl #0x56fe44
0057011c  18 00 94 e5                                      ldr r0, [r4, #0x18]
00570120  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
00570124  03 30 60 e0                                      rsb r3, r0, r3
00570128  43 32 a0 e1                                      asr r3, r3, #4
0057012c  83 10 83 e0                                      add r1, r3, r3, lsl #1
00570130  01 12 81 e0                                      add r1, r1, r1, lsl #4
00570134  01 14 81 e0                                      add r1, r1, r1, lsl #8
00570138  01 18 81 e0                                      add r1, r1, r1, lsl #16
0057013c  01 11 83 e0                                      add r1, r3, r1, lsl #2
00570140  07 00 51 e1                                      cmp r1, r7
00570144  00 00 00 9a                                      bls #0x57014c
00570148  af fe ff eb                                      bl #0x56fc0c
0057014c  04 00 a0 e1                                      mov r0, r4
00570150  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00570154  c0 49 42 00 d8 1b 00 00                          .byte 0xc0, 0x49, 0x42, 0x00, 0xd8, 0x1b, 0x00, 0x00

; FUNCTION 0x005702b4, declared_size=260, range_size=260, mode=arm
; class-group: glitch::io::CPakReader
; alias: _ZN6glitch2io10CPakReader8findFileEPKc
; demangled: glitch::io::CPakReader::findFile(char const*)
; decoder-mode: arm
005702b4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005702b8  f0 40 9f e5                                      ldr r4, [pc, #0xf0]
005702bc  f0 70 9f e5                                      ldr r7, [pc, #0xf0]
005702c0  58 d0 4d e2                                      sub sp, sp, #0x58
005702c4  04 40 8f e0                                      add r4, pc, r4
005702c8  07 30 94 e7                                      ldr r3, [r4, r7]
005702cc  04 50 8d e2                                      add r5, sp, #4
005702d0  01 80 a0 e1                                      mov r8, r1
005702d4  00 30 93 e5                                      ldr r3, [r3]
005702d8  00 60 a0 e1                                      mov r6, r0
005702dc  05 00 a0 e1                                      mov r0, r5
005702e0  54 30 8d e5                                      str r3, [sp, #0x54]
005702e4  6a fc ff eb                                      bl #0x56f494
005702e8  08 00 a0 e1                                      mov r0, r8
005702ec  d8 76 f6 eb                                      bl #0x30de54
005702f0  08 10 a0 e1                                      mov r1, r8
005702f4  00 20 88 e0                                      add r2, r8, r0
005702f8  18 00 85 e2                                      add r0, r5, #0x18
005702fc  21 c2 f6 eb                                      bl #0x320b88
00570300  24 30 d6 e5                                      ldrb r3, [r6, #0x24]
00570304  00 00 53 e3                                      cmp r3, #0
00570308  13 00 00 0a                                      beq #0x57035c
0057030c  30 20 9d e5                                      ldr r2, [sp, #0x30]
00570310  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
00570314  03 00 52 e1                                      cmp r2, r3
00570318  0f 00 00 0a                                      beq #0x57035c
0057031c  00 30 a0 e3                                      mov r3, #0
00570320  03 10 d2 e7                                      ldrb r1, [r2, r3]
00570324  03 20 82 e0                                      add r2, r2, r3
00570328  01 30 83 e2                                      add r3, r3, #1
0057032c  71 00 ef e6                                      uxtb r0, r1
00570330  41 c0 40 e2                                      sub ip, r0, #0x41
00570334  7c c0 ef e6                                      uxtb ip, ip
00570338  19 00 5c e3                                      cmp ip, #0x19
0057033c  20 10 80 92                                      addls r1, r0, #0x20
00570340  71 10 ef 96                                      uxtbls r1, r1
00570344  00 10 c2 e5                                      strb r1, [r2]
00570348  30 20 9d e5                                      ldr r2, [sp, #0x30]
0057034c  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
00570350  01 10 62 e0                                      rsb r1, r2, r1
00570354  01 00 53 e1                                      cmp r3, r1
00570358  f0 ff ff 3a                                      blo #0x570320
0057035c  25 30 d6 e5                                      ldrb r3, [r6, #0x25]
00570360  00 00 53 e3                                      cmp r3, #0
00570364  02 00 00 0a                                      beq #0x570374
00570368  06 00 a0 e1                                      mov r0, r6
0057036c  18 10 85 e2                                      add r1, r5, #0x18
00570370  7c fc ff eb                                      bl #0x56f568
00570374  18 00 86 e2                                      add r0, r6, #0x18
00570378  05 10 a0 e1                                      mov r1, r5
0057037c  76 ff ff eb                                      bl #0x57015c
00570380  00 60 a0 e1                                      mov r6, r0
00570384  05 00 a0 e1                                      mov r0, r5
00570388  b0 fc ff eb                                      bl #0x56f650
0057038c  07 30 94 e7                                      ldr r3, [r4, r7]
00570390  54 20 9d e5                                      ldr r2, [sp, #0x54]
00570394  06 00 a0 e1                                      mov r0, r6
00570398  00 30 93 e5                                      ldr r3, [r3]
0057039c  03 00 52 e1                                      cmp r2, r3
005703a0  01 00 00 1a                                      bne #0x5703ac
005703a4  58 d0 8d e2                                      add sp, sp, #0x58
005703a8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005703ac  d7 77 f6 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
005703b0  cc 47 42 00 ac 40 00 00                          .byte 0xcc, 0x47, 0x42, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x005703b8, declared_size=44, range_size=44, mode=arm
; class-group: glitch::io::CPakReader
; alias: _ZN6glitch2io10CPakReader8openFileEPKc
; demangled: glitch::io::CPakReader::openFile(char const*)
; decoder-mode: arm
005703b8  10 40 2d e9                                      push {r4, lr}
005703bc  00 40 a0 e1                                      mov r4, r0
005703c0  bb ff ff eb                                      bl #0x5702b4
005703c4  01 00 70 e3                                      cmn r0, #1
005703c8  00 10 a0 e1                                      mov r1, r0
005703cc  02 00 00 0a                                      beq #0x5703dc
005703d0  04 00 a0 e1                                      mov r0, r4
005703d4  10 40 bd e8                                      pop {r4, lr}
005703d8  e9 fc ff ea                                      b #0x56f784
005703dc  00 00 a0 e3                                      mov r0, #0
005703e0  10 80 bd e8                                      pop {r4, pc}
